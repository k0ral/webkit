-- -*-haskell-*-
--  GIMP Toolkit (GTK) @entry SourceStyleScheme@
--
--  Author : Duncan Coutts
--  derived from the GtkTextView bindings by Axel Simon
--          
--  Created: 22 October 2003
--
--  This file is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This file is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
-- @description@ --------------------------------------------------------------
--
--
-- @documentation@ ------------------------------------------------------------
--
--
-- @todo@ ---------------------------------------------------------------------
--
--
module SourceStyleScheme (
  SourceStyleScheme,
  sourceStyleSchemeGetTagStyle,
  sourceStyleSchemeGetName,
  sourceStyleSchemeGetDefault
) where

import Monad	(liftM)
import FFI
import GObject	(makeNewGObject)
{#import Hierarchy#}
{#import SourceViewType#}
import SourceTagStyle

{# context lib="gtk" prefix="gtk" #}

{#pointer *SourceStyleScheme foreign newtype #}

mkSourceStyleScheme = SourceStyleScheme
unSourceStyleScheme (SourceStyleScheme o) = o

instance GObjectClass SourceStyleScheme where
  toGObject   = mkGObject.castForeignPtr.unSourceStyleScheme
  fromGObject = mkSourceStyleScheme.castForeignPtr.unGObject

-- methods

-- @method sourceStyleSchemeGetTagStyle@
-- 
sourceStyleSchemeGetTagStyle :: SourceStyleScheme -> String -> IO SourceTagStyle
sourceStyleSchemeGetTagStyle ss styleName =
  withCString styleName $ \strPtr -> do
    tsPtr <- {#call source_style_scheme_get_tag_style#} ss strPtr
    ts <- peek (castPtr tsPtr)
    {#call unsafe g_free#} tsPtr
    return ts

-- @method sourceStyleSchemeGetName@
-- 
sourceStyleSchemeGetName :: SourceStyleScheme -> IO String
sourceStyleSchemeGetName ss =
  {#call source_style_scheme_get_name#} ss >>= peekCString

-- @method sourceStyleSchemeGetDefault@
-- 
sourceStyleSchemeGetDefault :: IO SourceStyleScheme
sourceStyleSchemeGetDefault =
  makeNewGObject mkSourceStyleScheme $ liftM castPtr $
  {#call source_style_scheme_get_default#}
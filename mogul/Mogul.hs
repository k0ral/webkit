-- -*-haskell-*-
--  The Monad GUI Library (Mogul): The all importing main file.
--
--  Author : Axel Simon
--          
--  Created: 3 June 2001
--
--  Version $Revision: 1.3 $ from $Date: 2002/07/08 13:22:46 $
--
--  Copyright (c) 2001 Axel Simon
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
--- DESCRIPTION ---------------------------------------------------------------
--
-- * This module re-exports all unchanged Gtk and Mogul entities.
--
--- DOCU ----------------------------------------------------------------------
--
--
--- TODO ----------------------------------------------------------------------

module Mogul(
  module NewWidget,
  module GetWidget,
  module MDialog,
  module TreeList,
  module Gtk
  ) where


import NewWidget
import GetWidget
import MDialog
--import Multiline
import TreeList
import Gtk hiding (
  textBufferNew,
--  textTagNew,
--  textTagTableNew,
  labelNew,
  accelLabelNew,
  arrowNew,
  imageNewFromFile,
  alignmentNew,
  frameNew,
  buttonNew,
  buttonNewWithLabel,
  buttonNewWithMnemonic,
  buttonNewFromStock,
  toggleButtonNew,
  toggleButtonNewWithLabel,
  checkButtonNew,
  checkButtonNewWithLabel,
  checkButtonNewWithMnemonic,
  radioButtonNew,
  radioButtonNewWithLabel,
  radioButtonNewJoinGroup,
  radioButtonNewJoinGroupWithLabel,
  optionMenuNew,
  menuItemNew,
  menuItemNewWithLabel,
  checkMenuItemNew,
  checkMenuItemNewWithLabel,
  radioMenuItemNew,
  radioMenuItemNewWithLabel,
  radioMenuItemNewJoinGroup,
  radioMenuItemNewJoinGroupWithLabel,
  tearoffMenuItemNew,
  windowNew,
  dialogNew,
  --colorSelectionDialogNew,
  --fileSelectionNew,
  --fontSelectionDialogNew,
  plugNew,
  eventBoxNew,
  handleBoxNew,
  scrolledWindowNew,
  viewportNew,
  vBoxNew,
  --colorSelectionNew,
  --fontSelectionNew,
  hBoxNew,
  comboNew,
  statusbarNew,
  hPanedNew,
  vPanedNew,
  layoutNew,
  menuNew,
  menuBarNew,
  notebookNew,
  socketNew,
  tableNew,
  textViewNew,
  toolbarNew,
  -- the following functions and types are replaced in TreeList.hs
  treeViewNew,
  -- TreeModel
  treeModelGetValue,
  TreePath,
  treePathNew,
  treePathNewFromString,
  treePathToString,
  treePathNewFirst,
  treePathAppendIndex,
  treePathPrependIndex,
  treePathGetDepth,
  treePathGetIndices,
  treePathCopy,
  treePathCompare,
  treePathNext,
  treePathPrev,
  treePathUp,
  treePathDown,
  treeModelGetIter,
  treeModelGetPath,
  -- ListStore
  listStoreNew,
  listStoreSetValue,
  -- TreeStore
  treeStoreNew,
  treeStoreSetValue,
  -- TreeViewColumn
  treeViewColumnAddAttribute,
  CellRendererText,
  CellRendererPixbuf,
  CellRendererToggle,

  calendarNew,
  --drawingAreaNew,
  entryNew,
  spinButtonNew,
  spinButtonNewWithRange,
  hScaleNew,
  vScaleNew,
  hScrollbarNew,
  vScrollbarNew,
  hSeparatorNew,
  vSeparatorNew,
  progressBarNew,
  adjustmentNew,
  --iMContextNew,
  --iMMulticontextNew,
  --itemFactoryNew,
  tooltipsNew,
  treeStoreNew,
  listStoreNew,
  iconFactoryNew)


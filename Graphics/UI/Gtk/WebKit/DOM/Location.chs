module Graphics.UI.Gtk.WebKit.DOM.Location(
getOrigin,
getAncestorOrigins,
Location,
castToLocation,
gTypeLocation,
LocationClass,
toLocation,
) where
import Prelude hiding (drop, error, print)
import System.Glib.FFI (maybeNull, withForeignPtr, nullForeignPtr, Ptr, nullPtr, castPtr, Word, Int64, Word64, CChar(..), CInt(..), CUInt(..), CLong(..), CULong(..), CShort(..), CUShort(..), CFloat(..), CDouble(..), toBool, fromBool)
import System.Glib.UTFString (GlibString(..), readUTFString)
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import System.Glib.GError
import Graphics.UI.Gtk.WebKit.DOM.EventTargetClosures
import Graphics.UI.Gtk.WebKit.DOM.EventM
{#import Graphics.UI.Gtk.WebKit.Types#}
import Graphics.UI.Gtk.WebKit.DOM.Enums

 
getOrigin ::
          (MonadIO m, LocationClass self, GlibString string) =>
            self -> m string
getOrigin self
  = liftIO
      (({# call webkit_dom_location_get_origin #} (toLocation self)) >>=
         readUTFString)
 
getAncestorOrigins ::
                   (MonadIO m, LocationClass self) => self -> m (Maybe DOMStringList)
getAncestorOrigins self
  = liftIO
      (maybeNull (makeNewGObject mkDOMStringList)
         ({# call webkit_dom_location_get_ancestor_origins #}
            (toLocation self)))

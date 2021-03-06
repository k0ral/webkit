module Graphics.UI.Gtk.WebKit.DOM.NodeList(
item,
getLength,
NodeList,
castToNodeList,
gTypeNodeList,
NodeListClass,
toNodeList,
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

 
item ::
     (MonadIO m, NodeListClass self) => self -> Word -> m (Maybe Node)
item self index
  = liftIO
      (maybeNull (makeNewGObject mkNode)
         ({# call webkit_dom_node_list_item #} (toNodeList self)
            (fromIntegral index)))
 
getLength :: (MonadIO m, NodeListClass self) => self -> m Word
getLength self
  = liftIO
      (fromIntegral <$>
         ({# call webkit_dom_node_list_get_length #} (toNodeList self)))

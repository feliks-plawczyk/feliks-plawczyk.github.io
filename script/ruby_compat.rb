# Rustine locale pour Ruby >= 3.2.
#
# Liquid 4.0.3 (imposé par github-pages) appelle encore String#tainted?,
# supprimée de Ruby. Ce fichier la remet comme no-op, uniquement pour le
# build local. Il n'est pas utilisé par la publication GitHub Pages.
class Object
  def tainted? = false
  def taint = self
  def untaint = self
end

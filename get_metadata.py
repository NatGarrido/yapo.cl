import argparse
from PIL import Image
from PIL.ExifTags import TAGS
 
#  http://www.blog.pythonlibrary.org/2010/03/28/getting-photo-metadata-exif-using-python/

def get_exif(fn):
    ret = {}
    i = Image.open(fn)
    info = i._getexif()
    if info:
        for tag, value in info.items():
            decoded = TAGS.get(tag, tag)
            ret[decoded] = value
    return ret

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--image", help="Ruta de la imagen")
    args = parser.parse_args()
    if args.image:
        print "Obteniendo metadata..."
        info = get_exif(args.image)
        if len(info.items()) == 0:
            print "Imagen sin metadata... =("
        else:
            for (key, value) in info.items():
                print key + ": " + str(value)
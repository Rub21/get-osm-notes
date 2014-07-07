class CabeceraPagina:
    def __init__(self,tit,ubi):
        self.titulo=tit
        self.ubicacion=ubi

    def graficar(self):
        print '<div style="font-size:40px;text-align:'+self.ubicacion+'">'
        print self.titulo
        print '</div>'


cabecera=CabeceraPagina('El blog del programador','center')
cabecera.graficar()
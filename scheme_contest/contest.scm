;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Rainbow>
;;;
;;; Description:
;;;   <Spectrums of colors
;;;    Pixelated rainbow squares
;;;    I am ROYGBIV :^)>



(define (square size x y color)
	(pixelsize size)
	(pixel x y color)
)

(square 100 0 0 "#78281F")
(square 100 0 1 "#943126")
(square 100 0 2 "#B03A2E")
(square 100 0 3 "#C0392B")
(square 100 0 4 "#F1948A")
(square 100 0 5 "#FADBD8")

(square 100 1 0 "#7E5109")
(square 100 1 1 "#9C640C")
(square 100 1 2 "#B9770E")
(square 100 1 3 "#F39C12")
(square 100 1 4 "#F8C471")
(square 100 1 5 "#FDEBD0")

(square 100 2 0 "#7D6608")
(square 100 2 1 "#9A7D0A")
(square 100 2 2 "#B7950B")
(square 100 2 3 "#F1C40F")
(square 100 2 4 "#F7DC6F")
(square 100 2 5 "#FCF3CF")

(square 100 3 0 "#0E6251")
(square 100 3 1 "#117864")
(square 100 3 2 "#148F77")
(square 100 3 3 "#1ABC9C")
(square 100 3 4 "#76D7C4")
(square 100 3 5 "#D1F2EB")

(square 100 4 0 "#0B5345")
(square 100 4 1 "#0E6655")
(square 100 4 2 "#117A65")
(square 100 4 3 "#16A085")
(square 100 4 4 "#73C6B6")
(square 100 4 5 "#D0ECE7")

(square 100 5 0 "#154360")
(square 100 5 1 "#1A5276")
(square 100 5 2 "#1F618D")
(square 100 5 3 "#2980B9")
(square 100 5 4 "#7FB3D5")
(square 100 5 5 "#D4E6F1")

(square 100 6 0 "#4A235A")
(square 100 6 1 "#5B2C6F")
(square 100 6 2 "#6C3483")
(square 100 6 3 "#8E44AD")
(square 100 6 4 "#BB8FCE")
(square 100 6 5 "#E8DAEF")

(define (draw)
  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)
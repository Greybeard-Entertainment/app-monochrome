;;; app-monochrome-themes.el --- Low contrast monochrome themes for OLED

;; Author: Aleksandr Petrosyan <appetrosan3@gmail.com>
;; URL: https://github.com/Greybeard-Entertainment/app-monochrome
;; Version: 0.0.1
;; Package-Requires: ((emacs "24.4"))

;; Licence

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; A monochromatic theme that emphasises shapes over colours.

;; The human eye is better at seeing contrast and shapes than it is at
;; seeing colours.  This idea is behind the theme.

;; Rather than have an angry fruit salad on one's screen, I suggest
;; you as a programmer/writer/artist and otherwise a person doing
;; textual work with Emacs, consider using a minimalist colour
;; palette.

;; There is colour in this theme, but it is reserved for exceptional
;; situations, such as your `flycheck' errors, and highlights.  The
;; colour used is red, which might not be suitable for people with
;; certain kinds of colour blindness, but in general the result is a
;; low contrast theme, with colours that stand out.

;; I strongly recommend combining this with a package similar to
;; `color-identifiers-mode'.

;; Dependencies:
;; This package requires that you have installed the following fonts.
;; - IBM Plex <https://github.com/IBM/plex> (OFL-1.1)
;; - Ubuntu Mono (Ligatured) <https://github.com/canonical/UbuntuMono-fonts>
;; - Victor Mono (Ligatured) <https://github.com/rubjo/victor-mono> (OFL-1.1)
;; - Linux Libertine <https://libertine-fonts.org/> (OFL-1.1 or GPLv3)
;; - Fira Code <https://github.com/tonsky/FiraCode> (OFL-1.1)

;; Great care was taken to ensure that only freedom-respecting font
;; packages were used.

;; The best way to ensure that the fonts are installed on your system
;; is to use the system package manager on Linux, and/or to download
;; the fonts from the above links if a package manager is not available

;;; Code:

(defgroup app-monochrome-themes nil "App Monochrome themes." :prefix "app-monochrome-" :group 'faces)

;;;###autoload
(add-to-list
 ;; Register themes when this file is loaded or when the buffer is evaluated:
 'custom-theme-load-path
 (if load-file-name (file-name-directory load-file-name) default-directory))

(provide 'app-monochrome-themes)
;;; app-monochrome-themes.el ends here

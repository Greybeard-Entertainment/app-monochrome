;;; app-monochrome-light-theme.el --- a low contrast monochromatic theme that emphasises shapes rather than colours.

;; Author: Aleksandr Petrosyan <appetrosyan3@gmail.com>
;; URL: https://github.com/Greybeard-Entertainment/app-monochrome
;; Version: 0.0.1

;;; Blurb:

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

;; The human eye has a ton more rods than cones, and in low-light
;; conditions one finds shapes more easily than colours.  It is the
;; basis of this theme.

;; Rather than have the effective equivalent of a circus on your
;; screen, it is instead the intention of this package to provide you
;; with a well-shaped buffer that has an occasional splash of colour
;; to highlight the important aspects that cannot be highlighted
;; otherwise.

;; This package depends on the following freely available, fonts:
;; IBM Plex <https://github.com/IBM/plex> (OFL-1.1)
;; Ubuntu Mono (Ligatured) <https://github.com/canonical/UbuntuMono-fonts> (UFL-1.0 GPL-compatible)
;; Victor Mono (Ligatured) <https://github.com/rubjo/victor-mono> (OFL-1.1)
;; Linux Libertine <https://libertine-fonts.org/> (OFL-1.1 or GPLv3)
;; Fira Code <https://github.com/tonsky/FiraCode> (OFL-1.1)


;; The best way to install these fonts is via the package manager, but
;; downloading those fonts and installing them on a per-user or
;; system-wide basis is also an option.

;; The fonts were specifically chosen in order to facilitate usage
;; with other packages.  I highly recommend using this in tandem with
;; `rainbow-delimiters' and `rainbow-mode'.  The main idea is that the
;; font shapes and shades of luminosity convey that syntactic roles,
;; if they weren't obvious before.  At the same time, the colour are
;; used to emphasise the delimiters, and identifiers.  The faces used
;; for those packages are not yet included in this package.


;;; Code:
(deftheme app-monochrome-light
  "A light variant of the `app-monochrome-dark' theme.")

(custom-theme-set-faces
 'app-monochrome-light
 '(cursor ((t (:background "#444444"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "black" :weight bold :family "IBM Plex Mono"))))
 '(highlight ((t (:foreground "#969896" :background "#444444"))))
 '(region ((t (:extend t :background "#e7e7e7"))))
 '(shadow ((t (:foreground "#c5c8c6"))))
 '(secondary-selection ((t (:extend t :background "#282a2e"))))
 '(trailing-whitespace ((t (:background "#282a2e"))))
 '(font-lock-builtin-face ((t (:family "IBM Plex Serif"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-comment-face ((t (:foreground "dim gray" :family "IBM Plex Mono"))))
 '(font-lock-constant-face ((t (:weight bold :family "Ubuntu Mono"))))
 '(font-lock-doc-face ((t (:inherit font-lock-comment-face :weight semi-bold))))
 '(font-lock-function-name-face ((t (:slant italic :family "Ubuntu Mono"))))
 '(font-lock-keyword-face ((t (:weight bold :family "Ubuntu Mono"))))
 '(font-lock-negation-char-face ((t (:inherit bold :foreground "#282a2e"))))
 '(font-lock-preprocessor-face ((t (:foreground "#282a2e" :inherit (bold)))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#282a2e" :inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#282a2e" :inherit (bold)))))
 '(font-lock-string-face ((t (:family "Futura PT"))))
 '(font-lock-type-face ((t (:foreground "#282a2e" :underline t :weight bold :family "Ubuntu Mono"))))
 '(font-lock-variable-name-face ((t (:slant italic :family "IBM Plex Mono"))))
 '(font-lock-warning-face ((t (:inherit (warning)))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:weight bold :underline (:color foreground-color :style line) :foreground "#444444"))))
 '(link-visited ((t (:foreground "magenta4" :inherit (link)))))
 '(fringe ((t (:foreground "#e7e7e7" :inherit (default)))))
 '(header-line ((t (:foreground "#282a2e" :background "#ffffff"))))
 '(tooltip ((t (:foreground "#282a2e" :background "#cccccc"))))
 '(mode-line ((t (:box nil :background "#cecece"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:foreground "#444444"))))
 '(mode-line-highlight ((t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:box nil :foreground "#c5c8c6" :background "#dadada"))))
 '(isearch ((t (:weight bold :inherit (lazy-highlight)))))
 '(isearch-fail ((t (:weight bold :foreground "#969896" :background "#282a2e"))))
 '(lazy-highlight ((t (:weight bold :foreground "#fafafa" :background "#282a2e"))))
 '(match ((t (:weight bold :foreground "#282a2e" :background "#969896"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(tex-verbatim ((t (:inherit (fixed-pitch-serif)))))
 '(tex-math ((t (:slant italic :weight bold :family "Ubuntu Mono"))))
 '(helm-match ((t (:extend t :weight extra-bold))))
 '(helm-header ((t (:extend t :inherit (header-line)))))
 '(helm-helper ((t (:extend t :inherit (helm-header)))))
 '(helm-action ((t (:underline (:color foreground-color :style line) :extend t))))
 '(helm-ff-file ((t (:family "Ubuntu Mono"))))
 '(helm-ff-pipe ((t (:background "black" :foreground "yellow" :extend t))))
 '(helm-ff-dirs ((t (:weight bold :family "Ubuntu Mono"))))
 '(helm-ff-suid ((t (:foreground "white" :background "red" :extend t))))
 '(helm-prefarg ((((background dark)) (:foreground "green" :extend t)) (((background light)) (:foreground "red" :extend t))))
 '(helm-M-x-key ((t (:extend t :slant italic))))
 '(helm-eob-line ((t (:extend t :inherit (default)))))
 '(helm-ff-socket ((t (:foreground "DeepPink" :extend t))))
 '(helm-selection ((t (:underline t :weight extra-bold))))
 '(helm-ff-symlink ((t (:slant italic :family "Ubuntu Mono"))))
 '(helm-ff-file-extension ((t (:weight bold :family "Ubuntu Mono"))))
 '(helm-ff-prefix ((t (:extend t :foreground "black"))))
 '(helm-ff-directory ((t (:box (:line-width (2 . 2) :color "black" :style released-button) :weight bold :family "Ubuntu Mono"))))
 '(helm-ff-denied ((t (:background "black" :foreground "red" :extend t))))
 '(helm-ff-truename ((t (:inherit font-lock-string-face :extend t))))
 '(helm-ff-executable ((t (:foreground "green" :extend t))))
 '(helm-ff-backup-file ((t (:foreground "DimGray" :extend t))))
 '(helm-ff-invalid-symlink ((t (:extend t :background "red" :foreground "black"))))
 '(helm-ff-dotted-directory ((t (:box (:line-width (2 . 2) :color "grey75" :style released-button)))))
 '(helm-match-item ((t (:extend t :inherit (isearch)))))
 '(helm-separator ((((background dark)) (:foreground "red" :extend t)) (((background light)) (:foreground "#ffbfb5" :extend t))))
 '(helm-source-header ((t (:underline t :height 2.0 :family "IBM Plex Serif"))))
 '(helm-buffer-file ((t (:inherit helm-ff-file :extend t))))
 '(helm-buffer-directory ((t (:inherit helm-ff-directory :extend t))))
 '(helm-buffer-process ((t (:foreground "Sienna3" :extend t))))
 '(helm-buffer-modified ((t (:underline t))))
 '(font-latex-sectioning-0-face ((t (:inherit font-latex-sectioning-1-face :height 1.2))))
 '(font-latex-sectioning-5-face ((t (:weight extra-bold :height 1.2 :family "IBM Plex Serif"))))
 '(font-latex-sectioning-4-face ((t (:height 1.1 :inherit font-latex-sectioning-5-face))))
 '(font-latex-sectioning-1-face ((t (:inherit font-latex-sectioning-2-face :height 1.1))))
 '(font-latex-sectioning-2-face ((t (:height 1.1 :inherit (font-latex-sectioning-3-face)))))
 '(font-latex-sectioning-3-face ((t (:inherit font-latex-sectioning-4-face :height 1.1))))
 '(font-latex-italic-face ((t (:inherit italic))))
 '(font-latex-string-face ((t (:family "IBM Plex Serif"))))
 '(org-latex-and-related ((t (:weight bold))))
 '(font-latex-sedate-face ((t (:weight semi-bold :family "IBM Plex Serif"))))
 '(magit-tag ((t (:underline t :weight bold :family "IBM Plex Mono"))))
 '(magit-head ((((class color) (background light)) (:inherit (magit-branch-local))) (((class color) (background dark)) (:inherit (magit-branch-local)))))
 '(magit-branch-local ((t (:underline t :family "ubuntu-mono"))))
 '(magit-diff-our ((t (:inherit (magit-diff-removed)))))
 '(magit-diff-revision-summary-highlight ((t (:inherit (magit-diff-hunk-heading-highlight)))))
 '(magit-hash ((((class color) (background light)) (:foreground "grey60")) (((class color) (background dark)) (:foreground "grey40"))))
 '(magit-keyword ((t (:inherit (font-lock-string-face)))))
 '(magit-refname ((((class color) (background light)) (:foreground "grey30")) (((class color) (background dark)) (:foreground "grey80"))))
 '(magit-log-date ((((class color) (background light)) (:weight normal :slant normal :foreground "grey30")) (((class color) (background dark)) (:weight normal :slant normal :foreground "grey80"))))
 '(magit-log-author ((t (:slant italic :weight bold))))
 '(magit-header-line ((t (:inherit (magit-section-heading)))))
 '(magit-section-heading ((t (:box (:line-width (2 . 2) :color "grey75" :style released-button) :weight bold))))
 '(magit-refname-stash ((t (:inherit (magit-refname)))))
 '(magit-section-highlight ((((class color) (background light)) (:background "grey95" :extend t)) (((class color) (background dark)) (:background "grey20" :extend t))))
 '(magit-branch-upstream ((t (:slant italic))))
 '(magit-branch-remote ((t (:underline t))))
 '(custom-link ((t (:inherit (link)))))
 '(magit-branch-current ((t (:inherit magit-branch-local :box (1 . 1)))))
 '(magit-branch-remote-head ((t (:box (:line-width (1 . 1) :color nil :style nil) :inherit (magit-branch-remote)))))
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#ffffff" :foreground "#282a2e" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :family "IBM Plex Sans")))))


;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'app-monochrome-light)
;;; app-monochrome-light-theme.el ends here

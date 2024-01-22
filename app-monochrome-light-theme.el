;;; app-monochrome-light-theme.el --- Monochromatic, emphasises shapes over colours

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
;; - IBM Plex <https://github.com/IBM/plex>
;; - Ubuntu Mono <https://github.com/canonical/UbuntuMono-fonts>
;; - Victor Mono <https://github.com/rubjo/victor-mono>
;; - Linux Libertine <https://libertine-fonts.org>
;; - Fira Code <https://github.com/tonsky/FiraCode>


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
 '(default ((t (:inherit nil :extend nil :stipple nil :background "white" :foreground "grey12" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 98 :width normal :foundry "CTDB" :family "Fira Code"))))
 '(variable-pitch ((t (:family "IBM Plex Serif"))))

 '(highlight ((t (:background "#600" :foreground "white"))))
 '(error ((t (:foreground "Red" :weight bold))))
 '(warning ((t (:foreground "red4"))))
 '(success ((t (:foreground "black" :weight bold))))
 '(bookmark-face ((t (:background "black" :foreground "Gold"))))
 '(isearch ((t (:inherit link))))
 '(custom-link ((t (:inherit link :box (:line-width (2 . 2) :color "grey75" :style released-button)))))
 '(link ((t (:underline t :foreground "#3c5c5c"))))
 '(line-number ((t (:inherit shadow :family "Victor Mono"))))

 '(font-lock-type-face ((t (:weight bold :family "Victor Mono"))))
 '(font-lock-builtin-face ((t (:family "Linux Libertine Mono" :weight bold :foreground "grey47" :background "white"))))
 '(font-lock-function-name-face ((t (:slant italic :family "IBM Plex Mono"))))
 '(font-lock-keyword-face ((t (:weight bold :family "Ubuntu Mono"))))
 '(font-lock-constant-face ((t (:foreground "black" :weight bold :inherit font-lock-type-face))))
 '(font-lock-string-face ((t (:foreground "grey40" :family "IBM Plex Mono"))))
 '(font-lock-negation-char-face ((t (:weight bold))))
 '(font-lock-doc-face ((t (:slant italic :inherit font-lock-string-face))))
 '(font-lock-variable-name-face ((t (:foreground "black" :weight thin))))
 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))

 '(mode-line ((t (:inherit line-number :box t))))
 '(mode-line-highlight ((t (:family "Linux Libertine Mono" :inherit mode-line :weight bold))))
 '(mode-line-buffer-id ((t (:inherit mode-line-highlight))))

 '(lsp-face-semhl-function ((t (:inherit (font-lock-function-name-face)))))
 '(lsp-face-highlight-textual ((t (:inherit (highlight)))))
 '(lsp-face-highlight-write ((t (:weight bold :inherit (highlight)))))
 '(lsp-face-semhl-type ((t (:inherit (font-lock-type-face)))))
 '(lsp-face-semhl-implementation ((t (:weight bold :inherit (font-lock-function-name-face)))))
 '(font-lock-comment-face ((t (:foreground "grey30"))))
 '(font-lock-doc-markup-face ((t (:inherit (font-lock-constant-face)))))
 '(ivy-cursor ((((class color) (background light)) (:foreground "white" :background "black")) (((class color) (background dark)) (:foreground "white" :background "white"))))
 '(counsel-outline-1 ((t (:inherit (org-level-1)))))
 '(counsel-application-name ((t (:inherit (font-lock-builtin-face)))))
 '(counsel-active-mode ((t (:inherit (font-lock-builtin-face)))))
 '(swiper-background-match-face-1 ((t (:inherit (swiper-match-face-1)))))
 '(swiper-match-face-1 ((t (:inherit (lazy-highlight)))))
 '(lazy-highlight ((t (:distant-foreground "black" :box (:line-width (2 . 2) :color "grey25" :style released-button)))))
 '(swiper-background-match-face-3 ((t (:inherit (swiper-match-face-3)))))
 '(swiper-line-face ((t (:inherit highlight :box (:line-width (2 . 2) :color "grey20" :style released-button)))))

 '(lsp-ui-doc-highlight-hover ((t (:inherit highlight))))
 '(lsp-ui-doc-background ((t (:background "grey30"))))
 '(lsp-ui-sideline-global ((t nil)))
 '(lsp-ui-sideline-symbol ((t (:height 0.99 :box (:line-width (1 . -1) :color "grey20" :style nil) :foreground "grey20"))))
 '(lsp-ui-peek-list ((((background light)) (:background "dark grey")) (t (:background "#f8f8f8"))))
 '(lsp-ui-peek-line-number ((t (:foreground "grey25"))))

 '(flycheck-fringe-warning ((t (:inherit (warning)))))
 '(flycheck-info ((t (:inherit success :underline t))))


 '(ivy-match-required-face ((t (:foreground "red" :inherit (minibuffer-prompt)))))
 '(ivy-virtual ((t (:inherit (font-lock-builtin-face)))))
 '(ivy-action ((t (:inherit (font-lock-builtin-face)))))

 '(doom-modeline-lsp-success ((t (:inherit nil :weight bold))))

 '(org-list-dt ((t (:bold t))))
 '(compilation-line-number ((t (:inherit (font-lock-keyword-face)))))
 '(doom-modeline-buffer-file ((t (:inherit (mode-line-buffer-id bold)))))
 '(counsel-variable-documentation ((t (:inherit (font-lock-comment-face)))))
 '(ivy-prompt-match ((t (:inherit (ivy-current-match)))))

 '(minibuffer-prompt ((t (:inherit default :weight bold :slant italic :box t))))
 '(orderless-match-face-0 ((t (:inherit error :weight bold))))
 '(orderless-match-face-1 ((t (:inherit error :underline t))))
 '(orderless-match-face-2 ((t (:inherit link :weight bold))))
 '(orderless-match-face-3 ((t (:inherit link :underline t))))
 '(completions-common-part ((t (:inherit error))))


 '(ivy-grep-line-number ((t (:inherit (compilation-line-number)))))
 '(sp-show-pair-match-content-face ((t nil)))
 '(show-paren-match ((t (:inherit error))))
 '(show-paren-mismatch ((t (:inherit show-paren-match :inverse-video t))))

 '(magit-filename ((t (:weight normal))))
 '(magit-keyword-squash ((t (:inherit (font-lock-warning-face)))))
 '(magit-blame-name ((t nil)))
 '(magit-diff-base-highlight ((((class color) (background light)) (:foreground "#aaaa11" :background "#eeeebb" :extend t)) (((class color) (background dark)) (:foreground "#eeeebb" :background "#666622" :extend t))))
 '(magit-keyword ((t (:inherit (font-lock-string-face)))))
 '(magit-tag ((t (:inherit font-lock-constant-face))))
 '(magit-branch-upstream ((t (:slant italic))))
 '(magit-branch-remote ((t (:foreground "black" :weight bold :height 1.25 :family "IBM Plex Serif"))))
 '(magit-branch-local ((t (:weight bold :height 1.25 :family "IBM Plex Serif"))))
 '(magit-branch-current ((t (:box (:line-width (1 . 1) :color nil :style nil) :inherit (magit-branch-local)))))
 '(magit-section-heading-selection ((t (:extend t :weight bold :height 1.25))))
 '(magit-section-secondary-heading ((t (:weight bold :extend t))))
 '(magit-section-heading ((t (:extend t :weight bold :height 2.0 :inherit font-lock-constant-face))))
 '(magit-section-highlight ((((class color) (background light)) (:background "grey80" :extend t)) (((class color) (background dark)) (:background "grey44" :extend t))))
 '(magit-section-child-count ((t nil)))
 '(magit-diff-file-heading ((t (:extend t :weight bold :family "IBM Plex Serif"))))

 '(git-commit-keyword ((t (:inherit font-lock-keyword-face))))
 '(git-commit-summary ((t (:inherit default))))

 '(org-default ((t (:inherit (default)))))

 '(tree-sitter-hl-face:constructor ((t (:inherit tree-sitter-hl-face:constant))))
 '(tree-sitter-hl-face:property.definition ((t (:inherit tree-sitter-hl-face:variable.parameter))))
 '(tree-sitter-hl-face:number ((t (:inherit (tree-sitter-hl-face:constant)))))
 '(tree-sitter-hl-face:method ((t (:inherit (tree-sitter-hl-face:function)))))
 '(tree-sitter-hl-face:function.call ((t (:inherit font-lock-function-name-face))))
 '(tree-sitter-hl-face:operator ((t (:inherit (tree-sitter-hl-face:keyword)))))
 '(tree-sitter-hl-face:type ((t (:inherit font-lock-type-face))))
 '(tree-sitter-hl-face:label ((t (:inherit (font-lock-preprocessor-face)))))
 '(tree-sitter-hl-face:function ((t (:inherit (font-lock-function-name-face)))))
 '(tree-sitter-hl-face:type.builtin ((t (:inherit (font-lock-builtin-face)))))
 '(tree-sitter-hl-face:method.call ((t (:inherit (tree-sitter-hl-face:function.call)))))
 '(tree-sitter-hl-face:variable.parameter ((t (:inherit (tree-sitter-hl-face:variable)))))
 '(tree-sitter-hl-face:function.special ((t (:inherit (font-lock-preprocessor-face)))))
 '(tree-sitter-hl-face:doc ((t (:inherit (font-lock-doc-face)))))
 '(tree-sitter-hl-face:embedded ((t (:inherit (default)))))
 '(tree-sitter-hl-face:variable ((t (:inherit (font-lock-variable-name-face)))))
 '(tree-sitter-hl-face:variable.special ((t (:inherit (font-lock-warning-face)))))
 '(tree-sitter-hl-face:variable.builtin ((t (:inherit (font-lock-builtin-face)))))
 '(tree-sitter-hl-face:constant ((t (:inherit font-lock-constant-face))))
 '(tree-sitter-hl-face:escape ((t (:inherit (font-lock-keyword-face)))))
 '(tree-sitter-hl-face:punctuation.delimiter ((t (:inherit (tree-sitter-hl-face:punctuation)))))
 '(tree-sitter-hl-face:string.special ((t (:weight bold :inherit (tree-sitter-hl-face:string)))))
 '(tree-sitter-hl-face:punctuation ((t (:inherit (default)))))
 '(tree-sitter-hl-face:constant.builtin ((t (:inherit (font-lock-builtin-face)))))
 '(tree-sitter-hl-face:type.parameter ((t (:inherit (font-lock-variable-name-face font-lock-type-face) :slant italic :weight bold))))
 '(tree-sitter-hl-face:type.super ((t (:inherit (tree-sitter-hl-face:type)))))
 '(tree-sitter-hl-face:type.argument ((t (:inherit (tree-sitter-hl-face:type)))))
 '(tree-sitter-hl-face:property ((t (:inherit nil :slant italic))))
 '(tree-sitter-hl-face:attribute ((t (:inherit default))))


 '(markdown-header-face ((t (:weight bold :inherit magit-section-heading :height 1.5))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 0.85))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 0.75))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 0.65))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :height 0.55))))
 '(markdown-header-face-5 ((t (:inherit markdown-header-face :height 0.55))))
 '(markdown-header-face-6 ((t (:inherit markdown-header-face :height 0.55))))

 '(org-level-1 ((t (:inherit markdown-header-face))))
 '(org-level-2 ((t (:inherit markdown-header-face-1))))
 '(org-level-3 ((t (:inherit markdown-header-face-2))))
 '(org-level-4 ((t (:inherit markdown-header-face-3))))
 '(org-level-5 ((t (:inherit markdown-header-face-4))))
 '(org-level-6 ((t (:inherit markdown-header-face-4 :height 0.85))))
 '(org-level-7 ((t (:inherit markdown-header-face-4 :height 0.75))))
 '(org-level-8 ((t (:inherit markdown-header-face-4 :height 0.65))))
 '(org-code ((t (:family "Victor Mono" :foreground "grey35" :background "grey10"))))
 '(org-verbatim ((t (:inherit org-code))))
 '(org-done ((t (:inherit org-headline :foreground "black" :background "#0bf" :box t))))
 '(org-todo ((t (:foreground "black" :background "#f00" :box t))))
 '(org-headline-todo ((t (:inherit org-headline))))
 '(org-headline-done ((t (:inherit org-headline))))

 '(org-modern-done ((t (:inherit org-done :height 2.0))))
 '(org-modern-todo ((t (:inherit org-todo :height 2.0))))

 '(rainbow-delimiters-depth-1-face ((t (:inherit rainbow-delimiters-base-face :weight bold))))
 '(rainbow-delimiters-depth-2-face ((t (:weight bold :inherit rainbow-delimiters-base-face :foreground "#900"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "#5aa"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "#04f"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit rainbow-delimiters-base-face :foreground "#707"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit rainbow-delimiters-base-face :foreground "#700"))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit rainbow-delimiters-base-face :foreground "#070"))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit rainbow-delimiters-base-face :foreground "#007"))))
 '(rainbow-delimiters-depth-9-face ((t (:weight bold :inherit rainbow-delimiters-base-face :foreground "#070"))))

 '(jinx-misspelled ((t (:underline t :inherit warning))))
 '(jinx-highlight ((t (:inherit warning :box t))))

 '(flyspell-incorrect ((t (:underline t :inherit warning))))

 '(lsp-rust-analyzer-inlay-param-face ((t (:inherit (lsp-rust-analyzer-inlay-face)))))
 '(lsp-rust-analyzer-inlay-type-face ((t (:inherit (lsp-rust-analyzer-inlay-face)))))
 '(lsp-rust-analyzer-inlay-face ((t (:inherit font-lock-comment-face :foreground "grey30" :background "white"))))

 '(fancy-compilation-default-face ((t (:inherit font-lock-string-face)))))


;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'app-monochrome-light)
(provide 'app-monochrome-light-theme)
;;; app-monochrome-light-theme.el ends here

;; Local Variables:
;; jinx-local-words: "Fira Plex el gmail"
;; package-lint-main-file: "app-monochrome-themes.el"
;; End:

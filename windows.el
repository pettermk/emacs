;; Make rgrep and other MSYS dependent commands work by prepending
;; git MSYS bin path to the emacs path

(setenv "PATH"
  (concat
   "c:\\Program Files\\Git\\usr\\bin;"
   (getenv "PATH")))

;; Prevent issues with the Windows null device (NUL)
;; when using cygwin find with rgrep.
(defadvice grep-compute-defaults (around grep-compute-defaults-advice-null-device)
"Use cygwin's /dev/null as the null-device."
(let ((null-device "/dev/null"))
 ad-do-it))
(ad-activate 'grep-compute-defaults)


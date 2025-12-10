;; consent-aware-http - Guix Package Definition
;; Run: guix shell -D -f guix.scm

(use-modules (guix packages)
             (guix gexp)
             (guix git-download)
             (guix build-system gnu)
             ((guix licenses) #:prefix license:)
             (gnu packages base))

(define-public consent_aware_http
  (package
    (name "consent-aware-http")
    (version "0.1.0")
    (source (local-file "." "consent-aware-http-checkout"
                        #:recursive? #t
                        #:select? (git-predicate ".")))
    (build-system gnu-build-system)
    (synopsis "Guix channel/infrastructure")
    (description "Guix channel/infrastructure - part of the RSR ecosystem.")
    (home-page "https://github.com/hyperpolymath/consent-aware-http")
    (license license:agpl3+)))

;; Return package for guix shell
consent_aware_http

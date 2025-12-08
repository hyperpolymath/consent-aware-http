;;; STATE.scm — Consent-Aware HTTP Project State
;;; Checkpoint/restore system for AI conversation context
;;; Format: Guile Scheme S-expressions
;;; Repository: https://github.com/hyperpolymath/consent-aware-http

;;;============================================================================
;;; METADATA
;;;============================================================================
(define state-metadata
  '((format-version . "1.0")
    (project-name . "consent-aware-http")
    (created . "2025-12-08")
    (last-updated . "2025-12-08")
    (branch . "claude/create-state-scm-011aVw6ofLKnC5qVoKRVkS24")
    (session-origin . "state-creation")))

;;;============================================================================
;;; USER CONTEXT
;;;============================================================================
(define user-context
  '((name . "Jonathan D.A. Jewell")
    (roles . ("NEC PRC Representative"
              "NUJ Ethics Council"
              "Convenor: AI & Data Working Group"
              "Associate Lecturer, Open University"))
    (contact . "jonathan@metadatastician.art")
    (expertise . ("formal-verification"
                  "language-design"
                  "distributed-systems"
                  "journalism-ethics"))
    (core-values . ("consent-as-care"
                    "declarative-boundaries"
                    "pro-boundary-not-anti-AI"
                    "federated-sovereignty"))))

;;;============================================================================
;;; PROJECT FOCUS
;;;============================================================================
(define project-focus
  '((active-project . "consent-aware-http")
    (current-phase . "pre-ietf-submission")
    (target-milestone . "MVP-v1")
    (mission . "Define protocols for declaring and enforcing AI usage boundaries on the web")
    (blocking-dependencies . ())))

;;;============================================================================
;;; CURRENT POSITION
;;;============================================================================
(define current-position
  '((overall-completion . 75)
    (description . "Production-ready infrastructure with specs, implementations, and docs complete. Pre-standardization phase.")

    (completed-work
     ((internet-drafts
       (completion . 100)
       (items . ("draft-jewell-http-430-consent-required-00.xml"
                 "draft-jewell-aibdp-00.xml"))
       (notes . "Both drafts IETF-ready, RFC 7991 compliant"))

      (reference-implementations
       (completion . 85)
       (items . ("nodejs-express-middleware (300+ lines)"
                 "python-flask-middleware (400+ lines)"))
       (notes . "Production-ready but lacking formal test suites"))

      (documentation
       (completion . 95)
       (word-count . 25000)
       (items . ("explainer.md" "technical.md" "ethics.md" "faq.md (60+ Q&A)"
                 "server-configurations.md (8 platforms)"
                 "manifest-scenarios (12 examples)" "conformance.md")))

      (rsr-compliance
       (completion . 100)
       (level . "bronze+")
       (items . ("MAINTAINERS.md" "CODE_OF_CONDUCT.md" "CHANGELOG.md"
                 ".well-known/security.txt" ".well-known/aibdp.json"
                 "justfile (30+ recipes)" "flake.nix")))

      (schema-validation
       (completion . 100)
       (items . ("schemas/aibdp-schema-v0.2.json")))

      (community-infrastructure
       (completion . 90)
       (items . ("CONTRIBUTING.md" "ISSUE_TEMPLATE/*"
                 "PULL_REQUEST_TEMPLATE.md" "outreach templates")))))

    (in-progress-work
     ((ietf-submission
       (status . "not-started")
       (notes . "Drafts ready, submission process not initiated"))

      (website
       (status . "planned")
       (domain . "consent-aware-http.org (referenced in manifests)")
       (notes . "No website deployed yet"))

      (adoption-outreach
       (status . "templates-ready")
       (notes . "Outreach templates exist, no active campaigns"))))))

;;;============================================================================
;;; ROUTE TO MVP-v1
;;;============================================================================
(define mvp-roadmap
  '((mvp-definition . "Standardization submission + first public adopters")

    (phase-1-standardization
     ((name . "IETF Submission")
      (priority . "critical")
      (tasks
       (("Submit draft-jewell-http-430-consent-required-00" . pending)
        ("Submit draft-jewell-aibdp-00" . pending)
        ("Identify appropriate working group (httpbis? dispatch?)" . pending)
        ("Prepare presentation for IETF meeting" . pending)))
      (dependencies . ("Reviewer feedback on drafts"))))

    (phase-2-web-presence
     ((name . "Public Website")
      (priority . "high")
      (tasks
       (("Deploy consent-aware-http.org" . pending)
        ("Host rendered HTML versions of drafts" . pending)
        ("Create interactive manifest generator" . future)
        ("Add adoption badge/widget" . pending)))
      (dependencies . ("Domain ownership confirmation"))))

    (phase-3-validation
     ((name . "Testing Infrastructure")
      (priority . "high")
      (tasks
       (("Add unit tests to Node.js implementation" . pending)
        ("Add unit tests to Python implementation" . pending)
        ("Create compliance test suite" . pending)
        ("CI/CD for reference implementations" . pending)))
      (dependencies . ())))

    (phase-4-adoption
     ((name . "Early Adopter Outreach")
      (priority . "medium")
      (tasks
       (("Contact IndieWeb community" . pending)
        ("Present at IndieWebCamp" . future)
        ("Engage journalism/NUJ channels" . pending)
        ("CDN partnership discussions" . future)))
      (dependencies . ("Website live" "IETF submission filed"))))))

;;;============================================================================
;;; ISSUES AND BLOCKERS
;;;============================================================================
(define issues
  '((technical
     (("no-test-suites"
       (severity . "medium")
       (description . "Reference implementations lack formal test suites")
       (impact . "Reduces confidence for production adoption")
       (resolution . "Write jest/pytest test suites"))

      ("no-rust-implementation"
       (severity . "low")
       (description . "Rust reference implementation planned but not started")
       (impact . "Limits language coverage")
       (resolution . "Implement after MVP"))

      ("no-cms-plugins"
       (severity . "medium")
       (description . "WordPress/Ghost plugins would accelerate adoption")
       (impact . "Manual implementation required for most sites")
       (resolution . "Phase 2 development"))

      ("xml2rfc-rendering"
       (severity . "low")
       (description . "PowerShell build script may not work on all platforms")
       (impact . "Contributors may struggle to render drafts")
       (resolution . "Add cross-platform build options in justfile"))))

    (process
     (("ietf-submission-process-unfamiliar"
       (severity . "medium")
       (description . "IETF submission process, working group selection unclear")
       (impact . "May delay standardization")
       (resolution . "Research IETF process, engage mentors"))

      ("no-website-infrastructure"
       (severity . "high")
       (description . "consent-aware-http.org referenced but not deployed")
       (impact . "Broken links in manifests, no public landing page")
       (resolution . "Deploy via GitHub Pages or similar"))

      ("adoption-chicken-egg"
       (severity . "medium")
       (description . "Need adopters to validate, but adopters want standard")
       (impact . "Slow initial adoption")
       (resolution . "Target sympathetic early adopters (IndieWeb, journalism)"))))))

;;;============================================================================
;;; QUESTIONS FOR USER
;;;============================================================================
(define questions
  '((standardization
     (("What is the target timeline for IETF submission?"
       (context . "Drafts appear ready"))
      ("Which IETF working group should be targeted? (httpbis, dispatch, new?)"
       (context . "HTTP 430 is novel status code"))
      ("Are there IETF contacts/mentors who could review drafts?"
       (context . "First-time IETF submission"))))

    (infrastructure
     (("Is consent-aware-http.org domain owned/accessible?"
       (context . "Referenced in aibdp.json but not deployed"))
      ("Preferred hosting approach? (GitHub Pages, Cloudflare, custom?)"
       (context . "Static site should suffice initially"))
      ("Should the website include an interactive manifest generator?"
       (context . "Would help adoption but adds complexity"))))

    (adoption
     (("Priority order for outreach: IndieWeb, journalism, academic, enterprise?"
       (context . "Limited resources require focus"))
      ("Are there specific organizations to target first?"
       (context . "org-list.md exists but priorities unclear"))
      ("Should adoption focus on self-hosting sites or CDN partnerships?"
       (context . "Different technical and political considerations"))))

    (development
     (("Priority: test suites vs. Rust implementation vs. CMS plugins?"
       (context . "All desirable, need prioritization"))
      ("Should reference implementations be published to npm/PyPI?"
       (context . "Would improve discoverability"))
      ("Is academic paper publication a goal?"
       (context . "Development summary mentions this"))))))

;;;============================================================================
;;; LONG-TERM ROADMAP
;;;============================================================================
(define long-term-roadmap
  '((horizon-1-q1-2026
     ((name . "Standardization & Early Adoption")
      (goals
       (("IETF Internet-Draft submission" . critical)
        ("Website launch at consent-aware-http.org" . high)
        ("First 10 public adopters" . medium)
        ("Formal test suites for implementations" . high)))
      (success-metrics
       ("Drafts accepted for IETF review"
        "Website receiving organic traffic"
        "At least 5 sites deploying aibdp.json"))))

    (horizon-2-2026
     ((name . "Ecosystem Development")
      (goals
       (("RFC publication (HTTP 430 or AIBDP)" . high)
        ("WordPress plugin" . medium)
        ("Ghost plugin" . medium)
        ("Rust reference implementation" . low)
        ("CDN integration pilot (Cloudflare/Fastly)" . medium)
        ("Conference presentations (FOSDEM, IndieWebCamp)" . medium)))
      (success-metrics
       ("At least one RFC published"
        "100+ sites deploying protocol"
        "CMS plugins with downloads"))))

    (horizon-3-2027-plus
     ((name . "Widespread Adoption")
      (goals
       (("Both drafts become RFCs" . high)
        ("Major platform integration (WordPress core, Cloudflare default)" . aspirational)
        ("Academic papers on consent-aware architecture" . medium)
        ("AI companies adopting AIBDP checking" . aspirational)
        ("Industry consortium or working group" . future)))
      (success-metrics
       ("HTTP 430 recognized in major HTTP libraries"
        "AIBDP checking in major AI crawlers"
        "Cited in AI governance policy discussions"))))))

;;;============================================================================
;;; PROJECT CATALOG (Related Projects)
;;;============================================================================
(define project-catalog
  '(("consent-aware-http"
     (status . "in-progress")
     (completion . 75)
     (category . "web-standards")
     (phase . "pre-standardization")
     (next-actions . ("Submit to IETF"
                      "Deploy website"
                      "Write test suites")))

    ("elegant-STATE"
     (status . "separate-project")
     (relation . "Related tooling for multi-agent coordination")
     (notes . "Hyperpolymath's state graph database"))))

;;;============================================================================
;;; HISTORY (Completion Snapshots)
;;;============================================================================
(define history
  '(("2025-07-20"
     (event . "major-development-session")
     (achievements . ("AIBDP draft complete"
                      "Reference implementations (Node.js, Python)"
                      "RSR compliance achieved"
                      "25,000+ words documentation"
                      "12 manifest scenarios"
                      "8 server platform guides"))
     (commits . 10))

    ("2025-07-20-initial"
     (event . "repository-creation")
     (achievements . ("HTTP 430 draft"
                      "Core documentation"
                      "Community infrastructure")))))

;;;============================================================================
;;; CRITICAL NEXT ACTIONS
;;;============================================================================
(define critical-next-actions
  '(("Deploy website at consent-aware-http.org"
     (priority . 1)
     (rationale . "Broken links in manifests, no public presence")
     (estimate . "1-2 days"))

    ("Initiate IETF submission process"
     (priority . 2)
     (rationale . "Core purpose of project")
     (estimate . "Research + submission: 1 week")
     (blockers . ("Need to identify working group")))

    ("Write test suites for reference implementations"
     (priority . 3)
     (rationale . "Production confidence")
     (estimate . "2-3 days per implementation"))

    ("Contact IndieWeb community for early adoption"
     (priority . 4)
     (rationale . "Sympathetic audience, federated values alignment")
     (estimate . "Ongoing"))

    ("Create PR from development branch to main"
     (priority . 5)
     (rationale . "Consolidate July development work")
     (estimate . "1 day for review"))))

;;;============================================================================
;;; SESSION CONTEXT
;;;============================================================================
(define session-context
  '((conversation-purpose . "Create STATE.scm checkpoint file")
    (session-date . "2025-12-08")
    (key-outputs . ("STATE.scm created"))
    (resume-point . "STATE.scm committed, ready for user review and prioritization")))

;;;============================================================================
;;; EXPORT
;;;============================================================================
;;; To restore context in a new conversation:
;;; 1. Upload this STATE.scm file
;;; 2. Claude parses S-expressions and reconstructs project state
;;; 3. Resume from critical-next-actions
;;;
;;; Query examples (minikanren-style):
;;; - (run* (q) (project-statuso "consent-aware-http" q)) => 'in-progress
;;; - (run* (q) (issue-severityo q 'high)) => list of high-severity issues
;;; - (run* (q) (next-action-priorityo 1 q)) => highest priority action

;;; End of STATE.scm

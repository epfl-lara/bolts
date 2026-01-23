; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287304 () Bool)

(assert start!287304)

(declare-fun b!2969059 () Bool)

(declare-fun e!1868264 () Bool)

(declare-fun tp!946892 () Bool)

(declare-fun tp!946890 () Bool)

(assert (=> b!2969059 (= e!1868264 (and tp!946892 tp!946890))))

(declare-fun b!2969060 () Bool)

(declare-fun e!1868267 () Bool)

(declare-fun tp_is_empty!16069 () Bool)

(declare-fun tp!946889 () Bool)

(assert (=> b!2969060 (= e!1868267 (and tp_is_empty!16069 tp!946889))))

(declare-fun b!2969061 () Bool)

(declare-fun e!1868263 () Bool)

(declare-fun e!1868262 () Bool)

(assert (=> b!2969061 (= e!1868263 e!1868262)))

(declare-fun res!1224554 () Bool)

(assert (=> b!2969061 (=> res!1224554 e!1868262)))

(declare-fun lt!1035864 () Bool)

(assert (=> b!2969061 (= res!1224554 (not lt!1035864))))

(declare-datatypes ((C!18692 0))(
  ( (C!18693 (val!11382 Int)) )
))
(declare-datatypes ((Regex!9253 0))(
  ( (ElementMatch!9253 (c!487025 C!18692)) (Concat!14574 (regOne!19018 Regex!9253) (regTwo!19018 Regex!9253)) (EmptyExpr!9253) (Star!9253 (reg!9582 Regex!9253)) (EmptyLang!9253) (Union!9253 (regOne!19019 Regex!9253) (regTwo!19019 Regex!9253)) )
))
(declare-fun lt!1035861 () Regex!9253)

(declare-datatypes ((List!35118 0))(
  ( (Nil!34994) (Cons!34994 (h!40414 C!18692) (t!234183 List!35118)) )
))
(declare-fun s!11993 () List!35118)

(declare-fun matchR!4135 (Regex!9253 List!35118) Bool)

(assert (=> b!2969061 (= lt!1035864 (matchR!4135 lt!1035861 s!11993))))

(declare-fun r!17423 () Regex!9253)

(assert (=> b!2969061 (= lt!1035864 (matchR!4135 (reg!9582 r!17423) s!11993))))

(declare-datatypes ((Unit!48885 0))(
  ( (Unit!48886) )
))
(declare-fun lt!1035863 () Unit!48885)

(declare-fun lemmaSimplifySound!162 (Regex!9253 List!35118) Unit!48885)

(assert (=> b!2969061 (= lt!1035863 (lemmaSimplifySound!162 (reg!9582 r!17423) s!11993))))

(declare-fun b!2969062 () Bool)

(declare-fun tp!946893 () Bool)

(assert (=> b!2969062 (= e!1868264 tp!946893)))

(declare-fun b!2969063 () Bool)

(declare-fun e!1868265 () Bool)

(declare-fun e!1868266 () Bool)

(assert (=> b!2969063 (= e!1868265 (not e!1868266))))

(declare-fun res!1224551 () Bool)

(assert (=> b!2969063 (=> res!1224551 e!1868266)))

(declare-fun lt!1035862 () Bool)

(get-info :version)

(assert (=> b!2969063 (= res!1224551 (or lt!1035862 ((_ is Concat!14574) r!17423) ((_ is Union!9253) r!17423) (not ((_ is Star!9253) r!17423))))))

(declare-fun matchRSpec!1390 (Regex!9253 List!35118) Bool)

(assert (=> b!2969063 (= lt!1035862 (matchRSpec!1390 r!17423 s!11993))))

(assert (=> b!2969063 (= lt!1035862 (matchR!4135 r!17423 s!11993))))

(declare-fun lt!1035859 () Unit!48885)

(declare-fun mainMatchTheorem!1390 (Regex!9253 List!35118) Unit!48885)

(assert (=> b!2969063 (= lt!1035859 (mainMatchTheorem!1390 r!17423 s!11993))))

(declare-fun b!2969064 () Bool)

(declare-fun tp!946891 () Bool)

(declare-fun tp!946888 () Bool)

(assert (=> b!2969064 (= e!1868264 (and tp!946891 tp!946888))))

(declare-fun res!1224553 () Bool)

(assert (=> start!287304 (=> (not res!1224553) (not e!1868265))))

(declare-fun validRegex!3986 (Regex!9253) Bool)

(assert (=> start!287304 (= res!1224553 (validRegex!3986 r!17423))))

(assert (=> start!287304 e!1868265))

(assert (=> start!287304 e!1868264))

(assert (=> start!287304 e!1868267))

(declare-fun b!2969065 () Bool)

(assert (=> b!2969065 (= e!1868262 true)))

(declare-fun ++!8344 (List!35118 List!35118) List!35118)

(assert (=> b!2969065 (matchR!4135 (Star!9253 (reg!9582 r!17423)) (++!8344 Nil!34994 s!11993))))

(declare-fun lt!1035860 () Unit!48885)

(declare-fun lemmaStarApp!18 (Regex!9253 List!35118 List!35118) Unit!48885)

(assert (=> b!2969065 (= lt!1035860 (lemmaStarApp!18 (reg!9582 r!17423) Nil!34994 s!11993))))

(declare-fun b!2969066 () Bool)

(assert (=> b!2969066 (= e!1868264 tp_is_empty!16069)))

(declare-fun b!2969067 () Bool)

(assert (=> b!2969067 (= e!1868266 e!1868263)))

(declare-fun res!1224552 () Bool)

(assert (=> b!2969067 (=> res!1224552 e!1868263)))

(declare-fun isEmptyLang!367 (Regex!9253) Bool)

(assert (=> b!2969067 (= res!1224552 (not (isEmptyLang!367 lt!1035861)))))

(declare-fun simplify!254 (Regex!9253) Regex!9253)

(assert (=> b!2969067 (= lt!1035861 (simplify!254 (reg!9582 r!17423)))))

(assert (= (and start!287304 res!1224553) b!2969063))

(assert (= (and b!2969063 (not res!1224551)) b!2969067))

(assert (= (and b!2969067 (not res!1224552)) b!2969061))

(assert (= (and b!2969061 (not res!1224554)) b!2969065))

(assert (= (and start!287304 ((_ is ElementMatch!9253) r!17423)) b!2969066))

(assert (= (and start!287304 ((_ is Concat!14574) r!17423)) b!2969064))

(assert (= (and start!287304 ((_ is Star!9253) r!17423)) b!2969062))

(assert (= (and start!287304 ((_ is Union!9253) r!17423)) b!2969059))

(assert (= (and start!287304 ((_ is Cons!34994) s!11993)) b!2969060))

(declare-fun m!3337589 () Bool)

(assert (=> b!2969067 m!3337589))

(declare-fun m!3337591 () Bool)

(assert (=> b!2969067 m!3337591))

(declare-fun m!3337593 () Bool)

(assert (=> start!287304 m!3337593))

(declare-fun m!3337595 () Bool)

(assert (=> b!2969063 m!3337595))

(declare-fun m!3337597 () Bool)

(assert (=> b!2969063 m!3337597))

(declare-fun m!3337599 () Bool)

(assert (=> b!2969063 m!3337599))

(declare-fun m!3337601 () Bool)

(assert (=> b!2969065 m!3337601))

(assert (=> b!2969065 m!3337601))

(declare-fun m!3337603 () Bool)

(assert (=> b!2969065 m!3337603))

(declare-fun m!3337605 () Bool)

(assert (=> b!2969065 m!3337605))

(declare-fun m!3337607 () Bool)

(assert (=> b!2969061 m!3337607))

(declare-fun m!3337609 () Bool)

(assert (=> b!2969061 m!3337609))

(declare-fun m!3337611 () Bool)

(assert (=> b!2969061 m!3337611))

(check-sat (not b!2969059) (not b!2969060) (not b!2969061) (not b!2969063) tp_is_empty!16069 (not start!287304) (not b!2969062) (not b!2969064) (not b!2969067) (not b!2969065))
(check-sat)

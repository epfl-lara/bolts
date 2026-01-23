; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287016 () Bool)

(assert start!287016)

(declare-fun b!2963377 () Bool)

(declare-fun e!1865171 () Bool)

(declare-fun tp!945599 () Bool)

(declare-fun tp!945596 () Bool)

(assert (=> b!2963377 (= e!1865171 (and tp!945599 tp!945596))))

(declare-fun res!1222474 () Bool)

(declare-fun e!1865172 () Bool)

(assert (=> start!287016 (=> (not res!1222474) (not e!1865172))))

(declare-datatypes ((C!18616 0))(
  ( (C!18617 (val!11344 Int)) )
))
(declare-datatypes ((Regex!9215 0))(
  ( (ElementMatch!9215 (c!485783 C!18616)) (Concat!14536 (regOne!18942 Regex!9215) (regTwo!18942 Regex!9215)) (EmptyExpr!9215) (Star!9215 (reg!9544 Regex!9215)) (EmptyLang!9215) (Union!9215 (regOne!18943 Regex!9215) (regTwo!18943 Regex!9215)) )
))
(declare-fun r!17423 () Regex!9215)

(declare-fun validRegex!3948 (Regex!9215) Bool)

(assert (=> start!287016 (= res!1222474 (validRegex!3948 r!17423))))

(assert (=> start!287016 e!1865172))

(assert (=> start!287016 e!1865171))

(declare-fun e!1865170 () Bool)

(assert (=> start!287016 e!1865170))

(declare-fun b!2963378 () Bool)

(declare-fun e!1865173 () Bool)

(assert (=> b!2963378 (= e!1865173 true)))

(declare-datatypes ((List!35080 0))(
  ( (Nil!34956) (Cons!34956 (h!40376 C!18616) (t!234145 List!35080)) )
))
(declare-fun s!11993 () List!35080)

(declare-fun lt!1034694 () Regex!9215)

(declare-fun matchR!4097 (Regex!9215 List!35080) Bool)

(assert (=> b!2963378 (= (matchR!4097 (regOne!18943 r!17423) s!11993) (matchR!4097 lt!1034694 s!11993))))

(declare-datatypes ((Unit!48809 0))(
  ( (Unit!48810) )
))
(declare-fun lt!1034695 () Unit!48809)

(declare-fun lemmaSimplifySound!142 (Regex!9215 List!35080) Unit!48809)

(assert (=> b!2963378 (= lt!1034695 (lemmaSimplifySound!142 (regOne!18943 r!17423) s!11993))))

(declare-fun b!2963379 () Bool)

(declare-fun res!1222472 () Bool)

(assert (=> b!2963379 (=> res!1222472 e!1865173)))

(declare-fun lt!1034696 () Regex!9215)

(declare-fun isEmptyLang!331 (Regex!9215) Bool)

(assert (=> b!2963379 (= res!1222472 (not (isEmptyLang!331 lt!1034696)))))

(declare-fun b!2963380 () Bool)

(declare-fun e!1865169 () Bool)

(assert (=> b!2963380 (= e!1865169 e!1865173)))

(declare-fun res!1222471 () Bool)

(assert (=> b!2963380 (=> res!1222471 e!1865173)))

(assert (=> b!2963380 (= res!1222471 (isEmptyLang!331 lt!1034694))))

(declare-fun simplify!218 (Regex!9215) Regex!9215)

(assert (=> b!2963380 (= lt!1034696 (simplify!218 (regTwo!18943 r!17423)))))

(assert (=> b!2963380 (= lt!1034694 (simplify!218 (regOne!18943 r!17423)))))

(declare-fun b!2963381 () Bool)

(declare-fun tp!945601 () Bool)

(assert (=> b!2963381 (= e!1865171 tp!945601)))

(declare-fun b!2963382 () Bool)

(declare-fun tp_is_empty!15993 () Bool)

(declare-fun tp!945598 () Bool)

(assert (=> b!2963382 (= e!1865170 (and tp_is_empty!15993 tp!945598))))

(declare-fun b!2963383 () Bool)

(declare-fun tp!945597 () Bool)

(declare-fun tp!945600 () Bool)

(assert (=> b!2963383 (= e!1865171 (and tp!945597 tp!945600))))

(declare-fun b!2963384 () Bool)

(assert (=> b!2963384 (= e!1865172 (not e!1865169))))

(declare-fun res!1222473 () Bool)

(assert (=> b!2963384 (=> res!1222473 e!1865169)))

(declare-fun lt!1034698 () Bool)

(get-info :version)

(assert (=> b!2963384 (= res!1222473 (or lt!1034698 ((_ is Concat!14536) r!17423) (not ((_ is Union!9215) r!17423))))))

(declare-fun matchRSpec!1352 (Regex!9215 List!35080) Bool)

(assert (=> b!2963384 (= lt!1034698 (matchRSpec!1352 r!17423 s!11993))))

(assert (=> b!2963384 (= lt!1034698 (matchR!4097 r!17423 s!11993))))

(declare-fun lt!1034697 () Unit!48809)

(declare-fun mainMatchTheorem!1352 (Regex!9215 List!35080) Unit!48809)

(assert (=> b!2963384 (= lt!1034697 (mainMatchTheorem!1352 r!17423 s!11993))))

(declare-fun b!2963385 () Bool)

(assert (=> b!2963385 (= e!1865171 tp_is_empty!15993)))

(assert (= (and start!287016 res!1222474) b!2963384))

(assert (= (and b!2963384 (not res!1222473)) b!2963380))

(assert (= (and b!2963380 (not res!1222471)) b!2963379))

(assert (= (and b!2963379 (not res!1222472)) b!2963378))

(assert (= (and start!287016 ((_ is ElementMatch!9215) r!17423)) b!2963385))

(assert (= (and start!287016 ((_ is Concat!14536) r!17423)) b!2963377))

(assert (= (and start!287016 ((_ is Star!9215) r!17423)) b!2963381))

(assert (= (and start!287016 ((_ is Union!9215) r!17423)) b!2963383))

(assert (= (and start!287016 ((_ is Cons!34956) s!11993)) b!2963382))

(declare-fun m!3335313 () Bool)

(assert (=> b!2963380 m!3335313))

(declare-fun m!3335315 () Bool)

(assert (=> b!2963380 m!3335315))

(declare-fun m!3335317 () Bool)

(assert (=> b!2963380 m!3335317))

(declare-fun m!3335319 () Bool)

(assert (=> start!287016 m!3335319))

(declare-fun m!3335321 () Bool)

(assert (=> b!2963379 m!3335321))

(declare-fun m!3335323 () Bool)

(assert (=> b!2963378 m!3335323))

(declare-fun m!3335325 () Bool)

(assert (=> b!2963378 m!3335325))

(declare-fun m!3335327 () Bool)

(assert (=> b!2963378 m!3335327))

(declare-fun m!3335329 () Bool)

(assert (=> b!2963384 m!3335329))

(declare-fun m!3335331 () Bool)

(assert (=> b!2963384 m!3335331))

(declare-fun m!3335333 () Bool)

(assert (=> b!2963384 m!3335333))

(check-sat (not start!287016) (not b!2963380) (not b!2963379) (not b!2963378) (not b!2963383) (not b!2963384) tp_is_empty!15993 (not b!2963382) (not b!2963381) (not b!2963377))
(check-sat)

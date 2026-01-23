; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287012 () Bool)

(assert start!287012)

(declare-fun b!2963323 () Bool)

(declare-fun e!1865139 () Bool)

(declare-fun e!1865138 () Bool)

(assert (=> b!2963323 (= e!1865139 (not e!1865138))))

(declare-fun res!1222446 () Bool)

(assert (=> b!2963323 (=> res!1222446 e!1865138)))

(declare-fun lt!1034664 () Bool)

(declare-datatypes ((C!18612 0))(
  ( (C!18613 (val!11342 Int)) )
))
(declare-datatypes ((Regex!9213 0))(
  ( (ElementMatch!9213 (c!485781 C!18612)) (Concat!14534 (regOne!18938 Regex!9213) (regTwo!18938 Regex!9213)) (EmptyExpr!9213) (Star!9213 (reg!9542 Regex!9213)) (EmptyLang!9213) (Union!9213 (regOne!18939 Regex!9213) (regTwo!18939 Regex!9213)) )
))
(declare-fun r!17423 () Regex!9213)

(get-info :version)

(assert (=> b!2963323 (= res!1222446 (or lt!1034664 ((_ is Concat!14534) r!17423) (not ((_ is Union!9213) r!17423))))))

(declare-datatypes ((List!35078 0))(
  ( (Nil!34954) (Cons!34954 (h!40374 C!18612) (t!234143 List!35078)) )
))
(declare-fun s!11993 () List!35078)

(declare-fun matchRSpec!1350 (Regex!9213 List!35078) Bool)

(assert (=> b!2963323 (= lt!1034664 (matchRSpec!1350 r!17423 s!11993))))

(declare-fun matchR!4095 (Regex!9213 List!35078) Bool)

(assert (=> b!2963323 (= lt!1034664 (matchR!4095 r!17423 s!11993))))

(declare-datatypes ((Unit!48805 0))(
  ( (Unit!48806) )
))
(declare-fun lt!1034662 () Unit!48805)

(declare-fun mainMatchTheorem!1350 (Regex!9213 List!35078) Unit!48805)

(assert (=> b!2963323 (= lt!1034662 (mainMatchTheorem!1350 r!17423 s!11993))))

(declare-fun b!2963324 () Bool)

(declare-fun e!1865143 () Bool)

(declare-fun tp!945562 () Bool)

(declare-fun tp!945560 () Bool)

(assert (=> b!2963324 (= e!1865143 (and tp!945562 tp!945560))))

(declare-fun b!2963325 () Bool)

(declare-fun tp!945563 () Bool)

(declare-fun tp!945564 () Bool)

(assert (=> b!2963325 (= e!1865143 (and tp!945563 tp!945564))))

(declare-fun b!2963322 () Bool)

(declare-fun e!1865142 () Bool)

(assert (=> b!2963322 (= e!1865142 true)))

(assert (=> b!2963322 (matchR!4095 (Union!9213 (regOne!18939 r!17423) (regTwo!18939 r!17423)) s!11993)))

(declare-fun lt!1034663 () Unit!48805)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!68 (Regex!9213 Regex!9213 List!35078) Unit!48805)

(assert (=> b!2963322 (= lt!1034663 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!68 (regOne!18939 r!17423) (regTwo!18939 r!17423) s!11993))))

(declare-fun res!1222449 () Bool)

(assert (=> start!287012 (=> (not res!1222449) (not e!1865139))))

(declare-fun validRegex!3946 (Regex!9213) Bool)

(assert (=> start!287012 (= res!1222449 (validRegex!3946 r!17423))))

(assert (=> start!287012 e!1865139))

(assert (=> start!287012 e!1865143))

(declare-fun e!1865140 () Bool)

(assert (=> start!287012 e!1865140))

(declare-fun b!2963326 () Bool)

(declare-fun tp_is_empty!15989 () Bool)

(declare-fun tp!945565 () Bool)

(assert (=> b!2963326 (= e!1865140 (and tp_is_empty!15989 tp!945565))))

(declare-fun b!2963327 () Bool)

(declare-fun e!1865141 () Bool)

(assert (=> b!2963327 (= e!1865141 e!1865142)))

(declare-fun res!1222450 () Bool)

(assert (=> b!2963327 (=> res!1222450 e!1865142)))

(declare-fun lt!1034665 () Bool)

(assert (=> b!2963327 (= res!1222450 (not lt!1034665))))

(declare-fun lt!1034668 () Regex!9213)

(assert (=> b!2963327 (= lt!1034665 (matchR!4095 lt!1034668 s!11993))))

(assert (=> b!2963327 (= lt!1034665 (matchR!4095 (regOne!18939 r!17423) s!11993))))

(declare-fun lt!1034667 () Unit!48805)

(declare-fun lemmaSimplifySound!140 (Regex!9213 List!35078) Unit!48805)

(assert (=> b!2963327 (= lt!1034667 (lemmaSimplifySound!140 (regOne!18939 r!17423) s!11993))))

(declare-fun b!2963328 () Bool)

(assert (=> b!2963328 (= e!1865138 e!1865141)))

(declare-fun res!1222448 () Bool)

(assert (=> b!2963328 (=> res!1222448 e!1865141)))

(declare-fun isEmptyLang!329 (Regex!9213) Bool)

(assert (=> b!2963328 (= res!1222448 (isEmptyLang!329 lt!1034668))))

(declare-fun lt!1034666 () Regex!9213)

(declare-fun simplify!216 (Regex!9213) Regex!9213)

(assert (=> b!2963328 (= lt!1034666 (simplify!216 (regTwo!18939 r!17423)))))

(assert (=> b!2963328 (= lt!1034668 (simplify!216 (regOne!18939 r!17423)))))

(declare-fun b!2963329 () Bool)

(declare-fun res!1222447 () Bool)

(assert (=> b!2963329 (=> res!1222447 e!1865141)))

(assert (=> b!2963329 (= res!1222447 (not (isEmptyLang!329 lt!1034666)))))

(declare-fun b!2963330 () Bool)

(declare-fun tp!945561 () Bool)

(assert (=> b!2963330 (= e!1865143 tp!945561)))

(declare-fun b!2963331 () Bool)

(assert (=> b!2963331 (= e!1865143 tp_is_empty!15989)))

(assert (= (and start!287012 res!1222449) b!2963323))

(assert (= (and b!2963323 (not res!1222446)) b!2963328))

(assert (= (and b!2963328 (not res!1222448)) b!2963329))

(assert (= (and b!2963329 (not res!1222447)) b!2963327))

(assert (= (and b!2963327 (not res!1222450)) b!2963322))

(assert (= (and start!287012 ((_ is ElementMatch!9213) r!17423)) b!2963331))

(assert (= (and start!287012 ((_ is Concat!14534) r!17423)) b!2963325))

(assert (= (and start!287012 ((_ is Star!9213) r!17423)) b!2963330))

(assert (= (and start!287012 ((_ is Union!9213) r!17423)) b!2963324))

(assert (= (and start!287012 ((_ is Cons!34954) s!11993)) b!2963326))

(declare-fun m!3335265 () Bool)

(assert (=> b!2963328 m!3335265))

(declare-fun m!3335267 () Bool)

(assert (=> b!2963328 m!3335267))

(declare-fun m!3335269 () Bool)

(assert (=> b!2963328 m!3335269))

(declare-fun m!3335271 () Bool)

(assert (=> b!2963323 m!3335271))

(declare-fun m!3335273 () Bool)

(assert (=> b!2963323 m!3335273))

(declare-fun m!3335275 () Bool)

(assert (=> b!2963323 m!3335275))

(declare-fun m!3335277 () Bool)

(assert (=> b!2963322 m!3335277))

(declare-fun m!3335279 () Bool)

(assert (=> b!2963322 m!3335279))

(declare-fun m!3335281 () Bool)

(assert (=> b!2963327 m!3335281))

(declare-fun m!3335283 () Bool)

(assert (=> b!2963327 m!3335283))

(declare-fun m!3335285 () Bool)

(assert (=> b!2963327 m!3335285))

(declare-fun m!3335287 () Bool)

(assert (=> b!2963329 m!3335287))

(declare-fun m!3335289 () Bool)

(assert (=> start!287012 m!3335289))

(check-sat (not b!2963325) (not b!2963328) tp_is_empty!15989 (not start!287012) (not b!2963327) (not b!2963326) (not b!2963330) (not b!2963323) (not b!2963329) (not b!2963322) (not b!2963324))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287428 () Bool)

(assert start!287428)

(declare-fun b!2971379 () Bool)

(declare-fun e!1869525 () Bool)

(declare-fun tp!947412 () Bool)

(assert (=> b!2971379 (= e!1869525 tp!947412)))

(declare-fun b!2971380 () Bool)

(declare-fun res!1225310 () Bool)

(declare-fun e!1869523 () Bool)

(assert (=> b!2971380 (=> res!1225310 e!1869523)))

(declare-datatypes ((C!18716 0))(
  ( (C!18717 (val!11394 Int)) )
))
(declare-datatypes ((Regex!9265 0))(
  ( (ElementMatch!9265 (c!487573 C!18716)) (Concat!14586 (regOne!19042 Regex!9265) (regTwo!19042 Regex!9265)) (EmptyExpr!9265) (Star!9265 (reg!9594 Regex!9265)) (EmptyLang!9265) (Union!9265 (regOne!19043 Regex!9265) (regTwo!19043 Regex!9265)) )
))
(declare-fun lt!1036200 () Regex!9265)

(declare-datatypes ((List!35130 0))(
  ( (Nil!35006) (Cons!35006 (h!40426 C!18716) (t!234195 List!35130)) )
))
(declare-fun s!11993 () List!35130)

(declare-fun matchR!4147 (Regex!9265 List!35130) Bool)

(assert (=> b!2971380 (= res!1225310 (not (matchR!4147 (Star!9265 lt!1036200) s!11993)))))

(declare-fun res!1225309 () Bool)

(declare-fun e!1869524 () Bool)

(assert (=> start!287428 (=> (not res!1225309) (not e!1869524))))

(declare-fun r!17423 () Regex!9265)

(declare-fun validRegex!3998 (Regex!9265) Bool)

(assert (=> start!287428 (= res!1225309 (validRegex!3998 r!17423))))

(assert (=> start!287428 e!1869524))

(assert (=> start!287428 e!1869525))

(declare-fun e!1869522 () Bool)

(assert (=> start!287428 e!1869522))

(declare-fun b!2971381 () Bool)

(declare-fun e!1869521 () Bool)

(assert (=> b!2971381 (= e!1869524 (not e!1869521))))

(declare-fun res!1225307 () Bool)

(assert (=> b!2971381 (=> res!1225307 e!1869521)))

(declare-fun lt!1036199 () Bool)

(get-info :version)

(assert (=> b!2971381 (= res!1225307 (or lt!1036199 ((_ is Concat!14586) r!17423) ((_ is Union!9265) r!17423) (not ((_ is Star!9265) r!17423))))))

(declare-fun matchRSpec!1402 (Regex!9265 List!35130) Bool)

(assert (=> b!2971381 (= lt!1036199 (matchRSpec!1402 r!17423 s!11993))))

(assert (=> b!2971381 (= lt!1036199 (matchR!4147 r!17423 s!11993))))

(declare-datatypes ((Unit!48909 0))(
  ( (Unit!48910) )
))
(declare-fun lt!1036198 () Unit!48909)

(declare-fun mainMatchTheorem!1402 (Regex!9265 List!35130) Unit!48909)

(assert (=> b!2971381 (= lt!1036198 (mainMatchTheorem!1402 r!17423 s!11993))))

(declare-fun b!2971382 () Bool)

(declare-fun tp!947409 () Bool)

(declare-fun tp!947410 () Bool)

(assert (=> b!2971382 (= e!1869525 (and tp!947409 tp!947410))))

(declare-fun b!2971383 () Bool)

(declare-fun tp_is_empty!16093 () Bool)

(assert (=> b!2971383 (= e!1869525 tp_is_empty!16093)))

(declare-fun b!2971384 () Bool)

(assert (=> b!2971384 (= e!1869521 e!1869523)))

(declare-fun res!1225308 () Bool)

(assert (=> b!2971384 (=> res!1225308 e!1869523)))

(declare-fun isEmptyLang!379 (Regex!9265) Bool)

(assert (=> b!2971384 (= res!1225308 (isEmptyLang!379 lt!1036200))))

(declare-fun simplify!266 (Regex!9265) Regex!9265)

(assert (=> b!2971384 (= lt!1036200 (simplify!266 (reg!9594 r!17423)))))

(declare-fun b!2971385 () Bool)

(declare-fun tp!947411 () Bool)

(assert (=> b!2971385 (= e!1869522 (and tp_is_empty!16093 tp!947411))))

(declare-fun b!2971386 () Bool)

(declare-fun tp!947413 () Bool)

(declare-fun tp!947408 () Bool)

(assert (=> b!2971386 (= e!1869525 (and tp!947413 tp!947408))))

(declare-fun b!2971387 () Bool)

(assert (=> b!2971387 (= e!1869523 true)))

(assert (= (and start!287428 res!1225309) b!2971381))

(assert (= (and b!2971381 (not res!1225307)) b!2971384))

(assert (= (and b!2971384 (not res!1225308)) b!2971380))

(assert (= (and b!2971380 (not res!1225310)) b!2971387))

(assert (= (and start!287428 ((_ is ElementMatch!9265) r!17423)) b!2971383))

(assert (= (and start!287428 ((_ is Concat!14586) r!17423)) b!2971386))

(assert (= (and start!287428 ((_ is Star!9265) r!17423)) b!2971379))

(assert (= (and start!287428 ((_ is Union!9265) r!17423)) b!2971382))

(assert (= (and start!287428 ((_ is Cons!35006) s!11993)) b!2971385))

(declare-fun m!3338283 () Bool)

(assert (=> b!2971380 m!3338283))

(declare-fun m!3338285 () Bool)

(assert (=> start!287428 m!3338285))

(declare-fun m!3338287 () Bool)

(assert (=> b!2971381 m!3338287))

(declare-fun m!3338289 () Bool)

(assert (=> b!2971381 m!3338289))

(declare-fun m!3338291 () Bool)

(assert (=> b!2971381 m!3338291))

(declare-fun m!3338293 () Bool)

(assert (=> b!2971384 m!3338293))

(declare-fun m!3338295 () Bool)

(assert (=> b!2971384 m!3338295))

(check-sat (not b!2971381) (not b!2971379) (not b!2971380) tp_is_empty!16093 (not b!2971385) (not b!2971386) (not b!2971382) (not b!2971384) (not start!287428))
(check-sat)

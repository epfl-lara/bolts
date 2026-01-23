; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285748 () Bool)

(assert start!285748)

(declare-fun b!2943214 () Bool)

(declare-fun e!1854573 () Bool)

(declare-fun e!1854575 () Bool)

(assert (=> b!2943214 (= e!1854573 e!1854575)))

(declare-fun res!1214704 () Bool)

(assert (=> b!2943214 (=> res!1214704 e!1854575)))

(declare-datatypes ((C!18416 0))(
  ( (C!18417 (val!11244 Int)) )
))
(declare-datatypes ((Regex!9115 0))(
  ( (ElementMatch!9115 (c!481323 C!18416)) (Concat!14436 (regOne!18742 Regex!9115) (regTwo!18742 Regex!9115)) (EmptyExpr!9115) (Star!9115 (reg!9444 Regex!9115)) (EmptyLang!9115) (Union!9115 (regOne!18743 Regex!9115) (regTwo!18743 Regex!9115)) )
))
(declare-fun lt!1030595 () Regex!9115)

(declare-fun isEmptyLang!237 (Regex!9115) Bool)

(assert (=> b!2943214 (= res!1214704 (isEmptyLang!237 lt!1030595))))

(declare-fun lt!1030599 () Regex!9115)

(declare-fun r!17423 () Regex!9115)

(declare-fun simplify!120 (Regex!9115) Regex!9115)

(assert (=> b!2943214 (= lt!1030599 (simplify!120 (regTwo!18742 r!17423)))))

(assert (=> b!2943214 (= lt!1030595 (simplify!120 (regOne!18742 r!17423)))))

(declare-fun b!2943215 () Bool)

(assert (=> b!2943215 (= e!1854575 true)))

(declare-datatypes ((List!34980 0))(
  ( (Nil!34856) (Cons!34856 (h!40276 C!18416) (t!234045 List!34980)) )
))
(declare-fun s!11993 () List!34980)

(declare-fun matchR!3997 (Regex!9115 List!34980) Bool)

(assert (=> b!2943215 (= (matchR!3997 (regOne!18742 r!17423) s!11993) (matchR!3997 lt!1030595 s!11993))))

(declare-datatypes ((Unit!48609 0))(
  ( (Unit!48610) )
))
(declare-fun lt!1030596 () Unit!48609)

(declare-fun lemmaSimplifySound!102 (Regex!9115 List!34980) Unit!48609)

(assert (=> b!2943215 (= lt!1030596 (lemmaSimplifySound!102 (regOne!18742 r!17423) s!11993))))

(declare-fun b!2943216 () Bool)

(declare-fun e!1854572 () Bool)

(declare-fun tp_is_empty!15793 () Bool)

(assert (=> b!2943216 (= e!1854572 tp_is_empty!15793)))

(declare-fun b!2943217 () Bool)

(declare-fun tp!941746 () Bool)

(declare-fun tp!941749 () Bool)

(assert (=> b!2943217 (= e!1854572 (and tp!941746 tp!941749))))

(declare-fun b!2943218 () Bool)

(declare-fun tp!941744 () Bool)

(declare-fun tp!941745 () Bool)

(assert (=> b!2943218 (= e!1854572 (and tp!941744 tp!941745))))

(declare-fun b!2943219 () Bool)

(declare-fun e!1854571 () Bool)

(declare-fun tp!941748 () Bool)

(assert (=> b!2943219 (= e!1854571 (and tp_is_empty!15793 tp!941748))))

(declare-fun b!2943221 () Bool)

(declare-fun res!1214702 () Bool)

(assert (=> b!2943221 (=> res!1214702 e!1854575)))

(declare-fun isEmptyExpr!318 (Regex!9115) Bool)

(assert (=> b!2943221 (= res!1214702 (isEmptyExpr!318 lt!1030595))))

(declare-fun b!2943222 () Bool)

(declare-fun res!1214699 () Bool)

(assert (=> b!2943222 (=> res!1214699 e!1854575)))

(assert (=> b!2943222 (= res!1214699 (isEmptyLang!237 lt!1030599))))

(declare-fun b!2943223 () Bool)

(declare-fun e!1854574 () Bool)

(assert (=> b!2943223 (= e!1854574 (not e!1854573))))

(declare-fun res!1214703 () Bool)

(assert (=> b!2943223 (=> res!1214703 e!1854573)))

(declare-fun lt!1030597 () Bool)

(get-info :version)

(assert (=> b!2943223 (= res!1214703 (or lt!1030597 (not ((_ is Concat!14436) r!17423))))))

(declare-fun matchRSpec!1252 (Regex!9115 List!34980) Bool)

(assert (=> b!2943223 (= lt!1030597 (matchRSpec!1252 r!17423 s!11993))))

(assert (=> b!2943223 (= lt!1030597 (matchR!3997 r!17423 s!11993))))

(declare-fun lt!1030598 () Unit!48609)

(declare-fun mainMatchTheorem!1252 (Regex!9115 List!34980) Unit!48609)

(assert (=> b!2943223 (= lt!1030598 (mainMatchTheorem!1252 r!17423 s!11993))))

(declare-fun b!2943220 () Bool)

(declare-fun res!1214700 () Bool)

(assert (=> b!2943220 (=> res!1214700 e!1854575)))

(assert (=> b!2943220 (= res!1214700 (not (isEmptyExpr!318 lt!1030599)))))

(declare-fun res!1214701 () Bool)

(assert (=> start!285748 (=> (not res!1214701) (not e!1854574))))

(declare-fun validRegex!3848 (Regex!9115) Bool)

(assert (=> start!285748 (= res!1214701 (validRegex!3848 r!17423))))

(assert (=> start!285748 e!1854574))

(assert (=> start!285748 e!1854572))

(assert (=> start!285748 e!1854571))

(declare-fun b!2943224 () Bool)

(declare-fun res!1214698 () Bool)

(assert (=> b!2943224 (=> res!1214698 e!1854573)))

(declare-fun isEmpty!19117 (List!34980) Bool)

(assert (=> b!2943224 (= res!1214698 (isEmpty!19117 s!11993))))

(declare-fun b!2943225 () Bool)

(declare-fun tp!941747 () Bool)

(assert (=> b!2943225 (= e!1854572 tp!941747)))

(assert (= (and start!285748 res!1214701) b!2943223))

(assert (= (and b!2943223 (not res!1214703)) b!2943224))

(assert (= (and b!2943224 (not res!1214698)) b!2943214))

(assert (= (and b!2943214 (not res!1214704)) b!2943222))

(assert (= (and b!2943222 (not res!1214699)) b!2943221))

(assert (= (and b!2943221 (not res!1214702)) b!2943220))

(assert (= (and b!2943220 (not res!1214700)) b!2943215))

(assert (= (and start!285748 ((_ is ElementMatch!9115) r!17423)) b!2943216))

(assert (= (and start!285748 ((_ is Concat!14436) r!17423)) b!2943218))

(assert (= (and start!285748 ((_ is Star!9115) r!17423)) b!2943225))

(assert (= (and start!285748 ((_ is Union!9115) r!17423)) b!2943217))

(assert (= (and start!285748 ((_ is Cons!34856) s!11993)) b!2943219))

(declare-fun m!3326465 () Bool)

(assert (=> b!2943215 m!3326465))

(declare-fun m!3326467 () Bool)

(assert (=> b!2943215 m!3326467))

(declare-fun m!3326469 () Bool)

(assert (=> b!2943215 m!3326469))

(declare-fun m!3326471 () Bool)

(assert (=> b!2943221 m!3326471))

(declare-fun m!3326473 () Bool)

(assert (=> b!2943220 m!3326473))

(declare-fun m!3326475 () Bool)

(assert (=> start!285748 m!3326475))

(declare-fun m!3326477 () Bool)

(assert (=> b!2943223 m!3326477))

(declare-fun m!3326479 () Bool)

(assert (=> b!2943223 m!3326479))

(declare-fun m!3326481 () Bool)

(assert (=> b!2943223 m!3326481))

(declare-fun m!3326483 () Bool)

(assert (=> b!2943214 m!3326483))

(declare-fun m!3326485 () Bool)

(assert (=> b!2943214 m!3326485))

(declare-fun m!3326487 () Bool)

(assert (=> b!2943214 m!3326487))

(declare-fun m!3326489 () Bool)

(assert (=> b!2943224 m!3326489))

(declare-fun m!3326491 () Bool)

(assert (=> b!2943222 m!3326491))

(check-sat (not b!2943221) (not b!2943217) (not b!2943214) (not b!2943222) (not b!2943215) (not b!2943218) (not b!2943225) (not b!2943224) (not b!2943220) (not b!2943223) tp_is_empty!15793 (not b!2943219) (not start!285748))
(check-sat)

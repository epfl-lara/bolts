; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285700 () Bool)

(assert start!285700)

(declare-fun b!2942397 () Bool)

(declare-fun e!1854148 () Bool)

(declare-fun tp!941562 () Bool)

(declare-fun tp!941563 () Bool)

(assert (=> b!2942397 (= e!1854148 (and tp!941562 tp!941563))))

(declare-fun b!2942398 () Bool)

(declare-fun tp_is_empty!15781 () Bool)

(assert (=> b!2942398 (= e!1854148 tp_is_empty!15781)))

(declare-fun b!2942399 () Bool)

(declare-fun e!1854146 () Bool)

(assert (=> b!2942399 (= e!1854146 true)))

(declare-datatypes ((C!18404 0))(
  ( (C!18405 (val!11238 Int)) )
))
(declare-datatypes ((Regex!9109 0))(
  ( (ElementMatch!9109 (c!481137 C!18404)) (Concat!14430 (regOne!18730 Regex!9109) (regTwo!18730 Regex!9109)) (EmptyExpr!9109) (Star!9109 (reg!9438 Regex!9109)) (EmptyLang!9109) (Union!9109 (regOne!18731 Regex!9109) (regTwo!18731 Regex!9109)) )
))
(declare-fun r!17423 () Regex!9109)

(declare-datatypes ((List!34974 0))(
  ( (Nil!34850) (Cons!34850 (h!40270 C!18404) (t!234039 List!34974)) )
))
(declare-fun s!11993 () List!34974)

(declare-fun lt!1030426 () Regex!9109)

(declare-fun matchR!3991 (Regex!9109 List!34974) Bool)

(assert (=> b!2942399 (= (matchR!3991 (regTwo!18730 r!17423) s!11993) (matchR!3991 lt!1030426 s!11993))))

(declare-datatypes ((Unit!48597 0))(
  ( (Unit!48598) )
))
(declare-fun lt!1030427 () Unit!48597)

(declare-fun lemmaSimplifySound!98 (Regex!9109 List!34974) Unit!48597)

(assert (=> b!2942399 (= lt!1030427 (lemmaSimplifySound!98 (regTwo!18730 r!17423) s!11993))))

(declare-fun b!2942400 () Bool)

(declare-fun e!1854145 () Bool)

(assert (=> b!2942400 (= e!1854145 e!1854146)))

(declare-fun res!1214411 () Bool)

(assert (=> b!2942400 (=> res!1214411 e!1854146)))

(declare-fun lt!1030424 () Regex!9109)

(declare-fun isEmptyLang!233 (Regex!9109) Bool)

(assert (=> b!2942400 (= res!1214411 (isEmptyLang!233 lt!1030424))))

(declare-fun simplify!114 (Regex!9109) Regex!9109)

(assert (=> b!2942400 (= lt!1030426 (simplify!114 (regTwo!18730 r!17423)))))

(assert (=> b!2942400 (= lt!1030424 (simplify!114 (regOne!18730 r!17423)))))

(declare-fun b!2942401 () Bool)

(declare-fun e!1854147 () Bool)

(declare-fun tp!941564 () Bool)

(assert (=> b!2942401 (= e!1854147 (and tp_is_empty!15781 tp!941564))))

(declare-fun b!2942402 () Bool)

(declare-fun res!1214412 () Bool)

(assert (=> b!2942402 (=> res!1214412 e!1854146)))

(assert (=> b!2942402 (= res!1214412 (isEmptyLang!233 lt!1030426))))

(declare-fun b!2942403 () Bool)

(declare-fun res!1214409 () Bool)

(assert (=> b!2942403 (=> res!1214409 e!1854146)))

(declare-fun isEmptyExpr!314 (Regex!9109) Bool)

(assert (=> b!2942403 (= res!1214409 (not (isEmptyExpr!314 lt!1030424)))))

(declare-fun res!1214414 () Bool)

(declare-fun e!1854149 () Bool)

(assert (=> start!285700 (=> (not res!1214414) (not e!1854149))))

(declare-fun validRegex!3842 (Regex!9109) Bool)

(assert (=> start!285700 (= res!1214414 (validRegex!3842 r!17423))))

(assert (=> start!285700 e!1854149))

(assert (=> start!285700 e!1854148))

(assert (=> start!285700 e!1854147))

(declare-fun b!2942404 () Bool)

(declare-fun tp!941560 () Bool)

(assert (=> b!2942404 (= e!1854148 tp!941560)))

(declare-fun b!2942405 () Bool)

(assert (=> b!2942405 (= e!1854149 (not e!1854145))))

(declare-fun res!1214410 () Bool)

(assert (=> b!2942405 (=> res!1214410 e!1854145)))

(declare-fun lt!1030423 () Bool)

(get-info :version)

(assert (=> b!2942405 (= res!1214410 (or lt!1030423 (not ((_ is Concat!14430) r!17423))))))

(declare-fun matchRSpec!1246 (Regex!9109 List!34974) Bool)

(assert (=> b!2942405 (= lt!1030423 (matchRSpec!1246 r!17423 s!11993))))

(assert (=> b!2942405 (= lt!1030423 (matchR!3991 r!17423 s!11993))))

(declare-fun lt!1030425 () Unit!48597)

(declare-fun mainMatchTheorem!1246 (Regex!9109 List!34974) Unit!48597)

(assert (=> b!2942405 (= lt!1030425 (mainMatchTheorem!1246 r!17423 s!11993))))

(declare-fun b!2942406 () Bool)

(declare-fun tp!941561 () Bool)

(declare-fun tp!941565 () Bool)

(assert (=> b!2942406 (= e!1854148 (and tp!941561 tp!941565))))

(declare-fun b!2942407 () Bool)

(declare-fun res!1214413 () Bool)

(assert (=> b!2942407 (=> res!1214413 e!1854145)))

(declare-fun isEmpty!19111 (List!34974) Bool)

(assert (=> b!2942407 (= res!1214413 (isEmpty!19111 s!11993))))

(assert (= (and start!285700 res!1214414) b!2942405))

(assert (= (and b!2942405 (not res!1214410)) b!2942407))

(assert (= (and b!2942407 (not res!1214413)) b!2942400))

(assert (= (and b!2942400 (not res!1214411)) b!2942402))

(assert (= (and b!2942402 (not res!1214412)) b!2942403))

(assert (= (and b!2942403 (not res!1214409)) b!2942399))

(assert (= (and start!285700 ((_ is ElementMatch!9109) r!17423)) b!2942398))

(assert (= (and start!285700 ((_ is Concat!14430) r!17423)) b!2942406))

(assert (= (and start!285700 ((_ is Star!9109) r!17423)) b!2942404))

(assert (= (and start!285700 ((_ is Union!9109) r!17423)) b!2942397))

(assert (= (and start!285700 ((_ is Cons!34850) s!11993)) b!2942401))

(declare-fun m!3326115 () Bool)

(assert (=> b!2942407 m!3326115))

(declare-fun m!3326117 () Bool)

(assert (=> b!2942403 m!3326117))

(declare-fun m!3326119 () Bool)

(assert (=> start!285700 m!3326119))

(declare-fun m!3326121 () Bool)

(assert (=> b!2942400 m!3326121))

(declare-fun m!3326123 () Bool)

(assert (=> b!2942400 m!3326123))

(declare-fun m!3326125 () Bool)

(assert (=> b!2942400 m!3326125))

(declare-fun m!3326127 () Bool)

(assert (=> b!2942402 m!3326127))

(declare-fun m!3326129 () Bool)

(assert (=> b!2942405 m!3326129))

(declare-fun m!3326131 () Bool)

(assert (=> b!2942405 m!3326131))

(declare-fun m!3326133 () Bool)

(assert (=> b!2942405 m!3326133))

(declare-fun m!3326135 () Bool)

(assert (=> b!2942399 m!3326135))

(declare-fun m!3326137 () Bool)

(assert (=> b!2942399 m!3326137))

(declare-fun m!3326139 () Bool)

(assert (=> b!2942399 m!3326139))

(check-sat (not b!2942401) (not b!2942399) (not b!2942402) (not b!2942397) (not b!2942404) (not start!285700) (not b!2942400) (not b!2942406) tp_is_empty!15781 (not b!2942407) (not b!2942405) (not b!2942403))
(check-sat)

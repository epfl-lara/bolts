; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287008 () Bool)

(assert start!287008)

(declare-fun b!2963263 () Bool)

(declare-fun e!1865105 () Bool)

(declare-fun e!1865104 () Bool)

(assert (=> b!2963263 (= e!1865105 (not e!1865104))))

(declare-fun res!1222417 () Bool)

(assert (=> b!2963263 (=> res!1222417 e!1865104)))

(declare-fun lt!1034626 () Bool)

(declare-datatypes ((C!18608 0))(
  ( (C!18609 (val!11340 Int)) )
))
(declare-datatypes ((Regex!9211 0))(
  ( (ElementMatch!9211 (c!485779 C!18608)) (Concat!14532 (regOne!18934 Regex!9211) (regTwo!18934 Regex!9211)) (EmptyExpr!9211) (Star!9211 (reg!9540 Regex!9211)) (EmptyLang!9211) (Union!9211 (regOne!18935 Regex!9211) (regTwo!18935 Regex!9211)) )
))
(declare-fun r!17423 () Regex!9211)

(get-info :version)

(assert (=> b!2963263 (= res!1222417 (or lt!1034626 ((_ is Concat!14532) r!17423) (not ((_ is Union!9211) r!17423))))))

(declare-datatypes ((List!35076 0))(
  ( (Nil!34952) (Cons!34952 (h!40372 C!18608) (t!234141 List!35076)) )
))
(declare-fun s!11993 () List!35076)

(declare-fun matchRSpec!1348 (Regex!9211 List!35076) Bool)

(assert (=> b!2963263 (= lt!1034626 (matchRSpec!1348 r!17423 s!11993))))

(declare-fun matchR!4093 (Regex!9211 List!35076) Bool)

(assert (=> b!2963263 (= lt!1034626 (matchR!4093 r!17423 s!11993))))

(declare-datatypes ((Unit!48801 0))(
  ( (Unit!48802) )
))
(declare-fun lt!1034623 () Unit!48801)

(declare-fun mainMatchTheorem!1348 (Regex!9211 List!35076) Unit!48801)

(assert (=> b!2963263 (= lt!1034623 (mainMatchTheorem!1348 r!17423 s!11993))))

(declare-fun b!2963264 () Bool)

(declare-fun e!1865106 () Bool)

(declare-fun tp!945526 () Bool)

(declare-fun tp!945528 () Bool)

(assert (=> b!2963264 (= e!1865106 (and tp!945526 tp!945528))))

(declare-fun b!2963265 () Bool)

(declare-fun e!1865107 () Bool)

(assert (=> b!2963265 (= e!1865107 true)))

(declare-fun lt!1034624 () Regex!9211)

(assert (=> b!2963265 (= (matchR!4093 (regOne!18935 r!17423) s!11993) (matchR!4093 lt!1034624 s!11993))))

(declare-fun lt!1034622 () Unit!48801)

(declare-fun lemmaSimplifySound!138 (Regex!9211 List!35076) Unit!48801)

(assert (=> b!2963265 (= lt!1034622 (lemmaSimplifySound!138 (regOne!18935 r!17423) s!11993))))

(declare-fun b!2963266 () Bool)

(declare-fun e!1865103 () Bool)

(declare-fun tp_is_empty!15985 () Bool)

(declare-fun tp!945527 () Bool)

(assert (=> b!2963266 (= e!1865103 (and tp_is_empty!15985 tp!945527))))

(declare-fun b!2963267 () Bool)

(declare-fun tp!945529 () Bool)

(assert (=> b!2963267 (= e!1865106 tp!945529)))

(declare-fun b!2963268 () Bool)

(declare-fun res!1222420 () Bool)

(assert (=> b!2963268 (=> res!1222420 e!1865107)))

(declare-fun lt!1034625 () Regex!9211)

(declare-fun isEmptyLang!327 (Regex!9211) Bool)

(assert (=> b!2963268 (= res!1222420 (not (isEmptyLang!327 lt!1034625)))))

(declare-fun res!1222419 () Bool)

(assert (=> start!287008 (=> (not res!1222419) (not e!1865105))))

(declare-fun validRegex!3944 (Regex!9211) Bool)

(assert (=> start!287008 (= res!1222419 (validRegex!3944 r!17423))))

(assert (=> start!287008 e!1865105))

(assert (=> start!287008 e!1865106))

(assert (=> start!287008 e!1865103))

(declare-fun b!2963269 () Bool)

(assert (=> b!2963269 (= e!1865106 tp_is_empty!15985)))

(declare-fun b!2963270 () Bool)

(assert (=> b!2963270 (= e!1865104 e!1865107)))

(declare-fun res!1222418 () Bool)

(assert (=> b!2963270 (=> res!1222418 e!1865107)))

(assert (=> b!2963270 (= res!1222418 (isEmptyLang!327 lt!1034624))))

(declare-fun simplify!214 (Regex!9211) Regex!9211)

(assert (=> b!2963270 (= lt!1034625 (simplify!214 (regTwo!18935 r!17423)))))

(assert (=> b!2963270 (= lt!1034624 (simplify!214 (regOne!18935 r!17423)))))

(declare-fun b!2963271 () Bool)

(declare-fun tp!945525 () Bool)

(declare-fun tp!945524 () Bool)

(assert (=> b!2963271 (= e!1865106 (and tp!945525 tp!945524))))

(assert (= (and start!287008 res!1222419) b!2963263))

(assert (= (and b!2963263 (not res!1222417)) b!2963270))

(assert (= (and b!2963270 (not res!1222418)) b!2963268))

(assert (= (and b!2963268 (not res!1222420)) b!2963265))

(assert (= (and start!287008 ((_ is ElementMatch!9211) r!17423)) b!2963269))

(assert (= (and start!287008 ((_ is Concat!14532) r!17423)) b!2963264))

(assert (= (and start!287008 ((_ is Star!9211) r!17423)) b!2963267))

(assert (= (and start!287008 ((_ is Union!9211) r!17423)) b!2963271))

(assert (= (and start!287008 ((_ is Cons!34952) s!11993)) b!2963266))

(declare-fun m!3335217 () Bool)

(assert (=> b!2963270 m!3335217))

(declare-fun m!3335219 () Bool)

(assert (=> b!2963270 m!3335219))

(declare-fun m!3335221 () Bool)

(assert (=> b!2963270 m!3335221))

(declare-fun m!3335223 () Bool)

(assert (=> b!2963263 m!3335223))

(declare-fun m!3335225 () Bool)

(assert (=> b!2963263 m!3335225))

(declare-fun m!3335227 () Bool)

(assert (=> b!2963263 m!3335227))

(declare-fun m!3335229 () Bool)

(assert (=> start!287008 m!3335229))

(declare-fun m!3335231 () Bool)

(assert (=> b!2963265 m!3335231))

(declare-fun m!3335233 () Bool)

(assert (=> b!2963265 m!3335233))

(declare-fun m!3335235 () Bool)

(assert (=> b!2963265 m!3335235))

(declare-fun m!3335237 () Bool)

(assert (=> b!2963268 m!3335237))

(check-sat (not b!2963267) (not b!2963265) (not b!2963268) (not b!2963270) (not b!2963266) (not b!2963263) (not b!2963271) (not b!2963264) tp_is_empty!15985 (not start!287008))
(check-sat)

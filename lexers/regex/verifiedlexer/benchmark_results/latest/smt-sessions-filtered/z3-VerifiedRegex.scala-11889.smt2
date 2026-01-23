; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667190 () Bool)

(assert start!667190)

(declare-fun b!6951334 () Bool)

(assert (=> b!6951334 true))

(assert (=> b!6951334 true))

(declare-fun bs!1857715 () Bool)

(declare-fun b!6951337 () Bool)

(assert (= bs!1857715 (and b!6951337 b!6951334)))

(declare-fun lambda!396442 () Int)

(declare-fun lambda!396441 () Int)

(assert (=> bs!1857715 (not (= lambda!396442 lambda!396441))))

(assert (=> b!6951337 true))

(assert (=> b!6951337 true))

(declare-fun b!6951328 () Bool)

(declare-fun res!2836036 () Bool)

(declare-fun e!4180631 () Bool)

(assert (=> b!6951328 (=> (not res!2836036) (not e!4180631))))

(declare-datatypes ((C!34320 0))(
  ( (C!34321 (val!26862 Int)) )
))
(declare-datatypes ((Regex!17025 0))(
  ( (ElementMatch!17025 (c!1289349 C!34320)) (Concat!25870 (regOne!34562 Regex!17025) (regTwo!34562 Regex!17025)) (EmptyExpr!17025) (Star!17025 (reg!17354 Regex!17025)) (EmptyLang!17025) (Union!17025 (regOne!34563 Regex!17025) (regTwo!34563 Regex!17025)) )
))
(declare-fun rInner!765 () Regex!17025)

(declare-fun nullable!6838 (Regex!17025) Bool)

(assert (=> b!6951328 (= res!2836036 (not (nullable!6838 rInner!765)))))

(declare-fun res!2836040 () Bool)

(assert (=> start!667190 (=> (not res!2836040) (not e!4180631))))

(declare-fun validRegex!8731 (Regex!17025) Bool)

(assert (=> start!667190 (= res!2836040 (validRegex!8731 rInner!765))))

(assert (=> start!667190 e!4180631))

(declare-fun e!4180630 () Bool)

(assert (=> start!667190 e!4180630))

(declare-fun e!4180632 () Bool)

(assert (=> start!667190 e!4180632))

(declare-fun b!6951329 () Bool)

(assert (=> b!6951329 (= e!4180631 (not true))))

(declare-datatypes ((List!66778 0))(
  ( (Nil!66654) (Cons!66654 (h!73102 C!34320) (t!380521 List!66778)) )
))
(declare-datatypes ((tuple2!67756 0))(
  ( (tuple2!67757 (_1!37181 List!66778) (_2!37181 List!66778)) )
))
(declare-fun lt!2477926 () tuple2!67756)

(declare-fun matchR!9142 (Regex!17025 List!66778) Bool)

(declare-fun matchRSpec!4058 (Regex!17025 List!66778) Bool)

(assert (=> b!6951329 (= (matchR!9142 rInner!765 (_1!37181 lt!2477926)) (matchRSpec!4058 rInner!765 (_1!37181 lt!2477926)))))

(declare-datatypes ((Unit!160738 0))(
  ( (Unit!160739) )
))
(declare-fun lt!2477927 () Unit!160738)

(declare-fun mainMatchTheorem!4054 (Regex!17025 List!66778) Unit!160738)

(assert (=> b!6951329 (= lt!2477927 (mainMatchTheorem!4054 rInner!765 (_1!37181 lt!2477926)))))

(declare-fun pickWitness!356 (Int) tuple2!67756)

(assert (=> b!6951329 (= lt!2477926 (pickWitness!356 lambda!396442))))

(declare-fun b!6951330 () Bool)

(declare-fun res!2836039 () Bool)

(assert (=> b!6951330 (=> (not res!2836039) (not e!4180631))))

(declare-fun Exists!4021 (Int) Bool)

(assert (=> b!6951330 (= res!2836039 (not (Exists!4021 lambda!396441)))))

(declare-fun b!6951331 () Bool)

(declare-fun tp_is_empty!43275 () Bool)

(declare-fun tp!1916292 () Bool)

(assert (=> b!6951331 (= e!4180632 (and tp_is_empty!43275 tp!1916292))))

(declare-fun b!6951332 () Bool)

(declare-fun tp!1916294 () Bool)

(assert (=> b!6951332 (= e!4180630 tp!1916294)))

(declare-fun b!6951333 () Bool)

(declare-fun tp!1916295 () Bool)

(declare-fun tp!1916293 () Bool)

(assert (=> b!6951333 (= e!4180630 (and tp!1916295 tp!1916293))))

(declare-fun res!2836037 () Bool)

(assert (=> b!6951334 (=> (not res!2836037) (not e!4180631))))

(assert (=> b!6951334 (= res!2836037 (not (Exists!4021 lambda!396441)))))

(declare-fun b!6951335 () Bool)

(declare-fun tp!1916296 () Bool)

(declare-fun tp!1916297 () Bool)

(assert (=> b!6951335 (= e!4180630 (and tp!1916296 tp!1916297))))

(declare-fun b!6951336 () Bool)

(assert (=> b!6951336 (= e!4180630 tp_is_empty!43275)))

(declare-fun res!2836038 () Bool)

(assert (=> b!6951337 (=> (not res!2836038) (not e!4180631))))

(assert (=> b!6951337 (= res!2836038 (Exists!4021 lambda!396442))))

(assert (= (and start!667190 res!2836040) b!6951328))

(assert (= (and b!6951328 res!2836036) b!6951334))

(assert (= (and b!6951334 res!2836037) b!6951330))

(assert (= (and b!6951330 res!2836039) b!6951337))

(assert (= (and b!6951337 res!2836038) b!6951329))

(get-info :version)

(assert (= (and start!667190 ((_ is ElementMatch!17025) rInner!765)) b!6951336))

(assert (= (and start!667190 ((_ is Concat!25870) rInner!765)) b!6951335))

(assert (= (and start!667190 ((_ is Star!17025) rInner!765)) b!6951332))

(assert (= (and start!667190 ((_ is Union!17025) rInner!765)) b!6951333))

(declare-fun s!10388 () List!66778)

(assert (= (and start!667190 ((_ is Cons!66654) s!10388)) b!6951331))

(declare-fun m!7652396 () Bool)

(assert (=> b!6951328 m!7652396))

(declare-fun m!7652398 () Bool)

(assert (=> b!6951330 m!7652398))

(declare-fun m!7652400 () Bool)

(assert (=> start!667190 m!7652400))

(assert (=> b!6951334 m!7652398))

(declare-fun m!7652402 () Bool)

(assert (=> b!6951329 m!7652402))

(declare-fun m!7652404 () Bool)

(assert (=> b!6951329 m!7652404))

(declare-fun m!7652406 () Bool)

(assert (=> b!6951329 m!7652406))

(declare-fun m!7652408 () Bool)

(assert (=> b!6951329 m!7652408))

(declare-fun m!7652410 () Bool)

(assert (=> b!6951337 m!7652410))

(check-sat (not start!667190) (not b!6951333) (not b!6951335) (not b!6951328) (not b!6951332) (not b!6951337) (not b!6951331) (not b!6951330) (not b!6951329) tp_is_empty!43275 (not b!6951334))
(check-sat)

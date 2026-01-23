; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252688 () Bool)

(assert start!252688)

(declare-fun b!2600360 () Bool)

(assert (=> b!2600360 true))

(declare-fun res!1095308 () Bool)

(declare-fun e!1641413 () Bool)

(assert (=> b!2600360 (=> (not res!1095308) (not e!1641413))))

(declare-datatypes ((B!2389 0))(
  ( (B!2390 (val!9662 Int)) )
))
(declare-datatypes ((List!30095 0))(
  ( (Nil!29995) (Cons!29995 (h!35415 B!2389) (t!213144 List!30095)) )
))
(declare-fun l!3766 () List!30095)

(declare-fun lambda!97250 () Int)

(declare-fun forall!6174 (List!30095 Int) Bool)

(assert (=> b!2600360 (= res!1095308 (forall!6174 l!3766 lambda!97250))))

(declare-fun b!2600361 () Bool)

(declare-fun refL!9 () List!30095)

(get-info :version)

(assert (=> b!2600361 (= e!1641413 (and ((_ is Nil!29995) l!3766) (= refL!9 Nil!29995)))))

(declare-fun b!2600362 () Bool)

(declare-fun res!1095309 () Bool)

(assert (=> b!2600362 (=> (not res!1095309) (not e!1641413))))

(declare-fun refHd!9 () B!2389)

(declare-fun contains!5539 (List!30095 B!2389) Bool)

(assert (=> b!2600362 (= res!1095309 (not (contains!5539 l!3766 refHd!9)))))

(declare-fun res!1095311 () Bool)

(assert (=> start!252688 (=> (not res!1095311) (not e!1641413))))

(declare-fun isEmpty!17148 (List!30095) Bool)

(assert (=> start!252688 (= res!1095311 (not (isEmpty!17148 refL!9)))))

(assert (=> start!252688 e!1641413))

(declare-fun e!1641411 () Bool)

(assert (=> start!252688 e!1641411))

(declare-fun e!1641412 () Bool)

(assert (=> start!252688 e!1641412))

(declare-fun tp_is_empty!13669 () Bool)

(assert (=> start!252688 tp_is_empty!13669))

(declare-fun b!2600363 () Bool)

(declare-fun tp!823860 () Bool)

(assert (=> b!2600363 (= e!1641411 (and tp_is_empty!13669 tp!823860))))

(declare-fun b!2600364 () Bool)

(declare-fun res!1095310 () Bool)

(assert (=> b!2600364 (=> (not res!1095310) (not e!1641413))))

(declare-fun head!5916 (List!30095) B!2389)

(assert (=> b!2600364 (= res!1095310 (= refHd!9 (head!5916 refL!9)))))

(declare-fun b!2600365 () Bool)

(declare-fun tp!823859 () Bool)

(assert (=> b!2600365 (= e!1641412 (and tp_is_empty!13669 tp!823859))))

(assert (= (and start!252688 res!1095311) b!2600360))

(assert (= (and b!2600360 res!1095308) b!2600364))

(assert (= (and b!2600364 res!1095310) b!2600362))

(assert (= (and b!2600362 res!1095309) b!2600361))

(assert (= (and start!252688 ((_ is Cons!29995) refL!9)) b!2600363))

(assert (= (and start!252688 ((_ is Cons!29995) l!3766)) b!2600365))

(declare-fun m!2935757 () Bool)

(assert (=> b!2600360 m!2935757))

(declare-fun m!2935759 () Bool)

(assert (=> b!2600362 m!2935759))

(declare-fun m!2935761 () Bool)

(assert (=> start!252688 m!2935761))

(declare-fun m!2935763 () Bool)

(assert (=> b!2600364 m!2935763))

(check-sat (not b!2600362) (not start!252688) (not b!2600360) (not b!2600365) (not b!2600363) tp_is_empty!13669 (not b!2600364))
(check-sat)
(get-model)

(declare-fun d!736695 () Bool)

(assert (=> d!736695 (= (isEmpty!17148 refL!9) ((_ is Nil!29995) refL!9))))

(assert (=> start!252688 d!736695))

(declare-fun d!736697 () Bool)

(declare-fun lt!915275 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4253 (List!30095) (InoxSet B!2389))

(assert (=> d!736697 (= lt!915275 (select (content!4253 l!3766) refHd!9))))

(declare-fun e!1641429 () Bool)

(assert (=> d!736697 (= lt!915275 e!1641429)))

(declare-fun res!1095327 () Bool)

(assert (=> d!736697 (=> (not res!1095327) (not e!1641429))))

(assert (=> d!736697 (= res!1095327 ((_ is Cons!29995) l!3766))))

(assert (=> d!736697 (= (contains!5539 l!3766 refHd!9) lt!915275)))

(declare-fun b!2600382 () Bool)

(declare-fun e!1641428 () Bool)

(assert (=> b!2600382 (= e!1641429 e!1641428)))

(declare-fun res!1095326 () Bool)

(assert (=> b!2600382 (=> res!1095326 e!1641428)))

(assert (=> b!2600382 (= res!1095326 (= (h!35415 l!3766) refHd!9))))

(declare-fun b!2600383 () Bool)

(assert (=> b!2600383 (= e!1641428 (contains!5539 (t!213144 l!3766) refHd!9))))

(assert (= (and d!736697 res!1095327) b!2600382))

(assert (= (and b!2600382 (not res!1095326)) b!2600383))

(declare-fun m!2935771 () Bool)

(assert (=> d!736697 m!2935771))

(declare-fun m!2935773 () Bool)

(assert (=> d!736697 m!2935773))

(declare-fun m!2935775 () Bool)

(assert (=> b!2600383 m!2935775))

(assert (=> b!2600362 d!736697))

(declare-fun d!736705 () Bool)

(declare-fun res!1095334 () Bool)

(declare-fun e!1641440 () Bool)

(assert (=> d!736705 (=> res!1095334 e!1641440)))

(assert (=> d!736705 (= res!1095334 ((_ is Nil!29995) l!3766))))

(assert (=> d!736705 (= (forall!6174 l!3766 lambda!97250) e!1641440)))

(declare-fun b!2600396 () Bool)

(declare-fun e!1641441 () Bool)

(assert (=> b!2600396 (= e!1641440 e!1641441)))

(declare-fun res!1095335 () Bool)

(assert (=> b!2600396 (=> (not res!1095335) (not e!1641441))))

(declare-fun dynLambda!12683 (Int B!2389) Bool)

(assert (=> b!2600396 (= res!1095335 (dynLambda!12683 lambda!97250 (h!35415 l!3766)))))

(declare-fun b!2600397 () Bool)

(assert (=> b!2600397 (= e!1641441 (forall!6174 (t!213144 l!3766) lambda!97250))))

(assert (= (and d!736705 (not res!1095334)) b!2600396))

(assert (= (and b!2600396 res!1095335) b!2600397))

(declare-fun b_lambda!77815 () Bool)

(assert (=> (not b_lambda!77815) (not b!2600396)))

(declare-fun m!2935783 () Bool)

(assert (=> b!2600396 m!2935783))

(declare-fun m!2935785 () Bool)

(assert (=> b!2600397 m!2935785))

(assert (=> b!2600360 d!736705))

(declare-fun d!736709 () Bool)

(assert (=> d!736709 (= (head!5916 refL!9) (h!35415 refL!9))))

(assert (=> b!2600364 d!736709))

(declare-fun b!2600402 () Bool)

(declare-fun e!1641444 () Bool)

(declare-fun tp!823867 () Bool)

(assert (=> b!2600402 (= e!1641444 (and tp_is_empty!13669 tp!823867))))

(assert (=> b!2600365 (= tp!823859 e!1641444)))

(assert (= (and b!2600365 ((_ is Cons!29995) (t!213144 l!3766))) b!2600402))

(declare-fun b!2600403 () Bool)

(declare-fun e!1641445 () Bool)

(declare-fun tp!823868 () Bool)

(assert (=> b!2600403 (= e!1641445 (and tp_is_empty!13669 tp!823868))))

(assert (=> b!2600363 (= tp!823860 e!1641445)))

(assert (= (and b!2600363 ((_ is Cons!29995) (t!213144 refL!9))) b!2600403))

(declare-fun b_lambda!77817 () Bool)

(assert (= b_lambda!77815 (or b!2600360 b_lambda!77817)))

(declare-fun bs!473162 () Bool)

(declare-fun d!736711 () Bool)

(assert (= bs!473162 (and d!736711 b!2600360)))

(assert (=> bs!473162 (= (dynLambda!12683 lambda!97250 (h!35415 l!3766)) (contains!5539 refL!9 (h!35415 l!3766)))))

(declare-fun m!2935787 () Bool)

(assert (=> bs!473162 m!2935787))

(assert (=> b!2600396 d!736711))

(check-sat (not b_lambda!77817) (not b!2600403) (not bs!473162) (not b!2600397) (not b!2600383) tp_is_empty!13669 (not b!2600402) (not d!736697))
(check-sat)

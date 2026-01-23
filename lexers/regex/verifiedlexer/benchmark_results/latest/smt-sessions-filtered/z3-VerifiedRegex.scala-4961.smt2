; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252256 () Bool)

(assert start!252256)

(declare-fun res!1093966 () Bool)

(declare-fun e!1639983 () Bool)

(assert (=> start!252256 (=> (not res!1093966) (not e!1639983))))

(declare-datatypes ((B!2265 0))(
  ( (B!2266 (val!9600 Int)) )
))
(declare-datatypes ((List!30033 0))(
  ( (Nil!29933) (Cons!29933 (h!35353 B!2265) (t!213046 List!30033)) )
))
(declare-fun l!3796 () List!30033)

(declare-fun noDuplicate!481 (List!30033) Bool)

(assert (=> start!252256 (= res!1093966 (noDuplicate!481 l!3796))))

(assert (=> start!252256 e!1639983))

(declare-fun e!1639982 () Bool)

(assert (=> start!252256 e!1639982))

(declare-fun tp_is_empty!13545 () Bool)

(assert (=> start!252256 tp_is_empty!13545))

(declare-fun b!2598261 () Bool)

(declare-fun res!1093967 () Bool)

(assert (=> b!2598261 (=> (not res!1093967) (not e!1639983))))

(declare-fun e!9468 () B!2265)

(declare-fun contains!5481 (List!30033 B!2265) Bool)

(assert (=> b!2598261 (= res!1093967 (contains!5481 l!3796 e!9468))))

(declare-fun b!2598262 () Bool)

(declare-fun ListPrimitiveSize!187 (List!30033) Int)

(assert (=> b!2598262 (= e!1639983 (< (ListPrimitiveSize!187 l!3796) 0))))

(declare-fun b!2598263 () Bool)

(declare-fun tp!823474 () Bool)

(assert (=> b!2598263 (= e!1639982 (and tp_is_empty!13545 tp!823474))))

(assert (= (and start!252256 res!1093966) b!2598261))

(assert (= (and b!2598261 res!1093967) b!2598262))

(get-info :version)

(assert (= (and start!252256 ((_ is Cons!29933) l!3796)) b!2598263))

(declare-fun m!2934403 () Bool)

(assert (=> start!252256 m!2934403))

(declare-fun m!2934405 () Bool)

(assert (=> b!2598261 m!2934405))

(declare-fun m!2934407 () Bool)

(assert (=> b!2598262 m!2934407))

(check-sat (not start!252256) (not b!2598263) (not b!2598261) (not b!2598262) tp_is_empty!13545)
(check-sat)
(get-model)

(declare-fun d!736244 () Bool)

(declare-fun lt!914923 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4217 (List!30033) (InoxSet B!2265))

(assert (=> d!736244 (= lt!914923 (select (content!4217 l!3796) e!9468))))

(declare-fun e!1639992 () Bool)

(assert (=> d!736244 (= lt!914923 e!1639992)))

(declare-fun res!1093973 () Bool)

(assert (=> d!736244 (=> (not res!1093973) (not e!1639992))))

(assert (=> d!736244 (= res!1093973 ((_ is Cons!29933) l!3796))))

(assert (=> d!736244 (= (contains!5481 l!3796 e!9468) lt!914923)))

(declare-fun b!2598274 () Bool)

(declare-fun e!1639991 () Bool)

(assert (=> b!2598274 (= e!1639992 e!1639991)))

(declare-fun res!1093972 () Bool)

(assert (=> b!2598274 (=> res!1093972 e!1639991)))

(assert (=> b!2598274 (= res!1093972 (= (h!35353 l!3796) e!9468))))

(declare-fun b!2598275 () Bool)

(assert (=> b!2598275 (= e!1639991 (contains!5481 (t!213046 l!3796) e!9468))))

(assert (= (and d!736244 res!1093973) b!2598274))

(assert (= (and b!2598274 (not res!1093972)) b!2598275))

(declare-fun m!2934411 () Bool)

(assert (=> d!736244 m!2934411))

(declare-fun m!2934413 () Bool)

(assert (=> d!736244 m!2934413))

(declare-fun m!2934415 () Bool)

(assert (=> b!2598275 m!2934415))

(assert (=> b!2598261 d!736244))

(declare-fun d!736248 () Bool)

(declare-fun lt!914926 () Int)

(assert (=> d!736248 (>= lt!914926 0)))

(declare-fun e!1639999 () Int)

(assert (=> d!736248 (= lt!914926 e!1639999)))

(declare-fun c!418504 () Bool)

(assert (=> d!736248 (= c!418504 ((_ is Nil!29933) l!3796))))

(assert (=> d!736248 (= (ListPrimitiveSize!187 l!3796) lt!914926)))

(declare-fun b!2598284 () Bool)

(assert (=> b!2598284 (= e!1639999 0)))

(declare-fun b!2598285 () Bool)

(assert (=> b!2598285 (= e!1639999 (+ 1 (ListPrimitiveSize!187 (t!213046 l!3796))))))

(assert (= (and d!736248 c!418504) b!2598284))

(assert (= (and d!736248 (not c!418504)) b!2598285))

(declare-fun m!2934417 () Bool)

(assert (=> b!2598285 m!2934417))

(assert (=> b!2598262 d!736248))

(declare-fun d!736250 () Bool)

(declare-fun res!1093984 () Bool)

(declare-fun e!1640006 () Bool)

(assert (=> d!736250 (=> res!1093984 e!1640006)))

(assert (=> d!736250 (= res!1093984 ((_ is Nil!29933) l!3796))))

(assert (=> d!736250 (= (noDuplicate!481 l!3796) e!1640006)))

(declare-fun b!2598292 () Bool)

(declare-fun e!1640007 () Bool)

(assert (=> b!2598292 (= e!1640006 e!1640007)))

(declare-fun res!1093985 () Bool)

(assert (=> b!2598292 (=> (not res!1093985) (not e!1640007))))

(assert (=> b!2598292 (= res!1093985 (not (contains!5481 (t!213046 l!3796) (h!35353 l!3796))))))

(declare-fun b!2598293 () Bool)

(assert (=> b!2598293 (= e!1640007 (noDuplicate!481 (t!213046 l!3796)))))

(assert (= (and d!736250 (not res!1093984)) b!2598292))

(assert (= (and b!2598292 res!1093985) b!2598293))

(declare-fun m!2934419 () Bool)

(assert (=> b!2598292 m!2934419))

(declare-fun m!2934421 () Bool)

(assert (=> b!2598293 m!2934421))

(assert (=> start!252256 d!736250))

(declare-fun b!2598298 () Bool)

(declare-fun e!1640010 () Bool)

(declare-fun tp!823477 () Bool)

(assert (=> b!2598298 (= e!1640010 (and tp_is_empty!13545 tp!823477))))

(assert (=> b!2598263 (= tp!823474 e!1640010)))

(assert (= (and b!2598263 ((_ is Cons!29933) (t!213046 l!3796))) b!2598298))

(check-sat (not b!2598275) (not d!736244) (not b!2598298) (not b!2598285) (not b!2598292) (not b!2598293) tp_is_empty!13545)
(check-sat)

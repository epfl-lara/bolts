; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504586 () Bool)

(assert start!504586)

(declare-fun b!4845262 () Bool)

(declare-fun e!3028331 () Bool)

(declare-datatypes ((K!17232 0))(
  ( (K!17233 (val!22091 Int)) )
))
(declare-datatypes ((V!17478 0))(
  ( (V!17479 (val!22092 Int)) )
))
(declare-datatypes ((tuple2!59054 0))(
  ( (tuple2!59055 (_1!32821 K!17232) (_2!32821 V!17478)) )
))
(declare-datatypes ((List!55584 0))(
  ( (Nil!55460) (Cons!55460 (h!61897 tuple2!59054) (t!363080 List!55584)) )
))
(declare-datatypes ((tuple2!59056 0))(
  ( (tuple2!59057 (_1!32822 (_ BitVec 64)) (_2!32822 List!55584)) )
))
(declare-datatypes ((List!55585 0))(
  ( (Nil!55461) (Cons!55461 (h!61898 tuple2!59056) (t!363081 List!55585)) )
))
(declare-fun l!11108 () List!55585)

(declare-fun k!1656 () K!17232)

(declare-datatypes ((Option!13627 0))(
  ( (None!13626) (Some!13626 (v!49372 tuple2!59054)) )
))
(declare-fun isDefined!10719 (Option!13627) Bool)

(declare-fun getPair!1057 (List!55584 K!17232) Option!13627)

(assert (=> b!4845262 (= e!3028331 (not (isDefined!10719 (getPair!1057 (_2!32822 (h!61898 l!11108)) k!1656))))))

(declare-fun b!4845263 () Bool)

(declare-fun res!2066668 () Bool)

(assert (=> b!4845263 (=> (not res!2066668) (not e!3028331))))

(declare-fun containsKey!4638 (List!55584 K!17232) Bool)

(assert (=> b!4845263 (= res!2066668 (containsKey!4638 (_2!32822 (h!61898 l!11108)) k!1656))))

(declare-fun b!4845265 () Bool)

(declare-fun res!2066667 () Bool)

(assert (=> b!4845265 (=> (not res!2066667) (not e!3028331))))

(assert (=> b!4845265 (= res!2066667 (is-Cons!55461 l!11108))))

(declare-fun b!4845266 () Bool)

(declare-fun e!3028332 () Bool)

(declare-fun tp!1364220 () Bool)

(declare-fun tp!1364219 () Bool)

(assert (=> b!4845266 (= e!3028332 (and tp!1364220 tp!1364219))))

(declare-fun res!2066669 () Bool)

(assert (=> start!504586 (=> (not res!2066669) (not e!3028331))))

(declare-fun containsKeyBiggerList!749 (List!55585 K!17232) Bool)

(assert (=> start!504586 (= res!2066669 (containsKeyBiggerList!749 l!11108 k!1656))))

(assert (=> start!504586 e!3028331))

(assert (=> start!504586 e!3028332))

(declare-fun tp_is_empty!35053 () Bool)

(assert (=> start!504586 tp_is_empty!35053))

(declare-fun b!4845264 () Bool)

(declare-fun res!2066666 () Bool)

(assert (=> b!4845264 (=> (not res!2066666) (not e!3028331))))

(declare-fun lambda!242215 () Int)

(declare-fun forall!12904 (List!55585 Int) Bool)

(assert (=> b!4845264 (= res!2066666 (forall!12904 l!11108 lambda!242215))))

(assert (= (and start!504586 res!2066669) b!4845264))

(assert (= (and b!4845264 res!2066666) b!4845265))

(assert (= (and b!4845265 res!2066667) b!4845263))

(assert (= (and b!4845263 res!2066668) b!4845262))

(assert (= (and start!504586 (is-Cons!55461 l!11108)) b!4845266))

(declare-fun m!5843632 () Bool)

(assert (=> b!4845262 m!5843632))

(assert (=> b!4845262 m!5843632))

(declare-fun m!5843634 () Bool)

(assert (=> b!4845262 m!5843634))

(declare-fun m!5843636 () Bool)

(assert (=> b!4845263 m!5843636))

(declare-fun m!5843638 () Bool)

(assert (=> start!504586 m!5843638))

(declare-fun m!5843640 () Bool)

(assert (=> b!4845264 m!5843640))

(push 1)

(assert tp_is_empty!35053)

(assert (not b!4845262))

(assert (not b!4845266))

(assert (not start!504586))

(assert (not b!4845264))

(assert (not b!4845263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554448 () Bool)

(declare-fun isEmpty!29709 (Option!13627) Bool)

(assert (=> d!1554448 (= (isDefined!10719 (getPair!1057 (_2!32822 (h!61898 l!11108)) k!1656)) (not (isEmpty!29709 (getPair!1057 (_2!32822 (h!61898 l!11108)) k!1656))))))

(declare-fun bs!1172259 () Bool)

(assert (= bs!1172259 d!1554448))

(assert (=> bs!1172259 m!5843632))

(declare-fun m!5843652 () Bool)

(assert (=> bs!1172259 m!5843652))

(assert (=> b!4845262 d!1554448))

(declare-fun d!1554450 () Bool)

(declare-fun e!3028351 () Bool)

(assert (=> d!1554450 e!3028351))

(declare-fun res!2066691 () Bool)

(assert (=> d!1554450 (=> res!2066691 e!3028351)))

(declare-fun e!3028350 () Bool)

(assert (=> d!1554450 (= res!2066691 e!3028350)))

(declare-fun res!2066690 () Bool)

(assert (=> d!1554450 (=> (not res!2066690) (not e!3028350))))

(declare-fun lt!1987912 () Option!13627)

(assert (=> d!1554450 (= res!2066690 (isEmpty!29709 lt!1987912))))

(declare-fun e!3028352 () Option!13627)

(assert (=> d!1554450 (= lt!1987912 e!3028352)))

(declare-fun c!824951 () Bool)

(assert (=> d!1554450 (= c!824951 (and (is-Cons!55460 (_2!32822 (h!61898 l!11108))) (= (_1!32821 (h!61897 (_2!32822 (h!61898 l!11108)))) k!1656)))))

(declare-fun noDuplicateKeys!2565 (List!55584) Bool)

(assert (=> d!1554450 (noDuplicateKeys!2565 (_2!32822 (h!61898 l!11108)))))

(assert (=> d!1554450 (= (getPair!1057 (_2!32822 (h!61898 l!11108)) k!1656) lt!1987912)))

(declare-fun b!4845298 () Bool)

(declare-fun e!3028349 () Bool)

(assert (=> b!4845298 (= e!3028351 e!3028349)))

(declare-fun res!2066692 () Bool)

(assert (=> b!4845298 (=> (not res!2066692) (not e!3028349))))

(assert (=> b!4845298 (= res!2066692 (isDefined!10719 lt!1987912))))

(declare-fun b!4845299 () Bool)

(declare-fun e!3028353 () Option!13627)

(assert (=> b!4845299 (= e!3028353 (getPair!1057 (t!363080 (_2!32822 (h!61898 l!11108))) k!1656))))

(declare-fun b!4845300 () Bool)

(assert (=> b!4845300 (= e!3028353 None!13626)))

(declare-fun b!4845301 () Bool)

(declare-fun contains!19138 (List!55584 tuple2!59054) Bool)

(declare-fun get!18985 (Option!13627) tuple2!59054)

(assert (=> b!4845301 (= e!3028349 (contains!19138 (_2!32822 (h!61898 l!11108)) (get!18985 lt!1987912)))))

(declare-fun b!4845302 () Bool)

(assert (=> b!4845302 (= e!3028352 e!3028353)))

(declare-fun c!824952 () Bool)

(assert (=> b!4845302 (= c!824952 (is-Cons!55460 (_2!32822 (h!61898 l!11108))))))

(declare-fun b!4845303 () Bool)

(assert (=> b!4845303 (= e!3028350 (not (containsKey!4638 (_2!32822 (h!61898 l!11108)) k!1656)))))

(declare-fun b!4845304 () Bool)

(declare-fun res!2066693 () Bool)

(assert (=> b!4845304 (=> (not res!2066693) (not e!3028349))))

(assert (=> b!4845304 (= res!2066693 (= (_1!32821 (get!18985 lt!1987912)) k!1656))))

(declare-fun b!4845305 () Bool)

(assert (=> b!4845305 (= e!3028352 (Some!13626 (h!61897 (_2!32822 (h!61898 l!11108)))))))

(assert (= (and d!1554450 c!824951) b!4845305))

(assert (= (and d!1554450 (not c!824951)) b!4845302))

(assert (= (and b!4845302 c!824952) b!4845299))

(assert (= (and b!4845302 (not c!824952)) b!4845300))

(assert (= (and d!1554450 res!2066690) b!4845303))

(assert (= (and d!1554450 (not res!2066691)) b!4845298))

(assert (= (and b!4845298 res!2066692) b!4845304))

(assert (= (and b!4845304 res!2066693) b!4845301))

(declare-fun m!5843656 () Bool)

(assert (=> b!4845299 m!5843656))

(declare-fun m!5843658 () Bool)

(assert (=> b!4845298 m!5843658))

(declare-fun m!5843660 () Bool)

(assert (=> b!4845304 m!5843660))

(assert (=> b!4845303 m!5843636))

(declare-fun m!5843662 () Bool)

(assert (=> d!1554450 m!5843662))

(declare-fun m!5843664 () Bool)

(assert (=> d!1554450 m!5843664))

(assert (=> b!4845301 m!5843660))

(assert (=> b!4845301 m!5843660))

(declare-fun m!5843666 () Bool)

(assert (=> b!4845301 m!5843666))

(assert (=> b!4845262 d!1554450))

(declare-fun d!1554456 () Bool)

(declare-fun res!2066698 () Bool)

(declare-fun e!3028358 () Bool)

(assert (=> d!1554456 (=> res!2066698 e!3028358)))

(assert (=> d!1554456 (= res!2066698 (and (is-Cons!55460 (_2!32822 (h!61898 l!11108))) (= (_1!32821 (h!61897 (_2!32822 (h!61898 l!11108)))) k!1656)))))

(assert (=> d!1554456 (= (containsKey!4638 (_2!32822 (h!61898 l!11108)) k!1656) e!3028358)))

(declare-fun b!4845310 () Bool)

(declare-fun e!3028359 () Bool)

(assert (=> b!4845310 (= e!3028358 e!3028359)))

(declare-fun res!2066699 () Bool)

(assert (=> b!4845310 (=> (not res!2066699) (not e!3028359))))

(assert (=> b!4845310 (= res!2066699 (is-Cons!55460 (_2!32822 (h!61898 l!11108))))))

(declare-fun b!4845311 () Bool)

(assert (=> b!4845311 (= e!3028359 (containsKey!4638 (t!363080 (_2!32822 (h!61898 l!11108))) k!1656))))

(assert (= (and d!1554456 (not res!2066698)) b!4845310))

(assert (= (and b!4845310 res!2066699) b!4845311))

(declare-fun m!5843668 () Bool)

(assert (=> b!4845311 m!5843668))

(assert (=> b!4845263 d!1554456))

(declare-fun d!1554458 () Bool)

(declare-fun res!2066708 () Bool)

(declare-fun e!3028368 () Bool)

(assert (=> d!1554458 (=> res!2066708 e!3028368)))

(declare-fun e!3028367 () Bool)

(assert (=> d!1554458 (= res!2066708 e!3028367)))

(declare-fun res!2066707 () Bool)

(assert (=> d!1554458 (=> (not res!2066707) (not e!3028367))))

(assert (=> d!1554458 (= res!2066707 (is-Cons!55461 l!11108))))

(assert (=> d!1554458 (= (containsKeyBiggerList!749 l!11108 k!1656) e!3028368)))

(declare-fun b!4845318 () Bool)

(assert (=> b!4845318 (= e!3028367 (containsKey!4638 (_2!32822 (h!61898 l!11108)) k!1656))))

(declare-fun b!4845319 () Bool)

(declare-fun e!3028366 () Bool)

(assert (=> b!4845319 (= e!3028368 e!3028366)))

(declare-fun res!2066706 () Bool)

(assert (=> b!4845319 (=> (not res!2066706) (not e!3028366))))

(assert (=> b!4845319 (= res!2066706 (is-Cons!55461 l!11108))))

(declare-fun b!4845320 () Bool)

(assert (=> b!4845320 (= e!3028366 (containsKeyBiggerList!749 (t!363081 l!11108) k!1656))))

(assert (= (and d!1554458 res!2066707) b!4845318))

(assert (= (and d!1554458 (not res!2066708)) b!4845319))

(assert (= (and b!4845319 res!2066706) b!4845320))

(assert (=> b!4845318 m!5843636))

(declare-fun m!5843670 () Bool)

(assert (=> b!4845320 m!5843670))

(assert (=> start!504586 d!1554458))

(declare-fun d!1554460 () Bool)

(declare-fun res!2066713 () Bool)

(declare-fun e!3028373 () Bool)

(assert (=> d!1554460 (=> res!2066713 e!3028373)))

(assert (=> d!1554460 (= res!2066713 (is-Nil!55461 l!11108))))

(assert (=> d!1554460 (= (forall!12904 l!11108 lambda!242215) e!3028373)))

(declare-fun b!4845327 () Bool)

(declare-fun e!3028374 () Bool)

(assert (=> b!4845327 (= e!3028373 e!3028374)))

(declare-fun res!2066714 () Bool)

(assert (=> b!4845327 (=> (not res!2066714) (not e!3028374))))

(declare-fun dynLambda!22330 (Int tuple2!59056) Bool)

(assert (=> b!4845327 (= res!2066714 (dynLambda!22330 lambda!242215 (h!61898 l!11108)))))

(declare-fun b!4845328 () Bool)

(assert (=> b!4845328 (= e!3028374 (forall!12904 (t!363081 l!11108) lambda!242215))))

(assert (= (and d!1554460 (not res!2066713)) b!4845327))

(assert (= (and b!4845327 res!2066714) b!4845328))

(declare-fun b_lambda!192283 () Bool)

(assert (=> (not b_lambda!192283) (not b!4845327)))

(declare-fun m!5843672 () Bool)

(assert (=> b!4845327 m!5843672))

(declare-fun m!5843674 () Bool)

(assert (=> b!4845328 m!5843674))

(assert (=> b!4845264 d!1554460))

(declare-fun tp_is_empty!35057 () Bool)

(declare-fun e!3028381 () Bool)

(declare-fun tp!1364229 () Bool)

(declare-fun b!4845339 () Bool)

(assert (=> b!4845339 (= e!3028381 (and tp_is_empty!35053 tp_is_empty!35057 tp!1364229))))

(assert (=> b!4845266 (= tp!1364220 e!3028381)))

(assert (= (and b!4845266 (is-Cons!55460 (_2!32822 (h!61898 l!11108)))) b!4845339))

(declare-fun b!4845344 () Bool)

(declare-fun e!3028384 () Bool)

(declare-fun tp!1364234 () Bool)

(declare-fun tp!1364235 () Bool)

(assert (=> b!4845344 (= e!3028384 (and tp!1364234 tp!1364235))))

(assert (=> b!4845266 (= tp!1364219 e!3028384)))

(assert (= (and b!4845266 (is-Cons!55461 (t!363081 l!11108))) b!4845344))

(declare-fun b_lambda!192285 () Bool)

(assert (= b_lambda!192283 (or b!4845264 b_lambda!192285)))

(declare-fun bs!1172261 () Bool)

(declare-fun d!1554462 () Bool)

(assert (= bs!1172261 (and d!1554462 b!4845264)))

(assert (=> bs!1172261 (= (dynLambda!22330 lambda!242215 (h!61898 l!11108)) (noDuplicateKeys!2565 (_2!32822 (h!61898 l!11108))))))

(assert (=> bs!1172261 m!5843664))

(assert (=> b!4845327 d!1554462))

(push 1)

(assert tp_is_empty!35057)

(assert (not b!4845328))

(assert (not b!4845304))

(assert (not b!4845303))

(assert (not b!4845344))

(assert (not b!4845311))

(assert (not b!4845298))

(assert (not b_lambda!192285))

(assert (not b!4845301))

(assert (not d!1554448))

(assert (not b!4845339))

(assert (not d!1554450))

(assert (not b!4845320))

(assert tp_is_empty!35053)

(assert (not b!4845318))

(assert (not bs!1172261))

(assert (not b!4845299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


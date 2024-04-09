; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4734 () Bool)

(assert start!4734)

(declare-fun b_free!1323 () Bool)

(declare-fun b_next!1323 () Bool)

(assert (=> start!4734 (= b_free!1323 (not b_next!1323))))

(declare-fun tp!5432 () Bool)

(declare-fun b_and!2177 () Bool)

(assert (=> start!4734 (= tp!5432 b_and!2177)))

(declare-fun res!22195 () Bool)

(declare-fun e!23168 () Bool)

(assert (=> start!4734 (=> (not res!22195) (not e!23168))))

(declare-datatypes ((B!730 0))(
  ( (B!731 (val!865 Int)) )
))
(declare-datatypes ((tuple2!1394 0))(
  ( (tuple2!1395 (_1!707 (_ BitVec 64)) (_2!707 B!730)) )
))
(declare-datatypes ((List!985 0))(
  ( (Nil!982) (Cons!981 (h!1549 tuple2!1394) (t!3718 List!985)) )
))
(declare-datatypes ((ListLongMap!975 0))(
  ( (ListLongMap!976 (toList!503 List!985)) )
))
(declare-fun lm!252 () ListLongMap!975)

(declare-fun p!304 () Int)

(declare-fun forall!165 (List!985 Int) Bool)

(assert (=> start!4734 (= res!22195 (forall!165 (toList!503 lm!252) p!304))))

(assert (=> start!4734 e!23168))

(declare-fun e!23169 () Bool)

(declare-fun inv!1615 (ListLongMap!975) Bool)

(assert (=> start!4734 (and (inv!1615 lm!252) e!23169)))

(assert (=> start!4734 tp!5432))

(assert (=> start!4734 true))

(declare-fun b!36673 () Bool)

(declare-fun res!22194 () Bool)

(assert (=> b!36673 (=> (not res!22194) (not e!23168))))

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun contains!451 (ListLongMap!975 (_ BitVec 64)) Bool)

(assert (=> b!36673 (= res!22194 (contains!451 lm!252 k0!388))))

(declare-fun b!36674 () Bool)

(declare-fun size!1297 (List!985) Int)

(assert (=> b!36674 (= e!23168 (< (size!1297 (toList!503 lm!252)) 0))))

(declare-fun b!36675 () Bool)

(declare-fun tp!5431 () Bool)

(assert (=> b!36675 (= e!23169 tp!5431)))

(assert (= (and start!4734 res!22195) b!36673))

(assert (= (and b!36673 res!22194) b!36674))

(assert (= start!4734 b!36675))

(declare-fun m!29569 () Bool)

(assert (=> start!4734 m!29569))

(declare-fun m!29571 () Bool)

(assert (=> start!4734 m!29571))

(declare-fun m!29573 () Bool)

(assert (=> b!36673 m!29573))

(declare-fun m!29575 () Bool)

(assert (=> b!36674 m!29575))

(check-sat (not b_next!1323) (not b!36673) (not start!4734) (not b!36675) (not b!36674) b_and!2177)
(check-sat b_and!2177 (not b_next!1323))
(get-model)

(declare-fun d!5537 () Bool)

(declare-fun lt!13558 () Int)

(assert (=> d!5537 (>= lt!13558 0)))

(declare-fun e!23178 () Int)

(assert (=> d!5537 (= lt!13558 e!23178)))

(declare-fun c!4201 () Bool)

(get-info :version)

(assert (=> d!5537 (= c!4201 ((_ is Nil!982) (toList!503 lm!252)))))

(assert (=> d!5537 (= (size!1297 (toList!503 lm!252)) lt!13558)))

(declare-fun b!36689 () Bool)

(assert (=> b!36689 (= e!23178 0)))

(declare-fun b!36690 () Bool)

(assert (=> b!36690 (= e!23178 (+ 1 (size!1297 (t!3718 (toList!503 lm!252)))))))

(assert (= (and d!5537 c!4201) b!36689))

(assert (= (and d!5537 (not c!4201)) b!36690))

(declare-fun m!29585 () Bool)

(assert (=> b!36690 m!29585))

(assert (=> b!36674 d!5537))

(declare-fun d!5541 () Bool)

(declare-fun e!23202 () Bool)

(assert (=> d!5541 e!23202))

(declare-fun res!22219 () Bool)

(assert (=> d!5541 (=> res!22219 e!23202)))

(declare-fun lt!13581 () Bool)

(assert (=> d!5541 (= res!22219 (not lt!13581))))

(declare-fun lt!13582 () Bool)

(assert (=> d!5541 (= lt!13581 lt!13582)))

(declare-datatypes ((Unit!815 0))(
  ( (Unit!816) )
))
(declare-fun lt!13580 () Unit!815)

(declare-fun e!23201 () Unit!815)

(assert (=> d!5541 (= lt!13580 e!23201)))

(declare-fun c!4207 () Bool)

(assert (=> d!5541 (= c!4207 lt!13582)))

(declare-fun containsKey!43 (List!985 (_ BitVec 64)) Bool)

(assert (=> d!5541 (= lt!13582 (containsKey!43 (toList!503 lm!252) k0!388))))

(assert (=> d!5541 (= (contains!451 lm!252 k0!388) lt!13581)))

(declare-fun b!36718 () Bool)

(declare-fun lt!13579 () Unit!815)

(assert (=> b!36718 (= e!23201 lt!13579)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!40 (List!985 (_ BitVec 64)) Unit!815)

(assert (=> b!36718 (= lt!13579 (lemmaContainsKeyImpliesGetValueByKeyDefined!40 (toList!503 lm!252) k0!388))))

(declare-datatypes ((Option!85 0))(
  ( (Some!84 (v!1953 B!730)) (None!83) )
))
(declare-fun isDefined!41 (Option!85) Bool)

(declare-fun getValueByKey!79 (List!985 (_ BitVec 64)) Option!85)

(assert (=> b!36718 (isDefined!41 (getValueByKey!79 (toList!503 lm!252) k0!388))))

(declare-fun b!36719 () Bool)

(declare-fun Unit!818 () Unit!815)

(assert (=> b!36719 (= e!23201 Unit!818)))

(declare-fun b!36720 () Bool)

(assert (=> b!36720 (= e!23202 (isDefined!41 (getValueByKey!79 (toList!503 lm!252) k0!388)))))

(assert (= (and d!5541 c!4207) b!36718))

(assert (= (and d!5541 (not c!4207)) b!36719))

(assert (= (and d!5541 (not res!22219)) b!36720))

(declare-fun m!29599 () Bool)

(assert (=> d!5541 m!29599))

(declare-fun m!29601 () Bool)

(assert (=> b!36718 m!29601))

(declare-fun m!29603 () Bool)

(assert (=> b!36718 m!29603))

(assert (=> b!36718 m!29603))

(declare-fun m!29607 () Bool)

(assert (=> b!36718 m!29607))

(assert (=> b!36720 m!29603))

(assert (=> b!36720 m!29603))

(assert (=> b!36720 m!29607))

(assert (=> b!36673 d!5541))

(declare-fun d!5549 () Bool)

(declare-fun res!22224 () Bool)

(declare-fun e!23209 () Bool)

(assert (=> d!5549 (=> res!22224 e!23209)))

(assert (=> d!5549 (= res!22224 ((_ is Nil!982) (toList!503 lm!252)))))

(assert (=> d!5549 (= (forall!165 (toList!503 lm!252) p!304) e!23209)))

(declare-fun b!36729 () Bool)

(declare-fun e!23210 () Bool)

(assert (=> b!36729 (= e!23209 e!23210)))

(declare-fun res!22225 () Bool)

(assert (=> b!36729 (=> (not res!22225) (not e!23210))))

(declare-fun dynLambda!167 (Int tuple2!1394) Bool)

(assert (=> b!36729 (= res!22225 (dynLambda!167 p!304 (h!1549 (toList!503 lm!252))))))

(declare-fun b!36730 () Bool)

(assert (=> b!36730 (= e!23210 (forall!165 (t!3718 (toList!503 lm!252)) p!304))))

(assert (= (and d!5549 (not res!22224)) b!36729))

(assert (= (and b!36729 res!22225) b!36730))

(declare-fun b_lambda!1781 () Bool)

(assert (=> (not b_lambda!1781) (not b!36729)))

(declare-fun t!3725 () Bool)

(declare-fun tb!725 () Bool)

(assert (=> (and start!4734 (= p!304 p!304) t!3725) tb!725))

(declare-fun result!1243 () Bool)

(assert (=> tb!725 (= result!1243 true)))

(assert (=> b!36729 t!3725))

(declare-fun b_and!2185 () Bool)

(assert (= b_and!2177 (and (=> t!3725 result!1243) b_and!2185)))

(declare-fun m!29615 () Bool)

(assert (=> b!36729 m!29615))

(declare-fun m!29617 () Bool)

(assert (=> b!36730 m!29617))

(assert (=> start!4734 d!5549))

(declare-fun d!5555 () Bool)

(declare-fun isStrictlySorted!174 (List!985) Bool)

(assert (=> d!5555 (= (inv!1615 lm!252) (isStrictlySorted!174 (toList!503 lm!252)))))

(declare-fun bs!1404 () Bool)

(assert (= bs!1404 d!5555))

(declare-fun m!29621 () Bool)

(assert (=> bs!1404 m!29621))

(assert (=> start!4734 d!5555))

(declare-fun b!36746 () Bool)

(declare-fun e!23219 () Bool)

(declare-fun tp_is_empty!1653 () Bool)

(declare-fun tp!5444 () Bool)

(assert (=> b!36746 (= e!23219 (and tp_is_empty!1653 tp!5444))))

(assert (=> b!36675 (= tp!5431 e!23219)))

(assert (= (and b!36675 ((_ is Cons!981) (toList!503 lm!252))) b!36746))

(declare-fun b_lambda!1785 () Bool)

(assert (= b_lambda!1781 (or (and start!4734 b_free!1323) b_lambda!1785)))

(check-sat (not b!36690) (not b_next!1323) (not b!36746) tp_is_empty!1653 b_and!2185 (not b!36718) (not b!36730) (not d!5555) (not b!36720) (not b_lambda!1785) (not d!5541))
(check-sat b_and!2185 (not b_next!1323))

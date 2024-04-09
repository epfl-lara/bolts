; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88462 () Bool)

(assert start!88462)

(declare-fun res!682518 () Bool)

(declare-fun e!572482 () Bool)

(assert (=> start!88462 (=> (not res!682518) (not e!572482))))

(declare-datatypes ((B!1588 0))(
  ( (B!1589 (val!11878 Int)) )
))
(declare-datatypes ((tuple2!15392 0))(
  ( (tuple2!15393 (_1!7706 (_ BitVec 64)) (_2!7706 B!1588)) )
))
(declare-datatypes ((List!21680 0))(
  ( (Nil!21677) (Cons!21676 (h!22874 tuple2!15392) (t!30689 List!21680)) )
))
(declare-fun l!1036 () List!21680)

(declare-fun isStrictlySorted!633 (List!21680) Bool)

(assert (=> start!88462 (= res!682518 (isStrictlySorted!633 l!1036))))

(assert (=> start!88462 e!572482))

(declare-fun e!572481 () Bool)

(assert (=> start!88462 e!572481))

(assert (=> start!88462 true))

(declare-fun b!1017467 () Bool)

(declare-fun res!682517 () Bool)

(assert (=> b!1017467 (=> (not res!682517) (not e!572482))))

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!624 0))(
  ( (Some!623 (v!14472 B!1588)) (None!622) )
))
(declare-fun isDefined!418 (Option!624) Bool)

(declare-fun getValueByKey!573 (List!21680 (_ BitVec 64)) Option!624)

(assert (=> b!1017467 (= res!682517 (isDefined!418 (getValueByKey!573 l!1036 key!271)))))

(declare-fun b!1017468 () Bool)

(declare-fun ListPrimitiveSize!128 (List!21680) Int)

(assert (=> b!1017468 (= e!572482 (< (ListPrimitiveSize!128 l!1036) 0))))

(declare-fun b!1017469 () Bool)

(declare-fun tp_is_empty!23655 () Bool)

(declare-fun tp!70904 () Bool)

(assert (=> b!1017469 (= e!572481 (and tp_is_empty!23655 tp!70904))))

(assert (= (and start!88462 res!682518) b!1017467))

(assert (= (and b!1017467 res!682517) b!1017468))

(get-info :version)

(assert (= (and start!88462 ((_ is Cons!21676) l!1036)) b!1017469))

(declare-fun m!938959 () Bool)

(assert (=> start!88462 m!938959))

(declare-fun m!938961 () Bool)

(assert (=> b!1017467 m!938961))

(assert (=> b!1017467 m!938961))

(declare-fun m!938963 () Bool)

(assert (=> b!1017467 m!938963))

(declare-fun m!938965 () Bool)

(assert (=> b!1017468 m!938965))

(check-sat (not b!1017468) (not start!88462) (not b!1017469) tp_is_empty!23655 (not b!1017467))
(check-sat)
(get-model)

(declare-fun d!121601 () Bool)

(declare-fun isEmpty!910 (Option!624) Bool)

(assert (=> d!121601 (= (isDefined!418 (getValueByKey!573 l!1036 key!271)) (not (isEmpty!910 (getValueByKey!573 l!1036 key!271))))))

(declare-fun bs!29608 () Bool)

(assert (= bs!29608 d!121601))

(assert (=> bs!29608 m!938961))

(declare-fun m!938975 () Bool)

(assert (=> bs!29608 m!938975))

(assert (=> b!1017467 d!121601))

(declare-fun d!121605 () Bool)

(declare-fun c!102969 () Bool)

(assert (=> d!121605 (= c!102969 (and ((_ is Cons!21676) l!1036) (= (_1!7706 (h!22874 l!1036)) key!271)))))

(declare-fun e!572503 () Option!624)

(assert (=> d!121605 (= (getValueByKey!573 l!1036 key!271) e!572503)))

(declare-fun b!1017505 () Bool)

(declare-fun e!572504 () Option!624)

(assert (=> b!1017505 (= e!572504 (getValueByKey!573 (t!30689 l!1036) key!271))))

(declare-fun b!1017506 () Bool)

(assert (=> b!1017506 (= e!572504 None!622)))

(declare-fun b!1017504 () Bool)

(assert (=> b!1017504 (= e!572503 e!572504)))

(declare-fun c!102970 () Bool)

(assert (=> b!1017504 (= c!102970 (and ((_ is Cons!21676) l!1036) (not (= (_1!7706 (h!22874 l!1036)) key!271))))))

(declare-fun b!1017503 () Bool)

(assert (=> b!1017503 (= e!572503 (Some!623 (_2!7706 (h!22874 l!1036))))))

(assert (= (and d!121605 c!102969) b!1017503))

(assert (= (and d!121605 (not c!102969)) b!1017504))

(assert (= (and b!1017504 c!102970) b!1017505))

(assert (= (and b!1017504 (not c!102970)) b!1017506))

(declare-fun m!938981 () Bool)

(assert (=> b!1017505 m!938981))

(assert (=> b!1017467 d!121605))

(declare-fun d!121613 () Bool)

(declare-fun lt!449448 () Int)

(assert (=> d!121613 (>= lt!449448 0)))

(declare-fun e!572515 () Int)

(assert (=> d!121613 (= lt!449448 e!572515)))

(declare-fun c!102973 () Bool)

(assert (=> d!121613 (= c!102973 ((_ is Nil!21677) l!1036))))

(assert (=> d!121613 (= (ListPrimitiveSize!128 l!1036) lt!449448)))

(declare-fun b!1017519 () Bool)

(assert (=> b!1017519 (= e!572515 0)))

(declare-fun b!1017520 () Bool)

(assert (=> b!1017520 (= e!572515 (+ 1 (ListPrimitiveSize!128 (t!30689 l!1036))))))

(assert (= (and d!121613 c!102973) b!1017519))

(assert (= (and d!121613 (not c!102973)) b!1017520))

(declare-fun m!938989 () Bool)

(assert (=> b!1017520 m!938989))

(assert (=> b!1017468 d!121613))

(declare-fun d!121621 () Bool)

(declare-fun res!682541 () Bool)

(declare-fun e!572530 () Bool)

(assert (=> d!121621 (=> res!682541 e!572530)))

(assert (=> d!121621 (= res!682541 (or ((_ is Nil!21677) l!1036) ((_ is Nil!21677) (t!30689 l!1036))))))

(assert (=> d!121621 (= (isStrictlySorted!633 l!1036) e!572530)))

(declare-fun b!1017545 () Bool)

(declare-fun e!572531 () Bool)

(assert (=> b!1017545 (= e!572530 e!572531)))

(declare-fun res!682542 () Bool)

(assert (=> b!1017545 (=> (not res!682542) (not e!572531))))

(assert (=> b!1017545 (= res!682542 (bvslt (_1!7706 (h!22874 l!1036)) (_1!7706 (h!22874 (t!30689 l!1036)))))))

(declare-fun b!1017546 () Bool)

(assert (=> b!1017546 (= e!572531 (isStrictlySorted!633 (t!30689 l!1036)))))

(assert (= (and d!121621 (not res!682541)) b!1017545))

(assert (= (and b!1017545 res!682542) b!1017546))

(declare-fun m!938993 () Bool)

(assert (=> b!1017546 m!938993))

(assert (=> start!88462 d!121621))

(declare-fun b!1017555 () Bool)

(declare-fun e!572536 () Bool)

(declare-fun tp!70912 () Bool)

(assert (=> b!1017555 (= e!572536 (and tp_is_empty!23655 tp!70912))))

(assert (=> b!1017469 (= tp!70904 e!572536)))

(assert (= (and b!1017469 ((_ is Cons!21676) (t!30689 l!1036))) b!1017555))

(check-sat tp_is_empty!23655 (not d!121601) (not b!1017555) (not b!1017505) (not b!1017546) (not b!1017520))
(check-sat)

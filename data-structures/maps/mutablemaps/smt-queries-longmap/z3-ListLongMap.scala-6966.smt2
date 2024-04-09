; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87990 () Bool)

(assert start!87990)

(declare-fun b!1015705 () Bool)

(assert (=> b!1015705 true))

(assert (=> b!1015705 true))

(declare-fun b!1015700 () Bool)

(declare-fun e!571427 () Bool)

(declare-fun tp_is_empty!23571 () Bool)

(declare-fun tp!70695 () Bool)

(assert (=> b!1015700 (= e!571427 (and tp_is_empty!23571 tp!70695))))

(declare-fun b!1015701 () Bool)

(declare-fun res!681379 () Bool)

(declare-fun e!571425 () Bool)

(assert (=> b!1015701 (=> (not res!681379) (not e!571425))))

(declare-datatypes ((B!1504 0))(
  ( (B!1505 (val!11836 Int)) )
))
(declare-datatypes ((tuple2!15308 0))(
  ( (tuple2!15309 (_1!7664 (_ BitVec 64)) (_2!7664 B!1504)) )
))
(declare-fun newHead!31 () tuple2!15308)

(declare-datatypes ((List!21609 0))(
  ( (Nil!21606) (Cons!21605 (h!22803 tuple2!15308) (t!30618 List!21609)) )
))
(declare-fun l!1114 () List!21609)

(declare-fun head!951 (List!21609) tuple2!15308)

(assert (=> b!1015701 (= res!681379 (bvslt (_1!7664 newHead!31) (_1!7664 (head!951 l!1114))))))

(declare-fun b!1015702 () Bool)

(declare-fun e!571426 () Bool)

(declare-datatypes ((List!21610 0))(
  ( (Nil!21607) (Cons!21606 (h!22804 (_ BitVec 64)) (t!30619 List!21610)) )
))
(declare-fun keys!40 () List!21610)

(declare-fun lambda!940 () Int)

(declare-fun forall!269 (List!21610 Int) Bool)

(assert (=> b!1015702 (= e!571426 (forall!269 (t!30619 keys!40) lambda!940))))

(declare-fun b!1015703 () Bool)

(declare-fun res!681380 () Bool)

(assert (=> b!1015703 (=> (not res!681380) (not e!571425))))

(get-info :version)

(assert (=> b!1015703 (= res!681380 ((_ is Cons!21606) keys!40))))

(declare-fun b!1015704 () Bool)

(declare-fun res!681377 () Bool)

(assert (=> b!1015704 (=> (not res!681377) (not e!571425))))

(declare-fun isEmpty!868 (List!21609) Bool)

(assert (=> b!1015704 (= res!681377 (not (isEmpty!868 l!1114)))))

(declare-fun res!681381 () Bool)

(assert (=> start!87990 (=> (not res!681381) (not e!571425))))

(declare-fun isStrictlySorted!600 (List!21609) Bool)

(assert (=> start!87990 (= res!681381 (isStrictlySorted!600 l!1114))))

(assert (=> start!87990 e!571425))

(assert (=> start!87990 e!571427))

(assert (=> start!87990 true))

(assert (=> start!87990 tp_is_empty!23571))

(declare-fun res!681382 () Bool)

(assert (=> b!1015705 (=> (not res!681382) (not e!571425))))

(assert (=> b!1015705 (= res!681382 (forall!269 keys!40 lambda!940))))

(declare-fun b!1015706 () Bool)

(assert (=> b!1015706 (= e!571425 (not e!571426))))

(declare-fun res!681378 () Bool)

(assert (=> b!1015706 (=> res!681378 e!571426)))

(assert (=> b!1015706 (= res!681378 (not (forall!269 (t!30619 keys!40) lambda!940)))))

(declare-fun lt!449156 () List!21609)

(declare-datatypes ((Option!593 0))(
  ( (Some!592 (v!14441 B!1504)) (None!591) )
))
(declare-fun isDefined!394 (Option!593) Bool)

(declare-fun getValueByKey!542 (List!21609 (_ BitVec 64)) Option!593)

(assert (=> b!1015706 (isDefined!394 (getValueByKey!542 lt!449156 (h!22804 keys!40)))))

(declare-datatypes ((Unit!33200 0))(
  ( (Unit!33201) )
))
(declare-fun lt!449155 () Unit!33200)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!378 (List!21609 (_ BitVec 64)) Unit!33200)

(assert (=> b!1015706 (= lt!449155 (lemmaContainsKeyImpliesGetValueByKeyDefined!378 lt!449156 (h!22804 keys!40)))))

(assert (=> b!1015706 (= lt!449156 (Cons!21605 newHead!31 l!1114))))

(declare-fun containsKey!486 (List!21609 (_ BitVec 64)) Bool)

(assert (=> b!1015706 (containsKey!486 l!1114 (h!22804 keys!40))))

(declare-fun lt!449157 () Unit!33200)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!5 (List!21609 (_ BitVec 64)) Unit!33200)

(assert (=> b!1015706 (= lt!449157 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!5 l!1114 (h!22804 keys!40)))))

(assert (= (and start!87990 res!681381) b!1015704))

(assert (= (and b!1015704 res!681377) b!1015705))

(assert (= (and b!1015705 res!681382) b!1015701))

(assert (= (and b!1015701 res!681379) b!1015703))

(assert (= (and b!1015703 res!681380) b!1015706))

(assert (= (and b!1015706 (not res!681378)) b!1015702))

(assert (= (and start!87990 ((_ is Cons!21605) l!1114)) b!1015700))

(declare-fun m!937775 () Bool)

(assert (=> b!1015701 m!937775))

(declare-fun m!937777 () Bool)

(assert (=> start!87990 m!937777))

(declare-fun m!937779 () Bool)

(assert (=> b!1015704 m!937779))

(declare-fun m!937781 () Bool)

(assert (=> b!1015706 m!937781))

(declare-fun m!937783 () Bool)

(assert (=> b!1015706 m!937783))

(declare-fun m!937785 () Bool)

(assert (=> b!1015706 m!937785))

(declare-fun m!937787 () Bool)

(assert (=> b!1015706 m!937787))

(assert (=> b!1015706 m!937787))

(declare-fun m!937789 () Bool)

(assert (=> b!1015706 m!937789))

(declare-fun m!937791 () Bool)

(assert (=> b!1015706 m!937791))

(declare-fun m!937793 () Bool)

(assert (=> b!1015705 m!937793))

(assert (=> b!1015702 m!937781))

(check-sat (not b!1015701) (not b!1015705) (not b!1015702) tp_is_empty!23571 (not b!1015700) (not b!1015704) (not b!1015706) (not start!87990))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11294 () Bool)

(assert start!11294)

(declare-fun b_free!3437 () Bool)

(declare-fun b_next!3437 () Bool)

(assert (=> start!11294 (= b_free!3437 (not b_next!3437))))

(declare-fun tp!59742 () Bool)

(declare-fun b_and!5567 () Bool)

(assert (=> start!11294 (= tp!59742 b_and!5567)))

(declare-fun b_free!3439 () Bool)

(declare-fun b_next!3439 () Bool)

(assert (=> start!11294 (= b_free!3439 (not b_next!3439))))

(declare-fun tp!59741 () Bool)

(declare-fun b_and!5569 () Bool)

(assert (=> start!11294 (= tp!59741 b_and!5569)))

(assert (=> start!11294 true))

(declare-fun order!1101 () Int)

(declare-fun order!1103 () Int)

(declare-fun lambda!2717 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!728 (Int Int) Int)

(declare-fun dynLambda!729 (Int Int) Int)

(assert (=> start!11294 (< (dynLambda!728 order!1101 f!927) (dynLambda!729 order!1103 lambda!2717))))

(assert (=> start!11294 true))

(declare-fun g!9 () Int)

(assert (=> start!11294 (< (dynLambda!728 order!1101 g!9) (dynLambda!729 order!1103 lambda!2717))))

(declare-fun setNonEmpty!1660 () Bool)

(declare-fun setRes!1660 () Bool)

(declare-fun tp!59740 () Bool)

(declare-fun tp_is_empty!927 () Bool)

(assert (=> setNonEmpty!1660 (= setRes!1660 (and tp!59740 tp_is_empty!927))))

(declare-datatypes ((A!321 0))(
  ( (A!322 (val!621 Int)) )
))
(declare-fun s!1451 () (Set A!321))

(declare-fun setElem!1660 () A!321)

(declare-fun setRest!1660 () (Set A!321))

(assert (=> setNonEmpty!1660 (= s!1451 (set.union (set.insert setElem!1660 (as set.empty (Set A!321))) setRest!1660))))

(declare-fun b!110325 () Bool)

(declare-fun e!61587 () Bool)

(assert (=> b!110325 (= e!61587 (not (= s!1451 (as set.empty (Set A!321)))))))

(declare-datatypes ((B!607 0))(
  ( (B!608 (val!622 Int)) )
))
(declare-fun flatMap!62 ((Set A!321) Int) (Set B!607))

(assert (=> b!110325 (= (flatMap!62 s!1451 f!927) (as set.empty (Set B!607)))))

(declare-datatypes ((Unit!1254 0))(
  ( (Unit!1255) )
))
(declare-fun lt!32377 () Unit!1254)

(declare-fun lemmaFlatMapOnEmptySetIsEmpty!7 ((Set A!321) Int) Unit!1254)

(assert (=> b!110325 (= lt!32377 (lemmaFlatMapOnEmptySetIsEmpty!7 s!1451 f!927))))

(declare-fun b!110324 () Bool)

(declare-fun res!53329 () Bool)

(assert (=> b!110324 (=> (not res!53329) (not e!61587))))

(declare-datatypes ((List!1784 0))(
  ( (Nil!1778) (Cons!1778 (h!7175 A!321) (t!22171 List!1784)) )
))
(declare-fun toList!263 ((Set A!321)) List!1784)

(assert (=> b!110324 (= res!53329 (not (is-Cons!1778 (toList!263 s!1451))))))

(declare-fun setIsEmpty!1660 () Bool)

(assert (=> setIsEmpty!1660 setRes!1660))

(declare-fun res!53328 () Bool)

(assert (=> start!11294 (=> (not res!53328) (not e!61587))))

(declare-fun forall!335 ((Set A!321) Int) Bool)

(assert (=> start!11294 (= res!53328 (forall!335 s!1451 lambda!2717))))

(assert (=> start!11294 e!61587))

(declare-fun condSetEmpty!1660 () Bool)

(assert (=> start!11294 (= condSetEmpty!1660 (= s!1451 (as set.empty (Set A!321))))))

(assert (=> start!11294 setRes!1660))

(assert (=> start!11294 tp!59742))

(assert (=> start!11294 tp!59741))

(assert (= (and start!11294 res!53328) b!110324))

(assert (= (and b!110324 res!53329) b!110325))

(assert (= (and start!11294 condSetEmpty!1660) setIsEmpty!1660))

(assert (= (and start!11294 (not condSetEmpty!1660)) setNonEmpty!1660))

(declare-fun m!100566 () Bool)

(assert (=> b!110325 m!100566))

(declare-fun m!100568 () Bool)

(assert (=> b!110325 m!100568))

(declare-fun m!100570 () Bool)

(assert (=> b!110324 m!100570))

(declare-fun m!100572 () Bool)

(assert (=> start!11294 m!100572))

(push 1)

(assert (not b!110324))

(assert (not b_next!3437))

(assert tp_is_empty!927)

(assert (not setNonEmpty!1660))

(assert (not b!110325))

(assert (not start!11294))

(assert b_and!5567)

(assert (not b_next!3439))

(assert b_and!5569)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5567)

(assert b_and!5569)

(assert (not b_next!3439))

(assert (not b_next!3437))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27667 () Bool)

(declare-fun lt!32383 () Bool)

(declare-fun forall!337 (List!1784 Int) Bool)

(assert (=> d!27667 (= lt!32383 (forall!337 (toList!263 s!1451) lambda!2717))))

(declare-fun choose!1485 ((Set A!321) Int) Bool)

(assert (=> d!27667 (= lt!32383 (choose!1485 s!1451 lambda!2717))))

(assert (=> d!27667 (= (forall!335 s!1451 lambda!2717) lt!32383)))

(declare-fun bs!10985 () Bool)

(assert (= bs!10985 d!27667))

(assert (=> bs!10985 m!100570))

(assert (=> bs!10985 m!100570))

(declare-fun m!100582 () Bool)

(assert (=> bs!10985 m!100582))

(declare-fun m!100584 () Bool)

(assert (=> bs!10985 m!100584))

(assert (=> start!11294 d!27667))

(declare-fun d!27669 () Bool)

(declare-fun e!61593 () Bool)

(assert (=> d!27669 e!61593))

(declare-fun res!53338 () Bool)

(assert (=> d!27669 (=> (not res!53338) (not e!61593))))

(declare-fun lt!32386 () List!1784)

(declare-fun noDuplicate!22 (List!1784) Bool)

(assert (=> d!27669 (= res!53338 (noDuplicate!22 lt!32386))))

(declare-fun choose!1486 ((Set A!321)) List!1784)

(assert (=> d!27669 (= lt!32386 (choose!1486 s!1451))))

(assert (=> d!27669 (= (toList!263 s!1451) lt!32386)))

(declare-fun b!110338 () Bool)

(declare-fun content!202 (List!1784) (Set A!321))

(assert (=> b!110338 (= e!61593 (= (content!202 lt!32386) s!1451))))

(assert (= (and d!27669 res!53338) b!110338))

(declare-fun m!100586 () Bool)

(assert (=> d!27669 m!100586))

(declare-fun m!100588 () Bool)

(assert (=> d!27669 m!100588))

(declare-fun m!100590 () Bool)

(assert (=> b!110338 m!100590))

(assert (=> b!110324 d!27669))

(declare-fun d!27671 () Bool)

(declare-fun choose!1487 ((Set A!321) Int) (Set B!607))

(assert (=> d!27671 (= (flatMap!62 s!1451 f!927) (choose!1487 s!1451 f!927))))

(declare-fun bs!10986 () Bool)

(assert (= bs!10986 d!27671))

(declare-fun m!100592 () Bool)

(assert (=> bs!10986 m!100592))

(assert (=> b!110325 d!27671))

(declare-fun d!27673 () Bool)

(assert (=> d!27673 (= (flatMap!62 s!1451 f!927) (as set.empty (Set B!607)))))

(declare-fun lt!32389 () Unit!1254)

(declare-fun choose!1488 ((Set A!321) Int) Unit!1254)

(assert (=> d!27673 (= lt!32389 (choose!1488 s!1451 f!927))))

(assert (=> d!27673 (= s!1451 (as set.empty (Set A!321)))))

(assert (=> d!27673 (= (lemmaFlatMapOnEmptySetIsEmpty!7 s!1451 f!927) lt!32389)))

(declare-fun bs!10987 () Bool)

(assert (= bs!10987 d!27673))

(assert (=> bs!10987 m!100566))

(declare-fun m!100594 () Bool)

(assert (=> bs!10987 m!100594))

(assert (=> b!110325 d!27673))

(declare-fun condSetEmpty!1666 () Bool)

(assert (=> setNonEmpty!1660 (= condSetEmpty!1666 (= setRest!1660 (as set.empty (Set A!321))))))

(declare-fun setRes!1666 () Bool)

(assert (=> setNonEmpty!1660 (= tp!59740 setRes!1666)))

(declare-fun setIsEmpty!1666 () Bool)

(assert (=> setIsEmpty!1666 setRes!1666))

(declare-fun setNonEmpty!1666 () Bool)

(declare-fun tp!59754 () Bool)

(assert (=> setNonEmpty!1666 (= setRes!1666 (and tp!59754 tp_is_empty!927))))

(declare-fun setElem!1666 () A!321)

(declare-fun setRest!1666 () (Set A!321))

(assert (=> setNonEmpty!1666 (= setRest!1660 (set.union (set.insert setElem!1666 (as set.empty (Set A!321))) setRest!1666))))

(assert (= (and setNonEmpty!1660 condSetEmpty!1666) setIsEmpty!1666))

(assert (= (and setNonEmpty!1660 (not condSetEmpty!1666)) setNonEmpty!1666))

(push 1)

(assert (not b_next!3437))

(assert (not b!110338))

(assert (not setNonEmpty!1666))

(assert tp_is_empty!927)

(assert (not d!27673))

(assert (not d!27671))

(assert b_and!5567)

(assert (not d!27667))

(assert (not d!27669))

(assert (not b_next!3439))

(assert b_and!5569)

(check-sat)

(pop 1)

(push 1)

(assert b_and!5567)

(assert b_and!5569)

(assert (not b_next!3439))

(assert (not b_next!3437))

(check-sat)

(pop 1)


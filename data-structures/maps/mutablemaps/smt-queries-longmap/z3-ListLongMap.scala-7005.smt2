; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88992 () Bool)

(assert start!88992)

(declare-fun b!1020462 () Bool)

(declare-fun e!574455 () Bool)

(declare-fun tp_is_empty!23805 () Bool)

(declare-fun tp!71276 () Bool)

(assert (=> b!1020462 (= e!574455 (and tp_is_empty!23805 tp!71276))))

(declare-fun b!1020463 () Bool)

(declare-fun res!684076 () Bool)

(declare-fun e!574456 () Bool)

(assert (=> b!1020463 (=> (not res!684076) (not e!574456))))

(declare-datatypes ((B!1738 0))(
  ( (B!1739 (val!11953 Int)) )
))
(declare-datatypes ((tuple2!15542 0))(
  ( (tuple2!15543 (_1!7781 (_ BitVec 64)) (_2!7781 B!1738)) )
))
(declare-datatypes ((List!21755 0))(
  ( (Nil!21752) (Cons!21751 (h!22949 tuple2!15542) (t!30772 List!21755)) )
))
(declare-fun l!1367 () List!21755)

(declare-fun isStrictlySorted!702 (List!21755) Bool)

(assert (=> b!1020463 (= res!684076 (isStrictlySorted!702 (t!30772 l!1367)))))

(declare-fun b!1020464 () Bool)

(declare-fun res!684078 () Bool)

(assert (=> b!1020464 (=> (not res!684078) (not e!574456))))

(declare-fun lt!449854 () tuple2!15542)

(declare-fun contains!5946 (List!21755 tuple2!15542) Bool)

(assert (=> b!1020464 (= res!684078 (contains!5946 (t!30772 l!1367) lt!449854))))

(declare-fun b!1020465 () Bool)

(declare-fun res!684074 () Bool)

(assert (=> b!1020465 (=> (not res!684074) (not e!574456))))

(get-info :version)

(assert (=> b!1020465 (= res!684074 (and ((_ is Cons!21751) l!1367) (not (= (h!22949 l!1367) lt!449854))))))

(declare-fun res!684077 () Bool)

(declare-fun e!574454 () Bool)

(assert (=> start!88992 (=> (not res!684077) (not e!574454))))

(assert (=> start!88992 (= res!684077 (isStrictlySorted!702 l!1367))))

(assert (=> start!88992 e!574454))

(assert (=> start!88992 e!574455))

(assert (=> start!88992 true))

(assert (=> start!88992 tp_is_empty!23805))

(declare-fun b!1020466 () Bool)

(assert (=> b!1020466 (= e!574454 e!574456)))

(declare-fun res!684075 () Bool)

(assert (=> b!1020466 (=> (not res!684075) (not e!574456))))

(assert (=> b!1020466 (= res!684075 (contains!5946 l!1367 lt!449854))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1738)

(assert (=> b!1020466 (= lt!449854 (tuple2!15543 key!393 value!188))))

(declare-fun b!1020467 () Bool)

(declare-fun ListPrimitiveSize!143 (List!21755) Int)

(assert (=> b!1020467 (= e!574456 (>= (ListPrimitiveSize!143 (t!30772 l!1367)) (ListPrimitiveSize!143 l!1367)))))

(assert (= (and start!88992 res!684077) b!1020466))

(assert (= (and b!1020466 res!684075) b!1020465))

(assert (= (and b!1020465 res!684074) b!1020463))

(assert (= (and b!1020463 res!684076) b!1020464))

(assert (= (and b!1020464 res!684078) b!1020467))

(assert (= (and start!88992 ((_ is Cons!21751) l!1367)) b!1020462))

(declare-fun m!940507 () Bool)

(assert (=> b!1020466 m!940507))

(declare-fun m!940509 () Bool)

(assert (=> b!1020467 m!940509))

(declare-fun m!940511 () Bool)

(assert (=> b!1020467 m!940511))

(declare-fun m!940513 () Bool)

(assert (=> b!1020464 m!940513))

(declare-fun m!940515 () Bool)

(assert (=> b!1020463 m!940515))

(declare-fun m!940517 () Bool)

(assert (=> start!88992 m!940517))

(check-sat (not b!1020462) (not start!88992) (not b!1020466) (not b!1020464) (not b!1020463) tp_is_empty!23805 (not b!1020467))
(check-sat)
(get-model)

(declare-fun d!122331 () Bool)

(declare-fun lt!449862 () Int)

(assert (=> d!122331 (>= lt!449862 0)))

(declare-fun e!574472 () Int)

(assert (=> d!122331 (= lt!449862 e!574472)))

(declare-fun c!103449 () Bool)

(assert (=> d!122331 (= c!103449 ((_ is Nil!21752) (t!30772 l!1367)))))

(assert (=> d!122331 (= (ListPrimitiveSize!143 (t!30772 l!1367)) lt!449862)))

(declare-fun b!1020494 () Bool)

(assert (=> b!1020494 (= e!574472 0)))

(declare-fun b!1020495 () Bool)

(assert (=> b!1020495 (= e!574472 (+ 1 (ListPrimitiveSize!143 (t!30772 (t!30772 l!1367)))))))

(assert (= (and d!122331 c!103449) b!1020494))

(assert (= (and d!122331 (not c!103449)) b!1020495))

(declare-fun m!940531 () Bool)

(assert (=> b!1020495 m!940531))

(assert (=> b!1020467 d!122331))

(declare-fun d!122335 () Bool)

(declare-fun lt!449864 () Int)

(assert (=> d!122335 (>= lt!449864 0)))

(declare-fun e!574475 () Int)

(assert (=> d!122335 (= lt!449864 e!574475)))

(declare-fun c!103450 () Bool)

(assert (=> d!122335 (= c!103450 ((_ is Nil!21752) l!1367))))

(assert (=> d!122335 (= (ListPrimitiveSize!143 l!1367) lt!449864)))

(declare-fun b!1020498 () Bool)

(assert (=> b!1020498 (= e!574475 0)))

(declare-fun b!1020499 () Bool)

(assert (=> b!1020499 (= e!574475 (+ 1 (ListPrimitiveSize!143 (t!30772 l!1367))))))

(assert (= (and d!122335 c!103450) b!1020498))

(assert (= (and d!122335 (not c!103450)) b!1020499))

(assert (=> b!1020499 m!940509))

(assert (=> b!1020467 d!122335))

(declare-fun d!122337 () Bool)

(declare-fun lt!449871 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!504 (List!21755) (InoxSet tuple2!15542))

(assert (=> d!122337 (= lt!449871 (select (content!504 (t!30772 l!1367)) lt!449854))))

(declare-fun e!574494 () Bool)

(assert (=> d!122337 (= lt!449871 e!574494)))

(declare-fun res!684114 () Bool)

(assert (=> d!122337 (=> (not res!684114) (not e!574494))))

(assert (=> d!122337 (= res!684114 ((_ is Cons!21751) (t!30772 l!1367)))))

(assert (=> d!122337 (= (contains!5946 (t!30772 l!1367) lt!449854) lt!449871)))

(declare-fun b!1020522 () Bool)

(declare-fun e!574495 () Bool)

(assert (=> b!1020522 (= e!574494 e!574495)))

(declare-fun res!684115 () Bool)

(assert (=> b!1020522 (=> res!684115 e!574495)))

(assert (=> b!1020522 (= res!684115 (= (h!22949 (t!30772 l!1367)) lt!449854))))

(declare-fun b!1020523 () Bool)

(assert (=> b!1020523 (= e!574495 (contains!5946 (t!30772 (t!30772 l!1367)) lt!449854))))

(assert (= (and d!122337 res!684114) b!1020522))

(assert (= (and b!1020522 (not res!684115)) b!1020523))

(declare-fun m!940541 () Bool)

(assert (=> d!122337 m!940541))

(declare-fun m!940543 () Bool)

(assert (=> d!122337 m!940543))

(declare-fun m!940545 () Bool)

(assert (=> b!1020523 m!940545))

(assert (=> b!1020464 d!122337))

(declare-fun d!122347 () Bool)

(declare-fun res!684126 () Bool)

(declare-fun e!574510 () Bool)

(assert (=> d!122347 (=> res!684126 e!574510)))

(assert (=> d!122347 (= res!684126 (or ((_ is Nil!21752) (t!30772 l!1367)) ((_ is Nil!21752) (t!30772 (t!30772 l!1367)))))))

(assert (=> d!122347 (= (isStrictlySorted!702 (t!30772 l!1367)) e!574510)))

(declare-fun b!1020542 () Bool)

(declare-fun e!574511 () Bool)

(assert (=> b!1020542 (= e!574510 e!574511)))

(declare-fun res!684127 () Bool)

(assert (=> b!1020542 (=> (not res!684127) (not e!574511))))

(assert (=> b!1020542 (= res!684127 (bvslt (_1!7781 (h!22949 (t!30772 l!1367))) (_1!7781 (h!22949 (t!30772 (t!30772 l!1367))))))))

(declare-fun b!1020543 () Bool)

(assert (=> b!1020543 (= e!574511 (isStrictlySorted!702 (t!30772 (t!30772 l!1367))))))

(assert (= (and d!122347 (not res!684126)) b!1020542))

(assert (= (and b!1020542 res!684127) b!1020543))

(declare-fun m!940555 () Bool)

(assert (=> b!1020543 m!940555))

(assert (=> b!1020463 d!122347))

(declare-fun d!122357 () Bool)

(declare-fun res!684132 () Bool)

(declare-fun e!574518 () Bool)

(assert (=> d!122357 (=> res!684132 e!574518)))

(assert (=> d!122357 (= res!684132 (or ((_ is Nil!21752) l!1367) ((_ is Nil!21752) (t!30772 l!1367))))))

(assert (=> d!122357 (= (isStrictlySorted!702 l!1367) e!574518)))

(declare-fun b!1020552 () Bool)

(declare-fun e!574519 () Bool)

(assert (=> b!1020552 (= e!574518 e!574519)))

(declare-fun res!684133 () Bool)

(assert (=> b!1020552 (=> (not res!684133) (not e!574519))))

(assert (=> b!1020552 (= res!684133 (bvslt (_1!7781 (h!22949 l!1367)) (_1!7781 (h!22949 (t!30772 l!1367)))))))

(declare-fun b!1020553 () Bool)

(assert (=> b!1020553 (= e!574519 (isStrictlySorted!702 (t!30772 l!1367)))))

(assert (= (and d!122357 (not res!684132)) b!1020552))

(assert (= (and b!1020552 res!684133) b!1020553))

(assert (=> b!1020553 m!940515))

(assert (=> start!88992 d!122357))

(declare-fun d!122359 () Bool)

(declare-fun lt!449879 () Bool)

(assert (=> d!122359 (= lt!449879 (select (content!504 l!1367) lt!449854))))

(declare-fun e!574520 () Bool)

(assert (=> d!122359 (= lt!449879 e!574520)))

(declare-fun res!684134 () Bool)

(assert (=> d!122359 (=> (not res!684134) (not e!574520))))

(assert (=> d!122359 (= res!684134 ((_ is Cons!21751) l!1367))))

(assert (=> d!122359 (= (contains!5946 l!1367 lt!449854) lt!449879)))

(declare-fun b!1020554 () Bool)

(declare-fun e!574521 () Bool)

(assert (=> b!1020554 (= e!574520 e!574521)))

(declare-fun res!684135 () Bool)

(assert (=> b!1020554 (=> res!684135 e!574521)))

(assert (=> b!1020554 (= res!684135 (= (h!22949 l!1367) lt!449854))))

(declare-fun b!1020555 () Bool)

(assert (=> b!1020555 (= e!574521 (contains!5946 (t!30772 l!1367) lt!449854))))

(assert (= (and d!122359 res!684134) b!1020554))

(assert (= (and b!1020554 (not res!684135)) b!1020555))

(declare-fun m!940557 () Bool)

(assert (=> d!122359 m!940557))

(declare-fun m!940559 () Bool)

(assert (=> d!122359 m!940559))

(assert (=> b!1020555 m!940513))

(assert (=> b!1020466 d!122359))

(declare-fun b!1020563 () Bool)

(declare-fun e!574527 () Bool)

(declare-fun tp!71285 () Bool)

(assert (=> b!1020563 (= e!574527 (and tp_is_empty!23805 tp!71285))))

(assert (=> b!1020462 (= tp!71276 e!574527)))

(assert (= (and b!1020462 ((_ is Cons!21751) (t!30772 l!1367))) b!1020563))

(check-sat (not d!122337) (not b!1020555) (not b!1020499) (not b!1020553) (not b!1020523) (not b!1020495) tp_is_empty!23805 (not d!122359) (not b!1020563) (not b!1020543))
(check-sat)

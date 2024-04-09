; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1766 () Bool)

(assert start!1766)

(declare-fun b!12420 () Bool)

(declare-fun e!7418 () Bool)

(declare-fun tp_is_empty!627 () Bool)

(declare-fun tp!2081 () Bool)

(assert (=> b!12420 (= e!7418 (and tp_is_empty!627 tp!2081))))

(declare-fun b!12421 () Bool)

(declare-fun e!7417 () Bool)

(declare-datatypes ((B!454 0))(
  ( (B!455 (val!322 Int)) )
))
(declare-datatypes ((tuple2!426 0))(
  ( (tuple2!427 (_1!213 (_ BitVec 64)) (_2!213 B!454)) )
))
(declare-datatypes ((List!369 0))(
  ( (Nil!366) (Cons!365 (h!931 tuple2!426) (t!2756 List!369)) )
))
(declare-fun l!1094 () List!369)

(declare-fun lt!3142 () tuple2!426)

(declare-fun contains!174 (List!369 tuple2!426) Bool)

(assert (=> b!12421 (= e!7417 (not (contains!174 l!1094 lt!3142)))))

(assert (=> b!12421 (contains!174 (t!2756 l!1094) lt!3142)))

(declare-fun key!303 () (_ BitVec 64))

(declare-fun v!194 () B!454)

(assert (=> b!12421 (= lt!3142 (tuple2!427 key!303 v!194))))

(declare-datatypes ((Unit!268 0))(
  ( (Unit!269) )
))
(declare-fun lt!3143 () Unit!268)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!5 (List!369 (_ BitVec 64) B!454) Unit!268)

(assert (=> b!12421 (= lt!3143 (lemmaGetValueByKeyImpliesContainsTuple!5 (t!2756 l!1094) key!303 v!194))))

(declare-fun b!12422 () Bool)

(declare-fun e!7416 () Bool)

(assert (=> b!12422 (= e!7416 e!7417)))

(declare-fun res!10012 () Bool)

(assert (=> b!12422 (=> (not res!10012) (not e!7417))))

(declare-datatypes ((Option!54 0))(
  ( (Some!53 (v!1368 B!454)) (None!52) )
))
(declare-fun lt!3144 () Option!54)

(declare-fun getValueByKey!48 (List!369 (_ BitVec 64)) Option!54)

(assert (=> b!12422 (= res!10012 (= (getValueByKey!48 l!1094 key!303) lt!3144))))

(assert (=> b!12422 (= lt!3144 (Some!53 v!194))))

(declare-fun b!12423 () Bool)

(declare-fun res!10008 () Bool)

(assert (=> b!12423 (=> (not res!10008) (not e!7417))))

(get-info :version)

(assert (=> b!12423 (= res!10008 (and ((_ is Cons!365) l!1094) (not (= (_1!213 (h!931 l!1094)) key!303))))))

(declare-fun res!10011 () Bool)

(assert (=> start!1766 (=> (not res!10011) (not e!7416))))

(declare-fun isStrictlySorted!66 (List!369) Bool)

(assert (=> start!1766 (= res!10011 (isStrictlySorted!66 l!1094))))

(assert (=> start!1766 e!7416))

(assert (=> start!1766 e!7418))

(assert (=> start!1766 tp_is_empty!627))

(assert (=> start!1766 true))

(declare-fun b!12424 () Bool)

(declare-fun res!10010 () Bool)

(assert (=> b!12424 (=> (not res!10010) (not e!7417))))

(assert (=> b!12424 (= res!10010 (= (getValueByKey!48 (t!2756 l!1094) key!303) lt!3144))))

(declare-fun b!12425 () Bool)

(declare-fun res!10009 () Bool)

(assert (=> b!12425 (=> (not res!10009) (not e!7417))))

(assert (=> b!12425 (= res!10009 (isStrictlySorted!66 (t!2756 l!1094)))))

(assert (= (and start!1766 res!10011) b!12422))

(assert (= (and b!12422 res!10012) b!12423))

(assert (= (and b!12423 res!10008) b!12425))

(assert (= (and b!12425 res!10009) b!12424))

(assert (= (and b!12424 res!10010) b!12421))

(assert (= (and start!1766 ((_ is Cons!365) l!1094)) b!12420))

(declare-fun m!8467 () Bool)

(assert (=> b!12425 m!8467))

(declare-fun m!8469 () Bool)

(assert (=> b!12422 m!8469))

(declare-fun m!8471 () Bool)

(assert (=> b!12424 m!8471))

(declare-fun m!8473 () Bool)

(assert (=> start!1766 m!8473))

(declare-fun m!8475 () Bool)

(assert (=> b!12421 m!8475))

(declare-fun m!8477 () Bool)

(assert (=> b!12421 m!8477))

(declare-fun m!8479 () Bool)

(assert (=> b!12421 m!8479))

(check-sat (not start!1766) (not b!12424) (not b!12422) tp_is_empty!627 (not b!12425) (not b!12420) (not b!12421))
(check-sat)
(get-model)

(declare-fun d!1753 () Bool)

(declare-fun lt!3156 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9 (List!369) (InoxSet tuple2!426))

(assert (=> d!1753 (= lt!3156 (select (content!9 l!1094) lt!3142))))

(declare-fun e!7461 () Bool)

(assert (=> d!1753 (= lt!3156 e!7461)))

(declare-fun res!10049 () Bool)

(assert (=> d!1753 (=> (not res!10049) (not e!7461))))

(assert (=> d!1753 (= res!10049 ((_ is Cons!365) l!1094))))

(assert (=> d!1753 (= (contains!174 l!1094 lt!3142) lt!3156)))

(declare-fun b!12488 () Bool)

(declare-fun e!7460 () Bool)

(assert (=> b!12488 (= e!7461 e!7460)))

(declare-fun res!10048 () Bool)

(assert (=> b!12488 (=> res!10048 e!7460)))

(assert (=> b!12488 (= res!10048 (= (h!931 l!1094) lt!3142))))

(declare-fun b!12489 () Bool)

(assert (=> b!12489 (= e!7460 (contains!174 (t!2756 l!1094) lt!3142))))

(assert (= (and d!1753 res!10049) b!12488))

(assert (= (and b!12488 (not res!10048)) b!12489))

(declare-fun m!8501 () Bool)

(assert (=> d!1753 m!8501))

(declare-fun m!8503 () Bool)

(assert (=> d!1753 m!8503))

(assert (=> b!12489 m!8477))

(assert (=> b!12421 d!1753))

(declare-fun d!1771 () Bool)

(declare-fun lt!3159 () Bool)

(assert (=> d!1771 (= lt!3159 (select (content!9 (t!2756 l!1094)) lt!3142))))

(declare-fun e!7463 () Bool)

(assert (=> d!1771 (= lt!3159 e!7463)))

(declare-fun res!10051 () Bool)

(assert (=> d!1771 (=> (not res!10051) (not e!7463))))

(assert (=> d!1771 (= res!10051 ((_ is Cons!365) (t!2756 l!1094)))))

(assert (=> d!1771 (= (contains!174 (t!2756 l!1094) lt!3142) lt!3159)))

(declare-fun b!12490 () Bool)

(declare-fun e!7462 () Bool)

(assert (=> b!12490 (= e!7463 e!7462)))

(declare-fun res!10050 () Bool)

(assert (=> b!12490 (=> res!10050 e!7462)))

(assert (=> b!12490 (= res!10050 (= (h!931 (t!2756 l!1094)) lt!3142))))

(declare-fun b!12491 () Bool)

(assert (=> b!12491 (= e!7462 (contains!174 (t!2756 (t!2756 l!1094)) lt!3142))))

(assert (= (and d!1771 res!10051) b!12490))

(assert (= (and b!12490 (not res!10050)) b!12491))

(declare-fun m!8505 () Bool)

(assert (=> d!1771 m!8505))

(declare-fun m!8507 () Bool)

(assert (=> d!1771 m!8507))

(declare-fun m!8509 () Bool)

(assert (=> b!12491 m!8509))

(assert (=> b!12421 d!1771))

(declare-fun d!1773 () Bool)

(assert (=> d!1773 (contains!174 (t!2756 l!1094) (tuple2!427 key!303 v!194))))

(declare-fun lt!3168 () Unit!268)

(declare-fun choose!164 (List!369 (_ BitVec 64) B!454) Unit!268)

(assert (=> d!1773 (= lt!3168 (choose!164 (t!2756 l!1094) key!303 v!194))))

(declare-fun e!7482 () Bool)

(assert (=> d!1773 e!7482))

(declare-fun res!10070 () Bool)

(assert (=> d!1773 (=> (not res!10070) (not e!7482))))

(assert (=> d!1773 (= res!10070 (isStrictlySorted!66 (t!2756 l!1094)))))

(assert (=> d!1773 (= (lemmaGetValueByKeyImpliesContainsTuple!5 (t!2756 l!1094) key!303 v!194) lt!3168)))

(declare-fun b!12510 () Bool)

(assert (=> b!12510 (= e!7482 (= (getValueByKey!48 (t!2756 l!1094) key!303) (Some!53 v!194)))))

(assert (= (and d!1773 res!10070) b!12510))

(declare-fun m!8531 () Bool)

(assert (=> d!1773 m!8531))

(declare-fun m!8533 () Bool)

(assert (=> d!1773 m!8533))

(assert (=> d!1773 m!8467))

(assert (=> b!12510 m!8471))

(assert (=> b!12421 d!1773))

(declare-fun d!1783 () Bool)

(declare-fun res!10081 () Bool)

(declare-fun e!7501 () Bool)

(assert (=> d!1783 (=> res!10081 e!7501)))

(assert (=> d!1783 (= res!10081 (or ((_ is Nil!366) (t!2756 l!1094)) ((_ is Nil!366) (t!2756 (t!2756 l!1094)))))))

(assert (=> d!1783 (= (isStrictlySorted!66 (t!2756 l!1094)) e!7501)))

(declare-fun b!12537 () Bool)

(declare-fun e!7502 () Bool)

(assert (=> b!12537 (= e!7501 e!7502)))

(declare-fun res!10082 () Bool)

(assert (=> b!12537 (=> (not res!10082) (not e!7502))))

(assert (=> b!12537 (= res!10082 (bvslt (_1!213 (h!931 (t!2756 l!1094))) (_1!213 (h!931 (t!2756 (t!2756 l!1094))))))))

(declare-fun b!12538 () Bool)

(assert (=> b!12538 (= e!7502 (isStrictlySorted!66 (t!2756 (t!2756 l!1094))))))

(assert (= (and d!1783 (not res!10081)) b!12537))

(assert (= (and b!12537 res!10082) b!12538))

(declare-fun m!8545 () Bool)

(assert (=> b!12538 m!8545))

(assert (=> b!12425 d!1783))

(declare-fun b!12552 () Bool)

(declare-fun e!7510 () Option!54)

(assert (=> b!12552 (= e!7510 None!52)))

(declare-fun b!12549 () Bool)

(declare-fun e!7509 () Option!54)

(assert (=> b!12549 (= e!7509 (Some!53 (_2!213 (h!931 (t!2756 l!1094)))))))

(declare-fun b!12551 () Bool)

(assert (=> b!12551 (= e!7510 (getValueByKey!48 (t!2756 (t!2756 l!1094)) key!303))))

(declare-fun b!12550 () Bool)

(assert (=> b!12550 (= e!7509 e!7510)))

(declare-fun c!1122 () Bool)

(assert (=> b!12550 (= c!1122 (and ((_ is Cons!365) (t!2756 l!1094)) (not (= (_1!213 (h!931 (t!2756 l!1094))) key!303))))))

(declare-fun d!1789 () Bool)

(declare-fun c!1121 () Bool)

(assert (=> d!1789 (= c!1121 (and ((_ is Cons!365) (t!2756 l!1094)) (= (_1!213 (h!931 (t!2756 l!1094))) key!303)))))

(assert (=> d!1789 (= (getValueByKey!48 (t!2756 l!1094) key!303) e!7509)))

(assert (= (and d!1789 c!1121) b!12549))

(assert (= (and d!1789 (not c!1121)) b!12550))

(assert (= (and b!12550 c!1122) b!12551))

(assert (= (and b!12550 (not c!1122)) b!12552))

(declare-fun m!8547 () Bool)

(assert (=> b!12551 m!8547))

(assert (=> b!12424 d!1789))

(declare-fun d!1791 () Bool)

(declare-fun res!10083 () Bool)

(declare-fun e!7511 () Bool)

(assert (=> d!1791 (=> res!10083 e!7511)))

(assert (=> d!1791 (= res!10083 (or ((_ is Nil!366) l!1094) ((_ is Nil!366) (t!2756 l!1094))))))

(assert (=> d!1791 (= (isStrictlySorted!66 l!1094) e!7511)))

(declare-fun b!12553 () Bool)

(declare-fun e!7512 () Bool)

(assert (=> b!12553 (= e!7511 e!7512)))

(declare-fun res!10084 () Bool)

(assert (=> b!12553 (=> (not res!10084) (not e!7512))))

(assert (=> b!12553 (= res!10084 (bvslt (_1!213 (h!931 l!1094)) (_1!213 (h!931 (t!2756 l!1094)))))))

(declare-fun b!12554 () Bool)

(assert (=> b!12554 (= e!7512 (isStrictlySorted!66 (t!2756 l!1094)))))

(assert (= (and d!1791 (not res!10083)) b!12553))

(assert (= (and b!12553 res!10084) b!12554))

(assert (=> b!12554 m!8467))

(assert (=> start!1766 d!1791))

(declare-fun b!12558 () Bool)

(declare-fun e!7514 () Option!54)

(assert (=> b!12558 (= e!7514 None!52)))

(declare-fun b!12555 () Bool)

(declare-fun e!7513 () Option!54)

(assert (=> b!12555 (= e!7513 (Some!53 (_2!213 (h!931 l!1094))))))

(declare-fun b!12557 () Bool)

(assert (=> b!12557 (= e!7514 (getValueByKey!48 (t!2756 l!1094) key!303))))

(declare-fun b!12556 () Bool)

(assert (=> b!12556 (= e!7513 e!7514)))

(declare-fun c!1124 () Bool)

(assert (=> b!12556 (= c!1124 (and ((_ is Cons!365) l!1094) (not (= (_1!213 (h!931 l!1094)) key!303))))))

(declare-fun d!1793 () Bool)

(declare-fun c!1123 () Bool)

(assert (=> d!1793 (= c!1123 (and ((_ is Cons!365) l!1094) (= (_1!213 (h!931 l!1094)) key!303)))))

(assert (=> d!1793 (= (getValueByKey!48 l!1094 key!303) e!7513)))

(assert (= (and d!1793 c!1123) b!12555))

(assert (= (and d!1793 (not c!1123)) b!12556))

(assert (= (and b!12556 c!1124) b!12557))

(assert (= (and b!12556 (not c!1124)) b!12558))

(assert (=> b!12557 m!8471))

(assert (=> b!12422 d!1793))

(declare-fun b!12563 () Bool)

(declare-fun e!7517 () Bool)

(declare-fun tp!2093 () Bool)

(assert (=> b!12563 (= e!7517 (and tp_is_empty!627 tp!2093))))

(assert (=> b!12420 (= tp!2081 e!7517)))

(assert (= (and b!12420 ((_ is Cons!365) (t!2756 l!1094))) b!12563))

(check-sat (not b!12491) (not b!12510) (not d!1771) (not b!12554) (not d!1753) tp_is_empty!627 (not b!12489) (not b!12551) (not b!12557) (not b!12563) (not b!12538) (not d!1773))
(check-sat)

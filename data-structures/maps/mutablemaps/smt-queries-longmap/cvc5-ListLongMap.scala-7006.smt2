; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89014 () Bool)

(assert start!89014)

(declare-fun b!1020585 () Bool)

(declare-fun res!684155 () Bool)

(declare-fun e!574541 () Bool)

(assert (=> b!1020585 (=> (not res!684155) (not e!574541))))

(declare-datatypes ((B!1742 0))(
  ( (B!1743 (val!11955 Int)) )
))
(declare-datatypes ((tuple2!15546 0))(
  ( (tuple2!15547 (_1!7783 (_ BitVec 64)) (_2!7783 B!1742)) )
))
(declare-datatypes ((List!21757 0))(
  ( (Nil!21754) (Cons!21753 (h!22951 tuple2!15546) (t!30774 List!21757)) )
))
(declare-fun l!1367 () List!21757)

(declare-fun isStrictlySorted!704 (List!21757) Bool)

(assert (=> b!1020585 (= res!684155 (isStrictlySorted!704 (t!30774 l!1367)))))

(declare-fun b!1020586 () Bool)

(declare-fun res!684154 () Bool)

(assert (=> b!1020586 (=> (not res!684154) (not e!574541))))

(declare-fun lt!449887 () tuple2!15546)

(assert (=> b!1020586 (= res!684154 (and (is-Cons!21753 l!1367) (not (= (h!22951 l!1367) lt!449887))))))

(declare-fun b!1020587 () Bool)

(declare-fun e!574543 () Bool)

(assert (=> b!1020587 (= e!574543 e!574541)))

(declare-fun res!684152 () Bool)

(assert (=> b!1020587 (=> (not res!684152) (not e!574541))))

(declare-fun contains!5948 (List!21757 tuple2!15546) Bool)

(assert (=> b!1020587 (= res!684152 (contains!5948 l!1367 lt!449887))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1742)

(assert (=> b!1020587 (= lt!449887 (tuple2!15547 key!393 value!188))))

(declare-fun b!1020588 () Bool)

(declare-fun e!574542 () Bool)

(declare-fun tp_is_empty!23809 () Bool)

(declare-fun tp!71291 () Bool)

(assert (=> b!1020588 (= e!574542 (and tp_is_empty!23809 tp!71291))))

(declare-fun res!684153 () Bool)

(assert (=> start!89014 (=> (not res!684153) (not e!574543))))

(assert (=> start!89014 (= res!684153 (isStrictlySorted!704 l!1367))))

(assert (=> start!89014 e!574543))

(assert (=> start!89014 e!574542))

(assert (=> start!89014 true))

(assert (=> start!89014 tp_is_empty!23809))

(declare-fun b!1020589 () Bool)

(declare-fun containsKey!554 (List!21757 (_ BitVec 64)) Bool)

(assert (=> b!1020589 (= e!574541 (not (containsKey!554 l!1367 key!393)))))

(assert (=> b!1020589 (containsKey!554 (t!30774 l!1367) key!393)))

(declare-datatypes ((Unit!33264 0))(
  ( (Unit!33265) )
))
(declare-fun lt!449886 () Unit!33264)

(declare-fun lemmaContainsTupleThenContainsKey!13 (List!21757 (_ BitVec 64) B!1742) Unit!33264)

(assert (=> b!1020589 (= lt!449886 (lemmaContainsTupleThenContainsKey!13 (t!30774 l!1367) key!393 value!188))))

(declare-fun b!1020590 () Bool)

(declare-fun res!684156 () Bool)

(assert (=> b!1020590 (=> (not res!684156) (not e!574541))))

(assert (=> b!1020590 (= res!684156 (contains!5948 (t!30774 l!1367) lt!449887))))

(assert (= (and start!89014 res!684153) b!1020587))

(assert (= (and b!1020587 res!684152) b!1020586))

(assert (= (and b!1020586 res!684154) b!1020585))

(assert (= (and b!1020585 res!684155) b!1020590))

(assert (= (and b!1020590 res!684156) b!1020589))

(assert (= (and start!89014 (is-Cons!21753 l!1367)) b!1020588))

(declare-fun m!940573 () Bool)

(assert (=> start!89014 m!940573))

(declare-fun m!940575 () Bool)

(assert (=> b!1020585 m!940575))

(declare-fun m!940577 () Bool)

(assert (=> b!1020590 m!940577))

(declare-fun m!940579 () Bool)

(assert (=> b!1020589 m!940579))

(declare-fun m!940581 () Bool)

(assert (=> b!1020589 m!940581))

(declare-fun m!940583 () Bool)

(assert (=> b!1020589 m!940583))

(declare-fun m!940585 () Bool)

(assert (=> b!1020587 m!940585))

(push 1)

(assert (not b!1020588))

(assert (not start!89014))

(assert tp_is_empty!23809)

(assert (not b!1020589))

(assert (not b!1020590))

(assert (not b!1020587))

(assert (not b!1020585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122369 () Bool)

(declare-fun lt!449902 () Bool)

(declare-fun content!506 (List!21757) (Set tuple2!15546))

(assert (=> d!122369 (= lt!449902 (set.member lt!449887 (content!506 (t!30774 l!1367))))))

(declare-fun e!574575 () Bool)

(assert (=> d!122369 (= lt!449902 e!574575)))

(declare-fun res!684200 () Bool)

(assert (=> d!122369 (=> (not res!684200) (not e!574575))))

(assert (=> d!122369 (= res!684200 (is-Cons!21753 (t!30774 l!1367)))))

(assert (=> d!122369 (= (contains!5948 (t!30774 l!1367) lt!449887) lt!449902)))

(declare-fun b!1020639 () Bool)

(declare-fun e!574574 () Bool)

(assert (=> b!1020639 (= e!574575 e!574574)))

(declare-fun res!684199 () Bool)

(assert (=> b!1020639 (=> res!684199 e!574574)))

(assert (=> b!1020639 (= res!684199 (= (h!22951 (t!30774 l!1367)) lt!449887))))

(declare-fun b!1020640 () Bool)

(assert (=> b!1020640 (= e!574574 (contains!5948 (t!30774 (t!30774 l!1367)) lt!449887))))

(assert (= (and d!122369 res!684200) b!1020639))

(assert (= (and b!1020639 (not res!684199)) b!1020640))

(declare-fun m!940617 () Bool)

(assert (=> d!122369 m!940617))

(declare-fun m!940619 () Bool)

(assert (=> d!122369 m!940619))

(declare-fun m!940621 () Bool)

(assert (=> b!1020640 m!940621))

(assert (=> b!1020590 d!122369))

(declare-fun d!122377 () Bool)

(declare-fun res!684216 () Bool)

(declare-fun e!574591 () Bool)

(assert (=> d!122377 (=> res!684216 e!574591)))

(assert (=> d!122377 (= res!684216 (and (is-Cons!21753 l!1367) (= (_1!7783 (h!22951 l!1367)) key!393)))))

(assert (=> d!122377 (= (containsKey!554 l!1367 key!393) e!574591)))

(declare-fun b!1020656 () Bool)

(declare-fun e!574592 () Bool)

(assert (=> b!1020656 (= e!574591 e!574592)))

(declare-fun res!684217 () Bool)

(assert (=> b!1020656 (=> (not res!684217) (not e!574592))))

(assert (=> b!1020656 (= res!684217 (and (or (not (is-Cons!21753 l!1367)) (bvsle (_1!7783 (h!22951 l!1367)) key!393)) (is-Cons!21753 l!1367) (bvslt (_1!7783 (h!22951 l!1367)) key!393)))))

(declare-fun b!1020657 () Bool)

(assert (=> b!1020657 (= e!574592 (containsKey!554 (t!30774 l!1367) key!393))))

(assert (= (and d!122377 (not res!684216)) b!1020656))

(assert (= (and b!1020656 res!684217) b!1020657))

(assert (=> b!1020657 m!940581))

(assert (=> b!1020589 d!122377))

(declare-fun d!122385 () Bool)

(declare-fun res!684218 () Bool)

(declare-fun e!574593 () Bool)

(assert (=> d!122385 (=> res!684218 e!574593)))

(assert (=> d!122385 (= res!684218 (and (is-Cons!21753 (t!30774 l!1367)) (= (_1!7783 (h!22951 (t!30774 l!1367))) key!393)))))

(assert (=> d!122385 (= (containsKey!554 (t!30774 l!1367) key!393) e!574593)))

(declare-fun b!1020658 () Bool)

(declare-fun e!574594 () Bool)

(assert (=> b!1020658 (= e!574593 e!574594)))

(declare-fun res!684219 () Bool)

(assert (=> b!1020658 (=> (not res!684219) (not e!574594))))

(assert (=> b!1020658 (= res!684219 (and (or (not (is-Cons!21753 (t!30774 l!1367))) (bvsle (_1!7783 (h!22951 (t!30774 l!1367))) key!393)) (is-Cons!21753 (t!30774 l!1367)) (bvslt (_1!7783 (h!22951 (t!30774 l!1367))) key!393)))))

(declare-fun b!1020659 () Bool)

(assert (=> b!1020659 (= e!574594 (containsKey!554 (t!30774 (t!30774 l!1367)) key!393))))

(assert (= (and d!122385 (not res!684218)) b!1020658))

(assert (= (and b!1020658 res!684219) b!1020659))

(declare-fun m!940637 () Bool)

(assert (=> b!1020659 m!940637))

(assert (=> b!1020589 d!122385))

(declare-fun d!122387 () Bool)

(assert (=> d!122387 (containsKey!554 (t!30774 l!1367) key!393)))

(declare-fun lt!449915 () Unit!33264)

(declare-fun choose!1685 (List!21757 (_ BitVec 64) B!1742) Unit!33264)

(assert (=> d!122387 (= lt!449915 (choose!1685 (t!30774 l!1367) key!393 value!188))))

(declare-fun e!574612 () Bool)

(assert (=> d!122387 e!574612))

(declare-fun res!684236 () Bool)

(assert (=> d!122387 (=> (not res!684236) (not e!574612))))

(assert (=> d!122387 (= res!684236 (isStrictlySorted!704 (t!30774 l!1367)))))

(assert (=> d!122387 (= (lemmaContainsTupleThenContainsKey!13 (t!30774 l!1367) key!393 value!188) lt!449915)))

(declare-fun b!1020676 () Bool)

(assert (=> b!1020676 (= e!574612 (contains!5948 (t!30774 l!1367) (tuple2!15547 key!393 value!188)))))

(assert (= (and d!122387 res!684236) b!1020676))

(assert (=> d!122387 m!940581))

(declare-fun m!940645 () Bool)

(assert (=> d!122387 m!940645))

(assert (=> d!122387 m!940575))

(declare-fun m!940647 () Bool)

(assert (=> b!1020676 m!940647))

(assert (=> b!1020589 d!122387))

(declare-fun d!122393 () Bool)

(declare-fun res!684257 () Bool)

(declare-fun e!574632 () Bool)

(assert (=> d!122393 (=> res!684257 e!574632)))

(assert (=> d!122393 (= res!684257 (or (is-Nil!21754 (t!30774 l!1367)) (is-Nil!21754 (t!30774 (t!30774 l!1367)))))))

(assert (=> d!122393 (= (isStrictlySorted!704 (t!30774 l!1367)) e!574632)))

(declare-fun b!1020697 () Bool)

(declare-fun e!574633 () Bool)

(assert (=> b!1020697 (= e!574632 e!574633)))

(declare-fun res!684258 () Bool)

(assert (=> b!1020697 (=> (not res!684258) (not e!574633))))

(assert (=> b!1020697 (= res!684258 (bvslt (_1!7783 (h!22951 (t!30774 l!1367))) (_1!7783 (h!22951 (t!30774 (t!30774 l!1367))))))))

(declare-fun b!1020698 () Bool)

(assert (=> b!1020698 (= e!574633 (isStrictlySorted!704 (t!30774 (t!30774 l!1367))))))

(assert (= (and d!122393 (not res!684257)) b!1020697))

(assert (= (and b!1020697 res!684258) b!1020698))

(declare-fun m!940659 () Bool)

(assert (=> b!1020698 m!940659))

(assert (=> b!1020585 d!122393))

(declare-fun d!122403 () Bool)

(declare-fun res!684259 () Bool)

(declare-fun e!574634 () Bool)

(assert (=> d!122403 (=> res!684259 e!574634)))

(assert (=> d!122403 (= res!684259 (or (is-Nil!21754 l!1367) (is-Nil!21754 (t!30774 l!1367))))))

(assert (=> d!122403 (= (isStrictlySorted!704 l!1367) e!574634)))

(declare-fun b!1020699 () Bool)

(declare-fun e!574635 () Bool)

(assert (=> b!1020699 (= e!574634 e!574635)))

(declare-fun res!684260 () Bool)

(assert (=> b!1020699 (=> (not res!684260) (not e!574635))))

(assert (=> b!1020699 (= res!684260 (bvslt (_1!7783 (h!22951 l!1367)) (_1!7783 (h!22951 (t!30774 l!1367)))))))

(declare-fun b!1020700 () Bool)

(assert (=> b!1020700 (= e!574635 (isStrictlySorted!704 (t!30774 l!1367)))))

(assert (= (and d!122403 (not res!684259)) b!1020699))

(assert (= (and b!1020699 res!684260) b!1020700))

(assert (=> b!1020700 m!940575))

(assert (=> start!89014 d!122403))

(declare-fun d!122405 () Bool)

(declare-fun lt!449917 () Bool)

(assert (=> d!122405 (= lt!449917 (set.member lt!449887 (content!506 l!1367)))))

(declare-fun e!574639 () Bool)

(assert (=> d!122405 (= lt!449917 e!574639)))

(declare-fun res!684262 () Bool)

(assert (=> d!122405 (=> (not res!684262) (not e!574639))))

(assert (=> d!122405 (= res!684262 (is-Cons!21753 l!1367))))

(assert (=> d!122405 (= (contains!5948 l!1367 lt!449887) lt!449917)))

(declare-fun b!1020705 () Bool)

(declare-fun e!574638 () Bool)

(assert (=> b!1020705 (= e!574639 e!574638)))

(declare-fun res!684261 () Bool)

(assert (=> b!1020705 (=> res!684261 e!574638)))

(assert (=> b!1020705 (= res!684261 (= (h!22951 l!1367) lt!449887))))

(declare-fun b!1020706 () Bool)

(assert (=> b!1020706 (= e!574638 (contains!5948 (t!30774 l!1367) lt!449887))))

(assert (= (and d!122405 res!684262) b!1020705))

(assert (= (and b!1020705 (not res!684261)) b!1020706))

(declare-fun m!940661 () Bool)

(assert (=> d!122405 m!940661))

(declare-fun m!940663 () Bool)

(assert (=> d!122405 m!940663))

(assert (=> b!1020706 m!940577))

(assert (=> b!1020587 d!122405))

(declare-fun b!1020714 () Bool)

(declare-fun e!574645 () Bool)

(declare-fun tp!71303 () Bool)

(assert (=> b!1020714 (= e!574645 (and tp_is_empty!23809 tp!71303))))

(assert (=> b!1020588 (= tp!71291 e!574645)))

(assert (= (and b!1020588 (is-Cons!21753 (t!30774 l!1367))) b!1020714))

(push 1)

(assert (not d!122405))

(assert (not b!1020676))

(assert (not b!1020657))

(assert (not b!1020698))

(assert (not b!1020700))

(assert (not b!1020659))

(assert (not b!1020714))

(assert tp_is_empty!23809)

(assert (not d!122369))

(assert (not d!122387))

(assert (not b!1020640))

(assert (not b!1020706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


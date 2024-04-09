; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89016 () Bool)

(assert start!89016)

(declare-fun b!1020603 () Bool)

(declare-fun res!684168 () Bool)

(declare-fun e!574550 () Bool)

(assert (=> b!1020603 (=> (not res!684168) (not e!574550))))

(declare-datatypes ((B!1744 0))(
  ( (B!1745 (val!11956 Int)) )
))
(declare-datatypes ((tuple2!15548 0))(
  ( (tuple2!15549 (_1!7784 (_ BitVec 64)) (_2!7784 B!1744)) )
))
(declare-datatypes ((List!21758 0))(
  ( (Nil!21755) (Cons!21754 (h!22952 tuple2!15548) (t!30775 List!21758)) )
))
(declare-fun l!1367 () List!21758)

(declare-fun lt!449893 () tuple2!15548)

(get-info :version)

(assert (=> b!1020603 (= res!684168 (and ((_ is Cons!21754) l!1367) (not (= (h!22952 l!1367) lt!449893))))))

(declare-fun b!1020604 () Bool)

(declare-fun res!684169 () Bool)

(assert (=> b!1020604 (=> (not res!684169) (not e!574550))))

(declare-fun contains!5949 (List!21758 tuple2!15548) Bool)

(assert (=> b!1020604 (= res!684169 (contains!5949 (t!30775 l!1367) lt!449893))))

(declare-fun b!1020605 () Bool)

(declare-fun res!684167 () Bool)

(assert (=> b!1020605 (=> (not res!684167) (not e!574550))))

(declare-fun isStrictlySorted!705 (List!21758) Bool)

(assert (=> b!1020605 (= res!684167 (isStrictlySorted!705 (t!30775 l!1367)))))

(declare-fun b!1020606 () Bool)

(declare-fun e!574551 () Bool)

(declare-fun tp_is_empty!23811 () Bool)

(declare-fun tp!71294 () Bool)

(assert (=> b!1020606 (= e!574551 (and tp_is_empty!23811 tp!71294))))

(declare-fun b!1020607 () Bool)

(declare-fun key!393 () (_ BitVec 64))

(declare-fun containsKey!555 (List!21758 (_ BitVec 64)) Bool)

(assert (=> b!1020607 (= e!574550 (not (containsKey!555 l!1367 key!393)))))

(assert (=> b!1020607 (containsKey!555 (t!30775 l!1367) key!393)))

(declare-fun value!188 () B!1744)

(declare-datatypes ((Unit!33266 0))(
  ( (Unit!33267) )
))
(declare-fun lt!449892 () Unit!33266)

(declare-fun lemmaContainsTupleThenContainsKey!14 (List!21758 (_ BitVec 64) B!1744) Unit!33266)

(assert (=> b!1020607 (= lt!449892 (lemmaContainsTupleThenContainsKey!14 (t!30775 l!1367) key!393 value!188))))

(declare-fun res!684171 () Bool)

(declare-fun e!574552 () Bool)

(assert (=> start!89016 (=> (not res!684171) (not e!574552))))

(assert (=> start!89016 (= res!684171 (isStrictlySorted!705 l!1367))))

(assert (=> start!89016 e!574552))

(assert (=> start!89016 e!574551))

(assert (=> start!89016 true))

(assert (=> start!89016 tp_is_empty!23811))

(declare-fun b!1020608 () Bool)

(assert (=> b!1020608 (= e!574552 e!574550)))

(declare-fun res!684170 () Bool)

(assert (=> b!1020608 (=> (not res!684170) (not e!574550))))

(assert (=> b!1020608 (= res!684170 (contains!5949 l!1367 lt!449893))))

(assert (=> b!1020608 (= lt!449893 (tuple2!15549 key!393 value!188))))

(assert (= (and start!89016 res!684171) b!1020608))

(assert (= (and b!1020608 res!684170) b!1020603))

(assert (= (and b!1020603 res!684168) b!1020605))

(assert (= (and b!1020605 res!684167) b!1020604))

(assert (= (and b!1020604 res!684169) b!1020607))

(assert (= (and start!89016 ((_ is Cons!21754) l!1367)) b!1020606))

(declare-fun m!940587 () Bool)

(assert (=> b!1020605 m!940587))

(declare-fun m!940589 () Bool)

(assert (=> start!89016 m!940589))

(declare-fun m!940591 () Bool)

(assert (=> b!1020607 m!940591))

(declare-fun m!940593 () Bool)

(assert (=> b!1020607 m!940593))

(declare-fun m!940595 () Bool)

(assert (=> b!1020607 m!940595))

(declare-fun m!940597 () Bool)

(assert (=> b!1020604 m!940597))

(declare-fun m!940599 () Bool)

(assert (=> b!1020608 m!940599))

(check-sat (not b!1020604) tp_is_empty!23811 (not start!89016) (not b!1020607) (not b!1020606) (not b!1020605) (not b!1020608))
(check-sat)
(get-model)

(declare-fun d!122367 () Bool)

(declare-fun res!684195 () Bool)

(declare-fun e!574570 () Bool)

(assert (=> d!122367 (=> res!684195 e!574570)))

(assert (=> d!122367 (= res!684195 (and ((_ is Cons!21754) l!1367) (= (_1!7784 (h!22952 l!1367)) key!393)))))

(assert (=> d!122367 (= (containsKey!555 l!1367 key!393) e!574570)))

(declare-fun b!1020635 () Bool)

(declare-fun e!574571 () Bool)

(assert (=> b!1020635 (= e!574570 e!574571)))

(declare-fun res!684196 () Bool)

(assert (=> b!1020635 (=> (not res!684196) (not e!574571))))

(assert (=> b!1020635 (= res!684196 (and (or (not ((_ is Cons!21754) l!1367)) (bvsle (_1!7784 (h!22952 l!1367)) key!393)) ((_ is Cons!21754) l!1367) (bvslt (_1!7784 (h!22952 l!1367)) key!393)))))

(declare-fun b!1020636 () Bool)

(assert (=> b!1020636 (= e!574571 (containsKey!555 (t!30775 l!1367) key!393))))

(assert (= (and d!122367 (not res!684195)) b!1020635))

(assert (= (and b!1020635 res!684196) b!1020636))

(assert (=> b!1020636 m!940593))

(assert (=> b!1020607 d!122367))

(declare-fun d!122373 () Bool)

(declare-fun res!684197 () Bool)

(declare-fun e!574572 () Bool)

(assert (=> d!122373 (=> res!684197 e!574572)))

(assert (=> d!122373 (= res!684197 (and ((_ is Cons!21754) (t!30775 l!1367)) (= (_1!7784 (h!22952 (t!30775 l!1367))) key!393)))))

(assert (=> d!122373 (= (containsKey!555 (t!30775 l!1367) key!393) e!574572)))

(declare-fun b!1020637 () Bool)

(declare-fun e!574573 () Bool)

(assert (=> b!1020637 (= e!574572 e!574573)))

(declare-fun res!684198 () Bool)

(assert (=> b!1020637 (=> (not res!684198) (not e!574573))))

(assert (=> b!1020637 (= res!684198 (and (or (not ((_ is Cons!21754) (t!30775 l!1367))) (bvsle (_1!7784 (h!22952 (t!30775 l!1367))) key!393)) ((_ is Cons!21754) (t!30775 l!1367)) (bvslt (_1!7784 (h!22952 (t!30775 l!1367))) key!393)))))

(declare-fun b!1020638 () Bool)

(assert (=> b!1020638 (= e!574573 (containsKey!555 (t!30775 (t!30775 l!1367)) key!393))))

(assert (= (and d!122373 (not res!684197)) b!1020637))

(assert (= (and b!1020637 res!684198) b!1020638))

(declare-fun m!940615 () Bool)

(assert (=> b!1020638 m!940615))

(assert (=> b!1020607 d!122373))

(declare-fun d!122375 () Bool)

(assert (=> d!122375 (containsKey!555 (t!30775 l!1367) key!393)))

(declare-fun lt!449909 () Unit!33266)

(declare-fun choose!1684 (List!21758 (_ BitVec 64) B!1744) Unit!33266)

(assert (=> d!122375 (= lt!449909 (choose!1684 (t!30775 l!1367) key!393 value!188))))

(declare-fun e!574590 () Bool)

(assert (=> d!122375 e!574590))

(declare-fun res!684215 () Bool)

(assert (=> d!122375 (=> (not res!684215) (not e!574590))))

(assert (=> d!122375 (= res!684215 (isStrictlySorted!705 (t!30775 l!1367)))))

(assert (=> d!122375 (= (lemmaContainsTupleThenContainsKey!14 (t!30775 l!1367) key!393 value!188) lt!449909)))

(declare-fun b!1020655 () Bool)

(assert (=> b!1020655 (= e!574590 (contains!5949 (t!30775 l!1367) (tuple2!15549 key!393 value!188)))))

(assert (= (and d!122375 res!684215) b!1020655))

(assert (=> d!122375 m!940593))

(declare-fun m!940633 () Bool)

(assert (=> d!122375 m!940633))

(assert (=> d!122375 m!940587))

(declare-fun m!940635 () Bool)

(assert (=> b!1020655 m!940635))

(assert (=> b!1020607 d!122375))

(declare-fun d!122383 () Bool)

(declare-fun lt!449914 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!508 (List!21758) (InoxSet tuple2!15548))

(assert (=> d!122383 (= lt!449914 (select (content!508 l!1367) lt!449893))))

(declare-fun e!574608 () Bool)

(assert (=> d!122383 (= lt!449914 e!574608)))

(declare-fun res!684233 () Bool)

(assert (=> d!122383 (=> (not res!684233) (not e!574608))))

(assert (=> d!122383 (= res!684233 ((_ is Cons!21754) l!1367))))

(assert (=> d!122383 (= (contains!5949 l!1367 lt!449893) lt!449914)))

(declare-fun b!1020672 () Bool)

(declare-fun e!574607 () Bool)

(assert (=> b!1020672 (= e!574608 e!574607)))

(declare-fun res!684232 () Bool)

(assert (=> b!1020672 (=> res!684232 e!574607)))

(assert (=> b!1020672 (= res!684232 (= (h!22952 l!1367) lt!449893))))

(declare-fun b!1020673 () Bool)

(assert (=> b!1020673 (= e!574607 (contains!5949 (t!30775 l!1367) lt!449893))))

(assert (= (and d!122383 res!684233) b!1020672))

(assert (= (and b!1020672 (not res!684232)) b!1020673))

(declare-fun m!940641 () Bool)

(assert (=> d!122383 m!940641))

(declare-fun m!940643 () Bool)

(assert (=> d!122383 m!940643))

(assert (=> b!1020673 m!940597))

(assert (=> b!1020608 d!122383))

(declare-fun d!122391 () Bool)

(declare-fun res!684251 () Bool)

(declare-fun e!574626 () Bool)

(assert (=> d!122391 (=> res!684251 e!574626)))

(assert (=> d!122391 (= res!684251 (or ((_ is Nil!21755) l!1367) ((_ is Nil!21755) (t!30775 l!1367))))))

(assert (=> d!122391 (= (isStrictlySorted!705 l!1367) e!574626)))

(declare-fun b!1020691 () Bool)

(declare-fun e!574627 () Bool)

(assert (=> b!1020691 (= e!574626 e!574627)))

(declare-fun res!684252 () Bool)

(assert (=> b!1020691 (=> (not res!684252) (not e!574627))))

(assert (=> b!1020691 (= res!684252 (bvslt (_1!7784 (h!22952 l!1367)) (_1!7784 (h!22952 (t!30775 l!1367)))))))

(declare-fun b!1020692 () Bool)

(assert (=> b!1020692 (= e!574627 (isStrictlySorted!705 (t!30775 l!1367)))))

(assert (= (and d!122391 (not res!684251)) b!1020691))

(assert (= (and b!1020691 res!684252) b!1020692))

(assert (=> b!1020692 m!940587))

(assert (=> start!89016 d!122391))

(declare-fun d!122399 () Bool)

(declare-fun res!684253 () Bool)

(declare-fun e!574628 () Bool)

(assert (=> d!122399 (=> res!684253 e!574628)))

(assert (=> d!122399 (= res!684253 (or ((_ is Nil!21755) (t!30775 l!1367)) ((_ is Nil!21755) (t!30775 (t!30775 l!1367)))))))

(assert (=> d!122399 (= (isStrictlySorted!705 (t!30775 l!1367)) e!574628)))

(declare-fun b!1020693 () Bool)

(declare-fun e!574629 () Bool)

(assert (=> b!1020693 (= e!574628 e!574629)))

(declare-fun res!684254 () Bool)

(assert (=> b!1020693 (=> (not res!684254) (not e!574629))))

(assert (=> b!1020693 (= res!684254 (bvslt (_1!7784 (h!22952 (t!30775 l!1367))) (_1!7784 (h!22952 (t!30775 (t!30775 l!1367))))))))

(declare-fun b!1020694 () Bool)

(assert (=> b!1020694 (= e!574629 (isStrictlySorted!705 (t!30775 (t!30775 l!1367))))))

(assert (= (and d!122399 (not res!684253)) b!1020693))

(assert (= (and b!1020693 res!684254) b!1020694))

(declare-fun m!940651 () Bool)

(assert (=> b!1020694 m!940651))

(assert (=> b!1020605 d!122399))

(declare-fun d!122401 () Bool)

(declare-fun lt!449916 () Bool)

(assert (=> d!122401 (= lt!449916 (select (content!508 (t!30775 l!1367)) lt!449893))))

(declare-fun e!574631 () Bool)

(assert (=> d!122401 (= lt!449916 e!574631)))

(declare-fun res!684256 () Bool)

(assert (=> d!122401 (=> (not res!684256) (not e!574631))))

(assert (=> d!122401 (= res!684256 ((_ is Cons!21754) (t!30775 l!1367)))))

(assert (=> d!122401 (= (contains!5949 (t!30775 l!1367) lt!449893) lt!449916)))

(declare-fun b!1020695 () Bool)

(declare-fun e!574630 () Bool)

(assert (=> b!1020695 (= e!574631 e!574630)))

(declare-fun res!684255 () Bool)

(assert (=> b!1020695 (=> res!684255 e!574630)))

(assert (=> b!1020695 (= res!684255 (= (h!22952 (t!30775 l!1367)) lt!449893))))

(declare-fun b!1020696 () Bool)

(assert (=> b!1020696 (= e!574630 (contains!5949 (t!30775 (t!30775 l!1367)) lt!449893))))

(assert (= (and d!122401 res!684256) b!1020695))

(assert (= (and b!1020695 (not res!684255)) b!1020696))

(declare-fun m!940653 () Bool)

(assert (=> d!122401 m!940653))

(declare-fun m!940655 () Bool)

(assert (=> d!122401 m!940655))

(declare-fun m!940657 () Bool)

(assert (=> b!1020696 m!940657))

(assert (=> b!1020604 d!122401))

(declare-fun b!1020707 () Bool)

(declare-fun e!574640 () Bool)

(declare-fun tp!71300 () Bool)

(assert (=> b!1020707 (= e!574640 (and tp_is_empty!23811 tp!71300))))

(assert (=> b!1020606 (= tp!71294 e!574640)))

(assert (= (and b!1020606 ((_ is Cons!21754) (t!30775 l!1367))) b!1020707))

(check-sat (not d!122383) (not b!1020694) (not b!1020638) tp_is_empty!23811 (not b!1020636) (not d!122375) (not b!1020655) (not b!1020707) (not d!122401) (not b!1020692) (not b!1020696) (not b!1020673))
(check-sat)

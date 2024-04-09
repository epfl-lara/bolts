; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137222 () Bool)

(assert start!137222)

(declare-fun b!1580421 () Bool)

(declare-fun res!1079772 () Bool)

(declare-fun e!881713 () Bool)

(assert (=> b!1580421 (=> (not res!1079772) (not e!881713))))

(declare-fun key!405 () (_ BitVec 64))

(declare-datatypes ((B!2670 0))(
  ( (B!2671 (val!19697 Int)) )
))
(declare-datatypes ((tuple2!25688 0))(
  ( (tuple2!25689 (_1!12854 (_ BitVec 64)) (_2!12854 B!2670)) )
))
(declare-datatypes ((List!36978 0))(
  ( (Nil!36975) (Cons!36974 (h!38518 tuple2!25688) (t!51899 List!36978)) )
))
(declare-fun l!1390 () List!36978)

(declare-fun value!194 () B!2670)

(declare-fun contains!10506 (List!36978 tuple2!25688) Bool)

(assert (=> b!1580421 (= res!1079772 (contains!10506 l!1390 (tuple2!25689 key!405 value!194)))))

(declare-fun b!1580422 () Bool)

(declare-fun e!881714 () Bool)

(declare-datatypes ((Option!907 0))(
  ( (Some!906 (v!22403 B!2670)) (None!905) )
))
(declare-fun getValueByKey!818 (List!36978 (_ BitVec 64)) Option!907)

(assert (=> b!1580422 (= e!881714 (not (= (getValueByKey!818 l!1390 key!405) (Some!906 value!194))))))

(declare-fun res!1079771 () Bool)

(assert (=> start!137222 (=> (not res!1079771) (not e!881713))))

(declare-fun isStrictlySorted!1073 (List!36978) Bool)

(assert (=> start!137222 (= res!1079771 (isStrictlySorted!1073 l!1390))))

(assert (=> start!137222 e!881713))

(declare-fun e!881715 () Bool)

(assert (=> start!137222 e!881715))

(assert (=> start!137222 true))

(declare-fun tp_is_empty!39215 () Bool)

(assert (=> start!137222 tp_is_empty!39215))

(declare-fun b!1580423 () Bool)

(declare-fun tp!114493 () Bool)

(assert (=> b!1580423 (= e!881715 (and tp_is_empty!39215 tp!114493))))

(declare-fun b!1580424 () Bool)

(assert (=> b!1580424 (= e!881713 e!881714)))

(declare-fun res!1079770 () Bool)

(assert (=> b!1580424 (=> (not res!1079770) (not e!881714))))

(declare-datatypes ((tuple2!25690 0))(
  ( (tuple2!25691 (_1!12855 tuple2!25688) (_2!12855 List!36978)) )
))
(declare-datatypes ((Option!908 0))(
  ( (Some!907 (v!22404 tuple2!25690)) (None!906) )
))
(declare-fun lt!676714 () Option!908)

(declare-fun isEmpty!1170 (Option!908) Bool)

(assert (=> b!1580424 (= res!1079770 (not (isEmpty!1170 lt!676714)))))

(declare-fun unapply!84 (List!36978) Option!908)

(assert (=> b!1580424 (= lt!676714 (unapply!84 l!1390))))

(declare-fun b!1580425 () Bool)

(declare-fun res!1079773 () Bool)

(assert (=> b!1580425 (=> (not res!1079773) (not e!881714))))

(declare-fun get!26823 (Option!908) tuple2!25690)

(assert (=> b!1580425 (= res!1079773 (is-Nil!36975 (_2!12855 (get!26823 lt!676714))))))

(declare-fun b!1580426 () Bool)

(declare-fun res!1079774 () Bool)

(assert (=> b!1580426 (=> (not res!1079774) (not e!881713))))

(declare-fun containsKey!919 (List!36978 (_ BitVec 64)) Bool)

(assert (=> b!1580426 (= res!1079774 (containsKey!919 l!1390 key!405))))

(assert (= (and start!137222 res!1079771) b!1580426))

(assert (= (and b!1580426 res!1079774) b!1580421))

(assert (= (and b!1580421 res!1079772) b!1580424))

(assert (= (and b!1580424 res!1079770) b!1580425))

(assert (= (and b!1580425 res!1079773) b!1580422))

(assert (= (and start!137222 (is-Cons!36974 l!1390)) b!1580423))

(declare-fun m!1451835 () Bool)

(assert (=> b!1580424 m!1451835))

(declare-fun m!1451837 () Bool)

(assert (=> b!1580424 m!1451837))

(declare-fun m!1451839 () Bool)

(assert (=> b!1580425 m!1451839))

(declare-fun m!1451841 () Bool)

(assert (=> start!137222 m!1451841))

(declare-fun m!1451843 () Bool)

(assert (=> b!1580422 m!1451843))

(declare-fun m!1451845 () Bool)

(assert (=> b!1580421 m!1451845))

(declare-fun m!1451847 () Bool)

(assert (=> b!1580426 m!1451847))

(push 1)

(assert (not b!1580425))

(assert (not b!1580422))

(assert (not b!1580423))

(assert (not b!1580424))

(assert tp_is_empty!39215)

(assert (not start!137222))

(assert (not b!1580426))

(assert (not b!1580421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1580448 () Bool)

(declare-fun e!881731 () Option!907)

(assert (=> b!1580448 (= e!881731 None!905)))

(declare-fun b!1580447 () Bool)

(assert (=> b!1580447 (= e!881731 (getValueByKey!818 (t!51899 l!1390) key!405))))

(declare-fun d!166369 () Bool)

(declare-fun c!146471 () Bool)

(assert (=> d!166369 (= c!146471 (and (is-Cons!36974 l!1390) (= (_1!12854 (h!38518 l!1390)) key!405)))))

(declare-fun e!881730 () Option!907)

(assert (=> d!166369 (= (getValueByKey!818 l!1390 key!405) e!881730)))

(declare-fun b!1580446 () Bool)

(assert (=> b!1580446 (= e!881730 e!881731)))

(declare-fun c!146472 () Bool)

(assert (=> b!1580446 (= c!146472 (and (is-Cons!36974 l!1390) (not (= (_1!12854 (h!38518 l!1390)) key!405))))))

(declare-fun b!1580445 () Bool)

(assert (=> b!1580445 (= e!881730 (Some!906 (_2!12854 (h!38518 l!1390))))))

(assert (= (and d!166369 c!146471) b!1580445))

(assert (= (and d!166369 (not c!146471)) b!1580446))

(assert (= (and b!1580446 c!146472) b!1580447))

(assert (= (and b!1580446 (not c!146472)) b!1580448))

(declare-fun m!1451855 () Bool)

(assert (=> b!1580447 m!1451855))

(assert (=> b!1580422 d!166369))

(declare-fun d!166379 () Bool)

(declare-fun res!1079801 () Bool)

(declare-fun e!881748 () Bool)

(assert (=> d!166379 (=> res!1079801 e!881748)))

(assert (=> d!166379 (= res!1079801 (and (is-Cons!36974 l!1390) (= (_1!12854 (h!38518 l!1390)) key!405)))))

(assert (=> d!166379 (= (containsKey!919 l!1390 key!405) e!881748)))

(declare-fun b!1580465 () Bool)

(declare-fun e!881749 () Bool)

(assert (=> b!1580465 (= e!881748 e!881749)))

(declare-fun res!1079802 () Bool)

(assert (=> b!1580465 (=> (not res!1079802) (not e!881749))))

(assert (=> b!1580465 (= res!1079802 (and (or (not (is-Cons!36974 l!1390)) (bvsle (_1!12854 (h!38518 l!1390)) key!405)) (is-Cons!36974 l!1390) (bvslt (_1!12854 (h!38518 l!1390)) key!405)))))

(declare-fun b!1580466 () Bool)

(assert (=> b!1580466 (= e!881749 (containsKey!919 (t!51899 l!1390) key!405))))

(assert (= (and d!166379 (not res!1079801)) b!1580465))

(assert (= (and b!1580465 res!1079802) b!1580466))

(declare-fun m!1451861 () Bool)

(assert (=> b!1580466 m!1451861))

(assert (=> b!1580426 d!166379))

(declare-fun d!166385 () Bool)

(declare-fun lt!676722 () Bool)

(declare-fun content!840 (List!36978) (Set tuple2!25688))

(assert (=> d!166385 (= lt!676722 (member (tuple2!25689 key!405 value!194) (content!840 l!1390)))))

(declare-fun e!881764 () Bool)

(assert (=> d!166385 (= lt!676722 e!881764)))

(declare-fun res!1079814 () Bool)

(assert (=> d!166385 (=> (not res!1079814) (not e!881764))))

(assert (=> d!166385 (= res!1079814 (is-Cons!36974 l!1390))))

(assert (=> d!166385 (= (contains!10506 l!1390 (tuple2!25689 key!405 value!194)) lt!676722)))

(declare-fun b!1580485 () Bool)

(declare-fun e!881765 () Bool)

(assert (=> b!1580485 (= e!881764 e!881765)))

(declare-fun res!1079813 () Bool)

(assert (=> b!1580485 (=> res!1079813 e!881765)))

(assert (=> b!1580485 (= res!1079813 (= (h!38518 l!1390) (tuple2!25689 key!405 value!194)))))

(declare-fun b!1580486 () Bool)

(assert (=> b!1580486 (= e!881765 (contains!10506 (t!51899 l!1390) (tuple2!25689 key!405 value!194)))))

(assert (= (and d!166385 res!1079814) b!1580485))

(assert (= (and b!1580485 (not res!1079813)) b!1580486))

(declare-fun m!1451865 () Bool)

(assert (=> d!166385 m!1451865))

(declare-fun m!1451867 () Bool)

(assert (=> d!166385 m!1451867))

(declare-fun m!1451869 () Bool)

(assert (=> b!1580486 m!1451869))

(assert (=> b!1580421 d!166385))

(declare-fun d!166395 () Bool)

(assert (=> d!166395 (= (get!26823 lt!676714) (v!22404 lt!676714))))

(assert (=> b!1580425 d!166395))

(declare-fun d!166397 () Bool)

(declare-fun res!1079821 () Bool)

(declare-fun e!881778 () Bool)

(assert (=> d!166397 (=> res!1079821 e!881778)))

(assert (=> d!166397 (= res!1079821 (or (is-Nil!36975 l!1390) (is-Nil!36975 (t!51899 l!1390))))))

(assert (=> d!166397 (= (isStrictlySorted!1073 l!1390) e!881778)))

(declare-fun b!1580505 () Bool)

(declare-fun e!881779 () Bool)

(assert (=> b!1580505 (= e!881778 e!881779)))

(declare-fun res!1079822 () Bool)

(assert (=> b!1580505 (=> (not res!1079822) (not e!881779))))

(assert (=> b!1580505 (= res!1079822 (bvslt (_1!12854 (h!38518 l!1390)) (_1!12854 (h!38518 (t!51899 l!1390)))))))

(declare-fun b!1580506 () Bool)

(assert (=> b!1580506 (= e!881779 (isStrictlySorted!1073 (t!51899 l!1390)))))

(assert (= (and d!166397 (not res!1079821)) b!1580505))

(assert (= (and b!1580505 res!1079822) b!1580506))

(declare-fun m!1451879 () Bool)

(assert (=> b!1580506 m!1451879))

(assert (=> start!137222 d!166397))

(declare-fun d!166405 () Bool)

(assert (=> d!166405 (= (isEmpty!1170 lt!676714) (not (is-Some!907 lt!676714)))))

(assert (=> b!1580424 d!166405))

(declare-fun d!166407 () Bool)

(assert (=> d!166407 (= (unapply!84 l!1390) (ite (is-Nil!36975 l!1390) None!906 (Some!907 (tuple2!25691 (h!38518 l!1390) (t!51899 l!1390)))))))

(assert (=> b!1580424 d!166407))

(declare-fun b!1580531 () Bool)

(declare-fun e!881796 () Bool)

(declare-fun tp!114502 () Bool)

(assert (=> b!1580531 (= e!881796 (and tp_is_empty!39215 tp!114502))))

(assert (=> b!1580423 (= tp!114493 e!881796)))

(assert (= (and b!1580423 (is-Cons!36974 (t!51899 l!1390))) b!1580531))

(push 1)

(assert (not b!1580531))

(assert (not b!1580447))

(assert (not b!1580506))

(assert (not b!1580466))

(assert tp_is_empty!39215)

(assert (not b!1580486))

(assert (not d!166385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166419 () Bool)

(declare-fun c!146492 () Bool)

(assert (=> d!166419 (= c!146492 (is-Nil!36975 l!1390))))

(declare-fun e!881811 () (Set tuple2!25688))

(assert (=> d!166419 (= (content!840 l!1390) e!881811)))

(declare-fun b!1580553 () Bool)

(assert (=> b!1580553 (= e!881811 (as emptyset (Set tuple2!25688)))))

(declare-fun b!1580554 () Bool)

(assert (=> b!1580554 (= e!881811 (union (insert (h!38518 l!1390) (as emptyset (Set tuple2!25688))) (content!840 (t!51899 l!1390))))))

(assert (= (and d!166419 c!146492) b!1580553))

(assert (= (and d!166419 (not c!146492)) b!1580554))

(declare-fun m!1451899 () Bool)

(assert (=> b!1580554 m!1451899))

(declare-fun m!1451901 () Bool)

(assert (=> b!1580554 m!1451901))

(assert (=> d!166385 d!166419))

(declare-fun lt!676725 () Bool)

(declare-fun d!166421 () Bool)

(assert (=> d!166421 (= lt!676725 (member (tuple2!25689 key!405 value!194) (content!840 (t!51899 l!1390))))))

(declare-fun e!881812 () Bool)

(assert (=> d!166421 (= lt!676725 e!881812)))

(declare-fun res!1079836 () Bool)

(assert (=> d!166421 (=> (not res!1079836) (not e!881812))))

(assert (=> d!166421 (= res!1079836 (is-Cons!36974 (t!51899 l!1390)))))

(assert (=> d!166421 (= (contains!10506 (t!51899 l!1390) (tuple2!25689 key!405 value!194)) lt!676725)))

(declare-fun b!1580555 () Bool)

(declare-fun e!881813 () Bool)

(assert (=> b!1580555 (= e!881812 e!881813)))

(declare-fun res!1079835 () Bool)

(assert (=> b!1580555 (=> res!1079835 e!881813)))

(assert (=> b!1580555 (= res!1079835 (= (h!38518 (t!51899 l!1390)) (tuple2!25689 key!405 value!194)))))

(declare-fun b!1580556 () Bool)

(assert (=> b!1580556 (= e!881813 (contains!10506 (t!51899 (t!51899 l!1390)) (tuple2!25689 key!405 value!194)))))

(assert (= (and d!166421 res!1079836) b!1580555))

(assert (= (and b!1580555 (not res!1079835)) b!1580556))

(assert (=> d!166421 m!1451901))

(declare-fun m!1451903 () Bool)

(assert (=> d!166421 m!1451903))

(declare-fun m!1451905 () Bool)

(assert (=> b!1580556 m!1451905))

(assert (=> b!1580486 d!166421))

(declare-fun d!166423 () Bool)

(declare-fun res!1079837 () Bool)

(declare-fun e!881814 () Bool)

(assert (=> d!166423 (=> res!1079837 e!881814)))

(assert (=> d!166423 (= res!1079837 (or (is-Nil!36975 (t!51899 l!1390)) (is-Nil!36975 (t!51899 (t!51899 l!1390)))))))

(assert (=> d!166423 (= (isStrictlySorted!1073 (t!51899 l!1390)) e!881814)))

(declare-fun b!1580557 () Bool)

(declare-fun e!881815 () Bool)

(assert (=> b!1580557 (= e!881814 e!881815)))

(declare-fun res!1079838 () Bool)

(assert (=> b!1580557 (=> (not res!1079838) (not e!881815))))

(assert (=> b!1580557 (= res!1079838 (bvslt (_1!12854 (h!38518 (t!51899 l!1390))) (_1!12854 (h!38518 (t!51899 (t!51899 l!1390))))))))

(declare-fun b!1580558 () Bool)

(assert (=> b!1580558 (= e!881815 (isStrictlySorted!1073 (t!51899 (t!51899 l!1390))))))

(assert (= (and d!166423 (not res!1079837)) b!1580557))

(assert (= (and b!1580557 res!1079838) b!1580558))

(declare-fun m!1451907 () Bool)

(assert (=> b!1580558 m!1451907))

(assert (=> b!1580506 d!166423))

(declare-fun d!166425 () Bool)

(declare-fun res!1079839 () Bool)

(declare-fun e!881816 () Bool)

(assert (=> d!166425 (=> res!1079839 e!881816)))

(assert (=> d!166425 (= res!1079839 (and (is-Cons!36974 (t!51899 l!1390)) (= (_1!12854 (h!38518 (t!51899 l!1390))) key!405)))))

(assert (=> d!166425 (= (containsKey!919 (t!51899 l!1390) key!405) e!881816)))

(declare-fun b!1580559 () Bool)

(declare-fun e!881817 () Bool)

(assert (=> b!1580559 (= e!881816 e!881817)))

(declare-fun res!1079840 () Bool)

(assert (=> b!1580559 (=> (not res!1079840) (not e!881817))))

(assert (=> b!1580559 (= res!1079840 (and (or (not (is-Cons!36974 (t!51899 l!1390))) (bvsle (_1!12854 (h!38518 (t!51899 l!1390))) key!405)) (is-Cons!36974 (t!51899 l!1390)) (bvslt (_1!12854 (h!38518 (t!51899 l!1390))) key!405)))))

(declare-fun b!1580560 () Bool)

(assert (=> b!1580560 (= e!881817 (containsKey!919 (t!51899 (t!51899 l!1390)) key!405))))

(assert (= (and d!166425 (not res!1079839)) b!1580559))

(assert (= (and b!1580559 res!1079840) b!1580560))

(declare-fun m!1451909 () Bool)

(assert (=> b!1580560 m!1451909))

(assert (=> b!1580466 d!166425))

(declare-fun b!1580564 () Bool)

(declare-fun e!881819 () Option!907)

(assert (=> b!1580564 (= e!881819 None!905)))

(declare-fun b!1580563 () Bool)

(assert (=> b!1580563 (= e!881819 (getValueByKey!818 (t!51899 (t!51899 l!1390)) key!405))))

(declare-fun d!166427 () Bool)

(declare-fun c!146493 () Bool)

(assert (=> d!166427 (= c!146493 (and (is-Cons!36974 (t!51899 l!1390)) (= (_1!12854 (h!38518 (t!51899 l!1390))) key!405)))))

(declare-fun e!881818 () Option!907)

(assert (=> d!166427 (= (getValueByKey!818 (t!51899 l!1390) key!405) e!881818)))

(declare-fun b!1580562 () Bool)

(assert (=> b!1580562 (= e!881818 e!881819)))

(declare-fun c!146494 () Bool)

(assert (=> b!1580562 (= c!146494 (and (is-Cons!36974 (t!51899 l!1390)) (not (= (_1!12854 (h!38518 (t!51899 l!1390))) key!405))))))

(declare-fun b!1580561 () Bool)

(assert (=> b!1580561 (= e!881818 (Some!906 (_2!12854 (h!38518 (t!51899 l!1390)))))))

(assert (= (and d!166427 c!146493) b!1580561))


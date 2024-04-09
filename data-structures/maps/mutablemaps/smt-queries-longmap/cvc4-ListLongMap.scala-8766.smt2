; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106520 () Bool)

(assert start!106520)

(declare-fun b!1265757 () Bool)

(declare-fun res!842861 () Bool)

(declare-fun e!720900 () Bool)

(assert (=> b!1265757 (=> (not res!842861) (not e!720900))))

(declare-datatypes ((B!1992 0))(
  ( (B!1993 (val!16331 Int)) )
))
(declare-datatypes ((tuple2!21330 0))(
  ( (tuple2!21331 (_1!10675 (_ BitVec 64)) (_2!10675 B!1992)) )
))
(declare-datatypes ((List!28498 0))(
  ( (Nil!28495) (Cons!28494 (h!29703 tuple2!21330) (t!42026 List!28498)) )
))
(declare-fun l!706 () List!28498)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!655 (List!28498 (_ BitVec 64)) Bool)

(assert (=> b!1265757 (= res!842861 (not (containsKey!655 (t!42026 l!706) key1!31)))))

(declare-fun b!1265758 () Bool)

(declare-fun res!842863 () Bool)

(assert (=> b!1265758 (=> (not res!842863) (not e!720900))))

(assert (=> b!1265758 (= res!842863 (not (containsKey!655 l!706 key1!31)))))

(declare-fun b!1265759 () Bool)

(declare-fun res!842862 () Bool)

(assert (=> b!1265759 (=> (not res!842862) (not e!720900))))

(assert (=> b!1265759 (= res!842862 (is-Cons!28494 l!706))))

(declare-fun res!842860 () Bool)

(assert (=> start!106520 (=> (not res!842860) (not e!720900))))

(declare-fun isStrictlySorted!794 (List!28498) Bool)

(assert (=> start!106520 (= res!842860 (isStrictlySorted!794 l!706))))

(assert (=> start!106520 e!720900))

(declare-fun e!720901 () Bool)

(assert (=> start!106520 e!720901))

(assert (=> start!106520 true))

(declare-fun b!1265760 () Bool)

(declare-fun res!842859 () Bool)

(assert (=> b!1265760 (=> (not res!842859) (not e!720900))))

(assert (=> b!1265760 (= res!842859 (isStrictlySorted!794 (t!42026 l!706)))))

(declare-fun b!1265761 () Bool)

(declare-fun tp_is_empty!32525 () Bool)

(declare-fun tp!96399 () Bool)

(assert (=> b!1265761 (= e!720901 (and tp_is_empty!32525 tp!96399))))

(declare-fun b!1265762 () Bool)

(declare-fun ListPrimitiveSize!156 (List!28498) Int)

(assert (=> b!1265762 (= e!720900 (>= (ListPrimitiveSize!156 (t!42026 l!706)) (ListPrimitiveSize!156 l!706)))))

(assert (= (and start!106520 res!842860) b!1265758))

(assert (= (and b!1265758 res!842863) b!1265759))

(assert (= (and b!1265759 res!842862) b!1265760))

(assert (= (and b!1265760 res!842859) b!1265757))

(assert (= (and b!1265757 res!842861) b!1265762))

(assert (= (and start!106520 (is-Cons!28494 l!706)) b!1265761))

(declare-fun m!1165719 () Bool)

(assert (=> start!106520 m!1165719))

(declare-fun m!1165721 () Bool)

(assert (=> b!1265757 m!1165721))

(declare-fun m!1165723 () Bool)

(assert (=> b!1265762 m!1165723))

(declare-fun m!1165725 () Bool)

(assert (=> b!1265762 m!1165725))

(declare-fun m!1165727 () Bool)

(assert (=> b!1265758 m!1165727))

(declare-fun m!1165729 () Bool)

(assert (=> b!1265760 m!1165729))

(push 1)

(assert (not b!1265761))

(assert (not start!106520))

(assert (not b!1265758))

(assert (not b!1265757))

(assert (not b!1265760))

(assert (not b!1265762))

(assert tp_is_empty!32525)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138915 () Bool)

(declare-fun res!842874 () Bool)

(declare-fun e!720916 () Bool)

(assert (=> d!138915 (=> res!842874 e!720916)))

(assert (=> d!138915 (= res!842874 (or (is-Nil!28495 (t!42026 l!706)) (is-Nil!28495 (t!42026 (t!42026 l!706)))))))

(assert (=> d!138915 (= (isStrictlySorted!794 (t!42026 l!706)) e!720916)))

(declare-fun b!1265781 () Bool)

(declare-fun e!720917 () Bool)

(assert (=> b!1265781 (= e!720916 e!720917)))

(declare-fun res!842875 () Bool)

(assert (=> b!1265781 (=> (not res!842875) (not e!720917))))

(assert (=> b!1265781 (= res!842875 (bvslt (_1!10675 (h!29703 (t!42026 l!706))) (_1!10675 (h!29703 (t!42026 (t!42026 l!706))))))))

(declare-fun b!1265782 () Bool)

(assert (=> b!1265782 (= e!720917 (isStrictlySorted!794 (t!42026 (t!42026 l!706))))))

(assert (= (and d!138915 (not res!842874)) b!1265781))

(assert (= (and b!1265781 res!842875) b!1265782))

(declare-fun m!1165735 () Bool)

(assert (=> b!1265782 m!1165735))

(assert (=> b!1265760 d!138915))

(declare-fun d!138923 () Bool)

(declare-fun res!842880 () Bool)

(declare-fun e!720922 () Bool)

(assert (=> d!138923 (=> res!842880 e!720922)))

(assert (=> d!138923 (= res!842880 (or (is-Nil!28495 l!706) (is-Nil!28495 (t!42026 l!706))))))

(assert (=> d!138923 (= (isStrictlySorted!794 l!706) e!720922)))

(declare-fun b!1265787 () Bool)

(declare-fun e!720923 () Bool)

(assert (=> b!1265787 (= e!720922 e!720923)))

(declare-fun res!842881 () Bool)

(assert (=> b!1265787 (=> (not res!842881) (not e!720923))))

(assert (=> b!1265787 (= res!842881 (bvslt (_1!10675 (h!29703 l!706)) (_1!10675 (h!29703 (t!42026 l!706)))))))

(declare-fun b!1265788 () Bool)

(assert (=> b!1265788 (= e!720923 (isStrictlySorted!794 (t!42026 l!706)))))

(assert (= (and d!138923 (not res!842880)) b!1265787))

(assert (= (and b!1265787 res!842881) b!1265788))

(assert (=> b!1265788 m!1165729))

(assert (=> start!106520 d!138923))

(declare-fun d!138925 () Bool)

(declare-fun lt!574004 () Int)

(assert (=> d!138925 (>= lt!574004 0)))

(declare-fun e!720940 () Int)

(assert (=> d!138925 (= lt!574004 e!720940)))

(declare-fun c!123280 () Bool)

(assert (=> d!138925 (= c!123280 (is-Nil!28495 (t!42026 l!706)))))

(assert (=> d!138925 (= (ListPrimitiveSize!156 (t!42026 l!706)) lt!574004)))

(declare-fun b!1265809 () Bool)

(assert (=> b!1265809 (= e!720940 0)))

(declare-fun b!1265810 () Bool)

(assert (=> b!1265810 (= e!720940 (+ 1 (ListPrimitiveSize!156 (t!42026 (t!42026 l!706)))))))

(assert (= (and d!138925 c!123280) b!1265809))

(assert (= (and d!138925 (not c!123280)) b!1265810))

(declare-fun m!1165739 () Bool)

(assert (=> b!1265810 m!1165739))

(assert (=> b!1265762 d!138925))

(declare-fun d!138935 () Bool)

(declare-fun lt!574006 () Int)

(assert (=> d!138935 (>= lt!574006 0)))

(declare-fun e!720942 () Int)

(assert (=> d!138935 (= lt!574006 e!720942)))

(declare-fun c!123282 () Bool)

(assert (=> d!138935 (= c!123282 (is-Nil!28495 l!706))))

(assert (=> d!138935 (= (ListPrimitiveSize!156 l!706) lt!574006)))

(declare-fun b!1265813 () Bool)

(assert (=> b!1265813 (= e!720942 0)))

(declare-fun b!1265814 () Bool)

(assert (=> b!1265814 (= e!720942 (+ 1 (ListPrimitiveSize!156 (t!42026 l!706))))))

(assert (= (and d!138935 c!123282) b!1265813))

(assert (= (and d!138935 (not c!123282)) b!1265814))

(assert (=> b!1265814 m!1165723))

(assert (=> b!1265762 d!138935))

(declare-fun d!138939 () Bool)

(declare-fun res!842908 () Bool)

(declare-fun e!720963 () Bool)

(assert (=> d!138939 (=> res!842908 e!720963)))

(assert (=> d!138939 (= res!842908 (and (is-Cons!28494 (t!42026 l!706)) (= (_1!10675 (h!29703 (t!42026 l!706))) key1!31)))))

(assert (=> d!138939 (= (containsKey!655 (t!42026 l!706) key1!31) e!720963)))

(declare-fun b!1265840 () Bool)

(declare-fun e!720964 () Bool)

(assert (=> b!1265840 (= e!720963 e!720964)))

(declare-fun res!842909 () Bool)

(assert (=> b!1265840 (=> (not res!842909) (not e!720964))))

(assert (=> b!1265840 (= res!842909 (and (or (not (is-Cons!28494 (t!42026 l!706))) (bvsle (_1!10675 (h!29703 (t!42026 l!706))) key1!31)) (is-Cons!28494 (t!42026 l!706)) (bvslt (_1!10675 (h!29703 (t!42026 l!706))) key1!31)))))

(declare-fun b!1265841 () Bool)

(assert (=> b!1265841 (= e!720964 (containsKey!655 (t!42026 (t!42026 l!706)) key1!31))))

(assert (= (and d!138939 (not res!842908)) b!1265840))

(assert (= (and b!1265840 res!842909) b!1265841))

(declare-fun m!1165747 () Bool)

(assert (=> b!1265841 m!1165747))

(assert (=> b!1265757 d!138939))

(declare-fun d!138945 () Bool)

(declare-fun res!842910 () Bool)

(declare-fun e!720966 () Bool)

(assert (=> d!138945 (=> res!842910 e!720966)))

(assert (=> d!138945 (= res!842910 (and (is-Cons!28494 l!706) (= (_1!10675 (h!29703 l!706)) key1!31)))))

(assert (=> d!138945 (= (containsKey!655 l!706 key1!31) e!720966)))

(declare-fun b!1265843 () Bool)


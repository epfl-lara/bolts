; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137598 () Bool)

(assert start!137598)

(declare-fun res!1080835 () Bool)

(declare-fun e!882795 () Bool)

(assert (=> start!137598 (=> (not res!1080835) (not e!882795))))

(declare-datatypes ((B!2734 0))(
  ( (B!2735 (val!19729 Int)) )
))
(declare-datatypes ((tuple2!25790 0))(
  ( (tuple2!25791 (_1!12905 (_ BitVec 64)) (_2!12905 B!2734)) )
))
(declare-datatypes ((List!37010 0))(
  ( (Nil!37007) (Cons!37006 (h!38550 tuple2!25790) (t!51931 List!37010)) )
))
(declare-fun l!1356 () List!37010)

(declare-fun isStrictlySorted!1102 (List!37010) Bool)

(assert (=> start!137598 (= res!1080835 (isStrictlySorted!1102 l!1356))))

(assert (=> start!137598 e!882795))

(declare-fun e!882794 () Bool)

(assert (=> start!137598 e!882794))

(assert (=> start!137598 true))

(declare-fun b!1581915 () Bool)

(declare-fun res!1080836 () Bool)

(assert (=> b!1581915 (=> (not res!1080836) (not e!882795))))

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!948 (List!37010 (_ BitVec 64)) Bool)

(assert (=> b!1581915 (= res!1080836 (not (containsKey!948 l!1356 key!387)))))

(declare-fun b!1581916 () Bool)

(declare-fun ListPrimitiveSize!200 (List!37010) Int)

(assert (=> b!1581916 (= e!882795 (< (ListPrimitiveSize!200 l!1356) 0))))

(declare-fun b!1581917 () Bool)

(declare-fun tp_is_empty!39279 () Bool)

(declare-fun tp!114664 () Bool)

(assert (=> b!1581917 (= e!882794 (and tp_is_empty!39279 tp!114664))))

(assert (= (and start!137598 res!1080835) b!1581915))

(assert (= (and b!1581915 res!1080836) b!1581916))

(get-info :version)

(assert (= (and start!137598 ((_ is Cons!37006) l!1356)) b!1581917))

(declare-fun m!1452629 () Bool)

(assert (=> start!137598 m!1452629))

(declare-fun m!1452631 () Bool)

(assert (=> b!1581915 m!1452631))

(declare-fun m!1452633 () Bool)

(assert (=> b!1581916 m!1452633))

(check-sat (not b!1581916) (not start!137598) (not b!1581915) tp_is_empty!39279 (not b!1581917))
(check-sat)
(get-model)

(declare-fun d!166834 () Bool)

(declare-fun lt!676962 () Int)

(assert (=> d!166834 (>= lt!676962 0)))

(declare-fun e!882810 () Int)

(assert (=> d!166834 (= lt!676962 e!882810)))

(declare-fun c!146576 () Bool)

(assert (=> d!166834 (= c!146576 ((_ is Nil!37007) l!1356))))

(assert (=> d!166834 (= (ListPrimitiveSize!200 l!1356) lt!676962)))

(declare-fun b!1581939 () Bool)

(assert (=> b!1581939 (= e!882810 0)))

(declare-fun b!1581940 () Bool)

(assert (=> b!1581940 (= e!882810 (+ 1 (ListPrimitiveSize!200 (t!51931 l!1356))))))

(assert (= (and d!166834 c!146576) b!1581939))

(assert (= (and d!166834 (not c!146576)) b!1581940))

(declare-fun m!1452643 () Bool)

(assert (=> b!1581940 m!1452643))

(assert (=> b!1581916 d!166834))

(declare-fun d!166841 () Bool)

(declare-fun res!1080858 () Bool)

(declare-fun e!882826 () Bool)

(assert (=> d!166841 (=> res!1080858 e!882826)))

(assert (=> d!166841 (= res!1080858 (and ((_ is Cons!37006) l!1356) (= (_1!12905 (h!38550 l!1356)) key!387)))))

(assert (=> d!166841 (= (containsKey!948 l!1356 key!387) e!882826)))

(declare-fun b!1581961 () Bool)

(declare-fun e!882828 () Bool)

(assert (=> b!1581961 (= e!882826 e!882828)))

(declare-fun res!1080860 () Bool)

(assert (=> b!1581961 (=> (not res!1080860) (not e!882828))))

(assert (=> b!1581961 (= res!1080860 (and (or (not ((_ is Cons!37006) l!1356)) (bvsle (_1!12905 (h!38550 l!1356)) key!387)) ((_ is Cons!37006) l!1356) (bvslt (_1!12905 (h!38550 l!1356)) key!387)))))

(declare-fun b!1581962 () Bool)

(assert (=> b!1581962 (= e!882828 (containsKey!948 (t!51931 l!1356) key!387))))

(assert (= (and d!166841 (not res!1080858)) b!1581961))

(assert (= (and b!1581961 res!1080860) b!1581962))

(declare-fun m!1452649 () Bool)

(assert (=> b!1581962 m!1452649))

(assert (=> b!1581915 d!166841))

(declare-fun d!166847 () Bool)

(declare-fun res!1080876 () Bool)

(declare-fun e!882844 () Bool)

(assert (=> d!166847 (=> res!1080876 e!882844)))

(assert (=> d!166847 (= res!1080876 (or ((_ is Nil!37007) l!1356) ((_ is Nil!37007) (t!51931 l!1356))))))

(assert (=> d!166847 (= (isStrictlySorted!1102 l!1356) e!882844)))

(declare-fun b!1581978 () Bool)

(declare-fun e!882846 () Bool)

(assert (=> b!1581978 (= e!882844 e!882846)))

(declare-fun res!1080878 () Bool)

(assert (=> b!1581978 (=> (not res!1080878) (not e!882846))))

(assert (=> b!1581978 (= res!1080878 (bvslt (_1!12905 (h!38550 l!1356)) (_1!12905 (h!38550 (t!51931 l!1356)))))))

(declare-fun b!1581980 () Bool)

(assert (=> b!1581980 (= e!882846 (isStrictlySorted!1102 (t!51931 l!1356)))))

(assert (= (and d!166847 (not res!1080876)) b!1581978))

(assert (= (and b!1581978 res!1080878) b!1581980))

(declare-fun m!1452657 () Bool)

(assert (=> b!1581980 m!1452657))

(assert (=> start!137598 d!166847))

(declare-fun b!1581995 () Bool)

(declare-fun e!882855 () Bool)

(declare-fun tp!114676 () Bool)

(assert (=> b!1581995 (= e!882855 (and tp_is_empty!39279 tp!114676))))

(assert (=> b!1581917 (= tp!114664 e!882855)))

(assert (= (and b!1581917 ((_ is Cons!37006) (t!51931 l!1356))) b!1581995))

(check-sat (not b!1581995) (not b!1581940) (not b!1581980) tp_is_empty!39279 (not b!1581962))
(check-sat)

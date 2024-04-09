; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137646 () Bool)

(assert start!137646)

(declare-fun b!1582123 () Bool)

(declare-fun e!882948 () Bool)

(declare-datatypes ((B!2746 0))(
  ( (B!2747 (val!19735 Int)) )
))
(declare-datatypes ((tuple2!25802 0))(
  ( (tuple2!25803 (_1!12911 (_ BitVec 64)) (_2!12911 B!2746)) )
))
(declare-datatypes ((List!37016 0))(
  ( (Nil!37013) (Cons!37012 (h!38556 tuple2!25802) (t!51937 List!37016)) )
))
(declare-fun l!1356 () List!37016)

(declare-fun ListPrimitiveSize!203 (List!37016) Int)

(assert (=> b!1582123 (= e!882948 (>= (ListPrimitiveSize!203 (t!51937 l!1356)) (ListPrimitiveSize!203 l!1356)))))

(declare-fun b!1582124 () Bool)

(declare-fun e!882947 () Bool)

(declare-fun tp_is_empty!39291 () Bool)

(declare-fun tp!114700 () Bool)

(assert (=> b!1582124 (= e!882947 (and tp_is_empty!39291 tp!114700))))

(declare-fun b!1582121 () Bool)

(declare-fun res!1080976 () Bool)

(assert (=> b!1582121 (=> (not res!1080976) (not e!882948))))

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!954 (List!37016 (_ BitVec 64)) Bool)

(assert (=> b!1582121 (= res!1080976 (not (containsKey!954 l!1356 key!387)))))

(declare-fun b!1582122 () Bool)

(declare-fun res!1080977 () Bool)

(assert (=> b!1582122 (=> (not res!1080977) (not e!882948))))

(get-info :version)

(assert (=> b!1582122 (= res!1080977 (not ((_ is Nil!37013) l!1356)))))

(declare-fun res!1080975 () Bool)

(assert (=> start!137646 (=> (not res!1080975) (not e!882948))))

(declare-fun isStrictlySorted!1108 (List!37016) Bool)

(assert (=> start!137646 (= res!1080975 (isStrictlySorted!1108 l!1356))))

(assert (=> start!137646 e!882948))

(assert (=> start!137646 e!882947))

(assert (=> start!137646 true))

(assert (= (and start!137646 res!1080975) b!1582121))

(assert (= (and b!1582121 res!1080976) b!1582122))

(assert (= (and b!1582122 res!1080977) b!1582123))

(assert (= (and start!137646 ((_ is Cons!37012) l!1356)) b!1582124))

(declare-fun m!1452715 () Bool)

(assert (=> b!1582123 m!1452715))

(declare-fun m!1452717 () Bool)

(assert (=> b!1582123 m!1452717))

(declare-fun m!1452719 () Bool)

(assert (=> b!1582121 m!1452719))

(declare-fun m!1452721 () Bool)

(assert (=> start!137646 m!1452721))

(check-sat tp_is_empty!39291 (not b!1582124) (not b!1582121) (not start!137646) (not b!1582123))
(check-sat)
(get-model)

(declare-fun d!166875 () Bool)

(declare-fun res!1081001 () Bool)

(declare-fun e!882971 () Bool)

(assert (=> d!166875 (=> res!1081001 e!882971)))

(assert (=> d!166875 (= res!1081001 (or ((_ is Nil!37013) l!1356) ((_ is Nil!37013) (t!51937 l!1356))))))

(assert (=> d!166875 (= (isStrictlySorted!1108 l!1356) e!882971)))

(declare-fun b!1582155 () Bool)

(declare-fun e!882972 () Bool)

(assert (=> b!1582155 (= e!882971 e!882972)))

(declare-fun res!1081002 () Bool)

(assert (=> b!1582155 (=> (not res!1081002) (not e!882972))))

(assert (=> b!1582155 (= res!1081002 (bvslt (_1!12911 (h!38556 l!1356)) (_1!12911 (h!38556 (t!51937 l!1356)))))))

(declare-fun b!1582156 () Bool)

(assert (=> b!1582156 (= e!882972 (isStrictlySorted!1108 (t!51937 l!1356)))))

(assert (= (and d!166875 (not res!1081001)) b!1582155))

(assert (= (and b!1582155 res!1081002) b!1582156))

(declare-fun m!1452733 () Bool)

(assert (=> b!1582156 m!1452733))

(assert (=> start!137646 d!166875))

(declare-fun d!166881 () Bool)

(declare-fun lt!676982 () Int)

(assert (=> d!166881 (>= lt!676982 0)))

(declare-fun e!882987 () Int)

(assert (=> d!166881 (= lt!676982 e!882987)))

(declare-fun c!146587 () Bool)

(assert (=> d!166881 (= c!146587 ((_ is Nil!37013) (t!51937 l!1356)))))

(assert (=> d!166881 (= (ListPrimitiveSize!203 (t!51937 l!1356)) lt!676982)))

(declare-fun b!1582173 () Bool)

(assert (=> b!1582173 (= e!882987 0)))

(declare-fun b!1582174 () Bool)

(assert (=> b!1582174 (= e!882987 (+ 1 (ListPrimitiveSize!203 (t!51937 (t!51937 l!1356)))))))

(assert (= (and d!166881 c!146587) b!1582173))

(assert (= (and d!166881 (not c!146587)) b!1582174))

(declare-fun m!1452739 () Bool)

(assert (=> b!1582174 m!1452739))

(assert (=> b!1582123 d!166881))

(declare-fun d!166889 () Bool)

(declare-fun lt!676983 () Int)

(assert (=> d!166889 (>= lt!676983 0)))

(declare-fun e!882990 () Int)

(assert (=> d!166889 (= lt!676983 e!882990)))

(declare-fun c!146588 () Bool)

(assert (=> d!166889 (= c!146588 ((_ is Nil!37013) l!1356))))

(assert (=> d!166889 (= (ListPrimitiveSize!203 l!1356) lt!676983)))

(declare-fun b!1582179 () Bool)

(assert (=> b!1582179 (= e!882990 0)))

(declare-fun b!1582180 () Bool)

(assert (=> b!1582180 (= e!882990 (+ 1 (ListPrimitiveSize!203 (t!51937 l!1356))))))

(assert (= (and d!166889 c!146588) b!1582179))

(assert (= (and d!166889 (not c!146588)) b!1582180))

(assert (=> b!1582180 m!1452715))

(assert (=> b!1582123 d!166889))

(declare-fun d!166891 () Bool)

(declare-fun res!1081021 () Bool)

(declare-fun e!883003 () Bool)

(assert (=> d!166891 (=> res!1081021 e!883003)))

(assert (=> d!166891 (= res!1081021 (and ((_ is Cons!37012) l!1356) (= (_1!12911 (h!38556 l!1356)) key!387)))))

(assert (=> d!166891 (= (containsKey!954 l!1356 key!387) e!883003)))

(declare-fun b!1582198 () Bool)

(declare-fun e!883004 () Bool)

(assert (=> b!1582198 (= e!883003 e!883004)))

(declare-fun res!1081022 () Bool)

(assert (=> b!1582198 (=> (not res!1081022) (not e!883004))))

(assert (=> b!1582198 (= res!1081022 (and (or (not ((_ is Cons!37012) l!1356)) (bvsle (_1!12911 (h!38556 l!1356)) key!387)) ((_ is Cons!37012) l!1356) (bvslt (_1!12911 (h!38556 l!1356)) key!387)))))

(declare-fun b!1582199 () Bool)

(assert (=> b!1582199 (= e!883004 (containsKey!954 (t!51937 l!1356) key!387))))

(assert (= (and d!166891 (not res!1081021)) b!1582198))

(assert (= (and b!1582198 res!1081022) b!1582199))

(declare-fun m!1452747 () Bool)

(assert (=> b!1582199 m!1452747))

(assert (=> b!1582121 d!166891))

(declare-fun b!1582210 () Bool)

(declare-fun e!883010 () Bool)

(declare-fun tp!114711 () Bool)

(assert (=> b!1582210 (= e!883010 (and tp_is_empty!39291 tp!114711))))

(assert (=> b!1582124 (= tp!114700 e!883010)))

(assert (= (and b!1582124 ((_ is Cons!37012) (t!51937 l!1356))) b!1582210))

(check-sat (not b!1582199) (not b!1582156) (not b!1582210) (not b!1582174) (not b!1582180) tp_is_empty!39291)

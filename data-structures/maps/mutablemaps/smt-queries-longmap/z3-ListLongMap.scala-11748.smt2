; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137832 () Bool)

(assert start!137832)

(declare-fun res!1081393 () Bool)

(declare-fun e!883467 () Bool)

(assert (=> start!137832 (=> (not res!1081393) (not e!883467))))

(declare-datatypes ((B!2830 0))(
  ( (B!2831 (val!19777 Int)) )
))
(declare-datatypes ((tuple2!25886 0))(
  ( (tuple2!25887 (_1!12953 (_ BitVec 64)) (_2!12953 B!2830)) )
))
(declare-datatypes ((List!37058 0))(
  ( (Nil!37055) (Cons!37054 (h!38598 tuple2!25886) (t!51979 List!37058)) )
))
(declare-fun l!1065 () List!37058)

(declare-fun isStrictlySorted!1129 (List!37058) Bool)

(assert (=> start!137832 (= res!1081393 (isStrictlySorted!1129 l!1065))))

(assert (=> start!137832 e!883467))

(declare-fun e!883466 () Bool)

(assert (=> start!137832 e!883466))

(assert (=> start!137832 true))

(declare-fun b!1582815 () Bool)

(declare-fun res!1081397 () Bool)

(assert (=> b!1582815 (=> (not res!1081397) (not e!883467))))

(assert (=> b!1582815 (= res!1081397 (isStrictlySorted!1129 (t!51979 l!1065)))))

(declare-fun b!1582816 () Bool)

(declare-fun res!1081395 () Bool)

(assert (=> b!1582816 (=> (not res!1081395) (not e!883467))))

(declare-fun key!287 () (_ BitVec 64))

(declare-fun containsKey!975 (List!37058 (_ BitVec 64)) Bool)

(assert (=> b!1582816 (= res!1081395 (containsKey!975 l!1065 key!287))))

(declare-fun b!1582817 () Bool)

(declare-fun res!1081394 () Bool)

(assert (=> b!1582817 (=> (not res!1081394) (not e!883467))))

(get-info :version)

(assert (=> b!1582817 (= res!1081394 (and ((_ is Cons!37054) l!1065) (not (= (_1!12953 (h!38598 l!1065)) key!287))))))

(declare-fun b!1582818 () Bool)

(declare-fun res!1081396 () Bool)

(assert (=> b!1582818 (=> (not res!1081396) (not e!883467))))

(assert (=> b!1582818 (= res!1081396 (containsKey!975 (t!51979 l!1065) key!287))))

(declare-fun b!1582819 () Bool)

(declare-fun tp_is_empty!39363 () Bool)

(declare-fun tp!114880 () Bool)

(assert (=> b!1582819 (= e!883466 (and tp_is_empty!39363 tp!114880))))

(declare-fun b!1582820 () Bool)

(declare-fun ListPrimitiveSize!209 (List!37058) Int)

(assert (=> b!1582820 (= e!883467 (>= (ListPrimitiveSize!209 (t!51979 l!1065)) (ListPrimitiveSize!209 l!1065)))))

(assert (= (and start!137832 res!1081393) b!1582816))

(assert (= (and b!1582816 res!1081395) b!1582817))

(assert (= (and b!1582817 res!1081394) b!1582815))

(assert (= (and b!1582815 res!1081397) b!1582818))

(assert (= (and b!1582818 res!1081396) b!1582820))

(assert (= (and start!137832 ((_ is Cons!37054) l!1065)) b!1582819))

(declare-fun m!1453019 () Bool)

(assert (=> b!1582820 m!1453019))

(declare-fun m!1453021 () Bool)

(assert (=> b!1582820 m!1453021))

(declare-fun m!1453023 () Bool)

(assert (=> b!1582816 m!1453023))

(declare-fun m!1453025 () Bool)

(assert (=> start!137832 m!1453025))

(declare-fun m!1453027 () Bool)

(assert (=> b!1582818 m!1453027))

(declare-fun m!1453029 () Bool)

(assert (=> b!1582815 m!1453029))

(check-sat (not b!1582816) (not start!137832) (not b!1582820) (not b!1582818) (not b!1582819) tp_is_empty!39363 (not b!1582815))
(check-sat)
(get-model)

(declare-fun d!167021 () Bool)

(declare-fun lt!677062 () Int)

(assert (=> d!167021 (>= lt!677062 0)))

(declare-fun e!883476 () Int)

(assert (=> d!167021 (= lt!677062 e!883476)))

(declare-fun c!146613 () Bool)

(assert (=> d!167021 (= c!146613 ((_ is Nil!37055) (t!51979 l!1065)))))

(assert (=> d!167021 (= (ListPrimitiveSize!209 (t!51979 l!1065)) lt!677062)))

(declare-fun b!1582843 () Bool)

(assert (=> b!1582843 (= e!883476 0)))

(declare-fun b!1582844 () Bool)

(assert (=> b!1582844 (= e!883476 (+ 1 (ListPrimitiveSize!209 (t!51979 (t!51979 l!1065)))))))

(assert (= (and d!167021 c!146613) b!1582843))

(assert (= (and d!167021 (not c!146613)) b!1582844))

(declare-fun m!1453043 () Bool)

(assert (=> b!1582844 m!1453043))

(assert (=> b!1582820 d!167021))

(declare-fun d!167027 () Bool)

(declare-fun lt!677063 () Int)

(assert (=> d!167027 (>= lt!677063 0)))

(declare-fun e!883481 () Int)

(assert (=> d!167027 (= lt!677063 e!883481)))

(declare-fun c!146614 () Bool)

(assert (=> d!167027 (= c!146614 ((_ is Nil!37055) l!1065))))

(assert (=> d!167027 (= (ListPrimitiveSize!209 l!1065) lt!677063)))

(declare-fun b!1582849 () Bool)

(assert (=> b!1582849 (= e!883481 0)))

(declare-fun b!1582850 () Bool)

(assert (=> b!1582850 (= e!883481 (+ 1 (ListPrimitiveSize!209 (t!51979 l!1065))))))

(assert (= (and d!167027 c!146614) b!1582849))

(assert (= (and d!167027 (not c!146614)) b!1582850))

(assert (=> b!1582850 m!1453019))

(assert (=> b!1582820 d!167027))

(declare-fun d!167029 () Bool)

(declare-fun res!1081431 () Bool)

(declare-fun e!883498 () Bool)

(assert (=> d!167029 (=> res!1081431 e!883498)))

(assert (=> d!167029 (= res!1081431 (or ((_ is Nil!37055) (t!51979 l!1065)) ((_ is Nil!37055) (t!51979 (t!51979 l!1065)))))))

(assert (=> d!167029 (= (isStrictlySorted!1129 (t!51979 l!1065)) e!883498)))

(declare-fun b!1582869 () Bool)

(declare-fun e!883499 () Bool)

(assert (=> b!1582869 (= e!883498 e!883499)))

(declare-fun res!1081432 () Bool)

(assert (=> b!1582869 (=> (not res!1081432) (not e!883499))))

(assert (=> b!1582869 (= res!1081432 (bvslt (_1!12953 (h!38598 (t!51979 l!1065))) (_1!12953 (h!38598 (t!51979 (t!51979 l!1065))))))))

(declare-fun b!1582870 () Bool)

(assert (=> b!1582870 (= e!883499 (isStrictlySorted!1129 (t!51979 (t!51979 l!1065))))))

(assert (= (and d!167029 (not res!1081431)) b!1582869))

(assert (= (and b!1582869 res!1081432) b!1582870))

(declare-fun m!1453049 () Bool)

(assert (=> b!1582870 m!1453049))

(assert (=> b!1582815 d!167029))

(declare-fun d!167037 () Bool)

(declare-fun res!1081441 () Bool)

(declare-fun e!883514 () Bool)

(assert (=> d!167037 (=> res!1081441 e!883514)))

(assert (=> d!167037 (= res!1081441 (and ((_ is Cons!37054) l!1065) (= (_1!12953 (h!38598 l!1065)) key!287)))))

(assert (=> d!167037 (= (containsKey!975 l!1065 key!287) e!883514)))

(declare-fun b!1582889 () Bool)

(declare-fun e!883515 () Bool)

(assert (=> b!1582889 (= e!883514 e!883515)))

(declare-fun res!1081442 () Bool)

(assert (=> b!1582889 (=> (not res!1081442) (not e!883515))))

(assert (=> b!1582889 (= res!1081442 (and (or (not ((_ is Cons!37054) l!1065)) (bvsle (_1!12953 (h!38598 l!1065)) key!287)) ((_ is Cons!37054) l!1065) (bvslt (_1!12953 (h!38598 l!1065)) key!287)))))

(declare-fun b!1582890 () Bool)

(assert (=> b!1582890 (= e!883515 (containsKey!975 (t!51979 l!1065) key!287))))

(assert (= (and d!167037 (not res!1081441)) b!1582889))

(assert (= (and b!1582889 res!1081442) b!1582890))

(assert (=> b!1582890 m!1453027))

(assert (=> b!1582816 d!167037))

(declare-fun d!167047 () Bool)

(declare-fun res!1081443 () Bool)

(declare-fun e!883516 () Bool)

(assert (=> d!167047 (=> res!1081443 e!883516)))

(assert (=> d!167047 (= res!1081443 (and ((_ is Cons!37054) (t!51979 l!1065)) (= (_1!12953 (h!38598 (t!51979 l!1065))) key!287)))))

(assert (=> d!167047 (= (containsKey!975 (t!51979 l!1065) key!287) e!883516)))

(declare-fun b!1582893 () Bool)

(declare-fun e!883517 () Bool)

(assert (=> b!1582893 (= e!883516 e!883517)))

(declare-fun res!1081444 () Bool)

(assert (=> b!1582893 (=> (not res!1081444) (not e!883517))))

(assert (=> b!1582893 (= res!1081444 (and (or (not ((_ is Cons!37054) (t!51979 l!1065))) (bvsle (_1!12953 (h!38598 (t!51979 l!1065))) key!287)) ((_ is Cons!37054) (t!51979 l!1065)) (bvslt (_1!12953 (h!38598 (t!51979 l!1065))) key!287)))))

(declare-fun b!1582894 () Bool)

(assert (=> b!1582894 (= e!883517 (containsKey!975 (t!51979 (t!51979 l!1065)) key!287))))

(assert (= (and d!167047 (not res!1081443)) b!1582893))

(assert (= (and b!1582893 res!1081444) b!1582894))

(declare-fun m!1453055 () Bool)

(assert (=> b!1582894 m!1453055))

(assert (=> b!1582818 d!167047))

(declare-fun d!167049 () Bool)

(declare-fun res!1081449 () Bool)

(declare-fun e!883522 () Bool)

(assert (=> d!167049 (=> res!1081449 e!883522)))

(assert (=> d!167049 (= res!1081449 (or ((_ is Nil!37055) l!1065) ((_ is Nil!37055) (t!51979 l!1065))))))

(assert (=> d!167049 (= (isStrictlySorted!1129 l!1065) e!883522)))

(declare-fun b!1582899 () Bool)

(declare-fun e!883523 () Bool)

(assert (=> b!1582899 (= e!883522 e!883523)))

(declare-fun res!1081450 () Bool)

(assert (=> b!1582899 (=> (not res!1081450) (not e!883523))))

(assert (=> b!1582899 (= res!1081450 (bvslt (_1!12953 (h!38598 l!1065)) (_1!12953 (h!38598 (t!51979 l!1065)))))))

(declare-fun b!1582900 () Bool)

(assert (=> b!1582900 (= e!883523 (isStrictlySorted!1129 (t!51979 l!1065)))))

(assert (= (and d!167049 (not res!1081449)) b!1582899))

(assert (= (and b!1582899 res!1081450) b!1582900))

(assert (=> b!1582900 m!1453029))

(assert (=> start!137832 d!167049))

(declare-fun b!1582909 () Bool)

(declare-fun e!883530 () Bool)

(declare-fun tp!114886 () Bool)

(assert (=> b!1582909 (= e!883530 (and tp_is_empty!39363 tp!114886))))

(assert (=> b!1582819 (= tp!114880 e!883530)))

(assert (= (and b!1582819 ((_ is Cons!37054) (t!51979 l!1065))) b!1582909))

(check-sat (not b!1582870) (not b!1582844) (not b!1582900) (not b!1582890) (not b!1582894) tp_is_empty!39363 (not b!1582850) (not b!1582909))
(check-sat)

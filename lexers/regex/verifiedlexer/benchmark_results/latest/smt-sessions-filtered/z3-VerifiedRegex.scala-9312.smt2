; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!494830 () Bool)

(assert start!494830)

(declare-fun b!4797821 () Bool)

(declare-fun e!2995980 () Bool)

(declare-fun e!2995981 () Bool)

(assert (=> b!4797821 (= e!2995980 e!2995981)))

(declare-fun res!2040120 () Bool)

(assert (=> b!4797821 (=> res!2040120 e!2995981)))

(declare-datatypes ((K!15849 0))(
  ( (K!15850 (val!20985 Int)) )
))
(declare-datatypes ((V!16095 0))(
  ( (V!16096 (val!20986 Int)) )
))
(declare-datatypes ((tuple2!56944 0))(
  ( (tuple2!56945 (_1!31766 K!15849) (_2!31766 V!16095)) )
))
(declare-datatypes ((List!54402 0))(
  ( (Nil!54278) (Cons!54278 (h!60710 tuple2!56944) (t!361852 List!54402)) )
))
(declare-datatypes ((tuple2!56946 0))(
  ( (tuple2!56947 (_1!31767 (_ BitVec 64)) (_2!31767 List!54402)) )
))
(declare-datatypes ((List!54403 0))(
  ( (Nil!54279) (Cons!54279 (h!60711 tuple2!56946) (t!361853 List!54403)) )
))
(declare-datatypes ((ListLongMap!5389 0))(
  ( (ListLongMap!5390 (toList!6967 List!54403)) )
))
(declare-fun lt!1954611 () ListLongMap!5389)

(declare-fun lt!1954607 () (_ BitVec 64))

(declare-fun contains!17921 (ListLongMap!5389 (_ BitVec 64)) Bool)

(assert (=> b!4797821 (= res!2040120 (contains!17921 lt!1954611 lt!1954607))))

(declare-fun lm!2473 () ListLongMap!5389)

(declare-fun tail!9301 (ListLongMap!5389) ListLongMap!5389)

(assert (=> b!4797821 (= lt!1954611 (tail!9301 lm!2473))))

(declare-fun b!4797823 () Bool)

(declare-fun e!2995978 () Bool)

(assert (=> b!4797823 (= e!2995978 (not e!2995980))))

(declare-fun res!2040121 () Bool)

(assert (=> b!4797823 (=> res!2040121 e!2995980)))

(declare-fun value!3111 () V!16095)

(declare-fun key!5896 () K!15849)

(declare-fun getValue!132 (List!54403 K!15849) V!16095)

(assert (=> b!4797823 (= res!2040121 (not (= (getValue!132 (toList!6967 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!586 (List!54403 K!15849) Bool)

(assert (=> b!4797823 (containsKeyBiggerList!586 (toList!6967 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6944 0))(
  ( (HashableExt!6943 (__x!32967 Int)) )
))
(declare-fun hashF!1559 () Hashable!6944)

(declare-datatypes ((Unit!140406 0))(
  ( (Unit!140407) )
))
(declare-fun lt!1954609 () Unit!140406)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!326 (ListLongMap!5389 K!15849 Hashable!6944) Unit!140406)

(assert (=> b!4797823 (= lt!1954609 (lemmaInLongMapThenContainsKeyBiggerList!326 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2995979 () Bool)

(assert (=> b!4797823 e!2995979))

(declare-fun res!2040117 () Bool)

(assert (=> b!4797823 (=> (not res!2040117) (not e!2995979))))

(assert (=> b!4797823 (= res!2040117 (contains!17921 lm!2473 lt!1954607))))

(declare-fun hash!4993 (Hashable!6944 K!15849) (_ BitVec 64))

(assert (=> b!4797823 (= lt!1954607 (hash!4993 hashF!1559 key!5896))))

(declare-fun lt!1954610 () Unit!140406)

(declare-fun lemmaInGenericMapThenInLongMap!348 (ListLongMap!5389 K!15849 Hashable!6944) Unit!140406)

(assert (=> b!4797823 (= lt!1954610 (lemmaInGenericMapThenInLongMap!348 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4797824 () Bool)

(declare-fun res!2040124 () Bool)

(assert (=> b!4797824 (=> res!2040124 e!2995980)))

(get-info :version)

(assert (=> b!4797824 (= res!2040124 (not ((_ is Cons!54279) (toList!6967 lm!2473))))))

(declare-fun b!4797825 () Bool)

(assert (=> b!4797825 (= e!2995981 true)))

(declare-fun lt!1954608 () Bool)

(declare-fun allKeysSameHashInMap!2349 (ListLongMap!5389 Hashable!6944) Bool)

(assert (=> b!4797825 (= lt!1954608 (allKeysSameHashInMap!2349 lt!1954611 hashF!1559))))

(declare-fun b!4797826 () Bool)

(declare-fun e!2995982 () Bool)

(declare-fun tp!1358242 () Bool)

(assert (=> b!4797826 (= e!2995982 tp!1358242)))

(declare-fun b!4797827 () Bool)

(declare-fun res!2040116 () Bool)

(assert (=> b!4797827 (=> res!2040116 e!2995980)))

(declare-fun containsKey!3998 (List!54402 K!15849) Bool)

(assert (=> b!4797827 (= res!2040116 (containsKey!3998 (_2!31767 (h!60711 (toList!6967 lm!2473))) key!5896))))

(declare-fun b!4797828 () Bool)

(declare-fun res!2040122 () Bool)

(assert (=> b!4797828 (=> (not res!2040122) (not e!2995978))))

(declare-datatypes ((ListMap!6439 0))(
  ( (ListMap!6440 (toList!6968 List!54402)) )
))
(declare-fun contains!17922 (ListMap!6439 K!15849) Bool)

(declare-fun extractMap!2471 (List!54403) ListMap!6439)

(assert (=> b!4797828 (= res!2040122 (contains!17922 (extractMap!2471 (toList!6967 lm!2473)) key!5896))))

(declare-fun b!4797829 () Bool)

(declare-fun res!2040119 () Bool)

(assert (=> b!4797829 (=> res!2040119 e!2995981)))

(declare-fun lambda!231757 () Int)

(declare-fun forall!12299 (List!54403 Int) Bool)

(assert (=> b!4797829 (= res!2040119 (not (forall!12299 (toList!6967 lt!1954611) lambda!231757)))))

(declare-fun b!4797830 () Bool)

(declare-datatypes ((Option!13148 0))(
  ( (None!13147) (Some!13147 (v!48460 tuple2!56944)) )
))
(declare-fun isDefined!10289 (Option!13148) Bool)

(declare-fun getPair!916 (List!54402 K!15849) Option!13148)

(declare-fun apply!13017 (ListLongMap!5389 (_ BitVec 64)) List!54402)

(assert (=> b!4797830 (= e!2995979 (isDefined!10289 (getPair!916 (apply!13017 lm!2473 lt!1954607) key!5896)))))

(declare-fun res!2040123 () Bool)

(assert (=> start!494830 (=> (not res!2040123) (not e!2995978))))

(assert (=> start!494830 (= res!2040123 (forall!12299 (toList!6967 lm!2473) lambda!231757))))

(assert (=> start!494830 e!2995978))

(declare-fun inv!69875 (ListLongMap!5389) Bool)

(assert (=> start!494830 (and (inv!69875 lm!2473) e!2995982)))

(assert (=> start!494830 true))

(declare-fun tp_is_empty!33637 () Bool)

(assert (=> start!494830 tp_is_empty!33637))

(declare-fun tp_is_empty!33639 () Bool)

(assert (=> start!494830 tp_is_empty!33639))

(declare-fun b!4797822 () Bool)

(declare-fun res!2040118 () Bool)

(assert (=> b!4797822 (=> (not res!2040118) (not e!2995978))))

(assert (=> b!4797822 (= res!2040118 (allKeysSameHashInMap!2349 lm!2473 hashF!1559))))

(assert (= (and start!494830 res!2040123) b!4797822))

(assert (= (and b!4797822 res!2040118) b!4797828))

(assert (= (and b!4797828 res!2040122) b!4797823))

(assert (= (and b!4797823 res!2040117) b!4797830))

(assert (= (and b!4797823 (not res!2040121)) b!4797824))

(assert (= (and b!4797824 (not res!2040124)) b!4797827))

(assert (= (and b!4797827 (not res!2040116)) b!4797821))

(assert (= (and b!4797821 (not res!2040120)) b!4797829))

(assert (= (and b!4797829 (not res!2040119)) b!4797825))

(assert (= start!494830 b!4797826))

(declare-fun m!5780396 () Bool)

(assert (=> b!4797830 m!5780396))

(assert (=> b!4797830 m!5780396))

(declare-fun m!5780398 () Bool)

(assert (=> b!4797830 m!5780398))

(assert (=> b!4797830 m!5780398))

(declare-fun m!5780400 () Bool)

(assert (=> b!4797830 m!5780400))

(declare-fun m!5780402 () Bool)

(assert (=> b!4797827 m!5780402))

(declare-fun m!5780404 () Bool)

(assert (=> b!4797829 m!5780404))

(declare-fun m!5780406 () Bool)

(assert (=> b!4797828 m!5780406))

(assert (=> b!4797828 m!5780406))

(declare-fun m!5780408 () Bool)

(assert (=> b!4797828 m!5780408))

(declare-fun m!5780410 () Bool)

(assert (=> b!4797821 m!5780410))

(declare-fun m!5780412 () Bool)

(assert (=> b!4797821 m!5780412))

(declare-fun m!5780414 () Bool)

(assert (=> b!4797822 m!5780414))

(declare-fun m!5780416 () Bool)

(assert (=> b!4797823 m!5780416))

(declare-fun m!5780418 () Bool)

(assert (=> b!4797823 m!5780418))

(declare-fun m!5780420 () Bool)

(assert (=> b!4797823 m!5780420))

(declare-fun m!5780422 () Bool)

(assert (=> b!4797823 m!5780422))

(declare-fun m!5780424 () Bool)

(assert (=> b!4797823 m!5780424))

(declare-fun m!5780426 () Bool)

(assert (=> b!4797823 m!5780426))

(declare-fun m!5780428 () Bool)

(assert (=> b!4797825 m!5780428))

(declare-fun m!5780430 () Bool)

(assert (=> start!494830 m!5780430))

(declare-fun m!5780432 () Bool)

(assert (=> start!494830 m!5780432))

(check-sat (not b!4797825) (not b!4797823) tp_is_empty!33639 (not b!4797830) (not b!4797827) (not b!4797821) (not b!4797829) (not b!4797822) (not b!4797828) tp_is_empty!33637 (not b!4797826) (not start!494830))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!491892 () Bool)

(assert start!491892)

(declare-fun b!4784987 () Bool)

(declare-fun res!2032380 () Bool)

(declare-fun e!2987541 () Bool)

(assert (=> b!4784987 (=> res!2032380 e!2987541)))

(declare-fun lt!1946788 () Bool)

(assert (=> b!4784987 (= res!2032380 lt!1946788)))

(declare-fun b!4784988 () Bool)

(declare-fun res!2032378 () Bool)

(declare-fun e!2987542 () Bool)

(assert (=> b!4784988 (=> (not res!2032378) (not e!2987542))))

(declare-datatypes ((K!15607 0))(
  ( (K!15608 (val!20791 Int)) )
))
(declare-datatypes ((V!15853 0))(
  ( (V!15854 (val!20792 Int)) )
))
(declare-datatypes ((tuple2!56556 0))(
  ( (tuple2!56557 (_1!31572 K!15607) (_2!31572 V!15853)) )
))
(declare-datatypes ((List!54171 0))(
  ( (Nil!54047) (Cons!54047 (h!60467 tuple2!56556) (t!361621 List!54171)) )
))
(declare-datatypes ((tuple2!56558 0))(
  ( (tuple2!56559 (_1!31573 (_ BitVec 64)) (_2!31573 List!54171)) )
))
(declare-datatypes ((List!54172 0))(
  ( (Nil!54048) (Cons!54048 (h!60468 tuple2!56558) (t!361622 List!54172)) )
))
(declare-datatypes ((ListLongMap!5195 0))(
  ( (ListLongMap!5196 (toList!6773 List!54172)) )
))
(declare-fun lm!2473 () ListLongMap!5195)

(declare-datatypes ((Hashable!6847 0))(
  ( (HashableExt!6846 (__x!32870 Int)) )
))
(declare-fun hashF!1559 () Hashable!6847)

(declare-fun allKeysSameHashInMap!2252 (ListLongMap!5195 Hashable!6847) Bool)

(assert (=> b!4784988 (= res!2032378 (allKeysSameHashInMap!2252 lm!2473 hashF!1559))))

(declare-fun b!4784990 () Bool)

(declare-fun res!2032381 () Bool)

(assert (=> b!4784990 (=> (not res!2032381) (not e!2987542))))

(declare-fun key!5896 () K!15607)

(declare-datatypes ((ListMap!6245 0))(
  ( (ListMap!6246 (toList!6774 List!54171)) )
))
(declare-fun contains!17610 (ListMap!6245 K!15607) Bool)

(declare-fun extractMap!2374 (List!54172) ListMap!6245)

(assert (=> b!4784990 (= res!2032381 (contains!17610 (extractMap!2374 (toList!6773 lm!2473)) key!5896))))

(declare-fun b!4784991 () Bool)

(declare-fun e!2987545 () Bool)

(declare-fun lambda!229032 () Int)

(declare-fun forall!12147 (List!54172 Int) Bool)

(assert (=> b!4784991 (= e!2987545 (forall!12147 (toList!6773 lm!2473) lambda!229032))))

(declare-fun b!4784992 () Bool)

(declare-fun e!2987544 () Bool)

(declare-fun tp!1357603 () Bool)

(assert (=> b!4784992 (= e!2987544 tp!1357603)))

(declare-fun res!2032383 () Bool)

(assert (=> start!491892 (=> (not res!2032383) (not e!2987542))))

(assert (=> start!491892 (= res!2032383 (forall!12147 (toList!6773 lm!2473) lambda!229032))))

(assert (=> start!491892 e!2987542))

(declare-fun inv!69634 (ListLongMap!5195) Bool)

(assert (=> start!491892 (and (inv!69634 lm!2473) e!2987544)))

(assert (=> start!491892 true))

(declare-fun tp_is_empty!33289 () Bool)

(assert (=> start!491892 tp_is_empty!33289))

(declare-fun b!4784989 () Bool)

(assert (=> b!4784989 (= e!2987542 (not e!2987541))))

(declare-fun res!2032379 () Bool)

(assert (=> b!4784989 (=> res!2032379 e!2987541)))

(assert (=> b!4784989 (= res!2032379 (not (forall!12147 (toList!6773 lm!2473) lambda!229032)))))

(declare-fun e!2987543 () Bool)

(assert (=> b!4784989 e!2987543))

(declare-fun res!2032377 () Bool)

(assert (=> b!4784989 (=> (not res!2032377) (not e!2987543))))

(assert (=> b!4784989 (= res!2032377 (not lt!1946788))))

(declare-fun lt!1946787 () (_ BitVec 64))

(declare-fun contains!17611 (ListLongMap!5195 (_ BitVec 64)) Bool)

(assert (=> b!4784989 (= lt!1946788 (not (contains!17611 lm!2473 lt!1946787)))))

(declare-fun hash!4863 (Hashable!6847 K!15607) (_ BitVec 64))

(assert (=> b!4784989 (= lt!1946787 (hash!4863 hashF!1559 key!5896))))

(declare-datatypes ((Unit!139449 0))(
  ( (Unit!139450) )
))
(declare-fun lt!1946791 () Unit!139449)

(declare-fun lemmaInGenericMapThenInLongMap!251 (ListLongMap!5195 K!15607 Hashable!6847) Unit!139449)

(assert (=> b!4784989 (= lt!1946791 (lemmaInGenericMapThenInLongMap!251 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4784993 () Bool)

(declare-datatypes ((Option!12979 0))(
  ( (None!12978) (Some!12978 (v!48227 tuple2!56556)) )
))
(declare-fun isDefined!10122 (Option!12979) Bool)

(declare-fun getPair!819 (List!54171 K!15607) Option!12979)

(declare-fun apply!12902 (ListLongMap!5195 (_ BitVec 64)) List!54171)

(assert (=> b!4784993 (= e!2987543 (isDefined!10122 (getPair!819 (apply!12902 lm!2473 lt!1946787) key!5896)))))

(declare-fun b!4784994 () Bool)

(assert (=> b!4784994 (= e!2987541 e!2987545)))

(declare-fun res!2032382 () Bool)

(assert (=> b!4784994 (=> res!2032382 e!2987545)))

(declare-fun lt!1946790 () List!54171)

(assert (=> b!4784994 (= res!2032382 (not (isDefined!10122 (getPair!819 lt!1946790 key!5896))))))

(declare-fun lt!1946792 () Unit!139449)

(declare-fun lt!1946789 () tuple2!56558)

(declare-fun forallContained!4091 (List!54172 Int tuple2!56558) Unit!139449)

(assert (=> b!4784994 (= lt!1946792 (forallContained!4091 (toList!6773 lm!2473) lambda!229032 lt!1946789))))

(declare-fun contains!17612 (List!54172 tuple2!56558) Bool)

(assert (=> b!4784994 (contains!17612 (toList!6773 lm!2473) lt!1946789)))

(assert (=> b!4784994 (= lt!1946789 (tuple2!56559 lt!1946787 lt!1946790))))

(declare-fun lt!1946786 () Unit!139449)

(declare-fun lemmaGetValueImpliesTupleContained!626 (ListLongMap!5195 (_ BitVec 64) List!54171) Unit!139449)

(assert (=> b!4784994 (= lt!1946786 (lemmaGetValueImpliesTupleContained!626 lm!2473 lt!1946787 lt!1946790))))

(assert (=> b!4784994 (= lt!1946790 (apply!12902 lm!2473 lt!1946787))))

(assert (= (and start!491892 res!2032383) b!4784988))

(assert (= (and b!4784988 res!2032378) b!4784990))

(assert (= (and b!4784990 res!2032381) b!4784989))

(assert (= (and b!4784989 res!2032377) b!4784993))

(assert (= (and b!4784989 (not res!2032379)) b!4784987))

(assert (= (and b!4784987 (not res!2032380)) b!4784994))

(assert (= (and b!4784994 (not res!2032382)) b!4784991))

(assert (= start!491892 b!4784992))

(declare-fun m!5763922 () Bool)

(assert (=> b!4784994 m!5763922))

(declare-fun m!5763924 () Bool)

(assert (=> b!4784994 m!5763924))

(declare-fun m!5763926 () Bool)

(assert (=> b!4784994 m!5763926))

(declare-fun m!5763928 () Bool)

(assert (=> b!4784994 m!5763928))

(declare-fun m!5763930 () Bool)

(assert (=> b!4784994 m!5763930))

(assert (=> b!4784994 m!5763926))

(declare-fun m!5763932 () Bool)

(assert (=> b!4784994 m!5763932))

(assert (=> b!4784993 m!5763922))

(assert (=> b!4784993 m!5763922))

(declare-fun m!5763934 () Bool)

(assert (=> b!4784993 m!5763934))

(assert (=> b!4784993 m!5763934))

(declare-fun m!5763936 () Bool)

(assert (=> b!4784993 m!5763936))

(declare-fun m!5763938 () Bool)

(assert (=> b!4784991 m!5763938))

(declare-fun m!5763940 () Bool)

(assert (=> b!4784990 m!5763940))

(assert (=> b!4784990 m!5763940))

(declare-fun m!5763942 () Bool)

(assert (=> b!4784990 m!5763942))

(assert (=> start!491892 m!5763938))

(declare-fun m!5763944 () Bool)

(assert (=> start!491892 m!5763944))

(declare-fun m!5763946 () Bool)

(assert (=> b!4784988 m!5763946))

(assert (=> b!4784989 m!5763938))

(declare-fun m!5763948 () Bool)

(assert (=> b!4784989 m!5763948))

(declare-fun m!5763950 () Bool)

(assert (=> b!4784989 m!5763950))

(declare-fun m!5763952 () Bool)

(assert (=> b!4784989 m!5763952))

(push 1)

(assert (not start!491892))

(assert tp_is_empty!33289)

(assert (not b!4784992))

(assert (not b!4784994))

(assert (not b!4784989))

(assert (not b!4784991))

(assert (not b!4784993))

(assert (not b!4784988))

(assert (not b!4784990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


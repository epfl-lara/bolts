; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!504788 () Bool)

(assert start!504788)

(declare-fun b!4846207 () Bool)

(declare-fun res!2067330 () Bool)

(declare-fun e!3029009 () Bool)

(assert (=> b!4846207 (=> (not res!2067330) (not e!3029009))))

(declare-datatypes ((K!17279 0))(
  ( (K!17280 (val!22129 Int)) )
))
(declare-datatypes ((V!17525 0))(
  ( (V!17526 (val!22130 Int)) )
))
(declare-datatypes ((tuple2!59130 0))(
  ( (tuple2!59131 (_1!32859 K!17279) (_2!32859 V!17525)) )
))
(declare-datatypes ((List!55622 0))(
  ( (Nil!55498) (Cons!55498 (h!61935 tuple2!59130) (t!363118 List!55622)) )
))
(declare-datatypes ((tuple2!59132 0))(
  ( (tuple2!59133 (_1!32860 (_ BitVec 64)) (_2!32860 List!55622)) )
))
(declare-datatypes ((List!55623 0))(
  ( (Nil!55499) (Cons!55499 (h!61936 tuple2!59132) (t!363119 List!55623)) )
))
(declare-datatypes ((ListLongMap!6403 0))(
  ( (ListLongMap!6404 (toList!7830 List!55623)) )
))
(declare-fun lm!2646 () ListLongMap!6403)

(declare-datatypes ((Hashable!7470 0))(
  ( (HashableExt!7469 (__x!33745 Int)) )
))
(declare-fun hashF!1641 () Hashable!7470)

(declare-fun allKeysSameHashInMap!2786 (ListLongMap!6403 Hashable!7470) Bool)

(assert (=> b!4846207 (= res!2067330 (allKeysSameHashInMap!2786 lm!2646 hashF!1641))))

(declare-fun b!4846209 () Bool)

(declare-fun e!3029007 () Bool)

(assert (=> b!4846209 (= e!3029007 true)))

(declare-datatypes ((Option!13630 0))(
  ( (None!13629) (Some!13629 (v!49375 tuple2!59130)) )
))
(declare-fun lt!1987969 () Option!13630)

(declare-fun key!6445 () K!17279)

(declare-fun getPair!1060 (List!55622 K!17279) Option!13630)

(assert (=> b!4846209 (= lt!1987969 (getPair!1060 (_2!32860 (h!61936 (toList!7830 lm!2646))) key!6445))))

(declare-fun b!4846210 () Bool)

(declare-fun e!3029010 () Bool)

(assert (=> b!4846210 (= e!3029010 (not e!3029007))))

(declare-fun res!2067333 () Bool)

(assert (=> b!4846210 (=> res!2067333 e!3029007)))

(declare-fun lt!1987970 () List!55622)

(declare-fun isDefined!10722 (Option!13630) Bool)

(assert (=> b!4846210 (= res!2067333 (not (isDefined!10722 (getPair!1060 lt!1987970 key!6445))))))

(declare-fun lambda!242298 () Int)

(declare-fun lt!1987967 () tuple2!59132)

(declare-datatypes ((Unit!145621 0))(
  ( (Unit!145622) )
))
(declare-fun lt!1987968 () Unit!145621)

(declare-fun forallContained!4511 (List!55623 Int tuple2!59132) Unit!145621)

(assert (=> b!4846210 (= lt!1987968 (forallContained!4511 (toList!7830 lm!2646) lambda!242298 lt!1987967))))

(declare-fun contains!19142 (List!55623 tuple2!59132) Bool)

(assert (=> b!4846210 (contains!19142 (toList!7830 lm!2646) lt!1987967)))

(declare-fun lt!1987971 () (_ BitVec 64))

(assert (=> b!4846210 (= lt!1987967 (tuple2!59133 lt!1987971 lt!1987970))))

(declare-fun lt!1987966 () Unit!145621)

(declare-fun lemmaGetValueImpliesTupleContained!737 (ListLongMap!6403 (_ BitVec 64) List!55622) Unit!145621)

(assert (=> b!4846210 (= lt!1987966 (lemmaGetValueImpliesTupleContained!737 lm!2646 lt!1987971 lt!1987970))))

(declare-fun apply!13413 (ListLongMap!6403 (_ BitVec 64)) List!55622)

(assert (=> b!4846210 (= lt!1987970 (apply!13413 lm!2646 lt!1987971))))

(declare-fun b!4846211 () Bool)

(declare-fun res!2067331 () Bool)

(assert (=> b!4846211 (=> res!2067331 e!3029007)))

(get-info :version)

(assert (=> b!4846211 (= res!2067331 (or (not ((_ is Cons!55499) (toList!7830 lm!2646))) (not (= (_1!32860 (h!61936 (toList!7830 lm!2646))) lt!1987971))))))

(declare-fun res!2067332 () Bool)

(assert (=> start!504788 (=> (not res!2067332) (not e!3029009))))

(declare-fun forall!12923 (List!55623 Int) Bool)

(assert (=> start!504788 (= res!2067332 (forall!12923 (toList!7830 lm!2646) lambda!242298))))

(assert (=> start!504788 e!3029009))

(declare-fun e!3029008 () Bool)

(declare-fun inv!71165 (ListLongMap!6403) Bool)

(assert (=> start!504788 (and (inv!71165 lm!2646) e!3029008)))

(assert (=> start!504788 true))

(declare-fun tp_is_empty!35115 () Bool)

(assert (=> start!504788 tp_is_empty!35115))

(declare-fun b!4846208 () Bool)

(declare-fun res!2067328 () Bool)

(assert (=> b!4846208 (=> res!2067328 e!3029007)))

(declare-fun noDuplicateKeys!2577 (List!55622) Bool)

(assert (=> b!4846208 (= res!2067328 (not (noDuplicateKeys!2577 (_2!32860 (h!61936 (toList!7830 lm!2646))))))))

(declare-fun b!4846212 () Bool)

(declare-fun tp!1364454 () Bool)

(assert (=> b!4846212 (= e!3029008 tp!1364454)))

(declare-fun b!4846213 () Bool)

(assert (=> b!4846213 (= e!3029009 e!3029010)))

(declare-fun res!2067329 () Bool)

(assert (=> b!4846213 (=> (not res!2067329) (not e!3029010))))

(declare-fun contains!19143 (ListLongMap!6403 (_ BitVec 64)) Bool)

(assert (=> b!4846213 (= res!2067329 (contains!19143 lm!2646 lt!1987971))))

(declare-fun hash!5540 (Hashable!7470 K!17279) (_ BitVec 64))

(assert (=> b!4846213 (= lt!1987971 (hash!5540 hashF!1641 key!6445))))

(assert (= (and start!504788 res!2067332) b!4846207))

(assert (= (and b!4846207 res!2067330) b!4846213))

(assert (= (and b!4846213 res!2067329) b!4846210))

(assert (= (and b!4846210 (not res!2067333)) b!4846211))

(assert (= (and b!4846211 (not res!2067331)) b!4846208))

(assert (= (and b!4846208 (not res!2067328)) b!4846209))

(assert (= start!504788 b!4846212))

(declare-fun m!5844118 () Bool)

(assert (=> b!4846207 m!5844118))

(declare-fun m!5844120 () Bool)

(assert (=> b!4846209 m!5844120))

(declare-fun m!5844122 () Bool)

(assert (=> start!504788 m!5844122))

(declare-fun m!5844124 () Bool)

(assert (=> start!504788 m!5844124))

(declare-fun m!5844126 () Bool)

(assert (=> b!4846210 m!5844126))

(declare-fun m!5844128 () Bool)

(assert (=> b!4846210 m!5844128))

(assert (=> b!4846210 m!5844128))

(declare-fun m!5844130 () Bool)

(assert (=> b!4846210 m!5844130))

(declare-fun m!5844132 () Bool)

(assert (=> b!4846210 m!5844132))

(declare-fun m!5844134 () Bool)

(assert (=> b!4846210 m!5844134))

(declare-fun m!5844136 () Bool)

(assert (=> b!4846210 m!5844136))

(declare-fun m!5844138 () Bool)

(assert (=> b!4846208 m!5844138))

(declare-fun m!5844140 () Bool)

(assert (=> b!4846213 m!5844140))

(declare-fun m!5844142 () Bool)

(assert (=> b!4846213 m!5844142))

(check-sat (not b!4846208) (not b!4846213) (not b!4846209) (not b!4846207) tp_is_empty!35115 (not b!4846212) (not start!504788) (not b!4846210))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489758 () Bool)

(assert start!489758)

(declare-fun b!4776866 () Bool)

(declare-fun res!2027411 () Bool)

(declare-fun e!2982096 () Bool)

(assert (=> b!4776866 (=> res!2027411 e!2982096)))

(declare-datatypes ((K!15449 0))(
  ( (K!15450 (val!20665 Int)) )
))
(declare-datatypes ((V!15695 0))(
  ( (V!15696 (val!20666 Int)) )
))
(declare-datatypes ((tuple2!56304 0))(
  ( (tuple2!56305 (_1!31446 K!15449) (_2!31446 V!15695)) )
))
(declare-datatypes ((List!54017 0))(
  ( (Nil!53893) (Cons!53893 (h!60307 tuple2!56304) (t!361467 List!54017)) )
))
(declare-datatypes ((tuple2!56306 0))(
  ( (tuple2!56307 (_1!31447 (_ BitVec 64)) (_2!31447 List!54017)) )
))
(declare-datatypes ((List!54018 0))(
  ( (Nil!53894) (Cons!53894 (h!60308 tuple2!56306) (t!361468 List!54018)) )
))
(declare-datatypes ((ListLongMap!5069 0))(
  ( (ListLongMap!5070 (toList!6651 List!54018)) )
))
(declare-fun lt!1940114 () ListLongMap!5069)

(declare-fun key!6641 () K!15449)

(declare-fun containsKeyBiggerList!440 (List!54018 K!15449) Bool)

(assert (=> b!4776866 (= res!2027411 (not (containsKeyBiggerList!440 (toList!6651 lt!1940114) key!6641)))))

(declare-fun b!4776867 () Bool)

(declare-fun e!2982097 () Bool)

(assert (=> b!4776867 (= e!2982097 true)))

(declare-fun v!11584 () V!15695)

(declare-fun getValue!44 (List!54018 K!15449) V!15695)

(assert (=> b!4776867 (= (getValue!44 (toList!6651 lt!1940114) key!6641) v!11584)))

(declare-datatypes ((Hashable!6784 0))(
  ( (HashableExt!6783 (__x!32807 Int)) )
))
(declare-fun hashF!1687 () Hashable!6784)

(declare-datatypes ((Unit!138926 0))(
  ( (Unit!138927) )
))
(declare-fun lt!1940115 () Unit!138926)

(declare-fun lemmaGetValueEquivToGetPair!44 (ListLongMap!5069 K!15449 V!15695 Hashable!6784) Unit!138926)

(assert (=> b!4776867 (= lt!1940115 (lemmaGetValueEquivToGetPair!44 lt!1940114 key!6641 v!11584 hashF!1687))))

(declare-fun b!4776868 () Bool)

(declare-fun res!2027414 () Bool)

(declare-fun e!2982095 () Bool)

(assert (=> b!4776868 (=> (not res!2027414) (not e!2982095))))

(declare-fun lm!2709 () ListLongMap!5069)

(assert (=> b!4776868 (= res!2027414 (containsKeyBiggerList!440 (toList!6651 lm!2709) key!6641))))

(declare-fun b!4776869 () Bool)

(declare-fun res!2027415 () Bool)

(assert (=> b!4776869 (=> (not res!2027415) (not e!2982095))))

(declare-fun allKeysSameHashInMap!2189 (ListLongMap!5069 Hashable!6784) Bool)

(assert (=> b!4776869 (= res!2027415 (allKeysSameHashInMap!2189 lm!2709 hashF!1687))))

(declare-fun b!4776870 () Bool)

(declare-fun e!2982093 () Bool)

(assert (=> b!4776870 (= e!2982095 (not e!2982093))))

(declare-fun res!2027416 () Bool)

(assert (=> b!4776870 (=> res!2027416 e!2982093)))

(declare-datatypes ((Option!12877 0))(
  ( (None!12876) (Some!12876 (v!48045 tuple2!56304)) )
))
(declare-fun lt!1940103 () Option!12877)

(declare-fun get!18295 (Option!12877) tuple2!56304)

(assert (=> b!4776870 (= res!2027416 (not (= (_2!31446 (get!18295 lt!1940103)) v!11584)))))

(declare-fun isDefined!10021 (Option!12877) Bool)

(assert (=> b!4776870 (isDefined!10021 lt!1940103)))

(declare-fun lt!1940096 () List!54017)

(declare-fun getPair!772 (List!54017 K!15449) Option!12877)

(assert (=> b!4776870 (= lt!1940103 (getPair!772 lt!1940096 key!6641))))

(declare-fun lt!1940104 () tuple2!56306)

(declare-fun lt!1940101 () Unit!138926)

(declare-fun lambda!227021 () Int)

(declare-fun forallContained!4013 (List!54018 Int tuple2!56306) Unit!138926)

(assert (=> b!4776870 (= lt!1940101 (forallContained!4013 (toList!6651 lm!2709) lambda!227021 lt!1940104))))

(declare-fun lt!1940109 () Unit!138926)

(declare-fun lemmaInGenMapThenGetPairDefined!546 (ListLongMap!5069 K!15449 Hashable!6784) Unit!138926)

(assert (=> b!4776870 (= lt!1940109 (lemmaInGenMapThenGetPairDefined!546 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1940094 () Unit!138926)

(assert (=> b!4776870 (= lt!1940094 (forallContained!4013 (toList!6651 lm!2709) lambda!227021 lt!1940104))))

(declare-fun contains!17392 (List!54018 tuple2!56306) Bool)

(assert (=> b!4776870 (contains!17392 (toList!6651 lm!2709) lt!1940104)))

(declare-fun lt!1940098 () (_ BitVec 64))

(assert (=> b!4776870 (= lt!1940104 (tuple2!56307 lt!1940098 lt!1940096))))

(declare-fun lt!1940100 () Unit!138926)

(declare-fun lemmaGetValueImpliesTupleContained!575 (ListLongMap!5069 (_ BitVec 64) List!54017) Unit!138926)

(assert (=> b!4776870 (= lt!1940100 (lemmaGetValueImpliesTupleContained!575 lm!2709 lt!1940098 lt!1940096))))

(declare-fun apply!12847 (ListLongMap!5069 (_ BitVec 64)) List!54017)

(assert (=> b!4776870 (= lt!1940096 (apply!12847 lm!2709 lt!1940098))))

(declare-fun contains!17393 (ListLongMap!5069 (_ BitVec 64)) Bool)

(assert (=> b!4776870 (contains!17393 lm!2709 lt!1940098)))

(declare-fun hash!4762 (Hashable!6784 K!15449) (_ BitVec 64))

(assert (=> b!4776870 (= lt!1940098 (hash!4762 hashF!1687 key!6641))))

(declare-fun lt!1940106 () Unit!138926)

(declare-fun lemmaInGenMapThenLongMapContainsHash!988 (ListLongMap!5069 K!15449 Hashable!6784) Unit!138926)

(assert (=> b!4776870 (= lt!1940106 (lemmaInGenMapThenLongMapContainsHash!988 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6127 0))(
  ( (ListMap!6128 (toList!6652 List!54017)) )
))
(declare-fun contains!17394 (ListMap!6127 K!15449) Bool)

(declare-fun extractMap!2315 (List!54018) ListMap!6127)

(assert (=> b!4776870 (contains!17394 (extractMap!2315 (toList!6651 lm!2709)) key!6641)))

(declare-fun lt!1940099 () Unit!138926)

(declare-fun lemmaListContainsThenExtractedMapContains!636 (ListLongMap!5069 K!15449 Hashable!6784) Unit!138926)

(assert (=> b!4776870 (= lt!1940099 (lemmaListContainsThenExtractedMapContains!636 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4776871 () Bool)

(declare-fun res!2027413 () Bool)

(assert (=> b!4776871 (=> res!2027413 e!2982093)))

(get-info :version)

(assert (=> b!4776871 (= res!2027413 (or (and ((_ is Cons!53894) (toList!6651 lm!2709)) (= (_1!31447 (h!60308 (toList!6651 lm!2709))) lt!1940098)) (not ((_ is Cons!53894) (toList!6651 lm!2709)))))))

(declare-fun b!4776872 () Bool)

(declare-fun e!2982094 () Bool)

(assert (=> b!4776872 (= e!2982093 e!2982094)))

(declare-fun res!2027410 () Bool)

(assert (=> b!4776872 (=> res!2027410 e!2982094)))

(declare-fun containsKey!3759 (List!54017 K!15449) Bool)

(assert (=> b!4776872 (= res!2027410 (containsKey!3759 (_2!31447 (h!60308 (toList!6651 lm!2709))) key!6641))))

(assert (=> b!4776872 (not (containsKey!3759 (apply!12847 lm!2709 (_1!31447 (h!60308 (toList!6651 lm!2709)))) key!6641))))

(declare-fun lt!1940097 () Unit!138926)

(declare-fun lemmaNotSameHashThenCannotContainKey!176 (ListLongMap!5069 K!15449 (_ BitVec 64) Hashable!6784) Unit!138926)

(assert (=> b!4776872 (= lt!1940097 (lemmaNotSameHashThenCannotContainKey!176 lm!2709 key!6641 (_1!31447 (h!60308 (toList!6651 lm!2709))) hashF!1687))))

(declare-fun b!4776873 () Bool)

(declare-fun res!2027409 () Bool)

(assert (=> b!4776873 (=> res!2027409 e!2982096)))

(assert (=> b!4776873 (= res!2027409 (not (allKeysSameHashInMap!2189 lt!1940114 hashF!1687)))))

(declare-fun b!4776874 () Bool)

(declare-fun e!2982098 () Bool)

(declare-fun tp!1357168 () Bool)

(assert (=> b!4776874 (= e!2982098 tp!1357168)))

(declare-fun res!2027412 () Bool)

(assert (=> start!489758 (=> (not res!2027412) (not e!2982095))))

(declare-fun forall!12056 (List!54018 Int) Bool)

(assert (=> start!489758 (= res!2027412 (forall!12056 (toList!6651 lm!2709) lambda!227021))))

(assert (=> start!489758 e!2982095))

(declare-fun inv!69475 (ListLongMap!5069) Bool)

(assert (=> start!489758 (and (inv!69475 lm!2709) e!2982098)))

(assert (=> start!489758 true))

(declare-fun tp_is_empty!33065 () Bool)

(assert (=> start!489758 tp_is_empty!33065))

(declare-fun tp_is_empty!33067 () Bool)

(assert (=> start!489758 tp_is_empty!33067))

(declare-fun b!4776875 () Bool)

(assert (=> b!4776875 (= e!2982096 e!2982097)))

(declare-fun res!2027417 () Bool)

(assert (=> b!4776875 (=> res!2027417 e!2982097)))

(declare-fun lt!1940093 () Option!12877)

(assert (=> b!4776875 (= res!2027417 (not (= (_2!31446 (get!18295 lt!1940093)) v!11584)))))

(assert (=> b!4776875 (isDefined!10021 lt!1940093)))

(declare-fun lt!1940107 () List!54017)

(assert (=> b!4776875 (= lt!1940093 (getPair!772 lt!1940107 key!6641))))

(declare-fun lt!1940113 () tuple2!56306)

(declare-fun lt!1940102 () Unit!138926)

(assert (=> b!4776875 (= lt!1940102 (forallContained!4013 (toList!6651 lt!1940114) lambda!227021 lt!1940113))))

(declare-fun lt!1940095 () Unit!138926)

(assert (=> b!4776875 (= lt!1940095 (lemmaInGenMapThenGetPairDefined!546 lt!1940114 key!6641 hashF!1687))))

(declare-fun lt!1940111 () Unit!138926)

(assert (=> b!4776875 (= lt!1940111 (forallContained!4013 (toList!6651 lt!1940114) lambda!227021 lt!1940113))))

(assert (=> b!4776875 (contains!17392 (toList!6651 lt!1940114) lt!1940113)))

(assert (=> b!4776875 (= lt!1940113 (tuple2!56307 lt!1940098 lt!1940107))))

(declare-fun lt!1940110 () Unit!138926)

(assert (=> b!4776875 (= lt!1940110 (lemmaGetValueImpliesTupleContained!575 lt!1940114 lt!1940098 lt!1940107))))

(assert (=> b!4776875 (= lt!1940107 (apply!12847 lt!1940114 lt!1940098))))

(assert (=> b!4776875 (contains!17393 lt!1940114 lt!1940098)))

(declare-fun lt!1940108 () Unit!138926)

(assert (=> b!4776875 (= lt!1940108 (lemmaInGenMapThenLongMapContainsHash!988 lt!1940114 key!6641 hashF!1687))))

(assert (=> b!4776875 (contains!17394 (extractMap!2315 (toList!6651 lt!1940114)) key!6641)))

(declare-fun lt!1940105 () Unit!138926)

(assert (=> b!4776875 (= lt!1940105 (lemmaListContainsThenExtractedMapContains!636 lt!1940114 key!6641 hashF!1687))))

(declare-fun b!4776876 () Bool)

(assert (=> b!4776876 (= e!2982094 e!2982096)))

(declare-fun res!2027418 () Bool)

(assert (=> b!4776876 (=> res!2027418 e!2982096)))

(assert (=> b!4776876 (= res!2027418 (not (forall!12056 (toList!6651 lt!1940114) lambda!227021)))))

(declare-fun tail!9180 (ListLongMap!5069) ListLongMap!5069)

(assert (=> b!4776876 (= lt!1940114 (tail!9180 lm!2709))))

(declare-fun tail!9181 (List!54018) List!54018)

(assert (=> b!4776876 (containsKeyBiggerList!440 (tail!9181 (toList!6651 lm!2709)) key!6641)))

(declare-fun lt!1940112 () Unit!138926)

(declare-fun lemmaInBiggerListButNotHeadThenTail!10 (ListLongMap!5069 K!15449 Hashable!6784) Unit!138926)

(assert (=> b!4776876 (= lt!1940112 (lemmaInBiggerListButNotHeadThenTail!10 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!489758 res!2027412) b!4776869))

(assert (= (and b!4776869 res!2027415) b!4776868))

(assert (= (and b!4776868 res!2027414) b!4776870))

(assert (= (and b!4776870 (not res!2027416)) b!4776871))

(assert (= (and b!4776871 (not res!2027413)) b!4776872))

(assert (= (and b!4776872 (not res!2027410)) b!4776876))

(assert (= (and b!4776876 (not res!2027418)) b!4776873))

(assert (= (and b!4776873 (not res!2027409)) b!4776866))

(assert (= (and b!4776866 (not res!2027411)) b!4776875))

(assert (= (and b!4776875 (not res!2027417)) b!4776867))

(assert (= start!489758 b!4776874))

(declare-fun m!5752164 () Bool)

(assert (=> b!4776868 m!5752164))

(declare-fun m!5752166 () Bool)

(assert (=> b!4776873 m!5752166))

(declare-fun m!5752168 () Bool)

(assert (=> b!4776872 m!5752168))

(declare-fun m!5752170 () Bool)

(assert (=> b!4776872 m!5752170))

(assert (=> b!4776872 m!5752170))

(declare-fun m!5752172 () Bool)

(assert (=> b!4776872 m!5752172))

(declare-fun m!5752174 () Bool)

(assert (=> b!4776872 m!5752174))

(declare-fun m!5752176 () Bool)

(assert (=> b!4776870 m!5752176))

(declare-fun m!5752178 () Bool)

(assert (=> b!4776870 m!5752178))

(declare-fun m!5752180 () Bool)

(assert (=> b!4776870 m!5752180))

(declare-fun m!5752182 () Bool)

(assert (=> b!4776870 m!5752182))

(declare-fun m!5752184 () Bool)

(assert (=> b!4776870 m!5752184))

(declare-fun m!5752186 () Bool)

(assert (=> b!4776870 m!5752186))

(declare-fun m!5752188 () Bool)

(assert (=> b!4776870 m!5752188))

(declare-fun m!5752190 () Bool)

(assert (=> b!4776870 m!5752190))

(declare-fun m!5752192 () Bool)

(assert (=> b!4776870 m!5752192))

(declare-fun m!5752194 () Bool)

(assert (=> b!4776870 m!5752194))

(declare-fun m!5752196 () Bool)

(assert (=> b!4776870 m!5752196))

(declare-fun m!5752198 () Bool)

(assert (=> b!4776870 m!5752198))

(declare-fun m!5752200 () Bool)

(assert (=> b!4776870 m!5752200))

(assert (=> b!4776870 m!5752188))

(assert (=> b!4776870 m!5752190))

(declare-fun m!5752202 () Bool)

(assert (=> b!4776870 m!5752202))

(declare-fun m!5752204 () Bool)

(assert (=> b!4776875 m!5752204))

(declare-fun m!5752206 () Bool)

(assert (=> b!4776875 m!5752206))

(declare-fun m!5752208 () Bool)

(assert (=> b!4776875 m!5752208))

(declare-fun m!5752210 () Bool)

(assert (=> b!4776875 m!5752210))

(declare-fun m!5752212 () Bool)

(assert (=> b!4776875 m!5752212))

(declare-fun m!5752214 () Bool)

(assert (=> b!4776875 m!5752214))

(declare-fun m!5752216 () Bool)

(assert (=> b!4776875 m!5752216))

(declare-fun m!5752218 () Bool)

(assert (=> b!4776875 m!5752218))

(declare-fun m!5752220 () Bool)

(assert (=> b!4776875 m!5752220))

(declare-fun m!5752222 () Bool)

(assert (=> b!4776875 m!5752222))

(declare-fun m!5752224 () Bool)

(assert (=> b!4776875 m!5752224))

(declare-fun m!5752226 () Bool)

(assert (=> b!4776875 m!5752226))

(assert (=> b!4776875 m!5752212))

(assert (=> b!4776875 m!5752218))

(declare-fun m!5752228 () Bool)

(assert (=> b!4776875 m!5752228))

(declare-fun m!5752230 () Bool)

(assert (=> b!4776867 m!5752230))

(declare-fun m!5752232 () Bool)

(assert (=> b!4776867 m!5752232))

(declare-fun m!5752234 () Bool)

(assert (=> start!489758 m!5752234))

(declare-fun m!5752236 () Bool)

(assert (=> start!489758 m!5752236))

(declare-fun m!5752238 () Bool)

(assert (=> b!4776869 m!5752238))

(declare-fun m!5752240 () Bool)

(assert (=> b!4776866 m!5752240))

(declare-fun m!5752242 () Bool)

(assert (=> b!4776876 m!5752242))

(declare-fun m!5752244 () Bool)

(assert (=> b!4776876 m!5752244))

(declare-fun m!5752246 () Bool)

(assert (=> b!4776876 m!5752246))

(declare-fun m!5752248 () Bool)

(assert (=> b!4776876 m!5752248))

(declare-fun m!5752250 () Bool)

(assert (=> b!4776876 m!5752250))

(assert (=> b!4776876 m!5752242))

(check-sat (not b!4776875) (not b!4776867) (not b!4776874) (not b!4776870) tp_is_empty!33065 (not b!4776876) (not b!4776873) (not b!4776872) (not b!4776869) (not b!4776868) (not b!4776866) tp_is_empty!33067 (not start!489758))
(check-sat)

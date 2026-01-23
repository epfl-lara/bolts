; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488594 () Bool)

(assert start!488594)

(declare-fun b!4772041 () Bool)

(declare-fun e!2979011 () Bool)

(declare-fun e!2979010 () Bool)

(assert (=> b!4772041 (= e!2979011 (not e!2979010))))

(declare-fun res!2024262 () Bool)

(assert (=> b!4772041 (=> res!2024262 e!2979010)))

(declare-datatypes ((K!15189 0))(
  ( (K!15190 (val!20457 Int)) )
))
(declare-datatypes ((V!15435 0))(
  ( (V!15436 (val!20458 Int)) )
))
(declare-datatypes ((tuple2!55888 0))(
  ( (tuple2!55889 (_1!31238 K!15189) (_2!31238 V!15435)) )
))
(declare-datatypes ((Option!12775 0))(
  ( (None!12774) (Some!12774 (v!47901 tuple2!55888)) )
))
(declare-fun lt!1935001 () Option!12775)

(declare-fun v!9615 () V!15435)

(declare-fun get!18155 (Option!12775) tuple2!55888)

(assert (=> b!4772041 (= res!2024262 (not (= (_2!31238 (get!18155 lt!1935001)) v!9615)))))

(declare-fun isDefined!9921 (Option!12775) Bool)

(assert (=> b!4772041 (isDefined!9921 lt!1935001)))

(declare-datatypes ((List!53793 0))(
  ( (Nil!53669) (Cons!53669 (h!60081 tuple2!55888) (t!361243 List!53793)) )
))
(declare-fun lt!1934992 () List!53793)

(declare-fun key!2872 () K!15189)

(declare-fun getPair!700 (List!53793 K!15189) Option!12775)

(assert (=> b!4772041 (= lt!1935001 (getPair!700 lt!1934992 key!2872))))

(declare-datatypes ((tuple2!55890 0))(
  ( (tuple2!55891 (_1!31239 (_ BitVec 64)) (_2!31239 List!53793)) )
))
(declare-datatypes ((List!53794 0))(
  ( (Nil!53670) (Cons!53670 (h!60082 tuple2!55890) (t!361244 List!53794)) )
))
(declare-datatypes ((ListLongMap!4861 0))(
  ( (ListLongMap!4862 (toList!6447 List!53794)) )
))
(declare-fun lm!1309 () ListLongMap!4861)

(declare-fun lt!1934993 () tuple2!55890)

(declare-fun lambda!225475 () Int)

(declare-datatypes ((Unit!138564 0))(
  ( (Unit!138565) )
))
(declare-fun lt!1934989 () Unit!138564)

(declare-fun forallContained!3925 (List!53794 Int tuple2!55890) Unit!138564)

(assert (=> b!4772041 (= lt!1934989 (forallContained!3925 (toList!6447 lm!1309) lambda!225475 lt!1934993))))

(declare-datatypes ((Hashable!6680 0))(
  ( (HashableExt!6679 (__x!32703 Int)) )
))
(declare-fun hashF!980 () Hashable!6680)

(declare-fun lt!1934988 () Unit!138564)

(declare-fun lemmaInGenMapThenGetPairDefined!474 (ListLongMap!4861 K!15189 Hashable!6680) Unit!138564)

(assert (=> b!4772041 (= lt!1934988 (lemmaInGenMapThenGetPairDefined!474 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1935000 () Unit!138564)

(assert (=> b!4772041 (= lt!1935000 (forallContained!3925 (toList!6447 lm!1309) lambda!225475 lt!1934993))))

(declare-fun contains!17088 (List!53794 tuple2!55890) Bool)

(assert (=> b!4772041 (contains!17088 (toList!6447 lm!1309) lt!1934993)))

(declare-fun lt!1934997 () (_ BitVec 64))

(assert (=> b!4772041 (= lt!1934993 (tuple2!55891 lt!1934997 lt!1934992))))

(declare-fun lt!1935003 () Unit!138564)

(declare-fun lemmaGetValueImpliesTupleContained!491 (ListLongMap!4861 (_ BitVec 64) List!53793) Unit!138564)

(assert (=> b!4772041 (= lt!1935003 (lemmaGetValueImpliesTupleContained!491 lm!1309 lt!1934997 lt!1934992))))

(declare-fun apply!12740 (ListLongMap!4861 (_ BitVec 64)) List!53793)

(assert (=> b!4772041 (= lt!1934992 (apply!12740 lm!1309 lt!1934997))))

(declare-fun contains!17089 (ListLongMap!4861 (_ BitVec 64)) Bool)

(assert (=> b!4772041 (contains!17089 lm!1309 lt!1934997)))

(declare-fun hash!4655 (Hashable!6680 K!15189) (_ BitVec 64))

(assert (=> b!4772041 (= lt!1934997 (hash!4655 hashF!980 key!2872))))

(declare-fun lt!1934995 () Unit!138564)

(declare-fun lemmaInGenMapThenLongMapContainsHash!896 (ListLongMap!4861 K!15189 Hashable!6680) Unit!138564)

(assert (=> b!4772041 (= lt!1934995 (lemmaInGenMapThenLongMapContainsHash!896 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772042 () Bool)

(declare-fun res!2024264 () Bool)

(declare-fun e!2979012 () Bool)

(assert (=> b!4772042 (=> (not res!2024264) (not e!2979012))))

(declare-fun allKeysSameHashInMap!2085 (ListLongMap!4861 Hashable!6680) Bool)

(assert (=> b!4772042 (= res!2024264 (allKeysSameHashInMap!2085 lm!1309 hashF!980))))

(declare-fun b!4772043 () Bool)

(assert (=> b!4772043 (= e!2979012 e!2979011)))

(declare-fun res!2024263 () Bool)

(assert (=> b!4772043 (=> (not res!2024263) (not e!2979011))))

(declare-datatypes ((ListMap!5927 0))(
  ( (ListMap!5928 (toList!6448 List!53793)) )
))
(declare-fun lt!1935002 () ListMap!5927)

(declare-fun contains!17090 (ListMap!5927 K!15189) Bool)

(assert (=> b!4772043 (= res!2024263 (contains!17090 lt!1935002 key!2872))))

(declare-fun extractMap!2215 (List!53794) ListMap!5927)

(assert (=> b!4772043 (= lt!1935002 (extractMap!2215 (toList!6447 lm!1309)))))

(declare-fun res!2024265 () Bool)

(assert (=> start!488594 (=> (not res!2024265) (not e!2979012))))

(declare-fun forall!11944 (List!53794 Int) Bool)

(assert (=> start!488594 (= res!2024265 (forall!11944 (toList!6447 lm!1309) lambda!225475))))

(assert (=> start!488594 e!2979012))

(declare-fun e!2979014 () Bool)

(declare-fun inv!69215 (ListLongMap!4861) Bool)

(assert (=> start!488594 (and (inv!69215 lm!1309) e!2979014)))

(assert (=> start!488594 true))

(declare-fun tp_is_empty!32717 () Bool)

(assert (=> start!488594 tp_is_empty!32717))

(declare-fun tp_is_empty!32719 () Bool)

(assert (=> start!488594 tp_is_empty!32719))

(declare-fun b!4772044 () Bool)

(declare-fun e!2979013 () Bool)

(assert (=> b!4772044 (= e!2979010 e!2979013)))

(declare-fun res!2024266 () Bool)

(assert (=> b!4772044 (=> res!2024266 e!2979013)))

(assert (=> b!4772044 (= res!2024266 (not (forall!11944 (toList!6447 lm!1309) lambda!225475)))))

(declare-fun getValue!20 (List!53794 K!15189) V!15435)

(assert (=> b!4772044 (= (getValue!20 (toList!6447 lm!1309) key!2872) v!9615)))

(declare-fun lt!1934994 () Unit!138564)

(declare-fun lemmaGetValueEquivToGetPair!20 (ListLongMap!4861 K!15189 V!15435 Hashable!6680) Unit!138564)

(assert (=> b!4772044 (= lt!1934994 (lemmaGetValueEquivToGetPair!20 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!354 (List!53794 K!15189) Bool)

(assert (=> b!4772044 (containsKeyBiggerList!354 (toList!6447 lm!1309) key!2872)))

(declare-fun lt!1934990 () Unit!138564)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!212 (ListLongMap!4861 K!15189 Hashable!6680) Unit!138564)

(assert (=> b!4772044 (= lt!1934990 (lemmaInLongMapThenContainsKeyBiggerList!212 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772045 () Bool)

(declare-fun tp!1356732 () Bool)

(assert (=> b!4772045 (= e!2979014 tp!1356732)))

(declare-fun b!4772046 () Bool)

(assert (=> b!4772046 (= e!2979013 true)))

(declare-fun lt!1934991 () Unit!138564)

(assert (=> b!4772046 (= lt!1934991 (forallContained!3925 (toList!6447 lm!1309) lambda!225475 lt!1934993))))

(declare-fun lt!1934999 () Unit!138564)

(assert (=> b!4772046 (= lt!1934999 (forallContained!3925 (toList!6447 lm!1309) lambda!225475 lt!1934993))))

(declare-fun apply!12741 (ListMap!5927 K!15189) V!15435)

(assert (=> b!4772046 (= (apply!12741 lt!1935002 key!2872) v!9615)))

(declare-fun lt!1934998 () Unit!138564)

(declare-fun lemmaExtractMapPreservesMapping!16 (ListLongMap!4861 K!15189 V!15435 Hashable!6680) Unit!138564)

(assert (=> b!4772046 (= lt!1934998 (lemmaExtractMapPreservesMapping!16 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1934996 () Unit!138564)

(declare-fun lemmaInGenericMapThenInLongMap!232 (ListLongMap!4861 K!15189 Hashable!6680) Unit!138564)

(assert (=> b!4772046 (= lt!1934996 (lemmaInGenericMapThenInLongMap!232 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488594 res!2024265) b!4772042))

(assert (= (and b!4772042 res!2024264) b!4772043))

(assert (= (and b!4772043 res!2024263) b!4772041))

(assert (= (and b!4772041 (not res!2024262)) b!4772044))

(assert (= (and b!4772044 (not res!2024266)) b!4772046))

(assert (= start!488594 b!4772045))

(declare-fun m!5744686 () Bool)

(assert (=> b!4772041 m!5744686))

(declare-fun m!5744688 () Bool)

(assert (=> b!4772041 m!5744688))

(declare-fun m!5744690 () Bool)

(assert (=> b!4772041 m!5744690))

(declare-fun m!5744692 () Bool)

(assert (=> b!4772041 m!5744692))

(declare-fun m!5744694 () Bool)

(assert (=> b!4772041 m!5744694))

(declare-fun m!5744696 () Bool)

(assert (=> b!4772041 m!5744696))

(declare-fun m!5744698 () Bool)

(assert (=> b!4772041 m!5744698))

(declare-fun m!5744700 () Bool)

(assert (=> b!4772041 m!5744700))

(declare-fun m!5744702 () Bool)

(assert (=> b!4772041 m!5744702))

(assert (=> b!4772041 m!5744696))

(declare-fun m!5744704 () Bool)

(assert (=> b!4772041 m!5744704))

(declare-fun m!5744706 () Bool)

(assert (=> b!4772041 m!5744706))

(declare-fun m!5744708 () Bool)

(assert (=> start!488594 m!5744708))

(declare-fun m!5744710 () Bool)

(assert (=> start!488594 m!5744710))

(assert (=> b!4772046 m!5744696))

(declare-fun m!5744712 () Bool)

(assert (=> b!4772046 m!5744712))

(declare-fun m!5744714 () Bool)

(assert (=> b!4772046 m!5744714))

(declare-fun m!5744716 () Bool)

(assert (=> b!4772046 m!5744716))

(assert (=> b!4772046 m!5744696))

(declare-fun m!5744718 () Bool)

(assert (=> b!4772043 m!5744718))

(declare-fun m!5744720 () Bool)

(assert (=> b!4772043 m!5744720))

(declare-fun m!5744722 () Bool)

(assert (=> b!4772044 m!5744722))

(assert (=> b!4772044 m!5744708))

(declare-fun m!5744724 () Bool)

(assert (=> b!4772044 m!5744724))

(declare-fun m!5744726 () Bool)

(assert (=> b!4772044 m!5744726))

(declare-fun m!5744728 () Bool)

(assert (=> b!4772044 m!5744728))

(declare-fun m!5744730 () Bool)

(assert (=> b!4772042 m!5744730))

(check-sat tp_is_empty!32717 (not b!4772041) (not b!4772045) (not b!4772043) (not start!488594) tp_is_empty!32719 (not b!4772044) (not b!4772046) (not b!4772042))
(check-sat)

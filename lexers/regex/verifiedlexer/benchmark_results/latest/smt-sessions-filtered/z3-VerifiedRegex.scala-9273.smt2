; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!492366 () Bool)

(assert start!492366)

(declare-fun bs!1153691 () Bool)

(declare-fun b!4786991 () Bool)

(assert (= bs!1153691 (and b!4786991 start!492366)))

(declare-fun lambda!229476 () Int)

(declare-fun lambda!229475 () Int)

(assert (=> bs!1153691 (not (= lambda!229476 lambda!229475))))

(assert (=> b!4786991 true))

(assert (=> b!4786991 true))

(assert (=> b!4786991 true))

(declare-fun b!4786982 () Bool)

(declare-fun res!2033626 () Bool)

(declare-fun e!2988852 () Bool)

(assert (=> b!4786982 (=> (not res!2033626) (not e!2988852))))

(declare-datatypes ((K!15654 0))(
  ( (K!15655 (val!20829 Int)) )
))
(declare-datatypes ((V!15900 0))(
  ( (V!15901 (val!20830 Int)) )
))
(declare-datatypes ((tuple2!56632 0))(
  ( (tuple2!56633 (_1!31610 K!15654) (_2!31610 V!15900)) )
))
(declare-datatypes ((List!54215 0))(
  ( (Nil!54091) (Cons!54091 (h!60515 tuple2!56632) (t!361665 List!54215)) )
))
(declare-datatypes ((tuple2!56634 0))(
  ( (tuple2!56635 (_1!31611 (_ BitVec 64)) (_2!31611 List!54215)) )
))
(declare-datatypes ((List!54216 0))(
  ( (Nil!54092) (Cons!54092 (h!60516 tuple2!56634) (t!361666 List!54216)) )
))
(declare-datatypes ((ListLongMap!5233 0))(
  ( (ListLongMap!5234 (toList!6811 List!54216)) )
))
(declare-fun lm!2473 () ListLongMap!5233)

(declare-fun key!5896 () K!15654)

(declare-datatypes ((ListMap!6283 0))(
  ( (ListMap!6284 (toList!6812 List!54215)) )
))
(declare-fun contains!17672 (ListMap!6283 K!15654) Bool)

(declare-fun extractMap!2393 (List!54216) ListMap!6283)

(assert (=> b!4786982 (= res!2033626 (contains!17672 (extractMap!2393 (toList!6811 lm!2473)) key!5896))))

(declare-fun b!4786983 () Bool)

(declare-fun e!2988853 () Bool)

(declare-fun lt!1947866 () (_ BitVec 64))

(declare-datatypes ((Option!13010 0))(
  ( (None!13009) (Some!13009 (v!48272 tuple2!56632)) )
))
(declare-fun isDefined!10152 (Option!13010) Bool)

(declare-fun getPair!838 (List!54215 K!15654) Option!13010)

(declare-fun apply!12921 (ListLongMap!5233 (_ BitVec 64)) List!54215)

(assert (=> b!4786983 (= e!2988853 (isDefined!10152 (getPair!838 (apply!12921 lm!2473 lt!1947866) key!5896)))))

(declare-fun b!4786984 () Bool)

(declare-fun res!2033627 () Bool)

(declare-fun e!2988850 () Bool)

(assert (=> b!4786984 (=> res!2033627 e!2988850)))

(declare-fun lt!1947867 () ListLongMap!5233)

(declare-datatypes ((Hashable!6866 0))(
  ( (HashableExt!6865 (__x!32889 Int)) )
))
(declare-fun hashF!1559 () Hashable!6866)

(declare-fun allKeysSameHashInMap!2271 (ListLongMap!5233 Hashable!6866) Bool)

(assert (=> b!4786984 (= res!2033627 (not (allKeysSameHashInMap!2271 lt!1947867 hashF!1559)))))

(declare-fun b!4786985 () Bool)

(declare-fun e!2988854 () Bool)

(assert (=> b!4786985 (= e!2988852 (not e!2988854))))

(declare-fun res!2033623 () Bool)

(assert (=> b!4786985 (=> res!2033623 e!2988854)))

(declare-fun value!3111 () V!15900)

(declare-fun getValue!62 (List!54216 K!15654) V!15900)

(assert (=> b!4786985 (= res!2033623 (not (= (getValue!62 (toList!6811 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!516 (List!54216 K!15654) Bool)

(assert (=> b!4786985 (containsKeyBiggerList!516 (toList!6811 lm!2473) key!5896)))

(declare-datatypes ((Unit!139568 0))(
  ( (Unit!139569) )
))
(declare-fun lt!1947869 () Unit!139568)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!256 (ListLongMap!5233 K!15654 Hashable!6866) Unit!139568)

(assert (=> b!4786985 (= lt!1947869 (lemmaInLongMapThenContainsKeyBiggerList!256 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4786985 e!2988853))

(declare-fun res!2033625 () Bool)

(assert (=> b!4786985 (=> (not res!2033625) (not e!2988853))))

(declare-fun contains!17673 (ListLongMap!5233 (_ BitVec 64)) Bool)

(assert (=> b!4786985 (= res!2033625 (contains!17673 lm!2473 lt!1947866))))

(declare-fun hash!4887 (Hashable!6866 K!15654) (_ BitVec 64))

(assert (=> b!4786985 (= lt!1947866 (hash!4887 hashF!1559 key!5896))))

(declare-fun lt!1947865 () Unit!139568)

(declare-fun lemmaInGenericMapThenInLongMap!270 (ListLongMap!5233 K!15654 Hashable!6866) Unit!139568)

(assert (=> b!4786985 (= lt!1947865 (lemmaInGenericMapThenInLongMap!270 lm!2473 key!5896 hashF!1559))))

(declare-fun res!2033621 () Bool)

(assert (=> start!492366 (=> (not res!2033621) (not e!2988852))))

(declare-fun forall!12174 (List!54216 Int) Bool)

(assert (=> start!492366 (= res!2033621 (forall!12174 (toList!6811 lm!2473) lambda!229475))))

(assert (=> start!492366 e!2988852))

(declare-fun e!2988851 () Bool)

(declare-fun inv!69680 (ListLongMap!5233) Bool)

(assert (=> start!492366 (and (inv!69680 lm!2473) e!2988851)))

(assert (=> start!492366 true))

(declare-fun tp_is_empty!33345 () Bool)

(assert (=> start!492366 tp_is_empty!33345))

(declare-fun tp_is_empty!33347 () Bool)

(assert (=> start!492366 tp_is_empty!33347))

(declare-fun b!4786986 () Bool)

(declare-fun res!2033619 () Bool)

(assert (=> b!4786986 (=> res!2033619 e!2988854)))

(get-info :version)

(assert (=> b!4786986 (= res!2033619 (not ((_ is Cons!54092) (toList!6811 lm!2473))))))

(declare-fun b!4786987 () Bool)

(declare-fun res!2033620 () Bool)

(assert (=> b!4786987 (=> res!2033620 e!2988850)))

(assert (=> b!4786987 (= res!2033620 (contains!17673 lt!1947867 lt!1947866))))

(declare-fun b!4786988 () Bool)

(declare-fun tp!1357716 () Bool)

(assert (=> b!4786988 (= e!2988851 tp!1357716)))

(declare-fun b!4786989 () Bool)

(declare-fun res!2033628 () Bool)

(assert (=> b!4786989 (=> (not res!2033628) (not e!2988852))))

(assert (=> b!4786989 (= res!2033628 (allKeysSameHashInMap!2271 lm!2473 hashF!1559))))

(declare-fun b!4786990 () Bool)

(assert (=> b!4786990 (= e!2988850 true)))

(assert (=> b!4786991 (= e!2988854 e!2988850)))

(declare-fun res!2033622 () Bool)

(assert (=> b!4786991 (=> res!2033622 e!2988850)))

(assert (=> b!4786991 (= res!2033622 (not (forall!12174 (toList!6811 lt!1947867) lambda!229475)))))

(declare-fun tail!9213 (ListLongMap!5233) ListLongMap!5233)

(assert (=> b!4786991 (= lt!1947867 (tail!9213 lm!2473))))

(declare-fun lambda!229477 () Int)

(declare-fun lt!1947868 () Unit!139568)

(declare-fun forallContained!4115 (List!54215 Int tuple2!56632) Unit!139568)

(assert (=> b!4786991 (= lt!1947868 (forallContained!4115 (_2!31611 (h!60516 (toList!6811 lm!2473))) lambda!229477 (tuple2!56633 key!5896 value!3111)))))

(declare-fun lt!1947864 () Unit!139568)

(declare-fun forallContained!4116 (List!54216 Int tuple2!56634) Unit!139568)

(assert (=> b!4786991 (= lt!1947864 (forallContained!4116 (toList!6811 lm!2473) lambda!229476 (h!60516 (toList!6811 lm!2473))))))

(declare-fun b!4786992 () Bool)

(declare-fun res!2033624 () Bool)

(assert (=> b!4786992 (=> res!2033624 e!2988854)))

(declare-fun containsKey!3873 (List!54215 K!15654) Bool)

(assert (=> b!4786992 (= res!2033624 (not (containsKey!3873 (_2!31611 (h!60516 (toList!6811 lm!2473))) key!5896)))))

(assert (= (and start!492366 res!2033621) b!4786989))

(assert (= (and b!4786989 res!2033628) b!4786982))

(assert (= (and b!4786982 res!2033626) b!4786985))

(assert (= (and b!4786985 res!2033625) b!4786983))

(assert (= (and b!4786985 (not res!2033623)) b!4786986))

(assert (= (and b!4786986 (not res!2033619)) b!4786992))

(assert (= (and b!4786992 (not res!2033624)) b!4786991))

(assert (= (and b!4786991 (not res!2033622)) b!4786984))

(assert (= (and b!4786984 (not res!2033627)) b!4786987))

(assert (= (and b!4786987 (not res!2033620)) b!4786990))

(assert (= start!492366 b!4786988))

(declare-fun m!5766184 () Bool)

(assert (=> b!4786983 m!5766184))

(assert (=> b!4786983 m!5766184))

(declare-fun m!5766186 () Bool)

(assert (=> b!4786983 m!5766186))

(assert (=> b!4786983 m!5766186))

(declare-fun m!5766188 () Bool)

(assert (=> b!4786983 m!5766188))

(declare-fun m!5766190 () Bool)

(assert (=> b!4786992 m!5766190))

(declare-fun m!5766192 () Bool)

(assert (=> b!4786991 m!5766192))

(declare-fun m!5766194 () Bool)

(assert (=> b!4786991 m!5766194))

(declare-fun m!5766196 () Bool)

(assert (=> b!4786991 m!5766196))

(declare-fun m!5766198 () Bool)

(assert (=> b!4786991 m!5766198))

(declare-fun m!5766200 () Bool)

(assert (=> b!4786987 m!5766200))

(declare-fun m!5766202 () Bool)

(assert (=> start!492366 m!5766202))

(declare-fun m!5766204 () Bool)

(assert (=> start!492366 m!5766204))

(declare-fun m!5766206 () Bool)

(assert (=> b!4786989 m!5766206))

(declare-fun m!5766208 () Bool)

(assert (=> b!4786982 m!5766208))

(assert (=> b!4786982 m!5766208))

(declare-fun m!5766210 () Bool)

(assert (=> b!4786982 m!5766210))

(declare-fun m!5766212 () Bool)

(assert (=> b!4786984 m!5766212))

(declare-fun m!5766214 () Bool)

(assert (=> b!4786985 m!5766214))

(declare-fun m!5766216 () Bool)

(assert (=> b!4786985 m!5766216))

(declare-fun m!5766218 () Bool)

(assert (=> b!4786985 m!5766218))

(declare-fun m!5766220 () Bool)

(assert (=> b!4786985 m!5766220))

(declare-fun m!5766222 () Bool)

(assert (=> b!4786985 m!5766222))

(declare-fun m!5766224 () Bool)

(assert (=> b!4786985 m!5766224))

(check-sat (not b!4786989) (not b!4786987) (not b!4786992) (not b!4786982) tp_is_empty!33345 (not b!4786984) (not b!4786988) (not b!4786983) (not start!492366) (not b!4786985) tp_is_empty!33347 (not b!4786991))
(check-sat)

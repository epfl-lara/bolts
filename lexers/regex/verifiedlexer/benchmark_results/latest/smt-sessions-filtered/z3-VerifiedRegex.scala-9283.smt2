; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!492818 () Bool)

(assert start!492818)

(declare-fun b!4789136 () Bool)

(declare-fun e!2990219 () Bool)

(assert (=> b!4789136 (= e!2990219 true)))

(declare-fun res!2034978 () Bool)

(declare-fun e!2990220 () Bool)

(assert (=> start!492818 (=> (not res!2034978) (not e!2990220))))

(declare-datatypes ((K!15704 0))(
  ( (K!15705 (val!20869 Int)) )
))
(declare-datatypes ((V!15950 0))(
  ( (V!15951 (val!20870 Int)) )
))
(declare-datatypes ((tuple2!56712 0))(
  ( (tuple2!56713 (_1!31650 K!15704) (_2!31650 V!15950)) )
))
(declare-datatypes ((List!54261 0))(
  ( (Nil!54137) (Cons!54137 (h!60561 tuple2!56712) (t!361711 List!54261)) )
))
(declare-datatypes ((tuple2!56714 0))(
  ( (tuple2!56715 (_1!31651 (_ BitVec 64)) (_2!31651 List!54261)) )
))
(declare-datatypes ((List!54262 0))(
  ( (Nil!54138) (Cons!54138 (h!60562 tuple2!56714) (t!361712 List!54262)) )
))
(declare-datatypes ((ListLongMap!5273 0))(
  ( (ListLongMap!5274 (toList!6851 List!54262)) )
))
(declare-fun lm!2473 () ListLongMap!5273)

(declare-fun lambda!229909 () Int)

(declare-fun forall!12203 (List!54262 Int) Bool)

(assert (=> start!492818 (= res!2034978 (forall!12203 (toList!6851 lm!2473) lambda!229909))))

(assert (=> start!492818 e!2990220))

(declare-fun e!2990222 () Bool)

(declare-fun inv!69730 (ListLongMap!5273) Bool)

(assert (=> start!492818 (and (inv!69730 lm!2473) e!2990222)))

(assert (=> start!492818 true))

(declare-fun tp_is_empty!33425 () Bool)

(assert (=> start!492818 tp_is_empty!33425))

(declare-fun tp_is_empty!33427 () Bool)

(assert (=> start!492818 tp_is_empty!33427))

(declare-fun b!4789137 () Bool)

(declare-fun res!2034980 () Bool)

(assert (=> b!4789137 (=> (not res!2034980) (not e!2990220))))

(declare-datatypes ((Hashable!6886 0))(
  ( (HashableExt!6885 (__x!32909 Int)) )
))
(declare-fun hashF!1559 () Hashable!6886)

(declare-fun allKeysSameHashInMap!2291 (ListLongMap!5273 Hashable!6886) Bool)

(assert (=> b!4789137 (= res!2034980 (allKeysSameHashInMap!2291 lm!2473 hashF!1559))))

(declare-fun b!4789138 () Bool)

(declare-fun e!2990223 () Bool)

(assert (=> b!4789138 (= e!2990220 (not e!2990223))))

(declare-fun res!2034979 () Bool)

(assert (=> b!4789138 (=> res!2034979 e!2990223)))

(declare-fun value!3111 () V!15950)

(declare-fun key!5896 () K!15704)

(declare-fun getValue!82 (List!54262 K!15704) V!15950)

(assert (=> b!4789138 (= res!2034979 (not (= (getValue!82 (toList!6851 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!536 (List!54262 K!15704) Bool)

(assert (=> b!4789138 (containsKeyBiggerList!536 (toList!6851 lm!2473) key!5896)))

(declare-datatypes ((Unit!139679 0))(
  ( (Unit!139680) )
))
(declare-fun lt!1949142 () Unit!139679)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!276 (ListLongMap!5273 K!15704 Hashable!6886) Unit!139679)

(assert (=> b!4789138 (= lt!1949142 (lemmaInLongMapThenContainsKeyBiggerList!276 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2990221 () Bool)

(assert (=> b!4789138 e!2990221))

(declare-fun res!2034971 () Bool)

(assert (=> b!4789138 (=> (not res!2034971) (not e!2990221))))

(declare-fun lt!1949138 () Bool)

(assert (=> b!4789138 (= res!2034971 (not lt!1949138))))

(declare-fun lt!1949143 () (_ BitVec 64))

(declare-fun contains!17735 (ListLongMap!5273 (_ BitVec 64)) Bool)

(assert (=> b!4789138 (= lt!1949138 (not (contains!17735 lm!2473 lt!1949143)))))

(declare-fun hash!4912 (Hashable!6886 K!15704) (_ BitVec 64))

(assert (=> b!4789138 (= lt!1949143 (hash!4912 hashF!1559 key!5896))))

(declare-fun lt!1949145 () Unit!139679)

(declare-fun lemmaInGenericMapThenInLongMap!290 (ListLongMap!5273 K!15704 Hashable!6886) Unit!139679)

(assert (=> b!4789138 (= lt!1949145 (lemmaInGenericMapThenInLongMap!290 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4789139 () Bool)

(declare-fun res!2034976 () Bool)

(assert (=> b!4789139 (=> (not res!2034976) (not e!2990220))))

(declare-datatypes ((ListMap!6323 0))(
  ( (ListMap!6324 (toList!6852 List!54261)) )
))
(declare-fun contains!17736 (ListMap!6323 K!15704) Bool)

(declare-fun extractMap!2413 (List!54262) ListMap!6323)

(assert (=> b!4789139 (= res!2034976 (contains!17736 (extractMap!2413 (toList!6851 lm!2473)) key!5896))))

(declare-fun b!4789140 () Bool)

(declare-fun e!2990224 () Unit!139679)

(declare-fun lt!1949136 () Unit!139679)

(assert (=> b!4789140 (= e!2990224 lt!1949136)))

(declare-fun lt!1949141 () ListLongMap!5273)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!12 (ListLongMap!5273 K!15704 Hashable!6886) Unit!139679)

(assert (=> b!4789140 (= lt!1949136 (lemmaHashNotInLongMapThenNotInGenerated!12 lt!1949141 key!5896 hashF!1559))))

(assert (=> b!4789140 (not (contains!17736 (extractMap!2413 (toList!6851 lt!1949141)) key!5896))))

(declare-fun b!4789141 () Bool)

(declare-fun res!2034974 () Bool)

(assert (=> b!4789141 (=> res!2034974 e!2990223)))

(declare-fun containsKey!3904 (List!54261 K!15704) Bool)

(assert (=> b!4789141 (= res!2034974 (containsKey!3904 (_2!31651 (h!60562 (toList!6851 lm!2473))) key!5896))))

(declare-fun b!4789142 () Bool)

(declare-fun e!2990218 () Bool)

(assert (=> b!4789142 (= e!2990218 e!2990219)))

(declare-fun res!2034973 () Bool)

(assert (=> b!4789142 (=> res!2034973 e!2990219)))

(declare-fun lt!1949135 () List!54261)

(declare-datatypes ((Option!13041 0))(
  ( (None!13040) (Some!13040 (v!48311 tuple2!56712)) )
))
(declare-fun isDefined!10183 (Option!13041) Bool)

(declare-fun getPair!858 (List!54261 K!15704) Option!13041)

(assert (=> b!4789142 (= res!2034973 (not (isDefined!10183 (getPair!858 lt!1949135 key!5896))))))

(declare-fun lt!1949144 () Unit!139679)

(declare-fun lt!1949137 () tuple2!56714)

(declare-fun forallContained!4141 (List!54262 Int tuple2!56714) Unit!139679)

(assert (=> b!4789142 (= lt!1949144 (forallContained!4141 (toList!6851 lm!2473) lambda!229909 lt!1949137))))

(declare-fun contains!17737 (List!54262 tuple2!56714) Bool)

(assert (=> b!4789142 (contains!17737 (toList!6851 lm!2473) lt!1949137)))

(assert (=> b!4789142 (= lt!1949137 (tuple2!56715 lt!1949143 lt!1949135))))

(declare-fun lt!1949139 () Unit!139679)

(declare-fun lemmaGetValueImpliesTupleContained!635 (ListLongMap!5273 (_ BitVec 64) List!54261) Unit!139679)

(assert (=> b!4789142 (= lt!1949139 (lemmaGetValueImpliesTupleContained!635 lm!2473 lt!1949143 lt!1949135))))

(declare-fun apply!12947 (ListLongMap!5273 (_ BitVec 64)) List!54261)

(assert (=> b!4789142 (= lt!1949135 (apply!12947 lm!2473 lt!1949143))))

(declare-fun b!4789143 () Bool)

(declare-fun res!2034972 () Bool)

(assert (=> b!4789143 (=> res!2034972 e!2990218)))

(assert (=> b!4789143 (= res!2034972 lt!1949138)))

(declare-fun b!4789144 () Bool)

(declare-fun res!2034975 () Bool)

(assert (=> b!4789144 (=> res!2034975 e!2990223)))

(get-info :version)

(assert (=> b!4789144 (= res!2034975 (not ((_ is Cons!54138) (toList!6851 lm!2473))))))

(declare-fun b!4789145 () Bool)

(declare-fun Unit!139681 () Unit!139679)

(assert (=> b!4789145 (= e!2990224 Unit!139681)))

(declare-fun b!4789146 () Bool)

(declare-fun tp!1357832 () Bool)

(assert (=> b!4789146 (= e!2990222 tp!1357832)))

(declare-fun b!4789147 () Bool)

(assert (=> b!4789147 (= e!2990221 (isDefined!10183 (getPair!858 (apply!12947 lm!2473 lt!1949143) key!5896)))))

(declare-fun b!4789148 () Bool)

(assert (=> b!4789148 (= e!2990223 e!2990218)))

(declare-fun res!2034977 () Bool)

(assert (=> b!4789148 (=> res!2034977 e!2990218)))

(assert (=> b!4789148 (= res!2034977 (not (forall!12203 (toList!6851 lm!2473) lambda!229909)))))

(declare-fun lt!1949140 () Unit!139679)

(assert (=> b!4789148 (= lt!1949140 e!2990224)))

(declare-fun c!816277 () Bool)

(assert (=> b!4789148 (= c!816277 (not (contains!17735 lt!1949141 lt!1949143)))))

(declare-fun tail!9235 (ListLongMap!5273) ListLongMap!5273)

(assert (=> b!4789148 (= lt!1949141 (tail!9235 lm!2473))))

(assert (= (and start!492818 res!2034978) b!4789137))

(assert (= (and b!4789137 res!2034980) b!4789139))

(assert (= (and b!4789139 res!2034976) b!4789138))

(assert (= (and b!4789138 res!2034971) b!4789147))

(assert (= (and b!4789138 (not res!2034979)) b!4789144))

(assert (= (and b!4789144 (not res!2034975)) b!4789141))

(assert (= (and b!4789141 (not res!2034974)) b!4789148))

(assert (= (and b!4789148 c!816277) b!4789140))

(assert (= (and b!4789148 (not c!816277)) b!4789145))

(assert (= (and b!4789148 (not res!2034977)) b!4789143))

(assert (= (and b!4789143 (not res!2034972)) b!4789142))

(assert (= (and b!4789142 (not res!2034973)) b!4789136))

(assert (= start!492818 b!4789146))

(declare-fun m!5768692 () Bool)

(assert (=> b!4789137 m!5768692))

(declare-fun m!5768694 () Bool)

(assert (=> b!4789142 m!5768694))

(declare-fun m!5768696 () Bool)

(assert (=> b!4789142 m!5768696))

(assert (=> b!4789142 m!5768694))

(declare-fun m!5768698 () Bool)

(assert (=> b!4789142 m!5768698))

(declare-fun m!5768700 () Bool)

(assert (=> b!4789142 m!5768700))

(declare-fun m!5768702 () Bool)

(assert (=> b!4789142 m!5768702))

(declare-fun m!5768704 () Bool)

(assert (=> b!4789142 m!5768704))

(declare-fun m!5768706 () Bool)

(assert (=> b!4789140 m!5768706))

(declare-fun m!5768708 () Bool)

(assert (=> b!4789140 m!5768708))

(assert (=> b!4789140 m!5768708))

(declare-fun m!5768710 () Bool)

(assert (=> b!4789140 m!5768710))

(declare-fun m!5768712 () Bool)

(assert (=> b!4789148 m!5768712))

(declare-fun m!5768714 () Bool)

(assert (=> b!4789148 m!5768714))

(declare-fun m!5768716 () Bool)

(assert (=> b!4789148 m!5768716))

(assert (=> start!492818 m!5768712))

(declare-fun m!5768718 () Bool)

(assert (=> start!492818 m!5768718))

(declare-fun m!5768720 () Bool)

(assert (=> b!4789141 m!5768720))

(declare-fun m!5768722 () Bool)

(assert (=> b!4789138 m!5768722))

(declare-fun m!5768724 () Bool)

(assert (=> b!4789138 m!5768724))

(declare-fun m!5768726 () Bool)

(assert (=> b!4789138 m!5768726))

(declare-fun m!5768728 () Bool)

(assert (=> b!4789138 m!5768728))

(declare-fun m!5768730 () Bool)

(assert (=> b!4789138 m!5768730))

(declare-fun m!5768732 () Bool)

(assert (=> b!4789138 m!5768732))

(declare-fun m!5768734 () Bool)

(assert (=> b!4789139 m!5768734))

(assert (=> b!4789139 m!5768734))

(declare-fun m!5768736 () Bool)

(assert (=> b!4789139 m!5768736))

(assert (=> b!4789147 m!5768702))

(assert (=> b!4789147 m!5768702))

(declare-fun m!5768738 () Bool)

(assert (=> b!4789147 m!5768738))

(assert (=> b!4789147 m!5768738))

(declare-fun m!5768740 () Bool)

(assert (=> b!4789147 m!5768740))

(check-sat (not b!4789138) (not b!4789139) tp_is_empty!33425 (not b!4789146) tp_is_empty!33427 (not start!492818) (not b!4789137) (not b!4789147) (not b!4789140) (not b!4789148) (not b!4789142) (not b!4789141))
(check-sat)

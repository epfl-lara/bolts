; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462376 () Bool)

(assert start!462376)

(declare-fun b!4619132 () Bool)

(declare-fun res!1935914 () Bool)

(declare-fun e!2881262 () Bool)

(assert (=> b!4619132 (=> (not res!1935914) (not e!2881262))))

(declare-datatypes ((Hashable!5865 0))(
  ( (HashableExt!5864 (__x!31568 Int)) )
))
(declare-fun hashF!1389 () Hashable!5865)

(declare-datatypes ((K!12820 0))(
  ( (K!12821 (val!18527 Int)) )
))
(declare-datatypes ((V!13066 0))(
  ( (V!13067 (val!18528 Int)) )
))
(declare-datatypes ((tuple2!52318 0))(
  ( (tuple2!52319 (_1!29453 K!12820) (_2!29453 V!13066)) )
))
(declare-datatypes ((List!51560 0))(
  ( (Nil!51436) (Cons!51436 (h!57464 tuple2!52318) (t!358572 List!51560)) )
))
(declare-fun oldBucket!40 () List!51560)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1322 (List!51560 (_ BitVec 64) Hashable!5865) Bool)

(assert (=> b!4619132 (= res!1935914 (allKeysSameHash!1322 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4619133 () Bool)

(declare-fun res!1935907 () Bool)

(declare-fun e!2881259 () Bool)

(assert (=> b!4619133 (=> (not res!1935907) (not e!2881259))))

(declare-fun newBucket!224 () List!51560)

(assert (=> b!4619133 (= res!1935907 (allKeysSameHash!1322 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4619134 () Bool)

(declare-fun e!2881258 () Bool)

(declare-datatypes ((ListMap!4205 0))(
  ( (ListMap!4206 (toList!4901 List!51560)) )
))
(declare-fun lt!1774990 () ListMap!4205)

(assert (=> b!4619134 (= e!2881258 (= lt!1774990 (ListMap!4206 Nil!51436)))))

(declare-fun b!4619135 () Bool)

(declare-fun e!2881257 () Bool)

(declare-fun e!2881263 () Bool)

(assert (=> b!4619135 (= e!2881257 e!2881263)))

(declare-fun res!1935909 () Bool)

(assert (=> b!4619135 (=> res!1935909 e!2881263)))

(declare-datatypes ((tuple2!52320 0))(
  ( (tuple2!52321 (_1!29454 (_ BitVec 64)) (_2!29454 List!51560)) )
))
(declare-datatypes ((List!51561 0))(
  ( (Nil!51437) (Cons!51437 (h!57465 tuple2!52320) (t!358573 List!51561)) )
))
(declare-fun lt!1774993 () List!51561)

(declare-fun lambda!190310 () Int)

(declare-fun forall!10774 (List!51561 Int) Bool)

(assert (=> b!4619135 (= res!1935909 (not (forall!10774 lt!1774993 lambda!190310)))))

(assert (=> b!4619135 (= lt!1774993 (Cons!51437 (tuple2!52321 hash!414 (t!358572 oldBucket!40)) Nil!51437))))

(declare-fun b!4619136 () Bool)

(declare-fun e!2881260 () Bool)

(declare-fun e!2881261 () Bool)

(assert (=> b!4619136 (= e!2881260 e!2881261)))

(declare-fun res!1935903 () Bool)

(assert (=> b!4619136 (=> res!1935903 e!2881261)))

(declare-fun key!4968 () K!12820)

(declare-fun containsKey!2364 (List!51560 K!12820) Bool)

(assert (=> b!4619136 (= res!1935903 (not (containsKey!2364 (t!358572 oldBucket!40) key!4968)))))

(assert (=> b!4619136 (containsKey!2364 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!110768 0))(
  ( (Unit!110769) )
))
(declare-fun lt!1774988 () Unit!110768)

(declare-fun lemmaGetPairDefinedThenContainsKey!14 (List!51560 K!12820 Hashable!5865) Unit!110768)

(assert (=> b!4619136 (= lt!1774988 (lemmaGetPairDefinedThenContainsKey!14 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1775000 () List!51560)

(declare-datatypes ((Option!11506 0))(
  ( (None!11505) (Some!11505 (v!45587 tuple2!52318)) )
))
(declare-fun isDefined!8771 (Option!11506) Bool)

(declare-fun getPair!260 (List!51560 K!12820) Option!11506)

(assert (=> b!4619136 (isDefined!8771 (getPair!260 lt!1775000 key!4968))))

(declare-fun lt!1774998 () tuple2!52320)

(declare-fun lt!1774992 () List!51561)

(declare-fun lt!1774994 () Unit!110768)

(declare-fun forallContained!2990 (List!51561 Int tuple2!52320) Unit!110768)

(assert (=> b!4619136 (= lt!1774994 (forallContained!2990 lt!1774992 lambda!190310 lt!1774998))))

(declare-fun contains!14419 (List!51561 tuple2!52320) Bool)

(assert (=> b!4619136 (contains!14419 lt!1774992 lt!1774998)))

(declare-fun lt!1774991 () (_ BitVec 64))

(assert (=> b!4619136 (= lt!1774998 (tuple2!52321 lt!1774991 lt!1775000))))

(declare-fun lt!1775001 () Unit!110768)

(declare-datatypes ((ListLongMap!3491 0))(
  ( (ListLongMap!3492 (toList!4902 List!51561)) )
))
(declare-fun lt!1774996 () ListLongMap!3491)

(declare-fun lemmaGetValueImpliesTupleContained!65 (ListLongMap!3491 (_ BitVec 64) List!51560) Unit!110768)

(assert (=> b!4619136 (= lt!1775001 (lemmaGetValueImpliesTupleContained!65 lt!1774996 lt!1774991 lt!1775000))))

(declare-fun apply!12133 (ListLongMap!3491 (_ BitVec 64)) List!51560)

(assert (=> b!4619136 (= lt!1775000 (apply!12133 lt!1774996 lt!1774991))))

(declare-fun contains!14420 (ListLongMap!3491 (_ BitVec 64)) Bool)

(assert (=> b!4619136 (contains!14420 lt!1774996 lt!1774991)))

(declare-fun lt!1774995 () Unit!110768)

(declare-fun lemmaInGenMapThenLongMapContainsHash!466 (ListLongMap!3491 K!12820 Hashable!5865) Unit!110768)

(assert (=> b!4619136 (= lt!1774995 (lemmaInGenMapThenLongMapContainsHash!466 lt!1774996 key!4968 hashF!1389))))

(declare-fun lt!1774989 () Unit!110768)

(declare-fun lemmaInGenMapThenGetPairDefined!56 (ListLongMap!3491 K!12820 Hashable!5865) Unit!110768)

(assert (=> b!4619136 (= lt!1774989 (lemmaInGenMapThenGetPairDefined!56 lt!1774996 key!4968 hashF!1389))))

(assert (=> b!4619136 (= lt!1774996 (ListLongMap!3492 lt!1774992))))

(declare-fun b!4619137 () Bool)

(declare-fun e!2881264 () Bool)

(assert (=> b!4619137 (= e!2881264 e!2881259)))

(declare-fun res!1935911 () Bool)

(assert (=> b!4619137 (=> (not res!1935911) (not e!2881259))))

(assert (=> b!4619137 (= res!1935911 (= lt!1774991 hash!414))))

(declare-fun hash!3436 (Hashable!5865 K!12820) (_ BitVec 64))

(assert (=> b!4619137 (= lt!1774991 (hash!3436 hashF!1389 key!4968))))

(declare-fun b!4619138 () Bool)

(declare-fun res!1935905 () Bool)

(assert (=> b!4619138 (=> res!1935905 e!2881263)))

(declare-fun allKeysSameHashInMap!1504 (ListLongMap!3491 Hashable!5865) Bool)

(assert (=> b!4619138 (= res!1935905 (not (allKeysSameHashInMap!1504 (ListLongMap!3492 lt!1774993) hashF!1389)))))

(declare-fun b!4619139 () Bool)

(declare-fun res!1935912 () Bool)

(assert (=> b!4619139 (=> (not res!1935912) (not e!2881262))))

(declare-fun removePairForKey!1091 (List!51560 K!12820) List!51560)

(assert (=> b!4619139 (= res!1935912 (= (removePairForKey!1091 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1935906 () Bool)

(assert (=> start!462376 (=> (not res!1935906) (not e!2881262))))

(declare-fun noDuplicateKeys!1468 (List!51560) Bool)

(assert (=> start!462376 (= res!1935906 (noDuplicateKeys!1468 oldBucket!40))))

(assert (=> start!462376 e!2881262))

(assert (=> start!462376 true))

(declare-fun e!2881266 () Bool)

(assert (=> start!462376 e!2881266))

(declare-fun tp_is_empty!29165 () Bool)

(assert (=> start!462376 tp_is_empty!29165))

(declare-fun e!2881265 () Bool)

(assert (=> start!462376 e!2881265))

(declare-fun b!4619140 () Bool)

(assert (=> b!4619140 (= e!2881262 e!2881264)))

(declare-fun res!1935900 () Bool)

(assert (=> b!4619140 (=> (not res!1935900) (not e!2881264))))

(declare-fun lt!1774999 () ListMap!4205)

(declare-fun contains!14421 (ListMap!4205 K!12820) Bool)

(assert (=> b!4619140 (= res!1935900 (contains!14421 lt!1774999 key!4968))))

(declare-fun extractMap!1524 (List!51561) ListMap!4205)

(assert (=> b!4619140 (= lt!1774999 (extractMap!1524 lt!1774992))))

(assert (=> b!4619140 (= lt!1774992 (Cons!51437 (tuple2!52321 hash!414 oldBucket!40) Nil!51437))))

(declare-fun b!4619141 () Bool)

(declare-fun res!1935901 () Bool)

(assert (=> b!4619141 (=> res!1935901 e!2881257)))

(declare-fun lt!1774997 () List!51560)

(assert (=> b!4619141 (= res!1935901 (not (= (removePairForKey!1091 (t!358572 oldBucket!40) key!4968) lt!1774997)))))

(declare-fun tp_is_empty!29167 () Bool)

(declare-fun tp!1341790 () Bool)

(declare-fun b!4619142 () Bool)

(assert (=> b!4619142 (= e!2881265 (and tp_is_empty!29165 tp_is_empty!29167 tp!1341790))))

(declare-fun tp!1341791 () Bool)

(declare-fun b!4619143 () Bool)

(assert (=> b!4619143 (= e!2881266 (and tp_is_empty!29165 tp_is_empty!29167 tp!1341791))))

(declare-fun b!4619144 () Bool)

(assert (=> b!4619144 (= e!2881259 (not e!2881260))))

(declare-fun res!1935904 () Bool)

(assert (=> b!4619144 (=> res!1935904 e!2881260)))

(get-info :version)

(assert (=> b!4619144 (= res!1935904 (or (and ((_ is Cons!51436) oldBucket!40) (= (_1!29453 (h!57464 oldBucket!40)) key!4968)) (not ((_ is Cons!51436) oldBucket!40)) (= (_1!29453 (h!57464 oldBucket!40)) key!4968)))))

(assert (=> b!4619144 e!2881258))

(declare-fun res!1935908 () Bool)

(assert (=> b!4619144 (=> (not res!1935908) (not e!2881258))))

(declare-fun addToMapMapFromBucket!929 (List!51560 ListMap!4205) ListMap!4205)

(assert (=> b!4619144 (= res!1935908 (= lt!1774999 (addToMapMapFromBucket!929 oldBucket!40 lt!1774990)))))

(assert (=> b!4619144 (= lt!1774990 (extractMap!1524 Nil!51437))))

(assert (=> b!4619144 true))

(declare-fun b!4619145 () Bool)

(assert (=> b!4619145 (= e!2881263 (forall!10774 lt!1774993 lambda!190310))))

(declare-fun b!4619146 () Bool)

(declare-fun res!1935910 () Bool)

(assert (=> b!4619146 (=> (not res!1935910) (not e!2881262))))

(assert (=> b!4619146 (= res!1935910 (noDuplicateKeys!1468 newBucket!224))))

(declare-fun b!4619147 () Bool)

(declare-fun res!1935902 () Bool)

(assert (=> b!4619147 (=> res!1935902 e!2881263)))

(declare-fun containsKeyBiggerList!318 (List!51561 K!12820) Bool)

(assert (=> b!4619147 (= res!1935902 (not (containsKeyBiggerList!318 lt!1774993 key!4968)))))

(declare-fun b!4619148 () Bool)

(assert (=> b!4619148 (= e!2881261 e!2881257)))

(declare-fun res!1935913 () Bool)

(assert (=> b!4619148 (=> res!1935913 e!2881257)))

(declare-fun tail!8103 (List!51560) List!51560)

(assert (=> b!4619148 (= res!1935913 (not (= (removePairForKey!1091 (tail!8103 oldBucket!40) key!4968) lt!1774997)))))

(assert (=> b!4619148 (= lt!1774997 (tail!8103 newBucket!224))))

(assert (= (and start!462376 res!1935906) b!4619146))

(assert (= (and b!4619146 res!1935910) b!4619139))

(assert (= (and b!4619139 res!1935912) b!4619132))

(assert (= (and b!4619132 res!1935914) b!4619140))

(assert (= (and b!4619140 res!1935900) b!4619137))

(assert (= (and b!4619137 res!1935911) b!4619133))

(assert (= (and b!4619133 res!1935907) b!4619144))

(assert (= (and b!4619144 res!1935908) b!4619134))

(assert (= (and b!4619144 (not res!1935904)) b!4619136))

(assert (= (and b!4619136 (not res!1935903)) b!4619148))

(assert (= (and b!4619148 (not res!1935913)) b!4619141))

(assert (= (and b!4619141 (not res!1935901)) b!4619135))

(assert (= (and b!4619135 (not res!1935909)) b!4619138))

(assert (= (and b!4619138 (not res!1935905)) b!4619147))

(assert (= (and b!4619147 (not res!1935902)) b!4619145))

(assert (= (and start!462376 ((_ is Cons!51436) oldBucket!40)) b!4619143))

(assert (= (and start!462376 ((_ is Cons!51436) newBucket!224)) b!4619142))

(declare-fun m!5454749 () Bool)

(assert (=> b!4619138 m!5454749))

(declare-fun m!5454751 () Bool)

(assert (=> start!462376 m!5454751))

(declare-fun m!5454753 () Bool)

(assert (=> b!4619140 m!5454753))

(declare-fun m!5454755 () Bool)

(assert (=> b!4619140 m!5454755))

(declare-fun m!5454757 () Bool)

(assert (=> b!4619137 m!5454757))

(declare-fun m!5454759 () Bool)

(assert (=> b!4619148 m!5454759))

(assert (=> b!4619148 m!5454759))

(declare-fun m!5454761 () Bool)

(assert (=> b!4619148 m!5454761))

(declare-fun m!5454763 () Bool)

(assert (=> b!4619148 m!5454763))

(declare-fun m!5454765 () Bool)

(assert (=> b!4619136 m!5454765))

(declare-fun m!5454767 () Bool)

(assert (=> b!4619136 m!5454767))

(declare-fun m!5454769 () Bool)

(assert (=> b!4619136 m!5454769))

(declare-fun m!5454771 () Bool)

(assert (=> b!4619136 m!5454771))

(declare-fun m!5454773 () Bool)

(assert (=> b!4619136 m!5454773))

(declare-fun m!5454775 () Bool)

(assert (=> b!4619136 m!5454775))

(declare-fun m!5454777 () Bool)

(assert (=> b!4619136 m!5454777))

(declare-fun m!5454779 () Bool)

(assert (=> b!4619136 m!5454779))

(declare-fun m!5454781 () Bool)

(assert (=> b!4619136 m!5454781))

(declare-fun m!5454783 () Bool)

(assert (=> b!4619136 m!5454783))

(assert (=> b!4619136 m!5454781))

(declare-fun m!5454785 () Bool)

(assert (=> b!4619136 m!5454785))

(declare-fun m!5454787 () Bool)

(assert (=> b!4619136 m!5454787))

(declare-fun m!5454789 () Bool)

(assert (=> b!4619147 m!5454789))

(declare-fun m!5454791 () Bool)

(assert (=> b!4619135 m!5454791))

(declare-fun m!5454793 () Bool)

(assert (=> b!4619141 m!5454793))

(declare-fun m!5454795 () Bool)

(assert (=> b!4619144 m!5454795))

(declare-fun m!5454797 () Bool)

(assert (=> b!4619144 m!5454797))

(declare-fun m!5454799 () Bool)

(assert (=> b!4619132 m!5454799))

(declare-fun m!5454801 () Bool)

(assert (=> b!4619146 m!5454801))

(assert (=> b!4619145 m!5454791))

(declare-fun m!5454803 () Bool)

(assert (=> b!4619139 m!5454803))

(declare-fun m!5454805 () Bool)

(assert (=> b!4619133 m!5454805))

(check-sat (not b!4619144) (not b!4619145) tp_is_empty!29167 (not b!4619138) (not b!4619139) (not b!4619133) (not b!4619137) (not b!4619135) (not b!4619132) (not b!4619147) (not b!4619143) (not b!4619142) tp_is_empty!29165 (not b!4619141) (not b!4619146) (not start!462376) (not b!4619136) (not b!4619148) (not b!4619140))
(check-sat)

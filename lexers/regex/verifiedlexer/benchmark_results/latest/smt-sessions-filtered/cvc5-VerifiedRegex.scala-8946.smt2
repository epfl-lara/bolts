; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!479766 () Bool)

(assert start!479766)

(declare-fun b!4716794 () Bool)

(declare-fun e!2941754 () Bool)

(declare-fun e!2941757 () Bool)

(assert (=> b!4716794 (= e!2941754 e!2941757)))

(declare-fun res!1994716 () Bool)

(assert (=> b!4716794 (=> res!1994716 e!2941757)))

(declare-datatypes ((K!14133 0))(
  ( (K!14134 (val!19577 Int)) )
))
(declare-datatypes ((V!14379 0))(
  ( (V!14380 (val!19578 Int)) )
))
(declare-datatypes ((tuple2!54366 0))(
  ( (tuple2!54367 (_1!30477 K!14133) (_2!30477 V!14379)) )
))
(declare-datatypes ((List!52895 0))(
  ( (Nil!52771) (Cons!52771 (h!59100 tuple2!54366) (t!360147 List!52895)) )
))
(declare-datatypes ((ListMap!5239 0))(
  ( (ListMap!5240 (toList!5875 List!52895)) )
))
(declare-fun lt!1882201 () ListMap!5239)

(declare-fun lt!1882187 () ListMap!5239)

(declare-fun eq!1120 (ListMap!5239 ListMap!5239) Bool)

(assert (=> b!4716794 (= res!1994716 (not (eq!1120 lt!1882201 lt!1882187)))))

(declare-fun lt!1882208 () ListMap!5239)

(declare-fun key!4653 () K!14133)

(declare-fun -!749 (ListMap!5239 K!14133) ListMap!5239)

(assert (=> b!4716794 (= lt!1882187 (-!749 lt!1882208 key!4653))))

(declare-datatypes ((tuple2!54368 0))(
  ( (tuple2!54369 (_1!30478 (_ BitVec 64)) (_2!30478 List!52895)) )
))
(declare-fun lt!1882191 () tuple2!54368)

(declare-datatypes ((List!52896 0))(
  ( (Nil!52772) (Cons!52772 (h!59101 tuple2!54368) (t!360148 List!52896)) )
))
(declare-datatypes ((ListLongMap!4405 0))(
  ( (ListLongMap!4406 (toList!5876 List!52896)) )
))
(declare-fun lm!2023 () ListLongMap!4405)

(declare-fun extractMap!2019 (List!52896) ListMap!5239)

(assert (=> b!4716794 (= lt!1882201 (extractMap!2019 (Cons!52772 lt!1882191 (t!360148 (toList!5876 lm!2023)))))))

(declare-fun lt!1882185 () List!52896)

(declare-fun lt!1882206 () tuple2!54368)

(assert (=> b!4716794 (eq!1120 (extractMap!2019 (Cons!52772 lt!1882191 lt!1882185)) (-!749 (extractMap!2019 (Cons!52772 lt!1882206 lt!1882185)) key!4653))))

(declare-fun lt!1882203 () List!52896)

(declare-fun tail!8953 (List!52896) List!52896)

(assert (=> b!4716794 (= lt!1882185 (tail!8953 lt!1882203))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1882209 () List!52895)

(assert (=> b!4716794 (= lt!1882191 (tuple2!54369 hash!405 lt!1882209))))

(declare-datatypes ((Hashable!6362 0))(
  ( (HashableExt!6361 (__x!32065 Int)) )
))
(declare-fun hashF!1323 () Hashable!6362)

(declare-fun oldBucket!34 () List!52895)

(declare-fun lt!1882205 () ListLongMap!4405)

(declare-datatypes ((Unit!128867 0))(
  ( (Unit!128868) )
))
(declare-fun lt!1882212 () Unit!128867)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!111 (ListLongMap!4405 (_ BitVec 64) List!52895 List!52895 K!14133 Hashable!6362) Unit!128867)

(assert (=> b!4716794 (= lt!1882212 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!111 lt!1882205 hash!405 (t!360147 oldBucket!34) lt!1882209 key!4653 hashF!1323))))

(declare-fun b!4716795 () Bool)

(declare-fun e!2941758 () Bool)

(declare-fun e!2941764 () Bool)

(assert (=> b!4716795 (= e!2941758 e!2941764)))

(declare-fun res!1994711 () Bool)

(assert (=> b!4716795 (=> res!1994711 e!2941764)))

(declare-fun lt!1882211 () ListMap!5239)

(declare-fun lt!1882190 () ListMap!5239)

(assert (=> b!4716795 (= res!1994711 (not (eq!1120 lt!1882211 lt!1882190)))))

(declare-fun lt!1882189 () ListMap!5239)

(assert (=> b!4716795 (eq!1120 lt!1882189 lt!1882190)))

(declare-fun lt!1882217 () ListMap!5239)

(assert (=> b!4716795 (= lt!1882190 (-!749 lt!1882217 key!4653))))

(declare-fun lt!1882200 () Unit!128867)

(declare-fun lt!1882214 () ListMap!5239)

(declare-fun lemmaRemovePreservesEq!117 (ListMap!5239 ListMap!5239 K!14133) Unit!128867)

(assert (=> b!4716795 (= lt!1882200 (lemmaRemovePreservesEq!117 lt!1882214 lt!1882217 key!4653))))

(declare-fun b!4716796 () Bool)

(declare-fun e!2941767 () Bool)

(assert (=> b!4716796 (= e!2941757 e!2941767)))

(declare-fun res!1994718 () Bool)

(assert (=> b!4716796 (=> res!1994718 e!2941767)))

(assert (=> b!4716796 (= res!1994718 (not (= lt!1882189 lt!1882211)))))

(declare-fun +!2253 (ListMap!5239 tuple2!54366) ListMap!5239)

(assert (=> b!4716796 (= lt!1882211 (+!2253 lt!1882187 (h!59100 oldBucket!34)))))

(assert (=> b!4716796 (= lt!1882189 (-!749 lt!1882214 key!4653))))

(assert (=> b!4716796 (= lt!1882214 (+!2253 lt!1882208 (h!59100 oldBucket!34)))))

(declare-fun lt!1882196 () ListMap!5239)

(declare-fun lt!1882192 () ListMap!5239)

(assert (=> b!4716796 (= lt!1882196 lt!1882192)))

(assert (=> b!4716796 (= lt!1882192 (+!2253 lt!1882187 (h!59100 oldBucket!34)))))

(assert (=> b!4716796 (= lt!1882196 (-!749 (+!2253 lt!1882208 (h!59100 oldBucket!34)) key!4653))))

(declare-fun lt!1882216 () Unit!128867)

(declare-fun addRemoveCommutativeForDiffKeys!140 (ListMap!5239 K!14133 V!14379 K!14133) Unit!128867)

(assert (=> b!4716796 (= lt!1882216 (addRemoveCommutativeForDiffKeys!140 lt!1882208 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34)) key!4653))))

(declare-fun b!4716797 () Bool)

(declare-fun res!1994712 () Bool)

(declare-fun e!2941760 () Bool)

(assert (=> b!4716797 (=> (not res!1994712) (not e!2941760))))

(declare-fun newBucket!218 () List!52895)

(declare-fun removePairForKey!1588 (List!52895 K!14133) List!52895)

(assert (=> b!4716797 (= res!1994712 (= (removePairForKey!1588 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4716798 () Bool)

(declare-fun res!1994723 () Bool)

(declare-fun e!2941765 () Bool)

(assert (=> b!4716798 (=> (not res!1994723) (not e!2941765))))

(declare-fun allKeysSameHashInMap!1907 (ListLongMap!4405 Hashable!6362) Bool)

(assert (=> b!4716798 (= res!1994723 (allKeysSameHashInMap!1907 lm!2023 hashF!1323))))

(declare-fun b!4716799 () Bool)

(declare-fun res!1994706 () Bool)

(assert (=> b!4716799 (=> (not res!1994706) (not e!2941765))))

(declare-fun allKeysSameHash!1819 (List!52895 (_ BitVec 64) Hashable!6362) Bool)

(assert (=> b!4716799 (= res!1994706 (allKeysSameHash!1819 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4716800 () Bool)

(declare-fun tp_is_empty!31265 () Bool)

(declare-fun e!2941766 () Bool)

(declare-fun tp_is_empty!31267 () Bool)

(declare-fun tp!1348006 () Bool)

(assert (=> b!4716800 (= e!2941766 (and tp_is_empty!31265 tp_is_empty!31267 tp!1348006))))

(declare-fun b!4716801 () Bool)

(declare-fun res!1994726 () Bool)

(assert (=> b!4716801 (=> res!1994726 e!2941767)))

(assert (=> b!4716801 (= res!1994726 (not (eq!1120 lt!1882214 lt!1882217)))))

(declare-fun b!4716802 () Bool)

(declare-fun e!2941761 () Bool)

(declare-fun tp!1348007 () Bool)

(assert (=> b!4716802 (= e!2941761 (and tp_is_empty!31265 tp_is_empty!31267 tp!1348007))))

(declare-fun b!4716803 () Bool)

(declare-fun e!2941763 () Bool)

(declare-fun e!2941755 () Bool)

(assert (=> b!4716803 (= e!2941763 (not e!2941755))))

(declare-fun res!1994715 () Bool)

(assert (=> b!4716803 (=> res!1994715 e!2941755)))

(assert (=> b!4716803 (= res!1994715 (or (and (is-Cons!52771 oldBucket!34) (= (_1!30477 (h!59100 oldBucket!34)) key!4653)) (not (is-Cons!52771 oldBucket!34)) (= (_1!30477 (h!59100 oldBucket!34)) key!4653)))))

(declare-fun lt!1882218 () ListMap!5239)

(declare-fun lt!1882184 () ListMap!5239)

(declare-fun addToMapMapFromBucket!1423 (List!52895 ListMap!5239) ListMap!5239)

(assert (=> b!4716803 (= lt!1882218 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (toList!5876 lm!2023))) lt!1882184))))

(assert (=> b!4716803 (= lt!1882184 (extractMap!2019 (t!360148 (toList!5876 lm!2023))))))

(declare-fun tail!8954 (ListLongMap!4405) ListLongMap!4405)

(assert (=> b!4716803 (= (t!360148 (toList!5876 lm!2023)) (toList!5876 (tail!8954 lm!2023)))))

(declare-fun b!4716804 () Bool)

(declare-fun res!1994724 () Bool)

(assert (=> b!4716804 (=> res!1994724 e!2941767)))

(assert (=> b!4716804 (= res!1994724 (not (eq!1120 lt!1882189 lt!1882211)))))

(declare-fun b!4716805 () Bool)

(declare-fun e!2941756 () Bool)

(declare-fun tp!1348008 () Bool)

(assert (=> b!4716805 (= e!2941756 tp!1348008)))

(declare-fun b!4716806 () Bool)

(declare-fun e!2941753 () Bool)

(assert (=> b!4716806 (= e!2941753 e!2941765)))

(declare-fun res!1994725 () Bool)

(assert (=> b!4716806 (=> (not res!1994725) (not e!2941765))))

(declare-fun lt!1882199 () (_ BitVec 64))

(assert (=> b!4716806 (= res!1994725 (= lt!1882199 hash!405))))

(declare-fun hash!4342 (Hashable!6362 K!14133) (_ BitVec 64))

(assert (=> b!4716806 (= lt!1882199 (hash!4342 hashF!1323 key!4653))))

(declare-fun b!4716807 () Bool)

(assert (=> b!4716807 (= e!2941760 e!2941753)))

(declare-fun res!1994704 () Bool)

(assert (=> b!4716807 (=> (not res!1994704) (not e!2941753))))

(declare-fun contains!16118 (ListMap!5239 K!14133) Bool)

(assert (=> b!4716807 (= res!1994704 (contains!16118 lt!1882218 key!4653))))

(assert (=> b!4716807 (= lt!1882218 (extractMap!2019 (toList!5876 lm!2023)))))

(declare-fun b!4716808 () Bool)

(declare-fun res!1994705 () Bool)

(assert (=> b!4716808 (=> (not res!1994705) (not e!2941760))))

(assert (=> b!4716808 (= res!1994705 (allKeysSameHash!1819 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4716809 () Bool)

(declare-fun res!1994710 () Bool)

(assert (=> b!4716809 (=> (not res!1994710) (not e!2941760))))

(declare-fun noDuplicateKeys!1993 (List!52895) Bool)

(assert (=> b!4716809 (= res!1994710 (noDuplicateKeys!1993 oldBucket!34))))

(declare-fun b!4716810 () Bool)

(assert (=> b!4716810 (= e!2941767 e!2941758)))

(declare-fun res!1994707 () Bool)

(assert (=> b!4716810 (=> res!1994707 e!2941758)))

(declare-fun lt!1882213 () ListMap!5239)

(assert (=> b!4716810 (= res!1994707 (not (eq!1120 lt!1882211 lt!1882213)))))

(assert (=> b!4716810 (= lt!1882213 (+!2253 lt!1882201 (h!59100 oldBucket!34)))))

(assert (=> b!4716810 (eq!1120 lt!1882192 (+!2253 lt!1882201 (h!59100 oldBucket!34)))))

(declare-fun lt!1882204 () Unit!128867)

(declare-fun lemmaAddToEqMapsPreservesEq!111 (ListMap!5239 ListMap!5239 K!14133 V!14379) Unit!128867)

(assert (=> b!4716810 (= lt!1882204 (lemmaAddToEqMapsPreservesEq!111 lt!1882187 lt!1882201 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(declare-fun b!4716811 () Bool)

(declare-fun e!2941762 () Bool)

(declare-fun e!2941759 () Bool)

(assert (=> b!4716811 (= e!2941762 e!2941759)))

(declare-fun res!1994714 () Bool)

(assert (=> b!4716811 (=> res!1994714 e!2941759)))

(declare-fun lt!1882182 () List!52895)

(assert (=> b!4716811 (= res!1994714 (not (= (removePairForKey!1588 lt!1882182 key!4653) lt!1882209)))))

(declare-fun tail!8955 (List!52895) List!52895)

(assert (=> b!4716811 (= lt!1882209 (tail!8955 newBucket!218))))

(assert (=> b!4716811 (= lt!1882182 (tail!8955 oldBucket!34))))

(declare-fun b!4716812 () Bool)

(declare-fun res!1994708 () Bool)

(assert (=> b!4716812 (=> res!1994708 e!2941754)))

(declare-fun lt!1882198 () tuple2!54366)

(declare-fun lt!1882215 () ListMap!5239)

(assert (=> b!4716812 (= res!1994708 (not (eq!1120 lt!1882217 (+!2253 lt!1882215 lt!1882198))))))

(declare-fun b!4716813 () Bool)

(declare-fun res!1994719 () Bool)

(assert (=> b!4716813 (=> (not res!1994719) (not e!2941760))))

(assert (=> b!4716813 (= res!1994719 (noDuplicateKeys!1993 newBucket!218))))

(declare-fun res!1994717 () Bool)

(assert (=> start!479766 (=> (not res!1994717) (not e!2941760))))

(declare-fun lambda!214164 () Int)

(declare-fun forall!11544 (List!52896 Int) Bool)

(assert (=> start!479766 (= res!1994717 (forall!11544 (toList!5876 lm!2023) lambda!214164))))

(assert (=> start!479766 e!2941760))

(declare-fun inv!68008 (ListLongMap!4405) Bool)

(assert (=> start!479766 (and (inv!68008 lm!2023) e!2941756)))

(assert (=> start!479766 tp_is_empty!31265))

(assert (=> start!479766 e!2941766))

(assert (=> start!479766 true))

(assert (=> start!479766 e!2941761))

(declare-fun b!4716814 () Bool)

(assert (=> b!4716814 (= e!2941755 e!2941762)))

(declare-fun res!1994721 () Bool)

(assert (=> b!4716814 (=> res!1994721 e!2941762)))

(declare-fun containsKey!3330 (List!52895 K!14133) Bool)

(assert (=> b!4716814 (= res!1994721 (not (containsKey!3330 (t!360147 oldBucket!34) key!4653)))))

(assert (=> b!4716814 (containsKey!3330 oldBucket!34 key!4653)))

(declare-fun lt!1882202 () Unit!128867)

(declare-fun lemmaGetPairDefinedThenContainsKey!307 (List!52895 K!14133 Hashable!6362) Unit!128867)

(assert (=> b!4716814 (= lt!1882202 (lemmaGetPairDefinedThenContainsKey!307 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1882197 () List!52895)

(declare-datatypes ((Option!12333 0))(
  ( (None!12332) (Some!12332 (v!46891 tuple2!54366)) )
))
(declare-fun isDefined!9587 (Option!12333) Bool)

(declare-fun getPair!559 (List!52895 K!14133) Option!12333)

(assert (=> b!4716814 (isDefined!9587 (getPair!559 lt!1882197 key!4653))))

(declare-fun lt!1882207 () tuple2!54368)

(declare-fun lt!1882195 () Unit!128867)

(declare-fun forallContained!3613 (List!52896 Int tuple2!54368) Unit!128867)

(assert (=> b!4716814 (= lt!1882195 (forallContained!3613 (toList!5876 lm!2023) lambda!214164 lt!1882207))))

(declare-fun contains!16119 (List!52896 tuple2!54368) Bool)

(assert (=> b!4716814 (contains!16119 (toList!5876 lm!2023) lt!1882207)))

(assert (=> b!4716814 (= lt!1882207 (tuple2!54369 lt!1882199 lt!1882197))))

(declare-fun lt!1882186 () Unit!128867)

(declare-fun lemmaGetValueImpliesTupleContained!364 (ListLongMap!4405 (_ BitVec 64) List!52895) Unit!128867)

(assert (=> b!4716814 (= lt!1882186 (lemmaGetValueImpliesTupleContained!364 lm!2023 lt!1882199 lt!1882197))))

(declare-fun apply!12442 (ListLongMap!4405 (_ BitVec 64)) List!52895)

(assert (=> b!4716814 (= lt!1882197 (apply!12442 lm!2023 lt!1882199))))

(declare-fun contains!16120 (ListLongMap!4405 (_ BitVec 64)) Bool)

(assert (=> b!4716814 (contains!16120 lm!2023 lt!1882199)))

(declare-fun lt!1882193 () Unit!128867)

(declare-fun lemmaInGenMapThenLongMapContainsHash!765 (ListLongMap!4405 K!14133 Hashable!6362) Unit!128867)

(assert (=> b!4716814 (= lt!1882193 (lemmaInGenMapThenLongMapContainsHash!765 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1882188 () Unit!128867)

(declare-fun lemmaInGenMapThenGetPairDefined!355 (ListLongMap!4405 K!14133 Hashable!6362) Unit!128867)

(assert (=> b!4716814 (= lt!1882188 (lemmaInGenMapThenGetPairDefined!355 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4716815 () Bool)

(assert (=> b!4716815 (= e!2941759 e!2941754)))

(declare-fun res!1994722 () Bool)

(assert (=> b!4716815 (=> res!1994722 e!2941754)))

(assert (=> b!4716815 (= res!1994722 (not (eq!1120 lt!1882217 (+!2253 lt!1882215 (h!59100 oldBucket!34)))))))

(assert (=> b!4716815 (= lt!1882215 (extractMap!2019 (Cons!52772 (tuple2!54369 hash!405 lt!1882182) (t!360148 (toList!5876 lm!2023)))))))

(declare-fun lt!1882194 () tuple2!54368)

(assert (=> b!4716815 (= lt!1882217 (extractMap!2019 (Cons!52772 lt!1882194 (t!360148 (toList!5876 lm!2023)))))))

(assert (=> b!4716815 (eq!1120 (addToMapMapFromBucket!1423 (Cons!52771 lt!1882198 lt!1882209) lt!1882184) (+!2253 (addToMapMapFromBucket!1423 lt!1882209 lt!1882184) lt!1882198))))

(declare-fun lt!1882183 () Unit!128867)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!369 (tuple2!54366 List!52895 ListMap!5239) Unit!128867)

(assert (=> b!4716815 (= lt!1882183 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!369 lt!1882198 lt!1882209 lt!1882184))))

(declare-fun head!10215 (List!52895) tuple2!54366)

(assert (=> b!4716815 (= lt!1882198 (head!10215 newBucket!218))))

(declare-fun lt!1882210 () tuple2!54366)

(assert (=> b!4716815 (eq!1120 (addToMapMapFromBucket!1423 (Cons!52771 lt!1882210 lt!1882182) lt!1882184) (+!2253 (addToMapMapFromBucket!1423 lt!1882182 lt!1882184) lt!1882210))))

(declare-fun lt!1882181 () Unit!128867)

(assert (=> b!4716815 (= lt!1882181 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!369 lt!1882210 lt!1882182 lt!1882184))))

(assert (=> b!4716815 (= lt!1882210 (head!10215 oldBucket!34))))

(assert (=> b!4716815 (contains!16118 lt!1882208 key!4653)))

(assert (=> b!4716815 (= lt!1882208 (extractMap!2019 lt!1882203))))

(declare-fun lt!1882219 () Unit!128867)

(declare-fun lemmaListContainsThenExtractedMapContains!539 (ListLongMap!4405 K!14133 Hashable!6362) Unit!128867)

(assert (=> b!4716815 (= lt!1882219 (lemmaListContainsThenExtractedMapContains!539 lt!1882205 key!4653 hashF!1323))))

(assert (=> b!4716815 (= lt!1882205 (ListLongMap!4406 lt!1882203))))

(assert (=> b!4716815 (= lt!1882203 (Cons!52772 lt!1882206 (t!360148 (toList!5876 lm!2023))))))

(assert (=> b!4716815 (= lt!1882206 (tuple2!54369 hash!405 (t!360147 oldBucket!34)))))

(declare-fun b!4716816 () Bool)

(assert (=> b!4716816 (= e!2941765 e!2941763)))

(declare-fun res!1994709 () Bool)

(assert (=> b!4716816 (=> (not res!1994709) (not e!2941763))))

(declare-fun head!10216 (List!52896) tuple2!54368)

(assert (=> b!4716816 (= res!1994709 (= (head!10216 (toList!5876 lm!2023)) lt!1882194))))

(assert (=> b!4716816 (= lt!1882194 (tuple2!54369 hash!405 oldBucket!34))))

(declare-fun b!4716817 () Bool)

(declare-fun res!1994720 () Bool)

(assert (=> b!4716817 (=> (not res!1994720) (not e!2941763))))

(assert (=> b!4716817 (= res!1994720 (is-Cons!52772 (toList!5876 lm!2023)))))

(declare-fun b!4716818 () Bool)

(declare-fun res!1994727 () Bool)

(assert (=> b!4716818 (=> res!1994727 e!2941759)))

(assert (=> b!4716818 (= res!1994727 (not (= (removePairForKey!1588 (t!360147 oldBucket!34) key!4653) lt!1882209)))))

(declare-fun b!4716819 () Bool)

(assert (=> b!4716819 (= e!2941764 (eq!1120 lt!1882213 (extractMap!2019 (Cons!52772 (tuple2!54369 hash!405 newBucket!218) (t!360148 (toList!5876 lm!2023))))))))

(declare-fun b!4716820 () Bool)

(declare-fun res!1994713 () Bool)

(assert (=> b!4716820 (=> res!1994713 e!2941754)))

(assert (=> b!4716820 (= res!1994713 (not (= (h!59100 oldBucket!34) lt!1882198)))))

(assert (= (and start!479766 res!1994717) b!4716809))

(assert (= (and b!4716809 res!1994710) b!4716813))

(assert (= (and b!4716813 res!1994719) b!4716797))

(assert (= (and b!4716797 res!1994712) b!4716808))

(assert (= (and b!4716808 res!1994705) b!4716807))

(assert (= (and b!4716807 res!1994704) b!4716806))

(assert (= (and b!4716806 res!1994725) b!4716799))

(assert (= (and b!4716799 res!1994706) b!4716798))

(assert (= (and b!4716798 res!1994723) b!4716816))

(assert (= (and b!4716816 res!1994709) b!4716817))

(assert (= (and b!4716817 res!1994720) b!4716803))

(assert (= (and b!4716803 (not res!1994715)) b!4716814))

(assert (= (and b!4716814 (not res!1994721)) b!4716811))

(assert (= (and b!4716811 (not res!1994714)) b!4716818))

(assert (= (and b!4716818 (not res!1994727)) b!4716815))

(assert (= (and b!4716815 (not res!1994722)) b!4716820))

(assert (= (and b!4716820 (not res!1994713)) b!4716812))

(assert (= (and b!4716812 (not res!1994708)) b!4716794))

(assert (= (and b!4716794 (not res!1994716)) b!4716796))

(assert (= (and b!4716796 (not res!1994718)) b!4716804))

(assert (= (and b!4716804 (not res!1994724)) b!4716801))

(assert (= (and b!4716801 (not res!1994726)) b!4716810))

(assert (= (and b!4716810 (not res!1994707)) b!4716795))

(assert (= (and b!4716795 (not res!1994711)) b!4716819))

(assert (= start!479766 b!4716805))

(assert (= (and start!479766 (is-Cons!52771 oldBucket!34)) b!4716800))

(assert (= (and start!479766 (is-Cons!52771 newBucket!218)) b!4716802))

(declare-fun m!5647003 () Bool)

(assert (=> b!4716815 m!5647003))

(declare-fun m!5647005 () Bool)

(assert (=> b!4716815 m!5647005))

(declare-fun m!5647007 () Bool)

(assert (=> b!4716815 m!5647007))

(declare-fun m!5647009 () Bool)

(assert (=> b!4716815 m!5647009))

(declare-fun m!5647011 () Bool)

(assert (=> b!4716815 m!5647011))

(declare-fun m!5647013 () Bool)

(assert (=> b!4716815 m!5647013))

(declare-fun m!5647015 () Bool)

(assert (=> b!4716815 m!5647015))

(declare-fun m!5647017 () Bool)

(assert (=> b!4716815 m!5647017))

(declare-fun m!5647019 () Bool)

(assert (=> b!4716815 m!5647019))

(declare-fun m!5647021 () Bool)

(assert (=> b!4716815 m!5647021))

(declare-fun m!5647023 () Bool)

(assert (=> b!4716815 m!5647023))

(declare-fun m!5647025 () Bool)

(assert (=> b!4716815 m!5647025))

(declare-fun m!5647027 () Bool)

(assert (=> b!4716815 m!5647027))

(assert (=> b!4716815 m!5647005))

(declare-fun m!5647029 () Bool)

(assert (=> b!4716815 m!5647029))

(assert (=> b!4716815 m!5647029))

(declare-fun m!5647031 () Bool)

(assert (=> b!4716815 m!5647031))

(declare-fun m!5647033 () Bool)

(assert (=> b!4716815 m!5647033))

(declare-fun m!5647035 () Bool)

(assert (=> b!4716815 m!5647035))

(assert (=> b!4716815 m!5647025))

(assert (=> b!4716815 m!5647035))

(assert (=> b!4716815 m!5647031))

(declare-fun m!5647037 () Bool)

(assert (=> b!4716815 m!5647037))

(declare-fun m!5647039 () Bool)

(assert (=> b!4716815 m!5647039))

(assert (=> b!4716815 m!5647021))

(assert (=> b!4716815 m!5647007))

(declare-fun m!5647041 () Bool)

(assert (=> b!4716816 m!5647041))

(declare-fun m!5647043 () Bool)

(assert (=> b!4716795 m!5647043))

(declare-fun m!5647045 () Bool)

(assert (=> b!4716795 m!5647045))

(declare-fun m!5647047 () Bool)

(assert (=> b!4716795 m!5647047))

(declare-fun m!5647049 () Bool)

(assert (=> b!4716795 m!5647049))

(declare-fun m!5647051 () Bool)

(assert (=> b!4716819 m!5647051))

(assert (=> b!4716819 m!5647051))

(declare-fun m!5647053 () Bool)

(assert (=> b!4716819 m!5647053))

(declare-fun m!5647055 () Bool)

(assert (=> b!4716797 m!5647055))

(declare-fun m!5647057 () Bool)

(assert (=> b!4716813 m!5647057))

(declare-fun m!5647059 () Bool)

(assert (=> b!4716811 m!5647059))

(declare-fun m!5647061 () Bool)

(assert (=> b!4716811 m!5647061))

(declare-fun m!5647063 () Bool)

(assert (=> b!4716811 m!5647063))

(declare-fun m!5647065 () Bool)

(assert (=> b!4716801 m!5647065))

(declare-fun m!5647067 () Bool)

(assert (=> b!4716812 m!5647067))

(assert (=> b!4716812 m!5647067))

(declare-fun m!5647069 () Bool)

(assert (=> b!4716812 m!5647069))

(declare-fun m!5647071 () Bool)

(assert (=> b!4716794 m!5647071))

(declare-fun m!5647073 () Bool)

(assert (=> b!4716794 m!5647073))

(declare-fun m!5647075 () Bool)

(assert (=> b!4716794 m!5647075))

(declare-fun m!5647077 () Bool)

(assert (=> b!4716794 m!5647077))

(declare-fun m!5647079 () Bool)

(assert (=> b!4716794 m!5647079))

(declare-fun m!5647081 () Bool)

(assert (=> b!4716794 m!5647081))

(declare-fun m!5647083 () Bool)

(assert (=> b!4716794 m!5647083))

(assert (=> b!4716794 m!5647079))

(assert (=> b!4716794 m!5647083))

(assert (=> b!4716794 m!5647081))

(declare-fun m!5647085 () Bool)

(assert (=> b!4716794 m!5647085))

(declare-fun m!5647087 () Bool)

(assert (=> b!4716794 m!5647087))

(declare-fun m!5647089 () Bool)

(assert (=> b!4716796 m!5647089))

(declare-fun m!5647091 () Bool)

(assert (=> b!4716796 m!5647091))

(assert (=> b!4716796 m!5647089))

(declare-fun m!5647093 () Bool)

(assert (=> b!4716796 m!5647093))

(declare-fun m!5647095 () Bool)

(assert (=> b!4716796 m!5647095))

(declare-fun m!5647097 () Bool)

(assert (=> b!4716796 m!5647097))

(declare-fun m!5647099 () Bool)

(assert (=> b!4716809 m!5647099))

(declare-fun m!5647101 () Bool)

(assert (=> b!4716804 m!5647101))

(declare-fun m!5647103 () Bool)

(assert (=> b!4716810 m!5647103))

(declare-fun m!5647105 () Bool)

(assert (=> b!4716810 m!5647105))

(assert (=> b!4716810 m!5647105))

(declare-fun m!5647107 () Bool)

(assert (=> b!4716810 m!5647107))

(declare-fun m!5647109 () Bool)

(assert (=> b!4716810 m!5647109))

(declare-fun m!5647111 () Bool)

(assert (=> b!4716799 m!5647111))

(declare-fun m!5647113 () Bool)

(assert (=> start!479766 m!5647113))

(declare-fun m!5647115 () Bool)

(assert (=> start!479766 m!5647115))

(declare-fun m!5647117 () Bool)

(assert (=> b!4716803 m!5647117))

(declare-fun m!5647119 () Bool)

(assert (=> b!4716803 m!5647119))

(declare-fun m!5647121 () Bool)

(assert (=> b!4716803 m!5647121))

(declare-fun m!5647123 () Bool)

(assert (=> b!4716806 m!5647123))

(declare-fun m!5647125 () Bool)

(assert (=> b!4716807 m!5647125))

(declare-fun m!5647127 () Bool)

(assert (=> b!4716807 m!5647127))

(declare-fun m!5647129 () Bool)

(assert (=> b!4716818 m!5647129))

(declare-fun m!5647131 () Bool)

(assert (=> b!4716798 m!5647131))

(declare-fun m!5647133 () Bool)

(assert (=> b!4716808 m!5647133))

(declare-fun m!5647135 () Bool)

(assert (=> b!4716814 m!5647135))

(declare-fun m!5647137 () Bool)

(assert (=> b!4716814 m!5647137))

(declare-fun m!5647139 () Bool)

(assert (=> b!4716814 m!5647139))

(declare-fun m!5647141 () Bool)

(assert (=> b!4716814 m!5647141))

(declare-fun m!5647143 () Bool)

(assert (=> b!4716814 m!5647143))

(declare-fun m!5647145 () Bool)

(assert (=> b!4716814 m!5647145))

(declare-fun m!5647147 () Bool)

(assert (=> b!4716814 m!5647147))

(declare-fun m!5647149 () Bool)

(assert (=> b!4716814 m!5647149))

(declare-fun m!5647151 () Bool)

(assert (=> b!4716814 m!5647151))

(declare-fun m!5647153 () Bool)

(assert (=> b!4716814 m!5647153))

(assert (=> b!4716814 m!5647137))

(declare-fun m!5647155 () Bool)

(assert (=> b!4716814 m!5647155))

(declare-fun m!5647157 () Bool)

(assert (=> b!4716814 m!5647157))

(push 1)

(assert (not b!4716798))

(assert (not b!4716801))

(assert (not b!4716807))

(assert tp_is_empty!31265)

(assert (not b!4716818))

(assert (not b!4716809))

(assert tp_is_empty!31267)

(assert (not b!4716802))

(assert (not start!479766))

(assert (not b!4716810))

(assert (not b!4716806))

(assert (not b!4716803))

(assert (not b!4716797))

(assert (not b!4716800))

(assert (not b!4716811))

(assert (not b!4716816))

(assert (not b!4716815))

(assert (not b!4716814))

(assert (not b!4716804))

(assert (not b!4716795))

(assert (not b!4716813))

(assert (not b!4716796))

(assert (not b!4716799))

(assert (not b!4716808))

(assert (not b!4716794))

(assert (not b!4716819))

(assert (not b!4716805))

(assert (not b!4716812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1500907 () Bool)

(declare-fun content!9370 (List!52895) (Set tuple2!54366))

(assert (=> d!1500907 (= (eq!1120 lt!1882214 lt!1882217) (= (content!9370 (toList!5875 lt!1882214)) (content!9370 (toList!5875 lt!1882217))))))

(declare-fun bs!1105018 () Bool)

(assert (= bs!1105018 d!1500907))

(declare-fun m!5647315 () Bool)

(assert (=> bs!1105018 m!5647315))

(declare-fun m!5647317 () Bool)

(assert (=> bs!1105018 m!5647317))

(assert (=> b!4716801 d!1500907))

(declare-fun d!1500909 () Bool)

(assert (=> d!1500909 (= (eq!1120 lt!1882217 (+!2253 lt!1882215 lt!1882198)) (= (content!9370 (toList!5875 lt!1882217)) (content!9370 (toList!5875 (+!2253 lt!1882215 lt!1882198)))))))

(declare-fun bs!1105019 () Bool)

(assert (= bs!1105019 d!1500909))

(assert (=> bs!1105019 m!5647317))

(declare-fun m!5647319 () Bool)

(assert (=> bs!1105019 m!5647319))

(assert (=> b!4716812 d!1500909))

(declare-fun d!1500911 () Bool)

(declare-fun e!2941815 () Bool)

(assert (=> d!1500911 e!2941815))

(declare-fun res!1994804 () Bool)

(assert (=> d!1500911 (=> (not res!1994804) (not e!2941815))))

(declare-fun lt!1882346 () ListMap!5239)

(assert (=> d!1500911 (= res!1994804 (contains!16118 lt!1882346 (_1!30477 lt!1882198)))))

(declare-fun lt!1882347 () List!52895)

(assert (=> d!1500911 (= lt!1882346 (ListMap!5240 lt!1882347))))

(declare-fun lt!1882345 () Unit!128867)

(declare-fun lt!1882348 () Unit!128867)

(assert (=> d!1500911 (= lt!1882345 lt!1882348)))

(declare-datatypes ((Option!12335 0))(
  ( (None!12334) (Some!12334 (v!46896 V!14379)) )
))
(declare-fun getValueByKey!1933 (List!52895 K!14133) Option!12335)

(assert (=> d!1500911 (= (getValueByKey!1933 lt!1882347 (_1!30477 lt!1882198)) (Some!12334 (_2!30477 lt!1882198)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1075 (List!52895 K!14133 V!14379) Unit!128867)

(assert (=> d!1500911 (= lt!1882348 (lemmaContainsTupThenGetReturnValue!1075 lt!1882347 (_1!30477 lt!1882198) (_2!30477 lt!1882198)))))

(declare-fun insertNoDuplicatedKeys!583 (List!52895 K!14133 V!14379) List!52895)

(assert (=> d!1500911 (= lt!1882347 (insertNoDuplicatedKeys!583 (toList!5875 lt!1882215) (_1!30477 lt!1882198) (_2!30477 lt!1882198)))))

(assert (=> d!1500911 (= (+!2253 lt!1882215 lt!1882198) lt!1882346)))

(declare-fun b!4716906 () Bool)

(declare-fun res!1994805 () Bool)

(assert (=> b!4716906 (=> (not res!1994805) (not e!2941815))))

(assert (=> b!4716906 (= res!1994805 (= (getValueByKey!1933 (toList!5875 lt!1882346) (_1!30477 lt!1882198)) (Some!12334 (_2!30477 lt!1882198))))))

(declare-fun b!4716907 () Bool)

(declare-fun contains!16124 (List!52895 tuple2!54366) Bool)

(assert (=> b!4716907 (= e!2941815 (contains!16124 (toList!5875 lt!1882346) lt!1882198))))

(assert (= (and d!1500911 res!1994804) b!4716906))

(assert (= (and b!4716906 res!1994805) b!4716907))

(declare-fun m!5647321 () Bool)

(assert (=> d!1500911 m!5647321))

(declare-fun m!5647323 () Bool)

(assert (=> d!1500911 m!5647323))

(declare-fun m!5647325 () Bool)

(assert (=> d!1500911 m!5647325))

(declare-fun m!5647327 () Bool)

(assert (=> d!1500911 m!5647327))

(declare-fun m!5647329 () Bool)

(assert (=> b!4716906 m!5647329))

(declare-fun m!5647331 () Bool)

(assert (=> b!4716907 m!5647331))

(assert (=> b!4716812 d!1500911))

(declare-fun d!1500913 () Bool)

(declare-fun res!1994810 () Bool)

(declare-fun e!2941820 () Bool)

(assert (=> d!1500913 (=> res!1994810 e!2941820)))

(assert (=> d!1500913 (= res!1994810 (not (is-Cons!52771 newBucket!218)))))

(assert (=> d!1500913 (= (noDuplicateKeys!1993 newBucket!218) e!2941820)))

(declare-fun b!4716912 () Bool)

(declare-fun e!2941821 () Bool)

(assert (=> b!4716912 (= e!2941820 e!2941821)))

(declare-fun res!1994811 () Bool)

(assert (=> b!4716912 (=> (not res!1994811) (not e!2941821))))

(assert (=> b!4716912 (= res!1994811 (not (containsKey!3330 (t!360147 newBucket!218) (_1!30477 (h!59100 newBucket!218)))))))

(declare-fun b!4716913 () Bool)

(assert (=> b!4716913 (= e!2941821 (noDuplicateKeys!1993 (t!360147 newBucket!218)))))

(assert (= (and d!1500913 (not res!1994810)) b!4716912))

(assert (= (and b!4716912 res!1994811) b!4716913))

(declare-fun m!5647333 () Bool)

(assert (=> b!4716912 m!5647333))

(declare-fun m!5647335 () Bool)

(assert (=> b!4716913 m!5647335))

(assert (=> b!4716813 d!1500913))

(declare-fun b!4716934 () Bool)

(assert (=> b!4716934 true))

(declare-fun bs!1105025 () Bool)

(declare-fun b!4716935 () Bool)

(assert (= bs!1105025 (and b!4716935 b!4716934)))

(declare-fun lambda!214203 () Int)

(declare-fun lambda!214202 () Int)

(assert (=> bs!1105025 (= lambda!214203 lambda!214202)))

(assert (=> b!4716935 true))

(declare-fun lambda!214204 () Int)

(declare-fun lt!1882414 () ListMap!5239)

(assert (=> bs!1105025 (= (= lt!1882414 lt!1882184) (= lambda!214204 lambda!214202))))

(assert (=> b!4716935 (= (= lt!1882414 lt!1882184) (= lambda!214204 lambda!214203))))

(assert (=> b!4716935 true))

(declare-fun bs!1105026 () Bool)

(declare-fun d!1500915 () Bool)

(assert (= bs!1105026 (and d!1500915 b!4716934)))

(declare-fun lambda!214205 () Int)

(declare-fun lt!1882398 () ListMap!5239)

(assert (=> bs!1105026 (= (= lt!1882398 lt!1882184) (= lambda!214205 lambda!214202))))

(declare-fun bs!1105027 () Bool)

(assert (= bs!1105027 (and d!1500915 b!4716935)))

(assert (=> bs!1105027 (= (= lt!1882398 lt!1882184) (= lambda!214205 lambda!214203))))

(assert (=> bs!1105027 (= (= lt!1882398 lt!1882414) (= lambda!214205 lambda!214204))))

(assert (=> d!1500915 true))

(declare-fun c!805572 () Bool)

(declare-fun bm!329753 () Bool)

(declare-fun call!329760 () Bool)

(declare-fun forall!11546 (List!52895 Int) Bool)

(assert (=> bm!329753 (= call!329760 (forall!11546 (toList!5875 lt!1882184) (ite c!805572 lambda!214202 lambda!214203)))))

(declare-fun b!4716932 () Bool)

(declare-fun e!2941833 () Bool)

(assert (=> b!4716932 (= e!2941833 (forall!11546 (toList!5875 lt!1882184) lambda!214204))))

(declare-fun b!4716933 () Bool)

(declare-fun res!1994820 () Bool)

(declare-fun e!2941832 () Bool)

(assert (=> b!4716933 (=> (not res!1994820) (not e!2941832))))

(assert (=> b!4716933 (= res!1994820 (forall!11546 (toList!5875 lt!1882184) lambda!214205))))

(declare-fun e!2941834 () ListMap!5239)

(assert (=> b!4716934 (= e!2941834 lt!1882184)))

(declare-fun lt!1882399 () Unit!128867)

(declare-fun call!329758 () Unit!128867)

(assert (=> b!4716934 (= lt!1882399 call!329758)))

(declare-fun call!329759 () Bool)

(assert (=> b!4716934 call!329759))

(declare-fun lt!1882416 () Unit!128867)

(assert (=> b!4716934 (= lt!1882416 lt!1882399)))

(assert (=> b!4716934 call!329760))

(declare-fun lt!1882411 () Unit!128867)

(declare-fun Unit!128871 () Unit!128867)

(assert (=> b!4716934 (= lt!1882411 Unit!128871)))

(assert (=> b!4716935 (= e!2941834 lt!1882414)))

(declare-fun lt!1882408 () ListMap!5239)

(assert (=> b!4716935 (= lt!1882408 (+!2253 lt!1882184 (h!59100 (_2!30478 (h!59101 (toList!5876 lm!2023))))))))

(assert (=> b!4716935 (= lt!1882414 (addToMapMapFromBucket!1423 (t!360147 (_2!30478 (h!59101 (toList!5876 lm!2023)))) (+!2253 lt!1882184 (h!59100 (_2!30478 (h!59101 (toList!5876 lm!2023)))))))))

(declare-fun lt!1882401 () Unit!128867)

(assert (=> b!4716935 (= lt!1882401 call!329758)))

(assert (=> b!4716935 call!329760))

(declare-fun lt!1882413 () Unit!128867)

(assert (=> b!4716935 (= lt!1882413 lt!1882401)))

(assert (=> b!4716935 (forall!11546 (toList!5875 lt!1882408) lambda!214204)))

(declare-fun lt!1882406 () Unit!128867)

(declare-fun Unit!128872 () Unit!128867)

(assert (=> b!4716935 (= lt!1882406 Unit!128872)))

(assert (=> b!4716935 (forall!11546 (t!360147 (_2!30478 (h!59101 (toList!5876 lm!2023)))) lambda!214204)))

(declare-fun lt!1882412 () Unit!128867)

(declare-fun Unit!128873 () Unit!128867)

(assert (=> b!4716935 (= lt!1882412 Unit!128873)))

(declare-fun lt!1882404 () Unit!128867)

(declare-fun Unit!128874 () Unit!128867)

(assert (=> b!4716935 (= lt!1882404 Unit!128874)))

(declare-fun lt!1882410 () Unit!128867)

(declare-fun forallContained!3615 (List!52895 Int tuple2!54366) Unit!128867)

(assert (=> b!4716935 (= lt!1882410 (forallContained!3615 (toList!5875 lt!1882408) lambda!214204 (h!59100 (_2!30478 (h!59101 (toList!5876 lm!2023))))))))

(assert (=> b!4716935 (contains!16118 lt!1882408 (_1!30477 (h!59100 (_2!30478 (h!59101 (toList!5876 lm!2023))))))))

(declare-fun lt!1882403 () Unit!128867)

(declare-fun Unit!128875 () Unit!128867)

(assert (=> b!4716935 (= lt!1882403 Unit!128875)))

(assert (=> b!4716935 (contains!16118 lt!1882414 (_1!30477 (h!59100 (_2!30478 (h!59101 (toList!5876 lm!2023))))))))

(declare-fun lt!1882407 () Unit!128867)

(declare-fun Unit!128876 () Unit!128867)

(assert (=> b!4716935 (= lt!1882407 Unit!128876)))

(assert (=> b!4716935 call!329759))

(declare-fun lt!1882409 () Unit!128867)

(declare-fun Unit!128877 () Unit!128867)

(assert (=> b!4716935 (= lt!1882409 Unit!128877)))

(assert (=> b!4716935 (forall!11546 (toList!5875 lt!1882408) lambda!214204)))

(declare-fun lt!1882418 () Unit!128867)

(declare-fun Unit!128878 () Unit!128867)

(assert (=> b!4716935 (= lt!1882418 Unit!128878)))

(declare-fun lt!1882405 () Unit!128867)

(declare-fun Unit!128879 () Unit!128867)

(assert (=> b!4716935 (= lt!1882405 Unit!128879)))

(declare-fun lt!1882402 () Unit!128867)

(declare-fun addForallContainsKeyThenBeforeAdding!780 (ListMap!5239 ListMap!5239 K!14133 V!14379) Unit!128867)

(assert (=> b!4716935 (= lt!1882402 (addForallContainsKeyThenBeforeAdding!780 lt!1882184 lt!1882414 (_1!30477 (h!59100 (_2!30478 (h!59101 (toList!5876 lm!2023))))) (_2!30477 (h!59100 (_2!30478 (h!59101 (toList!5876 lm!2023)))))))))

(assert (=> b!4716935 (forall!11546 (toList!5875 lt!1882184) lambda!214204)))

(declare-fun lt!1882400 () Unit!128867)

(assert (=> b!4716935 (= lt!1882400 lt!1882402)))

(assert (=> b!4716935 (forall!11546 (toList!5875 lt!1882184) lambda!214204)))

(declare-fun lt!1882415 () Unit!128867)

(declare-fun Unit!128880 () Unit!128867)

(assert (=> b!4716935 (= lt!1882415 Unit!128880)))

(declare-fun res!1994819 () Bool)

(assert (=> b!4716935 (= res!1994819 (forall!11546 (_2!30478 (h!59101 (toList!5876 lm!2023))) lambda!214204))))

(assert (=> b!4716935 (=> (not res!1994819) (not e!2941833))))

(assert (=> b!4716935 e!2941833))

(declare-fun lt!1882417 () Unit!128867)

(declare-fun Unit!128881 () Unit!128867)

(assert (=> b!4716935 (= lt!1882417 Unit!128881)))

(declare-fun bm!329754 () Bool)

(assert (=> bm!329754 (= call!329759 (forall!11546 (ite c!805572 (toList!5875 lt!1882184) (_2!30478 (h!59101 (toList!5876 lm!2023)))) (ite c!805572 lambda!214202 lambda!214204)))))

(assert (=> d!1500915 e!2941832))

(declare-fun res!1994818 () Bool)

(assert (=> d!1500915 (=> (not res!1994818) (not e!2941832))))

(assert (=> d!1500915 (= res!1994818 (forall!11546 (_2!30478 (h!59101 (toList!5876 lm!2023))) lambda!214205))))

(assert (=> d!1500915 (= lt!1882398 e!2941834)))

(assert (=> d!1500915 (= c!805572 (is-Nil!52771 (_2!30478 (h!59101 (toList!5876 lm!2023)))))))

(assert (=> d!1500915 (noDuplicateKeys!1993 (_2!30478 (h!59101 (toList!5876 lm!2023))))))

(assert (=> d!1500915 (= (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (toList!5876 lm!2023))) lt!1882184) lt!1882398)))

(declare-fun bm!329755 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!781 (ListMap!5239) Unit!128867)

(assert (=> bm!329755 (= call!329758 (lemmaContainsAllItsOwnKeys!781 lt!1882184))))

(declare-fun b!4716936 () Bool)

(declare-fun invariantList!1493 (List!52895) Bool)

(assert (=> b!4716936 (= e!2941832 (invariantList!1493 (toList!5875 lt!1882398)))))

(assert (= (and d!1500915 c!805572) b!4716934))

(assert (= (and d!1500915 (not c!805572)) b!4716935))

(assert (= (and b!4716935 res!1994819) b!4716932))

(assert (= (or b!4716934 b!4716935) bm!329755))

(assert (= (or b!4716934 b!4716935) bm!329754))

(assert (= (or b!4716934 b!4716935) bm!329753))

(assert (= (and d!1500915 res!1994818) b!4716933))

(assert (= (and b!4716933 res!1994820) b!4716936))

(declare-fun m!5647361 () Bool)

(assert (=> bm!329754 m!5647361))

(declare-fun m!5647363 () Bool)

(assert (=> b!4716936 m!5647363))

(declare-fun m!5647365 () Bool)

(assert (=> b!4716932 m!5647365))

(declare-fun m!5647367 () Bool)

(assert (=> bm!329753 m!5647367))

(assert (=> b!4716935 m!5647365))

(declare-fun m!5647369 () Bool)

(assert (=> b!4716935 m!5647369))

(declare-fun m!5647371 () Bool)

(assert (=> b!4716935 m!5647371))

(declare-fun m!5647373 () Bool)

(assert (=> b!4716935 m!5647373))

(declare-fun m!5647375 () Bool)

(assert (=> b!4716935 m!5647375))

(declare-fun m!5647377 () Bool)

(assert (=> b!4716935 m!5647377))

(declare-fun m!5647379 () Bool)

(assert (=> b!4716935 m!5647379))

(declare-fun m!5647381 () Bool)

(assert (=> b!4716935 m!5647381))

(assert (=> b!4716935 m!5647365))

(declare-fun m!5647383 () Bool)

(assert (=> b!4716935 m!5647383))

(declare-fun m!5647385 () Bool)

(assert (=> b!4716935 m!5647385))

(assert (=> b!4716935 m!5647383))

(assert (=> b!4716935 m!5647369))

(declare-fun m!5647387 () Bool)

(assert (=> bm!329755 m!5647387))

(declare-fun m!5647389 () Bool)

(assert (=> b!4716933 m!5647389))

(declare-fun m!5647391 () Bool)

(assert (=> d!1500915 m!5647391))

(declare-fun m!5647393 () Bool)

(assert (=> d!1500915 m!5647393))

(assert (=> b!4716803 d!1500915))

(declare-fun bs!1105028 () Bool)

(declare-fun d!1500927 () Bool)

(assert (= bs!1105028 (and d!1500927 start!479766)))

(declare-fun lambda!214208 () Int)

(assert (=> bs!1105028 (= lambda!214208 lambda!214164)))

(declare-fun lt!1882421 () ListMap!5239)

(assert (=> d!1500927 (invariantList!1493 (toList!5875 lt!1882421))))

(declare-fun e!2941837 () ListMap!5239)

(assert (=> d!1500927 (= lt!1882421 e!2941837)))

(declare-fun c!805575 () Bool)

(assert (=> d!1500927 (= c!805575 (is-Cons!52772 (t!360148 (toList!5876 lm!2023))))))

(assert (=> d!1500927 (forall!11544 (t!360148 (toList!5876 lm!2023)) lambda!214208)))

(assert (=> d!1500927 (= (extractMap!2019 (t!360148 (toList!5876 lm!2023))) lt!1882421)))

(declare-fun b!4716943 () Bool)

(assert (=> b!4716943 (= e!2941837 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (t!360148 (toList!5876 lm!2023)))) (extractMap!2019 (t!360148 (t!360148 (toList!5876 lm!2023))))))))

(declare-fun b!4716944 () Bool)

(assert (=> b!4716944 (= e!2941837 (ListMap!5240 Nil!52771))))

(assert (= (and d!1500927 c!805575) b!4716943))

(assert (= (and d!1500927 (not c!805575)) b!4716944))

(declare-fun m!5647395 () Bool)

(assert (=> d!1500927 m!5647395))

(declare-fun m!5647397 () Bool)

(assert (=> d!1500927 m!5647397))

(declare-fun m!5647399 () Bool)

(assert (=> b!4716943 m!5647399))

(assert (=> b!4716943 m!5647399))

(declare-fun m!5647401 () Bool)

(assert (=> b!4716943 m!5647401))

(assert (=> b!4716803 d!1500927))

(declare-fun d!1500929 () Bool)

(assert (=> d!1500929 (= (tail!8954 lm!2023) (ListLongMap!4406 (tail!8953 (toList!5876 lm!2023))))))

(declare-fun bs!1105029 () Bool)

(assert (= bs!1105029 d!1500929))

(declare-fun m!5647403 () Bool)

(assert (=> bs!1105029 m!5647403))

(assert (=> b!4716803 d!1500929))

(declare-fun d!1500931 () Bool)

(assert (=> d!1500931 (contains!16119 (toList!5876 lm!2023) (tuple2!54369 lt!1882199 lt!1882197))))

(declare-fun lt!1882440 () Unit!128867)

(declare-fun choose!33231 (ListLongMap!4405 (_ BitVec 64) List!52895) Unit!128867)

(assert (=> d!1500931 (= lt!1882440 (choose!33231 lm!2023 lt!1882199 lt!1882197))))

(assert (=> d!1500931 (contains!16120 lm!2023 lt!1882199)))

(assert (=> d!1500931 (= (lemmaGetValueImpliesTupleContained!364 lm!2023 lt!1882199 lt!1882197) lt!1882440)))

(declare-fun bs!1105030 () Bool)

(assert (= bs!1105030 d!1500931))

(declare-fun m!5647405 () Bool)

(assert (=> bs!1105030 m!5647405))

(declare-fun m!5647407 () Bool)

(assert (=> bs!1105030 m!5647407))

(assert (=> bs!1105030 m!5647153))

(assert (=> b!4716814 d!1500931))

(declare-fun d!1500933 () Bool)

(declare-fun isEmpty!29164 (Option!12333) Bool)

(assert (=> d!1500933 (= (isDefined!9587 (getPair!559 lt!1882197 key!4653)) (not (isEmpty!29164 (getPair!559 lt!1882197 key!4653))))))

(declare-fun bs!1105031 () Bool)

(assert (= bs!1105031 d!1500933))

(assert (=> bs!1105031 m!5647137))

(declare-fun m!5647409 () Bool)

(assert (=> bs!1105031 m!5647409))

(assert (=> b!4716814 d!1500933))

(declare-fun d!1500935 () Bool)

(declare-fun lt!1882443 () Bool)

(declare-fun content!9371 (List!52896) (Set tuple2!54368))

(assert (=> d!1500935 (= lt!1882443 (set.member lt!1882207 (content!9371 (toList!5876 lm!2023))))))

(declare-fun e!2941854 () Bool)

(assert (=> d!1500935 (= lt!1882443 e!2941854)))

(declare-fun res!1994831 () Bool)

(assert (=> d!1500935 (=> (not res!1994831) (not e!2941854))))

(assert (=> d!1500935 (= res!1994831 (is-Cons!52772 (toList!5876 lm!2023)))))

(assert (=> d!1500935 (= (contains!16119 (toList!5876 lm!2023) lt!1882207) lt!1882443)))

(declare-fun b!4716968 () Bool)

(declare-fun e!2941855 () Bool)

(assert (=> b!4716968 (= e!2941854 e!2941855)))

(declare-fun res!1994832 () Bool)

(assert (=> b!4716968 (=> res!1994832 e!2941855)))

(assert (=> b!4716968 (= res!1994832 (= (h!59101 (toList!5876 lm!2023)) lt!1882207))))

(declare-fun b!4716969 () Bool)

(assert (=> b!4716969 (= e!2941855 (contains!16119 (t!360148 (toList!5876 lm!2023)) lt!1882207))))

(assert (= (and d!1500935 res!1994831) b!4716968))

(assert (= (and b!4716968 (not res!1994832)) b!4716969))

(declare-fun m!5647411 () Bool)

(assert (=> d!1500935 m!5647411))

(declare-fun m!5647413 () Bool)

(assert (=> d!1500935 m!5647413))

(declare-fun m!5647415 () Bool)

(assert (=> b!4716969 m!5647415))

(assert (=> b!4716814 d!1500935))

(declare-fun d!1500937 () Bool)

(declare-fun e!2941867 () Bool)

(assert (=> d!1500937 e!2941867))

(declare-fun res!1994838 () Bool)

(assert (=> d!1500937 (=> res!1994838 e!2941867)))

(declare-fun lt!1882461 () Bool)

(assert (=> d!1500937 (= res!1994838 (not lt!1882461))))

(declare-fun lt!1882462 () Bool)

(assert (=> d!1500937 (= lt!1882461 lt!1882462)))

(declare-fun lt!1882460 () Unit!128867)

(declare-fun e!2941866 () Unit!128867)

(assert (=> d!1500937 (= lt!1882460 e!2941866)))

(declare-fun c!805587 () Bool)

(assert (=> d!1500937 (= c!805587 lt!1882462)))

(declare-fun containsKey!3332 (List!52896 (_ BitVec 64)) Bool)

(assert (=> d!1500937 (= lt!1882462 (containsKey!3332 (toList!5876 lm!2023) lt!1882199))))

(assert (=> d!1500937 (= (contains!16120 lm!2023 lt!1882199) lt!1882461)))

(declare-fun b!4716985 () Bool)

(declare-fun lt!1882463 () Unit!128867)

(assert (=> b!4716985 (= e!2941866 lt!1882463)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1824 (List!52896 (_ BitVec 64)) Unit!128867)

(assert (=> b!4716985 (= lt!1882463 (lemmaContainsKeyImpliesGetValueByKeyDefined!1824 (toList!5876 lm!2023) lt!1882199))))

(declare-datatypes ((Option!12336 0))(
  ( (None!12335) (Some!12335 (v!46897 List!52895)) )
))
(declare-fun isDefined!9589 (Option!12336) Bool)

(declare-fun getValueByKey!1934 (List!52896 (_ BitVec 64)) Option!12336)

(assert (=> b!4716985 (isDefined!9589 (getValueByKey!1934 (toList!5876 lm!2023) lt!1882199))))

(declare-fun b!4716986 () Bool)

(declare-fun Unit!128882 () Unit!128867)

(assert (=> b!4716986 (= e!2941866 Unit!128882)))

(declare-fun b!4716987 () Bool)

(assert (=> b!4716987 (= e!2941867 (isDefined!9589 (getValueByKey!1934 (toList!5876 lm!2023) lt!1882199)))))

(assert (= (and d!1500937 c!805587) b!4716985))

(assert (= (and d!1500937 (not c!805587)) b!4716986))

(assert (= (and d!1500937 (not res!1994838)) b!4716987))

(declare-fun m!5647437 () Bool)

(assert (=> d!1500937 m!5647437))

(declare-fun m!5647439 () Bool)

(assert (=> b!4716985 m!5647439))

(declare-fun m!5647441 () Bool)

(assert (=> b!4716985 m!5647441))

(assert (=> b!4716985 m!5647441))

(declare-fun m!5647443 () Bool)

(assert (=> b!4716985 m!5647443))

(assert (=> b!4716987 m!5647441))

(assert (=> b!4716987 m!5647441))

(assert (=> b!4716987 m!5647443))

(assert (=> b!4716814 d!1500937))

(declare-fun bs!1105032 () Bool)

(declare-fun d!1500941 () Bool)

(assert (= bs!1105032 (and d!1500941 start!479766)))

(declare-fun lambda!214211 () Int)

(assert (=> bs!1105032 (= lambda!214211 lambda!214164)))

(declare-fun bs!1105033 () Bool)

(assert (= bs!1105033 (and d!1500941 d!1500927)))

(assert (=> bs!1105033 (= lambda!214211 lambda!214208)))

(assert (=> d!1500941 (contains!16120 lm!2023 (hash!4342 hashF!1323 key!4653))))

(declare-fun lt!1882466 () Unit!128867)

(declare-fun choose!33232 (ListLongMap!4405 K!14133 Hashable!6362) Unit!128867)

(assert (=> d!1500941 (= lt!1882466 (choose!33232 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500941 (forall!11544 (toList!5876 lm!2023) lambda!214211)))

(assert (=> d!1500941 (= (lemmaInGenMapThenLongMapContainsHash!765 lm!2023 key!4653 hashF!1323) lt!1882466)))

(declare-fun bs!1105034 () Bool)

(assert (= bs!1105034 d!1500941))

(assert (=> bs!1105034 m!5647123))

(assert (=> bs!1105034 m!5647123))

(declare-fun m!5647445 () Bool)

(assert (=> bs!1105034 m!5647445))

(declare-fun m!5647447 () Bool)

(assert (=> bs!1105034 m!5647447))

(declare-fun m!5647449 () Bool)

(assert (=> bs!1105034 m!5647449))

(assert (=> b!4716814 d!1500941))

(declare-fun bs!1105035 () Bool)

(declare-fun d!1500945 () Bool)

(assert (= bs!1105035 (and d!1500945 start!479766)))

(declare-fun lambda!214218 () Int)

(assert (=> bs!1105035 (= lambda!214218 lambda!214164)))

(declare-fun bs!1105036 () Bool)

(assert (= bs!1105036 (and d!1500945 d!1500927)))

(assert (=> bs!1105036 (= lambda!214218 lambda!214208)))

(declare-fun bs!1105037 () Bool)

(assert (= bs!1105037 (and d!1500945 d!1500941)))

(assert (=> bs!1105037 (= lambda!214218 lambda!214211)))

(declare-fun e!2941872 () Bool)

(declare-fun b!4716998 () Bool)

(assert (=> b!4716998 (= e!2941872 (isDefined!9587 (getPair!559 (apply!12442 lm!2023 (hash!4342 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1882488 () Unit!128867)

(assert (=> b!4716998 (= lt!1882488 (forallContained!3613 (toList!5876 lm!2023) lambda!214218 (tuple2!54369 (hash!4342 hashF!1323 key!4653) (apply!12442 lm!2023 (hash!4342 hashF!1323 key!4653)))))))

(declare-fun lt!1882486 () Unit!128867)

(declare-fun lt!1882490 () Unit!128867)

(assert (=> b!4716998 (= lt!1882486 lt!1882490)))

(declare-fun lt!1882489 () (_ BitVec 64))

(declare-fun lt!1882484 () List!52895)

(assert (=> b!4716998 (contains!16119 (toList!5876 lm!2023) (tuple2!54369 lt!1882489 lt!1882484))))

(assert (=> b!4716998 (= lt!1882490 (lemmaGetValueImpliesTupleContained!364 lm!2023 lt!1882489 lt!1882484))))

(declare-fun e!2941873 () Bool)

(assert (=> b!4716998 e!2941873))

(declare-fun res!1994849 () Bool)

(assert (=> b!4716998 (=> (not res!1994849) (not e!2941873))))

(assert (=> b!4716998 (= res!1994849 (contains!16120 lm!2023 lt!1882489))))

(assert (=> b!4716998 (= lt!1882484 (apply!12442 lm!2023 (hash!4342 hashF!1323 key!4653)))))

(assert (=> b!4716998 (= lt!1882489 (hash!4342 hashF!1323 key!4653))))

(declare-fun lt!1882487 () Unit!128867)

(declare-fun lt!1882483 () Unit!128867)

(assert (=> b!4716998 (= lt!1882487 lt!1882483)))

(assert (=> b!4716998 (contains!16120 lm!2023 (hash!4342 hashF!1323 key!4653))))

(assert (=> b!4716998 (= lt!1882483 (lemmaInGenMapThenLongMapContainsHash!765 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4716996 () Bool)

(declare-fun res!1994847 () Bool)

(assert (=> b!4716996 (=> (not res!1994847) (not e!2941872))))

(assert (=> b!4716996 (= res!1994847 (allKeysSameHashInMap!1907 lm!2023 hashF!1323))))

(declare-fun b!4716999 () Bool)

(assert (=> b!4716999 (= e!2941873 (= (getValueByKey!1934 (toList!5876 lm!2023) lt!1882489) (Some!12335 lt!1882484)))))

(assert (=> d!1500945 e!2941872))

(declare-fun res!1994848 () Bool)

(assert (=> d!1500945 (=> (not res!1994848) (not e!2941872))))

(assert (=> d!1500945 (= res!1994848 (forall!11544 (toList!5876 lm!2023) lambda!214218))))

(declare-fun lt!1882485 () Unit!128867)

(declare-fun choose!33233 (ListLongMap!4405 K!14133 Hashable!6362) Unit!128867)

(assert (=> d!1500945 (= lt!1882485 (choose!33233 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500945 (forall!11544 (toList!5876 lm!2023) lambda!214218)))

(assert (=> d!1500945 (= (lemmaInGenMapThenGetPairDefined!355 lm!2023 key!4653 hashF!1323) lt!1882485)))

(declare-fun b!4716997 () Bool)

(declare-fun res!1994850 () Bool)

(assert (=> b!4716997 (=> (not res!1994850) (not e!2941872))))

(assert (=> b!4716997 (= res!1994850 (contains!16118 (extractMap!2019 (toList!5876 lm!2023)) key!4653))))

(assert (= (and d!1500945 res!1994848) b!4716996))

(assert (= (and b!4716996 res!1994847) b!4716997))

(assert (= (and b!4716997 res!1994850) b!4716998))

(assert (= (and b!4716998 res!1994849) b!4716999))

(assert (=> b!4716997 m!5647127))

(assert (=> b!4716997 m!5647127))

(declare-fun m!5647451 () Bool)

(assert (=> b!4716997 m!5647451))

(declare-fun m!5647453 () Bool)

(assert (=> b!4716999 m!5647453))

(assert (=> b!4716996 m!5647131))

(assert (=> b!4716998 m!5647123))

(assert (=> b!4716998 m!5647445))

(declare-fun m!5647455 () Bool)

(assert (=> b!4716998 m!5647455))

(declare-fun m!5647457 () Bool)

(assert (=> b!4716998 m!5647457))

(assert (=> b!4716998 m!5647151))

(declare-fun m!5647459 () Bool)

(assert (=> b!4716998 m!5647459))

(declare-fun m!5647461 () Bool)

(assert (=> b!4716998 m!5647461))

(declare-fun m!5647463 () Bool)

(assert (=> b!4716998 m!5647463))

(assert (=> b!4716998 m!5647463))

(declare-fun m!5647465 () Bool)

(assert (=> b!4716998 m!5647465))

(assert (=> b!4716998 m!5647123))

(assert (=> b!4716998 m!5647461))

(assert (=> b!4716998 m!5647123))

(declare-fun m!5647467 () Bool)

(assert (=> b!4716998 m!5647467))

(declare-fun m!5647469 () Bool)

(assert (=> d!1500945 m!5647469))

(declare-fun m!5647471 () Bool)

(assert (=> d!1500945 m!5647471))

(assert (=> d!1500945 m!5647469))

(assert (=> b!4716814 d!1500945))

(declare-fun d!1500947 () Bool)

(declare-fun dynLambda!21796 (Int tuple2!54368) Bool)

(assert (=> d!1500947 (dynLambda!21796 lambda!214164 lt!1882207)))

(declare-fun lt!1882493 () Unit!128867)

(declare-fun choose!33234 (List!52896 Int tuple2!54368) Unit!128867)

(assert (=> d!1500947 (= lt!1882493 (choose!33234 (toList!5876 lm!2023) lambda!214164 lt!1882207))))

(declare-fun e!2941876 () Bool)

(assert (=> d!1500947 e!2941876))

(declare-fun res!1994853 () Bool)

(assert (=> d!1500947 (=> (not res!1994853) (not e!2941876))))

(assert (=> d!1500947 (= res!1994853 (forall!11544 (toList!5876 lm!2023) lambda!214164))))

(assert (=> d!1500947 (= (forallContained!3613 (toList!5876 lm!2023) lambda!214164 lt!1882207) lt!1882493)))

(declare-fun b!4717002 () Bool)

(assert (=> b!4717002 (= e!2941876 (contains!16119 (toList!5876 lm!2023) lt!1882207))))

(assert (= (and d!1500947 res!1994853) b!4717002))

(declare-fun b_lambda!177789 () Bool)

(assert (=> (not b_lambda!177789) (not d!1500947)))

(declare-fun m!5647473 () Bool)

(assert (=> d!1500947 m!5647473))

(declare-fun m!5647475 () Bool)

(assert (=> d!1500947 m!5647475))

(assert (=> d!1500947 m!5647113))

(assert (=> b!4717002 m!5647139))

(assert (=> b!4716814 d!1500947))

(declare-fun d!1500949 () Bool)

(assert (=> d!1500949 (containsKey!3330 oldBucket!34 key!4653)))

(declare-fun lt!1882496 () Unit!128867)

(declare-fun choose!33235 (List!52895 K!14133 Hashable!6362) Unit!128867)

(assert (=> d!1500949 (= lt!1882496 (choose!33235 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1500949 (noDuplicateKeys!1993 oldBucket!34)))

(assert (=> d!1500949 (= (lemmaGetPairDefinedThenContainsKey!307 oldBucket!34 key!4653 hashF!1323) lt!1882496)))

(declare-fun bs!1105038 () Bool)

(assert (= bs!1105038 d!1500949))

(assert (=> bs!1105038 m!5647143))

(declare-fun m!5647477 () Bool)

(assert (=> bs!1105038 m!5647477))

(assert (=> bs!1105038 m!5647099))

(assert (=> b!4716814 d!1500949))

(declare-fun d!1500951 () Bool)

(declare-fun res!1994858 () Bool)

(declare-fun e!2941881 () Bool)

(assert (=> d!1500951 (=> res!1994858 e!2941881)))

(assert (=> d!1500951 (= res!1994858 (and (is-Cons!52771 (t!360147 oldBucket!34)) (= (_1!30477 (h!59100 (t!360147 oldBucket!34))) key!4653)))))

(assert (=> d!1500951 (= (containsKey!3330 (t!360147 oldBucket!34) key!4653) e!2941881)))

(declare-fun b!4717007 () Bool)

(declare-fun e!2941882 () Bool)

(assert (=> b!4717007 (= e!2941881 e!2941882)))

(declare-fun res!1994859 () Bool)

(assert (=> b!4717007 (=> (not res!1994859) (not e!2941882))))

(assert (=> b!4717007 (= res!1994859 (is-Cons!52771 (t!360147 oldBucket!34)))))

(declare-fun b!4717008 () Bool)

(assert (=> b!4717008 (= e!2941882 (containsKey!3330 (t!360147 (t!360147 oldBucket!34)) key!4653))))

(assert (= (and d!1500951 (not res!1994858)) b!4717007))

(assert (= (and b!4717007 res!1994859) b!4717008))

(declare-fun m!5647479 () Bool)

(assert (=> b!4717008 m!5647479))

(assert (=> b!4716814 d!1500951))

(declare-fun b!4717025 () Bool)

(declare-fun e!2941895 () Option!12333)

(declare-fun e!2941896 () Option!12333)

(assert (=> b!4717025 (= e!2941895 e!2941896)))

(declare-fun c!805593 () Bool)

(assert (=> b!4717025 (= c!805593 (is-Cons!52771 lt!1882197))))

(declare-fun b!4717026 () Bool)

(declare-fun e!2941893 () Bool)

(declare-fun lt!1882499 () Option!12333)

(declare-fun get!17703 (Option!12333) tuple2!54366)

(assert (=> b!4717026 (= e!2941893 (contains!16124 lt!1882197 (get!17703 lt!1882499)))))

(declare-fun b!4717027 () Bool)

(declare-fun res!1994868 () Bool)

(assert (=> b!4717027 (=> (not res!1994868) (not e!2941893))))

(assert (=> b!4717027 (= res!1994868 (= (_1!30477 (get!17703 lt!1882499)) key!4653))))

(declare-fun b!4717028 () Bool)

(assert (=> b!4717028 (= e!2941896 (getPair!559 (t!360147 lt!1882197) key!4653))))

(declare-fun b!4717029 () Bool)

(declare-fun e!2941897 () Bool)

(assert (=> b!4717029 (= e!2941897 e!2941893)))

(declare-fun res!1994869 () Bool)

(assert (=> b!4717029 (=> (not res!1994869) (not e!2941893))))

(assert (=> b!4717029 (= res!1994869 (isDefined!9587 lt!1882499))))

(declare-fun b!4717030 () Bool)

(assert (=> b!4717030 (= e!2941895 (Some!12332 (h!59100 lt!1882197)))))

(declare-fun b!4717031 () Bool)

(assert (=> b!4717031 (= e!2941896 None!12332)))

(declare-fun b!4717032 () Bool)

(declare-fun e!2941894 () Bool)

(assert (=> b!4717032 (= e!2941894 (not (containsKey!3330 lt!1882197 key!4653)))))

(declare-fun d!1500953 () Bool)

(assert (=> d!1500953 e!2941897))

(declare-fun res!1994870 () Bool)

(assert (=> d!1500953 (=> res!1994870 e!2941897)))

(assert (=> d!1500953 (= res!1994870 e!2941894)))

(declare-fun res!1994871 () Bool)

(assert (=> d!1500953 (=> (not res!1994871) (not e!2941894))))

(assert (=> d!1500953 (= res!1994871 (isEmpty!29164 lt!1882499))))

(assert (=> d!1500953 (= lt!1882499 e!2941895)))

(declare-fun c!805592 () Bool)

(assert (=> d!1500953 (= c!805592 (and (is-Cons!52771 lt!1882197) (= (_1!30477 (h!59100 lt!1882197)) key!4653)))))

(assert (=> d!1500953 (noDuplicateKeys!1993 lt!1882197)))

(assert (=> d!1500953 (= (getPair!559 lt!1882197 key!4653) lt!1882499)))

(assert (= (and d!1500953 c!805592) b!4717030))

(assert (= (and d!1500953 (not c!805592)) b!4717025))

(assert (= (and b!4717025 c!805593) b!4717028))

(assert (= (and b!4717025 (not c!805593)) b!4717031))

(assert (= (and d!1500953 res!1994871) b!4717032))

(assert (= (and d!1500953 (not res!1994870)) b!4717029))

(assert (= (and b!4717029 res!1994869) b!4717027))

(assert (= (and b!4717027 res!1994868) b!4717026))

(declare-fun m!5647481 () Bool)

(assert (=> b!4717029 m!5647481))

(declare-fun m!5647483 () Bool)

(assert (=> b!4717027 m!5647483))

(declare-fun m!5647485 () Bool)

(assert (=> b!4717028 m!5647485))

(declare-fun m!5647487 () Bool)

(assert (=> b!4717032 m!5647487))

(assert (=> b!4717026 m!5647483))

(assert (=> b!4717026 m!5647483))

(declare-fun m!5647489 () Bool)

(assert (=> b!4717026 m!5647489))

(declare-fun m!5647491 () Bool)

(assert (=> d!1500953 m!5647491))

(declare-fun m!5647493 () Bool)

(assert (=> d!1500953 m!5647493))

(assert (=> b!4716814 d!1500953))

(declare-fun d!1500955 () Bool)

(declare-fun res!1994872 () Bool)

(declare-fun e!2941898 () Bool)

(assert (=> d!1500955 (=> res!1994872 e!2941898)))

(assert (=> d!1500955 (= res!1994872 (and (is-Cons!52771 oldBucket!34) (= (_1!30477 (h!59100 oldBucket!34)) key!4653)))))

(assert (=> d!1500955 (= (containsKey!3330 oldBucket!34 key!4653) e!2941898)))

(declare-fun b!4717033 () Bool)

(declare-fun e!2941899 () Bool)

(assert (=> b!4717033 (= e!2941898 e!2941899)))

(declare-fun res!1994873 () Bool)

(assert (=> b!4717033 (=> (not res!1994873) (not e!2941899))))

(assert (=> b!4717033 (= res!1994873 (is-Cons!52771 oldBucket!34))))

(declare-fun b!4717034 () Bool)

(assert (=> b!4717034 (= e!2941899 (containsKey!3330 (t!360147 oldBucket!34) key!4653))))

(assert (= (and d!1500955 (not res!1994872)) b!4717033))

(assert (= (and b!4717033 res!1994873) b!4717034))

(assert (=> b!4717034 m!5647157))

(assert (=> b!4716814 d!1500955))

(declare-fun d!1500957 () Bool)

(declare-fun get!17704 (Option!12336) List!52895)

(assert (=> d!1500957 (= (apply!12442 lm!2023 lt!1882199) (get!17704 (getValueByKey!1934 (toList!5876 lm!2023) lt!1882199)))))

(declare-fun bs!1105039 () Bool)

(assert (= bs!1105039 d!1500957))

(assert (=> bs!1105039 m!5647441))

(assert (=> bs!1105039 m!5647441))

(declare-fun m!5647495 () Bool)

(assert (=> bs!1105039 m!5647495))

(assert (=> b!4716814 d!1500957))

(declare-fun bs!1105040 () Bool)

(declare-fun d!1500959 () Bool)

(assert (= bs!1105040 (and d!1500959 start!479766)))

(declare-fun lambda!214219 () Int)

(assert (=> bs!1105040 (= lambda!214219 lambda!214164)))

(declare-fun bs!1105041 () Bool)

(assert (= bs!1105041 (and d!1500959 d!1500927)))

(assert (=> bs!1105041 (= lambda!214219 lambda!214208)))

(declare-fun bs!1105042 () Bool)

(assert (= bs!1105042 (and d!1500959 d!1500941)))

(assert (=> bs!1105042 (= lambda!214219 lambda!214211)))

(declare-fun bs!1105043 () Bool)

(assert (= bs!1105043 (and d!1500959 d!1500945)))

(assert (=> bs!1105043 (= lambda!214219 lambda!214218)))

(declare-fun lt!1882500 () ListMap!5239)

(assert (=> d!1500959 (invariantList!1493 (toList!5875 lt!1882500))))

(declare-fun e!2941900 () ListMap!5239)

(assert (=> d!1500959 (= lt!1882500 e!2941900)))

(declare-fun c!805594 () Bool)

(assert (=> d!1500959 (= c!805594 (is-Cons!52772 lt!1882203))))

(assert (=> d!1500959 (forall!11544 lt!1882203 lambda!214219)))

(assert (=> d!1500959 (= (extractMap!2019 lt!1882203) lt!1882500)))

(declare-fun b!4717035 () Bool)

(assert (=> b!4717035 (= e!2941900 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 lt!1882203)) (extractMap!2019 (t!360148 lt!1882203))))))

(declare-fun b!4717036 () Bool)

(assert (=> b!4717036 (= e!2941900 (ListMap!5240 Nil!52771))))

(assert (= (and d!1500959 c!805594) b!4717035))

(assert (= (and d!1500959 (not c!805594)) b!4717036))

(declare-fun m!5647497 () Bool)

(assert (=> d!1500959 m!5647497))

(declare-fun m!5647499 () Bool)

(assert (=> d!1500959 m!5647499))

(declare-fun m!5647501 () Bool)

(assert (=> b!4717035 m!5647501))

(assert (=> b!4717035 m!5647501))

(declare-fun m!5647503 () Bool)

(assert (=> b!4717035 m!5647503))

(assert (=> b!4716815 d!1500959))

(declare-fun bs!1105044 () Bool)

(declare-fun b!4717039 () Bool)

(assert (= bs!1105044 (and b!4717039 b!4716934)))

(declare-fun lambda!214220 () Int)

(assert (=> bs!1105044 (= lambda!214220 lambda!214202)))

(declare-fun bs!1105045 () Bool)

(assert (= bs!1105045 (and b!4717039 b!4716935)))

(assert (=> bs!1105045 (= lambda!214220 lambda!214203)))

(assert (=> bs!1105045 (= (= lt!1882184 lt!1882414) (= lambda!214220 lambda!214204))))

(declare-fun bs!1105046 () Bool)

(assert (= bs!1105046 (and b!4717039 d!1500915)))

(assert (=> bs!1105046 (= (= lt!1882184 lt!1882398) (= lambda!214220 lambda!214205))))

(assert (=> b!4717039 true))

(declare-fun bs!1105047 () Bool)

(declare-fun b!4717040 () Bool)

(assert (= bs!1105047 (and b!4717040 d!1500915)))

(declare-fun lambda!214221 () Int)

(assert (=> bs!1105047 (= (= lt!1882184 lt!1882398) (= lambda!214221 lambda!214205))))

(declare-fun bs!1105048 () Bool)

(assert (= bs!1105048 (and b!4717040 b!4716935)))

(assert (=> bs!1105048 (= (= lt!1882184 lt!1882414) (= lambda!214221 lambda!214204))))

(declare-fun bs!1105049 () Bool)

(assert (= bs!1105049 (and b!4717040 b!4717039)))

(assert (=> bs!1105049 (= lambda!214221 lambda!214220)))

(declare-fun bs!1105050 () Bool)

(assert (= bs!1105050 (and b!4717040 b!4716934)))

(assert (=> bs!1105050 (= lambda!214221 lambda!214202)))

(assert (=> bs!1105048 (= lambda!214221 lambda!214203)))

(assert (=> b!4717040 true))

(declare-fun lambda!214222 () Int)

(declare-fun lt!1882517 () ListMap!5239)

(assert (=> b!4717040 (= (= lt!1882517 lt!1882184) (= lambda!214222 lambda!214221))))

(assert (=> bs!1105047 (= (= lt!1882517 lt!1882398) (= lambda!214222 lambda!214205))))

(assert (=> bs!1105048 (= (= lt!1882517 lt!1882414) (= lambda!214222 lambda!214204))))

(assert (=> bs!1105049 (= (= lt!1882517 lt!1882184) (= lambda!214222 lambda!214220))))

(assert (=> bs!1105050 (= (= lt!1882517 lt!1882184) (= lambda!214222 lambda!214202))))

(assert (=> bs!1105048 (= (= lt!1882517 lt!1882184) (= lambda!214222 lambda!214203))))

(assert (=> b!4717040 true))

(declare-fun bs!1105051 () Bool)

(declare-fun d!1500961 () Bool)

(assert (= bs!1105051 (and d!1500961 b!4717040)))

(declare-fun lt!1882501 () ListMap!5239)

(declare-fun lambda!214223 () Int)

(assert (=> bs!1105051 (= (= lt!1882501 lt!1882184) (= lambda!214223 lambda!214221))))

(declare-fun bs!1105052 () Bool)

(assert (= bs!1105052 (and d!1500961 d!1500915)))

(assert (=> bs!1105052 (= (= lt!1882501 lt!1882398) (= lambda!214223 lambda!214205))))

(assert (=> bs!1105051 (= (= lt!1882501 lt!1882517) (= lambda!214223 lambda!214222))))

(declare-fun bs!1105053 () Bool)

(assert (= bs!1105053 (and d!1500961 b!4716935)))

(assert (=> bs!1105053 (= (= lt!1882501 lt!1882414) (= lambda!214223 lambda!214204))))

(declare-fun bs!1105054 () Bool)

(assert (= bs!1105054 (and d!1500961 b!4717039)))

(assert (=> bs!1105054 (= (= lt!1882501 lt!1882184) (= lambda!214223 lambda!214220))))

(declare-fun bs!1105055 () Bool)

(assert (= bs!1105055 (and d!1500961 b!4716934)))

(assert (=> bs!1105055 (= (= lt!1882501 lt!1882184) (= lambda!214223 lambda!214202))))

(assert (=> bs!1105053 (= (= lt!1882501 lt!1882184) (= lambda!214223 lambda!214203))))

(assert (=> d!1500961 true))

(declare-fun call!329766 () Bool)

(declare-fun bm!329759 () Bool)

(declare-fun c!805595 () Bool)

(assert (=> bm!329759 (= call!329766 (forall!11546 (toList!5875 lt!1882184) (ite c!805595 lambda!214220 lambda!214221)))))

(declare-fun b!4717037 () Bool)

(declare-fun e!2941902 () Bool)

(assert (=> b!4717037 (= e!2941902 (forall!11546 (toList!5875 lt!1882184) lambda!214222))))

(declare-fun b!4717038 () Bool)

(declare-fun res!1994876 () Bool)

(declare-fun e!2941901 () Bool)

(assert (=> b!4717038 (=> (not res!1994876) (not e!2941901))))

(assert (=> b!4717038 (= res!1994876 (forall!11546 (toList!5875 lt!1882184) lambda!214223))))

(declare-fun e!2941903 () ListMap!5239)

(assert (=> b!4717039 (= e!2941903 lt!1882184)))

(declare-fun lt!1882502 () Unit!128867)

(declare-fun call!329764 () Unit!128867)

(assert (=> b!4717039 (= lt!1882502 call!329764)))

(declare-fun call!329765 () Bool)

(assert (=> b!4717039 call!329765))

(declare-fun lt!1882519 () Unit!128867)

(assert (=> b!4717039 (= lt!1882519 lt!1882502)))

(assert (=> b!4717039 call!329766))

(declare-fun lt!1882514 () Unit!128867)

(declare-fun Unit!128883 () Unit!128867)

(assert (=> b!4717039 (= lt!1882514 Unit!128883)))

(assert (=> b!4717040 (= e!2941903 lt!1882517)))

(declare-fun lt!1882511 () ListMap!5239)

(assert (=> b!4717040 (= lt!1882511 (+!2253 lt!1882184 (h!59100 (Cons!52771 lt!1882210 lt!1882182))))))

(assert (=> b!4717040 (= lt!1882517 (addToMapMapFromBucket!1423 (t!360147 (Cons!52771 lt!1882210 lt!1882182)) (+!2253 lt!1882184 (h!59100 (Cons!52771 lt!1882210 lt!1882182)))))))

(declare-fun lt!1882504 () Unit!128867)

(assert (=> b!4717040 (= lt!1882504 call!329764)))

(assert (=> b!4717040 call!329766))

(declare-fun lt!1882516 () Unit!128867)

(assert (=> b!4717040 (= lt!1882516 lt!1882504)))

(assert (=> b!4717040 (forall!11546 (toList!5875 lt!1882511) lambda!214222)))

(declare-fun lt!1882509 () Unit!128867)

(declare-fun Unit!128884 () Unit!128867)

(assert (=> b!4717040 (= lt!1882509 Unit!128884)))

(assert (=> b!4717040 (forall!11546 (t!360147 (Cons!52771 lt!1882210 lt!1882182)) lambda!214222)))

(declare-fun lt!1882515 () Unit!128867)

(declare-fun Unit!128885 () Unit!128867)

(assert (=> b!4717040 (= lt!1882515 Unit!128885)))

(declare-fun lt!1882507 () Unit!128867)

(declare-fun Unit!128886 () Unit!128867)

(assert (=> b!4717040 (= lt!1882507 Unit!128886)))

(declare-fun lt!1882513 () Unit!128867)

(assert (=> b!4717040 (= lt!1882513 (forallContained!3615 (toList!5875 lt!1882511) lambda!214222 (h!59100 (Cons!52771 lt!1882210 lt!1882182))))))

(assert (=> b!4717040 (contains!16118 lt!1882511 (_1!30477 (h!59100 (Cons!52771 lt!1882210 lt!1882182))))))

(declare-fun lt!1882506 () Unit!128867)

(declare-fun Unit!128887 () Unit!128867)

(assert (=> b!4717040 (= lt!1882506 Unit!128887)))

(assert (=> b!4717040 (contains!16118 lt!1882517 (_1!30477 (h!59100 (Cons!52771 lt!1882210 lt!1882182))))))

(declare-fun lt!1882510 () Unit!128867)

(declare-fun Unit!128888 () Unit!128867)

(assert (=> b!4717040 (= lt!1882510 Unit!128888)))

(assert (=> b!4717040 call!329765))

(declare-fun lt!1882512 () Unit!128867)

(declare-fun Unit!128889 () Unit!128867)

(assert (=> b!4717040 (= lt!1882512 Unit!128889)))

(assert (=> b!4717040 (forall!11546 (toList!5875 lt!1882511) lambda!214222)))

(declare-fun lt!1882521 () Unit!128867)

(declare-fun Unit!128890 () Unit!128867)

(assert (=> b!4717040 (= lt!1882521 Unit!128890)))

(declare-fun lt!1882508 () Unit!128867)

(declare-fun Unit!128891 () Unit!128867)

(assert (=> b!4717040 (= lt!1882508 Unit!128891)))

(declare-fun lt!1882505 () Unit!128867)

(assert (=> b!4717040 (= lt!1882505 (addForallContainsKeyThenBeforeAdding!780 lt!1882184 lt!1882517 (_1!30477 (h!59100 (Cons!52771 lt!1882210 lt!1882182))) (_2!30477 (h!59100 (Cons!52771 lt!1882210 lt!1882182)))))))

(assert (=> b!4717040 (forall!11546 (toList!5875 lt!1882184) lambda!214222)))

(declare-fun lt!1882503 () Unit!128867)

(assert (=> b!4717040 (= lt!1882503 lt!1882505)))

(assert (=> b!4717040 (forall!11546 (toList!5875 lt!1882184) lambda!214222)))

(declare-fun lt!1882518 () Unit!128867)

(declare-fun Unit!128892 () Unit!128867)

(assert (=> b!4717040 (= lt!1882518 Unit!128892)))

(declare-fun res!1994875 () Bool)

(assert (=> b!4717040 (= res!1994875 (forall!11546 (Cons!52771 lt!1882210 lt!1882182) lambda!214222))))

(assert (=> b!4717040 (=> (not res!1994875) (not e!2941902))))

(assert (=> b!4717040 e!2941902))

(declare-fun lt!1882520 () Unit!128867)

(declare-fun Unit!128893 () Unit!128867)

(assert (=> b!4717040 (= lt!1882520 Unit!128893)))

(declare-fun bm!329760 () Bool)

(assert (=> bm!329760 (= call!329765 (forall!11546 (ite c!805595 (toList!5875 lt!1882184) (Cons!52771 lt!1882210 lt!1882182)) (ite c!805595 lambda!214220 lambda!214222)))))

(assert (=> d!1500961 e!2941901))

(declare-fun res!1994874 () Bool)

(assert (=> d!1500961 (=> (not res!1994874) (not e!2941901))))

(assert (=> d!1500961 (= res!1994874 (forall!11546 (Cons!52771 lt!1882210 lt!1882182) lambda!214223))))

(assert (=> d!1500961 (= lt!1882501 e!2941903)))

(assert (=> d!1500961 (= c!805595 (is-Nil!52771 (Cons!52771 lt!1882210 lt!1882182)))))

(assert (=> d!1500961 (noDuplicateKeys!1993 (Cons!52771 lt!1882210 lt!1882182))))

(assert (=> d!1500961 (= (addToMapMapFromBucket!1423 (Cons!52771 lt!1882210 lt!1882182) lt!1882184) lt!1882501)))

(declare-fun bm!329761 () Bool)

(assert (=> bm!329761 (= call!329764 (lemmaContainsAllItsOwnKeys!781 lt!1882184))))

(declare-fun b!4717041 () Bool)

(assert (=> b!4717041 (= e!2941901 (invariantList!1493 (toList!5875 lt!1882501)))))

(assert (= (and d!1500961 c!805595) b!4717039))

(assert (= (and d!1500961 (not c!805595)) b!4717040))

(assert (= (and b!4717040 res!1994875) b!4717037))

(assert (= (or b!4717039 b!4717040) bm!329761))

(assert (= (or b!4717039 b!4717040) bm!329760))

(assert (= (or b!4717039 b!4717040) bm!329759))

(assert (= (and d!1500961 res!1994874) b!4717038))

(assert (= (and b!4717038 res!1994876) b!4717041))

(declare-fun m!5647505 () Bool)

(assert (=> bm!329760 m!5647505))

(declare-fun m!5647507 () Bool)

(assert (=> b!4717041 m!5647507))

(declare-fun m!5647509 () Bool)

(assert (=> b!4717037 m!5647509))

(declare-fun m!5647511 () Bool)

(assert (=> bm!329759 m!5647511))

(assert (=> b!4717040 m!5647509))

(declare-fun m!5647513 () Bool)

(assert (=> b!4717040 m!5647513))

(declare-fun m!5647515 () Bool)

(assert (=> b!4717040 m!5647515))

(declare-fun m!5647517 () Bool)

(assert (=> b!4717040 m!5647517))

(declare-fun m!5647519 () Bool)

(assert (=> b!4717040 m!5647519))

(declare-fun m!5647521 () Bool)

(assert (=> b!4717040 m!5647521))

(declare-fun m!5647523 () Bool)

(assert (=> b!4717040 m!5647523))

(declare-fun m!5647525 () Bool)

(assert (=> b!4717040 m!5647525))

(assert (=> b!4717040 m!5647509))

(declare-fun m!5647527 () Bool)

(assert (=> b!4717040 m!5647527))

(declare-fun m!5647529 () Bool)

(assert (=> b!4717040 m!5647529))

(assert (=> b!4717040 m!5647527))

(assert (=> b!4717040 m!5647513))

(assert (=> bm!329761 m!5647387))

(declare-fun m!5647531 () Bool)

(assert (=> b!4717038 m!5647531))

(declare-fun m!5647533 () Bool)

(assert (=> d!1500961 m!5647533))

(declare-fun m!5647535 () Bool)

(assert (=> d!1500961 m!5647535))

(assert (=> b!4716815 d!1500961))

(declare-fun d!1500963 () Bool)

(declare-fun e!2941904 () Bool)

(assert (=> d!1500963 e!2941904))

(declare-fun res!1994877 () Bool)

(assert (=> d!1500963 (=> (not res!1994877) (not e!2941904))))

(declare-fun lt!1882523 () ListMap!5239)

(assert (=> d!1500963 (= res!1994877 (contains!16118 lt!1882523 (_1!30477 lt!1882210)))))

(declare-fun lt!1882524 () List!52895)

(assert (=> d!1500963 (= lt!1882523 (ListMap!5240 lt!1882524))))

(declare-fun lt!1882522 () Unit!128867)

(declare-fun lt!1882525 () Unit!128867)

(assert (=> d!1500963 (= lt!1882522 lt!1882525)))

(assert (=> d!1500963 (= (getValueByKey!1933 lt!1882524 (_1!30477 lt!1882210)) (Some!12334 (_2!30477 lt!1882210)))))

(assert (=> d!1500963 (= lt!1882525 (lemmaContainsTupThenGetReturnValue!1075 lt!1882524 (_1!30477 lt!1882210) (_2!30477 lt!1882210)))))

(assert (=> d!1500963 (= lt!1882524 (insertNoDuplicatedKeys!583 (toList!5875 (addToMapMapFromBucket!1423 lt!1882182 lt!1882184)) (_1!30477 lt!1882210) (_2!30477 lt!1882210)))))

(assert (=> d!1500963 (= (+!2253 (addToMapMapFromBucket!1423 lt!1882182 lt!1882184) lt!1882210) lt!1882523)))

(declare-fun b!4717042 () Bool)

(declare-fun res!1994878 () Bool)

(assert (=> b!4717042 (=> (not res!1994878) (not e!2941904))))

(assert (=> b!4717042 (= res!1994878 (= (getValueByKey!1933 (toList!5875 lt!1882523) (_1!30477 lt!1882210)) (Some!12334 (_2!30477 lt!1882210))))))

(declare-fun b!4717043 () Bool)

(assert (=> b!4717043 (= e!2941904 (contains!16124 (toList!5875 lt!1882523) lt!1882210))))

(assert (= (and d!1500963 res!1994877) b!4717042))

(assert (= (and b!4717042 res!1994878) b!4717043))

(declare-fun m!5647537 () Bool)

(assert (=> d!1500963 m!5647537))

(declare-fun m!5647539 () Bool)

(assert (=> d!1500963 m!5647539))

(declare-fun m!5647541 () Bool)

(assert (=> d!1500963 m!5647541))

(declare-fun m!5647543 () Bool)

(assert (=> d!1500963 m!5647543))

(declare-fun m!5647545 () Bool)

(assert (=> b!4717042 m!5647545))

(declare-fun m!5647547 () Bool)

(assert (=> b!4717043 m!5647547))

(assert (=> b!4716815 d!1500963))

(declare-fun d!1500965 () Bool)

(assert (=> d!1500965 (= (head!10215 oldBucket!34) (h!59100 oldBucket!34))))

(assert (=> b!4716815 d!1500965))

(declare-fun d!1500967 () Bool)

(assert (=> d!1500967 (= (eq!1120 (addToMapMapFromBucket!1423 (Cons!52771 lt!1882198 lt!1882209) lt!1882184) (+!2253 (addToMapMapFromBucket!1423 lt!1882209 lt!1882184) lt!1882198)) (= (content!9370 (toList!5875 (addToMapMapFromBucket!1423 (Cons!52771 lt!1882198 lt!1882209) lt!1882184))) (content!9370 (toList!5875 (+!2253 (addToMapMapFromBucket!1423 lt!1882209 lt!1882184) lt!1882198)))))))

(declare-fun bs!1105056 () Bool)

(assert (= bs!1105056 d!1500967))

(declare-fun m!5647549 () Bool)

(assert (=> bs!1105056 m!5647549))

(declare-fun m!5647551 () Bool)

(assert (=> bs!1105056 m!5647551))

(assert (=> b!4716815 d!1500967))

(declare-fun d!1500969 () Bool)

(declare-fun e!2941905 () Bool)

(assert (=> d!1500969 e!2941905))

(declare-fun res!1994879 () Bool)

(assert (=> d!1500969 (=> (not res!1994879) (not e!2941905))))

(declare-fun lt!1882527 () ListMap!5239)

(assert (=> d!1500969 (= res!1994879 (contains!16118 lt!1882527 (_1!30477 (h!59100 oldBucket!34))))))

(declare-fun lt!1882528 () List!52895)

(assert (=> d!1500969 (= lt!1882527 (ListMap!5240 lt!1882528))))

(declare-fun lt!1882526 () Unit!128867)

(declare-fun lt!1882529 () Unit!128867)

(assert (=> d!1500969 (= lt!1882526 lt!1882529)))

(assert (=> d!1500969 (= (getValueByKey!1933 lt!1882528 (_1!30477 (h!59100 oldBucket!34))) (Some!12334 (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1500969 (= lt!1882529 (lemmaContainsTupThenGetReturnValue!1075 lt!1882528 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1500969 (= lt!1882528 (insertNoDuplicatedKeys!583 (toList!5875 lt!1882215) (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1500969 (= (+!2253 lt!1882215 (h!59100 oldBucket!34)) lt!1882527)))

(declare-fun b!4717044 () Bool)

(declare-fun res!1994880 () Bool)

(assert (=> b!4717044 (=> (not res!1994880) (not e!2941905))))

(assert (=> b!4717044 (= res!1994880 (= (getValueByKey!1933 (toList!5875 lt!1882527) (_1!30477 (h!59100 oldBucket!34))) (Some!12334 (_2!30477 (h!59100 oldBucket!34)))))))

(declare-fun b!4717045 () Bool)

(assert (=> b!4717045 (= e!2941905 (contains!16124 (toList!5875 lt!1882527) (h!59100 oldBucket!34)))))

(assert (= (and d!1500969 res!1994879) b!4717044))

(assert (= (and b!4717044 res!1994880) b!4717045))

(declare-fun m!5647553 () Bool)

(assert (=> d!1500969 m!5647553))

(declare-fun m!5647555 () Bool)

(assert (=> d!1500969 m!5647555))

(declare-fun m!5647557 () Bool)

(assert (=> d!1500969 m!5647557))

(declare-fun m!5647559 () Bool)

(assert (=> d!1500969 m!5647559))

(declare-fun m!5647561 () Bool)

(assert (=> b!4717044 m!5647561))

(declare-fun m!5647563 () Bool)

(assert (=> b!4717045 m!5647563))

(assert (=> b!4716815 d!1500969))

(declare-fun bs!1105057 () Bool)

(declare-fun b!4717048 () Bool)

(assert (= bs!1105057 (and b!4717048 b!4717040)))

(declare-fun lambda!214224 () Int)

(assert (=> bs!1105057 (= lambda!214224 lambda!214221)))

(declare-fun bs!1105058 () Bool)

(assert (= bs!1105058 (and b!4717048 d!1500915)))

(assert (=> bs!1105058 (= (= lt!1882184 lt!1882398) (= lambda!214224 lambda!214205))))

(assert (=> bs!1105057 (= (= lt!1882184 lt!1882517) (= lambda!214224 lambda!214222))))

(declare-fun bs!1105059 () Bool)

(assert (= bs!1105059 (and b!4717048 d!1500961)))

(assert (=> bs!1105059 (= (= lt!1882184 lt!1882501) (= lambda!214224 lambda!214223))))

(declare-fun bs!1105060 () Bool)

(assert (= bs!1105060 (and b!4717048 b!4716935)))

(assert (=> bs!1105060 (= (= lt!1882184 lt!1882414) (= lambda!214224 lambda!214204))))

(declare-fun bs!1105061 () Bool)

(assert (= bs!1105061 (and b!4717048 b!4717039)))

(assert (=> bs!1105061 (= lambda!214224 lambda!214220)))

(declare-fun bs!1105062 () Bool)

(assert (= bs!1105062 (and b!4717048 b!4716934)))

(assert (=> bs!1105062 (= lambda!214224 lambda!214202)))

(assert (=> bs!1105060 (= lambda!214224 lambda!214203)))

(assert (=> b!4717048 true))

(declare-fun bs!1105063 () Bool)

(declare-fun b!4717049 () Bool)

(assert (= bs!1105063 (and b!4717049 b!4717040)))

(declare-fun lambda!214225 () Int)

(assert (=> bs!1105063 (= lambda!214225 lambda!214221)))

(declare-fun bs!1105064 () Bool)

(assert (= bs!1105064 (and b!4717049 d!1500915)))

(assert (=> bs!1105064 (= (= lt!1882184 lt!1882398) (= lambda!214225 lambda!214205))))

(assert (=> bs!1105063 (= (= lt!1882184 lt!1882517) (= lambda!214225 lambda!214222))))

(declare-fun bs!1105065 () Bool)

(assert (= bs!1105065 (and b!4717049 d!1500961)))

(assert (=> bs!1105065 (= (= lt!1882184 lt!1882501) (= lambda!214225 lambda!214223))))

(declare-fun bs!1105066 () Bool)

(assert (= bs!1105066 (and b!4717049 b!4717048)))

(assert (=> bs!1105066 (= lambda!214225 lambda!214224)))

(declare-fun bs!1105067 () Bool)

(assert (= bs!1105067 (and b!4717049 b!4716935)))

(assert (=> bs!1105067 (= (= lt!1882184 lt!1882414) (= lambda!214225 lambda!214204))))

(declare-fun bs!1105068 () Bool)

(assert (= bs!1105068 (and b!4717049 b!4717039)))

(assert (=> bs!1105068 (= lambda!214225 lambda!214220)))

(declare-fun bs!1105069 () Bool)

(assert (= bs!1105069 (and b!4717049 b!4716934)))

(assert (=> bs!1105069 (= lambda!214225 lambda!214202)))

(assert (=> bs!1105067 (= lambda!214225 lambda!214203)))

(assert (=> b!4717049 true))

(declare-fun lambda!214226 () Int)

(declare-fun lt!1882546 () ListMap!5239)

(assert (=> b!4717049 (= (= lt!1882546 lt!1882184) (= lambda!214226 lambda!214225))))

(assert (=> bs!1105063 (= (= lt!1882546 lt!1882184) (= lambda!214226 lambda!214221))))

(assert (=> bs!1105064 (= (= lt!1882546 lt!1882398) (= lambda!214226 lambda!214205))))

(assert (=> bs!1105063 (= (= lt!1882546 lt!1882517) (= lambda!214226 lambda!214222))))

(assert (=> bs!1105065 (= (= lt!1882546 lt!1882501) (= lambda!214226 lambda!214223))))

(assert (=> bs!1105066 (= (= lt!1882546 lt!1882184) (= lambda!214226 lambda!214224))))

(assert (=> bs!1105067 (= (= lt!1882546 lt!1882414) (= lambda!214226 lambda!214204))))

(assert (=> bs!1105068 (= (= lt!1882546 lt!1882184) (= lambda!214226 lambda!214220))))

(assert (=> bs!1105069 (= (= lt!1882546 lt!1882184) (= lambda!214226 lambda!214202))))

(assert (=> bs!1105067 (= (= lt!1882546 lt!1882184) (= lambda!214226 lambda!214203))))

(assert (=> b!4717049 true))

(declare-fun bs!1105070 () Bool)

(declare-fun d!1500971 () Bool)

(assert (= bs!1105070 (and d!1500971 b!4717049)))

(declare-fun lt!1882530 () ListMap!5239)

(declare-fun lambda!214227 () Int)

(assert (=> bs!1105070 (= (= lt!1882530 lt!1882546) (= lambda!214227 lambda!214226))))

(assert (=> bs!1105070 (= (= lt!1882530 lt!1882184) (= lambda!214227 lambda!214225))))

(declare-fun bs!1105071 () Bool)

(assert (= bs!1105071 (and d!1500971 b!4717040)))

(assert (=> bs!1105071 (= (= lt!1882530 lt!1882184) (= lambda!214227 lambda!214221))))

(declare-fun bs!1105072 () Bool)

(assert (= bs!1105072 (and d!1500971 d!1500915)))

(assert (=> bs!1105072 (= (= lt!1882530 lt!1882398) (= lambda!214227 lambda!214205))))

(assert (=> bs!1105071 (= (= lt!1882530 lt!1882517) (= lambda!214227 lambda!214222))))

(declare-fun bs!1105073 () Bool)

(assert (= bs!1105073 (and d!1500971 d!1500961)))

(assert (=> bs!1105073 (= (= lt!1882530 lt!1882501) (= lambda!214227 lambda!214223))))

(declare-fun bs!1105074 () Bool)

(assert (= bs!1105074 (and d!1500971 b!4717048)))

(assert (=> bs!1105074 (= (= lt!1882530 lt!1882184) (= lambda!214227 lambda!214224))))

(declare-fun bs!1105075 () Bool)

(assert (= bs!1105075 (and d!1500971 b!4716935)))

(assert (=> bs!1105075 (= (= lt!1882530 lt!1882414) (= lambda!214227 lambda!214204))))

(declare-fun bs!1105076 () Bool)

(assert (= bs!1105076 (and d!1500971 b!4717039)))

(assert (=> bs!1105076 (= (= lt!1882530 lt!1882184) (= lambda!214227 lambda!214220))))

(declare-fun bs!1105077 () Bool)

(assert (= bs!1105077 (and d!1500971 b!4716934)))

(assert (=> bs!1105077 (= (= lt!1882530 lt!1882184) (= lambda!214227 lambda!214202))))

(assert (=> bs!1105075 (= (= lt!1882530 lt!1882184) (= lambda!214227 lambda!214203))))

(assert (=> d!1500971 true))

(declare-fun c!805596 () Bool)

(declare-fun bm!329762 () Bool)

(declare-fun call!329769 () Bool)

(assert (=> bm!329762 (= call!329769 (forall!11546 (toList!5875 lt!1882184) (ite c!805596 lambda!214224 lambda!214225)))))

(declare-fun b!4717046 () Bool)

(declare-fun e!2941907 () Bool)

(assert (=> b!4717046 (= e!2941907 (forall!11546 (toList!5875 lt!1882184) lambda!214226))))

(declare-fun b!4717047 () Bool)

(declare-fun res!1994883 () Bool)

(declare-fun e!2941906 () Bool)

(assert (=> b!4717047 (=> (not res!1994883) (not e!2941906))))

(assert (=> b!4717047 (= res!1994883 (forall!11546 (toList!5875 lt!1882184) lambda!214227))))

(declare-fun e!2941908 () ListMap!5239)

(assert (=> b!4717048 (= e!2941908 lt!1882184)))

(declare-fun lt!1882531 () Unit!128867)

(declare-fun call!329767 () Unit!128867)

(assert (=> b!4717048 (= lt!1882531 call!329767)))

(declare-fun call!329768 () Bool)

(assert (=> b!4717048 call!329768))

(declare-fun lt!1882548 () Unit!128867)

(assert (=> b!4717048 (= lt!1882548 lt!1882531)))

(assert (=> b!4717048 call!329769))

(declare-fun lt!1882543 () Unit!128867)

(declare-fun Unit!128894 () Unit!128867)

(assert (=> b!4717048 (= lt!1882543 Unit!128894)))

(assert (=> b!4717049 (= e!2941908 lt!1882546)))

(declare-fun lt!1882540 () ListMap!5239)

(assert (=> b!4717049 (= lt!1882540 (+!2253 lt!1882184 (h!59100 (Cons!52771 lt!1882198 lt!1882209))))))

(assert (=> b!4717049 (= lt!1882546 (addToMapMapFromBucket!1423 (t!360147 (Cons!52771 lt!1882198 lt!1882209)) (+!2253 lt!1882184 (h!59100 (Cons!52771 lt!1882198 lt!1882209)))))))

(declare-fun lt!1882533 () Unit!128867)

(assert (=> b!4717049 (= lt!1882533 call!329767)))

(assert (=> b!4717049 call!329769))

(declare-fun lt!1882545 () Unit!128867)

(assert (=> b!4717049 (= lt!1882545 lt!1882533)))

(assert (=> b!4717049 (forall!11546 (toList!5875 lt!1882540) lambda!214226)))

(declare-fun lt!1882538 () Unit!128867)

(declare-fun Unit!128895 () Unit!128867)

(assert (=> b!4717049 (= lt!1882538 Unit!128895)))

(assert (=> b!4717049 (forall!11546 (t!360147 (Cons!52771 lt!1882198 lt!1882209)) lambda!214226)))

(declare-fun lt!1882544 () Unit!128867)

(declare-fun Unit!128896 () Unit!128867)

(assert (=> b!4717049 (= lt!1882544 Unit!128896)))

(declare-fun lt!1882536 () Unit!128867)

(declare-fun Unit!128897 () Unit!128867)

(assert (=> b!4717049 (= lt!1882536 Unit!128897)))

(declare-fun lt!1882542 () Unit!128867)

(assert (=> b!4717049 (= lt!1882542 (forallContained!3615 (toList!5875 lt!1882540) lambda!214226 (h!59100 (Cons!52771 lt!1882198 lt!1882209))))))

(assert (=> b!4717049 (contains!16118 lt!1882540 (_1!30477 (h!59100 (Cons!52771 lt!1882198 lt!1882209))))))

(declare-fun lt!1882535 () Unit!128867)

(declare-fun Unit!128898 () Unit!128867)

(assert (=> b!4717049 (= lt!1882535 Unit!128898)))

(assert (=> b!4717049 (contains!16118 lt!1882546 (_1!30477 (h!59100 (Cons!52771 lt!1882198 lt!1882209))))))

(declare-fun lt!1882539 () Unit!128867)

(declare-fun Unit!128899 () Unit!128867)

(assert (=> b!4717049 (= lt!1882539 Unit!128899)))

(assert (=> b!4717049 call!329768))

(declare-fun lt!1882541 () Unit!128867)

(declare-fun Unit!128900 () Unit!128867)

(assert (=> b!4717049 (= lt!1882541 Unit!128900)))

(assert (=> b!4717049 (forall!11546 (toList!5875 lt!1882540) lambda!214226)))

(declare-fun lt!1882550 () Unit!128867)

(declare-fun Unit!128901 () Unit!128867)

(assert (=> b!4717049 (= lt!1882550 Unit!128901)))

(declare-fun lt!1882537 () Unit!128867)

(declare-fun Unit!128902 () Unit!128867)

(assert (=> b!4717049 (= lt!1882537 Unit!128902)))

(declare-fun lt!1882534 () Unit!128867)

(assert (=> b!4717049 (= lt!1882534 (addForallContainsKeyThenBeforeAdding!780 lt!1882184 lt!1882546 (_1!30477 (h!59100 (Cons!52771 lt!1882198 lt!1882209))) (_2!30477 (h!59100 (Cons!52771 lt!1882198 lt!1882209)))))))

(assert (=> b!4717049 (forall!11546 (toList!5875 lt!1882184) lambda!214226)))

(declare-fun lt!1882532 () Unit!128867)

(assert (=> b!4717049 (= lt!1882532 lt!1882534)))

(assert (=> b!4717049 (forall!11546 (toList!5875 lt!1882184) lambda!214226)))

(declare-fun lt!1882547 () Unit!128867)

(declare-fun Unit!128903 () Unit!128867)

(assert (=> b!4717049 (= lt!1882547 Unit!128903)))

(declare-fun res!1994882 () Bool)

(assert (=> b!4717049 (= res!1994882 (forall!11546 (Cons!52771 lt!1882198 lt!1882209) lambda!214226))))

(assert (=> b!4717049 (=> (not res!1994882) (not e!2941907))))

(assert (=> b!4717049 e!2941907))

(declare-fun lt!1882549 () Unit!128867)

(declare-fun Unit!128904 () Unit!128867)

(assert (=> b!4717049 (= lt!1882549 Unit!128904)))

(declare-fun bm!329763 () Bool)

(assert (=> bm!329763 (= call!329768 (forall!11546 (ite c!805596 (toList!5875 lt!1882184) (Cons!52771 lt!1882198 lt!1882209)) (ite c!805596 lambda!214224 lambda!214226)))))

(assert (=> d!1500971 e!2941906))

(declare-fun res!1994881 () Bool)

(assert (=> d!1500971 (=> (not res!1994881) (not e!2941906))))

(assert (=> d!1500971 (= res!1994881 (forall!11546 (Cons!52771 lt!1882198 lt!1882209) lambda!214227))))

(assert (=> d!1500971 (= lt!1882530 e!2941908)))

(assert (=> d!1500971 (= c!805596 (is-Nil!52771 (Cons!52771 lt!1882198 lt!1882209)))))

(assert (=> d!1500971 (noDuplicateKeys!1993 (Cons!52771 lt!1882198 lt!1882209))))

(assert (=> d!1500971 (= (addToMapMapFromBucket!1423 (Cons!52771 lt!1882198 lt!1882209) lt!1882184) lt!1882530)))

(declare-fun bm!329764 () Bool)

(assert (=> bm!329764 (= call!329767 (lemmaContainsAllItsOwnKeys!781 lt!1882184))))

(declare-fun b!4717050 () Bool)

(assert (=> b!4717050 (= e!2941906 (invariantList!1493 (toList!5875 lt!1882530)))))

(assert (= (and d!1500971 c!805596) b!4717048))

(assert (= (and d!1500971 (not c!805596)) b!4717049))

(assert (= (and b!4717049 res!1994882) b!4717046))

(assert (= (or b!4717048 b!4717049) bm!329764))

(assert (= (or b!4717048 b!4717049) bm!329763))

(assert (= (or b!4717048 b!4717049) bm!329762))

(assert (= (and d!1500971 res!1994881) b!4717047))

(assert (= (and b!4717047 res!1994883) b!4717050))

(declare-fun m!5647565 () Bool)

(assert (=> bm!329763 m!5647565))

(declare-fun m!5647567 () Bool)

(assert (=> b!4717050 m!5647567))

(declare-fun m!5647569 () Bool)

(assert (=> b!4717046 m!5647569))

(declare-fun m!5647571 () Bool)

(assert (=> bm!329762 m!5647571))

(assert (=> b!4717049 m!5647569))

(declare-fun m!5647573 () Bool)

(assert (=> b!4717049 m!5647573))

(declare-fun m!5647575 () Bool)

(assert (=> b!4717049 m!5647575))

(declare-fun m!5647577 () Bool)

(assert (=> b!4717049 m!5647577))

(declare-fun m!5647579 () Bool)

(assert (=> b!4717049 m!5647579))

(declare-fun m!5647581 () Bool)

(assert (=> b!4717049 m!5647581))

(declare-fun m!5647583 () Bool)

(assert (=> b!4717049 m!5647583))

(declare-fun m!5647585 () Bool)

(assert (=> b!4717049 m!5647585))

(assert (=> b!4717049 m!5647569))

(declare-fun m!5647587 () Bool)

(assert (=> b!4717049 m!5647587))

(declare-fun m!5647589 () Bool)

(assert (=> b!4717049 m!5647589))

(assert (=> b!4717049 m!5647587))

(assert (=> b!4717049 m!5647573))

(assert (=> bm!329764 m!5647387))

(declare-fun m!5647591 () Bool)

(assert (=> b!4717047 m!5647591))

(declare-fun m!5647593 () Bool)

(assert (=> d!1500971 m!5647593))

(declare-fun m!5647595 () Bool)

(assert (=> d!1500971 m!5647595))

(assert (=> b!4716815 d!1500971))

(declare-fun d!1500973 () Bool)

(assert (=> d!1500973 (eq!1120 (addToMapMapFromBucket!1423 (Cons!52771 lt!1882198 lt!1882209) lt!1882184) (+!2253 (addToMapMapFromBucket!1423 lt!1882209 lt!1882184) lt!1882198))))

(declare-fun lt!1882553 () Unit!128867)

(declare-fun choose!33236 (tuple2!54366 List!52895 ListMap!5239) Unit!128867)

(assert (=> d!1500973 (= lt!1882553 (choose!33236 lt!1882198 lt!1882209 lt!1882184))))

(assert (=> d!1500973 (noDuplicateKeys!1993 lt!1882209)))

(assert (=> d!1500973 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!369 lt!1882198 lt!1882209 lt!1882184) lt!1882553)))

(declare-fun bs!1105078 () Bool)

(assert (= bs!1105078 d!1500973))

(assert (=> bs!1105078 m!5647035))

(assert (=> bs!1105078 m!5647031))

(assert (=> bs!1105078 m!5647029))

(assert (=> bs!1105078 m!5647031))

(assert (=> bs!1105078 m!5647033))

(assert (=> bs!1105078 m!5647029))

(declare-fun m!5647597 () Bool)

(assert (=> bs!1105078 m!5647597))

(declare-fun m!5647599 () Bool)

(assert (=> bs!1105078 m!5647599))

(assert (=> bs!1105078 m!5647035))

(assert (=> b!4716815 d!1500973))

(declare-fun bs!1105079 () Bool)

(declare-fun b!4717053 () Bool)

(assert (= bs!1105079 (and b!4717053 b!4717049)))

(declare-fun lambda!214228 () Int)

(assert (=> bs!1105079 (= (= lt!1882184 lt!1882546) (= lambda!214228 lambda!214226))))

(assert (=> bs!1105079 (= lambda!214228 lambda!214225)))

(declare-fun bs!1105080 () Bool)

(assert (= bs!1105080 (and b!4717053 b!4717040)))

(assert (=> bs!1105080 (= lambda!214228 lambda!214221)))

(declare-fun bs!1105081 () Bool)

(assert (= bs!1105081 (and b!4717053 d!1500915)))

(assert (=> bs!1105081 (= (= lt!1882184 lt!1882398) (= lambda!214228 lambda!214205))))

(assert (=> bs!1105080 (= (= lt!1882184 lt!1882517) (= lambda!214228 lambda!214222))))

(declare-fun bs!1105082 () Bool)

(assert (= bs!1105082 (and b!4717053 d!1500971)))

(assert (=> bs!1105082 (= (= lt!1882184 lt!1882530) (= lambda!214228 lambda!214227))))

(declare-fun bs!1105083 () Bool)

(assert (= bs!1105083 (and b!4717053 d!1500961)))

(assert (=> bs!1105083 (= (= lt!1882184 lt!1882501) (= lambda!214228 lambda!214223))))

(declare-fun bs!1105084 () Bool)

(assert (= bs!1105084 (and b!4717053 b!4717048)))

(assert (=> bs!1105084 (= lambda!214228 lambda!214224)))

(declare-fun bs!1105085 () Bool)

(assert (= bs!1105085 (and b!4717053 b!4716935)))

(assert (=> bs!1105085 (= (= lt!1882184 lt!1882414) (= lambda!214228 lambda!214204))))

(declare-fun bs!1105086 () Bool)

(assert (= bs!1105086 (and b!4717053 b!4717039)))

(assert (=> bs!1105086 (= lambda!214228 lambda!214220)))

(declare-fun bs!1105087 () Bool)

(assert (= bs!1105087 (and b!4717053 b!4716934)))

(assert (=> bs!1105087 (= lambda!214228 lambda!214202)))

(assert (=> bs!1105085 (= lambda!214228 lambda!214203)))

(assert (=> b!4717053 true))

(declare-fun bs!1105088 () Bool)

(declare-fun b!4717054 () Bool)

(assert (= bs!1105088 (and b!4717054 b!4717049)))

(declare-fun lambda!214229 () Int)

(assert (=> bs!1105088 (= (= lt!1882184 lt!1882546) (= lambda!214229 lambda!214226))))

(assert (=> bs!1105088 (= lambda!214229 lambda!214225)))

(declare-fun bs!1105089 () Bool)

(assert (= bs!1105089 (and b!4717054 b!4717040)))

(assert (=> bs!1105089 (= lambda!214229 lambda!214221)))

(declare-fun bs!1105090 () Bool)

(assert (= bs!1105090 (and b!4717054 d!1500915)))

(assert (=> bs!1105090 (= (= lt!1882184 lt!1882398) (= lambda!214229 lambda!214205))))

(declare-fun bs!1105091 () Bool)

(assert (= bs!1105091 (and b!4717054 d!1500971)))

(assert (=> bs!1105091 (= (= lt!1882184 lt!1882530) (= lambda!214229 lambda!214227))))

(declare-fun bs!1105092 () Bool)

(assert (= bs!1105092 (and b!4717054 d!1500961)))

(assert (=> bs!1105092 (= (= lt!1882184 lt!1882501) (= lambda!214229 lambda!214223))))

(declare-fun bs!1105093 () Bool)

(assert (= bs!1105093 (and b!4717054 b!4717048)))

(assert (=> bs!1105093 (= lambda!214229 lambda!214224)))

(declare-fun bs!1105094 () Bool)

(assert (= bs!1105094 (and b!4717054 b!4716935)))

(assert (=> bs!1105094 (= (= lt!1882184 lt!1882414) (= lambda!214229 lambda!214204))))

(declare-fun bs!1105095 () Bool)

(assert (= bs!1105095 (and b!4717054 b!4717039)))

(assert (=> bs!1105095 (= lambda!214229 lambda!214220)))

(assert (=> bs!1105089 (= (= lt!1882184 lt!1882517) (= lambda!214229 lambda!214222))))

(declare-fun bs!1105096 () Bool)

(assert (= bs!1105096 (and b!4717054 b!4717053)))

(assert (=> bs!1105096 (= lambda!214229 lambda!214228)))

(declare-fun bs!1105097 () Bool)

(assert (= bs!1105097 (and b!4717054 b!4716934)))

(assert (=> bs!1105097 (= lambda!214229 lambda!214202)))

(assert (=> bs!1105094 (= lambda!214229 lambda!214203)))

(assert (=> b!4717054 true))

(declare-fun lt!1882570 () ListMap!5239)

(declare-fun lambda!214230 () Int)

(assert (=> bs!1105088 (= (= lt!1882570 lt!1882546) (= lambda!214230 lambda!214226))))

(assert (=> bs!1105088 (= (= lt!1882570 lt!1882184) (= lambda!214230 lambda!214225))))

(assert (=> bs!1105089 (= (= lt!1882570 lt!1882184) (= lambda!214230 lambda!214221))))

(assert (=> bs!1105090 (= (= lt!1882570 lt!1882398) (= lambda!214230 lambda!214205))))

(assert (=> bs!1105091 (= (= lt!1882570 lt!1882530) (= lambda!214230 lambda!214227))))

(assert (=> bs!1105092 (= (= lt!1882570 lt!1882501) (= lambda!214230 lambda!214223))))

(assert (=> b!4717054 (= (= lt!1882570 lt!1882184) (= lambda!214230 lambda!214229))))

(assert (=> bs!1105093 (= (= lt!1882570 lt!1882184) (= lambda!214230 lambda!214224))))

(assert (=> bs!1105094 (= (= lt!1882570 lt!1882414) (= lambda!214230 lambda!214204))))

(assert (=> bs!1105095 (= (= lt!1882570 lt!1882184) (= lambda!214230 lambda!214220))))

(assert (=> bs!1105089 (= (= lt!1882570 lt!1882517) (= lambda!214230 lambda!214222))))

(assert (=> bs!1105096 (= (= lt!1882570 lt!1882184) (= lambda!214230 lambda!214228))))

(assert (=> bs!1105097 (= (= lt!1882570 lt!1882184) (= lambda!214230 lambda!214202))))

(assert (=> bs!1105094 (= (= lt!1882570 lt!1882184) (= lambda!214230 lambda!214203))))

(assert (=> b!4717054 true))

(declare-fun bs!1105098 () Bool)

(declare-fun d!1500975 () Bool)

(assert (= bs!1105098 (and d!1500975 b!4717049)))

(declare-fun lambda!214231 () Int)

(declare-fun lt!1882554 () ListMap!5239)

(assert (=> bs!1105098 (= (= lt!1882554 lt!1882546) (= lambda!214231 lambda!214226))))

(assert (=> bs!1105098 (= (= lt!1882554 lt!1882184) (= lambda!214231 lambda!214225))))

(declare-fun bs!1105099 () Bool)

(assert (= bs!1105099 (and d!1500975 b!4717040)))

(assert (=> bs!1105099 (= (= lt!1882554 lt!1882184) (= lambda!214231 lambda!214221))))

(declare-fun bs!1105100 () Bool)

(assert (= bs!1105100 (and d!1500975 d!1500915)))

(assert (=> bs!1105100 (= (= lt!1882554 lt!1882398) (= lambda!214231 lambda!214205))))

(declare-fun bs!1105101 () Bool)

(assert (= bs!1105101 (and d!1500975 d!1500971)))

(assert (=> bs!1105101 (= (= lt!1882554 lt!1882530) (= lambda!214231 lambda!214227))))

(declare-fun bs!1105102 () Bool)

(assert (= bs!1105102 (and d!1500975 d!1500961)))

(assert (=> bs!1105102 (= (= lt!1882554 lt!1882501) (= lambda!214231 lambda!214223))))

(declare-fun bs!1105103 () Bool)

(assert (= bs!1105103 (and d!1500975 b!4717054)))

(assert (=> bs!1105103 (= (= lt!1882554 lt!1882184) (= lambda!214231 lambda!214229))))

(assert (=> bs!1105103 (= (= lt!1882554 lt!1882570) (= lambda!214231 lambda!214230))))

(declare-fun bs!1105104 () Bool)

(assert (= bs!1105104 (and d!1500975 b!4717048)))

(assert (=> bs!1105104 (= (= lt!1882554 lt!1882184) (= lambda!214231 lambda!214224))))

(declare-fun bs!1105105 () Bool)

(assert (= bs!1105105 (and d!1500975 b!4716935)))

(assert (=> bs!1105105 (= (= lt!1882554 lt!1882414) (= lambda!214231 lambda!214204))))

(declare-fun bs!1105106 () Bool)

(assert (= bs!1105106 (and d!1500975 b!4717039)))

(assert (=> bs!1105106 (= (= lt!1882554 lt!1882184) (= lambda!214231 lambda!214220))))

(assert (=> bs!1105099 (= (= lt!1882554 lt!1882517) (= lambda!214231 lambda!214222))))

(declare-fun bs!1105107 () Bool)

(assert (= bs!1105107 (and d!1500975 b!4717053)))

(assert (=> bs!1105107 (= (= lt!1882554 lt!1882184) (= lambda!214231 lambda!214228))))

(declare-fun bs!1105108 () Bool)

(assert (= bs!1105108 (and d!1500975 b!4716934)))

(assert (=> bs!1105108 (= (= lt!1882554 lt!1882184) (= lambda!214231 lambda!214202))))

(assert (=> bs!1105105 (= (= lt!1882554 lt!1882184) (= lambda!214231 lambda!214203))))

(assert (=> d!1500975 true))

(declare-fun call!329772 () Bool)

(declare-fun c!805597 () Bool)

(declare-fun bm!329765 () Bool)

(assert (=> bm!329765 (= call!329772 (forall!11546 (toList!5875 lt!1882184) (ite c!805597 lambda!214228 lambda!214229)))))

(declare-fun b!4717051 () Bool)

(declare-fun e!2941910 () Bool)

(assert (=> b!4717051 (= e!2941910 (forall!11546 (toList!5875 lt!1882184) lambda!214230))))

(declare-fun b!4717052 () Bool)

(declare-fun res!1994886 () Bool)

(declare-fun e!2941909 () Bool)

(assert (=> b!4717052 (=> (not res!1994886) (not e!2941909))))

(assert (=> b!4717052 (= res!1994886 (forall!11546 (toList!5875 lt!1882184) lambda!214231))))

(declare-fun e!2941911 () ListMap!5239)

(assert (=> b!4717053 (= e!2941911 lt!1882184)))

(declare-fun lt!1882555 () Unit!128867)

(declare-fun call!329770 () Unit!128867)

(assert (=> b!4717053 (= lt!1882555 call!329770)))

(declare-fun call!329771 () Bool)

(assert (=> b!4717053 call!329771))

(declare-fun lt!1882572 () Unit!128867)

(assert (=> b!4717053 (= lt!1882572 lt!1882555)))

(assert (=> b!4717053 call!329772))

(declare-fun lt!1882567 () Unit!128867)

(declare-fun Unit!128906 () Unit!128867)

(assert (=> b!4717053 (= lt!1882567 Unit!128906)))

(assert (=> b!4717054 (= e!2941911 lt!1882570)))

(declare-fun lt!1882564 () ListMap!5239)

(assert (=> b!4717054 (= lt!1882564 (+!2253 lt!1882184 (h!59100 lt!1882209)))))

(assert (=> b!4717054 (= lt!1882570 (addToMapMapFromBucket!1423 (t!360147 lt!1882209) (+!2253 lt!1882184 (h!59100 lt!1882209))))))

(declare-fun lt!1882557 () Unit!128867)

(assert (=> b!4717054 (= lt!1882557 call!329770)))

(assert (=> b!4717054 call!329772))

(declare-fun lt!1882569 () Unit!128867)

(assert (=> b!4717054 (= lt!1882569 lt!1882557)))

(assert (=> b!4717054 (forall!11546 (toList!5875 lt!1882564) lambda!214230)))

(declare-fun lt!1882562 () Unit!128867)

(declare-fun Unit!128907 () Unit!128867)

(assert (=> b!4717054 (= lt!1882562 Unit!128907)))

(assert (=> b!4717054 (forall!11546 (t!360147 lt!1882209) lambda!214230)))

(declare-fun lt!1882568 () Unit!128867)

(declare-fun Unit!128908 () Unit!128867)

(assert (=> b!4717054 (= lt!1882568 Unit!128908)))

(declare-fun lt!1882560 () Unit!128867)

(declare-fun Unit!128909 () Unit!128867)

(assert (=> b!4717054 (= lt!1882560 Unit!128909)))

(declare-fun lt!1882566 () Unit!128867)

(assert (=> b!4717054 (= lt!1882566 (forallContained!3615 (toList!5875 lt!1882564) lambda!214230 (h!59100 lt!1882209)))))

(assert (=> b!4717054 (contains!16118 lt!1882564 (_1!30477 (h!59100 lt!1882209)))))

(declare-fun lt!1882559 () Unit!128867)

(declare-fun Unit!128910 () Unit!128867)

(assert (=> b!4717054 (= lt!1882559 Unit!128910)))

(assert (=> b!4717054 (contains!16118 lt!1882570 (_1!30477 (h!59100 lt!1882209)))))

(declare-fun lt!1882563 () Unit!128867)

(declare-fun Unit!128911 () Unit!128867)

(assert (=> b!4717054 (= lt!1882563 Unit!128911)))

(assert (=> b!4717054 call!329771))

(declare-fun lt!1882565 () Unit!128867)

(declare-fun Unit!128912 () Unit!128867)

(assert (=> b!4717054 (= lt!1882565 Unit!128912)))

(assert (=> b!4717054 (forall!11546 (toList!5875 lt!1882564) lambda!214230)))

(declare-fun lt!1882574 () Unit!128867)

(declare-fun Unit!128913 () Unit!128867)

(assert (=> b!4717054 (= lt!1882574 Unit!128913)))

(declare-fun lt!1882561 () Unit!128867)

(declare-fun Unit!128914 () Unit!128867)

(assert (=> b!4717054 (= lt!1882561 Unit!128914)))

(declare-fun lt!1882558 () Unit!128867)

(assert (=> b!4717054 (= lt!1882558 (addForallContainsKeyThenBeforeAdding!780 lt!1882184 lt!1882570 (_1!30477 (h!59100 lt!1882209)) (_2!30477 (h!59100 lt!1882209))))))

(assert (=> b!4717054 (forall!11546 (toList!5875 lt!1882184) lambda!214230)))

(declare-fun lt!1882556 () Unit!128867)

(assert (=> b!4717054 (= lt!1882556 lt!1882558)))

(assert (=> b!4717054 (forall!11546 (toList!5875 lt!1882184) lambda!214230)))

(declare-fun lt!1882571 () Unit!128867)

(declare-fun Unit!128916 () Unit!128867)

(assert (=> b!4717054 (= lt!1882571 Unit!128916)))

(declare-fun res!1994885 () Bool)

(assert (=> b!4717054 (= res!1994885 (forall!11546 lt!1882209 lambda!214230))))

(assert (=> b!4717054 (=> (not res!1994885) (not e!2941910))))

(assert (=> b!4717054 e!2941910))

(declare-fun lt!1882573 () Unit!128867)

(declare-fun Unit!128917 () Unit!128867)

(assert (=> b!4717054 (= lt!1882573 Unit!128917)))

(declare-fun bm!329766 () Bool)

(assert (=> bm!329766 (= call!329771 (forall!11546 (ite c!805597 (toList!5875 lt!1882184) lt!1882209) (ite c!805597 lambda!214228 lambda!214230)))))

(assert (=> d!1500975 e!2941909))

(declare-fun res!1994884 () Bool)

(assert (=> d!1500975 (=> (not res!1994884) (not e!2941909))))

(assert (=> d!1500975 (= res!1994884 (forall!11546 lt!1882209 lambda!214231))))

(assert (=> d!1500975 (= lt!1882554 e!2941911)))

(assert (=> d!1500975 (= c!805597 (is-Nil!52771 lt!1882209))))

(assert (=> d!1500975 (noDuplicateKeys!1993 lt!1882209)))

(assert (=> d!1500975 (= (addToMapMapFromBucket!1423 lt!1882209 lt!1882184) lt!1882554)))

(declare-fun bm!329767 () Bool)

(assert (=> bm!329767 (= call!329770 (lemmaContainsAllItsOwnKeys!781 lt!1882184))))

(declare-fun b!4717055 () Bool)

(assert (=> b!4717055 (= e!2941909 (invariantList!1493 (toList!5875 lt!1882554)))))

(assert (= (and d!1500975 c!805597) b!4717053))

(assert (= (and d!1500975 (not c!805597)) b!4717054))

(assert (= (and b!4717054 res!1994885) b!4717051))

(assert (= (or b!4717053 b!4717054) bm!329767))

(assert (= (or b!4717053 b!4717054) bm!329766))

(assert (= (or b!4717053 b!4717054) bm!329765))

(assert (= (and d!1500975 res!1994884) b!4717052))

(assert (= (and b!4717052 res!1994886) b!4717055))

(declare-fun m!5647601 () Bool)

(assert (=> bm!329766 m!5647601))

(declare-fun m!5647603 () Bool)

(assert (=> b!4717055 m!5647603))

(declare-fun m!5647605 () Bool)

(assert (=> b!4717051 m!5647605))

(declare-fun m!5647607 () Bool)

(assert (=> bm!329765 m!5647607))

(assert (=> b!4717054 m!5647605))

(declare-fun m!5647609 () Bool)

(assert (=> b!4717054 m!5647609))

(declare-fun m!5647611 () Bool)

(assert (=> b!4717054 m!5647611))

(declare-fun m!5647613 () Bool)

(assert (=> b!4717054 m!5647613))

(declare-fun m!5647615 () Bool)

(assert (=> b!4717054 m!5647615))

(declare-fun m!5647617 () Bool)

(assert (=> b!4717054 m!5647617))

(declare-fun m!5647619 () Bool)

(assert (=> b!4717054 m!5647619))

(declare-fun m!5647621 () Bool)

(assert (=> b!4717054 m!5647621))

(assert (=> b!4717054 m!5647605))

(declare-fun m!5647623 () Bool)

(assert (=> b!4717054 m!5647623))

(declare-fun m!5647625 () Bool)

(assert (=> b!4717054 m!5647625))

(assert (=> b!4717054 m!5647623))

(assert (=> b!4717054 m!5647609))

(assert (=> bm!329767 m!5647387))

(declare-fun m!5647627 () Bool)

(assert (=> b!4717052 m!5647627))

(declare-fun m!5647629 () Bool)

(assert (=> d!1500975 m!5647629))

(assert (=> d!1500975 m!5647597))

(assert (=> b!4716815 d!1500975))

(declare-fun b!4717080 () Bool)

(declare-fun e!2941933 () Unit!128867)

(declare-fun Unit!128918 () Unit!128867)

(assert (=> b!4717080 (= e!2941933 Unit!128918)))

(declare-fun bm!329776 () Bool)

(declare-fun call!329781 () Bool)

(declare-datatypes ((List!52900 0))(
  ( (Nil!52776) (Cons!52776 (h!59107 K!14133) (t!360154 List!52900)) )
))
(declare-fun e!2941932 () List!52900)

(declare-fun contains!16126 (List!52900 K!14133) Bool)

(assert (=> bm!329776 (= call!329781 (contains!16126 e!2941932 key!4653))))

(declare-fun c!805608 () Bool)

(declare-fun c!805607 () Bool)

(assert (=> bm!329776 (= c!805608 c!805607)))

(declare-fun d!1500977 () Bool)

(declare-fun e!2941931 () Bool)

(assert (=> d!1500977 e!2941931))

(declare-fun res!1994899 () Bool)

(assert (=> d!1500977 (=> res!1994899 e!2941931)))

(declare-fun e!2941930 () Bool)

(assert (=> d!1500977 (= res!1994899 e!2941930)))

(declare-fun res!1994898 () Bool)

(assert (=> d!1500977 (=> (not res!1994898) (not e!2941930))))

(declare-fun lt!1882639 () Bool)

(assert (=> d!1500977 (= res!1994898 (not lt!1882639))))

(declare-fun lt!1882636 () Bool)

(assert (=> d!1500977 (= lt!1882639 lt!1882636)))

(declare-fun lt!1882634 () Unit!128867)

(declare-fun e!2941934 () Unit!128867)

(assert (=> d!1500977 (= lt!1882634 e!2941934)))

(assert (=> d!1500977 (= c!805607 lt!1882636)))

(declare-fun containsKey!3334 (List!52895 K!14133) Bool)

(assert (=> d!1500977 (= lt!1882636 (containsKey!3334 (toList!5875 lt!1882208) key!4653))))

(assert (=> d!1500977 (= (contains!16118 lt!1882208 key!4653) lt!1882639)))

(declare-fun b!4717081 () Bool)

(declare-fun keys!18937 (ListMap!5239) List!52900)

(assert (=> b!4717081 (= e!2941932 (keys!18937 lt!1882208))))

(declare-fun b!4717082 () Bool)

(declare-fun getKeysList!934 (List!52895) List!52900)

(assert (=> b!4717082 (= e!2941932 (getKeysList!934 (toList!5875 lt!1882208)))))

(declare-fun b!4717083 () Bool)

(declare-fun e!2941935 () Bool)

(assert (=> b!4717083 (= e!2941931 e!2941935)))

(declare-fun res!1994897 () Bool)

(assert (=> b!4717083 (=> (not res!1994897) (not e!2941935))))

(declare-fun isDefined!9591 (Option!12335) Bool)

(assert (=> b!4717083 (= res!1994897 (isDefined!9591 (getValueByKey!1933 (toList!5875 lt!1882208) key!4653)))))

(declare-fun b!4717084 () Bool)

(declare-fun lt!1882640 () Unit!128867)

(assert (=> b!4717084 (= e!2941934 lt!1882640)))

(declare-fun lt!1882637 () Unit!128867)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1826 (List!52895 K!14133) Unit!128867)

(assert (=> b!4717084 (= lt!1882637 (lemmaContainsKeyImpliesGetValueByKeyDefined!1826 (toList!5875 lt!1882208) key!4653))))

(assert (=> b!4717084 (isDefined!9591 (getValueByKey!1933 (toList!5875 lt!1882208) key!4653))))

(declare-fun lt!1882635 () Unit!128867)

(assert (=> b!4717084 (= lt!1882635 lt!1882637)))

(declare-fun lemmaInListThenGetKeysListContains!929 (List!52895 K!14133) Unit!128867)

(assert (=> b!4717084 (= lt!1882640 (lemmaInListThenGetKeysListContains!929 (toList!5875 lt!1882208) key!4653))))

(assert (=> b!4717084 call!329781))

(declare-fun b!4717085 () Bool)

(assert (=> b!4717085 (= e!2941934 e!2941933)))

(declare-fun c!805606 () Bool)

(assert (=> b!4717085 (= c!805606 call!329781)))

(declare-fun b!4717086 () Bool)

(assert (=> b!4717086 (= e!2941935 (contains!16126 (keys!18937 lt!1882208) key!4653))))

(declare-fun b!4717087 () Bool)

(assert (=> b!4717087 false))

(declare-fun lt!1882638 () Unit!128867)

(declare-fun lt!1882633 () Unit!128867)

(assert (=> b!4717087 (= lt!1882638 lt!1882633)))

(assert (=> b!4717087 (containsKey!3334 (toList!5875 lt!1882208) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!933 (List!52895 K!14133) Unit!128867)

(assert (=> b!4717087 (= lt!1882633 (lemmaInGetKeysListThenContainsKey!933 (toList!5875 lt!1882208) key!4653))))

(declare-fun Unit!128920 () Unit!128867)

(assert (=> b!4717087 (= e!2941933 Unit!128920)))

(declare-fun b!4717088 () Bool)

(assert (=> b!4717088 (= e!2941930 (not (contains!16126 (keys!18937 lt!1882208) key!4653)))))

(assert (= (and d!1500977 c!805607) b!4717084))

(assert (= (and d!1500977 (not c!805607)) b!4717085))

(assert (= (and b!4717085 c!805606) b!4717087))

(assert (= (and b!4717085 (not c!805606)) b!4717080))

(assert (= (or b!4717084 b!4717085) bm!329776))

(assert (= (and bm!329776 c!805608) b!4717082))

(assert (= (and bm!329776 (not c!805608)) b!4717081))

(assert (= (and d!1500977 res!1994898) b!4717088))

(assert (= (and d!1500977 (not res!1994899)) b!4717083))

(assert (= (and b!4717083 res!1994897) b!4717086))

(declare-fun m!5647631 () Bool)

(assert (=> b!4717087 m!5647631))

(declare-fun m!5647633 () Bool)

(assert (=> b!4717087 m!5647633))

(declare-fun m!5647635 () Bool)

(assert (=> b!4717081 m!5647635))

(assert (=> b!4717088 m!5647635))

(assert (=> b!4717088 m!5647635))

(declare-fun m!5647637 () Bool)

(assert (=> b!4717088 m!5647637))

(declare-fun m!5647639 () Bool)

(assert (=> bm!329776 m!5647639))

(declare-fun m!5647641 () Bool)

(assert (=> b!4717083 m!5647641))

(assert (=> b!4717083 m!5647641))

(declare-fun m!5647643 () Bool)

(assert (=> b!4717083 m!5647643))

(assert (=> b!4717086 m!5647635))

(assert (=> b!4717086 m!5647635))

(assert (=> b!4717086 m!5647637))

(assert (=> d!1500977 m!5647631))

(declare-fun m!5647645 () Bool)

(assert (=> b!4717084 m!5647645))

(assert (=> b!4717084 m!5647641))

(assert (=> b!4717084 m!5647641))

(assert (=> b!4717084 m!5647643))

(declare-fun m!5647647 () Bool)

(assert (=> b!4717084 m!5647647))

(declare-fun m!5647649 () Bool)

(assert (=> b!4717082 m!5647649))

(assert (=> b!4716815 d!1500977))

(declare-fun d!1500979 () Bool)

(declare-fun e!2941936 () Bool)

(assert (=> d!1500979 e!2941936))

(declare-fun res!1994902 () Bool)

(assert (=> d!1500979 (=> (not res!1994902) (not e!2941936))))

(declare-fun lt!1882642 () ListMap!5239)

(assert (=> d!1500979 (= res!1994902 (contains!16118 lt!1882642 (_1!30477 lt!1882198)))))

(declare-fun lt!1882643 () List!52895)

(assert (=> d!1500979 (= lt!1882642 (ListMap!5240 lt!1882643))))

(declare-fun lt!1882641 () Unit!128867)

(declare-fun lt!1882644 () Unit!128867)

(assert (=> d!1500979 (= lt!1882641 lt!1882644)))

(assert (=> d!1500979 (= (getValueByKey!1933 lt!1882643 (_1!30477 lt!1882198)) (Some!12334 (_2!30477 lt!1882198)))))

(assert (=> d!1500979 (= lt!1882644 (lemmaContainsTupThenGetReturnValue!1075 lt!1882643 (_1!30477 lt!1882198) (_2!30477 lt!1882198)))))

(assert (=> d!1500979 (= lt!1882643 (insertNoDuplicatedKeys!583 (toList!5875 (addToMapMapFromBucket!1423 lt!1882209 lt!1882184)) (_1!30477 lt!1882198) (_2!30477 lt!1882198)))))

(assert (=> d!1500979 (= (+!2253 (addToMapMapFromBucket!1423 lt!1882209 lt!1882184) lt!1882198) lt!1882642)))

(declare-fun b!4717093 () Bool)

(declare-fun res!1994903 () Bool)

(assert (=> b!4717093 (=> (not res!1994903) (not e!2941936))))

(assert (=> b!4717093 (= res!1994903 (= (getValueByKey!1933 (toList!5875 lt!1882642) (_1!30477 lt!1882198)) (Some!12334 (_2!30477 lt!1882198))))))

(declare-fun b!4717094 () Bool)

(assert (=> b!4717094 (= e!2941936 (contains!16124 (toList!5875 lt!1882642) lt!1882198))))

(assert (= (and d!1500979 res!1994902) b!4717093))

(assert (= (and b!4717093 res!1994903) b!4717094))

(declare-fun m!5647651 () Bool)

(assert (=> d!1500979 m!5647651))

(declare-fun m!5647653 () Bool)

(assert (=> d!1500979 m!5647653))

(declare-fun m!5647655 () Bool)

(assert (=> d!1500979 m!5647655))

(declare-fun m!5647657 () Bool)

(assert (=> d!1500979 m!5647657))

(declare-fun m!5647659 () Bool)

(assert (=> b!4717093 m!5647659))

(declare-fun m!5647661 () Bool)

(assert (=> b!4717094 m!5647661))

(assert (=> b!4716815 d!1500979))

(declare-fun bs!1105109 () Bool)

(declare-fun d!1500981 () Bool)

(assert (= bs!1105109 (and d!1500981 d!1500959)))

(declare-fun lambda!214260 () Int)

(assert (=> bs!1105109 (= lambda!214260 lambda!214219)))

(declare-fun bs!1105110 () Bool)

(assert (= bs!1105110 (and d!1500981 d!1500927)))

(assert (=> bs!1105110 (= lambda!214260 lambda!214208)))

(declare-fun bs!1105111 () Bool)

(assert (= bs!1105111 (and d!1500981 d!1500941)))

(assert (=> bs!1105111 (= lambda!214260 lambda!214211)))

(declare-fun bs!1105112 () Bool)

(assert (= bs!1105112 (and d!1500981 d!1500945)))

(assert (=> bs!1105112 (= lambda!214260 lambda!214218)))

(declare-fun bs!1105113 () Bool)

(assert (= bs!1105113 (and d!1500981 start!479766)))

(assert (=> bs!1105113 (= lambda!214260 lambda!214164)))

(declare-fun lt!1882645 () ListMap!5239)

(assert (=> d!1500981 (invariantList!1493 (toList!5875 lt!1882645))))

(declare-fun e!2941937 () ListMap!5239)

(assert (=> d!1500981 (= lt!1882645 e!2941937)))

(declare-fun c!805609 () Bool)

(assert (=> d!1500981 (= c!805609 (is-Cons!52772 (Cons!52772 lt!1882194 (t!360148 (toList!5876 lm!2023)))))))

(assert (=> d!1500981 (forall!11544 (Cons!52772 lt!1882194 (t!360148 (toList!5876 lm!2023))) lambda!214260)))

(assert (=> d!1500981 (= (extractMap!2019 (Cons!52772 lt!1882194 (t!360148 (toList!5876 lm!2023)))) lt!1882645)))

(declare-fun b!4717095 () Bool)

(assert (=> b!4717095 (= e!2941937 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (Cons!52772 lt!1882194 (t!360148 (toList!5876 lm!2023))))) (extractMap!2019 (t!360148 (Cons!52772 lt!1882194 (t!360148 (toList!5876 lm!2023)))))))))

(declare-fun b!4717096 () Bool)

(assert (=> b!4717096 (= e!2941937 (ListMap!5240 Nil!52771))))

(assert (= (and d!1500981 c!805609) b!4717095))

(assert (= (and d!1500981 (not c!805609)) b!4717096))

(declare-fun m!5647663 () Bool)

(assert (=> d!1500981 m!5647663))

(declare-fun m!5647665 () Bool)

(assert (=> d!1500981 m!5647665))

(declare-fun m!5647667 () Bool)

(assert (=> b!4717095 m!5647667))

(assert (=> b!4717095 m!5647667))

(declare-fun m!5647669 () Bool)

(assert (=> b!4717095 m!5647669))

(assert (=> b!4716815 d!1500981))

(declare-fun d!1500983 () Bool)

(assert (=> d!1500983 (= (head!10215 newBucket!218) (h!59100 newBucket!218))))

(assert (=> b!4716815 d!1500983))

(declare-fun d!1500985 () Bool)

(assert (=> d!1500985 (eq!1120 (addToMapMapFromBucket!1423 (Cons!52771 lt!1882210 lt!1882182) lt!1882184) (+!2253 (addToMapMapFromBucket!1423 lt!1882182 lt!1882184) lt!1882210))))

(declare-fun lt!1882646 () Unit!128867)

(assert (=> d!1500985 (= lt!1882646 (choose!33236 lt!1882210 lt!1882182 lt!1882184))))

(assert (=> d!1500985 (noDuplicateKeys!1993 lt!1882182)))

(assert (=> d!1500985 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!369 lt!1882210 lt!1882182 lt!1882184) lt!1882646)))

(declare-fun bs!1105114 () Bool)

(assert (= bs!1105114 d!1500985))

(assert (=> bs!1105114 m!5647021))

(assert (=> bs!1105114 m!5647007))

(assert (=> bs!1105114 m!5647005))

(assert (=> bs!1105114 m!5647007))

(assert (=> bs!1105114 m!5647009))

(assert (=> bs!1105114 m!5647005))

(declare-fun m!5647671 () Bool)

(assert (=> bs!1105114 m!5647671))

(declare-fun m!5647673 () Bool)

(assert (=> bs!1105114 m!5647673))

(assert (=> bs!1105114 m!5647021))

(assert (=> b!4716815 d!1500985))

(declare-fun bs!1105127 () Bool)

(declare-fun d!1500987 () Bool)

(assert (= bs!1105127 (and d!1500987 d!1500959)))

(declare-fun lambda!214271 () Int)

(assert (=> bs!1105127 (= lambda!214271 lambda!214219)))

(declare-fun bs!1105130 () Bool)

(assert (= bs!1105130 (and d!1500987 d!1500981)))

(assert (=> bs!1105130 (= lambda!214271 lambda!214260)))

(declare-fun bs!1105131 () Bool)

(assert (= bs!1105131 (and d!1500987 d!1500927)))

(assert (=> bs!1105131 (= lambda!214271 lambda!214208)))

(declare-fun bs!1105133 () Bool)

(assert (= bs!1105133 (and d!1500987 d!1500941)))

(assert (=> bs!1105133 (= lambda!214271 lambda!214211)))

(declare-fun bs!1105134 () Bool)

(assert (= bs!1105134 (and d!1500987 d!1500945)))

(assert (=> bs!1105134 (= lambda!214271 lambda!214218)))

(declare-fun bs!1105135 () Bool)

(assert (= bs!1105135 (and d!1500987 start!479766)))

(assert (=> bs!1105135 (= lambda!214271 lambda!214164)))

(assert (=> d!1500987 (contains!16118 (extractMap!2019 (toList!5876 lt!1882205)) key!4653)))

(declare-fun lt!1882691 () Unit!128867)

(declare-fun choose!33238 (ListLongMap!4405 K!14133 Hashable!6362) Unit!128867)

(assert (=> d!1500987 (= lt!1882691 (choose!33238 lt!1882205 key!4653 hashF!1323))))

(assert (=> d!1500987 (forall!11544 (toList!5876 lt!1882205) lambda!214271)))

(assert (=> d!1500987 (= (lemmaListContainsThenExtractedMapContains!539 lt!1882205 key!4653 hashF!1323) lt!1882691)))

(declare-fun bs!1105136 () Bool)

(assert (= bs!1105136 d!1500987))

(declare-fun m!5647711 () Bool)

(assert (=> bs!1105136 m!5647711))

(assert (=> bs!1105136 m!5647711))

(declare-fun m!5647713 () Bool)

(assert (=> bs!1105136 m!5647713))

(declare-fun m!5647715 () Bool)

(assert (=> bs!1105136 m!5647715))

(declare-fun m!5647717 () Bool)

(assert (=> bs!1105136 m!5647717))

(assert (=> b!4716815 d!1500987))

(declare-fun d!1500991 () Bool)

(assert (=> d!1500991 (= (eq!1120 (addToMapMapFromBucket!1423 (Cons!52771 lt!1882210 lt!1882182) lt!1882184) (+!2253 (addToMapMapFromBucket!1423 lt!1882182 lt!1882184) lt!1882210)) (= (content!9370 (toList!5875 (addToMapMapFromBucket!1423 (Cons!52771 lt!1882210 lt!1882182) lt!1882184))) (content!9370 (toList!5875 (+!2253 (addToMapMapFromBucket!1423 lt!1882182 lt!1882184) lt!1882210)))))))

(declare-fun bs!1105137 () Bool)

(assert (= bs!1105137 d!1500991))

(declare-fun m!5647719 () Bool)

(assert (=> bs!1105137 m!5647719))

(declare-fun m!5647721 () Bool)

(assert (=> bs!1105137 m!5647721))

(assert (=> b!4716815 d!1500991))

(declare-fun bs!1105138 () Bool)

(declare-fun d!1500993 () Bool)

(assert (= bs!1105138 (and d!1500993 d!1500987)))

(declare-fun lambda!214272 () Int)

(assert (=> bs!1105138 (= lambda!214272 lambda!214271)))

(declare-fun bs!1105139 () Bool)

(assert (= bs!1105139 (and d!1500993 d!1500959)))

(assert (=> bs!1105139 (= lambda!214272 lambda!214219)))

(declare-fun bs!1105140 () Bool)

(assert (= bs!1105140 (and d!1500993 d!1500981)))

(assert (=> bs!1105140 (= lambda!214272 lambda!214260)))

(declare-fun bs!1105141 () Bool)

(assert (= bs!1105141 (and d!1500993 d!1500927)))

(assert (=> bs!1105141 (= lambda!214272 lambda!214208)))

(declare-fun bs!1105142 () Bool)

(assert (= bs!1105142 (and d!1500993 d!1500941)))

(assert (=> bs!1105142 (= lambda!214272 lambda!214211)))

(declare-fun bs!1105143 () Bool)

(assert (= bs!1105143 (and d!1500993 d!1500945)))

(assert (=> bs!1105143 (= lambda!214272 lambda!214218)))

(declare-fun bs!1105144 () Bool)

(assert (= bs!1105144 (and d!1500993 start!479766)))

(assert (=> bs!1105144 (= lambda!214272 lambda!214164)))

(declare-fun lt!1882692 () ListMap!5239)

(assert (=> d!1500993 (invariantList!1493 (toList!5875 lt!1882692))))

(declare-fun e!2941944 () ListMap!5239)

(assert (=> d!1500993 (= lt!1882692 e!2941944)))

(declare-fun c!805612 () Bool)

(assert (=> d!1500993 (= c!805612 (is-Cons!52772 (Cons!52772 (tuple2!54369 hash!405 lt!1882182) (t!360148 (toList!5876 lm!2023)))))))

(assert (=> d!1500993 (forall!11544 (Cons!52772 (tuple2!54369 hash!405 lt!1882182) (t!360148 (toList!5876 lm!2023))) lambda!214272)))

(assert (=> d!1500993 (= (extractMap!2019 (Cons!52772 (tuple2!54369 hash!405 lt!1882182) (t!360148 (toList!5876 lm!2023)))) lt!1882692)))

(declare-fun b!4717109 () Bool)

(assert (=> b!4717109 (= e!2941944 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (Cons!52772 (tuple2!54369 hash!405 lt!1882182) (t!360148 (toList!5876 lm!2023))))) (extractMap!2019 (t!360148 (Cons!52772 (tuple2!54369 hash!405 lt!1882182) (t!360148 (toList!5876 lm!2023)))))))))

(declare-fun b!4717110 () Bool)

(assert (=> b!4717110 (= e!2941944 (ListMap!5240 Nil!52771))))

(assert (= (and d!1500993 c!805612) b!4717109))

(assert (= (and d!1500993 (not c!805612)) b!4717110))

(declare-fun m!5647757 () Bool)

(assert (=> d!1500993 m!5647757))

(declare-fun m!5647759 () Bool)

(assert (=> d!1500993 m!5647759))

(declare-fun m!5647761 () Bool)

(assert (=> b!4717109 m!5647761))

(assert (=> b!4717109 m!5647761))

(declare-fun m!5647765 () Bool)

(assert (=> b!4717109 m!5647765))

(assert (=> b!4716815 d!1500993))

(declare-fun d!1500997 () Bool)

(assert (=> d!1500997 (= (eq!1120 lt!1882217 (+!2253 lt!1882215 (h!59100 oldBucket!34))) (= (content!9370 (toList!5875 lt!1882217)) (content!9370 (toList!5875 (+!2253 lt!1882215 (h!59100 oldBucket!34))))))))

(declare-fun bs!1105146 () Bool)

(assert (= bs!1105146 d!1500997))

(assert (=> bs!1105146 m!5647317))

(declare-fun m!5647769 () Bool)

(assert (=> bs!1105146 m!5647769))

(assert (=> b!4716815 d!1500997))

(declare-fun bs!1105147 () Bool)

(declare-fun b!4717113 () Bool)

(assert (= bs!1105147 (and b!4717113 b!4717049)))

(declare-fun lambda!214273 () Int)

(assert (=> bs!1105147 (= (= lt!1882184 lt!1882546) (= lambda!214273 lambda!214226))))

(assert (=> bs!1105147 (= lambda!214273 lambda!214225)))

(declare-fun bs!1105148 () Bool)

(assert (= bs!1105148 (and b!4717113 d!1500915)))

(assert (=> bs!1105148 (= (= lt!1882184 lt!1882398) (= lambda!214273 lambda!214205))))

(declare-fun bs!1105149 () Bool)

(assert (= bs!1105149 (and b!4717113 d!1500971)))

(assert (=> bs!1105149 (= (= lt!1882184 lt!1882530) (= lambda!214273 lambda!214227))))

(declare-fun bs!1105150 () Bool)

(assert (= bs!1105150 (and b!4717113 d!1500961)))

(assert (=> bs!1105150 (= (= lt!1882184 lt!1882501) (= lambda!214273 lambda!214223))))

(declare-fun bs!1105151 () Bool)

(assert (= bs!1105151 (and b!4717113 b!4717054)))

(assert (=> bs!1105151 (= lambda!214273 lambda!214229)))

(assert (=> bs!1105151 (= (= lt!1882184 lt!1882570) (= lambda!214273 lambda!214230))))

(declare-fun bs!1105152 () Bool)

(assert (= bs!1105152 (and b!4717113 b!4717048)))

(assert (=> bs!1105152 (= lambda!214273 lambda!214224)))

(declare-fun bs!1105153 () Bool)

(assert (= bs!1105153 (and b!4717113 b!4716935)))

(assert (=> bs!1105153 (= (= lt!1882184 lt!1882414) (= lambda!214273 lambda!214204))))

(declare-fun bs!1105154 () Bool)

(assert (= bs!1105154 (and b!4717113 b!4717039)))

(assert (=> bs!1105154 (= lambda!214273 lambda!214220)))

(declare-fun bs!1105155 () Bool)

(assert (= bs!1105155 (and b!4717113 b!4717040)))

(assert (=> bs!1105155 (= lambda!214273 lambda!214221)))

(declare-fun bs!1105156 () Bool)

(assert (= bs!1105156 (and b!4717113 d!1500975)))

(assert (=> bs!1105156 (= (= lt!1882184 lt!1882554) (= lambda!214273 lambda!214231))))

(assert (=> bs!1105155 (= (= lt!1882184 lt!1882517) (= lambda!214273 lambda!214222))))

(declare-fun bs!1105157 () Bool)

(assert (= bs!1105157 (and b!4717113 b!4717053)))

(assert (=> bs!1105157 (= lambda!214273 lambda!214228)))

(declare-fun bs!1105158 () Bool)

(assert (= bs!1105158 (and b!4717113 b!4716934)))

(assert (=> bs!1105158 (= lambda!214273 lambda!214202)))

(assert (=> bs!1105153 (= lambda!214273 lambda!214203)))

(assert (=> b!4717113 true))

(declare-fun bs!1105159 () Bool)

(declare-fun b!4717114 () Bool)

(assert (= bs!1105159 (and b!4717114 b!4717113)))

(declare-fun lambda!214274 () Int)

(assert (=> bs!1105159 (= lambda!214274 lambda!214273)))

(declare-fun bs!1105160 () Bool)

(assert (= bs!1105160 (and b!4717114 b!4717049)))

(assert (=> bs!1105160 (= (= lt!1882184 lt!1882546) (= lambda!214274 lambda!214226))))

(assert (=> bs!1105160 (= lambda!214274 lambda!214225)))

(declare-fun bs!1105161 () Bool)

(assert (= bs!1105161 (and b!4717114 d!1500915)))

(assert (=> bs!1105161 (= (= lt!1882184 lt!1882398) (= lambda!214274 lambda!214205))))

(declare-fun bs!1105162 () Bool)

(assert (= bs!1105162 (and b!4717114 d!1500971)))

(assert (=> bs!1105162 (= (= lt!1882184 lt!1882530) (= lambda!214274 lambda!214227))))

(declare-fun bs!1105163 () Bool)

(assert (= bs!1105163 (and b!4717114 d!1500961)))

(assert (=> bs!1105163 (= (= lt!1882184 lt!1882501) (= lambda!214274 lambda!214223))))

(declare-fun bs!1105164 () Bool)

(assert (= bs!1105164 (and b!4717114 b!4717054)))

(assert (=> bs!1105164 (= lambda!214274 lambda!214229)))

(assert (=> bs!1105164 (= (= lt!1882184 lt!1882570) (= lambda!214274 lambda!214230))))

(declare-fun bs!1105165 () Bool)

(assert (= bs!1105165 (and b!4717114 b!4717048)))

(assert (=> bs!1105165 (= lambda!214274 lambda!214224)))

(declare-fun bs!1105166 () Bool)

(assert (= bs!1105166 (and b!4717114 b!4716935)))

(assert (=> bs!1105166 (= (= lt!1882184 lt!1882414) (= lambda!214274 lambda!214204))))

(declare-fun bs!1105167 () Bool)

(assert (= bs!1105167 (and b!4717114 b!4717039)))

(assert (=> bs!1105167 (= lambda!214274 lambda!214220)))

(declare-fun bs!1105168 () Bool)

(assert (= bs!1105168 (and b!4717114 b!4717040)))

(assert (=> bs!1105168 (= lambda!214274 lambda!214221)))

(declare-fun bs!1105169 () Bool)

(assert (= bs!1105169 (and b!4717114 d!1500975)))

(assert (=> bs!1105169 (= (= lt!1882184 lt!1882554) (= lambda!214274 lambda!214231))))

(assert (=> bs!1105168 (= (= lt!1882184 lt!1882517) (= lambda!214274 lambda!214222))))

(declare-fun bs!1105170 () Bool)

(assert (= bs!1105170 (and b!4717114 b!4717053)))

(assert (=> bs!1105170 (= lambda!214274 lambda!214228)))

(declare-fun bs!1105171 () Bool)

(assert (= bs!1105171 (and b!4717114 b!4716934)))

(assert (=> bs!1105171 (= lambda!214274 lambda!214202)))

(assert (=> bs!1105166 (= lambda!214274 lambda!214203)))

(assert (=> b!4717114 true))

(declare-fun lt!1882709 () ListMap!5239)

(declare-fun lambda!214275 () Int)

(assert (=> bs!1105159 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214273))))

(assert (=> b!4717114 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214274))))

(assert (=> bs!1105160 (= (= lt!1882709 lt!1882546) (= lambda!214275 lambda!214226))))

(assert (=> bs!1105160 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214225))))

(assert (=> bs!1105161 (= (= lt!1882709 lt!1882398) (= lambda!214275 lambda!214205))))

(assert (=> bs!1105162 (= (= lt!1882709 lt!1882530) (= lambda!214275 lambda!214227))))

(assert (=> bs!1105163 (= (= lt!1882709 lt!1882501) (= lambda!214275 lambda!214223))))

(assert (=> bs!1105164 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214229))))

(assert (=> bs!1105164 (= (= lt!1882709 lt!1882570) (= lambda!214275 lambda!214230))))

(assert (=> bs!1105165 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214224))))

(assert (=> bs!1105166 (= (= lt!1882709 lt!1882414) (= lambda!214275 lambda!214204))))

(assert (=> bs!1105167 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214220))))

(assert (=> bs!1105168 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214221))))

(assert (=> bs!1105169 (= (= lt!1882709 lt!1882554) (= lambda!214275 lambda!214231))))

(assert (=> bs!1105168 (= (= lt!1882709 lt!1882517) (= lambda!214275 lambda!214222))))

(assert (=> bs!1105170 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214228))))

(assert (=> bs!1105171 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214202))))

(assert (=> bs!1105166 (= (= lt!1882709 lt!1882184) (= lambda!214275 lambda!214203))))

(assert (=> b!4717114 true))

(declare-fun bs!1105172 () Bool)

(declare-fun d!1501001 () Bool)

(assert (= bs!1105172 (and d!1501001 b!4717114)))

(declare-fun lt!1882693 () ListMap!5239)

(declare-fun lambda!214276 () Int)

(assert (=> bs!1105172 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214274))))

(declare-fun bs!1105173 () Bool)

(assert (= bs!1105173 (and d!1501001 b!4717049)))

(assert (=> bs!1105173 (= (= lt!1882693 lt!1882546) (= lambda!214276 lambda!214226))))

(assert (=> bs!1105173 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214225))))

(declare-fun bs!1105174 () Bool)

(assert (= bs!1105174 (and d!1501001 d!1500915)))

(assert (=> bs!1105174 (= (= lt!1882693 lt!1882398) (= lambda!214276 lambda!214205))))

(declare-fun bs!1105175 () Bool)

(assert (= bs!1105175 (and d!1501001 d!1500971)))

(assert (=> bs!1105175 (= (= lt!1882693 lt!1882530) (= lambda!214276 lambda!214227))))

(declare-fun bs!1105176 () Bool)

(assert (= bs!1105176 (and d!1501001 d!1500961)))

(assert (=> bs!1105176 (= (= lt!1882693 lt!1882501) (= lambda!214276 lambda!214223))))

(declare-fun bs!1105177 () Bool)

(assert (= bs!1105177 (and d!1501001 b!4717054)))

(assert (=> bs!1105177 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214229))))

(assert (=> bs!1105177 (= (= lt!1882693 lt!1882570) (= lambda!214276 lambda!214230))))

(declare-fun bs!1105178 () Bool)

(assert (= bs!1105178 (and d!1501001 b!4717048)))

(assert (=> bs!1105178 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214224))))

(declare-fun bs!1105179 () Bool)

(assert (= bs!1105179 (and d!1501001 b!4716935)))

(assert (=> bs!1105179 (= (= lt!1882693 lt!1882414) (= lambda!214276 lambda!214204))))

(declare-fun bs!1105180 () Bool)

(assert (= bs!1105180 (and d!1501001 b!4717039)))

(assert (=> bs!1105180 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214220))))

(assert (=> bs!1105172 (= (= lt!1882693 lt!1882709) (= lambda!214276 lambda!214275))))

(declare-fun bs!1105181 () Bool)

(assert (= bs!1105181 (and d!1501001 b!4717113)))

(assert (=> bs!1105181 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214273))))

(declare-fun bs!1105182 () Bool)

(assert (= bs!1105182 (and d!1501001 b!4717040)))

(assert (=> bs!1105182 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214221))))

(declare-fun bs!1105183 () Bool)

(assert (= bs!1105183 (and d!1501001 d!1500975)))

(assert (=> bs!1105183 (= (= lt!1882693 lt!1882554) (= lambda!214276 lambda!214231))))

(assert (=> bs!1105182 (= (= lt!1882693 lt!1882517) (= lambda!214276 lambda!214222))))

(declare-fun bs!1105184 () Bool)

(assert (= bs!1105184 (and d!1501001 b!4717053)))

(assert (=> bs!1105184 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214228))))

(declare-fun bs!1105185 () Bool)

(assert (= bs!1105185 (and d!1501001 b!4716934)))

(assert (=> bs!1105185 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214202))))

(assert (=> bs!1105179 (= (= lt!1882693 lt!1882184) (= lambda!214276 lambda!214203))))

(assert (=> d!1501001 true))

(declare-fun c!805613 () Bool)

(declare-fun call!329790 () Bool)

(declare-fun bm!329783 () Bool)

(assert (=> bm!329783 (= call!329790 (forall!11546 (toList!5875 lt!1882184) (ite c!805613 lambda!214273 lambda!214274)))))

(declare-fun b!4717111 () Bool)

(declare-fun e!2941946 () Bool)

(assert (=> b!4717111 (= e!2941946 (forall!11546 (toList!5875 lt!1882184) lambda!214275))))

(declare-fun b!4717112 () Bool)

(declare-fun res!1994912 () Bool)

(declare-fun e!2941945 () Bool)

(assert (=> b!4717112 (=> (not res!1994912) (not e!2941945))))

(assert (=> b!4717112 (= res!1994912 (forall!11546 (toList!5875 lt!1882184) lambda!214276))))

(declare-fun e!2941947 () ListMap!5239)

(assert (=> b!4717113 (= e!2941947 lt!1882184)))

(declare-fun lt!1882694 () Unit!128867)

(declare-fun call!329788 () Unit!128867)

(assert (=> b!4717113 (= lt!1882694 call!329788)))

(declare-fun call!329789 () Bool)

(assert (=> b!4717113 call!329789))

(declare-fun lt!1882711 () Unit!128867)

(assert (=> b!4717113 (= lt!1882711 lt!1882694)))

(assert (=> b!4717113 call!329790))

(declare-fun lt!1882706 () Unit!128867)

(declare-fun Unit!128942 () Unit!128867)

(assert (=> b!4717113 (= lt!1882706 Unit!128942)))

(assert (=> b!4717114 (= e!2941947 lt!1882709)))

(declare-fun lt!1882703 () ListMap!5239)

(assert (=> b!4717114 (= lt!1882703 (+!2253 lt!1882184 (h!59100 lt!1882182)))))

(assert (=> b!4717114 (= lt!1882709 (addToMapMapFromBucket!1423 (t!360147 lt!1882182) (+!2253 lt!1882184 (h!59100 lt!1882182))))))

(declare-fun lt!1882696 () Unit!128867)

(assert (=> b!4717114 (= lt!1882696 call!329788)))

(assert (=> b!4717114 call!329790))

(declare-fun lt!1882708 () Unit!128867)

(assert (=> b!4717114 (= lt!1882708 lt!1882696)))

(assert (=> b!4717114 (forall!11546 (toList!5875 lt!1882703) lambda!214275)))

(declare-fun lt!1882701 () Unit!128867)

(declare-fun Unit!128943 () Unit!128867)

(assert (=> b!4717114 (= lt!1882701 Unit!128943)))

(assert (=> b!4717114 (forall!11546 (t!360147 lt!1882182) lambda!214275)))

(declare-fun lt!1882707 () Unit!128867)

(declare-fun Unit!128944 () Unit!128867)

(assert (=> b!4717114 (= lt!1882707 Unit!128944)))

(declare-fun lt!1882699 () Unit!128867)

(declare-fun Unit!128945 () Unit!128867)

(assert (=> b!4717114 (= lt!1882699 Unit!128945)))

(declare-fun lt!1882705 () Unit!128867)

(assert (=> b!4717114 (= lt!1882705 (forallContained!3615 (toList!5875 lt!1882703) lambda!214275 (h!59100 lt!1882182)))))

(assert (=> b!4717114 (contains!16118 lt!1882703 (_1!30477 (h!59100 lt!1882182)))))

(declare-fun lt!1882698 () Unit!128867)

(declare-fun Unit!128946 () Unit!128867)

(assert (=> b!4717114 (= lt!1882698 Unit!128946)))

(assert (=> b!4717114 (contains!16118 lt!1882709 (_1!30477 (h!59100 lt!1882182)))))

(declare-fun lt!1882702 () Unit!128867)

(declare-fun Unit!128947 () Unit!128867)

(assert (=> b!4717114 (= lt!1882702 Unit!128947)))

(assert (=> b!4717114 call!329789))

(declare-fun lt!1882704 () Unit!128867)

(declare-fun Unit!128948 () Unit!128867)

(assert (=> b!4717114 (= lt!1882704 Unit!128948)))

(assert (=> b!4717114 (forall!11546 (toList!5875 lt!1882703) lambda!214275)))

(declare-fun lt!1882713 () Unit!128867)

(declare-fun Unit!128949 () Unit!128867)

(assert (=> b!4717114 (= lt!1882713 Unit!128949)))

(declare-fun lt!1882700 () Unit!128867)

(declare-fun Unit!128950 () Unit!128867)

(assert (=> b!4717114 (= lt!1882700 Unit!128950)))

(declare-fun lt!1882697 () Unit!128867)

(assert (=> b!4717114 (= lt!1882697 (addForallContainsKeyThenBeforeAdding!780 lt!1882184 lt!1882709 (_1!30477 (h!59100 lt!1882182)) (_2!30477 (h!59100 lt!1882182))))))

(assert (=> b!4717114 (forall!11546 (toList!5875 lt!1882184) lambda!214275)))

(declare-fun lt!1882695 () Unit!128867)

(assert (=> b!4717114 (= lt!1882695 lt!1882697)))

(assert (=> b!4717114 (forall!11546 (toList!5875 lt!1882184) lambda!214275)))

(declare-fun lt!1882710 () Unit!128867)

(declare-fun Unit!128951 () Unit!128867)

(assert (=> b!4717114 (= lt!1882710 Unit!128951)))

(declare-fun res!1994911 () Bool)

(assert (=> b!4717114 (= res!1994911 (forall!11546 lt!1882182 lambda!214275))))

(assert (=> b!4717114 (=> (not res!1994911) (not e!2941946))))

(assert (=> b!4717114 e!2941946))

(declare-fun lt!1882712 () Unit!128867)

(declare-fun Unit!128952 () Unit!128867)

(assert (=> b!4717114 (= lt!1882712 Unit!128952)))

(declare-fun bm!329784 () Bool)

(assert (=> bm!329784 (= call!329789 (forall!11546 (ite c!805613 (toList!5875 lt!1882184) lt!1882182) (ite c!805613 lambda!214273 lambda!214275)))))

(assert (=> d!1501001 e!2941945))

(declare-fun res!1994910 () Bool)

(assert (=> d!1501001 (=> (not res!1994910) (not e!2941945))))

(assert (=> d!1501001 (= res!1994910 (forall!11546 lt!1882182 lambda!214276))))

(assert (=> d!1501001 (= lt!1882693 e!2941947)))

(assert (=> d!1501001 (= c!805613 (is-Nil!52771 lt!1882182))))

(assert (=> d!1501001 (noDuplicateKeys!1993 lt!1882182)))

(assert (=> d!1501001 (= (addToMapMapFromBucket!1423 lt!1882182 lt!1882184) lt!1882693)))

(declare-fun bm!329785 () Bool)

(assert (=> bm!329785 (= call!329788 (lemmaContainsAllItsOwnKeys!781 lt!1882184))))

(declare-fun b!4717115 () Bool)

(assert (=> b!4717115 (= e!2941945 (invariantList!1493 (toList!5875 lt!1882693)))))

(assert (= (and d!1501001 c!805613) b!4717113))

(assert (= (and d!1501001 (not c!805613)) b!4717114))

(assert (= (and b!4717114 res!1994911) b!4717111))

(assert (= (or b!4717113 b!4717114) bm!329785))

(assert (= (or b!4717113 b!4717114) bm!329784))

(assert (= (or b!4717113 b!4717114) bm!329783))

(assert (= (and d!1501001 res!1994910) b!4717112))

(assert (= (and b!4717112 res!1994912) b!4717115))

(declare-fun m!5647771 () Bool)

(assert (=> bm!329784 m!5647771))

(declare-fun m!5647773 () Bool)

(assert (=> b!4717115 m!5647773))

(declare-fun m!5647775 () Bool)

(assert (=> b!4717111 m!5647775))

(declare-fun m!5647777 () Bool)

(assert (=> bm!329783 m!5647777))

(assert (=> b!4717114 m!5647775))

(declare-fun m!5647779 () Bool)

(assert (=> b!4717114 m!5647779))

(declare-fun m!5647781 () Bool)

(assert (=> b!4717114 m!5647781))

(declare-fun m!5647783 () Bool)

(assert (=> b!4717114 m!5647783))

(declare-fun m!5647785 () Bool)

(assert (=> b!4717114 m!5647785))

(declare-fun m!5647787 () Bool)

(assert (=> b!4717114 m!5647787))

(declare-fun m!5647789 () Bool)

(assert (=> b!4717114 m!5647789))

(declare-fun m!5647791 () Bool)

(assert (=> b!4717114 m!5647791))

(assert (=> b!4717114 m!5647775))

(declare-fun m!5647793 () Bool)

(assert (=> b!4717114 m!5647793))

(declare-fun m!5647795 () Bool)

(assert (=> b!4717114 m!5647795))

(assert (=> b!4717114 m!5647793))

(assert (=> b!4717114 m!5647779))

(assert (=> bm!329785 m!5647387))

(declare-fun m!5647797 () Bool)

(assert (=> b!4717112 m!5647797))

(declare-fun m!5647799 () Bool)

(assert (=> d!1501001 m!5647799))

(assert (=> d!1501001 m!5647671))

(assert (=> b!4716815 d!1501001))

(declare-fun d!1501003 () Bool)

(assert (=> d!1501003 (= (eq!1120 lt!1882189 lt!1882211) (= (content!9370 (toList!5875 lt!1882189)) (content!9370 (toList!5875 lt!1882211))))))

(declare-fun bs!1105186 () Bool)

(assert (= bs!1105186 d!1501003))

(declare-fun m!5647801 () Bool)

(assert (=> bs!1105186 m!5647801))

(declare-fun m!5647803 () Bool)

(assert (=> bs!1105186 m!5647803))

(assert (=> b!4716804 d!1501003))

(declare-fun bs!1105187 () Bool)

(declare-fun d!1501005 () Bool)

(assert (= bs!1105187 (and d!1501005 d!1500987)))

(declare-fun lambda!214277 () Int)

(assert (=> bs!1105187 (= lambda!214277 lambda!214271)))

(declare-fun bs!1105188 () Bool)

(assert (= bs!1105188 (and d!1501005 d!1500959)))

(assert (=> bs!1105188 (= lambda!214277 lambda!214219)))

(declare-fun bs!1105189 () Bool)

(assert (= bs!1105189 (and d!1501005 d!1500993)))

(assert (=> bs!1105189 (= lambda!214277 lambda!214272)))

(declare-fun bs!1105190 () Bool)

(assert (= bs!1105190 (and d!1501005 d!1500981)))

(assert (=> bs!1105190 (= lambda!214277 lambda!214260)))

(declare-fun bs!1105191 () Bool)

(assert (= bs!1105191 (and d!1501005 d!1500927)))

(assert (=> bs!1105191 (= lambda!214277 lambda!214208)))

(declare-fun bs!1105192 () Bool)

(assert (= bs!1105192 (and d!1501005 d!1500941)))

(assert (=> bs!1105192 (= lambda!214277 lambda!214211)))

(declare-fun bs!1105193 () Bool)

(assert (= bs!1105193 (and d!1501005 d!1500945)))

(assert (=> bs!1105193 (= lambda!214277 lambda!214218)))

(declare-fun bs!1105194 () Bool)

(assert (= bs!1105194 (and d!1501005 start!479766)))

(assert (=> bs!1105194 (= lambda!214277 lambda!214164)))

(declare-fun lt!1882714 () ListMap!5239)

(assert (=> d!1501005 (invariantList!1493 (toList!5875 lt!1882714))))

(declare-fun e!2941948 () ListMap!5239)

(assert (=> d!1501005 (= lt!1882714 e!2941948)))

(declare-fun c!805614 () Bool)

(assert (=> d!1501005 (= c!805614 (is-Cons!52772 (Cons!52772 lt!1882191 (t!360148 (toList!5876 lm!2023)))))))

(assert (=> d!1501005 (forall!11544 (Cons!52772 lt!1882191 (t!360148 (toList!5876 lm!2023))) lambda!214277)))

(assert (=> d!1501005 (= (extractMap!2019 (Cons!52772 lt!1882191 (t!360148 (toList!5876 lm!2023)))) lt!1882714)))

(declare-fun b!4717116 () Bool)

(assert (=> b!4717116 (= e!2941948 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (Cons!52772 lt!1882191 (t!360148 (toList!5876 lm!2023))))) (extractMap!2019 (t!360148 (Cons!52772 lt!1882191 (t!360148 (toList!5876 lm!2023)))))))))

(declare-fun b!4717117 () Bool)

(assert (=> b!4717117 (= e!2941948 (ListMap!5240 Nil!52771))))

(assert (= (and d!1501005 c!805614) b!4717116))

(assert (= (and d!1501005 (not c!805614)) b!4717117))

(declare-fun m!5647805 () Bool)

(assert (=> d!1501005 m!5647805))

(declare-fun m!5647807 () Bool)

(assert (=> d!1501005 m!5647807))

(declare-fun m!5647809 () Bool)

(assert (=> b!4717116 m!5647809))

(assert (=> b!4717116 m!5647809))

(declare-fun m!5647811 () Bool)

(assert (=> b!4717116 m!5647811))

(assert (=> b!4716794 d!1501005))

(declare-fun d!1501007 () Bool)

(declare-fun e!2941954 () Bool)

(assert (=> d!1501007 e!2941954))

(declare-fun res!1994918 () Bool)

(assert (=> d!1501007 (=> (not res!1994918) (not e!2941954))))

(declare-fun lt!1882741 () ListMap!5239)

(assert (=> d!1501007 (= res!1994918 (not (contains!16118 lt!1882741 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!396 (List!52895 K!14133) List!52895)

(assert (=> d!1501007 (= lt!1882741 (ListMap!5240 (removePresrvNoDuplicatedKeys!396 (toList!5875 (extractMap!2019 (Cons!52772 lt!1882206 lt!1882185))) key!4653)))))

(assert (=> d!1501007 (= (-!749 (extractMap!2019 (Cons!52772 lt!1882206 lt!1882185)) key!4653) lt!1882741)))

(declare-fun b!4717125 () Bool)

(declare-fun content!9373 (List!52900) (Set K!14133))

(assert (=> b!4717125 (= e!2941954 (= (set.minus (content!9373 (keys!18937 (extractMap!2019 (Cons!52772 lt!1882206 lt!1882185)))) (set.insert key!4653 (as set.empty (Set K!14133)))) (content!9373 (keys!18937 lt!1882741))))))

(assert (= (and d!1501007 res!1994918) b!4717125))

(declare-fun m!5647821 () Bool)

(assert (=> d!1501007 m!5647821))

(declare-fun m!5647823 () Bool)

(assert (=> d!1501007 m!5647823))

(declare-fun m!5647827 () Bool)

(assert (=> b!4717125 m!5647827))

(declare-fun m!5647829 () Bool)

(assert (=> b!4717125 m!5647829))

(declare-fun m!5647833 () Bool)

(assert (=> b!4717125 m!5647833))

(declare-fun m!5647837 () Bool)

(assert (=> b!4717125 m!5647837))

(declare-fun m!5647841 () Bool)

(assert (=> b!4717125 m!5647841))

(assert (=> b!4717125 m!5647079))

(assert (=> b!4717125 m!5647827))

(assert (=> b!4717125 m!5647837))

(assert (=> b!4716794 d!1501007))

(declare-fun d!1501011 () Bool)

(assert (=> d!1501011 (= (tail!8953 lt!1882203) (t!360148 lt!1882203))))

(assert (=> b!4716794 d!1501011))

(declare-fun d!1501015 () Bool)

(declare-fun e!2941958 () Bool)

(assert (=> d!1501015 e!2941958))

(declare-fun res!1994922 () Bool)

(assert (=> d!1501015 (=> (not res!1994922) (not e!2941958))))

(declare-fun lt!1882763 () ListMap!5239)

(assert (=> d!1501015 (= res!1994922 (not (contains!16118 lt!1882763 key!4653)))))

(assert (=> d!1501015 (= lt!1882763 (ListMap!5240 (removePresrvNoDuplicatedKeys!396 (toList!5875 lt!1882208) key!4653)))))

(assert (=> d!1501015 (= (-!749 lt!1882208 key!4653) lt!1882763)))

(declare-fun b!4717129 () Bool)

(assert (=> b!4717129 (= e!2941958 (= (set.minus (content!9373 (keys!18937 lt!1882208)) (set.insert key!4653 (as set.empty (Set K!14133)))) (content!9373 (keys!18937 lt!1882763))))))

(assert (= (and d!1501015 res!1994922) b!4717129))

(declare-fun m!5647869 () Bool)

(assert (=> d!1501015 m!5647869))

(declare-fun m!5647871 () Bool)

(assert (=> d!1501015 m!5647871))

(assert (=> b!4717129 m!5647635))

(declare-fun m!5647873 () Bool)

(assert (=> b!4717129 m!5647873))

(assert (=> b!4717129 m!5647833))

(declare-fun m!5647875 () Bool)

(assert (=> b!4717129 m!5647875))

(declare-fun m!5647877 () Bool)

(assert (=> b!4717129 m!5647877))

(assert (=> b!4717129 m!5647635))

(assert (=> b!4717129 m!5647875))

(assert (=> b!4716794 d!1501015))

(declare-fun bs!1105225 () Bool)

(declare-fun d!1501017 () Bool)

(assert (= bs!1105225 (and d!1501017 d!1500987)))

(declare-fun lambda!214286 () Int)

(assert (=> bs!1105225 (= lambda!214286 lambda!214271)))

(declare-fun bs!1105226 () Bool)

(assert (= bs!1105226 (and d!1501017 d!1500959)))

(assert (=> bs!1105226 (= lambda!214286 lambda!214219)))

(declare-fun bs!1105228 () Bool)

(assert (= bs!1105228 (and d!1501017 d!1500993)))

(assert (=> bs!1105228 (= lambda!214286 lambda!214272)))

(declare-fun bs!1105230 () Bool)

(assert (= bs!1105230 (and d!1501017 d!1500981)))

(assert (=> bs!1105230 (= lambda!214286 lambda!214260)))

(declare-fun bs!1105232 () Bool)

(assert (= bs!1105232 (and d!1501017 d!1500927)))

(assert (=> bs!1105232 (= lambda!214286 lambda!214208)))

(declare-fun bs!1105233 () Bool)

(assert (= bs!1105233 (and d!1501017 d!1500941)))

(assert (=> bs!1105233 (= lambda!214286 lambda!214211)))

(declare-fun bs!1105235 () Bool)

(assert (= bs!1105235 (and d!1501017 d!1501005)))

(assert (=> bs!1105235 (= lambda!214286 lambda!214277)))

(declare-fun bs!1105236 () Bool)

(assert (= bs!1105236 (and d!1501017 d!1500945)))

(assert (=> bs!1105236 (= lambda!214286 lambda!214218)))

(declare-fun bs!1105237 () Bool)

(assert (= bs!1105237 (and d!1501017 start!479766)))

(assert (=> bs!1105237 (= lambda!214286 lambda!214164)))

(declare-fun lt!1882764 () ListMap!5239)

(assert (=> d!1501017 (invariantList!1493 (toList!5875 lt!1882764))))

(declare-fun e!2941959 () ListMap!5239)

(assert (=> d!1501017 (= lt!1882764 e!2941959)))

(declare-fun c!805617 () Bool)

(assert (=> d!1501017 (= c!805617 (is-Cons!52772 (Cons!52772 lt!1882191 lt!1882185)))))

(assert (=> d!1501017 (forall!11544 (Cons!52772 lt!1882191 lt!1882185) lambda!214286)))

(assert (=> d!1501017 (= (extractMap!2019 (Cons!52772 lt!1882191 lt!1882185)) lt!1882764)))

(declare-fun b!4717132 () Bool)

(assert (=> b!4717132 (= e!2941959 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (Cons!52772 lt!1882191 lt!1882185))) (extractMap!2019 (t!360148 (Cons!52772 lt!1882191 lt!1882185)))))))

(declare-fun b!4717133 () Bool)

(assert (=> b!4717133 (= e!2941959 (ListMap!5240 Nil!52771))))

(assert (= (and d!1501017 c!805617) b!4717132))

(assert (= (and d!1501017 (not c!805617)) b!4717133))

(declare-fun m!5647879 () Bool)

(assert (=> d!1501017 m!5647879))

(declare-fun m!5647881 () Bool)

(assert (=> d!1501017 m!5647881))

(declare-fun m!5647883 () Bool)

(assert (=> b!4717132 m!5647883))

(assert (=> b!4717132 m!5647883))

(declare-fun m!5647885 () Bool)

(assert (=> b!4717132 m!5647885))

(assert (=> b!4716794 d!1501017))

(declare-fun bs!1105246 () Bool)

(declare-fun d!1501019 () Bool)

(assert (= bs!1105246 (and d!1501019 d!1501017)))

(declare-fun lambda!214288 () Int)

(assert (=> bs!1105246 (= lambda!214288 lambda!214286)))

(declare-fun bs!1105248 () Bool)

(assert (= bs!1105248 (and d!1501019 d!1500987)))

(assert (=> bs!1105248 (= lambda!214288 lambda!214271)))

(declare-fun bs!1105250 () Bool)

(assert (= bs!1105250 (and d!1501019 d!1500959)))

(assert (=> bs!1105250 (= lambda!214288 lambda!214219)))

(declare-fun bs!1105251 () Bool)

(assert (= bs!1105251 (and d!1501019 d!1500993)))

(assert (=> bs!1105251 (= lambda!214288 lambda!214272)))

(declare-fun bs!1105252 () Bool)

(assert (= bs!1105252 (and d!1501019 d!1500981)))

(assert (=> bs!1105252 (= lambda!214288 lambda!214260)))

(declare-fun bs!1105253 () Bool)

(assert (= bs!1105253 (and d!1501019 d!1500927)))

(assert (=> bs!1105253 (= lambda!214288 lambda!214208)))

(declare-fun bs!1105254 () Bool)

(assert (= bs!1105254 (and d!1501019 d!1500941)))

(assert (=> bs!1105254 (= lambda!214288 lambda!214211)))

(declare-fun bs!1105255 () Bool)

(assert (= bs!1105255 (and d!1501019 d!1501005)))

(assert (=> bs!1105255 (= lambda!214288 lambda!214277)))

(declare-fun bs!1105256 () Bool)

(assert (= bs!1105256 (and d!1501019 d!1500945)))

(assert (=> bs!1105256 (= lambda!214288 lambda!214218)))

(declare-fun bs!1105257 () Bool)

(assert (= bs!1105257 (and d!1501019 start!479766)))

(assert (=> bs!1105257 (= lambda!214288 lambda!214164)))

(declare-fun lt!1882765 () ListMap!5239)

(assert (=> d!1501019 (invariantList!1493 (toList!5875 lt!1882765))))

(declare-fun e!2941960 () ListMap!5239)

(assert (=> d!1501019 (= lt!1882765 e!2941960)))

(declare-fun c!805618 () Bool)

(assert (=> d!1501019 (= c!805618 (is-Cons!52772 (Cons!52772 lt!1882206 lt!1882185)))))

(assert (=> d!1501019 (forall!11544 (Cons!52772 lt!1882206 lt!1882185) lambda!214288)))

(assert (=> d!1501019 (= (extractMap!2019 (Cons!52772 lt!1882206 lt!1882185)) lt!1882765)))

(declare-fun b!4717134 () Bool)

(assert (=> b!4717134 (= e!2941960 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (Cons!52772 lt!1882206 lt!1882185))) (extractMap!2019 (t!360148 (Cons!52772 lt!1882206 lt!1882185)))))))

(declare-fun b!4717135 () Bool)

(assert (=> b!4717135 (= e!2941960 (ListMap!5240 Nil!52771))))

(assert (= (and d!1501019 c!805618) b!4717134))

(assert (= (and d!1501019 (not c!805618)) b!4717135))

(declare-fun m!5647887 () Bool)

(assert (=> d!1501019 m!5647887))

(declare-fun m!5647889 () Bool)

(assert (=> d!1501019 m!5647889))

(declare-fun m!5647891 () Bool)

(assert (=> b!4717134 m!5647891))

(assert (=> b!4717134 m!5647891))

(declare-fun m!5647893 () Bool)

(assert (=> b!4717134 m!5647893))

(assert (=> b!4716794 d!1501019))

(declare-fun d!1501021 () Bool)

(assert (=> d!1501021 (= (eq!1120 lt!1882201 lt!1882187) (= (content!9370 (toList!5875 lt!1882201)) (content!9370 (toList!5875 lt!1882187))))))

(declare-fun bs!1105258 () Bool)

(assert (= bs!1105258 d!1501021))

(declare-fun m!5647895 () Bool)

(assert (=> bs!1105258 m!5647895))

(declare-fun m!5647897 () Bool)

(assert (=> bs!1105258 m!5647897))

(assert (=> b!4716794 d!1501021))

(declare-fun d!1501023 () Bool)

(assert (=> d!1501023 (= (eq!1120 (extractMap!2019 (Cons!52772 lt!1882191 lt!1882185)) (-!749 (extractMap!2019 (Cons!52772 lt!1882206 lt!1882185)) key!4653)) (= (content!9370 (toList!5875 (extractMap!2019 (Cons!52772 lt!1882191 lt!1882185)))) (content!9370 (toList!5875 (-!749 (extractMap!2019 (Cons!52772 lt!1882206 lt!1882185)) key!4653)))))))

(declare-fun bs!1105259 () Bool)

(assert (= bs!1105259 d!1501023))

(declare-fun m!5647899 () Bool)

(assert (=> bs!1105259 m!5647899))

(declare-fun m!5647901 () Bool)

(assert (=> bs!1105259 m!5647901))

(assert (=> b!4716794 d!1501023))

(declare-fun bs!1105274 () Bool)

(declare-fun d!1501025 () Bool)

(assert (= bs!1105274 (and d!1501025 d!1501017)))

(declare-fun lambda!214293 () Int)

(assert (=> bs!1105274 (= lambda!214293 lambda!214286)))

(declare-fun bs!1105275 () Bool)

(assert (= bs!1105275 (and d!1501025 d!1501019)))

(assert (=> bs!1105275 (= lambda!214293 lambda!214288)))

(declare-fun bs!1105276 () Bool)

(assert (= bs!1105276 (and d!1501025 d!1500987)))

(assert (=> bs!1105276 (= lambda!214293 lambda!214271)))

(declare-fun bs!1105277 () Bool)

(assert (= bs!1105277 (and d!1501025 d!1500959)))

(assert (=> bs!1105277 (= lambda!214293 lambda!214219)))

(declare-fun bs!1105278 () Bool)

(assert (= bs!1105278 (and d!1501025 d!1500993)))

(assert (=> bs!1105278 (= lambda!214293 lambda!214272)))

(declare-fun bs!1105279 () Bool)

(assert (= bs!1105279 (and d!1501025 d!1500981)))

(assert (=> bs!1105279 (= lambda!214293 lambda!214260)))

(declare-fun bs!1105280 () Bool)

(assert (= bs!1105280 (and d!1501025 d!1500927)))

(assert (=> bs!1105280 (= lambda!214293 lambda!214208)))

(declare-fun bs!1105281 () Bool)

(assert (= bs!1105281 (and d!1501025 d!1500941)))

(assert (=> bs!1105281 (= lambda!214293 lambda!214211)))

(declare-fun bs!1105282 () Bool)

(assert (= bs!1105282 (and d!1501025 d!1501005)))

(assert (=> bs!1105282 (= lambda!214293 lambda!214277)))

(declare-fun bs!1105283 () Bool)

(assert (= bs!1105283 (and d!1501025 d!1500945)))

(assert (=> bs!1105283 (= lambda!214293 lambda!214218)))

(declare-fun bs!1105284 () Bool)

(assert (= bs!1105284 (and d!1501025 start!479766)))

(assert (=> bs!1105284 (= lambda!214293 lambda!214164)))

(assert (=> d!1501025 (eq!1120 (extractMap!2019 (Cons!52772 (tuple2!54369 hash!405 lt!1882209) (tail!8953 (toList!5876 lt!1882205)))) (-!749 (extractMap!2019 (Cons!52772 (tuple2!54369 hash!405 (t!360147 oldBucket!34)) (tail!8953 (toList!5876 lt!1882205)))) key!4653))))

(declare-fun lt!1882785 () Unit!128867)

(declare-fun choose!33240 (ListLongMap!4405 (_ BitVec 64) List!52895 List!52895 K!14133 Hashable!6362) Unit!128867)

(assert (=> d!1501025 (= lt!1882785 (choose!33240 lt!1882205 hash!405 (t!360147 oldBucket!34) lt!1882209 key!4653 hashF!1323))))

(assert (=> d!1501025 (forall!11544 (toList!5876 lt!1882205) lambda!214293)))

(assert (=> d!1501025 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!111 lt!1882205 hash!405 (t!360147 oldBucket!34) lt!1882209 key!4653 hashF!1323) lt!1882785)))

(declare-fun bs!1105289 () Bool)

(assert (= bs!1105289 d!1501025))

(declare-fun m!5647985 () Bool)

(assert (=> bs!1105289 m!5647985))

(declare-fun m!5647991 () Bool)

(assert (=> bs!1105289 m!5647991))

(declare-fun m!5647993 () Bool)

(assert (=> bs!1105289 m!5647993))

(declare-fun m!5647995 () Bool)

(assert (=> bs!1105289 m!5647995))

(declare-fun m!5647997 () Bool)

(assert (=> bs!1105289 m!5647997))

(assert (=> bs!1105289 m!5647985))

(assert (=> bs!1105289 m!5647995))

(declare-fun m!5647999 () Bool)

(assert (=> bs!1105289 m!5647999))

(declare-fun m!5648001 () Bool)

(assert (=> bs!1105289 m!5648001))

(assert (=> bs!1105289 m!5647993))

(assert (=> b!4716794 d!1501025))

(declare-fun d!1501045 () Bool)

(assert (=> d!1501045 (= (eq!1120 lt!1882211 lt!1882190) (= (content!9370 (toList!5875 lt!1882211)) (content!9370 (toList!5875 lt!1882190))))))

(declare-fun bs!1105295 () Bool)

(assert (= bs!1105295 d!1501045))

(assert (=> bs!1105295 m!5647803))

(declare-fun m!5648003 () Bool)

(assert (=> bs!1105295 m!5648003))

(assert (=> b!4716795 d!1501045))

(declare-fun d!1501047 () Bool)

(assert (=> d!1501047 (= (eq!1120 lt!1882189 lt!1882190) (= (content!9370 (toList!5875 lt!1882189)) (content!9370 (toList!5875 lt!1882190))))))

(declare-fun bs!1105296 () Bool)

(assert (= bs!1105296 d!1501047))

(assert (=> bs!1105296 m!5647801))

(assert (=> bs!1105296 m!5648003))

(assert (=> b!4716795 d!1501047))

(declare-fun d!1501049 () Bool)

(declare-fun e!2941968 () Bool)

(assert (=> d!1501049 e!2941968))

(declare-fun res!1994933 () Bool)

(assert (=> d!1501049 (=> (not res!1994933) (not e!2941968))))

(declare-fun lt!1882792 () ListMap!5239)

(assert (=> d!1501049 (= res!1994933 (not (contains!16118 lt!1882792 key!4653)))))

(assert (=> d!1501049 (= lt!1882792 (ListMap!5240 (removePresrvNoDuplicatedKeys!396 (toList!5875 lt!1882217) key!4653)))))

(assert (=> d!1501049 (= (-!749 lt!1882217 key!4653) lt!1882792)))

(declare-fun b!4717150 () Bool)

(assert (=> b!4717150 (= e!2941968 (= (set.minus (content!9373 (keys!18937 lt!1882217)) (set.insert key!4653 (as set.empty (Set K!14133)))) (content!9373 (keys!18937 lt!1882792))))))

(assert (= (and d!1501049 res!1994933) b!4717150))

(declare-fun m!5648013 () Bool)

(assert (=> d!1501049 m!5648013))

(declare-fun m!5648015 () Bool)

(assert (=> d!1501049 m!5648015))

(declare-fun m!5648017 () Bool)

(assert (=> b!4717150 m!5648017))

(declare-fun m!5648019 () Bool)

(assert (=> b!4717150 m!5648019))

(assert (=> b!4717150 m!5647833))

(declare-fun m!5648021 () Bool)

(assert (=> b!4717150 m!5648021))

(declare-fun m!5648023 () Bool)

(assert (=> b!4717150 m!5648023))

(assert (=> b!4717150 m!5648017))

(assert (=> b!4717150 m!5648021))

(assert (=> b!4716795 d!1501049))

(declare-fun d!1501053 () Bool)

(assert (=> d!1501053 (eq!1120 (-!749 lt!1882214 key!4653) (-!749 lt!1882217 key!4653))))

(declare-fun lt!1882795 () Unit!128867)

(declare-fun choose!33241 (ListMap!5239 ListMap!5239 K!14133) Unit!128867)

(assert (=> d!1501053 (= lt!1882795 (choose!33241 lt!1882214 lt!1882217 key!4653))))

(assert (=> d!1501053 (eq!1120 lt!1882214 lt!1882217)))

(assert (=> d!1501053 (= (lemmaRemovePreservesEq!117 lt!1882214 lt!1882217 key!4653) lt!1882795)))

(declare-fun bs!1105312 () Bool)

(assert (= bs!1105312 d!1501053))

(assert (=> bs!1105312 m!5647095))

(declare-fun m!5648033 () Bool)

(assert (=> bs!1105312 m!5648033))

(assert (=> bs!1105312 m!5647047))

(assert (=> bs!1105312 m!5647065))

(assert (=> bs!1105312 m!5647095))

(assert (=> bs!1105312 m!5647047))

(declare-fun m!5648035 () Bool)

(assert (=> bs!1105312 m!5648035))

(assert (=> b!4716795 d!1501053))

(declare-fun d!1501061 () Bool)

(assert (=> d!1501061 (= (head!10216 (toList!5876 lm!2023)) (h!59101 (toList!5876 lm!2023)))))

(assert (=> b!4716816 d!1501061))

(declare-fun d!1501063 () Bool)

(declare-fun hash!4346 (Hashable!6362 K!14133) (_ BitVec 64))

(assert (=> d!1501063 (= (hash!4342 hashF!1323 key!4653) (hash!4346 hashF!1323 key!4653))))

(declare-fun bs!1105313 () Bool)

(assert (= bs!1105313 d!1501063))

(declare-fun m!5648037 () Bool)

(assert (=> bs!1105313 m!5648037))

(assert (=> b!4716806 d!1501063))

(declare-fun b!4717155 () Bool)

(declare-fun e!2941972 () Unit!128867)

(declare-fun Unit!128964 () Unit!128867)

(assert (=> b!4717155 (= e!2941972 Unit!128964)))

(declare-fun bm!329792 () Bool)

(declare-fun call!329797 () Bool)

(declare-fun e!2941971 () List!52900)

(assert (=> bm!329792 (= call!329797 (contains!16126 e!2941971 key!4653))))

(declare-fun c!805623 () Bool)

(declare-fun c!805622 () Bool)

(assert (=> bm!329792 (= c!805623 c!805622)))

(declare-fun d!1501065 () Bool)

(declare-fun e!2941970 () Bool)

(assert (=> d!1501065 e!2941970))

(declare-fun res!1994936 () Bool)

(assert (=> d!1501065 (=> res!1994936 e!2941970)))

(declare-fun e!2941969 () Bool)

(assert (=> d!1501065 (= res!1994936 e!2941969)))

(declare-fun res!1994935 () Bool)

(assert (=> d!1501065 (=> (not res!1994935) (not e!2941969))))

(declare-fun lt!1882802 () Bool)

(assert (=> d!1501065 (= res!1994935 (not lt!1882802))))

(declare-fun lt!1882799 () Bool)

(assert (=> d!1501065 (= lt!1882802 lt!1882799)))

(declare-fun lt!1882797 () Unit!128867)

(declare-fun e!2941973 () Unit!128867)

(assert (=> d!1501065 (= lt!1882797 e!2941973)))

(assert (=> d!1501065 (= c!805622 lt!1882799)))

(assert (=> d!1501065 (= lt!1882799 (containsKey!3334 (toList!5875 lt!1882218) key!4653))))

(assert (=> d!1501065 (= (contains!16118 lt!1882218 key!4653) lt!1882802)))

(declare-fun b!4717156 () Bool)

(assert (=> b!4717156 (= e!2941971 (keys!18937 lt!1882218))))

(declare-fun b!4717157 () Bool)

(assert (=> b!4717157 (= e!2941971 (getKeysList!934 (toList!5875 lt!1882218)))))

(declare-fun b!4717158 () Bool)

(declare-fun e!2941974 () Bool)

(assert (=> b!4717158 (= e!2941970 e!2941974)))

(declare-fun res!1994934 () Bool)

(assert (=> b!4717158 (=> (not res!1994934) (not e!2941974))))

(assert (=> b!4717158 (= res!1994934 (isDefined!9591 (getValueByKey!1933 (toList!5875 lt!1882218) key!4653)))))

(declare-fun b!4717159 () Bool)

(declare-fun lt!1882803 () Unit!128867)

(assert (=> b!4717159 (= e!2941973 lt!1882803)))

(declare-fun lt!1882800 () Unit!128867)

(assert (=> b!4717159 (= lt!1882800 (lemmaContainsKeyImpliesGetValueByKeyDefined!1826 (toList!5875 lt!1882218) key!4653))))

(assert (=> b!4717159 (isDefined!9591 (getValueByKey!1933 (toList!5875 lt!1882218) key!4653))))

(declare-fun lt!1882798 () Unit!128867)

(assert (=> b!4717159 (= lt!1882798 lt!1882800)))

(assert (=> b!4717159 (= lt!1882803 (lemmaInListThenGetKeysListContains!929 (toList!5875 lt!1882218) key!4653))))

(assert (=> b!4717159 call!329797))

(declare-fun b!4717160 () Bool)

(assert (=> b!4717160 (= e!2941973 e!2941972)))

(declare-fun c!805621 () Bool)

(assert (=> b!4717160 (= c!805621 call!329797)))

(declare-fun b!4717161 () Bool)

(assert (=> b!4717161 (= e!2941974 (contains!16126 (keys!18937 lt!1882218) key!4653))))

(declare-fun b!4717162 () Bool)

(assert (=> b!4717162 false))

(declare-fun lt!1882801 () Unit!128867)

(declare-fun lt!1882796 () Unit!128867)

(assert (=> b!4717162 (= lt!1882801 lt!1882796)))

(assert (=> b!4717162 (containsKey!3334 (toList!5875 lt!1882218) key!4653)))

(assert (=> b!4717162 (= lt!1882796 (lemmaInGetKeysListThenContainsKey!933 (toList!5875 lt!1882218) key!4653))))

(declare-fun Unit!128966 () Unit!128867)

(assert (=> b!4717162 (= e!2941972 Unit!128966)))

(declare-fun b!4717163 () Bool)

(assert (=> b!4717163 (= e!2941969 (not (contains!16126 (keys!18937 lt!1882218) key!4653)))))

(assert (= (and d!1501065 c!805622) b!4717159))

(assert (= (and d!1501065 (not c!805622)) b!4717160))

(assert (= (and b!4717160 c!805621) b!4717162))

(assert (= (and b!4717160 (not c!805621)) b!4717155))

(assert (= (or b!4717159 b!4717160) bm!329792))

(assert (= (and bm!329792 c!805623) b!4717157))

(assert (= (and bm!329792 (not c!805623)) b!4717156))

(assert (= (and d!1501065 res!1994935) b!4717163))

(assert (= (and d!1501065 (not res!1994936)) b!4717158))

(assert (= (and b!4717158 res!1994934) b!4717161))

(declare-fun m!5648039 () Bool)

(assert (=> b!4717162 m!5648039))

(declare-fun m!5648041 () Bool)

(assert (=> b!4717162 m!5648041))

(declare-fun m!5648043 () Bool)

(assert (=> b!4717156 m!5648043))

(assert (=> b!4717163 m!5648043))

(assert (=> b!4717163 m!5648043))

(declare-fun m!5648045 () Bool)

(assert (=> b!4717163 m!5648045))

(declare-fun m!5648047 () Bool)

(assert (=> bm!329792 m!5648047))

(declare-fun m!5648049 () Bool)

(assert (=> b!4717158 m!5648049))

(assert (=> b!4717158 m!5648049))

(declare-fun m!5648051 () Bool)

(assert (=> b!4717158 m!5648051))

(assert (=> b!4717161 m!5648043))

(assert (=> b!4717161 m!5648043))

(assert (=> b!4717161 m!5648045))

(assert (=> d!1501065 m!5648039))

(declare-fun m!5648053 () Bool)

(assert (=> b!4717159 m!5648053))

(assert (=> b!4717159 m!5648049))

(assert (=> b!4717159 m!5648049))

(assert (=> b!4717159 m!5648051))

(declare-fun m!5648055 () Bool)

(assert (=> b!4717159 m!5648055))

(declare-fun m!5648057 () Bool)

(assert (=> b!4717157 m!5648057))

(assert (=> b!4716807 d!1501065))

(declare-fun bs!1105314 () Bool)

(declare-fun d!1501067 () Bool)

(assert (= bs!1105314 (and d!1501067 d!1501017)))

(declare-fun lambda!214299 () Int)

(assert (=> bs!1105314 (= lambda!214299 lambda!214286)))

(declare-fun bs!1105315 () Bool)

(assert (= bs!1105315 (and d!1501067 d!1501019)))

(assert (=> bs!1105315 (= lambda!214299 lambda!214288)))

(declare-fun bs!1105316 () Bool)

(assert (= bs!1105316 (and d!1501067 d!1500987)))

(assert (=> bs!1105316 (= lambda!214299 lambda!214271)))

(declare-fun bs!1105317 () Bool)

(assert (= bs!1105317 (and d!1501067 d!1500959)))

(assert (=> bs!1105317 (= lambda!214299 lambda!214219)))

(declare-fun bs!1105318 () Bool)

(assert (= bs!1105318 (and d!1501067 d!1500993)))

(assert (=> bs!1105318 (= lambda!214299 lambda!214272)))

(declare-fun bs!1105319 () Bool)

(assert (= bs!1105319 (and d!1501067 d!1501025)))

(assert (=> bs!1105319 (= lambda!214299 lambda!214293)))

(declare-fun bs!1105320 () Bool)

(assert (= bs!1105320 (and d!1501067 d!1500981)))

(assert (=> bs!1105320 (= lambda!214299 lambda!214260)))

(declare-fun bs!1105321 () Bool)

(assert (= bs!1105321 (and d!1501067 d!1500927)))

(assert (=> bs!1105321 (= lambda!214299 lambda!214208)))

(declare-fun bs!1105322 () Bool)

(assert (= bs!1105322 (and d!1501067 d!1500941)))

(assert (=> bs!1105322 (= lambda!214299 lambda!214211)))

(declare-fun bs!1105323 () Bool)

(assert (= bs!1105323 (and d!1501067 d!1501005)))

(assert (=> bs!1105323 (= lambda!214299 lambda!214277)))

(declare-fun bs!1105324 () Bool)

(assert (= bs!1105324 (and d!1501067 d!1500945)))

(assert (=> bs!1105324 (= lambda!214299 lambda!214218)))

(declare-fun bs!1105325 () Bool)

(assert (= bs!1105325 (and d!1501067 start!479766)))

(assert (=> bs!1105325 (= lambda!214299 lambda!214164)))

(declare-fun lt!1882804 () ListMap!5239)

(assert (=> d!1501067 (invariantList!1493 (toList!5875 lt!1882804))))

(declare-fun e!2941975 () ListMap!5239)

(assert (=> d!1501067 (= lt!1882804 e!2941975)))

(declare-fun c!805624 () Bool)

(assert (=> d!1501067 (= c!805624 (is-Cons!52772 (toList!5876 lm!2023)))))

(assert (=> d!1501067 (forall!11544 (toList!5876 lm!2023) lambda!214299)))

(assert (=> d!1501067 (= (extractMap!2019 (toList!5876 lm!2023)) lt!1882804)))

(declare-fun b!4717164 () Bool)

(assert (=> b!4717164 (= e!2941975 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (toList!5876 lm!2023))) (extractMap!2019 (t!360148 (toList!5876 lm!2023)))))))

(declare-fun b!4717165 () Bool)

(assert (=> b!4717165 (= e!2941975 (ListMap!5240 Nil!52771))))

(assert (= (and d!1501067 c!805624) b!4717164))

(assert (= (and d!1501067 (not c!805624)) b!4717165))

(declare-fun m!5648059 () Bool)

(assert (=> d!1501067 m!5648059))

(declare-fun m!5648063 () Bool)

(assert (=> d!1501067 m!5648063))

(assert (=> b!4717164 m!5647119))

(assert (=> b!4717164 m!5647119))

(declare-fun m!5648071 () Bool)

(assert (=> b!4717164 m!5648071))

(assert (=> b!4716807 d!1501067))

(declare-fun d!1501069 () Bool)

(declare-fun e!2941979 () Bool)

(assert (=> d!1501069 e!2941979))

(declare-fun res!1994940 () Bool)

(assert (=> d!1501069 (=> (not res!1994940) (not e!2941979))))

(declare-fun lt!1882808 () ListMap!5239)

(assert (=> d!1501069 (= res!1994940 (not (contains!16118 lt!1882808 key!4653)))))

(assert (=> d!1501069 (= lt!1882808 (ListMap!5240 (removePresrvNoDuplicatedKeys!396 (toList!5875 (+!2253 lt!1882208 (h!59100 oldBucket!34))) key!4653)))))

(assert (=> d!1501069 (= (-!749 (+!2253 lt!1882208 (h!59100 oldBucket!34)) key!4653) lt!1882808)))

(declare-fun b!4717169 () Bool)

(assert (=> b!4717169 (= e!2941979 (= (set.minus (content!9373 (keys!18937 (+!2253 lt!1882208 (h!59100 oldBucket!34)))) (set.insert key!4653 (as set.empty (Set K!14133)))) (content!9373 (keys!18937 lt!1882808))))))

(assert (= (and d!1501069 res!1994940) b!4717169))

(declare-fun m!5648079 () Bool)

(assert (=> d!1501069 m!5648079))

(declare-fun m!5648081 () Bool)

(assert (=> d!1501069 m!5648081))

(declare-fun m!5648083 () Bool)

(assert (=> b!4717169 m!5648083))

(declare-fun m!5648085 () Bool)

(assert (=> b!4717169 m!5648085))

(assert (=> b!4717169 m!5647833))

(declare-fun m!5648087 () Bool)

(assert (=> b!4717169 m!5648087))

(declare-fun m!5648089 () Bool)

(assert (=> b!4717169 m!5648089))

(assert (=> b!4717169 m!5647089))

(assert (=> b!4717169 m!5648083))

(assert (=> b!4717169 m!5648087))

(assert (=> b!4716796 d!1501069))

(declare-fun d!1501073 () Bool)

(declare-fun e!2941980 () Bool)

(assert (=> d!1501073 e!2941980))

(declare-fun res!1994941 () Bool)

(assert (=> d!1501073 (=> (not res!1994941) (not e!2941980))))

(declare-fun lt!1882810 () ListMap!5239)

(assert (=> d!1501073 (= res!1994941 (contains!16118 lt!1882810 (_1!30477 (h!59100 oldBucket!34))))))

(declare-fun lt!1882811 () List!52895)

(assert (=> d!1501073 (= lt!1882810 (ListMap!5240 lt!1882811))))

(declare-fun lt!1882809 () Unit!128867)

(declare-fun lt!1882812 () Unit!128867)

(assert (=> d!1501073 (= lt!1882809 lt!1882812)))

(assert (=> d!1501073 (= (getValueByKey!1933 lt!1882811 (_1!30477 (h!59100 oldBucket!34))) (Some!12334 (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501073 (= lt!1882812 (lemmaContainsTupThenGetReturnValue!1075 lt!1882811 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501073 (= lt!1882811 (insertNoDuplicatedKeys!583 (toList!5875 lt!1882208) (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501073 (= (+!2253 lt!1882208 (h!59100 oldBucket!34)) lt!1882810)))

(declare-fun b!4717170 () Bool)

(declare-fun res!1994942 () Bool)

(assert (=> b!4717170 (=> (not res!1994942) (not e!2941980))))

(assert (=> b!4717170 (= res!1994942 (= (getValueByKey!1933 (toList!5875 lt!1882810) (_1!30477 (h!59100 oldBucket!34))) (Some!12334 (_2!30477 (h!59100 oldBucket!34)))))))

(declare-fun b!4717171 () Bool)

(assert (=> b!4717171 (= e!2941980 (contains!16124 (toList!5875 lt!1882810) (h!59100 oldBucket!34)))))

(assert (= (and d!1501073 res!1994941) b!4717170))

(assert (= (and b!4717170 res!1994942) b!4717171))

(declare-fun m!5648091 () Bool)

(assert (=> d!1501073 m!5648091))

(declare-fun m!5648093 () Bool)

(assert (=> d!1501073 m!5648093))

(declare-fun m!5648095 () Bool)

(assert (=> d!1501073 m!5648095))

(declare-fun m!5648097 () Bool)

(assert (=> d!1501073 m!5648097))

(declare-fun m!5648099 () Bool)

(assert (=> b!4717170 m!5648099))

(declare-fun m!5648101 () Bool)

(assert (=> b!4717171 m!5648101))

(assert (=> b!4716796 d!1501073))

(declare-fun d!1501075 () Bool)

(assert (=> d!1501075 (= (-!749 (+!2253 lt!1882208 (tuple2!54367 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34)))) key!4653) (+!2253 (-!749 lt!1882208 key!4653) (tuple2!54367 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34)))))))

(declare-fun lt!1882822 () Unit!128867)

(declare-fun choose!33242 (ListMap!5239 K!14133 V!14379 K!14133) Unit!128867)

(assert (=> d!1501075 (= lt!1882822 (choose!33242 lt!1882208 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34)) key!4653))))

(assert (=> d!1501075 (not (= (_1!30477 (h!59100 oldBucket!34)) key!4653))))

(assert (=> d!1501075 (= (addRemoveCommutativeForDiffKeys!140 lt!1882208 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34)) key!4653) lt!1882822)))

(declare-fun bs!1105329 () Bool)

(assert (= bs!1105329 d!1501075))

(declare-fun m!5648123 () Bool)

(assert (=> bs!1105329 m!5648123))

(assert (=> bs!1105329 m!5648123))

(declare-fun m!5648125 () Bool)

(assert (=> bs!1105329 m!5648125))

(assert (=> bs!1105329 m!5647077))

(declare-fun m!5648127 () Bool)

(assert (=> bs!1105329 m!5648127))

(declare-fun m!5648129 () Bool)

(assert (=> bs!1105329 m!5648129))

(assert (=> bs!1105329 m!5647077))

(assert (=> b!4716796 d!1501075))

(declare-fun d!1501085 () Bool)

(declare-fun e!2941982 () Bool)

(assert (=> d!1501085 e!2941982))

(declare-fun res!1994945 () Bool)

(assert (=> d!1501085 (=> (not res!1994945) (not e!2941982))))

(declare-fun lt!1882824 () ListMap!5239)

(assert (=> d!1501085 (= res!1994945 (contains!16118 lt!1882824 (_1!30477 (h!59100 oldBucket!34))))))

(declare-fun lt!1882825 () List!52895)

(assert (=> d!1501085 (= lt!1882824 (ListMap!5240 lt!1882825))))

(declare-fun lt!1882823 () Unit!128867)

(declare-fun lt!1882826 () Unit!128867)

(assert (=> d!1501085 (= lt!1882823 lt!1882826)))

(assert (=> d!1501085 (= (getValueByKey!1933 lt!1882825 (_1!30477 (h!59100 oldBucket!34))) (Some!12334 (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501085 (= lt!1882826 (lemmaContainsTupThenGetReturnValue!1075 lt!1882825 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501085 (= lt!1882825 (insertNoDuplicatedKeys!583 (toList!5875 lt!1882187) (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501085 (= (+!2253 lt!1882187 (h!59100 oldBucket!34)) lt!1882824)))

(declare-fun b!4717174 () Bool)

(declare-fun res!1994946 () Bool)

(assert (=> b!4717174 (=> (not res!1994946) (not e!2941982))))

(assert (=> b!4717174 (= res!1994946 (= (getValueByKey!1933 (toList!5875 lt!1882824) (_1!30477 (h!59100 oldBucket!34))) (Some!12334 (_2!30477 (h!59100 oldBucket!34)))))))

(declare-fun b!4717175 () Bool)

(assert (=> b!4717175 (= e!2941982 (contains!16124 (toList!5875 lt!1882824) (h!59100 oldBucket!34)))))

(assert (= (and d!1501085 res!1994945) b!4717174))

(assert (= (and b!4717174 res!1994946) b!4717175))

(declare-fun m!5648131 () Bool)

(assert (=> d!1501085 m!5648131))

(declare-fun m!5648133 () Bool)

(assert (=> d!1501085 m!5648133))

(declare-fun m!5648135 () Bool)

(assert (=> d!1501085 m!5648135))

(declare-fun m!5648137 () Bool)

(assert (=> d!1501085 m!5648137))

(declare-fun m!5648139 () Bool)

(assert (=> b!4717174 m!5648139))

(declare-fun m!5648141 () Bool)

(assert (=> b!4717175 m!5648141))

(assert (=> b!4716796 d!1501085))

(declare-fun d!1501087 () Bool)

(declare-fun e!2941983 () Bool)

(assert (=> d!1501087 e!2941983))

(declare-fun res!1994947 () Bool)

(assert (=> d!1501087 (=> (not res!1994947) (not e!2941983))))

(declare-fun lt!1882827 () ListMap!5239)

(assert (=> d!1501087 (= res!1994947 (not (contains!16118 lt!1882827 key!4653)))))

(assert (=> d!1501087 (= lt!1882827 (ListMap!5240 (removePresrvNoDuplicatedKeys!396 (toList!5875 lt!1882214) key!4653)))))

(assert (=> d!1501087 (= (-!749 lt!1882214 key!4653) lt!1882827)))

(declare-fun b!4717176 () Bool)

(assert (=> b!4717176 (= e!2941983 (= (set.minus (content!9373 (keys!18937 lt!1882214)) (set.insert key!4653 (as set.empty (Set K!14133)))) (content!9373 (keys!18937 lt!1882827))))))

(assert (= (and d!1501087 res!1994947) b!4717176))

(declare-fun m!5648143 () Bool)

(assert (=> d!1501087 m!5648143))

(declare-fun m!5648145 () Bool)

(assert (=> d!1501087 m!5648145))

(declare-fun m!5648147 () Bool)

(assert (=> b!4717176 m!5648147))

(declare-fun m!5648149 () Bool)

(assert (=> b!4717176 m!5648149))

(assert (=> b!4717176 m!5647833))

(declare-fun m!5648151 () Bool)

(assert (=> b!4717176 m!5648151))

(declare-fun m!5648153 () Bool)

(assert (=> b!4717176 m!5648153))

(assert (=> b!4717176 m!5648147))

(assert (=> b!4717176 m!5648151))

(assert (=> b!4716796 d!1501087))

(declare-fun b!4717186 () Bool)

(declare-fun e!2941988 () List!52895)

(declare-fun e!2941989 () List!52895)

(assert (=> b!4717186 (= e!2941988 e!2941989)))

(declare-fun c!805630 () Bool)

(assert (=> b!4717186 (= c!805630 (is-Cons!52771 oldBucket!34))))

(declare-fun b!4717188 () Bool)

(assert (=> b!4717188 (= e!2941989 Nil!52771)))

(declare-fun d!1501089 () Bool)

(declare-fun lt!1882830 () List!52895)

(assert (=> d!1501089 (not (containsKey!3330 lt!1882830 key!4653))))

(assert (=> d!1501089 (= lt!1882830 e!2941988)))

(declare-fun c!805629 () Bool)

(assert (=> d!1501089 (= c!805629 (and (is-Cons!52771 oldBucket!34) (= (_1!30477 (h!59100 oldBucket!34)) key!4653)))))

(assert (=> d!1501089 (noDuplicateKeys!1993 oldBucket!34)))

(assert (=> d!1501089 (= (removePairForKey!1588 oldBucket!34 key!4653) lt!1882830)))

(declare-fun b!4717185 () Bool)

(assert (=> b!4717185 (= e!2941988 (t!360147 oldBucket!34))))

(declare-fun b!4717187 () Bool)

(assert (=> b!4717187 (= e!2941989 (Cons!52771 (h!59100 oldBucket!34) (removePairForKey!1588 (t!360147 oldBucket!34) key!4653)))))

(assert (= (and d!1501089 c!805629) b!4717185))

(assert (= (and d!1501089 (not c!805629)) b!4717186))

(assert (= (and b!4717186 c!805630) b!4717187))

(assert (= (and b!4717186 (not c!805630)) b!4717188))

(declare-fun m!5648155 () Bool)

(assert (=> d!1501089 m!5648155))

(assert (=> d!1501089 m!5647099))

(assert (=> b!4717187 m!5647129))

(assert (=> b!4716797 d!1501089))

(declare-fun b!4717190 () Bool)

(declare-fun e!2941990 () List!52895)

(declare-fun e!2941991 () List!52895)

(assert (=> b!4717190 (= e!2941990 e!2941991)))

(declare-fun c!805632 () Bool)

(assert (=> b!4717190 (= c!805632 (is-Cons!52771 (t!360147 oldBucket!34)))))

(declare-fun b!4717192 () Bool)

(assert (=> b!4717192 (= e!2941991 Nil!52771)))

(declare-fun d!1501091 () Bool)

(declare-fun lt!1882833 () List!52895)

(assert (=> d!1501091 (not (containsKey!3330 lt!1882833 key!4653))))

(assert (=> d!1501091 (= lt!1882833 e!2941990)))

(declare-fun c!805631 () Bool)

(assert (=> d!1501091 (= c!805631 (and (is-Cons!52771 (t!360147 oldBucket!34)) (= (_1!30477 (h!59100 (t!360147 oldBucket!34))) key!4653)))))

(assert (=> d!1501091 (noDuplicateKeys!1993 (t!360147 oldBucket!34))))

(assert (=> d!1501091 (= (removePairForKey!1588 (t!360147 oldBucket!34) key!4653) lt!1882833)))

(declare-fun b!4717189 () Bool)

(assert (=> b!4717189 (= e!2941990 (t!360147 (t!360147 oldBucket!34)))))

(declare-fun b!4717191 () Bool)

(assert (=> b!4717191 (= e!2941991 (Cons!52771 (h!59100 (t!360147 oldBucket!34)) (removePairForKey!1588 (t!360147 (t!360147 oldBucket!34)) key!4653)))))

(assert (= (and d!1501091 c!805631) b!4717189))

(assert (= (and d!1501091 (not c!805631)) b!4717190))

(assert (= (and b!4717190 c!805632) b!4717191))

(assert (= (and b!4717190 (not c!805632)) b!4717192))

(declare-fun m!5648157 () Bool)

(assert (=> d!1501091 m!5648157))

(declare-fun m!5648159 () Bool)

(assert (=> d!1501091 m!5648159))

(declare-fun m!5648161 () Bool)

(assert (=> b!4717191 m!5648161))

(assert (=> b!4716818 d!1501091))

(declare-fun d!1501093 () Bool)

(assert (=> d!1501093 (= (eq!1120 lt!1882213 (extractMap!2019 (Cons!52772 (tuple2!54369 hash!405 newBucket!218) (t!360148 (toList!5876 lm!2023))))) (= (content!9370 (toList!5875 lt!1882213)) (content!9370 (toList!5875 (extractMap!2019 (Cons!52772 (tuple2!54369 hash!405 newBucket!218) (t!360148 (toList!5876 lm!2023))))))))))

(declare-fun bs!1105330 () Bool)

(assert (= bs!1105330 d!1501093))

(declare-fun m!5648163 () Bool)

(assert (=> bs!1105330 m!5648163))

(declare-fun m!5648165 () Bool)

(assert (=> bs!1105330 m!5648165))

(assert (=> b!4716819 d!1501093))

(declare-fun bs!1105332 () Bool)

(declare-fun d!1501095 () Bool)

(assert (= bs!1105332 (and d!1501095 d!1501017)))

(declare-fun lambda!214300 () Int)

(assert (=> bs!1105332 (= lambda!214300 lambda!214286)))

(declare-fun bs!1105333 () Bool)

(assert (= bs!1105333 (and d!1501095 d!1501019)))

(assert (=> bs!1105333 (= lambda!214300 lambda!214288)))

(declare-fun bs!1105334 () Bool)

(assert (= bs!1105334 (and d!1501095 d!1500987)))

(assert (=> bs!1105334 (= lambda!214300 lambda!214271)))

(declare-fun bs!1105335 () Bool)

(assert (= bs!1105335 (and d!1501095 d!1500959)))

(assert (=> bs!1105335 (= lambda!214300 lambda!214219)))

(declare-fun bs!1105336 () Bool)

(assert (= bs!1105336 (and d!1501095 d!1500993)))

(assert (=> bs!1105336 (= lambda!214300 lambda!214272)))

(declare-fun bs!1105337 () Bool)

(assert (= bs!1105337 (and d!1501095 d!1501025)))

(assert (=> bs!1105337 (= lambda!214300 lambda!214293)))

(declare-fun bs!1105338 () Bool)

(assert (= bs!1105338 (and d!1501095 d!1501067)))

(assert (=> bs!1105338 (= lambda!214300 lambda!214299)))

(declare-fun bs!1105339 () Bool)

(assert (= bs!1105339 (and d!1501095 d!1500981)))

(assert (=> bs!1105339 (= lambda!214300 lambda!214260)))

(declare-fun bs!1105340 () Bool)

(assert (= bs!1105340 (and d!1501095 d!1500927)))

(assert (=> bs!1105340 (= lambda!214300 lambda!214208)))

(declare-fun bs!1105341 () Bool)

(assert (= bs!1105341 (and d!1501095 d!1500941)))

(assert (=> bs!1105341 (= lambda!214300 lambda!214211)))

(declare-fun bs!1105342 () Bool)

(assert (= bs!1105342 (and d!1501095 d!1501005)))

(assert (=> bs!1105342 (= lambda!214300 lambda!214277)))

(declare-fun bs!1105343 () Bool)

(assert (= bs!1105343 (and d!1501095 d!1500945)))

(assert (=> bs!1105343 (= lambda!214300 lambda!214218)))

(declare-fun bs!1105344 () Bool)

(assert (= bs!1105344 (and d!1501095 start!479766)))

(assert (=> bs!1105344 (= lambda!214300 lambda!214164)))

(declare-fun lt!1882835 () ListMap!5239)

(assert (=> d!1501095 (invariantList!1493 (toList!5875 lt!1882835))))

(declare-fun e!2941992 () ListMap!5239)

(assert (=> d!1501095 (= lt!1882835 e!2941992)))

(declare-fun c!805633 () Bool)

(assert (=> d!1501095 (= c!805633 (is-Cons!52772 (Cons!52772 (tuple2!54369 hash!405 newBucket!218) (t!360148 (toList!5876 lm!2023)))))))

(assert (=> d!1501095 (forall!11544 (Cons!52772 (tuple2!54369 hash!405 newBucket!218) (t!360148 (toList!5876 lm!2023))) lambda!214300)))

(assert (=> d!1501095 (= (extractMap!2019 (Cons!52772 (tuple2!54369 hash!405 newBucket!218) (t!360148 (toList!5876 lm!2023)))) lt!1882835)))

(declare-fun b!4717193 () Bool)

(assert (=> b!4717193 (= e!2941992 (addToMapMapFromBucket!1423 (_2!30478 (h!59101 (Cons!52772 (tuple2!54369 hash!405 newBucket!218) (t!360148 (toList!5876 lm!2023))))) (extractMap!2019 (t!360148 (Cons!52772 (tuple2!54369 hash!405 newBucket!218) (t!360148 (toList!5876 lm!2023)))))))))

(declare-fun b!4717194 () Bool)

(assert (=> b!4717194 (= e!2941992 (ListMap!5240 Nil!52771))))

(assert (= (and d!1501095 c!805633) b!4717193))

(assert (= (and d!1501095 (not c!805633)) b!4717194))

(declare-fun m!5648199 () Bool)

(assert (=> d!1501095 m!5648199))

(declare-fun m!5648203 () Bool)

(assert (=> d!1501095 m!5648203))

(declare-fun m!5648207 () Bool)

(assert (=> b!4717193 m!5648207))

(assert (=> b!4717193 m!5648207))

(declare-fun m!5648215 () Bool)

(assert (=> b!4717193 m!5648215))

(assert (=> b!4716819 d!1501095))

(declare-fun bs!1105345 () Bool)

(declare-fun d!1501105 () Bool)

(assert (= bs!1105345 (and d!1501105 b!4717114)))

(declare-fun lambda!214303 () Int)

(assert (=> bs!1105345 (not (= lambda!214303 lambda!214274))))

(declare-fun bs!1105346 () Bool)

(assert (= bs!1105346 (and d!1501105 b!4717049)))

(assert (=> bs!1105346 (not (= lambda!214303 lambda!214226))))

(assert (=> bs!1105346 (not (= lambda!214303 lambda!214225))))

(declare-fun bs!1105347 () Bool)

(assert (= bs!1105347 (and d!1501105 d!1500915)))

(assert (=> bs!1105347 (not (= lambda!214303 lambda!214205))))

(declare-fun bs!1105348 () Bool)

(assert (= bs!1105348 (and d!1501105 d!1500971)))

(assert (=> bs!1105348 (not (= lambda!214303 lambda!214227))))

(declare-fun bs!1105349 () Bool)

(assert (= bs!1105349 (and d!1501105 d!1500961)))

(assert (=> bs!1105349 (not (= lambda!214303 lambda!214223))))

(declare-fun bs!1105350 () Bool)

(assert (= bs!1105350 (and d!1501105 b!4717054)))

(assert (=> bs!1105350 (not (= lambda!214303 lambda!214229))))

(assert (=> bs!1105350 (not (= lambda!214303 lambda!214230))))

(declare-fun bs!1105351 () Bool)

(assert (= bs!1105351 (and d!1501105 b!4717048)))

(assert (=> bs!1105351 (not (= lambda!214303 lambda!214224))))

(declare-fun bs!1105352 () Bool)

(assert (= bs!1105352 (and d!1501105 b!4716935)))

(assert (=> bs!1105352 (not (= lambda!214303 lambda!214204))))

(declare-fun bs!1105353 () Bool)

(assert (= bs!1105353 (and d!1501105 b!4717039)))

(assert (=> bs!1105353 (not (= lambda!214303 lambda!214220))))

(assert (=> bs!1105345 (not (= lambda!214303 lambda!214275))))

(declare-fun bs!1105354 () Bool)

(assert (= bs!1105354 (and d!1501105 b!4717113)))

(assert (=> bs!1105354 (not (= lambda!214303 lambda!214273))))

(declare-fun bs!1105355 () Bool)

(assert (= bs!1105355 (and d!1501105 b!4717040)))

(assert (=> bs!1105355 (not (= lambda!214303 lambda!214221))))

(declare-fun bs!1105356 () Bool)

(assert (= bs!1105356 (and d!1501105 d!1500975)))

(assert (=> bs!1105356 (not (= lambda!214303 lambda!214231))))

(declare-fun bs!1105357 () Bool)

(assert (= bs!1105357 (and d!1501105 d!1501001)))

(assert (=> bs!1105357 (not (= lambda!214303 lambda!214276))))

(assert (=> bs!1105355 (not (= lambda!214303 lambda!214222))))

(declare-fun bs!1105358 () Bool)

(assert (= bs!1105358 (and d!1501105 b!4717053)))

(assert (=> bs!1105358 (not (= lambda!214303 lambda!214228))))

(declare-fun bs!1105359 () Bool)

(assert (= bs!1105359 (and d!1501105 b!4716934)))

(assert (=> bs!1105359 (not (= lambda!214303 lambda!214202))))

(assert (=> bs!1105352 (not (= lambda!214303 lambda!214203))))

(assert (=> d!1501105 true))

(assert (=> d!1501105 true))

(assert (=> d!1501105 (= (allKeysSameHash!1819 oldBucket!34 hash!405 hashF!1323) (forall!11546 oldBucket!34 lambda!214303))))

(declare-fun bs!1105360 () Bool)

(assert (= bs!1105360 d!1501105))

(declare-fun m!5648231 () Bool)

(assert (=> bs!1105360 m!5648231))

(assert (=> b!4716808 d!1501105))

(declare-fun d!1501111 () Bool)

(declare-fun res!1994954 () Bool)

(declare-fun e!2942001 () Bool)

(assert (=> d!1501111 (=> res!1994954 e!2942001)))

(assert (=> d!1501111 (= res!1994954 (not (is-Cons!52771 oldBucket!34)))))

(assert (=> d!1501111 (= (noDuplicateKeys!1993 oldBucket!34) e!2942001)))

(declare-fun b!4717213 () Bool)

(declare-fun e!2942002 () Bool)

(assert (=> b!4717213 (= e!2942001 e!2942002)))

(declare-fun res!1994955 () Bool)

(assert (=> b!4717213 (=> (not res!1994955) (not e!2942002))))

(assert (=> b!4717213 (= res!1994955 (not (containsKey!3330 (t!360147 oldBucket!34) (_1!30477 (h!59100 oldBucket!34)))))))

(declare-fun b!4717214 () Bool)

(assert (=> b!4717214 (= e!2942002 (noDuplicateKeys!1993 (t!360147 oldBucket!34)))))

(assert (= (and d!1501111 (not res!1994954)) b!4717213))

(assert (= (and b!4717213 res!1994955) b!4717214))

(declare-fun m!5648233 () Bool)

(assert (=> b!4717213 m!5648233))

(assert (=> b!4717214 m!5648159))

(assert (=> b!4716809 d!1501111))

(declare-fun bs!1105361 () Bool)

(declare-fun d!1501113 () Bool)

(assert (= bs!1105361 (and d!1501113 d!1501017)))

(declare-fun lambda!214306 () Int)

(assert (=> bs!1105361 (not (= lambda!214306 lambda!214286))))

(declare-fun bs!1105362 () Bool)

(assert (= bs!1105362 (and d!1501113 d!1501019)))

(assert (=> bs!1105362 (not (= lambda!214306 lambda!214288))))

(declare-fun bs!1105363 () Bool)

(assert (= bs!1105363 (and d!1501113 d!1500987)))

(assert (=> bs!1105363 (not (= lambda!214306 lambda!214271))))

(declare-fun bs!1105364 () Bool)

(assert (= bs!1105364 (and d!1501113 d!1500959)))

(assert (=> bs!1105364 (not (= lambda!214306 lambda!214219))))

(declare-fun bs!1105365 () Bool)

(assert (= bs!1105365 (and d!1501113 d!1500993)))

(assert (=> bs!1105365 (not (= lambda!214306 lambda!214272))))

(declare-fun bs!1105366 () Bool)

(assert (= bs!1105366 (and d!1501113 d!1501025)))

(assert (=> bs!1105366 (not (= lambda!214306 lambda!214293))))

(declare-fun bs!1105367 () Bool)

(assert (= bs!1105367 (and d!1501113 d!1501067)))

(assert (=> bs!1105367 (not (= lambda!214306 lambda!214299))))

(declare-fun bs!1105368 () Bool)

(assert (= bs!1105368 (and d!1501113 d!1500981)))

(assert (=> bs!1105368 (not (= lambda!214306 lambda!214260))))

(declare-fun bs!1105369 () Bool)

(assert (= bs!1105369 (and d!1501113 d!1500927)))

(assert (=> bs!1105369 (not (= lambda!214306 lambda!214208))))

(declare-fun bs!1105370 () Bool)

(assert (= bs!1105370 (and d!1501113 d!1500941)))

(assert (=> bs!1105370 (not (= lambda!214306 lambda!214211))))

(declare-fun bs!1105371 () Bool)

(assert (= bs!1105371 (and d!1501113 d!1501005)))

(assert (=> bs!1105371 (not (= lambda!214306 lambda!214277))))

(declare-fun bs!1105372 () Bool)

(assert (= bs!1105372 (and d!1501113 d!1500945)))

(assert (=> bs!1105372 (not (= lambda!214306 lambda!214218))))

(declare-fun bs!1105373 () Bool)

(assert (= bs!1105373 (and d!1501113 d!1501095)))

(assert (=> bs!1105373 (not (= lambda!214306 lambda!214300))))

(declare-fun bs!1105374 () Bool)

(assert (= bs!1105374 (and d!1501113 start!479766)))

(assert (=> bs!1105374 (not (= lambda!214306 lambda!214164))))

(assert (=> d!1501113 true))

(assert (=> d!1501113 (= (allKeysSameHashInMap!1907 lm!2023 hashF!1323) (forall!11544 (toList!5876 lm!2023) lambda!214306))))

(declare-fun bs!1105376 () Bool)

(assert (= bs!1105376 d!1501113))

(declare-fun m!5648243 () Bool)

(assert (=> bs!1105376 m!5648243))

(assert (=> b!4716798 d!1501113))

(declare-fun bs!1105377 () Bool)

(declare-fun d!1501123 () Bool)

(assert (= bs!1105377 (and d!1501123 b!4717114)))

(declare-fun lambda!214307 () Int)

(assert (=> bs!1105377 (not (= lambda!214307 lambda!214274))))

(declare-fun bs!1105378 () Bool)

(assert (= bs!1105378 (and d!1501123 b!4717049)))

(assert (=> bs!1105378 (not (= lambda!214307 lambda!214226))))

(assert (=> bs!1105378 (not (= lambda!214307 lambda!214225))))

(declare-fun bs!1105379 () Bool)

(assert (= bs!1105379 (and d!1501123 d!1500915)))

(assert (=> bs!1105379 (not (= lambda!214307 lambda!214205))))

(declare-fun bs!1105380 () Bool)

(assert (= bs!1105380 (and d!1501123 d!1500971)))

(assert (=> bs!1105380 (not (= lambda!214307 lambda!214227))))

(declare-fun bs!1105381 () Bool)

(assert (= bs!1105381 (and d!1501123 d!1500961)))

(assert (=> bs!1105381 (not (= lambda!214307 lambda!214223))))

(declare-fun bs!1105382 () Bool)

(assert (= bs!1105382 (and d!1501123 b!4717054)))

(assert (=> bs!1105382 (not (= lambda!214307 lambda!214230))))

(declare-fun bs!1105383 () Bool)

(assert (= bs!1105383 (and d!1501123 b!4717048)))

(assert (=> bs!1105383 (not (= lambda!214307 lambda!214224))))

(declare-fun bs!1105384 () Bool)

(assert (= bs!1105384 (and d!1501123 b!4716935)))

(assert (=> bs!1105384 (not (= lambda!214307 lambda!214204))))

(declare-fun bs!1105385 () Bool)

(assert (= bs!1105385 (and d!1501123 b!4717039)))

(assert (=> bs!1105385 (not (= lambda!214307 lambda!214220))))

(assert (=> bs!1105377 (not (= lambda!214307 lambda!214275))))

(declare-fun bs!1105386 () Bool)

(assert (= bs!1105386 (and d!1501123 b!4717113)))

(assert (=> bs!1105386 (not (= lambda!214307 lambda!214273))))

(declare-fun bs!1105387 () Bool)

(assert (= bs!1105387 (and d!1501123 b!4717040)))

(assert (=> bs!1105387 (not (= lambda!214307 lambda!214221))))

(declare-fun bs!1105388 () Bool)

(assert (= bs!1105388 (and d!1501123 d!1500975)))

(assert (=> bs!1105388 (not (= lambda!214307 lambda!214231))))

(declare-fun bs!1105389 () Bool)

(assert (= bs!1105389 (and d!1501123 d!1501001)))

(assert (=> bs!1105389 (not (= lambda!214307 lambda!214276))))

(assert (=> bs!1105387 (not (= lambda!214307 lambda!214222))))

(declare-fun bs!1105390 () Bool)

(assert (= bs!1105390 (and d!1501123 b!4717053)))

(assert (=> bs!1105390 (not (= lambda!214307 lambda!214228))))

(declare-fun bs!1105391 () Bool)

(assert (= bs!1105391 (and d!1501123 b!4716934)))

(assert (=> bs!1105391 (not (= lambda!214307 lambda!214202))))

(assert (=> bs!1105384 (not (= lambda!214307 lambda!214203))))

(assert (=> bs!1105382 (not (= lambda!214307 lambda!214229))))

(declare-fun bs!1105392 () Bool)

(assert (= bs!1105392 (and d!1501123 d!1501105)))

(assert (=> bs!1105392 (= lambda!214307 lambda!214303)))

(assert (=> d!1501123 true))

(assert (=> d!1501123 true))

(assert (=> d!1501123 (= (allKeysSameHash!1819 newBucket!218 hash!405 hashF!1323) (forall!11546 newBucket!218 lambda!214307))))

(declare-fun bs!1105393 () Bool)

(assert (= bs!1105393 d!1501123))

(declare-fun m!5648245 () Bool)

(assert (=> bs!1105393 m!5648245))

(assert (=> b!4716799 d!1501123))

(declare-fun d!1501125 () Bool)

(assert (=> d!1501125 (= (eq!1120 lt!1882211 lt!1882213) (= (content!9370 (toList!5875 lt!1882211)) (content!9370 (toList!5875 lt!1882213))))))

(declare-fun bs!1105394 () Bool)

(assert (= bs!1105394 d!1501125))

(assert (=> bs!1105394 m!5647803))

(assert (=> bs!1105394 m!5648163))

(assert (=> b!4716810 d!1501125))

(declare-fun d!1501127 () Bool)

(declare-fun e!2942007 () Bool)

(assert (=> d!1501127 e!2942007))

(declare-fun res!1994958 () Bool)

(assert (=> d!1501127 (=> (not res!1994958) (not e!2942007))))

(declare-fun lt!1882852 () ListMap!5239)

(assert (=> d!1501127 (= res!1994958 (contains!16118 lt!1882852 (_1!30477 (h!59100 oldBucket!34))))))

(declare-fun lt!1882853 () List!52895)

(assert (=> d!1501127 (= lt!1882852 (ListMap!5240 lt!1882853))))

(declare-fun lt!1882851 () Unit!128867)

(declare-fun lt!1882854 () Unit!128867)

(assert (=> d!1501127 (= lt!1882851 lt!1882854)))

(assert (=> d!1501127 (= (getValueByKey!1933 lt!1882853 (_1!30477 (h!59100 oldBucket!34))) (Some!12334 (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501127 (= lt!1882854 (lemmaContainsTupThenGetReturnValue!1075 lt!1882853 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501127 (= lt!1882853 (insertNoDuplicatedKeys!583 (toList!5875 lt!1882201) (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501127 (= (+!2253 lt!1882201 (h!59100 oldBucket!34)) lt!1882852)))

(declare-fun b!4717223 () Bool)

(declare-fun res!1994959 () Bool)

(assert (=> b!4717223 (=> (not res!1994959) (not e!2942007))))

(assert (=> b!4717223 (= res!1994959 (= (getValueByKey!1933 (toList!5875 lt!1882852) (_1!30477 (h!59100 oldBucket!34))) (Some!12334 (_2!30477 (h!59100 oldBucket!34)))))))

(declare-fun b!4717224 () Bool)

(assert (=> b!4717224 (= e!2942007 (contains!16124 (toList!5875 lt!1882852) (h!59100 oldBucket!34)))))

(assert (= (and d!1501127 res!1994958) b!4717223))

(assert (= (and b!4717223 res!1994959) b!4717224))

(declare-fun m!5648247 () Bool)

(assert (=> d!1501127 m!5648247))

(declare-fun m!5648249 () Bool)

(assert (=> d!1501127 m!5648249))

(declare-fun m!5648251 () Bool)

(assert (=> d!1501127 m!5648251))

(declare-fun m!5648253 () Bool)

(assert (=> d!1501127 m!5648253))

(declare-fun m!5648255 () Bool)

(assert (=> b!4717223 m!5648255))

(declare-fun m!5648257 () Bool)

(assert (=> b!4717224 m!5648257))

(assert (=> b!4716810 d!1501127))

(declare-fun d!1501129 () Bool)

(assert (=> d!1501129 (= (eq!1120 lt!1882192 (+!2253 lt!1882201 (h!59100 oldBucket!34))) (= (content!9370 (toList!5875 lt!1882192)) (content!9370 (toList!5875 (+!2253 lt!1882201 (h!59100 oldBucket!34))))))))

(declare-fun bs!1105395 () Bool)

(assert (= bs!1105395 d!1501129))

(declare-fun m!5648261 () Bool)

(assert (=> bs!1105395 m!5648261))

(declare-fun m!5648265 () Bool)

(assert (=> bs!1105395 m!5648265))

(assert (=> b!4716810 d!1501129))

(declare-fun d!1501131 () Bool)

(assert (=> d!1501131 (eq!1120 (+!2253 lt!1882187 (tuple2!54367 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34)))) (+!2253 lt!1882201 (tuple2!54367 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34)))))))

(declare-fun lt!1882861 () Unit!128867)

(declare-fun choose!33244 (ListMap!5239 ListMap!5239 K!14133 V!14379) Unit!128867)

(assert (=> d!1501131 (= lt!1882861 (choose!33244 lt!1882187 lt!1882201 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))))))

(assert (=> d!1501131 (eq!1120 lt!1882187 lt!1882201)))

(assert (=> d!1501131 (= (lemmaAddToEqMapsPreservesEq!111 lt!1882187 lt!1882201 (_1!30477 (h!59100 oldBucket!34)) (_2!30477 (h!59100 oldBucket!34))) lt!1882861)))

(declare-fun bs!1105396 () Bool)

(assert (= bs!1105396 d!1501131))

(declare-fun m!5648271 () Bool)

(assert (=> bs!1105396 m!5648271))

(assert (=> bs!1105396 m!5648271))

(declare-fun m!5648283 () Bool)

(assert (=> bs!1105396 m!5648283))

(declare-fun m!5648285 () Bool)

(assert (=> bs!1105396 m!5648285))

(declare-fun m!5648287 () Bool)

(assert (=> bs!1105396 m!5648287))

(assert (=> bs!1105396 m!5648283))

(declare-fun m!5648289 () Bool)

(assert (=> bs!1105396 m!5648289))

(assert (=> b!4716810 d!1501131))

(declare-fun b!4717251 () Bool)

(declare-fun e!2942024 () List!52895)

(declare-fun e!2942025 () List!52895)

(assert (=> b!4717251 (= e!2942024 e!2942025)))

(declare-fun c!805647 () Bool)

(assert (=> b!4717251 (= c!805647 (is-Cons!52771 lt!1882182))))

(declare-fun b!4717253 () Bool)

(assert (=> b!4717253 (= e!2942025 Nil!52771)))

(declare-fun d!1501137 () Bool)

(declare-fun lt!1882862 () List!52895)

(assert (=> d!1501137 (not (containsKey!3330 lt!1882862 key!4653))))

(assert (=> d!1501137 (= lt!1882862 e!2942024)))

(declare-fun c!805646 () Bool)

(assert (=> d!1501137 (= c!805646 (and (is-Cons!52771 lt!1882182) (= (_1!30477 (h!59100 lt!1882182)) key!4653)))))

(assert (=> d!1501137 (noDuplicateKeys!1993 lt!1882182)))

(assert (=> d!1501137 (= (removePairForKey!1588 lt!1882182 key!4653) lt!1882862)))

(declare-fun b!4717250 () Bool)

(assert (=> b!4717250 (= e!2942024 (t!360147 lt!1882182))))

(declare-fun b!4717252 () Bool)

(assert (=> b!4717252 (= e!2942025 (Cons!52771 (h!59100 lt!1882182) (removePairForKey!1588 (t!360147 lt!1882182) key!4653)))))

(assert (= (and d!1501137 c!805646) b!4717250))

(assert (= (and d!1501137 (not c!805646)) b!4717251))

(assert (= (and b!4717251 c!805647) b!4717252))

(assert (= (and b!4717251 (not c!805647)) b!4717253))

(declare-fun m!5648291 () Bool)

(assert (=> d!1501137 m!5648291))

(assert (=> d!1501137 m!5647671))

(declare-fun m!5648293 () Bool)

(assert (=> b!4717252 m!5648293))

(assert (=> b!4716811 d!1501137))

(declare-fun d!1501139 () Bool)

(assert (=> d!1501139 (= (tail!8955 newBucket!218) (t!360147 newBucket!218))))

(assert (=> b!4716811 d!1501139))

(declare-fun d!1501141 () Bool)

(assert (=> d!1501141 (= (tail!8955 oldBucket!34) (t!360147 oldBucket!34))))

(assert (=> b!4716811 d!1501141))

(declare-fun d!1501143 () Bool)

(declare-fun res!1994977 () Bool)

(declare-fun e!2942030 () Bool)

(assert (=> d!1501143 (=> res!1994977 e!2942030)))

(assert (=> d!1501143 (= res!1994977 (is-Nil!52772 (toList!5876 lm!2023)))))

(assert (=> d!1501143 (= (forall!11544 (toList!5876 lm!2023) lambda!214164) e!2942030)))

(declare-fun b!4717259 () Bool)

(declare-fun e!2942031 () Bool)

(assert (=> b!4717259 (= e!2942030 e!2942031)))

(declare-fun res!1994978 () Bool)

(assert (=> b!4717259 (=> (not res!1994978) (not e!2942031))))

(assert (=> b!4717259 (= res!1994978 (dynLambda!21796 lambda!214164 (h!59101 (toList!5876 lm!2023))))))

(declare-fun b!4717260 () Bool)

(assert (=> b!4717260 (= e!2942031 (forall!11544 (t!360148 (toList!5876 lm!2023)) lambda!214164))))

(assert (= (and d!1501143 (not res!1994977)) b!4717259))

(assert (= (and b!4717259 res!1994978) b!4717260))

(declare-fun b_lambda!177793 () Bool)

(assert (=> (not b_lambda!177793) (not b!4717259)))

(declare-fun m!5648299 () Bool)

(assert (=> b!4717259 m!5648299))

(declare-fun m!5648301 () Bool)

(assert (=> b!4717260 m!5648301))

(assert (=> start!479766 d!1501143))

(declare-fun d!1501147 () Bool)

(declare-fun isStrictlySorted!732 (List!52896) Bool)

(assert (=> d!1501147 (= (inv!68008 lm!2023) (isStrictlySorted!732 (toList!5876 lm!2023)))))

(declare-fun bs!1105398 () Bool)

(assert (= bs!1105398 d!1501147))

(declare-fun m!5648303 () Bool)

(assert (=> bs!1105398 m!5648303))

(assert (=> start!479766 d!1501147))

(declare-fun tp!1348020 () Bool)

(declare-fun e!2942034 () Bool)

(declare-fun b!4717265 () Bool)

(assert (=> b!4717265 (= e!2942034 (and tp_is_empty!31265 tp_is_empty!31267 tp!1348020))))

(assert (=> b!4716802 (= tp!1348007 e!2942034)))

(assert (= (and b!4716802 (is-Cons!52771 (t!360147 newBucket!218))) b!4717265))

(declare-fun b!4717270 () Bool)

(declare-fun e!2942037 () Bool)

(declare-fun tp!1348025 () Bool)

(declare-fun tp!1348026 () Bool)

(assert (=> b!4717270 (= e!2942037 (and tp!1348025 tp!1348026))))

(assert (=> b!4716805 (= tp!1348008 e!2942037)))

(assert (= (and b!4716805 (is-Cons!52772 (toList!5876 lm!2023))) b!4717270))

(declare-fun b!4717271 () Bool)

(declare-fun e!2942038 () Bool)

(declare-fun tp!1348027 () Bool)

(assert (=> b!4717271 (= e!2942038 (and tp_is_empty!31265 tp_is_empty!31267 tp!1348027))))

(assert (=> b!4716800 (= tp!1348006 e!2942038)))

(assert (= (and b!4716800 (is-Cons!52771 (t!360147 oldBucket!34))) b!4717271))

(declare-fun b_lambda!177795 () Bool)

(assert (= b_lambda!177793 (or start!479766 b_lambda!177795)))

(declare-fun bs!1105399 () Bool)

(declare-fun d!1501149 () Bool)

(assert (= bs!1105399 (and d!1501149 start!479766)))

(assert (=> bs!1105399 (= (dynLambda!21796 lambda!214164 (h!59101 (toList!5876 lm!2023))) (noDuplicateKeys!1993 (_2!30478 (h!59101 (toList!5876 lm!2023)))))))

(assert (=> bs!1105399 m!5647393))

(assert (=> b!4717259 d!1501149))

(declare-fun b_lambda!177797 () Bool)

(assert (= b_lambda!177789 (or start!479766 b_lambda!177797)))

(declare-fun bs!1105400 () Bool)

(declare-fun d!1501151 () Bool)

(assert (= bs!1105400 (and d!1501151 start!479766)))

(assert (=> bs!1105400 (= (dynLambda!21796 lambda!214164 lt!1882207) (noDuplicateKeys!1993 (_2!30478 lt!1882207)))))

(declare-fun m!5648305 () Bool)

(assert (=> bs!1105400 m!5648305))

(assert (=> d!1500947 d!1501151))

(push 1)

(assert (not b!4717054))

(assert (not b!4717252))

(assert (not d!1501089))

(assert (not b!4716997))

(assert (not bm!329760))

(assert (not b!4717038))

(assert (not b!4717134))

(assert (not bm!329792))

(assert (not b!4717055))

(assert (not b!4717125))

(assert (not b!4717083))

(assert (not d!1501063))

(assert (not d!1501007))

(assert (not d!1500979))

(assert (not b!4717162))

(assert (not b!4717086))

(assert (not bm!329765))

(assert (not b!4717191))

(assert (not b!4717037))

(assert (not d!1500915))

(assert (not d!1501023))

(assert (not b!4717044))

(assert (not d!1500927))

(assert (not d!1500969))

(assert (not b!4717111))

(assert (not b!4717040))

(assert (not d!1501127))

(assert (not b!4717159))

(assert (not b!4717224))

(assert (not b!4716996))

(assert (not d!1500937))

(assert (not b!4717116))

(assert (not bm!329784))

(assert (not b!4716907))

(assert (not b!4717187))

(assert (not b!4717027))

(assert (not b!4716935))

(assert tp_is_empty!31265)

(assert (not bm!329759))

(assert (not b!4716913))

(assert (not d!1500907))

(assert (not d!1501105))

(assert (not b!4717094))

(assert (not b!4717114))

(assert (not b!4717132))

(assert (not d!1501123))

(assert (not d!1500987))

(assert (not b!4717223))

(assert (not d!1501021))

(assert (not b!4717002))

(assert (not d!1501113))

(assert (not b!4717028))

(assert (not b!4717042))

(assert (not b!4717052))

(assert (not b!4716969))

(assert (not d!1501147))

(assert (not bm!329755))

(assert (not d!1500977))

(assert (not d!1501025))

(assert (not d!1501085))

(assert (not b!4717095))

(assert (not d!1500935))

(assert (not d!1501065))

(assert (not b!4717175))

(assert (not bm!329785))

(assert (not b!4717156))

(assert (not d!1500911))

(assert (not b!4717169))

(assert (not d!1501053))

(assert (not b!4717081))

(assert (not d!1500997))

(assert (not bm!329776))

(assert (not b!4717161))

(assert (not b!4717112))

(assert (not bm!329783))

(assert (not d!1501087))

(assert (not bs!1105400))

(assert (not b!4717174))

(assert (not d!1500931))

(assert (not b!4717050))

(assert (not b_lambda!177795))

(assert (not b!4717087))

(assert (not b!4717043))

(assert (not b!4717150))

(assert (not d!1501015))

(assert (not b!4716987))

(assert (not d!1500933))

(assert (not b!4717171))

(assert (not b!4717265))

(assert (not b!4717129))

(assert (not b!4717008))

(assert (not b!4717176))

(assert (not b!4717170))

(assert (not d!1500981))

(assert (not b!4717260))

(assert (not d!1501093))

(assert (not b!4717082))

(assert (not bs!1105399))

(assert (not b!4717046))

(assert (not bm!329766))

(assert (not b!4716998))

(assert (not d!1501125))

(assert (not d!1501137))

(assert (not d!1500973))

(assert (not d!1501073))

(assert (not d!1501129))

(assert (not b!4717270))

(assert (not bm!329761))

(assert (not b!4717035))

(assert (not b!4716932))

(assert (not d!1501131))

(assert (not d!1500941))

(assert (not b!4717034))

(assert (not b!4717029))

(assert tp_is_empty!31267)

(assert (not d!1500991))

(assert (not b!4717193))

(assert (not b!4716985))

(assert (not d!1500961))

(assert (not d!1500975))

(assert (not b!4717163))

(assert (not d!1501075))

(assert (not b!4717045))

(assert (not b!4717088))

(assert (not b!4717115))

(assert (not d!1500909))

(assert (not b!4717026))

(assert (not b!4717093))

(assert (not d!1500957))

(assert (not d!1501067))

(assert (not d!1500945))

(assert (not d!1500929))

(assert (not b!4717213))

(assert (not b!4716999))

(assert (not b!4717049))

(assert (not b!4717214))

(assert (not d!1501091))

(assert (not d!1501001))

(assert (not bm!329762))

(assert (not b!4717109))

(assert (not b!4716912))

(assert (not b!4717047))

(assert (not d!1500993))

(assert (not b!4717271))

(assert (not d!1501095))

(assert (not b!4717164))

(assert (not bm!329764))

(assert (not b!4717158))

(assert (not d!1500947))

(assert (not d!1500963))

(assert (not b!4717157))

(assert (not d!1500949))

(assert (not bm!329753))

(assert (not d!1500959))

(assert (not d!1501049))

(assert (not d!1501005))

(assert (not d!1501017))

(assert (not b!4717084))

(assert (not b!4717032))

(assert (not d!1501069))

(assert (not bm!329763))

(assert (not bm!329767))

(assert (not d!1501047))

(assert (not d!1500985))

(assert (not b!4716936))

(assert (not d!1501003))

(assert (not b_lambda!177797))

(assert (not b!4717041))

(assert (not d!1501019))

(assert (not b!4716933))

(assert (not d!1501045))

(assert (not b!4716906))

(assert (not d!1500971))

(assert (not b!4717051))

(assert (not bm!329754))

(assert (not b!4716943))

(assert (not d!1500953))

(assert (not d!1500967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


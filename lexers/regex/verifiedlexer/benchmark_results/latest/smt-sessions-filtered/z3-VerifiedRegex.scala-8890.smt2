; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!475864 () Bool)

(assert start!475864)

(declare-fun b!4696717 () Bool)

(declare-fun res!1982178 () Bool)

(declare-fun e!2929908 () Bool)

(assert (=> b!4696717 (=> (not res!1982178) (not e!2929908))))

(declare-datatypes ((K!13855 0))(
  ( (K!13856 (val!19355 Int)) )
))
(declare-fun key!4653 () K!13855)

(declare-datatypes ((V!14101 0))(
  ( (V!14102 (val!19356 Int)) )
))
(declare-datatypes ((tuple2!53922 0))(
  ( (tuple2!53923 (_1!30255 K!13855) (_2!30255 V!14101)) )
))
(declare-datatypes ((List!52611 0))(
  ( (Nil!52487) (Cons!52487 (h!58754 tuple2!53922) (t!359809 List!52611)) )
))
(declare-fun newBucket!218 () List!52611)

(declare-fun oldBucket!34 () List!52611)

(declare-fun removePairForKey!1477 (List!52611 K!13855) List!52611)

(assert (=> b!4696717 (= res!1982178 (= (removePairForKey!1477 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4696718 () Bool)

(declare-fun e!2929906 () Bool)

(declare-fun tp!1346389 () Bool)

(declare-fun tp_is_empty!30823 () Bool)

(declare-fun tp_is_empty!30821 () Bool)

(assert (=> b!4696718 (= e!2929906 (and tp_is_empty!30821 tp_is_empty!30823 tp!1346389))))

(declare-fun b!4696719 () Bool)

(declare-fun e!2929918 () Bool)

(declare-fun e!2929916 () Bool)

(assert (=> b!4696719 (= e!2929918 e!2929916)))

(declare-fun res!1982183 () Bool)

(assert (=> b!4696719 (=> res!1982183 e!2929916)))

(declare-datatypes ((ListMap!5017 0))(
  ( (ListMap!5018 (toList!5653 List!52611)) )
))
(declare-fun lt!1858240 () ListMap!5017)

(declare-fun lt!1858250 () ListMap!5017)

(assert (=> b!4696719 (= res!1982183 (not (= lt!1858240 lt!1858250)))))

(declare-fun lt!1858229 () ListMap!5017)

(declare-fun +!2166 (ListMap!5017 tuple2!53922) ListMap!5017)

(assert (=> b!4696719 (= lt!1858250 (+!2166 lt!1858229 (h!58754 oldBucket!34)))))

(declare-fun lt!1858226 () ListMap!5017)

(declare-fun -!686 (ListMap!5017 K!13855) ListMap!5017)

(assert (=> b!4696719 (= lt!1858240 (-!686 lt!1858226 key!4653))))

(declare-fun lt!1858253 () ListMap!5017)

(assert (=> b!4696719 (= lt!1858226 (+!2166 lt!1858253 (h!58754 oldBucket!34)))))

(assert (=> b!4696719 (= (-!686 (+!2166 lt!1858253 (h!58754 oldBucket!34)) key!4653) (+!2166 lt!1858229 (h!58754 oldBucket!34)))))

(declare-datatypes ((Unit!125401 0))(
  ( (Unit!125402) )
))
(declare-fun lt!1858234 () Unit!125401)

(declare-fun addRemoveCommutativeForDiffKeys!87 (ListMap!5017 K!13855 V!14101 K!13855) Unit!125401)

(assert (=> b!4696719 (= lt!1858234 (addRemoveCommutativeForDiffKeys!87 lt!1858253 (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34)) key!4653))))

(declare-fun b!4696720 () Bool)

(declare-fun res!1982186 () Bool)

(declare-fun e!2929913 () Bool)

(assert (=> b!4696720 (=> (not res!1982186) (not e!2929913))))

(declare-datatypes ((tuple2!53924 0))(
  ( (tuple2!53925 (_1!30256 (_ BitVec 64)) (_2!30256 List!52611)) )
))
(declare-datatypes ((List!52612 0))(
  ( (Nil!52488) (Cons!52488 (h!58755 tuple2!53924) (t!359810 List!52612)) )
))
(declare-datatypes ((ListLongMap!4183 0))(
  ( (ListLongMap!4184 (toList!5654 List!52612)) )
))
(declare-fun lm!2023 () ListLongMap!4183)

(get-info :version)

(assert (=> b!4696720 (= res!1982186 ((_ is Cons!52488) (toList!5654 lm!2023)))))

(declare-fun e!2929917 () Bool)

(declare-fun tp!1346388 () Bool)

(declare-fun b!4696721 () Bool)

(assert (=> b!4696721 (= e!2929917 (and tp_is_empty!30821 tp_is_empty!30823 tp!1346388))))

(declare-fun b!4696722 () Bool)

(declare-fun res!1982184 () Bool)

(assert (=> b!4696722 (=> (not res!1982184) (not e!2929908))))

(declare-fun noDuplicateKeys!1882 (List!52611) Bool)

(assert (=> b!4696722 (= res!1982184 (noDuplicateKeys!1882 oldBucket!34))))

(declare-fun b!4696723 () Bool)

(declare-fun res!1982175 () Bool)

(assert (=> b!4696723 (=> res!1982175 e!2929916)))

(declare-fun eq!1041 (ListMap!5017 ListMap!5017) Bool)

(assert (=> b!4696723 (= res!1982175 (not (eq!1041 lt!1858240 lt!1858250)))))

(declare-fun b!4696724 () Bool)

(declare-fun lt!1858232 () List!52612)

(declare-fun lambda!209033 () Int)

(declare-fun forall!11371 (List!52612 Int) Bool)

(assert (=> b!4696724 (= e!2929916 (forall!11371 lt!1858232 lambda!209033))))

(declare-fun b!4696725 () Bool)

(declare-fun res!1982190 () Bool)

(declare-fun e!2929911 () Bool)

(assert (=> b!4696725 (=> res!1982190 e!2929911)))

(declare-fun lt!1858231 () tuple2!53922)

(assert (=> b!4696725 (= res!1982190 (not (= (h!58754 oldBucket!34) lt!1858231)))))

(declare-fun b!4696726 () Bool)

(declare-fun res!1982179 () Bool)

(assert (=> b!4696726 (=> (not res!1982179) (not e!2929908))))

(declare-datatypes ((Hashable!6251 0))(
  ( (HashableExt!6250 (__x!31954 Int)) )
))
(declare-fun hashF!1323 () Hashable!6251)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1708 (List!52611 (_ BitVec 64) Hashable!6251) Bool)

(assert (=> b!4696726 (= res!1982179 (allKeysSameHash!1708 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4696727 () Bool)

(declare-fun res!1982193 () Bool)

(assert (=> b!4696727 (=> res!1982193 e!2929911)))

(declare-fun lt!1858236 () ListMap!5017)

(declare-fun lt!1858242 () ListMap!5017)

(assert (=> b!4696727 (= res!1982193 (not (eq!1041 lt!1858242 (+!2166 lt!1858236 lt!1858231))))))

(declare-fun b!4696728 () Bool)

(declare-fun e!2929914 () Bool)

(declare-fun e!2929912 () Bool)

(assert (=> b!4696728 (= e!2929914 e!2929912)))

(declare-fun res!1982188 () Bool)

(assert (=> b!4696728 (=> (not res!1982188) (not e!2929912))))

(declare-fun lt!1858245 () (_ BitVec 64))

(assert (=> b!4696728 (= res!1982188 (= lt!1858245 hash!405))))

(declare-fun hash!4131 (Hashable!6251 K!13855) (_ BitVec 64))

(assert (=> b!4696728 (= lt!1858245 (hash!4131 hashF!1323 key!4653))))

(declare-fun res!1982174 () Bool)

(assert (=> start!475864 (=> (not res!1982174) (not e!2929908))))

(assert (=> start!475864 (= res!1982174 (forall!11371 (toList!5654 lm!2023) lambda!209033))))

(assert (=> start!475864 e!2929908))

(declare-fun e!2929910 () Bool)

(declare-fun inv!67729 (ListLongMap!4183) Bool)

(assert (=> start!475864 (and (inv!67729 lm!2023) e!2929910)))

(assert (=> start!475864 tp_is_empty!30821))

(assert (=> start!475864 e!2929917))

(assert (=> start!475864 true))

(assert (=> start!475864 e!2929906))

(declare-fun b!4696729 () Bool)

(declare-fun res!1982180 () Bool)

(declare-fun e!2929907 () Bool)

(assert (=> b!4696729 (=> res!1982180 e!2929907)))

(declare-fun lt!1858237 () List!52611)

(assert (=> b!4696729 (= res!1982180 (not (= (removePairForKey!1477 (t!359809 oldBucket!34) key!4653) lt!1858237)))))

(declare-fun b!4696730 () Bool)

(declare-fun e!2929909 () Bool)

(declare-fun e!2929915 () Bool)

(assert (=> b!4696730 (= e!2929909 e!2929915)))

(declare-fun res!1982185 () Bool)

(assert (=> b!4696730 (=> res!1982185 e!2929915)))

(declare-fun containsKey!3125 (List!52611 K!13855) Bool)

(assert (=> b!4696730 (= res!1982185 (not (containsKey!3125 (t!359809 oldBucket!34) key!4653)))))

(assert (=> b!4696730 (containsKey!3125 oldBucket!34 key!4653)))

(declare-fun lt!1858243 () Unit!125401)

(declare-fun lemmaGetPairDefinedThenContainsKey!234 (List!52611 K!13855 Hashable!6251) Unit!125401)

(assert (=> b!4696730 (= lt!1858243 (lemmaGetPairDefinedThenContainsKey!234 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1858244 () List!52611)

(declare-datatypes ((Option!12149 0))(
  ( (None!12148) (Some!12148 (v!46607 tuple2!53922)) )
))
(declare-fun isDefined!9404 (Option!12149) Bool)

(declare-fun getPair!486 (List!52611 K!13855) Option!12149)

(assert (=> b!4696730 (isDefined!9404 (getPair!486 lt!1858244 key!4653))))

(declare-fun lt!1858248 () Unit!125401)

(declare-fun lt!1858235 () tuple2!53924)

(declare-fun forallContained!3478 (List!52612 Int tuple2!53924) Unit!125401)

(assert (=> b!4696730 (= lt!1858248 (forallContained!3478 (toList!5654 lm!2023) lambda!209033 lt!1858235))))

(declare-fun contains!15736 (List!52612 tuple2!53924) Bool)

(assert (=> b!4696730 (contains!15736 (toList!5654 lm!2023) lt!1858235)))

(assert (=> b!4696730 (= lt!1858235 (tuple2!53925 lt!1858245 lt!1858244))))

(declare-fun lt!1858252 () Unit!125401)

(declare-fun lemmaGetValueImpliesTupleContained!291 (ListLongMap!4183 (_ BitVec 64) List!52611) Unit!125401)

(assert (=> b!4696730 (= lt!1858252 (lemmaGetValueImpliesTupleContained!291 lm!2023 lt!1858245 lt!1858244))))

(declare-fun apply!12365 (ListLongMap!4183 (_ BitVec 64)) List!52611)

(assert (=> b!4696730 (= lt!1858244 (apply!12365 lm!2023 lt!1858245))))

(declare-fun contains!15737 (ListLongMap!4183 (_ BitVec 64)) Bool)

(assert (=> b!4696730 (contains!15737 lm!2023 lt!1858245)))

(declare-fun lt!1858256 () Unit!125401)

(declare-fun lemmaInGenMapThenLongMapContainsHash!692 (ListLongMap!4183 K!13855 Hashable!6251) Unit!125401)

(assert (=> b!4696730 (= lt!1858256 (lemmaInGenMapThenLongMapContainsHash!692 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1858249 () Unit!125401)

(declare-fun lemmaInGenMapThenGetPairDefined!282 (ListLongMap!4183 K!13855 Hashable!6251) Unit!125401)

(assert (=> b!4696730 (= lt!1858249 (lemmaInGenMapThenGetPairDefined!282 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4696731 () Bool)

(declare-fun res!1982177 () Bool)

(assert (=> b!4696731 (=> (not res!1982177) (not e!2929908))))

(assert (=> b!4696731 (= res!1982177 (noDuplicateKeys!1882 newBucket!218))))

(declare-fun b!4696732 () Bool)

(assert (=> b!4696732 (= e!2929912 e!2929913)))

(declare-fun res!1982192 () Bool)

(assert (=> b!4696732 (=> (not res!1982192) (not e!2929913))))

(declare-fun lt!1858225 () tuple2!53924)

(declare-fun head!10027 (List!52612) tuple2!53924)

(assert (=> b!4696732 (= res!1982192 (= (head!10027 (toList!5654 lm!2023)) lt!1858225))))

(assert (=> b!4696732 (= lt!1858225 (tuple2!53925 hash!405 oldBucket!34))))

(declare-fun b!4696733 () Bool)

(declare-fun tp!1346387 () Bool)

(assert (=> b!4696733 (= e!2929910 tp!1346387)))

(declare-fun b!4696734 () Bool)

(assert (=> b!4696734 (= e!2929911 e!2929918)))

(declare-fun res!1982187 () Bool)

(assert (=> b!4696734 (=> res!1982187 e!2929918)))

(declare-fun lt!1858251 () ListMap!5017)

(assert (=> b!4696734 (= res!1982187 (not (eq!1041 lt!1858251 lt!1858229)))))

(assert (=> b!4696734 (= lt!1858229 (-!686 lt!1858253 key!4653))))

(declare-fun lt!1858241 () tuple2!53924)

(declare-fun extractMap!1908 (List!52612) ListMap!5017)

(assert (=> b!4696734 (= lt!1858251 (extractMap!1908 (Cons!52488 lt!1858241 (t!359810 (toList!5654 lm!2023)))))))

(declare-fun lt!1858239 () tuple2!53924)

(declare-fun lt!1858255 () List!52612)

(assert (=> b!4696734 (eq!1041 (extractMap!1908 (Cons!52488 lt!1858241 lt!1858255)) (-!686 (extractMap!1908 (Cons!52488 lt!1858239 lt!1858255)) key!4653))))

(declare-fun tail!8671 (List!52612) List!52612)

(assert (=> b!4696734 (= lt!1858255 (tail!8671 lt!1858232))))

(assert (=> b!4696734 (= lt!1858241 (tuple2!53925 hash!405 lt!1858237))))

(declare-fun lt!1858246 () ListLongMap!4183)

(declare-fun lt!1858247 () Unit!125401)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!56 (ListLongMap!4183 (_ BitVec 64) List!52611 List!52611 K!13855 Hashable!6251) Unit!125401)

(assert (=> b!4696734 (= lt!1858247 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!56 lt!1858246 hash!405 (t!359809 oldBucket!34) lt!1858237 key!4653 hashF!1323))))

(declare-fun b!4696735 () Bool)

(assert (=> b!4696735 (= e!2929913 (not e!2929909))))

(declare-fun res!1982195 () Bool)

(assert (=> b!4696735 (=> res!1982195 e!2929909)))

(assert (=> b!4696735 (= res!1982195 (or (and ((_ is Cons!52487) oldBucket!34) (= (_1!30255 (h!58754 oldBucket!34)) key!4653)) (not ((_ is Cons!52487) oldBucket!34)) (= (_1!30255 (h!58754 oldBucket!34)) key!4653)))))

(declare-fun lt!1858233 () ListMap!5017)

(declare-fun lt!1858230 () ListMap!5017)

(declare-fun addToMapMapFromBucket!1314 (List!52611 ListMap!5017) ListMap!5017)

(assert (=> b!4696735 (= lt!1858233 (addToMapMapFromBucket!1314 (_2!30256 (h!58755 (toList!5654 lm!2023))) lt!1858230))))

(assert (=> b!4696735 (= lt!1858230 (extractMap!1908 (t!359810 (toList!5654 lm!2023))))))

(declare-fun tail!8672 (ListLongMap!4183) ListLongMap!4183)

(assert (=> b!4696735 (= (t!359810 (toList!5654 lm!2023)) (toList!5654 (tail!8672 lm!2023)))))

(declare-fun b!4696736 () Bool)

(assert (=> b!4696736 (= e!2929908 e!2929914)))

(declare-fun res!1982194 () Bool)

(assert (=> b!4696736 (=> (not res!1982194) (not e!2929914))))

(declare-fun contains!15738 (ListMap!5017 K!13855) Bool)

(assert (=> b!4696736 (= res!1982194 (contains!15738 lt!1858233 key!4653))))

(assert (=> b!4696736 (= lt!1858233 (extractMap!1908 (toList!5654 lm!2023)))))

(declare-fun b!4696737 () Bool)

(declare-fun res!1982181 () Bool)

(assert (=> b!4696737 (=> res!1982181 e!2929916)))

(assert (=> b!4696737 (= res!1982181 (not (eq!1041 lt!1858226 lt!1858242)))))

(declare-fun b!4696738 () Bool)

(declare-fun res!1982189 () Bool)

(assert (=> b!4696738 (=> (not res!1982189) (not e!2929912))))

(assert (=> b!4696738 (= res!1982189 (allKeysSameHash!1708 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4696739 () Bool)

(assert (=> b!4696739 (= e!2929907 e!2929911)))

(declare-fun res!1982182 () Bool)

(assert (=> b!4696739 (=> res!1982182 e!2929911)))

(assert (=> b!4696739 (= res!1982182 (not (eq!1041 lt!1858242 (+!2166 lt!1858236 (h!58754 oldBucket!34)))))))

(declare-fun lt!1858238 () List!52611)

(assert (=> b!4696739 (= lt!1858236 (extractMap!1908 (Cons!52488 (tuple2!53925 hash!405 lt!1858238) (t!359810 (toList!5654 lm!2023)))))))

(assert (=> b!4696739 (= lt!1858242 (extractMap!1908 (Cons!52488 lt!1858225 (t!359810 (toList!5654 lm!2023)))))))

(assert (=> b!4696739 (eq!1041 (addToMapMapFromBucket!1314 (Cons!52487 lt!1858231 lt!1858237) lt!1858230) (+!2166 (addToMapMapFromBucket!1314 lt!1858237 lt!1858230) lt!1858231))))

(declare-fun lt!1858224 () Unit!125401)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!290 (tuple2!53922 List!52611 ListMap!5017) Unit!125401)

(assert (=> b!4696739 (= lt!1858224 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!290 lt!1858231 lt!1858237 lt!1858230))))

(declare-fun head!10028 (List!52611) tuple2!53922)

(assert (=> b!4696739 (= lt!1858231 (head!10028 newBucket!218))))

(declare-fun lt!1858228 () tuple2!53922)

(assert (=> b!4696739 (eq!1041 (addToMapMapFromBucket!1314 (Cons!52487 lt!1858228 lt!1858238) lt!1858230) (+!2166 (addToMapMapFromBucket!1314 lt!1858238 lt!1858230) lt!1858228))))

(declare-fun lt!1858227 () Unit!125401)

(assert (=> b!4696739 (= lt!1858227 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!290 lt!1858228 lt!1858238 lt!1858230))))

(assert (=> b!4696739 (= lt!1858228 (head!10028 oldBucket!34))))

(assert (=> b!4696739 (contains!15738 lt!1858253 key!4653)))

(assert (=> b!4696739 (= lt!1858253 (extractMap!1908 lt!1858232))))

(declare-fun lt!1858254 () Unit!125401)

(declare-fun lemmaListContainsThenExtractedMapContains!474 (ListLongMap!4183 K!13855 Hashable!6251) Unit!125401)

(assert (=> b!4696739 (= lt!1858254 (lemmaListContainsThenExtractedMapContains!474 lt!1858246 key!4653 hashF!1323))))

(assert (=> b!4696739 (= lt!1858246 (ListLongMap!4184 lt!1858232))))

(assert (=> b!4696739 (= lt!1858232 (Cons!52488 lt!1858239 (t!359810 (toList!5654 lm!2023))))))

(assert (=> b!4696739 (= lt!1858239 (tuple2!53925 hash!405 (t!359809 oldBucket!34)))))

(declare-fun b!4696740 () Bool)

(declare-fun res!1982176 () Bool)

(assert (=> b!4696740 (=> (not res!1982176) (not e!2929912))))

(declare-fun allKeysSameHashInMap!1796 (ListLongMap!4183 Hashable!6251) Bool)

(assert (=> b!4696740 (= res!1982176 (allKeysSameHashInMap!1796 lm!2023 hashF!1323))))

(declare-fun b!4696741 () Bool)

(assert (=> b!4696741 (= e!2929915 e!2929907)))

(declare-fun res!1982191 () Bool)

(assert (=> b!4696741 (=> res!1982191 e!2929907)))

(assert (=> b!4696741 (= res!1982191 (not (= (removePairForKey!1477 lt!1858238 key!4653) lt!1858237)))))

(declare-fun tail!8673 (List!52611) List!52611)

(assert (=> b!4696741 (= lt!1858237 (tail!8673 newBucket!218))))

(assert (=> b!4696741 (= lt!1858238 (tail!8673 oldBucket!34))))

(assert (= (and start!475864 res!1982174) b!4696722))

(assert (= (and b!4696722 res!1982184) b!4696731))

(assert (= (and b!4696731 res!1982177) b!4696717))

(assert (= (and b!4696717 res!1982178) b!4696726))

(assert (= (and b!4696726 res!1982179) b!4696736))

(assert (= (and b!4696736 res!1982194) b!4696728))

(assert (= (and b!4696728 res!1982188) b!4696738))

(assert (= (and b!4696738 res!1982189) b!4696740))

(assert (= (and b!4696740 res!1982176) b!4696732))

(assert (= (and b!4696732 res!1982192) b!4696720))

(assert (= (and b!4696720 res!1982186) b!4696735))

(assert (= (and b!4696735 (not res!1982195)) b!4696730))

(assert (= (and b!4696730 (not res!1982185)) b!4696741))

(assert (= (and b!4696741 (not res!1982191)) b!4696729))

(assert (= (and b!4696729 (not res!1982180)) b!4696739))

(assert (= (and b!4696739 (not res!1982182)) b!4696725))

(assert (= (and b!4696725 (not res!1982190)) b!4696727))

(assert (= (and b!4696727 (not res!1982193)) b!4696734))

(assert (= (and b!4696734 (not res!1982187)) b!4696719))

(assert (= (and b!4696719 (not res!1982183)) b!4696723))

(assert (= (and b!4696723 (not res!1982175)) b!4696737))

(assert (= (and b!4696737 (not res!1982181)) b!4696724))

(assert (= start!475864 b!4696733))

(assert (= (and start!475864 ((_ is Cons!52487) oldBucket!34)) b!4696721))

(assert (= (and start!475864 ((_ is Cons!52487) newBucket!218)) b!4696718))

(declare-fun m!5606125 () Bool)

(assert (=> b!4696730 m!5606125))

(declare-fun m!5606127 () Bool)

(assert (=> b!4696730 m!5606127))

(declare-fun m!5606129 () Bool)

(assert (=> b!4696730 m!5606129))

(declare-fun m!5606131 () Bool)

(assert (=> b!4696730 m!5606131))

(declare-fun m!5606133 () Bool)

(assert (=> b!4696730 m!5606133))

(declare-fun m!5606135 () Bool)

(assert (=> b!4696730 m!5606135))

(declare-fun m!5606137 () Bool)

(assert (=> b!4696730 m!5606137))

(declare-fun m!5606139 () Bool)

(assert (=> b!4696730 m!5606139))

(declare-fun m!5606141 () Bool)

(assert (=> b!4696730 m!5606141))

(declare-fun m!5606143 () Bool)

(assert (=> b!4696730 m!5606143))

(declare-fun m!5606145 () Bool)

(assert (=> b!4696730 m!5606145))

(assert (=> b!4696730 m!5606129))

(declare-fun m!5606147 () Bool)

(assert (=> b!4696730 m!5606147))

(declare-fun m!5606149 () Bool)

(assert (=> b!4696740 m!5606149))

(declare-fun m!5606151 () Bool)

(assert (=> b!4696719 m!5606151))

(declare-fun m!5606153 () Bool)

(assert (=> b!4696719 m!5606153))

(declare-fun m!5606155 () Bool)

(assert (=> b!4696719 m!5606155))

(declare-fun m!5606157 () Bool)

(assert (=> b!4696719 m!5606157))

(declare-fun m!5606159 () Bool)

(assert (=> b!4696719 m!5606159))

(assert (=> b!4696719 m!5606153))

(declare-fun m!5606161 () Bool)

(assert (=> b!4696723 m!5606161))

(declare-fun m!5606163 () Bool)

(assert (=> b!4696722 m!5606163))

(declare-fun m!5606165 () Bool)

(assert (=> b!4696724 m!5606165))

(declare-fun m!5606167 () Bool)

(assert (=> b!4696739 m!5606167))

(declare-fun m!5606169 () Bool)

(assert (=> b!4696739 m!5606169))

(declare-fun m!5606171 () Bool)

(assert (=> b!4696739 m!5606171))

(declare-fun m!5606173 () Bool)

(assert (=> b!4696739 m!5606173))

(declare-fun m!5606175 () Bool)

(assert (=> b!4696739 m!5606175))

(declare-fun m!5606177 () Bool)

(assert (=> b!4696739 m!5606177))

(declare-fun m!5606179 () Bool)

(assert (=> b!4696739 m!5606179))

(declare-fun m!5606181 () Bool)

(assert (=> b!4696739 m!5606181))

(declare-fun m!5606183 () Bool)

(assert (=> b!4696739 m!5606183))

(declare-fun m!5606185 () Bool)

(assert (=> b!4696739 m!5606185))

(declare-fun m!5606187 () Bool)

(assert (=> b!4696739 m!5606187))

(assert (=> b!4696739 m!5606167))

(declare-fun m!5606189 () Bool)

(assert (=> b!4696739 m!5606189))

(declare-fun m!5606191 () Bool)

(assert (=> b!4696739 m!5606191))

(declare-fun m!5606193 () Bool)

(assert (=> b!4696739 m!5606193))

(declare-fun m!5606195 () Bool)

(assert (=> b!4696739 m!5606195))

(assert (=> b!4696739 m!5606173))

(declare-fun m!5606197 () Bool)

(assert (=> b!4696739 m!5606197))

(assert (=> b!4696739 m!5606171))

(assert (=> b!4696739 m!5606175))

(declare-fun m!5606199 () Bool)

(assert (=> b!4696739 m!5606199))

(declare-fun m!5606201 () Bool)

(assert (=> b!4696739 m!5606201))

(assert (=> b!4696739 m!5606177))

(assert (=> b!4696739 m!5606189))

(assert (=> b!4696739 m!5606185))

(declare-fun m!5606203 () Bool)

(assert (=> b!4696739 m!5606203))

(declare-fun m!5606205 () Bool)

(assert (=> b!4696738 m!5606205))

(declare-fun m!5606207 () Bool)

(assert (=> b!4696737 m!5606207))

(declare-fun m!5606209 () Bool)

(assert (=> b!4696717 m!5606209))

(declare-fun m!5606211 () Bool)

(assert (=> b!4696735 m!5606211))

(declare-fun m!5606213 () Bool)

(assert (=> b!4696735 m!5606213))

(declare-fun m!5606215 () Bool)

(assert (=> b!4696735 m!5606215))

(declare-fun m!5606217 () Bool)

(assert (=> b!4696734 m!5606217))

(assert (=> b!4696734 m!5606217))

(declare-fun m!5606219 () Bool)

(assert (=> b!4696734 m!5606219))

(declare-fun m!5606221 () Bool)

(assert (=> b!4696734 m!5606221))

(declare-fun m!5606223 () Bool)

(assert (=> b!4696734 m!5606223))

(declare-fun m!5606225 () Bool)

(assert (=> b!4696734 m!5606225))

(declare-fun m!5606227 () Bool)

(assert (=> b!4696734 m!5606227))

(assert (=> b!4696734 m!5606219))

(assert (=> b!4696734 m!5606227))

(declare-fun m!5606229 () Bool)

(assert (=> b!4696734 m!5606229))

(declare-fun m!5606231 () Bool)

(assert (=> b!4696734 m!5606231))

(declare-fun m!5606233 () Bool)

(assert (=> b!4696734 m!5606233))

(declare-fun m!5606235 () Bool)

(assert (=> b!4696726 m!5606235))

(declare-fun m!5606237 () Bool)

(assert (=> b!4696727 m!5606237))

(assert (=> b!4696727 m!5606237))

(declare-fun m!5606239 () Bool)

(assert (=> b!4696727 m!5606239))

(declare-fun m!5606241 () Bool)

(assert (=> start!475864 m!5606241))

(declare-fun m!5606243 () Bool)

(assert (=> start!475864 m!5606243))

(declare-fun m!5606245 () Bool)

(assert (=> b!4696736 m!5606245))

(declare-fun m!5606247 () Bool)

(assert (=> b!4696736 m!5606247))

(declare-fun m!5606249 () Bool)

(assert (=> b!4696732 m!5606249))

(declare-fun m!5606251 () Bool)

(assert (=> b!4696731 m!5606251))

(declare-fun m!5606253 () Bool)

(assert (=> b!4696741 m!5606253))

(declare-fun m!5606255 () Bool)

(assert (=> b!4696741 m!5606255))

(declare-fun m!5606257 () Bool)

(assert (=> b!4696741 m!5606257))

(declare-fun m!5606259 () Bool)

(assert (=> b!4696728 m!5606259))

(declare-fun m!5606261 () Bool)

(assert (=> b!4696729 m!5606261))

(check-sat (not b!4696729) (not b!4696728) (not b!4696735) (not b!4696717) (not start!475864) (not b!4696724) tp_is_empty!30821 (not b!4696738) (not b!4696727) (not b!4696718) (not b!4696721) (not b!4696726) (not b!4696722) (not b!4696719) tp_is_empty!30823 (not b!4696731) (not b!4696730) (not b!4696736) (not b!4696733) (not b!4696739) (not b!4696723) (not b!4696737) (not b!4696740) (not b!4696732) (not b!4696741) (not b!4696734))
(check-sat)
(get-model)

(declare-fun d!1493247 () Bool)

(declare-fun e!2929964 () Bool)

(assert (=> d!1493247 e!2929964))

(declare-fun res!1982225 () Bool)

(assert (=> d!1493247 (=> (not res!1982225) (not e!2929964))))

(declare-fun lt!1858305 () ListMap!5017)

(assert (=> d!1493247 (= res!1982225 (not (contains!15738 lt!1858305 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!352 (List!52611 K!13855) List!52611)

(assert (=> d!1493247 (= lt!1858305 (ListMap!5018 (removePresrvNoDuplicatedKeys!352 (toList!5653 (+!2166 lt!1858253 (h!58754 oldBucket!34))) key!4653)))))

(assert (=> d!1493247 (= (-!686 (+!2166 lt!1858253 (h!58754 oldBucket!34)) key!4653) lt!1858305)))

(declare-fun b!4696809 () Bool)

(declare-datatypes ((List!52614 0))(
  ( (Nil!52490) (Cons!52490 (h!58759 K!13855) (t!359814 List!52614)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9224 (List!52614) (InoxSet K!13855))

(declare-fun keys!18763 (ListMap!5017) List!52614)

(assert (=> b!4696809 (= e!2929964 (= ((_ map and) (content!9224 (keys!18763 (+!2166 lt!1858253 (h!58754 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13855 Bool)) false) key!4653 true))) (content!9224 (keys!18763 lt!1858305))))))

(assert (= (and d!1493247 res!1982225) b!4696809))

(declare-fun m!5606335 () Bool)

(assert (=> d!1493247 m!5606335))

(declare-fun m!5606337 () Bool)

(assert (=> d!1493247 m!5606337))

(declare-fun m!5606339 () Bool)

(assert (=> b!4696809 m!5606339))

(assert (=> b!4696809 m!5606153))

(declare-fun m!5606341 () Bool)

(assert (=> b!4696809 m!5606341))

(declare-fun m!5606343 () Bool)

(assert (=> b!4696809 m!5606343))

(assert (=> b!4696809 m!5606341))

(declare-fun m!5606345 () Bool)

(assert (=> b!4696809 m!5606345))

(assert (=> b!4696809 m!5606339))

(declare-fun m!5606347 () Bool)

(assert (=> b!4696809 m!5606347))

(assert (=> b!4696719 d!1493247))

(declare-fun d!1493255 () Bool)

(assert (=> d!1493255 (= (-!686 (+!2166 lt!1858253 (tuple2!53923 (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34)))) key!4653) (+!2166 (-!686 lt!1858253 key!4653) (tuple2!53923 (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34)))))))

(declare-fun lt!1858308 () Unit!125401)

(declare-fun choose!32758 (ListMap!5017 K!13855 V!14101 K!13855) Unit!125401)

(assert (=> d!1493255 (= lt!1858308 (choose!32758 lt!1858253 (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34)) key!4653))))

(assert (=> d!1493255 (not (= (_1!30255 (h!58754 oldBucket!34)) key!4653))))

(assert (=> d!1493255 (= (addRemoveCommutativeForDiffKeys!87 lt!1858253 (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34)) key!4653) lt!1858308)))

(declare-fun bs!1091739 () Bool)

(assert (= bs!1091739 d!1493255))

(declare-fun m!5606349 () Bool)

(assert (=> bs!1091739 m!5606349))

(assert (=> bs!1091739 m!5606349))

(declare-fun m!5606351 () Bool)

(assert (=> bs!1091739 m!5606351))

(assert (=> bs!1091739 m!5606225))

(declare-fun m!5606353 () Bool)

(assert (=> bs!1091739 m!5606353))

(declare-fun m!5606355 () Bool)

(assert (=> bs!1091739 m!5606355))

(assert (=> bs!1091739 m!5606225))

(assert (=> b!4696719 d!1493255))

(declare-fun d!1493257 () Bool)

(declare-fun e!2929967 () Bool)

(assert (=> d!1493257 e!2929967))

(declare-fun res!1982231 () Bool)

(assert (=> d!1493257 (=> (not res!1982231) (not e!2929967))))

(declare-fun lt!1858318 () ListMap!5017)

(assert (=> d!1493257 (= res!1982231 (contains!15738 lt!1858318 (_1!30255 (h!58754 oldBucket!34))))))

(declare-fun lt!1858320 () List!52611)

(assert (=> d!1493257 (= lt!1858318 (ListMap!5018 lt!1858320))))

(declare-fun lt!1858317 () Unit!125401)

(declare-fun lt!1858319 () Unit!125401)

(assert (=> d!1493257 (= lt!1858317 lt!1858319)))

(declare-datatypes ((Option!12151 0))(
  ( (None!12150) (Some!12150 (v!46613 V!14101)) )
))
(declare-fun getValueByKey!1823 (List!52611 K!13855) Option!12151)

(assert (=> d!1493257 (= (getValueByKey!1823 lt!1858320 (_1!30255 (h!58754 oldBucket!34))) (Some!12150 (_2!30255 (h!58754 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1022 (List!52611 K!13855 V!14101) Unit!125401)

(assert (=> d!1493257 (= lt!1858319 (lemmaContainsTupThenGetReturnValue!1022 lt!1858320 (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!530 (List!52611 K!13855 V!14101) List!52611)

(assert (=> d!1493257 (= lt!1858320 (insertNoDuplicatedKeys!530 (toList!5653 lt!1858253) (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34))))))

(assert (=> d!1493257 (= (+!2166 lt!1858253 (h!58754 oldBucket!34)) lt!1858318)))

(declare-fun b!4696814 () Bool)

(declare-fun res!1982230 () Bool)

(assert (=> b!4696814 (=> (not res!1982230) (not e!2929967))))

(assert (=> b!4696814 (= res!1982230 (= (getValueByKey!1823 (toList!5653 lt!1858318) (_1!30255 (h!58754 oldBucket!34))) (Some!12150 (_2!30255 (h!58754 oldBucket!34)))))))

(declare-fun b!4696815 () Bool)

(declare-fun contains!15741 (List!52611 tuple2!53922) Bool)

(assert (=> b!4696815 (= e!2929967 (contains!15741 (toList!5653 lt!1858318) (h!58754 oldBucket!34)))))

(assert (= (and d!1493257 res!1982231) b!4696814))

(assert (= (and b!4696814 res!1982230) b!4696815))

(declare-fun m!5606357 () Bool)

(assert (=> d!1493257 m!5606357))

(declare-fun m!5606359 () Bool)

(assert (=> d!1493257 m!5606359))

(declare-fun m!5606361 () Bool)

(assert (=> d!1493257 m!5606361))

(declare-fun m!5606363 () Bool)

(assert (=> d!1493257 m!5606363))

(declare-fun m!5606365 () Bool)

(assert (=> b!4696814 m!5606365))

(declare-fun m!5606367 () Bool)

(assert (=> b!4696815 m!5606367))

(assert (=> b!4696719 d!1493257))

(declare-fun d!1493259 () Bool)

(declare-fun e!2929968 () Bool)

(assert (=> d!1493259 e!2929968))

(declare-fun res!1982232 () Bool)

(assert (=> d!1493259 (=> (not res!1982232) (not e!2929968))))

(declare-fun lt!1858321 () ListMap!5017)

(assert (=> d!1493259 (= res!1982232 (not (contains!15738 lt!1858321 key!4653)))))

(assert (=> d!1493259 (= lt!1858321 (ListMap!5018 (removePresrvNoDuplicatedKeys!352 (toList!5653 lt!1858226) key!4653)))))

(assert (=> d!1493259 (= (-!686 lt!1858226 key!4653) lt!1858321)))

(declare-fun b!4696816 () Bool)

(assert (=> b!4696816 (= e!2929968 (= ((_ map and) (content!9224 (keys!18763 lt!1858226)) ((_ map not) (store ((as const (Array K!13855 Bool)) false) key!4653 true))) (content!9224 (keys!18763 lt!1858321))))))

(assert (= (and d!1493259 res!1982232) b!4696816))

(declare-fun m!5606369 () Bool)

(assert (=> d!1493259 m!5606369))

(declare-fun m!5606371 () Bool)

(assert (=> d!1493259 m!5606371))

(declare-fun m!5606373 () Bool)

(assert (=> b!4696816 m!5606373))

(declare-fun m!5606375 () Bool)

(assert (=> b!4696816 m!5606375))

(assert (=> b!4696816 m!5606343))

(assert (=> b!4696816 m!5606375))

(declare-fun m!5606377 () Bool)

(assert (=> b!4696816 m!5606377))

(assert (=> b!4696816 m!5606373))

(declare-fun m!5606379 () Bool)

(assert (=> b!4696816 m!5606379))

(assert (=> b!4696719 d!1493259))

(declare-fun d!1493261 () Bool)

(declare-fun e!2929969 () Bool)

(assert (=> d!1493261 e!2929969))

(declare-fun res!1982234 () Bool)

(assert (=> d!1493261 (=> (not res!1982234) (not e!2929969))))

(declare-fun lt!1858323 () ListMap!5017)

(assert (=> d!1493261 (= res!1982234 (contains!15738 lt!1858323 (_1!30255 (h!58754 oldBucket!34))))))

(declare-fun lt!1858325 () List!52611)

(assert (=> d!1493261 (= lt!1858323 (ListMap!5018 lt!1858325))))

(declare-fun lt!1858322 () Unit!125401)

(declare-fun lt!1858324 () Unit!125401)

(assert (=> d!1493261 (= lt!1858322 lt!1858324)))

(assert (=> d!1493261 (= (getValueByKey!1823 lt!1858325 (_1!30255 (h!58754 oldBucket!34))) (Some!12150 (_2!30255 (h!58754 oldBucket!34))))))

(assert (=> d!1493261 (= lt!1858324 (lemmaContainsTupThenGetReturnValue!1022 lt!1858325 (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34))))))

(assert (=> d!1493261 (= lt!1858325 (insertNoDuplicatedKeys!530 (toList!5653 lt!1858229) (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34))))))

(assert (=> d!1493261 (= (+!2166 lt!1858229 (h!58754 oldBucket!34)) lt!1858323)))

(declare-fun b!4696817 () Bool)

(declare-fun res!1982233 () Bool)

(assert (=> b!4696817 (=> (not res!1982233) (not e!2929969))))

(assert (=> b!4696817 (= res!1982233 (= (getValueByKey!1823 (toList!5653 lt!1858323) (_1!30255 (h!58754 oldBucket!34))) (Some!12150 (_2!30255 (h!58754 oldBucket!34)))))))

(declare-fun b!4696818 () Bool)

(assert (=> b!4696818 (= e!2929969 (contains!15741 (toList!5653 lt!1858323) (h!58754 oldBucket!34)))))

(assert (= (and d!1493261 res!1982234) b!4696817))

(assert (= (and b!4696817 res!1982233) b!4696818))

(declare-fun m!5606381 () Bool)

(assert (=> d!1493261 m!5606381))

(declare-fun m!5606383 () Bool)

(assert (=> d!1493261 m!5606383))

(declare-fun m!5606385 () Bool)

(assert (=> d!1493261 m!5606385))

(declare-fun m!5606387 () Bool)

(assert (=> d!1493261 m!5606387))

(declare-fun m!5606389 () Bool)

(assert (=> b!4696817 m!5606389))

(declare-fun m!5606391 () Bool)

(assert (=> b!4696818 m!5606391))

(assert (=> b!4696719 d!1493261))

(declare-fun d!1493263 () Bool)

(declare-fun e!2929975 () Bool)

(assert (=> d!1493263 e!2929975))

(declare-fun res!1982237 () Bool)

(assert (=> d!1493263 (=> res!1982237 e!2929975)))

(declare-fun lt!1858335 () Bool)

(assert (=> d!1493263 (= res!1982237 (not lt!1858335))))

(declare-fun lt!1858334 () Bool)

(assert (=> d!1493263 (= lt!1858335 lt!1858334)))

(declare-fun lt!1858337 () Unit!125401)

(declare-fun e!2929974 () Unit!125401)

(assert (=> d!1493263 (= lt!1858337 e!2929974)))

(declare-fun c!802927 () Bool)

(assert (=> d!1493263 (= c!802927 lt!1858334)))

(declare-fun containsKey!3127 (List!52612 (_ BitVec 64)) Bool)

(assert (=> d!1493263 (= lt!1858334 (containsKey!3127 (toList!5654 lm!2023) lt!1858245))))

(assert (=> d!1493263 (= (contains!15737 lm!2023 lt!1858245) lt!1858335)))

(declare-fun b!4696825 () Bool)

(declare-fun lt!1858336 () Unit!125401)

(assert (=> b!4696825 (= e!2929974 lt!1858336)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1715 (List!52612 (_ BitVec 64)) Unit!125401)

(assert (=> b!4696825 (= lt!1858336 (lemmaContainsKeyImpliesGetValueByKeyDefined!1715 (toList!5654 lm!2023) lt!1858245))))

(declare-datatypes ((Option!12152 0))(
  ( (None!12151) (Some!12151 (v!46614 List!52611)) )
))
(declare-fun isDefined!9406 (Option!12152) Bool)

(declare-fun getValueByKey!1824 (List!52612 (_ BitVec 64)) Option!12152)

(assert (=> b!4696825 (isDefined!9406 (getValueByKey!1824 (toList!5654 lm!2023) lt!1858245))))

(declare-fun b!4696826 () Bool)

(declare-fun Unit!125429 () Unit!125401)

(assert (=> b!4696826 (= e!2929974 Unit!125429)))

(declare-fun b!4696827 () Bool)

(assert (=> b!4696827 (= e!2929975 (isDefined!9406 (getValueByKey!1824 (toList!5654 lm!2023) lt!1858245)))))

(assert (= (and d!1493263 c!802927) b!4696825))

(assert (= (and d!1493263 (not c!802927)) b!4696826))

(assert (= (and d!1493263 (not res!1982237)) b!4696827))

(declare-fun m!5606393 () Bool)

(assert (=> d!1493263 m!5606393))

(declare-fun m!5606395 () Bool)

(assert (=> b!4696825 m!5606395))

(declare-fun m!5606397 () Bool)

(assert (=> b!4696825 m!5606397))

(assert (=> b!4696825 m!5606397))

(declare-fun m!5606399 () Bool)

(assert (=> b!4696825 m!5606399))

(assert (=> b!4696827 m!5606397))

(assert (=> b!4696827 m!5606397))

(assert (=> b!4696827 m!5606399))

(assert (=> b!4696730 d!1493263))

(declare-fun d!1493265 () Bool)

(declare-fun dynLambda!21735 (Int tuple2!53924) Bool)

(assert (=> d!1493265 (dynLambda!21735 lambda!209033 lt!1858235)))

(declare-fun lt!1858340 () Unit!125401)

(declare-fun choose!32759 (List!52612 Int tuple2!53924) Unit!125401)

(assert (=> d!1493265 (= lt!1858340 (choose!32759 (toList!5654 lm!2023) lambda!209033 lt!1858235))))

(declare-fun e!2929978 () Bool)

(assert (=> d!1493265 e!2929978))

(declare-fun res!1982240 () Bool)

(assert (=> d!1493265 (=> (not res!1982240) (not e!2929978))))

(assert (=> d!1493265 (= res!1982240 (forall!11371 (toList!5654 lm!2023) lambda!209033))))

(assert (=> d!1493265 (= (forallContained!3478 (toList!5654 lm!2023) lambda!209033 lt!1858235) lt!1858340)))

(declare-fun b!4696830 () Bool)

(assert (=> b!4696830 (= e!2929978 (contains!15736 (toList!5654 lm!2023) lt!1858235))))

(assert (= (and d!1493265 res!1982240) b!4696830))

(declare-fun b_lambda!177231 () Bool)

(assert (=> (not b_lambda!177231) (not d!1493265)))

(declare-fun m!5606401 () Bool)

(assert (=> d!1493265 m!5606401))

(declare-fun m!5606403 () Bool)

(assert (=> d!1493265 m!5606403))

(assert (=> d!1493265 m!5606241))

(assert (=> b!4696830 m!5606141))

(assert (=> b!4696730 d!1493265))

(declare-fun d!1493267 () Bool)

(declare-fun get!17549 (Option!12152) List!52611)

(assert (=> d!1493267 (= (apply!12365 lm!2023 lt!1858245) (get!17549 (getValueByKey!1824 (toList!5654 lm!2023) lt!1858245)))))

(declare-fun bs!1091740 () Bool)

(assert (= bs!1091740 d!1493267))

(assert (=> bs!1091740 m!5606397))

(assert (=> bs!1091740 m!5606397))

(declare-fun m!5606405 () Bool)

(assert (=> bs!1091740 m!5606405))

(assert (=> b!4696730 d!1493267))

(declare-fun d!1493269 () Bool)

(declare-fun lt!1858343 () Bool)

(declare-fun content!9225 (List!52612) (InoxSet tuple2!53924))

(assert (=> d!1493269 (= lt!1858343 (select (content!9225 (toList!5654 lm!2023)) lt!1858235))))

(declare-fun e!2929983 () Bool)

(assert (=> d!1493269 (= lt!1858343 e!2929983)))

(declare-fun res!1982246 () Bool)

(assert (=> d!1493269 (=> (not res!1982246) (not e!2929983))))

(assert (=> d!1493269 (= res!1982246 ((_ is Cons!52488) (toList!5654 lm!2023)))))

(assert (=> d!1493269 (= (contains!15736 (toList!5654 lm!2023) lt!1858235) lt!1858343)))

(declare-fun b!4696835 () Bool)

(declare-fun e!2929984 () Bool)

(assert (=> b!4696835 (= e!2929983 e!2929984)))

(declare-fun res!1982245 () Bool)

(assert (=> b!4696835 (=> res!1982245 e!2929984)))

(assert (=> b!4696835 (= res!1982245 (= (h!58755 (toList!5654 lm!2023)) lt!1858235))))

(declare-fun b!4696836 () Bool)

(assert (=> b!4696836 (= e!2929984 (contains!15736 (t!359810 (toList!5654 lm!2023)) lt!1858235))))

(assert (= (and d!1493269 res!1982246) b!4696835))

(assert (= (and b!4696835 (not res!1982245)) b!4696836))

(declare-fun m!5606407 () Bool)

(assert (=> d!1493269 m!5606407))

(declare-fun m!5606409 () Bool)

(assert (=> d!1493269 m!5606409))

(declare-fun m!5606411 () Bool)

(assert (=> b!4696836 m!5606411))

(assert (=> b!4696730 d!1493269))

(declare-fun d!1493271 () Bool)

(declare-fun isEmpty!29115 (Option!12149) Bool)

(assert (=> d!1493271 (= (isDefined!9404 (getPair!486 lt!1858244 key!4653)) (not (isEmpty!29115 (getPair!486 lt!1858244 key!4653))))))

(declare-fun bs!1091741 () Bool)

(assert (= bs!1091741 d!1493271))

(assert (=> bs!1091741 m!5606129))

(declare-fun m!5606413 () Bool)

(assert (=> bs!1091741 m!5606413))

(assert (=> b!4696730 d!1493271))

(declare-fun bs!1091742 () Bool)

(declare-fun d!1493273 () Bool)

(assert (= bs!1091742 (and d!1493273 start!475864)))

(declare-fun lambda!209053 () Int)

(assert (=> bs!1091742 (= lambda!209053 lambda!209033)))

(assert (=> d!1493273 (contains!15737 lm!2023 (hash!4131 hashF!1323 key!4653))))

(declare-fun lt!1858368 () Unit!125401)

(declare-fun choose!32760 (ListLongMap!4183 K!13855 Hashable!6251) Unit!125401)

(assert (=> d!1493273 (= lt!1858368 (choose!32760 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1493273 (forall!11371 (toList!5654 lm!2023) lambda!209053)))

(assert (=> d!1493273 (= (lemmaInGenMapThenLongMapContainsHash!692 lm!2023 key!4653 hashF!1323) lt!1858368)))

(declare-fun bs!1091743 () Bool)

(assert (= bs!1091743 d!1493273))

(assert (=> bs!1091743 m!5606259))

(assert (=> bs!1091743 m!5606259))

(declare-fun m!5606415 () Bool)

(assert (=> bs!1091743 m!5606415))

(declare-fun m!5606417 () Bool)

(assert (=> bs!1091743 m!5606417))

(declare-fun m!5606419 () Bool)

(assert (=> bs!1091743 m!5606419))

(assert (=> b!4696730 d!1493273))

(declare-fun bs!1091823 () Bool)

(declare-fun d!1493275 () Bool)

(assert (= bs!1091823 (and d!1493275 start!475864)))

(declare-fun lambda!209096 () Int)

(assert (=> bs!1091823 (= lambda!209096 lambda!209033)))

(declare-fun bs!1091824 () Bool)

(assert (= bs!1091824 (and d!1493275 d!1493273)))

(assert (=> bs!1091824 (= lambda!209096 lambda!209053)))

(declare-fun b!4696896 () Bool)

(declare-fun e!2930018 () Bool)

(assert (=> b!4696896 (= e!2930018 (isDefined!9404 (getPair!486 (apply!12365 lm!2023 (hash!4131 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1858517 () Unit!125401)

(assert (=> b!4696896 (= lt!1858517 (forallContained!3478 (toList!5654 lm!2023) lambda!209096 (tuple2!53925 (hash!4131 hashF!1323 key!4653) (apply!12365 lm!2023 (hash!4131 hashF!1323 key!4653)))))))

(declare-fun lt!1858511 () Unit!125401)

(declare-fun lt!1858518 () Unit!125401)

(assert (=> b!4696896 (= lt!1858511 lt!1858518)))

(declare-fun lt!1858513 () (_ BitVec 64))

(declare-fun lt!1858516 () List!52611)

(assert (=> b!4696896 (contains!15736 (toList!5654 lm!2023) (tuple2!53925 lt!1858513 lt!1858516))))

(assert (=> b!4696896 (= lt!1858518 (lemmaGetValueImpliesTupleContained!291 lm!2023 lt!1858513 lt!1858516))))

(declare-fun e!2930017 () Bool)

(assert (=> b!4696896 e!2930017))

(declare-fun res!1982283 () Bool)

(assert (=> b!4696896 (=> (not res!1982283) (not e!2930017))))

(assert (=> b!4696896 (= res!1982283 (contains!15737 lm!2023 lt!1858513))))

(assert (=> b!4696896 (= lt!1858516 (apply!12365 lm!2023 (hash!4131 hashF!1323 key!4653)))))

(assert (=> b!4696896 (= lt!1858513 (hash!4131 hashF!1323 key!4653))))

(declare-fun lt!1858512 () Unit!125401)

(declare-fun lt!1858515 () Unit!125401)

(assert (=> b!4696896 (= lt!1858512 lt!1858515)))

(assert (=> b!4696896 (contains!15737 lm!2023 (hash!4131 hashF!1323 key!4653))))

(assert (=> b!4696896 (= lt!1858515 (lemmaInGenMapThenLongMapContainsHash!692 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4696894 () Bool)

(declare-fun res!1982282 () Bool)

(assert (=> b!4696894 (=> (not res!1982282) (not e!2930018))))

(assert (=> b!4696894 (= res!1982282 (allKeysSameHashInMap!1796 lm!2023 hashF!1323))))

(declare-fun b!4696895 () Bool)

(declare-fun res!1982280 () Bool)

(assert (=> b!4696895 (=> (not res!1982280) (not e!2930018))))

(assert (=> b!4696895 (= res!1982280 (contains!15738 (extractMap!1908 (toList!5654 lm!2023)) key!4653))))

(assert (=> d!1493275 e!2930018))

(declare-fun res!1982281 () Bool)

(assert (=> d!1493275 (=> (not res!1982281) (not e!2930018))))

(assert (=> d!1493275 (= res!1982281 (forall!11371 (toList!5654 lm!2023) lambda!209096))))

(declare-fun lt!1858514 () Unit!125401)

(declare-fun choose!32761 (ListLongMap!4183 K!13855 Hashable!6251) Unit!125401)

(assert (=> d!1493275 (= lt!1858514 (choose!32761 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1493275 (forall!11371 (toList!5654 lm!2023) lambda!209096)))

(assert (=> d!1493275 (= (lemmaInGenMapThenGetPairDefined!282 lm!2023 key!4653 hashF!1323) lt!1858514)))

(declare-fun b!4696897 () Bool)

(assert (=> b!4696897 (= e!2930017 (= (getValueByKey!1824 (toList!5654 lm!2023) lt!1858513) (Some!12151 lt!1858516)))))

(assert (= (and d!1493275 res!1982281) b!4696894))

(assert (= (and b!4696894 res!1982282) b!4696895))

(assert (= (and b!4696895 res!1982280) b!4696896))

(assert (= (and b!4696896 res!1982283) b!4696897))

(assert (=> b!4696894 m!5606149))

(declare-fun m!5606639 () Bool)

(assert (=> b!4696897 m!5606639))

(assert (=> b!4696896 m!5606259))

(declare-fun m!5606641 () Bool)

(assert (=> b!4696896 m!5606641))

(assert (=> b!4696896 m!5606259))

(declare-fun m!5606643 () Bool)

(assert (=> b!4696896 m!5606643))

(assert (=> b!4696896 m!5606127))

(declare-fun m!5606645 () Bool)

(assert (=> b!4696896 m!5606645))

(assert (=> b!4696896 m!5606641))

(declare-fun m!5606647 () Bool)

(assert (=> b!4696896 m!5606647))

(declare-fun m!5606649 () Bool)

(assert (=> b!4696896 m!5606649))

(declare-fun m!5606651 () Bool)

(assert (=> b!4696896 m!5606651))

(assert (=> b!4696896 m!5606259))

(assert (=> b!4696896 m!5606415))

(assert (=> b!4696896 m!5606647))

(declare-fun m!5606653 () Bool)

(assert (=> b!4696896 m!5606653))

(declare-fun m!5606655 () Bool)

(assert (=> d!1493275 m!5606655))

(declare-fun m!5606657 () Bool)

(assert (=> d!1493275 m!5606657))

(assert (=> d!1493275 m!5606655))

(assert (=> b!4696895 m!5606247))

(assert (=> b!4696895 m!5606247))

(declare-fun m!5606659 () Bool)

(assert (=> b!4696895 m!5606659))

(assert (=> b!4696730 d!1493275))

(declare-fun b!4696920 () Bool)

(declare-fun e!2930036 () Option!12149)

(assert (=> b!4696920 (= e!2930036 (getPair!486 (t!359809 lt!1858244) key!4653))))

(declare-fun b!4696921 () Bool)

(declare-fun e!2930034 () Bool)

(assert (=> b!4696921 (= e!2930034 (not (containsKey!3125 lt!1858244 key!4653)))))

(declare-fun b!4696922 () Bool)

(declare-fun e!2930035 () Option!12149)

(assert (=> b!4696922 (= e!2930035 e!2930036)))

(declare-fun c!802946 () Bool)

(assert (=> b!4696922 (= c!802946 ((_ is Cons!52487) lt!1858244))))

(declare-fun d!1493311 () Bool)

(declare-fun e!2930033 () Bool)

(assert (=> d!1493311 e!2930033))

(declare-fun res!1982296 () Bool)

(assert (=> d!1493311 (=> res!1982296 e!2930033)))

(assert (=> d!1493311 (= res!1982296 e!2930034)))

(declare-fun res!1982297 () Bool)

(assert (=> d!1493311 (=> (not res!1982297) (not e!2930034))))

(declare-fun lt!1858525 () Option!12149)

(assert (=> d!1493311 (= res!1982297 (isEmpty!29115 lt!1858525))))

(assert (=> d!1493311 (= lt!1858525 e!2930035)))

(declare-fun c!802945 () Bool)

(assert (=> d!1493311 (= c!802945 (and ((_ is Cons!52487) lt!1858244) (= (_1!30255 (h!58754 lt!1858244)) key!4653)))))

(assert (=> d!1493311 (noDuplicateKeys!1882 lt!1858244)))

(assert (=> d!1493311 (= (getPair!486 lt!1858244 key!4653) lt!1858525)))

(declare-fun b!4696923 () Bool)

(assert (=> b!4696923 (= e!2930035 (Some!12148 (h!58754 lt!1858244)))))

(declare-fun b!4696924 () Bool)

(assert (=> b!4696924 (= e!2930036 None!12148)))

(declare-fun b!4696925 () Bool)

(declare-fun res!1982295 () Bool)

(declare-fun e!2930037 () Bool)

(assert (=> b!4696925 (=> (not res!1982295) (not e!2930037))))

(declare-fun get!17550 (Option!12149) tuple2!53922)

(assert (=> b!4696925 (= res!1982295 (= (_1!30255 (get!17550 lt!1858525)) key!4653))))

(declare-fun b!4696926 () Bool)

(assert (=> b!4696926 (= e!2930037 (contains!15741 lt!1858244 (get!17550 lt!1858525)))))

(declare-fun b!4696927 () Bool)

(assert (=> b!4696927 (= e!2930033 e!2930037)))

(declare-fun res!1982294 () Bool)

(assert (=> b!4696927 (=> (not res!1982294) (not e!2930037))))

(assert (=> b!4696927 (= res!1982294 (isDefined!9404 lt!1858525))))

(assert (= (and d!1493311 c!802945) b!4696923))

(assert (= (and d!1493311 (not c!802945)) b!4696922))

(assert (= (and b!4696922 c!802946) b!4696920))

(assert (= (and b!4696922 (not c!802946)) b!4696924))

(assert (= (and d!1493311 res!1982297) b!4696921))

(assert (= (and d!1493311 (not res!1982296)) b!4696927))

(assert (= (and b!4696927 res!1982294) b!4696925))

(assert (= (and b!4696925 res!1982295) b!4696926))

(declare-fun m!5606669 () Bool)

(assert (=> b!4696926 m!5606669))

(assert (=> b!4696926 m!5606669))

(declare-fun m!5606671 () Bool)

(assert (=> b!4696926 m!5606671))

(declare-fun m!5606673 () Bool)

(assert (=> b!4696920 m!5606673))

(declare-fun m!5606675 () Bool)

(assert (=> d!1493311 m!5606675))

(declare-fun m!5606677 () Bool)

(assert (=> d!1493311 m!5606677))

(declare-fun m!5606679 () Bool)

(assert (=> b!4696927 m!5606679))

(declare-fun m!5606681 () Bool)

(assert (=> b!4696921 m!5606681))

(assert (=> b!4696925 m!5606669))

(assert (=> b!4696730 d!1493311))

(declare-fun d!1493315 () Bool)

(declare-fun res!1982303 () Bool)

(declare-fun e!2930044 () Bool)

(assert (=> d!1493315 (=> res!1982303 e!2930044)))

(assert (=> d!1493315 (= res!1982303 (and ((_ is Cons!52487) (t!359809 oldBucket!34)) (= (_1!30255 (h!58754 (t!359809 oldBucket!34))) key!4653)))))

(assert (=> d!1493315 (= (containsKey!3125 (t!359809 oldBucket!34) key!4653) e!2930044)))

(declare-fun b!4696935 () Bool)

(declare-fun e!2930045 () Bool)

(assert (=> b!4696935 (= e!2930044 e!2930045)))

(declare-fun res!1982304 () Bool)

(assert (=> b!4696935 (=> (not res!1982304) (not e!2930045))))

(assert (=> b!4696935 (= res!1982304 ((_ is Cons!52487) (t!359809 oldBucket!34)))))

(declare-fun b!4696936 () Bool)

(assert (=> b!4696936 (= e!2930045 (containsKey!3125 (t!359809 (t!359809 oldBucket!34)) key!4653))))

(assert (= (and d!1493315 (not res!1982303)) b!4696935))

(assert (= (and b!4696935 res!1982304) b!4696936))

(declare-fun m!5606703 () Bool)

(assert (=> b!4696936 m!5606703))

(assert (=> b!4696730 d!1493315))

(declare-fun d!1493319 () Bool)

(declare-fun res!1982305 () Bool)

(declare-fun e!2930046 () Bool)

(assert (=> d!1493319 (=> res!1982305 e!2930046)))

(assert (=> d!1493319 (= res!1982305 (and ((_ is Cons!52487) oldBucket!34) (= (_1!30255 (h!58754 oldBucket!34)) key!4653)))))

(assert (=> d!1493319 (= (containsKey!3125 oldBucket!34 key!4653) e!2930046)))

(declare-fun b!4696937 () Bool)

(declare-fun e!2930047 () Bool)

(assert (=> b!4696937 (= e!2930046 e!2930047)))

(declare-fun res!1982306 () Bool)

(assert (=> b!4696937 (=> (not res!1982306) (not e!2930047))))

(assert (=> b!4696937 (= res!1982306 ((_ is Cons!52487) oldBucket!34))))

(declare-fun b!4696938 () Bool)

(assert (=> b!4696938 (= e!2930047 (containsKey!3125 (t!359809 oldBucket!34) key!4653))))

(assert (= (and d!1493319 (not res!1982305)) b!4696937))

(assert (= (and b!4696937 res!1982306) b!4696938))

(assert (=> b!4696938 m!5606133))

(assert (=> b!4696730 d!1493319))

(declare-fun d!1493325 () Bool)

(assert (=> d!1493325 (containsKey!3125 oldBucket!34 key!4653)))

(declare-fun lt!1858530 () Unit!125401)

(declare-fun choose!32762 (List!52611 K!13855 Hashable!6251) Unit!125401)

(assert (=> d!1493325 (= lt!1858530 (choose!32762 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1493325 (noDuplicateKeys!1882 oldBucket!34)))

(assert (=> d!1493325 (= (lemmaGetPairDefinedThenContainsKey!234 oldBucket!34 key!4653 hashF!1323) lt!1858530)))

(declare-fun bs!1091848 () Bool)

(assert (= bs!1091848 d!1493325))

(assert (=> bs!1091848 m!5606137))

(declare-fun m!5606715 () Bool)

(assert (=> bs!1091848 m!5606715))

(assert (=> bs!1091848 m!5606163))

(assert (=> b!4696730 d!1493325))

(declare-fun d!1493329 () Bool)

(assert (=> d!1493329 (contains!15736 (toList!5654 lm!2023) (tuple2!53925 lt!1858245 lt!1858244))))

(declare-fun lt!1858533 () Unit!125401)

(declare-fun choose!32763 (ListLongMap!4183 (_ BitVec 64) List!52611) Unit!125401)

(assert (=> d!1493329 (= lt!1858533 (choose!32763 lm!2023 lt!1858245 lt!1858244))))

(assert (=> d!1493329 (contains!15737 lm!2023 lt!1858245)))

(assert (=> d!1493329 (= (lemmaGetValueImpliesTupleContained!291 lm!2023 lt!1858245 lt!1858244) lt!1858533)))

(declare-fun bs!1091849 () Bool)

(assert (= bs!1091849 d!1493329))

(declare-fun m!5606717 () Bool)

(assert (=> bs!1091849 m!5606717))

(declare-fun m!5606719 () Bool)

(assert (=> bs!1091849 m!5606719))

(assert (=> bs!1091849 m!5606145))

(assert (=> b!4696730 d!1493329))

(declare-fun b!4696948 () Bool)

(declare-fun e!2930052 () List!52611)

(assert (=> b!4696948 (= e!2930052 (t!359809 (t!359809 oldBucket!34)))))

(declare-fun b!4696951 () Bool)

(declare-fun e!2930053 () List!52611)

(assert (=> b!4696951 (= e!2930053 Nil!52487)))

(declare-fun b!4696950 () Bool)

(assert (=> b!4696950 (= e!2930053 (Cons!52487 (h!58754 (t!359809 oldBucket!34)) (removePairForKey!1477 (t!359809 (t!359809 oldBucket!34)) key!4653)))))

(declare-fun b!4696949 () Bool)

(assert (=> b!4696949 (= e!2930052 e!2930053)))

(declare-fun c!802953 () Bool)

(assert (=> b!4696949 (= c!802953 ((_ is Cons!52487) (t!359809 oldBucket!34)))))

(declare-fun d!1493331 () Bool)

(declare-fun lt!1858536 () List!52611)

(assert (=> d!1493331 (not (containsKey!3125 lt!1858536 key!4653))))

(assert (=> d!1493331 (= lt!1858536 e!2930052)))

(declare-fun c!802952 () Bool)

(assert (=> d!1493331 (= c!802952 (and ((_ is Cons!52487) (t!359809 oldBucket!34)) (= (_1!30255 (h!58754 (t!359809 oldBucket!34))) key!4653)))))

(assert (=> d!1493331 (noDuplicateKeys!1882 (t!359809 oldBucket!34))))

(assert (=> d!1493331 (= (removePairForKey!1477 (t!359809 oldBucket!34) key!4653) lt!1858536)))

(assert (= (and d!1493331 c!802952) b!4696948))

(assert (= (and d!1493331 (not c!802952)) b!4696949))

(assert (= (and b!4696949 c!802953) b!4696950))

(assert (= (and b!4696949 (not c!802953)) b!4696951))

(declare-fun m!5606721 () Bool)

(assert (=> b!4696950 m!5606721))

(declare-fun m!5606723 () Bool)

(assert (=> d!1493331 m!5606723))

(declare-fun m!5606725 () Bool)

(assert (=> d!1493331 m!5606725))

(assert (=> b!4696729 d!1493331))

(declare-fun bs!1091850 () Bool)

(declare-fun d!1493333 () Bool)

(assert (= bs!1091850 (and d!1493333 start!475864)))

(declare-fun lambda!209102 () Int)

(assert (=> bs!1091850 (not (= lambda!209102 lambda!209033))))

(declare-fun bs!1091851 () Bool)

(assert (= bs!1091851 (and d!1493333 d!1493273)))

(assert (=> bs!1091851 (not (= lambda!209102 lambda!209053))))

(declare-fun bs!1091852 () Bool)

(assert (= bs!1091852 (and d!1493333 d!1493275)))

(assert (=> bs!1091852 (not (= lambda!209102 lambda!209096))))

(assert (=> d!1493333 true))

(assert (=> d!1493333 (= (allKeysSameHashInMap!1796 lm!2023 hashF!1323) (forall!11371 (toList!5654 lm!2023) lambda!209102))))

(declare-fun bs!1091853 () Bool)

(assert (= bs!1091853 d!1493333))

(declare-fun m!5606727 () Bool)

(assert (=> bs!1091853 m!5606727))

(assert (=> b!4696740 d!1493333))

(declare-fun bs!1091878 () Bool)

(declare-fun d!1493335 () Bool)

(assert (= bs!1091878 (and d!1493335 start!475864)))

(declare-fun lambda!209111 () Int)

(assert (=> bs!1091878 (= lambda!209111 lambda!209033)))

(declare-fun bs!1091880 () Bool)

(assert (= bs!1091880 (and d!1493335 d!1493273)))

(assert (=> bs!1091880 (= lambda!209111 lambda!209053)))

(declare-fun bs!1091881 () Bool)

(assert (= bs!1091881 (and d!1493335 d!1493275)))

(assert (=> bs!1091881 (= lambda!209111 lambda!209096)))

(declare-fun bs!1091882 () Bool)

(assert (= bs!1091882 (and d!1493335 d!1493333)))

(assert (=> bs!1091882 (not (= lambda!209111 lambda!209102))))

(declare-fun lt!1858547 () ListMap!5017)

(declare-fun invariantList!1432 (List!52611) Bool)

(assert (=> d!1493335 (invariantList!1432 (toList!5653 lt!1858547))))

(declare-fun e!2930060 () ListMap!5017)

(assert (=> d!1493335 (= lt!1858547 e!2930060)))

(declare-fun c!802956 () Bool)

(assert (=> d!1493335 (= c!802956 ((_ is Cons!52488) lt!1858232))))

(assert (=> d!1493335 (forall!11371 lt!1858232 lambda!209111)))

(assert (=> d!1493335 (= (extractMap!1908 lt!1858232) lt!1858547)))

(declare-fun b!4696967 () Bool)

(assert (=> b!4696967 (= e!2930060 (addToMapMapFromBucket!1314 (_2!30256 (h!58755 lt!1858232)) (extractMap!1908 (t!359810 lt!1858232))))))

(declare-fun b!4696968 () Bool)

(assert (=> b!4696968 (= e!2930060 (ListMap!5018 Nil!52487))))

(assert (= (and d!1493335 c!802956) b!4696967))

(assert (= (and d!1493335 (not c!802956)) b!4696968))

(declare-fun m!5606775 () Bool)

(assert (=> d!1493335 m!5606775))

(declare-fun m!5606777 () Bool)

(assert (=> d!1493335 m!5606777))

(declare-fun m!5606779 () Bool)

(assert (=> b!4696967 m!5606779))

(assert (=> b!4696967 m!5606779))

(declare-fun m!5606781 () Bool)

(assert (=> b!4696967 m!5606781))

(assert (=> b!4696739 d!1493335))

(declare-fun d!1493353 () Bool)

(declare-fun e!2930061 () Bool)

(assert (=> d!1493353 e!2930061))

(declare-fun res!1982313 () Bool)

(assert (=> d!1493353 (=> (not res!1982313) (not e!2930061))))

(declare-fun lt!1858549 () ListMap!5017)

(assert (=> d!1493353 (= res!1982313 (contains!15738 lt!1858549 (_1!30255 lt!1858231)))))

(declare-fun lt!1858551 () List!52611)

(assert (=> d!1493353 (= lt!1858549 (ListMap!5018 lt!1858551))))

(declare-fun lt!1858548 () Unit!125401)

(declare-fun lt!1858550 () Unit!125401)

(assert (=> d!1493353 (= lt!1858548 lt!1858550)))

(assert (=> d!1493353 (= (getValueByKey!1823 lt!1858551 (_1!30255 lt!1858231)) (Some!12150 (_2!30255 lt!1858231)))))

(assert (=> d!1493353 (= lt!1858550 (lemmaContainsTupThenGetReturnValue!1022 lt!1858551 (_1!30255 lt!1858231) (_2!30255 lt!1858231)))))

(assert (=> d!1493353 (= lt!1858551 (insertNoDuplicatedKeys!530 (toList!5653 (addToMapMapFromBucket!1314 lt!1858237 lt!1858230)) (_1!30255 lt!1858231) (_2!30255 lt!1858231)))))

(assert (=> d!1493353 (= (+!2166 (addToMapMapFromBucket!1314 lt!1858237 lt!1858230) lt!1858231) lt!1858549)))

(declare-fun b!4696969 () Bool)

(declare-fun res!1982312 () Bool)

(assert (=> b!4696969 (=> (not res!1982312) (not e!2930061))))

(assert (=> b!4696969 (= res!1982312 (= (getValueByKey!1823 (toList!5653 lt!1858549) (_1!30255 lt!1858231)) (Some!12150 (_2!30255 lt!1858231))))))

(declare-fun b!4696970 () Bool)

(assert (=> b!4696970 (= e!2930061 (contains!15741 (toList!5653 lt!1858549) lt!1858231))))

(assert (= (and d!1493353 res!1982313) b!4696969))

(assert (= (and b!4696969 res!1982312) b!4696970))

(declare-fun m!5606783 () Bool)

(assert (=> d!1493353 m!5606783))

(declare-fun m!5606785 () Bool)

(assert (=> d!1493353 m!5606785))

(declare-fun m!5606787 () Bool)

(assert (=> d!1493353 m!5606787))

(declare-fun m!5606789 () Bool)

(assert (=> d!1493353 m!5606789))

(declare-fun m!5606791 () Bool)

(assert (=> b!4696969 m!5606791))

(declare-fun m!5606793 () Bool)

(assert (=> b!4696970 m!5606793))

(assert (=> b!4696739 d!1493353))

(declare-fun d!1493355 () Bool)

(declare-fun content!9226 (List!52611) (InoxSet tuple2!53922))

(assert (=> d!1493355 (= (eq!1041 (addToMapMapFromBucket!1314 (Cons!52487 lt!1858228 lt!1858238) lt!1858230) (+!2166 (addToMapMapFromBucket!1314 lt!1858238 lt!1858230) lt!1858228)) (= (content!9226 (toList!5653 (addToMapMapFromBucket!1314 (Cons!52487 lt!1858228 lt!1858238) lt!1858230))) (content!9226 (toList!5653 (+!2166 (addToMapMapFromBucket!1314 lt!1858238 lt!1858230) lt!1858228)))))))

(declare-fun bs!1091883 () Bool)

(assert (= bs!1091883 d!1493355))

(declare-fun m!5606795 () Bool)

(assert (=> bs!1091883 m!5606795))

(declare-fun m!5606797 () Bool)

(assert (=> bs!1091883 m!5606797))

(assert (=> b!4696739 d!1493355))

(declare-fun bs!1091884 () Bool)

(declare-fun d!1493357 () Bool)

(assert (= bs!1091884 (and d!1493357 d!1493275)))

(declare-fun lambda!209112 () Int)

(assert (=> bs!1091884 (= lambda!209112 lambda!209096)))

(declare-fun bs!1091885 () Bool)

(assert (= bs!1091885 (and d!1493357 start!475864)))

(assert (=> bs!1091885 (= lambda!209112 lambda!209033)))

(declare-fun bs!1091886 () Bool)

(assert (= bs!1091886 (and d!1493357 d!1493273)))

(assert (=> bs!1091886 (= lambda!209112 lambda!209053)))

(declare-fun bs!1091887 () Bool)

(assert (= bs!1091887 (and d!1493357 d!1493335)))

(assert (=> bs!1091887 (= lambda!209112 lambda!209111)))

(declare-fun bs!1091888 () Bool)

(assert (= bs!1091888 (and d!1493357 d!1493333)))

(assert (=> bs!1091888 (not (= lambda!209112 lambda!209102))))

(declare-fun lt!1858552 () ListMap!5017)

(assert (=> d!1493357 (invariantList!1432 (toList!5653 lt!1858552))))

(declare-fun e!2930062 () ListMap!5017)

(assert (=> d!1493357 (= lt!1858552 e!2930062)))

(declare-fun c!802957 () Bool)

(assert (=> d!1493357 (= c!802957 ((_ is Cons!52488) (Cons!52488 lt!1858225 (t!359810 (toList!5654 lm!2023)))))))

(assert (=> d!1493357 (forall!11371 (Cons!52488 lt!1858225 (t!359810 (toList!5654 lm!2023))) lambda!209112)))

(assert (=> d!1493357 (= (extractMap!1908 (Cons!52488 lt!1858225 (t!359810 (toList!5654 lm!2023)))) lt!1858552)))

(declare-fun b!4696971 () Bool)

(assert (=> b!4696971 (= e!2930062 (addToMapMapFromBucket!1314 (_2!30256 (h!58755 (Cons!52488 lt!1858225 (t!359810 (toList!5654 lm!2023))))) (extractMap!1908 (t!359810 (Cons!52488 lt!1858225 (t!359810 (toList!5654 lm!2023)))))))))

(declare-fun b!4696972 () Bool)

(assert (=> b!4696972 (= e!2930062 (ListMap!5018 Nil!52487))))

(assert (= (and d!1493357 c!802957) b!4696971))

(assert (= (and d!1493357 (not c!802957)) b!4696972))

(declare-fun m!5606799 () Bool)

(assert (=> d!1493357 m!5606799))

(declare-fun m!5606801 () Bool)

(assert (=> d!1493357 m!5606801))

(declare-fun m!5606803 () Bool)

(assert (=> b!4696971 m!5606803))

(assert (=> b!4696971 m!5606803))

(declare-fun m!5606805 () Bool)

(assert (=> b!4696971 m!5606805))

(assert (=> b!4696739 d!1493357))

(declare-fun d!1493359 () Bool)

(assert (=> d!1493359 (= (head!10028 oldBucket!34) (h!58754 oldBucket!34))))

(assert (=> b!4696739 d!1493359))

(declare-fun b!4697073 () Bool)

(assert (=> b!4697073 true))

(declare-fun bs!1092004 () Bool)

(declare-fun b!4697074 () Bool)

(assert (= bs!1092004 (and b!4697074 b!4697073)))

(declare-fun lambda!209161 () Int)

(declare-fun lambda!209160 () Int)

(assert (=> bs!1092004 (= lambda!209161 lambda!209160)))

(assert (=> b!4697074 true))

(declare-fun lt!1858693 () ListMap!5017)

(declare-fun lambda!209162 () Int)

(assert (=> bs!1092004 (= (= lt!1858693 lt!1858230) (= lambda!209162 lambda!209160))))

(assert (=> b!4697074 (= (= lt!1858693 lt!1858230) (= lambda!209162 lambda!209161))))

(assert (=> b!4697074 true))

(declare-fun bs!1092008 () Bool)

(declare-fun d!1493361 () Bool)

(assert (= bs!1092008 (and d!1493361 b!4697073)))

(declare-fun lt!1858691 () ListMap!5017)

(declare-fun lambda!209163 () Int)

(assert (=> bs!1092008 (= (= lt!1858691 lt!1858230) (= lambda!209163 lambda!209160))))

(declare-fun bs!1092009 () Bool)

(assert (= bs!1092009 (and d!1493361 b!4697074)))

(assert (=> bs!1092009 (= (= lt!1858691 lt!1858230) (= lambda!209163 lambda!209161))))

(assert (=> bs!1092009 (= (= lt!1858691 lt!1858693) (= lambda!209163 lambda!209162))))

(assert (=> d!1493361 true))

(declare-fun b!4697071 () Bool)

(declare-fun e!2930128 () Bool)

(declare-fun call!328340 () Bool)

(assert (=> b!4697071 (= e!2930128 call!328340)))

(declare-fun b!4697072 () Bool)

(declare-fun res!1982376 () Bool)

(declare-fun e!2930127 () Bool)

(assert (=> b!4697072 (=> (not res!1982376) (not e!2930127))))

(declare-fun forall!11373 (List!52611 Int) Bool)

(assert (=> b!4697072 (= res!1982376 (forall!11373 (toList!5653 lt!1858230) lambda!209163))))

(declare-fun c!802975 () Bool)

(declare-fun bm!328334 () Bool)

(assert (=> bm!328334 (= call!328340 (forall!11373 (toList!5653 lt!1858230) (ite c!802975 lambda!209160 lambda!209162)))))

(declare-fun call!328339 () Bool)

(declare-fun lt!1858702 () ListMap!5017)

(declare-fun bm!328335 () Bool)

(assert (=> bm!328335 (= call!328339 (forall!11373 (ite c!802975 (toList!5653 lt!1858230) (toList!5653 lt!1858702)) (ite c!802975 lambda!209160 lambda!209162)))))

(declare-fun e!2930129 () ListMap!5017)

(assert (=> b!4697073 (= e!2930129 lt!1858230)))

(declare-fun lt!1858690 () Unit!125401)

(declare-fun call!328341 () Unit!125401)

(assert (=> b!4697073 (= lt!1858690 call!328341)))

(assert (=> b!4697073 call!328339))

(declare-fun lt!1858689 () Unit!125401)

(assert (=> b!4697073 (= lt!1858689 lt!1858690)))

(assert (=> b!4697073 call!328340))

(declare-fun lt!1858688 () Unit!125401)

(declare-fun Unit!125452 () Unit!125401)

(assert (=> b!4697073 (= lt!1858688 Unit!125452)))

(assert (=> d!1493361 e!2930127))

(declare-fun res!1982377 () Bool)

(assert (=> d!1493361 (=> (not res!1982377) (not e!2930127))))

(assert (=> d!1493361 (= res!1982377 (forall!11373 lt!1858237 lambda!209163))))

(assert (=> d!1493361 (= lt!1858691 e!2930129)))

(assert (=> d!1493361 (= c!802975 ((_ is Nil!52487) lt!1858237))))

(assert (=> d!1493361 (noDuplicateKeys!1882 lt!1858237)))

(assert (=> d!1493361 (= (addToMapMapFromBucket!1314 lt!1858237 lt!1858230) lt!1858691)))

(assert (=> b!4697074 (= e!2930129 lt!1858693)))

(assert (=> b!4697074 (= lt!1858702 (+!2166 lt!1858230 (h!58754 lt!1858237)))))

(assert (=> b!4697074 (= lt!1858693 (addToMapMapFromBucket!1314 (t!359809 lt!1858237) (+!2166 lt!1858230 (h!58754 lt!1858237))))))

(declare-fun lt!1858687 () Unit!125401)

(assert (=> b!4697074 (= lt!1858687 call!328341)))

(assert (=> b!4697074 (forall!11373 (toList!5653 lt!1858230) lambda!209161)))

(declare-fun lt!1858700 () Unit!125401)

(assert (=> b!4697074 (= lt!1858700 lt!1858687)))

(assert (=> b!4697074 call!328339))

(declare-fun lt!1858695 () Unit!125401)

(declare-fun Unit!125453 () Unit!125401)

(assert (=> b!4697074 (= lt!1858695 Unit!125453)))

(assert (=> b!4697074 (forall!11373 (t!359809 lt!1858237) lambda!209162)))

(declare-fun lt!1858698 () Unit!125401)

(declare-fun Unit!125454 () Unit!125401)

(assert (=> b!4697074 (= lt!1858698 Unit!125454)))

(declare-fun lt!1858701 () Unit!125401)

(declare-fun Unit!125455 () Unit!125401)

(assert (=> b!4697074 (= lt!1858701 Unit!125455)))

(declare-fun lt!1858697 () Unit!125401)

(declare-fun forallContained!3480 (List!52611 Int tuple2!53922) Unit!125401)

(assert (=> b!4697074 (= lt!1858697 (forallContained!3480 (toList!5653 lt!1858702) lambda!209162 (h!58754 lt!1858237)))))

(assert (=> b!4697074 (contains!15738 lt!1858702 (_1!30255 (h!58754 lt!1858237)))))

(declare-fun lt!1858705 () Unit!125401)

(declare-fun Unit!125456 () Unit!125401)

(assert (=> b!4697074 (= lt!1858705 Unit!125456)))

(assert (=> b!4697074 (contains!15738 lt!1858693 (_1!30255 (h!58754 lt!1858237)))))

(declare-fun lt!1858696 () Unit!125401)

(declare-fun Unit!125457 () Unit!125401)

(assert (=> b!4697074 (= lt!1858696 Unit!125457)))

(assert (=> b!4697074 (forall!11373 lt!1858237 lambda!209162)))

(declare-fun lt!1858686 () Unit!125401)

(declare-fun Unit!125458 () Unit!125401)

(assert (=> b!4697074 (= lt!1858686 Unit!125458)))

(assert (=> b!4697074 (forall!11373 (toList!5653 lt!1858702) lambda!209162)))

(declare-fun lt!1858704 () Unit!125401)

(declare-fun Unit!125459 () Unit!125401)

(assert (=> b!4697074 (= lt!1858704 Unit!125459)))

(declare-fun lt!1858706 () Unit!125401)

(declare-fun Unit!125460 () Unit!125401)

(assert (=> b!4697074 (= lt!1858706 Unit!125460)))

(declare-fun lt!1858692 () Unit!125401)

(declare-fun addForallContainsKeyThenBeforeAdding!719 (ListMap!5017 ListMap!5017 K!13855 V!14101) Unit!125401)

(assert (=> b!4697074 (= lt!1858692 (addForallContainsKeyThenBeforeAdding!719 lt!1858230 lt!1858693 (_1!30255 (h!58754 lt!1858237)) (_2!30255 (h!58754 lt!1858237))))))

(assert (=> b!4697074 (forall!11373 (toList!5653 lt!1858230) lambda!209162)))

(declare-fun lt!1858699 () Unit!125401)

(assert (=> b!4697074 (= lt!1858699 lt!1858692)))

(assert (=> b!4697074 (forall!11373 (toList!5653 lt!1858230) lambda!209162)))

(declare-fun lt!1858694 () Unit!125401)

(declare-fun Unit!125461 () Unit!125401)

(assert (=> b!4697074 (= lt!1858694 Unit!125461)))

(declare-fun res!1982375 () Bool)

(assert (=> b!4697074 (= res!1982375 (forall!11373 lt!1858237 lambda!209162))))

(assert (=> b!4697074 (=> (not res!1982375) (not e!2930128))))

(assert (=> b!4697074 e!2930128))

(declare-fun lt!1858703 () Unit!125401)

(declare-fun Unit!125462 () Unit!125401)

(assert (=> b!4697074 (= lt!1858703 Unit!125462)))

(declare-fun b!4697075 () Bool)

(assert (=> b!4697075 (= e!2930127 (invariantList!1432 (toList!5653 lt!1858691)))))

(declare-fun bm!328336 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!720 (ListMap!5017) Unit!125401)

(assert (=> bm!328336 (= call!328341 (lemmaContainsAllItsOwnKeys!720 lt!1858230))))

(assert (= (and d!1493361 c!802975) b!4697073))

(assert (= (and d!1493361 (not c!802975)) b!4697074))

(assert (= (and b!4697074 res!1982375) b!4697071))

(assert (= (or b!4697073 b!4697074) bm!328336))

(assert (= (or b!4697073 b!4697074) bm!328335))

(assert (= (or b!4697073 b!4697071) bm!328334))

(assert (= (and d!1493361 res!1982377) b!4697072))

(assert (= (and b!4697072 res!1982376) b!4697075))

(declare-fun m!5607003 () Bool)

(assert (=> d!1493361 m!5607003))

(declare-fun m!5607005 () Bool)

(assert (=> d!1493361 m!5607005))

(declare-fun m!5607007 () Bool)

(assert (=> b!4697074 m!5607007))

(declare-fun m!5607009 () Bool)

(assert (=> b!4697074 m!5607009))

(declare-fun m!5607011 () Bool)

(assert (=> b!4697074 m!5607011))

(declare-fun m!5607013 () Bool)

(assert (=> b!4697074 m!5607013))

(declare-fun m!5607015 () Bool)

(assert (=> b!4697074 m!5607015))

(declare-fun m!5607017 () Bool)

(assert (=> b!4697074 m!5607017))

(declare-fun m!5607019 () Bool)

(assert (=> b!4697074 m!5607019))

(assert (=> b!4697074 m!5607011))

(declare-fun m!5607021 () Bool)

(assert (=> b!4697074 m!5607021))

(assert (=> b!4697074 m!5607007))

(declare-fun m!5607023 () Bool)

(assert (=> b!4697074 m!5607023))

(declare-fun m!5607025 () Bool)

(assert (=> b!4697074 m!5607025))

(declare-fun m!5607027 () Bool)

(assert (=> b!4697074 m!5607027))

(assert (=> b!4697074 m!5607017))

(declare-fun m!5607029 () Bool)

(assert (=> bm!328334 m!5607029))

(declare-fun m!5607031 () Bool)

(assert (=> bm!328335 m!5607031))

(declare-fun m!5607033 () Bool)

(assert (=> b!4697075 m!5607033))

(declare-fun m!5607035 () Bool)

(assert (=> bm!328336 m!5607035))

(declare-fun m!5607037 () Bool)

(assert (=> b!4697072 m!5607037))

(assert (=> b!4696739 d!1493361))

(declare-fun bs!1092010 () Bool)

(declare-fun b!4697091 () Bool)

(assert (= bs!1092010 (and b!4697091 b!4697073)))

(declare-fun lambda!209164 () Int)

(assert (=> bs!1092010 (= lambda!209164 lambda!209160)))

(declare-fun bs!1092011 () Bool)

(assert (= bs!1092011 (and b!4697091 b!4697074)))

(assert (=> bs!1092011 (= lambda!209164 lambda!209161)))

(assert (=> bs!1092011 (= (= lt!1858230 lt!1858693) (= lambda!209164 lambda!209162))))

(declare-fun bs!1092012 () Bool)

(assert (= bs!1092012 (and b!4697091 d!1493361)))

(assert (=> bs!1092012 (= (= lt!1858230 lt!1858691) (= lambda!209164 lambda!209163))))

(assert (=> b!4697091 true))

(declare-fun bs!1092013 () Bool)

(declare-fun b!4697092 () Bool)

(assert (= bs!1092013 (and b!4697092 d!1493361)))

(declare-fun lambda!209165 () Int)

(assert (=> bs!1092013 (= (= lt!1858230 lt!1858691) (= lambda!209165 lambda!209163))))

(declare-fun bs!1092014 () Bool)

(assert (= bs!1092014 (and b!4697092 b!4697073)))

(assert (=> bs!1092014 (= lambda!209165 lambda!209160)))

(declare-fun bs!1092015 () Bool)

(assert (= bs!1092015 (and b!4697092 b!4697074)))

(assert (=> bs!1092015 (= lambda!209165 lambda!209161)))

(assert (=> bs!1092015 (= (= lt!1858230 lt!1858693) (= lambda!209165 lambda!209162))))

(declare-fun bs!1092016 () Bool)

(assert (= bs!1092016 (and b!4697092 b!4697091)))

(assert (=> bs!1092016 (= lambda!209165 lambda!209164)))

(assert (=> b!4697092 true))

(declare-fun lambda!209166 () Int)

(declare-fun lt!1858714 () ListMap!5017)

(assert (=> bs!1092013 (= (= lt!1858714 lt!1858691) (= lambda!209166 lambda!209163))))

(assert (=> bs!1092014 (= (= lt!1858714 lt!1858230) (= lambda!209166 lambda!209160))))

(assert (=> b!4697092 (= (= lt!1858714 lt!1858230) (= lambda!209166 lambda!209165))))

(assert (=> bs!1092015 (= (= lt!1858714 lt!1858230) (= lambda!209166 lambda!209161))))

(assert (=> bs!1092015 (= (= lt!1858714 lt!1858693) (= lambda!209166 lambda!209162))))

(assert (=> bs!1092016 (= (= lt!1858714 lt!1858230) (= lambda!209166 lambda!209164))))

(assert (=> b!4697092 true))

(declare-fun bs!1092017 () Bool)

(declare-fun d!1493425 () Bool)

(assert (= bs!1092017 (and d!1493425 d!1493361)))

(declare-fun lambda!209167 () Int)

(declare-fun lt!1858712 () ListMap!5017)

(assert (=> bs!1092017 (= (= lt!1858712 lt!1858691) (= lambda!209167 lambda!209163))))

(declare-fun bs!1092018 () Bool)

(assert (= bs!1092018 (and d!1493425 b!4697073)))

(assert (=> bs!1092018 (= (= lt!1858712 lt!1858230) (= lambda!209167 lambda!209160))))

(declare-fun bs!1092019 () Bool)

(assert (= bs!1092019 (and d!1493425 b!4697092)))

(assert (=> bs!1092019 (= (= lt!1858712 lt!1858230) (= lambda!209167 lambda!209165))))

(declare-fun bs!1092020 () Bool)

(assert (= bs!1092020 (and d!1493425 b!4697074)))

(assert (=> bs!1092020 (= (= lt!1858712 lt!1858693) (= lambda!209167 lambda!209162))))

(declare-fun bs!1092021 () Bool)

(assert (= bs!1092021 (and d!1493425 b!4697091)))

(assert (=> bs!1092021 (= (= lt!1858712 lt!1858230) (= lambda!209167 lambda!209164))))

(assert (=> bs!1092019 (= (= lt!1858712 lt!1858714) (= lambda!209167 lambda!209166))))

(assert (=> bs!1092020 (= (= lt!1858712 lt!1858230) (= lambda!209167 lambda!209161))))

(assert (=> d!1493425 true))

(declare-fun b!4697089 () Bool)

(declare-fun e!2930138 () Bool)

(declare-fun call!328343 () Bool)

(assert (=> b!4697089 (= e!2930138 call!328343)))

(declare-fun b!4697090 () Bool)

(declare-fun res!1982379 () Bool)

(declare-fun e!2930137 () Bool)

(assert (=> b!4697090 (=> (not res!1982379) (not e!2930137))))

(assert (=> b!4697090 (= res!1982379 (forall!11373 (toList!5653 lt!1858230) lambda!209167))))

(declare-fun bm!328337 () Bool)

(declare-fun c!802976 () Bool)

(assert (=> bm!328337 (= call!328343 (forall!11373 (toList!5653 lt!1858230) (ite c!802976 lambda!209164 lambda!209166)))))

(declare-fun bm!328338 () Bool)

(declare-fun call!328342 () Bool)

(declare-fun lt!1858723 () ListMap!5017)

(assert (=> bm!328338 (= call!328342 (forall!11373 (ite c!802976 (toList!5653 lt!1858230) (toList!5653 lt!1858723)) (ite c!802976 lambda!209164 lambda!209166)))))

(declare-fun e!2930139 () ListMap!5017)

(assert (=> b!4697091 (= e!2930139 lt!1858230)))

(declare-fun lt!1858711 () Unit!125401)

(declare-fun call!328344 () Unit!125401)

(assert (=> b!4697091 (= lt!1858711 call!328344)))

(assert (=> b!4697091 call!328342))

(declare-fun lt!1858710 () Unit!125401)

(assert (=> b!4697091 (= lt!1858710 lt!1858711)))

(assert (=> b!4697091 call!328343))

(declare-fun lt!1858709 () Unit!125401)

(declare-fun Unit!125463 () Unit!125401)

(assert (=> b!4697091 (= lt!1858709 Unit!125463)))

(assert (=> d!1493425 e!2930137))

(declare-fun res!1982380 () Bool)

(assert (=> d!1493425 (=> (not res!1982380) (not e!2930137))))

(assert (=> d!1493425 (= res!1982380 (forall!11373 lt!1858238 lambda!209167))))

(assert (=> d!1493425 (= lt!1858712 e!2930139)))

(assert (=> d!1493425 (= c!802976 ((_ is Nil!52487) lt!1858238))))

(assert (=> d!1493425 (noDuplicateKeys!1882 lt!1858238)))

(assert (=> d!1493425 (= (addToMapMapFromBucket!1314 lt!1858238 lt!1858230) lt!1858712)))

(assert (=> b!4697092 (= e!2930139 lt!1858714)))

(assert (=> b!4697092 (= lt!1858723 (+!2166 lt!1858230 (h!58754 lt!1858238)))))

(assert (=> b!4697092 (= lt!1858714 (addToMapMapFromBucket!1314 (t!359809 lt!1858238) (+!2166 lt!1858230 (h!58754 lt!1858238))))))

(declare-fun lt!1858708 () Unit!125401)

(assert (=> b!4697092 (= lt!1858708 call!328344)))

(assert (=> b!4697092 (forall!11373 (toList!5653 lt!1858230) lambda!209165)))

(declare-fun lt!1858721 () Unit!125401)

(assert (=> b!4697092 (= lt!1858721 lt!1858708)))

(assert (=> b!4697092 call!328342))

(declare-fun lt!1858716 () Unit!125401)

(declare-fun Unit!125464 () Unit!125401)

(assert (=> b!4697092 (= lt!1858716 Unit!125464)))

(assert (=> b!4697092 (forall!11373 (t!359809 lt!1858238) lambda!209166)))

(declare-fun lt!1858719 () Unit!125401)

(declare-fun Unit!125465 () Unit!125401)

(assert (=> b!4697092 (= lt!1858719 Unit!125465)))

(declare-fun lt!1858722 () Unit!125401)

(declare-fun Unit!125466 () Unit!125401)

(assert (=> b!4697092 (= lt!1858722 Unit!125466)))

(declare-fun lt!1858718 () Unit!125401)

(assert (=> b!4697092 (= lt!1858718 (forallContained!3480 (toList!5653 lt!1858723) lambda!209166 (h!58754 lt!1858238)))))

(assert (=> b!4697092 (contains!15738 lt!1858723 (_1!30255 (h!58754 lt!1858238)))))

(declare-fun lt!1858726 () Unit!125401)

(declare-fun Unit!125467 () Unit!125401)

(assert (=> b!4697092 (= lt!1858726 Unit!125467)))

(assert (=> b!4697092 (contains!15738 lt!1858714 (_1!30255 (h!58754 lt!1858238)))))

(declare-fun lt!1858717 () Unit!125401)

(declare-fun Unit!125468 () Unit!125401)

(assert (=> b!4697092 (= lt!1858717 Unit!125468)))

(assert (=> b!4697092 (forall!11373 lt!1858238 lambda!209166)))

(declare-fun lt!1858707 () Unit!125401)

(declare-fun Unit!125469 () Unit!125401)

(assert (=> b!4697092 (= lt!1858707 Unit!125469)))

(assert (=> b!4697092 (forall!11373 (toList!5653 lt!1858723) lambda!209166)))

(declare-fun lt!1858725 () Unit!125401)

(declare-fun Unit!125470 () Unit!125401)

(assert (=> b!4697092 (= lt!1858725 Unit!125470)))

(declare-fun lt!1858727 () Unit!125401)

(declare-fun Unit!125471 () Unit!125401)

(assert (=> b!4697092 (= lt!1858727 Unit!125471)))

(declare-fun lt!1858713 () Unit!125401)

(assert (=> b!4697092 (= lt!1858713 (addForallContainsKeyThenBeforeAdding!719 lt!1858230 lt!1858714 (_1!30255 (h!58754 lt!1858238)) (_2!30255 (h!58754 lt!1858238))))))

(assert (=> b!4697092 (forall!11373 (toList!5653 lt!1858230) lambda!209166)))

(declare-fun lt!1858720 () Unit!125401)

(assert (=> b!4697092 (= lt!1858720 lt!1858713)))

(assert (=> b!4697092 (forall!11373 (toList!5653 lt!1858230) lambda!209166)))

(declare-fun lt!1858715 () Unit!125401)

(declare-fun Unit!125472 () Unit!125401)

(assert (=> b!4697092 (= lt!1858715 Unit!125472)))

(declare-fun res!1982378 () Bool)

(assert (=> b!4697092 (= res!1982378 (forall!11373 lt!1858238 lambda!209166))))

(assert (=> b!4697092 (=> (not res!1982378) (not e!2930138))))

(assert (=> b!4697092 e!2930138))

(declare-fun lt!1858724 () Unit!125401)

(declare-fun Unit!125473 () Unit!125401)

(assert (=> b!4697092 (= lt!1858724 Unit!125473)))

(declare-fun b!4697093 () Bool)

(assert (=> b!4697093 (= e!2930137 (invariantList!1432 (toList!5653 lt!1858712)))))

(declare-fun bm!328339 () Bool)

(assert (=> bm!328339 (= call!328344 (lemmaContainsAllItsOwnKeys!720 lt!1858230))))

(assert (= (and d!1493425 c!802976) b!4697091))

(assert (= (and d!1493425 (not c!802976)) b!4697092))

(assert (= (and b!4697092 res!1982378) b!4697089))

(assert (= (or b!4697091 b!4697092) bm!328339))

(assert (= (or b!4697091 b!4697092) bm!328338))

(assert (= (or b!4697091 b!4697089) bm!328337))

(assert (= (and d!1493425 res!1982380) b!4697090))

(assert (= (and b!4697090 res!1982379) b!4697093))

(declare-fun m!5607039 () Bool)

(assert (=> d!1493425 m!5607039))

(declare-fun m!5607041 () Bool)

(assert (=> d!1493425 m!5607041))

(declare-fun m!5607043 () Bool)

(assert (=> b!4697092 m!5607043))

(declare-fun m!5607045 () Bool)

(assert (=> b!4697092 m!5607045))

(declare-fun m!5607047 () Bool)

(assert (=> b!4697092 m!5607047))

(declare-fun m!5607049 () Bool)

(assert (=> b!4697092 m!5607049))

(declare-fun m!5607051 () Bool)

(assert (=> b!4697092 m!5607051))

(declare-fun m!5607053 () Bool)

(assert (=> b!4697092 m!5607053))

(declare-fun m!5607055 () Bool)

(assert (=> b!4697092 m!5607055))

(assert (=> b!4697092 m!5607047))

(declare-fun m!5607057 () Bool)

(assert (=> b!4697092 m!5607057))

(assert (=> b!4697092 m!5607043))

(declare-fun m!5607059 () Bool)

(assert (=> b!4697092 m!5607059))

(declare-fun m!5607061 () Bool)

(assert (=> b!4697092 m!5607061))

(declare-fun m!5607063 () Bool)

(assert (=> b!4697092 m!5607063))

(assert (=> b!4697092 m!5607053))

(declare-fun m!5607065 () Bool)

(assert (=> bm!328337 m!5607065))

(declare-fun m!5607067 () Bool)

(assert (=> bm!328338 m!5607067))

(declare-fun m!5607069 () Bool)

(assert (=> b!4697093 m!5607069))

(assert (=> bm!328339 m!5607035))

(declare-fun m!5607071 () Bool)

(assert (=> b!4697090 m!5607071))

(assert (=> b!4696739 d!1493425))

(declare-fun d!1493427 () Bool)

(assert (=> d!1493427 (= (eq!1041 lt!1858242 (+!2166 lt!1858236 (h!58754 oldBucket!34))) (= (content!9226 (toList!5653 lt!1858242)) (content!9226 (toList!5653 (+!2166 lt!1858236 (h!58754 oldBucket!34))))))))

(declare-fun bs!1092022 () Bool)

(assert (= bs!1092022 d!1493427))

(declare-fun m!5607073 () Bool)

(assert (=> bs!1092022 m!5607073))

(declare-fun m!5607075 () Bool)

(assert (=> bs!1092022 m!5607075))

(assert (=> b!4696739 d!1493427))

(declare-fun bs!1092023 () Bool)

(declare-fun d!1493429 () Bool)

(assert (= bs!1092023 (and d!1493429 d!1493275)))

(declare-fun lambda!209170 () Int)

(assert (=> bs!1092023 (= lambda!209170 lambda!209096)))

(declare-fun bs!1092024 () Bool)

(assert (= bs!1092024 (and d!1493429 d!1493357)))

(assert (=> bs!1092024 (= lambda!209170 lambda!209112)))

(declare-fun bs!1092025 () Bool)

(assert (= bs!1092025 (and d!1493429 start!475864)))

(assert (=> bs!1092025 (= lambda!209170 lambda!209033)))

(declare-fun bs!1092026 () Bool)

(assert (= bs!1092026 (and d!1493429 d!1493273)))

(assert (=> bs!1092026 (= lambda!209170 lambda!209053)))

(declare-fun bs!1092027 () Bool)

(assert (= bs!1092027 (and d!1493429 d!1493335)))

(assert (=> bs!1092027 (= lambda!209170 lambda!209111)))

(declare-fun bs!1092028 () Bool)

(assert (= bs!1092028 (and d!1493429 d!1493333)))

(assert (=> bs!1092028 (not (= lambda!209170 lambda!209102))))

(assert (=> d!1493429 (contains!15738 (extractMap!1908 (toList!5654 lt!1858246)) key!4653)))

(declare-fun lt!1858730 () Unit!125401)

(declare-fun choose!32765 (ListLongMap!4183 K!13855 Hashable!6251) Unit!125401)

(assert (=> d!1493429 (= lt!1858730 (choose!32765 lt!1858246 key!4653 hashF!1323))))

(assert (=> d!1493429 (forall!11371 (toList!5654 lt!1858246) lambda!209170)))

(assert (=> d!1493429 (= (lemmaListContainsThenExtractedMapContains!474 lt!1858246 key!4653 hashF!1323) lt!1858730)))

(declare-fun bs!1092029 () Bool)

(assert (= bs!1092029 d!1493429))

(declare-fun m!5607077 () Bool)

(assert (=> bs!1092029 m!5607077))

(assert (=> bs!1092029 m!5607077))

(declare-fun m!5607079 () Bool)

(assert (=> bs!1092029 m!5607079))

(declare-fun m!5607081 () Bool)

(assert (=> bs!1092029 m!5607081))

(declare-fun m!5607083 () Bool)

(assert (=> bs!1092029 m!5607083))

(assert (=> b!4696739 d!1493429))

(declare-fun d!1493431 () Bool)

(assert (=> d!1493431 (eq!1041 (addToMapMapFromBucket!1314 (Cons!52487 lt!1858231 lt!1858237) lt!1858230) (+!2166 (addToMapMapFromBucket!1314 lt!1858237 lt!1858230) lt!1858231))))

(declare-fun lt!1858733 () Unit!125401)

(declare-fun choose!32766 (tuple2!53922 List!52611 ListMap!5017) Unit!125401)

(assert (=> d!1493431 (= lt!1858733 (choose!32766 lt!1858231 lt!1858237 lt!1858230))))

(assert (=> d!1493431 (noDuplicateKeys!1882 lt!1858237)))

(assert (=> d!1493431 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!290 lt!1858231 lt!1858237 lt!1858230) lt!1858733)))

(declare-fun bs!1092030 () Bool)

(assert (= bs!1092030 d!1493431))

(assert (=> bs!1092030 m!5606177))

(assert (=> bs!1092030 m!5606189))

(assert (=> bs!1092030 m!5606177))

(assert (=> bs!1092030 m!5606167))

(declare-fun m!5607085 () Bool)

(assert (=> bs!1092030 m!5607085))

(assert (=> bs!1092030 m!5606167))

(assert (=> bs!1092030 m!5606189))

(assert (=> bs!1092030 m!5606191))

(assert (=> bs!1092030 m!5607005))

(assert (=> b!4696739 d!1493431))

(declare-fun bs!1092031 () Bool)

(declare-fun b!4697096 () Bool)

(assert (= bs!1092031 (and b!4697096 d!1493361)))

(declare-fun lambda!209171 () Int)

(assert (=> bs!1092031 (= (= lt!1858230 lt!1858691) (= lambda!209171 lambda!209163))))

(declare-fun bs!1092032 () Bool)

(assert (= bs!1092032 (and b!4697096 b!4697073)))

(assert (=> bs!1092032 (= lambda!209171 lambda!209160)))

(declare-fun bs!1092033 () Bool)

(assert (= bs!1092033 (and b!4697096 b!4697092)))

(assert (=> bs!1092033 (= lambda!209171 lambda!209165)))

(declare-fun bs!1092034 () Bool)

(assert (= bs!1092034 (and b!4697096 b!4697074)))

(assert (=> bs!1092034 (= (= lt!1858230 lt!1858693) (= lambda!209171 lambda!209162))))

(declare-fun bs!1092035 () Bool)

(assert (= bs!1092035 (and b!4697096 b!4697091)))

(assert (=> bs!1092035 (= lambda!209171 lambda!209164)))

(declare-fun bs!1092036 () Bool)

(assert (= bs!1092036 (and b!4697096 d!1493425)))

(assert (=> bs!1092036 (= (= lt!1858230 lt!1858712) (= lambda!209171 lambda!209167))))

(assert (=> bs!1092033 (= (= lt!1858230 lt!1858714) (= lambda!209171 lambda!209166))))

(assert (=> bs!1092034 (= lambda!209171 lambda!209161)))

(assert (=> b!4697096 true))

(declare-fun bs!1092037 () Bool)

(declare-fun b!4697097 () Bool)

(assert (= bs!1092037 (and b!4697097 d!1493361)))

(declare-fun lambda!209172 () Int)

(assert (=> bs!1092037 (= (= lt!1858230 lt!1858691) (= lambda!209172 lambda!209163))))

(declare-fun bs!1092038 () Bool)

(assert (= bs!1092038 (and b!4697097 b!4697073)))

(assert (=> bs!1092038 (= lambda!209172 lambda!209160)))

(declare-fun bs!1092039 () Bool)

(assert (= bs!1092039 (and b!4697097 b!4697092)))

(assert (=> bs!1092039 (= lambda!209172 lambda!209165)))

(declare-fun bs!1092040 () Bool)

(assert (= bs!1092040 (and b!4697097 b!4697074)))

(assert (=> bs!1092040 (= (= lt!1858230 lt!1858693) (= lambda!209172 lambda!209162))))

(declare-fun bs!1092041 () Bool)

(assert (= bs!1092041 (and b!4697097 d!1493425)))

(assert (=> bs!1092041 (= (= lt!1858230 lt!1858712) (= lambda!209172 lambda!209167))))

(assert (=> bs!1092039 (= (= lt!1858230 lt!1858714) (= lambda!209172 lambda!209166))))

(assert (=> bs!1092040 (= lambda!209172 lambda!209161)))

(declare-fun bs!1092042 () Bool)

(assert (= bs!1092042 (and b!4697097 b!4697091)))

(assert (=> bs!1092042 (= lambda!209172 lambda!209164)))

(declare-fun bs!1092043 () Bool)

(assert (= bs!1092043 (and b!4697097 b!4697096)))

(assert (=> bs!1092043 (= lambda!209172 lambda!209171)))

(assert (=> b!4697097 true))

(declare-fun lambda!209173 () Int)

(declare-fun lt!1858741 () ListMap!5017)

(assert (=> bs!1092037 (= (= lt!1858741 lt!1858691) (= lambda!209173 lambda!209163))))

(assert (=> b!4697097 (= (= lt!1858741 lt!1858230) (= lambda!209173 lambda!209172))))

(assert (=> bs!1092038 (= (= lt!1858741 lt!1858230) (= lambda!209173 lambda!209160))))

(assert (=> bs!1092039 (= (= lt!1858741 lt!1858230) (= lambda!209173 lambda!209165))))

(assert (=> bs!1092040 (= (= lt!1858741 lt!1858693) (= lambda!209173 lambda!209162))))

(assert (=> bs!1092041 (= (= lt!1858741 lt!1858712) (= lambda!209173 lambda!209167))))

(assert (=> bs!1092039 (= (= lt!1858741 lt!1858714) (= lambda!209173 lambda!209166))))

(assert (=> bs!1092040 (= (= lt!1858741 lt!1858230) (= lambda!209173 lambda!209161))))

(assert (=> bs!1092042 (= (= lt!1858741 lt!1858230) (= lambda!209173 lambda!209164))))

(assert (=> bs!1092043 (= (= lt!1858741 lt!1858230) (= lambda!209173 lambda!209171))))

(assert (=> b!4697097 true))

(declare-fun bs!1092044 () Bool)

(declare-fun d!1493433 () Bool)

(assert (= bs!1092044 (and d!1493433 d!1493361)))

(declare-fun lt!1858739 () ListMap!5017)

(declare-fun lambda!209174 () Int)

(assert (=> bs!1092044 (= (= lt!1858739 lt!1858691) (= lambda!209174 lambda!209163))))

(declare-fun bs!1092045 () Bool)

(assert (= bs!1092045 (and d!1493433 b!4697097)))

(assert (=> bs!1092045 (= (= lt!1858739 lt!1858230) (= lambda!209174 lambda!209172))))

(declare-fun bs!1092046 () Bool)

(assert (= bs!1092046 (and d!1493433 b!4697073)))

(assert (=> bs!1092046 (= (= lt!1858739 lt!1858230) (= lambda!209174 lambda!209160))))

(assert (=> bs!1092045 (= (= lt!1858739 lt!1858741) (= lambda!209174 lambda!209173))))

(declare-fun bs!1092047 () Bool)

(assert (= bs!1092047 (and d!1493433 b!4697092)))

(assert (=> bs!1092047 (= (= lt!1858739 lt!1858230) (= lambda!209174 lambda!209165))))

(declare-fun bs!1092048 () Bool)

(assert (= bs!1092048 (and d!1493433 b!4697074)))

(assert (=> bs!1092048 (= (= lt!1858739 lt!1858693) (= lambda!209174 lambda!209162))))

(declare-fun bs!1092049 () Bool)

(assert (= bs!1092049 (and d!1493433 d!1493425)))

(assert (=> bs!1092049 (= (= lt!1858739 lt!1858712) (= lambda!209174 lambda!209167))))

(assert (=> bs!1092047 (= (= lt!1858739 lt!1858714) (= lambda!209174 lambda!209166))))

(assert (=> bs!1092048 (= (= lt!1858739 lt!1858230) (= lambda!209174 lambda!209161))))

(declare-fun bs!1092050 () Bool)

(assert (= bs!1092050 (and d!1493433 b!4697091)))

(assert (=> bs!1092050 (= (= lt!1858739 lt!1858230) (= lambda!209174 lambda!209164))))

(declare-fun bs!1092051 () Bool)

(assert (= bs!1092051 (and d!1493433 b!4697096)))

(assert (=> bs!1092051 (= (= lt!1858739 lt!1858230) (= lambda!209174 lambda!209171))))

(assert (=> d!1493433 true))

(declare-fun b!4697094 () Bool)

(declare-fun e!2930141 () Bool)

(declare-fun call!328346 () Bool)

(assert (=> b!4697094 (= e!2930141 call!328346)))

(declare-fun b!4697095 () Bool)

(declare-fun res!1982382 () Bool)

(declare-fun e!2930140 () Bool)

(assert (=> b!4697095 (=> (not res!1982382) (not e!2930140))))

(assert (=> b!4697095 (= res!1982382 (forall!11373 (toList!5653 lt!1858230) lambda!209174))))

(declare-fun c!802977 () Bool)

(declare-fun bm!328340 () Bool)

(assert (=> bm!328340 (= call!328346 (forall!11373 (toList!5653 lt!1858230) (ite c!802977 lambda!209171 lambda!209173)))))

(declare-fun call!328345 () Bool)

(declare-fun bm!328341 () Bool)

(declare-fun lt!1858750 () ListMap!5017)

(assert (=> bm!328341 (= call!328345 (forall!11373 (ite c!802977 (toList!5653 lt!1858230) (toList!5653 lt!1858750)) (ite c!802977 lambda!209171 lambda!209173)))))

(declare-fun e!2930142 () ListMap!5017)

(assert (=> b!4697096 (= e!2930142 lt!1858230)))

(declare-fun lt!1858738 () Unit!125401)

(declare-fun call!328347 () Unit!125401)

(assert (=> b!4697096 (= lt!1858738 call!328347)))

(assert (=> b!4697096 call!328345))

(declare-fun lt!1858737 () Unit!125401)

(assert (=> b!4697096 (= lt!1858737 lt!1858738)))

(assert (=> b!4697096 call!328346))

(declare-fun lt!1858736 () Unit!125401)

(declare-fun Unit!125474 () Unit!125401)

(assert (=> b!4697096 (= lt!1858736 Unit!125474)))

(assert (=> d!1493433 e!2930140))

(declare-fun res!1982383 () Bool)

(assert (=> d!1493433 (=> (not res!1982383) (not e!2930140))))

(assert (=> d!1493433 (= res!1982383 (forall!11373 (Cons!52487 lt!1858231 lt!1858237) lambda!209174))))

(assert (=> d!1493433 (= lt!1858739 e!2930142)))

(assert (=> d!1493433 (= c!802977 ((_ is Nil!52487) (Cons!52487 lt!1858231 lt!1858237)))))

(assert (=> d!1493433 (noDuplicateKeys!1882 (Cons!52487 lt!1858231 lt!1858237))))

(assert (=> d!1493433 (= (addToMapMapFromBucket!1314 (Cons!52487 lt!1858231 lt!1858237) lt!1858230) lt!1858739)))

(assert (=> b!4697097 (= e!2930142 lt!1858741)))

(assert (=> b!4697097 (= lt!1858750 (+!2166 lt!1858230 (h!58754 (Cons!52487 lt!1858231 lt!1858237))))))

(assert (=> b!4697097 (= lt!1858741 (addToMapMapFromBucket!1314 (t!359809 (Cons!52487 lt!1858231 lt!1858237)) (+!2166 lt!1858230 (h!58754 (Cons!52487 lt!1858231 lt!1858237)))))))

(declare-fun lt!1858735 () Unit!125401)

(assert (=> b!4697097 (= lt!1858735 call!328347)))

(assert (=> b!4697097 (forall!11373 (toList!5653 lt!1858230) lambda!209172)))

(declare-fun lt!1858748 () Unit!125401)

(assert (=> b!4697097 (= lt!1858748 lt!1858735)))

(assert (=> b!4697097 call!328345))

(declare-fun lt!1858743 () Unit!125401)

(declare-fun Unit!125475 () Unit!125401)

(assert (=> b!4697097 (= lt!1858743 Unit!125475)))

(assert (=> b!4697097 (forall!11373 (t!359809 (Cons!52487 lt!1858231 lt!1858237)) lambda!209173)))

(declare-fun lt!1858746 () Unit!125401)

(declare-fun Unit!125476 () Unit!125401)

(assert (=> b!4697097 (= lt!1858746 Unit!125476)))

(declare-fun lt!1858749 () Unit!125401)

(declare-fun Unit!125477 () Unit!125401)

(assert (=> b!4697097 (= lt!1858749 Unit!125477)))

(declare-fun lt!1858745 () Unit!125401)

(assert (=> b!4697097 (= lt!1858745 (forallContained!3480 (toList!5653 lt!1858750) lambda!209173 (h!58754 (Cons!52487 lt!1858231 lt!1858237))))))

(assert (=> b!4697097 (contains!15738 lt!1858750 (_1!30255 (h!58754 (Cons!52487 lt!1858231 lt!1858237))))))

(declare-fun lt!1858753 () Unit!125401)

(declare-fun Unit!125478 () Unit!125401)

(assert (=> b!4697097 (= lt!1858753 Unit!125478)))

(assert (=> b!4697097 (contains!15738 lt!1858741 (_1!30255 (h!58754 (Cons!52487 lt!1858231 lt!1858237))))))

(declare-fun lt!1858744 () Unit!125401)

(declare-fun Unit!125479 () Unit!125401)

(assert (=> b!4697097 (= lt!1858744 Unit!125479)))

(assert (=> b!4697097 (forall!11373 (Cons!52487 lt!1858231 lt!1858237) lambda!209173)))

(declare-fun lt!1858734 () Unit!125401)

(declare-fun Unit!125480 () Unit!125401)

(assert (=> b!4697097 (= lt!1858734 Unit!125480)))

(assert (=> b!4697097 (forall!11373 (toList!5653 lt!1858750) lambda!209173)))

(declare-fun lt!1858752 () Unit!125401)

(declare-fun Unit!125481 () Unit!125401)

(assert (=> b!4697097 (= lt!1858752 Unit!125481)))

(declare-fun lt!1858754 () Unit!125401)

(declare-fun Unit!125482 () Unit!125401)

(assert (=> b!4697097 (= lt!1858754 Unit!125482)))

(declare-fun lt!1858740 () Unit!125401)

(assert (=> b!4697097 (= lt!1858740 (addForallContainsKeyThenBeforeAdding!719 lt!1858230 lt!1858741 (_1!30255 (h!58754 (Cons!52487 lt!1858231 lt!1858237))) (_2!30255 (h!58754 (Cons!52487 lt!1858231 lt!1858237)))))))

(assert (=> b!4697097 (forall!11373 (toList!5653 lt!1858230) lambda!209173)))

(declare-fun lt!1858747 () Unit!125401)

(assert (=> b!4697097 (= lt!1858747 lt!1858740)))

(assert (=> b!4697097 (forall!11373 (toList!5653 lt!1858230) lambda!209173)))

(declare-fun lt!1858742 () Unit!125401)

(declare-fun Unit!125483 () Unit!125401)

(assert (=> b!4697097 (= lt!1858742 Unit!125483)))

(declare-fun res!1982381 () Bool)

(assert (=> b!4697097 (= res!1982381 (forall!11373 (Cons!52487 lt!1858231 lt!1858237) lambda!209173))))

(assert (=> b!4697097 (=> (not res!1982381) (not e!2930141))))

(assert (=> b!4697097 e!2930141))

(declare-fun lt!1858751 () Unit!125401)

(declare-fun Unit!125484 () Unit!125401)

(assert (=> b!4697097 (= lt!1858751 Unit!125484)))

(declare-fun b!4697098 () Bool)

(assert (=> b!4697098 (= e!2930140 (invariantList!1432 (toList!5653 lt!1858739)))))

(declare-fun bm!328342 () Bool)

(assert (=> bm!328342 (= call!328347 (lemmaContainsAllItsOwnKeys!720 lt!1858230))))

(assert (= (and d!1493433 c!802977) b!4697096))

(assert (= (and d!1493433 (not c!802977)) b!4697097))

(assert (= (and b!4697097 res!1982381) b!4697094))

(assert (= (or b!4697096 b!4697097) bm!328342))

(assert (= (or b!4697096 b!4697097) bm!328341))

(assert (= (or b!4697096 b!4697094) bm!328340))

(assert (= (and d!1493433 res!1982383) b!4697095))

(assert (= (and b!4697095 res!1982382) b!4697098))

(declare-fun m!5607087 () Bool)

(assert (=> d!1493433 m!5607087))

(declare-fun m!5607089 () Bool)

(assert (=> d!1493433 m!5607089))

(declare-fun m!5607091 () Bool)

(assert (=> b!4697097 m!5607091))

(declare-fun m!5607093 () Bool)

(assert (=> b!4697097 m!5607093))

(declare-fun m!5607095 () Bool)

(assert (=> b!4697097 m!5607095))

(declare-fun m!5607097 () Bool)

(assert (=> b!4697097 m!5607097))

(declare-fun m!5607099 () Bool)

(assert (=> b!4697097 m!5607099))

(declare-fun m!5607101 () Bool)

(assert (=> b!4697097 m!5607101))

(declare-fun m!5607103 () Bool)

(assert (=> b!4697097 m!5607103))

(assert (=> b!4697097 m!5607095))

(declare-fun m!5607105 () Bool)

(assert (=> b!4697097 m!5607105))

(assert (=> b!4697097 m!5607091))

(declare-fun m!5607107 () Bool)

(assert (=> b!4697097 m!5607107))

(declare-fun m!5607109 () Bool)

(assert (=> b!4697097 m!5607109))

(declare-fun m!5607111 () Bool)

(assert (=> b!4697097 m!5607111))

(assert (=> b!4697097 m!5607101))

(declare-fun m!5607113 () Bool)

(assert (=> bm!328340 m!5607113))

(declare-fun m!5607115 () Bool)

(assert (=> bm!328341 m!5607115))

(declare-fun m!5607117 () Bool)

(assert (=> b!4697098 m!5607117))

(assert (=> bm!328342 m!5607035))

(declare-fun m!5607119 () Bool)

(assert (=> b!4697095 m!5607119))

(assert (=> b!4696739 d!1493433))

(declare-fun d!1493435 () Bool)

(assert (=> d!1493435 (eq!1041 (addToMapMapFromBucket!1314 (Cons!52487 lt!1858228 lt!1858238) lt!1858230) (+!2166 (addToMapMapFromBucket!1314 lt!1858238 lt!1858230) lt!1858228))))

(declare-fun lt!1858755 () Unit!125401)

(assert (=> d!1493435 (= lt!1858755 (choose!32766 lt!1858228 lt!1858238 lt!1858230))))

(assert (=> d!1493435 (noDuplicateKeys!1882 lt!1858238)))

(assert (=> d!1493435 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!290 lt!1858228 lt!1858238 lt!1858230) lt!1858755)))

(declare-fun bs!1092052 () Bool)

(assert (= bs!1092052 d!1493435))

(assert (=> bs!1092052 m!5606173))

(assert (=> bs!1092052 m!5606175))

(assert (=> bs!1092052 m!5606173))

(assert (=> bs!1092052 m!5606171))

(declare-fun m!5607121 () Bool)

(assert (=> bs!1092052 m!5607121))

(assert (=> bs!1092052 m!5606171))

(assert (=> bs!1092052 m!5606175))

(assert (=> bs!1092052 m!5606199))

(assert (=> bs!1092052 m!5607041))

(assert (=> b!4696739 d!1493435))

(declare-fun b!4697117 () Bool)

(declare-fun e!2930160 () List!52614)

(declare-fun getKeysList!872 (List!52611) List!52614)

(assert (=> b!4697117 (= e!2930160 (getKeysList!872 (toList!5653 lt!1858253)))))

(declare-fun d!1493437 () Bool)

(declare-fun e!2930158 () Bool)

(assert (=> d!1493437 e!2930158))

(declare-fun res!1982390 () Bool)

(assert (=> d!1493437 (=> res!1982390 e!2930158)))

(declare-fun e!2930156 () Bool)

(assert (=> d!1493437 (= res!1982390 e!2930156)))

(declare-fun res!1982391 () Bool)

(assert (=> d!1493437 (=> (not res!1982391) (not e!2930156))))

(declare-fun lt!1858776 () Bool)

(assert (=> d!1493437 (= res!1982391 (not lt!1858776))))

(declare-fun lt!1858779 () Bool)

(assert (=> d!1493437 (= lt!1858776 lt!1858779)))

(declare-fun lt!1858778 () Unit!125401)

(declare-fun e!2930157 () Unit!125401)

(assert (=> d!1493437 (= lt!1858778 e!2930157)))

(declare-fun c!802985 () Bool)

(assert (=> d!1493437 (= c!802985 lt!1858779)))

(declare-fun containsKey!3128 (List!52611 K!13855) Bool)

(assert (=> d!1493437 (= lt!1858779 (containsKey!3128 (toList!5653 lt!1858253) key!4653))))

(assert (=> d!1493437 (= (contains!15738 lt!1858253 key!4653) lt!1858776)))

(declare-fun b!4697118 () Bool)

(declare-fun e!2930155 () Unit!125401)

(declare-fun Unit!125485 () Unit!125401)

(assert (=> b!4697118 (= e!2930155 Unit!125485)))

(declare-fun b!4697119 () Bool)

(assert (=> b!4697119 (= e!2930160 (keys!18763 lt!1858253))))

(declare-fun b!4697120 () Bool)

(declare-fun contains!15742 (List!52614 K!13855) Bool)

(assert (=> b!4697120 (= e!2930156 (not (contains!15742 (keys!18763 lt!1858253) key!4653)))))

(declare-fun b!4697121 () Bool)

(assert (=> b!4697121 false))

(declare-fun lt!1858777 () Unit!125401)

(declare-fun lt!1858775 () Unit!125401)

(assert (=> b!4697121 (= lt!1858777 lt!1858775)))

(assert (=> b!4697121 (containsKey!3128 (toList!5653 lt!1858253) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!871 (List!52611 K!13855) Unit!125401)

(assert (=> b!4697121 (= lt!1858775 (lemmaInGetKeysListThenContainsKey!871 (toList!5653 lt!1858253) key!4653))))

(declare-fun Unit!125486 () Unit!125401)

(assert (=> b!4697121 (= e!2930155 Unit!125486)))

(declare-fun b!4697122 () Bool)

(assert (=> b!4697122 (= e!2930157 e!2930155)))

(declare-fun c!802984 () Bool)

(declare-fun call!328350 () Bool)

(assert (=> b!4697122 (= c!802984 call!328350)))

(declare-fun b!4697123 () Bool)

(declare-fun e!2930159 () Bool)

(assert (=> b!4697123 (= e!2930158 e!2930159)))

(declare-fun res!1982392 () Bool)

(assert (=> b!4697123 (=> (not res!1982392) (not e!2930159))))

(declare-fun isDefined!9407 (Option!12151) Bool)

(assert (=> b!4697123 (= res!1982392 (isDefined!9407 (getValueByKey!1823 (toList!5653 lt!1858253) key!4653)))))

(declare-fun b!4697124 () Bool)

(assert (=> b!4697124 (= e!2930159 (contains!15742 (keys!18763 lt!1858253) key!4653))))

(declare-fun bm!328345 () Bool)

(assert (=> bm!328345 (= call!328350 (contains!15742 e!2930160 key!4653))))

(declare-fun c!802986 () Bool)

(assert (=> bm!328345 (= c!802986 c!802985)))

(declare-fun b!4697125 () Bool)

(declare-fun lt!1858773 () Unit!125401)

(assert (=> b!4697125 (= e!2930157 lt!1858773)))

(declare-fun lt!1858774 () Unit!125401)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1716 (List!52611 K!13855) Unit!125401)

(assert (=> b!4697125 (= lt!1858774 (lemmaContainsKeyImpliesGetValueByKeyDefined!1716 (toList!5653 lt!1858253) key!4653))))

(assert (=> b!4697125 (isDefined!9407 (getValueByKey!1823 (toList!5653 lt!1858253) key!4653))))

(declare-fun lt!1858772 () Unit!125401)

(assert (=> b!4697125 (= lt!1858772 lt!1858774)))

(declare-fun lemmaInListThenGetKeysListContains!867 (List!52611 K!13855) Unit!125401)

(assert (=> b!4697125 (= lt!1858773 (lemmaInListThenGetKeysListContains!867 (toList!5653 lt!1858253) key!4653))))

(assert (=> b!4697125 call!328350))

(assert (= (and d!1493437 c!802985) b!4697125))

(assert (= (and d!1493437 (not c!802985)) b!4697122))

(assert (= (and b!4697122 c!802984) b!4697121))

(assert (= (and b!4697122 (not c!802984)) b!4697118))

(assert (= (or b!4697125 b!4697122) bm!328345))

(assert (= (and bm!328345 c!802986) b!4697117))

(assert (= (and bm!328345 (not c!802986)) b!4697119))

(assert (= (and d!1493437 res!1982391) b!4697120))

(assert (= (and d!1493437 (not res!1982390)) b!4697123))

(assert (= (and b!4697123 res!1982392) b!4697124))

(declare-fun m!5607123 () Bool)

(assert (=> b!4697119 m!5607123))

(declare-fun m!5607125 () Bool)

(assert (=> b!4697125 m!5607125))

(declare-fun m!5607127 () Bool)

(assert (=> b!4697125 m!5607127))

(assert (=> b!4697125 m!5607127))

(declare-fun m!5607129 () Bool)

(assert (=> b!4697125 m!5607129))

(declare-fun m!5607131 () Bool)

(assert (=> b!4697125 m!5607131))

(declare-fun m!5607133 () Bool)

(assert (=> d!1493437 m!5607133))

(assert (=> b!4697121 m!5607133))

(declare-fun m!5607135 () Bool)

(assert (=> b!4697121 m!5607135))

(assert (=> b!4697123 m!5607127))

(assert (=> b!4697123 m!5607127))

(assert (=> b!4697123 m!5607129))

(declare-fun m!5607137 () Bool)

(assert (=> b!4697117 m!5607137))

(declare-fun m!5607139 () Bool)

(assert (=> bm!328345 m!5607139))

(assert (=> b!4697124 m!5607123))

(assert (=> b!4697124 m!5607123))

(declare-fun m!5607141 () Bool)

(assert (=> b!4697124 m!5607141))

(assert (=> b!4697120 m!5607123))

(assert (=> b!4697120 m!5607123))

(assert (=> b!4697120 m!5607141))

(assert (=> b!4696739 d!1493437))

(declare-fun bs!1092053 () Bool)

(declare-fun d!1493439 () Bool)

(assert (= bs!1092053 (and d!1493439 d!1493275)))

(declare-fun lambda!209175 () Int)

(assert (=> bs!1092053 (= lambda!209175 lambda!209096)))

(declare-fun bs!1092054 () Bool)

(assert (= bs!1092054 (and d!1493439 d!1493357)))

(assert (=> bs!1092054 (= lambda!209175 lambda!209112)))

(declare-fun bs!1092055 () Bool)

(assert (= bs!1092055 (and d!1493439 start!475864)))

(assert (=> bs!1092055 (= lambda!209175 lambda!209033)))

(declare-fun bs!1092056 () Bool)

(assert (= bs!1092056 (and d!1493439 d!1493273)))

(assert (=> bs!1092056 (= lambda!209175 lambda!209053)))

(declare-fun bs!1092057 () Bool)

(assert (= bs!1092057 (and d!1493439 d!1493429)))

(assert (=> bs!1092057 (= lambda!209175 lambda!209170)))

(declare-fun bs!1092058 () Bool)

(assert (= bs!1092058 (and d!1493439 d!1493335)))

(assert (=> bs!1092058 (= lambda!209175 lambda!209111)))

(declare-fun bs!1092059 () Bool)

(assert (= bs!1092059 (and d!1493439 d!1493333)))

(assert (=> bs!1092059 (not (= lambda!209175 lambda!209102))))

(declare-fun lt!1858780 () ListMap!5017)

(assert (=> d!1493439 (invariantList!1432 (toList!5653 lt!1858780))))

(declare-fun e!2930161 () ListMap!5017)

(assert (=> d!1493439 (= lt!1858780 e!2930161)))

(declare-fun c!802987 () Bool)

(assert (=> d!1493439 (= c!802987 ((_ is Cons!52488) (Cons!52488 (tuple2!53925 hash!405 lt!1858238) (t!359810 (toList!5654 lm!2023)))))))

(assert (=> d!1493439 (forall!11371 (Cons!52488 (tuple2!53925 hash!405 lt!1858238) (t!359810 (toList!5654 lm!2023))) lambda!209175)))

(assert (=> d!1493439 (= (extractMap!1908 (Cons!52488 (tuple2!53925 hash!405 lt!1858238) (t!359810 (toList!5654 lm!2023)))) lt!1858780)))

(declare-fun b!4697126 () Bool)

(assert (=> b!4697126 (= e!2930161 (addToMapMapFromBucket!1314 (_2!30256 (h!58755 (Cons!52488 (tuple2!53925 hash!405 lt!1858238) (t!359810 (toList!5654 lm!2023))))) (extractMap!1908 (t!359810 (Cons!52488 (tuple2!53925 hash!405 lt!1858238) (t!359810 (toList!5654 lm!2023)))))))))

(declare-fun b!4697127 () Bool)

(assert (=> b!4697127 (= e!2930161 (ListMap!5018 Nil!52487))))

(assert (= (and d!1493439 c!802987) b!4697126))

(assert (= (and d!1493439 (not c!802987)) b!4697127))

(declare-fun m!5607143 () Bool)

(assert (=> d!1493439 m!5607143))

(declare-fun m!5607145 () Bool)

(assert (=> d!1493439 m!5607145))

(declare-fun m!5607147 () Bool)

(assert (=> b!4697126 m!5607147))

(assert (=> b!4697126 m!5607147))

(declare-fun m!5607149 () Bool)

(assert (=> b!4697126 m!5607149))

(assert (=> b!4696739 d!1493439))

(declare-fun d!1493441 () Bool)

(assert (=> d!1493441 (= (head!10028 newBucket!218) (h!58754 newBucket!218))))

(assert (=> b!4696739 d!1493441))

(declare-fun d!1493443 () Bool)

(declare-fun e!2930162 () Bool)

(assert (=> d!1493443 e!2930162))

(declare-fun res!1982394 () Bool)

(assert (=> d!1493443 (=> (not res!1982394) (not e!2930162))))

(declare-fun lt!1858782 () ListMap!5017)

(assert (=> d!1493443 (= res!1982394 (contains!15738 lt!1858782 (_1!30255 (h!58754 oldBucket!34))))))

(declare-fun lt!1858784 () List!52611)

(assert (=> d!1493443 (= lt!1858782 (ListMap!5018 lt!1858784))))

(declare-fun lt!1858781 () Unit!125401)

(declare-fun lt!1858783 () Unit!125401)

(assert (=> d!1493443 (= lt!1858781 lt!1858783)))

(assert (=> d!1493443 (= (getValueByKey!1823 lt!1858784 (_1!30255 (h!58754 oldBucket!34))) (Some!12150 (_2!30255 (h!58754 oldBucket!34))))))

(assert (=> d!1493443 (= lt!1858783 (lemmaContainsTupThenGetReturnValue!1022 lt!1858784 (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34))))))

(assert (=> d!1493443 (= lt!1858784 (insertNoDuplicatedKeys!530 (toList!5653 lt!1858236) (_1!30255 (h!58754 oldBucket!34)) (_2!30255 (h!58754 oldBucket!34))))))

(assert (=> d!1493443 (= (+!2166 lt!1858236 (h!58754 oldBucket!34)) lt!1858782)))

(declare-fun b!4697128 () Bool)

(declare-fun res!1982393 () Bool)

(assert (=> b!4697128 (=> (not res!1982393) (not e!2930162))))

(assert (=> b!4697128 (= res!1982393 (= (getValueByKey!1823 (toList!5653 lt!1858782) (_1!30255 (h!58754 oldBucket!34))) (Some!12150 (_2!30255 (h!58754 oldBucket!34)))))))

(declare-fun b!4697129 () Bool)

(assert (=> b!4697129 (= e!2930162 (contains!15741 (toList!5653 lt!1858782) (h!58754 oldBucket!34)))))

(assert (= (and d!1493443 res!1982394) b!4697128))

(assert (= (and b!4697128 res!1982393) b!4697129))

(declare-fun m!5607151 () Bool)

(assert (=> d!1493443 m!5607151))

(declare-fun m!5607153 () Bool)

(assert (=> d!1493443 m!5607153))

(declare-fun m!5607155 () Bool)

(assert (=> d!1493443 m!5607155))

(declare-fun m!5607157 () Bool)

(assert (=> d!1493443 m!5607157))

(declare-fun m!5607159 () Bool)

(assert (=> b!4697128 m!5607159))

(declare-fun m!5607161 () Bool)

(assert (=> b!4697129 m!5607161))

(assert (=> b!4696739 d!1493443))

(declare-fun d!1493445 () Bool)

(declare-fun e!2930163 () Bool)

(assert (=> d!1493445 e!2930163))

(declare-fun res!1982396 () Bool)

(assert (=> d!1493445 (=> (not res!1982396) (not e!2930163))))

(declare-fun lt!1858786 () ListMap!5017)

(assert (=> d!1493445 (= res!1982396 (contains!15738 lt!1858786 (_1!30255 lt!1858228)))))

(declare-fun lt!1858788 () List!52611)

(assert (=> d!1493445 (= lt!1858786 (ListMap!5018 lt!1858788))))

(declare-fun lt!1858785 () Unit!125401)

(declare-fun lt!1858787 () Unit!125401)

(assert (=> d!1493445 (= lt!1858785 lt!1858787)))

(assert (=> d!1493445 (= (getValueByKey!1823 lt!1858788 (_1!30255 lt!1858228)) (Some!12150 (_2!30255 lt!1858228)))))

(assert (=> d!1493445 (= lt!1858787 (lemmaContainsTupThenGetReturnValue!1022 lt!1858788 (_1!30255 lt!1858228) (_2!30255 lt!1858228)))))

(assert (=> d!1493445 (= lt!1858788 (insertNoDuplicatedKeys!530 (toList!5653 (addToMapMapFromBucket!1314 lt!1858238 lt!1858230)) (_1!30255 lt!1858228) (_2!30255 lt!1858228)))))

(assert (=> d!1493445 (= (+!2166 (addToMapMapFromBucket!1314 lt!1858238 lt!1858230) lt!1858228) lt!1858786)))

(declare-fun b!4697130 () Bool)

(declare-fun res!1982395 () Bool)

(assert (=> b!4697130 (=> (not res!1982395) (not e!2930163))))

(assert (=> b!4697130 (= res!1982395 (= (getValueByKey!1823 (toList!5653 lt!1858786) (_1!30255 lt!1858228)) (Some!12150 (_2!30255 lt!1858228))))))

(declare-fun b!4697131 () Bool)

(assert (=> b!4697131 (= e!2930163 (contains!15741 (toList!5653 lt!1858786) lt!1858228))))

(assert (= (and d!1493445 res!1982396) b!4697130))

(assert (= (and b!4697130 res!1982395) b!4697131))

(declare-fun m!5607163 () Bool)

(assert (=> d!1493445 m!5607163))

(declare-fun m!5607165 () Bool)

(assert (=> d!1493445 m!5607165))

(declare-fun m!5607167 () Bool)

(assert (=> d!1493445 m!5607167))

(declare-fun m!5607169 () Bool)

(assert (=> d!1493445 m!5607169))

(declare-fun m!5607171 () Bool)

(assert (=> b!4697130 m!5607171))

(declare-fun m!5607173 () Bool)

(assert (=> b!4697131 m!5607173))

(assert (=> b!4696739 d!1493445))

(declare-fun d!1493447 () Bool)

(assert (=> d!1493447 (= (eq!1041 (addToMapMapFromBucket!1314 (Cons!52487 lt!1858231 lt!1858237) lt!1858230) (+!2166 (addToMapMapFromBucket!1314 lt!1858237 lt!1858230) lt!1858231)) (= (content!9226 (toList!5653 (addToMapMapFromBucket!1314 (Cons!52487 lt!1858231 lt!1858237) lt!1858230))) (content!9226 (toList!5653 (+!2166 (addToMapMapFromBucket!1314 lt!1858237 lt!1858230) lt!1858231)))))))

(declare-fun bs!1092060 () Bool)

(assert (= bs!1092060 d!1493447))

(declare-fun m!5607175 () Bool)

(assert (=> bs!1092060 m!5607175))

(declare-fun m!5607177 () Bool)

(assert (=> bs!1092060 m!5607177))

(assert (=> b!4696739 d!1493447))

(declare-fun bs!1092061 () Bool)

(declare-fun b!4697134 () Bool)

(assert (= bs!1092061 (and b!4697134 d!1493361)))

(declare-fun lambda!209176 () Int)

(assert (=> bs!1092061 (= (= lt!1858230 lt!1858691) (= lambda!209176 lambda!209163))))

(declare-fun bs!1092062 () Bool)

(assert (= bs!1092062 (and b!4697134 b!4697073)))

(assert (=> bs!1092062 (= lambda!209176 lambda!209160)))

(declare-fun bs!1092063 () Bool)

(assert (= bs!1092063 (and b!4697134 b!4697097)))

(assert (=> bs!1092063 (= (= lt!1858230 lt!1858741) (= lambda!209176 lambda!209173))))

(declare-fun bs!1092064 () Bool)

(assert (= bs!1092064 (and b!4697134 b!4697092)))

(assert (=> bs!1092064 (= lambda!209176 lambda!209165)))

(declare-fun bs!1092065 () Bool)

(assert (= bs!1092065 (and b!4697134 b!4697074)))

(assert (=> bs!1092065 (= (= lt!1858230 lt!1858693) (= lambda!209176 lambda!209162))))

(declare-fun bs!1092066 () Bool)

(assert (= bs!1092066 (and b!4697134 d!1493425)))

(assert (=> bs!1092066 (= (= lt!1858230 lt!1858712) (= lambda!209176 lambda!209167))))

(assert (=> bs!1092063 (= lambda!209176 lambda!209172)))

(declare-fun bs!1092067 () Bool)

(assert (= bs!1092067 (and b!4697134 d!1493433)))

(assert (=> bs!1092067 (= (= lt!1858230 lt!1858739) (= lambda!209176 lambda!209174))))

(assert (=> bs!1092064 (= (= lt!1858230 lt!1858714) (= lambda!209176 lambda!209166))))

(assert (=> bs!1092065 (= lambda!209176 lambda!209161)))

(declare-fun bs!1092068 () Bool)

(assert (= bs!1092068 (and b!4697134 b!4697091)))

(assert (=> bs!1092068 (= lambda!209176 lambda!209164)))

(declare-fun bs!1092069 () Bool)

(assert (= bs!1092069 (and b!4697134 b!4697096)))

(assert (=> bs!1092069 (= lambda!209176 lambda!209171)))

(assert (=> b!4697134 true))

(declare-fun bs!1092070 () Bool)

(declare-fun b!4697135 () Bool)

(assert (= bs!1092070 (and b!4697135 d!1493361)))

(declare-fun lambda!209177 () Int)

(assert (=> bs!1092070 (= (= lt!1858230 lt!1858691) (= lambda!209177 lambda!209163))))

(declare-fun bs!1092071 () Bool)

(assert (= bs!1092071 (and b!4697135 b!4697073)))

(assert (=> bs!1092071 (= lambda!209177 lambda!209160)))

(declare-fun bs!1092072 () Bool)

(assert (= bs!1092072 (and b!4697135 b!4697097)))

(assert (=> bs!1092072 (= (= lt!1858230 lt!1858741) (= lambda!209177 lambda!209173))))

(declare-fun bs!1092073 () Bool)

(assert (= bs!1092073 (and b!4697135 b!4697092)))

(assert (=> bs!1092073 (= lambda!209177 lambda!209165)))

(declare-fun bs!1092074 () Bool)

(assert (= bs!1092074 (and b!4697135 b!4697134)))

(assert (=> bs!1092074 (= lambda!209177 lambda!209176)))

(declare-fun bs!1092075 () Bool)

(assert (= bs!1092075 (and b!4697135 b!4697074)))

(assert (=> bs!1092075 (= (= lt!1858230 lt!1858693) (= lambda!209177 lambda!209162))))

(declare-fun bs!1092076 () Bool)

(assert (= bs!1092076 (and b!4697135 d!1493425)))

(assert (=> bs!1092076 (= (= lt!1858230 lt!1858712) (= lambda!209177 lambda!209167))))

(assert (=> bs!1092072 (= lambda!209177 lambda!209172)))

(declare-fun bs!1092077 () Bool)

(assert (= bs!1092077 (and b!4697135 d!1493433)))

(assert (=> bs!1092077 (= (= lt!1858230 lt!1858739) (= lambda!209177 lambda!209174))))

(assert (=> bs!1092073 (= (= lt!1858230 lt!1858714) (= lambda!209177 lambda!209166))))

(assert (=> bs!1092075 (= lambda!209177 lambda!209161)))

(declare-fun bs!1092078 () Bool)

(assert (= bs!1092078 (and b!4697135 b!4697091)))

(assert (=> bs!1092078 (= lambda!209177 lambda!209164)))

(declare-fun bs!1092079 () Bool)

(assert (= bs!1092079 (and b!4697135 b!4697096)))

(assert (=> bs!1092079 (= lambda!209177 lambda!209171)))

(assert (=> b!4697135 true))

(declare-fun lambda!209178 () Int)

(declare-fun lt!1858796 () ListMap!5017)

(assert (=> bs!1092070 (= (= lt!1858796 lt!1858691) (= lambda!209178 lambda!209163))))

(assert (=> bs!1092071 (= (= lt!1858796 lt!1858230) (= lambda!209178 lambda!209160))))

(assert (=> bs!1092072 (= (= lt!1858796 lt!1858741) (= lambda!209178 lambda!209173))))

(assert (=> bs!1092074 (= (= lt!1858796 lt!1858230) (= lambda!209178 lambda!209176))))

(assert (=> bs!1092075 (= (= lt!1858796 lt!1858693) (= lambda!209178 lambda!209162))))

(assert (=> bs!1092076 (= (= lt!1858796 lt!1858712) (= lambda!209178 lambda!209167))))

(assert (=> bs!1092072 (= (= lt!1858796 lt!1858230) (= lambda!209178 lambda!209172))))

(assert (=> bs!1092077 (= (= lt!1858796 lt!1858739) (= lambda!209178 lambda!209174))))

(assert (=> b!4697135 (= (= lt!1858796 lt!1858230) (= lambda!209178 lambda!209177))))

(assert (=> bs!1092073 (= (= lt!1858796 lt!1858230) (= lambda!209178 lambda!209165))))

(assert (=> bs!1092073 (= (= lt!1858796 lt!1858714) (= lambda!209178 lambda!209166))))

(assert (=> bs!1092075 (= (= lt!1858796 lt!1858230) (= lambda!209178 lambda!209161))))

(assert (=> bs!1092078 (= (= lt!1858796 lt!1858230) (= lambda!209178 lambda!209164))))

(assert (=> bs!1092079 (= (= lt!1858796 lt!1858230) (= lambda!209178 lambda!209171))))

(assert (=> b!4697135 true))

(declare-fun bs!1092080 () Bool)

(declare-fun d!1493449 () Bool)

(assert (= bs!1092080 (and d!1493449 d!1493361)))

(declare-fun lambda!209179 () Int)

(declare-fun lt!1858794 () ListMap!5017)

(assert (=> bs!1092080 (= (= lt!1858794 lt!1858691) (= lambda!209179 lambda!209163))))

(declare-fun bs!1092081 () Bool)

(assert (= bs!1092081 (and d!1493449 b!4697097)))

(assert (=> bs!1092081 (= (= lt!1858794 lt!1858741) (= lambda!209179 lambda!209173))))

(declare-fun bs!1092082 () Bool)

(assert (= bs!1092082 (and d!1493449 b!4697134)))

(assert (=> bs!1092082 (= (= lt!1858794 lt!1858230) (= lambda!209179 lambda!209176))))

(declare-fun bs!1092083 () Bool)

(assert (= bs!1092083 (and d!1493449 b!4697074)))

(assert (=> bs!1092083 (= (= lt!1858794 lt!1858693) (= lambda!209179 lambda!209162))))

(declare-fun bs!1092084 () Bool)

(assert (= bs!1092084 (and d!1493449 d!1493425)))

(assert (=> bs!1092084 (= (= lt!1858794 lt!1858712) (= lambda!209179 lambda!209167))))

(assert (=> bs!1092081 (= (= lt!1858794 lt!1858230) (= lambda!209179 lambda!209172))))

(declare-fun bs!1092085 () Bool)

(assert (= bs!1092085 (and d!1493449 d!1493433)))

(assert (=> bs!1092085 (= (= lt!1858794 lt!1858739) (= lambda!209179 lambda!209174))))

(declare-fun bs!1092086 () Bool)

(assert (= bs!1092086 (and d!1493449 b!4697135)))

(assert (=> bs!1092086 (= (= lt!1858794 lt!1858796) (= lambda!209179 lambda!209178))))

(declare-fun bs!1092087 () Bool)

(assert (= bs!1092087 (and d!1493449 b!4697073)))

(assert (=> bs!1092087 (= (= lt!1858794 lt!1858230) (= lambda!209179 lambda!209160))))

(assert (=> bs!1092086 (= (= lt!1858794 lt!1858230) (= lambda!209179 lambda!209177))))

(declare-fun bs!1092088 () Bool)

(assert (= bs!1092088 (and d!1493449 b!4697092)))

(assert (=> bs!1092088 (= (= lt!1858794 lt!1858230) (= lambda!209179 lambda!209165))))

(assert (=> bs!1092088 (= (= lt!1858794 lt!1858714) (= lambda!209179 lambda!209166))))

(assert (=> bs!1092083 (= (= lt!1858794 lt!1858230) (= lambda!209179 lambda!209161))))

(declare-fun bs!1092089 () Bool)

(assert (= bs!1092089 (and d!1493449 b!4697091)))

(assert (=> bs!1092089 (= (= lt!1858794 lt!1858230) (= lambda!209179 lambda!209164))))

(declare-fun bs!1092090 () Bool)

(assert (= bs!1092090 (and d!1493449 b!4697096)))

(assert (=> bs!1092090 (= (= lt!1858794 lt!1858230) (= lambda!209179 lambda!209171))))

(assert (=> d!1493449 true))

(declare-fun b!4697132 () Bool)

(declare-fun e!2930165 () Bool)

(declare-fun call!328352 () Bool)

(assert (=> b!4697132 (= e!2930165 call!328352)))

(declare-fun b!4697133 () Bool)

(declare-fun res!1982398 () Bool)

(declare-fun e!2930164 () Bool)

(assert (=> b!4697133 (=> (not res!1982398) (not e!2930164))))

(assert (=> b!4697133 (= res!1982398 (forall!11373 (toList!5653 lt!1858230) lambda!209179))))

(declare-fun c!802988 () Bool)

(declare-fun bm!328346 () Bool)

(assert (=> bm!328346 (= call!328352 (forall!11373 (toList!5653 lt!1858230) (ite c!802988 lambda!209176 lambda!209178)))))

(declare-fun bm!328347 () Bool)

(declare-fun call!328351 () Bool)

(declare-fun lt!1858805 () ListMap!5017)

(assert (=> bm!328347 (= call!328351 (forall!11373 (ite c!802988 (toList!5653 lt!1858230) (toList!5653 lt!1858805)) (ite c!802988 lambda!209176 lambda!209178)))))

(declare-fun e!2930166 () ListMap!5017)

(assert (=> b!4697134 (= e!2930166 lt!1858230)))

(declare-fun lt!1858793 () Unit!125401)

(declare-fun call!328353 () Unit!125401)

(assert (=> b!4697134 (= lt!1858793 call!328353)))

(assert (=> b!4697134 call!328351))

(declare-fun lt!1858792 () Unit!125401)

(assert (=> b!4697134 (= lt!1858792 lt!1858793)))

(assert (=> b!4697134 call!328352))

(declare-fun lt!1858791 () Unit!125401)

(declare-fun Unit!125488 () Unit!125401)

(assert (=> b!4697134 (= lt!1858791 Unit!125488)))

(assert (=> d!1493449 e!2930164))

(declare-fun res!1982399 () Bool)

(assert (=> d!1493449 (=> (not res!1982399) (not e!2930164))))

(assert (=> d!1493449 (= res!1982399 (forall!11373 (Cons!52487 lt!1858228 lt!1858238) lambda!209179))))

(assert (=> d!1493449 (= lt!1858794 e!2930166)))

(assert (=> d!1493449 (= c!802988 ((_ is Nil!52487) (Cons!52487 lt!1858228 lt!1858238)))))

(assert (=> d!1493449 (noDuplicateKeys!1882 (Cons!52487 lt!1858228 lt!1858238))))

(assert (=> d!1493449 (= (addToMapMapFromBucket!1314 (Cons!52487 lt!1858228 lt!1858238) lt!1858230) lt!1858794)))

(assert (=> b!4697135 (= e!2930166 lt!1858796)))

(assert (=> b!4697135 (= lt!1858805 (+!2166 lt!1858230 (h!58754 (Cons!52487 lt!1858228 lt!1858238))))))

(assert (=> b!4697135 (= lt!1858796 (addToMapMapFromBucket!1314 (t!359809 (Cons!52487 lt!1858228 lt!1858238)) (+!2166 lt!1858230 (h!58754 (Cons!52487 lt!1858228 lt!1858238)))))))

(declare-fun lt!1858790 () Unit!125401)

(assert (=> b!4697135 (= lt!1858790 call!328353)))

(assert (=> b!4697135 (forall!11373 (toList!5653 lt!1858230) lambda!209177)))

(declare-fun lt!1858803 () Unit!125401)

(assert (=> b!4697135 (= lt!1858803 lt!1858790)))

(assert (=> b!4697135 call!328351))

(declare-fun lt!1858798 () Unit!125401)

(declare-fun Unit!125489 () Unit!125401)

(assert (=> b!4697135 (= lt!1858798 Unit!125489)))

(assert (=> b!4697135 (forall!11373 (t!359809 (Cons!52487 lt!1858228 lt!1858238)) lambda!209178)))

(declare-fun lt!1858801 () Unit!125401)

(declare-fun Unit!125490 () Unit!125401)

(assert (=> b!4697135 (= lt!1858801 Unit!125490)))

(declare-fun lt!1858804 () Unit!125401)

(declare-fun Unit!125491 () Unit!125401)

(assert (=> b!4697135 (= lt!1858804 Unit!125491)))

(declare-fun lt!1858800 () Unit!125401)

(assert (=> b!4697135 (= lt!1858800 (forallContained!3480 (toList!5653 lt!1858805) lambda!209178 (h!58754 (Cons!52487 lt!1858228 lt!1858238))))))

(assert (=> b!4697135 (contains!15738 lt!1858805 (_1!30255 (h!58754 (Cons!52487 lt!1858228 lt!1858238))))))

(declare-fun lt!1858808 () Unit!125401)

(declare-fun Unit!125492 () Unit!125401)

(assert (=> b!4697135 (= lt!1858808 Unit!125492)))

(assert (=> b!4697135 (contains!15738 lt!1858796 (_1!30255 (h!58754 (Cons!52487 lt!1858228 lt!1858238))))))

(declare-fun lt!1858799 () Unit!125401)

(declare-fun Unit!125493 () Unit!125401)

(assert (=> b!4697135 (= lt!1858799 Unit!125493)))

(assert (=> b!4697135 (forall!11373 (Cons!52487 lt!1858228 lt!1858238) lambda!209178)))

(declare-fun lt!1858789 () Unit!125401)

(declare-fun Unit!125494 () Unit!125401)

(assert (=> b!4697135 (= lt!1858789 Unit!125494)))

(assert (=> b!4697135 (forall!11373 (toList!5653 lt!1858805) lambda!209178)))

(declare-fun lt!1858807 () Unit!125401)

(declare-fun Unit!125495 () Unit!125401)

(assert (=> b!4697135 (= lt!1858807 Unit!125495)))

(declare-fun lt!1858809 () Unit!125401)

(declare-fun Unit!125496 () Unit!125401)

(assert (=> b!4697135 (= lt!1858809 Unit!125496)))

(declare-fun lt!1858795 () Unit!125401)

(assert (=> b!4697135 (= lt!1858795 (addForallContainsKeyThenBeforeAdding!719 lt!1858230 lt!1858796 (_1!30255 (h!58754 (Cons!52487 lt!1858228 lt!1858238))) (_2!30255 (h!58754 (Cons!52487 lt!1858228 lt!1858238)))))))

(assert (=> b!4697135 (forall!11373 (toList!5653 lt!1858230) lambda!209178)))

(declare-fun lt!1858802 () Unit!125401)

(assert (=> b!4697135 (= lt!1858802 lt!1858795)))

(assert (=> b!4697135 (forall!11373 (toList!5653 lt!1858230) lambda!209178)))

(declare-fun lt!1858797 () Unit!125401)

(declare-fun Unit!125497 () Unit!125401)

(assert (=> b!4697135 (= lt!1858797 Unit!125497)))

(declare-fun res!1982397 () Bool)

(assert (=> b!4697135 (= res!1982397 (forall!11373 (Cons!52487 lt!1858228 lt!1858238) lambda!209178))))

(assert (=> b!4697135 (=> (not res!1982397) (not e!2930165))))

(assert (=> b!4697135 e!2930165))

(declare-fun lt!1858806 () Unit!125401)

(declare-fun Unit!125498 () Unit!125401)

(assert (=> b!4697135 (= lt!1858806 Unit!125498)))

(declare-fun b!4697136 () Bool)

(assert (=> b!4697136 (= e!2930164 (invariantList!1432 (toList!5653 lt!1858794)))))

(declare-fun bm!328348 () Bool)

(assert (=> bm!328348 (= call!328353 (lemmaContainsAllItsOwnKeys!720 lt!1858230))))

(assert (= (and d!1493449 c!802988) b!4697134))

(assert (= (and d!1493449 (not c!802988)) b!4697135))

(assert (= (and b!4697135 res!1982397) b!4697132))

(assert (= (or b!4697134 b!4697135) bm!328348))

(assert (= (or b!4697134 b!4697135) bm!328347))

(assert (= (or b!4697134 b!4697132) bm!328346))

(assert (= (and d!1493449 res!1982399) b!4697133))

(assert (= (and b!4697133 res!1982398) b!4697136))

(declare-fun m!5607179 () Bool)

(assert (=> d!1493449 m!5607179))

(declare-fun m!5607181 () Bool)

(assert (=> d!1493449 m!5607181))

(declare-fun m!5607183 () Bool)

(assert (=> b!4697135 m!5607183))

(declare-fun m!5607185 () Bool)

(assert (=> b!4697135 m!5607185))

(declare-fun m!5607187 () Bool)

(assert (=> b!4697135 m!5607187))

(declare-fun m!5607189 () Bool)

(assert (=> b!4697135 m!5607189))

(declare-fun m!5607191 () Bool)

(assert (=> b!4697135 m!5607191))

(declare-fun m!5607193 () Bool)

(assert (=> b!4697135 m!5607193))

(declare-fun m!5607195 () Bool)

(assert (=> b!4697135 m!5607195))

(assert (=> b!4697135 m!5607187))

(declare-fun m!5607197 () Bool)

(assert (=> b!4697135 m!5607197))

(assert (=> b!4697135 m!5607183))

(declare-fun m!5607199 () Bool)

(assert (=> b!4697135 m!5607199))

(declare-fun m!5607201 () Bool)

(assert (=> b!4697135 m!5607201))

(declare-fun m!5607203 () Bool)

(assert (=> b!4697135 m!5607203))

(assert (=> b!4697135 m!5607193))

(declare-fun m!5607205 () Bool)

(assert (=> bm!328346 m!5607205))

(declare-fun m!5607207 () Bool)

(assert (=> bm!328347 m!5607207))

(declare-fun m!5607209 () Bool)

(assert (=> b!4697136 m!5607209))

(assert (=> bm!328348 m!5607035))

(declare-fun m!5607211 () Bool)

(assert (=> b!4697133 m!5607211))

(assert (=> b!4696739 d!1493449))

(declare-fun b!4697137 () Bool)

(declare-fun e!2930167 () List!52611)

(assert (=> b!4697137 (= e!2930167 (t!359809 oldBucket!34))))

(declare-fun b!4697140 () Bool)

(declare-fun e!2930168 () List!52611)

(assert (=> b!4697140 (= e!2930168 Nil!52487)))

(declare-fun b!4697139 () Bool)

(assert (=> b!4697139 (= e!2930168 (Cons!52487 (h!58754 oldBucket!34) (removePairForKey!1477 (t!359809 oldBucket!34) key!4653)))))

(declare-fun b!4697138 () Bool)

(assert (=> b!4697138 (= e!2930167 e!2930168)))

(declare-fun c!802990 () Bool)

(assert (=> b!4697138 (= c!802990 ((_ is Cons!52487) oldBucket!34))))

(declare-fun d!1493451 () Bool)

(declare-fun lt!1858810 () List!52611)

(assert (=> d!1493451 (not (containsKey!3125 lt!1858810 key!4653))))

(assert (=> d!1493451 (= lt!1858810 e!2930167)))

(declare-fun c!802989 () Bool)

(assert (=> d!1493451 (= c!802989 (and ((_ is Cons!52487) oldBucket!34) (= (_1!30255 (h!58754 oldBucket!34)) key!4653)))))

(assert (=> d!1493451 (noDuplicateKeys!1882 oldBucket!34)))

(assert (=> d!1493451 (= (removePairForKey!1477 oldBucket!34 key!4653) lt!1858810)))

(assert (= (and d!1493451 c!802989) b!4697137))

(assert (= (and d!1493451 (not c!802989)) b!4697138))

(assert (= (and b!4697138 c!802990) b!4697139))

(assert (= (and b!4697138 (not c!802990)) b!4697140))

(assert (=> b!4697139 m!5606261))

(declare-fun m!5607213 () Bool)

(assert (=> d!1493451 m!5607213))

(assert (=> d!1493451 m!5606163))

(assert (=> b!4696717 d!1493451))

(declare-fun d!1493453 () Bool)

(declare-fun hash!4135 (Hashable!6251 K!13855) (_ BitVec 64))

(assert (=> d!1493453 (= (hash!4131 hashF!1323 key!4653) (hash!4135 hashF!1323 key!4653))))

(declare-fun bs!1092091 () Bool)

(assert (= bs!1092091 d!1493453))

(declare-fun m!5607215 () Bool)

(assert (=> bs!1092091 m!5607215))

(assert (=> b!4696728 d!1493453))

(declare-fun d!1493455 () Bool)

(declare-fun res!1982404 () Bool)

(declare-fun e!2930173 () Bool)

(assert (=> d!1493455 (=> res!1982404 e!2930173)))

(assert (=> d!1493455 (= res!1982404 (not ((_ is Cons!52487) oldBucket!34)))))

(assert (=> d!1493455 (= (noDuplicateKeys!1882 oldBucket!34) e!2930173)))

(declare-fun b!4697145 () Bool)

(declare-fun e!2930174 () Bool)

(assert (=> b!4697145 (= e!2930173 e!2930174)))

(declare-fun res!1982405 () Bool)

(assert (=> b!4697145 (=> (not res!1982405) (not e!2930174))))

(assert (=> b!4697145 (= res!1982405 (not (containsKey!3125 (t!359809 oldBucket!34) (_1!30255 (h!58754 oldBucket!34)))))))

(declare-fun b!4697146 () Bool)

(assert (=> b!4697146 (= e!2930174 (noDuplicateKeys!1882 (t!359809 oldBucket!34)))))

(assert (= (and d!1493455 (not res!1982404)) b!4697145))

(assert (= (and b!4697145 res!1982405) b!4697146))

(declare-fun m!5607217 () Bool)

(assert (=> b!4697145 m!5607217))

(assert (=> b!4697146 m!5606725))

(assert (=> b!4696722 d!1493455))

(declare-fun d!1493457 () Bool)

(declare-fun res!1982410 () Bool)

(declare-fun e!2930179 () Bool)

(assert (=> d!1493457 (=> res!1982410 e!2930179)))

(assert (=> d!1493457 (= res!1982410 ((_ is Nil!52488) (toList!5654 lm!2023)))))

(assert (=> d!1493457 (= (forall!11371 (toList!5654 lm!2023) lambda!209033) e!2930179)))

(declare-fun b!4697151 () Bool)

(declare-fun e!2930180 () Bool)

(assert (=> b!4697151 (= e!2930179 e!2930180)))

(declare-fun res!1982411 () Bool)

(assert (=> b!4697151 (=> (not res!1982411) (not e!2930180))))

(assert (=> b!4697151 (= res!1982411 (dynLambda!21735 lambda!209033 (h!58755 (toList!5654 lm!2023))))))

(declare-fun b!4697152 () Bool)

(assert (=> b!4697152 (= e!2930180 (forall!11371 (t!359810 (toList!5654 lm!2023)) lambda!209033))))

(assert (= (and d!1493457 (not res!1982410)) b!4697151))

(assert (= (and b!4697151 res!1982411) b!4697152))

(declare-fun b_lambda!177243 () Bool)

(assert (=> (not b_lambda!177243) (not b!4697151)))

(declare-fun m!5607219 () Bool)

(assert (=> b!4697151 m!5607219))

(declare-fun m!5607221 () Bool)

(assert (=> b!4697152 m!5607221))

(assert (=> start!475864 d!1493457))

(declare-fun d!1493459 () Bool)

(declare-fun isStrictlySorted!672 (List!52612) Bool)

(assert (=> d!1493459 (= (inv!67729 lm!2023) (isStrictlySorted!672 (toList!5654 lm!2023)))))

(declare-fun bs!1092092 () Bool)

(assert (= bs!1092092 d!1493459))

(declare-fun m!5607223 () Bool)

(assert (=> bs!1092092 m!5607223))

(assert (=> start!475864 d!1493459))

(declare-fun d!1493461 () Bool)

(assert (=> d!1493461 (= (head!10027 (toList!5654 lm!2023)) (h!58755 (toList!5654 lm!2023)))))

(assert (=> b!4696732 d!1493461))

(declare-fun d!1493463 () Bool)

(declare-fun res!1982412 () Bool)

(declare-fun e!2930181 () Bool)

(assert (=> d!1493463 (=> res!1982412 e!2930181)))

(assert (=> d!1493463 (= res!1982412 (not ((_ is Cons!52487) newBucket!218)))))

(assert (=> d!1493463 (= (noDuplicateKeys!1882 newBucket!218) e!2930181)))

(declare-fun b!4697153 () Bool)

(declare-fun e!2930182 () Bool)

(assert (=> b!4697153 (= e!2930181 e!2930182)))

(declare-fun res!1982413 () Bool)

(assert (=> b!4697153 (=> (not res!1982413) (not e!2930182))))

(assert (=> b!4697153 (= res!1982413 (not (containsKey!3125 (t!359809 newBucket!218) (_1!30255 (h!58754 newBucket!218)))))))

(declare-fun b!4697154 () Bool)

(assert (=> b!4697154 (= e!2930182 (noDuplicateKeys!1882 (t!359809 newBucket!218)))))

(assert (= (and d!1493463 (not res!1982412)) b!4697153))

(assert (= (and b!4697153 res!1982413) b!4697154))

(declare-fun m!5607225 () Bool)

(assert (=> b!4697153 m!5607225))

(declare-fun m!5607227 () Bool)

(assert (=> b!4697154 m!5607227))

(assert (=> b!4696731 d!1493463))

(declare-fun b!4697155 () Bool)

(declare-fun e!2930183 () List!52611)

(assert (=> b!4697155 (= e!2930183 (t!359809 lt!1858238))))

(declare-fun b!4697158 () Bool)

(declare-fun e!2930184 () List!52611)

(assert (=> b!4697158 (= e!2930184 Nil!52487)))

(declare-fun b!4697157 () Bool)

(assert (=> b!4697157 (= e!2930184 (Cons!52487 (h!58754 lt!1858238) (removePairForKey!1477 (t!359809 lt!1858238) key!4653)))))

(declare-fun b!4697156 () Bool)

(assert (=> b!4697156 (= e!2930183 e!2930184)))

(declare-fun c!802992 () Bool)

(assert (=> b!4697156 (= c!802992 ((_ is Cons!52487) lt!1858238))))

(declare-fun d!1493465 () Bool)

(declare-fun lt!1858811 () List!52611)

(assert (=> d!1493465 (not (containsKey!3125 lt!1858811 key!4653))))

(assert (=> d!1493465 (= lt!1858811 e!2930183)))

(declare-fun c!802991 () Bool)

(assert (=> d!1493465 (= c!802991 (and ((_ is Cons!52487) lt!1858238) (= (_1!30255 (h!58754 lt!1858238)) key!4653)))))

(assert (=> d!1493465 (noDuplicateKeys!1882 lt!1858238)))

(assert (=> d!1493465 (= (removePairForKey!1477 lt!1858238 key!4653) lt!1858811)))

(assert (= (and d!1493465 c!802991) b!4697155))

(assert (= (and d!1493465 (not c!802991)) b!4697156))

(assert (= (and b!4697156 c!802992) b!4697157))

(assert (= (and b!4697156 (not c!802992)) b!4697158))

(declare-fun m!5607229 () Bool)

(assert (=> b!4697157 m!5607229))

(declare-fun m!5607231 () Bool)

(assert (=> d!1493465 m!5607231))

(assert (=> d!1493465 m!5607041))

(assert (=> b!4696741 d!1493465))

(declare-fun d!1493467 () Bool)

(assert (=> d!1493467 (= (tail!8673 newBucket!218) (t!359809 newBucket!218))))

(assert (=> b!4696741 d!1493467))

(declare-fun d!1493469 () Bool)

(assert (=> d!1493469 (= (tail!8673 oldBucket!34) (t!359809 oldBucket!34))))

(assert (=> b!4696741 d!1493469))

(declare-fun bs!1092093 () Bool)

(declare-fun b!4697161 () Bool)

(assert (= bs!1092093 (and b!4697161 d!1493361)))

(declare-fun lambda!209180 () Int)

(assert (=> bs!1092093 (= (= lt!1858230 lt!1858691) (= lambda!209180 lambda!209163))))

(declare-fun bs!1092094 () Bool)

(assert (= bs!1092094 (and b!4697161 b!4697097)))

(assert (=> bs!1092094 (= (= lt!1858230 lt!1858741) (= lambda!209180 lambda!209173))))

(declare-fun bs!1092095 () Bool)

(assert (= bs!1092095 (and b!4697161 b!4697134)))

(assert (=> bs!1092095 (= lambda!209180 lambda!209176)))

(declare-fun bs!1092096 () Bool)

(assert (= bs!1092096 (and b!4697161 b!4697074)))

(assert (=> bs!1092096 (= (= lt!1858230 lt!1858693) (= lambda!209180 lambda!209162))))

(assert (=> bs!1092094 (= lambda!209180 lambda!209172)))

(declare-fun bs!1092097 () Bool)

(assert (= bs!1092097 (and b!4697161 d!1493433)))

(assert (=> bs!1092097 (= (= lt!1858230 lt!1858739) (= lambda!209180 lambda!209174))))

(declare-fun bs!1092098 () Bool)

(assert (= bs!1092098 (and b!4697161 b!4697135)))

(assert (=> bs!1092098 (= (= lt!1858230 lt!1858796) (= lambda!209180 lambda!209178))))

(declare-fun bs!1092099 () Bool)

(assert (= bs!1092099 (and b!4697161 b!4697073)))

(assert (=> bs!1092099 (= lambda!209180 lambda!209160)))

(assert (=> bs!1092098 (= lambda!209180 lambda!209177)))

(declare-fun bs!1092100 () Bool)

(assert (= bs!1092100 (and b!4697161 b!4697092)))

(assert (=> bs!1092100 (= lambda!209180 lambda!209165)))

(assert (=> bs!1092100 (= (= lt!1858230 lt!1858714) (= lambda!209180 lambda!209166))))

(assert (=> bs!1092096 (= lambda!209180 lambda!209161)))

(declare-fun bs!1092101 () Bool)

(assert (= bs!1092101 (and b!4697161 b!4697091)))

(assert (=> bs!1092101 (= lambda!209180 lambda!209164)))

(declare-fun bs!1092102 () Bool)

(assert (= bs!1092102 (and b!4697161 b!4697096)))

(assert (=> bs!1092102 (= lambda!209180 lambda!209171)))

(declare-fun bs!1092103 () Bool)

(assert (= bs!1092103 (and b!4697161 d!1493425)))

(assert (=> bs!1092103 (= (= lt!1858230 lt!1858712) (= lambda!209180 lambda!209167))))

(declare-fun bs!1092104 () Bool)

(assert (= bs!1092104 (and b!4697161 d!1493449)))

(assert (=> bs!1092104 (= (= lt!1858230 lt!1858794) (= lambda!209180 lambda!209179))))

(assert (=> b!4697161 true))

(declare-fun bs!1092105 () Bool)

(declare-fun b!4697162 () Bool)

(assert (= bs!1092105 (and b!4697162 d!1493361)))

(declare-fun lambda!209181 () Int)

(assert (=> bs!1092105 (= (= lt!1858230 lt!1858691) (= lambda!209181 lambda!209163))))

(declare-fun bs!1092106 () Bool)

(assert (= bs!1092106 (and b!4697162 b!4697161)))

(assert (=> bs!1092106 (= lambda!209181 lambda!209180)))

(declare-fun bs!1092107 () Bool)

(assert (= bs!1092107 (and b!4697162 b!4697097)))

(assert (=> bs!1092107 (= (= lt!1858230 lt!1858741) (= lambda!209181 lambda!209173))))

(declare-fun bs!1092108 () Bool)

(assert (= bs!1092108 (and b!4697162 b!4697134)))

(assert (=> bs!1092108 (= lambda!209181 lambda!209176)))

(declare-fun bs!1092109 () Bool)

(assert (= bs!1092109 (and b!4697162 b!4697074)))

(assert (=> bs!1092109 (= (= lt!1858230 lt!1858693) (= lambda!209181 lambda!209162))))

(assert (=> bs!1092107 (= lambda!209181 lambda!209172)))

(declare-fun bs!1092110 () Bool)

(assert (= bs!1092110 (and b!4697162 d!1493433)))

(assert (=> bs!1092110 (= (= lt!1858230 lt!1858739) (= lambda!209181 lambda!209174))))

(declare-fun bs!1092111 () Bool)

(assert (= bs!1092111 (and b!4697162 b!4697135)))

(assert (=> bs!1092111 (= (= lt!1858230 lt!1858796) (= lambda!209181 lambda!209178))))

(declare-fun bs!1092112 () Bool)

(assert (= bs!1092112 (and b!4697162 b!4697073)))

(assert (=> bs!1092112 (= lambda!209181 lambda!209160)))

(assert (=> bs!1092111 (= lambda!209181 lambda!209177)))

(declare-fun bs!1092113 () Bool)

(assert (= bs!1092113 (and b!4697162 b!4697092)))

(assert (=> bs!1092113 (= lambda!209181 lambda!209165)))

(assert (=> bs!1092113 (= (= lt!1858230 lt!1858714) (= lambda!209181 lambda!209166))))

(assert (=> bs!1092109 (= lambda!209181 lambda!209161)))

(declare-fun bs!1092114 () Bool)

(assert (= bs!1092114 (and b!4697162 b!4697091)))

(assert (=> bs!1092114 (= lambda!209181 lambda!209164)))

(declare-fun bs!1092115 () Bool)

(assert (= bs!1092115 (and b!4697162 b!4697096)))

(assert (=> bs!1092115 (= lambda!209181 lambda!209171)))

(declare-fun bs!1092116 () Bool)

(assert (= bs!1092116 (and b!4697162 d!1493425)))

(assert (=> bs!1092116 (= (= lt!1858230 lt!1858712) (= lambda!209181 lambda!209167))))

(declare-fun bs!1092117 () Bool)

(assert (= bs!1092117 (and b!4697162 d!1493449)))

(assert (=> bs!1092117 (= (= lt!1858230 lt!1858794) (= lambda!209181 lambda!209179))))

(assert (=> b!4697162 true))

(declare-fun lambda!209182 () Int)

(declare-fun lt!1858819 () ListMap!5017)

(assert (=> bs!1092105 (= (= lt!1858819 lt!1858691) (= lambda!209182 lambda!209163))))

(assert (=> bs!1092106 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209180))))

(assert (=> bs!1092107 (= (= lt!1858819 lt!1858741) (= lambda!209182 lambda!209173))))

(assert (=> bs!1092108 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209176))))

(assert (=> bs!1092109 (= (= lt!1858819 lt!1858693) (= lambda!209182 lambda!209162))))

(assert (=> b!4697162 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209181))))

(assert (=> bs!1092107 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209172))))

(assert (=> bs!1092110 (= (= lt!1858819 lt!1858739) (= lambda!209182 lambda!209174))))

(assert (=> bs!1092111 (= (= lt!1858819 lt!1858796) (= lambda!209182 lambda!209178))))

(assert (=> bs!1092112 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209160))))

(assert (=> bs!1092111 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209177))))

(assert (=> bs!1092113 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209165))))

(assert (=> bs!1092113 (= (= lt!1858819 lt!1858714) (= lambda!209182 lambda!209166))))

(assert (=> bs!1092109 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209161))))

(assert (=> bs!1092114 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209164))))

(assert (=> bs!1092115 (= (= lt!1858819 lt!1858230) (= lambda!209182 lambda!209171))))

(assert (=> bs!1092116 (= (= lt!1858819 lt!1858712) (= lambda!209182 lambda!209167))))

(assert (=> bs!1092117 (= (= lt!1858819 lt!1858794) (= lambda!209182 lambda!209179))))

(assert (=> b!4697162 true))

(declare-fun bs!1092118 () Bool)

(declare-fun d!1493471 () Bool)

(assert (= bs!1092118 (and d!1493471 d!1493361)))

(declare-fun lt!1858817 () ListMap!5017)

(declare-fun lambda!209183 () Int)

(assert (=> bs!1092118 (= (= lt!1858817 lt!1858691) (= lambda!209183 lambda!209163))))

(declare-fun bs!1092119 () Bool)

(assert (= bs!1092119 (and d!1493471 b!4697161)))

(assert (=> bs!1092119 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209180))))

(declare-fun bs!1092120 () Bool)

(assert (= bs!1092120 (and d!1493471 b!4697097)))

(assert (=> bs!1092120 (= (= lt!1858817 lt!1858741) (= lambda!209183 lambda!209173))))

(declare-fun bs!1092121 () Bool)

(assert (= bs!1092121 (and d!1493471 b!4697134)))

(assert (=> bs!1092121 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209176))))

(declare-fun bs!1092122 () Bool)

(assert (= bs!1092122 (and d!1493471 b!4697074)))

(assert (=> bs!1092122 (= (= lt!1858817 lt!1858693) (= lambda!209183 lambda!209162))))

(declare-fun bs!1092123 () Bool)

(assert (= bs!1092123 (and d!1493471 b!4697162)))

(assert (=> bs!1092123 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209181))))

(assert (=> bs!1092120 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209172))))

(declare-fun bs!1092124 () Bool)

(assert (= bs!1092124 (and d!1493471 d!1493433)))

(assert (=> bs!1092124 (= (= lt!1858817 lt!1858739) (= lambda!209183 lambda!209174))))

(declare-fun bs!1092125 () Bool)

(assert (= bs!1092125 (and d!1493471 b!4697135)))

(assert (=> bs!1092125 (= (= lt!1858817 lt!1858796) (= lambda!209183 lambda!209178))))

(declare-fun bs!1092126 () Bool)

(assert (= bs!1092126 (and d!1493471 b!4697073)))

(assert (=> bs!1092126 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209160))))

(assert (=> bs!1092125 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209177))))

(declare-fun bs!1092127 () Bool)

(assert (= bs!1092127 (and d!1493471 b!4697092)))

(assert (=> bs!1092127 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209165))))

(assert (=> bs!1092127 (= (= lt!1858817 lt!1858714) (= lambda!209183 lambda!209166))))

(assert (=> bs!1092123 (= (= lt!1858817 lt!1858819) (= lambda!209183 lambda!209182))))

(assert (=> bs!1092122 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209161))))

(declare-fun bs!1092128 () Bool)

(assert (= bs!1092128 (and d!1493471 b!4697091)))

(assert (=> bs!1092128 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209164))))

(declare-fun bs!1092129 () Bool)

(assert (= bs!1092129 (and d!1493471 b!4697096)))

(assert (=> bs!1092129 (= (= lt!1858817 lt!1858230) (= lambda!209183 lambda!209171))))

(declare-fun bs!1092130 () Bool)

(assert (= bs!1092130 (and d!1493471 d!1493425)))

(assert (=> bs!1092130 (= (= lt!1858817 lt!1858712) (= lambda!209183 lambda!209167))))

(declare-fun bs!1092131 () Bool)

(assert (= bs!1092131 (and d!1493471 d!1493449)))

(assert (=> bs!1092131 (= (= lt!1858817 lt!1858794) (= lambda!209183 lambda!209179))))

(assert (=> d!1493471 true))

(declare-fun b!4697159 () Bool)

(declare-fun e!2930186 () Bool)

(declare-fun call!328355 () Bool)

(assert (=> b!4697159 (= e!2930186 call!328355)))

(declare-fun b!4697160 () Bool)

(declare-fun res!1982415 () Bool)

(declare-fun e!2930185 () Bool)

(assert (=> b!4697160 (=> (not res!1982415) (not e!2930185))))

(assert (=> b!4697160 (= res!1982415 (forall!11373 (toList!5653 lt!1858230) lambda!209183))))

(declare-fun c!802993 () Bool)

(declare-fun bm!328349 () Bool)

(assert (=> bm!328349 (= call!328355 (forall!11373 (toList!5653 lt!1858230) (ite c!802993 lambda!209180 lambda!209182)))))

(declare-fun bm!328350 () Bool)

(declare-fun lt!1858828 () ListMap!5017)

(declare-fun call!328354 () Bool)

(assert (=> bm!328350 (= call!328354 (forall!11373 (ite c!802993 (toList!5653 lt!1858230) (toList!5653 lt!1858828)) (ite c!802993 lambda!209180 lambda!209182)))))

(declare-fun e!2930187 () ListMap!5017)

(assert (=> b!4697161 (= e!2930187 lt!1858230)))

(declare-fun lt!1858816 () Unit!125401)

(declare-fun call!328356 () Unit!125401)

(assert (=> b!4697161 (= lt!1858816 call!328356)))

(assert (=> b!4697161 call!328354))

(declare-fun lt!1858815 () Unit!125401)

(assert (=> b!4697161 (= lt!1858815 lt!1858816)))

(assert (=> b!4697161 call!328355))

(declare-fun lt!1858814 () Unit!125401)

(declare-fun Unit!125499 () Unit!125401)

(assert (=> b!4697161 (= lt!1858814 Unit!125499)))

(assert (=> d!1493471 e!2930185))

(declare-fun res!1982416 () Bool)

(assert (=> d!1493471 (=> (not res!1982416) (not e!2930185))))

(assert (=> d!1493471 (= res!1982416 (forall!11373 (_2!30256 (h!58755 (toList!5654 lm!2023))) lambda!209183))))

(assert (=> d!1493471 (= lt!1858817 e!2930187)))

(assert (=> d!1493471 (= c!802993 ((_ is Nil!52487) (_2!30256 (h!58755 (toList!5654 lm!2023)))))))

(assert (=> d!1493471 (noDuplicateKeys!1882 (_2!30256 (h!58755 (toList!5654 lm!2023))))))

(assert (=> d!1493471 (= (addToMapMapFromBucket!1314 (_2!30256 (h!58755 (toList!5654 lm!2023))) lt!1858230) lt!1858817)))

(assert (=> b!4697162 (= e!2930187 lt!1858819)))

(assert (=> b!4697162 (= lt!1858828 (+!2166 lt!1858230 (h!58754 (_2!30256 (h!58755 (toList!5654 lm!2023))))))))

(assert (=> b!4697162 (= lt!1858819 (addToMapMapFromBucket!1314 (t!359809 (_2!30256 (h!58755 (toList!5654 lm!2023)))) (+!2166 lt!1858230 (h!58754 (_2!30256 (h!58755 (toList!5654 lm!2023)))))))))

(declare-fun lt!1858813 () Unit!125401)

(assert (=> b!4697162 (= lt!1858813 call!328356)))

(assert (=> b!4697162 (forall!11373 (toList!5653 lt!1858230) lambda!209181)))

(declare-fun lt!1858826 () Unit!125401)

(assert (=> b!4697162 (= lt!1858826 lt!1858813)))

(assert (=> b!4697162 call!328354))

(declare-fun lt!1858821 () Unit!125401)

(declare-fun Unit!125505 () Unit!125401)

(assert (=> b!4697162 (= lt!1858821 Unit!125505)))

(assert (=> b!4697162 (forall!11373 (t!359809 (_2!30256 (h!58755 (toList!5654 lm!2023)))) lambda!209182)))

(declare-fun lt!1858824 () Unit!125401)

(declare-fun Unit!125507 () Unit!125401)

(assert (=> b!4697162 (= lt!1858824 Unit!125507)))

(declare-fun lt!1858827 () Unit!125401)

(declare-fun Unit!125508 () Unit!125401)

(assert (=> b!4697162 (= lt!1858827 Unit!125508)))

(declare-fun lt!1858823 () Unit!125401)

(assert (=> b!4697162 (= lt!1858823 (forallContained!3480 (toList!5653 lt!1858828) lambda!209182 (h!58754 (_2!30256 (h!58755 (toList!5654 lm!2023))))))))

(assert (=> b!4697162 (contains!15738 lt!1858828 (_1!30255 (h!58754 (_2!30256 (h!58755 (toList!5654 lm!2023))))))))

(declare-fun lt!1858831 () Unit!125401)

(declare-fun Unit!125511 () Unit!125401)

(assert (=> b!4697162 (= lt!1858831 Unit!125511)))

(assert (=> b!4697162 (contains!15738 lt!1858819 (_1!30255 (h!58754 (_2!30256 (h!58755 (toList!5654 lm!2023))))))))

(declare-fun lt!1858822 () Unit!125401)

(declare-fun Unit!125512 () Unit!125401)

(assert (=> b!4697162 (= lt!1858822 Unit!125512)))

(assert (=> b!4697162 (forall!11373 (_2!30256 (h!58755 (toList!5654 lm!2023))) lambda!209182)))

(declare-fun lt!1858812 () Unit!125401)

(declare-fun Unit!125513 () Unit!125401)

(assert (=> b!4697162 (= lt!1858812 Unit!125513)))

(assert (=> b!4697162 (forall!11373 (toList!5653 lt!1858828) lambda!209182)))

(declare-fun lt!1858830 () Unit!125401)

(declare-fun Unit!125515 () Unit!125401)

(assert (=> b!4697162 (= lt!1858830 Unit!125515)))

(declare-fun lt!1858832 () Unit!125401)

(declare-fun Unit!125516 () Unit!125401)

(assert (=> b!4697162 (= lt!1858832 Unit!125516)))

(declare-fun lt!1858818 () Unit!125401)

(assert (=> b!4697162 (= lt!1858818 (addForallContainsKeyThenBeforeAdding!719 lt!1858230 lt!1858819 (_1!30255 (h!58754 (_2!30256 (h!58755 (toList!5654 lm!2023))))) (_2!30255 (h!58754 (_2!30256 (h!58755 (toList!5654 lm!2023)))))))))

(assert (=> b!4697162 (forall!11373 (toList!5653 lt!1858230) lambda!209182)))

(declare-fun lt!1858825 () Unit!125401)

(assert (=> b!4697162 (= lt!1858825 lt!1858818)))

(assert (=> b!4697162 (forall!11373 (toList!5653 lt!1858230) lambda!209182)))

(declare-fun lt!1858820 () Unit!125401)

(declare-fun Unit!125518 () Unit!125401)

(assert (=> b!4697162 (= lt!1858820 Unit!125518)))

(declare-fun res!1982414 () Bool)

(assert (=> b!4697162 (= res!1982414 (forall!11373 (_2!30256 (h!58755 (toList!5654 lm!2023))) lambda!209182))))

(assert (=> b!4697162 (=> (not res!1982414) (not e!2930186))))

(assert (=> b!4697162 e!2930186))

(declare-fun lt!1858829 () Unit!125401)

(declare-fun Unit!125519 () Unit!125401)

(assert (=> b!4697162 (= lt!1858829 Unit!125519)))

(declare-fun b!4697163 () Bool)

(assert (=> b!4697163 (= e!2930185 (invariantList!1432 (toList!5653 lt!1858817)))))

(declare-fun bm!328351 () Bool)

(assert (=> bm!328351 (= call!328356 (lemmaContainsAllItsOwnKeys!720 lt!1858230))))

(assert (= (and d!1493471 c!802993) b!4697161))

(assert (= (and d!1493471 (not c!802993)) b!4697162))

(assert (= (and b!4697162 res!1982414) b!4697159))

(assert (= (or b!4697161 b!4697162) bm!328351))

(assert (= (or b!4697161 b!4697162) bm!328350))

(assert (= (or b!4697161 b!4697159) bm!328349))

(assert (= (and d!1493471 res!1982416) b!4697160))

(assert (= (and b!4697160 res!1982415) b!4697163))

(declare-fun m!5607233 () Bool)

(assert (=> d!1493471 m!5607233))

(declare-fun m!5607235 () Bool)

(assert (=> d!1493471 m!5607235))

(declare-fun m!5607237 () Bool)

(assert (=> b!4697162 m!5607237))

(declare-fun m!5607239 () Bool)

(assert (=> b!4697162 m!5607239))

(declare-fun m!5607241 () Bool)

(assert (=> b!4697162 m!5607241))

(declare-fun m!5607243 () Bool)

(assert (=> b!4697162 m!5607243))

(declare-fun m!5607245 () Bool)

(assert (=> b!4697162 m!5607245))

(declare-fun m!5607247 () Bool)

(assert (=> b!4697162 m!5607247))

(declare-fun m!5607249 () Bool)

(assert (=> b!4697162 m!5607249))

(assert (=> b!4697162 m!5607241))

(declare-fun m!5607251 () Bool)

(assert (=> b!4697162 m!5607251))

(assert (=> b!4697162 m!5607237))

(declare-fun m!5607253 () Bool)

(assert (=> b!4697162 m!5607253))

(declare-fun m!5607255 () Bool)

(assert (=> b!4697162 m!5607255))

(declare-fun m!5607257 () Bool)

(assert (=> b!4697162 m!5607257))

(assert (=> b!4697162 m!5607247))

(declare-fun m!5607259 () Bool)

(assert (=> bm!328349 m!5607259))

(declare-fun m!5607261 () Bool)

(assert (=> bm!328350 m!5607261))

(declare-fun m!5607263 () Bool)

(assert (=> b!4697163 m!5607263))

(assert (=> bm!328351 m!5607035))

(declare-fun m!5607265 () Bool)

(assert (=> b!4697160 m!5607265))

(assert (=> b!4696735 d!1493471))

(declare-fun bs!1092132 () Bool)

(declare-fun d!1493473 () Bool)

(assert (= bs!1092132 (and d!1493473 d!1493439)))

(declare-fun lambda!209184 () Int)

(assert (=> bs!1092132 (= lambda!209184 lambda!209175)))

(declare-fun bs!1092133 () Bool)

(assert (= bs!1092133 (and d!1493473 d!1493275)))

(assert (=> bs!1092133 (= lambda!209184 lambda!209096)))

(declare-fun bs!1092134 () Bool)

(assert (= bs!1092134 (and d!1493473 d!1493357)))

(assert (=> bs!1092134 (= lambda!209184 lambda!209112)))

(declare-fun bs!1092135 () Bool)

(assert (= bs!1092135 (and d!1493473 start!475864)))

(assert (=> bs!1092135 (= lambda!209184 lambda!209033)))

(declare-fun bs!1092136 () Bool)

(assert (= bs!1092136 (and d!1493473 d!1493273)))

(assert (=> bs!1092136 (= lambda!209184 lambda!209053)))

(declare-fun bs!1092137 () Bool)

(assert (= bs!1092137 (and d!1493473 d!1493429)))

(assert (=> bs!1092137 (= lambda!209184 lambda!209170)))

(declare-fun bs!1092138 () Bool)

(assert (= bs!1092138 (and d!1493473 d!1493335)))

(assert (=> bs!1092138 (= lambda!209184 lambda!209111)))

(declare-fun bs!1092139 () Bool)

(assert (= bs!1092139 (and d!1493473 d!1493333)))

(assert (=> bs!1092139 (not (= lambda!209184 lambda!209102))))

(declare-fun lt!1858833 () ListMap!5017)

(assert (=> d!1493473 (invariantList!1432 (toList!5653 lt!1858833))))

(declare-fun e!2930188 () ListMap!5017)

(assert (=> d!1493473 (= lt!1858833 e!2930188)))

(declare-fun c!802994 () Bool)

(assert (=> d!1493473 (= c!802994 ((_ is Cons!52488) (t!359810 (toList!5654 lm!2023))))))

(assert (=> d!1493473 (forall!11371 (t!359810 (toList!5654 lm!2023)) lambda!209184)))

(assert (=> d!1493473 (= (extractMap!1908 (t!359810 (toList!5654 lm!2023))) lt!1858833)))

(declare-fun b!4697164 () Bool)

(assert (=> b!4697164 (= e!2930188 (addToMapMapFromBucket!1314 (_2!30256 (h!58755 (t!359810 (toList!5654 lm!2023)))) (extractMap!1908 (t!359810 (t!359810 (toList!5654 lm!2023))))))))

(declare-fun b!4697165 () Bool)

(assert (=> b!4697165 (= e!2930188 (ListMap!5018 Nil!52487))))

(assert (= (and d!1493473 c!802994) b!4697164))

(assert (= (and d!1493473 (not c!802994)) b!4697165))

(declare-fun m!5607267 () Bool)

(assert (=> d!1493473 m!5607267))

(declare-fun m!5607269 () Bool)

(assert (=> d!1493473 m!5607269))

(declare-fun m!5607271 () Bool)

(assert (=> b!4697164 m!5607271))

(assert (=> b!4697164 m!5607271))

(declare-fun m!5607273 () Bool)

(assert (=> b!4697164 m!5607273))

(assert (=> b!4696735 d!1493473))

(declare-fun d!1493475 () Bool)

(assert (=> d!1493475 (= (tail!8672 lm!2023) (ListLongMap!4184 (tail!8671 (toList!5654 lm!2023))))))

(declare-fun bs!1092140 () Bool)

(assert (= bs!1092140 d!1493475))

(declare-fun m!5607275 () Bool)

(assert (=> bs!1092140 m!5607275))

(assert (=> b!4696735 d!1493475))

(declare-fun d!1493477 () Bool)

(declare-fun res!1982417 () Bool)

(declare-fun e!2930189 () Bool)

(assert (=> d!1493477 (=> res!1982417 e!2930189)))

(assert (=> d!1493477 (= res!1982417 ((_ is Nil!52488) lt!1858232))))

(assert (=> d!1493477 (= (forall!11371 lt!1858232 lambda!209033) e!2930189)))

(declare-fun b!4697166 () Bool)

(declare-fun e!2930190 () Bool)

(assert (=> b!4697166 (= e!2930189 e!2930190)))

(declare-fun res!1982418 () Bool)

(assert (=> b!4697166 (=> (not res!1982418) (not e!2930190))))

(assert (=> b!4697166 (= res!1982418 (dynLambda!21735 lambda!209033 (h!58755 lt!1858232)))))

(declare-fun b!4697167 () Bool)

(assert (=> b!4697167 (= e!2930190 (forall!11371 (t!359810 lt!1858232) lambda!209033))))

(assert (= (and d!1493477 (not res!1982417)) b!4697166))

(assert (= (and b!4697166 res!1982418) b!4697167))

(declare-fun b_lambda!177245 () Bool)

(assert (=> (not b_lambda!177245) (not b!4697166)))

(declare-fun m!5607277 () Bool)

(assert (=> b!4697166 m!5607277))

(declare-fun m!5607279 () Bool)

(assert (=> b!4697167 m!5607279))

(assert (=> b!4696724 d!1493477))

(declare-fun d!1493479 () Bool)

(assert (=> d!1493479 (= (eq!1041 lt!1858240 lt!1858250) (= (content!9226 (toList!5653 lt!1858240)) (content!9226 (toList!5653 lt!1858250))))))

(declare-fun bs!1092141 () Bool)

(assert (= bs!1092141 d!1493479))

(declare-fun m!5607281 () Bool)

(assert (=> bs!1092141 m!5607281))

(declare-fun m!5607283 () Bool)

(assert (=> bs!1092141 m!5607283))

(assert (=> b!4696723 d!1493479))

(declare-fun d!1493481 () Bool)

(assert (=> d!1493481 (= (eq!1041 (extractMap!1908 (Cons!52488 lt!1858241 lt!1858255)) (-!686 (extractMap!1908 (Cons!52488 lt!1858239 lt!1858255)) key!4653)) (= (content!9226 (toList!5653 (extractMap!1908 (Cons!52488 lt!1858241 lt!1858255)))) (content!9226 (toList!5653 (-!686 (extractMap!1908 (Cons!52488 lt!1858239 lt!1858255)) key!4653)))))))

(declare-fun bs!1092142 () Bool)

(assert (= bs!1092142 d!1493481))

(declare-fun m!5607285 () Bool)

(assert (=> bs!1092142 m!5607285))

(declare-fun m!5607287 () Bool)

(assert (=> bs!1092142 m!5607287))

(assert (=> b!4696734 d!1493481))

(declare-fun d!1493483 () Bool)

(assert (=> d!1493483 (= (eq!1041 lt!1858251 lt!1858229) (= (content!9226 (toList!5653 lt!1858251)) (content!9226 (toList!5653 lt!1858229))))))

(declare-fun bs!1092143 () Bool)

(assert (= bs!1092143 d!1493483))

(declare-fun m!5607289 () Bool)

(assert (=> bs!1092143 m!5607289))

(declare-fun m!5607291 () Bool)

(assert (=> bs!1092143 m!5607291))

(assert (=> b!4696734 d!1493483))

(declare-fun d!1493485 () Bool)

(declare-fun e!2930191 () Bool)

(assert (=> d!1493485 e!2930191))

(declare-fun res!1982419 () Bool)

(assert (=> d!1493485 (=> (not res!1982419) (not e!2930191))))

(declare-fun lt!1858834 () ListMap!5017)

(assert (=> d!1493485 (= res!1982419 (not (contains!15738 lt!1858834 key!4653)))))

(assert (=> d!1493485 (= lt!1858834 (ListMap!5018 (removePresrvNoDuplicatedKeys!352 (toList!5653 (extractMap!1908 (Cons!52488 lt!1858239 lt!1858255))) key!4653)))))

(assert (=> d!1493485 (= (-!686 (extractMap!1908 (Cons!52488 lt!1858239 lt!1858255)) key!4653) lt!1858834)))

(declare-fun b!4697168 () Bool)

(assert (=> b!4697168 (= e!2930191 (= ((_ map and) (content!9224 (keys!18763 (extractMap!1908 (Cons!52488 lt!1858239 lt!1858255)))) ((_ map not) (store ((as const (Array K!13855 Bool)) false) key!4653 true))) (content!9224 (keys!18763 lt!1858834))))))

(assert (= (and d!1493485 res!1982419) b!4697168))

(declare-fun m!5607293 () Bool)

(assert (=> d!1493485 m!5607293))

(declare-fun m!5607295 () Bool)

(assert (=> d!1493485 m!5607295))

(declare-fun m!5607297 () Bool)

(assert (=> b!4697168 m!5607297))

(assert (=> b!4697168 m!5606227))

(declare-fun m!5607299 () Bool)

(assert (=> b!4697168 m!5607299))

(assert (=> b!4697168 m!5606343))

(assert (=> b!4697168 m!5607299))

(declare-fun m!5607301 () Bool)

(assert (=> b!4697168 m!5607301))

(assert (=> b!4697168 m!5607297))

(declare-fun m!5607303 () Bool)

(assert (=> b!4697168 m!5607303))

(assert (=> b!4696734 d!1493485))

(declare-fun bs!1092144 () Bool)

(declare-fun d!1493487 () Bool)

(assert (= bs!1092144 (and d!1493487 d!1493439)))

(declare-fun lambda!209185 () Int)

(assert (=> bs!1092144 (= lambda!209185 lambda!209175)))

(declare-fun bs!1092145 () Bool)

(assert (= bs!1092145 (and d!1493487 d!1493275)))

(assert (=> bs!1092145 (= lambda!209185 lambda!209096)))

(declare-fun bs!1092146 () Bool)

(assert (= bs!1092146 (and d!1493487 d!1493357)))

(assert (=> bs!1092146 (= lambda!209185 lambda!209112)))

(declare-fun bs!1092147 () Bool)

(assert (= bs!1092147 (and d!1493487 start!475864)))

(assert (=> bs!1092147 (= lambda!209185 lambda!209033)))

(declare-fun bs!1092148 () Bool)

(assert (= bs!1092148 (and d!1493487 d!1493273)))

(assert (=> bs!1092148 (= lambda!209185 lambda!209053)))

(declare-fun bs!1092149 () Bool)

(assert (= bs!1092149 (and d!1493487 d!1493429)))

(assert (=> bs!1092149 (= lambda!209185 lambda!209170)))

(declare-fun bs!1092150 () Bool)

(assert (= bs!1092150 (and d!1493487 d!1493473)))

(assert (=> bs!1092150 (= lambda!209185 lambda!209184)))

(declare-fun bs!1092151 () Bool)

(assert (= bs!1092151 (and d!1493487 d!1493335)))

(assert (=> bs!1092151 (= lambda!209185 lambda!209111)))

(declare-fun bs!1092152 () Bool)

(assert (= bs!1092152 (and d!1493487 d!1493333)))

(assert (=> bs!1092152 (not (= lambda!209185 lambda!209102))))

(declare-fun lt!1858835 () ListMap!5017)

(assert (=> d!1493487 (invariantList!1432 (toList!5653 lt!1858835))))

(declare-fun e!2930192 () ListMap!5017)

(assert (=> d!1493487 (= lt!1858835 e!2930192)))

(declare-fun c!802995 () Bool)

(assert (=> d!1493487 (= c!802995 ((_ is Cons!52488) (Cons!52488 lt!1858241 (t!359810 (toList!5654 lm!2023)))))))

(assert (=> d!1493487 (forall!11371 (Cons!52488 lt!1858241 (t!359810 (toList!5654 lm!2023))) lambda!209185)))

(assert (=> d!1493487 (= (extractMap!1908 (Cons!52488 lt!1858241 (t!359810 (toList!5654 lm!2023)))) lt!1858835)))

(declare-fun b!4697169 () Bool)

(assert (=> b!4697169 (= e!2930192 (addToMapMapFromBucket!1314 (_2!30256 (h!58755 (Cons!52488 lt!1858241 (t!359810 (toList!5654 lm!2023))))) (extractMap!1908 (t!359810 (Cons!52488 lt!1858241 (t!359810 (toList!5654 lm!2023)))))))))

(declare-fun b!4697170 () Bool)

(assert (=> b!4697170 (= e!2930192 (ListMap!5018 Nil!52487))))

(assert (= (and d!1493487 c!802995) b!4697169))

(assert (= (and d!1493487 (not c!802995)) b!4697170))

(declare-fun m!5607305 () Bool)

(assert (=> d!1493487 m!5607305))

(declare-fun m!5607307 () Bool)

(assert (=> d!1493487 m!5607307))

(declare-fun m!5607309 () Bool)

(assert (=> b!4697169 m!5607309))

(assert (=> b!4697169 m!5607309))

(declare-fun m!5607311 () Bool)

(assert (=> b!4697169 m!5607311))

(assert (=> b!4696734 d!1493487))

(declare-fun bs!1092153 () Bool)

(declare-fun d!1493489 () Bool)

(assert (= bs!1092153 (and d!1493489 d!1493439)))

(declare-fun lambda!209188 () Int)

(assert (=> bs!1092153 (= lambda!209188 lambda!209175)))

(declare-fun bs!1092154 () Bool)

(assert (= bs!1092154 (and d!1493489 d!1493275)))

(assert (=> bs!1092154 (= lambda!209188 lambda!209096)))

(declare-fun bs!1092155 () Bool)

(assert (= bs!1092155 (and d!1493489 d!1493357)))

(assert (=> bs!1092155 (= lambda!209188 lambda!209112)))

(declare-fun bs!1092156 () Bool)

(assert (= bs!1092156 (and d!1493489 start!475864)))

(assert (=> bs!1092156 (= lambda!209188 lambda!209033)))

(declare-fun bs!1092157 () Bool)

(assert (= bs!1092157 (and d!1493489 d!1493487)))

(assert (=> bs!1092157 (= lambda!209188 lambda!209185)))

(declare-fun bs!1092158 () Bool)

(assert (= bs!1092158 (and d!1493489 d!1493273)))

(assert (=> bs!1092158 (= lambda!209188 lambda!209053)))

(declare-fun bs!1092159 () Bool)

(assert (= bs!1092159 (and d!1493489 d!1493429)))

(assert (=> bs!1092159 (= lambda!209188 lambda!209170)))

(declare-fun bs!1092160 () Bool)

(assert (= bs!1092160 (and d!1493489 d!1493473)))

(assert (=> bs!1092160 (= lambda!209188 lambda!209184)))

(declare-fun bs!1092161 () Bool)

(assert (= bs!1092161 (and d!1493489 d!1493335)))

(assert (=> bs!1092161 (= lambda!209188 lambda!209111)))

(declare-fun bs!1092162 () Bool)

(assert (= bs!1092162 (and d!1493489 d!1493333)))

(assert (=> bs!1092162 (not (= lambda!209188 lambda!209102))))

(assert (=> d!1493489 (eq!1041 (extractMap!1908 (Cons!52488 (tuple2!53925 hash!405 lt!1858237) (tail!8671 (toList!5654 lt!1858246)))) (-!686 (extractMap!1908 (Cons!52488 (tuple2!53925 hash!405 (t!359809 oldBucket!34)) (tail!8671 (toList!5654 lt!1858246)))) key!4653))))

(declare-fun lt!1858838 () Unit!125401)

(declare-fun choose!32773 (ListLongMap!4183 (_ BitVec 64) List!52611 List!52611 K!13855 Hashable!6251) Unit!125401)

(assert (=> d!1493489 (= lt!1858838 (choose!32773 lt!1858246 hash!405 (t!359809 oldBucket!34) lt!1858237 key!4653 hashF!1323))))

(assert (=> d!1493489 (forall!11371 (toList!5654 lt!1858246) lambda!209188)))

(assert (=> d!1493489 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!56 lt!1858246 hash!405 (t!359809 oldBucket!34) lt!1858237 key!4653 hashF!1323) lt!1858838)))

(declare-fun bs!1092163 () Bool)

(assert (= bs!1092163 d!1493489))

(declare-fun m!5607313 () Bool)

(assert (=> bs!1092163 m!5607313))

(declare-fun m!5607315 () Bool)

(assert (=> bs!1092163 m!5607315))

(declare-fun m!5607317 () Bool)

(assert (=> bs!1092163 m!5607317))

(assert (=> bs!1092163 m!5607313))

(declare-fun m!5607319 () Bool)

(assert (=> bs!1092163 m!5607319))

(declare-fun m!5607321 () Bool)

(assert (=> bs!1092163 m!5607321))

(assert (=> bs!1092163 m!5607317))

(assert (=> bs!1092163 m!5607315))

(declare-fun m!5607323 () Bool)

(assert (=> bs!1092163 m!5607323))

(declare-fun m!5607325 () Bool)

(assert (=> bs!1092163 m!5607325))

(assert (=> b!4696734 d!1493489))

(declare-fun bs!1092164 () Bool)

(declare-fun d!1493491 () Bool)

(assert (= bs!1092164 (and d!1493491 d!1493439)))

(declare-fun lambda!209189 () Int)

(assert (=> bs!1092164 (= lambda!209189 lambda!209175)))

(declare-fun bs!1092165 () Bool)

(assert (= bs!1092165 (and d!1493491 d!1493275)))

(assert (=> bs!1092165 (= lambda!209189 lambda!209096)))

(declare-fun bs!1092166 () Bool)

(assert (= bs!1092166 (and d!1493491 d!1493357)))

(assert (=> bs!1092166 (= lambda!209189 lambda!209112)))

(declare-fun bs!1092167 () Bool)

(assert (= bs!1092167 (and d!1493491 start!475864)))

(assert (=> bs!1092167 (= lambda!209189 lambda!209033)))

(declare-fun bs!1092168 () Bool)

(assert (= bs!1092168 (and d!1493491 d!1493487)))

(assert (=> bs!1092168 (= lambda!209189 lambda!209185)))

(declare-fun bs!1092169 () Bool)

(assert (= bs!1092169 (and d!1493491 d!1493273)))

(assert (=> bs!1092169 (= lambda!209189 lambda!209053)))

(declare-fun bs!1092170 () Bool)

(assert (= bs!1092170 (and d!1493491 d!1493429)))

(assert (=> bs!1092170 (= lambda!209189 lambda!209170)))

(declare-fun bs!1092171 () Bool)

(assert (= bs!1092171 (and d!1493491 d!1493489)))

(assert (=> bs!1092171 (= lambda!209189 lambda!209188)))

(declare-fun bs!1092172 () Bool)

(assert (= bs!1092172 (and d!1493491 d!1493473)))

(assert (=> bs!1092172 (= lambda!209189 lambda!209184)))

(declare-fun bs!1092173 () Bool)

(assert (= bs!1092173 (and d!1493491 d!1493335)))

(assert (=> bs!1092173 (= lambda!209189 lambda!209111)))

(declare-fun bs!1092174 () Bool)

(assert (= bs!1092174 (and d!1493491 d!1493333)))

(assert (=> bs!1092174 (not (= lambda!209189 lambda!209102))))

(declare-fun lt!1858839 () ListMap!5017)

(assert (=> d!1493491 (invariantList!1432 (toList!5653 lt!1858839))))

(declare-fun e!2930193 () ListMap!5017)

(assert (=> d!1493491 (= lt!1858839 e!2930193)))

(declare-fun c!802996 () Bool)

(assert (=> d!1493491 (= c!802996 ((_ is Cons!52488) (Cons!52488 lt!1858239 lt!1858255)))))

(assert (=> d!1493491 (forall!11371 (Cons!52488 lt!1858239 lt!1858255) lambda!209189)))

(assert (=> d!1493491 (= (extractMap!1908 (Cons!52488 lt!1858239 lt!1858255)) lt!1858839)))

(declare-fun b!4697171 () Bool)

(assert (=> b!4697171 (= e!2930193 (addToMapMapFromBucket!1314 (_2!30256 (h!58755 (Cons!52488 lt!1858239 lt!1858255))) (extractMap!1908 (t!359810 (Cons!52488 lt!1858239 lt!1858255)))))))

(declare-fun b!4697172 () Bool)

(assert (=> b!4697172 (= e!2930193 (ListMap!5018 Nil!52487))))

(assert (= (and d!1493491 c!802996) b!4697171))

(assert (= (and d!1493491 (not c!802996)) b!4697172))

(declare-fun m!5607327 () Bool)

(assert (=> d!1493491 m!5607327))

(declare-fun m!5607329 () Bool)

(assert (=> d!1493491 m!5607329))

(declare-fun m!5607331 () Bool)

(assert (=> b!4697171 m!5607331))

(assert (=> b!4697171 m!5607331))

(declare-fun m!5607333 () Bool)

(assert (=> b!4697171 m!5607333))

(assert (=> b!4696734 d!1493491))

(declare-fun bs!1092175 () Bool)

(declare-fun d!1493493 () Bool)

(assert (= bs!1092175 (and d!1493493 d!1493491)))

(declare-fun lambda!209190 () Int)

(assert (=> bs!1092175 (= lambda!209190 lambda!209189)))

(declare-fun bs!1092176 () Bool)

(assert (= bs!1092176 (and d!1493493 d!1493439)))

(assert (=> bs!1092176 (= lambda!209190 lambda!209175)))

(declare-fun bs!1092177 () Bool)

(assert (= bs!1092177 (and d!1493493 d!1493275)))

(assert (=> bs!1092177 (= lambda!209190 lambda!209096)))

(declare-fun bs!1092178 () Bool)

(assert (= bs!1092178 (and d!1493493 d!1493357)))

(assert (=> bs!1092178 (= lambda!209190 lambda!209112)))

(declare-fun bs!1092179 () Bool)

(assert (= bs!1092179 (and d!1493493 start!475864)))

(assert (=> bs!1092179 (= lambda!209190 lambda!209033)))

(declare-fun bs!1092180 () Bool)

(assert (= bs!1092180 (and d!1493493 d!1493487)))

(assert (=> bs!1092180 (= lambda!209190 lambda!209185)))

(declare-fun bs!1092181 () Bool)

(assert (= bs!1092181 (and d!1493493 d!1493273)))

(assert (=> bs!1092181 (= lambda!209190 lambda!209053)))

(declare-fun bs!1092182 () Bool)

(assert (= bs!1092182 (and d!1493493 d!1493429)))

(assert (=> bs!1092182 (= lambda!209190 lambda!209170)))

(declare-fun bs!1092183 () Bool)

(assert (= bs!1092183 (and d!1493493 d!1493489)))

(assert (=> bs!1092183 (= lambda!209190 lambda!209188)))

(declare-fun bs!1092184 () Bool)

(assert (= bs!1092184 (and d!1493493 d!1493473)))

(assert (=> bs!1092184 (= lambda!209190 lambda!209184)))

(declare-fun bs!1092185 () Bool)

(assert (= bs!1092185 (and d!1493493 d!1493335)))

(assert (=> bs!1092185 (= lambda!209190 lambda!209111)))

(declare-fun bs!1092186 () Bool)

(assert (= bs!1092186 (and d!1493493 d!1493333)))

(assert (=> bs!1092186 (not (= lambda!209190 lambda!209102))))

(declare-fun lt!1858840 () ListMap!5017)

(assert (=> d!1493493 (invariantList!1432 (toList!5653 lt!1858840))))

(declare-fun e!2930194 () ListMap!5017)

(assert (=> d!1493493 (= lt!1858840 e!2930194)))

(declare-fun c!802997 () Bool)

(assert (=> d!1493493 (= c!802997 ((_ is Cons!52488) (Cons!52488 lt!1858241 lt!1858255)))))

(assert (=> d!1493493 (forall!11371 (Cons!52488 lt!1858241 lt!1858255) lambda!209190)))

(assert (=> d!1493493 (= (extractMap!1908 (Cons!52488 lt!1858241 lt!1858255)) lt!1858840)))

(declare-fun b!4697173 () Bool)

(assert (=> b!4697173 (= e!2930194 (addToMapMapFromBucket!1314 (_2!30256 (h!58755 (Cons!52488 lt!1858241 lt!1858255))) (extractMap!1908 (t!359810 (Cons!52488 lt!1858241 lt!1858255)))))))

(declare-fun b!4697174 () Bool)

(assert (=> b!4697174 (= e!2930194 (ListMap!5018 Nil!52487))))

(assert (= (and d!1493493 c!802997) b!4697173))

(assert (= (and d!1493493 (not c!802997)) b!4697174))

(declare-fun m!5607335 () Bool)

(assert (=> d!1493493 m!5607335))

(declare-fun m!5607337 () Bool)

(assert (=> d!1493493 m!5607337))

(declare-fun m!5607339 () Bool)

(assert (=> b!4697173 m!5607339))

(assert (=> b!4697173 m!5607339))

(declare-fun m!5607341 () Bool)

(assert (=> b!4697173 m!5607341))

(assert (=> b!4696734 d!1493493))

(declare-fun d!1493495 () Bool)

(assert (=> d!1493495 (= (tail!8671 lt!1858232) (t!359810 lt!1858232))))

(assert (=> b!4696734 d!1493495))

(declare-fun d!1493497 () Bool)

(declare-fun e!2930195 () Bool)

(assert (=> d!1493497 e!2930195))

(declare-fun res!1982420 () Bool)

(assert (=> d!1493497 (=> (not res!1982420) (not e!2930195))))

(declare-fun lt!1858841 () ListMap!5017)

(assert (=> d!1493497 (= res!1982420 (not (contains!15738 lt!1858841 key!4653)))))

(assert (=> d!1493497 (= lt!1858841 (ListMap!5018 (removePresrvNoDuplicatedKeys!352 (toList!5653 lt!1858253) key!4653)))))

(assert (=> d!1493497 (= (-!686 lt!1858253 key!4653) lt!1858841)))

(declare-fun b!4697175 () Bool)

(assert (=> b!4697175 (= e!2930195 (= ((_ map and) (content!9224 (keys!18763 lt!1858253)) ((_ map not) (store ((as const (Array K!13855 Bool)) false) key!4653 true))) (content!9224 (keys!18763 lt!1858841))))))

(assert (= (and d!1493497 res!1982420) b!4697175))

(declare-fun m!5607343 () Bool)

(assert (=> d!1493497 m!5607343))

(declare-fun m!5607345 () Bool)

(assert (=> d!1493497 m!5607345))

(declare-fun m!5607347 () Bool)

(assert (=> b!4697175 m!5607347))

(assert (=> b!4697175 m!5607123))

(assert (=> b!4697175 m!5606343))

(assert (=> b!4697175 m!5607123))

(declare-fun m!5607349 () Bool)

(assert (=> b!4697175 m!5607349))

(assert (=> b!4697175 m!5607347))

(declare-fun m!5607351 () Bool)

(assert (=> b!4697175 m!5607351))

(assert (=> b!4696734 d!1493497))

(declare-fun d!1493499 () Bool)

(assert (=> d!1493499 (= (eq!1041 lt!1858242 (+!2166 lt!1858236 lt!1858231)) (= (content!9226 (toList!5653 lt!1858242)) (content!9226 (toList!5653 (+!2166 lt!1858236 lt!1858231)))))))

(declare-fun bs!1092187 () Bool)

(assert (= bs!1092187 d!1493499))

(assert (=> bs!1092187 m!5607073))

(declare-fun m!5607353 () Bool)

(assert (=> bs!1092187 m!5607353))

(assert (=> b!4696727 d!1493499))

(declare-fun d!1493501 () Bool)

(declare-fun e!2930196 () Bool)

(assert (=> d!1493501 e!2930196))

(declare-fun res!1982422 () Bool)

(assert (=> d!1493501 (=> (not res!1982422) (not e!2930196))))

(declare-fun lt!1858843 () ListMap!5017)

(assert (=> d!1493501 (= res!1982422 (contains!15738 lt!1858843 (_1!30255 lt!1858231)))))

(declare-fun lt!1858845 () List!52611)

(assert (=> d!1493501 (= lt!1858843 (ListMap!5018 lt!1858845))))

(declare-fun lt!1858842 () Unit!125401)

(declare-fun lt!1858844 () Unit!125401)

(assert (=> d!1493501 (= lt!1858842 lt!1858844)))

(assert (=> d!1493501 (= (getValueByKey!1823 lt!1858845 (_1!30255 lt!1858231)) (Some!12150 (_2!30255 lt!1858231)))))

(assert (=> d!1493501 (= lt!1858844 (lemmaContainsTupThenGetReturnValue!1022 lt!1858845 (_1!30255 lt!1858231) (_2!30255 lt!1858231)))))

(assert (=> d!1493501 (= lt!1858845 (insertNoDuplicatedKeys!530 (toList!5653 lt!1858236) (_1!30255 lt!1858231) (_2!30255 lt!1858231)))))

(assert (=> d!1493501 (= (+!2166 lt!1858236 lt!1858231) lt!1858843)))

(declare-fun b!4697176 () Bool)

(declare-fun res!1982421 () Bool)

(assert (=> b!4697176 (=> (not res!1982421) (not e!2930196))))

(assert (=> b!4697176 (= res!1982421 (= (getValueByKey!1823 (toList!5653 lt!1858843) (_1!30255 lt!1858231)) (Some!12150 (_2!30255 lt!1858231))))))

(declare-fun b!4697177 () Bool)

(assert (=> b!4697177 (= e!2930196 (contains!15741 (toList!5653 lt!1858843) lt!1858231))))

(assert (= (and d!1493501 res!1982422) b!4697176))

(assert (= (and b!4697176 res!1982421) b!4697177))

(declare-fun m!5607355 () Bool)

(assert (=> d!1493501 m!5607355))

(declare-fun m!5607357 () Bool)

(assert (=> d!1493501 m!5607357))

(declare-fun m!5607359 () Bool)

(assert (=> d!1493501 m!5607359))

(declare-fun m!5607361 () Bool)

(assert (=> d!1493501 m!5607361))

(declare-fun m!5607363 () Bool)

(assert (=> b!4697176 m!5607363))

(declare-fun m!5607365 () Bool)

(assert (=> b!4697177 m!5607365))

(assert (=> b!4696727 d!1493501))

(declare-fun bs!1092188 () Bool)

(declare-fun d!1493503 () Bool)

(assert (= bs!1092188 (and d!1493503 d!1493361)))

(declare-fun lambda!209193 () Int)

(assert (=> bs!1092188 (not (= lambda!209193 lambda!209163))))

(declare-fun bs!1092189 () Bool)

(assert (= bs!1092189 (and d!1493503 b!4697161)))

(assert (=> bs!1092189 (not (= lambda!209193 lambda!209180))))

(declare-fun bs!1092190 () Bool)

(assert (= bs!1092190 (and d!1493503 b!4697097)))

(assert (=> bs!1092190 (not (= lambda!209193 lambda!209173))))

(declare-fun bs!1092191 () Bool)

(assert (= bs!1092191 (and d!1493503 b!4697134)))

(assert (=> bs!1092191 (not (= lambda!209193 lambda!209176))))

(declare-fun bs!1092192 () Bool)

(assert (= bs!1092192 (and d!1493503 b!4697074)))

(assert (=> bs!1092192 (not (= lambda!209193 lambda!209162))))

(declare-fun bs!1092193 () Bool)

(assert (= bs!1092193 (and d!1493503 b!4697162)))

(assert (=> bs!1092193 (not (= lambda!209193 lambda!209181))))

(assert (=> bs!1092190 (not (= lambda!209193 lambda!209172))))

(declare-fun bs!1092194 () Bool)

(assert (= bs!1092194 (and d!1493503 d!1493433)))

(assert (=> bs!1092194 (not (= lambda!209193 lambda!209174))))

(declare-fun bs!1092195 () Bool)

(assert (= bs!1092195 (and d!1493503 b!4697135)))

(assert (=> bs!1092195 (not (= lambda!209193 lambda!209178))))

(declare-fun bs!1092196 () Bool)

(assert (= bs!1092196 (and d!1493503 b!4697073)))

(assert (=> bs!1092196 (not (= lambda!209193 lambda!209160))))

(assert (=> bs!1092195 (not (= lambda!209193 lambda!209177))))

(declare-fun bs!1092197 () Bool)

(assert (= bs!1092197 (and d!1493503 b!4697092)))

(assert (=> bs!1092197 (not (= lambda!209193 lambda!209165))))

(assert (=> bs!1092197 (not (= lambda!209193 lambda!209166))))

(assert (=> bs!1092193 (not (= lambda!209193 lambda!209182))))

(assert (=> bs!1092192 (not (= lambda!209193 lambda!209161))))

(declare-fun bs!1092198 () Bool)

(assert (= bs!1092198 (and d!1493503 b!4697091)))

(assert (=> bs!1092198 (not (= lambda!209193 lambda!209164))))

(declare-fun bs!1092199 () Bool)

(assert (= bs!1092199 (and d!1493503 b!4697096)))

(assert (=> bs!1092199 (not (= lambda!209193 lambda!209171))))

(declare-fun bs!1092200 () Bool)

(assert (= bs!1092200 (and d!1493503 d!1493471)))

(assert (=> bs!1092200 (not (= lambda!209193 lambda!209183))))

(declare-fun bs!1092201 () Bool)

(assert (= bs!1092201 (and d!1493503 d!1493425)))

(assert (=> bs!1092201 (not (= lambda!209193 lambda!209167))))

(declare-fun bs!1092202 () Bool)

(assert (= bs!1092202 (and d!1493503 d!1493449)))

(assert (=> bs!1092202 (not (= lambda!209193 lambda!209179))))

(assert (=> d!1493503 true))

(assert (=> d!1493503 true))

(assert (=> d!1493503 (= (allKeysSameHash!1708 newBucket!218 hash!405 hashF!1323) (forall!11373 newBucket!218 lambda!209193))))

(declare-fun bs!1092203 () Bool)

(assert (= bs!1092203 d!1493503))

(declare-fun m!5607367 () Bool)

(assert (=> bs!1092203 m!5607367))

(assert (=> b!4696738 d!1493503))

(declare-fun d!1493505 () Bool)

(assert (=> d!1493505 (= (eq!1041 lt!1858226 lt!1858242) (= (content!9226 (toList!5653 lt!1858226)) (content!9226 (toList!5653 lt!1858242))))))

(declare-fun bs!1092204 () Bool)

(assert (= bs!1092204 d!1493505))

(declare-fun m!5607369 () Bool)

(assert (=> bs!1092204 m!5607369))

(assert (=> bs!1092204 m!5607073))

(assert (=> b!4696737 d!1493505))

(declare-fun bs!1092205 () Bool)

(declare-fun d!1493507 () Bool)

(assert (= bs!1092205 (and d!1493507 d!1493361)))

(declare-fun lambda!209194 () Int)

(assert (=> bs!1092205 (not (= lambda!209194 lambda!209163))))

(declare-fun bs!1092206 () Bool)

(assert (= bs!1092206 (and d!1493507 d!1493503)))

(assert (=> bs!1092206 (= lambda!209194 lambda!209193)))

(declare-fun bs!1092207 () Bool)

(assert (= bs!1092207 (and d!1493507 b!4697161)))

(assert (=> bs!1092207 (not (= lambda!209194 lambda!209180))))

(declare-fun bs!1092208 () Bool)

(assert (= bs!1092208 (and d!1493507 b!4697097)))

(assert (=> bs!1092208 (not (= lambda!209194 lambda!209173))))

(declare-fun bs!1092209 () Bool)

(assert (= bs!1092209 (and d!1493507 b!4697134)))

(assert (=> bs!1092209 (not (= lambda!209194 lambda!209176))))

(declare-fun bs!1092210 () Bool)

(assert (= bs!1092210 (and d!1493507 b!4697074)))

(assert (=> bs!1092210 (not (= lambda!209194 lambda!209162))))

(declare-fun bs!1092211 () Bool)

(assert (= bs!1092211 (and d!1493507 b!4697162)))

(assert (=> bs!1092211 (not (= lambda!209194 lambda!209181))))

(assert (=> bs!1092208 (not (= lambda!209194 lambda!209172))))

(declare-fun bs!1092212 () Bool)

(assert (= bs!1092212 (and d!1493507 d!1493433)))

(assert (=> bs!1092212 (not (= lambda!209194 lambda!209174))))

(declare-fun bs!1092213 () Bool)

(assert (= bs!1092213 (and d!1493507 b!4697135)))

(assert (=> bs!1092213 (not (= lambda!209194 lambda!209178))))

(declare-fun bs!1092214 () Bool)

(assert (= bs!1092214 (and d!1493507 b!4697073)))

(assert (=> bs!1092214 (not (= lambda!209194 lambda!209160))))

(assert (=> bs!1092213 (not (= lambda!209194 lambda!209177))))

(declare-fun bs!1092215 () Bool)

(assert (= bs!1092215 (and d!1493507 b!4697092)))

(assert (=> bs!1092215 (not (= lambda!209194 lambda!209165))))

(assert (=> bs!1092215 (not (= lambda!209194 lambda!209166))))

(assert (=> bs!1092211 (not (= lambda!209194 lambda!209182))))

(assert (=> bs!1092210 (not (= lambda!209194 lambda!209161))))

(declare-fun bs!1092216 () Bool)

(assert (= bs!1092216 (and d!1493507 b!4697091)))

(assert (=> bs!1092216 (not (= lambda!209194 lambda!209164))))

(declare-fun bs!1092217 () Bool)

(assert (= bs!1092217 (and d!1493507 b!4697096)))

(assert (=> bs!1092217 (not (= lambda!209194 lambda!209171))))

(declare-fun bs!1092218 () Bool)

(assert (= bs!1092218 (and d!1493507 d!1493471)))

(assert (=> bs!1092218 (not (= lambda!209194 lambda!209183))))

(declare-fun bs!1092219 () Bool)

(assert (= bs!1092219 (and d!1493507 d!1493425)))

(assert (=> bs!1092219 (not (= lambda!209194 lambda!209167))))

(declare-fun bs!1092220 () Bool)

(assert (= bs!1092220 (and d!1493507 d!1493449)))

(assert (=> bs!1092220 (not (= lambda!209194 lambda!209179))))

(assert (=> d!1493507 true))

(assert (=> d!1493507 true))

(assert (=> d!1493507 (= (allKeysSameHash!1708 oldBucket!34 hash!405 hashF!1323) (forall!11373 oldBucket!34 lambda!209194))))

(declare-fun bs!1092221 () Bool)

(assert (= bs!1092221 d!1493507))

(declare-fun m!5607371 () Bool)

(assert (=> bs!1092221 m!5607371))

(assert (=> b!4696726 d!1493507))

(declare-fun b!4697182 () Bool)

(declare-fun e!2930202 () List!52614)

(assert (=> b!4697182 (= e!2930202 (getKeysList!872 (toList!5653 lt!1858233)))))

(declare-fun d!1493509 () Bool)

(declare-fun e!2930200 () Bool)

(assert (=> d!1493509 e!2930200))

(declare-fun res!1982423 () Bool)

(assert (=> d!1493509 (=> res!1982423 e!2930200)))

(declare-fun e!2930198 () Bool)

(assert (=> d!1493509 (= res!1982423 e!2930198)))

(declare-fun res!1982424 () Bool)

(assert (=> d!1493509 (=> (not res!1982424) (not e!2930198))))

(declare-fun lt!1858850 () Bool)

(assert (=> d!1493509 (= res!1982424 (not lt!1858850))))

(declare-fun lt!1858853 () Bool)

(assert (=> d!1493509 (= lt!1858850 lt!1858853)))

(declare-fun lt!1858852 () Unit!125401)

(declare-fun e!2930199 () Unit!125401)

(assert (=> d!1493509 (= lt!1858852 e!2930199)))

(declare-fun c!802999 () Bool)

(assert (=> d!1493509 (= c!802999 lt!1858853)))

(assert (=> d!1493509 (= lt!1858853 (containsKey!3128 (toList!5653 lt!1858233) key!4653))))

(assert (=> d!1493509 (= (contains!15738 lt!1858233 key!4653) lt!1858850)))

(declare-fun b!4697183 () Bool)

(declare-fun e!2930197 () Unit!125401)

(declare-fun Unit!125521 () Unit!125401)

(assert (=> b!4697183 (= e!2930197 Unit!125521)))

(declare-fun b!4697184 () Bool)

(assert (=> b!4697184 (= e!2930202 (keys!18763 lt!1858233))))

(declare-fun b!4697185 () Bool)

(assert (=> b!4697185 (= e!2930198 (not (contains!15742 (keys!18763 lt!1858233) key!4653)))))

(declare-fun b!4697186 () Bool)

(assert (=> b!4697186 false))

(declare-fun lt!1858851 () Unit!125401)

(declare-fun lt!1858849 () Unit!125401)

(assert (=> b!4697186 (= lt!1858851 lt!1858849)))

(assert (=> b!4697186 (containsKey!3128 (toList!5653 lt!1858233) key!4653)))

(assert (=> b!4697186 (= lt!1858849 (lemmaInGetKeysListThenContainsKey!871 (toList!5653 lt!1858233) key!4653))))

(declare-fun Unit!125522 () Unit!125401)

(assert (=> b!4697186 (= e!2930197 Unit!125522)))

(declare-fun b!4697187 () Bool)

(assert (=> b!4697187 (= e!2930199 e!2930197)))

(declare-fun c!802998 () Bool)

(declare-fun call!328357 () Bool)

(assert (=> b!4697187 (= c!802998 call!328357)))

(declare-fun b!4697188 () Bool)

(declare-fun e!2930201 () Bool)

(assert (=> b!4697188 (= e!2930200 e!2930201)))

(declare-fun res!1982425 () Bool)

(assert (=> b!4697188 (=> (not res!1982425) (not e!2930201))))

(assert (=> b!4697188 (= res!1982425 (isDefined!9407 (getValueByKey!1823 (toList!5653 lt!1858233) key!4653)))))

(declare-fun b!4697189 () Bool)

(assert (=> b!4697189 (= e!2930201 (contains!15742 (keys!18763 lt!1858233) key!4653))))

(declare-fun bm!328352 () Bool)

(assert (=> bm!328352 (= call!328357 (contains!15742 e!2930202 key!4653))))

(declare-fun c!803000 () Bool)

(assert (=> bm!328352 (= c!803000 c!802999)))

(declare-fun b!4697190 () Bool)

(declare-fun lt!1858847 () Unit!125401)

(assert (=> b!4697190 (= e!2930199 lt!1858847)))

(declare-fun lt!1858848 () Unit!125401)

(assert (=> b!4697190 (= lt!1858848 (lemmaContainsKeyImpliesGetValueByKeyDefined!1716 (toList!5653 lt!1858233) key!4653))))

(assert (=> b!4697190 (isDefined!9407 (getValueByKey!1823 (toList!5653 lt!1858233) key!4653))))

(declare-fun lt!1858846 () Unit!125401)

(assert (=> b!4697190 (= lt!1858846 lt!1858848)))

(assert (=> b!4697190 (= lt!1858847 (lemmaInListThenGetKeysListContains!867 (toList!5653 lt!1858233) key!4653))))

(assert (=> b!4697190 call!328357))

(assert (= (and d!1493509 c!802999) b!4697190))

(assert (= (and d!1493509 (not c!802999)) b!4697187))

(assert (= (and b!4697187 c!802998) b!4697186))

(assert (= (and b!4697187 (not c!802998)) b!4697183))

(assert (= (or b!4697190 b!4697187) bm!328352))

(assert (= (and bm!328352 c!803000) b!4697182))

(assert (= (and bm!328352 (not c!803000)) b!4697184))

(assert (= (and d!1493509 res!1982424) b!4697185))

(assert (= (and d!1493509 (not res!1982423)) b!4697188))

(assert (= (and b!4697188 res!1982425) b!4697189))

(declare-fun m!5607373 () Bool)

(assert (=> b!4697184 m!5607373))

(declare-fun m!5607375 () Bool)

(assert (=> b!4697190 m!5607375))

(declare-fun m!5607377 () Bool)

(assert (=> b!4697190 m!5607377))

(assert (=> b!4697190 m!5607377))

(declare-fun m!5607379 () Bool)

(assert (=> b!4697190 m!5607379))

(declare-fun m!5607381 () Bool)

(assert (=> b!4697190 m!5607381))

(declare-fun m!5607383 () Bool)

(assert (=> d!1493509 m!5607383))

(assert (=> b!4697186 m!5607383))

(declare-fun m!5607385 () Bool)

(assert (=> b!4697186 m!5607385))

(assert (=> b!4697188 m!5607377))

(assert (=> b!4697188 m!5607377))

(assert (=> b!4697188 m!5607379))

(declare-fun m!5607387 () Bool)

(assert (=> b!4697182 m!5607387))

(declare-fun m!5607389 () Bool)

(assert (=> bm!328352 m!5607389))

(assert (=> b!4697189 m!5607373))

(assert (=> b!4697189 m!5607373))

(declare-fun m!5607391 () Bool)

(assert (=> b!4697189 m!5607391))

(assert (=> b!4697185 m!5607373))

(assert (=> b!4697185 m!5607373))

(assert (=> b!4697185 m!5607391))

(assert (=> b!4696736 d!1493509))

(declare-fun bs!1092222 () Bool)

(declare-fun d!1493511 () Bool)

(assert (= bs!1092222 (and d!1493511 d!1493491)))

(declare-fun lambda!209195 () Int)

(assert (=> bs!1092222 (= lambda!209195 lambda!209189)))

(declare-fun bs!1092223 () Bool)

(assert (= bs!1092223 (and d!1493511 d!1493439)))

(assert (=> bs!1092223 (= lambda!209195 lambda!209175)))

(declare-fun bs!1092224 () Bool)

(assert (= bs!1092224 (and d!1493511 d!1493275)))

(assert (=> bs!1092224 (= lambda!209195 lambda!209096)))

(declare-fun bs!1092225 () Bool)

(assert (= bs!1092225 (and d!1493511 d!1493357)))

(assert (=> bs!1092225 (= lambda!209195 lambda!209112)))

(declare-fun bs!1092226 () Bool)

(assert (= bs!1092226 (and d!1493511 start!475864)))

(assert (=> bs!1092226 (= lambda!209195 lambda!209033)))

(declare-fun bs!1092227 () Bool)

(assert (= bs!1092227 (and d!1493511 d!1493487)))

(assert (=> bs!1092227 (= lambda!209195 lambda!209185)))

(declare-fun bs!1092228 () Bool)

(assert (= bs!1092228 (and d!1493511 d!1493273)))

(assert (=> bs!1092228 (= lambda!209195 lambda!209053)))

(declare-fun bs!1092229 () Bool)

(assert (= bs!1092229 (and d!1493511 d!1493429)))

(assert (=> bs!1092229 (= lambda!209195 lambda!209170)))

(declare-fun bs!1092230 () Bool)

(assert (= bs!1092230 (and d!1493511 d!1493493)))

(assert (=> bs!1092230 (= lambda!209195 lambda!209190)))

(declare-fun bs!1092231 () Bool)

(assert (= bs!1092231 (and d!1493511 d!1493489)))

(assert (=> bs!1092231 (= lambda!209195 lambda!209188)))

(declare-fun bs!1092232 () Bool)

(assert (= bs!1092232 (and d!1493511 d!1493473)))

(assert (=> bs!1092232 (= lambda!209195 lambda!209184)))

(declare-fun bs!1092233 () Bool)

(assert (= bs!1092233 (and d!1493511 d!1493335)))

(assert (=> bs!1092233 (= lambda!209195 lambda!209111)))

(declare-fun bs!1092234 () Bool)

(assert (= bs!1092234 (and d!1493511 d!1493333)))

(assert (=> bs!1092234 (not (= lambda!209195 lambda!209102))))

(declare-fun lt!1858854 () ListMap!5017)

(assert (=> d!1493511 (invariantList!1432 (toList!5653 lt!1858854))))

(declare-fun e!2930203 () ListMap!5017)

(assert (=> d!1493511 (= lt!1858854 e!2930203)))

(declare-fun c!803001 () Bool)

(assert (=> d!1493511 (= c!803001 ((_ is Cons!52488) (toList!5654 lm!2023)))))

(assert (=> d!1493511 (forall!11371 (toList!5654 lm!2023) lambda!209195)))

(assert (=> d!1493511 (= (extractMap!1908 (toList!5654 lm!2023)) lt!1858854)))

(declare-fun b!4697191 () Bool)

(assert (=> b!4697191 (= e!2930203 (addToMapMapFromBucket!1314 (_2!30256 (h!58755 (toList!5654 lm!2023))) (extractMap!1908 (t!359810 (toList!5654 lm!2023)))))))

(declare-fun b!4697192 () Bool)

(assert (=> b!4697192 (= e!2930203 (ListMap!5018 Nil!52487))))

(assert (= (and d!1493511 c!803001) b!4697191))

(assert (= (and d!1493511 (not c!803001)) b!4697192))

(declare-fun m!5607393 () Bool)

(assert (=> d!1493511 m!5607393))

(declare-fun m!5607395 () Bool)

(assert (=> d!1493511 m!5607395))

(assert (=> b!4697191 m!5606213))

(assert (=> b!4697191 m!5606213))

(declare-fun m!5607397 () Bool)

(assert (=> b!4697191 m!5607397))

(assert (=> b!4696736 d!1493511))

(declare-fun e!2930206 () Bool)

(declare-fun b!4697197 () Bool)

(declare-fun tp!1346402 () Bool)

(assert (=> b!4697197 (= e!2930206 (and tp_is_empty!30821 tp_is_empty!30823 tp!1346402))))

(assert (=> b!4696718 (= tp!1346389 e!2930206)))

(assert (= (and b!4696718 ((_ is Cons!52487) (t!359809 newBucket!218))) b!4697197))

(declare-fun b!4697202 () Bool)

(declare-fun e!2930209 () Bool)

(declare-fun tp!1346407 () Bool)

(declare-fun tp!1346408 () Bool)

(assert (=> b!4697202 (= e!2930209 (and tp!1346407 tp!1346408))))

(assert (=> b!4696733 (= tp!1346387 e!2930209)))

(assert (= (and b!4696733 ((_ is Cons!52488) (toList!5654 lm!2023))) b!4697202))

(declare-fun b!4697203 () Bool)

(declare-fun tp!1346409 () Bool)

(declare-fun e!2930210 () Bool)

(assert (=> b!4697203 (= e!2930210 (and tp_is_empty!30821 tp_is_empty!30823 tp!1346409))))

(assert (=> b!4696721 (= tp!1346388 e!2930210)))

(assert (= (and b!4696721 ((_ is Cons!52487) (t!359809 oldBucket!34))) b!4697203))

(declare-fun b_lambda!177247 () Bool)

(assert (= b_lambda!177245 (or start!475864 b_lambda!177247)))

(declare-fun bs!1092235 () Bool)

(declare-fun d!1493513 () Bool)

(assert (= bs!1092235 (and d!1493513 start!475864)))

(assert (=> bs!1092235 (= (dynLambda!21735 lambda!209033 (h!58755 lt!1858232)) (noDuplicateKeys!1882 (_2!30256 (h!58755 lt!1858232))))))

(declare-fun m!5607399 () Bool)

(assert (=> bs!1092235 m!5607399))

(assert (=> b!4697166 d!1493513))

(declare-fun b_lambda!177249 () Bool)

(assert (= b_lambda!177231 (or start!475864 b_lambda!177249)))

(declare-fun bs!1092236 () Bool)

(declare-fun d!1493515 () Bool)

(assert (= bs!1092236 (and d!1493515 start!475864)))

(assert (=> bs!1092236 (= (dynLambda!21735 lambda!209033 lt!1858235) (noDuplicateKeys!1882 (_2!30256 lt!1858235)))))

(declare-fun m!5607401 () Bool)

(assert (=> bs!1092236 m!5607401))

(assert (=> d!1493265 d!1493515))

(declare-fun b_lambda!177251 () Bool)

(assert (= b_lambda!177243 (or start!475864 b_lambda!177251)))

(declare-fun bs!1092237 () Bool)

(declare-fun d!1493517 () Bool)

(assert (= bs!1092237 (and d!1493517 start!475864)))

(assert (=> bs!1092237 (= (dynLambda!21735 lambda!209033 (h!58755 (toList!5654 lm!2023))) (noDuplicateKeys!1882 (_2!30256 (h!58755 (toList!5654 lm!2023)))))))

(assert (=> bs!1092237 m!5607235))

(assert (=> b!4697151 d!1493517))

(check-sat (not d!1493503) (not d!1493507) (not b!4697190) (not b!4697124) (not b!4696894) (not d!1493475) (not d!1493353) (not d!1493487) (not b!4697164) (not d!1493443) (not b!4697126) (not d!1493335) (not b!4696936) (not d!1493257) (not b!4697157) (not b!4697177) (not b!4697153) (not b!4696896) (not b!4697128) (not d!1493501) (not b!4697197) (not bm!328352) (not d!1493331) (not d!1493505) (not b!4696926) (not d!1493459) (not b!4697171) (not bm!328347) (not b!4697093) (not d!1493427) (not bs!1092237) (not b!4696836) (not b_lambda!177247) (not bm!328339) (not b!4697154) (not b!4697160) (not b!4697098) (not bm!328349) (not b!4697176) (not b!4697182) (not bm!328335) (not b!4697145) (not b!4697168) (not bm!328340) (not d!1493483) (not b!4697202) (not b!4697095) (not d!1493451) (not d!1493329) (not d!1493269) (not b!4696825) (not d!1493499) (not b!4697175) (not d!1493481) (not d!1493273) (not d!1493333) (not b!4697169) (not b!4697167) (not b!4696815) (not b!4697136) (not d!1493425) (not d!1493453) (not b!4696950) (not b!4697203) (not d!1493449) (not bs!1092236) (not b!4697090) (not b!4696927) (not b!4697173) (not d!1493447) (not b!4696809) (not d!1493493) (not b!4696897) (not d!1493491) (not d!1493473) (not d!1493471) (not b!4697075) (not b!4697092) (not d!1493435) (not b!4697135) (not d!1493485) (not b!4696814) (not d!1493489) (not b!4697185) (not bm!328346) (not d!1493261) (not bm!328341) (not bm!328342) (not b!4696817) (not b!4697119) (not d!1493439) (not b!4697184) (not d!1493437) (not d!1493361) (not d!1493247) (not b!4697130) (not b!4697163) (not d!1493497) tp_is_empty!30823 (not b!4697097) (not b!4697120) (not b!4697072) (not d!1493325) (not b!4696827) (not b!4697074) (not b!4697191) (not bm!328337) tp_is_empty!30821 (not d!1493271) (not d!1493429) (not d!1493511) (not d!1493431) (not d!1493265) (not bm!328348) (not b!4697139) (not d!1493357) (not b!4696970) (not b!4697125) (not b!4696971) (not d!1493433) (not d!1493311) (not b!4697133) (not b!4697186) (not d!1493259) (not b!4696921) (not bm!328351) (not b!4696920) (not bm!328350) (not d!1493263) (not b!4696925) (not b!4697162) (not b!4697152) (not b!4696816) (not d!1493275) (not b!4696969) (not d!1493255) (not d!1493267) (not b!4696818) (not b!4696895) (not b!4697121) (not b!4696830) (not bm!328338) (not d!1493445) (not b!4697117) (not d!1493509) (not bm!328345) (not d!1493479) (not d!1493355) (not d!1493465) (not b!4696938) (not b_lambda!177249) (not b!4697129) (not bs!1092235) (not b!4697189) (not b!4697123) (not bm!328334) (not b!4697146) (not bm!328336) (not b!4696967) (not b_lambda!177251) (not b!4697188) (not b!4697131))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476556 () Bool)

(assert start!476556)

(declare-fun b!4699927 () Bool)

(declare-fun res!1984126 () Bool)

(declare-fun e!2931840 () Bool)

(assert (=> b!4699927 (=> (not res!1984126) (not e!2931840))))

(declare-datatypes ((K!13885 0))(
  ( (K!13886 (val!19379 Int)) )
))
(declare-datatypes ((V!14131 0))(
  ( (V!14132 (val!19380 Int)) )
))
(declare-datatypes ((tuple2!53970 0))(
  ( (tuple2!53971 (_1!30279 K!13885) (_2!30279 V!14131)) )
))
(declare-datatypes ((List!52645 0))(
  ( (Nil!52521) (Cons!52521 (h!58798 tuple2!53970) (t!359853 List!52645)) )
))
(declare-fun newBucket!218 () List!52645)

(declare-fun noDuplicateKeys!1894 (List!52645) Bool)

(assert (=> b!4699927 (= res!1984126 (noDuplicateKeys!1894 newBucket!218))))

(declare-fun b!4699928 () Bool)

(declare-fun res!1984116 () Bool)

(assert (=> b!4699928 (=> (not res!1984116) (not e!2931840))))

(declare-datatypes ((Hashable!6263 0))(
  ( (HashableExt!6262 (__x!31966 Int)) )
))
(declare-fun hashF!1323 () Hashable!6263)

(declare-fun oldBucket!34 () List!52645)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1720 (List!52645 (_ BitVec 64) Hashable!6263) Bool)

(assert (=> b!4699928 (= res!1984116 (allKeysSameHash!1720 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4699929 () Bool)

(declare-fun e!2931834 () Bool)

(declare-fun e!2931836 () Bool)

(assert (=> b!4699929 (= e!2931834 (not e!2931836))))

(declare-fun res!1984135 () Bool)

(assert (=> b!4699929 (=> res!1984135 e!2931836)))

(declare-fun key!4653 () K!13885)

(get-info :version)

(assert (=> b!4699929 (= res!1984135 (or (and ((_ is Cons!52521) oldBucket!34) (= (_1!30279 (h!58798 oldBucket!34)) key!4653)) (not ((_ is Cons!52521) oldBucket!34)) (= (_1!30279 (h!58798 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!5041 0))(
  ( (ListMap!5042 (toList!5677 List!52645)) )
))
(declare-fun lt!1862508 () ListMap!5041)

(declare-datatypes ((tuple2!53972 0))(
  ( (tuple2!53973 (_1!30280 (_ BitVec 64)) (_2!30280 List!52645)) )
))
(declare-datatypes ((List!52646 0))(
  ( (Nil!52522) (Cons!52522 (h!58799 tuple2!53972) (t!359854 List!52646)) )
))
(declare-datatypes ((ListLongMap!4207 0))(
  ( (ListLongMap!4208 (toList!5678 List!52646)) )
))
(declare-fun lm!2023 () ListLongMap!4207)

(declare-fun lt!1862511 () ListMap!5041)

(declare-fun addToMapMapFromBucket!1326 (List!52645 ListMap!5041) ListMap!5041)

(assert (=> b!4699929 (= lt!1862508 (addToMapMapFromBucket!1326 (_2!30280 (h!58799 (toList!5678 lm!2023))) lt!1862511))))

(declare-fun extractMap!1920 (List!52646) ListMap!5041)

(assert (=> b!4699929 (= lt!1862511 (extractMap!1920 (t!359854 (toList!5678 lm!2023))))))

(declare-fun tail!8707 (ListLongMap!4207) ListLongMap!4207)

(assert (=> b!4699929 (= (t!359854 (toList!5678 lm!2023)) (toList!5678 (tail!8707 lm!2023)))))

(declare-fun b!4699930 () Bool)

(declare-fun e!2931838 () Bool)

(declare-fun lt!1862514 () List!52646)

(declare-fun lambda!209915 () Int)

(declare-fun forall!11393 (List!52646 Int) Bool)

(assert (=> b!4699930 (= e!2931838 (forall!11393 lt!1862514 lambda!209915))))

(declare-fun lt!1862521 () ListMap!5041)

(declare-fun lt!1862517 () ListMap!5041)

(declare-fun eq!1053 (ListMap!5041 ListMap!5041) Bool)

(declare-fun +!2178 (ListMap!5041 tuple2!53970) ListMap!5041)

(assert (=> b!4699930 (eq!1053 lt!1862521 (+!2178 lt!1862517 (h!58798 oldBucket!34)))))

(declare-fun lt!1862499 () ListMap!5041)

(declare-datatypes ((Unit!125992 0))(
  ( (Unit!125993) )
))
(declare-fun lt!1862522 () Unit!125992)

(declare-fun lemmaAddToEqMapsPreservesEq!76 (ListMap!5041 ListMap!5041 K!13885 V!14131) Unit!125992)

(assert (=> b!4699930 (= lt!1862522 (lemmaAddToEqMapsPreservesEq!76 lt!1862499 lt!1862517 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(declare-fun b!4699931 () Bool)

(declare-fun res!1984128 () Bool)

(declare-fun e!2931835 () Bool)

(assert (=> b!4699931 (=> (not res!1984128) (not e!2931835))))

(assert (=> b!4699931 (= res!1984128 (allKeysSameHash!1720 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4699932 () Bool)

(declare-fun res!1984132 () Bool)

(assert (=> b!4699932 (=> res!1984132 e!2931838)))

(declare-fun lt!1862503 () ListMap!5041)

(declare-fun lt!1862523 () ListMap!5041)

(assert (=> b!4699932 (= res!1984132 (not (eq!1053 lt!1862503 lt!1862523)))))

(declare-fun b!4699933 () Bool)

(declare-fun res!1984117 () Bool)

(declare-fun e!2931841 () Bool)

(assert (=> b!4699933 (=> res!1984117 e!2931841)))

(declare-fun lt!1862510 () ListMap!5041)

(declare-fun lt!1862530 () tuple2!53970)

(declare-fun lt!1862498 () ListMap!5041)

(assert (=> b!4699933 (= res!1984117 (not (eq!1053 lt!1862510 (+!2178 lt!1862498 lt!1862530))))))

(declare-fun b!4699934 () Bool)

(declare-fun res!1984121 () Bool)

(assert (=> b!4699934 (=> (not res!1984121) (not e!2931834))))

(assert (=> b!4699934 (= res!1984121 ((_ is Cons!52522) (toList!5678 lm!2023)))))

(declare-fun b!4699935 () Bool)

(declare-fun res!1984123 () Bool)

(assert (=> b!4699935 (=> (not res!1984123) (not e!2931835))))

(declare-fun allKeysSameHashInMap!1808 (ListLongMap!4207 Hashable!6263) Bool)

(assert (=> b!4699935 (= res!1984123 (allKeysSameHashInMap!1808 lm!2023 hashF!1323))))

(declare-fun b!4699936 () Bool)

(declare-fun res!1984129 () Bool)

(assert (=> b!4699936 (=> res!1984129 e!2931841)))

(assert (=> b!4699936 (= res!1984129 (not (= (h!58798 oldBucket!34) lt!1862530)))))

(declare-fun tp_is_empty!30871 () Bool)

(declare-fun tp_is_empty!30869 () Bool)

(declare-fun e!2931832 () Bool)

(declare-fun tp!1346595 () Bool)

(declare-fun b!4699937 () Bool)

(assert (=> b!4699937 (= e!2931832 (and tp_is_empty!30869 tp_is_empty!30871 tp!1346595))))

(declare-fun b!4699938 () Bool)

(declare-fun res!1984133 () Bool)

(assert (=> b!4699938 (=> (not res!1984133) (not e!2931840))))

(assert (=> b!4699938 (= res!1984133 (noDuplicateKeys!1894 oldBucket!34))))

(declare-fun b!4699939 () Bool)

(declare-fun e!2931833 () Bool)

(declare-fun e!2931830 () Bool)

(assert (=> b!4699939 (= e!2931833 e!2931830)))

(declare-fun res!1984118 () Bool)

(assert (=> b!4699939 (=> res!1984118 e!2931830)))

(declare-fun lt!1862512 () List!52645)

(declare-fun lt!1862533 () List!52645)

(declare-fun removePairForKey!1489 (List!52645 K!13885) List!52645)

(assert (=> b!4699939 (= res!1984118 (not (= (removePairForKey!1489 lt!1862512 key!4653) lt!1862533)))))

(declare-fun tail!8708 (List!52645) List!52645)

(assert (=> b!4699939 (= lt!1862533 (tail!8708 newBucket!218))))

(assert (=> b!4699939 (= lt!1862512 (tail!8708 oldBucket!34))))

(declare-fun res!1984134 () Bool)

(assert (=> start!476556 (=> (not res!1984134) (not e!2931840))))

(assert (=> start!476556 (= res!1984134 (forall!11393 (toList!5678 lm!2023) lambda!209915))))

(assert (=> start!476556 e!2931840))

(declare-fun e!2931831 () Bool)

(declare-fun inv!67759 (ListLongMap!4207) Bool)

(assert (=> start!476556 (and (inv!67759 lm!2023) e!2931831)))

(assert (=> start!476556 tp_is_empty!30869))

(declare-fun e!2931839 () Bool)

(assert (=> start!476556 e!2931839))

(assert (=> start!476556 true))

(assert (=> start!476556 e!2931832))

(declare-fun b!4699940 () Bool)

(declare-fun e!2931842 () Bool)

(assert (=> b!4699940 (= e!2931842 e!2931838)))

(declare-fun res!1984124 () Bool)

(assert (=> b!4699940 (=> res!1984124 e!2931838)))

(assert (=> b!4699940 (= res!1984124 (not (= lt!1862503 lt!1862523)))))

(assert (=> b!4699940 (= lt!1862523 (+!2178 lt!1862499 (h!58798 oldBucket!34)))))

(declare-fun lt!1862504 () ListMap!5041)

(declare-fun -!698 (ListMap!5041 K!13885) ListMap!5041)

(assert (=> b!4699940 (= lt!1862503 (-!698 lt!1862504 key!4653))))

(declare-fun lt!1862531 () ListMap!5041)

(assert (=> b!4699940 (= lt!1862504 (+!2178 lt!1862531 (h!58798 oldBucket!34)))))

(declare-fun lt!1862507 () ListMap!5041)

(assert (=> b!4699940 (= lt!1862507 lt!1862521)))

(assert (=> b!4699940 (= lt!1862521 (+!2178 lt!1862499 (h!58798 oldBucket!34)))))

(assert (=> b!4699940 (= lt!1862507 (-!698 (+!2178 lt!1862531 (h!58798 oldBucket!34)) key!4653))))

(declare-fun lt!1862529 () Unit!125992)

(declare-fun addRemoveCommutativeForDiffKeys!99 (ListMap!5041 K!13885 V!14131 K!13885) Unit!125992)

(assert (=> b!4699940 (= lt!1862529 (addRemoveCommutativeForDiffKeys!99 lt!1862531 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34)) key!4653))))

(declare-fun b!4699941 () Bool)

(assert (=> b!4699941 (= e!2931836 e!2931833)))

(declare-fun res!1984119 () Bool)

(assert (=> b!4699941 (=> res!1984119 e!2931833)))

(declare-fun containsKey!3157 (List!52645 K!13885) Bool)

(assert (=> b!4699941 (= res!1984119 (not (containsKey!3157 (t!359853 oldBucket!34) key!4653)))))

(assert (=> b!4699941 (containsKey!3157 oldBucket!34 key!4653)))

(declare-fun lt!1862506 () Unit!125992)

(declare-fun lemmaGetPairDefinedThenContainsKey!246 (List!52645 K!13885 Hashable!6263) Unit!125992)

(assert (=> b!4699941 (= lt!1862506 (lemmaGetPairDefinedThenContainsKey!246 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1862525 () List!52645)

(declare-datatypes ((Option!12181 0))(
  ( (None!12180) (Some!12180 (v!46659 tuple2!53970)) )
))
(declare-fun isDefined!9436 (Option!12181) Bool)

(declare-fun getPair!498 (List!52645 K!13885) Option!12181)

(assert (=> b!4699941 (isDefined!9436 (getPair!498 lt!1862525 key!4653))))

(declare-fun lt!1862501 () tuple2!53972)

(declare-fun lt!1862505 () Unit!125992)

(declare-fun forallContained!3500 (List!52646 Int tuple2!53972) Unit!125992)

(assert (=> b!4699941 (= lt!1862505 (forallContained!3500 (toList!5678 lm!2023) lambda!209915 lt!1862501))))

(declare-fun contains!15792 (List!52646 tuple2!53972) Bool)

(assert (=> b!4699941 (contains!15792 (toList!5678 lm!2023) lt!1862501)))

(declare-fun lt!1862528 () (_ BitVec 64))

(assert (=> b!4699941 (= lt!1862501 (tuple2!53973 lt!1862528 lt!1862525))))

(declare-fun lt!1862527 () Unit!125992)

(declare-fun lemmaGetValueImpliesTupleContained!303 (ListLongMap!4207 (_ BitVec 64) List!52645) Unit!125992)

(assert (=> b!4699941 (= lt!1862527 (lemmaGetValueImpliesTupleContained!303 lm!2023 lt!1862528 lt!1862525))))

(declare-fun apply!12377 (ListLongMap!4207 (_ BitVec 64)) List!52645)

(assert (=> b!4699941 (= lt!1862525 (apply!12377 lm!2023 lt!1862528))))

(declare-fun contains!15793 (ListLongMap!4207 (_ BitVec 64)) Bool)

(assert (=> b!4699941 (contains!15793 lm!2023 lt!1862528)))

(declare-fun lt!1862524 () Unit!125992)

(declare-fun lemmaInGenMapThenLongMapContainsHash!704 (ListLongMap!4207 K!13885 Hashable!6263) Unit!125992)

(assert (=> b!4699941 (= lt!1862524 (lemmaInGenMapThenLongMapContainsHash!704 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1862520 () Unit!125992)

(declare-fun lemmaInGenMapThenGetPairDefined!294 (ListLongMap!4207 K!13885 Hashable!6263) Unit!125992)

(assert (=> b!4699941 (= lt!1862520 (lemmaInGenMapThenGetPairDefined!294 lm!2023 key!4653 hashF!1323))))

(declare-fun tp!1346597 () Bool)

(declare-fun b!4699942 () Bool)

(assert (=> b!4699942 (= e!2931839 (and tp_is_empty!30869 tp_is_empty!30871 tp!1346597))))

(declare-fun b!4699943 () Bool)

(assert (=> b!4699943 (= e!2931835 e!2931834)))

(declare-fun res!1984120 () Bool)

(assert (=> b!4699943 (=> (not res!1984120) (not e!2931834))))

(declare-fun lt!1862532 () tuple2!53972)

(declare-fun head!10051 (List!52646) tuple2!53972)

(assert (=> b!4699943 (= res!1984120 (= (head!10051 (toList!5678 lm!2023)) lt!1862532))))

(assert (=> b!4699943 (= lt!1862532 (tuple2!53973 hash!405 oldBucket!34))))

(declare-fun b!4699944 () Bool)

(assert (=> b!4699944 (= e!2931830 e!2931841)))

(declare-fun res!1984127 () Bool)

(assert (=> b!4699944 (=> res!1984127 e!2931841)))

(assert (=> b!4699944 (= res!1984127 (not (eq!1053 lt!1862510 (+!2178 lt!1862498 (h!58798 oldBucket!34)))))))

(assert (=> b!4699944 (= lt!1862498 (extractMap!1920 (Cons!52522 (tuple2!53973 hash!405 lt!1862512) (t!359854 (toList!5678 lm!2023)))))))

(assert (=> b!4699944 (= lt!1862510 (extractMap!1920 (Cons!52522 lt!1862532 (t!359854 (toList!5678 lm!2023)))))))

(assert (=> b!4699944 (eq!1053 (addToMapMapFromBucket!1326 (Cons!52521 lt!1862530 lt!1862533) lt!1862511) (+!2178 (addToMapMapFromBucket!1326 lt!1862533 lt!1862511) lt!1862530))))

(declare-fun lt!1862519 () Unit!125992)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!302 (tuple2!53970 List!52645 ListMap!5041) Unit!125992)

(assert (=> b!4699944 (= lt!1862519 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!302 lt!1862530 lt!1862533 lt!1862511))))

(declare-fun head!10052 (List!52645) tuple2!53970)

(assert (=> b!4699944 (= lt!1862530 (head!10052 newBucket!218))))

(declare-fun lt!1862518 () tuple2!53970)

(assert (=> b!4699944 (eq!1053 (addToMapMapFromBucket!1326 (Cons!52521 lt!1862518 lt!1862512) lt!1862511) (+!2178 (addToMapMapFromBucket!1326 lt!1862512 lt!1862511) lt!1862518))))

(declare-fun lt!1862515 () Unit!125992)

(assert (=> b!4699944 (= lt!1862515 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!302 lt!1862518 lt!1862512 lt!1862511))))

(assert (=> b!4699944 (= lt!1862518 (head!10052 oldBucket!34))))

(declare-fun contains!15794 (ListMap!5041 K!13885) Bool)

(assert (=> b!4699944 (contains!15794 lt!1862531 key!4653)))

(declare-fun lt!1862509 () List!52646)

(assert (=> b!4699944 (= lt!1862531 (extractMap!1920 lt!1862509))))

(declare-fun lt!1862526 () Unit!125992)

(declare-fun lt!1862500 () ListLongMap!4207)

(declare-fun lemmaListContainsThenExtractedMapContains!486 (ListLongMap!4207 K!13885 Hashable!6263) Unit!125992)

(assert (=> b!4699944 (= lt!1862526 (lemmaListContainsThenExtractedMapContains!486 lt!1862500 key!4653 hashF!1323))))

(assert (=> b!4699944 (= lt!1862500 (ListLongMap!4208 lt!1862509))))

(declare-fun lt!1862516 () tuple2!53972)

(assert (=> b!4699944 (= lt!1862509 (Cons!52522 lt!1862516 (t!359854 (toList!5678 lm!2023))))))

(assert (=> b!4699944 (= lt!1862516 (tuple2!53973 hash!405 (t!359853 oldBucket!34)))))

(declare-fun b!4699945 () Bool)

(declare-fun res!1984136 () Bool)

(assert (=> b!4699945 (=> res!1984136 e!2931838)))

(assert (=> b!4699945 (= res!1984136 (not (eq!1053 lt!1862504 lt!1862510)))))

(declare-fun b!4699946 () Bool)

(declare-fun e!2931837 () Bool)

(assert (=> b!4699946 (= e!2931840 e!2931837)))

(declare-fun res!1984137 () Bool)

(assert (=> b!4699946 (=> (not res!1984137) (not e!2931837))))

(assert (=> b!4699946 (= res!1984137 (contains!15794 lt!1862508 key!4653))))

(assert (=> b!4699946 (= lt!1862508 (extractMap!1920 (toList!5678 lm!2023)))))

(declare-fun b!4699947 () Bool)

(declare-fun tp!1346596 () Bool)

(assert (=> b!4699947 (= e!2931831 tp!1346596)))

(declare-fun b!4699948 () Bool)

(assert (=> b!4699948 (= e!2931837 e!2931835)))

(declare-fun res!1984125 () Bool)

(assert (=> b!4699948 (=> (not res!1984125) (not e!2931835))))

(assert (=> b!4699948 (= res!1984125 (= lt!1862528 hash!405))))

(declare-fun hash!4162 (Hashable!6263 K!13885) (_ BitVec 64))

(assert (=> b!4699948 (= lt!1862528 (hash!4162 hashF!1323 key!4653))))

(declare-fun b!4699949 () Bool)

(declare-fun res!1984122 () Bool)

(assert (=> b!4699949 (=> (not res!1984122) (not e!2931840))))

(assert (=> b!4699949 (= res!1984122 (= (removePairForKey!1489 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4699950 () Bool)

(declare-fun res!1984131 () Bool)

(assert (=> b!4699950 (=> res!1984131 e!2931830)))

(assert (=> b!4699950 (= res!1984131 (not (= (removePairForKey!1489 (t!359853 oldBucket!34) key!4653) lt!1862533)))))

(declare-fun b!4699951 () Bool)

(assert (=> b!4699951 (= e!2931841 e!2931842)))

(declare-fun res!1984130 () Bool)

(assert (=> b!4699951 (=> res!1984130 e!2931842)))

(assert (=> b!4699951 (= res!1984130 (not (eq!1053 lt!1862517 lt!1862499)))))

(assert (=> b!4699951 (= lt!1862499 (-!698 lt!1862531 key!4653))))

(assert (=> b!4699951 (= lt!1862517 (extractMap!1920 lt!1862514))))

(declare-fun lt!1862502 () tuple2!53972)

(assert (=> b!4699951 (= lt!1862514 (Cons!52522 lt!1862502 (t!359854 (toList!5678 lm!2023))))))

(declare-fun lt!1862534 () List!52646)

(assert (=> b!4699951 (eq!1053 (extractMap!1920 (Cons!52522 lt!1862502 lt!1862534)) (-!698 (extractMap!1920 (Cons!52522 lt!1862516 lt!1862534)) key!4653))))

(declare-fun tail!8709 (List!52646) List!52646)

(assert (=> b!4699951 (= lt!1862534 (tail!8709 lt!1862509))))

(assert (=> b!4699951 (= lt!1862502 (tuple2!53973 hash!405 lt!1862533))))

(declare-fun lt!1862513 () Unit!125992)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!68 (ListLongMap!4207 (_ BitVec 64) List!52645 List!52645 K!13885 Hashable!6263) Unit!125992)

(assert (=> b!4699951 (= lt!1862513 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!68 lt!1862500 hash!405 (t!359853 oldBucket!34) lt!1862533 key!4653 hashF!1323))))

(assert (= (and start!476556 res!1984134) b!4699938))

(assert (= (and b!4699938 res!1984133) b!4699927))

(assert (= (and b!4699927 res!1984126) b!4699949))

(assert (= (and b!4699949 res!1984122) b!4699928))

(assert (= (and b!4699928 res!1984116) b!4699946))

(assert (= (and b!4699946 res!1984137) b!4699948))

(assert (= (and b!4699948 res!1984125) b!4699931))

(assert (= (and b!4699931 res!1984128) b!4699935))

(assert (= (and b!4699935 res!1984123) b!4699943))

(assert (= (and b!4699943 res!1984120) b!4699934))

(assert (= (and b!4699934 res!1984121) b!4699929))

(assert (= (and b!4699929 (not res!1984135)) b!4699941))

(assert (= (and b!4699941 (not res!1984119)) b!4699939))

(assert (= (and b!4699939 (not res!1984118)) b!4699950))

(assert (= (and b!4699950 (not res!1984131)) b!4699944))

(assert (= (and b!4699944 (not res!1984127)) b!4699936))

(assert (= (and b!4699936 (not res!1984129)) b!4699933))

(assert (= (and b!4699933 (not res!1984117)) b!4699951))

(assert (= (and b!4699951 (not res!1984130)) b!4699940))

(assert (= (and b!4699940 (not res!1984124)) b!4699932))

(assert (= (and b!4699932 (not res!1984132)) b!4699945))

(assert (= (and b!4699945 (not res!1984136)) b!4699930))

(assert (= start!476556 b!4699947))

(assert (= (and start!476556 ((_ is Cons!52521) oldBucket!34)) b!4699942))

(assert (= (and start!476556 ((_ is Cons!52521) newBucket!218)) b!4699937))

(declare-fun m!5613513 () Bool)

(assert (=> b!4699948 m!5613513))

(declare-fun m!5613515 () Bool)

(assert (=> b!4699946 m!5613515))

(declare-fun m!5613517 () Bool)

(assert (=> b!4699946 m!5613517))

(declare-fun m!5613519 () Bool)

(assert (=> b!4699945 m!5613519))

(declare-fun m!5613521 () Bool)

(assert (=> b!4699932 m!5613521))

(declare-fun m!5613523 () Bool)

(assert (=> b!4699940 m!5613523))

(declare-fun m!5613525 () Bool)

(assert (=> b!4699940 m!5613525))

(declare-fun m!5613527 () Bool)

(assert (=> b!4699940 m!5613527))

(assert (=> b!4699940 m!5613523))

(declare-fun m!5613529 () Bool)

(assert (=> b!4699940 m!5613529))

(declare-fun m!5613531 () Bool)

(assert (=> b!4699940 m!5613531))

(declare-fun m!5613533 () Bool)

(assert (=> b!4699951 m!5613533))

(declare-fun m!5613535 () Bool)

(assert (=> b!4699951 m!5613535))

(declare-fun m!5613537 () Bool)

(assert (=> b!4699951 m!5613537))

(declare-fun m!5613539 () Bool)

(assert (=> b!4699951 m!5613539))

(assert (=> b!4699951 m!5613533))

(declare-fun m!5613541 () Bool)

(assert (=> b!4699951 m!5613541))

(declare-fun m!5613543 () Bool)

(assert (=> b!4699951 m!5613543))

(declare-fun m!5613545 () Bool)

(assert (=> b!4699951 m!5613545))

(assert (=> b!4699951 m!5613539))

(assert (=> b!4699951 m!5613541))

(declare-fun m!5613547 () Bool)

(assert (=> b!4699951 m!5613547))

(declare-fun m!5613549 () Bool)

(assert (=> b!4699951 m!5613549))

(declare-fun m!5613551 () Bool)

(assert (=> b!4699930 m!5613551))

(declare-fun m!5613553 () Bool)

(assert (=> b!4699930 m!5613553))

(assert (=> b!4699930 m!5613553))

(declare-fun m!5613555 () Bool)

(assert (=> b!4699930 m!5613555))

(declare-fun m!5613557 () Bool)

(assert (=> b!4699930 m!5613557))

(declare-fun m!5613559 () Bool)

(assert (=> start!476556 m!5613559))

(declare-fun m!5613561 () Bool)

(assert (=> start!476556 m!5613561))

(declare-fun m!5613563 () Bool)

(assert (=> b!4699935 m!5613563))

(declare-fun m!5613565 () Bool)

(assert (=> b!4699931 m!5613565))

(declare-fun m!5613567 () Bool)

(assert (=> b!4699944 m!5613567))

(declare-fun m!5613569 () Bool)

(assert (=> b!4699944 m!5613569))

(declare-fun m!5613571 () Bool)

(assert (=> b!4699944 m!5613571))

(declare-fun m!5613573 () Bool)

(assert (=> b!4699944 m!5613573))

(declare-fun m!5613575 () Bool)

(assert (=> b!4699944 m!5613575))

(declare-fun m!5613577 () Bool)

(assert (=> b!4699944 m!5613577))

(assert (=> b!4699944 m!5613571))

(declare-fun m!5613579 () Bool)

(assert (=> b!4699944 m!5613579))

(declare-fun m!5613581 () Bool)

(assert (=> b!4699944 m!5613581))

(assert (=> b!4699944 m!5613577))

(declare-fun m!5613583 () Bool)

(assert (=> b!4699944 m!5613583))

(declare-fun m!5613585 () Bool)

(assert (=> b!4699944 m!5613585))

(declare-fun m!5613587 () Bool)

(assert (=> b!4699944 m!5613587))

(assert (=> b!4699944 m!5613585))

(assert (=> b!4699944 m!5613583))

(assert (=> b!4699944 m!5613587))

(declare-fun m!5613589 () Bool)

(assert (=> b!4699944 m!5613589))

(declare-fun m!5613591 () Bool)

(assert (=> b!4699944 m!5613591))

(declare-fun m!5613593 () Bool)

(assert (=> b!4699944 m!5613593))

(declare-fun m!5613595 () Bool)

(assert (=> b!4699944 m!5613595))

(declare-fun m!5613597 () Bool)

(assert (=> b!4699944 m!5613597))

(assert (=> b!4699944 m!5613581))

(declare-fun m!5613599 () Bool)

(assert (=> b!4699944 m!5613599))

(declare-fun m!5613601 () Bool)

(assert (=> b!4699944 m!5613601))

(assert (=> b!4699944 m!5613569))

(declare-fun m!5613603 () Bool)

(assert (=> b!4699944 m!5613603))

(declare-fun m!5613605 () Bool)

(assert (=> b!4699928 m!5613605))

(declare-fun m!5613607 () Bool)

(assert (=> b!4699950 m!5613607))

(declare-fun m!5613609 () Bool)

(assert (=> b!4699943 m!5613609))

(declare-fun m!5613611 () Bool)

(assert (=> b!4699939 m!5613611))

(declare-fun m!5613613 () Bool)

(assert (=> b!4699939 m!5613613))

(declare-fun m!5613615 () Bool)

(assert (=> b!4699939 m!5613615))

(declare-fun m!5613617 () Bool)

(assert (=> b!4699927 m!5613617))

(declare-fun m!5613619 () Bool)

(assert (=> b!4699929 m!5613619))

(declare-fun m!5613621 () Bool)

(assert (=> b!4699929 m!5613621))

(declare-fun m!5613623 () Bool)

(assert (=> b!4699929 m!5613623))

(declare-fun m!5613625 () Bool)

(assert (=> b!4699933 m!5613625))

(assert (=> b!4699933 m!5613625))

(declare-fun m!5613627 () Bool)

(assert (=> b!4699933 m!5613627))

(declare-fun m!5613629 () Bool)

(assert (=> b!4699949 m!5613629))

(declare-fun m!5613631 () Bool)

(assert (=> b!4699938 m!5613631))

(declare-fun m!5613633 () Bool)

(assert (=> b!4699941 m!5613633))

(declare-fun m!5613635 () Bool)

(assert (=> b!4699941 m!5613635))

(declare-fun m!5613637 () Bool)

(assert (=> b!4699941 m!5613637))

(assert (=> b!4699941 m!5613637))

(declare-fun m!5613639 () Bool)

(assert (=> b!4699941 m!5613639))

(declare-fun m!5613641 () Bool)

(assert (=> b!4699941 m!5613641))

(declare-fun m!5613643 () Bool)

(assert (=> b!4699941 m!5613643))

(declare-fun m!5613645 () Bool)

(assert (=> b!4699941 m!5613645))

(declare-fun m!5613647 () Bool)

(assert (=> b!4699941 m!5613647))

(declare-fun m!5613649 () Bool)

(assert (=> b!4699941 m!5613649))

(declare-fun m!5613651 () Bool)

(assert (=> b!4699941 m!5613651))

(declare-fun m!5613653 () Bool)

(assert (=> b!4699941 m!5613653))

(declare-fun m!5613655 () Bool)

(assert (=> b!4699941 m!5613655))

(check-sat (not b!4699951) (not b!4699933) (not b!4699928) (not b!4699941) (not b!4699929) (not b!4699930) (not b!4699950) tp_is_empty!30871 (not b!4699927) (not b!4699931) tp_is_empty!30869 (not b!4699939) (not b!4699932) (not b!4699949) (not b!4699943) (not b!4699945) (not b!4699942) (not b!4699947) (not start!476556) (not b!4699937) (not b!4699935) (not b!4699938) (not b!4699944) (not b!4699940) (not b!4699948) (not b!4699946))
(check-sat)
(get-model)

(declare-fun b!4700011 () Bool)

(assert (=> b!4700011 true))

(declare-fun bs!1094314 () Bool)

(declare-fun b!4700014 () Bool)

(assert (= bs!1094314 (and b!4700014 b!4700011)))

(declare-fun lambda!209989 () Int)

(declare-fun lambda!209988 () Int)

(assert (=> bs!1094314 (= lambda!209989 lambda!209988)))

(assert (=> b!4700014 true))

(declare-fun lambda!209990 () Int)

(declare-fun lt!1862702 () ListMap!5041)

(assert (=> bs!1094314 (= (= lt!1862702 lt!1862511) (= lambda!209990 lambda!209988))))

(assert (=> b!4700014 (= (= lt!1862702 lt!1862511) (= lambda!209990 lambda!209989))))

(assert (=> b!4700014 true))

(declare-fun bs!1094315 () Bool)

(declare-fun d!1494685 () Bool)

(assert (= bs!1094315 (and d!1494685 b!4700011)))

(declare-fun lt!1862705 () ListMap!5041)

(declare-fun lambda!209991 () Int)

(assert (=> bs!1094315 (= (= lt!1862705 lt!1862511) (= lambda!209991 lambda!209988))))

(declare-fun bs!1094316 () Bool)

(assert (= bs!1094316 (and d!1494685 b!4700014)))

(assert (=> bs!1094316 (= (= lt!1862705 lt!1862511) (= lambda!209991 lambda!209989))))

(assert (=> bs!1094316 (= (= lt!1862705 lt!1862702) (= lambda!209991 lambda!209990))))

(assert (=> d!1494685 true))

(declare-fun e!2931880 () Bool)

(assert (=> d!1494685 e!2931880))

(declare-fun res!1984174 () Bool)

(assert (=> d!1494685 (=> (not res!1984174) (not e!2931880))))

(declare-fun forall!11395 (List!52645 Int) Bool)

(assert (=> d!1494685 (= res!1984174 (forall!11395 (_2!30280 (h!58799 (toList!5678 lm!2023))) lambda!209991))))

(declare-fun e!2931881 () ListMap!5041)

(assert (=> d!1494685 (= lt!1862705 e!2931881)))

(declare-fun c!803397 () Bool)

(assert (=> d!1494685 (= c!803397 ((_ is Nil!52521) (_2!30280 (h!58799 (toList!5678 lm!2023)))))))

(assert (=> d!1494685 (noDuplicateKeys!1894 (_2!30280 (h!58799 (toList!5678 lm!2023))))))

(assert (=> d!1494685 (= (addToMapMapFromBucket!1326 (_2!30280 (h!58799 (toList!5678 lm!2023))) lt!1862511) lt!1862705)))

(declare-fun b!4700010 () Bool)

(declare-fun invariantList!1442 (List!52645) Bool)

(assert (=> b!4700010 (= e!2931880 (invariantList!1442 (toList!5677 lt!1862705)))))

(declare-fun call!328577 () Bool)

(declare-fun lt!1862700 () ListMap!5041)

(declare-fun bm!328571 () Bool)

(assert (=> bm!328571 (= call!328577 (forall!11395 (ite c!803397 (toList!5677 lt!1862511) (toList!5677 lt!1862700)) (ite c!803397 lambda!209988 lambda!209990)))))

(assert (=> b!4700011 (= e!2931881 lt!1862511)))

(declare-fun lt!1862685 () Unit!125992)

(declare-fun call!328576 () Unit!125992)

(assert (=> b!4700011 (= lt!1862685 call!328576)))

(declare-fun call!328578 () Bool)

(assert (=> b!4700011 call!328578))

(declare-fun lt!1862697 () Unit!125992)

(assert (=> b!4700011 (= lt!1862697 lt!1862685)))

(assert (=> b!4700011 call!328577))

(declare-fun lt!1862696 () Unit!125992)

(declare-fun Unit!126005 () Unit!125992)

(assert (=> b!4700011 (= lt!1862696 Unit!126005)))

(declare-fun b!4700012 () Bool)

(declare-fun res!1984172 () Bool)

(assert (=> b!4700012 (=> (not res!1984172) (not e!2931880))))

(assert (=> b!4700012 (= res!1984172 (forall!11395 (toList!5677 lt!1862511) lambda!209991))))

(declare-fun bm!328572 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!730 (ListMap!5041) Unit!125992)

(assert (=> bm!328572 (= call!328576 (lemmaContainsAllItsOwnKeys!730 lt!1862511))))

(declare-fun b!4700013 () Bool)

(declare-fun e!2931879 () Bool)

(assert (=> b!4700013 (= e!2931879 (forall!11395 (toList!5677 lt!1862511) lambda!209990))))

(assert (=> b!4700014 (= e!2931881 lt!1862702)))

(assert (=> b!4700014 (= lt!1862700 (+!2178 lt!1862511 (h!58798 (_2!30280 (h!58799 (toList!5678 lm!2023))))))))

(assert (=> b!4700014 (= lt!1862702 (addToMapMapFromBucket!1326 (t!359853 (_2!30280 (h!58799 (toList!5678 lm!2023)))) (+!2178 lt!1862511 (h!58798 (_2!30280 (h!58799 (toList!5678 lm!2023)))))))))

(declare-fun lt!1862693 () Unit!125992)

(assert (=> b!4700014 (= lt!1862693 call!328576)))

(assert (=> b!4700014 (forall!11395 (toList!5677 lt!1862511) lambda!209989)))

(declare-fun lt!1862703 () Unit!125992)

(assert (=> b!4700014 (= lt!1862703 lt!1862693)))

(assert (=> b!4700014 call!328577))

(declare-fun lt!1862695 () Unit!125992)

(declare-fun Unit!126006 () Unit!125992)

(assert (=> b!4700014 (= lt!1862695 Unit!126006)))

(assert (=> b!4700014 (forall!11395 (t!359853 (_2!30280 (h!58799 (toList!5678 lm!2023)))) lambda!209990)))

(declare-fun lt!1862688 () Unit!125992)

(declare-fun Unit!126007 () Unit!125992)

(assert (=> b!4700014 (= lt!1862688 Unit!126007)))

(declare-fun lt!1862689 () Unit!125992)

(declare-fun Unit!126008 () Unit!125992)

(assert (=> b!4700014 (= lt!1862689 Unit!126008)))

(declare-fun lt!1862687 () Unit!125992)

(declare-fun forallContained!3502 (List!52645 Int tuple2!53970) Unit!125992)

(assert (=> b!4700014 (= lt!1862687 (forallContained!3502 (toList!5677 lt!1862700) lambda!209990 (h!58798 (_2!30280 (h!58799 (toList!5678 lm!2023))))))))

(assert (=> b!4700014 (contains!15794 lt!1862700 (_1!30279 (h!58798 (_2!30280 (h!58799 (toList!5678 lm!2023))))))))

(declare-fun lt!1862691 () Unit!125992)

(declare-fun Unit!126009 () Unit!125992)

(assert (=> b!4700014 (= lt!1862691 Unit!126009)))

(assert (=> b!4700014 (contains!15794 lt!1862702 (_1!30279 (h!58798 (_2!30280 (h!58799 (toList!5678 lm!2023))))))))

(declare-fun lt!1862692 () Unit!125992)

(declare-fun Unit!126010 () Unit!125992)

(assert (=> b!4700014 (= lt!1862692 Unit!126010)))

(assert (=> b!4700014 (forall!11395 (_2!30280 (h!58799 (toList!5678 lm!2023))) lambda!209990)))

(declare-fun lt!1862698 () Unit!125992)

(declare-fun Unit!126011 () Unit!125992)

(assert (=> b!4700014 (= lt!1862698 Unit!126011)))

(assert (=> b!4700014 (forall!11395 (toList!5677 lt!1862700) lambda!209990)))

(declare-fun lt!1862704 () Unit!125992)

(declare-fun Unit!126012 () Unit!125992)

(assert (=> b!4700014 (= lt!1862704 Unit!126012)))

(declare-fun lt!1862699 () Unit!125992)

(declare-fun Unit!126013 () Unit!125992)

(assert (=> b!4700014 (= lt!1862699 Unit!126013)))

(declare-fun lt!1862701 () Unit!125992)

(declare-fun addForallContainsKeyThenBeforeAdding!729 (ListMap!5041 ListMap!5041 K!13885 V!14131) Unit!125992)

(assert (=> b!4700014 (= lt!1862701 (addForallContainsKeyThenBeforeAdding!729 lt!1862511 lt!1862702 (_1!30279 (h!58798 (_2!30280 (h!58799 (toList!5678 lm!2023))))) (_2!30279 (h!58798 (_2!30280 (h!58799 (toList!5678 lm!2023)))))))))

(assert (=> b!4700014 (forall!11395 (toList!5677 lt!1862511) lambda!209990)))

(declare-fun lt!1862694 () Unit!125992)

(assert (=> b!4700014 (= lt!1862694 lt!1862701)))

(assert (=> b!4700014 call!328578))

(declare-fun lt!1862690 () Unit!125992)

(declare-fun Unit!126016 () Unit!125992)

(assert (=> b!4700014 (= lt!1862690 Unit!126016)))

(declare-fun res!1984173 () Bool)

(assert (=> b!4700014 (= res!1984173 (forall!11395 (_2!30280 (h!58799 (toList!5678 lm!2023))) lambda!209990))))

(assert (=> b!4700014 (=> (not res!1984173) (not e!2931879))))

(assert (=> b!4700014 e!2931879))

(declare-fun lt!1862686 () Unit!125992)

(declare-fun Unit!126018 () Unit!125992)

(assert (=> b!4700014 (= lt!1862686 Unit!126018)))

(declare-fun bm!328573 () Bool)

(assert (=> bm!328573 (= call!328578 (forall!11395 (toList!5677 lt!1862511) (ite c!803397 lambda!209988 lambda!209990)))))

(assert (= (and d!1494685 c!803397) b!4700011))

(assert (= (and d!1494685 (not c!803397)) b!4700014))

(assert (= (and b!4700014 res!1984173) b!4700013))

(assert (= (or b!4700011 b!4700014) bm!328572))

(assert (= (or b!4700011 b!4700014) bm!328573))

(assert (= (or b!4700011 b!4700014) bm!328571))

(assert (= (and d!1494685 res!1984174) b!4700012))

(assert (= (and b!4700012 res!1984172) b!4700010))

(declare-fun m!5613815 () Bool)

(assert (=> bm!328572 m!5613815))

(declare-fun m!5613817 () Bool)

(assert (=> b!4700012 m!5613817))

(declare-fun m!5613819 () Bool)

(assert (=> b!4700010 m!5613819))

(declare-fun m!5613821 () Bool)

(assert (=> bm!328571 m!5613821))

(declare-fun m!5613823 () Bool)

(assert (=> b!4700013 m!5613823))

(declare-fun m!5613825 () Bool)

(assert (=> b!4700014 m!5613825))

(declare-fun m!5613827 () Bool)

(assert (=> b!4700014 m!5613827))

(declare-fun m!5613829 () Bool)

(assert (=> b!4700014 m!5613829))

(declare-fun m!5613831 () Bool)

(assert (=> b!4700014 m!5613831))

(declare-fun m!5613833 () Bool)

(assert (=> b!4700014 m!5613833))

(assert (=> b!4700014 m!5613833))

(assert (=> b!4700014 m!5613823))

(declare-fun m!5613835 () Bool)

(assert (=> b!4700014 m!5613835))

(declare-fun m!5613837 () Bool)

(assert (=> b!4700014 m!5613837))

(declare-fun m!5613839 () Bool)

(assert (=> b!4700014 m!5613839))

(assert (=> b!4700014 m!5613829))

(declare-fun m!5613841 () Bool)

(assert (=> b!4700014 m!5613841))

(declare-fun m!5613843 () Bool)

(assert (=> b!4700014 m!5613843))

(declare-fun m!5613845 () Bool)

(assert (=> bm!328573 m!5613845))

(declare-fun m!5613847 () Bool)

(assert (=> d!1494685 m!5613847))

(declare-fun m!5613849 () Bool)

(assert (=> d!1494685 m!5613849))

(assert (=> b!4699929 d!1494685))

(declare-fun bs!1094345 () Bool)

(declare-fun d!1494717 () Bool)

(assert (= bs!1094345 (and d!1494717 start!476556)))

(declare-fun lambda!210001 () Int)

(assert (=> bs!1094345 (= lambda!210001 lambda!209915)))

(declare-fun lt!1862736 () ListMap!5041)

(assert (=> d!1494717 (invariantList!1442 (toList!5677 lt!1862736))))

(declare-fun e!2931888 () ListMap!5041)

(assert (=> d!1494717 (= lt!1862736 e!2931888)))

(declare-fun c!803401 () Bool)

(assert (=> d!1494717 (= c!803401 ((_ is Cons!52522) (t!359854 (toList!5678 lm!2023))))))

(assert (=> d!1494717 (forall!11393 (t!359854 (toList!5678 lm!2023)) lambda!210001)))

(assert (=> d!1494717 (= (extractMap!1920 (t!359854 (toList!5678 lm!2023))) lt!1862736)))

(declare-fun b!4700028 () Bool)

(assert (=> b!4700028 (= e!2931888 (addToMapMapFromBucket!1326 (_2!30280 (h!58799 (t!359854 (toList!5678 lm!2023)))) (extractMap!1920 (t!359854 (t!359854 (toList!5678 lm!2023))))))))

(declare-fun b!4700029 () Bool)

(assert (=> b!4700029 (= e!2931888 (ListMap!5042 Nil!52521))))

(assert (= (and d!1494717 c!803401) b!4700028))

(assert (= (and d!1494717 (not c!803401)) b!4700029))

(declare-fun m!5613909 () Bool)

(assert (=> d!1494717 m!5613909))

(declare-fun m!5613911 () Bool)

(assert (=> d!1494717 m!5613911))

(declare-fun m!5613913 () Bool)

(assert (=> b!4700028 m!5613913))

(assert (=> b!4700028 m!5613913))

(declare-fun m!5613915 () Bool)

(assert (=> b!4700028 m!5613915))

(assert (=> b!4699929 d!1494717))

(declare-fun d!1494729 () Bool)

(assert (=> d!1494729 (= (tail!8707 lm!2023) (ListLongMap!4208 (tail!8709 (toList!5678 lm!2023))))))

(declare-fun bs!1094346 () Bool)

(assert (= bs!1094346 d!1494729))

(declare-fun m!5613917 () Bool)

(assert (=> bs!1094346 m!5613917))

(assert (=> b!4699929 d!1494729))

(declare-fun d!1494731 () Bool)

(declare-fun e!2931891 () Bool)

(assert (=> d!1494731 e!2931891))

(declare-fun res!1984182 () Bool)

(assert (=> d!1494731 (=> (not res!1984182) (not e!2931891))))

(declare-fun lt!1862743 () ListMap!5041)

(assert (=> d!1494731 (= res!1984182 (not (contains!15794 lt!1862743 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!363 (List!52645 K!13885) List!52645)

(assert (=> d!1494731 (= lt!1862743 (ListMap!5042 (removePresrvNoDuplicatedKeys!363 (toList!5677 (+!2178 lt!1862531 (h!58798 oldBucket!34))) key!4653)))))

(assert (=> d!1494731 (= (-!698 (+!2178 lt!1862531 (h!58798 oldBucket!34)) key!4653) lt!1862743)))

(declare-fun b!4700032 () Bool)

(declare-datatypes ((List!52648 0))(
  ( (Nil!52524) (Cons!52524 (h!58803 K!13885) (t!359858 List!52648)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9255 (List!52648) (InoxSet K!13885))

(declare-fun keys!18785 (ListMap!5041) List!52648)

(assert (=> b!4700032 (= e!2931891 (= ((_ map and) (content!9255 (keys!18785 (+!2178 lt!1862531 (h!58798 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13885 Bool)) false) key!4653 true))) (content!9255 (keys!18785 lt!1862743))))))

(assert (= (and d!1494731 res!1984182) b!4700032))

(declare-fun m!5613923 () Bool)

(assert (=> d!1494731 m!5613923))

(declare-fun m!5613927 () Bool)

(assert (=> d!1494731 m!5613927))

(declare-fun m!5613929 () Bool)

(assert (=> b!4700032 m!5613929))

(declare-fun m!5613931 () Bool)

(assert (=> b!4700032 m!5613931))

(declare-fun m!5613933 () Bool)

(assert (=> b!4700032 m!5613933))

(assert (=> b!4700032 m!5613523))

(assert (=> b!4700032 m!5613929))

(assert (=> b!4700032 m!5613933))

(declare-fun m!5613935 () Bool)

(assert (=> b!4700032 m!5613935))

(declare-fun m!5613937 () Bool)

(assert (=> b!4700032 m!5613937))

(assert (=> b!4699940 d!1494731))

(declare-fun d!1494737 () Bool)

(declare-fun e!2931895 () Bool)

(assert (=> d!1494737 e!2931895))

(declare-fun res!1984186 () Bool)

(assert (=> d!1494737 (=> (not res!1984186) (not e!2931895))))

(declare-fun lt!1862765 () ListMap!5041)

(assert (=> d!1494737 (= res!1984186 (not (contains!15794 lt!1862765 key!4653)))))

(assert (=> d!1494737 (= lt!1862765 (ListMap!5042 (removePresrvNoDuplicatedKeys!363 (toList!5677 lt!1862504) key!4653)))))

(assert (=> d!1494737 (= (-!698 lt!1862504 key!4653) lt!1862765)))

(declare-fun b!4700038 () Bool)

(assert (=> b!4700038 (= e!2931895 (= ((_ map and) (content!9255 (keys!18785 lt!1862504)) ((_ map not) (store ((as const (Array K!13885 Bool)) false) key!4653 true))) (content!9255 (keys!18785 lt!1862765))))))

(assert (= (and d!1494737 res!1984186) b!4700038))

(declare-fun m!5613939 () Bool)

(assert (=> d!1494737 m!5613939))

(declare-fun m!5613941 () Bool)

(assert (=> d!1494737 m!5613941))

(declare-fun m!5613943 () Bool)

(assert (=> b!4700038 m!5613943))

(declare-fun m!5613945 () Bool)

(assert (=> b!4700038 m!5613945))

(declare-fun m!5613947 () Bool)

(assert (=> b!4700038 m!5613947))

(assert (=> b!4700038 m!5613943))

(assert (=> b!4700038 m!5613947))

(declare-fun m!5613949 () Bool)

(assert (=> b!4700038 m!5613949))

(assert (=> b!4700038 m!5613937))

(assert (=> b!4699940 d!1494737))

(declare-fun d!1494739 () Bool)

(declare-fun e!2931900 () Bool)

(assert (=> d!1494739 e!2931900))

(declare-fun res!1984194 () Bool)

(assert (=> d!1494739 (=> (not res!1984194) (not e!2931900))))

(declare-fun lt!1862779 () ListMap!5041)

(assert (=> d!1494739 (= res!1984194 (contains!15794 lt!1862779 (_1!30279 (h!58798 oldBucket!34))))))

(declare-fun lt!1862780 () List!52645)

(assert (=> d!1494739 (= lt!1862779 (ListMap!5042 lt!1862780))))

(declare-fun lt!1862782 () Unit!125992)

(declare-fun lt!1862781 () Unit!125992)

(assert (=> d!1494739 (= lt!1862782 lt!1862781)))

(declare-datatypes ((Option!12183 0))(
  ( (None!12182) (Some!12182 (v!46665 V!14131)) )
))
(declare-fun getValueByKey!1843 (List!52645 K!13885) Option!12183)

(assert (=> d!1494739 (= (getValueByKey!1843 lt!1862780 (_1!30279 (h!58798 oldBucket!34))) (Some!12182 (_2!30279 (h!58798 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1032 (List!52645 K!13885 V!14131) Unit!125992)

(assert (=> d!1494739 (= lt!1862781 (lemmaContainsTupThenGetReturnValue!1032 lt!1862780 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!540 (List!52645 K!13885 V!14131) List!52645)

(assert (=> d!1494739 (= lt!1862780 (insertNoDuplicatedKeys!540 (toList!5677 lt!1862499) (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494739 (= (+!2178 lt!1862499 (h!58798 oldBucket!34)) lt!1862779)))

(declare-fun b!4700047 () Bool)

(declare-fun res!1984193 () Bool)

(assert (=> b!4700047 (=> (not res!1984193) (not e!2931900))))

(assert (=> b!4700047 (= res!1984193 (= (getValueByKey!1843 (toList!5677 lt!1862779) (_1!30279 (h!58798 oldBucket!34))) (Some!12182 (_2!30279 (h!58798 oldBucket!34)))))))

(declare-fun b!4700048 () Bool)

(declare-fun contains!15796 (List!52645 tuple2!53970) Bool)

(assert (=> b!4700048 (= e!2931900 (contains!15796 (toList!5677 lt!1862779) (h!58798 oldBucket!34)))))

(assert (= (and d!1494739 res!1984194) b!4700047))

(assert (= (and b!4700047 res!1984193) b!4700048))

(declare-fun m!5614001 () Bool)

(assert (=> d!1494739 m!5614001))

(declare-fun m!5614005 () Bool)

(assert (=> d!1494739 m!5614005))

(declare-fun m!5614009 () Bool)

(assert (=> d!1494739 m!5614009))

(declare-fun m!5614013 () Bool)

(assert (=> d!1494739 m!5614013))

(declare-fun m!5614015 () Bool)

(assert (=> b!4700047 m!5614015))

(declare-fun m!5614017 () Bool)

(assert (=> b!4700048 m!5614017))

(assert (=> b!4699940 d!1494739))

(declare-fun d!1494749 () Bool)

(declare-fun e!2931901 () Bool)

(assert (=> d!1494749 e!2931901))

(declare-fun res!1984196 () Bool)

(assert (=> d!1494749 (=> (not res!1984196) (not e!2931901))))

(declare-fun lt!1862783 () ListMap!5041)

(assert (=> d!1494749 (= res!1984196 (contains!15794 lt!1862783 (_1!30279 (h!58798 oldBucket!34))))))

(declare-fun lt!1862784 () List!52645)

(assert (=> d!1494749 (= lt!1862783 (ListMap!5042 lt!1862784))))

(declare-fun lt!1862786 () Unit!125992)

(declare-fun lt!1862785 () Unit!125992)

(assert (=> d!1494749 (= lt!1862786 lt!1862785)))

(assert (=> d!1494749 (= (getValueByKey!1843 lt!1862784 (_1!30279 (h!58798 oldBucket!34))) (Some!12182 (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494749 (= lt!1862785 (lemmaContainsTupThenGetReturnValue!1032 lt!1862784 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494749 (= lt!1862784 (insertNoDuplicatedKeys!540 (toList!5677 lt!1862531) (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494749 (= (+!2178 lt!1862531 (h!58798 oldBucket!34)) lt!1862783)))

(declare-fun b!4700049 () Bool)

(declare-fun res!1984195 () Bool)

(assert (=> b!4700049 (=> (not res!1984195) (not e!2931901))))

(assert (=> b!4700049 (= res!1984195 (= (getValueByKey!1843 (toList!5677 lt!1862783) (_1!30279 (h!58798 oldBucket!34))) (Some!12182 (_2!30279 (h!58798 oldBucket!34)))))))

(declare-fun b!4700050 () Bool)

(assert (=> b!4700050 (= e!2931901 (contains!15796 (toList!5677 lt!1862783) (h!58798 oldBucket!34)))))

(assert (= (and d!1494749 res!1984196) b!4700049))

(assert (= (and b!4700049 res!1984195) b!4700050))

(declare-fun m!5614023 () Bool)

(assert (=> d!1494749 m!5614023))

(declare-fun m!5614025 () Bool)

(assert (=> d!1494749 m!5614025))

(declare-fun m!5614027 () Bool)

(assert (=> d!1494749 m!5614027))

(declare-fun m!5614029 () Bool)

(assert (=> d!1494749 m!5614029))

(declare-fun m!5614031 () Bool)

(assert (=> b!4700049 m!5614031))

(declare-fun m!5614033 () Bool)

(assert (=> b!4700050 m!5614033))

(assert (=> b!4699940 d!1494749))

(declare-fun d!1494753 () Bool)

(assert (=> d!1494753 (= (-!698 (+!2178 lt!1862531 (tuple2!53971 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34)))) key!4653) (+!2178 (-!698 lt!1862531 key!4653) (tuple2!53971 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34)))))))

(declare-fun lt!1862791 () Unit!125992)

(declare-fun choose!32852 (ListMap!5041 K!13885 V!14131 K!13885) Unit!125992)

(assert (=> d!1494753 (= lt!1862791 (choose!32852 lt!1862531 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34)) key!4653))))

(assert (=> d!1494753 (not (= (_1!30279 (h!58798 oldBucket!34)) key!4653))))

(assert (=> d!1494753 (= (addRemoveCommutativeForDiffKeys!99 lt!1862531 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34)) key!4653) lt!1862791)))

(declare-fun bs!1094402 () Bool)

(assert (= bs!1094402 d!1494753))

(assert (=> bs!1094402 m!5613535))

(declare-fun m!5614051 () Bool)

(assert (=> bs!1094402 m!5614051))

(assert (=> bs!1094402 m!5614051))

(declare-fun m!5614053 () Bool)

(assert (=> bs!1094402 m!5614053))

(assert (=> bs!1094402 m!5613535))

(declare-fun m!5614055 () Bool)

(assert (=> bs!1094402 m!5614055))

(declare-fun m!5614057 () Bool)

(assert (=> bs!1094402 m!5614057))

(assert (=> b!4699940 d!1494753))

(declare-fun b!4700063 () Bool)

(declare-fun e!2931908 () List!52645)

(assert (=> b!4700063 (= e!2931908 (t!359853 lt!1862512))))

(declare-fun b!4700066 () Bool)

(declare-fun e!2931909 () List!52645)

(assert (=> b!4700066 (= e!2931909 Nil!52521)))

(declare-fun b!4700065 () Bool)

(assert (=> b!4700065 (= e!2931909 (Cons!52521 (h!58798 lt!1862512) (removePairForKey!1489 (t!359853 lt!1862512) key!4653)))))

(declare-fun d!1494759 () Bool)

(declare-fun lt!1862794 () List!52645)

(assert (=> d!1494759 (not (containsKey!3157 lt!1862794 key!4653))))

(assert (=> d!1494759 (= lt!1862794 e!2931908)))

(declare-fun c!803411 () Bool)

(assert (=> d!1494759 (= c!803411 (and ((_ is Cons!52521) lt!1862512) (= (_1!30279 (h!58798 lt!1862512)) key!4653)))))

(assert (=> d!1494759 (noDuplicateKeys!1894 lt!1862512)))

(assert (=> d!1494759 (= (removePairForKey!1489 lt!1862512 key!4653) lt!1862794)))

(declare-fun b!4700064 () Bool)

(assert (=> b!4700064 (= e!2931908 e!2931909)))

(declare-fun c!803410 () Bool)

(assert (=> b!4700064 (= c!803410 ((_ is Cons!52521) lt!1862512))))

(assert (= (and d!1494759 c!803411) b!4700063))

(assert (= (and d!1494759 (not c!803411)) b!4700064))

(assert (= (and b!4700064 c!803410) b!4700065))

(assert (= (and b!4700064 (not c!803410)) b!4700066))

(declare-fun m!5614059 () Bool)

(assert (=> b!4700065 m!5614059))

(declare-fun m!5614061 () Bool)

(assert (=> d!1494759 m!5614061))

(declare-fun m!5614063 () Bool)

(assert (=> d!1494759 m!5614063))

(assert (=> b!4699939 d!1494759))

(declare-fun d!1494761 () Bool)

(assert (=> d!1494761 (= (tail!8708 newBucket!218) (t!359853 newBucket!218))))

(assert (=> b!4699939 d!1494761))

(declare-fun d!1494763 () Bool)

(assert (=> d!1494763 (= (tail!8708 oldBucket!34) (t!359853 oldBucket!34))))

(assert (=> b!4699939 d!1494763))

(declare-fun b!4700067 () Bool)

(declare-fun e!2931910 () List!52645)

(assert (=> b!4700067 (= e!2931910 (t!359853 (t!359853 oldBucket!34)))))

(declare-fun b!4700070 () Bool)

(declare-fun e!2931911 () List!52645)

(assert (=> b!4700070 (= e!2931911 Nil!52521)))

(declare-fun b!4700069 () Bool)

(assert (=> b!4700069 (= e!2931911 (Cons!52521 (h!58798 (t!359853 oldBucket!34)) (removePairForKey!1489 (t!359853 (t!359853 oldBucket!34)) key!4653)))))

(declare-fun d!1494765 () Bool)

(declare-fun lt!1862795 () List!52645)

(assert (=> d!1494765 (not (containsKey!3157 lt!1862795 key!4653))))

(assert (=> d!1494765 (= lt!1862795 e!2931910)))

(declare-fun c!803413 () Bool)

(assert (=> d!1494765 (= c!803413 (and ((_ is Cons!52521) (t!359853 oldBucket!34)) (= (_1!30279 (h!58798 (t!359853 oldBucket!34))) key!4653)))))

(assert (=> d!1494765 (noDuplicateKeys!1894 (t!359853 oldBucket!34))))

(assert (=> d!1494765 (= (removePairForKey!1489 (t!359853 oldBucket!34) key!4653) lt!1862795)))

(declare-fun b!4700068 () Bool)

(assert (=> b!4700068 (= e!2931910 e!2931911)))

(declare-fun c!803412 () Bool)

(assert (=> b!4700068 (= c!803412 ((_ is Cons!52521) (t!359853 oldBucket!34)))))

(assert (= (and d!1494765 c!803413) b!4700067))

(assert (= (and d!1494765 (not c!803413)) b!4700068))

(assert (= (and b!4700068 c!803412) b!4700069))

(assert (= (and b!4700068 (not c!803412)) b!4700070))

(declare-fun m!5614065 () Bool)

(assert (=> b!4700069 m!5614065))

(declare-fun m!5614067 () Bool)

(assert (=> d!1494765 m!5614067))

(declare-fun m!5614069 () Bool)

(assert (=> d!1494765 m!5614069))

(assert (=> b!4699950 d!1494765))

(declare-fun d!1494767 () Bool)

(declare-fun isEmpty!29125 (Option!12181) Bool)

(assert (=> d!1494767 (= (isDefined!9436 (getPair!498 lt!1862525 key!4653)) (not (isEmpty!29125 (getPair!498 lt!1862525 key!4653))))))

(declare-fun bs!1094403 () Bool)

(assert (= bs!1094403 d!1494767))

(assert (=> bs!1094403 m!5613637))

(declare-fun m!5614071 () Bool)

(assert (=> bs!1094403 m!5614071))

(assert (=> b!4699941 d!1494767))

(declare-fun bs!1094404 () Bool)

(declare-fun d!1494769 () Bool)

(assert (= bs!1094404 (and d!1494769 start!476556)))

(declare-fun lambda!210011 () Int)

(assert (=> bs!1094404 (= lambda!210011 lambda!209915)))

(declare-fun bs!1094405 () Bool)

(assert (= bs!1094405 (and d!1494769 d!1494717)))

(assert (=> bs!1094405 (= lambda!210011 lambda!210001)))

(assert (=> d!1494769 (contains!15793 lm!2023 (hash!4162 hashF!1323 key!4653))))

(declare-fun lt!1862814 () Unit!125992)

(declare-fun choose!32853 (ListLongMap!4207 K!13885 Hashable!6263) Unit!125992)

(assert (=> d!1494769 (= lt!1862814 (choose!32853 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494769 (forall!11393 (toList!5678 lm!2023) lambda!210011)))

(assert (=> d!1494769 (= (lemmaInGenMapThenLongMapContainsHash!704 lm!2023 key!4653 hashF!1323) lt!1862814)))

(declare-fun bs!1094406 () Bool)

(assert (= bs!1094406 d!1494769))

(assert (=> bs!1094406 m!5613513))

(assert (=> bs!1094406 m!5613513))

(declare-fun m!5614073 () Bool)

(assert (=> bs!1094406 m!5614073))

(declare-fun m!5614075 () Bool)

(assert (=> bs!1094406 m!5614075))

(declare-fun m!5614077 () Bool)

(assert (=> bs!1094406 m!5614077))

(assert (=> b!4699941 d!1494769))

(declare-fun bs!1094446 () Bool)

(declare-fun d!1494771 () Bool)

(assert (= bs!1094446 (and d!1494771 start!476556)))

(declare-fun lambda!210025 () Int)

(assert (=> bs!1094446 (= lambda!210025 lambda!209915)))

(declare-fun bs!1094447 () Bool)

(assert (= bs!1094447 (and d!1494771 d!1494717)))

(assert (=> bs!1094447 (= lambda!210025 lambda!210001)))

(declare-fun bs!1094448 () Bool)

(assert (= bs!1094448 (and d!1494771 d!1494769)))

(assert (=> bs!1094448 (= lambda!210025 lambda!210011)))

(declare-fun b!4700151 () Bool)

(declare-fun e!2931959 () Bool)

(assert (=> b!4700151 (= e!2931959 (isDefined!9436 (getPair!498 (apply!12377 lm!2023 (hash!4162 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1862866 () Unit!125992)

(assert (=> b!4700151 (= lt!1862866 (forallContained!3500 (toList!5678 lm!2023) lambda!210025 (tuple2!53973 (hash!4162 hashF!1323 key!4653) (apply!12377 lm!2023 (hash!4162 hashF!1323 key!4653)))))))

(declare-fun lt!1862862 () Unit!125992)

(declare-fun lt!1862861 () Unit!125992)

(assert (=> b!4700151 (= lt!1862862 lt!1862861)))

(declare-fun lt!1862859 () (_ BitVec 64))

(declare-fun lt!1862863 () List!52645)

(assert (=> b!4700151 (contains!15792 (toList!5678 lm!2023) (tuple2!53973 lt!1862859 lt!1862863))))

(assert (=> b!4700151 (= lt!1862861 (lemmaGetValueImpliesTupleContained!303 lm!2023 lt!1862859 lt!1862863))))

(declare-fun e!2931958 () Bool)

(assert (=> b!4700151 e!2931958))

(declare-fun res!1984228 () Bool)

(assert (=> b!4700151 (=> (not res!1984228) (not e!2931958))))

(assert (=> b!4700151 (= res!1984228 (contains!15793 lm!2023 lt!1862859))))

(assert (=> b!4700151 (= lt!1862863 (apply!12377 lm!2023 (hash!4162 hashF!1323 key!4653)))))

(assert (=> b!4700151 (= lt!1862859 (hash!4162 hashF!1323 key!4653))))

(declare-fun lt!1862860 () Unit!125992)

(declare-fun lt!1862865 () Unit!125992)

(assert (=> b!4700151 (= lt!1862860 lt!1862865)))

(assert (=> b!4700151 (contains!15793 lm!2023 (hash!4162 hashF!1323 key!4653))))

(assert (=> b!4700151 (= lt!1862865 (lemmaInGenMapThenLongMapContainsHash!704 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494771 e!2931959))

(declare-fun res!1984230 () Bool)

(assert (=> d!1494771 (=> (not res!1984230) (not e!2931959))))

(assert (=> d!1494771 (= res!1984230 (forall!11393 (toList!5678 lm!2023) lambda!210025))))

(declare-fun lt!1862864 () Unit!125992)

(declare-fun choose!32854 (ListLongMap!4207 K!13885 Hashable!6263) Unit!125992)

(assert (=> d!1494771 (= lt!1862864 (choose!32854 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494771 (forall!11393 (toList!5678 lm!2023) lambda!210025)))

(assert (=> d!1494771 (= (lemmaInGenMapThenGetPairDefined!294 lm!2023 key!4653 hashF!1323) lt!1862864)))

(declare-fun b!4700150 () Bool)

(declare-fun res!1984229 () Bool)

(assert (=> b!4700150 (=> (not res!1984229) (not e!2931959))))

(assert (=> b!4700150 (= res!1984229 (contains!15794 (extractMap!1920 (toList!5678 lm!2023)) key!4653))))

(declare-fun b!4700152 () Bool)

(declare-datatypes ((Option!12184 0))(
  ( (None!12183) (Some!12183 (v!46666 List!52645)) )
))
(declare-fun getValueByKey!1844 (List!52646 (_ BitVec 64)) Option!12184)

(assert (=> b!4700152 (= e!2931958 (= (getValueByKey!1844 (toList!5678 lm!2023) lt!1862859) (Some!12183 lt!1862863)))))

(declare-fun b!4700149 () Bool)

(declare-fun res!1984227 () Bool)

(assert (=> b!4700149 (=> (not res!1984227) (not e!2931959))))

(assert (=> b!4700149 (= res!1984227 (allKeysSameHashInMap!1808 lm!2023 hashF!1323))))

(assert (= (and d!1494771 res!1984230) b!4700149))

(assert (= (and b!4700149 res!1984227) b!4700150))

(assert (= (and b!4700150 res!1984229) b!4700151))

(assert (= (and b!4700151 res!1984228) b!4700152))

(assert (=> b!4700149 m!5613563))

(declare-fun m!5614177 () Bool)

(assert (=> b!4700152 m!5614177))

(assert (=> b!4700150 m!5613517))

(assert (=> b!4700150 m!5613517))

(declare-fun m!5614179 () Bool)

(assert (=> b!4700150 m!5614179))

(declare-fun m!5614181 () Bool)

(assert (=> b!4700151 m!5614181))

(declare-fun m!5614183 () Bool)

(assert (=> b!4700151 m!5614183))

(declare-fun m!5614185 () Bool)

(assert (=> b!4700151 m!5614185))

(assert (=> b!4700151 m!5613651))

(declare-fun m!5614187 () Bool)

(assert (=> b!4700151 m!5614187))

(assert (=> b!4700151 m!5613513))

(declare-fun m!5614189 () Bool)

(assert (=> b!4700151 m!5614189))

(assert (=> b!4700151 m!5614183))

(declare-fun m!5614191 () Bool)

(assert (=> b!4700151 m!5614191))

(declare-fun m!5614193 () Bool)

(assert (=> b!4700151 m!5614193))

(assert (=> b!4700151 m!5613513))

(assert (=> b!4700151 m!5614073))

(assert (=> b!4700151 m!5613513))

(assert (=> b!4700151 m!5614189))

(declare-fun m!5614195 () Bool)

(assert (=> d!1494771 m!5614195))

(declare-fun m!5614197 () Bool)

(assert (=> d!1494771 m!5614197))

(assert (=> d!1494771 m!5614195))

(assert (=> b!4699941 d!1494771))

(declare-fun d!1494807 () Bool)

(declare-fun res!1984235 () Bool)

(declare-fun e!2931964 () Bool)

(assert (=> d!1494807 (=> res!1984235 e!2931964)))

(assert (=> d!1494807 (= res!1984235 (and ((_ is Cons!52521) (t!359853 oldBucket!34)) (= (_1!30279 (h!58798 (t!359853 oldBucket!34))) key!4653)))))

(assert (=> d!1494807 (= (containsKey!3157 (t!359853 oldBucket!34) key!4653) e!2931964)))

(declare-fun b!4700157 () Bool)

(declare-fun e!2931965 () Bool)

(assert (=> b!4700157 (= e!2931964 e!2931965)))

(declare-fun res!1984236 () Bool)

(assert (=> b!4700157 (=> (not res!1984236) (not e!2931965))))

(assert (=> b!4700157 (= res!1984236 ((_ is Cons!52521) (t!359853 oldBucket!34)))))

(declare-fun b!4700158 () Bool)

(assert (=> b!4700158 (= e!2931965 (containsKey!3157 (t!359853 (t!359853 oldBucket!34)) key!4653))))

(assert (= (and d!1494807 (not res!1984235)) b!4700157))

(assert (= (and b!4700157 res!1984236) b!4700158))

(declare-fun m!5614199 () Bool)

(assert (=> b!4700158 m!5614199))

(assert (=> b!4699941 d!1494807))

(declare-fun d!1494809 () Bool)

(declare-fun res!1984237 () Bool)

(declare-fun e!2931966 () Bool)

(assert (=> d!1494809 (=> res!1984237 e!2931966)))

(assert (=> d!1494809 (= res!1984237 (and ((_ is Cons!52521) oldBucket!34) (= (_1!30279 (h!58798 oldBucket!34)) key!4653)))))

(assert (=> d!1494809 (= (containsKey!3157 oldBucket!34 key!4653) e!2931966)))

(declare-fun b!4700159 () Bool)

(declare-fun e!2931967 () Bool)

(assert (=> b!4700159 (= e!2931966 e!2931967)))

(declare-fun res!1984238 () Bool)

(assert (=> b!4700159 (=> (not res!1984238) (not e!2931967))))

(assert (=> b!4700159 (= res!1984238 ((_ is Cons!52521) oldBucket!34))))

(declare-fun b!4700160 () Bool)

(assert (=> b!4700160 (= e!2931967 (containsKey!3157 (t!359853 oldBucket!34) key!4653))))

(assert (= (and d!1494809 (not res!1984237)) b!4700159))

(assert (= (and b!4700159 res!1984238) b!4700160))

(assert (=> b!4700160 m!5613645))

(assert (=> b!4699941 d!1494809))

(declare-fun d!1494811 () Bool)

(declare-fun lt!1862869 () Bool)

(declare-fun content!9256 (List!52646) (InoxSet tuple2!53972))

(assert (=> d!1494811 (= lt!1862869 (select (content!9256 (toList!5678 lm!2023)) lt!1862501))))

(declare-fun e!2931973 () Bool)

(assert (=> d!1494811 (= lt!1862869 e!2931973)))

(declare-fun res!1984244 () Bool)

(assert (=> d!1494811 (=> (not res!1984244) (not e!2931973))))

(assert (=> d!1494811 (= res!1984244 ((_ is Cons!52522) (toList!5678 lm!2023)))))

(assert (=> d!1494811 (= (contains!15792 (toList!5678 lm!2023) lt!1862501) lt!1862869)))

(declare-fun b!4700165 () Bool)

(declare-fun e!2931972 () Bool)

(assert (=> b!4700165 (= e!2931973 e!2931972)))

(declare-fun res!1984243 () Bool)

(assert (=> b!4700165 (=> res!1984243 e!2931972)))

(assert (=> b!4700165 (= res!1984243 (= (h!58799 (toList!5678 lm!2023)) lt!1862501))))

(declare-fun b!4700166 () Bool)

(assert (=> b!4700166 (= e!2931972 (contains!15792 (t!359854 (toList!5678 lm!2023)) lt!1862501))))

(assert (= (and d!1494811 res!1984244) b!4700165))

(assert (= (and b!4700165 (not res!1984243)) b!4700166))

(declare-fun m!5614201 () Bool)

(assert (=> d!1494811 m!5614201))

(declare-fun m!5614203 () Bool)

(assert (=> d!1494811 m!5614203))

(declare-fun m!5614205 () Bool)

(assert (=> b!4700166 m!5614205))

(assert (=> b!4699941 d!1494811))

(declare-fun d!1494813 () Bool)

(declare-fun e!2931979 () Bool)

(assert (=> d!1494813 e!2931979))

(declare-fun res!1984247 () Bool)

(assert (=> d!1494813 (=> res!1984247 e!2931979)))

(declare-fun lt!1862879 () Bool)

(assert (=> d!1494813 (= res!1984247 (not lt!1862879))))

(declare-fun lt!1862880 () Bool)

(assert (=> d!1494813 (= lt!1862879 lt!1862880)))

(declare-fun lt!1862878 () Unit!125992)

(declare-fun e!2931978 () Unit!125992)

(assert (=> d!1494813 (= lt!1862878 e!2931978)))

(declare-fun c!803437 () Bool)

(assert (=> d!1494813 (= c!803437 lt!1862880)))

(declare-fun containsKey!3158 (List!52646 (_ BitVec 64)) Bool)

(assert (=> d!1494813 (= lt!1862880 (containsKey!3158 (toList!5678 lm!2023) lt!1862528))))

(assert (=> d!1494813 (= (contains!15793 lm!2023 lt!1862528) lt!1862879)))

(declare-fun b!4700173 () Bool)

(declare-fun lt!1862881 () Unit!125992)

(assert (=> b!4700173 (= e!2931978 lt!1862881)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1734 (List!52646 (_ BitVec 64)) Unit!125992)

(assert (=> b!4700173 (= lt!1862881 (lemmaContainsKeyImpliesGetValueByKeyDefined!1734 (toList!5678 lm!2023) lt!1862528))))

(declare-fun isDefined!9437 (Option!12184) Bool)

(assert (=> b!4700173 (isDefined!9437 (getValueByKey!1844 (toList!5678 lm!2023) lt!1862528))))

(declare-fun b!4700174 () Bool)

(declare-fun Unit!126038 () Unit!125992)

(assert (=> b!4700174 (= e!2931978 Unit!126038)))

(declare-fun b!4700175 () Bool)

(assert (=> b!4700175 (= e!2931979 (isDefined!9437 (getValueByKey!1844 (toList!5678 lm!2023) lt!1862528)))))

(assert (= (and d!1494813 c!803437) b!4700173))

(assert (= (and d!1494813 (not c!803437)) b!4700174))

(assert (= (and d!1494813 (not res!1984247)) b!4700175))

(declare-fun m!5614207 () Bool)

(assert (=> d!1494813 m!5614207))

(declare-fun m!5614209 () Bool)

(assert (=> b!4700173 m!5614209))

(declare-fun m!5614211 () Bool)

(assert (=> b!4700173 m!5614211))

(assert (=> b!4700173 m!5614211))

(declare-fun m!5614213 () Bool)

(assert (=> b!4700173 m!5614213))

(assert (=> b!4700175 m!5614211))

(assert (=> b!4700175 m!5614211))

(assert (=> b!4700175 m!5614213))

(assert (=> b!4699941 d!1494813))

(declare-fun b!4700192 () Bool)

(declare-fun e!2931994 () Option!12181)

(declare-fun e!2931993 () Option!12181)

(assert (=> b!4700192 (= e!2931994 e!2931993)))

(declare-fun c!803442 () Bool)

(assert (=> b!4700192 (= c!803442 ((_ is Cons!52521) lt!1862525))))

(declare-fun b!4700193 () Bool)

(declare-fun e!2931991 () Bool)

(declare-fun lt!1862884 () Option!12181)

(declare-fun get!17575 (Option!12181) tuple2!53970)

(assert (=> b!4700193 (= e!2931991 (contains!15796 lt!1862525 (get!17575 lt!1862884)))))

(declare-fun b!4700194 () Bool)

(declare-fun e!2931992 () Bool)

(assert (=> b!4700194 (= e!2931992 (not (containsKey!3157 lt!1862525 key!4653)))))

(declare-fun b!4700195 () Bool)

(declare-fun e!2931990 () Bool)

(assert (=> b!4700195 (= e!2931990 e!2931991)))

(declare-fun res!1984256 () Bool)

(assert (=> b!4700195 (=> (not res!1984256) (not e!2931991))))

(assert (=> b!4700195 (= res!1984256 (isDefined!9436 lt!1862884))))

(declare-fun b!4700197 () Bool)

(assert (=> b!4700197 (= e!2931993 None!12180)))

(declare-fun b!4700198 () Bool)

(declare-fun res!1984259 () Bool)

(assert (=> b!4700198 (=> (not res!1984259) (not e!2931991))))

(assert (=> b!4700198 (= res!1984259 (= (_1!30279 (get!17575 lt!1862884)) key!4653))))

(declare-fun b!4700199 () Bool)

(assert (=> b!4700199 (= e!2931994 (Some!12180 (h!58798 lt!1862525)))))

(declare-fun b!4700196 () Bool)

(assert (=> b!4700196 (= e!2931993 (getPair!498 (t!359853 lt!1862525) key!4653))))

(declare-fun d!1494815 () Bool)

(assert (=> d!1494815 e!2931990))

(declare-fun res!1984257 () Bool)

(assert (=> d!1494815 (=> res!1984257 e!2931990)))

(assert (=> d!1494815 (= res!1984257 e!2931992)))

(declare-fun res!1984258 () Bool)

(assert (=> d!1494815 (=> (not res!1984258) (not e!2931992))))

(assert (=> d!1494815 (= res!1984258 (isEmpty!29125 lt!1862884))))

(assert (=> d!1494815 (= lt!1862884 e!2931994)))

(declare-fun c!803443 () Bool)

(assert (=> d!1494815 (= c!803443 (and ((_ is Cons!52521) lt!1862525) (= (_1!30279 (h!58798 lt!1862525)) key!4653)))))

(assert (=> d!1494815 (noDuplicateKeys!1894 lt!1862525)))

(assert (=> d!1494815 (= (getPair!498 lt!1862525 key!4653) lt!1862884)))

(assert (= (and d!1494815 c!803443) b!4700199))

(assert (= (and d!1494815 (not c!803443)) b!4700192))

(assert (= (and b!4700192 c!803442) b!4700196))

(assert (= (and b!4700192 (not c!803442)) b!4700197))

(assert (= (and d!1494815 res!1984258) b!4700194))

(assert (= (and d!1494815 (not res!1984257)) b!4700195))

(assert (= (and b!4700195 res!1984256) b!4700198))

(assert (= (and b!4700198 res!1984259) b!4700193))

(declare-fun m!5614215 () Bool)

(assert (=> b!4700194 m!5614215))

(declare-fun m!5614217 () Bool)

(assert (=> b!4700196 m!5614217))

(declare-fun m!5614219 () Bool)

(assert (=> b!4700198 m!5614219))

(declare-fun m!5614221 () Bool)

(assert (=> b!4700195 m!5614221))

(declare-fun m!5614223 () Bool)

(assert (=> d!1494815 m!5614223))

(declare-fun m!5614225 () Bool)

(assert (=> d!1494815 m!5614225))

(assert (=> b!4700193 m!5614219))

(assert (=> b!4700193 m!5614219))

(declare-fun m!5614227 () Bool)

(assert (=> b!4700193 m!5614227))

(assert (=> b!4699941 d!1494815))

(declare-fun d!1494817 () Bool)

(assert (=> d!1494817 (contains!15792 (toList!5678 lm!2023) (tuple2!53973 lt!1862528 lt!1862525))))

(declare-fun lt!1862887 () Unit!125992)

(declare-fun choose!32856 (ListLongMap!4207 (_ BitVec 64) List!52645) Unit!125992)

(assert (=> d!1494817 (= lt!1862887 (choose!32856 lm!2023 lt!1862528 lt!1862525))))

(assert (=> d!1494817 (contains!15793 lm!2023 lt!1862528)))

(assert (=> d!1494817 (= (lemmaGetValueImpliesTupleContained!303 lm!2023 lt!1862528 lt!1862525) lt!1862887)))

(declare-fun bs!1094449 () Bool)

(assert (= bs!1094449 d!1494817))

(declare-fun m!5614229 () Bool)

(assert (=> bs!1094449 m!5614229))

(declare-fun m!5614231 () Bool)

(assert (=> bs!1094449 m!5614231))

(assert (=> bs!1094449 m!5613635))

(assert (=> b!4699941 d!1494817))

(declare-fun d!1494819 () Bool)

(declare-fun dynLambda!21744 (Int tuple2!53972) Bool)

(assert (=> d!1494819 (dynLambda!21744 lambda!209915 lt!1862501)))

(declare-fun lt!1862906 () Unit!125992)

(declare-fun choose!32857 (List!52646 Int tuple2!53972) Unit!125992)

(assert (=> d!1494819 (= lt!1862906 (choose!32857 (toList!5678 lm!2023) lambda!209915 lt!1862501))))

(declare-fun e!2932001 () Bool)

(assert (=> d!1494819 e!2932001))

(declare-fun res!1984270 () Bool)

(assert (=> d!1494819 (=> (not res!1984270) (not e!2932001))))

(assert (=> d!1494819 (= res!1984270 (forall!11393 (toList!5678 lm!2023) lambda!209915))))

(assert (=> d!1494819 (= (forallContained!3500 (toList!5678 lm!2023) lambda!209915 lt!1862501) lt!1862906)))

(declare-fun b!4700211 () Bool)

(assert (=> b!4700211 (= e!2932001 (contains!15792 (toList!5678 lm!2023) lt!1862501))))

(assert (= (and d!1494819 res!1984270) b!4700211))

(declare-fun b_lambda!177337 () Bool)

(assert (=> (not b_lambda!177337) (not d!1494819)))

(declare-fun m!5614233 () Bool)

(assert (=> d!1494819 m!5614233))

(declare-fun m!5614235 () Bool)

(assert (=> d!1494819 m!5614235))

(assert (=> d!1494819 m!5613559))

(assert (=> b!4700211 m!5613641))

(assert (=> b!4699941 d!1494819))

(declare-fun d!1494821 () Bool)

(declare-fun get!17576 (Option!12184) List!52645)

(assert (=> d!1494821 (= (apply!12377 lm!2023 lt!1862528) (get!17576 (getValueByKey!1844 (toList!5678 lm!2023) lt!1862528)))))

(declare-fun bs!1094450 () Bool)

(assert (= bs!1094450 d!1494821))

(assert (=> bs!1094450 m!5614211))

(assert (=> bs!1094450 m!5614211))

(declare-fun m!5614237 () Bool)

(assert (=> bs!1094450 m!5614237))

(assert (=> b!4699941 d!1494821))

(declare-fun d!1494823 () Bool)

(assert (=> d!1494823 (containsKey!3157 oldBucket!34 key!4653)))

(declare-fun lt!1862909 () Unit!125992)

(declare-fun choose!32858 (List!52645 K!13885 Hashable!6263) Unit!125992)

(assert (=> d!1494823 (= lt!1862909 (choose!32858 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1494823 (noDuplicateKeys!1894 oldBucket!34)))

(assert (=> d!1494823 (= (lemmaGetPairDefinedThenContainsKey!246 oldBucket!34 key!4653 hashF!1323) lt!1862909)))

(declare-fun bs!1094451 () Bool)

(assert (= bs!1094451 d!1494823))

(assert (=> bs!1094451 m!5613647))

(declare-fun m!5614239 () Bool)

(assert (=> bs!1094451 m!5614239))

(assert (=> bs!1094451 m!5613631))

(assert (=> b!4699941 d!1494823))

(declare-fun bs!1094454 () Bool)

(declare-fun d!1494825 () Bool)

(assert (= bs!1094454 (and d!1494825 start!476556)))

(declare-fun lambda!210033 () Int)

(assert (=> bs!1094454 (= lambda!210033 lambda!209915)))

(declare-fun bs!1094456 () Bool)

(assert (= bs!1094456 (and d!1494825 d!1494717)))

(assert (=> bs!1094456 (= lambda!210033 lambda!210001)))

(declare-fun bs!1094458 () Bool)

(assert (= bs!1094458 (and d!1494825 d!1494769)))

(assert (=> bs!1094458 (= lambda!210033 lambda!210011)))

(declare-fun bs!1094460 () Bool)

(assert (= bs!1094460 (and d!1494825 d!1494771)))

(assert (=> bs!1094460 (= lambda!210033 lambda!210025)))

(declare-fun lt!1862918 () ListMap!5041)

(assert (=> d!1494825 (invariantList!1442 (toList!5677 lt!1862918))))

(declare-fun e!2932004 () ListMap!5041)

(assert (=> d!1494825 (= lt!1862918 e!2932004)))

(declare-fun c!803444 () Bool)

(assert (=> d!1494825 (= c!803444 ((_ is Cons!52522) (Cons!52522 lt!1862502 lt!1862534)))))

(assert (=> d!1494825 (forall!11393 (Cons!52522 lt!1862502 lt!1862534) lambda!210033)))

(assert (=> d!1494825 (= (extractMap!1920 (Cons!52522 lt!1862502 lt!1862534)) lt!1862918)))

(declare-fun b!4700216 () Bool)

(assert (=> b!4700216 (= e!2932004 (addToMapMapFromBucket!1326 (_2!30280 (h!58799 (Cons!52522 lt!1862502 lt!1862534))) (extractMap!1920 (t!359854 (Cons!52522 lt!1862502 lt!1862534)))))))

(declare-fun b!4700217 () Bool)

(assert (=> b!4700217 (= e!2932004 (ListMap!5042 Nil!52521))))

(assert (= (and d!1494825 c!803444) b!4700216))

(assert (= (and d!1494825 (not c!803444)) b!4700217))

(declare-fun m!5614241 () Bool)

(assert (=> d!1494825 m!5614241))

(declare-fun m!5614243 () Bool)

(assert (=> d!1494825 m!5614243))

(declare-fun m!5614245 () Bool)

(assert (=> b!4700216 m!5614245))

(assert (=> b!4700216 m!5614245))

(declare-fun m!5614247 () Bool)

(assert (=> b!4700216 m!5614247))

(assert (=> b!4699951 d!1494825))

(declare-fun d!1494827 () Bool)

(declare-fun e!2932005 () Bool)

(assert (=> d!1494827 e!2932005))

(declare-fun res!1984275 () Bool)

(assert (=> d!1494827 (=> (not res!1984275) (not e!2932005))))

(declare-fun lt!1862919 () ListMap!5041)

(assert (=> d!1494827 (= res!1984275 (not (contains!15794 lt!1862919 key!4653)))))

(assert (=> d!1494827 (= lt!1862919 (ListMap!5042 (removePresrvNoDuplicatedKeys!363 (toList!5677 (extractMap!1920 (Cons!52522 lt!1862516 lt!1862534))) key!4653)))))

(assert (=> d!1494827 (= (-!698 (extractMap!1920 (Cons!52522 lt!1862516 lt!1862534)) key!4653) lt!1862919)))

(declare-fun b!4700218 () Bool)

(assert (=> b!4700218 (= e!2932005 (= ((_ map and) (content!9255 (keys!18785 (extractMap!1920 (Cons!52522 lt!1862516 lt!1862534)))) ((_ map not) (store ((as const (Array K!13885 Bool)) false) key!4653 true))) (content!9255 (keys!18785 lt!1862919))))))

(assert (= (and d!1494827 res!1984275) b!4700218))

(declare-fun m!5614249 () Bool)

(assert (=> d!1494827 m!5614249))

(declare-fun m!5614251 () Bool)

(assert (=> d!1494827 m!5614251))

(declare-fun m!5614253 () Bool)

(assert (=> b!4700218 m!5614253))

(declare-fun m!5614255 () Bool)

(assert (=> b!4700218 m!5614255))

(declare-fun m!5614257 () Bool)

(assert (=> b!4700218 m!5614257))

(assert (=> b!4700218 m!5613539))

(assert (=> b!4700218 m!5614253))

(assert (=> b!4700218 m!5614257))

(declare-fun m!5614259 () Bool)

(assert (=> b!4700218 m!5614259))

(assert (=> b!4700218 m!5613937))

(assert (=> b!4699951 d!1494827))

(declare-fun bs!1094467 () Bool)

(declare-fun d!1494829 () Bool)

(assert (= bs!1094467 (and d!1494829 d!1494717)))

(declare-fun lambda!210034 () Int)

(assert (=> bs!1094467 (= lambda!210034 lambda!210001)))

(declare-fun bs!1094468 () Bool)

(assert (= bs!1094468 (and d!1494829 d!1494825)))

(assert (=> bs!1094468 (= lambda!210034 lambda!210033)))

(declare-fun bs!1094469 () Bool)

(assert (= bs!1094469 (and d!1494829 d!1494769)))

(assert (=> bs!1094469 (= lambda!210034 lambda!210011)))

(declare-fun bs!1094470 () Bool)

(assert (= bs!1094470 (and d!1494829 d!1494771)))

(assert (=> bs!1094470 (= lambda!210034 lambda!210025)))

(declare-fun bs!1094471 () Bool)

(assert (= bs!1094471 (and d!1494829 start!476556)))

(assert (=> bs!1094471 (= lambda!210034 lambda!209915)))

(declare-fun lt!1862920 () ListMap!5041)

(assert (=> d!1494829 (invariantList!1442 (toList!5677 lt!1862920))))

(declare-fun e!2932006 () ListMap!5041)

(assert (=> d!1494829 (= lt!1862920 e!2932006)))

(declare-fun c!803445 () Bool)

(assert (=> d!1494829 (= c!803445 ((_ is Cons!52522) lt!1862514))))

(assert (=> d!1494829 (forall!11393 lt!1862514 lambda!210034)))

(assert (=> d!1494829 (= (extractMap!1920 lt!1862514) lt!1862920)))

(declare-fun b!4700219 () Bool)

(assert (=> b!4700219 (= e!2932006 (addToMapMapFromBucket!1326 (_2!30280 (h!58799 lt!1862514)) (extractMap!1920 (t!359854 lt!1862514))))))

(declare-fun b!4700220 () Bool)

(assert (=> b!4700220 (= e!2932006 (ListMap!5042 Nil!52521))))

(assert (= (and d!1494829 c!803445) b!4700219))

(assert (= (and d!1494829 (not c!803445)) b!4700220))

(declare-fun m!5614275 () Bool)

(assert (=> d!1494829 m!5614275))

(declare-fun m!5614277 () Bool)

(assert (=> d!1494829 m!5614277))

(declare-fun m!5614279 () Bool)

(assert (=> b!4700219 m!5614279))

(assert (=> b!4700219 m!5614279))

(declare-fun m!5614285 () Bool)

(assert (=> b!4700219 m!5614285))

(assert (=> b!4699951 d!1494829))

(declare-fun bs!1094472 () Bool)

(declare-fun d!1494831 () Bool)

(assert (= bs!1094472 (and d!1494831 d!1494717)))

(declare-fun lambda!210035 () Int)

(assert (=> bs!1094472 (= lambda!210035 lambda!210001)))

(declare-fun bs!1094473 () Bool)

(assert (= bs!1094473 (and d!1494831 d!1494829)))

(assert (=> bs!1094473 (= lambda!210035 lambda!210034)))

(declare-fun bs!1094474 () Bool)

(assert (= bs!1094474 (and d!1494831 d!1494825)))

(assert (=> bs!1094474 (= lambda!210035 lambda!210033)))

(declare-fun bs!1094475 () Bool)

(assert (= bs!1094475 (and d!1494831 d!1494769)))

(assert (=> bs!1094475 (= lambda!210035 lambda!210011)))

(declare-fun bs!1094476 () Bool)

(assert (= bs!1094476 (and d!1494831 d!1494771)))

(assert (=> bs!1094476 (= lambda!210035 lambda!210025)))

(declare-fun bs!1094477 () Bool)

(assert (= bs!1094477 (and d!1494831 start!476556)))

(assert (=> bs!1094477 (= lambda!210035 lambda!209915)))

(declare-fun lt!1862921 () ListMap!5041)

(assert (=> d!1494831 (invariantList!1442 (toList!5677 lt!1862921))))

(declare-fun e!2932007 () ListMap!5041)

(assert (=> d!1494831 (= lt!1862921 e!2932007)))

(declare-fun c!803446 () Bool)

(assert (=> d!1494831 (= c!803446 ((_ is Cons!52522) (Cons!52522 lt!1862516 lt!1862534)))))

(assert (=> d!1494831 (forall!11393 (Cons!52522 lt!1862516 lt!1862534) lambda!210035)))

(assert (=> d!1494831 (= (extractMap!1920 (Cons!52522 lt!1862516 lt!1862534)) lt!1862921)))

(declare-fun b!4700221 () Bool)

(assert (=> b!4700221 (= e!2932007 (addToMapMapFromBucket!1326 (_2!30280 (h!58799 (Cons!52522 lt!1862516 lt!1862534))) (extractMap!1920 (t!359854 (Cons!52522 lt!1862516 lt!1862534)))))))

(declare-fun b!4700222 () Bool)

(assert (=> b!4700222 (= e!2932007 (ListMap!5042 Nil!52521))))

(assert (= (and d!1494831 c!803446) b!4700221))

(assert (= (and d!1494831 (not c!803446)) b!4700222))

(declare-fun m!5614293 () Bool)

(assert (=> d!1494831 m!5614293))

(declare-fun m!5614295 () Bool)

(assert (=> d!1494831 m!5614295))

(declare-fun m!5614297 () Bool)

(assert (=> b!4700221 m!5614297))

(assert (=> b!4700221 m!5614297))

(declare-fun m!5614299 () Bool)

(assert (=> b!4700221 m!5614299))

(assert (=> b!4699951 d!1494831))

(declare-fun d!1494835 () Bool)

(declare-fun content!9257 (List!52645) (InoxSet tuple2!53970))

(assert (=> d!1494835 (= (eq!1053 (extractMap!1920 (Cons!52522 lt!1862502 lt!1862534)) (-!698 (extractMap!1920 (Cons!52522 lt!1862516 lt!1862534)) key!4653)) (= (content!9257 (toList!5677 (extractMap!1920 (Cons!52522 lt!1862502 lt!1862534)))) (content!9257 (toList!5677 (-!698 (extractMap!1920 (Cons!52522 lt!1862516 lt!1862534)) key!4653)))))))

(declare-fun bs!1094479 () Bool)

(assert (= bs!1094479 d!1494835))

(declare-fun m!5614303 () Bool)

(assert (=> bs!1094479 m!5614303))

(declare-fun m!5614305 () Bool)

(assert (=> bs!1094479 m!5614305))

(assert (=> b!4699951 d!1494835))

(declare-fun d!1494839 () Bool)

(declare-fun e!2932008 () Bool)

(assert (=> d!1494839 e!2932008))

(declare-fun res!1984276 () Bool)

(assert (=> d!1494839 (=> (not res!1984276) (not e!2932008))))

(declare-fun lt!1862925 () ListMap!5041)

(assert (=> d!1494839 (= res!1984276 (not (contains!15794 lt!1862925 key!4653)))))

(assert (=> d!1494839 (= lt!1862925 (ListMap!5042 (removePresrvNoDuplicatedKeys!363 (toList!5677 lt!1862531) key!4653)))))

(assert (=> d!1494839 (= (-!698 lt!1862531 key!4653) lt!1862925)))

(declare-fun b!4700223 () Bool)

(assert (=> b!4700223 (= e!2932008 (= ((_ map and) (content!9255 (keys!18785 lt!1862531)) ((_ map not) (store ((as const (Array K!13885 Bool)) false) key!4653 true))) (content!9255 (keys!18785 lt!1862925))))))

(assert (= (and d!1494839 res!1984276) b!4700223))

(declare-fun m!5614307 () Bool)

(assert (=> d!1494839 m!5614307))

(declare-fun m!5614309 () Bool)

(assert (=> d!1494839 m!5614309))

(declare-fun m!5614311 () Bool)

(assert (=> b!4700223 m!5614311))

(declare-fun m!5614313 () Bool)

(assert (=> b!4700223 m!5614313))

(declare-fun m!5614315 () Bool)

(assert (=> b!4700223 m!5614315))

(assert (=> b!4700223 m!5614311))

(assert (=> b!4700223 m!5614315))

(declare-fun m!5614317 () Bool)

(assert (=> b!4700223 m!5614317))

(assert (=> b!4700223 m!5613937))

(assert (=> b!4699951 d!1494839))

(declare-fun d!1494841 () Bool)

(assert (=> d!1494841 (= (tail!8709 lt!1862509) (t!359854 lt!1862509))))

(assert (=> b!4699951 d!1494841))

(declare-fun d!1494843 () Bool)

(assert (=> d!1494843 (= (eq!1053 lt!1862517 lt!1862499) (= (content!9257 (toList!5677 lt!1862517)) (content!9257 (toList!5677 lt!1862499))))))

(declare-fun bs!1094480 () Bool)

(assert (= bs!1094480 d!1494843))

(declare-fun m!5614319 () Bool)

(assert (=> bs!1094480 m!5614319))

(declare-fun m!5614321 () Bool)

(assert (=> bs!1094480 m!5614321))

(assert (=> b!4699951 d!1494843))

(declare-fun bs!1094483 () Bool)

(declare-fun d!1494845 () Bool)

(assert (= bs!1094483 (and d!1494845 d!1494831)))

(declare-fun lambda!210038 () Int)

(assert (=> bs!1094483 (= lambda!210038 lambda!210035)))

(declare-fun bs!1094484 () Bool)

(assert (= bs!1094484 (and d!1494845 d!1494717)))

(assert (=> bs!1094484 (= lambda!210038 lambda!210001)))

(declare-fun bs!1094485 () Bool)

(assert (= bs!1094485 (and d!1494845 d!1494829)))

(assert (=> bs!1094485 (= lambda!210038 lambda!210034)))

(declare-fun bs!1094486 () Bool)

(assert (= bs!1094486 (and d!1494845 d!1494825)))

(assert (=> bs!1094486 (= lambda!210038 lambda!210033)))

(declare-fun bs!1094487 () Bool)

(assert (= bs!1094487 (and d!1494845 d!1494769)))

(assert (=> bs!1094487 (= lambda!210038 lambda!210011)))

(declare-fun bs!1094488 () Bool)

(assert (= bs!1094488 (and d!1494845 d!1494771)))

(assert (=> bs!1094488 (= lambda!210038 lambda!210025)))

(declare-fun bs!1094489 () Bool)

(assert (= bs!1094489 (and d!1494845 start!476556)))

(assert (=> bs!1094489 (= lambda!210038 lambda!209915)))

(assert (=> d!1494845 (eq!1053 (extractMap!1920 (Cons!52522 (tuple2!53973 hash!405 lt!1862533) (tail!8709 (toList!5678 lt!1862500)))) (-!698 (extractMap!1920 (Cons!52522 (tuple2!53973 hash!405 (t!359853 oldBucket!34)) (tail!8709 (toList!5678 lt!1862500)))) key!4653))))

(declare-fun lt!1862946 () Unit!125992)

(declare-fun choose!32859 (ListLongMap!4207 (_ BitVec 64) List!52645 List!52645 K!13885 Hashable!6263) Unit!125992)

(assert (=> d!1494845 (= lt!1862946 (choose!32859 lt!1862500 hash!405 (t!359853 oldBucket!34) lt!1862533 key!4653 hashF!1323))))

(assert (=> d!1494845 (forall!11393 (toList!5678 lt!1862500) lambda!210038)))

(assert (=> d!1494845 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!68 lt!1862500 hash!405 (t!359853 oldBucket!34) lt!1862533 key!4653 hashF!1323) lt!1862946)))

(declare-fun bs!1094490 () Bool)

(assert (= bs!1094490 d!1494845))

(declare-fun m!5614345 () Bool)

(assert (=> bs!1094490 m!5614345))

(declare-fun m!5614347 () Bool)

(assert (=> bs!1094490 m!5614347))

(declare-fun m!5614349 () Bool)

(assert (=> bs!1094490 m!5614349))

(declare-fun m!5614351 () Bool)

(assert (=> bs!1094490 m!5614351))

(declare-fun m!5614353 () Bool)

(assert (=> bs!1094490 m!5614353))

(declare-fun m!5614355 () Bool)

(assert (=> bs!1094490 m!5614355))

(assert (=> bs!1094490 m!5614353))

(assert (=> bs!1094490 m!5614347))

(assert (=> bs!1094490 m!5614345))

(declare-fun m!5614359 () Bool)

(assert (=> bs!1094490 m!5614359))

(assert (=> b!4699951 d!1494845))

(declare-fun d!1494859 () Bool)

(declare-fun res!1984301 () Bool)

(declare-fun e!2932036 () Bool)

(assert (=> d!1494859 (=> res!1984301 e!2932036)))

(assert (=> d!1494859 (= res!1984301 ((_ is Nil!52522) (toList!5678 lm!2023)))))

(assert (=> d!1494859 (= (forall!11393 (toList!5678 lm!2023) lambda!209915) e!2932036)))

(declare-fun b!4700255 () Bool)

(declare-fun e!2932037 () Bool)

(assert (=> b!4700255 (= e!2932036 e!2932037)))

(declare-fun res!1984302 () Bool)

(assert (=> b!4700255 (=> (not res!1984302) (not e!2932037))))

(assert (=> b!4700255 (= res!1984302 (dynLambda!21744 lambda!209915 (h!58799 (toList!5678 lm!2023))))))

(declare-fun b!4700256 () Bool)

(assert (=> b!4700256 (= e!2932037 (forall!11393 (t!359854 (toList!5678 lm!2023)) lambda!209915))))

(assert (= (and d!1494859 (not res!1984301)) b!4700255))

(assert (= (and b!4700255 res!1984302) b!4700256))

(declare-fun b_lambda!177341 () Bool)

(assert (=> (not b_lambda!177341) (not b!4700255)))

(declare-fun m!5614363 () Bool)

(assert (=> b!4700255 m!5614363))

(declare-fun m!5614365 () Bool)

(assert (=> b!4700256 m!5614365))

(assert (=> start!476556 d!1494859))

(declare-fun d!1494863 () Bool)

(declare-fun isStrictlySorted!680 (List!52646) Bool)

(assert (=> d!1494863 (= (inv!67759 lm!2023) (isStrictlySorted!680 (toList!5678 lm!2023)))))

(declare-fun bs!1094491 () Bool)

(assert (= bs!1094491 d!1494863))

(declare-fun m!5614367 () Bool)

(assert (=> bs!1094491 m!5614367))

(assert (=> start!476556 d!1494863))

(declare-fun d!1494865 () Bool)

(declare-fun res!1984303 () Bool)

(declare-fun e!2932038 () Bool)

(assert (=> d!1494865 (=> res!1984303 e!2932038)))

(assert (=> d!1494865 (= res!1984303 ((_ is Nil!52522) lt!1862514))))

(assert (=> d!1494865 (= (forall!11393 lt!1862514 lambda!209915) e!2932038)))

(declare-fun b!4700257 () Bool)

(declare-fun e!2932039 () Bool)

(assert (=> b!4700257 (= e!2932038 e!2932039)))

(declare-fun res!1984304 () Bool)

(assert (=> b!4700257 (=> (not res!1984304) (not e!2932039))))

(assert (=> b!4700257 (= res!1984304 (dynLambda!21744 lambda!209915 (h!58799 lt!1862514)))))

(declare-fun b!4700258 () Bool)

(assert (=> b!4700258 (= e!2932039 (forall!11393 (t!359854 lt!1862514) lambda!209915))))

(assert (= (and d!1494865 (not res!1984303)) b!4700257))

(assert (= (and b!4700257 res!1984304) b!4700258))

(declare-fun b_lambda!177343 () Bool)

(assert (=> (not b_lambda!177343) (not b!4700257)))

(declare-fun m!5614369 () Bool)

(assert (=> b!4700257 m!5614369))

(declare-fun m!5614371 () Bool)

(assert (=> b!4700258 m!5614371))

(assert (=> b!4699930 d!1494865))

(declare-fun d!1494867 () Bool)

(assert (=> d!1494867 (= (eq!1053 lt!1862521 (+!2178 lt!1862517 (h!58798 oldBucket!34))) (= (content!9257 (toList!5677 lt!1862521)) (content!9257 (toList!5677 (+!2178 lt!1862517 (h!58798 oldBucket!34))))))))

(declare-fun bs!1094492 () Bool)

(assert (= bs!1094492 d!1494867))

(declare-fun m!5614373 () Bool)

(assert (=> bs!1094492 m!5614373))

(declare-fun m!5614375 () Bool)

(assert (=> bs!1094492 m!5614375))

(assert (=> b!4699930 d!1494867))

(declare-fun d!1494869 () Bool)

(declare-fun e!2932040 () Bool)

(assert (=> d!1494869 e!2932040))

(declare-fun res!1984306 () Bool)

(assert (=> d!1494869 (=> (not res!1984306) (not e!2932040))))

(declare-fun lt!1862952 () ListMap!5041)

(assert (=> d!1494869 (= res!1984306 (contains!15794 lt!1862952 (_1!30279 (h!58798 oldBucket!34))))))

(declare-fun lt!1862953 () List!52645)

(assert (=> d!1494869 (= lt!1862952 (ListMap!5042 lt!1862953))))

(declare-fun lt!1862955 () Unit!125992)

(declare-fun lt!1862954 () Unit!125992)

(assert (=> d!1494869 (= lt!1862955 lt!1862954)))

(assert (=> d!1494869 (= (getValueByKey!1843 lt!1862953 (_1!30279 (h!58798 oldBucket!34))) (Some!12182 (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494869 (= lt!1862954 (lemmaContainsTupThenGetReturnValue!1032 lt!1862953 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494869 (= lt!1862953 (insertNoDuplicatedKeys!540 (toList!5677 lt!1862517) (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494869 (= (+!2178 lt!1862517 (h!58798 oldBucket!34)) lt!1862952)))

(declare-fun b!4700259 () Bool)

(declare-fun res!1984305 () Bool)

(assert (=> b!4700259 (=> (not res!1984305) (not e!2932040))))

(assert (=> b!4700259 (= res!1984305 (= (getValueByKey!1843 (toList!5677 lt!1862952) (_1!30279 (h!58798 oldBucket!34))) (Some!12182 (_2!30279 (h!58798 oldBucket!34)))))))

(declare-fun b!4700260 () Bool)

(assert (=> b!4700260 (= e!2932040 (contains!15796 (toList!5677 lt!1862952) (h!58798 oldBucket!34)))))

(assert (= (and d!1494869 res!1984306) b!4700259))

(assert (= (and b!4700259 res!1984305) b!4700260))

(declare-fun m!5614377 () Bool)

(assert (=> d!1494869 m!5614377))

(declare-fun m!5614379 () Bool)

(assert (=> d!1494869 m!5614379))

(declare-fun m!5614381 () Bool)

(assert (=> d!1494869 m!5614381))

(declare-fun m!5614383 () Bool)

(assert (=> d!1494869 m!5614383))

(declare-fun m!5614385 () Bool)

(assert (=> b!4700259 m!5614385))

(declare-fun m!5614387 () Bool)

(assert (=> b!4700260 m!5614387))

(assert (=> b!4699930 d!1494869))

(declare-fun d!1494871 () Bool)

(assert (=> d!1494871 (eq!1053 (+!2178 lt!1862499 (tuple2!53971 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34)))) (+!2178 lt!1862517 (tuple2!53971 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34)))))))

(declare-fun lt!1862961 () Unit!125992)

(declare-fun choose!32860 (ListMap!5041 ListMap!5041 K!13885 V!14131) Unit!125992)

(assert (=> d!1494871 (= lt!1862961 (choose!32860 lt!1862499 lt!1862517 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494871 (eq!1053 lt!1862499 lt!1862517)))

(assert (=> d!1494871 (= (lemmaAddToEqMapsPreservesEq!76 lt!1862499 lt!1862517 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))) lt!1862961)))

(declare-fun bs!1094506 () Bool)

(assert (= bs!1094506 d!1494871))

(declare-fun m!5614393 () Bool)

(assert (=> bs!1094506 m!5614393))

(declare-fun m!5614395 () Bool)

(assert (=> bs!1094506 m!5614395))

(declare-fun m!5614397 () Bool)

(assert (=> bs!1094506 m!5614397))

(declare-fun m!5614399 () Bool)

(assert (=> bs!1094506 m!5614399))

(assert (=> bs!1094506 m!5614393))

(assert (=> bs!1094506 m!5614395))

(declare-fun m!5614401 () Bool)

(assert (=> bs!1094506 m!5614401))

(assert (=> b!4699930 d!1494871))

(declare-fun d!1494875 () Bool)

(declare-fun hash!4165 (Hashable!6263 K!13885) (_ BitVec 64))

(assert (=> d!1494875 (= (hash!4162 hashF!1323 key!4653) (hash!4165 hashF!1323 key!4653))))

(declare-fun bs!1094507 () Bool)

(assert (= bs!1094507 d!1494875))

(declare-fun m!5614403 () Bool)

(assert (=> bs!1094507 m!5614403))

(assert (=> b!4699948 d!1494875))

(declare-fun b!4700285 () Bool)

(declare-fun e!2932056 () List!52645)

(assert (=> b!4700285 (= e!2932056 (t!359853 oldBucket!34))))

(declare-fun b!4700288 () Bool)

(declare-fun e!2932057 () List!52645)

(assert (=> b!4700288 (= e!2932057 Nil!52521)))

(declare-fun b!4700287 () Bool)

(assert (=> b!4700287 (= e!2932057 (Cons!52521 (h!58798 oldBucket!34) (removePairForKey!1489 (t!359853 oldBucket!34) key!4653)))))

(declare-fun d!1494877 () Bool)

(declare-fun lt!1862963 () List!52645)

(assert (=> d!1494877 (not (containsKey!3157 lt!1862963 key!4653))))

(assert (=> d!1494877 (= lt!1862963 e!2932056)))

(declare-fun c!803457 () Bool)

(assert (=> d!1494877 (= c!803457 (and ((_ is Cons!52521) oldBucket!34) (= (_1!30279 (h!58798 oldBucket!34)) key!4653)))))

(assert (=> d!1494877 (noDuplicateKeys!1894 oldBucket!34)))

(assert (=> d!1494877 (= (removePairForKey!1489 oldBucket!34 key!4653) lt!1862963)))

(declare-fun b!4700286 () Bool)

(assert (=> b!4700286 (= e!2932056 e!2932057)))

(declare-fun c!803456 () Bool)

(assert (=> b!4700286 (= c!803456 ((_ is Cons!52521) oldBucket!34))))

(assert (= (and d!1494877 c!803457) b!4700285))

(assert (= (and d!1494877 (not c!803457)) b!4700286))

(assert (= (and b!4700286 c!803456) b!4700287))

(assert (= (and b!4700286 (not c!803456)) b!4700288))

(assert (=> b!4700287 m!5613607))

(declare-fun m!5614419 () Bool)

(assert (=> d!1494877 m!5614419))

(assert (=> d!1494877 m!5613631))

(assert (=> b!4699949 d!1494877))

(declare-fun bs!1094522 () Bool)

(declare-fun d!1494881 () Bool)

(assert (= bs!1094522 (and d!1494881 b!4700011)))

(declare-fun lambda!210045 () Int)

(assert (=> bs!1094522 (not (= lambda!210045 lambda!209988))))

(declare-fun bs!1094523 () Bool)

(assert (= bs!1094523 (and d!1494881 b!4700014)))

(assert (=> bs!1094523 (not (= lambda!210045 lambda!209989))))

(assert (=> bs!1094523 (not (= lambda!210045 lambda!209990))))

(declare-fun bs!1094524 () Bool)

(assert (= bs!1094524 (and d!1494881 d!1494685)))

(assert (=> bs!1094524 (not (= lambda!210045 lambda!209991))))

(assert (=> d!1494881 true))

(assert (=> d!1494881 true))

(assert (=> d!1494881 (= (allKeysSameHash!1720 oldBucket!34 hash!405 hashF!1323) (forall!11395 oldBucket!34 lambda!210045))))

(declare-fun bs!1094525 () Bool)

(assert (= bs!1094525 d!1494881))

(declare-fun m!5614423 () Bool)

(assert (=> bs!1094525 m!5614423))

(assert (=> b!4699928 d!1494881))

(declare-fun d!1494885 () Bool)

(declare-fun res!1984326 () Bool)

(declare-fun e!2932065 () Bool)

(assert (=> d!1494885 (=> res!1984326 e!2932065)))

(assert (=> d!1494885 (= res!1984326 (not ((_ is Cons!52521) newBucket!218)))))

(assert (=> d!1494885 (= (noDuplicateKeys!1894 newBucket!218) e!2932065)))

(declare-fun b!4700302 () Bool)

(declare-fun e!2932066 () Bool)

(assert (=> b!4700302 (= e!2932065 e!2932066)))

(declare-fun res!1984327 () Bool)

(assert (=> b!4700302 (=> (not res!1984327) (not e!2932066))))

(assert (=> b!4700302 (= res!1984327 (not (containsKey!3157 (t!359853 newBucket!218) (_1!30279 (h!58798 newBucket!218)))))))

(declare-fun b!4700303 () Bool)

(assert (=> b!4700303 (= e!2932066 (noDuplicateKeys!1894 (t!359853 newBucket!218)))))

(assert (= (and d!1494885 (not res!1984326)) b!4700302))

(assert (= (and b!4700302 res!1984327) b!4700303))

(declare-fun m!5614425 () Bool)

(assert (=> b!4700302 m!5614425))

(declare-fun m!5614427 () Bool)

(assert (=> b!4700303 m!5614427))

(assert (=> b!4699927 d!1494885))

(declare-fun d!1494887 () Bool)

(declare-fun res!1984328 () Bool)

(declare-fun e!2932067 () Bool)

(assert (=> d!1494887 (=> res!1984328 e!2932067)))

(assert (=> d!1494887 (= res!1984328 (not ((_ is Cons!52521) oldBucket!34)))))

(assert (=> d!1494887 (= (noDuplicateKeys!1894 oldBucket!34) e!2932067)))

(declare-fun b!4700304 () Bool)

(declare-fun e!2932068 () Bool)

(assert (=> b!4700304 (= e!2932067 e!2932068)))

(declare-fun res!1984329 () Bool)

(assert (=> b!4700304 (=> (not res!1984329) (not e!2932068))))

(assert (=> b!4700304 (= res!1984329 (not (containsKey!3157 (t!359853 oldBucket!34) (_1!30279 (h!58798 oldBucket!34)))))))

(declare-fun b!4700305 () Bool)

(assert (=> b!4700305 (= e!2932068 (noDuplicateKeys!1894 (t!359853 oldBucket!34)))))

(assert (= (and d!1494887 (not res!1984328)) b!4700304))

(assert (= (and b!4700304 res!1984329) b!4700305))

(declare-fun m!5614429 () Bool)

(assert (=> b!4700304 m!5614429))

(assert (=> b!4700305 m!5614069))

(assert (=> b!4699938 d!1494887))

(declare-fun d!1494889 () Bool)

(assert (=> d!1494889 (= (eq!1053 lt!1862504 lt!1862510) (= (content!9257 (toList!5677 lt!1862504)) (content!9257 (toList!5677 lt!1862510))))))

(declare-fun bs!1094540 () Bool)

(assert (= bs!1094540 d!1494889))

(declare-fun m!5614431 () Bool)

(assert (=> bs!1094540 m!5614431))

(declare-fun m!5614433 () Bool)

(assert (=> bs!1094540 m!5614433))

(assert (=> b!4699945 d!1494889))

(declare-fun bs!1094549 () Bool)

(declare-fun d!1494891 () Bool)

(assert (= bs!1094549 (and d!1494891 d!1494845)))

(declare-fun lambda!210051 () Int)

(assert (=> bs!1094549 (not (= lambda!210051 lambda!210038))))

(declare-fun bs!1094552 () Bool)

(assert (= bs!1094552 (and d!1494891 d!1494831)))

(assert (=> bs!1094552 (not (= lambda!210051 lambda!210035))))

(declare-fun bs!1094553 () Bool)

(assert (= bs!1094553 (and d!1494891 d!1494717)))

(assert (=> bs!1094553 (not (= lambda!210051 lambda!210001))))

(declare-fun bs!1094555 () Bool)

(assert (= bs!1094555 (and d!1494891 d!1494829)))

(assert (=> bs!1094555 (not (= lambda!210051 lambda!210034))))

(declare-fun bs!1094556 () Bool)

(assert (= bs!1094556 (and d!1494891 d!1494825)))

(assert (=> bs!1094556 (not (= lambda!210051 lambda!210033))))

(declare-fun bs!1094558 () Bool)

(assert (= bs!1094558 (and d!1494891 d!1494769)))

(assert (=> bs!1094558 (not (= lambda!210051 lambda!210011))))

(declare-fun bs!1094561 () Bool)

(assert (= bs!1094561 (and d!1494891 d!1494771)))

(assert (=> bs!1094561 (not (= lambda!210051 lambda!210025))))

(declare-fun bs!1094562 () Bool)

(assert (= bs!1094562 (and d!1494891 start!476556)))

(assert (=> bs!1094562 (not (= lambda!210051 lambda!209915))))

(assert (=> d!1494891 true))

(assert (=> d!1494891 (= (allKeysSameHashInMap!1808 lm!2023 hashF!1323) (forall!11393 (toList!5678 lm!2023) lambda!210051))))

(declare-fun bs!1094564 () Bool)

(assert (= bs!1094564 d!1494891))

(declare-fun m!5614435 () Bool)

(assert (=> bs!1094564 m!5614435))

(assert (=> b!4699935 d!1494891))

(declare-fun b!4700338 () Bool)

(declare-fun e!2932094 () Bool)

(declare-fun e!2932090 () Bool)

(assert (=> b!4700338 (= e!2932094 e!2932090)))

(declare-fun res!1984347 () Bool)

(assert (=> b!4700338 (=> (not res!1984347) (not e!2932090))))

(declare-fun isDefined!9439 (Option!12183) Bool)

(assert (=> b!4700338 (= res!1984347 (isDefined!9439 (getValueByKey!1843 (toList!5677 lt!1862508) key!4653)))))

(declare-fun d!1494893 () Bool)

(assert (=> d!1494893 e!2932094))

(declare-fun res!1984346 () Bool)

(assert (=> d!1494893 (=> res!1984346 e!2932094)))

(declare-fun e!2932092 () Bool)

(assert (=> d!1494893 (= res!1984346 e!2932092)))

(declare-fun res!1984348 () Bool)

(assert (=> d!1494893 (=> (not res!1984348) (not e!2932092))))

(declare-fun lt!1863026 () Bool)

(assert (=> d!1494893 (= res!1984348 (not lt!1863026))))

(declare-fun lt!1863020 () Bool)

(assert (=> d!1494893 (= lt!1863026 lt!1863020)))

(declare-fun lt!1863022 () Unit!125992)

(declare-fun e!2932091 () Unit!125992)

(assert (=> d!1494893 (= lt!1863022 e!2932091)))

(declare-fun c!803467 () Bool)

(assert (=> d!1494893 (= c!803467 lt!1863020)))

(declare-fun containsKey!3160 (List!52645 K!13885) Bool)

(assert (=> d!1494893 (= lt!1863020 (containsKey!3160 (toList!5677 lt!1862508) key!4653))))

(assert (=> d!1494893 (= (contains!15794 lt!1862508 key!4653) lt!1863026)))

(declare-fun b!4700339 () Bool)

(declare-fun e!2932089 () List!52648)

(declare-fun getKeysList!882 (List!52645) List!52648)

(assert (=> b!4700339 (= e!2932089 (getKeysList!882 (toList!5677 lt!1862508)))))

(declare-fun b!4700340 () Bool)

(assert (=> b!4700340 (= e!2932089 (keys!18785 lt!1862508))))

(declare-fun b!4700341 () Bool)

(declare-fun contains!15798 (List!52648 K!13885) Bool)

(assert (=> b!4700341 (= e!2932090 (contains!15798 (keys!18785 lt!1862508) key!4653))))

(declare-fun bm!328589 () Bool)

(declare-fun call!328594 () Bool)

(assert (=> bm!328589 (= call!328594 (contains!15798 e!2932089 key!4653))))

(declare-fun c!803466 () Bool)

(assert (=> bm!328589 (= c!803466 c!803467)))

(declare-fun b!4700342 () Bool)

(assert (=> b!4700342 false))

(declare-fun lt!1863021 () Unit!125992)

(declare-fun lt!1863023 () Unit!125992)

(assert (=> b!4700342 (= lt!1863021 lt!1863023)))

(assert (=> b!4700342 (containsKey!3160 (toList!5677 lt!1862508) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!881 (List!52645 K!13885) Unit!125992)

(assert (=> b!4700342 (= lt!1863023 (lemmaInGetKeysListThenContainsKey!881 (toList!5677 lt!1862508) key!4653))))

(declare-fun e!2932093 () Unit!125992)

(declare-fun Unit!126052 () Unit!125992)

(assert (=> b!4700342 (= e!2932093 Unit!126052)))

(declare-fun b!4700343 () Bool)

(assert (=> b!4700343 (= e!2932091 e!2932093)))

(declare-fun c!803468 () Bool)

(assert (=> b!4700343 (= c!803468 call!328594)))

(declare-fun b!4700344 () Bool)

(declare-fun lt!1863024 () Unit!125992)

(assert (=> b!4700344 (= e!2932091 lt!1863024)))

(declare-fun lt!1863025 () Unit!125992)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1736 (List!52645 K!13885) Unit!125992)

(assert (=> b!4700344 (= lt!1863025 (lemmaContainsKeyImpliesGetValueByKeyDefined!1736 (toList!5677 lt!1862508) key!4653))))

(assert (=> b!4700344 (isDefined!9439 (getValueByKey!1843 (toList!5677 lt!1862508) key!4653))))

(declare-fun lt!1863019 () Unit!125992)

(assert (=> b!4700344 (= lt!1863019 lt!1863025)))

(declare-fun lemmaInListThenGetKeysListContains!877 (List!52645 K!13885) Unit!125992)

(assert (=> b!4700344 (= lt!1863024 (lemmaInListThenGetKeysListContains!877 (toList!5677 lt!1862508) key!4653))))

(assert (=> b!4700344 call!328594))

(declare-fun b!4700345 () Bool)

(assert (=> b!4700345 (= e!2932092 (not (contains!15798 (keys!18785 lt!1862508) key!4653)))))

(declare-fun b!4700346 () Bool)

(declare-fun Unit!126053 () Unit!125992)

(assert (=> b!4700346 (= e!2932093 Unit!126053)))

(assert (= (and d!1494893 c!803467) b!4700344))

(assert (= (and d!1494893 (not c!803467)) b!4700343))

(assert (= (and b!4700343 c!803468) b!4700342))

(assert (= (and b!4700343 (not c!803468)) b!4700346))

(assert (= (or b!4700344 b!4700343) bm!328589))

(assert (= (and bm!328589 c!803466) b!4700339))

(assert (= (and bm!328589 (not c!803466)) b!4700340))

(assert (= (and d!1494893 res!1984348) b!4700345))

(assert (= (and d!1494893 (not res!1984346)) b!4700338))

(assert (= (and b!4700338 res!1984347) b!4700341))

(declare-fun m!5614555 () Bool)

(assert (=> d!1494893 m!5614555))

(declare-fun m!5614557 () Bool)

(assert (=> bm!328589 m!5614557))

(declare-fun m!5614559 () Bool)

(assert (=> b!4700341 m!5614559))

(assert (=> b!4700341 m!5614559))

(declare-fun m!5614561 () Bool)

(assert (=> b!4700341 m!5614561))

(declare-fun m!5614563 () Bool)

(assert (=> b!4700338 m!5614563))

(assert (=> b!4700338 m!5614563))

(declare-fun m!5614565 () Bool)

(assert (=> b!4700338 m!5614565))

(assert (=> b!4700345 m!5614559))

(assert (=> b!4700345 m!5614559))

(assert (=> b!4700345 m!5614561))

(declare-fun m!5614567 () Bool)

(assert (=> b!4700339 m!5614567))

(declare-fun m!5614569 () Bool)

(assert (=> b!4700344 m!5614569))

(assert (=> b!4700344 m!5614563))

(assert (=> b!4700344 m!5614563))

(assert (=> b!4700344 m!5614565))

(declare-fun m!5614571 () Bool)

(assert (=> b!4700344 m!5614571))

(assert (=> b!4700342 m!5614555))

(declare-fun m!5614573 () Bool)

(assert (=> b!4700342 m!5614573))

(assert (=> b!4700340 m!5614559))

(assert (=> b!4699946 d!1494893))

(declare-fun bs!1094595 () Bool)

(declare-fun d!1494917 () Bool)

(assert (= bs!1094595 (and d!1494917 d!1494891)))

(declare-fun lambda!210054 () Int)

(assert (=> bs!1094595 (not (= lambda!210054 lambda!210051))))

(declare-fun bs!1094597 () Bool)

(assert (= bs!1094597 (and d!1494917 d!1494845)))

(assert (=> bs!1094597 (= lambda!210054 lambda!210038)))

(declare-fun bs!1094599 () Bool)

(assert (= bs!1094599 (and d!1494917 d!1494831)))

(assert (=> bs!1094599 (= lambda!210054 lambda!210035)))

(declare-fun bs!1094600 () Bool)

(assert (= bs!1094600 (and d!1494917 d!1494717)))

(assert (=> bs!1094600 (= lambda!210054 lambda!210001)))

(declare-fun bs!1094601 () Bool)

(assert (= bs!1094601 (and d!1494917 d!1494829)))

(assert (=> bs!1094601 (= lambda!210054 lambda!210034)))

(declare-fun bs!1094603 () Bool)

(assert (= bs!1094603 (and d!1494917 d!1494825)))

(assert (=> bs!1094603 (= lambda!210054 lambda!210033)))

(declare-fun bs!1094604 () Bool)

(assert (= bs!1094604 (and d!1494917 d!1494769)))

(assert (=> bs!1094604 (= lambda!210054 lambda!210011)))

(declare-fun bs!1094605 () Bool)

(assert (= bs!1094605 (and d!1494917 d!1494771)))

(assert (=> bs!1094605 (= lambda!210054 lambda!210025)))

(declare-fun bs!1094606 () Bool)

(assert (= bs!1094606 (and d!1494917 start!476556)))

(assert (=> bs!1094606 (= lambda!210054 lambda!209915)))

(declare-fun lt!1863027 () ListMap!5041)

(assert (=> d!1494917 (invariantList!1442 (toList!5677 lt!1863027))))

(declare-fun e!2932095 () ListMap!5041)

(assert (=> d!1494917 (= lt!1863027 e!2932095)))

(declare-fun c!803469 () Bool)

(assert (=> d!1494917 (= c!803469 ((_ is Cons!52522) (toList!5678 lm!2023)))))

(assert (=> d!1494917 (forall!11393 (toList!5678 lm!2023) lambda!210054)))

(assert (=> d!1494917 (= (extractMap!1920 (toList!5678 lm!2023)) lt!1863027)))

(declare-fun b!4700347 () Bool)

(assert (=> b!4700347 (= e!2932095 (addToMapMapFromBucket!1326 (_2!30280 (h!58799 (toList!5678 lm!2023))) (extractMap!1920 (t!359854 (toList!5678 lm!2023)))))))

(declare-fun b!4700348 () Bool)

(assert (=> b!4700348 (= e!2932095 (ListMap!5042 Nil!52521))))

(assert (= (and d!1494917 c!803469) b!4700347))

(assert (= (and d!1494917 (not c!803469)) b!4700348))

(declare-fun m!5614581 () Bool)

(assert (=> d!1494917 m!5614581))

(declare-fun m!5614583 () Bool)

(assert (=> d!1494917 m!5614583))

(assert (=> b!4700347 m!5613621))

(assert (=> b!4700347 m!5613621))

(declare-fun m!5614585 () Bool)

(assert (=> b!4700347 m!5614585))

(assert (=> b!4699946 d!1494917))

(declare-fun d!1494923 () Bool)

(assert (=> d!1494923 (= (eq!1053 lt!1862503 lt!1862523) (= (content!9257 (toList!5677 lt!1862503)) (content!9257 (toList!5677 lt!1862523))))))

(declare-fun bs!1094607 () Bool)

(assert (= bs!1094607 d!1494923))

(declare-fun m!5614587 () Bool)

(assert (=> bs!1094607 m!5614587))

(declare-fun m!5614589 () Bool)

(assert (=> bs!1094607 m!5614589))

(assert (=> b!4699932 d!1494923))

(declare-fun bs!1094608 () Bool)

(declare-fun d!1494925 () Bool)

(assert (= bs!1094608 (and d!1494925 b!4700014)))

(declare-fun lambda!210055 () Int)

(assert (=> bs!1094608 (not (= lambda!210055 lambda!209989))))

(declare-fun bs!1094609 () Bool)

(assert (= bs!1094609 (and d!1494925 d!1494685)))

(assert (=> bs!1094609 (not (= lambda!210055 lambda!209991))))

(assert (=> bs!1094608 (not (= lambda!210055 lambda!209990))))

(declare-fun bs!1094610 () Bool)

(assert (= bs!1094610 (and d!1494925 b!4700011)))

(assert (=> bs!1094610 (not (= lambda!210055 lambda!209988))))

(declare-fun bs!1094611 () Bool)

(assert (= bs!1094611 (and d!1494925 d!1494881)))

(assert (=> bs!1094611 (= lambda!210055 lambda!210045)))

(assert (=> d!1494925 true))

(assert (=> d!1494925 true))

(assert (=> d!1494925 (= (allKeysSameHash!1720 newBucket!218 hash!405 hashF!1323) (forall!11395 newBucket!218 lambda!210055))))

(declare-fun bs!1094612 () Bool)

(assert (= bs!1094612 d!1494925))

(declare-fun m!5614591 () Bool)

(assert (=> bs!1094612 m!5614591))

(assert (=> b!4699931 d!1494925))

(declare-fun d!1494929 () Bool)

(assert (=> d!1494929 (= (eq!1053 lt!1862510 (+!2178 lt!1862498 lt!1862530)) (= (content!9257 (toList!5677 lt!1862510)) (content!9257 (toList!5677 (+!2178 lt!1862498 lt!1862530)))))))

(declare-fun bs!1094613 () Bool)

(assert (= bs!1094613 d!1494929))

(assert (=> bs!1094613 m!5614433))

(declare-fun m!5614593 () Bool)

(assert (=> bs!1094613 m!5614593))

(assert (=> b!4699933 d!1494929))

(declare-fun d!1494931 () Bool)

(declare-fun e!2932103 () Bool)

(assert (=> d!1494931 e!2932103))

(declare-fun res!1984350 () Bool)

(assert (=> d!1494931 (=> (not res!1984350) (not e!2932103))))

(declare-fun lt!1863029 () ListMap!5041)

(assert (=> d!1494931 (= res!1984350 (contains!15794 lt!1863029 (_1!30279 lt!1862530)))))

(declare-fun lt!1863030 () List!52645)

(assert (=> d!1494931 (= lt!1863029 (ListMap!5042 lt!1863030))))

(declare-fun lt!1863032 () Unit!125992)

(declare-fun lt!1863031 () Unit!125992)

(assert (=> d!1494931 (= lt!1863032 lt!1863031)))

(assert (=> d!1494931 (= (getValueByKey!1843 lt!1863030 (_1!30279 lt!1862530)) (Some!12182 (_2!30279 lt!1862530)))))

(assert (=> d!1494931 (= lt!1863031 (lemmaContainsTupThenGetReturnValue!1032 lt!1863030 (_1!30279 lt!1862530) (_2!30279 lt!1862530)))))

(assert (=> d!1494931 (= lt!1863030 (insertNoDuplicatedKeys!540 (toList!5677 lt!1862498) (_1!30279 lt!1862530) (_2!30279 lt!1862530)))))

(assert (=> d!1494931 (= (+!2178 lt!1862498 lt!1862530) lt!1863029)))

(declare-fun b!4700362 () Bool)

(declare-fun res!1984349 () Bool)

(assert (=> b!4700362 (=> (not res!1984349) (not e!2932103))))

(assert (=> b!4700362 (= res!1984349 (= (getValueByKey!1843 (toList!5677 lt!1863029) (_1!30279 lt!1862530)) (Some!12182 (_2!30279 lt!1862530))))))

(declare-fun b!4700363 () Bool)

(assert (=> b!4700363 (= e!2932103 (contains!15796 (toList!5677 lt!1863029) lt!1862530))))

(assert (= (and d!1494931 res!1984350) b!4700362))

(assert (= (and b!4700362 res!1984349) b!4700363))

(declare-fun m!5614595 () Bool)

(assert (=> d!1494931 m!5614595))

(declare-fun m!5614597 () Bool)

(assert (=> d!1494931 m!5614597))

(declare-fun m!5614599 () Bool)

(assert (=> d!1494931 m!5614599))

(declare-fun m!5614601 () Bool)

(assert (=> d!1494931 m!5614601))

(declare-fun m!5614603 () Bool)

(assert (=> b!4700362 m!5614603))

(declare-fun m!5614605 () Bool)

(assert (=> b!4700363 m!5614605))

(assert (=> b!4699933 d!1494931))

(declare-fun d!1494933 () Bool)

(assert (=> d!1494933 (eq!1053 (addToMapMapFromBucket!1326 (Cons!52521 lt!1862518 lt!1862512) lt!1862511) (+!2178 (addToMapMapFromBucket!1326 lt!1862512 lt!1862511) lt!1862518))))

(declare-fun lt!1863035 () Unit!125992)

(declare-fun choose!32862 (tuple2!53970 List!52645 ListMap!5041) Unit!125992)

(assert (=> d!1494933 (= lt!1863035 (choose!32862 lt!1862518 lt!1862512 lt!1862511))))

(assert (=> d!1494933 (noDuplicateKeys!1894 lt!1862512)))

(assert (=> d!1494933 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!302 lt!1862518 lt!1862512 lt!1862511) lt!1863035)))

(declare-fun bs!1094617 () Bool)

(assert (= bs!1094617 d!1494933))

(declare-fun m!5614611 () Bool)

(assert (=> bs!1094617 m!5614611))

(assert (=> bs!1094617 m!5613585))

(assert (=> bs!1094617 m!5613587))

(assert (=> bs!1094617 m!5613583))

(assert (=> bs!1094617 m!5613587))

(assert (=> bs!1094617 m!5613589))

(assert (=> bs!1094617 m!5613583))

(assert (=> bs!1094617 m!5613585))

(assert (=> bs!1094617 m!5614063))

(assert (=> b!4699944 d!1494933))

(declare-fun d!1494941 () Bool)

(assert (=> d!1494941 (= (head!10052 oldBucket!34) (h!58798 oldBucket!34))))

(assert (=> b!4699944 d!1494941))

(declare-fun bs!1094618 () Bool)

(declare-fun d!1494943 () Bool)

(assert (= bs!1094618 (and d!1494943 d!1494891)))

(declare-fun lambda!210058 () Int)

(assert (=> bs!1094618 (not (= lambda!210058 lambda!210051))))

(declare-fun bs!1094619 () Bool)

(assert (= bs!1094619 (and d!1494943 d!1494845)))

(assert (=> bs!1094619 (= lambda!210058 lambda!210038)))

(declare-fun bs!1094620 () Bool)

(assert (= bs!1094620 (and d!1494943 d!1494831)))

(assert (=> bs!1094620 (= lambda!210058 lambda!210035)))

(declare-fun bs!1094621 () Bool)

(assert (= bs!1094621 (and d!1494943 d!1494717)))

(assert (=> bs!1094621 (= lambda!210058 lambda!210001)))

(declare-fun bs!1094622 () Bool)

(assert (= bs!1094622 (and d!1494943 d!1494917)))

(assert (=> bs!1094622 (= lambda!210058 lambda!210054)))

(declare-fun bs!1094623 () Bool)

(assert (= bs!1094623 (and d!1494943 d!1494829)))

(assert (=> bs!1094623 (= lambda!210058 lambda!210034)))

(declare-fun bs!1094624 () Bool)

(assert (= bs!1094624 (and d!1494943 d!1494825)))

(assert (=> bs!1094624 (= lambda!210058 lambda!210033)))

(declare-fun bs!1094625 () Bool)

(assert (= bs!1094625 (and d!1494943 d!1494769)))

(assert (=> bs!1094625 (= lambda!210058 lambda!210011)))

(declare-fun bs!1094626 () Bool)

(assert (= bs!1094626 (and d!1494943 d!1494771)))

(assert (=> bs!1094626 (= lambda!210058 lambda!210025)))

(declare-fun bs!1094627 () Bool)

(assert (= bs!1094627 (and d!1494943 start!476556)))

(assert (=> bs!1094627 (= lambda!210058 lambda!209915)))

(assert (=> d!1494943 (contains!15794 (extractMap!1920 (toList!5678 lt!1862500)) key!4653)))

(declare-fun lt!1863038 () Unit!125992)

(declare-fun choose!32863 (ListLongMap!4207 K!13885 Hashable!6263) Unit!125992)

(assert (=> d!1494943 (= lt!1863038 (choose!32863 lt!1862500 key!4653 hashF!1323))))

(assert (=> d!1494943 (forall!11393 (toList!5678 lt!1862500) lambda!210058)))

(assert (=> d!1494943 (= (lemmaListContainsThenExtractedMapContains!486 lt!1862500 key!4653 hashF!1323) lt!1863038)))

(declare-fun bs!1094628 () Bool)

(assert (= bs!1094628 d!1494943))

(declare-fun m!5614613 () Bool)

(assert (=> bs!1094628 m!5614613))

(assert (=> bs!1094628 m!5614613))

(declare-fun m!5614615 () Bool)

(assert (=> bs!1094628 m!5614615))

(declare-fun m!5614617 () Bool)

(assert (=> bs!1094628 m!5614617))

(declare-fun m!5614619 () Bool)

(assert (=> bs!1094628 m!5614619))

(assert (=> b!4699944 d!1494943))

(declare-fun d!1494945 () Bool)

(assert (=> d!1494945 (= (head!10052 newBucket!218) (h!58798 newBucket!218))))

(assert (=> b!4699944 d!1494945))

(declare-fun b!4700366 () Bool)

(declare-fun e!2932111 () Bool)

(declare-fun e!2932107 () Bool)

(assert (=> b!4700366 (= e!2932111 e!2932107)))

(declare-fun res!1984352 () Bool)

(assert (=> b!4700366 (=> (not res!1984352) (not e!2932107))))

(assert (=> b!4700366 (= res!1984352 (isDefined!9439 (getValueByKey!1843 (toList!5677 lt!1862531) key!4653)))))

(declare-fun d!1494947 () Bool)

(assert (=> d!1494947 e!2932111))

(declare-fun res!1984351 () Bool)

(assert (=> d!1494947 (=> res!1984351 e!2932111)))

(declare-fun e!2932109 () Bool)

(assert (=> d!1494947 (= res!1984351 e!2932109)))

(declare-fun res!1984353 () Bool)

(assert (=> d!1494947 (=> (not res!1984353) (not e!2932109))))

(declare-fun lt!1863046 () Bool)

(assert (=> d!1494947 (= res!1984353 (not lt!1863046))))

(declare-fun lt!1863040 () Bool)

(assert (=> d!1494947 (= lt!1863046 lt!1863040)))

(declare-fun lt!1863042 () Unit!125992)

(declare-fun e!2932108 () Unit!125992)

(assert (=> d!1494947 (= lt!1863042 e!2932108)))

(declare-fun c!803473 () Bool)

(assert (=> d!1494947 (= c!803473 lt!1863040)))

(assert (=> d!1494947 (= lt!1863040 (containsKey!3160 (toList!5677 lt!1862531) key!4653))))

(assert (=> d!1494947 (= (contains!15794 lt!1862531 key!4653) lt!1863046)))

(declare-fun b!4700367 () Bool)

(declare-fun e!2932106 () List!52648)

(assert (=> b!4700367 (= e!2932106 (getKeysList!882 (toList!5677 lt!1862531)))))

(declare-fun b!4700368 () Bool)

(assert (=> b!4700368 (= e!2932106 (keys!18785 lt!1862531))))

(declare-fun b!4700369 () Bool)

(assert (=> b!4700369 (= e!2932107 (contains!15798 (keys!18785 lt!1862531) key!4653))))

(declare-fun bm!328590 () Bool)

(declare-fun call!328595 () Bool)

(assert (=> bm!328590 (= call!328595 (contains!15798 e!2932106 key!4653))))

(declare-fun c!803472 () Bool)

(assert (=> bm!328590 (= c!803472 c!803473)))

(declare-fun b!4700370 () Bool)

(assert (=> b!4700370 false))

(declare-fun lt!1863041 () Unit!125992)

(declare-fun lt!1863043 () Unit!125992)

(assert (=> b!4700370 (= lt!1863041 lt!1863043)))

(assert (=> b!4700370 (containsKey!3160 (toList!5677 lt!1862531) key!4653)))

(assert (=> b!4700370 (= lt!1863043 (lemmaInGetKeysListThenContainsKey!881 (toList!5677 lt!1862531) key!4653))))

(declare-fun e!2932110 () Unit!125992)

(declare-fun Unit!126056 () Unit!125992)

(assert (=> b!4700370 (= e!2932110 Unit!126056)))

(declare-fun b!4700371 () Bool)

(assert (=> b!4700371 (= e!2932108 e!2932110)))

(declare-fun c!803474 () Bool)

(assert (=> b!4700371 (= c!803474 call!328595)))

(declare-fun b!4700372 () Bool)

(declare-fun lt!1863044 () Unit!125992)

(assert (=> b!4700372 (= e!2932108 lt!1863044)))

(declare-fun lt!1863045 () Unit!125992)

(assert (=> b!4700372 (= lt!1863045 (lemmaContainsKeyImpliesGetValueByKeyDefined!1736 (toList!5677 lt!1862531) key!4653))))

(assert (=> b!4700372 (isDefined!9439 (getValueByKey!1843 (toList!5677 lt!1862531) key!4653))))

(declare-fun lt!1863039 () Unit!125992)

(assert (=> b!4700372 (= lt!1863039 lt!1863045)))

(assert (=> b!4700372 (= lt!1863044 (lemmaInListThenGetKeysListContains!877 (toList!5677 lt!1862531) key!4653))))

(assert (=> b!4700372 call!328595))

(declare-fun b!4700373 () Bool)

(assert (=> b!4700373 (= e!2932109 (not (contains!15798 (keys!18785 lt!1862531) key!4653)))))

(declare-fun b!4700374 () Bool)

(declare-fun Unit!126057 () Unit!125992)

(assert (=> b!4700374 (= e!2932110 Unit!126057)))

(assert (= (and d!1494947 c!803473) b!4700372))

(assert (= (and d!1494947 (not c!803473)) b!4700371))

(assert (= (and b!4700371 c!803474) b!4700370))

(assert (= (and b!4700371 (not c!803474)) b!4700374))

(assert (= (or b!4700372 b!4700371) bm!328590))

(assert (= (and bm!328590 c!803472) b!4700367))

(assert (= (and bm!328590 (not c!803472)) b!4700368))

(assert (= (and d!1494947 res!1984353) b!4700373))

(assert (= (and d!1494947 (not res!1984351)) b!4700366))

(assert (= (and b!4700366 res!1984352) b!4700369))

(declare-fun m!5614621 () Bool)

(assert (=> d!1494947 m!5614621))

(declare-fun m!5614623 () Bool)

(assert (=> bm!328590 m!5614623))

(assert (=> b!4700369 m!5614311))

(assert (=> b!4700369 m!5614311))

(declare-fun m!5614625 () Bool)

(assert (=> b!4700369 m!5614625))

(declare-fun m!5614627 () Bool)

(assert (=> b!4700366 m!5614627))

(assert (=> b!4700366 m!5614627))

(declare-fun m!5614629 () Bool)

(assert (=> b!4700366 m!5614629))

(assert (=> b!4700373 m!5614311))

(assert (=> b!4700373 m!5614311))

(assert (=> b!4700373 m!5614625))

(declare-fun m!5614631 () Bool)

(assert (=> b!4700367 m!5614631))

(declare-fun m!5614633 () Bool)

(assert (=> b!4700372 m!5614633))

(assert (=> b!4700372 m!5614627))

(assert (=> b!4700372 m!5614627))

(assert (=> b!4700372 m!5614629))

(declare-fun m!5614635 () Bool)

(assert (=> b!4700372 m!5614635))

(assert (=> b!4700370 m!5614621))

(declare-fun m!5614637 () Bool)

(assert (=> b!4700370 m!5614637))

(assert (=> b!4700368 m!5614311))

(assert (=> b!4699944 d!1494947))

(declare-fun bs!1094629 () Bool)

(declare-fun d!1494949 () Bool)

(assert (= bs!1094629 (and d!1494949 d!1494891)))

(declare-fun lambda!210059 () Int)

(assert (=> bs!1094629 (not (= lambda!210059 lambda!210051))))

(declare-fun bs!1094630 () Bool)

(assert (= bs!1094630 (and d!1494949 d!1494845)))

(assert (=> bs!1094630 (= lambda!210059 lambda!210038)))

(declare-fun bs!1094631 () Bool)

(assert (= bs!1094631 (and d!1494949 d!1494717)))

(assert (=> bs!1094631 (= lambda!210059 lambda!210001)))

(declare-fun bs!1094632 () Bool)

(assert (= bs!1094632 (and d!1494949 d!1494917)))

(assert (=> bs!1094632 (= lambda!210059 lambda!210054)))

(declare-fun bs!1094633 () Bool)

(assert (= bs!1094633 (and d!1494949 d!1494829)))

(assert (=> bs!1094633 (= lambda!210059 lambda!210034)))

(declare-fun bs!1094634 () Bool)

(assert (= bs!1094634 (and d!1494949 d!1494825)))

(assert (=> bs!1094634 (= lambda!210059 lambda!210033)))

(declare-fun bs!1094635 () Bool)

(assert (= bs!1094635 (and d!1494949 d!1494769)))

(assert (=> bs!1094635 (= lambda!210059 lambda!210011)))

(declare-fun bs!1094636 () Bool)

(assert (= bs!1094636 (and d!1494949 d!1494943)))

(assert (=> bs!1094636 (= lambda!210059 lambda!210058)))

(declare-fun bs!1094637 () Bool)

(assert (= bs!1094637 (and d!1494949 d!1494831)))

(assert (=> bs!1094637 (= lambda!210059 lambda!210035)))

(declare-fun bs!1094638 () Bool)

(assert (= bs!1094638 (and d!1494949 d!1494771)))

(assert (=> bs!1094638 (= lambda!210059 lambda!210025)))

(declare-fun bs!1094639 () Bool)

(assert (= bs!1094639 (and d!1494949 start!476556)))

(assert (=> bs!1094639 (= lambda!210059 lambda!209915)))

(declare-fun lt!1863047 () ListMap!5041)

(assert (=> d!1494949 (invariantList!1442 (toList!5677 lt!1863047))))

(declare-fun e!2932112 () ListMap!5041)

(assert (=> d!1494949 (= lt!1863047 e!2932112)))

(declare-fun c!803475 () Bool)

(assert (=> d!1494949 (= c!803475 ((_ is Cons!52522) lt!1862509))))

(assert (=> d!1494949 (forall!11393 lt!1862509 lambda!210059)))

(assert (=> d!1494949 (= (extractMap!1920 lt!1862509) lt!1863047)))

(declare-fun b!4700375 () Bool)

(assert (=> b!4700375 (= e!2932112 (addToMapMapFromBucket!1326 (_2!30280 (h!58799 lt!1862509)) (extractMap!1920 (t!359854 lt!1862509))))))

(declare-fun b!4700376 () Bool)

(assert (=> b!4700376 (= e!2932112 (ListMap!5042 Nil!52521))))

(assert (= (and d!1494949 c!803475) b!4700375))

(assert (= (and d!1494949 (not c!803475)) b!4700376))

(declare-fun m!5614639 () Bool)

(assert (=> d!1494949 m!5614639))

(declare-fun m!5614641 () Bool)

(assert (=> d!1494949 m!5614641))

(declare-fun m!5614643 () Bool)

(assert (=> b!4700375 m!5614643))

(assert (=> b!4700375 m!5614643))

(declare-fun m!5614645 () Bool)

(assert (=> b!4700375 m!5614645))

(assert (=> b!4699944 d!1494949))

(declare-fun d!1494951 () Bool)

(declare-fun e!2932113 () Bool)

(assert (=> d!1494951 e!2932113))

(declare-fun res!1984355 () Bool)

(assert (=> d!1494951 (=> (not res!1984355) (not e!2932113))))

(declare-fun lt!1863048 () ListMap!5041)

(assert (=> d!1494951 (= res!1984355 (contains!15794 lt!1863048 (_1!30279 lt!1862530)))))

(declare-fun lt!1863049 () List!52645)

(assert (=> d!1494951 (= lt!1863048 (ListMap!5042 lt!1863049))))

(declare-fun lt!1863051 () Unit!125992)

(declare-fun lt!1863050 () Unit!125992)

(assert (=> d!1494951 (= lt!1863051 lt!1863050)))

(assert (=> d!1494951 (= (getValueByKey!1843 lt!1863049 (_1!30279 lt!1862530)) (Some!12182 (_2!30279 lt!1862530)))))

(assert (=> d!1494951 (= lt!1863050 (lemmaContainsTupThenGetReturnValue!1032 lt!1863049 (_1!30279 lt!1862530) (_2!30279 lt!1862530)))))

(assert (=> d!1494951 (= lt!1863049 (insertNoDuplicatedKeys!540 (toList!5677 (addToMapMapFromBucket!1326 lt!1862533 lt!1862511)) (_1!30279 lt!1862530) (_2!30279 lt!1862530)))))

(assert (=> d!1494951 (= (+!2178 (addToMapMapFromBucket!1326 lt!1862533 lt!1862511) lt!1862530) lt!1863048)))

(declare-fun b!4700377 () Bool)

(declare-fun res!1984354 () Bool)

(assert (=> b!4700377 (=> (not res!1984354) (not e!2932113))))

(assert (=> b!4700377 (= res!1984354 (= (getValueByKey!1843 (toList!5677 lt!1863048) (_1!30279 lt!1862530)) (Some!12182 (_2!30279 lt!1862530))))))

(declare-fun b!4700378 () Bool)

(assert (=> b!4700378 (= e!2932113 (contains!15796 (toList!5677 lt!1863048) lt!1862530))))

(assert (= (and d!1494951 res!1984355) b!4700377))

(assert (= (and b!4700377 res!1984354) b!4700378))

(declare-fun m!5614647 () Bool)

(assert (=> d!1494951 m!5614647))

(declare-fun m!5614649 () Bool)

(assert (=> d!1494951 m!5614649))

(declare-fun m!5614651 () Bool)

(assert (=> d!1494951 m!5614651))

(declare-fun m!5614653 () Bool)

(assert (=> d!1494951 m!5614653))

(declare-fun m!5614655 () Bool)

(assert (=> b!4700377 m!5614655))

(declare-fun m!5614657 () Bool)

(assert (=> b!4700378 m!5614657))

(assert (=> b!4699944 d!1494951))

(declare-fun d!1494953 () Bool)

(assert (=> d!1494953 (= (eq!1053 (addToMapMapFromBucket!1326 (Cons!52521 lt!1862530 lt!1862533) lt!1862511) (+!2178 (addToMapMapFromBucket!1326 lt!1862533 lt!1862511) lt!1862530)) (= (content!9257 (toList!5677 (addToMapMapFromBucket!1326 (Cons!52521 lt!1862530 lt!1862533) lt!1862511))) (content!9257 (toList!5677 (+!2178 (addToMapMapFromBucket!1326 lt!1862533 lt!1862511) lt!1862530)))))))

(declare-fun bs!1094640 () Bool)

(assert (= bs!1094640 d!1494953))

(declare-fun m!5614659 () Bool)

(assert (=> bs!1094640 m!5614659))

(declare-fun m!5614661 () Bool)

(assert (=> bs!1094640 m!5614661))

(assert (=> b!4699944 d!1494953))

(declare-fun d!1494955 () Bool)

(declare-fun e!2932114 () Bool)

(assert (=> d!1494955 e!2932114))

(declare-fun res!1984357 () Bool)

(assert (=> d!1494955 (=> (not res!1984357) (not e!2932114))))

(declare-fun lt!1863052 () ListMap!5041)

(assert (=> d!1494955 (= res!1984357 (contains!15794 lt!1863052 (_1!30279 lt!1862518)))))

(declare-fun lt!1863053 () List!52645)

(assert (=> d!1494955 (= lt!1863052 (ListMap!5042 lt!1863053))))

(declare-fun lt!1863055 () Unit!125992)

(declare-fun lt!1863054 () Unit!125992)

(assert (=> d!1494955 (= lt!1863055 lt!1863054)))

(assert (=> d!1494955 (= (getValueByKey!1843 lt!1863053 (_1!30279 lt!1862518)) (Some!12182 (_2!30279 lt!1862518)))))

(assert (=> d!1494955 (= lt!1863054 (lemmaContainsTupThenGetReturnValue!1032 lt!1863053 (_1!30279 lt!1862518) (_2!30279 lt!1862518)))))

(assert (=> d!1494955 (= lt!1863053 (insertNoDuplicatedKeys!540 (toList!5677 (addToMapMapFromBucket!1326 lt!1862512 lt!1862511)) (_1!30279 lt!1862518) (_2!30279 lt!1862518)))))

(assert (=> d!1494955 (= (+!2178 (addToMapMapFromBucket!1326 lt!1862512 lt!1862511) lt!1862518) lt!1863052)))

(declare-fun b!4700379 () Bool)

(declare-fun res!1984356 () Bool)

(assert (=> b!4700379 (=> (not res!1984356) (not e!2932114))))

(assert (=> b!4700379 (= res!1984356 (= (getValueByKey!1843 (toList!5677 lt!1863052) (_1!30279 lt!1862518)) (Some!12182 (_2!30279 lt!1862518))))))

(declare-fun b!4700380 () Bool)

(assert (=> b!4700380 (= e!2932114 (contains!15796 (toList!5677 lt!1863052) lt!1862518))))

(assert (= (and d!1494955 res!1984357) b!4700379))

(assert (= (and b!4700379 res!1984356) b!4700380))

(declare-fun m!5614663 () Bool)

(assert (=> d!1494955 m!5614663))

(declare-fun m!5614665 () Bool)

(assert (=> d!1494955 m!5614665))

(declare-fun m!5614667 () Bool)

(assert (=> d!1494955 m!5614667))

(declare-fun m!5614669 () Bool)

(assert (=> d!1494955 m!5614669))

(declare-fun m!5614671 () Bool)

(assert (=> b!4700379 m!5614671))

(declare-fun m!5614673 () Bool)

(assert (=> b!4700380 m!5614673))

(assert (=> b!4699944 d!1494955))

(declare-fun d!1494957 () Bool)

(assert (=> d!1494957 (eq!1053 (addToMapMapFromBucket!1326 (Cons!52521 lt!1862530 lt!1862533) lt!1862511) (+!2178 (addToMapMapFromBucket!1326 lt!1862533 lt!1862511) lt!1862530))))

(declare-fun lt!1863056 () Unit!125992)

(assert (=> d!1494957 (= lt!1863056 (choose!32862 lt!1862530 lt!1862533 lt!1862511))))

(assert (=> d!1494957 (noDuplicateKeys!1894 lt!1862533)))

(assert (=> d!1494957 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!302 lt!1862530 lt!1862533 lt!1862511) lt!1863056)))

(declare-fun bs!1094641 () Bool)

(assert (= bs!1094641 d!1494957))

(declare-fun m!5614675 () Bool)

(assert (=> bs!1094641 m!5614675))

(assert (=> bs!1094641 m!5613577))

(assert (=> bs!1094641 m!5613571))

(assert (=> bs!1094641 m!5613569))

(assert (=> bs!1094641 m!5613571))

(assert (=> bs!1094641 m!5613573))

(assert (=> bs!1094641 m!5613569))

(assert (=> bs!1094641 m!5613577))

(declare-fun m!5614677 () Bool)

(assert (=> bs!1094641 m!5614677))

(assert (=> b!4699944 d!1494957))

(declare-fun d!1494959 () Bool)

(assert (=> d!1494959 (= (eq!1053 (addToMapMapFromBucket!1326 (Cons!52521 lt!1862518 lt!1862512) lt!1862511) (+!2178 (addToMapMapFromBucket!1326 lt!1862512 lt!1862511) lt!1862518)) (= (content!9257 (toList!5677 (addToMapMapFromBucket!1326 (Cons!52521 lt!1862518 lt!1862512) lt!1862511))) (content!9257 (toList!5677 (+!2178 (addToMapMapFromBucket!1326 lt!1862512 lt!1862511) lt!1862518)))))))

(declare-fun bs!1094642 () Bool)

(assert (= bs!1094642 d!1494959))

(declare-fun m!5614679 () Bool)

(assert (=> bs!1094642 m!5614679))

(declare-fun m!5614681 () Bool)

(assert (=> bs!1094642 m!5614681))

(assert (=> b!4699944 d!1494959))

(declare-fun bs!1094643 () Bool)

(declare-fun d!1494961 () Bool)

(assert (= bs!1094643 (and d!1494961 d!1494891)))

(declare-fun lambda!210060 () Int)

(assert (=> bs!1094643 (not (= lambda!210060 lambda!210051))))

(declare-fun bs!1094644 () Bool)

(assert (= bs!1094644 (and d!1494961 d!1494717)))

(assert (=> bs!1094644 (= lambda!210060 lambda!210001)))

(declare-fun bs!1094645 () Bool)

(assert (= bs!1094645 (and d!1494961 d!1494917)))

(assert (=> bs!1094645 (= lambda!210060 lambda!210054)))

(declare-fun bs!1094646 () Bool)

(assert (= bs!1094646 (and d!1494961 d!1494829)))

(assert (=> bs!1094646 (= lambda!210060 lambda!210034)))

(declare-fun bs!1094647 () Bool)

(assert (= bs!1094647 (and d!1494961 d!1494825)))

(assert (=> bs!1094647 (= lambda!210060 lambda!210033)))

(declare-fun bs!1094648 () Bool)

(assert (= bs!1094648 (and d!1494961 d!1494769)))

(assert (=> bs!1094648 (= lambda!210060 lambda!210011)))

(declare-fun bs!1094649 () Bool)

(assert (= bs!1094649 (and d!1494961 d!1494845)))

(assert (=> bs!1094649 (= lambda!210060 lambda!210038)))

(declare-fun bs!1094650 () Bool)

(assert (= bs!1094650 (and d!1494961 d!1494949)))

(assert (=> bs!1094650 (= lambda!210060 lambda!210059)))

(declare-fun bs!1094651 () Bool)

(assert (= bs!1094651 (and d!1494961 d!1494943)))

(assert (=> bs!1094651 (= lambda!210060 lambda!210058)))

(declare-fun bs!1094652 () Bool)

(assert (= bs!1094652 (and d!1494961 d!1494831)))

(assert (=> bs!1094652 (= lambda!210060 lambda!210035)))

(declare-fun bs!1094653 () Bool)

(assert (= bs!1094653 (and d!1494961 d!1494771)))

(assert (=> bs!1094653 (= lambda!210060 lambda!210025)))

(declare-fun bs!1094654 () Bool)

(assert (= bs!1094654 (and d!1494961 start!476556)))

(assert (=> bs!1094654 (= lambda!210060 lambda!209915)))

(declare-fun lt!1863057 () ListMap!5041)

(assert (=> d!1494961 (invariantList!1442 (toList!5677 lt!1863057))))

(declare-fun e!2932115 () ListMap!5041)

(assert (=> d!1494961 (= lt!1863057 e!2932115)))

(declare-fun c!803476 () Bool)

(assert (=> d!1494961 (= c!803476 ((_ is Cons!52522) (Cons!52522 lt!1862532 (t!359854 (toList!5678 lm!2023)))))))

(assert (=> d!1494961 (forall!11393 (Cons!52522 lt!1862532 (t!359854 (toList!5678 lm!2023))) lambda!210060)))

(assert (=> d!1494961 (= (extractMap!1920 (Cons!52522 lt!1862532 (t!359854 (toList!5678 lm!2023)))) lt!1863057)))

(declare-fun b!4700381 () Bool)

(assert (=> b!4700381 (= e!2932115 (addToMapMapFromBucket!1326 (_2!30280 (h!58799 (Cons!52522 lt!1862532 (t!359854 (toList!5678 lm!2023))))) (extractMap!1920 (t!359854 (Cons!52522 lt!1862532 (t!359854 (toList!5678 lm!2023)))))))))

(declare-fun b!4700382 () Bool)

(assert (=> b!4700382 (= e!2932115 (ListMap!5042 Nil!52521))))

(assert (= (and d!1494961 c!803476) b!4700381))

(assert (= (and d!1494961 (not c!803476)) b!4700382))

(declare-fun m!5614683 () Bool)

(assert (=> d!1494961 m!5614683))

(declare-fun m!5614685 () Bool)

(assert (=> d!1494961 m!5614685))

(declare-fun m!5614687 () Bool)

(assert (=> b!4700381 m!5614687))

(assert (=> b!4700381 m!5614687))

(declare-fun m!5614689 () Bool)

(assert (=> b!4700381 m!5614689))

(assert (=> b!4699944 d!1494961))

(declare-fun bs!1094655 () Bool)

(declare-fun b!4700384 () Bool)

(assert (= bs!1094655 (and b!4700384 b!4700014)))

(declare-fun lambda!210061 () Int)

(assert (=> bs!1094655 (= lambda!210061 lambda!209989)))

(declare-fun bs!1094656 () Bool)

(assert (= bs!1094656 (and b!4700384 d!1494685)))

(assert (=> bs!1094656 (= (= lt!1862511 lt!1862705) (= lambda!210061 lambda!209991))))

(assert (=> bs!1094655 (= (= lt!1862511 lt!1862702) (= lambda!210061 lambda!209990))))

(declare-fun bs!1094657 () Bool)

(assert (= bs!1094657 (and b!4700384 d!1494925)))

(assert (=> bs!1094657 (not (= lambda!210061 lambda!210055))))

(declare-fun bs!1094658 () Bool)

(assert (= bs!1094658 (and b!4700384 b!4700011)))

(assert (=> bs!1094658 (= lambda!210061 lambda!209988)))

(declare-fun bs!1094659 () Bool)

(assert (= bs!1094659 (and b!4700384 d!1494881)))

(assert (=> bs!1094659 (not (= lambda!210061 lambda!210045))))

(assert (=> b!4700384 true))

(declare-fun bs!1094660 () Bool)

(declare-fun b!4700387 () Bool)

(assert (= bs!1094660 (and b!4700387 b!4700384)))

(declare-fun lambda!210062 () Int)

(assert (=> bs!1094660 (= lambda!210062 lambda!210061)))

(declare-fun bs!1094661 () Bool)

(assert (= bs!1094661 (and b!4700387 b!4700014)))

(assert (=> bs!1094661 (= lambda!210062 lambda!209989)))

(declare-fun bs!1094662 () Bool)

(assert (= bs!1094662 (and b!4700387 d!1494685)))

(assert (=> bs!1094662 (= (= lt!1862511 lt!1862705) (= lambda!210062 lambda!209991))))

(assert (=> bs!1094661 (= (= lt!1862511 lt!1862702) (= lambda!210062 lambda!209990))))

(declare-fun bs!1094663 () Bool)

(assert (= bs!1094663 (and b!4700387 d!1494925)))

(assert (=> bs!1094663 (not (= lambda!210062 lambda!210055))))

(declare-fun bs!1094664 () Bool)

(assert (= bs!1094664 (and b!4700387 b!4700011)))

(assert (=> bs!1094664 (= lambda!210062 lambda!209988)))

(declare-fun bs!1094665 () Bool)

(assert (= bs!1094665 (and b!4700387 d!1494881)))

(assert (=> bs!1094665 (not (= lambda!210062 lambda!210045))))

(assert (=> b!4700387 true))

(declare-fun lt!1863075 () ListMap!5041)

(declare-fun lambda!210063 () Int)

(assert (=> bs!1094660 (= (= lt!1863075 lt!1862511) (= lambda!210063 lambda!210061))))

(assert (=> b!4700387 (= (= lt!1863075 lt!1862511) (= lambda!210063 lambda!210062))))

(assert (=> bs!1094661 (= (= lt!1863075 lt!1862511) (= lambda!210063 lambda!209989))))

(assert (=> bs!1094662 (= (= lt!1863075 lt!1862705) (= lambda!210063 lambda!209991))))

(assert (=> bs!1094661 (= (= lt!1863075 lt!1862702) (= lambda!210063 lambda!209990))))

(assert (=> bs!1094663 (not (= lambda!210063 lambda!210055))))

(assert (=> bs!1094664 (= (= lt!1863075 lt!1862511) (= lambda!210063 lambda!209988))))

(assert (=> bs!1094665 (not (= lambda!210063 lambda!210045))))

(assert (=> b!4700387 true))

(declare-fun bs!1094666 () Bool)

(declare-fun d!1494963 () Bool)

(assert (= bs!1094666 (and d!1494963 b!4700384)))

(declare-fun lambda!210064 () Int)

(declare-fun lt!1863078 () ListMap!5041)

(assert (=> bs!1094666 (= (= lt!1863078 lt!1862511) (= lambda!210064 lambda!210061))))

(declare-fun bs!1094667 () Bool)

(assert (= bs!1094667 (and d!1494963 b!4700387)))

(assert (=> bs!1094667 (= (= lt!1863078 lt!1863075) (= lambda!210064 lambda!210063))))

(assert (=> bs!1094667 (= (= lt!1863078 lt!1862511) (= lambda!210064 lambda!210062))))

(declare-fun bs!1094668 () Bool)

(assert (= bs!1094668 (and d!1494963 b!4700014)))

(assert (=> bs!1094668 (= (= lt!1863078 lt!1862511) (= lambda!210064 lambda!209989))))

(declare-fun bs!1094669 () Bool)

(assert (= bs!1094669 (and d!1494963 d!1494685)))

(assert (=> bs!1094669 (= (= lt!1863078 lt!1862705) (= lambda!210064 lambda!209991))))

(assert (=> bs!1094668 (= (= lt!1863078 lt!1862702) (= lambda!210064 lambda!209990))))

(declare-fun bs!1094670 () Bool)

(assert (= bs!1094670 (and d!1494963 d!1494925)))

(assert (=> bs!1094670 (not (= lambda!210064 lambda!210055))))

(declare-fun bs!1094671 () Bool)

(assert (= bs!1094671 (and d!1494963 b!4700011)))

(assert (=> bs!1094671 (= (= lt!1863078 lt!1862511) (= lambda!210064 lambda!209988))))

(declare-fun bs!1094672 () Bool)

(assert (= bs!1094672 (and d!1494963 d!1494881)))

(assert (=> bs!1094672 (not (= lambda!210064 lambda!210045))))

(assert (=> d!1494963 true))

(declare-fun e!2932117 () Bool)

(assert (=> d!1494963 e!2932117))

(declare-fun res!1984360 () Bool)

(assert (=> d!1494963 (=> (not res!1984360) (not e!2932117))))

(assert (=> d!1494963 (= res!1984360 (forall!11395 (Cons!52521 lt!1862530 lt!1862533) lambda!210064))))

(declare-fun e!2932118 () ListMap!5041)

(assert (=> d!1494963 (= lt!1863078 e!2932118)))

(declare-fun c!803477 () Bool)

(assert (=> d!1494963 (= c!803477 ((_ is Nil!52521) (Cons!52521 lt!1862530 lt!1862533)))))

(assert (=> d!1494963 (noDuplicateKeys!1894 (Cons!52521 lt!1862530 lt!1862533))))

(assert (=> d!1494963 (= (addToMapMapFromBucket!1326 (Cons!52521 lt!1862530 lt!1862533) lt!1862511) lt!1863078)))

(declare-fun b!4700383 () Bool)

(assert (=> b!4700383 (= e!2932117 (invariantList!1442 (toList!5677 lt!1863078)))))

(declare-fun bm!328591 () Bool)

(declare-fun lt!1863073 () ListMap!5041)

(declare-fun call!328597 () Bool)

(assert (=> bm!328591 (= call!328597 (forall!11395 (ite c!803477 (toList!5677 lt!1862511) (toList!5677 lt!1863073)) (ite c!803477 lambda!210061 lambda!210063)))))

(assert (=> b!4700384 (= e!2932118 lt!1862511)))

(declare-fun lt!1863058 () Unit!125992)

(declare-fun call!328596 () Unit!125992)

(assert (=> b!4700384 (= lt!1863058 call!328596)))

(declare-fun call!328598 () Bool)

(assert (=> b!4700384 call!328598))

(declare-fun lt!1863070 () Unit!125992)

(assert (=> b!4700384 (= lt!1863070 lt!1863058)))

(assert (=> b!4700384 call!328597))

(declare-fun lt!1863069 () Unit!125992)

(declare-fun Unit!126059 () Unit!125992)

(assert (=> b!4700384 (= lt!1863069 Unit!126059)))

(declare-fun b!4700385 () Bool)

(declare-fun res!1984358 () Bool)

(assert (=> b!4700385 (=> (not res!1984358) (not e!2932117))))

(assert (=> b!4700385 (= res!1984358 (forall!11395 (toList!5677 lt!1862511) lambda!210064))))

(declare-fun bm!328592 () Bool)

(assert (=> bm!328592 (= call!328596 (lemmaContainsAllItsOwnKeys!730 lt!1862511))))

(declare-fun b!4700386 () Bool)

(declare-fun e!2932116 () Bool)

(assert (=> b!4700386 (= e!2932116 (forall!11395 (toList!5677 lt!1862511) lambda!210063))))

(assert (=> b!4700387 (= e!2932118 lt!1863075)))

(assert (=> b!4700387 (= lt!1863073 (+!2178 lt!1862511 (h!58798 (Cons!52521 lt!1862530 lt!1862533))))))

(assert (=> b!4700387 (= lt!1863075 (addToMapMapFromBucket!1326 (t!359853 (Cons!52521 lt!1862530 lt!1862533)) (+!2178 lt!1862511 (h!58798 (Cons!52521 lt!1862530 lt!1862533)))))))

(declare-fun lt!1863066 () Unit!125992)

(assert (=> b!4700387 (= lt!1863066 call!328596)))

(assert (=> b!4700387 (forall!11395 (toList!5677 lt!1862511) lambda!210062)))

(declare-fun lt!1863076 () Unit!125992)

(assert (=> b!4700387 (= lt!1863076 lt!1863066)))

(assert (=> b!4700387 call!328597))

(declare-fun lt!1863068 () Unit!125992)

(declare-fun Unit!126060 () Unit!125992)

(assert (=> b!4700387 (= lt!1863068 Unit!126060)))

(assert (=> b!4700387 (forall!11395 (t!359853 (Cons!52521 lt!1862530 lt!1862533)) lambda!210063)))

(declare-fun lt!1863061 () Unit!125992)

(declare-fun Unit!126061 () Unit!125992)

(assert (=> b!4700387 (= lt!1863061 Unit!126061)))

(declare-fun lt!1863062 () Unit!125992)

(declare-fun Unit!126062 () Unit!125992)

(assert (=> b!4700387 (= lt!1863062 Unit!126062)))

(declare-fun lt!1863060 () Unit!125992)

(assert (=> b!4700387 (= lt!1863060 (forallContained!3502 (toList!5677 lt!1863073) lambda!210063 (h!58798 (Cons!52521 lt!1862530 lt!1862533))))))

(assert (=> b!4700387 (contains!15794 lt!1863073 (_1!30279 (h!58798 (Cons!52521 lt!1862530 lt!1862533))))))

(declare-fun lt!1863064 () Unit!125992)

(declare-fun Unit!126063 () Unit!125992)

(assert (=> b!4700387 (= lt!1863064 Unit!126063)))

(assert (=> b!4700387 (contains!15794 lt!1863075 (_1!30279 (h!58798 (Cons!52521 lt!1862530 lt!1862533))))))

(declare-fun lt!1863065 () Unit!125992)

(declare-fun Unit!126064 () Unit!125992)

(assert (=> b!4700387 (= lt!1863065 Unit!126064)))

(assert (=> b!4700387 (forall!11395 (Cons!52521 lt!1862530 lt!1862533) lambda!210063)))

(declare-fun lt!1863071 () Unit!125992)

(declare-fun Unit!126065 () Unit!125992)

(assert (=> b!4700387 (= lt!1863071 Unit!126065)))

(assert (=> b!4700387 (forall!11395 (toList!5677 lt!1863073) lambda!210063)))

(declare-fun lt!1863077 () Unit!125992)

(declare-fun Unit!126066 () Unit!125992)

(assert (=> b!4700387 (= lt!1863077 Unit!126066)))

(declare-fun lt!1863072 () Unit!125992)

(declare-fun Unit!126067 () Unit!125992)

(assert (=> b!4700387 (= lt!1863072 Unit!126067)))

(declare-fun lt!1863074 () Unit!125992)

(assert (=> b!4700387 (= lt!1863074 (addForallContainsKeyThenBeforeAdding!729 lt!1862511 lt!1863075 (_1!30279 (h!58798 (Cons!52521 lt!1862530 lt!1862533))) (_2!30279 (h!58798 (Cons!52521 lt!1862530 lt!1862533)))))))

(assert (=> b!4700387 (forall!11395 (toList!5677 lt!1862511) lambda!210063)))

(declare-fun lt!1863067 () Unit!125992)

(assert (=> b!4700387 (= lt!1863067 lt!1863074)))

(assert (=> b!4700387 call!328598))

(declare-fun lt!1863063 () Unit!125992)

(declare-fun Unit!126068 () Unit!125992)

(assert (=> b!4700387 (= lt!1863063 Unit!126068)))

(declare-fun res!1984359 () Bool)

(assert (=> b!4700387 (= res!1984359 (forall!11395 (Cons!52521 lt!1862530 lt!1862533) lambda!210063))))

(assert (=> b!4700387 (=> (not res!1984359) (not e!2932116))))

(assert (=> b!4700387 e!2932116))

(declare-fun lt!1863059 () Unit!125992)

(declare-fun Unit!126069 () Unit!125992)

(assert (=> b!4700387 (= lt!1863059 Unit!126069)))

(declare-fun bm!328593 () Bool)

(assert (=> bm!328593 (= call!328598 (forall!11395 (toList!5677 lt!1862511) (ite c!803477 lambda!210061 lambda!210063)))))

(assert (= (and d!1494963 c!803477) b!4700384))

(assert (= (and d!1494963 (not c!803477)) b!4700387))

(assert (= (and b!4700387 res!1984359) b!4700386))

(assert (= (or b!4700384 b!4700387) bm!328592))

(assert (= (or b!4700384 b!4700387) bm!328593))

(assert (= (or b!4700384 b!4700387) bm!328591))

(assert (= (and d!1494963 res!1984360) b!4700385))

(assert (= (and b!4700385 res!1984358) b!4700383))

(assert (=> bm!328592 m!5613815))

(declare-fun m!5614691 () Bool)

(assert (=> b!4700385 m!5614691))

(declare-fun m!5614693 () Bool)

(assert (=> b!4700383 m!5614693))

(declare-fun m!5614695 () Bool)

(assert (=> bm!328591 m!5614695))

(declare-fun m!5614697 () Bool)

(assert (=> b!4700386 m!5614697))

(declare-fun m!5614699 () Bool)

(assert (=> b!4700387 m!5614699))

(declare-fun m!5614701 () Bool)

(assert (=> b!4700387 m!5614701))

(declare-fun m!5614703 () Bool)

(assert (=> b!4700387 m!5614703))

(declare-fun m!5614705 () Bool)

(assert (=> b!4700387 m!5614705))

(declare-fun m!5614707 () Bool)

(assert (=> b!4700387 m!5614707))

(assert (=> b!4700387 m!5614707))

(assert (=> b!4700387 m!5614697))

(declare-fun m!5614709 () Bool)

(assert (=> b!4700387 m!5614709))

(declare-fun m!5614711 () Bool)

(assert (=> b!4700387 m!5614711))

(declare-fun m!5614713 () Bool)

(assert (=> b!4700387 m!5614713))

(assert (=> b!4700387 m!5614703))

(declare-fun m!5614715 () Bool)

(assert (=> b!4700387 m!5614715))

(declare-fun m!5614717 () Bool)

(assert (=> b!4700387 m!5614717))

(declare-fun m!5614719 () Bool)

(assert (=> bm!328593 m!5614719))

(declare-fun m!5614721 () Bool)

(assert (=> d!1494963 m!5614721))

(declare-fun m!5614723 () Bool)

(assert (=> d!1494963 m!5614723))

(assert (=> b!4699944 d!1494963))

(declare-fun bs!1094673 () Bool)

(declare-fun d!1494965 () Bool)

(assert (= bs!1094673 (and d!1494965 d!1494891)))

(declare-fun lambda!210065 () Int)

(assert (=> bs!1094673 (not (= lambda!210065 lambda!210051))))

(declare-fun bs!1094674 () Bool)

(assert (= bs!1094674 (and d!1494965 d!1494717)))

(assert (=> bs!1094674 (= lambda!210065 lambda!210001)))

(declare-fun bs!1094675 () Bool)

(assert (= bs!1094675 (and d!1494965 d!1494917)))

(assert (=> bs!1094675 (= lambda!210065 lambda!210054)))

(declare-fun bs!1094676 () Bool)

(assert (= bs!1094676 (and d!1494965 d!1494829)))

(assert (=> bs!1094676 (= lambda!210065 lambda!210034)))

(declare-fun bs!1094677 () Bool)

(assert (= bs!1094677 (and d!1494965 d!1494825)))

(assert (=> bs!1094677 (= lambda!210065 lambda!210033)))

(declare-fun bs!1094678 () Bool)

(assert (= bs!1094678 (and d!1494965 d!1494769)))

(assert (=> bs!1094678 (= lambda!210065 lambda!210011)))

(declare-fun bs!1094679 () Bool)

(assert (= bs!1094679 (and d!1494965 d!1494845)))

(assert (=> bs!1094679 (= lambda!210065 lambda!210038)))

(declare-fun bs!1094680 () Bool)

(assert (= bs!1094680 (and d!1494965 d!1494949)))

(assert (=> bs!1094680 (= lambda!210065 lambda!210059)))

(declare-fun bs!1094681 () Bool)

(assert (= bs!1094681 (and d!1494965 d!1494943)))

(assert (=> bs!1094681 (= lambda!210065 lambda!210058)))

(declare-fun bs!1094682 () Bool)

(assert (= bs!1094682 (and d!1494965 d!1494831)))

(assert (=> bs!1094682 (= lambda!210065 lambda!210035)))

(declare-fun bs!1094683 () Bool)

(assert (= bs!1094683 (and d!1494965 d!1494961)))

(assert (=> bs!1094683 (= lambda!210065 lambda!210060)))

(declare-fun bs!1094684 () Bool)

(assert (= bs!1094684 (and d!1494965 d!1494771)))

(assert (=> bs!1094684 (= lambda!210065 lambda!210025)))

(declare-fun bs!1094685 () Bool)

(assert (= bs!1094685 (and d!1494965 start!476556)))

(assert (=> bs!1094685 (= lambda!210065 lambda!209915)))

(declare-fun lt!1863079 () ListMap!5041)

(assert (=> d!1494965 (invariantList!1442 (toList!5677 lt!1863079))))

(declare-fun e!2932119 () ListMap!5041)

(assert (=> d!1494965 (= lt!1863079 e!2932119)))

(declare-fun c!803478 () Bool)

(assert (=> d!1494965 (= c!803478 ((_ is Cons!52522) (Cons!52522 (tuple2!53973 hash!405 lt!1862512) (t!359854 (toList!5678 lm!2023)))))))

(assert (=> d!1494965 (forall!11393 (Cons!52522 (tuple2!53973 hash!405 lt!1862512) (t!359854 (toList!5678 lm!2023))) lambda!210065)))

(assert (=> d!1494965 (= (extractMap!1920 (Cons!52522 (tuple2!53973 hash!405 lt!1862512) (t!359854 (toList!5678 lm!2023)))) lt!1863079)))

(declare-fun b!4700388 () Bool)

(assert (=> b!4700388 (= e!2932119 (addToMapMapFromBucket!1326 (_2!30280 (h!58799 (Cons!52522 (tuple2!53973 hash!405 lt!1862512) (t!359854 (toList!5678 lm!2023))))) (extractMap!1920 (t!359854 (Cons!52522 (tuple2!53973 hash!405 lt!1862512) (t!359854 (toList!5678 lm!2023)))))))))

(declare-fun b!4700389 () Bool)

(assert (=> b!4700389 (= e!2932119 (ListMap!5042 Nil!52521))))

(assert (= (and d!1494965 c!803478) b!4700388))

(assert (= (and d!1494965 (not c!803478)) b!4700389))

(declare-fun m!5614725 () Bool)

(assert (=> d!1494965 m!5614725))

(declare-fun m!5614727 () Bool)

(assert (=> d!1494965 m!5614727))

(declare-fun m!5614729 () Bool)

(assert (=> b!4700388 m!5614729))

(assert (=> b!4700388 m!5614729))

(declare-fun m!5614731 () Bool)

(assert (=> b!4700388 m!5614731))

(assert (=> b!4699944 d!1494965))

(declare-fun d!1494967 () Bool)

(assert (=> d!1494967 (= (eq!1053 lt!1862510 (+!2178 lt!1862498 (h!58798 oldBucket!34))) (= (content!9257 (toList!5677 lt!1862510)) (content!9257 (toList!5677 (+!2178 lt!1862498 (h!58798 oldBucket!34))))))))

(declare-fun bs!1094686 () Bool)

(assert (= bs!1094686 d!1494967))

(assert (=> bs!1094686 m!5614433))

(declare-fun m!5614733 () Bool)

(assert (=> bs!1094686 m!5614733))

(assert (=> b!4699944 d!1494967))

(declare-fun d!1494969 () Bool)

(declare-fun e!2932120 () Bool)

(assert (=> d!1494969 e!2932120))

(declare-fun res!1984362 () Bool)

(assert (=> d!1494969 (=> (not res!1984362) (not e!2932120))))

(declare-fun lt!1863080 () ListMap!5041)

(assert (=> d!1494969 (= res!1984362 (contains!15794 lt!1863080 (_1!30279 (h!58798 oldBucket!34))))))

(declare-fun lt!1863081 () List!52645)

(assert (=> d!1494969 (= lt!1863080 (ListMap!5042 lt!1863081))))

(declare-fun lt!1863083 () Unit!125992)

(declare-fun lt!1863082 () Unit!125992)

(assert (=> d!1494969 (= lt!1863083 lt!1863082)))

(assert (=> d!1494969 (= (getValueByKey!1843 lt!1863081 (_1!30279 (h!58798 oldBucket!34))) (Some!12182 (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494969 (= lt!1863082 (lemmaContainsTupThenGetReturnValue!1032 lt!1863081 (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494969 (= lt!1863081 (insertNoDuplicatedKeys!540 (toList!5677 lt!1862498) (_1!30279 (h!58798 oldBucket!34)) (_2!30279 (h!58798 oldBucket!34))))))

(assert (=> d!1494969 (= (+!2178 lt!1862498 (h!58798 oldBucket!34)) lt!1863080)))

(declare-fun b!4700390 () Bool)

(declare-fun res!1984361 () Bool)

(assert (=> b!4700390 (=> (not res!1984361) (not e!2932120))))

(assert (=> b!4700390 (= res!1984361 (= (getValueByKey!1843 (toList!5677 lt!1863080) (_1!30279 (h!58798 oldBucket!34))) (Some!12182 (_2!30279 (h!58798 oldBucket!34)))))))

(declare-fun b!4700391 () Bool)

(assert (=> b!4700391 (= e!2932120 (contains!15796 (toList!5677 lt!1863080) (h!58798 oldBucket!34)))))

(assert (= (and d!1494969 res!1984362) b!4700390))

(assert (= (and b!4700390 res!1984361) b!4700391))

(declare-fun m!5614735 () Bool)

(assert (=> d!1494969 m!5614735))

(declare-fun m!5614737 () Bool)

(assert (=> d!1494969 m!5614737))

(declare-fun m!5614739 () Bool)

(assert (=> d!1494969 m!5614739))

(declare-fun m!5614741 () Bool)

(assert (=> d!1494969 m!5614741))

(declare-fun m!5614743 () Bool)

(assert (=> b!4700390 m!5614743))

(declare-fun m!5614745 () Bool)

(assert (=> b!4700391 m!5614745))

(assert (=> b!4699944 d!1494969))

(declare-fun bs!1094687 () Bool)

(declare-fun b!4700393 () Bool)

(assert (= bs!1094687 (and b!4700393 b!4700384)))

(declare-fun lambda!210066 () Int)

(assert (=> bs!1094687 (= lambda!210066 lambda!210061)))

(declare-fun bs!1094688 () Bool)

(assert (= bs!1094688 (and b!4700393 b!4700387)))

(assert (=> bs!1094688 (= (= lt!1862511 lt!1863075) (= lambda!210066 lambda!210063))))

(assert (=> bs!1094688 (= lambda!210066 lambda!210062)))

(declare-fun bs!1094689 () Bool)

(assert (= bs!1094689 (and b!4700393 b!4700014)))

(assert (=> bs!1094689 (= lambda!210066 lambda!209989)))

(declare-fun bs!1094690 () Bool)

(assert (= bs!1094690 (and b!4700393 d!1494685)))

(assert (=> bs!1094690 (= (= lt!1862511 lt!1862705) (= lambda!210066 lambda!209991))))

(assert (=> bs!1094689 (= (= lt!1862511 lt!1862702) (= lambda!210066 lambda!209990))))

(declare-fun bs!1094691 () Bool)

(assert (= bs!1094691 (and b!4700393 d!1494963)))

(assert (=> bs!1094691 (= (= lt!1862511 lt!1863078) (= lambda!210066 lambda!210064))))

(declare-fun bs!1094692 () Bool)

(assert (= bs!1094692 (and b!4700393 d!1494925)))

(assert (=> bs!1094692 (not (= lambda!210066 lambda!210055))))

(declare-fun bs!1094693 () Bool)

(assert (= bs!1094693 (and b!4700393 b!4700011)))

(assert (=> bs!1094693 (= lambda!210066 lambda!209988)))

(declare-fun bs!1094694 () Bool)

(assert (= bs!1094694 (and b!4700393 d!1494881)))

(assert (=> bs!1094694 (not (= lambda!210066 lambda!210045))))

(assert (=> b!4700393 true))

(declare-fun bs!1094695 () Bool)

(declare-fun b!4700396 () Bool)

(assert (= bs!1094695 (and b!4700396 b!4700384)))

(declare-fun lambda!210067 () Int)

(assert (=> bs!1094695 (= lambda!210067 lambda!210061)))

(declare-fun bs!1094696 () Bool)

(assert (= bs!1094696 (and b!4700396 b!4700387)))

(assert (=> bs!1094696 (= (= lt!1862511 lt!1863075) (= lambda!210067 lambda!210063))))

(declare-fun bs!1094697 () Bool)

(assert (= bs!1094697 (and b!4700396 b!4700393)))

(assert (=> bs!1094697 (= lambda!210067 lambda!210066)))

(assert (=> bs!1094696 (= lambda!210067 lambda!210062)))

(declare-fun bs!1094698 () Bool)

(assert (= bs!1094698 (and b!4700396 b!4700014)))

(assert (=> bs!1094698 (= lambda!210067 lambda!209989)))

(declare-fun bs!1094699 () Bool)

(assert (= bs!1094699 (and b!4700396 d!1494685)))

(assert (=> bs!1094699 (= (= lt!1862511 lt!1862705) (= lambda!210067 lambda!209991))))

(assert (=> bs!1094698 (= (= lt!1862511 lt!1862702) (= lambda!210067 lambda!209990))))

(declare-fun bs!1094700 () Bool)

(assert (= bs!1094700 (and b!4700396 d!1494963)))

(assert (=> bs!1094700 (= (= lt!1862511 lt!1863078) (= lambda!210067 lambda!210064))))

(declare-fun bs!1094701 () Bool)

(assert (= bs!1094701 (and b!4700396 d!1494925)))

(assert (=> bs!1094701 (not (= lambda!210067 lambda!210055))))

(declare-fun bs!1094702 () Bool)

(assert (= bs!1094702 (and b!4700396 b!4700011)))

(assert (=> bs!1094702 (= lambda!210067 lambda!209988)))

(declare-fun bs!1094703 () Bool)

(assert (= bs!1094703 (and b!4700396 d!1494881)))

(assert (=> bs!1094703 (not (= lambda!210067 lambda!210045))))

(assert (=> b!4700396 true))

(declare-fun lambda!210068 () Int)

(declare-fun lt!1863101 () ListMap!5041)

(assert (=> bs!1094695 (= (= lt!1863101 lt!1862511) (= lambda!210068 lambda!210061))))

(assert (=> bs!1094697 (= (= lt!1863101 lt!1862511) (= lambda!210068 lambda!210066))))

(assert (=> bs!1094696 (= (= lt!1863101 lt!1862511) (= lambda!210068 lambda!210062))))

(assert (=> bs!1094698 (= (= lt!1863101 lt!1862511) (= lambda!210068 lambda!209989))))

(assert (=> bs!1094699 (= (= lt!1863101 lt!1862705) (= lambda!210068 lambda!209991))))

(assert (=> bs!1094698 (= (= lt!1863101 lt!1862702) (= lambda!210068 lambda!209990))))

(assert (=> bs!1094700 (= (= lt!1863101 lt!1863078) (= lambda!210068 lambda!210064))))

(assert (=> bs!1094701 (not (= lambda!210068 lambda!210055))))

(assert (=> b!4700396 (= (= lt!1863101 lt!1862511) (= lambda!210068 lambda!210067))))

(assert (=> bs!1094696 (= (= lt!1863101 lt!1863075) (= lambda!210068 lambda!210063))))

(assert (=> bs!1094702 (= (= lt!1863101 lt!1862511) (= lambda!210068 lambda!209988))))

(assert (=> bs!1094703 (not (= lambda!210068 lambda!210045))))

(assert (=> b!4700396 true))

(declare-fun bs!1094704 () Bool)

(declare-fun d!1494971 () Bool)

(assert (= bs!1094704 (and d!1494971 b!4700384)))

(declare-fun lambda!210069 () Int)

(declare-fun lt!1863104 () ListMap!5041)

(assert (=> bs!1094704 (= (= lt!1863104 lt!1862511) (= lambda!210069 lambda!210061))))

(declare-fun bs!1094705 () Bool)

(assert (= bs!1094705 (and d!1494971 b!4700393)))

(assert (=> bs!1094705 (= (= lt!1863104 lt!1862511) (= lambda!210069 lambda!210066))))

(declare-fun bs!1094706 () Bool)

(assert (= bs!1094706 (and d!1494971 b!4700387)))

(assert (=> bs!1094706 (= (= lt!1863104 lt!1862511) (= lambda!210069 lambda!210062))))

(declare-fun bs!1094707 () Bool)

(assert (= bs!1094707 (and d!1494971 b!4700014)))

(assert (=> bs!1094707 (= (= lt!1863104 lt!1862511) (= lambda!210069 lambda!209989))))

(declare-fun bs!1094708 () Bool)

(assert (= bs!1094708 (and d!1494971 d!1494685)))

(assert (=> bs!1094708 (= (= lt!1863104 lt!1862705) (= lambda!210069 lambda!209991))))

(declare-fun bs!1094709 () Bool)

(assert (= bs!1094709 (and d!1494971 d!1494963)))

(assert (=> bs!1094709 (= (= lt!1863104 lt!1863078) (= lambda!210069 lambda!210064))))

(declare-fun bs!1094710 () Bool)

(assert (= bs!1094710 (and d!1494971 d!1494925)))

(assert (=> bs!1094710 (not (= lambda!210069 lambda!210055))))

(declare-fun bs!1094711 () Bool)

(assert (= bs!1094711 (and d!1494971 b!4700396)))

(assert (=> bs!1094711 (= (= lt!1863104 lt!1862511) (= lambda!210069 lambda!210067))))

(assert (=> bs!1094706 (= (= lt!1863104 lt!1863075) (= lambda!210069 lambda!210063))))

(declare-fun bs!1094712 () Bool)

(assert (= bs!1094712 (and d!1494971 b!4700011)))

(assert (=> bs!1094712 (= (= lt!1863104 lt!1862511) (= lambda!210069 lambda!209988))))

(declare-fun bs!1094713 () Bool)

(assert (= bs!1094713 (and d!1494971 d!1494881)))

(assert (=> bs!1094713 (not (= lambda!210069 lambda!210045))))

(assert (=> bs!1094711 (= (= lt!1863104 lt!1863101) (= lambda!210069 lambda!210068))))

(assert (=> bs!1094707 (= (= lt!1863104 lt!1862702) (= lambda!210069 lambda!209990))))

(assert (=> d!1494971 true))

(declare-fun e!2932122 () Bool)

(assert (=> d!1494971 e!2932122))

(declare-fun res!1984365 () Bool)

(assert (=> d!1494971 (=> (not res!1984365) (not e!2932122))))

(assert (=> d!1494971 (= res!1984365 (forall!11395 (Cons!52521 lt!1862518 lt!1862512) lambda!210069))))

(declare-fun e!2932123 () ListMap!5041)

(assert (=> d!1494971 (= lt!1863104 e!2932123)))

(declare-fun c!803479 () Bool)

(assert (=> d!1494971 (= c!803479 ((_ is Nil!52521) (Cons!52521 lt!1862518 lt!1862512)))))

(assert (=> d!1494971 (noDuplicateKeys!1894 (Cons!52521 lt!1862518 lt!1862512))))

(assert (=> d!1494971 (= (addToMapMapFromBucket!1326 (Cons!52521 lt!1862518 lt!1862512) lt!1862511) lt!1863104)))

(declare-fun b!4700392 () Bool)

(assert (=> b!4700392 (= e!2932122 (invariantList!1442 (toList!5677 lt!1863104)))))

(declare-fun call!328600 () Bool)

(declare-fun lt!1863099 () ListMap!5041)

(declare-fun bm!328594 () Bool)

(assert (=> bm!328594 (= call!328600 (forall!11395 (ite c!803479 (toList!5677 lt!1862511) (toList!5677 lt!1863099)) (ite c!803479 lambda!210066 lambda!210068)))))

(assert (=> b!4700393 (= e!2932123 lt!1862511)))

(declare-fun lt!1863084 () Unit!125992)

(declare-fun call!328599 () Unit!125992)

(assert (=> b!4700393 (= lt!1863084 call!328599)))

(declare-fun call!328601 () Bool)

(assert (=> b!4700393 call!328601))

(declare-fun lt!1863096 () Unit!125992)

(assert (=> b!4700393 (= lt!1863096 lt!1863084)))

(assert (=> b!4700393 call!328600))

(declare-fun lt!1863095 () Unit!125992)

(declare-fun Unit!126078 () Unit!125992)

(assert (=> b!4700393 (= lt!1863095 Unit!126078)))

(declare-fun b!4700394 () Bool)

(declare-fun res!1984363 () Bool)

(assert (=> b!4700394 (=> (not res!1984363) (not e!2932122))))

(assert (=> b!4700394 (= res!1984363 (forall!11395 (toList!5677 lt!1862511) lambda!210069))))

(declare-fun bm!328595 () Bool)

(assert (=> bm!328595 (= call!328599 (lemmaContainsAllItsOwnKeys!730 lt!1862511))))

(declare-fun b!4700395 () Bool)

(declare-fun e!2932121 () Bool)

(assert (=> b!4700395 (= e!2932121 (forall!11395 (toList!5677 lt!1862511) lambda!210068))))

(assert (=> b!4700396 (= e!2932123 lt!1863101)))

(assert (=> b!4700396 (= lt!1863099 (+!2178 lt!1862511 (h!58798 (Cons!52521 lt!1862518 lt!1862512))))))

(assert (=> b!4700396 (= lt!1863101 (addToMapMapFromBucket!1326 (t!359853 (Cons!52521 lt!1862518 lt!1862512)) (+!2178 lt!1862511 (h!58798 (Cons!52521 lt!1862518 lt!1862512)))))))

(declare-fun lt!1863092 () Unit!125992)

(assert (=> b!4700396 (= lt!1863092 call!328599)))

(assert (=> b!4700396 (forall!11395 (toList!5677 lt!1862511) lambda!210067)))

(declare-fun lt!1863102 () Unit!125992)

(assert (=> b!4700396 (= lt!1863102 lt!1863092)))

(assert (=> b!4700396 call!328600))

(declare-fun lt!1863094 () Unit!125992)

(declare-fun Unit!126081 () Unit!125992)

(assert (=> b!4700396 (= lt!1863094 Unit!126081)))

(assert (=> b!4700396 (forall!11395 (t!359853 (Cons!52521 lt!1862518 lt!1862512)) lambda!210068)))

(declare-fun lt!1863087 () Unit!125992)

(declare-fun Unit!126082 () Unit!125992)

(assert (=> b!4700396 (= lt!1863087 Unit!126082)))

(declare-fun lt!1863088 () Unit!125992)

(declare-fun Unit!126083 () Unit!125992)

(assert (=> b!4700396 (= lt!1863088 Unit!126083)))

(declare-fun lt!1863086 () Unit!125992)

(assert (=> b!4700396 (= lt!1863086 (forallContained!3502 (toList!5677 lt!1863099) lambda!210068 (h!58798 (Cons!52521 lt!1862518 lt!1862512))))))

(assert (=> b!4700396 (contains!15794 lt!1863099 (_1!30279 (h!58798 (Cons!52521 lt!1862518 lt!1862512))))))

(declare-fun lt!1863090 () Unit!125992)

(declare-fun Unit!126084 () Unit!125992)

(assert (=> b!4700396 (= lt!1863090 Unit!126084)))

(assert (=> b!4700396 (contains!15794 lt!1863101 (_1!30279 (h!58798 (Cons!52521 lt!1862518 lt!1862512))))))

(declare-fun lt!1863091 () Unit!125992)

(declare-fun Unit!126085 () Unit!125992)

(assert (=> b!4700396 (= lt!1863091 Unit!126085)))

(assert (=> b!4700396 (forall!11395 (Cons!52521 lt!1862518 lt!1862512) lambda!210068)))

(declare-fun lt!1863097 () Unit!125992)

(declare-fun Unit!126086 () Unit!125992)

(assert (=> b!4700396 (= lt!1863097 Unit!126086)))

(assert (=> b!4700396 (forall!11395 (toList!5677 lt!1863099) lambda!210068)))

(declare-fun lt!1863103 () Unit!125992)

(declare-fun Unit!126087 () Unit!125992)

(assert (=> b!4700396 (= lt!1863103 Unit!126087)))

(declare-fun lt!1863098 () Unit!125992)

(declare-fun Unit!126088 () Unit!125992)

(assert (=> b!4700396 (= lt!1863098 Unit!126088)))

(declare-fun lt!1863100 () Unit!125992)

(assert (=> b!4700396 (= lt!1863100 (addForallContainsKeyThenBeforeAdding!729 lt!1862511 lt!1863101 (_1!30279 (h!58798 (Cons!52521 lt!1862518 lt!1862512))) (_2!30279 (h!58798 (Cons!52521 lt!1862518 lt!1862512)))))))

(assert (=> b!4700396 (forall!11395 (toList!5677 lt!1862511) lambda!210068)))

(declare-fun lt!1863093 () Unit!125992)

(assert (=> b!4700396 (= lt!1863093 lt!1863100)))

(assert (=> b!4700396 call!328601))

(declare-fun lt!1863089 () Unit!125992)

(declare-fun Unit!126090 () Unit!125992)

(assert (=> b!4700396 (= lt!1863089 Unit!126090)))

(declare-fun res!1984364 () Bool)

(assert (=> b!4700396 (= res!1984364 (forall!11395 (Cons!52521 lt!1862518 lt!1862512) lambda!210068))))

(assert (=> b!4700396 (=> (not res!1984364) (not e!2932121))))

(assert (=> b!4700396 e!2932121))

(declare-fun lt!1863085 () Unit!125992)

(declare-fun Unit!126091 () Unit!125992)

(assert (=> b!4700396 (= lt!1863085 Unit!126091)))

(declare-fun bm!328596 () Bool)

(assert (=> bm!328596 (= call!328601 (forall!11395 (toList!5677 lt!1862511) (ite c!803479 lambda!210066 lambda!210068)))))

(assert (= (and d!1494971 c!803479) b!4700393))

(assert (= (and d!1494971 (not c!803479)) b!4700396))

(assert (= (and b!4700396 res!1984364) b!4700395))

(assert (= (or b!4700393 b!4700396) bm!328595))

(assert (= (or b!4700393 b!4700396) bm!328596))

(assert (= (or b!4700393 b!4700396) bm!328594))

(assert (= (and d!1494971 res!1984365) b!4700394))

(assert (= (and b!4700394 res!1984363) b!4700392))

(assert (=> bm!328595 m!5613815))

(declare-fun m!5614747 () Bool)

(assert (=> b!4700394 m!5614747))

(declare-fun m!5614749 () Bool)

(assert (=> b!4700392 m!5614749))

(declare-fun m!5614751 () Bool)

(assert (=> bm!328594 m!5614751))

(declare-fun m!5614753 () Bool)

(assert (=> b!4700395 m!5614753))

(declare-fun m!5614755 () Bool)

(assert (=> b!4700396 m!5614755))

(declare-fun m!5614757 () Bool)

(assert (=> b!4700396 m!5614757))

(declare-fun m!5614759 () Bool)

(assert (=> b!4700396 m!5614759))

(declare-fun m!5614761 () Bool)

(assert (=> b!4700396 m!5614761))

(declare-fun m!5614763 () Bool)

(assert (=> b!4700396 m!5614763))

(assert (=> b!4700396 m!5614763))

(assert (=> b!4700396 m!5614753))

(declare-fun m!5614765 () Bool)

(assert (=> b!4700396 m!5614765))

(declare-fun m!5614767 () Bool)

(assert (=> b!4700396 m!5614767))

(declare-fun m!5614769 () Bool)

(assert (=> b!4700396 m!5614769))

(assert (=> b!4700396 m!5614759))

(declare-fun m!5614771 () Bool)

(assert (=> b!4700396 m!5614771))

(declare-fun m!5614773 () Bool)

(assert (=> b!4700396 m!5614773))

(declare-fun m!5614775 () Bool)

(assert (=> bm!328596 m!5614775))

(declare-fun m!5614777 () Bool)

(assert (=> d!1494971 m!5614777))

(declare-fun m!5614779 () Bool)

(assert (=> d!1494971 m!5614779))

(assert (=> b!4699944 d!1494971))

(declare-fun bs!1094714 () Bool)

(declare-fun b!4700398 () Bool)

(assert (= bs!1094714 (and b!4700398 b!4700384)))

(declare-fun lambda!210070 () Int)

(assert (=> bs!1094714 (= lambda!210070 lambda!210061)))

(declare-fun bs!1094715 () Bool)

(assert (= bs!1094715 (and b!4700398 b!4700393)))

(assert (=> bs!1094715 (= lambda!210070 lambda!210066)))

(declare-fun bs!1094716 () Bool)

(assert (= bs!1094716 (and b!4700398 b!4700387)))

(assert (=> bs!1094716 (= lambda!210070 lambda!210062)))

(declare-fun bs!1094717 () Bool)

(assert (= bs!1094717 (and b!4700398 b!4700014)))

(assert (=> bs!1094717 (= lambda!210070 lambda!209989)))

(declare-fun bs!1094718 () Bool)

(assert (= bs!1094718 (and b!4700398 d!1494685)))

(assert (=> bs!1094718 (= (= lt!1862511 lt!1862705) (= lambda!210070 lambda!209991))))

(declare-fun bs!1094719 () Bool)

(assert (= bs!1094719 (and b!4700398 d!1494971)))

(assert (=> bs!1094719 (= (= lt!1862511 lt!1863104) (= lambda!210070 lambda!210069))))

(declare-fun bs!1094720 () Bool)

(assert (= bs!1094720 (and b!4700398 d!1494963)))

(assert (=> bs!1094720 (= (= lt!1862511 lt!1863078) (= lambda!210070 lambda!210064))))

(declare-fun bs!1094721 () Bool)

(assert (= bs!1094721 (and b!4700398 d!1494925)))

(assert (=> bs!1094721 (not (= lambda!210070 lambda!210055))))

(declare-fun bs!1094722 () Bool)

(assert (= bs!1094722 (and b!4700398 b!4700396)))

(assert (=> bs!1094722 (= lambda!210070 lambda!210067)))

(assert (=> bs!1094716 (= (= lt!1862511 lt!1863075) (= lambda!210070 lambda!210063))))

(declare-fun bs!1094723 () Bool)

(assert (= bs!1094723 (and b!4700398 b!4700011)))

(assert (=> bs!1094723 (= lambda!210070 lambda!209988)))

(declare-fun bs!1094724 () Bool)

(assert (= bs!1094724 (and b!4700398 d!1494881)))

(assert (=> bs!1094724 (not (= lambda!210070 lambda!210045))))

(assert (=> bs!1094722 (= (= lt!1862511 lt!1863101) (= lambda!210070 lambda!210068))))

(assert (=> bs!1094717 (= (= lt!1862511 lt!1862702) (= lambda!210070 lambda!209990))))

(assert (=> b!4700398 true))

(declare-fun bs!1094725 () Bool)

(declare-fun b!4700401 () Bool)

(assert (= bs!1094725 (and b!4700401 b!4700384)))

(declare-fun lambda!210071 () Int)

(assert (=> bs!1094725 (= lambda!210071 lambda!210061)))

(declare-fun bs!1094726 () Bool)

(assert (= bs!1094726 (and b!4700401 b!4700398)))

(assert (=> bs!1094726 (= lambda!210071 lambda!210070)))

(declare-fun bs!1094727 () Bool)

(assert (= bs!1094727 (and b!4700401 b!4700393)))

(assert (=> bs!1094727 (= lambda!210071 lambda!210066)))

(declare-fun bs!1094728 () Bool)

(assert (= bs!1094728 (and b!4700401 b!4700387)))

(assert (=> bs!1094728 (= lambda!210071 lambda!210062)))

(declare-fun bs!1094729 () Bool)

(assert (= bs!1094729 (and b!4700401 b!4700014)))

(assert (=> bs!1094729 (= lambda!210071 lambda!209989)))

(declare-fun bs!1094730 () Bool)

(assert (= bs!1094730 (and b!4700401 d!1494685)))

(assert (=> bs!1094730 (= (= lt!1862511 lt!1862705) (= lambda!210071 lambda!209991))))

(declare-fun bs!1094731 () Bool)

(assert (= bs!1094731 (and b!4700401 d!1494971)))

(assert (=> bs!1094731 (= (= lt!1862511 lt!1863104) (= lambda!210071 lambda!210069))))

(declare-fun bs!1094732 () Bool)

(assert (= bs!1094732 (and b!4700401 d!1494963)))

(assert (=> bs!1094732 (= (= lt!1862511 lt!1863078) (= lambda!210071 lambda!210064))))

(declare-fun bs!1094733 () Bool)

(assert (= bs!1094733 (and b!4700401 d!1494925)))

(assert (=> bs!1094733 (not (= lambda!210071 lambda!210055))))

(declare-fun bs!1094734 () Bool)

(assert (= bs!1094734 (and b!4700401 b!4700396)))

(assert (=> bs!1094734 (= lambda!210071 lambda!210067)))

(assert (=> bs!1094728 (= (= lt!1862511 lt!1863075) (= lambda!210071 lambda!210063))))

(declare-fun bs!1094735 () Bool)

(assert (= bs!1094735 (and b!4700401 b!4700011)))

(assert (=> bs!1094735 (= lambda!210071 lambda!209988)))

(declare-fun bs!1094736 () Bool)

(assert (= bs!1094736 (and b!4700401 d!1494881)))

(assert (=> bs!1094736 (not (= lambda!210071 lambda!210045))))

(assert (=> bs!1094734 (= (= lt!1862511 lt!1863101) (= lambda!210071 lambda!210068))))

(assert (=> bs!1094729 (= (= lt!1862511 lt!1862702) (= lambda!210071 lambda!209990))))

(assert (=> b!4700401 true))

(declare-fun lt!1863122 () ListMap!5041)

(declare-fun lambda!210072 () Int)

(assert (=> bs!1094725 (= (= lt!1863122 lt!1862511) (= lambda!210072 lambda!210061))))

(assert (=> bs!1094726 (= (= lt!1863122 lt!1862511) (= lambda!210072 lambda!210070))))

(assert (=> bs!1094727 (= (= lt!1863122 lt!1862511) (= lambda!210072 lambda!210066))))

(assert (=> bs!1094729 (= (= lt!1863122 lt!1862511) (= lambda!210072 lambda!209989))))

(assert (=> bs!1094730 (= (= lt!1863122 lt!1862705) (= lambda!210072 lambda!209991))))

(assert (=> bs!1094731 (= (= lt!1863122 lt!1863104) (= lambda!210072 lambda!210069))))

(assert (=> bs!1094732 (= (= lt!1863122 lt!1863078) (= lambda!210072 lambda!210064))))

(assert (=> bs!1094733 (not (= lambda!210072 lambda!210055))))

(assert (=> bs!1094734 (= (= lt!1863122 lt!1862511) (= lambda!210072 lambda!210067))))

(assert (=> bs!1094728 (= (= lt!1863122 lt!1863075) (= lambda!210072 lambda!210063))))

(assert (=> bs!1094735 (= (= lt!1863122 lt!1862511) (= lambda!210072 lambda!209988))))

(assert (=> bs!1094736 (not (= lambda!210072 lambda!210045))))

(assert (=> b!4700401 (= (= lt!1863122 lt!1862511) (= lambda!210072 lambda!210071))))

(assert (=> bs!1094728 (= (= lt!1863122 lt!1862511) (= lambda!210072 lambda!210062))))

(assert (=> bs!1094734 (= (= lt!1863122 lt!1863101) (= lambda!210072 lambda!210068))))

(assert (=> bs!1094729 (= (= lt!1863122 lt!1862702) (= lambda!210072 lambda!209990))))

(assert (=> b!4700401 true))

(declare-fun bs!1094737 () Bool)

(declare-fun d!1494973 () Bool)

(assert (= bs!1094737 (and d!1494973 b!4700384)))

(declare-fun lt!1863125 () ListMap!5041)

(declare-fun lambda!210073 () Int)

(assert (=> bs!1094737 (= (= lt!1863125 lt!1862511) (= lambda!210073 lambda!210061))))

(declare-fun bs!1094738 () Bool)

(assert (= bs!1094738 (and d!1494973 b!4700398)))

(assert (=> bs!1094738 (= (= lt!1863125 lt!1862511) (= lambda!210073 lambda!210070))))

(declare-fun bs!1094739 () Bool)

(assert (= bs!1094739 (and d!1494973 b!4700393)))

(assert (=> bs!1094739 (= (= lt!1863125 lt!1862511) (= lambda!210073 lambda!210066))))

(declare-fun bs!1094740 () Bool)

(assert (= bs!1094740 (and d!1494973 b!4700014)))

(assert (=> bs!1094740 (= (= lt!1863125 lt!1862511) (= lambda!210073 lambda!209989))))

(declare-fun bs!1094741 () Bool)

(assert (= bs!1094741 (and d!1494973 d!1494971)))

(assert (=> bs!1094741 (= (= lt!1863125 lt!1863104) (= lambda!210073 lambda!210069))))

(declare-fun bs!1094742 () Bool)

(assert (= bs!1094742 (and d!1494973 d!1494963)))

(assert (=> bs!1094742 (= (= lt!1863125 lt!1863078) (= lambda!210073 lambda!210064))))

(declare-fun bs!1094743 () Bool)

(assert (= bs!1094743 (and d!1494973 d!1494925)))

(assert (=> bs!1094743 (not (= lambda!210073 lambda!210055))))

(declare-fun bs!1094744 () Bool)

(assert (= bs!1094744 (and d!1494973 b!4700396)))

(assert (=> bs!1094744 (= (= lt!1863125 lt!1862511) (= lambda!210073 lambda!210067))))

(declare-fun bs!1094745 () Bool)

(assert (= bs!1094745 (and d!1494973 b!4700387)))

(assert (=> bs!1094745 (= (= lt!1863125 lt!1863075) (= lambda!210073 lambda!210063))))

(declare-fun bs!1094746 () Bool)

(assert (= bs!1094746 (and d!1494973 b!4700011)))

(assert (=> bs!1094746 (= (= lt!1863125 lt!1862511) (= lambda!210073 lambda!209988))))

(declare-fun bs!1094747 () Bool)

(assert (= bs!1094747 (and d!1494973 d!1494881)))

(assert (=> bs!1094747 (not (= lambda!210073 lambda!210045))))

(declare-fun bs!1094748 () Bool)

(assert (= bs!1094748 (and d!1494973 b!4700401)))

(assert (=> bs!1094748 (= (= lt!1863125 lt!1862511) (= lambda!210073 lambda!210071))))

(assert (=> bs!1094745 (= (= lt!1863125 lt!1862511) (= lambda!210073 lambda!210062))))

(assert (=> bs!1094748 (= (= lt!1863125 lt!1863122) (= lambda!210073 lambda!210072))))

(declare-fun bs!1094749 () Bool)

(assert (= bs!1094749 (and d!1494973 d!1494685)))

(assert (=> bs!1094749 (= (= lt!1863125 lt!1862705) (= lambda!210073 lambda!209991))))

(assert (=> bs!1094744 (= (= lt!1863125 lt!1863101) (= lambda!210073 lambda!210068))))

(assert (=> bs!1094740 (= (= lt!1863125 lt!1862702) (= lambda!210073 lambda!209990))))

(assert (=> d!1494973 true))

(declare-fun e!2932125 () Bool)

(assert (=> d!1494973 e!2932125))

(declare-fun res!1984368 () Bool)

(assert (=> d!1494973 (=> (not res!1984368) (not e!2932125))))

(assert (=> d!1494973 (= res!1984368 (forall!11395 lt!1862512 lambda!210073))))

(declare-fun e!2932126 () ListMap!5041)

(assert (=> d!1494973 (= lt!1863125 e!2932126)))

(declare-fun c!803480 () Bool)

(assert (=> d!1494973 (= c!803480 ((_ is Nil!52521) lt!1862512))))

(assert (=> d!1494973 (noDuplicateKeys!1894 lt!1862512)))

(assert (=> d!1494973 (= (addToMapMapFromBucket!1326 lt!1862512 lt!1862511) lt!1863125)))

(declare-fun b!4700397 () Bool)

(assert (=> b!4700397 (= e!2932125 (invariantList!1442 (toList!5677 lt!1863125)))))

(declare-fun lt!1863120 () ListMap!5041)

(declare-fun bm!328597 () Bool)

(declare-fun call!328603 () Bool)

(assert (=> bm!328597 (= call!328603 (forall!11395 (ite c!803480 (toList!5677 lt!1862511) (toList!5677 lt!1863120)) (ite c!803480 lambda!210070 lambda!210072)))))

(assert (=> b!4700398 (= e!2932126 lt!1862511)))

(declare-fun lt!1863105 () Unit!125992)

(declare-fun call!328602 () Unit!125992)

(assert (=> b!4700398 (= lt!1863105 call!328602)))

(declare-fun call!328604 () Bool)

(assert (=> b!4700398 call!328604))

(declare-fun lt!1863117 () Unit!125992)

(assert (=> b!4700398 (= lt!1863117 lt!1863105)))

(assert (=> b!4700398 call!328603))

(declare-fun lt!1863116 () Unit!125992)

(declare-fun Unit!126092 () Unit!125992)

(assert (=> b!4700398 (= lt!1863116 Unit!126092)))

(declare-fun b!4700399 () Bool)

(declare-fun res!1984366 () Bool)

(assert (=> b!4700399 (=> (not res!1984366) (not e!2932125))))

(assert (=> b!4700399 (= res!1984366 (forall!11395 (toList!5677 lt!1862511) lambda!210073))))

(declare-fun bm!328598 () Bool)

(assert (=> bm!328598 (= call!328602 (lemmaContainsAllItsOwnKeys!730 lt!1862511))))

(declare-fun b!4700400 () Bool)

(declare-fun e!2932124 () Bool)

(assert (=> b!4700400 (= e!2932124 (forall!11395 (toList!5677 lt!1862511) lambda!210072))))

(assert (=> b!4700401 (= e!2932126 lt!1863122)))

(assert (=> b!4700401 (= lt!1863120 (+!2178 lt!1862511 (h!58798 lt!1862512)))))

(assert (=> b!4700401 (= lt!1863122 (addToMapMapFromBucket!1326 (t!359853 lt!1862512) (+!2178 lt!1862511 (h!58798 lt!1862512))))))

(declare-fun lt!1863113 () Unit!125992)

(assert (=> b!4700401 (= lt!1863113 call!328602)))

(assert (=> b!4700401 (forall!11395 (toList!5677 lt!1862511) lambda!210071)))

(declare-fun lt!1863123 () Unit!125992)

(assert (=> b!4700401 (= lt!1863123 lt!1863113)))

(assert (=> b!4700401 call!328603))

(declare-fun lt!1863115 () Unit!125992)

(declare-fun Unit!126093 () Unit!125992)

(assert (=> b!4700401 (= lt!1863115 Unit!126093)))

(assert (=> b!4700401 (forall!11395 (t!359853 lt!1862512) lambda!210072)))

(declare-fun lt!1863108 () Unit!125992)

(declare-fun Unit!126094 () Unit!125992)

(assert (=> b!4700401 (= lt!1863108 Unit!126094)))

(declare-fun lt!1863109 () Unit!125992)

(declare-fun Unit!126095 () Unit!125992)

(assert (=> b!4700401 (= lt!1863109 Unit!126095)))

(declare-fun lt!1863107 () Unit!125992)

(assert (=> b!4700401 (= lt!1863107 (forallContained!3502 (toList!5677 lt!1863120) lambda!210072 (h!58798 lt!1862512)))))

(assert (=> b!4700401 (contains!15794 lt!1863120 (_1!30279 (h!58798 lt!1862512)))))

(declare-fun lt!1863111 () Unit!125992)

(declare-fun Unit!126096 () Unit!125992)

(assert (=> b!4700401 (= lt!1863111 Unit!126096)))

(assert (=> b!4700401 (contains!15794 lt!1863122 (_1!30279 (h!58798 lt!1862512)))))

(declare-fun lt!1863112 () Unit!125992)

(declare-fun Unit!126097 () Unit!125992)

(assert (=> b!4700401 (= lt!1863112 Unit!126097)))

(assert (=> b!4700401 (forall!11395 lt!1862512 lambda!210072)))

(declare-fun lt!1863118 () Unit!125992)

(declare-fun Unit!126098 () Unit!125992)

(assert (=> b!4700401 (= lt!1863118 Unit!126098)))

(assert (=> b!4700401 (forall!11395 (toList!5677 lt!1863120) lambda!210072)))

(declare-fun lt!1863124 () Unit!125992)

(declare-fun Unit!126099 () Unit!125992)

(assert (=> b!4700401 (= lt!1863124 Unit!126099)))

(declare-fun lt!1863119 () Unit!125992)

(declare-fun Unit!126100 () Unit!125992)

(assert (=> b!4700401 (= lt!1863119 Unit!126100)))

(declare-fun lt!1863121 () Unit!125992)

(assert (=> b!4700401 (= lt!1863121 (addForallContainsKeyThenBeforeAdding!729 lt!1862511 lt!1863122 (_1!30279 (h!58798 lt!1862512)) (_2!30279 (h!58798 lt!1862512))))))

(assert (=> b!4700401 (forall!11395 (toList!5677 lt!1862511) lambda!210072)))

(declare-fun lt!1863114 () Unit!125992)

(assert (=> b!4700401 (= lt!1863114 lt!1863121)))

(assert (=> b!4700401 call!328604))

(declare-fun lt!1863110 () Unit!125992)

(declare-fun Unit!126101 () Unit!125992)

(assert (=> b!4700401 (= lt!1863110 Unit!126101)))

(declare-fun res!1984367 () Bool)

(assert (=> b!4700401 (= res!1984367 (forall!11395 lt!1862512 lambda!210072))))

(assert (=> b!4700401 (=> (not res!1984367) (not e!2932124))))

(assert (=> b!4700401 e!2932124))

(declare-fun lt!1863106 () Unit!125992)

(declare-fun Unit!126102 () Unit!125992)

(assert (=> b!4700401 (= lt!1863106 Unit!126102)))

(declare-fun bm!328599 () Bool)

(assert (=> bm!328599 (= call!328604 (forall!11395 (toList!5677 lt!1862511) (ite c!803480 lambda!210070 lambda!210072)))))

(assert (= (and d!1494973 c!803480) b!4700398))

(assert (= (and d!1494973 (not c!803480)) b!4700401))

(assert (= (and b!4700401 res!1984367) b!4700400))

(assert (= (or b!4700398 b!4700401) bm!328598))

(assert (= (or b!4700398 b!4700401) bm!328599))

(assert (= (or b!4700398 b!4700401) bm!328597))

(assert (= (and d!1494973 res!1984368) b!4700399))

(assert (= (and b!4700399 res!1984366) b!4700397))

(assert (=> bm!328598 m!5613815))

(declare-fun m!5614781 () Bool)

(assert (=> b!4700399 m!5614781))

(declare-fun m!5614783 () Bool)

(assert (=> b!4700397 m!5614783))

(declare-fun m!5614785 () Bool)

(assert (=> bm!328597 m!5614785))

(declare-fun m!5614787 () Bool)

(assert (=> b!4700400 m!5614787))

(declare-fun m!5614789 () Bool)

(assert (=> b!4700401 m!5614789))

(declare-fun m!5614791 () Bool)

(assert (=> b!4700401 m!5614791))

(declare-fun m!5614793 () Bool)

(assert (=> b!4700401 m!5614793))

(declare-fun m!5614795 () Bool)

(assert (=> b!4700401 m!5614795))

(declare-fun m!5614797 () Bool)

(assert (=> b!4700401 m!5614797))

(assert (=> b!4700401 m!5614797))

(assert (=> b!4700401 m!5614787))

(declare-fun m!5614799 () Bool)

(assert (=> b!4700401 m!5614799))

(declare-fun m!5614801 () Bool)

(assert (=> b!4700401 m!5614801))

(declare-fun m!5614803 () Bool)

(assert (=> b!4700401 m!5614803))

(assert (=> b!4700401 m!5614793))

(declare-fun m!5614805 () Bool)

(assert (=> b!4700401 m!5614805))

(declare-fun m!5614807 () Bool)

(assert (=> b!4700401 m!5614807))

(declare-fun m!5614809 () Bool)

(assert (=> bm!328599 m!5614809))

(declare-fun m!5614811 () Bool)

(assert (=> d!1494973 m!5614811))

(assert (=> d!1494973 m!5614063))

(assert (=> b!4699944 d!1494973))

(declare-fun bs!1094750 () Bool)

(declare-fun b!4700403 () Bool)

(assert (= bs!1094750 (and b!4700403 b!4700384)))

(declare-fun lambda!210074 () Int)

(assert (=> bs!1094750 (= lambda!210074 lambda!210061)))

(declare-fun bs!1094751 () Bool)

(assert (= bs!1094751 (and b!4700403 b!4700398)))

(assert (=> bs!1094751 (= lambda!210074 lambda!210070)))

(declare-fun bs!1094752 () Bool)

(assert (= bs!1094752 (and b!4700403 b!4700393)))

(assert (=> bs!1094752 (= lambda!210074 lambda!210066)))

(declare-fun bs!1094753 () Bool)

(assert (= bs!1094753 (and b!4700403 d!1494973)))

(assert (=> bs!1094753 (= (= lt!1862511 lt!1863125) (= lambda!210074 lambda!210073))))

(declare-fun bs!1094754 () Bool)

(assert (= bs!1094754 (and b!4700403 b!4700014)))

(assert (=> bs!1094754 (= lambda!210074 lambda!209989)))

(declare-fun bs!1094755 () Bool)

(assert (= bs!1094755 (and b!4700403 d!1494971)))

(assert (=> bs!1094755 (= (= lt!1862511 lt!1863104) (= lambda!210074 lambda!210069))))

(declare-fun bs!1094756 () Bool)

(assert (= bs!1094756 (and b!4700403 d!1494963)))

(assert (=> bs!1094756 (= (= lt!1862511 lt!1863078) (= lambda!210074 lambda!210064))))

(declare-fun bs!1094757 () Bool)

(assert (= bs!1094757 (and b!4700403 d!1494925)))

(assert (=> bs!1094757 (not (= lambda!210074 lambda!210055))))

(declare-fun bs!1094758 () Bool)

(assert (= bs!1094758 (and b!4700403 b!4700396)))

(assert (=> bs!1094758 (= lambda!210074 lambda!210067)))

(declare-fun bs!1094759 () Bool)

(assert (= bs!1094759 (and b!4700403 b!4700387)))

(assert (=> bs!1094759 (= (= lt!1862511 lt!1863075) (= lambda!210074 lambda!210063))))

(declare-fun bs!1094760 () Bool)

(assert (= bs!1094760 (and b!4700403 b!4700011)))

(assert (=> bs!1094760 (= lambda!210074 lambda!209988)))

(declare-fun bs!1094761 () Bool)

(assert (= bs!1094761 (and b!4700403 d!1494881)))

(assert (=> bs!1094761 (not (= lambda!210074 lambda!210045))))

(declare-fun bs!1094762 () Bool)

(assert (= bs!1094762 (and b!4700403 b!4700401)))

(assert (=> bs!1094762 (= lambda!210074 lambda!210071)))

(assert (=> bs!1094759 (= lambda!210074 lambda!210062)))

(assert (=> bs!1094762 (= (= lt!1862511 lt!1863122) (= lambda!210074 lambda!210072))))

(declare-fun bs!1094763 () Bool)

(assert (= bs!1094763 (and b!4700403 d!1494685)))

(assert (=> bs!1094763 (= (= lt!1862511 lt!1862705) (= lambda!210074 lambda!209991))))

(assert (=> bs!1094758 (= (= lt!1862511 lt!1863101) (= lambda!210074 lambda!210068))))

(assert (=> bs!1094754 (= (= lt!1862511 lt!1862702) (= lambda!210074 lambda!209990))))

(assert (=> b!4700403 true))

(declare-fun bs!1094764 () Bool)

(declare-fun b!4700406 () Bool)

(assert (= bs!1094764 (and b!4700406 b!4700384)))

(declare-fun lambda!210075 () Int)

(assert (=> bs!1094764 (= lambda!210075 lambda!210061)))

(declare-fun bs!1094765 () Bool)

(assert (= bs!1094765 (and b!4700406 b!4700398)))

(assert (=> bs!1094765 (= lambda!210075 lambda!210070)))

(declare-fun bs!1094766 () Bool)

(assert (= bs!1094766 (and b!4700406 b!4700393)))

(assert (=> bs!1094766 (= lambda!210075 lambda!210066)))

(declare-fun bs!1094767 () Bool)

(assert (= bs!1094767 (and b!4700406 d!1494973)))

(assert (=> bs!1094767 (= (= lt!1862511 lt!1863125) (= lambda!210075 lambda!210073))))

(declare-fun bs!1094768 () Bool)

(assert (= bs!1094768 (and b!4700406 b!4700014)))

(assert (=> bs!1094768 (= lambda!210075 lambda!209989)))

(declare-fun bs!1094769 () Bool)

(assert (= bs!1094769 (and b!4700406 d!1494971)))

(assert (=> bs!1094769 (= (= lt!1862511 lt!1863104) (= lambda!210075 lambda!210069))))

(declare-fun bs!1094770 () Bool)

(assert (= bs!1094770 (and b!4700406 d!1494963)))

(assert (=> bs!1094770 (= (= lt!1862511 lt!1863078) (= lambda!210075 lambda!210064))))

(declare-fun bs!1094771 () Bool)

(assert (= bs!1094771 (and b!4700406 d!1494925)))

(assert (=> bs!1094771 (not (= lambda!210075 lambda!210055))))

(declare-fun bs!1094772 () Bool)

(assert (= bs!1094772 (and b!4700406 b!4700396)))

(assert (=> bs!1094772 (= lambda!210075 lambda!210067)))

(declare-fun bs!1094773 () Bool)

(assert (= bs!1094773 (and b!4700406 b!4700387)))

(assert (=> bs!1094773 (= (= lt!1862511 lt!1863075) (= lambda!210075 lambda!210063))))

(declare-fun bs!1094774 () Bool)

(assert (= bs!1094774 (and b!4700406 b!4700011)))

(assert (=> bs!1094774 (= lambda!210075 lambda!209988)))

(declare-fun bs!1094775 () Bool)

(assert (= bs!1094775 (and b!4700406 d!1494881)))

(assert (=> bs!1094775 (not (= lambda!210075 lambda!210045))))

(declare-fun bs!1094776 () Bool)

(assert (= bs!1094776 (and b!4700406 b!4700403)))

(assert (=> bs!1094776 (= lambda!210075 lambda!210074)))

(declare-fun bs!1094777 () Bool)

(assert (= bs!1094777 (and b!4700406 b!4700401)))

(assert (=> bs!1094777 (= lambda!210075 lambda!210071)))

(assert (=> bs!1094773 (= lambda!210075 lambda!210062)))

(assert (=> bs!1094777 (= (= lt!1862511 lt!1863122) (= lambda!210075 lambda!210072))))

(declare-fun bs!1094778 () Bool)

(assert (= bs!1094778 (and b!4700406 d!1494685)))

(assert (=> bs!1094778 (= (= lt!1862511 lt!1862705) (= lambda!210075 lambda!209991))))

(assert (=> bs!1094772 (= (= lt!1862511 lt!1863101) (= lambda!210075 lambda!210068))))

(assert (=> bs!1094768 (= (= lt!1862511 lt!1862702) (= lambda!210075 lambda!209990))))

(assert (=> b!4700406 true))

(declare-fun lambda!210076 () Int)

(declare-fun lt!1863143 () ListMap!5041)

(assert (=> bs!1094764 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!210061))))

(assert (=> bs!1094766 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!210066))))

(assert (=> bs!1094767 (= (= lt!1863143 lt!1863125) (= lambda!210076 lambda!210073))))

(assert (=> bs!1094768 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!209989))))

(assert (=> bs!1094769 (= (= lt!1863143 lt!1863104) (= lambda!210076 lambda!210069))))

(assert (=> bs!1094770 (= (= lt!1863143 lt!1863078) (= lambda!210076 lambda!210064))))

(assert (=> bs!1094771 (not (= lambda!210076 lambda!210055))))

(assert (=> bs!1094772 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!210067))))

(assert (=> bs!1094773 (= (= lt!1863143 lt!1863075) (= lambda!210076 lambda!210063))))

(assert (=> b!4700406 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!210075))))

(assert (=> bs!1094765 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!210070))))

(assert (=> bs!1094774 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!209988))))

(assert (=> bs!1094775 (not (= lambda!210076 lambda!210045))))

(assert (=> bs!1094776 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!210074))))

(assert (=> bs!1094777 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!210071))))

(assert (=> bs!1094773 (= (= lt!1863143 lt!1862511) (= lambda!210076 lambda!210062))))

(assert (=> bs!1094777 (= (= lt!1863143 lt!1863122) (= lambda!210076 lambda!210072))))

(assert (=> bs!1094778 (= (= lt!1863143 lt!1862705) (= lambda!210076 lambda!209991))))

(assert (=> bs!1094772 (= (= lt!1863143 lt!1863101) (= lambda!210076 lambda!210068))))

(assert (=> bs!1094768 (= (= lt!1863143 lt!1862702) (= lambda!210076 lambda!209990))))

(assert (=> b!4700406 true))

(declare-fun bs!1094779 () Bool)

(declare-fun d!1494975 () Bool)

(assert (= bs!1094779 (and d!1494975 b!4700384)))

(declare-fun lt!1863146 () ListMap!5041)

(declare-fun lambda!210077 () Int)

(assert (=> bs!1094779 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!210061))))

(declare-fun bs!1094780 () Bool)

(assert (= bs!1094780 (and d!1494975 b!4700393)))

(assert (=> bs!1094780 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!210066))))

(declare-fun bs!1094781 () Bool)

(assert (= bs!1094781 (and d!1494975 d!1494973)))

(assert (=> bs!1094781 (= (= lt!1863146 lt!1863125) (= lambda!210077 lambda!210073))))

(declare-fun bs!1094782 () Bool)

(assert (= bs!1094782 (and d!1494975 d!1494971)))

(assert (=> bs!1094782 (= (= lt!1863146 lt!1863104) (= lambda!210077 lambda!210069))))

(declare-fun bs!1094783 () Bool)

(assert (= bs!1094783 (and d!1494975 d!1494963)))

(assert (=> bs!1094783 (= (= lt!1863146 lt!1863078) (= lambda!210077 lambda!210064))))

(declare-fun bs!1094784 () Bool)

(assert (= bs!1094784 (and d!1494975 d!1494925)))

(assert (=> bs!1094784 (not (= lambda!210077 lambda!210055))))

(declare-fun bs!1094785 () Bool)

(assert (= bs!1094785 (and d!1494975 b!4700396)))

(assert (=> bs!1094785 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!210067))))

(declare-fun bs!1094786 () Bool)

(assert (= bs!1094786 (and d!1494975 b!4700387)))

(assert (=> bs!1094786 (= (= lt!1863146 lt!1863075) (= lambda!210077 lambda!210063))))

(declare-fun bs!1094787 () Bool)

(assert (= bs!1094787 (and d!1494975 b!4700406)))

(assert (=> bs!1094787 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!210075))))

(declare-fun bs!1094788 () Bool)

(assert (= bs!1094788 (and d!1494975 b!4700398)))

(assert (=> bs!1094788 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!210070))))

(declare-fun bs!1094789 () Bool)

(assert (= bs!1094789 (and d!1494975 b!4700011)))

(assert (=> bs!1094789 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!209988))))

(declare-fun bs!1094790 () Bool)

(assert (= bs!1094790 (and d!1494975 d!1494881)))

(assert (=> bs!1094790 (not (= lambda!210077 lambda!210045))))

(declare-fun bs!1094791 () Bool)

(assert (= bs!1094791 (and d!1494975 b!4700403)))

(assert (=> bs!1094791 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!210074))))

(declare-fun bs!1094792 () Bool)

(assert (= bs!1094792 (and d!1494975 b!4700401)))

(assert (=> bs!1094792 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!210071))))

(assert (=> bs!1094786 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!210062))))

(declare-fun bs!1094793 () Bool)

(assert (= bs!1094793 (and d!1494975 b!4700014)))

(assert (=> bs!1094793 (= (= lt!1863146 lt!1862511) (= lambda!210077 lambda!209989))))

(assert (=> bs!1094787 (= (= lt!1863146 lt!1863143) (= lambda!210077 lambda!210076))))

(assert (=> bs!1094792 (= (= lt!1863146 lt!1863122) (= lambda!210077 lambda!210072))))

(declare-fun bs!1094794 () Bool)

(assert (= bs!1094794 (and d!1494975 d!1494685)))

(assert (=> bs!1094794 (= (= lt!1863146 lt!1862705) (= lambda!210077 lambda!209991))))

(assert (=> bs!1094785 (= (= lt!1863146 lt!1863101) (= lambda!210077 lambda!210068))))

(assert (=> bs!1094793 (= (= lt!1863146 lt!1862702) (= lambda!210077 lambda!209990))))

(assert (=> d!1494975 true))

(declare-fun e!2932128 () Bool)

(assert (=> d!1494975 e!2932128))

(declare-fun res!1984371 () Bool)

(assert (=> d!1494975 (=> (not res!1984371) (not e!2932128))))

(assert (=> d!1494975 (= res!1984371 (forall!11395 lt!1862533 lambda!210077))))

(declare-fun e!2932129 () ListMap!5041)

(assert (=> d!1494975 (= lt!1863146 e!2932129)))

(declare-fun c!803481 () Bool)

(assert (=> d!1494975 (= c!803481 ((_ is Nil!52521) lt!1862533))))

(assert (=> d!1494975 (noDuplicateKeys!1894 lt!1862533)))

(assert (=> d!1494975 (= (addToMapMapFromBucket!1326 lt!1862533 lt!1862511) lt!1863146)))

(declare-fun b!4700402 () Bool)

(assert (=> b!4700402 (= e!2932128 (invariantList!1442 (toList!5677 lt!1863146)))))

(declare-fun bm!328600 () Bool)

(declare-fun lt!1863141 () ListMap!5041)

(declare-fun call!328606 () Bool)

(assert (=> bm!328600 (= call!328606 (forall!11395 (ite c!803481 (toList!5677 lt!1862511) (toList!5677 lt!1863141)) (ite c!803481 lambda!210074 lambda!210076)))))

(assert (=> b!4700403 (= e!2932129 lt!1862511)))

(declare-fun lt!1863126 () Unit!125992)

(declare-fun call!328605 () Unit!125992)

(assert (=> b!4700403 (= lt!1863126 call!328605)))

(declare-fun call!328607 () Bool)

(assert (=> b!4700403 call!328607))

(declare-fun lt!1863138 () Unit!125992)

(assert (=> b!4700403 (= lt!1863138 lt!1863126)))

(assert (=> b!4700403 call!328606))

(declare-fun lt!1863137 () Unit!125992)

(declare-fun Unit!126103 () Unit!125992)

(assert (=> b!4700403 (= lt!1863137 Unit!126103)))

(declare-fun b!4700404 () Bool)

(declare-fun res!1984369 () Bool)

(assert (=> b!4700404 (=> (not res!1984369) (not e!2932128))))

(assert (=> b!4700404 (= res!1984369 (forall!11395 (toList!5677 lt!1862511) lambda!210077))))

(declare-fun bm!328601 () Bool)

(assert (=> bm!328601 (= call!328605 (lemmaContainsAllItsOwnKeys!730 lt!1862511))))

(declare-fun b!4700405 () Bool)

(declare-fun e!2932127 () Bool)

(assert (=> b!4700405 (= e!2932127 (forall!11395 (toList!5677 lt!1862511) lambda!210076))))

(assert (=> b!4700406 (= e!2932129 lt!1863143)))

(assert (=> b!4700406 (= lt!1863141 (+!2178 lt!1862511 (h!58798 lt!1862533)))))

(assert (=> b!4700406 (= lt!1863143 (addToMapMapFromBucket!1326 (t!359853 lt!1862533) (+!2178 lt!1862511 (h!58798 lt!1862533))))))

(declare-fun lt!1863134 () Unit!125992)

(assert (=> b!4700406 (= lt!1863134 call!328605)))

(assert (=> b!4700406 (forall!11395 (toList!5677 lt!1862511) lambda!210075)))

(declare-fun lt!1863144 () Unit!125992)

(assert (=> b!4700406 (= lt!1863144 lt!1863134)))

(assert (=> b!4700406 call!328606))

(declare-fun lt!1863136 () Unit!125992)

(declare-fun Unit!126104 () Unit!125992)

(assert (=> b!4700406 (= lt!1863136 Unit!126104)))

(assert (=> b!4700406 (forall!11395 (t!359853 lt!1862533) lambda!210076)))

(declare-fun lt!1863129 () Unit!125992)

(declare-fun Unit!126105 () Unit!125992)

(assert (=> b!4700406 (= lt!1863129 Unit!126105)))

(declare-fun lt!1863130 () Unit!125992)

(declare-fun Unit!126106 () Unit!125992)

(assert (=> b!4700406 (= lt!1863130 Unit!126106)))

(declare-fun lt!1863128 () Unit!125992)

(assert (=> b!4700406 (= lt!1863128 (forallContained!3502 (toList!5677 lt!1863141) lambda!210076 (h!58798 lt!1862533)))))

(assert (=> b!4700406 (contains!15794 lt!1863141 (_1!30279 (h!58798 lt!1862533)))))

(declare-fun lt!1863132 () Unit!125992)

(declare-fun Unit!126107 () Unit!125992)

(assert (=> b!4700406 (= lt!1863132 Unit!126107)))

(assert (=> b!4700406 (contains!15794 lt!1863143 (_1!30279 (h!58798 lt!1862533)))))

(declare-fun lt!1863133 () Unit!125992)

(declare-fun Unit!126108 () Unit!125992)

(assert (=> b!4700406 (= lt!1863133 Unit!126108)))

(assert (=> b!4700406 (forall!11395 lt!1862533 lambda!210076)))

(declare-fun lt!1863139 () Unit!125992)

(declare-fun Unit!126109 () Unit!125992)

(assert (=> b!4700406 (= lt!1863139 Unit!126109)))

(assert (=> b!4700406 (forall!11395 (toList!5677 lt!1863141) lambda!210076)))

(declare-fun lt!1863145 () Unit!125992)

(declare-fun Unit!126110 () Unit!125992)

(assert (=> b!4700406 (= lt!1863145 Unit!126110)))

(declare-fun lt!1863140 () Unit!125992)

(declare-fun Unit!126111 () Unit!125992)

(assert (=> b!4700406 (= lt!1863140 Unit!126111)))

(declare-fun lt!1863142 () Unit!125992)

(assert (=> b!4700406 (= lt!1863142 (addForallContainsKeyThenBeforeAdding!729 lt!1862511 lt!1863143 (_1!30279 (h!58798 lt!1862533)) (_2!30279 (h!58798 lt!1862533))))))

(assert (=> b!4700406 (forall!11395 (toList!5677 lt!1862511) lambda!210076)))

(declare-fun lt!1863135 () Unit!125992)

(assert (=> b!4700406 (= lt!1863135 lt!1863142)))

(assert (=> b!4700406 call!328607))

(declare-fun lt!1863131 () Unit!125992)

(declare-fun Unit!126112 () Unit!125992)

(assert (=> b!4700406 (= lt!1863131 Unit!126112)))

(declare-fun res!1984370 () Bool)

(assert (=> b!4700406 (= res!1984370 (forall!11395 lt!1862533 lambda!210076))))

(assert (=> b!4700406 (=> (not res!1984370) (not e!2932127))))

(assert (=> b!4700406 e!2932127))

(declare-fun lt!1863127 () Unit!125992)

(declare-fun Unit!126113 () Unit!125992)

(assert (=> b!4700406 (= lt!1863127 Unit!126113)))

(declare-fun bm!328602 () Bool)

(assert (=> bm!328602 (= call!328607 (forall!11395 (toList!5677 lt!1862511) (ite c!803481 lambda!210074 lambda!210076)))))

(assert (= (and d!1494975 c!803481) b!4700403))

(assert (= (and d!1494975 (not c!803481)) b!4700406))

(assert (= (and b!4700406 res!1984370) b!4700405))

(assert (= (or b!4700403 b!4700406) bm!328601))

(assert (= (or b!4700403 b!4700406) bm!328602))

(assert (= (or b!4700403 b!4700406) bm!328600))

(assert (= (and d!1494975 res!1984371) b!4700404))

(assert (= (and b!4700404 res!1984369) b!4700402))

(assert (=> bm!328601 m!5613815))

(declare-fun m!5614813 () Bool)

(assert (=> b!4700404 m!5614813))

(declare-fun m!5614815 () Bool)

(assert (=> b!4700402 m!5614815))

(declare-fun m!5614817 () Bool)

(assert (=> bm!328600 m!5614817))

(declare-fun m!5614819 () Bool)

(assert (=> b!4700405 m!5614819))

(declare-fun m!5614821 () Bool)

(assert (=> b!4700406 m!5614821))

(declare-fun m!5614823 () Bool)

(assert (=> b!4700406 m!5614823))

(declare-fun m!5614825 () Bool)

(assert (=> b!4700406 m!5614825))

(declare-fun m!5614827 () Bool)

(assert (=> b!4700406 m!5614827))

(declare-fun m!5614829 () Bool)

(assert (=> b!4700406 m!5614829))

(assert (=> b!4700406 m!5614829))

(assert (=> b!4700406 m!5614819))

(declare-fun m!5614831 () Bool)

(assert (=> b!4700406 m!5614831))

(declare-fun m!5614833 () Bool)

(assert (=> b!4700406 m!5614833))

(declare-fun m!5614835 () Bool)

(assert (=> b!4700406 m!5614835))

(assert (=> b!4700406 m!5614825))

(declare-fun m!5614837 () Bool)

(assert (=> b!4700406 m!5614837))

(declare-fun m!5614839 () Bool)

(assert (=> b!4700406 m!5614839))

(declare-fun m!5614841 () Bool)

(assert (=> bm!328602 m!5614841))

(declare-fun m!5614843 () Bool)

(assert (=> d!1494975 m!5614843))

(assert (=> d!1494975 m!5614677))

(assert (=> b!4699944 d!1494975))

(declare-fun d!1494977 () Bool)

(assert (=> d!1494977 (= (head!10051 (toList!5678 lm!2023)) (h!58799 (toList!5678 lm!2023)))))

(assert (=> b!4699943 d!1494977))

(declare-fun tp!1346610 () Bool)

(declare-fun e!2932132 () Bool)

(declare-fun b!4700411 () Bool)

(assert (=> b!4700411 (= e!2932132 (and tp_is_empty!30869 tp_is_empty!30871 tp!1346610))))

(assert (=> b!4699937 (= tp!1346595 e!2932132)))

(assert (= (and b!4699937 ((_ is Cons!52521) (t!359853 newBucket!218))) b!4700411))

(declare-fun b!4700416 () Bool)

(declare-fun e!2932135 () Bool)

(declare-fun tp!1346615 () Bool)

(declare-fun tp!1346616 () Bool)

(assert (=> b!4700416 (= e!2932135 (and tp!1346615 tp!1346616))))

(assert (=> b!4699947 (= tp!1346596 e!2932135)))

(assert (= (and b!4699947 ((_ is Cons!52522) (toList!5678 lm!2023))) b!4700416))

(declare-fun e!2932136 () Bool)

(declare-fun tp!1346617 () Bool)

(declare-fun b!4700417 () Bool)

(assert (=> b!4700417 (= e!2932136 (and tp_is_empty!30869 tp_is_empty!30871 tp!1346617))))

(assert (=> b!4699942 (= tp!1346597 e!2932136)))

(assert (= (and b!4699942 ((_ is Cons!52521) (t!359853 oldBucket!34))) b!4700417))

(declare-fun b_lambda!177351 () Bool)

(assert (= b_lambda!177343 (or start!476556 b_lambda!177351)))

(declare-fun bs!1094795 () Bool)

(declare-fun d!1494979 () Bool)

(assert (= bs!1094795 (and d!1494979 start!476556)))

(assert (=> bs!1094795 (= (dynLambda!21744 lambda!209915 (h!58799 lt!1862514)) (noDuplicateKeys!1894 (_2!30280 (h!58799 lt!1862514))))))

(declare-fun m!5614845 () Bool)

(assert (=> bs!1094795 m!5614845))

(assert (=> b!4700257 d!1494979))

(declare-fun b_lambda!177353 () Bool)

(assert (= b_lambda!177337 (or start!476556 b_lambda!177353)))

(declare-fun bs!1094796 () Bool)

(declare-fun d!1494981 () Bool)

(assert (= bs!1094796 (and d!1494981 start!476556)))

(assert (=> bs!1094796 (= (dynLambda!21744 lambda!209915 lt!1862501) (noDuplicateKeys!1894 (_2!30280 lt!1862501)))))

(declare-fun m!5614847 () Bool)

(assert (=> bs!1094796 m!5614847))

(assert (=> d!1494819 d!1494981))

(declare-fun b_lambda!177355 () Bool)

(assert (= b_lambda!177341 (or start!476556 b_lambda!177355)))

(declare-fun bs!1094797 () Bool)

(declare-fun d!1494983 () Bool)

(assert (= bs!1094797 (and d!1494983 start!476556)))

(assert (=> bs!1094797 (= (dynLambda!21744 lambda!209915 (h!58799 (toList!5678 lm!2023))) (noDuplicateKeys!1894 (_2!30280 (h!58799 (toList!5678 lm!2023)))))))

(assert (=> bs!1094797 m!5613849))

(assert (=> b!4700255 d!1494983))

(check-sat (not b!4700166) (not d!1494889) (not b!4700151) (not d!1494827) (not b!4700048) (not d!1494819) (not b!4700340) (not d!1494891) (not b!4700381) (not b!4700032) (not d!1494825) (not b!4700069) (not d!1494815) (not d!1494843) tp_is_empty!30871 (not b!4700302) (not d!1494845) (not b!4700012) (not b!4700416) (not d!1494917) (not b!4700375) (not bm!328592) (not b!4700368) (not b!4700342) (not b!4700219) (not bm!328594) (not d!1494965) (not b_lambda!177351) (not b!4700304) (not b!4700050) (not b!4700216) (not bm!328589) (not d!1494971) (not bm!328573) (not bm!328598) (not b!4700366) (not b!4700256) (not d!1494933) (not b!4700175) (not b_lambda!177355) (not b!4700013) (not d!1494811) (not bm!328591) (not d!1494767) (not d!1494731) tp_is_empty!30869 (not d!1494959) (not b!4700038) (not b!4700362) (not bm!328602) (not b!4700401) (not b!4700347) (not b!4700196) (not d!1494893) (not d!1494765) (not b_lambda!177353) (not d!1494821) (not bm!328595) (not d!1494759) (not d!1494867) (not b!4700345) (not b!4700379) (not b!4700391) (not d!1494957) (not b!4700411) (not b!4700383) (not d!1494963) (not b!4700397) (not b!4700341) (not bm!328597) (not b!4700405) (not bs!1094795) (not b!4700367) (not d!1494737) (not d!1494931) (not b!4700221) (not b!4700404) (not d!1494863) (not b!4700402) (not d!1494717) (not d!1494823) (not b!4700344) (not d!1494943) (not b!4700014) (not d!1494771) (not b!4700160) (not b!4700194) (not b!4700149) (not b!4700385) (not b!4700395) (not d!1494925) (not b!4700363) (not bm!328600) (not b!4700195) (not d!1494813) (not d!1494871) (not bm!328593) (not b!4700287) (not d!1494881) (not b!4700399) (not bm!328571) (not d!1494969) (not b!4700150) (not b!4700049) (not b!4700339) (not b!4700158) (not d!1494685) (not d!1494831) (not d!1494817) (not b!4700305) (not b!4700373) (not b!4700173) (not b!4700369) (not b!4700380) (not d!1494961) (not d!1494875) (not d!1494923) (not b!4700223) (not b!4700010) (not d!1494769) (not b!4700258) (not b!4700400) (not bm!328572) (not b!4700303) (not d!1494975) (not b!4700387) (not d!1494739) (not b!4700394) (not d!1494835) (not b!4700193) (not b!4700065) (not b!4700406) (not b!4700417) (not b!4700152) (not d!1494949) (not b!4700388) (not bm!328596) (not d!1494877) (not d!1494753) (not bs!1094796) (not d!1494973) (not d!1494839) (not b!4700028) (not b!4700378) (not b!4700392) (not b!4700390) (not d!1494947) (not d!1494967) (not b!4700377) (not b!4700386) (not d!1494749) (not b!4700370) (not b!4700047) (not d!1494953) (not d!1494729) (not d!1494869) (not b!4700198) (not b!4700372) (not d!1494951) (not d!1494955) (not bm!328590) (not d!1494829) (not b!4700260) (not bs!1094797) (not b!4700396) (not b!4700338) (not b!4700211) (not b!4700218) (not b!4700259) (not bm!328599) (not bm!328601) (not d!1494929))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!447492 () Bool)

(assert start!447492)

(declare-fun res!1881022 () Bool)

(declare-fun e!2815927 () Bool)

(assert (=> start!447492 (=> (not res!1881022) (not e!2815927))))

(declare-datatypes ((K!12040 0))(
  ( (K!12041 (val!17903 Int)) )
))
(declare-datatypes ((V!12286 0))(
  ( (V!12287 (val!17904 Int)) )
))
(declare-datatypes ((tuple2!51074 0))(
  ( (tuple2!51075 (_1!28831 K!12040) (_2!28831 V!12286)) )
))
(declare-datatypes ((List!50770 0))(
  ( (Nil!50646) (Cons!50646 (h!56499 tuple2!51074) (t!357732 List!50770)) )
))
(declare-datatypes ((tuple2!51076 0))(
  ( (tuple2!51077 (_1!28832 (_ BitVec 64)) (_2!28832 List!50770)) )
))
(declare-datatypes ((List!50771 0))(
  ( (Nil!50647) (Cons!50647 (h!56500 tuple2!51076) (t!357733 List!50771)) )
))
(declare-datatypes ((ListLongMap!2959 0))(
  ( (ListLongMap!2960 (toList!4327 List!50771)) )
))
(declare-fun lm!1477 () ListLongMap!2959)

(declare-fun lambda!172325 () Int)

(declare-fun forall!10263 (List!50771 Int) Bool)

(assert (=> start!447492 (= res!1881022 (forall!10263 (toList!4327 lm!1477) lambda!172325))))

(assert (=> start!447492 e!2815927))

(assert (=> start!447492 true))

(declare-fun e!2815928 () Bool)

(declare-fun inv!66224 (ListLongMap!2959) Bool)

(assert (=> start!447492 (and (inv!66224 lm!1477) e!2815928)))

(declare-fun tp_is_empty!27917 () Bool)

(assert (=> start!447492 tp_is_empty!27917))

(declare-fun e!2815930 () Bool)

(assert (=> start!447492 e!2815930))

(declare-fun tp_is_empty!27919 () Bool)

(declare-fun tp!1338080 () Bool)

(declare-fun b!4519772 () Bool)

(assert (=> b!4519772 (= e!2815930 (and tp_is_empty!27917 tp_is_empty!27919 tp!1338080))))

(declare-fun b!4519773 () Bool)

(declare-fun e!2815923 () Bool)

(declare-fun isEmpty!28667 (ListLongMap!2959) Bool)

(assert (=> b!4519773 (= e!2815923 (not (isEmpty!28667 lm!1477)))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun lt!1697023 () tuple2!51076)

(assert (=> b!4519773 (not (= hash!344 (_1!28832 lt!1697023)))))

(declare-fun b!4519774 () Bool)

(declare-fun e!2815921 () Bool)

(declare-fun e!2815925 () Bool)

(assert (=> b!4519774 (= e!2815921 e!2815925)))

(declare-fun res!1881033 () Bool)

(assert (=> b!4519774 (=> res!1881033 e!2815925)))

(declare-datatypes ((ListMap!3589 0))(
  ( (ListMap!3590 (toList!4328 List!50770)) )
))
(declare-fun lt!1696999 () ListMap!3589)

(declare-fun lt!1697014 () ListMap!3589)

(declare-fun eq!617 (ListMap!3589 ListMap!3589) Bool)

(assert (=> b!4519774 (= res!1881033 (not (eq!617 lt!1696999 lt!1697014)))))

(declare-fun lt!1697016 () ListMap!3589)

(assert (=> b!4519774 (eq!617 lt!1697016 lt!1697014)))

(declare-fun lt!1697017 () ListMap!3589)

(declare-fun addToMapMapFromBucket!687 (List!50770 ListMap!3589) ListMap!3589)

(assert (=> b!4519774 (= lt!1697014 (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697017))))

(declare-fun lt!1697024 () ListMap!3589)

(declare-datatypes ((Unit!95040 0))(
  ( (Unit!95041) )
))
(declare-fun lt!1696998 () Unit!95040)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!36 (ListMap!3589 ListMap!3589 List!50770) Unit!95040)

(assert (=> b!4519774 (= lt!1696998 (lemmaAddToMapFromBucketPreservesEquivalence!36 lt!1697024 lt!1697017 (_2!28832 lt!1697023)))))

(declare-fun b!4519775 () Bool)

(declare-fun e!2815929 () Bool)

(declare-fun e!2815933 () Bool)

(assert (=> b!4519775 (= e!2815929 e!2815933)))

(declare-fun res!1881023 () Bool)

(assert (=> b!4519775 (=> res!1881023 e!2815933)))

(declare-fun lt!1697006 () tuple2!51076)

(declare-fun lt!1697011 () ListLongMap!2959)

(declare-fun +!1538 (ListLongMap!2959 tuple2!51076) ListLongMap!2959)

(assert (=> b!4519775 (= res!1881023 (not (= lt!1697011 (+!1538 lm!1477 lt!1697006))))))

(declare-fun lt!1697001 () ListLongMap!2959)

(assert (=> b!4519775 (= lt!1697011 (+!1538 lt!1697001 lt!1697023))))

(declare-fun b!4519776 () Bool)

(declare-fun e!2815918 () Bool)

(declare-fun e!2815919 () Bool)

(assert (=> b!4519776 (= e!2815918 e!2815919)))

(declare-fun res!1881037 () Bool)

(assert (=> b!4519776 (=> res!1881037 e!2815919)))

(declare-fun lt!1697021 () ListLongMap!2959)

(declare-fun contains!13371 (ListLongMap!2959 (_ BitVec 64)) Bool)

(assert (=> b!4519776 (= res!1881037 (not (contains!13371 lt!1697021 hash!344)))))

(declare-fun tail!7734 (ListLongMap!2959) ListLongMap!2959)

(assert (=> b!4519776 (= lt!1697021 (tail!7734 lm!1477))))

(declare-fun b!4519777 () Bool)

(declare-fun res!1881019 () Bool)

(declare-fun e!2815931 () Bool)

(assert (=> b!4519777 (=> (not res!1881019) (not e!2815931))))

(declare-datatypes ((Hashable!5555 0))(
  ( (HashableExt!5554 (__x!31258 Int)) )
))
(declare-fun hashF!1107 () Hashable!5555)

(declare-fun newBucket!178 () List!50770)

(declare-fun allKeysSameHash!1014 (List!50770 (_ BitVec 64) Hashable!5555) Bool)

(assert (=> b!4519777 (= res!1881019 (allKeysSameHash!1014 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4519778 () Bool)

(declare-fun e!2815920 () Bool)

(declare-fun e!2815922 () Bool)

(assert (=> b!4519778 (= e!2815920 e!2815922)))

(declare-fun res!1881034 () Bool)

(assert (=> b!4519778 (=> res!1881034 e!2815922)))

(declare-fun key!3287 () K!12040)

(declare-fun containsKeyBiggerList!140 (List!50771 K!12040) Bool)

(assert (=> b!4519778 (= res!1881034 (not (containsKeyBiggerList!140 (t!357733 (toList!4327 lm!1477)) key!3287)))))

(assert (=> b!4519778 (containsKeyBiggerList!140 (toList!4327 lt!1697021) key!3287)))

(declare-fun lt!1697003 () Unit!95040)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!76 (ListLongMap!2959 K!12040 Hashable!5555) Unit!95040)

(assert (=> b!4519778 (= lt!1697003 (lemmaInLongMapThenContainsKeyBiggerList!76 lt!1697021 key!3287 hashF!1107))))

(declare-fun b!4519779 () Bool)

(assert (=> b!4519779 (= e!2815933 e!2815921)))

(declare-fun res!1881024 () Bool)

(assert (=> b!4519779 (=> res!1881024 e!2815921)))

(assert (=> b!4519779 (= res!1881024 (not (eq!617 lt!1696999 lt!1697016)))))

(assert (=> b!4519779 (= lt!1697016 (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697024))))

(declare-fun extractMap!1216 (List!50771) ListMap!3589)

(assert (=> b!4519779 (= lt!1696999 (extractMap!1216 (toList!4327 lt!1697011)))))

(declare-fun b!4519780 () Bool)

(declare-fun res!1881030 () Bool)

(assert (=> b!4519780 (=> res!1881030 e!2815929)))

(declare-fun lt!1697008 () ListMap!3589)

(declare-fun lt!1697013 () ListMap!3589)

(assert (=> b!4519780 (= res!1881030 (not (eq!617 lt!1697008 lt!1697013)))))

(declare-fun b!4519781 () Bool)

(declare-fun e!2815932 () Bool)

(assert (=> b!4519781 (= e!2815927 e!2815932)))

(declare-fun res!1881039 () Bool)

(assert (=> b!4519781 (=> (not res!1881039) (not e!2815932))))

(declare-fun contains!13372 (ListMap!3589 K!12040) Bool)

(assert (=> b!4519781 (= res!1881039 (contains!13372 lt!1697008 key!3287))))

(assert (=> b!4519781 (= lt!1697008 (extractMap!1216 (toList!4327 lm!1477)))))

(declare-fun b!4519782 () Bool)

(declare-fun res!1881026 () Bool)

(assert (=> b!4519782 (=> (not res!1881026) (not e!2815927))))

(declare-fun allKeysSameHashInMap!1267 (ListLongMap!2959 Hashable!5555) Bool)

(assert (=> b!4519782 (= res!1881026 (allKeysSameHashInMap!1267 lm!1477 hashF!1107))))

(declare-fun b!4519783 () Bool)

(declare-fun e!2815924 () Bool)

(assert (=> b!4519783 (= e!2815924 e!2815929)))

(declare-fun res!1881025 () Bool)

(assert (=> b!4519783 (=> res!1881025 e!2815929)))

(assert (=> b!4519783 (= res!1881025 (not (eq!617 lt!1697013 lt!1697008)))))

(assert (=> b!4519783 (= lt!1697013 (extractMap!1216 (toList!4327 (+!1538 lt!1697021 lt!1697023))))))

(declare-fun head!9412 (ListLongMap!2959) tuple2!51076)

(assert (=> b!4519783 (= lt!1697023 (head!9412 lm!1477))))

(assert (=> b!4519783 (eq!617 lt!1697024 lt!1697017)))

(declare-fun lt!1697020 () ListMap!3589)

(declare-fun -!386 (ListMap!3589 K!12040) ListMap!3589)

(assert (=> b!4519783 (= lt!1697017 (-!386 lt!1697020 key!3287))))

(assert (=> b!4519783 (= lt!1697024 (extractMap!1216 (toList!4327 lt!1697001)))))

(assert (=> b!4519783 (= lt!1697001 (+!1538 lt!1697021 lt!1697006))))

(assert (=> b!4519783 (= lt!1697006 (tuple2!51077 hash!344 newBucket!178))))

(declare-fun lt!1697000 () Unit!95040)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!145 (ListLongMap!2959 (_ BitVec 64) List!50770 K!12040 Hashable!5555) Unit!95040)

(assert (=> b!4519783 (= lt!1697000 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!145 lt!1697021 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4519784 () Bool)

(declare-fun res!1881038 () Bool)

(assert (=> b!4519784 (=> res!1881038 e!2815933)))

(assert (=> b!4519784 (= res!1881038 (not (= (head!9412 lt!1697011) lt!1697023)))))

(declare-fun b!4519785 () Bool)

(declare-fun e!2815926 () Unit!95040)

(declare-fun Unit!95042 () Unit!95040)

(assert (=> b!4519785 (= e!2815926 Unit!95042)))

(declare-fun lt!1697022 () Unit!95040)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!148 (ListLongMap!2959 K!12040 Hashable!5555) Unit!95040)

(assert (=> b!4519785 (= lt!1697022 (lemmaNotInItsHashBucketThenNotInMap!148 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4519785 false))

(declare-fun b!4519786 () Bool)

(declare-fun res!1881021 () Bool)

(assert (=> b!4519786 (=> res!1881021 e!2815918)))

(get-info :version)

(assert (=> b!4519786 (= res!1881021 (or ((_ is Nil!50647) (toList!4327 lm!1477)) (= (_1!28832 (h!56500 (toList!4327 lm!1477))) hash!344)))))

(declare-fun b!4519787 () Bool)

(assert (=> b!4519787 (= e!2815931 (not e!2815918))))

(declare-fun res!1881031 () Bool)

(assert (=> b!4519787 (=> res!1881031 e!2815918)))

(declare-fun lt!1697018 () List!50770)

(declare-fun removePairForKey!787 (List!50770 K!12040) List!50770)

(assert (=> b!4519787 (= res!1881031 (not (= newBucket!178 (removePairForKey!787 lt!1697018 key!3287))))))

(declare-fun lt!1697015 () Unit!95040)

(declare-fun lt!1697012 () tuple2!51076)

(declare-fun forallContained!2515 (List!50771 Int tuple2!51076) Unit!95040)

(assert (=> b!4519787 (= lt!1697015 (forallContained!2515 (toList!4327 lm!1477) lambda!172325 lt!1697012))))

(declare-fun contains!13373 (List!50771 tuple2!51076) Bool)

(assert (=> b!4519787 (contains!13373 (toList!4327 lm!1477) lt!1697012)))

(assert (=> b!4519787 (= lt!1697012 (tuple2!51077 hash!344 lt!1697018))))

(declare-fun lt!1697019 () Unit!95040)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!672 (List!50771 (_ BitVec 64) List!50770) Unit!95040)

(assert (=> b!4519787 (= lt!1697019 (lemmaGetValueByKeyImpliesContainsTuple!672 (toList!4327 lm!1477) hash!344 lt!1697018))))

(declare-fun apply!11897 (ListLongMap!2959 (_ BitVec 64)) List!50770)

(assert (=> b!4519787 (= lt!1697018 (apply!11897 lm!1477 hash!344))))

(declare-fun lt!1697009 () (_ BitVec 64))

(assert (=> b!4519787 (contains!13371 lm!1477 lt!1697009)))

(declare-fun lt!1697004 () Unit!95040)

(declare-fun lemmaInGenMapThenLongMapContainsHash!234 (ListLongMap!2959 K!12040 Hashable!5555) Unit!95040)

(assert (=> b!4519787 (= lt!1697004 (lemmaInGenMapThenLongMapContainsHash!234 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4519788 () Bool)

(declare-fun Unit!95043 () Unit!95040)

(assert (=> b!4519788 (= e!2815926 Unit!95043)))

(declare-fun b!4519789 () Bool)

(declare-fun res!1881027 () Bool)

(assert (=> b!4519789 (=> res!1881027 e!2815919)))

(assert (=> b!4519789 (= res!1881027 (not (= (apply!11897 lt!1697021 hash!344) lt!1697018)))))

(declare-fun b!4519790 () Bool)

(assert (=> b!4519790 (= e!2815919 e!2815920)))

(declare-fun res!1881029 () Bool)

(assert (=> b!4519790 (=> res!1881029 e!2815920)))

(declare-fun lt!1697010 () Bool)

(assert (=> b!4519790 (= res!1881029 lt!1697010)))

(declare-fun lt!1697005 () Unit!95040)

(assert (=> b!4519790 (= lt!1697005 e!2815926)))

(declare-fun c!771323 () Bool)

(assert (=> b!4519790 (= c!771323 lt!1697010)))

(declare-fun containsKey!1780 (List!50770 K!12040) Bool)

(assert (=> b!4519790 (= lt!1697010 (not (containsKey!1780 lt!1697018 key!3287)))))

(declare-fun b!4519791 () Bool)

(declare-fun res!1881035 () Bool)

(assert (=> b!4519791 (=> res!1881035 e!2815923)))

(assert (=> b!4519791 (= res!1881035 (not (containsKey!1780 (_2!28832 lt!1697023) key!3287)))))

(declare-fun b!4519792 () Bool)

(declare-fun res!1881032 () Bool)

(assert (=> b!4519792 (=> res!1881032 e!2815918)))

(declare-fun noDuplicateKeys!1160 (List!50770) Bool)

(assert (=> b!4519792 (= res!1881032 (not (noDuplicateKeys!1160 newBucket!178)))))

(declare-fun b!4519793 () Bool)

(declare-fun res!1881036 () Bool)

(assert (=> b!4519793 (=> res!1881036 e!2815929)))

(assert (=> b!4519793 (= res!1881036 (bvsge (_1!28832 lt!1697023) hash!344))))

(declare-fun b!4519794 () Bool)

(declare-fun tp!1338081 () Bool)

(assert (=> b!4519794 (= e!2815928 tp!1338081)))

(declare-fun b!4519795 () Bool)

(declare-fun res!1881018 () Bool)

(assert (=> b!4519795 (=> res!1881018 e!2815919)))

(assert (=> b!4519795 (= res!1881018 (not (contains!13373 (t!357733 (toList!4327 lm!1477)) lt!1697012)))))

(declare-fun b!4519796 () Bool)

(assert (=> b!4519796 (= e!2815932 e!2815931)))

(declare-fun res!1881020 () Bool)

(assert (=> b!4519796 (=> (not res!1881020) (not e!2815931))))

(assert (=> b!4519796 (= res!1881020 (= lt!1697009 hash!344))))

(declare-fun hash!2807 (Hashable!5555 K!12040) (_ BitVec 64))

(assert (=> b!4519796 (= lt!1697009 (hash!2807 hashF!1107 key!3287))))

(declare-fun b!4519797 () Bool)

(assert (=> b!4519797 (= e!2815922 e!2815924)))

(declare-fun res!1881040 () Bool)

(assert (=> b!4519797 (=> res!1881040 e!2815924)))

(assert (=> b!4519797 (= res!1881040 (not (contains!13372 (extractMap!1216 (t!357733 (toList!4327 lm!1477))) key!3287)))))

(assert (=> b!4519797 (contains!13372 lt!1697020 key!3287)))

(assert (=> b!4519797 (= lt!1697020 (extractMap!1216 (toList!4327 lt!1697021)))))

(declare-fun lt!1697007 () Unit!95040)

(declare-fun lemmaListContainsThenExtractedMapContains!130 (ListLongMap!2959 K!12040 Hashable!5555) Unit!95040)

(assert (=> b!4519797 (= lt!1697007 (lemmaListContainsThenExtractedMapContains!130 lt!1697021 key!3287 hashF!1107))))

(declare-fun b!4519798 () Bool)

(assert (=> b!4519798 (= e!2815925 e!2815923)))

(declare-fun res!1881028 () Bool)

(assert (=> b!4519798 (=> res!1881028 e!2815923)))

(assert (=> b!4519798 (= res!1881028 (not (noDuplicateKeys!1160 (_2!28832 lt!1697023))))))

(declare-fun lt!1697002 () Unit!95040)

(assert (=> b!4519798 (= lt!1697002 (forallContained!2515 (toList!4327 lm!1477) lambda!172325 (h!56500 (toList!4327 lm!1477))))))

(assert (= (and start!447492 res!1881022) b!4519782))

(assert (= (and b!4519782 res!1881026) b!4519781))

(assert (= (and b!4519781 res!1881039) b!4519796))

(assert (= (and b!4519796 res!1881020) b!4519777))

(assert (= (and b!4519777 res!1881019) b!4519787))

(assert (= (and b!4519787 (not res!1881031)) b!4519792))

(assert (= (and b!4519792 (not res!1881032)) b!4519786))

(assert (= (and b!4519786 (not res!1881021)) b!4519776))

(assert (= (and b!4519776 (not res!1881037)) b!4519789))

(assert (= (and b!4519789 (not res!1881027)) b!4519795))

(assert (= (and b!4519795 (not res!1881018)) b!4519790))

(assert (= (and b!4519790 c!771323) b!4519785))

(assert (= (and b!4519790 (not c!771323)) b!4519788))

(assert (= (and b!4519790 (not res!1881029)) b!4519778))

(assert (= (and b!4519778 (not res!1881034)) b!4519797))

(assert (= (and b!4519797 (not res!1881040)) b!4519783))

(assert (= (and b!4519783 (not res!1881025)) b!4519780))

(assert (= (and b!4519780 (not res!1881030)) b!4519793))

(assert (= (and b!4519793 (not res!1881036)) b!4519775))

(assert (= (and b!4519775 (not res!1881023)) b!4519784))

(assert (= (and b!4519784 (not res!1881038)) b!4519779))

(assert (= (and b!4519779 (not res!1881024)) b!4519774))

(assert (= (and b!4519774 (not res!1881033)) b!4519798))

(assert (= (and b!4519798 (not res!1881028)) b!4519791))

(assert (= (and b!4519791 (not res!1881035)) b!4519773))

(assert (= start!447492 b!4519794))

(assert (= (and start!447492 ((_ is Cons!50646) newBucket!178)) b!4519772))

(declare-fun m!5267487 () Bool)

(assert (=> b!4519784 m!5267487))

(declare-fun m!5267489 () Bool)

(assert (=> b!4519782 m!5267489))

(declare-fun m!5267491 () Bool)

(assert (=> b!4519781 m!5267491))

(declare-fun m!5267493 () Bool)

(assert (=> b!4519781 m!5267493))

(declare-fun m!5267495 () Bool)

(assert (=> b!4519780 m!5267495))

(declare-fun m!5267497 () Bool)

(assert (=> b!4519796 m!5267497))

(declare-fun m!5267499 () Bool)

(assert (=> b!4519776 m!5267499))

(declare-fun m!5267501 () Bool)

(assert (=> b!4519776 m!5267501))

(declare-fun m!5267503 () Bool)

(assert (=> b!4519779 m!5267503))

(declare-fun m!5267505 () Bool)

(assert (=> b!4519779 m!5267505))

(declare-fun m!5267507 () Bool)

(assert (=> b!4519779 m!5267507))

(declare-fun m!5267509 () Bool)

(assert (=> b!4519795 m!5267509))

(declare-fun m!5267511 () Bool)

(assert (=> b!4519774 m!5267511))

(declare-fun m!5267513 () Bool)

(assert (=> b!4519774 m!5267513))

(declare-fun m!5267515 () Bool)

(assert (=> b!4519774 m!5267515))

(declare-fun m!5267517 () Bool)

(assert (=> b!4519774 m!5267517))

(declare-fun m!5267519 () Bool)

(assert (=> b!4519790 m!5267519))

(declare-fun m!5267521 () Bool)

(assert (=> b!4519798 m!5267521))

(declare-fun m!5267523 () Bool)

(assert (=> b!4519798 m!5267523))

(declare-fun m!5267525 () Bool)

(assert (=> b!4519777 m!5267525))

(declare-fun m!5267527 () Bool)

(assert (=> b!4519773 m!5267527))

(declare-fun m!5267529 () Bool)

(assert (=> start!447492 m!5267529))

(declare-fun m!5267531 () Bool)

(assert (=> start!447492 m!5267531))

(declare-fun m!5267533 () Bool)

(assert (=> b!4519783 m!5267533))

(declare-fun m!5267535 () Bool)

(assert (=> b!4519783 m!5267535))

(declare-fun m!5267537 () Bool)

(assert (=> b!4519783 m!5267537))

(declare-fun m!5267539 () Bool)

(assert (=> b!4519783 m!5267539))

(declare-fun m!5267541 () Bool)

(assert (=> b!4519783 m!5267541))

(declare-fun m!5267543 () Bool)

(assert (=> b!4519783 m!5267543))

(declare-fun m!5267545 () Bool)

(assert (=> b!4519783 m!5267545))

(declare-fun m!5267547 () Bool)

(assert (=> b!4519783 m!5267547))

(declare-fun m!5267549 () Bool)

(assert (=> b!4519783 m!5267549))

(declare-fun m!5267551 () Bool)

(assert (=> b!4519797 m!5267551))

(declare-fun m!5267553 () Bool)

(assert (=> b!4519797 m!5267553))

(declare-fun m!5267555 () Bool)

(assert (=> b!4519797 m!5267555))

(declare-fun m!5267557 () Bool)

(assert (=> b!4519797 m!5267557))

(assert (=> b!4519797 m!5267555))

(declare-fun m!5267559 () Bool)

(assert (=> b!4519797 m!5267559))

(declare-fun m!5267561 () Bool)

(assert (=> b!4519789 m!5267561))

(declare-fun m!5267563 () Bool)

(assert (=> b!4519785 m!5267563))

(declare-fun m!5267565 () Bool)

(assert (=> b!4519787 m!5267565))

(declare-fun m!5267567 () Bool)

(assert (=> b!4519787 m!5267567))

(declare-fun m!5267569 () Bool)

(assert (=> b!4519787 m!5267569))

(declare-fun m!5267571 () Bool)

(assert (=> b!4519787 m!5267571))

(declare-fun m!5267573 () Bool)

(assert (=> b!4519787 m!5267573))

(declare-fun m!5267575 () Bool)

(assert (=> b!4519787 m!5267575))

(declare-fun m!5267577 () Bool)

(assert (=> b!4519787 m!5267577))

(declare-fun m!5267579 () Bool)

(assert (=> b!4519778 m!5267579))

(declare-fun m!5267581 () Bool)

(assert (=> b!4519778 m!5267581))

(declare-fun m!5267583 () Bool)

(assert (=> b!4519778 m!5267583))

(declare-fun m!5267585 () Bool)

(assert (=> b!4519791 m!5267585))

(declare-fun m!5267587 () Bool)

(assert (=> b!4519792 m!5267587))

(declare-fun m!5267589 () Bool)

(assert (=> b!4519775 m!5267589))

(declare-fun m!5267591 () Bool)

(assert (=> b!4519775 m!5267591))

(check-sat (not b!4519795) (not b!4519783) (not b!4519778) (not b!4519774) (not b!4519776) (not b!4519782) (not b!4519798) (not b!4519797) (not b!4519784) (not b!4519779) (not b!4519796) (not b!4519777) (not b!4519792) (not b!4519780) (not b!4519787) (not b!4519791) tp_is_empty!27919 (not b!4519773) (not start!447492) (not b!4519775) (not b!4519794) (not b!4519772) (not b!4519781) (not b!4519790) (not b!4519785) tp_is_empty!27917 (not b!4519789))
(check-sat)
(get-model)

(declare-fun d!1392384 () Bool)

(declare-fun res!1881054 () Bool)

(declare-fun e!2815950 () Bool)

(assert (=> d!1392384 (=> res!1881054 e!2815950)))

(assert (=> d!1392384 (= res!1881054 (not ((_ is Cons!50646) newBucket!178)))))

(assert (=> d!1392384 (= (noDuplicateKeys!1160 newBucket!178) e!2815950)))

(declare-fun b!4519818 () Bool)

(declare-fun e!2815951 () Bool)

(assert (=> b!4519818 (= e!2815950 e!2815951)))

(declare-fun res!1881055 () Bool)

(assert (=> b!4519818 (=> (not res!1881055) (not e!2815951))))

(assert (=> b!4519818 (= res!1881055 (not (containsKey!1780 (t!357732 newBucket!178) (_1!28831 (h!56499 newBucket!178)))))))

(declare-fun b!4519819 () Bool)

(assert (=> b!4519819 (= e!2815951 (noDuplicateKeys!1160 (t!357732 newBucket!178)))))

(assert (= (and d!1392384 (not res!1881054)) b!4519818))

(assert (= (and b!4519818 res!1881055) b!4519819))

(declare-fun m!5267613 () Bool)

(assert (=> b!4519818 m!5267613))

(declare-fun m!5267615 () Bool)

(assert (=> b!4519819 m!5267615))

(assert (=> b!4519792 d!1392384))

(declare-fun bm!314900 () Bool)

(declare-fun call!314905 () Bool)

(declare-datatypes ((List!50773 0))(
  ( (Nil!50649) (Cons!50649 (h!56504 K!12040) (t!357735 List!50773)) )
))
(declare-fun e!2816009 () List!50773)

(declare-fun contains!13375 (List!50773 K!12040) Bool)

(assert (=> bm!314900 (= call!314905 (contains!13375 e!2816009 key!3287))))

(declare-fun c!771348 () Bool)

(declare-fun c!771347 () Bool)

(assert (=> bm!314900 (= c!771348 c!771347)))

(declare-fun b!4519897 () Bool)

(declare-fun e!2816010 () Unit!95040)

(declare-fun Unit!95050 () Unit!95040)

(assert (=> b!4519897 (= e!2816010 Unit!95050)))

(declare-fun b!4519898 () Bool)

(declare-fun e!2816011 () Unit!95040)

(declare-fun lt!1697115 () Unit!95040)

(assert (=> b!4519898 (= e!2816011 lt!1697115)))

(declare-fun lt!1697120 () Unit!95040)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!996 (List!50770 K!12040) Unit!95040)

(assert (=> b!4519898 (= lt!1697120 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697008) key!3287))))

(declare-datatypes ((Option!11112 0))(
  ( (None!11111) (Some!11111 (v!44711 V!12286)) )
))
(declare-fun isDefined!8399 (Option!11112) Bool)

(declare-fun getValueByKey!1092 (List!50770 K!12040) Option!11112)

(assert (=> b!4519898 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697008) key!3287))))

(declare-fun lt!1697117 () Unit!95040)

(assert (=> b!4519898 (= lt!1697117 lt!1697120)))

(declare-fun lemmaInListThenGetKeysListContains!461 (List!50770 K!12040) Unit!95040)

(assert (=> b!4519898 (= lt!1697115 (lemmaInListThenGetKeysListContains!461 (toList!4328 lt!1697008) key!3287))))

(assert (=> b!4519898 call!314905))

(declare-fun b!4519899 () Bool)

(declare-fun e!2816007 () Bool)

(declare-fun keys!17594 (ListMap!3589) List!50773)

(assert (=> b!4519899 (= e!2816007 (contains!13375 (keys!17594 lt!1697008) key!3287))))

(declare-fun b!4519900 () Bool)

(declare-fun getKeysList!465 (List!50770) List!50773)

(assert (=> b!4519900 (= e!2816009 (getKeysList!465 (toList!4328 lt!1697008)))))

(declare-fun b!4519901 () Bool)

(assert (=> b!4519901 false))

(declare-fun lt!1697118 () Unit!95040)

(declare-fun lt!1697114 () Unit!95040)

(assert (=> b!4519901 (= lt!1697118 lt!1697114)))

(declare-fun containsKey!1783 (List!50770 K!12040) Bool)

(assert (=> b!4519901 (containsKey!1783 (toList!4328 lt!1697008) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!464 (List!50770 K!12040) Unit!95040)

(assert (=> b!4519901 (= lt!1697114 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 lt!1697008) key!3287))))

(declare-fun Unit!95051 () Unit!95040)

(assert (=> b!4519901 (= e!2816010 Unit!95051)))

(declare-fun b!4519902 () Bool)

(assert (=> b!4519902 (= e!2816011 e!2816010)))

(declare-fun c!771346 () Bool)

(assert (=> b!4519902 (= c!771346 call!314905)))

(declare-fun b!4519903 () Bool)

(declare-fun e!2816006 () Bool)

(assert (=> b!4519903 (= e!2816006 e!2816007)))

(declare-fun res!1881096 () Bool)

(assert (=> b!4519903 (=> (not res!1881096) (not e!2816007))))

(assert (=> b!4519903 (= res!1881096 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697008) key!3287)))))

(declare-fun d!1392386 () Bool)

(assert (=> d!1392386 e!2816006))

(declare-fun res!1881095 () Bool)

(assert (=> d!1392386 (=> res!1881095 e!2816006)))

(declare-fun e!2816008 () Bool)

(assert (=> d!1392386 (= res!1881095 e!2816008)))

(declare-fun res!1881097 () Bool)

(assert (=> d!1392386 (=> (not res!1881097) (not e!2816008))))

(declare-fun lt!1697113 () Bool)

(assert (=> d!1392386 (= res!1881097 (not lt!1697113))))

(declare-fun lt!1697119 () Bool)

(assert (=> d!1392386 (= lt!1697113 lt!1697119)))

(declare-fun lt!1697116 () Unit!95040)

(assert (=> d!1392386 (= lt!1697116 e!2816011)))

(assert (=> d!1392386 (= c!771347 lt!1697119)))

(assert (=> d!1392386 (= lt!1697119 (containsKey!1783 (toList!4328 lt!1697008) key!3287))))

(assert (=> d!1392386 (= (contains!13372 lt!1697008 key!3287) lt!1697113)))

(declare-fun b!4519904 () Bool)

(assert (=> b!4519904 (= e!2816008 (not (contains!13375 (keys!17594 lt!1697008) key!3287)))))

(declare-fun b!4519905 () Bool)

(assert (=> b!4519905 (= e!2816009 (keys!17594 lt!1697008))))

(assert (= (and d!1392386 c!771347) b!4519898))

(assert (= (and d!1392386 (not c!771347)) b!4519902))

(assert (= (and b!4519902 c!771346) b!4519901))

(assert (= (and b!4519902 (not c!771346)) b!4519897))

(assert (= (or b!4519898 b!4519902) bm!314900))

(assert (= (and bm!314900 c!771348) b!4519900))

(assert (= (and bm!314900 (not c!771348)) b!4519905))

(assert (= (and d!1392386 res!1881097) b!4519904))

(assert (= (and d!1392386 (not res!1881095)) b!4519903))

(assert (= (and b!4519903 res!1881096) b!4519899))

(declare-fun m!5267711 () Bool)

(assert (=> d!1392386 m!5267711))

(declare-fun m!5267717 () Bool)

(assert (=> b!4519903 m!5267717))

(assert (=> b!4519903 m!5267717))

(declare-fun m!5267721 () Bool)

(assert (=> b!4519903 m!5267721))

(declare-fun m!5267723 () Bool)

(assert (=> b!4519905 m!5267723))

(declare-fun m!5267725 () Bool)

(assert (=> bm!314900 m!5267725))

(assert (=> b!4519904 m!5267723))

(assert (=> b!4519904 m!5267723))

(declare-fun m!5267727 () Bool)

(assert (=> b!4519904 m!5267727))

(assert (=> b!4519899 m!5267723))

(assert (=> b!4519899 m!5267723))

(assert (=> b!4519899 m!5267727))

(assert (=> b!4519901 m!5267711))

(declare-fun m!5267729 () Bool)

(assert (=> b!4519901 m!5267729))

(declare-fun m!5267731 () Bool)

(assert (=> b!4519900 m!5267731))

(declare-fun m!5267733 () Bool)

(assert (=> b!4519898 m!5267733))

(assert (=> b!4519898 m!5267717))

(assert (=> b!4519898 m!5267717))

(assert (=> b!4519898 m!5267721))

(declare-fun m!5267735 () Bool)

(assert (=> b!4519898 m!5267735))

(assert (=> b!4519781 d!1392386))

(declare-fun bs!855501 () Bool)

(declare-fun d!1392416 () Bool)

(assert (= bs!855501 (and d!1392416 start!447492)))

(declare-fun lambda!172348 () Int)

(assert (=> bs!855501 (= lambda!172348 lambda!172325)))

(declare-fun lt!1697150 () ListMap!3589)

(declare-fun invariantList!1017 (List!50770) Bool)

(assert (=> d!1392416 (invariantList!1017 (toList!4328 lt!1697150))))

(declare-fun e!2816052 () ListMap!3589)

(assert (=> d!1392416 (= lt!1697150 e!2816052)))

(declare-fun c!771365 () Bool)

(assert (=> d!1392416 (= c!771365 ((_ is Cons!50647) (toList!4327 lm!1477)))))

(assert (=> d!1392416 (forall!10263 (toList!4327 lm!1477) lambda!172348)))

(assert (=> d!1392416 (= (extractMap!1216 (toList!4327 lm!1477)) lt!1697150)))

(declare-fun b!4519968 () Bool)

(assert (=> b!4519968 (= e!2816052 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 lm!1477))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))

(declare-fun b!4519969 () Bool)

(assert (=> b!4519969 (= e!2816052 (ListMap!3590 Nil!50646))))

(assert (= (and d!1392416 c!771365) b!4519968))

(assert (= (and d!1392416 (not c!771365)) b!4519969))

(declare-fun m!5267823 () Bool)

(assert (=> d!1392416 m!5267823))

(declare-fun m!5267825 () Bool)

(assert (=> d!1392416 m!5267825))

(assert (=> b!4519968 m!5267555))

(assert (=> b!4519968 m!5267555))

(declare-fun m!5267827 () Bool)

(assert (=> b!4519968 m!5267827))

(assert (=> b!4519781 d!1392416))

(declare-fun bs!855502 () Bool)

(declare-fun d!1392446 () Bool)

(assert (= bs!855502 (and d!1392446 start!447492)))

(declare-fun lambda!172351 () Int)

(assert (=> bs!855502 (not (= lambda!172351 lambda!172325))))

(declare-fun bs!855503 () Bool)

(assert (= bs!855503 (and d!1392446 d!1392416)))

(assert (=> bs!855503 (not (= lambda!172351 lambda!172348))))

(assert (=> d!1392446 true))

(assert (=> d!1392446 (= (allKeysSameHashInMap!1267 lm!1477 hashF!1107) (forall!10263 (toList!4327 lm!1477) lambda!172351))))

(declare-fun bs!855504 () Bool)

(assert (= bs!855504 d!1392446))

(declare-fun m!5267829 () Bool)

(assert (=> bs!855504 m!5267829))

(assert (=> b!4519782 d!1392446))

(declare-fun d!1392448 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8356 (List!50770) (InoxSet tuple2!51074))

(assert (=> d!1392448 (= (eq!617 lt!1697024 lt!1697017) (= (content!8356 (toList!4328 lt!1697024)) (content!8356 (toList!4328 lt!1697017))))))

(declare-fun bs!855505 () Bool)

(assert (= bs!855505 d!1392448))

(declare-fun m!5267831 () Bool)

(assert (=> bs!855505 m!5267831))

(declare-fun m!5267833 () Bool)

(assert (=> bs!855505 m!5267833))

(assert (=> b!4519783 d!1392448))

(declare-fun d!1392450 () Bool)

(declare-fun e!2816059 () Bool)

(assert (=> d!1392450 e!2816059))

(declare-fun res!1881131 () Bool)

(assert (=> d!1392450 (=> (not res!1881131) (not e!2816059))))

(declare-fun lt!1697164 () ListLongMap!2959)

(assert (=> d!1392450 (= res!1881131 (contains!13371 lt!1697164 (_1!28832 lt!1697023)))))

(declare-fun lt!1697166 () List!50771)

(assert (=> d!1392450 (= lt!1697164 (ListLongMap!2960 lt!1697166))))

(declare-fun lt!1697163 () Unit!95040)

(declare-fun lt!1697165 () Unit!95040)

(assert (=> d!1392450 (= lt!1697163 lt!1697165)))

(declare-datatypes ((Option!11113 0))(
  ( (None!11112) (Some!11112 (v!44712 List!50770)) )
))
(declare-fun getValueByKey!1093 (List!50771 (_ BitVec 64)) Option!11113)

(assert (=> d!1392450 (= (getValueByKey!1093 lt!1697166 (_1!28832 lt!1697023)) (Some!11112 (_2!28832 lt!1697023)))))

(declare-fun lemmaContainsTupThenGetReturnValue!678 (List!50771 (_ BitVec 64) List!50770) Unit!95040)

(assert (=> d!1392450 (= lt!1697165 (lemmaContainsTupThenGetReturnValue!678 lt!1697166 (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))

(declare-fun insertStrictlySorted!408 (List!50771 (_ BitVec 64) List!50770) List!50771)

(assert (=> d!1392450 (= lt!1697166 (insertStrictlySorted!408 (toList!4327 lt!1697021) (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))

(assert (=> d!1392450 (= (+!1538 lt!1697021 lt!1697023) lt!1697164)))

(declare-fun b!4519980 () Bool)

(declare-fun res!1881130 () Bool)

(assert (=> b!4519980 (=> (not res!1881130) (not e!2816059))))

(assert (=> b!4519980 (= res!1881130 (= (getValueByKey!1093 (toList!4327 lt!1697164) (_1!28832 lt!1697023)) (Some!11112 (_2!28832 lt!1697023))))))

(declare-fun b!4519981 () Bool)

(assert (=> b!4519981 (= e!2816059 (contains!13373 (toList!4327 lt!1697164) lt!1697023))))

(assert (= (and d!1392450 res!1881131) b!4519980))

(assert (= (and b!4519980 res!1881130) b!4519981))

(declare-fun m!5267851 () Bool)

(assert (=> d!1392450 m!5267851))

(declare-fun m!5267853 () Bool)

(assert (=> d!1392450 m!5267853))

(declare-fun m!5267855 () Bool)

(assert (=> d!1392450 m!5267855))

(declare-fun m!5267857 () Bool)

(assert (=> d!1392450 m!5267857))

(declare-fun m!5267859 () Bool)

(assert (=> b!4519980 m!5267859))

(declare-fun m!5267861 () Bool)

(assert (=> b!4519981 m!5267861))

(assert (=> b!4519783 d!1392450))

(declare-fun bs!855516 () Bool)

(declare-fun d!1392458 () Bool)

(assert (= bs!855516 (and d!1392458 start!447492)))

(declare-fun lambda!172357 () Int)

(assert (=> bs!855516 (= lambda!172357 lambda!172325)))

(declare-fun bs!855517 () Bool)

(assert (= bs!855517 (and d!1392458 d!1392416)))

(assert (=> bs!855517 (= lambda!172357 lambda!172348)))

(declare-fun bs!855518 () Bool)

(assert (= bs!855518 (and d!1392458 d!1392446)))

(assert (=> bs!855518 (not (= lambda!172357 lambda!172351))))

(assert (=> d!1392458 (eq!617 (extractMap!1216 (toList!4327 (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178)))) (-!386 (extractMap!1216 (toList!4327 lt!1697021)) key!3287))))

(declare-fun lt!1697169 () Unit!95040)

(declare-fun choose!29515 (ListLongMap!2959 (_ BitVec 64) List!50770 K!12040 Hashable!5555) Unit!95040)

(assert (=> d!1392458 (= lt!1697169 (choose!29515 lt!1697021 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1392458 (forall!10263 (toList!4327 lt!1697021) lambda!172357)))

(assert (=> d!1392458 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!145 lt!1697021 hash!344 newBucket!178 key!3287 hashF!1107) lt!1697169)))

(declare-fun bs!855519 () Bool)

(assert (= bs!855519 d!1392458))

(assert (=> bs!855519 m!5267557))

(assert (=> bs!855519 m!5267557))

(declare-fun m!5267863 () Bool)

(assert (=> bs!855519 m!5267863))

(declare-fun m!5267865 () Bool)

(assert (=> bs!855519 m!5267865))

(declare-fun m!5267867 () Bool)

(assert (=> bs!855519 m!5267867))

(declare-fun m!5267869 () Bool)

(assert (=> bs!855519 m!5267869))

(assert (=> bs!855519 m!5267869))

(assert (=> bs!855519 m!5267863))

(declare-fun m!5267871 () Bool)

(assert (=> bs!855519 m!5267871))

(declare-fun m!5267873 () Bool)

(assert (=> bs!855519 m!5267873))

(assert (=> b!4519783 d!1392458))

(declare-fun d!1392460 () Bool)

(declare-fun e!2816062 () Bool)

(assert (=> d!1392460 e!2816062))

(declare-fun res!1881134 () Bool)

(assert (=> d!1392460 (=> (not res!1881134) (not e!2816062))))

(declare-fun lt!1697172 () ListMap!3589)

(assert (=> d!1392460 (= res!1881134 (not (contains!13372 lt!1697172 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!140 (List!50770 K!12040) List!50770)

(assert (=> d!1392460 (= lt!1697172 (ListMap!3590 (removePresrvNoDuplicatedKeys!140 (toList!4328 lt!1697020) key!3287)))))

(assert (=> d!1392460 (= (-!386 lt!1697020 key!3287) lt!1697172)))

(declare-fun b!4519984 () Bool)

(declare-fun content!8357 (List!50773) (InoxSet K!12040))

(assert (=> b!4519984 (= e!2816062 (= ((_ map and) (content!8357 (keys!17594 lt!1697020)) ((_ map not) (store ((as const (Array K!12040 Bool)) false) key!3287 true))) (content!8357 (keys!17594 lt!1697172))))))

(assert (= (and d!1392460 res!1881134) b!4519984))

(declare-fun m!5267875 () Bool)

(assert (=> d!1392460 m!5267875))

(declare-fun m!5267877 () Bool)

(assert (=> d!1392460 m!5267877))

(declare-fun m!5267879 () Bool)

(assert (=> b!4519984 m!5267879))

(declare-fun m!5267881 () Bool)

(assert (=> b!4519984 m!5267881))

(declare-fun m!5267883 () Bool)

(assert (=> b!4519984 m!5267883))

(assert (=> b!4519984 m!5267879))

(declare-fun m!5267885 () Bool)

(assert (=> b!4519984 m!5267885))

(assert (=> b!4519984 m!5267881))

(declare-fun m!5267887 () Bool)

(assert (=> b!4519984 m!5267887))

(assert (=> b!4519783 d!1392460))

(declare-fun bs!855520 () Bool)

(declare-fun d!1392462 () Bool)

(assert (= bs!855520 (and d!1392462 start!447492)))

(declare-fun lambda!172358 () Int)

(assert (=> bs!855520 (= lambda!172358 lambda!172325)))

(declare-fun bs!855521 () Bool)

(assert (= bs!855521 (and d!1392462 d!1392416)))

(assert (=> bs!855521 (= lambda!172358 lambda!172348)))

(declare-fun bs!855522 () Bool)

(assert (= bs!855522 (and d!1392462 d!1392446)))

(assert (=> bs!855522 (not (= lambda!172358 lambda!172351))))

(declare-fun bs!855523 () Bool)

(assert (= bs!855523 (and d!1392462 d!1392458)))

(assert (=> bs!855523 (= lambda!172358 lambda!172357)))

(declare-fun lt!1697173 () ListMap!3589)

(assert (=> d!1392462 (invariantList!1017 (toList!4328 lt!1697173))))

(declare-fun e!2816063 () ListMap!3589)

(assert (=> d!1392462 (= lt!1697173 e!2816063)))

(declare-fun c!771366 () Bool)

(assert (=> d!1392462 (= c!771366 ((_ is Cons!50647) (toList!4327 lt!1697001)))))

(assert (=> d!1392462 (forall!10263 (toList!4327 lt!1697001) lambda!172358)))

(assert (=> d!1392462 (= (extractMap!1216 (toList!4327 lt!1697001)) lt!1697173)))

(declare-fun b!4519985 () Bool)

(assert (=> b!4519985 (= e!2816063 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))))))

(declare-fun b!4519986 () Bool)

(assert (=> b!4519986 (= e!2816063 (ListMap!3590 Nil!50646))))

(assert (= (and d!1392462 c!771366) b!4519985))

(assert (= (and d!1392462 (not c!771366)) b!4519986))

(declare-fun m!5267889 () Bool)

(assert (=> d!1392462 m!5267889))

(declare-fun m!5267891 () Bool)

(assert (=> d!1392462 m!5267891))

(declare-fun m!5267893 () Bool)

(assert (=> b!4519985 m!5267893))

(assert (=> b!4519985 m!5267893))

(declare-fun m!5267895 () Bool)

(assert (=> b!4519985 m!5267895))

(assert (=> b!4519783 d!1392462))

(declare-fun d!1392464 () Bool)

(declare-fun head!9414 (List!50771) tuple2!51076)

(assert (=> d!1392464 (= (head!9412 lm!1477) (head!9414 (toList!4327 lm!1477)))))

(declare-fun bs!855524 () Bool)

(assert (= bs!855524 d!1392464))

(declare-fun m!5267897 () Bool)

(assert (=> bs!855524 m!5267897))

(assert (=> b!4519783 d!1392464))

(declare-fun d!1392466 () Bool)

(declare-fun e!2816064 () Bool)

(assert (=> d!1392466 e!2816064))

(declare-fun res!1881136 () Bool)

(assert (=> d!1392466 (=> (not res!1881136) (not e!2816064))))

(declare-fun lt!1697175 () ListLongMap!2959)

(assert (=> d!1392466 (= res!1881136 (contains!13371 lt!1697175 (_1!28832 lt!1697006)))))

(declare-fun lt!1697177 () List!50771)

(assert (=> d!1392466 (= lt!1697175 (ListLongMap!2960 lt!1697177))))

(declare-fun lt!1697174 () Unit!95040)

(declare-fun lt!1697176 () Unit!95040)

(assert (=> d!1392466 (= lt!1697174 lt!1697176)))

(assert (=> d!1392466 (= (getValueByKey!1093 lt!1697177 (_1!28832 lt!1697006)) (Some!11112 (_2!28832 lt!1697006)))))

(assert (=> d!1392466 (= lt!1697176 (lemmaContainsTupThenGetReturnValue!678 lt!1697177 (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))

(assert (=> d!1392466 (= lt!1697177 (insertStrictlySorted!408 (toList!4327 lt!1697021) (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))

(assert (=> d!1392466 (= (+!1538 lt!1697021 lt!1697006) lt!1697175)))

(declare-fun b!4519987 () Bool)

(declare-fun res!1881135 () Bool)

(assert (=> b!4519987 (=> (not res!1881135) (not e!2816064))))

(assert (=> b!4519987 (= res!1881135 (= (getValueByKey!1093 (toList!4327 lt!1697175) (_1!28832 lt!1697006)) (Some!11112 (_2!28832 lt!1697006))))))

(declare-fun b!4519988 () Bool)

(assert (=> b!4519988 (= e!2816064 (contains!13373 (toList!4327 lt!1697175) lt!1697006))))

(assert (= (and d!1392466 res!1881136) b!4519987))

(assert (= (and b!4519987 res!1881135) b!4519988))

(declare-fun m!5267899 () Bool)

(assert (=> d!1392466 m!5267899))

(declare-fun m!5267901 () Bool)

(assert (=> d!1392466 m!5267901))

(declare-fun m!5267903 () Bool)

(assert (=> d!1392466 m!5267903))

(declare-fun m!5267905 () Bool)

(assert (=> d!1392466 m!5267905))

(declare-fun m!5267907 () Bool)

(assert (=> b!4519987 m!5267907))

(declare-fun m!5267909 () Bool)

(assert (=> b!4519988 m!5267909))

(assert (=> b!4519783 d!1392466))

(declare-fun bs!855525 () Bool)

(declare-fun d!1392468 () Bool)

(assert (= bs!855525 (and d!1392468 d!1392458)))

(declare-fun lambda!172359 () Int)

(assert (=> bs!855525 (= lambda!172359 lambda!172357)))

(declare-fun bs!855526 () Bool)

(assert (= bs!855526 (and d!1392468 start!447492)))

(assert (=> bs!855526 (= lambda!172359 lambda!172325)))

(declare-fun bs!855527 () Bool)

(assert (= bs!855527 (and d!1392468 d!1392462)))

(assert (=> bs!855527 (= lambda!172359 lambda!172358)))

(declare-fun bs!855528 () Bool)

(assert (= bs!855528 (and d!1392468 d!1392416)))

(assert (=> bs!855528 (= lambda!172359 lambda!172348)))

(declare-fun bs!855529 () Bool)

(assert (= bs!855529 (and d!1392468 d!1392446)))

(assert (=> bs!855529 (not (= lambda!172359 lambda!172351))))

(declare-fun lt!1697178 () ListMap!3589)

(assert (=> d!1392468 (invariantList!1017 (toList!4328 lt!1697178))))

(declare-fun e!2816065 () ListMap!3589)

(assert (=> d!1392468 (= lt!1697178 e!2816065)))

(declare-fun c!771367 () Bool)

(assert (=> d!1392468 (= c!771367 ((_ is Cons!50647) (toList!4327 (+!1538 lt!1697021 lt!1697023))))))

(assert (=> d!1392468 (forall!10263 (toList!4327 (+!1538 lt!1697021 lt!1697023)) lambda!172359)))

(assert (=> d!1392468 (= (extractMap!1216 (toList!4327 (+!1538 lt!1697021 lt!1697023))) lt!1697178)))

(declare-fun b!4519989 () Bool)

(assert (=> b!4519989 (= e!2816065 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))))))

(declare-fun b!4519990 () Bool)

(assert (=> b!4519990 (= e!2816065 (ListMap!3590 Nil!50646))))

(assert (= (and d!1392468 c!771367) b!4519989))

(assert (= (and d!1392468 (not c!771367)) b!4519990))

(declare-fun m!5267911 () Bool)

(assert (=> d!1392468 m!5267911))

(declare-fun m!5267913 () Bool)

(assert (=> d!1392468 m!5267913))

(declare-fun m!5267915 () Bool)

(assert (=> b!4519989 m!5267915))

(assert (=> b!4519989 m!5267915))

(declare-fun m!5267917 () Bool)

(assert (=> b!4519989 m!5267917))

(assert (=> b!4519783 d!1392468))

(declare-fun d!1392470 () Bool)

(assert (=> d!1392470 (= (eq!617 lt!1697013 lt!1697008) (= (content!8356 (toList!4328 lt!1697013)) (content!8356 (toList!4328 lt!1697008))))))

(declare-fun bs!855530 () Bool)

(assert (= bs!855530 d!1392470))

(declare-fun m!5267919 () Bool)

(assert (=> bs!855530 m!5267919))

(declare-fun m!5267921 () Bool)

(assert (=> bs!855530 m!5267921))

(assert (=> b!4519783 d!1392470))

(declare-fun d!1392472 () Bool)

(declare-fun get!16588 (Option!11113) List!50770)

(assert (=> d!1392472 (= (apply!11897 lt!1697021 hash!344) (get!16588 (getValueByKey!1093 (toList!4327 lt!1697021) hash!344)))))

(declare-fun bs!855531 () Bool)

(assert (= bs!855531 d!1392472))

(declare-fun m!5267923 () Bool)

(assert (=> bs!855531 m!5267923))

(assert (=> bs!855531 m!5267923))

(declare-fun m!5267925 () Bool)

(assert (=> bs!855531 m!5267925))

(assert (=> b!4519789 d!1392472))

(declare-fun d!1392474 () Bool)

(declare-fun res!1881141 () Bool)

(declare-fun e!2816070 () Bool)

(assert (=> d!1392474 (=> res!1881141 e!2816070)))

(assert (=> d!1392474 (= res!1881141 (and ((_ is Cons!50646) lt!1697018) (= (_1!28831 (h!56499 lt!1697018)) key!3287)))))

(assert (=> d!1392474 (= (containsKey!1780 lt!1697018 key!3287) e!2816070)))

(declare-fun b!4519995 () Bool)

(declare-fun e!2816071 () Bool)

(assert (=> b!4519995 (= e!2816070 e!2816071)))

(declare-fun res!1881142 () Bool)

(assert (=> b!4519995 (=> (not res!1881142) (not e!2816071))))

(assert (=> b!4519995 (= res!1881142 ((_ is Cons!50646) lt!1697018))))

(declare-fun b!4519996 () Bool)

(assert (=> b!4519996 (= e!2816071 (containsKey!1780 (t!357732 lt!1697018) key!3287))))

(assert (= (and d!1392474 (not res!1881141)) b!4519995))

(assert (= (and b!4519995 res!1881142) b!4519996))

(declare-fun m!5267927 () Bool)

(assert (=> b!4519996 m!5267927))

(assert (=> b!4519790 d!1392474))

(declare-fun d!1392476 () Bool)

(assert (=> d!1392476 (= (eq!617 lt!1696999 lt!1697016) (= (content!8356 (toList!4328 lt!1696999)) (content!8356 (toList!4328 lt!1697016))))))

(declare-fun bs!855532 () Bool)

(assert (= bs!855532 d!1392476))

(declare-fun m!5267929 () Bool)

(assert (=> bs!855532 m!5267929))

(declare-fun m!5267931 () Bool)

(assert (=> bs!855532 m!5267931))

(assert (=> b!4519779 d!1392476))

(declare-fun b!4520061 () Bool)

(assert (=> b!4520061 true))

(declare-fun bs!855606 () Bool)

(declare-fun b!4520058 () Bool)

(assert (= bs!855606 (and b!4520058 b!4520061)))

(declare-fun lambda!172431 () Int)

(declare-fun lambda!172430 () Int)

(assert (=> bs!855606 (= lambda!172431 lambda!172430)))

(assert (=> b!4520058 true))

(declare-fun lt!1697345 () ListMap!3589)

(declare-fun lambda!172432 () Int)

(assert (=> bs!855606 (= (= lt!1697345 lt!1697024) (= lambda!172432 lambda!172430))))

(assert (=> b!4520058 (= (= lt!1697345 lt!1697024) (= lambda!172432 lambda!172431))))

(assert (=> b!4520058 true))

(declare-fun bs!855607 () Bool)

(declare-fun d!1392478 () Bool)

(assert (= bs!855607 (and d!1392478 b!4520061)))

(declare-fun lambda!172433 () Int)

(declare-fun lt!1697339 () ListMap!3589)

(assert (=> bs!855607 (= (= lt!1697339 lt!1697024) (= lambda!172433 lambda!172430))))

(declare-fun bs!855608 () Bool)

(assert (= bs!855608 (and d!1392478 b!4520058)))

(assert (=> bs!855608 (= (= lt!1697339 lt!1697024) (= lambda!172433 lambda!172431))))

(assert (=> bs!855608 (= (= lt!1697339 lt!1697345) (= lambda!172433 lambda!172432))))

(assert (=> d!1392478 true))

(declare-fun e!2816112 () ListMap!3589)

(assert (=> b!4520058 (= e!2816112 lt!1697345)))

(declare-fun lt!1697335 () ListMap!3589)

(declare-fun +!1540 (ListMap!3589 tuple2!51074) ListMap!3589)

(assert (=> b!4520058 (= lt!1697335 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))))))

(assert (=> b!4520058 (= lt!1697345 (addToMapMapFromBucket!687 (t!357732 (_2!28832 lt!1697023)) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun lt!1697342 () Unit!95040)

(declare-fun call!314928 () Unit!95040)

(assert (=> b!4520058 (= lt!1697342 call!314928)))

(declare-fun forall!10265 (List!50770 Int) Bool)

(assert (=> b!4520058 (forall!10265 (toList!4328 lt!1697024) lambda!172431)))

(declare-fun lt!1697337 () Unit!95040)

(assert (=> b!4520058 (= lt!1697337 lt!1697342)))

(declare-fun call!314927 () Bool)

(assert (=> b!4520058 call!314927))

(declare-fun lt!1697330 () Unit!95040)

(declare-fun Unit!95065 () Unit!95040)

(assert (=> b!4520058 (= lt!1697330 Unit!95065)))

(declare-fun call!314926 () Bool)

(assert (=> b!4520058 call!314926))

(declare-fun lt!1697334 () Unit!95040)

(declare-fun Unit!95066 () Unit!95040)

(assert (=> b!4520058 (= lt!1697334 Unit!95066)))

(declare-fun lt!1697332 () Unit!95040)

(declare-fun Unit!95067 () Unit!95040)

(assert (=> b!4520058 (= lt!1697332 Unit!95067)))

(declare-fun lt!1697341 () Unit!95040)

(declare-fun forallContained!2517 (List!50770 Int tuple2!51074) Unit!95040)

(assert (=> b!4520058 (= lt!1697341 (forallContained!2517 (toList!4328 lt!1697335) lambda!172432 (h!56499 (_2!28832 lt!1697023))))))

(assert (=> b!4520058 (contains!13372 lt!1697335 (_1!28831 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun lt!1697327 () Unit!95040)

(declare-fun Unit!95068 () Unit!95040)

(assert (=> b!4520058 (= lt!1697327 Unit!95068)))

(assert (=> b!4520058 (contains!13372 lt!1697345 (_1!28831 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun lt!1697338 () Unit!95040)

(declare-fun Unit!95069 () Unit!95040)

(assert (=> b!4520058 (= lt!1697338 Unit!95069)))

(assert (=> b!4520058 (forall!10265 (_2!28832 lt!1697023) lambda!172432)))

(declare-fun lt!1697331 () Unit!95040)

(declare-fun Unit!95070 () Unit!95040)

(assert (=> b!4520058 (= lt!1697331 Unit!95070)))

(assert (=> b!4520058 (forall!10265 (toList!4328 lt!1697335) lambda!172432)))

(declare-fun lt!1697328 () Unit!95040)

(declare-fun Unit!95071 () Unit!95040)

(assert (=> b!4520058 (= lt!1697328 Unit!95071)))

(declare-fun lt!1697336 () Unit!95040)

(declare-fun Unit!95072 () Unit!95040)

(assert (=> b!4520058 (= lt!1697336 Unit!95072)))

(declare-fun lt!1697325 () Unit!95040)

(declare-fun addForallContainsKeyThenBeforeAdding!338 (ListMap!3589 ListMap!3589 K!12040 V!12286) Unit!95040)

(assert (=> b!4520058 (= lt!1697325 (addForallContainsKeyThenBeforeAdding!338 lt!1697024 lt!1697345 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4520058 (forall!10265 (toList!4328 lt!1697024) lambda!172432)))

(declare-fun lt!1697333 () Unit!95040)

(assert (=> b!4520058 (= lt!1697333 lt!1697325)))

(assert (=> b!4520058 (forall!10265 (toList!4328 lt!1697024) lambda!172432)))

(declare-fun lt!1697340 () Unit!95040)

(declare-fun Unit!95073 () Unit!95040)

(assert (=> b!4520058 (= lt!1697340 Unit!95073)))

(declare-fun res!1881175 () Bool)

(assert (=> b!4520058 (= res!1881175 (forall!10265 (_2!28832 lt!1697023) lambda!172432))))

(declare-fun e!2816110 () Bool)

(assert (=> b!4520058 (=> (not res!1881175) (not e!2816110))))

(assert (=> b!4520058 e!2816110))

(declare-fun lt!1697326 () Unit!95040)

(declare-fun Unit!95074 () Unit!95040)

(assert (=> b!4520058 (= lt!1697326 Unit!95074)))

(declare-fun b!4520059 () Bool)

(assert (=> b!4520059 (= e!2816110 (forall!10265 (toList!4328 lt!1697024) lambda!172432))))

(declare-fun bm!314921 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!338 (ListMap!3589) Unit!95040)

(assert (=> bm!314921 (= call!314928 (lemmaContainsAllItsOwnKeys!338 lt!1697024))))

(declare-fun bm!314922 () Bool)

(declare-fun c!771377 () Bool)

(assert (=> bm!314922 (= call!314927 (forall!10265 (ite c!771377 (toList!4328 lt!1697024) (toList!4328 lt!1697335)) (ite c!771377 lambda!172430 lambda!172432)))))

(declare-fun b!4520060 () Bool)

(declare-fun res!1881174 () Bool)

(declare-fun e!2816111 () Bool)

(assert (=> b!4520060 (=> (not res!1881174) (not e!2816111))))

(assert (=> b!4520060 (= res!1881174 (forall!10265 (toList!4328 lt!1697024) lambda!172433))))

(assert (=> d!1392478 e!2816111))

(declare-fun res!1881176 () Bool)

(assert (=> d!1392478 (=> (not res!1881176) (not e!2816111))))

(assert (=> d!1392478 (= res!1881176 (forall!10265 (_2!28832 lt!1697023) lambda!172433))))

(assert (=> d!1392478 (= lt!1697339 e!2816112)))

(assert (=> d!1392478 (= c!771377 ((_ is Nil!50646) (_2!28832 lt!1697023)))))

(assert (=> d!1392478 (noDuplicateKeys!1160 (_2!28832 lt!1697023))))

(assert (=> d!1392478 (= (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697024) lt!1697339)))

(declare-fun bm!314923 () Bool)

(assert (=> bm!314923 (= call!314926 (forall!10265 (ite c!771377 (toList!4328 lt!1697024) (t!357732 (_2!28832 lt!1697023))) (ite c!771377 lambda!172430 lambda!172432)))))

(assert (=> b!4520061 (= e!2816112 lt!1697024)))

(declare-fun lt!1697329 () Unit!95040)

(assert (=> b!4520061 (= lt!1697329 call!314928)))

(assert (=> b!4520061 call!314926))

(declare-fun lt!1697343 () Unit!95040)

(assert (=> b!4520061 (= lt!1697343 lt!1697329)))

(assert (=> b!4520061 call!314927))

(declare-fun lt!1697344 () Unit!95040)

(declare-fun Unit!95075 () Unit!95040)

(assert (=> b!4520061 (= lt!1697344 Unit!95075)))

(declare-fun b!4520062 () Bool)

(assert (=> b!4520062 (= e!2816111 (invariantList!1017 (toList!4328 lt!1697339)))))

(assert (= (and d!1392478 c!771377) b!4520061))

(assert (= (and d!1392478 (not c!771377)) b!4520058))

(assert (= (and b!4520058 res!1881175) b!4520059))

(assert (= (or b!4520061 b!4520058) bm!314923))

(assert (= (or b!4520061 b!4520058) bm!314922))

(assert (= (or b!4520061 b!4520058) bm!314921))

(assert (= (and d!1392478 res!1881176) b!4520060))

(assert (= (and b!4520060 res!1881174) b!4520062))

(declare-fun m!5268087 () Bool)

(assert (=> d!1392478 m!5268087))

(assert (=> d!1392478 m!5267521))

(declare-fun m!5268089 () Bool)

(assert (=> b!4520059 m!5268089))

(declare-fun m!5268091 () Bool)

(assert (=> bm!314922 m!5268091))

(declare-fun m!5268093 () Bool)

(assert (=> bm!314921 m!5268093))

(declare-fun m!5268095 () Bool)

(assert (=> b!4520062 m!5268095))

(declare-fun m!5268097 () Bool)

(assert (=> b!4520060 m!5268097))

(declare-fun m!5268099 () Bool)

(assert (=> bm!314923 m!5268099))

(declare-fun m!5268101 () Bool)

(assert (=> b!4520058 m!5268101))

(assert (=> b!4520058 m!5268089))

(declare-fun m!5268103 () Bool)

(assert (=> b!4520058 m!5268103))

(declare-fun m!5268105 () Bool)

(assert (=> b!4520058 m!5268105))

(assert (=> b!4520058 m!5268089))

(declare-fun m!5268107 () Bool)

(assert (=> b!4520058 m!5268107))

(assert (=> b!4520058 m!5268101))

(declare-fun m!5268109 () Bool)

(assert (=> b!4520058 m!5268109))

(declare-fun m!5268111 () Bool)

(assert (=> b!4520058 m!5268111))

(declare-fun m!5268113 () Bool)

(assert (=> b!4520058 m!5268113))

(assert (=> b!4520058 m!5268107))

(declare-fun m!5268115 () Bool)

(assert (=> b!4520058 m!5268115))

(declare-fun m!5268117 () Bool)

(assert (=> b!4520058 m!5268117))

(assert (=> b!4519779 d!1392478))

(declare-fun bs!855609 () Bool)

(declare-fun d!1392516 () Bool)

(assert (= bs!855609 (and d!1392516 d!1392458)))

(declare-fun lambda!172434 () Int)

(assert (=> bs!855609 (= lambda!172434 lambda!172357)))

(declare-fun bs!855610 () Bool)

(assert (= bs!855610 (and d!1392516 start!447492)))

(assert (=> bs!855610 (= lambda!172434 lambda!172325)))

(declare-fun bs!855611 () Bool)

(assert (= bs!855611 (and d!1392516 d!1392416)))

(assert (=> bs!855611 (= lambda!172434 lambda!172348)))

(declare-fun bs!855612 () Bool)

(assert (= bs!855612 (and d!1392516 d!1392446)))

(assert (=> bs!855612 (not (= lambda!172434 lambda!172351))))

(declare-fun bs!855613 () Bool)

(assert (= bs!855613 (and d!1392516 d!1392462)))

(assert (=> bs!855613 (= lambda!172434 lambda!172358)))

(declare-fun bs!855614 () Bool)

(assert (= bs!855614 (and d!1392516 d!1392468)))

(assert (=> bs!855614 (= lambda!172434 lambda!172359)))

(declare-fun lt!1697346 () ListMap!3589)

(assert (=> d!1392516 (invariantList!1017 (toList!4328 lt!1697346))))

(declare-fun e!2816113 () ListMap!3589)

(assert (=> d!1392516 (= lt!1697346 e!2816113)))

(declare-fun c!771378 () Bool)

(assert (=> d!1392516 (= c!771378 ((_ is Cons!50647) (toList!4327 lt!1697011)))))

(assert (=> d!1392516 (forall!10263 (toList!4327 lt!1697011) lambda!172434)))

(assert (=> d!1392516 (= (extractMap!1216 (toList!4327 lt!1697011)) lt!1697346)))

(declare-fun b!4520065 () Bool)

(assert (=> b!4520065 (= e!2816113 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 lt!1697011))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))))))

(declare-fun b!4520066 () Bool)

(assert (=> b!4520066 (= e!2816113 (ListMap!3590 Nil!50646))))

(assert (= (and d!1392516 c!771378) b!4520065))

(assert (= (and d!1392516 (not c!771378)) b!4520066))

(declare-fun m!5268119 () Bool)

(assert (=> d!1392516 m!5268119))

(declare-fun m!5268121 () Bool)

(assert (=> d!1392516 m!5268121))

(declare-fun m!5268123 () Bool)

(assert (=> b!4520065 m!5268123))

(assert (=> b!4520065 m!5268123))

(declare-fun m!5268125 () Bool)

(assert (=> b!4520065 m!5268125))

(assert (=> b!4519779 d!1392516))

(declare-fun d!1392518 () Bool)

(assert (=> d!1392518 (= (eq!617 lt!1697008 lt!1697013) (= (content!8356 (toList!4328 lt!1697008)) (content!8356 (toList!4328 lt!1697013))))))

(declare-fun bs!855615 () Bool)

(assert (= bs!855615 d!1392518))

(assert (=> bs!855615 m!5267921))

(assert (=> bs!855615 m!5267919))

(assert (=> b!4519780 d!1392518))

(declare-fun d!1392520 () Bool)

(declare-fun res!1881177 () Bool)

(declare-fun e!2816114 () Bool)

(assert (=> d!1392520 (=> res!1881177 e!2816114)))

(assert (=> d!1392520 (= res!1881177 (and ((_ is Cons!50646) (_2!28832 lt!1697023)) (= (_1!28831 (h!56499 (_2!28832 lt!1697023))) key!3287)))))

(assert (=> d!1392520 (= (containsKey!1780 (_2!28832 lt!1697023) key!3287) e!2816114)))

(declare-fun b!4520067 () Bool)

(declare-fun e!2816115 () Bool)

(assert (=> b!4520067 (= e!2816114 e!2816115)))

(declare-fun res!1881178 () Bool)

(assert (=> b!4520067 (=> (not res!1881178) (not e!2816115))))

(assert (=> b!4520067 (= res!1881178 ((_ is Cons!50646) (_2!28832 lt!1697023)))))

(declare-fun b!4520068 () Bool)

(assert (=> b!4520068 (= e!2816115 (containsKey!1780 (t!357732 (_2!28832 lt!1697023)) key!3287))))

(assert (= (and d!1392520 (not res!1881177)) b!4520067))

(assert (= (and b!4520067 res!1881178) b!4520068))

(declare-fun m!5268127 () Bool)

(assert (=> b!4520068 m!5268127))

(assert (=> b!4519791 d!1392520))

(declare-fun d!1392522 () Bool)

(declare-fun e!2816121 () Bool)

(assert (=> d!1392522 e!2816121))

(declare-fun res!1881181 () Bool)

(assert (=> d!1392522 (=> res!1881181 e!2816121)))

(declare-fun lt!1697355 () Bool)

(assert (=> d!1392522 (= res!1881181 (not lt!1697355))))

(declare-fun lt!1697358 () Bool)

(assert (=> d!1392522 (= lt!1697355 lt!1697358)))

(declare-fun lt!1697357 () Unit!95040)

(declare-fun e!2816120 () Unit!95040)

(assert (=> d!1392522 (= lt!1697357 e!2816120)))

(declare-fun c!771381 () Bool)

(assert (=> d!1392522 (= c!771381 lt!1697358)))

(declare-fun containsKey!1784 (List!50771 (_ BitVec 64)) Bool)

(assert (=> d!1392522 (= lt!1697358 (containsKey!1784 (toList!4327 lt!1697021) hash!344))))

(assert (=> d!1392522 (= (contains!13371 lt!1697021 hash!344) lt!1697355)))

(declare-fun b!4520075 () Bool)

(declare-fun lt!1697356 () Unit!95040)

(assert (=> b!4520075 (= e!2816120 lt!1697356)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!997 (List!50771 (_ BitVec 64)) Unit!95040)

(assert (=> b!4520075 (= lt!1697356 (lemmaContainsKeyImpliesGetValueByKeyDefined!997 (toList!4327 lt!1697021) hash!344))))

(declare-fun isDefined!8400 (Option!11113) Bool)

(assert (=> b!4520075 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697021) hash!344))))

(declare-fun b!4520076 () Bool)

(declare-fun Unit!95079 () Unit!95040)

(assert (=> b!4520076 (= e!2816120 Unit!95079)))

(declare-fun b!4520077 () Bool)

(assert (=> b!4520077 (= e!2816121 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697021) hash!344)))))

(assert (= (and d!1392522 c!771381) b!4520075))

(assert (= (and d!1392522 (not c!771381)) b!4520076))

(assert (= (and d!1392522 (not res!1881181)) b!4520077))

(declare-fun m!5268129 () Bool)

(assert (=> d!1392522 m!5268129))

(declare-fun m!5268131 () Bool)

(assert (=> b!4520075 m!5268131))

(assert (=> b!4520075 m!5267923))

(assert (=> b!4520075 m!5267923))

(declare-fun m!5268133 () Bool)

(assert (=> b!4520075 m!5268133))

(assert (=> b!4520077 m!5267923))

(assert (=> b!4520077 m!5267923))

(assert (=> b!4520077 m!5268133))

(assert (=> b!4519776 d!1392522))

(declare-fun d!1392524 () Bool)

(declare-fun tail!7736 (List!50771) List!50771)

(assert (=> d!1392524 (= (tail!7734 lm!1477) (ListLongMap!2960 (tail!7736 (toList!4327 lm!1477))))))

(declare-fun bs!855616 () Bool)

(assert (= bs!855616 d!1392524))

(declare-fun m!5268135 () Bool)

(assert (=> bs!855616 m!5268135))

(assert (=> b!4519776 d!1392524))

(declare-fun bs!855617 () Bool)

(declare-fun d!1392526 () Bool)

(assert (= bs!855617 (and d!1392526 d!1392458)))

(declare-fun lambda!172437 () Int)

(assert (=> bs!855617 (= lambda!172437 lambda!172357)))

(declare-fun bs!855618 () Bool)

(assert (= bs!855618 (and d!1392526 start!447492)))

(assert (=> bs!855618 (= lambda!172437 lambda!172325)))

(declare-fun bs!855619 () Bool)

(assert (= bs!855619 (and d!1392526 d!1392416)))

(assert (=> bs!855619 (= lambda!172437 lambda!172348)))

(declare-fun bs!855620 () Bool)

(assert (= bs!855620 (and d!1392526 d!1392446)))

(assert (=> bs!855620 (not (= lambda!172437 lambda!172351))))

(declare-fun bs!855621 () Bool)

(assert (= bs!855621 (and d!1392526 d!1392516)))

(assert (=> bs!855621 (= lambda!172437 lambda!172434)))

(declare-fun bs!855622 () Bool)

(assert (= bs!855622 (and d!1392526 d!1392462)))

(assert (=> bs!855622 (= lambda!172437 lambda!172358)))

(declare-fun bs!855623 () Bool)

(assert (= bs!855623 (and d!1392526 d!1392468)))

(assert (=> bs!855623 (= lambda!172437 lambda!172359)))

(assert (=> d!1392526 (contains!13372 (extractMap!1216 (toList!4327 lt!1697021)) key!3287)))

(declare-fun lt!1697361 () Unit!95040)

(declare-fun choose!29517 (ListLongMap!2959 K!12040 Hashable!5555) Unit!95040)

(assert (=> d!1392526 (= lt!1697361 (choose!29517 lt!1697021 key!3287 hashF!1107))))

(assert (=> d!1392526 (forall!10263 (toList!4327 lt!1697021) lambda!172437)))

(assert (=> d!1392526 (= (lemmaListContainsThenExtractedMapContains!130 lt!1697021 key!3287 hashF!1107) lt!1697361)))

(declare-fun bs!855624 () Bool)

(assert (= bs!855624 d!1392526))

(assert (=> bs!855624 m!5267557))

(assert (=> bs!855624 m!5267557))

(declare-fun m!5268137 () Bool)

(assert (=> bs!855624 m!5268137))

(declare-fun m!5268139 () Bool)

(assert (=> bs!855624 m!5268139))

(declare-fun m!5268141 () Bool)

(assert (=> bs!855624 m!5268141))

(assert (=> b!4519797 d!1392526))

(declare-fun bm!314924 () Bool)

(declare-fun call!314929 () Bool)

(declare-fun e!2816125 () List!50773)

(assert (=> bm!314924 (= call!314929 (contains!13375 e!2816125 key!3287))))

(declare-fun c!771384 () Bool)

(declare-fun c!771383 () Bool)

(assert (=> bm!314924 (= c!771384 c!771383)))

(declare-fun b!4520078 () Bool)

(declare-fun e!2816126 () Unit!95040)

(declare-fun Unit!95088 () Unit!95040)

(assert (=> b!4520078 (= e!2816126 Unit!95088)))

(declare-fun b!4520079 () Bool)

(declare-fun e!2816127 () Unit!95040)

(declare-fun lt!1697364 () Unit!95040)

(assert (=> b!4520079 (= e!2816127 lt!1697364)))

(declare-fun lt!1697369 () Unit!95040)

(assert (=> b!4520079 (= lt!1697369 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(assert (=> b!4520079 (isDefined!8399 (getValueByKey!1092 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(declare-fun lt!1697366 () Unit!95040)

(assert (=> b!4520079 (= lt!1697366 lt!1697369)))

(assert (=> b!4520079 (= lt!1697364 (lemmaInListThenGetKeysListContains!461 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(assert (=> b!4520079 call!314929))

(declare-fun b!4520080 () Bool)

(declare-fun e!2816123 () Bool)

(assert (=> b!4520080 (= e!2816123 (contains!13375 (keys!17594 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(declare-fun b!4520081 () Bool)

(assert (=> b!4520081 (= e!2816125 (getKeysList!465 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))

(declare-fun b!4520082 () Bool)

(assert (=> b!4520082 false))

(declare-fun lt!1697367 () Unit!95040)

(declare-fun lt!1697363 () Unit!95040)

(assert (=> b!4520082 (= lt!1697367 lt!1697363)))

(assert (=> b!4520082 (containsKey!1783 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287)))

(assert (=> b!4520082 (= lt!1697363 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(declare-fun Unit!95089 () Unit!95040)

(assert (=> b!4520082 (= e!2816126 Unit!95089)))

(declare-fun b!4520083 () Bool)

(assert (=> b!4520083 (= e!2816127 e!2816126)))

(declare-fun c!771382 () Bool)

(assert (=> b!4520083 (= c!771382 call!314929)))

(declare-fun b!4520084 () Bool)

(declare-fun e!2816122 () Bool)

(assert (=> b!4520084 (= e!2816122 e!2816123)))

(declare-fun res!1881183 () Bool)

(assert (=> b!4520084 (=> (not res!1881183) (not e!2816123))))

(assert (=> b!4520084 (= res!1881183 (isDefined!8399 (getValueByKey!1092 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287)))))

(declare-fun d!1392528 () Bool)

(assert (=> d!1392528 e!2816122))

(declare-fun res!1881182 () Bool)

(assert (=> d!1392528 (=> res!1881182 e!2816122)))

(declare-fun e!2816124 () Bool)

(assert (=> d!1392528 (= res!1881182 e!2816124)))

(declare-fun res!1881184 () Bool)

(assert (=> d!1392528 (=> (not res!1881184) (not e!2816124))))

(declare-fun lt!1697362 () Bool)

(assert (=> d!1392528 (= res!1881184 (not lt!1697362))))

(declare-fun lt!1697368 () Bool)

(assert (=> d!1392528 (= lt!1697362 lt!1697368)))

(declare-fun lt!1697365 () Unit!95040)

(assert (=> d!1392528 (= lt!1697365 e!2816127)))

(assert (=> d!1392528 (= c!771383 lt!1697368)))

(assert (=> d!1392528 (= lt!1697368 (containsKey!1783 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(assert (=> d!1392528 (= (contains!13372 (extractMap!1216 (t!357733 (toList!4327 lm!1477))) key!3287) lt!1697362)))

(declare-fun b!4520085 () Bool)

(assert (=> b!4520085 (= e!2816124 (not (contains!13375 (keys!17594 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287)))))

(declare-fun b!4520086 () Bool)

(assert (=> b!4520086 (= e!2816125 (keys!17594 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))

(assert (= (and d!1392528 c!771383) b!4520079))

(assert (= (and d!1392528 (not c!771383)) b!4520083))

(assert (= (and b!4520083 c!771382) b!4520082))

(assert (= (and b!4520083 (not c!771382)) b!4520078))

(assert (= (or b!4520079 b!4520083) bm!314924))

(assert (= (and bm!314924 c!771384) b!4520081))

(assert (= (and bm!314924 (not c!771384)) b!4520086))

(assert (= (and d!1392528 res!1881184) b!4520085))

(assert (= (and d!1392528 (not res!1881182)) b!4520084))

(assert (= (and b!4520084 res!1881183) b!4520080))

(declare-fun m!5268143 () Bool)

(assert (=> d!1392528 m!5268143))

(declare-fun m!5268145 () Bool)

(assert (=> b!4520084 m!5268145))

(assert (=> b!4520084 m!5268145))

(declare-fun m!5268147 () Bool)

(assert (=> b!4520084 m!5268147))

(assert (=> b!4520086 m!5267555))

(declare-fun m!5268149 () Bool)

(assert (=> b!4520086 m!5268149))

(declare-fun m!5268151 () Bool)

(assert (=> bm!314924 m!5268151))

(assert (=> b!4520085 m!5267555))

(assert (=> b!4520085 m!5268149))

(assert (=> b!4520085 m!5268149))

(declare-fun m!5268153 () Bool)

(assert (=> b!4520085 m!5268153))

(assert (=> b!4520080 m!5267555))

(assert (=> b!4520080 m!5268149))

(assert (=> b!4520080 m!5268149))

(assert (=> b!4520080 m!5268153))

(assert (=> b!4520082 m!5268143))

(declare-fun m!5268155 () Bool)

(assert (=> b!4520082 m!5268155))

(declare-fun m!5268157 () Bool)

(assert (=> b!4520081 m!5268157))

(declare-fun m!5268159 () Bool)

(assert (=> b!4520079 m!5268159))

(assert (=> b!4520079 m!5268145))

(assert (=> b!4520079 m!5268145))

(assert (=> b!4520079 m!5268147))

(declare-fun m!5268161 () Bool)

(assert (=> b!4520079 m!5268161))

(assert (=> b!4519797 d!1392528))

(declare-fun bs!855625 () Bool)

(declare-fun d!1392530 () Bool)

(assert (= bs!855625 (and d!1392530 d!1392458)))

(declare-fun lambda!172438 () Int)

(assert (=> bs!855625 (= lambda!172438 lambda!172357)))

(declare-fun bs!855626 () Bool)

(assert (= bs!855626 (and d!1392530 start!447492)))

(assert (=> bs!855626 (= lambda!172438 lambda!172325)))

(declare-fun bs!855627 () Bool)

(assert (= bs!855627 (and d!1392530 d!1392526)))

(assert (=> bs!855627 (= lambda!172438 lambda!172437)))

(declare-fun bs!855628 () Bool)

(assert (= bs!855628 (and d!1392530 d!1392416)))

(assert (=> bs!855628 (= lambda!172438 lambda!172348)))

(declare-fun bs!855629 () Bool)

(assert (= bs!855629 (and d!1392530 d!1392446)))

(assert (=> bs!855629 (not (= lambda!172438 lambda!172351))))

(declare-fun bs!855630 () Bool)

(assert (= bs!855630 (and d!1392530 d!1392516)))

(assert (=> bs!855630 (= lambda!172438 lambda!172434)))

(declare-fun bs!855631 () Bool)

(assert (= bs!855631 (and d!1392530 d!1392462)))

(assert (=> bs!855631 (= lambda!172438 lambda!172358)))

(declare-fun bs!855632 () Bool)

(assert (= bs!855632 (and d!1392530 d!1392468)))

(assert (=> bs!855632 (= lambda!172438 lambda!172359)))

(declare-fun lt!1697370 () ListMap!3589)

(assert (=> d!1392530 (invariantList!1017 (toList!4328 lt!1697370))))

(declare-fun e!2816128 () ListMap!3589)

(assert (=> d!1392530 (= lt!1697370 e!2816128)))

(declare-fun c!771385 () Bool)

(assert (=> d!1392530 (= c!771385 ((_ is Cons!50647) (t!357733 (toList!4327 lm!1477))))))

(assert (=> d!1392530 (forall!10263 (t!357733 (toList!4327 lm!1477)) lambda!172438)))

(assert (=> d!1392530 (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697370)))

(declare-fun b!4520087 () Bool)

(assert (=> b!4520087 (= e!2816128 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))))))

(declare-fun b!4520088 () Bool)

(assert (=> b!4520088 (= e!2816128 (ListMap!3590 Nil!50646))))

(assert (= (and d!1392530 c!771385) b!4520087))

(assert (= (and d!1392530 (not c!771385)) b!4520088))

(declare-fun m!5268163 () Bool)

(assert (=> d!1392530 m!5268163))

(declare-fun m!5268165 () Bool)

(assert (=> d!1392530 m!5268165))

(declare-fun m!5268167 () Bool)

(assert (=> b!4520087 m!5268167))

(assert (=> b!4520087 m!5268167))

(declare-fun m!5268169 () Bool)

(assert (=> b!4520087 m!5268169))

(assert (=> b!4519797 d!1392530))

(declare-fun bm!314925 () Bool)

(declare-fun call!314930 () Bool)

(declare-fun e!2816132 () List!50773)

(assert (=> bm!314925 (= call!314930 (contains!13375 e!2816132 key!3287))))

(declare-fun c!771388 () Bool)

(declare-fun c!771387 () Bool)

(assert (=> bm!314925 (= c!771388 c!771387)))

(declare-fun b!4520089 () Bool)

(declare-fun e!2816133 () Unit!95040)

(declare-fun Unit!95090 () Unit!95040)

(assert (=> b!4520089 (= e!2816133 Unit!95090)))

(declare-fun b!4520090 () Bool)

(declare-fun e!2816134 () Unit!95040)

(declare-fun lt!1697373 () Unit!95040)

(assert (=> b!4520090 (= e!2816134 lt!1697373)))

(declare-fun lt!1697378 () Unit!95040)

(assert (=> b!4520090 (= lt!1697378 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697020) key!3287))))

(assert (=> b!4520090 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287))))

(declare-fun lt!1697375 () Unit!95040)

(assert (=> b!4520090 (= lt!1697375 lt!1697378)))

(assert (=> b!4520090 (= lt!1697373 (lemmaInListThenGetKeysListContains!461 (toList!4328 lt!1697020) key!3287))))

(assert (=> b!4520090 call!314930))

(declare-fun b!4520091 () Bool)

(declare-fun e!2816130 () Bool)

(assert (=> b!4520091 (= e!2816130 (contains!13375 (keys!17594 lt!1697020) key!3287))))

(declare-fun b!4520092 () Bool)

(assert (=> b!4520092 (= e!2816132 (getKeysList!465 (toList!4328 lt!1697020)))))

(declare-fun b!4520093 () Bool)

(assert (=> b!4520093 false))

(declare-fun lt!1697376 () Unit!95040)

(declare-fun lt!1697372 () Unit!95040)

(assert (=> b!4520093 (= lt!1697376 lt!1697372)))

(assert (=> b!4520093 (containsKey!1783 (toList!4328 lt!1697020) key!3287)))

(assert (=> b!4520093 (= lt!1697372 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 lt!1697020) key!3287))))

(declare-fun Unit!95091 () Unit!95040)

(assert (=> b!4520093 (= e!2816133 Unit!95091)))

(declare-fun b!4520094 () Bool)

(assert (=> b!4520094 (= e!2816134 e!2816133)))

(declare-fun c!771386 () Bool)

(assert (=> b!4520094 (= c!771386 call!314930)))

(declare-fun b!4520095 () Bool)

(declare-fun e!2816129 () Bool)

(assert (=> b!4520095 (= e!2816129 e!2816130)))

(declare-fun res!1881186 () Bool)

(assert (=> b!4520095 (=> (not res!1881186) (not e!2816130))))

(assert (=> b!4520095 (= res!1881186 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287)))))

(declare-fun d!1392532 () Bool)

(assert (=> d!1392532 e!2816129))

(declare-fun res!1881185 () Bool)

(assert (=> d!1392532 (=> res!1881185 e!2816129)))

(declare-fun e!2816131 () Bool)

(assert (=> d!1392532 (= res!1881185 e!2816131)))

(declare-fun res!1881187 () Bool)

(assert (=> d!1392532 (=> (not res!1881187) (not e!2816131))))

(declare-fun lt!1697371 () Bool)

(assert (=> d!1392532 (= res!1881187 (not lt!1697371))))

(declare-fun lt!1697377 () Bool)

(assert (=> d!1392532 (= lt!1697371 lt!1697377)))

(declare-fun lt!1697374 () Unit!95040)

(assert (=> d!1392532 (= lt!1697374 e!2816134)))

(assert (=> d!1392532 (= c!771387 lt!1697377)))

(assert (=> d!1392532 (= lt!1697377 (containsKey!1783 (toList!4328 lt!1697020) key!3287))))

(assert (=> d!1392532 (= (contains!13372 lt!1697020 key!3287) lt!1697371)))

(declare-fun b!4520096 () Bool)

(assert (=> b!4520096 (= e!2816131 (not (contains!13375 (keys!17594 lt!1697020) key!3287)))))

(declare-fun b!4520097 () Bool)

(assert (=> b!4520097 (= e!2816132 (keys!17594 lt!1697020))))

(assert (= (and d!1392532 c!771387) b!4520090))

(assert (= (and d!1392532 (not c!771387)) b!4520094))

(assert (= (and b!4520094 c!771386) b!4520093))

(assert (= (and b!4520094 (not c!771386)) b!4520089))

(assert (= (or b!4520090 b!4520094) bm!314925))

(assert (= (and bm!314925 c!771388) b!4520092))

(assert (= (and bm!314925 (not c!771388)) b!4520097))

(assert (= (and d!1392532 res!1881187) b!4520096))

(assert (= (and d!1392532 (not res!1881185)) b!4520095))

(assert (= (and b!4520095 res!1881186) b!4520091))

(declare-fun m!5268171 () Bool)

(assert (=> d!1392532 m!5268171))

(declare-fun m!5268173 () Bool)

(assert (=> b!4520095 m!5268173))

(assert (=> b!4520095 m!5268173))

(declare-fun m!5268175 () Bool)

(assert (=> b!4520095 m!5268175))

(assert (=> b!4520097 m!5267879))

(declare-fun m!5268177 () Bool)

(assert (=> bm!314925 m!5268177))

(assert (=> b!4520096 m!5267879))

(assert (=> b!4520096 m!5267879))

(declare-fun m!5268179 () Bool)

(assert (=> b!4520096 m!5268179))

(assert (=> b!4520091 m!5267879))

(assert (=> b!4520091 m!5267879))

(assert (=> b!4520091 m!5268179))

(assert (=> b!4520093 m!5268171))

(declare-fun m!5268181 () Bool)

(assert (=> b!4520093 m!5268181))

(declare-fun m!5268183 () Bool)

(assert (=> b!4520092 m!5268183))

(declare-fun m!5268185 () Bool)

(assert (=> b!4520090 m!5268185))

(assert (=> b!4520090 m!5268173))

(assert (=> b!4520090 m!5268173))

(assert (=> b!4520090 m!5268175))

(declare-fun m!5268187 () Bool)

(assert (=> b!4520090 m!5268187))

(assert (=> b!4519797 d!1392532))

(declare-fun bs!855633 () Bool)

(declare-fun d!1392534 () Bool)

(assert (= bs!855633 (and d!1392534 d!1392458)))

(declare-fun lambda!172439 () Int)

(assert (=> bs!855633 (= lambda!172439 lambda!172357)))

(declare-fun bs!855634 () Bool)

(assert (= bs!855634 (and d!1392534 start!447492)))

(assert (=> bs!855634 (= lambda!172439 lambda!172325)))

(declare-fun bs!855635 () Bool)

(assert (= bs!855635 (and d!1392534 d!1392526)))

(assert (=> bs!855635 (= lambda!172439 lambda!172437)))

(declare-fun bs!855636 () Bool)

(assert (= bs!855636 (and d!1392534 d!1392530)))

(assert (=> bs!855636 (= lambda!172439 lambda!172438)))

(declare-fun bs!855637 () Bool)

(assert (= bs!855637 (and d!1392534 d!1392416)))

(assert (=> bs!855637 (= lambda!172439 lambda!172348)))

(declare-fun bs!855638 () Bool)

(assert (= bs!855638 (and d!1392534 d!1392446)))

(assert (=> bs!855638 (not (= lambda!172439 lambda!172351))))

(declare-fun bs!855639 () Bool)

(assert (= bs!855639 (and d!1392534 d!1392516)))

(assert (=> bs!855639 (= lambda!172439 lambda!172434)))

(declare-fun bs!855640 () Bool)

(assert (= bs!855640 (and d!1392534 d!1392462)))

(assert (=> bs!855640 (= lambda!172439 lambda!172358)))

(declare-fun bs!855641 () Bool)

(assert (= bs!855641 (and d!1392534 d!1392468)))

(assert (=> bs!855641 (= lambda!172439 lambda!172359)))

(declare-fun lt!1697379 () ListMap!3589)

(assert (=> d!1392534 (invariantList!1017 (toList!4328 lt!1697379))))

(declare-fun e!2816135 () ListMap!3589)

(assert (=> d!1392534 (= lt!1697379 e!2816135)))

(declare-fun c!771389 () Bool)

(assert (=> d!1392534 (= c!771389 ((_ is Cons!50647) (toList!4327 lt!1697021)))))

(assert (=> d!1392534 (forall!10263 (toList!4327 lt!1697021) lambda!172439)))

(assert (=> d!1392534 (= (extractMap!1216 (toList!4327 lt!1697021)) lt!1697379)))

(declare-fun b!4520098 () Bool)

(assert (=> b!4520098 (= e!2816135 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))))))

(declare-fun b!4520099 () Bool)

(assert (=> b!4520099 (= e!2816135 (ListMap!3590 Nil!50646))))

(assert (= (and d!1392534 c!771389) b!4520098))

(assert (= (and d!1392534 (not c!771389)) b!4520099))

(declare-fun m!5268189 () Bool)

(assert (=> d!1392534 m!5268189))

(declare-fun m!5268191 () Bool)

(assert (=> d!1392534 m!5268191))

(declare-fun m!5268193 () Bool)

(assert (=> b!4520098 m!5268193))

(assert (=> b!4520098 m!5268193))

(declare-fun m!5268195 () Bool)

(assert (=> b!4520098 m!5268195))

(assert (=> b!4519797 d!1392534))

(declare-fun d!1392536 () Bool)

(declare-fun res!1881188 () Bool)

(declare-fun e!2816136 () Bool)

(assert (=> d!1392536 (=> res!1881188 e!2816136)))

(assert (=> d!1392536 (= res!1881188 (not ((_ is Cons!50646) (_2!28832 lt!1697023))))))

(assert (=> d!1392536 (= (noDuplicateKeys!1160 (_2!28832 lt!1697023)) e!2816136)))

(declare-fun b!4520100 () Bool)

(declare-fun e!2816137 () Bool)

(assert (=> b!4520100 (= e!2816136 e!2816137)))

(declare-fun res!1881189 () Bool)

(assert (=> b!4520100 (=> (not res!1881189) (not e!2816137))))

(assert (=> b!4520100 (= res!1881189 (not (containsKey!1780 (t!357732 (_2!28832 lt!1697023)) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun b!4520101 () Bool)

(assert (=> b!4520101 (= e!2816137 (noDuplicateKeys!1160 (t!357732 (_2!28832 lt!1697023))))))

(assert (= (and d!1392536 (not res!1881188)) b!4520100))

(assert (= (and b!4520100 res!1881189) b!4520101))

(declare-fun m!5268197 () Bool)

(assert (=> b!4520100 m!5268197))

(declare-fun m!5268199 () Bool)

(assert (=> b!4520101 m!5268199))

(assert (=> b!4519798 d!1392536))

(declare-fun d!1392538 () Bool)

(declare-fun dynLambda!21163 (Int tuple2!51076) Bool)

(assert (=> d!1392538 (dynLambda!21163 lambda!172325 (h!56500 (toList!4327 lm!1477)))))

(declare-fun lt!1697382 () Unit!95040)

(declare-fun choose!29520 (List!50771 Int tuple2!51076) Unit!95040)

(assert (=> d!1392538 (= lt!1697382 (choose!29520 (toList!4327 lm!1477) lambda!172325 (h!56500 (toList!4327 lm!1477))))))

(declare-fun e!2816140 () Bool)

(assert (=> d!1392538 e!2816140))

(declare-fun res!1881192 () Bool)

(assert (=> d!1392538 (=> (not res!1881192) (not e!2816140))))

(assert (=> d!1392538 (= res!1881192 (forall!10263 (toList!4327 lm!1477) lambda!172325))))

(assert (=> d!1392538 (= (forallContained!2515 (toList!4327 lm!1477) lambda!172325 (h!56500 (toList!4327 lm!1477))) lt!1697382)))

(declare-fun b!4520104 () Bool)

(assert (=> b!4520104 (= e!2816140 (contains!13373 (toList!4327 lm!1477) (h!56500 (toList!4327 lm!1477))))))

(assert (= (and d!1392538 res!1881192) b!4520104))

(declare-fun b_lambda!154945 () Bool)

(assert (=> (not b_lambda!154945) (not d!1392538)))

(declare-fun m!5268201 () Bool)

(assert (=> d!1392538 m!5268201))

(declare-fun m!5268203 () Bool)

(assert (=> d!1392538 m!5268203))

(assert (=> d!1392538 m!5267529))

(declare-fun m!5268205 () Bool)

(assert (=> b!4520104 m!5268205))

(assert (=> b!4519798 d!1392538))

(declare-fun d!1392540 () Bool)

(assert (=> d!1392540 (contains!13373 (toList!4327 lm!1477) (tuple2!51077 hash!344 lt!1697018))))

(declare-fun lt!1697385 () Unit!95040)

(declare-fun choose!29521 (List!50771 (_ BitVec 64) List!50770) Unit!95040)

(assert (=> d!1392540 (= lt!1697385 (choose!29521 (toList!4327 lm!1477) hash!344 lt!1697018))))

(declare-fun e!2816143 () Bool)

(assert (=> d!1392540 e!2816143))

(declare-fun res!1881195 () Bool)

(assert (=> d!1392540 (=> (not res!1881195) (not e!2816143))))

(declare-fun isStrictlySorted!431 (List!50771) Bool)

(assert (=> d!1392540 (= res!1881195 (isStrictlySorted!431 (toList!4327 lm!1477)))))

(assert (=> d!1392540 (= (lemmaGetValueByKeyImpliesContainsTuple!672 (toList!4327 lm!1477) hash!344 lt!1697018) lt!1697385)))

(declare-fun b!4520107 () Bool)

(assert (=> b!4520107 (= e!2816143 (= (getValueByKey!1093 (toList!4327 lm!1477) hash!344) (Some!11112 lt!1697018)))))

(assert (= (and d!1392540 res!1881195) b!4520107))

(declare-fun m!5268207 () Bool)

(assert (=> d!1392540 m!5268207))

(declare-fun m!5268209 () Bool)

(assert (=> d!1392540 m!5268209))

(declare-fun m!5268211 () Bool)

(assert (=> d!1392540 m!5268211))

(declare-fun m!5268213 () Bool)

(assert (=> b!4520107 m!5268213))

(assert (=> b!4519787 d!1392540))

(declare-fun bs!855642 () Bool)

(declare-fun d!1392542 () Bool)

(assert (= bs!855642 (and d!1392542 d!1392458)))

(declare-fun lambda!172442 () Int)

(assert (=> bs!855642 (= lambda!172442 lambda!172357)))

(declare-fun bs!855643 () Bool)

(assert (= bs!855643 (and d!1392542 start!447492)))

(assert (=> bs!855643 (= lambda!172442 lambda!172325)))

(declare-fun bs!855644 () Bool)

(assert (= bs!855644 (and d!1392542 d!1392534)))

(assert (=> bs!855644 (= lambda!172442 lambda!172439)))

(declare-fun bs!855645 () Bool)

(assert (= bs!855645 (and d!1392542 d!1392526)))

(assert (=> bs!855645 (= lambda!172442 lambda!172437)))

(declare-fun bs!855646 () Bool)

(assert (= bs!855646 (and d!1392542 d!1392530)))

(assert (=> bs!855646 (= lambda!172442 lambda!172438)))

(declare-fun bs!855647 () Bool)

(assert (= bs!855647 (and d!1392542 d!1392416)))

(assert (=> bs!855647 (= lambda!172442 lambda!172348)))

(declare-fun bs!855648 () Bool)

(assert (= bs!855648 (and d!1392542 d!1392446)))

(assert (=> bs!855648 (not (= lambda!172442 lambda!172351))))

(declare-fun bs!855649 () Bool)

(assert (= bs!855649 (and d!1392542 d!1392516)))

(assert (=> bs!855649 (= lambda!172442 lambda!172434)))

(declare-fun bs!855650 () Bool)

(assert (= bs!855650 (and d!1392542 d!1392462)))

(assert (=> bs!855650 (= lambda!172442 lambda!172358)))

(declare-fun bs!855651 () Bool)

(assert (= bs!855651 (and d!1392542 d!1392468)))

(assert (=> bs!855651 (= lambda!172442 lambda!172359)))

(assert (=> d!1392542 (contains!13371 lm!1477 (hash!2807 hashF!1107 key!3287))))

(declare-fun lt!1697388 () Unit!95040)

(declare-fun choose!29522 (ListLongMap!2959 K!12040 Hashable!5555) Unit!95040)

(assert (=> d!1392542 (= lt!1697388 (choose!29522 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1392542 (forall!10263 (toList!4327 lm!1477) lambda!172442)))

(assert (=> d!1392542 (= (lemmaInGenMapThenLongMapContainsHash!234 lm!1477 key!3287 hashF!1107) lt!1697388)))

(declare-fun bs!855652 () Bool)

(assert (= bs!855652 d!1392542))

(assert (=> bs!855652 m!5267497))

(assert (=> bs!855652 m!5267497))

(declare-fun m!5268215 () Bool)

(assert (=> bs!855652 m!5268215))

(declare-fun m!5268217 () Bool)

(assert (=> bs!855652 m!5268217))

(declare-fun m!5268219 () Bool)

(assert (=> bs!855652 m!5268219))

(assert (=> b!4519787 d!1392542))

(declare-fun d!1392544 () Bool)

(assert (=> d!1392544 (dynLambda!21163 lambda!172325 lt!1697012)))

(declare-fun lt!1697389 () Unit!95040)

(assert (=> d!1392544 (= lt!1697389 (choose!29520 (toList!4327 lm!1477) lambda!172325 lt!1697012))))

(declare-fun e!2816144 () Bool)

(assert (=> d!1392544 e!2816144))

(declare-fun res!1881196 () Bool)

(assert (=> d!1392544 (=> (not res!1881196) (not e!2816144))))

(assert (=> d!1392544 (= res!1881196 (forall!10263 (toList!4327 lm!1477) lambda!172325))))

(assert (=> d!1392544 (= (forallContained!2515 (toList!4327 lm!1477) lambda!172325 lt!1697012) lt!1697389)))

(declare-fun b!4520108 () Bool)

(assert (=> b!4520108 (= e!2816144 (contains!13373 (toList!4327 lm!1477) lt!1697012))))

(assert (= (and d!1392544 res!1881196) b!4520108))

(declare-fun b_lambda!154947 () Bool)

(assert (=> (not b_lambda!154947) (not d!1392544)))

(declare-fun m!5268221 () Bool)

(assert (=> d!1392544 m!5268221))

(declare-fun m!5268223 () Bool)

(assert (=> d!1392544 m!5268223))

(assert (=> d!1392544 m!5267529))

(assert (=> b!4520108 m!5267569))

(assert (=> b!4519787 d!1392544))

(declare-fun d!1392546 () Bool)

(assert (=> d!1392546 (= (apply!11897 lm!1477 hash!344) (get!16588 (getValueByKey!1093 (toList!4327 lm!1477) hash!344)))))

(declare-fun bs!855653 () Bool)

(assert (= bs!855653 d!1392546))

(assert (=> bs!855653 m!5268213))

(assert (=> bs!855653 m!5268213))

(declare-fun m!5268225 () Bool)

(assert (=> bs!855653 m!5268225))

(assert (=> b!4519787 d!1392546))

(declare-fun d!1392548 () Bool)

(declare-fun e!2816146 () Bool)

(assert (=> d!1392548 e!2816146))

(declare-fun res!1881197 () Bool)

(assert (=> d!1392548 (=> res!1881197 e!2816146)))

(declare-fun lt!1697390 () Bool)

(assert (=> d!1392548 (= res!1881197 (not lt!1697390))))

(declare-fun lt!1697393 () Bool)

(assert (=> d!1392548 (= lt!1697390 lt!1697393)))

(declare-fun lt!1697392 () Unit!95040)

(declare-fun e!2816145 () Unit!95040)

(assert (=> d!1392548 (= lt!1697392 e!2816145)))

(declare-fun c!771390 () Bool)

(assert (=> d!1392548 (= c!771390 lt!1697393)))

(assert (=> d!1392548 (= lt!1697393 (containsKey!1784 (toList!4327 lm!1477) lt!1697009))))

(assert (=> d!1392548 (= (contains!13371 lm!1477 lt!1697009) lt!1697390)))

(declare-fun b!4520109 () Bool)

(declare-fun lt!1697391 () Unit!95040)

(assert (=> b!4520109 (= e!2816145 lt!1697391)))

(assert (=> b!4520109 (= lt!1697391 (lemmaContainsKeyImpliesGetValueByKeyDefined!997 (toList!4327 lm!1477) lt!1697009))))

(assert (=> b!4520109 (isDefined!8400 (getValueByKey!1093 (toList!4327 lm!1477) lt!1697009))))

(declare-fun b!4520110 () Bool)

(declare-fun Unit!95092 () Unit!95040)

(assert (=> b!4520110 (= e!2816145 Unit!95092)))

(declare-fun b!4520111 () Bool)

(assert (=> b!4520111 (= e!2816146 (isDefined!8400 (getValueByKey!1093 (toList!4327 lm!1477) lt!1697009)))))

(assert (= (and d!1392548 c!771390) b!4520109))

(assert (= (and d!1392548 (not c!771390)) b!4520110))

(assert (= (and d!1392548 (not res!1881197)) b!4520111))

(declare-fun m!5268227 () Bool)

(assert (=> d!1392548 m!5268227))

(declare-fun m!5268229 () Bool)

(assert (=> b!4520109 m!5268229))

(declare-fun m!5268231 () Bool)

(assert (=> b!4520109 m!5268231))

(assert (=> b!4520109 m!5268231))

(declare-fun m!5268233 () Bool)

(assert (=> b!4520109 m!5268233))

(assert (=> b!4520111 m!5268231))

(assert (=> b!4520111 m!5268231))

(assert (=> b!4520111 m!5268233))

(assert (=> b!4519787 d!1392548))

(declare-fun d!1392550 () Bool)

(declare-fun lt!1697396 () Bool)

(declare-fun content!8359 (List!50771) (InoxSet tuple2!51076))

(assert (=> d!1392550 (= lt!1697396 (select (content!8359 (toList!4327 lm!1477)) lt!1697012))))

(declare-fun e!2816151 () Bool)

(assert (=> d!1392550 (= lt!1697396 e!2816151)))

(declare-fun res!1881202 () Bool)

(assert (=> d!1392550 (=> (not res!1881202) (not e!2816151))))

(assert (=> d!1392550 (= res!1881202 ((_ is Cons!50647) (toList!4327 lm!1477)))))

(assert (=> d!1392550 (= (contains!13373 (toList!4327 lm!1477) lt!1697012) lt!1697396)))

(declare-fun b!4520116 () Bool)

(declare-fun e!2816152 () Bool)

(assert (=> b!4520116 (= e!2816151 e!2816152)))

(declare-fun res!1881203 () Bool)

(assert (=> b!4520116 (=> res!1881203 e!2816152)))

(assert (=> b!4520116 (= res!1881203 (= (h!56500 (toList!4327 lm!1477)) lt!1697012))))

(declare-fun b!4520117 () Bool)

(assert (=> b!4520117 (= e!2816152 (contains!13373 (t!357733 (toList!4327 lm!1477)) lt!1697012))))

(assert (= (and d!1392550 res!1881202) b!4520116))

(assert (= (and b!4520116 (not res!1881203)) b!4520117))

(declare-fun m!5268235 () Bool)

(assert (=> d!1392550 m!5268235))

(declare-fun m!5268237 () Bool)

(assert (=> d!1392550 m!5268237))

(assert (=> b!4520117 m!5267509))

(assert (=> b!4519787 d!1392550))

(declare-fun b!4520129 () Bool)

(declare-fun e!2816158 () List!50770)

(assert (=> b!4520129 (= e!2816158 Nil!50646)))

(declare-fun b!4520126 () Bool)

(declare-fun e!2816157 () List!50770)

(assert (=> b!4520126 (= e!2816157 (t!357732 lt!1697018))))

(declare-fun b!4520127 () Bool)

(assert (=> b!4520127 (= e!2816157 e!2816158)))

(declare-fun c!771395 () Bool)

(assert (=> b!4520127 (= c!771395 ((_ is Cons!50646) lt!1697018))))

(declare-fun b!4520128 () Bool)

(assert (=> b!4520128 (= e!2816158 (Cons!50646 (h!56499 lt!1697018) (removePairForKey!787 (t!357732 lt!1697018) key!3287)))))

(declare-fun d!1392552 () Bool)

(declare-fun lt!1697399 () List!50770)

(assert (=> d!1392552 (not (containsKey!1780 lt!1697399 key!3287))))

(assert (=> d!1392552 (= lt!1697399 e!2816157)))

(declare-fun c!771396 () Bool)

(assert (=> d!1392552 (= c!771396 (and ((_ is Cons!50646) lt!1697018) (= (_1!28831 (h!56499 lt!1697018)) key!3287)))))

(assert (=> d!1392552 (noDuplicateKeys!1160 lt!1697018)))

(assert (=> d!1392552 (= (removePairForKey!787 lt!1697018 key!3287) lt!1697399)))

(assert (= (and d!1392552 c!771396) b!4520126))

(assert (= (and d!1392552 (not c!771396)) b!4520127))

(assert (= (and b!4520127 c!771395) b!4520128))

(assert (= (and b!4520127 (not c!771395)) b!4520129))

(declare-fun m!5268239 () Bool)

(assert (=> b!4520128 m!5268239))

(declare-fun m!5268241 () Bool)

(assert (=> d!1392552 m!5268241))

(declare-fun m!5268243 () Bool)

(assert (=> d!1392552 m!5268243))

(assert (=> b!4519787 d!1392552))

(declare-fun bs!855654 () Bool)

(declare-fun d!1392554 () Bool)

(assert (= bs!855654 (and d!1392554 b!4520061)))

(declare-fun lambda!172445 () Int)

(assert (=> bs!855654 (not (= lambda!172445 lambda!172430))))

(declare-fun bs!855655 () Bool)

(assert (= bs!855655 (and d!1392554 b!4520058)))

(assert (=> bs!855655 (not (= lambda!172445 lambda!172431))))

(assert (=> bs!855655 (not (= lambda!172445 lambda!172432))))

(declare-fun bs!855656 () Bool)

(assert (= bs!855656 (and d!1392554 d!1392478)))

(assert (=> bs!855656 (not (= lambda!172445 lambda!172433))))

(assert (=> d!1392554 true))

(assert (=> d!1392554 true))

(assert (=> d!1392554 (= (allKeysSameHash!1014 newBucket!178 hash!344 hashF!1107) (forall!10265 newBucket!178 lambda!172445))))

(declare-fun bs!855657 () Bool)

(assert (= bs!855657 d!1392554))

(declare-fun m!5268245 () Bool)

(assert (=> bs!855657 m!5268245))

(assert (=> b!4519777 d!1392554))

(declare-fun d!1392556 () Bool)

(declare-fun res!1881211 () Bool)

(declare-fun e!2816165 () Bool)

(assert (=> d!1392556 (=> res!1881211 e!2816165)))

(declare-fun e!2816166 () Bool)

(assert (=> d!1392556 (= res!1881211 e!2816166)))

(declare-fun res!1881210 () Bool)

(assert (=> d!1392556 (=> (not res!1881210) (not e!2816166))))

(assert (=> d!1392556 (= res!1881210 ((_ is Cons!50647) (t!357733 (toList!4327 lm!1477))))))

(assert (=> d!1392556 (= (containsKeyBiggerList!140 (t!357733 (toList!4327 lm!1477)) key!3287) e!2816165)))

(declare-fun b!4520140 () Bool)

(assert (=> b!4520140 (= e!2816166 (containsKey!1780 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(declare-fun b!4520141 () Bool)

(declare-fun e!2816167 () Bool)

(assert (=> b!4520141 (= e!2816165 e!2816167)))

(declare-fun res!1881212 () Bool)

(assert (=> b!4520141 (=> (not res!1881212) (not e!2816167))))

(assert (=> b!4520141 (= res!1881212 ((_ is Cons!50647) (t!357733 (toList!4327 lm!1477))))))

(declare-fun b!4520142 () Bool)

(assert (=> b!4520142 (= e!2816167 (containsKeyBiggerList!140 (t!357733 (t!357733 (toList!4327 lm!1477))) key!3287))))

(assert (= (and d!1392556 res!1881210) b!4520140))

(assert (= (and d!1392556 (not res!1881211)) b!4520141))

(assert (= (and b!4520141 res!1881212) b!4520142))

(declare-fun m!5268247 () Bool)

(assert (=> b!4520140 m!5268247))

(declare-fun m!5268249 () Bool)

(assert (=> b!4520142 m!5268249))

(assert (=> b!4519778 d!1392556))

(declare-fun d!1392558 () Bool)

(declare-fun res!1881214 () Bool)

(declare-fun e!2816168 () Bool)

(assert (=> d!1392558 (=> res!1881214 e!2816168)))

(declare-fun e!2816169 () Bool)

(assert (=> d!1392558 (= res!1881214 e!2816169)))

(declare-fun res!1881213 () Bool)

(assert (=> d!1392558 (=> (not res!1881213) (not e!2816169))))

(assert (=> d!1392558 (= res!1881213 ((_ is Cons!50647) (toList!4327 lt!1697021)))))

(assert (=> d!1392558 (= (containsKeyBiggerList!140 (toList!4327 lt!1697021) key!3287) e!2816168)))

(declare-fun b!4520143 () Bool)

(assert (=> b!4520143 (= e!2816169 (containsKey!1780 (_2!28832 (h!56500 (toList!4327 lt!1697021))) key!3287))))

(declare-fun b!4520144 () Bool)

(declare-fun e!2816170 () Bool)

(assert (=> b!4520144 (= e!2816168 e!2816170)))

(declare-fun res!1881215 () Bool)

(assert (=> b!4520144 (=> (not res!1881215) (not e!2816170))))

(assert (=> b!4520144 (= res!1881215 ((_ is Cons!50647) (toList!4327 lt!1697021)))))

(declare-fun b!4520145 () Bool)

(assert (=> b!4520145 (= e!2816170 (containsKeyBiggerList!140 (t!357733 (toList!4327 lt!1697021)) key!3287))))

(assert (= (and d!1392558 res!1881213) b!4520143))

(assert (= (and d!1392558 (not res!1881214)) b!4520144))

(assert (= (and b!4520144 res!1881215) b!4520145))

(declare-fun m!5268251 () Bool)

(assert (=> b!4520143 m!5268251))

(declare-fun m!5268253 () Bool)

(assert (=> b!4520145 m!5268253))

(assert (=> b!4519778 d!1392558))

(declare-fun bs!855658 () Bool)

(declare-fun d!1392560 () Bool)

(assert (= bs!855658 (and d!1392560 d!1392458)))

(declare-fun lambda!172448 () Int)

(assert (=> bs!855658 (= lambda!172448 lambda!172357)))

(declare-fun bs!855659 () Bool)

(assert (= bs!855659 (and d!1392560 d!1392542)))

(assert (=> bs!855659 (= lambda!172448 lambda!172442)))

(declare-fun bs!855660 () Bool)

(assert (= bs!855660 (and d!1392560 start!447492)))

(assert (=> bs!855660 (= lambda!172448 lambda!172325)))

(declare-fun bs!855661 () Bool)

(assert (= bs!855661 (and d!1392560 d!1392534)))

(assert (=> bs!855661 (= lambda!172448 lambda!172439)))

(declare-fun bs!855662 () Bool)

(assert (= bs!855662 (and d!1392560 d!1392526)))

(assert (=> bs!855662 (= lambda!172448 lambda!172437)))

(declare-fun bs!855663 () Bool)

(assert (= bs!855663 (and d!1392560 d!1392530)))

(assert (=> bs!855663 (= lambda!172448 lambda!172438)))

(declare-fun bs!855664 () Bool)

(assert (= bs!855664 (and d!1392560 d!1392416)))

(assert (=> bs!855664 (= lambda!172448 lambda!172348)))

(declare-fun bs!855665 () Bool)

(assert (= bs!855665 (and d!1392560 d!1392446)))

(assert (=> bs!855665 (not (= lambda!172448 lambda!172351))))

(declare-fun bs!855666 () Bool)

(assert (= bs!855666 (and d!1392560 d!1392516)))

(assert (=> bs!855666 (= lambda!172448 lambda!172434)))

(declare-fun bs!855667 () Bool)

(assert (= bs!855667 (and d!1392560 d!1392462)))

(assert (=> bs!855667 (= lambda!172448 lambda!172358)))

(declare-fun bs!855668 () Bool)

(assert (= bs!855668 (and d!1392560 d!1392468)))

(assert (=> bs!855668 (= lambda!172448 lambda!172359)))

(assert (=> d!1392560 (containsKeyBiggerList!140 (toList!4327 lt!1697021) key!3287)))

(declare-fun lt!1697402 () Unit!95040)

(declare-fun choose!29523 (ListLongMap!2959 K!12040 Hashable!5555) Unit!95040)

(assert (=> d!1392560 (= lt!1697402 (choose!29523 lt!1697021 key!3287 hashF!1107))))

(assert (=> d!1392560 (forall!10263 (toList!4327 lt!1697021) lambda!172448)))

(assert (=> d!1392560 (= (lemmaInLongMapThenContainsKeyBiggerList!76 lt!1697021 key!3287 hashF!1107) lt!1697402)))

(declare-fun bs!855669 () Bool)

(assert (= bs!855669 d!1392560))

(assert (=> bs!855669 m!5267581))

(declare-fun m!5268255 () Bool)

(assert (=> bs!855669 m!5268255))

(declare-fun m!5268257 () Bool)

(assert (=> bs!855669 m!5268257))

(assert (=> b!4519778 d!1392560))

(declare-fun d!1392562 () Bool)

(declare-fun res!1881220 () Bool)

(declare-fun e!2816175 () Bool)

(assert (=> d!1392562 (=> res!1881220 e!2816175)))

(assert (=> d!1392562 (= res!1881220 ((_ is Nil!50647) (toList!4327 lm!1477)))))

(assert (=> d!1392562 (= (forall!10263 (toList!4327 lm!1477) lambda!172325) e!2816175)))

(declare-fun b!4520150 () Bool)

(declare-fun e!2816176 () Bool)

(assert (=> b!4520150 (= e!2816175 e!2816176)))

(declare-fun res!1881221 () Bool)

(assert (=> b!4520150 (=> (not res!1881221) (not e!2816176))))

(assert (=> b!4520150 (= res!1881221 (dynLambda!21163 lambda!172325 (h!56500 (toList!4327 lm!1477))))))

(declare-fun b!4520151 () Bool)

(assert (=> b!4520151 (= e!2816176 (forall!10263 (t!357733 (toList!4327 lm!1477)) lambda!172325))))

(assert (= (and d!1392562 (not res!1881220)) b!4520150))

(assert (= (and b!4520150 res!1881221) b!4520151))

(declare-fun b_lambda!154949 () Bool)

(assert (=> (not b_lambda!154949) (not b!4520150)))

(assert (=> b!4520150 m!5268201))

(declare-fun m!5268259 () Bool)

(assert (=> b!4520151 m!5268259))

(assert (=> start!447492 d!1392562))

(declare-fun d!1392564 () Bool)

(assert (=> d!1392564 (= (inv!66224 lm!1477) (isStrictlySorted!431 (toList!4327 lm!1477)))))

(declare-fun bs!855670 () Bool)

(assert (= bs!855670 d!1392564))

(assert (=> bs!855670 m!5268211))

(assert (=> start!447492 d!1392564))

(declare-fun d!1392566 () Bool)

(assert (=> d!1392566 (= (head!9412 lt!1697011) (head!9414 (toList!4327 lt!1697011)))))

(declare-fun bs!855671 () Bool)

(assert (= bs!855671 d!1392566))

(declare-fun m!5268261 () Bool)

(assert (=> bs!855671 m!5268261))

(assert (=> b!4519784 d!1392566))

(declare-fun d!1392568 () Bool)

(declare-fun isEmpty!28669 (List!50771) Bool)

(assert (=> d!1392568 (= (isEmpty!28667 lm!1477) (isEmpty!28669 (toList!4327 lm!1477)))))

(declare-fun bs!855672 () Bool)

(assert (= bs!855672 d!1392568))

(declare-fun m!5268263 () Bool)

(assert (=> bs!855672 m!5268263))

(assert (=> b!4519773 d!1392568))

(declare-fun d!1392570 () Bool)

(assert (=> d!1392570 (= (eq!617 lt!1696999 lt!1697014) (= (content!8356 (toList!4328 lt!1696999)) (content!8356 (toList!4328 lt!1697014))))))

(declare-fun bs!855673 () Bool)

(assert (= bs!855673 d!1392570))

(assert (=> bs!855673 m!5267929))

(declare-fun m!5268265 () Bool)

(assert (=> bs!855673 m!5268265))

(assert (=> b!4519774 d!1392570))

(declare-fun d!1392572 () Bool)

(assert (=> d!1392572 (= (eq!617 lt!1697016 lt!1697014) (= (content!8356 (toList!4328 lt!1697016)) (content!8356 (toList!4328 lt!1697014))))))

(declare-fun bs!855674 () Bool)

(assert (= bs!855674 d!1392572))

(assert (=> bs!855674 m!5267931))

(assert (=> bs!855674 m!5268265))

(assert (=> b!4519774 d!1392572))

(declare-fun bs!855675 () Bool)

(declare-fun b!4520155 () Bool)

(assert (= bs!855675 (and b!4520155 d!1392554)))

(declare-fun lambda!172449 () Int)

(assert (=> bs!855675 (not (= lambda!172449 lambda!172445))))

(declare-fun bs!855676 () Bool)

(assert (= bs!855676 (and b!4520155 b!4520058)))

(assert (=> bs!855676 (= (= lt!1697017 lt!1697024) (= lambda!172449 lambda!172431))))

(declare-fun bs!855677 () Bool)

(assert (= bs!855677 (and b!4520155 b!4520061)))

(assert (=> bs!855677 (= (= lt!1697017 lt!1697024) (= lambda!172449 lambda!172430))))

(declare-fun bs!855678 () Bool)

(assert (= bs!855678 (and b!4520155 d!1392478)))

(assert (=> bs!855678 (= (= lt!1697017 lt!1697339) (= lambda!172449 lambda!172433))))

(assert (=> bs!855676 (= (= lt!1697017 lt!1697345) (= lambda!172449 lambda!172432))))

(assert (=> b!4520155 true))

(declare-fun bs!855679 () Bool)

(declare-fun b!4520152 () Bool)

(assert (= bs!855679 (and b!4520152 b!4520155)))

(declare-fun lambda!172450 () Int)

(assert (=> bs!855679 (= lambda!172450 lambda!172449)))

(declare-fun bs!855680 () Bool)

(assert (= bs!855680 (and b!4520152 d!1392554)))

(assert (=> bs!855680 (not (= lambda!172450 lambda!172445))))

(declare-fun bs!855681 () Bool)

(assert (= bs!855681 (and b!4520152 b!4520058)))

(assert (=> bs!855681 (= (= lt!1697017 lt!1697024) (= lambda!172450 lambda!172431))))

(declare-fun bs!855682 () Bool)

(assert (= bs!855682 (and b!4520152 b!4520061)))

(assert (=> bs!855682 (= (= lt!1697017 lt!1697024) (= lambda!172450 lambda!172430))))

(declare-fun bs!855683 () Bool)

(assert (= bs!855683 (and b!4520152 d!1392478)))

(assert (=> bs!855683 (= (= lt!1697017 lt!1697339) (= lambda!172450 lambda!172433))))

(assert (=> bs!855681 (= (= lt!1697017 lt!1697345) (= lambda!172450 lambda!172432))))

(assert (=> b!4520152 true))

(declare-fun lambda!172451 () Int)

(declare-fun lt!1697423 () ListMap!3589)

(assert (=> bs!855679 (= (= lt!1697423 lt!1697017) (= lambda!172451 lambda!172449))))

(assert (=> bs!855680 (not (= lambda!172451 lambda!172445))))

(assert (=> b!4520152 (= (= lt!1697423 lt!1697017) (= lambda!172451 lambda!172450))))

(assert (=> bs!855681 (= (= lt!1697423 lt!1697024) (= lambda!172451 lambda!172431))))

(assert (=> bs!855682 (= (= lt!1697423 lt!1697024) (= lambda!172451 lambda!172430))))

(assert (=> bs!855683 (= (= lt!1697423 lt!1697339) (= lambda!172451 lambda!172433))))

(assert (=> bs!855681 (= (= lt!1697423 lt!1697345) (= lambda!172451 lambda!172432))))

(assert (=> b!4520152 true))

(declare-fun bs!855684 () Bool)

(declare-fun d!1392574 () Bool)

(assert (= bs!855684 (and d!1392574 b!4520152)))

(declare-fun lambda!172452 () Int)

(declare-fun lt!1697417 () ListMap!3589)

(assert (=> bs!855684 (= (= lt!1697417 lt!1697423) (= lambda!172452 lambda!172451))))

(declare-fun bs!855685 () Bool)

(assert (= bs!855685 (and d!1392574 b!4520155)))

(assert (=> bs!855685 (= (= lt!1697417 lt!1697017) (= lambda!172452 lambda!172449))))

(declare-fun bs!855686 () Bool)

(assert (= bs!855686 (and d!1392574 d!1392554)))

(assert (=> bs!855686 (not (= lambda!172452 lambda!172445))))

(assert (=> bs!855684 (= (= lt!1697417 lt!1697017) (= lambda!172452 lambda!172450))))

(declare-fun bs!855687 () Bool)

(assert (= bs!855687 (and d!1392574 b!4520058)))

(assert (=> bs!855687 (= (= lt!1697417 lt!1697024) (= lambda!172452 lambda!172431))))

(declare-fun bs!855688 () Bool)

(assert (= bs!855688 (and d!1392574 b!4520061)))

(assert (=> bs!855688 (= (= lt!1697417 lt!1697024) (= lambda!172452 lambda!172430))))

(declare-fun bs!855689 () Bool)

(assert (= bs!855689 (and d!1392574 d!1392478)))

(assert (=> bs!855689 (= (= lt!1697417 lt!1697339) (= lambda!172452 lambda!172433))))

(assert (=> bs!855687 (= (= lt!1697417 lt!1697345) (= lambda!172452 lambda!172432))))

(assert (=> d!1392574 true))

(declare-fun e!2816179 () ListMap!3589)

(assert (=> b!4520152 (= e!2816179 lt!1697423)))

(declare-fun lt!1697413 () ListMap!3589)

(assert (=> b!4520152 (= lt!1697413 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))))))

(assert (=> b!4520152 (= lt!1697423 (addToMapMapFromBucket!687 (t!357732 (_2!28832 lt!1697023)) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun lt!1697420 () Unit!95040)

(declare-fun call!314933 () Unit!95040)

(assert (=> b!4520152 (= lt!1697420 call!314933)))

(assert (=> b!4520152 (forall!10265 (toList!4328 lt!1697017) lambda!172450)))

(declare-fun lt!1697415 () Unit!95040)

(assert (=> b!4520152 (= lt!1697415 lt!1697420)))

(declare-fun call!314932 () Bool)

(assert (=> b!4520152 call!314932))

(declare-fun lt!1697408 () Unit!95040)

(declare-fun Unit!95093 () Unit!95040)

(assert (=> b!4520152 (= lt!1697408 Unit!95093)))

(declare-fun call!314931 () Bool)

(assert (=> b!4520152 call!314931))

(declare-fun lt!1697412 () Unit!95040)

(declare-fun Unit!95094 () Unit!95040)

(assert (=> b!4520152 (= lt!1697412 Unit!95094)))

(declare-fun lt!1697410 () Unit!95040)

(declare-fun Unit!95095 () Unit!95040)

(assert (=> b!4520152 (= lt!1697410 Unit!95095)))

(declare-fun lt!1697419 () Unit!95040)

(assert (=> b!4520152 (= lt!1697419 (forallContained!2517 (toList!4328 lt!1697413) lambda!172451 (h!56499 (_2!28832 lt!1697023))))))

(assert (=> b!4520152 (contains!13372 lt!1697413 (_1!28831 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun lt!1697405 () Unit!95040)

(declare-fun Unit!95096 () Unit!95040)

(assert (=> b!4520152 (= lt!1697405 Unit!95096)))

(assert (=> b!4520152 (contains!13372 lt!1697423 (_1!28831 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun lt!1697416 () Unit!95040)

(declare-fun Unit!95097 () Unit!95040)

(assert (=> b!4520152 (= lt!1697416 Unit!95097)))

(assert (=> b!4520152 (forall!10265 (_2!28832 lt!1697023) lambda!172451)))

(declare-fun lt!1697409 () Unit!95040)

(declare-fun Unit!95098 () Unit!95040)

(assert (=> b!4520152 (= lt!1697409 Unit!95098)))

(assert (=> b!4520152 (forall!10265 (toList!4328 lt!1697413) lambda!172451)))

(declare-fun lt!1697406 () Unit!95040)

(declare-fun Unit!95099 () Unit!95040)

(assert (=> b!4520152 (= lt!1697406 Unit!95099)))

(declare-fun lt!1697414 () Unit!95040)

(declare-fun Unit!95100 () Unit!95040)

(assert (=> b!4520152 (= lt!1697414 Unit!95100)))

(declare-fun lt!1697403 () Unit!95040)

(assert (=> b!4520152 (= lt!1697403 (addForallContainsKeyThenBeforeAdding!338 lt!1697017 lt!1697423 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4520152 (forall!10265 (toList!4328 lt!1697017) lambda!172451)))

(declare-fun lt!1697411 () Unit!95040)

(assert (=> b!4520152 (= lt!1697411 lt!1697403)))

(assert (=> b!4520152 (forall!10265 (toList!4328 lt!1697017) lambda!172451)))

(declare-fun lt!1697418 () Unit!95040)

(declare-fun Unit!95101 () Unit!95040)

(assert (=> b!4520152 (= lt!1697418 Unit!95101)))

(declare-fun res!1881223 () Bool)

(assert (=> b!4520152 (= res!1881223 (forall!10265 (_2!28832 lt!1697023) lambda!172451))))

(declare-fun e!2816177 () Bool)

(assert (=> b!4520152 (=> (not res!1881223) (not e!2816177))))

(assert (=> b!4520152 e!2816177))

(declare-fun lt!1697404 () Unit!95040)

(declare-fun Unit!95102 () Unit!95040)

(assert (=> b!4520152 (= lt!1697404 Unit!95102)))

(declare-fun b!4520153 () Bool)

(assert (=> b!4520153 (= e!2816177 (forall!10265 (toList!4328 lt!1697017) lambda!172451))))

(declare-fun bm!314926 () Bool)

(assert (=> bm!314926 (= call!314933 (lemmaContainsAllItsOwnKeys!338 lt!1697017))))

(declare-fun c!771397 () Bool)

(declare-fun bm!314927 () Bool)

(assert (=> bm!314927 (= call!314932 (forall!10265 (ite c!771397 (toList!4328 lt!1697017) (toList!4328 lt!1697413)) (ite c!771397 lambda!172449 lambda!172451)))))

(declare-fun b!4520154 () Bool)

(declare-fun res!1881222 () Bool)

(declare-fun e!2816178 () Bool)

(assert (=> b!4520154 (=> (not res!1881222) (not e!2816178))))

(assert (=> b!4520154 (= res!1881222 (forall!10265 (toList!4328 lt!1697017) lambda!172452))))

(assert (=> d!1392574 e!2816178))

(declare-fun res!1881224 () Bool)

(assert (=> d!1392574 (=> (not res!1881224) (not e!2816178))))

(assert (=> d!1392574 (= res!1881224 (forall!10265 (_2!28832 lt!1697023) lambda!172452))))

(assert (=> d!1392574 (= lt!1697417 e!2816179)))

(assert (=> d!1392574 (= c!771397 ((_ is Nil!50646) (_2!28832 lt!1697023)))))

(assert (=> d!1392574 (noDuplicateKeys!1160 (_2!28832 lt!1697023))))

(assert (=> d!1392574 (= (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697017) lt!1697417)))

(declare-fun bm!314928 () Bool)

(assert (=> bm!314928 (= call!314931 (forall!10265 (ite c!771397 (toList!4328 lt!1697017) (t!357732 (_2!28832 lt!1697023))) (ite c!771397 lambda!172449 lambda!172451)))))

(assert (=> b!4520155 (= e!2816179 lt!1697017)))

(declare-fun lt!1697407 () Unit!95040)

(assert (=> b!4520155 (= lt!1697407 call!314933)))

(assert (=> b!4520155 call!314931))

(declare-fun lt!1697421 () Unit!95040)

(assert (=> b!4520155 (= lt!1697421 lt!1697407)))

(assert (=> b!4520155 call!314932))

(declare-fun lt!1697422 () Unit!95040)

(declare-fun Unit!95103 () Unit!95040)

(assert (=> b!4520155 (= lt!1697422 Unit!95103)))

(declare-fun b!4520156 () Bool)

(assert (=> b!4520156 (= e!2816178 (invariantList!1017 (toList!4328 lt!1697417)))))

(assert (= (and d!1392574 c!771397) b!4520155))

(assert (= (and d!1392574 (not c!771397)) b!4520152))

(assert (= (and b!4520152 res!1881223) b!4520153))

(assert (= (or b!4520155 b!4520152) bm!314928))

(assert (= (or b!4520155 b!4520152) bm!314927))

(assert (= (or b!4520155 b!4520152) bm!314926))

(assert (= (and d!1392574 res!1881224) b!4520154))

(assert (= (and b!4520154 res!1881222) b!4520156))

(declare-fun m!5268267 () Bool)

(assert (=> d!1392574 m!5268267))

(assert (=> d!1392574 m!5267521))

(declare-fun m!5268269 () Bool)

(assert (=> b!4520153 m!5268269))

(declare-fun m!5268271 () Bool)

(assert (=> bm!314927 m!5268271))

(declare-fun m!5268273 () Bool)

(assert (=> bm!314926 m!5268273))

(declare-fun m!5268275 () Bool)

(assert (=> b!4520156 m!5268275))

(declare-fun m!5268277 () Bool)

(assert (=> b!4520154 m!5268277))

(declare-fun m!5268279 () Bool)

(assert (=> bm!314928 m!5268279))

(declare-fun m!5268281 () Bool)

(assert (=> b!4520152 m!5268281))

(assert (=> b!4520152 m!5268269))

(declare-fun m!5268283 () Bool)

(assert (=> b!4520152 m!5268283))

(declare-fun m!5268285 () Bool)

(assert (=> b!4520152 m!5268285))

(assert (=> b!4520152 m!5268269))

(declare-fun m!5268287 () Bool)

(assert (=> b!4520152 m!5268287))

(assert (=> b!4520152 m!5268281))

(declare-fun m!5268289 () Bool)

(assert (=> b!4520152 m!5268289))

(declare-fun m!5268291 () Bool)

(assert (=> b!4520152 m!5268291))

(declare-fun m!5268293 () Bool)

(assert (=> b!4520152 m!5268293))

(assert (=> b!4520152 m!5268287))

(declare-fun m!5268295 () Bool)

(assert (=> b!4520152 m!5268295))

(declare-fun m!5268297 () Bool)

(assert (=> b!4520152 m!5268297))

(assert (=> b!4519774 d!1392574))

(declare-fun d!1392576 () Bool)

(assert (=> d!1392576 (eq!617 (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697024) (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697017))))

(declare-fun lt!1697426 () Unit!95040)

(declare-fun choose!29524 (ListMap!3589 ListMap!3589 List!50770) Unit!95040)

(assert (=> d!1392576 (= lt!1697426 (choose!29524 lt!1697024 lt!1697017 (_2!28832 lt!1697023)))))

(assert (=> d!1392576 (noDuplicateKeys!1160 (_2!28832 lt!1697023))))

(assert (=> d!1392576 (= (lemmaAddToMapFromBucketPreservesEquivalence!36 lt!1697024 lt!1697017 (_2!28832 lt!1697023)) lt!1697426)))

(declare-fun bs!855690 () Bool)

(assert (= bs!855690 d!1392576))

(declare-fun m!5268299 () Bool)

(assert (=> bs!855690 m!5268299))

(assert (=> bs!855690 m!5267515))

(assert (=> bs!855690 m!5267505))

(assert (=> bs!855690 m!5267515))

(declare-fun m!5268301 () Bool)

(assert (=> bs!855690 m!5268301))

(assert (=> bs!855690 m!5267505))

(assert (=> bs!855690 m!5267521))

(assert (=> b!4519774 d!1392576))

(declare-fun d!1392578 () Bool)

(declare-fun lt!1697427 () Bool)

(assert (=> d!1392578 (= lt!1697427 (select (content!8359 (t!357733 (toList!4327 lm!1477))) lt!1697012))))

(declare-fun e!2816180 () Bool)

(assert (=> d!1392578 (= lt!1697427 e!2816180)))

(declare-fun res!1881225 () Bool)

(assert (=> d!1392578 (=> (not res!1881225) (not e!2816180))))

(assert (=> d!1392578 (= res!1881225 ((_ is Cons!50647) (t!357733 (toList!4327 lm!1477))))))

(assert (=> d!1392578 (= (contains!13373 (t!357733 (toList!4327 lm!1477)) lt!1697012) lt!1697427)))

(declare-fun b!4520157 () Bool)

(declare-fun e!2816181 () Bool)

(assert (=> b!4520157 (= e!2816180 e!2816181)))

(declare-fun res!1881226 () Bool)

(assert (=> b!4520157 (=> res!1881226 e!2816181)))

(assert (=> b!4520157 (= res!1881226 (= (h!56500 (t!357733 (toList!4327 lm!1477))) lt!1697012))))

(declare-fun b!4520158 () Bool)

(assert (=> b!4520158 (= e!2816181 (contains!13373 (t!357733 (t!357733 (toList!4327 lm!1477))) lt!1697012))))

(assert (= (and d!1392578 res!1881225) b!4520157))

(assert (= (and b!4520157 (not res!1881226)) b!4520158))

(declare-fun m!5268303 () Bool)

(assert (=> d!1392578 m!5268303))

(declare-fun m!5268305 () Bool)

(assert (=> d!1392578 m!5268305))

(declare-fun m!5268307 () Bool)

(assert (=> b!4520158 m!5268307))

(assert (=> b!4519795 d!1392578))

(declare-fun d!1392580 () Bool)

(declare-fun hash!2811 (Hashable!5555 K!12040) (_ BitVec 64))

(assert (=> d!1392580 (= (hash!2807 hashF!1107 key!3287) (hash!2811 hashF!1107 key!3287))))

(declare-fun bs!855691 () Bool)

(assert (= bs!855691 d!1392580))

(declare-fun m!5268309 () Bool)

(assert (=> bs!855691 m!5268309))

(assert (=> b!4519796 d!1392580))

(declare-fun bs!855692 () Bool)

(declare-fun d!1392582 () Bool)

(assert (= bs!855692 (and d!1392582 d!1392458)))

(declare-fun lambda!172455 () Int)

(assert (=> bs!855692 (= lambda!172455 lambda!172357)))

(declare-fun bs!855693 () Bool)

(assert (= bs!855693 (and d!1392582 d!1392542)))

(assert (=> bs!855693 (= lambda!172455 lambda!172442)))

(declare-fun bs!855694 () Bool)

(assert (= bs!855694 (and d!1392582 d!1392534)))

(assert (=> bs!855694 (= lambda!172455 lambda!172439)))

(declare-fun bs!855695 () Bool)

(assert (= bs!855695 (and d!1392582 d!1392526)))

(assert (=> bs!855695 (= lambda!172455 lambda!172437)))

(declare-fun bs!855696 () Bool)

(assert (= bs!855696 (and d!1392582 d!1392530)))

(assert (=> bs!855696 (= lambda!172455 lambda!172438)))

(declare-fun bs!855697 () Bool)

(assert (= bs!855697 (and d!1392582 d!1392416)))

(assert (=> bs!855697 (= lambda!172455 lambda!172348)))

(declare-fun bs!855698 () Bool)

(assert (= bs!855698 (and d!1392582 d!1392446)))

(assert (=> bs!855698 (not (= lambda!172455 lambda!172351))))

(declare-fun bs!855699 () Bool)

(assert (= bs!855699 (and d!1392582 d!1392560)))

(assert (=> bs!855699 (= lambda!172455 lambda!172448)))

(declare-fun bs!855700 () Bool)

(assert (= bs!855700 (and d!1392582 start!447492)))

(assert (=> bs!855700 (= lambda!172455 lambda!172325)))

(declare-fun bs!855701 () Bool)

(assert (= bs!855701 (and d!1392582 d!1392516)))

(assert (=> bs!855701 (= lambda!172455 lambda!172434)))

(declare-fun bs!855702 () Bool)

(assert (= bs!855702 (and d!1392582 d!1392462)))

(assert (=> bs!855702 (= lambda!172455 lambda!172358)))

(declare-fun bs!855703 () Bool)

(assert (= bs!855703 (and d!1392582 d!1392468)))

(assert (=> bs!855703 (= lambda!172455 lambda!172359)))

(assert (=> d!1392582 (not (contains!13372 (extractMap!1216 (toList!4327 lm!1477)) key!3287))))

(declare-fun lt!1697430 () Unit!95040)

(declare-fun choose!29525 (ListLongMap!2959 K!12040 Hashable!5555) Unit!95040)

(assert (=> d!1392582 (= lt!1697430 (choose!29525 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1392582 (forall!10263 (toList!4327 lm!1477) lambda!172455)))

(assert (=> d!1392582 (= (lemmaNotInItsHashBucketThenNotInMap!148 lm!1477 key!3287 hashF!1107) lt!1697430)))

(declare-fun bs!855704 () Bool)

(assert (= bs!855704 d!1392582))

(assert (=> bs!855704 m!5267493))

(assert (=> bs!855704 m!5267493))

(declare-fun m!5268311 () Bool)

(assert (=> bs!855704 m!5268311))

(declare-fun m!5268313 () Bool)

(assert (=> bs!855704 m!5268313))

(declare-fun m!5268315 () Bool)

(assert (=> bs!855704 m!5268315))

(assert (=> b!4519785 d!1392582))

(declare-fun d!1392584 () Bool)

(declare-fun e!2816182 () Bool)

(assert (=> d!1392584 e!2816182))

(declare-fun res!1881228 () Bool)

(assert (=> d!1392584 (=> (not res!1881228) (not e!2816182))))

(declare-fun lt!1697432 () ListLongMap!2959)

(assert (=> d!1392584 (= res!1881228 (contains!13371 lt!1697432 (_1!28832 lt!1697006)))))

(declare-fun lt!1697434 () List!50771)

(assert (=> d!1392584 (= lt!1697432 (ListLongMap!2960 lt!1697434))))

(declare-fun lt!1697431 () Unit!95040)

(declare-fun lt!1697433 () Unit!95040)

(assert (=> d!1392584 (= lt!1697431 lt!1697433)))

(assert (=> d!1392584 (= (getValueByKey!1093 lt!1697434 (_1!28832 lt!1697006)) (Some!11112 (_2!28832 lt!1697006)))))

(assert (=> d!1392584 (= lt!1697433 (lemmaContainsTupThenGetReturnValue!678 lt!1697434 (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))

(assert (=> d!1392584 (= lt!1697434 (insertStrictlySorted!408 (toList!4327 lm!1477) (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))

(assert (=> d!1392584 (= (+!1538 lm!1477 lt!1697006) lt!1697432)))

(declare-fun b!4520159 () Bool)

(declare-fun res!1881227 () Bool)

(assert (=> b!4520159 (=> (not res!1881227) (not e!2816182))))

(assert (=> b!4520159 (= res!1881227 (= (getValueByKey!1093 (toList!4327 lt!1697432) (_1!28832 lt!1697006)) (Some!11112 (_2!28832 lt!1697006))))))

(declare-fun b!4520160 () Bool)

(assert (=> b!4520160 (= e!2816182 (contains!13373 (toList!4327 lt!1697432) lt!1697006))))

(assert (= (and d!1392584 res!1881228) b!4520159))

(assert (= (and b!4520159 res!1881227) b!4520160))

(declare-fun m!5268317 () Bool)

(assert (=> d!1392584 m!5268317))

(declare-fun m!5268319 () Bool)

(assert (=> d!1392584 m!5268319))

(declare-fun m!5268321 () Bool)

(assert (=> d!1392584 m!5268321))

(declare-fun m!5268323 () Bool)

(assert (=> d!1392584 m!5268323))

(declare-fun m!5268325 () Bool)

(assert (=> b!4520159 m!5268325))

(declare-fun m!5268327 () Bool)

(assert (=> b!4520160 m!5268327))

(assert (=> b!4519775 d!1392584))

(declare-fun d!1392586 () Bool)

(declare-fun e!2816183 () Bool)

(assert (=> d!1392586 e!2816183))

(declare-fun res!1881230 () Bool)

(assert (=> d!1392586 (=> (not res!1881230) (not e!2816183))))

(declare-fun lt!1697436 () ListLongMap!2959)

(assert (=> d!1392586 (= res!1881230 (contains!13371 lt!1697436 (_1!28832 lt!1697023)))))

(declare-fun lt!1697438 () List!50771)

(assert (=> d!1392586 (= lt!1697436 (ListLongMap!2960 lt!1697438))))

(declare-fun lt!1697435 () Unit!95040)

(declare-fun lt!1697437 () Unit!95040)

(assert (=> d!1392586 (= lt!1697435 lt!1697437)))

(assert (=> d!1392586 (= (getValueByKey!1093 lt!1697438 (_1!28832 lt!1697023)) (Some!11112 (_2!28832 lt!1697023)))))

(assert (=> d!1392586 (= lt!1697437 (lemmaContainsTupThenGetReturnValue!678 lt!1697438 (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))

(assert (=> d!1392586 (= lt!1697438 (insertStrictlySorted!408 (toList!4327 lt!1697001) (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))

(assert (=> d!1392586 (= (+!1538 lt!1697001 lt!1697023) lt!1697436)))

(declare-fun b!4520161 () Bool)

(declare-fun res!1881229 () Bool)

(assert (=> b!4520161 (=> (not res!1881229) (not e!2816183))))

(assert (=> b!4520161 (= res!1881229 (= (getValueByKey!1093 (toList!4327 lt!1697436) (_1!28832 lt!1697023)) (Some!11112 (_2!28832 lt!1697023))))))

(declare-fun b!4520162 () Bool)

(assert (=> b!4520162 (= e!2816183 (contains!13373 (toList!4327 lt!1697436) lt!1697023))))

(assert (= (and d!1392586 res!1881230) b!4520161))

(assert (= (and b!4520161 res!1881229) b!4520162))

(declare-fun m!5268329 () Bool)

(assert (=> d!1392586 m!5268329))

(declare-fun m!5268331 () Bool)

(assert (=> d!1392586 m!5268331))

(declare-fun m!5268333 () Bool)

(assert (=> d!1392586 m!5268333))

(declare-fun m!5268335 () Bool)

(assert (=> d!1392586 m!5268335))

(declare-fun m!5268337 () Bool)

(assert (=> b!4520161 m!5268337))

(declare-fun m!5268339 () Bool)

(assert (=> b!4520162 m!5268339))

(assert (=> b!4519775 d!1392586))

(declare-fun e!2816186 () Bool)

(declare-fun tp!1338093 () Bool)

(declare-fun b!4520167 () Bool)

(assert (=> b!4520167 (= e!2816186 (and tp_is_empty!27917 tp_is_empty!27919 tp!1338093))))

(assert (=> b!4519772 (= tp!1338080 e!2816186)))

(assert (= (and b!4519772 ((_ is Cons!50646) (t!357732 newBucket!178))) b!4520167))

(declare-fun b!4520172 () Bool)

(declare-fun e!2816189 () Bool)

(declare-fun tp!1338098 () Bool)

(declare-fun tp!1338099 () Bool)

(assert (=> b!4520172 (= e!2816189 (and tp!1338098 tp!1338099))))

(assert (=> b!4519794 (= tp!1338081 e!2816189)))

(assert (= (and b!4519794 ((_ is Cons!50647) (toList!4327 lm!1477))) b!4520172))

(declare-fun b_lambda!154951 () Bool)

(assert (= b_lambda!154945 (or start!447492 b_lambda!154951)))

(declare-fun bs!855705 () Bool)

(declare-fun d!1392588 () Bool)

(assert (= bs!855705 (and d!1392588 start!447492)))

(assert (=> bs!855705 (= (dynLambda!21163 lambda!172325 (h!56500 (toList!4327 lm!1477))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lm!1477)))))))

(declare-fun m!5268341 () Bool)

(assert (=> bs!855705 m!5268341))

(assert (=> d!1392538 d!1392588))

(declare-fun b_lambda!154953 () Bool)

(assert (= b_lambda!154949 (or start!447492 b_lambda!154953)))

(assert (=> b!4520150 d!1392588))

(declare-fun b_lambda!154955 () Bool)

(assert (= b_lambda!154947 (or start!447492 b_lambda!154955)))

(declare-fun bs!855706 () Bool)

(declare-fun d!1392590 () Bool)

(assert (= bs!855706 (and d!1392590 start!447492)))

(assert (=> bs!855706 (= (dynLambda!21163 lambda!172325 lt!1697012) (noDuplicateKeys!1160 (_2!28832 lt!1697012)))))

(declare-fun m!5268343 () Bool)

(assert (=> bs!855706 m!5268343))

(assert (=> d!1392544 d!1392590))

(check-sat (not bm!314928) (not b!4519968) (not b!4519898) (not b_lambda!154955) (not d!1392550) (not b!4520140) (not b!4520151) (not d!1392416) (not b!4520108) (not b!4520092) (not d!1392572) (not d!1392552) (not b!4519901) (not d!1392458) (not b!4520060) (not bm!314921) (not bm!314924) (not d!1392586) (not d!1392578) (not b!4520159) (not b!4520093) (not d!1392448) (not d!1392568) (not d!1392580) (not b!4520087) (not b!4520077) (not d!1392582) (not bm!314927) (not d!1392544) (not d!1392524) (not b!4519987) (not d!1392516) (not d!1392584) (not bm!314922) (not b!4520085) (not b!4519900) (not b!4520084) (not d!1392526) (not b!4520081) (not d!1392530) (not b!4520080) (not bm!314900) (not b!4520152) (not d!1392468) (not b!4520158) (not d!1392542) (not d!1392560) (not d!1392538) (not b!4520068) (not bs!855706) (not d!1392574) (not d!1392554) (not b!4519981) (not b!4520154) tp_is_empty!27919 (not bm!314926) (not b!4520104) (not b!4520142) (not b!4519984) (not b!4520153) (not b!4520086) (not b!4520117) (not b!4519989) (not b!4519903) (not b!4519819) tp_is_empty!27917 (not b!4520109) (not b!4520079) (not d!1392450) (not b!4520096) (not b!4519985) (not b!4520082) (not b!4520161) (not b!4520160) (not b!4520062) (not d!1392464) (not d!1392566) (not b!4520172) (not b!4519988) (not b!4520065) (not bm!314923) (not d!1392446) (not b!4520097) (not b!4520156) (not b!4520101) (not b!4520100) (not b!4520145) (not b!4519996) (not b!4519899) (not b!4519818) (not bs!855705) (not d!1392460) (not b!4519980) (not d!1392386) (not d!1392466) (not b!4520107) (not d!1392528) (not d!1392476) (not d!1392546) (not b!4520090) (not b!4520098) (not b!4520091) (not b!4520167) (not b!4520059) (not b!4519905) (not d!1392470) (not b!4520128) (not d!1392472) (not d!1392522) (not d!1392548) (not d!1392534) (not d!1392576) (not b_lambda!154953) (not d!1392540) (not d!1392570) (not d!1392532) (not b!4520162) (not b!4520058) (not d!1392478) (not d!1392564) (not b_lambda!154951) (not b!4520111) (not d!1392462) (not b!4520143) (not b!4520075) (not b!4519904) (not d!1392518) (not bm!314925) (not b!4520095))
(check-sat)
(get-model)

(declare-fun d!1392600 () Bool)

(assert (=> d!1392600 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697008) key!3287))))

(declare-fun lt!1697447 () Unit!95040)

(declare-fun choose!29526 (List!50770 K!12040) Unit!95040)

(assert (=> d!1392600 (= lt!1697447 (choose!29526 (toList!4328 lt!1697008) key!3287))))

(assert (=> d!1392600 (invariantList!1017 (toList!4328 lt!1697008))))

(assert (=> d!1392600 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697008) key!3287) lt!1697447)))

(declare-fun bs!855708 () Bool)

(assert (= bs!855708 d!1392600))

(assert (=> bs!855708 m!5267717))

(assert (=> bs!855708 m!5267717))

(assert (=> bs!855708 m!5267721))

(declare-fun m!5268353 () Bool)

(assert (=> bs!855708 m!5268353))

(declare-fun m!5268357 () Bool)

(assert (=> bs!855708 m!5268357))

(assert (=> b!4519898 d!1392600))

(declare-fun d!1392602 () Bool)

(declare-fun isEmpty!28670 (Option!11112) Bool)

(assert (=> d!1392602 (= (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697008) key!3287)) (not (isEmpty!28670 (getValueByKey!1092 (toList!4328 lt!1697008) key!3287))))))

(declare-fun bs!855709 () Bool)

(assert (= bs!855709 d!1392602))

(assert (=> bs!855709 m!5267717))

(declare-fun m!5268369 () Bool)

(assert (=> bs!855709 m!5268369))

(assert (=> b!4519898 d!1392602))

(declare-fun b!4520209 () Bool)

(declare-fun e!2816207 () Option!11112)

(assert (=> b!4520209 (= e!2816207 (getValueByKey!1092 (t!357732 (toList!4328 lt!1697008)) key!3287))))

(declare-fun b!4520208 () Bool)

(declare-fun e!2816206 () Option!11112)

(assert (=> b!4520208 (= e!2816206 e!2816207)))

(declare-fun c!771409 () Bool)

(assert (=> b!4520208 (= c!771409 (and ((_ is Cons!50646) (toList!4328 lt!1697008)) (not (= (_1!28831 (h!56499 (toList!4328 lt!1697008))) key!3287))))))

(declare-fun d!1392606 () Bool)

(declare-fun c!771408 () Bool)

(assert (=> d!1392606 (= c!771408 (and ((_ is Cons!50646) (toList!4328 lt!1697008)) (= (_1!28831 (h!56499 (toList!4328 lt!1697008))) key!3287)))))

(assert (=> d!1392606 (= (getValueByKey!1092 (toList!4328 lt!1697008) key!3287) e!2816206)))

(declare-fun b!4520210 () Bool)

(assert (=> b!4520210 (= e!2816207 None!11111)))

(declare-fun b!4520207 () Bool)

(assert (=> b!4520207 (= e!2816206 (Some!11111 (_2!28831 (h!56499 (toList!4328 lt!1697008)))))))

(assert (= (and d!1392606 c!771408) b!4520207))

(assert (= (and d!1392606 (not c!771408)) b!4520208))

(assert (= (and b!4520208 c!771409) b!4520209))

(assert (= (and b!4520208 (not c!771409)) b!4520210))

(declare-fun m!5268371 () Bool)

(assert (=> b!4520209 m!5268371))

(assert (=> b!4519898 d!1392606))

(declare-fun d!1392608 () Bool)

(assert (=> d!1392608 (contains!13375 (getKeysList!465 (toList!4328 lt!1697008)) key!3287)))

(declare-fun lt!1697450 () Unit!95040)

(declare-fun choose!29528 (List!50770 K!12040) Unit!95040)

(assert (=> d!1392608 (= lt!1697450 (choose!29528 (toList!4328 lt!1697008) key!3287))))

(assert (=> d!1392608 (invariantList!1017 (toList!4328 lt!1697008))))

(assert (=> d!1392608 (= (lemmaInListThenGetKeysListContains!461 (toList!4328 lt!1697008) key!3287) lt!1697450)))

(declare-fun bs!855710 () Bool)

(assert (= bs!855710 d!1392608))

(assert (=> bs!855710 m!5267731))

(assert (=> bs!855710 m!5267731))

(declare-fun m!5268373 () Bool)

(assert (=> bs!855710 m!5268373))

(declare-fun m!5268375 () Bool)

(assert (=> bs!855710 m!5268375))

(assert (=> bs!855710 m!5268357))

(assert (=> b!4519898 d!1392608))

(declare-fun d!1392610 () Bool)

(declare-fun lt!1697455 () Bool)

(assert (=> d!1392610 (= lt!1697455 (select (content!8357 e!2816125) key!3287))))

(declare-fun e!2816212 () Bool)

(assert (=> d!1392610 (= lt!1697455 e!2816212)))

(declare-fun res!1881247 () Bool)

(assert (=> d!1392610 (=> (not res!1881247) (not e!2816212))))

(assert (=> d!1392610 (= res!1881247 ((_ is Cons!50649) e!2816125))))

(assert (=> d!1392610 (= (contains!13375 e!2816125 key!3287) lt!1697455)))

(declare-fun b!4520215 () Bool)

(declare-fun e!2816213 () Bool)

(assert (=> b!4520215 (= e!2816212 e!2816213)))

(declare-fun res!1881248 () Bool)

(assert (=> b!4520215 (=> res!1881248 e!2816213)))

(assert (=> b!4520215 (= res!1881248 (= (h!56504 e!2816125) key!3287))))

(declare-fun b!4520216 () Bool)

(assert (=> b!4520216 (= e!2816213 (contains!13375 (t!357735 e!2816125) key!3287))))

(assert (= (and d!1392610 res!1881247) b!4520215))

(assert (= (and b!4520215 (not res!1881248)) b!4520216))

(declare-fun m!5268377 () Bool)

(assert (=> d!1392610 m!5268377))

(declare-fun m!5268379 () Bool)

(assert (=> d!1392610 m!5268379))

(declare-fun m!5268381 () Bool)

(assert (=> b!4520216 m!5268381))

(assert (=> bm!314924 d!1392610))

(declare-fun d!1392612 () Bool)

(declare-fun c!771412 () Bool)

(assert (=> d!1392612 (= c!771412 ((_ is Nil!50646) (toList!4328 lt!1697016)))))

(declare-fun e!2816216 () (InoxSet tuple2!51074))

(assert (=> d!1392612 (= (content!8356 (toList!4328 lt!1697016)) e!2816216)))

(declare-fun b!4520221 () Bool)

(assert (=> b!4520221 (= e!2816216 ((as const (Array tuple2!51074 Bool)) false))))

(declare-fun b!4520222 () Bool)

(assert (=> b!4520222 (= e!2816216 ((_ map or) (store ((as const (Array tuple2!51074 Bool)) false) (h!56499 (toList!4328 lt!1697016)) true) (content!8356 (t!357732 (toList!4328 lt!1697016)))))))

(assert (= (and d!1392612 c!771412) b!4520221))

(assert (= (and d!1392612 (not c!771412)) b!4520222))

(declare-fun m!5268383 () Bool)

(assert (=> b!4520222 m!5268383))

(declare-fun m!5268385 () Bool)

(assert (=> b!4520222 m!5268385))

(assert (=> d!1392572 d!1392612))

(declare-fun d!1392614 () Bool)

(declare-fun c!771413 () Bool)

(assert (=> d!1392614 (= c!771413 ((_ is Nil!50646) (toList!4328 lt!1697014)))))

(declare-fun e!2816217 () (InoxSet tuple2!51074))

(assert (=> d!1392614 (= (content!8356 (toList!4328 lt!1697014)) e!2816217)))

(declare-fun b!4520223 () Bool)

(assert (=> b!4520223 (= e!2816217 ((as const (Array tuple2!51074 Bool)) false))))

(declare-fun b!4520224 () Bool)

(assert (=> b!4520224 (= e!2816217 ((_ map or) (store ((as const (Array tuple2!51074 Bool)) false) (h!56499 (toList!4328 lt!1697014)) true) (content!8356 (t!357732 (toList!4328 lt!1697014)))))))

(assert (= (and d!1392614 c!771413) b!4520223))

(assert (= (and d!1392614 (not c!771413)) b!4520224))

(declare-fun m!5268387 () Bool)

(assert (=> b!4520224 m!5268387))

(declare-fun m!5268389 () Bool)

(assert (=> b!4520224 m!5268389))

(assert (=> d!1392572 d!1392614))

(declare-fun d!1392616 () Bool)

(declare-fun res!1881253 () Bool)

(declare-fun e!2816222 () Bool)

(assert (=> d!1392616 (=> res!1881253 e!2816222)))

(assert (=> d!1392616 (= res!1881253 ((_ is Nil!50646) (ite c!771377 (toList!4328 lt!1697024) (toList!4328 lt!1697335))))))

(assert (=> d!1392616 (= (forall!10265 (ite c!771377 (toList!4328 lt!1697024) (toList!4328 lt!1697335)) (ite c!771377 lambda!172430 lambda!172432)) e!2816222)))

(declare-fun b!4520229 () Bool)

(declare-fun e!2816223 () Bool)

(assert (=> b!4520229 (= e!2816222 e!2816223)))

(declare-fun res!1881254 () Bool)

(assert (=> b!4520229 (=> (not res!1881254) (not e!2816223))))

(declare-fun dynLambda!21164 (Int tuple2!51074) Bool)

(assert (=> b!4520229 (= res!1881254 (dynLambda!21164 (ite c!771377 lambda!172430 lambda!172432) (h!56499 (ite c!771377 (toList!4328 lt!1697024) (toList!4328 lt!1697335)))))))

(declare-fun b!4520230 () Bool)

(assert (=> b!4520230 (= e!2816223 (forall!10265 (t!357732 (ite c!771377 (toList!4328 lt!1697024) (toList!4328 lt!1697335))) (ite c!771377 lambda!172430 lambda!172432)))))

(assert (= (and d!1392616 (not res!1881253)) b!4520229))

(assert (= (and b!4520229 res!1881254) b!4520230))

(declare-fun b_lambda!154957 () Bool)

(assert (=> (not b_lambda!154957) (not b!4520229)))

(declare-fun m!5268397 () Bool)

(assert (=> b!4520229 m!5268397))

(declare-fun m!5268399 () Bool)

(assert (=> b!4520230 m!5268399))

(assert (=> bm!314922 d!1392616))

(declare-fun d!1392622 () Bool)

(declare-fun noDuplicatedKeys!262 (List!50770) Bool)

(assert (=> d!1392622 (= (invariantList!1017 (toList!4328 lt!1697417)) (noDuplicatedKeys!262 (toList!4328 lt!1697417)))))

(declare-fun bs!855720 () Bool)

(assert (= bs!855720 d!1392622))

(declare-fun m!5268401 () Bool)

(assert (=> bs!855720 m!5268401))

(assert (=> b!4520156 d!1392622))

(declare-fun d!1392624 () Bool)

(assert (=> d!1392624 (= (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287)) (not (isEmpty!28670 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287))))))

(declare-fun bs!855721 () Bool)

(assert (= bs!855721 d!1392624))

(assert (=> bs!855721 m!5268173))

(declare-fun m!5268403 () Bool)

(assert (=> bs!855721 m!5268403))

(assert (=> b!4520095 d!1392624))

(declare-fun b!4520233 () Bool)

(declare-fun e!2816225 () Option!11112)

(assert (=> b!4520233 (= e!2816225 (getValueByKey!1092 (t!357732 (toList!4328 lt!1697020)) key!3287))))

(declare-fun b!4520232 () Bool)

(declare-fun e!2816224 () Option!11112)

(assert (=> b!4520232 (= e!2816224 e!2816225)))

(declare-fun c!771415 () Bool)

(assert (=> b!4520232 (= c!771415 (and ((_ is Cons!50646) (toList!4328 lt!1697020)) (not (= (_1!28831 (h!56499 (toList!4328 lt!1697020))) key!3287))))))

(declare-fun d!1392626 () Bool)

(declare-fun c!771414 () Bool)

(assert (=> d!1392626 (= c!771414 (and ((_ is Cons!50646) (toList!4328 lt!1697020)) (= (_1!28831 (h!56499 (toList!4328 lt!1697020))) key!3287)))))

(assert (=> d!1392626 (= (getValueByKey!1092 (toList!4328 lt!1697020) key!3287) e!2816224)))

(declare-fun b!4520234 () Bool)

(assert (=> b!4520234 (= e!2816225 None!11111)))

(declare-fun b!4520231 () Bool)

(assert (=> b!4520231 (= e!2816224 (Some!11111 (_2!28831 (h!56499 (toList!4328 lt!1697020)))))))

(assert (= (and d!1392626 c!771414) b!4520231))

(assert (= (and d!1392626 (not c!771414)) b!4520232))

(assert (= (and b!4520232 c!771415) b!4520233))

(assert (= (and b!4520232 (not c!771415)) b!4520234))

(declare-fun m!5268405 () Bool)

(assert (=> b!4520233 m!5268405))

(assert (=> b!4520095 d!1392626))

(declare-fun d!1392628 () Bool)

(assert (=> d!1392628 (= (invariantList!1017 (toList!4328 lt!1697339)) (noDuplicatedKeys!262 (toList!4328 lt!1697339)))))

(declare-fun bs!855722 () Bool)

(assert (= bs!855722 d!1392628))

(declare-fun m!5268407 () Bool)

(assert (=> bs!855722 m!5268407))

(assert (=> b!4520062 d!1392628))

(declare-fun d!1392630 () Bool)

(declare-fun lt!1697457 () Bool)

(assert (=> d!1392630 (= lt!1697457 (select (content!8359 (toList!4327 lt!1697175)) lt!1697006))))

(declare-fun e!2816226 () Bool)

(assert (=> d!1392630 (= lt!1697457 e!2816226)))

(declare-fun res!1881255 () Bool)

(assert (=> d!1392630 (=> (not res!1881255) (not e!2816226))))

(assert (=> d!1392630 (= res!1881255 ((_ is Cons!50647) (toList!4327 lt!1697175)))))

(assert (=> d!1392630 (= (contains!13373 (toList!4327 lt!1697175) lt!1697006) lt!1697457)))

(declare-fun b!4520235 () Bool)

(declare-fun e!2816227 () Bool)

(assert (=> b!4520235 (= e!2816226 e!2816227)))

(declare-fun res!1881256 () Bool)

(assert (=> b!4520235 (=> res!1881256 e!2816227)))

(assert (=> b!4520235 (= res!1881256 (= (h!56500 (toList!4327 lt!1697175)) lt!1697006))))

(declare-fun b!4520236 () Bool)

(assert (=> b!4520236 (= e!2816227 (contains!13373 (t!357733 (toList!4327 lt!1697175)) lt!1697006))))

(assert (= (and d!1392630 res!1881255) b!4520235))

(assert (= (and b!4520235 (not res!1881256)) b!4520236))

(declare-fun m!5268409 () Bool)

(assert (=> d!1392630 m!5268409))

(declare-fun m!5268411 () Bool)

(assert (=> d!1392630 m!5268411))

(declare-fun m!5268413 () Bool)

(assert (=> b!4520236 m!5268413))

(assert (=> b!4519988 d!1392630))

(assert (=> d!1392560 d!1392558))

(declare-fun d!1392632 () Bool)

(assert (=> d!1392632 (containsKeyBiggerList!140 (toList!4327 lt!1697021) key!3287)))

(assert (=> d!1392632 true))

(declare-fun _$33!667 () Unit!95040)

(assert (=> d!1392632 (= (choose!29523 lt!1697021 key!3287 hashF!1107) _$33!667)))

(declare-fun bs!855723 () Bool)

(assert (= bs!855723 d!1392632))

(assert (=> bs!855723 m!5267581))

(assert (=> d!1392560 d!1392632))

(declare-fun d!1392634 () Bool)

(declare-fun res!1881257 () Bool)

(declare-fun e!2816232 () Bool)

(assert (=> d!1392634 (=> res!1881257 e!2816232)))

(assert (=> d!1392634 (= res!1881257 ((_ is Nil!50647) (toList!4327 lt!1697021)))))

(assert (=> d!1392634 (= (forall!10263 (toList!4327 lt!1697021) lambda!172448) e!2816232)))

(declare-fun b!4520245 () Bool)

(declare-fun e!2816233 () Bool)

(assert (=> b!4520245 (= e!2816232 e!2816233)))

(declare-fun res!1881258 () Bool)

(assert (=> b!4520245 (=> (not res!1881258) (not e!2816233))))

(assert (=> b!4520245 (= res!1881258 (dynLambda!21163 lambda!172448 (h!56500 (toList!4327 lt!1697021))))))

(declare-fun b!4520246 () Bool)

(assert (=> b!4520246 (= e!2816233 (forall!10263 (t!357733 (toList!4327 lt!1697021)) lambda!172448))))

(assert (= (and d!1392634 (not res!1881257)) b!4520245))

(assert (= (and b!4520245 res!1881258) b!4520246))

(declare-fun b_lambda!154959 () Bool)

(assert (=> (not b_lambda!154959) (not b!4520245)))

(declare-fun m!5268415 () Bool)

(assert (=> b!4520245 m!5268415))

(declare-fun m!5268417 () Bool)

(assert (=> b!4520246 m!5268417))

(assert (=> d!1392560 d!1392634))

(declare-fun d!1392636 () Bool)

(assert (=> d!1392636 (= (get!16588 (getValueByKey!1093 (toList!4327 lt!1697021) hash!344)) (v!44712 (getValueByKey!1093 (toList!4327 lt!1697021) hash!344)))))

(assert (=> d!1392472 d!1392636))

(declare-fun b!4520264 () Bool)

(declare-fun e!2816242 () Option!11113)

(declare-fun e!2816243 () Option!11113)

(assert (=> b!4520264 (= e!2816242 e!2816243)))

(declare-fun c!771429 () Bool)

(assert (=> b!4520264 (= c!771429 (and ((_ is Cons!50647) (toList!4327 lt!1697021)) (not (= (_1!28832 (h!56500 (toList!4327 lt!1697021))) hash!344))))))

(declare-fun b!4520265 () Bool)

(assert (=> b!4520265 (= e!2816243 (getValueByKey!1093 (t!357733 (toList!4327 lt!1697021)) hash!344))))

(declare-fun b!4520266 () Bool)

(assert (=> b!4520266 (= e!2816243 None!11112)))

(declare-fun b!4520263 () Bool)

(assert (=> b!4520263 (= e!2816242 (Some!11112 (_2!28832 (h!56500 (toList!4327 lt!1697021)))))))

(declare-fun d!1392638 () Bool)

(declare-fun c!771428 () Bool)

(assert (=> d!1392638 (= c!771428 (and ((_ is Cons!50647) (toList!4327 lt!1697021)) (= (_1!28832 (h!56500 (toList!4327 lt!1697021))) hash!344)))))

(assert (=> d!1392638 (= (getValueByKey!1093 (toList!4327 lt!1697021) hash!344) e!2816242)))

(assert (= (and d!1392638 c!771428) b!4520263))

(assert (= (and d!1392638 (not c!771428)) b!4520264))

(assert (= (and b!4520264 c!771429) b!4520265))

(assert (= (and b!4520264 (not c!771429)) b!4520266))

(declare-fun m!5268421 () Bool)

(assert (=> b!4520265 m!5268421))

(assert (=> d!1392472 d!1392638))

(declare-fun d!1392642 () Bool)

(declare-fun res!1881260 () Bool)

(declare-fun e!2816244 () Bool)

(assert (=> d!1392642 (=> res!1881260 e!2816244)))

(declare-fun e!2816245 () Bool)

(assert (=> d!1392642 (= res!1881260 e!2816245)))

(declare-fun res!1881259 () Bool)

(assert (=> d!1392642 (=> (not res!1881259) (not e!2816245))))

(assert (=> d!1392642 (= res!1881259 ((_ is Cons!50647) (t!357733 (t!357733 (toList!4327 lm!1477)))))))

(assert (=> d!1392642 (= (containsKeyBiggerList!140 (t!357733 (t!357733 (toList!4327 lm!1477))) key!3287) e!2816244)))

(declare-fun b!4520267 () Bool)

(assert (=> b!4520267 (= e!2816245 (containsKey!1780 (_2!28832 (h!56500 (t!357733 (t!357733 (toList!4327 lm!1477))))) key!3287))))

(declare-fun b!4520268 () Bool)

(declare-fun e!2816246 () Bool)

(assert (=> b!4520268 (= e!2816244 e!2816246)))

(declare-fun res!1881261 () Bool)

(assert (=> b!4520268 (=> (not res!1881261) (not e!2816246))))

(assert (=> b!4520268 (= res!1881261 ((_ is Cons!50647) (t!357733 (t!357733 (toList!4327 lm!1477)))))))

(declare-fun b!4520269 () Bool)

(assert (=> b!4520269 (= e!2816246 (containsKeyBiggerList!140 (t!357733 (t!357733 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(assert (= (and d!1392642 res!1881259) b!4520267))

(assert (= (and d!1392642 (not res!1881260)) b!4520268))

(assert (= (and b!4520268 res!1881261) b!4520269))

(declare-fun m!5268423 () Bool)

(assert (=> b!4520267 m!5268423))

(declare-fun m!5268425 () Bool)

(assert (=> b!4520269 m!5268425))

(assert (=> b!4520142 d!1392642))

(declare-fun d!1392644 () Bool)

(assert (=> d!1392644 (= (head!9414 (toList!4327 lm!1477)) (h!56500 (toList!4327 lm!1477)))))

(assert (=> d!1392464 d!1392644))

(declare-fun d!1392646 () Bool)

(declare-fun c!771434 () Bool)

(assert (=> d!1392646 (= c!771434 ((_ is Nil!50647) (t!357733 (toList!4327 lm!1477))))))

(declare-fun e!2816252 () (InoxSet tuple2!51076))

(assert (=> d!1392646 (= (content!8359 (t!357733 (toList!4327 lm!1477))) e!2816252)))

(declare-fun b!4520281 () Bool)

(assert (=> b!4520281 (= e!2816252 ((as const (Array tuple2!51076 Bool)) false))))

(declare-fun b!4520282 () Bool)

(assert (=> b!4520282 (= e!2816252 ((_ map or) (store ((as const (Array tuple2!51076 Bool)) false) (h!56500 (t!357733 (toList!4327 lm!1477))) true) (content!8359 (t!357733 (t!357733 (toList!4327 lm!1477))))))))

(assert (= (and d!1392646 c!771434) b!4520281))

(assert (= (and d!1392646 (not c!771434)) b!4520282))

(declare-fun m!5268435 () Bool)

(assert (=> b!4520282 m!5268435))

(declare-fun m!5268437 () Bool)

(assert (=> b!4520282 m!5268437))

(assert (=> d!1392578 d!1392646))

(declare-fun d!1392652 () Bool)

(declare-fun c!771435 () Bool)

(assert (=> d!1392652 (= c!771435 ((_ is Nil!50646) (toList!4328 lt!1697024)))))

(declare-fun e!2816253 () (InoxSet tuple2!51074))

(assert (=> d!1392652 (= (content!8356 (toList!4328 lt!1697024)) e!2816253)))

(declare-fun b!4520283 () Bool)

(assert (=> b!4520283 (= e!2816253 ((as const (Array tuple2!51074 Bool)) false))))

(declare-fun b!4520284 () Bool)

(assert (=> b!4520284 (= e!2816253 ((_ map or) (store ((as const (Array tuple2!51074 Bool)) false) (h!56499 (toList!4328 lt!1697024)) true) (content!8356 (t!357732 (toList!4328 lt!1697024)))))))

(assert (= (and d!1392652 c!771435) b!4520283))

(assert (= (and d!1392652 (not c!771435)) b!4520284))

(declare-fun m!5268439 () Bool)

(assert (=> b!4520284 m!5268439))

(declare-fun m!5268441 () Bool)

(assert (=> b!4520284 m!5268441))

(assert (=> d!1392448 d!1392652))

(declare-fun d!1392654 () Bool)

(declare-fun c!771436 () Bool)

(assert (=> d!1392654 (= c!771436 ((_ is Nil!50646) (toList!4328 lt!1697017)))))

(declare-fun e!2816254 () (InoxSet tuple2!51074))

(assert (=> d!1392654 (= (content!8356 (toList!4328 lt!1697017)) e!2816254)))

(declare-fun b!4520285 () Bool)

(assert (=> b!4520285 (= e!2816254 ((as const (Array tuple2!51074 Bool)) false))))

(declare-fun b!4520286 () Bool)

(assert (=> b!4520286 (= e!2816254 ((_ map or) (store ((as const (Array tuple2!51074 Bool)) false) (h!56499 (toList!4328 lt!1697017)) true) (content!8356 (t!357732 (toList!4328 lt!1697017)))))))

(assert (= (and d!1392654 c!771436) b!4520285))

(assert (= (and d!1392654 (not c!771436)) b!4520286))

(declare-fun m!5268443 () Bool)

(assert (=> b!4520286 m!5268443))

(declare-fun m!5268445 () Bool)

(assert (=> b!4520286 m!5268445))

(assert (=> d!1392448 d!1392654))

(declare-fun b!4520341 () Bool)

(assert (=> b!4520341 true))

(declare-fun bs!855726 () Bool)

(declare-fun b!4520344 () Bool)

(assert (= bs!855726 (and b!4520344 b!4520341)))

(declare-fun lambda!172476 () Int)

(declare-fun lambda!172475 () Int)

(assert (=> bs!855726 (= (= (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172476 lambda!172475))))

(assert (=> b!4520344 true))

(declare-fun bs!855727 () Bool)

(declare-fun b!4520339 () Bool)

(assert (= bs!855727 (and b!4520339 b!4520341)))

(declare-fun lambda!172477 () Int)

(assert (=> bs!855727 (= (= (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172477 lambda!172475))))

(declare-fun bs!855728 () Bool)

(assert (= bs!855728 (and b!4520339 b!4520344)))

(assert (=> bs!855728 (= (= (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172477 lambda!172476))))

(assert (=> b!4520339 true))

(declare-fun b!4520338 () Bool)

(declare-fun res!1881282 () Bool)

(declare-fun e!2816283 () Bool)

(assert (=> b!4520338 (=> (not res!1881282) (not e!2816283))))

(declare-fun lt!1697487 () List!50773)

(declare-fun length!352 (List!50773) Int)

(declare-fun length!353 (List!50770) Int)

(assert (=> b!4520338 (= res!1881282 (= (length!352 lt!1697487) (length!353 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))))

(declare-fun res!1881283 () Bool)

(assert (=> b!4520339 (=> (not res!1881283) (not e!2816283))))

(declare-fun forall!10267 (List!50773 Int) Bool)

(assert (=> b!4520339 (= res!1881283 (forall!10267 lt!1697487 lambda!172477))))

(declare-fun b!4520340 () Bool)

(declare-fun e!2816280 () Unit!95040)

(declare-fun Unit!95105 () Unit!95040)

(assert (=> b!4520340 (= e!2816280 Unit!95105)))

(assert (=> b!4520341 false))

(declare-fun lt!1697485 () Unit!95040)

(declare-fun forallContained!2518 (List!50773 Int K!12040) Unit!95040)

(assert (=> b!4520341 (= lt!1697485 (forallContained!2518 (getKeysList!465 (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) lambda!172475 (_1!28831 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))))

(declare-fun Unit!95106 () Unit!95040)

(assert (=> b!4520341 (= e!2816280 Unit!95106)))

(declare-fun lambda!172478 () Int)

(declare-fun b!4520343 () Bool)

(declare-fun map!11139 (List!50770 Int) List!50773)

(assert (=> b!4520343 (= e!2816283 (= (content!8357 lt!1697487) (content!8357 (map!11139 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) lambda!172478))))))

(declare-fun d!1392656 () Bool)

(assert (=> d!1392656 e!2816283))

(declare-fun res!1881284 () Bool)

(assert (=> d!1392656 (=> (not res!1881284) (not e!2816283))))

(declare-fun noDuplicate!748 (List!50773) Bool)

(assert (=> d!1392656 (= res!1881284 (noDuplicate!748 lt!1697487))))

(declare-fun e!2816281 () List!50773)

(assert (=> d!1392656 (= lt!1697487 e!2816281)))

(declare-fun c!771456 () Bool)

(assert (=> d!1392656 (= c!771456 ((_ is Cons!50646) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))

(assert (=> d!1392656 (invariantList!1017 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))

(assert (=> d!1392656 (= (getKeysList!465 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) lt!1697487)))

(declare-fun b!4520342 () Bool)

(assert (=> b!4520342 false))

(declare-fun e!2816282 () Unit!95040)

(declare-fun Unit!95107 () Unit!95040)

(assert (=> b!4520342 (= e!2816282 Unit!95107)))

(assert (=> b!4520344 (= e!2816281 (Cons!50649 (_1!28831 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (getKeysList!465 (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))))

(declare-fun c!771454 () Bool)

(assert (=> b!4520344 (= c!771454 (containsKey!1783 (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (_1!28831 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))))

(declare-fun lt!1697488 () Unit!95040)

(assert (=> b!4520344 (= lt!1697488 e!2816282)))

(declare-fun c!771455 () Bool)

(assert (=> b!4520344 (= c!771455 (contains!13375 (getKeysList!465 (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (_1!28831 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))))

(declare-fun lt!1697482 () Unit!95040)

(assert (=> b!4520344 (= lt!1697482 e!2816280)))

(declare-fun lt!1697483 () List!50773)

(assert (=> b!4520344 (= lt!1697483 (getKeysList!465 (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))))

(declare-fun lt!1697484 () Unit!95040)

(declare-fun lemmaForallContainsAddHeadPreserves!168 (List!50770 List!50773 tuple2!51074) Unit!95040)

(assert (=> b!4520344 (= lt!1697484 (lemmaForallContainsAddHeadPreserves!168 (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) lt!1697483 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))))

(assert (=> b!4520344 (forall!10267 lt!1697483 lambda!172476)))

(declare-fun lt!1697486 () Unit!95040)

(assert (=> b!4520344 (= lt!1697486 lt!1697484)))

(declare-fun b!4520345 () Bool)

(declare-fun Unit!95108 () Unit!95040)

(assert (=> b!4520345 (= e!2816282 Unit!95108)))

(declare-fun b!4520346 () Bool)

(assert (=> b!4520346 (= e!2816281 Nil!50649)))

(assert (= (and d!1392656 c!771456) b!4520344))

(assert (= (and d!1392656 (not c!771456)) b!4520346))

(assert (= (and b!4520344 c!771454) b!4520342))

(assert (= (and b!4520344 (not c!771454)) b!4520345))

(assert (= (and b!4520344 c!771455) b!4520341))

(assert (= (and b!4520344 (not c!771455)) b!4520340))

(assert (= (and d!1392656 res!1881284) b!4520338))

(assert (= (and b!4520338 res!1881282) b!4520339))

(assert (= (and b!4520339 res!1881283) b!4520343))

(declare-fun m!5268489 () Bool)

(assert (=> b!4520343 m!5268489))

(declare-fun m!5268491 () Bool)

(assert (=> b!4520343 m!5268491))

(assert (=> b!4520343 m!5268491))

(declare-fun m!5268493 () Bool)

(assert (=> b!4520343 m!5268493))

(declare-fun m!5268495 () Bool)

(assert (=> b!4520338 m!5268495))

(declare-fun m!5268499 () Bool)

(assert (=> b!4520338 m!5268499))

(declare-fun m!5268501 () Bool)

(assert (=> b!4520344 m!5268501))

(declare-fun m!5268503 () Bool)

(assert (=> b!4520344 m!5268503))

(declare-fun m!5268505 () Bool)

(assert (=> b!4520344 m!5268505))

(declare-fun m!5268507 () Bool)

(assert (=> b!4520344 m!5268507))

(assert (=> b!4520344 m!5268505))

(declare-fun m!5268509 () Bool)

(assert (=> b!4520344 m!5268509))

(assert (=> b!4520341 m!5268505))

(assert (=> b!4520341 m!5268505))

(declare-fun m!5268511 () Bool)

(assert (=> b!4520341 m!5268511))

(declare-fun m!5268513 () Bool)

(assert (=> b!4520339 m!5268513))

(declare-fun m!5268515 () Bool)

(assert (=> d!1392656 m!5268515))

(declare-fun m!5268517 () Bool)

(assert (=> d!1392656 m!5268517))

(assert (=> b!4520081 d!1392656))

(declare-fun d!1392670 () Bool)

(declare-fun isEmpty!28673 (Option!11113) Bool)

(assert (=> d!1392670 (= (isDefined!8400 (getValueByKey!1093 (toList!4327 lm!1477) lt!1697009)) (not (isEmpty!28673 (getValueByKey!1093 (toList!4327 lm!1477) lt!1697009))))))

(declare-fun bs!855729 () Bool)

(assert (= bs!855729 d!1392670))

(assert (=> bs!855729 m!5268231))

(declare-fun m!5268521 () Bool)

(assert (=> bs!855729 m!5268521))

(assert (=> b!4520111 d!1392670))

(declare-fun b!4520369 () Bool)

(declare-fun e!2816295 () Option!11113)

(declare-fun e!2816296 () Option!11113)

(assert (=> b!4520369 (= e!2816295 e!2816296)))

(declare-fun c!771465 () Bool)

(assert (=> b!4520369 (= c!771465 (and ((_ is Cons!50647) (toList!4327 lm!1477)) (not (= (_1!28832 (h!56500 (toList!4327 lm!1477))) lt!1697009))))))

(declare-fun b!4520370 () Bool)

(assert (=> b!4520370 (= e!2816296 (getValueByKey!1093 (t!357733 (toList!4327 lm!1477)) lt!1697009))))

(declare-fun b!4520371 () Bool)

(assert (=> b!4520371 (= e!2816296 None!11112)))

(declare-fun b!4520368 () Bool)

(assert (=> b!4520368 (= e!2816295 (Some!11112 (_2!28832 (h!56500 (toList!4327 lm!1477)))))))

(declare-fun d!1392676 () Bool)

(declare-fun c!771464 () Bool)

(assert (=> d!1392676 (= c!771464 (and ((_ is Cons!50647) (toList!4327 lm!1477)) (= (_1!28832 (h!56500 (toList!4327 lm!1477))) lt!1697009)))))

(assert (=> d!1392676 (= (getValueByKey!1093 (toList!4327 lm!1477) lt!1697009) e!2816295)))

(assert (= (and d!1392676 c!771464) b!4520368))

(assert (= (and d!1392676 (not c!771464)) b!4520369))

(assert (= (and b!4520369 c!771465) b!4520370))

(assert (= (and b!4520369 (not c!771465)) b!4520371))

(declare-fun m!5268529 () Bool)

(assert (=> b!4520370 m!5268529))

(assert (=> b!4520111 d!1392676))

(declare-fun d!1392680 () Bool)

(declare-fun lt!1697494 () Bool)

(assert (=> d!1392680 (= lt!1697494 (select (content!8357 (keys!17594 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) key!3287))))

(declare-fun e!2816299 () Bool)

(assert (=> d!1392680 (= lt!1697494 e!2816299)))

(declare-fun res!1881290 () Bool)

(assert (=> d!1392680 (=> (not res!1881290) (not e!2816299))))

(assert (=> d!1392680 (= res!1881290 ((_ is Cons!50649) (keys!17594 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))

(assert (=> d!1392680 (= (contains!13375 (keys!17594 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287) lt!1697494)))

(declare-fun b!4520376 () Bool)

(declare-fun e!2816300 () Bool)

(assert (=> b!4520376 (= e!2816299 e!2816300)))

(declare-fun res!1881291 () Bool)

(assert (=> b!4520376 (=> res!1881291 e!2816300)))

(assert (=> b!4520376 (= res!1881291 (= (h!56504 (keys!17594 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) key!3287))))

(declare-fun b!4520377 () Bool)

(assert (=> b!4520377 (= e!2816300 (contains!13375 (t!357735 (keys!17594 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) key!3287))))

(assert (= (and d!1392680 res!1881290) b!4520376))

(assert (= (and b!4520376 (not res!1881291)) b!4520377))

(assert (=> d!1392680 m!5268149))

(declare-fun m!5268531 () Bool)

(assert (=> d!1392680 m!5268531))

(declare-fun m!5268535 () Bool)

(assert (=> d!1392680 m!5268535))

(declare-fun m!5268537 () Bool)

(assert (=> b!4520377 m!5268537))

(assert (=> b!4520085 d!1392680))

(declare-fun bs!855732 () Bool)

(declare-fun b!4520413 () Bool)

(assert (= bs!855732 (and b!4520413 b!4520341)))

(declare-fun lambda!172483 () Int)

(assert (=> bs!855732 (= (= (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172483 lambda!172475))))

(declare-fun bs!855733 () Bool)

(assert (= bs!855733 (and b!4520413 b!4520344)))

(assert (=> bs!855733 (= (= (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172483 lambda!172476))))

(declare-fun bs!855734 () Bool)

(assert (= bs!855734 (and b!4520413 b!4520339)))

(assert (=> bs!855734 (= lambda!172483 lambda!172477)))

(assert (=> b!4520413 true))

(declare-fun bs!855735 () Bool)

(declare-fun b!4520414 () Bool)

(assert (= bs!855735 (and b!4520414 b!4520343)))

(declare-fun lambda!172484 () Int)

(assert (=> bs!855735 (= lambda!172484 lambda!172478)))

(declare-fun d!1392684 () Bool)

(declare-fun e!2816321 () Bool)

(assert (=> d!1392684 e!2816321))

(declare-fun res!1881312 () Bool)

(assert (=> d!1392684 (=> (not res!1881312) (not e!2816321))))

(declare-fun lt!1697499 () List!50773)

(assert (=> d!1392684 (= res!1881312 (noDuplicate!748 lt!1697499))))

(assert (=> d!1392684 (= lt!1697499 (getKeysList!465 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))

(assert (=> d!1392684 (= (keys!17594 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) lt!1697499)))

(declare-fun b!4520412 () Bool)

(declare-fun res!1881310 () Bool)

(assert (=> b!4520412 (=> (not res!1881310) (not e!2816321))))

(assert (=> b!4520412 (= res!1881310 (= (length!352 lt!1697499) (length!353 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))))

(declare-fun res!1881311 () Bool)

(assert (=> b!4520413 (=> (not res!1881311) (not e!2816321))))

(assert (=> b!4520413 (= res!1881311 (forall!10267 lt!1697499 lambda!172483))))

(assert (=> b!4520414 (= e!2816321 (= (content!8357 lt!1697499) (content!8357 (map!11139 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) lambda!172484))))))

(assert (= (and d!1392684 res!1881312) b!4520412))

(assert (= (and b!4520412 res!1881310) b!4520413))

(assert (= (and b!4520413 res!1881311) b!4520414))

(declare-fun m!5268579 () Bool)

(assert (=> d!1392684 m!5268579))

(assert (=> d!1392684 m!5268157))

(declare-fun m!5268581 () Bool)

(assert (=> b!4520412 m!5268581))

(assert (=> b!4520412 m!5268499))

(declare-fun m!5268583 () Bool)

(assert (=> b!4520413 m!5268583))

(declare-fun m!5268585 () Bool)

(assert (=> b!4520414 m!5268585))

(declare-fun m!5268587 () Bool)

(assert (=> b!4520414 m!5268587))

(assert (=> b!4520414 m!5268587))

(declare-fun m!5268589 () Bool)

(assert (=> b!4520414 m!5268589))

(assert (=> b!4520085 d!1392684))

(declare-fun d!1392706 () Bool)

(assert (=> d!1392706 (= (isEmpty!28669 (toList!4327 lm!1477)) ((_ is Nil!50647) (toList!4327 lm!1477)))))

(assert (=> d!1392568 d!1392706))

(declare-fun d!1392708 () Bool)

(declare-fun res!1881318 () Bool)

(declare-fun e!2816327 () Bool)

(assert (=> d!1392708 (=> res!1881318 e!2816327)))

(assert (=> d!1392708 (= res!1881318 (and ((_ is Cons!50646) (t!357732 (_2!28832 lt!1697023))) (= (_1!28831 (h!56499 (t!357732 (_2!28832 lt!1697023)))) key!3287)))))

(assert (=> d!1392708 (= (containsKey!1780 (t!357732 (_2!28832 lt!1697023)) key!3287) e!2816327)))

(declare-fun b!4520424 () Bool)

(declare-fun e!2816328 () Bool)

(assert (=> b!4520424 (= e!2816327 e!2816328)))

(declare-fun res!1881319 () Bool)

(assert (=> b!4520424 (=> (not res!1881319) (not e!2816328))))

(assert (=> b!4520424 (= res!1881319 ((_ is Cons!50646) (t!357732 (_2!28832 lt!1697023))))))

(declare-fun b!4520425 () Bool)

(assert (=> b!4520425 (= e!2816328 (containsKey!1780 (t!357732 (t!357732 (_2!28832 lt!1697023))) key!3287))))

(assert (= (and d!1392708 (not res!1881318)) b!4520424))

(assert (= (and b!4520424 res!1881319) b!4520425))

(declare-fun m!5268591 () Bool)

(assert (=> b!4520425 m!5268591))

(assert (=> b!4520068 d!1392708))

(declare-fun d!1392710 () Bool)

(declare-fun e!2816330 () Bool)

(assert (=> d!1392710 e!2816330))

(declare-fun res!1881320 () Bool)

(assert (=> d!1392710 (=> res!1881320 e!2816330)))

(declare-fun lt!1697521 () Bool)

(assert (=> d!1392710 (= res!1881320 (not lt!1697521))))

(declare-fun lt!1697524 () Bool)

(assert (=> d!1392710 (= lt!1697521 lt!1697524)))

(declare-fun lt!1697523 () Unit!95040)

(declare-fun e!2816329 () Unit!95040)

(assert (=> d!1392710 (= lt!1697523 e!2816329)))

(declare-fun c!771477 () Bool)

(assert (=> d!1392710 (= c!771477 lt!1697524)))

(assert (=> d!1392710 (= lt!1697524 (containsKey!1784 (toList!4327 lt!1697175) (_1!28832 lt!1697006)))))

(assert (=> d!1392710 (= (contains!13371 lt!1697175 (_1!28832 lt!1697006)) lt!1697521)))

(declare-fun b!4520426 () Bool)

(declare-fun lt!1697522 () Unit!95040)

(assert (=> b!4520426 (= e!2816329 lt!1697522)))

(assert (=> b!4520426 (= lt!1697522 (lemmaContainsKeyImpliesGetValueByKeyDefined!997 (toList!4327 lt!1697175) (_1!28832 lt!1697006)))))

(assert (=> b!4520426 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697175) (_1!28832 lt!1697006)))))

(declare-fun b!4520427 () Bool)

(declare-fun Unit!95110 () Unit!95040)

(assert (=> b!4520427 (= e!2816329 Unit!95110)))

(declare-fun b!4520428 () Bool)

(assert (=> b!4520428 (= e!2816330 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697175) (_1!28832 lt!1697006))))))

(assert (= (and d!1392710 c!771477) b!4520426))

(assert (= (and d!1392710 (not c!771477)) b!4520427))

(assert (= (and d!1392710 (not res!1881320)) b!4520428))

(declare-fun m!5268593 () Bool)

(assert (=> d!1392710 m!5268593))

(declare-fun m!5268595 () Bool)

(assert (=> b!4520426 m!5268595))

(assert (=> b!4520426 m!5267907))

(assert (=> b!4520426 m!5267907))

(declare-fun m!5268597 () Bool)

(assert (=> b!4520426 m!5268597))

(assert (=> b!4520428 m!5267907))

(assert (=> b!4520428 m!5267907))

(assert (=> b!4520428 m!5268597))

(assert (=> d!1392466 d!1392710))

(declare-fun b!4520430 () Bool)

(declare-fun e!2816331 () Option!11113)

(declare-fun e!2816332 () Option!11113)

(assert (=> b!4520430 (= e!2816331 e!2816332)))

(declare-fun c!771479 () Bool)

(assert (=> b!4520430 (= c!771479 (and ((_ is Cons!50647) lt!1697177) (not (= (_1!28832 (h!56500 lt!1697177)) (_1!28832 lt!1697006)))))))

(declare-fun b!4520431 () Bool)

(assert (=> b!4520431 (= e!2816332 (getValueByKey!1093 (t!357733 lt!1697177) (_1!28832 lt!1697006)))))

(declare-fun b!4520432 () Bool)

(assert (=> b!4520432 (= e!2816332 None!11112)))

(declare-fun b!4520429 () Bool)

(assert (=> b!4520429 (= e!2816331 (Some!11112 (_2!28832 (h!56500 lt!1697177))))))

(declare-fun d!1392712 () Bool)

(declare-fun c!771478 () Bool)

(assert (=> d!1392712 (= c!771478 (and ((_ is Cons!50647) lt!1697177) (= (_1!28832 (h!56500 lt!1697177)) (_1!28832 lt!1697006))))))

(assert (=> d!1392712 (= (getValueByKey!1093 lt!1697177 (_1!28832 lt!1697006)) e!2816331)))

(assert (= (and d!1392712 c!771478) b!4520429))

(assert (= (and d!1392712 (not c!771478)) b!4520430))

(assert (= (and b!4520430 c!771479) b!4520431))

(assert (= (and b!4520430 (not c!771479)) b!4520432))

(declare-fun m!5268599 () Bool)

(assert (=> b!4520431 m!5268599))

(assert (=> d!1392466 d!1392712))

(declare-fun d!1392714 () Bool)

(assert (=> d!1392714 (= (getValueByKey!1093 lt!1697177 (_1!28832 lt!1697006)) (Some!11112 (_2!28832 lt!1697006)))))

(declare-fun lt!1697527 () Unit!95040)

(declare-fun choose!29531 (List!50771 (_ BitVec 64) List!50770) Unit!95040)

(assert (=> d!1392714 (= lt!1697527 (choose!29531 lt!1697177 (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))

(declare-fun e!2816335 () Bool)

(assert (=> d!1392714 e!2816335))

(declare-fun res!1881325 () Bool)

(assert (=> d!1392714 (=> (not res!1881325) (not e!2816335))))

(assert (=> d!1392714 (= res!1881325 (isStrictlySorted!431 lt!1697177))))

(assert (=> d!1392714 (= (lemmaContainsTupThenGetReturnValue!678 lt!1697177 (_1!28832 lt!1697006) (_2!28832 lt!1697006)) lt!1697527)))

(declare-fun b!4520437 () Bool)

(declare-fun res!1881326 () Bool)

(assert (=> b!4520437 (=> (not res!1881326) (not e!2816335))))

(assert (=> b!4520437 (= res!1881326 (containsKey!1784 lt!1697177 (_1!28832 lt!1697006)))))

(declare-fun b!4520438 () Bool)

(assert (=> b!4520438 (= e!2816335 (contains!13373 lt!1697177 (tuple2!51077 (_1!28832 lt!1697006) (_2!28832 lt!1697006))))))

(assert (= (and d!1392714 res!1881325) b!4520437))

(assert (= (and b!4520437 res!1881326) b!4520438))

(assert (=> d!1392714 m!5267901))

(declare-fun m!5268601 () Bool)

(assert (=> d!1392714 m!5268601))

(declare-fun m!5268603 () Bool)

(assert (=> d!1392714 m!5268603))

(declare-fun m!5268605 () Bool)

(assert (=> b!4520437 m!5268605))

(declare-fun m!5268607 () Bool)

(assert (=> b!4520438 m!5268607))

(assert (=> d!1392466 d!1392714))

(declare-fun b!4520486 () Bool)

(declare-fun res!1881347 () Bool)

(declare-fun e!2816370 () Bool)

(assert (=> b!4520486 (=> (not res!1881347) (not e!2816370))))

(declare-fun lt!1697534 () List!50771)

(assert (=> b!4520486 (= res!1881347 (containsKey!1784 lt!1697534 (_1!28832 lt!1697006)))))

(declare-fun b!4520487 () Bool)

(declare-fun e!2816367 () List!50771)

(declare-fun call!314956 () List!50771)

(assert (=> b!4520487 (= e!2816367 call!314956)))

(declare-fun b!4520488 () Bool)

(declare-fun e!2816371 () List!50771)

(assert (=> b!4520488 (= e!2816371 (insertStrictlySorted!408 (t!357733 (toList!4327 lt!1697021)) (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))

(declare-fun b!4520489 () Bool)

(declare-fun e!2816368 () List!50771)

(declare-fun call!314957 () List!50771)

(assert (=> b!4520489 (= e!2816368 call!314957)))

(declare-fun d!1392716 () Bool)

(assert (=> d!1392716 e!2816370))

(declare-fun res!1881346 () Bool)

(assert (=> d!1392716 (=> (not res!1881346) (not e!2816370))))

(assert (=> d!1392716 (= res!1881346 (isStrictlySorted!431 lt!1697534))))

(assert (=> d!1392716 (= lt!1697534 e!2816368)))

(declare-fun c!771494 () Bool)

(assert (=> d!1392716 (= c!771494 (and ((_ is Cons!50647) (toList!4327 lt!1697021)) (bvslt (_1!28832 (h!56500 (toList!4327 lt!1697021))) (_1!28832 lt!1697006))))))

(assert (=> d!1392716 (isStrictlySorted!431 (toList!4327 lt!1697021))))

(assert (=> d!1392716 (= (insertStrictlySorted!408 (toList!4327 lt!1697021) (_1!28832 lt!1697006) (_2!28832 lt!1697006)) lt!1697534)))

(declare-fun b!4520490 () Bool)

(declare-fun c!771496 () Bool)

(declare-fun c!771495 () Bool)

(assert (=> b!4520490 (= e!2816371 (ite c!771495 (t!357733 (toList!4327 lt!1697021)) (ite c!771496 (Cons!50647 (h!56500 (toList!4327 lt!1697021)) (t!357733 (toList!4327 lt!1697021))) Nil!50647)))))

(declare-fun b!4520491 () Bool)

(assert (=> b!4520491 (= c!771496 (and ((_ is Cons!50647) (toList!4327 lt!1697021)) (bvsgt (_1!28832 (h!56500 (toList!4327 lt!1697021))) (_1!28832 lt!1697006))))))

(declare-fun e!2816369 () List!50771)

(assert (=> b!4520491 (= e!2816367 e!2816369)))

(declare-fun bm!314950 () Bool)

(assert (=> bm!314950 (= call!314956 call!314957)))

(declare-fun bm!314951 () Bool)

(declare-fun call!314955 () List!50771)

(assert (=> bm!314951 (= call!314955 call!314956)))

(declare-fun b!4520492 () Bool)

(assert (=> b!4520492 (= e!2816368 e!2816367)))

(assert (=> b!4520492 (= c!771495 (and ((_ is Cons!50647) (toList!4327 lt!1697021)) (= (_1!28832 (h!56500 (toList!4327 lt!1697021))) (_1!28832 lt!1697006))))))

(declare-fun b!4520493 () Bool)

(assert (=> b!4520493 (= e!2816369 call!314955)))

(declare-fun b!4520494 () Bool)

(assert (=> b!4520494 (= e!2816370 (contains!13373 lt!1697534 (tuple2!51077 (_1!28832 lt!1697006) (_2!28832 lt!1697006))))))

(declare-fun bm!314952 () Bool)

(declare-fun $colon$colon!936 (List!50771 tuple2!51076) List!50771)

(assert (=> bm!314952 (= call!314957 ($colon$colon!936 e!2816371 (ite c!771494 (h!56500 (toList!4327 lt!1697021)) (tuple2!51077 (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))))

(declare-fun c!771497 () Bool)

(assert (=> bm!314952 (= c!771497 c!771494)))

(declare-fun b!4520495 () Bool)

(assert (=> b!4520495 (= e!2816369 call!314955)))

(assert (= (and d!1392716 c!771494) b!4520489))

(assert (= (and d!1392716 (not c!771494)) b!4520492))

(assert (= (and b!4520492 c!771495) b!4520487))

(assert (= (and b!4520492 (not c!771495)) b!4520491))

(assert (= (and b!4520491 c!771496) b!4520493))

(assert (= (and b!4520491 (not c!771496)) b!4520495))

(assert (= (or b!4520493 b!4520495) bm!314951))

(assert (= (or b!4520487 bm!314951) bm!314950))

(assert (= (or b!4520489 bm!314950) bm!314952))

(assert (= (and bm!314952 c!771497) b!4520488))

(assert (= (and bm!314952 (not c!771497)) b!4520490))

(assert (= (and d!1392716 res!1881346) b!4520486))

(assert (= (and b!4520486 res!1881347) b!4520494))

(declare-fun m!5268681 () Bool)

(assert (=> b!4520494 m!5268681))

(declare-fun m!5268683 () Bool)

(assert (=> bm!314952 m!5268683))

(declare-fun m!5268685 () Bool)

(assert (=> d!1392716 m!5268685))

(declare-fun m!5268687 () Bool)

(assert (=> d!1392716 m!5268687))

(declare-fun m!5268689 () Bool)

(assert (=> b!4520488 m!5268689))

(declare-fun m!5268691 () Bool)

(assert (=> b!4520486 m!5268691))

(assert (=> d!1392466 d!1392716))

(declare-fun d!1392740 () Bool)

(declare-fun res!1881361 () Bool)

(declare-fun e!2816385 () Bool)

(assert (=> d!1392740 (=> res!1881361 e!2816385)))

(assert (=> d!1392740 (= res!1881361 (and ((_ is Cons!50647) (toList!4327 lt!1697021)) (= (_1!28832 (h!56500 (toList!4327 lt!1697021))) hash!344)))))

(assert (=> d!1392740 (= (containsKey!1784 (toList!4327 lt!1697021) hash!344) e!2816385)))

(declare-fun b!4520513 () Bool)

(declare-fun e!2816386 () Bool)

(assert (=> b!4520513 (= e!2816385 e!2816386)))

(declare-fun res!1881362 () Bool)

(assert (=> b!4520513 (=> (not res!1881362) (not e!2816386))))

(assert (=> b!4520513 (= res!1881362 (and (or (not ((_ is Cons!50647) (toList!4327 lt!1697021))) (bvsle (_1!28832 (h!56500 (toList!4327 lt!1697021))) hash!344)) ((_ is Cons!50647) (toList!4327 lt!1697021)) (bvslt (_1!28832 (h!56500 (toList!4327 lt!1697021))) hash!344)))))

(declare-fun b!4520514 () Bool)

(assert (=> b!4520514 (= e!2816386 (containsKey!1784 (t!357733 (toList!4327 lt!1697021)) hash!344))))

(assert (= (and d!1392740 (not res!1881361)) b!4520513))

(assert (= (and b!4520513 res!1881362) b!4520514))

(declare-fun m!5268707 () Bool)

(assert (=> b!4520514 m!5268707))

(assert (=> d!1392522 d!1392740))

(declare-fun d!1392748 () Bool)

(declare-fun res!1881363 () Bool)

(declare-fun e!2816387 () Bool)

(assert (=> d!1392748 (=> res!1881363 e!2816387)))

(assert (=> d!1392748 (= res!1881363 (and ((_ is Cons!50646) (t!357732 lt!1697018)) (= (_1!28831 (h!56499 (t!357732 lt!1697018))) key!3287)))))

(assert (=> d!1392748 (= (containsKey!1780 (t!357732 lt!1697018) key!3287) e!2816387)))

(declare-fun b!4520515 () Bool)

(declare-fun e!2816388 () Bool)

(assert (=> b!4520515 (= e!2816387 e!2816388)))

(declare-fun res!1881364 () Bool)

(assert (=> b!4520515 (=> (not res!1881364) (not e!2816388))))

(assert (=> b!4520515 (= res!1881364 ((_ is Cons!50646) (t!357732 lt!1697018)))))

(declare-fun b!4520516 () Bool)

(assert (=> b!4520516 (= e!2816388 (containsKey!1780 (t!357732 (t!357732 lt!1697018)) key!3287))))

(assert (= (and d!1392748 (not res!1881363)) b!4520515))

(assert (= (and b!4520515 res!1881364) b!4520516))

(declare-fun m!5268715 () Bool)

(assert (=> b!4520516 m!5268715))

(assert (=> b!4519996 d!1392748))

(declare-fun d!1392752 () Bool)

(declare-fun res!1881365 () Bool)

(declare-fun e!2816391 () Bool)

(assert (=> d!1392752 (=> res!1881365 e!2816391)))

(assert (=> d!1392752 (= res!1881365 ((_ is Nil!50647) (t!357733 (toList!4327 lm!1477))))))

(assert (=> d!1392752 (= (forall!10263 (t!357733 (toList!4327 lm!1477)) lambda!172325) e!2816391)))

(declare-fun b!4520521 () Bool)

(declare-fun e!2816392 () Bool)

(assert (=> b!4520521 (= e!2816391 e!2816392)))

(declare-fun res!1881366 () Bool)

(assert (=> b!4520521 (=> (not res!1881366) (not e!2816392))))

(assert (=> b!4520521 (= res!1881366 (dynLambda!21163 lambda!172325 (h!56500 (t!357733 (toList!4327 lm!1477)))))))

(declare-fun b!4520522 () Bool)

(assert (=> b!4520522 (= e!2816392 (forall!10263 (t!357733 (t!357733 (toList!4327 lm!1477))) lambda!172325))))

(assert (= (and d!1392752 (not res!1881365)) b!4520521))

(assert (= (and b!4520521 res!1881366) b!4520522))

(declare-fun b_lambda!154971 () Bool)

(assert (=> (not b_lambda!154971) (not b!4520521)))

(declare-fun m!5268719 () Bool)

(assert (=> b!4520521 m!5268719))

(declare-fun m!5268721 () Bool)

(assert (=> b!4520522 m!5268721))

(assert (=> b!4520151 d!1392752))

(declare-fun d!1392756 () Bool)

(declare-fun lt!1697536 () Bool)

(assert (=> d!1392756 (= lt!1697536 (select (content!8359 (toList!4327 lt!1697436)) lt!1697023))))

(declare-fun e!2816393 () Bool)

(assert (=> d!1392756 (= lt!1697536 e!2816393)))

(declare-fun res!1881367 () Bool)

(assert (=> d!1392756 (=> (not res!1881367) (not e!2816393))))

(assert (=> d!1392756 (= res!1881367 ((_ is Cons!50647) (toList!4327 lt!1697436)))))

(assert (=> d!1392756 (= (contains!13373 (toList!4327 lt!1697436) lt!1697023) lt!1697536)))

(declare-fun b!4520523 () Bool)

(declare-fun e!2816394 () Bool)

(assert (=> b!4520523 (= e!2816393 e!2816394)))

(declare-fun res!1881368 () Bool)

(assert (=> b!4520523 (=> res!1881368 e!2816394)))

(assert (=> b!4520523 (= res!1881368 (= (h!56500 (toList!4327 lt!1697436)) lt!1697023))))

(declare-fun b!4520524 () Bool)

(assert (=> b!4520524 (= e!2816394 (contains!13373 (t!357733 (toList!4327 lt!1697436)) lt!1697023))))

(assert (= (and d!1392756 res!1881367) b!4520523))

(assert (= (and b!4520523 (not res!1881368)) b!4520524))

(declare-fun m!5268723 () Bool)

(assert (=> d!1392756 m!5268723))

(declare-fun m!5268725 () Bool)

(assert (=> d!1392756 m!5268725))

(declare-fun m!5268727 () Bool)

(assert (=> b!4520524 m!5268727))

(assert (=> b!4520162 d!1392756))

(declare-fun d!1392760 () Bool)

(declare-fun c!771502 () Bool)

(assert (=> d!1392760 (= c!771502 ((_ is Nil!50646) (toList!4328 lt!1696999)))))

(declare-fun e!2816397 () (InoxSet tuple2!51074))

(assert (=> d!1392760 (= (content!8356 (toList!4328 lt!1696999)) e!2816397)))

(declare-fun b!4520527 () Bool)

(assert (=> b!4520527 (= e!2816397 ((as const (Array tuple2!51074 Bool)) false))))

(declare-fun b!4520528 () Bool)

(assert (=> b!4520528 (= e!2816397 ((_ map or) (store ((as const (Array tuple2!51074 Bool)) false) (h!56499 (toList!4328 lt!1696999)) true) (content!8356 (t!357732 (toList!4328 lt!1696999)))))))

(assert (= (and d!1392760 c!771502) b!4520527))

(assert (= (and d!1392760 (not c!771502)) b!4520528))

(declare-fun m!5268729 () Bool)

(assert (=> b!4520528 m!5268729))

(declare-fun m!5268731 () Bool)

(assert (=> b!4520528 m!5268731))

(assert (=> d!1392476 d!1392760))

(assert (=> d!1392476 d!1392612))

(assert (=> d!1392570 d!1392760))

(assert (=> d!1392570 d!1392614))

(declare-fun bs!855806 () Bool)

(declare-fun d!1392762 () Bool)

(assert (= bs!855806 (and d!1392762 d!1392574)))

(declare-fun lambda!172497 () Int)

(assert (=> bs!855806 (= (= lt!1697017 lt!1697417) (= lambda!172497 lambda!172452))))

(declare-fun bs!855807 () Bool)

(assert (= bs!855807 (and d!1392762 b!4520152)))

(assert (=> bs!855807 (= (= lt!1697017 lt!1697423) (= lambda!172497 lambda!172451))))

(declare-fun bs!855808 () Bool)

(assert (= bs!855808 (and d!1392762 b!4520155)))

(assert (=> bs!855808 (= lambda!172497 lambda!172449)))

(declare-fun bs!855809 () Bool)

(assert (= bs!855809 (and d!1392762 d!1392554)))

(assert (=> bs!855809 (not (= lambda!172497 lambda!172445))))

(assert (=> bs!855807 (= lambda!172497 lambda!172450)))

(declare-fun bs!855812 () Bool)

(assert (= bs!855812 (and d!1392762 b!4520058)))

(assert (=> bs!855812 (= (= lt!1697017 lt!1697024) (= lambda!172497 lambda!172431))))

(declare-fun bs!855814 () Bool)

(assert (= bs!855814 (and d!1392762 b!4520061)))

(assert (=> bs!855814 (= (= lt!1697017 lt!1697024) (= lambda!172497 lambda!172430))))

(declare-fun bs!855816 () Bool)

(assert (= bs!855816 (and d!1392762 d!1392478)))

(assert (=> bs!855816 (= (= lt!1697017 lt!1697339) (= lambda!172497 lambda!172433))))

(assert (=> bs!855812 (= (= lt!1697017 lt!1697345) (= lambda!172497 lambda!172432))))

(assert (=> d!1392762 true))

(assert (=> d!1392762 (forall!10265 (toList!4328 lt!1697017) lambda!172497)))

(declare-fun lt!1697560 () Unit!95040)

(declare-fun choose!29532 (ListMap!3589) Unit!95040)

(assert (=> d!1392762 (= lt!1697560 (choose!29532 lt!1697017))))

(assert (=> d!1392762 (= (lemmaContainsAllItsOwnKeys!338 lt!1697017) lt!1697560)))

(declare-fun bs!855820 () Bool)

(assert (= bs!855820 d!1392762))

(declare-fun m!5268735 () Bool)

(assert (=> bs!855820 m!5268735))

(declare-fun m!5268737 () Bool)

(assert (=> bs!855820 m!5268737))

(assert (=> bm!314926 d!1392762))

(declare-fun d!1392766 () Bool)

(assert (=> d!1392766 (= (invariantList!1017 (toList!4328 lt!1697346)) (noDuplicatedKeys!262 (toList!4328 lt!1697346)))))

(declare-fun bs!855822 () Bool)

(assert (= bs!855822 d!1392766))

(declare-fun m!5268739 () Bool)

(assert (=> bs!855822 m!5268739))

(assert (=> d!1392516 d!1392766))

(declare-fun d!1392768 () Bool)

(declare-fun res!1881374 () Bool)

(declare-fun e!2816401 () Bool)

(assert (=> d!1392768 (=> res!1881374 e!2816401)))

(assert (=> d!1392768 (= res!1881374 ((_ is Nil!50647) (toList!4327 lt!1697011)))))

(assert (=> d!1392768 (= (forall!10263 (toList!4327 lt!1697011) lambda!172434) e!2816401)))

(declare-fun b!4520534 () Bool)

(declare-fun e!2816402 () Bool)

(assert (=> b!4520534 (= e!2816401 e!2816402)))

(declare-fun res!1881375 () Bool)

(assert (=> b!4520534 (=> (not res!1881375) (not e!2816402))))

(assert (=> b!4520534 (= res!1881375 (dynLambda!21163 lambda!172434 (h!56500 (toList!4327 lt!1697011))))))

(declare-fun b!4520535 () Bool)

(assert (=> b!4520535 (= e!2816402 (forall!10263 (t!357733 (toList!4327 lt!1697011)) lambda!172434))))

(assert (= (and d!1392768 (not res!1881374)) b!4520534))

(assert (= (and b!4520534 res!1881375) b!4520535))

(declare-fun b_lambda!154973 () Bool)

(assert (=> (not b_lambda!154973) (not b!4520534)))

(declare-fun m!5268741 () Bool)

(assert (=> b!4520534 m!5268741))

(declare-fun m!5268743 () Bool)

(assert (=> b!4520535 m!5268743))

(assert (=> d!1392516 d!1392768))

(declare-fun d!1392770 () Bool)

(assert (=> d!1392770 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287))))

(declare-fun lt!1697561 () Unit!95040)

(assert (=> d!1392770 (= lt!1697561 (choose!29526 (toList!4328 lt!1697020) key!3287))))

(assert (=> d!1392770 (invariantList!1017 (toList!4328 lt!1697020))))

(assert (=> d!1392770 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697020) key!3287) lt!1697561)))

(declare-fun bs!855828 () Bool)

(assert (= bs!855828 d!1392770))

(assert (=> bs!855828 m!5268173))

(assert (=> bs!855828 m!5268173))

(assert (=> bs!855828 m!5268175))

(declare-fun m!5268745 () Bool)

(assert (=> bs!855828 m!5268745))

(declare-fun m!5268747 () Bool)

(assert (=> bs!855828 m!5268747))

(assert (=> b!4520090 d!1392770))

(assert (=> b!4520090 d!1392624))

(assert (=> b!4520090 d!1392626))

(declare-fun d!1392772 () Bool)

(assert (=> d!1392772 (contains!13375 (getKeysList!465 (toList!4328 lt!1697020)) key!3287)))

(declare-fun lt!1697562 () Unit!95040)

(assert (=> d!1392772 (= lt!1697562 (choose!29528 (toList!4328 lt!1697020) key!3287))))

(assert (=> d!1392772 (invariantList!1017 (toList!4328 lt!1697020))))

(assert (=> d!1392772 (= (lemmaInListThenGetKeysListContains!461 (toList!4328 lt!1697020) key!3287) lt!1697562)))

(declare-fun bs!855829 () Bool)

(assert (= bs!855829 d!1392772))

(assert (=> bs!855829 m!5268183))

(assert (=> bs!855829 m!5268183))

(declare-fun m!5268749 () Bool)

(assert (=> bs!855829 m!5268749))

(declare-fun m!5268751 () Bool)

(assert (=> bs!855829 m!5268751))

(assert (=> bs!855829 m!5268747))

(assert (=> b!4520090 d!1392772))

(declare-fun bs!855830 () Bool)

(declare-fun d!1392774 () Bool)

(assert (= bs!855830 (and d!1392774 d!1392574)))

(declare-fun lambda!172499 () Int)

(assert (=> bs!855830 (= (= lt!1697024 lt!1697417) (= lambda!172499 lambda!172452))))

(declare-fun bs!855831 () Bool)

(assert (= bs!855831 (and d!1392774 b!4520152)))

(assert (=> bs!855831 (= (= lt!1697024 lt!1697423) (= lambda!172499 lambda!172451))))

(declare-fun bs!855832 () Bool)

(assert (= bs!855832 (and d!1392774 b!4520155)))

(assert (=> bs!855832 (= (= lt!1697024 lt!1697017) (= lambda!172499 lambda!172449))))

(declare-fun bs!855833 () Bool)

(assert (= bs!855833 (and d!1392774 d!1392554)))

(assert (=> bs!855833 (not (= lambda!172499 lambda!172445))))

(declare-fun bs!855834 () Bool)

(assert (= bs!855834 (and d!1392774 b!4520058)))

(assert (=> bs!855834 (= lambda!172499 lambda!172431)))

(declare-fun bs!855835 () Bool)

(assert (= bs!855835 (and d!1392774 b!4520061)))

(assert (=> bs!855835 (= lambda!172499 lambda!172430)))

(declare-fun bs!855836 () Bool)

(assert (= bs!855836 (and d!1392774 d!1392478)))

(assert (=> bs!855836 (= (= lt!1697024 lt!1697339) (= lambda!172499 lambda!172433))))

(assert (=> bs!855834 (= (= lt!1697024 lt!1697345) (= lambda!172499 lambda!172432))))

(assert (=> bs!855831 (= (= lt!1697024 lt!1697017) (= lambda!172499 lambda!172450))))

(declare-fun bs!855837 () Bool)

(assert (= bs!855837 (and d!1392774 d!1392762)))

(assert (=> bs!855837 (= (= lt!1697024 lt!1697017) (= lambda!172499 lambda!172497))))

(assert (=> d!1392774 true))

(assert (=> d!1392774 (forall!10265 (toList!4328 lt!1697024) lambda!172499)))

(declare-fun lt!1697563 () Unit!95040)

(assert (=> d!1392774 (= lt!1697563 (choose!29532 lt!1697024))))

(assert (=> d!1392774 (= (lemmaContainsAllItsOwnKeys!338 lt!1697024) lt!1697563)))

(declare-fun bs!855838 () Bool)

(assert (= bs!855838 d!1392774))

(declare-fun m!5268761 () Bool)

(assert (=> bs!855838 m!5268761))

(declare-fun m!5268765 () Bool)

(assert (=> bs!855838 m!5268765))

(assert (=> bm!314921 d!1392774))

(assert (=> b!4520117 d!1392578))

(declare-fun bs!855839 () Bool)

(declare-fun b!4520539 () Bool)

(assert (= bs!855839 (and b!4520539 d!1392774)))

(declare-fun lambda!172500 () Int)

(assert (=> bs!855839 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697024) (= lambda!172500 lambda!172499))))

(declare-fun bs!855840 () Bool)

(assert (= bs!855840 (and b!4520539 d!1392574)))

(assert (=> bs!855840 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697417) (= lambda!172500 lambda!172452))))

(declare-fun bs!855841 () Bool)

(assert (= bs!855841 (and b!4520539 b!4520152)))

(assert (=> bs!855841 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697423) (= lambda!172500 lambda!172451))))

(declare-fun bs!855842 () Bool)

(assert (= bs!855842 (and b!4520539 b!4520155)))

(assert (=> bs!855842 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697017) (= lambda!172500 lambda!172449))))

(declare-fun bs!855844 () Bool)

(assert (= bs!855844 (and b!4520539 d!1392554)))

(assert (=> bs!855844 (not (= lambda!172500 lambda!172445))))

(declare-fun bs!855845 () Bool)

(assert (= bs!855845 (and b!4520539 b!4520058)))

(assert (=> bs!855845 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697024) (= lambda!172500 lambda!172431))))

(declare-fun bs!855847 () Bool)

(assert (= bs!855847 (and b!4520539 b!4520061)))

(assert (=> bs!855847 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697024) (= lambda!172500 lambda!172430))))

(declare-fun bs!855849 () Bool)

(assert (= bs!855849 (and b!4520539 d!1392478)))

(assert (=> bs!855849 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697339) (= lambda!172500 lambda!172433))))

(assert (=> bs!855845 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697345) (= lambda!172500 lambda!172432))))

(assert (=> bs!855841 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697017) (= lambda!172500 lambda!172450))))

(declare-fun bs!855853 () Bool)

(assert (= bs!855853 (and b!4520539 d!1392762)))

(assert (=> bs!855853 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697017) (= lambda!172500 lambda!172497))))

(assert (=> b!4520539 true))

(declare-fun bs!855861 () Bool)

(declare-fun b!4520536 () Bool)

(assert (= bs!855861 (and b!4520536 d!1392774)))

(declare-fun lambda!172502 () Int)

(assert (=> bs!855861 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697024) (= lambda!172502 lambda!172499))))

(declare-fun bs!855863 () Bool)

(assert (= bs!855863 (and b!4520536 d!1392574)))

(assert (=> bs!855863 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697417) (= lambda!172502 lambda!172452))))

(declare-fun bs!855864 () Bool)

(assert (= bs!855864 (and b!4520536 b!4520152)))

(assert (=> bs!855864 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697423) (= lambda!172502 lambda!172451))))

(declare-fun bs!855865 () Bool)

(assert (= bs!855865 (and b!4520536 d!1392554)))

(assert (=> bs!855865 (not (= lambda!172502 lambda!172445))))

(declare-fun bs!855866 () Bool)

(assert (= bs!855866 (and b!4520536 b!4520058)))

(assert (=> bs!855866 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697024) (= lambda!172502 lambda!172431))))

(declare-fun bs!855867 () Bool)

(assert (= bs!855867 (and b!4520536 b!4520061)))

(assert (=> bs!855867 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697024) (= lambda!172502 lambda!172430))))

(declare-fun bs!855868 () Bool)

(assert (= bs!855868 (and b!4520536 d!1392478)))

(assert (=> bs!855868 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697339) (= lambda!172502 lambda!172433))))

(assert (=> bs!855866 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697345) (= lambda!172502 lambda!172432))))

(declare-fun bs!855869 () Bool)

(assert (= bs!855869 (and b!4520536 b!4520155)))

(assert (=> bs!855869 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697017) (= lambda!172502 lambda!172449))))

(declare-fun bs!855870 () Bool)

(assert (= bs!855870 (and b!4520536 b!4520539)))

(assert (=> bs!855870 (= lambda!172502 lambda!172500)))

(assert (=> bs!855864 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697017) (= lambda!172502 lambda!172450))))

(declare-fun bs!855871 () Bool)

(assert (= bs!855871 (and b!4520536 d!1392762)))

(assert (=> bs!855871 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697017) (= lambda!172502 lambda!172497))))

(assert (=> b!4520536 true))

(declare-fun lambda!172503 () Int)

(declare-fun lt!1697584 () ListMap!3589)

(assert (=> bs!855863 (= (= lt!1697584 lt!1697417) (= lambda!172503 lambda!172452))))

(assert (=> bs!855864 (= (= lt!1697584 lt!1697423) (= lambda!172503 lambda!172451))))

(assert (=> bs!855865 (not (= lambda!172503 lambda!172445))))

(assert (=> bs!855866 (= (= lt!1697584 lt!1697024) (= lambda!172503 lambda!172431))))

(assert (=> bs!855867 (= (= lt!1697584 lt!1697024) (= lambda!172503 lambda!172430))))

(assert (=> bs!855868 (= (= lt!1697584 lt!1697339) (= lambda!172503 lambda!172433))))

(assert (=> bs!855866 (= (= lt!1697584 lt!1697345) (= lambda!172503 lambda!172432))))

(assert (=> bs!855861 (= (= lt!1697584 lt!1697024) (= lambda!172503 lambda!172499))))

(assert (=> b!4520536 (= (= lt!1697584 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172503 lambda!172502))))

(assert (=> bs!855869 (= (= lt!1697584 lt!1697017) (= lambda!172503 lambda!172449))))

(assert (=> bs!855870 (= (= lt!1697584 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172503 lambda!172500))))

(assert (=> bs!855864 (= (= lt!1697584 lt!1697017) (= lambda!172503 lambda!172450))))

(assert (=> bs!855871 (= (= lt!1697584 lt!1697017) (= lambda!172503 lambda!172497))))

(assert (=> b!4520536 true))

(declare-fun bs!855873 () Bool)

(declare-fun d!1392776 () Bool)

(assert (= bs!855873 (and d!1392776 b!4520536)))

(declare-fun lt!1697578 () ListMap!3589)

(declare-fun lambda!172504 () Int)

(assert (=> bs!855873 (= (= lt!1697578 lt!1697584) (= lambda!172504 lambda!172503))))

(declare-fun bs!855874 () Bool)

(assert (= bs!855874 (and d!1392776 d!1392574)))

(assert (=> bs!855874 (= (= lt!1697578 lt!1697417) (= lambda!172504 lambda!172452))))

(declare-fun bs!855875 () Bool)

(assert (= bs!855875 (and d!1392776 b!4520152)))

(assert (=> bs!855875 (= (= lt!1697578 lt!1697423) (= lambda!172504 lambda!172451))))

(declare-fun bs!855876 () Bool)

(assert (= bs!855876 (and d!1392776 d!1392554)))

(assert (=> bs!855876 (not (= lambda!172504 lambda!172445))))

(declare-fun bs!855877 () Bool)

(assert (= bs!855877 (and d!1392776 b!4520058)))

(assert (=> bs!855877 (= (= lt!1697578 lt!1697024) (= lambda!172504 lambda!172431))))

(declare-fun bs!855878 () Bool)

(assert (= bs!855878 (and d!1392776 b!4520061)))

(assert (=> bs!855878 (= (= lt!1697578 lt!1697024) (= lambda!172504 lambda!172430))))

(declare-fun bs!855879 () Bool)

(assert (= bs!855879 (and d!1392776 d!1392478)))

(assert (=> bs!855879 (= (= lt!1697578 lt!1697339) (= lambda!172504 lambda!172433))))

(assert (=> bs!855877 (= (= lt!1697578 lt!1697345) (= lambda!172504 lambda!172432))))

(declare-fun bs!855880 () Bool)

(assert (= bs!855880 (and d!1392776 d!1392774)))

(assert (=> bs!855880 (= (= lt!1697578 lt!1697024) (= lambda!172504 lambda!172499))))

(assert (=> bs!855873 (= (= lt!1697578 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172504 lambda!172502))))

(declare-fun bs!855881 () Bool)

(assert (= bs!855881 (and d!1392776 b!4520155)))

(assert (=> bs!855881 (= (= lt!1697578 lt!1697017) (= lambda!172504 lambda!172449))))

(declare-fun bs!855882 () Bool)

(assert (= bs!855882 (and d!1392776 b!4520539)))

(assert (=> bs!855882 (= (= lt!1697578 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172504 lambda!172500))))

(assert (=> bs!855875 (= (= lt!1697578 lt!1697017) (= lambda!172504 lambda!172450))))

(declare-fun bs!855883 () Bool)

(assert (= bs!855883 (and d!1392776 d!1392762)))

(assert (=> bs!855883 (= (= lt!1697578 lt!1697017) (= lambda!172504 lambda!172497))))

(assert (=> d!1392776 true))

(declare-fun e!2816405 () ListMap!3589)

(assert (=> b!4520536 (= e!2816405 lt!1697584)))

(declare-fun lt!1697574 () ListMap!3589)

(assert (=> b!4520536 (= lt!1697574 (+!1540 (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697011))))))))

(assert (=> b!4520536 (= lt!1697584 (addToMapMapFromBucket!687 (t!357732 (_2!28832 (h!56500 (toList!4327 lt!1697011)))) (+!1540 (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697011)))))))))

(declare-fun lt!1697581 () Unit!95040)

(declare-fun call!314963 () Unit!95040)

(assert (=> b!4520536 (= lt!1697581 call!314963)))

(assert (=> b!4520536 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) lambda!172502)))

(declare-fun lt!1697576 () Unit!95040)

(assert (=> b!4520536 (= lt!1697576 lt!1697581)))

(declare-fun call!314962 () Bool)

(assert (=> b!4520536 call!314962))

(declare-fun lt!1697569 () Unit!95040)

(declare-fun Unit!95122 () Unit!95040)

(assert (=> b!4520536 (= lt!1697569 Unit!95122)))

(declare-fun call!314961 () Bool)

(assert (=> b!4520536 call!314961))

(declare-fun lt!1697573 () Unit!95040)

(declare-fun Unit!95123 () Unit!95040)

(assert (=> b!4520536 (= lt!1697573 Unit!95123)))

(declare-fun lt!1697571 () Unit!95040)

(declare-fun Unit!95124 () Unit!95040)

(assert (=> b!4520536 (= lt!1697571 Unit!95124)))

(declare-fun lt!1697580 () Unit!95040)

(assert (=> b!4520536 (= lt!1697580 (forallContained!2517 (toList!4328 lt!1697574) lambda!172503 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697011))))))))

(assert (=> b!4520536 (contains!13372 lt!1697574 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697011))))))))

(declare-fun lt!1697566 () Unit!95040)

(declare-fun Unit!95125 () Unit!95040)

(assert (=> b!4520536 (= lt!1697566 Unit!95125)))

(assert (=> b!4520536 (contains!13372 lt!1697584 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697011))))))))

(declare-fun lt!1697577 () Unit!95040)

(declare-fun Unit!95126 () Unit!95040)

(assert (=> b!4520536 (= lt!1697577 Unit!95126)))

(assert (=> b!4520536 (forall!10265 (_2!28832 (h!56500 (toList!4327 lt!1697011))) lambda!172503)))

(declare-fun lt!1697570 () Unit!95040)

(declare-fun Unit!95127 () Unit!95040)

(assert (=> b!4520536 (= lt!1697570 Unit!95127)))

(assert (=> b!4520536 (forall!10265 (toList!4328 lt!1697574) lambda!172503)))

(declare-fun lt!1697567 () Unit!95040)

(declare-fun Unit!95128 () Unit!95040)

(assert (=> b!4520536 (= lt!1697567 Unit!95128)))

(declare-fun lt!1697575 () Unit!95040)

(declare-fun Unit!95129 () Unit!95040)

(assert (=> b!4520536 (= lt!1697575 Unit!95129)))

(declare-fun lt!1697564 () Unit!95040)

(assert (=> b!4520536 (= lt!1697564 (addForallContainsKeyThenBeforeAdding!338 (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697584 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697011))))) (_2!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697011)))))))))

(assert (=> b!4520536 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) lambda!172503)))

(declare-fun lt!1697572 () Unit!95040)

(assert (=> b!4520536 (= lt!1697572 lt!1697564)))

(assert (=> b!4520536 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) lambda!172503)))

(declare-fun lt!1697579 () Unit!95040)

(declare-fun Unit!95130 () Unit!95040)

(assert (=> b!4520536 (= lt!1697579 Unit!95130)))

(declare-fun res!1881377 () Bool)

(assert (=> b!4520536 (= res!1881377 (forall!10265 (_2!28832 (h!56500 (toList!4327 lt!1697011))) lambda!172503))))

(declare-fun e!2816403 () Bool)

(assert (=> b!4520536 (=> (not res!1881377) (not e!2816403))))

(assert (=> b!4520536 e!2816403))

(declare-fun lt!1697565 () Unit!95040)

(declare-fun Unit!95131 () Unit!95040)

(assert (=> b!4520536 (= lt!1697565 Unit!95131)))

(declare-fun b!4520537 () Bool)

(assert (=> b!4520537 (= e!2816403 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) lambda!172503))))

(declare-fun bm!314956 () Bool)

(assert (=> bm!314956 (= call!314963 (lemmaContainsAllItsOwnKeys!338 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))))))

(declare-fun c!771504 () Bool)

(declare-fun bm!314957 () Bool)

(assert (=> bm!314957 (= call!314962 (forall!10265 (ite c!771504 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (toList!4328 lt!1697574)) (ite c!771504 lambda!172500 lambda!172503)))))

(declare-fun b!4520538 () Bool)

(declare-fun res!1881376 () Bool)

(declare-fun e!2816404 () Bool)

(assert (=> b!4520538 (=> (not res!1881376) (not e!2816404))))

(assert (=> b!4520538 (= res!1881376 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) lambda!172504))))

(assert (=> d!1392776 e!2816404))

(declare-fun res!1881378 () Bool)

(assert (=> d!1392776 (=> (not res!1881378) (not e!2816404))))

(assert (=> d!1392776 (= res!1881378 (forall!10265 (_2!28832 (h!56500 (toList!4327 lt!1697011))) lambda!172504))))

(assert (=> d!1392776 (= lt!1697578 e!2816405)))

(assert (=> d!1392776 (= c!771504 ((_ is Nil!50646) (_2!28832 (h!56500 (toList!4327 lt!1697011)))))))

(assert (=> d!1392776 (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lt!1697011))))))

(assert (=> d!1392776 (= (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 lt!1697011))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) lt!1697578)))

(declare-fun bm!314958 () Bool)

(assert (=> bm!314958 (= call!314961 (forall!10265 (ite c!771504 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (t!357732 (_2!28832 (h!56500 (toList!4327 lt!1697011))))) (ite c!771504 lambda!172500 lambda!172503)))))

(assert (=> b!4520539 (= e!2816405 (extractMap!1216 (t!357733 (toList!4327 lt!1697011))))))

(declare-fun lt!1697568 () Unit!95040)

(assert (=> b!4520539 (= lt!1697568 call!314963)))

(assert (=> b!4520539 call!314961))

(declare-fun lt!1697582 () Unit!95040)

(assert (=> b!4520539 (= lt!1697582 lt!1697568)))

(assert (=> b!4520539 call!314962))

(declare-fun lt!1697583 () Unit!95040)

(declare-fun Unit!95132 () Unit!95040)

(assert (=> b!4520539 (= lt!1697583 Unit!95132)))

(declare-fun b!4520540 () Bool)

(assert (=> b!4520540 (= e!2816404 (invariantList!1017 (toList!4328 lt!1697578)))))

(assert (= (and d!1392776 c!771504) b!4520539))

(assert (= (and d!1392776 (not c!771504)) b!4520536))

(assert (= (and b!4520536 res!1881377) b!4520537))

(assert (= (or b!4520539 b!4520536) bm!314958))

(assert (= (or b!4520539 b!4520536) bm!314957))

(assert (= (or b!4520539 b!4520536) bm!314956))

(assert (= (and d!1392776 res!1881378) b!4520538))

(assert (= (and b!4520538 res!1881376) b!4520540))

(declare-fun m!5268825 () Bool)

(assert (=> d!1392776 m!5268825))

(declare-fun m!5268827 () Bool)

(assert (=> d!1392776 m!5268827))

(declare-fun m!5268829 () Bool)

(assert (=> b!4520537 m!5268829))

(declare-fun m!5268831 () Bool)

(assert (=> bm!314957 m!5268831))

(assert (=> bm!314956 m!5268123))

(declare-fun m!5268833 () Bool)

(assert (=> bm!314956 m!5268833))

(declare-fun m!5268835 () Bool)

(assert (=> b!4520540 m!5268835))

(declare-fun m!5268837 () Bool)

(assert (=> b!4520538 m!5268837))

(declare-fun m!5268839 () Bool)

(assert (=> bm!314958 m!5268839))

(assert (=> b!4520536 m!5268123))

(declare-fun m!5268841 () Bool)

(assert (=> b!4520536 m!5268841))

(assert (=> b!4520536 m!5268829))

(declare-fun m!5268843 () Bool)

(assert (=> b!4520536 m!5268843))

(assert (=> b!4520536 m!5268123))

(declare-fun m!5268845 () Bool)

(assert (=> b!4520536 m!5268845))

(assert (=> b!4520536 m!5268829))

(declare-fun m!5268847 () Bool)

(assert (=> b!4520536 m!5268847))

(assert (=> b!4520536 m!5268841))

(declare-fun m!5268849 () Bool)

(assert (=> b!4520536 m!5268849))

(declare-fun m!5268851 () Bool)

(assert (=> b!4520536 m!5268851))

(declare-fun m!5268853 () Bool)

(assert (=> b!4520536 m!5268853))

(assert (=> b!4520536 m!5268847))

(declare-fun m!5268855 () Bool)

(assert (=> b!4520536 m!5268855))

(declare-fun m!5268857 () Bool)

(assert (=> b!4520536 m!5268857))

(assert (=> b!4520065 d!1392776))

(declare-fun bs!855884 () Bool)

(declare-fun d!1392796 () Bool)

(assert (= bs!855884 (and d!1392796 d!1392458)))

(declare-fun lambda!172505 () Int)

(assert (=> bs!855884 (= lambda!172505 lambda!172357)))

(declare-fun bs!855886 () Bool)

(assert (= bs!855886 (and d!1392796 d!1392542)))

(assert (=> bs!855886 (= lambda!172505 lambda!172442)))

(declare-fun bs!855887 () Bool)

(assert (= bs!855887 (and d!1392796 d!1392534)))

(assert (=> bs!855887 (= lambda!172505 lambda!172439)))

(declare-fun bs!855888 () Bool)

(assert (= bs!855888 (and d!1392796 d!1392582)))

(assert (=> bs!855888 (= lambda!172505 lambda!172455)))

(declare-fun bs!855889 () Bool)

(assert (= bs!855889 (and d!1392796 d!1392526)))

(assert (=> bs!855889 (= lambda!172505 lambda!172437)))

(declare-fun bs!855890 () Bool)

(assert (= bs!855890 (and d!1392796 d!1392530)))

(assert (=> bs!855890 (= lambda!172505 lambda!172438)))

(declare-fun bs!855891 () Bool)

(assert (= bs!855891 (and d!1392796 d!1392416)))

(assert (=> bs!855891 (= lambda!172505 lambda!172348)))

(declare-fun bs!855892 () Bool)

(assert (= bs!855892 (and d!1392796 d!1392446)))

(assert (=> bs!855892 (not (= lambda!172505 lambda!172351))))

(declare-fun bs!855893 () Bool)

(assert (= bs!855893 (and d!1392796 d!1392560)))

(assert (=> bs!855893 (= lambda!172505 lambda!172448)))

(declare-fun bs!855894 () Bool)

(assert (= bs!855894 (and d!1392796 start!447492)))

(assert (=> bs!855894 (= lambda!172505 lambda!172325)))

(declare-fun bs!855895 () Bool)

(assert (= bs!855895 (and d!1392796 d!1392516)))

(assert (=> bs!855895 (= lambda!172505 lambda!172434)))

(declare-fun bs!855896 () Bool)

(assert (= bs!855896 (and d!1392796 d!1392462)))

(assert (=> bs!855896 (= lambda!172505 lambda!172358)))

(declare-fun bs!855897 () Bool)

(assert (= bs!855897 (and d!1392796 d!1392468)))

(assert (=> bs!855897 (= lambda!172505 lambda!172359)))

(declare-fun lt!1697590 () ListMap!3589)

(assert (=> d!1392796 (invariantList!1017 (toList!4328 lt!1697590))))

(declare-fun e!2816422 () ListMap!3589)

(assert (=> d!1392796 (= lt!1697590 e!2816422)))

(declare-fun c!771509 () Bool)

(assert (=> d!1392796 (= c!771509 ((_ is Cons!50647) (t!357733 (toList!4327 lt!1697011))))))

(assert (=> d!1392796 (forall!10263 (t!357733 (toList!4327 lt!1697011)) lambda!172505)))

(assert (=> d!1392796 (= (extractMap!1216 (t!357733 (toList!4327 lt!1697011))) lt!1697590)))

(declare-fun b!4520561 () Bool)

(assert (=> b!4520561 (= e!2816422 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (t!357733 (toList!4327 lt!1697011)))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lt!1697011))))))))

(declare-fun b!4520562 () Bool)

(assert (=> b!4520562 (= e!2816422 (ListMap!3590 Nil!50646))))

(assert (= (and d!1392796 c!771509) b!4520561))

(assert (= (and d!1392796 (not c!771509)) b!4520562))

(declare-fun m!5268867 () Bool)

(assert (=> d!1392796 m!5268867))

(declare-fun m!5268869 () Bool)

(assert (=> d!1392796 m!5268869))

(declare-fun m!5268871 () Bool)

(assert (=> b!4520561 m!5268871))

(assert (=> b!4520561 m!5268871))

(declare-fun m!5268877 () Bool)

(assert (=> b!4520561 m!5268877))

(assert (=> b!4520065 d!1392796))

(declare-fun b!4520568 () Bool)

(declare-fun e!2816427 () Option!11113)

(declare-fun e!2816428 () Option!11113)

(assert (=> b!4520568 (= e!2816427 e!2816428)))

(declare-fun c!771511 () Bool)

(assert (=> b!4520568 (= c!771511 (and ((_ is Cons!50647) (toList!4327 lm!1477)) (not (= (_1!28832 (h!56500 (toList!4327 lm!1477))) hash!344))))))

(declare-fun b!4520569 () Bool)

(assert (=> b!4520569 (= e!2816428 (getValueByKey!1093 (t!357733 (toList!4327 lm!1477)) hash!344))))

(declare-fun b!4520570 () Bool)

(assert (=> b!4520570 (= e!2816428 None!11112)))

(declare-fun b!4520567 () Bool)

(assert (=> b!4520567 (= e!2816427 (Some!11112 (_2!28832 (h!56500 (toList!4327 lm!1477)))))))

(declare-fun d!1392804 () Bool)

(declare-fun c!771510 () Bool)

(assert (=> d!1392804 (= c!771510 (and ((_ is Cons!50647) (toList!4327 lm!1477)) (= (_1!28832 (h!56500 (toList!4327 lm!1477))) hash!344)))))

(assert (=> d!1392804 (= (getValueByKey!1093 (toList!4327 lm!1477) hash!344) e!2816427)))

(assert (= (and d!1392804 c!771510) b!4520567))

(assert (= (and d!1392804 (not c!771510)) b!4520568))

(assert (= (and b!4520568 c!771511) b!4520569))

(assert (= (and b!4520568 (not c!771511)) b!4520570))

(declare-fun m!5268881 () Bool)

(assert (=> b!4520569 m!5268881))

(assert (=> b!4520107 d!1392804))

(declare-fun b!4520574 () Bool)

(declare-fun e!2816431 () Option!11113)

(declare-fun e!2816432 () Option!11113)

(assert (=> b!4520574 (= e!2816431 e!2816432)))

(declare-fun c!771513 () Bool)

(assert (=> b!4520574 (= c!771513 (and ((_ is Cons!50647) (toList!4327 lt!1697175)) (not (= (_1!28832 (h!56500 (toList!4327 lt!1697175))) (_1!28832 lt!1697006)))))))

(declare-fun b!4520575 () Bool)

(assert (=> b!4520575 (= e!2816432 (getValueByKey!1093 (t!357733 (toList!4327 lt!1697175)) (_1!28832 lt!1697006)))))

(declare-fun b!4520576 () Bool)

(assert (=> b!4520576 (= e!2816432 None!11112)))

(declare-fun b!4520573 () Bool)

(assert (=> b!4520573 (= e!2816431 (Some!11112 (_2!28832 (h!56500 (toList!4327 lt!1697175)))))))

(declare-fun d!1392808 () Bool)

(declare-fun c!771512 () Bool)

(assert (=> d!1392808 (= c!771512 (and ((_ is Cons!50647) (toList!4327 lt!1697175)) (= (_1!28832 (h!56500 (toList!4327 lt!1697175))) (_1!28832 lt!1697006))))))

(assert (=> d!1392808 (= (getValueByKey!1093 (toList!4327 lt!1697175) (_1!28832 lt!1697006)) e!2816431)))

(assert (= (and d!1392808 c!771512) b!4520573))

(assert (= (and d!1392808 (not c!771512)) b!4520574))

(assert (= (and b!4520574 c!771513) b!4520575))

(assert (= (and b!4520574 (not c!771513)) b!4520576))

(declare-fun m!5268887 () Bool)

(assert (=> b!4520575 m!5268887))

(assert (=> b!4519987 d!1392808))

(declare-fun lt!1697593 () Bool)

(declare-fun d!1392812 () Bool)

(assert (=> d!1392812 (= lt!1697593 (select (content!8359 (toList!4327 lm!1477)) (tuple2!51077 hash!344 lt!1697018)))))

(declare-fun e!2816435 () Bool)

(assert (=> d!1392812 (= lt!1697593 e!2816435)))

(declare-fun res!1881399 () Bool)

(assert (=> d!1392812 (=> (not res!1881399) (not e!2816435))))

(assert (=> d!1392812 (= res!1881399 ((_ is Cons!50647) (toList!4327 lm!1477)))))

(assert (=> d!1392812 (= (contains!13373 (toList!4327 lm!1477) (tuple2!51077 hash!344 lt!1697018)) lt!1697593)))

(declare-fun b!4520579 () Bool)

(declare-fun e!2816436 () Bool)

(assert (=> b!4520579 (= e!2816435 e!2816436)))

(declare-fun res!1881400 () Bool)

(assert (=> b!4520579 (=> res!1881400 e!2816436)))

(assert (=> b!4520579 (= res!1881400 (= (h!56500 (toList!4327 lm!1477)) (tuple2!51077 hash!344 lt!1697018)))))

(declare-fun b!4520580 () Bool)

(assert (=> b!4520580 (= e!2816436 (contains!13373 (t!357733 (toList!4327 lm!1477)) (tuple2!51077 hash!344 lt!1697018)))))

(assert (= (and d!1392812 res!1881399) b!4520579))

(assert (= (and b!4520579 (not res!1881400)) b!4520580))

(assert (=> d!1392812 m!5268235))

(declare-fun m!5268897 () Bool)

(assert (=> d!1392812 m!5268897))

(declare-fun m!5268901 () Bool)

(assert (=> b!4520580 m!5268901))

(assert (=> d!1392540 d!1392812))

(declare-fun d!1392818 () Bool)

(assert (=> d!1392818 (contains!13373 (toList!4327 lm!1477) (tuple2!51077 hash!344 lt!1697018))))

(assert (=> d!1392818 true))

(declare-fun _$14!1161 () Unit!95040)

(assert (=> d!1392818 (= (choose!29521 (toList!4327 lm!1477) hash!344 lt!1697018) _$14!1161)))

(declare-fun bs!855899 () Bool)

(assert (= bs!855899 d!1392818))

(assert (=> bs!855899 m!5268207))

(assert (=> d!1392540 d!1392818))

(declare-fun d!1392824 () Bool)

(declare-fun res!1881412 () Bool)

(declare-fun e!2816449 () Bool)

(assert (=> d!1392824 (=> res!1881412 e!2816449)))

(assert (=> d!1392824 (= res!1881412 (or ((_ is Nil!50647) (toList!4327 lm!1477)) ((_ is Nil!50647) (t!357733 (toList!4327 lm!1477)))))))

(assert (=> d!1392824 (= (isStrictlySorted!431 (toList!4327 lm!1477)) e!2816449)))

(declare-fun b!4520596 () Bool)

(declare-fun e!2816450 () Bool)

(assert (=> b!4520596 (= e!2816449 e!2816450)))

(declare-fun res!1881413 () Bool)

(assert (=> b!4520596 (=> (not res!1881413) (not e!2816450))))

(assert (=> b!4520596 (= res!1881413 (bvslt (_1!28832 (h!56500 (toList!4327 lm!1477))) (_1!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))))))

(declare-fun b!4520597 () Bool)

(assert (=> b!4520597 (= e!2816450 (isStrictlySorted!431 (t!357733 (toList!4327 lm!1477))))))

(assert (= (and d!1392824 (not res!1881412)) b!4520596))

(assert (= (and b!4520596 res!1881413) b!4520597))

(declare-fun m!5268915 () Bool)

(assert (=> b!4520597 m!5268915))

(assert (=> d!1392540 d!1392824))

(declare-fun d!1392828 () Bool)

(declare-fun res!1881418 () Bool)

(declare-fun e!2816455 () Bool)

(assert (=> d!1392828 (=> res!1881418 e!2816455)))

(assert (=> d!1392828 (= res!1881418 (and ((_ is Cons!50646) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= (_1!28831 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) key!3287)))))

(assert (=> d!1392828 (= (containsKey!1783 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287) e!2816455)))

(declare-fun b!4520602 () Bool)

(declare-fun e!2816456 () Bool)

(assert (=> b!4520602 (= e!2816455 e!2816456)))

(declare-fun res!1881419 () Bool)

(assert (=> b!4520602 (=> (not res!1881419) (not e!2816456))))

(assert (=> b!4520602 (= res!1881419 ((_ is Cons!50646) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))

(declare-fun b!4520603 () Bool)

(assert (=> b!4520603 (= e!2816456 (containsKey!1783 (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) key!3287))))

(assert (= (and d!1392828 (not res!1881418)) b!4520602))

(assert (= (and b!4520602 res!1881419) b!4520603))

(declare-fun m!5268917 () Bool)

(assert (=> b!4520603 m!5268917))

(assert (=> d!1392528 d!1392828))

(declare-fun d!1392830 () Bool)

(declare-fun res!1881420 () Bool)

(declare-fun e!2816457 () Bool)

(assert (=> d!1392830 (=> res!1881420 e!2816457)))

(assert (=> d!1392830 (= res!1881420 (and ((_ is Cons!50646) (toList!4328 lt!1697008)) (= (_1!28831 (h!56499 (toList!4328 lt!1697008))) key!3287)))))

(assert (=> d!1392830 (= (containsKey!1783 (toList!4328 lt!1697008) key!3287) e!2816457)))

(declare-fun b!4520604 () Bool)

(declare-fun e!2816458 () Bool)

(assert (=> b!4520604 (= e!2816457 e!2816458)))

(declare-fun res!1881421 () Bool)

(assert (=> b!4520604 (=> (not res!1881421) (not e!2816458))))

(assert (=> b!4520604 (= res!1881421 ((_ is Cons!50646) (toList!4328 lt!1697008)))))

(declare-fun b!4520605 () Bool)

(assert (=> b!4520605 (= e!2816458 (containsKey!1783 (t!357732 (toList!4328 lt!1697008)) key!3287))))

(assert (= (and d!1392830 (not res!1881420)) b!4520604))

(assert (= (and b!4520604 res!1881421) b!4520605))

(declare-fun m!5268919 () Bool)

(assert (=> b!4520605 m!5268919))

(assert (=> b!4519901 d!1392830))

(declare-fun d!1392832 () Bool)

(assert (=> d!1392832 (containsKey!1783 (toList!4328 lt!1697008) key!3287)))

(declare-fun lt!1697618 () Unit!95040)

(declare-fun choose!29533 (List!50770 K!12040) Unit!95040)

(assert (=> d!1392832 (= lt!1697618 (choose!29533 (toList!4328 lt!1697008) key!3287))))

(assert (=> d!1392832 (invariantList!1017 (toList!4328 lt!1697008))))

(assert (=> d!1392832 (= (lemmaInGetKeysListThenContainsKey!464 (toList!4328 lt!1697008) key!3287) lt!1697618)))

(declare-fun bs!855930 () Bool)

(assert (= bs!855930 d!1392832))

(assert (=> bs!855930 m!5267711))

(declare-fun m!5268921 () Bool)

(assert (=> bs!855930 m!5268921))

(assert (=> bs!855930 m!5268357))

(assert (=> b!4519901 d!1392832))

(declare-fun d!1392834 () Bool)

(assert (=> d!1392834 (= (head!9414 (toList!4327 lt!1697011)) (h!56500 (toList!4327 lt!1697011)))))

(assert (=> d!1392566 d!1392834))

(assert (=> b!4520080 d!1392680))

(assert (=> b!4520080 d!1392684))

(declare-fun d!1392836 () Bool)

(declare-fun res!1881422 () Bool)

(declare-fun e!2816459 () Bool)

(assert (=> d!1392836 (=> res!1881422 e!2816459)))

(assert (=> d!1392836 (= res!1881422 ((_ is Nil!50646) (_2!28832 lt!1697023)))))

(assert (=> d!1392836 (= (forall!10265 (_2!28832 lt!1697023) lambda!172452) e!2816459)))

(declare-fun b!4520606 () Bool)

(declare-fun e!2816460 () Bool)

(assert (=> b!4520606 (= e!2816459 e!2816460)))

(declare-fun res!1881423 () Bool)

(assert (=> b!4520606 (=> (not res!1881423) (not e!2816460))))

(assert (=> b!4520606 (= res!1881423 (dynLambda!21164 lambda!172452 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun b!4520607 () Bool)

(assert (=> b!4520607 (= e!2816460 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172452))))

(assert (= (and d!1392836 (not res!1881422)) b!4520606))

(assert (= (and b!4520606 res!1881423) b!4520607))

(declare-fun b_lambda!154981 () Bool)

(assert (=> (not b_lambda!154981) (not b!4520606)))

(declare-fun m!5268923 () Bool)

(assert (=> b!4520606 m!5268923))

(declare-fun m!5268925 () Bool)

(assert (=> b!4520607 m!5268925))

(assert (=> d!1392574 d!1392836))

(assert (=> d!1392574 d!1392536))

(declare-fun d!1392838 () Bool)

(declare-fun res!1881424 () Bool)

(declare-fun e!2816461 () Bool)

(assert (=> d!1392838 (=> res!1881424 e!2816461)))

(assert (=> d!1392838 (= res!1881424 (not ((_ is Cons!50646) (_2!28832 (h!56500 (toList!4327 lm!1477))))))))

(assert (=> d!1392838 (= (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lm!1477)))) e!2816461)))

(declare-fun b!4520608 () Bool)

(declare-fun e!2816462 () Bool)

(assert (=> b!4520608 (= e!2816461 e!2816462)))

(declare-fun res!1881425 () Bool)

(assert (=> b!4520608 (=> (not res!1881425) (not e!2816462))))

(assert (=> b!4520608 (= res!1881425 (not (containsKey!1780 (t!357732 (_2!28832 (h!56500 (toList!4327 lm!1477)))) (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lm!1477))))))))))

(declare-fun b!4520609 () Bool)

(assert (=> b!4520609 (= e!2816462 (noDuplicateKeys!1160 (t!357732 (_2!28832 (h!56500 (toList!4327 lm!1477))))))))

(assert (= (and d!1392838 (not res!1881424)) b!4520608))

(assert (= (and b!4520608 res!1881425) b!4520609))

(declare-fun m!5268927 () Bool)

(assert (=> b!4520608 m!5268927))

(declare-fun m!5268929 () Bool)

(assert (=> b!4520609 m!5268929))

(assert (=> bs!855705 d!1392838))

(declare-fun d!1392840 () Bool)

(declare-fun e!2816464 () Bool)

(assert (=> d!1392840 e!2816464))

(declare-fun res!1881426 () Bool)

(assert (=> d!1392840 (=> res!1881426 e!2816464)))

(declare-fun lt!1697619 () Bool)

(assert (=> d!1392840 (= res!1881426 (not lt!1697619))))

(declare-fun lt!1697622 () Bool)

(assert (=> d!1392840 (= lt!1697619 lt!1697622)))

(declare-fun lt!1697621 () Unit!95040)

(declare-fun e!2816463 () Unit!95040)

(assert (=> d!1392840 (= lt!1697621 e!2816463)))

(declare-fun c!771516 () Bool)

(assert (=> d!1392840 (= c!771516 lt!1697622)))

(assert (=> d!1392840 (= lt!1697622 (containsKey!1784 (toList!4327 lt!1697436) (_1!28832 lt!1697023)))))

(assert (=> d!1392840 (= (contains!13371 lt!1697436 (_1!28832 lt!1697023)) lt!1697619)))

(declare-fun b!4520610 () Bool)

(declare-fun lt!1697620 () Unit!95040)

(assert (=> b!4520610 (= e!2816463 lt!1697620)))

(assert (=> b!4520610 (= lt!1697620 (lemmaContainsKeyImpliesGetValueByKeyDefined!997 (toList!4327 lt!1697436) (_1!28832 lt!1697023)))))

(assert (=> b!4520610 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697436) (_1!28832 lt!1697023)))))

(declare-fun b!4520611 () Bool)

(declare-fun Unit!95133 () Unit!95040)

(assert (=> b!4520611 (= e!2816463 Unit!95133)))

(declare-fun b!4520612 () Bool)

(assert (=> b!4520612 (= e!2816464 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697436) (_1!28832 lt!1697023))))))

(assert (= (and d!1392840 c!771516) b!4520610))

(assert (= (and d!1392840 (not c!771516)) b!4520611))

(assert (= (and d!1392840 (not res!1881426)) b!4520612))

(declare-fun m!5268931 () Bool)

(assert (=> d!1392840 m!5268931))

(declare-fun m!5268933 () Bool)

(assert (=> b!4520610 m!5268933))

(assert (=> b!4520610 m!5268337))

(assert (=> b!4520610 m!5268337))

(declare-fun m!5268935 () Bool)

(assert (=> b!4520610 m!5268935))

(assert (=> b!4520612 m!5268337))

(assert (=> b!4520612 m!5268337))

(assert (=> b!4520612 m!5268935))

(assert (=> d!1392586 d!1392840))

(declare-fun b!4520614 () Bool)

(declare-fun e!2816465 () Option!11113)

(declare-fun e!2816466 () Option!11113)

(assert (=> b!4520614 (= e!2816465 e!2816466)))

(declare-fun c!771518 () Bool)

(assert (=> b!4520614 (= c!771518 (and ((_ is Cons!50647) lt!1697438) (not (= (_1!28832 (h!56500 lt!1697438)) (_1!28832 lt!1697023)))))))

(declare-fun b!4520615 () Bool)

(assert (=> b!4520615 (= e!2816466 (getValueByKey!1093 (t!357733 lt!1697438) (_1!28832 lt!1697023)))))

(declare-fun b!4520616 () Bool)

(assert (=> b!4520616 (= e!2816466 None!11112)))

(declare-fun b!4520613 () Bool)

(assert (=> b!4520613 (= e!2816465 (Some!11112 (_2!28832 (h!56500 lt!1697438))))))

(declare-fun d!1392842 () Bool)

(declare-fun c!771517 () Bool)

(assert (=> d!1392842 (= c!771517 (and ((_ is Cons!50647) lt!1697438) (= (_1!28832 (h!56500 lt!1697438)) (_1!28832 lt!1697023))))))

(assert (=> d!1392842 (= (getValueByKey!1093 lt!1697438 (_1!28832 lt!1697023)) e!2816465)))

(assert (= (and d!1392842 c!771517) b!4520613))

(assert (= (and d!1392842 (not c!771517)) b!4520614))

(assert (= (and b!4520614 c!771518) b!4520615))

(assert (= (and b!4520614 (not c!771518)) b!4520616))

(declare-fun m!5268937 () Bool)

(assert (=> b!4520615 m!5268937))

(assert (=> d!1392586 d!1392842))

(declare-fun d!1392844 () Bool)

(assert (=> d!1392844 (= (getValueByKey!1093 lt!1697438 (_1!28832 lt!1697023)) (Some!11112 (_2!28832 lt!1697023)))))

(declare-fun lt!1697623 () Unit!95040)

(assert (=> d!1392844 (= lt!1697623 (choose!29531 lt!1697438 (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))

(declare-fun e!2816467 () Bool)

(assert (=> d!1392844 e!2816467))

(declare-fun res!1881427 () Bool)

(assert (=> d!1392844 (=> (not res!1881427) (not e!2816467))))

(assert (=> d!1392844 (= res!1881427 (isStrictlySorted!431 lt!1697438))))

(assert (=> d!1392844 (= (lemmaContainsTupThenGetReturnValue!678 lt!1697438 (_1!28832 lt!1697023) (_2!28832 lt!1697023)) lt!1697623)))

(declare-fun b!4520617 () Bool)

(declare-fun res!1881428 () Bool)

(assert (=> b!4520617 (=> (not res!1881428) (not e!2816467))))

(assert (=> b!4520617 (= res!1881428 (containsKey!1784 lt!1697438 (_1!28832 lt!1697023)))))

(declare-fun b!4520618 () Bool)

(assert (=> b!4520618 (= e!2816467 (contains!13373 lt!1697438 (tuple2!51077 (_1!28832 lt!1697023) (_2!28832 lt!1697023))))))

(assert (= (and d!1392844 res!1881427) b!4520617))

(assert (= (and b!4520617 res!1881428) b!4520618))

(assert (=> d!1392844 m!5268331))

(declare-fun m!5268939 () Bool)

(assert (=> d!1392844 m!5268939))

(declare-fun m!5268941 () Bool)

(assert (=> d!1392844 m!5268941))

(declare-fun m!5268943 () Bool)

(assert (=> b!4520617 m!5268943))

(declare-fun m!5268945 () Bool)

(assert (=> b!4520618 m!5268945))

(assert (=> d!1392586 d!1392844))

(declare-fun b!4520619 () Bool)

(declare-fun res!1881430 () Bool)

(declare-fun e!2816471 () Bool)

(assert (=> b!4520619 (=> (not res!1881430) (not e!2816471))))

(declare-fun lt!1697624 () List!50771)

(assert (=> b!4520619 (= res!1881430 (containsKey!1784 lt!1697624 (_1!28832 lt!1697023)))))

(declare-fun b!4520620 () Bool)

(declare-fun e!2816468 () List!50771)

(declare-fun call!314968 () List!50771)

(assert (=> b!4520620 (= e!2816468 call!314968)))

(declare-fun b!4520621 () Bool)

(declare-fun e!2816472 () List!50771)

(assert (=> b!4520621 (= e!2816472 (insertStrictlySorted!408 (t!357733 (toList!4327 lt!1697001)) (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))

(declare-fun b!4520622 () Bool)

(declare-fun e!2816469 () List!50771)

(declare-fun call!314969 () List!50771)

(assert (=> b!4520622 (= e!2816469 call!314969)))

(declare-fun d!1392846 () Bool)

(assert (=> d!1392846 e!2816471))

(declare-fun res!1881429 () Bool)

(assert (=> d!1392846 (=> (not res!1881429) (not e!2816471))))

(assert (=> d!1392846 (= res!1881429 (isStrictlySorted!431 lt!1697624))))

(assert (=> d!1392846 (= lt!1697624 e!2816469)))

(declare-fun c!771519 () Bool)

(assert (=> d!1392846 (= c!771519 (and ((_ is Cons!50647) (toList!4327 lt!1697001)) (bvslt (_1!28832 (h!56500 (toList!4327 lt!1697001))) (_1!28832 lt!1697023))))))

(assert (=> d!1392846 (isStrictlySorted!431 (toList!4327 lt!1697001))))

(assert (=> d!1392846 (= (insertStrictlySorted!408 (toList!4327 lt!1697001) (_1!28832 lt!1697023) (_2!28832 lt!1697023)) lt!1697624)))

(declare-fun c!771521 () Bool)

(declare-fun c!771520 () Bool)

(declare-fun b!4520623 () Bool)

(assert (=> b!4520623 (= e!2816472 (ite c!771520 (t!357733 (toList!4327 lt!1697001)) (ite c!771521 (Cons!50647 (h!56500 (toList!4327 lt!1697001)) (t!357733 (toList!4327 lt!1697001))) Nil!50647)))))

(declare-fun b!4520624 () Bool)

(assert (=> b!4520624 (= c!771521 (and ((_ is Cons!50647) (toList!4327 lt!1697001)) (bvsgt (_1!28832 (h!56500 (toList!4327 lt!1697001))) (_1!28832 lt!1697023))))))

(declare-fun e!2816470 () List!50771)

(assert (=> b!4520624 (= e!2816468 e!2816470)))

(declare-fun bm!314962 () Bool)

(assert (=> bm!314962 (= call!314968 call!314969)))

(declare-fun bm!314963 () Bool)

(declare-fun call!314967 () List!50771)

(assert (=> bm!314963 (= call!314967 call!314968)))

(declare-fun b!4520625 () Bool)

(assert (=> b!4520625 (= e!2816469 e!2816468)))

(assert (=> b!4520625 (= c!771520 (and ((_ is Cons!50647) (toList!4327 lt!1697001)) (= (_1!28832 (h!56500 (toList!4327 lt!1697001))) (_1!28832 lt!1697023))))))

(declare-fun b!4520626 () Bool)

(assert (=> b!4520626 (= e!2816470 call!314967)))

(declare-fun b!4520627 () Bool)

(assert (=> b!4520627 (= e!2816471 (contains!13373 lt!1697624 (tuple2!51077 (_1!28832 lt!1697023) (_2!28832 lt!1697023))))))

(declare-fun bm!314964 () Bool)

(assert (=> bm!314964 (= call!314969 ($colon$colon!936 e!2816472 (ite c!771519 (h!56500 (toList!4327 lt!1697001)) (tuple2!51077 (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))))

(declare-fun c!771522 () Bool)

(assert (=> bm!314964 (= c!771522 c!771519)))

(declare-fun b!4520628 () Bool)

(assert (=> b!4520628 (= e!2816470 call!314967)))

(assert (= (and d!1392846 c!771519) b!4520622))

(assert (= (and d!1392846 (not c!771519)) b!4520625))

(assert (= (and b!4520625 c!771520) b!4520620))

(assert (= (and b!4520625 (not c!771520)) b!4520624))

(assert (= (and b!4520624 c!771521) b!4520626))

(assert (= (and b!4520624 (not c!771521)) b!4520628))

(assert (= (or b!4520626 b!4520628) bm!314963))

(assert (= (or b!4520620 bm!314963) bm!314962))

(assert (= (or b!4520622 bm!314962) bm!314964))

(assert (= (and bm!314964 c!771522) b!4520621))

(assert (= (and bm!314964 (not c!771522)) b!4520623))

(assert (= (and d!1392846 res!1881429) b!4520619))

(assert (= (and b!4520619 res!1881430) b!4520627))

(declare-fun m!5268947 () Bool)

(assert (=> b!4520627 m!5268947))

(declare-fun m!5268953 () Bool)

(assert (=> bm!314964 m!5268953))

(declare-fun m!5268955 () Bool)

(assert (=> d!1392846 m!5268955))

(declare-fun m!5268957 () Bool)

(assert (=> d!1392846 m!5268957))

(declare-fun m!5268961 () Bool)

(assert (=> b!4520621 m!5268961))

(declare-fun m!5268963 () Bool)

(assert (=> b!4520619 m!5268963))

(assert (=> d!1392586 d!1392846))

(declare-fun d!1392848 () Bool)

(declare-fun res!1881431 () Bool)

(declare-fun e!2816473 () Bool)

(assert (=> d!1392848 (=> res!1881431 e!2816473)))

(assert (=> d!1392848 (= res!1881431 (not ((_ is Cons!50646) (t!357732 (_2!28832 lt!1697023)))))))

(assert (=> d!1392848 (= (noDuplicateKeys!1160 (t!357732 (_2!28832 lt!1697023))) e!2816473)))

(declare-fun b!4520629 () Bool)

(declare-fun e!2816474 () Bool)

(assert (=> b!4520629 (= e!2816473 e!2816474)))

(declare-fun res!1881432 () Bool)

(assert (=> b!4520629 (=> (not res!1881432) (not e!2816474))))

(assert (=> b!4520629 (= res!1881432 (not (containsKey!1780 (t!357732 (t!357732 (_2!28832 lt!1697023))) (_1!28831 (h!56499 (t!357732 (_2!28832 lt!1697023)))))))))

(declare-fun b!4520630 () Bool)

(assert (=> b!4520630 (= e!2816474 (noDuplicateKeys!1160 (t!357732 (t!357732 (_2!28832 lt!1697023)))))))

(assert (= (and d!1392848 (not res!1881431)) b!4520629))

(assert (= (and b!4520629 res!1881432) b!4520630))

(declare-fun m!5268981 () Bool)

(assert (=> b!4520629 m!5268981))

(declare-fun m!5268983 () Bool)

(assert (=> b!4520630 m!5268983))

(assert (=> b!4520101 d!1392848))

(declare-fun bm!314965 () Bool)

(declare-fun call!314970 () Bool)

(declare-fun e!2816478 () List!50773)

(assert (=> bm!314965 (= call!314970 (contains!13375 e!2816478 key!3287))))

(declare-fun c!771525 () Bool)

(declare-fun c!771524 () Bool)

(assert (=> bm!314965 (= c!771525 c!771524)))

(declare-fun b!4520631 () Bool)

(declare-fun e!2816479 () Unit!95040)

(declare-fun Unit!95145 () Unit!95040)

(assert (=> b!4520631 (= e!2816479 Unit!95145)))

(declare-fun b!4520632 () Bool)

(declare-fun e!2816480 () Unit!95040)

(declare-fun lt!1697627 () Unit!95040)

(assert (=> b!4520632 (= e!2816480 lt!1697627)))

(declare-fun lt!1697632 () Unit!95040)

(assert (=> b!4520632 (= lt!1697632 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 (extractMap!1216 (toList!4327 lm!1477))) key!3287))))

(assert (=> b!4520632 (isDefined!8399 (getValueByKey!1092 (toList!4328 (extractMap!1216 (toList!4327 lm!1477))) key!3287))))

(declare-fun lt!1697629 () Unit!95040)

(assert (=> b!4520632 (= lt!1697629 lt!1697632)))

(assert (=> b!4520632 (= lt!1697627 (lemmaInListThenGetKeysListContains!461 (toList!4328 (extractMap!1216 (toList!4327 lm!1477))) key!3287))))

(assert (=> b!4520632 call!314970))

(declare-fun b!4520633 () Bool)

(declare-fun e!2816476 () Bool)

(assert (=> b!4520633 (= e!2816476 (contains!13375 (keys!17594 (extractMap!1216 (toList!4327 lm!1477))) key!3287))))

(declare-fun b!4520634 () Bool)

(assert (=> b!4520634 (= e!2816478 (getKeysList!465 (toList!4328 (extractMap!1216 (toList!4327 lm!1477)))))))

(declare-fun b!4520635 () Bool)

(assert (=> b!4520635 false))

(declare-fun lt!1697630 () Unit!95040)

(declare-fun lt!1697626 () Unit!95040)

(assert (=> b!4520635 (= lt!1697630 lt!1697626)))

(assert (=> b!4520635 (containsKey!1783 (toList!4328 (extractMap!1216 (toList!4327 lm!1477))) key!3287)))

(assert (=> b!4520635 (= lt!1697626 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 (extractMap!1216 (toList!4327 lm!1477))) key!3287))))

(declare-fun Unit!95146 () Unit!95040)

(assert (=> b!4520635 (= e!2816479 Unit!95146)))

(declare-fun b!4520636 () Bool)

(assert (=> b!4520636 (= e!2816480 e!2816479)))

(declare-fun c!771523 () Bool)

(assert (=> b!4520636 (= c!771523 call!314970)))

(declare-fun b!4520637 () Bool)

(declare-fun e!2816475 () Bool)

(assert (=> b!4520637 (= e!2816475 e!2816476)))

(declare-fun res!1881434 () Bool)

(assert (=> b!4520637 (=> (not res!1881434) (not e!2816476))))

(assert (=> b!4520637 (= res!1881434 (isDefined!8399 (getValueByKey!1092 (toList!4328 (extractMap!1216 (toList!4327 lm!1477))) key!3287)))))

(declare-fun d!1392850 () Bool)

(assert (=> d!1392850 e!2816475))

(declare-fun res!1881433 () Bool)

(assert (=> d!1392850 (=> res!1881433 e!2816475)))

(declare-fun e!2816477 () Bool)

(assert (=> d!1392850 (= res!1881433 e!2816477)))

(declare-fun res!1881435 () Bool)

(assert (=> d!1392850 (=> (not res!1881435) (not e!2816477))))

(declare-fun lt!1697625 () Bool)

(assert (=> d!1392850 (= res!1881435 (not lt!1697625))))

(declare-fun lt!1697631 () Bool)

(assert (=> d!1392850 (= lt!1697625 lt!1697631)))

(declare-fun lt!1697628 () Unit!95040)

(assert (=> d!1392850 (= lt!1697628 e!2816480)))

(assert (=> d!1392850 (= c!771524 lt!1697631)))

(assert (=> d!1392850 (= lt!1697631 (containsKey!1783 (toList!4328 (extractMap!1216 (toList!4327 lm!1477))) key!3287))))

(assert (=> d!1392850 (= (contains!13372 (extractMap!1216 (toList!4327 lm!1477)) key!3287) lt!1697625)))

(declare-fun b!4520638 () Bool)

(assert (=> b!4520638 (= e!2816477 (not (contains!13375 (keys!17594 (extractMap!1216 (toList!4327 lm!1477))) key!3287)))))

(declare-fun b!4520639 () Bool)

(assert (=> b!4520639 (= e!2816478 (keys!17594 (extractMap!1216 (toList!4327 lm!1477))))))

(assert (= (and d!1392850 c!771524) b!4520632))

(assert (= (and d!1392850 (not c!771524)) b!4520636))

(assert (= (and b!4520636 c!771523) b!4520635))

(assert (= (and b!4520636 (not c!771523)) b!4520631))

(assert (= (or b!4520632 b!4520636) bm!314965))

(assert (= (and bm!314965 c!771525) b!4520634))

(assert (= (and bm!314965 (not c!771525)) b!4520639))

(assert (= (and d!1392850 res!1881435) b!4520638))

(assert (= (and d!1392850 (not res!1881433)) b!4520637))

(assert (= (and b!4520637 res!1881434) b!4520633))

(declare-fun m!5269003 () Bool)

(assert (=> d!1392850 m!5269003))

(declare-fun m!5269005 () Bool)

(assert (=> b!4520637 m!5269005))

(assert (=> b!4520637 m!5269005))

(declare-fun m!5269007 () Bool)

(assert (=> b!4520637 m!5269007))

(assert (=> b!4520639 m!5267493))

(declare-fun m!5269009 () Bool)

(assert (=> b!4520639 m!5269009))

(declare-fun m!5269011 () Bool)

(assert (=> bm!314965 m!5269011))

(assert (=> b!4520638 m!5267493))

(assert (=> b!4520638 m!5269009))

(assert (=> b!4520638 m!5269009))

(declare-fun m!5269013 () Bool)

(assert (=> b!4520638 m!5269013))

(assert (=> b!4520633 m!5267493))

(assert (=> b!4520633 m!5269009))

(assert (=> b!4520633 m!5269009))

(assert (=> b!4520633 m!5269013))

(assert (=> b!4520635 m!5269003))

(declare-fun m!5269015 () Bool)

(assert (=> b!4520635 m!5269015))

(declare-fun m!5269017 () Bool)

(assert (=> b!4520634 m!5269017))

(declare-fun m!5269019 () Bool)

(assert (=> b!4520632 m!5269019))

(assert (=> b!4520632 m!5269005))

(assert (=> b!4520632 m!5269005))

(assert (=> b!4520632 m!5269007))

(declare-fun m!5269021 () Bool)

(assert (=> b!4520632 m!5269021))

(assert (=> d!1392582 d!1392850))

(assert (=> d!1392582 d!1392416))

(declare-fun d!1392858 () Bool)

(assert (=> d!1392858 (not (contains!13372 (extractMap!1216 (toList!4327 lm!1477)) key!3287))))

(assert (=> d!1392858 true))

(declare-fun _$26!374 () Unit!95040)

(assert (=> d!1392858 (= (choose!29525 lm!1477 key!3287 hashF!1107) _$26!374)))

(declare-fun bs!855951 () Bool)

(assert (= bs!855951 d!1392858))

(assert (=> bs!855951 m!5267493))

(assert (=> bs!855951 m!5267493))

(assert (=> bs!855951 m!5268311))

(assert (=> d!1392582 d!1392858))

(declare-fun d!1392872 () Bool)

(declare-fun res!1881444 () Bool)

(declare-fun e!2816489 () Bool)

(assert (=> d!1392872 (=> res!1881444 e!2816489)))

(assert (=> d!1392872 (= res!1881444 ((_ is Nil!50647) (toList!4327 lm!1477)))))

(assert (=> d!1392872 (= (forall!10263 (toList!4327 lm!1477) lambda!172455) e!2816489)))

(declare-fun b!4520648 () Bool)

(declare-fun e!2816490 () Bool)

(assert (=> b!4520648 (= e!2816489 e!2816490)))

(declare-fun res!1881445 () Bool)

(assert (=> b!4520648 (=> (not res!1881445) (not e!2816490))))

(assert (=> b!4520648 (= res!1881445 (dynLambda!21163 lambda!172455 (h!56500 (toList!4327 lm!1477))))))

(declare-fun b!4520649 () Bool)

(assert (=> b!4520649 (= e!2816490 (forall!10263 (t!357733 (toList!4327 lm!1477)) lambda!172455))))

(assert (= (and d!1392872 (not res!1881444)) b!4520648))

(assert (= (and b!4520648 res!1881445) b!4520649))

(declare-fun b_lambda!154983 () Bool)

(assert (=> (not b_lambda!154983) (not b!4520648)))

(declare-fun m!5269039 () Bool)

(assert (=> b!4520648 m!5269039))

(declare-fun m!5269041 () Bool)

(assert (=> b!4520649 m!5269041))

(assert (=> d!1392582 d!1392872))

(declare-fun d!1392874 () Bool)

(assert (=> d!1392874 (= (eq!617 (extractMap!1216 (toList!4327 (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178)))) (-!386 (extractMap!1216 (toList!4327 lt!1697021)) key!3287)) (= (content!8356 (toList!4328 (extractMap!1216 (toList!4327 (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178)))))) (content!8356 (toList!4328 (-!386 (extractMap!1216 (toList!4327 lt!1697021)) key!3287)))))))

(declare-fun bs!855952 () Bool)

(assert (= bs!855952 d!1392874))

(declare-fun m!5269043 () Bool)

(assert (=> bs!855952 m!5269043))

(declare-fun m!5269045 () Bool)

(assert (=> bs!855952 m!5269045))

(assert (=> d!1392458 d!1392874))

(declare-fun d!1392876 () Bool)

(declare-fun res!1881446 () Bool)

(declare-fun e!2816491 () Bool)

(assert (=> d!1392876 (=> res!1881446 e!2816491)))

(assert (=> d!1392876 (= res!1881446 ((_ is Nil!50647) (toList!4327 lt!1697021)))))

(assert (=> d!1392876 (= (forall!10263 (toList!4327 lt!1697021) lambda!172357) e!2816491)))

(declare-fun b!4520650 () Bool)

(declare-fun e!2816492 () Bool)

(assert (=> b!4520650 (= e!2816491 e!2816492)))

(declare-fun res!1881447 () Bool)

(assert (=> b!4520650 (=> (not res!1881447) (not e!2816492))))

(assert (=> b!4520650 (= res!1881447 (dynLambda!21163 lambda!172357 (h!56500 (toList!4327 lt!1697021))))))

(declare-fun b!4520651 () Bool)

(assert (=> b!4520651 (= e!2816492 (forall!10263 (t!357733 (toList!4327 lt!1697021)) lambda!172357))))

(assert (= (and d!1392876 (not res!1881446)) b!4520650))

(assert (= (and b!4520650 res!1881447) b!4520651))

(declare-fun b_lambda!154985 () Bool)

(assert (=> (not b_lambda!154985) (not b!4520650)))

(declare-fun m!5269047 () Bool)

(assert (=> b!4520650 m!5269047))

(declare-fun m!5269049 () Bool)

(assert (=> b!4520651 m!5269049))

(assert (=> d!1392458 d!1392876))

(declare-fun d!1392880 () Bool)

(assert (=> d!1392880 (eq!617 (extractMap!1216 (toList!4327 (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178)))) (-!386 (extractMap!1216 (toList!4327 lt!1697021)) key!3287))))

(assert (=> d!1392880 true))

(declare-fun _$8!653 () Unit!95040)

(assert (=> d!1392880 (= (choose!29515 lt!1697021 hash!344 newBucket!178 key!3287 hashF!1107) _$8!653)))

(declare-fun bs!855955 () Bool)

(assert (= bs!855955 d!1392880))

(assert (=> bs!855955 m!5267557))

(assert (=> bs!855955 m!5267863))

(assert (=> bs!855955 m!5267869))

(assert (=> bs!855955 m!5267863))

(assert (=> bs!855955 m!5267871))

(assert (=> bs!855955 m!5267557))

(assert (=> bs!855955 m!5267865))

(assert (=> bs!855955 m!5267869))

(assert (=> d!1392458 d!1392880))

(declare-fun bs!855956 () Bool)

(declare-fun d!1392900 () Bool)

(assert (= bs!855956 (and d!1392900 d!1392458)))

(declare-fun lambda!172510 () Int)

(assert (=> bs!855956 (= lambda!172510 lambda!172357)))

(declare-fun bs!855957 () Bool)

(assert (= bs!855957 (and d!1392900 d!1392542)))

(assert (=> bs!855957 (= lambda!172510 lambda!172442)))

(declare-fun bs!855958 () Bool)

(assert (= bs!855958 (and d!1392900 d!1392534)))

(assert (=> bs!855958 (= lambda!172510 lambda!172439)))

(declare-fun bs!855959 () Bool)

(assert (= bs!855959 (and d!1392900 d!1392582)))

(assert (=> bs!855959 (= lambda!172510 lambda!172455)))

(declare-fun bs!855960 () Bool)

(assert (= bs!855960 (and d!1392900 d!1392526)))

(assert (=> bs!855960 (= lambda!172510 lambda!172437)))

(declare-fun bs!855961 () Bool)

(assert (= bs!855961 (and d!1392900 d!1392530)))

(assert (=> bs!855961 (= lambda!172510 lambda!172438)))

(declare-fun bs!855962 () Bool)

(assert (= bs!855962 (and d!1392900 d!1392416)))

(assert (=> bs!855962 (= lambda!172510 lambda!172348)))

(declare-fun bs!855963 () Bool)

(assert (= bs!855963 (and d!1392900 d!1392446)))

(assert (=> bs!855963 (not (= lambda!172510 lambda!172351))))

(declare-fun bs!855964 () Bool)

(assert (= bs!855964 (and d!1392900 d!1392560)))

(assert (=> bs!855964 (= lambda!172510 lambda!172448)))

(declare-fun bs!855965 () Bool)

(assert (= bs!855965 (and d!1392900 start!447492)))

(assert (=> bs!855965 (= lambda!172510 lambda!172325)))

(declare-fun bs!855966 () Bool)

(assert (= bs!855966 (and d!1392900 d!1392516)))

(assert (=> bs!855966 (= lambda!172510 lambda!172434)))

(declare-fun bs!855967 () Bool)

(assert (= bs!855967 (and d!1392900 d!1392462)))

(assert (=> bs!855967 (= lambda!172510 lambda!172358)))

(declare-fun bs!855968 () Bool)

(assert (= bs!855968 (and d!1392900 d!1392468)))

(assert (=> bs!855968 (= lambda!172510 lambda!172359)))

(declare-fun bs!855969 () Bool)

(assert (= bs!855969 (and d!1392900 d!1392796)))

(assert (=> bs!855969 (= lambda!172510 lambda!172505)))

(declare-fun lt!1697650 () ListMap!3589)

(assert (=> d!1392900 (invariantList!1017 (toList!4328 lt!1697650))))

(declare-fun e!2816515 () ListMap!3589)

(assert (=> d!1392900 (= lt!1697650 e!2816515)))

(declare-fun c!771532 () Bool)

(assert (=> d!1392900 (= c!771532 ((_ is Cons!50647) (toList!4327 (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178)))))))

(assert (=> d!1392900 (forall!10263 (toList!4327 (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178))) lambda!172510)))

(assert (=> d!1392900 (= (extractMap!1216 (toList!4327 (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178)))) lt!1697650)))

(declare-fun b!4520680 () Bool)

(assert (=> b!4520680 (= e!2816515 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178))))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178)))))))))

(declare-fun b!4520681 () Bool)

(assert (=> b!4520681 (= e!2816515 (ListMap!3590 Nil!50646))))

(assert (= (and d!1392900 c!771532) b!4520680))

(assert (= (and d!1392900 (not c!771532)) b!4520681))

(declare-fun m!5269099 () Bool)

(assert (=> d!1392900 m!5269099))

(declare-fun m!5269101 () Bool)

(assert (=> d!1392900 m!5269101))

(declare-fun m!5269103 () Bool)

(assert (=> b!4520680 m!5269103))

(assert (=> b!4520680 m!5269103))

(declare-fun m!5269105 () Bool)

(assert (=> b!4520680 m!5269105))

(assert (=> d!1392458 d!1392900))

(declare-fun d!1392902 () Bool)

(declare-fun e!2816516 () Bool)

(assert (=> d!1392902 e!2816516))

(declare-fun res!1881465 () Bool)

(assert (=> d!1392902 (=> (not res!1881465) (not e!2816516))))

(declare-fun lt!1697652 () ListLongMap!2959)

(assert (=> d!1392902 (= res!1881465 (contains!13371 lt!1697652 (_1!28832 (tuple2!51077 hash!344 newBucket!178))))))

(declare-fun lt!1697654 () List!50771)

(assert (=> d!1392902 (= lt!1697652 (ListLongMap!2960 lt!1697654))))

(declare-fun lt!1697651 () Unit!95040)

(declare-fun lt!1697653 () Unit!95040)

(assert (=> d!1392902 (= lt!1697651 lt!1697653)))

(assert (=> d!1392902 (= (getValueByKey!1093 lt!1697654 (_1!28832 (tuple2!51077 hash!344 newBucket!178))) (Some!11112 (_2!28832 (tuple2!51077 hash!344 newBucket!178))))))

(assert (=> d!1392902 (= lt!1697653 (lemmaContainsTupThenGetReturnValue!678 lt!1697654 (_1!28832 (tuple2!51077 hash!344 newBucket!178)) (_2!28832 (tuple2!51077 hash!344 newBucket!178))))))

(assert (=> d!1392902 (= lt!1697654 (insertStrictlySorted!408 (toList!4327 lt!1697021) (_1!28832 (tuple2!51077 hash!344 newBucket!178)) (_2!28832 (tuple2!51077 hash!344 newBucket!178))))))

(assert (=> d!1392902 (= (+!1538 lt!1697021 (tuple2!51077 hash!344 newBucket!178)) lt!1697652)))

(declare-fun b!4520682 () Bool)

(declare-fun res!1881464 () Bool)

(assert (=> b!4520682 (=> (not res!1881464) (not e!2816516))))

(assert (=> b!4520682 (= res!1881464 (= (getValueByKey!1093 (toList!4327 lt!1697652) (_1!28832 (tuple2!51077 hash!344 newBucket!178))) (Some!11112 (_2!28832 (tuple2!51077 hash!344 newBucket!178)))))))

(declare-fun b!4520683 () Bool)

(assert (=> b!4520683 (= e!2816516 (contains!13373 (toList!4327 lt!1697652) (tuple2!51077 hash!344 newBucket!178)))))

(assert (= (and d!1392902 res!1881465) b!4520682))

(assert (= (and b!4520682 res!1881464) b!4520683))

(declare-fun m!5269107 () Bool)

(assert (=> d!1392902 m!5269107))

(declare-fun m!5269109 () Bool)

(assert (=> d!1392902 m!5269109))

(declare-fun m!5269111 () Bool)

(assert (=> d!1392902 m!5269111))

(declare-fun m!5269113 () Bool)

(assert (=> d!1392902 m!5269113))

(declare-fun m!5269115 () Bool)

(assert (=> b!4520682 m!5269115))

(declare-fun m!5269117 () Bool)

(assert (=> b!4520683 m!5269117))

(assert (=> d!1392458 d!1392902))

(assert (=> d!1392458 d!1392534))

(declare-fun d!1392904 () Bool)

(declare-fun e!2816517 () Bool)

(assert (=> d!1392904 e!2816517))

(declare-fun res!1881466 () Bool)

(assert (=> d!1392904 (=> (not res!1881466) (not e!2816517))))

(declare-fun lt!1697655 () ListMap!3589)

(assert (=> d!1392904 (= res!1881466 (not (contains!13372 lt!1697655 key!3287)))))

(assert (=> d!1392904 (= lt!1697655 (ListMap!3590 (removePresrvNoDuplicatedKeys!140 (toList!4328 (extractMap!1216 (toList!4327 lt!1697021))) key!3287)))))

(assert (=> d!1392904 (= (-!386 (extractMap!1216 (toList!4327 lt!1697021)) key!3287) lt!1697655)))

(declare-fun b!4520684 () Bool)

(assert (=> b!4520684 (= e!2816517 (= ((_ map and) (content!8357 (keys!17594 (extractMap!1216 (toList!4327 lt!1697021)))) ((_ map not) (store ((as const (Array K!12040 Bool)) false) key!3287 true))) (content!8357 (keys!17594 lt!1697655))))))

(assert (= (and d!1392904 res!1881466) b!4520684))

(declare-fun m!5269119 () Bool)

(assert (=> d!1392904 m!5269119))

(declare-fun m!5269121 () Bool)

(assert (=> d!1392904 m!5269121))

(assert (=> b!4520684 m!5267557))

(declare-fun m!5269123 () Bool)

(assert (=> b!4520684 m!5269123))

(declare-fun m!5269125 () Bool)

(assert (=> b!4520684 m!5269125))

(assert (=> b!4520684 m!5267883))

(assert (=> b!4520684 m!5269123))

(declare-fun m!5269127 () Bool)

(assert (=> b!4520684 m!5269127))

(assert (=> b!4520684 m!5269125))

(declare-fun m!5269129 () Bool)

(assert (=> b!4520684 m!5269129))

(assert (=> d!1392458 d!1392904))

(declare-fun d!1392908 () Bool)

(assert (=> d!1392908 (= (isDefined!8399 (getValueByKey!1092 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287)) (not (isEmpty!28670 (getValueByKey!1092 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))))

(declare-fun bs!855971 () Bool)

(assert (= bs!855971 d!1392908))

(assert (=> bs!855971 m!5268145))

(declare-fun m!5269135 () Bool)

(assert (=> bs!855971 m!5269135))

(assert (=> b!4520084 d!1392908))

(declare-fun b!4520691 () Bool)

(declare-fun e!2816523 () Option!11112)

(assert (=> b!4520691 (= e!2816523 (getValueByKey!1092 (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) key!3287))))

(declare-fun b!4520690 () Bool)

(declare-fun e!2816522 () Option!11112)

(assert (=> b!4520690 (= e!2816522 e!2816523)))

(declare-fun c!771534 () Bool)

(assert (=> b!4520690 (= c!771534 (and ((_ is Cons!50646) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (not (= (_1!28831 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) key!3287))))))

(declare-fun d!1392912 () Bool)

(declare-fun c!771533 () Bool)

(assert (=> d!1392912 (= c!771533 (and ((_ is Cons!50646) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= (_1!28831 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) key!3287)))))

(assert (=> d!1392912 (= (getValueByKey!1092 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287) e!2816522)))

(declare-fun b!4520692 () Bool)

(assert (=> b!4520692 (= e!2816523 None!11111)))

(declare-fun b!4520689 () Bool)

(assert (=> b!4520689 (= e!2816522 (Some!11111 (_2!28831 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))))))

(assert (= (and d!1392912 c!771533) b!4520689))

(assert (= (and d!1392912 (not c!771533)) b!4520690))

(assert (= (and b!4520690 c!771534) b!4520691))

(assert (= (and b!4520690 (not c!771534)) b!4520692))

(declare-fun m!5269143 () Bool)

(assert (=> b!4520691 m!5269143))

(assert (=> b!4520084 d!1392912))

(declare-fun d!1392916 () Bool)

(declare-fun res!1881472 () Bool)

(declare-fun e!2816525 () Bool)

(assert (=> d!1392916 (=> res!1881472 e!2816525)))

(assert (=> d!1392916 (= res!1881472 (not ((_ is Cons!50646) (t!357732 newBucket!178))))))

(assert (=> d!1392916 (= (noDuplicateKeys!1160 (t!357732 newBucket!178)) e!2816525)))

(declare-fun b!4520694 () Bool)

(declare-fun e!2816527 () Bool)

(assert (=> b!4520694 (= e!2816525 e!2816527)))

(declare-fun res!1881474 () Bool)

(assert (=> b!4520694 (=> (not res!1881474) (not e!2816527))))

(assert (=> b!4520694 (= res!1881474 (not (containsKey!1780 (t!357732 (t!357732 newBucket!178)) (_1!28831 (h!56499 (t!357732 newBucket!178))))))))

(declare-fun b!4520696 () Bool)

(assert (=> b!4520696 (= e!2816527 (noDuplicateKeys!1160 (t!357732 (t!357732 newBucket!178))))))

(assert (= (and d!1392916 (not res!1881472)) b!4520694))

(assert (= (and b!4520694 res!1881474) b!4520696))

(declare-fun m!5269145 () Bool)

(assert (=> b!4520694 m!5269145))

(declare-fun m!5269147 () Bool)

(assert (=> b!4520696 m!5269147))

(assert (=> b!4519819 d!1392916))

(declare-fun bs!855972 () Bool)

(declare-fun b!4520698 () Bool)

(assert (= bs!855972 (and b!4520698 b!4520341)))

(declare-fun lambda!172511 () Int)

(assert (=> bs!855972 (= (= (toList!4328 lt!1697008) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172511 lambda!172475))))

(declare-fun bs!855973 () Bool)

(assert (= bs!855973 (and b!4520698 b!4520344)))

(assert (=> bs!855973 (= (= (toList!4328 lt!1697008) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172511 lambda!172476))))

(declare-fun bs!855974 () Bool)

(assert (= bs!855974 (and b!4520698 b!4520339)))

(assert (=> bs!855974 (= (= (toList!4328 lt!1697008) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172511 lambda!172477))))

(declare-fun bs!855975 () Bool)

(assert (= bs!855975 (and b!4520698 b!4520413)))

(assert (=> bs!855975 (= (= (toList!4328 lt!1697008) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172511 lambda!172483))))

(assert (=> b!4520698 true))

(declare-fun bs!855976 () Bool)

(declare-fun b!4520699 () Bool)

(assert (= bs!855976 (and b!4520699 b!4520343)))

(declare-fun lambda!172512 () Int)

(assert (=> bs!855976 (= lambda!172512 lambda!172478)))

(declare-fun bs!855977 () Bool)

(assert (= bs!855977 (and b!4520699 b!4520414)))

(assert (=> bs!855977 (= lambda!172512 lambda!172484)))

(declare-fun d!1392918 () Bool)

(declare-fun e!2816528 () Bool)

(assert (=> d!1392918 e!2816528))

(declare-fun res!1881477 () Bool)

(assert (=> d!1392918 (=> (not res!1881477) (not e!2816528))))

(declare-fun lt!1697657 () List!50773)

(assert (=> d!1392918 (= res!1881477 (noDuplicate!748 lt!1697657))))

(assert (=> d!1392918 (= lt!1697657 (getKeysList!465 (toList!4328 lt!1697008)))))

(assert (=> d!1392918 (= (keys!17594 lt!1697008) lt!1697657)))

(declare-fun b!4520697 () Bool)

(declare-fun res!1881475 () Bool)

(assert (=> b!4520697 (=> (not res!1881475) (not e!2816528))))

(assert (=> b!4520697 (= res!1881475 (= (length!352 lt!1697657) (length!353 (toList!4328 lt!1697008))))))

(declare-fun res!1881476 () Bool)

(assert (=> b!4520698 (=> (not res!1881476) (not e!2816528))))

(assert (=> b!4520698 (= res!1881476 (forall!10267 lt!1697657 lambda!172511))))

(assert (=> b!4520699 (= e!2816528 (= (content!8357 lt!1697657) (content!8357 (map!11139 (toList!4328 lt!1697008) lambda!172512))))))

(assert (= (and d!1392918 res!1881477) b!4520697))

(assert (= (and b!4520697 res!1881475) b!4520698))

(assert (= (and b!4520698 res!1881476) b!4520699))

(declare-fun m!5269153 () Bool)

(assert (=> d!1392918 m!5269153))

(assert (=> d!1392918 m!5267731))

(declare-fun m!5269155 () Bool)

(assert (=> b!4520697 m!5269155))

(declare-fun m!5269157 () Bool)

(assert (=> b!4520697 m!5269157))

(declare-fun m!5269159 () Bool)

(assert (=> b!4520698 m!5269159))

(declare-fun m!5269161 () Bool)

(assert (=> b!4520699 m!5269161))

(declare-fun m!5269163 () Bool)

(assert (=> b!4520699 m!5269163))

(assert (=> b!4520699 m!5269163))

(declare-fun m!5269165 () Bool)

(assert (=> b!4520699 m!5269165))

(assert (=> b!4519905 d!1392918))

(declare-fun d!1392926 () Bool)

(declare-fun lt!1697658 () Bool)

(assert (=> d!1392926 (= lt!1697658 (select (content!8359 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697012))))

(declare-fun e!2816531 () Bool)

(assert (=> d!1392926 (= lt!1697658 e!2816531)))

(declare-fun res!1881480 () Bool)

(assert (=> d!1392926 (=> (not res!1881480) (not e!2816531))))

(assert (=> d!1392926 (= res!1881480 ((_ is Cons!50647) (t!357733 (t!357733 (toList!4327 lm!1477)))))))

(assert (=> d!1392926 (= (contains!13373 (t!357733 (t!357733 (toList!4327 lm!1477))) lt!1697012) lt!1697658)))

(declare-fun b!4520702 () Bool)

(declare-fun e!2816532 () Bool)

(assert (=> b!4520702 (= e!2816531 e!2816532)))

(declare-fun res!1881481 () Bool)

(assert (=> b!4520702 (=> res!1881481 e!2816532)))

(assert (=> b!4520702 (= res!1881481 (= (h!56500 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697012))))

(declare-fun b!4520703 () Bool)

(assert (=> b!4520703 (= e!2816532 (contains!13373 (t!357733 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697012))))

(assert (= (and d!1392926 res!1881480) b!4520702))

(assert (= (and b!4520702 (not res!1881481)) b!4520703))

(assert (=> d!1392926 m!5268437))

(declare-fun m!5269171 () Bool)

(assert (=> d!1392926 m!5269171))

(declare-fun m!5269173 () Bool)

(assert (=> b!4520703 m!5269173))

(assert (=> b!4520158 d!1392926))

(declare-fun b!4520707 () Bool)

(declare-fun e!2816535 () Option!11113)

(declare-fun e!2816536 () Option!11113)

(assert (=> b!4520707 (= e!2816535 e!2816536)))

(declare-fun c!771536 () Bool)

(assert (=> b!4520707 (= c!771536 (and ((_ is Cons!50647) (toList!4327 lt!1697436)) (not (= (_1!28832 (h!56500 (toList!4327 lt!1697436))) (_1!28832 lt!1697023)))))))

(declare-fun b!4520708 () Bool)

(assert (=> b!4520708 (= e!2816536 (getValueByKey!1093 (t!357733 (toList!4327 lt!1697436)) (_1!28832 lt!1697023)))))

(declare-fun b!4520709 () Bool)

(assert (=> b!4520709 (= e!2816536 None!11112)))

(declare-fun b!4520706 () Bool)

(assert (=> b!4520706 (= e!2816535 (Some!11112 (_2!28832 (h!56500 (toList!4327 lt!1697436)))))))

(declare-fun d!1392930 () Bool)

(declare-fun c!771535 () Bool)

(assert (=> d!1392930 (= c!771535 (and ((_ is Cons!50647) (toList!4327 lt!1697436)) (= (_1!28832 (h!56500 (toList!4327 lt!1697436))) (_1!28832 lt!1697023))))))

(assert (=> d!1392930 (= (getValueByKey!1093 (toList!4327 lt!1697436) (_1!28832 lt!1697023)) e!2816535)))

(assert (= (and d!1392930 c!771535) b!4520706))

(assert (= (and d!1392930 (not c!771535)) b!4520707))

(assert (= (and b!4520707 c!771536) b!4520708))

(assert (= (and b!4520707 (not c!771536)) b!4520709))

(declare-fun m!5269179 () Bool)

(assert (=> b!4520708 m!5269179))

(assert (=> b!4520161 d!1392930))

(declare-fun d!1392936 () Bool)

(assert (=> d!1392936 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697021) hash!344))))

(declare-fun lt!1697682 () Unit!95040)

(declare-fun choose!29536 (List!50771 (_ BitVec 64)) Unit!95040)

(assert (=> d!1392936 (= lt!1697682 (choose!29536 (toList!4327 lt!1697021) hash!344))))

(declare-fun e!2816544 () Bool)

(assert (=> d!1392936 e!2816544))

(declare-fun res!1881491 () Bool)

(assert (=> d!1392936 (=> (not res!1881491) (not e!2816544))))

(assert (=> d!1392936 (= res!1881491 (isStrictlySorted!431 (toList!4327 lt!1697021)))))

(assert (=> d!1392936 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!997 (toList!4327 lt!1697021) hash!344) lt!1697682)))

(declare-fun b!4520719 () Bool)

(assert (=> b!4520719 (= e!2816544 (containsKey!1784 (toList!4327 lt!1697021) hash!344))))

(assert (= (and d!1392936 res!1881491) b!4520719))

(assert (=> d!1392936 m!5267923))

(assert (=> d!1392936 m!5267923))

(assert (=> d!1392936 m!5268133))

(declare-fun m!5269185 () Bool)

(assert (=> d!1392936 m!5269185))

(assert (=> d!1392936 m!5268687))

(assert (=> b!4520719 m!5268129))

(assert (=> b!4520075 d!1392936))

(declare-fun d!1392940 () Bool)

(assert (=> d!1392940 (= (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697021) hash!344)) (not (isEmpty!28673 (getValueByKey!1093 (toList!4327 lt!1697021) hash!344))))))

(declare-fun bs!855998 () Bool)

(assert (= bs!855998 d!1392940))

(assert (=> bs!855998 m!5267923))

(declare-fun m!5269187 () Bool)

(assert (=> bs!855998 m!5269187))

(assert (=> b!4520075 d!1392940))

(assert (=> b!4520075 d!1392638))

(declare-fun d!1392942 () Bool)

(declare-fun res!1881493 () Bool)

(declare-fun e!2816545 () Bool)

(assert (=> d!1392942 (=> res!1881493 e!2816545)))

(declare-fun e!2816546 () Bool)

(assert (=> d!1392942 (= res!1881493 e!2816546)))

(declare-fun res!1881492 () Bool)

(assert (=> d!1392942 (=> (not res!1881492) (not e!2816546))))

(assert (=> d!1392942 (= res!1881492 ((_ is Cons!50647) (t!357733 (toList!4327 lt!1697021))))))

(assert (=> d!1392942 (= (containsKeyBiggerList!140 (t!357733 (toList!4327 lt!1697021)) key!3287) e!2816545)))

(declare-fun b!4520720 () Bool)

(assert (=> b!4520720 (= e!2816546 (containsKey!1780 (_2!28832 (h!56500 (t!357733 (toList!4327 lt!1697021)))) key!3287))))

(declare-fun b!4520721 () Bool)

(declare-fun e!2816547 () Bool)

(assert (=> b!4520721 (= e!2816545 e!2816547)))

(declare-fun res!1881494 () Bool)

(assert (=> b!4520721 (=> (not res!1881494) (not e!2816547))))

(assert (=> b!4520721 (= res!1881494 ((_ is Cons!50647) (t!357733 (toList!4327 lt!1697021))))))

(declare-fun b!4520722 () Bool)

(assert (=> b!4520722 (= e!2816547 (containsKeyBiggerList!140 (t!357733 (t!357733 (toList!4327 lt!1697021))) key!3287))))

(assert (= (and d!1392942 res!1881492) b!4520720))

(assert (= (and d!1392942 (not res!1881493)) b!4520721))

(assert (= (and b!4520721 res!1881494) b!4520722))

(declare-fun m!5269189 () Bool)

(assert (=> b!4520720 m!5269189))

(declare-fun m!5269191 () Bool)

(assert (=> b!4520722 m!5269191))

(assert (=> b!4520145 d!1392942))

(declare-fun d!1392944 () Bool)

(declare-fun res!1881495 () Bool)

(declare-fun e!2816548 () Bool)

(assert (=> d!1392944 (=> res!1881495 e!2816548)))

(assert (=> d!1392944 (= res!1881495 ((_ is Nil!50646) (toList!4328 lt!1697017)))))

(assert (=> d!1392944 (= (forall!10265 (toList!4328 lt!1697017) lambda!172451) e!2816548)))

(declare-fun b!4520723 () Bool)

(declare-fun e!2816549 () Bool)

(assert (=> b!4520723 (= e!2816548 e!2816549)))

(declare-fun res!1881496 () Bool)

(assert (=> b!4520723 (=> (not res!1881496) (not e!2816549))))

(assert (=> b!4520723 (= res!1881496 (dynLambda!21164 lambda!172451 (h!56499 (toList!4328 lt!1697017))))))

(declare-fun b!4520724 () Bool)

(assert (=> b!4520724 (= e!2816549 (forall!10265 (t!357732 (toList!4328 lt!1697017)) lambda!172451))))

(assert (= (and d!1392944 (not res!1881495)) b!4520723))

(assert (= (and b!4520723 res!1881496) b!4520724))

(declare-fun b_lambda!154999 () Bool)

(assert (=> (not b_lambda!154999) (not b!4520723)))

(declare-fun m!5269193 () Bool)

(assert (=> b!4520723 m!5269193))

(declare-fun m!5269195 () Bool)

(assert (=> b!4520724 m!5269195))

(assert (=> b!4520153 d!1392944))

(declare-fun d!1392946 () Bool)

(declare-fun c!771538 () Bool)

(assert (=> d!1392946 (= c!771538 ((_ is Nil!50647) (toList!4327 lm!1477)))))

(declare-fun e!2816550 () (InoxSet tuple2!51076))

(assert (=> d!1392946 (= (content!8359 (toList!4327 lm!1477)) e!2816550)))

(declare-fun b!4520725 () Bool)

(assert (=> b!4520725 (= e!2816550 ((as const (Array tuple2!51076 Bool)) false))))

(declare-fun b!4520726 () Bool)

(assert (=> b!4520726 (= e!2816550 ((_ map or) (store ((as const (Array tuple2!51076 Bool)) false) (h!56500 (toList!4327 lm!1477)) true) (content!8359 (t!357733 (toList!4327 lm!1477)))))))

(assert (= (and d!1392946 c!771538) b!4520725))

(assert (= (and d!1392946 (not c!771538)) b!4520726))

(declare-fun m!5269197 () Bool)

(assert (=> b!4520726 m!5269197))

(assert (=> b!4520726 m!5268303))

(assert (=> d!1392550 d!1392946))

(declare-fun d!1392948 () Bool)

(declare-fun lt!1697683 () Bool)

(assert (=> d!1392948 (= lt!1697683 (select (content!8357 e!2816009) key!3287))))

(declare-fun e!2816551 () Bool)

(assert (=> d!1392948 (= lt!1697683 e!2816551)))

(declare-fun res!1881497 () Bool)

(assert (=> d!1392948 (=> (not res!1881497) (not e!2816551))))

(assert (=> d!1392948 (= res!1881497 ((_ is Cons!50649) e!2816009))))

(assert (=> d!1392948 (= (contains!13375 e!2816009 key!3287) lt!1697683)))

(declare-fun b!4520727 () Bool)

(declare-fun e!2816552 () Bool)

(assert (=> b!4520727 (= e!2816551 e!2816552)))

(declare-fun res!1881498 () Bool)

(assert (=> b!4520727 (=> res!1881498 e!2816552)))

(assert (=> b!4520727 (= res!1881498 (= (h!56504 e!2816009) key!3287))))

(declare-fun b!4520728 () Bool)

(assert (=> b!4520728 (= e!2816552 (contains!13375 (t!357735 e!2816009) key!3287))))

(assert (= (and d!1392948 res!1881497) b!4520727))

(assert (= (and b!4520727 (not res!1881498)) b!4520728))

(declare-fun m!5269199 () Bool)

(assert (=> d!1392948 m!5269199))

(declare-fun m!5269201 () Bool)

(assert (=> d!1392948 m!5269201))

(declare-fun m!5269203 () Bool)

(assert (=> b!4520728 m!5269203))

(assert (=> bm!314900 d!1392948))

(declare-fun d!1392950 () Bool)

(declare-fun res!1881499 () Bool)

(declare-fun e!2816553 () Bool)

(assert (=> d!1392950 (=> res!1881499 e!2816553)))

(assert (=> d!1392950 (= res!1881499 ((_ is Nil!50646) (toList!4328 lt!1697024)))))

(assert (=> d!1392950 (= (forall!10265 (toList!4328 lt!1697024) lambda!172432) e!2816553)))

(declare-fun b!4520729 () Bool)

(declare-fun e!2816554 () Bool)

(assert (=> b!4520729 (= e!2816553 e!2816554)))

(declare-fun res!1881500 () Bool)

(assert (=> b!4520729 (=> (not res!1881500) (not e!2816554))))

(assert (=> b!4520729 (= res!1881500 (dynLambda!21164 lambda!172432 (h!56499 (toList!4328 lt!1697024))))))

(declare-fun b!4520730 () Bool)

(assert (=> b!4520730 (= e!2816554 (forall!10265 (t!357732 (toList!4328 lt!1697024)) lambda!172432))))

(assert (= (and d!1392950 (not res!1881499)) b!4520729))

(assert (= (and b!4520729 res!1881500) b!4520730))

(declare-fun b_lambda!155001 () Bool)

(assert (=> (not b_lambda!155001) (not b!4520729)))

(declare-fun m!5269205 () Bool)

(assert (=> b!4520729 m!5269205))

(declare-fun m!5269207 () Bool)

(assert (=> b!4520730 m!5269207))

(assert (=> b!4520059 d!1392950))

(declare-fun d!1392952 () Bool)

(declare-fun res!1881501 () Bool)

(declare-fun e!2816555 () Bool)

(assert (=> d!1392952 (=> res!1881501 e!2816555)))

(assert (=> d!1392952 (= res!1881501 ((_ is Nil!50646) (ite c!771397 (toList!4328 lt!1697017) (t!357732 (_2!28832 lt!1697023)))))))

(assert (=> d!1392952 (= (forall!10265 (ite c!771397 (toList!4328 lt!1697017) (t!357732 (_2!28832 lt!1697023))) (ite c!771397 lambda!172449 lambda!172451)) e!2816555)))

(declare-fun b!4520731 () Bool)

(declare-fun e!2816556 () Bool)

(assert (=> b!4520731 (= e!2816555 e!2816556)))

(declare-fun res!1881502 () Bool)

(assert (=> b!4520731 (=> (not res!1881502) (not e!2816556))))

(assert (=> b!4520731 (= res!1881502 (dynLambda!21164 (ite c!771397 lambda!172449 lambda!172451) (h!56499 (ite c!771397 (toList!4328 lt!1697017) (t!357732 (_2!28832 lt!1697023))))))))

(declare-fun b!4520732 () Bool)

(assert (=> b!4520732 (= e!2816556 (forall!10265 (t!357732 (ite c!771397 (toList!4328 lt!1697017) (t!357732 (_2!28832 lt!1697023)))) (ite c!771397 lambda!172449 lambda!172451)))))

(assert (= (and d!1392952 (not res!1881501)) b!4520731))

(assert (= (and b!4520731 res!1881502) b!4520732))

(declare-fun b_lambda!155003 () Bool)

(assert (=> (not b_lambda!155003) (not b!4520731)))

(declare-fun m!5269209 () Bool)

(assert (=> b!4520731 m!5269209))

(declare-fun m!5269211 () Bool)

(assert (=> b!4520732 m!5269211))

(assert (=> bm!314928 d!1392952))

(declare-fun d!1392954 () Bool)

(declare-fun res!1881503 () Bool)

(declare-fun e!2816557 () Bool)

(assert (=> d!1392954 (=> res!1881503 e!2816557)))

(assert (=> d!1392954 (= res!1881503 ((_ is Nil!50647) (toList!4327 lm!1477)))))

(assert (=> d!1392954 (= (forall!10263 (toList!4327 lm!1477) lambda!172351) e!2816557)))

(declare-fun b!4520733 () Bool)

(declare-fun e!2816558 () Bool)

(assert (=> b!4520733 (= e!2816557 e!2816558)))

(declare-fun res!1881504 () Bool)

(assert (=> b!4520733 (=> (not res!1881504) (not e!2816558))))

(assert (=> b!4520733 (= res!1881504 (dynLambda!21163 lambda!172351 (h!56500 (toList!4327 lm!1477))))))

(declare-fun b!4520734 () Bool)

(assert (=> b!4520734 (= e!2816558 (forall!10263 (t!357733 (toList!4327 lm!1477)) lambda!172351))))

(assert (= (and d!1392954 (not res!1881503)) b!4520733))

(assert (= (and b!4520733 res!1881504) b!4520734))

(declare-fun b_lambda!155005 () Bool)

(assert (=> (not b_lambda!155005) (not b!4520733)))

(declare-fun m!5269213 () Bool)

(assert (=> b!4520733 m!5269213))

(declare-fun m!5269215 () Bool)

(assert (=> b!4520734 m!5269215))

(assert (=> d!1392446 d!1392954))

(declare-fun bm!314970 () Bool)

(declare-fun call!314975 () Bool)

(declare-fun e!2816562 () List!50773)

(assert (=> bm!314970 (= call!314975 (contains!13375 e!2816562 key!3287))))

(declare-fun c!771541 () Bool)

(declare-fun c!771540 () Bool)

(assert (=> bm!314970 (= c!771541 c!771540)))

(declare-fun b!4520735 () Bool)

(declare-fun e!2816563 () Unit!95040)

(declare-fun Unit!95158 () Unit!95040)

(assert (=> b!4520735 (= e!2816563 Unit!95158)))

(declare-fun b!4520736 () Bool)

(declare-fun e!2816564 () Unit!95040)

(declare-fun lt!1697686 () Unit!95040)

(assert (=> b!4520736 (= e!2816564 lt!1697686)))

(declare-fun lt!1697691 () Unit!95040)

(assert (=> b!4520736 (= lt!1697691 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697172) key!3287))))

(assert (=> b!4520736 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697172) key!3287))))

(declare-fun lt!1697688 () Unit!95040)

(assert (=> b!4520736 (= lt!1697688 lt!1697691)))

(assert (=> b!4520736 (= lt!1697686 (lemmaInListThenGetKeysListContains!461 (toList!4328 lt!1697172) key!3287))))

(assert (=> b!4520736 call!314975))

(declare-fun b!4520737 () Bool)

(declare-fun e!2816560 () Bool)

(assert (=> b!4520737 (= e!2816560 (contains!13375 (keys!17594 lt!1697172) key!3287))))

(declare-fun b!4520738 () Bool)

(assert (=> b!4520738 (= e!2816562 (getKeysList!465 (toList!4328 lt!1697172)))))

(declare-fun b!4520739 () Bool)

(assert (=> b!4520739 false))

(declare-fun lt!1697689 () Unit!95040)

(declare-fun lt!1697685 () Unit!95040)

(assert (=> b!4520739 (= lt!1697689 lt!1697685)))

(assert (=> b!4520739 (containsKey!1783 (toList!4328 lt!1697172) key!3287)))

(assert (=> b!4520739 (= lt!1697685 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 lt!1697172) key!3287))))

(declare-fun Unit!95159 () Unit!95040)

(assert (=> b!4520739 (= e!2816563 Unit!95159)))

(declare-fun b!4520740 () Bool)

(assert (=> b!4520740 (= e!2816564 e!2816563)))

(declare-fun c!771539 () Bool)

(assert (=> b!4520740 (= c!771539 call!314975)))

(declare-fun b!4520741 () Bool)

(declare-fun e!2816559 () Bool)

(assert (=> b!4520741 (= e!2816559 e!2816560)))

(declare-fun res!1881506 () Bool)

(assert (=> b!4520741 (=> (not res!1881506) (not e!2816560))))

(assert (=> b!4520741 (= res!1881506 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697172) key!3287)))))

(declare-fun d!1392956 () Bool)

(assert (=> d!1392956 e!2816559))

(declare-fun res!1881505 () Bool)

(assert (=> d!1392956 (=> res!1881505 e!2816559)))

(declare-fun e!2816561 () Bool)

(assert (=> d!1392956 (= res!1881505 e!2816561)))

(declare-fun res!1881507 () Bool)

(assert (=> d!1392956 (=> (not res!1881507) (not e!2816561))))

(declare-fun lt!1697684 () Bool)

(assert (=> d!1392956 (= res!1881507 (not lt!1697684))))

(declare-fun lt!1697690 () Bool)

(assert (=> d!1392956 (= lt!1697684 lt!1697690)))

(declare-fun lt!1697687 () Unit!95040)

(assert (=> d!1392956 (= lt!1697687 e!2816564)))

(assert (=> d!1392956 (= c!771540 lt!1697690)))

(assert (=> d!1392956 (= lt!1697690 (containsKey!1783 (toList!4328 lt!1697172) key!3287))))

(assert (=> d!1392956 (= (contains!13372 lt!1697172 key!3287) lt!1697684)))

(declare-fun b!4520742 () Bool)

(assert (=> b!4520742 (= e!2816561 (not (contains!13375 (keys!17594 lt!1697172) key!3287)))))

(declare-fun b!4520743 () Bool)

(assert (=> b!4520743 (= e!2816562 (keys!17594 lt!1697172))))

(assert (= (and d!1392956 c!771540) b!4520736))

(assert (= (and d!1392956 (not c!771540)) b!4520740))

(assert (= (and b!4520740 c!771539) b!4520739))

(assert (= (and b!4520740 (not c!771539)) b!4520735))

(assert (= (or b!4520736 b!4520740) bm!314970))

(assert (= (and bm!314970 c!771541) b!4520738))

(assert (= (and bm!314970 (not c!771541)) b!4520743))

(assert (= (and d!1392956 res!1881507) b!4520742))

(assert (= (and d!1392956 (not res!1881505)) b!4520741))

(assert (= (and b!4520741 res!1881506) b!4520737))

(declare-fun m!5269217 () Bool)

(assert (=> d!1392956 m!5269217))

(declare-fun m!5269219 () Bool)

(assert (=> b!4520741 m!5269219))

(assert (=> b!4520741 m!5269219))

(declare-fun m!5269221 () Bool)

(assert (=> b!4520741 m!5269221))

(assert (=> b!4520743 m!5267881))

(declare-fun m!5269223 () Bool)

(assert (=> bm!314970 m!5269223))

(assert (=> b!4520742 m!5267881))

(assert (=> b!4520742 m!5267881))

(declare-fun m!5269225 () Bool)

(assert (=> b!4520742 m!5269225))

(assert (=> b!4520737 m!5267881))

(assert (=> b!4520737 m!5267881))

(assert (=> b!4520737 m!5269225))

(assert (=> b!4520739 m!5269217))

(declare-fun m!5269227 () Bool)

(assert (=> b!4520739 m!5269227))

(declare-fun m!5269229 () Bool)

(assert (=> b!4520738 m!5269229))

(declare-fun m!5269231 () Bool)

(assert (=> b!4520736 m!5269231))

(assert (=> b!4520736 m!5269219))

(assert (=> b!4520736 m!5269219))

(assert (=> b!4520736 m!5269221))

(declare-fun m!5269233 () Bool)

(assert (=> b!4520736 m!5269233))

(assert (=> d!1392460 d!1392956))

(declare-fun b!4520840 () Bool)

(declare-fun e!2816629 () Unit!95040)

(declare-fun Unit!95160 () Unit!95040)

(assert (=> b!4520840 (= e!2816629 Unit!95160)))

(declare-fun b!4520842 () Bool)

(declare-fun e!2816631 () Unit!95040)

(declare-fun Unit!95161 () Unit!95040)

(assert (=> b!4520842 (= e!2816631 Unit!95161)))

(declare-fun lt!1697783 () V!12286)

(declare-fun get!16589 (Option!11112) V!12286)

(assert (=> b!4520842 (= lt!1697783 (get!16589 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287)))))

(declare-fun lt!1697784 () K!12040)

(assert (=> b!4520842 (= lt!1697784 key!3287)))

(declare-fun lt!1697788 () K!12040)

(assert (=> b!4520842 (= lt!1697788 key!3287)))

(declare-fun lt!1697777 () Unit!95040)

(declare-fun lemmaContainsTupleThenContainsKey!62 (List!50770 K!12040 V!12286) Unit!95040)

(assert (=> b!4520842 (= lt!1697777 (lemmaContainsTupleThenContainsKey!62 (t!357732 (toList!4328 lt!1697020)) lt!1697784 (get!16589 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287))))))

(declare-fun call!314998 () Bool)

(assert (=> b!4520842 call!314998))

(declare-fun lt!1697789 () Unit!95040)

(assert (=> b!4520842 (= lt!1697789 lt!1697777)))

(assert (=> b!4520842 false))

(declare-fun b!4520843 () Bool)

(declare-fun Unit!95162 () Unit!95040)

(assert (=> b!4520843 (= e!2816631 Unit!95162)))

(declare-fun call!314996 () (InoxSet tuple2!51074))

(declare-fun call!314997 () (InoxSet tuple2!51074))

(declare-fun b!4520844 () Bool)

(assert (=> b!4520844 (= call!314997 ((_ map and) call!314996 ((_ map not) (store ((as const (Array tuple2!51074 Bool)) false) (tuple2!51075 key!3287 (get!16589 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287))) true))))))

(declare-fun lt!1697786 () Unit!95040)

(assert (=> b!4520844 (= lt!1697786 e!2816631)))

(declare-fun c!771578 () Bool)

(declare-fun contains!13376 (List!50770 tuple2!51074) Bool)

(assert (=> b!4520844 (= c!771578 (contains!13376 (t!357732 (toList!4328 lt!1697020)) (tuple2!51075 key!3287 (get!16589 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287)))))))

(declare-fun e!2816623 () Unit!95040)

(declare-fun Unit!95163 () Unit!95040)

(assert (=> b!4520844 (= e!2816623 Unit!95163)))

(declare-fun b!4520845 () Bool)

(declare-fun e!2816626 () Unit!95040)

(declare-fun Unit!95164 () Unit!95040)

(assert (=> b!4520845 (= e!2816626 Unit!95164)))

(declare-fun b!4520846 () Bool)

(declare-fun lt!1697790 () Unit!95040)

(assert (=> b!4520846 (= lt!1697790 e!2816626)))

(declare-fun c!771574 () Bool)

(assert (=> b!4520846 (= c!771574 call!314998)))

(declare-fun lt!1697785 () Unit!95040)

(assert (=> b!4520846 (= lt!1697785 e!2816629)))

(declare-fun c!771580 () Bool)

(assert (=> b!4520846 (= c!771580 (contains!13375 (getKeysList!465 (t!357732 (toList!4328 lt!1697020))) (_1!28831 (h!56499 (toList!4328 lt!1697020)))))))

(declare-fun lt!1697793 () List!50770)

(declare-fun $colon$colon!937 (List!50770 tuple2!51074) List!50770)

(assert (=> b!4520846 (= lt!1697793 ($colon$colon!937 (removePresrvNoDuplicatedKeys!140 (t!357732 (toList!4328 lt!1697020)) key!3287) (h!56499 (toList!4328 lt!1697020))))))

(declare-fun e!2816630 () List!50770)

(assert (=> b!4520846 (= e!2816630 lt!1697793)))

(declare-fun bm!314990 () Bool)

(declare-fun c!771581 () Bool)

(assert (=> bm!314990 (= call!314997 (content!8356 (ite c!771581 (t!357732 (toList!4328 lt!1697020)) (toList!4328 lt!1697020))))))

(declare-fun b!4520847 () Bool)

(declare-fun e!2816624 () Bool)

(declare-fun e!2816628 () Bool)

(assert (=> b!4520847 (= e!2816624 e!2816628)))

(declare-fun c!771576 () Bool)

(assert (=> b!4520847 (= c!771576 (containsKey!1783 (toList!4328 lt!1697020) key!3287))))

(declare-fun call!314999 () (InoxSet tuple2!51074))

(declare-fun call!315000 () (InoxSet tuple2!51074))

(declare-fun b!4520841 () Bool)

(assert (=> b!4520841 (= e!2816628 (= call!315000 ((_ map and) call!314999 ((_ map not) (store ((as const (Array tuple2!51074 Bool)) false) (tuple2!51075 key!3287 (get!16589 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287))) true)))))))

(assert (=> b!4520841 (containsKey!1783 (toList!4328 lt!1697020) key!3287)))

(declare-fun lt!1697778 () Unit!95040)

(assert (=> b!4520841 (= lt!1697778 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697020) key!3287))))

(assert (=> b!4520841 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697020) key!3287))))

(declare-fun lt!1697781 () Unit!95040)

(assert (=> b!4520841 (= lt!1697781 lt!1697778)))

(declare-fun d!1392958 () Bool)

(assert (=> d!1392958 e!2816624))

(declare-fun res!1881542 () Bool)

(assert (=> d!1392958 (=> (not res!1881542) (not e!2816624))))

(declare-fun lt!1697779 () List!50770)

(assert (=> d!1392958 (= res!1881542 (invariantList!1017 lt!1697779))))

(declare-fun e!2816627 () List!50770)

(assert (=> d!1392958 (= lt!1697779 e!2816627)))

(declare-fun c!771577 () Bool)

(assert (=> d!1392958 (= c!771577 (and ((_ is Cons!50646) (toList!4328 lt!1697020)) (= (_1!28831 (h!56499 (toList!4328 lt!1697020))) key!3287)))))

(assert (=> d!1392958 (invariantList!1017 (toList!4328 lt!1697020))))

(assert (=> d!1392958 (= (removePresrvNoDuplicatedKeys!140 (toList!4328 lt!1697020) key!3287) lt!1697779)))

(declare-fun b!4520848 () Bool)

(assert (=> b!4520848 (= e!2816630 Nil!50646)))

(declare-fun b!4520849 () Bool)

(declare-fun Unit!95165 () Unit!95040)

(assert (=> b!4520849 (= e!2816626 Unit!95165)))

(declare-fun lt!1697787 () List!50770)

(assert (=> b!4520849 (= lt!1697787 (removePresrvNoDuplicatedKeys!140 (t!357732 (toList!4328 lt!1697020)) key!3287))))

(declare-fun lt!1697776 () Unit!95040)

(assert (=> b!4520849 (= lt!1697776 (lemmaInListThenGetKeysListContains!461 lt!1697787 (_1!28831 (h!56499 (toList!4328 lt!1697020)))))))

(assert (=> b!4520849 (contains!13375 (getKeysList!465 lt!1697787) (_1!28831 (h!56499 (toList!4328 lt!1697020))))))

(declare-fun lt!1697780 () Unit!95040)

(assert (=> b!4520849 (= lt!1697780 lt!1697776)))

(assert (=> b!4520849 false))

(declare-fun bm!314991 () Bool)

(assert (=> bm!314991 (= call!314996 (content!8356 (ite c!771581 (toList!4328 lt!1697020) (t!357732 (toList!4328 lt!1697020)))))))

(declare-fun b!4520850 () Bool)

(declare-fun e!2816625 () List!50770)

(assert (=> b!4520850 (= e!2816625 (t!357732 (toList!4328 lt!1697020)))))

(declare-fun bm!314992 () Bool)

(assert (=> bm!314992 (= call!314998 (containsKey!1783 e!2816625 (ite c!771577 lt!1697784 (_1!28831 (h!56499 (toList!4328 lt!1697020))))))))

(declare-fun c!771575 () Bool)

(assert (=> bm!314992 (= c!771575 c!771577)))

(declare-fun b!4520851 () Bool)

(declare-fun res!1881541 () Bool)

(assert (=> b!4520851 (=> (not res!1881541) (not e!2816624))))

(assert (=> b!4520851 (= res!1881541 (not (containsKey!1783 lt!1697779 key!3287)))))

(declare-fun b!4520852 () Bool)

(assert (=> b!4520852 (= e!2816625 (removePresrvNoDuplicatedKeys!140 (t!357732 (toList!4328 lt!1697020)) key!3287))))

(declare-fun b!4520853 () Bool)

(declare-fun res!1881540 () Bool)

(assert (=> b!4520853 (=> (not res!1881540) (not e!2816624))))

(assert (=> b!4520853 (= res!1881540 (= (content!8357 (getKeysList!465 lt!1697779)) ((_ map and) (content!8357 (getKeysList!465 (toList!4328 lt!1697020))) ((_ map not) (store ((as const (Array K!12040 Bool)) false) key!3287 true)))))))

(declare-fun b!4520854 () Bool)

(assert (=> b!4520854 (= e!2816628 (= call!315000 call!314999))))

(declare-fun call!314995 () Bool)

(declare-fun bm!314993 () Bool)

(assert (=> bm!314993 (= call!314995 (containsKey!1783 (ite c!771577 (toList!4328 lt!1697020) (t!357732 (toList!4328 lt!1697020))) (ite c!771577 key!3287 (_1!28831 (h!56499 (toList!4328 lt!1697020))))))))

(declare-fun b!4520855 () Bool)

(declare-fun Unit!95166 () Unit!95040)

(assert (=> b!4520855 (= e!2816629 Unit!95166)))

(declare-fun lt!1697791 () Unit!95040)

(assert (=> b!4520855 (= lt!1697791 (lemmaInGetKeysListThenContainsKey!464 (t!357732 (toList!4328 lt!1697020)) (_1!28831 (h!56499 (toList!4328 lt!1697020)))))))

(assert (=> b!4520855 call!314995))

(declare-fun lt!1697792 () Unit!95040)

(assert (=> b!4520855 (= lt!1697792 lt!1697791)))

(assert (=> b!4520855 false))

(declare-fun bm!314994 () Bool)

(assert (=> bm!314994 (= call!314999 (content!8356 (toList!4328 lt!1697020)))))

(declare-fun b!4520856 () Bool)

(assert (=> b!4520856 (= call!314996 call!314997)))

(declare-fun Unit!95167 () Unit!95040)

(assert (=> b!4520856 (= e!2816623 Unit!95167)))

(declare-fun b!4520857 () Bool)

(assert (=> b!4520857 (= e!2816627 e!2816630)))

(declare-fun c!771579 () Bool)

(assert (=> b!4520857 (= c!771579 (and ((_ is Cons!50646) (toList!4328 lt!1697020)) (not (= (_1!28831 (h!56499 (toList!4328 lt!1697020))) key!3287))))))

(declare-fun bm!314995 () Bool)

(assert (=> bm!314995 (= call!315000 (content!8356 lt!1697779))))

(declare-fun b!4520858 () Bool)

(assert (=> b!4520858 (= e!2816627 (t!357732 (toList!4328 lt!1697020)))))

(assert (=> b!4520858 (= c!771581 call!314995)))

(declare-fun lt!1697782 () Unit!95040)

(assert (=> b!4520858 (= lt!1697782 e!2816623)))

(assert (= (and d!1392958 c!771577) b!4520858))

(assert (= (and d!1392958 (not c!771577)) b!4520857))

(assert (= (and b!4520858 c!771581) b!4520844))

(assert (= (and b!4520858 (not c!771581)) b!4520856))

(assert (= (and b!4520844 c!771578) b!4520842))

(assert (= (and b!4520844 (not c!771578)) b!4520843))

(assert (= (or b!4520844 b!4520856) bm!314991))

(assert (= (or b!4520844 b!4520856) bm!314990))

(assert (= (and b!4520857 c!771579) b!4520846))

(assert (= (and b!4520857 (not c!771579)) b!4520848))

(assert (= (and b!4520846 c!771580) b!4520855))

(assert (= (and b!4520846 (not c!771580)) b!4520840))

(assert (= (and b!4520846 c!771574) b!4520849))

(assert (= (and b!4520846 (not c!771574)) b!4520845))

(assert (= (or b!4520858 b!4520855) bm!314993))

(assert (= (or b!4520842 b!4520846) bm!314992))

(assert (= (and bm!314992 c!771575) b!4520850))

(assert (= (and bm!314992 (not c!771575)) b!4520852))

(assert (= (and d!1392958 res!1881542) b!4520851))

(assert (= (and b!4520851 res!1881541) b!4520853))

(assert (= (and b!4520853 res!1881540) b!4520847))

(assert (= (and b!4520847 c!771576) b!4520841))

(assert (= (and b!4520847 (not c!771576)) b!4520854))

(assert (= (or b!4520841 b!4520854) bm!314994))

(assert (= (or b!4520841 b!4520854) bm!314995))

(declare-fun m!5269431 () Bool)

(assert (=> bm!314995 m!5269431))

(declare-fun m!5269433 () Bool)

(assert (=> bm!314993 m!5269433))

(declare-fun m!5269435 () Bool)

(assert (=> bm!314990 m!5269435))

(declare-fun m!5269437 () Bool)

(assert (=> bm!314992 m!5269437))

(declare-fun m!5269439 () Bool)

(assert (=> bm!314991 m!5269439))

(assert (=> b!4520841 m!5268171))

(assert (=> b!4520841 m!5268173))

(declare-fun m!5269441 () Bool)

(assert (=> b!4520841 m!5269441))

(assert (=> b!4520841 m!5268173))

(declare-fun m!5269443 () Bool)

(assert (=> b!4520841 m!5269443))

(assert (=> b!4520841 m!5268173))

(assert (=> b!4520841 m!5268175))

(assert (=> b!4520841 m!5268185))

(declare-fun m!5269445 () Bool)

(assert (=> b!4520851 m!5269445))

(declare-fun m!5269447 () Bool)

(assert (=> b!4520852 m!5269447))

(declare-fun m!5269449 () Bool)

(assert (=> b!4520846 m!5269449))

(assert (=> b!4520846 m!5269449))

(declare-fun m!5269451 () Bool)

(assert (=> b!4520846 m!5269451))

(assert (=> b!4520846 m!5269447))

(assert (=> b!4520846 m!5269447))

(declare-fun m!5269453 () Bool)

(assert (=> b!4520846 m!5269453))

(declare-fun m!5269455 () Bool)

(assert (=> b!4520853 m!5269455))

(assert (=> b!4520853 m!5268183))

(assert (=> b!4520853 m!5267883))

(assert (=> b!4520853 m!5268183))

(declare-fun m!5269457 () Bool)

(assert (=> b!4520853 m!5269457))

(assert (=> b!4520853 m!5269455))

(declare-fun m!5269459 () Bool)

(assert (=> b!4520853 m!5269459))

(declare-fun m!5269461 () Bool)

(assert (=> b!4520855 m!5269461))

(assert (=> b!4520849 m!5269447))

(declare-fun m!5269463 () Bool)

(assert (=> b!4520849 m!5269463))

(declare-fun m!5269465 () Bool)

(assert (=> b!4520849 m!5269465))

(assert (=> b!4520849 m!5269465))

(declare-fun m!5269467 () Bool)

(assert (=> b!4520849 m!5269467))

(declare-fun m!5269469 () Bool)

(assert (=> d!1392958 m!5269469))

(assert (=> d!1392958 m!5268747))

(assert (=> b!4520844 m!5268173))

(assert (=> b!4520844 m!5268173))

(assert (=> b!4520844 m!5269443))

(assert (=> b!4520844 m!5269441))

(declare-fun m!5269471 () Bool)

(assert (=> b!4520844 m!5269471))

(assert (=> b!4520847 m!5268171))

(declare-fun m!5269473 () Bool)

(assert (=> bm!314994 m!5269473))

(assert (=> b!4520842 m!5268173))

(assert (=> b!4520842 m!5268173))

(assert (=> b!4520842 m!5269443))

(assert (=> b!4520842 m!5269443))

(declare-fun m!5269475 () Bool)

(assert (=> b!4520842 m!5269475))

(assert (=> d!1392460 d!1392958))

(declare-fun d!1393008 () Bool)

(declare-fun res!1881546 () Bool)

(declare-fun e!2816635 () Bool)

(assert (=> d!1393008 (=> res!1881546 e!2816635)))

(assert (=> d!1393008 (= res!1881546 (and ((_ is Cons!50646) (toList!4328 lt!1697020)) (= (_1!28831 (h!56499 (toList!4328 lt!1697020))) key!3287)))))

(assert (=> d!1393008 (= (containsKey!1783 (toList!4328 lt!1697020) key!3287) e!2816635)))

(declare-fun b!4520864 () Bool)

(declare-fun e!2816636 () Bool)

(assert (=> b!4520864 (= e!2816635 e!2816636)))

(declare-fun res!1881547 () Bool)

(assert (=> b!4520864 (=> (not res!1881547) (not e!2816636))))

(assert (=> b!4520864 (= res!1881547 ((_ is Cons!50646) (toList!4328 lt!1697020)))))

(declare-fun b!4520865 () Bool)

(assert (=> b!4520865 (= e!2816636 (containsKey!1783 (t!357732 (toList!4328 lt!1697020)) key!3287))))

(assert (= (and d!1393008 (not res!1881546)) b!4520864))

(assert (= (and b!4520864 res!1881547) b!4520865))

(declare-fun m!5269477 () Bool)

(assert (=> b!4520865 m!5269477))

(assert (=> b!4520093 d!1393008))

(declare-fun d!1393010 () Bool)

(assert (=> d!1393010 (containsKey!1783 (toList!4328 lt!1697020) key!3287)))

(declare-fun lt!1697815 () Unit!95040)

(assert (=> d!1393010 (= lt!1697815 (choose!29533 (toList!4328 lt!1697020) key!3287))))

(assert (=> d!1393010 (invariantList!1017 (toList!4328 lt!1697020))))

(assert (=> d!1393010 (= (lemmaInGetKeysListThenContainsKey!464 (toList!4328 lt!1697020) key!3287) lt!1697815)))

(declare-fun bs!856183 () Bool)

(assert (= bs!856183 d!1393010))

(assert (=> bs!856183 m!5268171))

(declare-fun m!5269479 () Bool)

(assert (=> bs!856183 m!5269479))

(assert (=> bs!856183 m!5268747))

(assert (=> b!4520093 d!1393010))

(declare-fun bs!856187 () Bool)

(declare-fun b!4520867 () Bool)

(assert (= bs!856187 (and b!4520867 b!4520339)))

(declare-fun lambda!172526 () Int)

(assert (=> bs!856187 (= (= (toList!4328 lt!1697020) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172526 lambda!172477))))

(declare-fun bs!856189 () Bool)

(assert (= bs!856189 (and b!4520867 b!4520341)))

(assert (=> bs!856189 (= (= (toList!4328 lt!1697020) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172526 lambda!172475))))

(declare-fun bs!856191 () Bool)

(assert (= bs!856191 (and b!4520867 b!4520344)))

(assert (=> bs!856191 (= (= (toList!4328 lt!1697020) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172526 lambda!172476))))

(declare-fun bs!856193 () Bool)

(assert (= bs!856193 (and b!4520867 b!4520413)))

(assert (=> bs!856193 (= (= (toList!4328 lt!1697020) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172526 lambda!172483))))

(declare-fun bs!856195 () Bool)

(assert (= bs!856195 (and b!4520867 b!4520698)))

(assert (=> bs!856195 (= (= (toList!4328 lt!1697020) (toList!4328 lt!1697008)) (= lambda!172526 lambda!172511))))

(assert (=> b!4520867 true))

(declare-fun bs!856198 () Bool)

(declare-fun b!4520868 () Bool)

(assert (= bs!856198 (and b!4520868 b!4520343)))

(declare-fun lambda!172527 () Int)

(assert (=> bs!856198 (= lambda!172527 lambda!172478)))

(declare-fun bs!856200 () Bool)

(assert (= bs!856200 (and b!4520868 b!4520414)))

(assert (=> bs!856200 (= lambda!172527 lambda!172484)))

(declare-fun bs!856202 () Bool)

(assert (= bs!856202 (and b!4520868 b!4520699)))

(assert (=> bs!856202 (= lambda!172527 lambda!172512)))

(declare-fun d!1393012 () Bool)

(declare-fun e!2816637 () Bool)

(assert (=> d!1393012 e!2816637))

(declare-fun res!1881550 () Bool)

(assert (=> d!1393012 (=> (not res!1881550) (not e!2816637))))

(declare-fun lt!1697816 () List!50773)

(assert (=> d!1393012 (= res!1881550 (noDuplicate!748 lt!1697816))))

(assert (=> d!1393012 (= lt!1697816 (getKeysList!465 (toList!4328 lt!1697020)))))

(assert (=> d!1393012 (= (keys!17594 lt!1697020) lt!1697816)))

(declare-fun b!4520866 () Bool)

(declare-fun res!1881548 () Bool)

(assert (=> b!4520866 (=> (not res!1881548) (not e!2816637))))

(assert (=> b!4520866 (= res!1881548 (= (length!352 lt!1697816) (length!353 (toList!4328 lt!1697020))))))

(declare-fun res!1881549 () Bool)

(assert (=> b!4520867 (=> (not res!1881549) (not e!2816637))))

(assert (=> b!4520867 (= res!1881549 (forall!10267 lt!1697816 lambda!172526))))

(assert (=> b!4520868 (= e!2816637 (= (content!8357 lt!1697816) (content!8357 (map!11139 (toList!4328 lt!1697020) lambda!172527))))))

(assert (= (and d!1393012 res!1881550) b!4520866))

(assert (= (and b!4520866 res!1881548) b!4520867))

(assert (= (and b!4520867 res!1881549) b!4520868))

(declare-fun m!5269481 () Bool)

(assert (=> d!1393012 m!5269481))

(assert (=> d!1393012 m!5268183))

(declare-fun m!5269483 () Bool)

(assert (=> b!4520866 m!5269483))

(declare-fun m!5269485 () Bool)

(assert (=> b!4520866 m!5269485))

(declare-fun m!5269487 () Bool)

(assert (=> b!4520867 m!5269487))

(declare-fun m!5269489 () Bool)

(assert (=> b!4520868 m!5269489))

(declare-fun m!5269491 () Bool)

(assert (=> b!4520868 m!5269491))

(assert (=> b!4520868 m!5269491))

(declare-fun m!5269493 () Bool)

(assert (=> b!4520868 m!5269493))

(assert (=> b!4520097 d!1393012))

(declare-fun d!1393014 () Bool)

(declare-fun res!1881551 () Bool)

(declare-fun e!2816638 () Bool)

(assert (=> d!1393014 (=> res!1881551 e!2816638)))

(assert (=> d!1393014 (= res!1881551 ((_ is Nil!50646) newBucket!178))))

(assert (=> d!1393014 (= (forall!10265 newBucket!178 lambda!172445) e!2816638)))

(declare-fun b!4520869 () Bool)

(declare-fun e!2816639 () Bool)

(assert (=> b!4520869 (= e!2816638 e!2816639)))

(declare-fun res!1881552 () Bool)

(assert (=> b!4520869 (=> (not res!1881552) (not e!2816639))))

(assert (=> b!4520869 (= res!1881552 (dynLambda!21164 lambda!172445 (h!56499 newBucket!178)))))

(declare-fun b!4520870 () Bool)

(assert (=> b!4520870 (= e!2816639 (forall!10265 (t!357732 newBucket!178) lambda!172445))))

(assert (= (and d!1393014 (not res!1881551)) b!4520869))

(assert (= (and b!4520869 res!1881552) b!4520870))

(declare-fun b_lambda!155015 () Bool)

(assert (=> (not b_lambda!155015) (not b!4520869)))

(declare-fun m!5269495 () Bool)

(assert (=> b!4520869 m!5269495))

(declare-fun m!5269497 () Bool)

(assert (=> b!4520870 m!5269497))

(assert (=> d!1392554 d!1393014))

(declare-fun d!1393016 () Bool)

(declare-fun c!771583 () Bool)

(assert (=> d!1393016 (= c!771583 ((_ is Nil!50646) (toList!4328 lt!1697008)))))

(declare-fun e!2816640 () (InoxSet tuple2!51074))

(assert (=> d!1393016 (= (content!8356 (toList!4328 lt!1697008)) e!2816640)))

(declare-fun b!4520871 () Bool)

(assert (=> b!4520871 (= e!2816640 ((as const (Array tuple2!51074 Bool)) false))))

(declare-fun b!4520872 () Bool)

(assert (=> b!4520872 (= e!2816640 ((_ map or) (store ((as const (Array tuple2!51074 Bool)) false) (h!56499 (toList!4328 lt!1697008)) true) (content!8356 (t!357732 (toList!4328 lt!1697008)))))))

(assert (= (and d!1393016 c!771583) b!4520871))

(assert (= (and d!1393016 (not c!771583)) b!4520872))

(declare-fun m!5269499 () Bool)

(assert (=> b!4520872 m!5269499))

(declare-fun m!5269501 () Bool)

(assert (=> b!4520872 m!5269501))

(assert (=> d!1392518 d!1393016))

(declare-fun d!1393018 () Bool)

(declare-fun c!771584 () Bool)

(assert (=> d!1393018 (= c!771584 ((_ is Nil!50646) (toList!4328 lt!1697013)))))

(declare-fun e!2816641 () (InoxSet tuple2!51074))

(assert (=> d!1393018 (= (content!8356 (toList!4328 lt!1697013)) e!2816641)))

(declare-fun b!4520873 () Bool)

(assert (=> b!4520873 (= e!2816641 ((as const (Array tuple2!51074 Bool)) false))))

(declare-fun b!4520874 () Bool)

(assert (=> b!4520874 (= e!2816641 ((_ map or) (store ((as const (Array tuple2!51074 Bool)) false) (h!56499 (toList!4328 lt!1697013)) true) (content!8356 (t!357732 (toList!4328 lt!1697013)))))))

(assert (= (and d!1393018 c!771584) b!4520873))

(assert (= (and d!1393018 (not c!771584)) b!4520874))

(declare-fun m!5269503 () Bool)

(assert (=> b!4520874 m!5269503))

(declare-fun m!5269505 () Bool)

(assert (=> b!4520874 m!5269505))

(assert (=> d!1392518 d!1393018))

(declare-fun d!1393020 () Bool)

(declare-fun choose!29537 (Hashable!5555 K!12040) (_ BitVec 64))

(assert (=> d!1393020 (= (hash!2811 hashF!1107 key!3287) (choose!29537 hashF!1107 key!3287))))

(declare-fun bs!856206 () Bool)

(assert (= bs!856206 d!1393020))

(declare-fun m!5269507 () Bool)

(assert (=> bs!856206 m!5269507))

(assert (=> d!1392580 d!1393020))

(declare-fun d!1393022 () Bool)

(declare-fun res!1881553 () Bool)

(declare-fun e!2816642 () Bool)

(assert (=> d!1393022 (=> res!1881553 e!2816642)))

(assert (=> d!1393022 (= res!1881553 (and ((_ is Cons!50646) (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))) (= (_1!28831 (h!56499 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))))) key!3287)))))

(assert (=> d!1393022 (= (containsKey!1780 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))) key!3287) e!2816642)))

(declare-fun b!4520875 () Bool)

(declare-fun e!2816643 () Bool)

(assert (=> b!4520875 (= e!2816642 e!2816643)))

(declare-fun res!1881554 () Bool)

(assert (=> b!4520875 (=> (not res!1881554) (not e!2816643))))

(assert (=> b!4520875 (= res!1881554 ((_ is Cons!50646) (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))))))

(declare-fun b!4520876 () Bool)

(assert (=> b!4520876 (= e!2816643 (containsKey!1780 (t!357732 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))) key!3287))))

(assert (= (and d!1393022 (not res!1881553)) b!4520875))

(assert (= (and b!4520875 res!1881554) b!4520876))

(declare-fun m!5269509 () Bool)

(assert (=> b!4520876 m!5269509))

(assert (=> b!4520140 d!1393022))

(declare-fun d!1393024 () Bool)

(declare-fun res!1881555 () Bool)

(declare-fun e!2816644 () Bool)

(assert (=> d!1393024 (=> res!1881555 e!2816644)))

(assert (=> d!1393024 (= res!1881555 ((_ is Nil!50646) (_2!28832 lt!1697023)))))

(assert (=> d!1393024 (= (forall!10265 (_2!28832 lt!1697023) lambda!172433) e!2816644)))

(declare-fun b!4520877 () Bool)

(declare-fun e!2816645 () Bool)

(assert (=> b!4520877 (= e!2816644 e!2816645)))

(declare-fun res!1881556 () Bool)

(assert (=> b!4520877 (=> (not res!1881556) (not e!2816645))))

(assert (=> b!4520877 (= res!1881556 (dynLambda!21164 lambda!172433 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun b!4520878 () Bool)

(assert (=> b!4520878 (= e!2816645 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172433))))

(assert (= (and d!1393024 (not res!1881555)) b!4520877))

(assert (= (and b!4520877 res!1881556) b!4520878))

(declare-fun b_lambda!155017 () Bool)

(assert (=> (not b_lambda!155017) (not b!4520877)))

(declare-fun m!5269511 () Bool)

(assert (=> b!4520877 m!5269511))

(declare-fun m!5269513 () Bool)

(assert (=> b!4520878 m!5269513))

(assert (=> d!1392478 d!1393024))

(assert (=> d!1392478 d!1392536))

(declare-fun d!1393026 () Bool)

(assert (=> d!1393026 (isDefined!8399 (getValueByKey!1092 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(declare-fun lt!1697817 () Unit!95040)

(assert (=> d!1393026 (= lt!1697817 (choose!29526 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(assert (=> d!1393026 (invariantList!1017 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))

(assert (=> d!1393026 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287) lt!1697817)))

(declare-fun bs!856207 () Bool)

(assert (= bs!856207 d!1393026))

(assert (=> bs!856207 m!5268145))

(assert (=> bs!856207 m!5268145))

(assert (=> bs!856207 m!5268147))

(declare-fun m!5269515 () Bool)

(assert (=> bs!856207 m!5269515))

(assert (=> bs!856207 m!5268517))

(assert (=> b!4520079 d!1393026))

(assert (=> b!4520079 d!1392908))

(assert (=> b!4520079 d!1392912))

(declare-fun d!1393028 () Bool)

(assert (=> d!1393028 (contains!13375 (getKeysList!465 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) key!3287)))

(declare-fun lt!1697818 () Unit!95040)

(assert (=> d!1393028 (= lt!1697818 (choose!29528 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(assert (=> d!1393028 (invariantList!1017 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))

(assert (=> d!1393028 (= (lemmaInListThenGetKeysListContains!461 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287) lt!1697818)))

(declare-fun bs!856208 () Bool)

(assert (= bs!856208 d!1393028))

(assert (=> bs!856208 m!5268157))

(assert (=> bs!856208 m!5268157))

(declare-fun m!5269517 () Bool)

(assert (=> bs!856208 m!5269517))

(declare-fun m!5269519 () Bool)

(assert (=> bs!856208 m!5269519))

(assert (=> bs!856208 m!5268517))

(assert (=> b!4520079 d!1393028))

(declare-fun d!1393030 () Bool)

(assert (=> d!1393030 (isDefined!8400 (getValueByKey!1093 (toList!4327 lm!1477) lt!1697009))))

(declare-fun lt!1697819 () Unit!95040)

(assert (=> d!1393030 (= lt!1697819 (choose!29536 (toList!4327 lm!1477) lt!1697009))))

(declare-fun e!2816646 () Bool)

(assert (=> d!1393030 e!2816646))

(declare-fun res!1881557 () Bool)

(assert (=> d!1393030 (=> (not res!1881557) (not e!2816646))))

(assert (=> d!1393030 (= res!1881557 (isStrictlySorted!431 (toList!4327 lm!1477)))))

(assert (=> d!1393030 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!997 (toList!4327 lm!1477) lt!1697009) lt!1697819)))

(declare-fun b!4520879 () Bool)

(assert (=> b!4520879 (= e!2816646 (containsKey!1784 (toList!4327 lm!1477) lt!1697009))))

(assert (= (and d!1393030 res!1881557) b!4520879))

(assert (=> d!1393030 m!5268231))

(assert (=> d!1393030 m!5268231))

(assert (=> d!1393030 m!5268233))

(declare-fun m!5269521 () Bool)

(assert (=> d!1393030 m!5269521))

(assert (=> d!1393030 m!5268211))

(assert (=> b!4520879 m!5268227))

(assert (=> b!4520109 d!1393030))

(assert (=> b!4520109 d!1392670))

(assert (=> b!4520109 d!1392676))

(declare-fun d!1393032 () Bool)

(declare-fun res!1881558 () Bool)

(declare-fun e!2816647 () Bool)

(assert (=> d!1393032 (=> res!1881558 e!2816647)))

(assert (=> d!1393032 (= res!1881558 ((_ is Nil!50646) (ite c!771377 (toList!4328 lt!1697024) (t!357732 (_2!28832 lt!1697023)))))))

(assert (=> d!1393032 (= (forall!10265 (ite c!771377 (toList!4328 lt!1697024) (t!357732 (_2!28832 lt!1697023))) (ite c!771377 lambda!172430 lambda!172432)) e!2816647)))

(declare-fun b!4520880 () Bool)

(declare-fun e!2816648 () Bool)

(assert (=> b!4520880 (= e!2816647 e!2816648)))

(declare-fun res!1881559 () Bool)

(assert (=> b!4520880 (=> (not res!1881559) (not e!2816648))))

(assert (=> b!4520880 (= res!1881559 (dynLambda!21164 (ite c!771377 lambda!172430 lambda!172432) (h!56499 (ite c!771377 (toList!4328 lt!1697024) (t!357732 (_2!28832 lt!1697023))))))))

(declare-fun b!4520881 () Bool)

(assert (=> b!4520881 (= e!2816648 (forall!10265 (t!357732 (ite c!771377 (toList!4328 lt!1697024) (t!357732 (_2!28832 lt!1697023)))) (ite c!771377 lambda!172430 lambda!172432)))))

(assert (= (and d!1393032 (not res!1881558)) b!4520880))

(assert (= (and b!4520880 res!1881559) b!4520881))

(declare-fun b_lambda!155019 () Bool)

(assert (=> (not b_lambda!155019) (not b!4520880)))

(declare-fun m!5269523 () Bool)

(assert (=> b!4520880 m!5269523))

(declare-fun m!5269525 () Bool)

(assert (=> b!4520881 m!5269525))

(assert (=> bm!314923 d!1393032))

(declare-fun bs!856222 () Bool)

(declare-fun b!4520885 () Bool)

(assert (= bs!856222 (and b!4520885 b!4520867)))

(declare-fun lambda!172530 () Int)

(assert (=> bs!856222 (= (= (t!357732 (toList!4328 lt!1697008)) (toList!4328 lt!1697020)) (= lambda!172530 lambda!172526))))

(declare-fun bs!856224 () Bool)

(assert (= bs!856224 (and b!4520885 b!4520339)))

(assert (=> bs!856224 (= (= (t!357732 (toList!4328 lt!1697008)) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172530 lambda!172477))))

(declare-fun bs!856225 () Bool)

(assert (= bs!856225 (and b!4520885 b!4520341)))

(assert (=> bs!856225 (= (= (t!357732 (toList!4328 lt!1697008)) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172530 lambda!172475))))

(declare-fun bs!856226 () Bool)

(assert (= bs!856226 (and b!4520885 b!4520344)))

(assert (=> bs!856226 (= (= (t!357732 (toList!4328 lt!1697008)) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172530 lambda!172476))))

(declare-fun bs!856228 () Bool)

(assert (= bs!856228 (and b!4520885 b!4520413)))

(assert (=> bs!856228 (= (= (t!357732 (toList!4328 lt!1697008)) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172530 lambda!172483))))

(declare-fun bs!856230 () Bool)

(assert (= bs!856230 (and b!4520885 b!4520698)))

(assert (=> bs!856230 (= (= (t!357732 (toList!4328 lt!1697008)) (toList!4328 lt!1697008)) (= lambda!172530 lambda!172511))))

(assert (=> b!4520885 true))

(declare-fun bs!856235 () Bool)

(declare-fun b!4520888 () Bool)

(assert (= bs!856235 (and b!4520888 b!4520867)))

(declare-fun lambda!172531 () Int)

(assert (=> bs!856235 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008))) (toList!4328 lt!1697020)) (= lambda!172531 lambda!172526))))

(declare-fun bs!856237 () Bool)

(assert (= bs!856237 (and b!4520888 b!4520339)))

(assert (=> bs!856237 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008))) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172531 lambda!172477))))

(declare-fun bs!856239 () Bool)

(assert (= bs!856239 (and b!4520888 b!4520885)))

(assert (=> bs!856239 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008))) (t!357732 (toList!4328 lt!1697008))) (= lambda!172531 lambda!172530))))

(declare-fun bs!856241 () Bool)

(assert (= bs!856241 (and b!4520888 b!4520341)))

(assert (=> bs!856241 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172531 lambda!172475))))

(declare-fun bs!856242 () Bool)

(assert (= bs!856242 (and b!4520888 b!4520344)))

(assert (=> bs!856242 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008))) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172531 lambda!172476))))

(declare-fun bs!856243 () Bool)

(assert (= bs!856243 (and b!4520888 b!4520413)))

(assert (=> bs!856243 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008))) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172531 lambda!172483))))

(declare-fun bs!856245 () Bool)

(assert (= bs!856245 (and b!4520888 b!4520698)))

(assert (=> bs!856245 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008))) (toList!4328 lt!1697008)) (= lambda!172531 lambda!172511))))

(assert (=> b!4520888 true))

(declare-fun bs!856247 () Bool)

(declare-fun b!4520883 () Bool)

(assert (= bs!856247 (and b!4520883 b!4520867)))

(declare-fun lambda!172532 () Int)

(assert (=> bs!856247 (= (= (toList!4328 lt!1697008) (toList!4328 lt!1697020)) (= lambda!172532 lambda!172526))))

(declare-fun bs!856248 () Bool)

(assert (= bs!856248 (and b!4520883 b!4520339)))

(assert (=> bs!856248 (= (= (toList!4328 lt!1697008) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172532 lambda!172477))))

(declare-fun bs!856249 () Bool)

(assert (= bs!856249 (and b!4520883 b!4520885)))

(assert (=> bs!856249 (= (= (toList!4328 lt!1697008) (t!357732 (toList!4328 lt!1697008))) (= lambda!172532 lambda!172530))))

(declare-fun bs!856250 () Bool)

(assert (= bs!856250 (and b!4520883 b!4520341)))

(assert (=> bs!856250 (= (= (toList!4328 lt!1697008) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172532 lambda!172475))))

(declare-fun bs!856251 () Bool)

(assert (= bs!856251 (and b!4520883 b!4520888)))

(assert (=> bs!856251 (= (= (toList!4328 lt!1697008) (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008)))) (= lambda!172532 lambda!172531))))

(declare-fun bs!856252 () Bool)

(assert (= bs!856252 (and b!4520883 b!4520344)))

(assert (=> bs!856252 (= (= (toList!4328 lt!1697008) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172532 lambda!172476))))

(declare-fun bs!856253 () Bool)

(assert (= bs!856253 (and b!4520883 b!4520413)))

(assert (=> bs!856253 (= (= (toList!4328 lt!1697008) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172532 lambda!172483))))

(declare-fun bs!856254 () Bool)

(assert (= bs!856254 (and b!4520883 b!4520698)))

(assert (=> bs!856254 (= lambda!172532 lambda!172511)))

(assert (=> b!4520883 true))

(declare-fun bs!856255 () Bool)

(declare-fun b!4520887 () Bool)

(assert (= bs!856255 (and b!4520887 b!4520343)))

(declare-fun lambda!172533 () Int)

(assert (=> bs!856255 (= lambda!172533 lambda!172478)))

(declare-fun bs!856256 () Bool)

(assert (= bs!856256 (and b!4520887 b!4520414)))

(assert (=> bs!856256 (= lambda!172533 lambda!172484)))

(declare-fun bs!856257 () Bool)

(assert (= bs!856257 (and b!4520887 b!4520699)))

(assert (=> bs!856257 (= lambda!172533 lambda!172512)))

(declare-fun bs!856258 () Bool)

(assert (= bs!856258 (and b!4520887 b!4520868)))

(assert (=> bs!856258 (= lambda!172533 lambda!172527)))

(declare-fun b!4520882 () Bool)

(declare-fun res!1881560 () Bool)

(declare-fun e!2816652 () Bool)

(assert (=> b!4520882 (=> (not res!1881560) (not e!2816652))))

(declare-fun lt!1697825 () List!50773)

(assert (=> b!4520882 (= res!1881560 (= (length!352 lt!1697825) (length!353 (toList!4328 lt!1697008))))))

(declare-fun res!1881561 () Bool)

(assert (=> b!4520883 (=> (not res!1881561) (not e!2816652))))

(assert (=> b!4520883 (= res!1881561 (forall!10267 lt!1697825 lambda!172532))))

(declare-fun b!4520884 () Bool)

(declare-fun e!2816649 () Unit!95040)

(declare-fun Unit!95171 () Unit!95040)

(assert (=> b!4520884 (= e!2816649 Unit!95171)))

(assert (=> b!4520885 false))

(declare-fun lt!1697823 () Unit!95040)

(assert (=> b!4520885 (= lt!1697823 (forallContained!2518 (getKeysList!465 (t!357732 (toList!4328 lt!1697008))) lambda!172530 (_1!28831 (h!56499 (toList!4328 lt!1697008)))))))

(declare-fun Unit!95172 () Unit!95040)

(assert (=> b!4520885 (= e!2816649 Unit!95172)))

(assert (=> b!4520887 (= e!2816652 (= (content!8357 lt!1697825) (content!8357 (map!11139 (toList!4328 lt!1697008) lambda!172533))))))

(declare-fun d!1393034 () Bool)

(assert (=> d!1393034 e!2816652))

(declare-fun res!1881562 () Bool)

(assert (=> d!1393034 (=> (not res!1881562) (not e!2816652))))

(assert (=> d!1393034 (= res!1881562 (noDuplicate!748 lt!1697825))))

(declare-fun e!2816650 () List!50773)

(assert (=> d!1393034 (= lt!1697825 e!2816650)))

(declare-fun c!771587 () Bool)

(assert (=> d!1393034 (= c!771587 ((_ is Cons!50646) (toList!4328 lt!1697008)))))

(assert (=> d!1393034 (invariantList!1017 (toList!4328 lt!1697008))))

(assert (=> d!1393034 (= (getKeysList!465 (toList!4328 lt!1697008)) lt!1697825)))

(declare-fun b!4520886 () Bool)

(assert (=> b!4520886 false))

(declare-fun e!2816651 () Unit!95040)

(declare-fun Unit!95173 () Unit!95040)

(assert (=> b!4520886 (= e!2816651 Unit!95173)))

(assert (=> b!4520888 (= e!2816650 (Cons!50649 (_1!28831 (h!56499 (toList!4328 lt!1697008))) (getKeysList!465 (t!357732 (toList!4328 lt!1697008)))))))

(declare-fun c!771585 () Bool)

(assert (=> b!4520888 (= c!771585 (containsKey!1783 (t!357732 (toList!4328 lt!1697008)) (_1!28831 (h!56499 (toList!4328 lt!1697008)))))))

(declare-fun lt!1697826 () Unit!95040)

(assert (=> b!4520888 (= lt!1697826 e!2816651)))

(declare-fun c!771586 () Bool)

(assert (=> b!4520888 (= c!771586 (contains!13375 (getKeysList!465 (t!357732 (toList!4328 lt!1697008))) (_1!28831 (h!56499 (toList!4328 lt!1697008)))))))

(declare-fun lt!1697820 () Unit!95040)

(assert (=> b!4520888 (= lt!1697820 e!2816649)))

(declare-fun lt!1697821 () List!50773)

(assert (=> b!4520888 (= lt!1697821 (getKeysList!465 (t!357732 (toList!4328 lt!1697008))))))

(declare-fun lt!1697822 () Unit!95040)

(assert (=> b!4520888 (= lt!1697822 (lemmaForallContainsAddHeadPreserves!168 (t!357732 (toList!4328 lt!1697008)) lt!1697821 (h!56499 (toList!4328 lt!1697008))))))

(assert (=> b!4520888 (forall!10267 lt!1697821 lambda!172531)))

(declare-fun lt!1697824 () Unit!95040)

(assert (=> b!4520888 (= lt!1697824 lt!1697822)))

(declare-fun b!4520889 () Bool)

(declare-fun Unit!95174 () Unit!95040)

(assert (=> b!4520889 (= e!2816651 Unit!95174)))

(declare-fun b!4520890 () Bool)

(assert (=> b!4520890 (= e!2816650 Nil!50649)))

(assert (= (and d!1393034 c!771587) b!4520888))

(assert (= (and d!1393034 (not c!771587)) b!4520890))

(assert (= (and b!4520888 c!771585) b!4520886))

(assert (= (and b!4520888 (not c!771585)) b!4520889))

(assert (= (and b!4520888 c!771586) b!4520885))

(assert (= (and b!4520888 (not c!771586)) b!4520884))

(assert (= (and d!1393034 res!1881562) b!4520882))

(assert (= (and b!4520882 res!1881560) b!4520883))

(assert (= (and b!4520883 res!1881561) b!4520887))

(declare-fun m!5269551 () Bool)

(assert (=> b!4520887 m!5269551))

(declare-fun m!5269555 () Bool)

(assert (=> b!4520887 m!5269555))

(assert (=> b!4520887 m!5269555))

(declare-fun m!5269557 () Bool)

(assert (=> b!4520887 m!5269557))

(declare-fun m!5269561 () Bool)

(assert (=> b!4520882 m!5269561))

(assert (=> b!4520882 m!5269157))

(declare-fun m!5269563 () Bool)

(assert (=> b!4520888 m!5269563))

(declare-fun m!5269567 () Bool)

(assert (=> b!4520888 m!5269567))

(declare-fun m!5269569 () Bool)

(assert (=> b!4520888 m!5269569))

(declare-fun m!5269573 () Bool)

(assert (=> b!4520888 m!5269573))

(assert (=> b!4520888 m!5269569))

(declare-fun m!5269575 () Bool)

(assert (=> b!4520888 m!5269575))

(assert (=> b!4520885 m!5269569))

(assert (=> b!4520885 m!5269569))

(declare-fun m!5269577 () Bool)

(assert (=> b!4520885 m!5269577))

(declare-fun m!5269579 () Bool)

(assert (=> b!4520883 m!5269579))

(declare-fun m!5269581 () Bool)

(assert (=> d!1393034 m!5269581))

(assert (=> d!1393034 m!5268357))

(assert (=> b!4519900 d!1393034))

(declare-fun d!1393038 () Bool)

(assert (=> d!1393038 (= (invariantList!1017 (toList!4328 lt!1697150)) (noDuplicatedKeys!262 (toList!4328 lt!1697150)))))

(declare-fun bs!856259 () Bool)

(assert (= bs!856259 d!1393038))

(declare-fun m!5269583 () Bool)

(assert (=> bs!856259 m!5269583))

(assert (=> d!1392416 d!1393038))

(declare-fun d!1393040 () Bool)

(declare-fun res!1881563 () Bool)

(declare-fun e!2816653 () Bool)

(assert (=> d!1393040 (=> res!1881563 e!2816653)))

(assert (=> d!1393040 (= res!1881563 ((_ is Nil!50647) (toList!4327 lm!1477)))))

(assert (=> d!1393040 (= (forall!10263 (toList!4327 lm!1477) lambda!172348) e!2816653)))

(declare-fun b!4520891 () Bool)

(declare-fun e!2816654 () Bool)

(assert (=> b!4520891 (= e!2816653 e!2816654)))

(declare-fun res!1881564 () Bool)

(assert (=> b!4520891 (=> (not res!1881564) (not e!2816654))))

(assert (=> b!4520891 (= res!1881564 (dynLambda!21163 lambda!172348 (h!56500 (toList!4327 lm!1477))))))

(declare-fun b!4520892 () Bool)

(assert (=> b!4520892 (= e!2816654 (forall!10263 (t!357733 (toList!4327 lm!1477)) lambda!172348))))

(assert (= (and d!1393040 (not res!1881563)) b!4520891))

(assert (= (and b!4520891 res!1881564) b!4520892))

(declare-fun b_lambda!155021 () Bool)

(assert (=> (not b_lambda!155021) (not b!4520891)))

(declare-fun m!5269585 () Bool)

(assert (=> b!4520891 m!5269585))

(declare-fun m!5269587 () Bool)

(assert (=> b!4520892 m!5269587))

(assert (=> d!1392416 d!1393040))

(declare-fun d!1393042 () Bool)

(declare-fun res!1881565 () Bool)

(declare-fun e!2816655 () Bool)

(assert (=> d!1393042 (=> res!1881565 e!2816655)))

(assert (=> d!1393042 (= res!1881565 (and ((_ is Cons!50646) (t!357732 (_2!28832 lt!1697023))) (= (_1!28831 (h!56499 (t!357732 (_2!28832 lt!1697023)))) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(assert (=> d!1393042 (= (containsKey!1780 (t!357732 (_2!28832 lt!1697023)) (_1!28831 (h!56499 (_2!28832 lt!1697023)))) e!2816655)))

(declare-fun b!4520893 () Bool)

(declare-fun e!2816656 () Bool)

(assert (=> b!4520893 (= e!2816655 e!2816656)))

(declare-fun res!1881566 () Bool)

(assert (=> b!4520893 (=> (not res!1881566) (not e!2816656))))

(assert (=> b!4520893 (= res!1881566 ((_ is Cons!50646) (t!357732 (_2!28832 lt!1697023))))))

(declare-fun b!4520894 () Bool)

(assert (=> b!4520894 (= e!2816656 (containsKey!1780 (t!357732 (t!357732 (_2!28832 lt!1697023))) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (= (and d!1393042 (not res!1881565)) b!4520893))

(assert (= (and b!4520893 res!1881566) b!4520894))

(declare-fun m!5269589 () Bool)

(assert (=> b!4520894 m!5269589))

(assert (=> b!4520100 d!1393042))

(declare-fun d!1393044 () Bool)

(declare-fun res!1881567 () Bool)

(declare-fun e!2816657 () Bool)

(assert (=> d!1393044 (=> res!1881567 e!2816657)))

(assert (=> d!1393044 (= res!1881567 (and ((_ is Cons!50646) (t!357732 newBucket!178)) (= (_1!28831 (h!56499 (t!357732 newBucket!178))) (_1!28831 (h!56499 newBucket!178)))))))

(assert (=> d!1393044 (= (containsKey!1780 (t!357732 newBucket!178) (_1!28831 (h!56499 newBucket!178))) e!2816657)))

(declare-fun b!4520895 () Bool)

(declare-fun e!2816658 () Bool)

(assert (=> b!4520895 (= e!2816657 e!2816658)))

(declare-fun res!1881568 () Bool)

(assert (=> b!4520895 (=> (not res!1881568) (not e!2816658))))

(assert (=> b!4520895 (= res!1881568 ((_ is Cons!50646) (t!357732 newBucket!178)))))

(declare-fun b!4520896 () Bool)

(assert (=> b!4520896 (= e!2816658 (containsKey!1780 (t!357732 (t!357732 newBucket!178)) (_1!28831 (h!56499 newBucket!178))))))

(assert (= (and d!1393044 (not res!1881567)) b!4520895))

(assert (= (and b!4520895 res!1881568) b!4520896))

(declare-fun m!5269591 () Bool)

(assert (=> b!4520896 m!5269591))

(assert (=> b!4519818 d!1393044))

(declare-fun d!1393046 () Bool)

(declare-fun lt!1697827 () Bool)

(assert (=> d!1393046 (= lt!1697827 (select (content!8359 (toList!4327 lt!1697432)) lt!1697006))))

(declare-fun e!2816659 () Bool)

(assert (=> d!1393046 (= lt!1697827 e!2816659)))

(declare-fun res!1881569 () Bool)

(assert (=> d!1393046 (=> (not res!1881569) (not e!2816659))))

(assert (=> d!1393046 (= res!1881569 ((_ is Cons!50647) (toList!4327 lt!1697432)))))

(assert (=> d!1393046 (= (contains!13373 (toList!4327 lt!1697432) lt!1697006) lt!1697827)))

(declare-fun b!4520897 () Bool)

(declare-fun e!2816660 () Bool)

(assert (=> b!4520897 (= e!2816659 e!2816660)))

(declare-fun res!1881570 () Bool)

(assert (=> b!4520897 (=> res!1881570 e!2816660)))

(assert (=> b!4520897 (= res!1881570 (= (h!56500 (toList!4327 lt!1697432)) lt!1697006))))

(declare-fun b!4520898 () Bool)

(assert (=> b!4520898 (= e!2816660 (contains!13373 (t!357733 (toList!4327 lt!1697432)) lt!1697006))))

(assert (= (and d!1393046 res!1881569) b!4520897))

(assert (= (and b!4520897 (not res!1881570)) b!4520898))

(declare-fun m!5269593 () Bool)

(assert (=> d!1393046 m!5269593))

(declare-fun m!5269595 () Bool)

(assert (=> d!1393046 m!5269595))

(declare-fun m!5269597 () Bool)

(assert (=> b!4520898 m!5269597))

(assert (=> b!4520160 d!1393046))

(declare-fun d!1393048 () Bool)

(declare-fun lt!1697828 () Bool)

(assert (=> d!1393048 (= lt!1697828 (select (content!8357 (keys!17594 lt!1697008)) key!3287))))

(declare-fun e!2816661 () Bool)

(assert (=> d!1393048 (= lt!1697828 e!2816661)))

(declare-fun res!1881571 () Bool)

(assert (=> d!1393048 (=> (not res!1881571) (not e!2816661))))

(assert (=> d!1393048 (= res!1881571 ((_ is Cons!50649) (keys!17594 lt!1697008)))))

(assert (=> d!1393048 (= (contains!13375 (keys!17594 lt!1697008) key!3287) lt!1697828)))

(declare-fun b!4520899 () Bool)

(declare-fun e!2816662 () Bool)

(assert (=> b!4520899 (= e!2816661 e!2816662)))

(declare-fun res!1881572 () Bool)

(assert (=> b!4520899 (=> res!1881572 e!2816662)))

(assert (=> b!4520899 (= res!1881572 (= (h!56504 (keys!17594 lt!1697008)) key!3287))))

(declare-fun b!4520900 () Bool)

(assert (=> b!4520900 (= e!2816662 (contains!13375 (t!357735 (keys!17594 lt!1697008)) key!3287))))

(assert (= (and d!1393048 res!1881571) b!4520899))

(assert (= (and b!4520899 (not res!1881572)) b!4520900))

(assert (=> d!1393048 m!5267723))

(declare-fun m!5269599 () Bool)

(assert (=> d!1393048 m!5269599))

(declare-fun m!5269601 () Bool)

(assert (=> d!1393048 m!5269601))

(declare-fun m!5269603 () Bool)

(assert (=> b!4520900 m!5269603))

(assert (=> b!4519904 d!1393048))

(assert (=> b!4519904 d!1392918))

(declare-fun bs!856260 () Bool)

(declare-fun b!4520904 () Bool)

(assert (= bs!856260 (and b!4520904 b!4520536)))

(declare-fun lambda!172534 () Int)

(assert (=> bs!856260 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697584) (= lambda!172534 lambda!172503))))

(declare-fun bs!856261 () Bool)

(assert (= bs!856261 (and b!4520904 d!1392776)))

(assert (=> bs!856261 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697578) (= lambda!172534 lambda!172504))))

(declare-fun bs!856262 () Bool)

(assert (= bs!856262 (and b!4520904 d!1392574)))

(assert (=> bs!856262 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697417) (= lambda!172534 lambda!172452))))

(declare-fun bs!856263 () Bool)

(assert (= bs!856263 (and b!4520904 b!4520152)))

(assert (=> bs!856263 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697423) (= lambda!172534 lambda!172451))))

(declare-fun bs!856264 () Bool)

(assert (= bs!856264 (and b!4520904 d!1392554)))

(assert (=> bs!856264 (not (= lambda!172534 lambda!172445))))

(declare-fun bs!856265 () Bool)

(assert (= bs!856265 (and b!4520904 b!4520058)))

(assert (=> bs!856265 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697024) (= lambda!172534 lambda!172431))))

(declare-fun bs!856266 () Bool)

(assert (= bs!856266 (and b!4520904 b!4520061)))

(assert (=> bs!856266 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697024) (= lambda!172534 lambda!172430))))

(declare-fun bs!856267 () Bool)

(assert (= bs!856267 (and b!4520904 d!1392478)))

(assert (=> bs!856267 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697339) (= lambda!172534 lambda!172433))))

(assert (=> bs!856265 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697345) (= lambda!172534 lambda!172432))))

(declare-fun bs!856268 () Bool)

(assert (= bs!856268 (and b!4520904 d!1392774)))

(assert (=> bs!856268 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697024) (= lambda!172534 lambda!172499))))

(assert (=> bs!856260 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172534 lambda!172502))))

(declare-fun bs!856269 () Bool)

(assert (= bs!856269 (and b!4520904 b!4520155)))

(assert (=> bs!856269 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697017) (= lambda!172534 lambda!172449))))

(declare-fun bs!856270 () Bool)

(assert (= bs!856270 (and b!4520904 b!4520539)))

(assert (=> bs!856270 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172534 lambda!172500))))

(assert (=> bs!856263 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697017) (= lambda!172534 lambda!172450))))

(declare-fun bs!856271 () Bool)

(assert (= bs!856271 (and b!4520904 d!1392762)))

(assert (=> bs!856271 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697017) (= lambda!172534 lambda!172497))))

(assert (=> b!4520904 true))

(declare-fun bs!856272 () Bool)

(declare-fun b!4520901 () Bool)

(assert (= bs!856272 (and b!4520901 b!4520536)))

(declare-fun lambda!172535 () Int)

(assert (=> bs!856272 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697584) (= lambda!172535 lambda!172503))))

(declare-fun bs!856273 () Bool)

(assert (= bs!856273 (and b!4520901 d!1392776)))

(assert (=> bs!856273 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697578) (= lambda!172535 lambda!172504))))

(declare-fun bs!856274 () Bool)

(assert (= bs!856274 (and b!4520901 d!1392574)))

(assert (=> bs!856274 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697417) (= lambda!172535 lambda!172452))))

(declare-fun bs!856275 () Bool)

(assert (= bs!856275 (and b!4520901 b!4520152)))

(assert (=> bs!856275 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697423) (= lambda!172535 lambda!172451))))

(declare-fun bs!856276 () Bool)

(assert (= bs!856276 (and b!4520901 b!4520904)))

(assert (=> bs!856276 (= lambda!172535 lambda!172534)))

(declare-fun bs!856277 () Bool)

(assert (= bs!856277 (and b!4520901 d!1392554)))

(assert (=> bs!856277 (not (= lambda!172535 lambda!172445))))

(declare-fun bs!856278 () Bool)

(assert (= bs!856278 (and b!4520901 b!4520058)))

(assert (=> bs!856278 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697024) (= lambda!172535 lambda!172431))))

(declare-fun bs!856279 () Bool)

(assert (= bs!856279 (and b!4520901 b!4520061)))

(assert (=> bs!856279 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697024) (= lambda!172535 lambda!172430))))

(declare-fun bs!856280 () Bool)

(assert (= bs!856280 (and b!4520901 d!1392478)))

(assert (=> bs!856280 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697339) (= lambda!172535 lambda!172433))))

(assert (=> bs!856278 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697345) (= lambda!172535 lambda!172432))))

(declare-fun bs!856281 () Bool)

(assert (= bs!856281 (and b!4520901 d!1392774)))

(assert (=> bs!856281 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697024) (= lambda!172535 lambda!172499))))

(assert (=> bs!856272 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172535 lambda!172502))))

(declare-fun bs!856282 () Bool)

(assert (= bs!856282 (and b!4520901 b!4520155)))

(assert (=> bs!856282 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697017) (= lambda!172535 lambda!172449))))

(declare-fun bs!856283 () Bool)

(assert (= bs!856283 (and b!4520901 b!4520539)))

(assert (=> bs!856283 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172535 lambda!172500))))

(assert (=> bs!856275 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697017) (= lambda!172535 lambda!172450))))

(declare-fun bs!856284 () Bool)

(assert (= bs!856284 (and b!4520901 d!1392762)))

(assert (=> bs!856284 (= (= (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697017) (= lambda!172535 lambda!172497))))

(assert (=> b!4520901 true))

(declare-fun lambda!172536 () Int)

(declare-fun lt!1697849 () ListMap!3589)

(assert (=> bs!856272 (= (= lt!1697849 lt!1697584) (= lambda!172536 lambda!172503))))

(assert (=> bs!856273 (= (= lt!1697849 lt!1697578) (= lambda!172536 lambda!172504))))

(assert (=> bs!856274 (= (= lt!1697849 lt!1697417) (= lambda!172536 lambda!172452))))

(assert (=> bs!856275 (= (= lt!1697849 lt!1697423) (= lambda!172536 lambda!172451))))

(assert (=> bs!856276 (= (= lt!1697849 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172536 lambda!172534))))

(assert (=> bs!856277 (not (= lambda!172536 lambda!172445))))

(assert (=> b!4520901 (= (= lt!1697849 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172536 lambda!172535))))

(assert (=> bs!856278 (= (= lt!1697849 lt!1697024) (= lambda!172536 lambda!172431))))

(assert (=> bs!856279 (= (= lt!1697849 lt!1697024) (= lambda!172536 lambda!172430))))

(assert (=> bs!856280 (= (= lt!1697849 lt!1697339) (= lambda!172536 lambda!172433))))

(assert (=> bs!856278 (= (= lt!1697849 lt!1697345) (= lambda!172536 lambda!172432))))

(assert (=> bs!856281 (= (= lt!1697849 lt!1697024) (= lambda!172536 lambda!172499))))

(assert (=> bs!856272 (= (= lt!1697849 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172536 lambda!172502))))

(assert (=> bs!856282 (= (= lt!1697849 lt!1697017) (= lambda!172536 lambda!172449))))

(assert (=> bs!856283 (= (= lt!1697849 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172536 lambda!172500))))

(assert (=> bs!856275 (= (= lt!1697849 lt!1697017) (= lambda!172536 lambda!172450))))

(assert (=> bs!856284 (= (= lt!1697849 lt!1697017) (= lambda!172536 lambda!172497))))

(assert (=> b!4520901 true))

(declare-fun bs!856285 () Bool)

(declare-fun d!1393050 () Bool)

(assert (= bs!856285 (and d!1393050 b!4520536)))

(declare-fun lt!1697843 () ListMap!3589)

(declare-fun lambda!172537 () Int)

(assert (=> bs!856285 (= (= lt!1697843 lt!1697584) (= lambda!172537 lambda!172503))))

(declare-fun bs!856286 () Bool)

(assert (= bs!856286 (and d!1393050 b!4520901)))

(assert (=> bs!856286 (= (= lt!1697843 lt!1697849) (= lambda!172537 lambda!172536))))

(declare-fun bs!856287 () Bool)

(assert (= bs!856287 (and d!1393050 d!1392776)))

(assert (=> bs!856287 (= (= lt!1697843 lt!1697578) (= lambda!172537 lambda!172504))))

(declare-fun bs!856288 () Bool)

(assert (= bs!856288 (and d!1393050 d!1392574)))

(assert (=> bs!856288 (= (= lt!1697843 lt!1697417) (= lambda!172537 lambda!172452))))

(declare-fun bs!856289 () Bool)

(assert (= bs!856289 (and d!1393050 b!4520152)))

(assert (=> bs!856289 (= (= lt!1697843 lt!1697423) (= lambda!172537 lambda!172451))))

(declare-fun bs!856290 () Bool)

(assert (= bs!856290 (and d!1393050 b!4520904)))

(assert (=> bs!856290 (= (= lt!1697843 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172537 lambda!172534))))

(declare-fun bs!856291 () Bool)

(assert (= bs!856291 (and d!1393050 d!1392554)))

(assert (=> bs!856291 (not (= lambda!172537 lambda!172445))))

(assert (=> bs!856286 (= (= lt!1697843 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172537 lambda!172535))))

(declare-fun bs!856292 () Bool)

(assert (= bs!856292 (and d!1393050 b!4520058)))

(assert (=> bs!856292 (= (= lt!1697843 lt!1697024) (= lambda!172537 lambda!172431))))

(declare-fun bs!856293 () Bool)

(assert (= bs!856293 (and d!1393050 b!4520061)))

(assert (=> bs!856293 (= (= lt!1697843 lt!1697024) (= lambda!172537 lambda!172430))))

(declare-fun bs!856294 () Bool)

(assert (= bs!856294 (and d!1393050 d!1392478)))

(assert (=> bs!856294 (= (= lt!1697843 lt!1697339) (= lambda!172537 lambda!172433))))

(assert (=> bs!856292 (= (= lt!1697843 lt!1697345) (= lambda!172537 lambda!172432))))

(declare-fun bs!856295 () Bool)

(assert (= bs!856295 (and d!1393050 d!1392774)))

(assert (=> bs!856295 (= (= lt!1697843 lt!1697024) (= lambda!172537 lambda!172499))))

(assert (=> bs!856285 (= (= lt!1697843 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172537 lambda!172502))))

(declare-fun bs!856296 () Bool)

(assert (= bs!856296 (and d!1393050 b!4520155)))

(assert (=> bs!856296 (= (= lt!1697843 lt!1697017) (= lambda!172537 lambda!172449))))

(declare-fun bs!856297 () Bool)

(assert (= bs!856297 (and d!1393050 b!4520539)))

(assert (=> bs!856297 (= (= lt!1697843 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172537 lambda!172500))))

(assert (=> bs!856289 (= (= lt!1697843 lt!1697017) (= lambda!172537 lambda!172450))))

(declare-fun bs!856298 () Bool)

(assert (= bs!856298 (and d!1393050 d!1392762)))

(assert (=> bs!856298 (= (= lt!1697843 lt!1697017) (= lambda!172537 lambda!172497))))

(assert (=> d!1393050 true))

(declare-fun e!2816665 () ListMap!3589)

(assert (=> b!4520901 (= e!2816665 lt!1697849)))

(declare-fun lt!1697839 () ListMap!3589)

(assert (=> b!4520901 (= lt!1697839 (+!1540 (extractMap!1216 (t!357733 (toList!4327 lm!1477))) (h!56499 (_2!28832 (h!56500 (toList!4327 lm!1477))))))))

(assert (=> b!4520901 (= lt!1697849 (addToMapMapFromBucket!687 (t!357732 (_2!28832 (h!56500 (toList!4327 lm!1477)))) (+!1540 (extractMap!1216 (t!357733 (toList!4327 lm!1477))) (h!56499 (_2!28832 (h!56500 (toList!4327 lm!1477)))))))))

(declare-fun lt!1697846 () Unit!95040)

(declare-fun call!315006 () Unit!95040)

(assert (=> b!4520901 (= lt!1697846 call!315006)))

(assert (=> b!4520901 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) lambda!172535)))

(declare-fun lt!1697841 () Unit!95040)

(assert (=> b!4520901 (= lt!1697841 lt!1697846)))

(declare-fun call!315005 () Bool)

(assert (=> b!4520901 call!315005))

(declare-fun lt!1697834 () Unit!95040)

(declare-fun Unit!95186 () Unit!95040)

(assert (=> b!4520901 (= lt!1697834 Unit!95186)))

(declare-fun call!315004 () Bool)

(assert (=> b!4520901 call!315004))

(declare-fun lt!1697838 () Unit!95040)

(declare-fun Unit!95187 () Unit!95040)

(assert (=> b!4520901 (= lt!1697838 Unit!95187)))

(declare-fun lt!1697836 () Unit!95040)

(declare-fun Unit!95188 () Unit!95040)

(assert (=> b!4520901 (= lt!1697836 Unit!95188)))

(declare-fun lt!1697845 () Unit!95040)

(assert (=> b!4520901 (= lt!1697845 (forallContained!2517 (toList!4328 lt!1697839) lambda!172536 (h!56499 (_2!28832 (h!56500 (toList!4327 lm!1477))))))))

(assert (=> b!4520901 (contains!13372 lt!1697839 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lm!1477))))))))

(declare-fun lt!1697831 () Unit!95040)

(declare-fun Unit!95189 () Unit!95040)

(assert (=> b!4520901 (= lt!1697831 Unit!95189)))

(assert (=> b!4520901 (contains!13372 lt!1697849 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lm!1477))))))))

(declare-fun lt!1697842 () Unit!95040)

(declare-fun Unit!95190 () Unit!95040)

(assert (=> b!4520901 (= lt!1697842 Unit!95190)))

(assert (=> b!4520901 (forall!10265 (_2!28832 (h!56500 (toList!4327 lm!1477))) lambda!172536)))

(declare-fun lt!1697835 () Unit!95040)

(declare-fun Unit!95191 () Unit!95040)

(assert (=> b!4520901 (= lt!1697835 Unit!95191)))

(assert (=> b!4520901 (forall!10265 (toList!4328 lt!1697839) lambda!172536)))

(declare-fun lt!1697832 () Unit!95040)

(declare-fun Unit!95192 () Unit!95040)

(assert (=> b!4520901 (= lt!1697832 Unit!95192)))

(declare-fun lt!1697840 () Unit!95040)

(declare-fun Unit!95193 () Unit!95040)

(assert (=> b!4520901 (= lt!1697840 Unit!95193)))

(declare-fun lt!1697829 () Unit!95040)

(assert (=> b!4520901 (= lt!1697829 (addForallContainsKeyThenBeforeAdding!338 (extractMap!1216 (t!357733 (toList!4327 lm!1477))) lt!1697849 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lm!1477))))) (_2!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lm!1477)))))))))

(assert (=> b!4520901 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) lambda!172536)))

(declare-fun lt!1697837 () Unit!95040)

(assert (=> b!4520901 (= lt!1697837 lt!1697829)))

(assert (=> b!4520901 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) lambda!172536)))

(declare-fun lt!1697844 () Unit!95040)

(declare-fun Unit!95194 () Unit!95040)

(assert (=> b!4520901 (= lt!1697844 Unit!95194)))

(declare-fun res!1881574 () Bool)

(assert (=> b!4520901 (= res!1881574 (forall!10265 (_2!28832 (h!56500 (toList!4327 lm!1477))) lambda!172536))))

(declare-fun e!2816663 () Bool)

(assert (=> b!4520901 (=> (not res!1881574) (not e!2816663))))

(assert (=> b!4520901 e!2816663))

(declare-fun lt!1697830 () Unit!95040)

(declare-fun Unit!95195 () Unit!95040)

(assert (=> b!4520901 (= lt!1697830 Unit!95195)))

(declare-fun b!4520902 () Bool)

(assert (=> b!4520902 (= e!2816663 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) lambda!172536))))

(declare-fun bm!314999 () Bool)

(assert (=> bm!314999 (= call!315006 (lemmaContainsAllItsOwnKeys!338 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))

(declare-fun c!771588 () Bool)

(declare-fun bm!315000 () Bool)

(assert (=> bm!315000 (= call!315005 (forall!10265 (ite c!771588 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (toList!4328 lt!1697839)) (ite c!771588 lambda!172534 lambda!172536)))))

(declare-fun b!4520903 () Bool)

(declare-fun res!1881573 () Bool)

(declare-fun e!2816664 () Bool)

(assert (=> b!4520903 (=> (not res!1881573) (not e!2816664))))

(assert (=> b!4520903 (= res!1881573 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) lambda!172537))))

(assert (=> d!1393050 e!2816664))

(declare-fun res!1881575 () Bool)

(assert (=> d!1393050 (=> (not res!1881575) (not e!2816664))))

(assert (=> d!1393050 (= res!1881575 (forall!10265 (_2!28832 (h!56500 (toList!4327 lm!1477))) lambda!172537))))

(assert (=> d!1393050 (= lt!1697843 e!2816665)))

(assert (=> d!1393050 (= c!771588 ((_ is Nil!50646) (_2!28832 (h!56500 (toList!4327 lm!1477)))))))

(assert (=> d!1393050 (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lm!1477))))))

(assert (=> d!1393050 (= (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 lm!1477))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) lt!1697843)))

(declare-fun bm!315001 () Bool)

(assert (=> bm!315001 (= call!315004 (forall!10265 (ite c!771588 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (t!357732 (_2!28832 (h!56500 (toList!4327 lm!1477))))) (ite c!771588 lambda!172534 lambda!172536)))))

(assert (=> b!4520904 (= e!2816665 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))

(declare-fun lt!1697833 () Unit!95040)

(assert (=> b!4520904 (= lt!1697833 call!315006)))

(assert (=> b!4520904 call!315004))

(declare-fun lt!1697847 () Unit!95040)

(assert (=> b!4520904 (= lt!1697847 lt!1697833)))

(assert (=> b!4520904 call!315005))

(declare-fun lt!1697848 () Unit!95040)

(declare-fun Unit!95196 () Unit!95040)

(assert (=> b!4520904 (= lt!1697848 Unit!95196)))

(declare-fun b!4520905 () Bool)

(assert (=> b!4520905 (= e!2816664 (invariantList!1017 (toList!4328 lt!1697843)))))

(assert (= (and d!1393050 c!771588) b!4520904))

(assert (= (and d!1393050 (not c!771588)) b!4520901))

(assert (= (and b!4520901 res!1881574) b!4520902))

(assert (= (or b!4520904 b!4520901) bm!315001))

(assert (= (or b!4520904 b!4520901) bm!315000))

(assert (= (or b!4520904 b!4520901) bm!314999))

(assert (= (and d!1393050 res!1881575) b!4520903))

(assert (= (and b!4520903 res!1881573) b!4520905))

(declare-fun m!5269619 () Bool)

(assert (=> d!1393050 m!5269619))

(assert (=> d!1393050 m!5268341))

(declare-fun m!5269621 () Bool)

(assert (=> b!4520902 m!5269621))

(declare-fun m!5269623 () Bool)

(assert (=> bm!315000 m!5269623))

(assert (=> bm!314999 m!5267555))

(declare-fun m!5269625 () Bool)

(assert (=> bm!314999 m!5269625))

(declare-fun m!5269627 () Bool)

(assert (=> b!4520905 m!5269627))

(declare-fun m!5269629 () Bool)

(assert (=> b!4520903 m!5269629))

(declare-fun m!5269631 () Bool)

(assert (=> bm!315001 m!5269631))

(assert (=> b!4520901 m!5267555))

(declare-fun m!5269633 () Bool)

(assert (=> b!4520901 m!5269633))

(assert (=> b!4520901 m!5269621))

(declare-fun m!5269635 () Bool)

(assert (=> b!4520901 m!5269635))

(assert (=> b!4520901 m!5267555))

(declare-fun m!5269637 () Bool)

(assert (=> b!4520901 m!5269637))

(assert (=> b!4520901 m!5269621))

(declare-fun m!5269639 () Bool)

(assert (=> b!4520901 m!5269639))

(assert (=> b!4520901 m!5269633))

(declare-fun m!5269643 () Bool)

(assert (=> b!4520901 m!5269643))

(declare-fun m!5269649 () Bool)

(assert (=> b!4520901 m!5269649))

(declare-fun m!5269653 () Bool)

(assert (=> b!4520901 m!5269653))

(assert (=> b!4520901 m!5269639))

(declare-fun m!5269657 () Bool)

(assert (=> b!4520901 m!5269657))

(declare-fun m!5269663 () Bool)

(assert (=> b!4520901 m!5269663))

(assert (=> b!4519968 d!1393050))

(assert (=> b!4519968 d!1392530))

(declare-fun d!1393056 () Bool)

(assert (=> d!1393056 (= (invariantList!1017 (toList!4328 lt!1697370)) (noDuplicatedKeys!262 (toList!4328 lt!1697370)))))

(declare-fun bs!856299 () Bool)

(assert (= bs!856299 d!1393056))

(declare-fun m!5269671 () Bool)

(assert (=> bs!856299 m!5269671))

(assert (=> d!1392530 d!1393056))

(declare-fun d!1393060 () Bool)

(declare-fun res!1881587 () Bool)

(declare-fun e!2816677 () Bool)

(assert (=> d!1393060 (=> res!1881587 e!2816677)))

(assert (=> d!1393060 (= res!1881587 ((_ is Nil!50647) (t!357733 (toList!4327 lm!1477))))))

(assert (=> d!1393060 (= (forall!10263 (t!357733 (toList!4327 lm!1477)) lambda!172438) e!2816677)))

(declare-fun b!4520923 () Bool)

(declare-fun e!2816678 () Bool)

(assert (=> b!4520923 (= e!2816677 e!2816678)))

(declare-fun res!1881588 () Bool)

(assert (=> b!4520923 (=> (not res!1881588) (not e!2816678))))

(assert (=> b!4520923 (= res!1881588 (dynLambda!21163 lambda!172438 (h!56500 (t!357733 (toList!4327 lm!1477)))))))

(declare-fun b!4520924 () Bool)

(assert (=> b!4520924 (= e!2816678 (forall!10263 (t!357733 (t!357733 (toList!4327 lm!1477))) lambda!172438))))

(assert (= (and d!1393060 (not res!1881587)) b!4520923))

(assert (= (and b!4520923 res!1881588) b!4520924))

(declare-fun b_lambda!155025 () Bool)

(assert (=> (not b_lambda!155025) (not b!4520923)))

(declare-fun m!5269673 () Bool)

(assert (=> b!4520923 m!5269673))

(declare-fun m!5269675 () Bool)

(assert (=> b!4520924 m!5269675))

(assert (=> d!1392530 d!1393060))

(declare-fun d!1393062 () Bool)

(declare-fun lt!1697870 () Bool)

(assert (=> d!1393062 (= lt!1697870 (select (content!8359 (toList!4327 lt!1697164)) lt!1697023))))

(declare-fun e!2816679 () Bool)

(assert (=> d!1393062 (= lt!1697870 e!2816679)))

(declare-fun res!1881589 () Bool)

(assert (=> d!1393062 (=> (not res!1881589) (not e!2816679))))

(assert (=> d!1393062 (= res!1881589 ((_ is Cons!50647) (toList!4327 lt!1697164)))))

(assert (=> d!1393062 (= (contains!13373 (toList!4327 lt!1697164) lt!1697023) lt!1697870)))

(declare-fun b!4520925 () Bool)

(declare-fun e!2816680 () Bool)

(assert (=> b!4520925 (= e!2816679 e!2816680)))

(declare-fun res!1881590 () Bool)

(assert (=> b!4520925 (=> res!1881590 e!2816680)))

(assert (=> b!4520925 (= res!1881590 (= (h!56500 (toList!4327 lt!1697164)) lt!1697023))))

(declare-fun b!4520926 () Bool)

(assert (=> b!4520926 (= e!2816680 (contains!13373 (t!357733 (toList!4327 lt!1697164)) lt!1697023))))

(assert (= (and d!1393062 res!1881589) b!4520925))

(assert (= (and b!4520925 (not res!1881590)) b!4520926))

(declare-fun m!5269677 () Bool)

(assert (=> d!1393062 m!5269677))

(declare-fun m!5269679 () Bool)

(assert (=> d!1393062 m!5269679))

(declare-fun m!5269681 () Bool)

(assert (=> b!4520926 m!5269681))

(assert (=> b!4519981 d!1393062))

(declare-fun d!1393064 () Bool)

(declare-fun res!1881591 () Bool)

(declare-fun e!2816681 () Bool)

(assert (=> d!1393064 (=> res!1881591 e!2816681)))

(assert (=> d!1393064 (= res!1881591 (and ((_ is Cons!50647) (toList!4327 lm!1477)) (= (_1!28832 (h!56500 (toList!4327 lm!1477))) lt!1697009)))))

(assert (=> d!1393064 (= (containsKey!1784 (toList!4327 lm!1477) lt!1697009) e!2816681)))

(declare-fun b!4520927 () Bool)

(declare-fun e!2816682 () Bool)

(assert (=> b!4520927 (= e!2816681 e!2816682)))

(declare-fun res!1881592 () Bool)

(assert (=> b!4520927 (=> (not res!1881592) (not e!2816682))))

(assert (=> b!4520927 (= res!1881592 (and (or (not ((_ is Cons!50647) (toList!4327 lm!1477))) (bvsle (_1!28832 (h!56500 (toList!4327 lm!1477))) lt!1697009)) ((_ is Cons!50647) (toList!4327 lm!1477)) (bvslt (_1!28832 (h!56500 (toList!4327 lm!1477))) lt!1697009)))))

(declare-fun b!4520928 () Bool)

(assert (=> b!4520928 (= e!2816682 (containsKey!1784 (t!357733 (toList!4327 lm!1477)) lt!1697009))))

(assert (= (and d!1393064 (not res!1881591)) b!4520927))

(assert (= (and b!4520927 res!1881592) b!4520928))

(declare-fun m!5269683 () Bool)

(assert (=> b!4520928 m!5269683))

(assert (=> d!1392548 d!1393064))

(declare-fun bs!856300 () Bool)

(declare-fun b!4520932 () Bool)

(assert (= bs!856300 (and b!4520932 b!4520536)))

(declare-fun lambda!172538 () Int)

(assert (=> bs!856300 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697584) (= lambda!172538 lambda!172503))))

(declare-fun bs!856301 () Bool)

(assert (= bs!856301 (and b!4520932 b!4520901)))

(assert (=> bs!856301 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697849) (= lambda!172538 lambda!172536))))

(declare-fun bs!856302 () Bool)

(assert (= bs!856302 (and b!4520932 d!1392776)))

(assert (=> bs!856302 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697578) (= lambda!172538 lambda!172504))))

(declare-fun bs!856303 () Bool)

(assert (= bs!856303 (and b!4520932 d!1392574)))

(assert (=> bs!856303 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697417) (= lambda!172538 lambda!172452))))

(declare-fun bs!856304 () Bool)

(assert (= bs!856304 (and b!4520932 b!4520152)))

(assert (=> bs!856304 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697423) (= lambda!172538 lambda!172451))))

(declare-fun bs!856305 () Bool)

(assert (= bs!856305 (and b!4520932 d!1393050)))

(assert (=> bs!856305 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697843) (= lambda!172538 lambda!172537))))

(declare-fun bs!856306 () Bool)

(assert (= bs!856306 (and b!4520932 b!4520904)))

(assert (=> bs!856306 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172538 lambda!172534))))

(declare-fun bs!856307 () Bool)

(assert (= bs!856307 (and b!4520932 d!1392554)))

(assert (=> bs!856307 (not (= lambda!172538 lambda!172445))))

(assert (=> bs!856301 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172538 lambda!172535))))

(declare-fun bs!856308 () Bool)

(assert (= bs!856308 (and b!4520932 b!4520058)))

(assert (=> bs!856308 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697024) (= lambda!172538 lambda!172431))))

(declare-fun bs!856309 () Bool)

(assert (= bs!856309 (and b!4520932 b!4520061)))

(assert (=> bs!856309 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697024) (= lambda!172538 lambda!172430))))

(declare-fun bs!856310 () Bool)

(assert (= bs!856310 (and b!4520932 d!1392478)))

(assert (=> bs!856310 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697339) (= lambda!172538 lambda!172433))))

(assert (=> bs!856308 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697345) (= lambda!172538 lambda!172432))))

(declare-fun bs!856311 () Bool)

(assert (= bs!856311 (and b!4520932 d!1392774)))

(assert (=> bs!856311 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697024) (= lambda!172538 lambda!172499))))

(assert (=> bs!856300 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172538 lambda!172502))))

(declare-fun bs!856312 () Bool)

(assert (= bs!856312 (and b!4520932 b!4520155)))

(assert (=> bs!856312 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697017) (= lambda!172538 lambda!172449))))

(declare-fun bs!856313 () Bool)

(assert (= bs!856313 (and b!4520932 b!4520539)))

(assert (=> bs!856313 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172538 lambda!172500))))

(assert (=> bs!856304 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697017) (= lambda!172538 lambda!172450))))

(declare-fun bs!856314 () Bool)

(assert (= bs!856314 (and b!4520932 d!1392762)))

(assert (=> bs!856314 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697017) (= lambda!172538 lambda!172497))))

(assert (=> b!4520932 true))

(declare-fun bs!856315 () Bool)

(declare-fun b!4520929 () Bool)

(assert (= bs!856315 (and b!4520929 b!4520536)))

(declare-fun lambda!172539 () Int)

(assert (=> bs!856315 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697584) (= lambda!172539 lambda!172503))))

(declare-fun bs!856316 () Bool)

(assert (= bs!856316 (and b!4520929 d!1392776)))

(assert (=> bs!856316 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697578) (= lambda!172539 lambda!172504))))

(declare-fun bs!856317 () Bool)

(assert (= bs!856317 (and b!4520929 d!1392574)))

(assert (=> bs!856317 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697417) (= lambda!172539 lambda!172452))))

(declare-fun bs!856318 () Bool)

(assert (= bs!856318 (and b!4520929 b!4520152)))

(assert (=> bs!856318 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697423) (= lambda!172539 lambda!172451))))

(declare-fun bs!856319 () Bool)

(assert (= bs!856319 (and b!4520929 d!1393050)))

(assert (=> bs!856319 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697843) (= lambda!172539 lambda!172537))))

(declare-fun bs!856320 () Bool)

(assert (= bs!856320 (and b!4520929 b!4520904)))

(assert (=> bs!856320 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172539 lambda!172534))))

(declare-fun bs!856321 () Bool)

(assert (= bs!856321 (and b!4520929 d!1392554)))

(assert (=> bs!856321 (not (= lambda!172539 lambda!172445))))

(declare-fun bs!856322 () Bool)

(assert (= bs!856322 (and b!4520929 b!4520901)))

(assert (=> bs!856322 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172539 lambda!172535))))

(declare-fun bs!856323 () Bool)

(assert (= bs!856323 (and b!4520929 b!4520058)))

(assert (=> bs!856323 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697024) (= lambda!172539 lambda!172431))))

(declare-fun bs!856324 () Bool)

(assert (= bs!856324 (and b!4520929 b!4520061)))

(assert (=> bs!856324 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697024) (= lambda!172539 lambda!172430))))

(declare-fun bs!856325 () Bool)

(assert (= bs!856325 (and b!4520929 d!1392478)))

(assert (=> bs!856325 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697339) (= lambda!172539 lambda!172433))))

(assert (=> bs!856323 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697345) (= lambda!172539 lambda!172432))))

(declare-fun bs!856326 () Bool)

(assert (= bs!856326 (and b!4520929 d!1392774)))

(assert (=> bs!856326 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697024) (= lambda!172539 lambda!172499))))

(assert (=> bs!856315 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172539 lambda!172502))))

(assert (=> bs!856322 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697849) (= lambda!172539 lambda!172536))))

(declare-fun bs!856327 () Bool)

(assert (= bs!856327 (and b!4520929 b!4520932)))

(assert (=> bs!856327 (= lambda!172539 lambda!172538)))

(declare-fun bs!856328 () Bool)

(assert (= bs!856328 (and b!4520929 b!4520155)))

(assert (=> bs!856328 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697017) (= lambda!172539 lambda!172449))))

(declare-fun bs!856329 () Bool)

(assert (= bs!856329 (and b!4520929 b!4520539)))

(assert (=> bs!856329 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172539 lambda!172500))))

(assert (=> bs!856318 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697017) (= lambda!172539 lambda!172450))))

(declare-fun bs!856330 () Bool)

(assert (= bs!856330 (and b!4520929 d!1392762)))

(assert (=> bs!856330 (= (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697017) (= lambda!172539 lambda!172497))))

(assert (=> b!4520929 true))

(declare-fun lambda!172540 () Int)

(declare-fun lt!1697891 () ListMap!3589)

(assert (=> bs!856315 (= (= lt!1697891 lt!1697584) (= lambda!172540 lambda!172503))))

(assert (=> bs!856316 (= (= lt!1697891 lt!1697578) (= lambda!172540 lambda!172504))))

(assert (=> bs!856318 (= (= lt!1697891 lt!1697423) (= lambda!172540 lambda!172451))))

(assert (=> bs!856319 (= (= lt!1697891 lt!1697843) (= lambda!172540 lambda!172537))))

(assert (=> bs!856320 (= (= lt!1697891 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172540 lambda!172534))))

(assert (=> bs!856321 (not (= lambda!172540 lambda!172445))))

(assert (=> bs!856322 (= (= lt!1697891 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172540 lambda!172535))))

(assert (=> bs!856323 (= (= lt!1697891 lt!1697024) (= lambda!172540 lambda!172431))))

(assert (=> bs!856324 (= (= lt!1697891 lt!1697024) (= lambda!172540 lambda!172430))))

(assert (=> bs!856325 (= (= lt!1697891 lt!1697339) (= lambda!172540 lambda!172433))))

(assert (=> bs!856323 (= (= lt!1697891 lt!1697345) (= lambda!172540 lambda!172432))))

(assert (=> bs!856326 (= (= lt!1697891 lt!1697024) (= lambda!172540 lambda!172499))))

(assert (=> bs!856315 (= (= lt!1697891 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172540 lambda!172502))))

(assert (=> bs!856322 (= (= lt!1697891 lt!1697849) (= lambda!172540 lambda!172536))))

(assert (=> bs!856327 (= (= lt!1697891 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172540 lambda!172538))))

(assert (=> b!4520929 (= (= lt!1697891 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172540 lambda!172539))))

(assert (=> bs!856317 (= (= lt!1697891 lt!1697417) (= lambda!172540 lambda!172452))))

(assert (=> bs!856328 (= (= lt!1697891 lt!1697017) (= lambda!172540 lambda!172449))))

(assert (=> bs!856329 (= (= lt!1697891 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172540 lambda!172500))))

(assert (=> bs!856318 (= (= lt!1697891 lt!1697017) (= lambda!172540 lambda!172450))))

(assert (=> bs!856330 (= (= lt!1697891 lt!1697017) (= lambda!172540 lambda!172497))))

(assert (=> b!4520929 true))

(declare-fun bs!856331 () Bool)

(declare-fun d!1393066 () Bool)

(assert (= bs!856331 (and d!1393066 b!4520536)))

(declare-fun lt!1697885 () ListMap!3589)

(declare-fun lambda!172545 () Int)

(assert (=> bs!856331 (= (= lt!1697885 lt!1697584) (= lambda!172545 lambda!172503))))

(declare-fun bs!856332 () Bool)

(assert (= bs!856332 (and d!1393066 d!1392776)))

(assert (=> bs!856332 (= (= lt!1697885 lt!1697578) (= lambda!172545 lambda!172504))))

(declare-fun bs!856333 () Bool)

(assert (= bs!856333 (and d!1393066 b!4520929)))

(assert (=> bs!856333 (= (= lt!1697885 lt!1697891) (= lambda!172545 lambda!172540))))

(declare-fun bs!856334 () Bool)

(assert (= bs!856334 (and d!1393066 b!4520152)))

(assert (=> bs!856334 (= (= lt!1697885 lt!1697423) (= lambda!172545 lambda!172451))))

(declare-fun bs!856335 () Bool)

(assert (= bs!856335 (and d!1393066 d!1393050)))

(assert (=> bs!856335 (= (= lt!1697885 lt!1697843) (= lambda!172545 lambda!172537))))

(declare-fun bs!856336 () Bool)

(assert (= bs!856336 (and d!1393066 b!4520904)))

(assert (=> bs!856336 (= (= lt!1697885 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172545 lambda!172534))))

(declare-fun bs!856337 () Bool)

(assert (= bs!856337 (and d!1393066 d!1392554)))

(assert (=> bs!856337 (not (= lambda!172545 lambda!172445))))

(declare-fun bs!856338 () Bool)

(assert (= bs!856338 (and d!1393066 b!4520901)))

(assert (=> bs!856338 (= (= lt!1697885 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172545 lambda!172535))))

(declare-fun bs!856339 () Bool)

(assert (= bs!856339 (and d!1393066 b!4520058)))

(assert (=> bs!856339 (= (= lt!1697885 lt!1697024) (= lambda!172545 lambda!172431))))

(declare-fun bs!856340 () Bool)

(assert (= bs!856340 (and d!1393066 b!4520061)))

(assert (=> bs!856340 (= (= lt!1697885 lt!1697024) (= lambda!172545 lambda!172430))))

(declare-fun bs!856342 () Bool)

(assert (= bs!856342 (and d!1393066 d!1392478)))

(assert (=> bs!856342 (= (= lt!1697885 lt!1697339) (= lambda!172545 lambda!172433))))

(assert (=> bs!856339 (= (= lt!1697885 lt!1697345) (= lambda!172545 lambda!172432))))

(declare-fun bs!856344 () Bool)

(assert (= bs!856344 (and d!1393066 d!1392774)))

(assert (=> bs!856344 (= (= lt!1697885 lt!1697024) (= lambda!172545 lambda!172499))))

(assert (=> bs!856331 (= (= lt!1697885 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172545 lambda!172502))))

(assert (=> bs!856338 (= (= lt!1697885 lt!1697849) (= lambda!172545 lambda!172536))))

(declare-fun bs!856348 () Bool)

(assert (= bs!856348 (and d!1393066 b!4520932)))

(assert (=> bs!856348 (= (= lt!1697885 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172545 lambda!172538))))

(assert (=> bs!856333 (= (= lt!1697885 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172545 lambda!172539))))

(declare-fun bs!856351 () Bool)

(assert (= bs!856351 (and d!1393066 d!1392574)))

(assert (=> bs!856351 (= (= lt!1697885 lt!1697417) (= lambda!172545 lambda!172452))))

(declare-fun bs!856353 () Bool)

(assert (= bs!856353 (and d!1393066 b!4520155)))

(assert (=> bs!856353 (= (= lt!1697885 lt!1697017) (= lambda!172545 lambda!172449))))

(declare-fun bs!856355 () Bool)

(assert (= bs!856355 (and d!1393066 b!4520539)))

(assert (=> bs!856355 (= (= lt!1697885 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172545 lambda!172500))))

(assert (=> bs!856334 (= (= lt!1697885 lt!1697017) (= lambda!172545 lambda!172450))))

(declare-fun bs!856358 () Bool)

(assert (= bs!856358 (and d!1393066 d!1392762)))

(assert (=> bs!856358 (= (= lt!1697885 lt!1697017) (= lambda!172545 lambda!172497))))

(assert (=> d!1393066 true))

(declare-fun e!2816685 () ListMap!3589)

(assert (=> b!4520929 (= e!2816685 lt!1697891)))

(declare-fun lt!1697881 () ListMap!3589)

(assert (=> b!4520929 (= lt!1697881 (+!1540 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (h!56499 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))))))))

(assert (=> b!4520929 (= lt!1697891 (addToMapMapFromBucket!687 (t!357732 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))) (+!1540 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) (h!56499 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))))))))

(declare-fun lt!1697888 () Unit!95040)

(declare-fun call!315010 () Unit!95040)

(assert (=> b!4520929 (= lt!1697888 call!315010)))

(assert (=> b!4520929 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) lambda!172539)))

(declare-fun lt!1697883 () Unit!95040)

(assert (=> b!4520929 (= lt!1697883 lt!1697888)))

(declare-fun call!315009 () Bool)

(assert (=> b!4520929 call!315009))

(declare-fun lt!1697876 () Unit!95040)

(declare-fun Unit!95208 () Unit!95040)

(assert (=> b!4520929 (= lt!1697876 Unit!95208)))

(declare-fun call!315008 () Bool)

(assert (=> b!4520929 call!315008))

(declare-fun lt!1697880 () Unit!95040)

(declare-fun Unit!95209 () Unit!95040)

(assert (=> b!4520929 (= lt!1697880 Unit!95209)))

(declare-fun lt!1697878 () Unit!95040)

(declare-fun Unit!95210 () Unit!95040)

(assert (=> b!4520929 (= lt!1697878 Unit!95210)))

(declare-fun lt!1697887 () Unit!95040)

(assert (=> b!4520929 (= lt!1697887 (forallContained!2517 (toList!4328 lt!1697881) lambda!172540 (h!56499 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))))))))

(assert (=> b!4520929 (contains!13372 lt!1697881 (_1!28831 (h!56499 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))))))))

(declare-fun lt!1697873 () Unit!95040)

(declare-fun Unit!95211 () Unit!95040)

(assert (=> b!4520929 (= lt!1697873 Unit!95211)))

(assert (=> b!4520929 (contains!13372 lt!1697891 (_1!28831 (h!56499 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))))))))

(declare-fun lt!1697884 () Unit!95040)

(declare-fun Unit!95212 () Unit!95040)

(assert (=> b!4520929 (= lt!1697884 Unit!95212)))

(assert (=> b!4520929 (forall!10265 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))) lambda!172540)))

(declare-fun lt!1697877 () Unit!95040)

(declare-fun Unit!95213 () Unit!95040)

(assert (=> b!4520929 (= lt!1697877 Unit!95213)))

(assert (=> b!4520929 (forall!10265 (toList!4328 lt!1697881) lambda!172540)))

(declare-fun lt!1697874 () Unit!95040)

(declare-fun Unit!95214 () Unit!95040)

(assert (=> b!4520929 (= lt!1697874 Unit!95214)))

(declare-fun lt!1697882 () Unit!95040)

(declare-fun Unit!95215 () Unit!95040)

(assert (=> b!4520929 (= lt!1697882 Unit!95215)))

(declare-fun lt!1697871 () Unit!95040)

(assert (=> b!4520929 (= lt!1697871 (addForallContainsKeyThenBeforeAdding!338 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697891 (_1!28831 (h!56499 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))))) (_2!28831 (h!56499 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))))))))

(assert (=> b!4520929 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) lambda!172540)))

(declare-fun lt!1697879 () Unit!95040)

(assert (=> b!4520929 (= lt!1697879 lt!1697871)))

(assert (=> b!4520929 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) lambda!172540)))

(declare-fun lt!1697886 () Unit!95040)

(declare-fun Unit!95216 () Unit!95040)

(assert (=> b!4520929 (= lt!1697886 Unit!95216)))

(declare-fun res!1881594 () Bool)

(assert (=> b!4520929 (= res!1881594 (forall!10265 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))) lambda!172540))))

(declare-fun e!2816683 () Bool)

(assert (=> b!4520929 (=> (not res!1881594) (not e!2816683))))

(assert (=> b!4520929 e!2816683))

(declare-fun lt!1697872 () Unit!95040)

(declare-fun Unit!95217 () Unit!95040)

(assert (=> b!4520929 (= lt!1697872 Unit!95217)))

(declare-fun b!4520930 () Bool)

(assert (=> b!4520930 (= e!2816683 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) lambda!172540))))

(declare-fun bm!315003 () Bool)

(assert (=> bm!315003 (= call!315010 (lemmaContainsAllItsOwnKeys!338 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))))))

(declare-fun c!771592 () Bool)

(declare-fun bm!315004 () Bool)

(assert (=> bm!315004 (= call!315009 (forall!10265 (ite c!771592 (toList!4328 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (toList!4328 lt!1697881)) (ite c!771592 lambda!172538 lambda!172540)))))

(declare-fun b!4520931 () Bool)

(declare-fun res!1881593 () Bool)

(declare-fun e!2816684 () Bool)

(assert (=> b!4520931 (=> (not res!1881593) (not e!2816684))))

(assert (=> b!4520931 (= res!1881593 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) lambda!172545))))

(assert (=> d!1393066 e!2816684))

(declare-fun res!1881595 () Bool)

(assert (=> d!1393066 (=> (not res!1881595) (not e!2816684))))

(assert (=> d!1393066 (= res!1881595 (forall!10265 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))) lambda!172545))))

(assert (=> d!1393066 (= lt!1697885 e!2816685)))

(assert (=> d!1393066 (= c!771592 ((_ is Nil!50646) (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))))))

(assert (=> d!1393066 (noDuplicateKeys!1160 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))))))

(assert (=> d!1393066 (= (addToMapMapFromBucket!687 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) lt!1697885)))

(declare-fun bm!315005 () Bool)

(assert (=> bm!315005 (= call!315008 (forall!10265 (ite c!771592 (toList!4328 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (t!357732 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477)))))) (ite c!771592 lambda!172538 lambda!172540)))))

(assert (=> b!4520932 (= e!2816685 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))))))

(declare-fun lt!1697875 () Unit!95040)

(assert (=> b!4520932 (= lt!1697875 call!315010)))

(assert (=> b!4520932 call!315008))

(declare-fun lt!1697889 () Unit!95040)

(assert (=> b!4520932 (= lt!1697889 lt!1697875)))

(assert (=> b!4520932 call!315009))

(declare-fun lt!1697890 () Unit!95040)

(declare-fun Unit!95218 () Unit!95040)

(assert (=> b!4520932 (= lt!1697890 Unit!95218)))

(declare-fun b!4520933 () Bool)

(assert (=> b!4520933 (= e!2816684 (invariantList!1017 (toList!4328 lt!1697885)))))

(assert (= (and d!1393066 c!771592) b!4520932))

(assert (= (and d!1393066 (not c!771592)) b!4520929))

(assert (= (and b!4520929 res!1881594) b!4520930))

(assert (= (or b!4520932 b!4520929) bm!315005))

(assert (= (or b!4520932 b!4520929) bm!315004))

(assert (= (or b!4520932 b!4520929) bm!315003))

(assert (= (and d!1393066 res!1881595) b!4520931))

(assert (= (and b!4520931 res!1881593) b!4520933))

(declare-fun m!5269685 () Bool)

(assert (=> d!1393066 m!5269685))

(declare-fun m!5269687 () Bool)

(assert (=> d!1393066 m!5269687))

(declare-fun m!5269689 () Bool)

(assert (=> b!4520930 m!5269689))

(declare-fun m!5269691 () Bool)

(assert (=> bm!315004 m!5269691))

(assert (=> bm!315003 m!5268167))

(declare-fun m!5269693 () Bool)

(assert (=> bm!315003 m!5269693))

(declare-fun m!5269695 () Bool)

(assert (=> b!4520933 m!5269695))

(declare-fun m!5269697 () Bool)

(assert (=> b!4520931 m!5269697))

(declare-fun m!5269699 () Bool)

(assert (=> bm!315005 m!5269699))

(assert (=> b!4520929 m!5268167))

(declare-fun m!5269701 () Bool)

(assert (=> b!4520929 m!5269701))

(assert (=> b!4520929 m!5269689))

(declare-fun m!5269703 () Bool)

(assert (=> b!4520929 m!5269703))

(assert (=> b!4520929 m!5268167))

(declare-fun m!5269705 () Bool)

(assert (=> b!4520929 m!5269705))

(assert (=> b!4520929 m!5269689))

(declare-fun m!5269707 () Bool)

(assert (=> b!4520929 m!5269707))

(assert (=> b!4520929 m!5269701))

(declare-fun m!5269709 () Bool)

(assert (=> b!4520929 m!5269709))

(declare-fun m!5269711 () Bool)

(assert (=> b!4520929 m!5269711))

(declare-fun m!5269713 () Bool)

(assert (=> b!4520929 m!5269713))

(assert (=> b!4520929 m!5269707))

(declare-fun m!5269715 () Bool)

(assert (=> b!4520929 m!5269715))

(declare-fun m!5269717 () Bool)

(assert (=> b!4520929 m!5269717))

(assert (=> b!4520087 d!1393066))

(declare-fun bs!856375 () Bool)

(declare-fun d!1393068 () Bool)

(assert (= bs!856375 (and d!1393068 d!1392458)))

(declare-fun lambda!172547 () Int)

(assert (=> bs!856375 (= lambda!172547 lambda!172357)))

(declare-fun bs!856376 () Bool)

(assert (= bs!856376 (and d!1393068 d!1392900)))

(assert (=> bs!856376 (= lambda!172547 lambda!172510)))

(declare-fun bs!856377 () Bool)

(assert (= bs!856377 (and d!1393068 d!1392542)))

(assert (=> bs!856377 (= lambda!172547 lambda!172442)))

(declare-fun bs!856378 () Bool)

(assert (= bs!856378 (and d!1393068 d!1392534)))

(assert (=> bs!856378 (= lambda!172547 lambda!172439)))

(declare-fun bs!856379 () Bool)

(assert (= bs!856379 (and d!1393068 d!1392582)))

(assert (=> bs!856379 (= lambda!172547 lambda!172455)))

(declare-fun bs!856380 () Bool)

(assert (= bs!856380 (and d!1393068 d!1392526)))

(assert (=> bs!856380 (= lambda!172547 lambda!172437)))

(declare-fun bs!856381 () Bool)

(assert (= bs!856381 (and d!1393068 d!1392530)))

(assert (=> bs!856381 (= lambda!172547 lambda!172438)))

(declare-fun bs!856382 () Bool)

(assert (= bs!856382 (and d!1393068 d!1392416)))

(assert (=> bs!856382 (= lambda!172547 lambda!172348)))

(declare-fun bs!856383 () Bool)

(assert (= bs!856383 (and d!1393068 d!1392446)))

(assert (=> bs!856383 (not (= lambda!172547 lambda!172351))))

(declare-fun bs!856384 () Bool)

(assert (= bs!856384 (and d!1393068 d!1392560)))

(assert (=> bs!856384 (= lambda!172547 lambda!172448)))

(declare-fun bs!856385 () Bool)

(assert (= bs!856385 (and d!1393068 start!447492)))

(assert (=> bs!856385 (= lambda!172547 lambda!172325)))

(declare-fun bs!856386 () Bool)

(assert (= bs!856386 (and d!1393068 d!1392516)))

(assert (=> bs!856386 (= lambda!172547 lambda!172434)))

(declare-fun bs!856387 () Bool)

(assert (= bs!856387 (and d!1393068 d!1392462)))

(assert (=> bs!856387 (= lambda!172547 lambda!172358)))

(declare-fun bs!856388 () Bool)

(assert (= bs!856388 (and d!1393068 d!1392468)))

(assert (=> bs!856388 (= lambda!172547 lambda!172359)))

(declare-fun bs!856389 () Bool)

(assert (= bs!856389 (and d!1393068 d!1392796)))

(assert (=> bs!856389 (= lambda!172547 lambda!172505)))

(declare-fun lt!1697895 () ListMap!3589)

(assert (=> d!1393068 (invariantList!1017 (toList!4328 lt!1697895))))

(declare-fun e!2816686 () ListMap!3589)

(assert (=> d!1393068 (= lt!1697895 e!2816686)))

(declare-fun c!771593 () Bool)

(assert (=> d!1393068 (= c!771593 ((_ is Cons!50647) (t!357733 (t!357733 (toList!4327 lm!1477)))))))

(assert (=> d!1393068 (forall!10263 (t!357733 (t!357733 (toList!4327 lm!1477))) lambda!172547)))

(assert (=> d!1393068 (= (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477)))) lt!1697895)))

(declare-fun b!4520935 () Bool)

(assert (=> b!4520935 (= e!2816686 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (t!357733 (t!357733 (toList!4327 lm!1477))))) (extractMap!1216 (t!357733 (t!357733 (t!357733 (toList!4327 lm!1477)))))))))

(declare-fun b!4520936 () Bool)

(assert (=> b!4520936 (= e!2816686 (ListMap!3590 Nil!50646))))

(assert (= (and d!1393068 c!771593) b!4520935))

(assert (= (and d!1393068 (not c!771593)) b!4520936))

(declare-fun m!5269737 () Bool)

(assert (=> d!1393068 m!5269737))

(declare-fun m!5269739 () Bool)

(assert (=> d!1393068 m!5269739))

(declare-fun m!5269741 () Bool)

(assert (=> b!4520935 m!5269741))

(assert (=> b!4520935 m!5269741))

(declare-fun m!5269743 () Bool)

(assert (=> b!4520935 m!5269743))

(assert (=> b!4520087 d!1393068))

(declare-fun bs!856390 () Bool)

(declare-fun b!4520946 () Bool)

(assert (= bs!856390 (and b!4520946 b!4520536)))

(declare-fun lambda!172548 () Int)

(assert (=> bs!856390 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697584) (= lambda!172548 lambda!172503))))

(declare-fun bs!856391 () Bool)

(assert (= bs!856391 (and b!4520946 d!1392776)))

(assert (=> bs!856391 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697578) (= lambda!172548 lambda!172504))))

(declare-fun bs!856392 () Bool)

(assert (= bs!856392 (and b!4520946 b!4520929)))

(assert (=> bs!856392 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697891) (= lambda!172548 lambda!172540))))

(declare-fun bs!856393 () Bool)

(assert (= bs!856393 (and b!4520946 b!4520152)))

(assert (=> bs!856393 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697423) (= lambda!172548 lambda!172451))))

(declare-fun bs!856394 () Bool)

(assert (= bs!856394 (and b!4520946 d!1393066)))

(assert (=> bs!856394 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697885) (= lambda!172548 lambda!172545))))

(declare-fun bs!856395 () Bool)

(assert (= bs!856395 (and b!4520946 d!1393050)))

(assert (=> bs!856395 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697843) (= lambda!172548 lambda!172537))))

(declare-fun bs!856396 () Bool)

(assert (= bs!856396 (and b!4520946 b!4520904)))

(assert (=> bs!856396 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172548 lambda!172534))))

(declare-fun bs!856397 () Bool)

(assert (= bs!856397 (and b!4520946 d!1392554)))

(assert (=> bs!856397 (not (= lambda!172548 lambda!172445))))

(declare-fun bs!856398 () Bool)

(assert (= bs!856398 (and b!4520946 b!4520901)))

(assert (=> bs!856398 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172548 lambda!172535))))

(declare-fun bs!856399 () Bool)

(assert (= bs!856399 (and b!4520946 b!4520058)))

(assert (=> bs!856399 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172548 lambda!172431))))

(declare-fun bs!856400 () Bool)

(assert (= bs!856400 (and b!4520946 b!4520061)))

(assert (=> bs!856400 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172548 lambda!172430))))

(declare-fun bs!856401 () Bool)

(assert (= bs!856401 (and b!4520946 d!1392478)))

(assert (=> bs!856401 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697339) (= lambda!172548 lambda!172433))))

(assert (=> bs!856399 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697345) (= lambda!172548 lambda!172432))))

(declare-fun bs!856403 () Bool)

(assert (= bs!856403 (and b!4520946 d!1392774)))

(assert (=> bs!856403 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172548 lambda!172499))))

(assert (=> bs!856390 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172548 lambda!172502))))

(assert (=> bs!856398 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697849) (= lambda!172548 lambda!172536))))

(declare-fun bs!856404 () Bool)

(assert (= bs!856404 (and b!4520946 b!4520932)))

(assert (=> bs!856404 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172548 lambda!172538))))

(assert (=> bs!856392 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172548 lambda!172539))))

(declare-fun bs!856405 () Bool)

(assert (= bs!856405 (and b!4520946 d!1392574)))

(assert (=> bs!856405 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697417) (= lambda!172548 lambda!172452))))

(declare-fun bs!856406 () Bool)

(assert (= bs!856406 (and b!4520946 b!4520155)))

(assert (=> bs!856406 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172548 lambda!172449))))

(declare-fun bs!856407 () Bool)

(assert (= bs!856407 (and b!4520946 b!4520539)))

(assert (=> bs!856407 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172548 lambda!172500))))

(assert (=> bs!856393 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172548 lambda!172450))))

(declare-fun bs!856408 () Bool)

(assert (= bs!856408 (and b!4520946 d!1392762)))

(assert (=> bs!856408 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172548 lambda!172497))))

(assert (=> b!4520946 true))

(declare-fun bs!856409 () Bool)

(declare-fun b!4520943 () Bool)

(assert (= bs!856409 (and b!4520943 b!4520536)))

(declare-fun lambda!172549 () Int)

(assert (=> bs!856409 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697584) (= lambda!172549 lambda!172503))))

(declare-fun bs!856410 () Bool)

(assert (= bs!856410 (and b!4520943 d!1392776)))

(assert (=> bs!856410 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697578) (= lambda!172549 lambda!172504))))

(declare-fun bs!856411 () Bool)

(assert (= bs!856411 (and b!4520943 b!4520929)))

(assert (=> bs!856411 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697891) (= lambda!172549 lambda!172540))))

(declare-fun bs!856412 () Bool)

(assert (= bs!856412 (and b!4520943 b!4520152)))

(assert (=> bs!856412 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697423) (= lambda!172549 lambda!172451))))

(declare-fun bs!856413 () Bool)

(assert (= bs!856413 (and b!4520943 d!1393066)))

(assert (=> bs!856413 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697885) (= lambda!172549 lambda!172545))))

(declare-fun bs!856414 () Bool)

(assert (= bs!856414 (and b!4520943 d!1393050)))

(assert (=> bs!856414 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697843) (= lambda!172549 lambda!172537))))

(declare-fun bs!856415 () Bool)

(assert (= bs!856415 (and b!4520943 b!4520904)))

(assert (=> bs!856415 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172549 lambda!172534))))

(declare-fun bs!856416 () Bool)

(assert (= bs!856416 (and b!4520943 d!1392554)))

(assert (=> bs!856416 (not (= lambda!172549 lambda!172445))))

(declare-fun bs!856417 () Bool)

(assert (= bs!856417 (and b!4520943 b!4520058)))

(assert (=> bs!856417 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172549 lambda!172431))))

(declare-fun bs!856418 () Bool)

(assert (= bs!856418 (and b!4520943 b!4520061)))

(assert (=> bs!856418 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172549 lambda!172430))))

(declare-fun bs!856419 () Bool)

(assert (= bs!856419 (and b!4520943 d!1392478)))

(assert (=> bs!856419 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697339) (= lambda!172549 lambda!172433))))

(assert (=> bs!856417 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697345) (= lambda!172549 lambda!172432))))

(declare-fun bs!856420 () Bool)

(assert (= bs!856420 (and b!4520943 d!1392774)))

(assert (=> bs!856420 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172549 lambda!172499))))

(assert (=> bs!856409 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172549 lambda!172502))))

(declare-fun bs!856421 () Bool)

(assert (= bs!856421 (and b!4520943 b!4520901)))

(assert (=> bs!856421 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697849) (= lambda!172549 lambda!172536))))

(declare-fun bs!856422 () Bool)

(assert (= bs!856422 (and b!4520943 b!4520932)))

(assert (=> bs!856422 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172549 lambda!172538))))

(assert (=> bs!856411 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172549 lambda!172539))))

(declare-fun bs!856423 () Bool)

(assert (= bs!856423 (and b!4520943 d!1392574)))

(assert (=> bs!856423 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697417) (= lambda!172549 lambda!172452))))

(declare-fun bs!856424 () Bool)

(assert (= bs!856424 (and b!4520943 b!4520155)))

(assert (=> bs!856424 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172549 lambda!172449))))

(declare-fun bs!856425 () Bool)

(assert (= bs!856425 (and b!4520943 b!4520539)))

(assert (=> bs!856425 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172549 lambda!172500))))

(assert (=> bs!856421 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172549 lambda!172535))))

(declare-fun bs!856426 () Bool)

(assert (= bs!856426 (and b!4520943 b!4520946)))

(assert (=> bs!856426 (= lambda!172549 lambda!172548)))

(assert (=> bs!856412 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172549 lambda!172450))))

(declare-fun bs!856427 () Bool)

(assert (= bs!856427 (and b!4520943 d!1392762)))

(assert (=> bs!856427 (= (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172549 lambda!172497))))

(assert (=> b!4520943 true))

(declare-fun lt!1697916 () ListMap!3589)

(declare-fun lambda!172550 () Int)

(assert (=> bs!856409 (= (= lt!1697916 lt!1697584) (= lambda!172550 lambda!172503))))

(assert (=> bs!856411 (= (= lt!1697916 lt!1697891) (= lambda!172550 lambda!172540))))

(assert (=> bs!856412 (= (= lt!1697916 lt!1697423) (= lambda!172550 lambda!172451))))

(assert (=> bs!856413 (= (= lt!1697916 lt!1697885) (= lambda!172550 lambda!172545))))

(assert (=> bs!856414 (= (= lt!1697916 lt!1697843) (= lambda!172550 lambda!172537))))

(assert (=> bs!856415 (= (= lt!1697916 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172550 lambda!172534))))

(assert (=> bs!856416 (not (= lambda!172550 lambda!172445))))

(assert (=> bs!856417 (= (= lt!1697916 lt!1697024) (= lambda!172550 lambda!172431))))

(assert (=> bs!856418 (= (= lt!1697916 lt!1697024) (= lambda!172550 lambda!172430))))

(assert (=> bs!856419 (= (= lt!1697916 lt!1697339) (= lambda!172550 lambda!172433))))

(assert (=> bs!856417 (= (= lt!1697916 lt!1697345) (= lambda!172550 lambda!172432))))

(assert (=> bs!856420 (= (= lt!1697916 lt!1697024) (= lambda!172550 lambda!172499))))

(assert (=> bs!856409 (= (= lt!1697916 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172550 lambda!172502))))

(assert (=> bs!856421 (= (= lt!1697916 lt!1697849) (= lambda!172550 lambda!172536))))

(assert (=> bs!856422 (= (= lt!1697916 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172550 lambda!172538))))

(assert (=> b!4520943 (= (= lt!1697916 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172550 lambda!172549))))

(assert (=> bs!856410 (= (= lt!1697916 lt!1697578) (= lambda!172550 lambda!172504))))

(assert (=> bs!856411 (= (= lt!1697916 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172550 lambda!172539))))

(assert (=> bs!856423 (= (= lt!1697916 lt!1697417) (= lambda!172550 lambda!172452))))

(assert (=> bs!856424 (= (= lt!1697916 lt!1697017) (= lambda!172550 lambda!172449))))

(assert (=> bs!856425 (= (= lt!1697916 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172550 lambda!172500))))

(assert (=> bs!856421 (= (= lt!1697916 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172550 lambda!172535))))

(assert (=> bs!856426 (= (= lt!1697916 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172550 lambda!172548))))

(assert (=> bs!856412 (= (= lt!1697916 lt!1697017) (= lambda!172550 lambda!172450))))

(assert (=> bs!856427 (= (= lt!1697916 lt!1697017) (= lambda!172550 lambda!172497))))

(assert (=> b!4520943 true))

(declare-fun bs!856429 () Bool)

(declare-fun d!1393078 () Bool)

(assert (= bs!856429 (and d!1393078 b!4520536)))

(declare-fun lambda!172551 () Int)

(declare-fun lt!1697910 () ListMap!3589)

(assert (=> bs!856429 (= (= lt!1697910 lt!1697584) (= lambda!172551 lambda!172503))))

(declare-fun bs!856430 () Bool)

(assert (= bs!856430 (and d!1393078 b!4520929)))

(assert (=> bs!856430 (= (= lt!1697910 lt!1697891) (= lambda!172551 lambda!172540))))

(declare-fun bs!856431 () Bool)

(assert (= bs!856431 (and d!1393078 b!4520152)))

(assert (=> bs!856431 (= (= lt!1697910 lt!1697423) (= lambda!172551 lambda!172451))))

(declare-fun bs!856432 () Bool)

(assert (= bs!856432 (and d!1393078 d!1393066)))

(assert (=> bs!856432 (= (= lt!1697910 lt!1697885) (= lambda!172551 lambda!172545))))

(declare-fun bs!856433 () Bool)

(assert (= bs!856433 (and d!1393078 d!1393050)))

(assert (=> bs!856433 (= (= lt!1697910 lt!1697843) (= lambda!172551 lambda!172537))))

(declare-fun bs!856434 () Bool)

(assert (= bs!856434 (and d!1393078 b!4520904)))

(assert (=> bs!856434 (= (= lt!1697910 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172551 lambda!172534))))

(declare-fun bs!856435 () Bool)

(assert (= bs!856435 (and d!1393078 d!1392554)))

(assert (=> bs!856435 (not (= lambda!172551 lambda!172445))))

(declare-fun bs!856436 () Bool)

(assert (= bs!856436 (and d!1393078 b!4520058)))

(assert (=> bs!856436 (= (= lt!1697910 lt!1697024) (= lambda!172551 lambda!172431))))

(declare-fun bs!856437 () Bool)

(assert (= bs!856437 (and d!1393078 b!4520061)))

(assert (=> bs!856437 (= (= lt!1697910 lt!1697024) (= lambda!172551 lambda!172430))))

(declare-fun bs!856438 () Bool)

(assert (= bs!856438 (and d!1393078 d!1392478)))

(assert (=> bs!856438 (= (= lt!1697910 lt!1697339) (= lambda!172551 lambda!172433))))

(assert (=> bs!856436 (= (= lt!1697910 lt!1697345) (= lambda!172551 lambda!172432))))

(declare-fun bs!856439 () Bool)

(assert (= bs!856439 (and d!1393078 d!1392774)))

(assert (=> bs!856439 (= (= lt!1697910 lt!1697024) (= lambda!172551 lambda!172499))))

(assert (=> bs!856429 (= (= lt!1697910 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172551 lambda!172502))))

(declare-fun bs!856440 () Bool)

(assert (= bs!856440 (and d!1393078 b!4520901)))

(assert (=> bs!856440 (= (= lt!1697910 lt!1697849) (= lambda!172551 lambda!172536))))

(declare-fun bs!856441 () Bool)

(assert (= bs!856441 (and d!1393078 b!4520932)))

(assert (=> bs!856441 (= (= lt!1697910 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172551 lambda!172538))))

(declare-fun bs!856442 () Bool)

(assert (= bs!856442 (and d!1393078 b!4520943)))

(assert (=> bs!856442 (= (= lt!1697910 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172551 lambda!172549))))

(declare-fun bs!856443 () Bool)

(assert (= bs!856443 (and d!1393078 d!1392776)))

(assert (=> bs!856443 (= (= lt!1697910 lt!1697578) (= lambda!172551 lambda!172504))))

(assert (=> bs!856430 (= (= lt!1697910 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172551 lambda!172539))))

(declare-fun bs!856444 () Bool)

(assert (= bs!856444 (and d!1393078 d!1392574)))

(assert (=> bs!856444 (= (= lt!1697910 lt!1697417) (= lambda!172551 lambda!172452))))

(declare-fun bs!856445 () Bool)

(assert (= bs!856445 (and d!1393078 b!4520155)))

(assert (=> bs!856445 (= (= lt!1697910 lt!1697017) (= lambda!172551 lambda!172449))))

(declare-fun bs!856446 () Bool)

(assert (= bs!856446 (and d!1393078 b!4520539)))

(assert (=> bs!856446 (= (= lt!1697910 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172551 lambda!172500))))

(assert (=> bs!856440 (= (= lt!1697910 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172551 lambda!172535))))

(declare-fun bs!856447 () Bool)

(assert (= bs!856447 (and d!1393078 b!4520946)))

(assert (=> bs!856447 (= (= lt!1697910 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172551 lambda!172548))))

(assert (=> bs!856442 (= (= lt!1697910 lt!1697916) (= lambda!172551 lambda!172550))))

(assert (=> bs!856431 (= (= lt!1697910 lt!1697017) (= lambda!172551 lambda!172450))))

(declare-fun bs!856448 () Bool)

(assert (= bs!856448 (and d!1393078 d!1392762)))

(assert (=> bs!856448 (= (= lt!1697910 lt!1697017) (= lambda!172551 lambda!172497))))

(assert (=> d!1393078 true))

(declare-fun e!2816695 () ListMap!3589)

(assert (=> b!4520943 (= e!2816695 lt!1697916)))

(declare-fun lt!1697906 () ListMap!3589)

(assert (=> b!4520943 (= lt!1697906 (+!1540 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (h!56499 (t!357732 (_2!28832 lt!1697023)))))))

(assert (=> b!4520943 (= lt!1697916 (addToMapMapFromBucket!687 (t!357732 (t!357732 (_2!28832 lt!1697023))) (+!1540 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) (h!56499 (t!357732 (_2!28832 lt!1697023))))))))

(declare-fun lt!1697913 () Unit!95040)

(declare-fun call!315013 () Unit!95040)

(assert (=> b!4520943 (= lt!1697913 call!315013)))

(assert (=> b!4520943 (forall!10265 (toList!4328 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) lambda!172549)))

(declare-fun lt!1697908 () Unit!95040)

(assert (=> b!4520943 (= lt!1697908 lt!1697913)))

(declare-fun call!315012 () Bool)

(assert (=> b!4520943 call!315012))

(declare-fun lt!1697901 () Unit!95040)

(declare-fun Unit!95220 () Unit!95040)

(assert (=> b!4520943 (= lt!1697901 Unit!95220)))

(declare-fun call!315011 () Bool)

(assert (=> b!4520943 call!315011))

(declare-fun lt!1697905 () Unit!95040)

(declare-fun Unit!95221 () Unit!95040)

(assert (=> b!4520943 (= lt!1697905 Unit!95221)))

(declare-fun lt!1697903 () Unit!95040)

(declare-fun Unit!95222 () Unit!95040)

(assert (=> b!4520943 (= lt!1697903 Unit!95222)))

(declare-fun lt!1697912 () Unit!95040)

(assert (=> b!4520943 (= lt!1697912 (forallContained!2517 (toList!4328 lt!1697906) lambda!172550 (h!56499 (t!357732 (_2!28832 lt!1697023)))))))

(assert (=> b!4520943 (contains!13372 lt!1697906 (_1!28831 (h!56499 (t!357732 (_2!28832 lt!1697023)))))))

(declare-fun lt!1697898 () Unit!95040)

(declare-fun Unit!95223 () Unit!95040)

(assert (=> b!4520943 (= lt!1697898 Unit!95223)))

(assert (=> b!4520943 (contains!13372 lt!1697916 (_1!28831 (h!56499 (t!357732 (_2!28832 lt!1697023)))))))

(declare-fun lt!1697909 () Unit!95040)

(declare-fun Unit!95224 () Unit!95040)

(assert (=> b!4520943 (= lt!1697909 Unit!95224)))

(assert (=> b!4520943 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172550)))

(declare-fun lt!1697902 () Unit!95040)

(declare-fun Unit!95225 () Unit!95040)

(assert (=> b!4520943 (= lt!1697902 Unit!95225)))

(assert (=> b!4520943 (forall!10265 (toList!4328 lt!1697906) lambda!172550)))

(declare-fun lt!1697899 () Unit!95040)

(declare-fun Unit!95226 () Unit!95040)

(assert (=> b!4520943 (= lt!1697899 Unit!95226)))

(declare-fun lt!1697907 () Unit!95040)

(declare-fun Unit!95227 () Unit!95040)

(assert (=> b!4520943 (= lt!1697907 Unit!95227)))

(declare-fun lt!1697896 () Unit!95040)

(assert (=> b!4520943 (= lt!1697896 (addForallContainsKeyThenBeforeAdding!338 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697916 (_1!28831 (h!56499 (t!357732 (_2!28832 lt!1697023)))) (_2!28831 (h!56499 (t!357732 (_2!28832 lt!1697023))))))))

(assert (=> b!4520943 (forall!10265 (toList!4328 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) lambda!172550)))

(declare-fun lt!1697904 () Unit!95040)

(assert (=> b!4520943 (= lt!1697904 lt!1697896)))

(assert (=> b!4520943 (forall!10265 (toList!4328 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) lambda!172550)))

(declare-fun lt!1697911 () Unit!95040)

(declare-fun Unit!95228 () Unit!95040)

(assert (=> b!4520943 (= lt!1697911 Unit!95228)))

(declare-fun res!1881603 () Bool)

(assert (=> b!4520943 (= res!1881603 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172550))))

(declare-fun e!2816693 () Bool)

(assert (=> b!4520943 (=> (not res!1881603) (not e!2816693))))

(assert (=> b!4520943 e!2816693))

(declare-fun lt!1697897 () Unit!95040)

(declare-fun Unit!95229 () Unit!95040)

(assert (=> b!4520943 (= lt!1697897 Unit!95229)))

(declare-fun b!4520944 () Bool)

(assert (=> b!4520944 (= e!2816693 (forall!10265 (toList!4328 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) lambda!172550))))

(declare-fun bm!315006 () Bool)

(assert (=> bm!315006 (= call!315013 (lemmaContainsAllItsOwnKeys!338 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun c!771594 () Bool)

(declare-fun bm!315007 () Bool)

(assert (=> bm!315007 (= call!315012 (forall!10265 (ite c!771594 (toList!4328 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (toList!4328 lt!1697906)) (ite c!771594 lambda!172548 lambda!172550)))))

(declare-fun b!4520945 () Bool)

(declare-fun res!1881602 () Bool)

(declare-fun e!2816694 () Bool)

(assert (=> b!4520945 (=> (not res!1881602) (not e!2816694))))

(assert (=> b!4520945 (= res!1881602 (forall!10265 (toList!4328 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) lambda!172551))))

(assert (=> d!1393078 e!2816694))

(declare-fun res!1881604 () Bool)

(assert (=> d!1393078 (=> (not res!1881604) (not e!2816694))))

(assert (=> d!1393078 (= res!1881604 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172551))))

(assert (=> d!1393078 (= lt!1697910 e!2816695)))

(assert (=> d!1393078 (= c!771594 ((_ is Nil!50646) (t!357732 (_2!28832 lt!1697023))))))

(assert (=> d!1393078 (noDuplicateKeys!1160 (t!357732 (_2!28832 lt!1697023)))))

(assert (=> d!1393078 (= (addToMapMapFromBucket!687 (t!357732 (_2!28832 lt!1697023)) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) lt!1697910)))

(declare-fun bm!315008 () Bool)

(assert (=> bm!315008 (= call!315011 (forall!10265 (ite c!771594 (toList!4328 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (t!357732 (t!357732 (_2!28832 lt!1697023)))) (ite c!771594 lambda!172548 lambda!172550)))))

(assert (=> b!4520946 (= e!2816695 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun lt!1697900 () Unit!95040)

(assert (=> b!4520946 (= lt!1697900 call!315013)))

(assert (=> b!4520946 call!315011))

(declare-fun lt!1697914 () Unit!95040)

(assert (=> b!4520946 (= lt!1697914 lt!1697900)))

(assert (=> b!4520946 call!315012))

(declare-fun lt!1697915 () Unit!95040)

(declare-fun Unit!95230 () Unit!95040)

(assert (=> b!4520946 (= lt!1697915 Unit!95230)))

(declare-fun b!4520947 () Bool)

(assert (=> b!4520947 (= e!2816694 (invariantList!1017 (toList!4328 lt!1697910)))))

(assert (= (and d!1393078 c!771594) b!4520946))

(assert (= (and d!1393078 (not c!771594)) b!4520943))

(assert (= (and b!4520943 res!1881603) b!4520944))

(assert (= (or b!4520946 b!4520943) bm!315008))

(assert (= (or b!4520946 b!4520943) bm!315007))

(assert (= (or b!4520946 b!4520943) bm!315006))

(assert (= (and d!1393078 res!1881604) b!4520945))

(assert (= (and b!4520945 res!1881602) b!4520947))

(declare-fun m!5269785 () Bool)

(assert (=> d!1393078 m!5269785))

(assert (=> d!1393078 m!5268199))

(declare-fun m!5269787 () Bool)

(assert (=> b!4520944 m!5269787))

(declare-fun m!5269789 () Bool)

(assert (=> bm!315007 m!5269789))

(assert (=> bm!315006 m!5268281))

(declare-fun m!5269791 () Bool)

(assert (=> bm!315006 m!5269791))

(declare-fun m!5269793 () Bool)

(assert (=> b!4520947 m!5269793))

(declare-fun m!5269795 () Bool)

(assert (=> b!4520945 m!5269795))

(declare-fun m!5269799 () Bool)

(assert (=> bm!315008 m!5269799))

(assert (=> b!4520943 m!5268281))

(declare-fun m!5269803 () Bool)

(assert (=> b!4520943 m!5269803))

(assert (=> b!4520943 m!5269787))

(declare-fun m!5269805 () Bool)

(assert (=> b!4520943 m!5269805))

(assert (=> b!4520943 m!5268281))

(declare-fun m!5269807 () Bool)

(assert (=> b!4520943 m!5269807))

(assert (=> b!4520943 m!5269787))

(declare-fun m!5269809 () Bool)

(assert (=> b!4520943 m!5269809))

(assert (=> b!4520943 m!5269803))

(declare-fun m!5269811 () Bool)

(assert (=> b!4520943 m!5269811))

(declare-fun m!5269813 () Bool)

(assert (=> b!4520943 m!5269813))

(declare-fun m!5269815 () Bool)

(assert (=> b!4520943 m!5269815))

(assert (=> b!4520943 m!5269809))

(declare-fun m!5269817 () Bool)

(assert (=> b!4520943 m!5269817))

(declare-fun m!5269819 () Bool)

(assert (=> b!4520943 m!5269819))

(assert (=> b!4520152 d!1393078))

(declare-fun bs!856450 () Bool)

(declare-fun d!1393102 () Bool)

(assert (= bs!856450 (and d!1393102 b!4520536)))

(declare-fun lambda!172556 () Int)

(assert (=> bs!856450 (= (= lt!1697423 lt!1697584) (= lambda!172556 lambda!172503))))

(declare-fun bs!856451 () Bool)

(assert (= bs!856451 (and d!1393102 b!4520929)))

(assert (=> bs!856451 (= (= lt!1697423 lt!1697891) (= lambda!172556 lambda!172540))))

(declare-fun bs!856452 () Bool)

(assert (= bs!856452 (and d!1393102 b!4520152)))

(assert (=> bs!856452 (= lambda!172556 lambda!172451)))

(declare-fun bs!856453 () Bool)

(assert (= bs!856453 (and d!1393102 d!1393066)))

(assert (=> bs!856453 (= (= lt!1697423 lt!1697885) (= lambda!172556 lambda!172545))))

(declare-fun bs!856454 () Bool)

(assert (= bs!856454 (and d!1393102 d!1393050)))

(assert (=> bs!856454 (= (= lt!1697423 lt!1697843) (= lambda!172556 lambda!172537))))

(declare-fun bs!856456 () Bool)

(assert (= bs!856456 (and d!1393102 b!4520904)))

(assert (=> bs!856456 (= (= lt!1697423 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172556 lambda!172534))))

(declare-fun bs!856457 () Bool)

(assert (= bs!856457 (and d!1393102 d!1392554)))

(assert (=> bs!856457 (not (= lambda!172556 lambda!172445))))

(declare-fun bs!856458 () Bool)

(assert (= bs!856458 (and d!1393102 b!4520058)))

(assert (=> bs!856458 (= (= lt!1697423 lt!1697024) (= lambda!172556 lambda!172431))))

(declare-fun bs!856459 () Bool)

(assert (= bs!856459 (and d!1393102 b!4520061)))

(assert (=> bs!856459 (= (= lt!1697423 lt!1697024) (= lambda!172556 lambda!172430))))

(declare-fun bs!856460 () Bool)

(assert (= bs!856460 (and d!1393102 d!1392478)))

(assert (=> bs!856460 (= (= lt!1697423 lt!1697339) (= lambda!172556 lambda!172433))))

(assert (=> bs!856458 (= (= lt!1697423 lt!1697345) (= lambda!172556 lambda!172432))))

(declare-fun bs!856461 () Bool)

(assert (= bs!856461 (and d!1393102 d!1392774)))

(assert (=> bs!856461 (= (= lt!1697423 lt!1697024) (= lambda!172556 lambda!172499))))

(assert (=> bs!856450 (= (= lt!1697423 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172556 lambda!172502))))

(declare-fun bs!856462 () Bool)

(assert (= bs!856462 (and d!1393102 b!4520901)))

(assert (=> bs!856462 (= (= lt!1697423 lt!1697849) (= lambda!172556 lambda!172536))))

(declare-fun bs!856463 () Bool)

(assert (= bs!856463 (and d!1393102 b!4520932)))

(assert (=> bs!856463 (= (= lt!1697423 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172556 lambda!172538))))

(declare-fun bs!856464 () Bool)

(assert (= bs!856464 (and d!1393102 b!4520943)))

(assert (=> bs!856464 (= (= lt!1697423 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172556 lambda!172549))))

(declare-fun bs!856465 () Bool)

(assert (= bs!856465 (and d!1393102 d!1392776)))

(assert (=> bs!856465 (= (= lt!1697423 lt!1697578) (= lambda!172556 lambda!172504))))

(assert (=> bs!856451 (= (= lt!1697423 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172556 lambda!172539))))

(declare-fun bs!856466 () Bool)

(assert (= bs!856466 (and d!1393102 d!1392574)))

(assert (=> bs!856466 (= (= lt!1697423 lt!1697417) (= lambda!172556 lambda!172452))))

(declare-fun bs!856467 () Bool)

(assert (= bs!856467 (and d!1393102 b!4520155)))

(assert (=> bs!856467 (= (= lt!1697423 lt!1697017) (= lambda!172556 lambda!172449))))

(declare-fun bs!856468 () Bool)

(assert (= bs!856468 (and d!1393102 b!4520539)))

(assert (=> bs!856468 (= (= lt!1697423 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172556 lambda!172500))))

(assert (=> bs!856462 (= (= lt!1697423 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172556 lambda!172535))))

(declare-fun bs!856469 () Bool)

(assert (= bs!856469 (and d!1393102 b!4520946)))

(assert (=> bs!856469 (= (= lt!1697423 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172556 lambda!172548))))

(declare-fun bs!856470 () Bool)

(assert (= bs!856470 (and d!1393102 d!1393078)))

(assert (=> bs!856470 (= (= lt!1697423 lt!1697910) (= lambda!172556 lambda!172551))))

(assert (=> bs!856464 (= (= lt!1697423 lt!1697916) (= lambda!172556 lambda!172550))))

(assert (=> bs!856452 (= (= lt!1697423 lt!1697017) (= lambda!172556 lambda!172450))))

(declare-fun bs!856471 () Bool)

(assert (= bs!856471 (and d!1393102 d!1392762)))

(assert (=> bs!856471 (= (= lt!1697423 lt!1697017) (= lambda!172556 lambda!172497))))

(assert (=> d!1393102 true))

(assert (=> d!1393102 (forall!10265 (toList!4328 lt!1697017) lambda!172556)))

(declare-fun lt!1697939 () Unit!95040)

(declare-fun choose!29538 (ListMap!3589 ListMap!3589 K!12040 V!12286) Unit!95040)

(assert (=> d!1393102 (= lt!1697939 (choose!29538 lt!1697017 lt!1697423 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393102 (forall!10265 (toList!4328 (+!1540 lt!1697017 (tuple2!51075 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))) lambda!172556)))

(assert (=> d!1393102 (= (addForallContainsKeyThenBeforeAdding!338 lt!1697017 lt!1697423 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))) lt!1697939)))

(declare-fun bs!856472 () Bool)

(assert (= bs!856472 d!1393102))

(declare-fun m!5269863 () Bool)

(assert (=> bs!856472 m!5269863))

(declare-fun m!5269865 () Bool)

(assert (=> bs!856472 m!5269865))

(declare-fun m!5269867 () Bool)

(assert (=> bs!856472 m!5269867))

(declare-fun m!5269869 () Bool)

(assert (=> bs!856472 m!5269869))

(assert (=> b!4520152 d!1393102))

(declare-fun d!1393112 () Bool)

(assert (=> d!1393112 (dynLambda!21164 lambda!172451 (h!56499 (_2!28832 lt!1697023)))))

(declare-fun lt!1697979 () Unit!95040)

(declare-fun choose!29540 (List!50770 Int tuple2!51074) Unit!95040)

(assert (=> d!1393112 (= lt!1697979 (choose!29540 (toList!4328 lt!1697413) lambda!172451 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun e!2816742 () Bool)

(assert (=> d!1393112 e!2816742))

(declare-fun res!1881637 () Bool)

(assert (=> d!1393112 (=> (not res!1881637) (not e!2816742))))

(assert (=> d!1393112 (= res!1881637 (forall!10265 (toList!4328 lt!1697413) lambda!172451))))

(assert (=> d!1393112 (= (forallContained!2517 (toList!4328 lt!1697413) lambda!172451 (h!56499 (_2!28832 lt!1697023))) lt!1697979)))

(declare-fun b!4521015 () Bool)

(assert (=> b!4521015 (= e!2816742 (contains!13376 (toList!4328 lt!1697413) (h!56499 (_2!28832 lt!1697023))))))

(assert (= (and d!1393112 res!1881637) b!4521015))

(declare-fun b_lambda!155041 () Bool)

(assert (=> (not b_lambda!155041) (not d!1393112)))

(declare-fun m!5269899 () Bool)

(assert (=> d!1393112 m!5269899))

(declare-fun m!5269901 () Bool)

(assert (=> d!1393112 m!5269901))

(assert (=> d!1393112 m!5268295))

(declare-fun m!5269903 () Bool)

(assert (=> b!4521015 m!5269903))

(assert (=> b!4520152 d!1393112))

(assert (=> b!4520152 d!1392944))

(declare-fun bm!315018 () Bool)

(declare-fun call!315023 () Bool)

(declare-fun e!2816746 () List!50773)

(assert (=> bm!315018 (= call!315023 (contains!13375 e!2816746 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun c!771614 () Bool)

(declare-fun c!771613 () Bool)

(assert (=> bm!315018 (= c!771614 c!771613)))

(declare-fun b!4521016 () Bool)

(declare-fun e!2816747 () Unit!95040)

(declare-fun Unit!95233 () Unit!95040)

(assert (=> b!4521016 (= e!2816747 Unit!95233)))

(declare-fun b!4521017 () Bool)

(declare-fun e!2816748 () Unit!95040)

(declare-fun lt!1697982 () Unit!95040)

(assert (=> b!4521017 (= e!2816748 lt!1697982)))

(declare-fun lt!1697987 () Unit!95040)

(assert (=> b!4521017 (= lt!1697987 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697413) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4521017 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697413) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun lt!1697984 () Unit!95040)

(assert (=> b!4521017 (= lt!1697984 lt!1697987)))

(assert (=> b!4521017 (= lt!1697982 (lemmaInListThenGetKeysListContains!461 (toList!4328 lt!1697413) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4521017 call!315023))

(declare-fun b!4521018 () Bool)

(declare-fun e!2816744 () Bool)

(assert (=> b!4521018 (= e!2816744 (contains!13375 (keys!17594 lt!1697413) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun b!4521019 () Bool)

(assert (=> b!4521019 (= e!2816746 (getKeysList!465 (toList!4328 lt!1697413)))))

(declare-fun b!4521020 () Bool)

(assert (=> b!4521020 false))

(declare-fun lt!1697985 () Unit!95040)

(declare-fun lt!1697981 () Unit!95040)

(assert (=> b!4521020 (= lt!1697985 lt!1697981)))

(assert (=> b!4521020 (containsKey!1783 (toList!4328 lt!1697413) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))

(assert (=> b!4521020 (= lt!1697981 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 lt!1697413) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun Unit!95234 () Unit!95040)

(assert (=> b!4521020 (= e!2816747 Unit!95234)))

(declare-fun b!4521021 () Bool)

(assert (=> b!4521021 (= e!2816748 e!2816747)))

(declare-fun c!771612 () Bool)

(assert (=> b!4521021 (= c!771612 call!315023)))

(declare-fun b!4521022 () Bool)

(declare-fun e!2816743 () Bool)

(assert (=> b!4521022 (= e!2816743 e!2816744)))

(declare-fun res!1881639 () Bool)

(assert (=> b!4521022 (=> (not res!1881639) (not e!2816744))))

(assert (=> b!4521022 (= res!1881639 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697413) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun d!1393120 () Bool)

(assert (=> d!1393120 e!2816743))

(declare-fun res!1881638 () Bool)

(assert (=> d!1393120 (=> res!1881638 e!2816743)))

(declare-fun e!2816745 () Bool)

(assert (=> d!1393120 (= res!1881638 e!2816745)))

(declare-fun res!1881640 () Bool)

(assert (=> d!1393120 (=> (not res!1881640) (not e!2816745))))

(declare-fun lt!1697980 () Bool)

(assert (=> d!1393120 (= res!1881640 (not lt!1697980))))

(declare-fun lt!1697986 () Bool)

(assert (=> d!1393120 (= lt!1697980 lt!1697986)))

(declare-fun lt!1697983 () Unit!95040)

(assert (=> d!1393120 (= lt!1697983 e!2816748)))

(assert (=> d!1393120 (= c!771613 lt!1697986)))

(assert (=> d!1393120 (= lt!1697986 (containsKey!1783 (toList!4328 lt!1697413) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393120 (= (contains!13372 lt!1697413 (_1!28831 (h!56499 (_2!28832 lt!1697023)))) lt!1697980)))

(declare-fun b!4521023 () Bool)

(assert (=> b!4521023 (= e!2816745 (not (contains!13375 (keys!17594 lt!1697413) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun b!4521024 () Bool)

(assert (=> b!4521024 (= e!2816746 (keys!17594 lt!1697413))))

(assert (= (and d!1393120 c!771613) b!4521017))

(assert (= (and d!1393120 (not c!771613)) b!4521021))

(assert (= (and b!4521021 c!771612) b!4521020))

(assert (= (and b!4521021 (not c!771612)) b!4521016))

(assert (= (or b!4521017 b!4521021) bm!315018))

(assert (= (and bm!315018 c!771614) b!4521019))

(assert (= (and bm!315018 (not c!771614)) b!4521024))

(assert (= (and d!1393120 res!1881640) b!4521023))

(assert (= (and d!1393120 (not res!1881638)) b!4521022))

(assert (= (and b!4521022 res!1881639) b!4521018))

(declare-fun m!5269905 () Bool)

(assert (=> d!1393120 m!5269905))

(declare-fun m!5269907 () Bool)

(assert (=> b!4521022 m!5269907))

(assert (=> b!4521022 m!5269907))

(declare-fun m!5269909 () Bool)

(assert (=> b!4521022 m!5269909))

(declare-fun m!5269911 () Bool)

(assert (=> b!4521024 m!5269911))

(declare-fun m!5269913 () Bool)

(assert (=> bm!315018 m!5269913))

(assert (=> b!4521023 m!5269911))

(assert (=> b!4521023 m!5269911))

(declare-fun m!5269915 () Bool)

(assert (=> b!4521023 m!5269915))

(assert (=> b!4521018 m!5269911))

(assert (=> b!4521018 m!5269911))

(assert (=> b!4521018 m!5269915))

(assert (=> b!4521020 m!5269905))

(declare-fun m!5269917 () Bool)

(assert (=> b!4521020 m!5269917))

(declare-fun m!5269919 () Bool)

(assert (=> b!4521019 m!5269919))

(declare-fun m!5269921 () Bool)

(assert (=> b!4521017 m!5269921))

(assert (=> b!4521017 m!5269907))

(assert (=> b!4521017 m!5269907))

(assert (=> b!4521017 m!5269909))

(declare-fun m!5269923 () Bool)

(assert (=> b!4521017 m!5269923))

(assert (=> b!4520152 d!1393120))

(declare-fun d!1393122 () Bool)

(declare-fun e!2816751 () Bool)

(assert (=> d!1393122 e!2816751))

(declare-fun res!1881646 () Bool)

(assert (=> d!1393122 (=> (not res!1881646) (not e!2816751))))

(declare-fun lt!1697996 () ListMap!3589)

(assert (=> d!1393122 (= res!1881646 (contains!13372 lt!1697996 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun lt!1697998 () List!50770)

(assert (=> d!1393122 (= lt!1697996 (ListMap!3590 lt!1697998))))

(declare-fun lt!1697997 () Unit!95040)

(declare-fun lt!1697999 () Unit!95040)

(assert (=> d!1393122 (= lt!1697997 lt!1697999)))

(assert (=> d!1393122 (= (getValueByKey!1092 lt!1697998 (_1!28831 (h!56499 (_2!28832 lt!1697023)))) (Some!11111 (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!679 (List!50770 K!12040 V!12286) Unit!95040)

(assert (=> d!1393122 (= lt!1697999 (lemmaContainsTupThenGetReturnValue!679 lt!1697998 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun insertNoDuplicatedKeys!279 (List!50770 K!12040 V!12286) List!50770)

(assert (=> d!1393122 (= lt!1697998 (insertNoDuplicatedKeys!279 (toList!4328 lt!1697017) (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393122 (= (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023))) lt!1697996)))

(declare-fun b!4521029 () Bool)

(declare-fun res!1881645 () Bool)

(assert (=> b!4521029 (=> (not res!1881645) (not e!2816751))))

(assert (=> b!4521029 (= res!1881645 (= (getValueByKey!1092 (toList!4328 lt!1697996) (_1!28831 (h!56499 (_2!28832 lt!1697023)))) (Some!11111 (_2!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun b!4521030 () Bool)

(assert (=> b!4521030 (= e!2816751 (contains!13376 (toList!4328 lt!1697996) (h!56499 (_2!28832 lt!1697023))))))

(assert (= (and d!1393122 res!1881646) b!4521029))

(assert (= (and b!4521029 res!1881645) b!4521030))

(declare-fun m!5269925 () Bool)

(assert (=> d!1393122 m!5269925))

(declare-fun m!5269927 () Bool)

(assert (=> d!1393122 m!5269927))

(declare-fun m!5269929 () Bool)

(assert (=> d!1393122 m!5269929))

(declare-fun m!5269931 () Bool)

(assert (=> d!1393122 m!5269931))

(declare-fun m!5269933 () Bool)

(assert (=> b!4521029 m!5269933))

(declare-fun m!5269935 () Bool)

(assert (=> b!4521030 m!5269935))

(assert (=> b!4520152 d!1393122))

(declare-fun bm!315019 () Bool)

(declare-fun call!315024 () Bool)

(declare-fun e!2816755 () List!50773)

(assert (=> bm!315019 (= call!315024 (contains!13375 e!2816755 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun c!771617 () Bool)

(declare-fun c!771616 () Bool)

(assert (=> bm!315019 (= c!771617 c!771616)))

(declare-fun b!4521031 () Bool)

(declare-fun e!2816756 () Unit!95040)

(declare-fun Unit!95235 () Unit!95040)

(assert (=> b!4521031 (= e!2816756 Unit!95235)))

(declare-fun b!4521032 () Bool)

(declare-fun e!2816757 () Unit!95040)

(declare-fun lt!1698002 () Unit!95040)

(assert (=> b!4521032 (= e!2816757 lt!1698002)))

(declare-fun lt!1698007 () Unit!95040)

(assert (=> b!4521032 (= lt!1698007 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697423) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4521032 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697423) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun lt!1698004 () Unit!95040)

(assert (=> b!4521032 (= lt!1698004 lt!1698007)))

(assert (=> b!4521032 (= lt!1698002 (lemmaInListThenGetKeysListContains!461 (toList!4328 lt!1697423) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4521032 call!315024))

(declare-fun b!4521033 () Bool)

(declare-fun e!2816753 () Bool)

(assert (=> b!4521033 (= e!2816753 (contains!13375 (keys!17594 lt!1697423) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun b!4521034 () Bool)

(assert (=> b!4521034 (= e!2816755 (getKeysList!465 (toList!4328 lt!1697423)))))

(declare-fun b!4521035 () Bool)

(assert (=> b!4521035 false))

(declare-fun lt!1698005 () Unit!95040)

(declare-fun lt!1698001 () Unit!95040)

(assert (=> b!4521035 (= lt!1698005 lt!1698001)))

(assert (=> b!4521035 (containsKey!1783 (toList!4328 lt!1697423) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))

(assert (=> b!4521035 (= lt!1698001 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 lt!1697423) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun Unit!95236 () Unit!95040)

(assert (=> b!4521035 (= e!2816756 Unit!95236)))

(declare-fun b!4521036 () Bool)

(assert (=> b!4521036 (= e!2816757 e!2816756)))

(declare-fun c!771615 () Bool)

(assert (=> b!4521036 (= c!771615 call!315024)))

(declare-fun b!4521037 () Bool)

(declare-fun e!2816752 () Bool)

(assert (=> b!4521037 (= e!2816752 e!2816753)))

(declare-fun res!1881648 () Bool)

(assert (=> b!4521037 (=> (not res!1881648) (not e!2816753))))

(assert (=> b!4521037 (= res!1881648 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697423) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun d!1393124 () Bool)

(assert (=> d!1393124 e!2816752))

(declare-fun res!1881647 () Bool)

(assert (=> d!1393124 (=> res!1881647 e!2816752)))

(declare-fun e!2816754 () Bool)

(assert (=> d!1393124 (= res!1881647 e!2816754)))

(declare-fun res!1881649 () Bool)

(assert (=> d!1393124 (=> (not res!1881649) (not e!2816754))))

(declare-fun lt!1698000 () Bool)

(assert (=> d!1393124 (= res!1881649 (not lt!1698000))))

(declare-fun lt!1698006 () Bool)

(assert (=> d!1393124 (= lt!1698000 lt!1698006)))

(declare-fun lt!1698003 () Unit!95040)

(assert (=> d!1393124 (= lt!1698003 e!2816757)))

(assert (=> d!1393124 (= c!771616 lt!1698006)))

(assert (=> d!1393124 (= lt!1698006 (containsKey!1783 (toList!4328 lt!1697423) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393124 (= (contains!13372 lt!1697423 (_1!28831 (h!56499 (_2!28832 lt!1697023)))) lt!1698000)))

(declare-fun b!4521038 () Bool)

(assert (=> b!4521038 (= e!2816754 (not (contains!13375 (keys!17594 lt!1697423) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun b!4521039 () Bool)

(assert (=> b!4521039 (= e!2816755 (keys!17594 lt!1697423))))

(assert (= (and d!1393124 c!771616) b!4521032))

(assert (= (and d!1393124 (not c!771616)) b!4521036))

(assert (= (and b!4521036 c!771615) b!4521035))

(assert (= (and b!4521036 (not c!771615)) b!4521031))

(assert (= (or b!4521032 b!4521036) bm!315019))

(assert (= (and bm!315019 c!771617) b!4521034))

(assert (= (and bm!315019 (not c!771617)) b!4521039))

(assert (= (and d!1393124 res!1881649) b!4521038))

(assert (= (and d!1393124 (not res!1881647)) b!4521037))

(assert (= (and b!4521037 res!1881648) b!4521033))

(declare-fun m!5269937 () Bool)

(assert (=> d!1393124 m!5269937))

(declare-fun m!5269939 () Bool)

(assert (=> b!4521037 m!5269939))

(assert (=> b!4521037 m!5269939))

(declare-fun m!5269941 () Bool)

(assert (=> b!4521037 m!5269941))

(declare-fun m!5269943 () Bool)

(assert (=> b!4521039 m!5269943))

(declare-fun m!5269945 () Bool)

(assert (=> bm!315019 m!5269945))

(assert (=> b!4521038 m!5269943))

(assert (=> b!4521038 m!5269943))

(declare-fun m!5269947 () Bool)

(assert (=> b!4521038 m!5269947))

(assert (=> b!4521033 m!5269943))

(assert (=> b!4521033 m!5269943))

(assert (=> b!4521033 m!5269947))

(assert (=> b!4521035 m!5269937))

(declare-fun m!5269949 () Bool)

(assert (=> b!4521035 m!5269949))

(declare-fun m!5269951 () Bool)

(assert (=> b!4521034 m!5269951))

(declare-fun m!5269953 () Bool)

(assert (=> b!4521032 m!5269953))

(assert (=> b!4521032 m!5269939))

(assert (=> b!4521032 m!5269939))

(assert (=> b!4521032 m!5269941))

(declare-fun m!5269955 () Bool)

(assert (=> b!4521032 m!5269955))

(assert (=> b!4520152 d!1393124))

(declare-fun d!1393126 () Bool)

(declare-fun res!1881650 () Bool)

(declare-fun e!2816758 () Bool)

(assert (=> d!1393126 (=> res!1881650 e!2816758)))

(assert (=> d!1393126 (= res!1881650 ((_ is Nil!50646) (_2!28832 lt!1697023)))))

(assert (=> d!1393126 (= (forall!10265 (_2!28832 lt!1697023) lambda!172451) e!2816758)))

(declare-fun b!4521040 () Bool)

(declare-fun e!2816759 () Bool)

(assert (=> b!4521040 (= e!2816758 e!2816759)))

(declare-fun res!1881651 () Bool)

(assert (=> b!4521040 (=> (not res!1881651) (not e!2816759))))

(assert (=> b!4521040 (= res!1881651 (dynLambda!21164 lambda!172451 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun b!4521041 () Bool)

(assert (=> b!4521041 (= e!2816759 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172451))))

(assert (= (and d!1393126 (not res!1881650)) b!4521040))

(assert (= (and b!4521040 res!1881651) b!4521041))

(declare-fun b_lambda!155043 () Bool)

(assert (=> (not b_lambda!155043) (not b!4521040)))

(assert (=> b!4521040 m!5269899))

(declare-fun m!5269957 () Bool)

(assert (=> b!4521041 m!5269957))

(assert (=> b!4520152 d!1393126))

(declare-fun d!1393128 () Bool)

(declare-fun res!1881652 () Bool)

(declare-fun e!2816760 () Bool)

(assert (=> d!1393128 (=> res!1881652 e!2816760)))

(assert (=> d!1393128 (= res!1881652 ((_ is Nil!50646) (toList!4328 lt!1697413)))))

(assert (=> d!1393128 (= (forall!10265 (toList!4328 lt!1697413) lambda!172451) e!2816760)))

(declare-fun b!4521042 () Bool)

(declare-fun e!2816761 () Bool)

(assert (=> b!4521042 (= e!2816760 e!2816761)))

(declare-fun res!1881653 () Bool)

(assert (=> b!4521042 (=> (not res!1881653) (not e!2816761))))

(assert (=> b!4521042 (= res!1881653 (dynLambda!21164 lambda!172451 (h!56499 (toList!4328 lt!1697413))))))

(declare-fun b!4521043 () Bool)

(assert (=> b!4521043 (= e!2816761 (forall!10265 (t!357732 (toList!4328 lt!1697413)) lambda!172451))))

(assert (= (and d!1393128 (not res!1881652)) b!4521042))

(assert (= (and b!4521042 res!1881653) b!4521043))

(declare-fun b_lambda!155045 () Bool)

(assert (=> (not b_lambda!155045) (not b!4521042)))

(declare-fun m!5269959 () Bool)

(assert (=> b!4521042 m!5269959))

(declare-fun m!5269961 () Bool)

(assert (=> b!4521043 m!5269961))

(assert (=> b!4520152 d!1393128))

(declare-fun d!1393130 () Bool)

(declare-fun res!1881654 () Bool)

(declare-fun e!2816762 () Bool)

(assert (=> d!1393130 (=> res!1881654 e!2816762)))

(assert (=> d!1393130 (= res!1881654 ((_ is Nil!50646) (toList!4328 lt!1697017)))))

(assert (=> d!1393130 (= (forall!10265 (toList!4328 lt!1697017) lambda!172450) e!2816762)))

(declare-fun b!4521044 () Bool)

(declare-fun e!2816763 () Bool)

(assert (=> b!4521044 (= e!2816762 e!2816763)))

(declare-fun res!1881655 () Bool)

(assert (=> b!4521044 (=> (not res!1881655) (not e!2816763))))

(assert (=> b!4521044 (= res!1881655 (dynLambda!21164 lambda!172450 (h!56499 (toList!4328 lt!1697017))))))

(declare-fun b!4521045 () Bool)

(assert (=> b!4521045 (= e!2816763 (forall!10265 (t!357732 (toList!4328 lt!1697017)) lambda!172450))))

(assert (= (and d!1393130 (not res!1881654)) b!4521044))

(assert (= (and b!4521044 res!1881655) b!4521045))

(declare-fun b_lambda!155047 () Bool)

(assert (=> (not b_lambda!155047) (not b!4521044)))

(declare-fun m!5269963 () Bool)

(assert (=> b!4521044 m!5269963))

(declare-fun m!5269967 () Bool)

(assert (=> b!4521045 m!5269967))

(assert (=> b!4520152 d!1393130))

(declare-fun d!1393132 () Bool)

(declare-fun c!771620 () Bool)

(assert (=> d!1393132 (= c!771620 ((_ is Nil!50649) (keys!17594 lt!1697020)))))

(declare-fun e!2816767 () (InoxSet K!12040))

(assert (=> d!1393132 (= (content!8357 (keys!17594 lt!1697020)) e!2816767)))

(declare-fun b!4521052 () Bool)

(assert (=> b!4521052 (= e!2816767 ((as const (Array K!12040 Bool)) false))))

(declare-fun b!4521053 () Bool)

(assert (=> b!4521053 (= e!2816767 ((_ map or) (store ((as const (Array K!12040 Bool)) false) (h!56504 (keys!17594 lt!1697020)) true) (content!8357 (t!357735 (keys!17594 lt!1697020)))))))

(assert (= (and d!1393132 c!771620) b!4521052))

(assert (= (and d!1393132 (not c!771620)) b!4521053))

(declare-fun m!5270011 () Bool)

(assert (=> b!4521053 m!5270011))

(declare-fun m!5270013 () Bool)

(assert (=> b!4521053 m!5270013))

(assert (=> b!4519984 d!1393132))

(assert (=> b!4519984 d!1393012))

(declare-fun d!1393138 () Bool)

(declare-fun c!771621 () Bool)

(assert (=> d!1393138 (= c!771621 ((_ is Nil!50649) (keys!17594 lt!1697172)))))

(declare-fun e!2816768 () (InoxSet K!12040))

(assert (=> d!1393138 (= (content!8357 (keys!17594 lt!1697172)) e!2816768)))

(declare-fun b!4521054 () Bool)

(assert (=> b!4521054 (= e!2816768 ((as const (Array K!12040 Bool)) false))))

(declare-fun b!4521055 () Bool)

(assert (=> b!4521055 (= e!2816768 ((_ map or) (store ((as const (Array K!12040 Bool)) false) (h!56504 (keys!17594 lt!1697172)) true) (content!8357 (t!357735 (keys!17594 lt!1697172)))))))

(assert (= (and d!1393138 c!771621) b!4521054))

(assert (= (and d!1393138 (not c!771621)) b!4521055))

(declare-fun m!5270015 () Bool)

(assert (=> b!4521055 m!5270015))

(declare-fun m!5270017 () Bool)

(assert (=> b!4521055 m!5270017))

(assert (=> b!4519984 d!1393138))

(declare-fun bs!856564 () Bool)

(declare-fun b!4521057 () Bool)

(assert (= bs!856564 (and b!4521057 b!4520867)))

(declare-fun lambda!172562 () Int)

(assert (=> bs!856564 (= (= (toList!4328 lt!1697172) (toList!4328 lt!1697020)) (= lambda!172562 lambda!172526))))

(declare-fun bs!856567 () Bool)

(assert (= bs!856567 (and b!4521057 b!4520339)))

(assert (=> bs!856567 (= (= (toList!4328 lt!1697172) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172562 lambda!172477))))

(declare-fun bs!856569 () Bool)

(assert (= bs!856569 (and b!4521057 b!4520885)))

(assert (=> bs!856569 (= (= (toList!4328 lt!1697172) (t!357732 (toList!4328 lt!1697008))) (= lambda!172562 lambda!172530))))

(declare-fun bs!856571 () Bool)

(assert (= bs!856571 (and b!4521057 b!4520341)))

(assert (=> bs!856571 (= (= (toList!4328 lt!1697172) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172562 lambda!172475))))

(declare-fun bs!856573 () Bool)

(assert (= bs!856573 (and b!4521057 b!4520888)))

(assert (=> bs!856573 (= (= (toList!4328 lt!1697172) (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008)))) (= lambda!172562 lambda!172531))))

(declare-fun bs!856575 () Bool)

(assert (= bs!856575 (and b!4521057 b!4520413)))

(assert (=> bs!856575 (= (= (toList!4328 lt!1697172) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172562 lambda!172483))))

(declare-fun bs!856577 () Bool)

(assert (= bs!856577 (and b!4521057 b!4520698)))

(assert (=> bs!856577 (= (= (toList!4328 lt!1697172) (toList!4328 lt!1697008)) (= lambda!172562 lambda!172511))))

(declare-fun bs!856578 () Bool)

(assert (= bs!856578 (and b!4521057 b!4520344)))

(assert (=> bs!856578 (= (= (toList!4328 lt!1697172) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172562 lambda!172476))))

(declare-fun bs!856579 () Bool)

(assert (= bs!856579 (and b!4521057 b!4520883)))

(assert (=> bs!856579 (= (= (toList!4328 lt!1697172) (toList!4328 lt!1697008)) (= lambda!172562 lambda!172532))))

(assert (=> b!4521057 true))

(declare-fun bs!856582 () Bool)

(declare-fun b!4521058 () Bool)

(assert (= bs!856582 (and b!4521058 b!4520699)))

(declare-fun lambda!172563 () Int)

(assert (=> bs!856582 (= lambda!172563 lambda!172512)))

(declare-fun bs!856583 () Bool)

(assert (= bs!856583 (and b!4521058 b!4520887)))

(assert (=> bs!856583 (= lambda!172563 lambda!172533)))

(declare-fun bs!856585 () Bool)

(assert (= bs!856585 (and b!4521058 b!4520414)))

(assert (=> bs!856585 (= lambda!172563 lambda!172484)))

(declare-fun bs!856586 () Bool)

(assert (= bs!856586 (and b!4521058 b!4520343)))

(assert (=> bs!856586 (= lambda!172563 lambda!172478)))

(declare-fun bs!856587 () Bool)

(assert (= bs!856587 (and b!4521058 b!4520868)))

(assert (=> bs!856587 (= lambda!172563 lambda!172527)))

(declare-fun d!1393140 () Bool)

(declare-fun e!2816769 () Bool)

(assert (=> d!1393140 e!2816769))

(declare-fun res!1881660 () Bool)

(assert (=> d!1393140 (=> (not res!1881660) (not e!2816769))))

(declare-fun lt!1698013 () List!50773)

(assert (=> d!1393140 (= res!1881660 (noDuplicate!748 lt!1698013))))

(assert (=> d!1393140 (= lt!1698013 (getKeysList!465 (toList!4328 lt!1697172)))))

(assert (=> d!1393140 (= (keys!17594 lt!1697172) lt!1698013)))

(declare-fun b!4521056 () Bool)

(declare-fun res!1881658 () Bool)

(assert (=> b!4521056 (=> (not res!1881658) (not e!2816769))))

(assert (=> b!4521056 (= res!1881658 (= (length!352 lt!1698013) (length!353 (toList!4328 lt!1697172))))))

(declare-fun res!1881659 () Bool)

(assert (=> b!4521057 (=> (not res!1881659) (not e!2816769))))

(assert (=> b!4521057 (= res!1881659 (forall!10267 lt!1698013 lambda!172562))))

(assert (=> b!4521058 (= e!2816769 (= (content!8357 lt!1698013) (content!8357 (map!11139 (toList!4328 lt!1697172) lambda!172563))))))

(assert (= (and d!1393140 res!1881660) b!4521056))

(assert (= (and b!4521056 res!1881658) b!4521057))

(assert (= (and b!4521057 res!1881659) b!4521058))

(declare-fun m!5270019 () Bool)

(assert (=> d!1393140 m!5270019))

(assert (=> d!1393140 m!5269229))

(declare-fun m!5270021 () Bool)

(assert (=> b!4521056 m!5270021))

(declare-fun m!5270023 () Bool)

(assert (=> b!4521056 m!5270023))

(declare-fun m!5270025 () Bool)

(assert (=> b!4521057 m!5270025))

(declare-fun m!5270027 () Bool)

(assert (=> b!4521058 m!5270027))

(declare-fun m!5270029 () Bool)

(assert (=> b!4521058 m!5270029))

(assert (=> b!4521058 m!5270029))

(declare-fun m!5270031 () Bool)

(assert (=> b!4521058 m!5270031))

(assert (=> b!4519984 d!1393140))

(declare-fun d!1393142 () Bool)

(declare-fun lt!1698014 () Bool)

(assert (=> d!1393142 (= lt!1698014 (select (content!8357 e!2816132) key!3287))))

(declare-fun e!2816770 () Bool)

(assert (=> d!1393142 (= lt!1698014 e!2816770)))

(declare-fun res!1881661 () Bool)

(assert (=> d!1393142 (=> (not res!1881661) (not e!2816770))))

(assert (=> d!1393142 (= res!1881661 ((_ is Cons!50649) e!2816132))))

(assert (=> d!1393142 (= (contains!13375 e!2816132 key!3287) lt!1698014)))

(declare-fun b!4521059 () Bool)

(declare-fun e!2816771 () Bool)

(assert (=> b!4521059 (= e!2816770 e!2816771)))

(declare-fun res!1881662 () Bool)

(assert (=> b!4521059 (=> res!1881662 e!2816771)))

(assert (=> b!4521059 (= res!1881662 (= (h!56504 e!2816132) key!3287))))

(declare-fun b!4521060 () Bool)

(assert (=> b!4521060 (= e!2816771 (contains!13375 (t!357735 e!2816132) key!3287))))

(assert (= (and d!1393142 res!1881661) b!4521059))

(assert (= (and b!4521059 (not res!1881662)) b!4521060))

(declare-fun m!5270033 () Bool)

(assert (=> d!1393142 m!5270033))

(declare-fun m!5270035 () Bool)

(assert (=> d!1393142 m!5270035))

(declare-fun m!5270037 () Bool)

(assert (=> b!4521060 m!5270037))

(assert (=> bm!314925 d!1393142))

(declare-fun b!4521064 () Bool)

(declare-fun e!2816773 () List!50770)

(assert (=> b!4521064 (= e!2816773 Nil!50646)))

(declare-fun b!4521061 () Bool)

(declare-fun e!2816772 () List!50770)

(assert (=> b!4521061 (= e!2816772 (t!357732 (t!357732 lt!1697018)))))

(declare-fun b!4521062 () Bool)

(assert (=> b!4521062 (= e!2816772 e!2816773)))

(declare-fun c!771622 () Bool)

(assert (=> b!4521062 (= c!771622 ((_ is Cons!50646) (t!357732 lt!1697018)))))

(declare-fun b!4521063 () Bool)

(assert (=> b!4521063 (= e!2816773 (Cons!50646 (h!56499 (t!357732 lt!1697018)) (removePairForKey!787 (t!357732 (t!357732 lt!1697018)) key!3287)))))

(declare-fun d!1393144 () Bool)

(declare-fun lt!1698015 () List!50770)

(assert (=> d!1393144 (not (containsKey!1780 lt!1698015 key!3287))))

(assert (=> d!1393144 (= lt!1698015 e!2816772)))

(declare-fun c!771623 () Bool)

(assert (=> d!1393144 (= c!771623 (and ((_ is Cons!50646) (t!357732 lt!1697018)) (= (_1!28831 (h!56499 (t!357732 lt!1697018))) key!3287)))))

(assert (=> d!1393144 (noDuplicateKeys!1160 (t!357732 lt!1697018))))

(assert (=> d!1393144 (= (removePairForKey!787 (t!357732 lt!1697018) key!3287) lt!1698015)))

(assert (= (and d!1393144 c!771623) b!4521061))

(assert (= (and d!1393144 (not c!771623)) b!4521062))

(assert (= (and b!4521062 c!771622) b!4521063))

(assert (= (and b!4521062 (not c!771622)) b!4521064))

(declare-fun m!5270039 () Bool)

(assert (=> b!4521063 m!5270039))

(declare-fun m!5270041 () Bool)

(assert (=> d!1393144 m!5270041))

(declare-fun m!5270043 () Bool)

(assert (=> d!1393144 m!5270043))

(assert (=> b!4520128 d!1393144))

(declare-fun bs!856602 () Bool)

(declare-fun b!4521068 () Bool)

(assert (= bs!856602 (and b!4521068 b!4521057)))

(declare-fun lambda!172564 () Int)

(assert (=> bs!856602 (= (= (t!357732 (toList!4328 lt!1697020)) (toList!4328 lt!1697172)) (= lambda!172564 lambda!172562))))

(declare-fun bs!856603 () Bool)

(assert (= bs!856603 (and b!4521068 b!4520867)))

(assert (=> bs!856603 (= (= (t!357732 (toList!4328 lt!1697020)) (toList!4328 lt!1697020)) (= lambda!172564 lambda!172526))))

(declare-fun bs!856604 () Bool)

(assert (= bs!856604 (and b!4521068 b!4520339)))

(assert (=> bs!856604 (= (= (t!357732 (toList!4328 lt!1697020)) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172564 lambda!172477))))

(declare-fun bs!856605 () Bool)

(assert (= bs!856605 (and b!4521068 b!4520885)))

(assert (=> bs!856605 (= (= (t!357732 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697008))) (= lambda!172564 lambda!172530))))

(declare-fun bs!856606 () Bool)

(assert (= bs!856606 (and b!4521068 b!4520341)))

(assert (=> bs!856606 (= (= (t!357732 (toList!4328 lt!1697020)) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172564 lambda!172475))))

(declare-fun bs!856607 () Bool)

(assert (= bs!856607 (and b!4521068 b!4520888)))

(assert (=> bs!856607 (= (= (t!357732 (toList!4328 lt!1697020)) (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008)))) (= lambda!172564 lambda!172531))))

(declare-fun bs!856608 () Bool)

(assert (= bs!856608 (and b!4521068 b!4520413)))

(assert (=> bs!856608 (= (= (t!357732 (toList!4328 lt!1697020)) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172564 lambda!172483))))

(declare-fun bs!856609 () Bool)

(assert (= bs!856609 (and b!4521068 b!4520698)))

(assert (=> bs!856609 (= (= (t!357732 (toList!4328 lt!1697020)) (toList!4328 lt!1697008)) (= lambda!172564 lambda!172511))))

(declare-fun bs!856610 () Bool)

(assert (= bs!856610 (and b!4521068 b!4520344)))

(assert (=> bs!856610 (= (= (t!357732 (toList!4328 lt!1697020)) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172564 lambda!172476))))

(declare-fun bs!856611 () Bool)

(assert (= bs!856611 (and b!4521068 b!4520883)))

(assert (=> bs!856611 (= (= (t!357732 (toList!4328 lt!1697020)) (toList!4328 lt!1697008)) (= lambda!172564 lambda!172532))))

(assert (=> b!4521068 true))

(declare-fun bs!856612 () Bool)

(declare-fun b!4521071 () Bool)

(assert (= bs!856612 (and b!4521071 b!4521057)))

(declare-fun lambda!172565 () Int)

(assert (=> bs!856612 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (toList!4328 lt!1697172)) (= lambda!172565 lambda!172562))))

(declare-fun bs!856613 () Bool)

(assert (= bs!856613 (and b!4521071 b!4520867)))

(assert (=> bs!856613 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (toList!4328 lt!1697020)) (= lambda!172565 lambda!172526))))

(declare-fun bs!856614 () Bool)

(assert (= bs!856614 (and b!4521071 b!4520339)))

(assert (=> bs!856614 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172565 lambda!172477))))

(declare-fun bs!856615 () Bool)

(assert (= bs!856615 (and b!4521071 b!4520885)))

(assert (=> bs!856615 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (t!357732 (toList!4328 lt!1697008))) (= lambda!172565 lambda!172530))))

(declare-fun bs!856616 () Bool)

(assert (= bs!856616 (and b!4521071 b!4521068)))

(assert (=> bs!856616 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (t!357732 (toList!4328 lt!1697020))) (= lambda!172565 lambda!172564))))

(declare-fun bs!856617 () Bool)

(assert (= bs!856617 (and b!4521071 b!4520341)))

(assert (=> bs!856617 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172565 lambda!172475))))

(declare-fun bs!856618 () Bool)

(assert (= bs!856618 (and b!4521071 b!4520888)))

(assert (=> bs!856618 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008)))) (= lambda!172565 lambda!172531))))

(declare-fun bs!856619 () Bool)

(assert (= bs!856619 (and b!4521071 b!4520413)))

(assert (=> bs!856619 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172565 lambda!172483))))

(declare-fun bs!856620 () Bool)

(assert (= bs!856620 (and b!4521071 b!4520698)))

(assert (=> bs!856620 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (toList!4328 lt!1697008)) (= lambda!172565 lambda!172511))))

(declare-fun bs!856621 () Bool)

(assert (= bs!856621 (and b!4521071 b!4520344)))

(assert (=> bs!856621 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172565 lambda!172476))))

(declare-fun bs!856622 () Bool)

(assert (= bs!856622 (and b!4521071 b!4520883)))

(assert (=> bs!856622 (= (= (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020))) (toList!4328 lt!1697008)) (= lambda!172565 lambda!172532))))

(assert (=> b!4521071 true))

(declare-fun bs!856623 () Bool)

(declare-fun b!4521066 () Bool)

(assert (= bs!856623 (and b!4521066 b!4521057)))

(declare-fun lambda!172566 () Int)

(assert (=> bs!856623 (= (= (toList!4328 lt!1697020) (toList!4328 lt!1697172)) (= lambda!172566 lambda!172562))))

(declare-fun bs!856624 () Bool)

(assert (= bs!856624 (and b!4521066 b!4521071)))

(assert (=> bs!856624 (= (= (toList!4328 lt!1697020) (Cons!50646 (h!56499 (toList!4328 lt!1697020)) (t!357732 (toList!4328 lt!1697020)))) (= lambda!172566 lambda!172565))))

(declare-fun bs!856625 () Bool)

(assert (= bs!856625 (and b!4521066 b!4520867)))

(assert (=> bs!856625 (= lambda!172566 lambda!172526)))

(declare-fun bs!856626 () Bool)

(assert (= bs!856626 (and b!4521066 b!4520339)))

(assert (=> bs!856626 (= (= (toList!4328 lt!1697020) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172566 lambda!172477))))

(declare-fun bs!856627 () Bool)

(assert (= bs!856627 (and b!4521066 b!4520885)))

(assert (=> bs!856627 (= (= (toList!4328 lt!1697020) (t!357732 (toList!4328 lt!1697008))) (= lambda!172566 lambda!172530))))

(declare-fun bs!856628 () Bool)

(assert (= bs!856628 (and b!4521066 b!4521068)))

(assert (=> bs!856628 (= (= (toList!4328 lt!1697020) (t!357732 (toList!4328 lt!1697020))) (= lambda!172566 lambda!172564))))

(declare-fun bs!856629 () Bool)

(assert (= bs!856629 (and b!4521066 b!4520341)))

(assert (=> bs!856629 (= (= (toList!4328 lt!1697020) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))) (= lambda!172566 lambda!172475))))

(declare-fun bs!856630 () Bool)

(assert (= bs!856630 (and b!4521066 b!4520888)))

(assert (=> bs!856630 (= (= (toList!4328 lt!1697020) (Cons!50646 (h!56499 (toList!4328 lt!1697008)) (t!357732 (toList!4328 lt!1697008)))) (= lambda!172566 lambda!172531))))

(declare-fun bs!856631 () Bool)

(assert (= bs!856631 (and b!4521066 b!4520413)))

(assert (=> bs!856631 (= (= (toList!4328 lt!1697020) (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (= lambda!172566 lambda!172483))))

(declare-fun bs!856632 () Bool)

(assert (= bs!856632 (and b!4521066 b!4520698)))

(assert (=> bs!856632 (= (= (toList!4328 lt!1697020) (toList!4328 lt!1697008)) (= lambda!172566 lambda!172511))))

(declare-fun bs!856633 () Bool)

(assert (= bs!856633 (and b!4521066 b!4520344)))

(assert (=> bs!856633 (= (= (toList!4328 lt!1697020) (Cons!50646 (h!56499 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))) (t!357732 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477))))))) (= lambda!172566 lambda!172476))))

(declare-fun bs!856634 () Bool)

(assert (= bs!856634 (and b!4521066 b!4520883)))

(assert (=> bs!856634 (= (= (toList!4328 lt!1697020) (toList!4328 lt!1697008)) (= lambda!172566 lambda!172532))))

(assert (=> b!4521066 true))

(declare-fun bs!856635 () Bool)

(declare-fun b!4521070 () Bool)

(assert (= bs!856635 (and b!4521070 b!4520699)))

(declare-fun lambda!172567 () Int)

(assert (=> bs!856635 (= lambda!172567 lambda!172512)))

(declare-fun bs!856636 () Bool)

(assert (= bs!856636 (and b!4521070 b!4520887)))

(assert (=> bs!856636 (= lambda!172567 lambda!172533)))

(declare-fun bs!856637 () Bool)

(assert (= bs!856637 (and b!4521070 b!4520414)))

(assert (=> bs!856637 (= lambda!172567 lambda!172484)))

(declare-fun bs!856638 () Bool)

(assert (= bs!856638 (and b!4521070 b!4520343)))

(assert (=> bs!856638 (= lambda!172567 lambda!172478)))

(declare-fun bs!856639 () Bool)

(assert (= bs!856639 (and b!4521070 b!4520868)))

(assert (=> bs!856639 (= lambda!172567 lambda!172527)))

(declare-fun bs!856640 () Bool)

(assert (= bs!856640 (and b!4521070 b!4521058)))

(assert (=> bs!856640 (= lambda!172567 lambda!172563)))

(declare-fun b!4521065 () Bool)

(declare-fun res!1881663 () Bool)

(declare-fun e!2816777 () Bool)

(assert (=> b!4521065 (=> (not res!1881663) (not e!2816777))))

(declare-fun lt!1698021 () List!50773)

(assert (=> b!4521065 (= res!1881663 (= (length!352 lt!1698021) (length!353 (toList!4328 lt!1697020))))))

(declare-fun res!1881664 () Bool)

(assert (=> b!4521066 (=> (not res!1881664) (not e!2816777))))

(assert (=> b!4521066 (= res!1881664 (forall!10267 lt!1698021 lambda!172566))))

(declare-fun b!4521067 () Bool)

(declare-fun e!2816774 () Unit!95040)

(declare-fun Unit!95250 () Unit!95040)

(assert (=> b!4521067 (= e!2816774 Unit!95250)))

(assert (=> b!4521068 false))

(declare-fun lt!1698019 () Unit!95040)

(assert (=> b!4521068 (= lt!1698019 (forallContained!2518 (getKeysList!465 (t!357732 (toList!4328 lt!1697020))) lambda!172564 (_1!28831 (h!56499 (toList!4328 lt!1697020)))))))

(declare-fun Unit!95251 () Unit!95040)

(assert (=> b!4521068 (= e!2816774 Unit!95251)))

(assert (=> b!4521070 (= e!2816777 (= (content!8357 lt!1698021) (content!8357 (map!11139 (toList!4328 lt!1697020) lambda!172567))))))

(declare-fun d!1393146 () Bool)

(assert (=> d!1393146 e!2816777))

(declare-fun res!1881665 () Bool)

(assert (=> d!1393146 (=> (not res!1881665) (not e!2816777))))

(assert (=> d!1393146 (= res!1881665 (noDuplicate!748 lt!1698021))))

(declare-fun e!2816775 () List!50773)

(assert (=> d!1393146 (= lt!1698021 e!2816775)))

(declare-fun c!771626 () Bool)

(assert (=> d!1393146 (= c!771626 ((_ is Cons!50646) (toList!4328 lt!1697020)))))

(assert (=> d!1393146 (invariantList!1017 (toList!4328 lt!1697020))))

(assert (=> d!1393146 (= (getKeysList!465 (toList!4328 lt!1697020)) lt!1698021)))

(declare-fun b!4521069 () Bool)

(assert (=> b!4521069 false))

(declare-fun e!2816776 () Unit!95040)

(declare-fun Unit!95252 () Unit!95040)

(assert (=> b!4521069 (= e!2816776 Unit!95252)))

(assert (=> b!4521071 (= e!2816775 (Cons!50649 (_1!28831 (h!56499 (toList!4328 lt!1697020))) (getKeysList!465 (t!357732 (toList!4328 lt!1697020)))))))

(declare-fun c!771624 () Bool)

(assert (=> b!4521071 (= c!771624 (containsKey!1783 (t!357732 (toList!4328 lt!1697020)) (_1!28831 (h!56499 (toList!4328 lt!1697020)))))))

(declare-fun lt!1698022 () Unit!95040)

(assert (=> b!4521071 (= lt!1698022 e!2816776)))

(declare-fun c!771625 () Bool)

(assert (=> b!4521071 (= c!771625 (contains!13375 (getKeysList!465 (t!357732 (toList!4328 lt!1697020))) (_1!28831 (h!56499 (toList!4328 lt!1697020)))))))

(declare-fun lt!1698016 () Unit!95040)

(assert (=> b!4521071 (= lt!1698016 e!2816774)))

(declare-fun lt!1698017 () List!50773)

(assert (=> b!4521071 (= lt!1698017 (getKeysList!465 (t!357732 (toList!4328 lt!1697020))))))

(declare-fun lt!1698018 () Unit!95040)

(assert (=> b!4521071 (= lt!1698018 (lemmaForallContainsAddHeadPreserves!168 (t!357732 (toList!4328 lt!1697020)) lt!1698017 (h!56499 (toList!4328 lt!1697020))))))

(assert (=> b!4521071 (forall!10267 lt!1698017 lambda!172565)))

(declare-fun lt!1698020 () Unit!95040)

(assert (=> b!4521071 (= lt!1698020 lt!1698018)))

(declare-fun b!4521072 () Bool)

(declare-fun Unit!95253 () Unit!95040)

(assert (=> b!4521072 (= e!2816776 Unit!95253)))

(declare-fun b!4521073 () Bool)

(assert (=> b!4521073 (= e!2816775 Nil!50649)))

(assert (= (and d!1393146 c!771626) b!4521071))

(assert (= (and d!1393146 (not c!771626)) b!4521073))

(assert (= (and b!4521071 c!771624) b!4521069))

(assert (= (and b!4521071 (not c!771624)) b!4521072))

(assert (= (and b!4521071 c!771625) b!4521068))

(assert (= (and b!4521071 (not c!771625)) b!4521067))

(assert (= (and d!1393146 res!1881665) b!4521065))

(assert (= (and b!4521065 res!1881663) b!4521066))

(assert (= (and b!4521066 res!1881664) b!4521070))

(declare-fun m!5270081 () Bool)

(assert (=> b!4521070 m!5270081))

(declare-fun m!5270083 () Bool)

(assert (=> b!4521070 m!5270083))

(assert (=> b!4521070 m!5270083))

(declare-fun m!5270085 () Bool)

(assert (=> b!4521070 m!5270085))

(declare-fun m!5270087 () Bool)

(assert (=> b!4521065 m!5270087))

(assert (=> b!4521065 m!5269485))

(declare-fun m!5270089 () Bool)

(assert (=> b!4521071 m!5270089))

(declare-fun m!5270091 () Bool)

(assert (=> b!4521071 m!5270091))

(assert (=> b!4521071 m!5269449))

(assert (=> b!4521071 m!5269451))

(assert (=> b!4521071 m!5269449))

(declare-fun m!5270093 () Bool)

(assert (=> b!4521071 m!5270093))

(assert (=> b!4521068 m!5269449))

(assert (=> b!4521068 m!5269449))

(declare-fun m!5270095 () Bool)

(assert (=> b!4521068 m!5270095))

(declare-fun m!5270097 () Bool)

(assert (=> b!4521066 m!5270097))

(declare-fun m!5270099 () Bool)

(assert (=> d!1393146 m!5270099))

(assert (=> d!1393146 m!5268747))

(assert (=> b!4520092 d!1393146))

(declare-fun d!1393158 () Bool)

(assert (=> d!1393158 (= (invariantList!1017 (toList!4328 lt!1697178)) (noDuplicatedKeys!262 (toList!4328 lt!1697178)))))

(declare-fun bs!856641 () Bool)

(assert (= bs!856641 d!1393158))

(declare-fun m!5270101 () Bool)

(assert (=> bs!856641 m!5270101))

(assert (=> d!1392468 d!1393158))

(declare-fun d!1393160 () Bool)

(declare-fun res!1881672 () Bool)

(declare-fun e!2816789 () Bool)

(assert (=> d!1393160 (=> res!1881672 e!2816789)))

(assert (=> d!1393160 (= res!1881672 ((_ is Nil!50647) (toList!4327 (+!1538 lt!1697021 lt!1697023))))))

(assert (=> d!1393160 (= (forall!10263 (toList!4327 (+!1538 lt!1697021 lt!1697023)) lambda!172359) e!2816789)))

(declare-fun b!4521090 () Bool)

(declare-fun e!2816790 () Bool)

(assert (=> b!4521090 (= e!2816789 e!2816790)))

(declare-fun res!1881673 () Bool)

(assert (=> b!4521090 (=> (not res!1881673) (not e!2816790))))

(assert (=> b!4521090 (= res!1881673 (dynLambda!21163 lambda!172359 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))))

(declare-fun b!4521091 () Bool)

(assert (=> b!4521091 (= e!2816790 (forall!10263 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))) lambda!172359))))

(assert (= (and d!1393160 (not res!1881672)) b!4521090))

(assert (= (and b!4521090 res!1881673) b!4521091))

(declare-fun b_lambda!155053 () Bool)

(assert (=> (not b_lambda!155053) (not b!4521090)))

(declare-fun m!5270103 () Bool)

(assert (=> b!4521090 m!5270103))

(declare-fun m!5270105 () Bool)

(assert (=> b!4521091 m!5270105))

(assert (=> d!1392468 d!1393160))

(assert (=> d!1392470 d!1393018))

(assert (=> d!1392470 d!1393016))

(declare-fun d!1393162 () Bool)

(assert (=> d!1393162 (dynLambda!21163 lambda!172325 lt!1697012)))

(assert (=> d!1393162 true))

(declare-fun _$7!1843 () Unit!95040)

(assert (=> d!1393162 (= (choose!29520 (toList!4327 lm!1477) lambda!172325 lt!1697012) _$7!1843)))

(declare-fun b_lambda!155055 () Bool)

(assert (=> (not b_lambda!155055) (not d!1393162)))

(declare-fun bs!856642 () Bool)

(assert (= bs!856642 d!1393162))

(assert (=> bs!856642 m!5268221))

(assert (=> d!1392544 d!1393162))

(assert (=> d!1392544 d!1392562))

(assert (=> d!1392564 d!1392824))

(declare-fun bm!315021 () Bool)

(declare-fun call!315026 () Bool)

(declare-fun e!2816794 () List!50773)

(assert (=> bm!315021 (= call!315026 (contains!13375 e!2816794 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun c!771634 () Bool)

(declare-fun c!771633 () Bool)

(assert (=> bm!315021 (= c!771634 c!771633)))

(declare-fun b!4521092 () Bool)

(declare-fun e!2816795 () Unit!95040)

(declare-fun Unit!95254 () Unit!95040)

(assert (=> b!4521092 (= e!2816795 Unit!95254)))

(declare-fun b!4521093 () Bool)

(declare-fun e!2816796 () Unit!95040)

(declare-fun lt!1698034 () Unit!95040)

(assert (=> b!4521093 (= e!2816796 lt!1698034)))

(declare-fun lt!1698039 () Unit!95040)

(assert (=> b!4521093 (= lt!1698039 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697335) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4521093 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697335) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun lt!1698036 () Unit!95040)

(assert (=> b!4521093 (= lt!1698036 lt!1698039)))

(assert (=> b!4521093 (= lt!1698034 (lemmaInListThenGetKeysListContains!461 (toList!4328 lt!1697335) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4521093 call!315026))

(declare-fun b!4521094 () Bool)

(declare-fun e!2816792 () Bool)

(assert (=> b!4521094 (= e!2816792 (contains!13375 (keys!17594 lt!1697335) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun b!4521095 () Bool)

(assert (=> b!4521095 (= e!2816794 (getKeysList!465 (toList!4328 lt!1697335)))))

(declare-fun b!4521096 () Bool)

(assert (=> b!4521096 false))

(declare-fun lt!1698037 () Unit!95040)

(declare-fun lt!1698033 () Unit!95040)

(assert (=> b!4521096 (= lt!1698037 lt!1698033)))

(assert (=> b!4521096 (containsKey!1783 (toList!4328 lt!1697335) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))

(assert (=> b!4521096 (= lt!1698033 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 lt!1697335) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun Unit!95255 () Unit!95040)

(assert (=> b!4521096 (= e!2816795 Unit!95255)))

(declare-fun b!4521097 () Bool)

(assert (=> b!4521097 (= e!2816796 e!2816795)))

(declare-fun c!771632 () Bool)

(assert (=> b!4521097 (= c!771632 call!315026)))

(declare-fun b!4521098 () Bool)

(declare-fun e!2816791 () Bool)

(assert (=> b!4521098 (= e!2816791 e!2816792)))

(declare-fun res!1881675 () Bool)

(assert (=> b!4521098 (=> (not res!1881675) (not e!2816792))))

(assert (=> b!4521098 (= res!1881675 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697335) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun d!1393164 () Bool)

(assert (=> d!1393164 e!2816791))

(declare-fun res!1881674 () Bool)

(assert (=> d!1393164 (=> res!1881674 e!2816791)))

(declare-fun e!2816793 () Bool)

(assert (=> d!1393164 (= res!1881674 e!2816793)))

(declare-fun res!1881676 () Bool)

(assert (=> d!1393164 (=> (not res!1881676) (not e!2816793))))

(declare-fun lt!1698032 () Bool)

(assert (=> d!1393164 (= res!1881676 (not lt!1698032))))

(declare-fun lt!1698038 () Bool)

(assert (=> d!1393164 (= lt!1698032 lt!1698038)))

(declare-fun lt!1698035 () Unit!95040)

(assert (=> d!1393164 (= lt!1698035 e!2816796)))

(assert (=> d!1393164 (= c!771633 lt!1698038)))

(assert (=> d!1393164 (= lt!1698038 (containsKey!1783 (toList!4328 lt!1697335) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393164 (= (contains!13372 lt!1697335 (_1!28831 (h!56499 (_2!28832 lt!1697023)))) lt!1698032)))

(declare-fun b!4521099 () Bool)

(assert (=> b!4521099 (= e!2816793 (not (contains!13375 (keys!17594 lt!1697335) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun b!4521100 () Bool)

(assert (=> b!4521100 (= e!2816794 (keys!17594 lt!1697335))))

(assert (= (and d!1393164 c!771633) b!4521093))

(assert (= (and d!1393164 (not c!771633)) b!4521097))

(assert (= (and b!4521097 c!771632) b!4521096))

(assert (= (and b!4521097 (not c!771632)) b!4521092))

(assert (= (or b!4521093 b!4521097) bm!315021))

(assert (= (and bm!315021 c!771634) b!4521095))

(assert (= (and bm!315021 (not c!771634)) b!4521100))

(assert (= (and d!1393164 res!1881676) b!4521099))

(assert (= (and d!1393164 (not res!1881674)) b!4521098))

(assert (= (and b!4521098 res!1881675) b!4521094))

(declare-fun m!5270107 () Bool)

(assert (=> d!1393164 m!5270107))

(declare-fun m!5270109 () Bool)

(assert (=> b!4521098 m!5270109))

(assert (=> b!4521098 m!5270109))

(declare-fun m!5270111 () Bool)

(assert (=> b!4521098 m!5270111))

(declare-fun m!5270113 () Bool)

(assert (=> b!4521100 m!5270113))

(declare-fun m!5270115 () Bool)

(assert (=> bm!315021 m!5270115))

(assert (=> b!4521099 m!5270113))

(assert (=> b!4521099 m!5270113))

(declare-fun m!5270117 () Bool)

(assert (=> b!4521099 m!5270117))

(assert (=> b!4521094 m!5270113))

(assert (=> b!4521094 m!5270113))

(assert (=> b!4521094 m!5270117))

(assert (=> b!4521096 m!5270107))

(declare-fun m!5270119 () Bool)

(assert (=> b!4521096 m!5270119))

(declare-fun m!5270121 () Bool)

(assert (=> b!4521095 m!5270121))

(declare-fun m!5270123 () Bool)

(assert (=> b!4521093 m!5270123))

(assert (=> b!4521093 m!5270109))

(assert (=> b!4521093 m!5270109))

(assert (=> b!4521093 m!5270111))

(declare-fun m!5270125 () Bool)

(assert (=> b!4521093 m!5270125))

(assert (=> b!4520058 d!1393164))

(declare-fun bm!315022 () Bool)

(declare-fun call!315027 () Bool)

(declare-fun e!2816800 () List!50773)

(assert (=> bm!315022 (= call!315027 (contains!13375 e!2816800 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun c!771637 () Bool)

(declare-fun c!771636 () Bool)

(assert (=> bm!315022 (= c!771637 c!771636)))

(declare-fun b!4521101 () Bool)

(declare-fun e!2816801 () Unit!95040)

(declare-fun Unit!95256 () Unit!95040)

(assert (=> b!4521101 (= e!2816801 Unit!95256)))

(declare-fun b!4521102 () Bool)

(declare-fun e!2816802 () Unit!95040)

(declare-fun lt!1698042 () Unit!95040)

(assert (=> b!4521102 (= e!2816802 lt!1698042)))

(declare-fun lt!1698047 () Unit!95040)

(assert (=> b!4521102 (= lt!1698047 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 lt!1697345) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4521102 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697345) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun lt!1698044 () Unit!95040)

(assert (=> b!4521102 (= lt!1698044 lt!1698047)))

(assert (=> b!4521102 (= lt!1698042 (lemmaInListThenGetKeysListContains!461 (toList!4328 lt!1697345) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> b!4521102 call!315027))

(declare-fun b!4521103 () Bool)

(declare-fun e!2816798 () Bool)

(assert (=> b!4521103 (= e!2816798 (contains!13375 (keys!17594 lt!1697345) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun b!4521104 () Bool)

(assert (=> b!4521104 (= e!2816800 (getKeysList!465 (toList!4328 lt!1697345)))))

(declare-fun b!4521105 () Bool)

(assert (=> b!4521105 false))

(declare-fun lt!1698045 () Unit!95040)

(declare-fun lt!1698041 () Unit!95040)

(assert (=> b!4521105 (= lt!1698045 lt!1698041)))

(assert (=> b!4521105 (containsKey!1783 (toList!4328 lt!1697345) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))

(assert (=> b!4521105 (= lt!1698041 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 lt!1697345) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun Unit!95258 () Unit!95040)

(assert (=> b!4521105 (= e!2816801 Unit!95258)))

(declare-fun b!4521106 () Bool)

(assert (=> b!4521106 (= e!2816802 e!2816801)))

(declare-fun c!771635 () Bool)

(assert (=> b!4521106 (= c!771635 call!315027)))

(declare-fun b!4521107 () Bool)

(declare-fun e!2816797 () Bool)

(assert (=> b!4521107 (= e!2816797 e!2816798)))

(declare-fun res!1881678 () Bool)

(assert (=> b!4521107 (=> (not res!1881678) (not e!2816798))))

(assert (=> b!4521107 (= res!1881678 (isDefined!8399 (getValueByKey!1092 (toList!4328 lt!1697345) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun d!1393166 () Bool)

(assert (=> d!1393166 e!2816797))

(declare-fun res!1881677 () Bool)

(assert (=> d!1393166 (=> res!1881677 e!2816797)))

(declare-fun e!2816799 () Bool)

(assert (=> d!1393166 (= res!1881677 e!2816799)))

(declare-fun res!1881679 () Bool)

(assert (=> d!1393166 (=> (not res!1881679) (not e!2816799))))

(declare-fun lt!1698040 () Bool)

(assert (=> d!1393166 (= res!1881679 (not lt!1698040))))

(declare-fun lt!1698046 () Bool)

(assert (=> d!1393166 (= lt!1698040 lt!1698046)))

(declare-fun lt!1698043 () Unit!95040)

(assert (=> d!1393166 (= lt!1698043 e!2816802)))

(assert (=> d!1393166 (= c!771636 lt!1698046)))

(assert (=> d!1393166 (= lt!1698046 (containsKey!1783 (toList!4328 lt!1697345) (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393166 (= (contains!13372 lt!1697345 (_1!28831 (h!56499 (_2!28832 lt!1697023)))) lt!1698040)))

(declare-fun b!4521108 () Bool)

(assert (=> b!4521108 (= e!2816799 (not (contains!13375 (keys!17594 lt!1697345) (_1!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun b!4521109 () Bool)

(assert (=> b!4521109 (= e!2816800 (keys!17594 lt!1697345))))

(assert (= (and d!1393166 c!771636) b!4521102))

(assert (= (and d!1393166 (not c!771636)) b!4521106))

(assert (= (and b!4521106 c!771635) b!4521105))

(assert (= (and b!4521106 (not c!771635)) b!4521101))

(assert (= (or b!4521102 b!4521106) bm!315022))

(assert (= (and bm!315022 c!771637) b!4521104))

(assert (= (and bm!315022 (not c!771637)) b!4521109))

(assert (= (and d!1393166 res!1881679) b!4521108))

(assert (= (and d!1393166 (not res!1881677)) b!4521107))

(assert (= (and b!4521107 res!1881678) b!4521103))

(declare-fun m!5270127 () Bool)

(assert (=> d!1393166 m!5270127))

(declare-fun m!5270129 () Bool)

(assert (=> b!4521107 m!5270129))

(assert (=> b!4521107 m!5270129))

(declare-fun m!5270131 () Bool)

(assert (=> b!4521107 m!5270131))

(declare-fun m!5270133 () Bool)

(assert (=> b!4521109 m!5270133))

(declare-fun m!5270135 () Bool)

(assert (=> bm!315022 m!5270135))

(assert (=> b!4521108 m!5270133))

(assert (=> b!4521108 m!5270133))

(declare-fun m!5270137 () Bool)

(assert (=> b!4521108 m!5270137))

(assert (=> b!4521103 m!5270133))

(assert (=> b!4521103 m!5270133))

(assert (=> b!4521103 m!5270137))

(assert (=> b!4521105 m!5270127))

(declare-fun m!5270139 () Bool)

(assert (=> b!4521105 m!5270139))

(declare-fun m!5270141 () Bool)

(assert (=> b!4521104 m!5270141))

(declare-fun m!5270143 () Bool)

(assert (=> b!4521102 m!5270143))

(assert (=> b!4521102 m!5270129))

(assert (=> b!4521102 m!5270129))

(assert (=> b!4521102 m!5270131))

(declare-fun m!5270145 () Bool)

(assert (=> b!4521102 m!5270145))

(assert (=> b!4520058 d!1393166))

(assert (=> b!4520058 d!1392950))

(declare-fun bs!856643 () Bool)

(declare-fun d!1393168 () Bool)

(assert (= bs!856643 (and d!1393168 b!4520536)))

(declare-fun lambda!172568 () Int)

(assert (=> bs!856643 (= (= lt!1697345 lt!1697584) (= lambda!172568 lambda!172503))))

(declare-fun bs!856644 () Bool)

(assert (= bs!856644 (and d!1393168 b!4520929)))

(assert (=> bs!856644 (= (= lt!1697345 lt!1697891) (= lambda!172568 lambda!172540))))

(declare-fun bs!856645 () Bool)

(assert (= bs!856645 (and d!1393168 b!4520152)))

(assert (=> bs!856645 (= (= lt!1697345 lt!1697423) (= lambda!172568 lambda!172451))))

(declare-fun bs!856646 () Bool)

(assert (= bs!856646 (and d!1393168 d!1393066)))

(assert (=> bs!856646 (= (= lt!1697345 lt!1697885) (= lambda!172568 lambda!172545))))

(declare-fun bs!856647 () Bool)

(assert (= bs!856647 (and d!1393168 d!1393050)))

(assert (=> bs!856647 (= (= lt!1697345 lt!1697843) (= lambda!172568 lambda!172537))))

(declare-fun bs!856648 () Bool)

(assert (= bs!856648 (and d!1393168 b!4520904)))

(assert (=> bs!856648 (= (= lt!1697345 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172568 lambda!172534))))

(declare-fun bs!856649 () Bool)

(assert (= bs!856649 (and d!1393168 d!1392554)))

(assert (=> bs!856649 (not (= lambda!172568 lambda!172445))))

(declare-fun bs!856650 () Bool)

(assert (= bs!856650 (and d!1393168 d!1393102)))

(assert (=> bs!856650 (= (= lt!1697345 lt!1697423) (= lambda!172568 lambda!172556))))

(declare-fun bs!856651 () Bool)

(assert (= bs!856651 (and d!1393168 b!4520058)))

(assert (=> bs!856651 (= (= lt!1697345 lt!1697024) (= lambda!172568 lambda!172431))))

(declare-fun bs!856652 () Bool)

(assert (= bs!856652 (and d!1393168 b!4520061)))

(assert (=> bs!856652 (= (= lt!1697345 lt!1697024) (= lambda!172568 lambda!172430))))

(declare-fun bs!856653 () Bool)

(assert (= bs!856653 (and d!1393168 d!1392478)))

(assert (=> bs!856653 (= (= lt!1697345 lt!1697339) (= lambda!172568 lambda!172433))))

(assert (=> bs!856651 (= lambda!172568 lambda!172432)))

(declare-fun bs!856654 () Bool)

(assert (= bs!856654 (and d!1393168 d!1392774)))

(assert (=> bs!856654 (= (= lt!1697345 lt!1697024) (= lambda!172568 lambda!172499))))

(assert (=> bs!856643 (= (= lt!1697345 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172568 lambda!172502))))

(declare-fun bs!856655 () Bool)

(assert (= bs!856655 (and d!1393168 b!4520901)))

(assert (=> bs!856655 (= (= lt!1697345 lt!1697849) (= lambda!172568 lambda!172536))))

(declare-fun bs!856656 () Bool)

(assert (= bs!856656 (and d!1393168 b!4520932)))

(assert (=> bs!856656 (= (= lt!1697345 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172568 lambda!172538))))

(declare-fun bs!856657 () Bool)

(assert (= bs!856657 (and d!1393168 b!4520943)))

(assert (=> bs!856657 (= (= lt!1697345 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172568 lambda!172549))))

(declare-fun bs!856658 () Bool)

(assert (= bs!856658 (and d!1393168 d!1392776)))

(assert (=> bs!856658 (= (= lt!1697345 lt!1697578) (= lambda!172568 lambda!172504))))

(assert (=> bs!856644 (= (= lt!1697345 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172568 lambda!172539))))

(declare-fun bs!856659 () Bool)

(assert (= bs!856659 (and d!1393168 d!1392574)))

(assert (=> bs!856659 (= (= lt!1697345 lt!1697417) (= lambda!172568 lambda!172452))))

(declare-fun bs!856660 () Bool)

(assert (= bs!856660 (and d!1393168 b!4520155)))

(assert (=> bs!856660 (= (= lt!1697345 lt!1697017) (= lambda!172568 lambda!172449))))

(declare-fun bs!856661 () Bool)

(assert (= bs!856661 (and d!1393168 b!4520539)))

(assert (=> bs!856661 (= (= lt!1697345 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172568 lambda!172500))))

(assert (=> bs!856655 (= (= lt!1697345 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172568 lambda!172535))))

(declare-fun bs!856662 () Bool)

(assert (= bs!856662 (and d!1393168 b!4520946)))

(assert (=> bs!856662 (= (= lt!1697345 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172568 lambda!172548))))

(declare-fun bs!856663 () Bool)

(assert (= bs!856663 (and d!1393168 d!1393078)))

(assert (=> bs!856663 (= (= lt!1697345 lt!1697910) (= lambda!172568 lambda!172551))))

(assert (=> bs!856657 (= (= lt!1697345 lt!1697916) (= lambda!172568 lambda!172550))))

(assert (=> bs!856645 (= (= lt!1697345 lt!1697017) (= lambda!172568 lambda!172450))))

(declare-fun bs!856664 () Bool)

(assert (= bs!856664 (and d!1393168 d!1392762)))

(assert (=> bs!856664 (= (= lt!1697345 lt!1697017) (= lambda!172568 lambda!172497))))

(assert (=> d!1393168 true))

(assert (=> d!1393168 (forall!10265 (toList!4328 lt!1697024) lambda!172568)))

(declare-fun lt!1698048 () Unit!95040)

(assert (=> d!1393168 (= lt!1698048 (choose!29538 lt!1697024 lt!1697345 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393168 (forall!10265 (toList!4328 (+!1540 lt!1697024 (tuple2!51075 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))) lambda!172568)))

(assert (=> d!1393168 (= (addForallContainsKeyThenBeforeAdding!338 lt!1697024 lt!1697345 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))) lt!1698048)))

(declare-fun bs!856665 () Bool)

(assert (= bs!856665 d!1393168))

(declare-fun m!5270147 () Bool)

(assert (=> bs!856665 m!5270147))

(declare-fun m!5270149 () Bool)

(assert (=> bs!856665 m!5270149))

(declare-fun m!5270151 () Bool)

(assert (=> bs!856665 m!5270151))

(declare-fun m!5270153 () Bool)

(assert (=> bs!856665 m!5270153))

(assert (=> b!4520058 d!1393168))

(declare-fun bs!856666 () Bool)

(declare-fun b!4521113 () Bool)

(assert (= bs!856666 (and b!4521113 b!4520536)))

(declare-fun lambda!172569 () Int)

(assert (=> bs!856666 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697584) (= lambda!172569 lambda!172503))))

(declare-fun bs!856667 () Bool)

(assert (= bs!856667 (and b!4521113 b!4520929)))

(assert (=> bs!856667 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697891) (= lambda!172569 lambda!172540))))

(declare-fun bs!856668 () Bool)

(assert (= bs!856668 (and b!4521113 b!4520152)))

(assert (=> bs!856668 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697423) (= lambda!172569 lambda!172451))))

(declare-fun bs!856669 () Bool)

(assert (= bs!856669 (and b!4521113 d!1393066)))

(assert (=> bs!856669 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697885) (= lambda!172569 lambda!172545))))

(declare-fun bs!856670 () Bool)

(assert (= bs!856670 (and b!4521113 d!1393050)))

(assert (=> bs!856670 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697843) (= lambda!172569 lambda!172537))))

(declare-fun bs!856671 () Bool)

(assert (= bs!856671 (and b!4521113 b!4520904)))

(assert (=> bs!856671 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172569 lambda!172534))))

(declare-fun bs!856672 () Bool)

(assert (= bs!856672 (and b!4521113 d!1392554)))

(assert (=> bs!856672 (not (= lambda!172569 lambda!172445))))

(declare-fun bs!856673 () Bool)

(assert (= bs!856673 (and b!4521113 d!1393102)))

(assert (=> bs!856673 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697423) (= lambda!172569 lambda!172556))))

(declare-fun bs!856674 () Bool)

(assert (= bs!856674 (and b!4521113 b!4520061)))

(assert (=> bs!856674 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172569 lambda!172430))))

(declare-fun bs!856675 () Bool)

(assert (= bs!856675 (and b!4521113 d!1392478)))

(assert (=> bs!856675 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697339) (= lambda!172569 lambda!172433))))

(declare-fun bs!856676 () Bool)

(assert (= bs!856676 (and b!4521113 b!4520058)))

(assert (=> bs!856676 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697345) (= lambda!172569 lambda!172432))))

(declare-fun bs!856677 () Bool)

(assert (= bs!856677 (and b!4521113 d!1392774)))

(assert (=> bs!856677 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172569 lambda!172499))))

(assert (=> bs!856666 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172569 lambda!172502))))

(declare-fun bs!856678 () Bool)

(assert (= bs!856678 (and b!4521113 b!4520901)))

(assert (=> bs!856678 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697849) (= lambda!172569 lambda!172536))))

(declare-fun bs!856679 () Bool)

(assert (= bs!856679 (and b!4521113 b!4520932)))

(assert (=> bs!856679 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172569 lambda!172538))))

(declare-fun bs!856680 () Bool)

(assert (= bs!856680 (and b!4521113 b!4520943)))

(assert (=> bs!856680 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172569 lambda!172549))))

(declare-fun bs!856681 () Bool)

(assert (= bs!856681 (and b!4521113 d!1392776)))

(assert (=> bs!856681 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697578) (= lambda!172569 lambda!172504))))

(assert (=> bs!856667 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172569 lambda!172539))))

(declare-fun bs!856682 () Bool)

(assert (= bs!856682 (and b!4521113 d!1392574)))

(assert (=> bs!856682 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697417) (= lambda!172569 lambda!172452))))

(declare-fun bs!856683 () Bool)

(assert (= bs!856683 (and b!4521113 b!4520155)))

(assert (=> bs!856683 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172569 lambda!172449))))

(declare-fun bs!856684 () Bool)

(assert (= bs!856684 (and b!4521113 b!4520539)))

(assert (=> bs!856684 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172569 lambda!172500))))

(assert (=> bs!856678 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172569 lambda!172535))))

(declare-fun bs!856685 () Bool)

(assert (= bs!856685 (and b!4521113 b!4520946)))

(assert (=> bs!856685 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172569 lambda!172548))))

(declare-fun bs!856686 () Bool)

(assert (= bs!856686 (and b!4521113 d!1393078)))

(assert (=> bs!856686 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697910) (= lambda!172569 lambda!172551))))

(assert (=> bs!856680 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697916) (= lambda!172569 lambda!172550))))

(assert (=> bs!856668 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172569 lambda!172450))))

(declare-fun bs!856687 () Bool)

(assert (= bs!856687 (and b!4521113 d!1392762)))

(assert (=> bs!856687 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172569 lambda!172497))))

(declare-fun bs!856688 () Bool)

(assert (= bs!856688 (and b!4521113 d!1393168)))

(assert (=> bs!856688 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697345) (= lambda!172569 lambda!172568))))

(assert (=> bs!856676 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172569 lambda!172431))))

(assert (=> b!4521113 true))

(declare-fun bs!856689 () Bool)

(declare-fun b!4521110 () Bool)

(assert (= bs!856689 (and b!4521110 b!4520536)))

(declare-fun lambda!172570 () Int)

(assert (=> bs!856689 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697584) (= lambda!172570 lambda!172503))))

(declare-fun bs!856690 () Bool)

(assert (= bs!856690 (and b!4521110 b!4521113)))

(assert (=> bs!856690 (= lambda!172570 lambda!172569)))

(declare-fun bs!856691 () Bool)

(assert (= bs!856691 (and b!4521110 b!4520929)))

(assert (=> bs!856691 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697891) (= lambda!172570 lambda!172540))))

(declare-fun bs!856692 () Bool)

(assert (= bs!856692 (and b!4521110 b!4520152)))

(assert (=> bs!856692 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697423) (= lambda!172570 lambda!172451))))

(declare-fun bs!856693 () Bool)

(assert (= bs!856693 (and b!4521110 d!1393066)))

(assert (=> bs!856693 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697885) (= lambda!172570 lambda!172545))))

(declare-fun bs!856694 () Bool)

(assert (= bs!856694 (and b!4521110 d!1393050)))

(assert (=> bs!856694 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697843) (= lambda!172570 lambda!172537))))

(declare-fun bs!856695 () Bool)

(assert (= bs!856695 (and b!4521110 b!4520904)))

(assert (=> bs!856695 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172570 lambda!172534))))

(declare-fun bs!856696 () Bool)

(assert (= bs!856696 (and b!4521110 d!1392554)))

(assert (=> bs!856696 (not (= lambda!172570 lambda!172445))))

(declare-fun bs!856697 () Bool)

(assert (= bs!856697 (and b!4521110 d!1393102)))

(assert (=> bs!856697 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697423) (= lambda!172570 lambda!172556))))

(declare-fun bs!856698 () Bool)

(assert (= bs!856698 (and b!4521110 b!4520061)))

(assert (=> bs!856698 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172570 lambda!172430))))

(declare-fun bs!856699 () Bool)

(assert (= bs!856699 (and b!4521110 d!1392478)))

(assert (=> bs!856699 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697339) (= lambda!172570 lambda!172433))))

(declare-fun bs!856700 () Bool)

(assert (= bs!856700 (and b!4521110 b!4520058)))

(assert (=> bs!856700 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697345) (= lambda!172570 lambda!172432))))

(declare-fun bs!856701 () Bool)

(assert (= bs!856701 (and b!4521110 d!1392774)))

(assert (=> bs!856701 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172570 lambda!172499))))

(assert (=> bs!856689 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172570 lambda!172502))))

(declare-fun bs!856702 () Bool)

(assert (= bs!856702 (and b!4521110 b!4520901)))

(assert (=> bs!856702 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697849) (= lambda!172570 lambda!172536))))

(declare-fun bs!856703 () Bool)

(assert (= bs!856703 (and b!4521110 b!4520932)))

(assert (=> bs!856703 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172570 lambda!172538))))

(declare-fun bs!856704 () Bool)

(assert (= bs!856704 (and b!4521110 b!4520943)))

(assert (=> bs!856704 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172570 lambda!172549))))

(declare-fun bs!856705 () Bool)

(assert (= bs!856705 (and b!4521110 d!1392776)))

(assert (=> bs!856705 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697578) (= lambda!172570 lambda!172504))))

(assert (=> bs!856691 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172570 lambda!172539))))

(declare-fun bs!856706 () Bool)

(assert (= bs!856706 (and b!4521110 d!1392574)))

(assert (=> bs!856706 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697417) (= lambda!172570 lambda!172452))))

(declare-fun bs!856707 () Bool)

(assert (= bs!856707 (and b!4521110 b!4520155)))

(assert (=> bs!856707 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172570 lambda!172449))))

(declare-fun bs!856708 () Bool)

(assert (= bs!856708 (and b!4521110 b!4520539)))

(assert (=> bs!856708 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172570 lambda!172500))))

(assert (=> bs!856702 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172570 lambda!172535))))

(declare-fun bs!856709 () Bool)

(assert (= bs!856709 (and b!4521110 b!4520946)))

(assert (=> bs!856709 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172570 lambda!172548))))

(declare-fun bs!856710 () Bool)

(assert (= bs!856710 (and b!4521110 d!1393078)))

(assert (=> bs!856710 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697910) (= lambda!172570 lambda!172551))))

(assert (=> bs!856704 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697916) (= lambda!172570 lambda!172550))))

(assert (=> bs!856692 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172570 lambda!172450))))

(declare-fun bs!856711 () Bool)

(assert (= bs!856711 (and b!4521110 d!1392762)))

(assert (=> bs!856711 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697017) (= lambda!172570 lambda!172497))))

(declare-fun bs!856712 () Bool)

(assert (= bs!856712 (and b!4521110 d!1393168)))

(assert (=> bs!856712 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697345) (= lambda!172570 lambda!172568))))

(assert (=> bs!856700 (= (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1697024) (= lambda!172570 lambda!172431))))

(assert (=> b!4521110 true))

(declare-fun lambda!172571 () Int)

(declare-fun lt!1698069 () ListMap!3589)

(assert (=> bs!856689 (= (= lt!1698069 lt!1697584) (= lambda!172571 lambda!172503))))

(assert (=> bs!856690 (= (= lt!1698069 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172571 lambda!172569))))

(assert (=> bs!856691 (= (= lt!1698069 lt!1697891) (= lambda!172571 lambda!172540))))

(assert (=> bs!856692 (= (= lt!1698069 lt!1697423) (= lambda!172571 lambda!172451))))

(assert (=> bs!856693 (= (= lt!1698069 lt!1697885) (= lambda!172571 lambda!172545))))

(assert (=> bs!856694 (= (= lt!1698069 lt!1697843) (= lambda!172571 lambda!172537))))

(assert (=> bs!856696 (not (= lambda!172571 lambda!172445))))

(assert (=> bs!856697 (= (= lt!1698069 lt!1697423) (= lambda!172571 lambda!172556))))

(assert (=> bs!856698 (= (= lt!1698069 lt!1697024) (= lambda!172571 lambda!172430))))

(assert (=> bs!856699 (= (= lt!1698069 lt!1697339) (= lambda!172571 lambda!172433))))

(assert (=> bs!856700 (= (= lt!1698069 lt!1697345) (= lambda!172571 lambda!172432))))

(assert (=> bs!856701 (= (= lt!1698069 lt!1697024) (= lambda!172571 lambda!172499))))

(assert (=> bs!856689 (= (= lt!1698069 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172571 lambda!172502))))

(assert (=> bs!856702 (= (= lt!1698069 lt!1697849) (= lambda!172571 lambda!172536))))

(assert (=> bs!856703 (= (= lt!1698069 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172571 lambda!172538))))

(assert (=> bs!856704 (= (= lt!1698069 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172571 lambda!172549))))

(assert (=> bs!856705 (= (= lt!1698069 lt!1697578) (= lambda!172571 lambda!172504))))

(assert (=> bs!856691 (= (= lt!1698069 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172571 lambda!172539))))

(assert (=> bs!856706 (= (= lt!1698069 lt!1697417) (= lambda!172571 lambda!172452))))

(assert (=> bs!856707 (= (= lt!1698069 lt!1697017) (= lambda!172571 lambda!172449))))

(assert (=> bs!856708 (= (= lt!1698069 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172571 lambda!172500))))

(assert (=> b!4521110 (= (= lt!1698069 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172571 lambda!172570))))

(assert (=> bs!856695 (= (= lt!1698069 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172571 lambda!172534))))

(assert (=> bs!856702 (= (= lt!1698069 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172571 lambda!172535))))

(assert (=> bs!856709 (= (= lt!1698069 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172571 lambda!172548))))

(assert (=> bs!856710 (= (= lt!1698069 lt!1697910) (= lambda!172571 lambda!172551))))

(assert (=> bs!856704 (= (= lt!1698069 lt!1697916) (= lambda!172571 lambda!172550))))

(assert (=> bs!856692 (= (= lt!1698069 lt!1697017) (= lambda!172571 lambda!172450))))

(assert (=> bs!856711 (= (= lt!1698069 lt!1697017) (= lambda!172571 lambda!172497))))

(assert (=> bs!856712 (= (= lt!1698069 lt!1697345) (= lambda!172571 lambda!172568))))

(assert (=> bs!856700 (= (= lt!1698069 lt!1697024) (= lambda!172571 lambda!172431))))

(assert (=> b!4521110 true))

(declare-fun bs!856713 () Bool)

(declare-fun d!1393170 () Bool)

(assert (= bs!856713 (and d!1393170 b!4520536)))

(declare-fun lt!1698063 () ListMap!3589)

(declare-fun lambda!172572 () Int)

(assert (=> bs!856713 (= (= lt!1698063 lt!1697584) (= lambda!172572 lambda!172503))))

(declare-fun bs!856714 () Bool)

(assert (= bs!856714 (and d!1393170 b!4521113)))

(assert (=> bs!856714 (= (= lt!1698063 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172572 lambda!172569))))

(declare-fun bs!856715 () Bool)

(assert (= bs!856715 (and d!1393170 b!4520929)))

(assert (=> bs!856715 (= (= lt!1698063 lt!1697891) (= lambda!172572 lambda!172540))))

(declare-fun bs!856716 () Bool)

(assert (= bs!856716 (and d!1393170 b!4520152)))

(assert (=> bs!856716 (= (= lt!1698063 lt!1697423) (= lambda!172572 lambda!172451))))

(declare-fun bs!856717 () Bool)

(assert (= bs!856717 (and d!1393170 d!1393066)))

(assert (=> bs!856717 (= (= lt!1698063 lt!1697885) (= lambda!172572 lambda!172545))))

(declare-fun bs!856718 () Bool)

(assert (= bs!856718 (and d!1393170 d!1393050)))

(assert (=> bs!856718 (= (= lt!1698063 lt!1697843) (= lambda!172572 lambda!172537))))

(declare-fun bs!856719 () Bool)

(assert (= bs!856719 (and d!1393170 d!1392554)))

(assert (=> bs!856719 (not (= lambda!172572 lambda!172445))))

(declare-fun bs!856720 () Bool)

(assert (= bs!856720 (and d!1393170 b!4521110)))

(assert (=> bs!856720 (= (= lt!1698063 lt!1698069) (= lambda!172572 lambda!172571))))

(declare-fun bs!856721 () Bool)

(assert (= bs!856721 (and d!1393170 d!1393102)))

(assert (=> bs!856721 (= (= lt!1698063 lt!1697423) (= lambda!172572 lambda!172556))))

(declare-fun bs!856722 () Bool)

(assert (= bs!856722 (and d!1393170 b!4520061)))

(assert (=> bs!856722 (= (= lt!1698063 lt!1697024) (= lambda!172572 lambda!172430))))

(declare-fun bs!856723 () Bool)

(assert (= bs!856723 (and d!1393170 d!1392478)))

(assert (=> bs!856723 (= (= lt!1698063 lt!1697339) (= lambda!172572 lambda!172433))))

(declare-fun bs!856724 () Bool)

(assert (= bs!856724 (and d!1393170 b!4520058)))

(assert (=> bs!856724 (= (= lt!1698063 lt!1697345) (= lambda!172572 lambda!172432))))

(declare-fun bs!856725 () Bool)

(assert (= bs!856725 (and d!1393170 d!1392774)))

(assert (=> bs!856725 (= (= lt!1698063 lt!1697024) (= lambda!172572 lambda!172499))))

(assert (=> bs!856713 (= (= lt!1698063 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172572 lambda!172502))))

(declare-fun bs!856726 () Bool)

(assert (= bs!856726 (and d!1393170 b!4520901)))

(assert (=> bs!856726 (= (= lt!1698063 lt!1697849) (= lambda!172572 lambda!172536))))

(declare-fun bs!856727 () Bool)

(assert (= bs!856727 (and d!1393170 b!4520932)))

(assert (=> bs!856727 (= (= lt!1698063 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172572 lambda!172538))))

(declare-fun bs!856728 () Bool)

(assert (= bs!856728 (and d!1393170 b!4520943)))

(assert (=> bs!856728 (= (= lt!1698063 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172572 lambda!172549))))

(declare-fun bs!856729 () Bool)

(assert (= bs!856729 (and d!1393170 d!1392776)))

(assert (=> bs!856729 (= (= lt!1698063 lt!1697578) (= lambda!172572 lambda!172504))))

(assert (=> bs!856715 (= (= lt!1698063 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172572 lambda!172539))))

(declare-fun bs!856730 () Bool)

(assert (= bs!856730 (and d!1393170 d!1392574)))

(assert (=> bs!856730 (= (= lt!1698063 lt!1697417) (= lambda!172572 lambda!172452))))

(declare-fun bs!856731 () Bool)

(assert (= bs!856731 (and d!1393170 b!4520155)))

(assert (=> bs!856731 (= (= lt!1698063 lt!1697017) (= lambda!172572 lambda!172449))))

(declare-fun bs!856732 () Bool)

(assert (= bs!856732 (and d!1393170 b!4520539)))

(assert (=> bs!856732 (= (= lt!1698063 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172572 lambda!172500))))

(assert (=> bs!856720 (= (= lt!1698063 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172572 lambda!172570))))

(declare-fun bs!856733 () Bool)

(assert (= bs!856733 (and d!1393170 b!4520904)))

(assert (=> bs!856733 (= (= lt!1698063 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172572 lambda!172534))))

(assert (=> bs!856726 (= (= lt!1698063 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172572 lambda!172535))))

(declare-fun bs!856734 () Bool)

(assert (= bs!856734 (and d!1393170 b!4520946)))

(assert (=> bs!856734 (= (= lt!1698063 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172572 lambda!172548))))

(declare-fun bs!856735 () Bool)

(assert (= bs!856735 (and d!1393170 d!1393078)))

(assert (=> bs!856735 (= (= lt!1698063 lt!1697910) (= lambda!172572 lambda!172551))))

(assert (=> bs!856728 (= (= lt!1698063 lt!1697916) (= lambda!172572 lambda!172550))))

(assert (=> bs!856716 (= (= lt!1698063 lt!1697017) (= lambda!172572 lambda!172450))))

(declare-fun bs!856736 () Bool)

(assert (= bs!856736 (and d!1393170 d!1392762)))

(assert (=> bs!856736 (= (= lt!1698063 lt!1697017) (= lambda!172572 lambda!172497))))

(declare-fun bs!856737 () Bool)

(assert (= bs!856737 (and d!1393170 d!1393168)))

(assert (=> bs!856737 (= (= lt!1698063 lt!1697345) (= lambda!172572 lambda!172568))))

(assert (=> bs!856724 (= (= lt!1698063 lt!1697024) (= lambda!172572 lambda!172431))))

(assert (=> d!1393170 true))

(declare-fun e!2816805 () ListMap!3589)

(assert (=> b!4521110 (= e!2816805 lt!1698069)))

(declare-fun lt!1698059 () ListMap!3589)

(assert (=> b!4521110 (= lt!1698059 (+!1540 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (h!56499 (t!357732 (_2!28832 lt!1697023)))))))

(assert (=> b!4521110 (= lt!1698069 (addToMapMapFromBucket!687 (t!357732 (t!357732 (_2!28832 lt!1697023))) (+!1540 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) (h!56499 (t!357732 (_2!28832 lt!1697023))))))))

(declare-fun lt!1698066 () Unit!95040)

(declare-fun call!315030 () Unit!95040)

(assert (=> b!4521110 (= lt!1698066 call!315030)))

(assert (=> b!4521110 (forall!10265 (toList!4328 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) lambda!172570)))

(declare-fun lt!1698061 () Unit!95040)

(assert (=> b!4521110 (= lt!1698061 lt!1698066)))

(declare-fun call!315029 () Bool)

(assert (=> b!4521110 call!315029))

(declare-fun lt!1698054 () Unit!95040)

(declare-fun Unit!95265 () Unit!95040)

(assert (=> b!4521110 (= lt!1698054 Unit!95265)))

(declare-fun call!315028 () Bool)

(assert (=> b!4521110 call!315028))

(declare-fun lt!1698058 () Unit!95040)

(declare-fun Unit!95266 () Unit!95040)

(assert (=> b!4521110 (= lt!1698058 Unit!95266)))

(declare-fun lt!1698056 () Unit!95040)

(declare-fun Unit!95267 () Unit!95040)

(assert (=> b!4521110 (= lt!1698056 Unit!95267)))

(declare-fun lt!1698065 () Unit!95040)

(assert (=> b!4521110 (= lt!1698065 (forallContained!2517 (toList!4328 lt!1698059) lambda!172571 (h!56499 (t!357732 (_2!28832 lt!1697023)))))))

(assert (=> b!4521110 (contains!13372 lt!1698059 (_1!28831 (h!56499 (t!357732 (_2!28832 lt!1697023)))))))

(declare-fun lt!1698051 () Unit!95040)

(declare-fun Unit!95268 () Unit!95040)

(assert (=> b!4521110 (= lt!1698051 Unit!95268)))

(assert (=> b!4521110 (contains!13372 lt!1698069 (_1!28831 (h!56499 (t!357732 (_2!28832 lt!1697023)))))))

(declare-fun lt!1698062 () Unit!95040)

(declare-fun Unit!95269 () Unit!95040)

(assert (=> b!4521110 (= lt!1698062 Unit!95269)))

(assert (=> b!4521110 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172571)))

(declare-fun lt!1698055 () Unit!95040)

(declare-fun Unit!95270 () Unit!95040)

(assert (=> b!4521110 (= lt!1698055 Unit!95270)))

(assert (=> b!4521110 (forall!10265 (toList!4328 lt!1698059) lambda!172571)))

(declare-fun lt!1698052 () Unit!95040)

(declare-fun Unit!95271 () Unit!95040)

(assert (=> b!4521110 (= lt!1698052 Unit!95271)))

(declare-fun lt!1698060 () Unit!95040)

(declare-fun Unit!95272 () Unit!95040)

(assert (=> b!4521110 (= lt!1698060 Unit!95272)))

(declare-fun lt!1698049 () Unit!95040)

(assert (=> b!4521110 (= lt!1698049 (addForallContainsKeyThenBeforeAdding!338 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1698069 (_1!28831 (h!56499 (t!357732 (_2!28832 lt!1697023)))) (_2!28831 (h!56499 (t!357732 (_2!28832 lt!1697023))))))))

(assert (=> b!4521110 (forall!10265 (toList!4328 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) lambda!172571)))

(declare-fun lt!1698057 () Unit!95040)

(assert (=> b!4521110 (= lt!1698057 lt!1698049)))

(assert (=> b!4521110 (forall!10265 (toList!4328 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) lambda!172571)))

(declare-fun lt!1698064 () Unit!95040)

(declare-fun Unit!95273 () Unit!95040)

(assert (=> b!4521110 (= lt!1698064 Unit!95273)))

(declare-fun res!1881681 () Bool)

(assert (=> b!4521110 (= res!1881681 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172571))))

(declare-fun e!2816803 () Bool)

(assert (=> b!4521110 (=> (not res!1881681) (not e!2816803))))

(assert (=> b!4521110 e!2816803))

(declare-fun lt!1698050 () Unit!95040)

(declare-fun Unit!95274 () Unit!95040)

(assert (=> b!4521110 (= lt!1698050 Unit!95274)))

(declare-fun b!4521111 () Bool)

(assert (=> b!4521111 (= e!2816803 (forall!10265 (toList!4328 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) lambda!172571))))

(declare-fun bm!315023 () Bool)

(assert (=> bm!315023 (= call!315030 (lemmaContainsAllItsOwnKeys!338 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun c!771638 () Bool)

(declare-fun bm!315024 () Bool)

(assert (=> bm!315024 (= call!315029 (forall!10265 (ite c!771638 (toList!4328 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (toList!4328 lt!1698059)) (ite c!771638 lambda!172569 lambda!172571)))))

(declare-fun b!4521112 () Bool)

(declare-fun res!1881680 () Bool)

(declare-fun e!2816804 () Bool)

(assert (=> b!4521112 (=> (not res!1881680) (not e!2816804))))

(assert (=> b!4521112 (= res!1881680 (forall!10265 (toList!4328 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) lambda!172572))))

(assert (=> d!1393170 e!2816804))

(declare-fun res!1881682 () Bool)

(assert (=> d!1393170 (=> (not res!1881682) (not e!2816804))))

(assert (=> d!1393170 (= res!1881682 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172572))))

(assert (=> d!1393170 (= lt!1698063 e!2816805)))

(assert (=> d!1393170 (= c!771638 ((_ is Nil!50646) (t!357732 (_2!28832 lt!1697023))))))

(assert (=> d!1393170 (noDuplicateKeys!1160 (t!357732 (_2!28832 lt!1697023)))))

(assert (=> d!1393170 (= (addToMapMapFromBucket!687 (t!357732 (_2!28832 lt!1697023)) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) lt!1698063)))

(declare-fun bm!315025 () Bool)

(assert (=> bm!315025 (= call!315028 (forall!10265 (ite c!771638 (toList!4328 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (t!357732 (t!357732 (_2!28832 lt!1697023)))) (ite c!771638 lambda!172569 lambda!172571)))))

(assert (=> b!4521113 (= e!2816805 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun lt!1698053 () Unit!95040)

(assert (=> b!4521113 (= lt!1698053 call!315030)))

(assert (=> b!4521113 call!315028))

(declare-fun lt!1698067 () Unit!95040)

(assert (=> b!4521113 (= lt!1698067 lt!1698053)))

(assert (=> b!4521113 call!315029))

(declare-fun lt!1698068 () Unit!95040)

(declare-fun Unit!95275 () Unit!95040)

(assert (=> b!4521113 (= lt!1698068 Unit!95275)))

(declare-fun b!4521114 () Bool)

(assert (=> b!4521114 (= e!2816804 (invariantList!1017 (toList!4328 lt!1698063)))))

(assert (= (and d!1393170 c!771638) b!4521113))

(assert (= (and d!1393170 (not c!771638)) b!4521110))

(assert (= (and b!4521110 res!1881681) b!4521111))

(assert (= (or b!4521113 b!4521110) bm!315025))

(assert (= (or b!4521113 b!4521110) bm!315024))

(assert (= (or b!4521113 b!4521110) bm!315023))

(assert (= (and d!1393170 res!1881682) b!4521112))

(assert (= (and b!4521112 res!1881680) b!4521114))

(declare-fun m!5270155 () Bool)

(assert (=> d!1393170 m!5270155))

(assert (=> d!1393170 m!5268199))

(declare-fun m!5270157 () Bool)

(assert (=> b!4521111 m!5270157))

(declare-fun m!5270159 () Bool)

(assert (=> bm!315024 m!5270159))

(assert (=> bm!315023 m!5268101))

(declare-fun m!5270161 () Bool)

(assert (=> bm!315023 m!5270161))

(declare-fun m!5270163 () Bool)

(assert (=> b!4521114 m!5270163))

(declare-fun m!5270165 () Bool)

(assert (=> b!4521112 m!5270165))

(declare-fun m!5270167 () Bool)

(assert (=> bm!315025 m!5270167))

(assert (=> b!4521110 m!5268101))

(declare-fun m!5270169 () Bool)

(assert (=> b!4521110 m!5270169))

(assert (=> b!4521110 m!5270157))

(declare-fun m!5270171 () Bool)

(assert (=> b!4521110 m!5270171))

(assert (=> b!4521110 m!5268101))

(declare-fun m!5270173 () Bool)

(assert (=> b!4521110 m!5270173))

(assert (=> b!4521110 m!5270157))

(declare-fun m!5270175 () Bool)

(assert (=> b!4521110 m!5270175))

(assert (=> b!4521110 m!5270169))

(declare-fun m!5270177 () Bool)

(assert (=> b!4521110 m!5270177))

(declare-fun m!5270179 () Bool)

(assert (=> b!4521110 m!5270179))

(declare-fun m!5270181 () Bool)

(assert (=> b!4521110 m!5270181))

(assert (=> b!4521110 m!5270175))

(declare-fun m!5270183 () Bool)

(assert (=> b!4521110 m!5270183))

(declare-fun m!5270185 () Bool)

(assert (=> b!4521110 m!5270185))

(assert (=> b!4520058 d!1393170))

(declare-fun d!1393172 () Bool)

(declare-fun res!1881683 () Bool)

(declare-fun e!2816806 () Bool)

(assert (=> d!1393172 (=> res!1881683 e!2816806)))

(assert (=> d!1393172 (= res!1881683 ((_ is Nil!50646) (toList!4328 lt!1697024)))))

(assert (=> d!1393172 (= (forall!10265 (toList!4328 lt!1697024) lambda!172431) e!2816806)))

(declare-fun b!4521115 () Bool)

(declare-fun e!2816807 () Bool)

(assert (=> b!4521115 (= e!2816806 e!2816807)))

(declare-fun res!1881684 () Bool)

(assert (=> b!4521115 (=> (not res!1881684) (not e!2816807))))

(assert (=> b!4521115 (= res!1881684 (dynLambda!21164 lambda!172431 (h!56499 (toList!4328 lt!1697024))))))

(declare-fun b!4521116 () Bool)

(assert (=> b!4521116 (= e!2816807 (forall!10265 (t!357732 (toList!4328 lt!1697024)) lambda!172431))))

(assert (= (and d!1393172 (not res!1881683)) b!4521115))

(assert (= (and b!4521115 res!1881684) b!4521116))

(declare-fun b_lambda!155057 () Bool)

(assert (=> (not b_lambda!155057) (not b!4521115)))

(declare-fun m!5270187 () Bool)

(assert (=> b!4521115 m!5270187))

(declare-fun m!5270189 () Bool)

(assert (=> b!4521116 m!5270189))

(assert (=> b!4520058 d!1393172))

(declare-fun d!1393174 () Bool)

(declare-fun res!1881685 () Bool)

(declare-fun e!2816808 () Bool)

(assert (=> d!1393174 (=> res!1881685 e!2816808)))

(assert (=> d!1393174 (= res!1881685 ((_ is Nil!50646) (_2!28832 lt!1697023)))))

(assert (=> d!1393174 (= (forall!10265 (_2!28832 lt!1697023) lambda!172432) e!2816808)))

(declare-fun b!4521117 () Bool)

(declare-fun e!2816809 () Bool)

(assert (=> b!4521117 (= e!2816808 e!2816809)))

(declare-fun res!1881686 () Bool)

(assert (=> b!4521117 (=> (not res!1881686) (not e!2816809))))

(assert (=> b!4521117 (= res!1881686 (dynLambda!21164 lambda!172432 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun b!4521118 () Bool)

(assert (=> b!4521118 (= e!2816809 (forall!10265 (t!357732 (_2!28832 lt!1697023)) lambda!172432))))

(assert (= (and d!1393174 (not res!1881685)) b!4521117))

(assert (= (and b!4521117 res!1881686) b!4521118))

(declare-fun b_lambda!155059 () Bool)

(assert (=> (not b_lambda!155059) (not b!4521117)))

(declare-fun m!5270191 () Bool)

(assert (=> b!4521117 m!5270191))

(declare-fun m!5270193 () Bool)

(assert (=> b!4521118 m!5270193))

(assert (=> b!4520058 d!1393174))

(declare-fun d!1393176 () Bool)

(declare-fun e!2816810 () Bool)

(assert (=> d!1393176 e!2816810))

(declare-fun res!1881688 () Bool)

(assert (=> d!1393176 (=> (not res!1881688) (not e!2816810))))

(declare-fun lt!1698070 () ListMap!3589)

(assert (=> d!1393176 (= res!1881688 (contains!13372 lt!1698070 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun lt!1698072 () List!50770)

(assert (=> d!1393176 (= lt!1698070 (ListMap!3590 lt!1698072))))

(declare-fun lt!1698071 () Unit!95040)

(declare-fun lt!1698073 () Unit!95040)

(assert (=> d!1393176 (= lt!1698071 lt!1698073)))

(assert (=> d!1393176 (= (getValueByKey!1092 lt!1698072 (_1!28831 (h!56499 (_2!28832 lt!1697023)))) (Some!11111 (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393176 (= lt!1698073 (lemmaContainsTupThenGetReturnValue!679 lt!1698072 (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393176 (= lt!1698072 (insertNoDuplicatedKeys!279 (toList!4328 lt!1697024) (_1!28831 (h!56499 (_2!28832 lt!1697023))) (_2!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> d!1393176 (= (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023))) lt!1698070)))

(declare-fun b!4521119 () Bool)

(declare-fun res!1881687 () Bool)

(assert (=> b!4521119 (=> (not res!1881687) (not e!2816810))))

(assert (=> b!4521119 (= res!1881687 (= (getValueByKey!1092 (toList!4328 lt!1698070) (_1!28831 (h!56499 (_2!28832 lt!1697023)))) (Some!11111 (_2!28831 (h!56499 (_2!28832 lt!1697023))))))))

(declare-fun b!4521120 () Bool)

(assert (=> b!4521120 (= e!2816810 (contains!13376 (toList!4328 lt!1698070) (h!56499 (_2!28832 lt!1697023))))))

(assert (= (and d!1393176 res!1881688) b!4521119))

(assert (= (and b!4521119 res!1881687) b!4521120))

(declare-fun m!5270195 () Bool)

(assert (=> d!1393176 m!5270195))

(declare-fun m!5270197 () Bool)

(assert (=> d!1393176 m!5270197))

(declare-fun m!5270199 () Bool)

(assert (=> d!1393176 m!5270199))

(declare-fun m!5270201 () Bool)

(assert (=> d!1393176 m!5270201))

(declare-fun m!5270203 () Bool)

(assert (=> b!4521119 m!5270203))

(declare-fun m!5270205 () Bool)

(assert (=> b!4521120 m!5270205))

(assert (=> b!4520058 d!1393176))

(declare-fun d!1393178 () Bool)

(assert (=> d!1393178 (dynLambda!21164 lambda!172432 (h!56499 (_2!28832 lt!1697023)))))

(declare-fun lt!1698074 () Unit!95040)

(assert (=> d!1393178 (= lt!1698074 (choose!29540 (toList!4328 lt!1697335) lambda!172432 (h!56499 (_2!28832 lt!1697023))))))

(declare-fun e!2816813 () Bool)

(assert (=> d!1393178 e!2816813))

(declare-fun res!1881689 () Bool)

(assert (=> d!1393178 (=> (not res!1881689) (not e!2816813))))

(assert (=> d!1393178 (= res!1881689 (forall!10265 (toList!4328 lt!1697335) lambda!172432))))

(assert (=> d!1393178 (= (forallContained!2517 (toList!4328 lt!1697335) lambda!172432 (h!56499 (_2!28832 lt!1697023))) lt!1698074)))

(declare-fun b!4521121 () Bool)

(assert (=> b!4521121 (= e!2816813 (contains!13376 (toList!4328 lt!1697335) (h!56499 (_2!28832 lt!1697023))))))

(assert (= (and d!1393178 res!1881689) b!4521121))

(declare-fun b_lambda!155061 () Bool)

(assert (=> (not b_lambda!155061) (not d!1393178)))

(assert (=> d!1393178 m!5270191))

(declare-fun m!5270207 () Bool)

(assert (=> d!1393178 m!5270207))

(assert (=> d!1393178 m!5268115))

(declare-fun m!5270209 () Bool)

(assert (=> b!4521121 m!5270209))

(assert (=> b!4520058 d!1393178))

(declare-fun d!1393180 () Bool)

(declare-fun res!1881690 () Bool)

(declare-fun e!2816814 () Bool)

(assert (=> d!1393180 (=> res!1881690 e!2816814)))

(assert (=> d!1393180 (= res!1881690 ((_ is Nil!50646) (toList!4328 lt!1697335)))))

(assert (=> d!1393180 (= (forall!10265 (toList!4328 lt!1697335) lambda!172432) e!2816814)))

(declare-fun b!4521122 () Bool)

(declare-fun e!2816815 () Bool)

(assert (=> b!4521122 (= e!2816814 e!2816815)))

(declare-fun res!1881691 () Bool)

(assert (=> b!4521122 (=> (not res!1881691) (not e!2816815))))

(assert (=> b!4521122 (= res!1881691 (dynLambda!21164 lambda!172432 (h!56499 (toList!4328 lt!1697335))))))

(declare-fun b!4521123 () Bool)

(assert (=> b!4521123 (= e!2816815 (forall!10265 (t!357732 (toList!4328 lt!1697335)) lambda!172432))))

(assert (= (and d!1393180 (not res!1881690)) b!4521122))

(assert (= (and b!4521122 res!1881691) b!4521123))

(declare-fun b_lambda!155063 () Bool)

(assert (=> (not b_lambda!155063) (not b!4521122)))

(declare-fun m!5270211 () Bool)

(assert (=> b!4521122 m!5270211))

(declare-fun m!5270213 () Bool)

(assert (=> b!4521123 m!5270213))

(assert (=> b!4520058 d!1393180))

(declare-fun d!1393182 () Bool)

(declare-fun res!1881692 () Bool)

(declare-fun e!2816816 () Bool)

(assert (=> d!1393182 (=> res!1881692 e!2816816)))

(assert (=> d!1393182 (= res!1881692 ((_ is Nil!50646) (toList!4328 lt!1697017)))))

(assert (=> d!1393182 (= (forall!10265 (toList!4328 lt!1697017) lambda!172452) e!2816816)))

(declare-fun b!4521124 () Bool)

(declare-fun e!2816817 () Bool)

(assert (=> b!4521124 (= e!2816816 e!2816817)))

(declare-fun res!1881693 () Bool)

(assert (=> b!4521124 (=> (not res!1881693) (not e!2816817))))

(assert (=> b!4521124 (= res!1881693 (dynLambda!21164 lambda!172452 (h!56499 (toList!4328 lt!1697017))))))

(declare-fun b!4521125 () Bool)

(assert (=> b!4521125 (= e!2816817 (forall!10265 (t!357732 (toList!4328 lt!1697017)) lambda!172452))))

(assert (= (and d!1393182 (not res!1881692)) b!4521124))

(assert (= (and b!4521124 res!1881693) b!4521125))

(declare-fun b_lambda!155065 () Bool)

(assert (=> (not b_lambda!155065) (not b!4521124)))

(declare-fun m!5270215 () Bool)

(assert (=> b!4521124 m!5270215))

(declare-fun m!5270217 () Bool)

(assert (=> b!4521125 m!5270217))

(assert (=> b!4520154 d!1393182))

(declare-fun d!1393184 () Bool)

(declare-fun res!1881694 () Bool)

(declare-fun e!2816818 () Bool)

(assert (=> d!1393184 (=> res!1881694 e!2816818)))

(assert (=> d!1393184 (= res!1881694 ((_ is Nil!50646) (toList!4328 lt!1697024)))))

(assert (=> d!1393184 (= (forall!10265 (toList!4328 lt!1697024) lambda!172433) e!2816818)))

(declare-fun b!4521126 () Bool)

(declare-fun e!2816819 () Bool)

(assert (=> b!4521126 (= e!2816818 e!2816819)))

(declare-fun res!1881695 () Bool)

(assert (=> b!4521126 (=> (not res!1881695) (not e!2816819))))

(assert (=> b!4521126 (= res!1881695 (dynLambda!21164 lambda!172433 (h!56499 (toList!4328 lt!1697024))))))

(declare-fun b!4521127 () Bool)

(assert (=> b!4521127 (= e!2816819 (forall!10265 (t!357732 (toList!4328 lt!1697024)) lambda!172433))))

(assert (= (and d!1393184 (not res!1881694)) b!4521126))

(assert (= (and b!4521126 res!1881695) b!4521127))

(declare-fun b_lambda!155067 () Bool)

(assert (=> (not b_lambda!155067) (not b!4521126)))

(declare-fun m!5270219 () Bool)

(assert (=> b!4521126 m!5270219))

(declare-fun m!5270221 () Bool)

(assert (=> b!4521127 m!5270221))

(assert (=> b!4520060 d!1393184))

(declare-fun d!1393186 () Bool)

(assert (=> d!1393186 (= (invariantList!1017 (toList!4328 lt!1697379)) (noDuplicatedKeys!262 (toList!4328 lt!1697379)))))

(declare-fun bs!856738 () Bool)

(assert (= bs!856738 d!1393186))

(declare-fun m!5270223 () Bool)

(assert (=> bs!856738 m!5270223))

(assert (=> d!1392534 d!1393186))

(declare-fun d!1393188 () Bool)

(declare-fun res!1881696 () Bool)

(declare-fun e!2816820 () Bool)

(assert (=> d!1393188 (=> res!1881696 e!2816820)))

(assert (=> d!1393188 (= res!1881696 ((_ is Nil!50647) (toList!4327 lt!1697021)))))

(assert (=> d!1393188 (= (forall!10263 (toList!4327 lt!1697021) lambda!172439) e!2816820)))

(declare-fun b!4521128 () Bool)

(declare-fun e!2816821 () Bool)

(assert (=> b!4521128 (= e!2816820 e!2816821)))

(declare-fun res!1881697 () Bool)

(assert (=> b!4521128 (=> (not res!1881697) (not e!2816821))))

(assert (=> b!4521128 (= res!1881697 (dynLambda!21163 lambda!172439 (h!56500 (toList!4327 lt!1697021))))))

(declare-fun b!4521129 () Bool)

(assert (=> b!4521129 (= e!2816821 (forall!10263 (t!357733 (toList!4327 lt!1697021)) lambda!172439))))

(assert (= (and d!1393188 (not res!1881696)) b!4521128))

(assert (= (and b!4521128 res!1881697) b!4521129))

(declare-fun b_lambda!155069 () Bool)

(assert (=> (not b_lambda!155069) (not b!4521128)))

(declare-fun m!5270225 () Bool)

(assert (=> b!4521128 m!5270225))

(declare-fun m!5270227 () Bool)

(assert (=> b!4521129 m!5270227))

(assert (=> d!1392534 d!1393188))

(declare-fun d!1393190 () Bool)

(declare-fun lt!1698075 () Bool)

(assert (=> d!1393190 (= lt!1698075 (select (content!8357 (keys!17594 lt!1697020)) key!3287))))

(declare-fun e!2816822 () Bool)

(assert (=> d!1393190 (= lt!1698075 e!2816822)))

(declare-fun res!1881698 () Bool)

(assert (=> d!1393190 (=> (not res!1881698) (not e!2816822))))

(assert (=> d!1393190 (= res!1881698 ((_ is Cons!50649) (keys!17594 lt!1697020)))))

(assert (=> d!1393190 (= (contains!13375 (keys!17594 lt!1697020) key!3287) lt!1698075)))

(declare-fun b!4521130 () Bool)

(declare-fun e!2816823 () Bool)

(assert (=> b!4521130 (= e!2816822 e!2816823)))

(declare-fun res!1881699 () Bool)

(assert (=> b!4521130 (=> res!1881699 e!2816823)))

(assert (=> b!4521130 (= res!1881699 (= (h!56504 (keys!17594 lt!1697020)) key!3287))))

(declare-fun b!4521131 () Bool)

(assert (=> b!4521131 (= e!2816823 (contains!13375 (t!357735 (keys!17594 lt!1697020)) key!3287))))

(assert (= (and d!1393190 res!1881698) b!4521130))

(assert (= (and b!4521130 (not res!1881699)) b!4521131))

(assert (=> d!1393190 m!5267879))

(assert (=> d!1393190 m!5267885))

(declare-fun m!5270229 () Bool)

(assert (=> d!1393190 m!5270229))

(declare-fun m!5270231 () Bool)

(assert (=> b!4521131 m!5270231))

(assert (=> b!4520096 d!1393190))

(assert (=> b!4520096 d!1393012))

(declare-fun bs!856739 () Bool)

(declare-fun b!4521135 () Bool)

(assert (= bs!856739 (and b!4521135 b!4520536)))

(declare-fun lambda!172573 () Int)

(assert (=> bs!856739 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697584) (= lambda!172573 lambda!172503))))

(declare-fun bs!856740 () Bool)

(assert (= bs!856740 (and b!4521135 b!4521113)))

(assert (=> bs!856740 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172573 lambda!172569))))

(declare-fun bs!856741 () Bool)

(assert (= bs!856741 (and b!4521135 b!4520929)))

(assert (=> bs!856741 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697891) (= lambda!172573 lambda!172540))))

(declare-fun bs!856742 () Bool)

(assert (= bs!856742 (and b!4521135 b!4520152)))

(assert (=> bs!856742 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697423) (= lambda!172573 lambda!172451))))

(declare-fun bs!856743 () Bool)

(assert (= bs!856743 (and b!4521135 d!1393066)))

(assert (=> bs!856743 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697885) (= lambda!172573 lambda!172545))))

(declare-fun bs!856744 () Bool)

(assert (= bs!856744 (and b!4521135 d!1392554)))

(assert (=> bs!856744 (not (= lambda!172573 lambda!172445))))

(declare-fun bs!856745 () Bool)

(assert (= bs!856745 (and b!4521135 b!4521110)))

(assert (=> bs!856745 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1698069) (= lambda!172573 lambda!172571))))

(declare-fun bs!856746 () Bool)

(assert (= bs!856746 (and b!4521135 d!1393102)))

(assert (=> bs!856746 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697423) (= lambda!172573 lambda!172556))))

(declare-fun bs!856747 () Bool)

(assert (= bs!856747 (and b!4521135 b!4520061)))

(assert (=> bs!856747 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697024) (= lambda!172573 lambda!172430))))

(declare-fun bs!856748 () Bool)

(assert (= bs!856748 (and b!4521135 d!1392478)))

(assert (=> bs!856748 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697339) (= lambda!172573 lambda!172433))))

(declare-fun bs!856749 () Bool)

(assert (= bs!856749 (and b!4521135 b!4520058)))

(assert (=> bs!856749 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697345) (= lambda!172573 lambda!172432))))

(declare-fun bs!856750 () Bool)

(assert (= bs!856750 (and b!4521135 d!1392774)))

(assert (=> bs!856750 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697024) (= lambda!172573 lambda!172499))))

(assert (=> bs!856739 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172573 lambda!172502))))

(declare-fun bs!856751 () Bool)

(assert (= bs!856751 (and b!4521135 b!4520901)))

(assert (=> bs!856751 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697849) (= lambda!172573 lambda!172536))))

(declare-fun bs!856752 () Bool)

(assert (= bs!856752 (and b!4521135 b!4520932)))

(assert (=> bs!856752 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172573 lambda!172538))))

(declare-fun bs!856753 () Bool)

(assert (= bs!856753 (and b!4521135 b!4520943)))

(assert (=> bs!856753 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172573 lambda!172549))))

(declare-fun bs!856754 () Bool)

(assert (= bs!856754 (and b!4521135 d!1392776)))

(assert (=> bs!856754 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697578) (= lambda!172573 lambda!172504))))

(assert (=> bs!856741 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172573 lambda!172539))))

(declare-fun bs!856755 () Bool)

(assert (= bs!856755 (and b!4521135 d!1392574)))

(assert (=> bs!856755 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697417) (= lambda!172573 lambda!172452))))

(declare-fun bs!856756 () Bool)

(assert (= bs!856756 (and b!4521135 b!4520155)))

(assert (=> bs!856756 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697017) (= lambda!172573 lambda!172449))))

(declare-fun bs!856757 () Bool)

(assert (= bs!856757 (and b!4521135 b!4520539)))

(assert (=> bs!856757 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172573 lambda!172500))))

(declare-fun bs!856758 () Bool)

(assert (= bs!856758 (and b!4521135 d!1393170)))

(assert (=> bs!856758 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1698063) (= lambda!172573 lambda!172572))))

(declare-fun bs!856759 () Bool)

(assert (= bs!856759 (and b!4521135 d!1393050)))

(assert (=> bs!856759 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697843) (= lambda!172573 lambda!172537))))

(assert (=> bs!856745 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172573 lambda!172570))))

(declare-fun bs!856760 () Bool)

(assert (= bs!856760 (and b!4521135 b!4520904)))

(assert (=> bs!856760 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172573 lambda!172534))))

(assert (=> bs!856751 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172573 lambda!172535))))

(declare-fun bs!856761 () Bool)

(assert (= bs!856761 (and b!4521135 b!4520946)))

(assert (=> bs!856761 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172573 lambda!172548))))

(declare-fun bs!856762 () Bool)

(assert (= bs!856762 (and b!4521135 d!1393078)))

(assert (=> bs!856762 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697910) (= lambda!172573 lambda!172551))))

(assert (=> bs!856753 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697916) (= lambda!172573 lambda!172550))))

(assert (=> bs!856742 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697017) (= lambda!172573 lambda!172450))))

(declare-fun bs!856763 () Bool)

(assert (= bs!856763 (and b!4521135 d!1392762)))

(assert (=> bs!856763 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697017) (= lambda!172573 lambda!172497))))

(declare-fun bs!856764 () Bool)

(assert (= bs!856764 (and b!4521135 d!1393168)))

(assert (=> bs!856764 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697345) (= lambda!172573 lambda!172568))))

(assert (=> bs!856749 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697024) (= lambda!172573 lambda!172431))))

(assert (=> b!4521135 true))

(declare-fun bs!856765 () Bool)

(declare-fun b!4521132 () Bool)

(assert (= bs!856765 (and b!4521132 b!4520536)))

(declare-fun lambda!172574 () Int)

(assert (=> bs!856765 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697584) (= lambda!172574 lambda!172503))))

(declare-fun bs!856766 () Bool)

(assert (= bs!856766 (and b!4521132 b!4521113)))

(assert (=> bs!856766 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172574 lambda!172569))))

(declare-fun bs!856767 () Bool)

(assert (= bs!856767 (and b!4521132 b!4520929)))

(assert (=> bs!856767 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697891) (= lambda!172574 lambda!172540))))

(declare-fun bs!856768 () Bool)

(assert (= bs!856768 (and b!4521132 b!4520152)))

(assert (=> bs!856768 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697423) (= lambda!172574 lambda!172451))))

(declare-fun bs!856769 () Bool)

(assert (= bs!856769 (and b!4521132 d!1393066)))

(assert (=> bs!856769 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697885) (= lambda!172574 lambda!172545))))

(declare-fun bs!856770 () Bool)

(assert (= bs!856770 (and b!4521132 d!1392554)))

(assert (=> bs!856770 (not (= lambda!172574 lambda!172445))))

(declare-fun bs!856771 () Bool)

(assert (= bs!856771 (and b!4521132 b!4521110)))

(assert (=> bs!856771 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1698069) (= lambda!172574 lambda!172571))))

(declare-fun bs!856772 () Bool)

(assert (= bs!856772 (and b!4521132 b!4520061)))

(assert (=> bs!856772 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697024) (= lambda!172574 lambda!172430))))

(declare-fun bs!856773 () Bool)

(assert (= bs!856773 (and b!4521132 d!1392478)))

(assert (=> bs!856773 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697339) (= lambda!172574 lambda!172433))))

(declare-fun bs!856774 () Bool)

(assert (= bs!856774 (and b!4521132 b!4520058)))

(assert (=> bs!856774 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697345) (= lambda!172574 lambda!172432))))

(declare-fun bs!856775 () Bool)

(assert (= bs!856775 (and b!4521132 d!1392774)))

(assert (=> bs!856775 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697024) (= lambda!172574 lambda!172499))))

(assert (=> bs!856765 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172574 lambda!172502))))

(declare-fun bs!856776 () Bool)

(assert (= bs!856776 (and b!4521132 b!4520901)))

(assert (=> bs!856776 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697849) (= lambda!172574 lambda!172536))))

(declare-fun bs!856777 () Bool)

(assert (= bs!856777 (and b!4521132 b!4520932)))

(assert (=> bs!856777 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172574 lambda!172538))))

(declare-fun bs!856778 () Bool)

(assert (= bs!856778 (and b!4521132 b!4520943)))

(assert (=> bs!856778 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172574 lambda!172549))))

(declare-fun bs!856779 () Bool)

(assert (= bs!856779 (and b!4521132 d!1392776)))

(assert (=> bs!856779 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697578) (= lambda!172574 lambda!172504))))

(assert (=> bs!856767 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172574 lambda!172539))))

(declare-fun bs!856780 () Bool)

(assert (= bs!856780 (and b!4521132 d!1392574)))

(assert (=> bs!856780 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697417) (= lambda!172574 lambda!172452))))

(declare-fun bs!856781 () Bool)

(assert (= bs!856781 (and b!4521132 b!4520155)))

(assert (=> bs!856781 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697017) (= lambda!172574 lambda!172449))))

(declare-fun bs!856782 () Bool)

(assert (= bs!856782 (and b!4521132 b!4520539)))

(assert (=> bs!856782 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172574 lambda!172500))))

(declare-fun bs!856783 () Bool)

(assert (= bs!856783 (and b!4521132 d!1393170)))

(assert (=> bs!856783 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1698063) (= lambda!172574 lambda!172572))))

(declare-fun bs!856784 () Bool)

(assert (= bs!856784 (and b!4521132 d!1393050)))

(assert (=> bs!856784 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697843) (= lambda!172574 lambda!172537))))

(assert (=> bs!856771 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172574 lambda!172570))))

(declare-fun bs!856785 () Bool)

(assert (= bs!856785 (and b!4521132 b!4520904)))

(assert (=> bs!856785 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172574 lambda!172534))))

(assert (=> bs!856776 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172574 lambda!172535))))

(declare-fun bs!856786 () Bool)

(assert (= bs!856786 (and b!4521132 b!4520946)))

(assert (=> bs!856786 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172574 lambda!172548))))

(declare-fun bs!856787 () Bool)

(assert (= bs!856787 (and b!4521132 d!1393078)))

(assert (=> bs!856787 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697910) (= lambda!172574 lambda!172551))))

(assert (=> bs!856778 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697916) (= lambda!172574 lambda!172550))))

(assert (=> bs!856768 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697017) (= lambda!172574 lambda!172450))))

(declare-fun bs!856788 () Bool)

(assert (= bs!856788 (and b!4521132 d!1392762)))

(assert (=> bs!856788 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697017) (= lambda!172574 lambda!172497))))

(declare-fun bs!856789 () Bool)

(assert (= bs!856789 (and b!4521132 b!4521135)))

(assert (=> bs!856789 (= lambda!172574 lambda!172573)))

(declare-fun bs!856790 () Bool)

(assert (= bs!856790 (and b!4521132 d!1393102)))

(assert (=> bs!856790 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697423) (= lambda!172574 lambda!172556))))

(declare-fun bs!856791 () Bool)

(assert (= bs!856791 (and b!4521132 d!1393168)))

(assert (=> bs!856791 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697345) (= lambda!172574 lambda!172568))))

(assert (=> bs!856774 (= (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1697024) (= lambda!172574 lambda!172431))))

(assert (=> b!4521132 true))

(declare-fun lambda!172575 () Int)

(declare-fun lt!1698096 () ListMap!3589)

(assert (=> bs!856765 (= (= lt!1698096 lt!1697584) (= lambda!172575 lambda!172503))))

(assert (=> bs!856766 (= (= lt!1698096 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172575 lambda!172569))))

(assert (=> bs!856767 (= (= lt!1698096 lt!1697891) (= lambda!172575 lambda!172540))))

(assert (=> bs!856768 (= (= lt!1698096 lt!1697423) (= lambda!172575 lambda!172451))))

(assert (=> bs!856769 (= (= lt!1698096 lt!1697885) (= lambda!172575 lambda!172545))))

(assert (=> bs!856770 (not (= lambda!172575 lambda!172445))))

(assert (=> bs!856771 (= (= lt!1698096 lt!1698069) (= lambda!172575 lambda!172571))))

(assert (=> bs!856772 (= (= lt!1698096 lt!1697024) (= lambda!172575 lambda!172430))))

(assert (=> bs!856773 (= (= lt!1698096 lt!1697339) (= lambda!172575 lambda!172433))))

(assert (=> bs!856774 (= (= lt!1698096 lt!1697345) (= lambda!172575 lambda!172432))))

(assert (=> bs!856775 (= (= lt!1698096 lt!1697024) (= lambda!172575 lambda!172499))))

(assert (=> bs!856765 (= (= lt!1698096 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172575 lambda!172502))))

(assert (=> bs!856776 (= (= lt!1698096 lt!1697849) (= lambda!172575 lambda!172536))))

(assert (=> bs!856777 (= (= lt!1698096 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172575 lambda!172538))))

(assert (=> bs!856778 (= (= lt!1698096 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172575 lambda!172549))))

(assert (=> bs!856779 (= (= lt!1698096 lt!1697578) (= lambda!172575 lambda!172504))))

(assert (=> bs!856767 (= (= lt!1698096 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172575 lambda!172539))))

(assert (=> bs!856780 (= (= lt!1698096 lt!1697417) (= lambda!172575 lambda!172452))))

(assert (=> bs!856781 (= (= lt!1698096 lt!1697017) (= lambda!172575 lambda!172449))))

(assert (=> bs!856782 (= (= lt!1698096 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172575 lambda!172500))))

(assert (=> bs!856783 (= (= lt!1698096 lt!1698063) (= lambda!172575 lambda!172572))))

(assert (=> bs!856784 (= (= lt!1698096 lt!1697843) (= lambda!172575 lambda!172537))))

(assert (=> bs!856771 (= (= lt!1698096 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172575 lambda!172570))))

(assert (=> bs!856785 (= (= lt!1698096 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172575 lambda!172534))))

(assert (=> bs!856776 (= (= lt!1698096 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172575 lambda!172535))))

(assert (=> bs!856786 (= (= lt!1698096 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172575 lambda!172548))))

(assert (=> bs!856787 (= (= lt!1698096 lt!1697910) (= lambda!172575 lambda!172551))))

(assert (=> b!4521132 (= (= lt!1698096 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172575 lambda!172574))))

(assert (=> bs!856778 (= (= lt!1698096 lt!1697916) (= lambda!172575 lambda!172550))))

(assert (=> bs!856768 (= (= lt!1698096 lt!1697017) (= lambda!172575 lambda!172450))))

(assert (=> bs!856788 (= (= lt!1698096 lt!1697017) (= lambda!172575 lambda!172497))))

(assert (=> bs!856789 (= (= lt!1698096 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172575 lambda!172573))))

(assert (=> bs!856790 (= (= lt!1698096 lt!1697423) (= lambda!172575 lambda!172556))))

(assert (=> bs!856791 (= (= lt!1698096 lt!1697345) (= lambda!172575 lambda!172568))))

(assert (=> bs!856774 (= (= lt!1698096 lt!1697024) (= lambda!172575 lambda!172431))))

(assert (=> b!4521132 true))

(declare-fun bs!856792 () Bool)

(declare-fun d!1393192 () Bool)

(assert (= bs!856792 (and d!1393192 b!4520536)))

(declare-fun lambda!172576 () Int)

(declare-fun lt!1698090 () ListMap!3589)

(assert (=> bs!856792 (= (= lt!1698090 lt!1697584) (= lambda!172576 lambda!172503))))

(declare-fun bs!856793 () Bool)

(assert (= bs!856793 (and d!1393192 b!4521113)))

(assert (=> bs!856793 (= (= lt!1698090 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172576 lambda!172569))))

(declare-fun bs!856794 () Bool)

(assert (= bs!856794 (and d!1393192 b!4520929)))

(assert (=> bs!856794 (= (= lt!1698090 lt!1697891) (= lambda!172576 lambda!172540))))

(declare-fun bs!856795 () Bool)

(assert (= bs!856795 (and d!1393192 b!4520152)))

(assert (=> bs!856795 (= (= lt!1698090 lt!1697423) (= lambda!172576 lambda!172451))))

(declare-fun bs!856796 () Bool)

(assert (= bs!856796 (and d!1393192 d!1393066)))

(assert (=> bs!856796 (= (= lt!1698090 lt!1697885) (= lambda!172576 lambda!172545))))

(declare-fun bs!856797 () Bool)

(assert (= bs!856797 (and d!1393192 d!1392554)))

(assert (=> bs!856797 (not (= lambda!172576 lambda!172445))))

(declare-fun bs!856798 () Bool)

(assert (= bs!856798 (and d!1393192 b!4521110)))

(assert (=> bs!856798 (= (= lt!1698090 lt!1698069) (= lambda!172576 lambda!172571))))

(declare-fun bs!856799 () Bool)

(assert (= bs!856799 (and d!1393192 b!4520061)))

(assert (=> bs!856799 (= (= lt!1698090 lt!1697024) (= lambda!172576 lambda!172430))))

(declare-fun bs!856800 () Bool)

(assert (= bs!856800 (and d!1393192 d!1392478)))

(assert (=> bs!856800 (= (= lt!1698090 lt!1697339) (= lambda!172576 lambda!172433))))

(declare-fun bs!856801 () Bool)

(assert (= bs!856801 (and d!1393192 d!1392774)))

(assert (=> bs!856801 (= (= lt!1698090 lt!1697024) (= lambda!172576 lambda!172499))))

(assert (=> bs!856792 (= (= lt!1698090 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172576 lambda!172502))))

(declare-fun bs!856802 () Bool)

(assert (= bs!856802 (and d!1393192 b!4520901)))

(assert (=> bs!856802 (= (= lt!1698090 lt!1697849) (= lambda!172576 lambda!172536))))

(declare-fun bs!856803 () Bool)

(assert (= bs!856803 (and d!1393192 b!4520932)))

(assert (=> bs!856803 (= (= lt!1698090 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172576 lambda!172538))))

(declare-fun bs!856804 () Bool)

(assert (= bs!856804 (and d!1393192 b!4520943)))

(assert (=> bs!856804 (= (= lt!1698090 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172576 lambda!172549))))

(declare-fun bs!856805 () Bool)

(assert (= bs!856805 (and d!1393192 d!1392776)))

(assert (=> bs!856805 (= (= lt!1698090 lt!1697578) (= lambda!172576 lambda!172504))))

(assert (=> bs!856794 (= (= lt!1698090 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172576 lambda!172539))))

(declare-fun bs!856806 () Bool)

(assert (= bs!856806 (and d!1393192 d!1392574)))

(assert (=> bs!856806 (= (= lt!1698090 lt!1697417) (= lambda!172576 lambda!172452))))

(declare-fun bs!856807 () Bool)

(assert (= bs!856807 (and d!1393192 b!4520155)))

(assert (=> bs!856807 (= (= lt!1698090 lt!1697017) (= lambda!172576 lambda!172449))))

(declare-fun bs!856808 () Bool)

(assert (= bs!856808 (and d!1393192 b!4520539)))

(assert (=> bs!856808 (= (= lt!1698090 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172576 lambda!172500))))

(declare-fun bs!856809 () Bool)

(assert (= bs!856809 (and d!1393192 d!1393170)))

(assert (=> bs!856809 (= (= lt!1698090 lt!1698063) (= lambda!172576 lambda!172572))))

(declare-fun bs!856810 () Bool)

(assert (= bs!856810 (and d!1393192 d!1393050)))

(assert (=> bs!856810 (= (= lt!1698090 lt!1697843) (= lambda!172576 lambda!172537))))

(assert (=> bs!856798 (= (= lt!1698090 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172576 lambda!172570))))

(declare-fun bs!856811 () Bool)

(assert (= bs!856811 (and d!1393192 b!4520904)))

(assert (=> bs!856811 (= (= lt!1698090 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172576 lambda!172534))))

(assert (=> bs!856802 (= (= lt!1698090 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172576 lambda!172535))))

(declare-fun bs!856812 () Bool)

(assert (= bs!856812 (and d!1393192 b!4520946)))

(assert (=> bs!856812 (= (= lt!1698090 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172576 lambda!172548))))

(declare-fun bs!856813 () Bool)

(assert (= bs!856813 (and d!1393192 d!1393078)))

(assert (=> bs!856813 (= (= lt!1698090 lt!1697910) (= lambda!172576 lambda!172551))))

(declare-fun bs!856814 () Bool)

(assert (= bs!856814 (and d!1393192 b!4521132)))

(assert (=> bs!856814 (= (= lt!1698090 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172576 lambda!172574))))

(assert (=> bs!856804 (= (= lt!1698090 lt!1697916) (= lambda!172576 lambda!172550))))

(assert (=> bs!856795 (= (= lt!1698090 lt!1697017) (= lambda!172576 lambda!172450))))

(declare-fun bs!856815 () Bool)

(assert (= bs!856815 (and d!1393192 d!1392762)))

(assert (=> bs!856815 (= (= lt!1698090 lt!1697017) (= lambda!172576 lambda!172497))))

(declare-fun bs!856816 () Bool)

(assert (= bs!856816 (and d!1393192 b!4521135)))

(assert (=> bs!856816 (= (= lt!1698090 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172576 lambda!172573))))

(declare-fun bs!856817 () Bool)

(assert (= bs!856817 (and d!1393192 d!1393102)))

(assert (=> bs!856817 (= (= lt!1698090 lt!1697423) (= lambda!172576 lambda!172556))))

(declare-fun bs!856818 () Bool)

(assert (= bs!856818 (and d!1393192 d!1393168)))

(assert (=> bs!856818 (= (= lt!1698090 lt!1697345) (= lambda!172576 lambda!172568))))

(declare-fun bs!856819 () Bool)

(assert (= bs!856819 (and d!1393192 b!4520058)))

(assert (=> bs!856819 (= (= lt!1698090 lt!1697024) (= lambda!172576 lambda!172431))))

(assert (=> bs!856819 (= (= lt!1698090 lt!1697345) (= lambda!172576 lambda!172432))))

(assert (=> bs!856814 (= (= lt!1698090 lt!1698096) (= lambda!172576 lambda!172575))))

(assert (=> d!1393192 true))

(declare-fun e!2816826 () ListMap!3589)

(assert (=> b!4521132 (= e!2816826 lt!1698096)))

(declare-fun lt!1698086 () ListMap!3589)

(assert (=> b!4521132 (= lt!1698086 (+!1540 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (h!56499 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))))))

(assert (=> b!4521132 (= lt!1698096 (addToMapMapFromBucket!687 (t!357732 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (+!1540 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (h!56499 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023))))))))))

(declare-fun lt!1698093 () Unit!95040)

(declare-fun call!315033 () Unit!95040)

(assert (=> b!4521132 (= lt!1698093 call!315033)))

(assert (=> b!4521132 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) lambda!172574)))

(declare-fun lt!1698088 () Unit!95040)

(assert (=> b!4521132 (= lt!1698088 lt!1698093)))

(declare-fun call!315032 () Bool)

(assert (=> b!4521132 call!315032))

(declare-fun lt!1698081 () Unit!95040)

(declare-fun Unit!95287 () Unit!95040)

(assert (=> b!4521132 (= lt!1698081 Unit!95287)))

(declare-fun call!315031 () Bool)

(assert (=> b!4521132 call!315031))

(declare-fun lt!1698085 () Unit!95040)

(declare-fun Unit!95288 () Unit!95040)

(assert (=> b!4521132 (= lt!1698085 Unit!95288)))

(declare-fun lt!1698083 () Unit!95040)

(declare-fun Unit!95289 () Unit!95040)

(assert (=> b!4521132 (= lt!1698083 Unit!95289)))

(declare-fun lt!1698092 () Unit!95040)

(assert (=> b!4521132 (= lt!1698092 (forallContained!2517 (toList!4328 lt!1698086) lambda!172575 (h!56499 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))))))

(assert (=> b!4521132 (contains!13372 lt!1698086 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))))))

(declare-fun lt!1698078 () Unit!95040)

(declare-fun Unit!95290 () Unit!95040)

(assert (=> b!4521132 (= lt!1698078 Unit!95290)))

(assert (=> b!4521132 (contains!13372 lt!1698096 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))))))

(declare-fun lt!1698089 () Unit!95040)

(declare-fun Unit!95291 () Unit!95040)

(assert (=> b!4521132 (= lt!1698089 Unit!95291)))

(assert (=> b!4521132 (forall!10265 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lambda!172575)))

(declare-fun lt!1698082 () Unit!95040)

(declare-fun Unit!95292 () Unit!95040)

(assert (=> b!4521132 (= lt!1698082 Unit!95292)))

(assert (=> b!4521132 (forall!10265 (toList!4328 lt!1698086) lambda!172575)))

(declare-fun lt!1698079 () Unit!95040)

(declare-fun Unit!95293 () Unit!95040)

(assert (=> b!4521132 (= lt!1698079 Unit!95293)))

(declare-fun lt!1698087 () Unit!95040)

(declare-fun Unit!95294 () Unit!95040)

(assert (=> b!4521132 (= lt!1698087 Unit!95294)))

(declare-fun lt!1698076 () Unit!95040)

(assert (=> b!4521132 (= lt!1698076 (addForallContainsKeyThenBeforeAdding!338 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1698096 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))) (_2!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023))))))))))

(assert (=> b!4521132 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) lambda!172575)))

(declare-fun lt!1698084 () Unit!95040)

(assert (=> b!4521132 (= lt!1698084 lt!1698076)))

(assert (=> b!4521132 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) lambda!172575)))

(declare-fun lt!1698091 () Unit!95040)

(declare-fun Unit!95295 () Unit!95040)

(assert (=> b!4521132 (= lt!1698091 Unit!95295)))

(declare-fun res!1881701 () Bool)

(assert (=> b!4521132 (= res!1881701 (forall!10265 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lambda!172575))))

(declare-fun e!2816824 () Bool)

(assert (=> b!4521132 (=> (not res!1881701) (not e!2816824))))

(assert (=> b!4521132 e!2816824))

(declare-fun lt!1698077 () Unit!95040)

(declare-fun Unit!95296 () Unit!95040)

(assert (=> b!4521132 (= lt!1698077 Unit!95296)))

(declare-fun b!4521133 () Bool)

(assert (=> b!4521133 (= e!2816824 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) lambda!172575))))

(declare-fun bm!315026 () Bool)

(assert (=> bm!315026 (= call!315033 (lemmaContainsAllItsOwnKeys!338 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))))))

(declare-fun bm!315027 () Bool)

(declare-fun c!771639 () Bool)

(assert (=> bm!315027 (= call!315032 (forall!10265 (ite c!771639 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (toList!4328 lt!1698086)) (ite c!771639 lambda!172573 lambda!172575)))))

(declare-fun b!4521134 () Bool)

(declare-fun res!1881700 () Bool)

(declare-fun e!2816825 () Bool)

(assert (=> b!4521134 (=> (not res!1881700) (not e!2816825))))

(assert (=> b!4521134 (= res!1881700 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) lambda!172576))))

(assert (=> d!1393192 e!2816825))

(declare-fun res!1881702 () Bool)

(assert (=> d!1393192 (=> (not res!1881702) (not e!2816825))))

(assert (=> d!1393192 (= res!1881702 (forall!10265 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lambda!172576))))

(assert (=> d!1393192 (= lt!1698090 e!2816826)))

(assert (=> d!1393192 (= c!771639 ((_ is Nil!50646) (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023))))))))

(assert (=> d!1393192 (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))))

(assert (=> d!1393192 (= (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) lt!1698090)))

(declare-fun bm!315028 () Bool)

(assert (=> bm!315028 (= call!315031 (forall!10265 (ite c!771639 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (t!357732 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))) (ite c!771639 lambda!172573 lambda!172575)))))

(assert (=> b!4521135 (= e!2816826 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))))

(declare-fun lt!1698080 () Unit!95040)

(assert (=> b!4521135 (= lt!1698080 call!315033)))

(assert (=> b!4521135 call!315031))

(declare-fun lt!1698094 () Unit!95040)

(assert (=> b!4521135 (= lt!1698094 lt!1698080)))

(assert (=> b!4521135 call!315032))

(declare-fun lt!1698095 () Unit!95040)

(declare-fun Unit!95297 () Unit!95040)

(assert (=> b!4521135 (= lt!1698095 Unit!95297)))

(declare-fun b!4521136 () Bool)

(assert (=> b!4521136 (= e!2816825 (invariantList!1017 (toList!4328 lt!1698090)))))

(assert (= (and d!1393192 c!771639) b!4521135))

(assert (= (and d!1393192 (not c!771639)) b!4521132))

(assert (= (and b!4521132 res!1881701) b!4521133))

(assert (= (or b!4521135 b!4521132) bm!315028))

(assert (= (or b!4521135 b!4521132) bm!315027))

(assert (= (or b!4521135 b!4521132) bm!315026))

(assert (= (and d!1393192 res!1881702) b!4521134))

(assert (= (and b!4521134 res!1881700) b!4521136))

(declare-fun m!5270233 () Bool)

(assert (=> d!1393192 m!5270233))

(declare-fun m!5270235 () Bool)

(assert (=> d!1393192 m!5270235))

(declare-fun m!5270237 () Bool)

(assert (=> b!4521133 m!5270237))

(declare-fun m!5270239 () Bool)

(assert (=> bm!315027 m!5270239))

(assert (=> bm!315026 m!5267915))

(declare-fun m!5270241 () Bool)

(assert (=> bm!315026 m!5270241))

(declare-fun m!5270243 () Bool)

(assert (=> b!4521136 m!5270243))

(declare-fun m!5270245 () Bool)

(assert (=> b!4521134 m!5270245))

(declare-fun m!5270247 () Bool)

(assert (=> bm!315028 m!5270247))

(assert (=> b!4521132 m!5267915))

(declare-fun m!5270249 () Bool)

(assert (=> b!4521132 m!5270249))

(assert (=> b!4521132 m!5270237))

(declare-fun m!5270251 () Bool)

(assert (=> b!4521132 m!5270251))

(assert (=> b!4521132 m!5267915))

(declare-fun m!5270253 () Bool)

(assert (=> b!4521132 m!5270253))

(assert (=> b!4521132 m!5270237))

(declare-fun m!5270255 () Bool)

(assert (=> b!4521132 m!5270255))

(assert (=> b!4521132 m!5270249))

(declare-fun m!5270257 () Bool)

(assert (=> b!4521132 m!5270257))

(declare-fun m!5270259 () Bool)

(assert (=> b!4521132 m!5270259))

(declare-fun m!5270261 () Bool)

(assert (=> b!4521132 m!5270261))

(assert (=> b!4521132 m!5270255))

(declare-fun m!5270263 () Bool)

(assert (=> b!4521132 m!5270263))

(declare-fun m!5270265 () Bool)

(assert (=> b!4521132 m!5270265))

(assert (=> b!4519989 d!1393192))

(declare-fun bs!856820 () Bool)

(declare-fun d!1393194 () Bool)

(assert (= bs!856820 (and d!1393194 d!1392458)))

(declare-fun lambda!172577 () Int)

(assert (=> bs!856820 (= lambda!172577 lambda!172357)))

(declare-fun bs!856821 () Bool)

(assert (= bs!856821 (and d!1393194 d!1392900)))

(assert (=> bs!856821 (= lambda!172577 lambda!172510)))

(declare-fun bs!856822 () Bool)

(assert (= bs!856822 (and d!1393194 d!1392542)))

(assert (=> bs!856822 (= lambda!172577 lambda!172442)))

(declare-fun bs!856823 () Bool)

(assert (= bs!856823 (and d!1393194 d!1392534)))

(assert (=> bs!856823 (= lambda!172577 lambda!172439)))

(declare-fun bs!856824 () Bool)

(assert (= bs!856824 (and d!1393194 d!1392582)))

(assert (=> bs!856824 (= lambda!172577 lambda!172455)))

(declare-fun bs!856825 () Bool)

(assert (= bs!856825 (and d!1393194 d!1392526)))

(assert (=> bs!856825 (= lambda!172577 lambda!172437)))

(declare-fun bs!856826 () Bool)

(assert (= bs!856826 (and d!1393194 d!1392530)))

(assert (=> bs!856826 (= lambda!172577 lambda!172438)))

(declare-fun bs!856827 () Bool)

(assert (= bs!856827 (and d!1393194 d!1392416)))

(assert (=> bs!856827 (= lambda!172577 lambda!172348)))

(declare-fun bs!856828 () Bool)

(assert (= bs!856828 (and d!1393194 d!1392446)))

(assert (=> bs!856828 (not (= lambda!172577 lambda!172351))))

(declare-fun bs!856829 () Bool)

(assert (= bs!856829 (and d!1393194 d!1392560)))

(assert (=> bs!856829 (= lambda!172577 lambda!172448)))

(declare-fun bs!856830 () Bool)

(assert (= bs!856830 (and d!1393194 start!447492)))

(assert (=> bs!856830 (= lambda!172577 lambda!172325)))

(declare-fun bs!856831 () Bool)

(assert (= bs!856831 (and d!1393194 d!1392516)))

(assert (=> bs!856831 (= lambda!172577 lambda!172434)))

(declare-fun bs!856832 () Bool)

(assert (= bs!856832 (and d!1393194 d!1392462)))

(assert (=> bs!856832 (= lambda!172577 lambda!172358)))

(declare-fun bs!856833 () Bool)

(assert (= bs!856833 (and d!1393194 d!1392468)))

(assert (=> bs!856833 (= lambda!172577 lambda!172359)))

(declare-fun bs!856834 () Bool)

(assert (= bs!856834 (and d!1393194 d!1393068)))

(assert (=> bs!856834 (= lambda!172577 lambda!172547)))

(declare-fun bs!856835 () Bool)

(assert (= bs!856835 (and d!1393194 d!1392796)))

(assert (=> bs!856835 (= lambda!172577 lambda!172505)))

(declare-fun lt!1698133 () ListMap!3589)

(assert (=> d!1393194 (invariantList!1017 (toList!4328 lt!1698133))))

(declare-fun e!2816845 () ListMap!3589)

(assert (=> d!1393194 (= lt!1698133 e!2816845)))

(declare-fun c!771656 () Bool)

(assert (=> d!1393194 (= c!771656 ((_ is Cons!50647) (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))))

(assert (=> d!1393194 (forall!10263 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))) lambda!172577)))

(assert (=> d!1393194 (= (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) lt!1698133)))

(declare-fun b!4521175 () Bool)

(assert (=> b!4521175 (= e!2816845 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023)))))))))

(declare-fun b!4521176 () Bool)

(assert (=> b!4521176 (= e!2816845 (ListMap!3590 Nil!50646))))

(assert (= (and d!1393194 c!771656) b!4521175))

(assert (= (and d!1393194 (not c!771656)) b!4521176))

(declare-fun m!5270267 () Bool)

(assert (=> d!1393194 m!5270267))

(declare-fun m!5270269 () Bool)

(assert (=> d!1393194 m!5270269))

(declare-fun m!5270271 () Bool)

(assert (=> b!4521175 m!5270271))

(assert (=> b!4521175 m!5270271))

(declare-fun m!5270273 () Bool)

(assert (=> b!4521175 m!5270273))

(assert (=> b!4519989 d!1393194))

(declare-fun bs!856836 () Bool)

(declare-fun b!4521180 () Bool)

(assert (= bs!856836 (and b!4521180 b!4520536)))

(declare-fun lambda!172578 () Int)

(assert (=> bs!856836 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697584) (= lambda!172578 lambda!172503))))

(declare-fun bs!856837 () Bool)

(assert (= bs!856837 (and b!4521180 b!4521113)))

(assert (=> bs!856837 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172578 lambda!172569))))

(declare-fun bs!856838 () Bool)

(assert (= bs!856838 (and b!4521180 b!4520929)))

(assert (=> bs!856838 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697891) (= lambda!172578 lambda!172540))))

(declare-fun bs!856839 () Bool)

(assert (= bs!856839 (and b!4521180 d!1393066)))

(assert (=> bs!856839 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697885) (= lambda!172578 lambda!172545))))

(declare-fun bs!856840 () Bool)

(assert (= bs!856840 (and b!4521180 d!1392554)))

(assert (=> bs!856840 (not (= lambda!172578 lambda!172445))))

(declare-fun bs!856841 () Bool)

(assert (= bs!856841 (and b!4521180 b!4521110)))

(assert (=> bs!856841 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698069) (= lambda!172578 lambda!172571))))

(declare-fun bs!856842 () Bool)

(assert (= bs!856842 (and b!4521180 b!4520061)))

(assert (=> bs!856842 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697024) (= lambda!172578 lambda!172430))))

(declare-fun bs!856843 () Bool)

(assert (= bs!856843 (and b!4521180 d!1392478)))

(assert (=> bs!856843 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697339) (= lambda!172578 lambda!172433))))

(declare-fun bs!856844 () Bool)

(assert (= bs!856844 (and b!4521180 d!1392774)))

(assert (=> bs!856844 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697024) (= lambda!172578 lambda!172499))))

(assert (=> bs!856836 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172578 lambda!172502))))

(declare-fun bs!856845 () Bool)

(assert (= bs!856845 (and b!4521180 b!4520901)))

(assert (=> bs!856845 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697849) (= lambda!172578 lambda!172536))))

(declare-fun bs!856846 () Bool)

(assert (= bs!856846 (and b!4521180 b!4520932)))

(assert (=> bs!856846 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172578 lambda!172538))))

(declare-fun bs!856847 () Bool)

(assert (= bs!856847 (and b!4521180 b!4520943)))

(assert (=> bs!856847 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172578 lambda!172549))))

(declare-fun bs!856848 () Bool)

(assert (= bs!856848 (and b!4521180 d!1392776)))

(assert (=> bs!856848 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697578) (= lambda!172578 lambda!172504))))

(assert (=> bs!856838 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172578 lambda!172539))))

(declare-fun bs!856849 () Bool)

(assert (= bs!856849 (and b!4521180 d!1392574)))

(assert (=> bs!856849 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697417) (= lambda!172578 lambda!172452))))

(declare-fun bs!856850 () Bool)

(assert (= bs!856850 (and b!4521180 b!4520152)))

(assert (=> bs!856850 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697423) (= lambda!172578 lambda!172451))))

(declare-fun bs!856851 () Bool)

(assert (= bs!856851 (and b!4521180 d!1393192)))

(assert (=> bs!856851 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698090) (= lambda!172578 lambda!172576))))

(declare-fun bs!856852 () Bool)

(assert (= bs!856852 (and b!4521180 b!4520155)))

(assert (=> bs!856852 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697017) (= lambda!172578 lambda!172449))))

(declare-fun bs!856853 () Bool)

(assert (= bs!856853 (and b!4521180 b!4520539)))

(assert (=> bs!856853 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172578 lambda!172500))))

(declare-fun bs!856854 () Bool)

(assert (= bs!856854 (and b!4521180 d!1393170)))

(assert (=> bs!856854 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698063) (= lambda!172578 lambda!172572))))

(declare-fun bs!856855 () Bool)

(assert (= bs!856855 (and b!4521180 d!1393050)))

(assert (=> bs!856855 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697843) (= lambda!172578 lambda!172537))))

(assert (=> bs!856841 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172578 lambda!172570))))

(declare-fun bs!856856 () Bool)

(assert (= bs!856856 (and b!4521180 b!4520904)))

(assert (=> bs!856856 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172578 lambda!172534))))

(assert (=> bs!856845 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172578 lambda!172535))))

(declare-fun bs!856857 () Bool)

(assert (= bs!856857 (and b!4521180 b!4520946)))

(assert (=> bs!856857 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172578 lambda!172548))))

(declare-fun bs!856858 () Bool)

(assert (= bs!856858 (and b!4521180 d!1393078)))

(assert (=> bs!856858 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697910) (= lambda!172578 lambda!172551))))

(declare-fun bs!856859 () Bool)

(assert (= bs!856859 (and b!4521180 b!4521132)))

(assert (=> bs!856859 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172578 lambda!172574))))

(assert (=> bs!856847 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697916) (= lambda!172578 lambda!172550))))

(assert (=> bs!856850 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697017) (= lambda!172578 lambda!172450))))

(declare-fun bs!856860 () Bool)

(assert (= bs!856860 (and b!4521180 d!1392762)))

(assert (=> bs!856860 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697017) (= lambda!172578 lambda!172497))))

(declare-fun bs!856861 () Bool)

(assert (= bs!856861 (and b!4521180 b!4521135)))

(assert (=> bs!856861 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172578 lambda!172573))))

(declare-fun bs!856862 () Bool)

(assert (= bs!856862 (and b!4521180 d!1393102)))

(assert (=> bs!856862 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697423) (= lambda!172578 lambda!172556))))

(declare-fun bs!856863 () Bool)

(assert (= bs!856863 (and b!4521180 d!1393168)))

(assert (=> bs!856863 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697345) (= lambda!172578 lambda!172568))))

(declare-fun bs!856864 () Bool)

(assert (= bs!856864 (and b!4521180 b!4520058)))

(assert (=> bs!856864 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697024) (= lambda!172578 lambda!172431))))

(assert (=> bs!856864 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697345) (= lambda!172578 lambda!172432))))

(assert (=> bs!856859 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698096) (= lambda!172578 lambda!172575))))

(assert (=> b!4521180 true))

(declare-fun bs!856865 () Bool)

(declare-fun b!4521177 () Bool)

(assert (= bs!856865 (and b!4521177 b!4520536)))

(declare-fun lambda!172579 () Int)

(assert (=> bs!856865 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697584) (= lambda!172579 lambda!172503))))

(declare-fun bs!856866 () Bool)

(assert (= bs!856866 (and b!4521177 b!4521113)))

(assert (=> bs!856866 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172579 lambda!172569))))

(declare-fun bs!856867 () Bool)

(assert (= bs!856867 (and b!4521177 b!4520929)))

(assert (=> bs!856867 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697891) (= lambda!172579 lambda!172540))))

(declare-fun bs!856868 () Bool)

(assert (= bs!856868 (and b!4521177 d!1393066)))

(assert (=> bs!856868 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697885) (= lambda!172579 lambda!172545))))

(declare-fun bs!856869 () Bool)

(assert (= bs!856869 (and b!4521177 d!1392554)))

(assert (=> bs!856869 (not (= lambda!172579 lambda!172445))))

(declare-fun bs!856870 () Bool)

(assert (= bs!856870 (and b!4521177 b!4521110)))

(assert (=> bs!856870 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698069) (= lambda!172579 lambda!172571))))

(declare-fun bs!856871 () Bool)

(assert (= bs!856871 (and b!4521177 b!4520061)))

(assert (=> bs!856871 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697024) (= lambda!172579 lambda!172430))))

(declare-fun bs!856872 () Bool)

(assert (= bs!856872 (and b!4521177 d!1392478)))

(assert (=> bs!856872 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697339) (= lambda!172579 lambda!172433))))

(declare-fun bs!856873 () Bool)

(assert (= bs!856873 (and b!4521177 d!1392774)))

(assert (=> bs!856873 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697024) (= lambda!172579 lambda!172499))))

(assert (=> bs!856865 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172579 lambda!172502))))

(declare-fun bs!856874 () Bool)

(assert (= bs!856874 (and b!4521177 b!4520901)))

(assert (=> bs!856874 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697849) (= lambda!172579 lambda!172536))))

(declare-fun bs!856875 () Bool)

(assert (= bs!856875 (and b!4521177 b!4520932)))

(assert (=> bs!856875 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172579 lambda!172538))))

(declare-fun bs!856876 () Bool)

(assert (= bs!856876 (and b!4521177 b!4520943)))

(assert (=> bs!856876 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172579 lambda!172549))))

(declare-fun bs!856877 () Bool)

(assert (= bs!856877 (and b!4521177 d!1392776)))

(assert (=> bs!856877 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697578) (= lambda!172579 lambda!172504))))

(assert (=> bs!856867 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172579 lambda!172539))))

(declare-fun bs!856878 () Bool)

(assert (= bs!856878 (and b!4521177 d!1392574)))

(assert (=> bs!856878 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697417) (= lambda!172579 lambda!172452))))

(declare-fun bs!856879 () Bool)

(assert (= bs!856879 (and b!4521177 b!4520152)))

(assert (=> bs!856879 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697423) (= lambda!172579 lambda!172451))))

(declare-fun bs!856880 () Bool)

(assert (= bs!856880 (and b!4521177 d!1393192)))

(assert (=> bs!856880 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698090) (= lambda!172579 lambda!172576))))

(declare-fun bs!856881 () Bool)

(assert (= bs!856881 (and b!4521177 b!4520155)))

(assert (=> bs!856881 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697017) (= lambda!172579 lambda!172449))))

(declare-fun bs!856882 () Bool)

(assert (= bs!856882 (and b!4521177 b!4520539)))

(assert (=> bs!856882 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172579 lambda!172500))))

(declare-fun bs!856883 () Bool)

(assert (= bs!856883 (and b!4521177 d!1393170)))

(assert (=> bs!856883 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698063) (= lambda!172579 lambda!172572))))

(declare-fun bs!856884 () Bool)

(assert (= bs!856884 (and b!4521177 b!4521180)))

(assert (=> bs!856884 (= lambda!172579 lambda!172578)))

(declare-fun bs!856885 () Bool)

(assert (= bs!856885 (and b!4521177 d!1393050)))

(assert (=> bs!856885 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697843) (= lambda!172579 lambda!172537))))

(assert (=> bs!856870 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172579 lambda!172570))))

(declare-fun bs!856886 () Bool)

(assert (= bs!856886 (and b!4521177 b!4520904)))

(assert (=> bs!856886 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172579 lambda!172534))))

(assert (=> bs!856874 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172579 lambda!172535))))

(declare-fun bs!856887 () Bool)

(assert (= bs!856887 (and b!4521177 b!4520946)))

(assert (=> bs!856887 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172579 lambda!172548))))

(declare-fun bs!856888 () Bool)

(assert (= bs!856888 (and b!4521177 d!1393078)))

(assert (=> bs!856888 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697910) (= lambda!172579 lambda!172551))))

(declare-fun bs!856889 () Bool)

(assert (= bs!856889 (and b!4521177 b!4521132)))

(assert (=> bs!856889 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172579 lambda!172574))))

(assert (=> bs!856876 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697916) (= lambda!172579 lambda!172550))))

(assert (=> bs!856879 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697017) (= lambda!172579 lambda!172450))))

(declare-fun bs!856890 () Bool)

(assert (= bs!856890 (and b!4521177 d!1392762)))

(assert (=> bs!856890 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697017) (= lambda!172579 lambda!172497))))

(declare-fun bs!856891 () Bool)

(assert (= bs!856891 (and b!4521177 b!4521135)))

(assert (=> bs!856891 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172579 lambda!172573))))

(declare-fun bs!856892 () Bool)

(assert (= bs!856892 (and b!4521177 d!1393102)))

(assert (=> bs!856892 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697423) (= lambda!172579 lambda!172556))))

(declare-fun bs!856893 () Bool)

(assert (= bs!856893 (and b!4521177 d!1393168)))

(assert (=> bs!856893 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697345) (= lambda!172579 lambda!172568))))

(declare-fun bs!856894 () Bool)

(assert (= bs!856894 (and b!4521177 b!4520058)))

(assert (=> bs!856894 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697024) (= lambda!172579 lambda!172431))))

(assert (=> bs!856894 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1697345) (= lambda!172579 lambda!172432))))

(assert (=> bs!856889 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698096) (= lambda!172579 lambda!172575))))

(assert (=> b!4521177 true))

(declare-fun lambda!172580 () Int)

(declare-fun lt!1698154 () ListMap!3589)

(assert (=> bs!856865 (= (= lt!1698154 lt!1697584) (= lambda!172580 lambda!172503))))

(assert (=> bs!856866 (= (= lt!1698154 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172580 lambda!172569))))

(assert (=> bs!856867 (= (= lt!1698154 lt!1697891) (= lambda!172580 lambda!172540))))

(assert (=> bs!856868 (= (= lt!1698154 lt!1697885) (= lambda!172580 lambda!172545))))

(assert (=> bs!856869 (not (= lambda!172580 lambda!172445))))

(assert (=> bs!856870 (= (= lt!1698154 lt!1698069) (= lambda!172580 lambda!172571))))

(assert (=> bs!856871 (= (= lt!1698154 lt!1697024) (= lambda!172580 lambda!172430))))

(assert (=> bs!856872 (= (= lt!1698154 lt!1697339) (= lambda!172580 lambda!172433))))

(assert (=> b!4521177 (= (= lt!1698154 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172580 lambda!172579))))

(assert (=> bs!856873 (= (= lt!1698154 lt!1697024) (= lambda!172580 lambda!172499))))

(assert (=> bs!856865 (= (= lt!1698154 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172580 lambda!172502))))

(assert (=> bs!856874 (= (= lt!1698154 lt!1697849) (= lambda!172580 lambda!172536))))

(assert (=> bs!856875 (= (= lt!1698154 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172580 lambda!172538))))

(assert (=> bs!856876 (= (= lt!1698154 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172580 lambda!172549))))

(assert (=> bs!856877 (= (= lt!1698154 lt!1697578) (= lambda!172580 lambda!172504))))

(assert (=> bs!856867 (= (= lt!1698154 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172580 lambda!172539))))

(assert (=> bs!856878 (= (= lt!1698154 lt!1697417) (= lambda!172580 lambda!172452))))

(assert (=> bs!856879 (= (= lt!1698154 lt!1697423) (= lambda!172580 lambda!172451))))

(assert (=> bs!856880 (= (= lt!1698154 lt!1698090) (= lambda!172580 lambda!172576))))

(assert (=> bs!856881 (= (= lt!1698154 lt!1697017) (= lambda!172580 lambda!172449))))

(assert (=> bs!856882 (= (= lt!1698154 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172580 lambda!172500))))

(assert (=> bs!856883 (= (= lt!1698154 lt!1698063) (= lambda!172580 lambda!172572))))

(assert (=> bs!856884 (= (= lt!1698154 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172580 lambda!172578))))

(assert (=> bs!856885 (= (= lt!1698154 lt!1697843) (= lambda!172580 lambda!172537))))

(assert (=> bs!856870 (= (= lt!1698154 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172580 lambda!172570))))

(assert (=> bs!856886 (= (= lt!1698154 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172580 lambda!172534))))

(assert (=> bs!856874 (= (= lt!1698154 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172580 lambda!172535))))

(assert (=> bs!856887 (= (= lt!1698154 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172580 lambda!172548))))

(assert (=> bs!856888 (= (= lt!1698154 lt!1697910) (= lambda!172580 lambda!172551))))

(assert (=> bs!856889 (= (= lt!1698154 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172580 lambda!172574))))

(assert (=> bs!856876 (= (= lt!1698154 lt!1697916) (= lambda!172580 lambda!172550))))

(assert (=> bs!856879 (= (= lt!1698154 lt!1697017) (= lambda!172580 lambda!172450))))

(assert (=> bs!856890 (= (= lt!1698154 lt!1697017) (= lambda!172580 lambda!172497))))

(assert (=> bs!856891 (= (= lt!1698154 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172580 lambda!172573))))

(assert (=> bs!856892 (= (= lt!1698154 lt!1697423) (= lambda!172580 lambda!172556))))

(assert (=> bs!856893 (= (= lt!1698154 lt!1697345) (= lambda!172580 lambda!172568))))

(assert (=> bs!856894 (= (= lt!1698154 lt!1697024) (= lambda!172580 lambda!172431))))

(assert (=> bs!856894 (= (= lt!1698154 lt!1697345) (= lambda!172580 lambda!172432))))

(assert (=> bs!856889 (= (= lt!1698154 lt!1698096) (= lambda!172580 lambda!172575))))

(assert (=> b!4521177 true))

(declare-fun bs!856895 () Bool)

(declare-fun d!1393196 () Bool)

(assert (= bs!856895 (and d!1393196 b!4521113)))

(declare-fun lt!1698148 () ListMap!3589)

(declare-fun lambda!172581 () Int)

(assert (=> bs!856895 (= (= lt!1698148 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172581 lambda!172569))))

(declare-fun bs!856896 () Bool)

(assert (= bs!856896 (and d!1393196 b!4520929)))

(assert (=> bs!856896 (= (= lt!1698148 lt!1697891) (= lambda!172581 lambda!172540))))

(declare-fun bs!856897 () Bool)

(assert (= bs!856897 (and d!1393196 d!1393066)))

(assert (=> bs!856897 (= (= lt!1698148 lt!1697885) (= lambda!172581 lambda!172545))))

(declare-fun bs!856898 () Bool)

(assert (= bs!856898 (and d!1393196 d!1392554)))

(assert (=> bs!856898 (not (= lambda!172581 lambda!172445))))

(declare-fun bs!856899 () Bool)

(assert (= bs!856899 (and d!1393196 b!4521110)))

(assert (=> bs!856899 (= (= lt!1698148 lt!1698069) (= lambda!172581 lambda!172571))))

(declare-fun bs!856900 () Bool)

(assert (= bs!856900 (and d!1393196 b!4520061)))

(assert (=> bs!856900 (= (= lt!1698148 lt!1697024) (= lambda!172581 lambda!172430))))

(declare-fun bs!856901 () Bool)

(assert (= bs!856901 (and d!1393196 d!1392478)))

(assert (=> bs!856901 (= (= lt!1698148 lt!1697339) (= lambda!172581 lambda!172433))))

(declare-fun bs!856902 () Bool)

(assert (= bs!856902 (and d!1393196 b!4521177)))

(assert (=> bs!856902 (= (= lt!1698148 lt!1698154) (= lambda!172581 lambda!172580))))

(declare-fun bs!856903 () Bool)

(assert (= bs!856903 (and d!1393196 b!4520536)))

(assert (=> bs!856903 (= (= lt!1698148 lt!1697584) (= lambda!172581 lambda!172503))))

(assert (=> bs!856902 (= (= lt!1698148 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172581 lambda!172579))))

(declare-fun bs!856904 () Bool)

(assert (= bs!856904 (and d!1393196 d!1392774)))

(assert (=> bs!856904 (= (= lt!1698148 lt!1697024) (= lambda!172581 lambda!172499))))

(assert (=> bs!856903 (= (= lt!1698148 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172581 lambda!172502))))

(declare-fun bs!856905 () Bool)

(assert (= bs!856905 (and d!1393196 b!4520901)))

(assert (=> bs!856905 (= (= lt!1698148 lt!1697849) (= lambda!172581 lambda!172536))))

(declare-fun bs!856906 () Bool)

(assert (= bs!856906 (and d!1393196 b!4520932)))

(assert (=> bs!856906 (= (= lt!1698148 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172581 lambda!172538))))

(declare-fun bs!856907 () Bool)

(assert (= bs!856907 (and d!1393196 b!4520943)))

(assert (=> bs!856907 (= (= lt!1698148 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172581 lambda!172549))))

(declare-fun bs!856908 () Bool)

(assert (= bs!856908 (and d!1393196 d!1392776)))

(assert (=> bs!856908 (= (= lt!1698148 lt!1697578) (= lambda!172581 lambda!172504))))

(assert (=> bs!856896 (= (= lt!1698148 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172581 lambda!172539))))

(declare-fun bs!856909 () Bool)

(assert (= bs!856909 (and d!1393196 d!1392574)))

(assert (=> bs!856909 (= (= lt!1698148 lt!1697417) (= lambda!172581 lambda!172452))))

(declare-fun bs!856910 () Bool)

(assert (= bs!856910 (and d!1393196 b!4520152)))

(assert (=> bs!856910 (= (= lt!1698148 lt!1697423) (= lambda!172581 lambda!172451))))

(declare-fun bs!856911 () Bool)

(assert (= bs!856911 (and d!1393196 d!1393192)))

(assert (=> bs!856911 (= (= lt!1698148 lt!1698090) (= lambda!172581 lambda!172576))))

(declare-fun bs!856912 () Bool)

(assert (= bs!856912 (and d!1393196 b!4520155)))

(assert (=> bs!856912 (= (= lt!1698148 lt!1697017) (= lambda!172581 lambda!172449))))

(declare-fun bs!856913 () Bool)

(assert (= bs!856913 (and d!1393196 b!4520539)))

(assert (=> bs!856913 (= (= lt!1698148 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172581 lambda!172500))))

(declare-fun bs!856914 () Bool)

(assert (= bs!856914 (and d!1393196 d!1393170)))

(assert (=> bs!856914 (= (= lt!1698148 lt!1698063) (= lambda!172581 lambda!172572))))

(declare-fun bs!856915 () Bool)

(assert (= bs!856915 (and d!1393196 b!4521180)))

(assert (=> bs!856915 (= (= lt!1698148 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172581 lambda!172578))))

(declare-fun bs!856916 () Bool)

(assert (= bs!856916 (and d!1393196 d!1393050)))

(assert (=> bs!856916 (= (= lt!1698148 lt!1697843) (= lambda!172581 lambda!172537))))

(assert (=> bs!856899 (= (= lt!1698148 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172581 lambda!172570))))

(declare-fun bs!856917 () Bool)

(assert (= bs!856917 (and d!1393196 b!4520904)))

(assert (=> bs!856917 (= (= lt!1698148 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172581 lambda!172534))))

(assert (=> bs!856905 (= (= lt!1698148 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172581 lambda!172535))))

(declare-fun bs!856918 () Bool)

(assert (= bs!856918 (and d!1393196 b!4520946)))

(assert (=> bs!856918 (= (= lt!1698148 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172581 lambda!172548))))

(declare-fun bs!856919 () Bool)

(assert (= bs!856919 (and d!1393196 d!1393078)))

(assert (=> bs!856919 (= (= lt!1698148 lt!1697910) (= lambda!172581 lambda!172551))))

(declare-fun bs!856920 () Bool)

(assert (= bs!856920 (and d!1393196 b!4521132)))

(assert (=> bs!856920 (= (= lt!1698148 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172581 lambda!172574))))

(assert (=> bs!856907 (= (= lt!1698148 lt!1697916) (= lambda!172581 lambda!172550))))

(assert (=> bs!856910 (= (= lt!1698148 lt!1697017) (= lambda!172581 lambda!172450))))

(declare-fun bs!856921 () Bool)

(assert (= bs!856921 (and d!1393196 d!1392762)))

(assert (=> bs!856921 (= (= lt!1698148 lt!1697017) (= lambda!172581 lambda!172497))))

(declare-fun bs!856922 () Bool)

(assert (= bs!856922 (and d!1393196 b!4521135)))

(assert (=> bs!856922 (= (= lt!1698148 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172581 lambda!172573))))

(declare-fun bs!856923 () Bool)

(assert (= bs!856923 (and d!1393196 d!1393102)))

(assert (=> bs!856923 (= (= lt!1698148 lt!1697423) (= lambda!172581 lambda!172556))))

(declare-fun bs!856924 () Bool)

(assert (= bs!856924 (and d!1393196 d!1393168)))

(assert (=> bs!856924 (= (= lt!1698148 lt!1697345) (= lambda!172581 lambda!172568))))

(declare-fun bs!856925 () Bool)

(assert (= bs!856925 (and d!1393196 b!4520058)))

(assert (=> bs!856925 (= (= lt!1698148 lt!1697024) (= lambda!172581 lambda!172431))))

(assert (=> bs!856925 (= (= lt!1698148 lt!1697345) (= lambda!172581 lambda!172432))))

(assert (=> bs!856920 (= (= lt!1698148 lt!1698096) (= lambda!172581 lambda!172575))))

(assert (=> d!1393196 true))

(declare-fun e!2816848 () ListMap!3589)

(assert (=> b!4521177 (= e!2816848 lt!1698154)))

(declare-fun lt!1698144 () ListMap!3589)

(assert (=> b!4521177 (= lt!1698144 (+!1540 (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697021))))))))

(assert (=> b!4521177 (= lt!1698154 (addToMapMapFromBucket!687 (t!357732 (_2!28832 (h!56500 (toList!4327 lt!1697021)))) (+!1540 (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697021)))))))))

(declare-fun lt!1698151 () Unit!95040)

(declare-fun call!315048 () Unit!95040)

(assert (=> b!4521177 (= lt!1698151 call!315048)))

(assert (=> b!4521177 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) lambda!172579)))

(declare-fun lt!1698146 () Unit!95040)

(assert (=> b!4521177 (= lt!1698146 lt!1698151)))

(declare-fun call!315047 () Bool)

(assert (=> b!4521177 call!315047))

(declare-fun lt!1698139 () Unit!95040)

(declare-fun Unit!95312 () Unit!95040)

(assert (=> b!4521177 (= lt!1698139 Unit!95312)))

(declare-fun call!315046 () Bool)

(assert (=> b!4521177 call!315046))

(declare-fun lt!1698143 () Unit!95040)

(declare-fun Unit!95313 () Unit!95040)

(assert (=> b!4521177 (= lt!1698143 Unit!95313)))

(declare-fun lt!1698141 () Unit!95040)

(declare-fun Unit!95314 () Unit!95040)

(assert (=> b!4521177 (= lt!1698141 Unit!95314)))

(declare-fun lt!1698150 () Unit!95040)

(assert (=> b!4521177 (= lt!1698150 (forallContained!2517 (toList!4328 lt!1698144) lambda!172580 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697021))))))))

(assert (=> b!4521177 (contains!13372 lt!1698144 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697021))))))))

(declare-fun lt!1698136 () Unit!95040)

(declare-fun Unit!95315 () Unit!95040)

(assert (=> b!4521177 (= lt!1698136 Unit!95315)))

(assert (=> b!4521177 (contains!13372 lt!1698154 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697021))))))))

(declare-fun lt!1698147 () Unit!95040)

(declare-fun Unit!95316 () Unit!95040)

(assert (=> b!4521177 (= lt!1698147 Unit!95316)))

(assert (=> b!4521177 (forall!10265 (_2!28832 (h!56500 (toList!4327 lt!1697021))) lambda!172580)))

(declare-fun lt!1698140 () Unit!95040)

(declare-fun Unit!95317 () Unit!95040)

(assert (=> b!4521177 (= lt!1698140 Unit!95317)))

(assert (=> b!4521177 (forall!10265 (toList!4328 lt!1698144) lambda!172580)))

(declare-fun lt!1698137 () Unit!95040)

(declare-fun Unit!95318 () Unit!95040)

(assert (=> b!4521177 (= lt!1698137 Unit!95318)))

(declare-fun lt!1698145 () Unit!95040)

(declare-fun Unit!95319 () Unit!95040)

(assert (=> b!4521177 (= lt!1698145 Unit!95319)))

(declare-fun lt!1698134 () Unit!95040)

(assert (=> b!4521177 (= lt!1698134 (addForallContainsKeyThenBeforeAdding!338 (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698154 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697021))))) (_2!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697021)))))))))

(assert (=> b!4521177 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) lambda!172580)))

(declare-fun lt!1698142 () Unit!95040)

(assert (=> b!4521177 (= lt!1698142 lt!1698134)))

(assert (=> b!4521177 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) lambda!172580)))

(declare-fun lt!1698149 () Unit!95040)

(declare-fun Unit!95320 () Unit!95040)

(assert (=> b!4521177 (= lt!1698149 Unit!95320)))

(declare-fun res!1881710 () Bool)

(assert (=> b!4521177 (= res!1881710 (forall!10265 (_2!28832 (h!56500 (toList!4327 lt!1697021))) lambda!172580))))

(declare-fun e!2816846 () Bool)

(assert (=> b!4521177 (=> (not res!1881710) (not e!2816846))))

(assert (=> b!4521177 e!2816846))

(declare-fun lt!1698135 () Unit!95040)

(declare-fun Unit!95321 () Unit!95040)

(assert (=> b!4521177 (= lt!1698135 Unit!95321)))

(declare-fun b!4521178 () Bool)

(assert (=> b!4521178 (= e!2816846 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) lambda!172580))))

(declare-fun bm!315041 () Bool)

(assert (=> bm!315041 (= call!315048 (lemmaContainsAllItsOwnKeys!338 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))))))

(declare-fun bm!315042 () Bool)

(declare-fun c!771657 () Bool)

(assert (=> bm!315042 (= call!315047 (forall!10265 (ite c!771657 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (toList!4328 lt!1698144)) (ite c!771657 lambda!172578 lambda!172580)))))

(declare-fun b!4521179 () Bool)

(declare-fun res!1881709 () Bool)

(declare-fun e!2816847 () Bool)

(assert (=> b!4521179 (=> (not res!1881709) (not e!2816847))))

(assert (=> b!4521179 (= res!1881709 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) lambda!172581))))

(assert (=> d!1393196 e!2816847))

(declare-fun res!1881711 () Bool)

(assert (=> d!1393196 (=> (not res!1881711) (not e!2816847))))

(assert (=> d!1393196 (= res!1881711 (forall!10265 (_2!28832 (h!56500 (toList!4327 lt!1697021))) lambda!172581))))

(assert (=> d!1393196 (= lt!1698148 e!2816848)))

(assert (=> d!1393196 (= c!771657 ((_ is Nil!50646) (_2!28832 (h!56500 (toList!4327 lt!1697021)))))))

(assert (=> d!1393196 (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lt!1697021))))))

(assert (=> d!1393196 (= (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 lt!1697021))) (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) lt!1698148)))

(declare-fun bm!315043 () Bool)

(assert (=> bm!315043 (= call!315046 (forall!10265 (ite c!771657 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (t!357732 (_2!28832 (h!56500 (toList!4327 lt!1697021))))) (ite c!771657 lambda!172578 lambda!172580)))))

(assert (=> b!4521180 (= e!2816848 (extractMap!1216 (t!357733 (toList!4327 lt!1697021))))))

(declare-fun lt!1698138 () Unit!95040)

(assert (=> b!4521180 (= lt!1698138 call!315048)))

(assert (=> b!4521180 call!315046))

(declare-fun lt!1698152 () Unit!95040)

(assert (=> b!4521180 (= lt!1698152 lt!1698138)))

(assert (=> b!4521180 call!315047))

(declare-fun lt!1698153 () Unit!95040)

(declare-fun Unit!95322 () Unit!95040)

(assert (=> b!4521180 (= lt!1698153 Unit!95322)))

(declare-fun b!4521181 () Bool)

(assert (=> b!4521181 (= e!2816847 (invariantList!1017 (toList!4328 lt!1698148)))))

(assert (= (and d!1393196 c!771657) b!4521180))

(assert (= (and d!1393196 (not c!771657)) b!4521177))

(assert (= (and b!4521177 res!1881710) b!4521178))

(assert (= (or b!4521180 b!4521177) bm!315043))

(assert (= (or b!4521180 b!4521177) bm!315042))

(assert (= (or b!4521180 b!4521177) bm!315041))

(assert (= (and d!1393196 res!1881711) b!4521179))

(assert (= (and b!4521179 res!1881709) b!4521181))

(declare-fun m!5270319 () Bool)

(assert (=> d!1393196 m!5270319))

(declare-fun m!5270321 () Bool)

(assert (=> d!1393196 m!5270321))

(declare-fun m!5270323 () Bool)

(assert (=> b!4521178 m!5270323))

(declare-fun m!5270325 () Bool)

(assert (=> bm!315042 m!5270325))

(assert (=> bm!315041 m!5268193))

(declare-fun m!5270327 () Bool)

(assert (=> bm!315041 m!5270327))

(declare-fun m!5270329 () Bool)

(assert (=> b!4521181 m!5270329))

(declare-fun m!5270331 () Bool)

(assert (=> b!4521179 m!5270331))

(declare-fun m!5270333 () Bool)

(assert (=> bm!315043 m!5270333))

(assert (=> b!4521177 m!5268193))

(declare-fun m!5270335 () Bool)

(assert (=> b!4521177 m!5270335))

(assert (=> b!4521177 m!5270323))

(declare-fun m!5270337 () Bool)

(assert (=> b!4521177 m!5270337))

(assert (=> b!4521177 m!5268193))

(declare-fun m!5270339 () Bool)

(assert (=> b!4521177 m!5270339))

(assert (=> b!4521177 m!5270323))

(declare-fun m!5270341 () Bool)

(assert (=> b!4521177 m!5270341))

(assert (=> b!4521177 m!5270335))

(declare-fun m!5270343 () Bool)

(assert (=> b!4521177 m!5270343))

(declare-fun m!5270345 () Bool)

(assert (=> b!4521177 m!5270345))

(declare-fun m!5270347 () Bool)

(assert (=> b!4521177 m!5270347))

(assert (=> b!4521177 m!5270341))

(declare-fun m!5270349 () Bool)

(assert (=> b!4521177 m!5270349))

(declare-fun m!5270351 () Bool)

(assert (=> b!4521177 m!5270351))

(assert (=> b!4520098 d!1393196))

(declare-fun bs!856926 () Bool)

(declare-fun d!1393200 () Bool)

(assert (= bs!856926 (and d!1393200 d!1392458)))

(declare-fun lambda!172582 () Int)

(assert (=> bs!856926 (= lambda!172582 lambda!172357)))

(declare-fun bs!856927 () Bool)

(assert (= bs!856927 (and d!1393200 d!1392900)))

(assert (=> bs!856927 (= lambda!172582 lambda!172510)))

(declare-fun bs!856928 () Bool)

(assert (= bs!856928 (and d!1393200 d!1392542)))

(assert (=> bs!856928 (= lambda!172582 lambda!172442)))

(declare-fun bs!856929 () Bool)

(assert (= bs!856929 (and d!1393200 d!1392534)))

(assert (=> bs!856929 (= lambda!172582 lambda!172439)))

(declare-fun bs!856930 () Bool)

(assert (= bs!856930 (and d!1393200 d!1392582)))

(assert (=> bs!856930 (= lambda!172582 lambda!172455)))

(declare-fun bs!856931 () Bool)

(assert (= bs!856931 (and d!1393200 d!1392526)))

(assert (=> bs!856931 (= lambda!172582 lambda!172437)))

(declare-fun bs!856932 () Bool)

(assert (= bs!856932 (and d!1393200 d!1393194)))

(assert (=> bs!856932 (= lambda!172582 lambda!172577)))

(declare-fun bs!856933 () Bool)

(assert (= bs!856933 (and d!1393200 d!1392530)))

(assert (=> bs!856933 (= lambda!172582 lambda!172438)))

(declare-fun bs!856934 () Bool)

(assert (= bs!856934 (and d!1393200 d!1392416)))

(assert (=> bs!856934 (= lambda!172582 lambda!172348)))

(declare-fun bs!856935 () Bool)

(assert (= bs!856935 (and d!1393200 d!1392446)))

(assert (=> bs!856935 (not (= lambda!172582 lambda!172351))))

(declare-fun bs!856936 () Bool)

(assert (= bs!856936 (and d!1393200 d!1392560)))

(assert (=> bs!856936 (= lambda!172582 lambda!172448)))

(declare-fun bs!856937 () Bool)

(assert (= bs!856937 (and d!1393200 start!447492)))

(assert (=> bs!856937 (= lambda!172582 lambda!172325)))

(declare-fun bs!856938 () Bool)

(assert (= bs!856938 (and d!1393200 d!1392516)))

(assert (=> bs!856938 (= lambda!172582 lambda!172434)))

(declare-fun bs!856939 () Bool)

(assert (= bs!856939 (and d!1393200 d!1392462)))

(assert (=> bs!856939 (= lambda!172582 lambda!172358)))

(declare-fun bs!856940 () Bool)

(assert (= bs!856940 (and d!1393200 d!1392468)))

(assert (=> bs!856940 (= lambda!172582 lambda!172359)))

(declare-fun bs!856941 () Bool)

(assert (= bs!856941 (and d!1393200 d!1393068)))

(assert (=> bs!856941 (= lambda!172582 lambda!172547)))

(declare-fun bs!856942 () Bool)

(assert (= bs!856942 (and d!1393200 d!1392796)))

(assert (=> bs!856942 (= lambda!172582 lambda!172505)))

(declare-fun lt!1698173 () ListMap!3589)

(assert (=> d!1393200 (invariantList!1017 (toList!4328 lt!1698173))))

(declare-fun e!2816858 () ListMap!3589)

(assert (=> d!1393200 (= lt!1698173 e!2816858)))

(declare-fun c!771666 () Bool)

(assert (=> d!1393200 (= c!771666 ((_ is Cons!50647) (t!357733 (toList!4327 lt!1697021))))))

(assert (=> d!1393200 (forall!10263 (t!357733 (toList!4327 lt!1697021)) lambda!172582)))

(assert (=> d!1393200 (= (extractMap!1216 (t!357733 (toList!4327 lt!1697021))) lt!1698173)))

(declare-fun b!4521201 () Bool)

(assert (=> b!4521201 (= e!2816858 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (t!357733 (toList!4327 lt!1697021)))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lt!1697021))))))))

(declare-fun b!4521202 () Bool)

(assert (=> b!4521202 (= e!2816858 (ListMap!3590 Nil!50646))))

(assert (= (and d!1393200 c!771666) b!4521201))

(assert (= (and d!1393200 (not c!771666)) b!4521202))

(declare-fun m!5270353 () Bool)

(assert (=> d!1393200 m!5270353))

(declare-fun m!5270355 () Bool)

(assert (=> d!1393200 m!5270355))

(declare-fun m!5270357 () Bool)

(assert (=> b!4521201 m!5270357))

(assert (=> b!4521201 m!5270357))

(declare-fun m!5270359 () Bool)

(assert (=> b!4521201 m!5270359))

(assert (=> b!4520098 d!1393200))

(declare-fun d!1393202 () Bool)

(assert (=> d!1393202 (= (tail!7736 (toList!4327 lm!1477)) (t!357733 (toList!4327 lm!1477)))))

(assert (=> d!1392524 d!1393202))

(declare-fun d!1393204 () Bool)

(declare-fun e!2816860 () Bool)

(assert (=> d!1393204 e!2816860))

(declare-fun res!1881715 () Bool)

(assert (=> d!1393204 (=> res!1881715 e!2816860)))

(declare-fun lt!1698174 () Bool)

(assert (=> d!1393204 (= res!1881715 (not lt!1698174))))

(declare-fun lt!1698177 () Bool)

(assert (=> d!1393204 (= lt!1698174 lt!1698177)))

(declare-fun lt!1698176 () Unit!95040)

(declare-fun e!2816859 () Unit!95040)

(assert (=> d!1393204 (= lt!1698176 e!2816859)))

(declare-fun c!771667 () Bool)

(assert (=> d!1393204 (= c!771667 lt!1698177)))

(assert (=> d!1393204 (= lt!1698177 (containsKey!1784 (toList!4327 lt!1697432) (_1!28832 lt!1697006)))))

(assert (=> d!1393204 (= (contains!13371 lt!1697432 (_1!28832 lt!1697006)) lt!1698174)))

(declare-fun b!4521203 () Bool)

(declare-fun lt!1698175 () Unit!95040)

(assert (=> b!4521203 (= e!2816859 lt!1698175)))

(assert (=> b!4521203 (= lt!1698175 (lemmaContainsKeyImpliesGetValueByKeyDefined!997 (toList!4327 lt!1697432) (_1!28832 lt!1697006)))))

(assert (=> b!4521203 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697432) (_1!28832 lt!1697006)))))

(declare-fun b!4521204 () Bool)

(declare-fun Unit!95327 () Unit!95040)

(assert (=> b!4521204 (= e!2816859 Unit!95327)))

(declare-fun b!4521205 () Bool)

(assert (=> b!4521205 (= e!2816860 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697432) (_1!28832 lt!1697006))))))

(assert (= (and d!1393204 c!771667) b!4521203))

(assert (= (and d!1393204 (not c!771667)) b!4521204))

(assert (= (and d!1393204 (not res!1881715)) b!4521205))

(declare-fun m!5270361 () Bool)

(assert (=> d!1393204 m!5270361))

(declare-fun m!5270363 () Bool)

(assert (=> b!4521203 m!5270363))

(assert (=> b!4521203 m!5268325))

(assert (=> b!4521203 m!5268325))

(declare-fun m!5270365 () Bool)

(assert (=> b!4521203 m!5270365))

(assert (=> b!4521205 m!5268325))

(assert (=> b!4521205 m!5268325))

(assert (=> b!4521205 m!5270365))

(assert (=> d!1392584 d!1393204))

(declare-fun b!4521207 () Bool)

(declare-fun e!2816861 () Option!11113)

(declare-fun e!2816862 () Option!11113)

(assert (=> b!4521207 (= e!2816861 e!2816862)))

(declare-fun c!771669 () Bool)

(assert (=> b!4521207 (= c!771669 (and ((_ is Cons!50647) lt!1697434) (not (= (_1!28832 (h!56500 lt!1697434)) (_1!28832 lt!1697006)))))))

(declare-fun b!4521208 () Bool)

(assert (=> b!4521208 (= e!2816862 (getValueByKey!1093 (t!357733 lt!1697434) (_1!28832 lt!1697006)))))

(declare-fun b!4521209 () Bool)

(assert (=> b!4521209 (= e!2816862 None!11112)))

(declare-fun b!4521206 () Bool)

(assert (=> b!4521206 (= e!2816861 (Some!11112 (_2!28832 (h!56500 lt!1697434))))))

(declare-fun d!1393206 () Bool)

(declare-fun c!771668 () Bool)

(assert (=> d!1393206 (= c!771668 (and ((_ is Cons!50647) lt!1697434) (= (_1!28832 (h!56500 lt!1697434)) (_1!28832 lt!1697006))))))

(assert (=> d!1393206 (= (getValueByKey!1093 lt!1697434 (_1!28832 lt!1697006)) e!2816861)))

(assert (= (and d!1393206 c!771668) b!4521206))

(assert (= (and d!1393206 (not c!771668)) b!4521207))

(assert (= (and b!4521207 c!771669) b!4521208))

(assert (= (and b!4521207 (not c!771669)) b!4521209))

(declare-fun m!5270367 () Bool)

(assert (=> b!4521208 m!5270367))

(assert (=> d!1392584 d!1393206))

(declare-fun d!1393208 () Bool)

(assert (=> d!1393208 (= (getValueByKey!1093 lt!1697434 (_1!28832 lt!1697006)) (Some!11112 (_2!28832 lt!1697006)))))

(declare-fun lt!1698178 () Unit!95040)

(assert (=> d!1393208 (= lt!1698178 (choose!29531 lt!1697434 (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))

(declare-fun e!2816863 () Bool)

(assert (=> d!1393208 e!2816863))

(declare-fun res!1881716 () Bool)

(assert (=> d!1393208 (=> (not res!1881716) (not e!2816863))))

(assert (=> d!1393208 (= res!1881716 (isStrictlySorted!431 lt!1697434))))

(assert (=> d!1393208 (= (lemmaContainsTupThenGetReturnValue!678 lt!1697434 (_1!28832 lt!1697006) (_2!28832 lt!1697006)) lt!1698178)))

(declare-fun b!4521210 () Bool)

(declare-fun res!1881717 () Bool)

(assert (=> b!4521210 (=> (not res!1881717) (not e!2816863))))

(assert (=> b!4521210 (= res!1881717 (containsKey!1784 lt!1697434 (_1!28832 lt!1697006)))))

(declare-fun b!4521211 () Bool)

(assert (=> b!4521211 (= e!2816863 (contains!13373 lt!1697434 (tuple2!51077 (_1!28832 lt!1697006) (_2!28832 lt!1697006))))))

(assert (= (and d!1393208 res!1881716) b!4521210))

(assert (= (and b!4521210 res!1881717) b!4521211))

(assert (=> d!1393208 m!5268319))

(declare-fun m!5270369 () Bool)

(assert (=> d!1393208 m!5270369))

(declare-fun m!5270371 () Bool)

(assert (=> d!1393208 m!5270371))

(declare-fun m!5270373 () Bool)

(assert (=> b!4521210 m!5270373))

(declare-fun m!5270375 () Bool)

(assert (=> b!4521211 m!5270375))

(assert (=> d!1392584 d!1393208))

(declare-fun b!4521212 () Bool)

(declare-fun res!1881719 () Bool)

(declare-fun e!2816867 () Bool)

(assert (=> b!4521212 (=> (not res!1881719) (not e!2816867))))

(declare-fun lt!1698179 () List!50771)

(assert (=> b!4521212 (= res!1881719 (containsKey!1784 lt!1698179 (_1!28832 lt!1697006)))))

(declare-fun b!4521213 () Bool)

(declare-fun e!2816864 () List!50771)

(declare-fun call!315056 () List!50771)

(assert (=> b!4521213 (= e!2816864 call!315056)))

(declare-fun b!4521214 () Bool)

(declare-fun e!2816868 () List!50771)

(assert (=> b!4521214 (= e!2816868 (insertStrictlySorted!408 (t!357733 (toList!4327 lm!1477)) (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))

(declare-fun b!4521215 () Bool)

(declare-fun e!2816865 () List!50771)

(declare-fun call!315057 () List!50771)

(assert (=> b!4521215 (= e!2816865 call!315057)))

(declare-fun d!1393210 () Bool)

(assert (=> d!1393210 e!2816867))

(declare-fun res!1881718 () Bool)

(assert (=> d!1393210 (=> (not res!1881718) (not e!2816867))))

(assert (=> d!1393210 (= res!1881718 (isStrictlySorted!431 lt!1698179))))

(assert (=> d!1393210 (= lt!1698179 e!2816865)))

(declare-fun c!771670 () Bool)

(assert (=> d!1393210 (= c!771670 (and ((_ is Cons!50647) (toList!4327 lm!1477)) (bvslt (_1!28832 (h!56500 (toList!4327 lm!1477))) (_1!28832 lt!1697006))))))

(assert (=> d!1393210 (isStrictlySorted!431 (toList!4327 lm!1477))))

(assert (=> d!1393210 (= (insertStrictlySorted!408 (toList!4327 lm!1477) (_1!28832 lt!1697006) (_2!28832 lt!1697006)) lt!1698179)))

(declare-fun b!4521216 () Bool)

(declare-fun c!771671 () Bool)

(declare-fun c!771672 () Bool)

(assert (=> b!4521216 (= e!2816868 (ite c!771671 (t!357733 (toList!4327 lm!1477)) (ite c!771672 (Cons!50647 (h!56500 (toList!4327 lm!1477)) (t!357733 (toList!4327 lm!1477))) Nil!50647)))))

(declare-fun b!4521217 () Bool)

(assert (=> b!4521217 (= c!771672 (and ((_ is Cons!50647) (toList!4327 lm!1477)) (bvsgt (_1!28832 (h!56500 (toList!4327 lm!1477))) (_1!28832 lt!1697006))))))

(declare-fun e!2816866 () List!50771)

(assert (=> b!4521217 (= e!2816864 e!2816866)))

(declare-fun bm!315050 () Bool)

(assert (=> bm!315050 (= call!315056 call!315057)))

(declare-fun bm!315051 () Bool)

(declare-fun call!315055 () List!50771)

(assert (=> bm!315051 (= call!315055 call!315056)))

(declare-fun b!4521218 () Bool)

(assert (=> b!4521218 (= e!2816865 e!2816864)))

(assert (=> b!4521218 (= c!771671 (and ((_ is Cons!50647) (toList!4327 lm!1477)) (= (_1!28832 (h!56500 (toList!4327 lm!1477))) (_1!28832 lt!1697006))))))

(declare-fun b!4521219 () Bool)

(assert (=> b!4521219 (= e!2816866 call!315055)))

(declare-fun b!4521220 () Bool)

(assert (=> b!4521220 (= e!2816867 (contains!13373 lt!1698179 (tuple2!51077 (_1!28832 lt!1697006) (_2!28832 lt!1697006))))))

(declare-fun bm!315052 () Bool)

(assert (=> bm!315052 (= call!315057 ($colon$colon!936 e!2816868 (ite c!771670 (h!56500 (toList!4327 lm!1477)) (tuple2!51077 (_1!28832 lt!1697006) (_2!28832 lt!1697006)))))))

(declare-fun c!771673 () Bool)

(assert (=> bm!315052 (= c!771673 c!771670)))

(declare-fun b!4521221 () Bool)

(assert (=> b!4521221 (= e!2816866 call!315055)))

(assert (= (and d!1393210 c!771670) b!4521215))

(assert (= (and d!1393210 (not c!771670)) b!4521218))

(assert (= (and b!4521218 c!771671) b!4521213))

(assert (= (and b!4521218 (not c!771671)) b!4521217))

(assert (= (and b!4521217 c!771672) b!4521219))

(assert (= (and b!4521217 (not c!771672)) b!4521221))

(assert (= (or b!4521219 b!4521221) bm!315051))

(assert (= (or b!4521213 bm!315051) bm!315050))

(assert (= (or b!4521215 bm!315050) bm!315052))

(assert (= (and bm!315052 c!771673) b!4521214))

(assert (= (and bm!315052 (not c!771673)) b!4521216))

(assert (= (and d!1393210 res!1881718) b!4521212))

(assert (= (and b!4521212 res!1881719) b!4521220))

(declare-fun m!5270377 () Bool)

(assert (=> b!4521220 m!5270377))

(declare-fun m!5270379 () Bool)

(assert (=> bm!315052 m!5270379))

(declare-fun m!5270381 () Bool)

(assert (=> d!1393210 m!5270381))

(assert (=> d!1393210 m!5268211))

(declare-fun m!5270383 () Bool)

(assert (=> b!4521214 m!5270383))

(declare-fun m!5270385 () Bool)

(assert (=> b!4521212 m!5270385))

(assert (=> d!1392584 d!1393210))

(assert (=> b!4519903 d!1392602))

(assert (=> b!4519903 d!1392606))

(assert (=> b!4520108 d!1392550))

(declare-fun d!1393212 () Bool)

(declare-fun e!2816874 () Bool)

(assert (=> d!1393212 e!2816874))

(declare-fun res!1881720 () Bool)

(assert (=> d!1393212 (=> res!1881720 e!2816874)))

(declare-fun lt!1698184 () Bool)

(assert (=> d!1393212 (= res!1881720 (not lt!1698184))))

(declare-fun lt!1698187 () Bool)

(assert (=> d!1393212 (= lt!1698184 lt!1698187)))

(declare-fun lt!1698186 () Unit!95040)

(declare-fun e!2816873 () Unit!95040)

(assert (=> d!1393212 (= lt!1698186 e!2816873)))

(declare-fun c!771678 () Bool)

(assert (=> d!1393212 (= c!771678 lt!1698187)))

(assert (=> d!1393212 (= lt!1698187 (containsKey!1784 (toList!4327 lm!1477) (hash!2807 hashF!1107 key!3287)))))

(assert (=> d!1393212 (= (contains!13371 lm!1477 (hash!2807 hashF!1107 key!3287)) lt!1698184)))

(declare-fun b!4521230 () Bool)

(declare-fun lt!1698185 () Unit!95040)

(assert (=> b!4521230 (= e!2816873 lt!1698185)))

(assert (=> b!4521230 (= lt!1698185 (lemmaContainsKeyImpliesGetValueByKeyDefined!997 (toList!4327 lm!1477) (hash!2807 hashF!1107 key!3287)))))

(assert (=> b!4521230 (isDefined!8400 (getValueByKey!1093 (toList!4327 lm!1477) (hash!2807 hashF!1107 key!3287)))))

(declare-fun b!4521231 () Bool)

(declare-fun Unit!95328 () Unit!95040)

(assert (=> b!4521231 (= e!2816873 Unit!95328)))

(declare-fun b!4521232 () Bool)

(assert (=> b!4521232 (= e!2816874 (isDefined!8400 (getValueByKey!1093 (toList!4327 lm!1477) (hash!2807 hashF!1107 key!3287))))))

(assert (= (and d!1393212 c!771678) b!4521230))

(assert (= (and d!1393212 (not c!771678)) b!4521231))

(assert (= (and d!1393212 (not res!1881720)) b!4521232))

(assert (=> d!1393212 m!5267497))

(declare-fun m!5270387 () Bool)

(assert (=> d!1393212 m!5270387))

(assert (=> b!4521230 m!5267497))

(declare-fun m!5270389 () Bool)

(assert (=> b!4521230 m!5270389))

(assert (=> b!4521230 m!5267497))

(declare-fun m!5270391 () Bool)

(assert (=> b!4521230 m!5270391))

(assert (=> b!4521230 m!5270391))

(declare-fun m!5270393 () Bool)

(assert (=> b!4521230 m!5270393))

(assert (=> b!4521232 m!5267497))

(assert (=> b!4521232 m!5270391))

(assert (=> b!4521232 m!5270391))

(assert (=> b!4521232 m!5270393))

(assert (=> d!1392542 d!1393212))

(assert (=> d!1392542 d!1392580))

(declare-fun d!1393214 () Bool)

(assert (=> d!1393214 (contains!13371 lm!1477 (hash!2807 hashF!1107 key!3287))))

(assert (=> d!1393214 true))

(declare-fun _$27!1236 () Unit!95040)

(assert (=> d!1393214 (= (choose!29522 lm!1477 key!3287 hashF!1107) _$27!1236)))

(declare-fun bs!856943 () Bool)

(assert (= bs!856943 d!1393214))

(assert (=> bs!856943 m!5267497))

(assert (=> bs!856943 m!5267497))

(assert (=> bs!856943 m!5268215))

(assert (=> d!1392542 d!1393214))

(declare-fun d!1393216 () Bool)

(declare-fun res!1881721 () Bool)

(declare-fun e!2816877 () Bool)

(assert (=> d!1393216 (=> res!1881721 e!2816877)))

(assert (=> d!1393216 (= res!1881721 ((_ is Nil!50647) (toList!4327 lm!1477)))))

(assert (=> d!1393216 (= (forall!10263 (toList!4327 lm!1477) lambda!172442) e!2816877)))

(declare-fun b!4521237 () Bool)

(declare-fun e!2816878 () Bool)

(assert (=> b!4521237 (= e!2816877 e!2816878)))

(declare-fun res!1881722 () Bool)

(assert (=> b!4521237 (=> (not res!1881722) (not e!2816878))))

(assert (=> b!4521237 (= res!1881722 (dynLambda!21163 lambda!172442 (h!56500 (toList!4327 lm!1477))))))

(declare-fun b!4521238 () Bool)

(assert (=> b!4521238 (= e!2816878 (forall!10263 (t!357733 (toList!4327 lm!1477)) lambda!172442))))

(assert (= (and d!1393216 (not res!1881721)) b!4521237))

(assert (= (and b!4521237 res!1881722) b!4521238))

(declare-fun b_lambda!155071 () Bool)

(assert (=> (not b_lambda!155071) (not b!4521237)))

(declare-fun m!5270395 () Bool)

(assert (=> b!4521237 m!5270395))

(declare-fun m!5270397 () Bool)

(assert (=> b!4521238 m!5270397))

(assert (=> d!1392542 d!1393216))

(declare-fun d!1393218 () Bool)

(declare-fun e!2816882 () Bool)

(assert (=> d!1393218 e!2816882))

(declare-fun res!1881729 () Bool)

(assert (=> d!1393218 (=> res!1881729 e!2816882)))

(declare-fun lt!1698198 () Bool)

(assert (=> d!1393218 (= res!1881729 (not lt!1698198))))

(declare-fun lt!1698201 () Bool)

(assert (=> d!1393218 (= lt!1698198 lt!1698201)))

(declare-fun lt!1698200 () Unit!95040)

(declare-fun e!2816881 () Unit!95040)

(assert (=> d!1393218 (= lt!1698200 e!2816881)))

(declare-fun c!771681 () Bool)

(assert (=> d!1393218 (= c!771681 lt!1698201)))

(assert (=> d!1393218 (= lt!1698201 (containsKey!1784 (toList!4327 lt!1697164) (_1!28832 lt!1697023)))))

(assert (=> d!1393218 (= (contains!13371 lt!1697164 (_1!28832 lt!1697023)) lt!1698198)))

(declare-fun b!4521243 () Bool)

(declare-fun lt!1698199 () Unit!95040)

(assert (=> b!4521243 (= e!2816881 lt!1698199)))

(assert (=> b!4521243 (= lt!1698199 (lemmaContainsKeyImpliesGetValueByKeyDefined!997 (toList!4327 lt!1697164) (_1!28832 lt!1697023)))))

(assert (=> b!4521243 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697164) (_1!28832 lt!1697023)))))

(declare-fun b!4521244 () Bool)

(declare-fun Unit!95329 () Unit!95040)

(assert (=> b!4521244 (= e!2816881 Unit!95329)))

(declare-fun b!4521245 () Bool)

(assert (=> b!4521245 (= e!2816882 (isDefined!8400 (getValueByKey!1093 (toList!4327 lt!1697164) (_1!28832 lt!1697023))))))

(assert (= (and d!1393218 c!771681) b!4521243))

(assert (= (and d!1393218 (not c!771681)) b!4521244))

(assert (= (and d!1393218 (not res!1881729)) b!4521245))

(declare-fun m!5270399 () Bool)

(assert (=> d!1393218 m!5270399))

(declare-fun m!5270401 () Bool)

(assert (=> b!4521243 m!5270401))

(assert (=> b!4521243 m!5267859))

(assert (=> b!4521243 m!5267859))

(declare-fun m!5270403 () Bool)

(assert (=> b!4521243 m!5270403))

(assert (=> b!4521245 m!5267859))

(assert (=> b!4521245 m!5267859))

(assert (=> b!4521245 m!5270403))

(assert (=> d!1392450 d!1393218))

(declare-fun b!4521249 () Bool)

(declare-fun e!2816883 () Option!11113)

(declare-fun e!2816884 () Option!11113)

(assert (=> b!4521249 (= e!2816883 e!2816884)))

(declare-fun c!771683 () Bool)

(assert (=> b!4521249 (= c!771683 (and ((_ is Cons!50647) lt!1697166) (not (= (_1!28832 (h!56500 lt!1697166)) (_1!28832 lt!1697023)))))))

(declare-fun b!4521250 () Bool)

(assert (=> b!4521250 (= e!2816884 (getValueByKey!1093 (t!357733 lt!1697166) (_1!28832 lt!1697023)))))

(declare-fun b!4521251 () Bool)

(assert (=> b!4521251 (= e!2816884 None!11112)))

(declare-fun b!4521248 () Bool)

(assert (=> b!4521248 (= e!2816883 (Some!11112 (_2!28832 (h!56500 lt!1697166))))))

(declare-fun d!1393220 () Bool)

(declare-fun c!771682 () Bool)

(assert (=> d!1393220 (= c!771682 (and ((_ is Cons!50647) lt!1697166) (= (_1!28832 (h!56500 lt!1697166)) (_1!28832 lt!1697023))))))

(assert (=> d!1393220 (= (getValueByKey!1093 lt!1697166 (_1!28832 lt!1697023)) e!2816883)))

(assert (= (and d!1393220 c!771682) b!4521248))

(assert (= (and d!1393220 (not c!771682)) b!4521249))

(assert (= (and b!4521249 c!771683) b!4521250))

(assert (= (and b!4521249 (not c!771683)) b!4521251))

(declare-fun m!5270405 () Bool)

(assert (=> b!4521250 m!5270405))

(assert (=> d!1392450 d!1393220))

(declare-fun d!1393222 () Bool)

(assert (=> d!1393222 (= (getValueByKey!1093 lt!1697166 (_1!28832 lt!1697023)) (Some!11112 (_2!28832 lt!1697023)))))

(declare-fun lt!1698202 () Unit!95040)

(assert (=> d!1393222 (= lt!1698202 (choose!29531 lt!1697166 (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))

(declare-fun e!2816885 () Bool)

(assert (=> d!1393222 e!2816885))

(declare-fun res!1881730 () Bool)

(assert (=> d!1393222 (=> (not res!1881730) (not e!2816885))))

(assert (=> d!1393222 (= res!1881730 (isStrictlySorted!431 lt!1697166))))

(assert (=> d!1393222 (= (lemmaContainsTupThenGetReturnValue!678 lt!1697166 (_1!28832 lt!1697023) (_2!28832 lt!1697023)) lt!1698202)))

(declare-fun b!4521252 () Bool)

(declare-fun res!1881731 () Bool)

(assert (=> b!4521252 (=> (not res!1881731) (not e!2816885))))

(assert (=> b!4521252 (= res!1881731 (containsKey!1784 lt!1697166 (_1!28832 lt!1697023)))))

(declare-fun b!4521253 () Bool)

(assert (=> b!4521253 (= e!2816885 (contains!13373 lt!1697166 (tuple2!51077 (_1!28832 lt!1697023) (_2!28832 lt!1697023))))))

(assert (= (and d!1393222 res!1881730) b!4521252))

(assert (= (and b!4521252 res!1881731) b!4521253))

(assert (=> d!1393222 m!5267853))

(declare-fun m!5270407 () Bool)

(assert (=> d!1393222 m!5270407))

(declare-fun m!5270409 () Bool)

(assert (=> d!1393222 m!5270409))

(declare-fun m!5270411 () Bool)

(assert (=> b!4521252 m!5270411))

(declare-fun m!5270413 () Bool)

(assert (=> b!4521253 m!5270413))

(assert (=> d!1392450 d!1393222))

(declare-fun b!4521254 () Bool)

(declare-fun res!1881733 () Bool)

(declare-fun e!2816889 () Bool)

(assert (=> b!4521254 (=> (not res!1881733) (not e!2816889))))

(declare-fun lt!1698203 () List!50771)

(assert (=> b!4521254 (= res!1881733 (containsKey!1784 lt!1698203 (_1!28832 lt!1697023)))))

(declare-fun b!4521255 () Bool)

(declare-fun e!2816886 () List!50771)

(declare-fun call!315059 () List!50771)

(assert (=> b!4521255 (= e!2816886 call!315059)))

(declare-fun b!4521256 () Bool)

(declare-fun e!2816890 () List!50771)

(assert (=> b!4521256 (= e!2816890 (insertStrictlySorted!408 (t!357733 (toList!4327 lt!1697021)) (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))

(declare-fun b!4521257 () Bool)

(declare-fun e!2816887 () List!50771)

(declare-fun call!315060 () List!50771)

(assert (=> b!4521257 (= e!2816887 call!315060)))

(declare-fun d!1393224 () Bool)

(assert (=> d!1393224 e!2816889))

(declare-fun res!1881732 () Bool)

(assert (=> d!1393224 (=> (not res!1881732) (not e!2816889))))

(assert (=> d!1393224 (= res!1881732 (isStrictlySorted!431 lt!1698203))))

(assert (=> d!1393224 (= lt!1698203 e!2816887)))

(declare-fun c!771684 () Bool)

(assert (=> d!1393224 (= c!771684 (and ((_ is Cons!50647) (toList!4327 lt!1697021)) (bvslt (_1!28832 (h!56500 (toList!4327 lt!1697021))) (_1!28832 lt!1697023))))))

(assert (=> d!1393224 (isStrictlySorted!431 (toList!4327 lt!1697021))))

(assert (=> d!1393224 (= (insertStrictlySorted!408 (toList!4327 lt!1697021) (_1!28832 lt!1697023) (_2!28832 lt!1697023)) lt!1698203)))

(declare-fun c!771686 () Bool)

(declare-fun c!771685 () Bool)

(declare-fun b!4521258 () Bool)

(assert (=> b!4521258 (= e!2816890 (ite c!771685 (t!357733 (toList!4327 lt!1697021)) (ite c!771686 (Cons!50647 (h!56500 (toList!4327 lt!1697021)) (t!357733 (toList!4327 lt!1697021))) Nil!50647)))))

(declare-fun b!4521259 () Bool)

(assert (=> b!4521259 (= c!771686 (and ((_ is Cons!50647) (toList!4327 lt!1697021)) (bvsgt (_1!28832 (h!56500 (toList!4327 lt!1697021))) (_1!28832 lt!1697023))))))

(declare-fun e!2816888 () List!50771)

(assert (=> b!4521259 (= e!2816886 e!2816888)))

(declare-fun bm!315053 () Bool)

(assert (=> bm!315053 (= call!315059 call!315060)))

(declare-fun bm!315054 () Bool)

(declare-fun call!315058 () List!50771)

(assert (=> bm!315054 (= call!315058 call!315059)))

(declare-fun b!4521260 () Bool)

(assert (=> b!4521260 (= e!2816887 e!2816886)))

(assert (=> b!4521260 (= c!771685 (and ((_ is Cons!50647) (toList!4327 lt!1697021)) (= (_1!28832 (h!56500 (toList!4327 lt!1697021))) (_1!28832 lt!1697023))))))

(declare-fun b!4521261 () Bool)

(assert (=> b!4521261 (= e!2816888 call!315058)))

(declare-fun b!4521262 () Bool)

(assert (=> b!4521262 (= e!2816889 (contains!13373 lt!1698203 (tuple2!51077 (_1!28832 lt!1697023) (_2!28832 lt!1697023))))))

(declare-fun bm!315055 () Bool)

(assert (=> bm!315055 (= call!315060 ($colon$colon!936 e!2816890 (ite c!771684 (h!56500 (toList!4327 lt!1697021)) (tuple2!51077 (_1!28832 lt!1697023) (_2!28832 lt!1697023)))))))

(declare-fun c!771687 () Bool)

(assert (=> bm!315055 (= c!771687 c!771684)))

(declare-fun b!4521263 () Bool)

(assert (=> b!4521263 (= e!2816888 call!315058)))

(assert (= (and d!1393224 c!771684) b!4521257))

(assert (= (and d!1393224 (not c!771684)) b!4521260))

(assert (= (and b!4521260 c!771685) b!4521255))

(assert (= (and b!4521260 (not c!771685)) b!4521259))

(assert (= (and b!4521259 c!771686) b!4521261))

(assert (= (and b!4521259 (not c!771686)) b!4521263))

(assert (= (or b!4521261 b!4521263) bm!315054))

(assert (= (or b!4521255 bm!315054) bm!315053))

(assert (= (or b!4521257 bm!315053) bm!315055))

(assert (= (and bm!315055 c!771687) b!4521256))

(assert (= (and bm!315055 (not c!771687)) b!4521258))

(assert (= (and d!1393224 res!1881732) b!4521254))

(assert (= (and b!4521254 res!1881733) b!4521262))

(declare-fun m!5270415 () Bool)

(assert (=> b!4521262 m!5270415))

(declare-fun m!5270417 () Bool)

(assert (=> bm!315055 m!5270417))

(declare-fun m!5270419 () Bool)

(assert (=> d!1393224 m!5270419))

(assert (=> d!1393224 m!5268687))

(declare-fun m!5270421 () Bool)

(assert (=> b!4521256 m!5270421))

(declare-fun m!5270423 () Bool)

(assert (=> b!4521254 m!5270423))

(assert (=> d!1392450 d!1393224))

(assert (=> b!4519899 d!1393048))

(assert (=> b!4519899 d!1392918))

(assert (=> b!4520082 d!1392828))

(declare-fun d!1393226 () Bool)

(assert (=> d!1393226 (containsKey!1783 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287)))

(declare-fun lt!1698204 () Unit!95040)

(assert (=> d!1393226 (= lt!1698204 (choose!29533 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287))))

(assert (=> d!1393226 (invariantList!1017 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))))))

(assert (=> d!1393226 (= (lemmaInGetKeysListThenContainsKey!464 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) key!3287) lt!1698204)))

(declare-fun bs!856944 () Bool)

(assert (= bs!856944 d!1393226))

(assert (=> bs!856944 m!5268143))

(declare-fun m!5270425 () Bool)

(assert (=> bs!856944 m!5270425))

(assert (=> bs!856944 m!5268517))

(assert (=> b!4520082 d!1393226))

(declare-fun d!1393228 () Bool)

(declare-fun res!1881734 () Bool)

(declare-fun e!2816891 () Bool)

(assert (=> d!1393228 (=> res!1881734 e!2816891)))

(assert (=> d!1393228 (= res!1881734 (and ((_ is Cons!50646) lt!1697399) (= (_1!28831 (h!56499 lt!1697399)) key!3287)))))

(assert (=> d!1393228 (= (containsKey!1780 lt!1697399 key!3287) e!2816891)))

(declare-fun b!4521264 () Bool)

(declare-fun e!2816892 () Bool)

(assert (=> b!4521264 (= e!2816891 e!2816892)))

(declare-fun res!1881735 () Bool)

(assert (=> b!4521264 (=> (not res!1881735) (not e!2816892))))

(assert (=> b!4521264 (= res!1881735 ((_ is Cons!50646) lt!1697399))))

(declare-fun b!4521265 () Bool)

(assert (=> b!4521265 (= e!2816892 (containsKey!1780 (t!357732 lt!1697399) key!3287))))

(assert (= (and d!1393228 (not res!1881734)) b!4521264))

(assert (= (and b!4521264 res!1881735) b!4521265))

(declare-fun m!5270427 () Bool)

(assert (=> b!4521265 m!5270427))

(assert (=> d!1392552 d!1393228))

(declare-fun d!1393230 () Bool)

(declare-fun res!1881736 () Bool)

(declare-fun e!2816893 () Bool)

(assert (=> d!1393230 (=> res!1881736 e!2816893)))

(assert (=> d!1393230 (= res!1881736 (not ((_ is Cons!50646) lt!1697018)))))

(assert (=> d!1393230 (= (noDuplicateKeys!1160 lt!1697018) e!2816893)))

(declare-fun b!4521266 () Bool)

(declare-fun e!2816894 () Bool)

(assert (=> b!4521266 (= e!2816893 e!2816894)))

(declare-fun res!1881737 () Bool)

(assert (=> b!4521266 (=> (not res!1881737) (not e!2816894))))

(assert (=> b!4521266 (= res!1881737 (not (containsKey!1780 (t!357732 lt!1697018) (_1!28831 (h!56499 lt!1697018)))))))

(declare-fun b!4521267 () Bool)

(assert (=> b!4521267 (= e!2816894 (noDuplicateKeys!1160 (t!357732 lt!1697018)))))

(assert (= (and d!1393230 (not res!1881736)) b!4521266))

(assert (= (and b!4521266 res!1881737) b!4521267))

(declare-fun m!5270429 () Bool)

(assert (=> b!4521266 m!5270429))

(assert (=> b!4521267 m!5270043))

(assert (=> d!1392552 d!1393230))

(assert (=> b!4520086 d!1392684))

(declare-fun d!1393232 () Bool)

(declare-fun res!1881738 () Bool)

(declare-fun e!2816895 () Bool)

(assert (=> d!1393232 (=> res!1881738 e!2816895)))

(assert (=> d!1393232 (= res!1881738 (not ((_ is Cons!50646) (_2!28832 lt!1697012))))))

(assert (=> d!1393232 (= (noDuplicateKeys!1160 (_2!28832 lt!1697012)) e!2816895)))

(declare-fun b!4521268 () Bool)

(declare-fun e!2816896 () Bool)

(assert (=> b!4521268 (= e!2816895 e!2816896)))

(declare-fun res!1881739 () Bool)

(assert (=> b!4521268 (=> (not res!1881739) (not e!2816896))))

(assert (=> b!4521268 (= res!1881739 (not (containsKey!1780 (t!357732 (_2!28832 lt!1697012)) (_1!28831 (h!56499 (_2!28832 lt!1697012))))))))

(declare-fun b!4521269 () Bool)

(assert (=> b!4521269 (= e!2816896 (noDuplicateKeys!1160 (t!357732 (_2!28832 lt!1697012))))))

(assert (= (and d!1393232 (not res!1881738)) b!4521268))

(assert (= (and b!4521268 res!1881739) b!4521269))

(declare-fun m!5270431 () Bool)

(assert (=> b!4521268 m!5270431))

(declare-fun m!5270433 () Bool)

(assert (=> b!4521269 m!5270433))

(assert (=> bs!855706 d!1393232))

(declare-fun d!1393234 () Bool)

(assert (=> d!1393234 (= (invariantList!1017 (toList!4328 lt!1697173)) (noDuplicatedKeys!262 (toList!4328 lt!1697173)))))

(declare-fun bs!856945 () Bool)

(assert (= bs!856945 d!1393234))

(declare-fun m!5270435 () Bool)

(assert (=> bs!856945 m!5270435))

(assert (=> d!1392462 d!1393234))

(declare-fun d!1393236 () Bool)

(declare-fun res!1881740 () Bool)

(declare-fun e!2816897 () Bool)

(assert (=> d!1393236 (=> res!1881740 e!2816897)))

(assert (=> d!1393236 (= res!1881740 ((_ is Nil!50647) (toList!4327 lt!1697001)))))

(assert (=> d!1393236 (= (forall!10263 (toList!4327 lt!1697001) lambda!172358) e!2816897)))

(declare-fun b!4521270 () Bool)

(declare-fun e!2816898 () Bool)

(assert (=> b!4521270 (= e!2816897 e!2816898)))

(declare-fun res!1881741 () Bool)

(assert (=> b!4521270 (=> (not res!1881741) (not e!2816898))))

(assert (=> b!4521270 (= res!1881741 (dynLambda!21163 lambda!172358 (h!56500 (toList!4327 lt!1697001))))))

(declare-fun b!4521271 () Bool)

(assert (=> b!4521271 (= e!2816898 (forall!10263 (t!357733 (toList!4327 lt!1697001)) lambda!172358))))

(assert (= (and d!1393236 (not res!1881740)) b!4521270))

(assert (= (and b!4521270 res!1881741) b!4521271))

(declare-fun b_lambda!155073 () Bool)

(assert (=> (not b_lambda!155073) (not b!4521270)))

(declare-fun m!5270437 () Bool)

(assert (=> b!4521270 m!5270437))

(declare-fun m!5270439 () Bool)

(assert (=> b!4521271 m!5270439))

(assert (=> d!1392462 d!1393236))

(declare-fun bs!856946 () Bool)

(declare-fun b!4521284 () Bool)

(assert (= bs!856946 (and b!4521284 b!4521113)))

(declare-fun lambda!172592 () Int)

(assert (=> bs!856946 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172592 lambda!172569))))

(declare-fun bs!856948 () Bool)

(assert (= bs!856948 (and b!4521284 b!4520929)))

(assert (=> bs!856948 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697891) (= lambda!172592 lambda!172540))))

(declare-fun bs!856950 () Bool)

(assert (= bs!856950 (and b!4521284 d!1393066)))

(assert (=> bs!856950 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697885) (= lambda!172592 lambda!172545))))

(declare-fun bs!856952 () Bool)

(assert (= bs!856952 (and b!4521284 d!1392554)))

(assert (=> bs!856952 (not (= lambda!172592 lambda!172445))))

(declare-fun bs!856953 () Bool)

(assert (= bs!856953 (and b!4521284 b!4521110)))

(assert (=> bs!856953 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698069) (= lambda!172592 lambda!172571))))

(declare-fun bs!856954 () Bool)

(assert (= bs!856954 (and b!4521284 d!1392478)))

(assert (=> bs!856954 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697339) (= lambda!172592 lambda!172433))))

(declare-fun bs!856955 () Bool)

(assert (= bs!856955 (and b!4521284 b!4521177)))

(assert (=> bs!856955 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698154) (= lambda!172592 lambda!172580))))

(declare-fun bs!856957 () Bool)

(assert (= bs!856957 (and b!4521284 b!4520536)))

(assert (=> bs!856957 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697584) (= lambda!172592 lambda!172503))))

(assert (=> bs!856955 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172592 lambda!172579))))

(declare-fun bs!856959 () Bool)

(assert (= bs!856959 (and b!4521284 d!1392774)))

(assert (=> bs!856959 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697024) (= lambda!172592 lambda!172499))))

(assert (=> bs!856957 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172592 lambda!172502))))

(declare-fun bs!856962 () Bool)

(assert (= bs!856962 (and b!4521284 b!4520901)))

(assert (=> bs!856962 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697849) (= lambda!172592 lambda!172536))))

(declare-fun bs!856963 () Bool)

(assert (= bs!856963 (and b!4521284 b!4520932)))

(assert (=> bs!856963 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172592 lambda!172538))))

(declare-fun bs!856964 () Bool)

(assert (= bs!856964 (and b!4521284 b!4520943)))

(assert (=> bs!856964 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172592 lambda!172549))))

(declare-fun bs!856965 () Bool)

(assert (= bs!856965 (and b!4521284 d!1392776)))

(assert (=> bs!856965 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697578) (= lambda!172592 lambda!172504))))

(assert (=> bs!856948 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172592 lambda!172539))))

(declare-fun bs!856968 () Bool)

(assert (= bs!856968 (and b!4521284 d!1392574)))

(assert (=> bs!856968 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697417) (= lambda!172592 lambda!172452))))

(declare-fun bs!856970 () Bool)

(assert (= bs!856970 (and b!4521284 b!4520152)))

(assert (=> bs!856970 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697423) (= lambda!172592 lambda!172451))))

(declare-fun bs!856972 () Bool)

(assert (= bs!856972 (and b!4521284 d!1393192)))

(assert (=> bs!856972 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698090) (= lambda!172592 lambda!172576))))

(declare-fun bs!856974 () Bool)

(assert (= bs!856974 (and b!4521284 b!4520155)))

(assert (=> bs!856974 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697017) (= lambda!172592 lambda!172449))))

(declare-fun bs!856975 () Bool)

(assert (= bs!856975 (and b!4521284 b!4520539)))

(assert (=> bs!856975 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172592 lambda!172500))))

(declare-fun bs!856976 () Bool)

(assert (= bs!856976 (and b!4521284 d!1393170)))

(assert (=> bs!856976 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698063) (= lambda!172592 lambda!172572))))

(declare-fun bs!856978 () Bool)

(assert (= bs!856978 (and b!4521284 b!4521180)))

(assert (=> bs!856978 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172592 lambda!172578))))

(declare-fun bs!856980 () Bool)

(assert (= bs!856980 (and b!4521284 d!1393050)))

(assert (=> bs!856980 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697843) (= lambda!172592 lambda!172537))))

(assert (=> bs!856953 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172592 lambda!172570))))

(declare-fun bs!856982 () Bool)

(assert (= bs!856982 (and b!4521284 b!4520904)))

(assert (=> bs!856982 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172592 lambda!172534))))

(assert (=> bs!856962 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172592 lambda!172535))))

(declare-fun bs!856983 () Bool)

(assert (= bs!856983 (and b!4521284 b!4520946)))

(assert (=> bs!856983 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172592 lambda!172548))))

(declare-fun bs!856984 () Bool)

(assert (= bs!856984 (and b!4521284 d!1393078)))

(assert (=> bs!856984 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697910) (= lambda!172592 lambda!172551))))

(declare-fun bs!856985 () Bool)

(assert (= bs!856985 (and b!4521284 b!4521132)))

(assert (=> bs!856985 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172592 lambda!172574))))

(assert (=> bs!856964 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697916) (= lambda!172592 lambda!172550))))

(assert (=> bs!856970 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697017) (= lambda!172592 lambda!172450))))

(declare-fun bs!856986 () Bool)

(assert (= bs!856986 (and b!4521284 d!1392762)))

(assert (=> bs!856986 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697017) (= lambda!172592 lambda!172497))))

(declare-fun bs!856987 () Bool)

(assert (= bs!856987 (and b!4521284 b!4521135)))

(assert (=> bs!856987 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172592 lambda!172573))))

(declare-fun bs!856988 () Bool)

(assert (= bs!856988 (and b!4521284 d!1393102)))

(assert (=> bs!856988 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697423) (= lambda!172592 lambda!172556))))

(declare-fun bs!856989 () Bool)

(assert (= bs!856989 (and b!4521284 d!1393168)))

(assert (=> bs!856989 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697345) (= lambda!172592 lambda!172568))))

(declare-fun bs!856990 () Bool)

(assert (= bs!856990 (and b!4521284 b!4520058)))

(assert (=> bs!856990 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697024) (= lambda!172592 lambda!172431))))

(declare-fun bs!856991 () Bool)

(assert (= bs!856991 (and b!4521284 b!4520061)))

(assert (=> bs!856991 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697024) (= lambda!172592 lambda!172430))))

(declare-fun bs!856992 () Bool)

(assert (= bs!856992 (and b!4521284 d!1393196)))

(assert (=> bs!856992 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698148) (= lambda!172592 lambda!172581))))

(assert (=> bs!856990 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697345) (= lambda!172592 lambda!172432))))

(assert (=> bs!856985 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698096) (= lambda!172592 lambda!172575))))

(assert (=> b!4521284 true))

(declare-fun bs!856994 () Bool)

(declare-fun b!4521281 () Bool)

(assert (= bs!856994 (and b!4521281 b!4521113)))

(declare-fun lambda!172596 () Int)

(assert (=> bs!856994 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172596 lambda!172569))))

(declare-fun bs!856995 () Bool)

(assert (= bs!856995 (and b!4521281 b!4520929)))

(assert (=> bs!856995 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697891) (= lambda!172596 lambda!172540))))

(declare-fun bs!856996 () Bool)

(assert (= bs!856996 (and b!4521281 d!1393066)))

(assert (=> bs!856996 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697885) (= lambda!172596 lambda!172545))))

(declare-fun bs!856998 () Bool)

(assert (= bs!856998 (and b!4521281 d!1392554)))

(assert (=> bs!856998 (not (= lambda!172596 lambda!172445))))

(declare-fun bs!856999 () Bool)

(assert (= bs!856999 (and b!4521281 b!4521110)))

(assert (=> bs!856999 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698069) (= lambda!172596 lambda!172571))))

(declare-fun bs!857000 () Bool)

(assert (= bs!857000 (and b!4521281 d!1392478)))

(assert (=> bs!857000 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697339) (= lambda!172596 lambda!172433))))

(declare-fun bs!857002 () Bool)

(assert (= bs!857002 (and b!4521281 b!4521177)))

(assert (=> bs!857002 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698154) (= lambda!172596 lambda!172580))))

(declare-fun bs!857003 () Bool)

(assert (= bs!857003 (and b!4521281 b!4521284)))

(assert (=> bs!857003 (= lambda!172596 lambda!172592)))

(declare-fun bs!857004 () Bool)

(assert (= bs!857004 (and b!4521281 b!4520536)))

(assert (=> bs!857004 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697584) (= lambda!172596 lambda!172503))))

(assert (=> bs!857002 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172596 lambda!172579))))

(declare-fun bs!857005 () Bool)

(assert (= bs!857005 (and b!4521281 d!1392774)))

(assert (=> bs!857005 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697024) (= lambda!172596 lambda!172499))))

(assert (=> bs!857004 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172596 lambda!172502))))

(declare-fun bs!857006 () Bool)

(assert (= bs!857006 (and b!4521281 b!4520901)))

(assert (=> bs!857006 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697849) (= lambda!172596 lambda!172536))))

(declare-fun bs!857007 () Bool)

(assert (= bs!857007 (and b!4521281 b!4520932)))

(assert (=> bs!857007 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172596 lambda!172538))))

(declare-fun bs!857008 () Bool)

(assert (= bs!857008 (and b!4521281 b!4520943)))

(assert (=> bs!857008 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172596 lambda!172549))))

(declare-fun bs!857009 () Bool)

(assert (= bs!857009 (and b!4521281 d!1392776)))

(assert (=> bs!857009 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697578) (= lambda!172596 lambda!172504))))

(assert (=> bs!856995 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172596 lambda!172539))))

(declare-fun bs!857010 () Bool)

(assert (= bs!857010 (and b!4521281 d!1392574)))

(assert (=> bs!857010 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697417) (= lambda!172596 lambda!172452))))

(declare-fun bs!857011 () Bool)

(assert (= bs!857011 (and b!4521281 b!4520152)))

(assert (=> bs!857011 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697423) (= lambda!172596 lambda!172451))))

(declare-fun bs!857012 () Bool)

(assert (= bs!857012 (and b!4521281 d!1393192)))

(assert (=> bs!857012 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698090) (= lambda!172596 lambda!172576))))

(declare-fun bs!857013 () Bool)

(assert (= bs!857013 (and b!4521281 b!4520155)))

(assert (=> bs!857013 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697017) (= lambda!172596 lambda!172449))))

(declare-fun bs!857014 () Bool)

(assert (= bs!857014 (and b!4521281 b!4520539)))

(assert (=> bs!857014 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172596 lambda!172500))))

(declare-fun bs!857015 () Bool)

(assert (= bs!857015 (and b!4521281 d!1393170)))

(assert (=> bs!857015 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698063) (= lambda!172596 lambda!172572))))

(declare-fun bs!857016 () Bool)

(assert (= bs!857016 (and b!4521281 b!4521180)))

(assert (=> bs!857016 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172596 lambda!172578))))

(declare-fun bs!857017 () Bool)

(assert (= bs!857017 (and b!4521281 d!1393050)))

(assert (=> bs!857017 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697843) (= lambda!172596 lambda!172537))))

(assert (=> bs!856999 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172596 lambda!172570))))

(declare-fun bs!857018 () Bool)

(assert (= bs!857018 (and b!4521281 b!4520904)))

(assert (=> bs!857018 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172596 lambda!172534))))

(assert (=> bs!857006 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172596 lambda!172535))))

(declare-fun bs!857019 () Bool)

(assert (= bs!857019 (and b!4521281 b!4520946)))

(assert (=> bs!857019 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172596 lambda!172548))))

(declare-fun bs!857021 () Bool)

(assert (= bs!857021 (and b!4521281 d!1393078)))

(assert (=> bs!857021 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697910) (= lambda!172596 lambda!172551))))

(declare-fun bs!857022 () Bool)

(assert (= bs!857022 (and b!4521281 b!4521132)))

(assert (=> bs!857022 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172596 lambda!172574))))

(assert (=> bs!857008 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697916) (= lambda!172596 lambda!172550))))

(assert (=> bs!857011 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697017) (= lambda!172596 lambda!172450))))

(declare-fun bs!857026 () Bool)

(assert (= bs!857026 (and b!4521281 d!1392762)))

(assert (=> bs!857026 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697017) (= lambda!172596 lambda!172497))))

(declare-fun bs!857028 () Bool)

(assert (= bs!857028 (and b!4521281 b!4521135)))

(assert (=> bs!857028 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172596 lambda!172573))))

(declare-fun bs!857030 () Bool)

(assert (= bs!857030 (and b!4521281 d!1393102)))

(assert (=> bs!857030 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697423) (= lambda!172596 lambda!172556))))

(declare-fun bs!857031 () Bool)

(assert (= bs!857031 (and b!4521281 d!1393168)))

(assert (=> bs!857031 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697345) (= lambda!172596 lambda!172568))))

(declare-fun bs!857032 () Bool)

(assert (= bs!857032 (and b!4521281 b!4520058)))

(assert (=> bs!857032 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697024) (= lambda!172596 lambda!172431))))

(declare-fun bs!857033 () Bool)

(assert (= bs!857033 (and b!4521281 b!4520061)))

(assert (=> bs!857033 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697024) (= lambda!172596 lambda!172430))))

(declare-fun bs!857034 () Bool)

(assert (= bs!857034 (and b!4521281 d!1393196)))

(assert (=> bs!857034 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698148) (= lambda!172596 lambda!172581))))

(assert (=> bs!857032 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1697345) (= lambda!172596 lambda!172432))))

(assert (=> bs!857022 (= (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698096) (= lambda!172596 lambda!172575))))

(assert (=> b!4521281 true))

(declare-fun lambda!172599 () Int)

(declare-fun lt!1698232 () ListMap!3589)

(assert (=> bs!856994 (= (= lt!1698232 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172599 lambda!172569))))

(assert (=> bs!856995 (= (= lt!1698232 lt!1697891) (= lambda!172599 lambda!172540))))

(assert (=> bs!856996 (= (= lt!1698232 lt!1697885) (= lambda!172599 lambda!172545))))

(assert (=> bs!856998 (not (= lambda!172599 lambda!172445))))

(assert (=> bs!856999 (= (= lt!1698232 lt!1698069) (= lambda!172599 lambda!172571))))

(assert (=> bs!857000 (= (= lt!1698232 lt!1697339) (= lambda!172599 lambda!172433))))

(assert (=> b!4521281 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) (= lambda!172599 lambda!172596))))

(assert (=> bs!857002 (= (= lt!1698232 lt!1698154) (= lambda!172599 lambda!172580))))

(assert (=> bs!857003 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) (= lambda!172599 lambda!172592))))

(assert (=> bs!857004 (= (= lt!1698232 lt!1697584) (= lambda!172599 lambda!172503))))

(assert (=> bs!857002 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172599 lambda!172579))))

(assert (=> bs!857005 (= (= lt!1698232 lt!1697024) (= lambda!172599 lambda!172499))))

(assert (=> bs!857004 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172599 lambda!172502))))

(assert (=> bs!857006 (= (= lt!1698232 lt!1697849) (= lambda!172599 lambda!172536))))

(assert (=> bs!857007 (= (= lt!1698232 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172599 lambda!172538))))

(assert (=> bs!857008 (= (= lt!1698232 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172599 lambda!172549))))

(assert (=> bs!857009 (= (= lt!1698232 lt!1697578) (= lambda!172599 lambda!172504))))

(assert (=> bs!856995 (= (= lt!1698232 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172599 lambda!172539))))

(assert (=> bs!857010 (= (= lt!1698232 lt!1697417) (= lambda!172599 lambda!172452))))

(assert (=> bs!857011 (= (= lt!1698232 lt!1697423) (= lambda!172599 lambda!172451))))

(assert (=> bs!857012 (= (= lt!1698232 lt!1698090) (= lambda!172599 lambda!172576))))

(assert (=> bs!857013 (= (= lt!1698232 lt!1697017) (= lambda!172599 lambda!172449))))

(assert (=> bs!857014 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172599 lambda!172500))))

(assert (=> bs!857015 (= (= lt!1698232 lt!1698063) (= lambda!172599 lambda!172572))))

(assert (=> bs!857016 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172599 lambda!172578))))

(assert (=> bs!857017 (= (= lt!1698232 lt!1697843) (= lambda!172599 lambda!172537))))

(assert (=> bs!856999 (= (= lt!1698232 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172599 lambda!172570))))

(assert (=> bs!857018 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172599 lambda!172534))))

(assert (=> bs!857006 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172599 lambda!172535))))

(assert (=> bs!857019 (= (= lt!1698232 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172599 lambda!172548))))

(assert (=> bs!857021 (= (= lt!1698232 lt!1697910) (= lambda!172599 lambda!172551))))

(assert (=> bs!857022 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172599 lambda!172574))))

(assert (=> bs!857008 (= (= lt!1698232 lt!1697916) (= lambda!172599 lambda!172550))))

(assert (=> bs!857011 (= (= lt!1698232 lt!1697017) (= lambda!172599 lambda!172450))))

(assert (=> bs!857026 (= (= lt!1698232 lt!1697017) (= lambda!172599 lambda!172497))))

(assert (=> bs!857028 (= (= lt!1698232 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172599 lambda!172573))))

(assert (=> bs!857030 (= (= lt!1698232 lt!1697423) (= lambda!172599 lambda!172556))))

(assert (=> bs!857031 (= (= lt!1698232 lt!1697345) (= lambda!172599 lambda!172568))))

(assert (=> bs!857032 (= (= lt!1698232 lt!1697024) (= lambda!172599 lambda!172431))))

(assert (=> bs!857033 (= (= lt!1698232 lt!1697024) (= lambda!172599 lambda!172430))))

(assert (=> bs!857034 (= (= lt!1698232 lt!1698148) (= lambda!172599 lambda!172581))))

(assert (=> bs!857032 (= (= lt!1698232 lt!1697345) (= lambda!172599 lambda!172432))))

(assert (=> bs!857022 (= (= lt!1698232 lt!1698096) (= lambda!172599 lambda!172575))))

(assert (=> b!4521281 true))

(declare-fun bs!857054 () Bool)

(declare-fun d!1393238 () Bool)

(assert (= bs!857054 (and d!1393238 b!4521113)))

(declare-fun lambda!172602 () Int)

(declare-fun lt!1698226 () ListMap!3589)

(assert (=> bs!857054 (= (= lt!1698226 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172602 lambda!172569))))

(declare-fun bs!857055 () Bool)

(assert (= bs!857055 (and d!1393238 b!4520929)))

(assert (=> bs!857055 (= (= lt!1698226 lt!1697891) (= lambda!172602 lambda!172540))))

(declare-fun bs!857056 () Bool)

(assert (= bs!857056 (and d!1393238 d!1393066)))

(assert (=> bs!857056 (= (= lt!1698226 lt!1697885) (= lambda!172602 lambda!172545))))

(declare-fun bs!857057 () Bool)

(assert (= bs!857057 (and d!1393238 d!1392554)))

(assert (=> bs!857057 (not (= lambda!172602 lambda!172445))))

(declare-fun bs!857058 () Bool)

(assert (= bs!857058 (and d!1393238 b!4521110)))

(assert (=> bs!857058 (= (= lt!1698226 lt!1698069) (= lambda!172602 lambda!172571))))

(declare-fun bs!857059 () Bool)

(assert (= bs!857059 (and d!1393238 d!1392478)))

(assert (=> bs!857059 (= (= lt!1698226 lt!1697339) (= lambda!172602 lambda!172433))))

(declare-fun bs!857060 () Bool)

(assert (= bs!857060 (and d!1393238 b!4521281)))

(assert (=> bs!857060 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) (= lambda!172602 lambda!172596))))

(declare-fun bs!857061 () Bool)

(assert (= bs!857061 (and d!1393238 b!4521177)))

(assert (=> bs!857061 (= (= lt!1698226 lt!1698154) (= lambda!172602 lambda!172580))))

(declare-fun bs!857062 () Bool)

(assert (= bs!857062 (and d!1393238 b!4521284)))

(assert (=> bs!857062 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) (= lambda!172602 lambda!172592))))

(declare-fun bs!857063 () Bool)

(assert (= bs!857063 (and d!1393238 b!4520536)))

(assert (=> bs!857063 (= (= lt!1698226 lt!1697584) (= lambda!172602 lambda!172503))))

(assert (=> bs!857061 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172602 lambda!172579))))

(declare-fun bs!857064 () Bool)

(assert (= bs!857064 (and d!1393238 d!1392774)))

(assert (=> bs!857064 (= (= lt!1698226 lt!1697024) (= lambda!172602 lambda!172499))))

(assert (=> bs!857063 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172602 lambda!172502))))

(declare-fun bs!857065 () Bool)

(assert (= bs!857065 (and d!1393238 b!4520901)))

(assert (=> bs!857065 (= (= lt!1698226 lt!1697849) (= lambda!172602 lambda!172536))))

(declare-fun bs!857066 () Bool)

(assert (= bs!857066 (and d!1393238 b!4520932)))

(assert (=> bs!857066 (= (= lt!1698226 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172602 lambda!172538))))

(declare-fun bs!857067 () Bool)

(assert (= bs!857067 (and d!1393238 b!4520943)))

(assert (=> bs!857067 (= (= lt!1698226 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172602 lambda!172549))))

(declare-fun bs!857068 () Bool)

(assert (= bs!857068 (and d!1393238 d!1392776)))

(assert (=> bs!857068 (= (= lt!1698226 lt!1697578) (= lambda!172602 lambda!172504))))

(assert (=> bs!857055 (= (= lt!1698226 (extractMap!1216 (t!357733 (t!357733 (toList!4327 lm!1477))))) (= lambda!172602 lambda!172539))))

(declare-fun bs!857069 () Bool)

(assert (= bs!857069 (and d!1393238 d!1392574)))

(assert (=> bs!857069 (= (= lt!1698226 lt!1697417) (= lambda!172602 lambda!172452))))

(declare-fun bs!857070 () Bool)

(assert (= bs!857070 (and d!1393238 b!4520152)))

(assert (=> bs!857070 (= (= lt!1698226 lt!1697423) (= lambda!172602 lambda!172451))))

(declare-fun bs!857072 () Bool)

(assert (= bs!857072 (and d!1393238 d!1393192)))

(assert (=> bs!857072 (= (= lt!1698226 lt!1698090) (= lambda!172602 lambda!172576))))

(declare-fun bs!857073 () Bool)

(assert (= bs!857073 (and d!1393238 b!4520155)))

(assert (=> bs!857073 (= (= lt!1698226 lt!1697017) (= lambda!172602 lambda!172449))))

(declare-fun bs!857074 () Bool)

(assert (= bs!857074 (and d!1393238 b!4520539)))

(assert (=> bs!857074 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 lt!1697011)))) (= lambda!172602 lambda!172500))))

(declare-fun bs!857075 () Bool)

(assert (= bs!857075 (and d!1393238 d!1393170)))

(assert (=> bs!857075 (= (= lt!1698226 lt!1698063) (= lambda!172602 lambda!172572))))

(declare-fun bs!857077 () Bool)

(assert (= bs!857077 (and d!1393238 b!4521180)))

(assert (=> bs!857077 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 lt!1697021)))) (= lambda!172602 lambda!172578))))

(declare-fun bs!857078 () Bool)

(assert (= bs!857078 (and d!1393238 d!1393050)))

(assert (=> bs!857078 (= (= lt!1698226 lt!1697843) (= lambda!172602 lambda!172537))))

(assert (=> bs!857058 (= (= lt!1698226 (+!1540 lt!1697024 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172602 lambda!172570))))

(declare-fun bs!857079 () Bool)

(assert (= bs!857079 (and d!1393238 b!4520904)))

(assert (=> bs!857079 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172602 lambda!172534))))

(assert (=> bs!857065 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 lm!1477)))) (= lambda!172602 lambda!172535))))

(declare-fun bs!857080 () Bool)

(assert (= bs!857080 (and d!1393238 b!4520946)))

(assert (=> bs!857080 (= (= lt!1698226 (+!1540 lt!1697017 (h!56499 (_2!28832 lt!1697023)))) (= lambda!172602 lambda!172548))))

(declare-fun bs!857081 () Bool)

(assert (= bs!857081 (and d!1393238 d!1393078)))

(assert (=> bs!857081 (= (= lt!1698226 lt!1697910) (= lambda!172602 lambda!172551))))

(declare-fun bs!857082 () Bool)

(assert (= bs!857082 (and d!1393238 b!4521132)))

(assert (=> bs!857082 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172602 lambda!172574))))

(assert (=> bs!857067 (= (= lt!1698226 lt!1697916) (= lambda!172602 lambda!172550))))

(assert (=> bs!857060 (= (= lt!1698226 lt!1698232) (= lambda!172602 lambda!172599))))

(assert (=> bs!857070 (= (= lt!1698226 lt!1697017) (= lambda!172602 lambda!172450))))

(declare-fun bs!857083 () Bool)

(assert (= bs!857083 (and d!1393238 d!1392762)))

(assert (=> bs!857083 (= (= lt!1698226 lt!1697017) (= lambda!172602 lambda!172497))))

(declare-fun bs!857084 () Bool)

(assert (= bs!857084 (and d!1393238 b!4521135)))

(assert (=> bs!857084 (= (= lt!1698226 (extractMap!1216 (t!357733 (toList!4327 (+!1538 lt!1697021 lt!1697023))))) (= lambda!172602 lambda!172573))))

(declare-fun bs!857085 () Bool)

(assert (= bs!857085 (and d!1393238 d!1393102)))

(assert (=> bs!857085 (= (= lt!1698226 lt!1697423) (= lambda!172602 lambda!172556))))

(declare-fun bs!857086 () Bool)

(assert (= bs!857086 (and d!1393238 d!1393168)))

(assert (=> bs!857086 (= (= lt!1698226 lt!1697345) (= lambda!172602 lambda!172568))))

(declare-fun bs!857087 () Bool)

(assert (= bs!857087 (and d!1393238 b!4520058)))

(assert (=> bs!857087 (= (= lt!1698226 lt!1697024) (= lambda!172602 lambda!172431))))

(declare-fun bs!857088 () Bool)

(assert (= bs!857088 (and d!1393238 b!4520061)))

(assert (=> bs!857088 (= (= lt!1698226 lt!1697024) (= lambda!172602 lambda!172430))))

(declare-fun bs!857090 () Bool)

(assert (= bs!857090 (and d!1393238 d!1393196)))

(assert (=> bs!857090 (= (= lt!1698226 lt!1698148) (= lambda!172602 lambda!172581))))

(assert (=> bs!857087 (= (= lt!1698226 lt!1697345) (= lambda!172602 lambda!172432))))

(assert (=> bs!857082 (= (= lt!1698226 lt!1698096) (= lambda!172602 lambda!172575))))

(assert (=> d!1393238 true))

(declare-fun e!2816905 () ListMap!3589)

(assert (=> b!4521281 (= e!2816905 lt!1698232)))

(declare-fun lt!1698219 () ListMap!3589)

(assert (=> b!4521281 (= lt!1698219 (+!1540 (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697001))))))))

(assert (=> b!4521281 (= lt!1698232 (addToMapMapFromBucket!687 (t!357732 (_2!28832 (h!56500 (toList!4327 lt!1697001)))) (+!1540 (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697001)))))))))

(declare-fun lt!1698229 () Unit!95040)

(declare-fun call!315063 () Unit!95040)

(assert (=> b!4521281 (= lt!1698229 call!315063)))

(assert (=> b!4521281 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) lambda!172596)))

(declare-fun lt!1698222 () Unit!95040)

(assert (=> b!4521281 (= lt!1698222 lt!1698229)))

(declare-fun call!315062 () Bool)

(assert (=> b!4521281 call!315062))

(declare-fun lt!1698214 () Unit!95040)

(declare-fun Unit!95341 () Unit!95040)

(assert (=> b!4521281 (= lt!1698214 Unit!95341)))

(declare-fun call!315061 () Bool)

(assert (=> b!4521281 call!315061))

(declare-fun lt!1698218 () Unit!95040)

(declare-fun Unit!95342 () Unit!95040)

(assert (=> b!4521281 (= lt!1698218 Unit!95342)))

(declare-fun lt!1698216 () Unit!95040)

(declare-fun Unit!95343 () Unit!95040)

(assert (=> b!4521281 (= lt!1698216 Unit!95343)))

(declare-fun lt!1698228 () Unit!95040)

(assert (=> b!4521281 (= lt!1698228 (forallContained!2517 (toList!4328 lt!1698219) lambda!172599 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697001))))))))

(assert (=> b!4521281 (contains!13372 lt!1698219 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697001))))))))

(declare-fun lt!1698211 () Unit!95040)

(declare-fun Unit!95344 () Unit!95040)

(assert (=> b!4521281 (= lt!1698211 Unit!95344)))

(assert (=> b!4521281 (contains!13372 lt!1698232 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697001))))))))

(declare-fun lt!1698225 () Unit!95040)

(declare-fun Unit!95345 () Unit!95040)

(assert (=> b!4521281 (= lt!1698225 Unit!95345)))

(assert (=> b!4521281 (forall!10265 (_2!28832 (h!56500 (toList!4327 lt!1697001))) lambda!172599)))

(declare-fun lt!1698215 () Unit!95040)

(declare-fun Unit!95346 () Unit!95040)

(assert (=> b!4521281 (= lt!1698215 Unit!95346)))

(assert (=> b!4521281 (forall!10265 (toList!4328 lt!1698219) lambda!172599)))

(declare-fun lt!1698212 () Unit!95040)

(declare-fun Unit!95347 () Unit!95040)

(assert (=> b!4521281 (= lt!1698212 Unit!95347)))

(declare-fun lt!1698221 () Unit!95040)

(declare-fun Unit!95348 () Unit!95040)

(assert (=> b!4521281 (= lt!1698221 Unit!95348)))

(declare-fun lt!1698205 () Unit!95040)

(assert (=> b!4521281 (= lt!1698205 (addForallContainsKeyThenBeforeAdding!338 (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698232 (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697001))))) (_2!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697001)))))))))

(assert (=> b!4521281 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) lambda!172599)))

(declare-fun lt!1698217 () Unit!95040)

(assert (=> b!4521281 (= lt!1698217 lt!1698205)))

(assert (=> b!4521281 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) lambda!172599)))

(declare-fun lt!1698227 () Unit!95040)

(declare-fun Unit!95349 () Unit!95040)

(assert (=> b!4521281 (= lt!1698227 Unit!95349)))

(declare-fun res!1881746 () Bool)

(assert (=> b!4521281 (= res!1881746 (forall!10265 (_2!28832 (h!56500 (toList!4327 lt!1697001))) lambda!172599))))

(declare-fun e!2816903 () Bool)

(assert (=> b!4521281 (=> (not res!1881746) (not e!2816903))))

(assert (=> b!4521281 e!2816903))

(declare-fun lt!1698210 () Unit!95040)

(declare-fun Unit!95350 () Unit!95040)

(assert (=> b!4521281 (= lt!1698210 Unit!95350)))

(declare-fun b!4521282 () Bool)

(assert (=> b!4521282 (= e!2816903 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) lambda!172599))))

(declare-fun bm!315056 () Bool)

(assert (=> bm!315056 (= call!315063 (lemmaContainsAllItsOwnKeys!338 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))))))

(declare-fun c!771691 () Bool)

(declare-fun bm!315057 () Bool)

(assert (=> bm!315057 (= call!315062 (forall!10265 (ite c!771691 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) (toList!4328 lt!1698219)) (ite c!771691 lambda!172592 lambda!172599)))))

(declare-fun b!4521283 () Bool)

(declare-fun res!1881743 () Bool)

(declare-fun e!2816904 () Bool)

(assert (=> b!4521283 (=> (not res!1881743) (not e!2816904))))

(assert (=> b!4521283 (= res!1881743 (forall!10265 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) lambda!172602))))

(assert (=> d!1393238 e!2816904))

(declare-fun res!1881747 () Bool)

(assert (=> d!1393238 (=> (not res!1881747) (not e!2816904))))

(assert (=> d!1393238 (= res!1881747 (forall!10265 (_2!28832 (h!56500 (toList!4327 lt!1697001))) lambda!172602))))

(assert (=> d!1393238 (= lt!1698226 e!2816905)))

(assert (=> d!1393238 (= c!771691 ((_ is Nil!50646) (_2!28832 (h!56500 (toList!4327 lt!1697001)))))))

(assert (=> d!1393238 (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lt!1697001))))))

(assert (=> d!1393238 (= (addToMapMapFromBucket!687 (_2!28832 (h!56500 (toList!4327 lt!1697001))) (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) lt!1698226)))

(declare-fun bm!315058 () Bool)

(assert (=> bm!315058 (= call!315061 (forall!10265 (ite c!771691 (toList!4328 (extractMap!1216 (t!357733 (toList!4327 lt!1697001)))) (t!357732 (_2!28832 (h!56500 (toList!4327 lt!1697001))))) (ite c!771691 lambda!172592 lambda!172599)))))

(assert (=> b!4521284 (= e!2816905 (extractMap!1216 (t!357733 (toList!4327 lt!1697001))))))

(declare-fun lt!1698213 () Unit!95040)

(assert (=> b!4521284 (= lt!1698213 call!315063)))

(assert (=> b!4521284 call!315061))

(declare-fun lt!1698230 () Unit!95040)

(assert (=> b!4521284 (= lt!1698230 lt!1698213)))

(assert (=> b!4521284 call!315062))

(declare-fun lt!1698231 () Unit!95040)

(declare-fun Unit!95351 () Unit!95040)

(assert (=> b!4521284 (= lt!1698231 Unit!95351)))

(declare-fun b!4521285 () Bool)

(assert (=> b!4521285 (= e!2816904 (invariantList!1017 (toList!4328 lt!1698226)))))

(assert (= (and d!1393238 c!771691) b!4521284))

(assert (= (and d!1393238 (not c!771691)) b!4521281))

(assert (= (and b!4521281 res!1881746) b!4521282))

(assert (= (or b!4521284 b!4521281) bm!315058))

(assert (= (or b!4521284 b!4521281) bm!315057))

(assert (= (or b!4521284 b!4521281) bm!315056))

(assert (= (and d!1393238 res!1881747) b!4521283))

(assert (= (and b!4521283 res!1881743) b!4521285))

(declare-fun m!5270533 () Bool)

(assert (=> d!1393238 m!5270533))

(declare-fun m!5270535 () Bool)

(assert (=> d!1393238 m!5270535))

(declare-fun m!5270537 () Bool)

(assert (=> b!4521282 m!5270537))

(declare-fun m!5270539 () Bool)

(assert (=> bm!315057 m!5270539))

(assert (=> bm!315056 m!5267893))

(declare-fun m!5270541 () Bool)

(assert (=> bm!315056 m!5270541))

(declare-fun m!5270543 () Bool)

(assert (=> b!4521285 m!5270543))

(declare-fun m!5270545 () Bool)

(assert (=> b!4521283 m!5270545))

(declare-fun m!5270547 () Bool)

(assert (=> bm!315058 m!5270547))

(assert (=> b!4521281 m!5267893))

(declare-fun m!5270549 () Bool)

(assert (=> b!4521281 m!5270549))

(assert (=> b!4521281 m!5270537))

(declare-fun m!5270551 () Bool)

(assert (=> b!4521281 m!5270551))

(assert (=> b!4521281 m!5267893))

(declare-fun m!5270553 () Bool)

(assert (=> b!4521281 m!5270553))

(assert (=> b!4521281 m!5270537))

(declare-fun m!5270555 () Bool)

(assert (=> b!4521281 m!5270555))

(assert (=> b!4521281 m!5270549))

(declare-fun m!5270557 () Bool)

(assert (=> b!4521281 m!5270557))

(declare-fun m!5270559 () Bool)

(assert (=> b!4521281 m!5270559))

(declare-fun m!5270561 () Bool)

(assert (=> b!4521281 m!5270561))

(assert (=> b!4521281 m!5270555))

(declare-fun m!5270563 () Bool)

(assert (=> b!4521281 m!5270563))

(declare-fun m!5270565 () Bool)

(assert (=> b!4521281 m!5270565))

(assert (=> b!4519985 d!1393238))

(declare-fun bs!857121 () Bool)

(declare-fun d!1393270 () Bool)

(assert (= bs!857121 (and d!1393270 d!1392458)))

(declare-fun lambda!172604 () Int)

(assert (=> bs!857121 (= lambda!172604 lambda!172357)))

(declare-fun bs!857122 () Bool)

(assert (= bs!857122 (and d!1393270 d!1392900)))

(assert (=> bs!857122 (= lambda!172604 lambda!172510)))

(declare-fun bs!857123 () Bool)

(assert (= bs!857123 (and d!1393270 d!1392542)))

(assert (=> bs!857123 (= lambda!172604 lambda!172442)))

(declare-fun bs!857124 () Bool)

(assert (= bs!857124 (and d!1393270 d!1392534)))

(assert (=> bs!857124 (= lambda!172604 lambda!172439)))

(declare-fun bs!857125 () Bool)

(assert (= bs!857125 (and d!1393270 d!1392582)))

(assert (=> bs!857125 (= lambda!172604 lambda!172455)))

(declare-fun bs!857126 () Bool)

(assert (= bs!857126 (and d!1393270 d!1392526)))

(assert (=> bs!857126 (= lambda!172604 lambda!172437)))

(declare-fun bs!857127 () Bool)

(assert (= bs!857127 (and d!1393270 d!1393194)))

(assert (=> bs!857127 (= lambda!172604 lambda!172577)))

(declare-fun bs!857128 () Bool)

(assert (= bs!857128 (and d!1393270 d!1392530)))

(assert (=> bs!857128 (= lambda!172604 lambda!172438)))

(declare-fun bs!857129 () Bool)

(assert (= bs!857129 (and d!1393270 d!1392416)))

(assert (=> bs!857129 (= lambda!172604 lambda!172348)))

(declare-fun bs!857131 () Bool)

(assert (= bs!857131 (and d!1393270 d!1392446)))

(assert (=> bs!857131 (not (= lambda!172604 lambda!172351))))

(declare-fun bs!857133 () Bool)

(assert (= bs!857133 (and d!1393270 d!1392560)))

(assert (=> bs!857133 (= lambda!172604 lambda!172448)))

(declare-fun bs!857135 () Bool)

(assert (= bs!857135 (and d!1393270 start!447492)))

(assert (=> bs!857135 (= lambda!172604 lambda!172325)))

(declare-fun bs!857137 () Bool)

(assert (= bs!857137 (and d!1393270 d!1392516)))

(assert (=> bs!857137 (= lambda!172604 lambda!172434)))

(declare-fun bs!857139 () Bool)

(assert (= bs!857139 (and d!1393270 d!1392462)))

(assert (=> bs!857139 (= lambda!172604 lambda!172358)))

(declare-fun bs!857141 () Bool)

(assert (= bs!857141 (and d!1393270 d!1392468)))

(assert (=> bs!857141 (= lambda!172604 lambda!172359)))

(declare-fun bs!857143 () Bool)

(assert (= bs!857143 (and d!1393270 d!1393200)))

(assert (=> bs!857143 (= lambda!172604 lambda!172582)))

(declare-fun bs!857145 () Bool)

(assert (= bs!857145 (and d!1393270 d!1393068)))

(assert (=> bs!857145 (= lambda!172604 lambda!172547)))

(declare-fun bs!857147 () Bool)

(assert (= bs!857147 (and d!1393270 d!1392796)))

(assert (=> bs!857147 (= lambda!172604 lambda!172505)))

(declare-fun lt!1698266 () ListMap!3589)

(assert (=> d!1393270 (invariantList!1017 (toList!4328 lt!1698266))))

(declare-fun e!2816927 () ListMap!3589)

(assert (=> d!1393270 (= lt!1698266 e!2816927)))

(declare-fun c!771698 () Bool)

(assert (=> d!1393270 (= c!771698 ((_ is Cons!50647) (t!357733 (toList!4327 lt!1697001))))))

(assert (=> d!1393270 (forall!10263 (t!357733 (toList!4327 lt!1697001)) lambda!172604)))

(assert (=> d!1393270 (= (extractMap!1216 (t!357733 (toList!4327 lt!1697001))) lt!1698266)))

(declare-fun b!4521318 () Bool)

(assert (=> b!4521318 (= e!2816927 (addToMapMapFromBucket!687 (_2!28832 (h!56500 (t!357733 (toList!4327 lt!1697001)))) (extractMap!1216 (t!357733 (t!357733 (toList!4327 lt!1697001))))))))

(declare-fun b!4521319 () Bool)

(assert (=> b!4521319 (= e!2816927 (ListMap!3590 Nil!50646))))

(assert (= (and d!1393270 c!771698) b!4521318))

(assert (= (and d!1393270 (not c!771698)) b!4521319))

(declare-fun m!5270567 () Bool)

(assert (=> d!1393270 m!5270567))

(declare-fun m!5270569 () Bool)

(assert (=> d!1393270 m!5270569))

(declare-fun m!5270571 () Bool)

(assert (=> b!4521318 m!5270571))

(assert (=> b!4521318 m!5270571))

(declare-fun m!5270573 () Bool)

(assert (=> b!4521318 m!5270573))

(assert (=> b!4519985 d!1393270))

(assert (=> d!1392576 d!1392536))

(declare-fun d!1393272 () Bool)

(assert (=> d!1393272 (eq!617 (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697024) (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697017))))

(assert (=> d!1393272 true))

(declare-fun _$16!221 () Unit!95040)

(assert (=> d!1393272 (= (choose!29524 lt!1697024 lt!1697017 (_2!28832 lt!1697023)) _$16!221)))

(declare-fun bs!857188 () Bool)

(assert (= bs!857188 d!1393272))

(assert (=> bs!857188 m!5267505))

(assert (=> bs!857188 m!5267515))

(assert (=> bs!857188 m!5267505))

(assert (=> bs!857188 m!5267515))

(assert (=> bs!857188 m!5268301))

(assert (=> d!1392576 d!1393272))

(assert (=> d!1392576 d!1392574))

(declare-fun d!1393274 () Bool)

(assert (=> d!1393274 (= (eq!617 (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697024) (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697017)) (= (content!8356 (toList!4328 (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697024))) (content!8356 (toList!4328 (addToMapMapFromBucket!687 (_2!28832 lt!1697023) lt!1697017)))))))

(declare-fun bs!857191 () Bool)

(assert (= bs!857191 d!1393274))

(declare-fun m!5270575 () Bool)

(assert (=> bs!857191 m!5270575))

(declare-fun m!5270577 () Bool)

(assert (=> bs!857191 m!5270577))

(assert (=> d!1392576 d!1393274))

(assert (=> d!1392576 d!1392478))

(declare-fun d!1393276 () Bool)

(declare-fun lt!1698267 () Bool)

(assert (=> d!1393276 (= lt!1698267 (select (content!8359 (toList!4327 lm!1477)) (h!56500 (toList!4327 lm!1477))))))

(declare-fun e!2816928 () Bool)

(assert (=> d!1393276 (= lt!1698267 e!2816928)))

(declare-fun res!1881766 () Bool)

(assert (=> d!1393276 (=> (not res!1881766) (not e!2816928))))

(assert (=> d!1393276 (= res!1881766 ((_ is Cons!50647) (toList!4327 lm!1477)))))

(assert (=> d!1393276 (= (contains!13373 (toList!4327 lm!1477) (h!56500 (toList!4327 lm!1477))) lt!1698267)))

(declare-fun b!4521320 () Bool)

(declare-fun e!2816929 () Bool)

(assert (=> b!4521320 (= e!2816928 e!2816929)))

(declare-fun res!1881767 () Bool)

(assert (=> b!4521320 (=> res!1881767 e!2816929)))

(assert (=> b!4521320 (= res!1881767 (= (h!56500 (toList!4327 lm!1477)) (h!56500 (toList!4327 lm!1477))))))

(declare-fun b!4521321 () Bool)

(assert (=> b!4521321 (= e!2816929 (contains!13373 (t!357733 (toList!4327 lm!1477)) (h!56500 (toList!4327 lm!1477))))))

(assert (= (and d!1393276 res!1881766) b!4521320))

(assert (= (and b!4521320 (not res!1881767)) b!4521321))

(assert (=> d!1393276 m!5268235))

(declare-fun m!5270579 () Bool)

(assert (=> d!1393276 m!5270579))

(declare-fun m!5270581 () Bool)

(assert (=> b!4521321 m!5270581))

(assert (=> b!4520104 d!1393276))

(declare-fun bm!315062 () Bool)

(declare-fun call!315067 () Bool)

(declare-fun e!2816933 () List!50773)

(assert (=> bm!315062 (= call!315067 (contains!13375 e!2816933 key!3287))))

(declare-fun c!771701 () Bool)

(declare-fun c!771700 () Bool)

(assert (=> bm!315062 (= c!771701 c!771700)))

(declare-fun b!4521322 () Bool)

(declare-fun e!2816934 () Unit!95040)

(declare-fun Unit!95356 () Unit!95040)

(assert (=> b!4521322 (= e!2816934 Unit!95356)))

(declare-fun b!4521323 () Bool)

(declare-fun e!2816935 () Unit!95040)

(declare-fun lt!1698270 () Unit!95040)

(assert (=> b!4521323 (= e!2816935 lt!1698270)))

(declare-fun lt!1698275 () Unit!95040)

(assert (=> b!4521323 (= lt!1698275 (lemmaContainsKeyImpliesGetValueByKeyDefined!996 (toList!4328 (extractMap!1216 (toList!4327 lt!1697021))) key!3287))))

(assert (=> b!4521323 (isDefined!8399 (getValueByKey!1092 (toList!4328 (extractMap!1216 (toList!4327 lt!1697021))) key!3287))))

(declare-fun lt!1698272 () Unit!95040)

(assert (=> b!4521323 (= lt!1698272 lt!1698275)))

(assert (=> b!4521323 (= lt!1698270 (lemmaInListThenGetKeysListContains!461 (toList!4328 (extractMap!1216 (toList!4327 lt!1697021))) key!3287))))

(assert (=> b!4521323 call!315067))

(declare-fun b!4521324 () Bool)

(declare-fun e!2816931 () Bool)

(assert (=> b!4521324 (= e!2816931 (contains!13375 (keys!17594 (extractMap!1216 (toList!4327 lt!1697021))) key!3287))))

(declare-fun b!4521325 () Bool)

(assert (=> b!4521325 (= e!2816933 (getKeysList!465 (toList!4328 (extractMap!1216 (toList!4327 lt!1697021)))))))

(declare-fun b!4521326 () Bool)

(assert (=> b!4521326 false))

(declare-fun lt!1698273 () Unit!95040)

(declare-fun lt!1698269 () Unit!95040)

(assert (=> b!4521326 (= lt!1698273 lt!1698269)))

(assert (=> b!4521326 (containsKey!1783 (toList!4328 (extractMap!1216 (toList!4327 lt!1697021))) key!3287)))

(assert (=> b!4521326 (= lt!1698269 (lemmaInGetKeysListThenContainsKey!464 (toList!4328 (extractMap!1216 (toList!4327 lt!1697021))) key!3287))))

(declare-fun Unit!95357 () Unit!95040)

(assert (=> b!4521326 (= e!2816934 Unit!95357)))

(declare-fun b!4521327 () Bool)

(assert (=> b!4521327 (= e!2816935 e!2816934)))

(declare-fun c!771699 () Bool)

(assert (=> b!4521327 (= c!771699 call!315067)))

(declare-fun b!4521328 () Bool)

(declare-fun e!2816930 () Bool)

(assert (=> b!4521328 (= e!2816930 e!2816931)))

(declare-fun res!1881769 () Bool)

(assert (=> b!4521328 (=> (not res!1881769) (not e!2816931))))

(assert (=> b!4521328 (= res!1881769 (isDefined!8399 (getValueByKey!1092 (toList!4328 (extractMap!1216 (toList!4327 lt!1697021))) key!3287)))))

(declare-fun d!1393278 () Bool)

(assert (=> d!1393278 e!2816930))

(declare-fun res!1881768 () Bool)

(assert (=> d!1393278 (=> res!1881768 e!2816930)))

(declare-fun e!2816932 () Bool)

(assert (=> d!1393278 (= res!1881768 e!2816932)))

(declare-fun res!1881770 () Bool)

(assert (=> d!1393278 (=> (not res!1881770) (not e!2816932))))

(declare-fun lt!1698268 () Bool)

(assert (=> d!1393278 (= res!1881770 (not lt!1698268))))

(declare-fun lt!1698274 () Bool)

(assert (=> d!1393278 (= lt!1698268 lt!1698274)))

(declare-fun lt!1698271 () Unit!95040)

(assert (=> d!1393278 (= lt!1698271 e!2816935)))

(assert (=> d!1393278 (= c!771700 lt!1698274)))

(assert (=> d!1393278 (= lt!1698274 (containsKey!1783 (toList!4328 (extractMap!1216 (toList!4327 lt!1697021))) key!3287))))

(assert (=> d!1393278 (= (contains!13372 (extractMap!1216 (toList!4327 lt!1697021)) key!3287) lt!1698268)))

(declare-fun b!4521329 () Bool)

(assert (=> b!4521329 (= e!2816932 (not (contains!13375 (keys!17594 (extractMap!1216 (toList!4327 lt!1697021))) key!3287)))))

(declare-fun b!4521330 () Bool)

(assert (=> b!4521330 (= e!2816933 (keys!17594 (extractMap!1216 (toList!4327 lt!1697021))))))

(assert (= (and d!1393278 c!771700) b!4521323))

(assert (= (and d!1393278 (not c!771700)) b!4521327))

(assert (= (and b!4521327 c!771699) b!4521326))

(assert (= (and b!4521327 (not c!771699)) b!4521322))

(assert (= (or b!4521323 b!4521327) bm!315062))

(assert (= (and bm!315062 c!771701) b!4521325))

(assert (= (and bm!315062 (not c!771701)) b!4521330))

(assert (= (and d!1393278 res!1881770) b!4521329))

(assert (= (and d!1393278 (not res!1881768)) b!4521328))

(assert (= (and b!4521328 res!1881769) b!4521324))

(declare-fun m!5270583 () Bool)

(assert (=> d!1393278 m!5270583))

(declare-fun m!5270585 () Bool)

(assert (=> b!4521328 m!5270585))

(assert (=> b!4521328 m!5270585))

(declare-fun m!5270587 () Bool)

(assert (=> b!4521328 m!5270587))

(assert (=> b!4521330 m!5267557))

(assert (=> b!4521330 m!5269123))

(declare-fun m!5270589 () Bool)

(assert (=> bm!315062 m!5270589))

(assert (=> b!4521329 m!5267557))

(assert (=> b!4521329 m!5269123))

(assert (=> b!4521329 m!5269123))

(declare-fun m!5270591 () Bool)

(assert (=> b!4521329 m!5270591))

(assert (=> b!4521324 m!5267557))

(assert (=> b!4521324 m!5269123))

(assert (=> b!4521324 m!5269123))

(assert (=> b!4521324 m!5270591))

(assert (=> b!4521326 m!5270583))

(declare-fun m!5270593 () Bool)

(assert (=> b!4521326 m!5270593))

(declare-fun m!5270595 () Bool)

(assert (=> b!4521325 m!5270595))

(declare-fun m!5270597 () Bool)

(assert (=> b!4521323 m!5270597))

(assert (=> b!4521323 m!5270585))

(assert (=> b!4521323 m!5270585))

(assert (=> b!4521323 m!5270587))

(declare-fun m!5270599 () Bool)

(assert (=> b!4521323 m!5270599))

(assert (=> d!1392526 d!1393278))

(assert (=> d!1392526 d!1392534))

(declare-fun d!1393280 () Bool)

(assert (=> d!1393280 (contains!13372 (extractMap!1216 (toList!4327 lt!1697021)) key!3287)))

(assert (=> d!1393280 true))

(declare-fun _$34!682 () Unit!95040)

(assert (=> d!1393280 (= (choose!29517 lt!1697021 key!3287 hashF!1107) _$34!682)))

(declare-fun bs!857245 () Bool)

(assert (= bs!857245 d!1393280))

(assert (=> bs!857245 m!5267557))

(assert (=> bs!857245 m!5267557))

(assert (=> bs!857245 m!5268137))

(assert (=> d!1392526 d!1393280))

(declare-fun d!1393292 () Bool)

(declare-fun res!1881778 () Bool)

(declare-fun e!2816945 () Bool)

(assert (=> d!1393292 (=> res!1881778 e!2816945)))

(assert (=> d!1393292 (= res!1881778 ((_ is Nil!50647) (toList!4327 lt!1697021)))))

(assert (=> d!1393292 (= (forall!10263 (toList!4327 lt!1697021) lambda!172437) e!2816945)))

(declare-fun b!4521346 () Bool)

(declare-fun e!2816946 () Bool)

(assert (=> b!4521346 (= e!2816945 e!2816946)))

(declare-fun res!1881779 () Bool)

(assert (=> b!4521346 (=> (not res!1881779) (not e!2816946))))

(assert (=> b!4521346 (= res!1881779 (dynLambda!21163 lambda!172437 (h!56500 (toList!4327 lt!1697021))))))

(declare-fun b!4521347 () Bool)

(assert (=> b!4521347 (= e!2816946 (forall!10263 (t!357733 (toList!4327 lt!1697021)) lambda!172437))))

(assert (= (and d!1393292 (not res!1881778)) b!4521346))

(assert (= (and b!4521346 res!1881779) b!4521347))

(declare-fun b_lambda!155083 () Bool)

(assert (=> (not b_lambda!155083) (not b!4521346)))

(declare-fun m!5270651 () Bool)

(assert (=> b!4521346 m!5270651))

(declare-fun m!5270653 () Bool)

(assert (=> b!4521347 m!5270653))

(assert (=> d!1392526 d!1393292))

(declare-fun b!4521349 () Bool)

(declare-fun e!2816947 () Option!11113)

(declare-fun e!2816948 () Option!11113)

(assert (=> b!4521349 (= e!2816947 e!2816948)))

(declare-fun c!771707 () Bool)

(assert (=> b!4521349 (= c!771707 (and ((_ is Cons!50647) (toList!4327 lt!1697432)) (not (= (_1!28832 (h!56500 (toList!4327 lt!1697432))) (_1!28832 lt!1697006)))))))

(declare-fun b!4521350 () Bool)

(assert (=> b!4521350 (= e!2816948 (getValueByKey!1093 (t!357733 (toList!4327 lt!1697432)) (_1!28832 lt!1697006)))))

(declare-fun b!4521351 () Bool)

(assert (=> b!4521351 (= e!2816948 None!11112)))

(declare-fun b!4521348 () Bool)

(assert (=> b!4521348 (= e!2816947 (Some!11112 (_2!28832 (h!56500 (toList!4327 lt!1697432)))))))

(declare-fun d!1393294 () Bool)

(declare-fun c!771706 () Bool)

(assert (=> d!1393294 (= c!771706 (and ((_ is Cons!50647) (toList!4327 lt!1697432)) (= (_1!28832 (h!56500 (toList!4327 lt!1697432))) (_1!28832 lt!1697006))))))

(assert (=> d!1393294 (= (getValueByKey!1093 (toList!4327 lt!1697432) (_1!28832 lt!1697006)) e!2816947)))

(assert (= (and d!1393294 c!771706) b!4521348))

(assert (= (and d!1393294 (not c!771706)) b!4521349))

(assert (= (and b!4521349 c!771707) b!4521350))

(assert (= (and b!4521349 (not c!771707)) b!4521351))

(declare-fun m!5270655 () Bool)

(assert (=> b!4521350 m!5270655))

(assert (=> b!4520159 d!1393294))

(declare-fun d!1393296 () Bool)

(assert (=> d!1393296 (= (get!16588 (getValueByKey!1093 (toList!4327 lm!1477) hash!344)) (v!44712 (getValueByKey!1093 (toList!4327 lm!1477) hash!344)))))

(assert (=> d!1392546 d!1393296))

(assert (=> d!1392546 d!1392804))

(assert (=> b!4520077 d!1392940))

(assert (=> b!4520077 d!1392638))

(declare-fun b!4521353 () Bool)

(declare-fun e!2816949 () Option!11113)

(declare-fun e!2816950 () Option!11113)

(assert (=> b!4521353 (= e!2816949 e!2816950)))

(declare-fun c!771709 () Bool)

(assert (=> b!4521353 (= c!771709 (and ((_ is Cons!50647) (toList!4327 lt!1697164)) (not (= (_1!28832 (h!56500 (toList!4327 lt!1697164))) (_1!28832 lt!1697023)))))))

(declare-fun b!4521354 () Bool)

(assert (=> b!4521354 (= e!2816950 (getValueByKey!1093 (t!357733 (toList!4327 lt!1697164)) (_1!28832 lt!1697023)))))

(declare-fun b!4521355 () Bool)

(assert (=> b!4521355 (= e!2816950 None!11112)))

(declare-fun b!4521352 () Bool)

(assert (=> b!4521352 (= e!2816949 (Some!11112 (_2!28832 (h!56500 (toList!4327 lt!1697164)))))))

(declare-fun d!1393298 () Bool)

(declare-fun c!771708 () Bool)

(assert (=> d!1393298 (= c!771708 (and ((_ is Cons!50647) (toList!4327 lt!1697164)) (= (_1!28832 (h!56500 (toList!4327 lt!1697164))) (_1!28832 lt!1697023))))))

(assert (=> d!1393298 (= (getValueByKey!1093 (toList!4327 lt!1697164) (_1!28832 lt!1697023)) e!2816949)))

(assert (= (and d!1393298 c!771708) b!4521352))

(assert (= (and d!1393298 (not c!771708)) b!4521353))

(assert (= (and b!4521353 c!771709) b!4521354))

(assert (= (and b!4521353 (not c!771709)) b!4521355))

(declare-fun m!5270657 () Bool)

(assert (=> b!4521354 m!5270657))

(assert (=> b!4519980 d!1393298))

(assert (=> d!1392532 d!1393008))

(declare-fun d!1393300 () Bool)

(declare-fun res!1881780 () Bool)

(declare-fun e!2816951 () Bool)

(assert (=> d!1393300 (=> res!1881780 e!2816951)))

(assert (=> d!1393300 (= res!1881780 ((_ is Nil!50646) (ite c!771397 (toList!4328 lt!1697017) (toList!4328 lt!1697413))))))

(assert (=> d!1393300 (= (forall!10265 (ite c!771397 (toList!4328 lt!1697017) (toList!4328 lt!1697413)) (ite c!771397 lambda!172449 lambda!172451)) e!2816951)))

(declare-fun b!4521356 () Bool)

(declare-fun e!2816952 () Bool)

(assert (=> b!4521356 (= e!2816951 e!2816952)))

(declare-fun res!1881781 () Bool)

(assert (=> b!4521356 (=> (not res!1881781) (not e!2816952))))

(assert (=> b!4521356 (= res!1881781 (dynLambda!21164 (ite c!771397 lambda!172449 lambda!172451) (h!56499 (ite c!771397 (toList!4328 lt!1697017) (toList!4328 lt!1697413)))))))

(declare-fun b!4521357 () Bool)

(assert (=> b!4521357 (= e!2816952 (forall!10265 (t!357732 (ite c!771397 (toList!4328 lt!1697017) (toList!4328 lt!1697413))) (ite c!771397 lambda!172449 lambda!172451)))))

(assert (= (and d!1393300 (not res!1881780)) b!4521356))

(assert (= (and b!4521356 res!1881781) b!4521357))

(declare-fun b_lambda!155085 () Bool)

(assert (=> (not b_lambda!155085) (not b!4521356)))

(declare-fun m!5270679 () Bool)

(assert (=> b!4521356 m!5270679))

(declare-fun m!5270681 () Bool)

(assert (=> b!4521357 m!5270681))

(assert (=> bm!314927 d!1393300))

(assert (=> b!4520091 d!1393190))

(assert (=> b!4520091 d!1393012))

(assert (=> d!1392386 d!1392830))

(declare-fun d!1393304 () Bool)

(declare-fun res!1881782 () Bool)

(declare-fun e!2816953 () Bool)

(assert (=> d!1393304 (=> res!1881782 e!2816953)))

(assert (=> d!1393304 (= res!1881782 (and ((_ is Cons!50646) (_2!28832 (h!56500 (toList!4327 lt!1697021)))) (= (_1!28831 (h!56499 (_2!28832 (h!56500 (toList!4327 lt!1697021))))) key!3287)))))

(assert (=> d!1393304 (= (containsKey!1780 (_2!28832 (h!56500 (toList!4327 lt!1697021))) key!3287) e!2816953)))

(declare-fun b!4521360 () Bool)

(declare-fun e!2816954 () Bool)

(assert (=> b!4521360 (= e!2816953 e!2816954)))

(declare-fun res!1881783 () Bool)

(assert (=> b!4521360 (=> (not res!1881783) (not e!2816954))))

(assert (=> b!4521360 (= res!1881783 ((_ is Cons!50646) (_2!28832 (h!56500 (toList!4327 lt!1697021)))))))

(declare-fun b!4521361 () Bool)

(assert (=> b!4521361 (= e!2816954 (containsKey!1780 (t!357732 (_2!28832 (h!56500 (toList!4327 lt!1697021)))) key!3287))))

(assert (= (and d!1393304 (not res!1881782)) b!4521360))

(assert (= (and b!4521360 res!1881783) b!4521361))

(declare-fun m!5270683 () Bool)

(assert (=> b!4521361 m!5270683))

(assert (=> b!4520143 d!1393304))

(declare-fun d!1393306 () Bool)

(assert (=> d!1393306 (dynLambda!21163 lambda!172325 (h!56500 (toList!4327 lm!1477)))))

(assert (=> d!1393306 true))

(declare-fun _$7!1845 () Unit!95040)

(assert (=> d!1393306 (= (choose!29520 (toList!4327 lm!1477) lambda!172325 (h!56500 (toList!4327 lm!1477))) _$7!1845)))

(declare-fun b_lambda!155087 () Bool)

(assert (=> (not b_lambda!155087) (not d!1393306)))

(declare-fun bs!857261 () Bool)

(assert (= bs!857261 d!1393306))

(assert (=> bs!857261 m!5268201))

(assert (=> d!1392538 d!1393306))

(assert (=> d!1392538 d!1392562))

(declare-fun b!4521366 () Bool)

(declare-fun e!2816958 () Bool)

(declare-fun tp!1338100 () Bool)

(assert (=> b!4521366 (= e!2816958 (and tp_is_empty!27917 tp_is_empty!27919 tp!1338100))))

(assert (=> b!4520167 (= tp!1338093 e!2816958)))

(assert (= (and b!4520167 ((_ is Cons!50646) (t!357732 (t!357732 newBucket!178)))) b!4521366))

(declare-fun e!2816959 () Bool)

(declare-fun b!4521367 () Bool)

(declare-fun tp!1338101 () Bool)

(assert (=> b!4521367 (= e!2816959 (and tp_is_empty!27917 tp_is_empty!27919 tp!1338101))))

(assert (=> b!4520172 (= tp!1338098 e!2816959)))

(assert (= (and b!4520172 ((_ is Cons!50646) (_2!28832 (h!56500 (toList!4327 lm!1477))))) b!4521367))

(declare-fun b!4521370 () Bool)

(declare-fun e!2816961 () Bool)

(declare-fun tp!1338102 () Bool)

(declare-fun tp!1338103 () Bool)

(assert (=> b!4521370 (= e!2816961 (and tp!1338102 tp!1338103))))

(assert (=> b!4520172 (= tp!1338099 e!2816961)))

(assert (= (and b!4520172 ((_ is Cons!50647) (t!357733 (toList!4327 lm!1477)))) b!4521370))

(declare-fun b_lambda!155089 () Bool)

(assert (= b_lambda!155021 (or d!1392416 b_lambda!155089)))

(declare-fun bs!857274 () Bool)

(declare-fun d!1393312 () Bool)

(assert (= bs!857274 (and d!1393312 d!1392416)))

(assert (=> bs!857274 (= (dynLambda!21163 lambda!172348 (h!56500 (toList!4327 lm!1477))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lm!1477)))))))

(assert (=> bs!857274 m!5268341))

(assert (=> b!4520891 d!1393312))

(declare-fun b_lambda!155091 () Bool)

(assert (= b_lambda!155041 (or b!4520152 b_lambda!155091)))

(declare-fun bs!857276 () Bool)

(declare-fun d!1393314 () Bool)

(assert (= bs!857276 (and d!1393314 b!4520152)))

(assert (=> bs!857276 (= (dynLambda!21164 lambda!172451 (h!56499 (_2!28832 lt!1697023))) (contains!13372 lt!1697423 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> bs!857276 m!5268293))

(assert (=> d!1393112 d!1393314))

(declare-fun b_lambda!155093 () Bool)

(assert (= b_lambda!155025 (or d!1392530 b_lambda!155093)))

(declare-fun bs!857278 () Bool)

(declare-fun d!1393316 () Bool)

(assert (= bs!857278 (and d!1393316 d!1392530)))

(assert (=> bs!857278 (= (dynLambda!21163 lambda!172438 (h!56500 (t!357733 (toList!4327 lm!1477)))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))))))

(assert (=> bs!857278 m!5269687))

(assert (=> b!4520923 d!1393316))

(declare-fun b_lambda!155095 () Bool)

(assert (= b_lambda!155059 (or b!4520058 b_lambda!155095)))

(declare-fun bs!857281 () Bool)

(declare-fun d!1393318 () Bool)

(assert (= bs!857281 (and d!1393318 b!4520058)))

(assert (=> bs!857281 (= (dynLambda!21164 lambda!172432 (h!56499 (_2!28832 lt!1697023))) (contains!13372 lt!1697345 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(assert (=> bs!857281 m!5268113))

(assert (=> b!4521117 d!1393318))

(declare-fun b_lambda!155097 () Bool)

(assert (= b_lambda!155015 (or d!1392554 b_lambda!155097)))

(declare-fun bs!857284 () Bool)

(declare-fun d!1393320 () Bool)

(assert (= bs!857284 (and d!1393320 d!1392554)))

(assert (=> bs!857284 (= (dynLambda!21164 lambda!172445 (h!56499 newBucket!178)) (= (hash!2807 hashF!1107 (_1!28831 (h!56499 newBucket!178))) hash!344))))

(declare-fun m!5270693 () Bool)

(assert (=> bs!857284 m!5270693))

(assert (=> b!4520869 d!1393320))

(declare-fun b_lambda!155099 () Bool)

(assert (= b_lambda!155017 (or d!1392478 b_lambda!155099)))

(declare-fun bs!857285 () Bool)

(declare-fun d!1393322 () Bool)

(assert (= bs!857285 (and d!1393322 d!1392478)))

(assert (=> bs!857285 (= (dynLambda!21164 lambda!172433 (h!56499 (_2!28832 lt!1697023))) (contains!13372 lt!1697339 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun m!5270695 () Bool)

(assert (=> bs!857285 m!5270695))

(assert (=> b!4520877 d!1393322))

(declare-fun b_lambda!155101 () Bool)

(assert (= b_lambda!154971 (or start!447492 b_lambda!155101)))

(declare-fun bs!857286 () Bool)

(declare-fun d!1393324 () Bool)

(assert (= bs!857286 (and d!1393324 start!447492)))

(assert (=> bs!857286 (= (dynLambda!21163 lambda!172325 (h!56500 (t!357733 (toList!4327 lm!1477)))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (t!357733 (toList!4327 lm!1477))))))))

(assert (=> bs!857286 m!5269687))

(assert (=> b!4520521 d!1393324))

(declare-fun b_lambda!155103 () Bool)

(assert (= b_lambda!155055 (or start!447492 b_lambda!155103)))

(assert (=> d!1393162 d!1392590))

(declare-fun b_lambda!155105 () Bool)

(assert (= b_lambda!155063 (or b!4520058 b_lambda!155105)))

(declare-fun bs!857287 () Bool)

(declare-fun d!1393326 () Bool)

(assert (= bs!857287 (and d!1393326 b!4520058)))

(assert (=> bs!857287 (= (dynLambda!21164 lambda!172432 (h!56499 (toList!4328 lt!1697335))) (contains!13372 lt!1697345 (_1!28831 (h!56499 (toList!4328 lt!1697335)))))))

(declare-fun m!5270697 () Bool)

(assert (=> bs!857287 m!5270697))

(assert (=> b!4521122 d!1393326))

(declare-fun b_lambda!155107 () Bool)

(assert (= b_lambda!155065 (or d!1392574 b_lambda!155107)))

(declare-fun bs!857288 () Bool)

(declare-fun d!1393328 () Bool)

(assert (= bs!857288 (and d!1393328 d!1392574)))

(assert (=> bs!857288 (= (dynLambda!21164 lambda!172452 (h!56499 (toList!4328 lt!1697017))) (contains!13372 lt!1697417 (_1!28831 (h!56499 (toList!4328 lt!1697017)))))))

(declare-fun m!5270705 () Bool)

(assert (=> bs!857288 m!5270705))

(assert (=> b!4521124 d!1393328))

(declare-fun b_lambda!155109 () Bool)

(assert (= b_lambda!155001 (or b!4520058 b_lambda!155109)))

(declare-fun bs!857289 () Bool)

(declare-fun d!1393330 () Bool)

(assert (= bs!857289 (and d!1393330 b!4520058)))

(assert (=> bs!857289 (= (dynLambda!21164 lambda!172432 (h!56499 (toList!4328 lt!1697024))) (contains!13372 lt!1697345 (_1!28831 (h!56499 (toList!4328 lt!1697024)))))))

(declare-fun m!5270713 () Bool)

(assert (=> bs!857289 m!5270713))

(assert (=> b!4520729 d!1393330))

(declare-fun b_lambda!155111 () Bool)

(assert (= b_lambda!154999 (or b!4520152 b_lambda!155111)))

(declare-fun bs!857290 () Bool)

(declare-fun d!1393332 () Bool)

(assert (= bs!857290 (and d!1393332 b!4520152)))

(assert (=> bs!857290 (= (dynLambda!21164 lambda!172451 (h!56499 (toList!4328 lt!1697017))) (contains!13372 lt!1697423 (_1!28831 (h!56499 (toList!4328 lt!1697017)))))))

(declare-fun m!5270717 () Bool)

(assert (=> bs!857290 m!5270717))

(assert (=> b!4520723 d!1393332))

(declare-fun b_lambda!155113 () Bool)

(assert (= b_lambda!154959 (or d!1392560 b_lambda!155113)))

(declare-fun bs!857291 () Bool)

(declare-fun d!1393336 () Bool)

(assert (= bs!857291 (and d!1393336 d!1392560)))

(assert (=> bs!857291 (= (dynLambda!21163 lambda!172448 (h!56500 (toList!4327 lt!1697021))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lt!1697021)))))))

(assert (=> bs!857291 m!5270321))

(assert (=> b!4520245 d!1393336))

(declare-fun b_lambda!155115 () Bool)

(assert (= b_lambda!155045 (or b!4520152 b_lambda!155115)))

(declare-fun bs!857292 () Bool)

(declare-fun d!1393338 () Bool)

(assert (= bs!857292 (and d!1393338 b!4520152)))

(assert (=> bs!857292 (= (dynLambda!21164 lambda!172451 (h!56499 (toList!4328 lt!1697413))) (contains!13372 lt!1697423 (_1!28831 (h!56499 (toList!4328 lt!1697413)))))))

(declare-fun m!5270719 () Bool)

(assert (=> bs!857292 m!5270719))

(assert (=> b!4521042 d!1393338))

(declare-fun b_lambda!155117 () Bool)

(assert (= b_lambda!154981 (or d!1392574 b_lambda!155117)))

(declare-fun bs!857293 () Bool)

(declare-fun d!1393340 () Bool)

(assert (= bs!857293 (and d!1393340 d!1392574)))

(assert (=> bs!857293 (= (dynLambda!21164 lambda!172452 (h!56499 (_2!28832 lt!1697023))) (contains!13372 lt!1697417 (_1!28831 (h!56499 (_2!28832 lt!1697023)))))))

(declare-fun m!5270721 () Bool)

(assert (=> bs!857293 m!5270721))

(assert (=> b!4520606 d!1393340))

(declare-fun b_lambda!155119 () Bool)

(assert (= b_lambda!155071 (or d!1392542 b_lambda!155119)))

(declare-fun bs!857295 () Bool)

(declare-fun d!1393342 () Bool)

(assert (= bs!857295 (and d!1393342 d!1392542)))

(assert (=> bs!857295 (= (dynLambda!21163 lambda!172442 (h!56500 (toList!4327 lm!1477))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lm!1477)))))))

(assert (=> bs!857295 m!5268341))

(assert (=> b!4521237 d!1393342))

(declare-fun b_lambda!155121 () Bool)

(assert (= b_lambda!155047 (or b!4520152 b_lambda!155121)))

(declare-fun bs!857297 () Bool)

(declare-fun d!1393344 () Bool)

(assert (= bs!857297 (and d!1393344 b!4520152)))

(assert (=> bs!857297 (= (dynLambda!21164 lambda!172450 (h!56499 (toList!4328 lt!1697017))) (contains!13372 lt!1697017 (_1!28831 (h!56499 (toList!4328 lt!1697017)))))))

(declare-fun m!5270723 () Bool)

(assert (=> bs!857297 m!5270723))

(assert (=> b!4521044 d!1393344))

(declare-fun b_lambda!155123 () Bool)

(assert (= b_lambda!154983 (or d!1392582 b_lambda!155123)))

(declare-fun bs!857299 () Bool)

(declare-fun d!1393346 () Bool)

(assert (= bs!857299 (and d!1393346 d!1392582)))

(assert (=> bs!857299 (= (dynLambda!21163 lambda!172455 (h!56500 (toList!4327 lm!1477))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lm!1477)))))))

(assert (=> bs!857299 m!5268341))

(assert (=> b!4520648 d!1393346))

(declare-fun b_lambda!155125 () Bool)

(assert (= b_lambda!155073 (or d!1392462 b_lambda!155125)))

(declare-fun bs!857301 () Bool)

(declare-fun d!1393348 () Bool)

(assert (= bs!857301 (and d!1393348 d!1392462)))

(assert (=> bs!857301 (= (dynLambda!21163 lambda!172358 (h!56500 (toList!4327 lt!1697001))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lt!1697001)))))))

(assert (=> bs!857301 m!5270535))

(assert (=> b!4521270 d!1393348))

(declare-fun b_lambda!155127 () Bool)

(assert (= b_lambda!155053 (or d!1392468 b_lambda!155127)))

(declare-fun bs!857304 () Bool)

(declare-fun d!1393350 () Bool)

(assert (= bs!857304 (and d!1393350 d!1392468)))

(assert (=> bs!857304 (= (dynLambda!21163 lambda!172359 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023)))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 (+!1538 lt!1697021 lt!1697023))))))))

(assert (=> bs!857304 m!5270235))

(assert (=> b!4521090 d!1393350))

(declare-fun b_lambda!155129 () Bool)

(assert (= b_lambda!154985 (or d!1392458 b_lambda!155129)))

(declare-fun bs!857306 () Bool)

(declare-fun d!1393352 () Bool)

(assert (= bs!857306 (and d!1393352 d!1392458)))

(assert (=> bs!857306 (= (dynLambda!21163 lambda!172357 (h!56500 (toList!4327 lt!1697021))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lt!1697021)))))))

(assert (=> bs!857306 m!5270321))

(assert (=> b!4520650 d!1393352))

(declare-fun b_lambda!155131 () Bool)

(assert (= b_lambda!155087 (or start!447492 b_lambda!155131)))

(assert (=> d!1393306 d!1392588))

(declare-fun b_lambda!155133 () Bool)

(assert (= b_lambda!155061 (or b!4520058 b_lambda!155133)))

(assert (=> d!1393178 d!1393318))

(declare-fun b_lambda!155135 () Bool)

(assert (= b_lambda!155043 (or b!4520152 b_lambda!155135)))

(assert (=> b!4521040 d!1393314))

(declare-fun b_lambda!155137 () Bool)

(assert (= b_lambda!155083 (or d!1392526 b_lambda!155137)))

(declare-fun bs!857309 () Bool)

(declare-fun d!1393354 () Bool)

(assert (= bs!857309 (and d!1393354 d!1392526)))

(assert (=> bs!857309 (= (dynLambda!21163 lambda!172437 (h!56500 (toList!4327 lt!1697021))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lt!1697021)))))))

(assert (=> bs!857309 m!5270321))

(assert (=> b!4521346 d!1393354))

(declare-fun b_lambda!155139 () Bool)

(assert (= b_lambda!155067 (or d!1392478 b_lambda!155139)))

(declare-fun bs!857311 () Bool)

(declare-fun d!1393356 () Bool)

(assert (= bs!857311 (and d!1393356 d!1392478)))

(assert (=> bs!857311 (= (dynLambda!21164 lambda!172433 (h!56499 (toList!4328 lt!1697024))) (contains!13372 lt!1697339 (_1!28831 (h!56499 (toList!4328 lt!1697024)))))))

(declare-fun m!5270725 () Bool)

(assert (=> bs!857311 m!5270725))

(assert (=> b!4521126 d!1393356))

(declare-fun b_lambda!155141 () Bool)

(assert (= b_lambda!154973 (or d!1392516 b_lambda!155141)))

(declare-fun bs!857313 () Bool)

(declare-fun d!1393358 () Bool)

(assert (= bs!857313 (and d!1393358 d!1392516)))

(assert (=> bs!857313 (= (dynLambda!21163 lambda!172434 (h!56500 (toList!4327 lt!1697011))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lt!1697011)))))))

(assert (=> bs!857313 m!5268827))

(assert (=> b!4520534 d!1393358))

(declare-fun b_lambda!155143 () Bool)

(assert (= b_lambda!155057 (or b!4520058 b_lambda!155143)))

(declare-fun bs!857316 () Bool)

(declare-fun d!1393360 () Bool)

(assert (= bs!857316 (and d!1393360 b!4520058)))

(assert (=> bs!857316 (= (dynLambda!21164 lambda!172431 (h!56499 (toList!4328 lt!1697024))) (contains!13372 lt!1697024 (_1!28831 (h!56499 (toList!4328 lt!1697024)))))))

(declare-fun m!5270727 () Bool)

(assert (=> bs!857316 m!5270727))

(assert (=> b!4521115 d!1393360))

(declare-fun b_lambda!155145 () Bool)

(assert (= b_lambda!155069 (or d!1392534 b_lambda!155145)))

(declare-fun bs!857318 () Bool)

(declare-fun d!1393362 () Bool)

(assert (= bs!857318 (and d!1393362 d!1392534)))

(assert (=> bs!857318 (= (dynLambda!21163 lambda!172439 (h!56500 (toList!4327 lt!1697021))) (noDuplicateKeys!1160 (_2!28832 (h!56500 (toList!4327 lt!1697021)))))))

(assert (=> bs!857318 m!5270321))

(assert (=> b!4521128 d!1393362))

(declare-fun b_lambda!155147 () Bool)

(assert (= b_lambda!155005 (or d!1392446 b_lambda!155147)))

(declare-fun bs!857320 () Bool)

(declare-fun d!1393364 () Bool)

(assert (= bs!857320 (and d!1393364 d!1392446)))

(assert (=> bs!857320 (= (dynLambda!21163 lambda!172351 (h!56500 (toList!4327 lm!1477))) (allKeysSameHash!1014 (_2!28832 (h!56500 (toList!4327 lm!1477))) (_1!28832 (h!56500 (toList!4327 lm!1477))) hashF!1107))))

(declare-fun m!5270729 () Bool)

(assert (=> bs!857320 m!5270729))

(assert (=> b!4520733 d!1393364))

(check-sat (not b_lambda!154955) (not b!4520341) (not d!1393226) (not b!4520933) (not b!4521211) (not b!4520209) (not d!1393012) (not bm!314957) (not b!4521104) (not b!4520892) (not b_lambda!155147) (not d!1392948) (not b!4521033) (not b_lambda!155093) (not d!1393178) (not b!4521015) (not b!4520603) (not b!4520637) (not d!1393170) (not b!4521267) (not d!1392766) (not bs!857291) (not b!4520413) (not b!4520649) (not b!4521347) (not b!4520575) (not d!1392874) (not b!4521029) (not d!1393010) (not b!4521136) (not bm!314994) (not bm!315023) (not d!1393224) (not d!1393046) (not d!1393218) (not b!4521071) (not d!1392710) (not bm!315001) (not b!4520537) (not d!1393062) (not d!1393140) (not b!4520730) (not b!4521357) (not d!1393078) (not b!4520339) (not b!4521323) (not b!4521205) (not d!1393050) (not b_lambda!155085) (not b!4520605) (not b!4521330) (not d!1393276) (not b_lambda!155099) (not b!4520338) (not d!1392762) (not b!4520286) (not b!4520538) (not b!4520528) (not b_lambda!155109) (not d!1393278) (not b!4520344) (not d!1392850) (not b!4520694) (not b!4521099) (not b!4521366) (not b!4520736) (not b!4521127) (not b!4520720) (not b!4521208) (not b!4520943) (not d!1392956) (not bm!314958) (not b!4521203) (not b!4521318) (not b!4520846) (not b!4520494) (not b_lambda!155143) (not bs!857289) (not b!4520569) (not b!4520841) (not b!4520879) (not bm!315052) (not b!4520224) (not b_lambda!155091) (not d!1392680) (not d!1392774) (not b!4521181) (not b_lambda!155119) (not b!4520935) (not d!1393166) (not d!1392904) (not b!4520853) (not b!4521107) (not b!4520878) (not bs!857274) (not bm!315043) (not b_lambda!155139) (not d!1393020) (not b!4520486) (not b!4520928) (not b_lambda!155137) (not b!4520428) (not bm!314970) (not b!4520608) (not d!1393142) (not b!4520882) (not bs!857313) (not d!1392900) (not d!1393280) (not d!1392796) (not d!1392656) (not d!1392844) (not b!4520870) (not b!4520726) (not d!1393068) (not b!4521266) (not b!4520535) (not bm!315019) (not b!4520901) (not d!1392958) (not b!4521245) (not b!4521098) (not d!1392630) (not d!1392818) (not b!4520522) (not d!1393028) (not bs!857320) (not b_lambda!155003) (not b!4520888) (not b!4521268) (not d!1393030) (not d!1393158) (not bm!314965) (not b!4520691) (not bm!315055) (not b_lambda!155133) (not b!4520618) (not b!4521370) (not b!4521063) (not b!4520627) (not bm!314990) (not b!4520742) (not b!4520724) (not b!4520719) (not b!4520610) (not b!4521102) (not b!4521095) (not b!4520739) (not b!4520855) (not b!4521111) (not d!1392832) (not bs!857304) (not d!1393186) (not b!4521017) (not bm!315058) (not bm!315000) (not b!4521055) (not d!1392632) (not b!4520612) (not b!4521100) (not b!4521110) (not bm!315027) (not b!4521178) tp_is_empty!27919 (not b!4521103) (not bm!315003) (not b!4521350) (not b!4521043) (not b!4520898) (not d!1393146) (not d!1392940) (not b!4520887) (not bm!315025) (not b!4521177) (not b_lambda!155097) (not b_lambda!155127) (not bm!314999) (not bm!315008) (not b!4520883) (not bs!857278) (not b!4520930) (not b!4521019) (not b!4521328) (not b!4521175) (not b!4521282) (not b!4520651) (not b!4521018) (not b!4520847) (not d!1393164) (not bm!315062) (not bm!315024) (not b!4520851) (not bs!857276) (not b!4520246) (not b!4520741) (not d!1393034) (not b!4521114) (not d!1393056) (not d!1392600) (not b!4520944) (not b!4521325) (not d!1393168) (not b!4521037) (not b!4520929) (not d!1393038) (not b!4520524) (not b!4520536) (not d!1392902) tp_is_empty!27917 (not d!1393212) (not b!4520852) (not b!4521096) (not b!4520844) (not b!4520438) (not bm!314993) (not b!4520639) (not bm!315007) (not b_lambda!155095) (not d!1392840) (not b!4521034) (not b!4521121) (not b!4521058) (not bs!857295) (not d!1392670) (not d!1392610) (not b!4520876) (not b!4521329) (not b!4521265) (not b!4521326) (not b!4520697) (not b!4521220) (not b!4520632) (not b!4521285) (not b_lambda!155113) (not b!4520931) (not bs!857288) (not bs!857318) (not b!4521281) (not b!4520734) (not b!4521116) (not b_lambda!155101) (not b!4520738) (not b!4521361) (not b!4520680) (not b!4521271) (not b!4520230) (not bm!315057) (not b!4521256) (not b!4520609) (not b_lambda!155121) (not d!1392908) (not d!1393176) (not b_lambda!155123) (not b!4520488) (not bs!857299) (not bm!314956) (not b!4520881) (not bm!315022) (not b_lambda!155105) (not b!4521232) (not b!4521093) (not d!1392776) (not b!4520377) (not d!1393238) (not b!4520269) (not b!4520699) (not b_lambda!155089) (not d!1393048) (not b!4520634) (not b!4520630) (not d!1393026) (not b!4521132) (not b!4521035) (not b!4520737) (not b!4520412) (not d!1392936) (not b!4520621) (not d!1392880) (not d!1392624) (not d!1393120) (not d!1392602) (not b_lambda!155107) (not b!4520926) (not b!4520267) (not b_lambda!155103) (not b!4520580) (not b!4521056) (not b!4521269) (not bs!857316) (not bs!857284) (not b!4521039) (not bm!315018) (not b!4520905) (not d!1392926) (not b!4520684) (not b!4521123) (not b!4521252) (not b!4520696) (not b!4520629) (not bs!857286) (not b!4520842) (not b!4521324) (not b!4520437) (not b_lambda!155131) (not b!4521057) (not d!1393066) (not d!1392812) (not bs!857281) (not d!1393124) (not b!4520597) (not b!4521030) (not d!1393190) (not b!4521108) (not b!4521066) (not b!4521133) (not b!4521119) (not b!4520633) (not bs!857297) (not bs!857306) (not d!1393214) (not d!1393144) (not d!1392714) (not b!4521041) (not b!4520732) (not b!4520236) (not b!4521032) (not b!4521068) (not d!1393208) (not b!4520865) (not b!4521105) (not d!1393192) (not d!1392684) (not b!4520216) (not b!4521214) (not b!4520698) (not b!4520619) (not b_lambda!155117) (not d!1392772) (not b!4520638) (not b!4520233) (not b!4521024) (not bm!314991) (not b!4520635) (not bm!314992) (not d!1393196) (not bm!315026) (not bs!857285) (not d!1393102) (not b!4521201) (not b!4520945) (not b!4520431) (not b!4521091) (not b!4521134) (not b!4520924) (not b!4521020) (not b_lambda!155141) (not b!4521045) (not d!1393122) (not bs!857290) (not b!4520516) (not b!4520617) (not bm!315042) (not b!4521254) (not d!1392756) (not b!4521060) (not b!4520867) (not d!1393194) (not b!4520900) (not b!4520561) (not b!4520708) (not d!1393272) (not b!4521065) (not bs!857293) (not b!4520728) (not b!4520282) (not b!4520682) (not bm!315028) (not b!4520683) (not bm!315056) (not bm!314995) (not b_lambda!154957) (not b!4520343) (not b!4520896) (not b!4520872) (not bs!857292) (not d!1393270) (not b!4521053) (not b!4521109) (not bs!857301) (not d!1392858) (not b_lambda!154953) (not b!4521212) (not b!4521023) (not b_lambda!155135) (not b_lambda!155019) (not d!1393274) (not b!4521112) (not b!4520370) (not b!4521129) (not b!4521354) (not bs!857311) (not d!1393112) (not bm!314964) (not b!4520425) (not bm!315006) (not b!4520903) (not b!4521022) (not b!4521250) (not b!4520902) (not b!4520265) (not b!4521125) (not b!4521131) (not b!4521094) (not b!4521118) (not d!1393234) (not b!4521253) (not d!1393222) (not b_lambda!155111) (not d!1392918) (not d!1392622) (not b!4521367) (not d!1393200) (not b!4520894) (not bs!857287) (not b!4521262) (not d!1393210) (not b!4521238) (not b!4521179) (not bm!315021) (not b!4520426) (not b!4520514) (not bm!315005) (not d!1392608) (not b!4521243) (not b!4520874) (not b!4520947) (not b!4521321) (not b!4521283) (not d!1392716) (not b_lambda!155115) (not d!1393204) (not b_lambda!155145) (not b!4521120) (not b!4520849) (not bm!315041) (not b!4520615) (not b!4520222) (not b!4520722) (not d!1392628) (not b!4520540) (not b_lambda!154951) (not b!4520885) (not b!4520866) (not b!4521070) (not b!4521230) (not b_lambda!155129) (not bs!857309) (not b_lambda!155125) (not b!4520607) (not b!4520284) (not b!4521210) (not bm!315004) (not b!4520743) (not b!4521038) (not b!4520414) (not bm!314952) (not d!1392846) (not d!1392770) (not b!4520868) (not b!4520703))
(check-sat)

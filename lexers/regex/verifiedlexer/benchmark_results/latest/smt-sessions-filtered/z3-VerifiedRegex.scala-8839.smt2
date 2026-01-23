; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472176 () Bool)

(assert start!472176)

(declare-fun tp!1344831 () Bool)

(declare-fun tp_is_empty!30413 () Bool)

(declare-fun b!4677913 () Bool)

(declare-fun e!2918635 () Bool)

(declare-fun tp_is_empty!30415 () Bool)

(assert (=> b!4677913 (= e!2918635 (and tp_is_empty!30413 tp_is_empty!30415 tp!1344831))))

(declare-fun b!4677914 () Bool)

(declare-fun res!1970785 () Bool)

(declare-fun e!2918644 () Bool)

(assert (=> b!4677914 (=> (not res!1970785) (not e!2918644))))

(declare-datatypes ((K!13600 0))(
  ( (K!13601 (val!19151 Int)) )
))
(declare-datatypes ((V!13846 0))(
  ( (V!13847 (val!19152 Int)) )
))
(declare-datatypes ((tuple2!53514 0))(
  ( (tuple2!53515 (_1!30051 K!13600) (_2!30051 V!13846)) )
))
(declare-datatypes ((List!52343 0))(
  ( (Nil!52219) (Cons!52219 (h!58422 tuple2!53514) (t!359489 List!52343)) )
))
(declare-fun newBucket!218 () List!52343)

(declare-fun noDuplicateKeys!1780 (List!52343) Bool)

(assert (=> b!4677914 (= res!1970785 (noDuplicateKeys!1780 newBucket!218))))

(declare-fun tp!1344830 () Bool)

(declare-fun b!4677915 () Bool)

(declare-fun e!2918640 () Bool)

(assert (=> b!4677915 (= e!2918640 (and tp_is_empty!30413 tp_is_empty!30415 tp!1344830))))

(declare-fun b!4677916 () Bool)

(declare-fun res!1970782 () Bool)

(declare-fun e!2918642 () Bool)

(assert (=> b!4677916 (=> (not res!1970782) (not e!2918642))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6149 0))(
  ( (HashableExt!6148 (__x!31852 Int)) )
))
(declare-fun hashF!1323 () Hashable!6149)

(declare-fun allKeysSameHash!1606 (List!52343 (_ BitVec 64) Hashable!6149) Bool)

(assert (=> b!4677916 (= res!1970782 (allKeysSameHash!1606 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4677917 () Bool)

(declare-fun e!2918638 () Bool)

(assert (=> b!4677917 (= e!2918642 e!2918638)))

(declare-fun res!1970796 () Bool)

(assert (=> b!4677917 (=> (not res!1970796) (not e!2918638))))

(declare-datatypes ((tuple2!53516 0))(
  ( (tuple2!53517 (_1!30052 (_ BitVec 64)) (_2!30052 List!52343)) )
))
(declare-datatypes ((List!52344 0))(
  ( (Nil!52220) (Cons!52220 (h!58423 tuple2!53516) (t!359490 List!52344)) )
))
(declare-datatypes ((ListLongMap!3979 0))(
  ( (ListLongMap!3980 (toList!5449 List!52344)) )
))
(declare-fun lm!2023 () ListLongMap!3979)

(declare-fun lt!1837401 () tuple2!53516)

(declare-fun head!9851 (List!52344) tuple2!53516)

(assert (=> b!4677917 (= res!1970796 (= (head!9851 (toList!5449 lm!2023)) lt!1837401))))

(declare-fun oldBucket!34 () List!52343)

(assert (=> b!4677917 (= lt!1837401 (tuple2!53517 hash!405 oldBucket!34))))

(declare-fun b!4677918 () Bool)

(declare-fun res!1970784 () Bool)

(declare-fun e!2918633 () Bool)

(assert (=> b!4677918 (=> res!1970784 e!2918633)))

(declare-fun lt!1837397 () List!52343)

(declare-fun key!4653 () K!13600)

(declare-fun containsKey!2917 (List!52343 K!13600) Bool)

(assert (=> b!4677918 (= res!1970784 (containsKey!2917 lt!1837397 key!4653))))

(declare-fun b!4677919 () Bool)

(declare-fun lambda!204013 () Int)

(declare-fun e!2918643 () Bool)

(declare-fun forall!11205 (List!52344 Int) Bool)

(assert (=> b!4677919 (= e!2918643 (forall!11205 (Cons!52220 lt!1837401 (t!359490 (toList!5449 lm!2023))) lambda!204013))))

(declare-fun b!4677920 () Bool)

(declare-fun res!1970783 () Bool)

(assert (=> b!4677920 (=> (not res!1970783) (not e!2918644))))

(assert (=> b!4677920 (= res!1970783 (allKeysSameHash!1606 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1970786 () Bool)

(assert (=> start!472176 (=> (not res!1970786) (not e!2918644))))

(assert (=> start!472176 (= res!1970786 (forall!11205 (toList!5449 lm!2023) lambda!204013))))

(assert (=> start!472176 e!2918644))

(declare-fun e!2918636 () Bool)

(declare-fun inv!67474 (ListLongMap!3979) Bool)

(assert (=> start!472176 (and (inv!67474 lm!2023) e!2918636)))

(assert (=> start!472176 tp_is_empty!30413))

(assert (=> start!472176 e!2918635))

(assert (=> start!472176 true))

(assert (=> start!472176 e!2918640))

(declare-fun b!4677921 () Bool)

(declare-fun res!1970790 () Bool)

(assert (=> b!4677921 (=> (not res!1970790) (not e!2918644))))

(assert (=> b!4677921 (= res!1970790 (noDuplicateKeys!1780 oldBucket!34))))

(declare-fun b!4677922 () Bool)

(declare-fun res!1970799 () Bool)

(assert (=> b!4677922 (=> (not res!1970799) (not e!2918638))))

(get-info :version)

(assert (=> b!4677922 (= res!1970799 ((_ is Cons!52220) (toList!5449 lm!2023)))))

(declare-fun b!4677923 () Bool)

(declare-fun res!1970780 () Bool)

(assert (=> b!4677923 (=> (not res!1970780) (not e!2918644))))

(declare-fun removePairForKey!1375 (List!52343 K!13600) List!52343)

(assert (=> b!4677923 (= res!1970780 (= (removePairForKey!1375 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4677924 () Bool)

(assert (=> b!4677924 (= e!2918644 e!2918642)))

(declare-fun res!1970788 () Bool)

(assert (=> b!4677924 (=> (not res!1970788) (not e!2918642))))

(declare-datatypes ((ListMap!4813 0))(
  ( (ListMap!4814 (toList!5450 List!52343)) )
))
(declare-fun lt!1837393 () ListMap!4813)

(declare-fun contains!15356 (ListMap!4813 K!13600) Bool)

(assert (=> b!4677924 (= res!1970788 (contains!15356 lt!1837393 key!4653))))

(declare-fun extractMap!1806 (List!52344) ListMap!4813)

(assert (=> b!4677924 (= lt!1837393 (extractMap!1806 (toList!5449 lm!2023)))))

(declare-fun b!4677925 () Bool)

(declare-fun e!2918641 () Bool)

(declare-fun e!2918632 () Bool)

(assert (=> b!4677925 (= e!2918641 e!2918632)))

(declare-fun res!1970793 () Bool)

(assert (=> b!4677925 (=> res!1970793 e!2918632)))

(assert (=> b!4677925 (= res!1970793 (not (= lt!1837397 newBucket!218)))))

(declare-fun tail!8410 (List!52343) List!52343)

(assert (=> b!4677925 (= lt!1837397 (tail!8410 oldBucket!34))))

(declare-fun b!4677926 () Bool)

(declare-fun e!2918634 () Bool)

(assert (=> b!4677926 (= e!2918634 e!2918643)))

(declare-fun res!1970795 () Bool)

(assert (=> b!4677926 (=> res!1970795 e!2918643)))

(declare-fun lt!1837391 () ListMap!4813)

(declare-fun lt!1837400 () ListMap!4813)

(declare-fun -!644 (ListMap!4813 K!13600) ListMap!4813)

(assert (=> b!4677926 (= res!1970795 (not (= (-!644 lt!1837391 key!4653) lt!1837400)))))

(declare-fun +!2082 (ListMap!4813 tuple2!53514) ListMap!4813)

(assert (=> b!4677926 (= (-!644 (+!2082 lt!1837400 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34)))) key!4653) lt!1837400)))

(declare-datatypes ((Unit!121981 0))(
  ( (Unit!121982) )
))
(declare-fun lt!1837394 () Unit!121981)

(declare-fun addThenRemoveForNewKeyIsSame!35 (ListMap!4813 K!13600 V!13846) Unit!121981)

(assert (=> b!4677926 (= lt!1837394 (addThenRemoveForNewKeyIsSame!35 lt!1837400 key!4653 (_2!30051 (h!58422 oldBucket!34))))))

(declare-fun b!4677927 () Bool)

(declare-fun res!1970781 () Bool)

(assert (=> b!4677927 (=> res!1970781 e!2918633)))

(declare-fun lt!1837398 () ListMap!4813)

(assert (=> b!4677927 (= res!1970781 (not (= lt!1837400 lt!1837398)))))

(declare-fun b!4677928 () Bool)

(declare-fun e!2918639 () Bool)

(declare-fun e!2918637 () Bool)

(assert (=> b!4677928 (= e!2918639 e!2918637)))

(declare-fun res!1970787 () Bool)

(assert (=> b!4677928 (=> res!1970787 e!2918637)))

(declare-fun lt!1837392 () ListMap!4813)

(declare-fun addToMapMapFromBucket!1212 (List!52343 ListMap!4813) ListMap!4813)

(assert (=> b!4677928 (= res!1970787 (not (= lt!1837400 (addToMapMapFromBucket!1212 newBucket!218 lt!1837392))))))

(assert (=> b!4677928 (= lt!1837400 (addToMapMapFromBucket!1212 lt!1837397 lt!1837392))))

(declare-fun b!4677929 () Bool)

(assert (=> b!4677929 (= e!2918633 e!2918634)))

(declare-fun res!1970797 () Bool)

(assert (=> b!4677929 (=> res!1970797 e!2918634)))

(assert (=> b!4677929 (= res!1970797 (contains!15356 lt!1837400 key!4653))))

(assert (=> b!4677929 (not (contains!15356 lt!1837398 key!4653))))

(declare-fun lt!1837402 () List!52344)

(declare-fun lt!1837395 () Unit!121981)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!380 (ListLongMap!3979 K!13600 Hashable!6149) Unit!121981)

(assert (=> b!4677929 (= lt!1837395 (lemmaNotInItsHashBucketThenNotInMap!380 (ListLongMap!3980 lt!1837402) key!4653 hashF!1323))))

(declare-fun b!4677930 () Bool)

(assert (=> b!4677930 (= e!2918638 (not e!2918641))))

(declare-fun res!1970794 () Bool)

(assert (=> b!4677930 (=> res!1970794 e!2918641)))

(assert (=> b!4677930 (= res!1970794 (or (not ((_ is Cons!52219) oldBucket!34)) (not (= (_1!30051 (h!58422 oldBucket!34)) key!4653))))))

(assert (=> b!4677930 (= lt!1837393 (addToMapMapFromBucket!1212 (_2!30052 (h!58423 (toList!5449 lm!2023))) lt!1837392))))

(assert (=> b!4677930 (= lt!1837392 (extractMap!1806 (t!359490 (toList!5449 lm!2023))))))

(declare-fun tail!8411 (ListLongMap!3979) ListLongMap!3979)

(assert (=> b!4677930 (= (t!359490 (toList!5449 lm!2023)) (toList!5449 (tail!8411 lm!2023)))))

(declare-fun b!4677931 () Bool)

(declare-fun res!1970789 () Bool)

(assert (=> b!4677931 (=> (not res!1970789) (not e!2918642))))

(declare-fun allKeysSameHashInMap!1694 (ListLongMap!3979 Hashable!6149) Bool)

(assert (=> b!4677931 (= res!1970789 (allKeysSameHashInMap!1694 lm!2023 hashF!1323))))

(declare-fun b!4677932 () Bool)

(declare-fun res!1970791 () Bool)

(assert (=> b!4677932 (=> (not res!1970791) (not e!2918642))))

(declare-fun hash!3950 (Hashable!6149 K!13600) (_ BitVec 64))

(assert (=> b!4677932 (= res!1970791 (= (hash!3950 hashF!1323 key!4653) hash!405))))

(declare-fun b!4677933 () Bool)

(assert (=> b!4677933 (= e!2918637 e!2918633)))

(declare-fun res!1970798 () Bool)

(assert (=> b!4677933 (=> res!1970798 e!2918633)))

(declare-fun eq!969 (ListMap!4813 ListMap!4813) Bool)

(assert (=> b!4677933 (= res!1970798 (not (eq!969 lt!1837391 (addToMapMapFromBucket!1212 oldBucket!34 lt!1837392))))))

(assert (=> b!4677933 (= lt!1837391 (+!2082 lt!1837400 (h!58422 oldBucket!34)))))

(declare-fun lt!1837396 () tuple2!53514)

(assert (=> b!4677933 (eq!969 (addToMapMapFromBucket!1212 (Cons!52219 lt!1837396 lt!1837397) lt!1837392) (+!2082 lt!1837400 lt!1837396))))

(declare-fun lt!1837399 () Unit!121981)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!218 (tuple2!53514 List!52343 ListMap!4813) Unit!121981)

(assert (=> b!4677933 (= lt!1837399 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!218 lt!1837396 lt!1837397 lt!1837392))))

(declare-fun head!9852 (List!52343) tuple2!53514)

(assert (=> b!4677933 (= lt!1837396 (head!9852 oldBucket!34))))

(declare-fun b!4677934 () Bool)

(assert (=> b!4677934 (= e!2918632 e!2918639)))

(declare-fun res!1970792 () Bool)

(assert (=> b!4677934 (=> res!1970792 e!2918639)))

(assert (=> b!4677934 (= res!1970792 (not (= lt!1837398 (extractMap!1806 (Cons!52220 (tuple2!53517 hash!405 newBucket!218) (t!359490 (toList!5449 lm!2023)))))))))

(assert (=> b!4677934 (= lt!1837398 (extractMap!1806 lt!1837402))))

(assert (=> b!4677934 (= lt!1837402 (Cons!52220 (tuple2!53517 hash!405 lt!1837397) (t!359490 (toList!5449 lm!2023))))))

(declare-fun b!4677935 () Bool)

(declare-fun tp!1344829 () Bool)

(assert (=> b!4677935 (= e!2918636 tp!1344829)))

(assert (= (and start!472176 res!1970786) b!4677921))

(assert (= (and b!4677921 res!1970790) b!4677914))

(assert (= (and b!4677914 res!1970785) b!4677923))

(assert (= (and b!4677923 res!1970780) b!4677920))

(assert (= (and b!4677920 res!1970783) b!4677924))

(assert (= (and b!4677924 res!1970788) b!4677932))

(assert (= (and b!4677932 res!1970791) b!4677916))

(assert (= (and b!4677916 res!1970782) b!4677931))

(assert (= (and b!4677931 res!1970789) b!4677917))

(assert (= (and b!4677917 res!1970796) b!4677922))

(assert (= (and b!4677922 res!1970799) b!4677930))

(assert (= (and b!4677930 (not res!1970794)) b!4677925))

(assert (= (and b!4677925 (not res!1970793)) b!4677934))

(assert (= (and b!4677934 (not res!1970792)) b!4677928))

(assert (= (and b!4677928 (not res!1970787)) b!4677933))

(assert (= (and b!4677933 (not res!1970798)) b!4677918))

(assert (= (and b!4677918 (not res!1970784)) b!4677927))

(assert (= (and b!4677927 (not res!1970781)) b!4677929))

(assert (= (and b!4677929 (not res!1970797)) b!4677926))

(assert (= (and b!4677926 (not res!1970795)) b!4677919))

(assert (= start!472176 b!4677935))

(assert (= (and start!472176 ((_ is Cons!52219) oldBucket!34)) b!4677913))

(assert (= (and start!472176 ((_ is Cons!52219) newBucket!218)) b!4677915))

(declare-fun m!5572341 () Bool)

(assert (=> b!4677923 m!5572341))

(declare-fun m!5572343 () Bool)

(assert (=> b!4677917 m!5572343))

(declare-fun m!5572345 () Bool)

(assert (=> b!4677920 m!5572345))

(declare-fun m!5572347 () Bool)

(assert (=> b!4677931 m!5572347))

(declare-fun m!5572349 () Bool)

(assert (=> b!4677916 m!5572349))

(declare-fun m!5572351 () Bool)

(assert (=> b!4677914 m!5572351))

(declare-fun m!5572353 () Bool)

(assert (=> b!4677932 m!5572353))

(declare-fun m!5572355 () Bool)

(assert (=> b!4677921 m!5572355))

(declare-fun m!5572357 () Bool)

(assert (=> b!4677929 m!5572357))

(declare-fun m!5572359 () Bool)

(assert (=> b!4677929 m!5572359))

(declare-fun m!5572361 () Bool)

(assert (=> b!4677929 m!5572361))

(declare-fun m!5572363 () Bool)

(assert (=> b!4677926 m!5572363))

(declare-fun m!5572365 () Bool)

(assert (=> b!4677926 m!5572365))

(assert (=> b!4677926 m!5572365))

(declare-fun m!5572367 () Bool)

(assert (=> b!4677926 m!5572367))

(declare-fun m!5572369 () Bool)

(assert (=> b!4677926 m!5572369))

(declare-fun m!5572371 () Bool)

(assert (=> b!4677928 m!5572371))

(declare-fun m!5572373 () Bool)

(assert (=> b!4677928 m!5572373))

(declare-fun m!5572375 () Bool)

(assert (=> b!4677918 m!5572375))

(declare-fun m!5572377 () Bool)

(assert (=> b!4677919 m!5572377))

(declare-fun m!5572379 () Bool)

(assert (=> start!472176 m!5572379))

(declare-fun m!5572381 () Bool)

(assert (=> start!472176 m!5572381))

(declare-fun m!5572383 () Bool)

(assert (=> b!4677925 m!5572383))

(declare-fun m!5572385 () Bool)

(assert (=> b!4677934 m!5572385))

(declare-fun m!5572387 () Bool)

(assert (=> b!4677934 m!5572387))

(declare-fun m!5572389 () Bool)

(assert (=> b!4677924 m!5572389))

(declare-fun m!5572391 () Bool)

(assert (=> b!4677924 m!5572391))

(declare-fun m!5572393 () Bool)

(assert (=> b!4677933 m!5572393))

(declare-fun m!5572395 () Bool)

(assert (=> b!4677933 m!5572395))

(assert (=> b!4677933 m!5572395))

(declare-fun m!5572397 () Bool)

(assert (=> b!4677933 m!5572397))

(declare-fun m!5572399 () Bool)

(assert (=> b!4677933 m!5572399))

(declare-fun m!5572401 () Bool)

(assert (=> b!4677933 m!5572401))

(assert (=> b!4677933 m!5572399))

(assert (=> b!4677933 m!5572393))

(declare-fun m!5572403 () Bool)

(assert (=> b!4677933 m!5572403))

(declare-fun m!5572405 () Bool)

(assert (=> b!4677933 m!5572405))

(declare-fun m!5572407 () Bool)

(assert (=> b!4677933 m!5572407))

(declare-fun m!5572409 () Bool)

(assert (=> b!4677930 m!5572409))

(declare-fun m!5572411 () Bool)

(assert (=> b!4677930 m!5572411))

(declare-fun m!5572413 () Bool)

(assert (=> b!4677930 m!5572413))

(check-sat (not b!4677935) (not b!4677933) (not b!4677913) (not b!4677915) (not start!472176) tp_is_empty!30413 (not b!4677916) tp_is_empty!30415 (not b!4677931) (not b!4677918) (not b!4677921) (not b!4677934) (not b!4677920) (not b!4677917) (not b!4677925) (not b!4677923) (not b!4677929) (not b!4677919) (not b!4677932) (not b!4677924) (not b!4677930) (not b!4677928) (not b!4677914) (not b!4677926))
(check-sat)
(get-model)

(declare-fun d!1486818 () Bool)

(assert (=> d!1486818 true))

(assert (=> d!1486818 true))

(declare-fun lambda!204016 () Int)

(declare-fun forall!11207 (List!52343 Int) Bool)

(assert (=> d!1486818 (= (allKeysSameHash!1606 oldBucket!34 hash!405 hashF!1323) (forall!11207 oldBucket!34 lambda!204016))))

(declare-fun bs!1080705 () Bool)

(assert (= bs!1080705 d!1486818))

(declare-fun m!5572425 () Bool)

(assert (=> bs!1080705 m!5572425))

(assert (=> b!4677920 d!1486818))

(declare-fun bs!1080706 () Bool)

(declare-fun d!1486828 () Bool)

(assert (= bs!1080706 (and d!1486828 start!472176)))

(declare-fun lambda!204019 () Int)

(assert (=> bs!1080706 (not (= lambda!204019 lambda!204013))))

(assert (=> d!1486828 true))

(assert (=> d!1486828 (= (allKeysSameHashInMap!1694 lm!2023 hashF!1323) (forall!11205 (toList!5449 lm!2023) lambda!204019))))

(declare-fun bs!1080707 () Bool)

(assert (= bs!1080707 d!1486828))

(declare-fun m!5572427 () Bool)

(assert (=> bs!1080707 m!5572427))

(assert (=> b!4677931 d!1486828))

(declare-fun d!1486830 () Bool)

(declare-fun res!1970816 () Bool)

(declare-fun e!2918665 () Bool)

(assert (=> d!1486830 (=> res!1970816 e!2918665)))

(assert (=> d!1486830 (= res!1970816 ((_ is Nil!52220) (toList!5449 lm!2023)))))

(assert (=> d!1486830 (= (forall!11205 (toList!5449 lm!2023) lambda!204013) e!2918665)))

(declare-fun b!4677966 () Bool)

(declare-fun e!2918666 () Bool)

(assert (=> b!4677966 (= e!2918665 e!2918666)))

(declare-fun res!1970817 () Bool)

(assert (=> b!4677966 (=> (not res!1970817) (not e!2918666))))

(declare-fun dynLambda!21671 (Int tuple2!53516) Bool)

(assert (=> b!4677966 (= res!1970817 (dynLambda!21671 lambda!204013 (h!58423 (toList!5449 lm!2023))))))

(declare-fun b!4677967 () Bool)

(assert (=> b!4677967 (= e!2918666 (forall!11205 (t!359490 (toList!5449 lm!2023)) lambda!204013))))

(assert (= (and d!1486830 (not res!1970816)) b!4677966))

(assert (= (and b!4677966 res!1970817) b!4677967))

(declare-fun b_lambda!176599 () Bool)

(assert (=> (not b_lambda!176599) (not b!4677966)))

(declare-fun m!5572429 () Bool)

(assert (=> b!4677966 m!5572429))

(declare-fun m!5572431 () Bool)

(assert (=> b!4677967 m!5572431))

(assert (=> start!472176 d!1486830))

(declare-fun d!1486832 () Bool)

(declare-fun isStrictlySorted!608 (List!52344) Bool)

(assert (=> d!1486832 (= (inv!67474 lm!2023) (isStrictlySorted!608 (toList!5449 lm!2023)))))

(declare-fun bs!1080708 () Bool)

(assert (= bs!1080708 d!1486832))

(declare-fun m!5572433 () Bool)

(assert (=> bs!1080708 m!5572433))

(assert (=> start!472176 d!1486832))

(declare-fun bs!1080756 () Bool)

(declare-fun b!4678060 () Bool)

(assert (= bs!1080756 (and b!4678060 d!1486818)))

(declare-fun lambda!204096 () Int)

(assert (=> bs!1080756 (not (= lambda!204096 lambda!204016))))

(assert (=> b!4678060 true))

(declare-fun bs!1080757 () Bool)

(declare-fun b!4678062 () Bool)

(assert (= bs!1080757 (and b!4678062 d!1486818)))

(declare-fun lambda!204097 () Int)

(assert (=> bs!1080757 (not (= lambda!204097 lambda!204016))))

(declare-fun bs!1080758 () Bool)

(assert (= bs!1080758 (and b!4678062 b!4678060)))

(assert (=> bs!1080758 (= lambda!204097 lambda!204096)))

(assert (=> b!4678062 true))

(declare-fun lambda!204098 () Int)

(assert (=> bs!1080757 (not (= lambda!204098 lambda!204016))))

(declare-fun lt!1837621 () ListMap!4813)

(assert (=> bs!1080758 (= (= lt!1837621 lt!1837392) (= lambda!204098 lambda!204096))))

(assert (=> b!4678062 (= (= lt!1837621 lt!1837392) (= lambda!204098 lambda!204097))))

(assert (=> b!4678062 true))

(declare-fun bs!1080759 () Bool)

(declare-fun d!1486834 () Bool)

(assert (= bs!1080759 (and d!1486834 d!1486818)))

(declare-fun lambda!204099 () Int)

(assert (=> bs!1080759 (not (= lambda!204099 lambda!204016))))

(declare-fun bs!1080760 () Bool)

(assert (= bs!1080760 (and d!1486834 b!4678060)))

(declare-fun lt!1837618 () ListMap!4813)

(assert (=> bs!1080760 (= (= lt!1837618 lt!1837392) (= lambda!204099 lambda!204096))))

(declare-fun bs!1080761 () Bool)

(assert (= bs!1080761 (and d!1486834 b!4678062)))

(assert (=> bs!1080761 (= (= lt!1837618 lt!1837392) (= lambda!204099 lambda!204097))))

(assert (=> bs!1080761 (= (= lt!1837618 lt!1837621) (= lambda!204099 lambda!204098))))

(assert (=> d!1486834 true))

(declare-fun b!4678058 () Bool)

(declare-fun e!2918724 () Bool)

(declare-fun invariantList!1368 (List!52343) Bool)

(assert (=> b!4678058 (= e!2918724 (invariantList!1368 (toList!5450 lt!1837618)))))

(declare-fun bm!326889 () Bool)

(declare-fun call!326895 () Unit!121981)

(declare-fun lemmaContainsAllItsOwnKeys!656 (ListMap!4813) Unit!121981)

(assert (=> bm!326889 (= call!326895 (lemmaContainsAllItsOwnKeys!656 lt!1837392))))

(declare-fun b!4678059 () Bool)

(declare-fun e!2918723 () Bool)

(declare-fun call!326896 () Bool)

(assert (=> b!4678059 (= e!2918723 call!326896)))

(declare-fun e!2918722 () ListMap!4813)

(assert (=> b!4678060 (= e!2918722 lt!1837392)))

(declare-fun lt!1837619 () Unit!121981)

(assert (=> b!4678060 (= lt!1837619 call!326895)))

(assert (=> b!4678060 call!326896))

(declare-fun lt!1837625 () Unit!121981)

(assert (=> b!4678060 (= lt!1837625 lt!1837619)))

(declare-fun call!326894 () Bool)

(assert (=> b!4678060 call!326894))

(declare-fun lt!1837629 () Unit!121981)

(declare-fun Unit!122000 () Unit!121981)

(assert (=> b!4678060 (= lt!1837629 Unit!122000)))

(declare-fun lt!1837617 () ListMap!4813)

(declare-fun c!800319 () Bool)

(declare-fun bm!326890 () Bool)

(assert (=> bm!326890 (= call!326894 (forall!11207 (ite c!800319 (toList!5450 lt!1837392) (toList!5450 lt!1837617)) (ite c!800319 lambda!204096 lambda!204098)))))

(declare-fun b!4678061 () Bool)

(declare-fun res!1970860 () Bool)

(assert (=> b!4678061 (=> (not res!1970860) (not e!2918724))))

(assert (=> b!4678061 (= res!1970860 (forall!11207 (toList!5450 lt!1837392) lambda!204099))))

(assert (=> b!4678062 (= e!2918722 lt!1837621)))

(assert (=> b!4678062 (= lt!1837617 (+!2082 lt!1837392 (h!58422 (_2!30052 (h!58423 (toList!5449 lm!2023))))))))

(assert (=> b!4678062 (= lt!1837621 (addToMapMapFromBucket!1212 (t!359489 (_2!30052 (h!58423 (toList!5449 lm!2023)))) (+!2082 lt!1837392 (h!58422 (_2!30052 (h!58423 (toList!5449 lm!2023)))))))))

(declare-fun lt!1837624 () Unit!121981)

(assert (=> b!4678062 (= lt!1837624 call!326895)))

(assert (=> b!4678062 (forall!11207 (toList!5450 lt!1837392) lambda!204097)))

(declare-fun lt!1837614 () Unit!121981)

(assert (=> b!4678062 (= lt!1837614 lt!1837624)))

(assert (=> b!4678062 call!326894))

(declare-fun lt!1837615 () Unit!121981)

(declare-fun Unit!122001 () Unit!121981)

(assert (=> b!4678062 (= lt!1837615 Unit!122001)))

(assert (=> b!4678062 (forall!11207 (t!359489 (_2!30052 (h!58423 (toList!5449 lm!2023)))) lambda!204098)))

(declare-fun lt!1837628 () Unit!121981)

(declare-fun Unit!122002 () Unit!121981)

(assert (=> b!4678062 (= lt!1837628 Unit!122002)))

(declare-fun lt!1837611 () Unit!121981)

(declare-fun Unit!122003 () Unit!121981)

(assert (=> b!4678062 (= lt!1837611 Unit!122003)))

(declare-fun lt!1837627 () Unit!121981)

(declare-fun forallContained!3340 (List!52343 Int tuple2!53514) Unit!121981)

(assert (=> b!4678062 (= lt!1837627 (forallContained!3340 (toList!5450 lt!1837617) lambda!204098 (h!58422 (_2!30052 (h!58423 (toList!5449 lm!2023))))))))

(assert (=> b!4678062 (contains!15356 lt!1837617 (_1!30051 (h!58422 (_2!30052 (h!58423 (toList!5449 lm!2023))))))))

(declare-fun lt!1837623 () Unit!121981)

(declare-fun Unit!122004 () Unit!121981)

(assert (=> b!4678062 (= lt!1837623 Unit!122004)))

(assert (=> b!4678062 (contains!15356 lt!1837621 (_1!30051 (h!58422 (_2!30052 (h!58423 (toList!5449 lm!2023))))))))

(declare-fun lt!1837610 () Unit!121981)

(declare-fun Unit!122005 () Unit!121981)

(assert (=> b!4678062 (= lt!1837610 Unit!122005)))

(assert (=> b!4678062 (forall!11207 (_2!30052 (h!58423 (toList!5449 lm!2023))) lambda!204098)))

(declare-fun lt!1837630 () Unit!121981)

(declare-fun Unit!122006 () Unit!121981)

(assert (=> b!4678062 (= lt!1837630 Unit!122006)))

(assert (=> b!4678062 (forall!11207 (toList!5450 lt!1837617) lambda!204098)))

(declare-fun lt!1837616 () Unit!121981)

(declare-fun Unit!122007 () Unit!121981)

(assert (=> b!4678062 (= lt!1837616 Unit!122007)))

(declare-fun lt!1837620 () Unit!121981)

(declare-fun Unit!122008 () Unit!121981)

(assert (=> b!4678062 (= lt!1837620 Unit!122008)))

(declare-fun lt!1837612 () Unit!121981)

(declare-fun addForallContainsKeyThenBeforeAdding!655 (ListMap!4813 ListMap!4813 K!13600 V!13846) Unit!121981)

(assert (=> b!4678062 (= lt!1837612 (addForallContainsKeyThenBeforeAdding!655 lt!1837392 lt!1837621 (_1!30051 (h!58422 (_2!30052 (h!58423 (toList!5449 lm!2023))))) (_2!30051 (h!58422 (_2!30052 (h!58423 (toList!5449 lm!2023)))))))))

(assert (=> b!4678062 (forall!11207 (toList!5450 lt!1837392) lambda!204098)))

(declare-fun lt!1837622 () Unit!121981)

(assert (=> b!4678062 (= lt!1837622 lt!1837612)))

(assert (=> b!4678062 (forall!11207 (toList!5450 lt!1837392) lambda!204098)))

(declare-fun lt!1837626 () Unit!121981)

(declare-fun Unit!122012 () Unit!121981)

(assert (=> b!4678062 (= lt!1837626 Unit!122012)))

(declare-fun res!1970862 () Bool)

(assert (=> b!4678062 (= res!1970862 (forall!11207 (_2!30052 (h!58423 (toList!5449 lm!2023))) lambda!204098))))

(assert (=> b!4678062 (=> (not res!1970862) (not e!2918723))))

(assert (=> b!4678062 e!2918723))

(declare-fun lt!1837613 () Unit!121981)

(declare-fun Unit!122014 () Unit!121981)

(assert (=> b!4678062 (= lt!1837613 Unit!122014)))

(declare-fun bm!326891 () Bool)

(assert (=> bm!326891 (= call!326896 (forall!11207 (toList!5450 lt!1837392) (ite c!800319 lambda!204096 lambda!204098)))))

(assert (=> d!1486834 e!2918724))

(declare-fun res!1970861 () Bool)

(assert (=> d!1486834 (=> (not res!1970861) (not e!2918724))))

(assert (=> d!1486834 (= res!1970861 (forall!11207 (_2!30052 (h!58423 (toList!5449 lm!2023))) lambda!204099))))

(assert (=> d!1486834 (= lt!1837618 e!2918722)))

(assert (=> d!1486834 (= c!800319 ((_ is Nil!52219) (_2!30052 (h!58423 (toList!5449 lm!2023)))))))

(assert (=> d!1486834 (noDuplicateKeys!1780 (_2!30052 (h!58423 (toList!5449 lm!2023))))))

(assert (=> d!1486834 (= (addToMapMapFromBucket!1212 (_2!30052 (h!58423 (toList!5449 lm!2023))) lt!1837392) lt!1837618)))

(assert (= (and d!1486834 c!800319) b!4678060))

(assert (= (and d!1486834 (not c!800319)) b!4678062))

(assert (= (and b!4678062 res!1970862) b!4678059))

(assert (= (or b!4678060 b!4678062) bm!326889))

(assert (= (or b!4678060 b!4678062) bm!326890))

(assert (= (or b!4678060 b!4678059) bm!326891))

(assert (= (and d!1486834 res!1970861) b!4678061))

(assert (= (and b!4678061 res!1970860) b!4678058))

(declare-fun m!5572633 () Bool)

(assert (=> b!4678061 m!5572633))

(declare-fun m!5572635 () Bool)

(assert (=> bm!326891 m!5572635))

(declare-fun m!5572637 () Bool)

(assert (=> b!4678058 m!5572637))

(declare-fun m!5572639 () Bool)

(assert (=> bm!326889 m!5572639))

(declare-fun m!5572641 () Bool)

(assert (=> bm!326890 m!5572641))

(declare-fun m!5572643 () Bool)

(assert (=> b!4678062 m!5572643))

(declare-fun m!5572645 () Bool)

(assert (=> b!4678062 m!5572645))

(assert (=> b!4678062 m!5572643))

(declare-fun m!5572647 () Bool)

(assert (=> b!4678062 m!5572647))

(declare-fun m!5572649 () Bool)

(assert (=> b!4678062 m!5572649))

(declare-fun m!5572651 () Bool)

(assert (=> b!4678062 m!5572651))

(declare-fun m!5572653 () Bool)

(assert (=> b!4678062 m!5572653))

(declare-fun m!5572655 () Bool)

(assert (=> b!4678062 m!5572655))

(declare-fun m!5572657 () Bool)

(assert (=> b!4678062 m!5572657))

(declare-fun m!5572659 () Bool)

(assert (=> b!4678062 m!5572659))

(assert (=> b!4678062 m!5572653))

(assert (=> b!4678062 m!5572655))

(declare-fun m!5572661 () Bool)

(assert (=> b!4678062 m!5572661))

(declare-fun m!5572663 () Bool)

(assert (=> b!4678062 m!5572663))

(declare-fun m!5572665 () Bool)

(assert (=> d!1486834 m!5572665))

(declare-fun m!5572667 () Bool)

(assert (=> d!1486834 m!5572667))

(assert (=> b!4677930 d!1486834))

(declare-fun bs!1080795 () Bool)

(declare-fun d!1486862 () Bool)

(assert (= bs!1080795 (and d!1486862 start!472176)))

(declare-fun lambda!204106 () Int)

(assert (=> bs!1080795 (= lambda!204106 lambda!204013)))

(declare-fun bs!1080796 () Bool)

(assert (= bs!1080796 (and d!1486862 d!1486828)))

(assert (=> bs!1080796 (not (= lambda!204106 lambda!204019))))

(declare-fun lt!1837661 () ListMap!4813)

(assert (=> d!1486862 (invariantList!1368 (toList!5450 lt!1837661))))

(declare-fun e!2918731 () ListMap!4813)

(assert (=> d!1486862 (= lt!1837661 e!2918731)))

(declare-fun c!800323 () Bool)

(assert (=> d!1486862 (= c!800323 ((_ is Cons!52220) (t!359490 (toList!5449 lm!2023))))))

(assert (=> d!1486862 (forall!11205 (t!359490 (toList!5449 lm!2023)) lambda!204106)))

(assert (=> d!1486862 (= (extractMap!1806 (t!359490 (toList!5449 lm!2023))) lt!1837661)))

(declare-fun b!4678076 () Bool)

(assert (=> b!4678076 (= e!2918731 (addToMapMapFromBucket!1212 (_2!30052 (h!58423 (t!359490 (toList!5449 lm!2023)))) (extractMap!1806 (t!359490 (t!359490 (toList!5449 lm!2023))))))))

(declare-fun b!4678077 () Bool)

(assert (=> b!4678077 (= e!2918731 (ListMap!4814 Nil!52219))))

(assert (= (and d!1486862 c!800323) b!4678076))

(assert (= (and d!1486862 (not c!800323)) b!4678077))

(declare-fun m!5572727 () Bool)

(assert (=> d!1486862 m!5572727))

(declare-fun m!5572729 () Bool)

(assert (=> d!1486862 m!5572729))

(declare-fun m!5572731 () Bool)

(assert (=> b!4678076 m!5572731))

(assert (=> b!4678076 m!5572731))

(declare-fun m!5572733 () Bool)

(assert (=> b!4678076 m!5572733))

(assert (=> b!4677930 d!1486862))

(declare-fun d!1486876 () Bool)

(declare-fun tail!8412 (List!52344) List!52344)

(assert (=> d!1486876 (= (tail!8411 lm!2023) (ListLongMap!3980 (tail!8412 (toList!5449 lm!2023))))))

(declare-fun bs!1080798 () Bool)

(assert (= bs!1080798 d!1486876))

(declare-fun m!5572735 () Bool)

(assert (=> bs!1080798 m!5572735))

(assert (=> b!4677930 d!1486876))

(declare-fun d!1486878 () Bool)

(declare-fun hash!3951 (Hashable!6149 K!13600) (_ BitVec 64))

(assert (=> d!1486878 (= (hash!3950 hashF!1323 key!4653) (hash!3951 hashF!1323 key!4653))))

(declare-fun bs!1080799 () Bool)

(assert (= bs!1080799 d!1486878))

(declare-fun m!5572737 () Bool)

(assert (=> bs!1080799 m!5572737))

(assert (=> b!4677932 d!1486878))

(declare-fun d!1486880 () Bool)

(declare-fun res!1970872 () Bool)

(declare-fun e!2918736 () Bool)

(assert (=> d!1486880 (=> res!1970872 e!2918736)))

(assert (=> d!1486880 (= res!1970872 (not ((_ is Cons!52219) oldBucket!34)))))

(assert (=> d!1486880 (= (noDuplicateKeys!1780 oldBucket!34) e!2918736)))

(declare-fun b!4678086 () Bool)

(declare-fun e!2918737 () Bool)

(assert (=> b!4678086 (= e!2918736 e!2918737)))

(declare-fun res!1970873 () Bool)

(assert (=> b!4678086 (=> (not res!1970873) (not e!2918737))))

(assert (=> b!4678086 (= res!1970873 (not (containsKey!2917 (t!359489 oldBucket!34) (_1!30051 (h!58422 oldBucket!34)))))))

(declare-fun b!4678087 () Bool)

(assert (=> b!4678087 (= e!2918737 (noDuplicateKeys!1780 (t!359489 oldBucket!34)))))

(assert (= (and d!1486880 (not res!1970872)) b!4678086))

(assert (= (and b!4678086 res!1970873) b!4678087))

(declare-fun m!5572741 () Bool)

(assert (=> b!4678086 m!5572741))

(declare-fun m!5572743 () Bool)

(assert (=> b!4678087 m!5572743))

(assert (=> b!4677921 d!1486880))

(declare-fun bs!1080813 () Bool)

(declare-fun b!4678090 () Bool)

(assert (= bs!1080813 (and b!4678090 b!4678060)))

(declare-fun lambda!204110 () Int)

(assert (=> bs!1080813 (= lambda!204110 lambda!204096)))

(declare-fun bs!1080814 () Bool)

(assert (= bs!1080814 (and b!4678090 b!4678062)))

(assert (=> bs!1080814 (= (= lt!1837392 lt!1837621) (= lambda!204110 lambda!204098))))

(assert (=> bs!1080814 (= lambda!204110 lambda!204097)))

(declare-fun bs!1080815 () Bool)

(assert (= bs!1080815 (and b!4678090 d!1486834)))

(assert (=> bs!1080815 (= (= lt!1837392 lt!1837618) (= lambda!204110 lambda!204099))))

(declare-fun bs!1080816 () Bool)

(assert (= bs!1080816 (and b!4678090 d!1486818)))

(assert (=> bs!1080816 (not (= lambda!204110 lambda!204016))))

(assert (=> b!4678090 true))

(declare-fun bs!1080817 () Bool)

(declare-fun b!4678092 () Bool)

(assert (= bs!1080817 (and b!4678092 b!4678060)))

(declare-fun lambda!204111 () Int)

(assert (=> bs!1080817 (= lambda!204111 lambda!204096)))

(declare-fun bs!1080818 () Bool)

(assert (= bs!1080818 (and b!4678092 b!4678062)))

(assert (=> bs!1080818 (= (= lt!1837392 lt!1837621) (= lambda!204111 lambda!204098))))

(assert (=> bs!1080818 (= lambda!204111 lambda!204097)))

(declare-fun bs!1080819 () Bool)

(assert (= bs!1080819 (and b!4678092 d!1486834)))

(assert (=> bs!1080819 (= (= lt!1837392 lt!1837618) (= lambda!204111 lambda!204099))))

(declare-fun bs!1080820 () Bool)

(assert (= bs!1080820 (and b!4678092 b!4678090)))

(assert (=> bs!1080820 (= lambda!204111 lambda!204110)))

(declare-fun bs!1080821 () Bool)

(assert (= bs!1080821 (and b!4678092 d!1486818)))

(assert (=> bs!1080821 (not (= lambda!204111 lambda!204016))))

(assert (=> b!4678092 true))

(declare-fun lambda!204112 () Int)

(declare-fun lt!1837673 () ListMap!4813)

(assert (=> bs!1080817 (= (= lt!1837673 lt!1837392) (= lambda!204112 lambda!204096))))

(assert (=> bs!1080818 (= (= lt!1837673 lt!1837621) (= lambda!204112 lambda!204098))))

(assert (=> b!4678092 (= (= lt!1837673 lt!1837392) (= lambda!204112 lambda!204111))))

(assert (=> bs!1080818 (= (= lt!1837673 lt!1837392) (= lambda!204112 lambda!204097))))

(assert (=> bs!1080819 (= (= lt!1837673 lt!1837618) (= lambda!204112 lambda!204099))))

(assert (=> bs!1080820 (= (= lt!1837673 lt!1837392) (= lambda!204112 lambda!204110))))

(assert (=> bs!1080821 (not (= lambda!204112 lambda!204016))))

(assert (=> b!4678092 true))

(declare-fun bs!1080822 () Bool)

(declare-fun d!1486884 () Bool)

(assert (= bs!1080822 (and d!1486884 b!4678060)))

(declare-fun lambda!204113 () Int)

(declare-fun lt!1837670 () ListMap!4813)

(assert (=> bs!1080822 (= (= lt!1837670 lt!1837392) (= lambda!204113 lambda!204096))))

(declare-fun bs!1080823 () Bool)

(assert (= bs!1080823 (and d!1486884 b!4678092)))

(assert (=> bs!1080823 (= (= lt!1837670 lt!1837673) (= lambda!204113 lambda!204112))))

(declare-fun bs!1080824 () Bool)

(assert (= bs!1080824 (and d!1486884 b!4678062)))

(assert (=> bs!1080824 (= (= lt!1837670 lt!1837621) (= lambda!204113 lambda!204098))))

(assert (=> bs!1080823 (= (= lt!1837670 lt!1837392) (= lambda!204113 lambda!204111))))

(assert (=> bs!1080824 (= (= lt!1837670 lt!1837392) (= lambda!204113 lambda!204097))))

(declare-fun bs!1080825 () Bool)

(assert (= bs!1080825 (and d!1486884 d!1486834)))

(assert (=> bs!1080825 (= (= lt!1837670 lt!1837618) (= lambda!204113 lambda!204099))))

(declare-fun bs!1080826 () Bool)

(assert (= bs!1080826 (and d!1486884 b!4678090)))

(assert (=> bs!1080826 (= (= lt!1837670 lt!1837392) (= lambda!204113 lambda!204110))))

(declare-fun bs!1080827 () Bool)

(assert (= bs!1080827 (and d!1486884 d!1486818)))

(assert (=> bs!1080827 (not (= lambda!204113 lambda!204016))))

(assert (=> d!1486884 true))

(declare-fun b!4678088 () Bool)

(declare-fun e!2918740 () Bool)

(assert (=> b!4678088 (= e!2918740 (invariantList!1368 (toList!5450 lt!1837670)))))

(declare-fun bm!326895 () Bool)

(declare-fun call!326901 () Unit!121981)

(assert (=> bm!326895 (= call!326901 (lemmaContainsAllItsOwnKeys!656 lt!1837392))))

(declare-fun b!4678089 () Bool)

(declare-fun e!2918739 () Bool)

(declare-fun call!326902 () Bool)

(assert (=> b!4678089 (= e!2918739 call!326902)))

(declare-fun e!2918738 () ListMap!4813)

(assert (=> b!4678090 (= e!2918738 lt!1837392)))

(declare-fun lt!1837671 () Unit!121981)

(assert (=> b!4678090 (= lt!1837671 call!326901)))

(assert (=> b!4678090 call!326902))

(declare-fun lt!1837677 () Unit!121981)

(assert (=> b!4678090 (= lt!1837677 lt!1837671)))

(declare-fun call!326900 () Bool)

(assert (=> b!4678090 call!326900))

(declare-fun lt!1837681 () Unit!121981)

(declare-fun Unit!122022 () Unit!121981)

(assert (=> b!4678090 (= lt!1837681 Unit!122022)))

(declare-fun bm!326896 () Bool)

(declare-fun c!800324 () Bool)

(declare-fun lt!1837669 () ListMap!4813)

(assert (=> bm!326896 (= call!326900 (forall!11207 (ite c!800324 (toList!5450 lt!1837392) (toList!5450 lt!1837669)) (ite c!800324 lambda!204110 lambda!204112)))))

(declare-fun b!4678091 () Bool)

(declare-fun res!1970874 () Bool)

(assert (=> b!4678091 (=> (not res!1970874) (not e!2918740))))

(assert (=> b!4678091 (= res!1970874 (forall!11207 (toList!5450 lt!1837392) lambda!204113))))

(assert (=> b!4678092 (= e!2918738 lt!1837673)))

(assert (=> b!4678092 (= lt!1837669 (+!2082 lt!1837392 (h!58422 newBucket!218)))))

(assert (=> b!4678092 (= lt!1837673 (addToMapMapFromBucket!1212 (t!359489 newBucket!218) (+!2082 lt!1837392 (h!58422 newBucket!218))))))

(declare-fun lt!1837676 () Unit!121981)

(assert (=> b!4678092 (= lt!1837676 call!326901)))

(assert (=> b!4678092 (forall!11207 (toList!5450 lt!1837392) lambda!204111)))

(declare-fun lt!1837666 () Unit!121981)

(assert (=> b!4678092 (= lt!1837666 lt!1837676)))

(assert (=> b!4678092 call!326900))

(declare-fun lt!1837667 () Unit!121981)

(declare-fun Unit!122023 () Unit!121981)

(assert (=> b!4678092 (= lt!1837667 Unit!122023)))

(assert (=> b!4678092 (forall!11207 (t!359489 newBucket!218) lambda!204112)))

(declare-fun lt!1837680 () Unit!121981)

(declare-fun Unit!122024 () Unit!121981)

(assert (=> b!4678092 (= lt!1837680 Unit!122024)))

(declare-fun lt!1837663 () Unit!121981)

(declare-fun Unit!122025 () Unit!121981)

(assert (=> b!4678092 (= lt!1837663 Unit!122025)))

(declare-fun lt!1837679 () Unit!121981)

(assert (=> b!4678092 (= lt!1837679 (forallContained!3340 (toList!5450 lt!1837669) lambda!204112 (h!58422 newBucket!218)))))

(assert (=> b!4678092 (contains!15356 lt!1837669 (_1!30051 (h!58422 newBucket!218)))))

(declare-fun lt!1837675 () Unit!121981)

(declare-fun Unit!122026 () Unit!121981)

(assert (=> b!4678092 (= lt!1837675 Unit!122026)))

(assert (=> b!4678092 (contains!15356 lt!1837673 (_1!30051 (h!58422 newBucket!218)))))

(declare-fun lt!1837662 () Unit!121981)

(declare-fun Unit!122027 () Unit!121981)

(assert (=> b!4678092 (= lt!1837662 Unit!122027)))

(assert (=> b!4678092 (forall!11207 newBucket!218 lambda!204112)))

(declare-fun lt!1837682 () Unit!121981)

(declare-fun Unit!122028 () Unit!121981)

(assert (=> b!4678092 (= lt!1837682 Unit!122028)))

(assert (=> b!4678092 (forall!11207 (toList!5450 lt!1837669) lambda!204112)))

(declare-fun lt!1837668 () Unit!121981)

(declare-fun Unit!122029 () Unit!121981)

(assert (=> b!4678092 (= lt!1837668 Unit!122029)))

(declare-fun lt!1837672 () Unit!121981)

(declare-fun Unit!122030 () Unit!121981)

(assert (=> b!4678092 (= lt!1837672 Unit!122030)))

(declare-fun lt!1837664 () Unit!121981)

(assert (=> b!4678092 (= lt!1837664 (addForallContainsKeyThenBeforeAdding!655 lt!1837392 lt!1837673 (_1!30051 (h!58422 newBucket!218)) (_2!30051 (h!58422 newBucket!218))))))

(assert (=> b!4678092 (forall!11207 (toList!5450 lt!1837392) lambda!204112)))

(declare-fun lt!1837674 () Unit!121981)

(assert (=> b!4678092 (= lt!1837674 lt!1837664)))

(assert (=> b!4678092 (forall!11207 (toList!5450 lt!1837392) lambda!204112)))

(declare-fun lt!1837678 () Unit!121981)

(declare-fun Unit!122033 () Unit!121981)

(assert (=> b!4678092 (= lt!1837678 Unit!122033)))

(declare-fun res!1970876 () Bool)

(assert (=> b!4678092 (= res!1970876 (forall!11207 newBucket!218 lambda!204112))))

(assert (=> b!4678092 (=> (not res!1970876) (not e!2918739))))

(assert (=> b!4678092 e!2918739))

(declare-fun lt!1837665 () Unit!121981)

(declare-fun Unit!122035 () Unit!121981)

(assert (=> b!4678092 (= lt!1837665 Unit!122035)))

(declare-fun bm!326897 () Bool)

(assert (=> bm!326897 (= call!326902 (forall!11207 (toList!5450 lt!1837392) (ite c!800324 lambda!204110 lambda!204112)))))

(assert (=> d!1486884 e!2918740))

(declare-fun res!1970875 () Bool)

(assert (=> d!1486884 (=> (not res!1970875) (not e!2918740))))

(assert (=> d!1486884 (= res!1970875 (forall!11207 newBucket!218 lambda!204113))))

(assert (=> d!1486884 (= lt!1837670 e!2918738)))

(assert (=> d!1486884 (= c!800324 ((_ is Nil!52219) newBucket!218))))

(assert (=> d!1486884 (noDuplicateKeys!1780 newBucket!218)))

(assert (=> d!1486884 (= (addToMapMapFromBucket!1212 newBucket!218 lt!1837392) lt!1837670)))

(assert (= (and d!1486884 c!800324) b!4678090))

(assert (= (and d!1486884 (not c!800324)) b!4678092))

(assert (= (and b!4678092 res!1970876) b!4678089))

(assert (= (or b!4678090 b!4678092) bm!326895))

(assert (= (or b!4678090 b!4678092) bm!326896))

(assert (= (or b!4678090 b!4678089) bm!326897))

(assert (= (and d!1486884 res!1970875) b!4678091))

(assert (= (and b!4678091 res!1970874) b!4678088))

(declare-fun m!5572745 () Bool)

(assert (=> b!4678091 m!5572745))

(declare-fun m!5572747 () Bool)

(assert (=> bm!326897 m!5572747))

(declare-fun m!5572749 () Bool)

(assert (=> b!4678088 m!5572749))

(assert (=> bm!326895 m!5572639))

(declare-fun m!5572751 () Bool)

(assert (=> bm!326896 m!5572751))

(declare-fun m!5572753 () Bool)

(assert (=> b!4678092 m!5572753))

(declare-fun m!5572755 () Bool)

(assert (=> b!4678092 m!5572755))

(assert (=> b!4678092 m!5572753))

(declare-fun m!5572757 () Bool)

(assert (=> b!4678092 m!5572757))

(declare-fun m!5572759 () Bool)

(assert (=> b!4678092 m!5572759))

(declare-fun m!5572761 () Bool)

(assert (=> b!4678092 m!5572761))

(declare-fun m!5572763 () Bool)

(assert (=> b!4678092 m!5572763))

(declare-fun m!5572765 () Bool)

(assert (=> b!4678092 m!5572765))

(declare-fun m!5572767 () Bool)

(assert (=> b!4678092 m!5572767))

(declare-fun m!5572769 () Bool)

(assert (=> b!4678092 m!5572769))

(assert (=> b!4678092 m!5572763))

(assert (=> b!4678092 m!5572765))

(declare-fun m!5572771 () Bool)

(assert (=> b!4678092 m!5572771))

(declare-fun m!5572773 () Bool)

(assert (=> b!4678092 m!5572773))

(declare-fun m!5572775 () Bool)

(assert (=> d!1486884 m!5572775))

(assert (=> d!1486884 m!5572351))

(assert (=> b!4677928 d!1486884))

(declare-fun bs!1080828 () Bool)

(declare-fun b!4678097 () Bool)

(assert (= bs!1080828 (and b!4678097 b!4678060)))

(declare-fun lambda!204114 () Int)

(assert (=> bs!1080828 (= lambda!204114 lambda!204096)))

(declare-fun bs!1080829 () Bool)

(assert (= bs!1080829 (and b!4678097 b!4678092)))

(assert (=> bs!1080829 (= (= lt!1837392 lt!1837673) (= lambda!204114 lambda!204112))))

(assert (=> bs!1080829 (= lambda!204114 lambda!204111)))

(declare-fun bs!1080830 () Bool)

(assert (= bs!1080830 (and b!4678097 b!4678062)))

(assert (=> bs!1080830 (= lambda!204114 lambda!204097)))

(declare-fun bs!1080831 () Bool)

(assert (= bs!1080831 (and b!4678097 d!1486834)))

(assert (=> bs!1080831 (= (= lt!1837392 lt!1837618) (= lambda!204114 lambda!204099))))

(declare-fun bs!1080832 () Bool)

(assert (= bs!1080832 (and b!4678097 b!4678090)))

(assert (=> bs!1080832 (= lambda!204114 lambda!204110)))

(declare-fun bs!1080833 () Bool)

(assert (= bs!1080833 (and b!4678097 d!1486818)))

(assert (=> bs!1080833 (not (= lambda!204114 lambda!204016))))

(declare-fun bs!1080834 () Bool)

(assert (= bs!1080834 (and b!4678097 d!1486884)))

(assert (=> bs!1080834 (= (= lt!1837392 lt!1837670) (= lambda!204114 lambda!204113))))

(assert (=> bs!1080830 (= (= lt!1837392 lt!1837621) (= lambda!204114 lambda!204098))))

(assert (=> b!4678097 true))

(declare-fun bs!1080835 () Bool)

(declare-fun b!4678099 () Bool)

(assert (= bs!1080835 (and b!4678099 b!4678060)))

(declare-fun lambda!204115 () Int)

(assert (=> bs!1080835 (= lambda!204115 lambda!204096)))

(declare-fun bs!1080836 () Bool)

(assert (= bs!1080836 (and b!4678099 b!4678092)))

(assert (=> bs!1080836 (= (= lt!1837392 lt!1837673) (= lambda!204115 lambda!204112))))

(declare-fun bs!1080837 () Bool)

(assert (= bs!1080837 (and b!4678099 b!4678097)))

(assert (=> bs!1080837 (= lambda!204115 lambda!204114)))

(assert (=> bs!1080836 (= lambda!204115 lambda!204111)))

(declare-fun bs!1080838 () Bool)

(assert (= bs!1080838 (and b!4678099 b!4678062)))

(assert (=> bs!1080838 (= lambda!204115 lambda!204097)))

(declare-fun bs!1080839 () Bool)

(assert (= bs!1080839 (and b!4678099 d!1486834)))

(assert (=> bs!1080839 (= (= lt!1837392 lt!1837618) (= lambda!204115 lambda!204099))))

(declare-fun bs!1080840 () Bool)

(assert (= bs!1080840 (and b!4678099 b!4678090)))

(assert (=> bs!1080840 (= lambda!204115 lambda!204110)))

(declare-fun bs!1080841 () Bool)

(assert (= bs!1080841 (and b!4678099 d!1486818)))

(assert (=> bs!1080841 (not (= lambda!204115 lambda!204016))))

(declare-fun bs!1080842 () Bool)

(assert (= bs!1080842 (and b!4678099 d!1486884)))

(assert (=> bs!1080842 (= (= lt!1837392 lt!1837670) (= lambda!204115 lambda!204113))))

(assert (=> bs!1080838 (= (= lt!1837392 lt!1837621) (= lambda!204115 lambda!204098))))

(assert (=> b!4678099 true))

(declare-fun lt!1837696 () ListMap!4813)

(declare-fun lambda!204116 () Int)

(assert (=> bs!1080835 (= (= lt!1837696 lt!1837392) (= lambda!204116 lambda!204096))))

(assert (=> bs!1080836 (= (= lt!1837696 lt!1837673) (= lambda!204116 lambda!204112))))

(assert (=> bs!1080837 (= (= lt!1837696 lt!1837392) (= lambda!204116 lambda!204114))))

(assert (=> b!4678099 (= (= lt!1837696 lt!1837392) (= lambda!204116 lambda!204115))))

(assert (=> bs!1080836 (= (= lt!1837696 lt!1837392) (= lambda!204116 lambda!204111))))

(assert (=> bs!1080838 (= (= lt!1837696 lt!1837392) (= lambda!204116 lambda!204097))))

(assert (=> bs!1080839 (= (= lt!1837696 lt!1837618) (= lambda!204116 lambda!204099))))

(assert (=> bs!1080840 (= (= lt!1837696 lt!1837392) (= lambda!204116 lambda!204110))))

(assert (=> bs!1080841 (not (= lambda!204116 lambda!204016))))

(assert (=> bs!1080842 (= (= lt!1837696 lt!1837670) (= lambda!204116 lambda!204113))))

(assert (=> bs!1080838 (= (= lt!1837696 lt!1837621) (= lambda!204116 lambda!204098))))

(assert (=> b!4678099 true))

(declare-fun bs!1080843 () Bool)

(declare-fun d!1486886 () Bool)

(assert (= bs!1080843 (and d!1486886 b!4678060)))

(declare-fun lambda!204117 () Int)

(declare-fun lt!1837693 () ListMap!4813)

(assert (=> bs!1080843 (= (= lt!1837693 lt!1837392) (= lambda!204117 lambda!204096))))

(declare-fun bs!1080844 () Bool)

(assert (= bs!1080844 (and d!1486886 b!4678092)))

(assert (=> bs!1080844 (= (= lt!1837693 lt!1837673) (= lambda!204117 lambda!204112))))

(declare-fun bs!1080845 () Bool)

(assert (= bs!1080845 (and d!1486886 b!4678097)))

(assert (=> bs!1080845 (= (= lt!1837693 lt!1837392) (= lambda!204117 lambda!204114))))

(declare-fun bs!1080846 () Bool)

(assert (= bs!1080846 (and d!1486886 b!4678099)))

(assert (=> bs!1080846 (= (= lt!1837693 lt!1837392) (= lambda!204117 lambda!204115))))

(assert (=> bs!1080844 (= (= lt!1837693 lt!1837392) (= lambda!204117 lambda!204111))))

(declare-fun bs!1080847 () Bool)

(assert (= bs!1080847 (and d!1486886 b!4678062)))

(assert (=> bs!1080847 (= (= lt!1837693 lt!1837392) (= lambda!204117 lambda!204097))))

(declare-fun bs!1080848 () Bool)

(assert (= bs!1080848 (and d!1486886 d!1486834)))

(assert (=> bs!1080848 (= (= lt!1837693 lt!1837618) (= lambda!204117 lambda!204099))))

(declare-fun bs!1080849 () Bool)

(assert (= bs!1080849 (and d!1486886 b!4678090)))

(assert (=> bs!1080849 (= (= lt!1837693 lt!1837392) (= lambda!204117 lambda!204110))))

(assert (=> bs!1080846 (= (= lt!1837693 lt!1837696) (= lambda!204117 lambda!204116))))

(declare-fun bs!1080850 () Bool)

(assert (= bs!1080850 (and d!1486886 d!1486818)))

(assert (=> bs!1080850 (not (= lambda!204117 lambda!204016))))

(declare-fun bs!1080851 () Bool)

(assert (= bs!1080851 (and d!1486886 d!1486884)))

(assert (=> bs!1080851 (= (= lt!1837693 lt!1837670) (= lambda!204117 lambda!204113))))

(assert (=> bs!1080847 (= (= lt!1837693 lt!1837621) (= lambda!204117 lambda!204098))))

(assert (=> d!1486886 true))

(declare-fun b!4678095 () Bool)

(declare-fun e!2918745 () Bool)

(assert (=> b!4678095 (= e!2918745 (invariantList!1368 (toList!5450 lt!1837693)))))

(declare-fun bm!326898 () Bool)

(declare-fun call!326904 () Unit!121981)

(assert (=> bm!326898 (= call!326904 (lemmaContainsAllItsOwnKeys!656 lt!1837392))))

(declare-fun b!4678096 () Bool)

(declare-fun e!2918744 () Bool)

(declare-fun call!326905 () Bool)

(assert (=> b!4678096 (= e!2918744 call!326905)))

(declare-fun e!2918743 () ListMap!4813)

(assert (=> b!4678097 (= e!2918743 lt!1837392)))

(declare-fun lt!1837694 () Unit!121981)

(assert (=> b!4678097 (= lt!1837694 call!326904)))

(assert (=> b!4678097 call!326905))

(declare-fun lt!1837700 () Unit!121981)

(assert (=> b!4678097 (= lt!1837700 lt!1837694)))

(declare-fun call!326903 () Bool)

(assert (=> b!4678097 call!326903))

(declare-fun lt!1837704 () Unit!121981)

(declare-fun Unit!122044 () Unit!121981)

(assert (=> b!4678097 (= lt!1837704 Unit!122044)))

(declare-fun lt!1837692 () ListMap!4813)

(declare-fun bm!326899 () Bool)

(declare-fun c!800325 () Bool)

(assert (=> bm!326899 (= call!326903 (forall!11207 (ite c!800325 (toList!5450 lt!1837392) (toList!5450 lt!1837692)) (ite c!800325 lambda!204114 lambda!204116)))))

(declare-fun b!4678098 () Bool)

(declare-fun res!1970879 () Bool)

(assert (=> b!4678098 (=> (not res!1970879) (not e!2918745))))

(assert (=> b!4678098 (= res!1970879 (forall!11207 (toList!5450 lt!1837392) lambda!204117))))

(assert (=> b!4678099 (= e!2918743 lt!1837696)))

(assert (=> b!4678099 (= lt!1837692 (+!2082 lt!1837392 (h!58422 lt!1837397)))))

(assert (=> b!4678099 (= lt!1837696 (addToMapMapFromBucket!1212 (t!359489 lt!1837397) (+!2082 lt!1837392 (h!58422 lt!1837397))))))

(declare-fun lt!1837699 () Unit!121981)

(assert (=> b!4678099 (= lt!1837699 call!326904)))

(assert (=> b!4678099 (forall!11207 (toList!5450 lt!1837392) lambda!204115)))

(declare-fun lt!1837689 () Unit!121981)

(assert (=> b!4678099 (= lt!1837689 lt!1837699)))

(assert (=> b!4678099 call!326903))

(declare-fun lt!1837690 () Unit!121981)

(declare-fun Unit!122045 () Unit!121981)

(assert (=> b!4678099 (= lt!1837690 Unit!122045)))

(assert (=> b!4678099 (forall!11207 (t!359489 lt!1837397) lambda!204116)))

(declare-fun lt!1837703 () Unit!121981)

(declare-fun Unit!122046 () Unit!121981)

(assert (=> b!4678099 (= lt!1837703 Unit!122046)))

(declare-fun lt!1837686 () Unit!121981)

(declare-fun Unit!122047 () Unit!121981)

(assert (=> b!4678099 (= lt!1837686 Unit!122047)))

(declare-fun lt!1837702 () Unit!121981)

(assert (=> b!4678099 (= lt!1837702 (forallContained!3340 (toList!5450 lt!1837692) lambda!204116 (h!58422 lt!1837397)))))

(assert (=> b!4678099 (contains!15356 lt!1837692 (_1!30051 (h!58422 lt!1837397)))))

(declare-fun lt!1837698 () Unit!121981)

(declare-fun Unit!122048 () Unit!121981)

(assert (=> b!4678099 (= lt!1837698 Unit!122048)))

(assert (=> b!4678099 (contains!15356 lt!1837696 (_1!30051 (h!58422 lt!1837397)))))

(declare-fun lt!1837685 () Unit!121981)

(declare-fun Unit!122049 () Unit!121981)

(assert (=> b!4678099 (= lt!1837685 Unit!122049)))

(assert (=> b!4678099 (forall!11207 lt!1837397 lambda!204116)))

(declare-fun lt!1837705 () Unit!121981)

(declare-fun Unit!122050 () Unit!121981)

(assert (=> b!4678099 (= lt!1837705 Unit!122050)))

(assert (=> b!4678099 (forall!11207 (toList!5450 lt!1837692) lambda!204116)))

(declare-fun lt!1837691 () Unit!121981)

(declare-fun Unit!122051 () Unit!121981)

(assert (=> b!4678099 (= lt!1837691 Unit!122051)))

(declare-fun lt!1837695 () Unit!121981)

(declare-fun Unit!122052 () Unit!121981)

(assert (=> b!4678099 (= lt!1837695 Unit!122052)))

(declare-fun lt!1837687 () Unit!121981)

(assert (=> b!4678099 (= lt!1837687 (addForallContainsKeyThenBeforeAdding!655 lt!1837392 lt!1837696 (_1!30051 (h!58422 lt!1837397)) (_2!30051 (h!58422 lt!1837397))))))

(assert (=> b!4678099 (forall!11207 (toList!5450 lt!1837392) lambda!204116)))

(declare-fun lt!1837697 () Unit!121981)

(assert (=> b!4678099 (= lt!1837697 lt!1837687)))

(assert (=> b!4678099 (forall!11207 (toList!5450 lt!1837392) lambda!204116)))

(declare-fun lt!1837701 () Unit!121981)

(declare-fun Unit!122053 () Unit!121981)

(assert (=> b!4678099 (= lt!1837701 Unit!122053)))

(declare-fun res!1970881 () Bool)

(assert (=> b!4678099 (= res!1970881 (forall!11207 lt!1837397 lambda!204116))))

(assert (=> b!4678099 (=> (not res!1970881) (not e!2918744))))

(assert (=> b!4678099 e!2918744))

(declare-fun lt!1837688 () Unit!121981)

(declare-fun Unit!122054 () Unit!121981)

(assert (=> b!4678099 (= lt!1837688 Unit!122054)))

(declare-fun bm!326900 () Bool)

(assert (=> bm!326900 (= call!326905 (forall!11207 (toList!5450 lt!1837392) (ite c!800325 lambda!204114 lambda!204116)))))

(assert (=> d!1486886 e!2918745))

(declare-fun res!1970880 () Bool)

(assert (=> d!1486886 (=> (not res!1970880) (not e!2918745))))

(assert (=> d!1486886 (= res!1970880 (forall!11207 lt!1837397 lambda!204117))))

(assert (=> d!1486886 (= lt!1837693 e!2918743)))

(assert (=> d!1486886 (= c!800325 ((_ is Nil!52219) lt!1837397))))

(assert (=> d!1486886 (noDuplicateKeys!1780 lt!1837397)))

(assert (=> d!1486886 (= (addToMapMapFromBucket!1212 lt!1837397 lt!1837392) lt!1837693)))

(assert (= (and d!1486886 c!800325) b!4678097))

(assert (= (and d!1486886 (not c!800325)) b!4678099))

(assert (= (and b!4678099 res!1970881) b!4678096))

(assert (= (or b!4678097 b!4678099) bm!326898))

(assert (= (or b!4678097 b!4678099) bm!326899))

(assert (= (or b!4678097 b!4678096) bm!326900))

(assert (= (and d!1486886 res!1970880) b!4678098))

(assert (= (and b!4678098 res!1970879) b!4678095))

(declare-fun m!5572815 () Bool)

(assert (=> b!4678098 m!5572815))

(declare-fun m!5572817 () Bool)

(assert (=> bm!326900 m!5572817))

(declare-fun m!5572819 () Bool)

(assert (=> b!4678095 m!5572819))

(assert (=> bm!326898 m!5572639))

(declare-fun m!5572821 () Bool)

(assert (=> bm!326899 m!5572821))

(declare-fun m!5572823 () Bool)

(assert (=> b!4678099 m!5572823))

(declare-fun m!5572825 () Bool)

(assert (=> b!4678099 m!5572825))

(assert (=> b!4678099 m!5572823))

(declare-fun m!5572827 () Bool)

(assert (=> b!4678099 m!5572827))

(declare-fun m!5572829 () Bool)

(assert (=> b!4678099 m!5572829))

(declare-fun m!5572831 () Bool)

(assert (=> b!4678099 m!5572831))

(declare-fun m!5572833 () Bool)

(assert (=> b!4678099 m!5572833))

(declare-fun m!5572835 () Bool)

(assert (=> b!4678099 m!5572835))

(declare-fun m!5572837 () Bool)

(assert (=> b!4678099 m!5572837))

(declare-fun m!5572839 () Bool)

(assert (=> b!4678099 m!5572839))

(assert (=> b!4678099 m!5572833))

(assert (=> b!4678099 m!5572835))

(declare-fun m!5572841 () Bool)

(assert (=> b!4678099 m!5572841))

(declare-fun m!5572843 () Bool)

(assert (=> b!4678099 m!5572843))

(declare-fun m!5572845 () Bool)

(assert (=> d!1486886 m!5572845))

(declare-fun m!5572847 () Bool)

(assert (=> d!1486886 m!5572847))

(assert (=> b!4677928 d!1486886))

(declare-fun d!1486894 () Bool)

(assert (=> d!1486894 (= (head!9851 (toList!5449 lm!2023)) (h!58423 (toList!5449 lm!2023)))))

(assert (=> b!4677917 d!1486894))

(declare-fun d!1486896 () Bool)

(declare-fun res!1970886 () Bool)

(declare-fun e!2918749 () Bool)

(assert (=> d!1486896 (=> res!1970886 e!2918749)))

(assert (=> d!1486896 (= res!1970886 ((_ is Nil!52220) (Cons!52220 lt!1837401 (t!359490 (toList!5449 lm!2023)))))))

(assert (=> d!1486896 (= (forall!11205 (Cons!52220 lt!1837401 (t!359490 (toList!5449 lm!2023))) lambda!204013) e!2918749)))

(declare-fun b!4678104 () Bool)

(declare-fun e!2918750 () Bool)

(assert (=> b!4678104 (= e!2918749 e!2918750)))

(declare-fun res!1970887 () Bool)

(assert (=> b!4678104 (=> (not res!1970887) (not e!2918750))))

(assert (=> b!4678104 (= res!1970887 (dynLambda!21671 lambda!204013 (h!58423 (Cons!52220 lt!1837401 (t!359490 (toList!5449 lm!2023))))))))

(declare-fun b!4678105 () Bool)

(assert (=> b!4678105 (= e!2918750 (forall!11205 (t!359490 (Cons!52220 lt!1837401 (t!359490 (toList!5449 lm!2023)))) lambda!204013))))

(assert (= (and d!1486896 (not res!1970886)) b!4678104))

(assert (= (and b!4678104 res!1970887) b!4678105))

(declare-fun b_lambda!176601 () Bool)

(assert (=> (not b_lambda!176601) (not b!4678104)))

(declare-fun m!5572849 () Bool)

(assert (=> b!4678104 m!5572849))

(declare-fun m!5572851 () Bool)

(assert (=> b!4678105 m!5572851))

(assert (=> b!4677919 d!1486896))

(declare-fun d!1486898 () Bool)

(declare-fun res!1970892 () Bool)

(declare-fun e!2918755 () Bool)

(assert (=> d!1486898 (=> res!1970892 e!2918755)))

(assert (=> d!1486898 (= res!1970892 (and ((_ is Cons!52219) lt!1837397) (= (_1!30051 (h!58422 lt!1837397)) key!4653)))))

(assert (=> d!1486898 (= (containsKey!2917 lt!1837397 key!4653) e!2918755)))

(declare-fun b!4678110 () Bool)

(declare-fun e!2918756 () Bool)

(assert (=> b!4678110 (= e!2918755 e!2918756)))

(declare-fun res!1970893 () Bool)

(assert (=> b!4678110 (=> (not res!1970893) (not e!2918756))))

(assert (=> b!4678110 (= res!1970893 ((_ is Cons!52219) lt!1837397))))

(declare-fun b!4678111 () Bool)

(assert (=> b!4678111 (= e!2918756 (containsKey!2917 (t!359489 lt!1837397) key!4653))))

(assert (= (and d!1486898 (not res!1970892)) b!4678110))

(assert (= (and b!4678110 res!1970893) b!4678111))

(declare-fun m!5572855 () Bool)

(assert (=> b!4678111 m!5572855))

(assert (=> b!4677918 d!1486898))

(declare-fun b!4678155 () Bool)

(declare-fun e!2918784 () Bool)

(declare-datatypes ((List!52346 0))(
  ( (Nil!52222) (Cons!52222 (h!58427 K!13600) (t!359494 List!52346)) )
))
(declare-fun contains!15359 (List!52346 K!13600) Bool)

(declare-fun keys!18597 (ListMap!4813) List!52346)

(assert (=> b!4678155 (= e!2918784 (contains!15359 (keys!18597 lt!1837400) key!4653))))

(declare-fun b!4678156 () Bool)

(declare-fun e!2918783 () Bool)

(assert (=> b!4678156 (= e!2918783 (not (contains!15359 (keys!18597 lt!1837400) key!4653)))))

(declare-fun bm!326906 () Bool)

(declare-fun call!326911 () Bool)

(declare-fun e!2918788 () List!52346)

(assert (=> bm!326906 (= call!326911 (contains!15359 e!2918788 key!4653))))

(declare-fun c!800342 () Bool)

(declare-fun c!800341 () Bool)

(assert (=> bm!326906 (= c!800342 c!800341)))

(declare-fun b!4678157 () Bool)

(declare-fun e!2918786 () Unit!121981)

(declare-fun lt!1837761 () Unit!121981)

(assert (=> b!4678157 (= e!2918786 lt!1837761)))

(declare-fun lt!1837760 () Unit!121981)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1603 (List!52343 K!13600) Unit!121981)

(assert (=> b!4678157 (= lt!1837760 (lemmaContainsKeyImpliesGetValueByKeyDefined!1603 (toList!5450 lt!1837400) key!4653))))

(declare-datatypes ((Option!11963 0))(
  ( (None!11962) (Some!11962 (v!46325 V!13846)) )
))
(declare-fun isDefined!9218 (Option!11963) Bool)

(declare-fun getValueByKey!1711 (List!52343 K!13600) Option!11963)

(assert (=> b!4678157 (isDefined!9218 (getValueByKey!1711 (toList!5450 lt!1837400) key!4653))))

(declare-fun lt!1837763 () Unit!121981)

(assert (=> b!4678157 (= lt!1837763 lt!1837760)))

(declare-fun lemmaInListThenGetKeysListContains!803 (List!52343 K!13600) Unit!121981)

(assert (=> b!4678157 (= lt!1837761 (lemmaInListThenGetKeysListContains!803 (toList!5450 lt!1837400) key!4653))))

(assert (=> b!4678157 call!326911))

(declare-fun b!4678158 () Bool)

(assert (=> b!4678158 false))

(declare-fun lt!1837762 () Unit!121981)

(declare-fun lt!1837756 () Unit!121981)

(assert (=> b!4678158 (= lt!1837762 lt!1837756)))

(declare-fun containsKey!2919 (List!52343 K!13600) Bool)

(assert (=> b!4678158 (containsKey!2919 (toList!5450 lt!1837400) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!807 (List!52343 K!13600) Unit!121981)

(assert (=> b!4678158 (= lt!1837756 (lemmaInGetKeysListThenContainsKey!807 (toList!5450 lt!1837400) key!4653))))

(declare-fun e!2918787 () Unit!121981)

(declare-fun Unit!122058 () Unit!121981)

(assert (=> b!4678158 (= e!2918787 Unit!122058)))

(declare-fun b!4678159 () Bool)

(assert (=> b!4678159 (= e!2918788 (keys!18597 lt!1837400))))

(declare-fun b!4678161 () Bool)

(declare-fun getKeysList!808 (List!52343) List!52346)

(assert (=> b!4678161 (= e!2918788 (getKeysList!808 (toList!5450 lt!1837400)))))

(declare-fun b!4678162 () Bool)

(assert (=> b!4678162 (= e!2918786 e!2918787)))

(declare-fun c!800340 () Bool)

(assert (=> b!4678162 (= c!800340 call!326911)))

(declare-fun b!4678163 () Bool)

(declare-fun Unit!122061 () Unit!121981)

(assert (=> b!4678163 (= e!2918787 Unit!122061)))

(declare-fun b!4678160 () Bool)

(declare-fun e!2918785 () Bool)

(assert (=> b!4678160 (= e!2918785 e!2918784)))

(declare-fun res!1970907 () Bool)

(assert (=> b!4678160 (=> (not res!1970907) (not e!2918784))))

(assert (=> b!4678160 (= res!1970907 (isDefined!9218 (getValueByKey!1711 (toList!5450 lt!1837400) key!4653)))))

(declare-fun d!1486902 () Bool)

(assert (=> d!1486902 e!2918785))

(declare-fun res!1970908 () Bool)

(assert (=> d!1486902 (=> res!1970908 e!2918785)))

(assert (=> d!1486902 (= res!1970908 e!2918783)))

(declare-fun res!1970909 () Bool)

(assert (=> d!1486902 (=> (not res!1970909) (not e!2918783))))

(declare-fun lt!1837758 () Bool)

(assert (=> d!1486902 (= res!1970909 (not lt!1837758))))

(declare-fun lt!1837757 () Bool)

(assert (=> d!1486902 (= lt!1837758 lt!1837757)))

(declare-fun lt!1837759 () Unit!121981)

(assert (=> d!1486902 (= lt!1837759 e!2918786)))

(assert (=> d!1486902 (= c!800341 lt!1837757)))

(assert (=> d!1486902 (= lt!1837757 (containsKey!2919 (toList!5450 lt!1837400) key!4653))))

(assert (=> d!1486902 (= (contains!15356 lt!1837400 key!4653) lt!1837758)))

(assert (= (and d!1486902 c!800341) b!4678157))

(assert (= (and d!1486902 (not c!800341)) b!4678162))

(assert (= (and b!4678162 c!800340) b!4678158))

(assert (= (and b!4678162 (not c!800340)) b!4678163))

(assert (= (or b!4678157 b!4678162) bm!326906))

(assert (= (and bm!326906 c!800342) b!4678161))

(assert (= (and bm!326906 (not c!800342)) b!4678159))

(assert (= (and d!1486902 res!1970909) b!4678156))

(assert (= (and d!1486902 (not res!1970908)) b!4678160))

(assert (= (and b!4678160 res!1970907) b!4678155))

(declare-fun m!5572915 () Bool)

(assert (=> bm!326906 m!5572915))

(declare-fun m!5572917 () Bool)

(assert (=> b!4678156 m!5572917))

(assert (=> b!4678156 m!5572917))

(declare-fun m!5572919 () Bool)

(assert (=> b!4678156 m!5572919))

(declare-fun m!5572921 () Bool)

(assert (=> b!4678158 m!5572921))

(declare-fun m!5572923 () Bool)

(assert (=> b!4678158 m!5572923))

(declare-fun m!5572925 () Bool)

(assert (=> b!4678161 m!5572925))

(assert (=> b!4678159 m!5572917))

(assert (=> b!4678155 m!5572917))

(assert (=> b!4678155 m!5572917))

(assert (=> b!4678155 m!5572919))

(declare-fun m!5572927 () Bool)

(assert (=> b!4678160 m!5572927))

(assert (=> b!4678160 m!5572927))

(declare-fun m!5572929 () Bool)

(assert (=> b!4678160 m!5572929))

(declare-fun m!5572931 () Bool)

(assert (=> b!4678157 m!5572931))

(assert (=> b!4678157 m!5572927))

(assert (=> b!4678157 m!5572927))

(assert (=> b!4678157 m!5572929))

(declare-fun m!5572933 () Bool)

(assert (=> b!4678157 m!5572933))

(assert (=> d!1486902 m!5572921))

(assert (=> b!4677929 d!1486902))

(declare-fun b!4678168 () Bool)

(declare-fun e!2918794 () Bool)

(assert (=> b!4678168 (= e!2918794 (contains!15359 (keys!18597 lt!1837398) key!4653))))

(declare-fun b!4678169 () Bool)

(declare-fun e!2918793 () Bool)

(assert (=> b!4678169 (= e!2918793 (not (contains!15359 (keys!18597 lt!1837398) key!4653)))))

(declare-fun bm!326907 () Bool)

(declare-fun call!326912 () Bool)

(declare-fun e!2918798 () List!52346)

(assert (=> bm!326907 (= call!326912 (contains!15359 e!2918798 key!4653))))

(declare-fun c!800345 () Bool)

(declare-fun c!800344 () Bool)

(assert (=> bm!326907 (= c!800345 c!800344)))

(declare-fun b!4678170 () Bool)

(declare-fun e!2918796 () Unit!121981)

(declare-fun lt!1837769 () Unit!121981)

(assert (=> b!4678170 (= e!2918796 lt!1837769)))

(declare-fun lt!1837768 () Unit!121981)

(assert (=> b!4678170 (= lt!1837768 (lemmaContainsKeyImpliesGetValueByKeyDefined!1603 (toList!5450 lt!1837398) key!4653))))

(assert (=> b!4678170 (isDefined!9218 (getValueByKey!1711 (toList!5450 lt!1837398) key!4653))))

(declare-fun lt!1837771 () Unit!121981)

(assert (=> b!4678170 (= lt!1837771 lt!1837768)))

(assert (=> b!4678170 (= lt!1837769 (lemmaInListThenGetKeysListContains!803 (toList!5450 lt!1837398) key!4653))))

(assert (=> b!4678170 call!326912))

(declare-fun b!4678171 () Bool)

(assert (=> b!4678171 false))

(declare-fun lt!1837770 () Unit!121981)

(declare-fun lt!1837764 () Unit!121981)

(assert (=> b!4678171 (= lt!1837770 lt!1837764)))

(assert (=> b!4678171 (containsKey!2919 (toList!5450 lt!1837398) key!4653)))

(assert (=> b!4678171 (= lt!1837764 (lemmaInGetKeysListThenContainsKey!807 (toList!5450 lt!1837398) key!4653))))

(declare-fun e!2918797 () Unit!121981)

(declare-fun Unit!122068 () Unit!121981)

(assert (=> b!4678171 (= e!2918797 Unit!122068)))

(declare-fun b!4678172 () Bool)

(assert (=> b!4678172 (= e!2918798 (keys!18597 lt!1837398))))

(declare-fun b!4678174 () Bool)

(assert (=> b!4678174 (= e!2918798 (getKeysList!808 (toList!5450 lt!1837398)))))

(declare-fun b!4678175 () Bool)

(assert (=> b!4678175 (= e!2918796 e!2918797)))

(declare-fun c!800343 () Bool)

(assert (=> b!4678175 (= c!800343 call!326912)))

(declare-fun b!4678176 () Bool)

(declare-fun Unit!122069 () Unit!121981)

(assert (=> b!4678176 (= e!2918797 Unit!122069)))

(declare-fun b!4678173 () Bool)

(declare-fun e!2918795 () Bool)

(assert (=> b!4678173 (= e!2918795 e!2918794)))

(declare-fun res!1970914 () Bool)

(assert (=> b!4678173 (=> (not res!1970914) (not e!2918794))))

(assert (=> b!4678173 (= res!1970914 (isDefined!9218 (getValueByKey!1711 (toList!5450 lt!1837398) key!4653)))))

(declare-fun d!1486920 () Bool)

(assert (=> d!1486920 e!2918795))

(declare-fun res!1970915 () Bool)

(assert (=> d!1486920 (=> res!1970915 e!2918795)))

(assert (=> d!1486920 (= res!1970915 e!2918793)))

(declare-fun res!1970916 () Bool)

(assert (=> d!1486920 (=> (not res!1970916) (not e!2918793))))

(declare-fun lt!1837766 () Bool)

(assert (=> d!1486920 (= res!1970916 (not lt!1837766))))

(declare-fun lt!1837765 () Bool)

(assert (=> d!1486920 (= lt!1837766 lt!1837765)))

(declare-fun lt!1837767 () Unit!121981)

(assert (=> d!1486920 (= lt!1837767 e!2918796)))

(assert (=> d!1486920 (= c!800344 lt!1837765)))

(assert (=> d!1486920 (= lt!1837765 (containsKey!2919 (toList!5450 lt!1837398) key!4653))))

(assert (=> d!1486920 (= (contains!15356 lt!1837398 key!4653) lt!1837766)))

(assert (= (and d!1486920 c!800344) b!4678170))

(assert (= (and d!1486920 (not c!800344)) b!4678175))

(assert (= (and b!4678175 c!800343) b!4678171))

(assert (= (and b!4678175 (not c!800343)) b!4678176))

(assert (= (or b!4678170 b!4678175) bm!326907))

(assert (= (and bm!326907 c!800345) b!4678174))

(assert (= (and bm!326907 (not c!800345)) b!4678172))

(assert (= (and d!1486920 res!1970916) b!4678169))

(assert (= (and d!1486920 (not res!1970915)) b!4678173))

(assert (= (and b!4678173 res!1970914) b!4678168))

(declare-fun m!5572935 () Bool)

(assert (=> bm!326907 m!5572935))

(declare-fun m!5572937 () Bool)

(assert (=> b!4678169 m!5572937))

(assert (=> b!4678169 m!5572937))

(declare-fun m!5572939 () Bool)

(assert (=> b!4678169 m!5572939))

(declare-fun m!5572943 () Bool)

(assert (=> b!4678171 m!5572943))

(declare-fun m!5572945 () Bool)

(assert (=> b!4678171 m!5572945))

(declare-fun m!5572947 () Bool)

(assert (=> b!4678174 m!5572947))

(assert (=> b!4678172 m!5572937))

(assert (=> b!4678168 m!5572937))

(assert (=> b!4678168 m!5572937))

(assert (=> b!4678168 m!5572939))

(declare-fun m!5572949 () Bool)

(assert (=> b!4678173 m!5572949))

(assert (=> b!4678173 m!5572949))

(declare-fun m!5572951 () Bool)

(assert (=> b!4678173 m!5572951))

(declare-fun m!5572953 () Bool)

(assert (=> b!4678170 m!5572953))

(assert (=> b!4678170 m!5572949))

(assert (=> b!4678170 m!5572949))

(assert (=> b!4678170 m!5572951))

(declare-fun m!5572955 () Bool)

(assert (=> b!4678170 m!5572955))

(assert (=> d!1486920 m!5572943))

(assert (=> b!4677929 d!1486920))

(declare-fun bs!1080927 () Bool)

(declare-fun d!1486922 () Bool)

(assert (= bs!1080927 (and d!1486922 start!472176)))

(declare-fun lambda!204129 () Int)

(assert (=> bs!1080927 (= lambda!204129 lambda!204013)))

(declare-fun bs!1080928 () Bool)

(assert (= bs!1080928 (and d!1486922 d!1486828)))

(assert (=> bs!1080928 (not (= lambda!204129 lambda!204019))))

(declare-fun bs!1080929 () Bool)

(assert (= bs!1080929 (and d!1486922 d!1486862)))

(assert (=> bs!1080929 (= lambda!204129 lambda!204106)))

(assert (=> d!1486922 (not (contains!15356 (extractMap!1806 (toList!5449 (ListLongMap!3980 lt!1837402))) key!4653))))

(declare-fun lt!1837774 () Unit!121981)

(declare-fun choose!32358 (ListLongMap!3979 K!13600 Hashable!6149) Unit!121981)

(assert (=> d!1486922 (= lt!1837774 (choose!32358 (ListLongMap!3980 lt!1837402) key!4653 hashF!1323))))

(assert (=> d!1486922 (forall!11205 (toList!5449 (ListLongMap!3980 lt!1837402)) lambda!204129)))

(assert (=> d!1486922 (= (lemmaNotInItsHashBucketThenNotInMap!380 (ListLongMap!3980 lt!1837402) key!4653 hashF!1323) lt!1837774)))

(declare-fun bs!1080930 () Bool)

(assert (= bs!1080930 d!1486922))

(declare-fun m!5572959 () Bool)

(assert (=> bs!1080930 m!5572959))

(assert (=> bs!1080930 m!5572959))

(declare-fun m!5572961 () Bool)

(assert (=> bs!1080930 m!5572961))

(declare-fun m!5572963 () Bool)

(assert (=> bs!1080930 m!5572963))

(declare-fun m!5572965 () Bool)

(assert (=> bs!1080930 m!5572965))

(assert (=> b!4677929 d!1486922))

(declare-fun d!1486928 () Bool)

(declare-fun res!1970919 () Bool)

(declare-fun e!2918808 () Bool)

(assert (=> d!1486928 (=> res!1970919 e!2918808)))

(assert (=> d!1486928 (= res!1970919 (not ((_ is Cons!52219) newBucket!218)))))

(assert (=> d!1486928 (= (noDuplicateKeys!1780 newBucket!218) e!2918808)))

(declare-fun b!4678190 () Bool)

(declare-fun e!2918809 () Bool)

(assert (=> b!4678190 (= e!2918808 e!2918809)))

(declare-fun res!1970920 () Bool)

(assert (=> b!4678190 (=> (not res!1970920) (not e!2918809))))

(assert (=> b!4678190 (= res!1970920 (not (containsKey!2917 (t!359489 newBucket!218) (_1!30051 (h!58422 newBucket!218)))))))

(declare-fun b!4678191 () Bool)

(assert (=> b!4678191 (= e!2918809 (noDuplicateKeys!1780 (t!359489 newBucket!218)))))

(assert (= (and d!1486928 (not res!1970919)) b!4678190))

(assert (= (and b!4678190 res!1970920) b!4678191))

(declare-fun m!5572967 () Bool)

(assert (=> b!4678190 m!5572967))

(declare-fun m!5572969 () Bool)

(assert (=> b!4678191 m!5572969))

(assert (=> b!4677914 d!1486928))

(declare-fun d!1486930 () Bool)

(assert (=> d!1486930 (= (tail!8410 oldBucket!34) (t!359489 oldBucket!34))))

(assert (=> b!4677925 d!1486930))

(declare-fun bs!1080931 () Bool)

(declare-fun d!1486932 () Bool)

(assert (= bs!1080931 (and d!1486932 b!4678060)))

(declare-fun lambda!204130 () Int)

(assert (=> bs!1080931 (not (= lambda!204130 lambda!204096))))

(declare-fun bs!1080932 () Bool)

(assert (= bs!1080932 (and d!1486932 b!4678092)))

(assert (=> bs!1080932 (not (= lambda!204130 lambda!204112))))

(declare-fun bs!1080933 () Bool)

(assert (= bs!1080933 (and d!1486932 d!1486886)))

(assert (=> bs!1080933 (not (= lambda!204130 lambda!204117))))

(declare-fun bs!1080934 () Bool)

(assert (= bs!1080934 (and d!1486932 b!4678097)))

(assert (=> bs!1080934 (not (= lambda!204130 lambda!204114))))

(declare-fun bs!1080935 () Bool)

(assert (= bs!1080935 (and d!1486932 b!4678099)))

(assert (=> bs!1080935 (not (= lambda!204130 lambda!204115))))

(assert (=> bs!1080932 (not (= lambda!204130 lambda!204111))))

(declare-fun bs!1080936 () Bool)

(assert (= bs!1080936 (and d!1486932 b!4678062)))

(assert (=> bs!1080936 (not (= lambda!204130 lambda!204097))))

(declare-fun bs!1080937 () Bool)

(assert (= bs!1080937 (and d!1486932 d!1486834)))

(assert (=> bs!1080937 (not (= lambda!204130 lambda!204099))))

(declare-fun bs!1080938 () Bool)

(assert (= bs!1080938 (and d!1486932 b!4678090)))

(assert (=> bs!1080938 (not (= lambda!204130 lambda!204110))))

(assert (=> bs!1080935 (not (= lambda!204130 lambda!204116))))

(declare-fun bs!1080939 () Bool)

(assert (= bs!1080939 (and d!1486932 d!1486818)))

(assert (=> bs!1080939 (= lambda!204130 lambda!204016)))

(declare-fun bs!1080940 () Bool)

(assert (= bs!1080940 (and d!1486932 d!1486884)))

(assert (=> bs!1080940 (not (= lambda!204130 lambda!204113))))

(assert (=> bs!1080936 (not (= lambda!204130 lambda!204098))))

(assert (=> d!1486932 true))

(assert (=> d!1486932 true))

(assert (=> d!1486932 (= (allKeysSameHash!1606 newBucket!218 hash!405 hashF!1323) (forall!11207 newBucket!218 lambda!204130))))

(declare-fun bs!1080941 () Bool)

(assert (= bs!1080941 d!1486932))

(declare-fun m!5572971 () Bool)

(assert (=> bs!1080941 m!5572971))

(assert (=> b!4677916 d!1486932))

(declare-fun d!1486934 () Bool)

(declare-fun e!2918812 () Bool)

(assert (=> d!1486934 e!2918812))

(declare-fun res!1970923 () Bool)

(assert (=> d!1486934 (=> (not res!1970923) (not e!2918812))))

(declare-fun lt!1837777 () ListMap!4813)

(assert (=> d!1486934 (= res!1970923 (not (contains!15356 lt!1837777 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!321 (List!52343 K!13600) List!52343)

(assert (=> d!1486934 (= lt!1837777 (ListMap!4814 (removePresrvNoDuplicatedKeys!321 (toList!5450 lt!1837391) key!4653)))))

(assert (=> d!1486934 (= (-!644 lt!1837391 key!4653) lt!1837777)))

(declare-fun b!4678194 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9093 (List!52346) (InoxSet K!13600))

(assert (=> b!4678194 (= e!2918812 (= ((_ map and) (content!9093 (keys!18597 lt!1837391)) ((_ map not) (store ((as const (Array K!13600 Bool)) false) key!4653 true))) (content!9093 (keys!18597 lt!1837777))))))

(assert (= (and d!1486934 res!1970923) b!4678194))

(declare-fun m!5572973 () Bool)

(assert (=> d!1486934 m!5572973))

(declare-fun m!5572975 () Bool)

(assert (=> d!1486934 m!5572975))

(declare-fun m!5572977 () Bool)

(assert (=> b!4678194 m!5572977))

(declare-fun m!5572979 () Bool)

(assert (=> b!4678194 m!5572979))

(declare-fun m!5572981 () Bool)

(assert (=> b!4678194 m!5572981))

(assert (=> b!4678194 m!5572979))

(declare-fun m!5572983 () Bool)

(assert (=> b!4678194 m!5572983))

(assert (=> b!4678194 m!5572981))

(declare-fun m!5572985 () Bool)

(assert (=> b!4678194 m!5572985))

(assert (=> b!4677926 d!1486934))

(declare-fun d!1486936 () Bool)

(declare-fun e!2918813 () Bool)

(assert (=> d!1486936 e!2918813))

(declare-fun res!1970924 () Bool)

(assert (=> d!1486936 (=> (not res!1970924) (not e!2918813))))

(declare-fun lt!1837778 () ListMap!4813)

(assert (=> d!1486936 (= res!1970924 (not (contains!15356 lt!1837778 key!4653)))))

(assert (=> d!1486936 (= lt!1837778 (ListMap!4814 (removePresrvNoDuplicatedKeys!321 (toList!5450 (+!2082 lt!1837400 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34))))) key!4653)))))

(assert (=> d!1486936 (= (-!644 (+!2082 lt!1837400 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34)))) key!4653) lt!1837778)))

(declare-fun b!4678195 () Bool)

(assert (=> b!4678195 (= e!2918813 (= ((_ map and) (content!9093 (keys!18597 (+!2082 lt!1837400 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!13600 Bool)) false) key!4653 true))) (content!9093 (keys!18597 lt!1837778))))))

(assert (= (and d!1486936 res!1970924) b!4678195))

(declare-fun m!5572987 () Bool)

(assert (=> d!1486936 m!5572987))

(declare-fun m!5572989 () Bool)

(assert (=> d!1486936 m!5572989))

(assert (=> b!4678195 m!5572977))

(assert (=> b!4678195 m!5572365))

(declare-fun m!5572991 () Bool)

(assert (=> b!4678195 m!5572991))

(declare-fun m!5572993 () Bool)

(assert (=> b!4678195 m!5572993))

(assert (=> b!4678195 m!5572991))

(declare-fun m!5572995 () Bool)

(assert (=> b!4678195 m!5572995))

(assert (=> b!4678195 m!5572993))

(declare-fun m!5572997 () Bool)

(assert (=> b!4678195 m!5572997))

(assert (=> b!4677926 d!1486936))

(declare-fun d!1486938 () Bool)

(declare-fun e!2918816 () Bool)

(assert (=> d!1486938 e!2918816))

(declare-fun res!1970930 () Bool)

(assert (=> d!1486938 (=> (not res!1970930) (not e!2918816))))

(declare-fun lt!1837789 () ListMap!4813)

(assert (=> d!1486938 (= res!1970930 (contains!15356 lt!1837789 (_1!30051 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34))))))))

(declare-fun lt!1837787 () List!52343)

(assert (=> d!1486938 (= lt!1837789 (ListMap!4814 lt!1837787))))

(declare-fun lt!1837790 () Unit!121981)

(declare-fun lt!1837788 () Unit!121981)

(assert (=> d!1486938 (= lt!1837790 lt!1837788)))

(assert (=> d!1486938 (= (getValueByKey!1711 lt!1837787 (_1!30051 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34))))) (Some!11962 (_2!30051 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!970 (List!52343 K!13600 V!13846) Unit!121981)

(assert (=> d!1486938 (= lt!1837788 (lemmaContainsTupThenGetReturnValue!970 lt!1837787 (_1!30051 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34)))) (_2!30051 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34))))))))

(declare-fun insertNoDuplicatedKeys!478 (List!52343 K!13600 V!13846) List!52343)

(assert (=> d!1486938 (= lt!1837787 (insertNoDuplicatedKeys!478 (toList!5450 lt!1837400) (_1!30051 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34)))) (_2!30051 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34))))))))

(assert (=> d!1486938 (= (+!2082 lt!1837400 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34)))) lt!1837789)))

(declare-fun b!4678200 () Bool)

(declare-fun res!1970929 () Bool)

(assert (=> b!4678200 (=> (not res!1970929) (not e!2918816))))

(assert (=> b!4678200 (= res!1970929 (= (getValueByKey!1711 (toList!5450 lt!1837789) (_1!30051 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34))))) (Some!11962 (_2!30051 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34)))))))))

(declare-fun b!4678201 () Bool)

(declare-fun contains!15360 (List!52343 tuple2!53514) Bool)

(assert (=> b!4678201 (= e!2918816 (contains!15360 (toList!5450 lt!1837789) (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34)))))))

(assert (= (and d!1486938 res!1970930) b!4678200))

(assert (= (and b!4678200 res!1970929) b!4678201))

(declare-fun m!5572999 () Bool)

(assert (=> d!1486938 m!5572999))

(declare-fun m!5573001 () Bool)

(assert (=> d!1486938 m!5573001))

(declare-fun m!5573003 () Bool)

(assert (=> d!1486938 m!5573003))

(declare-fun m!5573005 () Bool)

(assert (=> d!1486938 m!5573005))

(declare-fun m!5573007 () Bool)

(assert (=> b!4678200 m!5573007))

(declare-fun m!5573009 () Bool)

(assert (=> b!4678201 m!5573009))

(assert (=> b!4677926 d!1486938))

(declare-fun d!1486940 () Bool)

(assert (=> d!1486940 (= (-!644 (+!2082 lt!1837400 (tuple2!53515 key!4653 (_2!30051 (h!58422 oldBucket!34)))) key!4653) lt!1837400)))

(declare-fun lt!1837793 () Unit!121981)

(declare-fun choose!32360 (ListMap!4813 K!13600 V!13846) Unit!121981)

(assert (=> d!1486940 (= lt!1837793 (choose!32360 lt!1837400 key!4653 (_2!30051 (h!58422 oldBucket!34))))))

(assert (=> d!1486940 (not (contains!15356 lt!1837400 key!4653))))

(assert (=> d!1486940 (= (addThenRemoveForNewKeyIsSame!35 lt!1837400 key!4653 (_2!30051 (h!58422 oldBucket!34))) lt!1837793)))

(declare-fun bs!1080942 () Bool)

(assert (= bs!1080942 d!1486940))

(assert (=> bs!1080942 m!5572365))

(assert (=> bs!1080942 m!5572365))

(assert (=> bs!1080942 m!5572367))

(declare-fun m!5573011 () Bool)

(assert (=> bs!1080942 m!5573011))

(assert (=> bs!1080942 m!5572357))

(assert (=> b!4677926 d!1486940))

(declare-fun d!1486942 () Bool)

(declare-fun lt!1837796 () List!52343)

(assert (=> d!1486942 (not (containsKey!2917 lt!1837796 key!4653))))

(declare-fun e!2918822 () List!52343)

(assert (=> d!1486942 (= lt!1837796 e!2918822)))

(declare-fun c!800350 () Bool)

(assert (=> d!1486942 (= c!800350 (and ((_ is Cons!52219) oldBucket!34) (= (_1!30051 (h!58422 oldBucket!34)) key!4653)))))

(assert (=> d!1486942 (noDuplicateKeys!1780 oldBucket!34)))

(assert (=> d!1486942 (= (removePairForKey!1375 oldBucket!34 key!4653) lt!1837796)))

(declare-fun b!4678213 () Bool)

(declare-fun e!2918821 () List!52343)

(assert (=> b!4678213 (= e!2918821 Nil!52219)))

(declare-fun b!4678212 () Bool)

(assert (=> b!4678212 (= e!2918821 (Cons!52219 (h!58422 oldBucket!34) (removePairForKey!1375 (t!359489 oldBucket!34) key!4653)))))

(declare-fun b!4678210 () Bool)

(assert (=> b!4678210 (= e!2918822 (t!359489 oldBucket!34))))

(declare-fun b!4678211 () Bool)

(assert (=> b!4678211 (= e!2918822 e!2918821)))

(declare-fun c!800351 () Bool)

(assert (=> b!4678211 (= c!800351 ((_ is Cons!52219) oldBucket!34))))

(assert (= (and d!1486942 c!800350) b!4678210))

(assert (= (and d!1486942 (not c!800350)) b!4678211))

(assert (= (and b!4678211 c!800351) b!4678212))

(assert (= (and b!4678211 (not c!800351)) b!4678213))

(declare-fun m!5573013 () Bool)

(assert (=> d!1486942 m!5573013))

(assert (=> d!1486942 m!5572355))

(declare-fun m!5573015 () Bool)

(assert (=> b!4678212 m!5573015))

(assert (=> b!4677923 d!1486942))

(declare-fun d!1486944 () Bool)

(assert (=> d!1486944 (eq!969 (addToMapMapFromBucket!1212 (Cons!52219 lt!1837396 lt!1837397) lt!1837392) (+!2082 (addToMapMapFromBucket!1212 lt!1837397 lt!1837392) lt!1837396))))

(declare-fun lt!1837799 () Unit!121981)

(declare-fun choose!32361 (tuple2!53514 List!52343 ListMap!4813) Unit!121981)

(assert (=> d!1486944 (= lt!1837799 (choose!32361 lt!1837396 lt!1837397 lt!1837392))))

(assert (=> d!1486944 (noDuplicateKeys!1780 lt!1837397)))

(assert (=> d!1486944 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!218 lt!1837396 lt!1837397 lt!1837392) lt!1837799)))

(declare-fun bs!1080943 () Bool)

(assert (= bs!1080943 d!1486944))

(declare-fun m!5573017 () Bool)

(assert (=> bs!1080943 m!5573017))

(assert (=> bs!1080943 m!5572847))

(assert (=> bs!1080943 m!5572373))

(declare-fun m!5573019 () Bool)

(assert (=> bs!1080943 m!5573019))

(assert (=> bs!1080943 m!5572373))

(assert (=> bs!1080943 m!5572399))

(assert (=> bs!1080943 m!5573019))

(declare-fun m!5573021 () Bool)

(assert (=> bs!1080943 m!5573021))

(assert (=> bs!1080943 m!5572399))

(assert (=> b!4677933 d!1486944))

(declare-fun bs!1080944 () Bool)

(declare-fun b!4678216 () Bool)

(assert (= bs!1080944 (and b!4678216 b!4678060)))

(declare-fun lambda!204131 () Int)

(assert (=> bs!1080944 (= lambda!204131 lambda!204096)))

(declare-fun bs!1080945 () Bool)

(assert (= bs!1080945 (and b!4678216 b!4678092)))

(assert (=> bs!1080945 (= (= lt!1837392 lt!1837673) (= lambda!204131 lambda!204112))))

(declare-fun bs!1080946 () Bool)

(assert (= bs!1080946 (and b!4678216 b!4678097)))

(assert (=> bs!1080946 (= lambda!204131 lambda!204114)))

(declare-fun bs!1080947 () Bool)

(assert (= bs!1080947 (and b!4678216 b!4678099)))

(assert (=> bs!1080947 (= lambda!204131 lambda!204115)))

(assert (=> bs!1080945 (= lambda!204131 lambda!204111)))

(declare-fun bs!1080948 () Bool)

(assert (= bs!1080948 (and b!4678216 b!4678062)))

(assert (=> bs!1080948 (= lambda!204131 lambda!204097)))

(declare-fun bs!1080949 () Bool)

(assert (= bs!1080949 (and b!4678216 d!1486834)))

(assert (=> bs!1080949 (= (= lt!1837392 lt!1837618) (= lambda!204131 lambda!204099))))

(declare-fun bs!1080950 () Bool)

(assert (= bs!1080950 (and b!4678216 b!4678090)))

(assert (=> bs!1080950 (= lambda!204131 lambda!204110)))

(assert (=> bs!1080947 (= (= lt!1837392 lt!1837696) (= lambda!204131 lambda!204116))))

(declare-fun bs!1080951 () Bool)

(assert (= bs!1080951 (and b!4678216 d!1486818)))

(assert (=> bs!1080951 (not (= lambda!204131 lambda!204016))))

(declare-fun bs!1080952 () Bool)

(assert (= bs!1080952 (and b!4678216 d!1486884)))

(assert (=> bs!1080952 (= (= lt!1837392 lt!1837670) (= lambda!204131 lambda!204113))))

(assert (=> bs!1080948 (= (= lt!1837392 lt!1837621) (= lambda!204131 lambda!204098))))

(declare-fun bs!1080953 () Bool)

(assert (= bs!1080953 (and b!4678216 d!1486932)))

(assert (=> bs!1080953 (not (= lambda!204131 lambda!204130))))

(declare-fun bs!1080954 () Bool)

(assert (= bs!1080954 (and b!4678216 d!1486886)))

(assert (=> bs!1080954 (= (= lt!1837392 lt!1837693) (= lambda!204131 lambda!204117))))

(assert (=> b!4678216 true))

(declare-fun bs!1080955 () Bool)

(declare-fun b!4678218 () Bool)

(assert (= bs!1080955 (and b!4678218 b!4678060)))

(declare-fun lambda!204132 () Int)

(assert (=> bs!1080955 (= lambda!204132 lambda!204096)))

(declare-fun bs!1080956 () Bool)

(assert (= bs!1080956 (and b!4678218 b!4678092)))

(assert (=> bs!1080956 (= (= lt!1837392 lt!1837673) (= lambda!204132 lambda!204112))))

(declare-fun bs!1080957 () Bool)

(assert (= bs!1080957 (and b!4678218 b!4678099)))

(assert (=> bs!1080957 (= lambda!204132 lambda!204115)))

(assert (=> bs!1080956 (= lambda!204132 lambda!204111)))

(declare-fun bs!1080958 () Bool)

(assert (= bs!1080958 (and b!4678218 b!4678062)))

(assert (=> bs!1080958 (= lambda!204132 lambda!204097)))

(declare-fun bs!1080959 () Bool)

(assert (= bs!1080959 (and b!4678218 d!1486834)))

(assert (=> bs!1080959 (= (= lt!1837392 lt!1837618) (= lambda!204132 lambda!204099))))

(declare-fun bs!1080960 () Bool)

(assert (= bs!1080960 (and b!4678218 b!4678090)))

(assert (=> bs!1080960 (= lambda!204132 lambda!204110)))

(assert (=> bs!1080957 (= (= lt!1837392 lt!1837696) (= lambda!204132 lambda!204116))))

(declare-fun bs!1080961 () Bool)

(assert (= bs!1080961 (and b!4678218 d!1486818)))

(assert (=> bs!1080961 (not (= lambda!204132 lambda!204016))))

(declare-fun bs!1080962 () Bool)

(assert (= bs!1080962 (and b!4678218 d!1486884)))

(assert (=> bs!1080962 (= (= lt!1837392 lt!1837670) (= lambda!204132 lambda!204113))))

(assert (=> bs!1080958 (= (= lt!1837392 lt!1837621) (= lambda!204132 lambda!204098))))

(declare-fun bs!1080963 () Bool)

(assert (= bs!1080963 (and b!4678218 d!1486932)))

(assert (=> bs!1080963 (not (= lambda!204132 lambda!204130))))

(declare-fun bs!1080964 () Bool)

(assert (= bs!1080964 (and b!4678218 d!1486886)))

(assert (=> bs!1080964 (= (= lt!1837392 lt!1837693) (= lambda!204132 lambda!204117))))

(declare-fun bs!1080965 () Bool)

(assert (= bs!1080965 (and b!4678218 b!4678097)))

(assert (=> bs!1080965 (= lambda!204132 lambda!204114)))

(declare-fun bs!1080966 () Bool)

(assert (= bs!1080966 (and b!4678218 b!4678216)))

(assert (=> bs!1080966 (= lambda!204132 lambda!204131)))

(assert (=> b!4678218 true))

(declare-fun lt!1837811 () ListMap!4813)

(declare-fun lambda!204133 () Int)

(assert (=> bs!1080955 (= (= lt!1837811 lt!1837392) (= lambda!204133 lambda!204096))))

(assert (=> bs!1080956 (= (= lt!1837811 lt!1837673) (= lambda!204133 lambda!204112))))

(assert (=> bs!1080957 (= (= lt!1837811 lt!1837392) (= lambda!204133 lambda!204115))))

(assert (=> bs!1080956 (= (= lt!1837811 lt!1837392) (= lambda!204133 lambda!204111))))

(assert (=> bs!1080958 (= (= lt!1837811 lt!1837392) (= lambda!204133 lambda!204097))))

(assert (=> bs!1080959 (= (= lt!1837811 lt!1837618) (= lambda!204133 lambda!204099))))

(assert (=> b!4678218 (= (= lt!1837811 lt!1837392) (= lambda!204133 lambda!204132))))

(assert (=> bs!1080960 (= (= lt!1837811 lt!1837392) (= lambda!204133 lambda!204110))))

(assert (=> bs!1080957 (= (= lt!1837811 lt!1837696) (= lambda!204133 lambda!204116))))

(assert (=> bs!1080961 (not (= lambda!204133 lambda!204016))))

(assert (=> bs!1080962 (= (= lt!1837811 lt!1837670) (= lambda!204133 lambda!204113))))

(assert (=> bs!1080958 (= (= lt!1837811 lt!1837621) (= lambda!204133 lambda!204098))))

(assert (=> bs!1080963 (not (= lambda!204133 lambda!204130))))

(assert (=> bs!1080964 (= (= lt!1837811 lt!1837693) (= lambda!204133 lambda!204117))))

(assert (=> bs!1080965 (= (= lt!1837811 lt!1837392) (= lambda!204133 lambda!204114))))

(assert (=> bs!1080966 (= (= lt!1837811 lt!1837392) (= lambda!204133 lambda!204131))))

(assert (=> b!4678218 true))

(declare-fun bs!1080967 () Bool)

(declare-fun d!1486946 () Bool)

(assert (= bs!1080967 (and d!1486946 b!4678060)))

(declare-fun lt!1837808 () ListMap!4813)

(declare-fun lambda!204134 () Int)

(assert (=> bs!1080967 (= (= lt!1837808 lt!1837392) (= lambda!204134 lambda!204096))))

(declare-fun bs!1080968 () Bool)

(assert (= bs!1080968 (and d!1486946 b!4678092)))

(assert (=> bs!1080968 (= (= lt!1837808 lt!1837673) (= lambda!204134 lambda!204112))))

(declare-fun bs!1080969 () Bool)

(assert (= bs!1080969 (and d!1486946 b!4678099)))

(assert (=> bs!1080969 (= (= lt!1837808 lt!1837392) (= lambda!204134 lambda!204115))))

(assert (=> bs!1080968 (= (= lt!1837808 lt!1837392) (= lambda!204134 lambda!204111))))

(declare-fun bs!1080970 () Bool)

(assert (= bs!1080970 (and d!1486946 b!4678062)))

(assert (=> bs!1080970 (= (= lt!1837808 lt!1837392) (= lambda!204134 lambda!204097))))

(declare-fun bs!1080971 () Bool)

(assert (= bs!1080971 (and d!1486946 b!4678218)))

(assert (=> bs!1080971 (= (= lt!1837808 lt!1837392) (= lambda!204134 lambda!204132))))

(declare-fun bs!1080972 () Bool)

(assert (= bs!1080972 (and d!1486946 b!4678090)))

(assert (=> bs!1080972 (= (= lt!1837808 lt!1837392) (= lambda!204134 lambda!204110))))

(assert (=> bs!1080969 (= (= lt!1837808 lt!1837696) (= lambda!204134 lambda!204116))))

(declare-fun bs!1080973 () Bool)

(assert (= bs!1080973 (and d!1486946 d!1486818)))

(assert (=> bs!1080973 (not (= lambda!204134 lambda!204016))))

(declare-fun bs!1080974 () Bool)

(assert (= bs!1080974 (and d!1486946 d!1486884)))

(assert (=> bs!1080974 (= (= lt!1837808 lt!1837670) (= lambda!204134 lambda!204113))))

(assert (=> bs!1080970 (= (= lt!1837808 lt!1837621) (= lambda!204134 lambda!204098))))

(declare-fun bs!1080975 () Bool)

(assert (= bs!1080975 (and d!1486946 d!1486932)))

(assert (=> bs!1080975 (not (= lambda!204134 lambda!204130))))

(declare-fun bs!1080976 () Bool)

(assert (= bs!1080976 (and d!1486946 d!1486886)))

(assert (=> bs!1080976 (= (= lt!1837808 lt!1837693) (= lambda!204134 lambda!204117))))

(declare-fun bs!1080977 () Bool)

(assert (= bs!1080977 (and d!1486946 b!4678097)))

(assert (=> bs!1080977 (= (= lt!1837808 lt!1837392) (= lambda!204134 lambda!204114))))

(declare-fun bs!1080978 () Bool)

(assert (= bs!1080978 (and d!1486946 b!4678216)))

(assert (=> bs!1080978 (= (= lt!1837808 lt!1837392) (= lambda!204134 lambda!204131))))

(assert (=> bs!1080971 (= (= lt!1837808 lt!1837811) (= lambda!204134 lambda!204133))))

(declare-fun bs!1080979 () Bool)

(assert (= bs!1080979 (and d!1486946 d!1486834)))

(assert (=> bs!1080979 (= (= lt!1837808 lt!1837618) (= lambda!204134 lambda!204099))))

(assert (=> d!1486946 true))

(declare-fun b!4678214 () Bool)

(declare-fun e!2918825 () Bool)

(assert (=> b!4678214 (= e!2918825 (invariantList!1368 (toList!5450 lt!1837808)))))

(declare-fun bm!326908 () Bool)

(declare-fun call!326914 () Unit!121981)

(assert (=> bm!326908 (= call!326914 (lemmaContainsAllItsOwnKeys!656 lt!1837392))))

(declare-fun b!4678215 () Bool)

(declare-fun e!2918824 () Bool)

(declare-fun call!326915 () Bool)

(assert (=> b!4678215 (= e!2918824 call!326915)))

(declare-fun e!2918823 () ListMap!4813)

(assert (=> b!4678216 (= e!2918823 lt!1837392)))

(declare-fun lt!1837809 () Unit!121981)

(assert (=> b!4678216 (= lt!1837809 call!326914)))

(assert (=> b!4678216 call!326915))

(declare-fun lt!1837815 () Unit!121981)

(assert (=> b!4678216 (= lt!1837815 lt!1837809)))

(declare-fun call!326913 () Bool)

(assert (=> b!4678216 call!326913))

(declare-fun lt!1837819 () Unit!121981)

(declare-fun Unit!122070 () Unit!121981)

(assert (=> b!4678216 (= lt!1837819 Unit!122070)))

(declare-fun lt!1837807 () ListMap!4813)

(declare-fun bm!326909 () Bool)

(declare-fun c!800352 () Bool)

(assert (=> bm!326909 (= call!326913 (forall!11207 (ite c!800352 (toList!5450 lt!1837392) (toList!5450 lt!1837807)) (ite c!800352 lambda!204131 lambda!204133)))))

(declare-fun b!4678217 () Bool)

(declare-fun res!1970931 () Bool)

(assert (=> b!4678217 (=> (not res!1970931) (not e!2918825))))

(assert (=> b!4678217 (= res!1970931 (forall!11207 (toList!5450 lt!1837392) lambda!204134))))

(assert (=> b!4678218 (= e!2918823 lt!1837811)))

(assert (=> b!4678218 (= lt!1837807 (+!2082 lt!1837392 (h!58422 (Cons!52219 lt!1837396 lt!1837397))))))

(assert (=> b!4678218 (= lt!1837811 (addToMapMapFromBucket!1212 (t!359489 (Cons!52219 lt!1837396 lt!1837397)) (+!2082 lt!1837392 (h!58422 (Cons!52219 lt!1837396 lt!1837397)))))))

(declare-fun lt!1837814 () Unit!121981)

(assert (=> b!4678218 (= lt!1837814 call!326914)))

(assert (=> b!4678218 (forall!11207 (toList!5450 lt!1837392) lambda!204132)))

(declare-fun lt!1837804 () Unit!121981)

(assert (=> b!4678218 (= lt!1837804 lt!1837814)))

(assert (=> b!4678218 call!326913))

(declare-fun lt!1837805 () Unit!121981)

(declare-fun Unit!122073 () Unit!121981)

(assert (=> b!4678218 (= lt!1837805 Unit!122073)))

(assert (=> b!4678218 (forall!11207 (t!359489 (Cons!52219 lt!1837396 lt!1837397)) lambda!204133)))

(declare-fun lt!1837818 () Unit!121981)

(declare-fun Unit!122075 () Unit!121981)

(assert (=> b!4678218 (= lt!1837818 Unit!122075)))

(declare-fun lt!1837801 () Unit!121981)

(declare-fun Unit!122076 () Unit!121981)

(assert (=> b!4678218 (= lt!1837801 Unit!122076)))

(declare-fun lt!1837817 () Unit!121981)

(assert (=> b!4678218 (= lt!1837817 (forallContained!3340 (toList!5450 lt!1837807) lambda!204133 (h!58422 (Cons!52219 lt!1837396 lt!1837397))))))

(assert (=> b!4678218 (contains!15356 lt!1837807 (_1!30051 (h!58422 (Cons!52219 lt!1837396 lt!1837397))))))

(declare-fun lt!1837813 () Unit!121981)

(declare-fun Unit!122078 () Unit!121981)

(assert (=> b!4678218 (= lt!1837813 Unit!122078)))

(assert (=> b!4678218 (contains!15356 lt!1837811 (_1!30051 (h!58422 (Cons!52219 lt!1837396 lt!1837397))))))

(declare-fun lt!1837800 () Unit!121981)

(declare-fun Unit!122080 () Unit!121981)

(assert (=> b!4678218 (= lt!1837800 Unit!122080)))

(assert (=> b!4678218 (forall!11207 (Cons!52219 lt!1837396 lt!1837397) lambda!204133)))

(declare-fun lt!1837820 () Unit!121981)

(declare-fun Unit!122082 () Unit!121981)

(assert (=> b!4678218 (= lt!1837820 Unit!122082)))

(assert (=> b!4678218 (forall!11207 (toList!5450 lt!1837807) lambda!204133)))

(declare-fun lt!1837806 () Unit!121981)

(declare-fun Unit!122085 () Unit!121981)

(assert (=> b!4678218 (= lt!1837806 Unit!122085)))

(declare-fun lt!1837810 () Unit!121981)

(declare-fun Unit!122086 () Unit!121981)

(assert (=> b!4678218 (= lt!1837810 Unit!122086)))

(declare-fun lt!1837802 () Unit!121981)

(assert (=> b!4678218 (= lt!1837802 (addForallContainsKeyThenBeforeAdding!655 lt!1837392 lt!1837811 (_1!30051 (h!58422 (Cons!52219 lt!1837396 lt!1837397))) (_2!30051 (h!58422 (Cons!52219 lt!1837396 lt!1837397)))))))

(assert (=> b!4678218 (forall!11207 (toList!5450 lt!1837392) lambda!204133)))

(declare-fun lt!1837812 () Unit!121981)

(assert (=> b!4678218 (= lt!1837812 lt!1837802)))

(assert (=> b!4678218 (forall!11207 (toList!5450 lt!1837392) lambda!204133)))

(declare-fun lt!1837816 () Unit!121981)

(declare-fun Unit!122088 () Unit!121981)

(assert (=> b!4678218 (= lt!1837816 Unit!122088)))

(declare-fun res!1970933 () Bool)

(assert (=> b!4678218 (= res!1970933 (forall!11207 (Cons!52219 lt!1837396 lt!1837397) lambda!204133))))

(assert (=> b!4678218 (=> (not res!1970933) (not e!2918824))))

(assert (=> b!4678218 e!2918824))

(declare-fun lt!1837803 () Unit!121981)

(declare-fun Unit!122090 () Unit!121981)

(assert (=> b!4678218 (= lt!1837803 Unit!122090)))

(declare-fun bm!326910 () Bool)

(assert (=> bm!326910 (= call!326915 (forall!11207 (toList!5450 lt!1837392) (ite c!800352 lambda!204131 lambda!204133)))))

(assert (=> d!1486946 e!2918825))

(declare-fun res!1970932 () Bool)

(assert (=> d!1486946 (=> (not res!1970932) (not e!2918825))))

(assert (=> d!1486946 (= res!1970932 (forall!11207 (Cons!52219 lt!1837396 lt!1837397) lambda!204134))))

(assert (=> d!1486946 (= lt!1837808 e!2918823)))

(assert (=> d!1486946 (= c!800352 ((_ is Nil!52219) (Cons!52219 lt!1837396 lt!1837397)))))

(assert (=> d!1486946 (noDuplicateKeys!1780 (Cons!52219 lt!1837396 lt!1837397))))

(assert (=> d!1486946 (= (addToMapMapFromBucket!1212 (Cons!52219 lt!1837396 lt!1837397) lt!1837392) lt!1837808)))

(assert (= (and d!1486946 c!800352) b!4678216))

(assert (= (and d!1486946 (not c!800352)) b!4678218))

(assert (= (and b!4678218 res!1970933) b!4678215))

(assert (= (or b!4678216 b!4678218) bm!326908))

(assert (= (or b!4678216 b!4678218) bm!326909))

(assert (= (or b!4678216 b!4678215) bm!326910))

(assert (= (and d!1486946 res!1970932) b!4678217))

(assert (= (and b!4678217 res!1970931) b!4678214))

(declare-fun m!5573023 () Bool)

(assert (=> b!4678217 m!5573023))

(declare-fun m!5573025 () Bool)

(assert (=> bm!326910 m!5573025))

(declare-fun m!5573027 () Bool)

(assert (=> b!4678214 m!5573027))

(assert (=> bm!326908 m!5572639))

(declare-fun m!5573029 () Bool)

(assert (=> bm!326909 m!5573029))

(declare-fun m!5573031 () Bool)

(assert (=> b!4678218 m!5573031))

(declare-fun m!5573033 () Bool)

(assert (=> b!4678218 m!5573033))

(assert (=> b!4678218 m!5573031))

(declare-fun m!5573035 () Bool)

(assert (=> b!4678218 m!5573035))

(declare-fun m!5573037 () Bool)

(assert (=> b!4678218 m!5573037))

(declare-fun m!5573039 () Bool)

(assert (=> b!4678218 m!5573039))

(declare-fun m!5573041 () Bool)

(assert (=> b!4678218 m!5573041))

(declare-fun m!5573043 () Bool)

(assert (=> b!4678218 m!5573043))

(declare-fun m!5573045 () Bool)

(assert (=> b!4678218 m!5573045))

(declare-fun m!5573047 () Bool)

(assert (=> b!4678218 m!5573047))

(assert (=> b!4678218 m!5573041))

(assert (=> b!4678218 m!5573043))

(declare-fun m!5573049 () Bool)

(assert (=> b!4678218 m!5573049))

(declare-fun m!5573051 () Bool)

(assert (=> b!4678218 m!5573051))

(declare-fun m!5573053 () Bool)

(assert (=> d!1486946 m!5573053))

(declare-fun m!5573055 () Bool)

(assert (=> d!1486946 m!5573055))

(assert (=> b!4677933 d!1486946))

(declare-fun d!1486948 () Bool)

(assert (=> d!1486948 (= (head!9852 oldBucket!34) (h!58422 oldBucket!34))))

(assert (=> b!4677933 d!1486948))

(declare-fun d!1486950 () Bool)

(declare-fun content!9094 (List!52343) (InoxSet tuple2!53514))

(assert (=> d!1486950 (= (eq!969 (addToMapMapFromBucket!1212 (Cons!52219 lt!1837396 lt!1837397) lt!1837392) (+!2082 lt!1837400 lt!1837396)) (= (content!9094 (toList!5450 (addToMapMapFromBucket!1212 (Cons!52219 lt!1837396 lt!1837397) lt!1837392))) (content!9094 (toList!5450 (+!2082 lt!1837400 lt!1837396)))))))

(declare-fun bs!1080980 () Bool)

(assert (= bs!1080980 d!1486950))

(declare-fun m!5573057 () Bool)

(assert (=> bs!1080980 m!5573057))

(declare-fun m!5573059 () Bool)

(assert (=> bs!1080980 m!5573059))

(assert (=> b!4677933 d!1486950))

(declare-fun d!1486952 () Bool)

(assert (=> d!1486952 (= (eq!969 lt!1837391 (addToMapMapFromBucket!1212 oldBucket!34 lt!1837392)) (= (content!9094 (toList!5450 lt!1837391)) (content!9094 (toList!5450 (addToMapMapFromBucket!1212 oldBucket!34 lt!1837392)))))))

(declare-fun bs!1080981 () Bool)

(assert (= bs!1080981 d!1486952))

(declare-fun m!5573061 () Bool)

(assert (=> bs!1080981 m!5573061))

(declare-fun m!5573063 () Bool)

(assert (=> bs!1080981 m!5573063))

(assert (=> b!4677933 d!1486952))

(declare-fun bs!1080982 () Bool)

(declare-fun b!4678221 () Bool)

(assert (= bs!1080982 (and b!4678221 b!4678060)))

(declare-fun lambda!204135 () Int)

(assert (=> bs!1080982 (= lambda!204135 lambda!204096)))

(declare-fun bs!1080983 () Bool)

(assert (= bs!1080983 (and b!4678221 b!4678099)))

(assert (=> bs!1080983 (= lambda!204135 lambda!204115)))

(declare-fun bs!1080984 () Bool)

(assert (= bs!1080984 (and b!4678221 b!4678092)))

(assert (=> bs!1080984 (= lambda!204135 lambda!204111)))

(declare-fun bs!1080985 () Bool)

(assert (= bs!1080985 (and b!4678221 b!4678062)))

(assert (=> bs!1080985 (= lambda!204135 lambda!204097)))

(declare-fun bs!1080986 () Bool)

(assert (= bs!1080986 (and b!4678221 b!4678218)))

(assert (=> bs!1080986 (= lambda!204135 lambda!204132)))

(declare-fun bs!1080987 () Bool)

(assert (= bs!1080987 (and b!4678221 b!4678090)))

(assert (=> bs!1080987 (= lambda!204135 lambda!204110)))

(assert (=> bs!1080983 (= (= lt!1837392 lt!1837696) (= lambda!204135 lambda!204116))))

(declare-fun bs!1080988 () Bool)

(assert (= bs!1080988 (and b!4678221 d!1486818)))

(assert (=> bs!1080988 (not (= lambda!204135 lambda!204016))))

(declare-fun bs!1080989 () Bool)

(assert (= bs!1080989 (and b!4678221 d!1486946)))

(assert (=> bs!1080989 (= (= lt!1837392 lt!1837808) (= lambda!204135 lambda!204134))))

(assert (=> bs!1080984 (= (= lt!1837392 lt!1837673) (= lambda!204135 lambda!204112))))

(declare-fun bs!1080990 () Bool)

(assert (= bs!1080990 (and b!4678221 d!1486884)))

(assert (=> bs!1080990 (= (= lt!1837392 lt!1837670) (= lambda!204135 lambda!204113))))

(assert (=> bs!1080985 (= (= lt!1837392 lt!1837621) (= lambda!204135 lambda!204098))))

(declare-fun bs!1080991 () Bool)

(assert (= bs!1080991 (and b!4678221 d!1486932)))

(assert (=> bs!1080991 (not (= lambda!204135 lambda!204130))))

(declare-fun bs!1080992 () Bool)

(assert (= bs!1080992 (and b!4678221 d!1486886)))

(assert (=> bs!1080992 (= (= lt!1837392 lt!1837693) (= lambda!204135 lambda!204117))))

(declare-fun bs!1080993 () Bool)

(assert (= bs!1080993 (and b!4678221 b!4678097)))

(assert (=> bs!1080993 (= lambda!204135 lambda!204114)))

(declare-fun bs!1080994 () Bool)

(assert (= bs!1080994 (and b!4678221 b!4678216)))

(assert (=> bs!1080994 (= lambda!204135 lambda!204131)))

(assert (=> bs!1080986 (= (= lt!1837392 lt!1837811) (= lambda!204135 lambda!204133))))

(declare-fun bs!1080995 () Bool)

(assert (= bs!1080995 (and b!4678221 d!1486834)))

(assert (=> bs!1080995 (= (= lt!1837392 lt!1837618) (= lambda!204135 lambda!204099))))

(assert (=> b!4678221 true))

(declare-fun bs!1080996 () Bool)

(declare-fun b!4678223 () Bool)

(assert (= bs!1080996 (and b!4678223 b!4678099)))

(declare-fun lambda!204136 () Int)

(assert (=> bs!1080996 (= lambda!204136 lambda!204115)))

(declare-fun bs!1080997 () Bool)

(assert (= bs!1080997 (and b!4678223 b!4678092)))

(assert (=> bs!1080997 (= lambda!204136 lambda!204111)))

(declare-fun bs!1080998 () Bool)

(assert (= bs!1080998 (and b!4678223 b!4678062)))

(assert (=> bs!1080998 (= lambda!204136 lambda!204097)))

(declare-fun bs!1080999 () Bool)

(assert (= bs!1080999 (and b!4678223 b!4678218)))

(assert (=> bs!1080999 (= lambda!204136 lambda!204132)))

(declare-fun bs!1081000 () Bool)

(assert (= bs!1081000 (and b!4678223 b!4678090)))

(assert (=> bs!1081000 (= lambda!204136 lambda!204110)))

(assert (=> bs!1080996 (= (= lt!1837392 lt!1837696) (= lambda!204136 lambda!204116))))

(declare-fun bs!1081001 () Bool)

(assert (= bs!1081001 (and b!4678223 d!1486818)))

(assert (=> bs!1081001 (not (= lambda!204136 lambda!204016))))

(declare-fun bs!1081002 () Bool)

(assert (= bs!1081002 (and b!4678223 b!4678221)))

(assert (=> bs!1081002 (= lambda!204136 lambda!204135)))

(declare-fun bs!1081003 () Bool)

(assert (= bs!1081003 (and b!4678223 b!4678060)))

(assert (=> bs!1081003 (= lambda!204136 lambda!204096)))

(declare-fun bs!1081004 () Bool)

(assert (= bs!1081004 (and b!4678223 d!1486946)))

(assert (=> bs!1081004 (= (= lt!1837392 lt!1837808) (= lambda!204136 lambda!204134))))

(assert (=> bs!1080997 (= (= lt!1837392 lt!1837673) (= lambda!204136 lambda!204112))))

(declare-fun bs!1081005 () Bool)

(assert (= bs!1081005 (and b!4678223 d!1486884)))

(assert (=> bs!1081005 (= (= lt!1837392 lt!1837670) (= lambda!204136 lambda!204113))))

(assert (=> bs!1080998 (= (= lt!1837392 lt!1837621) (= lambda!204136 lambda!204098))))

(declare-fun bs!1081006 () Bool)

(assert (= bs!1081006 (and b!4678223 d!1486932)))

(assert (=> bs!1081006 (not (= lambda!204136 lambda!204130))))

(declare-fun bs!1081007 () Bool)

(assert (= bs!1081007 (and b!4678223 d!1486886)))

(assert (=> bs!1081007 (= (= lt!1837392 lt!1837693) (= lambda!204136 lambda!204117))))

(declare-fun bs!1081008 () Bool)

(assert (= bs!1081008 (and b!4678223 b!4678097)))

(assert (=> bs!1081008 (= lambda!204136 lambda!204114)))

(declare-fun bs!1081009 () Bool)

(assert (= bs!1081009 (and b!4678223 b!4678216)))

(assert (=> bs!1081009 (= lambda!204136 lambda!204131)))

(assert (=> bs!1080999 (= (= lt!1837392 lt!1837811) (= lambda!204136 lambda!204133))))

(declare-fun bs!1081010 () Bool)

(assert (= bs!1081010 (and b!4678223 d!1486834)))

(assert (=> bs!1081010 (= (= lt!1837392 lt!1837618) (= lambda!204136 lambda!204099))))

(assert (=> b!4678223 true))

(declare-fun lt!1837832 () ListMap!4813)

(declare-fun lambda!204137 () Int)

(assert (=> b!4678223 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204136))))

(assert (=> bs!1080996 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204115))))

(assert (=> bs!1080997 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204111))))

(assert (=> bs!1080998 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204097))))

(assert (=> bs!1080999 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204132))))

(assert (=> bs!1081000 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204110))))

(assert (=> bs!1080996 (= (= lt!1837832 lt!1837696) (= lambda!204137 lambda!204116))))

(assert (=> bs!1081001 (not (= lambda!204137 lambda!204016))))

(assert (=> bs!1081002 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204135))))

(assert (=> bs!1081003 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204096))))

(assert (=> bs!1081004 (= (= lt!1837832 lt!1837808) (= lambda!204137 lambda!204134))))

(assert (=> bs!1080997 (= (= lt!1837832 lt!1837673) (= lambda!204137 lambda!204112))))

(assert (=> bs!1081005 (= (= lt!1837832 lt!1837670) (= lambda!204137 lambda!204113))))

(assert (=> bs!1080998 (= (= lt!1837832 lt!1837621) (= lambda!204137 lambda!204098))))

(assert (=> bs!1081006 (not (= lambda!204137 lambda!204130))))

(assert (=> bs!1081007 (= (= lt!1837832 lt!1837693) (= lambda!204137 lambda!204117))))

(assert (=> bs!1081008 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204114))))

(assert (=> bs!1081009 (= (= lt!1837832 lt!1837392) (= lambda!204137 lambda!204131))))

(assert (=> bs!1080999 (= (= lt!1837832 lt!1837811) (= lambda!204137 lambda!204133))))

(assert (=> bs!1081010 (= (= lt!1837832 lt!1837618) (= lambda!204137 lambda!204099))))

(assert (=> b!4678223 true))

(declare-fun bs!1081011 () Bool)

(declare-fun d!1486954 () Bool)

(assert (= bs!1081011 (and d!1486954 b!4678223)))

(declare-fun lambda!204138 () Int)

(declare-fun lt!1837829 () ListMap!4813)

(assert (=> bs!1081011 (= (= lt!1837829 lt!1837832) (= lambda!204138 lambda!204137))))

(assert (=> bs!1081011 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204136))))

(declare-fun bs!1081012 () Bool)

(assert (= bs!1081012 (and d!1486954 b!4678099)))

(assert (=> bs!1081012 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204115))))

(declare-fun bs!1081013 () Bool)

(assert (= bs!1081013 (and d!1486954 b!4678092)))

(assert (=> bs!1081013 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204111))))

(declare-fun bs!1081014 () Bool)

(assert (= bs!1081014 (and d!1486954 b!4678062)))

(assert (=> bs!1081014 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204097))))

(declare-fun bs!1081015 () Bool)

(assert (= bs!1081015 (and d!1486954 b!4678218)))

(assert (=> bs!1081015 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204132))))

(declare-fun bs!1081016 () Bool)

(assert (= bs!1081016 (and d!1486954 b!4678090)))

(assert (=> bs!1081016 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204110))))

(assert (=> bs!1081012 (= (= lt!1837829 lt!1837696) (= lambda!204138 lambda!204116))))

(declare-fun bs!1081017 () Bool)

(assert (= bs!1081017 (and d!1486954 d!1486818)))

(assert (=> bs!1081017 (not (= lambda!204138 lambda!204016))))

(declare-fun bs!1081018 () Bool)

(assert (= bs!1081018 (and d!1486954 b!4678221)))

(assert (=> bs!1081018 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204135))))

(declare-fun bs!1081019 () Bool)

(assert (= bs!1081019 (and d!1486954 b!4678060)))

(assert (=> bs!1081019 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204096))))

(declare-fun bs!1081020 () Bool)

(assert (= bs!1081020 (and d!1486954 d!1486946)))

(assert (=> bs!1081020 (= (= lt!1837829 lt!1837808) (= lambda!204138 lambda!204134))))

(assert (=> bs!1081013 (= (= lt!1837829 lt!1837673) (= lambda!204138 lambda!204112))))

(declare-fun bs!1081021 () Bool)

(assert (= bs!1081021 (and d!1486954 d!1486884)))

(assert (=> bs!1081021 (= (= lt!1837829 lt!1837670) (= lambda!204138 lambda!204113))))

(assert (=> bs!1081014 (= (= lt!1837829 lt!1837621) (= lambda!204138 lambda!204098))))

(declare-fun bs!1081022 () Bool)

(assert (= bs!1081022 (and d!1486954 d!1486932)))

(assert (=> bs!1081022 (not (= lambda!204138 lambda!204130))))

(declare-fun bs!1081023 () Bool)

(assert (= bs!1081023 (and d!1486954 d!1486886)))

(assert (=> bs!1081023 (= (= lt!1837829 lt!1837693) (= lambda!204138 lambda!204117))))

(declare-fun bs!1081024 () Bool)

(assert (= bs!1081024 (and d!1486954 b!4678097)))

(assert (=> bs!1081024 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204114))))

(declare-fun bs!1081025 () Bool)

(assert (= bs!1081025 (and d!1486954 b!4678216)))

(assert (=> bs!1081025 (= (= lt!1837829 lt!1837392) (= lambda!204138 lambda!204131))))

(assert (=> bs!1081015 (= (= lt!1837829 lt!1837811) (= lambda!204138 lambda!204133))))

(declare-fun bs!1081026 () Bool)

(assert (= bs!1081026 (and d!1486954 d!1486834)))

(assert (=> bs!1081026 (= (= lt!1837829 lt!1837618) (= lambda!204138 lambda!204099))))

(assert (=> d!1486954 true))

(declare-fun b!4678219 () Bool)

(declare-fun e!2918828 () Bool)

(assert (=> b!4678219 (= e!2918828 (invariantList!1368 (toList!5450 lt!1837829)))))

(declare-fun bm!326911 () Bool)

(declare-fun call!326917 () Unit!121981)

(assert (=> bm!326911 (= call!326917 (lemmaContainsAllItsOwnKeys!656 lt!1837392))))

(declare-fun b!4678220 () Bool)

(declare-fun e!2918827 () Bool)

(declare-fun call!326918 () Bool)

(assert (=> b!4678220 (= e!2918827 call!326918)))

(declare-fun e!2918826 () ListMap!4813)

(assert (=> b!4678221 (= e!2918826 lt!1837392)))

(declare-fun lt!1837830 () Unit!121981)

(assert (=> b!4678221 (= lt!1837830 call!326917)))

(assert (=> b!4678221 call!326918))

(declare-fun lt!1837836 () Unit!121981)

(assert (=> b!4678221 (= lt!1837836 lt!1837830)))

(declare-fun call!326916 () Bool)

(assert (=> b!4678221 call!326916))

(declare-fun lt!1837840 () Unit!121981)

(declare-fun Unit!122092 () Unit!121981)

(assert (=> b!4678221 (= lt!1837840 Unit!122092)))

(declare-fun c!800353 () Bool)

(declare-fun lt!1837828 () ListMap!4813)

(declare-fun bm!326912 () Bool)

(assert (=> bm!326912 (= call!326916 (forall!11207 (ite c!800353 (toList!5450 lt!1837392) (toList!5450 lt!1837828)) (ite c!800353 lambda!204135 lambda!204137)))))

(declare-fun b!4678222 () Bool)

(declare-fun res!1970934 () Bool)

(assert (=> b!4678222 (=> (not res!1970934) (not e!2918828))))

(assert (=> b!4678222 (= res!1970934 (forall!11207 (toList!5450 lt!1837392) lambda!204138))))

(assert (=> b!4678223 (= e!2918826 lt!1837832)))

(assert (=> b!4678223 (= lt!1837828 (+!2082 lt!1837392 (h!58422 oldBucket!34)))))

(assert (=> b!4678223 (= lt!1837832 (addToMapMapFromBucket!1212 (t!359489 oldBucket!34) (+!2082 lt!1837392 (h!58422 oldBucket!34))))))

(declare-fun lt!1837835 () Unit!121981)

(assert (=> b!4678223 (= lt!1837835 call!326917)))

(assert (=> b!4678223 (forall!11207 (toList!5450 lt!1837392) lambda!204136)))

(declare-fun lt!1837825 () Unit!121981)

(assert (=> b!4678223 (= lt!1837825 lt!1837835)))

(assert (=> b!4678223 call!326916))

(declare-fun lt!1837826 () Unit!121981)

(declare-fun Unit!122093 () Unit!121981)

(assert (=> b!4678223 (= lt!1837826 Unit!122093)))

(assert (=> b!4678223 (forall!11207 (t!359489 oldBucket!34) lambda!204137)))

(declare-fun lt!1837839 () Unit!121981)

(declare-fun Unit!122094 () Unit!121981)

(assert (=> b!4678223 (= lt!1837839 Unit!122094)))

(declare-fun lt!1837822 () Unit!121981)

(declare-fun Unit!122095 () Unit!121981)

(assert (=> b!4678223 (= lt!1837822 Unit!122095)))

(declare-fun lt!1837838 () Unit!121981)

(assert (=> b!4678223 (= lt!1837838 (forallContained!3340 (toList!5450 lt!1837828) lambda!204137 (h!58422 oldBucket!34)))))

(assert (=> b!4678223 (contains!15356 lt!1837828 (_1!30051 (h!58422 oldBucket!34)))))

(declare-fun lt!1837834 () Unit!121981)

(declare-fun Unit!122096 () Unit!121981)

(assert (=> b!4678223 (= lt!1837834 Unit!122096)))

(assert (=> b!4678223 (contains!15356 lt!1837832 (_1!30051 (h!58422 oldBucket!34)))))

(declare-fun lt!1837821 () Unit!121981)

(declare-fun Unit!122097 () Unit!121981)

(assert (=> b!4678223 (= lt!1837821 Unit!122097)))

(assert (=> b!4678223 (forall!11207 oldBucket!34 lambda!204137)))

(declare-fun lt!1837841 () Unit!121981)

(declare-fun Unit!122098 () Unit!121981)

(assert (=> b!4678223 (= lt!1837841 Unit!122098)))

(assert (=> b!4678223 (forall!11207 (toList!5450 lt!1837828) lambda!204137)))

(declare-fun lt!1837827 () Unit!121981)

(declare-fun Unit!122099 () Unit!121981)

(assert (=> b!4678223 (= lt!1837827 Unit!122099)))

(declare-fun lt!1837831 () Unit!121981)

(declare-fun Unit!122100 () Unit!121981)

(assert (=> b!4678223 (= lt!1837831 Unit!122100)))

(declare-fun lt!1837823 () Unit!121981)

(assert (=> b!4678223 (= lt!1837823 (addForallContainsKeyThenBeforeAdding!655 lt!1837392 lt!1837832 (_1!30051 (h!58422 oldBucket!34)) (_2!30051 (h!58422 oldBucket!34))))))

(assert (=> b!4678223 (forall!11207 (toList!5450 lt!1837392) lambda!204137)))

(declare-fun lt!1837833 () Unit!121981)

(assert (=> b!4678223 (= lt!1837833 lt!1837823)))

(assert (=> b!4678223 (forall!11207 (toList!5450 lt!1837392) lambda!204137)))

(declare-fun lt!1837837 () Unit!121981)

(declare-fun Unit!122101 () Unit!121981)

(assert (=> b!4678223 (= lt!1837837 Unit!122101)))

(declare-fun res!1970936 () Bool)

(assert (=> b!4678223 (= res!1970936 (forall!11207 oldBucket!34 lambda!204137))))

(assert (=> b!4678223 (=> (not res!1970936) (not e!2918827))))

(assert (=> b!4678223 e!2918827))

(declare-fun lt!1837824 () Unit!121981)

(declare-fun Unit!122102 () Unit!121981)

(assert (=> b!4678223 (= lt!1837824 Unit!122102)))

(declare-fun bm!326913 () Bool)

(assert (=> bm!326913 (= call!326918 (forall!11207 (toList!5450 lt!1837392) (ite c!800353 lambda!204135 lambda!204137)))))

(assert (=> d!1486954 e!2918828))

(declare-fun res!1970935 () Bool)

(assert (=> d!1486954 (=> (not res!1970935) (not e!2918828))))

(assert (=> d!1486954 (= res!1970935 (forall!11207 oldBucket!34 lambda!204138))))

(assert (=> d!1486954 (= lt!1837829 e!2918826)))

(assert (=> d!1486954 (= c!800353 ((_ is Nil!52219) oldBucket!34))))

(assert (=> d!1486954 (noDuplicateKeys!1780 oldBucket!34)))

(assert (=> d!1486954 (= (addToMapMapFromBucket!1212 oldBucket!34 lt!1837392) lt!1837829)))

(assert (= (and d!1486954 c!800353) b!4678221))

(assert (= (and d!1486954 (not c!800353)) b!4678223))

(assert (= (and b!4678223 res!1970936) b!4678220))

(assert (= (or b!4678221 b!4678223) bm!326911))

(assert (= (or b!4678221 b!4678223) bm!326912))

(assert (= (or b!4678221 b!4678220) bm!326913))

(assert (= (and d!1486954 res!1970935) b!4678222))

(assert (= (and b!4678222 res!1970934) b!4678219))

(declare-fun m!5573065 () Bool)

(assert (=> b!4678222 m!5573065))

(declare-fun m!5573067 () Bool)

(assert (=> bm!326913 m!5573067))

(declare-fun m!5573069 () Bool)

(assert (=> b!4678219 m!5573069))

(assert (=> bm!326911 m!5572639))

(declare-fun m!5573071 () Bool)

(assert (=> bm!326912 m!5573071))

(declare-fun m!5573073 () Bool)

(assert (=> b!4678223 m!5573073))

(declare-fun m!5573075 () Bool)

(assert (=> b!4678223 m!5573075))

(assert (=> b!4678223 m!5573073))

(declare-fun m!5573077 () Bool)

(assert (=> b!4678223 m!5573077))

(declare-fun m!5573079 () Bool)

(assert (=> b!4678223 m!5573079))

(declare-fun m!5573081 () Bool)

(assert (=> b!4678223 m!5573081))

(declare-fun m!5573083 () Bool)

(assert (=> b!4678223 m!5573083))

(declare-fun m!5573085 () Bool)

(assert (=> b!4678223 m!5573085))

(declare-fun m!5573087 () Bool)

(assert (=> b!4678223 m!5573087))

(declare-fun m!5573089 () Bool)

(assert (=> b!4678223 m!5573089))

(assert (=> b!4678223 m!5573083))

(assert (=> b!4678223 m!5573085))

(declare-fun m!5573091 () Bool)

(assert (=> b!4678223 m!5573091))

(declare-fun m!5573093 () Bool)

(assert (=> b!4678223 m!5573093))

(declare-fun m!5573095 () Bool)

(assert (=> d!1486954 m!5573095))

(assert (=> d!1486954 m!5572355))

(assert (=> b!4677933 d!1486954))

(declare-fun d!1486956 () Bool)

(declare-fun e!2918829 () Bool)

(assert (=> d!1486956 e!2918829))

(declare-fun res!1970938 () Bool)

(assert (=> d!1486956 (=> (not res!1970938) (not e!2918829))))

(declare-fun lt!1837844 () ListMap!4813)

(assert (=> d!1486956 (= res!1970938 (contains!15356 lt!1837844 (_1!30051 (h!58422 oldBucket!34))))))

(declare-fun lt!1837842 () List!52343)

(assert (=> d!1486956 (= lt!1837844 (ListMap!4814 lt!1837842))))

(declare-fun lt!1837845 () Unit!121981)

(declare-fun lt!1837843 () Unit!121981)

(assert (=> d!1486956 (= lt!1837845 lt!1837843)))

(assert (=> d!1486956 (= (getValueByKey!1711 lt!1837842 (_1!30051 (h!58422 oldBucket!34))) (Some!11962 (_2!30051 (h!58422 oldBucket!34))))))

(assert (=> d!1486956 (= lt!1837843 (lemmaContainsTupThenGetReturnValue!970 lt!1837842 (_1!30051 (h!58422 oldBucket!34)) (_2!30051 (h!58422 oldBucket!34))))))

(assert (=> d!1486956 (= lt!1837842 (insertNoDuplicatedKeys!478 (toList!5450 lt!1837400) (_1!30051 (h!58422 oldBucket!34)) (_2!30051 (h!58422 oldBucket!34))))))

(assert (=> d!1486956 (= (+!2082 lt!1837400 (h!58422 oldBucket!34)) lt!1837844)))

(declare-fun b!4678224 () Bool)

(declare-fun res!1970937 () Bool)

(assert (=> b!4678224 (=> (not res!1970937) (not e!2918829))))

(assert (=> b!4678224 (= res!1970937 (= (getValueByKey!1711 (toList!5450 lt!1837844) (_1!30051 (h!58422 oldBucket!34))) (Some!11962 (_2!30051 (h!58422 oldBucket!34)))))))

(declare-fun b!4678225 () Bool)

(assert (=> b!4678225 (= e!2918829 (contains!15360 (toList!5450 lt!1837844) (h!58422 oldBucket!34)))))

(assert (= (and d!1486956 res!1970938) b!4678224))

(assert (= (and b!4678224 res!1970937) b!4678225))

(declare-fun m!5573097 () Bool)

(assert (=> d!1486956 m!5573097))

(declare-fun m!5573099 () Bool)

(assert (=> d!1486956 m!5573099))

(declare-fun m!5573101 () Bool)

(assert (=> d!1486956 m!5573101))

(declare-fun m!5573103 () Bool)

(assert (=> d!1486956 m!5573103))

(declare-fun m!5573105 () Bool)

(assert (=> b!4678224 m!5573105))

(declare-fun m!5573107 () Bool)

(assert (=> b!4678225 m!5573107))

(assert (=> b!4677933 d!1486956))

(declare-fun d!1486958 () Bool)

(declare-fun e!2918830 () Bool)

(assert (=> d!1486958 e!2918830))

(declare-fun res!1970940 () Bool)

(assert (=> d!1486958 (=> (not res!1970940) (not e!2918830))))

(declare-fun lt!1837848 () ListMap!4813)

(assert (=> d!1486958 (= res!1970940 (contains!15356 lt!1837848 (_1!30051 lt!1837396)))))

(declare-fun lt!1837846 () List!52343)

(assert (=> d!1486958 (= lt!1837848 (ListMap!4814 lt!1837846))))

(declare-fun lt!1837849 () Unit!121981)

(declare-fun lt!1837847 () Unit!121981)

(assert (=> d!1486958 (= lt!1837849 lt!1837847)))

(assert (=> d!1486958 (= (getValueByKey!1711 lt!1837846 (_1!30051 lt!1837396)) (Some!11962 (_2!30051 lt!1837396)))))

(assert (=> d!1486958 (= lt!1837847 (lemmaContainsTupThenGetReturnValue!970 lt!1837846 (_1!30051 lt!1837396) (_2!30051 lt!1837396)))))

(assert (=> d!1486958 (= lt!1837846 (insertNoDuplicatedKeys!478 (toList!5450 lt!1837400) (_1!30051 lt!1837396) (_2!30051 lt!1837396)))))

(assert (=> d!1486958 (= (+!2082 lt!1837400 lt!1837396) lt!1837848)))

(declare-fun b!4678226 () Bool)

(declare-fun res!1970939 () Bool)

(assert (=> b!4678226 (=> (not res!1970939) (not e!2918830))))

(assert (=> b!4678226 (= res!1970939 (= (getValueByKey!1711 (toList!5450 lt!1837848) (_1!30051 lt!1837396)) (Some!11962 (_2!30051 lt!1837396))))))

(declare-fun b!4678227 () Bool)

(assert (=> b!4678227 (= e!2918830 (contains!15360 (toList!5450 lt!1837848) lt!1837396))))

(assert (= (and d!1486958 res!1970940) b!4678226))

(assert (= (and b!4678226 res!1970939) b!4678227))

(declare-fun m!5573109 () Bool)

(assert (=> d!1486958 m!5573109))

(declare-fun m!5573111 () Bool)

(assert (=> d!1486958 m!5573111))

(declare-fun m!5573113 () Bool)

(assert (=> d!1486958 m!5573113))

(declare-fun m!5573115 () Bool)

(assert (=> d!1486958 m!5573115))

(declare-fun m!5573117 () Bool)

(assert (=> b!4678226 m!5573117))

(declare-fun m!5573119 () Bool)

(assert (=> b!4678227 m!5573119))

(assert (=> b!4677933 d!1486958))

(declare-fun b!4678228 () Bool)

(declare-fun e!2918832 () Bool)

(assert (=> b!4678228 (= e!2918832 (contains!15359 (keys!18597 lt!1837393) key!4653))))

(declare-fun b!4678229 () Bool)

(declare-fun e!2918831 () Bool)

(assert (=> b!4678229 (= e!2918831 (not (contains!15359 (keys!18597 lt!1837393) key!4653)))))

(declare-fun bm!326914 () Bool)

(declare-fun call!326919 () Bool)

(declare-fun e!2918836 () List!52346)

(assert (=> bm!326914 (= call!326919 (contains!15359 e!2918836 key!4653))))

(declare-fun c!800356 () Bool)

(declare-fun c!800355 () Bool)

(assert (=> bm!326914 (= c!800356 c!800355)))

(declare-fun b!4678230 () Bool)

(declare-fun e!2918834 () Unit!121981)

(declare-fun lt!1837855 () Unit!121981)

(assert (=> b!4678230 (= e!2918834 lt!1837855)))

(declare-fun lt!1837854 () Unit!121981)

(assert (=> b!4678230 (= lt!1837854 (lemmaContainsKeyImpliesGetValueByKeyDefined!1603 (toList!5450 lt!1837393) key!4653))))

(assert (=> b!4678230 (isDefined!9218 (getValueByKey!1711 (toList!5450 lt!1837393) key!4653))))

(declare-fun lt!1837857 () Unit!121981)

(assert (=> b!4678230 (= lt!1837857 lt!1837854)))

(assert (=> b!4678230 (= lt!1837855 (lemmaInListThenGetKeysListContains!803 (toList!5450 lt!1837393) key!4653))))

(assert (=> b!4678230 call!326919))

(declare-fun b!4678231 () Bool)

(assert (=> b!4678231 false))

(declare-fun lt!1837856 () Unit!121981)

(declare-fun lt!1837850 () Unit!121981)

(assert (=> b!4678231 (= lt!1837856 lt!1837850)))

(assert (=> b!4678231 (containsKey!2919 (toList!5450 lt!1837393) key!4653)))

(assert (=> b!4678231 (= lt!1837850 (lemmaInGetKeysListThenContainsKey!807 (toList!5450 lt!1837393) key!4653))))

(declare-fun e!2918835 () Unit!121981)

(declare-fun Unit!122103 () Unit!121981)

(assert (=> b!4678231 (= e!2918835 Unit!122103)))

(declare-fun b!4678232 () Bool)

(assert (=> b!4678232 (= e!2918836 (keys!18597 lt!1837393))))

(declare-fun b!4678234 () Bool)

(assert (=> b!4678234 (= e!2918836 (getKeysList!808 (toList!5450 lt!1837393)))))

(declare-fun b!4678235 () Bool)

(assert (=> b!4678235 (= e!2918834 e!2918835)))

(declare-fun c!800354 () Bool)

(assert (=> b!4678235 (= c!800354 call!326919)))

(declare-fun b!4678236 () Bool)

(declare-fun Unit!122104 () Unit!121981)

(assert (=> b!4678236 (= e!2918835 Unit!122104)))

(declare-fun b!4678233 () Bool)

(declare-fun e!2918833 () Bool)

(assert (=> b!4678233 (= e!2918833 e!2918832)))

(declare-fun res!1970941 () Bool)

(assert (=> b!4678233 (=> (not res!1970941) (not e!2918832))))

(assert (=> b!4678233 (= res!1970941 (isDefined!9218 (getValueByKey!1711 (toList!5450 lt!1837393) key!4653)))))

(declare-fun d!1486960 () Bool)

(assert (=> d!1486960 e!2918833))

(declare-fun res!1970942 () Bool)

(assert (=> d!1486960 (=> res!1970942 e!2918833)))

(assert (=> d!1486960 (= res!1970942 e!2918831)))

(declare-fun res!1970943 () Bool)

(assert (=> d!1486960 (=> (not res!1970943) (not e!2918831))))

(declare-fun lt!1837852 () Bool)

(assert (=> d!1486960 (= res!1970943 (not lt!1837852))))

(declare-fun lt!1837851 () Bool)

(assert (=> d!1486960 (= lt!1837852 lt!1837851)))

(declare-fun lt!1837853 () Unit!121981)

(assert (=> d!1486960 (= lt!1837853 e!2918834)))

(assert (=> d!1486960 (= c!800355 lt!1837851)))

(assert (=> d!1486960 (= lt!1837851 (containsKey!2919 (toList!5450 lt!1837393) key!4653))))

(assert (=> d!1486960 (= (contains!15356 lt!1837393 key!4653) lt!1837852)))

(assert (= (and d!1486960 c!800355) b!4678230))

(assert (= (and d!1486960 (not c!800355)) b!4678235))

(assert (= (and b!4678235 c!800354) b!4678231))

(assert (= (and b!4678235 (not c!800354)) b!4678236))

(assert (= (or b!4678230 b!4678235) bm!326914))

(assert (= (and bm!326914 c!800356) b!4678234))

(assert (= (and bm!326914 (not c!800356)) b!4678232))

(assert (= (and d!1486960 res!1970943) b!4678229))

(assert (= (and d!1486960 (not res!1970942)) b!4678233))

(assert (= (and b!4678233 res!1970941) b!4678228))

(declare-fun m!5573121 () Bool)

(assert (=> bm!326914 m!5573121))

(declare-fun m!5573123 () Bool)

(assert (=> b!4678229 m!5573123))

(assert (=> b!4678229 m!5573123))

(declare-fun m!5573125 () Bool)

(assert (=> b!4678229 m!5573125))

(declare-fun m!5573127 () Bool)

(assert (=> b!4678231 m!5573127))

(declare-fun m!5573129 () Bool)

(assert (=> b!4678231 m!5573129))

(declare-fun m!5573131 () Bool)

(assert (=> b!4678234 m!5573131))

(assert (=> b!4678232 m!5573123))

(assert (=> b!4678228 m!5573123))

(assert (=> b!4678228 m!5573123))

(assert (=> b!4678228 m!5573125))

(declare-fun m!5573133 () Bool)

(assert (=> b!4678233 m!5573133))

(assert (=> b!4678233 m!5573133))

(declare-fun m!5573135 () Bool)

(assert (=> b!4678233 m!5573135))

(declare-fun m!5573137 () Bool)

(assert (=> b!4678230 m!5573137))

(assert (=> b!4678230 m!5573133))

(assert (=> b!4678230 m!5573133))

(assert (=> b!4678230 m!5573135))

(declare-fun m!5573139 () Bool)

(assert (=> b!4678230 m!5573139))

(assert (=> d!1486960 m!5573127))

(assert (=> b!4677924 d!1486960))

(declare-fun bs!1081027 () Bool)

(declare-fun d!1486962 () Bool)

(assert (= bs!1081027 (and d!1486962 start!472176)))

(declare-fun lambda!204139 () Int)

(assert (=> bs!1081027 (= lambda!204139 lambda!204013)))

(declare-fun bs!1081028 () Bool)

(assert (= bs!1081028 (and d!1486962 d!1486828)))

(assert (=> bs!1081028 (not (= lambda!204139 lambda!204019))))

(declare-fun bs!1081029 () Bool)

(assert (= bs!1081029 (and d!1486962 d!1486862)))

(assert (=> bs!1081029 (= lambda!204139 lambda!204106)))

(declare-fun bs!1081030 () Bool)

(assert (= bs!1081030 (and d!1486962 d!1486922)))

(assert (=> bs!1081030 (= lambda!204139 lambda!204129)))

(declare-fun lt!1837858 () ListMap!4813)

(assert (=> d!1486962 (invariantList!1368 (toList!5450 lt!1837858))))

(declare-fun e!2918837 () ListMap!4813)

(assert (=> d!1486962 (= lt!1837858 e!2918837)))

(declare-fun c!800357 () Bool)

(assert (=> d!1486962 (= c!800357 ((_ is Cons!52220) (toList!5449 lm!2023)))))

(assert (=> d!1486962 (forall!11205 (toList!5449 lm!2023) lambda!204139)))

(assert (=> d!1486962 (= (extractMap!1806 (toList!5449 lm!2023)) lt!1837858)))

(declare-fun b!4678237 () Bool)

(assert (=> b!4678237 (= e!2918837 (addToMapMapFromBucket!1212 (_2!30052 (h!58423 (toList!5449 lm!2023))) (extractMap!1806 (t!359490 (toList!5449 lm!2023)))))))

(declare-fun b!4678238 () Bool)

(assert (=> b!4678238 (= e!2918837 (ListMap!4814 Nil!52219))))

(assert (= (and d!1486962 c!800357) b!4678237))

(assert (= (and d!1486962 (not c!800357)) b!4678238))

(declare-fun m!5573141 () Bool)

(assert (=> d!1486962 m!5573141))

(declare-fun m!5573143 () Bool)

(assert (=> d!1486962 m!5573143))

(assert (=> b!4678237 m!5572411))

(assert (=> b!4678237 m!5572411))

(declare-fun m!5573145 () Bool)

(assert (=> b!4678237 m!5573145))

(assert (=> b!4677924 d!1486962))

(declare-fun bs!1081031 () Bool)

(declare-fun d!1486964 () Bool)

(assert (= bs!1081031 (and d!1486964 d!1486922)))

(declare-fun lambda!204140 () Int)

(assert (=> bs!1081031 (= lambda!204140 lambda!204129)))

(declare-fun bs!1081032 () Bool)

(assert (= bs!1081032 (and d!1486964 d!1486828)))

(assert (=> bs!1081032 (not (= lambda!204140 lambda!204019))))

(declare-fun bs!1081033 () Bool)

(assert (= bs!1081033 (and d!1486964 d!1486962)))

(assert (=> bs!1081033 (= lambda!204140 lambda!204139)))

(declare-fun bs!1081034 () Bool)

(assert (= bs!1081034 (and d!1486964 start!472176)))

(assert (=> bs!1081034 (= lambda!204140 lambda!204013)))

(declare-fun bs!1081035 () Bool)

(assert (= bs!1081035 (and d!1486964 d!1486862)))

(assert (=> bs!1081035 (= lambda!204140 lambda!204106)))

(declare-fun lt!1837859 () ListMap!4813)

(assert (=> d!1486964 (invariantList!1368 (toList!5450 lt!1837859))))

(declare-fun e!2918838 () ListMap!4813)

(assert (=> d!1486964 (= lt!1837859 e!2918838)))

(declare-fun c!800358 () Bool)

(assert (=> d!1486964 (= c!800358 ((_ is Cons!52220) (Cons!52220 (tuple2!53517 hash!405 newBucket!218) (t!359490 (toList!5449 lm!2023)))))))

(assert (=> d!1486964 (forall!11205 (Cons!52220 (tuple2!53517 hash!405 newBucket!218) (t!359490 (toList!5449 lm!2023))) lambda!204140)))

(assert (=> d!1486964 (= (extractMap!1806 (Cons!52220 (tuple2!53517 hash!405 newBucket!218) (t!359490 (toList!5449 lm!2023)))) lt!1837859)))

(declare-fun b!4678239 () Bool)

(assert (=> b!4678239 (= e!2918838 (addToMapMapFromBucket!1212 (_2!30052 (h!58423 (Cons!52220 (tuple2!53517 hash!405 newBucket!218) (t!359490 (toList!5449 lm!2023))))) (extractMap!1806 (t!359490 (Cons!52220 (tuple2!53517 hash!405 newBucket!218) (t!359490 (toList!5449 lm!2023)))))))))

(declare-fun b!4678240 () Bool)

(assert (=> b!4678240 (= e!2918838 (ListMap!4814 Nil!52219))))

(assert (= (and d!1486964 c!800358) b!4678239))

(assert (= (and d!1486964 (not c!800358)) b!4678240))

(declare-fun m!5573147 () Bool)

(assert (=> d!1486964 m!5573147))

(declare-fun m!5573149 () Bool)

(assert (=> d!1486964 m!5573149))

(declare-fun m!5573151 () Bool)

(assert (=> b!4678239 m!5573151))

(assert (=> b!4678239 m!5573151))

(declare-fun m!5573153 () Bool)

(assert (=> b!4678239 m!5573153))

(assert (=> b!4677934 d!1486964))

(declare-fun bs!1081036 () Bool)

(declare-fun d!1486966 () Bool)

(assert (= bs!1081036 (and d!1486966 d!1486922)))

(declare-fun lambda!204141 () Int)

(assert (=> bs!1081036 (= lambda!204141 lambda!204129)))

(declare-fun bs!1081037 () Bool)

(assert (= bs!1081037 (and d!1486966 d!1486828)))

(assert (=> bs!1081037 (not (= lambda!204141 lambda!204019))))

(declare-fun bs!1081038 () Bool)

(assert (= bs!1081038 (and d!1486966 d!1486962)))

(assert (=> bs!1081038 (= lambda!204141 lambda!204139)))

(declare-fun bs!1081039 () Bool)

(assert (= bs!1081039 (and d!1486966 d!1486964)))

(assert (=> bs!1081039 (= lambda!204141 lambda!204140)))

(declare-fun bs!1081040 () Bool)

(assert (= bs!1081040 (and d!1486966 start!472176)))

(assert (=> bs!1081040 (= lambda!204141 lambda!204013)))

(declare-fun bs!1081041 () Bool)

(assert (= bs!1081041 (and d!1486966 d!1486862)))

(assert (=> bs!1081041 (= lambda!204141 lambda!204106)))

(declare-fun lt!1837860 () ListMap!4813)

(assert (=> d!1486966 (invariantList!1368 (toList!5450 lt!1837860))))

(declare-fun e!2918839 () ListMap!4813)

(assert (=> d!1486966 (= lt!1837860 e!2918839)))

(declare-fun c!800359 () Bool)

(assert (=> d!1486966 (= c!800359 ((_ is Cons!52220) lt!1837402))))

(assert (=> d!1486966 (forall!11205 lt!1837402 lambda!204141)))

(assert (=> d!1486966 (= (extractMap!1806 lt!1837402) lt!1837860)))

(declare-fun b!4678241 () Bool)

(assert (=> b!4678241 (= e!2918839 (addToMapMapFromBucket!1212 (_2!30052 (h!58423 lt!1837402)) (extractMap!1806 (t!359490 lt!1837402))))))

(declare-fun b!4678242 () Bool)

(assert (=> b!4678242 (= e!2918839 (ListMap!4814 Nil!52219))))

(assert (= (and d!1486966 c!800359) b!4678241))

(assert (= (and d!1486966 (not c!800359)) b!4678242))

(declare-fun m!5573155 () Bool)

(assert (=> d!1486966 m!5573155))

(declare-fun m!5573157 () Bool)

(assert (=> d!1486966 m!5573157))

(declare-fun m!5573159 () Bool)

(assert (=> b!4678241 m!5573159))

(assert (=> b!4678241 m!5573159))

(declare-fun m!5573161 () Bool)

(assert (=> b!4678241 m!5573161))

(assert (=> b!4677934 d!1486966))

(declare-fun b!4678247 () Bool)

(declare-fun tp!1344844 () Bool)

(declare-fun e!2918842 () Bool)

(assert (=> b!4678247 (= e!2918842 (and tp_is_empty!30413 tp_is_empty!30415 tp!1344844))))

(assert (=> b!4677915 (= tp!1344830 e!2918842)))

(assert (= (and b!4677915 ((_ is Cons!52219) (t!359489 newBucket!218))) b!4678247))

(declare-fun b!4678252 () Bool)

(declare-fun e!2918845 () Bool)

(declare-fun tp!1344849 () Bool)

(declare-fun tp!1344850 () Bool)

(assert (=> b!4678252 (= e!2918845 (and tp!1344849 tp!1344850))))

(assert (=> b!4677935 (= tp!1344829 e!2918845)))

(assert (= (and b!4677935 ((_ is Cons!52220) (toList!5449 lm!2023))) b!4678252))

(declare-fun b!4678253 () Bool)

(declare-fun e!2918846 () Bool)

(declare-fun tp!1344851 () Bool)

(assert (=> b!4678253 (= e!2918846 (and tp_is_empty!30413 tp_is_empty!30415 tp!1344851))))

(assert (=> b!4677913 (= tp!1344831 e!2918846)))

(assert (= (and b!4677913 ((_ is Cons!52219) (t!359489 oldBucket!34))) b!4678253))

(declare-fun b_lambda!176609 () Bool)

(assert (= b_lambda!176599 (or start!472176 b_lambda!176609)))

(declare-fun bs!1081042 () Bool)

(declare-fun d!1486968 () Bool)

(assert (= bs!1081042 (and d!1486968 start!472176)))

(assert (=> bs!1081042 (= (dynLambda!21671 lambda!204013 (h!58423 (toList!5449 lm!2023))) (noDuplicateKeys!1780 (_2!30052 (h!58423 (toList!5449 lm!2023)))))))

(assert (=> bs!1081042 m!5572667))

(assert (=> b!4677966 d!1486968))

(declare-fun b_lambda!176611 () Bool)

(assert (= b_lambda!176601 (or start!472176 b_lambda!176611)))

(declare-fun bs!1081043 () Bool)

(declare-fun d!1486970 () Bool)

(assert (= bs!1081043 (and d!1486970 start!472176)))

(assert (=> bs!1081043 (= (dynLambda!21671 lambda!204013 (h!58423 (Cons!52220 lt!1837401 (t!359490 (toList!5449 lm!2023))))) (noDuplicateKeys!1780 (_2!30052 (h!58423 (Cons!52220 lt!1837401 (t!359490 (toList!5449 lm!2023)))))))))

(declare-fun m!5573163 () Bool)

(assert (=> bs!1081043 m!5573163))

(assert (=> b!4678104 d!1486970))

(check-sat (not bm!326907) (not b!4678239) (not b!4678157) (not d!1486934) (not d!1486832) (not b!4678088) (not d!1486886) (not bm!326895) (not b!4678058) (not b_lambda!176609) (not b!4678156) (not d!1486834) (not d!1486964) (not d!1486828) (not b!4678091) (not d!1486878) (not d!1486920) (not b!4678169) (not b!4678195) (not b!4678105) (not bm!326908) (not d!1486902) (not b!4678174) (not b!4678098) (not bm!326889) (not b!4678171) (not b!4678194) (not b!4678226) (not b!4678172) (not b!4677967) (not d!1486952) (not b!4678253) (not b!4678160) (not b!4678095) (not b!4678252) (not d!1486938) (not b!4678237) (not b!4678092) (not bm!326890) (not b!4678234) (not b!4678231) (not b!4678111) (not d!1486954) (not d!1486966) (not bm!326909) (not bs!1081042) (not b_lambda!176611) (not d!1486932) (not b!4678227) (not b!4678247) (not b!4678159) (not bm!326913) (not b!4678190) (not d!1486960) tp_is_empty!30413 (not d!1486884) (not b!4678061) (not b!4678230) (not b!4678233) (not d!1486956) (not d!1486942) (not bm!326896) (not b!4678173) (not bm!326897) (not b!4678062) (not b!4678161) (not bm!326914) (not d!1486950) (not b!4678229) (not b!4678228) (not bm!326906) (not b!4678158) (not d!1486818) tp_is_empty!30415 (not d!1486922) (not bm!326899) (not bm!326912) (not d!1486962) (not d!1486940) (not b!4678201) (not b!4678200) (not b!4678087) (not b!4678225) (not bm!326910) (not b!4678241) (not b!4678214) (not b!4678086) (not b!4678232) (not bm!326891) (not b!4678076) (not b!4678191) (not d!1486946) (not d!1486862) (not b!4678212) (not bm!326911) (not d!1486876) (not b!4678219) (not b!4678224) (not d!1486944) (not d!1486958) (not b!4678170) (not b!4678223) (not bm!326900) (not bm!326898) (not bs!1081043) (not b!4678222) (not b!4678217) (not b!4678155) (not b!4678218) (not d!1486936) (not b!4678099) (not b!4678168))
(check-sat)

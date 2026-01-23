; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!445696 () Bool)

(assert start!445696)

(declare-fun b!4509635 () Bool)

(declare-fun e!2809351 () Bool)

(declare-fun e!2809350 () Bool)

(assert (=> b!4509635 (= e!2809351 e!2809350)))

(declare-fun res!1875576 () Bool)

(assert (=> b!4509635 (=> (not res!1875576) (not e!2809350))))

(declare-datatypes ((K!11985 0))(
  ( (K!11986 (val!17859 Int)) )
))
(declare-datatypes ((V!12231 0))(
  ( (V!12232 (val!17860 Int)) )
))
(declare-datatypes ((tuple2!50986 0))(
  ( (tuple2!50987 (_1!28787 K!11985) (_2!28787 V!12231)) )
))
(declare-datatypes ((List!50706 0))(
  ( (Nil!50582) (Cons!50582 (h!56415 tuple2!50986) (t!357668 List!50706)) )
))
(declare-datatypes ((ListMap!3545 0))(
  ( (ListMap!3546 (toList!4283 List!50706)) )
))
(declare-fun lt!1687920 () ListMap!3545)

(declare-fun key!3287 () K!11985)

(declare-fun contains!13277 (ListMap!3545 K!11985) Bool)

(assert (=> b!4509635 (= res!1875576 (contains!13277 lt!1687920 key!3287))))

(declare-datatypes ((tuple2!50988 0))(
  ( (tuple2!50989 (_1!28788 (_ BitVec 64)) (_2!28788 List!50706)) )
))
(declare-datatypes ((List!50707 0))(
  ( (Nil!50583) (Cons!50583 (h!56416 tuple2!50988) (t!357669 List!50707)) )
))
(declare-datatypes ((ListLongMap!2915 0))(
  ( (ListLongMap!2916 (toList!4284 List!50707)) )
))
(declare-fun lm!1477 () ListLongMap!2915)

(declare-fun extractMap!1194 (List!50707) ListMap!3545)

(assert (=> b!4509635 (= lt!1687920 (extractMap!1194 (toList!4284 lm!1477)))))

(declare-fun b!4509636 () Bool)

(declare-fun res!1875577 () Bool)

(declare-fun e!2809359 () Bool)

(assert (=> b!4509636 (=> res!1875577 e!2809359)))

(declare-fun newBucket!178 () List!50706)

(declare-fun noDuplicateKeys!1138 (List!50706) Bool)

(assert (=> b!4509636 (= res!1875577 (not (noDuplicateKeys!1138 newBucket!178)))))

(declare-fun b!4509637 () Bool)

(declare-fun e!2809361 () Bool)

(declare-fun lt!1687925 () ListLongMap!2915)

(declare-fun lambda!170259 () Int)

(declare-fun forall!10213 (List!50707 Int) Bool)

(assert (=> b!4509637 (= e!2809361 (forall!10213 (toList!4284 lt!1687925) lambda!170259))))

(declare-fun b!4509638 () Bool)

(declare-fun e!2809353 () Bool)

(assert (=> b!4509638 (= e!2809359 e!2809353)))

(declare-fun res!1875574 () Bool)

(assert (=> b!4509638 (=> res!1875574 e!2809353)))

(declare-fun lt!1687914 () ListLongMap!2915)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13278 (ListLongMap!2915 (_ BitVec 64)) Bool)

(assert (=> b!4509638 (= res!1875574 (not (contains!13278 lt!1687914 hash!344)))))

(declare-fun tail!7692 (ListLongMap!2915) ListLongMap!2915)

(assert (=> b!4509638 (= lt!1687914 (tail!7692 lm!1477))))

(declare-fun b!4509639 () Bool)

(declare-fun e!2809354 () Bool)

(assert (=> b!4509639 (= e!2809354 (not e!2809359))))

(declare-fun res!1875588 () Bool)

(assert (=> b!4509639 (=> res!1875588 e!2809359)))

(declare-fun lt!1687927 () List!50706)

(declare-fun removePairForKey!765 (List!50706 K!11985) List!50706)

(assert (=> b!4509639 (= res!1875588 (not (= newBucket!178 (removePairForKey!765 lt!1687927 key!3287))))))

(declare-fun lt!1687919 () tuple2!50988)

(declare-datatypes ((Unit!93382 0))(
  ( (Unit!93383) )
))
(declare-fun lt!1687915 () Unit!93382)

(declare-fun forallContained!2465 (List!50707 Int tuple2!50988) Unit!93382)

(assert (=> b!4509639 (= lt!1687915 (forallContained!2465 (toList!4284 lm!1477) lambda!170259 lt!1687919))))

(declare-fun contains!13279 (List!50707 tuple2!50988) Bool)

(assert (=> b!4509639 (contains!13279 (toList!4284 lm!1477) lt!1687919)))

(assert (=> b!4509639 (= lt!1687919 (tuple2!50989 hash!344 lt!1687927))))

(declare-fun lt!1687932 () Unit!93382)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!650 (List!50707 (_ BitVec 64) List!50706) Unit!93382)

(assert (=> b!4509639 (= lt!1687932 (lemmaGetValueByKeyImpliesContainsTuple!650 (toList!4284 lm!1477) hash!344 lt!1687927))))

(declare-fun apply!11875 (ListLongMap!2915 (_ BitVec 64)) List!50706)

(assert (=> b!4509639 (= lt!1687927 (apply!11875 lm!1477 hash!344))))

(declare-fun lt!1687912 () (_ BitVec 64))

(assert (=> b!4509639 (contains!13278 lm!1477 lt!1687912)))

(declare-datatypes ((Hashable!5533 0))(
  ( (HashableExt!5532 (__x!31236 Int)) )
))
(declare-fun hashF!1107 () Hashable!5533)

(declare-fun lt!1687928 () Unit!93382)

(declare-fun lemmaInGenMapThenLongMapContainsHash!212 (ListLongMap!2915 K!11985 Hashable!5533) Unit!93382)

(assert (=> b!4509639 (= lt!1687928 (lemmaInGenMapThenLongMapContainsHash!212 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4509640 () Bool)

(declare-fun e!2809360 () Bool)

(assert (=> b!4509640 (= e!2809360 e!2809361)))

(declare-fun res!1875575 () Bool)

(assert (=> b!4509640 (=> res!1875575 e!2809361)))

(declare-fun lt!1687922 () ListLongMap!2915)

(declare-fun lt!1687918 () tuple2!50988)

(declare-fun +!1496 (ListLongMap!2915 tuple2!50988) ListLongMap!2915)

(assert (=> b!4509640 (= res!1875575 (not (= lt!1687922 (+!1496 lm!1477 lt!1687918))))))

(declare-fun lt!1687913 () tuple2!50988)

(assert (=> b!4509640 (= lt!1687922 (+!1496 lt!1687925 lt!1687913))))

(declare-fun b!4509641 () Bool)

(declare-fun e!2809357 () Bool)

(declare-fun e!2809356 () Bool)

(assert (=> b!4509641 (= e!2809357 e!2809356)))

(declare-fun res!1875579 () Bool)

(assert (=> b!4509641 (=> res!1875579 e!2809356)))

(declare-fun containsKeyBiggerList!118 (List!50707 K!11985) Bool)

(assert (=> b!4509641 (= res!1875579 (not (containsKeyBiggerList!118 (t!357669 (toList!4284 lm!1477)) key!3287)))))

(assert (=> b!4509641 (containsKeyBiggerList!118 (toList!4284 lt!1687914) key!3287)))

(declare-fun lt!1687926 () Unit!93382)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!54 (ListLongMap!2915 K!11985 Hashable!5533) Unit!93382)

(assert (=> b!4509641 (= lt!1687926 (lemmaInLongMapThenContainsKeyBiggerList!54 lt!1687914 key!3287 hashF!1107))))

(declare-fun tp!1337737 () Bool)

(declare-fun tp_is_empty!27829 () Bool)

(declare-fun e!2809355 () Bool)

(declare-fun b!4509642 () Bool)

(declare-fun tp_is_empty!27831 () Bool)

(assert (=> b!4509642 (= e!2809355 (and tp_is_empty!27829 tp_is_empty!27831 tp!1337737))))

(declare-fun b!4509643 () Bool)

(declare-fun res!1875578 () Bool)

(assert (=> b!4509643 (=> (not res!1875578) (not e!2809351))))

(declare-fun allKeysSameHashInMap!1245 (ListLongMap!2915 Hashable!5533) Bool)

(assert (=> b!4509643 (= res!1875578 (allKeysSameHashInMap!1245 lm!1477 hashF!1107))))

(declare-fun b!4509644 () Bool)

(declare-fun res!1875580 () Bool)

(assert (=> b!4509644 (=> res!1875580 e!2809360)))

(declare-fun lt!1687931 () ListMap!3545)

(declare-fun eq!595 (ListMap!3545 ListMap!3545) Bool)

(assert (=> b!4509644 (= res!1875580 (not (eq!595 lt!1687920 lt!1687931)))))

(declare-fun res!1875570 () Bool)

(assert (=> start!445696 (=> (not res!1875570) (not e!2809351))))

(assert (=> start!445696 (= res!1875570 (forall!10213 (toList!4284 lm!1477) lambda!170259))))

(assert (=> start!445696 e!2809351))

(assert (=> start!445696 true))

(declare-fun e!2809352 () Bool)

(declare-fun inv!66169 (ListLongMap!2915) Bool)

(assert (=> start!445696 (and (inv!66169 lm!1477) e!2809352)))

(assert (=> start!445696 tp_is_empty!27829))

(assert (=> start!445696 e!2809355))

(declare-fun b!4509645 () Bool)

(declare-fun res!1875584 () Bool)

(assert (=> b!4509645 (=> res!1875584 e!2809353)))

(assert (=> b!4509645 (= res!1875584 (not (contains!13279 (t!357669 (toList!4284 lm!1477)) lt!1687919)))))

(declare-fun b!4509646 () Bool)

(declare-fun e!2809358 () Bool)

(assert (=> b!4509646 (= e!2809356 e!2809358)))

(declare-fun res!1875572 () Bool)

(assert (=> b!4509646 (=> res!1875572 e!2809358)))

(assert (=> b!4509646 (= res!1875572 (not (contains!13277 (extractMap!1194 (t!357669 (toList!4284 lm!1477))) key!3287)))))

(declare-fun lt!1687916 () ListMap!3545)

(assert (=> b!4509646 (contains!13277 lt!1687916 key!3287)))

(assert (=> b!4509646 (= lt!1687916 (extractMap!1194 (toList!4284 lt!1687914)))))

(declare-fun lt!1687924 () Unit!93382)

(declare-fun lemmaListContainsThenExtractedMapContains!108 (ListLongMap!2915 K!11985 Hashable!5533) Unit!93382)

(assert (=> b!4509646 (= lt!1687924 (lemmaListContainsThenExtractedMapContains!108 lt!1687914 key!3287 hashF!1107))))

(declare-fun b!4509647 () Bool)

(declare-fun tp!1337736 () Bool)

(assert (=> b!4509647 (= e!2809352 tp!1337736)))

(declare-fun b!4509648 () Bool)

(assert (=> b!4509648 (= e!2809350 e!2809354)))

(declare-fun res!1875583 () Bool)

(assert (=> b!4509648 (=> (not res!1875583) (not e!2809354))))

(assert (=> b!4509648 (= res!1875583 (= lt!1687912 hash!344))))

(declare-fun hash!2737 (Hashable!5533 K!11985) (_ BitVec 64))

(assert (=> b!4509648 (= lt!1687912 (hash!2737 hashF!1107 key!3287))))

(declare-fun b!4509649 () Bool)

(declare-fun res!1875586 () Bool)

(assert (=> b!4509649 (=> res!1875586 e!2809361)))

(declare-fun lt!1687917 () ListMap!3545)

(declare-fun addToMapMapFromBucket!665 (List!50706 ListMap!3545) ListMap!3545)

(assert (=> b!4509649 (= res!1875586 (not (eq!595 (extractMap!1194 (toList!4284 lt!1687922)) (addToMapMapFromBucket!665 (_2!28788 lt!1687913) lt!1687917))))))

(declare-fun b!4509650 () Bool)

(declare-fun res!1875585 () Bool)

(assert (=> b!4509650 (=> (not res!1875585) (not e!2809354))))

(declare-fun allKeysSameHash!992 (List!50706 (_ BitVec 64) Hashable!5533) Bool)

(assert (=> b!4509650 (= res!1875585 (allKeysSameHash!992 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4509651 () Bool)

(declare-fun e!2809349 () Unit!93382)

(declare-fun Unit!93384 () Unit!93382)

(assert (=> b!4509651 (= e!2809349 Unit!93384)))

(declare-fun b!4509652 () Bool)

(assert (=> b!4509652 (= e!2809353 e!2809357)))

(declare-fun res!1875581 () Bool)

(assert (=> b!4509652 (=> res!1875581 e!2809357)))

(declare-fun lt!1687923 () Bool)

(assert (=> b!4509652 (= res!1875581 lt!1687923)))

(declare-fun lt!1687929 () Unit!93382)

(assert (=> b!4509652 (= lt!1687929 e!2809349)))

(declare-fun c!769257 () Bool)

(assert (=> b!4509652 (= c!769257 lt!1687923)))

(declare-fun containsKey!1718 (List!50706 K!11985) Bool)

(assert (=> b!4509652 (= lt!1687923 (not (containsKey!1718 lt!1687927 key!3287)))))

(declare-fun b!4509653 () Bool)

(declare-fun res!1875569 () Bool)

(assert (=> b!4509653 (=> res!1875569 e!2809359)))

(get-info :version)

(assert (=> b!4509653 (= res!1875569 (or ((_ is Nil!50583) (toList!4284 lm!1477)) (= (_1!28788 (h!56416 (toList!4284 lm!1477))) hash!344)))))

(declare-fun b!4509654 () Bool)

(assert (=> b!4509654 (= e!2809358 e!2809360)))

(declare-fun res!1875573 () Bool)

(assert (=> b!4509654 (=> res!1875573 e!2809360)))

(assert (=> b!4509654 (= res!1875573 (not (eq!595 lt!1687931 lt!1687920)))))

(assert (=> b!4509654 (= lt!1687931 (extractMap!1194 (toList!4284 (+!1496 lt!1687914 lt!1687913))))))

(declare-fun head!9370 (ListLongMap!2915) tuple2!50988)

(assert (=> b!4509654 (= lt!1687913 (head!9370 lm!1477))))

(declare-fun -!364 (ListMap!3545 K!11985) ListMap!3545)

(assert (=> b!4509654 (eq!595 lt!1687917 (-!364 lt!1687916 key!3287))))

(assert (=> b!4509654 (= lt!1687917 (extractMap!1194 (toList!4284 lt!1687925)))))

(assert (=> b!4509654 (= lt!1687925 (+!1496 lt!1687914 lt!1687918))))

(assert (=> b!4509654 (= lt!1687918 (tuple2!50989 hash!344 newBucket!178))))

(declare-fun lt!1687921 () Unit!93382)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!123 (ListLongMap!2915 (_ BitVec 64) List!50706 K!11985 Hashable!5533) Unit!93382)

(assert (=> b!4509654 (= lt!1687921 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!123 lt!1687914 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4509655 () Bool)

(declare-fun Unit!93385 () Unit!93382)

(assert (=> b!4509655 (= e!2809349 Unit!93385)))

(declare-fun lt!1687930 () Unit!93382)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!126 (ListLongMap!2915 K!11985 Hashable!5533) Unit!93382)

(assert (=> b!4509655 (= lt!1687930 (lemmaNotInItsHashBucketThenNotInMap!126 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4509655 false))

(declare-fun b!4509656 () Bool)

(declare-fun res!1875587 () Bool)

(assert (=> b!4509656 (=> res!1875587 e!2809353)))

(assert (=> b!4509656 (= res!1875587 (not (= (apply!11875 lt!1687914 hash!344) lt!1687927)))))

(declare-fun b!4509657 () Bool)

(declare-fun res!1875571 () Bool)

(assert (=> b!4509657 (=> res!1875571 e!2809360)))

(assert (=> b!4509657 (= res!1875571 (bvsge (_1!28788 lt!1687913) hash!344))))

(declare-fun b!4509658 () Bool)

(declare-fun res!1875582 () Bool)

(assert (=> b!4509658 (=> res!1875582 e!2809361)))

(assert (=> b!4509658 (= res!1875582 (not (= (head!9370 lt!1687922) lt!1687913)))))

(assert (= (and start!445696 res!1875570) b!4509643))

(assert (= (and b!4509643 res!1875578) b!4509635))

(assert (= (and b!4509635 res!1875576) b!4509648))

(assert (= (and b!4509648 res!1875583) b!4509650))

(assert (= (and b!4509650 res!1875585) b!4509639))

(assert (= (and b!4509639 (not res!1875588)) b!4509636))

(assert (= (and b!4509636 (not res!1875577)) b!4509653))

(assert (= (and b!4509653 (not res!1875569)) b!4509638))

(assert (= (and b!4509638 (not res!1875574)) b!4509656))

(assert (= (and b!4509656 (not res!1875587)) b!4509645))

(assert (= (and b!4509645 (not res!1875584)) b!4509652))

(assert (= (and b!4509652 c!769257) b!4509655))

(assert (= (and b!4509652 (not c!769257)) b!4509651))

(assert (= (and b!4509652 (not res!1875581)) b!4509641))

(assert (= (and b!4509641 (not res!1875579)) b!4509646))

(assert (= (and b!4509646 (not res!1875572)) b!4509654))

(assert (= (and b!4509654 (not res!1875573)) b!4509644))

(assert (= (and b!4509644 (not res!1875580)) b!4509657))

(assert (= (and b!4509657 (not res!1875571)) b!4509640))

(assert (= (and b!4509640 (not res!1875575)) b!4509658))

(assert (= (and b!4509658 (not res!1875582)) b!4509649))

(assert (= (and b!4509649 (not res!1875586)) b!4509637))

(assert (= start!445696 b!4509647))

(assert (= (and start!445696 ((_ is Cons!50582) newBucket!178)) b!4509642))

(declare-fun m!5248327 () Bool)

(assert (=> b!4509640 m!5248327))

(declare-fun m!5248329 () Bool)

(assert (=> b!4509640 m!5248329))

(declare-fun m!5248331 () Bool)

(assert (=> b!4509641 m!5248331))

(declare-fun m!5248333 () Bool)

(assert (=> b!4509641 m!5248333))

(declare-fun m!5248335 () Bool)

(assert (=> b!4509641 m!5248335))

(declare-fun m!5248337 () Bool)

(assert (=> b!4509645 m!5248337))

(declare-fun m!5248339 () Bool)

(assert (=> b!4509655 m!5248339))

(declare-fun m!5248341 () Bool)

(assert (=> b!4509643 m!5248341))

(declare-fun m!5248343 () Bool)

(assert (=> b!4509649 m!5248343))

(declare-fun m!5248345 () Bool)

(assert (=> b!4509649 m!5248345))

(assert (=> b!4509649 m!5248343))

(assert (=> b!4509649 m!5248345))

(declare-fun m!5248347 () Bool)

(assert (=> b!4509649 m!5248347))

(declare-fun m!5248349 () Bool)

(assert (=> b!4509638 m!5248349))

(declare-fun m!5248351 () Bool)

(assert (=> b!4509638 m!5248351))

(declare-fun m!5248353 () Bool)

(assert (=> b!4509658 m!5248353))

(declare-fun m!5248355 () Bool)

(assert (=> b!4509644 m!5248355))

(declare-fun m!5248357 () Bool)

(assert (=> b!4509656 m!5248357))

(declare-fun m!5248359 () Bool)

(assert (=> b!4509646 m!5248359))

(declare-fun m!5248361 () Bool)

(assert (=> b!4509646 m!5248361))

(declare-fun m!5248363 () Bool)

(assert (=> b!4509646 m!5248363))

(assert (=> b!4509646 m!5248361))

(declare-fun m!5248365 () Bool)

(assert (=> b!4509646 m!5248365))

(declare-fun m!5248367 () Bool)

(assert (=> b!4509646 m!5248367))

(declare-fun m!5248369 () Bool)

(assert (=> start!445696 m!5248369))

(declare-fun m!5248371 () Bool)

(assert (=> start!445696 m!5248371))

(declare-fun m!5248373 () Bool)

(assert (=> b!4509648 m!5248373))

(declare-fun m!5248375 () Bool)

(assert (=> b!4509652 m!5248375))

(declare-fun m!5248377 () Bool)

(assert (=> b!4509636 m!5248377))

(declare-fun m!5248379 () Bool)

(assert (=> b!4509635 m!5248379))

(declare-fun m!5248381 () Bool)

(assert (=> b!4509635 m!5248381))

(declare-fun m!5248383 () Bool)

(assert (=> b!4509637 m!5248383))

(declare-fun m!5248385 () Bool)

(assert (=> b!4509650 m!5248385))

(declare-fun m!5248387 () Bool)

(assert (=> b!4509654 m!5248387))

(declare-fun m!5248389 () Bool)

(assert (=> b!4509654 m!5248389))

(declare-fun m!5248391 () Bool)

(assert (=> b!4509654 m!5248391))

(declare-fun m!5248393 () Bool)

(assert (=> b!4509654 m!5248393))

(declare-fun m!5248395 () Bool)

(assert (=> b!4509654 m!5248395))

(declare-fun m!5248397 () Bool)

(assert (=> b!4509654 m!5248397))

(declare-fun m!5248399 () Bool)

(assert (=> b!4509654 m!5248399))

(declare-fun m!5248401 () Bool)

(assert (=> b!4509654 m!5248401))

(assert (=> b!4509654 m!5248393))

(declare-fun m!5248403 () Bool)

(assert (=> b!4509654 m!5248403))

(declare-fun m!5248405 () Bool)

(assert (=> b!4509639 m!5248405))

(declare-fun m!5248407 () Bool)

(assert (=> b!4509639 m!5248407))

(declare-fun m!5248409 () Bool)

(assert (=> b!4509639 m!5248409))

(declare-fun m!5248411 () Bool)

(assert (=> b!4509639 m!5248411))

(declare-fun m!5248413 () Bool)

(assert (=> b!4509639 m!5248413))

(declare-fun m!5248415 () Bool)

(assert (=> b!4509639 m!5248415))

(declare-fun m!5248417 () Bool)

(assert (=> b!4509639 m!5248417))

(check-sat (not b!4509650) (not b!4509648) (not b!4509641) (not b!4509645) (not b!4509639) tp_is_empty!27831 (not start!445696) (not b!4509647) (not b!4509649) (not b!4509635) (not b!4509646) (not b!4509643) tp_is_empty!27829 (not b!4509655) (not b!4509654) (not b!4509658) (not b!4509656) (not b!4509638) (not b!4509652) (not b!4509644) (not b!4509640) (not b!4509637) (not b!4509642) (not b!4509636))
(check-sat)
(get-model)

(declare-fun bs!846423 () Bool)

(declare-fun d!1386973 () Bool)

(assert (= bs!846423 (and d!1386973 start!445696)))

(declare-fun lambda!170262 () Int)

(assert (=> bs!846423 (not (= lambda!170262 lambda!170259))))

(assert (=> d!1386973 true))

(assert (=> d!1386973 (= (allKeysSameHashInMap!1245 lm!1477 hashF!1107) (forall!10213 (toList!4284 lm!1477) lambda!170262))))

(declare-fun bs!846424 () Bool)

(assert (= bs!846424 d!1386973))

(declare-fun m!5248419 () Bool)

(assert (=> bs!846424 m!5248419))

(assert (=> b!4509643 d!1386973))

(declare-fun d!1386975 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8295 (List!50706) (InoxSet tuple2!50986))

(assert (=> d!1386975 (= (eq!595 lt!1687917 (-!364 lt!1687916 key!3287)) (= (content!8295 (toList!4283 lt!1687917)) (content!8295 (toList!4283 (-!364 lt!1687916 key!3287)))))))

(declare-fun bs!846425 () Bool)

(assert (= bs!846425 d!1386975))

(declare-fun m!5248421 () Bool)

(assert (=> bs!846425 m!5248421))

(declare-fun m!5248423 () Bool)

(assert (=> bs!846425 m!5248423))

(assert (=> b!4509654 d!1386975))

(declare-fun d!1386977 () Bool)

(declare-fun e!2809364 () Bool)

(assert (=> d!1386977 e!2809364))

(declare-fun res!1875594 () Bool)

(assert (=> d!1386977 (=> (not res!1875594) (not e!2809364))))

(declare-fun lt!1687942 () ListLongMap!2915)

(assert (=> d!1386977 (= res!1875594 (contains!13278 lt!1687942 (_1!28788 lt!1687918)))))

(declare-fun lt!1687944 () List!50707)

(assert (=> d!1386977 (= lt!1687942 (ListLongMap!2916 lt!1687944))))

(declare-fun lt!1687943 () Unit!93382)

(declare-fun lt!1687941 () Unit!93382)

(assert (=> d!1386977 (= lt!1687943 lt!1687941)))

(declare-datatypes ((Option!11072 0))(
  ( (None!11071) (Some!11071 (v!44615 List!50706)) )
))
(declare-fun getValueByKey!1052 (List!50707 (_ BitVec 64)) Option!11072)

(assert (=> d!1386977 (= (getValueByKey!1052 lt!1687944 (_1!28788 lt!1687918)) (Some!11071 (_2!28788 lt!1687918)))))

(declare-fun lemmaContainsTupThenGetReturnValue!649 (List!50707 (_ BitVec 64) List!50706) Unit!93382)

(assert (=> d!1386977 (= lt!1687941 (lemmaContainsTupThenGetReturnValue!649 lt!1687944 (_1!28788 lt!1687918) (_2!28788 lt!1687918)))))

(declare-fun insertStrictlySorted!387 (List!50707 (_ BitVec 64) List!50706) List!50707)

(assert (=> d!1386977 (= lt!1687944 (insertStrictlySorted!387 (toList!4284 lt!1687914) (_1!28788 lt!1687918) (_2!28788 lt!1687918)))))

(assert (=> d!1386977 (= (+!1496 lt!1687914 lt!1687918) lt!1687942)))

(declare-fun b!4509665 () Bool)

(declare-fun res!1875593 () Bool)

(assert (=> b!4509665 (=> (not res!1875593) (not e!2809364))))

(assert (=> b!4509665 (= res!1875593 (= (getValueByKey!1052 (toList!4284 lt!1687942) (_1!28788 lt!1687918)) (Some!11071 (_2!28788 lt!1687918))))))

(declare-fun b!4509666 () Bool)

(assert (=> b!4509666 (= e!2809364 (contains!13279 (toList!4284 lt!1687942) lt!1687918))))

(assert (= (and d!1386977 res!1875594) b!4509665))

(assert (= (and b!4509665 res!1875593) b!4509666))

(declare-fun m!5248425 () Bool)

(assert (=> d!1386977 m!5248425))

(declare-fun m!5248427 () Bool)

(assert (=> d!1386977 m!5248427))

(declare-fun m!5248429 () Bool)

(assert (=> d!1386977 m!5248429))

(declare-fun m!5248431 () Bool)

(assert (=> d!1386977 m!5248431))

(declare-fun m!5248433 () Bool)

(assert (=> b!4509665 m!5248433))

(declare-fun m!5248435 () Bool)

(assert (=> b!4509666 m!5248435))

(assert (=> b!4509654 d!1386977))

(declare-fun bs!846434 () Bool)

(declare-fun d!1386981 () Bool)

(assert (= bs!846434 (and d!1386981 start!445696)))

(declare-fun lambda!170274 () Int)

(assert (=> bs!846434 (= lambda!170274 lambda!170259)))

(declare-fun bs!846435 () Bool)

(assert (= bs!846435 (and d!1386981 d!1386973)))

(assert (=> bs!846435 (not (= lambda!170274 lambda!170262))))

(assert (=> d!1386981 (eq!595 (extractMap!1194 (toList!4284 (+!1496 lt!1687914 (tuple2!50989 hash!344 newBucket!178)))) (-!364 (extractMap!1194 (toList!4284 lt!1687914)) key!3287))))

(declare-fun lt!1687974 () Unit!93382)

(declare-fun choose!29286 (ListLongMap!2915 (_ BitVec 64) List!50706 K!11985 Hashable!5533) Unit!93382)

(assert (=> d!1386981 (= lt!1687974 (choose!29286 lt!1687914 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1386981 (forall!10213 (toList!4284 lt!1687914) lambda!170274)))

(assert (=> d!1386981 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!123 lt!1687914 hash!344 newBucket!178 key!3287 hashF!1107) lt!1687974)))

(declare-fun bs!846436 () Bool)

(assert (= bs!846436 d!1386981))

(declare-fun m!5248485 () Bool)

(assert (=> bs!846436 m!5248485))

(declare-fun m!5248487 () Bool)

(assert (=> bs!846436 m!5248487))

(declare-fun m!5248489 () Bool)

(assert (=> bs!846436 m!5248489))

(declare-fun m!5248491 () Bool)

(assert (=> bs!846436 m!5248491))

(assert (=> bs!846436 m!5248363))

(assert (=> bs!846436 m!5248363))

(assert (=> bs!846436 m!5248489))

(assert (=> bs!846436 m!5248487))

(declare-fun m!5248493 () Bool)

(assert (=> bs!846436 m!5248493))

(declare-fun m!5248495 () Bool)

(assert (=> bs!846436 m!5248495))

(assert (=> b!4509654 d!1386981))

(declare-fun d!1387005 () Bool)

(declare-fun e!2809395 () Bool)

(assert (=> d!1387005 e!2809395))

(declare-fun res!1875617 () Bool)

(assert (=> d!1387005 (=> (not res!1875617) (not e!2809395))))

(declare-fun lt!1687976 () ListLongMap!2915)

(assert (=> d!1387005 (= res!1875617 (contains!13278 lt!1687976 (_1!28788 lt!1687913)))))

(declare-fun lt!1687978 () List!50707)

(assert (=> d!1387005 (= lt!1687976 (ListLongMap!2916 lt!1687978))))

(declare-fun lt!1687977 () Unit!93382)

(declare-fun lt!1687975 () Unit!93382)

(assert (=> d!1387005 (= lt!1687977 lt!1687975)))

(assert (=> d!1387005 (= (getValueByKey!1052 lt!1687978 (_1!28788 lt!1687913)) (Some!11071 (_2!28788 lt!1687913)))))

(assert (=> d!1387005 (= lt!1687975 (lemmaContainsTupThenGetReturnValue!649 lt!1687978 (_1!28788 lt!1687913) (_2!28788 lt!1687913)))))

(assert (=> d!1387005 (= lt!1687978 (insertStrictlySorted!387 (toList!4284 lt!1687914) (_1!28788 lt!1687913) (_2!28788 lt!1687913)))))

(assert (=> d!1387005 (= (+!1496 lt!1687914 lt!1687913) lt!1687976)))

(declare-fun b!4509712 () Bool)

(declare-fun res!1875616 () Bool)

(assert (=> b!4509712 (=> (not res!1875616) (not e!2809395))))

(assert (=> b!4509712 (= res!1875616 (= (getValueByKey!1052 (toList!4284 lt!1687976) (_1!28788 lt!1687913)) (Some!11071 (_2!28788 lt!1687913))))))

(declare-fun b!4509713 () Bool)

(assert (=> b!4509713 (= e!2809395 (contains!13279 (toList!4284 lt!1687976) lt!1687913))))

(assert (= (and d!1387005 res!1875617) b!4509712))

(assert (= (and b!4509712 res!1875616) b!4509713))

(declare-fun m!5248497 () Bool)

(assert (=> d!1387005 m!5248497))

(declare-fun m!5248499 () Bool)

(assert (=> d!1387005 m!5248499))

(declare-fun m!5248501 () Bool)

(assert (=> d!1387005 m!5248501))

(declare-fun m!5248503 () Bool)

(assert (=> d!1387005 m!5248503))

(declare-fun m!5248505 () Bool)

(assert (=> b!4509712 m!5248505))

(declare-fun m!5248507 () Bool)

(assert (=> b!4509713 m!5248507))

(assert (=> b!4509654 d!1387005))

(declare-fun bs!846444 () Bool)

(declare-fun d!1387007 () Bool)

(assert (= bs!846444 (and d!1387007 start!445696)))

(declare-fun lambda!170281 () Int)

(assert (=> bs!846444 (= lambda!170281 lambda!170259)))

(declare-fun bs!846445 () Bool)

(assert (= bs!846445 (and d!1387007 d!1386973)))

(assert (=> bs!846445 (not (= lambda!170281 lambda!170262))))

(declare-fun bs!846446 () Bool)

(assert (= bs!846446 (and d!1387007 d!1386981)))

(assert (=> bs!846446 (= lambda!170281 lambda!170274)))

(declare-fun lt!1688017 () ListMap!3545)

(declare-fun invariantList!997 (List!50706) Bool)

(assert (=> d!1387007 (invariantList!997 (toList!4283 lt!1688017))))

(declare-fun e!2809426 () ListMap!3545)

(assert (=> d!1387007 (= lt!1688017 e!2809426)))

(declare-fun c!769285 () Bool)

(assert (=> d!1387007 (= c!769285 ((_ is Cons!50583) (toList!4284 lt!1687925)))))

(assert (=> d!1387007 (forall!10213 (toList!4284 lt!1687925) lambda!170281)))

(assert (=> d!1387007 (= (extractMap!1194 (toList!4284 lt!1687925)) lt!1688017)))

(declare-fun b!4509762 () Bool)

(assert (=> b!4509762 (= e!2809426 (addToMapMapFromBucket!665 (_2!28788 (h!56416 (toList!4284 lt!1687925))) (extractMap!1194 (t!357669 (toList!4284 lt!1687925)))))))

(declare-fun b!4509763 () Bool)

(assert (=> b!4509763 (= e!2809426 (ListMap!3546 Nil!50582))))

(assert (= (and d!1387007 c!769285) b!4509762))

(assert (= (and d!1387007 (not c!769285)) b!4509763))

(declare-fun m!5248565 () Bool)

(assert (=> d!1387007 m!5248565))

(declare-fun m!5248567 () Bool)

(assert (=> d!1387007 m!5248567))

(declare-fun m!5248569 () Bool)

(assert (=> b!4509762 m!5248569))

(assert (=> b!4509762 m!5248569))

(declare-fun m!5248571 () Bool)

(assert (=> b!4509762 m!5248571))

(assert (=> b!4509654 d!1387007))

(declare-fun d!1387017 () Bool)

(assert (=> d!1387017 (= (eq!595 lt!1687931 lt!1687920) (= (content!8295 (toList!4283 lt!1687931)) (content!8295 (toList!4283 lt!1687920))))))

(declare-fun bs!846447 () Bool)

(assert (= bs!846447 d!1387017))

(declare-fun m!5248573 () Bool)

(assert (=> bs!846447 m!5248573))

(declare-fun m!5248575 () Bool)

(assert (=> bs!846447 m!5248575))

(assert (=> b!4509654 d!1387017))

(declare-fun d!1387019 () Bool)

(declare-fun head!9371 (List!50707) tuple2!50988)

(assert (=> d!1387019 (= (head!9370 lm!1477) (head!9371 (toList!4284 lm!1477)))))

(declare-fun bs!846454 () Bool)

(assert (= bs!846454 d!1387019))

(declare-fun m!5248583 () Bool)

(assert (=> bs!846454 m!5248583))

(assert (=> b!4509654 d!1387019))

(declare-fun d!1387023 () Bool)

(declare-fun e!2809435 () Bool)

(assert (=> d!1387023 e!2809435))

(declare-fun res!1875638 () Bool)

(assert (=> d!1387023 (=> (not res!1875638) (not e!2809435))))

(declare-fun lt!1688025 () ListMap!3545)

(assert (=> d!1387023 (= res!1875638 (not (contains!13277 lt!1688025 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!120 (List!50706 K!11985) List!50706)

(assert (=> d!1387023 (= lt!1688025 (ListMap!3546 (removePresrvNoDuplicatedKeys!120 (toList!4283 lt!1687916) key!3287)))))

(assert (=> d!1387023 (= (-!364 lt!1687916 key!3287) lt!1688025)))

(declare-fun b!4509772 () Bool)

(declare-datatypes ((List!50709 0))(
  ( (Nil!50585) (Cons!50585 (h!56420 K!11985) (t!357671 List!50709)) )
))
(declare-fun content!8296 (List!50709) (InoxSet K!11985))

(declare-fun keys!17552 (ListMap!3545) List!50709)

(assert (=> b!4509772 (= e!2809435 (= ((_ map and) (content!8296 (keys!17552 lt!1687916)) ((_ map not) (store ((as const (Array K!11985 Bool)) false) key!3287 true))) (content!8296 (keys!17552 lt!1688025))))))

(assert (= (and d!1387023 res!1875638) b!4509772))

(declare-fun m!5248591 () Bool)

(assert (=> d!1387023 m!5248591))

(declare-fun m!5248593 () Bool)

(assert (=> d!1387023 m!5248593))

(declare-fun m!5248595 () Bool)

(assert (=> b!4509772 m!5248595))

(declare-fun m!5248597 () Bool)

(assert (=> b!4509772 m!5248597))

(assert (=> b!4509772 m!5248595))

(declare-fun m!5248599 () Bool)

(assert (=> b!4509772 m!5248599))

(assert (=> b!4509772 m!5248597))

(declare-fun m!5248601 () Bool)

(assert (=> b!4509772 m!5248601))

(declare-fun m!5248603 () Bool)

(assert (=> b!4509772 m!5248603))

(assert (=> b!4509654 d!1387023))

(declare-fun bs!846462 () Bool)

(declare-fun d!1387029 () Bool)

(assert (= bs!846462 (and d!1387029 start!445696)))

(declare-fun lambda!170288 () Int)

(assert (=> bs!846462 (= lambda!170288 lambda!170259)))

(declare-fun bs!846464 () Bool)

(assert (= bs!846464 (and d!1387029 d!1386973)))

(assert (=> bs!846464 (not (= lambda!170288 lambda!170262))))

(declare-fun bs!846465 () Bool)

(assert (= bs!846465 (and d!1387029 d!1386981)))

(assert (=> bs!846465 (= lambda!170288 lambda!170274)))

(declare-fun bs!846466 () Bool)

(assert (= bs!846466 (and d!1387029 d!1387007)))

(assert (=> bs!846466 (= lambda!170288 lambda!170281)))

(declare-fun lt!1688027 () ListMap!3545)

(assert (=> d!1387029 (invariantList!997 (toList!4283 lt!1688027))))

(declare-fun e!2809436 () ListMap!3545)

(assert (=> d!1387029 (= lt!1688027 e!2809436)))

(declare-fun c!769286 () Bool)

(assert (=> d!1387029 (= c!769286 ((_ is Cons!50583) (toList!4284 (+!1496 lt!1687914 lt!1687913))))))

(assert (=> d!1387029 (forall!10213 (toList!4284 (+!1496 lt!1687914 lt!1687913)) lambda!170288)))

(assert (=> d!1387029 (= (extractMap!1194 (toList!4284 (+!1496 lt!1687914 lt!1687913))) lt!1688027)))

(declare-fun b!4509773 () Bool)

(assert (=> b!4509773 (= e!2809436 (addToMapMapFromBucket!665 (_2!28788 (h!56416 (toList!4284 (+!1496 lt!1687914 lt!1687913)))) (extractMap!1194 (t!357669 (toList!4284 (+!1496 lt!1687914 lt!1687913))))))))

(declare-fun b!4509774 () Bool)

(assert (=> b!4509774 (= e!2809436 (ListMap!3546 Nil!50582))))

(assert (= (and d!1387029 c!769286) b!4509773))

(assert (= (and d!1387029 (not c!769286)) b!4509774))

(declare-fun m!5248617 () Bool)

(assert (=> d!1387029 m!5248617))

(declare-fun m!5248619 () Bool)

(assert (=> d!1387029 m!5248619))

(declare-fun m!5248621 () Bool)

(assert (=> b!4509773 m!5248621))

(assert (=> b!4509773 m!5248621))

(declare-fun m!5248623 () Bool)

(assert (=> b!4509773 m!5248623))

(assert (=> b!4509654 d!1387029))

(declare-fun d!1387033 () Bool)

(assert (=> d!1387033 (= (eq!595 lt!1687920 lt!1687931) (= (content!8295 (toList!4283 lt!1687920)) (content!8295 (toList!4283 lt!1687931))))))

(declare-fun bs!846467 () Bool)

(assert (= bs!846467 d!1387033))

(assert (=> bs!846467 m!5248575))

(assert (=> bs!846467 m!5248573))

(assert (=> b!4509644 d!1387033))

(declare-fun bs!846486 () Bool)

(declare-fun d!1387035 () Bool)

(assert (= bs!846486 (and d!1387035 d!1387029)))

(declare-fun lambda!170293 () Int)

(assert (=> bs!846486 (= lambda!170293 lambda!170288)))

(declare-fun bs!846487 () Bool)

(assert (= bs!846487 (and d!1387035 d!1386981)))

(assert (=> bs!846487 (= lambda!170293 lambda!170274)))

(declare-fun bs!846488 () Bool)

(assert (= bs!846488 (and d!1387035 d!1387007)))

(assert (=> bs!846488 (= lambda!170293 lambda!170281)))

(declare-fun bs!846489 () Bool)

(assert (= bs!846489 (and d!1387035 d!1386973)))

(assert (=> bs!846489 (not (= lambda!170293 lambda!170262))))

(declare-fun bs!846490 () Bool)

(assert (= bs!846490 (and d!1387035 start!445696)))

(assert (=> bs!846490 (= lambda!170293 lambda!170259)))

(assert (=> d!1387035 (not (contains!13277 (extractMap!1194 (toList!4284 lm!1477)) key!3287))))

(declare-fun lt!1688051 () Unit!93382)

(declare-fun choose!29288 (ListLongMap!2915 K!11985 Hashable!5533) Unit!93382)

(assert (=> d!1387035 (= lt!1688051 (choose!29288 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1387035 (forall!10213 (toList!4284 lm!1477) lambda!170293)))

(assert (=> d!1387035 (= (lemmaNotInItsHashBucketThenNotInMap!126 lm!1477 key!3287 hashF!1107) lt!1688051)))

(declare-fun bs!846491 () Bool)

(assert (= bs!846491 d!1387035))

(assert (=> bs!846491 m!5248381))

(assert (=> bs!846491 m!5248381))

(declare-fun m!5248691 () Bool)

(assert (=> bs!846491 m!5248691))

(declare-fun m!5248693 () Bool)

(assert (=> bs!846491 m!5248693))

(declare-fun m!5248697 () Bool)

(assert (=> bs!846491 m!5248697))

(assert (=> b!4509655 d!1387035))

(declare-fun d!1387057 () Bool)

(declare-fun e!2809458 () Bool)

(assert (=> d!1387057 e!2809458))

(declare-fun res!1875663 () Bool)

(assert (=> d!1387057 (=> (not res!1875663) (not e!2809458))))

(declare-fun lt!1688053 () ListLongMap!2915)

(assert (=> d!1387057 (= res!1875663 (contains!13278 lt!1688053 (_1!28788 lt!1687918)))))

(declare-fun lt!1688055 () List!50707)

(assert (=> d!1387057 (= lt!1688053 (ListLongMap!2916 lt!1688055))))

(declare-fun lt!1688054 () Unit!93382)

(declare-fun lt!1688052 () Unit!93382)

(assert (=> d!1387057 (= lt!1688054 lt!1688052)))

(assert (=> d!1387057 (= (getValueByKey!1052 lt!1688055 (_1!28788 lt!1687918)) (Some!11071 (_2!28788 lt!1687918)))))

(assert (=> d!1387057 (= lt!1688052 (lemmaContainsTupThenGetReturnValue!649 lt!1688055 (_1!28788 lt!1687918) (_2!28788 lt!1687918)))))

(assert (=> d!1387057 (= lt!1688055 (insertStrictlySorted!387 (toList!4284 lm!1477) (_1!28788 lt!1687918) (_2!28788 lt!1687918)))))

(assert (=> d!1387057 (= (+!1496 lm!1477 lt!1687918) lt!1688053)))

(declare-fun b!4509802 () Bool)

(declare-fun res!1875662 () Bool)

(assert (=> b!4509802 (=> (not res!1875662) (not e!2809458))))

(assert (=> b!4509802 (= res!1875662 (= (getValueByKey!1052 (toList!4284 lt!1688053) (_1!28788 lt!1687918)) (Some!11071 (_2!28788 lt!1687918))))))

(declare-fun b!4509803 () Bool)

(assert (=> b!4509803 (= e!2809458 (contains!13279 (toList!4284 lt!1688053) lt!1687918))))

(assert (= (and d!1387057 res!1875663) b!4509802))

(assert (= (and b!4509802 res!1875662) b!4509803))

(declare-fun m!5248701 () Bool)

(assert (=> d!1387057 m!5248701))

(declare-fun m!5248703 () Bool)

(assert (=> d!1387057 m!5248703))

(declare-fun m!5248705 () Bool)

(assert (=> d!1387057 m!5248705))

(declare-fun m!5248707 () Bool)

(assert (=> d!1387057 m!5248707))

(declare-fun m!5248709 () Bool)

(assert (=> b!4509802 m!5248709))

(declare-fun m!5248711 () Bool)

(assert (=> b!4509803 m!5248711))

(assert (=> b!4509640 d!1387057))

(declare-fun d!1387059 () Bool)

(declare-fun e!2809459 () Bool)

(assert (=> d!1387059 e!2809459))

(declare-fun res!1875665 () Bool)

(assert (=> d!1387059 (=> (not res!1875665) (not e!2809459))))

(declare-fun lt!1688057 () ListLongMap!2915)

(assert (=> d!1387059 (= res!1875665 (contains!13278 lt!1688057 (_1!28788 lt!1687913)))))

(declare-fun lt!1688059 () List!50707)

(assert (=> d!1387059 (= lt!1688057 (ListLongMap!2916 lt!1688059))))

(declare-fun lt!1688058 () Unit!93382)

(declare-fun lt!1688056 () Unit!93382)

(assert (=> d!1387059 (= lt!1688058 lt!1688056)))

(assert (=> d!1387059 (= (getValueByKey!1052 lt!1688059 (_1!28788 lt!1687913)) (Some!11071 (_2!28788 lt!1687913)))))

(assert (=> d!1387059 (= lt!1688056 (lemmaContainsTupThenGetReturnValue!649 lt!1688059 (_1!28788 lt!1687913) (_2!28788 lt!1687913)))))

(assert (=> d!1387059 (= lt!1688059 (insertStrictlySorted!387 (toList!4284 lt!1687925) (_1!28788 lt!1687913) (_2!28788 lt!1687913)))))

(assert (=> d!1387059 (= (+!1496 lt!1687925 lt!1687913) lt!1688057)))

(declare-fun b!4509804 () Bool)

(declare-fun res!1875664 () Bool)

(assert (=> b!4509804 (=> (not res!1875664) (not e!2809459))))

(assert (=> b!4509804 (= res!1875664 (= (getValueByKey!1052 (toList!4284 lt!1688057) (_1!28788 lt!1687913)) (Some!11071 (_2!28788 lt!1687913))))))

(declare-fun b!4509805 () Bool)

(assert (=> b!4509805 (= e!2809459 (contains!13279 (toList!4284 lt!1688057) lt!1687913))))

(assert (= (and d!1387059 res!1875665) b!4509804))

(assert (= (and b!4509804 res!1875664) b!4509805))

(declare-fun m!5248713 () Bool)

(assert (=> d!1387059 m!5248713))

(declare-fun m!5248715 () Bool)

(assert (=> d!1387059 m!5248715))

(declare-fun m!5248717 () Bool)

(assert (=> d!1387059 m!5248717))

(declare-fun m!5248719 () Bool)

(assert (=> d!1387059 m!5248719))

(declare-fun m!5248721 () Bool)

(assert (=> b!4509804 m!5248721))

(declare-fun m!5248723 () Bool)

(assert (=> b!4509805 m!5248723))

(assert (=> b!4509640 d!1387059))

(declare-fun d!1387061 () Bool)

(declare-fun res!1875670 () Bool)

(declare-fun e!2809465 () Bool)

(assert (=> d!1387061 (=> res!1875670 e!2809465)))

(assert (=> d!1387061 (= res!1875670 ((_ is Nil!50583) (toList!4284 lm!1477)))))

(assert (=> d!1387061 (= (forall!10213 (toList!4284 lm!1477) lambda!170259) e!2809465)))

(declare-fun b!4509812 () Bool)

(declare-fun e!2809466 () Bool)

(assert (=> b!4509812 (= e!2809465 e!2809466)))

(declare-fun res!1875671 () Bool)

(assert (=> b!4509812 (=> (not res!1875671) (not e!2809466))))

(declare-fun dynLambda!21135 (Int tuple2!50988) Bool)

(assert (=> b!4509812 (= res!1875671 (dynLambda!21135 lambda!170259 (h!56416 (toList!4284 lm!1477))))))

(declare-fun b!4509813 () Bool)

(assert (=> b!4509813 (= e!2809466 (forall!10213 (t!357669 (toList!4284 lm!1477)) lambda!170259))))

(assert (= (and d!1387061 (not res!1875670)) b!4509812))

(assert (= (and b!4509812 res!1875671) b!4509813))

(declare-fun b_lambda!153709 () Bool)

(assert (=> (not b_lambda!153709) (not b!4509812)))

(declare-fun m!5248743 () Bool)

(assert (=> b!4509812 m!5248743))

(declare-fun m!5248745 () Bool)

(assert (=> b!4509813 m!5248745))

(assert (=> start!445696 d!1387061))

(declare-fun d!1387071 () Bool)

(declare-fun isStrictlySorted!411 (List!50707) Bool)

(assert (=> d!1387071 (= (inv!66169 lm!1477) (isStrictlySorted!411 (toList!4284 lm!1477)))))

(declare-fun bs!846514 () Bool)

(assert (= bs!846514 d!1387071))

(declare-fun m!5248747 () Bool)

(assert (=> bs!846514 m!5248747))

(assert (=> start!445696 d!1387071))

(declare-fun d!1387073 () Bool)

(declare-fun res!1875678 () Bool)

(declare-fun e!2809475 () Bool)

(assert (=> d!1387073 (=> res!1875678 e!2809475)))

(declare-fun e!2809474 () Bool)

(assert (=> d!1387073 (= res!1875678 e!2809474)))

(declare-fun res!1875680 () Bool)

(assert (=> d!1387073 (=> (not res!1875680) (not e!2809474))))

(assert (=> d!1387073 (= res!1875680 ((_ is Cons!50583) (t!357669 (toList!4284 lm!1477))))))

(assert (=> d!1387073 (= (containsKeyBiggerList!118 (t!357669 (toList!4284 lm!1477)) key!3287) e!2809475)))

(declare-fun b!4509820 () Bool)

(assert (=> b!4509820 (= e!2809474 (containsKey!1718 (_2!28788 (h!56416 (t!357669 (toList!4284 lm!1477)))) key!3287))))

(declare-fun b!4509821 () Bool)

(declare-fun e!2809473 () Bool)

(assert (=> b!4509821 (= e!2809475 e!2809473)))

(declare-fun res!1875679 () Bool)

(assert (=> b!4509821 (=> (not res!1875679) (not e!2809473))))

(assert (=> b!4509821 (= res!1875679 ((_ is Cons!50583) (t!357669 (toList!4284 lm!1477))))))

(declare-fun b!4509822 () Bool)

(assert (=> b!4509822 (= e!2809473 (containsKeyBiggerList!118 (t!357669 (t!357669 (toList!4284 lm!1477))) key!3287))))

(assert (= (and d!1387073 res!1875680) b!4509820))

(assert (= (and d!1387073 (not res!1875678)) b!4509821))

(assert (= (and b!4509821 res!1875679) b!4509822))

(declare-fun m!5248749 () Bool)

(assert (=> b!4509820 m!5248749))

(declare-fun m!5248751 () Bool)

(assert (=> b!4509822 m!5248751))

(assert (=> b!4509641 d!1387073))

(declare-fun d!1387075 () Bool)

(declare-fun res!1875681 () Bool)

(declare-fun e!2809478 () Bool)

(assert (=> d!1387075 (=> res!1875681 e!2809478)))

(declare-fun e!2809477 () Bool)

(assert (=> d!1387075 (= res!1875681 e!2809477)))

(declare-fun res!1875683 () Bool)

(assert (=> d!1387075 (=> (not res!1875683) (not e!2809477))))

(assert (=> d!1387075 (= res!1875683 ((_ is Cons!50583) (toList!4284 lt!1687914)))))

(assert (=> d!1387075 (= (containsKeyBiggerList!118 (toList!4284 lt!1687914) key!3287) e!2809478)))

(declare-fun b!4509823 () Bool)

(assert (=> b!4509823 (= e!2809477 (containsKey!1718 (_2!28788 (h!56416 (toList!4284 lt!1687914))) key!3287))))

(declare-fun b!4509824 () Bool)

(declare-fun e!2809476 () Bool)

(assert (=> b!4509824 (= e!2809478 e!2809476)))

(declare-fun res!1875682 () Bool)

(assert (=> b!4509824 (=> (not res!1875682) (not e!2809476))))

(assert (=> b!4509824 (= res!1875682 ((_ is Cons!50583) (toList!4284 lt!1687914)))))

(declare-fun b!4509825 () Bool)

(assert (=> b!4509825 (= e!2809476 (containsKeyBiggerList!118 (t!357669 (toList!4284 lt!1687914)) key!3287))))

(assert (= (and d!1387075 res!1875683) b!4509823))

(assert (= (and d!1387075 (not res!1875681)) b!4509824))

(assert (= (and b!4509824 res!1875682) b!4509825))

(declare-fun m!5248753 () Bool)

(assert (=> b!4509823 m!5248753))

(declare-fun m!5248755 () Bool)

(assert (=> b!4509825 m!5248755))

(assert (=> b!4509641 d!1387075))

(declare-fun bs!846515 () Bool)

(declare-fun d!1387077 () Bool)

(assert (= bs!846515 (and d!1387077 d!1387035)))

(declare-fun lambda!170300 () Int)

(assert (=> bs!846515 (= lambda!170300 lambda!170293)))

(declare-fun bs!846516 () Bool)

(assert (= bs!846516 (and d!1387077 d!1387029)))

(assert (=> bs!846516 (= lambda!170300 lambda!170288)))

(declare-fun bs!846517 () Bool)

(assert (= bs!846517 (and d!1387077 d!1386981)))

(assert (=> bs!846517 (= lambda!170300 lambda!170274)))

(declare-fun bs!846518 () Bool)

(assert (= bs!846518 (and d!1387077 d!1387007)))

(assert (=> bs!846518 (= lambda!170300 lambda!170281)))

(declare-fun bs!846519 () Bool)

(assert (= bs!846519 (and d!1387077 d!1386973)))

(assert (=> bs!846519 (not (= lambda!170300 lambda!170262))))

(declare-fun bs!846520 () Bool)

(assert (= bs!846520 (and d!1387077 start!445696)))

(assert (=> bs!846520 (= lambda!170300 lambda!170259)))

(assert (=> d!1387077 (containsKeyBiggerList!118 (toList!4284 lt!1687914) key!3287)))

(declare-fun lt!1688066 () Unit!93382)

(declare-fun choose!29290 (ListLongMap!2915 K!11985 Hashable!5533) Unit!93382)

(assert (=> d!1387077 (= lt!1688066 (choose!29290 lt!1687914 key!3287 hashF!1107))))

(assert (=> d!1387077 (forall!10213 (toList!4284 lt!1687914) lambda!170300)))

(assert (=> d!1387077 (= (lemmaInLongMapThenContainsKeyBiggerList!54 lt!1687914 key!3287 hashF!1107) lt!1688066)))

(declare-fun bs!846521 () Bool)

(assert (= bs!846521 d!1387077))

(assert (=> bs!846521 m!5248333))

(declare-fun m!5248757 () Bool)

(assert (=> bs!846521 m!5248757))

(declare-fun m!5248759 () Bool)

(assert (=> bs!846521 m!5248759))

(assert (=> b!4509641 d!1387077))

(declare-fun d!1387079 () Bool)

(declare-fun res!1875688 () Bool)

(declare-fun e!2809483 () Bool)

(assert (=> d!1387079 (=> res!1875688 e!2809483)))

(assert (=> d!1387079 (= res!1875688 (and ((_ is Cons!50582) lt!1687927) (= (_1!28787 (h!56415 lt!1687927)) key!3287)))))

(assert (=> d!1387079 (= (containsKey!1718 lt!1687927 key!3287) e!2809483)))

(declare-fun b!4509830 () Bool)

(declare-fun e!2809484 () Bool)

(assert (=> b!4509830 (= e!2809483 e!2809484)))

(declare-fun res!1875689 () Bool)

(assert (=> b!4509830 (=> (not res!1875689) (not e!2809484))))

(assert (=> b!4509830 (= res!1875689 ((_ is Cons!50582) lt!1687927))))

(declare-fun b!4509831 () Bool)

(assert (=> b!4509831 (= e!2809484 (containsKey!1718 (t!357668 lt!1687927) key!3287))))

(assert (= (and d!1387079 (not res!1875688)) b!4509830))

(assert (= (and b!4509830 res!1875689) b!4509831))

(declare-fun m!5248761 () Bool)

(assert (=> b!4509831 m!5248761))

(assert (=> b!4509652 d!1387079))

(declare-fun d!1387081 () Bool)

(declare-fun res!1875690 () Bool)

(declare-fun e!2809485 () Bool)

(assert (=> d!1387081 (=> res!1875690 e!2809485)))

(assert (=> d!1387081 (= res!1875690 ((_ is Nil!50583) (toList!4284 lt!1687925)))))

(assert (=> d!1387081 (= (forall!10213 (toList!4284 lt!1687925) lambda!170259) e!2809485)))

(declare-fun b!4509832 () Bool)

(declare-fun e!2809486 () Bool)

(assert (=> b!4509832 (= e!2809485 e!2809486)))

(declare-fun res!1875691 () Bool)

(assert (=> b!4509832 (=> (not res!1875691) (not e!2809486))))

(assert (=> b!4509832 (= res!1875691 (dynLambda!21135 lambda!170259 (h!56416 (toList!4284 lt!1687925))))))

(declare-fun b!4509833 () Bool)

(assert (=> b!4509833 (= e!2809486 (forall!10213 (t!357669 (toList!4284 lt!1687925)) lambda!170259))))

(assert (= (and d!1387081 (not res!1875690)) b!4509832))

(assert (= (and b!4509832 res!1875691) b!4509833))

(declare-fun b_lambda!153711 () Bool)

(assert (=> (not b_lambda!153711) (not b!4509832)))

(declare-fun m!5248763 () Bool)

(assert (=> b!4509832 m!5248763))

(declare-fun m!5248765 () Bool)

(assert (=> b!4509833 m!5248765))

(assert (=> b!4509637 d!1387081))

(declare-fun d!1387083 () Bool)

(declare-fun hash!2741 (Hashable!5533 K!11985) (_ BitVec 64))

(assert (=> d!1387083 (= (hash!2737 hashF!1107 key!3287) (hash!2741 hashF!1107 key!3287))))

(declare-fun bs!846522 () Bool)

(assert (= bs!846522 d!1387083))

(declare-fun m!5248767 () Bool)

(assert (=> bs!846522 m!5248767))

(assert (=> b!4509648 d!1387083))

(declare-fun d!1387085 () Bool)

(declare-fun e!2809491 () Bool)

(assert (=> d!1387085 e!2809491))

(declare-fun res!1875694 () Bool)

(assert (=> d!1387085 (=> res!1875694 e!2809491)))

(declare-fun lt!1688078 () Bool)

(assert (=> d!1387085 (= res!1875694 (not lt!1688078))))

(declare-fun lt!1688077 () Bool)

(assert (=> d!1387085 (= lt!1688078 lt!1688077)))

(declare-fun lt!1688075 () Unit!93382)

(declare-fun e!2809492 () Unit!93382)

(assert (=> d!1387085 (= lt!1688075 e!2809492)))

(declare-fun c!769292 () Bool)

(assert (=> d!1387085 (= c!769292 lt!1688077)))

(declare-fun containsKey!1721 (List!50707 (_ BitVec 64)) Bool)

(assert (=> d!1387085 (= lt!1688077 (containsKey!1721 (toList!4284 lt!1687914) hash!344))))

(assert (=> d!1387085 (= (contains!13278 lt!1687914 hash!344) lt!1688078)))

(declare-fun b!4509840 () Bool)

(declare-fun lt!1688076 () Unit!93382)

(assert (=> b!4509840 (= e!2809492 lt!1688076)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!956 (List!50707 (_ BitVec 64)) Unit!93382)

(assert (=> b!4509840 (= lt!1688076 (lemmaContainsKeyImpliesGetValueByKeyDefined!956 (toList!4284 lt!1687914) hash!344))))

(declare-fun isDefined!8359 (Option!11072) Bool)

(assert (=> b!4509840 (isDefined!8359 (getValueByKey!1052 (toList!4284 lt!1687914) hash!344))))

(declare-fun b!4509841 () Bool)

(declare-fun Unit!93391 () Unit!93382)

(assert (=> b!4509841 (= e!2809492 Unit!93391)))

(declare-fun b!4509842 () Bool)

(assert (=> b!4509842 (= e!2809491 (isDefined!8359 (getValueByKey!1052 (toList!4284 lt!1687914) hash!344)))))

(assert (= (and d!1387085 c!769292) b!4509840))

(assert (= (and d!1387085 (not c!769292)) b!4509841))

(assert (= (and d!1387085 (not res!1875694)) b!4509842))

(declare-fun m!5248769 () Bool)

(assert (=> d!1387085 m!5248769))

(declare-fun m!5248771 () Bool)

(assert (=> b!4509840 m!5248771))

(declare-fun m!5248773 () Bool)

(assert (=> b!4509840 m!5248773))

(assert (=> b!4509840 m!5248773))

(declare-fun m!5248775 () Bool)

(assert (=> b!4509840 m!5248775))

(assert (=> b!4509842 m!5248773))

(assert (=> b!4509842 m!5248773))

(assert (=> b!4509842 m!5248775))

(assert (=> b!4509638 d!1387085))

(declare-fun d!1387087 () Bool)

(declare-fun tail!7693 (List!50707) List!50707)

(assert (=> d!1387087 (= (tail!7692 lm!1477) (ListLongMap!2916 (tail!7693 (toList!4284 lm!1477))))))

(declare-fun bs!846523 () Bool)

(assert (= bs!846523 d!1387087))

(declare-fun m!5248777 () Bool)

(assert (=> bs!846523 m!5248777))

(assert (=> b!4509638 d!1387087))

(declare-fun d!1387089 () Bool)

(assert (=> d!1387089 (= (eq!595 (extractMap!1194 (toList!4284 lt!1687922)) (addToMapMapFromBucket!665 (_2!28788 lt!1687913) lt!1687917)) (= (content!8295 (toList!4283 (extractMap!1194 (toList!4284 lt!1687922)))) (content!8295 (toList!4283 (addToMapMapFromBucket!665 (_2!28788 lt!1687913) lt!1687917)))))))

(declare-fun bs!846524 () Bool)

(assert (= bs!846524 d!1387089))

(declare-fun m!5248779 () Bool)

(assert (=> bs!846524 m!5248779))

(declare-fun m!5248781 () Bool)

(assert (=> bs!846524 m!5248781))

(assert (=> b!4509649 d!1387089))

(declare-fun bs!846525 () Bool)

(declare-fun d!1387091 () Bool)

(assert (= bs!846525 (and d!1387091 d!1387035)))

(declare-fun lambda!170301 () Int)

(assert (=> bs!846525 (= lambda!170301 lambda!170293)))

(declare-fun bs!846526 () Bool)

(assert (= bs!846526 (and d!1387091 d!1387029)))

(assert (=> bs!846526 (= lambda!170301 lambda!170288)))

(declare-fun bs!846527 () Bool)

(assert (= bs!846527 (and d!1387091 d!1386981)))

(assert (=> bs!846527 (= lambda!170301 lambda!170274)))

(declare-fun bs!846528 () Bool)

(assert (= bs!846528 (and d!1387091 d!1387007)))

(assert (=> bs!846528 (= lambda!170301 lambda!170281)))

(declare-fun bs!846529 () Bool)

(assert (= bs!846529 (and d!1387091 d!1386973)))

(assert (=> bs!846529 (not (= lambda!170301 lambda!170262))))

(declare-fun bs!846530 () Bool)

(assert (= bs!846530 (and d!1387091 start!445696)))

(assert (=> bs!846530 (= lambda!170301 lambda!170259)))

(declare-fun bs!846531 () Bool)

(assert (= bs!846531 (and d!1387091 d!1387077)))

(assert (=> bs!846531 (= lambda!170301 lambda!170300)))

(declare-fun lt!1688079 () ListMap!3545)

(assert (=> d!1387091 (invariantList!997 (toList!4283 lt!1688079))))

(declare-fun e!2809493 () ListMap!3545)

(assert (=> d!1387091 (= lt!1688079 e!2809493)))

(declare-fun c!769293 () Bool)

(assert (=> d!1387091 (= c!769293 ((_ is Cons!50583) (toList!4284 lt!1687922)))))

(assert (=> d!1387091 (forall!10213 (toList!4284 lt!1687922) lambda!170301)))

(assert (=> d!1387091 (= (extractMap!1194 (toList!4284 lt!1687922)) lt!1688079)))

(declare-fun b!4509843 () Bool)

(assert (=> b!4509843 (= e!2809493 (addToMapMapFromBucket!665 (_2!28788 (h!56416 (toList!4284 lt!1687922))) (extractMap!1194 (t!357669 (toList!4284 lt!1687922)))))))

(declare-fun b!4509844 () Bool)

(assert (=> b!4509844 (= e!2809493 (ListMap!3546 Nil!50582))))

(assert (= (and d!1387091 c!769293) b!4509843))

(assert (= (and d!1387091 (not c!769293)) b!4509844))

(declare-fun m!5248783 () Bool)

(assert (=> d!1387091 m!5248783))

(declare-fun m!5248785 () Bool)

(assert (=> d!1387091 m!5248785))

(declare-fun m!5248787 () Bool)

(assert (=> b!4509843 m!5248787))

(assert (=> b!4509843 m!5248787))

(declare-fun m!5248789 () Bool)

(assert (=> b!4509843 m!5248789))

(assert (=> b!4509649 d!1387091))

(declare-fun b!4509913 () Bool)

(assert (=> b!4509913 true))

(declare-fun bs!846568 () Bool)

(declare-fun b!4509910 () Bool)

(assert (= bs!846568 (and b!4509910 b!4509913)))

(declare-fun lambda!170367 () Int)

(declare-fun lambda!170366 () Int)

(assert (=> bs!846568 (= lambda!170367 lambda!170366)))

(assert (=> b!4509910 true))

(declare-fun lt!1688221 () ListMap!3545)

(declare-fun lambda!170368 () Int)

(assert (=> bs!846568 (= (= lt!1688221 lt!1687917) (= lambda!170368 lambda!170366))))

(assert (=> b!4509910 (= (= lt!1688221 lt!1687917) (= lambda!170368 lambda!170367))))

(assert (=> b!4509910 true))

(declare-fun bs!846569 () Bool)

(declare-fun d!1387093 () Bool)

(assert (= bs!846569 (and d!1387093 b!4509913)))

(declare-fun lt!1688228 () ListMap!3545)

(declare-fun lambda!170369 () Int)

(assert (=> bs!846569 (= (= lt!1688228 lt!1687917) (= lambda!170369 lambda!170366))))

(declare-fun bs!846570 () Bool)

(assert (= bs!846570 (and d!1387093 b!4509910)))

(assert (=> bs!846570 (= (= lt!1688228 lt!1687917) (= lambda!170369 lambda!170367))))

(assert (=> bs!846570 (= (= lt!1688228 lt!1688221) (= lambda!170369 lambda!170368))))

(assert (=> d!1387093 true))

(declare-fun call!314058 () Bool)

(declare-fun c!769304 () Bool)

(declare-fun bm!314051 () Bool)

(declare-fun forall!10215 (List!50706 Int) Bool)

(assert (=> bm!314051 (= call!314058 (forall!10215 (ite c!769304 (toList!4283 lt!1687917) (t!357668 (_2!28788 lt!1687913))) (ite c!769304 lambda!170366 lambda!170368)))))

(declare-fun bm!314052 () Bool)

(declare-fun call!314057 () Bool)

(assert (=> bm!314052 (= call!314057 (forall!10215 (toList!4283 lt!1687917) (ite c!769304 lambda!170366 lambda!170368)))))

(declare-fun bm!314053 () Bool)

(declare-fun call!314056 () Unit!93382)

(declare-fun lemmaContainsAllItsOwnKeys!318 (ListMap!3545) Unit!93382)

(assert (=> bm!314053 (= call!314056 (lemmaContainsAllItsOwnKeys!318 lt!1687917))))

(declare-fun e!2809538 () ListMap!3545)

(assert (=> b!4509910 (= e!2809538 lt!1688221)))

(declare-fun lt!1688217 () ListMap!3545)

(declare-fun +!1498 (ListMap!3545 tuple2!50986) ListMap!3545)

(assert (=> b!4509910 (= lt!1688217 (+!1498 lt!1687917 (h!56415 (_2!28788 lt!1687913))))))

(assert (=> b!4509910 (= lt!1688221 (addToMapMapFromBucket!665 (t!357668 (_2!28788 lt!1687913)) (+!1498 lt!1687917 (h!56415 (_2!28788 lt!1687913)))))))

(declare-fun lt!1688218 () Unit!93382)

(assert (=> b!4509910 (= lt!1688218 call!314056)))

(assert (=> b!4509910 (forall!10215 (toList!4283 lt!1687917) lambda!170367)))

(declare-fun lt!1688219 () Unit!93382)

(assert (=> b!4509910 (= lt!1688219 lt!1688218)))

(assert (=> b!4509910 (forall!10215 (toList!4283 lt!1688217) lambda!170368)))

(declare-fun lt!1688215 () Unit!93382)

(declare-fun Unit!93403 () Unit!93382)

(assert (=> b!4509910 (= lt!1688215 Unit!93403)))

(assert (=> b!4509910 call!314058))

(declare-fun lt!1688210 () Unit!93382)

(declare-fun Unit!93404 () Unit!93382)

(assert (=> b!4509910 (= lt!1688210 Unit!93404)))

(declare-fun lt!1688220 () Unit!93382)

(declare-fun Unit!93405 () Unit!93382)

(assert (=> b!4509910 (= lt!1688220 Unit!93405)))

(declare-fun lt!1688213 () Unit!93382)

(declare-fun forallContained!2467 (List!50706 Int tuple2!50986) Unit!93382)

(assert (=> b!4509910 (= lt!1688213 (forallContained!2467 (toList!4283 lt!1688217) lambda!170368 (h!56415 (_2!28788 lt!1687913))))))

(assert (=> b!4509910 (contains!13277 lt!1688217 (_1!28787 (h!56415 (_2!28788 lt!1687913))))))

(declare-fun lt!1688224 () Unit!93382)

(declare-fun Unit!93406 () Unit!93382)

(assert (=> b!4509910 (= lt!1688224 Unit!93406)))

(assert (=> b!4509910 (contains!13277 lt!1688221 (_1!28787 (h!56415 (_2!28788 lt!1687913))))))

(declare-fun lt!1688212 () Unit!93382)

(declare-fun Unit!93407 () Unit!93382)

(assert (=> b!4509910 (= lt!1688212 Unit!93407)))

(assert (=> b!4509910 (forall!10215 (_2!28788 lt!1687913) lambda!170368)))

(declare-fun lt!1688214 () Unit!93382)

(declare-fun Unit!93408 () Unit!93382)

(assert (=> b!4509910 (= lt!1688214 Unit!93408)))

(assert (=> b!4509910 (forall!10215 (toList!4283 lt!1688217) lambda!170368)))

(declare-fun lt!1688226 () Unit!93382)

(declare-fun Unit!93409 () Unit!93382)

(assert (=> b!4509910 (= lt!1688226 Unit!93409)))

(declare-fun lt!1688216 () Unit!93382)

(declare-fun Unit!93410 () Unit!93382)

(assert (=> b!4509910 (= lt!1688216 Unit!93410)))

(declare-fun lt!1688230 () Unit!93382)

(declare-fun addForallContainsKeyThenBeforeAdding!318 (ListMap!3545 ListMap!3545 K!11985 V!12231) Unit!93382)

(assert (=> b!4509910 (= lt!1688230 (addForallContainsKeyThenBeforeAdding!318 lt!1687917 lt!1688221 (_1!28787 (h!56415 (_2!28788 lt!1687913))) (_2!28787 (h!56415 (_2!28788 lt!1687913)))))))

(assert (=> b!4509910 (forall!10215 (toList!4283 lt!1687917) lambda!170368)))

(declare-fun lt!1688223 () Unit!93382)

(assert (=> b!4509910 (= lt!1688223 lt!1688230)))

(assert (=> b!4509910 (forall!10215 (toList!4283 lt!1687917) lambda!170368)))

(declare-fun lt!1688222 () Unit!93382)

(declare-fun Unit!93411 () Unit!93382)

(assert (=> b!4509910 (= lt!1688222 Unit!93411)))

(declare-fun res!1875729 () Bool)

(assert (=> b!4509910 (= res!1875729 (forall!10215 (_2!28788 lt!1687913) lambda!170368))))

(declare-fun e!2809537 () Bool)

(assert (=> b!4509910 (=> (not res!1875729) (not e!2809537))))

(assert (=> b!4509910 e!2809537))

(declare-fun lt!1688227 () Unit!93382)

(declare-fun Unit!93412 () Unit!93382)

(assert (=> b!4509910 (= lt!1688227 Unit!93412)))

(declare-fun b!4509911 () Bool)

(assert (=> b!4509911 (= e!2809537 call!314057)))

(declare-fun b!4509912 () Bool)

(declare-fun e!2809536 () Bool)

(assert (=> b!4509912 (= e!2809536 (invariantList!997 (toList!4283 lt!1688228)))))

(assert (=> d!1387093 e!2809536))

(declare-fun res!1875728 () Bool)

(assert (=> d!1387093 (=> (not res!1875728) (not e!2809536))))

(assert (=> d!1387093 (= res!1875728 (forall!10215 (_2!28788 lt!1687913) lambda!170369))))

(assert (=> d!1387093 (= lt!1688228 e!2809538)))

(assert (=> d!1387093 (= c!769304 ((_ is Nil!50582) (_2!28788 lt!1687913)))))

(assert (=> d!1387093 (noDuplicateKeys!1138 (_2!28788 lt!1687913))))

(assert (=> d!1387093 (= (addToMapMapFromBucket!665 (_2!28788 lt!1687913) lt!1687917) lt!1688228)))

(assert (=> b!4509913 (= e!2809538 lt!1687917)))

(declare-fun lt!1688229 () Unit!93382)

(assert (=> b!4509913 (= lt!1688229 call!314056)))

(assert (=> b!4509913 call!314057))

(declare-fun lt!1688225 () Unit!93382)

(assert (=> b!4509913 (= lt!1688225 lt!1688229)))

(assert (=> b!4509913 call!314058))

(declare-fun lt!1688211 () Unit!93382)

(declare-fun Unit!93413 () Unit!93382)

(assert (=> b!4509913 (= lt!1688211 Unit!93413)))

(declare-fun b!4509914 () Bool)

(declare-fun res!1875730 () Bool)

(assert (=> b!4509914 (=> (not res!1875730) (not e!2809536))))

(assert (=> b!4509914 (= res!1875730 (forall!10215 (toList!4283 lt!1687917) lambda!170369))))

(assert (= (and d!1387093 c!769304) b!4509913))

(assert (= (and d!1387093 (not c!769304)) b!4509910))

(assert (= (and b!4509910 res!1875729) b!4509911))

(assert (= (or b!4509913 b!4509910) bm!314051))

(assert (= (or b!4509913 b!4509911) bm!314052))

(assert (= (or b!4509913 b!4509910) bm!314053))

(assert (= (and d!1387093 res!1875728) b!4509914))

(assert (= (and b!4509914 res!1875730) b!4509912))

(declare-fun m!5248911 () Bool)

(assert (=> b!4509914 m!5248911))

(declare-fun m!5248913 () Bool)

(assert (=> bm!314051 m!5248913))

(declare-fun m!5248915 () Bool)

(assert (=> d!1387093 m!5248915))

(declare-fun m!5248917 () Bool)

(assert (=> d!1387093 m!5248917))

(declare-fun m!5248919 () Bool)

(assert (=> b!4509912 m!5248919))

(declare-fun m!5248921 () Bool)

(assert (=> b!4509910 m!5248921))

(declare-fun m!5248923 () Bool)

(assert (=> b!4509910 m!5248923))

(declare-fun m!5248925 () Bool)

(assert (=> b!4509910 m!5248925))

(declare-fun m!5248927 () Bool)

(assert (=> b!4509910 m!5248927))

(declare-fun m!5248929 () Bool)

(assert (=> b!4509910 m!5248929))

(declare-fun m!5248931 () Bool)

(assert (=> b!4509910 m!5248931))

(assert (=> b!4509910 m!5248929))

(declare-fun m!5248933 () Bool)

(assert (=> b!4509910 m!5248933))

(declare-fun m!5248935 () Bool)

(assert (=> b!4509910 m!5248935))

(assert (=> b!4509910 m!5248927))

(assert (=> b!4509910 m!5248923))

(declare-fun m!5248937 () Bool)

(assert (=> b!4509910 m!5248937))

(assert (=> b!4509910 m!5248921))

(declare-fun m!5248939 () Bool)

(assert (=> b!4509910 m!5248939))

(declare-fun m!5248941 () Bool)

(assert (=> bm!314052 m!5248941))

(declare-fun m!5248943 () Bool)

(assert (=> bm!314053 m!5248943))

(assert (=> b!4509649 d!1387093))

(declare-fun b!4509928 () Bool)

(declare-fun e!2809544 () List!50706)

(assert (=> b!4509928 (= e!2809544 Nil!50582)))

(declare-fun d!1387125 () Bool)

(declare-fun lt!1688233 () List!50706)

(assert (=> d!1387125 (not (containsKey!1718 lt!1688233 key!3287))))

(declare-fun e!2809543 () List!50706)

(assert (=> d!1387125 (= lt!1688233 e!2809543)))

(declare-fun c!769310 () Bool)

(assert (=> d!1387125 (= c!769310 (and ((_ is Cons!50582) lt!1687927) (= (_1!28787 (h!56415 lt!1687927)) key!3287)))))

(assert (=> d!1387125 (noDuplicateKeys!1138 lt!1687927)))

(assert (=> d!1387125 (= (removePairForKey!765 lt!1687927 key!3287) lt!1688233)))

(declare-fun b!4509925 () Bool)

(assert (=> b!4509925 (= e!2809543 (t!357668 lt!1687927))))

(declare-fun b!4509926 () Bool)

(assert (=> b!4509926 (= e!2809543 e!2809544)))

(declare-fun c!769309 () Bool)

(assert (=> b!4509926 (= c!769309 ((_ is Cons!50582) lt!1687927))))

(declare-fun b!4509927 () Bool)

(assert (=> b!4509927 (= e!2809544 (Cons!50582 (h!56415 lt!1687927) (removePairForKey!765 (t!357668 lt!1687927) key!3287)))))

(assert (= (and d!1387125 c!769310) b!4509925))

(assert (= (and d!1387125 (not c!769310)) b!4509926))

(assert (= (and b!4509926 c!769309) b!4509927))

(assert (= (and b!4509926 (not c!769309)) b!4509928))

(declare-fun m!5248945 () Bool)

(assert (=> d!1387125 m!5248945))

(declare-fun m!5248947 () Bool)

(assert (=> d!1387125 m!5248947))

(declare-fun m!5248949 () Bool)

(assert (=> b!4509927 m!5248949))

(assert (=> b!4509639 d!1387125))

(declare-fun d!1387127 () Bool)

(declare-fun lt!1688236 () Bool)

(declare-fun content!8299 (List!50707) (InoxSet tuple2!50988))

(assert (=> d!1387127 (= lt!1688236 (select (content!8299 (toList!4284 lm!1477)) lt!1687919))))

(declare-fun e!2809550 () Bool)

(assert (=> d!1387127 (= lt!1688236 e!2809550)))

(declare-fun res!1875735 () Bool)

(assert (=> d!1387127 (=> (not res!1875735) (not e!2809550))))

(assert (=> d!1387127 (= res!1875735 ((_ is Cons!50583) (toList!4284 lm!1477)))))

(assert (=> d!1387127 (= (contains!13279 (toList!4284 lm!1477) lt!1687919) lt!1688236)))

(declare-fun b!4509933 () Bool)

(declare-fun e!2809549 () Bool)

(assert (=> b!4509933 (= e!2809550 e!2809549)))

(declare-fun res!1875736 () Bool)

(assert (=> b!4509933 (=> res!1875736 e!2809549)))

(assert (=> b!4509933 (= res!1875736 (= (h!56416 (toList!4284 lm!1477)) lt!1687919))))

(declare-fun b!4509934 () Bool)

(assert (=> b!4509934 (= e!2809549 (contains!13279 (t!357669 (toList!4284 lm!1477)) lt!1687919))))

(assert (= (and d!1387127 res!1875735) b!4509933))

(assert (= (and b!4509933 (not res!1875736)) b!4509934))

(declare-fun m!5248951 () Bool)

(assert (=> d!1387127 m!5248951))

(declare-fun m!5248953 () Bool)

(assert (=> d!1387127 m!5248953))

(assert (=> b!4509934 m!5248337))

(assert (=> b!4509639 d!1387127))

(declare-fun d!1387129 () Bool)

(declare-fun e!2809551 () Bool)

(assert (=> d!1387129 e!2809551))

(declare-fun res!1875737 () Bool)

(assert (=> d!1387129 (=> res!1875737 e!2809551)))

(declare-fun lt!1688240 () Bool)

(assert (=> d!1387129 (= res!1875737 (not lt!1688240))))

(declare-fun lt!1688239 () Bool)

(assert (=> d!1387129 (= lt!1688240 lt!1688239)))

(declare-fun lt!1688237 () Unit!93382)

(declare-fun e!2809552 () Unit!93382)

(assert (=> d!1387129 (= lt!1688237 e!2809552)))

(declare-fun c!769311 () Bool)

(assert (=> d!1387129 (= c!769311 lt!1688239)))

(assert (=> d!1387129 (= lt!1688239 (containsKey!1721 (toList!4284 lm!1477) lt!1687912))))

(assert (=> d!1387129 (= (contains!13278 lm!1477 lt!1687912) lt!1688240)))

(declare-fun b!4509935 () Bool)

(declare-fun lt!1688238 () Unit!93382)

(assert (=> b!4509935 (= e!2809552 lt!1688238)))

(assert (=> b!4509935 (= lt!1688238 (lemmaContainsKeyImpliesGetValueByKeyDefined!956 (toList!4284 lm!1477) lt!1687912))))

(assert (=> b!4509935 (isDefined!8359 (getValueByKey!1052 (toList!4284 lm!1477) lt!1687912))))

(declare-fun b!4509936 () Bool)

(declare-fun Unit!93414 () Unit!93382)

(assert (=> b!4509936 (= e!2809552 Unit!93414)))

(declare-fun b!4509937 () Bool)

(assert (=> b!4509937 (= e!2809551 (isDefined!8359 (getValueByKey!1052 (toList!4284 lm!1477) lt!1687912)))))

(assert (= (and d!1387129 c!769311) b!4509935))

(assert (= (and d!1387129 (not c!769311)) b!4509936))

(assert (= (and d!1387129 (not res!1875737)) b!4509937))

(declare-fun m!5248955 () Bool)

(assert (=> d!1387129 m!5248955))

(declare-fun m!5248957 () Bool)

(assert (=> b!4509935 m!5248957))

(declare-fun m!5248959 () Bool)

(assert (=> b!4509935 m!5248959))

(assert (=> b!4509935 m!5248959))

(declare-fun m!5248961 () Bool)

(assert (=> b!4509935 m!5248961))

(assert (=> b!4509937 m!5248959))

(assert (=> b!4509937 m!5248959))

(assert (=> b!4509937 m!5248961))

(assert (=> b!4509639 d!1387129))

(declare-fun bs!846571 () Bool)

(declare-fun d!1387131 () Bool)

(assert (= bs!846571 (and d!1387131 d!1387035)))

(declare-fun lambda!170372 () Int)

(assert (=> bs!846571 (= lambda!170372 lambda!170293)))

(declare-fun bs!846572 () Bool)

(assert (= bs!846572 (and d!1387131 d!1387029)))

(assert (=> bs!846572 (= lambda!170372 lambda!170288)))

(declare-fun bs!846573 () Bool)

(assert (= bs!846573 (and d!1387131 d!1386981)))

(assert (=> bs!846573 (= lambda!170372 lambda!170274)))

(declare-fun bs!846574 () Bool)

(assert (= bs!846574 (and d!1387131 d!1387007)))

(assert (=> bs!846574 (= lambda!170372 lambda!170281)))

(declare-fun bs!846575 () Bool)

(assert (= bs!846575 (and d!1387131 d!1386973)))

(assert (=> bs!846575 (not (= lambda!170372 lambda!170262))))

(declare-fun bs!846576 () Bool)

(assert (= bs!846576 (and d!1387131 d!1387091)))

(assert (=> bs!846576 (= lambda!170372 lambda!170301)))

(declare-fun bs!846577 () Bool)

(assert (= bs!846577 (and d!1387131 start!445696)))

(assert (=> bs!846577 (= lambda!170372 lambda!170259)))

(declare-fun bs!846578 () Bool)

(assert (= bs!846578 (and d!1387131 d!1387077)))

(assert (=> bs!846578 (= lambda!170372 lambda!170300)))

(assert (=> d!1387131 (contains!13278 lm!1477 (hash!2737 hashF!1107 key!3287))))

(declare-fun lt!1688243 () Unit!93382)

(declare-fun choose!29291 (ListLongMap!2915 K!11985 Hashable!5533) Unit!93382)

(assert (=> d!1387131 (= lt!1688243 (choose!29291 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1387131 (forall!10213 (toList!4284 lm!1477) lambda!170372)))

(assert (=> d!1387131 (= (lemmaInGenMapThenLongMapContainsHash!212 lm!1477 key!3287 hashF!1107) lt!1688243)))

(declare-fun bs!846579 () Bool)

(assert (= bs!846579 d!1387131))

(assert (=> bs!846579 m!5248373))

(assert (=> bs!846579 m!5248373))

(declare-fun m!5248963 () Bool)

(assert (=> bs!846579 m!5248963))

(declare-fun m!5248965 () Bool)

(assert (=> bs!846579 m!5248965))

(declare-fun m!5248967 () Bool)

(assert (=> bs!846579 m!5248967))

(assert (=> b!4509639 d!1387131))

(declare-fun d!1387133 () Bool)

(assert (=> d!1387133 (dynLambda!21135 lambda!170259 lt!1687919)))

(declare-fun lt!1688246 () Unit!93382)

(declare-fun choose!29292 (List!50707 Int tuple2!50988) Unit!93382)

(assert (=> d!1387133 (= lt!1688246 (choose!29292 (toList!4284 lm!1477) lambda!170259 lt!1687919))))

(declare-fun e!2809555 () Bool)

(assert (=> d!1387133 e!2809555))

(declare-fun res!1875740 () Bool)

(assert (=> d!1387133 (=> (not res!1875740) (not e!2809555))))

(assert (=> d!1387133 (= res!1875740 (forall!10213 (toList!4284 lm!1477) lambda!170259))))

(assert (=> d!1387133 (= (forallContained!2465 (toList!4284 lm!1477) lambda!170259 lt!1687919) lt!1688246)))

(declare-fun b!4509940 () Bool)

(assert (=> b!4509940 (= e!2809555 (contains!13279 (toList!4284 lm!1477) lt!1687919))))

(assert (= (and d!1387133 res!1875740) b!4509940))

(declare-fun b_lambda!153721 () Bool)

(assert (=> (not b_lambda!153721) (not d!1387133)))

(declare-fun m!5248969 () Bool)

(assert (=> d!1387133 m!5248969))

(declare-fun m!5248971 () Bool)

(assert (=> d!1387133 m!5248971))

(assert (=> d!1387133 m!5248369))

(assert (=> b!4509940 m!5248411))

(assert (=> b!4509639 d!1387133))

(declare-fun d!1387135 () Bool)

(assert (=> d!1387135 (contains!13279 (toList!4284 lm!1477) (tuple2!50989 hash!344 lt!1687927))))

(declare-fun lt!1688249 () Unit!93382)

(declare-fun choose!29293 (List!50707 (_ BitVec 64) List!50706) Unit!93382)

(assert (=> d!1387135 (= lt!1688249 (choose!29293 (toList!4284 lm!1477) hash!344 lt!1687927))))

(declare-fun e!2809558 () Bool)

(assert (=> d!1387135 e!2809558))

(declare-fun res!1875743 () Bool)

(assert (=> d!1387135 (=> (not res!1875743) (not e!2809558))))

(assert (=> d!1387135 (= res!1875743 (isStrictlySorted!411 (toList!4284 lm!1477)))))

(assert (=> d!1387135 (= (lemmaGetValueByKeyImpliesContainsTuple!650 (toList!4284 lm!1477) hash!344 lt!1687927) lt!1688249)))

(declare-fun b!4509943 () Bool)

(assert (=> b!4509943 (= e!2809558 (= (getValueByKey!1052 (toList!4284 lm!1477) hash!344) (Some!11071 lt!1687927)))))

(assert (= (and d!1387135 res!1875743) b!4509943))

(declare-fun m!5248973 () Bool)

(assert (=> d!1387135 m!5248973))

(declare-fun m!5248975 () Bool)

(assert (=> d!1387135 m!5248975))

(assert (=> d!1387135 m!5248747))

(declare-fun m!5248977 () Bool)

(assert (=> b!4509943 m!5248977))

(assert (=> b!4509639 d!1387135))

(declare-fun d!1387137 () Bool)

(declare-fun get!16549 (Option!11072) List!50706)

(assert (=> d!1387137 (= (apply!11875 lm!1477 hash!344) (get!16549 (getValueByKey!1052 (toList!4284 lm!1477) hash!344)))))

(declare-fun bs!846580 () Bool)

(assert (= bs!846580 d!1387137))

(assert (=> bs!846580 m!5248977))

(assert (=> bs!846580 m!5248977))

(declare-fun m!5248979 () Bool)

(assert (=> bs!846580 m!5248979))

(assert (=> b!4509639 d!1387137))

(declare-fun bs!846581 () Bool)

(declare-fun d!1387139 () Bool)

(assert (= bs!846581 (and d!1387139 b!4509913)))

(declare-fun lambda!170375 () Int)

(assert (=> bs!846581 (not (= lambda!170375 lambda!170366))))

(declare-fun bs!846582 () Bool)

(assert (= bs!846582 (and d!1387139 b!4509910)))

(assert (=> bs!846582 (not (= lambda!170375 lambda!170367))))

(assert (=> bs!846582 (not (= lambda!170375 lambda!170368))))

(declare-fun bs!846583 () Bool)

(assert (= bs!846583 (and d!1387139 d!1387093)))

(assert (=> bs!846583 (not (= lambda!170375 lambda!170369))))

(assert (=> d!1387139 true))

(assert (=> d!1387139 true))

(assert (=> d!1387139 (= (allKeysSameHash!992 newBucket!178 hash!344 hashF!1107) (forall!10215 newBucket!178 lambda!170375))))

(declare-fun bs!846584 () Bool)

(assert (= bs!846584 d!1387139))

(declare-fun m!5248981 () Bool)

(assert (=> bs!846584 m!5248981))

(assert (=> b!4509650 d!1387139))

(declare-fun d!1387141 () Bool)

(declare-fun lt!1688250 () Bool)

(assert (=> d!1387141 (= lt!1688250 (select (content!8299 (t!357669 (toList!4284 lm!1477))) lt!1687919))))

(declare-fun e!2809560 () Bool)

(assert (=> d!1387141 (= lt!1688250 e!2809560)))

(declare-fun res!1875744 () Bool)

(assert (=> d!1387141 (=> (not res!1875744) (not e!2809560))))

(assert (=> d!1387141 (= res!1875744 ((_ is Cons!50583) (t!357669 (toList!4284 lm!1477))))))

(assert (=> d!1387141 (= (contains!13279 (t!357669 (toList!4284 lm!1477)) lt!1687919) lt!1688250)))

(declare-fun b!4509948 () Bool)

(declare-fun e!2809559 () Bool)

(assert (=> b!4509948 (= e!2809560 e!2809559)))

(declare-fun res!1875745 () Bool)

(assert (=> b!4509948 (=> res!1875745 e!2809559)))

(assert (=> b!4509948 (= res!1875745 (= (h!56416 (t!357669 (toList!4284 lm!1477))) lt!1687919))))

(declare-fun b!4509949 () Bool)

(assert (=> b!4509949 (= e!2809559 (contains!13279 (t!357669 (t!357669 (toList!4284 lm!1477))) lt!1687919))))

(assert (= (and d!1387141 res!1875744) b!4509948))

(assert (= (and b!4509948 (not res!1875745)) b!4509949))

(declare-fun m!5248983 () Bool)

(assert (=> d!1387141 m!5248983))

(declare-fun m!5248985 () Bool)

(assert (=> d!1387141 m!5248985))

(declare-fun m!5248987 () Bool)

(assert (=> b!4509949 m!5248987))

(assert (=> b!4509645 d!1387141))

(declare-fun d!1387143 () Bool)

(assert (=> d!1387143 (= (apply!11875 lt!1687914 hash!344) (get!16549 (getValueByKey!1052 (toList!4284 lt!1687914) hash!344)))))

(declare-fun bs!846585 () Bool)

(assert (= bs!846585 d!1387143))

(assert (=> bs!846585 m!5248773))

(assert (=> bs!846585 m!5248773))

(declare-fun m!5248989 () Bool)

(assert (=> bs!846585 m!5248989))

(assert (=> b!4509656 d!1387143))

(declare-fun b!4509968 () Bool)

(declare-fun e!2809578 () Bool)

(declare-fun contains!13281 (List!50709 K!11985) Bool)

(assert (=> b!4509968 (= e!2809578 (not (contains!13281 (keys!17552 lt!1687920) key!3287)))))

(declare-fun bm!314056 () Bool)

(declare-fun call!314061 () Bool)

(declare-fun e!2809574 () List!50709)

(assert (=> bm!314056 (= call!314061 (contains!13281 e!2809574 key!3287))))

(declare-fun c!769319 () Bool)

(declare-fun c!769318 () Bool)

(assert (=> bm!314056 (= c!769319 c!769318)))

(declare-fun b!4509969 () Bool)

(declare-fun e!2809575 () Unit!93382)

(declare-fun lt!1688274 () Unit!93382)

(assert (=> b!4509969 (= e!2809575 lt!1688274)))

(declare-fun lt!1688270 () Unit!93382)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!957 (List!50706 K!11985) Unit!93382)

(assert (=> b!4509969 (= lt!1688270 (lemmaContainsKeyImpliesGetValueByKeyDefined!957 (toList!4283 lt!1687920) key!3287))))

(declare-datatypes ((Option!11073 0))(
  ( (None!11072) (Some!11072 (v!44616 V!12231)) )
))
(declare-fun isDefined!8360 (Option!11073) Bool)

(declare-fun getValueByKey!1053 (List!50706 K!11985) Option!11073)

(assert (=> b!4509969 (isDefined!8360 (getValueByKey!1053 (toList!4283 lt!1687920) key!3287))))

(declare-fun lt!1688267 () Unit!93382)

(assert (=> b!4509969 (= lt!1688267 lt!1688270)))

(declare-fun lemmaInListThenGetKeysListContains!441 (List!50706 K!11985) Unit!93382)

(assert (=> b!4509969 (= lt!1688274 (lemmaInListThenGetKeysListContains!441 (toList!4283 lt!1687920) key!3287))))

(assert (=> b!4509969 call!314061))

(declare-fun b!4509970 () Bool)

(declare-fun e!2809577 () Bool)

(declare-fun e!2809573 () Bool)

(assert (=> b!4509970 (= e!2809577 e!2809573)))

(declare-fun res!1875752 () Bool)

(assert (=> b!4509970 (=> (not res!1875752) (not e!2809573))))

(assert (=> b!4509970 (= res!1875752 (isDefined!8360 (getValueByKey!1053 (toList!4283 lt!1687920) key!3287)))))

(declare-fun b!4509971 () Bool)

(assert (=> b!4509971 (= e!2809574 (keys!17552 lt!1687920))))

(declare-fun b!4509972 () Bool)

(assert (=> b!4509972 false))

(declare-fun lt!1688269 () Unit!93382)

(declare-fun lt!1688268 () Unit!93382)

(assert (=> b!4509972 (= lt!1688269 lt!1688268)))

(declare-fun containsKey!1722 (List!50706 K!11985) Bool)

(assert (=> b!4509972 (containsKey!1722 (toList!4283 lt!1687920) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!444 (List!50706 K!11985) Unit!93382)

(assert (=> b!4509972 (= lt!1688268 (lemmaInGetKeysListThenContainsKey!444 (toList!4283 lt!1687920) key!3287))))

(declare-fun e!2809576 () Unit!93382)

(declare-fun Unit!93417 () Unit!93382)

(assert (=> b!4509972 (= e!2809576 Unit!93417)))

(declare-fun b!4509973 () Bool)

(assert (=> b!4509973 (= e!2809573 (contains!13281 (keys!17552 lt!1687920) key!3287))))

(declare-fun d!1387145 () Bool)

(assert (=> d!1387145 e!2809577))

(declare-fun res!1875753 () Bool)

(assert (=> d!1387145 (=> res!1875753 e!2809577)))

(assert (=> d!1387145 (= res!1875753 e!2809578)))

(declare-fun res!1875754 () Bool)

(assert (=> d!1387145 (=> (not res!1875754) (not e!2809578))))

(declare-fun lt!1688272 () Bool)

(assert (=> d!1387145 (= res!1875754 (not lt!1688272))))

(declare-fun lt!1688273 () Bool)

(assert (=> d!1387145 (= lt!1688272 lt!1688273)))

(declare-fun lt!1688271 () Unit!93382)

(assert (=> d!1387145 (= lt!1688271 e!2809575)))

(assert (=> d!1387145 (= c!769318 lt!1688273)))

(assert (=> d!1387145 (= lt!1688273 (containsKey!1722 (toList!4283 lt!1687920) key!3287))))

(assert (=> d!1387145 (= (contains!13277 lt!1687920 key!3287) lt!1688272)))

(declare-fun b!4509974 () Bool)

(declare-fun getKeysList!445 (List!50706) List!50709)

(assert (=> b!4509974 (= e!2809574 (getKeysList!445 (toList!4283 lt!1687920)))))

(declare-fun b!4509975 () Bool)

(assert (=> b!4509975 (= e!2809575 e!2809576)))

(declare-fun c!769320 () Bool)

(assert (=> b!4509975 (= c!769320 call!314061)))

(declare-fun b!4509976 () Bool)

(declare-fun Unit!93418 () Unit!93382)

(assert (=> b!4509976 (= e!2809576 Unit!93418)))

(assert (= (and d!1387145 c!769318) b!4509969))

(assert (= (and d!1387145 (not c!769318)) b!4509975))

(assert (= (and b!4509975 c!769320) b!4509972))

(assert (= (and b!4509975 (not c!769320)) b!4509976))

(assert (= (or b!4509969 b!4509975) bm!314056))

(assert (= (and bm!314056 c!769319) b!4509974))

(assert (= (and bm!314056 (not c!769319)) b!4509971))

(assert (= (and d!1387145 res!1875754) b!4509968))

(assert (= (and d!1387145 (not res!1875753)) b!4509970))

(assert (= (and b!4509970 res!1875752) b!4509973))

(declare-fun m!5248991 () Bool)

(assert (=> b!4509974 m!5248991))

(declare-fun m!5248993 () Bool)

(assert (=> b!4509968 m!5248993))

(assert (=> b!4509968 m!5248993))

(declare-fun m!5248995 () Bool)

(assert (=> b!4509968 m!5248995))

(declare-fun m!5248997 () Bool)

(assert (=> b!4509970 m!5248997))

(assert (=> b!4509970 m!5248997))

(declare-fun m!5248999 () Bool)

(assert (=> b!4509970 m!5248999))

(assert (=> b!4509971 m!5248993))

(declare-fun m!5249001 () Bool)

(assert (=> b!4509969 m!5249001))

(assert (=> b!4509969 m!5248997))

(assert (=> b!4509969 m!5248997))

(assert (=> b!4509969 m!5248999))

(declare-fun m!5249003 () Bool)

(assert (=> b!4509969 m!5249003))

(declare-fun m!5249005 () Bool)

(assert (=> d!1387145 m!5249005))

(assert (=> b!4509973 m!5248993))

(assert (=> b!4509973 m!5248993))

(assert (=> b!4509973 m!5248995))

(assert (=> b!4509972 m!5249005))

(declare-fun m!5249007 () Bool)

(assert (=> b!4509972 m!5249007))

(declare-fun m!5249009 () Bool)

(assert (=> bm!314056 m!5249009))

(assert (=> b!4509635 d!1387145))

(declare-fun bs!846586 () Bool)

(declare-fun d!1387147 () Bool)

(assert (= bs!846586 (and d!1387147 d!1387035)))

(declare-fun lambda!170376 () Int)

(assert (=> bs!846586 (= lambda!170376 lambda!170293)))

(declare-fun bs!846587 () Bool)

(assert (= bs!846587 (and d!1387147 d!1387029)))

(assert (=> bs!846587 (= lambda!170376 lambda!170288)))

(declare-fun bs!846588 () Bool)

(assert (= bs!846588 (and d!1387147 d!1386981)))

(assert (=> bs!846588 (= lambda!170376 lambda!170274)))

(declare-fun bs!846589 () Bool)

(assert (= bs!846589 (and d!1387147 d!1386973)))

(assert (=> bs!846589 (not (= lambda!170376 lambda!170262))))

(declare-fun bs!846590 () Bool)

(assert (= bs!846590 (and d!1387147 d!1387091)))

(assert (=> bs!846590 (= lambda!170376 lambda!170301)))

(declare-fun bs!846591 () Bool)

(assert (= bs!846591 (and d!1387147 start!445696)))

(assert (=> bs!846591 (= lambda!170376 lambda!170259)))

(declare-fun bs!846592 () Bool)

(assert (= bs!846592 (and d!1387147 d!1387077)))

(assert (=> bs!846592 (= lambda!170376 lambda!170300)))

(declare-fun bs!846593 () Bool)

(assert (= bs!846593 (and d!1387147 d!1387131)))

(assert (=> bs!846593 (= lambda!170376 lambda!170372)))

(declare-fun bs!846594 () Bool)

(assert (= bs!846594 (and d!1387147 d!1387007)))

(assert (=> bs!846594 (= lambda!170376 lambda!170281)))

(declare-fun lt!1688275 () ListMap!3545)

(assert (=> d!1387147 (invariantList!997 (toList!4283 lt!1688275))))

(declare-fun e!2809579 () ListMap!3545)

(assert (=> d!1387147 (= lt!1688275 e!2809579)))

(declare-fun c!769321 () Bool)

(assert (=> d!1387147 (= c!769321 ((_ is Cons!50583) (toList!4284 lm!1477)))))

(assert (=> d!1387147 (forall!10213 (toList!4284 lm!1477) lambda!170376)))

(assert (=> d!1387147 (= (extractMap!1194 (toList!4284 lm!1477)) lt!1688275)))

(declare-fun b!4509977 () Bool)

(assert (=> b!4509977 (= e!2809579 (addToMapMapFromBucket!665 (_2!28788 (h!56416 (toList!4284 lm!1477))) (extractMap!1194 (t!357669 (toList!4284 lm!1477)))))))

(declare-fun b!4509978 () Bool)

(assert (=> b!4509978 (= e!2809579 (ListMap!3546 Nil!50582))))

(assert (= (and d!1387147 c!769321) b!4509977))

(assert (= (and d!1387147 (not c!769321)) b!4509978))

(declare-fun m!5249011 () Bool)

(assert (=> d!1387147 m!5249011))

(declare-fun m!5249013 () Bool)

(assert (=> d!1387147 m!5249013))

(assert (=> b!4509977 m!5248361))

(assert (=> b!4509977 m!5248361))

(declare-fun m!5249015 () Bool)

(assert (=> b!4509977 m!5249015))

(assert (=> b!4509635 d!1387147))

(declare-fun bs!846595 () Bool)

(declare-fun d!1387149 () Bool)

(assert (= bs!846595 (and d!1387149 d!1387029)))

(declare-fun lambda!170377 () Int)

(assert (=> bs!846595 (= lambda!170377 lambda!170288)))

(declare-fun bs!846596 () Bool)

(assert (= bs!846596 (and d!1387149 d!1386981)))

(assert (=> bs!846596 (= lambda!170377 lambda!170274)))

(declare-fun bs!846597 () Bool)

(assert (= bs!846597 (and d!1387149 d!1386973)))

(assert (=> bs!846597 (not (= lambda!170377 lambda!170262))))

(declare-fun bs!846598 () Bool)

(assert (= bs!846598 (and d!1387149 d!1387091)))

(assert (=> bs!846598 (= lambda!170377 lambda!170301)))

(declare-fun bs!846599 () Bool)

(assert (= bs!846599 (and d!1387149 start!445696)))

(assert (=> bs!846599 (= lambda!170377 lambda!170259)))

(declare-fun bs!846600 () Bool)

(assert (= bs!846600 (and d!1387149 d!1387077)))

(assert (=> bs!846600 (= lambda!170377 lambda!170300)))

(declare-fun bs!846601 () Bool)

(assert (= bs!846601 (and d!1387149 d!1387147)))

(assert (=> bs!846601 (= lambda!170377 lambda!170376)))

(declare-fun bs!846602 () Bool)

(assert (= bs!846602 (and d!1387149 d!1387035)))

(assert (=> bs!846602 (= lambda!170377 lambda!170293)))

(declare-fun bs!846603 () Bool)

(assert (= bs!846603 (and d!1387149 d!1387131)))

(assert (=> bs!846603 (= lambda!170377 lambda!170372)))

(declare-fun bs!846604 () Bool)

(assert (= bs!846604 (and d!1387149 d!1387007)))

(assert (=> bs!846604 (= lambda!170377 lambda!170281)))

(declare-fun lt!1688276 () ListMap!3545)

(assert (=> d!1387149 (invariantList!997 (toList!4283 lt!1688276))))

(declare-fun e!2809580 () ListMap!3545)

(assert (=> d!1387149 (= lt!1688276 e!2809580)))

(declare-fun c!769322 () Bool)

(assert (=> d!1387149 (= c!769322 ((_ is Cons!50583) (t!357669 (toList!4284 lm!1477))))))

(assert (=> d!1387149 (forall!10213 (t!357669 (toList!4284 lm!1477)) lambda!170377)))

(assert (=> d!1387149 (= (extractMap!1194 (t!357669 (toList!4284 lm!1477))) lt!1688276)))

(declare-fun b!4509979 () Bool)

(assert (=> b!4509979 (= e!2809580 (addToMapMapFromBucket!665 (_2!28788 (h!56416 (t!357669 (toList!4284 lm!1477)))) (extractMap!1194 (t!357669 (t!357669 (toList!4284 lm!1477))))))))

(declare-fun b!4509980 () Bool)

(assert (=> b!4509980 (= e!2809580 (ListMap!3546 Nil!50582))))

(assert (= (and d!1387149 c!769322) b!4509979))

(assert (= (and d!1387149 (not c!769322)) b!4509980))

(declare-fun m!5249017 () Bool)

(assert (=> d!1387149 m!5249017))

(declare-fun m!5249019 () Bool)

(assert (=> d!1387149 m!5249019))

(declare-fun m!5249021 () Bool)

(assert (=> b!4509979 m!5249021))

(assert (=> b!4509979 m!5249021))

(declare-fun m!5249023 () Bool)

(assert (=> b!4509979 m!5249023))

(assert (=> b!4509646 d!1387149))

(declare-fun bs!846605 () Bool)

(declare-fun d!1387151 () Bool)

(assert (= bs!846605 (and d!1387151 d!1387029)))

(declare-fun lambda!170380 () Int)

(assert (=> bs!846605 (= lambda!170380 lambda!170288)))

(declare-fun bs!846606 () Bool)

(assert (= bs!846606 (and d!1387151 d!1386981)))

(assert (=> bs!846606 (= lambda!170380 lambda!170274)))

(declare-fun bs!846607 () Bool)

(assert (= bs!846607 (and d!1387151 d!1386973)))

(assert (=> bs!846607 (not (= lambda!170380 lambda!170262))))

(declare-fun bs!846608 () Bool)

(assert (= bs!846608 (and d!1387151 d!1387091)))

(assert (=> bs!846608 (= lambda!170380 lambda!170301)))

(declare-fun bs!846609 () Bool)

(assert (= bs!846609 (and d!1387151 start!445696)))

(assert (=> bs!846609 (= lambda!170380 lambda!170259)))

(declare-fun bs!846610 () Bool)

(assert (= bs!846610 (and d!1387151 d!1387077)))

(assert (=> bs!846610 (= lambda!170380 lambda!170300)))

(declare-fun bs!846611 () Bool)

(assert (= bs!846611 (and d!1387151 d!1387149)))

(assert (=> bs!846611 (= lambda!170380 lambda!170377)))

(declare-fun bs!846612 () Bool)

(assert (= bs!846612 (and d!1387151 d!1387147)))

(assert (=> bs!846612 (= lambda!170380 lambda!170376)))

(declare-fun bs!846613 () Bool)

(assert (= bs!846613 (and d!1387151 d!1387035)))

(assert (=> bs!846613 (= lambda!170380 lambda!170293)))

(declare-fun bs!846614 () Bool)

(assert (= bs!846614 (and d!1387151 d!1387131)))

(assert (=> bs!846614 (= lambda!170380 lambda!170372)))

(declare-fun bs!846615 () Bool)

(assert (= bs!846615 (and d!1387151 d!1387007)))

(assert (=> bs!846615 (= lambda!170380 lambda!170281)))

(assert (=> d!1387151 (contains!13277 (extractMap!1194 (toList!4284 lt!1687914)) key!3287)))

(declare-fun lt!1688279 () Unit!93382)

(declare-fun choose!29295 (ListLongMap!2915 K!11985 Hashable!5533) Unit!93382)

(assert (=> d!1387151 (= lt!1688279 (choose!29295 lt!1687914 key!3287 hashF!1107))))

(assert (=> d!1387151 (forall!10213 (toList!4284 lt!1687914) lambda!170380)))

(assert (=> d!1387151 (= (lemmaListContainsThenExtractedMapContains!108 lt!1687914 key!3287 hashF!1107) lt!1688279)))

(declare-fun bs!846616 () Bool)

(assert (= bs!846616 d!1387151))

(assert (=> bs!846616 m!5248363))

(assert (=> bs!846616 m!5248363))

(declare-fun m!5249025 () Bool)

(assert (=> bs!846616 m!5249025))

(declare-fun m!5249027 () Bool)

(assert (=> bs!846616 m!5249027))

(declare-fun m!5249029 () Bool)

(assert (=> bs!846616 m!5249029))

(assert (=> b!4509646 d!1387151))

(declare-fun bs!846617 () Bool)

(declare-fun d!1387153 () Bool)

(assert (= bs!846617 (and d!1387153 d!1387029)))

(declare-fun lambda!170381 () Int)

(assert (=> bs!846617 (= lambda!170381 lambda!170288)))

(declare-fun bs!846618 () Bool)

(assert (= bs!846618 (and d!1387153 d!1386981)))

(assert (=> bs!846618 (= lambda!170381 lambda!170274)))

(declare-fun bs!846619 () Bool)

(assert (= bs!846619 (and d!1387153 d!1386973)))

(assert (=> bs!846619 (not (= lambda!170381 lambda!170262))))

(declare-fun bs!846620 () Bool)

(assert (= bs!846620 (and d!1387153 d!1387091)))

(assert (=> bs!846620 (= lambda!170381 lambda!170301)))

(declare-fun bs!846621 () Bool)

(assert (= bs!846621 (and d!1387153 start!445696)))

(assert (=> bs!846621 (= lambda!170381 lambda!170259)))

(declare-fun bs!846622 () Bool)

(assert (= bs!846622 (and d!1387153 d!1387077)))

(assert (=> bs!846622 (= lambda!170381 lambda!170300)))

(declare-fun bs!846623 () Bool)

(assert (= bs!846623 (and d!1387153 d!1387149)))

(assert (=> bs!846623 (= lambda!170381 lambda!170377)))

(declare-fun bs!846624 () Bool)

(assert (= bs!846624 (and d!1387153 d!1387151)))

(assert (=> bs!846624 (= lambda!170381 lambda!170380)))

(declare-fun bs!846625 () Bool)

(assert (= bs!846625 (and d!1387153 d!1387147)))

(assert (=> bs!846625 (= lambda!170381 lambda!170376)))

(declare-fun bs!846626 () Bool)

(assert (= bs!846626 (and d!1387153 d!1387035)))

(assert (=> bs!846626 (= lambda!170381 lambda!170293)))

(declare-fun bs!846627 () Bool)

(assert (= bs!846627 (and d!1387153 d!1387131)))

(assert (=> bs!846627 (= lambda!170381 lambda!170372)))

(declare-fun bs!846628 () Bool)

(assert (= bs!846628 (and d!1387153 d!1387007)))

(assert (=> bs!846628 (= lambda!170381 lambda!170281)))

(declare-fun lt!1688280 () ListMap!3545)

(assert (=> d!1387153 (invariantList!997 (toList!4283 lt!1688280))))

(declare-fun e!2809581 () ListMap!3545)

(assert (=> d!1387153 (= lt!1688280 e!2809581)))

(declare-fun c!769323 () Bool)

(assert (=> d!1387153 (= c!769323 ((_ is Cons!50583) (toList!4284 lt!1687914)))))

(assert (=> d!1387153 (forall!10213 (toList!4284 lt!1687914) lambda!170381)))

(assert (=> d!1387153 (= (extractMap!1194 (toList!4284 lt!1687914)) lt!1688280)))

(declare-fun b!4509981 () Bool)

(assert (=> b!4509981 (= e!2809581 (addToMapMapFromBucket!665 (_2!28788 (h!56416 (toList!4284 lt!1687914))) (extractMap!1194 (t!357669 (toList!4284 lt!1687914)))))))

(declare-fun b!4509982 () Bool)

(assert (=> b!4509982 (= e!2809581 (ListMap!3546 Nil!50582))))

(assert (= (and d!1387153 c!769323) b!4509981))

(assert (= (and d!1387153 (not c!769323)) b!4509982))

(declare-fun m!5249031 () Bool)

(assert (=> d!1387153 m!5249031))

(declare-fun m!5249033 () Bool)

(assert (=> d!1387153 m!5249033))

(declare-fun m!5249035 () Bool)

(assert (=> b!4509981 m!5249035))

(assert (=> b!4509981 m!5249035))

(declare-fun m!5249037 () Bool)

(assert (=> b!4509981 m!5249037))

(assert (=> b!4509646 d!1387153))

(declare-fun b!4509983 () Bool)

(declare-fun e!2809587 () Bool)

(assert (=> b!4509983 (= e!2809587 (not (contains!13281 (keys!17552 lt!1687916) key!3287)))))

(declare-fun bm!314057 () Bool)

(declare-fun call!314062 () Bool)

(declare-fun e!2809583 () List!50709)

(assert (=> bm!314057 (= call!314062 (contains!13281 e!2809583 key!3287))))

(declare-fun c!769325 () Bool)

(declare-fun c!769324 () Bool)

(assert (=> bm!314057 (= c!769325 c!769324)))

(declare-fun b!4509984 () Bool)

(declare-fun e!2809584 () Unit!93382)

(declare-fun lt!1688288 () Unit!93382)

(assert (=> b!4509984 (= e!2809584 lt!1688288)))

(declare-fun lt!1688284 () Unit!93382)

(assert (=> b!4509984 (= lt!1688284 (lemmaContainsKeyImpliesGetValueByKeyDefined!957 (toList!4283 lt!1687916) key!3287))))

(assert (=> b!4509984 (isDefined!8360 (getValueByKey!1053 (toList!4283 lt!1687916) key!3287))))

(declare-fun lt!1688281 () Unit!93382)

(assert (=> b!4509984 (= lt!1688281 lt!1688284)))

(assert (=> b!4509984 (= lt!1688288 (lemmaInListThenGetKeysListContains!441 (toList!4283 lt!1687916) key!3287))))

(assert (=> b!4509984 call!314062))

(declare-fun b!4509985 () Bool)

(declare-fun e!2809586 () Bool)

(declare-fun e!2809582 () Bool)

(assert (=> b!4509985 (= e!2809586 e!2809582)))

(declare-fun res!1875755 () Bool)

(assert (=> b!4509985 (=> (not res!1875755) (not e!2809582))))

(assert (=> b!4509985 (= res!1875755 (isDefined!8360 (getValueByKey!1053 (toList!4283 lt!1687916) key!3287)))))

(declare-fun b!4509986 () Bool)

(assert (=> b!4509986 (= e!2809583 (keys!17552 lt!1687916))))

(declare-fun b!4509987 () Bool)

(assert (=> b!4509987 false))

(declare-fun lt!1688283 () Unit!93382)

(declare-fun lt!1688282 () Unit!93382)

(assert (=> b!4509987 (= lt!1688283 lt!1688282)))

(assert (=> b!4509987 (containsKey!1722 (toList!4283 lt!1687916) key!3287)))

(assert (=> b!4509987 (= lt!1688282 (lemmaInGetKeysListThenContainsKey!444 (toList!4283 lt!1687916) key!3287))))

(declare-fun e!2809585 () Unit!93382)

(declare-fun Unit!93420 () Unit!93382)

(assert (=> b!4509987 (= e!2809585 Unit!93420)))

(declare-fun b!4509988 () Bool)

(assert (=> b!4509988 (= e!2809582 (contains!13281 (keys!17552 lt!1687916) key!3287))))

(declare-fun d!1387155 () Bool)

(assert (=> d!1387155 e!2809586))

(declare-fun res!1875756 () Bool)

(assert (=> d!1387155 (=> res!1875756 e!2809586)))

(assert (=> d!1387155 (= res!1875756 e!2809587)))

(declare-fun res!1875757 () Bool)

(assert (=> d!1387155 (=> (not res!1875757) (not e!2809587))))

(declare-fun lt!1688286 () Bool)

(assert (=> d!1387155 (= res!1875757 (not lt!1688286))))

(declare-fun lt!1688287 () Bool)

(assert (=> d!1387155 (= lt!1688286 lt!1688287)))

(declare-fun lt!1688285 () Unit!93382)

(assert (=> d!1387155 (= lt!1688285 e!2809584)))

(assert (=> d!1387155 (= c!769324 lt!1688287)))

(assert (=> d!1387155 (= lt!1688287 (containsKey!1722 (toList!4283 lt!1687916) key!3287))))

(assert (=> d!1387155 (= (contains!13277 lt!1687916 key!3287) lt!1688286)))

(declare-fun b!4509989 () Bool)

(assert (=> b!4509989 (= e!2809583 (getKeysList!445 (toList!4283 lt!1687916)))))

(declare-fun b!4509990 () Bool)

(assert (=> b!4509990 (= e!2809584 e!2809585)))

(declare-fun c!769326 () Bool)

(assert (=> b!4509990 (= c!769326 call!314062)))

(declare-fun b!4509991 () Bool)

(declare-fun Unit!93421 () Unit!93382)

(assert (=> b!4509991 (= e!2809585 Unit!93421)))

(assert (= (and d!1387155 c!769324) b!4509984))

(assert (= (and d!1387155 (not c!769324)) b!4509990))

(assert (= (and b!4509990 c!769326) b!4509987))

(assert (= (and b!4509990 (not c!769326)) b!4509991))

(assert (= (or b!4509984 b!4509990) bm!314057))

(assert (= (and bm!314057 c!769325) b!4509989))

(assert (= (and bm!314057 (not c!769325)) b!4509986))

(assert (= (and d!1387155 res!1875757) b!4509983))

(assert (= (and d!1387155 (not res!1875756)) b!4509985))

(assert (= (and b!4509985 res!1875755) b!4509988))

(declare-fun m!5249039 () Bool)

(assert (=> b!4509989 m!5249039))

(assert (=> b!4509983 m!5248597))

(assert (=> b!4509983 m!5248597))

(declare-fun m!5249041 () Bool)

(assert (=> b!4509983 m!5249041))

(declare-fun m!5249043 () Bool)

(assert (=> b!4509985 m!5249043))

(assert (=> b!4509985 m!5249043))

(declare-fun m!5249045 () Bool)

(assert (=> b!4509985 m!5249045))

(assert (=> b!4509986 m!5248597))

(declare-fun m!5249047 () Bool)

(assert (=> b!4509984 m!5249047))

(assert (=> b!4509984 m!5249043))

(assert (=> b!4509984 m!5249043))

(assert (=> b!4509984 m!5249045))

(declare-fun m!5249049 () Bool)

(assert (=> b!4509984 m!5249049))

(declare-fun m!5249051 () Bool)

(assert (=> d!1387155 m!5249051))

(assert (=> b!4509988 m!5248597))

(assert (=> b!4509988 m!5248597))

(assert (=> b!4509988 m!5249041))

(assert (=> b!4509987 m!5249051))

(declare-fun m!5249053 () Bool)

(assert (=> b!4509987 m!5249053))

(declare-fun m!5249055 () Bool)

(assert (=> bm!314057 m!5249055))

(assert (=> b!4509646 d!1387155))

(declare-fun b!4509992 () Bool)

(declare-fun e!2809593 () Bool)

(assert (=> b!4509992 (= e!2809593 (not (contains!13281 (keys!17552 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))) key!3287)))))

(declare-fun bm!314058 () Bool)

(declare-fun call!314063 () Bool)

(declare-fun e!2809589 () List!50709)

(assert (=> bm!314058 (= call!314063 (contains!13281 e!2809589 key!3287))))

(declare-fun c!769328 () Bool)

(declare-fun c!769327 () Bool)

(assert (=> bm!314058 (= c!769328 c!769327)))

(declare-fun b!4509993 () Bool)

(declare-fun e!2809590 () Unit!93382)

(declare-fun lt!1688296 () Unit!93382)

(assert (=> b!4509993 (= e!2809590 lt!1688296)))

(declare-fun lt!1688292 () Unit!93382)

(assert (=> b!4509993 (= lt!1688292 (lemmaContainsKeyImpliesGetValueByKeyDefined!957 (toList!4283 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))) key!3287))))

(assert (=> b!4509993 (isDefined!8360 (getValueByKey!1053 (toList!4283 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))) key!3287))))

(declare-fun lt!1688289 () Unit!93382)

(assert (=> b!4509993 (= lt!1688289 lt!1688292)))

(assert (=> b!4509993 (= lt!1688296 (lemmaInListThenGetKeysListContains!441 (toList!4283 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))) key!3287))))

(assert (=> b!4509993 call!314063))

(declare-fun b!4509994 () Bool)

(declare-fun e!2809592 () Bool)

(declare-fun e!2809588 () Bool)

(assert (=> b!4509994 (= e!2809592 e!2809588)))

(declare-fun res!1875758 () Bool)

(assert (=> b!4509994 (=> (not res!1875758) (not e!2809588))))

(assert (=> b!4509994 (= res!1875758 (isDefined!8360 (getValueByKey!1053 (toList!4283 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))) key!3287)))))

(declare-fun b!4509995 () Bool)

(assert (=> b!4509995 (= e!2809589 (keys!17552 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))))))

(declare-fun b!4509996 () Bool)

(assert (=> b!4509996 false))

(declare-fun lt!1688291 () Unit!93382)

(declare-fun lt!1688290 () Unit!93382)

(assert (=> b!4509996 (= lt!1688291 lt!1688290)))

(assert (=> b!4509996 (containsKey!1722 (toList!4283 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))) key!3287)))

(assert (=> b!4509996 (= lt!1688290 (lemmaInGetKeysListThenContainsKey!444 (toList!4283 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))) key!3287))))

(declare-fun e!2809591 () Unit!93382)

(declare-fun Unit!93422 () Unit!93382)

(assert (=> b!4509996 (= e!2809591 Unit!93422)))

(declare-fun b!4509997 () Bool)

(assert (=> b!4509997 (= e!2809588 (contains!13281 (keys!17552 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))) key!3287))))

(declare-fun d!1387157 () Bool)

(assert (=> d!1387157 e!2809592))

(declare-fun res!1875759 () Bool)

(assert (=> d!1387157 (=> res!1875759 e!2809592)))

(assert (=> d!1387157 (= res!1875759 e!2809593)))

(declare-fun res!1875760 () Bool)

(assert (=> d!1387157 (=> (not res!1875760) (not e!2809593))))

(declare-fun lt!1688294 () Bool)

(assert (=> d!1387157 (= res!1875760 (not lt!1688294))))

(declare-fun lt!1688295 () Bool)

(assert (=> d!1387157 (= lt!1688294 lt!1688295)))

(declare-fun lt!1688293 () Unit!93382)

(assert (=> d!1387157 (= lt!1688293 e!2809590)))

(assert (=> d!1387157 (= c!769327 lt!1688295)))

(assert (=> d!1387157 (= lt!1688295 (containsKey!1722 (toList!4283 (extractMap!1194 (t!357669 (toList!4284 lm!1477)))) key!3287))))

(assert (=> d!1387157 (= (contains!13277 (extractMap!1194 (t!357669 (toList!4284 lm!1477))) key!3287) lt!1688294)))

(declare-fun b!4509998 () Bool)

(assert (=> b!4509998 (= e!2809589 (getKeysList!445 (toList!4283 (extractMap!1194 (t!357669 (toList!4284 lm!1477))))))))

(declare-fun b!4509999 () Bool)

(assert (=> b!4509999 (= e!2809590 e!2809591)))

(declare-fun c!769329 () Bool)

(assert (=> b!4509999 (= c!769329 call!314063)))

(declare-fun b!4510000 () Bool)

(declare-fun Unit!93423 () Unit!93382)

(assert (=> b!4510000 (= e!2809591 Unit!93423)))

(assert (= (and d!1387157 c!769327) b!4509993))

(assert (= (and d!1387157 (not c!769327)) b!4509999))

(assert (= (and b!4509999 c!769329) b!4509996))

(assert (= (and b!4509999 (not c!769329)) b!4510000))

(assert (= (or b!4509993 b!4509999) bm!314058))

(assert (= (and bm!314058 c!769328) b!4509998))

(assert (= (and bm!314058 (not c!769328)) b!4509995))

(assert (= (and d!1387157 res!1875760) b!4509992))

(assert (= (and d!1387157 (not res!1875759)) b!4509994))

(assert (= (and b!4509994 res!1875758) b!4509997))

(declare-fun m!5249057 () Bool)

(assert (=> b!4509998 m!5249057))

(assert (=> b!4509992 m!5248361))

(declare-fun m!5249059 () Bool)

(assert (=> b!4509992 m!5249059))

(assert (=> b!4509992 m!5249059))

(declare-fun m!5249061 () Bool)

(assert (=> b!4509992 m!5249061))

(declare-fun m!5249063 () Bool)

(assert (=> b!4509994 m!5249063))

(assert (=> b!4509994 m!5249063))

(declare-fun m!5249065 () Bool)

(assert (=> b!4509994 m!5249065))

(assert (=> b!4509995 m!5248361))

(assert (=> b!4509995 m!5249059))

(declare-fun m!5249067 () Bool)

(assert (=> b!4509993 m!5249067))

(assert (=> b!4509993 m!5249063))

(assert (=> b!4509993 m!5249063))

(assert (=> b!4509993 m!5249065))

(declare-fun m!5249069 () Bool)

(assert (=> b!4509993 m!5249069))

(declare-fun m!5249071 () Bool)

(assert (=> d!1387157 m!5249071))

(assert (=> b!4509997 m!5248361))

(assert (=> b!4509997 m!5249059))

(assert (=> b!4509997 m!5249059))

(assert (=> b!4509997 m!5249061))

(assert (=> b!4509996 m!5249071))

(declare-fun m!5249073 () Bool)

(assert (=> b!4509996 m!5249073))

(declare-fun m!5249075 () Bool)

(assert (=> bm!314058 m!5249075))

(assert (=> b!4509646 d!1387157))

(declare-fun d!1387159 () Bool)

(declare-fun res!1875765 () Bool)

(declare-fun e!2809598 () Bool)

(assert (=> d!1387159 (=> res!1875765 e!2809598)))

(assert (=> d!1387159 (= res!1875765 (not ((_ is Cons!50582) newBucket!178)))))

(assert (=> d!1387159 (= (noDuplicateKeys!1138 newBucket!178) e!2809598)))

(declare-fun b!4510005 () Bool)

(declare-fun e!2809599 () Bool)

(assert (=> b!4510005 (= e!2809598 e!2809599)))

(declare-fun res!1875766 () Bool)

(assert (=> b!4510005 (=> (not res!1875766) (not e!2809599))))

(assert (=> b!4510005 (= res!1875766 (not (containsKey!1718 (t!357668 newBucket!178) (_1!28787 (h!56415 newBucket!178)))))))

(declare-fun b!4510006 () Bool)

(assert (=> b!4510006 (= e!2809599 (noDuplicateKeys!1138 (t!357668 newBucket!178)))))

(assert (= (and d!1387159 (not res!1875765)) b!4510005))

(assert (= (and b!4510005 res!1875766) b!4510006))

(declare-fun m!5249077 () Bool)

(assert (=> b!4510005 m!5249077))

(declare-fun m!5249079 () Bool)

(assert (=> b!4510006 m!5249079))

(assert (=> b!4509636 d!1387159))

(declare-fun d!1387161 () Bool)

(assert (=> d!1387161 (= (head!9370 lt!1687922) (head!9371 (toList!4284 lt!1687922)))))

(declare-fun bs!846629 () Bool)

(assert (= bs!846629 d!1387161))

(declare-fun m!5249081 () Bool)

(assert (=> bs!846629 m!5249081))

(assert (=> b!4509658 d!1387161))

(declare-fun b!4510011 () Bool)

(declare-fun e!2809602 () Bool)

(declare-fun tp!1337751 () Bool)

(declare-fun tp!1337752 () Bool)

(assert (=> b!4510011 (= e!2809602 (and tp!1337751 tp!1337752))))

(assert (=> b!4509647 (= tp!1337736 e!2809602)))

(assert (= (and b!4509647 ((_ is Cons!50583) (toList!4284 lm!1477))) b!4510011))

(declare-fun b!4510016 () Bool)

(declare-fun e!2809605 () Bool)

(declare-fun tp!1337755 () Bool)

(assert (=> b!4510016 (= e!2809605 (and tp_is_empty!27829 tp_is_empty!27831 tp!1337755))))

(assert (=> b!4509642 (= tp!1337737 e!2809605)))

(assert (= (and b!4509642 ((_ is Cons!50582) (t!357668 newBucket!178))) b!4510016))

(declare-fun b_lambda!153723 () Bool)

(assert (= b_lambda!153709 (or start!445696 b_lambda!153723)))

(declare-fun bs!846630 () Bool)

(declare-fun d!1387163 () Bool)

(assert (= bs!846630 (and d!1387163 start!445696)))

(assert (=> bs!846630 (= (dynLambda!21135 lambda!170259 (h!56416 (toList!4284 lm!1477))) (noDuplicateKeys!1138 (_2!28788 (h!56416 (toList!4284 lm!1477)))))))

(declare-fun m!5249083 () Bool)

(assert (=> bs!846630 m!5249083))

(assert (=> b!4509812 d!1387163))

(declare-fun b_lambda!153725 () Bool)

(assert (= b_lambda!153711 (or start!445696 b_lambda!153725)))

(declare-fun bs!846631 () Bool)

(declare-fun d!1387165 () Bool)

(assert (= bs!846631 (and d!1387165 start!445696)))

(assert (=> bs!846631 (= (dynLambda!21135 lambda!170259 (h!56416 (toList!4284 lt!1687925))) (noDuplicateKeys!1138 (_2!28788 (h!56416 (toList!4284 lt!1687925)))))))

(declare-fun m!5249085 () Bool)

(assert (=> bs!846631 m!5249085))

(assert (=> b!4509832 d!1387165))

(declare-fun b_lambda!153727 () Bool)

(assert (= b_lambda!153721 (or start!445696 b_lambda!153727)))

(declare-fun bs!846632 () Bool)

(declare-fun d!1387167 () Bool)

(assert (= bs!846632 (and d!1387167 start!445696)))

(assert (=> bs!846632 (= (dynLambda!21135 lambda!170259 lt!1687919) (noDuplicateKeys!1138 (_2!28788 lt!1687919)))))

(declare-fun m!5249087 () Bool)

(assert (=> bs!846632 m!5249087))

(assert (=> d!1387133 d!1387167))

(check-sat (not bm!314051) (not bm!314052) (not b!4510011) (not d!1387005) (not b!4509995) (not d!1387137) (not b!4509969) (not b!4509972) (not b!4509842) (not b!4509968) (not d!1386975) (not b_lambda!153727) (not d!1387089) (not d!1387071) (not d!1387083) (not b!4510016) (not b!4509994) (not b!4509713) (not d!1386981) (not d!1387129) (not d!1387085) (not d!1387147) (not d!1386973) (not b!4509986) (not bm!314057) (not b!4509983) (not d!1387035) (not b!4509940) (not d!1387149) (not b!4509665) (not b!4509989) (not b!4509831) (not b!4509914) (not b!4509803) (not b!4509772) (not b!4509927) (not b!4509840) tp_is_empty!27829 (not b!4509773) (not b!4509666) (not b!4509912) (not b!4509985) (not bs!846631) (not b!4509804) (not d!1387017) (not b!4510006) (not b_lambda!153725) (not b!4509937) (not b!4509973) (not d!1387131) (not b!4509979) (not b!4509943) (not d!1387143) (not d!1387135) (not d!1387029) (not d!1386977) (not b!4510005) (not d!1387033) (not b!4509822) (not b!4509949) (not b!4509987) (not d!1387155) (not b!4509805) (not b!4509992) (not b!4509993) (not bm!314053) (not b!4509970) (not bs!846632) (not b!4509997) (not bm!314056) (not d!1387145) (not b!4509802) (not b!4509988) (not d!1387093) (not d!1387133) (not b_lambda!153723) (not d!1387141) (not d!1387091) tp_is_empty!27831 (not b!4509974) (not b!4509935) (not d!1387157) (not d!1387125) (not b!4509977) (not d!1387023) (not d!1387127) (not b!4509996) (not d!1387153) (not d!1387087) (not b!4509813) (not b!4509762) (not b!4509825) (not b!4509971) (not d!1387151) (not d!1387139) (not b!4509981) (not b!4509712) (not d!1387007) (not bm!314058) (not d!1387161) (not b!4509984) (not b!4509934) (not b!4509843) (not d!1387059) (not b!4509833) (not d!1387077) (not d!1387057) (not bs!846630) (not b!4509910) (not b!4509998) (not d!1387019) (not b!4509820) (not b!4509823))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471920 () Bool)

(assert start!471920)

(declare-fun b!4675744 () Bool)

(declare-fun res!1969257 () Bool)

(declare-fun e!2917485 () Bool)

(assert (=> b!4675744 (=> (not res!1969257) (not e!2917485))))

(declare-datatypes ((K!13545 0))(
  ( (K!13546 (val!19107 Int)) )
))
(declare-datatypes ((V!13791 0))(
  ( (V!13792 (val!19108 Int)) )
))
(declare-datatypes ((tuple2!53426 0))(
  ( (tuple2!53427 (_1!30007 K!13545) (_2!30007 V!13791)) )
))
(declare-datatypes ((List!52293 0))(
  ( (Nil!52169) (Cons!52169 (h!58366 tuple2!53426) (t!359433 List!52293)) )
))
(declare-datatypes ((tuple2!53428 0))(
  ( (tuple2!53429 (_1!30008 (_ BitVec 64)) (_2!30008 List!52293)) )
))
(declare-datatypes ((List!52294 0))(
  ( (Nil!52170) (Cons!52170 (h!58367 tuple2!53428) (t!359434 List!52294)) )
))
(declare-datatypes ((ListLongMap!3935 0))(
  ( (ListLongMap!3936 (toList!5405 List!52294)) )
))
(declare-fun lm!2023 () ListLongMap!3935)

(get-info :version)

(assert (=> b!4675744 (= res!1969257 ((_ is Cons!52170) (toList!5405 lm!2023)))))

(declare-fun b!4675745 () Bool)

(declare-fun res!1969268 () Bool)

(assert (=> b!4675745 (=> (not res!1969268) (not e!2917485))))

(declare-datatypes ((Hashable!6127 0))(
  ( (HashableExt!6126 (__x!31830 Int)) )
))
(declare-fun hashF!1323 () Hashable!6127)

(declare-fun newBucket!218 () List!52293)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1584 (List!52293 (_ BitVec 64) Hashable!6127) Bool)

(assert (=> b!4675745 (= res!1969268 (allKeysSameHash!1584 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4675746 () Bool)

(declare-fun e!2917486 () Bool)

(declare-fun e!2917492 () Bool)

(assert (=> b!4675746 (= e!2917486 e!2917492)))

(declare-fun res!1969262 () Bool)

(assert (=> b!4675746 (=> res!1969262 e!2917492)))

(declare-fun lt!1835726 () List!52293)

(assert (=> b!4675746 (= res!1969262 (not (= lt!1835726 newBucket!218)))))

(declare-fun oldBucket!34 () List!52293)

(declare-fun tail!8360 (List!52293) List!52293)

(assert (=> b!4675746 (= lt!1835726 (tail!8360 oldBucket!34))))

(declare-fun b!4675747 () Bool)

(declare-fun res!1969263 () Bool)

(assert (=> b!4675747 (=> (not res!1969263) (not e!2917485))))

(declare-fun allKeysSameHashInMap!1672 (ListLongMap!3935 Hashable!6127) Bool)

(assert (=> b!4675747 (= res!1969263 (allKeysSameHashInMap!1672 lm!2023 hashF!1323))))

(declare-fun b!4675748 () Bool)

(assert (=> b!4675748 (= e!2917485 (not e!2917486))))

(declare-fun res!1969265 () Bool)

(assert (=> b!4675748 (=> res!1969265 e!2917486)))

(declare-fun key!4653 () K!13545)

(assert (=> b!4675748 (= res!1969265 (or (not ((_ is Cons!52169) oldBucket!34)) (not (= (_1!30007 (h!58366 oldBucket!34)) key!4653))))))

(declare-datatypes ((ListMap!4769 0))(
  ( (ListMap!4770 (toList!5406 List!52293)) )
))
(declare-fun lt!1835723 () ListMap!4769)

(declare-fun lt!1835727 () ListMap!4769)

(declare-fun addToMapMapFromBucket!1190 (List!52293 ListMap!4769) ListMap!4769)

(assert (=> b!4675748 (= lt!1835723 (addToMapMapFromBucket!1190 (_2!30008 (h!58367 (toList!5405 lm!2023))) lt!1835727))))

(declare-fun extractMap!1784 (List!52294) ListMap!4769)

(assert (=> b!4675748 (= lt!1835727 (extractMap!1784 (t!359434 (toList!5405 lm!2023))))))

(declare-fun tail!8361 (ListLongMap!3935) ListLongMap!3935)

(assert (=> b!4675748 (= (t!359434 (toList!5405 lm!2023)) (toList!5405 (tail!8361 lm!2023)))))

(declare-fun b!4675749 () Bool)

(declare-fun e!2917489 () Bool)

(assert (=> b!4675749 (= e!2917492 e!2917489)))

(declare-fun res!1969256 () Bool)

(assert (=> b!4675749 (=> res!1969256 e!2917489)))

(declare-fun lt!1835728 () ListMap!4769)

(assert (=> b!4675749 (= res!1969256 (not (= lt!1835728 (addToMapMapFromBucket!1190 newBucket!218 lt!1835727))))))

(assert (=> b!4675749 (= lt!1835728 (addToMapMapFromBucket!1190 lt!1835726 lt!1835727))))

(declare-fun res!1969267 () Bool)

(declare-fun e!2917488 () Bool)

(assert (=> start!471920 (=> (not res!1969267) (not e!2917488))))

(declare-fun lambda!203565 () Int)

(declare-fun forall!11177 (List!52294 Int) Bool)

(assert (=> start!471920 (= res!1969267 (forall!11177 (toList!5405 lm!2023) lambda!203565))))

(assert (=> start!471920 e!2917488))

(declare-fun e!2917491 () Bool)

(declare-fun inv!67419 (ListLongMap!3935) Bool)

(assert (=> start!471920 (and (inv!67419 lm!2023) e!2917491)))

(declare-fun tp_is_empty!30325 () Bool)

(assert (=> start!471920 tp_is_empty!30325))

(declare-fun e!2917487 () Bool)

(assert (=> start!471920 e!2917487))

(assert (=> start!471920 true))

(declare-fun e!2917490 () Bool)

(assert (=> start!471920 e!2917490))

(declare-fun tp!1344572 () Bool)

(declare-fun tp_is_empty!30327 () Bool)

(declare-fun b!4675750 () Bool)

(assert (=> b!4675750 (= e!2917487 (and tp_is_empty!30325 tp_is_empty!30327 tp!1344572))))

(declare-fun b!4675751 () Bool)

(declare-fun res!1969261 () Bool)

(assert (=> b!4675751 (=> (not res!1969261) (not e!2917485))))

(declare-fun head!9807 (List!52294) tuple2!53428)

(assert (=> b!4675751 (= res!1969261 (= (head!9807 (toList!5405 lm!2023)) (tuple2!53429 hash!405 oldBucket!34)))))

(declare-fun b!4675752 () Bool)

(declare-fun res!1969269 () Bool)

(assert (=> b!4675752 (=> res!1969269 e!2917492)))

(assert (=> b!4675752 (= res!1969269 (not (= (extractMap!1784 (Cons!52170 (tuple2!53429 hash!405 lt!1835726) (t!359434 (toList!5405 lm!2023)))) (extractMap!1784 (Cons!52170 (tuple2!53429 hash!405 newBucket!218) (t!359434 (toList!5405 lm!2023)))))))))

(declare-fun b!4675753 () Bool)

(declare-fun res!1969255 () Bool)

(assert (=> b!4675753 (=> (not res!1969255) (not e!2917488))))

(declare-fun noDuplicateKeys!1758 (List!52293) Bool)

(assert (=> b!4675753 (= res!1969255 (noDuplicateKeys!1758 newBucket!218))))

(declare-fun b!4675754 () Bool)

(assert (=> b!4675754 (= e!2917488 e!2917485)))

(declare-fun res!1969258 () Bool)

(assert (=> b!4675754 (=> (not res!1969258) (not e!2917485))))

(declare-fun contains!15318 (ListMap!4769 K!13545) Bool)

(assert (=> b!4675754 (= res!1969258 (contains!15318 lt!1835723 key!4653))))

(assert (=> b!4675754 (= lt!1835723 (extractMap!1784 (toList!5405 lm!2023)))))

(declare-fun b!4675755 () Bool)

(declare-fun res!1969264 () Bool)

(assert (=> b!4675755 (=> (not res!1969264) (not e!2917488))))

(assert (=> b!4675755 (= res!1969264 (noDuplicateKeys!1758 oldBucket!34))))

(declare-fun b!4675756 () Bool)

(declare-fun res!1969260 () Bool)

(assert (=> b!4675756 (=> (not res!1969260) (not e!2917488))))

(assert (=> b!4675756 (= res!1969260 (allKeysSameHash!1584 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4675757 () Bool)

(assert (=> b!4675757 (= e!2917489 (forall!11177 (t!359434 (toList!5405 lm!2023)) lambda!203565))))

(declare-fun lt!1835722 () ListMap!4769)

(declare-fun +!2060 (ListMap!4769 tuple2!53426) ListMap!4769)

(assert (=> b!4675757 (= lt!1835722 (+!2060 lt!1835728 (h!58366 oldBucket!34)))))

(declare-fun lt!1835725 () tuple2!53426)

(declare-fun eq!947 (ListMap!4769 ListMap!4769) Bool)

(assert (=> b!4675757 (eq!947 (addToMapMapFromBucket!1190 (Cons!52169 lt!1835725 lt!1835726) lt!1835727) (+!2060 lt!1835728 lt!1835725))))

(declare-datatypes ((Unit!121617 0))(
  ( (Unit!121618) )
))
(declare-fun lt!1835724 () Unit!121617)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!196 (tuple2!53426 List!52293 ListMap!4769) Unit!121617)

(assert (=> b!4675757 (= lt!1835724 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!196 lt!1835725 lt!1835726 lt!1835727))))

(declare-fun head!9808 (List!52293) tuple2!53426)

(assert (=> b!4675757 (= lt!1835725 (head!9808 oldBucket!34))))

(declare-fun b!4675758 () Bool)

(declare-fun tp!1344573 () Bool)

(assert (=> b!4675758 (= e!2917491 tp!1344573)))

(declare-fun b!4675759 () Bool)

(declare-fun tp!1344571 () Bool)

(assert (=> b!4675759 (= e!2917490 (and tp_is_empty!30325 tp_is_empty!30327 tp!1344571))))

(declare-fun b!4675760 () Bool)

(declare-fun res!1969266 () Bool)

(assert (=> b!4675760 (=> (not res!1969266) (not e!2917488))))

(declare-fun removePairForKey!1353 (List!52293 K!13545) List!52293)

(assert (=> b!4675760 (= res!1969266 (= (removePairForKey!1353 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4675761 () Bool)

(declare-fun res!1969259 () Bool)

(assert (=> b!4675761 (=> (not res!1969259) (not e!2917485))))

(declare-fun hash!3922 (Hashable!6127 K!13545) (_ BitVec 64))

(assert (=> b!4675761 (= res!1969259 (= (hash!3922 hashF!1323 key!4653) hash!405))))

(assert (= (and start!471920 res!1969267) b!4675755))

(assert (= (and b!4675755 res!1969264) b!4675753))

(assert (= (and b!4675753 res!1969255) b!4675760))

(assert (= (and b!4675760 res!1969266) b!4675756))

(assert (= (and b!4675756 res!1969260) b!4675754))

(assert (= (and b!4675754 res!1969258) b!4675761))

(assert (= (and b!4675761 res!1969259) b!4675745))

(assert (= (and b!4675745 res!1969268) b!4675747))

(assert (= (and b!4675747 res!1969263) b!4675751))

(assert (= (and b!4675751 res!1969261) b!4675744))

(assert (= (and b!4675744 res!1969257) b!4675748))

(assert (= (and b!4675748 (not res!1969265)) b!4675746))

(assert (= (and b!4675746 (not res!1969262)) b!4675752))

(assert (= (and b!4675752 (not res!1969269)) b!4675749))

(assert (= (and b!4675749 (not res!1969256)) b!4675757))

(assert (= start!471920 b!4675758))

(assert (= (and start!471920 ((_ is Cons!52169) oldBucket!34)) b!4675750))

(assert (= (and start!471920 ((_ is Cons!52169) newBucket!218)) b!4675759))

(declare-fun m!5569387 () Bool)

(assert (=> b!4675747 m!5569387))

(declare-fun m!5569389 () Bool)

(assert (=> b!4675746 m!5569389))

(declare-fun m!5569391 () Bool)

(assert (=> b!4675754 m!5569391))

(declare-fun m!5569393 () Bool)

(assert (=> b!4675754 m!5569393))

(declare-fun m!5569395 () Bool)

(assert (=> b!4675760 m!5569395))

(declare-fun m!5569397 () Bool)

(assert (=> start!471920 m!5569397))

(declare-fun m!5569399 () Bool)

(assert (=> start!471920 m!5569399))

(declare-fun m!5569401 () Bool)

(assert (=> b!4675761 m!5569401))

(declare-fun m!5569403 () Bool)

(assert (=> b!4675757 m!5569403))

(declare-fun m!5569405 () Bool)

(assert (=> b!4675757 m!5569405))

(declare-fun m!5569407 () Bool)

(assert (=> b!4675757 m!5569407))

(declare-fun m!5569409 () Bool)

(assert (=> b!4675757 m!5569409))

(declare-fun m!5569411 () Bool)

(assert (=> b!4675757 m!5569411))

(declare-fun m!5569413 () Bool)

(assert (=> b!4675757 m!5569413))

(assert (=> b!4675757 m!5569413))

(assert (=> b!4675757 m!5569405))

(declare-fun m!5569415 () Bool)

(assert (=> b!4675757 m!5569415))

(declare-fun m!5569417 () Bool)

(assert (=> b!4675749 m!5569417))

(declare-fun m!5569419 () Bool)

(assert (=> b!4675749 m!5569419))

(declare-fun m!5569421 () Bool)

(assert (=> b!4675756 m!5569421))

(declare-fun m!5569423 () Bool)

(assert (=> b!4675748 m!5569423))

(declare-fun m!5569425 () Bool)

(assert (=> b!4675748 m!5569425))

(declare-fun m!5569427 () Bool)

(assert (=> b!4675748 m!5569427))

(declare-fun m!5569429 () Bool)

(assert (=> b!4675752 m!5569429))

(declare-fun m!5569431 () Bool)

(assert (=> b!4675752 m!5569431))

(declare-fun m!5569433 () Bool)

(assert (=> b!4675755 m!5569433))

(declare-fun m!5569435 () Bool)

(assert (=> b!4675751 m!5569435))

(declare-fun m!5569437 () Bool)

(assert (=> b!4675745 m!5569437))

(declare-fun m!5569439 () Bool)

(assert (=> b!4675753 m!5569439))

(check-sat tp_is_empty!30325 (not b!4675760) (not b!4675758) (not b!4675749) (not b!4675759) (not start!471920) tp_is_empty!30327 (not b!4675757) (not b!4675752) (not b!4675745) (not b!4675755) (not b!4675750) (not b!4675747) (not b!4675754) (not b!4675756) (not b!4675751) (not b!4675761) (not b!4675748) (not b!4675753) (not b!4675746))
(check-sat)
(get-model)

(declare-fun b!4675856 () Bool)

(assert (=> b!4675856 true))

(declare-fun bs!1079859 () Bool)

(declare-fun b!4675857 () Bool)

(assert (= bs!1079859 (and b!4675857 b!4675856)))

(declare-fun lambda!203645 () Int)

(declare-fun lambda!203644 () Int)

(assert (=> bs!1079859 (= lambda!203645 lambda!203644)))

(assert (=> b!4675857 true))

(declare-fun lt!1835916 () ListMap!4769)

(declare-fun lambda!203646 () Int)

(assert (=> bs!1079859 (= (= lt!1835916 lt!1835727) (= lambda!203646 lambda!203644))))

(assert (=> b!4675857 (= (= lt!1835916 lt!1835727) (= lambda!203646 lambda!203645))))

(assert (=> b!4675857 true))

(declare-fun bs!1079860 () Bool)

(declare-fun d!1486435 () Bool)

(assert (= bs!1079860 (and d!1486435 b!4675856)))

(declare-fun lt!1835907 () ListMap!4769)

(declare-fun lambda!203647 () Int)

(assert (=> bs!1079860 (= (= lt!1835907 lt!1835727) (= lambda!203647 lambda!203644))))

(declare-fun bs!1079861 () Bool)

(assert (= bs!1079861 (and d!1486435 b!4675857)))

(assert (=> bs!1079861 (= (= lt!1835907 lt!1835727) (= lambda!203647 lambda!203645))))

(assert (=> bs!1079861 (= (= lt!1835907 lt!1835916) (= lambda!203647 lambda!203646))))

(assert (=> d!1486435 true))

(declare-fun b!4675854 () Bool)

(declare-fun e!2917552 () Bool)

(declare-fun forall!11179 (List!52293 Int) Bool)

(assert (=> b!4675854 (= e!2917552 (forall!11179 (toList!5406 lt!1835727) lambda!203646))))

(declare-fun b!4675855 () Bool)

(declare-fun res!1969314 () Bool)

(declare-fun e!2917551 () Bool)

(assert (=> b!4675855 (=> (not res!1969314) (not e!2917551))))

(assert (=> b!4675855 (= res!1969314 (forall!11179 (toList!5406 lt!1835727) lambda!203647))))

(assert (=> d!1486435 e!2917551))

(declare-fun res!1969315 () Bool)

(assert (=> d!1486435 (=> (not res!1969315) (not e!2917551))))

(assert (=> d!1486435 (= res!1969315 (forall!11179 (Cons!52169 lt!1835725 lt!1835726) lambda!203647))))

(declare-fun e!2917550 () ListMap!4769)

(assert (=> d!1486435 (= lt!1835907 e!2917550)))

(declare-fun c!800146 () Bool)

(assert (=> d!1486435 (= c!800146 ((_ is Nil!52169) (Cons!52169 lt!1835725 lt!1835726)))))

(assert (=> d!1486435 (noDuplicateKeys!1758 (Cons!52169 lt!1835725 lt!1835726))))

(assert (=> d!1486435 (= (addToMapMapFromBucket!1190 (Cons!52169 lt!1835725 lt!1835726) lt!1835727) lt!1835907)))

(assert (=> b!4675856 (= e!2917550 lt!1835727)))

(declare-fun lt!1835913 () Unit!121617)

(declare-fun call!326756 () Unit!121617)

(assert (=> b!4675856 (= lt!1835913 call!326756)))

(declare-fun call!326754 () Bool)

(assert (=> b!4675856 call!326754))

(declare-fun lt!1835922 () Unit!121617)

(assert (=> b!4675856 (= lt!1835922 lt!1835913)))

(declare-fun call!326755 () Bool)

(assert (=> b!4675856 call!326755))

(declare-fun lt!1835914 () Unit!121617)

(declare-fun Unit!121643 () Unit!121617)

(assert (=> b!4675856 (= lt!1835914 Unit!121643)))

(assert (=> b!4675857 (= e!2917550 lt!1835916)))

(declare-fun lt!1835917 () ListMap!4769)

(assert (=> b!4675857 (= lt!1835917 (+!2060 lt!1835727 (h!58366 (Cons!52169 lt!1835725 lt!1835726))))))

(assert (=> b!4675857 (= lt!1835916 (addToMapMapFromBucket!1190 (t!359433 (Cons!52169 lt!1835725 lt!1835726)) (+!2060 lt!1835727 (h!58366 (Cons!52169 lt!1835725 lt!1835726)))))))

(declare-fun lt!1835919 () Unit!121617)

(assert (=> b!4675857 (= lt!1835919 call!326756)))

(assert (=> b!4675857 (forall!11179 (toList!5406 lt!1835727) lambda!203645)))

(declare-fun lt!1835911 () Unit!121617)

(assert (=> b!4675857 (= lt!1835911 lt!1835919)))

(assert (=> b!4675857 (forall!11179 (toList!5406 lt!1835917) lambda!203646)))

(declare-fun lt!1835927 () Unit!121617)

(declare-fun Unit!121644 () Unit!121617)

(assert (=> b!4675857 (= lt!1835927 Unit!121644)))

(assert (=> b!4675857 (forall!11179 (t!359433 (Cons!52169 lt!1835725 lt!1835726)) lambda!203646)))

(declare-fun lt!1835910 () Unit!121617)

(declare-fun Unit!121645 () Unit!121617)

(assert (=> b!4675857 (= lt!1835910 Unit!121645)))

(declare-fun lt!1835923 () Unit!121617)

(declare-fun Unit!121646 () Unit!121617)

(assert (=> b!4675857 (= lt!1835923 Unit!121646)))

(declare-fun lt!1835926 () Unit!121617)

(declare-fun forallContained!3334 (List!52293 Int tuple2!53426) Unit!121617)

(assert (=> b!4675857 (= lt!1835926 (forallContained!3334 (toList!5406 lt!1835917) lambda!203646 (h!58366 (Cons!52169 lt!1835725 lt!1835726))))))

(assert (=> b!4675857 (contains!15318 lt!1835917 (_1!30007 (h!58366 (Cons!52169 lt!1835725 lt!1835726))))))

(declare-fun lt!1835921 () Unit!121617)

(declare-fun Unit!121647 () Unit!121617)

(assert (=> b!4675857 (= lt!1835921 Unit!121647)))

(assert (=> b!4675857 (contains!15318 lt!1835916 (_1!30007 (h!58366 (Cons!52169 lt!1835725 lt!1835726))))))

(declare-fun lt!1835915 () Unit!121617)

(declare-fun Unit!121648 () Unit!121617)

(assert (=> b!4675857 (= lt!1835915 Unit!121648)))

(assert (=> b!4675857 (forall!11179 (Cons!52169 lt!1835725 lt!1835726) lambda!203646)))

(declare-fun lt!1835908 () Unit!121617)

(declare-fun Unit!121649 () Unit!121617)

(assert (=> b!4675857 (= lt!1835908 Unit!121649)))

(assert (=> b!4675857 call!326755))

(declare-fun lt!1835925 () Unit!121617)

(declare-fun Unit!121650 () Unit!121617)

(assert (=> b!4675857 (= lt!1835925 Unit!121650)))

(declare-fun lt!1835920 () Unit!121617)

(declare-fun Unit!121651 () Unit!121617)

(assert (=> b!4675857 (= lt!1835920 Unit!121651)))

(declare-fun lt!1835912 () Unit!121617)

(declare-fun addForallContainsKeyThenBeforeAdding!649 (ListMap!4769 ListMap!4769 K!13545 V!13791) Unit!121617)

(assert (=> b!4675857 (= lt!1835912 (addForallContainsKeyThenBeforeAdding!649 lt!1835727 lt!1835916 (_1!30007 (h!58366 (Cons!52169 lt!1835725 lt!1835726))) (_2!30007 (h!58366 (Cons!52169 lt!1835725 lt!1835726)))))))

(assert (=> b!4675857 call!326754))

(declare-fun lt!1835918 () Unit!121617)

(assert (=> b!4675857 (= lt!1835918 lt!1835912)))

(assert (=> b!4675857 (forall!11179 (toList!5406 lt!1835727) lambda!203646)))

(declare-fun lt!1835924 () Unit!121617)

(declare-fun Unit!121652 () Unit!121617)

(assert (=> b!4675857 (= lt!1835924 Unit!121652)))

(declare-fun res!1969316 () Bool)

(assert (=> b!4675857 (= res!1969316 (forall!11179 (Cons!52169 lt!1835725 lt!1835726) lambda!203646))))

(assert (=> b!4675857 (=> (not res!1969316) (not e!2917552))))

(assert (=> b!4675857 e!2917552))

(declare-fun lt!1835909 () Unit!121617)

(declare-fun Unit!121653 () Unit!121617)

(assert (=> b!4675857 (= lt!1835909 Unit!121653)))

(declare-fun b!4675858 () Bool)

(declare-fun invariantList!1362 (List!52293) Bool)

(assert (=> b!4675858 (= e!2917551 (invariantList!1362 (toList!5406 lt!1835907)))))

(declare-fun bm!326749 () Bool)

(assert (=> bm!326749 (= call!326755 (forall!11179 (ite c!800146 (toList!5406 lt!1835727) (toList!5406 lt!1835917)) (ite c!800146 lambda!203644 lambda!203646)))))

(declare-fun bm!326750 () Bool)

(assert (=> bm!326750 (= call!326754 (forall!11179 (toList!5406 lt!1835727) (ite c!800146 lambda!203644 lambda!203646)))))

(declare-fun bm!326751 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!650 (ListMap!4769) Unit!121617)

(assert (=> bm!326751 (= call!326756 (lemmaContainsAllItsOwnKeys!650 lt!1835727))))

(assert (= (and d!1486435 c!800146) b!4675856))

(assert (= (and d!1486435 (not c!800146)) b!4675857))

(assert (= (and b!4675857 res!1969316) b!4675854))

(assert (= (or b!4675856 b!4675857) bm!326751))

(assert (= (or b!4675856 b!4675857) bm!326750))

(assert (= (or b!4675856 b!4675857) bm!326749))

(assert (= (and d!1486435 res!1969315) b!4675855))

(assert (= (and b!4675855 res!1969314) b!4675858))

(declare-fun m!5569603 () Bool)

(assert (=> bm!326749 m!5569603))

(declare-fun m!5569605 () Bool)

(assert (=> bm!326751 m!5569605))

(declare-fun m!5569607 () Bool)

(assert (=> d!1486435 m!5569607))

(declare-fun m!5569609 () Bool)

(assert (=> d!1486435 m!5569609))

(declare-fun m!5569611 () Bool)

(assert (=> b!4675854 m!5569611))

(declare-fun m!5569613 () Bool)

(assert (=> bm!326750 m!5569613))

(declare-fun m!5569615 () Bool)

(assert (=> b!4675857 m!5569615))

(assert (=> b!4675857 m!5569615))

(declare-fun m!5569617 () Bool)

(assert (=> b!4675857 m!5569617))

(declare-fun m!5569619 () Bool)

(assert (=> b!4675857 m!5569619))

(assert (=> b!4675857 m!5569619))

(declare-fun m!5569621 () Bool)

(assert (=> b!4675857 m!5569621))

(assert (=> b!4675857 m!5569611))

(declare-fun m!5569623 () Bool)

(assert (=> b!4675857 m!5569623))

(declare-fun m!5569625 () Bool)

(assert (=> b!4675857 m!5569625))

(declare-fun m!5569627 () Bool)

(assert (=> b!4675857 m!5569627))

(declare-fun m!5569629 () Bool)

(assert (=> b!4675857 m!5569629))

(declare-fun m!5569631 () Bool)

(assert (=> b!4675857 m!5569631))

(declare-fun m!5569633 () Bool)

(assert (=> b!4675857 m!5569633))

(declare-fun m!5569635 () Bool)

(assert (=> b!4675855 m!5569635))

(declare-fun m!5569637 () Bool)

(assert (=> b!4675858 m!5569637))

(assert (=> b!4675757 d!1486435))

(declare-fun d!1486473 () Bool)

(assert (=> d!1486473 (eq!947 (addToMapMapFromBucket!1190 (Cons!52169 lt!1835725 lt!1835726) lt!1835727) (+!2060 (addToMapMapFromBucket!1190 lt!1835726 lt!1835727) lt!1835725))))

(declare-fun lt!1835967 () Unit!121617)

(declare-fun choose!32350 (tuple2!53426 List!52293 ListMap!4769) Unit!121617)

(assert (=> d!1486473 (= lt!1835967 (choose!32350 lt!1835725 lt!1835726 lt!1835727))))

(assert (=> d!1486473 (noDuplicateKeys!1758 lt!1835726)))

(assert (=> d!1486473 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!196 lt!1835725 lt!1835726 lt!1835727) lt!1835967)))

(declare-fun bs!1079890 () Bool)

(assert (= bs!1079890 d!1486473))

(assert (=> bs!1079890 m!5569419))

(assert (=> bs!1079890 m!5569413))

(assert (=> bs!1079890 m!5569419))

(declare-fun m!5569663 () Bool)

(assert (=> bs!1079890 m!5569663))

(declare-fun m!5569665 () Bool)

(assert (=> bs!1079890 m!5569665))

(assert (=> bs!1079890 m!5569413))

(assert (=> bs!1079890 m!5569663))

(declare-fun m!5569667 () Bool)

(assert (=> bs!1079890 m!5569667))

(declare-fun m!5569669 () Bool)

(assert (=> bs!1079890 m!5569669))

(assert (=> b!4675757 d!1486473))

(declare-fun d!1486479 () Bool)

(declare-fun e!2917566 () Bool)

(assert (=> d!1486479 e!2917566))

(declare-fun res!1969335 () Bool)

(assert (=> d!1486479 (=> (not res!1969335) (not e!2917566))))

(declare-fun lt!1835978 () ListMap!4769)

(assert (=> d!1486479 (= res!1969335 (contains!15318 lt!1835978 (_1!30007 (h!58366 oldBucket!34))))))

(declare-fun lt!1835981 () List!52293)

(assert (=> d!1486479 (= lt!1835978 (ListMap!4770 lt!1835981))))

(declare-fun lt!1835979 () Unit!121617)

(declare-fun lt!1835980 () Unit!121617)

(assert (=> d!1486479 (= lt!1835979 lt!1835980)))

(declare-datatypes ((Option!11957 0))(
  ( (None!11956) (Some!11956 (v!46319 V!13791)) )
))
(declare-fun getValueByKey!1705 (List!52293 K!13545) Option!11957)

(assert (=> d!1486479 (= (getValueByKey!1705 lt!1835981 (_1!30007 (h!58366 oldBucket!34))) (Some!11956 (_2!30007 (h!58366 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!963 (List!52293 K!13545 V!13791) Unit!121617)

(assert (=> d!1486479 (= lt!1835980 (lemmaContainsTupThenGetReturnValue!963 lt!1835981 (_1!30007 (h!58366 oldBucket!34)) (_2!30007 (h!58366 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!471 (List!52293 K!13545 V!13791) List!52293)

(assert (=> d!1486479 (= lt!1835981 (insertNoDuplicatedKeys!471 (toList!5406 lt!1835728) (_1!30007 (h!58366 oldBucket!34)) (_2!30007 (h!58366 oldBucket!34))))))

(assert (=> d!1486479 (= (+!2060 lt!1835728 (h!58366 oldBucket!34)) lt!1835978)))

(declare-fun b!4675884 () Bool)

(declare-fun res!1969334 () Bool)

(assert (=> b!4675884 (=> (not res!1969334) (not e!2917566))))

(assert (=> b!4675884 (= res!1969334 (= (getValueByKey!1705 (toList!5406 lt!1835978) (_1!30007 (h!58366 oldBucket!34))) (Some!11956 (_2!30007 (h!58366 oldBucket!34)))))))

(declare-fun b!4675885 () Bool)

(declare-fun contains!15320 (List!52293 tuple2!53426) Bool)

(assert (=> b!4675885 (= e!2917566 (contains!15320 (toList!5406 lt!1835978) (h!58366 oldBucket!34)))))

(assert (= (and d!1486479 res!1969335) b!4675884))

(assert (= (and b!4675884 res!1969334) b!4675885))

(declare-fun m!5569731 () Bool)

(assert (=> d!1486479 m!5569731))

(declare-fun m!5569733 () Bool)

(assert (=> d!1486479 m!5569733))

(declare-fun m!5569735 () Bool)

(assert (=> d!1486479 m!5569735))

(declare-fun m!5569737 () Bool)

(assert (=> d!1486479 m!5569737))

(declare-fun m!5569739 () Bool)

(assert (=> b!4675884 m!5569739))

(declare-fun m!5569741 () Bool)

(assert (=> b!4675885 m!5569741))

(assert (=> b!4675757 d!1486479))

(declare-fun d!1486493 () Bool)

(assert (=> d!1486493 (= (head!9808 oldBucket!34) (h!58366 oldBucket!34))))

(assert (=> b!4675757 d!1486493))

(declare-fun d!1486495 () Bool)

(declare-fun res!1969340 () Bool)

(declare-fun e!2917575 () Bool)

(assert (=> d!1486495 (=> res!1969340 e!2917575)))

(assert (=> d!1486495 (= res!1969340 ((_ is Nil!52170) (t!359434 (toList!5405 lm!2023))))))

(assert (=> d!1486495 (= (forall!11177 (t!359434 (toList!5405 lm!2023)) lambda!203565) e!2917575)))

(declare-fun b!4675898 () Bool)

(declare-fun e!2917576 () Bool)

(assert (=> b!4675898 (= e!2917575 e!2917576)))

(declare-fun res!1969341 () Bool)

(assert (=> b!4675898 (=> (not res!1969341) (not e!2917576))))

(declare-fun dynLambda!21664 (Int tuple2!53428) Bool)

(assert (=> b!4675898 (= res!1969341 (dynLambda!21664 lambda!203565 (h!58367 (t!359434 (toList!5405 lm!2023)))))))

(declare-fun b!4675899 () Bool)

(assert (=> b!4675899 (= e!2917576 (forall!11177 (t!359434 (t!359434 (toList!5405 lm!2023))) lambda!203565))))

(assert (= (and d!1486495 (not res!1969340)) b!4675898))

(assert (= (and b!4675898 res!1969341) b!4675899))

(declare-fun b_lambda!176553 () Bool)

(assert (=> (not b_lambda!176553) (not b!4675898)))

(declare-fun m!5569743 () Bool)

(assert (=> b!4675898 m!5569743))

(declare-fun m!5569749 () Bool)

(assert (=> b!4675899 m!5569749))

(assert (=> b!4675757 d!1486495))

(declare-fun d!1486497 () Bool)

(declare-fun e!2917579 () Bool)

(assert (=> d!1486497 e!2917579))

(declare-fun res!1969343 () Bool)

(assert (=> d!1486497 (=> (not res!1969343) (not e!2917579))))

(declare-fun lt!1835985 () ListMap!4769)

(assert (=> d!1486497 (= res!1969343 (contains!15318 lt!1835985 (_1!30007 lt!1835725)))))

(declare-fun lt!1835988 () List!52293)

(assert (=> d!1486497 (= lt!1835985 (ListMap!4770 lt!1835988))))

(declare-fun lt!1835986 () Unit!121617)

(declare-fun lt!1835987 () Unit!121617)

(assert (=> d!1486497 (= lt!1835986 lt!1835987)))

(assert (=> d!1486497 (= (getValueByKey!1705 lt!1835988 (_1!30007 lt!1835725)) (Some!11956 (_2!30007 lt!1835725)))))

(assert (=> d!1486497 (= lt!1835987 (lemmaContainsTupThenGetReturnValue!963 lt!1835988 (_1!30007 lt!1835725) (_2!30007 lt!1835725)))))

(assert (=> d!1486497 (= lt!1835988 (insertNoDuplicatedKeys!471 (toList!5406 lt!1835728) (_1!30007 lt!1835725) (_2!30007 lt!1835725)))))

(assert (=> d!1486497 (= (+!2060 lt!1835728 lt!1835725) lt!1835985)))

(declare-fun b!4675904 () Bool)

(declare-fun res!1969342 () Bool)

(assert (=> b!4675904 (=> (not res!1969342) (not e!2917579))))

(assert (=> b!4675904 (= res!1969342 (= (getValueByKey!1705 (toList!5406 lt!1835985) (_1!30007 lt!1835725)) (Some!11956 (_2!30007 lt!1835725))))))

(declare-fun b!4675905 () Bool)

(assert (=> b!4675905 (= e!2917579 (contains!15320 (toList!5406 lt!1835985) lt!1835725))))

(assert (= (and d!1486497 res!1969343) b!4675904))

(assert (= (and b!4675904 res!1969342) b!4675905))

(declare-fun m!5569751 () Bool)

(assert (=> d!1486497 m!5569751))

(declare-fun m!5569753 () Bool)

(assert (=> d!1486497 m!5569753))

(declare-fun m!5569755 () Bool)

(assert (=> d!1486497 m!5569755))

(declare-fun m!5569757 () Bool)

(assert (=> d!1486497 m!5569757))

(declare-fun m!5569759 () Bool)

(assert (=> b!4675904 m!5569759))

(declare-fun m!5569761 () Bool)

(assert (=> b!4675905 m!5569761))

(assert (=> b!4675757 d!1486497))

(declare-fun d!1486499 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9085 (List!52293) (InoxSet tuple2!53426))

(assert (=> d!1486499 (= (eq!947 (addToMapMapFromBucket!1190 (Cons!52169 lt!1835725 lt!1835726) lt!1835727) (+!2060 lt!1835728 lt!1835725)) (= (content!9085 (toList!5406 (addToMapMapFromBucket!1190 (Cons!52169 lt!1835725 lt!1835726) lt!1835727))) (content!9085 (toList!5406 (+!2060 lt!1835728 lt!1835725)))))))

(declare-fun bs!1079922 () Bool)

(assert (= bs!1079922 d!1486499))

(declare-fun m!5569765 () Bool)

(assert (=> bs!1079922 m!5569765))

(declare-fun m!5569767 () Bool)

(assert (=> bs!1079922 m!5569767))

(assert (=> b!4675757 d!1486499))

(declare-fun d!1486505 () Bool)

(assert (=> d!1486505 (= (tail!8360 oldBucket!34) (t!359433 oldBucket!34))))

(assert (=> b!4675746 d!1486505))

(declare-fun bs!1079923 () Bool)

(declare-fun d!1486507 () Bool)

(assert (= bs!1079923 (and d!1486507 start!471920)))

(declare-fun lambda!203657 () Int)

(assert (=> bs!1079923 (not (= lambda!203657 lambda!203565))))

(assert (=> d!1486507 true))

(assert (=> d!1486507 (= (allKeysSameHashInMap!1672 lm!2023 hashF!1323) (forall!11177 (toList!5405 lm!2023) lambda!203657))))

(declare-fun bs!1079924 () Bool)

(assert (= bs!1079924 d!1486507))

(declare-fun m!5569769 () Bool)

(assert (=> bs!1079924 m!5569769))

(assert (=> b!4675747 d!1486507))

(declare-fun bs!1079925 () Bool)

(declare-fun b!4675921 () Bool)

(assert (= bs!1079925 (and b!4675921 b!4675856)))

(declare-fun lambda!203658 () Int)

(assert (=> bs!1079925 (= lambda!203658 lambda!203644)))

(declare-fun bs!1079926 () Bool)

(assert (= bs!1079926 (and b!4675921 b!4675857)))

(assert (=> bs!1079926 (= lambda!203658 lambda!203645)))

(assert (=> bs!1079926 (= (= lt!1835727 lt!1835916) (= lambda!203658 lambda!203646))))

(declare-fun bs!1079927 () Bool)

(assert (= bs!1079927 (and b!4675921 d!1486435)))

(assert (=> bs!1079927 (= (= lt!1835727 lt!1835907) (= lambda!203658 lambda!203647))))

(assert (=> b!4675921 true))

(declare-fun bs!1079928 () Bool)

(declare-fun b!4675922 () Bool)

(assert (= bs!1079928 (and b!4675922 b!4675857)))

(declare-fun lambda!203659 () Int)

(assert (=> bs!1079928 (= (= lt!1835727 lt!1835916) (= lambda!203659 lambda!203646))))

(declare-fun bs!1079929 () Bool)

(assert (= bs!1079929 (and b!4675922 b!4675856)))

(assert (=> bs!1079929 (= lambda!203659 lambda!203644)))

(declare-fun bs!1079930 () Bool)

(assert (= bs!1079930 (and b!4675922 b!4675921)))

(assert (=> bs!1079930 (= lambda!203659 lambda!203658)))

(declare-fun bs!1079931 () Bool)

(assert (= bs!1079931 (and b!4675922 d!1486435)))

(assert (=> bs!1079931 (= (= lt!1835727 lt!1835907) (= lambda!203659 lambda!203647))))

(assert (=> bs!1079928 (= lambda!203659 lambda!203645)))

(assert (=> b!4675922 true))

(declare-fun lt!1835998 () ListMap!4769)

(declare-fun lambda!203660 () Int)

(assert (=> bs!1079928 (= (= lt!1835998 lt!1835916) (= lambda!203660 lambda!203646))))

(assert (=> bs!1079929 (= (= lt!1835998 lt!1835727) (= lambda!203660 lambda!203644))))

(assert (=> bs!1079930 (= (= lt!1835998 lt!1835727) (= lambda!203660 lambda!203658))))

(assert (=> bs!1079931 (= (= lt!1835998 lt!1835907) (= lambda!203660 lambda!203647))))

(assert (=> bs!1079928 (= (= lt!1835998 lt!1835727) (= lambda!203660 lambda!203645))))

(assert (=> b!4675922 (= (= lt!1835998 lt!1835727) (= lambda!203660 lambda!203659))))

(assert (=> b!4675922 true))

(declare-fun bs!1079932 () Bool)

(declare-fun d!1486509 () Bool)

(assert (= bs!1079932 (and d!1486509 b!4675857)))

(declare-fun lt!1835989 () ListMap!4769)

(declare-fun lambda!203661 () Int)

(assert (=> bs!1079932 (= (= lt!1835989 lt!1835916) (= lambda!203661 lambda!203646))))

(declare-fun bs!1079933 () Bool)

(assert (= bs!1079933 (and d!1486509 b!4675856)))

(assert (=> bs!1079933 (= (= lt!1835989 lt!1835727) (= lambda!203661 lambda!203644))))

(declare-fun bs!1079934 () Bool)

(assert (= bs!1079934 (and d!1486509 b!4675921)))

(assert (=> bs!1079934 (= (= lt!1835989 lt!1835727) (= lambda!203661 lambda!203658))))

(declare-fun bs!1079935 () Bool)

(assert (= bs!1079935 (and d!1486509 b!4675922)))

(assert (=> bs!1079935 (= (= lt!1835989 lt!1835998) (= lambda!203661 lambda!203660))))

(declare-fun bs!1079936 () Bool)

(assert (= bs!1079936 (and d!1486509 d!1486435)))

(assert (=> bs!1079936 (= (= lt!1835989 lt!1835907) (= lambda!203661 lambda!203647))))

(assert (=> bs!1079932 (= (= lt!1835989 lt!1835727) (= lambda!203661 lambda!203645))))

(assert (=> bs!1079935 (= (= lt!1835989 lt!1835727) (= lambda!203661 lambda!203659))))

(assert (=> d!1486509 true))

(declare-fun b!4675919 () Bool)

(declare-fun e!2917589 () Bool)

(assert (=> b!4675919 (= e!2917589 (forall!11179 (toList!5406 lt!1835727) lambda!203660))))

(declare-fun b!4675920 () Bool)

(declare-fun res!1969344 () Bool)

(declare-fun e!2917588 () Bool)

(assert (=> b!4675920 (=> (not res!1969344) (not e!2917588))))

(assert (=> b!4675920 (= res!1969344 (forall!11179 (toList!5406 lt!1835727) lambda!203661))))

(assert (=> d!1486509 e!2917588))

(declare-fun res!1969345 () Bool)

(assert (=> d!1486509 (=> (not res!1969345) (not e!2917588))))

(assert (=> d!1486509 (= res!1969345 (forall!11179 (_2!30008 (h!58367 (toList!5405 lm!2023))) lambda!203661))))

(declare-fun e!2917587 () ListMap!4769)

(assert (=> d!1486509 (= lt!1835989 e!2917587)))

(declare-fun c!800156 () Bool)

(assert (=> d!1486509 (= c!800156 ((_ is Nil!52169) (_2!30008 (h!58367 (toList!5405 lm!2023)))))))

(assert (=> d!1486509 (noDuplicateKeys!1758 (_2!30008 (h!58367 (toList!5405 lm!2023))))))

(assert (=> d!1486509 (= (addToMapMapFromBucket!1190 (_2!30008 (h!58367 (toList!5405 lm!2023))) lt!1835727) lt!1835989)))

(assert (=> b!4675921 (= e!2917587 lt!1835727)))

(declare-fun lt!1835995 () Unit!121617)

(declare-fun call!326762 () Unit!121617)

(assert (=> b!4675921 (= lt!1835995 call!326762)))

(declare-fun call!326760 () Bool)

(assert (=> b!4675921 call!326760))

(declare-fun lt!1836004 () Unit!121617)

(assert (=> b!4675921 (= lt!1836004 lt!1835995)))

(declare-fun call!326761 () Bool)

(assert (=> b!4675921 call!326761))

(declare-fun lt!1835996 () Unit!121617)

(declare-fun Unit!121665 () Unit!121617)

(assert (=> b!4675921 (= lt!1835996 Unit!121665)))

(assert (=> b!4675922 (= e!2917587 lt!1835998)))

(declare-fun lt!1835999 () ListMap!4769)

(assert (=> b!4675922 (= lt!1835999 (+!2060 lt!1835727 (h!58366 (_2!30008 (h!58367 (toList!5405 lm!2023))))))))

(assert (=> b!4675922 (= lt!1835998 (addToMapMapFromBucket!1190 (t!359433 (_2!30008 (h!58367 (toList!5405 lm!2023)))) (+!2060 lt!1835727 (h!58366 (_2!30008 (h!58367 (toList!5405 lm!2023)))))))))

(declare-fun lt!1836001 () Unit!121617)

(assert (=> b!4675922 (= lt!1836001 call!326762)))

(assert (=> b!4675922 (forall!11179 (toList!5406 lt!1835727) lambda!203659)))

(declare-fun lt!1835993 () Unit!121617)

(assert (=> b!4675922 (= lt!1835993 lt!1836001)))

(assert (=> b!4675922 (forall!11179 (toList!5406 lt!1835999) lambda!203660)))

(declare-fun lt!1836009 () Unit!121617)

(declare-fun Unit!121666 () Unit!121617)

(assert (=> b!4675922 (= lt!1836009 Unit!121666)))

(assert (=> b!4675922 (forall!11179 (t!359433 (_2!30008 (h!58367 (toList!5405 lm!2023)))) lambda!203660)))

(declare-fun lt!1835992 () Unit!121617)

(declare-fun Unit!121667 () Unit!121617)

(assert (=> b!4675922 (= lt!1835992 Unit!121667)))

(declare-fun lt!1836005 () Unit!121617)

(declare-fun Unit!121668 () Unit!121617)

(assert (=> b!4675922 (= lt!1836005 Unit!121668)))

(declare-fun lt!1836008 () Unit!121617)

(assert (=> b!4675922 (= lt!1836008 (forallContained!3334 (toList!5406 lt!1835999) lambda!203660 (h!58366 (_2!30008 (h!58367 (toList!5405 lm!2023))))))))

(assert (=> b!4675922 (contains!15318 lt!1835999 (_1!30007 (h!58366 (_2!30008 (h!58367 (toList!5405 lm!2023))))))))

(declare-fun lt!1836003 () Unit!121617)

(declare-fun Unit!121669 () Unit!121617)

(assert (=> b!4675922 (= lt!1836003 Unit!121669)))

(assert (=> b!4675922 (contains!15318 lt!1835998 (_1!30007 (h!58366 (_2!30008 (h!58367 (toList!5405 lm!2023))))))))

(declare-fun lt!1835997 () Unit!121617)

(declare-fun Unit!121670 () Unit!121617)

(assert (=> b!4675922 (= lt!1835997 Unit!121670)))

(assert (=> b!4675922 (forall!11179 (_2!30008 (h!58367 (toList!5405 lm!2023))) lambda!203660)))

(declare-fun lt!1835990 () Unit!121617)

(declare-fun Unit!121671 () Unit!121617)

(assert (=> b!4675922 (= lt!1835990 Unit!121671)))

(assert (=> b!4675922 call!326761))

(declare-fun lt!1836007 () Unit!121617)

(declare-fun Unit!121672 () Unit!121617)

(assert (=> b!4675922 (= lt!1836007 Unit!121672)))

(declare-fun lt!1836002 () Unit!121617)

(declare-fun Unit!121673 () Unit!121617)

(assert (=> b!4675922 (= lt!1836002 Unit!121673)))

(declare-fun lt!1835994 () Unit!121617)

(assert (=> b!4675922 (= lt!1835994 (addForallContainsKeyThenBeforeAdding!649 lt!1835727 lt!1835998 (_1!30007 (h!58366 (_2!30008 (h!58367 (toList!5405 lm!2023))))) (_2!30007 (h!58366 (_2!30008 (h!58367 (toList!5405 lm!2023)))))))))

(assert (=> b!4675922 call!326760))

(declare-fun lt!1836000 () Unit!121617)

(assert (=> b!4675922 (= lt!1836000 lt!1835994)))

(assert (=> b!4675922 (forall!11179 (toList!5406 lt!1835727) lambda!203660)))

(declare-fun lt!1836006 () Unit!121617)

(declare-fun Unit!121674 () Unit!121617)

(assert (=> b!4675922 (= lt!1836006 Unit!121674)))

(declare-fun res!1969346 () Bool)

(assert (=> b!4675922 (= res!1969346 (forall!11179 (_2!30008 (h!58367 (toList!5405 lm!2023))) lambda!203660))))

(assert (=> b!4675922 (=> (not res!1969346) (not e!2917589))))

(assert (=> b!4675922 e!2917589))

(declare-fun lt!1835991 () Unit!121617)

(declare-fun Unit!121675 () Unit!121617)

(assert (=> b!4675922 (= lt!1835991 Unit!121675)))

(declare-fun b!4675923 () Bool)

(assert (=> b!4675923 (= e!2917588 (invariantList!1362 (toList!5406 lt!1835989)))))

(declare-fun bm!326755 () Bool)

(assert (=> bm!326755 (= call!326761 (forall!11179 (ite c!800156 (toList!5406 lt!1835727) (toList!5406 lt!1835999)) (ite c!800156 lambda!203658 lambda!203660)))))

(declare-fun bm!326756 () Bool)

(assert (=> bm!326756 (= call!326760 (forall!11179 (toList!5406 lt!1835727) (ite c!800156 lambda!203658 lambda!203660)))))

(declare-fun bm!326757 () Bool)

(assert (=> bm!326757 (= call!326762 (lemmaContainsAllItsOwnKeys!650 lt!1835727))))

(assert (= (and d!1486509 c!800156) b!4675921))

(assert (= (and d!1486509 (not c!800156)) b!4675922))

(assert (= (and b!4675922 res!1969346) b!4675919))

(assert (= (or b!4675921 b!4675922) bm!326757))

(assert (= (or b!4675921 b!4675922) bm!326756))

(assert (= (or b!4675921 b!4675922) bm!326755))

(assert (= (and d!1486509 res!1969345) b!4675920))

(assert (= (and b!4675920 res!1969344) b!4675923))

(declare-fun m!5569771 () Bool)

(assert (=> bm!326755 m!5569771))

(assert (=> bm!326757 m!5569605))

(declare-fun m!5569773 () Bool)

(assert (=> d!1486509 m!5569773))

(declare-fun m!5569775 () Bool)

(assert (=> d!1486509 m!5569775))

(declare-fun m!5569777 () Bool)

(assert (=> b!4675919 m!5569777))

(declare-fun m!5569779 () Bool)

(assert (=> bm!326756 m!5569779))

(declare-fun m!5569781 () Bool)

(assert (=> b!4675922 m!5569781))

(assert (=> b!4675922 m!5569781))

(declare-fun m!5569783 () Bool)

(assert (=> b!4675922 m!5569783))

(declare-fun m!5569785 () Bool)

(assert (=> b!4675922 m!5569785))

(assert (=> b!4675922 m!5569785))

(declare-fun m!5569787 () Bool)

(assert (=> b!4675922 m!5569787))

(assert (=> b!4675922 m!5569777))

(declare-fun m!5569789 () Bool)

(assert (=> b!4675922 m!5569789))

(declare-fun m!5569791 () Bool)

(assert (=> b!4675922 m!5569791))

(declare-fun m!5569793 () Bool)

(assert (=> b!4675922 m!5569793))

(declare-fun m!5569795 () Bool)

(assert (=> b!4675922 m!5569795))

(declare-fun m!5569797 () Bool)

(assert (=> b!4675922 m!5569797))

(declare-fun m!5569799 () Bool)

(assert (=> b!4675922 m!5569799))

(declare-fun m!5569801 () Bool)

(assert (=> b!4675920 m!5569801))

(declare-fun m!5569803 () Bool)

(assert (=> b!4675923 m!5569803))

(assert (=> b!4675748 d!1486509))

(declare-fun bs!1079937 () Bool)

(declare-fun d!1486511 () Bool)

(assert (= bs!1079937 (and d!1486511 start!471920)))

(declare-fun lambda!203664 () Int)

(assert (=> bs!1079937 (= lambda!203664 lambda!203565)))

(declare-fun bs!1079938 () Bool)

(assert (= bs!1079938 (and d!1486511 d!1486507)))

(assert (=> bs!1079938 (not (= lambda!203664 lambda!203657))))

(declare-fun lt!1836012 () ListMap!4769)

(assert (=> d!1486511 (invariantList!1362 (toList!5406 lt!1836012))))

(declare-fun e!2917592 () ListMap!4769)

(assert (=> d!1486511 (= lt!1836012 e!2917592)))

(declare-fun c!800159 () Bool)

(assert (=> d!1486511 (= c!800159 ((_ is Cons!52170) (t!359434 (toList!5405 lm!2023))))))

(assert (=> d!1486511 (forall!11177 (t!359434 (toList!5405 lm!2023)) lambda!203664)))

(assert (=> d!1486511 (= (extractMap!1784 (t!359434 (toList!5405 lm!2023))) lt!1836012)))

(declare-fun b!4675928 () Bool)

(assert (=> b!4675928 (= e!2917592 (addToMapMapFromBucket!1190 (_2!30008 (h!58367 (t!359434 (toList!5405 lm!2023)))) (extractMap!1784 (t!359434 (t!359434 (toList!5405 lm!2023))))))))

(declare-fun b!4675929 () Bool)

(assert (=> b!4675929 (= e!2917592 (ListMap!4770 Nil!52169))))

(assert (= (and d!1486511 c!800159) b!4675928))

(assert (= (and d!1486511 (not c!800159)) b!4675929))

(declare-fun m!5569805 () Bool)

(assert (=> d!1486511 m!5569805))

(declare-fun m!5569807 () Bool)

(assert (=> d!1486511 m!5569807))

(declare-fun m!5569809 () Bool)

(assert (=> b!4675928 m!5569809))

(assert (=> b!4675928 m!5569809))

(declare-fun m!5569811 () Bool)

(assert (=> b!4675928 m!5569811))

(assert (=> b!4675748 d!1486511))

(declare-fun d!1486513 () Bool)

(declare-fun tail!8363 (List!52294) List!52294)

(assert (=> d!1486513 (= (tail!8361 lm!2023) (ListLongMap!3936 (tail!8363 (toList!5405 lm!2023))))))

(declare-fun bs!1079939 () Bool)

(assert (= bs!1079939 d!1486513))

(declare-fun m!5569813 () Bool)

(assert (=> bs!1079939 m!5569813))

(assert (=> b!4675748 d!1486513))

(declare-fun b!4675948 () Bool)

(declare-fun e!2917609 () Bool)

(declare-datatypes ((List!52296 0))(
  ( (Nil!52172) (Cons!52172 (h!58371 K!13545) (t!359438 List!52296)) )
))
(declare-fun contains!15322 (List!52296 K!13545) Bool)

(declare-fun keys!18569 (ListMap!4769) List!52296)

(assert (=> b!4675948 (= e!2917609 (not (contains!15322 (keys!18569 lt!1835723) key!4653)))))

(declare-fun b!4675949 () Bool)

(assert (=> b!4675949 false))

(declare-fun lt!1836035 () Unit!121617)

(declare-fun lt!1836031 () Unit!121617)

(assert (=> b!4675949 (= lt!1836035 lt!1836031)))

(declare-fun containsKey!2894 (List!52293 K!13545) Bool)

(assert (=> b!4675949 (containsKey!2894 (toList!5406 lt!1835723) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!801 (List!52293 K!13545) Unit!121617)

(assert (=> b!4675949 (= lt!1836031 (lemmaInGetKeysListThenContainsKey!801 (toList!5406 lt!1835723) key!4653))))

(declare-fun e!2917610 () Unit!121617)

(declare-fun Unit!121676 () Unit!121617)

(assert (=> b!4675949 (= e!2917610 Unit!121676)))

(declare-fun b!4675950 () Bool)

(declare-fun e!2917608 () List!52296)

(declare-fun getKeysList!802 (List!52293) List!52296)

(assert (=> b!4675950 (= e!2917608 (getKeysList!802 (toList!5406 lt!1835723)))))

(declare-fun b!4675951 () Bool)

(declare-fun e!2917605 () Bool)

(assert (=> b!4675951 (= e!2917605 (contains!15322 (keys!18569 lt!1835723) key!4653))))

(declare-fun b!4675952 () Bool)

(declare-fun Unit!121677 () Unit!121617)

(assert (=> b!4675952 (= e!2917610 Unit!121677)))

(declare-fun b!4675953 () Bool)

(declare-fun e!2917606 () Bool)

(assert (=> b!4675953 (= e!2917606 e!2917605)))

(declare-fun res!1969354 () Bool)

(assert (=> b!4675953 (=> (not res!1969354) (not e!2917605))))

(declare-fun isDefined!9212 (Option!11957) Bool)

(assert (=> b!4675953 (= res!1969354 (isDefined!9212 (getValueByKey!1705 (toList!5406 lt!1835723) key!4653)))))

(declare-fun d!1486515 () Bool)

(assert (=> d!1486515 e!2917606))

(declare-fun res!1969355 () Bool)

(assert (=> d!1486515 (=> res!1969355 e!2917606)))

(assert (=> d!1486515 (= res!1969355 e!2917609)))

(declare-fun res!1969353 () Bool)

(assert (=> d!1486515 (=> (not res!1969353) (not e!2917609))))

(declare-fun lt!1836034 () Bool)

(assert (=> d!1486515 (= res!1969353 (not lt!1836034))))

(declare-fun lt!1836033 () Bool)

(assert (=> d!1486515 (= lt!1836034 lt!1836033)))

(declare-fun lt!1836029 () Unit!121617)

(declare-fun e!2917607 () Unit!121617)

(assert (=> d!1486515 (= lt!1836029 e!2917607)))

(declare-fun c!800168 () Bool)

(assert (=> d!1486515 (= c!800168 lt!1836033)))

(assert (=> d!1486515 (= lt!1836033 (containsKey!2894 (toList!5406 lt!1835723) key!4653))))

(assert (=> d!1486515 (= (contains!15318 lt!1835723 key!4653) lt!1836034)))

(declare-fun bm!326760 () Bool)

(declare-fun call!326765 () Bool)

(assert (=> bm!326760 (= call!326765 (contains!15322 e!2917608 key!4653))))

(declare-fun c!800167 () Bool)

(assert (=> bm!326760 (= c!800167 c!800168)))

(declare-fun b!4675954 () Bool)

(assert (=> b!4675954 (= e!2917607 e!2917610)))

(declare-fun c!800166 () Bool)

(assert (=> b!4675954 (= c!800166 call!326765)))

(declare-fun b!4675955 () Bool)

(declare-fun lt!1836036 () Unit!121617)

(assert (=> b!4675955 (= e!2917607 lt!1836036)))

(declare-fun lt!1836030 () Unit!121617)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1597 (List!52293 K!13545) Unit!121617)

(assert (=> b!4675955 (= lt!1836030 (lemmaContainsKeyImpliesGetValueByKeyDefined!1597 (toList!5406 lt!1835723) key!4653))))

(assert (=> b!4675955 (isDefined!9212 (getValueByKey!1705 (toList!5406 lt!1835723) key!4653))))

(declare-fun lt!1836032 () Unit!121617)

(assert (=> b!4675955 (= lt!1836032 lt!1836030)))

(declare-fun lemmaInListThenGetKeysListContains!797 (List!52293 K!13545) Unit!121617)

(assert (=> b!4675955 (= lt!1836036 (lemmaInListThenGetKeysListContains!797 (toList!5406 lt!1835723) key!4653))))

(assert (=> b!4675955 call!326765))

(declare-fun b!4675956 () Bool)

(assert (=> b!4675956 (= e!2917608 (keys!18569 lt!1835723))))

(assert (= (and d!1486515 c!800168) b!4675955))

(assert (= (and d!1486515 (not c!800168)) b!4675954))

(assert (= (and b!4675954 c!800166) b!4675949))

(assert (= (and b!4675954 (not c!800166)) b!4675952))

(assert (= (or b!4675955 b!4675954) bm!326760))

(assert (= (and bm!326760 c!800167) b!4675950))

(assert (= (and bm!326760 (not c!800167)) b!4675956))

(assert (= (and d!1486515 res!1969353) b!4675948))

(assert (= (and d!1486515 (not res!1969355)) b!4675953))

(assert (= (and b!4675953 res!1969354) b!4675951))

(declare-fun m!5569815 () Bool)

(assert (=> b!4675955 m!5569815))

(declare-fun m!5569817 () Bool)

(assert (=> b!4675955 m!5569817))

(assert (=> b!4675955 m!5569817))

(declare-fun m!5569819 () Bool)

(assert (=> b!4675955 m!5569819))

(declare-fun m!5569821 () Bool)

(assert (=> b!4675955 m!5569821))

(declare-fun m!5569823 () Bool)

(assert (=> b!4675949 m!5569823))

(declare-fun m!5569825 () Bool)

(assert (=> b!4675949 m!5569825))

(declare-fun m!5569827 () Bool)

(assert (=> b!4675948 m!5569827))

(assert (=> b!4675948 m!5569827))

(declare-fun m!5569829 () Bool)

(assert (=> b!4675948 m!5569829))

(assert (=> d!1486515 m!5569823))

(assert (=> b!4675953 m!5569817))

(assert (=> b!4675953 m!5569817))

(assert (=> b!4675953 m!5569819))

(assert (=> b!4675956 m!5569827))

(declare-fun m!5569831 () Bool)

(assert (=> b!4675950 m!5569831))

(declare-fun m!5569833 () Bool)

(assert (=> bm!326760 m!5569833))

(assert (=> b!4675951 m!5569827))

(assert (=> b!4675951 m!5569827))

(assert (=> b!4675951 m!5569829))

(assert (=> b!4675754 d!1486515))

(declare-fun bs!1079940 () Bool)

(declare-fun d!1486517 () Bool)

(assert (= bs!1079940 (and d!1486517 start!471920)))

(declare-fun lambda!203665 () Int)

(assert (=> bs!1079940 (= lambda!203665 lambda!203565)))

(declare-fun bs!1079941 () Bool)

(assert (= bs!1079941 (and d!1486517 d!1486507)))

(assert (=> bs!1079941 (not (= lambda!203665 lambda!203657))))

(declare-fun bs!1079942 () Bool)

(assert (= bs!1079942 (and d!1486517 d!1486511)))

(assert (=> bs!1079942 (= lambda!203665 lambda!203664)))

(declare-fun lt!1836037 () ListMap!4769)

(assert (=> d!1486517 (invariantList!1362 (toList!5406 lt!1836037))))

(declare-fun e!2917611 () ListMap!4769)

(assert (=> d!1486517 (= lt!1836037 e!2917611)))

(declare-fun c!800169 () Bool)

(assert (=> d!1486517 (= c!800169 ((_ is Cons!52170) (toList!5405 lm!2023)))))

(assert (=> d!1486517 (forall!11177 (toList!5405 lm!2023) lambda!203665)))

(assert (=> d!1486517 (= (extractMap!1784 (toList!5405 lm!2023)) lt!1836037)))

(declare-fun b!4675957 () Bool)

(assert (=> b!4675957 (= e!2917611 (addToMapMapFromBucket!1190 (_2!30008 (h!58367 (toList!5405 lm!2023))) (extractMap!1784 (t!359434 (toList!5405 lm!2023)))))))

(declare-fun b!4675958 () Bool)

(assert (=> b!4675958 (= e!2917611 (ListMap!4770 Nil!52169))))

(assert (= (and d!1486517 c!800169) b!4675957))

(assert (= (and d!1486517 (not c!800169)) b!4675958))

(declare-fun m!5569835 () Bool)

(assert (=> d!1486517 m!5569835))

(declare-fun m!5569837 () Bool)

(assert (=> d!1486517 m!5569837))

(assert (=> b!4675957 m!5569425))

(assert (=> b!4675957 m!5569425))

(declare-fun m!5569839 () Bool)

(assert (=> b!4675957 m!5569839))

(assert (=> b!4675754 d!1486517))

(declare-fun d!1486519 () Bool)

(declare-fun res!1969360 () Bool)

(declare-fun e!2917616 () Bool)

(assert (=> d!1486519 (=> res!1969360 e!2917616)))

(assert (=> d!1486519 (= res!1969360 (not ((_ is Cons!52169) oldBucket!34)))))

(assert (=> d!1486519 (= (noDuplicateKeys!1758 oldBucket!34) e!2917616)))

(declare-fun b!4675963 () Bool)

(declare-fun e!2917617 () Bool)

(assert (=> b!4675963 (= e!2917616 e!2917617)))

(declare-fun res!1969361 () Bool)

(assert (=> b!4675963 (=> (not res!1969361) (not e!2917617))))

(declare-fun containsKey!2895 (List!52293 K!13545) Bool)

(assert (=> b!4675963 (= res!1969361 (not (containsKey!2895 (t!359433 oldBucket!34) (_1!30007 (h!58366 oldBucket!34)))))))

(declare-fun b!4675964 () Bool)

(assert (=> b!4675964 (= e!2917617 (noDuplicateKeys!1758 (t!359433 oldBucket!34)))))

(assert (= (and d!1486519 (not res!1969360)) b!4675963))

(assert (= (and b!4675963 res!1969361) b!4675964))

(declare-fun m!5569841 () Bool)

(assert (=> b!4675963 m!5569841))

(declare-fun m!5569843 () Bool)

(assert (=> b!4675964 m!5569843))

(assert (=> b!4675755 d!1486519))

(declare-fun bs!1079943 () Bool)

(declare-fun d!1486521 () Bool)

(assert (= bs!1079943 (and d!1486521 b!4675857)))

(declare-fun lambda!203668 () Int)

(assert (=> bs!1079943 (not (= lambda!203668 lambda!203646))))

(declare-fun bs!1079944 () Bool)

(assert (= bs!1079944 (and d!1486521 b!4675856)))

(assert (=> bs!1079944 (not (= lambda!203668 lambda!203644))))

(declare-fun bs!1079945 () Bool)

(assert (= bs!1079945 (and d!1486521 b!4675921)))

(assert (=> bs!1079945 (not (= lambda!203668 lambda!203658))))

(declare-fun bs!1079946 () Bool)

(assert (= bs!1079946 (and d!1486521 d!1486509)))

(assert (=> bs!1079946 (not (= lambda!203668 lambda!203661))))

(declare-fun bs!1079947 () Bool)

(assert (= bs!1079947 (and d!1486521 b!4675922)))

(assert (=> bs!1079947 (not (= lambda!203668 lambda!203660))))

(declare-fun bs!1079948 () Bool)

(assert (= bs!1079948 (and d!1486521 d!1486435)))

(assert (=> bs!1079948 (not (= lambda!203668 lambda!203647))))

(assert (=> bs!1079943 (not (= lambda!203668 lambda!203645))))

(assert (=> bs!1079947 (not (= lambda!203668 lambda!203659))))

(assert (=> d!1486521 true))

(assert (=> d!1486521 true))

(assert (=> d!1486521 (= (allKeysSameHash!1584 newBucket!218 hash!405 hashF!1323) (forall!11179 newBucket!218 lambda!203668))))

(declare-fun bs!1079949 () Bool)

(assert (= bs!1079949 d!1486521))

(declare-fun m!5569845 () Bool)

(assert (=> bs!1079949 m!5569845))

(assert (=> b!4675745 d!1486521))

(declare-fun bs!1079950 () Bool)

(declare-fun d!1486523 () Bool)

(assert (= bs!1079950 (and d!1486523 b!4675857)))

(declare-fun lambda!203669 () Int)

(assert (=> bs!1079950 (not (= lambda!203669 lambda!203646))))

(declare-fun bs!1079951 () Bool)

(assert (= bs!1079951 (and d!1486523 b!4675856)))

(assert (=> bs!1079951 (not (= lambda!203669 lambda!203644))))

(declare-fun bs!1079952 () Bool)

(assert (= bs!1079952 (and d!1486523 b!4675921)))

(assert (=> bs!1079952 (not (= lambda!203669 lambda!203658))))

(declare-fun bs!1079953 () Bool)

(assert (= bs!1079953 (and d!1486523 d!1486509)))

(assert (=> bs!1079953 (not (= lambda!203669 lambda!203661))))

(declare-fun bs!1079954 () Bool)

(assert (= bs!1079954 (and d!1486523 b!4675922)))

(assert (=> bs!1079954 (not (= lambda!203669 lambda!203660))))

(declare-fun bs!1079955 () Bool)

(assert (= bs!1079955 (and d!1486523 d!1486435)))

(assert (=> bs!1079955 (not (= lambda!203669 lambda!203647))))

(assert (=> bs!1079950 (not (= lambda!203669 lambda!203645))))

(assert (=> bs!1079954 (not (= lambda!203669 lambda!203659))))

(declare-fun bs!1079956 () Bool)

(assert (= bs!1079956 (and d!1486523 d!1486521)))

(assert (=> bs!1079956 (= lambda!203669 lambda!203668)))

(assert (=> d!1486523 true))

(assert (=> d!1486523 true))

(assert (=> d!1486523 (= (allKeysSameHash!1584 oldBucket!34 hash!405 hashF!1323) (forall!11179 oldBucket!34 lambda!203669))))

(declare-fun bs!1079957 () Bool)

(assert (= bs!1079957 d!1486523))

(declare-fun m!5569847 () Bool)

(assert (=> bs!1079957 m!5569847))

(assert (=> b!4675756 d!1486523))

(declare-fun d!1486525 () Bool)

(declare-fun res!1969362 () Bool)

(declare-fun e!2917618 () Bool)

(assert (=> d!1486525 (=> res!1969362 e!2917618)))

(assert (=> d!1486525 (= res!1969362 ((_ is Nil!52170) (toList!5405 lm!2023)))))

(assert (=> d!1486525 (= (forall!11177 (toList!5405 lm!2023) lambda!203565) e!2917618)))

(declare-fun b!4675969 () Bool)

(declare-fun e!2917619 () Bool)

(assert (=> b!4675969 (= e!2917618 e!2917619)))

(declare-fun res!1969363 () Bool)

(assert (=> b!4675969 (=> (not res!1969363) (not e!2917619))))

(assert (=> b!4675969 (= res!1969363 (dynLambda!21664 lambda!203565 (h!58367 (toList!5405 lm!2023))))))

(declare-fun b!4675970 () Bool)

(assert (=> b!4675970 (= e!2917619 (forall!11177 (t!359434 (toList!5405 lm!2023)) lambda!203565))))

(assert (= (and d!1486525 (not res!1969362)) b!4675969))

(assert (= (and b!4675969 res!1969363) b!4675970))

(declare-fun b_lambda!176559 () Bool)

(assert (=> (not b_lambda!176559) (not b!4675969)))

(declare-fun m!5569849 () Bool)

(assert (=> b!4675969 m!5569849))

(assert (=> b!4675970 m!5569407))

(assert (=> start!471920 d!1486525))

(declare-fun d!1486527 () Bool)

(declare-fun isStrictlySorted!602 (List!52294) Bool)

(assert (=> d!1486527 (= (inv!67419 lm!2023) (isStrictlySorted!602 (toList!5405 lm!2023)))))

(declare-fun bs!1079958 () Bool)

(assert (= bs!1079958 d!1486527))

(declare-fun m!5569851 () Bool)

(assert (=> bs!1079958 m!5569851))

(assert (=> start!471920 d!1486527))

(declare-fun bs!1079959 () Bool)

(declare-fun d!1486529 () Bool)

(assert (= bs!1079959 (and d!1486529 start!471920)))

(declare-fun lambda!203670 () Int)

(assert (=> bs!1079959 (= lambda!203670 lambda!203565)))

(declare-fun bs!1079960 () Bool)

(assert (= bs!1079960 (and d!1486529 d!1486507)))

(assert (=> bs!1079960 (not (= lambda!203670 lambda!203657))))

(declare-fun bs!1079961 () Bool)

(assert (= bs!1079961 (and d!1486529 d!1486511)))

(assert (=> bs!1079961 (= lambda!203670 lambda!203664)))

(declare-fun bs!1079962 () Bool)

(assert (= bs!1079962 (and d!1486529 d!1486517)))

(assert (=> bs!1079962 (= lambda!203670 lambda!203665)))

(declare-fun lt!1836038 () ListMap!4769)

(assert (=> d!1486529 (invariantList!1362 (toList!5406 lt!1836038))))

(declare-fun e!2917620 () ListMap!4769)

(assert (=> d!1486529 (= lt!1836038 e!2917620)))

(declare-fun c!800170 () Bool)

(assert (=> d!1486529 (= c!800170 ((_ is Cons!52170) (Cons!52170 (tuple2!53429 hash!405 lt!1835726) (t!359434 (toList!5405 lm!2023)))))))

(assert (=> d!1486529 (forall!11177 (Cons!52170 (tuple2!53429 hash!405 lt!1835726) (t!359434 (toList!5405 lm!2023))) lambda!203670)))

(assert (=> d!1486529 (= (extractMap!1784 (Cons!52170 (tuple2!53429 hash!405 lt!1835726) (t!359434 (toList!5405 lm!2023)))) lt!1836038)))

(declare-fun b!4675971 () Bool)

(assert (=> b!4675971 (= e!2917620 (addToMapMapFromBucket!1190 (_2!30008 (h!58367 (Cons!52170 (tuple2!53429 hash!405 lt!1835726) (t!359434 (toList!5405 lm!2023))))) (extractMap!1784 (t!359434 (Cons!52170 (tuple2!53429 hash!405 lt!1835726) (t!359434 (toList!5405 lm!2023)))))))))

(declare-fun b!4675972 () Bool)

(assert (=> b!4675972 (= e!2917620 (ListMap!4770 Nil!52169))))

(assert (= (and d!1486529 c!800170) b!4675971))

(assert (= (and d!1486529 (not c!800170)) b!4675972))

(declare-fun m!5569853 () Bool)

(assert (=> d!1486529 m!5569853))

(declare-fun m!5569855 () Bool)

(assert (=> d!1486529 m!5569855))

(declare-fun m!5569857 () Bool)

(assert (=> b!4675971 m!5569857))

(assert (=> b!4675971 m!5569857))

(declare-fun m!5569859 () Bool)

(assert (=> b!4675971 m!5569859))

(assert (=> b!4675752 d!1486529))

(declare-fun bs!1079963 () Bool)

(declare-fun d!1486531 () Bool)

(assert (= bs!1079963 (and d!1486531 start!471920)))

(declare-fun lambda!203671 () Int)

(assert (=> bs!1079963 (= lambda!203671 lambda!203565)))

(declare-fun bs!1079964 () Bool)

(assert (= bs!1079964 (and d!1486531 d!1486511)))

(assert (=> bs!1079964 (= lambda!203671 lambda!203664)))

(declare-fun bs!1079965 () Bool)

(assert (= bs!1079965 (and d!1486531 d!1486529)))

(assert (=> bs!1079965 (= lambda!203671 lambda!203670)))

(declare-fun bs!1079966 () Bool)

(assert (= bs!1079966 (and d!1486531 d!1486507)))

(assert (=> bs!1079966 (not (= lambda!203671 lambda!203657))))

(declare-fun bs!1079967 () Bool)

(assert (= bs!1079967 (and d!1486531 d!1486517)))

(assert (=> bs!1079967 (= lambda!203671 lambda!203665)))

(declare-fun lt!1836039 () ListMap!4769)

(assert (=> d!1486531 (invariantList!1362 (toList!5406 lt!1836039))))

(declare-fun e!2917621 () ListMap!4769)

(assert (=> d!1486531 (= lt!1836039 e!2917621)))

(declare-fun c!800171 () Bool)

(assert (=> d!1486531 (= c!800171 ((_ is Cons!52170) (Cons!52170 (tuple2!53429 hash!405 newBucket!218) (t!359434 (toList!5405 lm!2023)))))))

(assert (=> d!1486531 (forall!11177 (Cons!52170 (tuple2!53429 hash!405 newBucket!218) (t!359434 (toList!5405 lm!2023))) lambda!203671)))

(assert (=> d!1486531 (= (extractMap!1784 (Cons!52170 (tuple2!53429 hash!405 newBucket!218) (t!359434 (toList!5405 lm!2023)))) lt!1836039)))

(declare-fun b!4675973 () Bool)

(assert (=> b!4675973 (= e!2917621 (addToMapMapFromBucket!1190 (_2!30008 (h!58367 (Cons!52170 (tuple2!53429 hash!405 newBucket!218) (t!359434 (toList!5405 lm!2023))))) (extractMap!1784 (t!359434 (Cons!52170 (tuple2!53429 hash!405 newBucket!218) (t!359434 (toList!5405 lm!2023)))))))))

(declare-fun b!4675974 () Bool)

(assert (=> b!4675974 (= e!2917621 (ListMap!4770 Nil!52169))))

(assert (= (and d!1486531 c!800171) b!4675973))

(assert (= (and d!1486531 (not c!800171)) b!4675974))

(declare-fun m!5569861 () Bool)

(assert (=> d!1486531 m!5569861))

(declare-fun m!5569863 () Bool)

(assert (=> d!1486531 m!5569863))

(declare-fun m!5569865 () Bool)

(assert (=> b!4675973 m!5569865))

(assert (=> b!4675973 m!5569865))

(declare-fun m!5569867 () Bool)

(assert (=> b!4675973 m!5569867))

(assert (=> b!4675752 d!1486531))

(declare-fun d!1486533 () Bool)

(declare-fun res!1969364 () Bool)

(declare-fun e!2917622 () Bool)

(assert (=> d!1486533 (=> res!1969364 e!2917622)))

(assert (=> d!1486533 (= res!1969364 (not ((_ is Cons!52169) newBucket!218)))))

(assert (=> d!1486533 (= (noDuplicateKeys!1758 newBucket!218) e!2917622)))

(declare-fun b!4675975 () Bool)

(declare-fun e!2917623 () Bool)

(assert (=> b!4675975 (= e!2917622 e!2917623)))

(declare-fun res!1969365 () Bool)

(assert (=> b!4675975 (=> (not res!1969365) (not e!2917623))))

(assert (=> b!4675975 (= res!1969365 (not (containsKey!2895 (t!359433 newBucket!218) (_1!30007 (h!58366 newBucket!218)))))))

(declare-fun b!4675976 () Bool)

(assert (=> b!4675976 (= e!2917623 (noDuplicateKeys!1758 (t!359433 newBucket!218)))))

(assert (= (and d!1486533 (not res!1969364)) b!4675975))

(assert (= (and b!4675975 res!1969365) b!4675976))

(declare-fun m!5569869 () Bool)

(assert (=> b!4675975 m!5569869))

(declare-fun m!5569871 () Bool)

(assert (=> b!4675976 m!5569871))

(assert (=> b!4675753 d!1486533))

(declare-fun bs!1079968 () Bool)

(declare-fun b!4675979 () Bool)

(assert (= bs!1079968 (and b!4675979 b!4675857)))

(declare-fun lambda!203672 () Int)

(assert (=> bs!1079968 (= (= lt!1835727 lt!1835916) (= lambda!203672 lambda!203646))))

(declare-fun bs!1079969 () Bool)

(assert (= bs!1079969 (and b!4675979 d!1486523)))

(assert (=> bs!1079969 (not (= lambda!203672 lambda!203669))))

(declare-fun bs!1079970 () Bool)

(assert (= bs!1079970 (and b!4675979 b!4675856)))

(assert (=> bs!1079970 (= lambda!203672 lambda!203644)))

(declare-fun bs!1079971 () Bool)

(assert (= bs!1079971 (and b!4675979 b!4675921)))

(assert (=> bs!1079971 (= lambda!203672 lambda!203658)))

(declare-fun bs!1079972 () Bool)

(assert (= bs!1079972 (and b!4675979 d!1486509)))

(assert (=> bs!1079972 (= (= lt!1835727 lt!1835989) (= lambda!203672 lambda!203661))))

(declare-fun bs!1079973 () Bool)

(assert (= bs!1079973 (and b!4675979 b!4675922)))

(assert (=> bs!1079973 (= (= lt!1835727 lt!1835998) (= lambda!203672 lambda!203660))))

(declare-fun bs!1079974 () Bool)

(assert (= bs!1079974 (and b!4675979 d!1486435)))

(assert (=> bs!1079974 (= (= lt!1835727 lt!1835907) (= lambda!203672 lambda!203647))))

(assert (=> bs!1079968 (= lambda!203672 lambda!203645)))

(assert (=> bs!1079973 (= lambda!203672 lambda!203659)))

(declare-fun bs!1079975 () Bool)

(assert (= bs!1079975 (and b!4675979 d!1486521)))

(assert (=> bs!1079975 (not (= lambda!203672 lambda!203668))))

(assert (=> b!4675979 true))

(declare-fun bs!1079976 () Bool)

(declare-fun b!4675980 () Bool)

(assert (= bs!1079976 (and b!4675980 b!4675857)))

(declare-fun lambda!203673 () Int)

(assert (=> bs!1079976 (= (= lt!1835727 lt!1835916) (= lambda!203673 lambda!203646))))

(declare-fun bs!1079977 () Bool)

(assert (= bs!1079977 (and b!4675980 d!1486523)))

(assert (=> bs!1079977 (not (= lambda!203673 lambda!203669))))

(declare-fun bs!1079978 () Bool)

(assert (= bs!1079978 (and b!4675980 b!4675856)))

(assert (=> bs!1079978 (= lambda!203673 lambda!203644)))

(declare-fun bs!1079979 () Bool)

(assert (= bs!1079979 (and b!4675980 b!4675921)))

(assert (=> bs!1079979 (= lambda!203673 lambda!203658)))

(declare-fun bs!1079980 () Bool)

(assert (= bs!1079980 (and b!4675980 d!1486509)))

(assert (=> bs!1079980 (= (= lt!1835727 lt!1835989) (= lambda!203673 lambda!203661))))

(declare-fun bs!1079981 () Bool)

(assert (= bs!1079981 (and b!4675980 b!4675922)))

(assert (=> bs!1079981 (= (= lt!1835727 lt!1835998) (= lambda!203673 lambda!203660))))

(declare-fun bs!1079982 () Bool)

(assert (= bs!1079982 (and b!4675980 d!1486435)))

(assert (=> bs!1079982 (= (= lt!1835727 lt!1835907) (= lambda!203673 lambda!203647))))

(assert (=> bs!1079976 (= lambda!203673 lambda!203645)))

(assert (=> bs!1079981 (= lambda!203673 lambda!203659)))

(declare-fun bs!1079983 () Bool)

(assert (= bs!1079983 (and b!4675980 b!4675979)))

(assert (=> bs!1079983 (= lambda!203673 lambda!203672)))

(declare-fun bs!1079984 () Bool)

(assert (= bs!1079984 (and b!4675980 d!1486521)))

(assert (=> bs!1079984 (not (= lambda!203673 lambda!203668))))

(assert (=> b!4675980 true))

(declare-fun lambda!203674 () Int)

(declare-fun lt!1836049 () ListMap!4769)

(assert (=> bs!1079976 (= (= lt!1836049 lt!1835916) (= lambda!203674 lambda!203646))))

(assert (=> bs!1079977 (not (= lambda!203674 lambda!203669))))

(assert (=> bs!1079978 (= (= lt!1836049 lt!1835727) (= lambda!203674 lambda!203644))))

(assert (=> bs!1079979 (= (= lt!1836049 lt!1835727) (= lambda!203674 lambda!203658))))

(assert (=> bs!1079980 (= (= lt!1836049 lt!1835989) (= lambda!203674 lambda!203661))))

(assert (=> bs!1079981 (= (= lt!1836049 lt!1835998) (= lambda!203674 lambda!203660))))

(assert (=> bs!1079976 (= (= lt!1836049 lt!1835727) (= lambda!203674 lambda!203645))))

(assert (=> bs!1079981 (= (= lt!1836049 lt!1835727) (= lambda!203674 lambda!203659))))

(assert (=> bs!1079983 (= (= lt!1836049 lt!1835727) (= lambda!203674 lambda!203672))))

(assert (=> bs!1079984 (not (= lambda!203674 lambda!203668))))

(assert (=> b!4675980 (= (= lt!1836049 lt!1835727) (= lambda!203674 lambda!203673))))

(assert (=> bs!1079982 (= (= lt!1836049 lt!1835907) (= lambda!203674 lambda!203647))))

(assert (=> b!4675980 true))

(declare-fun bs!1079985 () Bool)

(declare-fun d!1486535 () Bool)

(assert (= bs!1079985 (and d!1486535 b!4675857)))

(declare-fun lt!1836040 () ListMap!4769)

(declare-fun lambda!203675 () Int)

(assert (=> bs!1079985 (= (= lt!1836040 lt!1835916) (= lambda!203675 lambda!203646))))

(declare-fun bs!1079986 () Bool)

(assert (= bs!1079986 (and d!1486535 d!1486523)))

(assert (=> bs!1079986 (not (= lambda!203675 lambda!203669))))

(declare-fun bs!1079987 () Bool)

(assert (= bs!1079987 (and d!1486535 b!4675856)))

(assert (=> bs!1079987 (= (= lt!1836040 lt!1835727) (= lambda!203675 lambda!203644))))

(declare-fun bs!1079988 () Bool)

(assert (= bs!1079988 (and d!1486535 b!4675921)))

(assert (=> bs!1079988 (= (= lt!1836040 lt!1835727) (= lambda!203675 lambda!203658))))

(declare-fun bs!1079989 () Bool)

(assert (= bs!1079989 (and d!1486535 d!1486509)))

(assert (=> bs!1079989 (= (= lt!1836040 lt!1835989) (= lambda!203675 lambda!203661))))

(declare-fun bs!1079990 () Bool)

(assert (= bs!1079990 (and d!1486535 b!4675980)))

(assert (=> bs!1079990 (= (= lt!1836040 lt!1836049) (= lambda!203675 lambda!203674))))

(declare-fun bs!1079991 () Bool)

(assert (= bs!1079991 (and d!1486535 b!4675922)))

(assert (=> bs!1079991 (= (= lt!1836040 lt!1835998) (= lambda!203675 lambda!203660))))

(assert (=> bs!1079985 (= (= lt!1836040 lt!1835727) (= lambda!203675 lambda!203645))))

(assert (=> bs!1079991 (= (= lt!1836040 lt!1835727) (= lambda!203675 lambda!203659))))

(declare-fun bs!1079992 () Bool)

(assert (= bs!1079992 (and d!1486535 b!4675979)))

(assert (=> bs!1079992 (= (= lt!1836040 lt!1835727) (= lambda!203675 lambda!203672))))

(declare-fun bs!1079993 () Bool)

(assert (= bs!1079993 (and d!1486535 d!1486521)))

(assert (=> bs!1079993 (not (= lambda!203675 lambda!203668))))

(assert (=> bs!1079990 (= (= lt!1836040 lt!1835727) (= lambda!203675 lambda!203673))))

(declare-fun bs!1079994 () Bool)

(assert (= bs!1079994 (and d!1486535 d!1486435)))

(assert (=> bs!1079994 (= (= lt!1836040 lt!1835907) (= lambda!203675 lambda!203647))))

(assert (=> d!1486535 true))

(declare-fun b!4675977 () Bool)

(declare-fun e!2917626 () Bool)

(assert (=> b!4675977 (= e!2917626 (forall!11179 (toList!5406 lt!1835727) lambda!203674))))

(declare-fun b!4675978 () Bool)

(declare-fun res!1969366 () Bool)

(declare-fun e!2917625 () Bool)

(assert (=> b!4675978 (=> (not res!1969366) (not e!2917625))))

(assert (=> b!4675978 (= res!1969366 (forall!11179 (toList!5406 lt!1835727) lambda!203675))))

(assert (=> d!1486535 e!2917625))

(declare-fun res!1969367 () Bool)

(assert (=> d!1486535 (=> (not res!1969367) (not e!2917625))))

(assert (=> d!1486535 (= res!1969367 (forall!11179 newBucket!218 lambda!203675))))

(declare-fun e!2917624 () ListMap!4769)

(assert (=> d!1486535 (= lt!1836040 e!2917624)))

(declare-fun c!800172 () Bool)

(assert (=> d!1486535 (= c!800172 ((_ is Nil!52169) newBucket!218))))

(assert (=> d!1486535 (noDuplicateKeys!1758 newBucket!218)))

(assert (=> d!1486535 (= (addToMapMapFromBucket!1190 newBucket!218 lt!1835727) lt!1836040)))

(assert (=> b!4675979 (= e!2917624 lt!1835727)))

(declare-fun lt!1836046 () Unit!121617)

(declare-fun call!326768 () Unit!121617)

(assert (=> b!4675979 (= lt!1836046 call!326768)))

(declare-fun call!326766 () Bool)

(assert (=> b!4675979 call!326766))

(declare-fun lt!1836055 () Unit!121617)

(assert (=> b!4675979 (= lt!1836055 lt!1836046)))

(declare-fun call!326767 () Bool)

(assert (=> b!4675979 call!326767))

(declare-fun lt!1836047 () Unit!121617)

(declare-fun Unit!121689 () Unit!121617)

(assert (=> b!4675979 (= lt!1836047 Unit!121689)))

(assert (=> b!4675980 (= e!2917624 lt!1836049)))

(declare-fun lt!1836050 () ListMap!4769)

(assert (=> b!4675980 (= lt!1836050 (+!2060 lt!1835727 (h!58366 newBucket!218)))))

(assert (=> b!4675980 (= lt!1836049 (addToMapMapFromBucket!1190 (t!359433 newBucket!218) (+!2060 lt!1835727 (h!58366 newBucket!218))))))

(declare-fun lt!1836052 () Unit!121617)

(assert (=> b!4675980 (= lt!1836052 call!326768)))

(assert (=> b!4675980 (forall!11179 (toList!5406 lt!1835727) lambda!203673)))

(declare-fun lt!1836044 () Unit!121617)

(assert (=> b!4675980 (= lt!1836044 lt!1836052)))

(assert (=> b!4675980 (forall!11179 (toList!5406 lt!1836050) lambda!203674)))

(declare-fun lt!1836060 () Unit!121617)

(declare-fun Unit!121690 () Unit!121617)

(assert (=> b!4675980 (= lt!1836060 Unit!121690)))

(assert (=> b!4675980 (forall!11179 (t!359433 newBucket!218) lambda!203674)))

(declare-fun lt!1836043 () Unit!121617)

(declare-fun Unit!121691 () Unit!121617)

(assert (=> b!4675980 (= lt!1836043 Unit!121691)))

(declare-fun lt!1836056 () Unit!121617)

(declare-fun Unit!121692 () Unit!121617)

(assert (=> b!4675980 (= lt!1836056 Unit!121692)))

(declare-fun lt!1836059 () Unit!121617)

(assert (=> b!4675980 (= lt!1836059 (forallContained!3334 (toList!5406 lt!1836050) lambda!203674 (h!58366 newBucket!218)))))

(assert (=> b!4675980 (contains!15318 lt!1836050 (_1!30007 (h!58366 newBucket!218)))))

(declare-fun lt!1836054 () Unit!121617)

(declare-fun Unit!121693 () Unit!121617)

(assert (=> b!4675980 (= lt!1836054 Unit!121693)))

(assert (=> b!4675980 (contains!15318 lt!1836049 (_1!30007 (h!58366 newBucket!218)))))

(declare-fun lt!1836048 () Unit!121617)

(declare-fun Unit!121694 () Unit!121617)

(assert (=> b!4675980 (= lt!1836048 Unit!121694)))

(assert (=> b!4675980 (forall!11179 newBucket!218 lambda!203674)))

(declare-fun lt!1836041 () Unit!121617)

(declare-fun Unit!121695 () Unit!121617)

(assert (=> b!4675980 (= lt!1836041 Unit!121695)))

(assert (=> b!4675980 call!326767))

(declare-fun lt!1836058 () Unit!121617)

(declare-fun Unit!121696 () Unit!121617)

(assert (=> b!4675980 (= lt!1836058 Unit!121696)))

(declare-fun lt!1836053 () Unit!121617)

(declare-fun Unit!121697 () Unit!121617)

(assert (=> b!4675980 (= lt!1836053 Unit!121697)))

(declare-fun lt!1836045 () Unit!121617)

(assert (=> b!4675980 (= lt!1836045 (addForallContainsKeyThenBeforeAdding!649 lt!1835727 lt!1836049 (_1!30007 (h!58366 newBucket!218)) (_2!30007 (h!58366 newBucket!218))))))

(assert (=> b!4675980 call!326766))

(declare-fun lt!1836051 () Unit!121617)

(assert (=> b!4675980 (= lt!1836051 lt!1836045)))

(assert (=> b!4675980 (forall!11179 (toList!5406 lt!1835727) lambda!203674)))

(declare-fun lt!1836057 () Unit!121617)

(declare-fun Unit!121698 () Unit!121617)

(assert (=> b!4675980 (= lt!1836057 Unit!121698)))

(declare-fun res!1969368 () Bool)

(assert (=> b!4675980 (= res!1969368 (forall!11179 newBucket!218 lambda!203674))))

(assert (=> b!4675980 (=> (not res!1969368) (not e!2917626))))

(assert (=> b!4675980 e!2917626))

(declare-fun lt!1836042 () Unit!121617)

(declare-fun Unit!121699 () Unit!121617)

(assert (=> b!4675980 (= lt!1836042 Unit!121699)))

(declare-fun b!4675981 () Bool)

(assert (=> b!4675981 (= e!2917625 (invariantList!1362 (toList!5406 lt!1836040)))))

(declare-fun bm!326761 () Bool)

(assert (=> bm!326761 (= call!326767 (forall!11179 (ite c!800172 (toList!5406 lt!1835727) (toList!5406 lt!1836050)) (ite c!800172 lambda!203672 lambda!203674)))))

(declare-fun bm!326762 () Bool)

(assert (=> bm!326762 (= call!326766 (forall!11179 (toList!5406 lt!1835727) (ite c!800172 lambda!203672 lambda!203674)))))

(declare-fun bm!326763 () Bool)

(assert (=> bm!326763 (= call!326768 (lemmaContainsAllItsOwnKeys!650 lt!1835727))))

(assert (= (and d!1486535 c!800172) b!4675979))

(assert (= (and d!1486535 (not c!800172)) b!4675980))

(assert (= (and b!4675980 res!1969368) b!4675977))

(assert (= (or b!4675979 b!4675980) bm!326763))

(assert (= (or b!4675979 b!4675980) bm!326762))

(assert (= (or b!4675979 b!4675980) bm!326761))

(assert (= (and d!1486535 res!1969367) b!4675978))

(assert (= (and b!4675978 res!1969366) b!4675981))

(declare-fun m!5569873 () Bool)

(assert (=> bm!326761 m!5569873))

(assert (=> bm!326763 m!5569605))

(declare-fun m!5569875 () Bool)

(assert (=> d!1486535 m!5569875))

(assert (=> d!1486535 m!5569439))

(declare-fun m!5569877 () Bool)

(assert (=> b!4675977 m!5569877))

(declare-fun m!5569879 () Bool)

(assert (=> bm!326762 m!5569879))

(declare-fun m!5569881 () Bool)

(assert (=> b!4675980 m!5569881))

(assert (=> b!4675980 m!5569881))

(declare-fun m!5569883 () Bool)

(assert (=> b!4675980 m!5569883))

(declare-fun m!5569885 () Bool)

(assert (=> b!4675980 m!5569885))

(assert (=> b!4675980 m!5569885))

(declare-fun m!5569887 () Bool)

(assert (=> b!4675980 m!5569887))

(assert (=> b!4675980 m!5569877))

(declare-fun m!5569889 () Bool)

(assert (=> b!4675980 m!5569889))

(declare-fun m!5569891 () Bool)

(assert (=> b!4675980 m!5569891))

(declare-fun m!5569893 () Bool)

(assert (=> b!4675980 m!5569893))

(declare-fun m!5569895 () Bool)

(assert (=> b!4675980 m!5569895))

(declare-fun m!5569897 () Bool)

(assert (=> b!4675980 m!5569897))

(declare-fun m!5569899 () Bool)

(assert (=> b!4675980 m!5569899))

(declare-fun m!5569901 () Bool)

(assert (=> b!4675978 m!5569901))

(declare-fun m!5569903 () Bool)

(assert (=> b!4675981 m!5569903))

(assert (=> b!4675749 d!1486535))

(declare-fun bs!1079995 () Bool)

(declare-fun b!4675984 () Bool)

(assert (= bs!1079995 (and b!4675984 b!4675857)))

(declare-fun lambda!203676 () Int)

(assert (=> bs!1079995 (= (= lt!1835727 lt!1835916) (= lambda!203676 lambda!203646))))

(declare-fun bs!1079996 () Bool)

(assert (= bs!1079996 (and b!4675984 d!1486523)))

(assert (=> bs!1079996 (not (= lambda!203676 lambda!203669))))

(declare-fun bs!1079997 () Bool)

(assert (= bs!1079997 (and b!4675984 b!4675856)))

(assert (=> bs!1079997 (= lambda!203676 lambda!203644)))

(declare-fun bs!1079998 () Bool)

(assert (= bs!1079998 (and b!4675984 b!4675921)))

(assert (=> bs!1079998 (= lambda!203676 lambda!203658)))

(declare-fun bs!1079999 () Bool)

(assert (= bs!1079999 (and b!4675984 b!4675980)))

(assert (=> bs!1079999 (= (= lt!1835727 lt!1836049) (= lambda!203676 lambda!203674))))

(declare-fun bs!1080000 () Bool)

(assert (= bs!1080000 (and b!4675984 b!4675922)))

(assert (=> bs!1080000 (= (= lt!1835727 lt!1835998) (= lambda!203676 lambda!203660))))

(assert (=> bs!1079995 (= lambda!203676 lambda!203645)))

(assert (=> bs!1080000 (= lambda!203676 lambda!203659)))

(declare-fun bs!1080001 () Bool)

(assert (= bs!1080001 (and b!4675984 b!4675979)))

(assert (=> bs!1080001 (= lambda!203676 lambda!203672)))

(declare-fun bs!1080002 () Bool)

(assert (= bs!1080002 (and b!4675984 d!1486521)))

(assert (=> bs!1080002 (not (= lambda!203676 lambda!203668))))

(declare-fun bs!1080003 () Bool)

(assert (= bs!1080003 (and b!4675984 d!1486509)))

(assert (=> bs!1080003 (= (= lt!1835727 lt!1835989) (= lambda!203676 lambda!203661))))

(declare-fun bs!1080004 () Bool)

(assert (= bs!1080004 (and b!4675984 d!1486535)))

(assert (=> bs!1080004 (= (= lt!1835727 lt!1836040) (= lambda!203676 lambda!203675))))

(assert (=> bs!1079999 (= lambda!203676 lambda!203673)))

(declare-fun bs!1080005 () Bool)

(assert (= bs!1080005 (and b!4675984 d!1486435)))

(assert (=> bs!1080005 (= (= lt!1835727 lt!1835907) (= lambda!203676 lambda!203647))))

(assert (=> b!4675984 true))

(declare-fun bs!1080006 () Bool)

(declare-fun b!4675985 () Bool)

(assert (= bs!1080006 (and b!4675985 b!4675857)))

(declare-fun lambda!203677 () Int)

(assert (=> bs!1080006 (= (= lt!1835727 lt!1835916) (= lambda!203677 lambda!203646))))

(declare-fun bs!1080007 () Bool)

(assert (= bs!1080007 (and b!4675985 d!1486523)))

(assert (=> bs!1080007 (not (= lambda!203677 lambda!203669))))

(declare-fun bs!1080008 () Bool)

(assert (= bs!1080008 (and b!4675985 b!4675856)))

(assert (=> bs!1080008 (= lambda!203677 lambda!203644)))

(declare-fun bs!1080009 () Bool)

(assert (= bs!1080009 (and b!4675985 b!4675921)))

(assert (=> bs!1080009 (= lambda!203677 lambda!203658)))

(declare-fun bs!1080010 () Bool)

(assert (= bs!1080010 (and b!4675985 b!4675980)))

(assert (=> bs!1080010 (= (= lt!1835727 lt!1836049) (= lambda!203677 lambda!203674))))

(declare-fun bs!1080011 () Bool)

(assert (= bs!1080011 (and b!4675985 b!4675922)))

(assert (=> bs!1080011 (= (= lt!1835727 lt!1835998) (= lambda!203677 lambda!203660))))

(assert (=> bs!1080006 (= lambda!203677 lambda!203645)))

(assert (=> bs!1080011 (= lambda!203677 lambda!203659)))

(declare-fun bs!1080012 () Bool)

(assert (= bs!1080012 (and b!4675985 b!4675979)))

(assert (=> bs!1080012 (= lambda!203677 lambda!203672)))

(declare-fun bs!1080013 () Bool)

(assert (= bs!1080013 (and b!4675985 d!1486509)))

(assert (=> bs!1080013 (= (= lt!1835727 lt!1835989) (= lambda!203677 lambda!203661))))

(declare-fun bs!1080014 () Bool)

(assert (= bs!1080014 (and b!4675985 d!1486535)))

(assert (=> bs!1080014 (= (= lt!1835727 lt!1836040) (= lambda!203677 lambda!203675))))

(assert (=> bs!1080010 (= lambda!203677 lambda!203673)))

(declare-fun bs!1080015 () Bool)

(assert (= bs!1080015 (and b!4675985 d!1486435)))

(assert (=> bs!1080015 (= (= lt!1835727 lt!1835907) (= lambda!203677 lambda!203647))))

(declare-fun bs!1080016 () Bool)

(assert (= bs!1080016 (and b!4675985 b!4675984)))

(assert (=> bs!1080016 (= lambda!203677 lambda!203676)))

(declare-fun bs!1080017 () Bool)

(assert (= bs!1080017 (and b!4675985 d!1486521)))

(assert (=> bs!1080017 (not (= lambda!203677 lambda!203668))))

(assert (=> b!4675985 true))

(declare-fun lt!1836070 () ListMap!4769)

(declare-fun lambda!203678 () Int)

(assert (=> bs!1080006 (= (= lt!1836070 lt!1835916) (= lambda!203678 lambda!203646))))

(assert (=> bs!1080007 (not (= lambda!203678 lambda!203669))))

(assert (=> bs!1080008 (= (= lt!1836070 lt!1835727) (= lambda!203678 lambda!203644))))

(assert (=> b!4675985 (= (= lt!1836070 lt!1835727) (= lambda!203678 lambda!203677))))

(assert (=> bs!1080009 (= (= lt!1836070 lt!1835727) (= lambda!203678 lambda!203658))))

(assert (=> bs!1080010 (= (= lt!1836070 lt!1836049) (= lambda!203678 lambda!203674))))

(assert (=> bs!1080011 (= (= lt!1836070 lt!1835998) (= lambda!203678 lambda!203660))))

(assert (=> bs!1080006 (= (= lt!1836070 lt!1835727) (= lambda!203678 lambda!203645))))

(assert (=> bs!1080011 (= (= lt!1836070 lt!1835727) (= lambda!203678 lambda!203659))))

(assert (=> bs!1080012 (= (= lt!1836070 lt!1835727) (= lambda!203678 lambda!203672))))

(assert (=> bs!1080013 (= (= lt!1836070 lt!1835989) (= lambda!203678 lambda!203661))))

(assert (=> bs!1080014 (= (= lt!1836070 lt!1836040) (= lambda!203678 lambda!203675))))

(assert (=> bs!1080010 (= (= lt!1836070 lt!1835727) (= lambda!203678 lambda!203673))))

(assert (=> bs!1080015 (= (= lt!1836070 lt!1835907) (= lambda!203678 lambda!203647))))

(assert (=> bs!1080016 (= (= lt!1836070 lt!1835727) (= lambda!203678 lambda!203676))))

(assert (=> bs!1080017 (not (= lambda!203678 lambda!203668))))

(assert (=> b!4675985 true))

(declare-fun bs!1080018 () Bool)

(declare-fun d!1486537 () Bool)

(assert (= bs!1080018 (and d!1486537 b!4675857)))

(declare-fun lt!1836061 () ListMap!4769)

(declare-fun lambda!203679 () Int)

(assert (=> bs!1080018 (= (= lt!1836061 lt!1835916) (= lambda!203679 lambda!203646))))

(declare-fun bs!1080019 () Bool)

(assert (= bs!1080019 (and d!1486537 d!1486523)))

(assert (=> bs!1080019 (not (= lambda!203679 lambda!203669))))

(declare-fun bs!1080020 () Bool)

(assert (= bs!1080020 (and d!1486537 b!4675985)))

(assert (=> bs!1080020 (= (= lt!1836061 lt!1835727) (= lambda!203679 lambda!203677))))

(declare-fun bs!1080021 () Bool)

(assert (= bs!1080021 (and d!1486537 b!4675921)))

(assert (=> bs!1080021 (= (= lt!1836061 lt!1835727) (= lambda!203679 lambda!203658))))

(declare-fun bs!1080022 () Bool)

(assert (= bs!1080022 (and d!1486537 b!4675980)))

(assert (=> bs!1080022 (= (= lt!1836061 lt!1836049) (= lambda!203679 lambda!203674))))

(declare-fun bs!1080023 () Bool)

(assert (= bs!1080023 (and d!1486537 b!4675922)))

(assert (=> bs!1080023 (= (= lt!1836061 lt!1835998) (= lambda!203679 lambda!203660))))

(assert (=> bs!1080018 (= (= lt!1836061 lt!1835727) (= lambda!203679 lambda!203645))))

(assert (=> bs!1080023 (= (= lt!1836061 lt!1835727) (= lambda!203679 lambda!203659))))

(declare-fun bs!1080024 () Bool)

(assert (= bs!1080024 (and d!1486537 b!4675979)))

(assert (=> bs!1080024 (= (= lt!1836061 lt!1835727) (= lambda!203679 lambda!203672))))

(declare-fun bs!1080025 () Bool)

(assert (= bs!1080025 (and d!1486537 b!4675856)))

(assert (=> bs!1080025 (= (= lt!1836061 lt!1835727) (= lambda!203679 lambda!203644))))

(assert (=> bs!1080020 (= (= lt!1836061 lt!1836070) (= lambda!203679 lambda!203678))))

(declare-fun bs!1080026 () Bool)

(assert (= bs!1080026 (and d!1486537 d!1486509)))

(assert (=> bs!1080026 (= (= lt!1836061 lt!1835989) (= lambda!203679 lambda!203661))))

(declare-fun bs!1080027 () Bool)

(assert (= bs!1080027 (and d!1486537 d!1486535)))

(assert (=> bs!1080027 (= (= lt!1836061 lt!1836040) (= lambda!203679 lambda!203675))))

(assert (=> bs!1080022 (= (= lt!1836061 lt!1835727) (= lambda!203679 lambda!203673))))

(declare-fun bs!1080028 () Bool)

(assert (= bs!1080028 (and d!1486537 d!1486435)))

(assert (=> bs!1080028 (= (= lt!1836061 lt!1835907) (= lambda!203679 lambda!203647))))

(declare-fun bs!1080029 () Bool)

(assert (= bs!1080029 (and d!1486537 b!4675984)))

(assert (=> bs!1080029 (= (= lt!1836061 lt!1835727) (= lambda!203679 lambda!203676))))

(declare-fun bs!1080030 () Bool)

(assert (= bs!1080030 (and d!1486537 d!1486521)))

(assert (=> bs!1080030 (not (= lambda!203679 lambda!203668))))

(assert (=> d!1486537 true))

(declare-fun b!4675982 () Bool)

(declare-fun e!2917629 () Bool)

(assert (=> b!4675982 (= e!2917629 (forall!11179 (toList!5406 lt!1835727) lambda!203678))))

(declare-fun b!4675983 () Bool)

(declare-fun res!1969369 () Bool)

(declare-fun e!2917628 () Bool)

(assert (=> b!4675983 (=> (not res!1969369) (not e!2917628))))

(assert (=> b!4675983 (= res!1969369 (forall!11179 (toList!5406 lt!1835727) lambda!203679))))

(assert (=> d!1486537 e!2917628))

(declare-fun res!1969370 () Bool)

(assert (=> d!1486537 (=> (not res!1969370) (not e!2917628))))

(assert (=> d!1486537 (= res!1969370 (forall!11179 lt!1835726 lambda!203679))))

(declare-fun e!2917627 () ListMap!4769)

(assert (=> d!1486537 (= lt!1836061 e!2917627)))

(declare-fun c!800173 () Bool)

(assert (=> d!1486537 (= c!800173 ((_ is Nil!52169) lt!1835726))))

(assert (=> d!1486537 (noDuplicateKeys!1758 lt!1835726)))

(assert (=> d!1486537 (= (addToMapMapFromBucket!1190 lt!1835726 lt!1835727) lt!1836061)))

(assert (=> b!4675984 (= e!2917627 lt!1835727)))

(declare-fun lt!1836067 () Unit!121617)

(declare-fun call!326771 () Unit!121617)

(assert (=> b!4675984 (= lt!1836067 call!326771)))

(declare-fun call!326769 () Bool)

(assert (=> b!4675984 call!326769))

(declare-fun lt!1836076 () Unit!121617)

(assert (=> b!4675984 (= lt!1836076 lt!1836067)))

(declare-fun call!326770 () Bool)

(assert (=> b!4675984 call!326770))

(declare-fun lt!1836068 () Unit!121617)

(declare-fun Unit!121700 () Unit!121617)

(assert (=> b!4675984 (= lt!1836068 Unit!121700)))

(assert (=> b!4675985 (= e!2917627 lt!1836070)))

(declare-fun lt!1836071 () ListMap!4769)

(assert (=> b!4675985 (= lt!1836071 (+!2060 lt!1835727 (h!58366 lt!1835726)))))

(assert (=> b!4675985 (= lt!1836070 (addToMapMapFromBucket!1190 (t!359433 lt!1835726) (+!2060 lt!1835727 (h!58366 lt!1835726))))))

(declare-fun lt!1836073 () Unit!121617)

(assert (=> b!4675985 (= lt!1836073 call!326771)))

(assert (=> b!4675985 (forall!11179 (toList!5406 lt!1835727) lambda!203677)))

(declare-fun lt!1836065 () Unit!121617)

(assert (=> b!4675985 (= lt!1836065 lt!1836073)))

(assert (=> b!4675985 (forall!11179 (toList!5406 lt!1836071) lambda!203678)))

(declare-fun lt!1836081 () Unit!121617)

(declare-fun Unit!121701 () Unit!121617)

(assert (=> b!4675985 (= lt!1836081 Unit!121701)))

(assert (=> b!4675985 (forall!11179 (t!359433 lt!1835726) lambda!203678)))

(declare-fun lt!1836064 () Unit!121617)

(declare-fun Unit!121702 () Unit!121617)

(assert (=> b!4675985 (= lt!1836064 Unit!121702)))

(declare-fun lt!1836077 () Unit!121617)

(declare-fun Unit!121703 () Unit!121617)

(assert (=> b!4675985 (= lt!1836077 Unit!121703)))

(declare-fun lt!1836080 () Unit!121617)

(assert (=> b!4675985 (= lt!1836080 (forallContained!3334 (toList!5406 lt!1836071) lambda!203678 (h!58366 lt!1835726)))))

(assert (=> b!4675985 (contains!15318 lt!1836071 (_1!30007 (h!58366 lt!1835726)))))

(declare-fun lt!1836075 () Unit!121617)

(declare-fun Unit!121704 () Unit!121617)

(assert (=> b!4675985 (= lt!1836075 Unit!121704)))

(assert (=> b!4675985 (contains!15318 lt!1836070 (_1!30007 (h!58366 lt!1835726)))))

(declare-fun lt!1836069 () Unit!121617)

(declare-fun Unit!121705 () Unit!121617)

(assert (=> b!4675985 (= lt!1836069 Unit!121705)))

(assert (=> b!4675985 (forall!11179 lt!1835726 lambda!203678)))

(declare-fun lt!1836062 () Unit!121617)

(declare-fun Unit!121706 () Unit!121617)

(assert (=> b!4675985 (= lt!1836062 Unit!121706)))

(assert (=> b!4675985 call!326770))

(declare-fun lt!1836079 () Unit!121617)

(declare-fun Unit!121707 () Unit!121617)

(assert (=> b!4675985 (= lt!1836079 Unit!121707)))

(declare-fun lt!1836074 () Unit!121617)

(declare-fun Unit!121708 () Unit!121617)

(assert (=> b!4675985 (= lt!1836074 Unit!121708)))

(declare-fun lt!1836066 () Unit!121617)

(assert (=> b!4675985 (= lt!1836066 (addForallContainsKeyThenBeforeAdding!649 lt!1835727 lt!1836070 (_1!30007 (h!58366 lt!1835726)) (_2!30007 (h!58366 lt!1835726))))))

(assert (=> b!4675985 call!326769))

(declare-fun lt!1836072 () Unit!121617)

(assert (=> b!4675985 (= lt!1836072 lt!1836066)))

(assert (=> b!4675985 (forall!11179 (toList!5406 lt!1835727) lambda!203678)))

(declare-fun lt!1836078 () Unit!121617)

(declare-fun Unit!121709 () Unit!121617)

(assert (=> b!4675985 (= lt!1836078 Unit!121709)))

(declare-fun res!1969371 () Bool)

(assert (=> b!4675985 (= res!1969371 (forall!11179 lt!1835726 lambda!203678))))

(assert (=> b!4675985 (=> (not res!1969371) (not e!2917629))))

(assert (=> b!4675985 e!2917629))

(declare-fun lt!1836063 () Unit!121617)

(declare-fun Unit!121710 () Unit!121617)

(assert (=> b!4675985 (= lt!1836063 Unit!121710)))

(declare-fun b!4675986 () Bool)

(assert (=> b!4675986 (= e!2917628 (invariantList!1362 (toList!5406 lt!1836061)))))

(declare-fun bm!326764 () Bool)

(assert (=> bm!326764 (= call!326770 (forall!11179 (ite c!800173 (toList!5406 lt!1835727) (toList!5406 lt!1836071)) (ite c!800173 lambda!203676 lambda!203678)))))

(declare-fun bm!326765 () Bool)

(assert (=> bm!326765 (= call!326769 (forall!11179 (toList!5406 lt!1835727) (ite c!800173 lambda!203676 lambda!203678)))))

(declare-fun bm!326766 () Bool)

(assert (=> bm!326766 (= call!326771 (lemmaContainsAllItsOwnKeys!650 lt!1835727))))

(assert (= (and d!1486537 c!800173) b!4675984))

(assert (= (and d!1486537 (not c!800173)) b!4675985))

(assert (= (and b!4675985 res!1969371) b!4675982))

(assert (= (or b!4675984 b!4675985) bm!326766))

(assert (= (or b!4675984 b!4675985) bm!326765))

(assert (= (or b!4675984 b!4675985) bm!326764))

(assert (= (and d!1486537 res!1969370) b!4675983))

(assert (= (and b!4675983 res!1969369) b!4675986))

(declare-fun m!5569905 () Bool)

(assert (=> bm!326764 m!5569905))

(assert (=> bm!326766 m!5569605))

(declare-fun m!5569907 () Bool)

(assert (=> d!1486537 m!5569907))

(assert (=> d!1486537 m!5569665))

(declare-fun m!5569909 () Bool)

(assert (=> b!4675982 m!5569909))

(declare-fun m!5569911 () Bool)

(assert (=> bm!326765 m!5569911))

(declare-fun m!5569913 () Bool)

(assert (=> b!4675985 m!5569913))

(assert (=> b!4675985 m!5569913))

(declare-fun m!5569915 () Bool)

(assert (=> b!4675985 m!5569915))

(declare-fun m!5569917 () Bool)

(assert (=> b!4675985 m!5569917))

(assert (=> b!4675985 m!5569917))

(declare-fun m!5569919 () Bool)

(assert (=> b!4675985 m!5569919))

(assert (=> b!4675985 m!5569909))

(declare-fun m!5569921 () Bool)

(assert (=> b!4675985 m!5569921))

(declare-fun m!5569923 () Bool)

(assert (=> b!4675985 m!5569923))

(declare-fun m!5569925 () Bool)

(assert (=> b!4675985 m!5569925))

(declare-fun m!5569927 () Bool)

(assert (=> b!4675985 m!5569927))

(declare-fun m!5569929 () Bool)

(assert (=> b!4675985 m!5569929))

(declare-fun m!5569931 () Bool)

(assert (=> b!4675985 m!5569931))

(declare-fun m!5569933 () Bool)

(assert (=> b!4675983 m!5569933))

(declare-fun m!5569935 () Bool)

(assert (=> b!4675986 m!5569935))

(assert (=> b!4675749 d!1486537))

(declare-fun b!4675998 () Bool)

(declare-fun e!2917635 () List!52293)

(assert (=> b!4675998 (= e!2917635 Nil!52169)))

(declare-fun b!4675995 () Bool)

(declare-fun e!2917634 () List!52293)

(assert (=> b!4675995 (= e!2917634 (t!359433 oldBucket!34))))

(declare-fun d!1486539 () Bool)

(declare-fun lt!1836084 () List!52293)

(assert (=> d!1486539 (not (containsKey!2895 lt!1836084 key!4653))))

(assert (=> d!1486539 (= lt!1836084 e!2917634)))

(declare-fun c!800178 () Bool)

(assert (=> d!1486539 (= c!800178 (and ((_ is Cons!52169) oldBucket!34) (= (_1!30007 (h!58366 oldBucket!34)) key!4653)))))

(assert (=> d!1486539 (noDuplicateKeys!1758 oldBucket!34)))

(assert (=> d!1486539 (= (removePairForKey!1353 oldBucket!34 key!4653) lt!1836084)))

(declare-fun b!4675996 () Bool)

(assert (=> b!4675996 (= e!2917634 e!2917635)))

(declare-fun c!800179 () Bool)

(assert (=> b!4675996 (= c!800179 ((_ is Cons!52169) oldBucket!34))))

(declare-fun b!4675997 () Bool)

(assert (=> b!4675997 (= e!2917635 (Cons!52169 (h!58366 oldBucket!34) (removePairForKey!1353 (t!359433 oldBucket!34) key!4653)))))

(assert (= (and d!1486539 c!800178) b!4675995))

(assert (= (and d!1486539 (not c!800178)) b!4675996))

(assert (= (and b!4675996 c!800179) b!4675997))

(assert (= (and b!4675996 (not c!800179)) b!4675998))

(declare-fun m!5569937 () Bool)

(assert (=> d!1486539 m!5569937))

(assert (=> d!1486539 m!5569433))

(declare-fun m!5569939 () Bool)

(assert (=> b!4675997 m!5569939))

(assert (=> b!4675760 d!1486539))

(declare-fun d!1486541 () Bool)

(declare-fun hash!3924 (Hashable!6127 K!13545) (_ BitVec 64))

(assert (=> d!1486541 (= (hash!3922 hashF!1323 key!4653) (hash!3924 hashF!1323 key!4653))))

(declare-fun bs!1080031 () Bool)

(assert (= bs!1080031 d!1486541))

(declare-fun m!5569941 () Bool)

(assert (=> bs!1080031 m!5569941))

(assert (=> b!4675761 d!1486541))

(declare-fun d!1486543 () Bool)

(assert (=> d!1486543 (= (head!9807 (toList!5405 lm!2023)) (h!58367 (toList!5405 lm!2023)))))

(assert (=> b!4675751 d!1486543))

(declare-fun b!4676003 () Bool)

(declare-fun e!2917638 () Bool)

(declare-fun tp!1344588 () Bool)

(declare-fun tp!1344589 () Bool)

(assert (=> b!4676003 (= e!2917638 (and tp!1344588 tp!1344589))))

(assert (=> b!4675758 (= tp!1344573 e!2917638)))

(assert (= (and b!4675758 ((_ is Cons!52170) (toList!5405 lm!2023))) b!4676003))

(declare-fun tp!1344592 () Bool)

(declare-fun b!4676008 () Bool)

(declare-fun e!2917641 () Bool)

(assert (=> b!4676008 (= e!2917641 (and tp_is_empty!30325 tp_is_empty!30327 tp!1344592))))

(assert (=> b!4675759 (= tp!1344571 e!2917641)))

(assert (= (and b!4675759 ((_ is Cons!52169) (t!359433 newBucket!218))) b!4676008))

(declare-fun b!4676009 () Bool)

(declare-fun e!2917642 () Bool)

(declare-fun tp!1344593 () Bool)

(assert (=> b!4676009 (= e!2917642 (and tp_is_empty!30325 tp_is_empty!30327 tp!1344593))))

(assert (=> b!4675750 (= tp!1344572 e!2917642)))

(assert (= (and b!4675750 ((_ is Cons!52169) (t!359433 oldBucket!34))) b!4676009))

(declare-fun b_lambda!176561 () Bool)

(assert (= b_lambda!176553 (or start!471920 b_lambda!176561)))

(declare-fun bs!1080032 () Bool)

(declare-fun d!1486545 () Bool)

(assert (= bs!1080032 (and d!1486545 start!471920)))

(assert (=> bs!1080032 (= (dynLambda!21664 lambda!203565 (h!58367 (t!359434 (toList!5405 lm!2023)))) (noDuplicateKeys!1758 (_2!30008 (h!58367 (t!359434 (toList!5405 lm!2023))))))))

(declare-fun m!5569943 () Bool)

(assert (=> bs!1080032 m!5569943))

(assert (=> b!4675898 d!1486545))

(declare-fun b_lambda!176563 () Bool)

(assert (= b_lambda!176559 (or start!471920 b_lambda!176563)))

(declare-fun bs!1080033 () Bool)

(declare-fun d!1486547 () Bool)

(assert (= bs!1080033 (and d!1486547 start!471920)))

(assert (=> bs!1080033 (= (dynLambda!21664 lambda!203565 (h!58367 (toList!5405 lm!2023))) (noDuplicateKeys!1758 (_2!30008 (h!58367 (toList!5405 lm!2023)))))))

(assert (=> bs!1080033 m!5569775))

(assert (=> b!4675969 d!1486547))

(check-sat (not bm!326762) (not bm!326749) (not b_lambda!176561) (not bm!326761) (not b!4675983) (not d!1486435) (not d!1486513) (not b!4675884) (not b!4675982) (not b!4675920) tp_is_empty!30325 (not bm!326766) (not b!4675963) (not b!4675919) (not d!1486521) (not b!4675978) (not b!4675904) (not b!4676008) (not bm!326756) (not d!1486541) (not b!4675971) (not d!1486531) (not d!1486537) (not d!1486497) (not d!1486479) (not b!4675922) (not bs!1080033) (not b!4675964) (not b!4675953) (not d!1486539) (not b!4675885) (not bm!326751) (not bm!326757) (not b!4676003) (not b!4675973) (not b!4675923) (not b!4675951) (not b_lambda!176563) (not b!4675858) (not d!1486511) (not b!4675980) (not bm!326750) (not b!4675981) (not d!1486507) (not d!1486509) (not b!4675928) (not d!1486529) (not bs!1080032) (not b!4675970) (not b!4675855) (not b!4675857) (not d!1486473) (not b!4675977) (not b!4675957) (not b!4675986) (not bm!326755) (not d!1486515) (not b!4675948) (not d!1486527) (not b!4675905) tp_is_empty!30327 (not b!4675955) (not d!1486523) (not b!4675975) (not bm!326764) (not d!1486499) (not b!4676009) (not b!4675950) (not bm!326765) (not bm!326763) (not b!4675899) (not b!4675976) (not b!4675854) (not d!1486535) (not b!4675985) (not bm!326760) (not b!4675997) (not b!4675949) (not d!1486517) (not b!4675956))
(check-sat)

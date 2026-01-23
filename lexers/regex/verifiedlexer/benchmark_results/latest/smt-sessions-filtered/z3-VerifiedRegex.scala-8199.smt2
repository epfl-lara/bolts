; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423148 () Bool)

(assert start!423148)

(declare-fun e!2716433 () Bool)

(declare-datatypes ((V!10646 0))(
  ( (V!10647 (val!16591 Int)) )
))
(declare-datatypes ((K!10400 0))(
  ( (K!10401 (val!16592 Int)) )
))
(declare-datatypes ((tuple2!48502 0))(
  ( (tuple2!48503 (_1!27545 K!10400) (_2!27545 V!10646)) )
))
(declare-datatypes ((List!49161 0))(
  ( (Nil!49037) (Cons!49037 (h!54606 tuple2!48502) (t!356081 List!49161)) )
))
(declare-datatypes ((tuple2!48504 0))(
  ( (tuple2!48505 (_1!27546 (_ BitVec 64)) (_2!27546 List!49161)) )
))
(declare-datatypes ((List!49162 0))(
  ( (Nil!49038) (Cons!49038 (h!54607 tuple2!48504) (t!356082 List!49162)) )
))
(declare-datatypes ((ListLongMap!1699 0))(
  ( (ListLongMap!1700 (toList!3049 List!49162)) )
))
(declare-fun lt!1577421 () ListLongMap!1699)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lt!1577413 () tuple2!48504)

(declare-fun b!4364738 () Bool)

(declare-fun lm!1707 () ListLongMap!1699)

(get-info :version)

(assert (=> b!4364738 (= e!2716433 (or (not ((_ is Cons!49038) (toList!3049 lm!1707))) (not (= (_1!27546 (h!54607 (toList!3049 lm!1707))) hash!377)) (= lt!1577421 (ListLongMap!1700 (Cons!49038 lt!1577413 (t!356082 (toList!3049 lm!1707)))))))))

(declare-fun b!4364739 () Bool)

(declare-fun res!1795300 () Bool)

(declare-fun e!2716436 () Bool)

(assert (=> b!4364739 (=> (not res!1795300) (not e!2716436))))

(declare-fun contains!11303 (ListLongMap!1699 (_ BitVec 64)) Bool)

(assert (=> b!4364739 (= res!1795300 (contains!11303 lm!1707 hash!377))))

(declare-fun b!4364740 () Bool)

(declare-fun res!1795294 () Bool)

(assert (=> b!4364740 (=> (not res!1795294) (not e!2716433))))

(declare-fun lambda!142401 () Int)

(declare-fun forall!9188 (List!49162 Int) Bool)

(assert (=> b!4364740 (= res!1795294 (forall!9188 (toList!3049 lt!1577421) lambda!142401))))

(declare-fun b!4364741 () Bool)

(declare-fun res!1795303 () Bool)

(declare-fun e!2716432 () Bool)

(assert (=> b!4364741 (=> (not res!1795303) (not e!2716432))))

(declare-datatypes ((Hashable!4925 0))(
  ( (HashableExt!4924 (__x!30628 Int)) )
))
(declare-fun hashF!1247 () Hashable!4925)

(declare-fun allKeysSameHashInMap!637 (ListLongMap!1699 Hashable!4925) Bool)

(assert (=> b!4364741 (= res!1795303 (allKeysSameHashInMap!637 lm!1707 hashF!1247))))

(declare-fun b!4364742 () Bool)

(declare-fun e!2716435 () Bool)

(assert (=> b!4364742 (= e!2716436 (not e!2716435))))

(declare-fun res!1795297 () Bool)

(assert (=> b!4364742 (=> res!1795297 e!2716435)))

(declare-fun newBucket!200 () List!49161)

(declare-fun lt!1577423 () List!49161)

(assert (=> b!4364742 (= res!1795297 (not (= newBucket!200 lt!1577423)))))

(declare-fun lt!1577424 () tuple2!48502)

(declare-fun lt!1577428 () List!49161)

(assert (=> b!4364742 (= lt!1577423 (Cons!49037 lt!1577424 lt!1577428))))

(declare-fun lt!1577427 () List!49161)

(declare-fun key!3918 () K!10400)

(declare-fun removePairForKey!503 (List!49161 K!10400) List!49161)

(assert (=> b!4364742 (= lt!1577428 (removePairForKey!503 lt!1577427 key!3918))))

(declare-fun newValue!99 () V!10646)

(assert (=> b!4364742 (= lt!1577424 (tuple2!48503 key!3918 newValue!99))))

(declare-datatypes ((Unit!72893 0))(
  ( (Unit!72894) )
))
(declare-fun lt!1577415 () Unit!72893)

(declare-fun lt!1577430 () tuple2!48504)

(declare-fun forallContained!1829 (List!49162 Int tuple2!48504) Unit!72893)

(assert (=> b!4364742 (= lt!1577415 (forallContained!1829 (toList!3049 lm!1707) lambda!142401 lt!1577430))))

(declare-fun contains!11304 (List!49162 tuple2!48504) Bool)

(assert (=> b!4364742 (contains!11304 (toList!3049 lm!1707) lt!1577430)))

(assert (=> b!4364742 (= lt!1577430 (tuple2!48505 hash!377 lt!1577427))))

(declare-fun lt!1577432 () Unit!72893)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!380 (List!49162 (_ BitVec 64) List!49161) Unit!72893)

(assert (=> b!4364742 (= lt!1577432 (lemmaGetValueByKeyImpliesContainsTuple!380 (toList!3049 lm!1707) hash!377 lt!1577427))))

(declare-fun apply!11385 (ListLongMap!1699 (_ BitVec 64)) List!49161)

(assert (=> b!4364742 (= lt!1577427 (apply!11385 lm!1707 hash!377))))

(declare-fun lt!1577416 () ListLongMap!1699)

(declare-fun e!2716434 () Bool)

(declare-fun lt!1577431 () List!49161)

(declare-fun b!4364744 () Bool)

(assert (=> b!4364744 (= e!2716434 (= (apply!11385 lt!1577416 hash!377) lt!1577431))))

(declare-fun b!4364745 () Bool)

(declare-fun res!1795293 () Bool)

(assert (=> b!4364745 (=> (not res!1795293) (not e!2716432))))

(declare-fun hash!1667 (Hashable!4925 K!10400) (_ BitVec 64))

(assert (=> b!4364745 (= res!1795293 (= (hash!1667 hashF!1247 key!3918) hash!377))))

(declare-fun b!4364746 () Bool)

(declare-fun res!1795305 () Bool)

(assert (=> b!4364746 (=> res!1795305 e!2716435)))

(declare-fun noDuplicateKeys!533 (List!49161) Bool)

(assert (=> b!4364746 (= res!1795305 (not (noDuplicateKeys!533 newBucket!200)))))

(declare-fun b!4364747 () Bool)

(declare-fun e!2716439 () Bool)

(declare-fun tp!1330582 () Bool)

(assert (=> b!4364747 (= e!2716439 tp!1330582)))

(declare-fun b!4364748 () Bool)

(declare-fun res!1795304 () Bool)

(assert (=> b!4364748 (=> (not res!1795304) (not e!2716432))))

(declare-fun allKeysSameHash!491 (List!49161 (_ BitVec 64) Hashable!4925) Bool)

(assert (=> b!4364748 (= res!1795304 (allKeysSameHash!491 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4364749 () Bool)

(assert (=> b!4364749 (= e!2716432 e!2716436)))

(declare-fun res!1795299 () Bool)

(assert (=> b!4364749 (=> (not res!1795299) (not e!2716436))))

(declare-datatypes ((ListMap!2293 0))(
  ( (ListMap!2294 (toList!3050 List!49161)) )
))
(declare-fun lt!1577426 () ListMap!2293)

(declare-fun contains!11305 (ListMap!2293 K!10400) Bool)

(assert (=> b!4364749 (= res!1795299 (contains!11305 lt!1577426 key!3918))))

(declare-fun extractMap!592 (List!49162) ListMap!2293)

(assert (=> b!4364749 (= lt!1577426 (extractMap!592 (toList!3049 lm!1707)))))

(declare-fun b!4364750 () Bool)

(declare-fun e!2716437 () Bool)

(declare-fun lt!1577411 () Bool)

(assert (=> b!4364750 (= e!2716437 (not lt!1577411))))

(assert (=> b!4364750 e!2716434))

(declare-fun res!1795295 () Bool)

(assert (=> b!4364750 (=> (not res!1795295) (not e!2716434))))

(declare-fun lt!1577420 () ListMap!2293)

(assert (=> b!4364750 (= res!1795295 (= lt!1577411 (contains!11305 lt!1577420 key!3918)))))

(declare-fun lt!1577414 () ListMap!2293)

(assert (=> b!4364750 (= lt!1577411 (contains!11305 lt!1577414 key!3918))))

(declare-fun lt!1577412 () Unit!72893)

(declare-fun lemmaEquivalentThenSameContains!102 (ListMap!2293 ListMap!2293 K!10400) Unit!72893)

(assert (=> b!4364750 (= lt!1577412 (lemmaEquivalentThenSameContains!102 lt!1577414 lt!1577420 key!3918))))

(declare-fun eq!295 (ListMap!2293 ListMap!2293) Bool)

(assert (=> b!4364750 (eq!295 lt!1577414 lt!1577420)))

(declare-fun -!252 (ListMap!2293 K!10400) ListMap!2293)

(assert (=> b!4364750 (= lt!1577420 (-!252 lt!1577426 key!3918))))

(declare-fun lt!1577429 () Unit!72893)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!67 (ListLongMap!1699 (_ BitVec 64) List!49161 K!10400 Hashable!4925) Unit!72893)

(assert (=> b!4364750 (= lt!1577429 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!67 lm!1707 hash!377 lt!1577431 key!3918 hashF!1247))))

(declare-fun lt!1577419 () ListMap!2293)

(assert (=> b!4364750 (= lt!1577419 lt!1577414)))

(assert (=> b!4364750 (= lt!1577414 (extractMap!592 (toList!3049 lt!1577416)))))

(assert (=> b!4364750 (= lt!1577431 lt!1577428)))

(declare-fun +!715 (ListLongMap!1699 tuple2!48504) ListLongMap!1699)

(assert (=> b!4364750 (= lt!1577416 (+!715 lm!1707 (tuple2!48505 hash!377 lt!1577431)))))

(declare-fun tail!7050 (List!49161) List!49161)

(assert (=> b!4364750 (= lt!1577431 (tail!7050 newBucket!200))))

(declare-fun e!2716440 () Bool)

(assert (=> b!4364750 e!2716440))

(declare-fun res!1795296 () Bool)

(assert (=> b!4364750 (=> (not res!1795296) (not e!2716440))))

(declare-fun lt!1577410 () ListMap!2293)

(declare-fun lt!1577417 () ListMap!2293)

(assert (=> b!4364750 (= res!1795296 (eq!295 lt!1577410 lt!1577417))))

(declare-fun +!716 (ListMap!2293 tuple2!48502) ListMap!2293)

(assert (=> b!4364750 (= lt!1577417 (+!716 lt!1577419 lt!1577424))))

(declare-fun lt!1577422 () ListMap!2293)

(declare-fun addToMapMapFromBucket!221 (List!49161 ListMap!2293) ListMap!2293)

(assert (=> b!4364750 (= lt!1577419 (addToMapMapFromBucket!221 lt!1577428 lt!1577422))))

(declare-fun lt!1577418 () Unit!72893)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!104 (ListMap!2293 K!10400 V!10646 List!49161) Unit!72893)

(assert (=> b!4364750 (= lt!1577418 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!104 lt!1577422 key!3918 newValue!99 lt!1577428))))

(declare-fun lt!1577434 () ListMap!2293)

(assert (=> b!4364750 (= lt!1577434 lt!1577410)))

(assert (=> b!4364750 (= lt!1577410 (addToMapMapFromBucket!221 lt!1577428 (+!716 lt!1577422 lt!1577424)))))

(declare-fun lt!1577425 () ListMap!2293)

(assert (=> b!4364750 (= lt!1577425 lt!1577434)))

(assert (=> b!4364750 (= lt!1577434 (addToMapMapFromBucket!221 lt!1577423 lt!1577422))))

(assert (=> b!4364750 (= lt!1577425 (addToMapMapFromBucket!221 newBucket!200 lt!1577422))))

(assert (=> b!4364750 (= lt!1577425 (extractMap!592 (toList!3049 lt!1577421)))))

(assert (=> b!4364750 (= lt!1577422 (extractMap!592 (t!356082 (toList!3049 lm!1707))))))

(declare-fun b!4364743 () Bool)

(assert (=> b!4364743 (= e!2716435 e!2716437)))

(declare-fun res!1795301 () Bool)

(assert (=> b!4364743 (=> res!1795301 e!2716437)))

(assert (=> b!4364743 (= res!1795301 (or (not ((_ is Cons!49038) (toList!3049 lm!1707))) (not (= (_1!27546 (h!54607 (toList!3049 lm!1707))) hash!377))))))

(assert (=> b!4364743 e!2716433))

(declare-fun res!1795298 () Bool)

(assert (=> b!4364743 (=> (not res!1795298) (not e!2716433))))

(assert (=> b!4364743 (= res!1795298 (forall!9188 (toList!3049 lt!1577421) lambda!142401))))

(assert (=> b!4364743 (= lt!1577421 (+!715 lm!1707 lt!1577413))))

(assert (=> b!4364743 (= lt!1577413 (tuple2!48505 hash!377 newBucket!200))))

(declare-fun lt!1577433 () Unit!72893)

(declare-fun addValidProp!187 (ListLongMap!1699 Int (_ BitVec 64) List!49161) Unit!72893)

(assert (=> b!4364743 (= lt!1577433 (addValidProp!187 lm!1707 lambda!142401 hash!377 newBucket!200))))

(assert (=> b!4364743 (forall!9188 (toList!3049 lm!1707) lambda!142401)))

(declare-fun res!1795302 () Bool)

(assert (=> start!423148 (=> (not res!1795302) (not e!2716432))))

(assert (=> start!423148 (= res!1795302 (forall!9188 (toList!3049 lm!1707) lambda!142401))))

(assert (=> start!423148 e!2716432))

(declare-fun e!2716438 () Bool)

(assert (=> start!423148 e!2716438))

(assert (=> start!423148 true))

(declare-fun inv!64586 (ListLongMap!1699) Bool)

(assert (=> start!423148 (and (inv!64586 lm!1707) e!2716439)))

(declare-fun tp_is_empty!25369 () Bool)

(assert (=> start!423148 tp_is_empty!25369))

(declare-fun tp_is_empty!25371 () Bool)

(assert (=> start!423148 tp_is_empty!25371))

(declare-fun b!4364751 () Bool)

(declare-fun tp!1330581 () Bool)

(assert (=> b!4364751 (= e!2716438 (and tp_is_empty!25369 tp_is_empty!25371 tp!1330581))))

(declare-fun b!4364752 () Bool)

(assert (=> b!4364752 (= e!2716440 (eq!295 lt!1577434 lt!1577417))))

(assert (= (and start!423148 res!1795302) b!4364741))

(assert (= (and b!4364741 res!1795303) b!4364745))

(assert (= (and b!4364745 res!1795293) b!4364748))

(assert (= (and b!4364748 res!1795304) b!4364749))

(assert (= (and b!4364749 res!1795299) b!4364739))

(assert (= (and b!4364739 res!1795300) b!4364742))

(assert (= (and b!4364742 (not res!1795297)) b!4364746))

(assert (= (and b!4364746 (not res!1795305)) b!4364743))

(assert (= (and b!4364743 res!1795298) b!4364740))

(assert (= (and b!4364740 res!1795294) b!4364738))

(assert (= (and b!4364743 (not res!1795301)) b!4364750))

(assert (= (and b!4364750 res!1795296) b!4364752))

(assert (= (and b!4364750 res!1795295) b!4364744))

(assert (= (and start!423148 ((_ is Cons!49037) newBucket!200)) b!4364751))

(assert (= start!423148 b!4364747))

(declare-fun m!4986547 () Bool)

(assert (=> b!4364744 m!4986547))

(declare-fun m!4986549 () Bool)

(assert (=> b!4364740 m!4986549))

(declare-fun m!4986551 () Bool)

(assert (=> b!4364752 m!4986551))

(declare-fun m!4986553 () Bool)

(assert (=> b!4364742 m!4986553))

(declare-fun m!4986555 () Bool)

(assert (=> b!4364742 m!4986555))

(declare-fun m!4986557 () Bool)

(assert (=> b!4364742 m!4986557))

(declare-fun m!4986559 () Bool)

(assert (=> b!4364742 m!4986559))

(declare-fun m!4986561 () Bool)

(assert (=> b!4364742 m!4986561))

(declare-fun m!4986563 () Bool)

(assert (=> b!4364739 m!4986563))

(declare-fun m!4986565 () Bool)

(assert (=> b!4364749 m!4986565))

(declare-fun m!4986567 () Bool)

(assert (=> b!4364749 m!4986567))

(declare-fun m!4986569 () Bool)

(assert (=> b!4364741 m!4986569))

(declare-fun m!4986571 () Bool)

(assert (=> b!4364750 m!4986571))

(declare-fun m!4986573 () Bool)

(assert (=> b!4364750 m!4986573))

(declare-fun m!4986575 () Bool)

(assert (=> b!4364750 m!4986575))

(declare-fun m!4986577 () Bool)

(assert (=> b!4364750 m!4986577))

(declare-fun m!4986579 () Bool)

(assert (=> b!4364750 m!4986579))

(declare-fun m!4986581 () Bool)

(assert (=> b!4364750 m!4986581))

(declare-fun m!4986583 () Bool)

(assert (=> b!4364750 m!4986583))

(declare-fun m!4986585 () Bool)

(assert (=> b!4364750 m!4986585))

(declare-fun m!4986587 () Bool)

(assert (=> b!4364750 m!4986587))

(declare-fun m!4986589 () Bool)

(assert (=> b!4364750 m!4986589))

(declare-fun m!4986591 () Bool)

(assert (=> b!4364750 m!4986591))

(declare-fun m!4986593 () Bool)

(assert (=> b!4364750 m!4986593))

(declare-fun m!4986595 () Bool)

(assert (=> b!4364750 m!4986595))

(declare-fun m!4986597 () Bool)

(assert (=> b!4364750 m!4986597))

(declare-fun m!4986599 () Bool)

(assert (=> b!4364750 m!4986599))

(assert (=> b!4364750 m!4986595))

(declare-fun m!4986601 () Bool)

(assert (=> b!4364750 m!4986601))

(declare-fun m!4986603 () Bool)

(assert (=> b!4364750 m!4986603))

(declare-fun m!4986605 () Bool)

(assert (=> b!4364750 m!4986605))

(declare-fun m!4986607 () Bool)

(assert (=> b!4364750 m!4986607))

(declare-fun m!4986609 () Bool)

(assert (=> start!423148 m!4986609))

(declare-fun m!4986611 () Bool)

(assert (=> start!423148 m!4986611))

(declare-fun m!4986613 () Bool)

(assert (=> b!4364748 m!4986613))

(declare-fun m!4986615 () Bool)

(assert (=> b!4364746 m!4986615))

(assert (=> b!4364743 m!4986549))

(declare-fun m!4986617 () Bool)

(assert (=> b!4364743 m!4986617))

(declare-fun m!4986619 () Bool)

(assert (=> b!4364743 m!4986619))

(assert (=> b!4364743 m!4986609))

(declare-fun m!4986621 () Bool)

(assert (=> b!4364745 m!4986621))

(check-sat (not b!4364744) tp_is_empty!25369 (not b!4364740) (not b!4364739) (not b!4364742) (not b!4364747) tp_is_empty!25371 (not b!4364748) (not b!4364752) (not b!4364749) (not b!4364745) (not start!423148) (not b!4364750) (not b!4364743) (not b!4364741) (not b!4364751) (not b!4364746))
(check-sat)
(get-model)

(declare-fun d!1291690 () Bool)

(declare-datatypes ((Option!10504 0))(
  ( (None!10503) (Some!10503 (v!43433 List!49161)) )
))
(declare-fun get!15935 (Option!10504) List!49161)

(declare-fun getValueByKey!490 (List!49162 (_ BitVec 64)) Option!10504)

(assert (=> d!1291690 (= (apply!11385 lm!1707 hash!377) (get!15935 (getValueByKey!490 (toList!3049 lm!1707) hash!377)))))

(declare-fun bs!636603 () Bool)

(assert (= bs!636603 d!1291690))

(declare-fun m!4986631 () Bool)

(assert (=> bs!636603 m!4986631))

(assert (=> bs!636603 m!4986631))

(declare-fun m!4986633 () Bool)

(assert (=> bs!636603 m!4986633))

(assert (=> b!4364742 d!1291690))

(declare-fun d!1291696 () Bool)

(declare-fun lt!1577443 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7762 (List!49162) (InoxSet tuple2!48504))

(assert (=> d!1291696 (= lt!1577443 (select (content!7762 (toList!3049 lm!1707)) lt!1577430))))

(declare-fun e!2716457 () Bool)

(assert (=> d!1291696 (= lt!1577443 e!2716457)))

(declare-fun res!1795316 () Bool)

(assert (=> d!1291696 (=> (not res!1795316) (not e!2716457))))

(assert (=> d!1291696 (= res!1795316 ((_ is Cons!49038) (toList!3049 lm!1707)))))

(assert (=> d!1291696 (= (contains!11304 (toList!3049 lm!1707) lt!1577430) lt!1577443)))

(declare-fun b!4364775 () Bool)

(declare-fun e!2716458 () Bool)

(assert (=> b!4364775 (= e!2716457 e!2716458)))

(declare-fun res!1795317 () Bool)

(assert (=> b!4364775 (=> res!1795317 e!2716458)))

(assert (=> b!4364775 (= res!1795317 (= (h!54607 (toList!3049 lm!1707)) lt!1577430))))

(declare-fun b!4364776 () Bool)

(assert (=> b!4364776 (= e!2716458 (contains!11304 (t!356082 (toList!3049 lm!1707)) lt!1577430))))

(assert (= (and d!1291696 res!1795316) b!4364775))

(assert (= (and b!4364775 (not res!1795317)) b!4364776))

(declare-fun m!4986647 () Bool)

(assert (=> d!1291696 m!4986647))

(declare-fun m!4986649 () Bool)

(assert (=> d!1291696 m!4986649))

(declare-fun m!4986651 () Bool)

(assert (=> b!4364776 m!4986651))

(assert (=> b!4364742 d!1291696))

(declare-fun d!1291702 () Bool)

(assert (=> d!1291702 (contains!11304 (toList!3049 lm!1707) (tuple2!48505 hash!377 lt!1577427))))

(declare-fun lt!1577452 () Unit!72893)

(declare-fun choose!27099 (List!49162 (_ BitVec 64) List!49161) Unit!72893)

(assert (=> d!1291702 (= lt!1577452 (choose!27099 (toList!3049 lm!1707) hash!377 lt!1577427))))

(declare-fun e!2716479 () Bool)

(assert (=> d!1291702 e!2716479))

(declare-fun res!1795338 () Bool)

(assert (=> d!1291702 (=> (not res!1795338) (not e!2716479))))

(declare-fun isStrictlySorted!122 (List!49162) Bool)

(assert (=> d!1291702 (= res!1795338 (isStrictlySorted!122 (toList!3049 lm!1707)))))

(assert (=> d!1291702 (= (lemmaGetValueByKeyImpliesContainsTuple!380 (toList!3049 lm!1707) hash!377 lt!1577427) lt!1577452)))

(declare-fun b!4364797 () Bool)

(assert (=> b!4364797 (= e!2716479 (= (getValueByKey!490 (toList!3049 lm!1707) hash!377) (Some!10503 lt!1577427)))))

(assert (= (and d!1291702 res!1795338) b!4364797))

(declare-fun m!4986671 () Bool)

(assert (=> d!1291702 m!4986671))

(declare-fun m!4986673 () Bool)

(assert (=> d!1291702 m!4986673))

(declare-fun m!4986675 () Bool)

(assert (=> d!1291702 m!4986675))

(assert (=> b!4364797 m!4986631))

(assert (=> b!4364742 d!1291702))

(declare-fun d!1291712 () Bool)

(declare-fun dynLambda!20659 (Int tuple2!48504) Bool)

(assert (=> d!1291712 (dynLambda!20659 lambda!142401 lt!1577430)))

(declare-fun lt!1577455 () Unit!72893)

(declare-fun choose!27100 (List!49162 Int tuple2!48504) Unit!72893)

(assert (=> d!1291712 (= lt!1577455 (choose!27100 (toList!3049 lm!1707) lambda!142401 lt!1577430))))

(declare-fun e!2716482 () Bool)

(assert (=> d!1291712 e!2716482))

(declare-fun res!1795341 () Bool)

(assert (=> d!1291712 (=> (not res!1795341) (not e!2716482))))

(assert (=> d!1291712 (= res!1795341 (forall!9188 (toList!3049 lm!1707) lambda!142401))))

(assert (=> d!1291712 (= (forallContained!1829 (toList!3049 lm!1707) lambda!142401 lt!1577430) lt!1577455)))

(declare-fun b!4364800 () Bool)

(assert (=> b!4364800 (= e!2716482 (contains!11304 (toList!3049 lm!1707) lt!1577430))))

(assert (= (and d!1291712 res!1795341) b!4364800))

(declare-fun b_lambda!132207 () Bool)

(assert (=> (not b_lambda!132207) (not d!1291712)))

(declare-fun m!4986677 () Bool)

(assert (=> d!1291712 m!4986677))

(declare-fun m!4986679 () Bool)

(assert (=> d!1291712 m!4986679))

(assert (=> d!1291712 m!4986609))

(assert (=> b!4364800 m!4986555))

(assert (=> b!4364742 d!1291712))

(declare-fun b!4364829 () Bool)

(declare-fun e!2716500 () List!49161)

(assert (=> b!4364829 (= e!2716500 (Cons!49037 (h!54606 lt!1577427) (removePairForKey!503 (t!356081 lt!1577427) key!3918)))))

(declare-fun b!4364828 () Bool)

(declare-fun e!2716499 () List!49161)

(assert (=> b!4364828 (= e!2716499 e!2716500)))

(declare-fun c!742107 () Bool)

(assert (=> b!4364828 (= c!742107 ((_ is Cons!49037) lt!1577427))))

(declare-fun d!1291714 () Bool)

(declare-fun lt!1577474 () List!49161)

(declare-fun containsKey!763 (List!49161 K!10400) Bool)

(assert (=> d!1291714 (not (containsKey!763 lt!1577474 key!3918))))

(assert (=> d!1291714 (= lt!1577474 e!2716499)))

(declare-fun c!742108 () Bool)

(assert (=> d!1291714 (= c!742108 (and ((_ is Cons!49037) lt!1577427) (= (_1!27545 (h!54606 lt!1577427)) key!3918)))))

(assert (=> d!1291714 (noDuplicateKeys!533 lt!1577427)))

(assert (=> d!1291714 (= (removePairForKey!503 lt!1577427 key!3918) lt!1577474)))

(declare-fun b!4364827 () Bool)

(assert (=> b!4364827 (= e!2716499 (t!356081 lt!1577427))))

(declare-fun b!4364830 () Bool)

(assert (=> b!4364830 (= e!2716500 Nil!49037)))

(assert (= (and d!1291714 c!742108) b!4364827))

(assert (= (and d!1291714 (not c!742108)) b!4364828))

(assert (= (and b!4364828 c!742107) b!4364829))

(assert (= (and b!4364828 (not c!742107)) b!4364830))

(declare-fun m!4986681 () Bool)

(assert (=> b!4364829 m!4986681))

(declare-fun m!4986683 () Bool)

(assert (=> d!1291714 m!4986683))

(declare-fun m!4986685 () Bool)

(assert (=> d!1291714 m!4986685))

(assert (=> b!4364742 d!1291714))

(declare-fun bs!636604 () Bool)

(declare-fun d!1291716 () Bool)

(assert (= bs!636604 (and d!1291716 start!423148)))

(declare-fun lambda!142404 () Int)

(assert (=> bs!636604 (not (= lambda!142404 lambda!142401))))

(assert (=> d!1291716 true))

(assert (=> d!1291716 (= (allKeysSameHashInMap!637 lm!1707 hashF!1247) (forall!9188 (toList!3049 lm!1707) lambda!142404))))

(declare-fun bs!636605 () Bool)

(assert (= bs!636605 d!1291716))

(declare-fun m!4986707 () Bool)

(assert (=> bs!636605 m!4986707))

(assert (=> b!4364741 d!1291716))

(declare-fun d!1291720 () Bool)

(declare-fun content!7763 (List!49161) (InoxSet tuple2!48502))

(assert (=> d!1291720 (= (eq!295 lt!1577434 lt!1577417) (= (content!7763 (toList!3050 lt!1577434)) (content!7763 (toList!3050 lt!1577417))))))

(declare-fun bs!636606 () Bool)

(assert (= bs!636606 d!1291720))

(declare-fun m!4986709 () Bool)

(assert (=> bs!636606 m!4986709))

(declare-fun m!4986711 () Bool)

(assert (=> bs!636606 m!4986711))

(assert (=> b!4364752 d!1291720))

(declare-fun d!1291722 () Bool)

(declare-fun res!1795355 () Bool)

(declare-fun e!2716514 () Bool)

(assert (=> d!1291722 (=> res!1795355 e!2716514)))

(assert (=> d!1291722 (= res!1795355 ((_ is Nil!49038) (toList!3049 lt!1577421)))))

(assert (=> d!1291722 (= (forall!9188 (toList!3049 lt!1577421) lambda!142401) e!2716514)))

(declare-fun b!4364852 () Bool)

(declare-fun e!2716515 () Bool)

(assert (=> b!4364852 (= e!2716514 e!2716515)))

(declare-fun res!1795356 () Bool)

(assert (=> b!4364852 (=> (not res!1795356) (not e!2716515))))

(assert (=> b!4364852 (= res!1795356 (dynLambda!20659 lambda!142401 (h!54607 (toList!3049 lt!1577421))))))

(declare-fun b!4364853 () Bool)

(assert (=> b!4364853 (= e!2716515 (forall!9188 (t!356082 (toList!3049 lt!1577421)) lambda!142401))))

(assert (= (and d!1291722 (not res!1795355)) b!4364852))

(assert (= (and b!4364852 res!1795356) b!4364853))

(declare-fun b_lambda!132209 () Bool)

(assert (=> (not b_lambda!132209) (not b!4364852)))

(declare-fun m!4986719 () Bool)

(assert (=> b!4364852 m!4986719))

(declare-fun m!4986721 () Bool)

(assert (=> b!4364853 m!4986721))

(assert (=> b!4364743 d!1291722))

(declare-fun d!1291726 () Bool)

(declare-fun e!2716519 () Bool)

(assert (=> d!1291726 e!2716519))

(declare-fun res!1795361 () Bool)

(assert (=> d!1291726 (=> (not res!1795361) (not e!2716519))))

(declare-fun lt!1577497 () ListLongMap!1699)

(assert (=> d!1291726 (= res!1795361 (contains!11303 lt!1577497 (_1!27546 lt!1577413)))))

(declare-fun lt!1577495 () List!49162)

(assert (=> d!1291726 (= lt!1577497 (ListLongMap!1700 lt!1577495))))

(declare-fun lt!1577498 () Unit!72893)

(declare-fun lt!1577496 () Unit!72893)

(assert (=> d!1291726 (= lt!1577498 lt!1577496)))

(assert (=> d!1291726 (= (getValueByKey!490 lt!1577495 (_1!27546 lt!1577413)) (Some!10503 (_2!27546 lt!1577413)))))

(declare-fun lemmaContainsTupThenGetReturnValue!263 (List!49162 (_ BitVec 64) List!49161) Unit!72893)

(assert (=> d!1291726 (= lt!1577496 (lemmaContainsTupThenGetReturnValue!263 lt!1577495 (_1!27546 lt!1577413) (_2!27546 lt!1577413)))))

(declare-fun insertStrictlySorted!152 (List!49162 (_ BitVec 64) List!49161) List!49162)

(assert (=> d!1291726 (= lt!1577495 (insertStrictlySorted!152 (toList!3049 lm!1707) (_1!27546 lt!1577413) (_2!27546 lt!1577413)))))

(assert (=> d!1291726 (= (+!715 lm!1707 lt!1577413) lt!1577497)))

(declare-fun b!4364862 () Bool)

(declare-fun res!1795362 () Bool)

(assert (=> b!4364862 (=> (not res!1795362) (not e!2716519))))

(assert (=> b!4364862 (= res!1795362 (= (getValueByKey!490 (toList!3049 lt!1577497) (_1!27546 lt!1577413)) (Some!10503 (_2!27546 lt!1577413))))))

(declare-fun b!4364863 () Bool)

(assert (=> b!4364863 (= e!2716519 (contains!11304 (toList!3049 lt!1577497) lt!1577413))))

(assert (= (and d!1291726 res!1795361) b!4364862))

(assert (= (and b!4364862 res!1795362) b!4364863))

(declare-fun m!4986733 () Bool)

(assert (=> d!1291726 m!4986733))

(declare-fun m!4986735 () Bool)

(assert (=> d!1291726 m!4986735))

(declare-fun m!4986737 () Bool)

(assert (=> d!1291726 m!4986737))

(declare-fun m!4986739 () Bool)

(assert (=> d!1291726 m!4986739))

(declare-fun m!4986741 () Bool)

(assert (=> b!4364862 m!4986741))

(declare-fun m!4986743 () Bool)

(assert (=> b!4364863 m!4986743))

(assert (=> b!4364743 d!1291726))

(declare-fun d!1291732 () Bool)

(assert (=> d!1291732 (forall!9188 (toList!3049 (+!715 lm!1707 (tuple2!48505 hash!377 newBucket!200))) lambda!142401)))

(declare-fun lt!1577513 () Unit!72893)

(declare-fun choose!27102 (ListLongMap!1699 Int (_ BitVec 64) List!49161) Unit!72893)

(assert (=> d!1291732 (= lt!1577513 (choose!27102 lm!1707 lambda!142401 hash!377 newBucket!200))))

(declare-fun e!2716529 () Bool)

(assert (=> d!1291732 e!2716529))

(declare-fun res!1795368 () Bool)

(assert (=> d!1291732 (=> (not res!1795368) (not e!2716529))))

(assert (=> d!1291732 (= res!1795368 (forall!9188 (toList!3049 lm!1707) lambda!142401))))

(assert (=> d!1291732 (= (addValidProp!187 lm!1707 lambda!142401 hash!377 newBucket!200) lt!1577513)))

(declare-fun b!4364878 () Bool)

(assert (=> b!4364878 (= e!2716529 (dynLambda!20659 lambda!142401 (tuple2!48505 hash!377 newBucket!200)))))

(assert (= (and d!1291732 res!1795368) b!4364878))

(declare-fun b_lambda!132211 () Bool)

(assert (=> (not b_lambda!132211) (not b!4364878)))

(declare-fun m!4986787 () Bool)

(assert (=> d!1291732 m!4986787))

(declare-fun m!4986789 () Bool)

(assert (=> d!1291732 m!4986789))

(declare-fun m!4986791 () Bool)

(assert (=> d!1291732 m!4986791))

(assert (=> d!1291732 m!4986609))

(declare-fun m!4986793 () Bool)

(assert (=> b!4364878 m!4986793))

(assert (=> b!4364743 d!1291732))

(declare-fun d!1291742 () Bool)

(declare-fun res!1795369 () Bool)

(declare-fun e!2716530 () Bool)

(assert (=> d!1291742 (=> res!1795369 e!2716530)))

(assert (=> d!1291742 (= res!1795369 ((_ is Nil!49038) (toList!3049 lm!1707)))))

(assert (=> d!1291742 (= (forall!9188 (toList!3049 lm!1707) lambda!142401) e!2716530)))

(declare-fun b!4364879 () Bool)

(declare-fun e!2716531 () Bool)

(assert (=> b!4364879 (= e!2716530 e!2716531)))

(declare-fun res!1795370 () Bool)

(assert (=> b!4364879 (=> (not res!1795370) (not e!2716531))))

(assert (=> b!4364879 (= res!1795370 (dynLambda!20659 lambda!142401 (h!54607 (toList!3049 lm!1707))))))

(declare-fun b!4364880 () Bool)

(assert (=> b!4364880 (= e!2716531 (forall!9188 (t!356082 (toList!3049 lm!1707)) lambda!142401))))

(assert (= (and d!1291742 (not res!1795369)) b!4364879))

(assert (= (and b!4364879 res!1795370) b!4364880))

(declare-fun b_lambda!132213 () Bool)

(assert (=> (not b_lambda!132213) (not b!4364879)))

(declare-fun m!4986795 () Bool)

(assert (=> b!4364879 m!4986795))

(declare-fun m!4986797 () Bool)

(assert (=> b!4364880 m!4986797))

(assert (=> b!4364743 d!1291742))

(declare-fun d!1291744 () Bool)

(declare-fun e!2716537 () Bool)

(assert (=> d!1291744 e!2716537))

(declare-fun res!1795373 () Bool)

(assert (=> d!1291744 (=> res!1795373 e!2716537)))

(declare-fun lt!1577524 () Bool)

(assert (=> d!1291744 (= res!1795373 (not lt!1577524))))

(declare-fun lt!1577523 () Bool)

(assert (=> d!1291744 (= lt!1577524 lt!1577523)))

(declare-fun lt!1577525 () Unit!72893)

(declare-fun e!2716536 () Unit!72893)

(assert (=> d!1291744 (= lt!1577525 e!2716536)))

(declare-fun c!742122 () Bool)

(assert (=> d!1291744 (= c!742122 lt!1577523)))

(declare-fun containsKey!764 (List!49162 (_ BitVec 64)) Bool)

(assert (=> d!1291744 (= lt!1577523 (containsKey!764 (toList!3049 lm!1707) hash!377))))

(assert (=> d!1291744 (= (contains!11303 lm!1707 hash!377) lt!1577524)))

(declare-fun b!4364887 () Bool)

(declare-fun lt!1577522 () Unit!72893)

(assert (=> b!4364887 (= e!2716536 lt!1577522)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!400 (List!49162 (_ BitVec 64)) Unit!72893)

(assert (=> b!4364887 (= lt!1577522 (lemmaContainsKeyImpliesGetValueByKeyDefined!400 (toList!3049 lm!1707) hash!377))))

(declare-fun isDefined!7797 (Option!10504) Bool)

(assert (=> b!4364887 (isDefined!7797 (getValueByKey!490 (toList!3049 lm!1707) hash!377))))

(declare-fun b!4364888 () Bool)

(declare-fun Unit!72910 () Unit!72893)

(assert (=> b!4364888 (= e!2716536 Unit!72910)))

(declare-fun b!4364889 () Bool)

(assert (=> b!4364889 (= e!2716537 (isDefined!7797 (getValueByKey!490 (toList!3049 lm!1707) hash!377)))))

(assert (= (and d!1291744 c!742122) b!4364887))

(assert (= (and d!1291744 (not c!742122)) b!4364888))

(assert (= (and d!1291744 (not res!1795373)) b!4364889))

(declare-fun m!4986799 () Bool)

(assert (=> d!1291744 m!4986799))

(declare-fun m!4986801 () Bool)

(assert (=> b!4364887 m!4986801))

(assert (=> b!4364887 m!4986631))

(assert (=> b!4364887 m!4986631))

(declare-fun m!4986803 () Bool)

(assert (=> b!4364887 m!4986803))

(assert (=> b!4364889 m!4986631))

(assert (=> b!4364889 m!4986631))

(assert (=> b!4364889 m!4986803))

(assert (=> b!4364739 d!1291744))

(declare-fun bs!636625 () Bool)

(declare-fun d!1291746 () Bool)

(assert (= bs!636625 (and d!1291746 start!423148)))

(declare-fun lambda!142418 () Int)

(assert (=> bs!636625 (= lambda!142418 lambda!142401)))

(declare-fun bs!636626 () Bool)

(assert (= bs!636626 (and d!1291746 d!1291716)))

(assert (=> bs!636626 (not (= lambda!142418 lambda!142404))))

(declare-fun lt!1577528 () ListMap!2293)

(declare-fun invariantList!696 (List!49161) Bool)

(assert (=> d!1291746 (invariantList!696 (toList!3050 lt!1577528))))

(declare-fun e!2716540 () ListMap!2293)

(assert (=> d!1291746 (= lt!1577528 e!2716540)))

(declare-fun c!742125 () Bool)

(assert (=> d!1291746 (= c!742125 ((_ is Cons!49038) (toList!3049 lt!1577416)))))

(assert (=> d!1291746 (forall!9188 (toList!3049 lt!1577416) lambda!142418)))

(assert (=> d!1291746 (= (extractMap!592 (toList!3049 lt!1577416)) lt!1577528)))

(declare-fun b!4364894 () Bool)

(assert (=> b!4364894 (= e!2716540 (addToMapMapFromBucket!221 (_2!27546 (h!54607 (toList!3049 lt!1577416))) (extractMap!592 (t!356082 (toList!3049 lt!1577416)))))))

(declare-fun b!4364895 () Bool)

(assert (=> b!4364895 (= e!2716540 (ListMap!2294 Nil!49037))))

(assert (= (and d!1291746 c!742125) b!4364894))

(assert (= (and d!1291746 (not c!742125)) b!4364895))

(declare-fun m!4986805 () Bool)

(assert (=> d!1291746 m!4986805))

(declare-fun m!4986807 () Bool)

(assert (=> d!1291746 m!4986807))

(declare-fun m!4986809 () Bool)

(assert (=> b!4364894 m!4986809))

(assert (=> b!4364894 m!4986809))

(declare-fun m!4986811 () Bool)

(assert (=> b!4364894 m!4986811))

(assert (=> b!4364750 d!1291746))

(declare-fun b!4364914 () Bool)

(declare-datatypes ((List!49164 0))(
  ( (Nil!49040) (Cons!49040 (h!54611 K!10400) (t!356084 List!49164)) )
))
(declare-fun e!2716557 () List!49164)

(declare-fun getKeysList!144 (List!49161) List!49164)

(assert (=> b!4364914 (= e!2716557 (getKeysList!144 (toList!3050 lt!1577414)))))

(declare-fun b!4364915 () Bool)

(declare-fun e!2716556 () Bool)

(declare-fun contains!11308 (List!49164 K!10400) Bool)

(declare-fun keys!16590 (ListMap!2293) List!49164)

(assert (=> b!4364915 (= e!2716556 (not (contains!11308 (keys!16590 lt!1577414) key!3918)))))

(declare-fun b!4364916 () Bool)

(declare-fun e!2716553 () Unit!72893)

(declare-fun e!2716554 () Unit!72893)

(assert (=> b!4364916 (= e!2716553 e!2716554)))

(declare-fun c!742134 () Bool)

(declare-fun call!303404 () Bool)

(assert (=> b!4364916 (= c!742134 call!303404)))

(declare-fun b!4364917 () Bool)

(assert (=> b!4364917 (= e!2716557 (keys!16590 lt!1577414))))

(declare-fun b!4364918 () Bool)

(assert (=> b!4364918 false))

(declare-fun lt!1577545 () Unit!72893)

(declare-fun lt!1577551 () Unit!72893)

(assert (=> b!4364918 (= lt!1577545 lt!1577551)))

(declare-fun containsKey!765 (List!49161 K!10400) Bool)

(assert (=> b!4364918 (containsKey!765 (toList!3050 lt!1577414) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!142 (List!49161 K!10400) Unit!72893)

(assert (=> b!4364918 (= lt!1577551 (lemmaInGetKeysListThenContainsKey!142 (toList!3050 lt!1577414) key!3918))))

(declare-fun Unit!72922 () Unit!72893)

(assert (=> b!4364918 (= e!2716554 Unit!72922)))

(declare-fun b!4364919 () Bool)

(declare-fun e!2716558 () Bool)

(declare-fun e!2716555 () Bool)

(assert (=> b!4364919 (= e!2716558 e!2716555)))

(declare-fun res!1795382 () Bool)

(assert (=> b!4364919 (=> (not res!1795382) (not e!2716555))))

(declare-datatypes ((Option!10505 0))(
  ( (None!10504) (Some!10504 (v!43434 V!10646)) )
))
(declare-fun isDefined!7798 (Option!10505) Bool)

(declare-fun getValueByKey!491 (List!49161 K!10400) Option!10505)

(assert (=> b!4364919 (= res!1795382 (isDefined!7798 (getValueByKey!491 (toList!3050 lt!1577414) key!3918)))))

(declare-fun b!4364921 () Bool)

(declare-fun Unit!72923 () Unit!72893)

(assert (=> b!4364921 (= e!2716554 Unit!72923)))

(declare-fun b!4364922 () Bool)

(declare-fun lt!1577548 () Unit!72893)

(assert (=> b!4364922 (= e!2716553 lt!1577548)))

(declare-fun lt!1577546 () Unit!72893)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!401 (List!49161 K!10400) Unit!72893)

(assert (=> b!4364922 (= lt!1577546 (lemmaContainsKeyImpliesGetValueByKeyDefined!401 (toList!3050 lt!1577414) key!3918))))

(assert (=> b!4364922 (isDefined!7798 (getValueByKey!491 (toList!3050 lt!1577414) key!3918))))

(declare-fun lt!1577549 () Unit!72893)

(assert (=> b!4364922 (= lt!1577549 lt!1577546)))

(declare-fun lemmaInListThenGetKeysListContains!141 (List!49161 K!10400) Unit!72893)

(assert (=> b!4364922 (= lt!1577548 (lemmaInListThenGetKeysListContains!141 (toList!3050 lt!1577414) key!3918))))

(assert (=> b!4364922 call!303404))

(declare-fun bm!303399 () Bool)

(assert (=> bm!303399 (= call!303404 (contains!11308 e!2716557 key!3918))))

(declare-fun c!742132 () Bool)

(declare-fun c!742133 () Bool)

(assert (=> bm!303399 (= c!742132 c!742133)))

(declare-fun b!4364920 () Bool)

(assert (=> b!4364920 (= e!2716555 (contains!11308 (keys!16590 lt!1577414) key!3918))))

(declare-fun d!1291748 () Bool)

(assert (=> d!1291748 e!2716558))

(declare-fun res!1795381 () Bool)

(assert (=> d!1291748 (=> res!1795381 e!2716558)))

(assert (=> d!1291748 (= res!1795381 e!2716556)))

(declare-fun res!1795380 () Bool)

(assert (=> d!1291748 (=> (not res!1795380) (not e!2716556))))

(declare-fun lt!1577550 () Bool)

(assert (=> d!1291748 (= res!1795380 (not lt!1577550))))

(declare-fun lt!1577552 () Bool)

(assert (=> d!1291748 (= lt!1577550 lt!1577552)))

(declare-fun lt!1577547 () Unit!72893)

(assert (=> d!1291748 (= lt!1577547 e!2716553)))

(assert (=> d!1291748 (= c!742133 lt!1577552)))

(assert (=> d!1291748 (= lt!1577552 (containsKey!765 (toList!3050 lt!1577414) key!3918))))

(assert (=> d!1291748 (= (contains!11305 lt!1577414 key!3918) lt!1577550)))

(assert (= (and d!1291748 c!742133) b!4364922))

(assert (= (and d!1291748 (not c!742133)) b!4364916))

(assert (= (and b!4364916 c!742134) b!4364918))

(assert (= (and b!4364916 (not c!742134)) b!4364921))

(assert (= (or b!4364922 b!4364916) bm!303399))

(assert (= (and bm!303399 c!742132) b!4364914))

(assert (= (and bm!303399 (not c!742132)) b!4364917))

(assert (= (and d!1291748 res!1795380) b!4364915))

(assert (= (and d!1291748 (not res!1795381)) b!4364919))

(assert (= (and b!4364919 res!1795382) b!4364920))

(declare-fun m!4986813 () Bool)

(assert (=> b!4364920 m!4986813))

(assert (=> b!4364920 m!4986813))

(declare-fun m!4986815 () Bool)

(assert (=> b!4364920 m!4986815))

(declare-fun m!4986817 () Bool)

(assert (=> d!1291748 m!4986817))

(declare-fun m!4986819 () Bool)

(assert (=> b!4364914 m!4986819))

(declare-fun m!4986821 () Bool)

(assert (=> bm!303399 m!4986821))

(declare-fun m!4986823 () Bool)

(assert (=> b!4364919 m!4986823))

(assert (=> b!4364919 m!4986823))

(declare-fun m!4986825 () Bool)

(assert (=> b!4364919 m!4986825))

(assert (=> b!4364918 m!4986817))

(declare-fun m!4986827 () Bool)

(assert (=> b!4364918 m!4986827))

(assert (=> b!4364915 m!4986813))

(assert (=> b!4364915 m!4986813))

(assert (=> b!4364915 m!4986815))

(assert (=> b!4364917 m!4986813))

(declare-fun m!4986829 () Bool)

(assert (=> b!4364922 m!4986829))

(assert (=> b!4364922 m!4986823))

(assert (=> b!4364922 m!4986823))

(assert (=> b!4364922 m!4986825))

(declare-fun m!4986831 () Bool)

(assert (=> b!4364922 m!4986831))

(assert (=> b!4364750 d!1291748))

(declare-fun d!1291750 () Bool)

(assert (=> d!1291750 (eq!295 (addToMapMapFromBucket!221 lt!1577428 (+!716 lt!1577422 (tuple2!48503 key!3918 newValue!99))) (+!716 (addToMapMapFromBucket!221 lt!1577428 lt!1577422) (tuple2!48503 key!3918 newValue!99)))))

(declare-fun lt!1577597 () Unit!72893)

(declare-fun choose!27104 (ListMap!2293 K!10400 V!10646 List!49161) Unit!72893)

(assert (=> d!1291750 (= lt!1577597 (choose!27104 lt!1577422 key!3918 newValue!99 lt!1577428))))

(assert (=> d!1291750 (not (containsKey!763 lt!1577428 key!3918))))

(assert (=> d!1291750 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!104 lt!1577422 key!3918 newValue!99 lt!1577428) lt!1577597)))

(declare-fun bs!636627 () Bool)

(assert (= bs!636627 d!1291750))

(declare-fun m!4986833 () Bool)

(assert (=> bs!636627 m!4986833))

(declare-fun m!4986835 () Bool)

(assert (=> bs!636627 m!4986835))

(declare-fun m!4986837 () Bool)

(assert (=> bs!636627 m!4986837))

(assert (=> bs!636627 m!4986579))

(declare-fun m!4986839 () Bool)

(assert (=> bs!636627 m!4986839))

(assert (=> bs!636627 m!4986833))

(declare-fun m!4986841 () Bool)

(assert (=> bs!636627 m!4986841))

(assert (=> bs!636627 m!4986839))

(assert (=> bs!636627 m!4986579))

(assert (=> bs!636627 m!4986835))

(declare-fun m!4986843 () Bool)

(assert (=> bs!636627 m!4986843))

(assert (=> b!4364750 d!1291750))

(declare-fun b!4364931 () Bool)

(declare-fun e!2716569 () List!49164)

(assert (=> b!4364931 (= e!2716569 (getKeysList!144 (toList!3050 lt!1577420)))))

(declare-fun b!4364932 () Bool)

(declare-fun e!2716568 () Bool)

(assert (=> b!4364932 (= e!2716568 (not (contains!11308 (keys!16590 lt!1577420) key!3918)))))

(declare-fun b!4364933 () Bool)

(declare-fun e!2716565 () Unit!72893)

(declare-fun e!2716566 () Unit!72893)

(assert (=> b!4364933 (= e!2716565 e!2716566)))

(declare-fun c!742139 () Bool)

(declare-fun call!303411 () Bool)

(assert (=> b!4364933 (= c!742139 call!303411)))

(declare-fun b!4364934 () Bool)

(assert (=> b!4364934 (= e!2716569 (keys!16590 lt!1577420))))

(declare-fun b!4364935 () Bool)

(assert (=> b!4364935 false))

(declare-fun lt!1577598 () Unit!72893)

(declare-fun lt!1577604 () Unit!72893)

(assert (=> b!4364935 (= lt!1577598 lt!1577604)))

(assert (=> b!4364935 (containsKey!765 (toList!3050 lt!1577420) key!3918)))

(assert (=> b!4364935 (= lt!1577604 (lemmaInGetKeysListThenContainsKey!142 (toList!3050 lt!1577420) key!3918))))

(declare-fun Unit!72924 () Unit!72893)

(assert (=> b!4364935 (= e!2716566 Unit!72924)))

(declare-fun b!4364936 () Bool)

(declare-fun e!2716570 () Bool)

(declare-fun e!2716567 () Bool)

(assert (=> b!4364936 (= e!2716570 e!2716567)))

(declare-fun res!1795391 () Bool)

(assert (=> b!4364936 (=> (not res!1795391) (not e!2716567))))

(assert (=> b!4364936 (= res!1795391 (isDefined!7798 (getValueByKey!491 (toList!3050 lt!1577420) key!3918)))))

(declare-fun b!4364938 () Bool)

(declare-fun Unit!72925 () Unit!72893)

(assert (=> b!4364938 (= e!2716566 Unit!72925)))

(declare-fun b!4364939 () Bool)

(declare-fun lt!1577601 () Unit!72893)

(assert (=> b!4364939 (= e!2716565 lt!1577601)))

(declare-fun lt!1577599 () Unit!72893)

(assert (=> b!4364939 (= lt!1577599 (lemmaContainsKeyImpliesGetValueByKeyDefined!401 (toList!3050 lt!1577420) key!3918))))

(assert (=> b!4364939 (isDefined!7798 (getValueByKey!491 (toList!3050 lt!1577420) key!3918))))

(declare-fun lt!1577602 () Unit!72893)

(assert (=> b!4364939 (= lt!1577602 lt!1577599)))

(assert (=> b!4364939 (= lt!1577601 (lemmaInListThenGetKeysListContains!141 (toList!3050 lt!1577420) key!3918))))

(assert (=> b!4364939 call!303411))

(declare-fun bm!303406 () Bool)

(assert (=> bm!303406 (= call!303411 (contains!11308 e!2716569 key!3918))))

(declare-fun c!742137 () Bool)

(declare-fun c!742138 () Bool)

(assert (=> bm!303406 (= c!742137 c!742138)))

(declare-fun b!4364937 () Bool)

(assert (=> b!4364937 (= e!2716567 (contains!11308 (keys!16590 lt!1577420) key!3918))))

(declare-fun d!1291752 () Bool)

(assert (=> d!1291752 e!2716570))

(declare-fun res!1795390 () Bool)

(assert (=> d!1291752 (=> res!1795390 e!2716570)))

(assert (=> d!1291752 (= res!1795390 e!2716568)))

(declare-fun res!1795389 () Bool)

(assert (=> d!1291752 (=> (not res!1795389) (not e!2716568))))

(declare-fun lt!1577603 () Bool)

(assert (=> d!1291752 (= res!1795389 (not lt!1577603))))

(declare-fun lt!1577605 () Bool)

(assert (=> d!1291752 (= lt!1577603 lt!1577605)))

(declare-fun lt!1577600 () Unit!72893)

(assert (=> d!1291752 (= lt!1577600 e!2716565)))

(assert (=> d!1291752 (= c!742138 lt!1577605)))

(assert (=> d!1291752 (= lt!1577605 (containsKey!765 (toList!3050 lt!1577420) key!3918))))

(assert (=> d!1291752 (= (contains!11305 lt!1577420 key!3918) lt!1577603)))

(assert (= (and d!1291752 c!742138) b!4364939))

(assert (= (and d!1291752 (not c!742138)) b!4364933))

(assert (= (and b!4364933 c!742139) b!4364935))

(assert (= (and b!4364933 (not c!742139)) b!4364938))

(assert (= (or b!4364939 b!4364933) bm!303406))

(assert (= (and bm!303406 c!742137) b!4364931))

(assert (= (and bm!303406 (not c!742137)) b!4364934))

(assert (= (and d!1291752 res!1795389) b!4364932))

(assert (= (and d!1291752 (not res!1795390)) b!4364936))

(assert (= (and b!4364936 res!1795391) b!4364937))

(declare-fun m!4986845 () Bool)

(assert (=> b!4364937 m!4986845))

(assert (=> b!4364937 m!4986845))

(declare-fun m!4986847 () Bool)

(assert (=> b!4364937 m!4986847))

(declare-fun m!4986849 () Bool)

(assert (=> d!1291752 m!4986849))

(declare-fun m!4986851 () Bool)

(assert (=> b!4364931 m!4986851))

(declare-fun m!4986853 () Bool)

(assert (=> bm!303406 m!4986853))

(declare-fun m!4986855 () Bool)

(assert (=> b!4364936 m!4986855))

(assert (=> b!4364936 m!4986855))

(declare-fun m!4986857 () Bool)

(assert (=> b!4364936 m!4986857))

(assert (=> b!4364935 m!4986849))

(declare-fun m!4986859 () Bool)

(assert (=> b!4364935 m!4986859))

(assert (=> b!4364932 m!4986845))

(assert (=> b!4364932 m!4986845))

(assert (=> b!4364932 m!4986847))

(assert (=> b!4364934 m!4986845))

(declare-fun m!4986861 () Bool)

(assert (=> b!4364939 m!4986861))

(assert (=> b!4364939 m!4986855))

(assert (=> b!4364939 m!4986855))

(assert (=> b!4364939 m!4986857))

(declare-fun m!4986863 () Bool)

(assert (=> b!4364939 m!4986863))

(assert (=> b!4364750 d!1291752))

(declare-fun bs!636628 () Bool)

(declare-fun d!1291754 () Bool)

(assert (= bs!636628 (and d!1291754 start!423148)))

(declare-fun lambda!142447 () Int)

(assert (=> bs!636628 (= lambda!142447 lambda!142401)))

(declare-fun bs!636629 () Bool)

(assert (= bs!636629 (and d!1291754 d!1291716)))

(assert (=> bs!636629 (not (= lambda!142447 lambda!142404))))

(declare-fun bs!636630 () Bool)

(assert (= bs!636630 (and d!1291754 d!1291746)))

(assert (=> bs!636630 (= lambda!142447 lambda!142418)))

(declare-fun lt!1577606 () ListMap!2293)

(assert (=> d!1291754 (invariantList!696 (toList!3050 lt!1577606))))

(declare-fun e!2716571 () ListMap!2293)

(assert (=> d!1291754 (= lt!1577606 e!2716571)))

(declare-fun c!742140 () Bool)

(assert (=> d!1291754 (= c!742140 ((_ is Cons!49038) (toList!3049 lt!1577421)))))

(assert (=> d!1291754 (forall!9188 (toList!3049 lt!1577421) lambda!142447)))

(assert (=> d!1291754 (= (extractMap!592 (toList!3049 lt!1577421)) lt!1577606)))

(declare-fun b!4364942 () Bool)

(assert (=> b!4364942 (= e!2716571 (addToMapMapFromBucket!221 (_2!27546 (h!54607 (toList!3049 lt!1577421))) (extractMap!592 (t!356082 (toList!3049 lt!1577421)))))))

(declare-fun b!4364943 () Bool)

(assert (=> b!4364943 (= e!2716571 (ListMap!2294 Nil!49037))))

(assert (= (and d!1291754 c!742140) b!4364942))

(assert (= (and d!1291754 (not c!742140)) b!4364943))

(declare-fun m!4986865 () Bool)

(assert (=> d!1291754 m!4986865))

(declare-fun m!4986867 () Bool)

(assert (=> d!1291754 m!4986867))

(declare-fun m!4986869 () Bool)

(assert (=> b!4364942 m!4986869))

(assert (=> b!4364942 m!4986869))

(declare-fun m!4986871 () Bool)

(assert (=> b!4364942 m!4986871))

(assert (=> b!4364750 d!1291754))

(declare-fun b!4365038 () Bool)

(assert (=> b!4365038 true))

(declare-fun bs!636726 () Bool)

(declare-fun b!4365037 () Bool)

(assert (= bs!636726 (and b!4365037 b!4365038)))

(declare-fun lambda!142497 () Int)

(declare-fun lambda!142496 () Int)

(assert (=> bs!636726 (= lambda!142497 lambda!142496)))

(assert (=> b!4365037 true))

(declare-fun lambda!142498 () Int)

(declare-fun lt!1577798 () ListMap!2293)

(assert (=> bs!636726 (= (= lt!1577798 lt!1577422) (= lambda!142498 lambda!142496))))

(assert (=> b!4365037 (= (= lt!1577798 lt!1577422) (= lambda!142498 lambda!142497))))

(assert (=> b!4365037 true))

(declare-fun bs!636727 () Bool)

(declare-fun d!1291756 () Bool)

(assert (= bs!636727 (and d!1291756 b!4365038)))

(declare-fun lt!1577814 () ListMap!2293)

(declare-fun lambda!142499 () Int)

(assert (=> bs!636727 (= (= lt!1577814 lt!1577422) (= lambda!142499 lambda!142496))))

(declare-fun bs!636728 () Bool)

(assert (= bs!636728 (and d!1291756 b!4365037)))

(assert (=> bs!636728 (= (= lt!1577814 lt!1577422) (= lambda!142499 lambda!142497))))

(assert (=> bs!636728 (= (= lt!1577814 lt!1577798) (= lambda!142499 lambda!142498))))

(assert (=> d!1291756 true))

(declare-fun bm!303426 () Bool)

(declare-fun call!303432 () Unit!72893)

(declare-fun lemmaContainsAllItsOwnKeys!79 (ListMap!2293) Unit!72893)

(assert (=> bm!303426 (= call!303432 (lemmaContainsAllItsOwnKeys!79 lt!1577422))))

(declare-fun bm!303427 () Bool)

(declare-fun call!303431 () Bool)

(declare-fun c!742154 () Bool)

(declare-fun lt!1577808 () ListMap!2293)

(declare-fun forall!9190 (List!49161 Int) Bool)

(assert (=> bm!303427 (= call!303431 (forall!9190 (ite c!742154 (toList!3050 lt!1577422) (toList!3050 lt!1577808)) (ite c!742154 lambda!142496 lambda!142498)))))

(declare-fun e!2716626 () Bool)

(assert (=> d!1291756 e!2716626))

(declare-fun res!1795440 () Bool)

(assert (=> d!1291756 (=> (not res!1795440) (not e!2716626))))

(assert (=> d!1291756 (= res!1795440 (forall!9190 newBucket!200 lambda!142499))))

(declare-fun e!2716627 () ListMap!2293)

(assert (=> d!1291756 (= lt!1577814 e!2716627)))

(assert (=> d!1291756 (= c!742154 ((_ is Nil!49037) newBucket!200))))

(assert (=> d!1291756 (noDuplicateKeys!533 newBucket!200)))

(assert (=> d!1291756 (= (addToMapMapFromBucket!221 newBucket!200 lt!1577422) lt!1577814)))

(declare-fun b!4365035 () Bool)

(declare-fun e!2716625 () Bool)

(assert (=> b!4365035 (= e!2716625 (forall!9190 (toList!3050 lt!1577422) lambda!142498))))

(declare-fun b!4365036 () Bool)

(assert (=> b!4365036 (= e!2716626 (invariantList!696 (toList!3050 lt!1577814)))))

(assert (=> b!4365037 (= e!2716627 lt!1577798)))

(assert (=> b!4365037 (= lt!1577808 (+!716 lt!1577422 (h!54606 newBucket!200)))))

(assert (=> b!4365037 (= lt!1577798 (addToMapMapFromBucket!221 (t!356081 newBucket!200) (+!716 lt!1577422 (h!54606 newBucket!200))))))

(declare-fun lt!1577813 () Unit!72893)

(assert (=> b!4365037 (= lt!1577813 call!303432)))

(assert (=> b!4365037 (forall!9190 (toList!3050 lt!1577422) lambda!142497)))

(declare-fun lt!1577809 () Unit!72893)

(assert (=> b!4365037 (= lt!1577809 lt!1577813)))

(assert (=> b!4365037 (forall!9190 (toList!3050 lt!1577808) lambda!142498)))

(declare-fun lt!1577815 () Unit!72893)

(declare-fun Unit!72937 () Unit!72893)

(assert (=> b!4365037 (= lt!1577815 Unit!72937)))

(declare-fun call!303433 () Bool)

(assert (=> b!4365037 call!303433))

(declare-fun lt!1577802 () Unit!72893)

(declare-fun Unit!72938 () Unit!72893)

(assert (=> b!4365037 (= lt!1577802 Unit!72938)))

(declare-fun lt!1577812 () Unit!72893)

(declare-fun Unit!72939 () Unit!72893)

(assert (=> b!4365037 (= lt!1577812 Unit!72939)))

(declare-fun lt!1577805 () Unit!72893)

(declare-fun forallContained!1831 (List!49161 Int tuple2!48502) Unit!72893)

(assert (=> b!4365037 (= lt!1577805 (forallContained!1831 (toList!3050 lt!1577808) lambda!142498 (h!54606 newBucket!200)))))

(assert (=> b!4365037 (contains!11305 lt!1577808 (_1!27545 (h!54606 newBucket!200)))))

(declare-fun lt!1577799 () Unit!72893)

(declare-fun Unit!72940 () Unit!72893)

(assert (=> b!4365037 (= lt!1577799 Unit!72940)))

(assert (=> b!4365037 (contains!11305 lt!1577798 (_1!27545 (h!54606 newBucket!200)))))

(declare-fun lt!1577807 () Unit!72893)

(declare-fun Unit!72941 () Unit!72893)

(assert (=> b!4365037 (= lt!1577807 Unit!72941)))

(assert (=> b!4365037 (forall!9190 newBucket!200 lambda!142498)))

(declare-fun lt!1577800 () Unit!72893)

(declare-fun Unit!72942 () Unit!72893)

(assert (=> b!4365037 (= lt!1577800 Unit!72942)))

(assert (=> b!4365037 call!303431))

(declare-fun lt!1577803 () Unit!72893)

(declare-fun Unit!72943 () Unit!72893)

(assert (=> b!4365037 (= lt!1577803 Unit!72943)))

(declare-fun lt!1577817 () Unit!72893)

(declare-fun Unit!72944 () Unit!72893)

(assert (=> b!4365037 (= lt!1577817 Unit!72944)))

(declare-fun lt!1577810 () Unit!72893)

(declare-fun addForallContainsKeyThenBeforeAdding!79 (ListMap!2293 ListMap!2293 K!10400 V!10646) Unit!72893)

(assert (=> b!4365037 (= lt!1577810 (addForallContainsKeyThenBeforeAdding!79 lt!1577422 lt!1577798 (_1!27545 (h!54606 newBucket!200)) (_2!27545 (h!54606 newBucket!200))))))

(assert (=> b!4365037 (forall!9190 (toList!3050 lt!1577422) lambda!142498)))

(declare-fun lt!1577816 () Unit!72893)

(assert (=> b!4365037 (= lt!1577816 lt!1577810)))

(assert (=> b!4365037 (forall!9190 (toList!3050 lt!1577422) lambda!142498)))

(declare-fun lt!1577804 () Unit!72893)

(declare-fun Unit!72945 () Unit!72893)

(assert (=> b!4365037 (= lt!1577804 Unit!72945)))

(declare-fun res!1795442 () Bool)

(assert (=> b!4365037 (= res!1795442 (forall!9190 newBucket!200 lambda!142498))))

(assert (=> b!4365037 (=> (not res!1795442) (not e!2716625))))

(assert (=> b!4365037 e!2716625))

(declare-fun lt!1577818 () Unit!72893)

(declare-fun Unit!72946 () Unit!72893)

(assert (=> b!4365037 (= lt!1577818 Unit!72946)))

(declare-fun bm!303428 () Bool)

(assert (=> bm!303428 (= call!303433 (forall!9190 (ite c!742154 (toList!3050 lt!1577422) (t!356081 newBucket!200)) (ite c!742154 lambda!142496 lambda!142498)))))

(assert (=> b!4365038 (= e!2716627 lt!1577422)))

(declare-fun lt!1577806 () Unit!72893)

(assert (=> b!4365038 (= lt!1577806 call!303432)))

(assert (=> b!4365038 call!303431))

(declare-fun lt!1577811 () Unit!72893)

(assert (=> b!4365038 (= lt!1577811 lt!1577806)))

(assert (=> b!4365038 call!303433))

(declare-fun lt!1577801 () Unit!72893)

(declare-fun Unit!72947 () Unit!72893)

(assert (=> b!4365038 (= lt!1577801 Unit!72947)))

(declare-fun b!4365039 () Bool)

(declare-fun res!1795441 () Bool)

(assert (=> b!4365039 (=> (not res!1795441) (not e!2716626))))

(assert (=> b!4365039 (= res!1795441 (forall!9190 (toList!3050 lt!1577422) lambda!142499))))

(assert (= (and d!1291756 c!742154) b!4365038))

(assert (= (and d!1291756 (not c!742154)) b!4365037))

(assert (= (and b!4365037 res!1795442) b!4365035))

(assert (= (or b!4365038 b!4365037) bm!303426))

(assert (= (or b!4365038 b!4365037) bm!303427))

(assert (= (or b!4365038 b!4365037) bm!303428))

(assert (= (and d!1291756 res!1795440) b!4365039))

(assert (= (and b!4365039 res!1795441) b!4365036))

(declare-fun m!4987139 () Bool)

(assert (=> b!4365035 m!4987139))

(declare-fun m!4987141 () Bool)

(assert (=> bm!303426 m!4987141))

(declare-fun m!4987143 () Bool)

(assert (=> b!4365039 m!4987143))

(declare-fun m!4987145 () Bool)

(assert (=> bm!303427 m!4987145))

(declare-fun m!4987147 () Bool)

(assert (=> b!4365037 m!4987147))

(declare-fun m!4987149 () Bool)

(assert (=> b!4365037 m!4987149))

(declare-fun m!4987151 () Bool)

(assert (=> b!4365037 m!4987151))

(declare-fun m!4987153 () Bool)

(assert (=> b!4365037 m!4987153))

(assert (=> b!4365037 m!4987139))

(declare-fun m!4987155 () Bool)

(assert (=> b!4365037 m!4987155))

(declare-fun m!4987157 () Bool)

(assert (=> b!4365037 m!4987157))

(declare-fun m!4987159 () Bool)

(assert (=> b!4365037 m!4987159))

(assert (=> b!4365037 m!4987157))

(assert (=> b!4365037 m!4987159))

(declare-fun m!4987161 () Bool)

(assert (=> b!4365037 m!4987161))

(declare-fun m!4987163 () Bool)

(assert (=> b!4365037 m!4987163))

(assert (=> b!4365037 m!4987139))

(declare-fun m!4987165 () Bool)

(assert (=> d!1291756 m!4987165))

(assert (=> d!1291756 m!4986615))

(declare-fun m!4987167 () Bool)

(assert (=> bm!303428 m!4987167))

(declare-fun m!4987169 () Bool)

(assert (=> b!4365036 m!4987169))

(assert (=> b!4364750 d!1291756))

(declare-fun d!1291808 () Bool)

(declare-fun e!2716630 () Bool)

(assert (=> d!1291808 e!2716630))

(declare-fun res!1795447 () Bool)

(assert (=> d!1291808 (=> (not res!1795447) (not e!2716630))))

(declare-fun lt!1577827 () ListMap!2293)

(assert (=> d!1291808 (= res!1795447 (contains!11305 lt!1577827 (_1!27545 lt!1577424)))))

(declare-fun lt!1577828 () List!49161)

(assert (=> d!1291808 (= lt!1577827 (ListMap!2294 lt!1577828))))

(declare-fun lt!1577830 () Unit!72893)

(declare-fun lt!1577829 () Unit!72893)

(assert (=> d!1291808 (= lt!1577830 lt!1577829)))

(assert (=> d!1291808 (= (getValueByKey!491 lt!1577828 (_1!27545 lt!1577424)) (Some!10504 (_2!27545 lt!1577424)))))

(declare-fun lemmaContainsTupThenGetReturnValue!265 (List!49161 K!10400 V!10646) Unit!72893)

(assert (=> d!1291808 (= lt!1577829 (lemmaContainsTupThenGetReturnValue!265 lt!1577828 (_1!27545 lt!1577424) (_2!27545 lt!1577424)))))

(declare-fun insertNoDuplicatedKeys!120 (List!49161 K!10400 V!10646) List!49161)

(assert (=> d!1291808 (= lt!1577828 (insertNoDuplicatedKeys!120 (toList!3050 lt!1577422) (_1!27545 lt!1577424) (_2!27545 lt!1577424)))))

(assert (=> d!1291808 (= (+!716 lt!1577422 lt!1577424) lt!1577827)))

(declare-fun b!4365046 () Bool)

(declare-fun res!1795448 () Bool)

(assert (=> b!4365046 (=> (not res!1795448) (not e!2716630))))

(assert (=> b!4365046 (= res!1795448 (= (getValueByKey!491 (toList!3050 lt!1577827) (_1!27545 lt!1577424)) (Some!10504 (_2!27545 lt!1577424))))))

(declare-fun b!4365047 () Bool)

(declare-fun contains!11309 (List!49161 tuple2!48502) Bool)

(assert (=> b!4365047 (= e!2716630 (contains!11309 (toList!3050 lt!1577827) lt!1577424))))

(assert (= (and d!1291808 res!1795447) b!4365046))

(assert (= (and b!4365046 res!1795448) b!4365047))

(declare-fun m!4987171 () Bool)

(assert (=> d!1291808 m!4987171))

(declare-fun m!4987173 () Bool)

(assert (=> d!1291808 m!4987173))

(declare-fun m!4987175 () Bool)

(assert (=> d!1291808 m!4987175))

(declare-fun m!4987177 () Bool)

(assert (=> d!1291808 m!4987177))

(declare-fun m!4987179 () Bool)

(assert (=> b!4365046 m!4987179))

(declare-fun m!4987181 () Bool)

(assert (=> b!4365047 m!4987181))

(assert (=> b!4364750 d!1291808))

(declare-fun bs!636729 () Bool)

(declare-fun b!4365051 () Bool)

(assert (= bs!636729 (and b!4365051 b!4365038)))

(declare-fun lambda!142500 () Int)

(assert (=> bs!636729 (= (= (+!716 lt!1577422 lt!1577424) lt!1577422) (= lambda!142500 lambda!142496))))

(declare-fun bs!636730 () Bool)

(assert (= bs!636730 (and b!4365051 b!4365037)))

(assert (=> bs!636730 (= (= (+!716 lt!1577422 lt!1577424) lt!1577422) (= lambda!142500 lambda!142497))))

(assert (=> bs!636730 (= (= (+!716 lt!1577422 lt!1577424) lt!1577798) (= lambda!142500 lambda!142498))))

(declare-fun bs!636731 () Bool)

(assert (= bs!636731 (and b!4365051 d!1291756)))

(assert (=> bs!636731 (= (= (+!716 lt!1577422 lt!1577424) lt!1577814) (= lambda!142500 lambda!142499))))

(assert (=> b!4365051 true))

(declare-fun bs!636732 () Bool)

(declare-fun b!4365050 () Bool)

(assert (= bs!636732 (and b!4365050 b!4365037)))

(declare-fun lambda!142501 () Int)

(assert (=> bs!636732 (= (= (+!716 lt!1577422 lt!1577424) lt!1577798) (= lambda!142501 lambda!142498))))

(assert (=> bs!636732 (= (= (+!716 lt!1577422 lt!1577424) lt!1577422) (= lambda!142501 lambda!142497))))

(declare-fun bs!636733 () Bool)

(assert (= bs!636733 (and b!4365050 d!1291756)))

(assert (=> bs!636733 (= (= (+!716 lt!1577422 lt!1577424) lt!1577814) (= lambda!142501 lambda!142499))))

(declare-fun bs!636734 () Bool)

(assert (= bs!636734 (and b!4365050 b!4365051)))

(assert (=> bs!636734 (= lambda!142501 lambda!142500)))

(declare-fun bs!636735 () Bool)

(assert (= bs!636735 (and b!4365050 b!4365038)))

(assert (=> bs!636735 (= (= (+!716 lt!1577422 lt!1577424) lt!1577422) (= lambda!142501 lambda!142496))))

(assert (=> b!4365050 true))

(declare-fun lt!1577831 () ListMap!2293)

(declare-fun lambda!142502 () Int)

(assert (=> bs!636732 (= (= lt!1577831 lt!1577798) (= lambda!142502 lambda!142498))))

(assert (=> bs!636732 (= (= lt!1577831 lt!1577422) (= lambda!142502 lambda!142497))))

(assert (=> bs!636733 (= (= lt!1577831 lt!1577814) (= lambda!142502 lambda!142499))))

(assert (=> b!4365050 (= (= lt!1577831 (+!716 lt!1577422 lt!1577424)) (= lambda!142502 lambda!142501))))

(assert (=> bs!636734 (= (= lt!1577831 (+!716 lt!1577422 lt!1577424)) (= lambda!142502 lambda!142500))))

(assert (=> bs!636735 (= (= lt!1577831 lt!1577422) (= lambda!142502 lambda!142496))))

(assert (=> b!4365050 true))

(declare-fun bs!636736 () Bool)

(declare-fun d!1291810 () Bool)

(assert (= bs!636736 (and d!1291810 b!4365037)))

(declare-fun lambda!142503 () Int)

(declare-fun lt!1577847 () ListMap!2293)

(assert (=> bs!636736 (= (= lt!1577847 lt!1577798) (= lambda!142503 lambda!142498))))

(assert (=> bs!636736 (= (= lt!1577847 lt!1577422) (= lambda!142503 lambda!142497))))

(declare-fun bs!636737 () Bool)

(assert (= bs!636737 (and d!1291810 b!4365050)))

(assert (=> bs!636737 (= (= lt!1577847 lt!1577831) (= lambda!142503 lambda!142502))))

(declare-fun bs!636738 () Bool)

(assert (= bs!636738 (and d!1291810 d!1291756)))

(assert (=> bs!636738 (= (= lt!1577847 lt!1577814) (= lambda!142503 lambda!142499))))

(assert (=> bs!636737 (= (= lt!1577847 (+!716 lt!1577422 lt!1577424)) (= lambda!142503 lambda!142501))))

(declare-fun bs!636739 () Bool)

(assert (= bs!636739 (and d!1291810 b!4365051)))

(assert (=> bs!636739 (= (= lt!1577847 (+!716 lt!1577422 lt!1577424)) (= lambda!142503 lambda!142500))))

(declare-fun bs!636740 () Bool)

(assert (= bs!636740 (and d!1291810 b!4365038)))

(assert (=> bs!636740 (= (= lt!1577847 lt!1577422) (= lambda!142503 lambda!142496))))

(assert (=> d!1291810 true))

(declare-fun bm!303429 () Bool)

(declare-fun call!303435 () Unit!72893)

(assert (=> bm!303429 (= call!303435 (lemmaContainsAllItsOwnKeys!79 (+!716 lt!1577422 lt!1577424)))))

(declare-fun call!303434 () Bool)

(declare-fun lt!1577841 () ListMap!2293)

(declare-fun c!742155 () Bool)

(declare-fun bm!303430 () Bool)

(assert (=> bm!303430 (= call!303434 (forall!9190 (ite c!742155 (toList!3050 (+!716 lt!1577422 lt!1577424)) (toList!3050 lt!1577841)) (ite c!742155 lambda!142500 lambda!142502)))))

(declare-fun e!2716632 () Bool)

(assert (=> d!1291810 e!2716632))

(declare-fun res!1795449 () Bool)

(assert (=> d!1291810 (=> (not res!1795449) (not e!2716632))))

(assert (=> d!1291810 (= res!1795449 (forall!9190 lt!1577428 lambda!142503))))

(declare-fun e!2716633 () ListMap!2293)

(assert (=> d!1291810 (= lt!1577847 e!2716633)))

(assert (=> d!1291810 (= c!742155 ((_ is Nil!49037) lt!1577428))))

(assert (=> d!1291810 (noDuplicateKeys!533 lt!1577428)))

(assert (=> d!1291810 (= (addToMapMapFromBucket!221 lt!1577428 (+!716 lt!1577422 lt!1577424)) lt!1577847)))

(declare-fun e!2716631 () Bool)

(declare-fun b!4365048 () Bool)

(assert (=> b!4365048 (= e!2716631 (forall!9190 (toList!3050 (+!716 lt!1577422 lt!1577424)) lambda!142502))))

(declare-fun b!4365049 () Bool)

(assert (=> b!4365049 (= e!2716632 (invariantList!696 (toList!3050 lt!1577847)))))

(assert (=> b!4365050 (= e!2716633 lt!1577831)))

(assert (=> b!4365050 (= lt!1577841 (+!716 (+!716 lt!1577422 lt!1577424) (h!54606 lt!1577428)))))

(assert (=> b!4365050 (= lt!1577831 (addToMapMapFromBucket!221 (t!356081 lt!1577428) (+!716 (+!716 lt!1577422 lt!1577424) (h!54606 lt!1577428))))))

(declare-fun lt!1577846 () Unit!72893)

(assert (=> b!4365050 (= lt!1577846 call!303435)))

(assert (=> b!4365050 (forall!9190 (toList!3050 (+!716 lt!1577422 lt!1577424)) lambda!142501)))

(declare-fun lt!1577842 () Unit!72893)

(assert (=> b!4365050 (= lt!1577842 lt!1577846)))

(assert (=> b!4365050 (forall!9190 (toList!3050 lt!1577841) lambda!142502)))

(declare-fun lt!1577848 () Unit!72893)

(declare-fun Unit!72948 () Unit!72893)

(assert (=> b!4365050 (= lt!1577848 Unit!72948)))

(declare-fun call!303436 () Bool)

(assert (=> b!4365050 call!303436))

(declare-fun lt!1577835 () Unit!72893)

(declare-fun Unit!72949 () Unit!72893)

(assert (=> b!4365050 (= lt!1577835 Unit!72949)))

(declare-fun lt!1577845 () Unit!72893)

(declare-fun Unit!72950 () Unit!72893)

(assert (=> b!4365050 (= lt!1577845 Unit!72950)))

(declare-fun lt!1577838 () Unit!72893)

(assert (=> b!4365050 (= lt!1577838 (forallContained!1831 (toList!3050 lt!1577841) lambda!142502 (h!54606 lt!1577428)))))

(assert (=> b!4365050 (contains!11305 lt!1577841 (_1!27545 (h!54606 lt!1577428)))))

(declare-fun lt!1577832 () Unit!72893)

(declare-fun Unit!72951 () Unit!72893)

(assert (=> b!4365050 (= lt!1577832 Unit!72951)))

(assert (=> b!4365050 (contains!11305 lt!1577831 (_1!27545 (h!54606 lt!1577428)))))

(declare-fun lt!1577840 () Unit!72893)

(declare-fun Unit!72952 () Unit!72893)

(assert (=> b!4365050 (= lt!1577840 Unit!72952)))

(assert (=> b!4365050 (forall!9190 lt!1577428 lambda!142502)))

(declare-fun lt!1577833 () Unit!72893)

(declare-fun Unit!72953 () Unit!72893)

(assert (=> b!4365050 (= lt!1577833 Unit!72953)))

(assert (=> b!4365050 call!303434))

(declare-fun lt!1577836 () Unit!72893)

(declare-fun Unit!72954 () Unit!72893)

(assert (=> b!4365050 (= lt!1577836 Unit!72954)))

(declare-fun lt!1577850 () Unit!72893)

(declare-fun Unit!72955 () Unit!72893)

(assert (=> b!4365050 (= lt!1577850 Unit!72955)))

(declare-fun lt!1577843 () Unit!72893)

(assert (=> b!4365050 (= lt!1577843 (addForallContainsKeyThenBeforeAdding!79 (+!716 lt!1577422 lt!1577424) lt!1577831 (_1!27545 (h!54606 lt!1577428)) (_2!27545 (h!54606 lt!1577428))))))

(assert (=> b!4365050 (forall!9190 (toList!3050 (+!716 lt!1577422 lt!1577424)) lambda!142502)))

(declare-fun lt!1577849 () Unit!72893)

(assert (=> b!4365050 (= lt!1577849 lt!1577843)))

(assert (=> b!4365050 (forall!9190 (toList!3050 (+!716 lt!1577422 lt!1577424)) lambda!142502)))

(declare-fun lt!1577837 () Unit!72893)

(declare-fun Unit!72956 () Unit!72893)

(assert (=> b!4365050 (= lt!1577837 Unit!72956)))

(declare-fun res!1795451 () Bool)

(assert (=> b!4365050 (= res!1795451 (forall!9190 lt!1577428 lambda!142502))))

(assert (=> b!4365050 (=> (not res!1795451) (not e!2716631))))

(assert (=> b!4365050 e!2716631))

(declare-fun lt!1577851 () Unit!72893)

(declare-fun Unit!72957 () Unit!72893)

(assert (=> b!4365050 (= lt!1577851 Unit!72957)))

(declare-fun bm!303431 () Bool)

(assert (=> bm!303431 (= call!303436 (forall!9190 (ite c!742155 (toList!3050 (+!716 lt!1577422 lt!1577424)) (t!356081 lt!1577428)) (ite c!742155 lambda!142500 lambda!142502)))))

(assert (=> b!4365051 (= e!2716633 (+!716 lt!1577422 lt!1577424))))

(declare-fun lt!1577839 () Unit!72893)

(assert (=> b!4365051 (= lt!1577839 call!303435)))

(assert (=> b!4365051 call!303434))

(declare-fun lt!1577844 () Unit!72893)

(assert (=> b!4365051 (= lt!1577844 lt!1577839)))

(assert (=> b!4365051 call!303436))

(declare-fun lt!1577834 () Unit!72893)

(declare-fun Unit!72961 () Unit!72893)

(assert (=> b!4365051 (= lt!1577834 Unit!72961)))

(declare-fun b!4365052 () Bool)

(declare-fun res!1795450 () Bool)

(assert (=> b!4365052 (=> (not res!1795450) (not e!2716632))))

(assert (=> b!4365052 (= res!1795450 (forall!9190 (toList!3050 (+!716 lt!1577422 lt!1577424)) lambda!142503))))

(assert (= (and d!1291810 c!742155) b!4365051))

(assert (= (and d!1291810 (not c!742155)) b!4365050))

(assert (= (and b!4365050 res!1795451) b!4365048))

(assert (= (or b!4365051 b!4365050) bm!303429))

(assert (= (or b!4365051 b!4365050) bm!303430))

(assert (= (or b!4365051 b!4365050) bm!303431))

(assert (= (and d!1291810 res!1795449) b!4365052))

(assert (= (and b!4365052 res!1795450) b!4365049))

(declare-fun m!4987183 () Bool)

(assert (=> b!4365048 m!4987183))

(assert (=> bm!303429 m!4986595))

(declare-fun m!4987185 () Bool)

(assert (=> bm!303429 m!4987185))

(declare-fun m!4987187 () Bool)

(assert (=> b!4365052 m!4987187))

(declare-fun m!4987189 () Bool)

(assert (=> bm!303430 m!4987189))

(declare-fun m!4987191 () Bool)

(assert (=> b!4365050 m!4987191))

(declare-fun m!4987193 () Bool)

(assert (=> b!4365050 m!4987193))

(declare-fun m!4987195 () Bool)

(assert (=> b!4365050 m!4987195))

(declare-fun m!4987197 () Bool)

(assert (=> b!4365050 m!4987197))

(assert (=> b!4365050 m!4987183))

(assert (=> b!4365050 m!4986595))

(declare-fun m!4987199 () Bool)

(assert (=> b!4365050 m!4987199))

(declare-fun m!4987201 () Bool)

(assert (=> b!4365050 m!4987201))

(assert (=> b!4365050 m!4986595))

(declare-fun m!4987203 () Bool)

(assert (=> b!4365050 m!4987203))

(assert (=> b!4365050 m!4987201))

(assert (=> b!4365050 m!4987203))

(declare-fun m!4987205 () Bool)

(assert (=> b!4365050 m!4987205))

(declare-fun m!4987207 () Bool)

(assert (=> b!4365050 m!4987207))

(assert (=> b!4365050 m!4987183))

(declare-fun m!4987209 () Bool)

(assert (=> d!1291810 m!4987209))

(declare-fun m!4987211 () Bool)

(assert (=> d!1291810 m!4987211))

(declare-fun m!4987213 () Bool)

(assert (=> bm!303431 m!4987213))

(declare-fun m!4987215 () Bool)

(assert (=> b!4365049 m!4987215))

(assert (=> b!4364750 d!1291810))

(declare-fun bs!636741 () Bool)

(declare-fun d!1291812 () Bool)

(assert (= bs!636741 (and d!1291812 start!423148)))

(declare-fun lambda!142504 () Int)

(assert (=> bs!636741 (= lambda!142504 lambda!142401)))

(declare-fun bs!636742 () Bool)

(assert (= bs!636742 (and d!1291812 d!1291716)))

(assert (=> bs!636742 (not (= lambda!142504 lambda!142404))))

(declare-fun bs!636743 () Bool)

(assert (= bs!636743 (and d!1291812 d!1291746)))

(assert (=> bs!636743 (= lambda!142504 lambda!142418)))

(declare-fun bs!636744 () Bool)

(assert (= bs!636744 (and d!1291812 d!1291754)))

(assert (=> bs!636744 (= lambda!142504 lambda!142447)))

(declare-fun lt!1577852 () ListMap!2293)

(assert (=> d!1291812 (invariantList!696 (toList!3050 lt!1577852))))

(declare-fun e!2716634 () ListMap!2293)

(assert (=> d!1291812 (= lt!1577852 e!2716634)))

(declare-fun c!742156 () Bool)

(assert (=> d!1291812 (= c!742156 ((_ is Cons!49038) (t!356082 (toList!3049 lm!1707))))))

(assert (=> d!1291812 (forall!9188 (t!356082 (toList!3049 lm!1707)) lambda!142504)))

(assert (=> d!1291812 (= (extractMap!592 (t!356082 (toList!3049 lm!1707))) lt!1577852)))

(declare-fun b!4365053 () Bool)

(assert (=> b!4365053 (= e!2716634 (addToMapMapFromBucket!221 (_2!27546 (h!54607 (t!356082 (toList!3049 lm!1707)))) (extractMap!592 (t!356082 (t!356082 (toList!3049 lm!1707))))))))

(declare-fun b!4365054 () Bool)

(assert (=> b!4365054 (= e!2716634 (ListMap!2294 Nil!49037))))

(assert (= (and d!1291812 c!742156) b!4365053))

(assert (= (and d!1291812 (not c!742156)) b!4365054))

(declare-fun m!4987217 () Bool)

(assert (=> d!1291812 m!4987217))

(declare-fun m!4987219 () Bool)

(assert (=> d!1291812 m!4987219))

(declare-fun m!4987221 () Bool)

(assert (=> b!4365053 m!4987221))

(assert (=> b!4365053 m!4987221))

(declare-fun m!4987223 () Bool)

(assert (=> b!4365053 m!4987223))

(assert (=> b!4364750 d!1291812))

(declare-fun bs!636745 () Bool)

(declare-fun b!4365058 () Bool)

(assert (= bs!636745 (and b!4365058 b!4365037)))

(declare-fun lambda!142505 () Int)

(assert (=> bs!636745 (= (= lt!1577422 lt!1577798) (= lambda!142505 lambda!142498))))

(assert (=> bs!636745 (= lambda!142505 lambda!142497)))

(declare-fun bs!636746 () Bool)

(assert (= bs!636746 (and b!4365058 b!4365050)))

(assert (=> bs!636746 (= (= lt!1577422 lt!1577831) (= lambda!142505 lambda!142502))))

(declare-fun bs!636747 () Bool)

(assert (= bs!636747 (and b!4365058 d!1291756)))

(assert (=> bs!636747 (= (= lt!1577422 lt!1577814) (= lambda!142505 lambda!142499))))

(assert (=> bs!636746 (= (= lt!1577422 (+!716 lt!1577422 lt!1577424)) (= lambda!142505 lambda!142501))))

(declare-fun bs!636748 () Bool)

(assert (= bs!636748 (and b!4365058 d!1291810)))

(assert (=> bs!636748 (= (= lt!1577422 lt!1577847) (= lambda!142505 lambda!142503))))

(declare-fun bs!636749 () Bool)

(assert (= bs!636749 (and b!4365058 b!4365051)))

(assert (=> bs!636749 (= (= lt!1577422 (+!716 lt!1577422 lt!1577424)) (= lambda!142505 lambda!142500))))

(declare-fun bs!636750 () Bool)

(assert (= bs!636750 (and b!4365058 b!4365038)))

(assert (=> bs!636750 (= lambda!142505 lambda!142496)))

(assert (=> b!4365058 true))

(declare-fun bs!636751 () Bool)

(declare-fun b!4365057 () Bool)

(assert (= bs!636751 (and b!4365057 b!4365037)))

(declare-fun lambda!142506 () Int)

(assert (=> bs!636751 (= (= lt!1577422 lt!1577798) (= lambda!142506 lambda!142498))))

(assert (=> bs!636751 (= lambda!142506 lambda!142497)))

(declare-fun bs!636752 () Bool)

(assert (= bs!636752 (and b!4365057 b!4365050)))

(assert (=> bs!636752 (= (= lt!1577422 lt!1577831) (= lambda!142506 lambda!142502))))

(declare-fun bs!636753 () Bool)

(assert (= bs!636753 (and b!4365057 b!4365058)))

(assert (=> bs!636753 (= lambda!142506 lambda!142505)))

(declare-fun bs!636754 () Bool)

(assert (= bs!636754 (and b!4365057 d!1291756)))

(assert (=> bs!636754 (= (= lt!1577422 lt!1577814) (= lambda!142506 lambda!142499))))

(assert (=> bs!636752 (= (= lt!1577422 (+!716 lt!1577422 lt!1577424)) (= lambda!142506 lambda!142501))))

(declare-fun bs!636755 () Bool)

(assert (= bs!636755 (and b!4365057 d!1291810)))

(assert (=> bs!636755 (= (= lt!1577422 lt!1577847) (= lambda!142506 lambda!142503))))

(declare-fun bs!636756 () Bool)

(assert (= bs!636756 (and b!4365057 b!4365051)))

(assert (=> bs!636756 (= (= lt!1577422 (+!716 lt!1577422 lt!1577424)) (= lambda!142506 lambda!142500))))

(declare-fun bs!636757 () Bool)

(assert (= bs!636757 (and b!4365057 b!4365038)))

(assert (=> bs!636757 (= lambda!142506 lambda!142496)))

(assert (=> b!4365057 true))

(declare-fun lt!1577853 () ListMap!2293)

(declare-fun lambda!142507 () Int)

(assert (=> bs!636751 (= (= lt!1577853 lt!1577798) (= lambda!142507 lambda!142498))))

(assert (=> bs!636752 (= (= lt!1577853 lt!1577831) (= lambda!142507 lambda!142502))))

(assert (=> bs!636753 (= (= lt!1577853 lt!1577422) (= lambda!142507 lambda!142505))))

(assert (=> bs!636754 (= (= lt!1577853 lt!1577814) (= lambda!142507 lambda!142499))))

(assert (=> bs!636752 (= (= lt!1577853 (+!716 lt!1577422 lt!1577424)) (= lambda!142507 lambda!142501))))

(assert (=> bs!636755 (= (= lt!1577853 lt!1577847) (= lambda!142507 lambda!142503))))

(assert (=> bs!636751 (= (= lt!1577853 lt!1577422) (= lambda!142507 lambda!142497))))

(assert (=> b!4365057 (= (= lt!1577853 lt!1577422) (= lambda!142507 lambda!142506))))

(assert (=> bs!636756 (= (= lt!1577853 (+!716 lt!1577422 lt!1577424)) (= lambda!142507 lambda!142500))))

(assert (=> bs!636757 (= (= lt!1577853 lt!1577422) (= lambda!142507 lambda!142496))))

(assert (=> b!4365057 true))

(declare-fun bs!636758 () Bool)

(declare-fun d!1291814 () Bool)

(assert (= bs!636758 (and d!1291814 b!4365037)))

(declare-fun lambda!142508 () Int)

(declare-fun lt!1577869 () ListMap!2293)

(assert (=> bs!636758 (= (= lt!1577869 lt!1577798) (= lambda!142508 lambda!142498))))

(declare-fun bs!636759 () Bool)

(assert (= bs!636759 (and d!1291814 b!4365050)))

(assert (=> bs!636759 (= (= lt!1577869 lt!1577831) (= lambda!142508 lambda!142502))))

(declare-fun bs!636760 () Bool)

(assert (= bs!636760 (and d!1291814 b!4365058)))

(assert (=> bs!636760 (= (= lt!1577869 lt!1577422) (= lambda!142508 lambda!142505))))

(declare-fun bs!636761 () Bool)

(assert (= bs!636761 (and d!1291814 d!1291756)))

(assert (=> bs!636761 (= (= lt!1577869 lt!1577814) (= lambda!142508 lambda!142499))))

(declare-fun bs!636762 () Bool)

(assert (= bs!636762 (and d!1291814 b!4365057)))

(assert (=> bs!636762 (= (= lt!1577869 lt!1577853) (= lambda!142508 lambda!142507))))

(assert (=> bs!636759 (= (= lt!1577869 (+!716 lt!1577422 lt!1577424)) (= lambda!142508 lambda!142501))))

(declare-fun bs!636763 () Bool)

(assert (= bs!636763 (and d!1291814 d!1291810)))

(assert (=> bs!636763 (= (= lt!1577869 lt!1577847) (= lambda!142508 lambda!142503))))

(assert (=> bs!636758 (= (= lt!1577869 lt!1577422) (= lambda!142508 lambda!142497))))

(assert (=> bs!636762 (= (= lt!1577869 lt!1577422) (= lambda!142508 lambda!142506))))

(declare-fun bs!636764 () Bool)

(assert (= bs!636764 (and d!1291814 b!4365051)))

(assert (=> bs!636764 (= (= lt!1577869 (+!716 lt!1577422 lt!1577424)) (= lambda!142508 lambda!142500))))

(declare-fun bs!636765 () Bool)

(assert (= bs!636765 (and d!1291814 b!4365038)))

(assert (=> bs!636765 (= (= lt!1577869 lt!1577422) (= lambda!142508 lambda!142496))))

(assert (=> d!1291814 true))

(declare-fun bm!303432 () Bool)

(declare-fun call!303438 () Unit!72893)

(assert (=> bm!303432 (= call!303438 (lemmaContainsAllItsOwnKeys!79 lt!1577422))))

(declare-fun lt!1577863 () ListMap!2293)

(declare-fun call!303437 () Bool)

(declare-fun bm!303433 () Bool)

(declare-fun c!742157 () Bool)

(assert (=> bm!303433 (= call!303437 (forall!9190 (ite c!742157 (toList!3050 lt!1577422) (toList!3050 lt!1577863)) (ite c!742157 lambda!142505 lambda!142507)))))

(declare-fun e!2716636 () Bool)

(assert (=> d!1291814 e!2716636))

(declare-fun res!1795452 () Bool)

(assert (=> d!1291814 (=> (not res!1795452) (not e!2716636))))

(assert (=> d!1291814 (= res!1795452 (forall!9190 lt!1577428 lambda!142508))))

(declare-fun e!2716637 () ListMap!2293)

(assert (=> d!1291814 (= lt!1577869 e!2716637)))

(assert (=> d!1291814 (= c!742157 ((_ is Nil!49037) lt!1577428))))

(assert (=> d!1291814 (noDuplicateKeys!533 lt!1577428)))

(assert (=> d!1291814 (= (addToMapMapFromBucket!221 lt!1577428 lt!1577422) lt!1577869)))

(declare-fun b!4365055 () Bool)

(declare-fun e!2716635 () Bool)

(assert (=> b!4365055 (= e!2716635 (forall!9190 (toList!3050 lt!1577422) lambda!142507))))

(declare-fun b!4365056 () Bool)

(assert (=> b!4365056 (= e!2716636 (invariantList!696 (toList!3050 lt!1577869)))))

(assert (=> b!4365057 (= e!2716637 lt!1577853)))

(assert (=> b!4365057 (= lt!1577863 (+!716 lt!1577422 (h!54606 lt!1577428)))))

(assert (=> b!4365057 (= lt!1577853 (addToMapMapFromBucket!221 (t!356081 lt!1577428) (+!716 lt!1577422 (h!54606 lt!1577428))))))

(declare-fun lt!1577868 () Unit!72893)

(assert (=> b!4365057 (= lt!1577868 call!303438)))

(assert (=> b!4365057 (forall!9190 (toList!3050 lt!1577422) lambda!142506)))

(declare-fun lt!1577864 () Unit!72893)

(assert (=> b!4365057 (= lt!1577864 lt!1577868)))

(assert (=> b!4365057 (forall!9190 (toList!3050 lt!1577863) lambda!142507)))

(declare-fun lt!1577870 () Unit!72893)

(declare-fun Unit!72972 () Unit!72893)

(assert (=> b!4365057 (= lt!1577870 Unit!72972)))

(declare-fun call!303439 () Bool)

(assert (=> b!4365057 call!303439))

(declare-fun lt!1577857 () Unit!72893)

(declare-fun Unit!72973 () Unit!72893)

(assert (=> b!4365057 (= lt!1577857 Unit!72973)))

(declare-fun lt!1577867 () Unit!72893)

(declare-fun Unit!72974 () Unit!72893)

(assert (=> b!4365057 (= lt!1577867 Unit!72974)))

(declare-fun lt!1577860 () Unit!72893)

(assert (=> b!4365057 (= lt!1577860 (forallContained!1831 (toList!3050 lt!1577863) lambda!142507 (h!54606 lt!1577428)))))

(assert (=> b!4365057 (contains!11305 lt!1577863 (_1!27545 (h!54606 lt!1577428)))))

(declare-fun lt!1577854 () Unit!72893)

(declare-fun Unit!72975 () Unit!72893)

(assert (=> b!4365057 (= lt!1577854 Unit!72975)))

(assert (=> b!4365057 (contains!11305 lt!1577853 (_1!27545 (h!54606 lt!1577428)))))

(declare-fun lt!1577862 () Unit!72893)

(declare-fun Unit!72976 () Unit!72893)

(assert (=> b!4365057 (= lt!1577862 Unit!72976)))

(assert (=> b!4365057 (forall!9190 lt!1577428 lambda!142507)))

(declare-fun lt!1577855 () Unit!72893)

(declare-fun Unit!72977 () Unit!72893)

(assert (=> b!4365057 (= lt!1577855 Unit!72977)))

(assert (=> b!4365057 call!303437))

(declare-fun lt!1577858 () Unit!72893)

(declare-fun Unit!72978 () Unit!72893)

(assert (=> b!4365057 (= lt!1577858 Unit!72978)))

(declare-fun lt!1577872 () Unit!72893)

(declare-fun Unit!72979 () Unit!72893)

(assert (=> b!4365057 (= lt!1577872 Unit!72979)))

(declare-fun lt!1577865 () Unit!72893)

(assert (=> b!4365057 (= lt!1577865 (addForallContainsKeyThenBeforeAdding!79 lt!1577422 lt!1577853 (_1!27545 (h!54606 lt!1577428)) (_2!27545 (h!54606 lt!1577428))))))

(assert (=> b!4365057 (forall!9190 (toList!3050 lt!1577422) lambda!142507)))

(declare-fun lt!1577871 () Unit!72893)

(assert (=> b!4365057 (= lt!1577871 lt!1577865)))

(assert (=> b!4365057 (forall!9190 (toList!3050 lt!1577422) lambda!142507)))

(declare-fun lt!1577859 () Unit!72893)

(declare-fun Unit!72980 () Unit!72893)

(assert (=> b!4365057 (= lt!1577859 Unit!72980)))

(declare-fun res!1795454 () Bool)

(assert (=> b!4365057 (= res!1795454 (forall!9190 lt!1577428 lambda!142507))))

(assert (=> b!4365057 (=> (not res!1795454) (not e!2716635))))

(assert (=> b!4365057 e!2716635))

(declare-fun lt!1577873 () Unit!72893)

(declare-fun Unit!72981 () Unit!72893)

(assert (=> b!4365057 (= lt!1577873 Unit!72981)))

(declare-fun bm!303434 () Bool)

(assert (=> bm!303434 (= call!303439 (forall!9190 (ite c!742157 (toList!3050 lt!1577422) (t!356081 lt!1577428)) (ite c!742157 lambda!142505 lambda!142507)))))

(assert (=> b!4365058 (= e!2716637 lt!1577422)))

(declare-fun lt!1577861 () Unit!72893)

(assert (=> b!4365058 (= lt!1577861 call!303438)))

(assert (=> b!4365058 call!303437))

(declare-fun lt!1577866 () Unit!72893)

(assert (=> b!4365058 (= lt!1577866 lt!1577861)))

(assert (=> b!4365058 call!303439))

(declare-fun lt!1577856 () Unit!72893)

(declare-fun Unit!72982 () Unit!72893)

(assert (=> b!4365058 (= lt!1577856 Unit!72982)))

(declare-fun b!4365059 () Bool)

(declare-fun res!1795453 () Bool)

(assert (=> b!4365059 (=> (not res!1795453) (not e!2716636))))

(assert (=> b!4365059 (= res!1795453 (forall!9190 (toList!3050 lt!1577422) lambda!142508))))

(assert (= (and d!1291814 c!742157) b!4365058))

(assert (= (and d!1291814 (not c!742157)) b!4365057))

(assert (= (and b!4365057 res!1795454) b!4365055))

(assert (= (or b!4365058 b!4365057) bm!303432))

(assert (= (or b!4365058 b!4365057) bm!303433))

(assert (= (or b!4365058 b!4365057) bm!303434))

(assert (= (and d!1291814 res!1795452) b!4365059))

(assert (= (and b!4365059 res!1795453) b!4365056))

(declare-fun m!4987225 () Bool)

(assert (=> b!4365055 m!4987225))

(assert (=> bm!303432 m!4987141))

(declare-fun m!4987227 () Bool)

(assert (=> b!4365059 m!4987227))

(declare-fun m!4987229 () Bool)

(assert (=> bm!303433 m!4987229))

(declare-fun m!4987231 () Bool)

(assert (=> b!4365057 m!4987231))

(declare-fun m!4987233 () Bool)

(assert (=> b!4365057 m!4987233))

(declare-fun m!4987235 () Bool)

(assert (=> b!4365057 m!4987235))

(declare-fun m!4987237 () Bool)

(assert (=> b!4365057 m!4987237))

(assert (=> b!4365057 m!4987225))

(declare-fun m!4987239 () Bool)

(assert (=> b!4365057 m!4987239))

(declare-fun m!4987241 () Bool)

(assert (=> b!4365057 m!4987241))

(declare-fun m!4987243 () Bool)

(assert (=> b!4365057 m!4987243))

(assert (=> b!4365057 m!4987241))

(assert (=> b!4365057 m!4987243))

(declare-fun m!4987245 () Bool)

(assert (=> b!4365057 m!4987245))

(declare-fun m!4987247 () Bool)

(assert (=> b!4365057 m!4987247))

(assert (=> b!4365057 m!4987225))

(declare-fun m!4987249 () Bool)

(assert (=> d!1291814 m!4987249))

(assert (=> d!1291814 m!4987211))

(declare-fun m!4987251 () Bool)

(assert (=> bm!303434 m!4987251))

(declare-fun m!4987253 () Bool)

(assert (=> b!4365056 m!4987253))

(assert (=> b!4364750 d!1291814))

(declare-fun d!1291816 () Bool)

(declare-fun e!2716638 () Bool)

(assert (=> d!1291816 e!2716638))

(declare-fun res!1795455 () Bool)

(assert (=> d!1291816 (=> (not res!1795455) (not e!2716638))))

(declare-fun lt!1577874 () ListMap!2293)

(assert (=> d!1291816 (= res!1795455 (contains!11305 lt!1577874 (_1!27545 lt!1577424)))))

(declare-fun lt!1577875 () List!49161)

(assert (=> d!1291816 (= lt!1577874 (ListMap!2294 lt!1577875))))

(declare-fun lt!1577877 () Unit!72893)

(declare-fun lt!1577876 () Unit!72893)

(assert (=> d!1291816 (= lt!1577877 lt!1577876)))

(assert (=> d!1291816 (= (getValueByKey!491 lt!1577875 (_1!27545 lt!1577424)) (Some!10504 (_2!27545 lt!1577424)))))

(assert (=> d!1291816 (= lt!1577876 (lemmaContainsTupThenGetReturnValue!265 lt!1577875 (_1!27545 lt!1577424) (_2!27545 lt!1577424)))))

(assert (=> d!1291816 (= lt!1577875 (insertNoDuplicatedKeys!120 (toList!3050 lt!1577419) (_1!27545 lt!1577424) (_2!27545 lt!1577424)))))

(assert (=> d!1291816 (= (+!716 lt!1577419 lt!1577424) lt!1577874)))

(declare-fun b!4365060 () Bool)

(declare-fun res!1795456 () Bool)

(assert (=> b!4365060 (=> (not res!1795456) (not e!2716638))))

(assert (=> b!4365060 (= res!1795456 (= (getValueByKey!491 (toList!3050 lt!1577874) (_1!27545 lt!1577424)) (Some!10504 (_2!27545 lt!1577424))))))

(declare-fun b!4365061 () Bool)

(assert (=> b!4365061 (= e!2716638 (contains!11309 (toList!3050 lt!1577874) lt!1577424))))

(assert (= (and d!1291816 res!1795455) b!4365060))

(assert (= (and b!4365060 res!1795456) b!4365061))

(declare-fun m!4987255 () Bool)

(assert (=> d!1291816 m!4987255))

(declare-fun m!4987257 () Bool)

(assert (=> d!1291816 m!4987257))

(declare-fun m!4987259 () Bool)

(assert (=> d!1291816 m!4987259))

(declare-fun m!4987261 () Bool)

(assert (=> d!1291816 m!4987261))

(declare-fun m!4987263 () Bool)

(assert (=> b!4365060 m!4987263))

(declare-fun m!4987265 () Bool)

(assert (=> b!4365061 m!4987265))

(assert (=> b!4364750 d!1291816))

(declare-fun d!1291818 () Bool)

(declare-fun e!2716639 () Bool)

(assert (=> d!1291818 e!2716639))

(declare-fun res!1795457 () Bool)

(assert (=> d!1291818 (=> (not res!1795457) (not e!2716639))))

(declare-fun lt!1577880 () ListLongMap!1699)

(assert (=> d!1291818 (= res!1795457 (contains!11303 lt!1577880 (_1!27546 (tuple2!48505 hash!377 lt!1577431))))))

(declare-fun lt!1577878 () List!49162)

(assert (=> d!1291818 (= lt!1577880 (ListLongMap!1700 lt!1577878))))

(declare-fun lt!1577881 () Unit!72893)

(declare-fun lt!1577879 () Unit!72893)

(assert (=> d!1291818 (= lt!1577881 lt!1577879)))

(assert (=> d!1291818 (= (getValueByKey!490 lt!1577878 (_1!27546 (tuple2!48505 hash!377 lt!1577431))) (Some!10503 (_2!27546 (tuple2!48505 hash!377 lt!1577431))))))

(assert (=> d!1291818 (= lt!1577879 (lemmaContainsTupThenGetReturnValue!263 lt!1577878 (_1!27546 (tuple2!48505 hash!377 lt!1577431)) (_2!27546 (tuple2!48505 hash!377 lt!1577431))))))

(assert (=> d!1291818 (= lt!1577878 (insertStrictlySorted!152 (toList!3049 lm!1707) (_1!27546 (tuple2!48505 hash!377 lt!1577431)) (_2!27546 (tuple2!48505 hash!377 lt!1577431))))))

(assert (=> d!1291818 (= (+!715 lm!1707 (tuple2!48505 hash!377 lt!1577431)) lt!1577880)))

(declare-fun b!4365062 () Bool)

(declare-fun res!1795458 () Bool)

(assert (=> b!4365062 (=> (not res!1795458) (not e!2716639))))

(assert (=> b!4365062 (= res!1795458 (= (getValueByKey!490 (toList!3049 lt!1577880) (_1!27546 (tuple2!48505 hash!377 lt!1577431))) (Some!10503 (_2!27546 (tuple2!48505 hash!377 lt!1577431)))))))

(declare-fun b!4365063 () Bool)

(assert (=> b!4365063 (= e!2716639 (contains!11304 (toList!3049 lt!1577880) (tuple2!48505 hash!377 lt!1577431)))))

(assert (= (and d!1291818 res!1795457) b!4365062))

(assert (= (and b!4365062 res!1795458) b!4365063))

(declare-fun m!4987267 () Bool)

(assert (=> d!1291818 m!4987267))

(declare-fun m!4987269 () Bool)

(assert (=> d!1291818 m!4987269))

(declare-fun m!4987271 () Bool)

(assert (=> d!1291818 m!4987271))

(declare-fun m!4987273 () Bool)

(assert (=> d!1291818 m!4987273))

(declare-fun m!4987275 () Bool)

(assert (=> b!4365062 m!4987275))

(declare-fun m!4987277 () Bool)

(assert (=> b!4365063 m!4987277))

(assert (=> b!4364750 d!1291818))

(declare-fun d!1291820 () Bool)

(assert (=> d!1291820 (= (eq!295 lt!1577414 lt!1577420) (= (content!7763 (toList!3050 lt!1577414)) (content!7763 (toList!3050 lt!1577420))))))

(declare-fun bs!636766 () Bool)

(assert (= bs!636766 d!1291820))

(declare-fun m!4987279 () Bool)

(assert (=> bs!636766 m!4987279))

(declare-fun m!4987281 () Bool)

(assert (=> bs!636766 m!4987281))

(assert (=> b!4364750 d!1291820))

(declare-fun bs!636767 () Bool)

(declare-fun b!4365067 () Bool)

(assert (= bs!636767 (and b!4365067 b!4365037)))

(declare-fun lambda!142509 () Int)

(assert (=> bs!636767 (= (= lt!1577422 lt!1577798) (= lambda!142509 lambda!142498))))

(declare-fun bs!636768 () Bool)

(assert (= bs!636768 (and b!4365067 b!4365050)))

(assert (=> bs!636768 (= (= lt!1577422 lt!1577831) (= lambda!142509 lambda!142502))))

(declare-fun bs!636769 () Bool)

(assert (= bs!636769 (and b!4365067 b!4365058)))

(assert (=> bs!636769 (= lambda!142509 lambda!142505)))

(declare-fun bs!636770 () Bool)

(assert (= bs!636770 (and b!4365067 d!1291756)))

(assert (=> bs!636770 (= (= lt!1577422 lt!1577814) (= lambda!142509 lambda!142499))))

(declare-fun bs!636771 () Bool)

(assert (= bs!636771 (and b!4365067 b!4365057)))

(assert (=> bs!636771 (= (= lt!1577422 lt!1577853) (= lambda!142509 lambda!142507))))

(assert (=> bs!636768 (= (= lt!1577422 (+!716 lt!1577422 lt!1577424)) (= lambda!142509 lambda!142501))))

(declare-fun bs!636772 () Bool)

(assert (= bs!636772 (and b!4365067 d!1291810)))

(assert (=> bs!636772 (= (= lt!1577422 lt!1577847) (= lambda!142509 lambda!142503))))

(declare-fun bs!636773 () Bool)

(assert (= bs!636773 (and b!4365067 d!1291814)))

(assert (=> bs!636773 (= (= lt!1577422 lt!1577869) (= lambda!142509 lambda!142508))))

(assert (=> bs!636767 (= lambda!142509 lambda!142497)))

(assert (=> bs!636771 (= lambda!142509 lambda!142506)))

(declare-fun bs!636774 () Bool)

(assert (= bs!636774 (and b!4365067 b!4365051)))

(assert (=> bs!636774 (= (= lt!1577422 (+!716 lt!1577422 lt!1577424)) (= lambda!142509 lambda!142500))))

(declare-fun bs!636775 () Bool)

(assert (= bs!636775 (and b!4365067 b!4365038)))

(assert (=> bs!636775 (= lambda!142509 lambda!142496)))

(assert (=> b!4365067 true))

(declare-fun bs!636776 () Bool)

(declare-fun b!4365066 () Bool)

(assert (= bs!636776 (and b!4365066 b!4365037)))

(declare-fun lambda!142510 () Int)

(assert (=> bs!636776 (= (= lt!1577422 lt!1577798) (= lambda!142510 lambda!142498))))

(declare-fun bs!636777 () Bool)

(assert (= bs!636777 (and b!4365066 b!4365050)))

(assert (=> bs!636777 (= (= lt!1577422 lt!1577831) (= lambda!142510 lambda!142502))))

(declare-fun bs!636778 () Bool)

(assert (= bs!636778 (and b!4365066 b!4365058)))

(assert (=> bs!636778 (= lambda!142510 lambda!142505)))

(declare-fun bs!636779 () Bool)

(assert (= bs!636779 (and b!4365066 d!1291756)))

(assert (=> bs!636779 (= (= lt!1577422 lt!1577814) (= lambda!142510 lambda!142499))))

(declare-fun bs!636780 () Bool)

(assert (= bs!636780 (and b!4365066 b!4365057)))

(assert (=> bs!636780 (= (= lt!1577422 lt!1577853) (= lambda!142510 lambda!142507))))

(declare-fun bs!636781 () Bool)

(assert (= bs!636781 (and b!4365066 b!4365067)))

(assert (=> bs!636781 (= lambda!142510 lambda!142509)))

(assert (=> bs!636777 (= (= lt!1577422 (+!716 lt!1577422 lt!1577424)) (= lambda!142510 lambda!142501))))

(declare-fun bs!636782 () Bool)

(assert (= bs!636782 (and b!4365066 d!1291810)))

(assert (=> bs!636782 (= (= lt!1577422 lt!1577847) (= lambda!142510 lambda!142503))))

(declare-fun bs!636783 () Bool)

(assert (= bs!636783 (and b!4365066 d!1291814)))

(assert (=> bs!636783 (= (= lt!1577422 lt!1577869) (= lambda!142510 lambda!142508))))

(assert (=> bs!636776 (= lambda!142510 lambda!142497)))

(assert (=> bs!636780 (= lambda!142510 lambda!142506)))

(declare-fun bs!636784 () Bool)

(assert (= bs!636784 (and b!4365066 b!4365051)))

(assert (=> bs!636784 (= (= lt!1577422 (+!716 lt!1577422 lt!1577424)) (= lambda!142510 lambda!142500))))

(declare-fun bs!636785 () Bool)

(assert (= bs!636785 (and b!4365066 b!4365038)))

(assert (=> bs!636785 (= lambda!142510 lambda!142496)))

(assert (=> b!4365066 true))

(declare-fun lambda!142511 () Int)

(declare-fun lt!1577882 () ListMap!2293)

(assert (=> bs!636776 (= (= lt!1577882 lt!1577798) (= lambda!142511 lambda!142498))))

(assert (=> bs!636777 (= (= lt!1577882 lt!1577831) (= lambda!142511 lambda!142502))))

(assert (=> bs!636778 (= (= lt!1577882 lt!1577422) (= lambda!142511 lambda!142505))))

(assert (=> bs!636779 (= (= lt!1577882 lt!1577814) (= lambda!142511 lambda!142499))))

(assert (=> bs!636780 (= (= lt!1577882 lt!1577853) (= lambda!142511 lambda!142507))))

(assert (=> bs!636781 (= (= lt!1577882 lt!1577422) (= lambda!142511 lambda!142509))))

(assert (=> b!4365066 (= (= lt!1577882 lt!1577422) (= lambda!142511 lambda!142510))))

(assert (=> bs!636777 (= (= lt!1577882 (+!716 lt!1577422 lt!1577424)) (= lambda!142511 lambda!142501))))

(assert (=> bs!636782 (= (= lt!1577882 lt!1577847) (= lambda!142511 lambda!142503))))

(assert (=> bs!636783 (= (= lt!1577882 lt!1577869) (= lambda!142511 lambda!142508))))

(assert (=> bs!636776 (= (= lt!1577882 lt!1577422) (= lambda!142511 lambda!142497))))

(assert (=> bs!636780 (= (= lt!1577882 lt!1577422) (= lambda!142511 lambda!142506))))

(assert (=> bs!636784 (= (= lt!1577882 (+!716 lt!1577422 lt!1577424)) (= lambda!142511 lambda!142500))))

(assert (=> bs!636785 (= (= lt!1577882 lt!1577422) (= lambda!142511 lambda!142496))))

(assert (=> b!4365066 true))

(declare-fun bs!636786 () Bool)

(declare-fun d!1291822 () Bool)

(assert (= bs!636786 (and d!1291822 b!4365037)))

(declare-fun lambda!142512 () Int)

(declare-fun lt!1577898 () ListMap!2293)

(assert (=> bs!636786 (= (= lt!1577898 lt!1577798) (= lambda!142512 lambda!142498))))

(declare-fun bs!636787 () Bool)

(assert (= bs!636787 (and d!1291822 b!4365050)))

(assert (=> bs!636787 (= (= lt!1577898 lt!1577831) (= lambda!142512 lambda!142502))))

(declare-fun bs!636788 () Bool)

(assert (= bs!636788 (and d!1291822 b!4365058)))

(assert (=> bs!636788 (= (= lt!1577898 lt!1577422) (= lambda!142512 lambda!142505))))

(declare-fun bs!636789 () Bool)

(assert (= bs!636789 (and d!1291822 d!1291756)))

(assert (=> bs!636789 (= (= lt!1577898 lt!1577814) (= lambda!142512 lambda!142499))))

(declare-fun bs!636790 () Bool)

(assert (= bs!636790 (and d!1291822 b!4365057)))

(assert (=> bs!636790 (= (= lt!1577898 lt!1577853) (= lambda!142512 lambda!142507))))

(declare-fun bs!636791 () Bool)

(assert (= bs!636791 (and d!1291822 b!4365067)))

(assert (=> bs!636791 (= (= lt!1577898 lt!1577422) (= lambda!142512 lambda!142509))))

(declare-fun bs!636792 () Bool)

(assert (= bs!636792 (and d!1291822 b!4365066)))

(assert (=> bs!636792 (= (= lt!1577898 lt!1577422) (= lambda!142512 lambda!142510))))

(assert (=> bs!636787 (= (= lt!1577898 (+!716 lt!1577422 lt!1577424)) (= lambda!142512 lambda!142501))))

(declare-fun bs!636793 () Bool)

(assert (= bs!636793 (and d!1291822 d!1291810)))

(assert (=> bs!636793 (= (= lt!1577898 lt!1577847) (= lambda!142512 lambda!142503))))

(declare-fun bs!636794 () Bool)

(assert (= bs!636794 (and d!1291822 d!1291814)))

(assert (=> bs!636794 (= (= lt!1577898 lt!1577869) (= lambda!142512 lambda!142508))))

(assert (=> bs!636792 (= (= lt!1577898 lt!1577882) (= lambda!142512 lambda!142511))))

(assert (=> bs!636786 (= (= lt!1577898 lt!1577422) (= lambda!142512 lambda!142497))))

(assert (=> bs!636790 (= (= lt!1577898 lt!1577422) (= lambda!142512 lambda!142506))))

(declare-fun bs!636795 () Bool)

(assert (= bs!636795 (and d!1291822 b!4365051)))

(assert (=> bs!636795 (= (= lt!1577898 (+!716 lt!1577422 lt!1577424)) (= lambda!142512 lambda!142500))))

(declare-fun bs!636796 () Bool)

(assert (= bs!636796 (and d!1291822 b!4365038)))

(assert (=> bs!636796 (= (= lt!1577898 lt!1577422) (= lambda!142512 lambda!142496))))

(assert (=> d!1291822 true))

(declare-fun bm!303435 () Bool)

(declare-fun call!303441 () Unit!72893)

(assert (=> bm!303435 (= call!303441 (lemmaContainsAllItsOwnKeys!79 lt!1577422))))

(declare-fun c!742158 () Bool)

(declare-fun lt!1577892 () ListMap!2293)

(declare-fun call!303440 () Bool)

(declare-fun bm!303436 () Bool)

(assert (=> bm!303436 (= call!303440 (forall!9190 (ite c!742158 (toList!3050 lt!1577422) (toList!3050 lt!1577892)) (ite c!742158 lambda!142509 lambda!142511)))))

(declare-fun e!2716641 () Bool)

(assert (=> d!1291822 e!2716641))

(declare-fun res!1795459 () Bool)

(assert (=> d!1291822 (=> (not res!1795459) (not e!2716641))))

(assert (=> d!1291822 (= res!1795459 (forall!9190 lt!1577423 lambda!142512))))

(declare-fun e!2716642 () ListMap!2293)

(assert (=> d!1291822 (= lt!1577898 e!2716642)))

(assert (=> d!1291822 (= c!742158 ((_ is Nil!49037) lt!1577423))))

(assert (=> d!1291822 (noDuplicateKeys!533 lt!1577423)))

(assert (=> d!1291822 (= (addToMapMapFromBucket!221 lt!1577423 lt!1577422) lt!1577898)))

(declare-fun b!4365064 () Bool)

(declare-fun e!2716640 () Bool)

(assert (=> b!4365064 (= e!2716640 (forall!9190 (toList!3050 lt!1577422) lambda!142511))))

(declare-fun b!4365065 () Bool)

(assert (=> b!4365065 (= e!2716641 (invariantList!696 (toList!3050 lt!1577898)))))

(assert (=> b!4365066 (= e!2716642 lt!1577882)))

(assert (=> b!4365066 (= lt!1577892 (+!716 lt!1577422 (h!54606 lt!1577423)))))

(assert (=> b!4365066 (= lt!1577882 (addToMapMapFromBucket!221 (t!356081 lt!1577423) (+!716 lt!1577422 (h!54606 lt!1577423))))))

(declare-fun lt!1577897 () Unit!72893)

(assert (=> b!4365066 (= lt!1577897 call!303441)))

(assert (=> b!4365066 (forall!9190 (toList!3050 lt!1577422) lambda!142510)))

(declare-fun lt!1577893 () Unit!72893)

(assert (=> b!4365066 (= lt!1577893 lt!1577897)))

(assert (=> b!4365066 (forall!9190 (toList!3050 lt!1577892) lambda!142511)))

(declare-fun lt!1577899 () Unit!72893)

(declare-fun Unit!72984 () Unit!72893)

(assert (=> b!4365066 (= lt!1577899 Unit!72984)))

(declare-fun call!303442 () Bool)

(assert (=> b!4365066 call!303442))

(declare-fun lt!1577886 () Unit!72893)

(declare-fun Unit!72985 () Unit!72893)

(assert (=> b!4365066 (= lt!1577886 Unit!72985)))

(declare-fun lt!1577896 () Unit!72893)

(declare-fun Unit!72986 () Unit!72893)

(assert (=> b!4365066 (= lt!1577896 Unit!72986)))

(declare-fun lt!1577889 () Unit!72893)

(assert (=> b!4365066 (= lt!1577889 (forallContained!1831 (toList!3050 lt!1577892) lambda!142511 (h!54606 lt!1577423)))))

(assert (=> b!4365066 (contains!11305 lt!1577892 (_1!27545 (h!54606 lt!1577423)))))

(declare-fun lt!1577883 () Unit!72893)

(declare-fun Unit!72987 () Unit!72893)

(assert (=> b!4365066 (= lt!1577883 Unit!72987)))

(assert (=> b!4365066 (contains!11305 lt!1577882 (_1!27545 (h!54606 lt!1577423)))))

(declare-fun lt!1577891 () Unit!72893)

(declare-fun Unit!72988 () Unit!72893)

(assert (=> b!4365066 (= lt!1577891 Unit!72988)))

(assert (=> b!4365066 (forall!9190 lt!1577423 lambda!142511)))

(declare-fun lt!1577884 () Unit!72893)

(declare-fun Unit!72989 () Unit!72893)

(assert (=> b!4365066 (= lt!1577884 Unit!72989)))

(assert (=> b!4365066 call!303440))

(declare-fun lt!1577887 () Unit!72893)

(declare-fun Unit!72990 () Unit!72893)

(assert (=> b!4365066 (= lt!1577887 Unit!72990)))

(declare-fun lt!1577901 () Unit!72893)

(declare-fun Unit!72991 () Unit!72893)

(assert (=> b!4365066 (= lt!1577901 Unit!72991)))

(declare-fun lt!1577894 () Unit!72893)

(assert (=> b!4365066 (= lt!1577894 (addForallContainsKeyThenBeforeAdding!79 lt!1577422 lt!1577882 (_1!27545 (h!54606 lt!1577423)) (_2!27545 (h!54606 lt!1577423))))))

(assert (=> b!4365066 (forall!9190 (toList!3050 lt!1577422) lambda!142511)))

(declare-fun lt!1577900 () Unit!72893)

(assert (=> b!4365066 (= lt!1577900 lt!1577894)))

(assert (=> b!4365066 (forall!9190 (toList!3050 lt!1577422) lambda!142511)))

(declare-fun lt!1577888 () Unit!72893)

(declare-fun Unit!72992 () Unit!72893)

(assert (=> b!4365066 (= lt!1577888 Unit!72992)))

(declare-fun res!1795461 () Bool)

(assert (=> b!4365066 (= res!1795461 (forall!9190 lt!1577423 lambda!142511))))

(assert (=> b!4365066 (=> (not res!1795461) (not e!2716640))))

(assert (=> b!4365066 e!2716640))

(declare-fun lt!1577902 () Unit!72893)

(declare-fun Unit!72993 () Unit!72893)

(assert (=> b!4365066 (= lt!1577902 Unit!72993)))

(declare-fun bm!303437 () Bool)

(assert (=> bm!303437 (= call!303442 (forall!9190 (ite c!742158 (toList!3050 lt!1577422) (t!356081 lt!1577423)) (ite c!742158 lambda!142509 lambda!142511)))))

(assert (=> b!4365067 (= e!2716642 lt!1577422)))

(declare-fun lt!1577890 () Unit!72893)

(assert (=> b!4365067 (= lt!1577890 call!303441)))

(assert (=> b!4365067 call!303440))

(declare-fun lt!1577895 () Unit!72893)

(assert (=> b!4365067 (= lt!1577895 lt!1577890)))

(assert (=> b!4365067 call!303442))

(declare-fun lt!1577885 () Unit!72893)

(declare-fun Unit!72994 () Unit!72893)

(assert (=> b!4365067 (= lt!1577885 Unit!72994)))

(declare-fun b!4365068 () Bool)

(declare-fun res!1795460 () Bool)

(assert (=> b!4365068 (=> (not res!1795460) (not e!2716641))))

(assert (=> b!4365068 (= res!1795460 (forall!9190 (toList!3050 lt!1577422) lambda!142512))))

(assert (= (and d!1291822 c!742158) b!4365067))

(assert (= (and d!1291822 (not c!742158)) b!4365066))

(assert (= (and b!4365066 res!1795461) b!4365064))

(assert (= (or b!4365067 b!4365066) bm!303435))

(assert (= (or b!4365067 b!4365066) bm!303436))

(assert (= (or b!4365067 b!4365066) bm!303437))

(assert (= (and d!1291822 res!1795459) b!4365068))

(assert (= (and b!4365068 res!1795460) b!4365065))

(declare-fun m!4987283 () Bool)

(assert (=> b!4365064 m!4987283))

(assert (=> bm!303435 m!4987141))

(declare-fun m!4987285 () Bool)

(assert (=> b!4365068 m!4987285))

(declare-fun m!4987287 () Bool)

(assert (=> bm!303436 m!4987287))

(declare-fun m!4987289 () Bool)

(assert (=> b!4365066 m!4987289))

(declare-fun m!4987291 () Bool)

(assert (=> b!4365066 m!4987291))

(declare-fun m!4987293 () Bool)

(assert (=> b!4365066 m!4987293))

(declare-fun m!4987295 () Bool)

(assert (=> b!4365066 m!4987295))

(assert (=> b!4365066 m!4987283))

(declare-fun m!4987297 () Bool)

(assert (=> b!4365066 m!4987297))

(declare-fun m!4987299 () Bool)

(assert (=> b!4365066 m!4987299))

(declare-fun m!4987301 () Bool)

(assert (=> b!4365066 m!4987301))

(assert (=> b!4365066 m!4987299))

(assert (=> b!4365066 m!4987301))

(declare-fun m!4987303 () Bool)

(assert (=> b!4365066 m!4987303))

(declare-fun m!4987305 () Bool)

(assert (=> b!4365066 m!4987305))

(assert (=> b!4365066 m!4987283))

(declare-fun m!4987307 () Bool)

(assert (=> d!1291822 m!4987307))

(declare-fun m!4987309 () Bool)

(assert (=> d!1291822 m!4987309))

(declare-fun m!4987311 () Bool)

(assert (=> bm!303437 m!4987311))

(declare-fun m!4987313 () Bool)

(assert (=> b!4365065 m!4987313))

(assert (=> b!4364750 d!1291822))

(declare-fun d!1291824 () Bool)

(assert (=> d!1291824 (= (eq!295 lt!1577410 lt!1577417) (= (content!7763 (toList!3050 lt!1577410)) (content!7763 (toList!3050 lt!1577417))))))

(declare-fun bs!636797 () Bool)

(assert (= bs!636797 d!1291824))

(declare-fun m!4987315 () Bool)

(assert (=> bs!636797 m!4987315))

(assert (=> bs!636797 m!4986711))

(assert (=> b!4364750 d!1291824))

(declare-fun d!1291826 () Bool)

(declare-fun e!2716645 () Bool)

(assert (=> d!1291826 e!2716645))

(declare-fun res!1795464 () Bool)

(assert (=> d!1291826 (=> (not res!1795464) (not e!2716645))))

(declare-fun lt!1577905 () ListMap!2293)

(assert (=> d!1291826 (= res!1795464 (not (contains!11305 lt!1577905 key!3918)))))

(declare-fun removePresrvNoDuplicatedKeys!37 (List!49161 K!10400) List!49161)

(assert (=> d!1291826 (= lt!1577905 (ListMap!2294 (removePresrvNoDuplicatedKeys!37 (toList!3050 lt!1577426) key!3918)))))

(assert (=> d!1291826 (= (-!252 lt!1577426 key!3918) lt!1577905)))

(declare-fun b!4365071 () Bool)

(declare-fun content!7765 (List!49164) (InoxSet K!10400))

(assert (=> b!4365071 (= e!2716645 (= ((_ map and) (content!7765 (keys!16590 lt!1577426)) ((_ map not) (store ((as const (Array K!10400 Bool)) false) key!3918 true))) (content!7765 (keys!16590 lt!1577905))))))

(assert (= (and d!1291826 res!1795464) b!4365071))

(declare-fun m!4987317 () Bool)

(assert (=> d!1291826 m!4987317))

(declare-fun m!4987319 () Bool)

(assert (=> d!1291826 m!4987319))

(declare-fun m!4987321 () Bool)

(assert (=> b!4365071 m!4987321))

(declare-fun m!4987323 () Bool)

(assert (=> b!4365071 m!4987323))

(declare-fun m!4987325 () Bool)

(assert (=> b!4365071 m!4987325))

(assert (=> b!4365071 m!4987321))

(declare-fun m!4987327 () Bool)

(assert (=> b!4365071 m!4987327))

(assert (=> b!4365071 m!4987327))

(declare-fun m!4987329 () Bool)

(assert (=> b!4365071 m!4987329))

(assert (=> b!4364750 d!1291826))

(declare-fun d!1291828 () Bool)

(assert (=> d!1291828 (= (tail!7050 newBucket!200) (t!356081 newBucket!200))))

(assert (=> b!4364750 d!1291828))

(declare-fun d!1291830 () Bool)

(assert (=> d!1291830 (= (contains!11305 lt!1577414 key!3918) (contains!11305 lt!1577420 key!3918))))

(declare-fun lt!1577908 () Unit!72893)

(declare-fun choose!27106 (ListMap!2293 ListMap!2293 K!10400) Unit!72893)

(assert (=> d!1291830 (= lt!1577908 (choose!27106 lt!1577414 lt!1577420 key!3918))))

(assert (=> d!1291830 (eq!295 lt!1577414 lt!1577420)))

(assert (=> d!1291830 (= (lemmaEquivalentThenSameContains!102 lt!1577414 lt!1577420 key!3918) lt!1577908)))

(declare-fun bs!636798 () Bool)

(assert (= bs!636798 d!1291830))

(assert (=> bs!636798 m!4986575))

(assert (=> bs!636798 m!4986607))

(declare-fun m!4987331 () Bool)

(assert (=> bs!636798 m!4987331))

(assert (=> bs!636798 m!4986587))

(assert (=> b!4364750 d!1291830))

(declare-fun bs!636799 () Bool)

(declare-fun d!1291832 () Bool)

(assert (= bs!636799 (and d!1291832 d!1291746)))

(declare-fun lambda!142515 () Int)

(assert (=> bs!636799 (= lambda!142515 lambda!142418)))

(declare-fun bs!636800 () Bool)

(assert (= bs!636800 (and d!1291832 start!423148)))

(assert (=> bs!636800 (= lambda!142515 lambda!142401)))

(declare-fun bs!636801 () Bool)

(assert (= bs!636801 (and d!1291832 d!1291812)))

(assert (=> bs!636801 (= lambda!142515 lambda!142504)))

(declare-fun bs!636802 () Bool)

(assert (= bs!636802 (and d!1291832 d!1291754)))

(assert (=> bs!636802 (= lambda!142515 lambda!142447)))

(declare-fun bs!636803 () Bool)

(assert (= bs!636803 (and d!1291832 d!1291716)))

(assert (=> bs!636803 (not (= lambda!142515 lambda!142404))))

(assert (=> d!1291832 (eq!295 (extractMap!592 (toList!3049 (+!715 lm!1707 (tuple2!48505 hash!377 lt!1577431)))) (-!252 (extractMap!592 (toList!3049 lm!1707)) key!3918))))

(declare-fun lt!1577911 () Unit!72893)

(declare-fun choose!27107 (ListLongMap!1699 (_ BitVec 64) List!49161 K!10400 Hashable!4925) Unit!72893)

(assert (=> d!1291832 (= lt!1577911 (choose!27107 lm!1707 hash!377 lt!1577431 key!3918 hashF!1247))))

(assert (=> d!1291832 (forall!9188 (toList!3049 lm!1707) lambda!142515)))

(assert (=> d!1291832 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!67 lm!1707 hash!377 lt!1577431 key!3918 hashF!1247) lt!1577911)))

(declare-fun bs!636804 () Bool)

(assert (= bs!636804 d!1291832))

(declare-fun m!4987333 () Bool)

(assert (=> bs!636804 m!4987333))

(declare-fun m!4987335 () Bool)

(assert (=> bs!636804 m!4987335))

(declare-fun m!4987337 () Bool)

(assert (=> bs!636804 m!4987337))

(assert (=> bs!636804 m!4986567))

(declare-fun m!4987339 () Bool)

(assert (=> bs!636804 m!4987339))

(assert (=> bs!636804 m!4986567))

(assert (=> bs!636804 m!4987335))

(declare-fun m!4987341 () Bool)

(assert (=> bs!636804 m!4987341))

(assert (=> bs!636804 m!4986573))

(assert (=> bs!636804 m!4987333))

(assert (=> b!4364750 d!1291832))

(declare-fun b!4365072 () Bool)

(declare-fun e!2716650 () List!49164)

(assert (=> b!4365072 (= e!2716650 (getKeysList!144 (toList!3050 lt!1577426)))))

(declare-fun b!4365073 () Bool)

(declare-fun e!2716649 () Bool)

(assert (=> b!4365073 (= e!2716649 (not (contains!11308 (keys!16590 lt!1577426) key!3918)))))

(declare-fun b!4365074 () Bool)

(declare-fun e!2716646 () Unit!72893)

(declare-fun e!2716647 () Unit!72893)

(assert (=> b!4365074 (= e!2716646 e!2716647)))

(declare-fun c!742161 () Bool)

(declare-fun call!303443 () Bool)

(assert (=> b!4365074 (= c!742161 call!303443)))

(declare-fun b!4365075 () Bool)

(assert (=> b!4365075 (= e!2716650 (keys!16590 lt!1577426))))

(declare-fun b!4365076 () Bool)

(assert (=> b!4365076 false))

(declare-fun lt!1577912 () Unit!72893)

(declare-fun lt!1577918 () Unit!72893)

(assert (=> b!4365076 (= lt!1577912 lt!1577918)))

(assert (=> b!4365076 (containsKey!765 (toList!3050 lt!1577426) key!3918)))

(assert (=> b!4365076 (= lt!1577918 (lemmaInGetKeysListThenContainsKey!142 (toList!3050 lt!1577426) key!3918))))

(declare-fun Unit!72995 () Unit!72893)

(assert (=> b!4365076 (= e!2716647 Unit!72995)))

(declare-fun b!4365077 () Bool)

(declare-fun e!2716651 () Bool)

(declare-fun e!2716648 () Bool)

(assert (=> b!4365077 (= e!2716651 e!2716648)))

(declare-fun res!1795467 () Bool)

(assert (=> b!4365077 (=> (not res!1795467) (not e!2716648))))

(assert (=> b!4365077 (= res!1795467 (isDefined!7798 (getValueByKey!491 (toList!3050 lt!1577426) key!3918)))))

(declare-fun b!4365079 () Bool)

(declare-fun Unit!72996 () Unit!72893)

(assert (=> b!4365079 (= e!2716647 Unit!72996)))

(declare-fun b!4365080 () Bool)

(declare-fun lt!1577915 () Unit!72893)

(assert (=> b!4365080 (= e!2716646 lt!1577915)))

(declare-fun lt!1577913 () Unit!72893)

(assert (=> b!4365080 (= lt!1577913 (lemmaContainsKeyImpliesGetValueByKeyDefined!401 (toList!3050 lt!1577426) key!3918))))

(assert (=> b!4365080 (isDefined!7798 (getValueByKey!491 (toList!3050 lt!1577426) key!3918))))

(declare-fun lt!1577916 () Unit!72893)

(assert (=> b!4365080 (= lt!1577916 lt!1577913)))

(assert (=> b!4365080 (= lt!1577915 (lemmaInListThenGetKeysListContains!141 (toList!3050 lt!1577426) key!3918))))

(assert (=> b!4365080 call!303443))

(declare-fun bm!303438 () Bool)

(assert (=> bm!303438 (= call!303443 (contains!11308 e!2716650 key!3918))))

(declare-fun c!742159 () Bool)

(declare-fun c!742160 () Bool)

(assert (=> bm!303438 (= c!742159 c!742160)))

(declare-fun b!4365078 () Bool)

(assert (=> b!4365078 (= e!2716648 (contains!11308 (keys!16590 lt!1577426) key!3918))))

(declare-fun d!1291834 () Bool)

(assert (=> d!1291834 e!2716651))

(declare-fun res!1795466 () Bool)

(assert (=> d!1291834 (=> res!1795466 e!2716651)))

(assert (=> d!1291834 (= res!1795466 e!2716649)))

(declare-fun res!1795465 () Bool)

(assert (=> d!1291834 (=> (not res!1795465) (not e!2716649))))

(declare-fun lt!1577917 () Bool)

(assert (=> d!1291834 (= res!1795465 (not lt!1577917))))

(declare-fun lt!1577919 () Bool)

(assert (=> d!1291834 (= lt!1577917 lt!1577919)))

(declare-fun lt!1577914 () Unit!72893)

(assert (=> d!1291834 (= lt!1577914 e!2716646)))

(assert (=> d!1291834 (= c!742160 lt!1577919)))

(assert (=> d!1291834 (= lt!1577919 (containsKey!765 (toList!3050 lt!1577426) key!3918))))

(assert (=> d!1291834 (= (contains!11305 lt!1577426 key!3918) lt!1577917)))

(assert (= (and d!1291834 c!742160) b!4365080))

(assert (= (and d!1291834 (not c!742160)) b!4365074))

(assert (= (and b!4365074 c!742161) b!4365076))

(assert (= (and b!4365074 (not c!742161)) b!4365079))

(assert (= (or b!4365080 b!4365074) bm!303438))

(assert (= (and bm!303438 c!742159) b!4365072))

(assert (= (and bm!303438 (not c!742159)) b!4365075))

(assert (= (and d!1291834 res!1795465) b!4365073))

(assert (= (and d!1291834 (not res!1795466)) b!4365077))

(assert (= (and b!4365077 res!1795467) b!4365078))

(assert (=> b!4365078 m!4987327))

(assert (=> b!4365078 m!4987327))

(declare-fun m!4987343 () Bool)

(assert (=> b!4365078 m!4987343))

(declare-fun m!4987345 () Bool)

(assert (=> d!1291834 m!4987345))

(declare-fun m!4987347 () Bool)

(assert (=> b!4365072 m!4987347))

(declare-fun m!4987349 () Bool)

(assert (=> bm!303438 m!4987349))

(declare-fun m!4987351 () Bool)

(assert (=> b!4365077 m!4987351))

(assert (=> b!4365077 m!4987351))

(declare-fun m!4987353 () Bool)

(assert (=> b!4365077 m!4987353))

(assert (=> b!4365076 m!4987345))

(declare-fun m!4987355 () Bool)

(assert (=> b!4365076 m!4987355))

(assert (=> b!4365073 m!4987327))

(assert (=> b!4365073 m!4987327))

(assert (=> b!4365073 m!4987343))

(assert (=> b!4365075 m!4987327))

(declare-fun m!4987357 () Bool)

(assert (=> b!4365080 m!4987357))

(assert (=> b!4365080 m!4987351))

(assert (=> b!4365080 m!4987351))

(assert (=> b!4365080 m!4987353))

(declare-fun m!4987359 () Bool)

(assert (=> b!4365080 m!4987359))

(assert (=> b!4364749 d!1291834))

(declare-fun bs!636805 () Bool)

(declare-fun d!1291836 () Bool)

(assert (= bs!636805 (and d!1291836 d!1291746)))

(declare-fun lambda!142516 () Int)

(assert (=> bs!636805 (= lambda!142516 lambda!142418)))

(declare-fun bs!636806 () Bool)

(assert (= bs!636806 (and d!1291836 start!423148)))

(assert (=> bs!636806 (= lambda!142516 lambda!142401)))

(declare-fun bs!636807 () Bool)

(assert (= bs!636807 (and d!1291836 d!1291812)))

(assert (=> bs!636807 (= lambda!142516 lambda!142504)))

(declare-fun bs!636808 () Bool)

(assert (= bs!636808 (and d!1291836 d!1291754)))

(assert (=> bs!636808 (= lambda!142516 lambda!142447)))

(declare-fun bs!636809 () Bool)

(assert (= bs!636809 (and d!1291836 d!1291832)))

(assert (=> bs!636809 (= lambda!142516 lambda!142515)))

(declare-fun bs!636810 () Bool)

(assert (= bs!636810 (and d!1291836 d!1291716)))

(assert (=> bs!636810 (not (= lambda!142516 lambda!142404))))

(declare-fun lt!1577920 () ListMap!2293)

(assert (=> d!1291836 (invariantList!696 (toList!3050 lt!1577920))))

(declare-fun e!2716652 () ListMap!2293)

(assert (=> d!1291836 (= lt!1577920 e!2716652)))

(declare-fun c!742162 () Bool)

(assert (=> d!1291836 (= c!742162 ((_ is Cons!49038) (toList!3049 lm!1707)))))

(assert (=> d!1291836 (forall!9188 (toList!3049 lm!1707) lambda!142516)))

(assert (=> d!1291836 (= (extractMap!592 (toList!3049 lm!1707)) lt!1577920)))

(declare-fun b!4365081 () Bool)

(assert (=> b!4365081 (= e!2716652 (addToMapMapFromBucket!221 (_2!27546 (h!54607 (toList!3049 lm!1707))) (extractMap!592 (t!356082 (toList!3049 lm!1707)))))))

(declare-fun b!4365082 () Bool)

(assert (=> b!4365082 (= e!2716652 (ListMap!2294 Nil!49037))))

(assert (= (and d!1291836 c!742162) b!4365081))

(assert (= (and d!1291836 (not c!742162)) b!4365082))

(declare-fun m!4987361 () Bool)

(assert (=> d!1291836 m!4987361))

(declare-fun m!4987363 () Bool)

(assert (=> d!1291836 m!4987363))

(assert (=> b!4365081 m!4986577))

(assert (=> b!4365081 m!4986577))

(declare-fun m!4987365 () Bool)

(assert (=> b!4365081 m!4987365))

(assert (=> b!4364749 d!1291836))

(assert (=> b!4364740 d!1291722))

(declare-fun bs!636811 () Bool)

(declare-fun d!1291838 () Bool)

(assert (= bs!636811 (and d!1291838 b!4365037)))

(declare-fun lambda!142519 () Int)

(assert (=> bs!636811 (not (= lambda!142519 lambda!142498))))

(declare-fun bs!636812 () Bool)

(assert (= bs!636812 (and d!1291838 b!4365050)))

(assert (=> bs!636812 (not (= lambda!142519 lambda!142502))))

(declare-fun bs!636813 () Bool)

(assert (= bs!636813 (and d!1291838 d!1291822)))

(assert (=> bs!636813 (not (= lambda!142519 lambda!142512))))

(declare-fun bs!636814 () Bool)

(assert (= bs!636814 (and d!1291838 b!4365058)))

(assert (=> bs!636814 (not (= lambda!142519 lambda!142505))))

(declare-fun bs!636815 () Bool)

(assert (= bs!636815 (and d!1291838 d!1291756)))

(assert (=> bs!636815 (not (= lambda!142519 lambda!142499))))

(declare-fun bs!636816 () Bool)

(assert (= bs!636816 (and d!1291838 b!4365057)))

(assert (=> bs!636816 (not (= lambda!142519 lambda!142507))))

(declare-fun bs!636817 () Bool)

(assert (= bs!636817 (and d!1291838 b!4365067)))

(assert (=> bs!636817 (not (= lambda!142519 lambda!142509))))

(declare-fun bs!636818 () Bool)

(assert (= bs!636818 (and d!1291838 b!4365066)))

(assert (=> bs!636818 (not (= lambda!142519 lambda!142510))))

(assert (=> bs!636812 (not (= lambda!142519 lambda!142501))))

(declare-fun bs!636819 () Bool)

(assert (= bs!636819 (and d!1291838 d!1291810)))

(assert (=> bs!636819 (not (= lambda!142519 lambda!142503))))

(declare-fun bs!636820 () Bool)

(assert (= bs!636820 (and d!1291838 d!1291814)))

(assert (=> bs!636820 (not (= lambda!142519 lambda!142508))))

(assert (=> bs!636818 (not (= lambda!142519 lambda!142511))))

(assert (=> bs!636811 (not (= lambda!142519 lambda!142497))))

(assert (=> bs!636816 (not (= lambda!142519 lambda!142506))))

(declare-fun bs!636821 () Bool)

(assert (= bs!636821 (and d!1291838 b!4365051)))

(assert (=> bs!636821 (not (= lambda!142519 lambda!142500))))

(declare-fun bs!636822 () Bool)

(assert (= bs!636822 (and d!1291838 b!4365038)))

(assert (=> bs!636822 (not (= lambda!142519 lambda!142496))))

(assert (=> d!1291838 true))

(assert (=> d!1291838 true))

(assert (=> d!1291838 (= (allKeysSameHash!491 newBucket!200 hash!377 hashF!1247) (forall!9190 newBucket!200 lambda!142519))))

(declare-fun bs!636823 () Bool)

(assert (= bs!636823 d!1291838))

(declare-fun m!4987367 () Bool)

(assert (=> bs!636823 m!4987367))

(assert (=> b!4364748 d!1291838))

(assert (=> start!423148 d!1291742))

(declare-fun d!1291840 () Bool)

(assert (=> d!1291840 (= (inv!64586 lm!1707) (isStrictlySorted!122 (toList!3049 lm!1707)))))

(declare-fun bs!636824 () Bool)

(assert (= bs!636824 d!1291840))

(assert (=> bs!636824 m!4986675))

(assert (=> start!423148 d!1291840))

(declare-fun d!1291842 () Bool)

(assert (=> d!1291842 (= (apply!11385 lt!1577416 hash!377) (get!15935 (getValueByKey!490 (toList!3049 lt!1577416) hash!377)))))

(declare-fun bs!636825 () Bool)

(assert (= bs!636825 d!1291842))

(declare-fun m!4987369 () Bool)

(assert (=> bs!636825 m!4987369))

(assert (=> bs!636825 m!4987369))

(declare-fun m!4987371 () Bool)

(assert (=> bs!636825 m!4987371))

(assert (=> b!4364744 d!1291842))

(declare-fun d!1291844 () Bool)

(declare-fun res!1795472 () Bool)

(declare-fun e!2716657 () Bool)

(assert (=> d!1291844 (=> res!1795472 e!2716657)))

(assert (=> d!1291844 (= res!1795472 (not ((_ is Cons!49037) newBucket!200)))))

(assert (=> d!1291844 (= (noDuplicateKeys!533 newBucket!200) e!2716657)))

(declare-fun b!4365091 () Bool)

(declare-fun e!2716658 () Bool)

(assert (=> b!4365091 (= e!2716657 e!2716658)))

(declare-fun res!1795473 () Bool)

(assert (=> b!4365091 (=> (not res!1795473) (not e!2716658))))

(assert (=> b!4365091 (= res!1795473 (not (containsKey!763 (t!356081 newBucket!200) (_1!27545 (h!54606 newBucket!200)))))))

(declare-fun b!4365092 () Bool)

(assert (=> b!4365092 (= e!2716658 (noDuplicateKeys!533 (t!356081 newBucket!200)))))

(assert (= (and d!1291844 (not res!1795472)) b!4365091))

(assert (= (and b!4365091 res!1795473) b!4365092))

(declare-fun m!4987373 () Bool)

(assert (=> b!4365091 m!4987373))

(declare-fun m!4987375 () Bool)

(assert (=> b!4365092 m!4987375))

(assert (=> b!4364746 d!1291844))

(declare-fun d!1291846 () Bool)

(declare-fun hash!1671 (Hashable!4925 K!10400) (_ BitVec 64))

(assert (=> d!1291846 (= (hash!1667 hashF!1247 key!3918) (hash!1671 hashF!1247 key!3918))))

(declare-fun bs!636826 () Bool)

(assert (= bs!636826 d!1291846))

(declare-fun m!4987377 () Bool)

(assert (=> bs!636826 m!4987377))

(assert (=> b!4364745 d!1291846))

(declare-fun b!4365097 () Bool)

(declare-fun e!2716661 () Bool)

(declare-fun tp!1330596 () Bool)

(declare-fun tp!1330597 () Bool)

(assert (=> b!4365097 (= e!2716661 (and tp!1330596 tp!1330597))))

(assert (=> b!4364747 (= tp!1330582 e!2716661)))

(assert (= (and b!4364747 ((_ is Cons!49038) (toList!3049 lm!1707))) b!4365097))

(declare-fun e!2716664 () Bool)

(declare-fun b!4365102 () Bool)

(declare-fun tp!1330600 () Bool)

(assert (=> b!4365102 (= e!2716664 (and tp_is_empty!25369 tp_is_empty!25371 tp!1330600))))

(assert (=> b!4364751 (= tp!1330581 e!2716664)))

(assert (= (and b!4364751 ((_ is Cons!49037) (t!356081 newBucket!200))) b!4365102))

(declare-fun b_lambda!132227 () Bool)

(assert (= b_lambda!132207 (or start!423148 b_lambda!132227)))

(declare-fun bs!636827 () Bool)

(declare-fun d!1291848 () Bool)

(assert (= bs!636827 (and d!1291848 start!423148)))

(assert (=> bs!636827 (= (dynLambda!20659 lambda!142401 lt!1577430) (noDuplicateKeys!533 (_2!27546 lt!1577430)))))

(declare-fun m!4987379 () Bool)

(assert (=> bs!636827 m!4987379))

(assert (=> d!1291712 d!1291848))

(declare-fun b_lambda!132229 () Bool)

(assert (= b_lambda!132209 (or start!423148 b_lambda!132229)))

(declare-fun bs!636828 () Bool)

(declare-fun d!1291850 () Bool)

(assert (= bs!636828 (and d!1291850 start!423148)))

(assert (=> bs!636828 (= (dynLambda!20659 lambda!142401 (h!54607 (toList!3049 lt!1577421))) (noDuplicateKeys!533 (_2!27546 (h!54607 (toList!3049 lt!1577421)))))))

(declare-fun m!4987381 () Bool)

(assert (=> bs!636828 m!4987381))

(assert (=> b!4364852 d!1291850))

(declare-fun b_lambda!132231 () Bool)

(assert (= b_lambda!132213 (or start!423148 b_lambda!132231)))

(declare-fun bs!636829 () Bool)

(declare-fun d!1291852 () Bool)

(assert (= bs!636829 (and d!1291852 start!423148)))

(assert (=> bs!636829 (= (dynLambda!20659 lambda!142401 (h!54607 (toList!3049 lm!1707))) (noDuplicateKeys!533 (_2!27546 (h!54607 (toList!3049 lm!1707)))))))

(declare-fun m!4987383 () Bool)

(assert (=> bs!636829 m!4987383))

(assert (=> b!4364879 d!1291852))

(declare-fun b_lambda!132233 () Bool)

(assert (= b_lambda!132211 (or start!423148 b_lambda!132233)))

(declare-fun bs!636830 () Bool)

(declare-fun d!1291854 () Bool)

(assert (= bs!636830 (and d!1291854 start!423148)))

(assert (=> bs!636830 (= (dynLambda!20659 lambda!142401 (tuple2!48505 hash!377 newBucket!200)) (noDuplicateKeys!533 (_2!27546 (tuple2!48505 hash!377 newBucket!200))))))

(declare-fun m!4987385 () Bool)

(assert (=> bs!636830 m!4987385))

(assert (=> b!4364878 d!1291854))

(check-sat (not d!1291846) (not d!1291756) (not bm!303431) (not d!1291732) (not b!4364920) (not b!4364936) (not d!1291820) (not bm!303433) (not d!1291754) (not b!4364853) (not b!4364887) (not b!4365063) (not bm!303427) (not b!4365039) (not b!4365065) (not b!4365097) (not bm!303434) tp_is_empty!25369 (not b!4364937) (not b!4365092) (not b!4365064) (not b!4365091) (not d!1291838) (not b!4365077) (not b_lambda!132227) (not b!4365075) (not d!1291702) (not b!4365047) (not bs!636827) (not d!1291746) (not bm!303437) (not d!1291822) (not d!1291842) (not b!4364918) (not b!4364931) (not d!1291816) (not bm!303436) (not b!4364800) (not d!1291712) (not b_lambda!132229) (not b!4364914) (not d!1291714) (not b!4364797) (not b!4365050) (not d!1291744) (not b!4365060) (not b!4364862) (not bs!636830) (not b!4364935) (not d!1291716) (not bm!303426) (not d!1291752) (not b!4365046) (not b!4365081) (not b!4365066) (not d!1291814) (not b!4365048) (not d!1291750) (not b!4365102) (not d!1291830) (not b!4365062) (not b!4364917) (not d!1291748) (not d!1291696) (not b!4365072) (not b!4365078) (not bs!636828) (not b!4364919) (not d!1291826) (not b!4365076) (not b!4365055) tp_is_empty!25371 (not b!4365059) (not b!4365071) (not b!4365036) (not b!4365068) (not b!4364889) (not b_lambda!132231) (not b!4365057) (not d!1291824) (not b!4365035) (not b!4364915) (not bm!303430) (not bm!303428) (not b!4364934) (not b!4364894) (not d!1291840) (not d!1291726) (not d!1291836) (not d!1291720) (not bm!303435) (not b!4364939) (not b!4364932) (not b!4365056) (not bs!636829) (not b!4364829) (not d!1291808) (not bm!303438) (not b!4365037) (not b!4364863) (not b!4365053) (not b_lambda!132233) (not b!4364880) (not d!1291818) (not b!4365061) (not d!1291810) (not b!4365049) (not d!1291690) (not b!4364922) (not bm!303406) (not d!1291834) (not bm!303399) (not bm!303432) (not b!4365073) (not bm!303429) (not d!1291832) (not d!1291812) (not b!4365052) (not b!4364776) (not b!4365080) (not b!4364942))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416406 () Bool)

(assert start!416406)

(declare-fun b!4324698 () Bool)

(declare-fun b_free!129027 () Bool)

(declare-fun b_next!129731 () Bool)

(assert (=> b!4324698 (= b_free!129027 (not b_next!129731))))

(declare-fun tp!1327340 () Bool)

(declare-fun b_and!340603 () Bool)

(assert (=> b!4324698 (= tp!1327340 b_and!340603)))

(declare-fun b!4324700 () Bool)

(declare-fun b_free!129029 () Bool)

(declare-fun b_next!129733 () Bool)

(assert (=> b!4324700 (= b_free!129029 (not b_next!129733))))

(declare-fun tp!1327337 () Bool)

(declare-fun b_and!340605 () Bool)

(assert (=> b!4324700 (= tp!1327337 b_and!340605)))

(declare-fun b!4324686 () Bool)

(declare-fun res!1772353 () Bool)

(declare-fun e!2690759 () Bool)

(assert (=> b!4324686 (=> (not res!1772353) (not e!2690759))))

(declare-datatypes ((V!9866 0))(
  ( (V!9867 (val!15989 Int)) )
))
(declare-datatypes ((K!9664 0))(
  ( (K!9665 (val!15990 Int)) )
))
(declare-datatypes ((tuple2!47276 0))(
  ( (tuple2!47277 (_1!26926 K!9664) (_2!26926 V!9866)) )
))
(declare-datatypes ((List!48534 0))(
  ( (Nil!48410) (Cons!48410 (h!53875 tuple2!47276) (t!355430 List!48534)) )
))
(declare-datatypes ((array!17298 0))(
  ( (array!17299 (arr!7719 (Array (_ BitVec 32) (_ BitVec 64))) (size!35758 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4683 0))(
  ( (HashableExt!4682 (__x!30326 Int)) )
))
(declare-datatypes ((array!17300 0))(
  ( (array!17301 (arr!7720 (Array (_ BitVec 32) List!48534)) (size!35759 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9534 0))(
  ( (LongMapFixedSize!9535 (defaultEntry!5172 Int) (mask!13413 (_ BitVec 32)) (extraKeys!5032 (_ BitVec 32)) (zeroValue!5044 List!48534) (minValue!5044 List!48534) (_size!9579 (_ BitVec 32)) (_keys!5093 array!17298) (_values!5068 array!17300) (_vacant!4830 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18877 0))(
  ( (Cell!18878 (v!42833 LongMapFixedSize!9534)) )
))
(declare-datatypes ((MutLongMap!4767 0))(
  ( (LongMap!4767 (underlying!9763 Cell!18877)) (MutLongMapExt!4766 (__x!30327 Int)) )
))
(declare-datatypes ((Cell!18879 0))(
  ( (Cell!18880 (v!42834 MutLongMap!4767)) )
))
(declare-datatypes ((MutableMap!4673 0))(
  ( (MutableMapExt!4672 (__x!30328 Int)) (HashMap!4673 (underlying!9764 Cell!18879) (hashF!6971 Hashable!4683) (_size!9580 (_ BitVec 32)) (defaultValue!4844 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4673)

(declare-fun valid!3781 (MutableMap!4673) Bool)

(assert (=> b!4324686 (= res!1772353 (valid!3781 thiss!42308))))

(declare-fun b!4324687 () Bool)

(declare-fun e!2690767 () Bool)

(declare-fun e!2690770 () Bool)

(assert (=> b!4324687 (= e!2690767 e!2690770)))

(declare-fun b!4324688 () Bool)

(declare-fun e!2690762 () Bool)

(declare-fun e!2690764 () Bool)

(assert (=> b!4324688 (= e!2690762 e!2690764)))

(declare-fun res!1772352 () Bool)

(assert (=> b!4324688 (=> (not res!1772352) (not e!2690764))))

(declare-datatypes ((tuple2!47278 0))(
  ( (tuple2!47279 (_1!26927 Bool) (_2!26927 MutLongMap!4767)) )
))
(declare-fun lt!1541975 () tuple2!47278)

(assert (=> b!4324688 (= res!1772352 (_1!26927 lt!1541975))))

(declare-fun lt!1541966 () List!48534)

(declare-fun lt!1541971 () (_ BitVec 64))

(declare-fun update!544 (MutLongMap!4767 (_ BitVec 64) List!48534) tuple2!47278)

(assert (=> b!4324688 (= lt!1541975 (update!544 (v!42834 (underlying!9764 thiss!42308)) lt!1541971 lt!1541966))))

(declare-fun lt!1541968 () tuple2!47276)

(declare-fun lt!1541969 () List!48534)

(assert (=> b!4324688 (= lt!1541966 (Cons!48410 lt!1541968 lt!1541969))))

(declare-fun key!2048 () K!9664)

(declare-fun v!9179 () V!9866)

(assert (=> b!4324688 (= lt!1541968 (tuple2!47277 key!2048 v!9179))))

(declare-fun e!2690760 () List!48534)

(assert (=> b!4324688 (= lt!1541969 e!2690760)))

(declare-fun c!735742 () Bool)

(declare-fun contains!10475 (MutLongMap!4767 (_ BitVec 64)) Bool)

(assert (=> b!4324688 (= c!735742 (contains!10475 (v!42834 (underlying!9764 thiss!42308)) lt!1541971))))

(declare-fun hash!1212 (Hashable!4683 K!9664) (_ BitVec 64))

(assert (=> b!4324688 (= lt!1541971 (hash!1212 (hashF!6971 thiss!42308) key!2048))))

(declare-fun b!4324689 () Bool)

(declare-fun apply!11161 (MutLongMap!4767 (_ BitVec 64)) List!48534)

(assert (=> b!4324689 (= e!2690760 (apply!11161 (v!42834 (underlying!9764 thiss!42308)) lt!1541971))))

(declare-fun mapIsEmpty!21246 () Bool)

(declare-fun mapRes!21246 () Bool)

(assert (=> mapIsEmpty!21246 mapRes!21246))

(declare-fun b!4324690 () Bool)

(declare-fun e!2690771 () Bool)

(declare-fun e!2690766 () Bool)

(declare-fun lt!1541979 () MutLongMap!4767)

(get-info :version)

(assert (=> b!4324690 (= e!2690771 (and e!2690766 ((_ is LongMap!4767) lt!1541979)))))

(assert (=> b!4324690 (= lt!1541979 (v!42834 (underlying!9764 thiss!42308)))))

(declare-fun res!1772354 () Bool)

(assert (=> start!416406 (=> (not res!1772354) (not e!2690759))))

(assert (=> start!416406 (= res!1772354 ((_ is HashMap!4673) thiss!42308))))

(assert (=> start!416406 e!2690759))

(declare-fun e!2690769 () Bool)

(assert (=> start!416406 e!2690769))

(declare-fun tp_is_empty!24165 () Bool)

(assert (=> start!416406 tp_is_empty!24165))

(declare-fun tp_is_empty!24167 () Bool)

(assert (=> start!416406 tp_is_empty!24167))

(declare-fun mapNonEmpty!21246 () Bool)

(declare-fun tp!1327342 () Bool)

(declare-fun tp!1327336 () Bool)

(assert (=> mapNonEmpty!21246 (= mapRes!21246 (and tp!1327342 tp!1327336))))

(declare-fun mapKey!21246 () (_ BitVec 32))

(declare-fun mapValue!21246 () List!48534)

(declare-fun mapRest!21246 () (Array (_ BitVec 32) List!48534))

(assert (=> mapNonEmpty!21246 (= (arr!7720 (_values!5068 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))))) (store mapRest!21246 mapKey!21246 mapValue!21246))))

(declare-fun b!4324691 () Bool)

(declare-datatypes ((Unit!67941 0))(
  ( (Unit!67942) )
))
(declare-fun e!2690765 () Unit!67941)

(declare-fun Unit!67943 () Unit!67941)

(assert (=> b!4324691 (= e!2690765 Unit!67943)))

(declare-fun b!4324692 () Bool)

(declare-fun e!2690763 () Bool)

(declare-fun tp!1327338 () Bool)

(assert (=> b!4324692 (= e!2690763 (and tp!1327338 mapRes!21246))))

(declare-fun condMapEmpty!21246 () Bool)

(declare-fun mapDefault!21246 () List!48534)

(assert (=> b!4324692 (= condMapEmpty!21246 (= (arr!7720 (_values!5068 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48534)) mapDefault!21246)))))

(declare-fun b!4324693 () Bool)

(assert (=> b!4324693 (= e!2690759 e!2690762)))

(declare-fun res!1772355 () Bool)

(assert (=> b!4324693 (=> (not res!1772355) (not e!2690762))))

(declare-fun contains!10476 (MutableMap!4673 K!9664) Bool)

(assert (=> b!4324693 (= res!1772355 (not (contains!10476 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!47280 0))(
  ( (tuple2!47281 (_1!26928 (_ BitVec 64)) (_2!26928 List!48534)) )
))
(declare-datatypes ((List!48535 0))(
  ( (Nil!48411) (Cons!48411 (h!53876 tuple2!47280) (t!355431 List!48535)) )
))
(declare-datatypes ((ListLongMap!1197 0))(
  ( (ListLongMap!1198 (toList!2580 List!48535)) )
))
(declare-fun lt!1541978 () ListLongMap!1197)

(declare-fun map!10442 (MutLongMap!4767) ListLongMap!1197)

(assert (=> b!4324693 (= lt!1541978 (map!10442 (v!42834 (underlying!9764 thiss!42308))))))

(declare-datatypes ((ListMap!1857 0))(
  ( (ListMap!1858 (toList!2581 List!48534)) )
))
(declare-fun lt!1541970 () ListMap!1857)

(declare-fun map!10443 (MutableMap!4673) ListMap!1857)

(assert (=> b!4324693 (= lt!1541970 (map!10443 thiss!42308))))

(declare-fun b!4324694 () Bool)

(assert (=> b!4324694 (= e!2690766 e!2690767)))

(declare-fun b!4324695 () Bool)

(declare-fun lt!1541973 () Unit!67941)

(assert (=> b!4324695 (= e!2690765 lt!1541973)))

(declare-fun lt!1541972 () Unit!67941)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!242 (List!48535 (_ BitVec 64) List!48534 Hashable!4683) Unit!67941)

(assert (=> b!4324695 (= lt!1541972 (lemmaInLongMapAllKeySameHashThenForTuple!242 (toList!2580 lt!1541978) lt!1541971 lt!1541969 (hashF!6971 thiss!42308)))))

(declare-fun allKeysSameHash!257 (List!48534 (_ BitVec 64) Hashable!4683) Bool)

(assert (=> b!4324695 (allKeysSameHash!257 lt!1541969 lt!1541971 (hashF!6971 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!233 (List!48534 K!9664 (_ BitVec 64) Hashable!4683) Unit!67941)

(assert (=> b!4324695 (= lt!1541973 (lemmaRemovePairForKeyPreservesHash!233 lt!1541969 key!2048 lt!1541971 (hashF!6971 thiss!42308)))))

(declare-fun removePairForKey!280 (List!48534 K!9664) List!48534)

(assert (=> b!4324695 (allKeysSameHash!257 (removePairForKey!280 lt!1541969 key!2048) lt!1541971 (hashF!6971 thiss!42308))))

(declare-fun b!4324696 () Bool)

(declare-fun e!2690761 () Bool)

(declare-fun lt!1541980 () ListLongMap!1197)

(declare-fun allKeysSameHashInMap!399 (ListLongMap!1197 Hashable!4683) Bool)

(assert (=> b!4324696 (= e!2690761 (allKeysSameHashInMap!399 lt!1541980 (hashF!6971 thiss!42308)))))

(declare-fun b!4324697 () Bool)

(assert (=> b!4324697 (= e!2690760 Nil!48410)))

(declare-fun tp!1327339 () Bool)

(declare-fun tp!1327341 () Bool)

(declare-fun array_inv!5561 (array!17298) Bool)

(declare-fun array_inv!5562 (array!17300) Bool)

(assert (=> b!4324698 (= e!2690770 (and tp!1327340 tp!1327339 tp!1327341 (array_inv!5561 (_keys!5093 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))))) (array_inv!5562 (_values!5068 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))))) e!2690763))))

(declare-fun b!4324699 () Bool)

(declare-fun lt!1541967 () ListLongMap!1197)

(assert (=> b!4324699 (= e!2690764 (not (allKeysSameHashInMap!399 lt!1541967 (hashF!6971 thiss!42308))))))

(declare-fun lambda!134179 () Int)

(declare-fun forall!8830 (List!48535 Int) Bool)

(assert (=> b!4324699 (forall!8830 (toList!2580 lt!1541967) lambda!134179)))

(assert (=> b!4324699 (= lt!1541967 (map!10442 (_2!26927 lt!1541975)))))

(declare-fun eq!159 (ListMap!1857 ListMap!1857) Bool)

(declare-fun extractMap!379 (List!48535) ListMap!1857)

(declare-fun +!350 (ListMap!1857 tuple2!47276) ListMap!1857)

(assert (=> b!4324699 (eq!159 (extractMap!379 (toList!2580 lt!1541980)) (+!350 (extractMap!379 (toList!2580 lt!1541978)) lt!1541968))))

(declare-fun lt!1541977 () Unit!67941)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!64 (ListLongMap!1197 (_ BitVec 64) List!48534 K!9664 V!9866 Hashable!4683) Unit!67941)

(assert (=> b!4324699 (= lt!1541977 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!64 lt!1541978 lt!1541971 lt!1541966 key!2048 v!9179 (hashF!6971 thiss!42308)))))

(assert (=> b!4324699 e!2690761))

(declare-fun res!1772351 () Bool)

(assert (=> b!4324699 (=> (not res!1772351) (not e!2690761))))

(assert (=> b!4324699 (= res!1772351 (forall!8830 (toList!2580 lt!1541980) lambda!134179))))

(declare-fun +!351 (ListLongMap!1197 tuple2!47280) ListLongMap!1197)

(assert (=> b!4324699 (= lt!1541980 (+!351 lt!1541978 (tuple2!47281 lt!1541971 lt!1541966)))))

(declare-fun lt!1541974 () Unit!67941)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!192 (ListLongMap!1197 (_ BitVec 64) List!48534 Hashable!4683) Unit!67941)

(assert (=> b!4324699 (= lt!1541974 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!192 lt!1541978 lt!1541971 lt!1541966 (hashF!6971 thiss!42308)))))

(declare-fun lt!1541976 () Unit!67941)

(assert (=> b!4324699 (= lt!1541976 e!2690765)))

(declare-fun c!735743 () Bool)

(declare-fun isEmpty!28136 (List!48534) Bool)

(assert (=> b!4324699 (= c!735743 (not (isEmpty!28136 lt!1541969)))))

(assert (=> b!4324700 (= e!2690769 (and e!2690771 tp!1327337))))

(assert (= (and start!416406 res!1772354) b!4324686))

(assert (= (and b!4324686 res!1772353) b!4324693))

(assert (= (and b!4324693 res!1772355) b!4324688))

(assert (= (and b!4324688 c!735742) b!4324689))

(assert (= (and b!4324688 (not c!735742)) b!4324697))

(assert (= (and b!4324688 res!1772352) b!4324699))

(assert (= (and b!4324699 c!735743) b!4324695))

(assert (= (and b!4324699 (not c!735743)) b!4324691))

(assert (= (and b!4324699 res!1772351) b!4324696))

(assert (= (and b!4324692 condMapEmpty!21246) mapIsEmpty!21246))

(assert (= (and b!4324692 (not condMapEmpty!21246)) mapNonEmpty!21246))

(assert (= b!4324698 b!4324692))

(assert (= b!4324687 b!4324698))

(assert (= b!4324694 b!4324687))

(assert (= (and b!4324690 ((_ is LongMap!4767) (v!42834 (underlying!9764 thiss!42308)))) b!4324694))

(assert (= b!4324700 b!4324690))

(assert (= (and start!416406 ((_ is HashMap!4673) thiss!42308)) b!4324700))

(declare-fun m!4919327 () Bool)

(assert (=> b!4324695 m!4919327))

(declare-fun m!4919329 () Bool)

(assert (=> b!4324695 m!4919329))

(declare-fun m!4919331 () Bool)

(assert (=> b!4324695 m!4919331))

(declare-fun m!4919333 () Bool)

(assert (=> b!4324695 m!4919333))

(declare-fun m!4919335 () Bool)

(assert (=> b!4324695 m!4919335))

(assert (=> b!4324695 m!4919333))

(declare-fun m!4919337 () Bool)

(assert (=> b!4324686 m!4919337))

(declare-fun m!4919339 () Bool)

(assert (=> b!4324696 m!4919339))

(declare-fun m!4919341 () Bool)

(assert (=> b!4324698 m!4919341))

(declare-fun m!4919343 () Bool)

(assert (=> b!4324698 m!4919343))

(declare-fun m!4919345 () Bool)

(assert (=> b!4324699 m!4919345))

(declare-fun m!4919347 () Bool)

(assert (=> b!4324699 m!4919347))

(declare-fun m!4919349 () Bool)

(assert (=> b!4324699 m!4919349))

(declare-fun m!4919351 () Bool)

(assert (=> b!4324699 m!4919351))

(declare-fun m!4919353 () Bool)

(assert (=> b!4324699 m!4919353))

(declare-fun m!4919355 () Bool)

(assert (=> b!4324699 m!4919355))

(assert (=> b!4324699 m!4919351))

(declare-fun m!4919357 () Bool)

(assert (=> b!4324699 m!4919357))

(declare-fun m!4919359 () Bool)

(assert (=> b!4324699 m!4919359))

(declare-fun m!4919361 () Bool)

(assert (=> b!4324699 m!4919361))

(declare-fun m!4919363 () Bool)

(assert (=> b!4324699 m!4919363))

(assert (=> b!4324699 m!4919345))

(assert (=> b!4324699 m!4919353))

(declare-fun m!4919365 () Bool)

(assert (=> b!4324699 m!4919365))

(declare-fun m!4919367 () Bool)

(assert (=> b!4324699 m!4919367))

(declare-fun m!4919369 () Bool)

(assert (=> mapNonEmpty!21246 m!4919369))

(declare-fun m!4919371 () Bool)

(assert (=> b!4324693 m!4919371))

(declare-fun m!4919373 () Bool)

(assert (=> b!4324693 m!4919373))

(declare-fun m!4919375 () Bool)

(assert (=> b!4324693 m!4919375))

(declare-fun m!4919377 () Bool)

(assert (=> b!4324689 m!4919377))

(declare-fun m!4919379 () Bool)

(assert (=> b!4324688 m!4919379))

(declare-fun m!4919381 () Bool)

(assert (=> b!4324688 m!4919381))

(declare-fun m!4919383 () Bool)

(assert (=> b!4324688 m!4919383))

(check-sat (not b!4324688) tp_is_empty!24165 (not b!4324696) (not b!4324695) (not b!4324699) (not b!4324693) (not b!4324698) (not b_next!129731) (not b!4324689) (not b!4324692) (not mapNonEmpty!21246) tp_is_empty!24167 b_and!340605 (not b!4324686) (not b_next!129733) b_and!340603)
(check-sat b_and!340603 b_and!340605 (not b_next!129733) (not b_next!129731))
(get-model)

(declare-fun bs!607186 () Bool)

(declare-fun d!1271612 () Bool)

(assert (= bs!607186 (and d!1271612 b!4324699)))

(declare-fun lambda!134182 () Int)

(assert (=> bs!607186 (not (= lambda!134182 lambda!134179))))

(assert (=> d!1271612 true))

(assert (=> d!1271612 (= (allKeysSameHashInMap!399 lt!1541980 (hashF!6971 thiss!42308)) (forall!8830 (toList!2580 lt!1541980) lambda!134182))))

(declare-fun bs!607187 () Bool)

(assert (= bs!607187 d!1271612))

(declare-fun m!4919385 () Bool)

(assert (=> bs!607187 m!4919385))

(assert (=> b!4324696 d!1271612))

(declare-fun b!4324714 () Bool)

(declare-fun e!2690777 () List!48534)

(assert (=> b!4324714 (= e!2690777 Nil!48410)))

(declare-fun b!4324711 () Bool)

(declare-fun e!2690776 () List!48534)

(assert (=> b!4324711 (= e!2690776 (t!355430 lt!1541969))))

(declare-fun b!4324712 () Bool)

(assert (=> b!4324712 (= e!2690776 e!2690777)))

(declare-fun c!735749 () Bool)

(assert (=> b!4324712 (= c!735749 ((_ is Cons!48410) lt!1541969))))

(declare-fun d!1271614 () Bool)

(declare-fun lt!1541983 () List!48534)

(declare-fun containsKey!414 (List!48534 K!9664) Bool)

(assert (=> d!1271614 (not (containsKey!414 lt!1541983 key!2048))))

(assert (=> d!1271614 (= lt!1541983 e!2690776)))

(declare-fun c!735748 () Bool)

(assert (=> d!1271614 (= c!735748 (and ((_ is Cons!48410) lt!1541969) (= (_1!26926 (h!53875 lt!1541969)) key!2048)))))

(declare-fun noDuplicateKeys!267 (List!48534) Bool)

(assert (=> d!1271614 (noDuplicateKeys!267 lt!1541969)))

(assert (=> d!1271614 (= (removePairForKey!280 lt!1541969 key!2048) lt!1541983)))

(declare-fun b!4324713 () Bool)

(assert (=> b!4324713 (= e!2690777 (Cons!48410 (h!53875 lt!1541969) (removePairForKey!280 (t!355430 lt!1541969) key!2048)))))

(assert (= (and d!1271614 c!735748) b!4324711))

(assert (= (and d!1271614 (not c!735748)) b!4324712))

(assert (= (and b!4324712 c!735749) b!4324713))

(assert (= (and b!4324712 (not c!735749)) b!4324714))

(declare-fun m!4919387 () Bool)

(assert (=> d!1271614 m!4919387))

(declare-fun m!4919389 () Bool)

(assert (=> d!1271614 m!4919389))

(declare-fun m!4919391 () Bool)

(assert (=> b!4324713 m!4919391))

(assert (=> b!4324695 d!1271614))

(declare-fun d!1271616 () Bool)

(assert (=> d!1271616 true))

(assert (=> d!1271616 true))

(declare-fun lambda!134185 () Int)

(declare-fun forall!8831 (List!48534 Int) Bool)

(assert (=> d!1271616 (= (allKeysSameHash!257 (removePairForKey!280 lt!1541969 key!2048) lt!1541971 (hashF!6971 thiss!42308)) (forall!8831 (removePairForKey!280 lt!1541969 key!2048) lambda!134185))))

(declare-fun bs!607188 () Bool)

(assert (= bs!607188 d!1271616))

(assert (=> bs!607188 m!4919333))

(declare-fun m!4919393 () Bool)

(assert (=> bs!607188 m!4919393))

(assert (=> b!4324695 d!1271616))

(declare-fun bs!607189 () Bool)

(declare-fun d!1271618 () Bool)

(assert (= bs!607189 (and d!1271618 b!4324699)))

(declare-fun lambda!134188 () Int)

(assert (=> bs!607189 (not (= lambda!134188 lambda!134179))))

(declare-fun bs!607190 () Bool)

(assert (= bs!607190 (and d!1271618 d!1271612)))

(assert (=> bs!607190 (= lambda!134188 lambda!134182)))

(assert (=> d!1271618 true))

(assert (=> d!1271618 (allKeysSameHash!257 lt!1541969 lt!1541971 (hashF!6971 thiss!42308))))

(declare-fun lt!1541986 () Unit!67941)

(declare-fun choose!26440 (List!48535 (_ BitVec 64) List!48534 Hashable!4683) Unit!67941)

(assert (=> d!1271618 (= lt!1541986 (choose!26440 (toList!2580 lt!1541978) lt!1541971 lt!1541969 (hashF!6971 thiss!42308)))))

(assert (=> d!1271618 (forall!8830 (toList!2580 lt!1541978) lambda!134188)))

(assert (=> d!1271618 (= (lemmaInLongMapAllKeySameHashThenForTuple!242 (toList!2580 lt!1541978) lt!1541971 lt!1541969 (hashF!6971 thiss!42308)) lt!1541986)))

(declare-fun bs!607191 () Bool)

(assert (= bs!607191 d!1271618))

(assert (=> bs!607191 m!4919329))

(declare-fun m!4919395 () Bool)

(assert (=> bs!607191 m!4919395))

(declare-fun m!4919397 () Bool)

(assert (=> bs!607191 m!4919397))

(assert (=> b!4324695 d!1271618))

(declare-fun d!1271620 () Bool)

(assert (=> d!1271620 (allKeysSameHash!257 (removePairForKey!280 lt!1541969 key!2048) lt!1541971 (hashF!6971 thiss!42308))))

(declare-fun lt!1541989 () Unit!67941)

(declare-fun choose!26441 (List!48534 K!9664 (_ BitVec 64) Hashable!4683) Unit!67941)

(assert (=> d!1271620 (= lt!1541989 (choose!26441 lt!1541969 key!2048 lt!1541971 (hashF!6971 thiss!42308)))))

(assert (=> d!1271620 (noDuplicateKeys!267 lt!1541969)))

(assert (=> d!1271620 (= (lemmaRemovePairForKeyPreservesHash!233 lt!1541969 key!2048 lt!1541971 (hashF!6971 thiss!42308)) lt!1541989)))

(declare-fun bs!607192 () Bool)

(assert (= bs!607192 d!1271620))

(assert (=> bs!607192 m!4919333))

(assert (=> bs!607192 m!4919333))

(assert (=> bs!607192 m!4919335))

(declare-fun m!4919399 () Bool)

(assert (=> bs!607192 m!4919399))

(assert (=> bs!607192 m!4919389))

(assert (=> b!4324695 d!1271620))

(declare-fun bs!607193 () Bool)

(declare-fun d!1271622 () Bool)

(assert (= bs!607193 (and d!1271622 d!1271616)))

(declare-fun lambda!134189 () Int)

(assert (=> bs!607193 (= lambda!134189 lambda!134185)))

(assert (=> d!1271622 true))

(assert (=> d!1271622 true))

(assert (=> d!1271622 (= (allKeysSameHash!257 lt!1541969 lt!1541971 (hashF!6971 thiss!42308)) (forall!8831 lt!1541969 lambda!134189))))

(declare-fun bs!607194 () Bool)

(assert (= bs!607194 d!1271622))

(declare-fun m!4919401 () Bool)

(assert (=> bs!607194 m!4919401))

(assert (=> b!4324695 d!1271622))

(declare-fun bs!607195 () Bool)

(declare-fun b!4324723 () Bool)

(assert (= bs!607195 (and b!4324723 b!4324699)))

(declare-fun lambda!134192 () Int)

(assert (=> bs!607195 (= lambda!134192 lambda!134179)))

(declare-fun bs!607196 () Bool)

(assert (= bs!607196 (and b!4324723 d!1271612)))

(assert (=> bs!607196 (not (= lambda!134192 lambda!134182))))

(declare-fun bs!607197 () Bool)

(assert (= bs!607197 (and b!4324723 d!1271618)))

(assert (=> bs!607197 (not (= lambda!134192 lambda!134188))))

(declare-fun d!1271624 () Bool)

(declare-fun res!1772360 () Bool)

(declare-fun e!2690780 () Bool)

(assert (=> d!1271624 (=> (not res!1772360) (not e!2690780))))

(declare-fun valid!3782 (MutLongMap!4767) Bool)

(assert (=> d!1271624 (= res!1772360 (valid!3782 (v!42834 (underlying!9764 thiss!42308))))))

(assert (=> d!1271624 (= (valid!3781 thiss!42308) e!2690780)))

(declare-fun res!1772361 () Bool)

(assert (=> b!4324723 (=> (not res!1772361) (not e!2690780))))

(assert (=> b!4324723 (= res!1772361 (forall!8830 (toList!2580 (map!10442 (v!42834 (underlying!9764 thiss!42308)))) lambda!134192))))

(declare-fun b!4324724 () Bool)

(assert (=> b!4324724 (= e!2690780 (allKeysSameHashInMap!399 (map!10442 (v!42834 (underlying!9764 thiss!42308))) (hashF!6971 thiss!42308)))))

(assert (= (and d!1271624 res!1772360) b!4324723))

(assert (= (and b!4324723 res!1772361) b!4324724))

(declare-fun m!4919403 () Bool)

(assert (=> d!1271624 m!4919403))

(assert (=> b!4324723 m!4919373))

(declare-fun m!4919405 () Bool)

(assert (=> b!4324723 m!4919405))

(assert (=> b!4324724 m!4919373))

(assert (=> b!4324724 m!4919373))

(declare-fun m!4919407 () Bool)

(assert (=> b!4324724 m!4919407))

(assert (=> b!4324686 d!1271624))

(declare-fun bs!607198 () Bool)

(declare-fun d!1271626 () Bool)

(assert (= bs!607198 (and d!1271626 b!4324699)))

(declare-fun lambda!134195 () Int)

(assert (=> bs!607198 (= lambda!134195 lambda!134179)))

(declare-fun bs!607199 () Bool)

(assert (= bs!607199 (and d!1271626 d!1271612)))

(assert (=> bs!607199 (not (= lambda!134195 lambda!134182))))

(declare-fun bs!607200 () Bool)

(assert (= bs!607200 (and d!1271626 d!1271618)))

(assert (=> bs!607200 (not (= lambda!134195 lambda!134188))))

(declare-fun bs!607201 () Bool)

(assert (= bs!607201 (and d!1271626 b!4324723)))

(assert (=> bs!607201 (= lambda!134195 lambda!134192)))

(declare-fun lt!1541992 () ListMap!1857)

(declare-fun invariantList!606 (List!48534) Bool)

(assert (=> d!1271626 (invariantList!606 (toList!2581 lt!1541992))))

(declare-fun e!2690783 () ListMap!1857)

(assert (=> d!1271626 (= lt!1541992 e!2690783)))

(declare-fun c!735752 () Bool)

(assert (=> d!1271626 (= c!735752 ((_ is Cons!48411) (toList!2580 lt!1541978)))))

(assert (=> d!1271626 (forall!8830 (toList!2580 lt!1541978) lambda!134195)))

(assert (=> d!1271626 (= (extractMap!379 (toList!2580 lt!1541978)) lt!1541992)))

(declare-fun b!4324729 () Bool)

(declare-fun addToMapMapFromBucket!56 (List!48534 ListMap!1857) ListMap!1857)

(assert (=> b!4324729 (= e!2690783 (addToMapMapFromBucket!56 (_2!26928 (h!53876 (toList!2580 lt!1541978))) (extractMap!379 (t!355431 (toList!2580 lt!1541978)))))))

(declare-fun b!4324730 () Bool)

(assert (=> b!4324730 (= e!2690783 (ListMap!1858 Nil!48410))))

(assert (= (and d!1271626 c!735752) b!4324729))

(assert (= (and d!1271626 (not c!735752)) b!4324730))

(declare-fun m!4919409 () Bool)

(assert (=> d!1271626 m!4919409))

(declare-fun m!4919411 () Bool)

(assert (=> d!1271626 m!4919411))

(declare-fun m!4919413 () Bool)

(assert (=> b!4324729 m!4919413))

(assert (=> b!4324729 m!4919413))

(declare-fun m!4919415 () Bool)

(assert (=> b!4324729 m!4919415))

(assert (=> b!4324699 d!1271626))

(declare-fun d!1271628 () Bool)

(declare-fun e!2690786 () Bool)

(assert (=> d!1271628 e!2690786))

(declare-fun res!1772367 () Bool)

(assert (=> d!1271628 (=> (not res!1772367) (not e!2690786))))

(declare-fun lt!1542003 () ListLongMap!1197)

(declare-fun contains!10477 (ListLongMap!1197 (_ BitVec 64)) Bool)

(assert (=> d!1271628 (= res!1772367 (contains!10477 lt!1542003 (_1!26928 (tuple2!47281 lt!1541971 lt!1541966))))))

(declare-fun lt!1542001 () List!48535)

(assert (=> d!1271628 (= lt!1542003 (ListLongMap!1198 lt!1542001))))

(declare-fun lt!1542004 () Unit!67941)

(declare-fun lt!1542002 () Unit!67941)

(assert (=> d!1271628 (= lt!1542004 lt!1542002)))

(declare-datatypes ((Option!10315 0))(
  ( (None!10314) (Some!10314 (v!42839 List!48534)) )
))
(declare-fun getValueByKey!307 (List!48535 (_ BitVec 64)) Option!10315)

(assert (=> d!1271628 (= (getValueByKey!307 lt!1542001 (_1!26928 (tuple2!47281 lt!1541971 lt!1541966))) (Some!10314 (_2!26928 (tuple2!47281 lt!1541971 lt!1541966))))))

(declare-fun lemmaContainsTupThenGetReturnValue!102 (List!48535 (_ BitVec 64) List!48534) Unit!67941)

(assert (=> d!1271628 (= lt!1542002 (lemmaContainsTupThenGetReturnValue!102 lt!1542001 (_1!26928 (tuple2!47281 lt!1541971 lt!1541966)) (_2!26928 (tuple2!47281 lt!1541971 lt!1541966))))))

(declare-fun insertStrictlySorted!61 (List!48535 (_ BitVec 64) List!48534) List!48535)

(assert (=> d!1271628 (= lt!1542001 (insertStrictlySorted!61 (toList!2580 lt!1541978) (_1!26928 (tuple2!47281 lt!1541971 lt!1541966)) (_2!26928 (tuple2!47281 lt!1541971 lt!1541966))))))

(assert (=> d!1271628 (= (+!351 lt!1541978 (tuple2!47281 lt!1541971 lt!1541966)) lt!1542003)))

(declare-fun b!4324735 () Bool)

(declare-fun res!1772366 () Bool)

(assert (=> b!4324735 (=> (not res!1772366) (not e!2690786))))

(assert (=> b!4324735 (= res!1772366 (= (getValueByKey!307 (toList!2580 lt!1542003) (_1!26928 (tuple2!47281 lt!1541971 lt!1541966))) (Some!10314 (_2!26928 (tuple2!47281 lt!1541971 lt!1541966)))))))

(declare-fun b!4324736 () Bool)

(declare-fun contains!10478 (List!48535 tuple2!47280) Bool)

(assert (=> b!4324736 (= e!2690786 (contains!10478 (toList!2580 lt!1542003) (tuple2!47281 lt!1541971 lt!1541966)))))

(assert (= (and d!1271628 res!1772367) b!4324735))

(assert (= (and b!4324735 res!1772366) b!4324736))

(declare-fun m!4919417 () Bool)

(assert (=> d!1271628 m!4919417))

(declare-fun m!4919419 () Bool)

(assert (=> d!1271628 m!4919419))

(declare-fun m!4919421 () Bool)

(assert (=> d!1271628 m!4919421))

(declare-fun m!4919423 () Bool)

(assert (=> d!1271628 m!4919423))

(declare-fun m!4919425 () Bool)

(assert (=> b!4324735 m!4919425))

(declare-fun m!4919427 () Bool)

(assert (=> b!4324736 m!4919427))

(assert (=> b!4324699 d!1271628))

(declare-fun d!1271630 () Bool)

(assert (=> d!1271630 (= (isEmpty!28136 lt!1541969) ((_ is Nil!48410) lt!1541969))))

(assert (=> b!4324699 d!1271630))

(declare-fun d!1271632 () Bool)

(declare-fun e!2690789 () Bool)

(assert (=> d!1271632 e!2690789))

(declare-fun res!1772373 () Bool)

(assert (=> d!1271632 (=> (not res!1772373) (not e!2690789))))

(declare-fun lt!1542015 () ListMap!1857)

(declare-fun contains!10479 (ListMap!1857 K!9664) Bool)

(assert (=> d!1271632 (= res!1772373 (contains!10479 lt!1542015 (_1!26926 lt!1541968)))))

(declare-fun lt!1542013 () List!48534)

(assert (=> d!1271632 (= lt!1542015 (ListMap!1858 lt!1542013))))

(declare-fun lt!1542016 () Unit!67941)

(declare-fun lt!1542014 () Unit!67941)

(assert (=> d!1271632 (= lt!1542016 lt!1542014)))

(declare-datatypes ((Option!10316 0))(
  ( (None!10315) (Some!10315 (v!42840 V!9866)) )
))
(declare-fun getValueByKey!308 (List!48534 K!9664) Option!10316)

(assert (=> d!1271632 (= (getValueByKey!308 lt!1542013 (_1!26926 lt!1541968)) (Some!10315 (_2!26926 lt!1541968)))))

(declare-fun lemmaContainsTupThenGetReturnValue!103 (List!48534 K!9664 V!9866) Unit!67941)

(assert (=> d!1271632 (= lt!1542014 (lemmaContainsTupThenGetReturnValue!103 lt!1542013 (_1!26926 lt!1541968) (_2!26926 lt!1541968)))))

(declare-fun insertNoDuplicatedKeys!50 (List!48534 K!9664 V!9866) List!48534)

(assert (=> d!1271632 (= lt!1542013 (insertNoDuplicatedKeys!50 (toList!2581 (extractMap!379 (toList!2580 lt!1541978))) (_1!26926 lt!1541968) (_2!26926 lt!1541968)))))

(assert (=> d!1271632 (= (+!350 (extractMap!379 (toList!2580 lt!1541978)) lt!1541968) lt!1542015)))

(declare-fun b!4324741 () Bool)

(declare-fun res!1772372 () Bool)

(assert (=> b!4324741 (=> (not res!1772372) (not e!2690789))))

(assert (=> b!4324741 (= res!1772372 (= (getValueByKey!308 (toList!2581 lt!1542015) (_1!26926 lt!1541968)) (Some!10315 (_2!26926 lt!1541968))))))

(declare-fun b!4324742 () Bool)

(declare-fun contains!10480 (List!48534 tuple2!47276) Bool)

(assert (=> b!4324742 (= e!2690789 (contains!10480 (toList!2581 lt!1542015) lt!1541968))))

(assert (= (and d!1271632 res!1772373) b!4324741))

(assert (= (and b!4324741 res!1772372) b!4324742))

(declare-fun m!4919429 () Bool)

(assert (=> d!1271632 m!4919429))

(declare-fun m!4919431 () Bool)

(assert (=> d!1271632 m!4919431))

(declare-fun m!4919433 () Bool)

(assert (=> d!1271632 m!4919433))

(declare-fun m!4919435 () Bool)

(assert (=> d!1271632 m!4919435))

(declare-fun m!4919437 () Bool)

(assert (=> b!4324741 m!4919437))

(declare-fun m!4919439 () Bool)

(assert (=> b!4324742 m!4919439))

(assert (=> b!4324699 d!1271632))

(declare-fun bs!607202 () Bool)

(declare-fun d!1271634 () Bool)

(assert (= bs!607202 (and d!1271634 d!1271612)))

(declare-fun lambda!134198 () Int)

(assert (=> bs!607202 (not (= lambda!134198 lambda!134182))))

(declare-fun bs!607203 () Bool)

(assert (= bs!607203 (and d!1271634 b!4324723)))

(assert (=> bs!607203 (= lambda!134198 lambda!134192)))

(declare-fun bs!607204 () Bool)

(assert (= bs!607204 (and d!1271634 b!4324699)))

(assert (=> bs!607204 (= lambda!134198 lambda!134179)))

(declare-fun bs!607205 () Bool)

(assert (= bs!607205 (and d!1271634 d!1271618)))

(assert (=> bs!607205 (not (= lambda!134198 lambda!134188))))

(declare-fun bs!607206 () Bool)

(assert (= bs!607206 (and d!1271634 d!1271626)))

(assert (=> bs!607206 (= lambda!134198 lambda!134195)))

(assert (=> d!1271634 (eq!159 (extractMap!379 (toList!2580 (+!351 lt!1541978 (tuple2!47281 lt!1541971 lt!1541966)))) (+!350 (extractMap!379 (toList!2580 lt!1541978)) (tuple2!47277 key!2048 v!9179)))))

(declare-fun lt!1542019 () Unit!67941)

(declare-fun choose!26442 (ListLongMap!1197 (_ BitVec 64) List!48534 K!9664 V!9866 Hashable!4683) Unit!67941)

(assert (=> d!1271634 (= lt!1542019 (choose!26442 lt!1541978 lt!1541971 lt!1541966 key!2048 v!9179 (hashF!6971 thiss!42308)))))

(assert (=> d!1271634 (forall!8830 (toList!2580 lt!1541978) lambda!134198)))

(assert (=> d!1271634 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!64 lt!1541978 lt!1541971 lt!1541966 key!2048 v!9179 (hashF!6971 thiss!42308)) lt!1542019)))

(declare-fun bs!607207 () Bool)

(assert (= bs!607207 d!1271634))

(declare-fun m!4919441 () Bool)

(assert (=> bs!607207 m!4919441))

(declare-fun m!4919443 () Bool)

(assert (=> bs!607207 m!4919443))

(declare-fun m!4919445 () Bool)

(assert (=> bs!607207 m!4919445))

(assert (=> bs!607207 m!4919441))

(assert (=> bs!607207 m!4919345))

(assert (=> bs!607207 m!4919443))

(assert (=> bs!607207 m!4919345))

(assert (=> bs!607207 m!4919361))

(declare-fun m!4919447 () Bool)

(assert (=> bs!607207 m!4919447))

(declare-fun m!4919449 () Bool)

(assert (=> bs!607207 m!4919449))

(assert (=> b!4324699 d!1271634))

(declare-fun d!1271636 () Bool)

(declare-fun map!10444 (LongMapFixedSize!9534) ListLongMap!1197)

(assert (=> d!1271636 (= (map!10442 (_2!26927 lt!1541975)) (map!10444 (v!42833 (underlying!9763 (_2!26927 lt!1541975)))))))

(declare-fun bs!607208 () Bool)

(assert (= bs!607208 d!1271636))

(declare-fun m!4919451 () Bool)

(assert (=> bs!607208 m!4919451))

(assert (=> b!4324699 d!1271636))

(declare-fun d!1271638 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7576 (List!48534) (InoxSet tuple2!47276))

(assert (=> d!1271638 (= (eq!159 (extractMap!379 (toList!2580 lt!1541980)) (+!350 (extractMap!379 (toList!2580 lt!1541978)) lt!1541968)) (= (content!7576 (toList!2581 (extractMap!379 (toList!2580 lt!1541980)))) (content!7576 (toList!2581 (+!350 (extractMap!379 (toList!2580 lt!1541978)) lt!1541968)))))))

(declare-fun bs!607209 () Bool)

(assert (= bs!607209 d!1271638))

(declare-fun m!4919453 () Bool)

(assert (=> bs!607209 m!4919453))

(declare-fun m!4919455 () Bool)

(assert (=> bs!607209 m!4919455))

(assert (=> b!4324699 d!1271638))

(declare-fun d!1271640 () Bool)

(declare-fun res!1772378 () Bool)

(declare-fun e!2690794 () Bool)

(assert (=> d!1271640 (=> res!1772378 e!2690794)))

(assert (=> d!1271640 (= res!1772378 ((_ is Nil!48411) (toList!2580 lt!1541967)))))

(assert (=> d!1271640 (= (forall!8830 (toList!2580 lt!1541967) lambda!134179) e!2690794)))

(declare-fun b!4324747 () Bool)

(declare-fun e!2690795 () Bool)

(assert (=> b!4324747 (= e!2690794 e!2690795)))

(declare-fun res!1772379 () Bool)

(assert (=> b!4324747 (=> (not res!1772379) (not e!2690795))))

(declare-fun dynLambda!20518 (Int tuple2!47280) Bool)

(assert (=> b!4324747 (= res!1772379 (dynLambda!20518 lambda!134179 (h!53876 (toList!2580 lt!1541967))))))

(declare-fun b!4324748 () Bool)

(assert (=> b!4324748 (= e!2690795 (forall!8830 (t!355431 (toList!2580 lt!1541967)) lambda!134179))))

(assert (= (and d!1271640 (not res!1772378)) b!4324747))

(assert (= (and b!4324747 res!1772379) b!4324748))

(declare-fun b_lambda!127503 () Bool)

(assert (=> (not b_lambda!127503) (not b!4324747)))

(declare-fun m!4919457 () Bool)

(assert (=> b!4324747 m!4919457))

(declare-fun m!4919459 () Bool)

(assert (=> b!4324748 m!4919459))

(assert (=> b!4324699 d!1271640))

(declare-fun bs!607210 () Bool)

(declare-fun d!1271642 () Bool)

(assert (= bs!607210 (and d!1271642 d!1271612)))

(declare-fun lambda!134203 () Int)

(assert (=> bs!607210 (not (= lambda!134203 lambda!134182))))

(declare-fun bs!607211 () Bool)

(assert (= bs!607211 (and d!1271642 b!4324723)))

(assert (=> bs!607211 (= lambda!134203 lambda!134192)))

(declare-fun bs!607212 () Bool)

(assert (= bs!607212 (and d!1271642 d!1271634)))

(assert (=> bs!607212 (= lambda!134203 lambda!134198)))

(declare-fun bs!607213 () Bool)

(assert (= bs!607213 (and d!1271642 b!4324699)))

(assert (=> bs!607213 (= lambda!134203 lambda!134179)))

(declare-fun bs!607214 () Bool)

(assert (= bs!607214 (and d!1271642 d!1271618)))

(assert (=> bs!607214 (not (= lambda!134203 lambda!134188))))

(declare-fun bs!607215 () Bool)

(assert (= bs!607215 (and d!1271642 d!1271626)))

(assert (=> bs!607215 (= lambda!134203 lambda!134195)))

(declare-fun e!2690798 () Bool)

(assert (=> d!1271642 e!2690798))

(declare-fun res!1772382 () Bool)

(assert (=> d!1271642 (=> (not res!1772382) (not e!2690798))))

(declare-fun lt!1542025 () ListLongMap!1197)

(assert (=> d!1271642 (= res!1772382 (forall!8830 (toList!2580 lt!1542025) lambda!134203))))

(assert (=> d!1271642 (= lt!1542025 (+!351 lt!1541978 (tuple2!47281 lt!1541971 lt!1541966)))))

(declare-fun lt!1542024 () Unit!67941)

(declare-fun choose!26443 (ListLongMap!1197 (_ BitVec 64) List!48534 Hashable!4683) Unit!67941)

(assert (=> d!1271642 (= lt!1542024 (choose!26443 lt!1541978 lt!1541971 lt!1541966 (hashF!6971 thiss!42308)))))

(assert (=> d!1271642 (forall!8830 (toList!2580 lt!1541978) lambda!134203)))

(assert (=> d!1271642 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!192 lt!1541978 lt!1541971 lt!1541966 (hashF!6971 thiss!42308)) lt!1542024)))

(declare-fun b!4324751 () Bool)

(assert (=> b!4324751 (= e!2690798 (allKeysSameHashInMap!399 lt!1542025 (hashF!6971 thiss!42308)))))

(assert (= (and d!1271642 res!1772382) b!4324751))

(declare-fun m!4919461 () Bool)

(assert (=> d!1271642 m!4919461))

(assert (=> d!1271642 m!4919361))

(declare-fun m!4919463 () Bool)

(assert (=> d!1271642 m!4919463))

(declare-fun m!4919465 () Bool)

(assert (=> d!1271642 m!4919465))

(declare-fun m!4919467 () Bool)

(assert (=> b!4324751 m!4919467))

(assert (=> b!4324699 d!1271642))

(declare-fun bs!607216 () Bool)

(declare-fun d!1271644 () Bool)

(assert (= bs!607216 (and d!1271644 d!1271612)))

(declare-fun lambda!134204 () Int)

(assert (=> bs!607216 (= lambda!134204 lambda!134182)))

(declare-fun bs!607217 () Bool)

(assert (= bs!607217 (and d!1271644 b!4324723)))

(assert (=> bs!607217 (not (= lambda!134204 lambda!134192))))

(declare-fun bs!607218 () Bool)

(assert (= bs!607218 (and d!1271644 d!1271634)))

(assert (=> bs!607218 (not (= lambda!134204 lambda!134198))))

(declare-fun bs!607219 () Bool)

(assert (= bs!607219 (and d!1271644 b!4324699)))

(assert (=> bs!607219 (not (= lambda!134204 lambda!134179))))

(declare-fun bs!607220 () Bool)

(assert (= bs!607220 (and d!1271644 d!1271618)))

(assert (=> bs!607220 (= lambda!134204 lambda!134188)))

(declare-fun bs!607221 () Bool)

(assert (= bs!607221 (and d!1271644 d!1271642)))

(assert (=> bs!607221 (not (= lambda!134204 lambda!134203))))

(declare-fun bs!607222 () Bool)

(assert (= bs!607222 (and d!1271644 d!1271626)))

(assert (=> bs!607222 (not (= lambda!134204 lambda!134195))))

(assert (=> d!1271644 true))

(assert (=> d!1271644 (= (allKeysSameHashInMap!399 lt!1541967 (hashF!6971 thiss!42308)) (forall!8830 (toList!2580 lt!1541967) lambda!134204))))

(declare-fun bs!607223 () Bool)

(assert (= bs!607223 d!1271644))

(declare-fun m!4919469 () Bool)

(assert (=> bs!607223 m!4919469))

(assert (=> b!4324699 d!1271644))

(declare-fun d!1271646 () Bool)

(declare-fun res!1772383 () Bool)

(declare-fun e!2690799 () Bool)

(assert (=> d!1271646 (=> res!1772383 e!2690799)))

(assert (=> d!1271646 (= res!1772383 ((_ is Nil!48411) (toList!2580 lt!1541980)))))

(assert (=> d!1271646 (= (forall!8830 (toList!2580 lt!1541980) lambda!134179) e!2690799)))

(declare-fun b!4324752 () Bool)

(declare-fun e!2690800 () Bool)

(assert (=> b!4324752 (= e!2690799 e!2690800)))

(declare-fun res!1772384 () Bool)

(assert (=> b!4324752 (=> (not res!1772384) (not e!2690800))))

(assert (=> b!4324752 (= res!1772384 (dynLambda!20518 lambda!134179 (h!53876 (toList!2580 lt!1541980))))))

(declare-fun b!4324753 () Bool)

(assert (=> b!4324753 (= e!2690800 (forall!8830 (t!355431 (toList!2580 lt!1541980)) lambda!134179))))

(assert (= (and d!1271646 (not res!1772383)) b!4324752))

(assert (= (and b!4324752 res!1772384) b!4324753))

(declare-fun b_lambda!127505 () Bool)

(assert (=> (not b_lambda!127505) (not b!4324752)))

(declare-fun m!4919471 () Bool)

(assert (=> b!4324752 m!4919471))

(declare-fun m!4919473 () Bool)

(assert (=> b!4324753 m!4919473))

(assert (=> b!4324699 d!1271646))

(declare-fun bs!607224 () Bool)

(declare-fun d!1271648 () Bool)

(assert (= bs!607224 (and d!1271648 d!1271612)))

(declare-fun lambda!134205 () Int)

(assert (=> bs!607224 (not (= lambda!134205 lambda!134182))))

(declare-fun bs!607225 () Bool)

(assert (= bs!607225 (and d!1271648 b!4324723)))

(assert (=> bs!607225 (= lambda!134205 lambda!134192)))

(declare-fun bs!607226 () Bool)

(assert (= bs!607226 (and d!1271648 d!1271634)))

(assert (=> bs!607226 (= lambda!134205 lambda!134198)))

(declare-fun bs!607227 () Bool)

(assert (= bs!607227 (and d!1271648 b!4324699)))

(assert (=> bs!607227 (= lambda!134205 lambda!134179)))

(declare-fun bs!607228 () Bool)

(assert (= bs!607228 (and d!1271648 d!1271642)))

(assert (=> bs!607228 (= lambda!134205 lambda!134203)))

(declare-fun bs!607229 () Bool)

(assert (= bs!607229 (and d!1271648 d!1271626)))

(assert (=> bs!607229 (= lambda!134205 lambda!134195)))

(declare-fun bs!607230 () Bool)

(assert (= bs!607230 (and d!1271648 d!1271644)))

(assert (=> bs!607230 (not (= lambda!134205 lambda!134204))))

(declare-fun bs!607231 () Bool)

(assert (= bs!607231 (and d!1271648 d!1271618)))

(assert (=> bs!607231 (not (= lambda!134205 lambda!134188))))

(declare-fun lt!1542026 () ListMap!1857)

(assert (=> d!1271648 (invariantList!606 (toList!2581 lt!1542026))))

(declare-fun e!2690801 () ListMap!1857)

(assert (=> d!1271648 (= lt!1542026 e!2690801)))

(declare-fun c!735753 () Bool)

(assert (=> d!1271648 (= c!735753 ((_ is Cons!48411) (toList!2580 lt!1541980)))))

(assert (=> d!1271648 (forall!8830 (toList!2580 lt!1541980) lambda!134205)))

(assert (=> d!1271648 (= (extractMap!379 (toList!2580 lt!1541980)) lt!1542026)))

(declare-fun b!4324754 () Bool)

(assert (=> b!4324754 (= e!2690801 (addToMapMapFromBucket!56 (_2!26928 (h!53876 (toList!2580 lt!1541980))) (extractMap!379 (t!355431 (toList!2580 lt!1541980)))))))

(declare-fun b!4324755 () Bool)

(assert (=> b!4324755 (= e!2690801 (ListMap!1858 Nil!48410))))

(assert (= (and d!1271648 c!735753) b!4324754))

(assert (= (and d!1271648 (not c!735753)) b!4324755))

(declare-fun m!4919475 () Bool)

(assert (=> d!1271648 m!4919475))

(declare-fun m!4919477 () Bool)

(assert (=> d!1271648 m!4919477))

(declare-fun m!4919479 () Bool)

(assert (=> b!4324754 m!4919479))

(assert (=> b!4324754 m!4919479))

(declare-fun m!4919481 () Bool)

(assert (=> b!4324754 m!4919481))

(assert (=> b!4324699 d!1271648))

(declare-fun bs!607232 () Bool)

(declare-fun b!4324782 () Bool)

(assert (= bs!607232 (and b!4324782 d!1271612)))

(declare-fun lambda!134208 () Int)

(assert (=> bs!607232 (not (= lambda!134208 lambda!134182))))

(declare-fun bs!607233 () Bool)

(assert (= bs!607233 (and b!4324782 b!4324723)))

(assert (=> bs!607233 (= lambda!134208 lambda!134192)))

(declare-fun bs!607234 () Bool)

(assert (= bs!607234 (and b!4324782 d!1271634)))

(assert (=> bs!607234 (= lambda!134208 lambda!134198)))

(declare-fun bs!607235 () Bool)

(assert (= bs!607235 (and b!4324782 b!4324699)))

(assert (=> bs!607235 (= lambda!134208 lambda!134179)))

(declare-fun bs!607236 () Bool)

(assert (= bs!607236 (and b!4324782 d!1271642)))

(assert (=> bs!607236 (= lambda!134208 lambda!134203)))

(declare-fun bs!607237 () Bool)

(assert (= bs!607237 (and b!4324782 d!1271648)))

(assert (=> bs!607237 (= lambda!134208 lambda!134205)))

(declare-fun bs!607238 () Bool)

(assert (= bs!607238 (and b!4324782 d!1271626)))

(assert (=> bs!607238 (= lambda!134208 lambda!134195)))

(declare-fun bs!607239 () Bool)

(assert (= bs!607239 (and b!4324782 d!1271644)))

(assert (=> bs!607239 (not (= lambda!134208 lambda!134204))))

(declare-fun bs!607240 () Bool)

(assert (= bs!607240 (and b!4324782 d!1271618)))

(assert (=> bs!607240 (not (= lambda!134208 lambda!134188))))

(declare-fun bm!300061 () Bool)

(declare-fun call!300066 () Bool)

(declare-datatypes ((Option!10317 0))(
  ( (None!10316) (Some!10316 (v!42841 tuple2!47276)) )
))
(declare-fun call!300069 () Option!10317)

(declare-fun isDefined!7615 (Option!10317) Bool)

(assert (=> bm!300061 (= call!300066 (isDefined!7615 call!300069))))

(declare-fun b!4324778 () Bool)

(declare-fun e!2690822 () Unit!67941)

(declare-fun e!2690820 () Unit!67941)

(assert (=> b!4324778 (= e!2690822 e!2690820)))

(declare-fun res!1772393 () Bool)

(declare-fun call!300068 () Bool)

(assert (=> b!4324778 (= res!1772393 call!300068)))

(declare-fun e!2690818 () Bool)

(assert (=> b!4324778 (=> (not res!1772393) (not e!2690818))))

(declare-fun c!735764 () Bool)

(assert (=> b!4324778 (= c!735764 e!2690818)))

(declare-fun b!4324779 () Bool)

(assert (=> b!4324779 (= e!2690818 call!300066)))

(declare-fun b!4324780 () Bool)

(assert (=> b!4324780 false))

(declare-fun lt!1542070 () Unit!67941)

(declare-fun lt!1542085 () Unit!67941)

(assert (=> b!4324780 (= lt!1542070 lt!1542085)))

(declare-fun lt!1542072 () ListLongMap!1197)

(assert (=> b!4324780 (contains!10479 (extractMap!379 (toList!2580 lt!1542072)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!167 (ListLongMap!1197 K!9664 Hashable!4683) Unit!67941)

(assert (=> b!4324780 (= lt!1542085 (lemmaInLongMapThenInGenericMap!167 lt!1542072 key!2048 (hashF!6971 thiss!42308)))))

(declare-fun call!300070 () ListLongMap!1197)

(assert (=> b!4324780 (= lt!1542072 call!300070)))

(declare-fun Unit!67944 () Unit!67941)

(assert (=> b!4324780 (= e!2690820 Unit!67944)))

(declare-fun c!735765 () Bool)

(declare-fun lt!1542083 () ListLongMap!1197)

(declare-fun bm!300063 () Bool)

(declare-fun call!300067 () (_ BitVec 64))

(assert (=> bm!300063 (= call!300068 (contains!10477 (ite c!735765 lt!1542083 call!300070) call!300067))))

(declare-fun bm!300064 () Bool)

(assert (=> bm!300064 (= call!300067 (hash!1212 (hashF!6971 thiss!42308) key!2048))))

(declare-fun b!4324781 () Bool)

(declare-fun e!2690821 () Bool)

(assert (=> b!4324781 (= e!2690821 call!300066)))

(declare-fun call!300071 () List!48534)

(declare-fun bm!300065 () Bool)

(declare-fun apply!11162 (ListLongMap!1197 (_ BitVec 64)) List!48534)

(assert (=> bm!300065 (= call!300071 (apply!11162 (ite c!735765 lt!1542083 call!300070) call!300067))))

(declare-fun lt!1542076 () (_ BitVec 64))

(declare-fun e!2690817 () Unit!67941)

(declare-fun forallContained!1541 (List!48535 Int tuple2!47280) Unit!67941)

(assert (=> b!4324782 (= e!2690817 (forallContained!1541 (toList!2580 (map!10442 (v!42834 (underlying!9764 thiss!42308)))) lambda!134208 (tuple2!47281 lt!1542076 (apply!11161 (v!42834 (underlying!9764 thiss!42308)) lt!1542076))))))

(declare-fun c!735762 () Bool)

(assert (=> b!4324782 (= c!735762 (not (contains!10478 (toList!2580 (map!10442 (v!42834 (underlying!9764 thiss!42308)))) (tuple2!47281 lt!1542076 (apply!11161 (v!42834 (underlying!9764 thiss!42308)) lt!1542076)))))))

(declare-fun lt!1542081 () Unit!67941)

(declare-fun e!2690816 () Unit!67941)

(assert (=> b!4324782 (= lt!1542081 e!2690816)))

(declare-fun b!4324783 () Bool)

(declare-fun lt!1542068 () Unit!67941)

(assert (=> b!4324783 (= e!2690822 lt!1542068)))

(assert (=> b!4324783 (= lt!1542083 call!300070)))

(declare-fun lemmaInGenericMapThenInLongMap!167 (ListLongMap!1197 K!9664 Hashable!4683) Unit!67941)

(assert (=> b!4324783 (= lt!1542068 (lemmaInGenericMapThenInLongMap!167 lt!1542083 key!2048 (hashF!6971 thiss!42308)))))

(declare-fun res!1772391 () Bool)

(assert (=> b!4324783 (= res!1772391 call!300068)))

(assert (=> b!4324783 (=> (not res!1772391) (not e!2690821))))

(assert (=> b!4324783 e!2690821))

(declare-fun b!4324784 () Bool)

(declare-fun e!2690819 () Bool)

(declare-fun getPair!167 (List!48534 K!9664) Option!10317)

(assert (=> b!4324784 (= e!2690819 (isDefined!7615 (getPair!167 (apply!11161 (v!42834 (underlying!9764 thiss!42308)) lt!1542076) key!2048)))))

(declare-fun b!4324785 () Bool)

(declare-fun Unit!67945 () Unit!67941)

(assert (=> b!4324785 (= e!2690817 Unit!67945)))

(declare-fun b!4324786 () Bool)

(declare-fun Unit!67946 () Unit!67941)

(assert (=> b!4324786 (= e!2690820 Unit!67946)))

(declare-fun b!4324787 () Bool)

(assert (=> b!4324787 false))

(declare-fun lt!1542075 () Unit!67941)

(declare-fun lt!1542067 () Unit!67941)

(assert (=> b!4324787 (= lt!1542075 lt!1542067)))

(declare-fun lt!1542074 () List!48535)

(declare-fun lt!1542080 () List!48534)

(assert (=> b!4324787 (contains!10478 lt!1542074 (tuple2!47281 lt!1542076 lt!1542080))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!179 (List!48535 (_ BitVec 64) List!48534) Unit!67941)

(assert (=> b!4324787 (= lt!1542067 (lemmaGetValueByKeyImpliesContainsTuple!179 lt!1542074 lt!1542076 lt!1542080))))

(assert (=> b!4324787 (= lt!1542080 (apply!11161 (v!42834 (underlying!9764 thiss!42308)) lt!1542076))))

(assert (=> b!4324787 (= lt!1542074 (toList!2580 (map!10442 (v!42834 (underlying!9764 thiss!42308)))))))

(declare-fun lt!1542084 () Unit!67941)

(declare-fun lt!1542071 () Unit!67941)

(assert (=> b!4324787 (= lt!1542084 lt!1542071)))

(declare-fun lt!1542082 () List!48535)

(declare-fun isDefined!7616 (Option!10315) Bool)

(assert (=> b!4324787 (isDefined!7616 (getValueByKey!307 lt!1542082 lt!1542076))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!225 (List!48535 (_ BitVec 64)) Unit!67941)

(assert (=> b!4324787 (= lt!1542071 (lemmaContainsKeyImpliesGetValueByKeyDefined!225 lt!1542082 lt!1542076))))

(assert (=> b!4324787 (= lt!1542082 (toList!2580 (map!10442 (v!42834 (underlying!9764 thiss!42308)))))))

(declare-fun lt!1542077 () Unit!67941)

(declare-fun lt!1542069 () Unit!67941)

(assert (=> b!4324787 (= lt!1542077 lt!1542069)))

(declare-fun lt!1542079 () List!48535)

(declare-fun containsKey!415 (List!48535 (_ BitVec 64)) Bool)

(assert (=> b!4324787 (containsKey!415 lt!1542079 lt!1542076)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!168 (List!48535 (_ BitVec 64)) Unit!67941)

(assert (=> b!4324787 (= lt!1542069 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!168 lt!1542079 lt!1542076))))

(assert (=> b!4324787 (= lt!1542079 (toList!2580 (map!10442 (v!42834 (underlying!9764 thiss!42308)))))))

(declare-fun Unit!67947 () Unit!67941)

(assert (=> b!4324787 (= e!2690816 Unit!67947)))

(declare-fun bm!300066 () Bool)

(assert (=> bm!300066 (= call!300069 (getPair!167 call!300071 key!2048))))

(declare-fun b!4324788 () Bool)

(declare-fun Unit!67948 () Unit!67941)

(assert (=> b!4324788 (= e!2690816 Unit!67948)))

(declare-fun bm!300062 () Bool)

(assert (=> bm!300062 (= call!300070 (map!10442 (v!42834 (underlying!9764 thiss!42308))))))

(declare-fun d!1271650 () Bool)

(declare-fun lt!1542078 () Bool)

(assert (=> d!1271650 (= lt!1542078 (contains!10479 (map!10443 thiss!42308) key!2048))))

(assert (=> d!1271650 (= lt!1542078 e!2690819)))

(declare-fun res!1772392 () Bool)

(assert (=> d!1271650 (=> (not res!1772392) (not e!2690819))))

(assert (=> d!1271650 (= res!1772392 (contains!10475 (v!42834 (underlying!9764 thiss!42308)) lt!1542076))))

(declare-fun lt!1542086 () Unit!67941)

(assert (=> d!1271650 (= lt!1542086 e!2690822)))

(assert (=> d!1271650 (= c!735765 (contains!10479 (extractMap!379 (toList!2580 (map!10442 (v!42834 (underlying!9764 thiss!42308))))) key!2048))))

(declare-fun lt!1542073 () Unit!67941)

(assert (=> d!1271650 (= lt!1542073 e!2690817)))

(declare-fun c!735763 () Bool)

(assert (=> d!1271650 (= c!735763 (contains!10475 (v!42834 (underlying!9764 thiss!42308)) lt!1542076))))

(assert (=> d!1271650 (= lt!1542076 (hash!1212 (hashF!6971 thiss!42308) key!2048))))

(assert (=> d!1271650 (valid!3781 thiss!42308)))

(assert (=> d!1271650 (= (contains!10476 thiss!42308 key!2048) lt!1542078)))

(assert (= (and d!1271650 c!735763) b!4324782))

(assert (= (and d!1271650 (not c!735763)) b!4324785))

(assert (= (and b!4324782 c!735762) b!4324787))

(assert (= (and b!4324782 (not c!735762)) b!4324788))

(assert (= (and d!1271650 c!735765) b!4324783))

(assert (= (and d!1271650 (not c!735765)) b!4324778))

(assert (= (and b!4324783 res!1772391) b!4324781))

(assert (= (and b!4324778 res!1772393) b!4324779))

(assert (= (and b!4324778 c!735764) b!4324780))

(assert (= (and b!4324778 (not c!735764)) b!4324786))

(assert (= (or b!4324783 b!4324778 b!4324779 b!4324780) bm!300062))

(assert (= (or b!4324783 b!4324781 b!4324778 b!4324779) bm!300064))

(assert (= (or b!4324783 b!4324778) bm!300063))

(assert (= (or b!4324781 b!4324779) bm!300065))

(assert (= (or b!4324781 b!4324779) bm!300066))

(assert (= (or b!4324781 b!4324779) bm!300061))

(assert (= (and d!1271650 res!1772392) b!4324784))

(declare-fun m!4919483 () Bool)

(assert (=> b!4324784 m!4919483))

(assert (=> b!4324784 m!4919483))

(declare-fun m!4919485 () Bool)

(assert (=> b!4324784 m!4919485))

(assert (=> b!4324784 m!4919485))

(declare-fun m!4919487 () Bool)

(assert (=> b!4324784 m!4919487))

(declare-fun m!4919489 () Bool)

(assert (=> bm!300061 m!4919489))

(assert (=> bm!300062 m!4919373))

(declare-fun m!4919491 () Bool)

(assert (=> b!4324787 m!4919491))

(declare-fun m!4919493 () Bool)

(assert (=> b!4324787 m!4919493))

(assert (=> b!4324787 m!4919483))

(declare-fun m!4919495 () Bool)

(assert (=> b!4324787 m!4919495))

(assert (=> b!4324787 m!4919373))

(declare-fun m!4919497 () Bool)

(assert (=> b!4324787 m!4919497))

(declare-fun m!4919499 () Bool)

(assert (=> b!4324787 m!4919499))

(declare-fun m!4919501 () Bool)

(assert (=> b!4324787 m!4919501))

(assert (=> b!4324787 m!4919497))

(declare-fun m!4919503 () Bool)

(assert (=> b!4324787 m!4919503))

(declare-fun m!4919505 () Bool)

(assert (=> bm!300063 m!4919505))

(declare-fun m!4919507 () Bool)

(assert (=> bm!300065 m!4919507))

(assert (=> b!4324782 m!4919373))

(assert (=> b!4324782 m!4919483))

(declare-fun m!4919509 () Bool)

(assert (=> b!4324782 m!4919509))

(declare-fun m!4919511 () Bool)

(assert (=> b!4324782 m!4919511))

(assert (=> bm!300064 m!4919383))

(declare-fun m!4919513 () Bool)

(assert (=> b!4324783 m!4919513))

(declare-fun m!4919515 () Bool)

(assert (=> bm!300066 m!4919515))

(declare-fun m!4919517 () Bool)

(assert (=> b!4324780 m!4919517))

(assert (=> b!4324780 m!4919517))

(declare-fun m!4919519 () Bool)

(assert (=> b!4324780 m!4919519))

(declare-fun m!4919521 () Bool)

(assert (=> b!4324780 m!4919521))

(assert (=> d!1271650 m!4919383))

(declare-fun m!4919523 () Bool)

(assert (=> d!1271650 m!4919523))

(declare-fun m!4919525 () Bool)

(assert (=> d!1271650 m!4919525))

(assert (=> d!1271650 m!4919375))

(declare-fun m!4919527 () Bool)

(assert (=> d!1271650 m!4919527))

(assert (=> d!1271650 m!4919373))

(declare-fun m!4919529 () Bool)

(assert (=> d!1271650 m!4919529))

(assert (=> d!1271650 m!4919337))

(assert (=> d!1271650 m!4919523))

(assert (=> d!1271650 m!4919375))

(assert (=> b!4324693 d!1271650))

(declare-fun d!1271652 () Bool)

(assert (=> d!1271652 (= (map!10442 (v!42834 (underlying!9764 thiss!42308))) (map!10444 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308))))))))

(declare-fun bs!607241 () Bool)

(assert (= bs!607241 d!1271652))

(declare-fun m!4919531 () Bool)

(assert (=> bs!607241 m!4919531))

(assert (=> b!4324693 d!1271652))

(declare-fun d!1271654 () Bool)

(declare-fun lt!1542089 () ListMap!1857)

(assert (=> d!1271654 (invariantList!606 (toList!2581 lt!1542089))))

(assert (=> d!1271654 (= lt!1542089 (extractMap!379 (toList!2580 (map!10442 (v!42834 (underlying!9764 thiss!42308))))))))

(assert (=> d!1271654 (valid!3781 thiss!42308)))

(assert (=> d!1271654 (= (map!10443 thiss!42308) lt!1542089)))

(declare-fun bs!607242 () Bool)

(assert (= bs!607242 d!1271654))

(declare-fun m!4919533 () Bool)

(assert (=> bs!607242 m!4919533))

(assert (=> bs!607242 m!4919373))

(assert (=> bs!607242 m!4919523))

(assert (=> bs!607242 m!4919337))

(assert (=> b!4324693 d!1271654))

(declare-fun d!1271656 () Bool)

(assert (=> d!1271656 (= (array_inv!5561 (_keys!5093 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))))) (bvsge (size!35758 (_keys!5093 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4324698 d!1271656))

(declare-fun d!1271658 () Bool)

(assert (=> d!1271658 (= (array_inv!5562 (_values!5068 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))))) (bvsge (size!35759 (_values!5068 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4324698 d!1271658))

(declare-fun d!1271660 () Bool)

(declare-fun e!2690825 () Bool)

(assert (=> d!1271660 e!2690825))

(declare-fun c!735768 () Bool)

(assert (=> d!1271660 (= c!735768 (contains!10475 (v!42834 (underlying!9764 thiss!42308)) lt!1541971))))

(declare-fun lt!1542092 () List!48534)

(declare-fun apply!11163 (LongMapFixedSize!9534 (_ BitVec 64)) List!48534)

(assert (=> d!1271660 (= lt!1542092 (apply!11163 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))) lt!1541971))))

(assert (=> d!1271660 (valid!3782 (v!42834 (underlying!9764 thiss!42308)))))

(assert (=> d!1271660 (= (apply!11161 (v!42834 (underlying!9764 thiss!42308)) lt!1541971) lt!1542092)))

(declare-fun b!4324793 () Bool)

(declare-fun get!15689 (Option!10315) List!48534)

(assert (=> b!4324793 (= e!2690825 (= lt!1542092 (get!15689 (getValueByKey!307 (toList!2580 (map!10442 (v!42834 (underlying!9764 thiss!42308)))) lt!1541971))))))

(declare-fun b!4324794 () Bool)

(declare-fun dynLambda!20519 (Int (_ BitVec 64)) List!48534)

(assert (=> b!4324794 (= e!2690825 (= lt!1542092 (dynLambda!20519 (defaultEntry!5172 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308))))) lt!1541971)))))

(assert (=> b!4324794 ((_ is LongMap!4767) (v!42834 (underlying!9764 thiss!42308)))))

(assert (= (and d!1271660 c!735768) b!4324793))

(assert (= (and d!1271660 (not c!735768)) b!4324794))

(declare-fun b_lambda!127507 () Bool)

(assert (=> (not b_lambda!127507) (not b!4324794)))

(declare-fun t!355433 () Bool)

(declare-fun tb!257381 () Bool)

(assert (=> (and b!4324698 (= (defaultEntry!5172 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308))))) (defaultEntry!5172 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))))) t!355433) tb!257381))

(assert (=> b!4324794 t!355433))

(declare-fun result!314914 () Bool)

(declare-fun b_and!340607 () Bool)

(assert (= b_and!340603 (and (=> t!355433 result!314914) b_and!340607)))

(assert (=> d!1271660 m!4919381))

(declare-fun m!4919535 () Bool)

(assert (=> d!1271660 m!4919535))

(assert (=> d!1271660 m!4919403))

(assert (=> b!4324793 m!4919373))

(declare-fun m!4919537 () Bool)

(assert (=> b!4324793 m!4919537))

(assert (=> b!4324793 m!4919537))

(declare-fun m!4919539 () Bool)

(assert (=> b!4324793 m!4919539))

(declare-fun m!4919541 () Bool)

(assert (=> b!4324794 m!4919541))

(assert (=> b!4324689 d!1271660))

(declare-fun b!4324813 () Bool)

(declare-fun e!2690839 () Bool)

(declare-fun e!2690838 () Bool)

(assert (=> b!4324813 (= e!2690839 e!2690838)))

(declare-fun c!735777 () Bool)

(declare-fun lt!1542102 () tuple2!47278)

(assert (=> b!4324813 (= c!735777 (_1!26927 lt!1542102))))

(declare-fun bm!300071 () Bool)

(declare-fun call!300077 () ListLongMap!1197)

(assert (=> bm!300071 (= call!300077 (map!10442 (v!42834 (underlying!9764 thiss!42308))))))

(declare-fun b!4324814 () Bool)

(declare-fun e!2690837 () Bool)

(assert (=> b!4324814 (= e!2690838 e!2690837)))

(declare-fun res!1772402 () Bool)

(declare-fun call!300076 () ListLongMap!1197)

(assert (=> b!4324814 (= res!1772402 (contains!10477 call!300076 lt!1541971))))

(assert (=> b!4324814 (=> (not res!1772402) (not e!2690837))))

(declare-fun b!4324815 () Bool)

(declare-fun e!2690836 () tuple2!47278)

(declare-fun lt!1542103 () tuple2!47278)

(assert (=> b!4324815 (= e!2690836 (tuple2!47279 (_1!26927 lt!1542103) (_2!26927 lt!1542103)))))

(declare-fun repack!89 (MutLongMap!4767) tuple2!47278)

(assert (=> b!4324815 (= lt!1542103 (repack!89 (v!42834 (underlying!9764 thiss!42308))))))

(declare-fun b!4324816 () Bool)

(assert (=> b!4324816 (= e!2690838 (= call!300076 call!300077))))

(declare-fun b!4324817 () Bool)

(declare-fun e!2690840 () tuple2!47278)

(declare-datatypes ((tuple2!47282 0))(
  ( (tuple2!47283 (_1!26929 Bool) (_2!26929 LongMapFixedSize!9534)) )
))
(declare-fun lt!1542101 () tuple2!47282)

(assert (=> b!4324817 (= e!2690840 (tuple2!47279 (_1!26929 lt!1542101) (LongMap!4767 (Cell!18878 (_2!26929 lt!1542101)))))))

(declare-fun lt!1542104 () tuple2!47278)

(declare-fun update!545 (LongMapFixedSize!9534 (_ BitVec 64) List!48534) tuple2!47282)

(assert (=> b!4324817 (= lt!1542101 (update!545 (v!42833 (underlying!9763 (_2!26927 lt!1542104))) lt!1541971 lt!1541966))))

(declare-fun b!4324818 () Bool)

(assert (=> b!4324818 (= e!2690840 (tuple2!47279 false (_2!26927 lt!1542104)))))

(declare-fun b!4324819 () Bool)

(assert (=> b!4324819 (= e!2690837 (= call!300076 (+!351 call!300077 (tuple2!47281 lt!1541971 lt!1541966))))))

(declare-fun bm!300072 () Bool)

(assert (=> bm!300072 (= call!300076 (map!10442 (_2!26927 lt!1542102)))))

(declare-fun d!1271662 () Bool)

(assert (=> d!1271662 e!2690839))

(declare-fun res!1772401 () Bool)

(assert (=> d!1271662 (=> (not res!1772401) (not e!2690839))))

(assert (=> d!1271662 (= res!1772401 ((_ is LongMap!4767) (_2!26927 lt!1542102)))))

(assert (=> d!1271662 (= lt!1542102 e!2690840)))

(declare-fun c!735776 () Bool)

(assert (=> d!1271662 (= c!735776 (_1!26927 lt!1542104))))

(assert (=> d!1271662 (= lt!1542104 e!2690836)))

(declare-fun c!735775 () Bool)

(declare-fun imbalanced!85 (MutLongMap!4767) Bool)

(assert (=> d!1271662 (= c!735775 (imbalanced!85 (v!42834 (underlying!9764 thiss!42308))))))

(assert (=> d!1271662 (valid!3782 (v!42834 (underlying!9764 thiss!42308)))))

(assert (=> d!1271662 (= (update!544 (v!42834 (underlying!9764 thiss!42308)) lt!1541971 lt!1541966) lt!1542102)))

(declare-fun b!4324820 () Bool)

(assert (=> b!4324820 (= e!2690836 (tuple2!47279 true (v!42834 (underlying!9764 thiss!42308))))))

(declare-fun b!4324821 () Bool)

(declare-fun res!1772400 () Bool)

(assert (=> b!4324821 (=> (not res!1772400) (not e!2690839))))

(assert (=> b!4324821 (= res!1772400 (valid!3782 (_2!26927 lt!1542102)))))

(assert (= (and d!1271662 c!735775) b!4324815))

(assert (= (and d!1271662 (not c!735775)) b!4324820))

(assert (= (and d!1271662 c!735776) b!4324817))

(assert (= (and d!1271662 (not c!735776)) b!4324818))

(assert (= (and d!1271662 res!1772401) b!4324821))

(assert (= (and b!4324821 res!1772400) b!4324813))

(assert (= (and b!4324813 c!735777) b!4324814))

(assert (= (and b!4324813 (not c!735777)) b!4324816))

(assert (= (and b!4324814 res!1772402) b!4324819))

(assert (= (or b!4324814 b!4324819 b!4324816) bm!300072))

(assert (= (or b!4324819 b!4324816) bm!300071))

(declare-fun m!4919543 () Bool)

(assert (=> b!4324815 m!4919543))

(assert (=> bm!300071 m!4919373))

(declare-fun m!4919545 () Bool)

(assert (=> b!4324819 m!4919545))

(declare-fun m!4919547 () Bool)

(assert (=> b!4324814 m!4919547))

(declare-fun m!4919549 () Bool)

(assert (=> bm!300072 m!4919549))

(declare-fun m!4919551 () Bool)

(assert (=> d!1271662 m!4919551))

(assert (=> d!1271662 m!4919403))

(declare-fun m!4919553 () Bool)

(assert (=> b!4324817 m!4919553))

(declare-fun m!4919555 () Bool)

(assert (=> b!4324821 m!4919555))

(assert (=> b!4324688 d!1271662))

(declare-fun d!1271664 () Bool)

(declare-fun lt!1542107 () Bool)

(assert (=> d!1271664 (= lt!1542107 (contains!10477 (map!10442 (v!42834 (underlying!9764 thiss!42308))) lt!1541971))))

(declare-fun contains!10481 (LongMapFixedSize!9534 (_ BitVec 64)) Bool)

(assert (=> d!1271664 (= lt!1542107 (contains!10481 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308)))) lt!1541971))))

(assert (=> d!1271664 (valid!3782 (v!42834 (underlying!9764 thiss!42308)))))

(assert (=> d!1271664 (= (contains!10475 (v!42834 (underlying!9764 thiss!42308)) lt!1541971) lt!1542107)))

(declare-fun bs!607243 () Bool)

(assert (= bs!607243 d!1271664))

(assert (=> bs!607243 m!4919373))

(assert (=> bs!607243 m!4919373))

(declare-fun m!4919557 () Bool)

(assert (=> bs!607243 m!4919557))

(declare-fun m!4919559 () Bool)

(assert (=> bs!607243 m!4919559))

(assert (=> bs!607243 m!4919403))

(assert (=> b!4324688 d!1271664))

(declare-fun d!1271666 () Bool)

(declare-fun hash!1217 (Hashable!4683 K!9664) (_ BitVec 64))

(assert (=> d!1271666 (= (hash!1212 (hashF!6971 thiss!42308) key!2048) (hash!1217 (hashF!6971 thiss!42308) key!2048))))

(declare-fun bs!607244 () Bool)

(assert (= bs!607244 d!1271666))

(declare-fun m!4919561 () Bool)

(assert (=> bs!607244 m!4919561))

(assert (=> b!4324688 d!1271666))

(declare-fun b!4324828 () Bool)

(declare-fun tp!1327351 () Bool)

(declare-fun e!2690846 () Bool)

(assert (=> b!4324828 (= e!2690846 (and tp_is_empty!24165 tp_is_empty!24167 tp!1327351))))

(declare-fun mapIsEmpty!21249 () Bool)

(declare-fun mapRes!21249 () Bool)

(assert (=> mapIsEmpty!21249 mapRes!21249))

(declare-fun mapNonEmpty!21249 () Bool)

(declare-fun tp!1327350 () Bool)

(assert (=> mapNonEmpty!21249 (= mapRes!21249 (and tp!1327350 e!2690846))))

(declare-fun mapValue!21249 () List!48534)

(declare-fun mapRest!21249 () (Array (_ BitVec 32) List!48534))

(declare-fun mapKey!21249 () (_ BitVec 32))

(assert (=> mapNonEmpty!21249 (= mapRest!21246 (store mapRest!21249 mapKey!21249 mapValue!21249))))

(declare-fun condMapEmpty!21249 () Bool)

(declare-fun mapDefault!21249 () List!48534)

(assert (=> mapNonEmpty!21246 (= condMapEmpty!21249 (= mapRest!21246 ((as const (Array (_ BitVec 32) List!48534)) mapDefault!21249)))))

(declare-fun e!2690845 () Bool)

(assert (=> mapNonEmpty!21246 (= tp!1327342 (and e!2690845 mapRes!21249))))

(declare-fun tp!1327349 () Bool)

(declare-fun b!4324829 () Bool)

(assert (=> b!4324829 (= e!2690845 (and tp_is_empty!24165 tp_is_empty!24167 tp!1327349))))

(assert (= (and mapNonEmpty!21246 condMapEmpty!21249) mapIsEmpty!21249))

(assert (= (and mapNonEmpty!21246 (not condMapEmpty!21249)) mapNonEmpty!21249))

(assert (= (and mapNonEmpty!21249 ((_ is Cons!48410) mapValue!21249)) b!4324828))

(assert (= (and mapNonEmpty!21246 ((_ is Cons!48410) mapDefault!21249)) b!4324829))

(declare-fun m!4919563 () Bool)

(assert (=> mapNonEmpty!21249 m!4919563))

(declare-fun e!2690849 () Bool)

(declare-fun b!4324834 () Bool)

(declare-fun tp!1327354 () Bool)

(assert (=> b!4324834 (= e!2690849 (and tp_is_empty!24165 tp_is_empty!24167 tp!1327354))))

(assert (=> mapNonEmpty!21246 (= tp!1327336 e!2690849)))

(assert (= (and mapNonEmpty!21246 ((_ is Cons!48410) mapValue!21246)) b!4324834))

(declare-fun e!2690850 () Bool)

(declare-fun b!4324835 () Bool)

(declare-fun tp!1327355 () Bool)

(assert (=> b!4324835 (= e!2690850 (and tp_is_empty!24165 tp_is_empty!24167 tp!1327355))))

(assert (=> b!4324698 (= tp!1327339 e!2690850)))

(assert (= (and b!4324698 ((_ is Cons!48410) (zeroValue!5044 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308))))))) b!4324835))

(declare-fun e!2690851 () Bool)

(declare-fun tp!1327356 () Bool)

(declare-fun b!4324836 () Bool)

(assert (=> b!4324836 (= e!2690851 (and tp_is_empty!24165 tp_is_empty!24167 tp!1327356))))

(assert (=> b!4324698 (= tp!1327341 e!2690851)))

(assert (= (and b!4324698 ((_ is Cons!48410) (minValue!5044 (v!42833 (underlying!9763 (v!42834 (underlying!9764 thiss!42308))))))) b!4324836))

(declare-fun e!2690852 () Bool)

(declare-fun tp!1327357 () Bool)

(declare-fun b!4324837 () Bool)

(assert (=> b!4324837 (= e!2690852 (and tp_is_empty!24165 tp_is_empty!24167 tp!1327357))))

(assert (=> b!4324692 (= tp!1327338 e!2690852)))

(assert (= (and b!4324692 ((_ is Cons!48410) mapDefault!21246)) b!4324837))

(declare-fun b_lambda!127509 () Bool)

(assert (= b_lambda!127505 (or b!4324699 b_lambda!127509)))

(declare-fun bs!607245 () Bool)

(declare-fun d!1271668 () Bool)

(assert (= bs!607245 (and d!1271668 b!4324699)))

(assert (=> bs!607245 (= (dynLambda!20518 lambda!134179 (h!53876 (toList!2580 lt!1541980))) (noDuplicateKeys!267 (_2!26928 (h!53876 (toList!2580 lt!1541980)))))))

(declare-fun m!4919565 () Bool)

(assert (=> bs!607245 m!4919565))

(assert (=> b!4324752 d!1271668))

(declare-fun b_lambda!127511 () Bool)

(assert (= b_lambda!127503 (or b!4324699 b_lambda!127511)))

(declare-fun bs!607246 () Bool)

(declare-fun d!1271670 () Bool)

(assert (= bs!607246 (and d!1271670 b!4324699)))

(assert (=> bs!607246 (= (dynLambda!20518 lambda!134179 (h!53876 (toList!2580 lt!1541967))) (noDuplicateKeys!267 (_2!26928 (h!53876 (toList!2580 lt!1541967)))))))

(declare-fun m!4919567 () Bool)

(assert (=> bs!607246 m!4919567))

(assert (=> b!4324747 d!1271670))

(declare-fun b_lambda!127513 () Bool)

(assert (= b_lambda!127507 (or (and b!4324698 b_free!129027) b_lambda!127513)))

(check-sat (not b!4324782) (not d!1271626) (not bm!300062) (not b!4324834) (not b_lambda!127509) (not b!4324828) (not d!1271648) (not d!1271614) (not b!4324753) (not b!4324724) (not b!4324836) (not b!4324837) (not b!4324815) tp_is_empty!24167 (not d!1271620) (not b!4324814) (not bm!300063) (not bm!300061) b_and!340605 (not b!4324748) (not b!4324793) (not b!4324829) tp_is_empty!24165 (not d!1271624) (not d!1271660) (not b!4324736) (not bs!607245) (not d!1271652) (not b!4324817) (not b!4324742) (not d!1271644) (not bm!300064) (not d!1271666) (not b_lambda!127511) (not b!4324821) (not d!1271650) (not d!1271622) (not bm!300072) (not bm!300066) (not bm!300071) (not b!4324751) b_and!340607 (not b!4324819) (not d!1271662) (not b!4324754) (not b!4324713) (not b!4324723) (not b_lambda!127513) (not d!1271638) (not b!4324783) (not d!1271618) (not d!1271664) (not d!1271612) (not d!1271616) (not mapNonEmpty!21249) (not b!4324784) (not tb!257381) (not b_next!129731) (not d!1271634) (not d!1271642) (not b!4324741) (not b_next!129733) (not b!4324729) (not d!1271636) (not d!1271654) (not bm!300065) (not d!1271632) (not b!4324780) (not d!1271628) (not b!4324835) (not b!4324735) (not b!4324787) (not bs!607246))
(check-sat b_and!340607 b_and!340605 (not b_next!129733) (not b_next!129731))

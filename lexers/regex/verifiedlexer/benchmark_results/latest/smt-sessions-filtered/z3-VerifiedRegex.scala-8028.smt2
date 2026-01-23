; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415442 () Bool)

(assert start!415442)

(declare-fun b!4318014 () Bool)

(declare-fun b_free!128907 () Bool)

(declare-fun b_next!129611 () Bool)

(assert (=> b!4318014 (= b_free!128907 (not b_next!129611))))

(declare-fun tp!1326480 () Bool)

(declare-fun b_and!340413 () Bool)

(assert (=> b!4318014 (= tp!1326480 b_and!340413)))

(declare-fun b!4318015 () Bool)

(declare-fun b_free!128909 () Bool)

(declare-fun b_next!129613 () Bool)

(assert (=> b!4318015 (= b_free!128909 (not b_next!129613))))

(declare-fun tp!1326476 () Bool)

(declare-fun b_and!340415 () Bool)

(assert (=> b!4318015 (= tp!1326476 b_and!340415)))

(declare-fun e!2686282 () Bool)

(declare-fun tp!1326475 () Bool)

(declare-fun e!2686290 () Bool)

(declare-fun tp!1326477 () Bool)

(declare-datatypes ((V!9791 0))(
  ( (V!9792 (val!15929 Int)) )
))
(declare-datatypes ((K!9589 0))(
  ( (K!9590 (val!15930 Int)) )
))
(declare-datatypes ((tuple2!47080 0))(
  ( (tuple2!47081 (_1!26824 K!9589) (_2!26824 V!9791)) )
))
(declare-datatypes ((List!48468 0))(
  ( (Nil!48344) (Cons!48344 (h!53798 tuple2!47080) (t!355329 List!48468)) )
))
(declare-datatypes ((array!17156 0))(
  ( (array!17157 (arr!7659 (Array (_ BitVec 32) (_ BitVec 64))) (size!35698 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4653 0))(
  ( (HashableExt!4652 (__x!30236 Int)) )
))
(declare-datatypes ((array!17158 0))(
  ( (array!17159 (arr!7660 (Array (_ BitVec 32) List!48468)) (size!35699 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9474 0))(
  ( (LongMapFixedSize!9475 (defaultEntry!5122 Int) (mask!13334 (_ BitVec 32)) (extraKeys!4986 (_ BitVec 32)) (zeroValue!4996 List!48468) (minValue!4996 List!48468) (_size!9517 (_ BitVec 32)) (_keys!5037 array!17156) (_values!5018 array!17158) (_vacant!4798 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18757 0))(
  ( (Cell!18758 (v!42665 LongMapFixedSize!9474)) )
))
(declare-datatypes ((MutLongMap!4737 0))(
  ( (LongMap!4737 (underlying!9703 Cell!18757)) (MutLongMapExt!4736 (__x!30237 Int)) )
))
(declare-datatypes ((Cell!18759 0))(
  ( (Cell!18760 (v!42666 MutLongMap!4737)) )
))
(declare-datatypes ((MutableMap!4643 0))(
  ( (MutableMapExt!4642 (__x!30238 Int)) (HashMap!4643 (underlying!9704 Cell!18759) (hashF!6868 Hashable!4653) (_size!9518 (_ BitVec 32)) (defaultValue!4814 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4643)

(declare-fun array_inv!5511 (array!17156) Bool)

(declare-fun array_inv!5512 (array!17158) Bool)

(assert (=> b!4318014 (= e!2686290 (and tp!1326480 tp!1326475 tp!1326477 (array_inv!5511 (_keys!5037 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))))) (array_inv!5512 (_values!5018 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))))) e!2686282))))

(declare-fun e!2686284 () Bool)

(declare-fun e!2686288 () Bool)

(assert (=> b!4318015 (= e!2686284 (and e!2686288 tp!1326476))))

(declare-fun b!4318016 () Bool)

(declare-fun e!2686292 () List!48468)

(assert (=> b!4318016 (= e!2686292 Nil!48344)))

(declare-fun b!4318017 () Bool)

(declare-fun e!2686289 () Bool)

(declare-fun e!2686285 () Bool)

(assert (=> b!4318017 (= e!2686289 e!2686285)))

(declare-fun b!4318018 () Bool)

(declare-datatypes ((Unit!67607 0))(
  ( (Unit!67608) )
))
(declare-fun e!2686286 () Unit!67607)

(declare-fun lt!1536886 () Unit!67607)

(assert (=> b!4318018 (= e!2686286 lt!1536886)))

(declare-fun lt!1536884 () Unit!67607)

(declare-fun lt!1536891 () List!48468)

(declare-datatypes ((tuple2!47082 0))(
  ( (tuple2!47083 (_1!26825 (_ BitVec 64)) (_2!26825 List!48468)) )
))
(declare-datatypes ((List!48469 0))(
  ( (Nil!48345) (Cons!48345 (h!53799 tuple2!47082) (t!355330 List!48469)) )
))
(declare-datatypes ((ListLongMap!1141 0))(
  ( (ListLongMap!1142 (toList!2526 List!48469)) )
))
(declare-fun lt!1536889 () ListLongMap!1141)

(declare-fun lt!1536888 () (_ BitVec 64))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!216 (List!48469 (_ BitVec 64) List!48468 Hashable!4653) Unit!67607)

(assert (=> b!4318018 (= lt!1536884 (lemmaInLongMapAllKeySameHashThenForTuple!216 (toList!2526 lt!1536889) lt!1536888 lt!1536891 (hashF!6868 thiss!42308)))))

(declare-fun allKeysSameHash!231 (List!48468 (_ BitVec 64) Hashable!4653) Bool)

(assert (=> b!4318018 (allKeysSameHash!231 lt!1536891 lt!1536888 (hashF!6868 thiss!42308))))

(declare-fun key!2048 () K!9589)

(declare-fun lemmaRemovePairForKeyPreservesHash!207 (List!48468 K!9589 (_ BitVec 64) Hashable!4653) Unit!67607)

(assert (=> b!4318018 (= lt!1536886 (lemmaRemovePairForKeyPreservesHash!207 lt!1536891 key!2048 lt!1536888 (hashF!6868 thiss!42308)))))

(declare-fun removePairForKey!254 (List!48468 K!9589) List!48468)

(assert (=> b!4318018 (allKeysSameHash!231 (removePairForKey!254 lt!1536891 key!2048) lt!1536888 (hashF!6868 thiss!42308))))

(declare-fun b!4318019 () Bool)

(declare-fun lt!1536890 () MutLongMap!4737)

(get-info :version)

(assert (=> b!4318019 (= e!2686288 (and e!2686289 ((_ is LongMap!4737) lt!1536890)))))

(assert (=> b!4318019 (= lt!1536890 (v!42666 (underlying!9704 thiss!42308)))))

(declare-fun b!4318020 () Bool)

(declare-fun tp!1326478 () Bool)

(declare-fun mapRes!21117 () Bool)

(assert (=> b!4318020 (= e!2686282 (and tp!1326478 mapRes!21117))))

(declare-fun condMapEmpty!21117 () Bool)

(declare-fun mapDefault!21117 () List!48468)

(assert (=> b!4318020 (= condMapEmpty!21117 (= (arr!7660 (_values!5018 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48468)) mapDefault!21117)))))

(declare-fun b!4318021 () Bool)

(declare-fun e!2686283 () Bool)

(declare-fun e!2686293 () Bool)

(assert (=> b!4318021 (= e!2686283 e!2686293)))

(declare-fun res!1769713 () Bool)

(assert (=> b!4318021 (=> (not res!1769713) (not e!2686293))))

(declare-fun v!9179 () V!9791)

(declare-datatypes ((tuple2!47084 0))(
  ( (tuple2!47085 (_1!26826 Bool) (_2!26826 MutLongMap!4737)) )
))
(declare-fun update!511 (MutLongMap!4737 (_ BitVec 64) List!48468) tuple2!47084)

(assert (=> b!4318021 (= res!1769713 (_1!26826 (update!511 (v!42666 (underlying!9704 thiss!42308)) lt!1536888 (Cons!48344 (tuple2!47081 key!2048 v!9179) lt!1536891))))))

(assert (=> b!4318021 (= lt!1536891 e!2686292)))

(declare-fun c!734154 () Bool)

(declare-fun contains!10371 (MutLongMap!4737 (_ BitVec 64)) Bool)

(assert (=> b!4318021 (= c!734154 (contains!10371 (v!42666 (underlying!9704 thiss!42308)) lt!1536888))))

(declare-fun hash!1139 (Hashable!4653 K!9589) (_ BitVec 64))

(assert (=> b!4318021 (= lt!1536888 (hash!1139 (hashF!6868 thiss!42308) key!2048))))

(declare-fun mapNonEmpty!21117 () Bool)

(declare-fun tp!1326479 () Bool)

(declare-fun tp!1326481 () Bool)

(assert (=> mapNonEmpty!21117 (= mapRes!21117 (and tp!1326479 tp!1326481))))

(declare-fun mapRest!21117 () (Array (_ BitVec 32) List!48468))

(declare-fun mapKey!21117 () (_ BitVec 32))

(declare-fun mapValue!21117 () List!48468)

(assert (=> mapNonEmpty!21117 (= (arr!7660 (_values!5018 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))))) (store mapRest!21117 mapKey!21117 mapValue!21117))))

(declare-fun b!4318022 () Bool)

(declare-fun Unit!67609 () Unit!67607)

(assert (=> b!4318022 (= e!2686286 Unit!67609)))

(declare-fun b!4318023 () Bool)

(declare-fun lambda!133574 () Int)

(declare-fun forall!8793 (List!48469 Int) Bool)

(assert (=> b!4318023 (= e!2686293 (not (forall!8793 (toList!2526 lt!1536889) lambda!133574)))))

(declare-fun lt!1536885 () Unit!67607)

(assert (=> b!4318023 (= lt!1536885 e!2686286)))

(declare-fun c!734153 () Bool)

(declare-fun isEmpty!28102 (List!48468) Bool)

(assert (=> b!4318023 (= c!734153 (not (isEmpty!28102 lt!1536891)))))

(declare-fun b!4318024 () Bool)

(assert (=> b!4318024 (= e!2686285 e!2686290)))

(declare-fun b!4318025 () Bool)

(declare-fun res!1769711 () Bool)

(declare-fun e!2686291 () Bool)

(assert (=> b!4318025 (=> (not res!1769711) (not e!2686291))))

(declare-fun valid!3743 (MutableMap!4643) Bool)

(assert (=> b!4318025 (= res!1769711 (valid!3743 thiss!42308))))

(declare-fun b!4318026 () Bool)

(assert (=> b!4318026 (= e!2686291 e!2686283)))

(declare-fun res!1769714 () Bool)

(assert (=> b!4318026 (=> (not res!1769714) (not e!2686283))))

(declare-fun contains!10372 (MutableMap!4643 K!9589) Bool)

(assert (=> b!4318026 (= res!1769714 (not (contains!10372 thiss!42308 key!2048)))))

(declare-fun map!10364 (MutLongMap!4737) ListLongMap!1141)

(assert (=> b!4318026 (= lt!1536889 (map!10364 (v!42666 (underlying!9704 thiss!42308))))))

(declare-datatypes ((ListMap!1805 0))(
  ( (ListMap!1806 (toList!2527 List!48468)) )
))
(declare-fun lt!1536887 () ListMap!1805)

(declare-fun map!10365 (MutableMap!4643) ListMap!1805)

(assert (=> b!4318026 (= lt!1536887 (map!10365 thiss!42308))))

(declare-fun res!1769712 () Bool)

(assert (=> start!415442 (=> (not res!1769712) (not e!2686291))))

(assert (=> start!415442 (= res!1769712 ((_ is HashMap!4643) thiss!42308))))

(assert (=> start!415442 e!2686291))

(assert (=> start!415442 e!2686284))

(declare-fun tp_is_empty!24045 () Bool)

(assert (=> start!415442 tp_is_empty!24045))

(declare-fun tp_is_empty!24047 () Bool)

(assert (=> start!415442 tp_is_empty!24047))

(declare-fun b!4318027 () Bool)

(declare-fun apply!11114 (MutLongMap!4737 (_ BitVec 64)) List!48468)

(assert (=> b!4318027 (= e!2686292 (apply!11114 (v!42666 (underlying!9704 thiss!42308)) lt!1536888))))

(declare-fun mapIsEmpty!21117 () Bool)

(assert (=> mapIsEmpty!21117 mapRes!21117))

(assert (= (and start!415442 res!1769712) b!4318025))

(assert (= (and b!4318025 res!1769711) b!4318026))

(assert (= (and b!4318026 res!1769714) b!4318021))

(assert (= (and b!4318021 c!734154) b!4318027))

(assert (= (and b!4318021 (not c!734154)) b!4318016))

(assert (= (and b!4318021 res!1769713) b!4318023))

(assert (= (and b!4318023 c!734153) b!4318018))

(assert (= (and b!4318023 (not c!734153)) b!4318022))

(assert (= (and b!4318020 condMapEmpty!21117) mapIsEmpty!21117))

(assert (= (and b!4318020 (not condMapEmpty!21117)) mapNonEmpty!21117))

(assert (= b!4318014 b!4318020))

(assert (= b!4318024 b!4318014))

(assert (= b!4318017 b!4318024))

(assert (= (and b!4318019 ((_ is LongMap!4737) (v!42666 (underlying!9704 thiss!42308)))) b!4318017))

(assert (= b!4318015 b!4318019))

(assert (= (and start!415442 ((_ is HashMap!4643) thiss!42308)) b!4318015))

(declare-fun m!4911631 () Bool)

(assert (=> mapNonEmpty!21117 m!4911631))

(declare-fun m!4911633 () Bool)

(assert (=> b!4318014 m!4911633))

(declare-fun m!4911635 () Bool)

(assert (=> b!4318014 m!4911635))

(declare-fun m!4911637 () Bool)

(assert (=> b!4318023 m!4911637))

(declare-fun m!4911639 () Bool)

(assert (=> b!4318023 m!4911639))

(declare-fun m!4911641 () Bool)

(assert (=> b!4318021 m!4911641))

(declare-fun m!4911643 () Bool)

(assert (=> b!4318021 m!4911643))

(declare-fun m!4911645 () Bool)

(assert (=> b!4318021 m!4911645))

(declare-fun m!4911647 () Bool)

(assert (=> b!4318026 m!4911647))

(declare-fun m!4911649 () Bool)

(assert (=> b!4318026 m!4911649))

(declare-fun m!4911651 () Bool)

(assert (=> b!4318026 m!4911651))

(declare-fun m!4911653 () Bool)

(assert (=> b!4318027 m!4911653))

(declare-fun m!4911655 () Bool)

(assert (=> b!4318018 m!4911655))

(declare-fun m!4911657 () Bool)

(assert (=> b!4318018 m!4911657))

(declare-fun m!4911659 () Bool)

(assert (=> b!4318018 m!4911659))

(declare-fun m!4911661 () Bool)

(assert (=> b!4318018 m!4911661))

(declare-fun m!4911663 () Bool)

(assert (=> b!4318018 m!4911663))

(assert (=> b!4318018 m!4911655))

(declare-fun m!4911665 () Bool)

(assert (=> b!4318025 m!4911665))

(check-sat (not b!4318026) (not b!4318027) (not mapNonEmpty!21117) tp_is_empty!24045 tp_is_empty!24047 (not b_next!129613) (not b!4318025) b_and!340415 b_and!340413 (not b!4318018) (not b_next!129611) (not b!4318021) (not b!4318023) (not b!4318014) (not b!4318020))
(check-sat b_and!340413 b_and!340415 (not b_next!129613) (not b_next!129611))
(get-model)

(declare-fun call!298944 () ListLongMap!1141)

(declare-fun call!298943 () ListLongMap!1141)

(declare-fun e!2686307 () Bool)

(declare-fun b!4318046 () Bool)

(declare-fun +!319 (ListLongMap!1141 tuple2!47082) ListLongMap!1141)

(assert (=> b!4318046 (= e!2686307 (= call!298944 (+!319 call!298943 (tuple2!47083 lt!1536888 (Cons!48344 (tuple2!47081 key!2048 v!9179) lt!1536891)))))))

(declare-fun b!4318047 () Bool)

(declare-fun e!2686306 () tuple2!47084)

(declare-fun lt!1536903 () tuple2!47084)

(assert (=> b!4318047 (= e!2686306 (tuple2!47085 false (_2!26826 lt!1536903)))))

(declare-fun b!4318048 () Bool)

(declare-datatypes ((tuple2!47086 0))(
  ( (tuple2!47087 (_1!26827 Bool) (_2!26827 LongMapFixedSize!9474)) )
))
(declare-fun lt!1536902 () tuple2!47086)

(assert (=> b!4318048 (= e!2686306 (tuple2!47085 (_1!26827 lt!1536902) (LongMap!4737 (Cell!18758 (_2!26827 lt!1536902)))))))

(declare-fun update!512 (LongMapFixedSize!9474 (_ BitVec 64) List!48468) tuple2!47086)

(assert (=> b!4318048 (= lt!1536902 (update!512 (v!42665 (underlying!9703 (_2!26826 lt!1536903))) lt!1536888 (Cons!48344 (tuple2!47081 key!2048 v!9179) lt!1536891)))))

(declare-fun d!1269599 () Bool)

(declare-fun e!2686304 () Bool)

(assert (=> d!1269599 e!2686304))

(declare-fun res!1769721 () Bool)

(assert (=> d!1269599 (=> (not res!1769721) (not e!2686304))))

(declare-fun lt!1536900 () tuple2!47084)

(assert (=> d!1269599 (= res!1769721 ((_ is LongMap!4737) (_2!26826 lt!1536900)))))

(assert (=> d!1269599 (= lt!1536900 e!2686306)))

(declare-fun c!734162 () Bool)

(assert (=> d!1269599 (= c!734162 (_1!26826 lt!1536903))))

(declare-fun e!2686305 () tuple2!47084)

(assert (=> d!1269599 (= lt!1536903 e!2686305)))

(declare-fun c!734161 () Bool)

(declare-fun imbalanced!74 (MutLongMap!4737) Bool)

(assert (=> d!1269599 (= c!734161 (imbalanced!74 (v!42666 (underlying!9704 thiss!42308))))))

(declare-fun valid!3744 (MutLongMap!4737) Bool)

(assert (=> d!1269599 (valid!3744 (v!42666 (underlying!9704 thiss!42308)))))

(assert (=> d!1269599 (= (update!511 (v!42666 (underlying!9704 thiss!42308)) lt!1536888 (Cons!48344 (tuple2!47081 key!2048 v!9179) lt!1536891)) lt!1536900)))

(declare-fun b!4318049 () Bool)

(declare-fun e!2686308 () Bool)

(assert (=> b!4318049 (= e!2686308 e!2686307)))

(declare-fun res!1769723 () Bool)

(declare-fun contains!10373 (ListLongMap!1141 (_ BitVec 64)) Bool)

(assert (=> b!4318049 (= res!1769723 (contains!10373 call!298944 lt!1536888))))

(assert (=> b!4318049 (=> (not res!1769723) (not e!2686307))))

(declare-fun b!4318050 () Bool)

(declare-fun res!1769722 () Bool)

(assert (=> b!4318050 (=> (not res!1769722) (not e!2686304))))

(assert (=> b!4318050 (= res!1769722 (valid!3744 (_2!26826 lt!1536900)))))

(declare-fun bm!298938 () Bool)

(assert (=> bm!298938 (= call!298943 (map!10364 (v!42666 (underlying!9704 thiss!42308))))))

(declare-fun b!4318051 () Bool)

(assert (=> b!4318051 (= e!2686308 (= call!298944 call!298943))))

(declare-fun bm!298939 () Bool)

(assert (=> bm!298939 (= call!298944 (map!10364 (_2!26826 lt!1536900)))))

(declare-fun b!4318052 () Bool)

(assert (=> b!4318052 (= e!2686305 (tuple2!47085 true (v!42666 (underlying!9704 thiss!42308))))))

(declare-fun b!4318053 () Bool)

(assert (=> b!4318053 (= e!2686304 e!2686308)))

(declare-fun c!734163 () Bool)

(assert (=> b!4318053 (= c!734163 (_1!26826 lt!1536900))))

(declare-fun b!4318054 () Bool)

(declare-fun lt!1536901 () tuple2!47084)

(assert (=> b!4318054 (= e!2686305 (tuple2!47085 (_1!26826 lt!1536901) (_2!26826 lt!1536901)))))

(declare-fun repack!78 (MutLongMap!4737) tuple2!47084)

(assert (=> b!4318054 (= lt!1536901 (repack!78 (v!42666 (underlying!9704 thiss!42308))))))

(assert (= (and d!1269599 c!734161) b!4318054))

(assert (= (and d!1269599 (not c!734161)) b!4318052))

(assert (= (and d!1269599 c!734162) b!4318048))

(assert (= (and d!1269599 (not c!734162)) b!4318047))

(assert (= (and d!1269599 res!1769721) b!4318050))

(assert (= (and b!4318050 res!1769722) b!4318053))

(assert (= (and b!4318053 c!734163) b!4318049))

(assert (= (and b!4318053 (not c!734163)) b!4318051))

(assert (= (and b!4318049 res!1769723) b!4318046))

(assert (= (or b!4318046 b!4318051) bm!298938))

(assert (= (or b!4318049 b!4318046 b!4318051) bm!298939))

(declare-fun m!4911667 () Bool)

(assert (=> b!4318054 m!4911667))

(assert (=> bm!298938 m!4911649))

(declare-fun m!4911669 () Bool)

(assert (=> b!4318046 m!4911669))

(declare-fun m!4911671 () Bool)

(assert (=> bm!298939 m!4911671))

(declare-fun m!4911673 () Bool)

(assert (=> b!4318050 m!4911673))

(declare-fun m!4911675 () Bool)

(assert (=> d!1269599 m!4911675))

(declare-fun m!4911677 () Bool)

(assert (=> d!1269599 m!4911677))

(declare-fun m!4911679 () Bool)

(assert (=> b!4318048 m!4911679))

(declare-fun m!4911681 () Bool)

(assert (=> b!4318049 m!4911681))

(assert (=> b!4318021 d!1269599))

(declare-fun d!1269601 () Bool)

(declare-fun lt!1536906 () Bool)

(assert (=> d!1269601 (= lt!1536906 (contains!10373 (map!10364 (v!42666 (underlying!9704 thiss!42308))) lt!1536888))))

(declare-fun contains!10374 (LongMapFixedSize!9474 (_ BitVec 64)) Bool)

(assert (=> d!1269601 (= lt!1536906 (contains!10374 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))) lt!1536888))))

(assert (=> d!1269601 (valid!3744 (v!42666 (underlying!9704 thiss!42308)))))

(assert (=> d!1269601 (= (contains!10371 (v!42666 (underlying!9704 thiss!42308)) lt!1536888) lt!1536906)))

(declare-fun bs!605988 () Bool)

(assert (= bs!605988 d!1269601))

(assert (=> bs!605988 m!4911649))

(assert (=> bs!605988 m!4911649))

(declare-fun m!4911683 () Bool)

(assert (=> bs!605988 m!4911683))

(declare-fun m!4911685 () Bool)

(assert (=> bs!605988 m!4911685))

(assert (=> bs!605988 m!4911677))

(assert (=> b!4318021 d!1269601))

(declare-fun d!1269603 () Bool)

(declare-fun hash!1142 (Hashable!4653 K!9589) (_ BitVec 64))

(assert (=> d!1269603 (= (hash!1139 (hashF!6868 thiss!42308) key!2048) (hash!1142 (hashF!6868 thiss!42308) key!2048))))

(declare-fun bs!605989 () Bool)

(assert (= bs!605989 d!1269603))

(declare-fun m!4911687 () Bool)

(assert (=> bs!605989 m!4911687))

(assert (=> b!4318021 d!1269603))

(declare-fun bs!605990 () Bool)

(declare-fun b!4318059 () Bool)

(assert (= bs!605990 (and b!4318059 b!4318023)))

(declare-fun lambda!133577 () Int)

(assert (=> bs!605990 (= lambda!133577 lambda!133574)))

(declare-fun d!1269605 () Bool)

(declare-fun res!1769728 () Bool)

(declare-fun e!2686311 () Bool)

(assert (=> d!1269605 (=> (not res!1769728) (not e!2686311))))

(assert (=> d!1269605 (= res!1769728 (valid!3744 (v!42666 (underlying!9704 thiss!42308))))))

(assert (=> d!1269605 (= (valid!3743 thiss!42308) e!2686311)))

(declare-fun res!1769729 () Bool)

(assert (=> b!4318059 (=> (not res!1769729) (not e!2686311))))

(assert (=> b!4318059 (= res!1769729 (forall!8793 (toList!2526 (map!10364 (v!42666 (underlying!9704 thiss!42308)))) lambda!133577))))

(declare-fun b!4318060 () Bool)

(declare-fun allKeysSameHashInMap!378 (ListLongMap!1141 Hashable!4653) Bool)

(assert (=> b!4318060 (= e!2686311 (allKeysSameHashInMap!378 (map!10364 (v!42666 (underlying!9704 thiss!42308))) (hashF!6868 thiss!42308)))))

(assert (= (and d!1269605 res!1769728) b!4318059))

(assert (= (and b!4318059 res!1769729) b!4318060))

(assert (=> d!1269605 m!4911677))

(assert (=> b!4318059 m!4911649))

(declare-fun m!4911689 () Bool)

(assert (=> b!4318059 m!4911689))

(assert (=> b!4318060 m!4911649))

(assert (=> b!4318060 m!4911649))

(declare-fun m!4911691 () Bool)

(assert (=> b!4318060 m!4911691))

(assert (=> b!4318025 d!1269605))

(declare-fun d!1269607 () Bool)

(declare-fun e!2686314 () Bool)

(assert (=> d!1269607 e!2686314))

(declare-fun c!734166 () Bool)

(assert (=> d!1269607 (= c!734166 (contains!10371 (v!42666 (underlying!9704 thiss!42308)) lt!1536888))))

(declare-fun lt!1536909 () List!48468)

(declare-fun apply!11115 (LongMapFixedSize!9474 (_ BitVec 64)) List!48468)

(assert (=> d!1269607 (= lt!1536909 (apply!11115 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))) lt!1536888))))

(assert (=> d!1269607 (valid!3744 (v!42666 (underlying!9704 thiss!42308)))))

(assert (=> d!1269607 (= (apply!11114 (v!42666 (underlying!9704 thiss!42308)) lt!1536888) lt!1536909)))

(declare-fun b!4318065 () Bool)

(declare-datatypes ((Option!10286 0))(
  ( (None!10285) (Some!10285 (v!42671 List!48468)) )
))
(declare-fun get!15659 (Option!10286) List!48468)

(declare-fun getValueByKey!289 (List!48469 (_ BitVec 64)) Option!10286)

(assert (=> b!4318065 (= e!2686314 (= lt!1536909 (get!15659 (getValueByKey!289 (toList!2526 (map!10364 (v!42666 (underlying!9704 thiss!42308)))) lt!1536888))))))

(declare-fun b!4318066 () Bool)

(declare-fun dynLambda!20492 (Int (_ BitVec 64)) List!48468)

(assert (=> b!4318066 (= e!2686314 (= lt!1536909 (dynLambda!20492 (defaultEntry!5122 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308))))) lt!1536888)))))

(assert (=> b!4318066 ((_ is LongMap!4737) (v!42666 (underlying!9704 thiss!42308)))))

(assert (= (and d!1269607 c!734166) b!4318065))

(assert (= (and d!1269607 (not c!734166)) b!4318066))

(declare-fun b_lambda!126995 () Bool)

(assert (=> (not b_lambda!126995) (not b!4318066)))

(declare-fun t!355332 () Bool)

(declare-fun tb!257347 () Bool)

(assert (=> (and b!4318014 (= (defaultEntry!5122 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308))))) (defaultEntry!5122 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))))) t!355332) tb!257347))

(assert (=> b!4318066 t!355332))

(declare-fun result!314836 () Bool)

(declare-fun b_and!340417 () Bool)

(assert (= b_and!340413 (and (=> t!355332 result!314836) b_and!340417)))

(assert (=> d!1269607 m!4911643))

(declare-fun m!4911693 () Bool)

(assert (=> d!1269607 m!4911693))

(assert (=> d!1269607 m!4911677))

(assert (=> b!4318065 m!4911649))

(declare-fun m!4911695 () Bool)

(assert (=> b!4318065 m!4911695))

(assert (=> b!4318065 m!4911695))

(declare-fun m!4911697 () Bool)

(assert (=> b!4318065 m!4911697))

(declare-fun m!4911699 () Bool)

(assert (=> b!4318066 m!4911699))

(assert (=> b!4318027 d!1269607))

(declare-fun bs!605991 () Bool)

(declare-fun b!4318099 () Bool)

(assert (= bs!605991 (and b!4318099 b!4318023)))

(declare-fun lambda!133580 () Int)

(assert (=> bs!605991 (= lambda!133580 lambda!133574)))

(declare-fun bs!605992 () Bool)

(assert (= bs!605992 (and b!4318099 b!4318059)))

(assert (=> bs!605992 (= lambda!133580 lambda!133577)))

(declare-fun bm!298952 () Bool)

(declare-datatypes ((Option!10287 0))(
  ( (None!10286) (Some!10286 (v!42672 tuple2!47080)) )
))
(declare-fun call!298960 () Option!10287)

(declare-fun call!298958 () List!48468)

(declare-fun getPair!156 (List!48468 K!9589) Option!10287)

(assert (=> bm!298952 (= call!298960 (getPair!156 call!298958 key!2048))))

(declare-fun bm!298953 () Bool)

(declare-fun call!298962 () Bool)

(declare-fun isDefined!7587 (Option!10287) Bool)

(assert (=> bm!298953 (= call!298962 (isDefined!7587 call!298960))))

(declare-fun bm!298954 () Bool)

(declare-fun call!298961 () ListLongMap!1141)

(assert (=> bm!298954 (= call!298961 (map!10364 (v!42666 (underlying!9704 thiss!42308))))))

(declare-fun bm!298955 () Bool)

(declare-fun call!298957 () (_ BitVec 64))

(assert (=> bm!298955 (= call!298957 (hash!1139 (hashF!6868 thiss!42308) key!2048))))

(declare-fun bm!298956 () Bool)

(declare-fun c!734178 () Bool)

(declare-fun lt!1536960 () ListLongMap!1141)

(declare-fun apply!11116 (ListLongMap!1141 (_ BitVec 64)) List!48468)

(assert (=> bm!298956 (= call!298958 (apply!11116 (ite c!734178 lt!1536960 call!298961) call!298957))))

(declare-fun d!1269609 () Bool)

(declare-fun lt!1536954 () Bool)

(declare-fun contains!10375 (ListMap!1805 K!9589) Bool)

(assert (=> d!1269609 (= lt!1536954 (contains!10375 (map!10365 thiss!42308) key!2048))))

(declare-fun e!2686329 () Bool)

(assert (=> d!1269609 (= lt!1536954 e!2686329)))

(declare-fun res!1769736 () Bool)

(assert (=> d!1269609 (=> (not res!1769736) (not e!2686329))))

(declare-fun lt!1536965 () (_ BitVec 64))

(assert (=> d!1269609 (= res!1769736 (contains!10371 (v!42666 (underlying!9704 thiss!42308)) lt!1536965))))

(declare-fun lt!1536953 () Unit!67607)

(declare-fun e!2686330 () Unit!67607)

(assert (=> d!1269609 (= lt!1536953 e!2686330)))

(declare-fun extractMap!362 (List!48469) ListMap!1805)

(assert (=> d!1269609 (= c!734178 (contains!10375 (extractMap!362 (toList!2526 (map!10364 (v!42666 (underlying!9704 thiss!42308))))) key!2048))))

(declare-fun lt!1536952 () Unit!67607)

(declare-fun e!2686333 () Unit!67607)

(assert (=> d!1269609 (= lt!1536952 e!2686333)))

(declare-fun c!734175 () Bool)

(assert (=> d!1269609 (= c!734175 (contains!10371 (v!42666 (underlying!9704 thiss!42308)) lt!1536965))))

(assert (=> d!1269609 (= lt!1536965 (hash!1139 (hashF!6868 thiss!42308) key!2048))))

(assert (=> d!1269609 (valid!3743 thiss!42308)))

(assert (=> d!1269609 (= (contains!10372 thiss!42308 key!2048) lt!1536954)))

(declare-fun b!4318089 () Bool)

(declare-fun e!2686332 () Bool)

(assert (=> b!4318089 (= e!2686332 call!298962)))

(declare-fun b!4318090 () Bool)

(assert (=> b!4318090 (= e!2686329 (isDefined!7587 (getPair!156 (apply!11114 (v!42666 (underlying!9704 thiss!42308)) lt!1536965) key!2048)))))

(declare-fun b!4318091 () Bool)

(declare-fun e!2686334 () Unit!67607)

(declare-fun Unit!67610 () Unit!67607)

(assert (=> b!4318091 (= e!2686334 Unit!67610)))

(declare-fun b!4318092 () Bool)

(declare-fun lt!1536966 () Unit!67607)

(assert (=> b!4318092 (= e!2686330 lt!1536966)))

(assert (=> b!4318092 (= lt!1536960 call!298961)))

(declare-fun lemmaInGenericMapThenInLongMap!156 (ListLongMap!1141 K!9589 Hashable!4653) Unit!67607)

(assert (=> b!4318092 (= lt!1536966 (lemmaInGenericMapThenInLongMap!156 lt!1536960 key!2048 (hashF!6868 thiss!42308)))))

(declare-fun res!1769737 () Bool)

(declare-fun call!298959 () Bool)

(assert (=> b!4318092 (= res!1769737 call!298959)))

(declare-fun e!2686331 () Bool)

(assert (=> b!4318092 (=> (not res!1769737) (not e!2686331))))

(assert (=> b!4318092 e!2686331))

(declare-fun b!4318093 () Bool)

(assert (=> b!4318093 (= e!2686330 e!2686334)))

(declare-fun res!1769738 () Bool)

(assert (=> b!4318093 (= res!1769738 call!298959)))

(assert (=> b!4318093 (=> (not res!1769738) (not e!2686332))))

(declare-fun c!734176 () Bool)

(assert (=> b!4318093 (= c!734176 e!2686332)))

(declare-fun b!4318094 () Bool)

(assert (=> b!4318094 (= e!2686331 call!298962)))

(declare-fun bm!298957 () Bool)

(assert (=> bm!298957 (= call!298959 (contains!10373 (ite c!734178 lt!1536960 call!298961) call!298957))))

(declare-fun b!4318095 () Bool)

(declare-fun e!2686335 () Unit!67607)

(declare-fun Unit!67611 () Unit!67607)

(assert (=> b!4318095 (= e!2686335 Unit!67611)))

(declare-fun b!4318096 () Bool)

(declare-fun Unit!67612 () Unit!67607)

(assert (=> b!4318096 (= e!2686333 Unit!67612)))

(declare-fun b!4318097 () Bool)

(assert (=> b!4318097 false))

(declare-fun lt!1536963 () Unit!67607)

(declare-fun lt!1536968 () Unit!67607)

(assert (=> b!4318097 (= lt!1536963 lt!1536968)))

(declare-fun lt!1536967 () List!48469)

(declare-fun lt!1536955 () List!48468)

(declare-fun contains!10376 (List!48469 tuple2!47082) Bool)

(assert (=> b!4318097 (contains!10376 lt!1536967 (tuple2!47083 lt!1536965 lt!1536955))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!168 (List!48469 (_ BitVec 64) List!48468) Unit!67607)

(assert (=> b!4318097 (= lt!1536968 (lemmaGetValueByKeyImpliesContainsTuple!168 lt!1536967 lt!1536965 lt!1536955))))

(assert (=> b!4318097 (= lt!1536955 (apply!11114 (v!42666 (underlying!9704 thiss!42308)) lt!1536965))))

(assert (=> b!4318097 (= lt!1536967 (toList!2526 (map!10364 (v!42666 (underlying!9704 thiss!42308)))))))

(declare-fun lt!1536964 () Unit!67607)

(declare-fun lt!1536950 () Unit!67607)

(assert (=> b!4318097 (= lt!1536964 lt!1536950)))

(declare-fun lt!1536958 () List!48469)

(declare-fun isDefined!7588 (Option!10286) Bool)

(assert (=> b!4318097 (isDefined!7588 (getValueByKey!289 lt!1536958 lt!1536965))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!208 (List!48469 (_ BitVec 64)) Unit!67607)

(assert (=> b!4318097 (= lt!1536950 (lemmaContainsKeyImpliesGetValueByKeyDefined!208 lt!1536958 lt!1536965))))

(assert (=> b!4318097 (= lt!1536958 (toList!2526 (map!10364 (v!42666 (underlying!9704 thiss!42308)))))))

(declare-fun lt!1536959 () Unit!67607)

(declare-fun lt!1536961 () Unit!67607)

(assert (=> b!4318097 (= lt!1536959 lt!1536961)))

(declare-fun lt!1536962 () List!48469)

(declare-fun containsKey!386 (List!48469 (_ BitVec 64)) Bool)

(assert (=> b!4318097 (containsKey!386 lt!1536962 lt!1536965)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!157 (List!48469 (_ BitVec 64)) Unit!67607)

(assert (=> b!4318097 (= lt!1536961 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!157 lt!1536962 lt!1536965))))

(assert (=> b!4318097 (= lt!1536962 (toList!2526 (map!10364 (v!42666 (underlying!9704 thiss!42308)))))))

(declare-fun Unit!67613 () Unit!67607)

(assert (=> b!4318097 (= e!2686335 Unit!67613)))

(declare-fun b!4318098 () Bool)

(assert (=> b!4318098 false))

(declare-fun lt!1536957 () Unit!67607)

(declare-fun lt!1536956 () Unit!67607)

(assert (=> b!4318098 (= lt!1536957 lt!1536956)))

(declare-fun lt!1536951 () ListLongMap!1141)

(assert (=> b!4318098 (contains!10375 (extractMap!362 (toList!2526 lt!1536951)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!156 (ListLongMap!1141 K!9589 Hashable!4653) Unit!67607)

(assert (=> b!4318098 (= lt!1536956 (lemmaInLongMapThenInGenericMap!156 lt!1536951 key!2048 (hashF!6868 thiss!42308)))))

(assert (=> b!4318098 (= lt!1536951 call!298961)))

(declare-fun Unit!67614 () Unit!67607)

(assert (=> b!4318098 (= e!2686334 Unit!67614)))

(declare-fun forallContained!1524 (List!48469 Int tuple2!47082) Unit!67607)

(assert (=> b!4318099 (= e!2686333 (forallContained!1524 (toList!2526 (map!10364 (v!42666 (underlying!9704 thiss!42308)))) lambda!133580 (tuple2!47083 lt!1536965 (apply!11114 (v!42666 (underlying!9704 thiss!42308)) lt!1536965))))))

(declare-fun c!734177 () Bool)

(assert (=> b!4318099 (= c!734177 (not (contains!10376 (toList!2526 (map!10364 (v!42666 (underlying!9704 thiss!42308)))) (tuple2!47083 lt!1536965 (apply!11114 (v!42666 (underlying!9704 thiss!42308)) lt!1536965)))))))

(declare-fun lt!1536969 () Unit!67607)

(assert (=> b!4318099 (= lt!1536969 e!2686335)))

(assert (= (and d!1269609 c!734175) b!4318099))

(assert (= (and d!1269609 (not c!734175)) b!4318096))

(assert (= (and b!4318099 c!734177) b!4318097))

(assert (= (and b!4318099 (not c!734177)) b!4318095))

(assert (= (and d!1269609 c!734178) b!4318092))

(assert (= (and d!1269609 (not c!734178)) b!4318093))

(assert (= (and b!4318092 res!1769737) b!4318094))

(assert (= (and b!4318093 res!1769738) b!4318089))

(assert (= (and b!4318093 c!734176) b!4318098))

(assert (= (and b!4318093 (not c!734176)) b!4318091))

(assert (= (or b!4318092 b!4318094 b!4318093 b!4318089) bm!298955))

(assert (= (or b!4318092 b!4318093 b!4318089 b!4318098) bm!298954))

(assert (= (or b!4318092 b!4318093) bm!298957))

(assert (= (or b!4318094 b!4318089) bm!298956))

(assert (= (or b!4318094 b!4318089) bm!298952))

(assert (= (or b!4318094 b!4318089) bm!298953))

(assert (= (and d!1269609 res!1769736) b!4318090))

(declare-fun m!4911701 () Bool)

(assert (=> bm!298957 m!4911701))

(assert (=> b!4318099 m!4911649))

(declare-fun m!4911703 () Bool)

(assert (=> b!4318099 m!4911703))

(declare-fun m!4911705 () Bool)

(assert (=> b!4318099 m!4911705))

(declare-fun m!4911707 () Bool)

(assert (=> b!4318099 m!4911707))

(declare-fun m!4911709 () Bool)

(assert (=> d!1269609 m!4911709))

(declare-fun m!4911711 () Bool)

(assert (=> d!1269609 m!4911711))

(assert (=> d!1269609 m!4911651))

(declare-fun m!4911713 () Bool)

(assert (=> d!1269609 m!4911713))

(assert (=> d!1269609 m!4911649))

(assert (=> d!1269609 m!4911665))

(assert (=> d!1269609 m!4911645))

(declare-fun m!4911715 () Bool)

(assert (=> d!1269609 m!4911715))

(assert (=> d!1269609 m!4911709))

(assert (=> d!1269609 m!4911651))

(assert (=> bm!298954 m!4911649))

(declare-fun m!4911717 () Bool)

(assert (=> b!4318098 m!4911717))

(assert (=> b!4318098 m!4911717))

(declare-fun m!4911719 () Bool)

(assert (=> b!4318098 m!4911719))

(declare-fun m!4911721 () Bool)

(assert (=> b!4318098 m!4911721))

(declare-fun m!4911723 () Bool)

(assert (=> b!4318092 m!4911723))

(declare-fun m!4911725 () Bool)

(assert (=> b!4318097 m!4911725))

(declare-fun m!4911727 () Bool)

(assert (=> b!4318097 m!4911727))

(assert (=> b!4318097 m!4911649))

(assert (=> b!4318097 m!4911703))

(declare-fun m!4911729 () Bool)

(assert (=> b!4318097 m!4911729))

(assert (=> b!4318097 m!4911727))

(declare-fun m!4911731 () Bool)

(assert (=> b!4318097 m!4911731))

(declare-fun m!4911733 () Bool)

(assert (=> b!4318097 m!4911733))

(declare-fun m!4911735 () Bool)

(assert (=> b!4318097 m!4911735))

(declare-fun m!4911737 () Bool)

(assert (=> b!4318097 m!4911737))

(assert (=> bm!298955 m!4911645))

(declare-fun m!4911739 () Bool)

(assert (=> bm!298953 m!4911739))

(declare-fun m!4911741 () Bool)

(assert (=> bm!298952 m!4911741))

(assert (=> b!4318090 m!4911703))

(assert (=> b!4318090 m!4911703))

(declare-fun m!4911743 () Bool)

(assert (=> b!4318090 m!4911743))

(assert (=> b!4318090 m!4911743))

(declare-fun m!4911745 () Bool)

(assert (=> b!4318090 m!4911745))

(declare-fun m!4911747 () Bool)

(assert (=> bm!298956 m!4911747))

(assert (=> b!4318026 d!1269609))

(declare-fun d!1269611 () Bool)

(declare-fun map!10366 (LongMapFixedSize!9474) ListLongMap!1141)

(assert (=> d!1269611 (= (map!10364 (v!42666 (underlying!9704 thiss!42308))) (map!10366 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308))))))))

(declare-fun bs!605993 () Bool)

(assert (= bs!605993 d!1269611))

(declare-fun m!4911749 () Bool)

(assert (=> bs!605993 m!4911749))

(assert (=> b!4318026 d!1269611))

(declare-fun d!1269613 () Bool)

(declare-fun lt!1536972 () ListMap!1805)

(declare-fun invariantList!595 (List!48468) Bool)

(assert (=> d!1269613 (invariantList!595 (toList!2527 lt!1536972))))

(assert (=> d!1269613 (= lt!1536972 (extractMap!362 (toList!2526 (map!10364 (v!42666 (underlying!9704 thiss!42308))))))))

(assert (=> d!1269613 (valid!3743 thiss!42308)))

(assert (=> d!1269613 (= (map!10365 thiss!42308) lt!1536972)))

(declare-fun bs!605994 () Bool)

(assert (= bs!605994 d!1269613))

(declare-fun m!4911751 () Bool)

(assert (=> bs!605994 m!4911751))

(assert (=> bs!605994 m!4911649))

(assert (=> bs!605994 m!4911709))

(assert (=> bs!605994 m!4911665))

(assert (=> b!4318026 d!1269613))

(declare-fun d!1269615 () Bool)

(declare-fun res!1769743 () Bool)

(declare-fun e!2686340 () Bool)

(assert (=> d!1269615 (=> res!1769743 e!2686340)))

(assert (=> d!1269615 (= res!1769743 ((_ is Nil!48345) (toList!2526 lt!1536889)))))

(assert (=> d!1269615 (= (forall!8793 (toList!2526 lt!1536889) lambda!133574) e!2686340)))

(declare-fun b!4318104 () Bool)

(declare-fun e!2686341 () Bool)

(assert (=> b!4318104 (= e!2686340 e!2686341)))

(declare-fun res!1769744 () Bool)

(assert (=> b!4318104 (=> (not res!1769744) (not e!2686341))))

(declare-fun dynLambda!20493 (Int tuple2!47082) Bool)

(assert (=> b!4318104 (= res!1769744 (dynLambda!20493 lambda!133574 (h!53799 (toList!2526 lt!1536889))))))

(declare-fun b!4318105 () Bool)

(assert (=> b!4318105 (= e!2686341 (forall!8793 (t!355330 (toList!2526 lt!1536889)) lambda!133574))))

(assert (= (and d!1269615 (not res!1769743)) b!4318104))

(assert (= (and b!4318104 res!1769744) b!4318105))

(declare-fun b_lambda!126997 () Bool)

(assert (=> (not b_lambda!126997) (not b!4318104)))

(declare-fun m!4911753 () Bool)

(assert (=> b!4318104 m!4911753))

(declare-fun m!4911755 () Bool)

(assert (=> b!4318105 m!4911755))

(assert (=> b!4318023 d!1269615))

(declare-fun d!1269617 () Bool)

(assert (=> d!1269617 (= (isEmpty!28102 lt!1536891) ((_ is Nil!48344) lt!1536891))))

(assert (=> b!4318023 d!1269617))

(declare-fun d!1269619 () Bool)

(assert (=> d!1269619 true))

(assert (=> d!1269619 true))

(declare-fun lambda!133583 () Int)

(declare-fun forall!8794 (List!48468 Int) Bool)

(assert (=> d!1269619 (= (allKeysSameHash!231 lt!1536891 lt!1536888 (hashF!6868 thiss!42308)) (forall!8794 lt!1536891 lambda!133583))))

(declare-fun bs!605995 () Bool)

(assert (= bs!605995 d!1269619))

(declare-fun m!4911757 () Bool)

(assert (=> bs!605995 m!4911757))

(assert (=> b!4318018 d!1269619))

(declare-fun bs!605996 () Bool)

(declare-fun d!1269621 () Bool)

(assert (= bs!605996 (and d!1269621 b!4318023)))

(declare-fun lambda!133586 () Int)

(assert (=> bs!605996 (not (= lambda!133586 lambda!133574))))

(declare-fun bs!605997 () Bool)

(assert (= bs!605997 (and d!1269621 b!4318059)))

(assert (=> bs!605997 (not (= lambda!133586 lambda!133577))))

(declare-fun bs!605998 () Bool)

(assert (= bs!605998 (and d!1269621 b!4318099)))

(assert (=> bs!605998 (not (= lambda!133586 lambda!133580))))

(assert (=> d!1269621 true))

(assert (=> d!1269621 (allKeysSameHash!231 lt!1536891 lt!1536888 (hashF!6868 thiss!42308))))

(declare-fun lt!1536975 () Unit!67607)

(declare-fun choose!26352 (List!48469 (_ BitVec 64) List!48468 Hashable!4653) Unit!67607)

(assert (=> d!1269621 (= lt!1536975 (choose!26352 (toList!2526 lt!1536889) lt!1536888 lt!1536891 (hashF!6868 thiss!42308)))))

(assert (=> d!1269621 (forall!8793 (toList!2526 lt!1536889) lambda!133586)))

(assert (=> d!1269621 (= (lemmaInLongMapAllKeySameHashThenForTuple!216 (toList!2526 lt!1536889) lt!1536888 lt!1536891 (hashF!6868 thiss!42308)) lt!1536975)))

(declare-fun bs!605999 () Bool)

(assert (= bs!605999 d!1269621))

(assert (=> bs!605999 m!4911661))

(declare-fun m!4911759 () Bool)

(assert (=> bs!605999 m!4911759))

(declare-fun m!4911761 () Bool)

(assert (=> bs!605999 m!4911761))

(assert (=> b!4318018 d!1269621))

(declare-fun bs!606000 () Bool)

(declare-fun d!1269623 () Bool)

(assert (= bs!606000 (and d!1269623 d!1269619)))

(declare-fun lambda!133587 () Int)

(assert (=> bs!606000 (= lambda!133587 lambda!133583)))

(assert (=> d!1269623 true))

(assert (=> d!1269623 true))

(assert (=> d!1269623 (= (allKeysSameHash!231 (removePairForKey!254 lt!1536891 key!2048) lt!1536888 (hashF!6868 thiss!42308)) (forall!8794 (removePairForKey!254 lt!1536891 key!2048) lambda!133587))))

(declare-fun bs!606001 () Bool)

(assert (= bs!606001 d!1269623))

(assert (=> bs!606001 m!4911655))

(declare-fun m!4911763 () Bool)

(assert (=> bs!606001 m!4911763))

(assert (=> b!4318018 d!1269623))

(declare-fun b!4318121 () Bool)

(declare-fun e!2686346 () List!48468)

(declare-fun e!2686347 () List!48468)

(assert (=> b!4318121 (= e!2686346 e!2686347)))

(declare-fun c!734184 () Bool)

(assert (=> b!4318121 (= c!734184 ((_ is Cons!48344) lt!1536891))))

(declare-fun b!4318122 () Bool)

(assert (=> b!4318122 (= e!2686347 (Cons!48344 (h!53798 lt!1536891) (removePairForKey!254 (t!355329 lt!1536891) key!2048)))))

(declare-fun b!4318123 () Bool)

(assert (=> b!4318123 (= e!2686347 Nil!48344)))

(declare-fun b!4318120 () Bool)

(assert (=> b!4318120 (= e!2686346 (t!355329 lt!1536891))))

(declare-fun d!1269625 () Bool)

(declare-fun lt!1536978 () List!48468)

(declare-fun containsKey!387 (List!48468 K!9589) Bool)

(assert (=> d!1269625 (not (containsKey!387 lt!1536978 key!2048))))

(assert (=> d!1269625 (= lt!1536978 e!2686346)))

(declare-fun c!734183 () Bool)

(assert (=> d!1269625 (= c!734183 (and ((_ is Cons!48344) lt!1536891) (= (_1!26824 (h!53798 lt!1536891)) key!2048)))))

(declare-fun noDuplicateKeys!256 (List!48468) Bool)

(assert (=> d!1269625 (noDuplicateKeys!256 lt!1536891)))

(assert (=> d!1269625 (= (removePairForKey!254 lt!1536891 key!2048) lt!1536978)))

(assert (= (and d!1269625 c!734183) b!4318120))

(assert (= (and d!1269625 (not c!734183)) b!4318121))

(assert (= (and b!4318121 c!734184) b!4318122))

(assert (= (and b!4318121 (not c!734184)) b!4318123))

(declare-fun m!4911765 () Bool)

(assert (=> b!4318122 m!4911765))

(declare-fun m!4911767 () Bool)

(assert (=> d!1269625 m!4911767))

(declare-fun m!4911769 () Bool)

(assert (=> d!1269625 m!4911769))

(assert (=> b!4318018 d!1269625))

(declare-fun d!1269627 () Bool)

(assert (=> d!1269627 (allKeysSameHash!231 (removePairForKey!254 lt!1536891 key!2048) lt!1536888 (hashF!6868 thiss!42308))))

(declare-fun lt!1536981 () Unit!67607)

(declare-fun choose!26353 (List!48468 K!9589 (_ BitVec 64) Hashable!4653) Unit!67607)

(assert (=> d!1269627 (= lt!1536981 (choose!26353 lt!1536891 key!2048 lt!1536888 (hashF!6868 thiss!42308)))))

(assert (=> d!1269627 (noDuplicateKeys!256 lt!1536891)))

(assert (=> d!1269627 (= (lemmaRemovePairForKeyPreservesHash!207 lt!1536891 key!2048 lt!1536888 (hashF!6868 thiss!42308)) lt!1536981)))

(declare-fun bs!606002 () Bool)

(assert (= bs!606002 d!1269627))

(assert (=> bs!606002 m!4911655))

(assert (=> bs!606002 m!4911655))

(assert (=> bs!606002 m!4911657))

(declare-fun m!4911771 () Bool)

(assert (=> bs!606002 m!4911771))

(assert (=> bs!606002 m!4911769))

(assert (=> b!4318018 d!1269627))

(declare-fun d!1269629 () Bool)

(assert (=> d!1269629 (= (array_inv!5511 (_keys!5037 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))))) (bvsge (size!35698 (_keys!5037 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4318014 d!1269629))

(declare-fun d!1269631 () Bool)

(assert (=> d!1269631 (= (array_inv!5512 (_values!5018 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))))) (bvsge (size!35699 (_values!5018 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4318014 d!1269631))

(declare-fun mapIsEmpty!21120 () Bool)

(declare-fun mapRes!21120 () Bool)

(assert (=> mapIsEmpty!21120 mapRes!21120))

(declare-fun mapNonEmpty!21120 () Bool)

(declare-fun tp!1326490 () Bool)

(declare-fun e!2686352 () Bool)

(assert (=> mapNonEmpty!21120 (= mapRes!21120 (and tp!1326490 e!2686352))))

(declare-fun mapKey!21120 () (_ BitVec 32))

(declare-fun mapRest!21120 () (Array (_ BitVec 32) List!48468))

(declare-fun mapValue!21120 () List!48468)

(assert (=> mapNonEmpty!21120 (= mapRest!21117 (store mapRest!21120 mapKey!21120 mapValue!21120))))

(declare-fun b!4318131 () Bool)

(declare-fun tp!1326489 () Bool)

(declare-fun e!2686353 () Bool)

(assert (=> b!4318131 (= e!2686353 (and tp_is_empty!24045 tp_is_empty!24047 tp!1326489))))

(declare-fun b!4318130 () Bool)

(declare-fun tp!1326488 () Bool)

(assert (=> b!4318130 (= e!2686352 (and tp_is_empty!24045 tp_is_empty!24047 tp!1326488))))

(declare-fun condMapEmpty!21120 () Bool)

(declare-fun mapDefault!21120 () List!48468)

(assert (=> mapNonEmpty!21117 (= condMapEmpty!21120 (= mapRest!21117 ((as const (Array (_ BitVec 32) List!48468)) mapDefault!21120)))))

(assert (=> mapNonEmpty!21117 (= tp!1326479 (and e!2686353 mapRes!21120))))

(assert (= (and mapNonEmpty!21117 condMapEmpty!21120) mapIsEmpty!21120))

(assert (= (and mapNonEmpty!21117 (not condMapEmpty!21120)) mapNonEmpty!21120))

(assert (= (and mapNonEmpty!21120 ((_ is Cons!48344) mapValue!21120)) b!4318130))

(assert (= (and mapNonEmpty!21117 ((_ is Cons!48344) mapDefault!21120)) b!4318131))

(declare-fun m!4911773 () Bool)

(assert (=> mapNonEmpty!21120 m!4911773))

(declare-fun e!2686356 () Bool)

(declare-fun tp!1326493 () Bool)

(declare-fun b!4318136 () Bool)

(assert (=> b!4318136 (= e!2686356 (and tp_is_empty!24045 tp_is_empty!24047 tp!1326493))))

(assert (=> mapNonEmpty!21117 (= tp!1326481 e!2686356)))

(assert (= (and mapNonEmpty!21117 ((_ is Cons!48344) mapValue!21117)) b!4318136))

(declare-fun tp!1326494 () Bool)

(declare-fun b!4318137 () Bool)

(declare-fun e!2686357 () Bool)

(assert (=> b!4318137 (= e!2686357 (and tp_is_empty!24045 tp_is_empty!24047 tp!1326494))))

(assert (=> b!4318020 (= tp!1326478 e!2686357)))

(assert (= (and b!4318020 ((_ is Cons!48344) mapDefault!21117)) b!4318137))

(declare-fun e!2686358 () Bool)

(declare-fun b!4318138 () Bool)

(declare-fun tp!1326495 () Bool)

(assert (=> b!4318138 (= e!2686358 (and tp_is_empty!24045 tp_is_empty!24047 tp!1326495))))

(assert (=> b!4318014 (= tp!1326475 e!2686358)))

(assert (= (and b!4318014 ((_ is Cons!48344) (zeroValue!4996 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308))))))) b!4318138))

(declare-fun tp!1326496 () Bool)

(declare-fun e!2686359 () Bool)

(declare-fun b!4318139 () Bool)

(assert (=> b!4318139 (= e!2686359 (and tp_is_empty!24045 tp_is_empty!24047 tp!1326496))))

(assert (=> b!4318014 (= tp!1326477 e!2686359)))

(assert (= (and b!4318014 ((_ is Cons!48344) (minValue!4996 (v!42665 (underlying!9703 (v!42666 (underlying!9704 thiss!42308))))))) b!4318139))

(declare-fun b_lambda!126999 () Bool)

(assert (= b_lambda!126995 (or (and b!4318014 b_free!128907) b_lambda!126999)))

(declare-fun b_lambda!127001 () Bool)

(assert (= b_lambda!126997 (or b!4318023 b_lambda!127001)))

(declare-fun bs!606003 () Bool)

(declare-fun d!1269633 () Bool)

(assert (= bs!606003 (and d!1269633 b!4318023)))

(assert (=> bs!606003 (= (dynLambda!20493 lambda!133574 (h!53799 (toList!2526 lt!1536889))) (noDuplicateKeys!256 (_2!26825 (h!53799 (toList!2526 lt!1536889)))))))

(declare-fun m!4911775 () Bool)

(assert (=> bs!606003 m!4911775))

(assert (=> b!4318104 d!1269633))

(check-sat (not d!1269601) (not bm!298954) (not b!4318139) (not b!4318136) (not b_next!129613) (not bm!298939) (not b!4318122) (not bs!606003) (not b!4318060) b_and!340415 (not mapNonEmpty!21120) (not d!1269621) (not d!1269605) (not b!4318099) (not b!4318049) (not b!4318137) (not d!1269619) (not b!4318130) (not tb!257347) (not bm!298956) (not d!1269607) (not b!4318059) tp_is_empty!24045 (not d!1269603) (not b!4318046) (not b!4318098) (not b!4318050) (not b!4318138) (not bm!298955) (not b!4318090) tp_is_empty!24047 b_and!340417 (not b!4318092) (not b_lambda!127001) (not d!1269599) (not bm!298957) (not b!4318131) (not b!4318065) (not d!1269625) (not d!1269627) (not b!4318054) (not b_lambda!126999) (not d!1269609) (not b!4318048) (not bm!298938) (not b!4318105) (not b!4318097) (not d!1269623) (not bm!298953) (not b_next!129611) (not d!1269611) (not bm!298952) (not d!1269613))
(check-sat b_and!340417 b_and!340415 (not b_next!129613) (not b_next!129611))

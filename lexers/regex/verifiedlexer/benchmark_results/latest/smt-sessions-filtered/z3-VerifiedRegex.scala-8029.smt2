; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415478 () Bool)

(assert start!415478)

(declare-fun b!4318223 () Bool)

(declare-fun b_free!128915 () Bool)

(declare-fun b_next!129619 () Bool)

(assert (=> b!4318223 (= b_free!128915 (not b_next!129619))))

(declare-fun tp!1326535 () Bool)

(declare-fun b_and!340423 () Bool)

(assert (=> b!4318223 (= tp!1326535 b_and!340423)))

(declare-fun b!4318227 () Bool)

(declare-fun b_free!128917 () Bool)

(declare-fun b_next!129621 () Bool)

(assert (=> b!4318227 (= b_free!128917 (not b_next!129621))))

(declare-fun tp!1326532 () Bool)

(declare-fun b_and!340425 () Bool)

(assert (=> b!4318227 (= tp!1326532 b_and!340425)))

(declare-fun b!4318215 () Bool)

(declare-fun e!2686425 () Bool)

(declare-fun tp!1326538 () Bool)

(declare-fun mapRes!21126 () Bool)

(assert (=> b!4318215 (= e!2686425 (and tp!1326538 mapRes!21126))))

(declare-fun condMapEmpty!21126 () Bool)

(declare-datatypes ((V!9796 0))(
  ( (V!9797 (val!15933 Int)) )
))
(declare-datatypes ((K!9594 0))(
  ( (K!9595 (val!15934 Int)) )
))
(declare-datatypes ((tuple2!47092 0))(
  ( (tuple2!47093 (_1!26830 K!9594) (_2!26830 V!9796)) )
))
(declare-datatypes ((List!48472 0))(
  ( (Nil!48348) (Cons!48348 (h!53803 tuple2!47092) (t!355335 List!48472)) )
))
(declare-datatypes ((array!17166 0))(
  ( (array!17167 (arr!7663 (Array (_ BitVec 32) (_ BitVec 64))) (size!35702 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4655 0))(
  ( (HashableExt!4654 (__x!30242 Int)) )
))
(declare-datatypes ((array!17168 0))(
  ( (array!17169 (arr!7664 (Array (_ BitVec 32) List!48472)) (size!35703 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9478 0))(
  ( (LongMapFixedSize!9479 (defaultEntry!5124 Int) (mask!13337 (_ BitVec 32)) (extraKeys!4988 (_ BitVec 32)) (zeroValue!4998 List!48472) (minValue!4998 List!48472) (_size!9521 (_ BitVec 32)) (_keys!5039 array!17166) (_values!5020 array!17168) (_vacant!4800 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18765 0))(
  ( (Cell!18766 (v!42675 LongMapFixedSize!9478)) )
))
(declare-datatypes ((MutLongMap!4739 0))(
  ( (LongMap!4739 (underlying!9707 Cell!18765)) (MutLongMapExt!4738 (__x!30243 Int)) )
))
(declare-datatypes ((Cell!18767 0))(
  ( (Cell!18768 (v!42676 MutLongMap!4739)) )
))
(declare-datatypes ((MutableMap!4645 0))(
  ( (MutableMapExt!4644 (__x!30244 Int)) (HashMap!4645 (underlying!9708 Cell!18767) (hashF!6873 Hashable!4655) (_size!9522 (_ BitVec 32)) (defaultValue!4816 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4645)

(declare-fun mapDefault!21126 () List!48472)

(assert (=> b!4318215 (= condMapEmpty!21126 (= (arr!7664 (_values!5020 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48472)) mapDefault!21126)))))

(declare-fun b!4318216 () Bool)

(declare-fun e!2686436 () List!48472)

(declare-fun lt!1537026 () (_ BitVec 64))

(declare-fun apply!11118 (MutLongMap!4739 (_ BitVec 64)) List!48472)

(assert (=> b!4318216 (= e!2686436 (apply!11118 (v!42676 (underlying!9708 thiss!42308)) lt!1537026))))

(declare-fun b!4318217 () Bool)

(declare-fun e!2686431 () Bool)

(declare-fun e!2686433 () Bool)

(assert (=> b!4318217 (= e!2686431 e!2686433)))

(declare-fun res!1769772 () Bool)

(assert (=> b!4318217 (=> (not res!1769772) (not e!2686433))))

(declare-fun v!9179 () V!9796)

(declare-fun lt!1537029 () List!48472)

(declare-fun key!2048 () K!9594)

(declare-datatypes ((tuple2!47094 0))(
  ( (tuple2!47095 (_1!26831 Bool) (_2!26831 MutLongMap!4739)) )
))
(declare-fun update!513 (MutLongMap!4739 (_ BitVec 64) List!48472) tuple2!47094)

(assert (=> b!4318217 (= res!1769772 (_1!26831 (update!513 (v!42676 (underlying!9708 thiss!42308)) lt!1537026 (Cons!48348 (tuple2!47093 key!2048 v!9179) lt!1537029))))))

(assert (=> b!4318217 (= lt!1537029 e!2686436)))

(declare-fun c!734195 () Bool)

(declare-fun contains!10378 (MutLongMap!4739 (_ BitVec 64)) Bool)

(assert (=> b!4318217 (= c!734195 (contains!10378 (v!42676 (underlying!9708 thiss!42308)) lt!1537026))))

(declare-fun hash!1143 (Hashable!4655 K!9594) (_ BitVec 64))

(assert (=> b!4318217 (= lt!1537026 (hash!1143 (hashF!6873 thiss!42308) key!2048))))

(declare-fun b!4318218 () Bool)

(declare-fun e!2686426 () Bool)

(assert (=> b!4318218 (= e!2686433 e!2686426)))

(declare-fun res!1769774 () Bool)

(assert (=> b!4318218 (=> (not res!1769774) (not e!2686426))))

(declare-datatypes ((tuple2!47096 0))(
  ( (tuple2!47097 (_1!26832 (_ BitVec 64)) (_2!26832 List!48472)) )
))
(declare-datatypes ((List!48473 0))(
  ( (Nil!48349) (Cons!48349 (h!53804 tuple2!47096) (t!355336 List!48473)) )
))
(declare-datatypes ((ListLongMap!1145 0))(
  ( (ListLongMap!1146 (toList!2530 List!48473)) )
))
(declare-fun lt!1537024 () ListLongMap!1145)

(declare-fun lambda!133593 () Int)

(declare-fun forall!8795 (List!48473 Int) Bool)

(assert (=> b!4318218 (= res!1769774 (forall!8795 (toList!2530 lt!1537024) lambda!133593))))

(declare-datatypes ((Unit!67618 0))(
  ( (Unit!67619) )
))
(declare-fun lt!1537028 () Unit!67618)

(declare-fun e!2686434 () Unit!67618)

(assert (=> b!4318218 (= lt!1537028 e!2686434)))

(declare-fun c!734196 () Bool)

(declare-fun isEmpty!28103 (List!48472) Bool)

(assert (=> b!4318218 (= c!734196 (not (isEmpty!28103 lt!1537029)))))

(declare-fun b!4318219 () Bool)

(declare-fun res!1769773 () Bool)

(declare-fun e!2686437 () Bool)

(assert (=> b!4318219 (=> (not res!1769773) (not e!2686437))))

(declare-fun valid!3746 (MutableMap!4645) Bool)

(assert (=> b!4318219 (= res!1769773 (valid!3746 thiss!42308))))

(declare-fun b!4318220 () Bool)

(declare-fun allKeysSameHashInMap!379 (ListLongMap!1145 Hashable!4655) Bool)

(assert (=> b!4318220 (= e!2686426 (not (allKeysSameHashInMap!379 lt!1537024 (hashF!6873 thiss!42308))))))

(declare-fun mapNonEmpty!21126 () Bool)

(declare-fun tp!1326534 () Bool)

(declare-fun tp!1326536 () Bool)

(assert (=> mapNonEmpty!21126 (= mapRes!21126 (and tp!1326534 tp!1326536))))

(declare-fun mapValue!21126 () List!48472)

(declare-fun mapRest!21126 () (Array (_ BitVec 32) List!48472))

(declare-fun mapKey!21126 () (_ BitVec 32))

(assert (=> mapNonEmpty!21126 (= (arr!7664 (_values!5020 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))))) (store mapRest!21126 mapKey!21126 mapValue!21126))))

(declare-fun b!4318221 () Bool)

(declare-fun e!2686430 () Bool)

(declare-fun e!2686432 () Bool)

(declare-fun lt!1537022 () MutLongMap!4739)

(get-info :version)

(assert (=> b!4318221 (= e!2686430 (and e!2686432 ((_ is LongMap!4739) lt!1537022)))))

(assert (=> b!4318221 (= lt!1537022 (v!42676 (underlying!9708 thiss!42308)))))

(declare-fun b!4318222 () Bool)

(declare-fun Unit!67620 () Unit!67618)

(assert (=> b!4318222 (= e!2686434 Unit!67620)))

(declare-fun tp!1326533 () Bool)

(declare-fun tp!1326537 () Bool)

(declare-fun e!2686429 () Bool)

(declare-fun array_inv!5515 (array!17166) Bool)

(declare-fun array_inv!5516 (array!17168) Bool)

(assert (=> b!4318223 (= e!2686429 (and tp!1326535 tp!1326533 tp!1326537 (array_inv!5515 (_keys!5039 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))))) (array_inv!5516 (_values!5020 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))))) e!2686425))))

(declare-fun res!1769771 () Bool)

(assert (=> start!415478 (=> (not res!1769771) (not e!2686437))))

(assert (=> start!415478 (= res!1769771 ((_ is HashMap!4645) thiss!42308))))

(assert (=> start!415478 e!2686437))

(declare-fun e!2686427 () Bool)

(assert (=> start!415478 e!2686427))

(declare-fun tp_is_empty!24053 () Bool)

(assert (=> start!415478 tp_is_empty!24053))

(declare-fun tp_is_empty!24055 () Bool)

(assert (=> start!415478 tp_is_empty!24055))

(declare-fun b!4318224 () Bool)

(assert (=> b!4318224 (= e!2686437 e!2686431)))

(declare-fun res!1769770 () Bool)

(assert (=> b!4318224 (=> (not res!1769770) (not e!2686431))))

(declare-fun contains!10379 (MutableMap!4645 K!9594) Bool)

(assert (=> b!4318224 (= res!1769770 (not (contains!10379 thiss!42308 key!2048)))))

(declare-fun map!10370 (MutLongMap!4739) ListLongMap!1145)

(assert (=> b!4318224 (= lt!1537024 (map!10370 (v!42676 (underlying!9708 thiss!42308))))))

(declare-datatypes ((ListMap!1809 0))(
  ( (ListMap!1810 (toList!2531 List!48472)) )
))
(declare-fun lt!1537025 () ListMap!1809)

(declare-fun map!10371 (MutableMap!4645) ListMap!1809)

(assert (=> b!4318224 (= lt!1537025 (map!10371 thiss!42308))))

(declare-fun b!4318225 () Bool)

(declare-fun lt!1537027 () Unit!67618)

(assert (=> b!4318225 (= e!2686434 lt!1537027)))

(declare-fun lt!1537023 () Unit!67618)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!218 (List!48473 (_ BitVec 64) List!48472 Hashable!4655) Unit!67618)

(assert (=> b!4318225 (= lt!1537023 (lemmaInLongMapAllKeySameHashThenForTuple!218 (toList!2530 lt!1537024) lt!1537026 lt!1537029 (hashF!6873 thiss!42308)))))

(declare-fun allKeysSameHash!233 (List!48472 (_ BitVec 64) Hashable!4655) Bool)

(assert (=> b!4318225 (allKeysSameHash!233 lt!1537029 lt!1537026 (hashF!6873 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!209 (List!48472 K!9594 (_ BitVec 64) Hashable!4655) Unit!67618)

(assert (=> b!4318225 (= lt!1537027 (lemmaRemovePairForKeyPreservesHash!209 lt!1537029 key!2048 lt!1537026 (hashF!6873 thiss!42308)))))

(declare-fun removePairForKey!256 (List!48472 K!9594) List!48472)

(assert (=> b!4318225 (allKeysSameHash!233 (removePairForKey!256 lt!1537029 key!2048) lt!1537026 (hashF!6873 thiss!42308))))

(declare-fun mapIsEmpty!21126 () Bool)

(assert (=> mapIsEmpty!21126 mapRes!21126))

(declare-fun b!4318226 () Bool)

(declare-fun e!2686428 () Bool)

(assert (=> b!4318226 (= e!2686432 e!2686428)))

(assert (=> b!4318227 (= e!2686427 (and e!2686430 tp!1326532))))

(declare-fun b!4318228 () Bool)

(assert (=> b!4318228 (= e!2686436 Nil!48348)))

(declare-fun b!4318229 () Bool)

(assert (=> b!4318229 (= e!2686428 e!2686429)))

(assert (= (and start!415478 res!1769771) b!4318219))

(assert (= (and b!4318219 res!1769773) b!4318224))

(assert (= (and b!4318224 res!1769770) b!4318217))

(assert (= (and b!4318217 c!734195) b!4318216))

(assert (= (and b!4318217 (not c!734195)) b!4318228))

(assert (= (and b!4318217 res!1769772) b!4318218))

(assert (= (and b!4318218 c!734196) b!4318225))

(assert (= (and b!4318218 (not c!734196)) b!4318222))

(assert (= (and b!4318218 res!1769774) b!4318220))

(assert (= (and b!4318215 condMapEmpty!21126) mapIsEmpty!21126))

(assert (= (and b!4318215 (not condMapEmpty!21126)) mapNonEmpty!21126))

(assert (= b!4318223 b!4318215))

(assert (= b!4318229 b!4318223))

(assert (= b!4318226 b!4318229))

(assert (= (and b!4318221 ((_ is LongMap!4739) (v!42676 (underlying!9708 thiss!42308)))) b!4318226))

(assert (= b!4318227 b!4318221))

(assert (= (and start!415478 ((_ is HashMap!4645) thiss!42308)) b!4318227))

(declare-fun m!4911815 () Bool)

(assert (=> b!4318217 m!4911815))

(declare-fun m!4911817 () Bool)

(assert (=> b!4318217 m!4911817))

(declare-fun m!4911819 () Bool)

(assert (=> b!4318217 m!4911819))

(declare-fun m!4911821 () Bool)

(assert (=> b!4318220 m!4911821))

(declare-fun m!4911823 () Bool)

(assert (=> b!4318218 m!4911823))

(declare-fun m!4911825 () Bool)

(assert (=> b!4318218 m!4911825))

(declare-fun m!4911827 () Bool)

(assert (=> b!4318216 m!4911827))

(declare-fun m!4911829 () Bool)

(assert (=> b!4318224 m!4911829))

(declare-fun m!4911831 () Bool)

(assert (=> b!4318224 m!4911831))

(declare-fun m!4911833 () Bool)

(assert (=> b!4318224 m!4911833))

(declare-fun m!4911835 () Bool)

(assert (=> mapNonEmpty!21126 m!4911835))

(declare-fun m!4911837 () Bool)

(assert (=> b!4318225 m!4911837))

(declare-fun m!4911839 () Bool)

(assert (=> b!4318225 m!4911839))

(declare-fun m!4911841 () Bool)

(assert (=> b!4318225 m!4911841))

(declare-fun m!4911843 () Bool)

(assert (=> b!4318225 m!4911843))

(assert (=> b!4318225 m!4911841))

(declare-fun m!4911845 () Bool)

(assert (=> b!4318225 m!4911845))

(declare-fun m!4911847 () Bool)

(assert (=> b!4318223 m!4911847))

(declare-fun m!4911849 () Bool)

(assert (=> b!4318223 m!4911849))

(declare-fun m!4911851 () Bool)

(assert (=> b!4318219 m!4911851))

(check-sat (not b!4318220) b_and!340423 (not b_next!129621) (not b!4318218) (not b!4318215) tp_is_empty!24053 (not mapNonEmpty!21126) tp_is_empty!24055 b_and!340425 (not b!4318223) (not b!4318219) (not b_next!129619) (not b!4318216) (not b!4318225) (not b!4318224) (not b!4318217))
(check-sat b_and!340423 b_and!340425 (not b_next!129621) (not b_next!129619))
(get-model)

(declare-fun bs!606006 () Bool)

(declare-fun d!1269636 () Bool)

(assert (= bs!606006 (and d!1269636 b!4318218)))

(declare-fun lambda!133596 () Int)

(assert (=> bs!606006 (not (= lambda!133596 lambda!133593))))

(assert (=> d!1269636 true))

(assert (=> d!1269636 (= (allKeysSameHashInMap!379 lt!1537024 (hashF!6873 thiss!42308)) (forall!8795 (toList!2530 lt!1537024) lambda!133596))))

(declare-fun bs!606007 () Bool)

(assert (= bs!606007 d!1269636))

(declare-fun m!4911853 () Bool)

(assert (=> bs!606007 m!4911853))

(assert (=> b!4318220 d!1269636))

(declare-fun bs!606008 () Bool)

(declare-fun b!4318261 () Bool)

(assert (= bs!606008 (and b!4318261 b!4318218)))

(declare-fun lambda!133599 () Int)

(assert (=> bs!606008 (= lambda!133599 lambda!133593)))

(declare-fun bs!606009 () Bool)

(assert (= bs!606009 (and b!4318261 d!1269636)))

(assert (=> bs!606009 (not (= lambda!133599 lambda!133596))))

(declare-fun b!4318254 () Bool)

(declare-fun e!2686453 () Unit!67618)

(declare-fun Unit!67621 () Unit!67618)

(assert (=> b!4318254 (= e!2686453 Unit!67621)))

(declare-fun b!4318255 () Bool)

(declare-fun e!2686452 () Unit!67618)

(declare-fun lt!1537072 () Unit!67618)

(assert (=> b!4318255 (= e!2686452 lt!1537072)))

(declare-fun lt!1537081 () ListLongMap!1145)

(declare-fun call!298975 () ListLongMap!1145)

(assert (=> b!4318255 (= lt!1537081 call!298975)))

(declare-fun lemmaInGenericMapThenInLongMap!157 (ListLongMap!1145 K!9594 Hashable!4655) Unit!67618)

(assert (=> b!4318255 (= lt!1537072 (lemmaInGenericMapThenInLongMap!157 lt!1537081 key!2048 (hashF!6873 thiss!42308)))))

(declare-fun res!1769781 () Bool)

(declare-fun call!298980 () Bool)

(assert (=> b!4318255 (= res!1769781 call!298980)))

(declare-fun e!2686457 () Bool)

(assert (=> b!4318255 (=> (not res!1769781) (not e!2686457))))

(assert (=> b!4318255 e!2686457))

(declare-fun bm!298970 () Bool)

(assert (=> bm!298970 (= call!298975 (map!10370 (v!42676 (underlying!9708 thiss!42308))))))

(declare-fun bm!298971 () Bool)

(declare-fun call!298977 () Bool)

(declare-datatypes ((Option!10288 0))(
  ( (None!10287) (Some!10287 (v!42681 tuple2!47092)) )
))
(declare-fun call!298978 () Option!10288)

(declare-fun isDefined!7589 (Option!10288) Bool)

(assert (=> bm!298971 (= call!298977 (isDefined!7589 call!298978))))

(declare-fun b!4318256 () Bool)

(assert (=> b!4318256 false))

(declare-fun lt!1537086 () Unit!67618)

(declare-fun lt!1537071 () Unit!67618)

(assert (=> b!4318256 (= lt!1537086 lt!1537071)))

(declare-fun lt!1537089 () List!48473)

(declare-fun lt!1537080 () (_ BitVec 64))

(declare-fun lt!1537078 () List!48472)

(declare-fun contains!10380 (List!48473 tuple2!47096) Bool)

(assert (=> b!4318256 (contains!10380 lt!1537089 (tuple2!47097 lt!1537080 lt!1537078))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!169 (List!48473 (_ BitVec 64) List!48472) Unit!67618)

(assert (=> b!4318256 (= lt!1537071 (lemmaGetValueByKeyImpliesContainsTuple!169 lt!1537089 lt!1537080 lt!1537078))))

(assert (=> b!4318256 (= lt!1537078 (apply!11118 (v!42676 (underlying!9708 thiss!42308)) lt!1537080))))

(assert (=> b!4318256 (= lt!1537089 (toList!2530 (map!10370 (v!42676 (underlying!9708 thiss!42308)))))))

(declare-fun lt!1537075 () Unit!67618)

(declare-fun lt!1537070 () Unit!67618)

(assert (=> b!4318256 (= lt!1537075 lt!1537070)))

(declare-fun lt!1537082 () List!48473)

(declare-datatypes ((Option!10289 0))(
  ( (None!10288) (Some!10288 (v!42682 List!48472)) )
))
(declare-fun isDefined!7590 (Option!10289) Bool)

(declare-fun getValueByKey!290 (List!48473 (_ BitVec 64)) Option!10289)

(assert (=> b!4318256 (isDefined!7590 (getValueByKey!290 lt!1537082 lt!1537080))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!209 (List!48473 (_ BitVec 64)) Unit!67618)

(assert (=> b!4318256 (= lt!1537070 (lemmaContainsKeyImpliesGetValueByKeyDefined!209 lt!1537082 lt!1537080))))

(assert (=> b!4318256 (= lt!1537082 (toList!2530 (map!10370 (v!42676 (underlying!9708 thiss!42308)))))))

(declare-fun lt!1537077 () Unit!67618)

(declare-fun lt!1537074 () Unit!67618)

(assert (=> b!4318256 (= lt!1537077 lt!1537074)))

(declare-fun lt!1537079 () List!48473)

(declare-fun containsKey!388 (List!48473 (_ BitVec 64)) Bool)

(assert (=> b!4318256 (containsKey!388 lt!1537079 lt!1537080)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!158 (List!48473 (_ BitVec 64)) Unit!67618)

(assert (=> b!4318256 (= lt!1537074 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!158 lt!1537079 lt!1537080))))

(assert (=> b!4318256 (= lt!1537079 (toList!2530 (map!10370 (v!42676 (underlying!9708 thiss!42308)))))))

(declare-fun e!2686458 () Unit!67618)

(declare-fun Unit!67622 () Unit!67618)

(assert (=> b!4318256 (= e!2686458 Unit!67622)))

(declare-fun bm!298972 () Bool)

(declare-fun call!298976 () (_ BitVec 64))

(assert (=> bm!298972 (= call!298976 (hash!1143 (hashF!6873 thiss!42308) key!2048))))

(declare-fun c!734205 () Bool)

(declare-fun bm!298973 () Bool)

(declare-fun contains!10381 (ListLongMap!1145 (_ BitVec 64)) Bool)

(assert (=> bm!298973 (= call!298980 (contains!10381 (ite c!734205 lt!1537081 call!298975) call!298976))))

(declare-fun bm!298974 () Bool)

(declare-fun call!298979 () List!48472)

(declare-fun getPair!157 (List!48472 K!9594) Option!10288)

(assert (=> bm!298974 (= call!298978 (getPair!157 call!298979 key!2048))))

(declare-fun e!2686455 () Bool)

(declare-fun b!4318257 () Bool)

(assert (=> b!4318257 (= e!2686455 (isDefined!7589 (getPair!157 (apply!11118 (v!42676 (underlying!9708 thiss!42308)) lt!1537080) key!2048)))))

(declare-fun b!4318258 () Bool)

(assert (=> b!4318258 (= e!2686457 call!298977)))

(declare-fun b!4318259 () Bool)

(assert (=> b!4318259 (= e!2686452 e!2686453)))

(declare-fun res!1769782 () Bool)

(assert (=> b!4318259 (= res!1769782 call!298980)))

(declare-fun e!2686456 () Bool)

(assert (=> b!4318259 (=> (not res!1769782) (not e!2686456))))

(declare-fun c!734207 () Bool)

(assert (=> b!4318259 (= c!734207 e!2686456)))

(declare-fun d!1269638 () Bool)

(declare-fun lt!1537076 () Bool)

(declare-fun contains!10382 (ListMap!1809 K!9594) Bool)

(assert (=> d!1269638 (= lt!1537076 (contains!10382 (map!10371 thiss!42308) key!2048))))

(assert (=> d!1269638 (= lt!1537076 e!2686455)))

(declare-fun res!1769783 () Bool)

(assert (=> d!1269638 (=> (not res!1769783) (not e!2686455))))

(assert (=> d!1269638 (= res!1769783 (contains!10378 (v!42676 (underlying!9708 thiss!42308)) lt!1537080))))

(declare-fun lt!1537073 () Unit!67618)

(assert (=> d!1269638 (= lt!1537073 e!2686452)))

(declare-fun extractMap!363 (List!48473) ListMap!1809)

(assert (=> d!1269638 (= c!734205 (contains!10382 (extractMap!363 (toList!2530 (map!10370 (v!42676 (underlying!9708 thiss!42308))))) key!2048))))

(declare-fun lt!1537085 () Unit!67618)

(declare-fun e!2686454 () Unit!67618)

(assert (=> d!1269638 (= lt!1537085 e!2686454)))

(declare-fun c!734206 () Bool)

(assert (=> d!1269638 (= c!734206 (contains!10378 (v!42676 (underlying!9708 thiss!42308)) lt!1537080))))

(assert (=> d!1269638 (= lt!1537080 (hash!1143 (hashF!6873 thiss!42308) key!2048))))

(assert (=> d!1269638 (valid!3746 thiss!42308)))

(assert (=> d!1269638 (= (contains!10379 thiss!42308 key!2048) lt!1537076)))

(declare-fun bm!298975 () Bool)

(declare-fun apply!11119 (ListLongMap!1145 (_ BitVec 64)) List!48472)

(assert (=> bm!298975 (= call!298979 (apply!11119 (ite c!734205 lt!1537081 call!298975) call!298976))))

(declare-fun b!4318260 () Bool)

(assert (=> b!4318260 false))

(declare-fun lt!1537087 () Unit!67618)

(declare-fun lt!1537083 () Unit!67618)

(assert (=> b!4318260 (= lt!1537087 lt!1537083)))

(declare-fun lt!1537088 () ListLongMap!1145)

(assert (=> b!4318260 (contains!10382 (extractMap!363 (toList!2530 lt!1537088)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!157 (ListLongMap!1145 K!9594 Hashable!4655) Unit!67618)

(assert (=> b!4318260 (= lt!1537083 (lemmaInLongMapThenInGenericMap!157 lt!1537088 key!2048 (hashF!6873 thiss!42308)))))

(assert (=> b!4318260 (= lt!1537088 call!298975)))

(declare-fun Unit!67623 () Unit!67618)

(assert (=> b!4318260 (= e!2686453 Unit!67623)))

(declare-fun forallContained!1525 (List!48473 Int tuple2!47096) Unit!67618)

(assert (=> b!4318261 (= e!2686454 (forallContained!1525 (toList!2530 (map!10370 (v!42676 (underlying!9708 thiss!42308)))) lambda!133599 (tuple2!47097 lt!1537080 (apply!11118 (v!42676 (underlying!9708 thiss!42308)) lt!1537080))))))

(declare-fun c!734208 () Bool)

(assert (=> b!4318261 (= c!734208 (not (contains!10380 (toList!2530 (map!10370 (v!42676 (underlying!9708 thiss!42308)))) (tuple2!47097 lt!1537080 (apply!11118 (v!42676 (underlying!9708 thiss!42308)) lt!1537080)))))))

(declare-fun lt!1537084 () Unit!67618)

(assert (=> b!4318261 (= lt!1537084 e!2686458)))

(declare-fun b!4318262 () Bool)

(declare-fun Unit!67624 () Unit!67618)

(assert (=> b!4318262 (= e!2686458 Unit!67624)))

(declare-fun b!4318263 () Bool)

(declare-fun Unit!67625 () Unit!67618)

(assert (=> b!4318263 (= e!2686454 Unit!67625)))

(declare-fun b!4318264 () Bool)

(assert (=> b!4318264 (= e!2686456 call!298977)))

(assert (= (and d!1269638 c!734206) b!4318261))

(assert (= (and d!1269638 (not c!734206)) b!4318263))

(assert (= (and b!4318261 c!734208) b!4318256))

(assert (= (and b!4318261 (not c!734208)) b!4318262))

(assert (= (and d!1269638 c!734205) b!4318255))

(assert (= (and d!1269638 (not c!734205)) b!4318259))

(assert (= (and b!4318255 res!1769781) b!4318258))

(assert (= (and b!4318259 res!1769782) b!4318264))

(assert (= (and b!4318259 c!734207) b!4318260))

(assert (= (and b!4318259 (not c!734207)) b!4318254))

(assert (= (or b!4318255 b!4318259 b!4318264 b!4318260) bm!298970))

(assert (= (or b!4318255 b!4318258 b!4318259 b!4318264) bm!298972))

(assert (= (or b!4318258 b!4318264) bm!298975))

(assert (= (or b!4318255 b!4318259) bm!298973))

(assert (= (or b!4318258 b!4318264) bm!298974))

(assert (= (or b!4318258 b!4318264) bm!298971))

(assert (= (and d!1269638 res!1769783) b!4318257))

(assert (=> bm!298972 m!4911819))

(declare-fun m!4911855 () Bool)

(assert (=> bm!298974 m!4911855))

(declare-fun m!4911857 () Bool)

(assert (=> b!4318255 m!4911857))

(declare-fun m!4911859 () Bool)

(assert (=> b!4318260 m!4911859))

(assert (=> b!4318260 m!4911859))

(declare-fun m!4911861 () Bool)

(assert (=> b!4318260 m!4911861))

(declare-fun m!4911863 () Bool)

(assert (=> b!4318260 m!4911863))

(declare-fun m!4911865 () Bool)

(assert (=> b!4318257 m!4911865))

(assert (=> b!4318257 m!4911865))

(declare-fun m!4911867 () Bool)

(assert (=> b!4318257 m!4911867))

(assert (=> b!4318257 m!4911867))

(declare-fun m!4911869 () Bool)

(assert (=> b!4318257 m!4911869))

(declare-fun m!4911871 () Bool)

(assert (=> bm!298975 m!4911871))

(assert (=> d!1269638 m!4911833))

(assert (=> d!1269638 m!4911851))

(declare-fun m!4911873 () Bool)

(assert (=> d!1269638 m!4911873))

(assert (=> d!1269638 m!4911831))

(assert (=> d!1269638 m!4911819))

(declare-fun m!4911875 () Bool)

(assert (=> d!1269638 m!4911875))

(assert (=> d!1269638 m!4911875))

(declare-fun m!4911877 () Bool)

(assert (=> d!1269638 m!4911877))

(assert (=> d!1269638 m!4911833))

(declare-fun m!4911879 () Bool)

(assert (=> d!1269638 m!4911879))

(declare-fun m!4911881 () Bool)

(assert (=> bm!298971 m!4911881))

(declare-fun m!4911883 () Bool)

(assert (=> b!4318256 m!4911883))

(declare-fun m!4911885 () Bool)

(assert (=> b!4318256 m!4911885))

(declare-fun m!4911887 () Bool)

(assert (=> b!4318256 m!4911887))

(assert (=> b!4318256 m!4911885))

(declare-fun m!4911889 () Bool)

(assert (=> b!4318256 m!4911889))

(declare-fun m!4911891 () Bool)

(assert (=> b!4318256 m!4911891))

(declare-fun m!4911893 () Bool)

(assert (=> b!4318256 m!4911893))

(assert (=> b!4318256 m!4911831))

(declare-fun m!4911895 () Bool)

(assert (=> b!4318256 m!4911895))

(assert (=> b!4318256 m!4911865))

(assert (=> b!4318261 m!4911831))

(assert (=> b!4318261 m!4911865))

(declare-fun m!4911897 () Bool)

(assert (=> b!4318261 m!4911897))

(declare-fun m!4911899 () Bool)

(assert (=> b!4318261 m!4911899))

(declare-fun m!4911901 () Bool)

(assert (=> bm!298973 m!4911901))

(assert (=> bm!298970 m!4911831))

(assert (=> b!4318224 d!1269638))

(declare-fun d!1269640 () Bool)

(declare-fun map!10372 (LongMapFixedSize!9478) ListLongMap!1145)

(assert (=> d!1269640 (= (map!10370 (v!42676 (underlying!9708 thiss!42308))) (map!10372 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308))))))))

(declare-fun bs!606010 () Bool)

(assert (= bs!606010 d!1269640))

(declare-fun m!4911903 () Bool)

(assert (=> bs!606010 m!4911903))

(assert (=> b!4318224 d!1269640))

(declare-fun d!1269642 () Bool)

(declare-fun lt!1537092 () ListMap!1809)

(declare-fun invariantList!596 (List!48472) Bool)

(assert (=> d!1269642 (invariantList!596 (toList!2531 lt!1537092))))

(assert (=> d!1269642 (= lt!1537092 (extractMap!363 (toList!2530 (map!10370 (v!42676 (underlying!9708 thiss!42308))))))))

(assert (=> d!1269642 (valid!3746 thiss!42308)))

(assert (=> d!1269642 (= (map!10371 thiss!42308) lt!1537092)))

(declare-fun bs!606011 () Bool)

(assert (= bs!606011 d!1269642))

(declare-fun m!4911905 () Bool)

(assert (=> bs!606011 m!4911905))

(assert (=> bs!606011 m!4911831))

(assert (=> bs!606011 m!4911875))

(assert (=> bs!606011 m!4911851))

(assert (=> b!4318224 d!1269642))

(declare-fun d!1269644 () Bool)

(assert (=> d!1269644 true))

(assert (=> d!1269644 true))

(declare-fun lambda!133602 () Int)

(declare-fun forall!8796 (List!48472 Int) Bool)

(assert (=> d!1269644 (= (allKeysSameHash!233 (removePairForKey!256 lt!1537029 key!2048) lt!1537026 (hashF!6873 thiss!42308)) (forall!8796 (removePairForKey!256 lt!1537029 key!2048) lambda!133602))))

(declare-fun bs!606012 () Bool)

(assert (= bs!606012 d!1269644))

(assert (=> bs!606012 m!4911841))

(declare-fun m!4911907 () Bool)

(assert (=> bs!606012 m!4911907))

(assert (=> b!4318225 d!1269644))

(declare-fun bs!606013 () Bool)

(declare-fun d!1269646 () Bool)

(assert (= bs!606013 (and d!1269646 d!1269644)))

(declare-fun lambda!133603 () Int)

(assert (=> bs!606013 (= lambda!133603 lambda!133602)))

(assert (=> d!1269646 true))

(assert (=> d!1269646 true))

(assert (=> d!1269646 (= (allKeysSameHash!233 lt!1537029 lt!1537026 (hashF!6873 thiss!42308)) (forall!8796 lt!1537029 lambda!133603))))

(declare-fun bs!606014 () Bool)

(assert (= bs!606014 d!1269646))

(declare-fun m!4911909 () Bool)

(assert (=> bs!606014 m!4911909))

(assert (=> b!4318225 d!1269646))

(declare-fun bs!606015 () Bool)

(declare-fun d!1269648 () Bool)

(assert (= bs!606015 (and d!1269648 b!4318218)))

(declare-fun lambda!133606 () Int)

(assert (=> bs!606015 (not (= lambda!133606 lambda!133593))))

(declare-fun bs!606016 () Bool)

(assert (= bs!606016 (and d!1269648 d!1269636)))

(assert (=> bs!606016 (= lambda!133606 lambda!133596)))

(declare-fun bs!606017 () Bool)

(assert (= bs!606017 (and d!1269648 b!4318261)))

(assert (=> bs!606017 (not (= lambda!133606 lambda!133599))))

(assert (=> d!1269648 true))

(assert (=> d!1269648 (allKeysSameHash!233 lt!1537029 lt!1537026 (hashF!6873 thiss!42308))))

(declare-fun lt!1537095 () Unit!67618)

(declare-fun choose!26354 (List!48473 (_ BitVec 64) List!48472 Hashable!4655) Unit!67618)

(assert (=> d!1269648 (= lt!1537095 (choose!26354 (toList!2530 lt!1537024) lt!1537026 lt!1537029 (hashF!6873 thiss!42308)))))

(assert (=> d!1269648 (forall!8795 (toList!2530 lt!1537024) lambda!133606)))

(assert (=> d!1269648 (= (lemmaInLongMapAllKeySameHashThenForTuple!218 (toList!2530 lt!1537024) lt!1537026 lt!1537029 (hashF!6873 thiss!42308)) lt!1537095)))

(declare-fun bs!606018 () Bool)

(assert (= bs!606018 d!1269648))

(assert (=> bs!606018 m!4911839))

(declare-fun m!4911911 () Bool)

(assert (=> bs!606018 m!4911911))

(declare-fun m!4911913 () Bool)

(assert (=> bs!606018 m!4911913))

(assert (=> b!4318225 d!1269648))

(declare-fun b!4318277 () Bool)

(declare-fun e!2686464 () List!48472)

(assert (=> b!4318277 (= e!2686464 (t!355335 lt!1537029))))

(declare-fun b!4318278 () Bool)

(declare-fun e!2686463 () List!48472)

(assert (=> b!4318278 (= e!2686464 e!2686463)))

(declare-fun c!734214 () Bool)

(assert (=> b!4318278 (= c!734214 ((_ is Cons!48348) lt!1537029))))

(declare-fun b!4318280 () Bool)

(assert (=> b!4318280 (= e!2686463 Nil!48348)))

(declare-fun b!4318279 () Bool)

(assert (=> b!4318279 (= e!2686463 (Cons!48348 (h!53803 lt!1537029) (removePairForKey!256 (t!355335 lt!1537029) key!2048)))))

(declare-fun d!1269650 () Bool)

(declare-fun lt!1537098 () List!48472)

(declare-fun containsKey!389 (List!48472 K!9594) Bool)

(assert (=> d!1269650 (not (containsKey!389 lt!1537098 key!2048))))

(assert (=> d!1269650 (= lt!1537098 e!2686464)))

(declare-fun c!734213 () Bool)

(assert (=> d!1269650 (= c!734213 (and ((_ is Cons!48348) lt!1537029) (= (_1!26830 (h!53803 lt!1537029)) key!2048)))))

(declare-fun noDuplicateKeys!257 (List!48472) Bool)

(assert (=> d!1269650 (noDuplicateKeys!257 lt!1537029)))

(assert (=> d!1269650 (= (removePairForKey!256 lt!1537029 key!2048) lt!1537098)))

(assert (= (and d!1269650 c!734213) b!4318277))

(assert (= (and d!1269650 (not c!734213)) b!4318278))

(assert (= (and b!4318278 c!734214) b!4318279))

(assert (= (and b!4318278 (not c!734214)) b!4318280))

(declare-fun m!4911915 () Bool)

(assert (=> b!4318279 m!4911915))

(declare-fun m!4911917 () Bool)

(assert (=> d!1269650 m!4911917))

(declare-fun m!4911919 () Bool)

(assert (=> d!1269650 m!4911919))

(assert (=> b!4318225 d!1269650))

(declare-fun d!1269652 () Bool)

(assert (=> d!1269652 (allKeysSameHash!233 (removePairForKey!256 lt!1537029 key!2048) lt!1537026 (hashF!6873 thiss!42308))))

(declare-fun lt!1537101 () Unit!67618)

(declare-fun choose!26355 (List!48472 K!9594 (_ BitVec 64) Hashable!4655) Unit!67618)

(assert (=> d!1269652 (= lt!1537101 (choose!26355 lt!1537029 key!2048 lt!1537026 (hashF!6873 thiss!42308)))))

(assert (=> d!1269652 (noDuplicateKeys!257 lt!1537029)))

(assert (=> d!1269652 (= (lemmaRemovePairForKeyPreservesHash!209 lt!1537029 key!2048 lt!1537026 (hashF!6873 thiss!42308)) lt!1537101)))

(declare-fun bs!606019 () Bool)

(assert (= bs!606019 d!1269652))

(assert (=> bs!606019 m!4911841))

(assert (=> bs!606019 m!4911841))

(assert (=> bs!606019 m!4911843))

(declare-fun m!4911921 () Bool)

(assert (=> bs!606019 m!4911921))

(assert (=> bs!606019 m!4911919))

(assert (=> b!4318225 d!1269652))

(declare-fun d!1269654 () Bool)

(declare-fun e!2686467 () Bool)

(assert (=> d!1269654 e!2686467))

(declare-fun c!734217 () Bool)

(assert (=> d!1269654 (= c!734217 (contains!10378 (v!42676 (underlying!9708 thiss!42308)) lt!1537026))))

(declare-fun lt!1537104 () List!48472)

(declare-fun apply!11120 (LongMapFixedSize!9478 (_ BitVec 64)) List!48472)

(assert (=> d!1269654 (= lt!1537104 (apply!11120 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))) lt!1537026))))

(declare-fun valid!3747 (MutLongMap!4739) Bool)

(assert (=> d!1269654 (valid!3747 (v!42676 (underlying!9708 thiss!42308)))))

(assert (=> d!1269654 (= (apply!11118 (v!42676 (underlying!9708 thiss!42308)) lt!1537026) lt!1537104)))

(declare-fun b!4318285 () Bool)

(declare-fun get!15661 (Option!10289) List!48472)

(assert (=> b!4318285 (= e!2686467 (= lt!1537104 (get!15661 (getValueByKey!290 (toList!2530 (map!10370 (v!42676 (underlying!9708 thiss!42308)))) lt!1537026))))))

(declare-fun b!4318286 () Bool)

(declare-fun dynLambda!20494 (Int (_ BitVec 64)) List!48472)

(assert (=> b!4318286 (= e!2686467 (= lt!1537104 (dynLambda!20494 (defaultEntry!5124 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308))))) lt!1537026)))))

(assert (=> b!4318286 ((_ is LongMap!4739) (v!42676 (underlying!9708 thiss!42308)))))

(assert (= (and d!1269654 c!734217) b!4318285))

(assert (= (and d!1269654 (not c!734217)) b!4318286))

(declare-fun b_lambda!127003 () Bool)

(assert (=> (not b_lambda!127003) (not b!4318286)))

(declare-fun t!355338 () Bool)

(declare-fun tb!257349 () Bool)

(assert (=> (and b!4318223 (= (defaultEntry!5124 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308))))) (defaultEntry!5124 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))))) t!355338) tb!257349))

(assert (=> b!4318286 t!355338))

(declare-fun result!314842 () Bool)

(declare-fun b_and!340427 () Bool)

(assert (= b_and!340423 (and (=> t!355338 result!314842) b_and!340427)))

(assert (=> d!1269654 m!4911817))

(declare-fun m!4911923 () Bool)

(assert (=> d!1269654 m!4911923))

(declare-fun m!4911925 () Bool)

(assert (=> d!1269654 m!4911925))

(assert (=> b!4318285 m!4911831))

(declare-fun m!4911927 () Bool)

(assert (=> b!4318285 m!4911927))

(assert (=> b!4318285 m!4911927))

(declare-fun m!4911929 () Bool)

(assert (=> b!4318285 m!4911929))

(declare-fun m!4911931 () Bool)

(assert (=> b!4318286 m!4911931))

(assert (=> b!4318216 d!1269654))

(declare-fun b!4318305 () Bool)

(declare-fun e!2686480 () tuple2!47094)

(declare-fun lt!1537115 () tuple2!47094)

(assert (=> b!4318305 (= e!2686480 (tuple2!47095 false (_2!26831 lt!1537115)))))

(declare-fun bm!298980 () Bool)

(declare-fun call!298986 () ListLongMap!1145)

(assert (=> bm!298980 (= call!298986 (map!10370 (v!42676 (underlying!9708 thiss!42308))))))

(declare-fun bm!298981 () Bool)

(declare-fun call!298985 () ListLongMap!1145)

(declare-fun lt!1537116 () tuple2!47094)

(assert (=> bm!298981 (= call!298985 (map!10370 (_2!26831 lt!1537116)))))

(declare-fun b!4318306 () Bool)

(declare-datatypes ((tuple2!47098 0))(
  ( (tuple2!47099 (_1!26833 Bool) (_2!26833 LongMapFixedSize!9478)) )
))
(declare-fun lt!1537114 () tuple2!47098)

(assert (=> b!4318306 (= e!2686480 (tuple2!47095 (_1!26833 lt!1537114) (LongMap!4739 (Cell!18766 (_2!26833 lt!1537114)))))))

(declare-fun update!514 (LongMapFixedSize!9478 (_ BitVec 64) List!48472) tuple2!47098)

(assert (=> b!4318306 (= lt!1537114 (update!514 (v!42675 (underlying!9707 (_2!26831 lt!1537115))) lt!1537026 (Cons!48348 (tuple2!47093 key!2048 v!9179) lt!1537029)))))

(declare-fun b!4318307 () Bool)

(declare-fun res!1769792 () Bool)

(declare-fun e!2686482 () Bool)

(assert (=> b!4318307 (=> (not res!1769792) (not e!2686482))))

(assert (=> b!4318307 (= res!1769792 (valid!3747 (_2!26831 lt!1537116)))))

(declare-fun d!1269656 () Bool)

(assert (=> d!1269656 e!2686482))

(declare-fun res!1769791 () Bool)

(assert (=> d!1269656 (=> (not res!1769791) (not e!2686482))))

(assert (=> d!1269656 (= res!1769791 ((_ is LongMap!4739) (_2!26831 lt!1537116)))))

(assert (=> d!1269656 (= lt!1537116 e!2686480)))

(declare-fun c!734224 () Bool)

(assert (=> d!1269656 (= c!734224 (_1!26831 lt!1537115))))

(declare-fun e!2686481 () tuple2!47094)

(assert (=> d!1269656 (= lt!1537115 e!2686481)))

(declare-fun c!734225 () Bool)

(declare-fun imbalanced!75 (MutLongMap!4739) Bool)

(assert (=> d!1269656 (= c!734225 (imbalanced!75 (v!42676 (underlying!9708 thiss!42308))))))

(assert (=> d!1269656 (valid!3747 (v!42676 (underlying!9708 thiss!42308)))))

(assert (=> d!1269656 (= (update!513 (v!42676 (underlying!9708 thiss!42308)) lt!1537026 (Cons!48348 (tuple2!47093 key!2048 v!9179) lt!1537029)) lt!1537116)))

(declare-fun b!4318308 () Bool)

(assert (=> b!4318308 (= e!2686481 (tuple2!47095 true (v!42676 (underlying!9708 thiss!42308))))))

(declare-fun b!4318309 () Bool)

(declare-fun e!2686478 () Bool)

(declare-fun e!2686479 () Bool)

(assert (=> b!4318309 (= e!2686478 e!2686479)))

(declare-fun res!1769790 () Bool)

(assert (=> b!4318309 (= res!1769790 (contains!10381 call!298985 lt!1537026))))

(assert (=> b!4318309 (=> (not res!1769790) (not e!2686479))))

(declare-fun b!4318310 () Bool)

(assert (=> b!4318310 (= e!2686482 e!2686478)))

(declare-fun c!734226 () Bool)

(assert (=> b!4318310 (= c!734226 (_1!26831 lt!1537116))))

(declare-fun b!4318311 () Bool)

(assert (=> b!4318311 (= e!2686478 (= call!298985 call!298986))))

(declare-fun b!4318312 () Bool)

(declare-fun lt!1537113 () tuple2!47094)

(assert (=> b!4318312 (= e!2686481 (tuple2!47095 (_1!26831 lt!1537113) (_2!26831 lt!1537113)))))

(declare-fun repack!79 (MutLongMap!4739) tuple2!47094)

(assert (=> b!4318312 (= lt!1537113 (repack!79 (v!42676 (underlying!9708 thiss!42308))))))

(declare-fun b!4318313 () Bool)

(declare-fun +!320 (ListLongMap!1145 tuple2!47096) ListLongMap!1145)

(assert (=> b!4318313 (= e!2686479 (= call!298985 (+!320 call!298986 (tuple2!47097 lt!1537026 (Cons!48348 (tuple2!47093 key!2048 v!9179) lt!1537029)))))))

(assert (= (and d!1269656 c!734225) b!4318312))

(assert (= (and d!1269656 (not c!734225)) b!4318308))

(assert (= (and d!1269656 c!734224) b!4318306))

(assert (= (and d!1269656 (not c!734224)) b!4318305))

(assert (= (and d!1269656 res!1769791) b!4318307))

(assert (= (and b!4318307 res!1769792) b!4318310))

(assert (= (and b!4318310 c!734226) b!4318309))

(assert (= (and b!4318310 (not c!734226)) b!4318311))

(assert (= (and b!4318309 res!1769790) b!4318313))

(assert (= (or b!4318309 b!4318313 b!4318311) bm!298981))

(assert (= (or b!4318313 b!4318311) bm!298980))

(declare-fun m!4911933 () Bool)

(assert (=> b!4318309 m!4911933))

(declare-fun m!4911935 () Bool)

(assert (=> d!1269656 m!4911935))

(assert (=> d!1269656 m!4911925))

(declare-fun m!4911937 () Bool)

(assert (=> b!4318307 m!4911937))

(declare-fun m!4911939 () Bool)

(assert (=> bm!298981 m!4911939))

(declare-fun m!4911941 () Bool)

(assert (=> b!4318312 m!4911941))

(assert (=> bm!298980 m!4911831))

(declare-fun m!4911943 () Bool)

(assert (=> b!4318313 m!4911943))

(declare-fun m!4911945 () Bool)

(assert (=> b!4318306 m!4911945))

(assert (=> b!4318217 d!1269656))

(declare-fun d!1269658 () Bool)

(declare-fun lt!1537119 () Bool)

(assert (=> d!1269658 (= lt!1537119 (contains!10381 (map!10370 (v!42676 (underlying!9708 thiss!42308))) lt!1537026))))

(declare-fun contains!10383 (LongMapFixedSize!9478 (_ BitVec 64)) Bool)

(assert (=> d!1269658 (= lt!1537119 (contains!10383 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))) lt!1537026))))

(assert (=> d!1269658 (valid!3747 (v!42676 (underlying!9708 thiss!42308)))))

(assert (=> d!1269658 (= (contains!10378 (v!42676 (underlying!9708 thiss!42308)) lt!1537026) lt!1537119)))

(declare-fun bs!606020 () Bool)

(assert (= bs!606020 d!1269658))

(assert (=> bs!606020 m!4911831))

(assert (=> bs!606020 m!4911831))

(declare-fun m!4911947 () Bool)

(assert (=> bs!606020 m!4911947))

(declare-fun m!4911949 () Bool)

(assert (=> bs!606020 m!4911949))

(assert (=> bs!606020 m!4911925))

(assert (=> b!4318217 d!1269658))

(declare-fun d!1269660 () Bool)

(declare-fun hash!1146 (Hashable!4655 K!9594) (_ BitVec 64))

(assert (=> d!1269660 (= (hash!1143 (hashF!6873 thiss!42308) key!2048) (hash!1146 (hashF!6873 thiss!42308) key!2048))))

(declare-fun bs!606021 () Bool)

(assert (= bs!606021 d!1269660))

(declare-fun m!4911951 () Bool)

(assert (=> bs!606021 m!4911951))

(assert (=> b!4318217 d!1269660))

(declare-fun d!1269662 () Bool)

(declare-fun res!1769797 () Bool)

(declare-fun e!2686487 () Bool)

(assert (=> d!1269662 (=> res!1769797 e!2686487)))

(assert (=> d!1269662 (= res!1769797 ((_ is Nil!48349) (toList!2530 lt!1537024)))))

(assert (=> d!1269662 (= (forall!8795 (toList!2530 lt!1537024) lambda!133593) e!2686487)))

(declare-fun b!4318318 () Bool)

(declare-fun e!2686488 () Bool)

(assert (=> b!4318318 (= e!2686487 e!2686488)))

(declare-fun res!1769798 () Bool)

(assert (=> b!4318318 (=> (not res!1769798) (not e!2686488))))

(declare-fun dynLambda!20495 (Int tuple2!47096) Bool)

(assert (=> b!4318318 (= res!1769798 (dynLambda!20495 lambda!133593 (h!53804 (toList!2530 lt!1537024))))))

(declare-fun b!4318319 () Bool)

(assert (=> b!4318319 (= e!2686488 (forall!8795 (t!355336 (toList!2530 lt!1537024)) lambda!133593))))

(assert (= (and d!1269662 (not res!1769797)) b!4318318))

(assert (= (and b!4318318 res!1769798) b!4318319))

(declare-fun b_lambda!127005 () Bool)

(assert (=> (not b_lambda!127005) (not b!4318318)))

(declare-fun m!4911953 () Bool)

(assert (=> b!4318318 m!4911953))

(declare-fun m!4911955 () Bool)

(assert (=> b!4318319 m!4911955))

(assert (=> b!4318218 d!1269662))

(declare-fun d!1269664 () Bool)

(assert (=> d!1269664 (= (isEmpty!28103 lt!1537029) ((_ is Nil!48348) lt!1537029))))

(assert (=> b!4318218 d!1269664))

(declare-fun d!1269666 () Bool)

(assert (=> d!1269666 (= (array_inv!5515 (_keys!5039 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))))) (bvsge (size!35702 (_keys!5039 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4318223 d!1269666))

(declare-fun d!1269668 () Bool)

(assert (=> d!1269668 (= (array_inv!5516 (_values!5020 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))))) (bvsge (size!35703 (_values!5020 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4318223 d!1269668))

(declare-fun bs!606022 () Bool)

(declare-fun b!4318324 () Bool)

(assert (= bs!606022 (and b!4318324 b!4318218)))

(declare-fun lambda!133609 () Int)

(assert (=> bs!606022 (= lambda!133609 lambda!133593)))

(declare-fun bs!606023 () Bool)

(assert (= bs!606023 (and b!4318324 d!1269636)))

(assert (=> bs!606023 (not (= lambda!133609 lambda!133596))))

(declare-fun bs!606024 () Bool)

(assert (= bs!606024 (and b!4318324 b!4318261)))

(assert (=> bs!606024 (= lambda!133609 lambda!133599)))

(declare-fun bs!606025 () Bool)

(assert (= bs!606025 (and b!4318324 d!1269648)))

(assert (=> bs!606025 (not (= lambda!133609 lambda!133606))))

(declare-fun d!1269670 () Bool)

(declare-fun res!1769803 () Bool)

(declare-fun e!2686491 () Bool)

(assert (=> d!1269670 (=> (not res!1769803) (not e!2686491))))

(assert (=> d!1269670 (= res!1769803 (valid!3747 (v!42676 (underlying!9708 thiss!42308))))))

(assert (=> d!1269670 (= (valid!3746 thiss!42308) e!2686491)))

(declare-fun res!1769804 () Bool)

(assert (=> b!4318324 (=> (not res!1769804) (not e!2686491))))

(assert (=> b!4318324 (= res!1769804 (forall!8795 (toList!2530 (map!10370 (v!42676 (underlying!9708 thiss!42308)))) lambda!133609))))

(declare-fun b!4318325 () Bool)

(assert (=> b!4318325 (= e!2686491 (allKeysSameHashInMap!379 (map!10370 (v!42676 (underlying!9708 thiss!42308))) (hashF!6873 thiss!42308)))))

(assert (= (and d!1269670 res!1769803) b!4318324))

(assert (= (and b!4318324 res!1769804) b!4318325))

(assert (=> d!1269670 m!4911925))

(assert (=> b!4318324 m!4911831))

(declare-fun m!4911957 () Bool)

(assert (=> b!4318324 m!4911957))

(assert (=> b!4318325 m!4911831))

(assert (=> b!4318325 m!4911831))

(declare-fun m!4911959 () Bool)

(assert (=> b!4318325 m!4911959))

(assert (=> b!4318219 d!1269670))

(declare-fun tp!1326541 () Bool)

(declare-fun e!2686494 () Bool)

(declare-fun b!4318330 () Bool)

(assert (=> b!4318330 (= e!2686494 (and tp_is_empty!24053 tp_is_empty!24055 tp!1326541))))

(assert (=> b!4318215 (= tp!1326538 e!2686494)))

(assert (= (and b!4318215 ((_ is Cons!48348) mapDefault!21126)) b!4318330))

(declare-fun condMapEmpty!21129 () Bool)

(declare-fun mapDefault!21129 () List!48472)

(assert (=> mapNonEmpty!21126 (= condMapEmpty!21129 (= mapRest!21126 ((as const (Array (_ BitVec 32) List!48472)) mapDefault!21129)))))

(declare-fun e!2686499 () Bool)

(declare-fun mapRes!21129 () Bool)

(assert (=> mapNonEmpty!21126 (= tp!1326534 (and e!2686499 mapRes!21129))))

(declare-fun b!4318338 () Bool)

(declare-fun tp!1326549 () Bool)

(assert (=> b!4318338 (= e!2686499 (and tp_is_empty!24053 tp_is_empty!24055 tp!1326549))))

(declare-fun e!2686500 () Bool)

(declare-fun b!4318337 () Bool)

(declare-fun tp!1326548 () Bool)

(assert (=> b!4318337 (= e!2686500 (and tp_is_empty!24053 tp_is_empty!24055 tp!1326548))))

(declare-fun mapNonEmpty!21129 () Bool)

(declare-fun tp!1326550 () Bool)

(assert (=> mapNonEmpty!21129 (= mapRes!21129 (and tp!1326550 e!2686500))))

(declare-fun mapValue!21129 () List!48472)

(declare-fun mapKey!21129 () (_ BitVec 32))

(declare-fun mapRest!21129 () (Array (_ BitVec 32) List!48472))

(assert (=> mapNonEmpty!21129 (= mapRest!21126 (store mapRest!21129 mapKey!21129 mapValue!21129))))

(declare-fun mapIsEmpty!21129 () Bool)

(assert (=> mapIsEmpty!21129 mapRes!21129))

(assert (= (and mapNonEmpty!21126 condMapEmpty!21129) mapIsEmpty!21129))

(assert (= (and mapNonEmpty!21126 (not condMapEmpty!21129)) mapNonEmpty!21129))

(assert (= (and mapNonEmpty!21129 ((_ is Cons!48348) mapValue!21129)) b!4318337))

(assert (= (and mapNonEmpty!21126 ((_ is Cons!48348) mapDefault!21129)) b!4318338))

(declare-fun m!4911961 () Bool)

(assert (=> mapNonEmpty!21129 m!4911961))

(declare-fun tp!1326551 () Bool)

(declare-fun e!2686501 () Bool)

(declare-fun b!4318339 () Bool)

(assert (=> b!4318339 (= e!2686501 (and tp_is_empty!24053 tp_is_empty!24055 tp!1326551))))

(assert (=> mapNonEmpty!21126 (= tp!1326536 e!2686501)))

(assert (= (and mapNonEmpty!21126 ((_ is Cons!48348) mapValue!21126)) b!4318339))

(declare-fun tp!1326552 () Bool)

(declare-fun e!2686502 () Bool)

(declare-fun b!4318340 () Bool)

(assert (=> b!4318340 (= e!2686502 (and tp_is_empty!24053 tp_is_empty!24055 tp!1326552))))

(assert (=> b!4318223 (= tp!1326533 e!2686502)))

(assert (= (and b!4318223 ((_ is Cons!48348) (zeroValue!4998 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308))))))) b!4318340))

(declare-fun tp!1326553 () Bool)

(declare-fun b!4318341 () Bool)

(declare-fun e!2686503 () Bool)

(assert (=> b!4318341 (= e!2686503 (and tp_is_empty!24053 tp_is_empty!24055 tp!1326553))))

(assert (=> b!4318223 (= tp!1326537 e!2686503)))

(assert (= (and b!4318223 ((_ is Cons!48348) (minValue!4998 (v!42675 (underlying!9707 (v!42676 (underlying!9708 thiss!42308))))))) b!4318341))

(declare-fun b_lambda!127007 () Bool)

(assert (= b_lambda!127003 (or (and b!4318223 b_free!128915) b_lambda!127007)))

(declare-fun b_lambda!127009 () Bool)

(assert (= b_lambda!127005 (or b!4318218 b_lambda!127009)))

(declare-fun bs!606026 () Bool)

(declare-fun d!1269672 () Bool)

(assert (= bs!606026 (and d!1269672 b!4318218)))

(assert (=> bs!606026 (= (dynLambda!20495 lambda!133593 (h!53804 (toList!2530 lt!1537024))) (noDuplicateKeys!257 (_2!26832 (h!53804 (toList!2530 lt!1537024)))))))

(declare-fun m!4911963 () Bool)

(assert (=> bs!606026 m!4911963))

(assert (=> b!4318318 d!1269672))

(check-sat (not d!1269646) (not d!1269660) (not d!1269654) (not bm!298970) (not b!4318285) (not b!4318261) (not bm!298971) (not b_lambda!127009) (not d!1269658) (not b!4318324) (not bm!298974) (not bm!298980) b_and!340425 (not b!4318340) (not d!1269644) (not tb!257349) (not d!1269636) (not b!4318319) (not b_lambda!127007) (not bm!298973) (not b!4318312) (not bm!298975) (not bm!298981) (not d!1269650) (not b!4318313) (not d!1269670) (not b_next!129619) (not b!4318256) (not b!4318255) (not b!4318337) (not d!1269648) b_and!340427 (not d!1269640) (not b_next!129621) (not d!1269642) (not b!4318307) (not b!4318257) tp_is_empty!24053 (not d!1269656) (not b!4318325) (not b!4318341) (not b!4318260) tp_is_empty!24055 (not bm!298972) (not b!4318330) (not b!4318338) (not mapNonEmpty!21129) (not b!4318309) (not b!4318339) (not bs!606026) (not b!4318279) (not d!1269638) (not d!1269652) (not b!4318306))
(check-sat b_and!340427 b_and!340425 (not b_next!129621) (not b_next!129619))

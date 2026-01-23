; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415222 () Bool)

(assert start!415222)

(declare-fun b!4316450 () Bool)

(declare-fun b_free!128867 () Bool)

(declare-fun b_next!129571 () Bool)

(assert (=> b!4316450 (= b_free!128867 (not b_next!129571))))

(declare-fun tp!1326205 () Bool)

(declare-fun b_and!340351 () Bool)

(assert (=> b!4316450 (= tp!1326205 b_and!340351)))

(declare-fun b!4316444 () Bool)

(declare-fun b_free!128869 () Bool)

(declare-fun b_next!129573 () Bool)

(assert (=> b!4316444 (= b_free!128869 (not b_next!129573))))

(declare-fun tp!1326202 () Bool)

(declare-fun b_and!340353 () Bool)

(assert (=> b!4316444 (= tp!1326202 b_and!340353)))

(declare-fun b!4316440 () Bool)

(declare-fun e!2685221 () Bool)

(assert (=> b!4316440 e!2685221))

(declare-fun b!4316463 () Bool)

(declare-fun e!2685223 () Bool)

(assert (=> b!4316463 (= e!2685223 true)))

(declare-fun b!4316464 () Bool)

(declare-fun e!2685220 () Bool)

(declare-fun e!2685222 () Bool)

(assert (=> b!4316464 (= e!2685220 e!2685222)))

(declare-fun b!4316465 () Bool)

(assert (=> b!4316465 (= e!2685222 e!2685223)))

(declare-fun b!4316466 () Bool)

(declare-fun e!2685219 () Bool)

(assert (=> b!4316466 (= e!2685221 e!2685219)))

(declare-fun b!4316467 () Bool)

(declare-datatypes ((V!9766 0))(
  ( (V!9767 (val!15909 Int)) )
))
(declare-datatypes ((K!9564 0))(
  ( (K!9565 (val!15910 Int)) )
))
(declare-datatypes ((tuple2!47016 0))(
  ( (tuple2!47017 (_1!26790 K!9564) (_2!26790 V!9766)) )
))
(declare-datatypes ((List!48448 0))(
  ( (Nil!48324) (Cons!48324 (h!53776 tuple2!47016) (t!355299 List!48448)) )
))
(declare-datatypes ((array!17110 0))(
  ( (array!17111 (arr!7639 (Array (_ BitVec 32) (_ BitVec 64))) (size!35678 (_ BitVec 32))) )
))
(declare-datatypes ((array!17112 0))(
  ( (array!17113 (arr!7640 (Array (_ BitVec 32) List!48448)) (size!35679 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9454 0))(
  ( (LongMapFixedSize!9455 (defaultEntry!5112 Int) (mask!13319 (_ BitVec 32)) (extraKeys!4976 (_ BitVec 32)) (zeroValue!4986 List!48448) (minValue!4986 List!48448) (_size!9497 (_ BitVec 32)) (_keys!5027 array!17110) (_values!5008 array!17112) (_vacant!4788 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18717 0))(
  ( (Cell!18718 (v!42612 LongMapFixedSize!9454)) )
))
(declare-datatypes ((MutLongMap!4727 0))(
  ( (LongMap!4727 (underlying!9683 Cell!18717)) (MutLongMapExt!4726 (__x!30206 Int)) )
))
(declare-fun lt!1535852 () MutLongMap!4727)

(get-info :version)

(assert (=> b!4316467 (= e!2685219 (and e!2685220 ((_ is LongMap!4727) lt!1535852)))))

(declare-datatypes ((Hashable!4643 0))(
  ( (HashableExt!4642 (__x!30207 Int)) )
))
(declare-datatypes ((Cell!18719 0))(
  ( (Cell!18720 (v!42613 MutLongMap!4727)) )
))
(declare-datatypes ((MutableMap!4633 0))(
  ( (MutableMapExt!4632 (__x!30208 Int)) (HashMap!4633 (underlying!9684 Cell!18719) (hashF!6848 Hashable!4643) (_size!9498 (_ BitVec 32)) (defaultValue!4804 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4633)

(assert (=> b!4316467 (= lt!1535852 (v!42613 (underlying!9684 thiss!42308)))))

(assert (= b!4316465 b!4316463))

(assert (= b!4316464 b!4316465))

(assert (= (and b!4316467 ((_ is LongMap!4727) (v!42613 (underlying!9684 thiss!42308)))) b!4316464))

(assert (= b!4316466 b!4316467))

(assert (= (and b!4316440 ((_ is HashMap!4633) thiss!42308)) b!4316466))

(declare-fun lambda!133509 () Int)

(declare-fun order!25123 () Int)

(declare-fun order!25121 () Int)

(declare-fun dynLambda!20476 (Int Int) Int)

(declare-fun dynLambda!20477 (Int Int) Int)

(assert (=> b!4316463 (< (dynLambda!20476 order!25121 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (dynLambda!20477 order!25123 lambda!133509))))

(declare-fun order!25125 () Int)

(declare-fun dynLambda!20478 (Int Int) Int)

(assert (=> b!4316466 (< (dynLambda!20478 order!25125 (defaultValue!4804 thiss!42308)) (dynLambda!20477 order!25123 lambda!133509))))

(declare-fun b!4316438 () Bool)

(declare-fun e!2685202 () List!48448)

(declare-fun lt!1535846 () (_ BitVec 64))

(declare-fun apply!11100 (MutLongMap!4727 (_ BitVec 64)) List!48448)

(assert (=> b!4316438 (= e!2685202 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535846))))

(declare-fun res!1769183 () Bool)

(declare-fun e!2685205 () Bool)

(assert (=> start!415222 (=> (not res!1769183) (not e!2685205))))

(assert (=> start!415222 (= res!1769183 ((_ is HashMap!4633) thiss!42308))))

(assert (=> start!415222 e!2685205))

(declare-fun e!2685201 () Bool)

(assert (=> start!415222 e!2685201))

(declare-fun tp_is_empty!24005 () Bool)

(assert (=> start!415222 tp_is_empty!24005))

(declare-fun tp_is_empty!24007 () Bool)

(assert (=> start!415222 tp_is_empty!24007))

(declare-fun b!4316439 () Bool)

(declare-fun e!2685206 () Bool)

(declare-fun e!2685199 () Bool)

(assert (=> b!4316439 (= e!2685206 e!2685199)))

(declare-fun e!2685207 () Bool)

(declare-datatypes ((tuple2!47018 0))(
  ( (tuple2!47019 (_1!26791 (_ BitVec 64)) (_2!26791 List!48448)) )
))
(declare-datatypes ((List!48449 0))(
  ( (Nil!48325) (Cons!48325 (h!53777 tuple2!47018) (t!355300 List!48449)) )
))
(declare-datatypes ((ListLongMap!1125 0))(
  ( (ListLongMap!1126 (toList!2511 List!48449)) )
))
(declare-fun lt!1535845 () ListLongMap!1125)

(declare-fun forall!8786 (List!48449 Int) Bool)

(assert (=> b!4316440 (= e!2685207 (not (forall!8786 (toList!2511 lt!1535845) lambda!133509)))))

(declare-fun b!4316441 () Bool)

(declare-fun e!2685204 () Bool)

(declare-fun lt!1535848 () MutLongMap!4727)

(assert (=> b!4316441 (= e!2685204 (and e!2685206 ((_ is LongMap!4727) lt!1535848)))))

(assert (=> b!4316441 (= lt!1535848 (v!42613 (underlying!9684 thiss!42308)))))

(declare-fun b!4316442 () Bool)

(declare-fun res!1769186 () Bool)

(assert (=> b!4316442 (=> (not res!1769186) (not e!2685205))))

(declare-fun valid!3729 (MutableMap!4633) Bool)

(assert (=> b!4316442 (= res!1769186 (valid!3729 thiss!42308))))

(declare-fun b!4316443 () Bool)

(declare-fun e!2685203 () Bool)

(assert (=> b!4316443 (= e!2685205 e!2685203)))

(declare-fun res!1769182 () Bool)

(assert (=> b!4316443 (=> (not res!1769182) (not e!2685203))))

(declare-fun key!2048 () K!9564)

(declare-fun contains!10338 (MutableMap!4633 K!9564) Bool)

(assert (=> b!4316443 (= res!1769182 (not (contains!10338 thiss!42308 key!2048)))))

(declare-fun map!10342 (MutLongMap!4727) ListLongMap!1125)

(assert (=> b!4316443 (= lt!1535845 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))

(declare-datatypes ((ListMap!1791 0))(
  ( (ListMap!1792 (toList!2512 List!48448)) )
))
(declare-fun lt!1535849 () ListMap!1791)

(declare-fun map!10343 (MutableMap!4633) ListMap!1791)

(assert (=> b!4316443 (= lt!1535849 (map!10343 thiss!42308))))

(assert (=> b!4316444 (= e!2685201 (and e!2685204 tp!1326202))))

(declare-fun mapIsEmpty!21076 () Bool)

(declare-fun mapRes!21076 () Bool)

(assert (=> mapIsEmpty!21076 mapRes!21076))

(declare-fun b!4316445 () Bool)

(declare-fun e!2685208 () Bool)

(assert (=> b!4316445 (= e!2685199 e!2685208)))

(declare-fun b!4316446 () Bool)

(declare-fun res!1769184 () Bool)

(assert (=> b!4316446 (=> (not res!1769184) (not e!2685207))))

(declare-fun lt!1535847 () List!48448)

(declare-fun isEmpty!28090 (List!48448) Bool)

(assert (=> b!4316446 (= res!1769184 (not (isEmpty!28090 lt!1535847)))))

(declare-fun b!4316447 () Bool)

(declare-fun e!2685198 () Bool)

(declare-fun tp!1326204 () Bool)

(assert (=> b!4316447 (= e!2685198 (and tp!1326204 mapRes!21076))))

(declare-fun condMapEmpty!21076 () Bool)

(declare-fun mapDefault!21076 () List!48448)

(assert (=> b!4316447 (= condMapEmpty!21076 (= (arr!7640 (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48448)) mapDefault!21076)))))

(declare-fun b!4316448 () Bool)

(assert (=> b!4316448 (= e!2685202 Nil!48324)))

(declare-fun b!4316449 () Bool)

(assert (=> b!4316449 (= e!2685203 e!2685207)))

(declare-fun res!1769185 () Bool)

(assert (=> b!4316449 (=> (not res!1769185) (not e!2685207))))

(declare-fun v!9179 () V!9766)

(declare-datatypes ((tuple2!47020 0))(
  ( (tuple2!47021 (_1!26792 Bool) (_2!26792 MutLongMap!4727)) )
))
(declare-fun update!499 (MutLongMap!4727 (_ BitVec 64) List!48448) tuple2!47020)

(assert (=> b!4316449 (= res!1769185 (_1!26792 (update!499 (v!42613 (underlying!9684 thiss!42308)) lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847))))))

(assert (=> b!4316449 (= lt!1535847 e!2685202)))

(declare-fun c!733784 () Bool)

(declare-fun contains!10339 (MutLongMap!4727 (_ BitVec 64)) Bool)

(assert (=> b!4316449 (= c!733784 (contains!10339 (v!42613 (underlying!9684 thiss!42308)) lt!1535846))))

(declare-fun hash!1125 (Hashable!4643 K!9564) (_ BitVec 64))

(assert (=> b!4316449 (= lt!1535846 (hash!1125 (hashF!6848 thiss!42308) key!2048))))

(declare-fun mapNonEmpty!21076 () Bool)

(declare-fun tp!1326201 () Bool)

(declare-fun tp!1326203 () Bool)

(assert (=> mapNonEmpty!21076 (= mapRes!21076 (and tp!1326201 tp!1326203))))

(declare-fun mapValue!21076 () List!48448)

(declare-fun mapRest!21076 () (Array (_ BitVec 32) List!48448))

(declare-fun mapKey!21076 () (_ BitVec 32))

(assert (=> mapNonEmpty!21076 (= (arr!7640 (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (store mapRest!21076 mapKey!21076 mapValue!21076))))

(declare-fun tp!1326200 () Bool)

(declare-fun tp!1326206 () Bool)

(declare-fun array_inv!5495 (array!17110) Bool)

(declare-fun array_inv!5496 (array!17112) Bool)

(assert (=> b!4316450 (= e!2685208 (and tp!1326205 tp!1326206 tp!1326200 (array_inv!5495 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (array_inv!5496 (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) e!2685198))))

(assert (= (and start!415222 res!1769183) b!4316442))

(assert (= (and b!4316442 res!1769186) b!4316443))

(assert (= (and b!4316443 res!1769182) b!4316449))

(assert (= (and b!4316449 c!733784) b!4316438))

(assert (= (and b!4316449 (not c!733784)) b!4316448))

(assert (= (and b!4316449 res!1769185) b!4316446))

(assert (= (and b!4316446 res!1769184) b!4316440))

(assert (= (and b!4316447 condMapEmpty!21076) mapIsEmpty!21076))

(assert (= (and b!4316447 (not condMapEmpty!21076)) mapNonEmpty!21076))

(assert (= b!4316450 b!4316447))

(assert (= b!4316445 b!4316450))

(assert (= b!4316439 b!4316445))

(assert (= (and b!4316441 ((_ is LongMap!4727) (v!42613 (underlying!9684 thiss!42308)))) b!4316439))

(assert (= b!4316444 b!4316441))

(assert (= (and start!415222 ((_ is HashMap!4633) thiss!42308)) b!4316444))

(declare-fun m!4910291 () Bool)

(assert (=> b!4316443 m!4910291))

(declare-fun m!4910293 () Bool)

(assert (=> b!4316443 m!4910293))

(declare-fun m!4910295 () Bool)

(assert (=> b!4316443 m!4910295))

(declare-fun m!4910297 () Bool)

(assert (=> b!4316442 m!4910297))

(declare-fun m!4910299 () Bool)

(assert (=> mapNonEmpty!21076 m!4910299))

(declare-fun m!4910301 () Bool)

(assert (=> b!4316450 m!4910301))

(declare-fun m!4910303 () Bool)

(assert (=> b!4316450 m!4910303))

(declare-fun m!4910305 () Bool)

(assert (=> b!4316449 m!4910305))

(declare-fun m!4910307 () Bool)

(assert (=> b!4316449 m!4910307))

(declare-fun m!4910309 () Bool)

(assert (=> b!4316449 m!4910309))

(declare-fun m!4910311 () Bool)

(assert (=> b!4316446 m!4910311))

(declare-fun m!4910313 () Bool)

(assert (=> b!4316438 m!4910313))

(declare-fun m!4910315 () Bool)

(assert (=> b!4316440 m!4910315))

(check-sat (not b!4316440) tp_is_empty!24007 (not b_next!129571) (not mapNonEmpty!21076) (not b!4316447) tp_is_empty!24005 (not b!4316446) (not b!4316442) (not b!4316450) (not b!4316449) b_and!340353 (not b_next!129573) (not b!4316443) b_and!340351 (not b!4316438))
(check-sat b_and!340351 b_and!340353 (not b_next!129573) (not b_next!129571))
(get-model)

(declare-fun b!4316486 () Bool)

(declare-fun e!2685236 () tuple2!47020)

(declare-datatypes ((tuple2!47022 0))(
  ( (tuple2!47023 (_1!26793 Bool) (_2!26793 LongMapFixedSize!9454)) )
))
(declare-fun lt!1535863 () tuple2!47022)

(assert (=> b!4316486 (= e!2685236 (tuple2!47021 (_1!26793 lt!1535863) (LongMap!4727 (Cell!18718 (_2!26793 lt!1535863)))))))

(declare-fun lt!1535864 () tuple2!47020)

(declare-fun update!500 (LongMapFixedSize!9454 (_ BitVec 64) List!48448) tuple2!47022)

(assert (=> b!4316486 (= lt!1535863 (update!500 (v!42612 (underlying!9683 (_2!26792 lt!1535864))) lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))))

(declare-fun b!4316487 () Bool)

(declare-fun e!2685237 () tuple2!47020)

(assert (=> b!4316487 (= e!2685237 (tuple2!47021 true (v!42613 (underlying!9684 thiss!42308))))))

(declare-fun bm!298646 () Bool)

(declare-fun call!298651 () ListLongMap!1125)

(assert (=> bm!298646 (= call!298651 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))

(declare-fun d!1269316 () Bool)

(declare-fun e!2685238 () Bool)

(assert (=> d!1269316 e!2685238))

(declare-fun res!1769194 () Bool)

(assert (=> d!1269316 (=> (not res!1769194) (not e!2685238))))

(declare-fun lt!1535862 () tuple2!47020)

(assert (=> d!1269316 (= res!1769194 ((_ is LongMap!4727) (_2!26792 lt!1535862)))))

(assert (=> d!1269316 (= lt!1535862 e!2685236)))

(declare-fun c!733792 () Bool)

(assert (=> d!1269316 (= c!733792 (_1!26792 lt!1535864))))

(assert (=> d!1269316 (= lt!1535864 e!2685237)))

(declare-fun c!733791 () Bool)

(declare-fun imbalanced!71 (MutLongMap!4727) Bool)

(assert (=> d!1269316 (= c!733791 (imbalanced!71 (v!42613 (underlying!9684 thiss!42308))))))

(declare-fun valid!3730 (MutLongMap!4727) Bool)

(assert (=> d!1269316 (valid!3730 (v!42613 (underlying!9684 thiss!42308)))))

(assert (=> d!1269316 (= (update!499 (v!42613 (underlying!9684 thiss!42308)) lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)) lt!1535862)))

(declare-fun b!4316488 () Bool)

(declare-fun res!1769193 () Bool)

(assert (=> b!4316488 (=> (not res!1769193) (not e!2685238))))

(assert (=> b!4316488 (= res!1769193 (valid!3730 (_2!26792 lt!1535862)))))

(declare-fun e!2685234 () Bool)

(declare-fun call!298652 () ListLongMap!1125)

(declare-fun b!4316489 () Bool)

(declare-fun +!316 (ListLongMap!1125 tuple2!47018) ListLongMap!1125)

(assert (=> b!4316489 (= e!2685234 (= call!298652 (+!316 call!298651 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))))))

(declare-fun b!4316490 () Bool)

(declare-fun e!2685235 () Bool)

(assert (=> b!4316490 (= e!2685235 e!2685234)))

(declare-fun res!1769195 () Bool)

(declare-fun contains!10340 (ListLongMap!1125 (_ BitVec 64)) Bool)

(assert (=> b!4316490 (= res!1769195 (contains!10340 call!298652 lt!1535846))))

(assert (=> b!4316490 (=> (not res!1769195) (not e!2685234))))

(declare-fun bm!298647 () Bool)

(assert (=> bm!298647 (= call!298652 (map!10342 (_2!26792 lt!1535862)))))

(declare-fun b!4316491 () Bool)

(assert (=> b!4316491 (= e!2685236 (tuple2!47021 false (_2!26792 lt!1535864)))))

(declare-fun b!4316492 () Bool)

(declare-fun lt!1535861 () tuple2!47020)

(assert (=> b!4316492 (= e!2685237 (tuple2!47021 (_1!26792 lt!1535861) (_2!26792 lt!1535861)))))

(declare-fun repack!75 (MutLongMap!4727) tuple2!47020)

(assert (=> b!4316492 (= lt!1535861 (repack!75 (v!42613 (underlying!9684 thiss!42308))))))

(declare-fun b!4316493 () Bool)

(assert (=> b!4316493 (= e!2685235 (= call!298652 call!298651))))

(declare-fun b!4316494 () Bool)

(assert (=> b!4316494 (= e!2685238 e!2685235)))

(declare-fun c!733793 () Bool)

(assert (=> b!4316494 (= c!733793 (_1!26792 lt!1535862))))

(assert (= (and d!1269316 c!733791) b!4316492))

(assert (= (and d!1269316 (not c!733791)) b!4316487))

(assert (= (and d!1269316 c!733792) b!4316486))

(assert (= (and d!1269316 (not c!733792)) b!4316491))

(assert (= (and d!1269316 res!1769194) b!4316488))

(assert (= (and b!4316488 res!1769193) b!4316494))

(assert (= (and b!4316494 c!733793) b!4316490))

(assert (= (and b!4316494 (not c!733793)) b!4316493))

(assert (= (and b!4316490 res!1769195) b!4316489))

(assert (= (or b!4316489 b!4316493) bm!298646))

(assert (= (or b!4316490 b!4316489 b!4316493) bm!298647))

(assert (=> bm!298646 m!4910293))

(declare-fun m!4910317 () Bool)

(assert (=> b!4316486 m!4910317))

(declare-fun m!4910319 () Bool)

(assert (=> b!4316490 m!4910319))

(declare-fun m!4910321 () Bool)

(assert (=> bm!298647 m!4910321))

(declare-fun m!4910323 () Bool)

(assert (=> d!1269316 m!4910323))

(declare-fun m!4910325 () Bool)

(assert (=> d!1269316 m!4910325))

(declare-fun m!4910327 () Bool)

(assert (=> b!4316488 m!4910327))

(declare-fun m!4910329 () Bool)

(assert (=> b!4316492 m!4910329))

(declare-fun m!4910331 () Bool)

(assert (=> b!4316489 m!4910331))

(assert (=> b!4316449 d!1269316))

(declare-fun d!1269318 () Bool)

(declare-fun lt!1535867 () Bool)

(assert (=> d!1269318 (= lt!1535867 (contains!10340 (map!10342 (v!42613 (underlying!9684 thiss!42308))) lt!1535846))))

(declare-fun contains!10341 (LongMapFixedSize!9454 (_ BitVec 64)) Bool)

(assert (=> d!1269318 (= lt!1535867 (contains!10341 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846))))

(assert (=> d!1269318 (valid!3730 (v!42613 (underlying!9684 thiss!42308)))))

(assert (=> d!1269318 (= (contains!10339 (v!42613 (underlying!9684 thiss!42308)) lt!1535846) lt!1535867)))

(declare-fun bs!605868 () Bool)

(assert (= bs!605868 d!1269318))

(assert (=> bs!605868 m!4910293))

(assert (=> bs!605868 m!4910293))

(declare-fun m!4910333 () Bool)

(assert (=> bs!605868 m!4910333))

(declare-fun m!4910335 () Bool)

(assert (=> bs!605868 m!4910335))

(assert (=> bs!605868 m!4910325))

(assert (=> b!4316449 d!1269318))

(declare-fun d!1269320 () Bool)

(declare-fun hash!1126 (Hashable!4643 K!9564) (_ BitVec 64))

(assert (=> d!1269320 (= (hash!1125 (hashF!6848 thiss!42308) key!2048) (hash!1126 (hashF!6848 thiss!42308) key!2048))))

(declare-fun bs!605869 () Bool)

(assert (= bs!605869 d!1269320))

(declare-fun m!4910337 () Bool)

(assert (=> bs!605869 m!4910337))

(assert (=> b!4316449 d!1269320))

(declare-fun bs!605870 () Bool)

(declare-fun b!4316521 () Bool)

(assert (= bs!605870 (and b!4316521 b!4316440)))

(declare-fun lambda!133512 () Int)

(assert (=> bs!605870 (not (= lambda!133512 lambda!133509))))

(declare-fun call!298670 () List!48448)

(declare-fun bm!298660 () Bool)

(declare-fun lt!1535908 () ListLongMap!1125)

(declare-fun call!298668 () (_ BitVec 64))

(declare-fun call!298667 () ListLongMap!1125)

(declare-fun c!733804 () Bool)

(declare-fun apply!11101 (ListLongMap!1125 (_ BitVec 64)) List!48448)

(assert (=> bm!298660 (= call!298670 (apply!11101 (ite c!733804 lt!1535908 call!298667) call!298668))))

(declare-fun b!4316517 () Bool)

(declare-fun e!2685258 () Bool)

(declare-fun call!298665 () Bool)

(assert (=> b!4316517 (= e!2685258 call!298665)))

(declare-fun b!4316518 () Bool)

(declare-datatypes ((Unit!67549 0))(
  ( (Unit!67550) )
))
(declare-fun e!2685255 () Unit!67549)

(declare-fun lt!1535923 () Unit!67549)

(assert (=> b!4316518 (= e!2685255 lt!1535923)))

(assert (=> b!4316518 (= lt!1535908 call!298667)))

(declare-fun lemmaInGenericMapThenInLongMap!153 (ListLongMap!1125 K!9564 Hashable!4643) Unit!67549)

(assert (=> b!4316518 (= lt!1535923 (lemmaInGenericMapThenInLongMap!153 lt!1535908 key!2048 (hashF!6848 thiss!42308)))))

(declare-fun res!1769202 () Bool)

(declare-fun call!298669 () Bool)

(assert (=> b!4316518 (= res!1769202 call!298669)))

(assert (=> b!4316518 (=> (not res!1769202) (not e!2685258))))

(assert (=> b!4316518 e!2685258))

(declare-fun b!4316519 () Bool)

(assert (=> b!4316519 false))

(declare-fun lt!1535919 () Unit!67549)

(declare-fun lt!1535913 () Unit!67549)

(assert (=> b!4316519 (= lt!1535919 lt!1535913)))

(declare-fun lt!1535912 () ListLongMap!1125)

(declare-fun contains!10342 (ListMap!1791 K!9564) Bool)

(declare-fun extractMap!359 (List!48449) ListMap!1791)

(assert (=> b!4316519 (contains!10342 (extractMap!359 (toList!2511 lt!1535912)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!153 (ListLongMap!1125 K!9564 Hashable!4643) Unit!67549)

(assert (=> b!4316519 (= lt!1535913 (lemmaInLongMapThenInGenericMap!153 lt!1535912 key!2048 (hashF!6848 thiss!42308)))))

(assert (=> b!4316519 (= lt!1535912 call!298667)))

(declare-fun e!2685254 () Unit!67549)

(declare-fun Unit!67551 () Unit!67549)

(assert (=> b!4316519 (= e!2685254 Unit!67551)))

(declare-fun b!4316520 () Bool)

(declare-fun lt!1535924 () (_ BitVec 64))

(declare-fun e!2685257 () Bool)

(declare-datatypes ((Option!10278 0))(
  ( (None!10277) (Some!10277 (v!42618 tuple2!47016)) )
))
(declare-fun isDefined!7579 (Option!10278) Bool)

(declare-fun getPair!153 (List!48448 K!9564) Option!10278)

(assert (=> b!4316520 (= e!2685257 (isDefined!7579 (getPair!153 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924) key!2048)))))

(declare-fun e!2685256 () Unit!67549)

(declare-fun forallContained!1521 (List!48449 Int tuple2!47018) Unit!67549)

(assert (=> b!4316521 (= e!2685256 (forallContained!1521 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lambda!133512 (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))))

(declare-fun c!733803 () Bool)

(declare-fun contains!10343 (List!48449 tuple2!47018) Bool)

(assert (=> b!4316521 (= c!733803 (not (contains!10343 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924)))))))

(declare-fun lt!1535927 () Unit!67549)

(declare-fun e!2685259 () Unit!67549)

(assert (=> b!4316521 (= lt!1535927 e!2685259)))

(declare-fun b!4316522 () Bool)

(declare-fun Unit!67552 () Unit!67549)

(assert (=> b!4316522 (= e!2685256 Unit!67552)))

(declare-fun bm!298662 () Bool)

(declare-fun call!298666 () Option!10278)

(assert (=> bm!298662 (= call!298665 (isDefined!7579 call!298666))))

(declare-fun b!4316523 () Bool)

(declare-fun Unit!67553 () Unit!67549)

(assert (=> b!4316523 (= e!2685259 Unit!67553)))

(declare-fun bm!298663 () Bool)

(assert (=> bm!298663 (= call!298669 (contains!10340 (ite c!733804 lt!1535908 call!298667) call!298668))))

(declare-fun bm!298664 () Bool)

(assert (=> bm!298664 (= call!298666 (getPair!153 call!298670 key!2048))))

(declare-fun bm!298665 () Bool)

(assert (=> bm!298665 (= call!298668 (hash!1125 (hashF!6848 thiss!42308) key!2048))))

(declare-fun b!4316524 () Bool)

(assert (=> b!4316524 (= e!2685255 e!2685254)))

(declare-fun res!1769203 () Bool)

(assert (=> b!4316524 (= res!1769203 call!298669)))

(declare-fun e!2685253 () Bool)

(assert (=> b!4316524 (=> (not res!1769203) (not e!2685253))))

(declare-fun c!733802 () Bool)

(assert (=> b!4316524 (= c!733802 e!2685253)))

(declare-fun b!4316525 () Bool)

(declare-fun Unit!67554 () Unit!67549)

(assert (=> b!4316525 (= e!2685254 Unit!67554)))

(declare-fun b!4316526 () Bool)

(assert (=> b!4316526 false))

(declare-fun lt!1535917 () Unit!67549)

(declare-fun lt!1535925 () Unit!67549)

(assert (=> b!4316526 (= lt!1535917 lt!1535925)))

(declare-fun lt!1535915 () List!48449)

(declare-fun lt!1535914 () List!48448)

(assert (=> b!4316526 (contains!10343 lt!1535915 (tuple2!47019 lt!1535924 lt!1535914))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!165 (List!48449 (_ BitVec 64) List!48448) Unit!67549)

(assert (=> b!4316526 (= lt!1535925 (lemmaGetValueByKeyImpliesContainsTuple!165 lt!1535915 lt!1535924 lt!1535914))))

(assert (=> b!4316526 (= lt!1535914 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))

(assert (=> b!4316526 (= lt!1535915 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))))

(declare-fun lt!1535921 () Unit!67549)

(declare-fun lt!1535911 () Unit!67549)

(assert (=> b!4316526 (= lt!1535921 lt!1535911)))

(declare-fun lt!1535909 () List!48449)

(declare-datatypes ((Option!10279 0))(
  ( (None!10278) (Some!10278 (v!42619 List!48448)) )
))
(declare-fun isDefined!7580 (Option!10279) Bool)

(declare-fun getValueByKey!284 (List!48449 (_ BitVec 64)) Option!10279)

(assert (=> b!4316526 (isDefined!7580 (getValueByKey!284 lt!1535909 lt!1535924))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!203 (List!48449 (_ BitVec 64)) Unit!67549)

(assert (=> b!4316526 (= lt!1535911 (lemmaContainsKeyImpliesGetValueByKeyDefined!203 lt!1535909 lt!1535924))))

(assert (=> b!4316526 (= lt!1535909 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))))

(declare-fun lt!1535916 () Unit!67549)

(declare-fun lt!1535910 () Unit!67549)

(assert (=> b!4316526 (= lt!1535916 lt!1535910)))

(declare-fun lt!1535926 () List!48449)

(declare-fun containsKey!379 (List!48449 (_ BitVec 64)) Bool)

(assert (=> b!4316526 (containsKey!379 lt!1535926 lt!1535924)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!154 (List!48449 (_ BitVec 64)) Unit!67549)

(assert (=> b!4316526 (= lt!1535910 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!154 lt!1535926 lt!1535924))))

(assert (=> b!4316526 (= lt!1535926 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))))

(declare-fun Unit!67555 () Unit!67549)

(assert (=> b!4316526 (= e!2685259 Unit!67555)))

(declare-fun b!4316527 () Bool)

(assert (=> b!4316527 (= e!2685253 call!298665)))

(declare-fun d!1269322 () Bool)

(declare-fun lt!1535920 () Bool)

(assert (=> d!1269322 (= lt!1535920 (contains!10342 (map!10343 thiss!42308) key!2048))))

(assert (=> d!1269322 (= lt!1535920 e!2685257)))

(declare-fun res!1769204 () Bool)

(assert (=> d!1269322 (=> (not res!1769204) (not e!2685257))))

(assert (=> d!1269322 (= res!1769204 (contains!10339 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))

(declare-fun lt!1535922 () Unit!67549)

(assert (=> d!1269322 (= lt!1535922 e!2685255)))

(assert (=> d!1269322 (= c!733804 (contains!10342 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) key!2048))))

(declare-fun lt!1535918 () Unit!67549)

(assert (=> d!1269322 (= lt!1535918 e!2685256)))

(declare-fun c!733805 () Bool)

(assert (=> d!1269322 (= c!733805 (contains!10339 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))

(assert (=> d!1269322 (= lt!1535924 (hash!1125 (hashF!6848 thiss!42308) key!2048))))

(assert (=> d!1269322 (valid!3729 thiss!42308)))

(assert (=> d!1269322 (= (contains!10338 thiss!42308 key!2048) lt!1535920)))

(declare-fun bm!298661 () Bool)

(assert (=> bm!298661 (= call!298667 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))

(assert (= (and d!1269322 c!733805) b!4316521))

(assert (= (and d!1269322 (not c!733805)) b!4316522))

(assert (= (and b!4316521 c!733803) b!4316526))

(assert (= (and b!4316521 (not c!733803)) b!4316523))

(assert (= (and d!1269322 c!733804) b!4316518))

(assert (= (and d!1269322 (not c!733804)) b!4316524))

(assert (= (and b!4316518 res!1769202) b!4316517))

(assert (= (and b!4316524 res!1769203) b!4316527))

(assert (= (and b!4316524 c!733802) b!4316519))

(assert (= (and b!4316524 (not c!733802)) b!4316525))

(assert (= (or b!4316518 b!4316524 b!4316527 b!4316519) bm!298661))

(assert (= (or b!4316518 b!4316517 b!4316524 b!4316527) bm!298665))

(assert (= (or b!4316517 b!4316527) bm!298660))

(assert (= (or b!4316518 b!4316524) bm!298663))

(assert (= (or b!4316517 b!4316527) bm!298664))

(assert (= (or b!4316517 b!4316527) bm!298662))

(assert (= (and d!1269322 res!1769204) b!4316520))

(declare-fun m!4910339 () Bool)

(assert (=> bm!298662 m!4910339))

(declare-fun m!4910341 () Bool)

(assert (=> b!4316526 m!4910341))

(declare-fun m!4910343 () Bool)

(assert (=> b!4316526 m!4910343))

(declare-fun m!4910345 () Bool)

(assert (=> b!4316526 m!4910345))

(declare-fun m!4910347 () Bool)

(assert (=> b!4316526 m!4910347))

(declare-fun m!4910349 () Bool)

(assert (=> b!4316526 m!4910349))

(assert (=> b!4316526 m!4910347))

(declare-fun m!4910351 () Bool)

(assert (=> b!4316526 m!4910351))

(declare-fun m!4910353 () Bool)

(assert (=> b!4316526 m!4910353))

(declare-fun m!4910355 () Bool)

(assert (=> b!4316526 m!4910355))

(assert (=> b!4316526 m!4910293))

(assert (=> bm!298661 m!4910293))

(assert (=> d!1269322 m!4910295))

(declare-fun m!4910357 () Bool)

(assert (=> d!1269322 m!4910357))

(assert (=> d!1269322 m!4910297))

(declare-fun m!4910359 () Bool)

(assert (=> d!1269322 m!4910359))

(assert (=> d!1269322 m!4910309))

(assert (=> d!1269322 m!4910359))

(declare-fun m!4910361 () Bool)

(assert (=> d!1269322 m!4910361))

(declare-fun m!4910363 () Bool)

(assert (=> d!1269322 m!4910363))

(assert (=> d!1269322 m!4910293))

(assert (=> d!1269322 m!4910295))

(declare-fun m!4910365 () Bool)

(assert (=> b!4316518 m!4910365))

(assert (=> bm!298665 m!4910309))

(declare-fun m!4910367 () Bool)

(assert (=> bm!298660 m!4910367))

(assert (=> b!4316521 m!4910293))

(assert (=> b!4316521 m!4910349))

(declare-fun m!4910369 () Bool)

(assert (=> b!4316521 m!4910369))

(declare-fun m!4910371 () Bool)

(assert (=> b!4316521 m!4910371))

(assert (=> b!4316520 m!4910349))

(assert (=> b!4316520 m!4910349))

(declare-fun m!4910373 () Bool)

(assert (=> b!4316520 m!4910373))

(assert (=> b!4316520 m!4910373))

(declare-fun m!4910375 () Bool)

(assert (=> b!4316520 m!4910375))

(declare-fun m!4910377 () Bool)

(assert (=> bm!298663 m!4910377))

(declare-fun m!4910379 () Bool)

(assert (=> bm!298664 m!4910379))

(declare-fun m!4910381 () Bool)

(assert (=> b!4316519 m!4910381))

(assert (=> b!4316519 m!4910381))

(declare-fun m!4910383 () Bool)

(assert (=> b!4316519 m!4910383))

(declare-fun m!4910385 () Bool)

(assert (=> b!4316519 m!4910385))

(assert (=> b!4316443 d!1269322))

(declare-fun d!1269324 () Bool)

(declare-fun map!10344 (LongMapFixedSize!9454) ListLongMap!1125)

(assert (=> d!1269324 (= (map!10342 (v!42613 (underlying!9684 thiss!42308))) (map!10344 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))))

(declare-fun bs!605871 () Bool)

(assert (= bs!605871 d!1269324))

(declare-fun m!4910387 () Bool)

(assert (=> bs!605871 m!4910387))

(assert (=> b!4316443 d!1269324))

(declare-fun d!1269326 () Bool)

(declare-fun lt!1535930 () ListMap!1791)

(declare-fun invariantList!592 (List!48448) Bool)

(assert (=> d!1269326 (invariantList!592 (toList!2512 lt!1535930))))

(assert (=> d!1269326 (= lt!1535930 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))))

(assert (=> d!1269326 (valid!3729 thiss!42308)))

(assert (=> d!1269326 (= (map!10343 thiss!42308) lt!1535930)))

(declare-fun bs!605872 () Bool)

(assert (= bs!605872 d!1269326))

(declare-fun m!4910389 () Bool)

(assert (=> bs!605872 m!4910389))

(assert (=> bs!605872 m!4910293))

(assert (=> bs!605872 m!4910359))

(assert (=> bs!605872 m!4910297))

(assert (=> b!4316443 d!1269326))

(declare-fun d!1269328 () Bool)

(declare-fun e!2685262 () Bool)

(assert (=> d!1269328 e!2685262))

(declare-fun c!733808 () Bool)

(assert (=> d!1269328 (= c!733808 (contains!10339 (v!42613 (underlying!9684 thiss!42308)) lt!1535846))))

(declare-fun lt!1535933 () List!48448)

(declare-fun apply!11102 (LongMapFixedSize!9454 (_ BitVec 64)) List!48448)

(assert (=> d!1269328 (= lt!1535933 (apply!11102 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846))))

(assert (=> d!1269328 (valid!3730 (v!42613 (underlying!9684 thiss!42308)))))

(assert (=> d!1269328 (= (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535846) lt!1535933)))

(declare-fun b!4316532 () Bool)

(declare-fun get!15649 (Option!10279) List!48448)

(assert (=> b!4316532 (= e!2685262 (= lt!1535933 (get!15649 (getValueByKey!284 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846))))))

(declare-fun b!4316533 () Bool)

(declare-fun dynLambda!20479 (Int (_ BitVec 64)) List!48448)

(assert (=> b!4316533 (= e!2685262 (= lt!1535933 (dynLambda!20479 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846)))))

(assert (=> b!4316533 ((_ is LongMap!4727) (v!42613 (underlying!9684 thiss!42308)))))

(assert (= (and d!1269328 c!733808) b!4316532))

(assert (= (and d!1269328 (not c!733808)) b!4316533))

(declare-fun b_lambda!126915 () Bool)

(assert (=> (not b_lambda!126915) (not b!4316533)))

(declare-fun t!355302 () Bool)

(declare-fun tb!257337 () Bool)

(assert (=> (and b!4316450 (= (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) t!355302) tb!257337))

(assert (=> b!4316533 t!355302))

(declare-fun result!314814 () Bool)

(declare-fun b_and!340355 () Bool)

(assert (= b_and!340351 (and (=> t!355302 result!314814) b_and!340355)))

(assert (=> d!1269328 m!4910307))

(declare-fun m!4910391 () Bool)

(assert (=> d!1269328 m!4910391))

(assert (=> d!1269328 m!4910325))

(assert (=> b!4316532 m!4910293))

(declare-fun m!4910393 () Bool)

(assert (=> b!4316532 m!4910393))

(assert (=> b!4316532 m!4910393))

(declare-fun m!4910395 () Bool)

(assert (=> b!4316532 m!4910395))

(declare-fun m!4910397 () Bool)

(assert (=> b!4316533 m!4910397))

(assert (=> b!4316438 d!1269328))

(declare-fun d!1269330 () Bool)

(assert (=> d!1269330 (= (array_inv!5495 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (bvsge (size!35678 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4316450 d!1269330))

(declare-fun d!1269332 () Bool)

(assert (=> d!1269332 (= (array_inv!5496 (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (bvsge (size!35679 (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4316450 d!1269332))

(declare-fun d!1269334 () Bool)

(assert (=> d!1269334 (= (isEmpty!28090 lt!1535847) ((_ is Nil!48324) lt!1535847))))

(assert (=> b!4316446 d!1269334))

(declare-fun bs!605873 () Bool)

(declare-fun b!4316538 () Bool)

(assert (= bs!605873 (and b!4316538 b!4316440)))

(declare-fun lambda!133515 () Int)

(assert (=> bs!605873 (not (= lambda!133515 lambda!133509))))

(declare-fun bs!605874 () Bool)

(assert (= bs!605874 (and b!4316538 b!4316521)))

(assert (=> bs!605874 (= lambda!133515 lambda!133512)))

(declare-fun d!1269336 () Bool)

(declare-fun res!1769209 () Bool)

(declare-fun e!2685265 () Bool)

(assert (=> d!1269336 (=> (not res!1769209) (not e!2685265))))

(assert (=> d!1269336 (= res!1769209 (valid!3730 (v!42613 (underlying!9684 thiss!42308))))))

(assert (=> d!1269336 (= (valid!3729 thiss!42308) e!2685265)))

(declare-fun res!1769210 () Bool)

(assert (=> b!4316538 (=> (not res!1769210) (not e!2685265))))

(assert (=> b!4316538 (= res!1769210 (forall!8786 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lambda!133515))))

(declare-fun b!4316539 () Bool)

(declare-fun allKeysSameHashInMap!375 (ListLongMap!1125 Hashable!4643) Bool)

(assert (=> b!4316539 (= e!2685265 (allKeysSameHashInMap!375 (map!10342 (v!42613 (underlying!9684 thiss!42308))) (hashF!6848 thiss!42308)))))

(assert (= (and d!1269336 res!1769209) b!4316538))

(assert (= (and b!4316538 res!1769210) b!4316539))

(assert (=> d!1269336 m!4910325))

(assert (=> b!4316538 m!4910293))

(declare-fun m!4910399 () Bool)

(assert (=> b!4316538 m!4910399))

(assert (=> b!4316539 m!4910293))

(assert (=> b!4316539 m!4910293))

(declare-fun m!4910401 () Bool)

(assert (=> b!4316539 m!4910401))

(assert (=> b!4316442 d!1269336))

(declare-fun d!1269338 () Bool)

(declare-fun res!1769215 () Bool)

(declare-fun e!2685270 () Bool)

(assert (=> d!1269338 (=> res!1769215 e!2685270)))

(assert (=> d!1269338 (= res!1769215 ((_ is Nil!48325) (toList!2511 lt!1535845)))))

(assert (=> d!1269338 (= (forall!8786 (toList!2511 lt!1535845) lambda!133509) e!2685270)))

(declare-fun b!4316544 () Bool)

(declare-fun e!2685271 () Bool)

(assert (=> b!4316544 (= e!2685270 e!2685271)))

(declare-fun res!1769216 () Bool)

(assert (=> b!4316544 (=> (not res!1769216) (not e!2685271))))

(declare-fun dynLambda!20480 (Int tuple2!47018) Bool)

(assert (=> b!4316544 (= res!1769216 (dynLambda!20480 lambda!133509 (h!53777 (toList!2511 lt!1535845))))))

(declare-fun b!4316545 () Bool)

(assert (=> b!4316545 (= e!2685271 (forall!8786 (t!355300 (toList!2511 lt!1535845)) lambda!133509))))

(assert (= (and d!1269338 (not res!1769215)) b!4316544))

(assert (= (and b!4316544 res!1769216) b!4316545))

(declare-fun b_lambda!126917 () Bool)

(assert (=> (not b_lambda!126917) (not b!4316544)))

(declare-fun m!4910403 () Bool)

(assert (=> b!4316544 m!4910403))

(declare-fun m!4910405 () Bool)

(assert (=> b!4316545 m!4910405))

(assert (=> b!4316440 d!1269338))

(declare-fun tp!1326209 () Bool)

(declare-fun b!4316550 () Bool)

(declare-fun e!2685274 () Bool)

(assert (=> b!4316550 (= e!2685274 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326209))))

(assert (=> b!4316447 (= tp!1326204 e!2685274)))

(assert (= (and b!4316447 ((_ is Cons!48324) mapDefault!21076)) b!4316550))

(declare-fun tp!1326210 () Bool)

(declare-fun b!4316551 () Bool)

(declare-fun e!2685275 () Bool)

(assert (=> b!4316551 (= e!2685275 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326210))))

(assert (=> b!4316450 (= tp!1326206 e!2685275)))

(assert (= (and b!4316450 ((_ is Cons!48324) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))) b!4316551))

(declare-fun tp!1326211 () Bool)

(declare-fun e!2685276 () Bool)

(declare-fun b!4316552 () Bool)

(assert (=> b!4316552 (= e!2685276 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326211))))

(assert (=> b!4316450 (= tp!1326200 e!2685276)))

(assert (= (and b!4316450 ((_ is Cons!48324) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))) b!4316552))

(declare-fun tp!1326218 () Bool)

(declare-fun b!4316559 () Bool)

(declare-fun e!2685282 () Bool)

(assert (=> b!4316559 (= e!2685282 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326218))))

(declare-fun mapNonEmpty!21079 () Bool)

(declare-fun mapRes!21079 () Bool)

(declare-fun tp!1326220 () Bool)

(assert (=> mapNonEmpty!21079 (= mapRes!21079 (and tp!1326220 e!2685282))))

(declare-fun mapRest!21079 () (Array (_ BitVec 32) List!48448))

(declare-fun mapValue!21079 () List!48448)

(declare-fun mapKey!21079 () (_ BitVec 32))

(assert (=> mapNonEmpty!21079 (= mapRest!21076 (store mapRest!21079 mapKey!21079 mapValue!21079))))

(declare-fun tp!1326219 () Bool)

(declare-fun e!2685281 () Bool)

(declare-fun b!4316560 () Bool)

(assert (=> b!4316560 (= e!2685281 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326219))))

(declare-fun condMapEmpty!21079 () Bool)

(declare-fun mapDefault!21079 () List!48448)

(assert (=> mapNonEmpty!21076 (= condMapEmpty!21079 (= mapRest!21076 ((as const (Array (_ BitVec 32) List!48448)) mapDefault!21079)))))

(assert (=> mapNonEmpty!21076 (= tp!1326201 (and e!2685281 mapRes!21079))))

(declare-fun mapIsEmpty!21079 () Bool)

(assert (=> mapIsEmpty!21079 mapRes!21079))

(assert (= (and mapNonEmpty!21076 condMapEmpty!21079) mapIsEmpty!21079))

(assert (= (and mapNonEmpty!21076 (not condMapEmpty!21079)) mapNonEmpty!21079))

(assert (= (and mapNonEmpty!21079 ((_ is Cons!48324) mapValue!21079)) b!4316559))

(assert (= (and mapNonEmpty!21076 ((_ is Cons!48324) mapDefault!21079)) b!4316560))

(declare-fun m!4910407 () Bool)

(assert (=> mapNonEmpty!21079 m!4910407))

(declare-fun e!2685283 () Bool)

(declare-fun tp!1326221 () Bool)

(declare-fun b!4316561 () Bool)

(assert (=> b!4316561 (= e!2685283 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326221))))

(assert (=> mapNonEmpty!21076 (= tp!1326203 e!2685283)))

(assert (= (and mapNonEmpty!21076 ((_ is Cons!48324) mapValue!21076)) b!4316561))

(declare-fun b_lambda!126919 () Bool)

(assert (= b_lambda!126917 (or b!4316440 b_lambda!126919)))

(declare-fun bs!605875 () Bool)

(declare-fun d!1269340 () Bool)

(assert (= bs!605875 (and d!1269340 b!4316440)))

(declare-fun allKeysSameHash!225 (List!48448 (_ BitVec 64) Hashable!4643) Bool)

(assert (=> bs!605875 (= (dynLambda!20480 lambda!133509 (h!53777 (toList!2511 lt!1535845))) (allKeysSameHash!225 (_2!26791 (h!53777 (toList!2511 lt!1535845))) (_1!26791 (h!53777 (toList!2511 lt!1535845))) (hashF!6848 thiss!42308)))))

(declare-fun m!4910409 () Bool)

(assert (=> bs!605875 m!4910409))

(assert (=> b!4316544 d!1269340))

(declare-fun b_lambda!126921 () Bool)

(assert (= b_lambda!126915 (or (and b!4316450 b_free!128867) b_lambda!126921)))

(check-sat (not d!1269324) (not b!4316521) b_and!340353 (not b!4316539) (not b_lambda!126921) (not bm!298646) (not mapNonEmpty!21079) (not b!4316532) (not b!4316490) (not b!4316520) (not d!1269322) b_and!340355 (not d!1269336) (not b!4316550) tp_is_empty!24007 (not b!4316561) (not bm!298647) (not bs!605875) (not d!1269320) (not b!4316538) (not tb!257337) (not b!4316526) (not d!1269326) (not b_next!129571) (not b!4316519) (not bm!298660) (not b!4316488) (not b!4316486) (not d!1269316) tp_is_empty!24005 (not b!4316560) (not b!4316552) (not bm!298662) (not b!4316492) (not bm!298663) (not bm!298665) (not bm!298664) (not b_next!129573) (not d!1269318) (not b!4316551) (not b!4316559) (not b!4316518) (not d!1269328) (not b!4316545) (not b!4316489) (not bm!298661) (not b_lambda!126919))
(check-sat b_and!340355 b_and!340353 (not b_next!129573) (not b_next!129571))
(get-model)

(declare-fun d!1269342 () Bool)

(assert (=> d!1269342 (= (imbalanced!71 (v!42613 (underlying!9684 thiss!42308))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9497 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_vacant!4788 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (bvsgt (_vacant!4788 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_size!9497 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))))))

(assert (=> d!1269316 d!1269342))

(declare-fun d!1269344 () Bool)

(declare-fun valid!3731 (LongMapFixedSize!9454) Bool)

(assert (=> d!1269344 (= (valid!3730 (v!42613 (underlying!9684 thiss!42308))) (valid!3731 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))))

(declare-fun bs!605876 () Bool)

(assert (= bs!605876 d!1269344))

(declare-fun m!4910411 () Bool)

(assert (=> bs!605876 m!4910411))

(assert (=> d!1269316 d!1269344))

(declare-fun b!4316580 () Bool)

(assert (=> b!4316580 false))

(declare-fun lt!1535953 () Unit!67549)

(declare-fun lt!1535956 () Unit!67549)

(assert (=> b!4316580 (= lt!1535953 lt!1535956)))

(declare-fun containsKey!380 (List!48448 K!9564) Bool)

(assert (=> b!4316580 (containsKey!380 (toList!2512 (extractMap!359 (toList!2511 lt!1535912))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!49 (List!48448 K!9564) Unit!67549)

(assert (=> b!4316580 (= lt!1535956 (lemmaInGetKeysListThenContainsKey!49 (toList!2512 (extractMap!359 (toList!2511 lt!1535912))) key!2048))))

(declare-fun e!2685296 () Unit!67549)

(declare-fun Unit!67556 () Unit!67549)

(assert (=> b!4316580 (= e!2685296 Unit!67556)))

(declare-fun b!4316581 () Bool)

(declare-fun e!2685300 () Bool)

(declare-datatypes ((List!48450 0))(
  ( (Nil!48326) (Cons!48326 (h!53779 K!9564) (t!355305 List!48450)) )
))
(declare-fun contains!10344 (List!48450 K!9564) Bool)

(declare-fun keys!16143 (ListMap!1791) List!48450)

(assert (=> b!4316581 (= e!2685300 (not (contains!10344 (keys!16143 (extractMap!359 (toList!2511 lt!1535912))) key!2048)))))

(declare-fun b!4316582 () Bool)

(declare-fun e!2685299 () Bool)

(assert (=> b!4316582 (= e!2685299 (contains!10344 (keys!16143 (extractMap!359 (toList!2511 lt!1535912))) key!2048))))

(declare-fun b!4316583 () Bool)

(declare-fun e!2685297 () Bool)

(assert (=> b!4316583 (= e!2685297 e!2685299)))

(declare-fun res!1769225 () Bool)

(assert (=> b!4316583 (=> (not res!1769225) (not e!2685299))))

(declare-datatypes ((Option!10280 0))(
  ( (None!10279) (Some!10279 (v!42626 V!9766)) )
))
(declare-fun isDefined!7581 (Option!10280) Bool)

(declare-fun getValueByKey!285 (List!48448 K!9564) Option!10280)

(assert (=> b!4316583 (= res!1769225 (isDefined!7581 (getValueByKey!285 (toList!2512 (extractMap!359 (toList!2511 lt!1535912))) key!2048)))))

(declare-fun b!4316584 () Bool)

(declare-fun e!2685301 () Unit!67549)

(declare-fun lt!1535951 () Unit!67549)

(assert (=> b!4316584 (= e!2685301 lt!1535951)))

(declare-fun lt!1535954 () Unit!67549)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!204 (List!48448 K!9564) Unit!67549)

(assert (=> b!4316584 (= lt!1535954 (lemmaContainsKeyImpliesGetValueByKeyDefined!204 (toList!2512 (extractMap!359 (toList!2511 lt!1535912))) key!2048))))

(assert (=> b!4316584 (isDefined!7581 (getValueByKey!285 (toList!2512 (extractMap!359 (toList!2511 lt!1535912))) key!2048))))

(declare-fun lt!1535955 () Unit!67549)

(assert (=> b!4316584 (= lt!1535955 lt!1535954)))

(declare-fun lemmaInListThenGetKeysListContains!49 (List!48448 K!9564) Unit!67549)

(assert (=> b!4316584 (= lt!1535951 (lemmaInListThenGetKeysListContains!49 (toList!2512 (extractMap!359 (toList!2511 lt!1535912))) key!2048))))

(declare-fun call!298673 () Bool)

(assert (=> b!4316584 call!298673))

(declare-fun b!4316585 () Bool)

(declare-fun e!2685298 () List!48450)

(assert (=> b!4316585 (= e!2685298 (keys!16143 (extractMap!359 (toList!2511 lt!1535912))))))

(declare-fun b!4316586 () Bool)

(declare-fun getKeysList!52 (List!48448) List!48450)

(assert (=> b!4316586 (= e!2685298 (getKeysList!52 (toList!2512 (extractMap!359 (toList!2511 lt!1535912)))))))

(declare-fun b!4316587 () Bool)

(assert (=> b!4316587 (= e!2685301 e!2685296)))

(declare-fun c!733817 () Bool)

(assert (=> b!4316587 (= c!733817 call!298673)))

(declare-fun d!1269346 () Bool)

(assert (=> d!1269346 e!2685297))

(declare-fun res!1769224 () Bool)

(assert (=> d!1269346 (=> res!1769224 e!2685297)))

(assert (=> d!1269346 (= res!1769224 e!2685300)))

(declare-fun res!1769223 () Bool)

(assert (=> d!1269346 (=> (not res!1769223) (not e!2685300))))

(declare-fun lt!1535950 () Bool)

(assert (=> d!1269346 (= res!1769223 (not lt!1535950))))

(declare-fun lt!1535957 () Bool)

(assert (=> d!1269346 (= lt!1535950 lt!1535957)))

(declare-fun lt!1535952 () Unit!67549)

(assert (=> d!1269346 (= lt!1535952 e!2685301)))

(declare-fun c!733815 () Bool)

(assert (=> d!1269346 (= c!733815 lt!1535957)))

(assert (=> d!1269346 (= lt!1535957 (containsKey!380 (toList!2512 (extractMap!359 (toList!2511 lt!1535912))) key!2048))))

(assert (=> d!1269346 (= (contains!10342 (extractMap!359 (toList!2511 lt!1535912)) key!2048) lt!1535950)))

(declare-fun bm!298668 () Bool)

(assert (=> bm!298668 (= call!298673 (contains!10344 e!2685298 key!2048))))

(declare-fun c!733816 () Bool)

(assert (=> bm!298668 (= c!733816 c!733815)))

(declare-fun b!4316588 () Bool)

(declare-fun Unit!67557 () Unit!67549)

(assert (=> b!4316588 (= e!2685296 Unit!67557)))

(assert (= (and d!1269346 c!733815) b!4316584))

(assert (= (and d!1269346 (not c!733815)) b!4316587))

(assert (= (and b!4316587 c!733817) b!4316580))

(assert (= (and b!4316587 (not c!733817)) b!4316588))

(assert (= (or b!4316584 b!4316587) bm!298668))

(assert (= (and bm!298668 c!733816) b!4316586))

(assert (= (and bm!298668 (not c!733816)) b!4316585))

(assert (= (and d!1269346 res!1769223) b!4316581))

(assert (= (and d!1269346 (not res!1769224)) b!4316583))

(assert (= (and b!4316583 res!1769225) b!4316582))

(declare-fun m!4910413 () Bool)

(assert (=> b!4316586 m!4910413))

(declare-fun m!4910415 () Bool)

(assert (=> b!4316580 m!4910415))

(declare-fun m!4910417 () Bool)

(assert (=> b!4316580 m!4910417))

(declare-fun m!4910419 () Bool)

(assert (=> b!4316583 m!4910419))

(assert (=> b!4316583 m!4910419))

(declare-fun m!4910421 () Bool)

(assert (=> b!4316583 m!4910421))

(assert (=> d!1269346 m!4910415))

(declare-fun m!4910423 () Bool)

(assert (=> b!4316584 m!4910423))

(assert (=> b!4316584 m!4910419))

(assert (=> b!4316584 m!4910419))

(assert (=> b!4316584 m!4910421))

(declare-fun m!4910425 () Bool)

(assert (=> b!4316584 m!4910425))

(declare-fun m!4910427 () Bool)

(assert (=> bm!298668 m!4910427))

(assert (=> b!4316581 m!4910381))

(declare-fun m!4910429 () Bool)

(assert (=> b!4316581 m!4910429))

(assert (=> b!4316581 m!4910429))

(declare-fun m!4910431 () Bool)

(assert (=> b!4316581 m!4910431))

(assert (=> b!4316585 m!4910381))

(assert (=> b!4316585 m!4910429))

(assert (=> b!4316582 m!4910381))

(assert (=> b!4316582 m!4910429))

(assert (=> b!4316582 m!4910429))

(assert (=> b!4316582 m!4910431))

(assert (=> b!4316519 d!1269346))

(declare-fun bs!605877 () Bool)

(declare-fun d!1269348 () Bool)

(assert (= bs!605877 (and d!1269348 b!4316440)))

(declare-fun lambda!133518 () Int)

(assert (=> bs!605877 (not (= lambda!133518 lambda!133509))))

(declare-fun bs!605878 () Bool)

(assert (= bs!605878 (and d!1269348 b!4316521)))

(assert (=> bs!605878 (= lambda!133518 lambda!133512)))

(declare-fun bs!605879 () Bool)

(assert (= bs!605879 (and d!1269348 b!4316538)))

(assert (=> bs!605879 (= lambda!133518 lambda!133515)))

(declare-fun lt!1535960 () ListMap!1791)

(assert (=> d!1269348 (invariantList!592 (toList!2512 lt!1535960))))

(declare-fun e!2685304 () ListMap!1791)

(assert (=> d!1269348 (= lt!1535960 e!2685304)))

(declare-fun c!733820 () Bool)

(assert (=> d!1269348 (= c!733820 ((_ is Cons!48325) (toList!2511 lt!1535912)))))

(assert (=> d!1269348 (forall!8786 (toList!2511 lt!1535912) lambda!133518)))

(assert (=> d!1269348 (= (extractMap!359 (toList!2511 lt!1535912)) lt!1535960)))

(declare-fun b!4316593 () Bool)

(declare-fun addToMapMapFromBucket!47 (List!48448 ListMap!1791) ListMap!1791)

(assert (=> b!4316593 (= e!2685304 (addToMapMapFromBucket!47 (_2!26791 (h!53777 (toList!2511 lt!1535912))) (extractMap!359 (t!355300 (toList!2511 lt!1535912)))))))

(declare-fun b!4316594 () Bool)

(assert (=> b!4316594 (= e!2685304 (ListMap!1792 Nil!48324))))

(assert (= (and d!1269348 c!733820) b!4316593))

(assert (= (and d!1269348 (not c!733820)) b!4316594))

(declare-fun m!4910433 () Bool)

(assert (=> d!1269348 m!4910433))

(declare-fun m!4910435 () Bool)

(assert (=> d!1269348 m!4910435))

(declare-fun m!4910437 () Bool)

(assert (=> b!4316593 m!4910437))

(assert (=> b!4316593 m!4910437))

(declare-fun m!4910439 () Bool)

(assert (=> b!4316593 m!4910439))

(assert (=> b!4316519 d!1269348))

(declare-fun bs!605880 () Bool)

(declare-fun d!1269350 () Bool)

(assert (= bs!605880 (and d!1269350 b!4316440)))

(declare-fun lambda!133521 () Int)

(assert (=> bs!605880 (not (= lambda!133521 lambda!133509))))

(declare-fun bs!605881 () Bool)

(assert (= bs!605881 (and d!1269350 b!4316521)))

(assert (=> bs!605881 (= lambda!133521 lambda!133512)))

(declare-fun bs!605882 () Bool)

(assert (= bs!605882 (and d!1269350 b!4316538)))

(assert (=> bs!605882 (= lambda!133521 lambda!133515)))

(declare-fun bs!605883 () Bool)

(assert (= bs!605883 (and d!1269350 d!1269348)))

(assert (=> bs!605883 (= lambda!133521 lambda!133518)))

(assert (=> d!1269350 (contains!10342 (extractMap!359 (toList!2511 lt!1535912)) key!2048)))

(declare-fun lt!1535963 () Unit!67549)

(declare-fun choose!26337 (ListLongMap!1125 K!9564 Hashable!4643) Unit!67549)

(assert (=> d!1269350 (= lt!1535963 (choose!26337 lt!1535912 key!2048 (hashF!6848 thiss!42308)))))

(assert (=> d!1269350 (forall!8786 (toList!2511 lt!1535912) lambda!133521)))

(assert (=> d!1269350 (= (lemmaInLongMapThenInGenericMap!153 lt!1535912 key!2048 (hashF!6848 thiss!42308)) lt!1535963)))

(declare-fun bs!605884 () Bool)

(assert (= bs!605884 d!1269350))

(assert (=> bs!605884 m!4910381))

(assert (=> bs!605884 m!4910381))

(assert (=> bs!605884 m!4910383))

(declare-fun m!4910441 () Bool)

(assert (=> bs!605884 m!4910441))

(declare-fun m!4910443 () Bool)

(assert (=> bs!605884 m!4910443))

(assert (=> b!4316519 d!1269350))

(declare-fun d!1269352 () Bool)

(declare-fun e!2685307 () Bool)

(assert (=> d!1269352 e!2685307))

(declare-fun res!1769231 () Bool)

(assert (=> d!1269352 (=> (not res!1769231) (not e!2685307))))

(declare-fun lt!1535974 () ListLongMap!1125)

(assert (=> d!1269352 (= res!1769231 (contains!10340 lt!1535974 (_1!26791 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))))))

(declare-fun lt!1535975 () List!48449)

(assert (=> d!1269352 (= lt!1535974 (ListLongMap!1126 lt!1535975))))

(declare-fun lt!1535973 () Unit!67549)

(declare-fun lt!1535972 () Unit!67549)

(assert (=> d!1269352 (= lt!1535973 lt!1535972)))

(assert (=> d!1269352 (= (getValueByKey!284 lt!1535975 (_1!26791 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))) (Some!10278 (_2!26791 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!90 (List!48449 (_ BitVec 64) List!48448) Unit!67549)

(assert (=> d!1269352 (= lt!1535972 (lemmaContainsTupThenGetReturnValue!90 lt!1535975 (_1!26791 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847))) (_2!26791 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))))))

(declare-fun insertStrictlySorted!50 (List!48449 (_ BitVec 64) List!48448) List!48449)

(assert (=> d!1269352 (= lt!1535975 (insertStrictlySorted!50 (toList!2511 call!298651) (_1!26791 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847))) (_2!26791 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))))))

(assert (=> d!1269352 (= (+!316 call!298651 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847))) lt!1535974)))

(declare-fun b!4316599 () Bool)

(declare-fun res!1769230 () Bool)

(assert (=> b!4316599 (=> (not res!1769230) (not e!2685307))))

(assert (=> b!4316599 (= res!1769230 (= (getValueByKey!284 (toList!2511 lt!1535974) (_1!26791 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))) (Some!10278 (_2!26791 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847))))))))

(declare-fun b!4316600 () Bool)

(assert (=> b!4316600 (= e!2685307 (contains!10343 (toList!2511 lt!1535974) (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847))))))

(assert (= (and d!1269352 res!1769231) b!4316599))

(assert (= (and b!4316599 res!1769230) b!4316600))

(declare-fun m!4910445 () Bool)

(assert (=> d!1269352 m!4910445))

(declare-fun m!4910447 () Bool)

(assert (=> d!1269352 m!4910447))

(declare-fun m!4910449 () Bool)

(assert (=> d!1269352 m!4910449))

(declare-fun m!4910451 () Bool)

(assert (=> d!1269352 m!4910451))

(declare-fun m!4910453 () Bool)

(assert (=> b!4316599 m!4910453))

(declare-fun m!4910455 () Bool)

(assert (=> b!4316600 m!4910455))

(assert (=> b!4316489 d!1269352))

(assert (=> bm!298646 d!1269324))

(assert (=> d!1269328 d!1269318))

(declare-fun b!4316638 () Bool)

(declare-fun res!1769242 () Bool)

(declare-fun e!2685337 () Bool)

(assert (=> b!4316638 (=> (not res!1769242) (not e!2685337))))

(assert (=> b!4316638 (= res!1769242 (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!2685330 () Bool)

(assert (=> b!4316638 (= e!2685330 e!2685337)))

(declare-fun b!4316639 () Bool)

(declare-fun e!2685339 () Bool)

(assert (=> b!4316639 (= e!2685339 e!2685330)))

(declare-fun c!733835 () Bool)

(assert (=> b!4316639 (= c!733835 (= lt!1535846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4316640 () Bool)

(declare-fun e!2685331 () Bool)

(declare-fun call!298684 () List!48448)

(assert (=> b!4316640 (= e!2685331 (= call!298684 (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun bm!298677 () Bool)

(declare-fun call!298685 () ListLongMap!1125)

(declare-fun getCurrentListMap!20 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 (_ BitVec 32) Int) ListLongMap!1125)

(assert (=> bm!298677 (= call!298685 (getCurrentListMap!20 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun b!4316641 () Bool)

(declare-fun e!2685340 () List!48448)

(assert (=> b!4316641 (= e!2685340 (dynLambda!20479 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846))))

(declare-fun call!298683 () ListLongMap!1125)

(declare-fun bm!298678 () Bool)

(declare-fun c!733841 () Bool)

(assert (=> bm!298678 (= call!298684 (apply!11101 (ite c!733841 call!298685 call!298683) lt!1535846))))

(declare-fun b!4316642 () Bool)

(declare-fun e!2685333 () Bool)

(declare-fun lt!1535999 () List!48448)

(assert (=> b!4316642 (= e!2685333 (= lt!1535999 (dynLambda!20479 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846)))))

(declare-fun b!4316643 () Bool)

(declare-fun e!2685336 () List!48448)

(assert (=> b!4316643 (= e!2685336 (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))))

(declare-fun b!4316644 () Bool)

(declare-fun res!1769241 () Bool)

(declare-fun e!2685335 () Bool)

(assert (=> b!4316644 (=> (not res!1769241) (not e!2685335))))

(declare-fun arrayContainsKey!0 (array!17110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4316644 (= res!1769241 (arrayContainsKey!0 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846 #b00000000000000000000000000000000))))

(assert (=> b!4316644 (= e!2685330 e!2685335)))

(declare-fun bm!298679 () Bool)

(declare-fun call!298682 () List!48448)

(assert (=> bm!298679 (= call!298682 call!298684)))

(declare-datatypes ((SeekEntryResult!17 0))(
  ( (Found!17 (index!1447 (_ BitVec 32))) (Undefined!17) (MissingZero!17 (index!1448 (_ BitVec 32))) (MissingVacant!17 (index!1449 (_ BitVec 32))) (Intermediate!17 (undefined!98 Bool) (index!1450 (_ BitVec 32)) (x!749161 (_ BitVec 32))) )
))
(declare-fun lt!1536003 () SeekEntryResult!17)

(declare-fun b!4316645 () Bool)

(assert (=> b!4316645 (= e!2685335 (= call!298682 (select (arr!7640 (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (index!1447 lt!1536003))))))

(declare-fun b!4316646 () Bool)

(assert (=> b!4316646 (= e!2685336 (dynLambda!20479 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846))))

(declare-fun bm!298680 () Bool)

(assert (=> bm!298680 (= call!298683 call!298685)))

(declare-fun b!4316647 () Bool)

(assert (=> b!4316647 (= e!2685339 e!2685331)))

(declare-fun res!1769243 () Bool)

(assert (=> b!4316647 (= res!1769243 (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4316647 (=> (not res!1769243) (not e!2685331))))

(declare-fun b!4316648 () Bool)

(declare-fun e!2685332 () Bool)

(declare-fun lt!1536002 () SeekEntryResult!17)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4316648 (= e!2685332 (inRange!0 (index!1447 lt!1536002) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun d!1269354 () Bool)

(assert (=> d!1269354 e!2685333))

(declare-fun c!733838 () Bool)

(assert (=> d!1269354 (= c!733838 (contains!10341 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846))))

(declare-fun e!2685338 () List!48448)

(assert (=> d!1269354 (= lt!1535999 e!2685338)))

(declare-fun c!733837 () Bool)

(assert (=> d!1269354 (= c!733837 (= lt!1535846 (bvneg lt!1535846)))))

(assert (=> d!1269354 (valid!3731 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))

(assert (=> d!1269354 (= (apply!11102 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846) lt!1535999)))

(declare-fun b!4316637 () Bool)

(declare-fun e!2685334 () List!48448)

(assert (=> b!4316637 (= e!2685334 (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))))

(declare-fun b!4316649 () Bool)

(assert (=> b!4316649 (= e!2685333 (= lt!1535999 (get!15649 (getValueByKey!284 (toList!2511 (map!10344 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) lt!1535846))))))

(declare-fun b!4316650 () Bool)

(declare-fun lt!1536006 () Unit!67549)

(declare-fun lt!1535998 () Unit!67549)

(assert (=> b!4316650 (= lt!1536006 lt!1535998)))

(assert (=> b!4316650 e!2685339))

(assert (=> b!4316650 (= c!733841 (= lt!1535846 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!7 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 (_ BitVec 64) (_ BitVec 32) Int) Unit!67549)

(assert (=> b!4316650 (= lt!1535998 (lemmaKeyInListMapThenSameValueInArray!7 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846 (index!1447 lt!1536003) (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun lt!1536005 () Unit!67549)

(declare-fun lt!1536004 () Unit!67549)

(assert (=> b!4316650 (= lt!1536005 lt!1536004)))

(assert (=> b!4316650 (contains!10340 (getCurrentListMap!20 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (select (arr!7639 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (index!1447 lt!1536003)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!10 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 (_ BitVec 32) Int) Unit!67549)

(assert (=> b!4316650 (= lt!1536004 (lemmaValidKeyInArrayIsInListMap!10 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (index!1447 lt!1536003) (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun lt!1536008 () Unit!67549)

(declare-fun lt!1536000 () Unit!67549)

(assert (=> b!4316650 (= lt!1536008 lt!1536000)))

(assert (=> b!4316650 (arrayContainsKey!0 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17110 (_ BitVec 64) (_ BitVec 32)) Unit!67549)

(assert (=> b!4316650 (= lt!1536000 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846 (index!1447 lt!1536003)))))

(assert (=> b!4316650 (= e!2685340 (select (arr!7640 (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (index!1447 lt!1536003)))))

(declare-fun b!4316651 () Bool)

(assert (=> b!4316651 (= e!2685338 e!2685334)))

(declare-fun c!733840 () Bool)

(assert (=> b!4316651 (= c!733840 (and (= lt!1535846 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4316652 () Bool)

(assert (=> b!4316652 (= e!2685338 e!2685340)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!17110 (_ BitVec 32)) SeekEntryResult!17)

(assert (=> b!4316652 (= lt!1536003 (seekEntry!0 lt!1535846 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun lt!1536001 () Unit!67549)

(declare-fun lemmaSeekEntryGivesInRangeIndex!7 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 (_ BitVec 64)) Unit!67549)

(assert (=> b!4316652 (= lt!1536001 (lemmaSeekEntryGivesInRangeIndex!7 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846))))

(assert (=> b!4316652 (= lt!1536002 (seekEntry!0 lt!1535846 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun res!1769240 () Bool)

(assert (=> b!4316652 (= res!1769240 (not ((_ is Found!17) lt!1536002)))))

(assert (=> b!4316652 (=> res!1769240 e!2685332)))

(assert (=> b!4316652 e!2685332))

(declare-fun lt!1536007 () Unit!67549)

(assert (=> b!4316652 (= lt!1536007 lt!1536001)))

(declare-fun c!733836 () Bool)

(assert (=> b!4316652 (= c!733836 ((_ is Found!17) lt!1536003))))

(declare-fun b!4316653 () Bool)

(declare-fun c!733839 () Bool)

(assert (=> b!4316653 (= c!733839 (and (= lt!1535846 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!4316653 (= e!2685334 e!2685336)))

(declare-fun b!4316654 () Bool)

(assert (=> b!4316654 (= e!2685337 (= call!298682 (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(assert (= (and d!1269354 c!733837) b!4316651))

(assert (= (and d!1269354 (not c!733837)) b!4316652))

(assert (= (and b!4316651 c!733840) b!4316637))

(assert (= (and b!4316651 (not c!733840)) b!4316653))

(assert (= (and b!4316653 c!733839) b!4316643))

(assert (= (and b!4316653 (not c!733839)) b!4316646))

(assert (= (and b!4316652 (not res!1769240)) b!4316648))

(assert (= (and b!4316652 c!733836) b!4316650))

(assert (= (and b!4316652 (not c!733836)) b!4316641))

(assert (= (and b!4316650 c!733841) b!4316647))

(assert (= (and b!4316650 (not c!733841)) b!4316639))

(assert (= (and b!4316647 res!1769243) b!4316640))

(assert (= (and b!4316639 c!733835) b!4316638))

(assert (= (and b!4316639 (not c!733835)) b!4316644))

(assert (= (and b!4316638 res!1769242) b!4316654))

(assert (= (and b!4316644 res!1769241) b!4316645))

(assert (= (or b!4316654 b!4316645) bm!298680))

(assert (= (or b!4316654 b!4316645) bm!298679))

(assert (= (or b!4316640 bm!298680) bm!298677))

(assert (= (or b!4316640 bm!298679) bm!298678))

(assert (= (and d!1269354 c!733838) b!4316649))

(assert (= (and d!1269354 (not c!733838)) b!4316642))

(declare-fun b_lambda!126923 () Bool)

(assert (=> (not b_lambda!126923) (not b!4316641)))

(assert (=> b!4316641 t!355302))

(declare-fun b_and!340357 () Bool)

(assert (= b_and!340355 (and (=> t!355302 result!314814) b_and!340357)))

(declare-fun b_lambda!126925 () Bool)

(assert (=> (not b_lambda!126925) (not b!4316642)))

(assert (=> b!4316642 t!355302))

(declare-fun b_and!340359 () Bool)

(assert (= b_and!340357 (and (=> t!355302 result!314814) b_and!340359)))

(declare-fun b_lambda!126927 () Bool)

(assert (=> (not b_lambda!126927) (not b!4316646)))

(assert (=> b!4316646 t!355302))

(declare-fun b_and!340361 () Bool)

(assert (= b_and!340359 (and (=> t!355302 result!314814) b_and!340361)))

(declare-fun m!4910457 () Bool)

(assert (=> b!4316648 m!4910457))

(declare-fun m!4910459 () Bool)

(assert (=> b!4316645 m!4910459))

(declare-fun m!4910461 () Bool)

(assert (=> b!4316650 m!4910461))

(declare-fun m!4910463 () Bool)

(assert (=> b!4316650 m!4910463))

(assert (=> b!4316650 m!4910459))

(declare-fun m!4910465 () Bool)

(assert (=> b!4316650 m!4910465))

(declare-fun m!4910467 () Bool)

(assert (=> b!4316650 m!4910467))

(declare-fun m!4910469 () Bool)

(assert (=> b!4316650 m!4910469))

(declare-fun m!4910471 () Bool)

(assert (=> b!4316650 m!4910471))

(assert (=> b!4316650 m!4910461))

(assert (=> b!4316650 m!4910469))

(declare-fun m!4910473 () Bool)

(assert (=> b!4316650 m!4910473))

(assert (=> b!4316649 m!4910387))

(declare-fun m!4910475 () Bool)

(assert (=> b!4316649 m!4910475))

(assert (=> b!4316649 m!4910475))

(declare-fun m!4910477 () Bool)

(assert (=> b!4316649 m!4910477))

(assert (=> bm!298677 m!4910461))

(assert (=> d!1269354 m!4910335))

(assert (=> d!1269354 m!4910411))

(assert (=> b!4316646 m!4910397))

(declare-fun m!4910479 () Bool)

(assert (=> b!4316652 m!4910479))

(declare-fun m!4910481 () Bool)

(assert (=> b!4316652 m!4910481))

(declare-fun m!4910483 () Bool)

(assert (=> bm!298678 m!4910483))

(assert (=> b!4316642 m!4910397))

(assert (=> b!4316644 m!4910471))

(assert (=> b!4316641 m!4910397))

(assert (=> d!1269328 d!1269354))

(assert (=> d!1269328 d!1269344))

(declare-fun bs!605885 () Bool)

(declare-fun d!1269356 () Bool)

(assert (= bs!605885 (and d!1269356 d!1269348)))

(declare-fun lambda!133524 () Int)

(assert (=> bs!605885 (= lambda!133524 lambda!133518)))

(declare-fun bs!605886 () Bool)

(assert (= bs!605886 (and d!1269356 b!4316440)))

(assert (=> bs!605886 (not (= lambda!133524 lambda!133509))))

(declare-fun bs!605887 () Bool)

(assert (= bs!605887 (and d!1269356 b!4316521)))

(assert (=> bs!605887 (= lambda!133524 lambda!133512)))

(declare-fun bs!605888 () Bool)

(assert (= bs!605888 (and d!1269356 d!1269350)))

(assert (=> bs!605888 (= lambda!133524 lambda!133521)))

(declare-fun bs!605889 () Bool)

(assert (= bs!605889 (and d!1269356 b!4316538)))

(assert (=> bs!605889 (= lambda!133524 lambda!133515)))

(declare-fun e!2685343 () Bool)

(assert (=> d!1269356 e!2685343))

(declare-fun res!1769246 () Bool)

(assert (=> d!1269356 (=> (not res!1769246) (not e!2685343))))

(assert (=> d!1269356 (= res!1769246 (contains!10340 lt!1535908 (hash!1125 (hashF!6848 thiss!42308) key!2048)))))

(declare-fun lt!1536011 () Unit!67549)

(declare-fun choose!26338 (ListLongMap!1125 K!9564 Hashable!4643) Unit!67549)

(assert (=> d!1269356 (= lt!1536011 (choose!26338 lt!1535908 key!2048 (hashF!6848 thiss!42308)))))

(assert (=> d!1269356 (forall!8786 (toList!2511 lt!1535908) lambda!133524)))

(assert (=> d!1269356 (= (lemmaInGenericMapThenInLongMap!153 lt!1535908 key!2048 (hashF!6848 thiss!42308)) lt!1536011)))

(declare-fun b!4316657 () Bool)

(assert (=> b!4316657 (= e!2685343 (isDefined!7579 (getPair!153 (apply!11101 lt!1535908 (hash!1125 (hashF!6848 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1269356 res!1769246) b!4316657))

(assert (=> d!1269356 m!4910309))

(assert (=> d!1269356 m!4910309))

(declare-fun m!4910485 () Bool)

(assert (=> d!1269356 m!4910485))

(declare-fun m!4910487 () Bool)

(assert (=> d!1269356 m!4910487))

(declare-fun m!4910489 () Bool)

(assert (=> d!1269356 m!4910489))

(assert (=> b!4316657 m!4910309))

(assert (=> b!4316657 m!4910309))

(declare-fun m!4910491 () Bool)

(assert (=> b!4316657 m!4910491))

(assert (=> b!4316657 m!4910491))

(declare-fun m!4910493 () Bool)

(assert (=> b!4316657 m!4910493))

(assert (=> b!4316657 m!4910493))

(declare-fun m!4910495 () Bool)

(assert (=> b!4316657 m!4910495))

(assert (=> b!4316518 d!1269356))

(declare-fun d!1269358 () Bool)

(declare-fun res!1769247 () Bool)

(declare-fun e!2685344 () Bool)

(assert (=> d!1269358 (=> res!1769247 e!2685344)))

(assert (=> d!1269358 (= res!1769247 ((_ is Nil!48325) (t!355300 (toList!2511 lt!1535845))))))

(assert (=> d!1269358 (= (forall!8786 (t!355300 (toList!2511 lt!1535845)) lambda!133509) e!2685344)))

(declare-fun b!4316658 () Bool)

(declare-fun e!2685345 () Bool)

(assert (=> b!4316658 (= e!2685344 e!2685345)))

(declare-fun res!1769248 () Bool)

(assert (=> b!4316658 (=> (not res!1769248) (not e!2685345))))

(assert (=> b!4316658 (= res!1769248 (dynLambda!20480 lambda!133509 (h!53777 (t!355300 (toList!2511 lt!1535845)))))))

(declare-fun b!4316659 () Bool)

(assert (=> b!4316659 (= e!2685345 (forall!8786 (t!355300 (t!355300 (toList!2511 lt!1535845))) lambda!133509))))

(assert (= (and d!1269358 (not res!1769247)) b!4316658))

(assert (= (and b!4316658 res!1769248) b!4316659))

(declare-fun b_lambda!126929 () Bool)

(assert (=> (not b_lambda!126929) (not b!4316658)))

(declare-fun m!4910497 () Bool)

(assert (=> b!4316658 m!4910497))

(declare-fun m!4910499 () Bool)

(assert (=> b!4316659 m!4910499))

(assert (=> b!4316545 d!1269358))

(declare-fun d!1269360 () Bool)

(assert (=> d!1269360 (= (valid!3730 (_2!26792 lt!1535862)) (valid!3731 (v!42612 (underlying!9683 (_2!26792 lt!1535862)))))))

(declare-fun bs!605890 () Bool)

(assert (= bs!605890 d!1269360))

(declare-fun m!4910501 () Bool)

(assert (=> bs!605890 m!4910501))

(assert (=> b!4316488 d!1269360))

(declare-fun d!1269362 () Bool)

(assert (=> d!1269362 (= (apply!11101 (ite c!733804 lt!1535908 call!298667) call!298668) (get!15649 (getValueByKey!284 (toList!2511 (ite c!733804 lt!1535908 call!298667)) call!298668)))))

(declare-fun bs!605891 () Bool)

(assert (= bs!605891 d!1269362))

(declare-fun m!4910503 () Bool)

(assert (=> bs!605891 m!4910503))

(assert (=> bs!605891 m!4910503))

(declare-fun m!4910505 () Bool)

(assert (=> bs!605891 m!4910505))

(assert (=> bm!298660 d!1269362))

(declare-fun d!1269364 () Bool)

(declare-fun choose!26339 (Hashable!4643 K!9564) (_ BitVec 64))

(assert (=> d!1269364 (= (hash!1126 (hashF!6848 thiss!42308) key!2048) (choose!26339 (hashF!6848 thiss!42308) key!2048))))

(declare-fun bs!605892 () Bool)

(assert (= bs!605892 d!1269364))

(declare-fun m!4910507 () Bool)

(assert (=> bs!605892 m!4910507))

(assert (=> d!1269320 d!1269364))

(declare-fun bm!298729 () Bool)

(declare-fun call!298741 () ListLongMap!1125)

(assert (=> bm!298729 (= call!298741 (getCurrentListMap!20 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) #b00000000000000000000000000000000 (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(declare-fun b!4316740 () Bool)

(declare-fun e!2685400 () tuple2!47022)

(declare-fun e!2685396 () tuple2!47022)

(assert (=> b!4316740 (= e!2685400 e!2685396)))

(declare-fun c!733880 () Bool)

(assert (=> b!4316740 (= c!733880 (= lt!1535846 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4316741 () Bool)

(declare-fun e!2685405 () Unit!67549)

(declare-fun Unit!67558 () Unit!67549)

(assert (=> b!4316741 (= e!2685405 Unit!67558)))

(declare-fun lt!1536089 () Unit!67549)

(declare-fun call!298746 () Unit!67549)

(assert (=> b!4316741 (= lt!1536089 call!298746)))

(declare-fun lt!1536091 () SeekEntryResult!17)

(declare-fun call!298734 () SeekEntryResult!17)

(assert (=> b!4316741 (= lt!1536091 call!298734)))

(declare-fun c!733875 () Bool)

(assert (=> b!4316741 (= c!733875 ((_ is MissingZero!17) lt!1536091))))

(declare-fun e!2685389 () Bool)

(assert (=> b!4316741 e!2685389))

(declare-fun lt!1536072 () Unit!67549)

(assert (=> b!4316741 (= lt!1536072 lt!1536089)))

(assert (=> b!4316741 false))

(declare-fun b!4316742 () Bool)

(declare-fun res!1769290 () Bool)

(declare-fun call!298754 () Bool)

(assert (=> b!4316742 (= res!1769290 call!298754)))

(declare-fun e!2685397 () Bool)

(assert (=> b!4316742 (=> (not res!1769290) (not e!2685397))))

(declare-fun b!4316743 () Bool)

(declare-fun e!2685395 () Unit!67549)

(declare-fun Unit!67559 () Unit!67549)

(assert (=> b!4316743 (= e!2685395 Unit!67559)))

(declare-fun lt!1536081 () Unit!67549)

(declare-fun call!298757 () Unit!67549)

(assert (=> b!4316743 (= lt!1536081 call!298757)))

(declare-fun lt!1536088 () SeekEntryResult!17)

(declare-fun call!298751 () SeekEntryResult!17)

(assert (=> b!4316743 (= lt!1536088 call!298751)))

(declare-fun res!1769289 () Bool)

(assert (=> b!4316743 (= res!1769289 ((_ is Found!17) lt!1536088))))

(declare-fun e!2685394 () Bool)

(assert (=> b!4316743 (=> (not res!1769289) (not e!2685394))))

(assert (=> b!4316743 e!2685394))

(declare-fun lt!1536087 () Unit!67549)

(assert (=> b!4316743 (= lt!1536087 lt!1536081)))

(assert (=> b!4316743 false))

(declare-fun b!4316744 () Bool)

(declare-fun e!2685388 () Bool)

(declare-fun call!298738 () Bool)

(assert (=> b!4316744 (= e!2685388 (not call!298738))))

(declare-fun b!4316745 () Bool)

(declare-fun e!2685403 () Bool)

(assert (=> b!4316745 (= e!2685403 ((_ is Undefined!17) lt!1536091))))

(declare-fun b!4316746 () Bool)

(declare-fun e!2685404 () Bool)

(declare-fun call!298749 () Bool)

(assert (=> b!4316746 (= e!2685404 (not call!298749))))

(declare-fun b!4316747 () Bool)

(declare-fun e!2685408 () ListLongMap!1125)

(declare-fun call!298747 () ListLongMap!1125)

(assert (=> b!4316747 (= e!2685408 call!298747)))

(declare-fun b!4316748 () Bool)

(declare-fun lt!1536067 () Unit!67549)

(assert (=> b!4316748 (= lt!1536067 e!2685395)))

(declare-fun c!733868 () Bool)

(declare-fun call!298755 () Bool)

(assert (=> b!4316748 (= c!733868 call!298755)))

(declare-fun e!2685390 () tuple2!47022)

(assert (=> b!4316748 (= e!2685390 (tuple2!47023 false (v!42612 (underlying!9683 (_2!26792 lt!1535864)))))))

(declare-fun bm!298730 () Bool)

(declare-fun call!298752 () Bool)

(assert (=> bm!298730 (= call!298749 call!298752)))

(declare-fun bm!298731 () Bool)

(assert (=> bm!298731 (= call!298752 (arrayContainsKey!0 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) lt!1535846 #b00000000000000000000000000000000))))

(declare-fun b!4316749 () Bool)

(declare-fun e!2685398 () tuple2!47022)

(declare-fun e!2685392 () tuple2!47022)

(assert (=> b!4316749 (= e!2685398 e!2685392)))

(declare-fun c!733872 () Bool)

(declare-fun lt!1536068 () SeekEntryResult!17)

(assert (=> b!4316749 (= c!733872 ((_ is MissingZero!17) lt!1536068))))

(declare-fun bm!298732 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!7 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 (_ BitVec 64) Int) Unit!67549)

(assert (=> bm!298732 (= call!298746 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!7 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) lt!1535846 (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(declare-fun bm!298733 () Bool)

(declare-fun call!298745 () Bool)

(assert (=> bm!298733 (= call!298745 call!298754)))

(declare-fun bm!298734 () Bool)

(declare-fun call!298742 () Bool)

(assert (=> bm!298734 (= call!298754 call!298742)))

(declare-fun b!4316750 () Bool)

(declare-fun lt!1536078 () Unit!67549)

(declare-fun lt!1536086 () Unit!67549)

(assert (=> b!4316750 (= lt!1536078 lt!1536086)))

(declare-fun call!298739 () ListLongMap!1125)

(declare-fun call!298740 () ListLongMap!1125)

(assert (=> b!4316750 (= call!298739 call!298740)))

(declare-fun lt!1536082 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!7 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 List!48448 Int) Unit!67549)

(assert (=> b!4316750 (= lt!1536086 (lemmaChangeZeroKeyThenAddPairToListMap!7 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) lt!1536082 (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(assert (=> b!4316750 (= lt!1536082 (bvor (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) #b00000000000000000000000000000001))))

(assert (=> b!4316750 (= e!2685396 (tuple2!47023 true (LongMapFixedSize!9455 (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (bvor (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) #b00000000000000000000000000000001) (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_size!9497 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_vacant!4788 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))))))))

(declare-fun bm!298735 () Bool)

(declare-fun c!733876 () Bool)

(declare-fun c!733871 () Bool)

(assert (=> bm!298735 (= c!733876 c!733871)))

(assert (=> bm!298735 (= call!298755 (contains!10340 e!2685408 (ite c!733871 lt!1535846 (select (arr!7639 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1447 lt!1536068)))))))

(declare-fun bm!298736 () Bool)

(declare-fun call!298753 () ListLongMap!1125)

(assert (=> bm!298736 (= call!298753 (map!10344 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))))))

(declare-fun b!4316751 () Bool)

(declare-fun res!1769285 () Bool)

(assert (=> b!4316751 (=> (not res!1769285) (not e!2685388))))

(assert (=> b!4316751 (= res!1769285 call!298745)))

(assert (=> b!4316751 (= e!2685389 e!2685388)))

(declare-fun b!4316752 () Bool)

(assert (=> b!4316752 (= e!2685400 e!2685390)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17110 (_ BitVec 32)) SeekEntryResult!17)

(assert (=> b!4316752 (= lt!1536068 (seekEntryOrOpen!0 lt!1535846 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(assert (=> b!4316752 (= c!733871 ((_ is Undefined!17) lt!1536068))))

(declare-fun b!4316753 () Bool)

(declare-fun lt!1536084 () Unit!67549)

(declare-fun lt!1536077 () Unit!67549)

(assert (=> b!4316753 (= lt!1536084 lt!1536077)))

(assert (=> b!4316753 (= call!298739 call!298740)))

(declare-fun lt!1536066 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!7 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 List!48448 Int) Unit!67549)

(assert (=> b!4316753 (= lt!1536077 (lemmaChangeLongMinValueKeyThenAddPairToListMap!7 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) lt!1536066 (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847) (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(assert (=> b!4316753 (= lt!1536066 (bvor (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) #b00000000000000000000000000000010))))

(assert (=> b!4316753 (= e!2685396 (tuple2!47023 true (LongMapFixedSize!9455 (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (bvor (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) #b00000000000000000000000000000010) (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847) (_size!9497 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_vacant!4788 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))))))))

(declare-fun bm!298737 () Bool)

(assert (=> bm!298737 (= call!298747 call!298741)))

(declare-fun b!4316754 () Bool)

(declare-fun e!2685402 () Bool)

(assert (=> b!4316754 (= e!2685402 e!2685404)))

(declare-fun res!1769278 () Bool)

(declare-fun call!298743 () Bool)

(assert (=> b!4316754 (= res!1769278 call!298743)))

(assert (=> b!4316754 (=> (not res!1769278) (not e!2685404))))

(declare-fun lt!1536080 () SeekEntryResult!17)

(declare-fun b!4316755 () Bool)

(assert (=> b!4316755 (= e!2685397 (= (select (arr!7639 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1447 lt!1536080)) lt!1535846))))

(declare-fun b!4316756 () Bool)

(declare-fun c!733877 () Bool)

(assert (=> b!4316756 (= c!733877 ((_ is MissingVacant!17) lt!1536091))))

(assert (=> b!4316756 (= e!2685389 e!2685403)))

(declare-fun bm!298738 () Bool)

(declare-fun call!298750 () Bool)

(assert (=> bm!298738 (= call!298750 call!298742)))

(declare-fun b!4316757 () Bool)

(declare-fun e!2685399 () Bool)

(declare-fun e!2685406 () Bool)

(assert (=> b!4316757 (= e!2685399 e!2685406)))

(declare-fun res!1769277 () Bool)

(declare-fun call!298744 () ListLongMap!1125)

(assert (=> b!4316757 (= res!1769277 (contains!10340 call!298744 lt!1535846))))

(assert (=> b!4316757 (=> (not res!1769277) (not e!2685406))))

(declare-fun b!4316758 () Bool)

(declare-fun c!733870 () Bool)

(declare-fun lt!1536085 () SeekEntryResult!17)

(assert (=> b!4316758 (= c!733870 ((_ is MissingVacant!17) lt!1536085))))

(declare-fun e!2685391 () Bool)

(assert (=> b!4316758 (= e!2685391 e!2685402)))

(declare-fun c!733879 () Bool)

(declare-fun call!298748 () ListLongMap!1125)

(declare-fun bm!298739 () Bool)

(assert (=> bm!298739 (= call!298748 (getCurrentListMap!20 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (ite c!733879 (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (array!17113 (store (arr!7640 (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1447 lt!1536068) (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)) (size!35679 (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (ite c!733879 (ite c!733880 lt!1536082 lt!1536066) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (ite (and c!733879 c!733880) (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847) (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (ite c!733879 (ite c!733880 (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) #b00000000000000000000000000000000 (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(declare-fun b!4316759 () Bool)

(declare-fun lt!1536076 () Unit!67549)

(declare-fun lt!1536075 () Unit!67549)

(assert (=> b!4316759 (= lt!1536076 lt!1536075)))

(assert (=> b!4316759 call!298755))

(declare-fun lt!1536074 () array!17112)

(assert (=> b!4316759 (= lt!1536075 (lemmaValidKeyInArrayIsInListMap!10 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) lt!1536074 (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (index!1447 lt!1536068) (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(assert (=> b!4316759 (= lt!1536074 (array!17113 (store (arr!7640 (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1447 lt!1536068) (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)) (size!35679 (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))))))))

(declare-fun lt!1536073 () Unit!67549)

(declare-fun lt!1536079 () Unit!67549)

(assert (=> b!4316759 (= lt!1536073 lt!1536079)))

(declare-fun call!298737 () ListLongMap!1125)

(assert (=> b!4316759 (= call!298737 call!298748)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!7 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 (_ BitVec 32) (_ BitVec 64) List!48448 Int) Unit!67549)

(assert (=> b!4316759 (= lt!1536079 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!7 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (index!1447 lt!1536068) lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847) (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(declare-fun lt!1536070 () Unit!67549)

(assert (=> b!4316759 (= lt!1536070 e!2685405)))

(declare-fun c!733878 () Bool)

(assert (=> b!4316759 (= c!733878 (contains!10340 call!298747 lt!1535846))))

(assert (=> b!4316759 (= e!2685392 (tuple2!47023 true (LongMapFixedSize!9455 (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_size!9497 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (array!17113 (store (arr!7640 (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1447 lt!1536068) (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)) (size!35679 (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))))) (_vacant!4788 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))))))))

(declare-fun b!4316760 () Bool)

(assert (=> b!4316760 (= e!2685399 (= call!298744 call!298753))))

(declare-fun bm!298740 () Bool)

(assert (=> bm!298740 (= call!298743 call!298750)))

(declare-fun b!4316761 () Bool)

(declare-fun e!2685401 () Bool)

(assert (=> b!4316761 (= e!2685401 e!2685399)))

(declare-fun c!733874 () Bool)

(declare-fun lt!1536092 () tuple2!47022)

(assert (=> b!4316761 (= c!733874 (_1!26793 lt!1536092))))

(declare-fun b!4316762 () Bool)

(assert (=> b!4316762 (= e!2685408 (getCurrentListMap!20 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) lt!1536074 (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) #b00000000000000000000000000000000 (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(declare-fun b!4316763 () Bool)

(declare-fun res!1769284 () Bool)

(assert (=> b!4316763 (= res!1769284 (= (select (arr!7639 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1449 lt!1536085)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4316763 (=> (not res!1769284) (not e!2685404))))

(declare-fun b!4316764 () Bool)

(declare-fun res!1769288 () Bool)

(assert (=> b!4316764 (= res!1769288 (= (select (arr!7639 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1449 lt!1536091)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2685407 () Bool)

(assert (=> b!4316764 (=> (not res!1769288) (not e!2685407))))

(declare-fun b!4316765 () Bool)

(assert (=> b!4316765 (= e!2685406 (= call!298744 (+!316 call!298753 (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))))))

(declare-fun b!4316766 () Bool)

(assert (=> b!4316766 (= e!2685403 e!2685407)))

(declare-fun res!1769287 () Bool)

(assert (=> b!4316766 (= res!1769287 call!298745)))

(assert (=> b!4316766 (=> (not res!1769287) (not e!2685407))))

(declare-fun bm!298741 () Bool)

(assert (=> bm!298741 (= call!298740 call!298748)))

(declare-fun b!4316767 () Bool)

(declare-fun lt!1536083 () tuple2!47022)

(declare-fun call!298736 () tuple2!47022)

(assert (=> b!4316767 (= lt!1536083 call!298736)))

(assert (=> b!4316767 (= e!2685392 (tuple2!47023 (_1!26793 lt!1536083) (_2!26793 lt!1536083)))))

(declare-fun b!4316768 () Bool)

(declare-fun lt!1536090 () Unit!67549)

(assert (=> b!4316768 (= e!2685405 lt!1536090)))

(assert (=> b!4316768 (= lt!1536090 call!298757)))

(assert (=> b!4316768 (= lt!1536080 call!298734)))

(declare-fun res!1769283 () Bool)

(assert (=> b!4316768 (= res!1769283 ((_ is Found!17) lt!1536080))))

(assert (=> b!4316768 (=> (not res!1769283) (not e!2685397))))

(assert (=> b!4316768 e!2685397))

(declare-fun bm!298742 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!7 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 (_ BitVec 64) Int) Unit!67549)

(assert (=> bm!298742 (= call!298757 (lemmaInListMapThenSeekEntryOrOpenFindsIt!7 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (_values!5008 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (extraKeys!4976 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (zeroValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (minValue!4986 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) lt!1535846 (defaultEntry!5112 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(declare-fun bm!298743 () Bool)

(assert (=> bm!298743 (= call!298739 call!298737)))

(declare-fun bm!298744 () Bool)

(declare-fun call!298756 () SeekEntryResult!17)

(assert (=> bm!298744 (= call!298751 call!298756)))

(declare-fun bm!298745 () Bool)

(assert (=> bm!298745 (= call!298744 (map!10344 (_2!26793 lt!1536092)))))

(declare-fun bm!298746 () Bool)

(assert (=> bm!298746 (= call!298738 call!298752)))

(declare-fun bm!298747 () Bool)

(declare-fun call!298735 () ListLongMap!1125)

(assert (=> bm!298747 (= call!298737 (+!316 (ite c!733879 call!298735 call!298747) (ite c!733879 (ite c!733880 (tuple2!47019 #b0000000000000000000000000000000000000000000000000000000000000000 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)) (tuple2!47019 #b1000000000000000000000000000000000000000000000000000000000000000 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847))) (tuple2!47019 lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)))))))

(declare-fun b!4316769 () Bool)

(declare-fun res!1769281 () Bool)

(declare-fun e!2685393 () Bool)

(assert (=> b!4316769 (=> (not res!1769281) (not e!2685393))))

(assert (=> b!4316769 (= res!1769281 call!298743)))

(assert (=> b!4316769 (= e!2685391 e!2685393)))

(declare-fun bm!298748 () Bool)

(assert (=> bm!298748 (= call!298735 call!298741)))

(declare-fun bm!298749 () Bool)

(assert (=> bm!298749 (= call!298734 call!298756)))

(declare-fun b!4316770 () Bool)

(declare-fun res!1769279 () Bool)

(assert (=> b!4316770 (=> (not res!1769279) (not e!2685388))))

(assert (=> b!4316770 (= res!1769279 (= (select (arr!7639 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1448 lt!1536091)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4316771 () Bool)

(declare-fun lt!1536071 () tuple2!47022)

(assert (=> b!4316771 (= e!2685398 (tuple2!47023 (_1!26793 lt!1536071) (_2!26793 lt!1536071)))))

(assert (=> b!4316771 (= lt!1536071 call!298736)))

(declare-fun b!4316772 () Bool)

(declare-fun res!1769286 () Bool)

(assert (=> b!4316772 (= res!1769286 call!298750)))

(assert (=> b!4316772 (=> (not res!1769286) (not e!2685394))))

(declare-fun b!4316773 () Bool)

(assert (=> b!4316773 (= e!2685402 ((_ is Undefined!17) lt!1536085))))

(declare-fun bm!298750 () Bool)

(declare-fun c!733873 () Bool)

(assert (=> bm!298750 (= call!298742 (inRange!0 (ite c!733871 (ite c!733868 (index!1447 lt!1536088) (ite c!733873 (index!1448 lt!1536085) (index!1449 lt!1536085))) (ite c!733878 (index!1447 lt!1536080) (ite c!733875 (index!1448 lt!1536091) (index!1449 lt!1536091)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(declare-fun b!4316774 () Bool)

(assert (=> b!4316774 (= e!2685393 (not call!298749))))

(declare-fun c!733869 () Bool)

(declare-fun bm!298751 () Bool)

(declare-fun updateHelperNewKey!7 (LongMapFixedSize!9454 (_ BitVec 64) List!48448 (_ BitVec 32)) tuple2!47022)

(assert (=> bm!298751 (= call!298736 (updateHelperNewKey!7 (v!42612 (underlying!9683 (_2!26792 lt!1535864))) lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847) (ite c!733869 (index!1449 lt!1536068) (index!1448 lt!1536068))))))

(declare-fun b!4316775 () Bool)

(assert (=> b!4316775 (= c!733869 ((_ is MissingVacant!17) lt!1536068))))

(assert (=> b!4316775 (= e!2685390 e!2685398)))

(declare-fun d!1269366 () Bool)

(assert (=> d!1269366 e!2685401))

(declare-fun res!1769280 () Bool)

(assert (=> d!1269366 (=> (not res!1769280) (not e!2685401))))

(assert (=> d!1269366 (= res!1769280 (valid!3731 (_2!26793 lt!1536092)))))

(assert (=> d!1269366 (= lt!1536092 e!2685400)))

(assert (=> d!1269366 (= c!733879 (= lt!1535846 (bvneg lt!1535846)))))

(assert (=> d!1269366 (valid!3731 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))

(assert (=> d!1269366 (= (update!500 (v!42612 (underlying!9683 (_2!26792 lt!1535864))) lt!1535846 (Cons!48324 (tuple2!47017 key!2048 v!9179) lt!1535847)) lt!1536092)))

(declare-fun bm!298752 () Bool)

(assert (=> bm!298752 (= call!298756 (seekEntryOrOpen!0 lt!1535846 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864)))) (mask!13319 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))))))

(declare-fun b!4316776 () Bool)

(declare-fun lt!1536069 () Unit!67549)

(assert (=> b!4316776 (= e!2685395 lt!1536069)))

(assert (=> b!4316776 (= lt!1536069 call!298746)))

(assert (=> b!4316776 (= lt!1536085 call!298751)))

(assert (=> b!4316776 (= c!733873 ((_ is MissingZero!17) lt!1536085))))

(assert (=> b!4316776 e!2685391))

(declare-fun b!4316777 () Bool)

(declare-fun res!1769282 () Bool)

(assert (=> b!4316777 (=> (not res!1769282) (not e!2685393))))

(assert (=> b!4316777 (= res!1769282 (= (select (arr!7639 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1448 lt!1536085)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4316778 () Bool)

(assert (=> b!4316778 (= e!2685407 (not call!298738))))

(declare-fun b!4316779 () Bool)

(assert (=> b!4316779 (= e!2685394 (= (select (arr!7639 (_keys!5027 (v!42612 (underlying!9683 (_2!26792 lt!1535864))))) (index!1447 lt!1536088)) lt!1535846))))

(assert (= (and d!1269366 c!733879) b!4316740))

(assert (= (and d!1269366 (not c!733879)) b!4316752))

(assert (= (and b!4316740 c!733880) b!4316750))

(assert (= (and b!4316740 (not c!733880)) b!4316753))

(assert (= (or b!4316750 b!4316753) bm!298741))

(assert (= (or b!4316750 b!4316753) bm!298748))

(assert (= (or b!4316750 b!4316753) bm!298743))

(assert (= (and b!4316752 c!733871) b!4316748))

(assert (= (and b!4316752 (not c!733871)) b!4316775))

(assert (= (and b!4316748 c!733868) b!4316743))

(assert (= (and b!4316748 (not c!733868)) b!4316776))

(assert (= (and b!4316743 res!1769289) b!4316772))

(assert (= (and b!4316772 res!1769286) b!4316779))

(assert (= (and b!4316776 c!733873) b!4316769))

(assert (= (and b!4316776 (not c!733873)) b!4316758))

(assert (= (and b!4316769 res!1769281) b!4316777))

(assert (= (and b!4316777 res!1769282) b!4316774))

(assert (= (and b!4316758 c!733870) b!4316754))

(assert (= (and b!4316758 (not c!733870)) b!4316773))

(assert (= (and b!4316754 res!1769278) b!4316763))

(assert (= (and b!4316763 res!1769284) b!4316746))

(assert (= (or b!4316774 b!4316746) bm!298730))

(assert (= (or b!4316769 b!4316754) bm!298740))

(assert (= (or b!4316772 bm!298740) bm!298738))

(assert (= (or b!4316743 b!4316776) bm!298744))

(assert (= (and b!4316775 c!733869) b!4316771))

(assert (= (and b!4316775 (not c!733869)) b!4316749))

(assert (= (and b!4316749 c!733872) b!4316767))

(assert (= (and b!4316749 (not c!733872)) b!4316759))

(assert (= (and b!4316759 c!733878) b!4316768))

(assert (= (and b!4316759 (not c!733878)) b!4316741))

(assert (= (and b!4316768 res!1769283) b!4316742))

(assert (= (and b!4316742 res!1769290) b!4316755))

(assert (= (and b!4316741 c!733875) b!4316751))

(assert (= (and b!4316741 (not c!733875)) b!4316756))

(assert (= (and b!4316751 res!1769285) b!4316770))

(assert (= (and b!4316770 res!1769279) b!4316744))

(assert (= (and b!4316756 c!733877) b!4316766))

(assert (= (and b!4316756 (not c!733877)) b!4316745))

(assert (= (and b!4316766 res!1769287) b!4316764))

(assert (= (and b!4316764 res!1769288) b!4316778))

(assert (= (or b!4316744 b!4316778) bm!298746))

(assert (= (or b!4316751 b!4316766) bm!298733))

(assert (= (or b!4316742 bm!298733) bm!298734))

(assert (= (or b!4316768 b!4316741) bm!298749))

(assert (= (or b!4316771 b!4316767) bm!298751))

(assert (= (or bm!298744 bm!298749) bm!298752))

(assert (= (or bm!298730 bm!298746) bm!298731))

(assert (= (or b!4316743 b!4316768) bm!298742))

(assert (= (or b!4316776 b!4316741) bm!298732))

(assert (= (or bm!298738 bm!298734) bm!298750))

(assert (= (or b!4316748 b!4316759) bm!298737))

(assert (= (or b!4316748 b!4316759) bm!298735))

(assert (= (and bm!298735 c!733876) b!4316747))

(assert (= (and bm!298735 (not c!733876)) b!4316762))

(assert (= (or bm!298748 bm!298737) bm!298729))

(assert (= (or bm!298741 b!4316759) bm!298739))

(assert (= (or bm!298743 b!4316759) bm!298747))

(assert (= (and d!1269366 res!1769280) b!4316761))

(assert (= (and b!4316761 c!733874) b!4316757))

(assert (= (and b!4316761 (not c!733874)) b!4316760))

(assert (= (and b!4316757 res!1769277) b!4316765))

(assert (= (or b!4316765 b!4316760) bm!298736))

(assert (= (or b!4316757 b!4316765 b!4316760) bm!298745))

(declare-fun m!4910509 () Bool)

(assert (=> b!4316763 m!4910509))

(declare-fun m!4910511 () Bool)

(assert (=> bm!298739 m!4910511))

(declare-fun m!4910513 () Bool)

(assert (=> bm!298739 m!4910513))

(declare-fun m!4910515 () Bool)

(assert (=> bm!298751 m!4910515))

(declare-fun m!4910517 () Bool)

(assert (=> b!4316755 m!4910517))

(declare-fun m!4910519 () Bool)

(assert (=> b!4316750 m!4910519))

(declare-fun m!4910521 () Bool)

(assert (=> b!4316762 m!4910521))

(declare-fun m!4910523 () Bool)

(assert (=> b!4316764 m!4910523))

(declare-fun m!4910525 () Bool)

(assert (=> d!1269366 m!4910525))

(declare-fun m!4910527 () Bool)

(assert (=> d!1269366 m!4910527))

(declare-fun m!4910529 () Bool)

(assert (=> b!4316770 m!4910529))

(declare-fun m!4910531 () Bool)

(assert (=> b!4316757 m!4910531))

(declare-fun m!4910533 () Bool)

(assert (=> bm!298750 m!4910533))

(declare-fun m!4910535 () Bool)

(assert (=> bm!298747 m!4910535))

(declare-fun m!4910537 () Bool)

(assert (=> bm!298736 m!4910537))

(declare-fun m!4910539 () Bool)

(assert (=> bm!298729 m!4910539))

(declare-fun m!4910541 () Bool)

(assert (=> bm!298742 m!4910541))

(declare-fun m!4910543 () Bool)

(assert (=> bm!298731 m!4910543))

(declare-fun m!4910545 () Bool)

(assert (=> b!4316779 m!4910545))

(declare-fun m!4910547 () Bool)

(assert (=> bm!298735 m!4910547))

(declare-fun m!4910549 () Bool)

(assert (=> bm!298735 m!4910549))

(declare-fun m!4910551 () Bool)

(assert (=> b!4316752 m!4910551))

(declare-fun m!4910553 () Bool)

(assert (=> b!4316759 m!4910553))

(assert (=> b!4316759 m!4910511))

(declare-fun m!4910555 () Bool)

(assert (=> b!4316759 m!4910555))

(declare-fun m!4910557 () Bool)

(assert (=> b!4316759 m!4910557))

(declare-fun m!4910559 () Bool)

(assert (=> b!4316765 m!4910559))

(declare-fun m!4910561 () Bool)

(assert (=> bm!298745 m!4910561))

(assert (=> bm!298752 m!4910551))

(declare-fun m!4910563 () Bool)

(assert (=> b!4316777 m!4910563))

(declare-fun m!4910565 () Bool)

(assert (=> b!4316753 m!4910565))

(declare-fun m!4910567 () Bool)

(assert (=> bm!298732 m!4910567))

(assert (=> b!4316486 d!1269366))

(declare-fun d!1269368 () Bool)

(assert (=> d!1269368 (= (get!15649 (getValueByKey!284 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846)) (v!42619 (getValueByKey!284 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846)))))

(assert (=> b!4316532 d!1269368))

(declare-fun b!4316791 () Bool)

(declare-fun e!2685414 () Option!10279)

(assert (=> b!4316791 (= e!2685414 None!10278)))

(declare-fun b!4316789 () Bool)

(declare-fun e!2685413 () Option!10279)

(assert (=> b!4316789 (= e!2685413 e!2685414)))

(declare-fun c!733886 () Bool)

(assert (=> b!4316789 (= c!733886 (and ((_ is Cons!48325) (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) (not (= (_1!26791 (h!53777 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) lt!1535846))))))

(declare-fun d!1269370 () Bool)

(declare-fun c!733885 () Bool)

(assert (=> d!1269370 (= c!733885 (and ((_ is Cons!48325) (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) (= (_1!26791 (h!53777 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) lt!1535846)))))

(assert (=> d!1269370 (= (getValueByKey!284 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846) e!2685413)))

(declare-fun b!4316790 () Bool)

(assert (=> b!4316790 (= e!2685414 (getValueByKey!284 (t!355300 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846))))

(declare-fun b!4316788 () Bool)

(assert (=> b!4316788 (= e!2685413 (Some!10278 (_2!26791 (h!53777 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))))))

(assert (= (and d!1269370 c!733885) b!4316788))

(assert (= (and d!1269370 (not c!733885)) b!4316789))

(assert (= (and b!4316789 c!733886) b!4316790))

(assert (= (and b!4316789 (not c!733886)) b!4316791))

(declare-fun m!4910569 () Bool)

(assert (=> b!4316790 m!4910569))

(assert (=> b!4316532 d!1269370))

(assert (=> b!4316532 d!1269324))

(declare-fun d!1269372 () Bool)

(assert (=> d!1269372 (containsKey!379 lt!1535926 lt!1535924)))

(declare-fun lt!1536095 () Unit!67549)

(declare-fun choose!26340 (List!48449 (_ BitVec 64)) Unit!67549)

(assert (=> d!1269372 (= lt!1536095 (choose!26340 lt!1535926 lt!1535924))))

(declare-fun e!2685417 () Bool)

(assert (=> d!1269372 e!2685417))

(declare-fun res!1769293 () Bool)

(assert (=> d!1269372 (=> (not res!1769293) (not e!2685417))))

(declare-fun isStrictlySorted!17 (List!48449) Bool)

(assert (=> d!1269372 (= res!1769293 (isStrictlySorted!17 lt!1535926))))

(assert (=> d!1269372 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!154 lt!1535926 lt!1535924) lt!1536095)))

(declare-fun b!4316794 () Bool)

(assert (=> b!4316794 (= e!2685417 (isDefined!7580 (getValueByKey!284 lt!1535926 lt!1535924)))))

(assert (= (and d!1269372 res!1769293) b!4316794))

(assert (=> d!1269372 m!4910341))

(declare-fun m!4910571 () Bool)

(assert (=> d!1269372 m!4910571))

(declare-fun m!4910573 () Bool)

(assert (=> d!1269372 m!4910573))

(declare-fun m!4910575 () Bool)

(assert (=> b!4316794 m!4910575))

(assert (=> b!4316794 m!4910575))

(declare-fun m!4910577 () Bool)

(assert (=> b!4316794 m!4910577))

(assert (=> b!4316526 d!1269372))

(declare-fun d!1269374 () Bool)

(assert (=> d!1269374 (contains!10343 lt!1535915 (tuple2!47019 lt!1535924 lt!1535914))))

(declare-fun lt!1536098 () Unit!67549)

(declare-fun choose!26341 (List!48449 (_ BitVec 64) List!48448) Unit!67549)

(assert (=> d!1269374 (= lt!1536098 (choose!26341 lt!1535915 lt!1535924 lt!1535914))))

(declare-fun e!2685420 () Bool)

(assert (=> d!1269374 e!2685420))

(declare-fun res!1769296 () Bool)

(assert (=> d!1269374 (=> (not res!1769296) (not e!2685420))))

(assert (=> d!1269374 (= res!1769296 (isStrictlySorted!17 lt!1535915))))

(assert (=> d!1269374 (= (lemmaGetValueByKeyImpliesContainsTuple!165 lt!1535915 lt!1535924 lt!1535914) lt!1536098)))

(declare-fun b!4316797 () Bool)

(assert (=> b!4316797 (= e!2685420 (= (getValueByKey!284 lt!1535915 lt!1535924) (Some!10278 lt!1535914)))))

(assert (= (and d!1269374 res!1769296) b!4316797))

(assert (=> d!1269374 m!4910343))

(declare-fun m!4910579 () Bool)

(assert (=> d!1269374 m!4910579))

(declare-fun m!4910581 () Bool)

(assert (=> d!1269374 m!4910581))

(declare-fun m!4910583 () Bool)

(assert (=> b!4316797 m!4910583))

(assert (=> b!4316526 d!1269374))

(declare-fun d!1269376 () Bool)

(assert (=> d!1269376 (isDefined!7580 (getValueByKey!284 lt!1535909 lt!1535924))))

(declare-fun lt!1536101 () Unit!67549)

(declare-fun choose!26342 (List!48449 (_ BitVec 64)) Unit!67549)

(assert (=> d!1269376 (= lt!1536101 (choose!26342 lt!1535909 lt!1535924))))

(declare-fun e!2685423 () Bool)

(assert (=> d!1269376 e!2685423))

(declare-fun res!1769299 () Bool)

(assert (=> d!1269376 (=> (not res!1769299) (not e!2685423))))

(assert (=> d!1269376 (= res!1769299 (isStrictlySorted!17 lt!1535909))))

(assert (=> d!1269376 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!203 lt!1535909 lt!1535924) lt!1536101)))

(declare-fun b!4316800 () Bool)

(assert (=> b!4316800 (= e!2685423 (containsKey!379 lt!1535909 lt!1535924))))

(assert (= (and d!1269376 res!1769299) b!4316800))

(assert (=> d!1269376 m!4910347))

(assert (=> d!1269376 m!4910347))

(assert (=> d!1269376 m!4910351))

(declare-fun m!4910585 () Bool)

(assert (=> d!1269376 m!4910585))

(declare-fun m!4910587 () Bool)

(assert (=> d!1269376 m!4910587))

(declare-fun m!4910589 () Bool)

(assert (=> b!4316800 m!4910589))

(assert (=> b!4316526 d!1269376))

(declare-fun d!1269378 () Bool)

(declare-fun isEmpty!28091 (Option!10279) Bool)

(assert (=> d!1269378 (= (isDefined!7580 (getValueByKey!284 lt!1535909 lt!1535924)) (not (isEmpty!28091 (getValueByKey!284 lt!1535909 lt!1535924))))))

(declare-fun bs!605893 () Bool)

(assert (= bs!605893 d!1269378))

(assert (=> bs!605893 m!4910347))

(declare-fun m!4910591 () Bool)

(assert (=> bs!605893 m!4910591))

(assert (=> b!4316526 d!1269378))

(declare-fun b!4316804 () Bool)

(declare-fun e!2685425 () Option!10279)

(assert (=> b!4316804 (= e!2685425 None!10278)))

(declare-fun b!4316802 () Bool)

(declare-fun e!2685424 () Option!10279)

(assert (=> b!4316802 (= e!2685424 e!2685425)))

(declare-fun c!733888 () Bool)

(assert (=> b!4316802 (= c!733888 (and ((_ is Cons!48325) lt!1535909) (not (= (_1!26791 (h!53777 lt!1535909)) lt!1535924))))))

(declare-fun d!1269380 () Bool)

(declare-fun c!733887 () Bool)

(assert (=> d!1269380 (= c!733887 (and ((_ is Cons!48325) lt!1535909) (= (_1!26791 (h!53777 lt!1535909)) lt!1535924)))))

(assert (=> d!1269380 (= (getValueByKey!284 lt!1535909 lt!1535924) e!2685424)))

(declare-fun b!4316803 () Bool)

(assert (=> b!4316803 (= e!2685425 (getValueByKey!284 (t!355300 lt!1535909) lt!1535924))))

(declare-fun b!4316801 () Bool)

(assert (=> b!4316801 (= e!2685424 (Some!10278 (_2!26791 (h!53777 lt!1535909))))))

(assert (= (and d!1269380 c!733887) b!4316801))

(assert (= (and d!1269380 (not c!733887)) b!4316802))

(assert (= (and b!4316802 c!733888) b!4316803))

(assert (= (and b!4316802 (not c!733888)) b!4316804))

(declare-fun m!4910593 () Bool)

(assert (=> b!4316803 m!4910593))

(assert (=> b!4316526 d!1269380))

(declare-fun d!1269382 () Bool)

(declare-fun e!2685426 () Bool)

(assert (=> d!1269382 e!2685426))

(declare-fun c!733889 () Bool)

(assert (=> d!1269382 (= c!733889 (contains!10339 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))

(declare-fun lt!1536102 () List!48448)

(assert (=> d!1269382 (= lt!1536102 (apply!11102 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))) lt!1535924))))

(assert (=> d!1269382 (valid!3730 (v!42613 (underlying!9684 thiss!42308)))))

(assert (=> d!1269382 (= (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924) lt!1536102)))

(declare-fun b!4316805 () Bool)

(assert (=> b!4316805 (= e!2685426 (= lt!1536102 (get!15649 (getValueByKey!284 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lt!1535924))))))

(declare-fun b!4316806 () Bool)

(assert (=> b!4316806 (= e!2685426 (= lt!1536102 (dynLambda!20479 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535924)))))

(assert (=> b!4316806 ((_ is LongMap!4727) (v!42613 (underlying!9684 thiss!42308)))))

(assert (= (and d!1269382 c!733889) b!4316805))

(assert (= (and d!1269382 (not c!733889)) b!4316806))

(declare-fun b_lambda!126931 () Bool)

(assert (=> (not b_lambda!126931) (not b!4316806)))

(declare-fun t!355304 () Bool)

(declare-fun tb!257339 () Bool)

(assert (=> (and b!4316450 (= (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) t!355304) tb!257339))

(assert (=> b!4316806 t!355304))

(declare-fun result!314820 () Bool)

(declare-fun b_and!340363 () Bool)

(assert (= b_and!340361 (and (=> t!355304 result!314820) b_and!340363)))

(assert (=> d!1269382 m!4910363))

(declare-fun m!4910595 () Bool)

(assert (=> d!1269382 m!4910595))

(assert (=> d!1269382 m!4910325))

(assert (=> b!4316805 m!4910293))

(declare-fun m!4910597 () Bool)

(assert (=> b!4316805 m!4910597))

(assert (=> b!4316805 m!4910597))

(declare-fun m!4910599 () Bool)

(assert (=> b!4316805 m!4910599))

(declare-fun m!4910601 () Bool)

(assert (=> b!4316806 m!4910601))

(assert (=> b!4316526 d!1269382))

(assert (=> b!4316526 d!1269324))

(declare-fun lt!1536105 () Bool)

(declare-fun d!1269384 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7563 (List!48449) (InoxSet tuple2!47018))

(assert (=> d!1269384 (= lt!1536105 (select (content!7563 lt!1535915) (tuple2!47019 lt!1535924 lt!1535914)))))

(declare-fun e!2685432 () Bool)

(assert (=> d!1269384 (= lt!1536105 e!2685432)))

(declare-fun res!1769304 () Bool)

(assert (=> d!1269384 (=> (not res!1769304) (not e!2685432))))

(assert (=> d!1269384 (= res!1769304 ((_ is Cons!48325) lt!1535915))))

(assert (=> d!1269384 (= (contains!10343 lt!1535915 (tuple2!47019 lt!1535924 lt!1535914)) lt!1536105)))

(declare-fun b!4316811 () Bool)

(declare-fun e!2685431 () Bool)

(assert (=> b!4316811 (= e!2685432 e!2685431)))

(declare-fun res!1769305 () Bool)

(assert (=> b!4316811 (=> res!1769305 e!2685431)))

(assert (=> b!4316811 (= res!1769305 (= (h!53777 lt!1535915) (tuple2!47019 lt!1535924 lt!1535914)))))

(declare-fun b!4316812 () Bool)

(assert (=> b!4316812 (= e!2685431 (contains!10343 (t!355300 lt!1535915) (tuple2!47019 lt!1535924 lt!1535914)))))

(assert (= (and d!1269384 res!1769304) b!4316811))

(assert (= (and b!4316811 (not res!1769305)) b!4316812))

(declare-fun m!4910603 () Bool)

(assert (=> d!1269384 m!4910603))

(declare-fun m!4910605 () Bool)

(assert (=> d!1269384 m!4910605))

(declare-fun m!4910607 () Bool)

(assert (=> b!4316812 m!4910607))

(assert (=> b!4316526 d!1269384))

(declare-fun d!1269386 () Bool)

(declare-fun res!1769310 () Bool)

(declare-fun e!2685437 () Bool)

(assert (=> d!1269386 (=> res!1769310 e!2685437)))

(assert (=> d!1269386 (= res!1769310 (and ((_ is Cons!48325) lt!1535926) (= (_1!26791 (h!53777 lt!1535926)) lt!1535924)))))

(assert (=> d!1269386 (= (containsKey!379 lt!1535926 lt!1535924) e!2685437)))

(declare-fun b!4316817 () Bool)

(declare-fun e!2685438 () Bool)

(assert (=> b!4316817 (= e!2685437 e!2685438)))

(declare-fun res!1769311 () Bool)

(assert (=> b!4316817 (=> (not res!1769311) (not e!2685438))))

(assert (=> b!4316817 (= res!1769311 (and (or (not ((_ is Cons!48325) lt!1535926)) (bvsle (_1!26791 (h!53777 lt!1535926)) lt!1535924)) ((_ is Cons!48325) lt!1535926) (bvslt (_1!26791 (h!53777 lt!1535926)) lt!1535924)))))

(declare-fun b!4316818 () Bool)

(assert (=> b!4316818 (= e!2685438 (containsKey!379 (t!355300 lt!1535926) lt!1535924))))

(assert (= (and d!1269386 (not res!1769310)) b!4316817))

(assert (= (and b!4316817 res!1769311) b!4316818))

(declare-fun m!4910609 () Bool)

(assert (=> b!4316818 m!4910609))

(assert (=> b!4316526 d!1269386))

(declare-fun bs!605894 () Bool)

(declare-fun d!1269388 () Bool)

(assert (= bs!605894 (and d!1269388 d!1269348)))

(declare-fun lambda!133527 () Int)

(assert (=> bs!605894 (not (= lambda!133527 lambda!133518))))

(declare-fun bs!605895 () Bool)

(assert (= bs!605895 (and d!1269388 b!4316521)))

(assert (=> bs!605895 (not (= lambda!133527 lambda!133512))))

(declare-fun bs!605896 () Bool)

(assert (= bs!605896 (and d!1269388 d!1269350)))

(assert (=> bs!605896 (not (= lambda!133527 lambda!133521))))

(declare-fun bs!605897 () Bool)

(assert (= bs!605897 (and d!1269388 b!4316538)))

(assert (=> bs!605897 (not (= lambda!133527 lambda!133515))))

(declare-fun bs!605898 () Bool)

(assert (= bs!605898 (and d!1269388 d!1269356)))

(assert (=> bs!605898 (not (= lambda!133527 lambda!133524))))

(declare-fun bs!605899 () Bool)

(assert (= bs!605899 (and d!1269388 b!4316440)))

(assert (=> bs!605899 (= lambda!133527 lambda!133509)))

(assert (=> d!1269388 true))

(assert (=> d!1269388 (= (allKeysSameHashInMap!375 (map!10342 (v!42613 (underlying!9684 thiss!42308))) (hashF!6848 thiss!42308)) (forall!8786 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lambda!133527))))

(declare-fun bs!605900 () Bool)

(assert (= bs!605900 d!1269388))

(declare-fun m!4910611 () Bool)

(assert (=> bs!605900 m!4910611))

(assert (=> b!4316539 d!1269388))

(assert (=> b!4316539 d!1269324))

(assert (=> bm!298665 d!1269320))

(declare-fun d!1269390 () Bool)

(declare-fun noDuplicatedKeys!99 (List!48448) Bool)

(assert (=> d!1269390 (= (invariantList!592 (toList!2512 lt!1535930)) (noDuplicatedKeys!99 (toList!2512 lt!1535930)))))

(declare-fun bs!605901 () Bool)

(assert (= bs!605901 d!1269390))

(declare-fun m!4910613 () Bool)

(assert (=> bs!605901 m!4910613))

(assert (=> d!1269326 d!1269390))

(declare-fun bs!605902 () Bool)

(declare-fun d!1269392 () Bool)

(assert (= bs!605902 (and d!1269392 d!1269348)))

(declare-fun lambda!133528 () Int)

(assert (=> bs!605902 (= lambda!133528 lambda!133518)))

(declare-fun bs!605903 () Bool)

(assert (= bs!605903 (and d!1269392 d!1269350)))

(assert (=> bs!605903 (= lambda!133528 lambda!133521)))

(declare-fun bs!605904 () Bool)

(assert (= bs!605904 (and d!1269392 b!4316538)))

(assert (=> bs!605904 (= lambda!133528 lambda!133515)))

(declare-fun bs!605905 () Bool)

(assert (= bs!605905 (and d!1269392 d!1269356)))

(assert (=> bs!605905 (= lambda!133528 lambda!133524)))

(declare-fun bs!605906 () Bool)

(assert (= bs!605906 (and d!1269392 b!4316440)))

(assert (=> bs!605906 (not (= lambda!133528 lambda!133509))))

(declare-fun bs!605907 () Bool)

(assert (= bs!605907 (and d!1269392 b!4316521)))

(assert (=> bs!605907 (= lambda!133528 lambda!133512)))

(declare-fun bs!605908 () Bool)

(assert (= bs!605908 (and d!1269392 d!1269388)))

(assert (=> bs!605908 (not (= lambda!133528 lambda!133527))))

(declare-fun lt!1536106 () ListMap!1791)

(assert (=> d!1269392 (invariantList!592 (toList!2512 lt!1536106))))

(declare-fun e!2685439 () ListMap!1791)

(assert (=> d!1269392 (= lt!1536106 e!2685439)))

(declare-fun c!733890 () Bool)

(assert (=> d!1269392 (= c!733890 ((_ is Cons!48325) (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))))

(assert (=> d!1269392 (forall!8786 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lambda!133528)))

(assert (=> d!1269392 (= (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) lt!1536106)))

(declare-fun b!4316821 () Bool)

(assert (=> b!4316821 (= e!2685439 (addToMapMapFromBucket!47 (_2!26791 (h!53777 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) (extractMap!359 (t!355300 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))))))

(declare-fun b!4316822 () Bool)

(assert (=> b!4316822 (= e!2685439 (ListMap!1792 Nil!48324))))

(assert (= (and d!1269392 c!733890) b!4316821))

(assert (= (and d!1269392 (not c!733890)) b!4316822))

(declare-fun m!4910615 () Bool)

(assert (=> d!1269392 m!4910615))

(declare-fun m!4910617 () Bool)

(assert (=> d!1269392 m!4910617))

(declare-fun m!4910619 () Bool)

(assert (=> b!4316821 m!4910619))

(assert (=> b!4316821 m!4910619))

(declare-fun m!4910621 () Bool)

(assert (=> b!4316821 m!4910621))

(assert (=> d!1269326 d!1269392))

(assert (=> d!1269326 d!1269324))

(assert (=> d!1269326 d!1269336))

(declare-fun d!1269394 () Bool)

(declare-fun res!1769312 () Bool)

(declare-fun e!2685440 () Bool)

(assert (=> d!1269394 (=> res!1769312 e!2685440)))

(assert (=> d!1269394 (= res!1769312 ((_ is Nil!48325) (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))))

(assert (=> d!1269394 (= (forall!8786 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lambda!133515) e!2685440)))

(declare-fun b!4316823 () Bool)

(declare-fun e!2685441 () Bool)

(assert (=> b!4316823 (= e!2685440 e!2685441)))

(declare-fun res!1769313 () Bool)

(assert (=> b!4316823 (=> (not res!1769313) (not e!2685441))))

(assert (=> b!4316823 (= res!1769313 (dynLambda!20480 lambda!133515 (h!53777 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun b!4316824 () Bool)

(assert (=> b!4316824 (= e!2685441 (forall!8786 (t!355300 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) lambda!133515))))

(assert (= (and d!1269394 (not res!1769312)) b!4316823))

(assert (= (and b!4316823 res!1769313) b!4316824))

(declare-fun b_lambda!126933 () Bool)

(assert (=> (not b_lambda!126933) (not b!4316823)))

(declare-fun m!4910623 () Bool)

(assert (=> b!4316823 m!4910623))

(declare-fun m!4910625 () Bool)

(assert (=> b!4316824 m!4910625))

(assert (=> b!4316538 d!1269394))

(assert (=> b!4316538 d!1269324))

(assert (=> d!1269336 d!1269344))

(declare-fun b!4316841 () Bool)

(declare-fun e!2685456 () Bool)

(declare-fun lt!1536109 () Option!10278)

(declare-fun contains!10345 (List!48448 tuple2!47016) Bool)

(declare-fun get!15650 (Option!10278) tuple2!47016)

(assert (=> b!4316841 (= e!2685456 (contains!10345 call!298670 (get!15650 lt!1536109)))))

(declare-fun b!4316842 () Bool)

(declare-fun e!2685453 () Option!10278)

(assert (=> b!4316842 (= e!2685453 (getPair!153 (t!355299 call!298670) key!2048))))

(declare-fun b!4316843 () Bool)

(declare-fun res!1769323 () Bool)

(assert (=> b!4316843 (=> (not res!1769323) (not e!2685456))))

(assert (=> b!4316843 (= res!1769323 (= (_1!26790 (get!15650 lt!1536109)) key!2048))))

(declare-fun d!1269396 () Bool)

(declare-fun e!2685455 () Bool)

(assert (=> d!1269396 e!2685455))

(declare-fun res!1769322 () Bool)

(assert (=> d!1269396 (=> res!1769322 e!2685455)))

(declare-fun e!2685454 () Bool)

(assert (=> d!1269396 (= res!1769322 e!2685454)))

(declare-fun res!1769325 () Bool)

(assert (=> d!1269396 (=> (not res!1769325) (not e!2685454))))

(declare-fun isEmpty!28092 (Option!10278) Bool)

(assert (=> d!1269396 (= res!1769325 (isEmpty!28092 lt!1536109))))

(declare-fun e!2685452 () Option!10278)

(assert (=> d!1269396 (= lt!1536109 e!2685452)))

(declare-fun c!733895 () Bool)

(assert (=> d!1269396 (= c!733895 (and ((_ is Cons!48324) call!298670) (= (_1!26790 (h!53776 call!298670)) key!2048)))))

(declare-fun noDuplicateKeys!254 (List!48448) Bool)

(assert (=> d!1269396 (noDuplicateKeys!254 call!298670)))

(assert (=> d!1269396 (= (getPair!153 call!298670 key!2048) lt!1536109)))

(declare-fun b!4316844 () Bool)

(declare-fun containsKey!381 (List!48448 K!9564) Bool)

(assert (=> b!4316844 (= e!2685454 (not (containsKey!381 call!298670 key!2048)))))

(declare-fun b!4316845 () Bool)

(assert (=> b!4316845 (= e!2685455 e!2685456)))

(declare-fun res!1769324 () Bool)

(assert (=> b!4316845 (=> (not res!1769324) (not e!2685456))))

(assert (=> b!4316845 (= res!1769324 (isDefined!7579 lt!1536109))))

(declare-fun b!4316846 () Bool)

(assert (=> b!4316846 (= e!2685452 e!2685453)))

(declare-fun c!733896 () Bool)

(assert (=> b!4316846 (= c!733896 ((_ is Cons!48324) call!298670))))

(declare-fun b!4316847 () Bool)

(assert (=> b!4316847 (= e!2685452 (Some!10277 (h!53776 call!298670)))))

(declare-fun b!4316848 () Bool)

(assert (=> b!4316848 (= e!2685453 None!10277)))

(assert (= (and d!1269396 c!733895) b!4316847))

(assert (= (and d!1269396 (not c!733895)) b!4316846))

(assert (= (and b!4316846 c!733896) b!4316842))

(assert (= (and b!4316846 (not c!733896)) b!4316848))

(assert (= (and d!1269396 res!1769325) b!4316844))

(assert (= (and d!1269396 (not res!1769322)) b!4316845))

(assert (= (and b!4316845 res!1769324) b!4316843))

(assert (= (and b!4316843 res!1769323) b!4316841))

(declare-fun m!4910627 () Bool)

(assert (=> b!4316843 m!4910627))

(declare-fun m!4910629 () Bool)

(assert (=> b!4316845 m!4910629))

(declare-fun m!4910631 () Bool)

(assert (=> b!4316844 m!4910631))

(declare-fun m!4910633 () Bool)

(assert (=> b!4316842 m!4910633))

(declare-fun m!4910635 () Bool)

(assert (=> d!1269396 m!4910635))

(declare-fun m!4910637 () Bool)

(assert (=> d!1269396 m!4910637))

(assert (=> b!4316841 m!4910627))

(assert (=> b!4316841 m!4910627))

(declare-fun m!4910639 () Bool)

(assert (=> b!4316841 m!4910639))

(assert (=> bm!298664 d!1269396))

(declare-fun d!1269398 () Bool)

(declare-fun e!2685461 () Bool)

(assert (=> d!1269398 e!2685461))

(declare-fun res!1769328 () Bool)

(assert (=> d!1269398 (=> res!1769328 e!2685461)))

(declare-fun lt!1536121 () Bool)

(assert (=> d!1269398 (= res!1769328 (not lt!1536121))))

(declare-fun lt!1536118 () Bool)

(assert (=> d!1269398 (= lt!1536121 lt!1536118)))

(declare-fun lt!1536120 () Unit!67549)

(declare-fun e!2685462 () Unit!67549)

(assert (=> d!1269398 (= lt!1536120 e!2685462)))

(declare-fun c!733899 () Bool)

(assert (=> d!1269398 (= c!733899 lt!1536118)))

(assert (=> d!1269398 (= lt!1536118 (containsKey!379 (toList!2511 (ite c!733804 lt!1535908 call!298667)) call!298668))))

(assert (=> d!1269398 (= (contains!10340 (ite c!733804 lt!1535908 call!298667) call!298668) lt!1536121)))

(declare-fun b!4316855 () Bool)

(declare-fun lt!1536119 () Unit!67549)

(assert (=> b!4316855 (= e!2685462 lt!1536119)))

(assert (=> b!4316855 (= lt!1536119 (lemmaContainsKeyImpliesGetValueByKeyDefined!203 (toList!2511 (ite c!733804 lt!1535908 call!298667)) call!298668))))

(assert (=> b!4316855 (isDefined!7580 (getValueByKey!284 (toList!2511 (ite c!733804 lt!1535908 call!298667)) call!298668))))

(declare-fun b!4316856 () Bool)

(declare-fun Unit!67560 () Unit!67549)

(assert (=> b!4316856 (= e!2685462 Unit!67560)))

(declare-fun b!4316857 () Bool)

(assert (=> b!4316857 (= e!2685461 (isDefined!7580 (getValueByKey!284 (toList!2511 (ite c!733804 lt!1535908 call!298667)) call!298668)))))

(assert (= (and d!1269398 c!733899) b!4316855))

(assert (= (and d!1269398 (not c!733899)) b!4316856))

(assert (= (and d!1269398 (not res!1769328)) b!4316857))

(declare-fun m!4910641 () Bool)

(assert (=> d!1269398 m!4910641))

(declare-fun m!4910643 () Bool)

(assert (=> b!4316855 m!4910643))

(assert (=> b!4316855 m!4910503))

(assert (=> b!4316855 m!4910503))

(declare-fun m!4910645 () Bool)

(assert (=> b!4316855 m!4910645))

(assert (=> b!4316857 m!4910503))

(assert (=> b!4316857 m!4910503))

(assert (=> b!4316857 m!4910645))

(assert (=> bm!298663 d!1269398))

(declare-fun d!1269400 () Bool)

(assert (=> d!1269400 (= (isDefined!7579 call!298666) (not (isEmpty!28092 call!298666)))))

(declare-fun bs!605909 () Bool)

(assert (= bs!605909 d!1269400))

(declare-fun m!4910647 () Bool)

(assert (=> bs!605909 m!4910647))

(assert (=> bm!298662 d!1269400))

(declare-fun d!1269402 () Bool)

(assert (=> d!1269402 true))

(assert (=> d!1269402 true))

(declare-fun lambda!133531 () Int)

(declare-fun forall!8787 (List!48448 Int) Bool)

(assert (=> d!1269402 (= (allKeysSameHash!225 (_2!26791 (h!53777 (toList!2511 lt!1535845))) (_1!26791 (h!53777 (toList!2511 lt!1535845))) (hashF!6848 thiss!42308)) (forall!8787 (_2!26791 (h!53777 (toList!2511 lt!1535845))) lambda!133531))))

(declare-fun bs!605910 () Bool)

(assert (= bs!605910 d!1269402))

(declare-fun m!4910649 () Bool)

(assert (=> bs!605910 m!4910649))

(assert (=> bs!605875 d!1269402))

(declare-fun b!4316882 () Bool)

(declare-datatypes ((tuple3!5498 0))(
  ( (tuple3!5499 (_1!26794 Bool) (_2!26794 Cell!18717) (_3!3282 MutLongMap!4727)) )
))
(declare-fun e!2685476 () tuple3!5498)

(declare-fun lt!1536142 () tuple2!47022)

(assert (=> b!4316882 (= e!2685476 (ite (_1!26793 lt!1536142) (tuple3!5499 true (underlying!9683 (v!42613 (underlying!9684 thiss!42308))) (LongMap!4727 (Cell!18718 (_2!26793 lt!1536142)))) (tuple3!5499 false (Cell!18718 (_2!26793 lt!1536142)) (v!42613 (underlying!9684 thiss!42308)))))))

(declare-datatypes ((tuple2!47024 0))(
  ( (tuple2!47025 (_1!26795 Bool) (_2!26795 Cell!18717)) )
))
(declare-fun lt!1536143 () tuple2!47024)

(declare-fun repackFrom!9 (MutLongMap!4727 LongMapFixedSize!9454 (_ BitVec 32)) tuple2!47022)

(assert (=> b!4316882 (= lt!1536142 (repackFrom!9 (v!42613 (underlying!9684 thiss!42308)) (v!42612 (_2!26795 lt!1536143)) (bvsub (size!35678 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun b!4316883 () Bool)

(declare-fun e!2685479 () Bool)

(declare-fun e!2685477 () Bool)

(assert (=> b!4316883 (= e!2685479 e!2685477)))

(declare-fun res!1769333 () Bool)

(assert (=> b!4316883 (=> res!1769333 e!2685477)))

(declare-fun lt!1536147 () tuple2!47020)

(assert (=> b!4316883 (= res!1769333 (= (_1!26792 lt!1536147) false))))

(declare-fun bm!298761 () Bool)

(declare-fun call!298768 () LongMapFixedSize!9454)

(declare-fun lt!1536146 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!23 ((_ BitVec 32) Int) LongMapFixedSize!9454)

(assert (=> bm!298761 (= call!298768 (getNewLongMapFixedSize!23 lt!1536146 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun b!4316884 () Bool)

(declare-fun c!733909 () Bool)

(assert (=> b!4316884 (= c!733909 (and (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2685480 () tuple2!47024)

(declare-fun e!2685478 () tuple2!47024)

(assert (=> b!4316884 (= e!2685480 e!2685478)))

(declare-fun b!4316885 () Bool)

(assert (=> b!4316885 (= e!2685476 (tuple3!5499 false (_2!26795 lt!1536143) (v!42613 (underlying!9684 thiss!42308))))))

(declare-fun bm!298762 () Bool)

(declare-fun call!298767 () LongMapFixedSize!9454)

(declare-fun c!733908 () Bool)

(declare-fun c!733911 () Bool)

(declare-fun lt!1536151 () tuple2!47022)

(declare-fun call!298769 () tuple2!47022)

(assert (=> bm!298762 (= call!298769 (update!500 (ite c!733908 (_2!26793 lt!1536151) call!298767) (ite c!733908 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!733911 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!733908 (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (ite c!733911 (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))))

(declare-fun b!4316886 () Bool)

(declare-fun e!2685475 () tuple2!47024)

(assert (=> b!4316886 (= e!2685475 e!2685480)))

(assert (=> b!4316886 (= c!733911 (and (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!1269404 () Bool)

(assert (=> d!1269404 e!2685479))

(declare-fun res!1769334 () Bool)

(assert (=> d!1269404 (=> (not res!1769334) (not e!2685479))))

(assert (=> d!1269404 (= res!1769334 ((_ is LongMap!4727) (_2!26792 lt!1536147)))))

(declare-fun lt!1536148 () tuple3!5498)

(assert (=> d!1269404 (= lt!1536147 (tuple2!47021 (_1!26794 lt!1536148) (_3!3282 lt!1536148)))))

(assert (=> d!1269404 (= lt!1536148 e!2685476)))

(declare-fun c!733910 () Bool)

(assert (=> d!1269404 (= c!733910 (not (_1!26795 lt!1536143)))))

(assert (=> d!1269404 (= lt!1536143 e!2685475)))

(assert (=> d!1269404 (= c!733908 (and (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!1536149 () Cell!18717)

(assert (=> d!1269404 (= lt!1536149 (Cell!18718 (getNewLongMapFixedSize!23 lt!1536146 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))))))

(declare-fun computeNewMask!9 (MutLongMap!4727 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1269404 (= lt!1536146 (computeNewMask!9 (v!42613 (underlying!9684 thiss!42308)) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_vacant!4788 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_size!9497 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(assert (=> d!1269404 (valid!3730 (v!42613 (underlying!9684 thiss!42308)))))

(assert (=> d!1269404 (= (repack!75 (v!42613 (underlying!9684 thiss!42308))) lt!1536147)))

(declare-fun bm!298763 () Bool)

(assert (=> bm!298763 (= call!298767 call!298768)))

(declare-fun b!4316887 () Bool)

(declare-fun lt!1536144 () tuple2!47022)

(assert (=> b!4316887 (= e!2685478 (tuple2!47025 (_1!26793 lt!1536144) (Cell!18718 (_2!26793 lt!1536144))))))

(declare-fun call!298766 () tuple2!47022)

(assert (=> b!4316887 (= lt!1536144 call!298766)))

(declare-fun bm!298764 () Bool)

(assert (=> bm!298764 (= call!298766 call!298769)))

(declare-fun b!4316888 () Bool)

(declare-fun lt!1536150 () tuple2!47022)

(assert (=> b!4316888 (= lt!1536150 call!298766)))

(assert (=> b!4316888 (= e!2685480 (tuple2!47025 (_1!26793 lt!1536150) (Cell!18718 (_2!26793 lt!1536150))))))

(declare-fun b!4316889 () Bool)

(declare-fun lt!1536145 () tuple2!47022)

(assert (=> b!4316889 (= e!2685475 (tuple2!47025 (and (_1!26793 lt!1536151) (_1!26793 lt!1536145)) (Cell!18718 (_2!26793 lt!1536145))))))

(assert (=> b!4316889 (= lt!1536151 (update!500 call!298768 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(assert (=> b!4316889 (= lt!1536145 call!298769)))

(declare-fun b!4316890 () Bool)

(assert (=> b!4316890 (= e!2685477 (= (map!10342 (_2!26792 lt!1536147)) (map!10342 (v!42613 (underlying!9684 thiss!42308)))))))

(declare-fun b!4316891 () Bool)

(assert (=> b!4316891 (= e!2685478 (tuple2!47025 true lt!1536149))))

(assert (= (and d!1269404 c!733908) b!4316889))

(assert (= (and d!1269404 (not c!733908)) b!4316886))

(assert (= (and b!4316886 c!733911) b!4316888))

(assert (= (and b!4316886 (not c!733911)) b!4316884))

(assert (= (and b!4316884 c!733909) b!4316887))

(assert (= (and b!4316884 (not c!733909)) b!4316891))

(assert (= (or b!4316888 b!4316887) bm!298763))

(assert (= (or b!4316888 b!4316887) bm!298764))

(assert (= (or b!4316889 bm!298763) bm!298761))

(assert (= (or b!4316889 bm!298764) bm!298762))

(assert (= (and d!1269404 c!733910) b!4316885))

(assert (= (and d!1269404 (not c!733910)) b!4316882))

(assert (= (and d!1269404 res!1769334) b!4316883))

(assert (= (and b!4316883 (not res!1769333)) b!4316890))

(declare-fun m!4910651 () Bool)

(assert (=> b!4316890 m!4910651))

(assert (=> b!4316890 m!4910293))

(declare-fun m!4910653 () Bool)

(assert (=> b!4316889 m!4910653))

(declare-fun m!4910655 () Bool)

(assert (=> b!4316882 m!4910655))

(declare-fun m!4910657 () Bool)

(assert (=> bm!298762 m!4910657))

(declare-fun m!4910659 () Bool)

(assert (=> bm!298761 m!4910659))

(assert (=> d!1269404 m!4910659))

(declare-fun m!4910661 () Bool)

(assert (=> d!1269404 m!4910661))

(assert (=> d!1269404 m!4910325))

(assert (=> b!4316492 d!1269404))

(assert (=> d!1269322 d!1269320))

(declare-fun b!4316892 () Bool)

(assert (=> b!4316892 false))

(declare-fun lt!1536155 () Unit!67549)

(declare-fun lt!1536158 () Unit!67549)

(assert (=> b!4316892 (= lt!1536155 lt!1536158)))

(assert (=> b!4316892 (containsKey!380 (toList!2512 (map!10343 thiss!42308)) key!2048)))

(assert (=> b!4316892 (= lt!1536158 (lemmaInGetKeysListThenContainsKey!49 (toList!2512 (map!10343 thiss!42308)) key!2048))))

(declare-fun e!2685481 () Unit!67549)

(declare-fun Unit!67561 () Unit!67549)

(assert (=> b!4316892 (= e!2685481 Unit!67561)))

(declare-fun b!4316893 () Bool)

(declare-fun e!2685485 () Bool)

(assert (=> b!4316893 (= e!2685485 (not (contains!10344 (keys!16143 (map!10343 thiss!42308)) key!2048)))))

(declare-fun b!4316894 () Bool)

(declare-fun e!2685484 () Bool)

(assert (=> b!4316894 (= e!2685484 (contains!10344 (keys!16143 (map!10343 thiss!42308)) key!2048))))

(declare-fun b!4316895 () Bool)

(declare-fun e!2685482 () Bool)

(assert (=> b!4316895 (= e!2685482 e!2685484)))

(declare-fun res!1769337 () Bool)

(assert (=> b!4316895 (=> (not res!1769337) (not e!2685484))))

(assert (=> b!4316895 (= res!1769337 (isDefined!7581 (getValueByKey!285 (toList!2512 (map!10343 thiss!42308)) key!2048)))))

(declare-fun b!4316896 () Bool)

(declare-fun e!2685486 () Unit!67549)

(declare-fun lt!1536153 () Unit!67549)

(assert (=> b!4316896 (= e!2685486 lt!1536153)))

(declare-fun lt!1536156 () Unit!67549)

(assert (=> b!4316896 (= lt!1536156 (lemmaContainsKeyImpliesGetValueByKeyDefined!204 (toList!2512 (map!10343 thiss!42308)) key!2048))))

(assert (=> b!4316896 (isDefined!7581 (getValueByKey!285 (toList!2512 (map!10343 thiss!42308)) key!2048))))

(declare-fun lt!1536157 () Unit!67549)

(assert (=> b!4316896 (= lt!1536157 lt!1536156)))

(assert (=> b!4316896 (= lt!1536153 (lemmaInListThenGetKeysListContains!49 (toList!2512 (map!10343 thiss!42308)) key!2048))))

(declare-fun call!298770 () Bool)

(assert (=> b!4316896 call!298770))

(declare-fun b!4316897 () Bool)

(declare-fun e!2685483 () List!48450)

(assert (=> b!4316897 (= e!2685483 (keys!16143 (map!10343 thiss!42308)))))

(declare-fun b!4316898 () Bool)

(assert (=> b!4316898 (= e!2685483 (getKeysList!52 (toList!2512 (map!10343 thiss!42308))))))

(declare-fun b!4316899 () Bool)

(assert (=> b!4316899 (= e!2685486 e!2685481)))

(declare-fun c!733914 () Bool)

(assert (=> b!4316899 (= c!733914 call!298770)))

(declare-fun d!1269406 () Bool)

(assert (=> d!1269406 e!2685482))

(declare-fun res!1769336 () Bool)

(assert (=> d!1269406 (=> res!1769336 e!2685482)))

(assert (=> d!1269406 (= res!1769336 e!2685485)))

(declare-fun res!1769335 () Bool)

(assert (=> d!1269406 (=> (not res!1769335) (not e!2685485))))

(declare-fun lt!1536152 () Bool)

(assert (=> d!1269406 (= res!1769335 (not lt!1536152))))

(declare-fun lt!1536159 () Bool)

(assert (=> d!1269406 (= lt!1536152 lt!1536159)))

(declare-fun lt!1536154 () Unit!67549)

(assert (=> d!1269406 (= lt!1536154 e!2685486)))

(declare-fun c!733912 () Bool)

(assert (=> d!1269406 (= c!733912 lt!1536159)))

(assert (=> d!1269406 (= lt!1536159 (containsKey!380 (toList!2512 (map!10343 thiss!42308)) key!2048))))

(assert (=> d!1269406 (= (contains!10342 (map!10343 thiss!42308) key!2048) lt!1536152)))

(declare-fun bm!298765 () Bool)

(assert (=> bm!298765 (= call!298770 (contains!10344 e!2685483 key!2048))))

(declare-fun c!733913 () Bool)

(assert (=> bm!298765 (= c!733913 c!733912)))

(declare-fun b!4316900 () Bool)

(declare-fun Unit!67562 () Unit!67549)

(assert (=> b!4316900 (= e!2685481 Unit!67562)))

(assert (= (and d!1269406 c!733912) b!4316896))

(assert (= (and d!1269406 (not c!733912)) b!4316899))

(assert (= (and b!4316899 c!733914) b!4316892))

(assert (= (and b!4316899 (not c!733914)) b!4316900))

(assert (= (or b!4316896 b!4316899) bm!298765))

(assert (= (and bm!298765 c!733913) b!4316898))

(assert (= (and bm!298765 (not c!733913)) b!4316897))

(assert (= (and d!1269406 res!1769335) b!4316893))

(assert (= (and d!1269406 (not res!1769336)) b!4316895))

(assert (= (and b!4316895 res!1769337) b!4316894))

(declare-fun m!4910663 () Bool)

(assert (=> b!4316898 m!4910663))

(declare-fun m!4910665 () Bool)

(assert (=> b!4316892 m!4910665))

(declare-fun m!4910667 () Bool)

(assert (=> b!4316892 m!4910667))

(declare-fun m!4910669 () Bool)

(assert (=> b!4316895 m!4910669))

(assert (=> b!4316895 m!4910669))

(declare-fun m!4910671 () Bool)

(assert (=> b!4316895 m!4910671))

(assert (=> d!1269406 m!4910665))

(declare-fun m!4910673 () Bool)

(assert (=> b!4316896 m!4910673))

(assert (=> b!4316896 m!4910669))

(assert (=> b!4316896 m!4910669))

(assert (=> b!4316896 m!4910671))

(declare-fun m!4910675 () Bool)

(assert (=> b!4316896 m!4910675))

(declare-fun m!4910677 () Bool)

(assert (=> bm!298765 m!4910677))

(assert (=> b!4316893 m!4910295))

(declare-fun m!4910679 () Bool)

(assert (=> b!4316893 m!4910679))

(assert (=> b!4316893 m!4910679))

(declare-fun m!4910681 () Bool)

(assert (=> b!4316893 m!4910681))

(assert (=> b!4316897 m!4910295))

(assert (=> b!4316897 m!4910679))

(assert (=> b!4316894 m!4910295))

(assert (=> b!4316894 m!4910679))

(assert (=> b!4316894 m!4910679))

(assert (=> b!4316894 m!4910681))

(assert (=> d!1269322 d!1269406))

(declare-fun d!1269408 () Bool)

(declare-fun lt!1536160 () Bool)

(assert (=> d!1269408 (= lt!1536160 (contains!10340 (map!10342 (v!42613 (underlying!9684 thiss!42308))) lt!1535924))))

(assert (=> d!1269408 (= lt!1536160 (contains!10341 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))) lt!1535924))))

(assert (=> d!1269408 (valid!3730 (v!42613 (underlying!9684 thiss!42308)))))

(assert (=> d!1269408 (= (contains!10339 (v!42613 (underlying!9684 thiss!42308)) lt!1535924) lt!1536160)))

(declare-fun bs!605911 () Bool)

(assert (= bs!605911 d!1269408))

(assert (=> bs!605911 m!4910293))

(assert (=> bs!605911 m!4910293))

(declare-fun m!4910683 () Bool)

(assert (=> bs!605911 m!4910683))

(declare-fun m!4910685 () Bool)

(assert (=> bs!605911 m!4910685))

(assert (=> bs!605911 m!4910325))

(assert (=> d!1269322 d!1269408))

(declare-fun b!4316901 () Bool)

(assert (=> b!4316901 false))

(declare-fun lt!1536164 () Unit!67549)

(declare-fun lt!1536167 () Unit!67549)

(assert (=> b!4316901 (= lt!1536164 lt!1536167)))

(assert (=> b!4316901 (containsKey!380 (toList!2512 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) key!2048)))

(assert (=> b!4316901 (= lt!1536167 (lemmaInGetKeysListThenContainsKey!49 (toList!2512 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) key!2048))))

(declare-fun e!2685487 () Unit!67549)

(declare-fun Unit!67563 () Unit!67549)

(assert (=> b!4316901 (= e!2685487 Unit!67563)))

(declare-fun b!4316902 () Bool)

(declare-fun e!2685491 () Bool)

(assert (=> b!4316902 (= e!2685491 (not (contains!10344 (keys!16143 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) key!2048)))))

(declare-fun b!4316903 () Bool)

(declare-fun e!2685490 () Bool)

(assert (=> b!4316903 (= e!2685490 (contains!10344 (keys!16143 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) key!2048))))

(declare-fun b!4316904 () Bool)

(declare-fun e!2685488 () Bool)

(assert (=> b!4316904 (= e!2685488 e!2685490)))

(declare-fun res!1769340 () Bool)

(assert (=> b!4316904 (=> (not res!1769340) (not e!2685490))))

(assert (=> b!4316904 (= res!1769340 (isDefined!7581 (getValueByKey!285 (toList!2512 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) key!2048)))))

(declare-fun b!4316905 () Bool)

(declare-fun e!2685492 () Unit!67549)

(declare-fun lt!1536162 () Unit!67549)

(assert (=> b!4316905 (= e!2685492 lt!1536162)))

(declare-fun lt!1536165 () Unit!67549)

(assert (=> b!4316905 (= lt!1536165 (lemmaContainsKeyImpliesGetValueByKeyDefined!204 (toList!2512 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) key!2048))))

(assert (=> b!4316905 (isDefined!7581 (getValueByKey!285 (toList!2512 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) key!2048))))

(declare-fun lt!1536166 () Unit!67549)

(assert (=> b!4316905 (= lt!1536166 lt!1536165)))

(assert (=> b!4316905 (= lt!1536162 (lemmaInListThenGetKeysListContains!49 (toList!2512 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) key!2048))))

(declare-fun call!298771 () Bool)

(assert (=> b!4316905 call!298771))

(declare-fun b!4316906 () Bool)

(declare-fun e!2685489 () List!48450)

(assert (=> b!4316906 (= e!2685489 (keys!16143 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun b!4316907 () Bool)

(assert (=> b!4316907 (= e!2685489 (getKeysList!52 (toList!2512 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))))))

(declare-fun b!4316908 () Bool)

(assert (=> b!4316908 (= e!2685492 e!2685487)))

(declare-fun c!733917 () Bool)

(assert (=> b!4316908 (= c!733917 call!298771)))

(declare-fun d!1269410 () Bool)

(assert (=> d!1269410 e!2685488))

(declare-fun res!1769339 () Bool)

(assert (=> d!1269410 (=> res!1769339 e!2685488)))

(assert (=> d!1269410 (= res!1769339 e!2685491)))

(declare-fun res!1769338 () Bool)

(assert (=> d!1269410 (=> (not res!1769338) (not e!2685491))))

(declare-fun lt!1536161 () Bool)

(assert (=> d!1269410 (= res!1769338 (not lt!1536161))))

(declare-fun lt!1536168 () Bool)

(assert (=> d!1269410 (= lt!1536161 lt!1536168)))

(declare-fun lt!1536163 () Unit!67549)

(assert (=> d!1269410 (= lt!1536163 e!2685492)))

(declare-fun c!733915 () Bool)

(assert (=> d!1269410 (= c!733915 lt!1536168)))

(assert (=> d!1269410 (= lt!1536168 (containsKey!380 (toList!2512 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) key!2048))))

(assert (=> d!1269410 (= (contains!10342 (extractMap!359 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) key!2048) lt!1536161)))

(declare-fun bm!298766 () Bool)

(assert (=> bm!298766 (= call!298771 (contains!10344 e!2685489 key!2048))))

(declare-fun c!733916 () Bool)

(assert (=> bm!298766 (= c!733916 c!733915)))

(declare-fun b!4316909 () Bool)

(declare-fun Unit!67564 () Unit!67549)

(assert (=> b!4316909 (= e!2685487 Unit!67564)))

(assert (= (and d!1269410 c!733915) b!4316905))

(assert (= (and d!1269410 (not c!733915)) b!4316908))

(assert (= (and b!4316908 c!733917) b!4316901))

(assert (= (and b!4316908 (not c!733917)) b!4316909))

(assert (= (or b!4316905 b!4316908) bm!298766))

(assert (= (and bm!298766 c!733916) b!4316907))

(assert (= (and bm!298766 (not c!733916)) b!4316906))

(assert (= (and d!1269410 res!1769338) b!4316902))

(assert (= (and d!1269410 (not res!1769339)) b!4316904))

(assert (= (and b!4316904 res!1769340) b!4316903))

(declare-fun m!4910687 () Bool)

(assert (=> b!4316907 m!4910687))

(declare-fun m!4910689 () Bool)

(assert (=> b!4316901 m!4910689))

(declare-fun m!4910691 () Bool)

(assert (=> b!4316901 m!4910691))

(declare-fun m!4910693 () Bool)

(assert (=> b!4316904 m!4910693))

(assert (=> b!4316904 m!4910693))

(declare-fun m!4910695 () Bool)

(assert (=> b!4316904 m!4910695))

(assert (=> d!1269410 m!4910689))

(declare-fun m!4910697 () Bool)

(assert (=> b!4316905 m!4910697))

(assert (=> b!4316905 m!4910693))

(assert (=> b!4316905 m!4910693))

(assert (=> b!4316905 m!4910695))

(declare-fun m!4910699 () Bool)

(assert (=> b!4316905 m!4910699))

(declare-fun m!4910701 () Bool)

(assert (=> bm!298766 m!4910701))

(assert (=> b!4316902 m!4910359))

(declare-fun m!4910703 () Bool)

(assert (=> b!4316902 m!4910703))

(assert (=> b!4316902 m!4910703))

(declare-fun m!4910705 () Bool)

(assert (=> b!4316902 m!4910705))

(assert (=> b!4316906 m!4910359))

(assert (=> b!4316906 m!4910703))

(assert (=> b!4316903 m!4910359))

(assert (=> b!4316903 m!4910703))

(assert (=> b!4316903 m!4910703))

(assert (=> b!4316903 m!4910705))

(assert (=> d!1269322 d!1269410))

(assert (=> d!1269322 d!1269336))

(assert (=> d!1269322 d!1269326))

(assert (=> d!1269322 d!1269392))

(assert (=> d!1269322 d!1269324))

(declare-fun d!1269412 () Bool)

(assert (=> d!1269412 (= (map!10342 (_2!26792 lt!1535862)) (map!10344 (v!42612 (underlying!9683 (_2!26792 lt!1535862)))))))

(declare-fun bs!605912 () Bool)

(assert (= bs!605912 d!1269412))

(declare-fun m!4910707 () Bool)

(assert (=> bs!605912 m!4910707))

(assert (=> bm!298647 d!1269412))

(declare-fun d!1269414 () Bool)

(declare-fun e!2685493 () Bool)

(assert (=> d!1269414 e!2685493))

(declare-fun res!1769341 () Bool)

(assert (=> d!1269414 (=> res!1769341 e!2685493)))

(declare-fun lt!1536172 () Bool)

(assert (=> d!1269414 (= res!1769341 (not lt!1536172))))

(declare-fun lt!1536169 () Bool)

(assert (=> d!1269414 (= lt!1536172 lt!1536169)))

(declare-fun lt!1536171 () Unit!67549)

(declare-fun e!2685494 () Unit!67549)

(assert (=> d!1269414 (= lt!1536171 e!2685494)))

(declare-fun c!733918 () Bool)

(assert (=> d!1269414 (= c!733918 lt!1536169)))

(assert (=> d!1269414 (= lt!1536169 (containsKey!379 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846))))

(assert (=> d!1269414 (= (contains!10340 (map!10342 (v!42613 (underlying!9684 thiss!42308))) lt!1535846) lt!1536172)))

(declare-fun b!4316910 () Bool)

(declare-fun lt!1536170 () Unit!67549)

(assert (=> b!4316910 (= e!2685494 lt!1536170)))

(assert (=> b!4316910 (= lt!1536170 (lemmaContainsKeyImpliesGetValueByKeyDefined!203 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846))))

(assert (=> b!4316910 (isDefined!7580 (getValueByKey!284 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846))))

(declare-fun b!4316911 () Bool)

(declare-fun Unit!67565 () Unit!67549)

(assert (=> b!4316911 (= e!2685494 Unit!67565)))

(declare-fun b!4316912 () Bool)

(assert (=> b!4316912 (= e!2685493 (isDefined!7580 (getValueByKey!284 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846)))))

(assert (= (and d!1269414 c!733918) b!4316910))

(assert (= (and d!1269414 (not c!733918)) b!4316911))

(assert (= (and d!1269414 (not res!1769341)) b!4316912))

(declare-fun m!4910709 () Bool)

(assert (=> d!1269414 m!4910709))

(declare-fun m!4910711 () Bool)

(assert (=> b!4316910 m!4910711))

(assert (=> b!4316910 m!4910393))

(assert (=> b!4316910 m!4910393))

(declare-fun m!4910713 () Bool)

(assert (=> b!4316910 m!4910713))

(assert (=> b!4316912 m!4910393))

(assert (=> b!4316912 m!4910393))

(assert (=> b!4316912 m!4910713))

(assert (=> d!1269318 d!1269414))

(assert (=> d!1269318 d!1269324))

(declare-fun d!1269416 () Bool)

(declare-fun lt!1536216 () Bool)

(assert (=> d!1269416 (= lt!1536216 (contains!10340 (map!10344 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846))))

(declare-fun e!2685507 () Bool)

(assert (=> d!1269416 (= lt!1536216 e!2685507)))

(declare-fun c!733929 () Bool)

(assert (=> d!1269416 (= c!733929 (= lt!1535846 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1269416 (valid!3731 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))

(assert (=> d!1269416 (= (contains!10341 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))) lt!1535846) lt!1536216)))

(declare-fun b!4316933 () Bool)

(declare-fun e!2685505 () Bool)

(assert (=> b!4316933 (= e!2685505 (ite (= lt!1535846 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!298773 () Bool)

(declare-fun call!298778 () ListLongMap!1125)

(assert (=> bm!298773 (= call!298778 (getCurrentListMap!20 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun b!4316934 () Bool)

(assert (=> b!4316934 (= e!2685507 (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4316935 () Bool)

(declare-fun e!2685508 () Bool)

(assert (=> b!4316935 (= e!2685508 false)))

(declare-fun c!733931 () Bool)

(declare-fun call!298779 () Bool)

(assert (=> b!4316935 (= c!733931 call!298779)))

(declare-fun lt!1536208 () Unit!67549)

(declare-fun e!2685506 () Unit!67549)

(assert (=> b!4316935 (= lt!1536208 e!2685506)))

(declare-fun b!4316936 () Bool)

(declare-fun call!298780 () Bool)

(assert (=> b!4316936 (= e!2685505 call!298780)))

(declare-fun b!4316937 () Bool)

(declare-fun Unit!67566 () Unit!67549)

(assert (=> b!4316937 (= e!2685506 Unit!67566)))

(declare-fun bm!298774 () Bool)

(declare-fun lt!1536206 () SeekEntryResult!17)

(declare-fun c!733933 () Bool)

(assert (=> bm!298774 (= call!298779 (contains!10340 call!298778 (ite c!733933 (select (arr!7639 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))) (index!1447 lt!1536206)) lt!1535846)))))

(declare-fun b!4316938 () Bool)

(declare-fun e!2685509 () Bool)

(assert (=> b!4316938 (= e!2685507 e!2685509)))

(declare-fun c!733930 () Bool)

(assert (=> b!4316938 (= c!733930 (= lt!1535846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4316939 () Bool)

(assert (=> b!4316939 false))

(declare-fun lt!1536217 () Unit!67549)

(declare-fun lt!1536210 () Unit!67549)

(assert (=> b!4316939 (= lt!1536217 lt!1536210)))

(declare-fun lt!1536209 () SeekEntryResult!17)

(declare-fun lt!1536204 () (_ BitVec 32))

(assert (=> b!4316939 (and ((_ is Found!17) lt!1536209) (= (index!1447 lt!1536209) lt!1536204))))

(assert (=> b!4316939 (= lt!1536209 (seekEntry!0 lt!1535846 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!17110 (_ BitVec 32)) Unit!67549)

(assert (=> b!4316939 (= lt!1536210 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1535846 lt!1536204 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun lt!1536207 () Unit!67549)

(declare-fun lt!1536205 () Unit!67549)

(assert (=> b!4316939 (= lt!1536207 lt!1536205)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17110 (_ BitVec 32)) Bool)

(assert (=> b!4316939 (arrayForallSeekEntryOrOpenFound!0 lt!1536204 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!17110 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!67549)

(assert (=> b!4316939 (= lt!1536205 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000000 lt!1536204))))

(declare-fun arrayScanForKey!0 (array!17110 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4316939 (= lt!1536204 (arrayScanForKey!0 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846 #b00000000000000000000000000000000))))

(declare-fun lt!1536203 () Unit!67549)

(declare-fun lt!1536213 () Unit!67549)

(assert (=> b!4316939 (= lt!1536203 lt!1536213)))

(assert (=> b!4316939 e!2685505))

(declare-fun c!733932 () Bool)

(assert (=> b!4316939 (= c!733932 (and (not (= lt!1535846 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1535846 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!13 (array!17110 array!17112 (_ BitVec 32) (_ BitVec 32) List!48448 List!48448 (_ BitVec 64) Int) Unit!67549)

(assert (=> b!4316939 (= lt!1536213 (lemmaKeyInListMapIsInArray!13 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun Unit!67567 () Unit!67549)

(assert (=> b!4316939 (= e!2685506 Unit!67567)))

(declare-fun b!4316940 () Bool)

(assert (=> b!4316940 (= e!2685509 (not (= (bvand (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!298775 () Bool)

(assert (=> bm!298775 (= call!298780 (arrayContainsKey!0 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846 #b00000000000000000000000000000000))))

(declare-fun b!4316941 () Bool)

(assert (=> b!4316941 (= c!733933 ((_ is Found!17) lt!1536206))))

(assert (=> b!4316941 (= lt!1536206 (seekEntry!0 lt!1535846 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(assert (=> b!4316941 (= e!2685509 e!2685508)))

(declare-fun b!4316942 () Bool)

(assert (=> b!4316942 (= e!2685508 true)))

(declare-fun lt!1536214 () Unit!67549)

(assert (=> b!4316942 (= lt!1536214 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846 (index!1447 lt!1536206)))))

(assert (=> b!4316942 call!298780))

(declare-fun lt!1536215 () Unit!67549)

(assert (=> b!4316942 (= lt!1536215 lt!1536214)))

(declare-fun lt!1536211 () Unit!67549)

(assert (=> b!4316942 (= lt!1536211 (lemmaValidKeyInArrayIsInListMap!10 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (index!1447 lt!1536206) (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(assert (=> b!4316942 call!298779))

(declare-fun lt!1536212 () Unit!67549)

(assert (=> b!4316942 (= lt!1536212 lt!1536211)))

(assert (= (and d!1269416 c!733929) b!4316934))

(assert (= (and d!1269416 (not c!733929)) b!4316938))

(assert (= (and b!4316938 c!733930) b!4316940))

(assert (= (and b!4316938 (not c!733930)) b!4316941))

(assert (= (and b!4316941 c!733933) b!4316942))

(assert (= (and b!4316941 (not c!733933)) b!4316935))

(assert (= (and b!4316935 c!733931) b!4316939))

(assert (= (and b!4316935 (not c!733931)) b!4316937))

(assert (= (and b!4316939 c!733932) b!4316936))

(assert (= (and b!4316939 (not c!733932)) b!4316933))

(assert (= (or b!4316942 b!4316936) bm!298775))

(assert (= (or b!4316942 b!4316935) bm!298773))

(assert (= (or b!4316942 b!4316935) bm!298774))

(declare-fun m!4910715 () Bool)

(assert (=> b!4316942 m!4910715))

(declare-fun m!4910717 () Bool)

(assert (=> b!4316942 m!4910717))

(assert (=> bm!298775 m!4910471))

(declare-fun m!4910719 () Bool)

(assert (=> bm!298774 m!4910719))

(declare-fun m!4910721 () Bool)

(assert (=> bm!298774 m!4910721))

(assert (=> d!1269416 m!4910387))

(assert (=> d!1269416 m!4910387))

(declare-fun m!4910723 () Bool)

(assert (=> d!1269416 m!4910723))

(assert (=> d!1269416 m!4910411))

(assert (=> b!4316941 m!4910479))

(declare-fun m!4910725 () Bool)

(assert (=> b!4316939 m!4910725))

(declare-fun m!4910727 () Bool)

(assert (=> b!4316939 m!4910727))

(declare-fun m!4910729 () Bool)

(assert (=> b!4316939 m!4910729))

(declare-fun m!4910731 () Bool)

(assert (=> b!4316939 m!4910731))

(declare-fun m!4910733 () Bool)

(assert (=> b!4316939 m!4910733))

(assert (=> b!4316939 m!4910479))

(assert (=> bm!298773 m!4910461))

(assert (=> d!1269318 d!1269416))

(assert (=> d!1269318 d!1269344))

(assert (=> bm!298661 d!1269324))

(declare-fun d!1269418 () Bool)

(assert (=> d!1269418 (= (isDefined!7579 (getPair!153 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924) key!2048)) (not (isEmpty!28092 (getPair!153 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924) key!2048))))))

(declare-fun bs!605913 () Bool)

(assert (= bs!605913 d!1269418))

(assert (=> bs!605913 m!4910373))

(declare-fun m!4910735 () Bool)

(assert (=> bs!605913 m!4910735))

(assert (=> b!4316520 d!1269418))

(declare-fun e!2685514 () Bool)

(declare-fun b!4316943 () Bool)

(declare-fun lt!1536218 () Option!10278)

(assert (=> b!4316943 (= e!2685514 (contains!10345 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924) (get!15650 lt!1536218)))))

(declare-fun e!2685511 () Option!10278)

(declare-fun b!4316944 () Bool)

(assert (=> b!4316944 (= e!2685511 (getPair!153 (t!355299 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924)) key!2048))))

(declare-fun b!4316945 () Bool)

(declare-fun res!1769343 () Bool)

(assert (=> b!4316945 (=> (not res!1769343) (not e!2685514))))

(assert (=> b!4316945 (= res!1769343 (= (_1!26790 (get!15650 lt!1536218)) key!2048))))

(declare-fun d!1269420 () Bool)

(declare-fun e!2685513 () Bool)

(assert (=> d!1269420 e!2685513))

(declare-fun res!1769342 () Bool)

(assert (=> d!1269420 (=> res!1769342 e!2685513)))

(declare-fun e!2685512 () Bool)

(assert (=> d!1269420 (= res!1769342 e!2685512)))

(declare-fun res!1769345 () Bool)

(assert (=> d!1269420 (=> (not res!1769345) (not e!2685512))))

(assert (=> d!1269420 (= res!1769345 (isEmpty!28092 lt!1536218))))

(declare-fun e!2685510 () Option!10278)

(assert (=> d!1269420 (= lt!1536218 e!2685510)))

(declare-fun c!733934 () Bool)

(assert (=> d!1269420 (= c!733934 (and ((_ is Cons!48324) (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924)) (= (_1!26790 (h!53776 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))) key!2048)))))

(assert (=> d!1269420 (noDuplicateKeys!254 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))

(assert (=> d!1269420 (= (getPair!153 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924) key!2048) lt!1536218)))

(declare-fun b!4316946 () Bool)

(assert (=> b!4316946 (= e!2685512 (not (containsKey!381 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924) key!2048)))))

(declare-fun b!4316947 () Bool)

(assert (=> b!4316947 (= e!2685513 e!2685514)))

(declare-fun res!1769344 () Bool)

(assert (=> b!4316947 (=> (not res!1769344) (not e!2685514))))

(assert (=> b!4316947 (= res!1769344 (isDefined!7579 lt!1536218))))

(declare-fun b!4316948 () Bool)

(assert (=> b!4316948 (= e!2685510 e!2685511)))

(declare-fun c!733935 () Bool)

(assert (=> b!4316948 (= c!733935 ((_ is Cons!48324) (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924)))))

(declare-fun b!4316949 () Bool)

(assert (=> b!4316949 (= e!2685510 (Some!10277 (h!53776 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))))

(declare-fun b!4316950 () Bool)

(assert (=> b!4316950 (= e!2685511 None!10277)))

(assert (= (and d!1269420 c!733934) b!4316949))

(assert (= (and d!1269420 (not c!733934)) b!4316948))

(assert (= (and b!4316948 c!733935) b!4316944))

(assert (= (and b!4316948 (not c!733935)) b!4316950))

(assert (= (and d!1269420 res!1769345) b!4316946))

(assert (= (and d!1269420 (not res!1769342)) b!4316947))

(assert (= (and b!4316947 res!1769344) b!4316945))

(assert (= (and b!4316945 res!1769343) b!4316943))

(declare-fun m!4910737 () Bool)

(assert (=> b!4316945 m!4910737))

(declare-fun m!4910739 () Bool)

(assert (=> b!4316947 m!4910739))

(assert (=> b!4316946 m!4910349))

(declare-fun m!4910741 () Bool)

(assert (=> b!4316946 m!4910741))

(declare-fun m!4910743 () Bool)

(assert (=> b!4316944 m!4910743))

(declare-fun m!4910745 () Bool)

(assert (=> d!1269420 m!4910745))

(assert (=> d!1269420 m!4910349))

(declare-fun m!4910747 () Bool)

(assert (=> d!1269420 m!4910747))

(assert (=> b!4316943 m!4910737))

(assert (=> b!4316943 m!4910349))

(assert (=> b!4316943 m!4910737))

(declare-fun m!4910749 () Bool)

(assert (=> b!4316943 m!4910749))

(assert (=> b!4316520 d!1269420))

(assert (=> b!4316520 d!1269382))

(declare-fun d!1269422 () Bool)

(assert (=> d!1269422 (= (map!10344 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (getCurrentListMap!20 (_keys!5027 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (_values!5008 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (mask!13319 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (extraKeys!4976 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))))

(declare-fun bs!605914 () Bool)

(assert (= bs!605914 d!1269422))

(assert (=> bs!605914 m!4910461))

(assert (=> d!1269324 d!1269422))

(declare-fun d!1269424 () Bool)

(declare-fun e!2685515 () Bool)

(assert (=> d!1269424 e!2685515))

(declare-fun res!1769346 () Bool)

(assert (=> d!1269424 (=> res!1769346 e!2685515)))

(declare-fun lt!1536222 () Bool)

(assert (=> d!1269424 (= res!1769346 (not lt!1536222))))

(declare-fun lt!1536219 () Bool)

(assert (=> d!1269424 (= lt!1536222 lt!1536219)))

(declare-fun lt!1536221 () Unit!67549)

(declare-fun e!2685516 () Unit!67549)

(assert (=> d!1269424 (= lt!1536221 e!2685516)))

(declare-fun c!733936 () Bool)

(assert (=> d!1269424 (= c!733936 lt!1536219)))

(assert (=> d!1269424 (= lt!1536219 (containsKey!379 (toList!2511 call!298652) lt!1535846))))

(assert (=> d!1269424 (= (contains!10340 call!298652 lt!1535846) lt!1536222)))

(declare-fun b!4316951 () Bool)

(declare-fun lt!1536220 () Unit!67549)

(assert (=> b!4316951 (= e!2685516 lt!1536220)))

(assert (=> b!4316951 (= lt!1536220 (lemmaContainsKeyImpliesGetValueByKeyDefined!203 (toList!2511 call!298652) lt!1535846))))

(assert (=> b!4316951 (isDefined!7580 (getValueByKey!284 (toList!2511 call!298652) lt!1535846))))

(declare-fun b!4316952 () Bool)

(declare-fun Unit!67568 () Unit!67549)

(assert (=> b!4316952 (= e!2685516 Unit!67568)))

(declare-fun b!4316953 () Bool)

(assert (=> b!4316953 (= e!2685515 (isDefined!7580 (getValueByKey!284 (toList!2511 call!298652) lt!1535846)))))

(assert (= (and d!1269424 c!733936) b!4316951))

(assert (= (and d!1269424 (not c!733936)) b!4316952))

(assert (= (and d!1269424 (not res!1769346)) b!4316953))

(declare-fun m!4910751 () Bool)

(assert (=> d!1269424 m!4910751))

(declare-fun m!4910753 () Bool)

(assert (=> b!4316951 m!4910753))

(declare-fun m!4910755 () Bool)

(assert (=> b!4316951 m!4910755))

(assert (=> b!4316951 m!4910755))

(declare-fun m!4910757 () Bool)

(assert (=> b!4316951 m!4910757))

(assert (=> b!4316953 m!4910755))

(assert (=> b!4316953 m!4910755))

(assert (=> b!4316953 m!4910757))

(assert (=> b!4316490 d!1269424))

(declare-fun d!1269426 () Bool)

(assert (=> d!1269426 (dynLambda!20480 lambda!133512 (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924)))))

(declare-fun lt!1536225 () Unit!67549)

(declare-fun choose!26343 (List!48449 Int tuple2!47018) Unit!67549)

(assert (=> d!1269426 (= lt!1536225 (choose!26343 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lambda!133512 (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))))

(declare-fun e!2685519 () Bool)

(assert (=> d!1269426 e!2685519))

(declare-fun res!1769349 () Bool)

(assert (=> d!1269426 (=> (not res!1769349) (not e!2685519))))

(assert (=> d!1269426 (= res!1769349 (forall!8786 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lambda!133512))))

(assert (=> d!1269426 (= (forallContained!1521 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) lambda!133512 (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))) lt!1536225)))

(declare-fun b!4316956 () Bool)

(assert (=> b!4316956 (= e!2685519 (contains!10343 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))))

(assert (= (and d!1269426 res!1769349) b!4316956))

(declare-fun b_lambda!126935 () Bool)

(assert (=> (not b_lambda!126935) (not d!1269426)))

(declare-fun m!4910759 () Bool)

(assert (=> d!1269426 m!4910759))

(declare-fun m!4910761 () Bool)

(assert (=> d!1269426 m!4910761))

(declare-fun m!4910763 () Bool)

(assert (=> d!1269426 m!4910763))

(assert (=> b!4316956 m!4910371))

(assert (=> b!4316521 d!1269426))

(assert (=> b!4316521 d!1269324))

(assert (=> b!4316521 d!1269382))

(declare-fun d!1269428 () Bool)

(declare-fun lt!1536226 () Bool)

(assert (=> d!1269428 (= lt!1536226 (select (content!7563 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))))

(declare-fun e!2685521 () Bool)

(assert (=> d!1269428 (= lt!1536226 e!2685521)))

(declare-fun res!1769350 () Bool)

(assert (=> d!1269428 (=> (not res!1769350) (not e!2685521))))

(assert (=> d!1269428 (= res!1769350 ((_ is Cons!48325) (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))))

(assert (=> d!1269428 (= (contains!10343 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))) (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))) lt!1536226)))

(declare-fun b!4316957 () Bool)

(declare-fun e!2685520 () Bool)

(assert (=> b!4316957 (= e!2685521 e!2685520)))

(declare-fun res!1769351 () Bool)

(assert (=> b!4316957 (=> res!1769351 e!2685520)))

(assert (=> b!4316957 (= res!1769351 (= (h!53777 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))))

(declare-fun b!4316958 () Bool)

(assert (=> b!4316958 (= e!2685520 (contains!10343 (t!355300 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))) (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))))))

(assert (= (and d!1269428 res!1769350) b!4316957))

(assert (= (and b!4316957 (not res!1769351)) b!4316958))

(declare-fun m!4910765 () Bool)

(assert (=> d!1269428 m!4910765))

(declare-fun m!4910767 () Bool)

(assert (=> d!1269428 m!4910767))

(declare-fun m!4910769 () Bool)

(assert (=> b!4316958 m!4910769))

(assert (=> b!4316521 d!1269428))

(declare-fun b!4316959 () Bool)

(declare-fun tp!1326222 () Bool)

(declare-fun e!2685523 () Bool)

(assert (=> b!4316959 (= e!2685523 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326222))))

(declare-fun mapNonEmpty!21080 () Bool)

(declare-fun mapRes!21080 () Bool)

(declare-fun tp!1326224 () Bool)

(assert (=> mapNonEmpty!21080 (= mapRes!21080 (and tp!1326224 e!2685523))))

(declare-fun mapRest!21080 () (Array (_ BitVec 32) List!48448))

(declare-fun mapKey!21080 () (_ BitVec 32))

(declare-fun mapValue!21080 () List!48448)

(assert (=> mapNonEmpty!21080 (= mapRest!21079 (store mapRest!21080 mapKey!21080 mapValue!21080))))

(declare-fun b!4316960 () Bool)

(declare-fun tp!1326223 () Bool)

(declare-fun e!2685522 () Bool)

(assert (=> b!4316960 (= e!2685522 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326223))))

(declare-fun condMapEmpty!21080 () Bool)

(declare-fun mapDefault!21080 () List!48448)

(assert (=> mapNonEmpty!21079 (= condMapEmpty!21080 (= mapRest!21079 ((as const (Array (_ BitVec 32) List!48448)) mapDefault!21080)))))

(assert (=> mapNonEmpty!21079 (= tp!1326220 (and e!2685522 mapRes!21080))))

(declare-fun mapIsEmpty!21080 () Bool)

(assert (=> mapIsEmpty!21080 mapRes!21080))

(assert (= (and mapNonEmpty!21079 condMapEmpty!21080) mapIsEmpty!21080))

(assert (= (and mapNonEmpty!21079 (not condMapEmpty!21080)) mapNonEmpty!21080))

(assert (= (and mapNonEmpty!21080 ((_ is Cons!48324) mapValue!21080)) b!4316959))

(assert (= (and mapNonEmpty!21079 ((_ is Cons!48324) mapDefault!21080)) b!4316960))

(declare-fun m!4910771 () Bool)

(assert (=> mapNonEmpty!21080 m!4910771))

(declare-fun b!4316961 () Bool)

(declare-fun tp!1326225 () Bool)

(declare-fun e!2685524 () Bool)

(assert (=> b!4316961 (= e!2685524 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326225))))

(assert (=> b!4316550 (= tp!1326209 e!2685524)))

(assert (= (and b!4316550 ((_ is Cons!48324) (t!355299 mapDefault!21076))) b!4316961))

(declare-fun tp!1326226 () Bool)

(declare-fun e!2685525 () Bool)

(declare-fun b!4316962 () Bool)

(assert (=> b!4316962 (= e!2685525 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326226))))

(assert (=> b!4316552 (= tp!1326211 e!2685525)))

(assert (= (and b!4316552 ((_ is Cons!48324) (t!355299 (minValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))) b!4316962))

(declare-fun tp!1326227 () Bool)

(declare-fun b!4316963 () Bool)

(declare-fun e!2685526 () Bool)

(assert (=> b!4316963 (= e!2685526 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326227))))

(assert (=> b!4316560 (= tp!1326219 e!2685526)))

(assert (= (and b!4316560 ((_ is Cons!48324) (t!355299 mapDefault!21079))) b!4316963))

(declare-fun b!4316964 () Bool)

(declare-fun e!2685527 () Bool)

(declare-fun tp!1326228 () Bool)

(assert (=> b!4316964 (= e!2685527 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326228))))

(assert (=> tb!257337 (= result!314814 e!2685527)))

(assert (= (and tb!257337 ((_ is Cons!48324) (dynLambda!20479 (defaultEntry!5112 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308))))) lt!1535846))) b!4316964))

(declare-fun tp!1326229 () Bool)

(declare-fun e!2685528 () Bool)

(declare-fun b!4316965 () Bool)

(assert (=> b!4316965 (= e!2685528 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326229))))

(assert (=> b!4316559 (= tp!1326218 e!2685528)))

(assert (= (and b!4316559 ((_ is Cons!48324) (t!355299 mapValue!21079))) b!4316965))

(declare-fun e!2685529 () Bool)

(declare-fun tp!1326230 () Bool)

(declare-fun b!4316966 () Bool)

(assert (=> b!4316966 (= e!2685529 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326230))))

(assert (=> b!4316551 (= tp!1326210 e!2685529)))

(assert (= (and b!4316551 ((_ is Cons!48324) (t!355299 (zeroValue!4986 (v!42612 (underlying!9683 (v!42613 (underlying!9684 thiss!42308)))))))) b!4316966))

(declare-fun b!4316967 () Bool)

(declare-fun e!2685530 () Bool)

(declare-fun tp!1326231 () Bool)

(assert (=> b!4316967 (= e!2685530 (and tp_is_empty!24005 tp_is_empty!24007 tp!1326231))))

(assert (=> b!4316561 (= tp!1326221 e!2685530)))

(assert (= (and b!4316561 ((_ is Cons!48324) (t!355299 mapValue!21076))) b!4316967))

(declare-fun b_lambda!126937 () Bool)

(assert (= b_lambda!126925 (or (and b!4316450 b_free!128867) b_lambda!126937)))

(declare-fun b_lambda!126939 () Bool)

(assert (= b_lambda!126933 (or b!4316538 b_lambda!126939)))

(declare-fun bs!605915 () Bool)

(declare-fun d!1269430 () Bool)

(assert (= bs!605915 (and d!1269430 b!4316538)))

(assert (=> bs!605915 (= (dynLambda!20480 lambda!133515 (h!53777 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308)))))) (noDuplicateKeys!254 (_2!26791 (h!53777 (toList!2511 (map!10342 (v!42613 (underlying!9684 thiss!42308))))))))))

(declare-fun m!4910773 () Bool)

(assert (=> bs!605915 m!4910773))

(assert (=> b!4316823 d!1269430))

(declare-fun b_lambda!126941 () Bool)

(assert (= b_lambda!126927 (or (and b!4316450 b_free!128867) b_lambda!126941)))

(declare-fun b_lambda!126943 () Bool)

(assert (= b_lambda!126923 (or (and b!4316450 b_free!128867) b_lambda!126943)))

(declare-fun b_lambda!126945 () Bool)

(assert (= b_lambda!126931 (or (and b!4316450 b_free!128867) b_lambda!126945)))

(declare-fun b_lambda!126947 () Bool)

(assert (= b_lambda!126935 (or b!4316521 b_lambda!126947)))

(declare-fun bs!605916 () Bool)

(declare-fun d!1269432 () Bool)

(assert (= bs!605916 (and d!1269432 b!4316521)))

(assert (=> bs!605916 (= (dynLambda!20480 lambda!133512 (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924))) (noDuplicateKeys!254 (_2!26791 (tuple2!47019 lt!1535924 (apply!11100 (v!42613 (underlying!9684 thiss!42308)) lt!1535924)))))))

(declare-fun m!4910775 () Bool)

(assert (=> bs!605916 m!4910775))

(assert (=> d!1269426 d!1269432))

(declare-fun b_lambda!126949 () Bool)

(assert (= b_lambda!126929 (or b!4316440 b_lambda!126949)))

(declare-fun bs!605917 () Bool)

(declare-fun d!1269434 () Bool)

(assert (= bs!605917 (and d!1269434 b!4316440)))

(assert (=> bs!605917 (= (dynLambda!20480 lambda!133509 (h!53777 (t!355300 (toList!2511 lt!1535845)))) (allKeysSameHash!225 (_2!26791 (h!53777 (t!355300 (toList!2511 lt!1535845)))) (_1!26791 (h!53777 (t!355300 (toList!2511 lt!1535845)))) (hashF!6848 thiss!42308)))))

(declare-fun m!4910777 () Bool)

(assert (=> bs!605917 m!4910777))

(assert (=> b!4316658 d!1269434))

(check-sat (not d!1269412) (not d!1269396) (not tb!257339) (not b!4316942) (not b!4316898) (not b!4316797) (not b!4316895) (not b!4316762) (not d!1269382) (not b!4316959) (not b!4316892) (not b!4316585) (not d!1269426) (not b!4316902) (not b!4316889) (not d!1269344) (not d!1269410) (not d!1269414) (not b!4316800) (not bm!298750) (not b!4316818) (not bm!298773) (not b!4316803) (not b!4316893) (not b!4316907) (not b!4316967) tp_is_empty!24007 (not b!4316843) (not b!4316842) (not b_lambda!126939) (not b!4316857) (not bm!298747) (not d!1269372) (not b!4316805) b_and!340353 (not d!1269384) (not b!4316752) (not b!4316956) (not b!4316757) (not d!1269406) (not b!4316941) (not d!1269356) (not b!4316903) (not b!4316657) (not b!4316599) (not d!1269392) (not b!4316750) (not b_lambda!126947) (not d!1269402) (not b_lambda!126945) (not b!4316844) (not d!1269404) (not b!4316958) (not d!1269388) (not b!4316953) (not b!4316896) (not bm!298774) (not b_next!129571) (not b!4316882) (not d!1269420) (not d!1269378) (not b!4316582) (not bm!298745) (not b!4316904) (not d!1269418) (not b_lambda!126921) (not bm!298765) (not bm!298736) b_and!340363 (not d!1269354) (not b!4316652) (not b!4316583) (not d!1269346) (not b!4316584) (not b!4316753) (not b!4316765) (not b!4316947) (not b!4316960) (not b!4316945) (not d!1269398) (not d!1269364) (not d!1269416) (not b!4316821) (not b!4316650) (not b!4316894) (not bm!298739) (not b!4316648) tp_is_empty!24005 (not b!4316961) (not d!1269350) (not b!4316910) (not b!4316586) (not b!4316962) (not b!4316965) (not b!4316824) (not bm!298678) (not b!4316593) (not b_lambda!126949) (not d!1269352) (not d!1269424) (not b!4316897) (not bm!298668) (not d!1269366) (not bm!298732) (not b!4316905) (not bm!298729) (not b!4316581) (not bm!298761) (not b!4316964) (not d!1269376) (not b!4316812) (not b!4316580) (not b!4316794) (not b_next!129573) (not b!4316951) (not b_lambda!126941) (not b_lambda!126937) (not d!1269348) (not bm!298762) (not bs!605915) (not bm!298677) (not d!1269362) (not b!4316912) (not mapNonEmpty!21080) (not b!4316890) (not bm!298751) (not bm!298731) (not b!4316644) (not b!4316841) (not b!4316855) (not b!4316943) (not b!4316939) (not bm!298775) (not d!1269400) (not bm!298735) (not b!4316906) (not b!4316759) (not b_lambda!126919) (not bm!298752) (not b!4316901) (not b!4316966) (not d!1269408) (not d!1269428) (not b!4316946) (not b!4316845) (not b!4316600) (not d!1269374) (not b!4316659) (not bs!605916) (not b!4316790) (not d!1269390) (not bm!298742) (not bs!605917) (not d!1269360) (not b!4316649) (not b!4316963) (not d!1269422) (not b!4316944) (not bm!298766) (not b_lambda!126943))
(check-sat b_and!340363 b_and!340353 (not b_next!129573) (not b_next!129571))

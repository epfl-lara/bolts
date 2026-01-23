; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415308 () Bool)

(assert start!415308)

(declare-fun b!4317059 () Bool)

(declare-fun b_free!128875 () Bool)

(declare-fun b_next!129579 () Bool)

(assert (=> b!4317059 (= b_free!128875 (not b_next!129579))))

(declare-fun tp!1326273 () Bool)

(declare-fun b_and!340369 () Bool)

(assert (=> b!4317059 (= tp!1326273 b_and!340369)))

(declare-fun b!4317056 () Bool)

(declare-fun b_free!128877 () Bool)

(declare-fun b_next!129581 () Bool)

(assert (=> b!4317056 (= b_free!128877 (not b_next!129581))))

(declare-fun tp!1326272 () Bool)

(declare-fun b_and!340371 () Bool)

(assert (=> b!4317056 (= tp!1326272 b_and!340371)))

(declare-fun b!4317081 () Bool)

(declare-fun e!2685624 () Bool)

(declare-fun e!2685623 () Bool)

(assert (=> b!4317081 (= e!2685624 e!2685623)))

(declare-fun b!4317062 () Bool)

(assert (=> b!4317062 e!2685624))

(declare-fun b!4317082 () Bool)

(declare-fun e!2685626 () Bool)

(declare-fun e!2685625 () Bool)

(assert (=> b!4317082 (= e!2685626 e!2685625)))

(declare-fun b!4317083 () Bool)

(declare-fun e!2685622 () Bool)

(assert (=> b!4317083 (= e!2685622 e!2685626)))

(declare-fun b!4317084 () Bool)

(assert (=> b!4317084 (= e!2685625 true)))

(declare-fun b!4317085 () Bool)

(declare-datatypes ((V!9771 0))(
  ( (V!9772 (val!15913 Int)) )
))
(declare-datatypes ((K!9569 0))(
  ( (K!9570 (val!15914 Int)) )
))
(declare-datatypes ((tuple2!47032 0))(
  ( (tuple2!47033 (_1!26799 K!9569) (_2!26799 V!9771)) )
))
(declare-datatypes ((List!48453 0))(
  ( (Nil!48329) (Cons!48329 (h!53782 tuple2!47032) (t!355308 List!48453)) )
))
(declare-datatypes ((array!17120 0))(
  ( (array!17121 (arr!7643 (Array (_ BitVec 32) (_ BitVec 64))) (size!35682 (_ BitVec 32))) )
))
(declare-datatypes ((array!17122 0))(
  ( (array!17123 (arr!7644 (Array (_ BitVec 32) List!48453)) (size!35683 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9458 0))(
  ( (LongMapFixedSize!9459 (defaultEntry!5114 Int) (mask!13322 (_ BitVec 32)) (extraKeys!4978 (_ BitVec 32)) (zeroValue!4988 List!48453) (minValue!4988 List!48453) (_size!9501 (_ BitVec 32)) (_keys!5029 array!17120) (_values!5010 array!17122) (_vacant!4790 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18725 0))(
  ( (Cell!18726 (v!42629 LongMapFixedSize!9458)) )
))
(declare-datatypes ((MutLongMap!4729 0))(
  ( (LongMap!4729 (underlying!9687 Cell!18725)) (MutLongMapExt!4728 (__x!30212 Int)) )
))
(declare-fun lt!1536262 () MutLongMap!4729)

(get-info :version)

(assert (=> b!4317085 (= e!2685623 (and e!2685622 ((_ is LongMap!4729) lt!1536262)))))

(declare-datatypes ((Hashable!4645 0))(
  ( (HashableExt!4644 (__x!30213 Int)) )
))
(declare-datatypes ((Cell!18727 0))(
  ( (Cell!18728 (v!42630 MutLongMap!4729)) )
))
(declare-datatypes ((MutableMap!4635 0))(
  ( (MutableMapExt!4634 (__x!30214 Int)) (HashMap!4635 (underlying!9688 Cell!18727) (hashF!6854 Hashable!4645) (_size!9502 (_ BitVec 32)) (defaultValue!4806 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4635)

(assert (=> b!4317085 (= lt!1536262 (v!42630 (underlying!9688 thiss!42308)))))

(assert (= b!4317082 b!4317084))

(assert (= b!4317083 b!4317082))

(assert (= (and b!4317085 ((_ is LongMap!4729) (v!42630 (underlying!9688 thiss!42308)))) b!4317083))

(assert (= b!4317081 b!4317085))

(assert (= (and b!4317062 ((_ is HashMap!4635) thiss!42308)) b!4317081))

(declare-fun order!25135 () Int)

(declare-fun order!25133 () Int)

(declare-fun lambda!133537 () Int)

(declare-fun dynLambda!20484 (Int Int) Int)

(declare-fun dynLambda!20485 (Int Int) Int)

(assert (=> b!4317084 (< (dynLambda!20484 order!25133 (defaultEntry!5114 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) (dynLambda!20485 order!25135 lambda!133537))))

(declare-fun order!25137 () Int)

(declare-fun dynLambda!20486 (Int Int) Int)

(assert (=> b!4317081 (< (dynLambda!20486 order!25137 (defaultValue!4806 thiss!42308)) (dynLambda!20485 order!25135 lambda!133537))))

(declare-fun b!4317055 () Bool)

(declare-fun res!1769387 () Bool)

(declare-fun e!2685610 () Bool)

(assert (=> b!4317055 (=> (not res!1769387) (not e!2685610))))

(declare-fun valid!3733 (MutableMap!4635) Bool)

(assert (=> b!4317055 (= res!1769387 (valid!3733 thiss!42308))))

(declare-fun e!2685603 () Bool)

(declare-fun e!2685609 () Bool)

(assert (=> b!4317056 (= e!2685603 (and e!2685609 tp!1326272))))

(declare-fun b!4317057 () Bool)

(declare-fun e!2685605 () Bool)

(declare-fun e!2685611 () Bool)

(assert (=> b!4317057 (= e!2685605 e!2685611)))

(declare-fun b!4317058 () Bool)

(declare-fun e!2685606 () Bool)

(declare-fun e!2685602 () Bool)

(assert (=> b!4317058 (= e!2685606 e!2685602)))

(declare-fun res!1769386 () Bool)

(assert (=> b!4317058 (=> (not res!1769386) (not e!2685602))))

(declare-fun lt!1536257 () List!48453)

(declare-fun v!9179 () V!9771)

(declare-fun lt!1536256 () (_ BitVec 64))

(declare-fun key!2048 () K!9569)

(declare-datatypes ((tuple2!47034 0))(
  ( (tuple2!47035 (_1!26800 Bool) (_2!26800 MutLongMap!4729)) )
))
(declare-fun update!502 (MutLongMap!4729 (_ BitVec 64) List!48453) tuple2!47034)

(assert (=> b!4317058 (= res!1769386 (_1!26800 (update!502 (v!42630 (underlying!9688 thiss!42308)) lt!1536256 (Cons!48329 (tuple2!47033 key!2048 v!9179) lt!1536257))))))

(declare-fun e!2685607 () List!48453)

(assert (=> b!4317058 (= lt!1536257 e!2685607)))

(declare-fun c!733942 () Bool)

(declare-fun contains!10348 (MutLongMap!4729 (_ BitVec 64)) Bool)

(assert (=> b!4317058 (= c!733942 (contains!10348 (v!42630 (underlying!9688 thiss!42308)) lt!1536256))))

(declare-fun hash!1128 (Hashable!4645 K!9569) (_ BitVec 64))

(assert (=> b!4317058 (= lt!1536256 (hash!1128 (hashF!6854 thiss!42308) key!2048))))

(declare-fun tp!1326268 () Bool)

(declare-fun tp!1326267 () Bool)

(declare-fun e!2685604 () Bool)

(declare-fun array_inv!5499 (array!17120) Bool)

(declare-fun array_inv!5500 (array!17122) Bool)

(assert (=> b!4317059 (= e!2685611 (and tp!1326273 tp!1326267 tp!1326268 (array_inv!5499 (_keys!5029 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) (array_inv!5500 (_values!5010 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) e!2685604))))

(declare-fun b!4317060 () Bool)

(assert (=> b!4317060 (= e!2685607 Nil!48329)))

(declare-fun res!1769385 () Bool)

(assert (=> start!415308 (=> (not res!1769385) (not e!2685610))))

(assert (=> start!415308 (= res!1769385 ((_ is HashMap!4635) thiss!42308))))

(assert (=> start!415308 e!2685610))

(assert (=> start!415308 e!2685603))

(declare-fun tp_is_empty!24013 () Bool)

(assert (=> start!415308 tp_is_empty!24013))

(declare-fun tp_is_empty!24015 () Bool)

(assert (=> start!415308 tp_is_empty!24015))

(declare-fun b!4317061 () Bool)

(assert (=> b!4317061 (= e!2685610 e!2685606)))

(declare-fun res!1769384 () Bool)

(assert (=> b!4317061 (=> (not res!1769384) (not e!2685606))))

(declare-fun contains!10349 (MutableMap!4635 K!9569) Bool)

(assert (=> b!4317061 (= res!1769384 (not (contains!10349 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!47036 0))(
  ( (tuple2!47037 (_1!26801 (_ BitVec 64)) (_2!26801 List!48453)) )
))
(declare-datatypes ((List!48454 0))(
  ( (Nil!48330) (Cons!48330 (h!53783 tuple2!47036) (t!355309 List!48454)) )
))
(declare-datatypes ((ListLongMap!1129 0))(
  ( (ListLongMap!1130 (toList!2514 List!48454)) )
))
(declare-fun lt!1536259 () ListLongMap!1129)

(declare-fun map!10346 (MutLongMap!4729) ListLongMap!1129)

(assert (=> b!4317061 (= lt!1536259 (map!10346 (v!42630 (underlying!9688 thiss!42308))))))

(declare-datatypes ((ListMap!1793 0))(
  ( (ListMap!1794 (toList!2515 List!48453)) )
))
(declare-fun lt!1536258 () ListMap!1793)

(declare-fun map!10347 (MutableMap!4635) ListMap!1793)

(assert (=> b!4317061 (= lt!1536258 (map!10347 thiss!42308))))

(declare-fun res!1769383 () Bool)

(assert (=> b!4317062 (=> (not res!1769383) (not e!2685602))))

(declare-fun forall!8789 (List!48454 Int) Bool)

(assert (=> b!4317062 (= res!1769383 (forall!8789 (toList!2514 lt!1536259) lambda!133537))))

(declare-fun b!4317063 () Bool)

(declare-fun tp!1326271 () Bool)

(declare-fun mapRes!21086 () Bool)

(assert (=> b!4317063 (= e!2685604 (and tp!1326271 mapRes!21086))))

(declare-fun condMapEmpty!21086 () Bool)

(declare-fun mapDefault!21086 () List!48453)

(assert (=> b!4317063 (= condMapEmpty!21086 (= (arr!7644 (_values!5010 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48453)) mapDefault!21086)))))

(declare-fun b!4317064 () Bool)

(declare-fun apply!11104 (MutLongMap!4729 (_ BitVec 64)) List!48453)

(assert (=> b!4317064 (= e!2685607 (apply!11104 (v!42630 (underlying!9688 thiss!42308)) lt!1536256))))

(declare-fun b!4317065 () Bool)

(declare-fun contains!10350 (List!48454 tuple2!47036) Bool)

(assert (=> b!4317065 (= e!2685602 (not (contains!10350 (toList!2514 lt!1536259) (tuple2!47037 lt!1536256 lt!1536257))))))

(declare-fun b!4317066 () Bool)

(declare-fun res!1769382 () Bool)

(assert (=> b!4317066 (=> (not res!1769382) (not e!2685602))))

(declare-fun isEmpty!28094 (List!48453) Bool)

(assert (=> b!4317066 (= res!1769382 (not (isEmpty!28094 lt!1536257)))))

(declare-fun b!4317067 () Bool)

(declare-fun e!2685601 () Bool)

(assert (=> b!4317067 (= e!2685601 e!2685605)))

(declare-fun mapNonEmpty!21086 () Bool)

(declare-fun tp!1326269 () Bool)

(declare-fun tp!1326270 () Bool)

(assert (=> mapNonEmpty!21086 (= mapRes!21086 (and tp!1326269 tp!1326270))))

(declare-fun mapRest!21086 () (Array (_ BitVec 32) List!48453))

(declare-fun mapValue!21086 () List!48453)

(declare-fun mapKey!21086 () (_ BitVec 32))

(assert (=> mapNonEmpty!21086 (= (arr!7644 (_values!5010 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) (store mapRest!21086 mapKey!21086 mapValue!21086))))

(declare-fun b!4317068 () Bool)

(declare-fun lt!1536255 () MutLongMap!4729)

(assert (=> b!4317068 (= e!2685609 (and e!2685601 ((_ is LongMap!4729) lt!1536255)))))

(assert (=> b!4317068 (= lt!1536255 (v!42630 (underlying!9688 thiss!42308)))))

(declare-fun mapIsEmpty!21086 () Bool)

(assert (=> mapIsEmpty!21086 mapRes!21086))

(assert (= (and start!415308 res!1769385) b!4317055))

(assert (= (and b!4317055 res!1769387) b!4317061))

(assert (= (and b!4317061 res!1769384) b!4317058))

(assert (= (and b!4317058 c!733942) b!4317064))

(assert (= (and b!4317058 (not c!733942)) b!4317060))

(assert (= (and b!4317058 res!1769386) b!4317066))

(assert (= (and b!4317066 res!1769382) b!4317062))

(assert (= (and b!4317062 res!1769383) b!4317065))

(assert (= (and b!4317063 condMapEmpty!21086) mapIsEmpty!21086))

(assert (= (and b!4317063 (not condMapEmpty!21086)) mapNonEmpty!21086))

(assert (= b!4317059 b!4317063))

(assert (= b!4317057 b!4317059))

(assert (= b!4317067 b!4317057))

(assert (= (and b!4317068 ((_ is LongMap!4729) (v!42630 (underlying!9688 thiss!42308)))) b!4317067))

(assert (= b!4317056 b!4317068))

(assert (= (and start!415308 ((_ is HashMap!4635) thiss!42308)) b!4317056))

(declare-fun m!4910807 () Bool)

(assert (=> b!4317065 m!4910807))

(declare-fun m!4910809 () Bool)

(assert (=> b!4317066 m!4910809))

(declare-fun m!4910811 () Bool)

(assert (=> b!4317061 m!4910811))

(declare-fun m!4910813 () Bool)

(assert (=> b!4317061 m!4910813))

(declare-fun m!4910815 () Bool)

(assert (=> b!4317061 m!4910815))

(declare-fun m!4910817 () Bool)

(assert (=> b!4317064 m!4910817))

(declare-fun m!4910819 () Bool)

(assert (=> b!4317059 m!4910819))

(declare-fun m!4910821 () Bool)

(assert (=> b!4317059 m!4910821))

(declare-fun m!4910823 () Bool)

(assert (=> b!4317058 m!4910823))

(declare-fun m!4910825 () Bool)

(assert (=> b!4317058 m!4910825))

(declare-fun m!4910827 () Bool)

(assert (=> b!4317058 m!4910827))

(declare-fun m!4910829 () Bool)

(assert (=> mapNonEmpty!21086 m!4910829))

(declare-fun m!4910831 () Bool)

(assert (=> b!4317062 m!4910831))

(declare-fun m!4910833 () Bool)

(assert (=> b!4317055 m!4910833))

(check-sat (not b!4317058) (not b!4317059) (not b!4317063) (not b_next!129581) (not b!4317062) tp_is_empty!24015 (not b!4317066) (not b!4317064) (not b!4317061) (not b_next!129579) b_and!340371 tp_is_empty!24013 (not mapNonEmpty!21086) b_and!340369 (not b!4317065) (not b!4317055))
(check-sat b_and!340369 b_and!340371 (not b_next!129581) (not b_next!129579))
(get-model)

(declare-fun d!1269437 () Bool)

(declare-fun res!1769392 () Bool)

(declare-fun e!2685631 () Bool)

(assert (=> d!1269437 (=> res!1769392 e!2685631)))

(assert (=> d!1269437 (= res!1769392 ((_ is Nil!48330) (toList!2514 lt!1536259)))))

(assert (=> d!1269437 (= (forall!8789 (toList!2514 lt!1536259) lambda!133537) e!2685631)))

(declare-fun b!4317090 () Bool)

(declare-fun e!2685632 () Bool)

(assert (=> b!4317090 (= e!2685631 e!2685632)))

(declare-fun res!1769393 () Bool)

(assert (=> b!4317090 (=> (not res!1769393) (not e!2685632))))

(declare-fun dynLambda!20487 (Int tuple2!47036) Bool)

(assert (=> b!4317090 (= res!1769393 (dynLambda!20487 lambda!133537 (h!53783 (toList!2514 lt!1536259))))))

(declare-fun b!4317091 () Bool)

(assert (=> b!4317091 (= e!2685632 (forall!8789 (t!355309 (toList!2514 lt!1536259)) lambda!133537))))

(assert (= (and d!1269437 (not res!1769392)) b!4317090))

(assert (= (and b!4317090 res!1769393) b!4317091))

(declare-fun b_lambda!126951 () Bool)

(assert (=> (not b_lambda!126951) (not b!4317090)))

(declare-fun m!4910835 () Bool)

(assert (=> b!4317090 m!4910835))

(declare-fun m!4910837 () Bool)

(assert (=> b!4317091 m!4910837))

(assert (=> b!4317062 d!1269437))

(declare-fun b!4317110 () Bool)

(declare-fun e!2685646 () tuple2!47034)

(assert (=> b!4317110 (= e!2685646 (tuple2!47035 true (v!42630 (underlying!9688 thiss!42308))))))

(declare-fun b!4317111 () Bool)

(declare-fun res!1769400 () Bool)

(declare-fun e!2685647 () Bool)

(assert (=> b!4317111 (=> (not res!1769400) (not e!2685647))))

(declare-fun lt!1536274 () tuple2!47034)

(declare-fun valid!3734 (MutLongMap!4729) Bool)

(assert (=> b!4317111 (= res!1769400 (valid!3734 (_2!26800 lt!1536274)))))

(declare-fun call!298786 () ListLongMap!1129)

(declare-fun e!2685644 () Bool)

(declare-fun b!4317112 () Bool)

(declare-fun call!298785 () ListLongMap!1129)

(declare-fun +!317 (ListLongMap!1129 tuple2!47036) ListLongMap!1129)

(assert (=> b!4317112 (= e!2685644 (= call!298786 (+!317 call!298785 (tuple2!47037 lt!1536256 (Cons!48329 (tuple2!47033 key!2048 v!9179) lt!1536257)))))))

(declare-fun b!4317113 () Bool)

(declare-fun e!2685645 () Bool)

(assert (=> b!4317113 (= e!2685645 e!2685644)))

(declare-fun res!1769401 () Bool)

(declare-fun contains!10351 (ListLongMap!1129 (_ BitVec 64)) Bool)

(assert (=> b!4317113 (= res!1769401 (contains!10351 call!298786 lt!1536256))))

(assert (=> b!4317113 (=> (not res!1769401) (not e!2685644))))

(declare-fun b!4317114 () Bool)

(assert (=> b!4317114 (= e!2685647 e!2685645)))

(declare-fun c!733951 () Bool)

(assert (=> b!4317114 (= c!733951 (_1!26800 lt!1536274))))

(declare-fun bm!298780 () Bool)

(assert (=> bm!298780 (= call!298786 (map!10346 (_2!26800 lt!1536274)))))

(declare-fun b!4317115 () Bool)

(declare-fun e!2685643 () tuple2!47034)

(declare-datatypes ((tuple2!47038 0))(
  ( (tuple2!47039 (_1!26802 Bool) (_2!26802 LongMapFixedSize!9458)) )
))
(declare-fun lt!1536272 () tuple2!47038)

(assert (=> b!4317115 (= e!2685643 (tuple2!47035 (_1!26802 lt!1536272) (LongMap!4729 (Cell!18726 (_2!26802 lt!1536272)))))))

(declare-fun lt!1536273 () tuple2!47034)

(declare-fun update!503 (LongMapFixedSize!9458 (_ BitVec 64) List!48453) tuple2!47038)

(assert (=> b!4317115 (= lt!1536272 (update!503 (v!42629 (underlying!9687 (_2!26800 lt!1536273))) lt!1536256 (Cons!48329 (tuple2!47033 key!2048 v!9179) lt!1536257)))))

(declare-fun bm!298781 () Bool)

(assert (=> bm!298781 (= call!298785 (map!10346 (v!42630 (underlying!9688 thiss!42308))))))

(declare-fun b!4317116 () Bool)

(declare-fun lt!1536271 () tuple2!47034)

(assert (=> b!4317116 (= e!2685646 (tuple2!47035 (_1!26800 lt!1536271) (_2!26800 lt!1536271)))))

(declare-fun repack!76 (MutLongMap!4729) tuple2!47034)

(assert (=> b!4317116 (= lt!1536271 (repack!76 (v!42630 (underlying!9688 thiss!42308))))))

(declare-fun d!1269439 () Bool)

(assert (=> d!1269439 e!2685647))

(declare-fun res!1769402 () Bool)

(assert (=> d!1269439 (=> (not res!1769402) (not e!2685647))))

(assert (=> d!1269439 (= res!1769402 ((_ is LongMap!4729) (_2!26800 lt!1536274)))))

(assert (=> d!1269439 (= lt!1536274 e!2685643)))

(declare-fun c!733950 () Bool)

(assert (=> d!1269439 (= c!733950 (_1!26800 lt!1536273))))

(assert (=> d!1269439 (= lt!1536273 e!2685646)))

(declare-fun c!733949 () Bool)

(declare-fun imbalanced!72 (MutLongMap!4729) Bool)

(assert (=> d!1269439 (= c!733949 (imbalanced!72 (v!42630 (underlying!9688 thiss!42308))))))

(assert (=> d!1269439 (valid!3734 (v!42630 (underlying!9688 thiss!42308)))))

(assert (=> d!1269439 (= (update!502 (v!42630 (underlying!9688 thiss!42308)) lt!1536256 (Cons!48329 (tuple2!47033 key!2048 v!9179) lt!1536257)) lt!1536274)))

(declare-fun b!4317117 () Bool)

(assert (=> b!4317117 (= e!2685643 (tuple2!47035 false (_2!26800 lt!1536273)))))

(declare-fun b!4317118 () Bool)

(assert (=> b!4317118 (= e!2685645 (= call!298786 call!298785))))

(assert (= (and d!1269439 c!733949) b!4317116))

(assert (= (and d!1269439 (not c!733949)) b!4317110))

(assert (= (and d!1269439 c!733950) b!4317115))

(assert (= (and d!1269439 (not c!733950)) b!4317117))

(assert (= (and d!1269439 res!1769402) b!4317111))

(assert (= (and b!4317111 res!1769400) b!4317114))

(assert (= (and b!4317114 c!733951) b!4317113))

(assert (= (and b!4317114 (not c!733951)) b!4317118))

(assert (= (and b!4317113 res!1769401) b!4317112))

(assert (= (or b!4317112 b!4317118) bm!298781))

(assert (= (or b!4317113 b!4317112 b!4317118) bm!298780))

(assert (=> bm!298781 m!4910813))

(declare-fun m!4910839 () Bool)

(assert (=> b!4317116 m!4910839))

(declare-fun m!4910841 () Bool)

(assert (=> b!4317115 m!4910841))

(declare-fun m!4910843 () Bool)

(assert (=> d!1269439 m!4910843))

(declare-fun m!4910845 () Bool)

(assert (=> d!1269439 m!4910845))

(declare-fun m!4910847 () Bool)

(assert (=> b!4317113 m!4910847))

(declare-fun m!4910849 () Bool)

(assert (=> bm!298780 m!4910849))

(declare-fun m!4910851 () Bool)

(assert (=> b!4317111 m!4910851))

(declare-fun m!4910853 () Bool)

(assert (=> b!4317112 m!4910853))

(assert (=> b!4317058 d!1269439))

(declare-fun d!1269441 () Bool)

(declare-fun lt!1536277 () Bool)

(assert (=> d!1269441 (= lt!1536277 (contains!10351 (map!10346 (v!42630 (underlying!9688 thiss!42308))) lt!1536256))))

(declare-fun contains!10352 (LongMapFixedSize!9458 (_ BitVec 64)) Bool)

(assert (=> d!1269441 (= lt!1536277 (contains!10352 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))) lt!1536256))))

(assert (=> d!1269441 (valid!3734 (v!42630 (underlying!9688 thiss!42308)))))

(assert (=> d!1269441 (= (contains!10348 (v!42630 (underlying!9688 thiss!42308)) lt!1536256) lt!1536277)))

(declare-fun bs!605920 () Bool)

(assert (= bs!605920 d!1269441))

(assert (=> bs!605920 m!4910813))

(assert (=> bs!605920 m!4910813))

(declare-fun m!4910855 () Bool)

(assert (=> bs!605920 m!4910855))

(declare-fun m!4910857 () Bool)

(assert (=> bs!605920 m!4910857))

(assert (=> bs!605920 m!4910845))

(assert (=> b!4317058 d!1269441))

(declare-fun d!1269443 () Bool)

(declare-fun hash!1129 (Hashable!4645 K!9569) (_ BitVec 64))

(assert (=> d!1269443 (= (hash!1128 (hashF!6854 thiss!42308) key!2048) (hash!1129 (hashF!6854 thiss!42308) key!2048))))

(declare-fun bs!605921 () Bool)

(assert (= bs!605921 d!1269443))

(declare-fun m!4910859 () Bool)

(assert (=> bs!605921 m!4910859))

(assert (=> b!4317058 d!1269443))

(declare-fun d!1269445 () Bool)

(declare-fun e!2685650 () Bool)

(assert (=> d!1269445 e!2685650))

(declare-fun c!733954 () Bool)

(assert (=> d!1269445 (= c!733954 (contains!10348 (v!42630 (underlying!9688 thiss!42308)) lt!1536256))))

(declare-fun lt!1536280 () List!48453)

(declare-fun apply!11105 (LongMapFixedSize!9458 (_ BitVec 64)) List!48453)

(assert (=> d!1269445 (= lt!1536280 (apply!11105 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))) lt!1536256))))

(assert (=> d!1269445 (valid!3734 (v!42630 (underlying!9688 thiss!42308)))))

(assert (=> d!1269445 (= (apply!11104 (v!42630 (underlying!9688 thiss!42308)) lt!1536256) lt!1536280)))

(declare-fun b!4317123 () Bool)

(declare-datatypes ((Option!10281 0))(
  ( (None!10280) (Some!10280 (v!42636 List!48453)) )
))
(declare-fun get!15652 (Option!10281) List!48453)

(declare-fun getValueByKey!286 (List!48454 (_ BitVec 64)) Option!10281)

(assert (=> b!4317123 (= e!2685650 (= lt!1536280 (get!15652 (getValueByKey!286 (toList!2514 (map!10346 (v!42630 (underlying!9688 thiss!42308)))) lt!1536256))))))

(declare-fun b!4317124 () Bool)

(declare-fun dynLambda!20488 (Int (_ BitVec 64)) List!48453)

(assert (=> b!4317124 (= e!2685650 (= lt!1536280 (dynLambda!20488 (defaultEntry!5114 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308))))) lt!1536256)))))

(assert (=> b!4317124 ((_ is LongMap!4729) (v!42630 (underlying!9688 thiss!42308)))))

(assert (= (and d!1269445 c!733954) b!4317123))

(assert (= (and d!1269445 (not c!733954)) b!4317124))

(declare-fun b_lambda!126953 () Bool)

(assert (=> (not b_lambda!126953) (not b!4317124)))

(declare-fun t!355311 () Bool)

(declare-fun tb!257341 () Bool)

(assert (=> (and b!4317059 (= (defaultEntry!5114 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308))))) (defaultEntry!5114 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) t!355311) tb!257341))

(assert (=> b!4317124 t!355311))

(declare-fun result!314822 () Bool)

(declare-fun b_and!340373 () Bool)

(assert (= b_and!340369 (and (=> t!355311 result!314822) b_and!340373)))

(assert (=> d!1269445 m!4910825))

(declare-fun m!4910861 () Bool)

(assert (=> d!1269445 m!4910861))

(assert (=> d!1269445 m!4910845))

(assert (=> b!4317123 m!4910813))

(declare-fun m!4910863 () Bool)

(assert (=> b!4317123 m!4910863))

(assert (=> b!4317123 m!4910863))

(declare-fun m!4910865 () Bool)

(assert (=> b!4317123 m!4910865))

(declare-fun m!4910867 () Bool)

(assert (=> b!4317124 m!4910867))

(assert (=> b!4317064 d!1269445))

(declare-fun d!1269447 () Bool)

(assert (=> d!1269447 (= (array_inv!5499 (_keys!5029 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) (bvsge (size!35682 (_keys!5029 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4317059 d!1269447))

(declare-fun d!1269449 () Bool)

(assert (=> d!1269449 (= (array_inv!5500 (_values!5010 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) (bvsge (size!35683 (_values!5010 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4317059 d!1269449))

(declare-fun d!1269451 () Bool)

(declare-fun lt!1536283 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7564 (List!48454) (InoxSet tuple2!47036))

(assert (=> d!1269451 (= lt!1536283 (select (content!7564 (toList!2514 lt!1536259)) (tuple2!47037 lt!1536256 lt!1536257)))))

(declare-fun e!2685656 () Bool)

(assert (=> d!1269451 (= lt!1536283 e!2685656)))

(declare-fun res!1769407 () Bool)

(assert (=> d!1269451 (=> (not res!1769407) (not e!2685656))))

(assert (=> d!1269451 (= res!1769407 ((_ is Cons!48330) (toList!2514 lt!1536259)))))

(assert (=> d!1269451 (= (contains!10350 (toList!2514 lt!1536259) (tuple2!47037 lt!1536256 lt!1536257)) lt!1536283)))

(declare-fun b!4317129 () Bool)

(declare-fun e!2685655 () Bool)

(assert (=> b!4317129 (= e!2685656 e!2685655)))

(declare-fun res!1769408 () Bool)

(assert (=> b!4317129 (=> res!1769408 e!2685655)))

(assert (=> b!4317129 (= res!1769408 (= (h!53783 (toList!2514 lt!1536259)) (tuple2!47037 lt!1536256 lt!1536257)))))

(declare-fun b!4317130 () Bool)

(assert (=> b!4317130 (= e!2685655 (contains!10350 (t!355309 (toList!2514 lt!1536259)) (tuple2!47037 lt!1536256 lt!1536257)))))

(assert (= (and d!1269451 res!1769407) b!4317129))

(assert (= (and b!4317129 (not res!1769408)) b!4317130))

(declare-fun m!4910869 () Bool)

(assert (=> d!1269451 m!4910869))

(declare-fun m!4910871 () Bool)

(assert (=> d!1269451 m!4910871))

(declare-fun m!4910873 () Bool)

(assert (=> b!4317130 m!4910873))

(assert (=> b!4317065 d!1269451))

(declare-fun d!1269453 () Bool)

(assert (=> d!1269453 (= (isEmpty!28094 lt!1536257) ((_ is Nil!48329) lt!1536257))))

(assert (=> b!4317066 d!1269453))

(declare-fun bs!605922 () Bool)

(declare-fun b!4317135 () Bool)

(assert (= bs!605922 (and b!4317135 b!4317062)))

(declare-fun lambda!133540 () Int)

(assert (=> bs!605922 (not (= lambda!133540 lambda!133537))))

(declare-fun d!1269455 () Bool)

(declare-fun res!1769413 () Bool)

(declare-fun e!2685659 () Bool)

(assert (=> d!1269455 (=> (not res!1769413) (not e!2685659))))

(assert (=> d!1269455 (= res!1769413 (valid!3734 (v!42630 (underlying!9688 thiss!42308))))))

(assert (=> d!1269455 (= (valid!3733 thiss!42308) e!2685659)))

(declare-fun res!1769414 () Bool)

(assert (=> b!4317135 (=> (not res!1769414) (not e!2685659))))

(assert (=> b!4317135 (= res!1769414 (forall!8789 (toList!2514 (map!10346 (v!42630 (underlying!9688 thiss!42308)))) lambda!133540))))

(declare-fun b!4317136 () Bool)

(declare-fun allKeysSameHashInMap!376 (ListLongMap!1129 Hashable!4645) Bool)

(assert (=> b!4317136 (= e!2685659 (allKeysSameHashInMap!376 (map!10346 (v!42630 (underlying!9688 thiss!42308))) (hashF!6854 thiss!42308)))))

(assert (= (and d!1269455 res!1769413) b!4317135))

(assert (= (and b!4317135 res!1769414) b!4317136))

(assert (=> d!1269455 m!4910845))

(assert (=> b!4317135 m!4910813))

(declare-fun m!4910875 () Bool)

(assert (=> b!4317135 m!4910875))

(assert (=> b!4317136 m!4910813))

(assert (=> b!4317136 m!4910813))

(declare-fun m!4910877 () Bool)

(assert (=> b!4317136 m!4910877))

(assert (=> b!4317055 d!1269455))

(declare-fun bs!605923 () Bool)

(declare-fun b!4317160 () Bool)

(assert (= bs!605923 (and b!4317160 b!4317062)))

(declare-fun lambda!133543 () Int)

(assert (=> bs!605923 (not (= lambda!133543 lambda!133537))))

(declare-fun bs!605924 () Bool)

(assert (= bs!605924 (and b!4317160 b!4317135)))

(assert (=> bs!605924 (= lambda!133543 lambda!133540)))

(declare-fun bm!298794 () Bool)

(declare-fun lt!1536328 () ListLongMap!1129)

(declare-fun call!298802 () Bool)

(declare-fun c!733966 () Bool)

(declare-fun call!298799 () (_ BitVec 64))

(declare-fun call!298800 () ListLongMap!1129)

(assert (=> bm!298794 (= call!298802 (contains!10351 (ite c!733966 lt!1536328 call!298800) call!298799))))

(declare-fun bm!298795 () Bool)

(assert (=> bm!298795 (= call!298800 (map!10346 (v!42630 (underlying!9688 thiss!42308))))))

(declare-fun b!4317159 () Bool)

(declare-datatypes ((Unit!67569 0))(
  ( (Unit!67570) )
))
(declare-fun e!2685679 () Unit!67569)

(declare-fun lt!1536339 () Unit!67569)

(assert (=> b!4317159 (= e!2685679 lt!1536339)))

(assert (=> b!4317159 (= lt!1536328 call!298800)))

(declare-fun lemmaInGenericMapThenInLongMap!154 (ListLongMap!1129 K!9569 Hashable!4645) Unit!67569)

(assert (=> b!4317159 (= lt!1536339 (lemmaInGenericMapThenInLongMap!154 lt!1536328 key!2048 (hashF!6854 thiss!42308)))))

(declare-fun res!1769421 () Bool)

(assert (=> b!4317159 (= res!1769421 call!298802)))

(declare-fun e!2685675 () Bool)

(assert (=> b!4317159 (=> (not res!1769421) (not e!2685675))))

(assert (=> b!4317159 e!2685675))

(declare-fun call!298804 () List!48453)

(declare-fun bm!298796 () Bool)

(declare-fun apply!11106 (ListLongMap!1129 (_ BitVec 64)) List!48453)

(assert (=> bm!298796 (= call!298804 (apply!11106 (ite c!733966 lt!1536328 call!298800) call!298799))))

(declare-fun e!2685677 () Bool)

(declare-fun b!4317161 () Bool)

(declare-fun lt!1536337 () (_ BitVec 64))

(declare-datatypes ((Option!10282 0))(
  ( (None!10281) (Some!10281 (v!42637 tuple2!47032)) )
))
(declare-fun isDefined!7582 (Option!10282) Bool)

(declare-fun getPair!154 (List!48453 K!9569) Option!10282)

(assert (=> b!4317161 (= e!2685677 (isDefined!7582 (getPair!154 (apply!11104 (v!42630 (underlying!9688 thiss!42308)) lt!1536337) key!2048)))))

(declare-fun b!4317162 () Bool)

(assert (=> b!4317162 false))

(declare-fun lt!1536333 () Unit!67569)

(declare-fun lt!1536336 () Unit!67569)

(assert (=> b!4317162 (= lt!1536333 lt!1536336)))

(declare-fun lt!1536332 () List!48454)

(declare-fun lt!1536334 () List!48453)

(assert (=> b!4317162 (contains!10350 lt!1536332 (tuple2!47037 lt!1536337 lt!1536334))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!166 (List!48454 (_ BitVec 64) List!48453) Unit!67569)

(assert (=> b!4317162 (= lt!1536336 (lemmaGetValueByKeyImpliesContainsTuple!166 lt!1536332 lt!1536337 lt!1536334))))

(assert (=> b!4317162 (= lt!1536334 (apply!11104 (v!42630 (underlying!9688 thiss!42308)) lt!1536337))))

(assert (=> b!4317162 (= lt!1536332 (toList!2514 (map!10346 (v!42630 (underlying!9688 thiss!42308)))))))

(declare-fun lt!1536325 () Unit!67569)

(declare-fun lt!1536340 () Unit!67569)

(assert (=> b!4317162 (= lt!1536325 lt!1536340)))

(declare-fun lt!1536329 () List!48454)

(declare-fun isDefined!7583 (Option!10281) Bool)

(assert (=> b!4317162 (isDefined!7583 (getValueByKey!286 lt!1536329 lt!1536337))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!205 (List!48454 (_ BitVec 64)) Unit!67569)

(assert (=> b!4317162 (= lt!1536340 (lemmaContainsKeyImpliesGetValueByKeyDefined!205 lt!1536329 lt!1536337))))

(assert (=> b!4317162 (= lt!1536329 (toList!2514 (map!10346 (v!42630 (underlying!9688 thiss!42308)))))))

(declare-fun lt!1536335 () Unit!67569)

(declare-fun lt!1536330 () Unit!67569)

(assert (=> b!4317162 (= lt!1536335 lt!1536330)))

(declare-fun lt!1536342 () List!48454)

(declare-fun containsKey!382 (List!48454 (_ BitVec 64)) Bool)

(assert (=> b!4317162 (containsKey!382 lt!1536342 lt!1536337)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!155 (List!48454 (_ BitVec 64)) Unit!67569)

(assert (=> b!4317162 (= lt!1536330 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!155 lt!1536342 lt!1536337))))

(assert (=> b!4317162 (= lt!1536342 (toList!2514 (map!10346 (v!42630 (underlying!9688 thiss!42308)))))))

(declare-fun e!2685680 () Unit!67569)

(declare-fun Unit!67571 () Unit!67569)

(assert (=> b!4317162 (= e!2685680 Unit!67571)))

(declare-fun b!4317163 () Bool)

(assert (=> b!4317163 false))

(declare-fun lt!1536341 () Unit!67569)

(declare-fun lt!1536326 () Unit!67569)

(assert (=> b!4317163 (= lt!1536341 lt!1536326)))

(declare-fun lt!1536343 () ListLongMap!1129)

(declare-fun contains!10353 (ListMap!1793 K!9569) Bool)

(declare-fun extractMap!360 (List!48454) ListMap!1793)

(assert (=> b!4317163 (contains!10353 (extractMap!360 (toList!2514 lt!1536343)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!154 (ListLongMap!1129 K!9569 Hashable!4645) Unit!67569)

(assert (=> b!4317163 (= lt!1536326 (lemmaInLongMapThenInGenericMap!154 lt!1536343 key!2048 (hashF!6854 thiss!42308)))))

(assert (=> b!4317163 (= lt!1536343 call!298800)))

(declare-fun e!2685676 () Unit!67569)

(declare-fun Unit!67572 () Unit!67569)

(assert (=> b!4317163 (= e!2685676 Unit!67572)))

(declare-fun b!4317164 () Bool)

(declare-fun e!2685674 () Bool)

(declare-fun call!298803 () Bool)

(assert (=> b!4317164 (= e!2685674 call!298803)))

(declare-fun b!4317165 () Bool)

(declare-fun e!2685678 () Unit!67569)

(declare-fun Unit!67573 () Unit!67569)

(assert (=> b!4317165 (= e!2685678 Unit!67573)))

(declare-fun b!4317166 () Bool)

(assert (=> b!4317166 (= e!2685679 e!2685676)))

(declare-fun res!1769423 () Bool)

(assert (=> b!4317166 (= res!1769423 call!298802)))

(assert (=> b!4317166 (=> (not res!1769423) (not e!2685674))))

(declare-fun c!733963 () Bool)

(assert (=> b!4317166 (= c!733963 e!2685674)))

(declare-fun bm!298797 () Bool)

(assert (=> bm!298797 (= call!298799 (hash!1128 (hashF!6854 thiss!42308) key!2048))))

(declare-fun bm!298798 () Bool)

(declare-fun call!298801 () Option!10282)

(assert (=> bm!298798 (= call!298801 (getPair!154 call!298804 key!2048))))

(declare-fun b!4317167 () Bool)

(declare-fun Unit!67574 () Unit!67569)

(assert (=> b!4317167 (= e!2685680 Unit!67574)))

(declare-fun b!4317168 () Bool)

(assert (=> b!4317168 (= e!2685675 call!298803)))

(declare-fun bm!298799 () Bool)

(assert (=> bm!298799 (= call!298803 (isDefined!7582 call!298801))))

(declare-fun b!4317169 () Bool)

(declare-fun Unit!67575 () Unit!67569)

(assert (=> b!4317169 (= e!2685676 Unit!67575)))

(declare-fun forallContained!1522 (List!48454 Int tuple2!47036) Unit!67569)

(assert (=> b!4317160 (= e!2685678 (forallContained!1522 (toList!2514 (map!10346 (v!42630 (underlying!9688 thiss!42308)))) lambda!133543 (tuple2!47037 lt!1536337 (apply!11104 (v!42630 (underlying!9688 thiss!42308)) lt!1536337))))))

(declare-fun c!733964 () Bool)

(assert (=> b!4317160 (= c!733964 (not (contains!10350 (toList!2514 (map!10346 (v!42630 (underlying!9688 thiss!42308)))) (tuple2!47037 lt!1536337 (apply!11104 (v!42630 (underlying!9688 thiss!42308)) lt!1536337)))))))

(declare-fun lt!1536338 () Unit!67569)

(assert (=> b!4317160 (= lt!1536338 e!2685680)))

(declare-fun d!1269457 () Bool)

(declare-fun lt!1536331 () Bool)

(assert (=> d!1269457 (= lt!1536331 (contains!10353 (map!10347 thiss!42308) key!2048))))

(assert (=> d!1269457 (= lt!1536331 e!2685677)))

(declare-fun res!1769422 () Bool)

(assert (=> d!1269457 (=> (not res!1769422) (not e!2685677))))

(assert (=> d!1269457 (= res!1769422 (contains!10348 (v!42630 (underlying!9688 thiss!42308)) lt!1536337))))

(declare-fun lt!1536327 () Unit!67569)

(assert (=> d!1269457 (= lt!1536327 e!2685679)))

(assert (=> d!1269457 (= c!733966 (contains!10353 (extractMap!360 (toList!2514 (map!10346 (v!42630 (underlying!9688 thiss!42308))))) key!2048))))

(declare-fun lt!1536324 () Unit!67569)

(assert (=> d!1269457 (= lt!1536324 e!2685678)))

(declare-fun c!733965 () Bool)

(assert (=> d!1269457 (= c!733965 (contains!10348 (v!42630 (underlying!9688 thiss!42308)) lt!1536337))))

(assert (=> d!1269457 (= lt!1536337 (hash!1128 (hashF!6854 thiss!42308) key!2048))))

(assert (=> d!1269457 (valid!3733 thiss!42308)))

(assert (=> d!1269457 (= (contains!10349 thiss!42308 key!2048) lt!1536331)))

(assert (= (and d!1269457 c!733965) b!4317160))

(assert (= (and d!1269457 (not c!733965)) b!4317165))

(assert (= (and b!4317160 c!733964) b!4317162))

(assert (= (and b!4317160 (not c!733964)) b!4317167))

(assert (= (and d!1269457 c!733966) b!4317159))

(assert (= (and d!1269457 (not c!733966)) b!4317166))

(assert (= (and b!4317159 res!1769421) b!4317168))

(assert (= (and b!4317166 res!1769423) b!4317164))

(assert (= (and b!4317166 c!733963) b!4317163))

(assert (= (and b!4317166 (not c!733963)) b!4317169))

(assert (= (or b!4317159 b!4317166 b!4317164 b!4317163) bm!298795))

(assert (= (or b!4317159 b!4317168 b!4317166 b!4317164) bm!298797))

(assert (= (or b!4317168 b!4317164) bm!298796))

(assert (= (or b!4317159 b!4317166) bm!298794))

(assert (= (or b!4317168 b!4317164) bm!298798))

(assert (= (or b!4317168 b!4317164) bm!298799))

(assert (= (and d!1269457 res!1769422) b!4317161))

(declare-fun m!4910879 () Bool)

(assert (=> b!4317159 m!4910879))

(assert (=> bm!298795 m!4910813))

(declare-fun m!4910881 () Bool)

(assert (=> bm!298796 m!4910881))

(declare-fun m!4910883 () Bool)

(assert (=> b!4317162 m!4910883))

(declare-fun m!4910885 () Bool)

(assert (=> b!4317162 m!4910885))

(declare-fun m!4910887 () Bool)

(assert (=> b!4317162 m!4910887))

(declare-fun m!4910889 () Bool)

(assert (=> b!4317162 m!4910889))

(declare-fun m!4910891 () Bool)

(assert (=> b!4317162 m!4910891))

(declare-fun m!4910893 () Bool)

(assert (=> b!4317162 m!4910893))

(declare-fun m!4910895 () Bool)

(assert (=> b!4317162 m!4910895))

(declare-fun m!4910897 () Bool)

(assert (=> b!4317162 m!4910897))

(assert (=> b!4317162 m!4910813))

(assert (=> b!4317162 m!4910887))

(assert (=> b!4317161 m!4910895))

(assert (=> b!4317161 m!4910895))

(declare-fun m!4910899 () Bool)

(assert (=> b!4317161 m!4910899))

(assert (=> b!4317161 m!4910899))

(declare-fun m!4910901 () Bool)

(assert (=> b!4317161 m!4910901))

(declare-fun m!4910903 () Bool)

(assert (=> bm!298794 m!4910903))

(declare-fun m!4910905 () Bool)

(assert (=> d!1269457 m!4910905))

(assert (=> d!1269457 m!4910827))

(assert (=> d!1269457 m!4910833))

(declare-fun m!4910907 () Bool)

(assert (=> d!1269457 m!4910907))

(assert (=> d!1269457 m!4910815))

(declare-fun m!4910909 () Bool)

(assert (=> d!1269457 m!4910909))

(assert (=> d!1269457 m!4910907))

(declare-fun m!4910911 () Bool)

(assert (=> d!1269457 m!4910911))

(assert (=> d!1269457 m!4910813))

(assert (=> d!1269457 m!4910815))

(assert (=> b!4317160 m!4910813))

(assert (=> b!4317160 m!4910895))

(declare-fun m!4910913 () Bool)

(assert (=> b!4317160 m!4910913))

(declare-fun m!4910915 () Bool)

(assert (=> b!4317160 m!4910915))

(declare-fun m!4910917 () Bool)

(assert (=> bm!298798 m!4910917))

(declare-fun m!4910919 () Bool)

(assert (=> b!4317163 m!4910919))

(assert (=> b!4317163 m!4910919))

(declare-fun m!4910921 () Bool)

(assert (=> b!4317163 m!4910921))

(declare-fun m!4910923 () Bool)

(assert (=> b!4317163 m!4910923))

(declare-fun m!4910925 () Bool)

(assert (=> bm!298799 m!4910925))

(assert (=> bm!298797 m!4910827))

(assert (=> b!4317061 d!1269457))

(declare-fun d!1269459 () Bool)

(declare-fun map!10348 (LongMapFixedSize!9458) ListLongMap!1129)

(assert (=> d!1269459 (= (map!10346 (v!42630 (underlying!9688 thiss!42308))) (map!10348 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308))))))))

(declare-fun bs!605925 () Bool)

(assert (= bs!605925 d!1269459))

(declare-fun m!4910927 () Bool)

(assert (=> bs!605925 m!4910927))

(assert (=> b!4317061 d!1269459))

(declare-fun d!1269461 () Bool)

(declare-fun lt!1536346 () ListMap!1793)

(declare-fun invariantList!593 (List!48453) Bool)

(assert (=> d!1269461 (invariantList!593 (toList!2515 lt!1536346))))

(assert (=> d!1269461 (= lt!1536346 (extractMap!360 (toList!2514 (map!10346 (v!42630 (underlying!9688 thiss!42308))))))))

(assert (=> d!1269461 (valid!3733 thiss!42308)))

(assert (=> d!1269461 (= (map!10347 thiss!42308) lt!1536346)))

(declare-fun bs!605926 () Bool)

(assert (= bs!605926 d!1269461))

(declare-fun m!4910929 () Bool)

(assert (=> bs!605926 m!4910929))

(assert (=> bs!605926 m!4910813))

(assert (=> bs!605926 m!4910907))

(assert (=> bs!605926 m!4910833))

(assert (=> b!4317061 d!1269461))

(declare-fun e!2685685 () Bool)

(declare-fun tp!1326281 () Bool)

(declare-fun b!4317176 () Bool)

(assert (=> b!4317176 (= e!2685685 (and tp_is_empty!24013 tp_is_empty!24015 tp!1326281))))

(declare-fun mapNonEmpty!21089 () Bool)

(declare-fun mapRes!21089 () Bool)

(declare-fun tp!1326280 () Bool)

(assert (=> mapNonEmpty!21089 (= mapRes!21089 (and tp!1326280 e!2685685))))

(declare-fun mapValue!21089 () List!48453)

(declare-fun mapKey!21089 () (_ BitVec 32))

(declare-fun mapRest!21089 () (Array (_ BitVec 32) List!48453))

(assert (=> mapNonEmpty!21089 (= mapRest!21086 (store mapRest!21089 mapKey!21089 mapValue!21089))))

(declare-fun b!4317177 () Bool)

(declare-fun e!2685686 () Bool)

(declare-fun tp!1326282 () Bool)

(assert (=> b!4317177 (= e!2685686 (and tp_is_empty!24013 tp_is_empty!24015 tp!1326282))))

(declare-fun condMapEmpty!21089 () Bool)

(declare-fun mapDefault!21089 () List!48453)

(assert (=> mapNonEmpty!21086 (= condMapEmpty!21089 (= mapRest!21086 ((as const (Array (_ BitVec 32) List!48453)) mapDefault!21089)))))

(assert (=> mapNonEmpty!21086 (= tp!1326269 (and e!2685686 mapRes!21089))))

(declare-fun mapIsEmpty!21089 () Bool)

(assert (=> mapIsEmpty!21089 mapRes!21089))

(assert (= (and mapNonEmpty!21086 condMapEmpty!21089) mapIsEmpty!21089))

(assert (= (and mapNonEmpty!21086 (not condMapEmpty!21089)) mapNonEmpty!21089))

(assert (= (and mapNonEmpty!21089 ((_ is Cons!48329) mapValue!21089)) b!4317176))

(assert (= (and mapNonEmpty!21086 ((_ is Cons!48329) mapDefault!21089)) b!4317177))

(declare-fun m!4910931 () Bool)

(assert (=> mapNonEmpty!21089 m!4910931))

(declare-fun b!4317182 () Bool)

(declare-fun tp!1326285 () Bool)

(declare-fun e!2685689 () Bool)

(assert (=> b!4317182 (= e!2685689 (and tp_is_empty!24013 tp_is_empty!24015 tp!1326285))))

(assert (=> mapNonEmpty!21086 (= tp!1326270 e!2685689)))

(assert (= (and mapNonEmpty!21086 ((_ is Cons!48329) mapValue!21086)) b!4317182))

(declare-fun e!2685690 () Bool)

(declare-fun tp!1326286 () Bool)

(declare-fun b!4317183 () Bool)

(assert (=> b!4317183 (= e!2685690 (and tp_is_empty!24013 tp_is_empty!24015 tp!1326286))))

(assert (=> b!4317063 (= tp!1326271 e!2685690)))

(assert (= (and b!4317063 ((_ is Cons!48329) mapDefault!21086)) b!4317183))

(declare-fun tp!1326287 () Bool)

(declare-fun b!4317184 () Bool)

(declare-fun e!2685691 () Bool)

(assert (=> b!4317184 (= e!2685691 (and tp_is_empty!24013 tp_is_empty!24015 tp!1326287))))

(assert (=> b!4317059 (= tp!1326267 e!2685691)))

(assert (= (and b!4317059 ((_ is Cons!48329) (zeroValue!4988 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308))))))) b!4317184))

(declare-fun b!4317185 () Bool)

(declare-fun tp!1326288 () Bool)

(declare-fun e!2685692 () Bool)

(assert (=> b!4317185 (= e!2685692 (and tp_is_empty!24013 tp_is_empty!24015 tp!1326288))))

(assert (=> b!4317059 (= tp!1326268 e!2685692)))

(assert (= (and b!4317059 ((_ is Cons!48329) (minValue!4988 (v!42629 (underlying!9687 (v!42630 (underlying!9688 thiss!42308))))))) b!4317185))

(declare-fun b_lambda!126955 () Bool)

(assert (= b_lambda!126953 (or (and b!4317059 b_free!128875) b_lambda!126955)))

(declare-fun b_lambda!126957 () Bool)

(assert (= b_lambda!126951 (or b!4317062 b_lambda!126957)))

(declare-fun bs!605927 () Bool)

(declare-fun d!1269463 () Bool)

(assert (= bs!605927 (and d!1269463 b!4317062)))

(declare-fun allKeysSameHash!226 (List!48453 (_ BitVec 64) Hashable!4645) Bool)

(assert (=> bs!605927 (= (dynLambda!20487 lambda!133537 (h!53783 (toList!2514 lt!1536259))) (allKeysSameHash!226 (_2!26801 (h!53783 (toList!2514 lt!1536259))) (_1!26801 (h!53783 (toList!2514 lt!1536259))) (hashF!6854 thiss!42308)))))

(declare-fun m!4910933 () Bool)

(assert (=> bs!605927 m!4910933))

(assert (=> b!4317090 d!1269463))

(check-sat (not b!4317163) (not b!4317115) (not b!4317161) (not b!4317159) (not b!4317185) (not b_lambda!126955) b_and!340373 (not d!1269459) (not d!1269457) (not bm!298781) (not b_lambda!126957) (not b!4317160) (not b_next!129579) (not d!1269461) b_and!340371 (not bm!298780) (not bm!298795) (not b!4317183) (not b!4317123) (not bm!298798) (not d!1269443) (not d!1269439) (not bm!298797) (not bs!605927) (not b!4317177) (not b_next!129581) (not b!4317162) (not b!4317113) (not bm!298794) (not mapNonEmpty!21089) (not b!4317091) tp_is_empty!24013 (not b!4317130) (not d!1269455) (not d!1269451) (not bm!298799) (not b!4317136) (not d!1269445) (not b!4317112) (not b!4317182) (not d!1269441) tp_is_empty!24015 (not b!4317184) (not b!4317135) (not tb!257341) (not b!4317116) (not b!4317111) (not b!4317176) (not bm!298796))
(check-sat b_and!340373 b_and!340371 (not b_next!129581) (not b_next!129579))

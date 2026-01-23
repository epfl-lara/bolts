; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414636 () Bool)

(assert start!414636)

(declare-fun b!4312799 () Bool)

(declare-fun b_free!128723 () Bool)

(declare-fun b_next!129427 () Bool)

(assert (=> b!4312799 (= b_free!128723 (not b_next!129427))))

(declare-fun tp!1325269 () Bool)

(declare-fun b_and!340177 () Bool)

(assert (=> b!4312799 (= tp!1325269 b_and!340177)))

(declare-fun b!4312794 () Bool)

(declare-fun b_free!128725 () Bool)

(declare-fun b_next!129429 () Bool)

(assert (=> b!4312794 (= b_free!128725 (not b_next!129429))))

(declare-fun tp!1325270 () Bool)

(declare-fun b_and!340179 () Bool)

(assert (=> b!4312794 (= tp!1325270 b_and!340179)))

(declare-fun b!4312785 () Bool)

(declare-fun e!2682536 () Bool)

(declare-fun tp!1325271 () Bool)

(declare-fun mapRes!20934 () Bool)

(assert (=> b!4312785 (= e!2682536 (and tp!1325271 mapRes!20934))))

(declare-fun condMapEmpty!20934 () Bool)

(declare-datatypes ((V!9676 0))(
  ( (V!9677 (val!15837 Int)) )
))
(declare-datatypes ((K!9474 0))(
  ( (K!9475 (val!15838 Int)) )
))
(declare-datatypes ((tuple2!46808 0))(
  ( (tuple2!46809 (_1!26685 K!9474) (_2!26685 V!9676)) )
))
(declare-datatypes ((List!48375 0))(
  ( (Nil!48251) (Cons!48251 (h!53695 tuple2!46808) (t!355202 List!48375)) )
))
(declare-datatypes ((array!16944 0))(
  ( (array!16945 (arr!7567 (Array (_ BitVec 32) (_ BitVec 64))) (size!35606 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4607 0))(
  ( (HashableExt!4606 (__x!30098 Int)) )
))
(declare-datatypes ((array!16946 0))(
  ( (array!16947 (arr!7568 (Array (_ BitVec 32) List!48375)) (size!35607 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9382 0))(
  ( (LongMapFixedSize!9383 (defaultEntry!5076 Int) (mask!13265 (_ BitVec 32)) (extraKeys!4940 (_ BitVec 32)) (zeroValue!4950 List!48375) (minValue!4950 List!48375) (_size!9425 (_ BitVec 32)) (_keys!4991 array!16944) (_values!4972 array!16946) (_vacant!4752 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18573 0))(
  ( (Cell!18574 (v!42458 LongMapFixedSize!9382)) )
))
(declare-datatypes ((MutLongMap!4691 0))(
  ( (LongMap!4691 (underlying!9611 Cell!18573)) (MutLongMapExt!4690 (__x!30099 Int)) )
))
(declare-datatypes ((Cell!18575 0))(
  ( (Cell!18576 (v!42459 MutLongMap!4691)) )
))
(declare-datatypes ((MutableMap!4597 0))(
  ( (MutableMapExt!4596 (__x!30100 Int)) (HashMap!4597 (underlying!9612 Cell!18575) (hashF!6763 Hashable!4607) (_size!9426 (_ BitVec 32)) (defaultValue!4768 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4597)

(declare-fun mapDefault!20934 () List!48375)

(assert (=> b!4312785 (= condMapEmpty!20934 (= (arr!7568 (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48375)) mapDefault!20934)))))

(declare-fun b!4312786 () Bool)

(declare-fun e!2682525 () Bool)

(declare-fun e!2682531 () Bool)

(assert (=> b!4312786 (= e!2682525 (not e!2682531))))

(declare-fun res!1767594 () Bool)

(assert (=> b!4312786 (=> res!1767594 e!2682531)))

(declare-datatypes ((tuple2!46810 0))(
  ( (tuple2!46811 (_1!26686 (_ BitVec 64)) (_2!26686 List!48375)) )
))
(declare-datatypes ((List!48376 0))(
  ( (Nil!48252) (Cons!48252 (h!53696 tuple2!46810) (t!355203 List!48376)) )
))
(declare-datatypes ((ListLongMap!1065 0))(
  ( (ListLongMap!1066 (toList!2452 List!48376)) )
))
(declare-fun lt!1532737 () ListLongMap!1065)

(declare-fun lambda!133132 () Int)

(declare-fun forall!8756 (List!48376 Int) Bool)

(assert (=> b!4312786 (= res!1767594 (not (forall!8756 (toList!2452 lt!1532737) lambda!133132)))))

(declare-fun e!2682534 () Bool)

(assert (=> b!4312786 e!2682534))

(declare-fun res!1767590 () Bool)

(assert (=> b!4312786 (=> (not res!1767590) (not e!2682534))))

(declare-fun lt!1532741 () ListLongMap!1065)

(assert (=> b!4312786 (= res!1767590 (forall!8756 (toList!2452 lt!1532741) lambda!133132))))

(declare-fun lt!1532739 () List!48375)

(declare-fun lt!1532744 () (_ BitVec 64))

(declare-fun +!283 (ListLongMap!1065 tuple2!46810) ListLongMap!1065)

(assert (=> b!4312786 (= lt!1532741 (+!283 lt!1532737 (tuple2!46811 lt!1532744 lt!1532739)))))

(declare-datatypes ((Unit!67411 0))(
  ( (Unit!67412) )
))
(declare-fun lt!1532740 () Unit!67411)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!155 (ListLongMap!1065 (_ BitVec 64) List!48375 Hashable!4607) Unit!67411)

(assert (=> b!4312786 (= lt!1532740 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!155 lt!1532737 lt!1532744 lt!1532739 (hashF!6763 thiss!42308)))))

(declare-fun e!2682533 () Bool)

(assert (=> b!4312786 e!2682533))

(declare-fun res!1767587 () Bool)

(assert (=> b!4312786 (=> (not res!1767587) (not e!2682533))))

(declare-fun lt!1532746 () List!48375)

(declare-fun noDuplicateKeys!233 (List!48375) Bool)

(assert (=> b!4312786 (= res!1767587 (noDuplicateKeys!233 lt!1532746))))

(declare-fun lt!1532745 () Unit!67411)

(declare-fun lt!1532735 () List!48375)

(declare-fun key!2048 () K!9474)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!181 (List!48375 K!9474) Unit!67411)

(assert (=> b!4312786 (= lt!1532745 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!181 lt!1532735 key!2048))))

(declare-fun allKeysSameHash!206 (List!48375 (_ BitVec 64) Hashable!4607) Bool)

(assert (=> b!4312786 (allKeysSameHash!206 lt!1532746 lt!1532744 (hashF!6763 thiss!42308))))

(declare-fun lt!1532742 () Unit!67411)

(declare-fun lemmaRemovePairForKeyPreservesHash!186 (List!48375 K!9474 (_ BitVec 64) Hashable!4607) Unit!67411)

(assert (=> b!4312786 (= lt!1532742 (lemmaRemovePairForKeyPreservesHash!186 lt!1532735 key!2048 lt!1532744 (hashF!6763 thiss!42308)))))

(assert (=> b!4312786 (allKeysSameHash!206 lt!1532735 lt!1532744 (hashF!6763 thiss!42308))))

(declare-fun lt!1532736 () Unit!67411)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!193 (List!48376 (_ BitVec 64) List!48375 Hashable!4607) Unit!67411)

(assert (=> b!4312786 (= lt!1532736 (lemmaInLongMapAllKeySameHashThenForTuple!193 (toList!2452 lt!1532737) lt!1532744 lt!1532735 (hashF!6763 thiss!42308)))))

(declare-fun b!4312788 () Bool)

(declare-fun res!1767593 () Bool)

(declare-fun e!2682535 () Bool)

(assert (=> b!4312788 (=> (not res!1767593) (not e!2682535))))

(declare-fun valid!3685 (MutableMap!4597) Bool)

(assert (=> b!4312788 (= res!1767593 (valid!3685 thiss!42308))))

(declare-fun b!4312789 () Bool)

(declare-fun e!2682527 () Bool)

(declare-fun e!2682528 () Bool)

(assert (=> b!4312789 (= e!2682527 e!2682528)))

(declare-fun mapNonEmpty!20934 () Bool)

(declare-fun tp!1325274 () Bool)

(declare-fun tp!1325275 () Bool)

(assert (=> mapNonEmpty!20934 (= mapRes!20934 (and tp!1325274 tp!1325275))))

(declare-fun mapRest!20934 () (Array (_ BitVec 32) List!48375))

(declare-fun mapKey!20934 () (_ BitVec 32))

(declare-fun mapValue!20934 () List!48375)

(assert (=> mapNonEmpty!20934 (= (arr!7568 (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) (store mapRest!20934 mapKey!20934 mapValue!20934))))

(declare-fun b!4312790 () Bool)

(declare-fun res!1767595 () Bool)

(assert (=> b!4312790 (=> res!1767595 e!2682531)))

(declare-fun allKeysSameHashInMap!353 (ListLongMap!1065 Hashable!4607) Bool)

(assert (=> b!4312790 (= res!1767595 (not (allKeysSameHashInMap!353 lt!1532737 (hashF!6763 thiss!42308))))))

(declare-fun b!4312787 () Bool)

(declare-fun e!2682532 () Bool)

(declare-fun lt!1532743 () MutLongMap!4691)

(get-info :version)

(assert (=> b!4312787 (= e!2682532 (and e!2682527 ((_ is LongMap!4691) lt!1532743)))))

(assert (=> b!4312787 (= lt!1532743 (v!42459 (underlying!9612 thiss!42308)))))

(declare-fun res!1767591 () Bool)

(assert (=> start!414636 (=> (not res!1767591) (not e!2682535))))

(assert (=> start!414636 (= res!1767591 ((_ is HashMap!4597) thiss!42308))))

(assert (=> start!414636 e!2682535))

(declare-fun e!2682537 () Bool)

(assert (=> start!414636 e!2682537))

(declare-fun tp_is_empty!23869 () Bool)

(assert (=> start!414636 tp_is_empty!23869))

(declare-fun tp_is_empty!23871 () Bool)

(assert (=> start!414636 tp_is_empty!23871))

(declare-fun b!4312791 () Bool)

(declare-fun res!1767592 () Bool)

(assert (=> b!4312791 (=> (not res!1767592) (not e!2682533))))

(declare-fun containsKey!340 (List!48375 K!9474) Bool)

(assert (=> b!4312791 (= res!1767592 (not (containsKey!340 lt!1532746 key!2048)))))

(declare-fun b!4312792 () Bool)

(declare-fun e!2682530 () Bool)

(assert (=> b!4312792 (= e!2682528 e!2682530)))

(declare-fun b!4312793 () Bool)

(assert (=> b!4312793 (= e!2682534 (allKeysSameHashInMap!353 lt!1532741 (hashF!6763 thiss!42308)))))

(assert (=> b!4312794 (= e!2682537 (and e!2682532 tp!1325270))))

(declare-fun mapIsEmpty!20934 () Bool)

(assert (=> mapIsEmpty!20934 mapRes!20934))

(declare-fun b!4312795 () Bool)

(declare-fun e!2682529 () Bool)

(assert (=> b!4312795 (= e!2682535 e!2682529)))

(declare-fun res!1767589 () Bool)

(assert (=> b!4312795 (=> (not res!1767589) (not e!2682529))))

(declare-fun contains!10234 (MutableMap!4597 K!9474) Bool)

(assert (=> b!4312795 (= res!1767589 (contains!10234 thiss!42308 key!2048))))

(declare-fun map!10258 (MutLongMap!4691) ListLongMap!1065)

(assert (=> b!4312795 (= lt!1532737 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))

(declare-datatypes ((ListMap!1733 0))(
  ( (ListMap!1734 (toList!2453 List!48375)) )
))
(declare-fun lt!1532738 () ListMap!1733)

(declare-fun map!10259 (MutableMap!4597) ListMap!1733)

(assert (=> b!4312795 (= lt!1532738 (map!10259 thiss!42308))))

(declare-fun b!4312796 () Bool)

(assert (=> b!4312796 (= e!2682533 (noDuplicateKeys!233 lt!1532739))))

(declare-fun b!4312797 () Bool)

(assert (=> b!4312797 (= e!2682531 (allKeysSameHash!206 lt!1532739 lt!1532744 (hashF!6763 thiss!42308)))))

(declare-fun b!4312798 () Bool)

(assert (=> b!4312798 (= e!2682529 e!2682525)))

(declare-fun res!1767588 () Bool)

(assert (=> b!4312798 (=> (not res!1767588) (not e!2682525))))

(declare-datatypes ((tuple2!46812 0))(
  ( (tuple2!46813 (_1!26687 Bool) (_2!26687 MutLongMap!4691)) )
))
(declare-fun update!465 (MutLongMap!4691 (_ BitVec 64) List!48375) tuple2!46812)

(assert (=> b!4312798 (= res!1767588 (_1!26687 (update!465 (v!42459 (underlying!9612 thiss!42308)) lt!1532744 lt!1532739)))))

(declare-fun v!9179 () V!9676)

(assert (=> b!4312798 (= lt!1532739 (Cons!48251 (tuple2!46809 key!2048 v!9179) lt!1532746))))

(declare-fun removePairForKey!232 (List!48375 K!9474) List!48375)

(assert (=> b!4312798 (= lt!1532746 (removePairForKey!232 lt!1532735 key!2048))))

(declare-fun apply!11053 (MutLongMap!4691 (_ BitVec 64)) List!48375)

(assert (=> b!4312798 (= lt!1532735 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532744))))

(declare-fun hash!1056 (Hashable!4607 K!9474) (_ BitVec 64))

(assert (=> b!4312798 (= lt!1532744 (hash!1056 (hashF!6763 thiss!42308) key!2048))))

(declare-fun tp!1325272 () Bool)

(declare-fun tp!1325273 () Bool)

(declare-fun array_inv!5437 (array!16944) Bool)

(declare-fun array_inv!5438 (array!16946) Bool)

(assert (=> b!4312799 (= e!2682530 (and tp!1325269 tp!1325272 tp!1325273 (array_inv!5437 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) (array_inv!5438 (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) e!2682536))))

(assert (= (and start!414636 res!1767591) b!4312788))

(assert (= (and b!4312788 res!1767593) b!4312795))

(assert (= (and b!4312795 res!1767589) b!4312798))

(assert (= (and b!4312798 res!1767588) b!4312786))

(assert (= (and b!4312786 res!1767587) b!4312791))

(assert (= (and b!4312791 res!1767592) b!4312796))

(assert (= (and b!4312786 res!1767590) b!4312793))

(assert (= (and b!4312786 (not res!1767594)) b!4312790))

(assert (= (and b!4312790 (not res!1767595)) b!4312797))

(assert (= (and b!4312785 condMapEmpty!20934) mapIsEmpty!20934))

(assert (= (and b!4312785 (not condMapEmpty!20934)) mapNonEmpty!20934))

(assert (= b!4312799 b!4312785))

(assert (= b!4312792 b!4312799))

(assert (= b!4312789 b!4312792))

(assert (= (and b!4312787 ((_ is LongMap!4691) (v!42459 (underlying!9612 thiss!42308)))) b!4312789))

(assert (= b!4312794 b!4312787))

(assert (= (and start!414636 ((_ is HashMap!4597) thiss!42308)) b!4312794))

(declare-fun m!4905845 () Bool)

(assert (=> b!4312798 m!4905845))

(declare-fun m!4905847 () Bool)

(assert (=> b!4312798 m!4905847))

(declare-fun m!4905849 () Bool)

(assert (=> b!4312798 m!4905849))

(declare-fun m!4905851 () Bool)

(assert (=> b!4312798 m!4905851))

(declare-fun m!4905853 () Bool)

(assert (=> b!4312797 m!4905853))

(declare-fun m!4905855 () Bool)

(assert (=> b!4312790 m!4905855))

(declare-fun m!4905857 () Bool)

(assert (=> mapNonEmpty!20934 m!4905857))

(declare-fun m!4905859 () Bool)

(assert (=> b!4312799 m!4905859))

(declare-fun m!4905861 () Bool)

(assert (=> b!4312799 m!4905861))

(declare-fun m!4905863 () Bool)

(assert (=> b!4312793 m!4905863))

(declare-fun m!4905865 () Bool)

(assert (=> b!4312795 m!4905865))

(declare-fun m!4905867 () Bool)

(assert (=> b!4312795 m!4905867))

(declare-fun m!4905869 () Bool)

(assert (=> b!4312795 m!4905869))

(declare-fun m!4905871 () Bool)

(assert (=> b!4312788 m!4905871))

(declare-fun m!4905873 () Bool)

(assert (=> b!4312796 m!4905873))

(declare-fun m!4905875 () Bool)

(assert (=> b!4312791 m!4905875))

(declare-fun m!4905877 () Bool)

(assert (=> b!4312786 m!4905877))

(declare-fun m!4905879 () Bool)

(assert (=> b!4312786 m!4905879))

(declare-fun m!4905881 () Bool)

(assert (=> b!4312786 m!4905881))

(declare-fun m!4905883 () Bool)

(assert (=> b!4312786 m!4905883))

(declare-fun m!4905885 () Bool)

(assert (=> b!4312786 m!4905885))

(declare-fun m!4905887 () Bool)

(assert (=> b!4312786 m!4905887))

(declare-fun m!4905889 () Bool)

(assert (=> b!4312786 m!4905889))

(declare-fun m!4905891 () Bool)

(assert (=> b!4312786 m!4905891))

(declare-fun m!4905893 () Bool)

(assert (=> b!4312786 m!4905893))

(declare-fun m!4905895 () Bool)

(assert (=> b!4312786 m!4905895))

(check-sat tp_is_empty!23871 (not b!4312798) tp_is_empty!23869 (not b!4312796) (not b!4312799) (not b!4312795) (not b_next!129427) (not b!4312793) b_and!340177 (not b!4312791) (not mapNonEmpty!20934) (not b!4312786) (not b!4312788) (not b!4312790) b_and!340179 (not b!4312785) (not b_next!129429) (not b!4312797))
(check-sat b_and!340177 b_and!340179 (not b_next!129429) (not b_next!129427))
(get-model)

(declare-fun d!1268532 () Bool)

(assert (=> d!1268532 true))

(assert (=> d!1268532 true))

(declare-fun lambda!133135 () Int)

(declare-fun forall!8757 (List!48375 Int) Bool)

(assert (=> d!1268532 (= (allKeysSameHash!206 lt!1532739 lt!1532744 (hashF!6763 thiss!42308)) (forall!8757 lt!1532739 lambda!133135))))

(declare-fun bs!605308 () Bool)

(assert (= bs!605308 d!1268532))

(declare-fun m!4905897 () Bool)

(assert (=> bs!605308 m!4905897))

(assert (=> b!4312797 d!1268532))

(declare-fun bs!605309 () Bool)

(declare-fun d!1268534 () Bool)

(assert (= bs!605309 (and d!1268534 b!4312786)))

(declare-fun lambda!133138 () Int)

(assert (=> bs!605309 (not (= lambda!133138 lambda!133132))))

(assert (=> d!1268534 true))

(assert (=> d!1268534 (= (allKeysSameHashInMap!353 lt!1532741 (hashF!6763 thiss!42308)) (forall!8756 (toList!2452 lt!1532741) lambda!133138))))

(declare-fun bs!605310 () Bool)

(assert (= bs!605310 d!1268534))

(declare-fun m!4905899 () Bool)

(assert (=> bs!605310 m!4905899))

(assert (=> b!4312793 d!1268534))

(declare-fun bm!298239 () Bool)

(declare-fun call!298245 () ListLongMap!1065)

(declare-fun lt!1532755 () tuple2!46812)

(assert (=> bm!298239 (= call!298245 (map!10258 (_2!26687 lt!1532755)))))

(declare-fun bm!298240 () Bool)

(declare-fun call!298244 () ListLongMap!1065)

(assert (=> bm!298240 (= call!298244 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))

(declare-fun b!4312824 () Bool)

(declare-fun e!2682550 () tuple2!46812)

(declare-fun lt!1532757 () tuple2!46812)

(assert (=> b!4312824 (= e!2682550 (tuple2!46813 (_1!26687 lt!1532757) (_2!26687 lt!1532757)))))

(declare-fun repack!64 (MutLongMap!4691) tuple2!46812)

(assert (=> b!4312824 (= lt!1532757 (repack!64 (v!42459 (underlying!9612 thiss!42308))))))

(declare-fun b!4312825 () Bool)

(declare-fun e!2682548 () Bool)

(declare-fun e!2682552 () Bool)

(assert (=> b!4312825 (= e!2682548 e!2682552)))

(declare-fun res!1767602 () Bool)

(declare-fun contains!10235 (ListLongMap!1065 (_ BitVec 64)) Bool)

(assert (=> b!4312825 (= res!1767602 (contains!10235 call!298245 lt!1532744))))

(assert (=> b!4312825 (=> (not res!1767602) (not e!2682552))))

(declare-fun d!1268536 () Bool)

(declare-fun e!2682551 () Bool)

(assert (=> d!1268536 e!2682551))

(declare-fun res!1767603 () Bool)

(assert (=> d!1268536 (=> (not res!1767603) (not e!2682551))))

(assert (=> d!1268536 (= res!1767603 ((_ is LongMap!4691) (_2!26687 lt!1532755)))))

(declare-fun e!2682549 () tuple2!46812)

(assert (=> d!1268536 (= lt!1532755 e!2682549)))

(declare-fun c!733211 () Bool)

(declare-fun lt!1532756 () tuple2!46812)

(assert (=> d!1268536 (= c!733211 (_1!26687 lt!1532756))))

(assert (=> d!1268536 (= lt!1532756 e!2682550)))

(declare-fun c!733210 () Bool)

(declare-fun imbalanced!60 (MutLongMap!4691) Bool)

(assert (=> d!1268536 (= c!733210 (imbalanced!60 (v!42459 (underlying!9612 thiss!42308))))))

(declare-fun valid!3686 (MutLongMap!4691) Bool)

(assert (=> d!1268536 (valid!3686 (v!42459 (underlying!9612 thiss!42308)))))

(assert (=> d!1268536 (= (update!465 (v!42459 (underlying!9612 thiss!42308)) lt!1532744 lt!1532739) lt!1532755)))

(declare-fun b!4312826 () Bool)

(declare-datatypes ((tuple2!46814 0))(
  ( (tuple2!46815 (_1!26688 Bool) (_2!26688 LongMapFixedSize!9382)) )
))
(declare-fun lt!1532758 () tuple2!46814)

(assert (=> b!4312826 (= e!2682549 (tuple2!46813 (_1!26688 lt!1532758) (LongMap!4691 (Cell!18574 (_2!26688 lt!1532758)))))))

(declare-fun update!466 (LongMapFixedSize!9382 (_ BitVec 64) List!48375) tuple2!46814)

(assert (=> b!4312826 (= lt!1532758 (update!466 (v!42458 (underlying!9611 (_2!26687 lt!1532756))) lt!1532744 lt!1532739))))

(declare-fun b!4312827 () Bool)

(assert (=> b!4312827 (= e!2682551 e!2682548)))

(declare-fun c!733212 () Bool)

(assert (=> b!4312827 (= c!733212 (_1!26687 lt!1532755))))

(declare-fun b!4312828 () Bool)

(assert (=> b!4312828 (= e!2682549 (tuple2!46813 false (_2!26687 lt!1532756)))))

(declare-fun b!4312829 () Bool)

(assert (=> b!4312829 (= e!2682548 (= call!298245 call!298244))))

(declare-fun b!4312830 () Bool)

(assert (=> b!4312830 (= e!2682550 (tuple2!46813 true (v!42459 (underlying!9612 thiss!42308))))))

(declare-fun b!4312831 () Bool)

(declare-fun res!1767604 () Bool)

(assert (=> b!4312831 (=> (not res!1767604) (not e!2682551))))

(assert (=> b!4312831 (= res!1767604 (valid!3686 (_2!26687 lt!1532755)))))

(declare-fun b!4312832 () Bool)

(assert (=> b!4312832 (= e!2682552 (= call!298245 (+!283 call!298244 (tuple2!46811 lt!1532744 lt!1532739))))))

(assert (= (and d!1268536 c!733210) b!4312824))

(assert (= (and d!1268536 (not c!733210)) b!4312830))

(assert (= (and d!1268536 c!733211) b!4312826))

(assert (= (and d!1268536 (not c!733211)) b!4312828))

(assert (= (and d!1268536 res!1767603) b!4312831))

(assert (= (and b!4312831 res!1767604) b!4312827))

(assert (= (and b!4312827 c!733212) b!4312825))

(assert (= (and b!4312827 (not c!733212)) b!4312829))

(assert (= (and b!4312825 res!1767602) b!4312832))

(assert (= (or b!4312832 b!4312829) bm!298240))

(assert (= (or b!4312825 b!4312832 b!4312829) bm!298239))

(declare-fun m!4905901 () Bool)

(assert (=> d!1268536 m!4905901))

(declare-fun m!4905903 () Bool)

(assert (=> d!1268536 m!4905903))

(assert (=> bm!298240 m!4905867))

(declare-fun m!4905905 () Bool)

(assert (=> bm!298239 m!4905905))

(declare-fun m!4905907 () Bool)

(assert (=> b!4312831 m!4905907))

(declare-fun m!4905909 () Bool)

(assert (=> b!4312832 m!4905909))

(declare-fun m!4905911 () Bool)

(assert (=> b!4312825 m!4905911))

(declare-fun m!4905913 () Bool)

(assert (=> b!4312826 m!4905913))

(declare-fun m!4905915 () Bool)

(assert (=> b!4312824 m!4905915))

(assert (=> b!4312798 d!1268536))

(declare-fun d!1268538 () Bool)

(declare-fun lt!1532761 () List!48375)

(assert (=> d!1268538 (not (containsKey!340 lt!1532761 key!2048))))

(declare-fun e!2682558 () List!48375)

(assert (=> d!1268538 (= lt!1532761 e!2682558)))

(declare-fun c!733217 () Bool)

(assert (=> d!1268538 (= c!733217 (and ((_ is Cons!48251) lt!1532735) (= (_1!26685 (h!53695 lt!1532735)) key!2048)))))

(assert (=> d!1268538 (noDuplicateKeys!233 lt!1532735)))

(assert (=> d!1268538 (= (removePairForKey!232 lt!1532735 key!2048) lt!1532761)))

(declare-fun b!4312844 () Bool)

(declare-fun e!2682557 () List!48375)

(assert (=> b!4312844 (= e!2682557 Nil!48251)))

(declare-fun b!4312841 () Bool)

(assert (=> b!4312841 (= e!2682558 (t!355202 lt!1532735))))

(declare-fun b!4312842 () Bool)

(assert (=> b!4312842 (= e!2682558 e!2682557)))

(declare-fun c!733218 () Bool)

(assert (=> b!4312842 (= c!733218 ((_ is Cons!48251) lt!1532735))))

(declare-fun b!4312843 () Bool)

(assert (=> b!4312843 (= e!2682557 (Cons!48251 (h!53695 lt!1532735) (removePairForKey!232 (t!355202 lt!1532735) key!2048)))))

(assert (= (and d!1268538 c!733217) b!4312841))

(assert (= (and d!1268538 (not c!733217)) b!4312842))

(assert (= (and b!4312842 c!733218) b!4312843))

(assert (= (and b!4312842 (not c!733218)) b!4312844))

(declare-fun m!4905917 () Bool)

(assert (=> d!1268538 m!4905917))

(declare-fun m!4905919 () Bool)

(assert (=> d!1268538 m!4905919))

(declare-fun m!4905921 () Bool)

(assert (=> b!4312843 m!4905921))

(assert (=> b!4312798 d!1268538))

(declare-fun d!1268540 () Bool)

(declare-fun e!2682561 () Bool)

(assert (=> d!1268540 e!2682561))

(declare-fun c!733221 () Bool)

(declare-fun contains!10236 (MutLongMap!4691 (_ BitVec 64)) Bool)

(assert (=> d!1268540 (= c!733221 (contains!10236 (v!42459 (underlying!9612 thiss!42308)) lt!1532744))))

(declare-fun lt!1532764 () List!48375)

(declare-fun apply!11054 (LongMapFixedSize!9382 (_ BitVec 64)) List!48375)

(assert (=> d!1268540 (= lt!1532764 (apply!11054 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))) lt!1532744))))

(assert (=> d!1268540 (valid!3686 (v!42459 (underlying!9612 thiss!42308)))))

(assert (=> d!1268540 (= (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532744) lt!1532764)))

(declare-fun b!4312849 () Bool)

(declare-datatypes ((Option!10248 0))(
  ( (None!10247) (Some!10247 (v!42464 List!48375)) )
))
(declare-fun get!15619 (Option!10248) List!48375)

(declare-fun getValueByKey!265 (List!48376 (_ BitVec 64)) Option!10248)

(assert (=> b!4312849 (= e!2682561 (= lt!1532764 (get!15619 (getValueByKey!265 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lt!1532744))))))

(declare-fun b!4312850 () Bool)

(declare-fun dynLambda!20453 (Int (_ BitVec 64)) List!48375)

(assert (=> b!4312850 (= e!2682561 (= lt!1532764 (dynLambda!20453 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744)))))

(assert (=> b!4312850 ((_ is LongMap!4691) (v!42459 (underlying!9612 thiss!42308)))))

(assert (= (and d!1268540 c!733221) b!4312849))

(assert (= (and d!1268540 (not c!733221)) b!4312850))

(declare-fun b_lambda!126743 () Bool)

(assert (=> (not b_lambda!126743) (not b!4312850)))

(declare-fun t!355205 () Bool)

(declare-fun tb!257313 () Bool)

(assert (=> (and b!4312799 (= (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) t!355205) tb!257313))

(assert (=> b!4312850 t!355205))

(declare-fun result!314746 () Bool)

(declare-fun b_and!340181 () Bool)

(assert (= b_and!340177 (and (=> t!355205 result!314746) b_and!340181)))

(declare-fun m!4905923 () Bool)

(assert (=> d!1268540 m!4905923))

(declare-fun m!4905925 () Bool)

(assert (=> d!1268540 m!4905925))

(assert (=> d!1268540 m!4905903))

(assert (=> b!4312849 m!4905867))

(declare-fun m!4905927 () Bool)

(assert (=> b!4312849 m!4905927))

(assert (=> b!4312849 m!4905927))

(declare-fun m!4905929 () Bool)

(assert (=> b!4312849 m!4905929))

(declare-fun m!4905931 () Bool)

(assert (=> b!4312850 m!4905931))

(assert (=> b!4312798 d!1268540))

(declare-fun d!1268542 () Bool)

(declare-fun hash!1060 (Hashable!4607 K!9474) (_ BitVec 64))

(assert (=> d!1268542 (= (hash!1056 (hashF!6763 thiss!42308) key!2048) (hash!1060 (hashF!6763 thiss!42308) key!2048))))

(declare-fun bs!605311 () Bool)

(assert (= bs!605311 d!1268542))

(declare-fun m!4905933 () Bool)

(assert (=> bs!605311 m!4905933))

(assert (=> b!4312798 d!1268542))

(declare-fun d!1268544 () Bool)

(assert (=> d!1268544 (= (array_inv!5437 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) (bvsge (size!35606 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4312799 d!1268544))

(declare-fun d!1268546 () Bool)

(assert (=> d!1268546 (= (array_inv!5438 (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) (bvsge (size!35607 (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4312799 d!1268546))

(declare-fun bs!605312 () Bool)

(declare-fun d!1268548 () Bool)

(assert (= bs!605312 (and d!1268548 b!4312786)))

(declare-fun lambda!133139 () Int)

(assert (=> bs!605312 (not (= lambda!133139 lambda!133132))))

(declare-fun bs!605313 () Bool)

(assert (= bs!605313 (and d!1268548 d!1268534)))

(assert (=> bs!605313 (= lambda!133139 lambda!133138)))

(assert (=> d!1268548 true))

(assert (=> d!1268548 (= (allKeysSameHashInMap!353 lt!1532737 (hashF!6763 thiss!42308)) (forall!8756 (toList!2452 lt!1532737) lambda!133139))))

(declare-fun bs!605314 () Bool)

(assert (= bs!605314 d!1268548))

(declare-fun m!4905935 () Bool)

(assert (=> bs!605314 m!4905935))

(assert (=> b!4312790 d!1268548))

(declare-fun bs!605315 () Bool)

(declare-fun d!1268550 () Bool)

(assert (= bs!605315 (and d!1268550 b!4312786)))

(declare-fun lambda!133144 () Int)

(assert (=> bs!605315 (= lambda!133144 lambda!133132)))

(declare-fun bs!605316 () Bool)

(assert (= bs!605316 (and d!1268550 d!1268534)))

(assert (=> bs!605316 (not (= lambda!133144 lambda!133138))))

(declare-fun bs!605317 () Bool)

(assert (= bs!605317 (and d!1268550 d!1268548)))

(assert (=> bs!605317 (not (= lambda!133144 lambda!133139))))

(declare-fun e!2682564 () Bool)

(assert (=> d!1268550 e!2682564))

(declare-fun res!1767607 () Bool)

(assert (=> d!1268550 (=> (not res!1767607) (not e!2682564))))

(declare-fun lt!1532770 () ListLongMap!1065)

(assert (=> d!1268550 (= res!1767607 (forall!8756 (toList!2452 lt!1532770) lambda!133144))))

(assert (=> d!1268550 (= lt!1532770 (+!283 lt!1532737 (tuple2!46811 lt!1532744 lt!1532739)))))

(declare-fun lt!1532769 () Unit!67411)

(declare-fun choose!26288 (ListLongMap!1065 (_ BitVec 64) List!48375 Hashable!4607) Unit!67411)

(assert (=> d!1268550 (= lt!1532769 (choose!26288 lt!1532737 lt!1532744 lt!1532739 (hashF!6763 thiss!42308)))))

(assert (=> d!1268550 (forall!8756 (toList!2452 lt!1532737) lambda!133144)))

(assert (=> d!1268550 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!155 lt!1532737 lt!1532744 lt!1532739 (hashF!6763 thiss!42308)) lt!1532769)))

(declare-fun b!4312853 () Bool)

(assert (=> b!4312853 (= e!2682564 (allKeysSameHashInMap!353 lt!1532770 (hashF!6763 thiss!42308)))))

(assert (= (and d!1268550 res!1767607) b!4312853))

(declare-fun m!4905937 () Bool)

(assert (=> d!1268550 m!4905937))

(assert (=> d!1268550 m!4905883))

(declare-fun m!4905939 () Bool)

(assert (=> d!1268550 m!4905939))

(declare-fun m!4905941 () Bool)

(assert (=> d!1268550 m!4905941))

(declare-fun m!4905943 () Bool)

(assert (=> b!4312853 m!4905943))

(assert (=> b!4312786 d!1268550))

(declare-fun bs!605318 () Bool)

(declare-fun d!1268552 () Bool)

(assert (= bs!605318 (and d!1268552 d!1268532)))

(declare-fun lambda!133145 () Int)

(assert (=> bs!605318 (= lambda!133145 lambda!133135)))

(assert (=> d!1268552 true))

(assert (=> d!1268552 true))

(assert (=> d!1268552 (= (allKeysSameHash!206 lt!1532746 lt!1532744 (hashF!6763 thiss!42308)) (forall!8757 lt!1532746 lambda!133145))))

(declare-fun bs!605319 () Bool)

(assert (= bs!605319 d!1268552))

(declare-fun m!4905945 () Bool)

(assert (=> bs!605319 m!4905945))

(assert (=> b!4312786 d!1268552))

(declare-fun d!1268554 () Bool)

(declare-fun res!1767612 () Bool)

(declare-fun e!2682569 () Bool)

(assert (=> d!1268554 (=> res!1767612 e!2682569)))

(assert (=> d!1268554 (= res!1767612 ((_ is Nil!48252) (toList!2452 lt!1532741)))))

(assert (=> d!1268554 (= (forall!8756 (toList!2452 lt!1532741) lambda!133132) e!2682569)))

(declare-fun b!4312858 () Bool)

(declare-fun e!2682570 () Bool)

(assert (=> b!4312858 (= e!2682569 e!2682570)))

(declare-fun res!1767613 () Bool)

(assert (=> b!4312858 (=> (not res!1767613) (not e!2682570))))

(declare-fun dynLambda!20454 (Int tuple2!46810) Bool)

(assert (=> b!4312858 (= res!1767613 (dynLambda!20454 lambda!133132 (h!53696 (toList!2452 lt!1532741))))))

(declare-fun b!4312859 () Bool)

(assert (=> b!4312859 (= e!2682570 (forall!8756 (t!355203 (toList!2452 lt!1532741)) lambda!133132))))

(assert (= (and d!1268554 (not res!1767612)) b!4312858))

(assert (= (and b!4312858 res!1767613) b!4312859))

(declare-fun b_lambda!126745 () Bool)

(assert (=> (not b_lambda!126745) (not b!4312858)))

(declare-fun m!4905947 () Bool)

(assert (=> b!4312858 m!4905947))

(declare-fun m!4905949 () Bool)

(assert (=> b!4312859 m!4905949))

(assert (=> b!4312786 d!1268554))

(declare-fun d!1268556 () Bool)

(declare-fun e!2682573 () Bool)

(assert (=> d!1268556 e!2682573))

(declare-fun res!1767619 () Bool)

(assert (=> d!1268556 (=> (not res!1767619) (not e!2682573))))

(declare-fun lt!1532779 () ListLongMap!1065)

(assert (=> d!1268556 (= res!1767619 (contains!10235 lt!1532779 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun lt!1532782 () List!48376)

(assert (=> d!1268556 (= lt!1532779 (ListLongMap!1066 lt!1532782))))

(declare-fun lt!1532781 () Unit!67411)

(declare-fun lt!1532780 () Unit!67411)

(assert (=> d!1268556 (= lt!1532781 lt!1532780)))

(assert (=> d!1268556 (= (getValueByKey!265 lt!1532782 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))) (Some!10247 (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun lemmaContainsTupThenGetReturnValue!78 (List!48376 (_ BitVec 64) List!48375) Unit!67411)

(assert (=> d!1268556 (= lt!1532780 (lemmaContainsTupThenGetReturnValue!78 lt!1532782 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun insertStrictlySorted!42 (List!48376 (_ BitVec 64) List!48375) List!48376)

(assert (=> d!1268556 (= lt!1532782 (insertStrictlySorted!42 (toList!2452 lt!1532737) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(assert (=> d!1268556 (= (+!283 lt!1532737 (tuple2!46811 lt!1532744 lt!1532739)) lt!1532779)))

(declare-fun b!4312864 () Bool)

(declare-fun res!1767618 () Bool)

(assert (=> b!4312864 (=> (not res!1767618) (not e!2682573))))

(assert (=> b!4312864 (= res!1767618 (= (getValueByKey!265 (toList!2452 lt!1532779) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))) (Some!10247 (_2!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(declare-fun b!4312865 () Bool)

(declare-fun contains!10237 (List!48376 tuple2!46810) Bool)

(assert (=> b!4312865 (= e!2682573 (contains!10237 (toList!2452 lt!1532779) (tuple2!46811 lt!1532744 lt!1532739)))))

(assert (= (and d!1268556 res!1767619) b!4312864))

(assert (= (and b!4312864 res!1767618) b!4312865))

(declare-fun m!4905951 () Bool)

(assert (=> d!1268556 m!4905951))

(declare-fun m!4905953 () Bool)

(assert (=> d!1268556 m!4905953))

(declare-fun m!4905955 () Bool)

(assert (=> d!1268556 m!4905955))

(declare-fun m!4905957 () Bool)

(assert (=> d!1268556 m!4905957))

(declare-fun m!4905959 () Bool)

(assert (=> b!4312864 m!4905959))

(declare-fun m!4905961 () Bool)

(assert (=> b!4312865 m!4905961))

(assert (=> b!4312786 d!1268556))

(declare-fun d!1268558 () Bool)

(declare-fun res!1767620 () Bool)

(declare-fun e!2682574 () Bool)

(assert (=> d!1268558 (=> res!1767620 e!2682574)))

(assert (=> d!1268558 (= res!1767620 ((_ is Nil!48252) (toList!2452 lt!1532737)))))

(assert (=> d!1268558 (= (forall!8756 (toList!2452 lt!1532737) lambda!133132) e!2682574)))

(declare-fun b!4312866 () Bool)

(declare-fun e!2682575 () Bool)

(assert (=> b!4312866 (= e!2682574 e!2682575)))

(declare-fun res!1767621 () Bool)

(assert (=> b!4312866 (=> (not res!1767621) (not e!2682575))))

(assert (=> b!4312866 (= res!1767621 (dynLambda!20454 lambda!133132 (h!53696 (toList!2452 lt!1532737))))))

(declare-fun b!4312867 () Bool)

(assert (=> b!4312867 (= e!2682575 (forall!8756 (t!355203 (toList!2452 lt!1532737)) lambda!133132))))

(assert (= (and d!1268558 (not res!1767620)) b!4312866))

(assert (= (and b!4312866 res!1767621) b!4312867))

(declare-fun b_lambda!126747 () Bool)

(assert (=> (not b_lambda!126747) (not b!4312866)))

(declare-fun m!4905963 () Bool)

(assert (=> b!4312866 m!4905963))

(declare-fun m!4905965 () Bool)

(assert (=> b!4312867 m!4905965))

(assert (=> b!4312786 d!1268558))

(declare-fun bs!605320 () Bool)

(declare-fun d!1268560 () Bool)

(assert (= bs!605320 (and d!1268560 b!4312786)))

(declare-fun lambda!133148 () Int)

(assert (=> bs!605320 (not (= lambda!133148 lambda!133132))))

(declare-fun bs!605321 () Bool)

(assert (= bs!605321 (and d!1268560 d!1268534)))

(assert (=> bs!605321 (= lambda!133148 lambda!133138)))

(declare-fun bs!605322 () Bool)

(assert (= bs!605322 (and d!1268560 d!1268548)))

(assert (=> bs!605322 (= lambda!133148 lambda!133139)))

(declare-fun bs!605323 () Bool)

(assert (= bs!605323 (and d!1268560 d!1268550)))

(assert (=> bs!605323 (not (= lambda!133148 lambda!133144))))

(assert (=> d!1268560 true))

(assert (=> d!1268560 (allKeysSameHash!206 lt!1532735 lt!1532744 (hashF!6763 thiss!42308))))

(declare-fun lt!1532785 () Unit!67411)

(declare-fun choose!26289 (List!48376 (_ BitVec 64) List!48375 Hashable!4607) Unit!67411)

(assert (=> d!1268560 (= lt!1532785 (choose!26289 (toList!2452 lt!1532737) lt!1532744 lt!1532735 (hashF!6763 thiss!42308)))))

(assert (=> d!1268560 (forall!8756 (toList!2452 lt!1532737) lambda!133148)))

(assert (=> d!1268560 (= (lemmaInLongMapAllKeySameHashThenForTuple!193 (toList!2452 lt!1532737) lt!1532744 lt!1532735 (hashF!6763 thiss!42308)) lt!1532785)))

(declare-fun bs!605324 () Bool)

(assert (= bs!605324 d!1268560))

(assert (=> bs!605324 m!4905881))

(declare-fun m!4905967 () Bool)

(assert (=> bs!605324 m!4905967))

(declare-fun m!4905969 () Bool)

(assert (=> bs!605324 m!4905969))

(assert (=> b!4312786 d!1268560))

(declare-fun d!1268562 () Bool)

(assert (=> d!1268562 (noDuplicateKeys!233 (removePairForKey!232 lt!1532735 key!2048))))

(declare-fun lt!1532788 () Unit!67411)

(declare-fun choose!26290 (List!48375 K!9474) Unit!67411)

(assert (=> d!1268562 (= lt!1532788 (choose!26290 lt!1532735 key!2048))))

(assert (=> d!1268562 (noDuplicateKeys!233 lt!1532735)))

(assert (=> d!1268562 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!181 lt!1532735 key!2048) lt!1532788)))

(declare-fun bs!605325 () Bool)

(assert (= bs!605325 d!1268562))

(assert (=> bs!605325 m!4905847))

(assert (=> bs!605325 m!4905847))

(declare-fun m!4905971 () Bool)

(assert (=> bs!605325 m!4905971))

(declare-fun m!4905973 () Bool)

(assert (=> bs!605325 m!4905973))

(assert (=> bs!605325 m!4905919))

(assert (=> b!4312786 d!1268562))

(declare-fun d!1268564 () Bool)

(assert (=> d!1268564 (allKeysSameHash!206 (removePairForKey!232 lt!1532735 key!2048) lt!1532744 (hashF!6763 thiss!42308))))

(declare-fun lt!1532791 () Unit!67411)

(declare-fun choose!26291 (List!48375 K!9474 (_ BitVec 64) Hashable!4607) Unit!67411)

(assert (=> d!1268564 (= lt!1532791 (choose!26291 lt!1532735 key!2048 lt!1532744 (hashF!6763 thiss!42308)))))

(assert (=> d!1268564 (noDuplicateKeys!233 lt!1532735)))

(assert (=> d!1268564 (= (lemmaRemovePairForKeyPreservesHash!186 lt!1532735 key!2048 lt!1532744 (hashF!6763 thiss!42308)) lt!1532791)))

(declare-fun bs!605326 () Bool)

(assert (= bs!605326 d!1268564))

(assert (=> bs!605326 m!4905847))

(assert (=> bs!605326 m!4905847))

(declare-fun m!4905975 () Bool)

(assert (=> bs!605326 m!4905975))

(declare-fun m!4905977 () Bool)

(assert (=> bs!605326 m!4905977))

(assert (=> bs!605326 m!4905919))

(assert (=> b!4312786 d!1268564))

(declare-fun bs!605327 () Bool)

(declare-fun d!1268566 () Bool)

(assert (= bs!605327 (and d!1268566 d!1268532)))

(declare-fun lambda!133149 () Int)

(assert (=> bs!605327 (= lambda!133149 lambda!133135)))

(declare-fun bs!605328 () Bool)

(assert (= bs!605328 (and d!1268566 d!1268552)))

(assert (=> bs!605328 (= lambda!133149 lambda!133145)))

(assert (=> d!1268566 true))

(assert (=> d!1268566 true))

(assert (=> d!1268566 (= (allKeysSameHash!206 lt!1532735 lt!1532744 (hashF!6763 thiss!42308)) (forall!8757 lt!1532735 lambda!133149))))

(declare-fun bs!605329 () Bool)

(assert (= bs!605329 d!1268566))

(declare-fun m!4905979 () Bool)

(assert (=> bs!605329 m!4905979))

(assert (=> b!4312786 d!1268566))

(declare-fun d!1268568 () Bool)

(declare-fun res!1767626 () Bool)

(declare-fun e!2682580 () Bool)

(assert (=> d!1268568 (=> res!1767626 e!2682580)))

(assert (=> d!1268568 (= res!1767626 (not ((_ is Cons!48251) lt!1532746)))))

(assert (=> d!1268568 (= (noDuplicateKeys!233 lt!1532746) e!2682580)))

(declare-fun b!4312872 () Bool)

(declare-fun e!2682581 () Bool)

(assert (=> b!4312872 (= e!2682580 e!2682581)))

(declare-fun res!1767627 () Bool)

(assert (=> b!4312872 (=> (not res!1767627) (not e!2682581))))

(assert (=> b!4312872 (= res!1767627 (not (containsKey!340 (t!355202 lt!1532746) (_1!26685 (h!53695 lt!1532746)))))))

(declare-fun b!4312873 () Bool)

(assert (=> b!4312873 (= e!2682581 (noDuplicateKeys!233 (t!355202 lt!1532746)))))

(assert (= (and d!1268568 (not res!1767626)) b!4312872))

(assert (= (and b!4312872 res!1767627) b!4312873))

(declare-fun m!4905981 () Bool)

(assert (=> b!4312872 m!4905981))

(declare-fun m!4905983 () Bool)

(assert (=> b!4312873 m!4905983))

(assert (=> b!4312786 d!1268568))

(declare-fun bs!605330 () Bool)

(declare-fun b!4312906 () Bool)

(assert (= bs!605330 (and b!4312906 d!1268534)))

(declare-fun lambda!133152 () Int)

(assert (=> bs!605330 (not (= lambda!133152 lambda!133138))))

(declare-fun bs!605331 () Bool)

(assert (= bs!605331 (and b!4312906 d!1268548)))

(assert (=> bs!605331 (not (= lambda!133152 lambda!133139))))

(declare-fun bs!605332 () Bool)

(assert (= bs!605332 (and b!4312906 b!4312786)))

(assert (=> bs!605332 (= lambda!133152 lambda!133132)))

(declare-fun bs!605333 () Bool)

(assert (= bs!605333 (and b!4312906 d!1268560)))

(assert (=> bs!605333 (not (= lambda!133152 lambda!133148))))

(declare-fun bs!605334 () Bool)

(assert (= bs!605334 (and b!4312906 d!1268550)))

(assert (=> bs!605334 (= lambda!133152 lambda!133144)))

(declare-fun c!733232 () Bool)

(declare-fun lt!1532834 () ListLongMap!1065)

(declare-fun call!298258 () (_ BitVec 64))

(declare-fun call!298259 () List!48375)

(declare-fun call!298263 () ListLongMap!1065)

(declare-fun bm!298253 () Bool)

(declare-fun apply!11055 (ListLongMap!1065 (_ BitVec 64)) List!48375)

(assert (=> bm!298253 (= call!298259 (apply!11055 (ite c!733232 lt!1532834 call!298263) call!298258))))

(declare-fun bm!298254 () Bool)

(declare-fun call!298261 () Bool)

(assert (=> bm!298254 (= call!298261 (contains!10235 (ite c!733232 lt!1532834 call!298263) call!298258))))

(declare-fun b!4312896 () Bool)

(declare-fun e!2682598 () Unit!67411)

(declare-fun Unit!67413 () Unit!67411)

(assert (=> b!4312896 (= e!2682598 Unit!67413)))

(declare-fun b!4312897 () Bool)

(assert (=> b!4312897 false))

(declare-fun lt!1532846 () Unit!67411)

(declare-fun lt!1532840 () Unit!67411)

(assert (=> b!4312897 (= lt!1532846 lt!1532840)))

(declare-fun lt!1532851 () List!48376)

(declare-fun lt!1532850 () (_ BitVec 64))

(declare-fun lt!1532848 () List!48375)

(assert (=> b!4312897 (contains!10237 lt!1532851 (tuple2!46811 lt!1532850 lt!1532848))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!153 (List!48376 (_ BitVec 64) List!48375) Unit!67411)

(assert (=> b!4312897 (= lt!1532840 (lemmaGetValueByKeyImpliesContainsTuple!153 lt!1532851 lt!1532850 lt!1532848))))

(assert (=> b!4312897 (= lt!1532848 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))

(assert (=> b!4312897 (= lt!1532851 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))))

(declare-fun lt!1532841 () Unit!67411)

(declare-fun lt!1532843 () Unit!67411)

(assert (=> b!4312897 (= lt!1532841 lt!1532843)))

(declare-fun lt!1532836 () List!48376)

(declare-fun isDefined!7550 (Option!10248) Bool)

(assert (=> b!4312897 (isDefined!7550 (getValueByKey!265 lt!1532836 lt!1532850))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!185 (List!48376 (_ BitVec 64)) Unit!67411)

(assert (=> b!4312897 (= lt!1532843 (lemmaContainsKeyImpliesGetValueByKeyDefined!185 lt!1532836 lt!1532850))))

(assert (=> b!4312897 (= lt!1532836 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))))

(declare-fun lt!1532837 () Unit!67411)

(declare-fun lt!1532847 () Unit!67411)

(assert (=> b!4312897 (= lt!1532837 lt!1532847)))

(declare-fun lt!1532844 () List!48376)

(declare-fun containsKey!341 (List!48376 (_ BitVec 64)) Bool)

(assert (=> b!4312897 (containsKey!341 lt!1532844 lt!1532850)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!143 (List!48376 (_ BitVec 64)) Unit!67411)

(assert (=> b!4312897 (= lt!1532847 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!143 lt!1532844 lt!1532850))))

(assert (=> b!4312897 (= lt!1532844 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))))

(declare-fun e!2682597 () Unit!67411)

(declare-fun Unit!67414 () Unit!67411)

(assert (=> b!4312897 (= e!2682597 Unit!67414)))

(declare-fun b!4312898 () Bool)

(declare-fun e!2682602 () Bool)

(declare-fun call!298262 () Bool)

(assert (=> b!4312898 (= e!2682602 call!298262)))

(declare-fun b!4312899 () Bool)

(declare-fun e!2682600 () Bool)

(assert (=> b!4312899 (= e!2682600 call!298262)))

(declare-fun bm!298255 () Bool)

(assert (=> bm!298255 (= call!298263 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))

(declare-fun b!4312900 () Bool)

(declare-fun e!2682599 () Unit!67411)

(assert (=> b!4312900 (= e!2682599 e!2682598)))

(declare-fun res!1767634 () Bool)

(assert (=> b!4312900 (= res!1767634 call!298261)))

(assert (=> b!4312900 (=> (not res!1767634) (not e!2682602))))

(declare-fun c!733230 () Bool)

(assert (=> b!4312900 (= c!733230 e!2682602)))

(declare-fun b!4312901 () Bool)

(declare-fun Unit!67415 () Unit!67411)

(assert (=> b!4312901 (= e!2682597 Unit!67415)))

(declare-fun b!4312902 () Bool)

(declare-fun e!2682601 () Unit!67411)

(declare-fun Unit!67416 () Unit!67411)

(assert (=> b!4312902 (= e!2682601 Unit!67416)))

(declare-fun b!4312903 () Bool)

(assert (=> b!4312903 false))

(declare-fun lt!1532842 () Unit!67411)

(declare-fun lt!1532835 () Unit!67411)

(assert (=> b!4312903 (= lt!1532842 lt!1532835)))

(declare-fun lt!1532845 () ListLongMap!1065)

(declare-fun contains!10238 (ListMap!1733 K!9474) Bool)

(declare-fun extractMap!337 (List!48376) ListMap!1733)

(assert (=> b!4312903 (contains!10238 (extractMap!337 (toList!2452 lt!1532845)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!142 (ListLongMap!1065 K!9474 Hashable!4607) Unit!67411)

(assert (=> b!4312903 (= lt!1532835 (lemmaInLongMapThenInGenericMap!142 lt!1532845 key!2048 (hashF!6763 thiss!42308)))))

(assert (=> b!4312903 (= lt!1532845 call!298263)))

(declare-fun Unit!67417 () Unit!67411)

(assert (=> b!4312903 (= e!2682598 Unit!67417)))

(declare-fun b!4312904 () Bool)

(declare-fun e!2682596 () Bool)

(declare-datatypes ((Option!10249 0))(
  ( (None!10248) (Some!10248 (v!42465 tuple2!46808)) )
))
(declare-fun isDefined!7551 (Option!10249) Bool)

(declare-fun getPair!142 (List!48375 K!9474) Option!10249)

(assert (=> b!4312904 (= e!2682596 (isDefined!7551 (getPair!142 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850) key!2048)))))

(declare-fun bm!298257 () Bool)

(assert (=> bm!298257 (= call!298258 (hash!1056 (hashF!6763 thiss!42308) key!2048))))

(declare-fun bm!298258 () Bool)

(declare-fun call!298260 () Option!10249)

(assert (=> bm!298258 (= call!298260 (getPair!142 call!298259 key!2048))))

(declare-fun d!1268570 () Bool)

(declare-fun lt!1532838 () Bool)

(assert (=> d!1268570 (= lt!1532838 (contains!10238 (map!10259 thiss!42308) key!2048))))

(assert (=> d!1268570 (= lt!1532838 e!2682596)))

(declare-fun res!1767636 () Bool)

(assert (=> d!1268570 (=> (not res!1767636) (not e!2682596))))

(assert (=> d!1268570 (= res!1767636 (contains!10236 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))

(declare-fun lt!1532833 () Unit!67411)

(assert (=> d!1268570 (= lt!1532833 e!2682599)))

(assert (=> d!1268570 (= c!733232 (contains!10238 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) key!2048))))

(declare-fun lt!1532849 () Unit!67411)

(assert (=> d!1268570 (= lt!1532849 e!2682601)))

(declare-fun c!733233 () Bool)

(assert (=> d!1268570 (= c!733233 (contains!10236 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))

(assert (=> d!1268570 (= lt!1532850 (hash!1056 (hashF!6763 thiss!42308) key!2048))))

(assert (=> d!1268570 (valid!3685 thiss!42308)))

(assert (=> d!1268570 (= (contains!10234 thiss!42308 key!2048) lt!1532838)))

(declare-fun bm!298256 () Bool)

(assert (=> bm!298256 (= call!298262 (isDefined!7551 call!298260))))

(declare-fun b!4312905 () Bool)

(declare-fun lt!1532832 () Unit!67411)

(assert (=> b!4312905 (= e!2682599 lt!1532832)))

(assert (=> b!4312905 (= lt!1532834 call!298263)))

(declare-fun lemmaInGenericMapThenInLongMap!142 (ListLongMap!1065 K!9474 Hashable!4607) Unit!67411)

(assert (=> b!4312905 (= lt!1532832 (lemmaInGenericMapThenInLongMap!142 lt!1532834 key!2048 (hashF!6763 thiss!42308)))))

(declare-fun res!1767635 () Bool)

(assert (=> b!4312905 (= res!1767635 call!298261)))

(assert (=> b!4312905 (=> (not res!1767635) (not e!2682600))))

(assert (=> b!4312905 e!2682600))

(declare-fun forallContained!1509 (List!48376 Int tuple2!46810) Unit!67411)

(assert (=> b!4312906 (= e!2682601 (forallContained!1509 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lambda!133152 (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))))

(declare-fun c!733231 () Bool)

(assert (=> b!4312906 (= c!733231 (not (contains!10237 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850)))))))

(declare-fun lt!1532839 () Unit!67411)

(assert (=> b!4312906 (= lt!1532839 e!2682597)))

(assert (= (and d!1268570 c!733233) b!4312906))

(assert (= (and d!1268570 (not c!733233)) b!4312902))

(assert (= (and b!4312906 c!733231) b!4312897))

(assert (= (and b!4312906 (not c!733231)) b!4312901))

(assert (= (and d!1268570 c!733232) b!4312905))

(assert (= (and d!1268570 (not c!733232)) b!4312900))

(assert (= (and b!4312905 res!1767635) b!4312899))

(assert (= (and b!4312900 res!1767634) b!4312898))

(assert (= (and b!4312900 c!733230) b!4312903))

(assert (= (and b!4312900 (not c!733230)) b!4312896))

(assert (= (or b!4312905 b!4312900 b!4312898 b!4312903) bm!298255))

(assert (= (or b!4312905 b!4312899 b!4312900 b!4312898) bm!298257))

(assert (= (or b!4312899 b!4312898) bm!298253))

(assert (= (or b!4312905 b!4312900) bm!298254))

(assert (= (or b!4312899 b!4312898) bm!298258))

(assert (= (or b!4312899 b!4312898) bm!298256))

(assert (= (and d!1268570 res!1767636) b!4312904))

(assert (=> b!4312906 m!4905867))

(declare-fun m!4905985 () Bool)

(assert (=> b!4312906 m!4905985))

(declare-fun m!4905987 () Bool)

(assert (=> b!4312906 m!4905987))

(declare-fun m!4905989 () Bool)

(assert (=> b!4312906 m!4905989))

(declare-fun m!4905991 () Bool)

(assert (=> b!4312897 m!4905991))

(declare-fun m!4905993 () Bool)

(assert (=> b!4312897 m!4905993))

(declare-fun m!4905995 () Bool)

(assert (=> b!4312897 m!4905995))

(declare-fun m!4905997 () Bool)

(assert (=> b!4312897 m!4905997))

(assert (=> b!4312897 m!4905985))

(declare-fun m!4905999 () Bool)

(assert (=> b!4312897 m!4905999))

(declare-fun m!4906001 () Bool)

(assert (=> b!4312897 m!4906001))

(assert (=> b!4312897 m!4905991))

(assert (=> b!4312897 m!4905867))

(declare-fun m!4906003 () Bool)

(assert (=> b!4312897 m!4906003))

(assert (=> d!1268570 m!4905867))

(assert (=> d!1268570 m!4905851))

(declare-fun m!4906005 () Bool)

(assert (=> d!1268570 m!4906005))

(declare-fun m!4906007 () Bool)

(assert (=> d!1268570 m!4906007))

(assert (=> d!1268570 m!4906005))

(assert (=> d!1268570 m!4905869))

(declare-fun m!4906009 () Bool)

(assert (=> d!1268570 m!4906009))

(assert (=> d!1268570 m!4905869))

(assert (=> d!1268570 m!4905871))

(declare-fun m!4906011 () Bool)

(assert (=> d!1268570 m!4906011))

(declare-fun m!4906013 () Bool)

(assert (=> bm!298256 m!4906013))

(assert (=> b!4312904 m!4905985))

(assert (=> b!4312904 m!4905985))

(declare-fun m!4906015 () Bool)

(assert (=> b!4312904 m!4906015))

(assert (=> b!4312904 m!4906015))

(declare-fun m!4906017 () Bool)

(assert (=> b!4312904 m!4906017))

(assert (=> bm!298257 m!4905851))

(declare-fun m!4906019 () Bool)

(assert (=> bm!298253 m!4906019))

(declare-fun m!4906021 () Bool)

(assert (=> b!4312903 m!4906021))

(assert (=> b!4312903 m!4906021))

(declare-fun m!4906023 () Bool)

(assert (=> b!4312903 m!4906023))

(declare-fun m!4906025 () Bool)

(assert (=> b!4312903 m!4906025))

(declare-fun m!4906027 () Bool)

(assert (=> bm!298254 m!4906027))

(assert (=> bm!298255 m!4905867))

(declare-fun m!4906029 () Bool)

(assert (=> bm!298258 m!4906029))

(declare-fun m!4906031 () Bool)

(assert (=> b!4312905 m!4906031))

(assert (=> b!4312795 d!1268570))

(declare-fun d!1268572 () Bool)

(declare-fun map!10260 (LongMapFixedSize!9382) ListLongMap!1065)

(assert (=> d!1268572 (= (map!10258 (v!42459 (underlying!9612 thiss!42308))) (map!10260 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))))))

(declare-fun bs!605335 () Bool)

(assert (= bs!605335 d!1268572))

(declare-fun m!4906033 () Bool)

(assert (=> bs!605335 m!4906033))

(assert (=> b!4312795 d!1268572))

(declare-fun d!1268574 () Bool)

(declare-fun lt!1532854 () ListMap!1733)

(declare-fun invariantList!581 (List!48375) Bool)

(assert (=> d!1268574 (invariantList!581 (toList!2453 lt!1532854))))

(assert (=> d!1268574 (= lt!1532854 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))))

(assert (=> d!1268574 (valid!3685 thiss!42308)))

(assert (=> d!1268574 (= (map!10259 thiss!42308) lt!1532854)))

(declare-fun bs!605336 () Bool)

(assert (= bs!605336 d!1268574))

(declare-fun m!4906035 () Bool)

(assert (=> bs!605336 m!4906035))

(assert (=> bs!605336 m!4905867))

(assert (=> bs!605336 m!4906005))

(assert (=> bs!605336 m!4905871))

(assert (=> b!4312795 d!1268574))

(declare-fun d!1268576 () Bool)

(declare-fun res!1767641 () Bool)

(declare-fun e!2682607 () Bool)

(assert (=> d!1268576 (=> res!1767641 e!2682607)))

(assert (=> d!1268576 (= res!1767641 (and ((_ is Cons!48251) lt!1532746) (= (_1!26685 (h!53695 lt!1532746)) key!2048)))))

(assert (=> d!1268576 (= (containsKey!340 lt!1532746 key!2048) e!2682607)))

(declare-fun b!4312911 () Bool)

(declare-fun e!2682608 () Bool)

(assert (=> b!4312911 (= e!2682607 e!2682608)))

(declare-fun res!1767642 () Bool)

(assert (=> b!4312911 (=> (not res!1767642) (not e!2682608))))

(assert (=> b!4312911 (= res!1767642 ((_ is Cons!48251) lt!1532746))))

(declare-fun b!4312912 () Bool)

(assert (=> b!4312912 (= e!2682608 (containsKey!340 (t!355202 lt!1532746) key!2048))))

(assert (= (and d!1268576 (not res!1767641)) b!4312911))

(assert (= (and b!4312911 res!1767642) b!4312912))

(declare-fun m!4906037 () Bool)

(assert (=> b!4312912 m!4906037))

(assert (=> b!4312791 d!1268576))

(declare-fun d!1268578 () Bool)

(declare-fun res!1767643 () Bool)

(declare-fun e!2682609 () Bool)

(assert (=> d!1268578 (=> res!1767643 e!2682609)))

(assert (=> d!1268578 (= res!1767643 (not ((_ is Cons!48251) lt!1532739)))))

(assert (=> d!1268578 (= (noDuplicateKeys!233 lt!1532739) e!2682609)))

(declare-fun b!4312913 () Bool)

(declare-fun e!2682610 () Bool)

(assert (=> b!4312913 (= e!2682609 e!2682610)))

(declare-fun res!1767644 () Bool)

(assert (=> b!4312913 (=> (not res!1767644) (not e!2682610))))

(assert (=> b!4312913 (= res!1767644 (not (containsKey!340 (t!355202 lt!1532739) (_1!26685 (h!53695 lt!1532739)))))))

(declare-fun b!4312914 () Bool)

(assert (=> b!4312914 (= e!2682610 (noDuplicateKeys!233 (t!355202 lt!1532739)))))

(assert (= (and d!1268578 (not res!1767643)) b!4312913))

(assert (= (and b!4312913 res!1767644) b!4312914))

(declare-fun m!4906039 () Bool)

(assert (=> b!4312913 m!4906039))

(declare-fun m!4906041 () Bool)

(assert (=> b!4312914 m!4906041))

(assert (=> b!4312796 d!1268578))

(declare-fun bs!605337 () Bool)

(declare-fun b!4312919 () Bool)

(assert (= bs!605337 (and b!4312919 b!4312906)))

(declare-fun lambda!133155 () Int)

(assert (=> bs!605337 (= lambda!133155 lambda!133152)))

(declare-fun bs!605338 () Bool)

(assert (= bs!605338 (and b!4312919 d!1268534)))

(assert (=> bs!605338 (not (= lambda!133155 lambda!133138))))

(declare-fun bs!605339 () Bool)

(assert (= bs!605339 (and b!4312919 d!1268548)))

(assert (=> bs!605339 (not (= lambda!133155 lambda!133139))))

(declare-fun bs!605340 () Bool)

(assert (= bs!605340 (and b!4312919 b!4312786)))

(assert (=> bs!605340 (= lambda!133155 lambda!133132)))

(declare-fun bs!605341 () Bool)

(assert (= bs!605341 (and b!4312919 d!1268560)))

(assert (=> bs!605341 (not (= lambda!133155 lambda!133148))))

(declare-fun bs!605342 () Bool)

(assert (= bs!605342 (and b!4312919 d!1268550)))

(assert (=> bs!605342 (= lambda!133155 lambda!133144)))

(declare-fun d!1268580 () Bool)

(declare-fun res!1767649 () Bool)

(declare-fun e!2682613 () Bool)

(assert (=> d!1268580 (=> (not res!1767649) (not e!2682613))))

(assert (=> d!1268580 (= res!1767649 (valid!3686 (v!42459 (underlying!9612 thiss!42308))))))

(assert (=> d!1268580 (= (valid!3685 thiss!42308) e!2682613)))

(declare-fun res!1767650 () Bool)

(assert (=> b!4312919 (=> (not res!1767650) (not e!2682613))))

(assert (=> b!4312919 (= res!1767650 (forall!8756 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lambda!133155))))

(declare-fun b!4312920 () Bool)

(assert (=> b!4312920 (= e!2682613 (allKeysSameHashInMap!353 (map!10258 (v!42459 (underlying!9612 thiss!42308))) (hashF!6763 thiss!42308)))))

(assert (= (and d!1268580 res!1767649) b!4312919))

(assert (= (and b!4312919 res!1767650) b!4312920))

(assert (=> d!1268580 m!4905903))

(assert (=> b!4312919 m!4905867))

(declare-fun m!4906043 () Bool)

(assert (=> b!4312919 m!4906043))

(assert (=> b!4312920 m!4905867))

(assert (=> b!4312920 m!4905867))

(declare-fun m!4906045 () Bool)

(assert (=> b!4312920 m!4906045))

(assert (=> b!4312788 d!1268580))

(declare-fun condMapEmpty!20937 () Bool)

(declare-fun mapDefault!20937 () List!48375)

(assert (=> mapNonEmpty!20934 (= condMapEmpty!20937 (= mapRest!20934 ((as const (Array (_ BitVec 32) List!48375)) mapDefault!20937)))))

(declare-fun e!2682619 () Bool)

(declare-fun mapRes!20937 () Bool)

(assert (=> mapNonEmpty!20934 (= tp!1325274 (and e!2682619 mapRes!20937))))

(declare-fun b!4312927 () Bool)

(declare-fun tp!1325282 () Bool)

(declare-fun e!2682618 () Bool)

(assert (=> b!4312927 (= e!2682618 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325282))))

(declare-fun mapIsEmpty!20937 () Bool)

(assert (=> mapIsEmpty!20937 mapRes!20937))

(declare-fun mapNonEmpty!20937 () Bool)

(declare-fun tp!1325284 () Bool)

(assert (=> mapNonEmpty!20937 (= mapRes!20937 (and tp!1325284 e!2682618))))

(declare-fun mapKey!20937 () (_ BitVec 32))

(declare-fun mapValue!20937 () List!48375)

(declare-fun mapRest!20937 () (Array (_ BitVec 32) List!48375))

(assert (=> mapNonEmpty!20937 (= mapRest!20934 (store mapRest!20937 mapKey!20937 mapValue!20937))))

(declare-fun b!4312928 () Bool)

(declare-fun tp!1325283 () Bool)

(assert (=> b!4312928 (= e!2682619 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325283))))

(assert (= (and mapNonEmpty!20934 condMapEmpty!20937) mapIsEmpty!20937))

(assert (= (and mapNonEmpty!20934 (not condMapEmpty!20937)) mapNonEmpty!20937))

(assert (= (and mapNonEmpty!20937 ((_ is Cons!48251) mapValue!20937)) b!4312927))

(assert (= (and mapNonEmpty!20934 ((_ is Cons!48251) mapDefault!20937)) b!4312928))

(declare-fun m!4906047 () Bool)

(assert (=> mapNonEmpty!20937 m!4906047))

(declare-fun e!2682622 () Bool)

(declare-fun tp!1325287 () Bool)

(declare-fun b!4312933 () Bool)

(assert (=> b!4312933 (= e!2682622 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325287))))

(assert (=> mapNonEmpty!20934 (= tp!1325275 e!2682622)))

(assert (= (and mapNonEmpty!20934 ((_ is Cons!48251) mapValue!20934)) b!4312933))

(declare-fun tp!1325288 () Bool)

(declare-fun e!2682623 () Bool)

(declare-fun b!4312934 () Bool)

(assert (=> b!4312934 (= e!2682623 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325288))))

(assert (=> b!4312799 (= tp!1325272 e!2682623)))

(assert (= (and b!4312799 ((_ is Cons!48251) (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))))) b!4312934))

(declare-fun tp!1325289 () Bool)

(declare-fun b!4312935 () Bool)

(declare-fun e!2682624 () Bool)

(assert (=> b!4312935 (= e!2682624 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325289))))

(assert (=> b!4312799 (= tp!1325273 e!2682624)))

(assert (= (and b!4312799 ((_ is Cons!48251) (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))))) b!4312935))

(declare-fun tp!1325290 () Bool)

(declare-fun b!4312936 () Bool)

(declare-fun e!2682625 () Bool)

(assert (=> b!4312936 (= e!2682625 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325290))))

(assert (=> b!4312785 (= tp!1325271 e!2682625)))

(assert (= (and b!4312785 ((_ is Cons!48251) mapDefault!20934)) b!4312936))

(declare-fun b_lambda!126749 () Bool)

(assert (= b_lambda!126743 (or (and b!4312799 b_free!128723) b_lambda!126749)))

(declare-fun b_lambda!126751 () Bool)

(assert (= b_lambda!126747 (or b!4312786 b_lambda!126751)))

(declare-fun bs!605343 () Bool)

(declare-fun d!1268582 () Bool)

(assert (= bs!605343 (and d!1268582 b!4312786)))

(assert (=> bs!605343 (= (dynLambda!20454 lambda!133132 (h!53696 (toList!2452 lt!1532737))) (noDuplicateKeys!233 (_2!26686 (h!53696 (toList!2452 lt!1532737)))))))

(declare-fun m!4906049 () Bool)

(assert (=> bs!605343 m!4906049))

(assert (=> b!4312866 d!1268582))

(declare-fun b_lambda!126753 () Bool)

(assert (= b_lambda!126745 (or b!4312786 b_lambda!126753)))

(declare-fun bs!605344 () Bool)

(declare-fun d!1268584 () Bool)

(assert (= bs!605344 (and d!1268584 b!4312786)))

(assert (=> bs!605344 (= (dynLambda!20454 lambda!133132 (h!53696 (toList!2452 lt!1532741))) (noDuplicateKeys!233 (_2!26686 (h!53696 (toList!2452 lt!1532741)))))))

(declare-fun m!4906051 () Bool)

(assert (=> bs!605344 m!4906051))

(assert (=> b!4312858 d!1268584))

(check-sat (not bm!298258) (not b_lambda!126749) (not bm!298254) (not bm!298240) (not b!4312936) (not b!4312825) (not d!1268572) (not d!1268542) (not d!1268564) (not b!4312826) (not d!1268580) (not b!4312873) (not b!4312927) (not bm!298256) tp_is_empty!23871 (not bm!298257) (not b!4312832) (not b!4312912) (not b!4312920) b_and!340181 tp_is_empty!23869 (not d!1268552) (not d!1268534) (not bs!605343) (not b!4312864) (not b!4312831) (not b!4312843) (not b!4312872) (not b!4312933) (not d!1268566) (not b_next!129427) (not b_lambda!126753) (not b!4312865) (not tb!257313) (not b!4312824) (not bm!298239) (not b!4312928) (not b!4312913) (not b!4312905) (not d!1268548) (not b!4312859) (not b!4312853) (not b!4312906) (not d!1268532) (not d!1268562) (not b!4312935) (not b!4312934) (not b!4312867) (not d!1268560) (not bs!605344) (not d!1268538) (not bm!298255) (not mapNonEmpty!20937) (not b_lambda!126751) (not d!1268556) (not d!1268536) (not b!4312919) (not b!4312904) (not b!4312897) (not d!1268540) b_and!340179 (not bm!298253) (not b!4312849) (not b_next!129429) (not d!1268550) (not b!4312914) (not d!1268570) (not d!1268574) (not b!4312903))
(check-sat b_and!340181 b_and!340179 (not b_next!129429) (not b_next!129427))
(get-model)

(declare-fun d!1268586 () Bool)

(declare-fun lt!1532857 () Bool)

(assert (=> d!1268586 (= lt!1532857 (contains!10235 (map!10258 (v!42459 (underlying!9612 thiss!42308))) lt!1532744))))

(declare-fun contains!10239 (LongMapFixedSize!9382 (_ BitVec 64)) Bool)

(assert (=> d!1268586 (= lt!1532857 (contains!10239 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))) lt!1532744))))

(assert (=> d!1268586 (valid!3686 (v!42459 (underlying!9612 thiss!42308)))))

(assert (=> d!1268586 (= (contains!10236 (v!42459 (underlying!9612 thiss!42308)) lt!1532744) lt!1532857)))

(declare-fun bs!605345 () Bool)

(assert (= bs!605345 d!1268586))

(assert (=> bs!605345 m!4905867))

(assert (=> bs!605345 m!4905867))

(declare-fun m!4906053 () Bool)

(assert (=> bs!605345 m!4906053))

(declare-fun m!4906055 () Bool)

(assert (=> bs!605345 m!4906055))

(assert (=> bs!605345 m!4905903))

(assert (=> d!1268540 d!1268586))

(declare-fun b!4312973 () Bool)

(declare-fun e!2682658 () List!48375)

(declare-fun e!2682648 () List!48375)

(assert (=> b!4312973 (= e!2682658 e!2682648)))

(declare-fun c!733252 () Bool)

(assert (=> b!4312973 (= c!733252 (and (= lt!1532744 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4312974 () Bool)

(declare-fun c!733254 () Bool)

(assert (=> b!4312974 (= c!733254 (and (= lt!1532744 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!2682652 () List!48375)

(assert (=> b!4312974 (= e!2682648 e!2682652)))

(declare-fun bm!298267 () Bool)

(declare-fun call!298272 () List!48375)

(declare-fun call!298273 () List!48375)

(assert (=> bm!298267 (= call!298272 call!298273)))

(declare-fun d!1268588 () Bool)

(declare-fun e!2682650 () Bool)

(assert (=> d!1268588 e!2682650))

(declare-fun c!733249 () Bool)

(assert (=> d!1268588 (= c!733249 (contains!10239 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))) lt!1532744))))

(declare-fun lt!1532882 () List!48375)

(assert (=> d!1268588 (= lt!1532882 e!2682658)))

(declare-fun c!733250 () Bool)

(assert (=> d!1268588 (= c!733250 (= lt!1532744 (bvneg lt!1532744)))))

(declare-fun valid!3687 (LongMapFixedSize!9382) Bool)

(assert (=> d!1268588 (valid!3687 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))

(assert (=> d!1268588 (= (apply!11054 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))) lt!1532744) lt!1532882)))

(declare-fun bm!298268 () Bool)

(declare-fun call!298275 () ListLongMap!1065)

(declare-fun getCurrentListMap!19 (array!16944 array!16946 (_ BitVec 32) (_ BitVec 32) List!48375 List!48375 (_ BitVec 32) Int) ListLongMap!1065)

(assert (=> bm!298268 (= call!298275 (getCurrentListMap!19 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun b!4312975 () Bool)

(declare-fun lt!1532886 () Unit!67411)

(declare-fun lt!1532881 () Unit!67411)

(assert (=> b!4312975 (= lt!1532886 lt!1532881)))

(declare-fun e!2682657 () Bool)

(assert (=> b!4312975 e!2682657))

(declare-fun c!733253 () Bool)

(assert (=> b!4312975 (= c!733253 (= lt!1532744 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!16 0))(
  ( (Found!16 (index!1443 (_ BitVec 32))) (Undefined!16) (MissingZero!16 (index!1444 (_ BitVec 32))) (MissingVacant!16 (index!1445 (_ BitVec 32))) (Intermediate!16 (undefined!97 Bool) (index!1446 (_ BitVec 32)) (x!748569 (_ BitVec 32))) )
))
(declare-fun lt!1532890 () SeekEntryResult!16)

(declare-fun lemmaKeyInListMapThenSameValueInArray!6 (array!16944 array!16946 (_ BitVec 32) (_ BitVec 32) List!48375 List!48375 (_ BitVec 64) (_ BitVec 32) Int) Unit!67411)

(assert (=> b!4312975 (= lt!1532881 (lemmaKeyInListMapThenSameValueInArray!6 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744 (index!1443 lt!1532890) (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun lt!1532883 () Unit!67411)

(declare-fun lt!1532884 () Unit!67411)

(assert (=> b!4312975 (= lt!1532883 lt!1532884)))

(assert (=> b!4312975 (contains!10235 (getCurrentListMap!19 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) (select (arr!7567 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) (index!1443 lt!1532890)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!9 (array!16944 array!16946 (_ BitVec 32) (_ BitVec 32) List!48375 List!48375 (_ BitVec 32) Int) Unit!67411)

(assert (=> b!4312975 (= lt!1532884 (lemmaValidKeyInArrayIsInListMap!9 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (index!1443 lt!1532890) (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun lt!1532887 () Unit!67411)

(declare-fun lt!1532885 () Unit!67411)

(assert (=> b!4312975 (= lt!1532887 lt!1532885)))

(declare-fun arrayContainsKey!0 (array!16944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4312975 (arrayContainsKey!0 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16944 (_ BitVec 64) (_ BitVec 32)) Unit!67411)

(assert (=> b!4312975 (= lt!1532885 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744 (index!1443 lt!1532890)))))

(declare-fun e!2682651 () List!48375)

(assert (=> b!4312975 (= e!2682651 (select (arr!7568 (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) (index!1443 lt!1532890)))))

(declare-fun b!4312976 () Bool)

(assert (=> b!4312976 (= e!2682658 e!2682651)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!16944 (_ BitVec 32)) SeekEntryResult!16)

(assert (=> b!4312976 (= lt!1532890 (seekEntry!0 lt!1532744 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun lt!1532880 () Unit!67411)

(declare-fun lemmaSeekEntryGivesInRangeIndex!6 (array!16944 array!16946 (_ BitVec 32) (_ BitVec 32) List!48375 List!48375 (_ BitVec 64)) Unit!67411)

(assert (=> b!4312976 (= lt!1532880 (lemmaSeekEntryGivesInRangeIndex!6 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744))))

(declare-fun lt!1532888 () SeekEntryResult!16)

(assert (=> b!4312976 (= lt!1532888 (seekEntry!0 lt!1532744 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun res!1767660 () Bool)

(assert (=> b!4312976 (= res!1767660 (not ((_ is Found!16) lt!1532888)))))

(declare-fun e!2682653 () Bool)

(assert (=> b!4312976 (=> res!1767660 e!2682653)))

(assert (=> b!4312976 e!2682653))

(declare-fun lt!1532889 () Unit!67411)

(assert (=> b!4312976 (= lt!1532889 lt!1532880)))

(declare-fun c!733251 () Bool)

(assert (=> b!4312976 (= c!733251 ((_ is Found!16) lt!1532890))))

(declare-fun call!298274 () ListLongMap!1065)

(declare-fun bm!298269 () Bool)

(assert (=> bm!298269 (= call!298273 (apply!11055 (ite c!733253 call!298275 call!298274) lt!1532744))))

(declare-fun b!4312977 () Bool)

(declare-fun e!2682654 () Bool)

(assert (=> b!4312977 (= e!2682654 (= call!298273 (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun b!4312978 () Bool)

(assert (=> b!4312978 (= e!2682648 (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))))))

(declare-fun b!4312979 () Bool)

(assert (=> b!4312979 (= e!2682652 (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))))))

(declare-fun b!4312980 () Bool)

(declare-fun res!1767662 () Bool)

(declare-fun e!2682655 () Bool)

(assert (=> b!4312980 (=> (not res!1767662) (not e!2682655))))

(assert (=> b!4312980 (= res!1767662 (arrayContainsKey!0 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744 #b00000000000000000000000000000000))))

(declare-fun e!2682649 () Bool)

(assert (=> b!4312980 (= e!2682649 e!2682655)))

(declare-fun b!4312981 () Bool)

(assert (=> b!4312981 (= e!2682657 e!2682654)))

(declare-fun res!1767659 () Bool)

(assert (=> b!4312981 (= res!1767659 (not (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4312981 (=> (not res!1767659) (not e!2682654))))

(declare-fun b!4312982 () Bool)

(assert (=> b!4312982 (= e!2682652 (dynLambda!20453 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744))))

(declare-fun b!4312983 () Bool)

(assert (=> b!4312983 (= e!2682655 (= call!298272 (select (arr!7568 (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) (index!1443 lt!1532890))))))

(declare-fun b!4312984 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4312984 (= e!2682653 (inRange!0 (index!1443 lt!1532888) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun b!4312985 () Bool)

(assert (=> b!4312985 (= e!2682651 (dynLambda!20453 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744))))

(declare-fun b!4312986 () Bool)

(assert (=> b!4312986 (= e!2682650 (= lt!1532882 (get!15619 (getValueByKey!265 (toList!2452 (map!10260 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) lt!1532744))))))

(declare-fun bm!298270 () Bool)

(assert (=> bm!298270 (= call!298274 call!298275)))

(declare-fun b!4312987 () Bool)

(assert (=> b!4312987 (= e!2682657 e!2682649)))

(declare-fun c!733248 () Bool)

(assert (=> b!4312987 (= c!733248 (= lt!1532744 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4312988 () Bool)

(assert (=> b!4312988 (= e!2682650 (= lt!1532882 (dynLambda!20453 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744)))))

(declare-fun b!4312989 () Bool)

(declare-fun e!2682656 () Bool)

(assert (=> b!4312989 (= e!2682656 (= call!298272 (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun b!4312990 () Bool)

(declare-fun res!1767661 () Bool)

(assert (=> b!4312990 (=> (not res!1767661) (not e!2682656))))

(assert (=> b!4312990 (= res!1767661 (not (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4312990 (= e!2682649 e!2682656)))

(assert (= (and d!1268588 c!733250) b!4312973))

(assert (= (and d!1268588 (not c!733250)) b!4312976))

(assert (= (and b!4312973 c!733252) b!4312978))

(assert (= (and b!4312973 (not c!733252)) b!4312974))

(assert (= (and b!4312974 c!733254) b!4312979))

(assert (= (and b!4312974 (not c!733254)) b!4312982))

(assert (= (and b!4312976 (not res!1767660)) b!4312984))

(assert (= (and b!4312976 c!733251) b!4312975))

(assert (= (and b!4312976 (not c!733251)) b!4312985))

(assert (= (and b!4312975 c!733253) b!4312981))

(assert (= (and b!4312975 (not c!733253)) b!4312987))

(assert (= (and b!4312981 res!1767659) b!4312977))

(assert (= (and b!4312987 c!733248) b!4312990))

(assert (= (and b!4312987 (not c!733248)) b!4312980))

(assert (= (and b!4312990 res!1767661) b!4312989))

(assert (= (and b!4312980 res!1767662) b!4312983))

(assert (= (or b!4312989 b!4312983) bm!298270))

(assert (= (or b!4312989 b!4312983) bm!298267))

(assert (= (or b!4312977 bm!298270) bm!298268))

(assert (= (or b!4312977 bm!298267) bm!298269))

(assert (= (and d!1268588 c!733249) b!4312986))

(assert (= (and d!1268588 (not c!733249)) b!4312988))

(declare-fun b_lambda!126755 () Bool)

(assert (=> (not b_lambda!126755) (not b!4312982)))

(assert (=> b!4312982 t!355205))

(declare-fun b_and!340183 () Bool)

(assert (= b_and!340181 (and (=> t!355205 result!314746) b_and!340183)))

(declare-fun b_lambda!126757 () Bool)

(assert (=> (not b_lambda!126757) (not b!4312985)))

(assert (=> b!4312985 t!355205))

(declare-fun b_and!340185 () Bool)

(assert (= b_and!340183 (and (=> t!355205 result!314746) b_and!340185)))

(declare-fun b_lambda!126759 () Bool)

(assert (=> (not b_lambda!126759) (not b!4312988)))

(assert (=> b!4312988 t!355205))

(declare-fun b_and!340187 () Bool)

(assert (= b_and!340185 (and (=> t!355205 result!314746) b_and!340187)))

(assert (=> b!4312985 m!4905931))

(declare-fun m!4906057 () Bool)

(assert (=> b!4312983 m!4906057))

(declare-fun m!4906059 () Bool)

(assert (=> b!4312980 m!4906059))

(assert (=> b!4312986 m!4906033))

(declare-fun m!4906061 () Bool)

(assert (=> b!4312986 m!4906061))

(assert (=> b!4312986 m!4906061))

(declare-fun m!4906063 () Bool)

(assert (=> b!4312986 m!4906063))

(assert (=> b!4312988 m!4905931))

(declare-fun m!4906065 () Bool)

(assert (=> bm!298269 m!4906065))

(declare-fun m!4906067 () Bool)

(assert (=> b!4312975 m!4906067))

(assert (=> b!4312975 m!4906059))

(assert (=> b!4312975 m!4906057))

(declare-fun m!4906069 () Bool)

(assert (=> b!4312975 m!4906069))

(declare-fun m!4906071 () Bool)

(assert (=> b!4312975 m!4906071))

(declare-fun m!4906073 () Bool)

(assert (=> b!4312975 m!4906073))

(declare-fun m!4906075 () Bool)

(assert (=> b!4312975 m!4906075))

(assert (=> b!4312975 m!4906071))

(declare-fun m!4906077 () Bool)

(assert (=> b!4312975 m!4906077))

(assert (=> b!4312975 m!4906069))

(declare-fun m!4906079 () Bool)

(assert (=> b!4312976 m!4906079))

(declare-fun m!4906081 () Bool)

(assert (=> b!4312976 m!4906081))

(assert (=> d!1268588 m!4906055))

(declare-fun m!4906083 () Bool)

(assert (=> d!1268588 m!4906083))

(assert (=> bm!298268 m!4906069))

(declare-fun m!4906085 () Bool)

(assert (=> b!4312984 m!4906085))

(assert (=> b!4312982 m!4905931))

(assert (=> d!1268540 d!1268588))

(declare-fun d!1268590 () Bool)

(assert (=> d!1268590 (= (valid!3686 (v!42459 (underlying!9612 thiss!42308))) (valid!3687 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))))))

(declare-fun bs!605346 () Bool)

(assert (= bs!605346 d!1268590))

(assert (=> bs!605346 m!4906083))

(assert (=> d!1268540 d!1268590))

(declare-fun d!1268592 () Bool)

(assert (=> d!1268592 (= (map!10260 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (getCurrentListMap!19 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_values!4972 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun bs!605347 () Bool)

(assert (= bs!605347 d!1268592))

(assert (=> bs!605347 m!4906069))

(assert (=> d!1268572 d!1268592))

(assert (=> d!1268570 d!1268542))

(declare-fun b!4313010 () Bool)

(declare-fun e!2682672 () Unit!67411)

(declare-fun Unit!67418 () Unit!67411)

(assert (=> b!4313010 (= e!2682672 Unit!67418)))

(declare-fun b!4313011 () Bool)

(declare-fun e!2682674 () Unit!67411)

(declare-fun lt!1532908 () Unit!67411)

(assert (=> b!4313011 (= e!2682674 lt!1532908)))

(declare-fun lt!1532914 () Unit!67411)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!186 (List!48375 K!9474) Unit!67411)

(assert (=> b!4313011 (= lt!1532914 (lemmaContainsKeyImpliesGetValueByKeyDefined!186 (toList!2453 (map!10259 thiss!42308)) key!2048))))

(declare-datatypes ((Option!10250 0))(
  ( (None!10249) (Some!10249 (v!42472 V!9676)) )
))
(declare-fun isDefined!7552 (Option!10250) Bool)

(declare-fun getValueByKey!266 (List!48375 K!9474) Option!10250)

(assert (=> b!4313011 (isDefined!7552 (getValueByKey!266 (toList!2453 (map!10259 thiss!42308)) key!2048))))

(declare-fun lt!1532913 () Unit!67411)

(assert (=> b!4313011 (= lt!1532913 lt!1532914)))

(declare-fun lemmaInListThenGetKeysListContains!42 (List!48375 K!9474) Unit!67411)

(assert (=> b!4313011 (= lt!1532908 (lemmaInListThenGetKeysListContains!42 (toList!2453 (map!10259 thiss!42308)) key!2048))))

(declare-fun call!298278 () Bool)

(assert (=> b!4313011 call!298278))

(declare-fun b!4313012 () Bool)

(declare-fun e!2682675 () Bool)

(declare-fun e!2682673 () Bool)

(assert (=> b!4313012 (= e!2682675 e!2682673)))

(declare-fun res!1767670 () Bool)

(assert (=> b!4313012 (=> (not res!1767670) (not e!2682673))))

(assert (=> b!4313012 (= res!1767670 (isDefined!7552 (getValueByKey!266 (toList!2453 (map!10259 thiss!42308)) key!2048)))))

(declare-fun b!4313013 () Bool)

(declare-datatypes ((List!48377 0))(
  ( (Nil!48253) (Cons!48253 (h!53698 K!9474) (t!355208 List!48377)) )
))
(declare-fun e!2682676 () List!48377)

(declare-fun getKeysList!45 (List!48375) List!48377)

(assert (=> b!4313013 (= e!2682676 (getKeysList!45 (toList!2453 (map!10259 thiss!42308))))))

(declare-fun b!4313014 () Bool)

(assert (=> b!4313014 (= e!2682674 e!2682672)))

(declare-fun c!733262 () Bool)

(assert (=> b!4313014 (= c!733262 call!298278)))

(declare-fun b!4313015 () Bool)

(declare-fun contains!10240 (List!48377 K!9474) Bool)

(declare-fun keys!16100 (ListMap!1733) List!48377)

(assert (=> b!4313015 (= e!2682673 (contains!10240 (keys!16100 (map!10259 thiss!42308)) key!2048))))

(declare-fun bm!298273 () Bool)

(assert (=> bm!298273 (= call!298278 (contains!10240 e!2682676 key!2048))))

(declare-fun c!733263 () Bool)

(declare-fun c!733261 () Bool)

(assert (=> bm!298273 (= c!733263 c!733261)))

(declare-fun b!4313016 () Bool)

(assert (=> b!4313016 (= e!2682676 (keys!16100 (map!10259 thiss!42308)))))

(declare-fun b!4313017 () Bool)

(assert (=> b!4313017 false))

(declare-fun lt!1532912 () Unit!67411)

(declare-fun lt!1532911 () Unit!67411)

(assert (=> b!4313017 (= lt!1532912 lt!1532911)))

(declare-fun containsKey!342 (List!48375 K!9474) Bool)

(assert (=> b!4313017 (containsKey!342 (toList!2453 (map!10259 thiss!42308)) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!42 (List!48375 K!9474) Unit!67411)

(assert (=> b!4313017 (= lt!1532911 (lemmaInGetKeysListThenContainsKey!42 (toList!2453 (map!10259 thiss!42308)) key!2048))))

(declare-fun Unit!67419 () Unit!67411)

(assert (=> b!4313017 (= e!2682672 Unit!67419)))

(declare-fun d!1268594 () Bool)

(assert (=> d!1268594 e!2682675))

(declare-fun res!1767669 () Bool)

(assert (=> d!1268594 (=> res!1767669 e!2682675)))

(declare-fun e!2682671 () Bool)

(assert (=> d!1268594 (= res!1767669 e!2682671)))

(declare-fun res!1767671 () Bool)

(assert (=> d!1268594 (=> (not res!1767671) (not e!2682671))))

(declare-fun lt!1532909 () Bool)

(assert (=> d!1268594 (= res!1767671 (not lt!1532909))))

(declare-fun lt!1532907 () Bool)

(assert (=> d!1268594 (= lt!1532909 lt!1532907)))

(declare-fun lt!1532910 () Unit!67411)

(assert (=> d!1268594 (= lt!1532910 e!2682674)))

(assert (=> d!1268594 (= c!733261 lt!1532907)))

(assert (=> d!1268594 (= lt!1532907 (containsKey!342 (toList!2453 (map!10259 thiss!42308)) key!2048))))

(assert (=> d!1268594 (= (contains!10238 (map!10259 thiss!42308) key!2048) lt!1532909)))

(declare-fun b!4313009 () Bool)

(assert (=> b!4313009 (= e!2682671 (not (contains!10240 (keys!16100 (map!10259 thiss!42308)) key!2048)))))

(assert (= (and d!1268594 c!733261) b!4313011))

(assert (= (and d!1268594 (not c!733261)) b!4313014))

(assert (= (and b!4313014 c!733262) b!4313017))

(assert (= (and b!4313014 (not c!733262)) b!4313010))

(assert (= (or b!4313011 b!4313014) bm!298273))

(assert (= (and bm!298273 c!733263) b!4313013))

(assert (= (and bm!298273 (not c!733263)) b!4313016))

(assert (= (and d!1268594 res!1767671) b!4313009))

(assert (= (and d!1268594 (not res!1767669)) b!4313012))

(assert (= (and b!4313012 res!1767670) b!4313015))

(declare-fun m!4906087 () Bool)

(assert (=> bm!298273 m!4906087))

(declare-fun m!4906089 () Bool)

(assert (=> b!4313017 m!4906089))

(declare-fun m!4906091 () Bool)

(assert (=> b!4313017 m!4906091))

(assert (=> d!1268594 m!4906089))

(declare-fun m!4906093 () Bool)

(assert (=> b!4313012 m!4906093))

(assert (=> b!4313012 m!4906093))

(declare-fun m!4906095 () Bool)

(assert (=> b!4313012 m!4906095))

(assert (=> b!4313009 m!4905869))

(declare-fun m!4906097 () Bool)

(assert (=> b!4313009 m!4906097))

(assert (=> b!4313009 m!4906097))

(declare-fun m!4906099 () Bool)

(assert (=> b!4313009 m!4906099))

(assert (=> b!4313015 m!4905869))

(assert (=> b!4313015 m!4906097))

(assert (=> b!4313015 m!4906097))

(assert (=> b!4313015 m!4906099))

(declare-fun m!4906101 () Bool)

(assert (=> b!4313011 m!4906101))

(assert (=> b!4313011 m!4906093))

(assert (=> b!4313011 m!4906093))

(assert (=> b!4313011 m!4906095))

(declare-fun m!4906103 () Bool)

(assert (=> b!4313011 m!4906103))

(declare-fun m!4906105 () Bool)

(assert (=> b!4313013 m!4906105))

(assert (=> b!4313016 m!4905869))

(assert (=> b!4313016 m!4906097))

(assert (=> d!1268570 d!1268594))

(declare-fun b!4313019 () Bool)

(declare-fun e!2682678 () Unit!67411)

(declare-fun Unit!67420 () Unit!67411)

(assert (=> b!4313019 (= e!2682678 Unit!67420)))

(declare-fun b!4313020 () Bool)

(declare-fun e!2682680 () Unit!67411)

(declare-fun lt!1532916 () Unit!67411)

(assert (=> b!4313020 (= e!2682680 lt!1532916)))

(declare-fun lt!1532922 () Unit!67411)

(assert (=> b!4313020 (= lt!1532922 (lemmaContainsKeyImpliesGetValueByKeyDefined!186 (toList!2453 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) key!2048))))

(assert (=> b!4313020 (isDefined!7552 (getValueByKey!266 (toList!2453 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) key!2048))))

(declare-fun lt!1532921 () Unit!67411)

(assert (=> b!4313020 (= lt!1532921 lt!1532922)))

(assert (=> b!4313020 (= lt!1532916 (lemmaInListThenGetKeysListContains!42 (toList!2453 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) key!2048))))

(declare-fun call!298279 () Bool)

(assert (=> b!4313020 call!298279))

(declare-fun b!4313021 () Bool)

(declare-fun e!2682681 () Bool)

(declare-fun e!2682679 () Bool)

(assert (=> b!4313021 (= e!2682681 e!2682679)))

(declare-fun res!1767673 () Bool)

(assert (=> b!4313021 (=> (not res!1767673) (not e!2682679))))

(assert (=> b!4313021 (= res!1767673 (isDefined!7552 (getValueByKey!266 (toList!2453 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) key!2048)))))

(declare-fun b!4313022 () Bool)

(declare-fun e!2682682 () List!48377)

(assert (=> b!4313022 (= e!2682682 (getKeysList!45 (toList!2453 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))))))

(declare-fun b!4313023 () Bool)

(assert (=> b!4313023 (= e!2682680 e!2682678)))

(declare-fun c!733265 () Bool)

(assert (=> b!4313023 (= c!733265 call!298279)))

(declare-fun b!4313024 () Bool)

(assert (=> b!4313024 (= e!2682679 (contains!10240 (keys!16100 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) key!2048))))

(declare-fun bm!298274 () Bool)

(assert (=> bm!298274 (= call!298279 (contains!10240 e!2682682 key!2048))))

(declare-fun c!733266 () Bool)

(declare-fun c!733264 () Bool)

(assert (=> bm!298274 (= c!733266 c!733264)))

(declare-fun b!4313025 () Bool)

(assert (=> b!4313025 (= e!2682682 (keys!16100 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun b!4313026 () Bool)

(assert (=> b!4313026 false))

(declare-fun lt!1532920 () Unit!67411)

(declare-fun lt!1532919 () Unit!67411)

(assert (=> b!4313026 (= lt!1532920 lt!1532919)))

(assert (=> b!4313026 (containsKey!342 (toList!2453 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) key!2048)))

(assert (=> b!4313026 (= lt!1532919 (lemmaInGetKeysListThenContainsKey!42 (toList!2453 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) key!2048))))

(declare-fun Unit!67421 () Unit!67411)

(assert (=> b!4313026 (= e!2682678 Unit!67421)))

(declare-fun d!1268596 () Bool)

(assert (=> d!1268596 e!2682681))

(declare-fun res!1767672 () Bool)

(assert (=> d!1268596 (=> res!1767672 e!2682681)))

(declare-fun e!2682677 () Bool)

(assert (=> d!1268596 (= res!1767672 e!2682677)))

(declare-fun res!1767674 () Bool)

(assert (=> d!1268596 (=> (not res!1767674) (not e!2682677))))

(declare-fun lt!1532917 () Bool)

(assert (=> d!1268596 (= res!1767674 (not lt!1532917))))

(declare-fun lt!1532915 () Bool)

(assert (=> d!1268596 (= lt!1532917 lt!1532915)))

(declare-fun lt!1532918 () Unit!67411)

(assert (=> d!1268596 (= lt!1532918 e!2682680)))

(assert (=> d!1268596 (= c!733264 lt!1532915)))

(assert (=> d!1268596 (= lt!1532915 (containsKey!342 (toList!2453 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) key!2048))))

(assert (=> d!1268596 (= (contains!10238 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) key!2048) lt!1532917)))

(declare-fun b!4313018 () Bool)

(assert (=> b!4313018 (= e!2682677 (not (contains!10240 (keys!16100 (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) key!2048)))))

(assert (= (and d!1268596 c!733264) b!4313020))

(assert (= (and d!1268596 (not c!733264)) b!4313023))

(assert (= (and b!4313023 c!733265) b!4313026))

(assert (= (and b!4313023 (not c!733265)) b!4313019))

(assert (= (or b!4313020 b!4313023) bm!298274))

(assert (= (and bm!298274 c!733266) b!4313022))

(assert (= (and bm!298274 (not c!733266)) b!4313025))

(assert (= (and d!1268596 res!1767674) b!4313018))

(assert (= (and d!1268596 (not res!1767672)) b!4313021))

(assert (= (and b!4313021 res!1767673) b!4313024))

(declare-fun m!4906107 () Bool)

(assert (=> bm!298274 m!4906107))

(declare-fun m!4906109 () Bool)

(assert (=> b!4313026 m!4906109))

(declare-fun m!4906111 () Bool)

(assert (=> b!4313026 m!4906111))

(assert (=> d!1268596 m!4906109))

(declare-fun m!4906113 () Bool)

(assert (=> b!4313021 m!4906113))

(assert (=> b!4313021 m!4906113))

(declare-fun m!4906115 () Bool)

(assert (=> b!4313021 m!4906115))

(assert (=> b!4313018 m!4906005))

(declare-fun m!4906117 () Bool)

(assert (=> b!4313018 m!4906117))

(assert (=> b!4313018 m!4906117))

(declare-fun m!4906119 () Bool)

(assert (=> b!4313018 m!4906119))

(assert (=> b!4313024 m!4906005))

(assert (=> b!4313024 m!4906117))

(assert (=> b!4313024 m!4906117))

(assert (=> b!4313024 m!4906119))

(declare-fun m!4906121 () Bool)

(assert (=> b!4313020 m!4906121))

(assert (=> b!4313020 m!4906113))

(assert (=> b!4313020 m!4906113))

(assert (=> b!4313020 m!4906115))

(declare-fun m!4906123 () Bool)

(assert (=> b!4313020 m!4906123))

(declare-fun m!4906125 () Bool)

(assert (=> b!4313022 m!4906125))

(assert (=> b!4313025 m!4906005))

(assert (=> b!4313025 m!4906117))

(assert (=> d!1268570 d!1268596))

(declare-fun d!1268598 () Bool)

(declare-fun lt!1532923 () Bool)

(assert (=> d!1268598 (= lt!1532923 (contains!10235 (map!10258 (v!42459 (underlying!9612 thiss!42308))) lt!1532850))))

(assert (=> d!1268598 (= lt!1532923 (contains!10239 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))) lt!1532850))))

(assert (=> d!1268598 (valid!3686 (v!42459 (underlying!9612 thiss!42308)))))

(assert (=> d!1268598 (= (contains!10236 (v!42459 (underlying!9612 thiss!42308)) lt!1532850) lt!1532923)))

(declare-fun bs!605348 () Bool)

(assert (= bs!605348 d!1268598))

(assert (=> bs!605348 m!4905867))

(assert (=> bs!605348 m!4905867))

(declare-fun m!4906127 () Bool)

(assert (=> bs!605348 m!4906127))

(declare-fun m!4906129 () Bool)

(assert (=> bs!605348 m!4906129))

(assert (=> bs!605348 m!4905903))

(assert (=> d!1268570 d!1268598))

(assert (=> d!1268570 d!1268580))

(assert (=> d!1268570 d!1268574))

(declare-fun bs!605349 () Bool)

(declare-fun d!1268600 () Bool)

(assert (= bs!605349 (and d!1268600 b!4312906)))

(declare-fun lambda!133158 () Int)

(assert (=> bs!605349 (= lambda!133158 lambda!133152)))

(declare-fun bs!605350 () Bool)

(assert (= bs!605350 (and d!1268600 d!1268548)))

(assert (=> bs!605350 (not (= lambda!133158 lambda!133139))))

(declare-fun bs!605351 () Bool)

(assert (= bs!605351 (and d!1268600 b!4312786)))

(assert (=> bs!605351 (= lambda!133158 lambda!133132)))

(declare-fun bs!605352 () Bool)

(assert (= bs!605352 (and d!1268600 b!4312919)))

(assert (=> bs!605352 (= lambda!133158 lambda!133155)))

(declare-fun bs!605353 () Bool)

(assert (= bs!605353 (and d!1268600 d!1268534)))

(assert (=> bs!605353 (not (= lambda!133158 lambda!133138))))

(declare-fun bs!605354 () Bool)

(assert (= bs!605354 (and d!1268600 d!1268560)))

(assert (=> bs!605354 (not (= lambda!133158 lambda!133148))))

(declare-fun bs!605355 () Bool)

(assert (= bs!605355 (and d!1268600 d!1268550)))

(assert (=> bs!605355 (= lambda!133158 lambda!133144)))

(declare-fun lt!1532926 () ListMap!1733)

(assert (=> d!1268600 (invariantList!581 (toList!2453 lt!1532926))))

(declare-fun e!2682685 () ListMap!1733)

(assert (=> d!1268600 (= lt!1532926 e!2682685)))

(declare-fun c!733269 () Bool)

(assert (=> d!1268600 (= c!733269 ((_ is Cons!48252) (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))))

(assert (=> d!1268600 (forall!8756 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lambda!133158)))

(assert (=> d!1268600 (= (extractMap!337 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) lt!1532926)))

(declare-fun b!4313031 () Bool)

(declare-fun addToMapMapFromBucket!39 (List!48375 ListMap!1733) ListMap!1733)

(assert (=> b!4313031 (= e!2682685 (addToMapMapFromBucket!39 (_2!26686 (h!53696 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) (extractMap!337 (t!355203 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))))))

(declare-fun b!4313032 () Bool)

(assert (=> b!4313032 (= e!2682685 (ListMap!1734 Nil!48251))))

(assert (= (and d!1268600 c!733269) b!4313031))

(assert (= (and d!1268600 (not c!733269)) b!4313032))

(declare-fun m!4906131 () Bool)

(assert (=> d!1268600 m!4906131))

(declare-fun m!4906133 () Bool)

(assert (=> d!1268600 m!4906133))

(declare-fun m!4906135 () Bool)

(assert (=> b!4313031 m!4906135))

(assert (=> b!4313031 m!4906135))

(declare-fun m!4906137 () Bool)

(assert (=> b!4313031 m!4906137))

(assert (=> d!1268570 d!1268600))

(assert (=> d!1268570 d!1268572))

(declare-fun d!1268602 () Bool)

(declare-fun isEmpty!28088 (Option!10249) Bool)

(assert (=> d!1268602 (= (isDefined!7551 call!298260) (not (isEmpty!28088 call!298260)))))

(declare-fun bs!605356 () Bool)

(assert (= bs!605356 d!1268602))

(declare-fun m!4906139 () Bool)

(assert (=> bs!605356 m!4906139))

(assert (=> bm!298256 d!1268602))

(declare-fun b!4313053 () Bool)

(declare-datatypes ((tuple2!46816 0))(
  ( (tuple2!46817 (_1!26689 Bool) (_2!26689 Cell!18573)) )
))
(declare-fun e!2682698 () tuple2!46816)

(declare-fun lt!1532950 () tuple2!46814)

(declare-fun lt!1532949 () tuple2!46814)

(assert (=> b!4313053 (= e!2682698 (tuple2!46817 (and (_1!26688 lt!1532950) (_1!26688 lt!1532949)) (Cell!18574 (_2!26688 lt!1532949))))))

(declare-fun call!298288 () LongMapFixedSize!9382)

(assert (=> b!4313053 (= lt!1532950 (update!466 call!298288 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun call!298290 () tuple2!46814)

(assert (=> b!4313053 (= lt!1532949 call!298290)))

(declare-fun b!4313054 () Bool)

(declare-datatypes ((tuple3!5496 0))(
  ( (tuple3!5497 (_1!26690 Bool) (_2!26690 Cell!18573) (_3!3281 MutLongMap!4691)) )
))
(declare-fun e!2682703 () tuple3!5496)

(declare-fun lt!1532952 () tuple2!46816)

(assert (=> b!4313054 (= e!2682703 (tuple3!5497 false (_2!26689 lt!1532952) (v!42459 (underlying!9612 thiss!42308))))))

(declare-fun b!4313055 () Bool)

(declare-fun e!2682700 () tuple2!46816)

(declare-fun lt!1532948 () tuple2!46814)

(assert (=> b!4313055 (= e!2682700 (tuple2!46817 (_1!26688 lt!1532948) (Cell!18574 (_2!26688 lt!1532948))))))

(declare-fun call!298289 () tuple2!46814)

(assert (=> b!4313055 (= lt!1532948 call!298289)))

(declare-fun b!4313056 () Bool)

(declare-fun lt!1532955 () Cell!18573)

(assert (=> b!4313056 (= e!2682700 (tuple2!46817 true lt!1532955))))

(declare-fun b!4313057 () Bool)

(declare-fun e!2682699 () Bool)

(declare-fun e!2682701 () Bool)

(assert (=> b!4313057 (= e!2682699 e!2682701)))

(declare-fun res!1767680 () Bool)

(assert (=> b!4313057 (=> res!1767680 e!2682701)))

(declare-fun lt!1532951 () tuple2!46812)

(assert (=> b!4313057 (= res!1767680 (= (_1!26687 lt!1532951) false))))

(declare-fun bm!298283 () Bool)

(declare-fun lt!1532956 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!22 ((_ BitVec 32) Int) LongMapFixedSize!9382)

(assert (=> bm!298283 (= call!298288 (getNewLongMapFixedSize!22 lt!1532956 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun b!4313058 () Bool)

(declare-fun e!2682702 () tuple2!46816)

(assert (=> b!4313058 (= e!2682698 e!2682702)))

(declare-fun c!733281 () Bool)

(assert (=> b!4313058 (= c!733281 (and (not (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!298284 () Bool)

(assert (=> bm!298284 (= call!298289 call!298290)))

(declare-fun b!4313059 () Bool)

(declare-fun c!733280 () Bool)

(assert (=> b!4313059 (= c!733280 (and (not (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4313059 (= e!2682702 e!2682700)))

(declare-fun b!4313060 () Bool)

(assert (=> b!4313060 (= e!2682701 (= (map!10258 (_2!26687 lt!1532951)) (map!10258 (v!42459 (underlying!9612 thiss!42308)))))))

(declare-fun bm!298285 () Bool)

(declare-fun call!298291 () LongMapFixedSize!9382)

(assert (=> bm!298285 (= call!298291 call!298288)))

(declare-fun b!4313061 () Bool)

(declare-fun lt!1532954 () tuple2!46814)

(assert (=> b!4313061 (= e!2682703 (ite (_1!26688 lt!1532954) (tuple3!5497 true (underlying!9611 (v!42459 (underlying!9612 thiss!42308))) (LongMap!4691 (Cell!18574 (_2!26688 lt!1532954)))) (tuple3!5497 false (Cell!18574 (_2!26688 lt!1532954)) (v!42459 (underlying!9612 thiss!42308)))))))

(declare-fun repackFrom!8 (MutLongMap!4691 LongMapFixedSize!9382 (_ BitVec 32)) tuple2!46814)

(assert (=> b!4313061 (= lt!1532954 (repackFrom!8 (v!42459 (underlying!9612 thiss!42308)) (v!42458 (_2!26689 lt!1532952)) (bvsub (size!35606 (_keys!4991 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun c!733279 () Bool)

(declare-fun bm!298286 () Bool)

(assert (=> bm!298286 (= call!298290 (update!466 (ite c!733279 (_2!26688 lt!1532950) call!298291) (ite c!733279 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!733281 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!733279 (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (ite c!733281 (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))))

(declare-fun d!1268604 () Bool)

(assert (=> d!1268604 e!2682699))

(declare-fun res!1767679 () Bool)

(assert (=> d!1268604 (=> (not res!1767679) (not e!2682699))))

(assert (=> d!1268604 (= res!1767679 ((_ is LongMap!4691) (_2!26687 lt!1532951)))))

(declare-fun lt!1532947 () tuple3!5496)

(assert (=> d!1268604 (= lt!1532951 (tuple2!46813 (_1!26690 lt!1532947) (_3!3281 lt!1532947)))))

(assert (=> d!1268604 (= lt!1532947 e!2682703)))

(declare-fun c!733278 () Bool)

(assert (=> d!1268604 (= c!733278 (not (_1!26689 lt!1532952)))))

(assert (=> d!1268604 (= lt!1532952 e!2682698)))

(assert (=> d!1268604 (= c!733279 (and (not (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4940 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1268604 (= lt!1532955 (Cell!18574 (getNewLongMapFixedSize!22 lt!1532956 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))))))))

(declare-fun computeNewMask!8 (MutLongMap!4691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1268604 (= lt!1532956 (computeNewMask!8 (v!42459 (underlying!9612 thiss!42308)) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_vacant!4752 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_size!9425 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))))

(assert (=> d!1268604 (valid!3686 (v!42459 (underlying!9612 thiss!42308)))))

(assert (=> d!1268604 (= (repack!64 (v!42459 (underlying!9612 thiss!42308))) lt!1532951)))

(declare-fun b!4313062 () Bool)

(declare-fun lt!1532953 () tuple2!46814)

(assert (=> b!4313062 (= lt!1532953 call!298289)))

(assert (=> b!4313062 (= e!2682702 (tuple2!46817 (_1!26688 lt!1532953) (Cell!18574 (_2!26688 lt!1532953))))))

(assert (= (and d!1268604 c!733279) b!4313053))

(assert (= (and d!1268604 (not c!733279)) b!4313058))

(assert (= (and b!4313058 c!733281) b!4313062))

(assert (= (and b!4313058 (not c!733281)) b!4313059))

(assert (= (and b!4313059 c!733280) b!4313055))

(assert (= (and b!4313059 (not c!733280)) b!4313056))

(assert (= (or b!4313062 b!4313055) bm!298285))

(assert (= (or b!4313062 b!4313055) bm!298284))

(assert (= (or b!4313053 bm!298285) bm!298283))

(assert (= (or b!4313053 bm!298284) bm!298286))

(assert (= (and d!1268604 c!733278) b!4313054))

(assert (= (and d!1268604 (not c!733278)) b!4313061))

(assert (= (and d!1268604 res!1767679) b!4313057))

(assert (= (and b!4313057 (not res!1767680)) b!4313060))

(declare-fun m!4906141 () Bool)

(assert (=> d!1268604 m!4906141))

(declare-fun m!4906143 () Bool)

(assert (=> d!1268604 m!4906143))

(assert (=> d!1268604 m!4905903))

(declare-fun m!4906145 () Bool)

(assert (=> bm!298286 m!4906145))

(declare-fun m!4906147 () Bool)

(assert (=> b!4313060 m!4906147))

(assert (=> b!4313060 m!4905867))

(declare-fun m!4906149 () Bool)

(assert (=> b!4313053 m!4906149))

(assert (=> bm!298283 m!4906141))

(declare-fun m!4906151 () Bool)

(assert (=> b!4313061 m!4906151))

(assert (=> b!4312824 d!1268604))

(declare-fun b!4313064 () Bool)

(declare-fun e!2682705 () Unit!67411)

(declare-fun Unit!67422 () Unit!67411)

(assert (=> b!4313064 (= e!2682705 Unit!67422)))

(declare-fun b!4313065 () Bool)

(declare-fun e!2682707 () Unit!67411)

(declare-fun lt!1532958 () Unit!67411)

(assert (=> b!4313065 (= e!2682707 lt!1532958)))

(declare-fun lt!1532964 () Unit!67411)

(assert (=> b!4313065 (= lt!1532964 (lemmaContainsKeyImpliesGetValueByKeyDefined!186 (toList!2453 (extractMap!337 (toList!2452 lt!1532845))) key!2048))))

(assert (=> b!4313065 (isDefined!7552 (getValueByKey!266 (toList!2453 (extractMap!337 (toList!2452 lt!1532845))) key!2048))))

(declare-fun lt!1532963 () Unit!67411)

(assert (=> b!4313065 (= lt!1532963 lt!1532964)))

(assert (=> b!4313065 (= lt!1532958 (lemmaInListThenGetKeysListContains!42 (toList!2453 (extractMap!337 (toList!2452 lt!1532845))) key!2048))))

(declare-fun call!298292 () Bool)

(assert (=> b!4313065 call!298292))

(declare-fun b!4313066 () Bool)

(declare-fun e!2682708 () Bool)

(declare-fun e!2682706 () Bool)

(assert (=> b!4313066 (= e!2682708 e!2682706)))

(declare-fun res!1767682 () Bool)

(assert (=> b!4313066 (=> (not res!1767682) (not e!2682706))))

(assert (=> b!4313066 (= res!1767682 (isDefined!7552 (getValueByKey!266 (toList!2453 (extractMap!337 (toList!2452 lt!1532845))) key!2048)))))

(declare-fun b!4313067 () Bool)

(declare-fun e!2682709 () List!48377)

(assert (=> b!4313067 (= e!2682709 (getKeysList!45 (toList!2453 (extractMap!337 (toList!2452 lt!1532845)))))))

(declare-fun b!4313068 () Bool)

(assert (=> b!4313068 (= e!2682707 e!2682705)))

(declare-fun c!733283 () Bool)

(assert (=> b!4313068 (= c!733283 call!298292)))

(declare-fun b!4313069 () Bool)

(assert (=> b!4313069 (= e!2682706 (contains!10240 (keys!16100 (extractMap!337 (toList!2452 lt!1532845))) key!2048))))

(declare-fun bm!298287 () Bool)

(assert (=> bm!298287 (= call!298292 (contains!10240 e!2682709 key!2048))))

(declare-fun c!733284 () Bool)

(declare-fun c!733282 () Bool)

(assert (=> bm!298287 (= c!733284 c!733282)))

(declare-fun b!4313070 () Bool)

(assert (=> b!4313070 (= e!2682709 (keys!16100 (extractMap!337 (toList!2452 lt!1532845))))))

(declare-fun b!4313071 () Bool)

(assert (=> b!4313071 false))

(declare-fun lt!1532962 () Unit!67411)

(declare-fun lt!1532961 () Unit!67411)

(assert (=> b!4313071 (= lt!1532962 lt!1532961)))

(assert (=> b!4313071 (containsKey!342 (toList!2453 (extractMap!337 (toList!2452 lt!1532845))) key!2048)))

(assert (=> b!4313071 (= lt!1532961 (lemmaInGetKeysListThenContainsKey!42 (toList!2453 (extractMap!337 (toList!2452 lt!1532845))) key!2048))))

(declare-fun Unit!67423 () Unit!67411)

(assert (=> b!4313071 (= e!2682705 Unit!67423)))

(declare-fun d!1268606 () Bool)

(assert (=> d!1268606 e!2682708))

(declare-fun res!1767681 () Bool)

(assert (=> d!1268606 (=> res!1767681 e!2682708)))

(declare-fun e!2682704 () Bool)

(assert (=> d!1268606 (= res!1767681 e!2682704)))

(declare-fun res!1767683 () Bool)

(assert (=> d!1268606 (=> (not res!1767683) (not e!2682704))))

(declare-fun lt!1532959 () Bool)

(assert (=> d!1268606 (= res!1767683 (not lt!1532959))))

(declare-fun lt!1532957 () Bool)

(assert (=> d!1268606 (= lt!1532959 lt!1532957)))

(declare-fun lt!1532960 () Unit!67411)

(assert (=> d!1268606 (= lt!1532960 e!2682707)))

(assert (=> d!1268606 (= c!733282 lt!1532957)))

(assert (=> d!1268606 (= lt!1532957 (containsKey!342 (toList!2453 (extractMap!337 (toList!2452 lt!1532845))) key!2048))))

(assert (=> d!1268606 (= (contains!10238 (extractMap!337 (toList!2452 lt!1532845)) key!2048) lt!1532959)))

(declare-fun b!4313063 () Bool)

(assert (=> b!4313063 (= e!2682704 (not (contains!10240 (keys!16100 (extractMap!337 (toList!2452 lt!1532845))) key!2048)))))

(assert (= (and d!1268606 c!733282) b!4313065))

(assert (= (and d!1268606 (not c!733282)) b!4313068))

(assert (= (and b!4313068 c!733283) b!4313071))

(assert (= (and b!4313068 (not c!733283)) b!4313064))

(assert (= (or b!4313065 b!4313068) bm!298287))

(assert (= (and bm!298287 c!733284) b!4313067))

(assert (= (and bm!298287 (not c!733284)) b!4313070))

(assert (= (and d!1268606 res!1767683) b!4313063))

(assert (= (and d!1268606 (not res!1767681)) b!4313066))

(assert (= (and b!4313066 res!1767682) b!4313069))

(declare-fun m!4906153 () Bool)

(assert (=> bm!298287 m!4906153))

(declare-fun m!4906155 () Bool)

(assert (=> b!4313071 m!4906155))

(declare-fun m!4906157 () Bool)

(assert (=> b!4313071 m!4906157))

(assert (=> d!1268606 m!4906155))

(declare-fun m!4906159 () Bool)

(assert (=> b!4313066 m!4906159))

(assert (=> b!4313066 m!4906159))

(declare-fun m!4906161 () Bool)

(assert (=> b!4313066 m!4906161))

(assert (=> b!4313063 m!4906021))

(declare-fun m!4906163 () Bool)

(assert (=> b!4313063 m!4906163))

(assert (=> b!4313063 m!4906163))

(declare-fun m!4906165 () Bool)

(assert (=> b!4313063 m!4906165))

(assert (=> b!4313069 m!4906021))

(assert (=> b!4313069 m!4906163))

(assert (=> b!4313069 m!4906163))

(assert (=> b!4313069 m!4906165))

(declare-fun m!4906167 () Bool)

(assert (=> b!4313065 m!4906167))

(assert (=> b!4313065 m!4906159))

(assert (=> b!4313065 m!4906159))

(assert (=> b!4313065 m!4906161))

(declare-fun m!4906169 () Bool)

(assert (=> b!4313065 m!4906169))

(declare-fun m!4906171 () Bool)

(assert (=> b!4313067 m!4906171))

(assert (=> b!4313070 m!4906021))

(assert (=> b!4313070 m!4906163))

(assert (=> b!4312903 d!1268606))

(declare-fun bs!605357 () Bool)

(declare-fun d!1268608 () Bool)

(assert (= bs!605357 (and d!1268608 b!4312906)))

(declare-fun lambda!133159 () Int)

(assert (=> bs!605357 (= lambda!133159 lambda!133152)))

(declare-fun bs!605358 () Bool)

(assert (= bs!605358 (and d!1268608 d!1268548)))

(assert (=> bs!605358 (not (= lambda!133159 lambda!133139))))

(declare-fun bs!605359 () Bool)

(assert (= bs!605359 (and d!1268608 d!1268600)))

(assert (=> bs!605359 (= lambda!133159 lambda!133158)))

(declare-fun bs!605360 () Bool)

(assert (= bs!605360 (and d!1268608 b!4312786)))

(assert (=> bs!605360 (= lambda!133159 lambda!133132)))

(declare-fun bs!605361 () Bool)

(assert (= bs!605361 (and d!1268608 b!4312919)))

(assert (=> bs!605361 (= lambda!133159 lambda!133155)))

(declare-fun bs!605362 () Bool)

(assert (= bs!605362 (and d!1268608 d!1268534)))

(assert (=> bs!605362 (not (= lambda!133159 lambda!133138))))

(declare-fun bs!605363 () Bool)

(assert (= bs!605363 (and d!1268608 d!1268560)))

(assert (=> bs!605363 (not (= lambda!133159 lambda!133148))))

(declare-fun bs!605364 () Bool)

(assert (= bs!605364 (and d!1268608 d!1268550)))

(assert (=> bs!605364 (= lambda!133159 lambda!133144)))

(declare-fun lt!1532965 () ListMap!1733)

(assert (=> d!1268608 (invariantList!581 (toList!2453 lt!1532965))))

(declare-fun e!2682710 () ListMap!1733)

(assert (=> d!1268608 (= lt!1532965 e!2682710)))

(declare-fun c!733285 () Bool)

(assert (=> d!1268608 (= c!733285 ((_ is Cons!48252) (toList!2452 lt!1532845)))))

(assert (=> d!1268608 (forall!8756 (toList!2452 lt!1532845) lambda!133159)))

(assert (=> d!1268608 (= (extractMap!337 (toList!2452 lt!1532845)) lt!1532965)))

(declare-fun b!4313072 () Bool)

(assert (=> b!4313072 (= e!2682710 (addToMapMapFromBucket!39 (_2!26686 (h!53696 (toList!2452 lt!1532845))) (extractMap!337 (t!355203 (toList!2452 lt!1532845)))))))

(declare-fun b!4313073 () Bool)

(assert (=> b!4313073 (= e!2682710 (ListMap!1734 Nil!48251))))

(assert (= (and d!1268608 c!733285) b!4313072))

(assert (= (and d!1268608 (not c!733285)) b!4313073))

(declare-fun m!4906173 () Bool)

(assert (=> d!1268608 m!4906173))

(declare-fun m!4906175 () Bool)

(assert (=> d!1268608 m!4906175))

(declare-fun m!4906177 () Bool)

(assert (=> b!4313072 m!4906177))

(assert (=> b!4313072 m!4906177))

(declare-fun m!4906179 () Bool)

(assert (=> b!4313072 m!4906179))

(assert (=> b!4312903 d!1268608))

(declare-fun bs!605365 () Bool)

(declare-fun d!1268610 () Bool)

(assert (= bs!605365 (and d!1268610 b!4312906)))

(declare-fun lambda!133162 () Int)

(assert (=> bs!605365 (= lambda!133162 lambda!133152)))

(declare-fun bs!605366 () Bool)

(assert (= bs!605366 (and d!1268610 d!1268608)))

(assert (=> bs!605366 (= lambda!133162 lambda!133159)))

(declare-fun bs!605367 () Bool)

(assert (= bs!605367 (and d!1268610 d!1268548)))

(assert (=> bs!605367 (not (= lambda!133162 lambda!133139))))

(declare-fun bs!605368 () Bool)

(assert (= bs!605368 (and d!1268610 d!1268600)))

(assert (=> bs!605368 (= lambda!133162 lambda!133158)))

(declare-fun bs!605369 () Bool)

(assert (= bs!605369 (and d!1268610 b!4312786)))

(assert (=> bs!605369 (= lambda!133162 lambda!133132)))

(declare-fun bs!605370 () Bool)

(assert (= bs!605370 (and d!1268610 b!4312919)))

(assert (=> bs!605370 (= lambda!133162 lambda!133155)))

(declare-fun bs!605371 () Bool)

(assert (= bs!605371 (and d!1268610 d!1268534)))

(assert (=> bs!605371 (not (= lambda!133162 lambda!133138))))

(declare-fun bs!605372 () Bool)

(assert (= bs!605372 (and d!1268610 d!1268560)))

(assert (=> bs!605372 (not (= lambda!133162 lambda!133148))))

(declare-fun bs!605373 () Bool)

(assert (= bs!605373 (and d!1268610 d!1268550)))

(assert (=> bs!605373 (= lambda!133162 lambda!133144)))

(assert (=> d!1268610 (contains!10238 (extractMap!337 (toList!2452 lt!1532845)) key!2048)))

(declare-fun lt!1532968 () Unit!67411)

(declare-fun choose!26292 (ListLongMap!1065 K!9474 Hashable!4607) Unit!67411)

(assert (=> d!1268610 (= lt!1532968 (choose!26292 lt!1532845 key!2048 (hashF!6763 thiss!42308)))))

(assert (=> d!1268610 (forall!8756 (toList!2452 lt!1532845) lambda!133162)))

(assert (=> d!1268610 (= (lemmaInLongMapThenInGenericMap!142 lt!1532845 key!2048 (hashF!6763 thiss!42308)) lt!1532968)))

(declare-fun bs!605374 () Bool)

(assert (= bs!605374 d!1268610))

(assert (=> bs!605374 m!4906021))

(assert (=> bs!605374 m!4906021))

(assert (=> bs!605374 m!4906023))

(declare-fun m!4906181 () Bool)

(assert (=> bs!605374 m!4906181))

(declare-fun m!4906183 () Bool)

(assert (=> bs!605374 m!4906183))

(assert (=> b!4312903 d!1268610))

(declare-fun d!1268612 () Bool)

(assert (=> d!1268612 (= (imbalanced!60 (v!42459 (underlying!9612 thiss!42308))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9425 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_vacant!4752 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))))) (mask!13265 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) (bvsgt (_vacant!4752 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (_size!9425 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))))))))

(assert (=> d!1268536 d!1268612))

(assert (=> d!1268536 d!1268590))

(declare-fun bm!298336 () Bool)

(declare-fun call!298354 () ListLongMap!1065)

(declare-fun call!298342 () ListLongMap!1065)

(assert (=> bm!298336 (= call!298354 call!298342)))

(declare-fun lt!1533026 () SeekEntryResult!16)

(declare-fun b!4313154 () Bool)

(declare-fun e!2682773 () Bool)

(assert (=> b!4313154 (= e!2682773 (= (select (arr!7567 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1443 lt!1533026)) lt!1532744))))

(declare-fun b!4313155 () Bool)

(declare-fun e!2682763 () Bool)

(declare-fun e!2682766 () Bool)

(assert (=> b!4313155 (= e!2682763 e!2682766)))

(declare-fun c!733312 () Bool)

(declare-fun lt!1533033 () tuple2!46814)

(assert (=> b!4313155 (= c!733312 (_1!26688 lt!1533033))))

(declare-fun lt!1533049 () SeekEntryResult!16)

(declare-fun c!733314 () Bool)

(declare-fun lt!1533039 () (_ BitVec 32))

(declare-fun call!298364 () ListLongMap!1065)

(declare-fun c!733324 () Bool)

(declare-fun bm!298337 () Bool)

(assert (=> bm!298337 (= call!298364 (getCurrentListMap!19 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (ite c!733314 (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (array!16947 (store (arr!7568 (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1443 lt!1533049) lt!1532739) (size!35607 (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (ite c!733314 (ite c!733324 (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1533039) (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (ite c!733314 (ite c!733324 (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1532739) (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) #b00000000000000000000000000000000 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(declare-fun b!4313156 () Bool)

(declare-fun e!2682762 () Bool)

(declare-fun lt!1533024 () SeekEntryResult!16)

(assert (=> b!4313156 (= e!2682762 ((_ is Undefined!16) lt!1533024))))

(declare-fun bm!298338 () Bool)

(declare-fun c!733313 () Bool)

(declare-fun c!733316 () Bool)

(assert (=> bm!298338 (= c!733313 c!733316)))

(declare-fun call!298344 () Bool)

(declare-fun e!2682758 () ListLongMap!1065)

(assert (=> bm!298338 (= call!298344 (contains!10235 e!2682758 (ite c!733316 lt!1532744 (select (arr!7567 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1443 lt!1533049)))))))

(declare-fun bm!298339 () Bool)

(declare-fun call!298350 () Bool)

(declare-fun call!298351 () Bool)

(assert (=> bm!298339 (= call!298350 call!298351)))

(declare-fun lt!1533040 () array!16946)

(declare-fun bm!298340 () Bool)

(declare-fun lt!1533031 () (_ BitVec 32))

(assert (=> bm!298340 (= call!298342 (getCurrentListMap!19 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (ite c!733314 (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1533040) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (ite (and c!733314 c!733324) lt!1533031 (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (ite (and c!733314 c!733324) lt!1532739 (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) #b00000000000000000000000000000000 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(declare-fun b!4313157 () Bool)

(declare-fun e!2682754 () Unit!67411)

(declare-fun lt!1533046 () Unit!67411)

(assert (=> b!4313157 (= e!2682754 lt!1533046)))

(declare-fun call!298359 () Unit!67411)

(assert (=> b!4313157 (= lt!1533046 call!298359)))

(declare-fun call!298360 () SeekEntryResult!16)

(assert (=> b!4313157 (= lt!1533026 call!298360)))

(declare-fun res!1767720 () Bool)

(assert (=> b!4313157 (= res!1767720 ((_ is Found!16) lt!1533026))))

(assert (=> b!4313157 (=> (not res!1767720) (not e!2682773))))

(assert (=> b!4313157 e!2682773))

(declare-fun call!298348 () ListLongMap!1065)

(declare-fun call!298356 () ListLongMap!1065)

(declare-fun bm!298341 () Bool)

(declare-fun call!298341 () ListLongMap!1065)

(assert (=> bm!298341 (= call!298348 (+!283 (ite c!733314 (ite c!733324 call!298341 call!298354) call!298356) (ite c!733314 (ite c!733324 (tuple2!46811 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1532739) (tuple2!46811 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1532739)) (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun bm!298342 () Bool)

(declare-fun call!298343 () ListLongMap!1065)

(assert (=> bm!298342 (= call!298343 call!298348)))

(declare-fun bm!298343 () Bool)

(declare-fun call!298346 () Bool)

(declare-fun call!298349 () Bool)

(assert (=> bm!298343 (= call!298346 call!298349)))

(declare-fun bm!298344 () Bool)

(assert (=> bm!298344 (= call!298351 (arrayContainsKey!0 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1532744 #b00000000000000000000000000000000))))

(declare-fun b!4313158 () Bool)

(assert (=> b!4313158 (= e!2682758 call!298342)))

(declare-fun b!4313159 () Bool)

(declare-fun c!733320 () Bool)

(declare-fun lt!1533042 () SeekEntryResult!16)

(assert (=> b!4313159 (= c!733320 ((_ is MissingVacant!16) lt!1533042))))

(declare-fun e!2682760 () Bool)

(declare-fun e!2682755 () Bool)

(assert (=> b!4313159 (= e!2682760 e!2682755)))

(declare-fun bm!298345 () Bool)

(declare-fun call!298353 () Bool)

(assert (=> bm!298345 (= call!298353 call!298349)))

(declare-fun bm!298346 () Bool)

(declare-fun c!733315 () Bool)

(declare-fun lt!1533025 () SeekEntryResult!16)

(declare-fun c!733317 () Bool)

(declare-fun c!733318 () Bool)

(declare-fun c!733319 () Bool)

(assert (=> bm!298346 (= call!298349 (inRange!0 (ite c!733316 (ite c!733315 (index!1443 lt!1533025) (ite c!733319 (index!1444 lt!1533042) (index!1445 lt!1533042))) (ite c!733317 (index!1443 lt!1533026) (ite c!733318 (index!1444 lt!1533024) (index!1445 lt!1533024)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(declare-fun b!4313160 () Bool)

(declare-fun e!2682768 () tuple2!46814)

(declare-fun lt!1533037 () tuple2!46814)

(assert (=> b!4313160 (= e!2682768 (tuple2!46815 (_1!26688 lt!1533037) (_2!26688 lt!1533037)))))

(declare-fun call!298355 () tuple2!46814)

(assert (=> b!4313160 (= lt!1533037 call!298355)))

(declare-fun b!4313161 () Bool)

(declare-fun e!2682765 () Bool)

(declare-fun call!298363 () Bool)

(assert (=> b!4313161 (= e!2682765 (not call!298363))))

(declare-fun b!4313162 () Bool)

(declare-fun e!2682761 () tuple2!46814)

(declare-fun e!2682771 () tuple2!46814)

(assert (=> b!4313162 (= e!2682761 e!2682771)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16944 (_ BitVec 32)) SeekEntryResult!16)

(assert (=> b!4313162 (= lt!1533049 (seekEntryOrOpen!0 lt!1532744 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(assert (=> b!4313162 (= c!733316 ((_ is Undefined!16) lt!1533049))))

(declare-fun b!4313163 () Bool)

(assert (=> b!4313163 (= e!2682758 call!298356)))

(declare-fun b!4313164 () Bool)

(declare-fun c!733322 () Bool)

(assert (=> b!4313164 (= c!733322 ((_ is MissingVacant!16) lt!1533049))))

(assert (=> b!4313164 (= e!2682771 e!2682768)))

(declare-fun bm!298347 () Bool)

(assert (=> bm!298347 (= call!298363 call!298351)))

(declare-fun b!4313165 () Bool)

(assert (=> b!4313165 (= e!2682755 ((_ is Undefined!16) lt!1533042))))

(declare-fun b!4313166 () Bool)

(declare-fun res!1767716 () Bool)

(assert (=> b!4313166 (= res!1767716 call!298353)))

(declare-fun e!2682753 () Bool)

(assert (=> b!4313166 (=> (not res!1767716) (not e!2682753))))

(declare-fun b!4313167 () Bool)

(declare-fun call!298347 () ListLongMap!1065)

(declare-fun e!2682772 () Bool)

(declare-fun call!298352 () ListLongMap!1065)

(assert (=> b!4313167 (= e!2682772 (= call!298352 (+!283 call!298347 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun bm!298348 () Bool)

(declare-fun call!298362 () SeekEntryResult!16)

(declare-fun call!298357 () SeekEntryResult!16)

(assert (=> bm!298348 (= call!298362 call!298357)))

(declare-fun bm!298349 () Bool)

(assert (=> bm!298349 (= call!298356 (getCurrentListMap!19 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) #b00000000000000000000000000000000 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(declare-fun b!4313168 () Bool)

(assert (=> b!4313168 (= e!2682766 e!2682772)))

(declare-fun res!1767722 () Bool)

(assert (=> b!4313168 (= res!1767722 (contains!10235 call!298352 lt!1532744))))

(assert (=> b!4313168 (=> (not res!1767722) (not e!2682772))))

(declare-fun b!4313169 () Bool)

(assert (=> b!4313169 (= e!2682753 (= (select (arr!7567 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1443 lt!1533025)) lt!1532744))))

(declare-fun bm!298350 () Bool)

(assert (=> bm!298350 (= call!298347 (map!10260 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))))))

(declare-fun b!4313170 () Bool)

(declare-fun res!1767721 () Bool)

(assert (=> b!4313170 (= res!1767721 (= (select (arr!7567 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1445 lt!1533024)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2682770 () Bool)

(assert (=> b!4313170 (=> (not res!1767721) (not e!2682770))))

(declare-fun b!4313171 () Bool)

(declare-fun e!2682769 () Unit!67411)

(declare-fun Unit!67424 () Unit!67411)

(assert (=> b!4313171 (= e!2682769 Unit!67424)))

(declare-fun lt!1533034 () Unit!67411)

(assert (=> b!4313171 (= lt!1533034 call!298359)))

(assert (=> b!4313171 (= lt!1533025 call!298362)))

(declare-fun res!1767714 () Bool)

(assert (=> b!4313171 (= res!1767714 ((_ is Found!16) lt!1533025))))

(assert (=> b!4313171 (=> (not res!1767714) (not e!2682753))))

(assert (=> b!4313171 e!2682753))

(declare-fun lt!1533038 () Unit!67411)

(assert (=> b!4313171 (= lt!1533038 lt!1533034)))

(assert (=> b!4313171 false))

(declare-fun b!4313172 () Bool)

(declare-fun e!2682759 () Bool)

(assert (=> b!4313172 (= e!2682759 (not call!298350))))

(declare-fun b!4313173 () Bool)

(assert (=> b!4313173 (= e!2682770 (not call!298363))))

(declare-fun b!4313174 () Bool)

(declare-fun res!1767712 () Bool)

(assert (=> b!4313174 (=> (not res!1767712) (not e!2682765))))

(declare-fun call!298361 () Bool)

(assert (=> b!4313174 (= res!1767712 call!298361)))

(declare-fun e!2682757 () Bool)

(assert (=> b!4313174 (= e!2682757 e!2682765)))

(declare-fun b!4313175 () Bool)

(declare-fun lt!1533045 () Unit!67411)

(assert (=> b!4313175 (= e!2682769 lt!1533045)))

(declare-fun call!298358 () Unit!67411)

(assert (=> b!4313175 (= lt!1533045 call!298358)))

(assert (=> b!4313175 (= lt!1533042 call!298362)))

(assert (=> b!4313175 (= c!733319 ((_ is MissingZero!16) lt!1533042))))

(assert (=> b!4313175 e!2682760))

(declare-fun b!4313176 () Bool)

(declare-fun e!2682756 () tuple2!46814)

(assert (=> b!4313176 (= e!2682768 e!2682756)))

(declare-fun c!733323 () Bool)

(assert (=> b!4313176 (= c!733323 ((_ is MissingZero!16) lt!1533049))))

(declare-fun bm!298351 () Bool)

(declare-fun call!298345 () Bool)

(assert (=> bm!298351 (= call!298345 call!298353)))

(declare-fun b!4313177 () Bool)

(declare-fun lt!1533041 () Unit!67411)

(assert (=> b!4313177 (= lt!1533041 e!2682769)))

(assert (=> b!4313177 (= c!733315 call!298344)))

(assert (=> b!4313177 (= e!2682771 (tuple2!46815 false (v!42458 (underlying!9611 (_2!26687 lt!1532756)))))))

(declare-fun b!4313178 () Bool)

(declare-fun lt!1533043 () Unit!67411)

(declare-fun lt!1533035 () Unit!67411)

(assert (=> b!4313178 (= lt!1533043 lt!1533035)))

(assert (=> b!4313178 (= call!298343 call!298341)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!6 (array!16944 array!16946 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48375 List!48375 List!48375 Int) Unit!67411)

(assert (=> b!4313178 (= lt!1533035 (lemmaChangeLongMinValueKeyThenAddPairToListMap!6 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1533039 (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1532739 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(assert (=> b!4313178 (= lt!1533039 (bvor (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) #b00000000000000000000000000000010))))

(declare-fun e!2682764 () tuple2!46814)

(assert (=> b!4313178 (= e!2682764 (tuple2!46815 true (LongMapFixedSize!9383 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (bvor (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) #b00000000000000000000000000000010) (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1532739 (_size!9425 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_vacant!4752 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))))))))

(declare-fun b!4313179 () Bool)

(declare-fun Unit!67425 () Unit!67411)

(assert (=> b!4313179 (= e!2682754 Unit!67425)))

(declare-fun lt!1533036 () Unit!67411)

(assert (=> b!4313179 (= lt!1533036 call!298358)))

(assert (=> b!4313179 (= lt!1533024 call!298360)))

(assert (=> b!4313179 (= c!733318 ((_ is MissingZero!16) lt!1533024))))

(assert (=> b!4313179 e!2682757))

(declare-fun lt!1533023 () Unit!67411)

(assert (=> b!4313179 (= lt!1533023 lt!1533036)))

(assert (=> b!4313179 false))

(declare-fun b!4313180 () Bool)

(assert (=> b!4313180 (= e!2682762 e!2682770)))

(declare-fun res!1767719 () Bool)

(assert (=> b!4313180 (= res!1767719 call!298361)))

(assert (=> b!4313180 (=> (not res!1767719) (not e!2682770))))

(declare-fun b!4313181 () Bool)

(declare-fun res!1767725 () Bool)

(assert (=> b!4313181 (= res!1767725 (= (select (arr!7567 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1445 lt!1533042)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2682767 () Bool)

(assert (=> b!4313181 (=> (not res!1767725) (not e!2682767))))

(declare-fun b!4313182 () Bool)

(assert (=> b!4313182 (= e!2682755 e!2682767)))

(declare-fun res!1767718 () Bool)

(assert (=> b!4313182 (= res!1767718 call!298345)))

(assert (=> b!4313182 (=> (not res!1767718) (not e!2682767))))

(declare-fun b!4313183 () Bool)

(declare-fun lt!1533027 () Unit!67411)

(declare-fun lt!1533044 () Unit!67411)

(assert (=> b!4313183 (= lt!1533027 lt!1533044)))

(assert (=> b!4313183 call!298344))

(assert (=> b!4313183 (= lt!1533044 (lemmaValidKeyInArrayIsInListMap!9 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1533040 (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (index!1443 lt!1533049) (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(assert (=> b!4313183 (= lt!1533040 (array!16947 (store (arr!7568 (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1443 lt!1533049) lt!1532739) (size!35607 (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))))))))

(declare-fun lt!1533047 () Unit!67411)

(declare-fun lt!1533048 () Unit!67411)

(assert (=> b!4313183 (= lt!1533047 lt!1533048)))

(assert (=> b!4313183 (= call!298348 call!298364)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!6 (array!16944 array!16946 (_ BitVec 32) (_ BitVec 32) List!48375 List!48375 (_ BitVec 32) (_ BitVec 64) List!48375 Int) Unit!67411)

(assert (=> b!4313183 (= lt!1533048 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!6 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (index!1443 lt!1533049) lt!1532744 lt!1532739 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(declare-fun lt!1533029 () Unit!67411)

(assert (=> b!4313183 (= lt!1533029 e!2682754)))

(assert (=> b!4313183 (= c!733317 (contains!10235 call!298356 lt!1532744))))

(assert (=> b!4313183 (= e!2682756 (tuple2!46815 true (LongMapFixedSize!9383 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_size!9425 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (array!16947 (store (arr!7568 (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1443 lt!1533049) lt!1532739) (size!35607 (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))))) (_vacant!4752 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))))))))

(declare-fun bm!298352 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!6 (array!16944 array!16946 (_ BitVec 32) (_ BitVec 32) List!48375 List!48375 (_ BitVec 64) Int) Unit!67411)

(assert (=> bm!298352 (= call!298359 (lemmaInListMapThenSeekEntryOrOpenFindsIt!6 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1532744 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(declare-fun d!1268614 () Bool)

(assert (=> d!1268614 e!2682763))

(declare-fun res!1767723 () Bool)

(assert (=> d!1268614 (=> (not res!1767723) (not e!2682763))))

(assert (=> d!1268614 (= res!1767723 (valid!3687 (_2!26688 lt!1533033)))))

(assert (=> d!1268614 (= lt!1533033 e!2682761)))

(assert (=> d!1268614 (= c!733314 (= lt!1532744 (bvneg lt!1532744)))))

(assert (=> d!1268614 (valid!3687 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))

(assert (=> d!1268614 (= (update!466 (v!42458 (underlying!9611 (_2!26687 lt!1532756))) lt!1532744 lt!1532739) lt!1533033)))

(declare-fun b!4313184 () Bool)

(declare-fun res!1767717 () Bool)

(assert (=> b!4313184 (=> (not res!1767717) (not e!2682759))))

(assert (=> b!4313184 (= res!1767717 (= (select (arr!7567 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1444 lt!1533042)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4313185 () Bool)

(declare-fun lt!1533030 () Unit!67411)

(declare-fun lt!1533028 () Unit!67411)

(assert (=> b!4313185 (= lt!1533030 lt!1533028)))

(assert (=> b!4313185 (= call!298343 call!298354)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!6 (array!16944 array!16946 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48375 List!48375 List!48375 Int) Unit!67411)

(assert (=> b!4313185 (= lt!1533028 (lemmaChangeZeroKeyThenAddPairToListMap!6 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1533031 (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1532739 (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(assert (=> b!4313185 (= lt!1533031 (bvor (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) #b00000000000000000000000000000001))))

(assert (=> b!4313185 (= e!2682764 (tuple2!46815 true (LongMapFixedSize!9383 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (bvor (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) #b00000000000000000000000000000001) lt!1532739 (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_size!9425 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_vacant!4752 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))))))))

(declare-fun bm!298353 () Bool)

(assert (=> bm!298353 (= call!298360 call!298357)))

(declare-fun b!4313186 () Bool)

(assert (=> b!4313186 (= e!2682767 (not call!298350))))

(declare-fun b!4313187 () Bool)

(declare-fun res!1767724 () Bool)

(assert (=> b!4313187 (=> (not res!1767724) (not e!2682765))))

(assert (=> b!4313187 (= res!1767724 (= (select (arr!7567 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))) (index!1444 lt!1533024)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4313188 () Bool)

(declare-fun res!1767715 () Bool)

(assert (=> b!4313188 (=> (not res!1767715) (not e!2682759))))

(assert (=> b!4313188 (= res!1767715 call!298345)))

(assert (=> b!4313188 (= e!2682760 e!2682759)))

(declare-fun b!4313189 () Bool)

(assert (=> b!4313189 (= e!2682766 (= call!298352 call!298347))))

(declare-fun bm!298354 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!6 (array!16944 array!16946 (_ BitVec 32) (_ BitVec 32) List!48375 List!48375 (_ BitVec 64) Int) Unit!67411)

(assert (=> bm!298354 (= call!298358 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!6 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (_values!4972 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (extraKeys!4940 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (zeroValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (minValue!4950 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) lt!1532744 (defaultEntry!5076 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(declare-fun bm!298355 () Bool)

(declare-fun updateHelperNewKey!6 (LongMapFixedSize!9382 (_ BitVec 64) List!48375 (_ BitVec 32)) tuple2!46814)

(assert (=> bm!298355 (= call!298355 (updateHelperNewKey!6 (v!42458 (underlying!9611 (_2!26687 lt!1532756))) lt!1532744 lt!1532739 (ite c!733322 (index!1445 lt!1533049) (index!1444 lt!1533049))))))

(declare-fun bm!298356 () Bool)

(assert (=> bm!298356 (= call!298357 (seekEntryOrOpen!0 lt!1532744 (_keys!4991 (v!42458 (underlying!9611 (_2!26687 lt!1532756)))) (mask!13265 (v!42458 (underlying!9611 (_2!26687 lt!1532756))))))))

(declare-fun b!4313190 () Bool)

(declare-fun res!1767713 () Bool)

(assert (=> b!4313190 (= res!1767713 call!298346)))

(assert (=> b!4313190 (=> (not res!1767713) (not e!2682773))))

(declare-fun b!4313191 () Bool)

(declare-fun lt!1533032 () tuple2!46814)

(assert (=> b!4313191 (= lt!1533032 call!298355)))

(assert (=> b!4313191 (= e!2682756 (tuple2!46815 (_1!26688 lt!1533032) (_2!26688 lt!1533032)))))

(declare-fun b!4313192 () Bool)

(declare-fun c!733321 () Bool)

(assert (=> b!4313192 (= c!733321 ((_ is MissingVacant!16) lt!1533024))))

(assert (=> b!4313192 (= e!2682757 e!2682762)))

(declare-fun bm!298357 () Bool)

(assert (=> bm!298357 (= call!298361 call!298346)))

(declare-fun b!4313193 () Bool)

(assert (=> b!4313193 (= e!2682761 e!2682764)))

(assert (=> b!4313193 (= c!733324 (= lt!1532744 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!298358 () Bool)

(assert (=> bm!298358 (= call!298352 (map!10260 (_2!26688 lt!1533033)))))

(declare-fun bm!298359 () Bool)

(assert (=> bm!298359 (= call!298341 call!298364)))

(assert (= (and d!1268614 c!733314) b!4313193))

(assert (= (and d!1268614 (not c!733314)) b!4313162))

(assert (= (and b!4313193 c!733324) b!4313185))

(assert (= (and b!4313193 (not c!733324)) b!4313178))

(assert (= (or b!4313185 b!4313178) bm!298359))

(assert (= (or b!4313185 b!4313178) bm!298336))

(assert (= (or b!4313185 b!4313178) bm!298342))

(assert (= (and b!4313162 c!733316) b!4313177))

(assert (= (and b!4313162 (not c!733316)) b!4313164))

(assert (= (and b!4313177 c!733315) b!4313171))

(assert (= (and b!4313177 (not c!733315)) b!4313175))

(assert (= (and b!4313171 res!1767714) b!4313166))

(assert (= (and b!4313166 res!1767716) b!4313169))

(assert (= (and b!4313175 c!733319) b!4313188))

(assert (= (and b!4313175 (not c!733319)) b!4313159))

(assert (= (and b!4313188 res!1767715) b!4313184))

(assert (= (and b!4313184 res!1767717) b!4313172))

(assert (= (and b!4313159 c!733320) b!4313182))

(assert (= (and b!4313159 (not c!733320)) b!4313165))

(assert (= (and b!4313182 res!1767718) b!4313181))

(assert (= (and b!4313181 res!1767725) b!4313186))

(assert (= (or b!4313172 b!4313186) bm!298339))

(assert (= (or b!4313188 b!4313182) bm!298351))

(assert (= (or b!4313166 bm!298351) bm!298345))

(assert (= (or b!4313171 b!4313175) bm!298348))

(assert (= (and b!4313164 c!733322) b!4313160))

(assert (= (and b!4313164 (not c!733322)) b!4313176))

(assert (= (and b!4313176 c!733323) b!4313191))

(assert (= (and b!4313176 (not c!733323)) b!4313183))

(assert (= (and b!4313183 c!733317) b!4313157))

(assert (= (and b!4313183 (not c!733317)) b!4313179))

(assert (= (and b!4313157 res!1767720) b!4313190))

(assert (= (and b!4313190 res!1767713) b!4313154))

(assert (= (and b!4313179 c!733318) b!4313174))

(assert (= (and b!4313179 (not c!733318)) b!4313192))

(assert (= (and b!4313174 res!1767712) b!4313187))

(assert (= (and b!4313187 res!1767724) b!4313161))

(assert (= (and b!4313192 c!733321) b!4313180))

(assert (= (and b!4313192 (not c!733321)) b!4313156))

(assert (= (and b!4313180 res!1767719) b!4313170))

(assert (= (and b!4313170 res!1767721) b!4313173))

(assert (= (or b!4313161 b!4313173) bm!298347))

(assert (= (or b!4313174 b!4313180) bm!298357))

(assert (= (or b!4313190 bm!298357) bm!298343))

(assert (= (or b!4313157 b!4313179) bm!298353))

(assert (= (or b!4313160 b!4313191) bm!298355))

(assert (= (or bm!298345 bm!298343) bm!298346))

(assert (= (or bm!298339 bm!298347) bm!298344))

(assert (= (or b!4313177 b!4313183) bm!298349))

(assert (= (or b!4313175 b!4313179) bm!298354))

(assert (= (or bm!298348 bm!298353) bm!298356))

(assert (= (or b!4313171 b!4313157) bm!298352))

(assert (= (or b!4313177 b!4313183) bm!298338))

(assert (= (and bm!298338 c!733313) b!4313163))

(assert (= (and bm!298338 (not c!733313)) b!4313158))

(assert (= (or bm!298359 b!4313183) bm!298337))

(assert (= (or bm!298336 b!4313158) bm!298340))

(assert (= (or bm!298342 b!4313183) bm!298341))

(assert (= (and d!1268614 res!1767723) b!4313155))

(assert (= (and b!4313155 c!733312) b!4313168))

(assert (= (and b!4313155 (not c!733312)) b!4313189))

(assert (= (and b!4313168 res!1767722) b!4313167))

(assert (= (or b!4313167 b!4313189) bm!298350))

(assert (= (or b!4313168 b!4313167 b!4313189) bm!298358))

(declare-fun m!4906185 () Bool)

(assert (=> b!4313181 m!4906185))

(declare-fun m!4906187 () Bool)

(assert (=> b!4313184 m!4906187))

(declare-fun m!4906189 () Bool)

(assert (=> b!4313187 m!4906189))

(declare-fun m!4906191 () Bool)

(assert (=> bm!298346 m!4906191))

(declare-fun m!4906193 () Bool)

(assert (=> b!4313170 m!4906193))

(declare-fun m!4906195 () Bool)

(assert (=> b!4313162 m!4906195))

(declare-fun m!4906197 () Bool)

(assert (=> bm!298344 m!4906197))

(assert (=> bm!298356 m!4906195))

(declare-fun m!4906199 () Bool)

(assert (=> bm!298358 m!4906199))

(declare-fun m!4906201 () Bool)

(assert (=> bm!298349 m!4906201))

(declare-fun m!4906203 () Bool)

(assert (=> bm!298350 m!4906203))

(declare-fun m!4906205 () Bool)

(assert (=> bm!298337 m!4906205))

(declare-fun m!4906207 () Bool)

(assert (=> bm!298337 m!4906207))

(declare-fun m!4906209 () Bool)

(assert (=> b!4313154 m!4906209))

(declare-fun m!4906211 () Bool)

(assert (=> b!4313178 m!4906211))

(declare-fun m!4906213 () Bool)

(assert (=> bm!298340 m!4906213))

(declare-fun m!4906215 () Bool)

(assert (=> b!4313185 m!4906215))

(declare-fun m!4906217 () Bool)

(assert (=> bm!298354 m!4906217))

(declare-fun m!4906219 () Bool)

(assert (=> bm!298355 m!4906219))

(declare-fun m!4906221 () Bool)

(assert (=> bm!298338 m!4906221))

(declare-fun m!4906223 () Bool)

(assert (=> bm!298338 m!4906223))

(declare-fun m!4906225 () Bool)

(assert (=> d!1268614 m!4906225))

(declare-fun m!4906227 () Bool)

(assert (=> d!1268614 m!4906227))

(declare-fun m!4906229 () Bool)

(assert (=> b!4313169 m!4906229))

(declare-fun m!4906231 () Bool)

(assert (=> b!4313183 m!4906231))

(assert (=> b!4313183 m!4906205))

(declare-fun m!4906233 () Bool)

(assert (=> b!4313183 m!4906233))

(declare-fun m!4906235 () Bool)

(assert (=> b!4313183 m!4906235))

(declare-fun m!4906237 () Bool)

(assert (=> bm!298341 m!4906237))

(declare-fun m!4906239 () Bool)

(assert (=> b!4313167 m!4906239))

(declare-fun m!4906241 () Bool)

(assert (=> b!4313168 m!4906241))

(declare-fun m!4906243 () Bool)

(assert (=> bm!298352 m!4906243))

(assert (=> b!4312826 d!1268614))

(declare-fun d!1268616 () Bool)

(assert (=> d!1268616 (= (map!10258 (_2!26687 lt!1532755)) (map!10260 (v!42458 (underlying!9611 (_2!26687 lt!1532755)))))))

(declare-fun bs!605375 () Bool)

(assert (= bs!605375 d!1268616))

(declare-fun m!4906245 () Bool)

(assert (=> bs!605375 m!4906245))

(assert (=> bm!298239 d!1268616))

(declare-fun d!1268618 () Bool)

(assert (=> d!1268618 (isDefined!7550 (getValueByKey!265 lt!1532836 lt!1532850))))

(declare-fun lt!1533052 () Unit!67411)

(declare-fun choose!26293 (List!48376 (_ BitVec 64)) Unit!67411)

(assert (=> d!1268618 (= lt!1533052 (choose!26293 lt!1532836 lt!1532850))))

(declare-fun e!2682776 () Bool)

(assert (=> d!1268618 e!2682776))

(declare-fun res!1767728 () Bool)

(assert (=> d!1268618 (=> (not res!1767728) (not e!2682776))))

(declare-fun isStrictlySorted!15 (List!48376) Bool)

(assert (=> d!1268618 (= res!1767728 (isStrictlySorted!15 lt!1532836))))

(assert (=> d!1268618 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!185 lt!1532836 lt!1532850) lt!1533052)))

(declare-fun b!4313196 () Bool)

(assert (=> b!4313196 (= e!2682776 (containsKey!341 lt!1532836 lt!1532850))))

(assert (= (and d!1268618 res!1767728) b!4313196))

(assert (=> d!1268618 m!4905991))

(assert (=> d!1268618 m!4905991))

(assert (=> d!1268618 m!4905993))

(declare-fun m!4906247 () Bool)

(assert (=> d!1268618 m!4906247))

(declare-fun m!4906249 () Bool)

(assert (=> d!1268618 m!4906249))

(declare-fun m!4906251 () Bool)

(assert (=> b!4313196 m!4906251))

(assert (=> b!4312897 d!1268618))

(declare-fun d!1268620 () Bool)

(declare-fun res!1767733 () Bool)

(declare-fun e!2682781 () Bool)

(assert (=> d!1268620 (=> res!1767733 e!2682781)))

(assert (=> d!1268620 (= res!1767733 (and ((_ is Cons!48252) lt!1532844) (= (_1!26686 (h!53696 lt!1532844)) lt!1532850)))))

(assert (=> d!1268620 (= (containsKey!341 lt!1532844 lt!1532850) e!2682781)))

(declare-fun b!4313201 () Bool)

(declare-fun e!2682782 () Bool)

(assert (=> b!4313201 (= e!2682781 e!2682782)))

(declare-fun res!1767734 () Bool)

(assert (=> b!4313201 (=> (not res!1767734) (not e!2682782))))

(assert (=> b!4313201 (= res!1767734 (and (or (not ((_ is Cons!48252) lt!1532844)) (bvsle (_1!26686 (h!53696 lt!1532844)) lt!1532850)) ((_ is Cons!48252) lt!1532844) (bvslt (_1!26686 (h!53696 lt!1532844)) lt!1532850)))))

(declare-fun b!4313202 () Bool)

(assert (=> b!4313202 (= e!2682782 (containsKey!341 (t!355203 lt!1532844) lt!1532850))))

(assert (= (and d!1268620 (not res!1767733)) b!4313201))

(assert (= (and b!4313201 res!1767734) b!4313202))

(declare-fun m!4906253 () Bool)

(assert (=> b!4313202 m!4906253))

(assert (=> b!4312897 d!1268620))

(declare-fun d!1268622 () Bool)

(declare-fun e!2682783 () Bool)

(assert (=> d!1268622 e!2682783))

(declare-fun c!733325 () Bool)

(assert (=> d!1268622 (= c!733325 (contains!10236 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))

(declare-fun lt!1533053 () List!48375)

(assert (=> d!1268622 (= lt!1533053 (apply!11054 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))) lt!1532850))))

(assert (=> d!1268622 (valid!3686 (v!42459 (underlying!9612 thiss!42308)))))

(assert (=> d!1268622 (= (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850) lt!1533053)))

(declare-fun b!4313203 () Bool)

(assert (=> b!4313203 (= e!2682783 (= lt!1533053 (get!15619 (getValueByKey!265 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lt!1532850))))))

(declare-fun b!4313204 () Bool)

(assert (=> b!4313204 (= e!2682783 (= lt!1533053 (dynLambda!20453 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532850)))))

(assert (=> b!4313204 ((_ is LongMap!4691) (v!42459 (underlying!9612 thiss!42308)))))

(assert (= (and d!1268622 c!733325) b!4313203))

(assert (= (and d!1268622 (not c!733325)) b!4313204))

(declare-fun b_lambda!126761 () Bool)

(assert (=> (not b_lambda!126761) (not b!4313204)))

(declare-fun t!355207 () Bool)

(declare-fun tb!257315 () Bool)

(assert (=> (and b!4312799 (= (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))) t!355207) tb!257315))

(assert (=> b!4313204 t!355207))

(declare-fun result!314752 () Bool)

(declare-fun b_and!340189 () Bool)

(assert (= b_and!340187 (and (=> t!355207 result!314752) b_and!340189)))

(assert (=> d!1268622 m!4906011))

(declare-fun m!4906255 () Bool)

(assert (=> d!1268622 m!4906255))

(assert (=> d!1268622 m!4905903))

(assert (=> b!4313203 m!4905867))

(declare-fun m!4906257 () Bool)

(assert (=> b!4313203 m!4906257))

(assert (=> b!4313203 m!4906257))

(declare-fun m!4906259 () Bool)

(assert (=> b!4313203 m!4906259))

(declare-fun m!4906261 () Bool)

(assert (=> b!4313204 m!4906261))

(assert (=> b!4312897 d!1268622))

(declare-fun d!1268624 () Bool)

(assert (=> d!1268624 (containsKey!341 lt!1532844 lt!1532850)))

(declare-fun lt!1533056 () Unit!67411)

(declare-fun choose!26294 (List!48376 (_ BitVec 64)) Unit!67411)

(assert (=> d!1268624 (= lt!1533056 (choose!26294 lt!1532844 lt!1532850))))

(declare-fun e!2682786 () Bool)

(assert (=> d!1268624 e!2682786))

(declare-fun res!1767737 () Bool)

(assert (=> d!1268624 (=> (not res!1767737) (not e!2682786))))

(assert (=> d!1268624 (= res!1767737 (isStrictlySorted!15 lt!1532844))))

(assert (=> d!1268624 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!143 lt!1532844 lt!1532850) lt!1533056)))

(declare-fun b!4313207 () Bool)

(assert (=> b!4313207 (= e!2682786 (isDefined!7550 (getValueByKey!265 lt!1532844 lt!1532850)))))

(assert (= (and d!1268624 res!1767737) b!4313207))

(assert (=> d!1268624 m!4905995))

(declare-fun m!4906263 () Bool)

(assert (=> d!1268624 m!4906263))

(declare-fun m!4906265 () Bool)

(assert (=> d!1268624 m!4906265))

(declare-fun m!4906267 () Bool)

(assert (=> b!4313207 m!4906267))

(assert (=> b!4313207 m!4906267))

(declare-fun m!4906269 () Bool)

(assert (=> b!4313207 m!4906269))

(assert (=> b!4312897 d!1268624))

(declare-fun b!4313219 () Bool)

(declare-fun e!2682792 () Option!10248)

(assert (=> b!4313219 (= e!2682792 None!10247)))

(declare-fun d!1268626 () Bool)

(declare-fun c!733330 () Bool)

(assert (=> d!1268626 (= c!733330 (and ((_ is Cons!48252) lt!1532836) (= (_1!26686 (h!53696 lt!1532836)) lt!1532850)))))

(declare-fun e!2682791 () Option!10248)

(assert (=> d!1268626 (= (getValueByKey!265 lt!1532836 lt!1532850) e!2682791)))

(declare-fun b!4313216 () Bool)

(assert (=> b!4313216 (= e!2682791 (Some!10247 (_2!26686 (h!53696 lt!1532836))))))

(declare-fun b!4313218 () Bool)

(assert (=> b!4313218 (= e!2682792 (getValueByKey!265 (t!355203 lt!1532836) lt!1532850))))

(declare-fun b!4313217 () Bool)

(assert (=> b!4313217 (= e!2682791 e!2682792)))

(declare-fun c!733331 () Bool)

(assert (=> b!4313217 (= c!733331 (and ((_ is Cons!48252) lt!1532836) (not (= (_1!26686 (h!53696 lt!1532836)) lt!1532850))))))

(assert (= (and d!1268626 c!733330) b!4313216))

(assert (= (and d!1268626 (not c!733330)) b!4313217))

(assert (= (and b!4313217 c!733331) b!4313218))

(assert (= (and b!4313217 (not c!733331)) b!4313219))

(declare-fun m!4906271 () Bool)

(assert (=> b!4313218 m!4906271))

(assert (=> b!4312897 d!1268626))

(declare-fun d!1268628 () Bool)

(assert (=> d!1268628 (contains!10237 lt!1532851 (tuple2!46811 lt!1532850 lt!1532848))))

(declare-fun lt!1533059 () Unit!67411)

(declare-fun choose!26295 (List!48376 (_ BitVec 64) List!48375) Unit!67411)

(assert (=> d!1268628 (= lt!1533059 (choose!26295 lt!1532851 lt!1532850 lt!1532848))))

(declare-fun e!2682795 () Bool)

(assert (=> d!1268628 e!2682795))

(declare-fun res!1767740 () Bool)

(assert (=> d!1268628 (=> (not res!1767740) (not e!2682795))))

(assert (=> d!1268628 (= res!1767740 (isStrictlySorted!15 lt!1532851))))

(assert (=> d!1268628 (= (lemmaGetValueByKeyImpliesContainsTuple!153 lt!1532851 lt!1532850 lt!1532848) lt!1533059)))

(declare-fun b!4313222 () Bool)

(assert (=> b!4313222 (= e!2682795 (= (getValueByKey!265 lt!1532851 lt!1532850) (Some!10247 lt!1532848)))))

(assert (= (and d!1268628 res!1767740) b!4313222))

(assert (=> d!1268628 m!4906003))

(declare-fun m!4906273 () Bool)

(assert (=> d!1268628 m!4906273))

(declare-fun m!4906275 () Bool)

(assert (=> d!1268628 m!4906275))

(declare-fun m!4906277 () Bool)

(assert (=> b!4313222 m!4906277))

(assert (=> b!4312897 d!1268628))

(assert (=> b!4312897 d!1268572))

(declare-fun d!1268630 () Bool)

(declare-fun lt!1533062 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7557 (List!48376) (InoxSet tuple2!46810))

(assert (=> d!1268630 (= lt!1533062 (select (content!7557 lt!1532851) (tuple2!46811 lt!1532850 lt!1532848)))))

(declare-fun e!2682801 () Bool)

(assert (=> d!1268630 (= lt!1533062 e!2682801)))

(declare-fun res!1767746 () Bool)

(assert (=> d!1268630 (=> (not res!1767746) (not e!2682801))))

(assert (=> d!1268630 (= res!1767746 ((_ is Cons!48252) lt!1532851))))

(assert (=> d!1268630 (= (contains!10237 lt!1532851 (tuple2!46811 lt!1532850 lt!1532848)) lt!1533062)))

(declare-fun b!4313227 () Bool)

(declare-fun e!2682800 () Bool)

(assert (=> b!4313227 (= e!2682801 e!2682800)))

(declare-fun res!1767745 () Bool)

(assert (=> b!4313227 (=> res!1767745 e!2682800)))

(assert (=> b!4313227 (= res!1767745 (= (h!53696 lt!1532851) (tuple2!46811 lt!1532850 lt!1532848)))))

(declare-fun b!4313228 () Bool)

(assert (=> b!4313228 (= e!2682800 (contains!10237 (t!355203 lt!1532851) (tuple2!46811 lt!1532850 lt!1532848)))))

(assert (= (and d!1268630 res!1767746) b!4313227))

(assert (= (and b!4313227 (not res!1767745)) b!4313228))

(declare-fun m!4906279 () Bool)

(assert (=> d!1268630 m!4906279))

(declare-fun m!4906281 () Bool)

(assert (=> d!1268630 m!4906281))

(declare-fun m!4906283 () Bool)

(assert (=> b!4313228 m!4906283))

(assert (=> b!4312897 d!1268630))

(declare-fun d!1268632 () Bool)

(declare-fun isEmpty!28089 (Option!10248) Bool)

(assert (=> d!1268632 (= (isDefined!7550 (getValueByKey!265 lt!1532836 lt!1532850)) (not (isEmpty!28089 (getValueByKey!265 lt!1532836 lt!1532850))))))

(declare-fun bs!605376 () Bool)

(assert (= bs!605376 d!1268632))

(assert (=> bs!605376 m!4905991))

(declare-fun m!4906285 () Bool)

(assert (=> bs!605376 m!4906285))

(assert (=> b!4312897 d!1268632))

(declare-fun d!1268634 () Bool)

(declare-fun res!1767747 () Bool)

(declare-fun e!2682802 () Bool)

(assert (=> d!1268634 (=> res!1767747 e!2682802)))

(assert (=> d!1268634 (= res!1767747 (not ((_ is Cons!48251) (t!355202 lt!1532746))))))

(assert (=> d!1268634 (= (noDuplicateKeys!233 (t!355202 lt!1532746)) e!2682802)))

(declare-fun b!4313229 () Bool)

(declare-fun e!2682803 () Bool)

(assert (=> b!4313229 (= e!2682802 e!2682803)))

(declare-fun res!1767748 () Bool)

(assert (=> b!4313229 (=> (not res!1767748) (not e!2682803))))

(assert (=> b!4313229 (= res!1767748 (not (containsKey!340 (t!355202 (t!355202 lt!1532746)) (_1!26685 (h!53695 (t!355202 lt!1532746))))))))

(declare-fun b!4313230 () Bool)

(assert (=> b!4313230 (= e!2682803 (noDuplicateKeys!233 (t!355202 (t!355202 lt!1532746))))))

(assert (= (and d!1268634 (not res!1767747)) b!4313229))

(assert (= (and b!4313229 res!1767748) b!4313230))

(declare-fun m!4906287 () Bool)

(assert (=> b!4313229 m!4906287))

(declare-fun m!4906289 () Bool)

(assert (=> b!4313230 m!4906289))

(assert (=> b!4312873 d!1268634))

(declare-fun d!1268636 () Bool)

(declare-fun res!1767749 () Bool)

(declare-fun e!2682804 () Bool)

(assert (=> d!1268636 (=> res!1767749 e!2682804)))

(assert (=> d!1268636 (= res!1767749 (not ((_ is Cons!48251) (removePairForKey!232 lt!1532735 key!2048))))))

(assert (=> d!1268636 (= (noDuplicateKeys!233 (removePairForKey!232 lt!1532735 key!2048)) e!2682804)))

(declare-fun b!4313231 () Bool)

(declare-fun e!2682805 () Bool)

(assert (=> b!4313231 (= e!2682804 e!2682805)))

(declare-fun res!1767750 () Bool)

(assert (=> b!4313231 (=> (not res!1767750) (not e!2682805))))

(assert (=> b!4313231 (= res!1767750 (not (containsKey!340 (t!355202 (removePairForKey!232 lt!1532735 key!2048)) (_1!26685 (h!53695 (removePairForKey!232 lt!1532735 key!2048))))))))

(declare-fun b!4313232 () Bool)

(assert (=> b!4313232 (= e!2682805 (noDuplicateKeys!233 (t!355202 (removePairForKey!232 lt!1532735 key!2048))))))

(assert (= (and d!1268636 (not res!1767749)) b!4313231))

(assert (= (and b!4313231 res!1767750) b!4313232))

(declare-fun m!4906291 () Bool)

(assert (=> b!4313231 m!4906291))

(declare-fun m!4906293 () Bool)

(assert (=> b!4313232 m!4906293))

(assert (=> d!1268562 d!1268636))

(assert (=> d!1268562 d!1268538))

(declare-fun d!1268638 () Bool)

(assert (=> d!1268638 (noDuplicateKeys!233 (removePairForKey!232 lt!1532735 key!2048))))

(assert (=> d!1268638 true))

(declare-fun _$23!163 () Unit!67411)

(assert (=> d!1268638 (= (choose!26290 lt!1532735 key!2048) _$23!163)))

(declare-fun bs!605377 () Bool)

(assert (= bs!605377 d!1268638))

(assert (=> bs!605377 m!4905847))

(assert (=> bs!605377 m!4905847))

(assert (=> bs!605377 m!4905971))

(assert (=> d!1268562 d!1268638))

(declare-fun d!1268640 () Bool)

(declare-fun res!1767751 () Bool)

(declare-fun e!2682806 () Bool)

(assert (=> d!1268640 (=> res!1767751 e!2682806)))

(assert (=> d!1268640 (= res!1767751 (not ((_ is Cons!48251) lt!1532735)))))

(assert (=> d!1268640 (= (noDuplicateKeys!233 lt!1532735) e!2682806)))

(declare-fun b!4313233 () Bool)

(declare-fun e!2682807 () Bool)

(assert (=> b!4313233 (= e!2682806 e!2682807)))

(declare-fun res!1767752 () Bool)

(assert (=> b!4313233 (=> (not res!1767752) (not e!2682807))))

(assert (=> b!4313233 (= res!1767752 (not (containsKey!340 (t!355202 lt!1532735) (_1!26685 (h!53695 lt!1532735)))))))

(declare-fun b!4313234 () Bool)

(assert (=> b!4313234 (= e!2682807 (noDuplicateKeys!233 (t!355202 lt!1532735)))))

(assert (= (and d!1268640 (not res!1767751)) b!4313233))

(assert (= (and b!4313233 res!1767752) b!4313234))

(declare-fun m!4906295 () Bool)

(assert (=> b!4313233 m!4906295))

(declare-fun m!4906297 () Bool)

(assert (=> b!4313234 m!4906297))

(assert (=> d!1268562 d!1268640))

(declare-fun d!1268642 () Bool)

(declare-fun res!1767753 () Bool)

(declare-fun e!2682808 () Bool)

(assert (=> d!1268642 (=> res!1767753 e!2682808)))

(assert (=> d!1268642 (= res!1767753 (and ((_ is Cons!48251) (t!355202 lt!1532746)) (= (_1!26685 (h!53695 (t!355202 lt!1532746))) (_1!26685 (h!53695 lt!1532746)))))))

(assert (=> d!1268642 (= (containsKey!340 (t!355202 lt!1532746) (_1!26685 (h!53695 lt!1532746))) e!2682808)))

(declare-fun b!4313235 () Bool)

(declare-fun e!2682809 () Bool)

(assert (=> b!4313235 (= e!2682808 e!2682809)))

(declare-fun res!1767754 () Bool)

(assert (=> b!4313235 (=> (not res!1767754) (not e!2682809))))

(assert (=> b!4313235 (= res!1767754 ((_ is Cons!48251) (t!355202 lt!1532746)))))

(declare-fun b!4313236 () Bool)

(assert (=> b!4313236 (= e!2682809 (containsKey!340 (t!355202 (t!355202 lt!1532746)) (_1!26685 (h!53695 lt!1532746))))))

(assert (= (and d!1268642 (not res!1767753)) b!4313235))

(assert (= (and b!4313235 res!1767754) b!4313236))

(declare-fun m!4906299 () Bool)

(assert (=> b!4313236 m!4906299))

(assert (=> b!4312872 d!1268642))

(declare-fun d!1268644 () Bool)

(assert (=> d!1268644 (= (apply!11055 (ite c!733232 lt!1532834 call!298263) call!298258) (get!15619 (getValueByKey!265 (toList!2452 (ite c!733232 lt!1532834 call!298263)) call!298258)))))

(declare-fun bs!605378 () Bool)

(assert (= bs!605378 d!1268644))

(declare-fun m!4906301 () Bool)

(assert (=> bs!605378 m!4906301))

(assert (=> bs!605378 m!4906301))

(declare-fun m!4906303 () Bool)

(assert (=> bs!605378 m!4906303))

(assert (=> bm!298253 d!1268644))

(declare-fun bs!605379 () Bool)

(declare-fun d!1268646 () Bool)

(assert (= bs!605379 (and d!1268646 d!1268532)))

(declare-fun lambda!133163 () Int)

(assert (=> bs!605379 (= lambda!133163 lambda!133135)))

(declare-fun bs!605380 () Bool)

(assert (= bs!605380 (and d!1268646 d!1268552)))

(assert (=> bs!605380 (= lambda!133163 lambda!133145)))

(declare-fun bs!605381 () Bool)

(assert (= bs!605381 (and d!1268646 d!1268566)))

(assert (=> bs!605381 (= lambda!133163 lambda!133149)))

(assert (=> d!1268646 true))

(assert (=> d!1268646 true))

(assert (=> d!1268646 (= (allKeysSameHash!206 (removePairForKey!232 lt!1532735 key!2048) lt!1532744 (hashF!6763 thiss!42308)) (forall!8757 (removePairForKey!232 lt!1532735 key!2048) lambda!133163))))

(declare-fun bs!605382 () Bool)

(assert (= bs!605382 d!1268646))

(assert (=> bs!605382 m!4905847))

(declare-fun m!4906305 () Bool)

(assert (=> bs!605382 m!4906305))

(assert (=> d!1268564 d!1268646))

(assert (=> d!1268564 d!1268538))

(declare-fun d!1268648 () Bool)

(assert (=> d!1268648 (allKeysSameHash!206 (removePairForKey!232 lt!1532735 key!2048) lt!1532744 (hashF!6763 thiss!42308))))

(assert (=> d!1268648 true))

(declare-fun _$20!122 () Unit!67411)

(assert (=> d!1268648 (= (choose!26291 lt!1532735 key!2048 lt!1532744 (hashF!6763 thiss!42308)) _$20!122)))

(declare-fun bs!605383 () Bool)

(assert (= bs!605383 d!1268648))

(assert (=> bs!605383 m!4905847))

(assert (=> bs!605383 m!4905847))

(assert (=> bs!605383 m!4905975))

(assert (=> d!1268564 d!1268648))

(assert (=> d!1268564 d!1268640))

(declare-fun d!1268650 () Bool)

(declare-fun lt!1533063 () List!48375)

(assert (=> d!1268650 (not (containsKey!340 lt!1533063 key!2048))))

(declare-fun e!2682811 () List!48375)

(assert (=> d!1268650 (= lt!1533063 e!2682811)))

(declare-fun c!733332 () Bool)

(assert (=> d!1268650 (= c!733332 (and ((_ is Cons!48251) (t!355202 lt!1532735)) (= (_1!26685 (h!53695 (t!355202 lt!1532735))) key!2048)))))

(assert (=> d!1268650 (noDuplicateKeys!233 (t!355202 lt!1532735))))

(assert (=> d!1268650 (= (removePairForKey!232 (t!355202 lt!1532735) key!2048) lt!1533063)))

(declare-fun b!4313240 () Bool)

(declare-fun e!2682810 () List!48375)

(assert (=> b!4313240 (= e!2682810 Nil!48251)))

(declare-fun b!4313237 () Bool)

(assert (=> b!4313237 (= e!2682811 (t!355202 (t!355202 lt!1532735)))))

(declare-fun b!4313238 () Bool)

(assert (=> b!4313238 (= e!2682811 e!2682810)))

(declare-fun c!733333 () Bool)

(assert (=> b!4313238 (= c!733333 ((_ is Cons!48251) (t!355202 lt!1532735)))))

(declare-fun b!4313239 () Bool)

(assert (=> b!4313239 (= e!2682810 (Cons!48251 (h!53695 (t!355202 lt!1532735)) (removePairForKey!232 (t!355202 (t!355202 lt!1532735)) key!2048)))))

(assert (= (and d!1268650 c!733332) b!4313237))

(assert (= (and d!1268650 (not c!733332)) b!4313238))

(assert (= (and b!4313238 c!733333) b!4313239))

(assert (= (and b!4313238 (not c!733333)) b!4313240))

(declare-fun m!4906307 () Bool)

(assert (=> d!1268650 m!4906307))

(assert (=> d!1268650 m!4906297))

(declare-fun m!4906309 () Bool)

(assert (=> b!4313239 m!4906309))

(assert (=> b!4312843 d!1268650))

(declare-fun d!1268652 () Bool)

(declare-fun res!1767755 () Bool)

(declare-fun e!2682812 () Bool)

(assert (=> d!1268652 (=> res!1767755 e!2682812)))

(assert (=> d!1268652 (= res!1767755 ((_ is Nil!48252) (t!355203 (toList!2452 lt!1532741))))))

(assert (=> d!1268652 (= (forall!8756 (t!355203 (toList!2452 lt!1532741)) lambda!133132) e!2682812)))

(declare-fun b!4313241 () Bool)

(declare-fun e!2682813 () Bool)

(assert (=> b!4313241 (= e!2682812 e!2682813)))

(declare-fun res!1767756 () Bool)

(assert (=> b!4313241 (=> (not res!1767756) (not e!2682813))))

(assert (=> b!4313241 (= res!1767756 (dynLambda!20454 lambda!133132 (h!53696 (t!355203 (toList!2452 lt!1532741)))))))

(declare-fun b!4313242 () Bool)

(assert (=> b!4313242 (= e!2682813 (forall!8756 (t!355203 (t!355203 (toList!2452 lt!1532741))) lambda!133132))))

(assert (= (and d!1268652 (not res!1767755)) b!4313241))

(assert (= (and b!4313241 res!1767756) b!4313242))

(declare-fun b_lambda!126763 () Bool)

(assert (=> (not b_lambda!126763) (not b!4313241)))

(declare-fun m!4906311 () Bool)

(assert (=> b!4313241 m!4906311))

(declare-fun m!4906313 () Bool)

(assert (=> b!4313242 m!4906313))

(assert (=> b!4312859 d!1268652))

(declare-fun d!1268654 () Bool)

(declare-fun e!2682814 () Bool)

(assert (=> d!1268654 e!2682814))

(declare-fun res!1767758 () Bool)

(assert (=> d!1268654 (=> (not res!1767758) (not e!2682814))))

(declare-fun lt!1533064 () ListLongMap!1065)

(assert (=> d!1268654 (= res!1767758 (contains!10235 lt!1533064 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun lt!1533067 () List!48376)

(assert (=> d!1268654 (= lt!1533064 (ListLongMap!1066 lt!1533067))))

(declare-fun lt!1533066 () Unit!67411)

(declare-fun lt!1533065 () Unit!67411)

(assert (=> d!1268654 (= lt!1533066 lt!1533065)))

(assert (=> d!1268654 (= (getValueByKey!265 lt!1533067 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))) (Some!10247 (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(assert (=> d!1268654 (= lt!1533065 (lemmaContainsTupThenGetReturnValue!78 lt!1533067 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(assert (=> d!1268654 (= lt!1533067 (insertStrictlySorted!42 (toList!2452 call!298244) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(assert (=> d!1268654 (= (+!283 call!298244 (tuple2!46811 lt!1532744 lt!1532739)) lt!1533064)))

(declare-fun b!4313243 () Bool)

(declare-fun res!1767757 () Bool)

(assert (=> b!4313243 (=> (not res!1767757) (not e!2682814))))

(assert (=> b!4313243 (= res!1767757 (= (getValueByKey!265 (toList!2452 lt!1533064) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))) (Some!10247 (_2!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(declare-fun b!4313244 () Bool)

(assert (=> b!4313244 (= e!2682814 (contains!10237 (toList!2452 lt!1533064) (tuple2!46811 lt!1532744 lt!1532739)))))

(assert (= (and d!1268654 res!1767758) b!4313243))

(assert (= (and b!4313243 res!1767757) b!4313244))

(declare-fun m!4906315 () Bool)

(assert (=> d!1268654 m!4906315))

(declare-fun m!4906317 () Bool)

(assert (=> d!1268654 m!4906317))

(declare-fun m!4906319 () Bool)

(assert (=> d!1268654 m!4906319))

(declare-fun m!4906321 () Bool)

(assert (=> d!1268654 m!4906321))

(declare-fun m!4906323 () Bool)

(assert (=> b!4313243 m!4906323))

(declare-fun m!4906325 () Bool)

(assert (=> b!4313244 m!4906325))

(assert (=> b!4312832 d!1268654))

(declare-fun d!1268656 () Bool)

(declare-fun res!1767759 () Bool)

(declare-fun e!2682815 () Bool)

(assert (=> d!1268656 (=> res!1767759 e!2682815)))

(assert (=> d!1268656 (= res!1767759 (not ((_ is Cons!48251) (_2!26686 (h!53696 (toList!2452 lt!1532737))))))))

(assert (=> d!1268656 (= (noDuplicateKeys!233 (_2!26686 (h!53696 (toList!2452 lt!1532737)))) e!2682815)))

(declare-fun b!4313245 () Bool)

(declare-fun e!2682816 () Bool)

(assert (=> b!4313245 (= e!2682815 e!2682816)))

(declare-fun res!1767760 () Bool)

(assert (=> b!4313245 (=> (not res!1767760) (not e!2682816))))

(assert (=> b!4313245 (= res!1767760 (not (containsKey!340 (t!355202 (_2!26686 (h!53696 (toList!2452 lt!1532737)))) (_1!26685 (h!53695 (_2!26686 (h!53696 (toList!2452 lt!1532737))))))))))

(declare-fun b!4313246 () Bool)

(assert (=> b!4313246 (= e!2682816 (noDuplicateKeys!233 (t!355202 (_2!26686 (h!53696 (toList!2452 lt!1532737))))))))

(assert (= (and d!1268656 (not res!1767759)) b!4313245))

(assert (= (and b!4313245 res!1767760) b!4313246))

(declare-fun m!4906327 () Bool)

(assert (=> b!4313245 m!4906327))

(declare-fun m!4906329 () Bool)

(assert (=> b!4313246 m!4906329))

(assert (=> bs!605343 d!1268656))

(assert (=> bm!298257 d!1268542))

(declare-fun d!1268658 () Bool)

(declare-fun res!1767765 () Bool)

(declare-fun e!2682821 () Bool)

(assert (=> d!1268658 (=> res!1767765 e!2682821)))

(assert (=> d!1268658 (= res!1767765 ((_ is Nil!48251) lt!1532746))))

(assert (=> d!1268658 (= (forall!8757 lt!1532746 lambda!133145) e!2682821)))

(declare-fun b!4313251 () Bool)

(declare-fun e!2682822 () Bool)

(assert (=> b!4313251 (= e!2682821 e!2682822)))

(declare-fun res!1767766 () Bool)

(assert (=> b!4313251 (=> (not res!1767766) (not e!2682822))))

(declare-fun dynLambda!20455 (Int tuple2!46808) Bool)

(assert (=> b!4313251 (= res!1767766 (dynLambda!20455 lambda!133145 (h!53695 lt!1532746)))))

(declare-fun b!4313252 () Bool)

(assert (=> b!4313252 (= e!2682822 (forall!8757 (t!355202 lt!1532746) lambda!133145))))

(assert (= (and d!1268658 (not res!1767765)) b!4313251))

(assert (= (and b!4313251 res!1767766) b!4313252))

(declare-fun b_lambda!126765 () Bool)

(assert (=> (not b_lambda!126765) (not b!4313251)))

(declare-fun m!4906331 () Bool)

(assert (=> b!4313251 m!4906331))

(declare-fun m!4906333 () Bool)

(assert (=> b!4313252 m!4906333))

(assert (=> d!1268552 d!1268658))

(declare-fun d!1268660 () Bool)

(declare-fun res!1767767 () Bool)

(declare-fun e!2682823 () Bool)

(assert (=> d!1268660 (=> res!1767767 e!2682823)))

(assert (=> d!1268660 (= res!1767767 ((_ is Nil!48251) lt!1532739))))

(assert (=> d!1268660 (= (forall!8757 lt!1532739 lambda!133135) e!2682823)))

(declare-fun b!4313253 () Bool)

(declare-fun e!2682824 () Bool)

(assert (=> b!4313253 (= e!2682823 e!2682824)))

(declare-fun res!1767768 () Bool)

(assert (=> b!4313253 (=> (not res!1767768) (not e!2682824))))

(assert (=> b!4313253 (= res!1767768 (dynLambda!20455 lambda!133135 (h!53695 lt!1532739)))))

(declare-fun b!4313254 () Bool)

(assert (=> b!4313254 (= e!2682824 (forall!8757 (t!355202 lt!1532739) lambda!133135))))

(assert (= (and d!1268660 (not res!1767767)) b!4313253))

(assert (= (and b!4313253 res!1767768) b!4313254))

(declare-fun b_lambda!126767 () Bool)

(assert (=> (not b_lambda!126767) (not b!4313253)))

(declare-fun m!4906335 () Bool)

(assert (=> b!4313253 m!4906335))

(declare-fun m!4906337 () Bool)

(assert (=> b!4313254 m!4906337))

(assert (=> d!1268532 d!1268660))

(declare-fun d!1268662 () Bool)

(declare-fun noDuplicatedKeys!98 (List!48375) Bool)

(assert (=> d!1268662 (= (invariantList!581 (toList!2453 lt!1532854)) (noDuplicatedKeys!98 (toList!2453 lt!1532854)))))

(declare-fun bs!605384 () Bool)

(assert (= bs!605384 d!1268662))

(declare-fun m!4906339 () Bool)

(assert (=> bs!605384 m!4906339))

(assert (=> d!1268574 d!1268662))

(assert (=> d!1268574 d!1268600))

(assert (=> d!1268574 d!1268572))

(assert (=> d!1268574 d!1268580))

(declare-fun b!4313258 () Bool)

(declare-fun e!2682826 () Option!10248)

(assert (=> b!4313258 (= e!2682826 None!10247)))

(declare-fun c!733334 () Bool)

(declare-fun d!1268664 () Bool)

(assert (=> d!1268664 (= c!733334 (and ((_ is Cons!48252) (toList!2452 lt!1532779)) (= (_1!26686 (h!53696 (toList!2452 lt!1532779))) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(declare-fun e!2682825 () Option!10248)

(assert (=> d!1268664 (= (getValueByKey!265 (toList!2452 lt!1532779) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))) e!2682825)))

(declare-fun b!4313255 () Bool)

(assert (=> b!4313255 (= e!2682825 (Some!10247 (_2!26686 (h!53696 (toList!2452 lt!1532779)))))))

(declare-fun b!4313257 () Bool)

(assert (=> b!4313257 (= e!2682826 (getValueByKey!265 (t!355203 (toList!2452 lt!1532779)) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun b!4313256 () Bool)

(assert (=> b!4313256 (= e!2682825 e!2682826)))

(declare-fun c!733335 () Bool)

(assert (=> b!4313256 (= c!733335 (and ((_ is Cons!48252) (toList!2452 lt!1532779)) (not (= (_1!26686 (h!53696 (toList!2452 lt!1532779))) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))))

(assert (= (and d!1268664 c!733334) b!4313255))

(assert (= (and d!1268664 (not c!733334)) b!4313256))

(assert (= (and b!4313256 c!733335) b!4313257))

(assert (= (and b!4313256 (not c!733335)) b!4313258))

(declare-fun m!4906341 () Bool)

(assert (=> b!4313257 m!4906341))

(assert (=> b!4312864 d!1268664))

(declare-fun d!1268666 () Bool)

(declare-fun res!1767769 () Bool)

(declare-fun e!2682827 () Bool)

(assert (=> d!1268666 (=> res!1767769 e!2682827)))

(assert (=> d!1268666 (= res!1767769 ((_ is Nil!48252) (t!355203 (toList!2452 lt!1532737))))))

(assert (=> d!1268666 (= (forall!8756 (t!355203 (toList!2452 lt!1532737)) lambda!133132) e!2682827)))

(declare-fun b!4313259 () Bool)

(declare-fun e!2682828 () Bool)

(assert (=> b!4313259 (= e!2682827 e!2682828)))

(declare-fun res!1767770 () Bool)

(assert (=> b!4313259 (=> (not res!1767770) (not e!2682828))))

(assert (=> b!4313259 (= res!1767770 (dynLambda!20454 lambda!133132 (h!53696 (t!355203 (toList!2452 lt!1532737)))))))

(declare-fun b!4313260 () Bool)

(assert (=> b!4313260 (= e!2682828 (forall!8756 (t!355203 (t!355203 (toList!2452 lt!1532737))) lambda!133132))))

(assert (= (and d!1268666 (not res!1767769)) b!4313259))

(assert (= (and b!4313259 res!1767770) b!4313260))

(declare-fun b_lambda!126769 () Bool)

(assert (=> (not b_lambda!126769) (not b!4313259)))

(declare-fun m!4906343 () Bool)

(assert (=> b!4313259 m!4906343))

(declare-fun m!4906345 () Bool)

(assert (=> b!4313260 m!4906345))

(assert (=> b!4312867 d!1268666))

(declare-fun d!1268668 () Bool)

(declare-fun res!1767771 () Bool)

(declare-fun e!2682829 () Bool)

(assert (=> d!1268668 (=> res!1767771 e!2682829)))

(assert (=> d!1268668 (= res!1767771 (and ((_ is Cons!48251) (t!355202 lt!1532739)) (= (_1!26685 (h!53695 (t!355202 lt!1532739))) (_1!26685 (h!53695 lt!1532739)))))))

(assert (=> d!1268668 (= (containsKey!340 (t!355202 lt!1532739) (_1!26685 (h!53695 lt!1532739))) e!2682829)))

(declare-fun b!4313261 () Bool)

(declare-fun e!2682830 () Bool)

(assert (=> b!4313261 (= e!2682829 e!2682830)))

(declare-fun res!1767772 () Bool)

(assert (=> b!4313261 (=> (not res!1767772) (not e!2682830))))

(assert (=> b!4313261 (= res!1767772 ((_ is Cons!48251) (t!355202 lt!1532739)))))

(declare-fun b!4313262 () Bool)

(assert (=> b!4313262 (= e!2682830 (containsKey!340 (t!355202 (t!355202 lt!1532739)) (_1!26685 (h!53695 lt!1532739))))))

(assert (= (and d!1268668 (not res!1767771)) b!4313261))

(assert (= (and b!4313261 res!1767772) b!4313262))

(declare-fun m!4906347 () Bool)

(assert (=> b!4313262 m!4906347))

(assert (=> b!4312913 d!1268668))

(declare-fun bs!605385 () Bool)

(declare-fun d!1268670 () Bool)

(assert (= bs!605385 (and d!1268670 b!4312906)))

(declare-fun lambda!133166 () Int)

(assert (=> bs!605385 (= lambda!133166 lambda!133152)))

(declare-fun bs!605386 () Bool)

(assert (= bs!605386 (and d!1268670 d!1268608)))

(assert (=> bs!605386 (= lambda!133166 lambda!133159)))

(declare-fun bs!605387 () Bool)

(assert (= bs!605387 (and d!1268670 d!1268548)))

(assert (=> bs!605387 (not (= lambda!133166 lambda!133139))))

(declare-fun bs!605388 () Bool)

(assert (= bs!605388 (and d!1268670 d!1268610)))

(assert (=> bs!605388 (= lambda!133166 lambda!133162)))

(declare-fun bs!605389 () Bool)

(assert (= bs!605389 (and d!1268670 d!1268600)))

(assert (=> bs!605389 (= lambda!133166 lambda!133158)))

(declare-fun bs!605390 () Bool)

(assert (= bs!605390 (and d!1268670 b!4312786)))

(assert (=> bs!605390 (= lambda!133166 lambda!133132)))

(declare-fun bs!605391 () Bool)

(assert (= bs!605391 (and d!1268670 b!4312919)))

(assert (=> bs!605391 (= lambda!133166 lambda!133155)))

(declare-fun bs!605392 () Bool)

(assert (= bs!605392 (and d!1268670 d!1268534)))

(assert (=> bs!605392 (not (= lambda!133166 lambda!133138))))

(declare-fun bs!605393 () Bool)

(assert (= bs!605393 (and d!1268670 d!1268560)))

(assert (=> bs!605393 (not (= lambda!133166 lambda!133148))))

(declare-fun bs!605394 () Bool)

(assert (= bs!605394 (and d!1268670 d!1268550)))

(assert (=> bs!605394 (= lambda!133166 lambda!133144)))

(declare-fun e!2682833 () Bool)

(assert (=> d!1268670 e!2682833))

(declare-fun res!1767775 () Bool)

(assert (=> d!1268670 (=> (not res!1767775) (not e!2682833))))

(assert (=> d!1268670 (= res!1767775 (contains!10235 lt!1532834 (hash!1056 (hashF!6763 thiss!42308) key!2048)))))

(declare-fun lt!1533070 () Unit!67411)

(declare-fun choose!26296 (ListLongMap!1065 K!9474 Hashable!4607) Unit!67411)

(assert (=> d!1268670 (= lt!1533070 (choose!26296 lt!1532834 key!2048 (hashF!6763 thiss!42308)))))

(assert (=> d!1268670 (forall!8756 (toList!2452 lt!1532834) lambda!133166)))

(assert (=> d!1268670 (= (lemmaInGenericMapThenInLongMap!142 lt!1532834 key!2048 (hashF!6763 thiss!42308)) lt!1533070)))

(declare-fun b!4313265 () Bool)

(assert (=> b!4313265 (= e!2682833 (isDefined!7551 (getPair!142 (apply!11055 lt!1532834 (hash!1056 (hashF!6763 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1268670 res!1767775) b!4313265))

(assert (=> d!1268670 m!4905851))

(assert (=> d!1268670 m!4905851))

(declare-fun m!4906349 () Bool)

(assert (=> d!1268670 m!4906349))

(declare-fun m!4906351 () Bool)

(assert (=> d!1268670 m!4906351))

(declare-fun m!4906353 () Bool)

(assert (=> d!1268670 m!4906353))

(assert (=> b!4313265 m!4905851))

(assert (=> b!4313265 m!4905851))

(declare-fun m!4906355 () Bool)

(assert (=> b!4313265 m!4906355))

(assert (=> b!4313265 m!4906355))

(declare-fun m!4906357 () Bool)

(assert (=> b!4313265 m!4906357))

(assert (=> b!4313265 m!4906357))

(declare-fun m!4906359 () Bool)

(assert (=> b!4313265 m!4906359))

(assert (=> b!4312905 d!1268670))

(declare-fun d!1268672 () Bool)

(declare-fun e!2682839 () Bool)

(assert (=> d!1268672 e!2682839))

(declare-fun res!1767778 () Bool)

(assert (=> d!1268672 (=> res!1767778 e!2682839)))

(declare-fun lt!1533081 () Bool)

(assert (=> d!1268672 (= res!1767778 (not lt!1533081))))

(declare-fun lt!1533079 () Bool)

(assert (=> d!1268672 (= lt!1533081 lt!1533079)))

(declare-fun lt!1533082 () Unit!67411)

(declare-fun e!2682838 () Unit!67411)

(assert (=> d!1268672 (= lt!1533082 e!2682838)))

(declare-fun c!733338 () Bool)

(assert (=> d!1268672 (= c!733338 lt!1533079)))

(assert (=> d!1268672 (= lt!1533079 (containsKey!341 (toList!2452 lt!1532779) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(assert (=> d!1268672 (= (contains!10235 lt!1532779 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))) lt!1533081)))

(declare-fun b!4313272 () Bool)

(declare-fun lt!1533080 () Unit!67411)

(assert (=> b!4313272 (= e!2682838 lt!1533080)))

(assert (=> b!4313272 (= lt!1533080 (lemmaContainsKeyImpliesGetValueByKeyDefined!185 (toList!2452 lt!1532779) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(assert (=> b!4313272 (isDefined!7550 (getValueByKey!265 (toList!2452 lt!1532779) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun b!4313273 () Bool)

(declare-fun Unit!67426 () Unit!67411)

(assert (=> b!4313273 (= e!2682838 Unit!67426)))

(declare-fun b!4313274 () Bool)

(assert (=> b!4313274 (= e!2682839 (isDefined!7550 (getValueByKey!265 (toList!2452 lt!1532779) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(assert (= (and d!1268672 c!733338) b!4313272))

(assert (= (and d!1268672 (not c!733338)) b!4313273))

(assert (= (and d!1268672 (not res!1767778)) b!4313274))

(declare-fun m!4906361 () Bool)

(assert (=> d!1268672 m!4906361))

(declare-fun m!4906363 () Bool)

(assert (=> b!4313272 m!4906363))

(assert (=> b!4313272 m!4905959))

(assert (=> b!4313272 m!4905959))

(declare-fun m!4906365 () Bool)

(assert (=> b!4313272 m!4906365))

(assert (=> b!4313274 m!4905959))

(assert (=> b!4313274 m!4905959))

(assert (=> b!4313274 m!4906365))

(assert (=> d!1268556 d!1268672))

(declare-fun b!4313278 () Bool)

(declare-fun e!2682841 () Option!10248)

(assert (=> b!4313278 (= e!2682841 None!10247)))

(declare-fun d!1268674 () Bool)

(declare-fun c!733339 () Bool)

(assert (=> d!1268674 (= c!733339 (and ((_ is Cons!48252) lt!1532782) (= (_1!26686 (h!53696 lt!1532782)) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(declare-fun e!2682840 () Option!10248)

(assert (=> d!1268674 (= (getValueByKey!265 lt!1532782 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))) e!2682840)))

(declare-fun b!4313275 () Bool)

(assert (=> b!4313275 (= e!2682840 (Some!10247 (_2!26686 (h!53696 lt!1532782))))))

(declare-fun b!4313277 () Bool)

(assert (=> b!4313277 (= e!2682841 (getValueByKey!265 (t!355203 lt!1532782) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun b!4313276 () Bool)

(assert (=> b!4313276 (= e!2682840 e!2682841)))

(declare-fun c!733340 () Bool)

(assert (=> b!4313276 (= c!733340 (and ((_ is Cons!48252) lt!1532782) (not (= (_1!26686 (h!53696 lt!1532782)) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))))

(assert (= (and d!1268674 c!733339) b!4313275))

(assert (= (and d!1268674 (not c!733339)) b!4313276))

(assert (= (and b!4313276 c!733340) b!4313277))

(assert (= (and b!4313276 (not c!733340)) b!4313278))

(declare-fun m!4906367 () Bool)

(assert (=> b!4313277 m!4906367))

(assert (=> d!1268556 d!1268674))

(declare-fun d!1268676 () Bool)

(assert (=> d!1268676 (= (getValueByKey!265 lt!1532782 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))) (Some!10247 (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun lt!1533085 () Unit!67411)

(declare-fun choose!26297 (List!48376 (_ BitVec 64) List!48375) Unit!67411)

(assert (=> d!1268676 (= lt!1533085 (choose!26297 lt!1532782 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun e!2682844 () Bool)

(assert (=> d!1268676 e!2682844))

(declare-fun res!1767783 () Bool)

(assert (=> d!1268676 (=> (not res!1767783) (not e!2682844))))

(assert (=> d!1268676 (= res!1767783 (isStrictlySorted!15 lt!1532782))))

(assert (=> d!1268676 (= (lemmaContainsTupThenGetReturnValue!78 lt!1532782 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))) lt!1533085)))

(declare-fun b!4313283 () Bool)

(declare-fun res!1767784 () Bool)

(assert (=> b!4313283 (=> (not res!1767784) (not e!2682844))))

(assert (=> b!4313283 (= res!1767784 (containsKey!341 lt!1532782 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun b!4313284 () Bool)

(assert (=> b!4313284 (= e!2682844 (contains!10237 lt!1532782 (tuple2!46811 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(assert (= (and d!1268676 res!1767783) b!4313283))

(assert (= (and b!4313283 res!1767784) b!4313284))

(assert (=> d!1268676 m!4905953))

(declare-fun m!4906369 () Bool)

(assert (=> d!1268676 m!4906369))

(declare-fun m!4906371 () Bool)

(assert (=> d!1268676 m!4906371))

(declare-fun m!4906373 () Bool)

(assert (=> b!4313283 m!4906373))

(declare-fun m!4906375 () Bool)

(assert (=> b!4313284 m!4906375))

(assert (=> d!1268556 d!1268676))

(declare-fun b!4313305 () Bool)

(declare-fun c!733351 () Bool)

(assert (=> b!4313305 (= c!733351 (and ((_ is Cons!48252) (toList!2452 lt!1532737)) (bvsgt (_1!26686 (h!53696 (toList!2452 lt!1532737))) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(declare-fun e!2682858 () List!48376)

(declare-fun e!2682857 () List!48376)

(assert (=> b!4313305 (= e!2682858 e!2682857)))

(declare-fun b!4313306 () Bool)

(declare-fun e!2682855 () List!48376)

(assert (=> b!4313306 (= e!2682855 e!2682858)))

(declare-fun c!733350 () Bool)

(assert (=> b!4313306 (= c!733350 (and ((_ is Cons!48252) (toList!2452 lt!1532737)) (= (_1!26686 (h!53696 (toList!2452 lt!1532737))) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(declare-fun b!4313307 () Bool)

(declare-fun call!298373 () List!48376)

(assert (=> b!4313307 (= e!2682858 call!298373)))

(declare-fun b!4313308 () Bool)

(declare-fun e!2682859 () List!48376)

(assert (=> b!4313308 (= e!2682859 (ite c!733350 (t!355203 (toList!2452 lt!1532737)) (ite c!733351 (Cons!48252 (h!53696 (toList!2452 lt!1532737)) (t!355203 (toList!2452 lt!1532737))) Nil!48252)))))

(declare-fun b!4313309 () Bool)

(declare-fun call!298372 () List!48376)

(assert (=> b!4313309 (= e!2682857 call!298372)))

(declare-fun b!4313310 () Bool)

(assert (=> b!4313310 (= e!2682857 call!298372)))

(declare-fun d!1268678 () Bool)

(declare-fun e!2682856 () Bool)

(assert (=> d!1268678 e!2682856))

(declare-fun res!1767790 () Bool)

(assert (=> d!1268678 (=> (not res!1767790) (not e!2682856))))

(declare-fun lt!1533088 () List!48376)

(assert (=> d!1268678 (= res!1767790 (isStrictlySorted!15 lt!1533088))))

(assert (=> d!1268678 (= lt!1533088 e!2682855)))

(declare-fun c!733349 () Bool)

(assert (=> d!1268678 (= c!733349 (and ((_ is Cons!48252) (toList!2452 lt!1532737)) (bvslt (_1!26686 (h!53696 (toList!2452 lt!1532737))) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(assert (=> d!1268678 (isStrictlySorted!15 (toList!2452 lt!1532737))))

(assert (=> d!1268678 (= (insertStrictlySorted!42 (toList!2452 lt!1532737) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))) lt!1533088)))

(declare-fun b!4313311 () Bool)

(declare-fun call!298371 () List!48376)

(assert (=> b!4313311 (= e!2682855 call!298371)))

(declare-fun bm!298366 () Bool)

(assert (=> bm!298366 (= call!298372 call!298373)))

(declare-fun bm!298367 () Bool)

(assert (=> bm!298367 (= call!298373 call!298371)))

(declare-fun b!4313312 () Bool)

(assert (=> b!4313312 (= e!2682859 (insertStrictlySorted!42 (t!355203 (toList!2452 lt!1532737)) (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(declare-fun bm!298368 () Bool)

(declare-fun $colon$colon!659 (List!48376 tuple2!46810) List!48376)

(assert (=> bm!298368 (= call!298371 ($colon$colon!659 e!2682859 (ite c!733349 (h!53696 (toList!2452 lt!1532737)) (tuple2!46811 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739))))))))

(declare-fun c!733352 () Bool)

(assert (=> bm!298368 (= c!733352 c!733349)))

(declare-fun b!4313313 () Bool)

(assert (=> b!4313313 (= e!2682856 (contains!10237 lt!1533088 (tuple2!46811 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739)) (_2!26686 (tuple2!46811 lt!1532744 lt!1532739)))))))

(declare-fun b!4313314 () Bool)

(declare-fun res!1767789 () Bool)

(assert (=> b!4313314 (=> (not res!1767789) (not e!2682856))))

(assert (=> b!4313314 (= res!1767789 (containsKey!341 lt!1533088 (_1!26686 (tuple2!46811 lt!1532744 lt!1532739))))))

(assert (= (and d!1268678 c!733349) b!4313311))

(assert (= (and d!1268678 (not c!733349)) b!4313306))

(assert (= (and b!4313306 c!733350) b!4313307))

(assert (= (and b!4313306 (not c!733350)) b!4313305))

(assert (= (and b!4313305 c!733351) b!4313310))

(assert (= (and b!4313305 (not c!733351)) b!4313309))

(assert (= (or b!4313310 b!4313309) bm!298366))

(assert (= (or b!4313307 bm!298366) bm!298367))

(assert (= (or b!4313311 bm!298367) bm!298368))

(assert (= (and bm!298368 c!733352) b!4313312))

(assert (= (and bm!298368 (not c!733352)) b!4313308))

(assert (= (and d!1268678 res!1767790) b!4313314))

(assert (= (and b!4313314 res!1767789) b!4313313))

(declare-fun m!4906377 () Bool)

(assert (=> b!4313314 m!4906377))

(declare-fun m!4906379 () Bool)

(assert (=> b!4313312 m!4906379))

(declare-fun m!4906381 () Bool)

(assert (=> d!1268678 m!4906381))

(declare-fun m!4906383 () Bool)

(assert (=> d!1268678 m!4906383))

(declare-fun m!4906385 () Bool)

(assert (=> bm!298368 m!4906385))

(declare-fun m!4906387 () Bool)

(assert (=> b!4313313 m!4906387))

(assert (=> d!1268556 d!1268678))

(declare-fun d!1268680 () Bool)

(assert (=> d!1268680 (= (isDefined!7551 (getPair!142 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850) key!2048)) (not (isEmpty!28088 (getPair!142 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850) key!2048))))))

(declare-fun bs!605395 () Bool)

(assert (= bs!605395 d!1268680))

(assert (=> bs!605395 m!4906015))

(declare-fun m!4906389 () Bool)

(assert (=> bs!605395 m!4906389))

(assert (=> b!4312904 d!1268680))

(declare-fun b!4313331 () Bool)

(declare-fun res!1767801 () Bool)

(declare-fun e!2682872 () Bool)

(assert (=> b!4313331 (=> (not res!1767801) (not e!2682872))))

(declare-fun lt!1533091 () Option!10249)

(declare-fun get!15620 (Option!10249) tuple2!46808)

(assert (=> b!4313331 (= res!1767801 (= (_1!26685 (get!15620 lt!1533091)) key!2048))))

(declare-fun b!4313332 () Bool)

(declare-fun e!2682874 () Option!10249)

(declare-fun e!2682873 () Option!10249)

(assert (=> b!4313332 (= e!2682874 e!2682873)))

(declare-fun c!733358 () Bool)

(assert (=> b!4313332 (= c!733358 ((_ is Cons!48251) (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850)))))

(declare-fun b!4313333 () Bool)

(assert (=> b!4313333 (= e!2682873 (getPair!142 (t!355202 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850)) key!2048))))

(declare-fun b!4313334 () Bool)

(declare-fun contains!10241 (List!48375 tuple2!46808) Bool)

(assert (=> b!4313334 (= e!2682872 (contains!10241 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850) (get!15620 lt!1533091)))))

(declare-fun b!4313335 () Bool)

(assert (=> b!4313335 (= e!2682873 None!10248)))

(declare-fun e!2682870 () Bool)

(declare-fun b!4313336 () Bool)

(assert (=> b!4313336 (= e!2682870 (not (containsKey!340 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850) key!2048)))))

(declare-fun b!4313337 () Bool)

(assert (=> b!4313337 (= e!2682874 (Some!10248 (h!53695 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))))

(declare-fun b!4313338 () Bool)

(declare-fun e!2682871 () Bool)

(assert (=> b!4313338 (= e!2682871 e!2682872)))

(declare-fun res!1767802 () Bool)

(assert (=> b!4313338 (=> (not res!1767802) (not e!2682872))))

(assert (=> b!4313338 (= res!1767802 (isDefined!7551 lt!1533091))))

(declare-fun d!1268682 () Bool)

(assert (=> d!1268682 e!2682871))

(declare-fun res!1767800 () Bool)

(assert (=> d!1268682 (=> res!1767800 e!2682871)))

(assert (=> d!1268682 (= res!1767800 e!2682870)))

(declare-fun res!1767799 () Bool)

(assert (=> d!1268682 (=> (not res!1767799) (not e!2682870))))

(assert (=> d!1268682 (= res!1767799 (isEmpty!28088 lt!1533091))))

(assert (=> d!1268682 (= lt!1533091 e!2682874)))

(declare-fun c!733357 () Bool)

(assert (=> d!1268682 (= c!733357 (and ((_ is Cons!48251) (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850)) (= (_1!26685 (h!53695 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))) key!2048)))))

(assert (=> d!1268682 (noDuplicateKeys!233 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))

(assert (=> d!1268682 (= (getPair!142 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850) key!2048) lt!1533091)))

(assert (= (and d!1268682 c!733357) b!4313337))

(assert (= (and d!1268682 (not c!733357)) b!4313332))

(assert (= (and b!4313332 c!733358) b!4313333))

(assert (= (and b!4313332 (not c!733358)) b!4313335))

(assert (= (and d!1268682 res!1767799) b!4313336))

(assert (= (and d!1268682 (not res!1767800)) b!4313338))

(assert (= (and b!4313338 res!1767802) b!4313331))

(assert (= (and b!4313331 res!1767801) b!4313334))

(assert (=> b!4313336 m!4905985))

(declare-fun m!4906391 () Bool)

(assert (=> b!4313336 m!4906391))

(declare-fun m!4906393 () Bool)

(assert (=> b!4313331 m!4906393))

(assert (=> b!4313334 m!4906393))

(assert (=> b!4313334 m!4905985))

(assert (=> b!4313334 m!4906393))

(declare-fun m!4906395 () Bool)

(assert (=> b!4313334 m!4906395))

(declare-fun m!4906397 () Bool)

(assert (=> b!4313338 m!4906397))

(declare-fun m!4906399 () Bool)

(assert (=> b!4313333 m!4906399))

(declare-fun m!4906401 () Bool)

(assert (=> d!1268682 m!4906401))

(assert (=> d!1268682 m!4905985))

(declare-fun m!4906403 () Bool)

(assert (=> d!1268682 m!4906403))

(assert (=> b!4312904 d!1268682))

(assert (=> b!4312904 d!1268622))

(declare-fun d!1268684 () Bool)

(declare-fun res!1767803 () Bool)

(declare-fun e!2682875 () Bool)

(assert (=> d!1268684 (=> res!1767803 e!2682875)))

(assert (=> d!1268684 (= res!1767803 (and ((_ is Cons!48251) lt!1532761) (= (_1!26685 (h!53695 lt!1532761)) key!2048)))))

(assert (=> d!1268684 (= (containsKey!340 lt!1532761 key!2048) e!2682875)))

(declare-fun b!4313339 () Bool)

(declare-fun e!2682876 () Bool)

(assert (=> b!4313339 (= e!2682875 e!2682876)))

(declare-fun res!1767804 () Bool)

(assert (=> b!4313339 (=> (not res!1767804) (not e!2682876))))

(assert (=> b!4313339 (= res!1767804 ((_ is Cons!48251) lt!1532761))))

(declare-fun b!4313340 () Bool)

(assert (=> b!4313340 (= e!2682876 (containsKey!340 (t!355202 lt!1532761) key!2048))))

(assert (= (and d!1268684 (not res!1767803)) b!4313339))

(assert (= (and b!4313339 res!1767804) b!4313340))

(declare-fun m!4906405 () Bool)

(assert (=> b!4313340 m!4906405))

(assert (=> d!1268538 d!1268684))

(assert (=> d!1268538 d!1268640))

(declare-fun d!1268686 () Bool)

(declare-fun res!1767805 () Bool)

(declare-fun e!2682877 () Bool)

(assert (=> d!1268686 (=> res!1767805 e!2682877)))

(assert (=> d!1268686 (= res!1767805 ((_ is Nil!48252) (toList!2452 lt!1532741)))))

(assert (=> d!1268686 (= (forall!8756 (toList!2452 lt!1532741) lambda!133138) e!2682877)))

(declare-fun b!4313341 () Bool)

(declare-fun e!2682878 () Bool)

(assert (=> b!4313341 (= e!2682877 e!2682878)))

(declare-fun res!1767806 () Bool)

(assert (=> b!4313341 (=> (not res!1767806) (not e!2682878))))

(assert (=> b!4313341 (= res!1767806 (dynLambda!20454 lambda!133138 (h!53696 (toList!2452 lt!1532741))))))

(declare-fun b!4313342 () Bool)

(assert (=> b!4313342 (= e!2682878 (forall!8756 (t!355203 (toList!2452 lt!1532741)) lambda!133138))))

(assert (= (and d!1268686 (not res!1767805)) b!4313341))

(assert (= (and b!4313341 res!1767806) b!4313342))

(declare-fun b_lambda!126771 () Bool)

(assert (=> (not b_lambda!126771) (not b!4313341)))

(declare-fun m!4906407 () Bool)

(assert (=> b!4313341 m!4906407))

(declare-fun m!4906409 () Bool)

(assert (=> b!4313342 m!4906409))

(assert (=> d!1268534 d!1268686))

(declare-fun d!1268688 () Bool)

(declare-fun e!2682880 () Bool)

(assert (=> d!1268688 e!2682880))

(declare-fun res!1767807 () Bool)

(assert (=> d!1268688 (=> res!1767807 e!2682880)))

(declare-fun lt!1533094 () Bool)

(assert (=> d!1268688 (= res!1767807 (not lt!1533094))))

(declare-fun lt!1533092 () Bool)

(assert (=> d!1268688 (= lt!1533094 lt!1533092)))

(declare-fun lt!1533095 () Unit!67411)

(declare-fun e!2682879 () Unit!67411)

(assert (=> d!1268688 (= lt!1533095 e!2682879)))

(declare-fun c!733359 () Bool)

(assert (=> d!1268688 (= c!733359 lt!1533092)))

(assert (=> d!1268688 (= lt!1533092 (containsKey!341 (toList!2452 call!298245) lt!1532744))))

(assert (=> d!1268688 (= (contains!10235 call!298245 lt!1532744) lt!1533094)))

(declare-fun b!4313343 () Bool)

(declare-fun lt!1533093 () Unit!67411)

(assert (=> b!4313343 (= e!2682879 lt!1533093)))

(assert (=> b!4313343 (= lt!1533093 (lemmaContainsKeyImpliesGetValueByKeyDefined!185 (toList!2452 call!298245) lt!1532744))))

(assert (=> b!4313343 (isDefined!7550 (getValueByKey!265 (toList!2452 call!298245) lt!1532744))))

(declare-fun b!4313344 () Bool)

(declare-fun Unit!67427 () Unit!67411)

(assert (=> b!4313344 (= e!2682879 Unit!67427)))

(declare-fun b!4313345 () Bool)

(assert (=> b!4313345 (= e!2682880 (isDefined!7550 (getValueByKey!265 (toList!2452 call!298245) lt!1532744)))))

(assert (= (and d!1268688 c!733359) b!4313343))

(assert (= (and d!1268688 (not c!733359)) b!4313344))

(assert (= (and d!1268688 (not res!1767807)) b!4313345))

(declare-fun m!4906411 () Bool)

(assert (=> d!1268688 m!4906411))

(declare-fun m!4906413 () Bool)

(assert (=> b!4313343 m!4906413))

(declare-fun m!4906415 () Bool)

(assert (=> b!4313343 m!4906415))

(assert (=> b!4313343 m!4906415))

(declare-fun m!4906417 () Bool)

(assert (=> b!4313343 m!4906417))

(assert (=> b!4313345 m!4906415))

(assert (=> b!4313345 m!4906415))

(assert (=> b!4313345 m!4906417))

(assert (=> b!4312825 d!1268688))

(assert (=> bm!298240 d!1268572))

(assert (=> d!1268560 d!1268566))

(declare-fun d!1268690 () Bool)

(assert (=> d!1268690 (allKeysSameHash!206 lt!1532735 lt!1532744 (hashF!6763 thiss!42308))))

(assert (=> d!1268690 true))

(declare-fun _$19!974 () Unit!67411)

(assert (=> d!1268690 (= (choose!26289 (toList!2452 lt!1532737) lt!1532744 lt!1532735 (hashF!6763 thiss!42308)) _$19!974)))

(declare-fun bs!605396 () Bool)

(assert (= bs!605396 d!1268690))

(assert (=> bs!605396 m!4905881))

(assert (=> d!1268560 d!1268690))

(declare-fun d!1268692 () Bool)

(declare-fun res!1767808 () Bool)

(declare-fun e!2682881 () Bool)

(assert (=> d!1268692 (=> res!1767808 e!2682881)))

(assert (=> d!1268692 (= res!1767808 ((_ is Nil!48252) (toList!2452 lt!1532737)))))

(assert (=> d!1268692 (= (forall!8756 (toList!2452 lt!1532737) lambda!133148) e!2682881)))

(declare-fun b!4313346 () Bool)

(declare-fun e!2682882 () Bool)

(assert (=> b!4313346 (= e!2682881 e!2682882)))

(declare-fun res!1767809 () Bool)

(assert (=> b!4313346 (=> (not res!1767809) (not e!2682882))))

(assert (=> b!4313346 (= res!1767809 (dynLambda!20454 lambda!133148 (h!53696 (toList!2452 lt!1532737))))))

(declare-fun b!4313347 () Bool)

(assert (=> b!4313347 (= e!2682882 (forall!8756 (t!355203 (toList!2452 lt!1532737)) lambda!133148))))

(assert (= (and d!1268692 (not res!1767808)) b!4313346))

(assert (= (and b!4313346 res!1767809) b!4313347))

(declare-fun b_lambda!126773 () Bool)

(assert (=> (not b_lambda!126773) (not b!4313346)))

(declare-fun m!4906419 () Bool)

(assert (=> b!4313346 m!4906419))

(declare-fun m!4906421 () Bool)

(assert (=> b!4313347 m!4906421))

(assert (=> d!1268560 d!1268692))

(declare-fun bs!605397 () Bool)

(declare-fun d!1268694 () Bool)

(assert (= bs!605397 (and d!1268694 d!1268670)))

(declare-fun lambda!133167 () Int)

(assert (=> bs!605397 (not (= lambda!133167 lambda!133166))))

(declare-fun bs!605398 () Bool)

(assert (= bs!605398 (and d!1268694 b!4312906)))

(assert (=> bs!605398 (not (= lambda!133167 lambda!133152))))

(declare-fun bs!605399 () Bool)

(assert (= bs!605399 (and d!1268694 d!1268608)))

(assert (=> bs!605399 (not (= lambda!133167 lambda!133159))))

(declare-fun bs!605400 () Bool)

(assert (= bs!605400 (and d!1268694 d!1268548)))

(assert (=> bs!605400 (= lambda!133167 lambda!133139)))

(declare-fun bs!605401 () Bool)

(assert (= bs!605401 (and d!1268694 d!1268610)))

(assert (=> bs!605401 (not (= lambda!133167 lambda!133162))))

(declare-fun bs!605402 () Bool)

(assert (= bs!605402 (and d!1268694 d!1268600)))

(assert (=> bs!605402 (not (= lambda!133167 lambda!133158))))

(declare-fun bs!605403 () Bool)

(assert (= bs!605403 (and d!1268694 b!4312786)))

(assert (=> bs!605403 (not (= lambda!133167 lambda!133132))))

(declare-fun bs!605404 () Bool)

(assert (= bs!605404 (and d!1268694 b!4312919)))

(assert (=> bs!605404 (not (= lambda!133167 lambda!133155))))

(declare-fun bs!605405 () Bool)

(assert (= bs!605405 (and d!1268694 d!1268534)))

(assert (=> bs!605405 (= lambda!133167 lambda!133138)))

(declare-fun bs!605406 () Bool)

(assert (= bs!605406 (and d!1268694 d!1268560)))

(assert (=> bs!605406 (= lambda!133167 lambda!133148)))

(declare-fun bs!605407 () Bool)

(assert (= bs!605407 (and d!1268694 d!1268550)))

(assert (=> bs!605407 (not (= lambda!133167 lambda!133144))))

(assert (=> d!1268694 true))

(assert (=> d!1268694 (= (allKeysSameHashInMap!353 (map!10258 (v!42459 (underlying!9612 thiss!42308))) (hashF!6763 thiss!42308)) (forall!8756 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lambda!133167))))

(declare-fun bs!605408 () Bool)

(assert (= bs!605408 d!1268694))

(declare-fun m!4906423 () Bool)

(assert (=> bs!605408 m!4906423))

(assert (=> b!4312920 d!1268694))

(assert (=> b!4312920 d!1268572))

(declare-fun d!1268696 () Bool)

(declare-fun choose!26298 (Hashable!4607 K!9474) (_ BitVec 64))

(assert (=> d!1268696 (= (hash!1060 (hashF!6763 thiss!42308) key!2048) (choose!26298 (hashF!6763 thiss!42308) key!2048))))

(declare-fun bs!605409 () Bool)

(assert (= bs!605409 d!1268696))

(declare-fun m!4906425 () Bool)

(assert (=> bs!605409 m!4906425))

(assert (=> d!1268542 d!1268696))

(declare-fun d!1268698 () Bool)

(declare-fun res!1767810 () Bool)

(declare-fun e!2682883 () Bool)

(assert (=> d!1268698 (=> res!1767810 e!2682883)))

(assert (=> d!1268698 (= res!1767810 (and ((_ is Cons!48251) (t!355202 lt!1532746)) (= (_1!26685 (h!53695 (t!355202 lt!1532746))) key!2048)))))

(assert (=> d!1268698 (= (containsKey!340 (t!355202 lt!1532746) key!2048) e!2682883)))

(declare-fun b!4313348 () Bool)

(declare-fun e!2682884 () Bool)

(assert (=> b!4313348 (= e!2682883 e!2682884)))

(declare-fun res!1767811 () Bool)

(assert (=> b!4313348 (=> (not res!1767811) (not e!2682884))))

(assert (=> b!4313348 (= res!1767811 ((_ is Cons!48251) (t!355202 lt!1532746)))))

(declare-fun b!4313349 () Bool)

(assert (=> b!4313349 (= e!2682884 (containsKey!340 (t!355202 (t!355202 lt!1532746)) key!2048))))

(assert (= (and d!1268698 (not res!1767810)) b!4313348))

(assert (= (and b!4313348 res!1767811) b!4313349))

(declare-fun m!4906427 () Bool)

(assert (=> b!4313349 m!4906427))

(assert (=> b!4312912 d!1268698))

(assert (=> bm!298255 d!1268572))

(declare-fun d!1268700 () Bool)

(assert (=> d!1268700 (= (get!15619 (getValueByKey!265 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lt!1532744)) (v!42464 (getValueByKey!265 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lt!1532744)))))

(assert (=> b!4312849 d!1268700))

(declare-fun b!4313353 () Bool)

(declare-fun e!2682886 () Option!10248)

(assert (=> b!4313353 (= e!2682886 None!10247)))

(declare-fun d!1268702 () Bool)

(declare-fun c!733360 () Bool)

(assert (=> d!1268702 (= c!733360 (and ((_ is Cons!48252) (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) (= (_1!26686 (h!53696 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) lt!1532744)))))

(declare-fun e!2682885 () Option!10248)

(assert (=> d!1268702 (= (getValueByKey!265 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lt!1532744) e!2682885)))

(declare-fun b!4313350 () Bool)

(assert (=> b!4313350 (= e!2682885 (Some!10247 (_2!26686 (h!53696 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))))))

(declare-fun b!4313352 () Bool)

(assert (=> b!4313352 (= e!2682886 (getValueByKey!265 (t!355203 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744))))

(declare-fun b!4313351 () Bool)

(assert (=> b!4313351 (= e!2682885 e!2682886)))

(declare-fun c!733361 () Bool)

(assert (=> b!4313351 (= c!733361 (and ((_ is Cons!48252) (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) (not (= (_1!26686 (h!53696 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) lt!1532744))))))

(assert (= (and d!1268702 c!733360) b!4313350))

(assert (= (and d!1268702 (not c!733360)) b!4313351))

(assert (= (and b!4313351 c!733361) b!4313352))

(assert (= (and b!4313351 (not c!733361)) b!4313353))

(declare-fun m!4906429 () Bool)

(assert (=> b!4313352 m!4906429))

(assert (=> b!4312849 d!1268702))

(assert (=> b!4312849 d!1268572))

(declare-fun d!1268704 () Bool)

(declare-fun res!1767812 () Bool)

(declare-fun e!2682887 () Bool)

(assert (=> d!1268704 (=> res!1767812 e!2682887)))

(assert (=> d!1268704 (= res!1767812 ((_ is Nil!48252) (toList!2452 lt!1532737)))))

(assert (=> d!1268704 (= (forall!8756 (toList!2452 lt!1532737) lambda!133139) e!2682887)))

(declare-fun b!4313354 () Bool)

(declare-fun e!2682888 () Bool)

(assert (=> b!4313354 (= e!2682887 e!2682888)))

(declare-fun res!1767813 () Bool)

(assert (=> b!4313354 (=> (not res!1767813) (not e!2682888))))

(assert (=> b!4313354 (= res!1767813 (dynLambda!20454 lambda!133139 (h!53696 (toList!2452 lt!1532737))))))

(declare-fun b!4313355 () Bool)

(assert (=> b!4313355 (= e!2682888 (forall!8756 (t!355203 (toList!2452 lt!1532737)) lambda!133139))))

(assert (= (and d!1268704 (not res!1767812)) b!4313354))

(assert (= (and b!4313354 res!1767813) b!4313355))

(declare-fun b_lambda!126775 () Bool)

(assert (=> (not b_lambda!126775) (not b!4313354)))

(declare-fun m!4906431 () Bool)

(assert (=> b!4313354 m!4906431))

(declare-fun m!4906433 () Bool)

(assert (=> b!4313355 m!4906433))

(assert (=> d!1268548 d!1268704))

(declare-fun bs!605410 () Bool)

(declare-fun d!1268706 () Bool)

(assert (= bs!605410 (and d!1268706 d!1268670)))

(declare-fun lambda!133168 () Int)

(assert (=> bs!605410 (not (= lambda!133168 lambda!133166))))

(declare-fun bs!605411 () Bool)

(assert (= bs!605411 (and d!1268706 b!4312906)))

(assert (=> bs!605411 (not (= lambda!133168 lambda!133152))))

(declare-fun bs!605412 () Bool)

(assert (= bs!605412 (and d!1268706 d!1268608)))

(assert (=> bs!605412 (not (= lambda!133168 lambda!133159))))

(declare-fun bs!605413 () Bool)

(assert (= bs!605413 (and d!1268706 d!1268548)))

(assert (=> bs!605413 (= lambda!133168 lambda!133139)))

(declare-fun bs!605414 () Bool)

(assert (= bs!605414 (and d!1268706 d!1268610)))

(assert (=> bs!605414 (not (= lambda!133168 lambda!133162))))

(declare-fun bs!605415 () Bool)

(assert (= bs!605415 (and d!1268706 d!1268600)))

(assert (=> bs!605415 (not (= lambda!133168 lambda!133158))))

(declare-fun bs!605416 () Bool)

(assert (= bs!605416 (and d!1268706 b!4312786)))

(assert (=> bs!605416 (not (= lambda!133168 lambda!133132))))

(declare-fun bs!605417 () Bool)

(assert (= bs!605417 (and d!1268706 d!1268694)))

(assert (=> bs!605417 (= lambda!133168 lambda!133167)))

(declare-fun bs!605418 () Bool)

(assert (= bs!605418 (and d!1268706 b!4312919)))

(assert (=> bs!605418 (not (= lambda!133168 lambda!133155))))

(declare-fun bs!605419 () Bool)

(assert (= bs!605419 (and d!1268706 d!1268534)))

(assert (=> bs!605419 (= lambda!133168 lambda!133138)))

(declare-fun bs!605420 () Bool)

(assert (= bs!605420 (and d!1268706 d!1268560)))

(assert (=> bs!605420 (= lambda!133168 lambda!133148)))

(declare-fun bs!605421 () Bool)

(assert (= bs!605421 (and d!1268706 d!1268550)))

(assert (=> bs!605421 (not (= lambda!133168 lambda!133144))))

(assert (=> d!1268706 true))

(assert (=> d!1268706 (= (allKeysSameHashInMap!353 lt!1532770 (hashF!6763 thiss!42308)) (forall!8756 (toList!2452 lt!1532770) lambda!133168))))

(declare-fun bs!605422 () Bool)

(assert (= bs!605422 d!1268706))

(declare-fun m!4906435 () Bool)

(assert (=> bs!605422 m!4906435))

(assert (=> b!4312853 d!1268706))

(declare-fun d!1268708 () Bool)

(declare-fun res!1767814 () Bool)

(declare-fun e!2682889 () Bool)

(assert (=> d!1268708 (=> res!1767814 e!2682889)))

(assert (=> d!1268708 (= res!1767814 (not ((_ is Cons!48251) (_2!26686 (h!53696 (toList!2452 lt!1532741))))))))

(assert (=> d!1268708 (= (noDuplicateKeys!233 (_2!26686 (h!53696 (toList!2452 lt!1532741)))) e!2682889)))

(declare-fun b!4313356 () Bool)

(declare-fun e!2682890 () Bool)

(assert (=> b!4313356 (= e!2682889 e!2682890)))

(declare-fun res!1767815 () Bool)

(assert (=> b!4313356 (=> (not res!1767815) (not e!2682890))))

(assert (=> b!4313356 (= res!1767815 (not (containsKey!340 (t!355202 (_2!26686 (h!53696 (toList!2452 lt!1532741)))) (_1!26685 (h!53695 (_2!26686 (h!53696 (toList!2452 lt!1532741))))))))))

(declare-fun b!4313357 () Bool)

(assert (=> b!4313357 (= e!2682890 (noDuplicateKeys!233 (t!355202 (_2!26686 (h!53696 (toList!2452 lt!1532741))))))))

(assert (= (and d!1268708 (not res!1767814)) b!4313356))

(assert (= (and b!4313356 res!1767815) b!4313357))

(declare-fun m!4906437 () Bool)

(assert (=> b!4313356 m!4906437))

(declare-fun m!4906439 () Bool)

(assert (=> b!4313357 m!4906439))

(assert (=> bs!605344 d!1268708))

(declare-fun d!1268710 () Bool)

(declare-fun e!2682892 () Bool)

(assert (=> d!1268710 e!2682892))

(declare-fun res!1767816 () Bool)

(assert (=> d!1268710 (=> res!1767816 e!2682892)))

(declare-fun lt!1533098 () Bool)

(assert (=> d!1268710 (= res!1767816 (not lt!1533098))))

(declare-fun lt!1533096 () Bool)

(assert (=> d!1268710 (= lt!1533098 lt!1533096)))

(declare-fun lt!1533099 () Unit!67411)

(declare-fun e!2682891 () Unit!67411)

(assert (=> d!1268710 (= lt!1533099 e!2682891)))

(declare-fun c!733362 () Bool)

(assert (=> d!1268710 (= c!733362 lt!1533096)))

(assert (=> d!1268710 (= lt!1533096 (containsKey!341 (toList!2452 (ite c!733232 lt!1532834 call!298263)) call!298258))))

(assert (=> d!1268710 (= (contains!10235 (ite c!733232 lt!1532834 call!298263) call!298258) lt!1533098)))

(declare-fun b!4313358 () Bool)

(declare-fun lt!1533097 () Unit!67411)

(assert (=> b!4313358 (= e!2682891 lt!1533097)))

(assert (=> b!4313358 (= lt!1533097 (lemmaContainsKeyImpliesGetValueByKeyDefined!185 (toList!2452 (ite c!733232 lt!1532834 call!298263)) call!298258))))

(assert (=> b!4313358 (isDefined!7550 (getValueByKey!265 (toList!2452 (ite c!733232 lt!1532834 call!298263)) call!298258))))

(declare-fun b!4313359 () Bool)

(declare-fun Unit!67428 () Unit!67411)

(assert (=> b!4313359 (= e!2682891 Unit!67428)))

(declare-fun b!4313360 () Bool)

(assert (=> b!4313360 (= e!2682892 (isDefined!7550 (getValueByKey!265 (toList!2452 (ite c!733232 lt!1532834 call!298263)) call!298258)))))

(assert (= (and d!1268710 c!733362) b!4313358))

(assert (= (and d!1268710 (not c!733362)) b!4313359))

(assert (= (and d!1268710 (not res!1767816)) b!4313360))

(declare-fun m!4906441 () Bool)

(assert (=> d!1268710 m!4906441))

(declare-fun m!4906443 () Bool)

(assert (=> b!4313358 m!4906443))

(assert (=> b!4313358 m!4906301))

(assert (=> b!4313358 m!4906301))

(declare-fun m!4906445 () Bool)

(assert (=> b!4313358 m!4906445))

(assert (=> b!4313360 m!4906301))

(assert (=> b!4313360 m!4906301))

(assert (=> b!4313360 m!4906445))

(assert (=> bm!298254 d!1268710))

(assert (=> d!1268580 d!1268590))

(declare-fun d!1268712 () Bool)

(declare-fun res!1767817 () Bool)

(declare-fun e!2682893 () Bool)

(assert (=> d!1268712 (=> res!1767817 e!2682893)))

(assert (=> d!1268712 (= res!1767817 ((_ is Nil!48252) (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))))

(assert (=> d!1268712 (= (forall!8756 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lambda!133155) e!2682893)))

(declare-fun b!4313361 () Bool)

(declare-fun e!2682894 () Bool)

(assert (=> b!4313361 (= e!2682893 e!2682894)))

(declare-fun res!1767818 () Bool)

(assert (=> b!4313361 (=> (not res!1767818) (not e!2682894))))

(assert (=> b!4313361 (= res!1767818 (dynLambda!20454 lambda!133155 (h!53696 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))))))

(declare-fun b!4313362 () Bool)

(assert (=> b!4313362 (= e!2682894 (forall!8756 (t!355203 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) lambda!133155))))

(assert (= (and d!1268712 (not res!1767817)) b!4313361))

(assert (= (and b!4313361 res!1767818) b!4313362))

(declare-fun b_lambda!126777 () Bool)

(assert (=> (not b_lambda!126777) (not b!4313361)))

(declare-fun m!4906447 () Bool)

(assert (=> b!4313361 m!4906447))

(declare-fun m!4906449 () Bool)

(assert (=> b!4313362 m!4906449))

(assert (=> b!4312919 d!1268712))

(assert (=> b!4312919 d!1268572))

(declare-fun b!4313363 () Bool)

(declare-fun res!1767821 () Bool)

(declare-fun e!2682897 () Bool)

(assert (=> b!4313363 (=> (not res!1767821) (not e!2682897))))

(declare-fun lt!1533100 () Option!10249)

(assert (=> b!4313363 (= res!1767821 (= (_1!26685 (get!15620 lt!1533100)) key!2048))))

(declare-fun b!4313364 () Bool)

(declare-fun e!2682899 () Option!10249)

(declare-fun e!2682898 () Option!10249)

(assert (=> b!4313364 (= e!2682899 e!2682898)))

(declare-fun c!733364 () Bool)

(assert (=> b!4313364 (= c!733364 ((_ is Cons!48251) call!298259))))

(declare-fun b!4313365 () Bool)

(assert (=> b!4313365 (= e!2682898 (getPair!142 (t!355202 call!298259) key!2048))))

(declare-fun b!4313366 () Bool)

(assert (=> b!4313366 (= e!2682897 (contains!10241 call!298259 (get!15620 lt!1533100)))))

(declare-fun b!4313367 () Bool)

(assert (=> b!4313367 (= e!2682898 None!10248)))

(declare-fun b!4313368 () Bool)

(declare-fun e!2682895 () Bool)

(assert (=> b!4313368 (= e!2682895 (not (containsKey!340 call!298259 key!2048)))))

(declare-fun b!4313369 () Bool)

(assert (=> b!4313369 (= e!2682899 (Some!10248 (h!53695 call!298259)))))

(declare-fun b!4313370 () Bool)

(declare-fun e!2682896 () Bool)

(assert (=> b!4313370 (= e!2682896 e!2682897)))

(declare-fun res!1767822 () Bool)

(assert (=> b!4313370 (=> (not res!1767822) (not e!2682897))))

(assert (=> b!4313370 (= res!1767822 (isDefined!7551 lt!1533100))))

(declare-fun d!1268714 () Bool)

(assert (=> d!1268714 e!2682896))

(declare-fun res!1767820 () Bool)

(assert (=> d!1268714 (=> res!1767820 e!2682896)))

(assert (=> d!1268714 (= res!1767820 e!2682895)))

(declare-fun res!1767819 () Bool)

(assert (=> d!1268714 (=> (not res!1767819) (not e!2682895))))

(assert (=> d!1268714 (= res!1767819 (isEmpty!28088 lt!1533100))))

(assert (=> d!1268714 (= lt!1533100 e!2682899)))

(declare-fun c!733363 () Bool)

(assert (=> d!1268714 (= c!733363 (and ((_ is Cons!48251) call!298259) (= (_1!26685 (h!53695 call!298259)) key!2048)))))

(assert (=> d!1268714 (noDuplicateKeys!233 call!298259)))

(assert (=> d!1268714 (= (getPair!142 call!298259 key!2048) lt!1533100)))

(assert (= (and d!1268714 c!733363) b!4313369))

(assert (= (and d!1268714 (not c!733363)) b!4313364))

(assert (= (and b!4313364 c!733364) b!4313365))

(assert (= (and b!4313364 (not c!733364)) b!4313367))

(assert (= (and d!1268714 res!1767819) b!4313368))

(assert (= (and d!1268714 (not res!1767820)) b!4313370))

(assert (= (and b!4313370 res!1767822) b!4313363))

(assert (= (and b!4313363 res!1767821) b!4313366))

(declare-fun m!4906451 () Bool)

(assert (=> b!4313368 m!4906451))

(declare-fun m!4906453 () Bool)

(assert (=> b!4313363 m!4906453))

(assert (=> b!4313366 m!4906453))

(assert (=> b!4313366 m!4906453))

(declare-fun m!4906455 () Bool)

(assert (=> b!4313366 m!4906455))

(declare-fun m!4906457 () Bool)

(assert (=> b!4313370 m!4906457))

(declare-fun m!4906459 () Bool)

(assert (=> b!4313365 m!4906459))

(declare-fun m!4906461 () Bool)

(assert (=> d!1268714 m!4906461))

(declare-fun m!4906463 () Bool)

(assert (=> d!1268714 m!4906463))

(assert (=> bm!298258 d!1268714))

(declare-fun d!1268716 () Bool)

(declare-fun res!1767823 () Bool)

(declare-fun e!2682900 () Bool)

(assert (=> d!1268716 (=> res!1767823 e!2682900)))

(assert (=> d!1268716 (= res!1767823 ((_ is Nil!48252) (toList!2452 lt!1532770)))))

(assert (=> d!1268716 (= (forall!8756 (toList!2452 lt!1532770) lambda!133144) e!2682900)))

(declare-fun b!4313371 () Bool)

(declare-fun e!2682901 () Bool)

(assert (=> b!4313371 (= e!2682900 e!2682901)))

(declare-fun res!1767824 () Bool)

(assert (=> b!4313371 (=> (not res!1767824) (not e!2682901))))

(assert (=> b!4313371 (= res!1767824 (dynLambda!20454 lambda!133144 (h!53696 (toList!2452 lt!1532770))))))

(declare-fun b!4313372 () Bool)

(assert (=> b!4313372 (= e!2682901 (forall!8756 (t!355203 (toList!2452 lt!1532770)) lambda!133144))))

(assert (= (and d!1268716 (not res!1767823)) b!4313371))

(assert (= (and b!4313371 res!1767824) b!4313372))

(declare-fun b_lambda!126779 () Bool)

(assert (=> (not b_lambda!126779) (not b!4313371)))

(declare-fun m!4906465 () Bool)

(assert (=> b!4313371 m!4906465))

(declare-fun m!4906467 () Bool)

(assert (=> b!4313372 m!4906467))

(assert (=> d!1268550 d!1268716))

(assert (=> d!1268550 d!1268556))

(declare-fun bs!605423 () Bool)

(declare-fun d!1268718 () Bool)

(assert (= bs!605423 (and d!1268718 d!1268670)))

(declare-fun lambda!133171 () Int)

(assert (=> bs!605423 (= lambda!133171 lambda!133166)))

(declare-fun bs!605424 () Bool)

(assert (= bs!605424 (and d!1268718 b!4312906)))

(assert (=> bs!605424 (= lambda!133171 lambda!133152)))

(declare-fun bs!605425 () Bool)

(assert (= bs!605425 (and d!1268718 d!1268608)))

(assert (=> bs!605425 (= lambda!133171 lambda!133159)))

(declare-fun bs!605426 () Bool)

(assert (= bs!605426 (and d!1268718 d!1268706)))

(assert (=> bs!605426 (not (= lambda!133171 lambda!133168))))

(declare-fun bs!605427 () Bool)

(assert (= bs!605427 (and d!1268718 d!1268548)))

(assert (=> bs!605427 (not (= lambda!133171 lambda!133139))))

(declare-fun bs!605428 () Bool)

(assert (= bs!605428 (and d!1268718 d!1268610)))

(assert (=> bs!605428 (= lambda!133171 lambda!133162)))

(declare-fun bs!605429 () Bool)

(assert (= bs!605429 (and d!1268718 d!1268600)))

(assert (=> bs!605429 (= lambda!133171 lambda!133158)))

(declare-fun bs!605430 () Bool)

(assert (= bs!605430 (and d!1268718 b!4312786)))

(assert (=> bs!605430 (= lambda!133171 lambda!133132)))

(declare-fun bs!605431 () Bool)

(assert (= bs!605431 (and d!1268718 d!1268694)))

(assert (=> bs!605431 (not (= lambda!133171 lambda!133167))))

(declare-fun bs!605432 () Bool)

(assert (= bs!605432 (and d!1268718 b!4312919)))

(assert (=> bs!605432 (= lambda!133171 lambda!133155)))

(declare-fun bs!605433 () Bool)

(assert (= bs!605433 (and d!1268718 d!1268534)))

(assert (=> bs!605433 (not (= lambda!133171 lambda!133138))))

(declare-fun bs!605434 () Bool)

(assert (= bs!605434 (and d!1268718 d!1268560)))

(assert (=> bs!605434 (not (= lambda!133171 lambda!133148))))

(declare-fun bs!605435 () Bool)

(assert (= bs!605435 (and d!1268718 d!1268550)))

(assert (=> bs!605435 (= lambda!133171 lambda!133144)))

(declare-fun e!2682904 () Bool)

(assert (=> d!1268718 e!2682904))

(declare-fun res!1767827 () Bool)

(assert (=> d!1268718 (=> (not res!1767827) (not e!2682904))))

(declare-fun lt!1533103 () ListLongMap!1065)

(assert (=> d!1268718 (= res!1767827 (forall!8756 (toList!2452 lt!1533103) lambda!133171))))

(assert (=> d!1268718 (= lt!1533103 (+!283 lt!1532737 (tuple2!46811 lt!1532744 lt!1532739)))))

(assert (=> d!1268718 true))

(declare-fun _$21!136 () Unit!67411)

(assert (=> d!1268718 (= (choose!26288 lt!1532737 lt!1532744 lt!1532739 (hashF!6763 thiss!42308)) _$21!136)))

(declare-fun b!4313375 () Bool)

(assert (=> b!4313375 (= e!2682904 (allKeysSameHashInMap!353 lt!1533103 (hashF!6763 thiss!42308)))))

(assert (= (and d!1268718 res!1767827) b!4313375))

(declare-fun m!4906469 () Bool)

(assert (=> d!1268718 m!4906469))

(assert (=> d!1268718 m!4905883))

(declare-fun m!4906471 () Bool)

(assert (=> b!4313375 m!4906471))

(assert (=> d!1268550 d!1268718))

(declare-fun d!1268720 () Bool)

(declare-fun res!1767828 () Bool)

(declare-fun e!2682905 () Bool)

(assert (=> d!1268720 (=> res!1767828 e!2682905)))

(assert (=> d!1268720 (= res!1767828 ((_ is Nil!48252) (toList!2452 lt!1532737)))))

(assert (=> d!1268720 (= (forall!8756 (toList!2452 lt!1532737) lambda!133144) e!2682905)))

(declare-fun b!4313376 () Bool)

(declare-fun e!2682906 () Bool)

(assert (=> b!4313376 (= e!2682905 e!2682906)))

(declare-fun res!1767829 () Bool)

(assert (=> b!4313376 (=> (not res!1767829) (not e!2682906))))

(assert (=> b!4313376 (= res!1767829 (dynLambda!20454 lambda!133144 (h!53696 (toList!2452 lt!1532737))))))

(declare-fun b!4313377 () Bool)

(assert (=> b!4313377 (= e!2682906 (forall!8756 (t!355203 (toList!2452 lt!1532737)) lambda!133144))))

(assert (= (and d!1268720 (not res!1767828)) b!4313376))

(assert (= (and b!4313376 res!1767829) b!4313377))

(declare-fun b_lambda!126781 () Bool)

(assert (=> (not b_lambda!126781) (not b!4313376)))

(declare-fun m!4906473 () Bool)

(assert (=> b!4313376 m!4906473))

(declare-fun m!4906475 () Bool)

(assert (=> b!4313377 m!4906475))

(assert (=> d!1268550 d!1268720))

(declare-fun d!1268722 () Bool)

(declare-fun lt!1533104 () Bool)

(assert (=> d!1268722 (= lt!1533104 (select (content!7557 (toList!2452 lt!1532779)) (tuple2!46811 lt!1532744 lt!1532739)))))

(declare-fun e!2682908 () Bool)

(assert (=> d!1268722 (= lt!1533104 e!2682908)))

(declare-fun res!1767831 () Bool)

(assert (=> d!1268722 (=> (not res!1767831) (not e!2682908))))

(assert (=> d!1268722 (= res!1767831 ((_ is Cons!48252) (toList!2452 lt!1532779)))))

(assert (=> d!1268722 (= (contains!10237 (toList!2452 lt!1532779) (tuple2!46811 lt!1532744 lt!1532739)) lt!1533104)))

(declare-fun b!4313378 () Bool)

(declare-fun e!2682907 () Bool)

(assert (=> b!4313378 (= e!2682908 e!2682907)))

(declare-fun res!1767830 () Bool)

(assert (=> b!4313378 (=> res!1767830 e!2682907)))

(assert (=> b!4313378 (= res!1767830 (= (h!53696 (toList!2452 lt!1532779)) (tuple2!46811 lt!1532744 lt!1532739)))))

(declare-fun b!4313379 () Bool)

(assert (=> b!4313379 (= e!2682907 (contains!10237 (t!355203 (toList!2452 lt!1532779)) (tuple2!46811 lt!1532744 lt!1532739)))))

(assert (= (and d!1268722 res!1767831) b!4313378))

(assert (= (and b!4313378 (not res!1767830)) b!4313379))

(declare-fun m!4906477 () Bool)

(assert (=> d!1268722 m!4906477))

(declare-fun m!4906479 () Bool)

(assert (=> d!1268722 m!4906479))

(declare-fun m!4906481 () Bool)

(assert (=> b!4313379 m!4906481))

(assert (=> b!4312865 d!1268722))

(declare-fun d!1268724 () Bool)

(declare-fun res!1767832 () Bool)

(declare-fun e!2682909 () Bool)

(assert (=> d!1268724 (=> res!1767832 e!2682909)))

(assert (=> d!1268724 (= res!1767832 (not ((_ is Cons!48251) (t!355202 lt!1532739))))))

(assert (=> d!1268724 (= (noDuplicateKeys!233 (t!355202 lt!1532739)) e!2682909)))

(declare-fun b!4313380 () Bool)

(declare-fun e!2682910 () Bool)

(assert (=> b!4313380 (= e!2682909 e!2682910)))

(declare-fun res!1767833 () Bool)

(assert (=> b!4313380 (=> (not res!1767833) (not e!2682910))))

(assert (=> b!4313380 (= res!1767833 (not (containsKey!340 (t!355202 (t!355202 lt!1532739)) (_1!26685 (h!53695 (t!355202 lt!1532739))))))))

(declare-fun b!4313381 () Bool)

(assert (=> b!4313381 (= e!2682910 (noDuplicateKeys!233 (t!355202 (t!355202 lt!1532739))))))

(assert (= (and d!1268724 (not res!1767832)) b!4313380))

(assert (= (and b!4313380 res!1767833) b!4313381))

(declare-fun m!4906483 () Bool)

(assert (=> b!4313380 m!4906483))

(declare-fun m!4906485 () Bool)

(assert (=> b!4313381 m!4906485))

(assert (=> b!4312914 d!1268724))

(declare-fun d!1268726 () Bool)

(assert (=> d!1268726 (dynLambda!20454 lambda!133152 (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850)))))

(declare-fun lt!1533107 () Unit!67411)

(declare-fun choose!26299 (List!48376 Int tuple2!46810) Unit!67411)

(assert (=> d!1268726 (= lt!1533107 (choose!26299 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lambda!133152 (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))))

(declare-fun e!2682913 () Bool)

(assert (=> d!1268726 e!2682913))

(declare-fun res!1767836 () Bool)

(assert (=> d!1268726 (=> (not res!1767836) (not e!2682913))))

(assert (=> d!1268726 (= res!1767836 (forall!8756 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lambda!133152))))

(assert (=> d!1268726 (= (forallContained!1509 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) lambda!133152 (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))) lt!1533107)))

(declare-fun b!4313384 () Bool)

(assert (=> b!4313384 (= e!2682913 (contains!10237 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))))

(assert (= (and d!1268726 res!1767836) b!4313384))

(declare-fun b_lambda!126783 () Bool)

(assert (=> (not b_lambda!126783) (not d!1268726)))

(declare-fun m!4906487 () Bool)

(assert (=> d!1268726 m!4906487))

(declare-fun m!4906489 () Bool)

(assert (=> d!1268726 m!4906489))

(declare-fun m!4906491 () Bool)

(assert (=> d!1268726 m!4906491))

(assert (=> b!4313384 m!4905989))

(assert (=> b!4312906 d!1268726))

(assert (=> b!4312906 d!1268572))

(assert (=> b!4312906 d!1268622))

(declare-fun d!1268728 () Bool)

(declare-fun lt!1533108 () Bool)

(assert (=> d!1268728 (= lt!1533108 (select (content!7557 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))))

(declare-fun e!2682915 () Bool)

(assert (=> d!1268728 (= lt!1533108 e!2682915)))

(declare-fun res!1767838 () Bool)

(assert (=> d!1268728 (=> (not res!1767838) (not e!2682915))))

(assert (=> d!1268728 (= res!1767838 ((_ is Cons!48252) (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))))

(assert (=> d!1268728 (= (contains!10237 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))) (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))) lt!1533108)))

(declare-fun b!4313385 () Bool)

(declare-fun e!2682914 () Bool)

(assert (=> b!4313385 (= e!2682915 e!2682914)))

(declare-fun res!1767837 () Bool)

(assert (=> b!4313385 (=> res!1767837 e!2682914)))

(assert (=> b!4313385 (= res!1767837 (= (h!53696 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))))

(declare-fun b!4313386 () Bool)

(assert (=> b!4313386 (= e!2682914 (contains!10237 (t!355203 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))) (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))))))

(assert (= (and d!1268728 res!1767838) b!4313385))

(assert (= (and b!4313385 (not res!1767837)) b!4313386))

(declare-fun m!4906493 () Bool)

(assert (=> d!1268728 m!4906493))

(declare-fun m!4906495 () Bool)

(assert (=> d!1268728 m!4906495))

(declare-fun m!4906497 () Bool)

(assert (=> b!4313386 m!4906497))

(assert (=> b!4312906 d!1268728))

(declare-fun d!1268730 () Bool)

(assert (=> d!1268730 (= (valid!3686 (_2!26687 lt!1532755)) (valid!3687 (v!42458 (underlying!9611 (_2!26687 lt!1532755)))))))

(declare-fun bs!605436 () Bool)

(assert (= bs!605436 d!1268730))

(declare-fun m!4906499 () Bool)

(assert (=> bs!605436 m!4906499))

(assert (=> b!4312831 d!1268730))

(declare-fun d!1268732 () Bool)

(declare-fun res!1767839 () Bool)

(declare-fun e!2682916 () Bool)

(assert (=> d!1268732 (=> res!1767839 e!2682916)))

(assert (=> d!1268732 (= res!1767839 ((_ is Nil!48251) lt!1532735))))

(assert (=> d!1268732 (= (forall!8757 lt!1532735 lambda!133149) e!2682916)))

(declare-fun b!4313387 () Bool)

(declare-fun e!2682917 () Bool)

(assert (=> b!4313387 (= e!2682916 e!2682917)))

(declare-fun res!1767840 () Bool)

(assert (=> b!4313387 (=> (not res!1767840) (not e!2682917))))

(assert (=> b!4313387 (= res!1767840 (dynLambda!20455 lambda!133149 (h!53695 lt!1532735)))))

(declare-fun b!4313388 () Bool)

(assert (=> b!4313388 (= e!2682917 (forall!8757 (t!355202 lt!1532735) lambda!133149))))

(assert (= (and d!1268732 (not res!1767839)) b!4313387))

(assert (= (and b!4313387 res!1767840) b!4313388))

(declare-fun b_lambda!126785 () Bool)

(assert (=> (not b_lambda!126785) (not b!4313387)))

(declare-fun m!4906501 () Bool)

(assert (=> b!4313387 m!4906501))

(declare-fun m!4906503 () Bool)

(assert (=> b!4313388 m!4906503))

(assert (=> d!1268566 d!1268732))

(declare-fun e!2682918 () Bool)

(declare-fun b!4313389 () Bool)

(declare-fun tp!1325291 () Bool)

(assert (=> b!4313389 (= e!2682918 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325291))))

(assert (=> b!4312927 (= tp!1325282 e!2682918)))

(assert (= (and b!4312927 ((_ is Cons!48251) (t!355202 mapValue!20937))) b!4313389))

(declare-fun b!4313390 () Bool)

(declare-fun tp!1325292 () Bool)

(declare-fun e!2682919 () Bool)

(assert (=> b!4313390 (= e!2682919 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325292))))

(assert (=> b!4312934 (= tp!1325288 e!2682919)))

(assert (= (and b!4312934 ((_ is Cons!48251) (t!355202 (zeroValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))) b!4313390))

(declare-fun condMapEmpty!20938 () Bool)

(declare-fun mapDefault!20938 () List!48375)

(assert (=> mapNonEmpty!20937 (= condMapEmpty!20938 (= mapRest!20937 ((as const (Array (_ BitVec 32) List!48375)) mapDefault!20938)))))

(declare-fun e!2682921 () Bool)

(declare-fun mapRes!20938 () Bool)

(assert (=> mapNonEmpty!20937 (= tp!1325284 (and e!2682921 mapRes!20938))))

(declare-fun b!4313391 () Bool)

(declare-fun tp!1325293 () Bool)

(declare-fun e!2682920 () Bool)

(assert (=> b!4313391 (= e!2682920 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325293))))

(declare-fun mapIsEmpty!20938 () Bool)

(assert (=> mapIsEmpty!20938 mapRes!20938))

(declare-fun mapNonEmpty!20938 () Bool)

(declare-fun tp!1325295 () Bool)

(assert (=> mapNonEmpty!20938 (= mapRes!20938 (and tp!1325295 e!2682920))))

(declare-fun mapRest!20938 () (Array (_ BitVec 32) List!48375))

(declare-fun mapValue!20938 () List!48375)

(declare-fun mapKey!20938 () (_ BitVec 32))

(assert (=> mapNonEmpty!20938 (= mapRest!20937 (store mapRest!20938 mapKey!20938 mapValue!20938))))

(declare-fun tp!1325294 () Bool)

(declare-fun b!4313392 () Bool)

(assert (=> b!4313392 (= e!2682921 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325294))))

(assert (= (and mapNonEmpty!20937 condMapEmpty!20938) mapIsEmpty!20938))

(assert (= (and mapNonEmpty!20937 (not condMapEmpty!20938)) mapNonEmpty!20938))

(assert (= (and mapNonEmpty!20938 ((_ is Cons!48251) mapValue!20938)) b!4313391))

(assert (= (and mapNonEmpty!20937 ((_ is Cons!48251) mapDefault!20938)) b!4313392))

(declare-fun m!4906505 () Bool)

(assert (=> mapNonEmpty!20938 m!4906505))

(declare-fun e!2682922 () Bool)

(declare-fun b!4313393 () Bool)

(declare-fun tp!1325296 () Bool)

(assert (=> b!4313393 (= e!2682922 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325296))))

(assert (=> tb!257313 (= result!314746 e!2682922)))

(assert (= (and tb!257313 ((_ is Cons!48251) (dynLambda!20453 (defaultEntry!5076 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308))))) lt!1532744))) b!4313393))

(declare-fun tp!1325297 () Bool)

(declare-fun e!2682923 () Bool)

(declare-fun b!4313394 () Bool)

(assert (=> b!4313394 (= e!2682923 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325297))))

(assert (=> b!4312935 (= tp!1325289 e!2682923)))

(assert (= (and b!4312935 ((_ is Cons!48251) (t!355202 (minValue!4950 (v!42458 (underlying!9611 (v!42459 (underlying!9612 thiss!42308)))))))) b!4313394))

(declare-fun e!2682924 () Bool)

(declare-fun b!4313395 () Bool)

(declare-fun tp!1325298 () Bool)

(assert (=> b!4313395 (= e!2682924 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325298))))

(assert (=> b!4312933 (= tp!1325287 e!2682924)))

(assert (= (and b!4312933 ((_ is Cons!48251) (t!355202 mapValue!20934))) b!4313395))

(declare-fun b!4313396 () Bool)

(declare-fun tp!1325299 () Bool)

(declare-fun e!2682925 () Bool)

(assert (=> b!4313396 (= e!2682925 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325299))))

(assert (=> b!4312928 (= tp!1325283 e!2682925)))

(assert (= (and b!4312928 ((_ is Cons!48251) (t!355202 mapDefault!20937))) b!4313396))

(declare-fun tp!1325300 () Bool)

(declare-fun e!2682926 () Bool)

(declare-fun b!4313397 () Bool)

(assert (=> b!4313397 (= e!2682926 (and tp_is_empty!23869 tp_is_empty!23871 tp!1325300))))

(assert (=> b!4312936 (= tp!1325290 e!2682926)))

(assert (= (and b!4312936 ((_ is Cons!48251) (t!355202 mapDefault!20934))) b!4313397))

(declare-fun b_lambda!126787 () Bool)

(assert (= b_lambda!126763 (or b!4312786 b_lambda!126787)))

(declare-fun bs!605437 () Bool)

(declare-fun d!1268734 () Bool)

(assert (= bs!605437 (and d!1268734 b!4312786)))

(assert (=> bs!605437 (= (dynLambda!20454 lambda!133132 (h!53696 (t!355203 (toList!2452 lt!1532741)))) (noDuplicateKeys!233 (_2!26686 (h!53696 (t!355203 (toList!2452 lt!1532741))))))))

(declare-fun m!4906507 () Bool)

(assert (=> bs!605437 m!4906507))

(assert (=> b!4313241 d!1268734))

(declare-fun b_lambda!126789 () Bool)

(assert (= b_lambda!126779 (or d!1268550 b_lambda!126789)))

(declare-fun bs!605438 () Bool)

(declare-fun d!1268736 () Bool)

(assert (= bs!605438 (and d!1268736 d!1268550)))

(assert (=> bs!605438 (= (dynLambda!20454 lambda!133144 (h!53696 (toList!2452 lt!1532770))) (noDuplicateKeys!233 (_2!26686 (h!53696 (toList!2452 lt!1532770)))))))

(declare-fun m!4906509 () Bool)

(assert (=> bs!605438 m!4906509))

(assert (=> b!4313371 d!1268736))

(declare-fun b_lambda!126791 () Bool)

(assert (= b_lambda!126783 (or b!4312906 b_lambda!126791)))

(declare-fun bs!605439 () Bool)

(declare-fun d!1268738 () Bool)

(assert (= bs!605439 (and d!1268738 b!4312906)))

(assert (=> bs!605439 (= (dynLambda!20454 lambda!133152 (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850))) (noDuplicateKeys!233 (_2!26686 (tuple2!46811 lt!1532850 (apply!11053 (v!42459 (underlying!9612 thiss!42308)) lt!1532850)))))))

(declare-fun m!4906511 () Bool)

(assert (=> bs!605439 m!4906511))

(assert (=> d!1268726 d!1268738))

(declare-fun b_lambda!126793 () Bool)

(assert (= b_lambda!126769 (or b!4312786 b_lambda!126793)))

(declare-fun bs!605440 () Bool)

(declare-fun d!1268740 () Bool)

(assert (= bs!605440 (and d!1268740 b!4312786)))

(assert (=> bs!605440 (= (dynLambda!20454 lambda!133132 (h!53696 (t!355203 (toList!2452 lt!1532737)))) (noDuplicateKeys!233 (_2!26686 (h!53696 (t!355203 (toList!2452 lt!1532737))))))))

(declare-fun m!4906513 () Bool)

(assert (=> bs!605440 m!4906513))

(assert (=> b!4313259 d!1268740))

(declare-fun b_lambda!126795 () Bool)

(assert (= b_lambda!126759 (or (and b!4312799 b_free!128723) b_lambda!126795)))

(declare-fun b_lambda!126797 () Bool)

(assert (= b_lambda!126773 (or d!1268560 b_lambda!126797)))

(declare-fun bs!605441 () Bool)

(declare-fun d!1268742 () Bool)

(assert (= bs!605441 (and d!1268742 d!1268560)))

(assert (=> bs!605441 (= (dynLambda!20454 lambda!133148 (h!53696 (toList!2452 lt!1532737))) (allKeysSameHash!206 (_2!26686 (h!53696 (toList!2452 lt!1532737))) (_1!26686 (h!53696 (toList!2452 lt!1532737))) (hashF!6763 thiss!42308)))))

(declare-fun m!4906515 () Bool)

(assert (=> bs!605441 m!4906515))

(assert (=> b!4313346 d!1268742))

(declare-fun b_lambda!126799 () Bool)

(assert (= b_lambda!126761 (or (and b!4312799 b_free!128723) b_lambda!126799)))

(declare-fun b_lambda!126801 () Bool)

(assert (= b_lambda!126757 (or (and b!4312799 b_free!128723) b_lambda!126801)))

(declare-fun b_lambda!126803 () Bool)

(assert (= b_lambda!126781 (or d!1268550 b_lambda!126803)))

(declare-fun bs!605442 () Bool)

(declare-fun d!1268744 () Bool)

(assert (= bs!605442 (and d!1268744 d!1268550)))

(assert (=> bs!605442 (= (dynLambda!20454 lambda!133144 (h!53696 (toList!2452 lt!1532737))) (noDuplicateKeys!233 (_2!26686 (h!53696 (toList!2452 lt!1532737)))))))

(assert (=> bs!605442 m!4906049))

(assert (=> b!4313376 d!1268744))

(declare-fun b_lambda!126805 () Bool)

(assert (= b_lambda!126771 (or d!1268534 b_lambda!126805)))

(declare-fun bs!605443 () Bool)

(declare-fun d!1268746 () Bool)

(assert (= bs!605443 (and d!1268746 d!1268534)))

(assert (=> bs!605443 (= (dynLambda!20454 lambda!133138 (h!53696 (toList!2452 lt!1532741))) (allKeysSameHash!206 (_2!26686 (h!53696 (toList!2452 lt!1532741))) (_1!26686 (h!53696 (toList!2452 lt!1532741))) (hashF!6763 thiss!42308)))))

(declare-fun m!4906517 () Bool)

(assert (=> bs!605443 m!4906517))

(assert (=> b!4313341 d!1268746))

(declare-fun b_lambda!126807 () Bool)

(assert (= b_lambda!126755 (or (and b!4312799 b_free!128723) b_lambda!126807)))

(declare-fun b_lambda!126809 () Bool)

(assert (= b_lambda!126777 (or b!4312919 b_lambda!126809)))

(declare-fun bs!605444 () Bool)

(declare-fun d!1268748 () Bool)

(assert (= bs!605444 (and d!1268748 b!4312919)))

(assert (=> bs!605444 (= (dynLambda!20454 lambda!133155 (h!53696 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308)))))) (noDuplicateKeys!233 (_2!26686 (h!53696 (toList!2452 (map!10258 (v!42459 (underlying!9612 thiss!42308))))))))))

(declare-fun m!4906519 () Bool)

(assert (=> bs!605444 m!4906519))

(assert (=> b!4313361 d!1268748))

(declare-fun b_lambda!126811 () Bool)

(assert (= b_lambda!126785 (or d!1268566 b_lambda!126811)))

(declare-fun bs!605445 () Bool)

(declare-fun d!1268750 () Bool)

(assert (= bs!605445 (and d!1268750 d!1268566)))

(assert (=> bs!605445 (= (dynLambda!20455 lambda!133149 (h!53695 lt!1532735)) (= (hash!1056 (hashF!6763 thiss!42308) (_1!26685 (h!53695 lt!1532735))) lt!1532744))))

(declare-fun m!4906521 () Bool)

(assert (=> bs!605445 m!4906521))

(assert (=> b!4313387 d!1268750))

(declare-fun b_lambda!126813 () Bool)

(assert (= b_lambda!126775 (or d!1268548 b_lambda!126813)))

(declare-fun bs!605446 () Bool)

(declare-fun d!1268752 () Bool)

(assert (= bs!605446 (and d!1268752 d!1268548)))

(assert (=> bs!605446 (= (dynLambda!20454 lambda!133139 (h!53696 (toList!2452 lt!1532737))) (allKeysSameHash!206 (_2!26686 (h!53696 (toList!2452 lt!1532737))) (_1!26686 (h!53696 (toList!2452 lt!1532737))) (hashF!6763 thiss!42308)))))

(assert (=> bs!605446 m!4906515))

(assert (=> b!4313354 d!1268752))

(declare-fun b_lambda!126815 () Bool)

(assert (= b_lambda!126767 (or d!1268532 b_lambda!126815)))

(declare-fun bs!605447 () Bool)

(declare-fun d!1268754 () Bool)

(assert (= bs!605447 (and d!1268754 d!1268532)))

(assert (=> bs!605447 (= (dynLambda!20455 lambda!133135 (h!53695 lt!1532739)) (= (hash!1056 (hashF!6763 thiss!42308) (_1!26685 (h!53695 lt!1532739))) lt!1532744))))

(declare-fun m!4906523 () Bool)

(assert (=> bs!605447 m!4906523))

(assert (=> b!4313253 d!1268754))

(declare-fun b_lambda!126817 () Bool)

(assert (= b_lambda!126765 (or d!1268552 b_lambda!126817)))

(declare-fun bs!605448 () Bool)

(declare-fun d!1268756 () Bool)

(assert (= bs!605448 (and d!1268756 d!1268552)))

(assert (=> bs!605448 (= (dynLambda!20455 lambda!133145 (h!53695 lt!1532746)) (= (hash!1056 (hashF!6763 thiss!42308) (_1!26685 (h!53695 lt!1532746))) lt!1532744))))

(declare-fun m!4906525 () Bool)

(assert (=> bs!605448 m!4906525))

(assert (=> b!4313251 d!1268756))

(check-sat tp_is_empty!23871 (not b!4313331) (not d!1268688) (not b_lambda!126817) (not bm!298352) (not b!4313021) (not b!4313389) (not b!4313233) (not b!4313022) (not b!4313011) (not b!4313168) (not d!1268590) (not bm!298356) (not b!4313265) (not b!4313218) (not d!1268608) tp_is_empty!23869 (not b_lambda!126793) (not d!1268594) (not b!4313375) (not b!4313069) (not b!4313065) (not d!1268714) (not d!1268628) (not b!4313352) (not b!4313070) (not b!4313360) (not b!4313356) (not d!1268646) (not b!4313283) (not b!4313396) (not b!4313274) (not bs!605438) (not mapNonEmpty!20938) (not b!4313061) (not d!1268638) (not bm!298354) (not bm!298340) (not b!4312984) (not d!1268706) (not b_lambda!126749) (not d!1268726) (not d!1268718) (not b!4313239) (not b!4313377) (not b_next!129427) (not b!4313231) (not d!1268730) (not b!4313355) (not b!4313026) (not b!4313395) (not bm!298269) (not b_lambda!126753) (not b!4313232) (not d!1268592) (not b_lambda!126789) (not d!1268690) (not b!4313012) (not d!1268596) (not b!4313203) (not d!1268600) (not b!4313272) (not d!1268624) (not bm!298337) (not d!1268672) (not b!4313202) (not b!4313372) (not b!4313071) (not b!4313230) (not b!4313024) (not bm!298268) (not b!4313368) (not d!1268606) (not b!4313025) (not b!4313018) (not b!4313380) (not d!1268632) (not d!1268598) (not b!4313236) (not bm!298349) (not b!4313031) (not d!1268678) (not d!1268710) (not b!4313196) (not d!1268650) (not b!4313167) (not b!4313252) (not b_lambda!126815) (not b!4313357) (not bm!298344) (not b_lambda!126797) (not b!4313358) (not d!1268722) (not b!4313053) (not b!4313379) (not d!1268602) (not b!4313229) (not b!4313349) (not b!4313067) (not b!4312976) (not b!4313333) (not b!4313342) (not bm!298358) (not b!4313207) (not tb!257315) (not b_lambda!126795) (not bm!298287) (not b!4313393) (not b!4313313) (not bm!298346) (not d!1268682) (not bs!605446) (not d!1268630) (not d!1268648) (not d!1268676) (not b!4313228) (not d!1268610) (not bm!298274) (not b!4312986) (not b!4313066) (not b!4313262) (not b!4313009) (not d!1268654) (not d!1268588) (not b!4313365) (not b!4312980) (not b!4313260) (not b!4313277) (not b!4313222) (not b!4313284) (not b!4313336) (not b_lambda!126787) (not d!1268616) (not b!4313363) (not d!1268644) (not b!4313334) (not bs!605441) (not b!4313242) (not b!4313015) (not b!4313362) (not b!4313013) (not b!4313391) (not b!4313314) (not b!4313397) (not b!4313312) (not bs!605440) (not b_lambda!126799) (not b!4313016) (not b!4313384) (not d!1268604) (not b!4313017) (not b_lambda!126805) (not b!4313257) (not bs!605444) (not b!4313388) (not b!4313245) (not bm!298283) (not b_lambda!126807) (not bm!298368) (not b_lambda!126801) (not b!4313178) (not b!4313183) (not b!4313234) (not b!4313072) (not b_lambda!126809) (not b!4313370) (not b!4313063) (not bs!605439) (not b!4313244) (not b_lambda!126751) (not b!4313381) (not b!4313254) (not b_lambda!126791) (not bs!605447) (not b!4313185) (not d!1268586) (not bs!605437) (not b!4313390) b_and!340179 (not b!4313340) (not d!1268614) (not b!4312975) (not b!4313347) (not b!4313060) (not b_next!129429) (not d!1268680) (not bs!605442) (not d!1268622) (not b!4313386) (not bm!298350) (not b!4313020) (not b_lambda!126803) (not b!4313394) (not b!4313345) (not b!4313366) (not b_lambda!126811) (not d!1268662) (not b!4313162) (not b!4313338) (not b!4313343) (not bs!605443) (not d!1268618) (not b!4313246) (not d!1268728) (not bs!605448) (not bm!298273) (not d!1268670) b_and!340189 (not b!4313243) (not bm!298338) (not bm!298286) (not bm!298355) (not bm!298341) (not b_lambda!126813) (not b!4313392) (not bs!605445) (not d!1268696) (not d!1268694))
(check-sat b_and!340189 b_and!340179 (not b_next!129429) (not b_next!129427))

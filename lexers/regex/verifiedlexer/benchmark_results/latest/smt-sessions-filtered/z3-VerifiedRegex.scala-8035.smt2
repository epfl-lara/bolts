; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415908 () Bool)

(assert start!415908)

(declare-fun b!4321139 () Bool)

(declare-fun b_free!128963 () Bool)

(declare-fun b_next!129667 () Bool)

(assert (=> b!4321139 (= b_free!128963 (not b_next!129667))))

(declare-fun tp!1326898 () Bool)

(declare-fun b_and!340505 () Bool)

(assert (=> b!4321139 (= tp!1326898 b_and!340505)))

(declare-fun b!4321127 () Bool)

(declare-fun b_free!128965 () Bool)

(declare-fun b_next!129669 () Bool)

(assert (=> b!4321127 (= b_free!128965 (not b_next!129669))))

(declare-fun tp!1326894 () Bool)

(declare-fun b_and!340507 () Bool)

(assert (=> b!4321127 (= tp!1326894 b_and!340507)))

(declare-fun e!2688378 () Bool)

(declare-fun e!2688370 () Bool)

(assert (=> b!4321127 (= e!2688378 (and e!2688370 tp!1326894))))

(declare-fun mapIsEmpty!21180 () Bool)

(declare-fun mapRes!21180 () Bool)

(assert (=> mapIsEmpty!21180 mapRes!21180))

(declare-fun b!4321128 () Bool)

(declare-fun e!2688372 () Bool)

(declare-fun e!2688373 () Bool)

(assert (=> b!4321128 (= e!2688372 e!2688373)))

(declare-fun res!1770901 () Bool)

(assert (=> b!4321128 (=> (not res!1770901) (not e!2688373))))

(declare-datatypes ((V!9826 0))(
  ( (V!9827 (val!15957 Int)) )
))
(declare-datatypes ((K!9624 0))(
  ( (K!9625 (val!15958 Int)) )
))
(declare-datatypes ((tuple2!47172 0))(
  ( (tuple2!47173 (_1!26872 K!9624) (_2!26872 V!9826)) )
))
(declare-datatypes ((List!48498 0))(
  ( (Nil!48374) (Cons!48374 (h!53834 tuple2!47172) (t!355377 List!48498)) )
))
(declare-datatypes ((array!17224 0))(
  ( (array!17225 (arr!7687 (Array (_ BitVec 32) (_ BitVec 64))) (size!35726 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4667 0))(
  ( (HashableExt!4666 (__x!30278 Int)) )
))
(declare-datatypes ((array!17226 0))(
  ( (array!17227 (arr!7688 (Array (_ BitVec 32) List!48498)) (size!35727 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9502 0))(
  ( (LongMapFixedSize!9503 (defaultEntry!5146 Int) (mask!13372 (_ BitVec 32)) (extraKeys!5008 (_ BitVec 32)) (zeroValue!5019 List!48498) (minValue!5019 List!48498) (_size!9546 (_ BitVec 32)) (_keys!5064 array!17224) (_values!5042 array!17226) (_vacant!4813 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18813 0))(
  ( (Cell!18814 (v!42748 LongMapFixedSize!9502)) )
))
(declare-datatypes ((MutLongMap!4751 0))(
  ( (LongMap!4751 (underlying!9731 Cell!18813)) (MutLongMapExt!4750 (__x!30279 Int)) )
))
(declare-datatypes ((Cell!18815 0))(
  ( (Cell!18816 (v!42749 MutLongMap!4751)) )
))
(declare-datatypes ((MutableMap!4657 0))(
  ( (MutableMapExt!4656 (__x!30280 Int)) (HashMap!4657 (underlying!9732 Cell!18815) (hashF!6917 Hashable!4667) (_size!9547 (_ BitVec 32)) (defaultValue!4828 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4657)

(declare-fun key!2048 () K!9624)

(declare-fun contains!10420 (MutableMap!4657 K!9624) Bool)

(assert (=> b!4321128 (= res!1770901 (not (contains!10420 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!47174 0))(
  ( (tuple2!47175 (_1!26873 (_ BitVec 64)) (_2!26873 List!48498)) )
))
(declare-datatypes ((List!48499 0))(
  ( (Nil!48375) (Cons!48375 (h!53835 tuple2!47174) (t!355378 List!48499)) )
))
(declare-datatypes ((ListLongMap!1167 0))(
  ( (ListLongMap!1168 (toList!2550 List!48499)) )
))
(declare-fun lt!1539251 () ListLongMap!1167)

(declare-fun map!10400 (MutLongMap!4751) ListLongMap!1167)

(assert (=> b!4321128 (= lt!1539251 (map!10400 (v!42749 (underlying!9732 thiss!42308))))))

(declare-datatypes ((ListMap!1827 0))(
  ( (ListMap!1828 (toList!2551 List!48498)) )
))
(declare-fun lt!1539246 () ListMap!1827)

(declare-fun map!10401 (MutableMap!4657) ListMap!1827)

(assert (=> b!4321128 (= lt!1539246 (map!10401 thiss!42308))))

(declare-fun res!1770898 () Bool)

(assert (=> start!415908 (=> (not res!1770898) (not e!2688372))))

(get-info :version)

(assert (=> start!415908 (= res!1770898 ((_ is HashMap!4657) thiss!42308))))

(assert (=> start!415908 e!2688372))

(assert (=> start!415908 e!2688378))

(declare-fun tp_is_empty!24101 () Bool)

(assert (=> start!415908 tp_is_empty!24101))

(declare-fun tp_is_empty!24103 () Bool)

(assert (=> start!415908 tp_is_empty!24103))

(declare-fun b!4321129 () Bool)

(declare-fun e!2688369 () Bool)

(assert (=> b!4321129 (= e!2688373 e!2688369)))

(declare-fun res!1770899 () Bool)

(assert (=> b!4321129 (=> (not res!1770899) (not e!2688369))))

(declare-fun lt!1539249 () (_ BitVec 64))

(declare-fun lt!1539245 () List!48498)

(declare-datatypes ((tuple2!47176 0))(
  ( (tuple2!47177 (_1!26874 Bool) (_2!26874 MutLongMap!4751)) )
))
(declare-fun update!527 (MutLongMap!4751 (_ BitVec 64) List!48498) tuple2!47176)

(assert (=> b!4321129 (= res!1770899 (_1!26874 (update!527 (v!42749 (underlying!9732 thiss!42308)) lt!1539249 lt!1539245)))))

(declare-fun lt!1539247 () List!48498)

(declare-fun v!9179 () V!9826)

(assert (=> b!4321129 (= lt!1539245 (Cons!48374 (tuple2!47173 key!2048 v!9179) lt!1539247))))

(declare-fun e!2688375 () List!48498)

(assert (=> b!4321129 (= lt!1539247 e!2688375)))

(declare-fun c!734909 () Bool)

(declare-fun contains!10421 (MutLongMap!4751 (_ BitVec 64)) Bool)

(assert (=> b!4321129 (= c!734909 (contains!10421 (v!42749 (underlying!9732 thiss!42308)) lt!1539249))))

(declare-fun hash!1173 (Hashable!4667 K!9624) (_ BitVec 64))

(assert (=> b!4321129 (= lt!1539249 (hash!1173 (hashF!6917 thiss!42308) key!2048))))

(declare-fun b!4321130 () Bool)

(assert (=> b!4321130 (= e!2688375 Nil!48374)))

(declare-fun b!4321131 () Bool)

(declare-fun e!2688367 () Bool)

(assert (=> b!4321131 (= e!2688369 (not e!2688367))))

(declare-fun res!1770902 () Bool)

(assert (=> b!4321131 (=> res!1770902 e!2688367)))

(declare-fun lambda!133824 () Int)

(declare-fun forall!8810 (List!48499 Int) Bool)

(assert (=> b!4321131 (= res!1770902 (not (forall!8810 (toList!2550 lt!1539251) lambda!133824)))))

(declare-fun e!2688379 () Bool)

(assert (=> b!4321131 e!2688379))

(declare-fun res!1770897 () Bool)

(assert (=> b!4321131 (=> (not res!1770897) (not e!2688379))))

(declare-fun lt!1539243 () ListLongMap!1167)

(assert (=> b!4321131 (= res!1770897 (forall!8810 (toList!2550 lt!1539243) lambda!133824))))

(declare-fun +!329 (ListLongMap!1167 tuple2!47174) ListLongMap!1167)

(assert (=> b!4321131 (= lt!1539243 (+!329 lt!1539251 (tuple2!47175 lt!1539249 lt!1539245)))))

(declare-datatypes ((Unit!67760 0))(
  ( (Unit!67761) )
))
(declare-fun lt!1539253 () Unit!67760)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!179 (ListLongMap!1167 (_ BitVec 64) List!48498 Hashable!4667) Unit!67760)

(assert (=> b!4321131 (= lt!1539253 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!179 lt!1539251 lt!1539249 lt!1539245 (hashF!6917 thiss!42308)))))

(declare-fun lt!1539254 () Unit!67760)

(declare-fun e!2688376 () Unit!67760)

(assert (=> b!4321131 (= lt!1539254 e!2688376)))

(declare-fun c!734908 () Bool)

(declare-fun isEmpty!28117 (List!48498) Bool)

(assert (=> b!4321131 (= c!734908 (not (isEmpty!28117 lt!1539247)))))

(declare-fun b!4321132 () Bool)

(declare-fun e!2688371 () Bool)

(declare-fun e!2688368 () Bool)

(assert (=> b!4321132 (= e!2688371 e!2688368)))

(declare-fun b!4321133 () Bool)

(declare-fun allKeysSameHashInMap!387 (ListLongMap!1167 Hashable!4667) Bool)

(assert (=> b!4321133 (= e!2688379 (allKeysSameHashInMap!387 lt!1539243 (hashF!6917 thiss!42308)))))

(declare-fun b!4321134 () Bool)

(declare-fun res!1770900 () Bool)

(assert (=> b!4321134 (=> (not res!1770900) (not e!2688372))))

(declare-fun valid!3762 (MutableMap!4657) Bool)

(assert (=> b!4321134 (= res!1770900 (valid!3762 thiss!42308))))

(declare-fun b!4321135 () Bool)

(declare-fun e!2688374 () Bool)

(assert (=> b!4321135 (= e!2688368 e!2688374)))

(declare-fun b!4321136 () Bool)

(declare-fun lt!1539244 () Unit!67760)

(assert (=> b!4321136 (= e!2688376 lt!1539244)))

(declare-fun lt!1539252 () Unit!67760)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!227 (List!48499 (_ BitVec 64) List!48498 Hashable!4667) Unit!67760)

(assert (=> b!4321136 (= lt!1539252 (lemmaInLongMapAllKeySameHashThenForTuple!227 (toList!2550 lt!1539251) lt!1539249 lt!1539247 (hashF!6917 thiss!42308)))))

(declare-fun allKeysSameHash!242 (List!48498 (_ BitVec 64) Hashable!4667) Bool)

(assert (=> b!4321136 (allKeysSameHash!242 lt!1539247 lt!1539249 (hashF!6917 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!218 (List!48498 K!9624 (_ BitVec 64) Hashable!4667) Unit!67760)

(assert (=> b!4321136 (= lt!1539244 (lemmaRemovePairForKeyPreservesHash!218 lt!1539247 key!2048 lt!1539249 (hashF!6917 thiss!42308)))))

(declare-fun removePairForKey!265 (List!48498 K!9624) List!48498)

(assert (=> b!4321136 (allKeysSameHash!242 (removePairForKey!265 lt!1539247 key!2048) lt!1539249 (hashF!6917 thiss!42308))))

(declare-fun mapNonEmpty!21180 () Bool)

(declare-fun tp!1326895 () Bool)

(declare-fun tp!1326897 () Bool)

(assert (=> mapNonEmpty!21180 (= mapRes!21180 (and tp!1326895 tp!1326897))))

(declare-fun mapValue!21180 () List!48498)

(declare-fun mapKey!21180 () (_ BitVec 32))

(declare-fun mapRest!21180 () (Array (_ BitVec 32) List!48498))

(assert (=> mapNonEmpty!21180 (= (arr!7688 (_values!5042 (v!42748 (underlying!9731 (v!42749 (underlying!9732 thiss!42308)))))) (store mapRest!21180 mapKey!21180 mapValue!21180))))

(declare-fun b!4321137 () Bool)

(declare-fun apply!11137 (MutLongMap!4751 (_ BitVec 64)) List!48498)

(assert (=> b!4321137 (= e!2688375 (apply!11137 (v!42749 (underlying!9732 thiss!42308)) lt!1539249))))

(declare-fun b!4321138 () Bool)

(declare-fun Unit!67762 () Unit!67760)

(assert (=> b!4321138 (= e!2688376 Unit!67762)))

(declare-fun tp!1326896 () Bool)

(declare-fun e!2688366 () Bool)

(declare-fun tp!1326893 () Bool)

(declare-fun array_inv!5533 (array!17224) Bool)

(declare-fun array_inv!5534 (array!17226) Bool)

(assert (=> b!4321139 (= e!2688374 (and tp!1326898 tp!1326893 tp!1326896 (array_inv!5533 (_keys!5064 (v!42748 (underlying!9731 (v!42749 (underlying!9732 thiss!42308)))))) (array_inv!5534 (_values!5042 (v!42748 (underlying!9731 (v!42749 (underlying!9732 thiss!42308)))))) e!2688366))))

(declare-fun b!4321140 () Bool)

(assert (=> b!4321140 (= e!2688367 true)))

(declare-fun lt!1539248 () Bool)

(assert (=> b!4321140 (= lt!1539248 (allKeysSameHashInMap!387 lt!1539251 (hashF!6917 thiss!42308)))))

(declare-fun b!4321141 () Bool)

(declare-fun lt!1539250 () MutLongMap!4751)

(assert (=> b!4321141 (= e!2688370 (and e!2688371 ((_ is LongMap!4751) lt!1539250)))))

(assert (=> b!4321141 (= lt!1539250 (v!42749 (underlying!9732 thiss!42308)))))

(declare-fun b!4321142 () Bool)

(declare-fun tp!1326892 () Bool)

(assert (=> b!4321142 (= e!2688366 (and tp!1326892 mapRes!21180))))

(declare-fun condMapEmpty!21180 () Bool)

(declare-fun mapDefault!21180 () List!48498)

(assert (=> b!4321142 (= condMapEmpty!21180 (= (arr!7688 (_values!5042 (v!42748 (underlying!9731 (v!42749 (underlying!9732 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48498)) mapDefault!21180)))))

(assert (= (and start!415908 res!1770898) b!4321134))

(assert (= (and b!4321134 res!1770900) b!4321128))

(assert (= (and b!4321128 res!1770901) b!4321129))

(assert (= (and b!4321129 c!734909) b!4321137))

(assert (= (and b!4321129 (not c!734909)) b!4321130))

(assert (= (and b!4321129 res!1770899) b!4321131))

(assert (= (and b!4321131 c!734908) b!4321136))

(assert (= (and b!4321131 (not c!734908)) b!4321138))

(assert (= (and b!4321131 res!1770897) b!4321133))

(assert (= (and b!4321131 (not res!1770902)) b!4321140))

(assert (= (and b!4321142 condMapEmpty!21180) mapIsEmpty!21180))

(assert (= (and b!4321142 (not condMapEmpty!21180)) mapNonEmpty!21180))

(assert (= b!4321139 b!4321142))

(assert (= b!4321135 b!4321139))

(assert (= b!4321132 b!4321135))

(assert (= (and b!4321141 ((_ is LongMap!4751) (v!42749 (underlying!9732 thiss!42308)))) b!4321132))

(assert (= b!4321127 b!4321141))

(assert (= (and start!415908 ((_ is HashMap!4657) thiss!42308)) b!4321127))

(declare-fun m!4915109 () Bool)

(assert (=> b!4321134 m!4915109))

(declare-fun m!4915111 () Bool)

(assert (=> b!4321131 m!4915111))

(declare-fun m!4915113 () Bool)

(assert (=> b!4321131 m!4915113))

(declare-fun m!4915115 () Bool)

(assert (=> b!4321131 m!4915115))

(declare-fun m!4915117 () Bool)

(assert (=> b!4321131 m!4915117))

(declare-fun m!4915119 () Bool)

(assert (=> b!4321131 m!4915119))

(declare-fun m!4915121 () Bool)

(assert (=> b!4321129 m!4915121))

(declare-fun m!4915123 () Bool)

(assert (=> b!4321129 m!4915123))

(declare-fun m!4915125 () Bool)

(assert (=> b!4321129 m!4915125))

(declare-fun m!4915127 () Bool)

(assert (=> b!4321139 m!4915127))

(declare-fun m!4915129 () Bool)

(assert (=> b!4321139 m!4915129))

(declare-fun m!4915131 () Bool)

(assert (=> b!4321128 m!4915131))

(declare-fun m!4915133 () Bool)

(assert (=> b!4321128 m!4915133))

(declare-fun m!4915135 () Bool)

(assert (=> b!4321128 m!4915135))

(declare-fun m!4915137 () Bool)

(assert (=> b!4321137 m!4915137))

(declare-fun m!4915139 () Bool)

(assert (=> b!4321136 m!4915139))

(declare-fun m!4915141 () Bool)

(assert (=> b!4321136 m!4915141))

(declare-fun m!4915143 () Bool)

(assert (=> b!4321136 m!4915143))

(declare-fun m!4915145 () Bool)

(assert (=> b!4321136 m!4915145))

(assert (=> b!4321136 m!4915139))

(declare-fun m!4915147 () Bool)

(assert (=> b!4321136 m!4915147))

(declare-fun m!4915149 () Bool)

(assert (=> b!4321140 m!4915149))

(declare-fun m!4915151 () Bool)

(assert (=> mapNonEmpty!21180 m!4915151))

(declare-fun m!4915153 () Bool)

(assert (=> b!4321133 m!4915153))

(check-sat (not b!4321142) b_and!340505 (not b_next!129667) (not b!4321133) (not b!4321139) (not mapNonEmpty!21180) (not b!4321136) (not b!4321129) (not b!4321128) tp_is_empty!24101 (not b!4321137) (not b!4321131) (not b!4321134) b_and!340507 (not b_next!129669) (not b!4321140) tp_is_empty!24103)
(check-sat b_and!340505 b_and!340507 (not b_next!129669) (not b_next!129667))

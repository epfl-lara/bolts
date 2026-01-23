; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414540 () Bool)

(assert start!414540)

(declare-fun b!4312182 () Bool)

(declare-fun b_free!128691 () Bool)

(declare-fun b_next!129395 () Bool)

(assert (=> b!4312182 (= b_free!128691 (not b_next!129395))))

(declare-fun tp!1325075 () Bool)

(declare-fun b_and!340141 () Bool)

(assert (=> b!4312182 (= tp!1325075 b_and!340141)))

(declare-fun b!4312189 () Bool)

(declare-fun b_free!128693 () Bool)

(declare-fun b_next!129397 () Bool)

(assert (=> b!4312189 (= b_free!128693 (not b_next!129397))))

(declare-fun tp!1325076 () Bool)

(declare-fun b_and!340143 () Bool)

(assert (=> b!4312189 (= tp!1325076 b_and!340143)))

(declare-fun b!4312177 () Bool)

(declare-fun e!2682053 () Bool)

(declare-fun e!2682047 () Bool)

(assert (=> b!4312177 (= e!2682053 e!2682047)))

(declare-fun b!4312178 () Bool)

(declare-fun e!2682055 () Bool)

(declare-datatypes ((K!9454 0))(
  ( (K!9455 (val!15821 Int)) )
))
(declare-datatypes ((V!9656 0))(
  ( (V!9657 (val!15822 Int)) )
))
(declare-datatypes ((tuple2!46756 0))(
  ( (tuple2!46757 (_1!26659 K!9454) (_2!26659 V!9656)) )
))
(declare-datatypes ((List!48359 0))(
  ( (Nil!48235) (Cons!48235 (h!53677 tuple2!46756) (t!355182 List!48359)) )
))
(declare-fun lt!1532226 () List!48359)

(declare-fun noDuplicateKeys!226 (List!48359) Bool)

(assert (=> b!4312178 (= e!2682055 (noDuplicateKeys!226 lt!1532226))))

(declare-fun b!4312179 () Bool)

(declare-fun e!2682051 () Bool)

(declare-fun e!2682052 () Bool)

(assert (=> b!4312179 (= e!2682051 e!2682052)))

(declare-fun res!1767293 () Bool)

(assert (=> b!4312179 (=> (not res!1767293) (not e!2682052))))

(declare-fun lt!1532232 () (_ BitVec 64))

(declare-datatypes ((array!16908 0))(
  ( (array!16909 (arr!7551 (Array (_ BitVec 32) (_ BitVec 64))) (size!35590 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4599 0))(
  ( (HashableExt!4598 (__x!30074 Int)) )
))
(declare-datatypes ((array!16910 0))(
  ( (array!16911 (arr!7552 (Array (_ BitVec 32) List!48359)) (size!35591 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9366 0))(
  ( (LongMapFixedSize!9367 (defaultEntry!5068 Int) (mask!13253 (_ BitVec 32)) (extraKeys!4932 (_ BitVec 32)) (zeroValue!4942 List!48359) (minValue!4942 List!48359) (_size!9409 (_ BitVec 32)) (_keys!4983 array!16908) (_values!4964 array!16910) (_vacant!4744 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18541 0))(
  ( (Cell!18542 (v!42430 LongMapFixedSize!9366)) )
))
(declare-datatypes ((MutLongMap!4683 0))(
  ( (LongMap!4683 (underlying!9595 Cell!18541)) (MutLongMapExt!4682 (__x!30075 Int)) )
))
(declare-datatypes ((Cell!18543 0))(
  ( (Cell!18544 (v!42431 MutLongMap!4683)) )
))
(declare-datatypes ((MutableMap!4589 0))(
  ( (MutableMapExt!4588 (__x!30076 Int)) (HashMap!4589 (underlying!9596 Cell!18543) (hashF!6745 Hashable!4599) (_size!9410 (_ BitVec 32)) (defaultValue!4760 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4589)

(declare-datatypes ((tuple2!46758 0))(
  ( (tuple2!46759 (_1!26660 Bool) (_2!26660 MutLongMap!4683)) )
))
(declare-fun update!455 (MutLongMap!4683 (_ BitVec 64) List!48359) tuple2!46758)

(assert (=> b!4312179 (= res!1767293 (_1!26660 (update!455 (v!42431 (underlying!9596 thiss!42308)) lt!1532232 lt!1532226)))))

(declare-fun v!9179 () V!9656)

(declare-fun key!2048 () K!9454)

(declare-fun lt!1532230 () List!48359)

(assert (=> b!4312179 (= lt!1532226 (Cons!48235 (tuple2!46757 key!2048 v!9179) lt!1532230))))

(declare-fun lt!1532233 () List!48359)

(declare-fun removePairForKey!224 (List!48359 K!9454) List!48359)

(assert (=> b!4312179 (= lt!1532230 (removePairForKey!224 lt!1532233 key!2048))))

(declare-fun apply!11041 (MutLongMap!4683 (_ BitVec 64)) List!48359)

(assert (=> b!4312179 (= lt!1532233 (apply!11041 (v!42431 (underlying!9596 thiss!42308)) lt!1532232))))

(declare-fun hash!1040 (Hashable!4599 K!9454) (_ BitVec 64))

(assert (=> b!4312179 (= lt!1532232 (hash!1040 (hashF!6745 thiss!42308) key!2048))))

(declare-fun b!4312180 () Bool)

(declare-fun e!2682054 () Bool)

(assert (=> b!4312180 (= e!2682054 e!2682051)))

(declare-fun res!1767290 () Bool)

(assert (=> b!4312180 (=> (not res!1767290) (not e!2682051))))

(declare-fun contains!10218 (MutableMap!4589 K!9454) Bool)

(assert (=> b!4312180 (= res!1767290 (contains!10218 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46760 0))(
  ( (tuple2!46761 (_1!26661 (_ BitVec 64)) (_2!26661 List!48359)) )
))
(declare-datatypes ((List!48360 0))(
  ( (Nil!48236) (Cons!48236 (h!53678 tuple2!46760) (t!355183 List!48360)) )
))
(declare-datatypes ((ListLongMap!1049 0))(
  ( (ListLongMap!1050 (toList!2436 List!48360)) )
))
(declare-fun lt!1532229 () ListLongMap!1049)

(declare-fun map!10236 (MutLongMap!4683) ListLongMap!1049)

(assert (=> b!4312180 (= lt!1532229 (map!10236 (v!42431 (underlying!9596 thiss!42308))))))

(declare-datatypes ((ListMap!1717 0))(
  ( (ListMap!1718 (toList!2437 List!48359)) )
))
(declare-fun lt!1532235 () ListMap!1717)

(declare-fun map!10237 (MutableMap!4589) ListMap!1717)

(assert (=> b!4312180 (= lt!1532235 (map!10237 thiss!42308))))

(declare-fun b!4312181 () Bool)

(declare-fun e!2682050 () Bool)

(declare-fun e!2682049 () Bool)

(declare-fun lt!1532227 () MutLongMap!4683)

(get-info :version)

(assert (=> b!4312181 (= e!2682050 (and e!2682049 ((_ is LongMap!4683) lt!1532227)))))

(assert (=> b!4312181 (= lt!1532227 (v!42431 (underlying!9596 thiss!42308)))))

(declare-fun e!2682048 () Bool)

(declare-fun tp!1325077 () Bool)

(declare-fun tp!1325072 () Bool)

(declare-fun array_inv!5421 (array!16908) Bool)

(declare-fun array_inv!5422 (array!16910) Bool)

(assert (=> b!4312182 (= e!2682047 (and tp!1325075 tp!1325072 tp!1325077 (array_inv!5421 (_keys!4983 (v!42430 (underlying!9595 (v!42431 (underlying!9596 thiss!42308)))))) (array_inv!5422 (_values!4964 (v!42430 (underlying!9595 (v!42431 (underlying!9596 thiss!42308)))))) e!2682048))))

(declare-fun b!4312183 () Bool)

(assert (=> b!4312183 (= e!2682049 e!2682053)))

(declare-fun b!4312184 () Bool)

(declare-fun tp!1325073 () Bool)

(declare-fun mapRes!20904 () Bool)

(assert (=> b!4312184 (= e!2682048 (and tp!1325073 mapRes!20904))))

(declare-fun condMapEmpty!20904 () Bool)

(declare-fun mapDefault!20904 () List!48359)

(assert (=> b!4312184 (= condMapEmpty!20904 (= (arr!7552 (_values!4964 (v!42430 (underlying!9595 (v!42431 (underlying!9596 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48359)) mapDefault!20904)))))

(declare-fun b!4312185 () Bool)

(declare-fun e!2682044 () Bool)

(declare-fun lt!1532236 () ListLongMap!1049)

(declare-fun allKeysSameHashInMap!345 (ListLongMap!1049 Hashable!4599) Bool)

(assert (=> b!4312185 (= e!2682044 (allKeysSameHashInMap!345 lt!1532236 (hashF!6745 thiss!42308)))))

(declare-fun mapNonEmpty!20904 () Bool)

(declare-fun tp!1325074 () Bool)

(declare-fun tp!1325071 () Bool)

(assert (=> mapNonEmpty!20904 (= mapRes!20904 (and tp!1325074 tp!1325071))))

(declare-fun mapRest!20904 () (Array (_ BitVec 32) List!48359))

(declare-fun mapKey!20904 () (_ BitVec 32))

(declare-fun mapValue!20904 () List!48359)

(assert (=> mapNonEmpty!20904 (= (arr!7552 (_values!4964 (v!42430 (underlying!9595 (v!42431 (underlying!9596 thiss!42308)))))) (store mapRest!20904 mapKey!20904 mapValue!20904))))

(declare-fun b!4312187 () Bool)

(declare-fun res!1767287 () Bool)

(assert (=> b!4312187 (=> (not res!1767287) (not e!2682055))))

(declare-fun containsKey!331 (List!48359 K!9454) Bool)

(assert (=> b!4312187 (= res!1767287 (not (containsKey!331 lt!1532230 key!2048)))))

(declare-fun b!4312188 () Bool)

(declare-fun res!1767291 () Bool)

(assert (=> b!4312188 (=> (not res!1767291) (not e!2682054))))

(declare-fun valid!3675 (MutableMap!4589) Bool)

(assert (=> b!4312188 (= res!1767291 (valid!3675 thiss!42308))))

(declare-fun b!4312186 () Bool)

(assert (=> b!4312186 (= e!2682052 (not true))))

(assert (=> b!4312186 e!2682044))

(declare-fun res!1767289 () Bool)

(assert (=> b!4312186 (=> (not res!1767289) (not e!2682044))))

(declare-fun lambda!133049 () Int)

(declare-fun forall!8747 (List!48360 Int) Bool)

(assert (=> b!4312186 (= res!1767289 (forall!8747 (toList!2436 lt!1532236) lambda!133049))))

(declare-fun +!276 (ListLongMap!1049 tuple2!46760) ListLongMap!1049)

(assert (=> b!4312186 (= lt!1532236 (+!276 lt!1532229 (tuple2!46761 lt!1532232 lt!1532226)))))

(declare-datatypes ((Unit!67387 0))(
  ( (Unit!67388) )
))
(declare-fun lt!1532231 () Unit!67387)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!148 (ListLongMap!1049 (_ BitVec 64) List!48359 Hashable!4599) Unit!67387)

(assert (=> b!4312186 (= lt!1532231 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!148 lt!1532229 lt!1532232 lt!1532226 (hashF!6745 thiss!42308)))))

(assert (=> b!4312186 e!2682055))

(declare-fun res!1767288 () Bool)

(assert (=> b!4312186 (=> (not res!1767288) (not e!2682055))))

(assert (=> b!4312186 (= res!1767288 (noDuplicateKeys!226 lt!1532230))))

(declare-fun lt!1532234 () Unit!67387)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!174 (List!48359 K!9454) Unit!67387)

(assert (=> b!4312186 (= lt!1532234 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!174 lt!1532233 key!2048))))

(declare-fun allKeysSameHash!199 (List!48359 (_ BitVec 64) Hashable!4599) Bool)

(assert (=> b!4312186 (allKeysSameHash!199 lt!1532230 lt!1532232 (hashF!6745 thiss!42308))))

(declare-fun lt!1532228 () Unit!67387)

(declare-fun lemmaRemovePairForKeyPreservesHash!179 (List!48359 K!9454 (_ BitVec 64) Hashable!4599) Unit!67387)

(assert (=> b!4312186 (= lt!1532228 (lemmaRemovePairForKeyPreservesHash!179 lt!1532233 key!2048 lt!1532232 (hashF!6745 thiss!42308)))))

(assert (=> b!4312186 (allKeysSameHash!199 lt!1532233 lt!1532232 (hashF!6745 thiss!42308))))

(declare-fun lt!1532225 () Unit!67387)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!186 (List!48360 (_ BitVec 64) List!48359 Hashable!4599) Unit!67387)

(assert (=> b!4312186 (= lt!1532225 (lemmaInLongMapAllKeySameHashThenForTuple!186 (toList!2436 lt!1532229) lt!1532232 lt!1532233 (hashF!6745 thiss!42308)))))

(declare-fun res!1767292 () Bool)

(assert (=> start!414540 (=> (not res!1767292) (not e!2682054))))

(assert (=> start!414540 (= res!1767292 ((_ is HashMap!4589) thiss!42308))))

(assert (=> start!414540 e!2682054))

(declare-fun e!2682046 () Bool)

(assert (=> start!414540 e!2682046))

(declare-fun tp_is_empty!23837 () Bool)

(assert (=> start!414540 tp_is_empty!23837))

(declare-fun tp_is_empty!23839 () Bool)

(assert (=> start!414540 tp_is_empty!23839))

(assert (=> b!4312189 (= e!2682046 (and e!2682050 tp!1325076))))

(declare-fun mapIsEmpty!20904 () Bool)

(assert (=> mapIsEmpty!20904 mapRes!20904))

(assert (= (and start!414540 res!1767292) b!4312188))

(assert (= (and b!4312188 res!1767291) b!4312180))

(assert (= (and b!4312180 res!1767290) b!4312179))

(assert (= (and b!4312179 res!1767293) b!4312186))

(assert (= (and b!4312186 res!1767288) b!4312187))

(assert (= (and b!4312187 res!1767287) b!4312178))

(assert (= (and b!4312186 res!1767289) b!4312185))

(assert (= (and b!4312184 condMapEmpty!20904) mapIsEmpty!20904))

(assert (= (and b!4312184 (not condMapEmpty!20904)) mapNonEmpty!20904))

(assert (= b!4312182 b!4312184))

(assert (= b!4312177 b!4312182))

(assert (= b!4312183 b!4312177))

(assert (= (and b!4312181 ((_ is LongMap!4683) (v!42431 (underlying!9596 thiss!42308)))) b!4312183))

(assert (= b!4312189 b!4312181))

(assert (= (and start!414540 ((_ is HashMap!4589) thiss!42308)) b!4312189))

(declare-fun m!4905145 () Bool)

(assert (=> b!4312188 m!4905145))

(declare-fun m!4905147 () Bool)

(assert (=> b!4312186 m!4905147))

(declare-fun m!4905149 () Bool)

(assert (=> b!4312186 m!4905149))

(declare-fun m!4905151 () Bool)

(assert (=> b!4312186 m!4905151))

(declare-fun m!4905153 () Bool)

(assert (=> b!4312186 m!4905153))

(declare-fun m!4905155 () Bool)

(assert (=> b!4312186 m!4905155))

(declare-fun m!4905157 () Bool)

(assert (=> b!4312186 m!4905157))

(declare-fun m!4905159 () Bool)

(assert (=> b!4312186 m!4905159))

(declare-fun m!4905161 () Bool)

(assert (=> b!4312186 m!4905161))

(declare-fun m!4905163 () Bool)

(assert (=> b!4312186 m!4905163))

(declare-fun m!4905165 () Bool)

(assert (=> b!4312178 m!4905165))

(declare-fun m!4905167 () Bool)

(assert (=> mapNonEmpty!20904 m!4905167))

(declare-fun m!4905169 () Bool)

(assert (=> b!4312185 m!4905169))

(declare-fun m!4905171 () Bool)

(assert (=> b!4312179 m!4905171))

(declare-fun m!4905173 () Bool)

(assert (=> b!4312179 m!4905173))

(declare-fun m!4905175 () Bool)

(assert (=> b!4312179 m!4905175))

(declare-fun m!4905177 () Bool)

(assert (=> b!4312179 m!4905177))

(declare-fun m!4905179 () Bool)

(assert (=> b!4312182 m!4905179))

(declare-fun m!4905181 () Bool)

(assert (=> b!4312182 m!4905181))

(declare-fun m!4905183 () Bool)

(assert (=> b!4312180 m!4905183))

(declare-fun m!4905185 () Bool)

(assert (=> b!4312180 m!4905185))

(declare-fun m!4905187 () Bool)

(assert (=> b!4312180 m!4905187))

(declare-fun m!4905189 () Bool)

(assert (=> b!4312187 m!4905189))

(check-sat (not b!4312178) (not b!4312186) (not b!4312179) (not b_next!129395) (not b!4312187) (not b!4312184) b_and!340143 tp_is_empty!23837 (not b!4312188) tp_is_empty!23839 (not b!4312180) b_and!340141 (not b!4312185) (not mapNonEmpty!20904) (not b!4312182) (not b_next!129397))
(check-sat b_and!340141 b_and!340143 (not b_next!129397) (not b_next!129395))

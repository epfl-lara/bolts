; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80026 () Bool)

(assert start!80026)

(declare-fun b!940328 () Bool)

(declare-fun b_free!17853 () Bool)

(declare-fun b_next!17853 () Bool)

(assert (=> b!940328 (= b_free!17853 (not b_next!17853))))

(declare-fun tp!62035 () Bool)

(declare-fun b_and!29283 () Bool)

(assert (=> b!940328 (= tp!62035 b_and!29283)))

(declare-fun b!940326 () Bool)

(declare-fun res!632387 () Bool)

(declare-fun e!528473 () Bool)

(assert (=> b!940326 (=> res!632387 e!528473)))

(declare-datatypes ((V!32113 0))(
  ( (V!32114 (val!10231 Int)) )
))
(declare-datatypes ((ValueCell!9699 0))(
  ( (ValueCellFull!9699 (v!12762 V!32113)) (EmptyCell!9699) )
))
(declare-datatypes ((array!56692 0))(
  ( (array!56693 (arr!27277 (Array (_ BitVec 32) ValueCell!9699)) (size!27739 (_ BitVec 32))) )
))
(declare-datatypes ((array!56694 0))(
  ( (array!56695 (arr!27278 (Array (_ BitVec 32) (_ BitVec 64))) (size!27740 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4548 0))(
  ( (LongMapFixedSize!4549 (defaultEntry!5565 Int) (mask!27099 (_ BitVec 32)) (extraKeys!5297 (_ BitVec 32)) (zeroValue!5401 V!32113) (minValue!5401 V!32113) (_size!2329 (_ BitVec 32)) (_keys!10411 array!56694) (_values!5588 array!56692) (_vacant!2329 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4548)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56694 (_ BitVec 32)) Bool)

(assert (=> b!940326 (= res!632387 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10411 thiss!1141) (mask!27099 thiss!1141))))))

(declare-fun b!940327 () Bool)

(assert (=> b!940327 (= e!528473 true)))

(declare-fun lt!424666 () Bool)

(declare-datatypes ((List!19321 0))(
  ( (Nil!19318) (Cons!19317 (h!20463 (_ BitVec 64)) (t!27644 List!19321)) )
))
(declare-fun arrayNoDuplicates!0 (array!56694 (_ BitVec 32) List!19321) Bool)

(assert (=> b!940327 (= lt!424666 (arrayNoDuplicates!0 (_keys!10411 thiss!1141) #b00000000000000000000000000000000 Nil!19318))))

(declare-fun e!528480 () Bool)

(declare-fun tp_is_empty!20361 () Bool)

(declare-fun e!528477 () Bool)

(declare-fun array_inv!21156 (array!56694) Bool)

(declare-fun array_inv!21157 (array!56692) Bool)

(assert (=> b!940328 (= e!528477 (and tp!62035 tp_is_empty!20361 (array_inv!21156 (_keys!10411 thiss!1141)) (array_inv!21157 (_values!5588 thiss!1141)) e!528480))))

(declare-fun res!632388 () Bool)

(declare-fun e!528478 () Bool)

(assert (=> start!80026 (=> (not res!632388) (not e!528478))))

(declare-fun valid!1728 (LongMapFixedSize!4548) Bool)

(assert (=> start!80026 (= res!632388 (valid!1728 thiss!1141))))

(assert (=> start!80026 e!528478))

(assert (=> start!80026 e!528477))

(assert (=> start!80026 true))

(declare-fun mapIsEmpty!32332 () Bool)

(declare-fun mapRes!32332 () Bool)

(assert (=> mapIsEmpty!32332 mapRes!32332))

(declare-fun b!940329 () Bool)

(declare-fun e!528475 () Bool)

(assert (=> b!940329 (= e!528478 e!528475)))

(declare-fun res!632390 () Bool)

(assert (=> b!940329 (=> (not res!632390) (not e!528475))))

(declare-datatypes ((SeekEntryResult!8989 0))(
  ( (MissingZero!8989 (index!38326 (_ BitVec 32))) (Found!8989 (index!38327 (_ BitVec 32))) (Intermediate!8989 (undefined!9801 Bool) (index!38328 (_ BitVec 32)) (x!80643 (_ BitVec 32))) (Undefined!8989) (MissingVacant!8989 (index!38329 (_ BitVec 32))) )
))
(declare-fun lt!424668 () SeekEntryResult!8989)

(get-info :version)

(assert (=> b!940329 (= res!632390 ((_ is Found!8989) lt!424668))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56694 (_ BitVec 32)) SeekEntryResult!8989)

(assert (=> b!940329 (= lt!424668 (seekEntry!0 key!756 (_keys!10411 thiss!1141) (mask!27099 thiss!1141)))))

(declare-fun b!940330 () Bool)

(declare-fun e!528479 () Bool)

(assert (=> b!940330 (= e!528479 tp_is_empty!20361)))

(declare-fun b!940331 () Bool)

(declare-fun e!528476 () Bool)

(assert (=> b!940331 (= e!528480 (and e!528476 mapRes!32332))))

(declare-fun condMapEmpty!32332 () Bool)

(declare-fun mapDefault!32332 () ValueCell!9699)

(assert (=> b!940331 (= condMapEmpty!32332 (= (arr!27277 (_values!5588 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9699)) mapDefault!32332)))))

(declare-fun b!940332 () Bool)

(declare-fun res!632385 () Bool)

(assert (=> b!940332 (=> res!632385 e!528473)))

(assert (=> b!940332 (= res!632385 (or (not (= (size!27739 (_values!5588 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27099 thiss!1141)))) (not (= (size!27740 (_keys!10411 thiss!1141)) (size!27739 (_values!5588 thiss!1141)))) (bvslt (mask!27099 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5297 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5297 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940333 () Bool)

(declare-fun res!632389 () Bool)

(assert (=> b!940333 (=> (not res!632389) (not e!528478))))

(assert (=> b!940333 (= res!632389 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940334 () Bool)

(assert (=> b!940334 (= e!528475 (not e!528473))))

(declare-fun res!632386 () Bool)

(assert (=> b!940334 (=> res!632386 e!528473)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940334 (= res!632386 (not (validMask!0 (mask!27099 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!56694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940334 (arrayContainsKey!0 (_keys!10411 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31771 0))(
  ( (Unit!31772) )
))
(declare-fun lt!424667 () Unit!31771)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56694 (_ BitVec 64) (_ BitVec 32)) Unit!31771)

(assert (=> b!940334 (= lt!424667 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10411 thiss!1141) key!756 (index!38327 lt!424668)))))

(declare-fun b!940335 () Bool)

(assert (=> b!940335 (= e!528476 tp_is_empty!20361)))

(declare-fun mapNonEmpty!32332 () Bool)

(declare-fun tp!62034 () Bool)

(assert (=> mapNonEmpty!32332 (= mapRes!32332 (and tp!62034 e!528479))))

(declare-fun mapRest!32332 () (Array (_ BitVec 32) ValueCell!9699))

(declare-fun mapKey!32332 () (_ BitVec 32))

(declare-fun mapValue!32332 () ValueCell!9699)

(assert (=> mapNonEmpty!32332 (= (arr!27277 (_values!5588 thiss!1141)) (store mapRest!32332 mapKey!32332 mapValue!32332))))

(assert (= (and start!80026 res!632388) b!940333))

(assert (= (and b!940333 res!632389) b!940329))

(assert (= (and b!940329 res!632390) b!940334))

(assert (= (and b!940334 (not res!632386)) b!940332))

(assert (= (and b!940332 (not res!632385)) b!940326))

(assert (= (and b!940326 (not res!632387)) b!940327))

(assert (= (and b!940331 condMapEmpty!32332) mapIsEmpty!32332))

(assert (= (and b!940331 (not condMapEmpty!32332)) mapNonEmpty!32332))

(assert (= (and mapNonEmpty!32332 ((_ is ValueCellFull!9699) mapValue!32332)) b!940330))

(assert (= (and b!940331 ((_ is ValueCellFull!9699) mapDefault!32332)) b!940335))

(assert (= b!940328 b!940331))

(assert (= start!80026 b!940328))

(declare-fun m!875869 () Bool)

(assert (=> b!940334 m!875869))

(declare-fun m!875871 () Bool)

(assert (=> b!940334 m!875871))

(declare-fun m!875873 () Bool)

(assert (=> b!940334 m!875873))

(declare-fun m!875875 () Bool)

(assert (=> b!940326 m!875875))

(declare-fun m!875877 () Bool)

(assert (=> b!940329 m!875877))

(declare-fun m!875879 () Bool)

(assert (=> start!80026 m!875879))

(declare-fun m!875881 () Bool)

(assert (=> b!940328 m!875881))

(declare-fun m!875883 () Bool)

(assert (=> b!940328 m!875883))

(declare-fun m!875885 () Bool)

(assert (=> b!940327 m!875885))

(declare-fun m!875887 () Bool)

(assert (=> mapNonEmpty!32332 m!875887))

(check-sat (not b!940334) (not b!940328) (not b!940327) tp_is_empty!20361 (not b!940326) (not mapNonEmpty!32332) (not b!940329) (not b_next!17853) b_and!29283 (not start!80026))
(check-sat b_and!29283 (not b_next!17853))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80020 () Bool)

(assert start!80020)

(declare-fun b!940245 () Bool)

(declare-fun b_free!17847 () Bool)

(declare-fun b_next!17847 () Bool)

(assert (=> b!940245 (= b_free!17847 (not b_next!17847))))

(declare-fun tp!62017 () Bool)

(declare-fun b_and!29277 () Bool)

(assert (=> b!940245 (= tp!62017 b_and!29277)))

(declare-fun mapIsEmpty!32323 () Bool)

(declare-fun mapRes!32323 () Bool)

(assert (=> mapIsEmpty!32323 mapRes!32323))

(declare-fun b!940236 () Bool)

(declare-fun e!528402 () Bool)

(declare-fun tp_is_empty!20355 () Bool)

(assert (=> b!940236 (= e!528402 tp_is_empty!20355)))

(declare-fun b!940237 () Bool)

(declare-fun res!632331 () Bool)

(declare-fun e!528405 () Bool)

(assert (=> b!940237 (=> res!632331 e!528405)))

(declare-datatypes ((V!32105 0))(
  ( (V!32106 (val!10228 Int)) )
))
(declare-datatypes ((ValueCell!9696 0))(
  ( (ValueCellFull!9696 (v!12759 V!32105)) (EmptyCell!9696) )
))
(declare-datatypes ((array!56680 0))(
  ( (array!56681 (arr!27271 (Array (_ BitVec 32) ValueCell!9696)) (size!27733 (_ BitVec 32))) )
))
(declare-datatypes ((array!56682 0))(
  ( (array!56683 (arr!27272 (Array (_ BitVec 32) (_ BitVec 64))) (size!27734 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4542 0))(
  ( (LongMapFixedSize!4543 (defaultEntry!5562 Int) (mask!27094 (_ BitVec 32)) (extraKeys!5294 (_ BitVec 32)) (zeroValue!5398 V!32105) (minValue!5398 V!32105) (_size!2326 (_ BitVec 32)) (_keys!10408 array!56682) (_values!5585 array!56680) (_vacant!2326 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4542)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56682 (_ BitVec 32)) Bool)

(assert (=> b!940237 (= res!632331 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10408 thiss!1141) (mask!27094 thiss!1141))))))

(declare-fun b!940238 () Bool)

(declare-fun e!528408 () Bool)

(declare-fun e!528403 () Bool)

(assert (=> b!940238 (= e!528408 e!528403)))

(declare-fun res!632336 () Bool)

(assert (=> b!940238 (=> (not res!632336) (not e!528403))))

(declare-datatypes ((SeekEntryResult!8986 0))(
  ( (MissingZero!8986 (index!38314 (_ BitVec 32))) (Found!8986 (index!38315 (_ BitVec 32))) (Intermediate!8986 (undefined!9798 Bool) (index!38316 (_ BitVec 32)) (x!80632 (_ BitVec 32))) (Undefined!8986) (MissingVacant!8986 (index!38317 (_ BitVec 32))) )
))
(declare-fun lt!424641 () SeekEntryResult!8986)

(get-info :version)

(assert (=> b!940238 (= res!632336 ((_ is Found!8986) lt!424641))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56682 (_ BitVec 32)) SeekEntryResult!8986)

(assert (=> b!940238 (= lt!424641 (seekEntry!0 key!756 (_keys!10408 thiss!1141) (mask!27094 thiss!1141)))))

(declare-fun b!940239 () Bool)

(declare-fun e!528404 () Bool)

(declare-fun e!528407 () Bool)

(assert (=> b!940239 (= e!528404 (and e!528407 mapRes!32323))))

(declare-fun condMapEmpty!32323 () Bool)

(declare-fun mapDefault!32323 () ValueCell!9696)

(assert (=> b!940239 (= condMapEmpty!32323 (= (arr!27271 (_values!5585 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9696)) mapDefault!32323)))))

(declare-fun mapNonEmpty!32323 () Bool)

(declare-fun tp!62016 () Bool)

(assert (=> mapNonEmpty!32323 (= mapRes!32323 (and tp!62016 e!528402))))

(declare-fun mapValue!32323 () ValueCell!9696)

(declare-fun mapRest!32323 () (Array (_ BitVec 32) ValueCell!9696))

(declare-fun mapKey!32323 () (_ BitVec 32))

(assert (=> mapNonEmpty!32323 (= (arr!27271 (_values!5585 thiss!1141)) (store mapRest!32323 mapKey!32323 mapValue!32323))))

(declare-fun b!940241 () Bool)

(declare-fun res!632334 () Bool)

(assert (=> b!940241 (=> res!632334 e!528405)))

(assert (=> b!940241 (= res!632334 (or (not (= (size!27733 (_values!5585 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27094 thiss!1141)))) (not (= (size!27734 (_keys!10408 thiss!1141)) (size!27733 (_values!5585 thiss!1141)))) (bvslt (mask!27094 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5294 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5294 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940242 () Bool)

(declare-fun res!632335 () Bool)

(assert (=> b!940242 (=> (not res!632335) (not e!528408))))

(assert (=> b!940242 (= res!632335 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940243 () Bool)

(assert (=> b!940243 (= e!528405 true)))

(declare-fun lt!424640 () Bool)

(declare-datatypes ((List!19320 0))(
  ( (Nil!19317) (Cons!19316 (h!20462 (_ BitVec 64)) (t!27643 List!19320)) )
))
(declare-fun arrayNoDuplicates!0 (array!56682 (_ BitVec 32) List!19320) Bool)

(assert (=> b!940243 (= lt!424640 (arrayNoDuplicates!0 (_keys!10408 thiss!1141) #b00000000000000000000000000000000 Nil!19317))))

(declare-fun res!632332 () Bool)

(assert (=> start!80020 (=> (not res!632332) (not e!528408))))

(declare-fun valid!1726 (LongMapFixedSize!4542) Bool)

(assert (=> start!80020 (= res!632332 (valid!1726 thiss!1141))))

(assert (=> start!80020 e!528408))

(declare-fun e!528401 () Bool)

(assert (=> start!80020 e!528401))

(assert (=> start!80020 true))

(declare-fun b!940240 () Bool)

(assert (=> b!940240 (= e!528407 tp_is_empty!20355)))

(declare-fun b!940244 () Bool)

(assert (=> b!940244 (= e!528403 (not e!528405))))

(declare-fun res!632333 () Bool)

(assert (=> b!940244 (=> res!632333 e!528405)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940244 (= res!632333 (not (validMask!0 (mask!27094 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!56682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940244 (arrayContainsKey!0 (_keys!10408 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31765 0))(
  ( (Unit!31766) )
))
(declare-fun lt!424639 () Unit!31765)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56682 (_ BitVec 64) (_ BitVec 32)) Unit!31765)

(assert (=> b!940244 (= lt!424639 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10408 thiss!1141) key!756 (index!38315 lt!424641)))))

(declare-fun array_inv!21154 (array!56682) Bool)

(declare-fun array_inv!21155 (array!56680) Bool)

(assert (=> b!940245 (= e!528401 (and tp!62017 tp_is_empty!20355 (array_inv!21154 (_keys!10408 thiss!1141)) (array_inv!21155 (_values!5585 thiss!1141)) e!528404))))

(assert (= (and start!80020 res!632332) b!940242))

(assert (= (and b!940242 res!632335) b!940238))

(assert (= (and b!940238 res!632336) b!940244))

(assert (= (and b!940244 (not res!632333)) b!940241))

(assert (= (and b!940241 (not res!632334)) b!940237))

(assert (= (and b!940237 (not res!632331)) b!940243))

(assert (= (and b!940239 condMapEmpty!32323) mapIsEmpty!32323))

(assert (= (and b!940239 (not condMapEmpty!32323)) mapNonEmpty!32323))

(assert (= (and mapNonEmpty!32323 ((_ is ValueCellFull!9696) mapValue!32323)) b!940236))

(assert (= (and b!940239 ((_ is ValueCellFull!9696) mapDefault!32323)) b!940240))

(assert (= b!940245 b!940239))

(assert (= start!80020 b!940245))

(declare-fun m!875809 () Bool)

(assert (=> b!940238 m!875809))

(declare-fun m!875811 () Bool)

(assert (=> b!940237 m!875811))

(declare-fun m!875813 () Bool)

(assert (=> b!940244 m!875813))

(declare-fun m!875815 () Bool)

(assert (=> b!940244 m!875815))

(declare-fun m!875817 () Bool)

(assert (=> b!940244 m!875817))

(declare-fun m!875819 () Bool)

(assert (=> b!940245 m!875819))

(declare-fun m!875821 () Bool)

(assert (=> b!940245 m!875821))

(declare-fun m!875823 () Bool)

(assert (=> mapNonEmpty!32323 m!875823))

(declare-fun m!875825 () Bool)

(assert (=> b!940243 m!875825))

(declare-fun m!875827 () Bool)

(assert (=> start!80020 m!875827))

(check-sat (not start!80020) (not b!940237) (not b!940244) b_and!29277 (not b_next!17847) (not b!940245) (not b!940238) (not mapNonEmpty!32323) (not b!940243) tp_is_empty!20355)
(check-sat b_and!29277 (not b_next!17847))

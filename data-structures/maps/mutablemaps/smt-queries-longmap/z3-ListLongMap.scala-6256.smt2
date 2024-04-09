; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80032 () Bool)

(assert start!80032)

(declare-fun b!940417 () Bool)

(declare-fun b_free!17859 () Bool)

(declare-fun b_next!17859 () Bool)

(assert (=> b!940417 (= b_free!17859 (not b_next!17859))))

(declare-fun tp!62052 () Bool)

(declare-fun b_and!29289 () Bool)

(assert (=> b!940417 (= tp!62052 b_and!29289)))

(declare-fun b!940416 () Bool)

(declare-fun e!528550 () Bool)

(declare-fun tp_is_empty!20367 () Bool)

(assert (=> b!940416 (= e!528550 tp_is_empty!20367)))

(declare-fun mapNonEmpty!32341 () Bool)

(declare-fun mapRes!32341 () Bool)

(declare-fun tp!62053 () Bool)

(assert (=> mapNonEmpty!32341 (= mapRes!32341 (and tp!62053 e!528550))))

(declare-datatypes ((V!32121 0))(
  ( (V!32122 (val!10234 Int)) )
))
(declare-datatypes ((ValueCell!9702 0))(
  ( (ValueCellFull!9702 (v!12765 V!32121)) (EmptyCell!9702) )
))
(declare-fun mapValue!32341 () ValueCell!9702)

(declare-datatypes ((array!56704 0))(
  ( (array!56705 (arr!27283 (Array (_ BitVec 32) ValueCell!9702)) (size!27745 (_ BitVec 32))) )
))
(declare-datatypes ((array!56706 0))(
  ( (array!56707 (arr!27284 (Array (_ BitVec 32) (_ BitVec 64))) (size!27746 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4554 0))(
  ( (LongMapFixedSize!4555 (defaultEntry!5568 Int) (mask!27104 (_ BitVec 32)) (extraKeys!5300 (_ BitVec 32)) (zeroValue!5404 V!32121) (minValue!5404 V!32121) (_size!2332 (_ BitVec 32)) (_keys!10414 array!56706) (_values!5591 array!56704) (_vacant!2332 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4554)

(declare-fun mapRest!32341 () (Array (_ BitVec 32) ValueCell!9702))

(declare-fun mapKey!32341 () (_ BitVec 32))

(assert (=> mapNonEmpty!32341 (= (arr!27283 (_values!5591 thiss!1141)) (store mapRest!32341 mapKey!32341 mapValue!32341))))

(declare-fun b!940418 () Bool)

(declare-fun e!528549 () Bool)

(declare-fun e!528548 () Bool)

(assert (=> b!940418 (= e!528549 e!528548)))

(declare-fun res!632443 () Bool)

(assert (=> b!940418 (=> (not res!632443) (not e!528548))))

(declare-datatypes ((SeekEntryResult!8992 0))(
  ( (MissingZero!8992 (index!38338 (_ BitVec 32))) (Found!8992 (index!38339 (_ BitVec 32))) (Intermediate!8992 (undefined!9804 Bool) (index!38340 (_ BitVec 32)) (x!80654 (_ BitVec 32))) (Undefined!8992) (MissingVacant!8992 (index!38341 (_ BitVec 32))) )
))
(declare-fun lt!424695 () SeekEntryResult!8992)

(get-info :version)

(assert (=> b!940418 (= res!632443 ((_ is Found!8992) lt!424695))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56706 (_ BitVec 32)) SeekEntryResult!8992)

(assert (=> b!940418 (= lt!424695 (seekEntry!0 key!756 (_keys!10414 thiss!1141) (mask!27104 thiss!1141)))))

(declare-fun mapIsEmpty!32341 () Bool)

(assert (=> mapIsEmpty!32341 mapRes!32341))

(declare-fun b!940419 () Bool)

(declare-fun e!528552 () Bool)

(assert (=> b!940419 (= e!528552 tp_is_empty!20367)))

(declare-fun res!632442 () Bool)

(assert (=> start!80032 (=> (not res!632442) (not e!528549))))

(declare-fun valid!1731 (LongMapFixedSize!4554) Bool)

(assert (=> start!80032 (= res!632442 (valid!1731 thiss!1141))))

(assert (=> start!80032 e!528549))

(declare-fun e!528547 () Bool)

(assert (=> start!80032 e!528547))

(assert (=> start!80032 true))

(declare-fun e!528551 () Bool)

(declare-fun array_inv!21162 (array!56706) Bool)

(declare-fun array_inv!21163 (array!56704) Bool)

(assert (=> b!940417 (= e!528547 (and tp!62052 tp_is_empty!20367 (array_inv!21162 (_keys!10414 thiss!1141)) (array_inv!21163 (_values!5591 thiss!1141)) e!528551))))

(declare-fun b!940420 () Bool)

(assert (=> b!940420 (= e!528551 (and e!528552 mapRes!32341))))

(declare-fun condMapEmpty!32341 () Bool)

(declare-fun mapDefault!32341 () ValueCell!9702)

(assert (=> b!940420 (= condMapEmpty!32341 (= (arr!27283 (_values!5591 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9702)) mapDefault!32341)))))

(declare-fun b!940421 () Bool)

(declare-fun e!528545 () Bool)

(assert (=> b!940421 (= e!528548 (not e!528545))))

(declare-fun res!632441 () Bool)

(assert (=> b!940421 (=> res!632441 e!528545)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940421 (= res!632441 (not (validMask!0 (mask!27104 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!56706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940421 (arrayContainsKey!0 (_keys!10414 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31777 0))(
  ( (Unit!31778) )
))
(declare-fun lt!424694 () Unit!31777)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56706 (_ BitVec 64) (_ BitVec 32)) Unit!31777)

(assert (=> b!940421 (= lt!424694 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10414 thiss!1141) key!756 (index!38339 lt!424695)))))

(declare-fun b!940422 () Bool)

(declare-fun res!632440 () Bool)

(assert (=> b!940422 (=> res!632440 e!528545)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56706 (_ BitVec 32)) Bool)

(assert (=> b!940422 (= res!632440 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10414 thiss!1141) (mask!27104 thiss!1141))))))

(declare-fun b!940423 () Bool)

(declare-fun res!632439 () Bool)

(assert (=> b!940423 (=> res!632439 e!528545)))

(assert (=> b!940423 (= res!632439 (or (not (= (size!27745 (_values!5591 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27104 thiss!1141)))) (not (= (size!27746 (_keys!10414 thiss!1141)) (size!27745 (_values!5591 thiss!1141)))) (bvslt (mask!27104 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5300 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5300 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940424 () Bool)

(assert (=> b!940424 (= e!528545 true)))

(declare-fun lt!424693 () Bool)

(declare-datatypes ((List!19324 0))(
  ( (Nil!19321) (Cons!19320 (h!20466 (_ BitVec 64)) (t!27647 List!19324)) )
))
(declare-fun arrayNoDuplicates!0 (array!56706 (_ BitVec 32) List!19324) Bool)

(assert (=> b!940424 (= lt!424693 (arrayNoDuplicates!0 (_keys!10414 thiss!1141) #b00000000000000000000000000000000 Nil!19321))))

(declare-fun b!940425 () Bool)

(declare-fun res!632444 () Bool)

(assert (=> b!940425 (=> (not res!632444) (not e!528549))))

(assert (=> b!940425 (= res!632444 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!80032 res!632442) b!940425))

(assert (= (and b!940425 res!632444) b!940418))

(assert (= (and b!940418 res!632443) b!940421))

(assert (= (and b!940421 (not res!632441)) b!940423))

(assert (= (and b!940423 (not res!632439)) b!940422))

(assert (= (and b!940422 (not res!632440)) b!940424))

(assert (= (and b!940420 condMapEmpty!32341) mapIsEmpty!32341))

(assert (= (and b!940420 (not condMapEmpty!32341)) mapNonEmpty!32341))

(assert (= (and mapNonEmpty!32341 ((_ is ValueCellFull!9702) mapValue!32341)) b!940416))

(assert (= (and b!940420 ((_ is ValueCellFull!9702) mapDefault!32341)) b!940419))

(assert (= b!940417 b!940420))

(assert (= start!80032 b!940417))

(declare-fun m!875929 () Bool)

(assert (=> b!940418 m!875929))

(declare-fun m!875931 () Bool)

(assert (=> b!940422 m!875931))

(declare-fun m!875933 () Bool)

(assert (=> b!940421 m!875933))

(declare-fun m!875935 () Bool)

(assert (=> b!940421 m!875935))

(declare-fun m!875937 () Bool)

(assert (=> b!940421 m!875937))

(declare-fun m!875939 () Bool)

(assert (=> start!80032 m!875939))

(declare-fun m!875941 () Bool)

(assert (=> b!940417 m!875941))

(declare-fun m!875943 () Bool)

(assert (=> b!940417 m!875943))

(declare-fun m!875945 () Bool)

(assert (=> mapNonEmpty!32341 m!875945))

(declare-fun m!875947 () Bool)

(assert (=> b!940424 m!875947))

(check-sat (not b!940418) b_and!29289 tp_is_empty!20367 (not mapNonEmpty!32341) (not start!80032) (not b!940424) (not b!940417) (not b!940422) (not b!940421) (not b_next!17859))
(check-sat b_and!29289 (not b_next!17859))

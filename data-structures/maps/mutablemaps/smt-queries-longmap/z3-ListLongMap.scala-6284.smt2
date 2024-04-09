; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80412 () Bool)

(assert start!80412)

(declare-fun b!943940 () Bool)

(declare-fun b_free!18027 () Bool)

(declare-fun b_next!18027 () Bool)

(assert (=> b!943940 (= b_free!18027 (not b_next!18027))))

(declare-fun tp!62591 () Bool)

(declare-fun b_and!29463 () Bool)

(assert (=> b!943940 (= tp!62591 b_and!29463)))

(declare-fun b!943935 () Bool)

(declare-fun e!530809 () Bool)

(declare-fun tp_is_empty!20535 () Bool)

(assert (=> b!943935 (= e!530809 tp_is_empty!20535)))

(declare-fun b!943936 () Bool)

(declare-fun e!530810 () Bool)

(assert (=> b!943936 (= e!530810 tp_is_empty!20535)))

(declare-fun b!943937 () Bool)

(declare-fun res!634250 () Bool)

(declare-fun e!530813 () Bool)

(assert (=> b!943937 (=> (not res!634250) (not e!530813))))

(declare-datatypes ((V!32345 0))(
  ( (V!32346 (val!10318 Int)) )
))
(declare-datatypes ((ValueCell!9786 0))(
  ( (ValueCellFull!9786 (v!12850 V!32345)) (EmptyCell!9786) )
))
(declare-datatypes ((array!57060 0))(
  ( (array!57061 (arr!27451 (Array (_ BitVec 32) ValueCell!9786)) (size!27918 (_ BitVec 32))) )
))
(declare-datatypes ((array!57062 0))(
  ( (array!57063 (arr!27452 (Array (_ BitVec 32) (_ BitVec 64))) (size!27919 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4722 0))(
  ( (LongMapFixedSize!4723 (defaultEntry!5656 Int) (mask!27291 (_ BitVec 32)) (extraKeys!5388 (_ BitVec 32)) (zeroValue!5492 V!32345) (minValue!5492 V!32345) (_size!2416 (_ BitVec 32)) (_keys!10530 array!57062) (_values!5679 array!57060) (_vacant!2416 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4722)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13562 0))(
  ( (tuple2!13563 (_1!6791 (_ BitVec 64)) (_2!6791 V!32345)) )
))
(declare-datatypes ((List!19395 0))(
  ( (Nil!19392) (Cons!19391 (h!20542 tuple2!13562) (t!27720 List!19395)) )
))
(declare-datatypes ((ListLongMap!12273 0))(
  ( (ListLongMap!12274 (toList!6152 List!19395)) )
))
(declare-fun contains!5175 (ListLongMap!12273 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3340 (array!57062 array!57060 (_ BitVec 32) (_ BitVec 32) V!32345 V!32345 (_ BitVec 32) Int) ListLongMap!12273)

(assert (=> b!943937 (= res!634250 (contains!5175 (getCurrentListMap!3340 (_keys!10530 thiss!1141) (_values!5679 thiss!1141) (mask!27291 thiss!1141) (extraKeys!5388 thiss!1141) (zeroValue!5492 thiss!1141) (minValue!5492 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5656 thiss!1141)) key!756))))

(declare-fun res!634247 () Bool)

(assert (=> start!80412 (=> (not res!634247) (not e!530813))))

(declare-fun valid!1783 (LongMapFixedSize!4722) Bool)

(assert (=> start!80412 (= res!634247 (valid!1783 thiss!1141))))

(assert (=> start!80412 e!530813))

(declare-fun e!530814 () Bool)

(assert (=> start!80412 e!530814))

(assert (=> start!80412 true))

(declare-fun b!943938 () Bool)

(declare-fun e!530812 () Bool)

(assert (=> b!943938 (= e!530812 true)))

(declare-fun lt!425468 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57062 (_ BitVec 32)) Bool)

(assert (=> b!943938 (= lt!425468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10530 thiss!1141) (mask!27291 thiss!1141)))))

(declare-fun b!943939 () Bool)

(declare-fun e!530811 () Bool)

(declare-fun mapRes!32628 () Bool)

(assert (=> b!943939 (= e!530811 (and e!530810 mapRes!32628))))

(declare-fun condMapEmpty!32628 () Bool)

(declare-fun mapDefault!32628 () ValueCell!9786)

(assert (=> b!943939 (= condMapEmpty!32628 (= (arr!27451 (_values!5679 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9786)) mapDefault!32628)))))

(declare-fun array_inv!21276 (array!57062) Bool)

(declare-fun array_inv!21277 (array!57060) Bool)

(assert (=> b!943940 (= e!530814 (and tp!62591 tp_is_empty!20535 (array_inv!21276 (_keys!10530 thiss!1141)) (array_inv!21277 (_values!5679 thiss!1141)) e!530811))))

(declare-fun b!943941 () Bool)

(declare-fun res!634249 () Bool)

(assert (=> b!943941 (=> (not res!634249) (not e!530813))))

(assert (=> b!943941 (= res!634249 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943942 () Bool)

(declare-fun res!634248 () Bool)

(assert (=> b!943942 (=> res!634248 e!530812)))

(declare-fun lt!425467 () (_ BitVec 32))

(assert (=> b!943942 (= res!634248 (or (not (= (size!27919 (_keys!10530 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27291 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!27919 (_keys!10530 thiss!1141))) (bvslt lt!425467 #b00000000000000000000000000000000) (bvsgt lt!425467 (size!27919 (_keys!10530 thiss!1141)))))))

(declare-fun b!943943 () Bool)

(declare-fun res!634252 () Bool)

(assert (=> b!943943 (=> (not res!634252) (not e!530813))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9050 0))(
  ( (MissingZero!9050 (index!38570 (_ BitVec 32))) (Found!9050 (index!38571 (_ BitVec 32))) (Intermediate!9050 (undefined!9862 Bool) (index!38572 (_ BitVec 32)) (x!81062 (_ BitVec 32))) (Undefined!9050) (MissingVacant!9050 (index!38573 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57062 (_ BitVec 32)) SeekEntryResult!9050)

(assert (=> b!943943 (= res!634252 (not ((_ is Found!9050) (seekEntry!0 key!756 (_keys!10530 thiss!1141) (mask!27291 thiss!1141)))))))

(declare-fun b!943944 () Bool)

(assert (=> b!943944 (= e!530813 (not e!530812))))

(declare-fun res!634251 () Bool)

(assert (=> b!943944 (=> res!634251 e!530812)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943944 (= res!634251 (not (validMask!0 (mask!27291 thiss!1141))))))

(declare-fun arrayScanForKey!0 (array!57062 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!943944 (= lt!425467 (arrayScanForKey!0 (_keys!10530 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!943944 (arrayContainsKey!0 (_keys!10530 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31833 0))(
  ( (Unit!31834) )
))
(declare-fun lt!425466 () Unit!31833)

(declare-fun lemmaKeyInListMapIsInArray!300 (array!57062 array!57060 (_ BitVec 32) (_ BitVec 32) V!32345 V!32345 (_ BitVec 64) Int) Unit!31833)

(assert (=> b!943944 (= lt!425466 (lemmaKeyInListMapIsInArray!300 (_keys!10530 thiss!1141) (_values!5679 thiss!1141) (mask!27291 thiss!1141) (extraKeys!5388 thiss!1141) (zeroValue!5492 thiss!1141) (minValue!5492 thiss!1141) key!756 (defaultEntry!5656 thiss!1141)))))

(declare-fun mapNonEmpty!32628 () Bool)

(declare-fun tp!62592 () Bool)

(assert (=> mapNonEmpty!32628 (= mapRes!32628 (and tp!62592 e!530809))))

(declare-fun mapRest!32628 () (Array (_ BitVec 32) ValueCell!9786))

(declare-fun mapValue!32628 () ValueCell!9786)

(declare-fun mapKey!32628 () (_ BitVec 32))

(assert (=> mapNonEmpty!32628 (= (arr!27451 (_values!5679 thiss!1141)) (store mapRest!32628 mapKey!32628 mapValue!32628))))

(declare-fun mapIsEmpty!32628 () Bool)

(assert (=> mapIsEmpty!32628 mapRes!32628))

(assert (= (and start!80412 res!634247) b!943941))

(assert (= (and b!943941 res!634249) b!943943))

(assert (= (and b!943943 res!634252) b!943937))

(assert (= (and b!943937 res!634250) b!943944))

(assert (= (and b!943944 (not res!634251)) b!943942))

(assert (= (and b!943942 (not res!634248)) b!943938))

(assert (= (and b!943939 condMapEmpty!32628) mapIsEmpty!32628))

(assert (= (and b!943939 (not condMapEmpty!32628)) mapNonEmpty!32628))

(assert (= (and mapNonEmpty!32628 ((_ is ValueCellFull!9786) mapValue!32628)) b!943935))

(assert (= (and b!943939 ((_ is ValueCellFull!9786) mapDefault!32628)) b!943936))

(assert (= b!943940 b!943939))

(assert (= start!80412 b!943940))

(declare-fun m!878113 () Bool)

(assert (=> start!80412 m!878113))

(declare-fun m!878115 () Bool)

(assert (=> b!943937 m!878115))

(assert (=> b!943937 m!878115))

(declare-fun m!878117 () Bool)

(assert (=> b!943937 m!878117))

(declare-fun m!878119 () Bool)

(assert (=> b!943944 m!878119))

(declare-fun m!878121 () Bool)

(assert (=> b!943944 m!878121))

(declare-fun m!878123 () Bool)

(assert (=> b!943944 m!878123))

(declare-fun m!878125 () Bool)

(assert (=> b!943944 m!878125))

(declare-fun m!878127 () Bool)

(assert (=> b!943938 m!878127))

(declare-fun m!878129 () Bool)

(assert (=> b!943943 m!878129))

(declare-fun m!878131 () Bool)

(assert (=> mapNonEmpty!32628 m!878131))

(declare-fun m!878133 () Bool)

(assert (=> b!943940 m!878133))

(declare-fun m!878135 () Bool)

(assert (=> b!943940 m!878135))

(check-sat (not b!943937) (not start!80412) (not b_next!18027) (not mapNonEmpty!32628) tp_is_empty!20535 (not b!943938) b_and!29463 (not b!943943) (not b!943944) (not b!943940))
(check-sat b_and!29463 (not b_next!18027))

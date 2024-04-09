; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80466 () Bool)

(assert start!80466)

(declare-fun b!944830 () Bool)

(declare-fun b_free!18081 () Bool)

(declare-fun b_next!18081 () Bool)

(assert (=> b!944830 (= b_free!18081 (not b_next!18081))))

(declare-fun tp!62753 () Bool)

(declare-fun b_and!29517 () Bool)

(assert (=> b!944830 (= tp!62753 b_and!29517)))

(declare-datatypes ((V!32417 0))(
  ( (V!32418 (val!10345 Int)) )
))
(declare-datatypes ((ValueCell!9813 0))(
  ( (ValueCellFull!9813 (v!12877 V!32417)) (EmptyCell!9813) )
))
(declare-datatypes ((array!57168 0))(
  ( (array!57169 (arr!27505 (Array (_ BitVec 32) ValueCell!9813)) (size!27972 (_ BitVec 32))) )
))
(declare-datatypes ((array!57170 0))(
  ( (array!57171 (arr!27506 (Array (_ BitVec 32) (_ BitVec 64))) (size!27973 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4776 0))(
  ( (LongMapFixedSize!4777 (defaultEntry!5683 Int) (mask!27336 (_ BitVec 32)) (extraKeys!5415 (_ BitVec 32)) (zeroValue!5519 V!32417) (minValue!5519 V!32417) (_size!2443 (_ BitVec 32)) (_keys!10557 array!57170) (_values!5706 array!57168) (_vacant!2443 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4776)

(declare-fun e!531381 () Bool)

(declare-fun tp_is_empty!20589 () Bool)

(declare-fun e!531378 () Bool)

(declare-fun array_inv!21312 (array!57170) Bool)

(declare-fun array_inv!21313 (array!57168) Bool)

(assert (=> b!944830 (= e!531378 (and tp!62753 tp_is_empty!20589 (array_inv!21312 (_keys!10557 thiss!1141)) (array_inv!21313 (_values!5706 thiss!1141)) e!531381))))

(declare-fun b!944831 () Bool)

(declare-fun res!634808 () Bool)

(declare-fun e!531376 () Bool)

(assert (=> b!944831 (=> (not res!634808) (not e!531376))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!944831 (= res!634808 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944832 () Bool)

(declare-datatypes ((Unit!31873 0))(
  ( (Unit!31874) )
))
(declare-fun e!531375 () Unit!31873)

(declare-fun Unit!31875 () Unit!31873)

(assert (=> b!944832 (= e!531375 Unit!31875)))

(declare-fun b!944833 () Bool)

(assert (=> b!944833 (= e!531376 false)))

(declare-fun lt!425767 () Unit!31873)

(assert (=> b!944833 (= lt!425767 e!531375)))

(declare-fun c!98257 () Bool)

(declare-datatypes ((tuple2!13596 0))(
  ( (tuple2!13597 (_1!6808 (_ BitVec 64)) (_2!6808 V!32417)) )
))
(declare-datatypes ((List!19412 0))(
  ( (Nil!19409) (Cons!19408 (h!20559 tuple2!13596) (t!27737 List!19412)) )
))
(declare-datatypes ((ListLongMap!12307 0))(
  ( (ListLongMap!12308 (toList!6169 List!19412)) )
))
(declare-fun contains!5192 (ListLongMap!12307 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3357 (array!57170 array!57168 (_ BitVec 32) (_ BitVec 32) V!32417 V!32417 (_ BitVec 32) Int) ListLongMap!12307)

(assert (=> b!944833 (= c!98257 (contains!5192 (getCurrentListMap!3357 (_keys!10557 thiss!1141) (_values!5706 thiss!1141) (mask!27336 thiss!1141) (extraKeys!5415 thiss!1141) (zeroValue!5519 thiss!1141) (minValue!5519 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5683 thiss!1141)) key!756))))

(declare-fun b!944834 () Bool)

(declare-fun res!634809 () Bool)

(assert (=> b!944834 (=> (not res!634809) (not e!531376))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9073 0))(
  ( (MissingZero!9073 (index!38662 (_ BitVec 32))) (Found!9073 (index!38663 (_ BitVec 32))) (Intermediate!9073 (undefined!9885 Bool) (index!38664 (_ BitVec 32)) (x!81157 (_ BitVec 32))) (Undefined!9073) (MissingVacant!9073 (index!38665 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57170 (_ BitVec 32)) SeekEntryResult!9073)

(assert (=> b!944834 (= res!634809 (not ((_ is Found!9073) (seekEntry!0 key!756 (_keys!10557 thiss!1141) (mask!27336 thiss!1141)))))))

(declare-fun mapNonEmpty!32709 () Bool)

(declare-fun mapRes!32709 () Bool)

(declare-fun tp!62754 () Bool)

(declare-fun e!531380 () Bool)

(assert (=> mapNonEmpty!32709 (= mapRes!32709 (and tp!62754 e!531380))))

(declare-fun mapKey!32709 () (_ BitVec 32))

(declare-fun mapValue!32709 () ValueCell!9813)

(declare-fun mapRest!32709 () (Array (_ BitVec 32) ValueCell!9813))

(assert (=> mapNonEmpty!32709 (= (arr!27505 (_values!5706 thiss!1141)) (store mapRest!32709 mapKey!32709 mapValue!32709))))

(declare-fun b!944836 () Bool)

(declare-fun e!531377 () Bool)

(assert (=> b!944836 (= e!531381 (and e!531377 mapRes!32709))))

(declare-fun condMapEmpty!32709 () Bool)

(declare-fun mapDefault!32709 () ValueCell!9813)

(assert (=> b!944836 (= condMapEmpty!32709 (= (arr!27505 (_values!5706 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9813)) mapDefault!32709)))))

(declare-fun b!944837 () Bool)

(declare-fun Unit!31876 () Unit!31873)

(assert (=> b!944837 (= e!531375 Unit!31876)))

(declare-fun lt!425766 () Unit!31873)

(declare-fun lemmaKeyInListMapIsInArray!319 (array!57170 array!57168 (_ BitVec 32) (_ BitVec 32) V!32417 V!32417 (_ BitVec 64) Int) Unit!31873)

(assert (=> b!944837 (= lt!425766 (lemmaKeyInListMapIsInArray!319 (_keys!10557 thiss!1141) (_values!5706 thiss!1141) (mask!27336 thiss!1141) (extraKeys!5415 thiss!1141) (zeroValue!5519 thiss!1141) (minValue!5519 thiss!1141) key!756 (defaultEntry!5683 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!57170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944837 (arrayContainsKey!0 (_keys!10557 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425768 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57170 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944837 (= lt!425768 (arrayScanForKey!0 (_keys!10557 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun lt!425765 () Unit!31873)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57170 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31873)

(assert (=> b!944837 (= lt!425765 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10557 thiss!1141) (mask!27336 thiss!1141) #b00000000000000000000000000000000 lt!425768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57170 (_ BitVec 32)) Bool)

(assert (=> b!944837 (arrayForallSeekEntryOrOpenFound!0 lt!425768 (_keys!10557 thiss!1141) (mask!27336 thiss!1141))))

(declare-fun lt!425764 () Unit!31873)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!57170 (_ BitVec 32)) Unit!31873)

(assert (=> b!944837 (= lt!425764 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!756 lt!425768 (_keys!10557 thiss!1141) (mask!27336 thiss!1141)))))

(assert (=> b!944837 false))

(declare-fun b!944838 () Bool)

(assert (=> b!944838 (= e!531377 tp_is_empty!20589)))

(declare-fun mapIsEmpty!32709 () Bool)

(assert (=> mapIsEmpty!32709 mapRes!32709))

(declare-fun b!944835 () Bool)

(assert (=> b!944835 (= e!531380 tp_is_empty!20589)))

(declare-fun res!634810 () Bool)

(assert (=> start!80466 (=> (not res!634810) (not e!531376))))

(declare-fun valid!1802 (LongMapFixedSize!4776) Bool)

(assert (=> start!80466 (= res!634810 (valid!1802 thiss!1141))))

(assert (=> start!80466 e!531376))

(assert (=> start!80466 e!531378))

(assert (=> start!80466 true))

(assert (= (and start!80466 res!634810) b!944831))

(assert (= (and b!944831 res!634808) b!944834))

(assert (= (and b!944834 res!634809) b!944833))

(assert (= (and b!944833 c!98257) b!944837))

(assert (= (and b!944833 (not c!98257)) b!944832))

(assert (= (and b!944836 condMapEmpty!32709) mapIsEmpty!32709))

(assert (= (and b!944836 (not condMapEmpty!32709)) mapNonEmpty!32709))

(assert (= (and mapNonEmpty!32709 ((_ is ValueCellFull!9813) mapValue!32709)) b!944835))

(assert (= (and b!944836 ((_ is ValueCellFull!9813) mapDefault!32709)) b!944838))

(assert (= b!944830 b!944836))

(assert (= start!80466 b!944830))

(declare-fun m!878883 () Bool)

(assert (=> b!944837 m!878883))

(declare-fun m!878885 () Bool)

(assert (=> b!944837 m!878885))

(declare-fun m!878887 () Bool)

(assert (=> b!944837 m!878887))

(declare-fun m!878889 () Bool)

(assert (=> b!944837 m!878889))

(declare-fun m!878891 () Bool)

(assert (=> b!944837 m!878891))

(declare-fun m!878893 () Bool)

(assert (=> b!944837 m!878893))

(declare-fun m!878895 () Bool)

(assert (=> b!944833 m!878895))

(assert (=> b!944833 m!878895))

(declare-fun m!878897 () Bool)

(assert (=> b!944833 m!878897))

(declare-fun m!878899 () Bool)

(assert (=> mapNonEmpty!32709 m!878899))

(declare-fun m!878901 () Bool)

(assert (=> b!944834 m!878901))

(declare-fun m!878903 () Bool)

(assert (=> start!80466 m!878903))

(declare-fun m!878905 () Bool)

(assert (=> b!944830 m!878905))

(declare-fun m!878907 () Bool)

(assert (=> b!944830 m!878907))

(check-sat (not b!944830) (not mapNonEmpty!32709) (not start!80466) (not b!944833) (not b_next!18081) (not b!944834) tp_is_empty!20589 (not b!944837) b_and!29517)
(check-sat b_and!29517 (not b_next!18081))

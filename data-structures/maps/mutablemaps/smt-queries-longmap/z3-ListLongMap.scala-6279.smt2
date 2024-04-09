; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80326 () Bool)

(assert start!80326)

(declare-fun b!943191 () Bool)

(declare-fun b_free!17997 () Bool)

(declare-fun b_next!17997 () Bool)

(assert (=> b!943191 (= b_free!17997 (not b_next!17997))))

(declare-fun tp!62497 () Bool)

(declare-fun b_and!29427 () Bool)

(assert (=> b!943191 (= tp!62497 b_and!29427)))

(declare-fun mapNonEmpty!32579 () Bool)

(declare-fun mapRes!32579 () Bool)

(declare-fun tp!62498 () Bool)

(declare-fun e!530334 () Bool)

(assert (=> mapNonEmpty!32579 (= mapRes!32579 (and tp!62498 e!530334))))

(declare-datatypes ((V!32305 0))(
  ( (V!32306 (val!10303 Int)) )
))
(declare-datatypes ((ValueCell!9771 0))(
  ( (ValueCellFull!9771 (v!12834 V!32305)) (EmptyCell!9771) )
))
(declare-fun mapValue!32579 () ValueCell!9771)

(declare-fun mapRest!32579 () (Array (_ BitVec 32) ValueCell!9771))

(declare-datatypes ((array!56998 0))(
  ( (array!56999 (arr!27421 (Array (_ BitVec 32) ValueCell!9771)) (size!27887 (_ BitVec 32))) )
))
(declare-datatypes ((array!57000 0))(
  ( (array!57001 (arr!27422 (Array (_ BitVec 32) (_ BitVec 64))) (size!27888 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4692 0))(
  ( (LongMapFixedSize!4693 (defaultEntry!5637 Int) (mask!27256 (_ BitVec 32)) (extraKeys!5369 (_ BitVec 32)) (zeroValue!5473 V!32305) (minValue!5473 V!32305) (_size!2401 (_ BitVec 32)) (_keys!10507 array!57000) (_values!5660 array!56998) (_vacant!2401 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4692)

(declare-fun mapKey!32579 () (_ BitVec 32))

(assert (=> mapNonEmpty!32579 (= (arr!27421 (_values!5660 thiss!1141)) (store mapRest!32579 mapKey!32579 mapValue!32579))))

(declare-fun b!943183 () Bool)

(declare-fun res!633875 () Bool)

(declare-fun e!530335 () Bool)

(assert (=> b!943183 (=> (not res!633875) (not e!530335))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9040 0))(
  ( (MissingZero!9040 (index!38530 (_ BitVec 32))) (Found!9040 (index!38531 (_ BitVec 32))) (Intermediate!9040 (undefined!9852 Bool) (index!38532 (_ BitVec 32)) (x!80994 (_ BitVec 32))) (Undefined!9040) (MissingVacant!9040 (index!38533 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57000 (_ BitVec 32)) SeekEntryResult!9040)

(assert (=> b!943183 (= res!633875 (not ((_ is Found!9040) (seekEntry!0 key!756 (_keys!10507 thiss!1141) (mask!27256 thiss!1141)))))))

(declare-fun b!943184 () Bool)

(declare-fun e!530331 () Bool)

(declare-fun e!530332 () Bool)

(assert (=> b!943184 (= e!530331 (and e!530332 mapRes!32579))))

(declare-fun condMapEmpty!32579 () Bool)

(declare-fun mapDefault!32579 () ValueCell!9771)

(assert (=> b!943184 (= condMapEmpty!32579 (= (arr!27421 (_values!5660 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9771)) mapDefault!32579)))))

(declare-fun mapIsEmpty!32579 () Bool)

(assert (=> mapIsEmpty!32579 mapRes!32579))

(declare-fun b!943185 () Bool)

(declare-fun res!633872 () Bool)

(assert (=> b!943185 (=> (not res!633872) (not e!530335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57000 (_ BitVec 32)) Bool)

(assert (=> b!943185 (= res!633872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10507 thiss!1141) (mask!27256 thiss!1141)))))

(declare-fun b!943186 () Bool)

(declare-fun res!633871 () Bool)

(assert (=> b!943186 (=> (not res!633871) (not e!530335))))

(assert (=> b!943186 (= res!633871 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943187 () Bool)

(assert (=> b!943187 (= e!530335 false)))

(declare-fun lt!425190 () Bool)

(declare-datatypes ((List!19380 0))(
  ( (Nil!19377) (Cons!19376 (h!20526 (_ BitVec 64)) (t!27703 List!19380)) )
))
(declare-fun arrayNoDuplicates!0 (array!57000 (_ BitVec 32) List!19380) Bool)

(assert (=> b!943187 (= lt!425190 (arrayNoDuplicates!0 (_keys!10507 thiss!1141) #b00000000000000000000000000000000 Nil!19377))))

(declare-fun b!943188 () Bool)

(declare-fun res!633873 () Bool)

(assert (=> b!943188 (=> (not res!633873) (not e!530335))))

(declare-datatypes ((tuple2!13542 0))(
  ( (tuple2!13543 (_1!6781 (_ BitVec 64)) (_2!6781 V!32305)) )
))
(declare-datatypes ((List!19381 0))(
  ( (Nil!19378) (Cons!19377 (h!20527 tuple2!13542) (t!27704 List!19381)) )
))
(declare-datatypes ((ListLongMap!12253 0))(
  ( (ListLongMap!12254 (toList!6142 List!19381)) )
))
(declare-fun contains!5163 (ListLongMap!12253 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3330 (array!57000 array!56998 (_ BitVec 32) (_ BitVec 32) V!32305 V!32305 (_ BitVec 32) Int) ListLongMap!12253)

(assert (=> b!943188 (= res!633873 (contains!5163 (getCurrentListMap!3330 (_keys!10507 thiss!1141) (_values!5660 thiss!1141) (mask!27256 thiss!1141) (extraKeys!5369 thiss!1141) (zeroValue!5473 thiss!1141) (minValue!5473 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5637 thiss!1141)) key!756))))

(declare-fun b!943189 () Bool)

(declare-fun tp_is_empty!20505 () Bool)

(assert (=> b!943189 (= e!530332 tp_is_empty!20505)))

(declare-fun res!633870 () Bool)

(assert (=> start!80326 (=> (not res!633870) (not e!530335))))

(declare-fun valid!1774 (LongMapFixedSize!4692) Bool)

(assert (=> start!80326 (= res!633870 (valid!1774 thiss!1141))))

(assert (=> start!80326 e!530335))

(declare-fun e!530333 () Bool)

(assert (=> start!80326 e!530333))

(assert (=> start!80326 true))

(declare-fun b!943190 () Bool)

(declare-fun res!633876 () Bool)

(assert (=> b!943190 (=> (not res!633876) (not e!530335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943190 (= res!633876 (validMask!0 (mask!27256 thiss!1141)))))

(declare-fun array_inv!21260 (array!57000) Bool)

(declare-fun array_inv!21261 (array!56998) Bool)

(assert (=> b!943191 (= e!530333 (and tp!62497 tp_is_empty!20505 (array_inv!21260 (_keys!10507 thiss!1141)) (array_inv!21261 (_values!5660 thiss!1141)) e!530331))))

(declare-fun b!943192 () Bool)

(declare-fun res!633874 () Bool)

(assert (=> b!943192 (=> (not res!633874) (not e!530335))))

(assert (=> b!943192 (= res!633874 (and (= (size!27887 (_values!5660 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27256 thiss!1141))) (= (size!27888 (_keys!10507 thiss!1141)) (size!27887 (_values!5660 thiss!1141))) (bvsge (mask!27256 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5369 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5369 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!943193 () Bool)

(assert (=> b!943193 (= e!530334 tp_is_empty!20505)))

(assert (= (and start!80326 res!633870) b!943186))

(assert (= (and b!943186 res!633871) b!943183))

(assert (= (and b!943183 res!633875) b!943188))

(assert (= (and b!943188 res!633873) b!943190))

(assert (= (and b!943190 res!633876) b!943192))

(assert (= (and b!943192 res!633874) b!943185))

(assert (= (and b!943185 res!633872) b!943187))

(assert (= (and b!943184 condMapEmpty!32579) mapIsEmpty!32579))

(assert (= (and b!943184 (not condMapEmpty!32579)) mapNonEmpty!32579))

(assert (= (and mapNonEmpty!32579 ((_ is ValueCellFull!9771) mapValue!32579)) b!943193))

(assert (= (and b!943184 ((_ is ValueCellFull!9771) mapDefault!32579)) b!943189))

(assert (= b!943191 b!943184))

(assert (= start!80326 b!943191))

(declare-fun m!877495 () Bool)

(assert (=> b!943183 m!877495))

(declare-fun m!877497 () Bool)

(assert (=> mapNonEmpty!32579 m!877497))

(declare-fun m!877499 () Bool)

(assert (=> b!943191 m!877499))

(declare-fun m!877501 () Bool)

(assert (=> b!943191 m!877501))

(declare-fun m!877503 () Bool)

(assert (=> b!943187 m!877503))

(declare-fun m!877505 () Bool)

(assert (=> b!943188 m!877505))

(assert (=> b!943188 m!877505))

(declare-fun m!877507 () Bool)

(assert (=> b!943188 m!877507))

(declare-fun m!877509 () Bool)

(assert (=> start!80326 m!877509))

(declare-fun m!877511 () Bool)

(assert (=> b!943190 m!877511))

(declare-fun m!877513 () Bool)

(assert (=> b!943185 m!877513))

(check-sat (not start!80326) (not b!943183) (not b_next!17997) (not b!943191) (not b!943188) tp_is_empty!20505 (not b!943190) b_and!29427 (not b!943187) (not mapNonEmpty!32579) (not b!943185))
(check-sat b_and!29427 (not b_next!17997))

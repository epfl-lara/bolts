; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80454 () Bool)

(assert start!80454)

(declare-fun b!944634 () Bool)

(declare-fun b_free!18069 () Bool)

(declare-fun b_next!18069 () Bool)

(assert (=> b!944634 (= b_free!18069 (not b_next!18069))))

(declare-fun tp!62717 () Bool)

(declare-fun b_and!29505 () Bool)

(assert (=> b!944634 (= tp!62717 b_and!29505)))

(declare-fun b!944629 () Bool)

(declare-fun e!531251 () Bool)

(declare-fun tp_is_empty!20577 () Bool)

(assert (=> b!944629 (= e!531251 tp_is_empty!20577)))

(declare-fun b!944630 () Bool)

(declare-fun res!634694 () Bool)

(declare-fun e!531254 () Bool)

(assert (=> b!944630 (=> res!634694 e!531254)))

(declare-datatypes ((V!32401 0))(
  ( (V!32402 (val!10339 Int)) )
))
(declare-datatypes ((ValueCell!9807 0))(
  ( (ValueCellFull!9807 (v!12871 V!32401)) (EmptyCell!9807) )
))
(declare-datatypes ((array!57144 0))(
  ( (array!57145 (arr!27493 (Array (_ BitVec 32) ValueCell!9807)) (size!27960 (_ BitVec 32))) )
))
(declare-datatypes ((array!57146 0))(
  ( (array!57147 (arr!27494 (Array (_ BitVec 32) (_ BitVec 64))) (size!27961 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4764 0))(
  ( (LongMapFixedSize!4765 (defaultEntry!5677 Int) (mask!27326 (_ BitVec 32)) (extraKeys!5409 (_ BitVec 32)) (zeroValue!5513 V!32401) (minValue!5513 V!32401) (_size!2437 (_ BitVec 32)) (_keys!10551 array!57146) (_values!5700 array!57144) (_vacant!2437 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4764)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57146 (_ BitVec 32)) Bool)

(assert (=> b!944630 (= res!634694 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10551 thiss!1141) (mask!27326 thiss!1141))))))

(declare-fun b!944631 () Bool)

(declare-fun e!531252 () Bool)

(assert (=> b!944631 (= e!531252 (not e!531254))))

(declare-fun res!634692 () Bool)

(assert (=> b!944631 (=> res!634692 e!531254)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944631 (= res!634692 (not (validMask!0 (mask!27326 thiss!1141))))))

(declare-fun lt!425688 () (_ BitVec 32))

(assert (=> b!944631 (arrayForallSeekEntryOrOpenFound!0 lt!425688 (_keys!10551 thiss!1141) (mask!27326 thiss!1141))))

(declare-datatypes ((Unit!31859 0))(
  ( (Unit!31860) )
))
(declare-fun lt!425689 () Unit!31859)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57146 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31859)

(assert (=> b!944631 (= lt!425689 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10551 thiss!1141) (mask!27326 thiss!1141) #b00000000000000000000000000000000 lt!425688))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57146 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944631 (= lt!425688 (arrayScanForKey!0 (_keys!10551 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944631 (arrayContainsKey!0 (_keys!10551 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425690 () Unit!31859)

(declare-fun lemmaKeyInListMapIsInArray!313 (array!57146 array!57144 (_ BitVec 32) (_ BitVec 32) V!32401 V!32401 (_ BitVec 64) Int) Unit!31859)

(assert (=> b!944631 (= lt!425690 (lemmaKeyInListMapIsInArray!313 (_keys!10551 thiss!1141) (_values!5700 thiss!1141) (mask!27326 thiss!1141) (extraKeys!5409 thiss!1141) (zeroValue!5513 thiss!1141) (minValue!5513 thiss!1141) key!756 (defaultEntry!5677 thiss!1141)))))

(declare-fun b!944632 () Bool)

(assert (=> b!944632 (= e!531254 true)))

(declare-datatypes ((SeekEntryResult!9067 0))(
  ( (MissingZero!9067 (index!38638 (_ BitVec 32))) (Found!9067 (index!38639 (_ BitVec 32))) (Intermediate!9067 (undefined!9879 Bool) (index!38640 (_ BitVec 32)) (x!81135 (_ BitVec 32))) (Undefined!9067) (MissingVacant!9067 (index!38641 (_ BitVec 32))) )
))
(declare-fun lt!425687 () SeekEntryResult!9067)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57146 (_ BitVec 32)) SeekEntryResult!9067)

(assert (=> b!944632 (= lt!425687 (seekEntryOrOpen!0 key!756 (_keys!10551 thiss!1141) (mask!27326 thiss!1141)))))

(declare-fun b!944633 () Bool)

(declare-fun res!634695 () Bool)

(assert (=> b!944633 (=> (not res!634695) (not e!531252))))

(declare-datatypes ((tuple2!13588 0))(
  ( (tuple2!13589 (_1!6804 (_ BitVec 64)) (_2!6804 V!32401)) )
))
(declare-datatypes ((List!19408 0))(
  ( (Nil!19405) (Cons!19404 (h!20555 tuple2!13588) (t!27733 List!19408)) )
))
(declare-datatypes ((ListLongMap!12299 0))(
  ( (ListLongMap!12300 (toList!6165 List!19408)) )
))
(declare-fun contains!5188 (ListLongMap!12299 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3353 (array!57146 array!57144 (_ BitVec 32) (_ BitVec 32) V!32401 V!32401 (_ BitVec 32) Int) ListLongMap!12299)

(assert (=> b!944633 (= res!634695 (contains!5188 (getCurrentListMap!3353 (_keys!10551 thiss!1141) (_values!5700 thiss!1141) (mask!27326 thiss!1141) (extraKeys!5409 thiss!1141) (zeroValue!5513 thiss!1141) (minValue!5513 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5677 thiss!1141)) key!756))))

(declare-fun e!531255 () Bool)

(declare-fun e!531250 () Bool)

(declare-fun array_inv!21306 (array!57146) Bool)

(declare-fun array_inv!21307 (array!57144) Bool)

(assert (=> b!944634 (= e!531255 (and tp!62717 tp_is_empty!20577 (array_inv!21306 (_keys!10551 thiss!1141)) (array_inv!21307 (_values!5700 thiss!1141)) e!531250))))

(declare-fun b!944635 () Bool)

(declare-fun res!634689 () Bool)

(assert (=> b!944635 (=> (not res!634689) (not e!531252))))

(assert (=> b!944635 (= res!634689 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32691 () Bool)

(declare-fun mapRes!32691 () Bool)

(declare-fun tp!62718 () Bool)

(assert (=> mapNonEmpty!32691 (= mapRes!32691 (and tp!62718 e!531251))))

(declare-fun mapValue!32691 () ValueCell!9807)

(declare-fun mapRest!32691 () (Array (_ BitVec 32) ValueCell!9807))

(declare-fun mapKey!32691 () (_ BitVec 32))

(assert (=> mapNonEmpty!32691 (= (arr!27493 (_values!5700 thiss!1141)) (store mapRest!32691 mapKey!32691 mapValue!32691))))

(declare-fun b!944636 () Bool)

(declare-fun e!531249 () Bool)

(assert (=> b!944636 (= e!531249 tp_is_empty!20577)))

(declare-fun b!944637 () Bool)

(declare-fun res!634691 () Bool)

(assert (=> b!944637 (=> (not res!634691) (not e!531252))))

(get-info :version)

(declare-fun seekEntry!0 ((_ BitVec 64) array!57146 (_ BitVec 32)) SeekEntryResult!9067)

(assert (=> b!944637 (= res!634691 (not ((_ is Found!9067) (seekEntry!0 key!756 (_keys!10551 thiss!1141) (mask!27326 thiss!1141)))))))

(declare-fun b!944638 () Bool)

(declare-fun res!634690 () Bool)

(assert (=> b!944638 (=> res!634690 e!531254)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944638 (= res!634690 (not (validKeyInArray!0 key!756)))))

(declare-fun res!634696 () Bool)

(assert (=> start!80454 (=> (not res!634696) (not e!531252))))

(declare-fun valid!1796 (LongMapFixedSize!4764) Bool)

(assert (=> start!80454 (= res!634696 (valid!1796 thiss!1141))))

(assert (=> start!80454 e!531252))

(assert (=> start!80454 e!531255))

(assert (=> start!80454 true))

(declare-fun mapIsEmpty!32691 () Bool)

(assert (=> mapIsEmpty!32691 mapRes!32691))

(declare-fun b!944639 () Bool)

(declare-fun res!634693 () Bool)

(assert (=> b!944639 (=> res!634693 e!531254)))

(assert (=> b!944639 (= res!634693 (not (= (size!27961 (_keys!10551 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27326 thiss!1141)))))))

(declare-fun b!944640 () Bool)

(assert (=> b!944640 (= e!531250 (and e!531249 mapRes!32691))))

(declare-fun condMapEmpty!32691 () Bool)

(declare-fun mapDefault!32691 () ValueCell!9807)

(assert (=> b!944640 (= condMapEmpty!32691 (= (arr!27493 (_values!5700 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9807)) mapDefault!32691)))))

(assert (= (and start!80454 res!634696) b!944635))

(assert (= (and b!944635 res!634689) b!944637))

(assert (= (and b!944637 res!634691) b!944633))

(assert (= (and b!944633 res!634695) b!944631))

(assert (= (and b!944631 (not res!634692)) b!944639))

(assert (= (and b!944639 (not res!634693)) b!944630))

(assert (= (and b!944630 (not res!634694)) b!944638))

(assert (= (and b!944638 (not res!634690)) b!944632))

(assert (= (and b!944640 condMapEmpty!32691) mapIsEmpty!32691))

(assert (= (and b!944640 (not condMapEmpty!32691)) mapNonEmpty!32691))

(assert (= (and mapNonEmpty!32691 ((_ is ValueCellFull!9807) mapValue!32691)) b!944629))

(assert (= (and b!944640 ((_ is ValueCellFull!9807) mapDefault!32691)) b!944636))

(assert (= b!944634 b!944640))

(assert (= start!80454 b!944634))

(declare-fun m!878697 () Bool)

(assert (=> b!944637 m!878697))

(declare-fun m!878699 () Bool)

(assert (=> mapNonEmpty!32691 m!878699))

(declare-fun m!878701 () Bool)

(assert (=> b!944633 m!878701))

(assert (=> b!944633 m!878701))

(declare-fun m!878703 () Bool)

(assert (=> b!944633 m!878703))

(declare-fun m!878705 () Bool)

(assert (=> b!944631 m!878705))

(declare-fun m!878707 () Bool)

(assert (=> b!944631 m!878707))

(declare-fun m!878709 () Bool)

(assert (=> b!944631 m!878709))

(declare-fun m!878711 () Bool)

(assert (=> b!944631 m!878711))

(declare-fun m!878713 () Bool)

(assert (=> b!944631 m!878713))

(declare-fun m!878715 () Bool)

(assert (=> b!944631 m!878715))

(declare-fun m!878717 () Bool)

(assert (=> start!80454 m!878717))

(declare-fun m!878719 () Bool)

(assert (=> b!944632 m!878719))

(declare-fun m!878721 () Bool)

(assert (=> b!944638 m!878721))

(declare-fun m!878723 () Bool)

(assert (=> b!944630 m!878723))

(declare-fun m!878725 () Bool)

(assert (=> b!944634 m!878725))

(declare-fun m!878727 () Bool)

(assert (=> b!944634 m!878727))

(check-sat tp_is_empty!20577 (not b!944638) (not b!944633) (not b!944630) (not b!944634) (not b!944637) b_and!29505 (not b!944632) (not b_next!18069) (not start!80454) (not b!944631) (not mapNonEmpty!32691))
(check-sat b_and!29505 (not b_next!18069))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80400 () Bool)

(assert start!80400)

(declare-fun b!943768 () Bool)

(declare-fun b_free!18015 () Bool)

(declare-fun b_next!18015 () Bool)

(assert (=> b!943768 (= b_free!18015 (not b_next!18015))))

(declare-fun tp!62556 () Bool)

(declare-fun b_and!29451 () Bool)

(assert (=> b!943768 (= tp!62556 b_and!29451)))

(declare-fun b!943763 () Bool)

(declare-fun e!530687 () Bool)

(declare-fun e!530690 () Bool)

(declare-fun mapRes!32610 () Bool)

(assert (=> b!943763 (= e!530687 (and e!530690 mapRes!32610))))

(declare-fun condMapEmpty!32610 () Bool)

(declare-datatypes ((V!32329 0))(
  ( (V!32330 (val!10312 Int)) )
))
(declare-datatypes ((ValueCell!9780 0))(
  ( (ValueCellFull!9780 (v!12844 V!32329)) (EmptyCell!9780) )
))
(declare-datatypes ((array!57036 0))(
  ( (array!57037 (arr!27439 (Array (_ BitVec 32) ValueCell!9780)) (size!27906 (_ BitVec 32))) )
))
(declare-datatypes ((array!57038 0))(
  ( (array!57039 (arr!27440 (Array (_ BitVec 32) (_ BitVec 64))) (size!27907 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4710 0))(
  ( (LongMapFixedSize!4711 (defaultEntry!5650 Int) (mask!27281 (_ BitVec 32)) (extraKeys!5382 (_ BitVec 32)) (zeroValue!5486 V!32329) (minValue!5486 V!32329) (_size!2410 (_ BitVec 32)) (_keys!10524 array!57038) (_values!5673 array!57036) (_vacant!2410 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4710)

(declare-fun mapDefault!32610 () ValueCell!9780)

(assert (=> b!943763 (= condMapEmpty!32610 (= (arr!27439 (_values!5673 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9780)) mapDefault!32610)))))

(declare-fun b!943764 () Bool)

(declare-fun tp_is_empty!20523 () Bool)

(assert (=> b!943764 (= e!530690 tp_is_empty!20523)))

(declare-fun mapIsEmpty!32610 () Bool)

(assert (=> mapIsEmpty!32610 mapRes!32610))

(declare-fun b!943765 () Bool)

(declare-fun res!634149 () Bool)

(declare-fun e!530688 () Bool)

(assert (=> b!943765 (=> (not res!634149) (not e!530688))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9046 0))(
  ( (MissingZero!9046 (index!38554 (_ BitVec 32))) (Found!9046 (index!38555 (_ BitVec 32))) (Intermediate!9046 (undefined!9858 Bool) (index!38556 (_ BitVec 32)) (x!81042 (_ BitVec 32))) (Undefined!9046) (MissingVacant!9046 (index!38557 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57038 (_ BitVec 32)) SeekEntryResult!9046)

(assert (=> b!943765 (= res!634149 (not ((_ is Found!9046) (seekEntry!0 key!756 (_keys!10524 thiss!1141) (mask!27281 thiss!1141)))))))

(declare-fun b!943766 () Bool)

(assert (=> b!943766 (= e!530688 (not true))))

(declare-fun arrayContainsKey!0 (array!57038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!943766 (arrayContainsKey!0 (_keys!10524 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31827 0))(
  ( (Unit!31828) )
))
(declare-fun lt!425420 () Unit!31827)

(declare-fun lemmaKeyInListMapIsInArray!297 (array!57038 array!57036 (_ BitVec 32) (_ BitVec 32) V!32329 V!32329 (_ BitVec 64) Int) Unit!31827)

(assert (=> b!943766 (= lt!425420 (lemmaKeyInListMapIsInArray!297 (_keys!10524 thiss!1141) (_values!5673 thiss!1141) (mask!27281 thiss!1141) (extraKeys!5382 thiss!1141) (zeroValue!5486 thiss!1141) (minValue!5486 thiss!1141) key!756 (defaultEntry!5650 thiss!1141)))))

(declare-fun b!943767 () Bool)

(declare-fun e!530689 () Bool)

(assert (=> b!943767 (= e!530689 tp_is_empty!20523)))

(declare-fun e!530686 () Bool)

(declare-fun array_inv!21268 (array!57038) Bool)

(declare-fun array_inv!21269 (array!57036) Bool)

(assert (=> b!943768 (= e!530686 (and tp!62556 tp_is_empty!20523 (array_inv!21268 (_keys!10524 thiss!1141)) (array_inv!21269 (_values!5673 thiss!1141)) e!530687))))

(declare-fun b!943769 () Bool)

(declare-fun res!634147 () Bool)

(assert (=> b!943769 (=> (not res!634147) (not e!530688))))

(declare-datatypes ((tuple2!13552 0))(
  ( (tuple2!13553 (_1!6786 (_ BitVec 64)) (_2!6786 V!32329)) )
))
(declare-datatypes ((List!19390 0))(
  ( (Nil!19387) (Cons!19386 (h!20537 tuple2!13552) (t!27715 List!19390)) )
))
(declare-datatypes ((ListLongMap!12263 0))(
  ( (ListLongMap!12264 (toList!6147 List!19390)) )
))
(declare-fun contains!5170 (ListLongMap!12263 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3335 (array!57038 array!57036 (_ BitVec 32) (_ BitVec 32) V!32329 V!32329 (_ BitVec 32) Int) ListLongMap!12263)

(assert (=> b!943769 (= res!634147 (contains!5170 (getCurrentListMap!3335 (_keys!10524 thiss!1141) (_values!5673 thiss!1141) (mask!27281 thiss!1141) (extraKeys!5382 thiss!1141) (zeroValue!5486 thiss!1141) (minValue!5486 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5650 thiss!1141)) key!756))))

(declare-fun res!634148 () Bool)

(assert (=> start!80400 (=> (not res!634148) (not e!530688))))

(declare-fun valid!1780 (LongMapFixedSize!4710) Bool)

(assert (=> start!80400 (= res!634148 (valid!1780 thiss!1141))))

(assert (=> start!80400 e!530688))

(assert (=> start!80400 e!530686))

(assert (=> start!80400 true))

(declare-fun b!943770 () Bool)

(declare-fun res!634150 () Bool)

(assert (=> b!943770 (=> (not res!634150) (not e!530688))))

(assert (=> b!943770 (= res!634150 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32610 () Bool)

(declare-fun tp!62555 () Bool)

(assert (=> mapNonEmpty!32610 (= mapRes!32610 (and tp!62555 e!530689))))

(declare-fun mapValue!32610 () ValueCell!9780)

(declare-fun mapRest!32610 () (Array (_ BitVec 32) ValueCell!9780))

(declare-fun mapKey!32610 () (_ BitVec 32))

(assert (=> mapNonEmpty!32610 (= (arr!27439 (_values!5673 thiss!1141)) (store mapRest!32610 mapKey!32610 mapValue!32610))))

(assert (= (and start!80400 res!634148) b!943770))

(assert (= (and b!943770 res!634150) b!943765))

(assert (= (and b!943765 res!634149) b!943769))

(assert (= (and b!943769 res!634147) b!943766))

(assert (= (and b!943763 condMapEmpty!32610) mapIsEmpty!32610))

(assert (= (and b!943763 (not condMapEmpty!32610)) mapNonEmpty!32610))

(assert (= (and mapNonEmpty!32610 ((_ is ValueCellFull!9780) mapValue!32610)) b!943767))

(assert (= (and b!943763 ((_ is ValueCellFull!9780) mapDefault!32610)) b!943764))

(assert (= b!943768 b!943763))

(assert (= start!80400 b!943768))

(declare-fun m!877981 () Bool)

(assert (=> b!943766 m!877981))

(declare-fun m!877983 () Bool)

(assert (=> b!943766 m!877983))

(declare-fun m!877985 () Bool)

(assert (=> b!943769 m!877985))

(assert (=> b!943769 m!877985))

(declare-fun m!877987 () Bool)

(assert (=> b!943769 m!877987))

(declare-fun m!877989 () Bool)

(assert (=> start!80400 m!877989))

(declare-fun m!877991 () Bool)

(assert (=> mapNonEmpty!32610 m!877991))

(declare-fun m!877993 () Bool)

(assert (=> b!943768 m!877993))

(declare-fun m!877995 () Bool)

(assert (=> b!943768 m!877995))

(declare-fun m!877997 () Bool)

(assert (=> b!943765 m!877997))

(check-sat (not b!943768) (not mapNonEmpty!32610) tp_is_empty!20523 (not b!943769) (not b_next!18015) b_and!29451 (not b!943766) (not start!80400) (not b!943765))
(check-sat b_and!29451 (not b_next!18015))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80302 () Bool)

(assert start!80302)

(declare-fun b!942791 () Bool)

(declare-fun b_free!17973 () Bool)

(declare-fun b_next!17973 () Bool)

(assert (=> b!942791 (= b_free!17973 (not b_next!17973))))

(declare-fun tp!62426 () Bool)

(declare-fun b_and!29403 () Bool)

(assert (=> b!942791 (= tp!62426 b_and!29403)))

(declare-fun mapNonEmpty!32543 () Bool)

(declare-fun mapRes!32543 () Bool)

(declare-fun tp!62425 () Bool)

(declare-fun e!530120 () Bool)

(assert (=> mapNonEmpty!32543 (= mapRes!32543 (and tp!62425 e!530120))))

(declare-fun mapKey!32543 () (_ BitVec 32))

(declare-datatypes ((V!32273 0))(
  ( (V!32274 (val!10291 Int)) )
))
(declare-datatypes ((ValueCell!9759 0))(
  ( (ValueCellFull!9759 (v!12822 V!32273)) (EmptyCell!9759) )
))
(declare-datatypes ((array!56950 0))(
  ( (array!56951 (arr!27397 (Array (_ BitVec 32) ValueCell!9759)) (size!27863 (_ BitVec 32))) )
))
(declare-datatypes ((array!56952 0))(
  ( (array!56953 (arr!27398 (Array (_ BitVec 32) (_ BitVec 64))) (size!27864 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4668 0))(
  ( (LongMapFixedSize!4669 (defaultEntry!5625 Int) (mask!27236 (_ BitVec 32)) (extraKeys!5357 (_ BitVec 32)) (zeroValue!5461 V!32273) (minValue!5461 V!32273) (_size!2389 (_ BitVec 32)) (_keys!10495 array!56952) (_values!5648 array!56950) (_vacant!2389 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4668)

(declare-fun mapRest!32543 () (Array (_ BitVec 32) ValueCell!9759))

(declare-fun mapValue!32543 () ValueCell!9759)

(assert (=> mapNonEmpty!32543 (= (arr!27397 (_values!5648 thiss!1141)) (store mapRest!32543 mapKey!32543 mapValue!32543))))

(declare-fun b!942787 () Bool)

(declare-fun res!633618 () Bool)

(declare-fun e!530115 () Bool)

(assert (=> b!942787 (=> (not res!633618) (not e!530115))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!942787 (= res!633618 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!942788 () Bool)

(declare-fun res!633620 () Bool)

(assert (=> b!942788 (=> (not res!633620) (not e!530115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56952 (_ BitVec 32)) Bool)

(assert (=> b!942788 (= res!633620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10495 thiss!1141) (mask!27236 thiss!1141)))))

(declare-fun b!942789 () Bool)

(declare-fun res!633619 () Bool)

(assert (=> b!942789 (=> (not res!633619) (not e!530115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942789 (= res!633619 (validMask!0 (mask!27236 thiss!1141)))))

(declare-fun b!942790 () Bool)

(assert (=> b!942790 (= e!530115 false)))

(declare-fun lt!425154 () Bool)

(declare-datatypes ((List!19362 0))(
  ( (Nil!19359) (Cons!19358 (h!20508 (_ BitVec 64)) (t!27685 List!19362)) )
))
(declare-fun arrayNoDuplicates!0 (array!56952 (_ BitVec 32) List!19362) Bool)

(assert (=> b!942790 (= lt!425154 (arrayNoDuplicates!0 (_keys!10495 thiss!1141) #b00000000000000000000000000000000 Nil!19359))))

(declare-fun mapIsEmpty!32543 () Bool)

(assert (=> mapIsEmpty!32543 mapRes!32543))

(declare-fun e!530118 () Bool)

(declare-fun e!530116 () Bool)

(declare-fun tp_is_empty!20481 () Bool)

(declare-fun array_inv!21238 (array!56952) Bool)

(declare-fun array_inv!21239 (array!56950) Bool)

(assert (=> b!942791 (= e!530116 (and tp!62426 tp_is_empty!20481 (array_inv!21238 (_keys!10495 thiss!1141)) (array_inv!21239 (_values!5648 thiss!1141)) e!530118))))

(declare-fun b!942792 () Bool)

(declare-fun e!530119 () Bool)

(assert (=> b!942792 (= e!530119 tp_is_empty!20481)))

(declare-fun b!942793 () Bool)

(assert (=> b!942793 (= e!530118 (and e!530119 mapRes!32543))))

(declare-fun condMapEmpty!32543 () Bool)

(declare-fun mapDefault!32543 () ValueCell!9759)

(assert (=> b!942793 (= condMapEmpty!32543 (= (arr!27397 (_values!5648 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9759)) mapDefault!32543)))))

(declare-fun b!942794 () Bool)

(declare-fun res!633624 () Bool)

(assert (=> b!942794 (=> (not res!633624) (not e!530115))))

(assert (=> b!942794 (= res!633624 (and (= (size!27863 (_values!5648 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27236 thiss!1141))) (= (size!27864 (_keys!10495 thiss!1141)) (size!27863 (_values!5648 thiss!1141))) (bvsge (mask!27236 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5357 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5357 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942795 () Bool)

(declare-fun res!633622 () Bool)

(assert (=> b!942795 (=> (not res!633622) (not e!530115))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9031 0))(
  ( (MissingZero!9031 (index!38494 (_ BitVec 32))) (Found!9031 (index!38495 (_ BitVec 32))) (Intermediate!9031 (undefined!9843 Bool) (index!38496 (_ BitVec 32)) (x!80953 (_ BitVec 32))) (Undefined!9031) (MissingVacant!9031 (index!38497 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56952 (_ BitVec 32)) SeekEntryResult!9031)

(assert (=> b!942795 (= res!633622 (not ((_ is Found!9031) (seekEntry!0 key!756 (_keys!10495 thiss!1141) (mask!27236 thiss!1141)))))))

(declare-fun b!942796 () Bool)

(declare-fun res!633623 () Bool)

(assert (=> b!942796 (=> (not res!633623) (not e!530115))))

(declare-datatypes ((tuple2!13524 0))(
  ( (tuple2!13525 (_1!6772 (_ BitVec 64)) (_2!6772 V!32273)) )
))
(declare-datatypes ((List!19363 0))(
  ( (Nil!19360) (Cons!19359 (h!20509 tuple2!13524) (t!27686 List!19363)) )
))
(declare-datatypes ((ListLongMap!12235 0))(
  ( (ListLongMap!12236 (toList!6133 List!19363)) )
))
(declare-fun contains!5154 (ListLongMap!12235 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3321 (array!56952 array!56950 (_ BitVec 32) (_ BitVec 32) V!32273 V!32273 (_ BitVec 32) Int) ListLongMap!12235)

(assert (=> b!942796 (= res!633623 (contains!5154 (getCurrentListMap!3321 (_keys!10495 thiss!1141) (_values!5648 thiss!1141) (mask!27236 thiss!1141) (extraKeys!5357 thiss!1141) (zeroValue!5461 thiss!1141) (minValue!5461 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5625 thiss!1141)) key!756))))

(declare-fun b!942797 () Bool)

(assert (=> b!942797 (= e!530120 tp_is_empty!20481)))

(declare-fun res!633621 () Bool)

(assert (=> start!80302 (=> (not res!633621) (not e!530115))))

(declare-fun valid!1767 (LongMapFixedSize!4668) Bool)

(assert (=> start!80302 (= res!633621 (valid!1767 thiss!1141))))

(assert (=> start!80302 e!530115))

(assert (=> start!80302 e!530116))

(assert (=> start!80302 true))

(assert (= (and start!80302 res!633621) b!942787))

(assert (= (and b!942787 res!633618) b!942795))

(assert (= (and b!942795 res!633622) b!942796))

(assert (= (and b!942796 res!633623) b!942789))

(assert (= (and b!942789 res!633619) b!942794))

(assert (= (and b!942794 res!633624) b!942788))

(assert (= (and b!942788 res!633620) b!942790))

(assert (= (and b!942793 condMapEmpty!32543) mapIsEmpty!32543))

(assert (= (and b!942793 (not condMapEmpty!32543)) mapNonEmpty!32543))

(assert (= (and mapNonEmpty!32543 ((_ is ValueCellFull!9759) mapValue!32543)) b!942797))

(assert (= (and b!942793 ((_ is ValueCellFull!9759) mapDefault!32543)) b!942792))

(assert (= b!942791 b!942793))

(assert (= start!80302 b!942791))

(declare-fun m!877255 () Bool)

(assert (=> b!942791 m!877255))

(declare-fun m!877257 () Bool)

(assert (=> b!942791 m!877257))

(declare-fun m!877259 () Bool)

(assert (=> b!942789 m!877259))

(declare-fun m!877261 () Bool)

(assert (=> b!942790 m!877261))

(declare-fun m!877263 () Bool)

(assert (=> b!942796 m!877263))

(assert (=> b!942796 m!877263))

(declare-fun m!877265 () Bool)

(assert (=> b!942796 m!877265))

(declare-fun m!877267 () Bool)

(assert (=> b!942795 m!877267))

(declare-fun m!877269 () Bool)

(assert (=> b!942788 m!877269))

(declare-fun m!877271 () Bool)

(assert (=> mapNonEmpty!32543 m!877271))

(declare-fun m!877273 () Bool)

(assert (=> start!80302 m!877273))

(check-sat (not start!80302) (not b!942788) (not b!942796) (not b_next!17973) (not b!942790) (not b!942789) (not b!942795) (not b!942791) tp_is_empty!20481 (not mapNonEmpty!32543) b_and!29403)
(check-sat b_and!29403 (not b_next!17973))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80014 () Bool)

(assert start!80014)

(declare-fun b!940155 () Bool)

(declare-fun b_free!17841 () Bool)

(declare-fun b_next!17841 () Bool)

(assert (=> b!940155 (= b_free!17841 (not b_next!17841))))

(declare-fun tp!61998 () Bool)

(declare-fun b_and!29271 () Bool)

(assert (=> b!940155 (= tp!61998 b_and!29271)))

(declare-fun b!940146 () Bool)

(declare-fun e!528333 () Bool)

(declare-fun tp_is_empty!20349 () Bool)

(assert (=> b!940146 (= e!528333 tp_is_empty!20349)))

(declare-fun b!940147 () Bool)

(declare-fun e!528330 () Bool)

(assert (=> b!940147 (= e!528330 tp_is_empty!20349)))

(declare-fun b!940148 () Bool)

(declare-fun res!632281 () Bool)

(declare-fun e!528336 () Bool)

(assert (=> b!940148 (=> (not res!632281) (not e!528336))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!940148 (= res!632281 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940149 () Bool)

(declare-fun e!528335 () Bool)

(assert (=> b!940149 (= e!528336 e!528335)))

(declare-fun res!632279 () Bool)

(assert (=> b!940149 (=> (not res!632279) (not e!528335))))

(declare-datatypes ((SeekEntryResult!8984 0))(
  ( (MissingZero!8984 (index!38306 (_ BitVec 32))) (Found!8984 (index!38307 (_ BitVec 32))) (Intermediate!8984 (undefined!9796 Bool) (index!38308 (_ BitVec 32)) (x!80622 (_ BitVec 32))) (Undefined!8984) (MissingVacant!8984 (index!38309 (_ BitVec 32))) )
))
(declare-fun lt!424612 () SeekEntryResult!8984)

(get-info :version)

(assert (=> b!940149 (= res!632279 ((_ is Found!8984) lt!424612))))

(declare-datatypes ((V!32097 0))(
  ( (V!32098 (val!10225 Int)) )
))
(declare-datatypes ((ValueCell!9693 0))(
  ( (ValueCellFull!9693 (v!12756 V!32097)) (EmptyCell!9693) )
))
(declare-datatypes ((array!56668 0))(
  ( (array!56669 (arr!27265 (Array (_ BitVec 32) ValueCell!9693)) (size!27727 (_ BitVec 32))) )
))
(declare-datatypes ((array!56670 0))(
  ( (array!56671 (arr!27266 (Array (_ BitVec 32) (_ BitVec 64))) (size!27728 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4536 0))(
  ( (LongMapFixedSize!4537 (defaultEntry!5559 Int) (mask!27089 (_ BitVec 32)) (extraKeys!5291 (_ BitVec 32)) (zeroValue!5395 V!32097) (minValue!5395 V!32097) (_size!2323 (_ BitVec 32)) (_keys!10405 array!56670) (_values!5582 array!56668) (_vacant!2323 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4536)

(declare-fun seekEntry!0 ((_ BitVec 64) array!56670 (_ BitVec 32)) SeekEntryResult!8984)

(assert (=> b!940149 (= lt!424612 (seekEntry!0 key!756 (_keys!10405 thiss!1141) (mask!27089 thiss!1141)))))

(declare-fun b!940150 () Bool)

(declare-fun e!528334 () Bool)

(declare-fun mapRes!32314 () Bool)

(assert (=> b!940150 (= e!528334 (and e!528330 mapRes!32314))))

(declare-fun condMapEmpty!32314 () Bool)

(declare-fun mapDefault!32314 () ValueCell!9693)

(assert (=> b!940150 (= condMapEmpty!32314 (= (arr!27265 (_values!5582 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9693)) mapDefault!32314)))))

(declare-fun b!940151 () Bool)

(declare-fun res!632278 () Bool)

(declare-fun e!528331 () Bool)

(assert (=> b!940151 (=> res!632278 e!528331)))

(assert (=> b!940151 (= res!632278 (or (not (= (size!27727 (_values!5582 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27089 thiss!1141)))) (not (= (size!27728 (_keys!10405 thiss!1141)) (size!27727 (_values!5582 thiss!1141)))) (bvslt (mask!27089 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5291 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5291 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!32314 () Bool)

(assert (=> mapIsEmpty!32314 mapRes!32314))

(declare-fun mapNonEmpty!32314 () Bool)

(declare-fun tp!61999 () Bool)

(assert (=> mapNonEmpty!32314 (= mapRes!32314 (and tp!61999 e!528333))))

(declare-fun mapRest!32314 () (Array (_ BitVec 32) ValueCell!9693))

(declare-fun mapKey!32314 () (_ BitVec 32))

(declare-fun mapValue!32314 () ValueCell!9693)

(assert (=> mapNonEmpty!32314 (= (arr!27265 (_values!5582 thiss!1141)) (store mapRest!32314 mapKey!32314 mapValue!32314))))

(declare-fun b!940152 () Bool)

(assert (=> b!940152 (= e!528335 (not e!528331))))

(declare-fun res!632280 () Bool)

(assert (=> b!940152 (=> res!632280 e!528331)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940152 (= res!632280 (not (validMask!0 (mask!27089 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!56670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940152 (arrayContainsKey!0 (_keys!10405 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31761 0))(
  ( (Unit!31762) )
))
(declare-fun lt!424613 () Unit!31761)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56670 (_ BitVec 64) (_ BitVec 32)) Unit!31761)

(assert (=> b!940152 (= lt!424613 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10405 thiss!1141) key!756 (index!38307 lt!424612)))))

(declare-fun b!940153 () Bool)

(assert (=> b!940153 (= e!528331 true)))

(declare-fun lt!424614 () Bool)

(declare-datatypes ((List!19318 0))(
  ( (Nil!19315) (Cons!19314 (h!20460 (_ BitVec 64)) (t!27641 List!19318)) )
))
(declare-fun arrayNoDuplicates!0 (array!56670 (_ BitVec 32) List!19318) Bool)

(assert (=> b!940153 (= lt!424614 (arrayNoDuplicates!0 (_keys!10405 thiss!1141) #b00000000000000000000000000000000 Nil!19315))))

(declare-fun b!940154 () Bool)

(declare-fun res!632277 () Bool)

(assert (=> b!940154 (=> res!632277 e!528331)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56670 (_ BitVec 32)) Bool)

(assert (=> b!940154 (= res!632277 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10405 thiss!1141) (mask!27089 thiss!1141))))))

(declare-fun res!632282 () Bool)

(assert (=> start!80014 (=> (not res!632282) (not e!528336))))

(declare-fun valid!1724 (LongMapFixedSize!4536) Bool)

(assert (=> start!80014 (= res!632282 (valid!1724 thiss!1141))))

(assert (=> start!80014 e!528336))

(declare-fun e!528329 () Bool)

(assert (=> start!80014 e!528329))

(assert (=> start!80014 true))

(declare-fun array_inv!21150 (array!56670) Bool)

(declare-fun array_inv!21151 (array!56668) Bool)

(assert (=> b!940155 (= e!528329 (and tp!61998 tp_is_empty!20349 (array_inv!21150 (_keys!10405 thiss!1141)) (array_inv!21151 (_values!5582 thiss!1141)) e!528334))))

(assert (= (and start!80014 res!632282) b!940148))

(assert (= (and b!940148 res!632281) b!940149))

(assert (= (and b!940149 res!632279) b!940152))

(assert (= (and b!940152 (not res!632280)) b!940151))

(assert (= (and b!940151 (not res!632278)) b!940154))

(assert (= (and b!940154 (not res!632277)) b!940153))

(assert (= (and b!940150 condMapEmpty!32314) mapIsEmpty!32314))

(assert (= (and b!940150 (not condMapEmpty!32314)) mapNonEmpty!32314))

(assert (= (and mapNonEmpty!32314 ((_ is ValueCellFull!9693) mapValue!32314)) b!940146))

(assert (= (and b!940150 ((_ is ValueCellFull!9693) mapDefault!32314)) b!940147))

(assert (= b!940155 b!940150))

(assert (= start!80014 b!940155))

(declare-fun m!875749 () Bool)

(assert (=> b!940155 m!875749))

(declare-fun m!875751 () Bool)

(assert (=> b!940155 m!875751))

(declare-fun m!875753 () Bool)

(assert (=> b!940154 m!875753))

(declare-fun m!875755 () Bool)

(assert (=> b!940152 m!875755))

(declare-fun m!875757 () Bool)

(assert (=> b!940152 m!875757))

(declare-fun m!875759 () Bool)

(assert (=> b!940152 m!875759))

(declare-fun m!875761 () Bool)

(assert (=> mapNonEmpty!32314 m!875761))

(declare-fun m!875763 () Bool)

(assert (=> b!940153 m!875763))

(declare-fun m!875765 () Bool)

(assert (=> b!940149 m!875765))

(declare-fun m!875767 () Bool)

(assert (=> start!80014 m!875767))

(check-sat (not b!940149) (not mapNonEmpty!32314) b_and!29271 (not start!80014) (not b!940154) (not b!940153) tp_is_empty!20349 (not b!940155) (not b!940152) (not b_next!17841))
(check-sat b_and!29271 (not b_next!17841))

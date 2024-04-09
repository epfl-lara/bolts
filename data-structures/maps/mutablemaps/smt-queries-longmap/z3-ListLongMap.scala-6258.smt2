; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80044 () Bool)

(assert start!80044)

(declare-fun b!940599 () Bool)

(declare-fun b_free!17871 () Bool)

(declare-fun b_next!17871 () Bool)

(assert (=> b!940599 (= b_free!17871 (not b_next!17871))))

(declare-fun tp!62089 () Bool)

(declare-fun b_and!29301 () Bool)

(assert (=> b!940599 (= tp!62089 b_and!29301)))

(declare-fun b!940596 () Bool)

(declare-fun e!528695 () Bool)

(declare-fun tp_is_empty!20379 () Bool)

(assert (=> b!940596 (= e!528695 tp_is_empty!20379)))

(declare-fun b!940597 () Bool)

(declare-fun res!632552 () Bool)

(declare-fun e!528692 () Bool)

(assert (=> b!940597 (=> res!632552 e!528692)))

(declare-datatypes ((V!32137 0))(
  ( (V!32138 (val!10240 Int)) )
))
(declare-datatypes ((ValueCell!9708 0))(
  ( (ValueCellFull!9708 (v!12771 V!32137)) (EmptyCell!9708) )
))
(declare-datatypes ((array!56728 0))(
  ( (array!56729 (arr!27295 (Array (_ BitVec 32) ValueCell!9708)) (size!27757 (_ BitVec 32))) )
))
(declare-datatypes ((array!56730 0))(
  ( (array!56731 (arr!27296 (Array (_ BitVec 32) (_ BitVec 64))) (size!27758 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4566 0))(
  ( (LongMapFixedSize!4567 (defaultEntry!5574 Int) (mask!27114 (_ BitVec 32)) (extraKeys!5306 (_ BitVec 32)) (zeroValue!5410 V!32137) (minValue!5410 V!32137) (_size!2338 (_ BitVec 32)) (_keys!10420 array!56730) (_values!5597 array!56728) (_vacant!2338 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4566)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56730 (_ BitVec 32)) Bool)

(assert (=> b!940597 (= res!632552 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10420 thiss!1141) (mask!27114 thiss!1141))))))

(declare-fun b!940598 () Bool)

(declare-fun e!528691 () Bool)

(assert (=> b!940598 (= e!528691 tp_is_empty!20379)))

(declare-fun b!940600 () Bool)

(declare-fun e!528690 () Bool)

(declare-fun mapRes!32359 () Bool)

(assert (=> b!940600 (= e!528690 (and e!528691 mapRes!32359))))

(declare-fun condMapEmpty!32359 () Bool)

(declare-fun mapDefault!32359 () ValueCell!9708)

(assert (=> b!940600 (= condMapEmpty!32359 (= (arr!27295 (_values!5597 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9708)) mapDefault!32359)))))

(declare-fun mapNonEmpty!32359 () Bool)

(declare-fun tp!62088 () Bool)

(assert (=> mapNonEmpty!32359 (= mapRes!32359 (and tp!62088 e!528695))))

(declare-fun mapKey!32359 () (_ BitVec 32))

(declare-fun mapValue!32359 () ValueCell!9708)

(declare-fun mapRest!32359 () (Array (_ BitVec 32) ValueCell!9708))

(assert (=> mapNonEmpty!32359 (= (arr!27295 (_values!5597 thiss!1141)) (store mapRest!32359 mapKey!32359 mapValue!32359))))

(declare-fun b!940601 () Bool)

(declare-fun e!528694 () Bool)

(assert (=> b!940601 (= e!528694 (not e!528692))))

(declare-fun res!632549 () Bool)

(assert (=> b!940601 (=> res!632549 e!528692)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940601 (= res!632549 (not (validMask!0 (mask!27114 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940601 (arrayContainsKey!0 (_keys!10420 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8998 0))(
  ( (MissingZero!8998 (index!38362 (_ BitVec 32))) (Found!8998 (index!38363 (_ BitVec 32))) (Intermediate!8998 (undefined!9810 Bool) (index!38364 (_ BitVec 32)) (x!80676 (_ BitVec 32))) (Undefined!8998) (MissingVacant!8998 (index!38365 (_ BitVec 32))) )
))
(declare-fun lt!424749 () SeekEntryResult!8998)

(declare-datatypes ((Unit!31787 0))(
  ( (Unit!31788) )
))
(declare-fun lt!424747 () Unit!31787)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56730 (_ BitVec 64) (_ BitVec 32)) Unit!31787)

(assert (=> b!940601 (= lt!424747 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10420 thiss!1141) key!756 (index!38363 lt!424749)))))

(declare-fun mapIsEmpty!32359 () Bool)

(assert (=> mapIsEmpty!32359 mapRes!32359))

(declare-fun res!632550 () Bool)

(declare-fun e!528696 () Bool)

(assert (=> start!80044 (=> (not res!632550) (not e!528696))))

(declare-fun valid!1735 (LongMapFixedSize!4566) Bool)

(assert (=> start!80044 (= res!632550 (valid!1735 thiss!1141))))

(assert (=> start!80044 e!528696))

(declare-fun e!528693 () Bool)

(assert (=> start!80044 e!528693))

(assert (=> start!80044 true))

(declare-fun array_inv!21170 (array!56730) Bool)

(declare-fun array_inv!21171 (array!56728) Bool)

(assert (=> b!940599 (= e!528693 (and tp!62089 tp_is_empty!20379 (array_inv!21170 (_keys!10420 thiss!1141)) (array_inv!21171 (_values!5597 thiss!1141)) e!528690))))

(declare-fun b!940602 () Bool)

(declare-fun res!632547 () Bool)

(assert (=> b!940602 (=> (not res!632547) (not e!528696))))

(assert (=> b!940602 (= res!632547 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940603 () Bool)

(assert (=> b!940603 (= e!528696 e!528694)))

(declare-fun res!632551 () Bool)

(assert (=> b!940603 (=> (not res!632551) (not e!528694))))

(get-info :version)

(assert (=> b!940603 (= res!632551 ((_ is Found!8998) lt!424749))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56730 (_ BitVec 32)) SeekEntryResult!8998)

(assert (=> b!940603 (= lt!424749 (seekEntry!0 key!756 (_keys!10420 thiss!1141) (mask!27114 thiss!1141)))))

(declare-fun b!940604 () Bool)

(assert (=> b!940604 (= e!528692 true)))

(declare-fun lt!424748 () Bool)

(declare-datatypes ((List!19329 0))(
  ( (Nil!19326) (Cons!19325 (h!20471 (_ BitVec 64)) (t!27652 List!19329)) )
))
(declare-fun arrayNoDuplicates!0 (array!56730 (_ BitVec 32) List!19329) Bool)

(assert (=> b!940604 (= lt!424748 (arrayNoDuplicates!0 (_keys!10420 thiss!1141) #b00000000000000000000000000000000 Nil!19326))))

(declare-fun b!940605 () Bool)

(declare-fun res!632548 () Bool)

(assert (=> b!940605 (=> res!632548 e!528692)))

(assert (=> b!940605 (= res!632548 (or (not (= (size!27757 (_values!5597 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27114 thiss!1141)))) (not (= (size!27758 (_keys!10420 thiss!1141)) (size!27757 (_values!5597 thiss!1141)))) (bvslt (mask!27114 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5306 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5306 thiss!1141) #b00000000000000000000000000000011)))))

(assert (= (and start!80044 res!632550) b!940602))

(assert (= (and b!940602 res!632547) b!940603))

(assert (= (and b!940603 res!632551) b!940601))

(assert (= (and b!940601 (not res!632549)) b!940605))

(assert (= (and b!940605 (not res!632548)) b!940597))

(assert (= (and b!940597 (not res!632552)) b!940604))

(assert (= (and b!940600 condMapEmpty!32359) mapIsEmpty!32359))

(assert (= (and b!940600 (not condMapEmpty!32359)) mapNonEmpty!32359))

(assert (= (and mapNonEmpty!32359 ((_ is ValueCellFull!9708) mapValue!32359)) b!940596))

(assert (= (and b!940600 ((_ is ValueCellFull!9708) mapDefault!32359)) b!940598))

(assert (= b!940599 b!940600))

(assert (= start!80044 b!940599))

(declare-fun m!876049 () Bool)

(assert (=> b!940604 m!876049))

(declare-fun m!876051 () Bool)

(assert (=> b!940599 m!876051))

(declare-fun m!876053 () Bool)

(assert (=> b!940599 m!876053))

(declare-fun m!876055 () Bool)

(assert (=> b!940597 m!876055))

(declare-fun m!876057 () Bool)

(assert (=> start!80044 m!876057))

(declare-fun m!876059 () Bool)

(assert (=> b!940603 m!876059))

(declare-fun m!876061 () Bool)

(assert (=> b!940601 m!876061))

(declare-fun m!876063 () Bool)

(assert (=> b!940601 m!876063))

(declare-fun m!876065 () Bool)

(assert (=> b!940601 m!876065))

(declare-fun m!876067 () Bool)

(assert (=> mapNonEmpty!32359 m!876067))

(check-sat (not b!940603) (not b!940601) tp_is_empty!20379 (not mapNonEmpty!32359) (not b!940604) (not b!940599) (not start!80044) (not b!940597) b_and!29301 (not b_next!17871))
(check-sat b_and!29301 (not b_next!17871))

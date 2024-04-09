; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80038 () Bool)

(assert start!80038)

(declare-fun b!940506 () Bool)

(declare-fun b_free!17865 () Bool)

(declare-fun b_next!17865 () Bool)

(assert (=> b!940506 (= b_free!17865 (not b_next!17865))))

(declare-fun tp!62070 () Bool)

(declare-fun b_and!29295 () Bool)

(assert (=> b!940506 (= tp!62070 b_and!29295)))

(declare-fun e!528619 () Bool)

(declare-fun e!528618 () Bool)

(declare-datatypes ((V!32129 0))(
  ( (V!32130 (val!10237 Int)) )
))
(declare-datatypes ((ValueCell!9705 0))(
  ( (ValueCellFull!9705 (v!12768 V!32129)) (EmptyCell!9705) )
))
(declare-datatypes ((array!56716 0))(
  ( (array!56717 (arr!27289 (Array (_ BitVec 32) ValueCell!9705)) (size!27751 (_ BitVec 32))) )
))
(declare-datatypes ((array!56718 0))(
  ( (array!56719 (arr!27290 (Array (_ BitVec 32) (_ BitVec 64))) (size!27752 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4560 0))(
  ( (LongMapFixedSize!4561 (defaultEntry!5571 Int) (mask!27109 (_ BitVec 32)) (extraKeys!5303 (_ BitVec 32)) (zeroValue!5407 V!32129) (minValue!5407 V!32129) (_size!2335 (_ BitVec 32)) (_keys!10417 array!56718) (_values!5594 array!56716) (_vacant!2335 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4560)

(declare-fun tp_is_empty!20373 () Bool)

(declare-fun array_inv!21164 (array!56718) Bool)

(declare-fun array_inv!21165 (array!56716) Bool)

(assert (=> b!940506 (= e!528618 (and tp!62070 tp_is_empty!20373 (array_inv!21164 (_keys!10417 thiss!1141)) (array_inv!21165 (_values!5594 thiss!1141)) e!528619))))

(declare-fun mapNonEmpty!32350 () Bool)

(declare-fun mapRes!32350 () Bool)

(declare-fun tp!62071 () Bool)

(declare-fun e!528622 () Bool)

(assert (=> mapNonEmpty!32350 (= mapRes!32350 (and tp!62071 e!528622))))

(declare-fun mapValue!32350 () ValueCell!9705)

(declare-fun mapRest!32350 () (Array (_ BitVec 32) ValueCell!9705))

(declare-fun mapKey!32350 () (_ BitVec 32))

(assert (=> mapNonEmpty!32350 (= (arr!27289 (_values!5594 thiss!1141)) (store mapRest!32350 mapKey!32350 mapValue!32350))))

(declare-fun b!940507 () Bool)

(assert (=> b!940507 (= e!528622 tp_is_empty!20373)))

(declare-fun b!940508 () Bool)

(declare-fun e!528623 () Bool)

(declare-fun e!528624 () Bool)

(assert (=> b!940508 (= e!528623 (not e!528624))))

(declare-fun res!632498 () Bool)

(assert (=> b!940508 (=> res!632498 e!528624)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940508 (= res!632498 (not (validMask!0 (mask!27109 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940508 (arrayContainsKey!0 (_keys!10417 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8995 0))(
  ( (MissingZero!8995 (index!38350 (_ BitVec 32))) (Found!8995 (index!38351 (_ BitVec 32))) (Intermediate!8995 (undefined!9807 Bool) (index!38352 (_ BitVec 32)) (x!80665 (_ BitVec 32))) (Undefined!8995) (MissingVacant!8995 (index!38353 (_ BitVec 32))) )
))
(declare-fun lt!424720 () SeekEntryResult!8995)

(declare-datatypes ((Unit!31781 0))(
  ( (Unit!31782) )
))
(declare-fun lt!424721 () Unit!31781)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56718 (_ BitVec 64) (_ BitVec 32)) Unit!31781)

(assert (=> b!940508 (= lt!424721 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10417 thiss!1141) key!756 (index!38351 lt!424720)))))

(declare-fun b!940509 () Bool)

(declare-fun e!528620 () Bool)

(assert (=> b!940509 (= e!528620 e!528623)))

(declare-fun res!632493 () Bool)

(assert (=> b!940509 (=> (not res!632493) (not e!528623))))

(get-info :version)

(assert (=> b!940509 (= res!632493 ((_ is Found!8995) lt!424720))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56718 (_ BitVec 32)) SeekEntryResult!8995)

(assert (=> b!940509 (= lt!424720 (seekEntry!0 key!756 (_keys!10417 thiss!1141) (mask!27109 thiss!1141)))))

(declare-fun b!940510 () Bool)

(declare-fun res!632497 () Bool)

(assert (=> b!940510 (=> (not res!632497) (not e!528620))))

(assert (=> b!940510 (= res!632497 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940511 () Bool)

(assert (=> b!940511 (= e!528624 true)))

(declare-fun lt!424722 () Bool)

(declare-datatypes ((List!19326 0))(
  ( (Nil!19323) (Cons!19322 (h!20468 (_ BitVec 64)) (t!27649 List!19326)) )
))
(declare-fun arrayNoDuplicates!0 (array!56718 (_ BitVec 32) List!19326) Bool)

(assert (=> b!940511 (= lt!424722 (arrayNoDuplicates!0 (_keys!10417 thiss!1141) #b00000000000000000000000000000000 Nil!19323))))

(declare-fun res!632494 () Bool)

(assert (=> start!80038 (=> (not res!632494) (not e!528620))))

(declare-fun valid!1732 (LongMapFixedSize!4560) Bool)

(assert (=> start!80038 (= res!632494 (valid!1732 thiss!1141))))

(assert (=> start!80038 e!528620))

(assert (=> start!80038 e!528618))

(assert (=> start!80038 true))

(declare-fun mapIsEmpty!32350 () Bool)

(assert (=> mapIsEmpty!32350 mapRes!32350))

(declare-fun b!940512 () Bool)

(declare-fun res!632495 () Bool)

(assert (=> b!940512 (=> res!632495 e!528624)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56718 (_ BitVec 32)) Bool)

(assert (=> b!940512 (= res!632495 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10417 thiss!1141) (mask!27109 thiss!1141))))))

(declare-fun b!940513 () Bool)

(declare-fun e!528617 () Bool)

(assert (=> b!940513 (= e!528617 tp_is_empty!20373)))

(declare-fun b!940514 () Bool)

(assert (=> b!940514 (= e!528619 (and e!528617 mapRes!32350))))

(declare-fun condMapEmpty!32350 () Bool)

(declare-fun mapDefault!32350 () ValueCell!9705)

(assert (=> b!940514 (= condMapEmpty!32350 (= (arr!27289 (_values!5594 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9705)) mapDefault!32350)))))

(declare-fun b!940515 () Bool)

(declare-fun res!632496 () Bool)

(assert (=> b!940515 (=> res!632496 e!528624)))

(assert (=> b!940515 (= res!632496 (or (not (= (size!27751 (_values!5594 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27109 thiss!1141)))) (not (= (size!27752 (_keys!10417 thiss!1141)) (size!27751 (_values!5594 thiss!1141)))) (bvslt (mask!27109 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5303 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5303 thiss!1141) #b00000000000000000000000000000011)))))

(assert (= (and start!80038 res!632494) b!940510))

(assert (= (and b!940510 res!632497) b!940509))

(assert (= (and b!940509 res!632493) b!940508))

(assert (= (and b!940508 (not res!632498)) b!940515))

(assert (= (and b!940515 (not res!632496)) b!940512))

(assert (= (and b!940512 (not res!632495)) b!940511))

(assert (= (and b!940514 condMapEmpty!32350) mapIsEmpty!32350))

(assert (= (and b!940514 (not condMapEmpty!32350)) mapNonEmpty!32350))

(assert (= (and mapNonEmpty!32350 ((_ is ValueCellFull!9705) mapValue!32350)) b!940507))

(assert (= (and b!940514 ((_ is ValueCellFull!9705) mapDefault!32350)) b!940513))

(assert (= b!940506 b!940514))

(assert (= start!80038 b!940506))

(declare-fun m!875989 () Bool)

(assert (=> mapNonEmpty!32350 m!875989))

(declare-fun m!875991 () Bool)

(assert (=> b!940511 m!875991))

(declare-fun m!875993 () Bool)

(assert (=> start!80038 m!875993))

(declare-fun m!875995 () Bool)

(assert (=> b!940508 m!875995))

(declare-fun m!875997 () Bool)

(assert (=> b!940508 m!875997))

(declare-fun m!875999 () Bool)

(assert (=> b!940508 m!875999))

(declare-fun m!876001 () Bool)

(assert (=> b!940509 m!876001))

(declare-fun m!876003 () Bool)

(assert (=> b!940506 m!876003))

(declare-fun m!876005 () Bool)

(assert (=> b!940506 m!876005))

(declare-fun m!876007 () Bool)

(assert (=> b!940512 m!876007))

(check-sat (not start!80038) (not b!940506) (not b_next!17865) b_and!29295 (not b!940512) (not b!940509) (not b!940508) (not mapNonEmpty!32350) tp_is_empty!20373 (not b!940511))
(check-sat b_and!29295 (not b_next!17865))

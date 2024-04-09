; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80050 () Bool)

(assert start!80050)

(declare-fun b!940686 () Bool)

(declare-fun b_free!17877 () Bool)

(declare-fun b_next!17877 () Bool)

(assert (=> b!940686 (= b_free!17877 (not b_next!17877))))

(declare-fun tp!62106 () Bool)

(declare-fun b_and!29307 () Bool)

(assert (=> b!940686 (= tp!62106 b_and!29307)))

(declare-fun mapNonEmpty!32368 () Bool)

(declare-fun mapRes!32368 () Bool)

(declare-fun tp!62107 () Bool)

(declare-fun e!528761 () Bool)

(assert (=> mapNonEmpty!32368 (= mapRes!32368 (and tp!62107 e!528761))))

(declare-datatypes ((V!32145 0))(
  ( (V!32146 (val!10243 Int)) )
))
(declare-datatypes ((ValueCell!9711 0))(
  ( (ValueCellFull!9711 (v!12774 V!32145)) (EmptyCell!9711) )
))
(declare-fun mapValue!32368 () ValueCell!9711)

(declare-datatypes ((array!56740 0))(
  ( (array!56741 (arr!27301 (Array (_ BitVec 32) ValueCell!9711)) (size!27763 (_ BitVec 32))) )
))
(declare-datatypes ((array!56742 0))(
  ( (array!56743 (arr!27302 (Array (_ BitVec 32) (_ BitVec 64))) (size!27764 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4572 0))(
  ( (LongMapFixedSize!4573 (defaultEntry!5577 Int) (mask!27119 (_ BitVec 32)) (extraKeys!5309 (_ BitVec 32)) (zeroValue!5413 V!32145) (minValue!5413 V!32145) (_size!2341 (_ BitVec 32)) (_keys!10423 array!56742) (_values!5600 array!56740) (_vacant!2341 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4572)

(declare-fun mapKey!32368 () (_ BitVec 32))

(declare-fun mapRest!32368 () (Array (_ BitVec 32) ValueCell!9711))

(assert (=> mapNonEmpty!32368 (= (arr!27301 (_values!5600 thiss!1141)) (store mapRest!32368 mapKey!32368 mapValue!32368))))

(declare-fun e!528764 () Bool)

(declare-fun tp_is_empty!20385 () Bool)

(declare-fun e!528767 () Bool)

(declare-fun array_inv!21172 (array!56742) Bool)

(declare-fun array_inv!21173 (array!56740) Bool)

(assert (=> b!940686 (= e!528767 (and tp!62106 tp_is_empty!20385 (array_inv!21172 (_keys!10423 thiss!1141)) (array_inv!21173 (_values!5600 thiss!1141)) e!528764))))

(declare-fun b!940687 () Bool)

(declare-fun res!632601 () Bool)

(declare-fun e!528762 () Bool)

(assert (=> b!940687 (=> res!632601 e!528762)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56742 (_ BitVec 32)) Bool)

(assert (=> b!940687 (= res!632601 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10423 thiss!1141) (mask!27119 thiss!1141))))))

(declare-fun b!940688 () Bool)

(declare-fun e!528768 () Bool)

(assert (=> b!940688 (= e!528768 (not e!528762))))

(declare-fun res!632603 () Bool)

(assert (=> b!940688 (=> res!632603 e!528762)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940688 (= res!632603 (not (validMask!0 (mask!27119 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940688 (arrayContainsKey!0 (_keys!10423 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31789 0))(
  ( (Unit!31790) )
))
(declare-fun lt!424775 () Unit!31789)

(declare-datatypes ((SeekEntryResult!9000 0))(
  ( (MissingZero!9000 (index!38370 (_ BitVec 32))) (Found!9000 (index!38371 (_ BitVec 32))) (Intermediate!9000 (undefined!9812 Bool) (index!38372 (_ BitVec 32)) (x!80686 (_ BitVec 32))) (Undefined!9000) (MissingVacant!9000 (index!38373 (_ BitVec 32))) )
))
(declare-fun lt!424774 () SeekEntryResult!9000)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56742 (_ BitVec 64) (_ BitVec 32)) Unit!31789)

(assert (=> b!940688 (= lt!424775 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10423 thiss!1141) key!756 (index!38371 lt!424774)))))

(declare-fun res!632605 () Bool)

(declare-fun e!528765 () Bool)

(assert (=> start!80050 (=> (not res!632605) (not e!528765))))

(declare-fun valid!1736 (LongMapFixedSize!4572) Bool)

(assert (=> start!80050 (= res!632605 (valid!1736 thiss!1141))))

(assert (=> start!80050 e!528765))

(assert (=> start!80050 e!528767))

(assert (=> start!80050 true))

(declare-fun b!940689 () Bool)

(declare-fun res!632606 () Bool)

(assert (=> b!940689 (=> res!632606 e!528762)))

(assert (=> b!940689 (= res!632606 (or (not (= (size!27763 (_values!5600 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27119 thiss!1141)))) (not (= (size!27764 (_keys!10423 thiss!1141)) (size!27763 (_values!5600 thiss!1141)))) (bvslt (mask!27119 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5309 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5309 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940690 () Bool)

(declare-fun e!528766 () Bool)

(assert (=> b!940690 (= e!528766 tp_is_empty!20385)))

(declare-fun b!940691 () Bool)

(assert (=> b!940691 (= e!528765 e!528768)))

(declare-fun res!632602 () Bool)

(assert (=> b!940691 (=> (not res!632602) (not e!528768))))

(get-info :version)

(assert (=> b!940691 (= res!632602 ((_ is Found!9000) lt!424774))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56742 (_ BitVec 32)) SeekEntryResult!9000)

(assert (=> b!940691 (= lt!424774 (seekEntry!0 key!756 (_keys!10423 thiss!1141) (mask!27119 thiss!1141)))))

(declare-fun mapIsEmpty!32368 () Bool)

(assert (=> mapIsEmpty!32368 mapRes!32368))

(declare-fun b!940692 () Bool)

(assert (=> b!940692 (= e!528762 true)))

(declare-fun lt!424776 () Bool)

(declare-datatypes ((List!19331 0))(
  ( (Nil!19328) (Cons!19327 (h!20473 (_ BitVec 64)) (t!27654 List!19331)) )
))
(declare-fun arrayNoDuplicates!0 (array!56742 (_ BitVec 32) List!19331) Bool)

(assert (=> b!940692 (= lt!424776 (arrayNoDuplicates!0 (_keys!10423 thiss!1141) #b00000000000000000000000000000000 Nil!19328))))

(declare-fun b!940693 () Bool)

(declare-fun res!632604 () Bool)

(assert (=> b!940693 (=> (not res!632604) (not e!528765))))

(assert (=> b!940693 (= res!632604 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940694 () Bool)

(assert (=> b!940694 (= e!528764 (and e!528766 mapRes!32368))))

(declare-fun condMapEmpty!32368 () Bool)

(declare-fun mapDefault!32368 () ValueCell!9711)

(assert (=> b!940694 (= condMapEmpty!32368 (= (arr!27301 (_values!5600 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9711)) mapDefault!32368)))))

(declare-fun b!940695 () Bool)

(assert (=> b!940695 (= e!528761 tp_is_empty!20385)))

(assert (= (and start!80050 res!632605) b!940693))

(assert (= (and b!940693 res!632604) b!940691))

(assert (= (and b!940691 res!632602) b!940688))

(assert (= (and b!940688 (not res!632603)) b!940689))

(assert (= (and b!940689 (not res!632606)) b!940687))

(assert (= (and b!940687 (not res!632601)) b!940692))

(assert (= (and b!940694 condMapEmpty!32368) mapIsEmpty!32368))

(assert (= (and b!940694 (not condMapEmpty!32368)) mapNonEmpty!32368))

(assert (= (and mapNonEmpty!32368 ((_ is ValueCellFull!9711) mapValue!32368)) b!940695))

(assert (= (and b!940694 ((_ is ValueCellFull!9711) mapDefault!32368)) b!940690))

(assert (= b!940686 b!940694))

(assert (= start!80050 b!940686))

(declare-fun m!876109 () Bool)

(assert (=> b!940686 m!876109))

(declare-fun m!876111 () Bool)

(assert (=> b!940686 m!876111))

(declare-fun m!876113 () Bool)

(assert (=> b!940687 m!876113))

(declare-fun m!876115 () Bool)

(assert (=> start!80050 m!876115))

(declare-fun m!876117 () Bool)

(assert (=> b!940692 m!876117))

(declare-fun m!876119 () Bool)

(assert (=> b!940691 m!876119))

(declare-fun m!876121 () Bool)

(assert (=> mapNonEmpty!32368 m!876121))

(declare-fun m!876123 () Bool)

(assert (=> b!940688 m!876123))

(declare-fun m!876125 () Bool)

(assert (=> b!940688 m!876125))

(declare-fun m!876127 () Bool)

(assert (=> b!940688 m!876127))

(check-sat (not b!940692) (not mapNonEmpty!32368) (not b!940687) (not b!940688) (not b_next!17877) (not b!940691) b_and!29307 (not b!940686) (not start!80050) tp_is_empty!20385)
(check-sat b_and!29307 (not b_next!17877))

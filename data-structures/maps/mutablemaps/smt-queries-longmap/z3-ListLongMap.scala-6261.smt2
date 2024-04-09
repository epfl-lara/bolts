; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80062 () Bool)

(assert start!80062)

(declare-fun b!940870 () Bool)

(declare-fun b_free!17889 () Bool)

(declare-fun b_next!17889 () Bool)

(assert (=> b!940870 (= b_free!17889 (not b_next!17889))))

(declare-fun tp!62142 () Bool)

(declare-fun b_and!29319 () Bool)

(assert (=> b!940870 (= tp!62142 b_and!29319)))

(declare-fun b!940866 () Bool)

(declare-fun e!528906 () Bool)

(declare-fun e!528908 () Bool)

(declare-fun mapRes!32386 () Bool)

(assert (=> b!940866 (= e!528906 (and e!528908 mapRes!32386))))

(declare-fun condMapEmpty!32386 () Bool)

(declare-datatypes ((V!32161 0))(
  ( (V!32162 (val!10249 Int)) )
))
(declare-datatypes ((ValueCell!9717 0))(
  ( (ValueCellFull!9717 (v!12780 V!32161)) (EmptyCell!9717) )
))
(declare-datatypes ((array!56764 0))(
  ( (array!56765 (arr!27313 (Array (_ BitVec 32) ValueCell!9717)) (size!27775 (_ BitVec 32))) )
))
(declare-datatypes ((array!56766 0))(
  ( (array!56767 (arr!27314 (Array (_ BitVec 32) (_ BitVec 64))) (size!27776 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4584 0))(
  ( (LongMapFixedSize!4585 (defaultEntry!5583 Int) (mask!27129 (_ BitVec 32)) (extraKeys!5315 (_ BitVec 32)) (zeroValue!5419 V!32161) (minValue!5419 V!32161) (_size!2347 (_ BitVec 32)) (_keys!10429 array!56766) (_values!5606 array!56764) (_vacant!2347 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4584)

(declare-fun mapDefault!32386 () ValueCell!9717)

(assert (=> b!940866 (= condMapEmpty!32386 (= (arr!27313 (_values!5606 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9717)) mapDefault!32386)))))

(declare-fun b!940867 () Bool)

(declare-fun e!528910 () Bool)

(declare-fun e!528907 () Bool)

(assert (=> b!940867 (= e!528910 e!528907)))

(declare-fun res!632711 () Bool)

(assert (=> b!940867 (=> (not res!632711) (not e!528907))))

(declare-datatypes ((SeekEntryResult!9005 0))(
  ( (MissingZero!9005 (index!38390 (_ BitVec 32))) (Found!9005 (index!38391 (_ BitVec 32))) (Intermediate!9005 (undefined!9817 Bool) (index!38392 (_ BitVec 32)) (x!80707 (_ BitVec 32))) (Undefined!9005) (MissingVacant!9005 (index!38393 (_ BitVec 32))) )
))
(declare-fun lt!424830 () SeekEntryResult!9005)

(get-info :version)

(assert (=> b!940867 (= res!632711 ((_ is Found!9005) lt!424830))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56766 (_ BitVec 32)) SeekEntryResult!9005)

(assert (=> b!940867 (= lt!424830 (seekEntry!0 key!756 (_keys!10429 thiss!1141) (mask!27129 thiss!1141)))))

(declare-fun b!940868 () Bool)

(declare-fun res!632712 () Bool)

(declare-fun e!528912 () Bool)

(assert (=> b!940868 (=> res!632712 e!528912)))

(assert (=> b!940868 (= res!632712 (or (not (= (size!27775 (_values!5606 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27129 thiss!1141)))) (not (= (size!27776 (_keys!10429 thiss!1141)) (size!27775 (_values!5606 thiss!1141)))) (bvslt (mask!27129 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5315 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5315 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun res!632714 () Bool)

(assert (=> start!80062 (=> (not res!632714) (not e!528910))))

(declare-fun valid!1739 (LongMapFixedSize!4584) Bool)

(assert (=> start!80062 (= res!632714 (valid!1739 thiss!1141))))

(assert (=> start!80062 e!528910))

(declare-fun e!528905 () Bool)

(assert (=> start!80062 e!528905))

(assert (=> start!80062 true))

(declare-fun b!940869 () Bool)

(declare-fun res!632710 () Bool)

(assert (=> b!940869 (=> res!632710 e!528912)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56766 (_ BitVec 32)) Bool)

(assert (=> b!940869 (= res!632710 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10429 thiss!1141) (mask!27129 thiss!1141))))))

(declare-fun tp_is_empty!20397 () Bool)

(declare-fun array_inv!21182 (array!56766) Bool)

(declare-fun array_inv!21183 (array!56764) Bool)

(assert (=> b!940870 (= e!528905 (and tp!62142 tp_is_empty!20397 (array_inv!21182 (_keys!10429 thiss!1141)) (array_inv!21183 (_values!5606 thiss!1141)) e!528906))))

(declare-fun b!940871 () Bool)

(assert (=> b!940871 (= e!528908 tp_is_empty!20397)))

(declare-fun b!940872 () Bool)

(declare-fun res!632713 () Bool)

(assert (=> b!940872 (=> (not res!632713) (not e!528910))))

(assert (=> b!940872 (= res!632713 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32386 () Bool)

(assert (=> mapIsEmpty!32386 mapRes!32386))

(declare-fun b!940873 () Bool)

(assert (=> b!940873 (= e!528912 true)))

(declare-fun lt!424829 () Bool)

(declare-datatypes ((List!19334 0))(
  ( (Nil!19331) (Cons!19330 (h!20476 (_ BitVec 64)) (t!27657 List!19334)) )
))
(declare-fun arrayNoDuplicates!0 (array!56766 (_ BitVec 32) List!19334) Bool)

(assert (=> b!940873 (= lt!424829 (arrayNoDuplicates!0 (_keys!10429 thiss!1141) #b00000000000000000000000000000000 Nil!19331))))

(declare-fun b!940874 () Bool)

(assert (=> b!940874 (= e!528907 (not e!528912))))

(declare-fun res!632709 () Bool)

(assert (=> b!940874 (=> res!632709 e!528912)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940874 (= res!632709 (not (validMask!0 (mask!27129 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!56766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940874 (arrayContainsKey!0 (_keys!10429 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31797 0))(
  ( (Unit!31798) )
))
(declare-fun lt!424828 () Unit!31797)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56766 (_ BitVec 64) (_ BitVec 32)) Unit!31797)

(assert (=> b!940874 (= lt!424828 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10429 thiss!1141) key!756 (index!38391 lt!424830)))))

(declare-fun b!940875 () Bool)

(declare-fun e!528911 () Bool)

(assert (=> b!940875 (= e!528911 tp_is_empty!20397)))

(declare-fun mapNonEmpty!32386 () Bool)

(declare-fun tp!62143 () Bool)

(assert (=> mapNonEmpty!32386 (= mapRes!32386 (and tp!62143 e!528911))))

(declare-fun mapKey!32386 () (_ BitVec 32))

(declare-fun mapRest!32386 () (Array (_ BitVec 32) ValueCell!9717))

(declare-fun mapValue!32386 () ValueCell!9717)

(assert (=> mapNonEmpty!32386 (= (arr!27313 (_values!5606 thiss!1141)) (store mapRest!32386 mapKey!32386 mapValue!32386))))

(assert (= (and start!80062 res!632714) b!940872))

(assert (= (and b!940872 res!632713) b!940867))

(assert (= (and b!940867 res!632711) b!940874))

(assert (= (and b!940874 (not res!632709)) b!940868))

(assert (= (and b!940868 (not res!632712)) b!940869))

(assert (= (and b!940869 (not res!632710)) b!940873))

(assert (= (and b!940866 condMapEmpty!32386) mapIsEmpty!32386))

(assert (= (and b!940866 (not condMapEmpty!32386)) mapNonEmpty!32386))

(assert (= (and mapNonEmpty!32386 ((_ is ValueCellFull!9717) mapValue!32386)) b!940875))

(assert (= (and b!940866 ((_ is ValueCellFull!9717) mapDefault!32386)) b!940871))

(assert (= b!940870 b!940866))

(assert (= start!80062 b!940870))

(declare-fun m!876229 () Bool)

(assert (=> start!80062 m!876229))

(declare-fun m!876231 () Bool)

(assert (=> mapNonEmpty!32386 m!876231))

(declare-fun m!876233 () Bool)

(assert (=> b!940870 m!876233))

(declare-fun m!876235 () Bool)

(assert (=> b!940870 m!876235))

(declare-fun m!876237 () Bool)

(assert (=> b!940873 m!876237))

(declare-fun m!876239 () Bool)

(assert (=> b!940867 m!876239))

(declare-fun m!876241 () Bool)

(assert (=> b!940874 m!876241))

(declare-fun m!876243 () Bool)

(assert (=> b!940874 m!876243))

(declare-fun m!876245 () Bool)

(assert (=> b!940874 m!876245))

(declare-fun m!876247 () Bool)

(assert (=> b!940869 m!876247))

(check-sat b_and!29319 (not start!80062) (not mapNonEmpty!32386) (not b!940869) tp_is_empty!20397 (not b_next!17889) (not b!940873) (not b!940867) (not b!940874) (not b!940870))
(check-sat b_and!29319 (not b_next!17889))

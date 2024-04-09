; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80418 () Bool)

(assert start!80418)

(declare-fun b!944027 () Bool)

(declare-fun b_free!18033 () Bool)

(declare-fun b_next!18033 () Bool)

(assert (=> b!944027 (= b_free!18033 (not b_next!18033))))

(declare-fun tp!62609 () Bool)

(declare-fun b_and!29469 () Bool)

(assert (=> b!944027 (= tp!62609 b_and!29469)))

(declare-fun b!944025 () Bool)

(declare-fun res!634304 () Bool)

(declare-fun e!530877 () Bool)

(assert (=> b!944025 (=> (not res!634304) (not e!530877))))

(declare-datatypes ((V!32353 0))(
  ( (V!32354 (val!10321 Int)) )
))
(declare-datatypes ((ValueCell!9789 0))(
  ( (ValueCellFull!9789 (v!12853 V!32353)) (EmptyCell!9789) )
))
(declare-datatypes ((array!57072 0))(
  ( (array!57073 (arr!27457 (Array (_ BitVec 32) ValueCell!9789)) (size!27924 (_ BitVec 32))) )
))
(declare-datatypes ((array!57074 0))(
  ( (array!57075 (arr!27458 (Array (_ BitVec 32) (_ BitVec 64))) (size!27925 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4728 0))(
  ( (LongMapFixedSize!4729 (defaultEntry!5659 Int) (mask!27296 (_ BitVec 32)) (extraKeys!5391 (_ BitVec 32)) (zeroValue!5495 V!32353) (minValue!5495 V!32353) (_size!2419 (_ BitVec 32)) (_keys!10533 array!57074) (_values!5682 array!57072) (_vacant!2419 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4728)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13566 0))(
  ( (tuple2!13567 (_1!6793 (_ BitVec 64)) (_2!6793 V!32353)) )
))
(declare-datatypes ((List!19397 0))(
  ( (Nil!19394) (Cons!19393 (h!20544 tuple2!13566) (t!27722 List!19397)) )
))
(declare-datatypes ((ListLongMap!12277 0))(
  ( (ListLongMap!12278 (toList!6154 List!19397)) )
))
(declare-fun contains!5177 (ListLongMap!12277 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3342 (array!57074 array!57072 (_ BitVec 32) (_ BitVec 32) V!32353 V!32353 (_ BitVec 32) Int) ListLongMap!12277)

(assert (=> b!944025 (= res!634304 (contains!5177 (getCurrentListMap!3342 (_keys!10533 thiss!1141) (_values!5682 thiss!1141) (mask!27296 thiss!1141) (extraKeys!5391 thiss!1141) (zeroValue!5495 thiss!1141) (minValue!5495 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5659 thiss!1141)) key!756))))

(declare-fun b!944026 () Bool)

(declare-fun e!530876 () Bool)

(declare-fun tp_is_empty!20541 () Bool)

(assert (=> b!944026 (= e!530876 tp_is_empty!20541)))

(declare-fun res!634305 () Bool)

(assert (=> start!80418 (=> (not res!634305) (not e!530877))))

(declare-fun valid!1785 (LongMapFixedSize!4728) Bool)

(assert (=> start!80418 (= res!634305 (valid!1785 thiss!1141))))

(assert (=> start!80418 e!530877))

(declare-fun e!530872 () Bool)

(assert (=> start!80418 e!530872))

(assert (=> start!80418 true))

(declare-fun e!530874 () Bool)

(declare-fun array_inv!21280 (array!57074) Bool)

(declare-fun array_inv!21281 (array!57072) Bool)

(assert (=> b!944027 (= e!530872 (and tp!62609 tp_is_empty!20541 (array_inv!21280 (_keys!10533 thiss!1141)) (array_inv!21281 (_values!5682 thiss!1141)) e!530874))))

(declare-fun mapNonEmpty!32637 () Bool)

(declare-fun mapRes!32637 () Bool)

(declare-fun tp!62610 () Bool)

(assert (=> mapNonEmpty!32637 (= mapRes!32637 (and tp!62610 e!530876))))

(declare-fun mapKey!32637 () (_ BitVec 32))

(declare-fun mapValue!32637 () ValueCell!9789)

(declare-fun mapRest!32637 () (Array (_ BitVec 32) ValueCell!9789))

(assert (=> mapNonEmpty!32637 (= (arr!27457 (_values!5682 thiss!1141)) (store mapRest!32637 mapKey!32637 mapValue!32637))))

(declare-fun mapIsEmpty!32637 () Bool)

(assert (=> mapIsEmpty!32637 mapRes!32637))

(declare-fun b!944028 () Bool)

(declare-fun e!530873 () Bool)

(assert (=> b!944028 (= e!530877 (not e!530873))))

(declare-fun res!634306 () Bool)

(assert (=> b!944028 (=> res!634306 e!530873)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944028 (= res!634306 (not (validMask!0 (mask!27296 thiss!1141))))))

(declare-fun lt!425495 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57074 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944028 (= lt!425495 (arrayScanForKey!0 (_keys!10533 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944028 (arrayContainsKey!0 (_keys!10533 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31837 0))(
  ( (Unit!31838) )
))
(declare-fun lt!425494 () Unit!31837)

(declare-fun lemmaKeyInListMapIsInArray!302 (array!57074 array!57072 (_ BitVec 32) (_ BitVec 32) V!32353 V!32353 (_ BitVec 64) Int) Unit!31837)

(assert (=> b!944028 (= lt!425494 (lemmaKeyInListMapIsInArray!302 (_keys!10533 thiss!1141) (_values!5682 thiss!1141) (mask!27296 thiss!1141) (extraKeys!5391 thiss!1141) (zeroValue!5495 thiss!1141) (minValue!5495 thiss!1141) key!756 (defaultEntry!5659 thiss!1141)))))

(declare-fun b!944029 () Bool)

(declare-fun e!530875 () Bool)

(assert (=> b!944029 (= e!530875 tp_is_empty!20541)))

(declare-fun b!944030 () Bool)

(declare-fun res!634301 () Bool)

(assert (=> b!944030 (=> res!634301 e!530873)))

(assert (=> b!944030 (= res!634301 (or (not (= (size!27925 (_keys!10533 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27296 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!27925 (_keys!10533 thiss!1141))) (bvslt lt!425495 #b00000000000000000000000000000000) (bvsgt lt!425495 (size!27925 (_keys!10533 thiss!1141)))))))

(declare-fun b!944031 () Bool)

(declare-fun res!634303 () Bool)

(assert (=> b!944031 (=> (not res!634303) (not e!530877))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9053 0))(
  ( (MissingZero!9053 (index!38582 (_ BitVec 32))) (Found!9053 (index!38583 (_ BitVec 32))) (Intermediate!9053 (undefined!9865 Bool) (index!38584 (_ BitVec 32)) (x!81073 (_ BitVec 32))) (Undefined!9053) (MissingVacant!9053 (index!38585 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57074 (_ BitVec 32)) SeekEntryResult!9053)

(assert (=> b!944031 (= res!634303 (not ((_ is Found!9053) (seekEntry!0 key!756 (_keys!10533 thiss!1141) (mask!27296 thiss!1141)))))))

(declare-fun b!944032 () Bool)

(assert (=> b!944032 (= e!530873 true)))

(declare-fun lt!425493 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57074 (_ BitVec 32)) Bool)

(assert (=> b!944032 (= lt!425493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10533 thiss!1141) (mask!27296 thiss!1141)))))

(declare-fun b!944033 () Bool)

(assert (=> b!944033 (= e!530874 (and e!530875 mapRes!32637))))

(declare-fun condMapEmpty!32637 () Bool)

(declare-fun mapDefault!32637 () ValueCell!9789)

(assert (=> b!944033 (= condMapEmpty!32637 (= (arr!27457 (_values!5682 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9789)) mapDefault!32637)))))

(declare-fun b!944034 () Bool)

(declare-fun res!634302 () Bool)

(assert (=> b!944034 (=> (not res!634302) (not e!530877))))

(assert (=> b!944034 (= res!634302 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!80418 res!634305) b!944034))

(assert (= (and b!944034 res!634302) b!944031))

(assert (= (and b!944031 res!634303) b!944025))

(assert (= (and b!944025 res!634304) b!944028))

(assert (= (and b!944028 (not res!634306)) b!944030))

(assert (= (and b!944030 (not res!634301)) b!944032))

(assert (= (and b!944033 condMapEmpty!32637) mapIsEmpty!32637))

(assert (= (and b!944033 (not condMapEmpty!32637)) mapNonEmpty!32637))

(assert (= (and mapNonEmpty!32637 ((_ is ValueCellFull!9789) mapValue!32637)) b!944026))

(assert (= (and b!944033 ((_ is ValueCellFull!9789) mapDefault!32637)) b!944029))

(assert (= b!944027 b!944033))

(assert (= start!80418 b!944027))

(declare-fun m!878185 () Bool)

(assert (=> b!944028 m!878185))

(declare-fun m!878187 () Bool)

(assert (=> b!944028 m!878187))

(declare-fun m!878189 () Bool)

(assert (=> b!944028 m!878189))

(declare-fun m!878191 () Bool)

(assert (=> b!944028 m!878191))

(declare-fun m!878193 () Bool)

(assert (=> mapNonEmpty!32637 m!878193))

(declare-fun m!878195 () Bool)

(assert (=> b!944025 m!878195))

(assert (=> b!944025 m!878195))

(declare-fun m!878197 () Bool)

(assert (=> b!944025 m!878197))

(declare-fun m!878199 () Bool)

(assert (=> b!944032 m!878199))

(declare-fun m!878201 () Bool)

(assert (=> b!944031 m!878201))

(declare-fun m!878203 () Bool)

(assert (=> b!944027 m!878203))

(declare-fun m!878205 () Bool)

(assert (=> b!944027 m!878205))

(declare-fun m!878207 () Bool)

(assert (=> start!80418 m!878207))

(check-sat (not b!944028) (not b!944032) b_and!29469 (not start!80418) (not mapNonEmpty!32637) tp_is_empty!20541 (not b_next!18033) (not b!944031) (not b!944025) (not b!944027))
(check-sat b_and!29469 (not b_next!18033))

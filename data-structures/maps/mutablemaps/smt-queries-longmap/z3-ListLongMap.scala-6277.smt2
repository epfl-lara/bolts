; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80314 () Bool)

(assert start!80314)

(declare-fun b!942993 () Bool)

(declare-fun b_free!17985 () Bool)

(declare-fun b_next!17985 () Bool)

(assert (=> b!942993 (= b_free!17985 (not b_next!17985))))

(declare-fun tp!62461 () Bool)

(declare-fun b_and!29415 () Bool)

(assert (=> b!942993 (= tp!62461 b_and!29415)))

(declare-fun res!633750 () Bool)

(declare-fun e!530223 () Bool)

(assert (=> start!80314 (=> (not res!633750) (not e!530223))))

(declare-datatypes ((V!32289 0))(
  ( (V!32290 (val!10297 Int)) )
))
(declare-datatypes ((ValueCell!9765 0))(
  ( (ValueCellFull!9765 (v!12828 V!32289)) (EmptyCell!9765) )
))
(declare-datatypes ((array!56974 0))(
  ( (array!56975 (arr!27409 (Array (_ BitVec 32) ValueCell!9765)) (size!27875 (_ BitVec 32))) )
))
(declare-datatypes ((array!56976 0))(
  ( (array!56977 (arr!27410 (Array (_ BitVec 32) (_ BitVec 64))) (size!27876 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4680 0))(
  ( (LongMapFixedSize!4681 (defaultEntry!5631 Int) (mask!27246 (_ BitVec 32)) (extraKeys!5363 (_ BitVec 32)) (zeroValue!5467 V!32289) (minValue!5467 V!32289) (_size!2395 (_ BitVec 32)) (_keys!10501 array!56976) (_values!5654 array!56974) (_vacant!2395 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4680)

(declare-fun valid!1770 (LongMapFixedSize!4680) Bool)

(assert (=> start!80314 (= res!633750 (valid!1770 thiss!1141))))

(assert (=> start!80314 e!530223))

(declare-fun e!530226 () Bool)

(assert (=> start!80314 e!530226))

(assert (=> start!80314 true))

(declare-fun b!942985 () Bool)

(declare-fun res!633746 () Bool)

(assert (=> b!942985 (=> (not res!633746) (not e!530223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56976 (_ BitVec 32)) Bool)

(assert (=> b!942985 (= res!633746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10501 thiss!1141) (mask!27246 thiss!1141)))))

(declare-fun mapIsEmpty!32561 () Bool)

(declare-fun mapRes!32561 () Bool)

(assert (=> mapIsEmpty!32561 mapRes!32561))

(declare-fun b!942986 () Bool)

(declare-fun res!633749 () Bool)

(assert (=> b!942986 (=> (not res!633749) (not e!530223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942986 (= res!633749 (validMask!0 (mask!27246 thiss!1141)))))

(declare-fun b!942987 () Bool)

(assert (=> b!942987 (= e!530223 false)))

(declare-fun lt!425172 () Bool)

(declare-datatypes ((List!19370 0))(
  ( (Nil!19367) (Cons!19366 (h!20516 (_ BitVec 64)) (t!27693 List!19370)) )
))
(declare-fun arrayNoDuplicates!0 (array!56976 (_ BitVec 32) List!19370) Bool)

(assert (=> b!942987 (= lt!425172 (arrayNoDuplicates!0 (_keys!10501 thiss!1141) #b00000000000000000000000000000000 Nil!19367))))

(declare-fun b!942988 () Bool)

(declare-fun res!633748 () Bool)

(assert (=> b!942988 (=> (not res!633748) (not e!530223))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9034 0))(
  ( (MissingZero!9034 (index!38506 (_ BitVec 32))) (Found!9034 (index!38507 (_ BitVec 32))) (Intermediate!9034 (undefined!9846 Bool) (index!38508 (_ BitVec 32)) (x!80972 (_ BitVec 32))) (Undefined!9034) (MissingVacant!9034 (index!38509 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56976 (_ BitVec 32)) SeekEntryResult!9034)

(assert (=> b!942988 (= res!633748 (not ((_ is Found!9034) (seekEntry!0 key!756 (_keys!10501 thiss!1141) (mask!27246 thiss!1141)))))))

(declare-fun b!942989 () Bool)

(declare-fun res!633745 () Bool)

(assert (=> b!942989 (=> (not res!633745) (not e!530223))))

(assert (=> b!942989 (= res!633745 (and (= (size!27875 (_values!5654 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27246 thiss!1141))) (= (size!27876 (_keys!10501 thiss!1141)) (size!27875 (_values!5654 thiss!1141))) (bvsge (mask!27246 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5363 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5363 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942990 () Bool)

(declare-fun e!530225 () Bool)

(declare-fun tp_is_empty!20493 () Bool)

(assert (=> b!942990 (= e!530225 tp_is_empty!20493)))

(declare-fun b!942991 () Bool)

(declare-fun res!633744 () Bool)

(assert (=> b!942991 (=> (not res!633744) (not e!530223))))

(assert (=> b!942991 (= res!633744 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!942992 () Bool)

(declare-fun res!633747 () Bool)

(assert (=> b!942992 (=> (not res!633747) (not e!530223))))

(declare-datatypes ((tuple2!13534 0))(
  ( (tuple2!13535 (_1!6777 (_ BitVec 64)) (_2!6777 V!32289)) )
))
(declare-datatypes ((List!19371 0))(
  ( (Nil!19368) (Cons!19367 (h!20517 tuple2!13534) (t!27694 List!19371)) )
))
(declare-datatypes ((ListLongMap!12245 0))(
  ( (ListLongMap!12246 (toList!6138 List!19371)) )
))
(declare-fun contains!5159 (ListLongMap!12245 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3326 (array!56976 array!56974 (_ BitVec 32) (_ BitVec 32) V!32289 V!32289 (_ BitVec 32) Int) ListLongMap!12245)

(assert (=> b!942992 (= res!633747 (contains!5159 (getCurrentListMap!3326 (_keys!10501 thiss!1141) (_values!5654 thiss!1141) (mask!27246 thiss!1141) (extraKeys!5363 thiss!1141) (zeroValue!5467 thiss!1141) (minValue!5467 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5631 thiss!1141)) key!756))))

(declare-fun e!530228 () Bool)

(declare-fun array_inv!21248 (array!56976) Bool)

(declare-fun array_inv!21249 (array!56974) Bool)

(assert (=> b!942993 (= e!530226 (and tp!62461 tp_is_empty!20493 (array_inv!21248 (_keys!10501 thiss!1141)) (array_inv!21249 (_values!5654 thiss!1141)) e!530228))))

(declare-fun b!942994 () Bool)

(declare-fun e!530227 () Bool)

(assert (=> b!942994 (= e!530227 tp_is_empty!20493)))

(declare-fun mapNonEmpty!32561 () Bool)

(declare-fun tp!62462 () Bool)

(assert (=> mapNonEmpty!32561 (= mapRes!32561 (and tp!62462 e!530225))))

(declare-fun mapRest!32561 () (Array (_ BitVec 32) ValueCell!9765))

(declare-fun mapValue!32561 () ValueCell!9765)

(declare-fun mapKey!32561 () (_ BitVec 32))

(assert (=> mapNonEmpty!32561 (= (arr!27409 (_values!5654 thiss!1141)) (store mapRest!32561 mapKey!32561 mapValue!32561))))

(declare-fun b!942995 () Bool)

(assert (=> b!942995 (= e!530228 (and e!530227 mapRes!32561))))

(declare-fun condMapEmpty!32561 () Bool)

(declare-fun mapDefault!32561 () ValueCell!9765)

(assert (=> b!942995 (= condMapEmpty!32561 (= (arr!27409 (_values!5654 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9765)) mapDefault!32561)))))

(assert (= (and start!80314 res!633750) b!942991))

(assert (= (and b!942991 res!633744) b!942988))

(assert (= (and b!942988 res!633748) b!942992))

(assert (= (and b!942992 res!633747) b!942986))

(assert (= (and b!942986 res!633749) b!942989))

(assert (= (and b!942989 res!633745) b!942985))

(assert (= (and b!942985 res!633746) b!942987))

(assert (= (and b!942995 condMapEmpty!32561) mapIsEmpty!32561))

(assert (= (and b!942995 (not condMapEmpty!32561)) mapNonEmpty!32561))

(assert (= (and mapNonEmpty!32561 ((_ is ValueCellFull!9765) mapValue!32561)) b!942990))

(assert (= (and b!942995 ((_ is ValueCellFull!9765) mapDefault!32561)) b!942994))

(assert (= b!942993 b!942995))

(assert (= start!80314 b!942993))

(declare-fun m!877375 () Bool)

(assert (=> b!942987 m!877375))

(declare-fun m!877377 () Bool)

(assert (=> start!80314 m!877377))

(declare-fun m!877379 () Bool)

(assert (=> b!942992 m!877379))

(assert (=> b!942992 m!877379))

(declare-fun m!877381 () Bool)

(assert (=> b!942992 m!877381))

(declare-fun m!877383 () Bool)

(assert (=> b!942986 m!877383))

(declare-fun m!877385 () Bool)

(assert (=> b!942988 m!877385))

(declare-fun m!877387 () Bool)

(assert (=> mapNonEmpty!32561 m!877387))

(declare-fun m!877389 () Bool)

(assert (=> b!942985 m!877389))

(declare-fun m!877391 () Bool)

(assert (=> b!942993 m!877391))

(declare-fun m!877393 () Bool)

(assert (=> b!942993 m!877393))

(check-sat b_and!29415 (not start!80314) (not b!942992) (not b!942986) (not b!942985) (not b!942993) (not b!942988) (not b!942987) (not b_next!17985) (not mapNonEmpty!32561) tp_is_empty!20493)
(check-sat b_and!29415 (not b_next!17985))

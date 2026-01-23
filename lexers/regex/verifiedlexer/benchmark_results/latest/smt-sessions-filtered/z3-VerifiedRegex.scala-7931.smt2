; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413102 () Bool)

(assert start!413102)

(declare-fun b!4301600 () Bool)

(declare-fun b_free!128131 () Bool)

(declare-fun b_next!128835 () Bool)

(assert (=> b!4301600 (= b_free!128131 (not b_next!128835))))

(declare-fun tp!1321695 () Bool)

(declare-fun b_and!339513 () Bool)

(assert (=> b!4301600 (= tp!1321695 b_and!339513)))

(declare-fun b!4301601 () Bool)

(declare-fun b_free!128133 () Bool)

(declare-fun b_next!128837 () Bool)

(assert (=> b!4301601 (= b_free!128133 (not b_next!128837))))

(declare-fun tp!1321693 () Bool)

(declare-fun b_and!339515 () Bool)

(assert (=> b!4301601 (= tp!1321693 b_and!339515)))

(declare-fun b!4301598 () Bool)

(declare-fun res!1762972 () Bool)

(declare-fun e!2674014 () Bool)

(assert (=> b!4301598 (=> (not res!1762972) (not e!2674014))))

(declare-datatypes ((V!9306 0))(
  ( (V!9307 (val!15541 Int)) )
))
(declare-datatypes ((K!9104 0))(
  ( (K!9105 (val!15542 Int)) )
))
(declare-datatypes ((tuple2!45996 0))(
  ( (tuple2!45997 (_1!26277 K!9104) (_2!26277 V!9306)) )
))
(declare-datatypes ((List!48100 0))(
  ( (Nil!47976) (Cons!47976 (h!53396 tuple2!45996) (t!354867 List!48100)) )
))
(declare-datatypes ((array!16292 0))(
  ( (array!16293 (arr!7271 (Array (_ BitVec 32) (_ BitVec 64))) (size!35310 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4459 0))(
  ( (HashableExt!4458 (__x!29654 Int)) )
))
(declare-datatypes ((array!16294 0))(
  ( (array!16295 (arr!7272 (Array (_ BitVec 32) List!48100)) (size!35311 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9086 0))(
  ( (LongMapFixedSize!9087 (defaultEntry!4928 Int) (mask!13043 (_ BitVec 32)) (extraKeys!4792 (_ BitVec 32)) (zeroValue!4802 List!48100) (minValue!4802 List!48100) (_size!9129 (_ BitVec 32)) (_keys!4843 array!16292) (_values!4824 array!16294) (_vacant!4604 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17981 0))(
  ( (Cell!17982 (v!41966 LongMapFixedSize!9086)) )
))
(declare-datatypes ((MutLongMap!4543 0))(
  ( (LongMap!4543 (underlying!9315 Cell!17981)) (MutLongMapExt!4542 (__x!29655 Int)) )
))
(declare-datatypes ((Cell!17983 0))(
  ( (Cell!17984 (v!41967 MutLongMap!4543)) )
))
(declare-datatypes ((MutableMap!4449 0))(
  ( (MutableMapExt!4448 (__x!29656 Int)) (HashMap!4449 (underlying!9316 Cell!17983) (hashF!6494 Hashable!4459) (_size!9130 (_ BitVec 32)) (defaultValue!4620 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4449)

(declare-fun valid!3529 (MutableMap!4449) Bool)

(assert (=> b!4301598 (= res!1762972 (valid!3529 thiss!42308))))

(declare-fun b!4301599 () Bool)

(declare-fun e!2674009 () Bool)

(declare-fun e!2674010 () Bool)

(assert (=> b!4301599 (= e!2674009 e!2674010)))

(declare-fun mapNonEmpty!20398 () Bool)

(declare-fun mapRes!20398 () Bool)

(declare-fun tp!1321691 () Bool)

(declare-fun tp!1321696 () Bool)

(assert (=> mapNonEmpty!20398 (= mapRes!20398 (and tp!1321691 tp!1321696))))

(declare-fun mapRest!20398 () (Array (_ BitVec 32) List!48100))

(declare-fun mapValue!20398 () List!48100)

(declare-fun mapKey!20398 () (_ BitVec 32))

(assert (=> mapNonEmpty!20398 (= (arr!7272 (_values!4824 (v!41966 (underlying!9315 (v!41967 (underlying!9316 thiss!42308)))))) (store mapRest!20398 mapKey!20398 mapValue!20398))))

(declare-fun tp!1321692 () Bool)

(declare-fun tp!1321697 () Bool)

(declare-fun e!2674012 () Bool)

(declare-fun array_inv!5215 (array!16292) Bool)

(declare-fun array_inv!5216 (array!16294) Bool)

(assert (=> b!4301600 (= e!2674010 (and tp!1321695 tp!1321697 tp!1321692 (array_inv!5215 (_keys!4843 (v!41966 (underlying!9315 (v!41967 (underlying!9316 thiss!42308)))))) (array_inv!5216 (_values!4824 (v!41966 (underlying!9315 (v!41967 (underlying!9316 thiss!42308)))))) e!2674012))))

(declare-fun e!2674016 () Bool)

(declare-fun e!2674015 () Bool)

(assert (=> b!4301601 (= e!2674016 (and e!2674015 tp!1321693))))

(declare-fun b!4301602 () Bool)

(declare-fun tp!1321694 () Bool)

(assert (=> b!4301602 (= e!2674012 (and tp!1321694 mapRes!20398))))

(declare-fun condMapEmpty!20398 () Bool)

(declare-fun mapDefault!20398 () List!48100)

(assert (=> b!4301602 (= condMapEmpty!20398 (= (arr!7272 (_values!4824 (v!41966 (underlying!9315 (v!41967 (underlying!9316 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48100)) mapDefault!20398)))))

(declare-fun b!4301603 () Bool)

(declare-fun e!2674017 () Bool)

(declare-fun lt!1523490 () MutLongMap!4543)

(get-info :version)

(assert (=> b!4301603 (= e!2674015 (and e!2674017 ((_ is LongMap!4543) lt!1523490)))))

(assert (=> b!4301603 (= lt!1523490 (v!41967 (underlying!9316 thiss!42308)))))

(declare-fun b!4301604 () Bool)

(assert (=> b!4301604 (= e!2674017 e!2674009)))

(declare-fun b!4301605 () Bool)

(declare-fun e!2674013 () Bool)

(assert (=> b!4301605 (= e!2674013 (not ((_ is LongMap!4543) (v!41967 (underlying!9316 thiss!42308)))))))

(declare-fun lt!1523488 () List!48100)

(declare-fun key!2048 () K!9104)

(declare-fun removePairForKey!146 (List!48100 K!9104) List!48100)

(declare-fun apply!10887 (MutLongMap!4543 (_ BitVec 64)) List!48100)

(declare-fun hash!848 (Hashable!4459 K!9104) (_ BitVec 64))

(assert (=> b!4301605 (= lt!1523488 (removePairForKey!146 (apply!10887 (v!41967 (underlying!9316 thiss!42308)) (hash!848 (hashF!6494 thiss!42308) key!2048)) key!2048))))

(declare-fun b!4301606 () Bool)

(assert (=> b!4301606 (= e!2674014 e!2674013)))

(declare-fun res!1762974 () Bool)

(assert (=> b!4301606 (=> (not res!1762974) (not e!2674013))))

(declare-fun contains!9900 (MutableMap!4449 K!9104) Bool)

(assert (=> b!4301606 (= res!1762974 (contains!9900 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!45998 0))(
  ( (tuple2!45999 (_1!26278 (_ BitVec 64)) (_2!26278 List!48100)) )
))
(declare-datatypes ((List!48101 0))(
  ( (Nil!47977) (Cons!47977 (h!53397 tuple2!45998) (t!354868 List!48101)) )
))
(declare-datatypes ((ListLongMap!827 0))(
  ( (ListLongMap!828 (toList!2221 List!48101)) )
))
(declare-fun lt!1523489 () ListLongMap!827)

(declare-fun map!9936 (MutLongMap!4543) ListLongMap!827)

(assert (=> b!4301606 (= lt!1523489 (map!9936 (v!41967 (underlying!9316 thiss!42308))))))

(declare-datatypes ((ListMap!1509 0))(
  ( (ListMap!1510 (toList!2222 List!48100)) )
))
(declare-fun lt!1523487 () ListMap!1509)

(declare-fun map!9937 (MutableMap!4449) ListMap!1509)

(assert (=> b!4301606 (= lt!1523487 (map!9937 thiss!42308))))

(declare-fun mapIsEmpty!20398 () Bool)

(assert (=> mapIsEmpty!20398 mapRes!20398))

(declare-fun res!1762973 () Bool)

(assert (=> start!413102 (=> (not res!1762973) (not e!2674014))))

(assert (=> start!413102 (= res!1762973 ((_ is HashMap!4449) thiss!42308))))

(assert (=> start!413102 e!2674014))

(assert (=> start!413102 e!2674016))

(declare-fun tp_is_empty!23315 () Bool)

(assert (=> start!413102 tp_is_empty!23315))

(assert (= (and start!413102 res!1762973) b!4301598))

(assert (= (and b!4301598 res!1762972) b!4301606))

(assert (= (and b!4301606 res!1762974) b!4301605))

(assert (= (and b!4301602 condMapEmpty!20398) mapIsEmpty!20398))

(assert (= (and b!4301602 (not condMapEmpty!20398)) mapNonEmpty!20398))

(assert (= b!4301600 b!4301602))

(assert (= b!4301599 b!4301600))

(assert (= b!4301604 b!4301599))

(assert (= (and b!4301603 ((_ is LongMap!4543) (v!41967 (underlying!9316 thiss!42308)))) b!4301604))

(assert (= b!4301601 b!4301603))

(assert (= (and start!413102 ((_ is HashMap!4449) thiss!42308)) b!4301601))

(declare-fun m!4893811 () Bool)

(assert (=> b!4301598 m!4893811))

(declare-fun m!4893813 () Bool)

(assert (=> mapNonEmpty!20398 m!4893813))

(declare-fun m!4893815 () Bool)

(assert (=> b!4301606 m!4893815))

(declare-fun m!4893817 () Bool)

(assert (=> b!4301606 m!4893817))

(declare-fun m!4893819 () Bool)

(assert (=> b!4301606 m!4893819))

(declare-fun m!4893821 () Bool)

(assert (=> b!4301600 m!4893821))

(declare-fun m!4893823 () Bool)

(assert (=> b!4301600 m!4893823))

(declare-fun m!4893825 () Bool)

(assert (=> b!4301605 m!4893825))

(assert (=> b!4301605 m!4893825))

(declare-fun m!4893827 () Bool)

(assert (=> b!4301605 m!4893827))

(assert (=> b!4301605 m!4893827))

(declare-fun m!4893829 () Bool)

(assert (=> b!4301605 m!4893829))

(check-sat (not b_next!128835) (not b!4301598) (not b!4301606) tp_is_empty!23315 b_and!339515 (not b!4301600) (not b!4301602) b_and!339513 (not mapNonEmpty!20398) (not b!4301605) (not b_next!128837))
(check-sat b_and!339513 b_and!339515 (not b_next!128837) (not b_next!128835))

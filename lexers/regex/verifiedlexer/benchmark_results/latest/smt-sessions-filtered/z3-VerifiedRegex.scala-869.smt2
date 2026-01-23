; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46358 () Bool)

(assert start!46358)

(declare-fun b!512221 () Bool)

(declare-fun b_free!13271 () Bool)

(declare-fun b_next!13271 () Bool)

(assert (=> b!512221 (= b_free!13271 (not b_next!13271))))

(declare-fun tp!159217 () Bool)

(declare-fun b_and!50691 () Bool)

(assert (=> b!512221 (= tp!159217 b_and!50691)))

(declare-fun mapNonEmpty!1796 () Bool)

(declare-fun mapRes!1796 () Bool)

(declare-fun tp!159216 () Bool)

(declare-fun tp_is_empty!2467 () Bool)

(assert (=> mapNonEmpty!1796 (= mapRes!1796 (and tp!159216 tp_is_empty!2467))))

(declare-fun mapKey!1796 () (_ BitVec 32))

(declare-datatypes ((V!1372 0))(
  ( (V!1373 (val!1682 Int)) )
))
(declare-datatypes ((array!1763 0))(
  ( (array!1764 (arr!814 (Array (_ BitVec 32) (_ BitVec 64))) (size!3748 (_ BitVec 32))) )
))
(declare-datatypes ((array!1765 0))(
  ( (array!1766 (arr!815 (Array (_ BitVec 32) V!1372)) (size!3749 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!930 0))(
  ( (LongMapFixedSize!931 (defaultEntry!812 Int) (mask!1859 (_ BitVec 32)) (extraKeys!711 (_ BitVec 32)) (zeroValue!721 V!1372) (minValue!721 V!1372) (_size!1042 (_ BitVec 32)) (_keys!756 array!1763) (_values!743 array!1765) (_vacant!526 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1807 0))(
  ( (Cell!1808 (v!15642 LongMapFixedSize!930)) )
))
(declare-datatypes ((MutLongMap!465 0))(
  ( (LongMap!465 (underlying!1112 Cell!1807)) (MutLongMapExt!464 (__x!3292 Int)) )
))
(declare-fun thiss!47442 () MutLongMap!465)

(declare-fun mapRest!1796 () (Array (_ BitVec 32) V!1372))

(declare-fun mapValue!1796 () V!1372)

(assert (=> mapNonEmpty!1796 (= (arr!815 (_values!743 (v!15642 (underlying!1112 thiss!47442)))) (store mapRest!1796 mapKey!1796 mapValue!1796))))

(declare-fun b!512218 () Bool)

(declare-fun e!306045 () Bool)

(assert (=> b!512218 (= e!306045 false)))

(declare-datatypes ((Option!1226 0))(
  ( (None!1225) (Some!1225 (v!15643 V!1372)) )
))
(declare-fun lt!212195 () Option!1226)

(declare-fun key!7052 () (_ BitVec 64))

(declare-datatypes ((tuple2!5532 0))(
  ( (tuple2!5533 (_1!2982 (_ BitVec 64)) (_2!2982 V!1372)) )
))
(declare-datatypes ((List!4650 0))(
  ( (Nil!4640) (Cons!4640 (h!10037 tuple2!5532) (t!73168 List!4650)) )
))
(declare-fun getValueByKey!12 (List!4650 (_ BitVec 64)) Option!1226)

(declare-datatypes ((ListLongMap!47 0))(
  ( (ListLongMap!48 (toList!359 List!4650)) )
))
(declare-fun abstractMap!31 (MutLongMap!465) ListLongMap!47)

(assert (=> b!512218 (= lt!212195 (getValueByKey!12 (toList!359 (abstractMap!31 thiss!47442)) key!7052))))

(declare-fun b!512219 () Bool)

(declare-fun e!306040 () Bool)

(declare-fun e!306041 () Bool)

(assert (=> b!512219 (= e!306040 e!306041)))

(declare-fun b!512220 () Bool)

(declare-fun e!306042 () Bool)

(assert (=> b!512220 (= e!306042 (and tp_is_empty!2467 mapRes!1796))))

(declare-fun condMapEmpty!1796 () Bool)

(declare-fun mapDefault!1796 () V!1372)

(assert (=> b!512220 (= condMapEmpty!1796 (= (arr!815 (_values!743 (v!15642 (underlying!1112 thiss!47442)))) ((as const (Array (_ BitVec 32) V!1372)) mapDefault!1796)))))

(declare-fun e!306046 () Bool)

(declare-fun array_inv!585 (array!1763) Bool)

(declare-fun array_inv!586 (array!1765) Bool)

(assert (=> b!512221 (= e!306046 (and tp!159217 tp_is_empty!2467 (array_inv!585 (_keys!756 (v!15642 (underlying!1112 thiss!47442)))) (array_inv!586 (_values!743 (v!15642 (underlying!1112 thiss!47442)))) e!306042))))

(declare-fun b!512222 () Bool)

(declare-fun e!306044 () Bool)

(assert (=> b!512222 (= e!306044 e!306045)))

(declare-fun res!217367 () Bool)

(assert (=> b!512222 (=> (not res!217367) (not e!306045))))

(declare-fun contains!1046 (MutLongMap!465 (_ BitVec 64)) Bool)

(assert (=> b!512222 (= res!217367 (contains!1046 thiss!47442 key!7052))))

(declare-fun lt!212194 () V!1372)

(declare-fun choose!3649 (MutLongMap!465 (_ BitVec 64)) V!1372)

(assert (=> b!512222 (= lt!212194 (choose!3649 thiss!47442 key!7052))))

(declare-fun b!512223 () Bool)

(assert (=> b!512223 (= e!306041 e!306046)))

(declare-fun res!217369 () Bool)

(assert (=> start!46358 (=> (not res!217369) (not e!306044))))

(get-info :version)

(assert (=> start!46358 (= res!217369 ((_ is MutLongMapExt!464) thiss!47442))))

(assert (=> start!46358 e!306044))

(assert (=> start!46358 e!306040))

(assert (=> start!46358 true))

(declare-fun b!512224 () Bool)

(declare-fun res!217368 () Bool)

(assert (=> b!512224 (=> (not res!217368) (not e!306044))))

(declare-fun valid!419 (MutLongMap!465) Bool)

(assert (=> b!512224 (= res!217368 (valid!419 thiss!47442))))

(declare-fun mapIsEmpty!1796 () Bool)

(assert (=> mapIsEmpty!1796 mapRes!1796))

(assert (= (and start!46358 res!217369) b!512224))

(assert (= (and b!512224 res!217368) b!512222))

(assert (= (and b!512222 res!217367) b!512218))

(assert (= (and b!512220 condMapEmpty!1796) mapIsEmpty!1796))

(assert (= (and b!512220 (not condMapEmpty!1796)) mapNonEmpty!1796))

(assert (= b!512221 b!512220))

(assert (= b!512223 b!512221))

(assert (= b!512219 b!512223))

(assert (= (and start!46358 ((_ is LongMap!465) thiss!47442)) b!512219))

(declare-fun m!759007 () Bool)

(assert (=> b!512224 m!759007))

(declare-fun m!759009 () Bool)

(assert (=> b!512222 m!759009))

(declare-fun m!759011 () Bool)

(assert (=> b!512222 m!759011))

(declare-fun m!759013 () Bool)

(assert (=> b!512221 m!759013))

(declare-fun m!759015 () Bool)

(assert (=> b!512221 m!759015))

(declare-fun m!759017 () Bool)

(assert (=> mapNonEmpty!1796 m!759017))

(declare-fun m!759019 () Bool)

(assert (=> b!512218 m!759019))

(declare-fun m!759021 () Bool)

(assert (=> b!512218 m!759021))

(check-sat (not mapNonEmpty!1796) (not b!512221) tp_is_empty!2467 (not b_next!13271) (not b!512222) b_and!50691 (not b!512224) (not b!512218))
(check-sat b_and!50691 (not b_next!13271))

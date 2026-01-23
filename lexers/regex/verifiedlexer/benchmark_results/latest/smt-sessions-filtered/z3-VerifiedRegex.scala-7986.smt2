; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414066 () Bool)

(assert start!414066)

(declare-fun b!4309163 () Bool)

(declare-fun b_free!128571 () Bool)

(declare-fun b_next!129275 () Bool)

(assert (=> b!4309163 (= b_free!128571 (not b_next!129275))))

(declare-fun tp!1324271 () Bool)

(declare-fun b_and!339985 () Bool)

(assert (=> b!4309163 (= tp!1324271 b_and!339985)))

(declare-fun b!4309169 () Bool)

(declare-fun b_free!128573 () Bool)

(declare-fun b_next!129277 () Bool)

(assert (=> b!4309169 (= b_free!128573 (not b_next!129277))))

(declare-fun tp!1324274 () Bool)

(declare-fun b_and!339987 () Bool)

(assert (=> b!4309169 (= tp!1324274 b_and!339987)))

(declare-fun mapNonEmpty!20782 () Bool)

(declare-fun mapRes!20782 () Bool)

(declare-fun tp!1324276 () Bool)

(declare-fun tp!1324275 () Bool)

(assert (=> mapNonEmpty!20782 (= mapRes!20782 (and tp!1324276 tp!1324275))))

(declare-fun mapKey!20782 () (_ BitVec 32))

(declare-datatypes ((K!9379 0))(
  ( (K!9380 (val!15761 Int)) )
))
(declare-datatypes ((V!9581 0))(
  ( (V!9582 (val!15762 Int)) )
))
(declare-datatypes ((tuple2!46592 0))(
  ( (tuple2!46593 (_1!26575 K!9379) (_2!26575 V!9581)) )
))
(declare-datatypes ((List!48304 0))(
  ( (Nil!48180) (Cons!48180 (h!53614 tuple2!46592) (t!355103 List!48304)) )
))
(declare-fun mapRest!20782 () (Array (_ BitVec 32) List!48304))

(declare-fun mapValue!20782 () List!48304)

(declare-datatypes ((array!16768 0))(
  ( (array!16769 (arr!7491 (Array (_ BitVec 32) (_ BitVec 64))) (size!35530 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4569 0))(
  ( (HashableExt!4568 (__x!29984 Int)) )
))
(declare-datatypes ((array!16770 0))(
  ( (array!16771 (arr!7492 (Array (_ BitVec 32) List!48304)) (size!35531 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9306 0))(
  ( (LongMapFixedSize!9307 (defaultEntry!5038 Int) (mask!13208 (_ BitVec 32)) (extraKeys!4902 (_ BitVec 32)) (zeroValue!4912 List!48304) (minValue!4912 List!48304) (_size!9349 (_ BitVec 32)) (_keys!4953 array!16768) (_values!4934 array!16770) (_vacant!4714 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18421 0))(
  ( (Cell!18422 (v!42295 LongMapFixedSize!9306)) )
))
(declare-datatypes ((MutLongMap!4653 0))(
  ( (LongMap!4653 (underlying!9535 Cell!18421)) (MutLongMapExt!4652 (__x!29985 Int)) )
))
(declare-datatypes ((Cell!18423 0))(
  ( (Cell!18424 (v!42296 MutLongMap!4653)) )
))
(declare-datatypes ((MutableMap!4559 0))(
  ( (MutableMapExt!4558 (__x!29986 Int)) (HashMap!4559 (underlying!9536 Cell!18423) (hashF!6685 Hashable!4569) (_size!9350 (_ BitVec 32)) (defaultValue!4730 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4559)

(assert (=> mapNonEmpty!20782 (= (arr!7492 (_values!4934 (v!42295 (underlying!9535 (v!42296 (underlying!9536 thiss!42308)))))) (store mapRest!20782 mapKey!20782 mapValue!20782))))

(declare-fun b!4309161 () Bool)

(declare-fun e!2679809 () Bool)

(assert (=> b!4309161 (= e!2679809 false)))

(declare-fun lt!1530117 () List!48304)

(declare-fun key!2048 () K!9379)

(declare-fun removePairForKey!206 (List!48304 K!9379) List!48304)

(declare-fun apply!11003 (MutLongMap!4653 (_ BitVec 64)) List!48304)

(declare-fun hash!997 (Hashable!4569 K!9379) (_ BitVec 64))

(assert (=> b!4309161 (= lt!1530117 (removePairForKey!206 (apply!11003 (v!42296 (underlying!9536 thiss!42308)) (hash!997 (hashF!6685 thiss!42308) key!2048)) key!2048))))

(declare-fun b!4309162 () Bool)

(declare-fun e!2679812 () Bool)

(declare-fun tp!1324272 () Bool)

(assert (=> b!4309162 (= e!2679812 (and tp!1324272 mapRes!20782))))

(declare-fun condMapEmpty!20782 () Bool)

(declare-fun mapDefault!20782 () List!48304)

(assert (=> b!4309162 (= condMapEmpty!20782 (= (arr!7492 (_values!4934 (v!42295 (underlying!9535 (v!42296 (underlying!9536 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48304)) mapDefault!20782)))))

(declare-fun tp!1324277 () Bool)

(declare-fun tp!1324273 () Bool)

(declare-fun e!2679810 () Bool)

(declare-fun array_inv!5375 (array!16768) Bool)

(declare-fun array_inv!5376 (array!16770) Bool)

(assert (=> b!4309163 (= e!2679810 (and tp!1324271 tp!1324277 tp!1324273 (array_inv!5375 (_keys!4953 (v!42295 (underlying!9535 (v!42296 (underlying!9536 thiss!42308)))))) (array_inv!5376 (_values!4934 (v!42295 (underlying!9535 (v!42296 (underlying!9536 thiss!42308)))))) e!2679812))))

(declare-fun b!4309164 () Bool)

(declare-fun e!2679813 () Bool)

(declare-fun e!2679806 () Bool)

(declare-fun lt!1530114 () MutLongMap!4653)

(get-info :version)

(assert (=> b!4309164 (= e!2679813 (and e!2679806 ((_ is LongMap!4653) lt!1530114)))))

(assert (=> b!4309164 (= lt!1530114 (v!42296 (underlying!9536 thiss!42308)))))

(declare-fun b!4309165 () Bool)

(declare-fun e!2679814 () Bool)

(assert (=> b!4309165 (= e!2679814 e!2679809)))

(declare-fun res!1766155 () Bool)

(assert (=> b!4309165 (=> (not res!1766155) (not e!2679809))))

(declare-fun contains!10149 (MutableMap!4559 K!9379) Bool)

(assert (=> b!4309165 (= res!1766155 (contains!10149 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46594 0))(
  ( (tuple2!46595 (_1!26576 (_ BitVec 64)) (_2!26576 List!48304)) )
))
(declare-datatypes ((List!48305 0))(
  ( (Nil!48181) (Cons!48181 (h!53615 tuple2!46594) (t!355104 List!48305)) )
))
(declare-datatypes ((ListLongMap!1003 0))(
  ( (ListLongMap!1004 (toList!2391 List!48305)) )
))
(declare-fun lt!1530115 () ListLongMap!1003)

(declare-fun map!10167 (MutLongMap!4653) ListLongMap!1003)

(assert (=> b!4309165 (= lt!1530115 (map!10167 (v!42296 (underlying!9536 thiss!42308))))))

(declare-datatypes ((ListMap!1673 0))(
  ( (ListMap!1674 (toList!2392 List!48304)) )
))
(declare-fun lt!1530116 () ListMap!1673)

(declare-fun map!10168 (MutableMap!4559) ListMap!1673)

(assert (=> b!4309165 (= lt!1530116 (map!10168 thiss!42308))))

(declare-fun b!4309166 () Bool)

(declare-fun e!2679811 () Bool)

(assert (=> b!4309166 (= e!2679806 e!2679811)))

(declare-fun b!4309167 () Bool)

(declare-fun res!1766156 () Bool)

(assert (=> b!4309167 (=> (not res!1766156) (not e!2679814))))

(declare-fun valid!3641 (MutableMap!4559) Bool)

(assert (=> b!4309167 (= res!1766156 (valid!3641 thiss!42308))))

(declare-fun b!4309168 () Bool)

(assert (=> b!4309168 (= e!2679811 e!2679810)))

(declare-fun mapIsEmpty!20782 () Bool)

(assert (=> mapIsEmpty!20782 mapRes!20782))

(declare-fun e!2679807 () Bool)

(assert (=> b!4309169 (= e!2679807 (and e!2679813 tp!1324274))))

(declare-fun res!1766157 () Bool)

(assert (=> start!414066 (=> (not res!1766157) (not e!2679814))))

(assert (=> start!414066 (= res!1766157 ((_ is HashMap!4559) thiss!42308))))

(assert (=> start!414066 e!2679814))

(assert (=> start!414066 e!2679807))

(declare-fun tp_is_empty!23719 () Bool)

(assert (=> start!414066 tp_is_empty!23719))

(assert (= (and start!414066 res!1766157) b!4309167))

(assert (= (and b!4309167 res!1766156) b!4309165))

(assert (= (and b!4309165 res!1766155) b!4309161))

(assert (= (and b!4309162 condMapEmpty!20782) mapIsEmpty!20782))

(assert (= (and b!4309162 (not condMapEmpty!20782)) mapNonEmpty!20782))

(assert (= b!4309163 b!4309162))

(assert (= b!4309168 b!4309163))

(assert (= b!4309166 b!4309168))

(assert (= (and b!4309164 ((_ is LongMap!4653) (v!42296 (underlying!9536 thiss!42308)))) b!4309166))

(assert (= b!4309169 b!4309164))

(assert (= (and start!414066 ((_ is HashMap!4559) thiss!42308)) b!4309169))

(declare-fun m!4902261 () Bool)

(assert (=> b!4309163 m!4902261))

(declare-fun m!4902263 () Bool)

(assert (=> b!4309163 m!4902263))

(declare-fun m!4902265 () Bool)

(assert (=> b!4309167 m!4902265))

(declare-fun m!4902267 () Bool)

(assert (=> b!4309165 m!4902267))

(declare-fun m!4902269 () Bool)

(assert (=> b!4309165 m!4902269))

(declare-fun m!4902271 () Bool)

(assert (=> b!4309165 m!4902271))

(declare-fun m!4902273 () Bool)

(assert (=> b!4309161 m!4902273))

(assert (=> b!4309161 m!4902273))

(declare-fun m!4902275 () Bool)

(assert (=> b!4309161 m!4902275))

(assert (=> b!4309161 m!4902275))

(declare-fun m!4902277 () Bool)

(assert (=> b!4309161 m!4902277))

(declare-fun m!4902279 () Bool)

(assert (=> mapNonEmpty!20782 m!4902279))

(check-sat b_and!339985 tp_is_empty!23719 (not b!4309161) (not b!4309163) (not b_next!129275) (not b!4309162) (not mapNonEmpty!20782) (not b_next!129277) (not b!4309165) (not b!4309167) b_and!339987)
(check-sat b_and!339985 b_and!339987 (not b_next!129277) (not b_next!129275))

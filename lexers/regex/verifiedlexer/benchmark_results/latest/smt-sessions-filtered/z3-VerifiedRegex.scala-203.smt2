; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3246 () Bool)

(assert start!3246)

(declare-fun b!47298 () Bool)

(declare-fun b_free!1285 () Bool)

(declare-fun b_next!1285 () Bool)

(assert (=> b!47298 (= b_free!1285 (not b_next!1285))))

(declare-fun tp!32106 () Bool)

(declare-fun b_and!1319 () Bool)

(assert (=> b!47298 (= tp!32106 b_and!1319)))

(declare-fun b!47295 () Bool)

(declare-fun b_free!1287 () Bool)

(declare-fun b_next!1287 () Bool)

(assert (=> b!47295 (= b_free!1287 (not b_next!1287))))

(declare-fun tp!32105 () Bool)

(declare-fun b_and!1321 () Bool)

(assert (=> b!47295 (= tp!32105 b_and!1321)))

(declare-fun b!47293 () Bool)

(declare-fun e!27285 () Bool)

(declare-fun e!27288 () Bool)

(declare-datatypes ((K!548 0))(
  ( (K!549 (val!236 Int)) )
))
(declare-datatypes ((V!602 0))(
  ( (V!603 (val!237 Int)) )
))
(declare-datatypes ((tuple2!986 0))(
  ( (tuple2!987 (_1!697 K!548) (_2!697 V!602)) )
))
(declare-datatypes ((List!803 0))(
  ( (Nil!801) (Cons!801 (h!6197 tuple2!986) (t!17002 List!803)) )
))
(declare-datatypes ((array!934 0))(
  ( (array!935 (arr!440 (Array (_ BitVec 32) List!803)) (size!781 (_ BitVec 32))) )
))
(declare-datatypes ((array!936 0))(
  ( (array!937 (arr!441 (Array (_ BitVec 32) (_ BitVec 64))) (size!782 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!554 0))(
  ( (LongMapFixedSize!555 (defaultEntry!615 Int) (mask!1004 (_ BitVec 32)) (extraKeys!523 (_ BitVec 32)) (zeroValue!533 List!803) (minValue!533 List!803) (_size!686 (_ BitVec 32)) (_keys!568 array!936) (_values!555 array!934) (_vacant!337 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1097 0))(
  ( (Cell!1098 (v!12541 LongMapFixedSize!554)) )
))
(declare-datatypes ((MutLongMap!277 0))(
  ( (LongMap!277 (underlying!749 Cell!1097)) (MutLongMapExt!276 (__x!1344 Int)) )
))
(declare-fun lt!6400 () MutLongMap!277)

(get-info :version)

(assert (=> b!47293 (= e!27285 (and e!27288 ((_ is LongMap!277) lt!6400)))))

(declare-datatypes ((Cell!1099 0))(
  ( (Cell!1100 (v!12542 MutLongMap!277)) )
))
(declare-datatypes ((Hashable!273 0))(
  ( (HashableExt!272 (__x!1345 Int)) )
))
(declare-datatypes ((MutableMap!273 0))(
  ( (MutableMapExt!272 (__x!1346 Int)) (HashMap!273 (underlying!750 Cell!1099) (hashF!2141 Hashable!273) (_size!687 (_ BitVec 32)) (defaultValue!422 Int)) )
))
(declare-fun thiss!42687 () MutableMap!273)

(assert (=> b!47293 (= lt!6400 (v!12542 (underlying!750 thiss!42687)))))

(declare-fun b!47294 () Bool)

(declare-fun e!27286 () Bool)

(assert (=> b!47294 (= e!27288 e!27286)))

(declare-fun e!27287 () Bool)

(assert (=> b!47295 (= e!27287 (and e!27285 tp!32105))))

(declare-fun mapIsEmpty!1095 () Bool)

(declare-fun mapRes!1095 () Bool)

(assert (=> mapIsEmpty!1095 mapRes!1095))

(declare-fun res!31797 () Bool)

(declare-fun e!27282 () Bool)

(assert (=> start!3246 (=> (not res!31797) (not e!27282))))

(assert (=> start!3246 (= res!31797 ((_ is HashMap!273) thiss!42687))))

(assert (=> start!3246 e!27282))

(assert (=> start!3246 e!27287))

(declare-fun b!47296 () Bool)

(declare-fun e!27283 () Bool)

(assert (=> b!47296 (= e!27286 e!27283)))

(declare-fun b!47297 () Bool)

(declare-fun res!31798 () Bool)

(assert (=> b!47297 (=> (not res!31798) (not e!27282))))

(declare-fun valid!250 (MutableMap!273) Bool)

(assert (=> b!47297 (= res!31798 (valid!250 thiss!42687))))

(declare-fun tp!32108 () Bool)

(declare-fun e!27289 () Bool)

(declare-fun tp!32104 () Bool)

(declare-fun array_inv!297 (array!936) Bool)

(declare-fun array_inv!298 (array!934) Bool)

(assert (=> b!47298 (= e!27283 (and tp!32106 tp!32108 tp!32104 (array_inv!297 (_keys!568 (v!12541 (underlying!749 (v!12542 (underlying!750 thiss!42687)))))) (array_inv!298 (_values!555 (v!12541 (underlying!749 (v!12542 (underlying!750 thiss!42687)))))) e!27289))))

(declare-fun b!47299 () Bool)

(assert (=> b!47299 (= e!27282 false)))

(declare-datatypes ((tuple2!988 0))(
  ( (tuple2!989 (_1!698 Bool) (_2!698 MutLongMap!277)) )
))
(declare-fun lt!6399 () tuple2!988)

(declare-fun repack!2 (MutLongMap!277) tuple2!988)

(assert (=> b!47299 (= lt!6399 (repack!2 (v!12542 (underlying!750 thiss!42687))))))

(declare-fun b!47300 () Bool)

(declare-fun tp!32109 () Bool)

(assert (=> b!47300 (= e!27289 (and tp!32109 mapRes!1095))))

(declare-fun condMapEmpty!1095 () Bool)

(declare-fun mapDefault!1095 () List!803)

(assert (=> b!47300 (= condMapEmpty!1095 (= (arr!440 (_values!555 (v!12541 (underlying!749 (v!12542 (underlying!750 thiss!42687)))))) ((as const (Array (_ BitVec 32) List!803)) mapDefault!1095)))))

(declare-fun mapNonEmpty!1095 () Bool)

(declare-fun tp!32107 () Bool)

(declare-fun tp!32103 () Bool)

(assert (=> mapNonEmpty!1095 (= mapRes!1095 (and tp!32107 tp!32103))))

(declare-fun mapRest!1095 () (Array (_ BitVec 32) List!803))

(declare-fun mapKey!1095 () (_ BitVec 32))

(declare-fun mapValue!1095 () List!803)

(assert (=> mapNonEmpty!1095 (= (arr!440 (_values!555 (v!12541 (underlying!749 (v!12542 (underlying!750 thiss!42687)))))) (store mapRest!1095 mapKey!1095 mapValue!1095))))

(assert (= (and start!3246 res!31797) b!47297))

(assert (= (and b!47297 res!31798) b!47299))

(assert (= (and b!47300 condMapEmpty!1095) mapIsEmpty!1095))

(assert (= (and b!47300 (not condMapEmpty!1095)) mapNonEmpty!1095))

(assert (= b!47298 b!47300))

(assert (= b!47296 b!47298))

(assert (= b!47294 b!47296))

(assert (= (and b!47293 ((_ is LongMap!277) (v!12542 (underlying!750 thiss!42687)))) b!47294))

(assert (= b!47295 b!47293))

(assert (= (and start!3246 ((_ is HashMap!273) thiss!42687)) b!47295))

(declare-fun m!21452 () Bool)

(assert (=> b!47297 m!21452))

(declare-fun m!21454 () Bool)

(assert (=> b!47298 m!21454))

(declare-fun m!21456 () Bool)

(assert (=> b!47298 m!21456))

(declare-fun m!21458 () Bool)

(assert (=> b!47299 m!21458))

(declare-fun m!21460 () Bool)

(assert (=> mapNonEmpty!1095 m!21460))

(check-sat (not b!47298) b_and!1321 (not mapNonEmpty!1095) (not b!47300) (not b!47297) b_and!1319 (not b!47299) (not b_next!1287) (not b_next!1285))
(check-sat b_and!1321 b_and!1319 (not b_next!1285) (not b_next!1287))

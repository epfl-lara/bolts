; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242234 () Bool)

(assert start!242234)

(declare-fun b!2482037 () Bool)

(declare-fun b_free!72321 () Bool)

(declare-fun b_next!73025 () Bool)

(assert (=> b!2482037 (= b_free!72321 (not b_next!73025))))

(declare-fun tp!794553 () Bool)

(declare-fun b_and!188569 () Bool)

(assert (=> b!2482037 (= tp!794553 b_and!188569)))

(declare-fun b!2482043 () Bool)

(declare-fun b_free!72323 () Bool)

(declare-fun b_next!73027 () Bool)

(assert (=> b!2482043 (= b_free!72323 (not b_next!73027))))

(declare-fun tp!794551 () Bool)

(declare-fun b_and!188571 () Bool)

(assert (=> b!2482043 (= tp!794551 b_and!188571)))

(declare-fun b!2482036 () Bool)

(declare-fun e!1575563 () Bool)

(declare-fun e!1575564 () Bool)

(declare-datatypes ((K!5500 0))(
  ( (K!5501 (val!8875 Int)) )
))
(declare-datatypes ((V!5702 0))(
  ( (V!5703 (val!8876 Int)) )
))
(declare-datatypes ((tuple2!28834 0))(
  ( (tuple2!28835 (_1!16958 K!5500) (_2!16958 V!5702)) )
))
(declare-datatypes ((List!29211 0))(
  ( (Nil!29111) (Cons!29111 (h!34517 tuple2!28834) (t!210870 List!29211)) )
))
(declare-datatypes ((array!11929 0))(
  ( (array!11930 (arr!5322 (Array (_ BitVec 32) List!29211)) (size!22741 (_ BitVec 32))) )
))
(declare-datatypes ((array!11931 0))(
  ( (array!11932 (arr!5323 (Array (_ BitVec 32) (_ BitVec 64))) (size!22742 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6732 0))(
  ( (LongMapFixedSize!6733 (defaultEntry!3740 Int) (mask!8538 (_ BitVec 32)) (extraKeys!3614 (_ BitVec 32)) (zeroValue!3624 List!29211) (minValue!3624 List!29211) (_size!6779 (_ BitVec 32)) (_keys!3663 array!11931) (_values!3646 array!11929) (_vacant!3427 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13281 0))(
  ( (Cell!13282 (v!31456 LongMapFixedSize!6732)) )
))
(declare-datatypes ((MutLongMap!3366 0))(
  ( (LongMap!3366 (underlying!6939 Cell!13281)) (MutLongMapExt!3365 (__x!19004 Int)) )
))
(declare-fun lt!888670 () MutLongMap!3366)

(get-info :version)

(assert (=> b!2482036 (= e!1575563 (and e!1575564 ((_ is LongMap!3366) lt!888670)))))

(declare-datatypes ((Hashable!3276 0))(
  ( (HashableExt!3275 (__x!19005 Int)) )
))
(declare-datatypes ((Cell!13283 0))(
  ( (Cell!13284 (v!31457 MutLongMap!3366)) )
))
(declare-datatypes ((MutableMap!3276 0))(
  ( (MutableMapExt!3275 (__x!19006 Int)) (HashMap!3276 (underlying!6940 Cell!13283) (hashF!5239 Hashable!3276) (_size!6780 (_ BitVec 32)) (defaultValue!3438 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3276)

(assert (=> b!2482036 (= lt!888670 (v!31457 (underlying!6940 thiss!42540)))))

(declare-fun e!1575565 () Bool)

(declare-fun e!1575562 () Bool)

(declare-fun tp!794552 () Bool)

(declare-fun tp!794554 () Bool)

(declare-fun array_inv!3819 (array!11931) Bool)

(declare-fun array_inv!3820 (array!11929) Bool)

(assert (=> b!2482037 (= e!1575565 (and tp!794553 tp!794554 tp!794552 (array_inv!3819 (_keys!3663 (v!31456 (underlying!6939 (v!31457 (underlying!6940 thiss!42540)))))) (array_inv!3820 (_values!3646 (v!31456 (underlying!6939 (v!31457 (underlying!6940 thiss!42540)))))) e!1575562))))

(declare-fun b!2482038 () Bool)

(declare-fun e!1575559 () Bool)

(assert (=> b!2482038 (= e!1575564 e!1575559)))

(declare-fun b!2482039 () Bool)

(declare-fun tp!794555 () Bool)

(declare-fun mapRes!15569 () Bool)

(assert (=> b!2482039 (= e!1575562 (and tp!794555 mapRes!15569))))

(declare-fun condMapEmpty!15569 () Bool)

(declare-fun mapDefault!15569 () List!29211)

(assert (=> b!2482039 (= condMapEmpty!15569 (= (arr!5322 (_values!3646 (v!31456 (underlying!6939 (v!31457 (underlying!6940 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29211)) mapDefault!15569)))))

(declare-fun res!1050755 () Bool)

(declare-fun e!1575560 () Bool)

(assert (=> start!242234 (=> (not res!1050755) (not e!1575560))))

(assert (=> start!242234 (= res!1050755 ((_ is HashMap!3276) thiss!42540))))

(assert (=> start!242234 e!1575560))

(declare-fun e!1575561 () Bool)

(assert (=> start!242234 e!1575561))

(declare-fun tp_is_empty!12263 () Bool)

(assert (=> start!242234 tp_is_empty!12263))

(declare-fun b!2482040 () Bool)

(declare-fun res!1050757 () Bool)

(assert (=> b!2482040 (=> (not res!1050757) (not e!1575560))))

(declare-fun valid!2572 (MutableMap!3276) Bool)

(assert (=> b!2482040 (= res!1050757 (valid!2572 thiss!42540))))

(declare-fun mapNonEmpty!15569 () Bool)

(declare-fun tp!794550 () Bool)

(declare-fun tp!794549 () Bool)

(assert (=> mapNonEmpty!15569 (= mapRes!15569 (and tp!794550 tp!794549))))

(declare-fun mapKey!15569 () (_ BitVec 32))

(declare-fun mapRest!15569 () (Array (_ BitVec 32) List!29211))

(declare-fun mapValue!15569 () List!29211)

(assert (=> mapNonEmpty!15569 (= (arr!5322 (_values!3646 (v!31456 (underlying!6939 (v!31457 (underlying!6940 thiss!42540)))))) (store mapRest!15569 mapKey!15569 mapValue!15569))))

(declare-fun b!2482041 () Bool)

(assert (=> b!2482041 (= e!1575560 false)))

(declare-datatypes ((tuple2!28836 0))(
  ( (tuple2!28837 (_1!16959 (_ BitVec 64)) (_2!16959 List!29211)) )
))
(declare-datatypes ((List!29212 0))(
  ( (Nil!29112) (Cons!29112 (h!34518 tuple2!28836) (t!210871 List!29212)) )
))
(declare-datatypes ((ListLongMap!529 0))(
  ( (ListLongMap!530 (toList!1582 List!29212)) )
))
(declare-fun lt!888669 () ListLongMap!529)

(declare-fun map!6202 (MutLongMap!3366) ListLongMap!529)

(assert (=> b!2482041 (= lt!888669 (map!6202 (v!31457 (underlying!6940 thiss!42540))))))

(declare-fun lt!888668 () List!29211)

(declare-fun key!2246 () K!5500)

(declare-fun apply!6920 (MutLongMap!3366 (_ BitVec 64)) List!29211)

(declare-fun hash!691 (Hashable!3276 K!5500) (_ BitVec 64))

(assert (=> b!2482041 (= lt!888668 (apply!6920 (v!31457 (underlying!6940 thiss!42540)) (hash!691 (hashF!5239 thiss!42540) key!2246)))))

(declare-fun b!2482042 () Bool)

(assert (=> b!2482042 (= e!1575559 e!1575565)))

(assert (=> b!2482043 (= e!1575561 (and e!1575563 tp!794551))))

(declare-fun b!2482044 () Bool)

(declare-fun res!1050756 () Bool)

(assert (=> b!2482044 (=> (not res!1050756) (not e!1575560))))

(declare-fun contains!5114 (MutableMap!3276 K!5500) Bool)

(assert (=> b!2482044 (= res!1050756 (contains!5114 thiss!42540 key!2246))))

(declare-fun mapIsEmpty!15569 () Bool)

(assert (=> mapIsEmpty!15569 mapRes!15569))

(assert (= (and start!242234 res!1050755) b!2482040))

(assert (= (and b!2482040 res!1050757) b!2482044))

(assert (= (and b!2482044 res!1050756) b!2482041))

(assert (= (and b!2482039 condMapEmpty!15569) mapIsEmpty!15569))

(assert (= (and b!2482039 (not condMapEmpty!15569)) mapNonEmpty!15569))

(assert (= b!2482037 b!2482039))

(assert (= b!2482042 b!2482037))

(assert (= b!2482038 b!2482042))

(assert (= (and b!2482036 ((_ is LongMap!3366) (v!31457 (underlying!6940 thiss!42540)))) b!2482038))

(assert (= b!2482043 b!2482036))

(assert (= (and start!242234 ((_ is HashMap!3276) thiss!42540)) b!2482043))

(declare-fun m!2850131 () Bool)

(assert (=> b!2482041 m!2850131))

(declare-fun m!2850133 () Bool)

(assert (=> b!2482041 m!2850133))

(assert (=> b!2482041 m!2850133))

(declare-fun m!2850135 () Bool)

(assert (=> b!2482041 m!2850135))

(declare-fun m!2850137 () Bool)

(assert (=> b!2482040 m!2850137))

(declare-fun m!2850139 () Bool)

(assert (=> b!2482044 m!2850139))

(declare-fun m!2850141 () Bool)

(assert (=> b!2482037 m!2850141))

(declare-fun m!2850143 () Bool)

(assert (=> b!2482037 m!2850143))

(declare-fun m!2850145 () Bool)

(assert (=> mapNonEmpty!15569 m!2850145))

(check-sat (not b!2482039) (not b!2482037) (not b!2482044) (not b!2482041) (not mapNonEmpty!15569) b_and!188569 tp_is_empty!12263 (not b_next!73025) b_and!188571 (not b_next!73027) (not b!2482040))
(check-sat b_and!188571 b_and!188569 (not b_next!73025) (not b_next!73027))

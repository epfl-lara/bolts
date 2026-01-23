; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414062 () Bool)

(assert start!414062)

(declare-fun b!4309111 () Bool)

(declare-fun b_free!128563 () Bool)

(declare-fun b_next!129267 () Bool)

(assert (=> b!4309111 (= b_free!128563 (not b_next!129267))))

(declare-fun tp!1324232 () Bool)

(declare-fun b_and!339977 () Bool)

(assert (=> b!4309111 (= tp!1324232 b_and!339977)))

(declare-fun b!4309110 () Bool)

(declare-fun b_free!128565 () Bool)

(declare-fun b_next!129269 () Bool)

(assert (=> b!4309110 (= b_free!128565 (not b_next!129269))))

(declare-fun tp!1324233 () Bool)

(declare-fun b_and!339979 () Bool)

(assert (=> b!4309110 (= tp!1324233 b_and!339979)))

(declare-fun b!4309108 () Bool)

(declare-fun e!2679759 () Bool)

(assert (=> b!4309108 (= e!2679759 false)))

(declare-fun lt!1530091 () Bool)

(declare-datatypes ((V!9576 0))(
  ( (V!9577 (val!15757 Int)) )
))
(declare-datatypes ((K!9374 0))(
  ( (K!9375 (val!15758 Int)) )
))
(declare-datatypes ((tuple2!46584 0))(
  ( (tuple2!46585 (_1!26571 K!9374) (_2!26571 V!9576)) )
))
(declare-datatypes ((List!48300 0))(
  ( (Nil!48176) (Cons!48176 (h!53610 tuple2!46584) (t!355099 List!48300)) )
))
(declare-datatypes ((array!16760 0))(
  ( (array!16761 (arr!7487 (Array (_ BitVec 32) (_ BitVec 64))) (size!35526 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4567 0))(
  ( (HashableExt!4566 (__x!29978 Int)) )
))
(declare-datatypes ((array!16762 0))(
  ( (array!16763 (arr!7488 (Array (_ BitVec 32) List!48300)) (size!35527 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9302 0))(
  ( (LongMapFixedSize!9303 (defaultEntry!5036 Int) (mask!13205 (_ BitVec 32)) (extraKeys!4900 (_ BitVec 32)) (zeroValue!4910 List!48300) (minValue!4910 List!48300) (_size!9345 (_ BitVec 32)) (_keys!4951 array!16760) (_values!4932 array!16762) (_vacant!4712 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18413 0))(
  ( (Cell!18414 (v!42291 LongMapFixedSize!9302)) )
))
(declare-datatypes ((MutLongMap!4651 0))(
  ( (LongMap!4651 (underlying!9531 Cell!18413)) (MutLongMapExt!4650 (__x!29979 Int)) )
))
(declare-datatypes ((Cell!18415 0))(
  ( (Cell!18416 (v!42292 MutLongMap!4651)) )
))
(declare-datatypes ((MutableMap!4557 0))(
  ( (MutableMapExt!4556 (__x!29980 Int)) (HashMap!4557 (underlying!9532 Cell!18415) (hashF!6683 Hashable!4567) (_size!9346 (_ BitVec 32)) (defaultValue!4728 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4557)

(declare-fun key!2048 () K!9374)

(declare-fun contains!10147 (MutableMap!4557 K!9374) Bool)

(assert (=> b!4309108 (= lt!1530091 (contains!10147 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46586 0))(
  ( (tuple2!46587 (_1!26572 (_ BitVec 64)) (_2!26572 List!48300)) )
))
(declare-datatypes ((List!48301 0))(
  ( (Nil!48177) (Cons!48177 (h!53611 tuple2!46586) (t!355100 List!48301)) )
))
(declare-datatypes ((ListLongMap!999 0))(
  ( (ListLongMap!1000 (toList!2387 List!48301)) )
))
(declare-fun lt!1530093 () ListLongMap!999)

(declare-fun map!10162 (MutLongMap!4651) ListLongMap!999)

(assert (=> b!4309108 (= lt!1530093 (map!10162 (v!42292 (underlying!9532 thiss!42308))))))

(declare-datatypes ((ListMap!1669 0))(
  ( (ListMap!1670 (toList!2388 List!48300)) )
))
(declare-fun lt!1530090 () ListMap!1669)

(declare-fun map!10163 (MutableMap!4557) ListMap!1669)

(assert (=> b!4309108 (= lt!1530090 (map!10163 thiss!42308))))

(declare-fun mapNonEmpty!20776 () Bool)

(declare-fun mapRes!20776 () Bool)

(declare-fun tp!1324234 () Bool)

(declare-fun tp!1324231 () Bool)

(assert (=> mapNonEmpty!20776 (= mapRes!20776 (and tp!1324234 tp!1324231))))

(declare-fun mapRest!20776 () (Array (_ BitVec 32) List!48300))

(declare-fun mapValue!20776 () List!48300)

(declare-fun mapKey!20776 () (_ BitVec 32))

(assert (=> mapNonEmpty!20776 (= (arr!7488 (_values!4932 (v!42291 (underlying!9531 (v!42292 (underlying!9532 thiss!42308)))))) (store mapRest!20776 mapKey!20776 mapValue!20776))))

(declare-fun b!4309109 () Bool)

(declare-fun e!2679757 () Bool)

(declare-fun e!2679758 () Bool)

(assert (=> b!4309109 (= e!2679757 e!2679758)))

(declare-fun e!2679753 () Bool)

(declare-fun e!2679754 () Bool)

(assert (=> b!4309110 (= e!2679753 (and e!2679754 tp!1324233))))

(declare-fun mapIsEmpty!20776 () Bool)

(assert (=> mapIsEmpty!20776 mapRes!20776))

(declare-fun tp!1324235 () Bool)

(declare-fun e!2679756 () Bool)

(declare-fun tp!1324230 () Bool)

(declare-fun array_inv!5373 (array!16760) Bool)

(declare-fun array_inv!5374 (array!16762) Bool)

(assert (=> b!4309111 (= e!2679758 (and tp!1324232 tp!1324230 tp!1324235 (array_inv!5373 (_keys!4951 (v!42291 (underlying!9531 (v!42292 (underlying!9532 thiss!42308)))))) (array_inv!5374 (_values!4932 (v!42291 (underlying!9531 (v!42292 (underlying!9532 thiss!42308)))))) e!2679756))))

(declare-fun b!4309112 () Bool)

(declare-fun tp!1324229 () Bool)

(assert (=> b!4309112 (= e!2679756 (and tp!1324229 mapRes!20776))))

(declare-fun condMapEmpty!20776 () Bool)

(declare-fun mapDefault!20776 () List!48300)

(assert (=> b!4309112 (= condMapEmpty!20776 (= (arr!7488 (_values!4932 (v!42291 (underlying!9531 (v!42292 (underlying!9532 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48300)) mapDefault!20776)))))

(declare-fun b!4309113 () Bool)

(declare-fun res!1766138 () Bool)

(assert (=> b!4309113 (=> (not res!1766138) (not e!2679759))))

(declare-fun valid!3639 (MutableMap!4557) Bool)

(assert (=> b!4309113 (= res!1766138 (valid!3639 thiss!42308))))

(declare-fun res!1766139 () Bool)

(assert (=> start!414062 (=> (not res!1766139) (not e!2679759))))

(get-info :version)

(assert (=> start!414062 (= res!1766139 ((_ is HashMap!4557) thiss!42308))))

(assert (=> start!414062 e!2679759))

(assert (=> start!414062 e!2679753))

(declare-fun tp_is_empty!23715 () Bool)

(assert (=> start!414062 tp_is_empty!23715))

(declare-fun b!4309114 () Bool)

(declare-fun e!2679760 () Bool)

(declare-fun lt!1530092 () MutLongMap!4651)

(assert (=> b!4309114 (= e!2679754 (and e!2679760 ((_ is LongMap!4651) lt!1530092)))))

(assert (=> b!4309114 (= lt!1530092 (v!42292 (underlying!9532 thiss!42308)))))

(declare-fun b!4309115 () Bool)

(assert (=> b!4309115 (= e!2679760 e!2679757)))

(assert (= (and start!414062 res!1766139) b!4309113))

(assert (= (and b!4309113 res!1766138) b!4309108))

(assert (= (and b!4309112 condMapEmpty!20776) mapIsEmpty!20776))

(assert (= (and b!4309112 (not condMapEmpty!20776)) mapNonEmpty!20776))

(assert (= b!4309111 b!4309112))

(assert (= b!4309109 b!4309111))

(assert (= b!4309115 b!4309109))

(assert (= (and b!4309114 ((_ is LongMap!4651) (v!42292 (underlying!9532 thiss!42308)))) b!4309115))

(assert (= b!4309110 b!4309114))

(assert (= (and start!414062 ((_ is HashMap!4557) thiss!42308)) b!4309110))

(declare-fun m!4902227 () Bool)

(assert (=> b!4309108 m!4902227))

(declare-fun m!4902229 () Bool)

(assert (=> b!4309108 m!4902229))

(declare-fun m!4902231 () Bool)

(assert (=> b!4309108 m!4902231))

(declare-fun m!4902233 () Bool)

(assert (=> mapNonEmpty!20776 m!4902233))

(declare-fun m!4902235 () Bool)

(assert (=> b!4309111 m!4902235))

(declare-fun m!4902237 () Bool)

(assert (=> b!4309111 m!4902237))

(declare-fun m!4902239 () Bool)

(assert (=> b!4309113 m!4902239))

(check-sat (not b!4309112) tp_is_empty!23715 b_and!339979 (not b_next!129269) (not b_next!129267) (not b!4309108) (not mapNonEmpty!20776) b_and!339977 (not b!4309111) (not b!4309113))
(check-sat b_and!339977 b_and!339979 (not b_next!129269) (not b_next!129267))

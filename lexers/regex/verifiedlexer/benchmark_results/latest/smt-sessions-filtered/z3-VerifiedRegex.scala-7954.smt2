; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413556 () Bool)

(assert start!413556)

(declare-fun b!4304761 () Bool)

(declare-fun b_free!128315 () Bool)

(declare-fun b_next!129019 () Bool)

(assert (=> b!4304761 (= b_free!128315 (not b_next!129019))))

(declare-fun tp!1322780 () Bool)

(declare-fun b_and!339713 () Bool)

(assert (=> b!4304761 (= tp!1322780 b_and!339713)))

(declare-fun b!4304764 () Bool)

(declare-fun b_free!128317 () Bool)

(declare-fun b_next!129021 () Bool)

(assert (=> b!4304764 (= b_free!128317 (not b_next!129021))))

(declare-fun tp!1322779 () Bool)

(declare-fun b_and!339715 () Bool)

(assert (=> b!4304764 (= tp!1322779 b_and!339715)))

(declare-fun b!4304759 () Bool)

(declare-fun res!1764437 () Bool)

(declare-fun e!2676483 () Bool)

(assert (=> b!4304759 (=> (not res!1764437) (not e!2676483))))

(declare-datatypes ((V!9421 0))(
  ( (V!9422 (val!15633 Int)) )
))
(declare-datatypes ((K!9219 0))(
  ( (K!9220 (val!15634 Int)) )
))
(declare-datatypes ((tuple2!46240 0))(
  ( (tuple2!46241 (_1!26399 K!9219) (_2!26399 V!9421)) )
))
(declare-datatypes ((List!48187 0))(
  ( (Nil!48063) (Cons!48063 (h!53490 tuple2!46240) (t!354970 List!48187)) )
))
(declare-datatypes ((array!16492 0))(
  ( (array!16493 (arr!7363 (Array (_ BitVec 32) (_ BitVec 64))) (size!35402 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4505 0))(
  ( (HashableExt!4504 (__x!29792 Int)) )
))
(declare-datatypes ((array!16494 0))(
  ( (array!16495 (arr!7364 (Array (_ BitVec 32) List!48187)) (size!35403 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9178 0))(
  ( (LongMapFixedSize!9179 (defaultEntry!4974 Int) (mask!13112 (_ BitVec 32)) (extraKeys!4838 (_ BitVec 32)) (zeroValue!4848 List!48187) (minValue!4848 List!48187) (_size!9221 (_ BitVec 32)) (_keys!4889 array!16492) (_values!4870 array!16494) (_vacant!4650 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18165 0))(
  ( (Cell!18166 (v!42108 LongMapFixedSize!9178)) )
))
(declare-datatypes ((MutLongMap!4589 0))(
  ( (LongMap!4589 (underlying!9407 Cell!18165)) (MutLongMapExt!4588 (__x!29793 Int)) )
))
(declare-datatypes ((Cell!18167 0))(
  ( (Cell!18168 (v!42109 MutLongMap!4589)) )
))
(declare-datatypes ((MutableMap!4495 0))(
  ( (MutableMapExt!4494 (__x!29794 Int)) (HashMap!4495 (underlying!9408 Cell!18167) (hashF!6579 Hashable!4505) (_size!9222 (_ BitVec 32)) (defaultValue!4666 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4495)

(declare-fun valid!3572 (MutableMap!4495) Bool)

(assert (=> b!4304759 (= res!1764437 (valid!3572 thiss!42308))))

(declare-fun b!4304760 () Bool)

(declare-fun e!2676489 () Bool)

(declare-fun e!2676482 () Bool)

(assert (=> b!4304760 (= e!2676489 e!2676482)))

(declare-fun e!2676486 () Bool)

(declare-fun tp!1322778 () Bool)

(declare-fun tp!1322782 () Bool)

(declare-fun array_inv!5283 (array!16492) Bool)

(declare-fun array_inv!5284 (array!16494) Bool)

(assert (=> b!4304761 (= e!2676482 (and tp!1322780 tp!1322778 tp!1322782 (array_inv!5283 (_keys!4889 (v!42108 (underlying!9407 (v!42109 (underlying!9408 thiss!42308)))))) (array_inv!5284 (_values!4870 (v!42108 (underlying!9407 (v!42109 (underlying!9408 thiss!42308)))))) e!2676486))))

(declare-fun res!1764439 () Bool)

(assert (=> start!413556 (=> (not res!1764439) (not e!2676483))))

(get-info :version)

(assert (=> start!413556 (= res!1764439 ((_ is HashMap!4495) thiss!42308))))

(assert (=> start!413556 e!2676483))

(declare-fun e!2676481 () Bool)

(assert (=> start!413556 e!2676481))

(declare-fun tp_is_empty!23493 () Bool)

(assert (=> start!413556 tp_is_empty!23493))

(declare-fun b!4304762 () Bool)

(declare-fun e!2676488 () Bool)

(assert (=> b!4304762 (= e!2676483 e!2676488)))

(declare-fun res!1764438 () Bool)

(assert (=> b!4304762 (=> (not res!1764438) (not e!2676488))))

(declare-fun key!2048 () K!9219)

(declare-fun contains!9995 (MutableMap!4495 K!9219) Bool)

(assert (=> b!4304762 (= res!1764438 (not (contains!9995 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46242 0))(
  ( (tuple2!46243 (_1!26400 (_ BitVec 64)) (_2!26400 List!48187)) )
))
(declare-datatypes ((List!48188 0))(
  ( (Nil!48064) (Cons!48064 (h!53491 tuple2!46242) (t!354971 List!48188)) )
))
(declare-datatypes ((ListLongMap!899 0))(
  ( (ListLongMap!900 (toList!2290 List!48188)) )
))
(declare-fun lt!1526283 () ListLongMap!899)

(declare-fun map!10032 (MutLongMap!4589) ListLongMap!899)

(assert (=> b!4304762 (= lt!1526283 (map!10032 (v!42109 (underlying!9408 thiss!42308))))))

(declare-datatypes ((ListMap!1575 0))(
  ( (ListMap!1576 (toList!2291 List!48187)) )
))
(declare-fun lt!1526285 () ListMap!1575)

(declare-fun map!10033 (MutableMap!4495) ListMap!1575)

(assert (=> b!4304762 (= lt!1526285 (map!10033 thiss!42308))))

(declare-fun b!4304763 () Bool)

(declare-fun e!2676487 () Bool)

(declare-fun e!2676484 () Bool)

(declare-fun lt!1526284 () MutLongMap!4589)

(assert (=> b!4304763 (= e!2676487 (and e!2676484 ((_ is LongMap!4589) lt!1526284)))))

(assert (=> b!4304763 (= lt!1526284 (v!42109 (underlying!9408 thiss!42308)))))

(assert (=> b!4304764 (= e!2676481 (and e!2676487 tp!1322779))))

(declare-fun b!4304765 () Bool)

(declare-fun tp!1322777 () Bool)

(declare-fun mapRes!20560 () Bool)

(assert (=> b!4304765 (= e!2676486 (and tp!1322777 mapRes!20560))))

(declare-fun condMapEmpty!20560 () Bool)

(declare-fun mapDefault!20560 () List!48187)

(assert (=> b!4304765 (= condMapEmpty!20560 (= (arr!7364 (_values!4870 (v!42108 (underlying!9407 (v!42109 (underlying!9408 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48187)) mapDefault!20560)))))

(declare-fun mapIsEmpty!20560 () Bool)

(assert (=> mapIsEmpty!20560 mapRes!20560))

(declare-fun b!4304766 () Bool)

(assert (=> b!4304766 (= e!2676488 (not ((_ is LongMap!4589) (v!42109 (underlying!9408 thiss!42308)))))))

(declare-fun mapNonEmpty!20560 () Bool)

(declare-fun tp!1322781 () Bool)

(declare-fun tp!1322783 () Bool)

(assert (=> mapNonEmpty!20560 (= mapRes!20560 (and tp!1322781 tp!1322783))))

(declare-fun mapKey!20560 () (_ BitVec 32))

(declare-fun mapValue!20560 () List!48187)

(declare-fun mapRest!20560 () (Array (_ BitVec 32) List!48187))

(assert (=> mapNonEmpty!20560 (= (arr!7364 (_values!4870 (v!42108 (underlying!9407 (v!42109 (underlying!9408 thiss!42308)))))) (store mapRest!20560 mapKey!20560 mapValue!20560))))

(declare-fun b!4304767 () Bool)

(assert (=> b!4304767 (= e!2676484 e!2676489)))

(assert (= (and start!413556 res!1764439) b!4304759))

(assert (= (and b!4304759 res!1764437) b!4304762))

(assert (= (and b!4304762 res!1764438) b!4304766))

(assert (= (and b!4304765 condMapEmpty!20560) mapIsEmpty!20560))

(assert (= (and b!4304765 (not condMapEmpty!20560)) mapNonEmpty!20560))

(assert (= b!4304761 b!4304765))

(assert (= b!4304760 b!4304761))

(assert (= b!4304767 b!4304760))

(assert (= (and b!4304763 ((_ is LongMap!4589) (v!42109 (underlying!9408 thiss!42308)))) b!4304767))

(assert (= b!4304764 b!4304763))

(assert (= (and start!413556 ((_ is HashMap!4495) thiss!42308)) b!4304764))

(declare-fun m!4897735 () Bool)

(assert (=> b!4304759 m!4897735))

(declare-fun m!4897737 () Bool)

(assert (=> b!4304761 m!4897737))

(declare-fun m!4897739 () Bool)

(assert (=> b!4304761 m!4897739))

(declare-fun m!4897741 () Bool)

(assert (=> b!4304762 m!4897741))

(declare-fun m!4897743 () Bool)

(assert (=> b!4304762 m!4897743))

(declare-fun m!4897745 () Bool)

(assert (=> b!4304762 m!4897745))

(declare-fun m!4897747 () Bool)

(assert (=> mapNonEmpty!20560 m!4897747))

(check-sat tp_is_empty!23493 b_and!339715 (not b_next!129019) (not b!4304762) b_and!339713 (not b!4304759) (not b!4304761) (not mapNonEmpty!20560) (not b!4304765) (not b_next!129021))
(check-sat b_and!339713 b_and!339715 (not b_next!129021) (not b_next!129019))

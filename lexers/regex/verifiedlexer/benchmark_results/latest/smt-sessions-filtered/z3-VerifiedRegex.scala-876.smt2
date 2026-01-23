; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46456 () Bool)

(assert start!46456)

(declare-fun b!513238 () Bool)

(declare-fun b_free!13297 () Bool)

(declare-fun b_next!13297 () Bool)

(assert (=> b!513238 (= b_free!13297 (not b_next!13297))))

(declare-fun tp!159768 () Bool)

(declare-fun b_and!50723 () Bool)

(assert (=> b!513238 (= tp!159768 b_and!50723)))

(declare-fun b!513241 () Bool)

(declare-fun b_free!13299 () Bool)

(declare-fun b_next!13299 () Bool)

(assert (=> b!513241 (= b_free!13299 (not b_next!13299))))

(declare-fun tp!159765 () Bool)

(declare-fun b_and!50725 () Bool)

(assert (=> b!513241 (= tp!159765 b_and!50725)))

(declare-fun b!513233 () Bool)

(declare-fun res!217662 () Bool)

(declare-fun e!306584 () Bool)

(assert (=> b!513233 (=> (not res!217662) (not e!306584))))

(declare-datatypes ((V!1395 0))(
  ( (V!1396 (val!1701 Int)) )
))
(declare-datatypes ((K!1297 0))(
  ( (K!1298 (val!1702 Int)) )
))
(declare-datatypes ((array!1797 0))(
  ( (array!1798 (arr!830 (Array (_ BitVec 32) (_ BitVec 64))) (size!3764 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!5554 0))(
  ( (tuple2!5555 (_1!2993 K!1297) (_2!2993 V!1395)) )
))
(declare-datatypes ((List!4662 0))(
  ( (Nil!4652) (Cons!4652 (h!10049 tuple2!5554) (t!73184 List!4662)) )
))
(declare-datatypes ((array!1799 0))(
  ( (array!1800 (arr!831 (Array (_ BitVec 32) List!4662)) (size!3765 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!946 0))(
  ( (LongMapFixedSize!947 (defaultEntry!824 Int) (mask!1874 (_ BitVec 32)) (extraKeys!719 (_ BitVec 32)) (zeroValue!729 List!4662) (minValue!729 List!4662) (_size!1055 (_ BitVec 32)) (_keys!764 array!1797) (_values!751 array!1799) (_vacant!534 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!445 0))(
  ( (HashableExt!444 (__x!3310 Int)) )
))
(declare-datatypes ((Cell!1833 0))(
  ( (Cell!1834 (v!15658 LongMapFixedSize!946)) )
))
(declare-datatypes ((MutLongMap!473 0))(
  ( (LongMap!473 (underlying!1125 Cell!1833)) (MutLongMapExt!472 (__x!3311 Int)) )
))
(declare-datatypes ((Cell!1835 0))(
  ( (Cell!1836 (v!15659 MutLongMap!473)) )
))
(declare-datatypes ((MutableMap!445 0))(
  ( (MutableMapExt!444 (__x!3312 Int)) (HashMap!445 (underlying!1126 Cell!1835) (hashF!2321 Hashable!445) (_size!1056 (_ BitVec 32)) (defaultValue!594 Int)) )
))
(declare-datatypes ((tuple2!5556 0))(
  ( (tuple2!5557 (_1!2994 Bool) (_2!2994 MutableMap!445)) )
))
(declare-fun lt!212306 () tuple2!5556)

(assert (=> b!513233 (= res!217662 (not (_1!2994 lt!212306)))))

(declare-fun b!513234 () Bool)

(declare-fun res!217663 () Bool)

(assert (=> b!513234 (=> (not res!217663) (not e!306584))))

(declare-fun valid!428 (MutableMap!445) Bool)

(assert (=> b!513234 (= res!217663 (valid!428 (_2!2994 lt!212306)))))

(declare-fun res!217665 () Bool)

(declare-fun e!306582 () Bool)

(assert (=> start!46456 (=> (not res!217665) (not e!306582))))

(declare-fun thiss!47794 () MutableMap!445)

(get-info :version)

(assert (=> start!46456 (= res!217665 ((_ is MutableMapExt!444) thiss!47794))))

(assert (=> start!46456 e!306582))

(declare-fun e!306579 () Bool)

(assert (=> start!46456 e!306579))

(declare-fun tp_is_empty!2505 () Bool)

(assert (=> start!46456 tp_is_empty!2505))

(declare-fun tp_is_empty!2507 () Bool)

(assert (=> start!46456 tp_is_empty!2507))

(declare-fun b!513235 () Bool)

(assert (=> b!513235 (= e!306584 false)))

(declare-datatypes ((ListMap!107 0))(
  ( (ListMap!108 (toList!364 List!4662)) )
))
(declare-fun lt!212308 () ListMap!107)

(declare-fun abstractMap!38 (MutableMap!445) ListMap!107)

(assert (=> b!513235 (= lt!212308 (abstractMap!38 (_2!2994 lt!212306)))))

(declare-fun b!513236 () Bool)

(assert (=> b!513236 (= e!306582 e!306584)))

(declare-fun res!217661 () Bool)

(assert (=> b!513236 (=> (not res!217661) (not e!306584))))

(assert (=> b!513236 (= res!217661 ((_ is MutableMapExt!444) (_2!2994 lt!212306)))))

(declare-fun v!11800 () V!1395)

(declare-fun key!7215 () K!1297)

(declare-fun choose!3659 (MutableMap!445 K!1297 V!1395) tuple2!5556)

(assert (=> b!513236 (= lt!212306 (choose!3659 thiss!47794 key!7215 v!11800))))

(declare-fun mapIsEmpty!1824 () Bool)

(declare-fun mapRes!1824 () Bool)

(assert (=> mapIsEmpty!1824 mapRes!1824))

(declare-fun mapNonEmpty!1824 () Bool)

(declare-fun tp!159764 () Bool)

(declare-fun tp!159763 () Bool)

(assert (=> mapNonEmpty!1824 (= mapRes!1824 (and tp!159764 tp!159763))))

(declare-fun mapKey!1824 () (_ BitVec 32))

(declare-fun mapValue!1824 () List!4662)

(declare-fun mapRest!1824 () (Array (_ BitVec 32) List!4662))

(assert (=> mapNonEmpty!1824 (= (arr!831 (_values!751 (v!15658 (underlying!1125 (v!15659 (underlying!1126 thiss!47794)))))) (store mapRest!1824 mapKey!1824 mapValue!1824))))

(declare-fun b!513237 () Bool)

(declare-fun e!306580 () Bool)

(declare-fun e!306585 () Bool)

(assert (=> b!513237 (= e!306580 e!306585)))

(declare-fun e!306583 () Bool)

(declare-fun tp!159766 () Bool)

(declare-fun e!306577 () Bool)

(declare-fun tp!159769 () Bool)

(declare-fun array_inv!595 (array!1797) Bool)

(declare-fun array_inv!596 (array!1799) Bool)

(assert (=> b!513238 (= e!306583 (and tp!159768 tp!159766 tp!159769 (array_inv!595 (_keys!764 (v!15658 (underlying!1125 (v!15659 (underlying!1126 thiss!47794)))))) (array_inv!596 (_values!751 (v!15658 (underlying!1125 (v!15659 (underlying!1126 thiss!47794)))))) e!306577))))

(declare-fun b!513239 () Bool)

(declare-fun res!217664 () Bool)

(assert (=> b!513239 (=> (not res!217664) (not e!306582))))

(assert (=> b!513239 (= res!217664 (valid!428 thiss!47794))))

(declare-fun b!513240 () Bool)

(declare-fun tp!159767 () Bool)

(assert (=> b!513240 (= e!306577 (and tp!159767 mapRes!1824))))

(declare-fun condMapEmpty!1824 () Bool)

(declare-fun mapDefault!1824 () List!4662)

(assert (=> b!513240 (= condMapEmpty!1824 (= (arr!831 (_values!751 (v!15658 (underlying!1125 (v!15659 (underlying!1126 thiss!47794)))))) ((as const (Array (_ BitVec 32) List!4662)) mapDefault!1824)))))

(declare-fun e!306578 () Bool)

(assert (=> b!513241 (= e!306579 (and e!306578 tp!159765))))

(declare-fun b!513242 () Bool)

(assert (=> b!513242 (= e!306585 e!306583)))

(declare-fun b!513243 () Bool)

(declare-fun lt!212307 () MutLongMap!473)

(assert (=> b!513243 (= e!306578 (and e!306580 ((_ is LongMap!473) lt!212307)))))

(assert (=> b!513243 (= lt!212307 (v!15659 (underlying!1126 thiss!47794)))))

(assert (= (and start!46456 res!217665) b!513239))

(assert (= (and b!513239 res!217664) b!513236))

(assert (= (and b!513236 res!217661) b!513234))

(assert (= (and b!513234 res!217663) b!513233))

(assert (= (and b!513233 res!217662) b!513235))

(assert (= (and b!513240 condMapEmpty!1824) mapIsEmpty!1824))

(assert (= (and b!513240 (not condMapEmpty!1824)) mapNonEmpty!1824))

(assert (= b!513238 b!513240))

(assert (= b!513242 b!513238))

(assert (= b!513237 b!513242))

(assert (= (and b!513243 ((_ is LongMap!473) (v!15659 (underlying!1126 thiss!47794)))) b!513237))

(assert (= b!513241 b!513243))

(assert (= (and start!46456 ((_ is HashMap!445) thiss!47794)) b!513241))

(declare-fun m!759395 () Bool)

(assert (=> b!513236 m!759395))

(declare-fun m!759397 () Bool)

(assert (=> b!513238 m!759397))

(declare-fun m!759399 () Bool)

(assert (=> b!513238 m!759399))

(declare-fun m!759401 () Bool)

(assert (=> mapNonEmpty!1824 m!759401))

(declare-fun m!759403 () Bool)

(assert (=> b!513234 m!759403))

(declare-fun m!759405 () Bool)

(assert (=> b!513235 m!759405))

(declare-fun m!759407 () Bool)

(assert (=> b!513239 m!759407))

(check-sat b_and!50723 (not b!513240) (not b!513235) tp_is_empty!2507 (not b!513236) (not b_next!13299) (not b!513234) (not mapNonEmpty!1824) (not b_next!13297) b_and!50725 tp_is_empty!2505 (not b!513239) (not b!513238))
(check-sat b_and!50723 b_and!50725 (not b_next!13299) (not b_next!13297))

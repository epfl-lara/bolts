; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8260 () Bool)

(assert start!8260)

(declare-fun b!52533 () Bool)

(declare-fun b_free!1661 () Bool)

(declare-fun b_next!1661 () Bool)

(assert (=> b!52533 (= b_free!1661 (not b_next!1661))))

(declare-fun tp!7086 () Bool)

(declare-fun b_and!2881 () Bool)

(assert (=> b!52533 (= tp!7086 b_and!2881)))

(declare-fun b!52524 () Bool)

(declare-fun b_free!1663 () Bool)

(declare-fun b_next!1663 () Bool)

(assert (=> b!52524 (= b_free!1663 (not b_next!1663))))

(declare-fun tp!7083 () Bool)

(declare-fun b_and!2883 () Bool)

(assert (=> b!52524 (= tp!7083 b_and!2883)))

(declare-fun b!52520 () Bool)

(declare-fun e!34214 () Bool)

(declare-fun tp_is_empty!2247 () Bool)

(assert (=> b!52520 (= e!34214 tp_is_empty!2247)))

(declare-fun b!52521 () Bool)

(declare-fun res!29835 () Bool)

(declare-fun e!34213 () Bool)

(assert (=> b!52521 (=> (not res!29835) (not e!34213))))

(declare-datatypes ((V!2643 0))(
  ( (V!2644 (val!1168 Int)) )
))
(declare-datatypes ((array!3416 0))(
  ( (array!3417 (arr!1630 (Array (_ BitVec 32) (_ BitVec 64))) (size!1859 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!780 0))(
  ( (ValueCellFull!780 (v!2221 V!2643)) (EmptyCell!780) )
))
(declare-datatypes ((array!3418 0))(
  ( (array!3419 (arr!1631 (Array (_ BitVec 32) ValueCell!780)) (size!1860 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!468 0))(
  ( (LongMapFixedSize!469 (defaultEntry!1948 Int) (mask!5773 (_ BitVec 32)) (extraKeys!1839 (_ BitVec 32)) (zeroValue!1866 V!2643) (minValue!1866 V!2643) (_size!283 (_ BitVec 32)) (_keys!3568 array!3416) (_values!1931 array!3418) (_vacant!283 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!468)

(declare-fun valid!168 (LongMapFixedSize!468) Bool)

(assert (=> b!52521 (= res!29835 (valid!168 newMap!16))))

(declare-fun b!52522 () Bool)

(declare-fun res!29836 () Bool)

(assert (=> b!52522 (=> (not res!29836) (not e!34213))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Cell!284 0))(
  ( (Cell!285 (v!2222 LongMapFixedSize!468)) )
))
(declare-datatypes ((LongMap!284 0))(
  ( (LongMap!285 (underlying!153 Cell!284)) )
))
(declare-fun thiss!992 () LongMap!284)

(assert (=> b!52522 (= res!29836 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1859 (_keys!3568 (v!2222 (underlying!153 thiss!992)))))))))

(declare-fun b!52523 () Bool)

(declare-fun e!34217 () Bool)

(declare-fun e!34219 () Bool)

(assert (=> b!52523 (= e!34217 e!34219)))

(declare-fun e!34218 () Bool)

(declare-fun e!34208 () Bool)

(declare-fun array_inv!951 (array!3416) Bool)

(declare-fun array_inv!952 (array!3418) Bool)

(assert (=> b!52524 (= e!34208 (and tp!7083 tp_is_empty!2247 (array_inv!951 (_keys!3568 newMap!16)) (array_inv!952 (_values!1931 newMap!16)) e!34218))))

(declare-fun b!52525 () Bool)

(declare-fun e!34211 () Bool)

(assert (=> b!52525 (= e!34211 tp_is_empty!2247)))

(declare-fun mapIsEmpty!2411 () Bool)

(declare-fun mapRes!2411 () Bool)

(assert (=> mapIsEmpty!2411 mapRes!2411))

(declare-fun b!52527 () Bool)

(declare-fun e!34210 () Bool)

(assert (=> b!52527 (= e!34210 tp_is_empty!2247)))

(declare-fun b!52528 () Bool)

(declare-fun e!34216 () Bool)

(assert (=> b!52528 (= e!34219 e!34216)))

(declare-fun b!52529 () Bool)

(declare-fun e!34212 () Bool)

(declare-fun e!34220 () Bool)

(assert (=> b!52529 (= e!34212 (and e!34220 mapRes!2411))))

(declare-fun condMapEmpty!2412 () Bool)

(declare-fun mapDefault!2411 () ValueCell!780)

(assert (=> b!52529 (= condMapEmpty!2412 (= (arr!1631 (_values!1931 (v!2222 (underlying!153 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!780)) mapDefault!2411)))))

(declare-fun mapNonEmpty!2411 () Bool)

(declare-fun tp!7085 () Bool)

(assert (=> mapNonEmpty!2411 (= mapRes!2411 (and tp!7085 e!34211))))

(declare-fun mapValue!2411 () ValueCell!780)

(declare-fun mapKey!2412 () (_ BitVec 32))

(declare-fun mapRest!2411 () (Array (_ BitVec 32) ValueCell!780))

(assert (=> mapNonEmpty!2411 (= (arr!1631 (_values!1931 (v!2222 (underlying!153 thiss!992)))) (store mapRest!2411 mapKey!2412 mapValue!2411))))

(declare-fun b!52530 () Bool)

(assert (=> b!52530 (= e!34213 false)))

(declare-datatypes ((tuple2!1856 0))(
  ( (tuple2!1857 (_1!938 (_ BitVec 64)) (_2!938 V!2643)) )
))
(declare-datatypes ((List!1361 0))(
  ( (Nil!1358) (Cons!1357 (h!1937 tuple2!1856) (t!4403 List!1361)) )
))
(declare-datatypes ((ListLongMap!1275 0))(
  ( (ListLongMap!1276 (toList!653 List!1361)) )
))
(declare-fun lt!21301 () ListLongMap!1275)

(declare-fun map!1018 (LongMapFixedSize!468) ListLongMap!1275)

(assert (=> b!52530 (= lt!21301 (map!1018 newMap!16))))

(declare-fun lt!21300 () ListLongMap!1275)

(declare-fun getCurrentListMap!362 (array!3416 array!3418 (_ BitVec 32) (_ BitVec 32) V!2643 V!2643 (_ BitVec 32) Int) ListLongMap!1275)

(assert (=> b!52530 (= lt!21300 (getCurrentListMap!362 (_keys!3568 (v!2222 (underlying!153 thiss!992))) (_values!1931 (v!2222 (underlying!153 thiss!992))) (mask!5773 (v!2222 (underlying!153 thiss!992))) (extraKeys!1839 (v!2222 (underlying!153 thiss!992))) (zeroValue!1866 (v!2222 (underlying!153 thiss!992))) (minValue!1866 (v!2222 (underlying!153 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1948 (v!2222 (underlying!153 thiss!992)))))))

(declare-fun mapIsEmpty!2412 () Bool)

(declare-fun mapRes!2412 () Bool)

(assert (=> mapIsEmpty!2412 mapRes!2412))

(declare-fun b!52531 () Bool)

(assert (=> b!52531 (= e!34218 (and e!34210 mapRes!2412))))

(declare-fun condMapEmpty!2411 () Bool)

(declare-fun mapDefault!2412 () ValueCell!780)

(assert (=> b!52531 (= condMapEmpty!2411 (= (arr!1631 (_values!1931 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!780)) mapDefault!2412)))))

(declare-fun b!52532 () Bool)

(declare-fun res!29837 () Bool)

(assert (=> b!52532 (=> (not res!29837) (not e!34213))))

(assert (=> b!52532 (= res!29837 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5773 newMap!16)) (_size!283 (v!2222 (underlying!153 thiss!992)))))))

(declare-fun b!52526 () Bool)

(assert (=> b!52526 (= e!34220 tp_is_empty!2247)))

(declare-fun res!29838 () Bool)

(assert (=> start!8260 (=> (not res!29838) (not e!34213))))

(declare-fun valid!169 (LongMap!284) Bool)

(assert (=> start!8260 (= res!29838 (valid!169 thiss!992))))

(assert (=> start!8260 e!34213))

(assert (=> start!8260 e!34217))

(assert (=> start!8260 true))

(assert (=> start!8260 e!34208))

(assert (=> b!52533 (= e!34216 (and tp!7086 tp_is_empty!2247 (array_inv!951 (_keys!3568 (v!2222 (underlying!153 thiss!992)))) (array_inv!952 (_values!1931 (v!2222 (underlying!153 thiss!992)))) e!34212))))

(declare-fun mapNonEmpty!2412 () Bool)

(declare-fun tp!7084 () Bool)

(assert (=> mapNonEmpty!2412 (= mapRes!2412 (and tp!7084 e!34214))))

(declare-fun mapKey!2411 () (_ BitVec 32))

(declare-fun mapValue!2412 () ValueCell!780)

(declare-fun mapRest!2412 () (Array (_ BitVec 32) ValueCell!780))

(assert (=> mapNonEmpty!2412 (= (arr!1631 (_values!1931 newMap!16)) (store mapRest!2412 mapKey!2411 mapValue!2412))))

(assert (= (and start!8260 res!29838) b!52522))

(assert (= (and b!52522 res!29836) b!52521))

(assert (= (and b!52521 res!29835) b!52532))

(assert (= (and b!52532 res!29837) b!52530))

(assert (= (and b!52529 condMapEmpty!2412) mapIsEmpty!2411))

(assert (= (and b!52529 (not condMapEmpty!2412)) mapNonEmpty!2411))

(get-info :version)

(assert (= (and mapNonEmpty!2411 ((_ is ValueCellFull!780) mapValue!2411)) b!52525))

(assert (= (and b!52529 ((_ is ValueCellFull!780) mapDefault!2411)) b!52526))

(assert (= b!52533 b!52529))

(assert (= b!52528 b!52533))

(assert (= b!52523 b!52528))

(assert (= start!8260 b!52523))

(assert (= (and b!52531 condMapEmpty!2411) mapIsEmpty!2412))

(assert (= (and b!52531 (not condMapEmpty!2411)) mapNonEmpty!2412))

(assert (= (and mapNonEmpty!2412 ((_ is ValueCellFull!780) mapValue!2412)) b!52520))

(assert (= (and b!52531 ((_ is ValueCellFull!780) mapDefault!2412)) b!52527))

(assert (= b!52524 b!52531))

(assert (= start!8260 b!52524))

(declare-fun m!44911 () Bool)

(assert (=> b!52524 m!44911))

(declare-fun m!44913 () Bool)

(assert (=> b!52524 m!44913))

(declare-fun m!44915 () Bool)

(assert (=> mapNonEmpty!2411 m!44915))

(declare-fun m!44917 () Bool)

(assert (=> mapNonEmpty!2412 m!44917))

(declare-fun m!44919 () Bool)

(assert (=> start!8260 m!44919))

(declare-fun m!44921 () Bool)

(assert (=> b!52530 m!44921))

(declare-fun m!44923 () Bool)

(assert (=> b!52530 m!44923))

(declare-fun m!44925 () Bool)

(assert (=> b!52521 m!44925))

(declare-fun m!44927 () Bool)

(assert (=> b!52533 m!44927))

(declare-fun m!44929 () Bool)

(assert (=> b!52533 m!44929))

(check-sat (not b_next!1663) (not b!52533) (not mapNonEmpty!2412) (not start!8260) (not b!52530) (not b!52521) (not mapNonEmpty!2411) tp_is_empty!2247 (not b!52524) b_and!2883 b_and!2881 (not b_next!1661))
(check-sat b_and!2881 b_and!2883 (not b_next!1661) (not b_next!1663))

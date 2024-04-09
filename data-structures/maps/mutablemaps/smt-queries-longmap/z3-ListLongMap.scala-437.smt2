; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8248 () Bool)

(assert start!8248)

(declare-fun b!52280 () Bool)

(declare-fun b_free!1637 () Bool)

(declare-fun b_next!1637 () Bool)

(assert (=> b!52280 (= b_free!1637 (not b_next!1637))))

(declare-fun tp!7014 () Bool)

(declare-fun b_and!2857 () Bool)

(assert (=> b!52280 (= tp!7014 b_and!2857)))

(declare-fun b!52277 () Bool)

(declare-fun b_free!1639 () Bool)

(declare-fun b_next!1639 () Bool)

(assert (=> b!52277 (= b_free!1639 (not b_next!1639))))

(declare-fun tp!7013 () Bool)

(declare-fun b_and!2859 () Bool)

(assert (=> b!52277 (= tp!7013 b_and!2859)))

(declare-fun b!52276 () Bool)

(declare-fun e!33982 () Bool)

(declare-fun e!33977 () Bool)

(declare-fun mapRes!2375 () Bool)

(assert (=> b!52276 (= e!33982 (and e!33977 mapRes!2375))))

(declare-fun condMapEmpty!2375 () Bool)

(declare-datatypes ((V!2627 0))(
  ( (V!2628 (val!1162 Int)) )
))
(declare-datatypes ((array!3392 0))(
  ( (array!3393 (arr!1618 (Array (_ BitVec 32) (_ BitVec 64))) (size!1847 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!774 0))(
  ( (ValueCellFull!774 (v!2209 V!2627)) (EmptyCell!774) )
))
(declare-datatypes ((array!3394 0))(
  ( (array!3395 (arr!1619 (Array (_ BitVec 32) ValueCell!774)) (size!1848 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!456 0))(
  ( (LongMapFixedSize!457 (defaultEntry!1942 Int) (mask!5763 (_ BitVec 32)) (extraKeys!1833 (_ BitVec 32)) (zeroValue!1860 V!2627) (minValue!1860 V!2627) (_size!277 (_ BitVec 32)) (_keys!3562 array!3392) (_values!1925 array!3394) (_vacant!277 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!272 0))(
  ( (Cell!273 (v!2210 LongMapFixedSize!456)) )
))
(declare-datatypes ((LongMap!272 0))(
  ( (LongMap!273 (underlying!147 Cell!272)) )
))
(declare-fun thiss!992 () LongMap!272)

(declare-fun mapDefault!2375 () ValueCell!774)

(assert (=> b!52276 (= condMapEmpty!2375 (= (arr!1619 (_values!1925 (v!2210 (underlying!147 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!774)) mapDefault!2375)))))

(declare-fun tp_is_empty!2235 () Bool)

(declare-fun e!33980 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!456)

(declare-fun e!33974 () Bool)

(declare-fun array_inv!945 (array!3392) Bool)

(declare-fun array_inv!946 (array!3394) Bool)

(assert (=> b!52277 (= e!33980 (and tp!7013 tp_is_empty!2235 (array_inv!945 (_keys!3562 newMap!16)) (array_inv!946 (_values!1925 newMap!16)) e!33974))))

(declare-fun mapIsEmpty!2375 () Bool)

(assert (=> mapIsEmpty!2375 mapRes!2375))

(declare-fun b!52278 () Bool)

(declare-fun e!33975 () Bool)

(assert (=> b!52278 (= e!33975 tp_is_empty!2235)))

(declare-fun res!29772 () Bool)

(declare-fun e!33986 () Bool)

(assert (=> start!8248 (=> (not res!29772) (not e!33986))))

(declare-fun valid!160 (LongMap!272) Bool)

(assert (=> start!8248 (= res!29772 (valid!160 thiss!992))))

(assert (=> start!8248 e!33986))

(declare-fun e!33983 () Bool)

(assert (=> start!8248 e!33983))

(assert (=> start!8248 true))

(assert (=> start!8248 e!33980))

(declare-fun b!52279 () Bool)

(declare-fun e!33978 () Bool)

(assert (=> b!52279 (= e!33983 e!33978)))

(declare-fun e!33981 () Bool)

(assert (=> b!52280 (= e!33981 (and tp!7014 tp_is_empty!2235 (array_inv!945 (_keys!3562 (v!2210 (underlying!147 thiss!992)))) (array_inv!946 (_values!1925 (v!2210 (underlying!147 thiss!992)))) e!33982))))

(declare-fun b!52281 () Bool)

(declare-fun mapRes!2376 () Bool)

(assert (=> b!52281 (= e!33974 (and e!33975 mapRes!2376))))

(declare-fun condMapEmpty!2376 () Bool)

(declare-fun mapDefault!2376 () ValueCell!774)

(assert (=> b!52281 (= condMapEmpty!2376 (= (arr!1619 (_values!1925 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!774)) mapDefault!2376)))))

(declare-fun b!52282 () Bool)

(declare-fun res!29771 () Bool)

(assert (=> b!52282 (=> (not res!29771) (not e!33986))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!52282 (= res!29771 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1847 (_keys!3562 (v!2210 (underlying!147 thiss!992)))))))))

(declare-fun mapNonEmpty!2375 () Bool)

(declare-fun tp!7012 () Bool)

(declare-fun e!33976 () Bool)

(assert (=> mapNonEmpty!2375 (= mapRes!2375 (and tp!7012 e!33976))))

(declare-fun mapRest!2376 () (Array (_ BitVec 32) ValueCell!774))

(declare-fun mapValue!2375 () ValueCell!774)

(declare-fun mapKey!2375 () (_ BitVec 32))

(assert (=> mapNonEmpty!2375 (= (arr!1619 (_values!1925 (v!2210 (underlying!147 thiss!992)))) (store mapRest!2376 mapKey!2375 mapValue!2375))))

(declare-fun mapIsEmpty!2376 () Bool)

(assert (=> mapIsEmpty!2376 mapRes!2376))

(declare-fun mapNonEmpty!2376 () Bool)

(declare-fun tp!7011 () Bool)

(declare-fun e!33979 () Bool)

(assert (=> mapNonEmpty!2376 (= mapRes!2376 (and tp!7011 e!33979))))

(declare-fun mapValue!2376 () ValueCell!774)

(declare-fun mapKey!2376 () (_ BitVec 32))

(declare-fun mapRest!2375 () (Array (_ BitVec 32) ValueCell!774))

(assert (=> mapNonEmpty!2376 (= (arr!1619 (_values!1925 newMap!16)) (store mapRest!2375 mapKey!2376 mapValue!2376))))

(declare-fun b!52283 () Bool)

(assert (=> b!52283 (= e!33978 e!33981)))

(declare-fun b!52284 () Bool)

(assert (=> b!52284 (= e!33976 tp_is_empty!2235)))

(declare-fun b!52285 () Bool)

(assert (=> b!52285 (= e!33986 false)))

(declare-fun lt!21268 () Bool)

(declare-fun valid!161 (LongMapFixedSize!456) Bool)

(assert (=> b!52285 (= lt!21268 (valid!161 newMap!16))))

(declare-fun b!52286 () Bool)

(assert (=> b!52286 (= e!33977 tp_is_empty!2235)))

(declare-fun b!52287 () Bool)

(assert (=> b!52287 (= e!33979 tp_is_empty!2235)))

(assert (= (and start!8248 res!29772) b!52282))

(assert (= (and b!52282 res!29771) b!52285))

(assert (= (and b!52276 condMapEmpty!2375) mapIsEmpty!2375))

(assert (= (and b!52276 (not condMapEmpty!2375)) mapNonEmpty!2375))

(get-info :version)

(assert (= (and mapNonEmpty!2375 ((_ is ValueCellFull!774) mapValue!2375)) b!52284))

(assert (= (and b!52276 ((_ is ValueCellFull!774) mapDefault!2375)) b!52286))

(assert (= b!52280 b!52276))

(assert (= b!52283 b!52280))

(assert (= b!52279 b!52283))

(assert (= start!8248 b!52279))

(assert (= (and b!52281 condMapEmpty!2376) mapIsEmpty!2376))

(assert (= (and b!52281 (not condMapEmpty!2376)) mapNonEmpty!2376))

(assert (= (and mapNonEmpty!2376 ((_ is ValueCellFull!774) mapValue!2376)) b!52287))

(assert (= (and b!52281 ((_ is ValueCellFull!774) mapDefault!2376)) b!52278))

(assert (= b!52277 b!52281))

(assert (= start!8248 b!52277))

(declare-fun m!44799 () Bool)

(assert (=> mapNonEmpty!2376 m!44799))

(declare-fun m!44801 () Bool)

(assert (=> mapNonEmpty!2375 m!44801))

(declare-fun m!44803 () Bool)

(assert (=> start!8248 m!44803))

(declare-fun m!44805 () Bool)

(assert (=> b!52277 m!44805))

(declare-fun m!44807 () Bool)

(assert (=> b!52277 m!44807))

(declare-fun m!44809 () Bool)

(assert (=> b!52280 m!44809))

(declare-fun m!44811 () Bool)

(assert (=> b!52280 m!44811))

(declare-fun m!44813 () Bool)

(assert (=> b!52285 m!44813))

(check-sat (not start!8248) b_and!2859 tp_is_empty!2235 (not b_next!1639) (not b_next!1637) (not b!52277) (not b!52285) (not mapNonEmpty!2375) b_and!2857 (not b!52280) (not mapNonEmpty!2376))
(check-sat b_and!2857 b_and!2859 (not b_next!1637) (not b_next!1639))

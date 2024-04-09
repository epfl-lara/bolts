; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15468 () Bool)

(assert start!15468)

(declare-fun b!153564 () Bool)

(declare-fun b_free!3197 () Bool)

(declare-fun b_next!3197 () Bool)

(assert (=> b!153564 (= b_free!3197 (not b_next!3197))))

(declare-fun tp!12107 () Bool)

(declare-fun b_and!9577 () Bool)

(assert (=> b!153564 (= tp!12107 b_and!9577)))

(declare-fun b!153570 () Bool)

(declare-fun b_free!3199 () Bool)

(declare-fun b_next!3199 () Bool)

(assert (=> b!153570 (= b_free!3199 (not b_next!3199))))

(declare-fun tp!12108 () Bool)

(declare-fun b_and!9579 () Bool)

(assert (=> b!153570 (= tp!12108 b_and!9579)))

(declare-fun mapNonEmpty!5131 () Bool)

(declare-fun mapRes!5131 () Bool)

(declare-fun tp!12110 () Bool)

(declare-fun e!100294 () Bool)

(assert (=> mapNonEmpty!5131 (= mapRes!5131 (and tp!12110 e!100294))))

(declare-datatypes ((V!3667 0))(
  ( (V!3668 (val!1552 Int)) )
))
(declare-datatypes ((ValueCell!1164 0))(
  ( (ValueCellFull!1164 (v!3403 V!3667)) (EmptyCell!1164) )
))
(declare-fun mapValue!5132 () ValueCell!1164)

(declare-datatypes ((array!5078 0))(
  ( (array!5079 (arr!2398 (Array (_ BitVec 32) (_ BitVec 64))) (size!2675 (_ BitVec 32))) )
))
(declare-datatypes ((array!5080 0))(
  ( (array!5081 (arr!2399 (Array (_ BitVec 32) ValueCell!1164)) (size!2676 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1236 0))(
  ( (LongMapFixedSize!1237 (defaultEntry!3057 Int) (mask!7457 (_ BitVec 32)) (extraKeys!2798 (_ BitVec 32)) (zeroValue!2900 V!3667) (minValue!2900 V!3667) (_size!667 (_ BitVec 32)) (_keys!4830 array!5078) (_values!3040 array!5080) (_vacant!667 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1014 0))(
  ( (Cell!1015 (v!3404 LongMapFixedSize!1236)) )
))
(declare-datatypes ((LongMap!1014 0))(
  ( (LongMap!1015 (underlying!518 Cell!1014)) )
))
(declare-fun thiss!992 () LongMap!1014)

(declare-fun mapKey!5131 () (_ BitVec 32))

(declare-fun mapRest!5131 () (Array (_ BitVec 32) ValueCell!1164))

(assert (=> mapNonEmpty!5131 (= (arr!2399 (_values!3040 (v!3404 (underlying!518 thiss!992)))) (store mapRest!5131 mapKey!5131 mapValue!5132))))

(declare-fun e!100291 () Bool)

(declare-fun tp_is_empty!3015 () Bool)

(declare-fun e!100301 () Bool)

(declare-fun array_inv!1487 (array!5078) Bool)

(declare-fun array_inv!1488 (array!5080) Bool)

(assert (=> b!153564 (= e!100291 (and tp!12107 tp_is_empty!3015 (array_inv!1487 (_keys!4830 (v!3404 (underlying!518 thiss!992)))) (array_inv!1488 (_values!3040 (v!3404 (underlying!518 thiss!992)))) e!100301))))

(declare-fun b!153565 () Bool)

(declare-fun res!72583 () Bool)

(declare-fun e!100303 () Bool)

(assert (=> b!153565 (=> (not res!72583) (not e!100303))))

(declare-fun newMap!16 () LongMapFixedSize!1236)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2790 0))(
  ( (tuple2!2791 (_1!1405 (_ BitVec 64)) (_2!1405 V!3667)) )
))
(declare-datatypes ((List!1817 0))(
  ( (Nil!1814) (Cons!1813 (h!2422 tuple2!2790) (t!6615 List!1817)) )
))
(declare-datatypes ((ListLongMap!1805 0))(
  ( (ListLongMap!1806 (toList!918 List!1817)) )
))
(declare-fun getCurrentListMap!580 (array!5078 array!5080 (_ BitVec 32) (_ BitVec 32) V!3667 V!3667 (_ BitVec 32) Int) ListLongMap!1805)

(declare-fun map!1491 (LongMapFixedSize!1236) ListLongMap!1805)

(assert (=> b!153565 (= res!72583 (= (getCurrentListMap!580 (_keys!4830 (v!3404 (underlying!518 thiss!992))) (_values!3040 (v!3404 (underlying!518 thiss!992))) (mask!7457 (v!3404 (underlying!518 thiss!992))) (extraKeys!2798 (v!3404 (underlying!518 thiss!992))) (zeroValue!2900 (v!3404 (underlying!518 thiss!992))) (minValue!2900 (v!3404 (underlying!518 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3057 (v!3404 (underlying!518 thiss!992)))) (map!1491 newMap!16)))))

(declare-fun mapIsEmpty!5131 () Bool)

(declare-fun mapRes!5132 () Bool)

(assert (=> mapIsEmpty!5131 mapRes!5132))

(declare-fun b!153567 () Bool)

(declare-fun res!72582 () Bool)

(assert (=> b!153567 (=> (not res!72582) (not e!100303))))

(declare-fun valid!603 (LongMapFixedSize!1236) Bool)

(assert (=> b!153567 (= res!72582 (valid!603 newMap!16))))

(declare-fun b!153568 () Bool)

(declare-fun e!100297 () Bool)

(assert (=> b!153568 (= e!100297 tp_is_empty!3015)))

(declare-fun b!153569 () Bool)

(assert (=> b!153569 (= e!100303 (and (or (= (select (arr!2398 (_keys!4830 (v!3404 (underlying!518 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2398 (_keys!4830 (v!3404 (underlying!518 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!355 #b00000000000000000000000000000000) (bvsge (bvsub from!355 #b00000000000000000000000000000001) from!355)))))

(declare-fun mapNonEmpty!5132 () Bool)

(declare-fun tp!12109 () Bool)

(declare-fun e!100296 () Bool)

(assert (=> mapNonEmpty!5132 (= mapRes!5132 (and tp!12109 e!100296))))

(declare-fun mapValue!5131 () ValueCell!1164)

(declare-fun mapKey!5132 () (_ BitVec 32))

(declare-fun mapRest!5132 () (Array (_ BitVec 32) ValueCell!1164))

(assert (=> mapNonEmpty!5132 (= (arr!2399 (_values!3040 newMap!16)) (store mapRest!5132 mapKey!5132 mapValue!5131))))

(declare-fun e!100300 () Bool)

(declare-fun e!100298 () Bool)

(assert (=> b!153570 (= e!100298 (and tp!12108 tp_is_empty!3015 (array_inv!1487 (_keys!4830 newMap!16)) (array_inv!1488 (_values!3040 newMap!16)) e!100300))))

(declare-fun b!153571 () Bool)

(assert (=> b!153571 (= e!100301 (and e!100297 mapRes!5131))))

(declare-fun condMapEmpty!5131 () Bool)

(declare-fun mapDefault!5132 () ValueCell!1164)

(assert (=> b!153571 (= condMapEmpty!5131 (= (arr!2399 (_values!3040 (v!3404 (underlying!518 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1164)) mapDefault!5132)))))

(declare-fun mapIsEmpty!5132 () Bool)

(assert (=> mapIsEmpty!5132 mapRes!5131))

(declare-fun b!153572 () Bool)

(declare-fun e!100292 () Bool)

(assert (=> b!153572 (= e!100292 tp_is_empty!3015)))

(declare-fun b!153573 () Bool)

(assert (=> b!153573 (= e!100300 (and e!100292 mapRes!5132))))

(declare-fun condMapEmpty!5132 () Bool)

(declare-fun mapDefault!5131 () ValueCell!1164)

(assert (=> b!153573 (= condMapEmpty!5132 (= (arr!2399 (_values!3040 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1164)) mapDefault!5131)))))

(declare-fun b!153574 () Bool)

(declare-fun e!100293 () Bool)

(declare-fun e!100295 () Bool)

(assert (=> b!153574 (= e!100293 e!100295)))

(declare-fun b!153575 () Bool)

(assert (=> b!153575 (= e!100294 tp_is_empty!3015)))

(declare-fun b!153576 () Bool)

(declare-fun res!72585 () Bool)

(assert (=> b!153576 (=> (not res!72585) (not e!100303))))

(assert (=> b!153576 (= res!72585 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7457 newMap!16)) (_size!667 (v!3404 (underlying!518 thiss!992)))))))

(declare-fun b!153566 () Bool)

(assert (=> b!153566 (= e!100296 tp_is_empty!3015)))

(declare-fun res!72581 () Bool)

(assert (=> start!15468 (=> (not res!72581) (not e!100303))))

(declare-fun valid!604 (LongMap!1014) Bool)

(assert (=> start!15468 (= res!72581 (valid!604 thiss!992))))

(assert (=> start!15468 e!100303))

(assert (=> start!15468 e!100293))

(assert (=> start!15468 true))

(assert (=> start!15468 e!100298))

(declare-fun b!153577 () Bool)

(assert (=> b!153577 (= e!100295 e!100291)))

(declare-fun b!153578 () Bool)

(declare-fun res!72584 () Bool)

(assert (=> b!153578 (=> (not res!72584) (not e!100303))))

(assert (=> b!153578 (= res!72584 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2675 (_keys!4830 (v!3404 (underlying!518 thiss!992)))))))))

(assert (= (and start!15468 res!72581) b!153578))

(assert (= (and b!153578 res!72584) b!153567))

(assert (= (and b!153567 res!72582) b!153576))

(assert (= (and b!153576 res!72585) b!153565))

(assert (= (and b!153565 res!72583) b!153569))

(assert (= (and b!153571 condMapEmpty!5131) mapIsEmpty!5132))

(assert (= (and b!153571 (not condMapEmpty!5131)) mapNonEmpty!5131))

(get-info :version)

(assert (= (and mapNonEmpty!5131 ((_ is ValueCellFull!1164) mapValue!5132)) b!153575))

(assert (= (and b!153571 ((_ is ValueCellFull!1164) mapDefault!5132)) b!153568))

(assert (= b!153564 b!153571))

(assert (= b!153577 b!153564))

(assert (= b!153574 b!153577))

(assert (= start!15468 b!153574))

(assert (= (and b!153573 condMapEmpty!5132) mapIsEmpty!5131))

(assert (= (and b!153573 (not condMapEmpty!5132)) mapNonEmpty!5132))

(assert (= (and mapNonEmpty!5132 ((_ is ValueCellFull!1164) mapValue!5131)) b!153566))

(assert (= (and b!153573 ((_ is ValueCellFull!1164) mapDefault!5131)) b!153572))

(assert (= b!153570 b!153573))

(assert (= start!15468 b!153570))

(declare-fun m!187459 () Bool)

(assert (=> start!15468 m!187459))

(declare-fun m!187461 () Bool)

(assert (=> mapNonEmpty!5131 m!187461))

(declare-fun m!187463 () Bool)

(assert (=> b!153567 m!187463))

(declare-fun m!187465 () Bool)

(assert (=> b!153564 m!187465))

(declare-fun m!187467 () Bool)

(assert (=> b!153564 m!187467))

(declare-fun m!187469 () Bool)

(assert (=> b!153569 m!187469))

(declare-fun m!187471 () Bool)

(assert (=> b!153565 m!187471))

(declare-fun m!187473 () Bool)

(assert (=> b!153565 m!187473))

(declare-fun m!187475 () Bool)

(assert (=> mapNonEmpty!5132 m!187475))

(declare-fun m!187477 () Bool)

(assert (=> b!153570 m!187477))

(declare-fun m!187479 () Bool)

(assert (=> b!153570 m!187479))

(check-sat (not b_next!3197) (not mapNonEmpty!5131) tp_is_empty!3015 (not b!153564) (not b!153570) (not b_next!3199) (not mapNonEmpty!5132) b_and!9579 (not start!15468) (not b!153565) b_and!9577 (not b!153567))
(check-sat b_and!9577 b_and!9579 (not b_next!3197) (not b_next!3199))

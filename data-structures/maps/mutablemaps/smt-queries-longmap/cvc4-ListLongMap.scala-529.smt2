; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13218 () Bool)

(assert start!13218)

(declare-fun b!116461 () Bool)

(declare-fun b_free!2745 () Bool)

(declare-fun b_next!2745 () Bool)

(assert (=> b!116461 (= b_free!2745 (not b_next!2745))))

(declare-fun tp!10605 () Bool)

(declare-fun b_and!7265 () Bool)

(assert (=> b!116461 (= tp!10605 b_and!7265)))

(declare-fun b!116466 () Bool)

(declare-fun b_free!2747 () Bool)

(declare-fun b_next!2747 () Bool)

(assert (=> b!116466 (= b_free!2747 (not b_next!2747))))

(declare-fun tp!10606 () Bool)

(declare-fun b_and!7267 () Bool)

(assert (=> b!116466 (= tp!10606 b_and!7267)))

(declare-fun b!116457 () Bool)

(declare-fun e!76050 () Bool)

(declare-fun e!76049 () Bool)

(assert (=> b!116457 (= e!76050 e!76049)))

(declare-fun res!57061 () Bool)

(assert (=> b!116457 (=> (not res!57061) (not e!76049))))

(declare-datatypes ((V!3365 0))(
  ( (V!3366 (val!1439 Int)) )
))
(declare-datatypes ((array!4582 0))(
  ( (array!4583 (arr!2172 (Array (_ BitVec 32) (_ BitVec 64))) (size!2433 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1051 0))(
  ( (ValueCellFull!1051 (v!3044 V!3365)) (EmptyCell!1051) )
))
(declare-datatypes ((array!4584 0))(
  ( (array!4585 (arr!2173 (Array (_ BitVec 32) ValueCell!1051)) (size!2434 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1010 0))(
  ( (LongMapFixedSize!1011 (defaultEntry!2716 Int) (mask!6932 (_ BitVec 32)) (extraKeys!2505 (_ BitVec 32)) (zeroValue!2583 V!3365) (minValue!2583 V!3365) (_size!554 (_ BitVec 32)) (_keys!4439 array!4582) (_values!2699 array!4584) (_vacant!554 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2524 0))(
  ( (tuple2!2525 (_1!1272 Bool) (_2!1272 LongMapFixedSize!1010)) )
))
(declare-fun lt!60402 () tuple2!2524)

(assert (=> b!116457 (= res!57061 (_1!1272 lt!60402))))

(declare-fun newMap!16 () LongMapFixedSize!1010)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Cell!804 0))(
  ( (Cell!805 (v!3045 LongMapFixedSize!1010)) )
))
(declare-datatypes ((LongMap!804 0))(
  ( (LongMap!805 (underlying!413 Cell!804)) )
))
(declare-fun thiss!992 () LongMap!804)

(declare-fun repackFrom!15 (LongMap!804 LongMapFixedSize!1010 (_ BitVec 32)) tuple2!2524)

(assert (=> b!116457 (= lt!60402 (repackFrom!15 thiss!992 newMap!16 (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun b!116458 () Bool)

(declare-fun valid!473 (LongMapFixedSize!1010) Bool)

(assert (=> b!116458 (= e!76049 (not (valid!473 (v!3045 (underlying!413 thiss!992)))))))

(declare-fun b!116459 () Bool)

(declare-fun e!76052 () Bool)

(declare-fun tp_is_empty!2789 () Bool)

(assert (=> b!116459 (= e!76052 tp_is_empty!2789)))

(declare-fun mapIsEmpty!4305 () Bool)

(declare-fun mapRes!4305 () Bool)

(assert (=> mapIsEmpty!4305 mapRes!4305))

(declare-fun b!116460 () Bool)

(declare-fun e!76047 () Bool)

(assert (=> b!116460 (= e!76047 tp_is_empty!2789)))

(declare-fun e!76056 () Bool)

(declare-fun e!76046 () Bool)

(declare-fun array_inv!1319 (array!4582) Bool)

(declare-fun array_inv!1320 (array!4584) Bool)

(assert (=> b!116461 (= e!76046 (and tp!10605 tp_is_empty!2789 (array_inv!1319 (_keys!4439 (v!3045 (underlying!413 thiss!992)))) (array_inv!1320 (_values!2699 (v!3045 (underlying!413 thiss!992)))) e!76056))))

(declare-fun b!116462 () Bool)

(declare-fun e!76051 () Bool)

(assert (=> b!116462 (= e!76051 tp_is_empty!2789)))

(declare-fun b!116463 () Bool)

(declare-fun e!76055 () Bool)

(assert (=> b!116463 (= e!76056 (and e!76055 mapRes!4305))))

(declare-fun condMapEmpty!4306 () Bool)

(declare-fun mapDefault!4305 () ValueCell!1051)


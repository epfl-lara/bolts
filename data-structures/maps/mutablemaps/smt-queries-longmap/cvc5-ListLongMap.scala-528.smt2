; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13208 () Bool)

(assert start!13208)

(declare-fun b!116194 () Bool)

(declare-fun b_free!2725 () Bool)

(declare-fun b_next!2725 () Bool)

(assert (=> b!116194 (= b_free!2725 (not b_next!2725))))

(declare-fun tp!10545 () Bool)

(declare-fun b_and!7245 () Bool)

(assert (=> b!116194 (= tp!10545 b_and!7245)))

(declare-fun b!116201 () Bool)

(declare-fun b_free!2727 () Bool)

(declare-fun b_next!2727 () Bool)

(assert (=> b!116201 (= b_free!2727 (not b_next!2727))))

(declare-fun tp!10544 () Bool)

(declare-fun b_and!7247 () Bool)

(assert (=> b!116201 (= tp!10544 b_and!7247)))

(declare-datatypes ((V!3353 0))(
  ( (V!3354 (val!1434 Int)) )
))
(declare-datatypes ((array!4562 0))(
  ( (array!4563 (arr!2162 (Array (_ BitVec 32) (_ BitVec 64))) (size!2423 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1046 0))(
  ( (ValueCellFull!1046 (v!3034 V!3353)) (EmptyCell!1046) )
))
(declare-datatypes ((array!4564 0))(
  ( (array!4565 (arr!2163 (Array (_ BitVec 32) ValueCell!1046)) (size!2424 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1000 0))(
  ( (LongMapFixedSize!1001 (defaultEntry!2711 Int) (mask!6925 (_ BitVec 32)) (extraKeys!2500 (_ BitVec 32)) (zeroValue!2578 V!3353) (minValue!2578 V!3353) (_size!549 (_ BitVec 32)) (_keys!4434 array!4562) (_values!2694 array!4564) (_vacant!549 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!794 0))(
  ( (Cell!795 (v!3035 LongMapFixedSize!1000)) )
))
(declare-datatypes ((LongMap!794 0))(
  ( (LongMap!795 (underlying!408 Cell!794)) )
))
(declare-fun thiss!992 () LongMap!794)

(declare-fun e!75849 () Bool)

(declare-fun e!75848 () Bool)

(declare-fun tp_is_empty!2779 () Bool)

(declare-fun array_inv!1309 (array!4562) Bool)

(declare-fun array_inv!1310 (array!4564) Bool)

(assert (=> b!116194 (= e!75848 (and tp!10545 tp_is_empty!2779 (array_inv!1309 (_keys!4434 (v!3035 (underlying!408 thiss!992)))) (array_inv!1310 (_values!2694 (v!3035 (underlying!408 thiss!992)))) e!75849))))

(declare-fun b!116195 () Bool)

(declare-fun e!75837 () Bool)

(assert (=> b!116195 (= e!75837 tp_is_empty!2779)))

(declare-fun res!56952 () Bool)

(declare-fun e!75841 () Bool)

(assert (=> start!13208 (=> (not res!56952) (not e!75841))))

(declare-fun valid!466 (LongMap!794) Bool)

(assert (=> start!13208 (= res!56952 (valid!466 thiss!992))))

(assert (=> start!13208 e!75841))

(declare-fun e!75845 () Bool)

(assert (=> start!13208 e!75845))

(assert (=> start!13208 true))

(declare-fun e!75846 () Bool)

(assert (=> start!13208 e!75846))

(declare-fun mapNonEmpty!4275 () Bool)

(declare-fun mapRes!4275 () Bool)

(declare-fun tp!10543 () Bool)

(declare-fun e!75844 () Bool)

(assert (=> mapNonEmpty!4275 (= mapRes!4275 (and tp!10543 e!75844))))

(declare-fun mapKey!4276 () (_ BitVec 32))

(declare-fun mapRest!4275 () (Array (_ BitVec 32) ValueCell!1046))

(declare-fun mapValue!4276 () ValueCell!1046)

(assert (=> mapNonEmpty!4275 (= (arr!2163 (_values!2694 (v!3035 (underlying!408 thiss!992)))) (store mapRest!4275 mapKey!4276 mapValue!4276))))

(declare-fun b!116196 () Bool)

(declare-fun e!75843 () Bool)

(assert (=> b!116196 (= e!75843 e!75848)))

(declare-fun b!116197 () Bool)

(declare-fun e!75842 () Bool)

(assert (=> b!116197 (= e!75842 tp_is_empty!2779)))

(declare-fun b!116198 () Bool)

(declare-fun e!75840 () Bool)

(assert (=> b!116198 (= e!75840 tp_is_empty!2779)))

(declare-fun b!116199 () Bool)

(declare-fun res!56950 () Bool)

(assert (=> b!116199 (=> (not res!56950) (not e!75841))))

(declare-fun newMap!16 () LongMapFixedSize!1000)

(assert (=> b!116199 (= res!56950 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6925 newMap!16)) (_size!549 (v!3035 (underlying!408 thiss!992)))))))

(declare-fun b!116200 () Bool)

(declare-fun res!56948 () Bool)

(assert (=> b!116200 (=> (not res!56948) (not e!75841))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2508 0))(
  ( (tuple2!2509 (_1!1264 (_ BitVec 64)) (_2!1264 V!3353)) )
))
(declare-datatypes ((List!1694 0))(
  ( (Nil!1691) (Cons!1690 (h!2290 tuple2!2508) (t!5968 List!1694)) )
))
(declare-datatypes ((ListLongMap!1647 0))(
  ( (ListLongMap!1648 (toList!839 List!1694)) )
))
(declare-fun getCurrentListMap!512 (array!4562 array!4564 (_ BitVec 32) (_ BitVec 32) V!3353 V!3353 (_ BitVec 32) Int) ListLongMap!1647)

(declare-fun map!1345 (LongMapFixedSize!1000) ListLongMap!1647)

(assert (=> b!116200 (= res!56948 (= (getCurrentListMap!512 (_keys!4434 (v!3035 (underlying!408 thiss!992))) (_values!2694 (v!3035 (underlying!408 thiss!992))) (mask!6925 (v!3035 (underlying!408 thiss!992))) (extraKeys!2500 (v!3035 (underlying!408 thiss!992))) (zeroValue!2578 (v!3035 (underlying!408 thiss!992))) (minValue!2578 (v!3035 (underlying!408 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2711 (v!3035 (underlying!408 thiss!992)))) (map!1345 newMap!16)))))

(declare-fun e!75839 () Bool)

(assert (=> b!116201 (= e!75846 (and tp!10544 tp_is_empty!2779 (array_inv!1309 (_keys!4434 newMap!16)) (array_inv!1310 (_values!2694 newMap!16)) e!75839))))

(declare-fun b!116202 () Bool)

(declare-fun mapRes!4276 () Bool)

(assert (=> b!116202 (= e!75839 (and e!75840 mapRes!4276))))

(declare-fun condMapEmpty!4276 () Bool)

(declare-fun mapDefault!4276 () ValueCell!1046)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11274 () Bool)

(assert start!11274)

(declare-fun b!92666 () Bool)

(declare-fun b_free!2349 () Bool)

(declare-fun b_next!2349 () Bool)

(assert (=> b!92666 (= b_free!2349 (not b_next!2349))))

(declare-fun tp!9305 () Bool)

(declare-fun b_and!5617 () Bool)

(assert (=> b!92666 (= tp!9305 b_and!5617)))

(declare-fun b!92668 () Bool)

(declare-fun b_free!2351 () Bool)

(declare-fun b_next!2351 () Bool)

(assert (=> b!92668 (= b_free!2351 (not b_next!2351))))

(declare-fun tp!9308 () Bool)

(declare-fun b_and!5619 () Bool)

(assert (=> b!92668 (= tp!9308 b_and!5619)))

(declare-datatypes ((V!3101 0))(
  ( (V!3102 (val!1340 Int)) )
))
(declare-datatypes ((tuple2!2306 0))(
  ( (tuple2!2307 (_1!1163 (_ BitVec 64)) (_2!1163 V!3101)) )
))
(declare-datatypes ((List!1588 0))(
  ( (Nil!1585) (Cons!1584 (h!2176 tuple2!2306) (t!5450 List!1588)) )
))
(declare-datatypes ((ListLongMap!1525 0))(
  ( (ListLongMap!1526 (toList!778 List!1588)) )
))
(declare-fun lt!45492 () ListLongMap!1525)

(declare-datatypes ((array!4152 0))(
  ( (array!4153 (arr!1974 (Array (_ BitVec 32) (_ BitVec 64))) (size!2222 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!952 0))(
  ( (ValueCellFull!952 (v!2736 V!3101)) (EmptyCell!952) )
))
(declare-datatypes ((array!4154 0))(
  ( (array!4155 (arr!1975 (Array (_ BitVec 32) ValueCell!952)) (size!2223 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!812 0))(
  ( (LongMapFixedSize!813 (defaultEntry!2420 Int) (mask!6486 (_ BitVec 32)) (extraKeys!2249 (_ BitVec 32)) (zeroValue!2307 V!3101) (minValue!2307 V!3101) (_size!455 (_ BitVec 32)) (_keys!4102 array!4152) (_values!2403 array!4154) (_vacant!455 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!616 0))(
  ( (Cell!617 (v!2737 LongMapFixedSize!812)) )
))
(declare-datatypes ((LongMap!616 0))(
  ( (LongMap!617 (underlying!319 Cell!616)) )
))
(declare-fun thiss!992 () LongMap!616)

(declare-fun e!60431 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun b!92664 () Bool)

(declare-fun getCurrentListMap!460 (array!4152 array!4154 (_ BitVec 32) (_ BitVec 32) V!3101 V!3101 (_ BitVec 32) Int) ListLongMap!1525)

(assert (=> b!92664 (= e!60431 (= (getCurrentListMap!460 (_keys!4102 (v!2737 (underlying!319 thiss!992))) (_values!2403 (v!2737 (underlying!319 thiss!992))) (mask!6486 (v!2737 (underlying!319 thiss!992))) (extraKeys!2249 (v!2737 (underlying!319 thiss!992))) (zeroValue!2307 (v!2737 (underlying!319 thiss!992))) (minValue!2307 (v!2737 (underlying!319 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2420 (v!2737 (underlying!319 thiss!992)))) lt!45492))))

(declare-fun b!92665 () Bool)

(declare-fun e!60433 () Bool)

(declare-fun e!60432 () Bool)

(declare-fun mapRes!3601 () Bool)

(assert (=> b!92665 (= e!60433 (and e!60432 mapRes!3601))))

(declare-fun condMapEmpty!3602 () Bool)

(declare-fun mapDefault!3601 () ValueCell!952)


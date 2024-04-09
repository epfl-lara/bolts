; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13076 () Bool)

(assert start!13076)

(declare-fun b!114075 () Bool)

(declare-fun b_free!2605 () Bool)

(declare-fun b_next!2605 () Bool)

(assert (=> b!114075 (= b_free!2605 (not b_next!2605))))

(declare-fun tp!10173 () Bool)

(declare-fun b_and!7025 () Bool)

(assert (=> b!114075 (= tp!10173 b_and!7025)))

(declare-fun b!114080 () Bool)

(declare-fun b_free!2607 () Bool)

(declare-fun b_next!2607 () Bool)

(assert (=> b!114080 (= b_free!2607 (not b_next!2607))))

(declare-fun tp!10174 () Bool)

(declare-fun b_and!7027 () Bool)

(assert (=> b!114080 (= tp!10174 b_and!7027)))

(declare-fun b!114074 () Bool)

(declare-fun res!56188 () Bool)

(declare-fun e!74151 () Bool)

(assert (=> b!114074 (=> (not res!56188) (not e!74151))))

(declare-datatypes ((V!3273 0))(
  ( (V!3274 (val!1404 Int)) )
))
(declare-datatypes ((array!4438 0))(
  ( (array!4439 (arr!2102 (Array (_ BitVec 32) (_ BitVec 64))) (size!2362 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1016 0))(
  ( (ValueCellFull!1016 (v!2974 V!3273)) (EmptyCell!1016) )
))
(declare-datatypes ((array!4440 0))(
  ( (array!4441 (arr!2103 (Array (_ BitVec 32) ValueCell!1016)) (size!2363 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!940 0))(
  ( (LongMapFixedSize!941 (defaultEntry!2676 Int) (mask!6868 (_ BitVec 32)) (extraKeys!2465 (_ BitVec 32)) (zeroValue!2543 V!3273) (minValue!2543 V!3273) (_size!519 (_ BitVec 32)) (_keys!4398 array!4438) (_values!2659 array!4440) (_vacant!519 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!940)

(declare-fun valid!435 (LongMapFixedSize!940) Bool)

(assert (=> b!114074 (= res!56188 (valid!435 newMap!16))))

(declare-datatypes ((Cell!740 0))(
  ( (Cell!741 (v!2975 LongMapFixedSize!940)) )
))
(declare-datatypes ((LongMap!740 0))(
  ( (LongMap!741 (underlying!381 Cell!740)) )
))
(declare-fun thiss!992 () LongMap!740)

(declare-fun e!74150 () Bool)

(declare-fun tp_is_empty!2719 () Bool)

(declare-fun e!74154 () Bool)

(declare-fun array_inv!1265 (array!4438) Bool)

(declare-fun array_inv!1266 (array!4440) Bool)

(assert (=> b!114075 (= e!74154 (and tp!10173 tp_is_empty!2719 (array_inv!1265 (_keys!4398 (v!2975 (underlying!381 thiss!992)))) (array_inv!1266 (_values!2659 (v!2975 (underlying!381 thiss!992)))) e!74150))))

(declare-fun b!114076 () Bool)

(declare-fun e!74157 () Bool)

(declare-fun e!74153 () Bool)

(declare-fun mapRes!4085 () Bool)

(assert (=> b!114076 (= e!74157 (and e!74153 mapRes!4085))))

(declare-fun condMapEmpty!4085 () Bool)

(declare-fun mapDefault!4086 () ValueCell!1016)


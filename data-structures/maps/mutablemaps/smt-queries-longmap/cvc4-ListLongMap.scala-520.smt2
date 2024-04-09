; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13092 () Bool)

(assert start!13092)

(declare-fun b!114569 () Bool)

(declare-fun b_free!2637 () Bool)

(declare-fun b_next!2637 () Bool)

(assert (=> b!114569 (= b_free!2637 (not b_next!2637))))

(declare-fun tp!10272 () Bool)

(declare-fun b_and!7089 () Bool)

(assert (=> b!114569 (= tp!10272 b_and!7089)))

(declare-fun b!114566 () Bool)

(declare-fun b_free!2639 () Bool)

(declare-fun b_next!2639 () Bool)

(assert (=> b!114566 (= b_free!2639 (not b_next!2639))))

(declare-fun tp!10269 () Bool)

(declare-fun b_and!7091 () Bool)

(assert (=> b!114566 (= tp!10269 b_and!7091)))

(declare-fun mapNonEmpty!4133 () Bool)

(declare-fun mapRes!4134 () Bool)

(declare-fun tp!10270 () Bool)

(declare-fun e!74563 () Bool)

(assert (=> mapNonEmpty!4133 (= mapRes!4134 (and tp!10270 e!74563))))

(declare-datatypes ((V!3293 0))(
  ( (V!3294 (val!1412 Int)) )
))
(declare-datatypes ((ValueCell!1024 0))(
  ( (ValueCellFull!1024 (v!2989 V!3293)) (EmptyCell!1024) )
))
(declare-fun mapValue!4134 () ValueCell!1024)

(declare-fun mapKey!4133 () (_ BitVec 32))

(declare-datatypes ((array!4470 0))(
  ( (array!4471 (arr!2118 (Array (_ BitVec 32) (_ BitVec 64))) (size!2378 (_ BitVec 32))) )
))
(declare-datatypes ((array!4472 0))(
  ( (array!4473 (arr!2119 (Array (_ BitVec 32) ValueCell!1024)) (size!2379 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!956 0))(
  ( (LongMapFixedSize!957 (defaultEntry!2684 Int) (mask!6880 (_ BitVec 32)) (extraKeys!2473 (_ BitVec 32)) (zeroValue!2551 V!3293) (minValue!2551 V!3293) (_size!527 (_ BitVec 32)) (_keys!4406 array!4470) (_values!2667 array!4472) (_vacant!527 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!956)

(declare-fun mapRest!4133 () (Array (_ BitVec 32) ValueCell!1024))

(assert (=> mapNonEmpty!4133 (= (arr!2119 (_values!2667 newMap!16)) (store mapRest!4133 mapKey!4133 mapValue!4134))))

(declare-fun b!114554 () Bool)

(declare-fun res!56363 () Bool)

(declare-fun e!74568 () Bool)

(assert (=> b!114554 (=> (not res!56363) (not e!74568))))

(declare-datatypes ((Cell!754 0))(
  ( (Cell!755 (v!2990 LongMapFixedSize!956)) )
))
(declare-datatypes ((LongMap!754 0))(
  ( (LongMap!755 (underlying!388 Cell!754)) )
))
(declare-fun thiss!992 () LongMap!754)

(assert (=> b!114554 (= res!56363 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6880 newMap!16)) (_size!527 (v!2990 (underlying!388 thiss!992)))))))

(declare-fun b!114555 () Bool)

(declare-fun e!74572 () Bool)

(declare-fun e!74571 () Bool)

(assert (=> b!114555 (= e!74572 (and e!74571 mapRes!4134))))

(declare-fun condMapEmpty!4134 () Bool)

(declare-fun mapDefault!4134 () ValueCell!1024)


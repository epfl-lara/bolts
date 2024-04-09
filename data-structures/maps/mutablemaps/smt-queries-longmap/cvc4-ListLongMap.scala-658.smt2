; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16312 () Bool)

(assert start!16312)

(declare-fun b!162619 () Bool)

(declare-fun b_free!3761 () Bool)

(declare-fun b_next!3761 () Bool)

(assert (=> b!162619 (= b_free!3761 (not b_next!3761))))

(declare-fun tp!13852 () Bool)

(declare-fun b_and!10193 () Bool)

(assert (=> b!162619 (= tp!13852 b_and!10193)))

(declare-fun b!162614 () Bool)

(declare-fun e!106637 () Bool)

(declare-fun e!106640 () Bool)

(declare-fun mapRes!6032 () Bool)

(assert (=> b!162614 (= e!106637 (and e!106640 mapRes!6032))))

(declare-fun condMapEmpty!6032 () Bool)

(declare-datatypes ((V!4397 0))(
  ( (V!4398 (val!1826 Int)) )
))
(declare-datatypes ((ValueCell!1438 0))(
  ( (ValueCellFull!1438 (v!3687 V!4397)) (EmptyCell!1438) )
))
(declare-datatypes ((array!6204 0))(
  ( (array!6205 (arr!2946 (Array (_ BitVec 32) (_ BitVec 64))) (size!3230 (_ BitVec 32))) )
))
(declare-datatypes ((array!6206 0))(
  ( (array!6207 (arr!2947 (Array (_ BitVec 32) ValueCell!1438)) (size!3231 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1784 0))(
  ( (LongMapFixedSize!1785 (defaultEntry!3334 Int) (mask!7962 (_ BitVec 32)) (extraKeys!3075 (_ BitVec 32)) (zeroValue!3177 V!4397) (minValue!3177 V!4397) (_size!941 (_ BitVec 32)) (_keys!5135 array!6204) (_values!3317 array!6206) (_vacant!941 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1784)

(declare-fun mapDefault!6032 () ValueCell!1438)


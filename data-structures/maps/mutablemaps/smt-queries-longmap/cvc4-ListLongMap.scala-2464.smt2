; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38614 () Bool)

(assert start!38614)

(declare-fun b_free!9143 () Bool)

(declare-fun b_next!9143 () Bool)

(assert (=> start!38614 (= b_free!9143 (not b_next!9143))))

(declare-fun tp!32553 () Bool)

(declare-fun b_and!16547 () Bool)

(assert (=> start!38614 (= tp!32553 b_and!16547)))

(declare-fun mapNonEmpty!16659 () Bool)

(declare-fun mapRes!16659 () Bool)

(declare-fun tp!32552 () Bool)

(declare-fun e!241401 () Bool)

(assert (=> mapNonEmpty!16659 (= mapRes!16659 (and tp!32552 e!241401))))

(declare-datatypes ((V!14471 0))(
  ( (V!14472 (val!5057 Int)) )
))
(declare-datatypes ((ValueCell!4669 0))(
  ( (ValueCellFull!4669 (v!7300 V!14471)) (EmptyCell!4669) )
))
(declare-fun mapRest!16659 () (Array (_ BitVec 32) ValueCell!4669))

(declare-fun mapValue!16659 () ValueCell!4669)

(declare-datatypes ((array!23929 0))(
  ( (array!23930 (arr!11411 (Array (_ BitVec 32) ValueCell!4669)) (size!11763 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23929)

(declare-fun mapKey!16659 () (_ BitVec 32))

(assert (=> mapNonEmpty!16659 (= (arr!11411 _values!549) (store mapRest!16659 mapKey!16659 mapValue!16659))))

(declare-fun b!399910 () Bool)

(declare-fun e!241396 () Bool)

(declare-fun e!241400 () Bool)

(assert (=> b!399910 (= e!241396 (and e!241400 mapRes!16659))))

(declare-fun condMapEmpty!16659 () Bool)

(declare-fun mapDefault!16659 () ValueCell!4669)


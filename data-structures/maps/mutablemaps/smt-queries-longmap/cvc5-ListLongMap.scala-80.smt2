; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1114 () Bool)

(assert start!1114)

(declare-fun b_free!385 () Bool)

(declare-fun b_next!385 () Bool)

(assert (=> start!1114 (= b_free!385 (not b_next!385))))

(declare-fun tp!1400 () Bool)

(declare-fun b_and!541 () Bool)

(assert (=> start!1114 (= tp!1400 b_and!541)))

(declare-fun b!9816 () Bool)

(declare-fun e!5626 () Bool)

(declare-fun tp_is_empty!463 () Bool)

(assert (=> b!9816 (= e!5626 tp_is_empty!463)))

(declare-fun b!9817 () Bool)

(declare-fun e!5632 () Bool)

(declare-fun e!5630 () Bool)

(declare-fun mapRes!680 () Bool)

(assert (=> b!9817 (= e!5632 (and e!5630 mapRes!680))))

(declare-fun condMapEmpty!680 () Bool)

(declare-datatypes ((V!795 0))(
  ( (V!796 (val!237 Int)) )
))
(declare-datatypes ((ValueCell!215 0))(
  ( (ValueCellFull!215 (v!1333 V!795)) (EmptyCell!215) )
))
(declare-datatypes ((array!853 0))(
  ( (array!854 (arr!410 (Array (_ BitVec 32) ValueCell!215)) (size!472 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!853)

(declare-fun mapDefault!680 () ValueCell!215)


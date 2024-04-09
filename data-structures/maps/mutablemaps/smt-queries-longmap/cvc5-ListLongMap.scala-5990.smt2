; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77820 () Bool)

(assert start!77820)

(declare-fun b_free!16351 () Bool)

(declare-fun b_next!16351 () Bool)

(assert (=> start!77820 (= b_free!16351 (not b_next!16351))))

(declare-fun tp!57319 () Bool)

(declare-fun b_and!26877 () Bool)

(assert (=> start!77820 (= tp!57319 b_and!26877)))

(declare-fun b!907708 () Bool)

(declare-fun e!508761 () Bool)

(declare-fun e!508762 () Bool)

(declare-fun mapRes!29869 () Bool)

(assert (=> b!907708 (= e!508761 (and e!508762 mapRes!29869))))

(declare-fun condMapEmpty!29869 () Bool)

(declare-datatypes ((V!29991 0))(
  ( (V!29992 (val!9435 Int)) )
))
(declare-datatypes ((ValueCell!8903 0))(
  ( (ValueCellFull!8903 (v!11942 V!29991)) (EmptyCell!8903) )
))
(declare-datatypes ((array!53566 0))(
  ( (array!53567 (arr!25737 (Array (_ BitVec 32) ValueCell!8903)) (size!26197 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53566)

(declare-fun mapDefault!29869 () ValueCell!8903)


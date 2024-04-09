; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95842 () Bool)

(assert start!95842)

(declare-fun b_free!22459 () Bool)

(declare-fun b_next!22459 () Bool)

(assert (=> start!95842 (= b_free!22459 (not b_next!22459))))

(declare-fun tp!79226 () Bool)

(declare-fun b_and!35611 () Bool)

(assert (=> start!95842 (= tp!79226 b_and!35611)))

(declare-fun res!722659 () Bool)

(declare-fun e!619325 () Bool)

(assert (=> start!95842 (=> (not res!722659) (not e!619325))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95842 (= res!722659 (validMask!0 mask!1414))))

(assert (=> start!95842 e!619325))

(assert (=> start!95842 tp!79226))

(assert (=> start!95842 true))

(declare-fun tp_is_empty!26461 () Bool)

(assert (=> start!95842 tp_is_empty!26461))

(declare-datatypes ((array!69824 0))(
  ( (array!69825 (arr!33582 (Array (_ BitVec 32) (_ BitVec 64))) (size!34119 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69824)

(declare-fun array_inv!25770 (array!69824) Bool)

(assert (=> start!95842 (array_inv!25770 _keys!1070)))

(declare-datatypes ((V!40409 0))(
  ( (V!40410 (val!13287 Int)) )
))
(declare-datatypes ((ValueCell!12521 0))(
  ( (ValueCellFull!12521 (v!15909 V!40409)) (EmptyCell!12521) )
))
(declare-datatypes ((array!69826 0))(
  ( (array!69827 (arr!33583 (Array (_ BitVec 32) ValueCell!12521)) (size!34120 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69826)

(declare-fun e!619323 () Bool)

(declare-fun array_inv!25771 (array!69826) Bool)

(assert (=> start!95842 (and (array_inv!25771 _values!874) e!619323)))

(declare-fun mapIsEmpty!41446 () Bool)

(declare-fun mapRes!41446 () Bool)

(assert (=> mapIsEmpty!41446 mapRes!41446))

(declare-fun b!1083883 () Bool)

(declare-fun res!722657 () Bool)

(assert (=> b!1083883 (=> (not res!722657) (not e!619325))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083883 (= res!722657 (validKeyInArray!0 k!904))))

(declare-fun b!1083884 () Bool)

(declare-fun e!619322 () Bool)

(assert (=> b!1083884 (= e!619323 (and e!619322 mapRes!41446))))

(declare-fun condMapEmpty!41446 () Bool)

(declare-fun mapDefault!41446 () ValueCell!12521)


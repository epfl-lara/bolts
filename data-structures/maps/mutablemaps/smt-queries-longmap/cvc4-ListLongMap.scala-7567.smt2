; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95762 () Bool)

(assert start!95762)

(declare-fun b_free!22379 () Bool)

(declare-fun b_next!22379 () Bool)

(assert (=> start!95762 (= b_free!22379 (not b_next!22379))))

(declare-fun tp!78986 () Bool)

(declare-fun b_and!35451 () Bool)

(assert (=> start!95762 (= tp!78986 b_and!35451)))

(declare-fun b!1082363 () Bool)

(declare-fun res!721575 () Bool)

(declare-fun e!618605 () Bool)

(assert (=> b!1082363 (=> (not res!721575) (not e!618605))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082363 (= res!721575 (validKeyInArray!0 k!904))))

(declare-fun b!1082364 () Bool)

(declare-fun res!721580 () Bool)

(assert (=> b!1082364 (=> (not res!721580) (not e!618605))))

(declare-datatypes ((array!69666 0))(
  ( (array!69667 (arr!33503 (Array (_ BitVec 32) (_ BitVec 64))) (size!34040 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69666)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69666 (_ BitVec 32)) Bool)

(assert (=> b!1082364 (= res!721580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082365 () Bool)

(declare-fun e!618603 () Bool)

(declare-fun tp_is_empty!26381 () Bool)

(assert (=> b!1082365 (= e!618603 tp_is_empty!26381)))

(declare-fun b!1082366 () Bool)

(declare-fun e!618602 () Bool)

(declare-fun mapRes!41326 () Bool)

(assert (=> b!1082366 (= e!618602 (and e!618603 mapRes!41326))))

(declare-fun condMapEmpty!41326 () Bool)

(declare-datatypes ((V!40301 0))(
  ( (V!40302 (val!13247 Int)) )
))
(declare-datatypes ((ValueCell!12481 0))(
  ( (ValueCellFull!12481 (v!15869 V!40301)) (EmptyCell!12481) )
))
(declare-datatypes ((array!69668 0))(
  ( (array!69669 (arr!33504 (Array (_ BitVec 32) ValueCell!12481)) (size!34041 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69668)

(declare-fun mapDefault!41326 () ValueCell!12481)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95750 () Bool)

(assert start!95750)

(declare-fun b_free!22367 () Bool)

(declare-fun b_next!22367 () Bool)

(assert (=> start!95750 (= b_free!22367 (not b_next!22367))))

(declare-fun tp!78951 () Bool)

(declare-fun b_and!35427 () Bool)

(assert (=> start!95750 (= tp!78951 b_and!35427)))

(declare-fun b!1082135 () Bool)

(declare-fun res!721418 () Bool)

(declare-fun e!618497 () Bool)

(assert (=> b!1082135 (=> (not res!721418) (not e!618497))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69642 0))(
  ( (array!69643 (arr!33491 (Array (_ BitVec 32) (_ BitVec 64))) (size!34028 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69642)

(assert (=> b!1082135 (= res!721418 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34028 _keys!1070))))))

(declare-fun b!1082136 () Bool)

(declare-fun res!721411 () Bool)

(assert (=> b!1082136 (=> (not res!721411) (not e!618497))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40285 0))(
  ( (V!40286 (val!13241 Int)) )
))
(declare-datatypes ((ValueCell!12475 0))(
  ( (ValueCellFull!12475 (v!15863 V!40285)) (EmptyCell!12475) )
))
(declare-datatypes ((array!69644 0))(
  ( (array!69645 (arr!33492 (Array (_ BitVec 32) ValueCell!12475)) (size!34029 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69644)

(assert (=> b!1082136 (= res!721411 (and (= (size!34029 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34028 _keys!1070) (size!34029 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082137 () Bool)

(declare-fun e!618498 () Bool)

(declare-fun e!618499 () Bool)

(declare-fun mapRes!41308 () Bool)

(assert (=> b!1082137 (= e!618498 (and e!618499 mapRes!41308))))

(declare-fun condMapEmpty!41308 () Bool)

(declare-fun mapDefault!41308 () ValueCell!12475)


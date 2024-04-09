; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95538 () Bool)

(assert start!95538)

(declare-fun b!1078500 () Bool)

(declare-fun e!616690 () Bool)

(declare-fun e!616694 () Bool)

(assert (=> b!1078500 (= e!616690 e!616694)))

(declare-fun res!718749 () Bool)

(assert (=> b!1078500 (=> (not res!718749) (not e!616694))))

(declare-datatypes ((array!69260 0))(
  ( (array!69261 (arr!33301 (Array (_ BitVec 32) (_ BitVec 64))) (size!33838 (_ BitVec 32))) )
))
(declare-fun lt!478633 () array!69260)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69260 (_ BitVec 32)) Bool)

(assert (=> b!1078500 (= res!718749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478633 mask!1414))))

(declare-fun _keys!1070 () array!69260)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078500 (= lt!478633 (array!69261 (store (arr!33301 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33838 _keys!1070)))))

(declare-fun b!1078501 () Bool)

(declare-fun res!718745 () Bool)

(assert (=> b!1078501 (=> (not res!718745) (not e!616690))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40025 0))(
  ( (V!40026 (val!13143 Int)) )
))
(declare-datatypes ((ValueCell!12377 0))(
  ( (ValueCellFull!12377 (v!15765 V!40025)) (EmptyCell!12377) )
))
(declare-datatypes ((array!69262 0))(
  ( (array!69263 (arr!33302 (Array (_ BitVec 32) ValueCell!12377)) (size!33839 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69262)

(assert (=> b!1078501 (= res!718745 (and (= (size!33839 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33838 _keys!1070) (size!33839 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078502 () Bool)

(declare-fun res!718752 () Bool)

(assert (=> b!1078502 (=> (not res!718752) (not e!616690))))

(declare-datatypes ((List!23356 0))(
  ( (Nil!23353) (Cons!23352 (h!24561 (_ BitVec 64)) (t!32722 List!23356)) )
))
(declare-fun arrayNoDuplicates!0 (array!69260 (_ BitVec 32) List!23356) Bool)

(assert (=> b!1078502 (= res!718752 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23353))))

(declare-fun mapNonEmpty!41011 () Bool)

(declare-fun mapRes!41011 () Bool)

(declare-fun tp!78474 () Bool)

(declare-fun e!616692 () Bool)

(assert (=> mapNonEmpty!41011 (= mapRes!41011 (and tp!78474 e!616692))))

(declare-fun mapKey!41011 () (_ BitVec 32))

(declare-fun mapValue!41011 () ValueCell!12377)

(declare-fun mapRest!41011 () (Array (_ BitVec 32) ValueCell!12377))

(assert (=> mapNonEmpty!41011 (= (arr!33302 _values!874) (store mapRest!41011 mapKey!41011 mapValue!41011))))

(declare-fun res!718748 () Bool)

(assert (=> start!95538 (=> (not res!718748) (not e!616690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95538 (= res!718748 (validMask!0 mask!1414))))

(assert (=> start!95538 e!616690))

(assert (=> start!95538 true))

(declare-fun array_inv!25590 (array!69260) Bool)

(assert (=> start!95538 (array_inv!25590 _keys!1070)))

(declare-fun e!616695 () Bool)

(declare-fun array_inv!25591 (array!69262) Bool)

(assert (=> start!95538 (and (array_inv!25591 _values!874) e!616695)))

(declare-fun b!1078503 () Bool)

(declare-fun res!718747 () Bool)

(assert (=> b!1078503 (=> (not res!718747) (not e!616690))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1078503 (= res!718747 (= (select (arr!33301 _keys!1070) i!650) k!904))))

(declare-fun b!1078504 () Bool)

(declare-fun res!718751 () Bool)

(assert (=> b!1078504 (=> (not res!718751) (not e!616690))))

(assert (=> b!1078504 (= res!718751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078505 () Bool)

(declare-fun res!718746 () Bool)

(assert (=> b!1078505 (=> (not res!718746) (not e!616690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078505 (= res!718746 (validKeyInArray!0 k!904))))

(declare-fun b!1078506 () Bool)

(declare-fun tp_is_empty!26173 () Bool)

(assert (=> b!1078506 (= e!616692 tp_is_empty!26173)))

(declare-fun b!1078507 () Bool)

(declare-fun e!616693 () Bool)

(assert (=> b!1078507 (= e!616695 (and e!616693 mapRes!41011))))

(declare-fun condMapEmpty!41011 () Bool)

(declare-fun mapDefault!41011 () ValueCell!12377)


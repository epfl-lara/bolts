; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95698 () Bool)

(assert start!95698)

(declare-fun b_free!22315 () Bool)

(declare-fun b_next!22315 () Bool)

(assert (=> start!95698 (= b_free!22315 (not b_next!22315))))

(declare-fun tp!78794 () Bool)

(declare-fun b_and!35323 () Bool)

(assert (=> start!95698 (= tp!78794 b_and!35323)))

(declare-fun b!1081147 () Bool)

(declare-fun res!720713 () Bool)

(declare-fun e!618026 () Bool)

(assert (=> b!1081147 (=> (not res!720713) (not e!618026))))

(declare-datatypes ((array!69538 0))(
  ( (array!69539 (arr!33439 (Array (_ BitVec 32) (_ BitVec 64))) (size!33976 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69538)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69538 (_ BitVec 32)) Bool)

(assert (=> b!1081147 (= res!720713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41230 () Bool)

(declare-fun mapRes!41230 () Bool)

(declare-fun tp!78795 () Bool)

(declare-fun e!618030 () Bool)

(assert (=> mapNonEmpty!41230 (= mapRes!41230 (and tp!78795 e!618030))))

(declare-datatypes ((V!40217 0))(
  ( (V!40218 (val!13215 Int)) )
))
(declare-datatypes ((ValueCell!12449 0))(
  ( (ValueCellFull!12449 (v!15837 V!40217)) (EmptyCell!12449) )
))
(declare-datatypes ((array!69540 0))(
  ( (array!69541 (arr!33440 (Array (_ BitVec 32) ValueCell!12449)) (size!33977 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69540)

(declare-fun mapKey!41230 () (_ BitVec 32))

(declare-fun mapValue!41230 () ValueCell!12449)

(declare-fun mapRest!41230 () (Array (_ BitVec 32) ValueCell!12449))

(assert (=> mapNonEmpty!41230 (= (arr!33440 _values!874) (store mapRest!41230 mapKey!41230 mapValue!41230))))

(declare-fun b!1081148 () Bool)

(declare-fun res!720712 () Bool)

(assert (=> b!1081148 (=> (not res!720712) (not e!618026))))

(declare-datatypes ((List!23436 0))(
  ( (Nil!23433) (Cons!23432 (h!24641 (_ BitVec 64)) (t!32816 List!23436)) )
))
(declare-fun arrayNoDuplicates!0 (array!69538 (_ BitVec 32) List!23436) Bool)

(assert (=> b!1081148 (= res!720712 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23433))))

(declare-fun b!1081149 () Bool)

(declare-fun res!720716 () Bool)

(assert (=> b!1081149 (=> (not res!720716) (not e!618026))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1081149 (= res!720716 (and (= (size!33977 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33976 _keys!1070) (size!33977 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081150 () Bool)

(declare-fun res!720714 () Bool)

(assert (=> b!1081150 (=> (not res!720714) (not e!618026))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081150 (= res!720714 (= (select (arr!33439 _keys!1070) i!650) k!904))))

(declare-fun b!1081152 () Bool)

(declare-fun e!618027 () Bool)

(assert (=> b!1081152 (= e!618027 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16810 0))(
  ( (tuple2!16811 (_1!8415 (_ BitVec 64)) (_2!8415 V!40217)) )
))
(declare-datatypes ((List!23437 0))(
  ( (Nil!23434) (Cons!23433 (h!24642 tuple2!16810) (t!32817 List!23437)) )
))
(declare-datatypes ((ListLongMap!14791 0))(
  ( (ListLongMap!14792 (toList!7411 List!23437)) )
))
(declare-fun lt!479203 () ListLongMap!14791)

(declare-fun minValue!831 () V!40217)

(declare-fun lt!479204 () array!69538)

(declare-fun zeroValue!831 () V!40217)

(declare-fun getCurrentListMapNoExtraKeys!3922 (array!69538 array!69540 (_ BitVec 32) (_ BitVec 32) V!40217 V!40217 (_ BitVec 32) Int) ListLongMap!14791)

(declare-fun dynLambda!2058 (Int (_ BitVec 64)) V!40217)

(assert (=> b!1081152 (= lt!479203 (getCurrentListMapNoExtraKeys!3922 lt!479204 (array!69541 (store (arr!33440 _values!874) i!650 (ValueCellFull!12449 (dynLambda!2058 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33977 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479202 () ListLongMap!14791)

(assert (=> b!1081152 (= lt!479202 (getCurrentListMapNoExtraKeys!3922 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081152 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35501 0))(
  ( (Unit!35502) )
))
(declare-fun lt!479201 () Unit!35501)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69538 (_ BitVec 64) (_ BitVec 32)) Unit!35501)

(assert (=> b!1081152 (= lt!479201 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1081153 () Bool)

(declare-fun res!720710 () Bool)

(assert (=> b!1081153 (=> (not res!720710) (not e!618027))))

(assert (=> b!1081153 (= res!720710 (arrayNoDuplicates!0 lt!479204 #b00000000000000000000000000000000 Nil!23433))))

(declare-fun mapIsEmpty!41230 () Bool)

(assert (=> mapIsEmpty!41230 mapRes!41230))

(declare-fun b!1081154 () Bool)

(declare-fun e!618028 () Bool)

(declare-fun tp_is_empty!26317 () Bool)

(assert (=> b!1081154 (= e!618028 tp_is_empty!26317)))

(declare-fun b!1081155 () Bool)

(declare-fun res!720711 () Bool)

(assert (=> b!1081155 (=> (not res!720711) (not e!618026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081155 (= res!720711 (validKeyInArray!0 k!904))))

(declare-fun b!1081156 () Bool)

(assert (=> b!1081156 (= e!618026 e!618027)))

(declare-fun res!720709 () Bool)

(assert (=> b!1081156 (=> (not res!720709) (not e!618027))))

(assert (=> b!1081156 (= res!720709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479204 mask!1414))))

(assert (=> b!1081156 (= lt!479204 (array!69539 (store (arr!33439 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33976 _keys!1070)))))

(declare-fun b!1081157 () Bool)

(assert (=> b!1081157 (= e!618030 tp_is_empty!26317)))

(declare-fun b!1081158 () Bool)

(declare-fun e!618031 () Bool)

(assert (=> b!1081158 (= e!618031 (and e!618028 mapRes!41230))))

(declare-fun condMapEmpty!41230 () Bool)

(declare-fun mapDefault!41230 () ValueCell!12449)


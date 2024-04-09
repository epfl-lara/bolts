; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96214 () Bool)

(assert start!96214)

(declare-fun b_free!22831 () Bool)

(declare-fun b_next!22831 () Bool)

(assert (=> start!96214 (= b_free!22831 (not b_next!22831))))

(declare-fun tp!80342 () Bool)

(declare-fun b_and!36355 () Bool)

(assert (=> start!96214 (= tp!80342 b_and!36355)))

(declare-fun b!1091981 () Bool)

(declare-fun res!728706 () Bool)

(declare-fun e!623675 () Bool)

(assert (=> b!1091981 (=> (not res!728706) (not e!623675))))

(declare-datatypes ((array!70550 0))(
  ( (array!70551 (arr!33945 (Array (_ BitVec 32) (_ BitVec 64))) (size!34482 (_ BitVec 32))) )
))
(declare-fun lt!487934 () array!70550)

(declare-datatypes ((List!23852 0))(
  ( (Nil!23849) (Cons!23848 (h!25057 (_ BitVec 64)) (t!33748 List!23852)) )
))
(declare-fun arrayNoDuplicates!0 (array!70550 (_ BitVec 32) List!23852) Bool)

(assert (=> b!1091981 (= res!728706 (arrayNoDuplicates!0 lt!487934 #b00000000000000000000000000000000 Nil!23849))))

(declare-fun b!1091982 () Bool)

(declare-fun res!728713 () Bool)

(declare-fun e!623679 () Bool)

(assert (=> b!1091982 (=> (not res!728713) (not e!623679))))

(declare-fun _keys!1070 () array!70550)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1091982 (= res!728713 (= (select (arr!33945 _keys!1070) i!650) k!904))))

(declare-fun b!1091983 () Bool)

(declare-fun res!728714 () Bool)

(assert (=> b!1091983 (=> (not res!728714) (not e!623679))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((V!40905 0))(
  ( (V!40906 (val!13473 Int)) )
))
(declare-datatypes ((ValueCell!12707 0))(
  ( (ValueCellFull!12707 (v!16095 V!40905)) (EmptyCell!12707) )
))
(declare-datatypes ((array!70552 0))(
  ( (array!70553 (arr!33946 (Array (_ BitVec 32) ValueCell!12707)) (size!34483 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70552)

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091983 (= res!728714 (and (= (size!34483 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34482 _keys!1070) (size!34483 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091984 () Bool)

(declare-fun e!623673 () Bool)

(assert (=> b!1091984 (= e!623675 (not e!623673))))

(declare-fun res!728710 () Bool)

(assert (=> b!1091984 (=> res!728710 e!623673)))

(assert (=> b!1091984 (= res!728710 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40905)

(declare-datatypes ((tuple2!17214 0))(
  ( (tuple2!17215 (_1!8617 (_ BitVec 64)) (_2!8617 V!40905)) )
))
(declare-datatypes ((List!23853 0))(
  ( (Nil!23850) (Cons!23849 (h!25058 tuple2!17214) (t!33749 List!23853)) )
))
(declare-datatypes ((ListLongMap!15195 0))(
  ( (ListLongMap!15196 (toList!7613 List!23853)) )
))
(declare-fun lt!487932 () ListLongMap!15195)

(declare-fun zeroValue!831 () V!40905)

(declare-fun getCurrentListMap!4348 (array!70550 array!70552 (_ BitVec 32) (_ BitVec 32) V!40905 V!40905 (_ BitVec 32) Int) ListLongMap!15195)

(assert (=> b!1091984 (= lt!487932 (getCurrentListMap!4348 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487928 () ListLongMap!15195)

(declare-fun lt!487925 () array!70552)

(assert (=> b!1091984 (= lt!487928 (getCurrentListMap!4348 lt!487934 lt!487925 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487930 () ListLongMap!15195)

(declare-fun lt!487931 () ListLongMap!15195)

(assert (=> b!1091984 (and (= lt!487930 lt!487931) (= lt!487931 lt!487930))))

(declare-fun lt!487923 () ListLongMap!15195)

(declare-fun -!889 (ListLongMap!15195 (_ BitVec 64)) ListLongMap!15195)

(assert (=> b!1091984 (= lt!487931 (-!889 lt!487923 k!904))))

(declare-datatypes ((Unit!35893 0))(
  ( (Unit!35894) )
))
(declare-fun lt!487929 () Unit!35893)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!154 (array!70550 array!70552 (_ BitVec 32) (_ BitVec 32) V!40905 V!40905 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35893)

(assert (=> b!1091984 (= lt!487929 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!154 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4100 (array!70550 array!70552 (_ BitVec 32) (_ BitVec 32) V!40905 V!40905 (_ BitVec 32) Int) ListLongMap!15195)

(assert (=> b!1091984 (= lt!487930 (getCurrentListMapNoExtraKeys!4100 lt!487934 lt!487925 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2236 (Int (_ BitVec 64)) V!40905)

(assert (=> b!1091984 (= lt!487925 (array!70553 (store (arr!33946 _values!874) i!650 (ValueCellFull!12707 (dynLambda!2236 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34483 _values!874)))))

(assert (=> b!1091984 (= lt!487923 (getCurrentListMapNoExtraKeys!4100 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091984 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!487927 () Unit!35893)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70550 (_ BitVec 64) (_ BitVec 32)) Unit!35893)

(assert (=> b!1091984 (= lt!487927 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1091985 () Bool)

(declare-fun e!623680 () Bool)

(declare-fun tp_is_empty!26833 () Bool)

(assert (=> b!1091985 (= e!623680 tp_is_empty!26833)))

(declare-fun b!1091986 () Bool)

(declare-fun e!623674 () Bool)

(declare-fun e!623676 () Bool)

(declare-fun mapRes!42004 () Bool)

(assert (=> b!1091986 (= e!623674 (and e!623676 mapRes!42004))))

(declare-fun condMapEmpty!42004 () Bool)

(declare-fun mapDefault!42004 () ValueCell!12707)


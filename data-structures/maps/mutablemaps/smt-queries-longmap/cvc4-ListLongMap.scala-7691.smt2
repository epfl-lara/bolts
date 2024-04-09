; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96558 () Bool)

(assert start!96558)

(declare-fun b_free!23075 () Bool)

(declare-fun b_next!23075 () Bool)

(assert (=> start!96558 (= b_free!23075 (not b_next!23075))))

(declare-fun tp!81156 () Bool)

(declare-fun b_and!36845 () Bool)

(assert (=> start!96558 (= tp!81156 b_and!36845)))

(declare-fun b!1097676 () Bool)

(declare-fun res!732704 () Bool)

(declare-fun e!626532 () Bool)

(assert (=> b!1097676 (=> (not res!732704) (not e!626532))))

(declare-datatypes ((array!71112 0))(
  ( (array!71113 (arr!34223 (Array (_ BitVec 32) (_ BitVec 64))) (size!34760 (_ BitVec 32))) )
))
(declare-fun lt!490771 () array!71112)

(declare-datatypes ((List!24038 0))(
  ( (Nil!24035) (Cons!24034 (h!25243 (_ BitVec 64)) (t!34166 List!24038)) )
))
(declare-fun arrayNoDuplicates!0 (array!71112 (_ BitVec 32) List!24038) Bool)

(assert (=> b!1097676 (= res!732704 (arrayNoDuplicates!0 lt!490771 #b00000000000000000000000000000000 Nil!24035))))

(declare-fun res!732697 () Bool)

(declare-fun e!626527 () Bool)

(assert (=> start!96558 (=> (not res!732697) (not e!626527))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96558 (= res!732697 (validMask!0 mask!1414))))

(assert (=> start!96558 e!626527))

(assert (=> start!96558 tp!81156))

(assert (=> start!96558 true))

(declare-fun tp_is_empty!27125 () Bool)

(assert (=> start!96558 tp_is_empty!27125))

(declare-fun _keys!1070 () array!71112)

(declare-fun array_inv!26222 (array!71112) Bool)

(assert (=> start!96558 (array_inv!26222 _keys!1070)))

(declare-datatypes ((V!41293 0))(
  ( (V!41294 (val!13619 Int)) )
))
(declare-datatypes ((ValueCell!12853 0))(
  ( (ValueCellFull!12853 (v!16242 V!41293)) (EmptyCell!12853) )
))
(declare-datatypes ((array!71114 0))(
  ( (array!71115 (arr!34224 (Array (_ BitVec 32) ValueCell!12853)) (size!34761 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71114)

(declare-fun e!626531 () Bool)

(declare-fun array_inv!26223 (array!71114) Bool)

(assert (=> start!96558 (and (array_inv!26223 _values!874) e!626531)))

(declare-fun b!1097677 () Bool)

(declare-fun res!732702 () Bool)

(assert (=> b!1097677 (=> (not res!732702) (not e!626527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71112 (_ BitVec 32)) Bool)

(assert (=> b!1097677 (= res!732702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1097678 () Bool)

(declare-fun res!732695 () Bool)

(assert (=> b!1097678 (=> (not res!732695) (not e!626527))))

(assert (=> b!1097678 (= res!732695 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24035))))

(declare-fun b!1097679 () Bool)

(declare-fun e!626528 () Bool)

(assert (=> b!1097679 (= e!626532 (not e!626528))))

(declare-fun res!732701 () Bool)

(assert (=> b!1097679 (=> res!732701 e!626528)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1097679 (= res!732701 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41293)

(declare-fun zeroValue!831 () V!41293)

(declare-datatypes ((tuple2!17360 0))(
  ( (tuple2!17361 (_1!8690 (_ BitVec 64)) (_2!8690 V!41293)) )
))
(declare-datatypes ((List!24039 0))(
  ( (Nil!24036) (Cons!24035 (h!25244 tuple2!17360) (t!34167 List!24039)) )
))
(declare-datatypes ((ListLongMap!15341 0))(
  ( (ListLongMap!15342 (toList!7686 List!24039)) )
))
(declare-fun lt!490779 () ListLongMap!15341)

(declare-fun getCurrentListMap!4385 (array!71112 array!71114 (_ BitVec 32) (_ BitVec 32) V!41293 V!41293 (_ BitVec 32) Int) ListLongMap!15341)

(assert (=> b!1097679 (= lt!490779 (getCurrentListMap!4385 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490777 () ListLongMap!15341)

(declare-fun lt!490781 () array!71114)

(assert (=> b!1097679 (= lt!490777 (getCurrentListMap!4385 lt!490771 lt!490781 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490775 () ListLongMap!15341)

(declare-fun lt!490772 () ListLongMap!15341)

(assert (=> b!1097679 (and (= lt!490775 lt!490772) (= lt!490772 lt!490775))))

(declare-fun lt!490780 () ListLongMap!15341)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!932 (ListLongMap!15341 (_ BitVec 64)) ListLongMap!15341)

(assert (=> b!1097679 (= lt!490772 (-!932 lt!490780 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36045 0))(
  ( (Unit!36046) )
))
(declare-fun lt!490778 () Unit!36045)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!197 (array!71112 array!71114 (_ BitVec 32) (_ BitVec 32) V!41293 V!41293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36045)

(assert (=> b!1097679 (= lt!490778 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4172 (array!71112 array!71114 (_ BitVec 32) (_ BitVec 32) V!41293 V!41293 (_ BitVec 32) Int) ListLongMap!15341)

(assert (=> b!1097679 (= lt!490775 (getCurrentListMapNoExtraKeys!4172 lt!490771 lt!490781 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2303 (Int (_ BitVec 64)) V!41293)

(assert (=> b!1097679 (= lt!490781 (array!71115 (store (arr!34224 _values!874) i!650 (ValueCellFull!12853 (dynLambda!2303 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34761 _values!874)))))

(assert (=> b!1097679 (= lt!490780 (getCurrentListMapNoExtraKeys!4172 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1097679 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!490776 () Unit!36045)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71112 (_ BitVec 64) (_ BitVec 32)) Unit!36045)

(assert (=> b!1097679 (= lt!490776 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1097680 () Bool)

(declare-fun e!626533 () Bool)

(assert (=> b!1097680 (= e!626533 tp_is_empty!27125)))

(declare-fun b!1097681 () Bool)

(declare-fun e!626530 () Bool)

(assert (=> b!1097681 (= e!626530 tp_is_empty!27125)))

(declare-fun b!1097682 () Bool)

(declare-fun res!732698 () Bool)

(assert (=> b!1097682 (=> (not res!732698) (not e!626527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097682 (= res!732698 (validKeyInArray!0 k!904))))

(declare-fun b!1097683 () Bool)

(declare-fun res!732696 () Bool)

(assert (=> b!1097683 (=> (not res!732696) (not e!626527))))

(assert (=> b!1097683 (= res!732696 (and (= (size!34761 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34760 _keys!1070) (size!34761 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!42451 () Bool)

(declare-fun mapRes!42451 () Bool)

(assert (=> mapIsEmpty!42451 mapRes!42451))

(declare-fun b!1097684 () Bool)

(assert (=> b!1097684 (= e!626527 e!626532)))

(declare-fun res!732700 () Bool)

(assert (=> b!1097684 (=> (not res!732700) (not e!626532))))

(assert (=> b!1097684 (= res!732700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490771 mask!1414))))

(assert (=> b!1097684 (= lt!490771 (array!71113 (store (arr!34223 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34760 _keys!1070)))))

(declare-fun lt!490773 () tuple2!17360)

(declare-fun lt!490774 () tuple2!17360)

(declare-fun b!1097685 () Bool)

(declare-fun +!3321 (ListLongMap!15341 tuple2!17360) ListLongMap!15341)

(assert (=> b!1097685 (= e!626528 (= lt!490779 (+!3321 (+!3321 lt!490780 lt!490774) lt!490773)))))

(assert (=> b!1097685 (= lt!490777 (+!3321 (+!3321 lt!490775 lt!490774) lt!490773))))

(assert (=> b!1097685 (= lt!490773 (tuple2!17361 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1097685 (= lt!490774 (tuple2!17361 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1097686 () Bool)

(declare-fun res!732699 () Bool)

(assert (=> b!1097686 (=> (not res!732699) (not e!626527))))

(assert (=> b!1097686 (= res!732699 (= (select (arr!34223 _keys!1070) i!650) k!904))))

(declare-fun b!1097687 () Bool)

(declare-fun res!732703 () Bool)

(assert (=> b!1097687 (=> (not res!732703) (not e!626527))))

(assert (=> b!1097687 (= res!732703 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34760 _keys!1070))))))

(declare-fun mapNonEmpty!42451 () Bool)

(declare-fun tp!81155 () Bool)

(assert (=> mapNonEmpty!42451 (= mapRes!42451 (and tp!81155 e!626533))))

(declare-fun mapRest!42451 () (Array (_ BitVec 32) ValueCell!12853))

(declare-fun mapValue!42451 () ValueCell!12853)

(declare-fun mapKey!42451 () (_ BitVec 32))

(assert (=> mapNonEmpty!42451 (= (arr!34224 _values!874) (store mapRest!42451 mapKey!42451 mapValue!42451))))

(declare-fun b!1097688 () Bool)

(assert (=> b!1097688 (= e!626531 (and e!626530 mapRes!42451))))

(declare-fun condMapEmpty!42451 () Bool)

(declare-fun mapDefault!42451 () ValueCell!12853)


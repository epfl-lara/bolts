; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95882 () Bool)

(assert start!95882)

(declare-fun b_free!22499 () Bool)

(declare-fun b_next!22499 () Bool)

(assert (=> start!95882 (= b_free!22499 (not b_next!22499))))

(declare-fun tp!79346 () Bool)

(declare-fun b_and!35691 () Bool)

(assert (=> start!95882 (= tp!79346 b_and!35691)))

(declare-fun b!1084667 () Bool)

(declare-fun res!723220 () Bool)

(declare-fun e!619704 () Bool)

(assert (=> b!1084667 (=> (not res!723220) (not e!619704))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69904 0))(
  ( (array!69905 (arr!33622 (Array (_ BitVec 32) (_ BitVec 64))) (size!34159 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69904)

(assert (=> b!1084667 (= res!723220 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34159 _keys!1070))))))

(declare-fun b!1084668 () Bool)

(declare-fun res!723227 () Bool)

(assert (=> b!1084668 (=> (not res!723227) (not e!619704))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40461 0))(
  ( (V!40462 (val!13307 Int)) )
))
(declare-datatypes ((ValueCell!12541 0))(
  ( (ValueCellFull!12541 (v!15929 V!40461)) (EmptyCell!12541) )
))
(declare-datatypes ((array!69906 0))(
  ( (array!69907 (arr!33623 (Array (_ BitVec 32) ValueCell!12541)) (size!34160 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69906)

(assert (=> b!1084668 (= res!723227 (and (= (size!34160 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34159 _keys!1070) (size!34160 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084669 () Bool)

(declare-fun res!723222 () Bool)

(declare-fun e!619701 () Bool)

(assert (=> b!1084669 (=> (not res!723222) (not e!619701))))

(declare-fun lt!480856 () array!69904)

(declare-datatypes ((List!23572 0))(
  ( (Nil!23569) (Cons!23568 (h!24777 (_ BitVec 64)) (t!33136 List!23572)) )
))
(declare-fun arrayNoDuplicates!0 (array!69904 (_ BitVec 32) List!23572) Bool)

(assert (=> b!1084669 (= res!723222 (arrayNoDuplicates!0 lt!480856 #b00000000000000000000000000000000 Nil!23569))))

(declare-fun mapNonEmpty!41506 () Bool)

(declare-fun mapRes!41506 () Bool)

(declare-fun tp!79347 () Bool)

(declare-fun e!619703 () Bool)

(assert (=> mapNonEmpty!41506 (= mapRes!41506 (and tp!79347 e!619703))))

(declare-fun mapKey!41506 () (_ BitVec 32))

(declare-fun mapRest!41506 () (Array (_ BitVec 32) ValueCell!12541))

(declare-fun mapValue!41506 () ValueCell!12541)

(assert (=> mapNonEmpty!41506 (= (arr!33623 _values!874) (store mapRest!41506 mapKey!41506 mapValue!41506))))

(declare-fun b!1084670 () Bool)

(declare-fun res!723224 () Bool)

(declare-fun e!619699 () Bool)

(assert (=> b!1084670 (=> (not res!723224) (not e!619699))))

(declare-datatypes ((tuple2!16930 0))(
  ( (tuple2!16931 (_1!8475 (_ BitVec 64)) (_2!8475 V!40461)) )
))
(declare-fun lt!480849 () tuple2!16930)

(declare-datatypes ((List!23573 0))(
  ( (Nil!23570) (Cons!23569 (h!24778 tuple2!16930) (t!33137 List!23573)) )
))
(declare-datatypes ((ListLongMap!14911 0))(
  ( (ListLongMap!14912 (toList!7471 List!23573)) )
))
(declare-fun lt!480855 () ListLongMap!14911)

(declare-fun lt!480847 () ListLongMap!14911)

(declare-fun lt!480853 () tuple2!16930)

(declare-fun +!3204 (ListLongMap!14911 tuple2!16930) ListLongMap!14911)

(assert (=> b!1084670 (= res!723224 (= lt!480855 (+!3204 (+!3204 lt!480847 lt!480849) lt!480853)))))

(declare-fun b!1084671 () Bool)

(declare-fun res!723217 () Bool)

(assert (=> b!1084671 (=> (not res!723217) (not e!619704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69904 (_ BitVec 32)) Bool)

(assert (=> b!1084671 (= res!723217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!723225 () Bool)

(assert (=> start!95882 (=> (not res!723225) (not e!619704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95882 (= res!723225 (validMask!0 mask!1414))))

(assert (=> start!95882 e!619704))

(assert (=> start!95882 tp!79346))

(assert (=> start!95882 true))

(declare-fun tp_is_empty!26501 () Bool)

(assert (=> start!95882 tp_is_empty!26501))

(declare-fun array_inv!25800 (array!69904) Bool)

(assert (=> start!95882 (array_inv!25800 _keys!1070)))

(declare-fun e!619705 () Bool)

(declare-fun array_inv!25801 (array!69906) Bool)

(assert (=> start!95882 (and (array_inv!25801 _values!874) e!619705)))

(declare-fun b!1084672 () Bool)

(declare-fun e!619700 () Bool)

(assert (=> b!1084672 (= e!619701 (not e!619700))))

(declare-fun res!723223 () Bool)

(assert (=> b!1084672 (=> res!723223 e!619700)))

(assert (=> b!1084672 (= res!723223 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40461)

(declare-fun minValue!831 () V!40461)

(declare-fun getCurrentListMap!4229 (array!69904 array!69906 (_ BitVec 32) (_ BitVec 32) V!40461 V!40461 (_ BitVec 32) Int) ListLongMap!14911)

(assert (=> b!1084672 (= lt!480855 (getCurrentListMap!4229 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480854 () array!69906)

(declare-fun lt!480857 () ListLongMap!14911)

(assert (=> b!1084672 (= lt!480857 (getCurrentListMap!4229 lt!480856 lt!480854 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480850 () ListLongMap!14911)

(declare-fun lt!480851 () ListLongMap!14911)

(assert (=> b!1084672 (and (= lt!480850 lt!480851) (= lt!480851 lt!480850))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!752 (ListLongMap!14911 (_ BitVec 64)) ListLongMap!14911)

(assert (=> b!1084672 (= lt!480851 (-!752 lt!480847 k!904))))

(declare-datatypes ((Unit!35619 0))(
  ( (Unit!35620) )
))
(declare-fun lt!480848 () Unit!35619)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!35 (array!69904 array!69906 (_ BitVec 32) (_ BitVec 32) V!40461 V!40461 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35619)

(assert (=> b!1084672 (= lt!480848 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!35 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3981 (array!69904 array!69906 (_ BitVec 32) (_ BitVec 32) V!40461 V!40461 (_ BitVec 32) Int) ListLongMap!14911)

(assert (=> b!1084672 (= lt!480850 (getCurrentListMapNoExtraKeys!3981 lt!480856 lt!480854 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2117 (Int (_ BitVec 64)) V!40461)

(assert (=> b!1084672 (= lt!480854 (array!69907 (store (arr!33623 _values!874) i!650 (ValueCellFull!12541 (dynLambda!2117 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34160 _values!874)))))

(assert (=> b!1084672 (= lt!480847 (getCurrentListMapNoExtraKeys!3981 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084672 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480852 () Unit!35619)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69904 (_ BitVec 64) (_ BitVec 32)) Unit!35619)

(assert (=> b!1084672 (= lt!480852 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1084673 () Bool)

(assert (=> b!1084673 (= e!619704 e!619701)))

(declare-fun res!723226 () Bool)

(assert (=> b!1084673 (=> (not res!723226) (not e!619701))))

(assert (=> b!1084673 (= res!723226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480856 mask!1414))))

(assert (=> b!1084673 (= lt!480856 (array!69905 (store (arr!33622 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34159 _keys!1070)))))

(declare-fun b!1084674 () Bool)

(declare-fun res!723219 () Bool)

(assert (=> b!1084674 (=> (not res!723219) (not e!619704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084674 (= res!723219 (validKeyInArray!0 k!904))))

(declare-fun b!1084675 () Bool)

(declare-fun e!619698 () Bool)

(assert (=> b!1084675 (= e!619705 (and e!619698 mapRes!41506))))

(declare-fun condMapEmpty!41506 () Bool)

(declare-fun mapDefault!41506 () ValueCell!12541)


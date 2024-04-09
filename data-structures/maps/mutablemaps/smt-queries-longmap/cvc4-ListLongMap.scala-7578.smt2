; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95828 () Bool)

(assert start!95828)

(declare-fun b_free!22445 () Bool)

(declare-fun b_next!22445 () Bool)

(assert (=> start!95828 (= b_free!22445 (not b_next!22445))))

(declare-fun tp!79184 () Bool)

(declare-fun b_and!35583 () Bool)

(assert (=> start!95828 (= tp!79184 b_and!35583)))

(declare-fun b!1083617 () Bool)

(declare-fun res!722464 () Bool)

(declare-fun e!619200 () Bool)

(assert (=> b!1083617 (=> (not res!722464) (not e!619200))))

(declare-datatypes ((array!69796 0))(
  ( (array!69797 (arr!33568 (Array (_ BitVec 32) (_ BitVec 64))) (size!34105 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69796)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083617 (= res!722464 (= (select (arr!33568 _keys!1070) i!650) k!904))))

(declare-fun b!1083618 () Bool)

(declare-fun res!722471 () Bool)

(declare-fun e!619197 () Bool)

(assert (=> b!1083618 (=> (not res!722471) (not e!619197))))

(declare-fun lt!480176 () array!69796)

(declare-datatypes ((List!23531 0))(
  ( (Nil!23528) (Cons!23527 (h!24736 (_ BitVec 64)) (t!33041 List!23531)) )
))
(declare-fun arrayNoDuplicates!0 (array!69796 (_ BitVec 32) List!23531) Bool)

(assert (=> b!1083618 (= res!722471 (arrayNoDuplicates!0 lt!480176 #b00000000000000000000000000000000 Nil!23528))))

(declare-fun b!1083619 () Bool)

(declare-fun e!619201 () Bool)

(declare-fun tp_is_empty!26447 () Bool)

(assert (=> b!1083619 (= e!619201 tp_is_empty!26447)))

(declare-fun b!1083620 () Bool)

(declare-fun res!722465 () Bool)

(assert (=> b!1083620 (=> (not res!722465) (not e!619200))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69796 (_ BitVec 32)) Bool)

(assert (=> b!1083620 (= res!722465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083621 () Bool)

(declare-fun res!722469 () Bool)

(assert (=> b!1083621 (=> (not res!722469) (not e!619200))))

(assert (=> b!1083621 (= res!722469 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34105 _keys!1070))))))

(declare-fun res!722466 () Bool)

(assert (=> start!95828 (=> (not res!722466) (not e!619200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95828 (= res!722466 (validMask!0 mask!1414))))

(assert (=> start!95828 e!619200))

(assert (=> start!95828 tp!79184))

(assert (=> start!95828 true))

(assert (=> start!95828 tp_is_empty!26447))

(declare-fun array_inv!25760 (array!69796) Bool)

(assert (=> start!95828 (array_inv!25760 _keys!1070)))

(declare-datatypes ((V!40389 0))(
  ( (V!40390 (val!13280 Int)) )
))
(declare-datatypes ((ValueCell!12514 0))(
  ( (ValueCellFull!12514 (v!15902 V!40389)) (EmptyCell!12514) )
))
(declare-datatypes ((array!69798 0))(
  ( (array!69799 (arr!33569 (Array (_ BitVec 32) ValueCell!12514)) (size!34106 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69798)

(declare-fun e!619198 () Bool)

(declare-fun array_inv!25761 (array!69798) Bool)

(assert (=> start!95828 (and (array_inv!25761 _values!874) e!619198)))

(declare-fun b!1083622 () Bool)

(assert (=> b!1083622 (= e!619197 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40389)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16892 0))(
  ( (tuple2!16893 (_1!8456 (_ BitVec 64)) (_2!8456 V!40389)) )
))
(declare-datatypes ((List!23532 0))(
  ( (Nil!23529) (Cons!23528 (h!24737 tuple2!16892) (t!33042 List!23532)) )
))
(declare-datatypes ((ListLongMap!14873 0))(
  ( (ListLongMap!14874 (toList!7452 List!23532)) )
))
(declare-fun lt!480181 () ListLongMap!14873)

(declare-fun zeroValue!831 () V!40389)

(declare-fun lt!480177 () array!69798)

(declare-fun getCurrentListMap!4211 (array!69796 array!69798 (_ BitVec 32) (_ BitVec 32) V!40389 V!40389 (_ BitVec 32) Int) ListLongMap!14873)

(assert (=> b!1083622 (= lt!480181 (getCurrentListMap!4211 lt!480176 lt!480177 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480175 () ListLongMap!14873)

(declare-fun lt!480180 () ListLongMap!14873)

(assert (=> b!1083622 (and (= lt!480175 lt!480180) (= lt!480180 lt!480175))))

(declare-fun lt!480179 () ListLongMap!14873)

(declare-fun -!734 (ListLongMap!14873 (_ BitVec 64)) ListLongMap!14873)

(assert (=> b!1083622 (= lt!480180 (-!734 lt!480179 k!904))))

(declare-datatypes ((Unit!35583 0))(
  ( (Unit!35584) )
))
(declare-fun lt!480182 () Unit!35583)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!17 (array!69796 array!69798 (_ BitVec 32) (_ BitVec 32) V!40389 V!40389 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35583)

(assert (=> b!1083622 (= lt!480182 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!17 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3963 (array!69796 array!69798 (_ BitVec 32) (_ BitVec 32) V!40389 V!40389 (_ BitVec 32) Int) ListLongMap!14873)

(assert (=> b!1083622 (= lt!480175 (getCurrentListMapNoExtraKeys!3963 lt!480176 lt!480177 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2099 (Int (_ BitVec 64)) V!40389)

(assert (=> b!1083622 (= lt!480177 (array!69799 (store (arr!33569 _values!874) i!650 (ValueCellFull!12514 (dynLambda!2099 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34106 _values!874)))))

(assert (=> b!1083622 (= lt!480179 (getCurrentListMapNoExtraKeys!3963 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083622 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480178 () Unit!35583)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69796 (_ BitVec 64) (_ BitVec 32)) Unit!35583)

(assert (=> b!1083622 (= lt!480178 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41425 () Bool)

(declare-fun mapRes!41425 () Bool)

(declare-fun tp!79185 () Bool)

(assert (=> mapNonEmpty!41425 (= mapRes!41425 (and tp!79185 e!619201))))

(declare-fun mapKey!41425 () (_ BitVec 32))

(declare-fun mapRest!41425 () (Array (_ BitVec 32) ValueCell!12514))

(declare-fun mapValue!41425 () ValueCell!12514)

(assert (=> mapNonEmpty!41425 (= (arr!33569 _values!874) (store mapRest!41425 mapKey!41425 mapValue!41425))))

(declare-fun b!1083623 () Bool)

(declare-fun e!619196 () Bool)

(assert (=> b!1083623 (= e!619196 tp_is_empty!26447)))

(declare-fun b!1083624 () Bool)

(declare-fun res!722463 () Bool)

(assert (=> b!1083624 (=> (not res!722463) (not e!619200))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083624 (= res!722463 (validKeyInArray!0 k!904))))

(declare-fun b!1083625 () Bool)

(assert (=> b!1083625 (= e!619198 (and e!619196 mapRes!41425))))

(declare-fun condMapEmpty!41425 () Bool)

(declare-fun mapDefault!41425 () ValueCell!12514)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96452 () Bool)

(assert start!96452)

(declare-fun b_free!22995 () Bool)

(declare-fun b_next!22995 () Bool)

(assert (=> start!96452 (= b_free!22995 (not b_next!22995))))

(declare-fun tp!80913 () Bool)

(declare-fun b_and!36671 () Bool)

(assert (=> start!96452 (= tp!80913 b_and!36671)))

(declare-fun b!1095940 () Bool)

(declare-fun res!731513 () Bool)

(declare-fun e!625664 () Bool)

(assert (=> b!1095940 (=> (not res!731513) (not e!625664))))

(declare-datatypes ((array!70954 0))(
  ( (array!70955 (arr!34145 (Array (_ BitVec 32) (_ BitVec 64))) (size!34682 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70954)

(declare-datatypes ((List!23980 0))(
  ( (Nil!23977) (Cons!23976 (h!25185 (_ BitVec 64)) (t!34028 List!23980)) )
))
(declare-fun arrayNoDuplicates!0 (array!70954 (_ BitVec 32) List!23980) Bool)

(assert (=> b!1095940 (= res!731513 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23977))))

(declare-fun b!1095941 () Bool)

(declare-fun res!731509 () Bool)

(assert (=> b!1095941 (=> (not res!731509) (not e!625664))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70954 (_ BitVec 32)) Bool)

(assert (=> b!1095941 (= res!731509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095942 () Bool)

(declare-fun e!625663 () Bool)

(assert (=> b!1095942 (= e!625664 e!625663)))

(declare-fun res!731516 () Bool)

(assert (=> b!1095942 (=> (not res!731516) (not e!625663))))

(declare-fun lt!489984 () array!70954)

(assert (=> b!1095942 (= res!731516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489984 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095942 (= lt!489984 (array!70955 (store (arr!34145 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34682 _keys!1070)))))

(declare-fun b!1095943 () Bool)

(declare-fun res!731517 () Bool)

(assert (=> b!1095943 (=> (not res!731517) (not e!625663))))

(assert (=> b!1095943 (= res!731517 (arrayNoDuplicates!0 lt!489984 #b00000000000000000000000000000000 Nil!23977))))

(declare-fun b!1095944 () Bool)

(declare-fun res!731515 () Bool)

(assert (=> b!1095944 (=> (not res!731515) (not e!625664))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41187 0))(
  ( (V!41188 (val!13579 Int)) )
))
(declare-datatypes ((ValueCell!12813 0))(
  ( (ValueCellFull!12813 (v!16201 V!41187)) (EmptyCell!12813) )
))
(declare-datatypes ((array!70956 0))(
  ( (array!70957 (arr!34146 (Array (_ BitVec 32) ValueCell!12813)) (size!34683 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70956)

(assert (=> b!1095944 (= res!731515 (and (= (size!34683 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34682 _keys!1070) (size!34683 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095945 () Bool)

(declare-fun res!731512 () Bool)

(assert (=> b!1095945 (=> (not res!731512) (not e!625664))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095945 (= res!731512 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!42328 () Bool)

(declare-fun mapRes!42328 () Bool)

(assert (=> mapIsEmpty!42328 mapRes!42328))

(declare-fun res!731510 () Bool)

(assert (=> start!96452 (=> (not res!731510) (not e!625664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96452 (= res!731510 (validMask!0 mask!1414))))

(assert (=> start!96452 e!625664))

(assert (=> start!96452 tp!80913))

(assert (=> start!96452 true))

(declare-fun tp_is_empty!27045 () Bool)

(assert (=> start!96452 tp_is_empty!27045))

(declare-fun array_inv!26164 (array!70954) Bool)

(assert (=> start!96452 (array_inv!26164 _keys!1070)))

(declare-fun e!625662 () Bool)

(declare-fun array_inv!26165 (array!70956) Bool)

(assert (=> start!96452 (and (array_inv!26165 _values!874) e!625662)))

(declare-fun b!1095946 () Bool)

(declare-fun res!731514 () Bool)

(assert (=> b!1095946 (=> (not res!731514) (not e!625664))))

(assert (=> b!1095946 (= res!731514 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34682 _keys!1070))))))

(declare-fun b!1095947 () Bool)

(declare-fun e!625660 () Bool)

(assert (=> b!1095947 (= e!625660 tp_is_empty!27045)))

(declare-fun b!1095948 () Bool)

(declare-fun res!731511 () Bool)

(assert (=> b!1095948 (=> (not res!731511) (not e!625664))))

(assert (=> b!1095948 (= res!731511 (= (select (arr!34145 _keys!1070) i!650) k0!904))))

(declare-fun b!1095949 () Bool)

(assert (=> b!1095949 (= e!625663 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41187)

(declare-fun zeroValue!831 () V!41187)

(declare-datatypes ((tuple2!17306 0))(
  ( (tuple2!17307 (_1!8663 (_ BitVec 64)) (_2!8663 V!41187)) )
))
(declare-datatypes ((List!23981 0))(
  ( (Nil!23978) (Cons!23977 (h!25186 tuple2!17306) (t!34029 List!23981)) )
))
(declare-datatypes ((ListLongMap!15287 0))(
  ( (ListLongMap!15288 (toList!7659 List!23981)) )
))
(declare-fun lt!489986 () ListLongMap!15287)

(declare-fun getCurrentListMapNoExtraKeys!4146 (array!70954 array!70956 (_ BitVec 32) (_ BitVec 32) V!41187 V!41187 (_ BitVec 32) Int) ListLongMap!15287)

(declare-fun dynLambda!2277 (Int (_ BitVec 64)) V!41187)

(assert (=> b!1095949 (= lt!489986 (getCurrentListMapNoExtraKeys!4146 lt!489984 (array!70957 (store (arr!34146 _values!874) i!650 (ValueCellFull!12813 (dynLambda!2277 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34683 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489985 () ListLongMap!15287)

(assert (=> b!1095949 (= lt!489985 (getCurrentListMapNoExtraKeys!4146 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095949 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35991 0))(
  ( (Unit!35992) )
))
(declare-fun lt!489983 () Unit!35991)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70954 (_ BitVec 64) (_ BitVec 32)) Unit!35991)

(assert (=> b!1095949 (= lt!489983 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!42328 () Bool)

(declare-fun tp!80912 () Bool)

(assert (=> mapNonEmpty!42328 (= mapRes!42328 (and tp!80912 e!625660))))

(declare-fun mapKey!42328 () (_ BitVec 32))

(declare-fun mapValue!42328 () ValueCell!12813)

(declare-fun mapRest!42328 () (Array (_ BitVec 32) ValueCell!12813))

(assert (=> mapNonEmpty!42328 (= (arr!34146 _values!874) (store mapRest!42328 mapKey!42328 mapValue!42328))))

(declare-fun b!1095950 () Bool)

(declare-fun e!625665 () Bool)

(assert (=> b!1095950 (= e!625665 tp_is_empty!27045)))

(declare-fun b!1095951 () Bool)

(assert (=> b!1095951 (= e!625662 (and e!625665 mapRes!42328))))

(declare-fun condMapEmpty!42328 () Bool)

(declare-fun mapDefault!42328 () ValueCell!12813)

(assert (=> b!1095951 (= condMapEmpty!42328 (= (arr!34146 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12813)) mapDefault!42328)))))

(assert (= (and start!96452 res!731510) b!1095944))

(assert (= (and b!1095944 res!731515) b!1095941))

(assert (= (and b!1095941 res!731509) b!1095940))

(assert (= (and b!1095940 res!731513) b!1095946))

(assert (= (and b!1095946 res!731514) b!1095945))

(assert (= (and b!1095945 res!731512) b!1095948))

(assert (= (and b!1095948 res!731511) b!1095942))

(assert (= (and b!1095942 res!731516) b!1095943))

(assert (= (and b!1095943 res!731517) b!1095949))

(assert (= (and b!1095951 condMapEmpty!42328) mapIsEmpty!42328))

(assert (= (and b!1095951 (not condMapEmpty!42328)) mapNonEmpty!42328))

(get-info :version)

(assert (= (and mapNonEmpty!42328 ((_ is ValueCellFull!12813) mapValue!42328)) b!1095947))

(assert (= (and b!1095951 ((_ is ValueCellFull!12813) mapDefault!42328)) b!1095950))

(assert (= start!96452 b!1095951))

(declare-fun b_lambda!17683 () Bool)

(assert (=> (not b_lambda!17683) (not b!1095949)))

(declare-fun t!34027 () Bool)

(declare-fun tb!7869 () Bool)

(assert (=> (and start!96452 (= defaultEntry!882 defaultEntry!882) t!34027) tb!7869))

(declare-fun result!16253 () Bool)

(assert (=> tb!7869 (= result!16253 tp_is_empty!27045)))

(assert (=> b!1095949 t!34027))

(declare-fun b_and!36673 () Bool)

(assert (= b_and!36671 (and (=> t!34027 result!16253) b_and!36673)))

(declare-fun m!1015655 () Bool)

(assert (=> b!1095940 m!1015655))

(declare-fun m!1015657 () Bool)

(assert (=> start!96452 m!1015657))

(declare-fun m!1015659 () Bool)

(assert (=> start!96452 m!1015659))

(declare-fun m!1015661 () Bool)

(assert (=> start!96452 m!1015661))

(declare-fun m!1015663 () Bool)

(assert (=> b!1095941 m!1015663))

(declare-fun m!1015665 () Bool)

(assert (=> b!1095943 m!1015665))

(declare-fun m!1015667 () Bool)

(assert (=> b!1095949 m!1015667))

(declare-fun m!1015669 () Bool)

(assert (=> b!1095949 m!1015669))

(declare-fun m!1015671 () Bool)

(assert (=> b!1095949 m!1015671))

(declare-fun m!1015673 () Bool)

(assert (=> b!1095949 m!1015673))

(declare-fun m!1015675 () Bool)

(assert (=> b!1095949 m!1015675))

(declare-fun m!1015677 () Bool)

(assert (=> b!1095949 m!1015677))

(declare-fun m!1015679 () Bool)

(assert (=> b!1095948 m!1015679))

(declare-fun m!1015681 () Bool)

(assert (=> b!1095942 m!1015681))

(declare-fun m!1015683 () Bool)

(assert (=> b!1095942 m!1015683))

(declare-fun m!1015685 () Bool)

(assert (=> mapNonEmpty!42328 m!1015685))

(declare-fun m!1015687 () Bool)

(assert (=> b!1095945 m!1015687))

(check-sat (not b_lambda!17683) (not b!1095949) (not start!96452) (not b!1095942) (not b!1095943) (not b!1095940) (not b_next!22995) (not mapNonEmpty!42328) b_and!36673 (not b!1095945) (not b!1095941) tp_is_empty!27045)
(check-sat b_and!36673 (not b_next!22995))

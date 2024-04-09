; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96476 () Bool)

(assert start!96476)

(declare-fun b_free!23019 () Bool)

(declare-fun b_next!23019 () Bool)

(assert (=> start!96476 (= b_free!23019 (not b_next!23019))))

(declare-fun tp!80984 () Bool)

(declare-fun b_and!36719 () Bool)

(assert (=> start!96476 (= tp!80984 b_and!36719)))

(declare-fun mapIsEmpty!42364 () Bool)

(declare-fun mapRes!42364 () Bool)

(assert (=> mapIsEmpty!42364 mapRes!42364))

(declare-fun mapNonEmpty!42364 () Bool)

(declare-fun tp!80985 () Bool)

(declare-fun e!625881 () Bool)

(assert (=> mapNonEmpty!42364 (= mapRes!42364 (and tp!80985 e!625881))))

(declare-datatypes ((V!41219 0))(
  ( (V!41220 (val!13591 Int)) )
))
(declare-datatypes ((ValueCell!12825 0))(
  ( (ValueCellFull!12825 (v!16213 V!41219)) (EmptyCell!12825) )
))
(declare-datatypes ((array!70998 0))(
  ( (array!70999 (arr!34167 (Array (_ BitVec 32) ValueCell!12825)) (size!34704 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70998)

(declare-fun mapKey!42364 () (_ BitVec 32))

(declare-fun mapRest!42364 () (Array (_ BitVec 32) ValueCell!12825))

(declare-fun mapValue!42364 () ValueCell!12825)

(assert (=> mapNonEmpty!42364 (= (arr!34167 _values!874) (store mapRest!42364 mapKey!42364 mapValue!42364))))

(declare-fun b!1096396 () Bool)

(declare-fun e!625880 () Bool)

(declare-fun e!625876 () Bool)

(assert (=> b!1096396 (= e!625880 e!625876)))

(declare-fun res!731836 () Bool)

(assert (=> b!1096396 (=> (not res!731836) (not e!625876))))

(declare-datatypes ((array!71000 0))(
  ( (array!71001 (arr!34168 (Array (_ BitVec 32) (_ BitVec 64))) (size!34705 (_ BitVec 32))) )
))
(declare-fun lt!490128 () array!71000)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71000 (_ BitVec 32)) Bool)

(assert (=> b!1096396 (= res!731836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490128 mask!1414))))

(declare-fun _keys!1070 () array!71000)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096396 (= lt!490128 (array!71001 (store (arr!34168 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34705 _keys!1070)))))

(declare-fun b!1096397 () Bool)

(declare-fun e!625879 () Bool)

(declare-fun e!625877 () Bool)

(assert (=> b!1096397 (= e!625879 (and e!625877 mapRes!42364))))

(declare-fun condMapEmpty!42364 () Bool)

(declare-fun mapDefault!42364 () ValueCell!12825)

(assert (=> b!1096397 (= condMapEmpty!42364 (= (arr!34167 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12825)) mapDefault!42364)))))

(declare-fun b!1096398 () Bool)

(declare-fun res!731841 () Bool)

(assert (=> b!1096398 (=> (not res!731841) (not e!625880))))

(assert (=> b!1096398 (= res!731841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096399 () Bool)

(declare-fun tp_is_empty!27069 () Bool)

(assert (=> b!1096399 (= e!625877 tp_is_empty!27069)))

(declare-fun b!1096400 () Bool)

(declare-fun res!731840 () Bool)

(assert (=> b!1096400 (=> (not res!731840) (not e!625876))))

(declare-datatypes ((List!23994 0))(
  ( (Nil!23991) (Cons!23990 (h!25199 (_ BitVec 64)) (t!34066 List!23994)) )
))
(declare-fun arrayNoDuplicates!0 (array!71000 (_ BitVec 32) List!23994) Bool)

(assert (=> b!1096400 (= res!731840 (arrayNoDuplicates!0 lt!490128 #b00000000000000000000000000000000 Nil!23991))))

(declare-fun b!1096401 () Bool)

(assert (=> b!1096401 (= e!625876 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17318 0))(
  ( (tuple2!17319 (_1!8669 (_ BitVec 64)) (_2!8669 V!41219)) )
))
(declare-datatypes ((List!23995 0))(
  ( (Nil!23992) (Cons!23991 (h!25200 tuple2!17318) (t!34067 List!23995)) )
))
(declare-datatypes ((ListLongMap!15299 0))(
  ( (ListLongMap!15300 (toList!7665 List!23995)) )
))
(declare-fun lt!490130 () ListLongMap!15299)

(declare-fun minValue!831 () V!41219)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41219)

(declare-fun getCurrentListMapNoExtraKeys!4152 (array!71000 array!70998 (_ BitVec 32) (_ BitVec 32) V!41219 V!41219 (_ BitVec 32) Int) ListLongMap!15299)

(declare-fun dynLambda!2283 (Int (_ BitVec 64)) V!41219)

(assert (=> b!1096401 (= lt!490130 (getCurrentListMapNoExtraKeys!4152 lt!490128 (array!70999 (store (arr!34167 _values!874) i!650 (ValueCellFull!12825 (dynLambda!2283 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34704 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490129 () ListLongMap!15299)

(assert (=> b!1096401 (= lt!490129 (getCurrentListMapNoExtraKeys!4152 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096401 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36003 0))(
  ( (Unit!36004) )
))
(declare-fun lt!490127 () Unit!36003)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71000 (_ BitVec 64) (_ BitVec 32)) Unit!36003)

(assert (=> b!1096401 (= lt!490127 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1096402 () Bool)

(declare-fun res!731837 () Bool)

(assert (=> b!1096402 (=> (not res!731837) (not e!625880))))

(assert (=> b!1096402 (= res!731837 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23991))))

(declare-fun b!1096403 () Bool)

(assert (=> b!1096403 (= e!625881 tp_is_empty!27069)))

(declare-fun res!731838 () Bool)

(assert (=> start!96476 (=> (not res!731838) (not e!625880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96476 (= res!731838 (validMask!0 mask!1414))))

(assert (=> start!96476 e!625880))

(assert (=> start!96476 tp!80984))

(assert (=> start!96476 true))

(assert (=> start!96476 tp_is_empty!27069))

(declare-fun array_inv!26180 (array!71000) Bool)

(assert (=> start!96476 (array_inv!26180 _keys!1070)))

(declare-fun array_inv!26181 (array!70998) Bool)

(assert (=> start!96476 (and (array_inv!26181 _values!874) e!625879)))

(declare-fun b!1096404 () Bool)

(declare-fun res!731835 () Bool)

(assert (=> b!1096404 (=> (not res!731835) (not e!625880))))

(assert (=> b!1096404 (= res!731835 (and (= (size!34704 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34705 _keys!1070) (size!34704 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096405 () Bool)

(declare-fun res!731833 () Bool)

(assert (=> b!1096405 (=> (not res!731833) (not e!625880))))

(assert (=> b!1096405 (= res!731833 (= (select (arr!34168 _keys!1070) i!650) k0!904))))

(declare-fun b!1096406 () Bool)

(declare-fun res!731839 () Bool)

(assert (=> b!1096406 (=> (not res!731839) (not e!625880))))

(assert (=> b!1096406 (= res!731839 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34705 _keys!1070))))))

(declare-fun b!1096407 () Bool)

(declare-fun res!731834 () Bool)

(assert (=> b!1096407 (=> (not res!731834) (not e!625880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096407 (= res!731834 (validKeyInArray!0 k0!904))))

(assert (= (and start!96476 res!731838) b!1096404))

(assert (= (and b!1096404 res!731835) b!1096398))

(assert (= (and b!1096398 res!731841) b!1096402))

(assert (= (and b!1096402 res!731837) b!1096406))

(assert (= (and b!1096406 res!731839) b!1096407))

(assert (= (and b!1096407 res!731834) b!1096405))

(assert (= (and b!1096405 res!731833) b!1096396))

(assert (= (and b!1096396 res!731836) b!1096400))

(assert (= (and b!1096400 res!731840) b!1096401))

(assert (= (and b!1096397 condMapEmpty!42364) mapIsEmpty!42364))

(assert (= (and b!1096397 (not condMapEmpty!42364)) mapNonEmpty!42364))

(get-info :version)

(assert (= (and mapNonEmpty!42364 ((_ is ValueCellFull!12825) mapValue!42364)) b!1096403))

(assert (= (and b!1096397 ((_ is ValueCellFull!12825) mapDefault!42364)) b!1096399))

(assert (= start!96476 b!1096397))

(declare-fun b_lambda!17707 () Bool)

(assert (=> (not b_lambda!17707) (not b!1096401)))

(declare-fun t!34065 () Bool)

(declare-fun tb!7893 () Bool)

(assert (=> (and start!96476 (= defaultEntry!882 defaultEntry!882) t!34065) tb!7893))

(declare-fun result!16301 () Bool)

(assert (=> tb!7893 (= result!16301 tp_is_empty!27069)))

(assert (=> b!1096401 t!34065))

(declare-fun b_and!36721 () Bool)

(assert (= b_and!36719 (and (=> t!34065 result!16301) b_and!36721)))

(declare-fun m!1016063 () Bool)

(assert (=> b!1096398 m!1016063))

(declare-fun m!1016065 () Bool)

(assert (=> start!96476 m!1016065))

(declare-fun m!1016067 () Bool)

(assert (=> start!96476 m!1016067))

(declare-fun m!1016069 () Bool)

(assert (=> start!96476 m!1016069))

(declare-fun m!1016071 () Bool)

(assert (=> b!1096396 m!1016071))

(declare-fun m!1016073 () Bool)

(assert (=> b!1096396 m!1016073))

(declare-fun m!1016075 () Bool)

(assert (=> b!1096400 m!1016075))

(declare-fun m!1016077 () Bool)

(assert (=> b!1096405 m!1016077))

(declare-fun m!1016079 () Bool)

(assert (=> mapNonEmpty!42364 m!1016079))

(declare-fun m!1016081 () Bool)

(assert (=> b!1096407 m!1016081))

(declare-fun m!1016083 () Bool)

(assert (=> b!1096402 m!1016083))

(declare-fun m!1016085 () Bool)

(assert (=> b!1096401 m!1016085))

(declare-fun m!1016087 () Bool)

(assert (=> b!1096401 m!1016087))

(declare-fun m!1016089 () Bool)

(assert (=> b!1096401 m!1016089))

(declare-fun m!1016091 () Bool)

(assert (=> b!1096401 m!1016091))

(declare-fun m!1016093 () Bool)

(assert (=> b!1096401 m!1016093))

(declare-fun m!1016095 () Bool)

(assert (=> b!1096401 m!1016095))

(check-sat (not b!1096400) (not mapNonEmpty!42364) (not b!1096396) (not start!96476) (not b_lambda!17707) (not b!1096402) (not b!1096407) (not b!1096398) (not b!1096401) b_and!36721 tp_is_empty!27069 (not b_next!23019))
(check-sat b_and!36721 (not b_next!23019))

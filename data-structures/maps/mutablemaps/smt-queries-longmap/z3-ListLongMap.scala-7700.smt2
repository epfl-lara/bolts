; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96742 () Bool)

(assert start!96742)

(declare-fun b_free!23127 () Bool)

(declare-fun b_next!23127 () Bool)

(assert (=> start!96742 (= b_free!23127 (not b_next!23127))))

(declare-fun tp!81327 () Bool)

(declare-fun b_and!37019 () Bool)

(assert (=> start!96742 (= tp!81327 b_and!37019)))

(declare-fun b!1099814 () Bool)

(declare-fun e!627783 () Bool)

(declare-fun e!627789 () Bool)

(assert (=> b!1099814 (= e!627783 e!627789)))

(declare-fun res!734004 () Bool)

(assert (=> b!1099814 (=> (not res!734004) (not e!627789))))

(declare-datatypes ((array!71224 0))(
  ( (array!71225 (arr!34274 (Array (_ BitVec 32) (_ BitVec 64))) (size!34811 (_ BitVec 32))) )
))
(declare-fun lt!492596 () array!71224)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71224 (_ BitVec 32)) Bool)

(assert (=> b!1099814 (= res!734004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492596 mask!1414))))

(declare-fun _keys!1070 () array!71224)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1099814 (= lt!492596 (array!71225 (store (arr!34274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34811 _keys!1070)))))

(declare-fun b!1099815 () Bool)

(declare-fun res!733998 () Bool)

(assert (=> b!1099815 (=> (not res!733998) (not e!627783))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1099815 (= res!733998 (= (select (arr!34274 _keys!1070) i!650) k0!904))))

(declare-fun b!1099816 () Bool)

(declare-fun res!734000 () Bool)

(assert (=> b!1099816 (=> (not res!734000) (not e!627783))))

(declare-datatypes ((List!24083 0))(
  ( (Nil!24080) (Cons!24079 (h!25288 (_ BitVec 64)) (t!34263 List!24083)) )
))
(declare-fun arrayNoDuplicates!0 (array!71224 (_ BitVec 32) List!24083) Bool)

(assert (=> b!1099816 (= res!734000 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24080))))

(declare-datatypes ((V!41363 0))(
  ( (V!41364 (val!13645 Int)) )
))
(declare-datatypes ((tuple2!17408 0))(
  ( (tuple2!17409 (_1!8714 (_ BitVec 64)) (_2!8714 V!41363)) )
))
(declare-fun lt!492593 () tuple2!17408)

(declare-datatypes ((List!24084 0))(
  ( (Nil!24081) (Cons!24080 (h!25289 tuple2!17408) (t!34264 List!24084)) )
))
(declare-datatypes ((ListLongMap!15389 0))(
  ( (ListLongMap!15390 (toList!7710 List!24084)) )
))
(declare-fun lt!492591 () ListLongMap!15389)

(declare-fun e!627784 () Bool)

(declare-fun b!1099817 () Bool)

(declare-fun lt!492594 () ListLongMap!15389)

(declare-fun +!3345 (ListLongMap!15389 tuple2!17408) ListLongMap!15389)

(assert (=> b!1099817 (= e!627784 (= lt!492594 (+!3345 lt!492591 lt!492593)))))

(declare-fun b!1099818 () Bool)

(declare-fun e!627788 () Bool)

(assert (=> b!1099818 (= e!627789 (not e!627788))))

(declare-fun res!733997 () Bool)

(assert (=> b!1099818 (=> res!733997 e!627788)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1099818 (= res!733997 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41363)

(declare-fun zeroValue!831 () V!41363)

(declare-datatypes ((ValueCell!12879 0))(
  ( (ValueCellFull!12879 (v!16273 V!41363)) (EmptyCell!12879) )
))
(declare-datatypes ((array!71226 0))(
  ( (array!71227 (arr!34275 (Array (_ BitVec 32) ValueCell!12879)) (size!34812 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71226)

(declare-fun getCurrentListMap!4401 (array!71224 array!71226 (_ BitVec 32) (_ BitVec 32) V!41363 V!41363 (_ BitVec 32) Int) ListLongMap!15389)

(assert (=> b!1099818 (= lt!492594 (getCurrentListMap!4401 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492600 () ListLongMap!15389)

(declare-fun lt!492598 () array!71226)

(assert (=> b!1099818 (= lt!492600 (getCurrentListMap!4401 lt!492596 lt!492598 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492592 () ListLongMap!15389)

(declare-fun lt!492595 () ListLongMap!15389)

(assert (=> b!1099818 (and (= lt!492592 lt!492595) (= lt!492595 lt!492592))))

(declare-fun -!952 (ListLongMap!15389 (_ BitVec 64)) ListLongMap!15389)

(assert (=> b!1099818 (= lt!492595 (-!952 lt!492591 k0!904))))

(declare-datatypes ((Unit!36095 0))(
  ( (Unit!36096) )
))
(declare-fun lt!492599 () Unit!36095)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!213 (array!71224 array!71226 (_ BitVec 32) (_ BitVec 32) V!41363 V!41363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36095)

(assert (=> b!1099818 (= lt!492599 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!213 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4188 (array!71224 array!71226 (_ BitVec 32) (_ BitVec 32) V!41363 V!41363 (_ BitVec 32) Int) ListLongMap!15389)

(assert (=> b!1099818 (= lt!492592 (getCurrentListMapNoExtraKeys!4188 lt!492596 lt!492598 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2319 (Int (_ BitVec 64)) V!41363)

(assert (=> b!1099818 (= lt!492598 (array!71227 (store (arr!34275 _values!874) i!650 (ValueCellFull!12879 (dynLambda!2319 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34812 _values!874)))))

(assert (=> b!1099818 (= lt!492591 (getCurrentListMapNoExtraKeys!4188 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1099818 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!492597 () Unit!36095)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71224 (_ BitVec 64) (_ BitVec 32)) Unit!36095)

(assert (=> b!1099818 (= lt!492597 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1099819 () Bool)

(declare-fun res!734006 () Bool)

(assert (=> b!1099819 (=> (not res!734006) (not e!627783))))

(assert (=> b!1099819 (= res!734006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1099820 () Bool)

(assert (=> b!1099820 (= e!627788 (= lt!492600 (+!3345 lt!492595 lt!492593)))))

(assert (=> b!1099820 e!627784))

(declare-fun res!733999 () Bool)

(assert (=> b!1099820 (=> (not res!733999) (not e!627784))))

(assert (=> b!1099820 (= res!733999 (= lt!492600 (+!3345 lt!492592 lt!492593)))))

(assert (=> b!1099820 (= lt!492593 (tuple2!17409 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1099821 () Bool)

(declare-fun e!627786 () Bool)

(declare-fun e!627782 () Bool)

(declare-fun mapRes!42544 () Bool)

(assert (=> b!1099821 (= e!627786 (and e!627782 mapRes!42544))))

(declare-fun condMapEmpty!42544 () Bool)

(declare-fun mapDefault!42544 () ValueCell!12879)

(assert (=> b!1099821 (= condMapEmpty!42544 (= (arr!34275 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12879)) mapDefault!42544)))))

(declare-fun res!734002 () Bool)

(assert (=> start!96742 (=> (not res!734002) (not e!627783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96742 (= res!734002 (validMask!0 mask!1414))))

(assert (=> start!96742 e!627783))

(assert (=> start!96742 tp!81327))

(assert (=> start!96742 true))

(declare-fun tp_is_empty!27177 () Bool)

(assert (=> start!96742 tp_is_empty!27177))

(declare-fun array_inv!26262 (array!71224) Bool)

(assert (=> start!96742 (array_inv!26262 _keys!1070)))

(declare-fun array_inv!26263 (array!71226) Bool)

(assert (=> start!96742 (and (array_inv!26263 _values!874) e!627786)))

(declare-fun b!1099822 () Bool)

(assert (=> b!1099822 (= e!627782 tp_is_empty!27177)))

(declare-fun b!1099823 () Bool)

(declare-fun res!734007 () Bool)

(assert (=> b!1099823 (=> (not res!734007) (not e!627783))))

(assert (=> b!1099823 (= res!734007 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34811 _keys!1070))))))

(declare-fun mapNonEmpty!42544 () Bool)

(declare-fun tp!81326 () Bool)

(declare-fun e!627787 () Bool)

(assert (=> mapNonEmpty!42544 (= mapRes!42544 (and tp!81326 e!627787))))

(declare-fun mapValue!42544 () ValueCell!12879)

(declare-fun mapRest!42544 () (Array (_ BitVec 32) ValueCell!12879))

(declare-fun mapKey!42544 () (_ BitVec 32))

(assert (=> mapNonEmpty!42544 (= (arr!34275 _values!874) (store mapRest!42544 mapKey!42544 mapValue!42544))))

(declare-fun b!1099824 () Bool)

(assert (=> b!1099824 (= e!627787 tp_is_empty!27177)))

(declare-fun b!1099825 () Bool)

(declare-fun res!734005 () Bool)

(assert (=> b!1099825 (=> (not res!734005) (not e!627783))))

(assert (=> b!1099825 (= res!734005 (and (= (size!34812 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34811 _keys!1070) (size!34812 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1099826 () Bool)

(declare-fun res!734001 () Bool)

(assert (=> b!1099826 (=> (not res!734001) (not e!627789))))

(assert (=> b!1099826 (= res!734001 (arrayNoDuplicates!0 lt!492596 #b00000000000000000000000000000000 Nil!24080))))

(declare-fun b!1099827 () Bool)

(declare-fun res!734003 () Bool)

(assert (=> b!1099827 (=> (not res!734003) (not e!627783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1099827 (= res!734003 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!42544 () Bool)

(assert (=> mapIsEmpty!42544 mapRes!42544))

(assert (= (and start!96742 res!734002) b!1099825))

(assert (= (and b!1099825 res!734005) b!1099819))

(assert (= (and b!1099819 res!734006) b!1099816))

(assert (= (and b!1099816 res!734000) b!1099823))

(assert (= (and b!1099823 res!734007) b!1099827))

(assert (= (and b!1099827 res!734003) b!1099815))

(assert (= (and b!1099815 res!733998) b!1099814))

(assert (= (and b!1099814 res!734004) b!1099826))

(assert (= (and b!1099826 res!734001) b!1099818))

(assert (= (and b!1099818 (not res!733997)) b!1099820))

(assert (= (and b!1099820 res!733999) b!1099817))

(assert (= (and b!1099821 condMapEmpty!42544) mapIsEmpty!42544))

(assert (= (and b!1099821 (not condMapEmpty!42544)) mapNonEmpty!42544))

(get-info :version)

(assert (= (and mapNonEmpty!42544 ((_ is ValueCellFull!12879) mapValue!42544)) b!1099824))

(assert (= (and b!1099821 ((_ is ValueCellFull!12879) mapDefault!42544)) b!1099822))

(assert (= start!96742 b!1099821))

(declare-fun b_lambda!17995 () Bool)

(assert (=> (not b_lambda!17995) (not b!1099818)))

(declare-fun t!34262 () Bool)

(declare-fun tb!8001 () Bool)

(assert (=> (and start!96742 (= defaultEntry!882 defaultEntry!882) t!34262) tb!8001))

(declare-fun result!16529 () Bool)

(assert (=> tb!8001 (= result!16529 tp_is_empty!27177)))

(assert (=> b!1099818 t!34262))

(declare-fun b_and!37021 () Bool)

(assert (= b_and!37019 (and (=> t!34262 result!16529) b_and!37021)))

(declare-fun m!1019959 () Bool)

(assert (=> b!1099819 m!1019959))

(declare-fun m!1019961 () Bool)

(assert (=> mapNonEmpty!42544 m!1019961))

(declare-fun m!1019963 () Bool)

(assert (=> b!1099816 m!1019963))

(declare-fun m!1019965 () Bool)

(assert (=> b!1099814 m!1019965))

(declare-fun m!1019967 () Bool)

(assert (=> b!1099814 m!1019967))

(declare-fun m!1019969 () Bool)

(assert (=> b!1099818 m!1019969))

(declare-fun m!1019971 () Bool)

(assert (=> b!1099818 m!1019971))

(declare-fun m!1019973 () Bool)

(assert (=> b!1099818 m!1019973))

(declare-fun m!1019975 () Bool)

(assert (=> b!1099818 m!1019975))

(declare-fun m!1019977 () Bool)

(assert (=> b!1099818 m!1019977))

(declare-fun m!1019979 () Bool)

(assert (=> b!1099818 m!1019979))

(declare-fun m!1019981 () Bool)

(assert (=> b!1099818 m!1019981))

(declare-fun m!1019983 () Bool)

(assert (=> b!1099818 m!1019983))

(declare-fun m!1019985 () Bool)

(assert (=> b!1099818 m!1019985))

(declare-fun m!1019987 () Bool)

(assert (=> b!1099818 m!1019987))

(declare-fun m!1019989 () Bool)

(assert (=> b!1099817 m!1019989))

(declare-fun m!1019991 () Bool)

(assert (=> b!1099826 m!1019991))

(declare-fun m!1019993 () Bool)

(assert (=> b!1099815 m!1019993))

(declare-fun m!1019995 () Bool)

(assert (=> b!1099827 m!1019995))

(declare-fun m!1019997 () Bool)

(assert (=> start!96742 m!1019997))

(declare-fun m!1019999 () Bool)

(assert (=> start!96742 m!1019999))

(declare-fun m!1020001 () Bool)

(assert (=> start!96742 m!1020001))

(declare-fun m!1020003 () Bool)

(assert (=> b!1099820 m!1020003))

(declare-fun m!1020005 () Bool)

(assert (=> b!1099820 m!1020005))

(check-sat (not b!1099820) (not b!1099814) (not mapNonEmpty!42544) (not start!96742) (not b!1099817) tp_is_empty!27177 (not b_next!23127) (not b!1099816) (not b!1099826) (not b!1099827) b_and!37021 (not b!1099818) (not b_lambda!17995) (not b!1099819))
(check-sat b_and!37021 (not b_next!23127))

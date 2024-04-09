; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96470 () Bool)

(assert start!96470)

(declare-fun b_free!23013 () Bool)

(declare-fun b_next!23013 () Bool)

(assert (=> start!96470 (= b_free!23013 (not b_next!23013))))

(declare-fun tp!80966 () Bool)

(declare-fun b_and!36707 () Bool)

(assert (=> start!96470 (= tp!80966 b_and!36707)))

(declare-fun mapNonEmpty!42355 () Bool)

(declare-fun mapRes!42355 () Bool)

(declare-fun tp!80967 () Bool)

(declare-fun e!625824 () Bool)

(assert (=> mapNonEmpty!42355 (= mapRes!42355 (and tp!80967 e!625824))))

(declare-datatypes ((V!41211 0))(
  ( (V!41212 (val!13588 Int)) )
))
(declare-datatypes ((ValueCell!12822 0))(
  ( (ValueCellFull!12822 (v!16210 V!41211)) (EmptyCell!12822) )
))
(declare-datatypes ((array!70986 0))(
  ( (array!70987 (arr!34161 (Array (_ BitVec 32) ValueCell!12822)) (size!34698 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70986)

(declare-fun mapValue!42355 () ValueCell!12822)

(declare-fun mapRest!42355 () (Array (_ BitVec 32) ValueCell!12822))

(declare-fun mapKey!42355 () (_ BitVec 32))

(assert (=> mapNonEmpty!42355 (= (arr!34161 _values!874) (store mapRest!42355 mapKey!42355 mapValue!42355))))

(declare-fun b!1096282 () Bool)

(declare-fun res!731758 () Bool)

(declare-fun e!625825 () Bool)

(assert (=> b!1096282 (=> (not res!731758) (not e!625825))))

(declare-datatypes ((array!70988 0))(
  ( (array!70989 (arr!34162 (Array (_ BitVec 32) (_ BitVec 64))) (size!34699 (_ BitVec 32))) )
))
(declare-fun lt!490092 () array!70988)

(declare-datatypes ((List!23991 0))(
  ( (Nil!23988) (Cons!23987 (h!25196 (_ BitVec 64)) (t!34057 List!23991)) )
))
(declare-fun arrayNoDuplicates!0 (array!70988 (_ BitVec 32) List!23991) Bool)

(assert (=> b!1096282 (= res!731758 (arrayNoDuplicates!0 lt!490092 #b00000000000000000000000000000000 Nil!23988))))

(declare-fun b!1096284 () Bool)

(declare-fun res!731756 () Bool)

(declare-fun e!625822 () Bool)

(assert (=> b!1096284 (=> (not res!731756) (not e!625822))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!70988)

(assert (=> b!1096284 (= res!731756 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34699 _keys!1070))))))

(declare-fun b!1096285 () Bool)

(declare-fun e!625827 () Bool)

(declare-fun tp_is_empty!27063 () Bool)

(assert (=> b!1096285 (= e!625827 tp_is_empty!27063)))

(declare-fun b!1096286 () Bool)

(declare-fun res!731753 () Bool)

(assert (=> b!1096286 (=> (not res!731753) (not e!625822))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1096286 (= res!731753 (and (= (size!34698 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34699 _keys!1070) (size!34698 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096287 () Bool)

(declare-fun res!731754 () Bool)

(assert (=> b!1096287 (=> (not res!731754) (not e!625822))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1096287 (= res!731754 (= (select (arr!34162 _keys!1070) i!650) k0!904))))

(declare-fun b!1096288 () Bool)

(declare-fun res!731755 () Bool)

(assert (=> b!1096288 (=> (not res!731755) (not e!625822))))

(assert (=> b!1096288 (= res!731755 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23988))))

(declare-fun mapIsEmpty!42355 () Bool)

(assert (=> mapIsEmpty!42355 mapRes!42355))

(declare-fun b!1096289 () Bool)

(declare-fun e!625826 () Bool)

(assert (=> b!1096289 (= e!625826 (and e!625827 mapRes!42355))))

(declare-fun condMapEmpty!42355 () Bool)

(declare-fun mapDefault!42355 () ValueCell!12822)

(assert (=> b!1096289 (= condMapEmpty!42355 (= (arr!34161 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12822)) mapDefault!42355)))))

(declare-fun b!1096290 () Bool)

(assert (=> b!1096290 (= e!625824 tp_is_empty!27063)))

(declare-fun b!1096291 () Bool)

(declare-fun res!731759 () Bool)

(assert (=> b!1096291 (=> (not res!731759) (not e!625822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096291 (= res!731759 (validKeyInArray!0 k0!904))))

(declare-fun res!731760 () Bool)

(assert (=> start!96470 (=> (not res!731760) (not e!625822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96470 (= res!731760 (validMask!0 mask!1414))))

(assert (=> start!96470 e!625822))

(assert (=> start!96470 tp!80966))

(assert (=> start!96470 true))

(assert (=> start!96470 tp_is_empty!27063))

(declare-fun array_inv!26176 (array!70988) Bool)

(assert (=> start!96470 (array_inv!26176 _keys!1070)))

(declare-fun array_inv!26177 (array!70986) Bool)

(assert (=> start!96470 (and (array_inv!26177 _values!874) e!625826)))

(declare-fun b!1096283 () Bool)

(declare-fun res!731757 () Bool)

(assert (=> b!1096283 (=> (not res!731757) (not e!625822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70988 (_ BitVec 32)) Bool)

(assert (=> b!1096283 (= res!731757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096292 () Bool)

(assert (=> b!1096292 (= e!625825 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41211)

(declare-datatypes ((tuple2!17316 0))(
  ( (tuple2!17317 (_1!8668 (_ BitVec 64)) (_2!8668 V!41211)) )
))
(declare-datatypes ((List!23992 0))(
  ( (Nil!23989) (Cons!23988 (h!25197 tuple2!17316) (t!34058 List!23992)) )
))
(declare-datatypes ((ListLongMap!15297 0))(
  ( (ListLongMap!15298 (toList!7664 List!23992)) )
))
(declare-fun lt!490093 () ListLongMap!15297)

(declare-fun zeroValue!831 () V!41211)

(declare-fun getCurrentListMapNoExtraKeys!4151 (array!70988 array!70986 (_ BitVec 32) (_ BitVec 32) V!41211 V!41211 (_ BitVec 32) Int) ListLongMap!15297)

(declare-fun dynLambda!2282 (Int (_ BitVec 64)) V!41211)

(assert (=> b!1096292 (= lt!490093 (getCurrentListMapNoExtraKeys!4151 lt!490092 (array!70987 (store (arr!34161 _values!874) i!650 (ValueCellFull!12822 (dynLambda!2282 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34698 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490091 () ListLongMap!15297)

(assert (=> b!1096292 (= lt!490091 (getCurrentListMapNoExtraKeys!4151 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096292 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36001 0))(
  ( (Unit!36002) )
))
(declare-fun lt!490094 () Unit!36001)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70988 (_ BitVec 64) (_ BitVec 32)) Unit!36001)

(assert (=> b!1096292 (= lt!490094 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1096293 () Bool)

(assert (=> b!1096293 (= e!625822 e!625825)))

(declare-fun res!731752 () Bool)

(assert (=> b!1096293 (=> (not res!731752) (not e!625825))))

(assert (=> b!1096293 (= res!731752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490092 mask!1414))))

(assert (=> b!1096293 (= lt!490092 (array!70989 (store (arr!34162 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34699 _keys!1070)))))

(assert (= (and start!96470 res!731760) b!1096286))

(assert (= (and b!1096286 res!731753) b!1096283))

(assert (= (and b!1096283 res!731757) b!1096288))

(assert (= (and b!1096288 res!731755) b!1096284))

(assert (= (and b!1096284 res!731756) b!1096291))

(assert (= (and b!1096291 res!731759) b!1096287))

(assert (= (and b!1096287 res!731754) b!1096293))

(assert (= (and b!1096293 res!731752) b!1096282))

(assert (= (and b!1096282 res!731758) b!1096292))

(assert (= (and b!1096289 condMapEmpty!42355) mapIsEmpty!42355))

(assert (= (and b!1096289 (not condMapEmpty!42355)) mapNonEmpty!42355))

(get-info :version)

(assert (= (and mapNonEmpty!42355 ((_ is ValueCellFull!12822) mapValue!42355)) b!1096290))

(assert (= (and b!1096289 ((_ is ValueCellFull!12822) mapDefault!42355)) b!1096285))

(assert (= start!96470 b!1096289))

(declare-fun b_lambda!17701 () Bool)

(assert (=> (not b_lambda!17701) (not b!1096292)))

(declare-fun t!34056 () Bool)

(declare-fun tb!7887 () Bool)

(assert (=> (and start!96470 (= defaultEntry!882 defaultEntry!882) t!34056) tb!7887))

(declare-fun result!16289 () Bool)

(assert (=> tb!7887 (= result!16289 tp_is_empty!27063)))

(assert (=> b!1096292 t!34056))

(declare-fun b_and!36709 () Bool)

(assert (= b_and!36707 (and (=> t!34056 result!16289) b_and!36709)))

(declare-fun m!1015961 () Bool)

(assert (=> b!1096293 m!1015961))

(declare-fun m!1015963 () Bool)

(assert (=> b!1096293 m!1015963))

(declare-fun m!1015965 () Bool)

(assert (=> b!1096282 m!1015965))

(declare-fun m!1015967 () Bool)

(assert (=> b!1096291 m!1015967))

(declare-fun m!1015969 () Bool)

(assert (=> b!1096292 m!1015969))

(declare-fun m!1015971 () Bool)

(assert (=> b!1096292 m!1015971))

(declare-fun m!1015973 () Bool)

(assert (=> b!1096292 m!1015973))

(declare-fun m!1015975 () Bool)

(assert (=> b!1096292 m!1015975))

(declare-fun m!1015977 () Bool)

(assert (=> b!1096292 m!1015977))

(declare-fun m!1015979 () Bool)

(assert (=> b!1096292 m!1015979))

(declare-fun m!1015981 () Bool)

(assert (=> b!1096288 m!1015981))

(declare-fun m!1015983 () Bool)

(assert (=> b!1096287 m!1015983))

(declare-fun m!1015985 () Bool)

(assert (=> b!1096283 m!1015985))

(declare-fun m!1015987 () Bool)

(assert (=> mapNonEmpty!42355 m!1015987))

(declare-fun m!1015989 () Bool)

(assert (=> start!96470 m!1015989))

(declare-fun m!1015991 () Bool)

(assert (=> start!96470 m!1015991))

(declare-fun m!1015993 () Bool)

(assert (=> start!96470 m!1015993))

(check-sat (not mapNonEmpty!42355) (not b_next!23013) b_and!36709 (not b!1096291) (not b_lambda!17701) (not b!1096283) tp_is_empty!27063 (not start!96470) (not b!1096282) (not b!1096293) (not b!1096292) (not b!1096288))
(check-sat b_and!36709 (not b_next!23013))

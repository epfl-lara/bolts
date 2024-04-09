; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96410 () Bool)

(assert start!96410)

(declare-fun b_free!22953 () Bool)

(declare-fun b_next!22953 () Bool)

(assert (=> start!96410 (= b_free!22953 (not b_next!22953))))

(declare-fun tp!80786 () Bool)

(declare-fun b_and!36597 () Bool)

(assert (=> start!96410 (= tp!80786 b_and!36597)))

(declare-fun b!1095152 () Bool)

(declare-fun res!730948 () Bool)

(declare-fun e!625282 () Bool)

(assert (=> b!1095152 (=> (not res!730948) (not e!625282))))

(declare-datatypes ((array!70874 0))(
  ( (array!70875 (arr!34105 (Array (_ BitVec 32) (_ BitVec 64))) (size!34642 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70874)

(declare-datatypes ((List!23953 0))(
  ( (Nil!23950) (Cons!23949 (h!25158 (_ BitVec 64)) (t!33967 List!23953)) )
))
(declare-fun arrayNoDuplicates!0 (array!70874 (_ BitVec 32) List!23953) Bool)

(assert (=> b!1095152 (= res!730948 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23950))))

(declare-fun b!1095153 () Bool)

(declare-fun e!625284 () Bool)

(declare-fun tp_is_empty!27003 () Bool)

(assert (=> b!1095153 (= e!625284 tp_is_empty!27003)))

(declare-fun b!1095154 () Bool)

(declare-fun e!625283 () Bool)

(assert (=> b!1095154 (= e!625283 tp_is_empty!27003)))

(declare-fun b!1095155 () Bool)

(declare-fun e!625287 () Bool)

(declare-fun mapRes!42265 () Bool)

(assert (=> b!1095155 (= e!625287 (and e!625283 mapRes!42265))))

(declare-fun condMapEmpty!42265 () Bool)

(declare-datatypes ((V!41131 0))(
  ( (V!41132 (val!13558 Int)) )
))
(declare-datatypes ((ValueCell!12792 0))(
  ( (ValueCellFull!12792 (v!16180 V!41131)) (EmptyCell!12792) )
))
(declare-datatypes ((array!70876 0))(
  ( (array!70877 (arr!34106 (Array (_ BitVec 32) ValueCell!12792)) (size!34643 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70876)

(declare-fun mapDefault!42265 () ValueCell!12792)

(assert (=> b!1095155 (= condMapEmpty!42265 (= (arr!34106 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12792)) mapDefault!42265)))))

(declare-fun res!730942 () Bool)

(assert (=> start!96410 (=> (not res!730942) (not e!625282))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96410 (= res!730942 (validMask!0 mask!1414))))

(assert (=> start!96410 e!625282))

(assert (=> start!96410 tp!80786))

(assert (=> start!96410 true))

(assert (=> start!96410 tp_is_empty!27003))

(declare-fun array_inv!26134 (array!70874) Bool)

(assert (=> start!96410 (array_inv!26134 _keys!1070)))

(declare-fun array_inv!26135 (array!70876) Bool)

(assert (=> start!96410 (and (array_inv!26135 _values!874) e!625287)))

(declare-fun b!1095156 () Bool)

(declare-fun res!730947 () Bool)

(assert (=> b!1095156 (=> (not res!730947) (not e!625282))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095156 (= res!730947 (= (select (arr!34105 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!42265 () Bool)

(assert (=> mapIsEmpty!42265 mapRes!42265))

(declare-fun b!1095157 () Bool)

(declare-fun res!730945 () Bool)

(assert (=> b!1095157 (=> (not res!730945) (not e!625282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70874 (_ BitVec 32)) Bool)

(assert (=> b!1095157 (= res!730945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095158 () Bool)

(declare-fun e!625285 () Bool)

(assert (=> b!1095158 (= e!625282 e!625285)))

(declare-fun res!730946 () Bool)

(assert (=> b!1095158 (=> (not res!730946) (not e!625285))))

(declare-fun lt!489744 () array!70874)

(assert (=> b!1095158 (= res!730946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489744 mask!1414))))

(assert (=> b!1095158 (= lt!489744 (array!70875 (store (arr!34105 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34642 _keys!1070)))))

(declare-fun b!1095159 () Bool)

(declare-fun res!730944 () Bool)

(assert (=> b!1095159 (=> (not res!730944) (not e!625282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095159 (= res!730944 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!42265 () Bool)

(declare-fun tp!80787 () Bool)

(assert (=> mapNonEmpty!42265 (= mapRes!42265 (and tp!80787 e!625284))))

(declare-fun mapRest!42265 () (Array (_ BitVec 32) ValueCell!12792))

(declare-fun mapValue!42265 () ValueCell!12792)

(declare-fun mapKey!42265 () (_ BitVec 32))

(assert (=> mapNonEmpty!42265 (= (arr!34106 _values!874) (store mapRest!42265 mapKey!42265 mapValue!42265))))

(declare-fun b!1095160 () Bool)

(declare-fun res!730949 () Bool)

(assert (=> b!1095160 (=> (not res!730949) (not e!625282))))

(assert (=> b!1095160 (= res!730949 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34642 _keys!1070))))))

(declare-fun b!1095161 () Bool)

(assert (=> b!1095161 (= e!625285 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41131)

(declare-datatypes ((tuple2!17282 0))(
  ( (tuple2!17283 (_1!8651 (_ BitVec 64)) (_2!8651 V!41131)) )
))
(declare-datatypes ((List!23954 0))(
  ( (Nil!23951) (Cons!23950 (h!25159 tuple2!17282) (t!33968 List!23954)) )
))
(declare-datatypes ((ListLongMap!15263 0))(
  ( (ListLongMap!15264 (toList!7647 List!23954)) )
))
(declare-fun lt!489745 () ListLongMap!15263)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41131)

(declare-fun getCurrentListMapNoExtraKeys!4134 (array!70874 array!70876 (_ BitVec 32) (_ BitVec 32) V!41131 V!41131 (_ BitVec 32) Int) ListLongMap!15263)

(assert (=> b!1095161 (= lt!489745 (getCurrentListMapNoExtraKeys!4134 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095161 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35967 0))(
  ( (Unit!35968) )
))
(declare-fun lt!489746 () Unit!35967)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70874 (_ BitVec 64) (_ BitVec 32)) Unit!35967)

(assert (=> b!1095161 (= lt!489746 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1095162 () Bool)

(declare-fun res!730950 () Bool)

(assert (=> b!1095162 (=> (not res!730950) (not e!625282))))

(assert (=> b!1095162 (= res!730950 (and (= (size!34643 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34642 _keys!1070) (size!34643 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095163 () Bool)

(declare-fun res!730943 () Bool)

(assert (=> b!1095163 (=> (not res!730943) (not e!625285))))

(assert (=> b!1095163 (= res!730943 (arrayNoDuplicates!0 lt!489744 #b00000000000000000000000000000000 Nil!23950))))

(assert (= (and start!96410 res!730942) b!1095162))

(assert (= (and b!1095162 res!730950) b!1095157))

(assert (= (and b!1095157 res!730945) b!1095152))

(assert (= (and b!1095152 res!730948) b!1095160))

(assert (= (and b!1095160 res!730949) b!1095159))

(assert (= (and b!1095159 res!730944) b!1095156))

(assert (= (and b!1095156 res!730947) b!1095158))

(assert (= (and b!1095158 res!730946) b!1095163))

(assert (= (and b!1095163 res!730943) b!1095161))

(assert (= (and b!1095155 condMapEmpty!42265) mapIsEmpty!42265))

(assert (= (and b!1095155 (not condMapEmpty!42265)) mapNonEmpty!42265))

(get-info :version)

(assert (= (and mapNonEmpty!42265 ((_ is ValueCellFull!12792) mapValue!42265)) b!1095153))

(assert (= (and b!1095155 ((_ is ValueCellFull!12792) mapDefault!42265)) b!1095154))

(assert (= start!96410 b!1095155))

(declare-fun m!1014971 () Bool)

(assert (=> b!1095161 m!1014971))

(declare-fun m!1014973 () Bool)

(assert (=> b!1095161 m!1014973))

(declare-fun m!1014975 () Bool)

(assert (=> b!1095161 m!1014975))

(declare-fun m!1014977 () Bool)

(assert (=> b!1095156 m!1014977))

(declare-fun m!1014979 () Bool)

(assert (=> b!1095163 m!1014979))

(declare-fun m!1014981 () Bool)

(assert (=> mapNonEmpty!42265 m!1014981))

(declare-fun m!1014983 () Bool)

(assert (=> b!1095158 m!1014983))

(declare-fun m!1014985 () Bool)

(assert (=> b!1095158 m!1014985))

(declare-fun m!1014987 () Bool)

(assert (=> b!1095152 m!1014987))

(declare-fun m!1014989 () Bool)

(assert (=> b!1095159 m!1014989))

(declare-fun m!1014991 () Bool)

(assert (=> b!1095157 m!1014991))

(declare-fun m!1014993 () Bool)

(assert (=> start!96410 m!1014993))

(declare-fun m!1014995 () Bool)

(assert (=> start!96410 m!1014995))

(declare-fun m!1014997 () Bool)

(assert (=> start!96410 m!1014997))

(check-sat b_and!36597 (not b!1095159) (not start!96410) (not b!1095152) tp_is_empty!27003 (not b_next!22953) (not b!1095161) (not b!1095163) (not b!1095158) (not mapNonEmpty!42265) (not b!1095157))
(check-sat b_and!36597 (not b_next!22953))

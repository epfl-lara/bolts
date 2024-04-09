; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96458 () Bool)

(assert start!96458)

(declare-fun b_free!23001 () Bool)

(declare-fun b_next!23001 () Bool)

(assert (=> start!96458 (= b_free!23001 (not b_next!23001))))

(declare-fun tp!80931 () Bool)

(declare-fun b_and!36683 () Bool)

(assert (=> start!96458 (= tp!80931 b_and!36683)))

(declare-fun b!1096054 () Bool)

(declare-fun res!731591 () Bool)

(declare-fun e!625717 () Bool)

(assert (=> b!1096054 (=> (not res!731591) (not e!625717))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096054 (= res!731591 (validKeyInArray!0 k0!904))))

(declare-fun b!1096055 () Bool)

(declare-fun e!625715 () Bool)

(declare-fun e!625716 () Bool)

(declare-fun mapRes!42337 () Bool)

(assert (=> b!1096055 (= e!625715 (and e!625716 mapRes!42337))))

(declare-fun condMapEmpty!42337 () Bool)

(declare-datatypes ((V!41195 0))(
  ( (V!41196 (val!13582 Int)) )
))
(declare-datatypes ((ValueCell!12816 0))(
  ( (ValueCellFull!12816 (v!16204 V!41195)) (EmptyCell!12816) )
))
(declare-datatypes ((array!70964 0))(
  ( (array!70965 (arr!34150 (Array (_ BitVec 32) ValueCell!12816)) (size!34687 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70964)

(declare-fun mapDefault!42337 () ValueCell!12816)

(assert (=> b!1096055 (= condMapEmpty!42337 (= (arr!34150 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12816)) mapDefault!42337)))))

(declare-fun mapIsEmpty!42337 () Bool)

(assert (=> mapIsEmpty!42337 mapRes!42337))

(declare-fun res!731593 () Bool)

(assert (=> start!96458 (=> (not res!731593) (not e!625717))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96458 (= res!731593 (validMask!0 mask!1414))))

(assert (=> start!96458 e!625717))

(assert (=> start!96458 tp!80931))

(assert (=> start!96458 true))

(declare-fun tp_is_empty!27051 () Bool)

(assert (=> start!96458 tp_is_empty!27051))

(declare-datatypes ((array!70966 0))(
  ( (array!70967 (arr!34151 (Array (_ BitVec 32) (_ BitVec 64))) (size!34688 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70966)

(declare-fun array_inv!26166 (array!70966) Bool)

(assert (=> start!96458 (array_inv!26166 _keys!1070)))

(declare-fun array_inv!26167 (array!70964) Bool)

(assert (=> start!96458 (and (array_inv!26167 _values!874) e!625715)))

(declare-fun mapNonEmpty!42337 () Bool)

(declare-fun tp!80930 () Bool)

(declare-fun e!625718 () Bool)

(assert (=> mapNonEmpty!42337 (= mapRes!42337 (and tp!80930 e!625718))))

(declare-fun mapKey!42337 () (_ BitVec 32))

(declare-fun mapValue!42337 () ValueCell!12816)

(declare-fun mapRest!42337 () (Array (_ BitVec 32) ValueCell!12816))

(assert (=> mapNonEmpty!42337 (= (arr!34150 _values!874) (store mapRest!42337 mapKey!42337 mapValue!42337))))

(declare-fun b!1096056 () Bool)

(declare-fun e!625714 () Bool)

(assert (=> b!1096056 (= e!625717 e!625714)))

(declare-fun res!731597 () Bool)

(assert (=> b!1096056 (=> (not res!731597) (not e!625714))))

(declare-fun lt!490021 () array!70966)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70966 (_ BitVec 32)) Bool)

(assert (=> b!1096056 (= res!731597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490021 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096056 (= lt!490021 (array!70967 (store (arr!34151 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34688 _keys!1070)))))

(declare-fun b!1096057 () Bool)

(declare-fun res!731590 () Bool)

(assert (=> b!1096057 (=> (not res!731590) (not e!625717))))

(declare-datatypes ((List!23982 0))(
  ( (Nil!23979) (Cons!23978 (h!25187 (_ BitVec 64)) (t!34036 List!23982)) )
))
(declare-fun arrayNoDuplicates!0 (array!70966 (_ BitVec 32) List!23982) Bool)

(assert (=> b!1096057 (= res!731590 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23979))))

(declare-fun b!1096058 () Bool)

(declare-fun res!731596 () Bool)

(assert (=> b!1096058 (=> (not res!731596) (not e!625717))))

(assert (=> b!1096058 (= res!731596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096059 () Bool)

(assert (=> b!1096059 (= e!625716 tp_is_empty!27051)))

(declare-fun b!1096060 () Bool)

(declare-fun res!731595 () Bool)

(assert (=> b!1096060 (=> (not res!731595) (not e!625717))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1096060 (= res!731595 (and (= (size!34687 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34688 _keys!1070) (size!34687 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096061 () Bool)

(assert (=> b!1096061 (= e!625714 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41195)

(declare-datatypes ((tuple2!17308 0))(
  ( (tuple2!17309 (_1!8664 (_ BitVec 64)) (_2!8664 V!41195)) )
))
(declare-datatypes ((List!23983 0))(
  ( (Nil!23980) (Cons!23979 (h!25188 tuple2!17308) (t!34037 List!23983)) )
))
(declare-datatypes ((ListLongMap!15289 0))(
  ( (ListLongMap!15290 (toList!7660 List!23983)) )
))
(declare-fun lt!490020 () ListLongMap!15289)

(declare-fun zeroValue!831 () V!41195)

(declare-fun getCurrentListMapNoExtraKeys!4147 (array!70966 array!70964 (_ BitVec 32) (_ BitVec 32) V!41195 V!41195 (_ BitVec 32) Int) ListLongMap!15289)

(declare-fun dynLambda!2278 (Int (_ BitVec 64)) V!41195)

(assert (=> b!1096061 (= lt!490020 (getCurrentListMapNoExtraKeys!4147 lt!490021 (array!70965 (store (arr!34150 _values!874) i!650 (ValueCellFull!12816 (dynLambda!2278 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34687 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490019 () ListLongMap!15289)

(assert (=> b!1096061 (= lt!490019 (getCurrentListMapNoExtraKeys!4147 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096061 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35993 0))(
  ( (Unit!35994) )
))
(declare-fun lt!490022 () Unit!35993)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70966 (_ BitVec 64) (_ BitVec 32)) Unit!35993)

(assert (=> b!1096061 (= lt!490022 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1096062 () Bool)

(declare-fun res!731592 () Bool)

(assert (=> b!1096062 (=> (not res!731592) (not e!625717))))

(assert (=> b!1096062 (= res!731592 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34688 _keys!1070))))))

(declare-fun b!1096063 () Bool)

(declare-fun res!731594 () Bool)

(assert (=> b!1096063 (=> (not res!731594) (not e!625714))))

(assert (=> b!1096063 (= res!731594 (arrayNoDuplicates!0 lt!490021 #b00000000000000000000000000000000 Nil!23979))))

(declare-fun b!1096064 () Bool)

(assert (=> b!1096064 (= e!625718 tp_is_empty!27051)))

(declare-fun b!1096065 () Bool)

(declare-fun res!731598 () Bool)

(assert (=> b!1096065 (=> (not res!731598) (not e!625717))))

(assert (=> b!1096065 (= res!731598 (= (select (arr!34151 _keys!1070) i!650) k0!904))))

(assert (= (and start!96458 res!731593) b!1096060))

(assert (= (and b!1096060 res!731595) b!1096058))

(assert (= (and b!1096058 res!731596) b!1096057))

(assert (= (and b!1096057 res!731590) b!1096062))

(assert (= (and b!1096062 res!731592) b!1096054))

(assert (= (and b!1096054 res!731591) b!1096065))

(assert (= (and b!1096065 res!731598) b!1096056))

(assert (= (and b!1096056 res!731597) b!1096063))

(assert (= (and b!1096063 res!731594) b!1096061))

(assert (= (and b!1096055 condMapEmpty!42337) mapIsEmpty!42337))

(assert (= (and b!1096055 (not condMapEmpty!42337)) mapNonEmpty!42337))

(get-info :version)

(assert (= (and mapNonEmpty!42337 ((_ is ValueCellFull!12816) mapValue!42337)) b!1096064))

(assert (= (and b!1096055 ((_ is ValueCellFull!12816) mapDefault!42337)) b!1096059))

(assert (= start!96458 b!1096055))

(declare-fun b_lambda!17689 () Bool)

(assert (=> (not b_lambda!17689) (not b!1096061)))

(declare-fun t!34035 () Bool)

(declare-fun tb!7875 () Bool)

(assert (=> (and start!96458 (= defaultEntry!882 defaultEntry!882) t!34035) tb!7875))

(declare-fun result!16265 () Bool)

(assert (=> tb!7875 (= result!16265 tp_is_empty!27051)))

(assert (=> b!1096061 t!34035))

(declare-fun b_and!36685 () Bool)

(assert (= b_and!36683 (and (=> t!34035 result!16265) b_and!36685)))

(declare-fun m!1015757 () Bool)

(assert (=> start!96458 m!1015757))

(declare-fun m!1015759 () Bool)

(assert (=> start!96458 m!1015759))

(declare-fun m!1015761 () Bool)

(assert (=> start!96458 m!1015761))

(declare-fun m!1015763 () Bool)

(assert (=> mapNonEmpty!42337 m!1015763))

(declare-fun m!1015765 () Bool)

(assert (=> b!1096063 m!1015765))

(declare-fun m!1015767 () Bool)

(assert (=> b!1096061 m!1015767))

(declare-fun m!1015769 () Bool)

(assert (=> b!1096061 m!1015769))

(declare-fun m!1015771 () Bool)

(assert (=> b!1096061 m!1015771))

(declare-fun m!1015773 () Bool)

(assert (=> b!1096061 m!1015773))

(declare-fun m!1015775 () Bool)

(assert (=> b!1096061 m!1015775))

(declare-fun m!1015777 () Bool)

(assert (=> b!1096061 m!1015777))

(declare-fun m!1015779 () Bool)

(assert (=> b!1096058 m!1015779))

(declare-fun m!1015781 () Bool)

(assert (=> b!1096056 m!1015781))

(declare-fun m!1015783 () Bool)

(assert (=> b!1096056 m!1015783))

(declare-fun m!1015785 () Bool)

(assert (=> b!1096054 m!1015785))

(declare-fun m!1015787 () Bool)

(assert (=> b!1096057 m!1015787))

(declare-fun m!1015789 () Bool)

(assert (=> b!1096065 m!1015789))

(check-sat (not b_lambda!17689) (not b!1096057) (not b_next!23001) (not b!1096054) (not mapNonEmpty!42337) (not start!96458) b_and!36685 (not b!1096061) (not b!1096056) tp_is_empty!27051 (not b!1096063) (not b!1096058))
(check-sat b_and!36685 (not b_next!23001))

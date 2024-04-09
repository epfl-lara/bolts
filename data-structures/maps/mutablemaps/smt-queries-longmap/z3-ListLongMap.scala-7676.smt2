; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96440 () Bool)

(assert start!96440)

(declare-fun b_free!22983 () Bool)

(declare-fun b_next!22983 () Bool)

(assert (=> start!96440 (= b_free!22983 (not b_next!22983))))

(declare-fun tp!80876 () Bool)

(declare-fun b_and!36647 () Bool)

(assert (=> start!96440 (= tp!80876 b_and!36647)))

(declare-fun b!1095712 () Bool)

(declare-fun res!731354 () Bool)

(declare-fun e!625555 () Bool)

(assert (=> b!1095712 (=> (not res!731354) (not e!625555))))

(declare-datatypes ((array!70932 0))(
  ( (array!70933 (arr!34134 (Array (_ BitVec 32) (_ BitVec 64))) (size!34671 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70932)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095712 (= res!731354 (= (select (arr!34134 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!42310 () Bool)

(declare-fun mapRes!42310 () Bool)

(assert (=> mapIsEmpty!42310 mapRes!42310))

(declare-fun b!1095713 () Bool)

(declare-fun e!625557 () Bool)

(declare-fun tp_is_empty!27033 () Bool)

(assert (=> b!1095713 (= e!625557 tp_is_empty!27033)))

(declare-fun b!1095714 () Bool)

(declare-fun res!731355 () Bool)

(assert (=> b!1095714 (=> (not res!731355) (not e!625555))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70932 (_ BitVec 32)) Bool)

(assert (=> b!1095714 (= res!731355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095715 () Bool)

(declare-fun res!731349 () Bool)

(declare-fun e!625553 () Bool)

(assert (=> b!1095715 (=> (not res!731349) (not e!625553))))

(declare-fun lt!489914 () array!70932)

(declare-datatypes ((List!23974 0))(
  ( (Nil!23971) (Cons!23970 (h!25179 (_ BitVec 64)) (t!34010 List!23974)) )
))
(declare-fun arrayNoDuplicates!0 (array!70932 (_ BitVec 32) List!23974) Bool)

(assert (=> b!1095715 (= res!731349 (arrayNoDuplicates!0 lt!489914 #b00000000000000000000000000000000 Nil!23971))))

(declare-fun b!1095716 () Bool)

(declare-fun res!731351 () Bool)

(assert (=> b!1095716 (=> (not res!731351) (not e!625555))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41171 0))(
  ( (V!41172 (val!13573 Int)) )
))
(declare-datatypes ((ValueCell!12807 0))(
  ( (ValueCellFull!12807 (v!16195 V!41171)) (EmptyCell!12807) )
))
(declare-datatypes ((array!70934 0))(
  ( (array!70935 (arr!34135 (Array (_ BitVec 32) ValueCell!12807)) (size!34672 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70934)

(assert (=> b!1095716 (= res!731351 (and (= (size!34672 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34671 _keys!1070) (size!34672 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095717 () Bool)

(assert (=> b!1095717 (= e!625553 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41171)

(declare-datatypes ((tuple2!17302 0))(
  ( (tuple2!17303 (_1!8661 (_ BitVec 64)) (_2!8661 V!41171)) )
))
(declare-datatypes ((List!23975 0))(
  ( (Nil!23972) (Cons!23971 (h!25180 tuple2!17302) (t!34011 List!23975)) )
))
(declare-datatypes ((ListLongMap!15283 0))(
  ( (ListLongMap!15284 (toList!7657 List!23975)) )
))
(declare-fun lt!489913 () ListLongMap!15283)

(declare-fun zeroValue!831 () V!41171)

(declare-fun getCurrentListMapNoExtraKeys!4144 (array!70932 array!70934 (_ BitVec 32) (_ BitVec 32) V!41171 V!41171 (_ BitVec 32) Int) ListLongMap!15283)

(declare-fun dynLambda!2275 (Int (_ BitVec 64)) V!41171)

(assert (=> b!1095717 (= lt!489913 (getCurrentListMapNoExtraKeys!4144 lt!489914 (array!70935 (store (arr!34135 _values!874) i!650 (ValueCellFull!12807 (dynLambda!2275 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34672 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489912 () ListLongMap!15283)

(assert (=> b!1095717 (= lt!489912 (getCurrentListMapNoExtraKeys!4144 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095717 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35987 0))(
  ( (Unit!35988) )
))
(declare-fun lt!489911 () Unit!35987)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70932 (_ BitVec 64) (_ BitVec 32)) Unit!35987)

(assert (=> b!1095717 (= lt!489911 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1095718 () Bool)

(declare-fun res!731353 () Bool)

(assert (=> b!1095718 (=> (not res!731353) (not e!625555))))

(assert (=> b!1095718 (= res!731353 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23971))))

(declare-fun b!1095719 () Bool)

(declare-fun res!731347 () Bool)

(assert (=> b!1095719 (=> (not res!731347) (not e!625555))))

(assert (=> b!1095719 (= res!731347 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34671 _keys!1070))))))

(declare-fun res!731350 () Bool)

(assert (=> start!96440 (=> (not res!731350) (not e!625555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96440 (= res!731350 (validMask!0 mask!1414))))

(assert (=> start!96440 e!625555))

(assert (=> start!96440 tp!80876))

(assert (=> start!96440 true))

(assert (=> start!96440 tp_is_empty!27033))

(declare-fun array_inv!26156 (array!70932) Bool)

(assert (=> start!96440 (array_inv!26156 _keys!1070)))

(declare-fun e!625556 () Bool)

(declare-fun array_inv!26157 (array!70934) Bool)

(assert (=> start!96440 (and (array_inv!26157 _values!874) e!625556)))

(declare-fun b!1095720 () Bool)

(assert (=> b!1095720 (= e!625555 e!625553)))

(declare-fun res!731352 () Bool)

(assert (=> b!1095720 (=> (not res!731352) (not e!625553))))

(assert (=> b!1095720 (= res!731352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489914 mask!1414))))

(assert (=> b!1095720 (= lt!489914 (array!70933 (store (arr!34134 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34671 _keys!1070)))))

(declare-fun b!1095721 () Bool)

(declare-fun e!625554 () Bool)

(assert (=> b!1095721 (= e!625554 tp_is_empty!27033)))

(declare-fun b!1095722 () Bool)

(assert (=> b!1095722 (= e!625556 (and e!625554 mapRes!42310))))

(declare-fun condMapEmpty!42310 () Bool)

(declare-fun mapDefault!42310 () ValueCell!12807)

(assert (=> b!1095722 (= condMapEmpty!42310 (= (arr!34135 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12807)) mapDefault!42310)))))

(declare-fun b!1095723 () Bool)

(declare-fun res!731348 () Bool)

(assert (=> b!1095723 (=> (not res!731348) (not e!625555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095723 (= res!731348 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!42310 () Bool)

(declare-fun tp!80877 () Bool)

(assert (=> mapNonEmpty!42310 (= mapRes!42310 (and tp!80877 e!625557))))

(declare-fun mapRest!42310 () (Array (_ BitVec 32) ValueCell!12807))

(declare-fun mapValue!42310 () ValueCell!12807)

(declare-fun mapKey!42310 () (_ BitVec 32))

(assert (=> mapNonEmpty!42310 (= (arr!34135 _values!874) (store mapRest!42310 mapKey!42310 mapValue!42310))))

(assert (= (and start!96440 res!731350) b!1095716))

(assert (= (and b!1095716 res!731351) b!1095714))

(assert (= (and b!1095714 res!731355) b!1095718))

(assert (= (and b!1095718 res!731353) b!1095719))

(assert (= (and b!1095719 res!731347) b!1095723))

(assert (= (and b!1095723 res!731348) b!1095712))

(assert (= (and b!1095712 res!731354) b!1095720))

(assert (= (and b!1095720 res!731352) b!1095715))

(assert (= (and b!1095715 res!731349) b!1095717))

(assert (= (and b!1095722 condMapEmpty!42310) mapIsEmpty!42310))

(assert (= (and b!1095722 (not condMapEmpty!42310)) mapNonEmpty!42310))

(get-info :version)

(assert (= (and mapNonEmpty!42310 ((_ is ValueCellFull!12807) mapValue!42310)) b!1095713))

(assert (= (and b!1095722 ((_ is ValueCellFull!12807) mapDefault!42310)) b!1095721))

(assert (= start!96440 b!1095722))

(declare-fun b_lambda!17671 () Bool)

(assert (=> (not b_lambda!17671) (not b!1095717)))

(declare-fun t!34009 () Bool)

(declare-fun tb!7857 () Bool)

(assert (=> (and start!96440 (= defaultEntry!882 defaultEntry!882) t!34009) tb!7857))

(declare-fun result!16229 () Bool)

(assert (=> tb!7857 (= result!16229 tp_is_empty!27033)))

(assert (=> b!1095717 t!34009))

(declare-fun b_and!36649 () Bool)

(assert (= b_and!36647 (and (=> t!34009 result!16229) b_and!36649)))

(declare-fun m!1015451 () Bool)

(assert (=> b!1095720 m!1015451))

(declare-fun m!1015453 () Bool)

(assert (=> b!1095720 m!1015453))

(declare-fun m!1015455 () Bool)

(assert (=> b!1095712 m!1015455))

(declare-fun m!1015457 () Bool)

(assert (=> b!1095723 m!1015457))

(declare-fun m!1015459 () Bool)

(assert (=> mapNonEmpty!42310 m!1015459))

(declare-fun m!1015461 () Bool)

(assert (=> b!1095715 m!1015461))

(declare-fun m!1015463 () Bool)

(assert (=> start!96440 m!1015463))

(declare-fun m!1015465 () Bool)

(assert (=> start!96440 m!1015465))

(declare-fun m!1015467 () Bool)

(assert (=> start!96440 m!1015467))

(declare-fun m!1015469 () Bool)

(assert (=> b!1095718 m!1015469))

(declare-fun m!1015471 () Bool)

(assert (=> b!1095717 m!1015471))

(declare-fun m!1015473 () Bool)

(assert (=> b!1095717 m!1015473))

(declare-fun m!1015475 () Bool)

(assert (=> b!1095717 m!1015475))

(declare-fun m!1015477 () Bool)

(assert (=> b!1095717 m!1015477))

(declare-fun m!1015479 () Bool)

(assert (=> b!1095717 m!1015479))

(declare-fun m!1015481 () Bool)

(assert (=> b!1095717 m!1015481))

(declare-fun m!1015483 () Bool)

(assert (=> b!1095714 m!1015483))

(check-sat (not b!1095715) (not b!1095714) (not b!1095717) b_and!36649 (not b_next!22983) (not b!1095720) (not mapNonEmpty!42310) (not b!1095718) (not start!96440) (not b!1095723) tp_is_empty!27033 (not b_lambda!17671))
(check-sat b_and!36649 (not b_next!22983))

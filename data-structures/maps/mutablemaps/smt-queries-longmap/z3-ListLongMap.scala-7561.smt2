; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95724 () Bool)

(assert start!95724)

(declare-fun b_free!22341 () Bool)

(declare-fun b_next!22341 () Bool)

(assert (=> start!95724 (= b_free!22341 (not b_next!22341))))

(declare-fun tp!78872 () Bool)

(declare-fun b_and!35375 () Bool)

(assert (=> start!95724 (= tp!78872 b_and!35375)))

(declare-fun b!1081641 () Bool)

(declare-fun res!721064 () Bool)

(declare-fun e!618261 () Bool)

(assert (=> b!1081641 (=> (not res!721064) (not e!618261))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69590 0))(
  ( (array!69591 (arr!33465 (Array (_ BitVec 32) (_ BitVec 64))) (size!34002 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69590)

(declare-datatypes ((V!40251 0))(
  ( (V!40252 (val!13228 Int)) )
))
(declare-datatypes ((ValueCell!12462 0))(
  ( (ValueCellFull!12462 (v!15850 V!40251)) (EmptyCell!12462) )
))
(declare-datatypes ((array!69592 0))(
  ( (array!69593 (arr!33466 (Array (_ BitVec 32) ValueCell!12462)) (size!34003 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69592)

(assert (=> b!1081641 (= res!721064 (and (= (size!34003 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34002 _keys!1070) (size!34003 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081642 () Bool)

(declare-fun e!618262 () Bool)

(declare-fun tp_is_empty!26343 () Bool)

(assert (=> b!1081642 (= e!618262 tp_is_empty!26343)))

(declare-fun res!721059 () Bool)

(assert (=> start!95724 (=> (not res!721059) (not e!618261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95724 (= res!721059 (validMask!0 mask!1414))))

(assert (=> start!95724 e!618261))

(assert (=> start!95724 tp!78872))

(assert (=> start!95724 true))

(assert (=> start!95724 tp_is_empty!26343))

(declare-fun array_inv!25694 (array!69590) Bool)

(assert (=> start!95724 (array_inv!25694 _keys!1070)))

(declare-fun e!618263 () Bool)

(declare-fun array_inv!25695 (array!69592) Bool)

(assert (=> start!95724 (and (array_inv!25695 _values!874) e!618263)))

(declare-fun b!1081643 () Bool)

(declare-fun res!721065 () Bool)

(assert (=> b!1081643 (=> (not res!721065) (not e!618261))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081643 (= res!721065 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34002 _keys!1070))))))

(declare-fun mapNonEmpty!41269 () Bool)

(declare-fun mapRes!41269 () Bool)

(declare-fun tp!78873 () Bool)

(declare-fun e!618265 () Bool)

(assert (=> mapNonEmpty!41269 (= mapRes!41269 (and tp!78873 e!618265))))

(declare-fun mapValue!41269 () ValueCell!12462)

(declare-fun mapKey!41269 () (_ BitVec 32))

(declare-fun mapRest!41269 () (Array (_ BitVec 32) ValueCell!12462))

(assert (=> mapNonEmpty!41269 (= (arr!33466 _values!874) (store mapRest!41269 mapKey!41269 mapValue!41269))))

(declare-fun b!1081644 () Bool)

(declare-fun res!721062 () Bool)

(assert (=> b!1081644 (=> (not res!721062) (not e!618261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69590 (_ BitVec 32)) Bool)

(assert (=> b!1081644 (= res!721062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081645 () Bool)

(assert (=> b!1081645 (= e!618263 (and e!618262 mapRes!41269))))

(declare-fun condMapEmpty!41269 () Bool)

(declare-fun mapDefault!41269 () ValueCell!12462)

(assert (=> b!1081645 (= condMapEmpty!41269 (= (arr!33466 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12462)) mapDefault!41269)))))

(declare-fun b!1081646 () Bool)

(declare-fun res!721066 () Bool)

(declare-fun e!618264 () Bool)

(assert (=> b!1081646 (=> (not res!721066) (not e!618264))))

(declare-fun lt!479360 () array!69590)

(declare-datatypes ((List!23458 0))(
  ( (Nil!23455) (Cons!23454 (h!24663 (_ BitVec 64)) (t!32864 List!23458)) )
))
(declare-fun arrayNoDuplicates!0 (array!69590 (_ BitVec 32) List!23458) Bool)

(assert (=> b!1081646 (= res!721066 (arrayNoDuplicates!0 lt!479360 #b00000000000000000000000000000000 Nil!23455))))

(declare-fun b!1081647 () Bool)

(declare-fun res!721060 () Bool)

(assert (=> b!1081647 (=> (not res!721060) (not e!618261))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1081647 (= res!721060 (= (select (arr!33465 _keys!1070) i!650) k0!904))))

(declare-fun b!1081648 () Bool)

(declare-fun res!721063 () Bool)

(assert (=> b!1081648 (=> (not res!721063) (not e!618261))))

(assert (=> b!1081648 (= res!721063 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23455))))

(declare-fun mapIsEmpty!41269 () Bool)

(assert (=> mapIsEmpty!41269 mapRes!41269))

(declare-fun b!1081649 () Bool)

(assert (=> b!1081649 (= e!618264 (not true))))

(declare-datatypes ((tuple2!16828 0))(
  ( (tuple2!16829 (_1!8424 (_ BitVec 64)) (_2!8424 V!40251)) )
))
(declare-datatypes ((List!23459 0))(
  ( (Nil!23456) (Cons!23455 (h!24664 tuple2!16828) (t!32865 List!23459)) )
))
(declare-datatypes ((ListLongMap!14809 0))(
  ( (ListLongMap!14810 (toList!7420 List!23459)) )
))
(declare-fun lt!479358 () ListLongMap!14809)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40251)

(declare-fun zeroValue!831 () V!40251)

(declare-fun getCurrentListMapNoExtraKeys!3931 (array!69590 array!69592 (_ BitVec 32) (_ BitVec 32) V!40251 V!40251 (_ BitVec 32) Int) ListLongMap!14809)

(declare-fun dynLambda!2067 (Int (_ BitVec 64)) V!40251)

(assert (=> b!1081649 (= lt!479358 (getCurrentListMapNoExtraKeys!3931 lt!479360 (array!69593 (store (arr!33466 _values!874) i!650 (ValueCellFull!12462 (dynLambda!2067 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34003 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479357 () ListLongMap!14809)

(assert (=> b!1081649 (= lt!479357 (getCurrentListMapNoExtraKeys!3931 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081649 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35519 0))(
  ( (Unit!35520) )
))
(declare-fun lt!479359 () Unit!35519)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69590 (_ BitVec 64) (_ BitVec 32)) Unit!35519)

(assert (=> b!1081649 (= lt!479359 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1081650 () Bool)

(declare-fun res!721061 () Bool)

(assert (=> b!1081650 (=> (not res!721061) (not e!618261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081650 (= res!721061 (validKeyInArray!0 k0!904))))

(declare-fun b!1081651 () Bool)

(assert (=> b!1081651 (= e!618265 tp_is_empty!26343)))

(declare-fun b!1081652 () Bool)

(assert (=> b!1081652 (= e!618261 e!618264)))

(declare-fun res!721067 () Bool)

(assert (=> b!1081652 (=> (not res!721067) (not e!618264))))

(assert (=> b!1081652 (= res!721067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479360 mask!1414))))

(assert (=> b!1081652 (= lt!479360 (array!69591 (store (arr!33465 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34002 _keys!1070)))))

(assert (= (and start!95724 res!721059) b!1081641))

(assert (= (and b!1081641 res!721064) b!1081644))

(assert (= (and b!1081644 res!721062) b!1081648))

(assert (= (and b!1081648 res!721063) b!1081643))

(assert (= (and b!1081643 res!721065) b!1081650))

(assert (= (and b!1081650 res!721061) b!1081647))

(assert (= (and b!1081647 res!721060) b!1081652))

(assert (= (and b!1081652 res!721067) b!1081646))

(assert (= (and b!1081646 res!721066) b!1081649))

(assert (= (and b!1081645 condMapEmpty!41269) mapIsEmpty!41269))

(assert (= (and b!1081645 (not condMapEmpty!41269)) mapNonEmpty!41269))

(get-info :version)

(assert (= (and mapNonEmpty!41269 ((_ is ValueCellFull!12462) mapValue!41269)) b!1081651))

(assert (= (and b!1081645 ((_ is ValueCellFull!12462) mapDefault!41269)) b!1081642))

(assert (= start!95724 b!1081645))

(declare-fun b_lambda!17041 () Bool)

(assert (=> (not b_lambda!17041) (not b!1081649)))

(declare-fun t!32863 () Bool)

(declare-fun tb!7227 () Bool)

(assert (=> (and start!95724 (= defaultEntry!882 defaultEntry!882) t!32863) tb!7227))

(declare-fun result!14965 () Bool)

(assert (=> tb!7227 (= result!14965 tp_is_empty!26343)))

(assert (=> b!1081649 t!32863))

(declare-fun b_and!35377 () Bool)

(assert (= b_and!35375 (and (=> t!32863 result!14965) b_and!35377)))

(declare-fun m!999541 () Bool)

(assert (=> b!1081649 m!999541))

(declare-fun m!999543 () Bool)

(assert (=> b!1081649 m!999543))

(declare-fun m!999545 () Bool)

(assert (=> b!1081649 m!999545))

(declare-fun m!999547 () Bool)

(assert (=> b!1081649 m!999547))

(declare-fun m!999549 () Bool)

(assert (=> b!1081649 m!999549))

(declare-fun m!999551 () Bool)

(assert (=> b!1081649 m!999551))

(declare-fun m!999553 () Bool)

(assert (=> b!1081644 m!999553))

(declare-fun m!999555 () Bool)

(assert (=> b!1081647 m!999555))

(declare-fun m!999557 () Bool)

(assert (=> b!1081648 m!999557))

(declare-fun m!999559 () Bool)

(assert (=> b!1081650 m!999559))

(declare-fun m!999561 () Bool)

(assert (=> b!1081652 m!999561))

(declare-fun m!999563 () Bool)

(assert (=> b!1081652 m!999563))

(declare-fun m!999565 () Bool)

(assert (=> start!95724 m!999565))

(declare-fun m!999567 () Bool)

(assert (=> start!95724 m!999567))

(declare-fun m!999569 () Bool)

(assert (=> start!95724 m!999569))

(declare-fun m!999571 () Bool)

(assert (=> b!1081646 m!999571))

(declare-fun m!999573 () Bool)

(assert (=> mapNonEmpty!41269 m!999573))

(check-sat (not b!1081650) (not b_next!22341) tp_is_empty!26343 b_and!35377 (not b!1081652) (not b!1081644) (not b!1081646) (not b!1081649) (not b!1081648) (not mapNonEmpty!41269) (not b_lambda!17041) (not start!95724))
(check-sat b_and!35377 (not b_next!22341))

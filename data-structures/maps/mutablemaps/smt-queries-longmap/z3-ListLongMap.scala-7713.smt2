; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96948 () Bool)

(assert start!96948)

(declare-fun b_free!23205 () Bool)

(declare-fun b_next!23205 () Bool)

(assert (=> start!96948 (= b_free!23205 (not b_next!23205))))

(declare-fun tp!81575 () Bool)

(declare-fun b_and!37245 () Bool)

(assert (=> start!96948 (= tp!81575 b_and!37245)))

(declare-fun b!1102493 () Bool)

(declare-fun e!629324 () Bool)

(declare-fun tp_is_empty!27255 () Bool)

(assert (=> b!1102493 (= e!629324 tp_is_empty!27255)))

(declare-fun b!1102494 () Bool)

(declare-fun res!735702 () Bool)

(declare-fun e!629325 () Bool)

(assert (=> b!1102494 (=> (not res!735702) (not e!629325))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1102494 (= res!735702 (validKeyInArray!0 k0!904))))

(declare-fun b!1102495 () Bool)

(declare-fun e!629321 () Bool)

(assert (=> b!1102495 (= e!629325 e!629321)))

(declare-fun res!735701 () Bool)

(assert (=> b!1102495 (=> (not res!735701) (not e!629321))))

(declare-datatypes ((array!71386 0))(
  ( (array!71387 (arr!34350 (Array (_ BitVec 32) (_ BitVec 64))) (size!34887 (_ BitVec 32))) )
))
(declare-fun lt!494674 () array!71386)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71386 (_ BitVec 32)) Bool)

(assert (=> b!1102495 (= res!735701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494674 mask!1414))))

(declare-fun _keys!1070 () array!71386)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1102495 (= lt!494674 (array!71387 (store (arr!34350 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34887 _keys!1070)))))

(declare-fun mapNonEmpty!42676 () Bool)

(declare-fun mapRes!42676 () Bool)

(declare-fun tp!81576 () Bool)

(assert (=> mapNonEmpty!42676 (= mapRes!42676 (and tp!81576 e!629324))))

(declare-datatypes ((V!41467 0))(
  ( (V!41468 (val!13684 Int)) )
))
(declare-datatypes ((ValueCell!12918 0))(
  ( (ValueCellFull!12918 (v!16316 V!41467)) (EmptyCell!12918) )
))
(declare-fun mapRest!42676 () (Array (_ BitVec 32) ValueCell!12918))

(declare-datatypes ((array!71388 0))(
  ( (array!71389 (arr!34351 (Array (_ BitVec 32) ValueCell!12918)) (size!34888 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71388)

(declare-fun mapValue!42676 () ValueCell!12918)

(declare-fun mapKey!42676 () (_ BitVec 32))

(assert (=> mapNonEmpty!42676 (= (arr!34351 _values!874) (store mapRest!42676 mapKey!42676 mapValue!42676))))

(declare-fun b!1102496 () Bool)

(declare-fun res!735699 () Bool)

(assert (=> b!1102496 (=> (not res!735699) (not e!629325))))

(declare-datatypes ((List!24148 0))(
  ( (Nil!24145) (Cons!24144 (h!25353 (_ BitVec 64)) (t!34406 List!24148)) )
))
(declare-fun arrayNoDuplicates!0 (array!71386 (_ BitVec 32) List!24148) Bool)

(assert (=> b!1102496 (= res!735699 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24145))))

(declare-fun b!1102497 () Bool)

(declare-fun res!735700 () Bool)

(assert (=> b!1102497 (=> (not res!735700) (not e!629321))))

(assert (=> b!1102497 (= res!735700 (arrayNoDuplicates!0 lt!494674 #b00000000000000000000000000000000 Nil!24145))))

(declare-fun mapIsEmpty!42676 () Bool)

(assert (=> mapIsEmpty!42676 mapRes!42676))

(declare-fun b!1102498 () Bool)

(declare-fun e!629320 () Bool)

(declare-fun e!629322 () Bool)

(assert (=> b!1102498 (= e!629320 (and e!629322 mapRes!42676))))

(declare-fun condMapEmpty!42676 () Bool)

(declare-fun mapDefault!42676 () ValueCell!12918)

(assert (=> b!1102498 (= condMapEmpty!42676 (= (arr!34351 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12918)) mapDefault!42676)))))

(declare-fun b!1102499 () Bool)

(declare-fun res!735697 () Bool)

(assert (=> b!1102499 (=> (not res!735697) (not e!629325))))

(assert (=> b!1102499 (= res!735697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102500 () Bool)

(declare-fun res!735698 () Bool)

(assert (=> b!1102500 (=> (not res!735698) (not e!629325))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1102500 (= res!735698 (and (= (size!34888 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34887 _keys!1070) (size!34888 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1102501 () Bool)

(declare-fun res!735704 () Bool)

(assert (=> b!1102501 (=> (not res!735704) (not e!629325))))

(assert (=> b!1102501 (= res!735704 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34887 _keys!1070))))))

(declare-fun b!1102502 () Bool)

(assert (=> b!1102502 (= e!629321 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17476 0))(
  ( (tuple2!17477 (_1!8748 (_ BitVec 64)) (_2!8748 V!41467)) )
))
(declare-datatypes ((List!24149 0))(
  ( (Nil!24146) (Cons!24145 (h!25354 tuple2!17476) (t!34407 List!24149)) )
))
(declare-datatypes ((ListLongMap!15457 0))(
  ( (ListLongMap!15458 (toList!7744 List!24149)) )
))
(declare-fun lt!494673 () ListLongMap!15457)

(declare-fun minValue!831 () V!41467)

(declare-fun zeroValue!831 () V!41467)

(declare-fun getCurrentListMap!4427 (array!71386 array!71388 (_ BitVec 32) (_ BitVec 32) V!41467 V!41467 (_ BitVec 32) Int) ListLongMap!15457)

(assert (=> b!1102502 (= lt!494673 (getCurrentListMap!4427 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494667 () ListLongMap!15457)

(declare-fun lt!494672 () array!71388)

(assert (=> b!1102502 (= lt!494667 (getCurrentListMap!4427 lt!494674 lt!494672 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494671 () ListLongMap!15457)

(declare-fun lt!494668 () ListLongMap!15457)

(assert (=> b!1102502 (and (= lt!494671 lt!494668) (= lt!494668 lt!494671))))

(declare-fun lt!494670 () ListLongMap!15457)

(declare-fun -!981 (ListLongMap!15457 (_ BitVec 64)) ListLongMap!15457)

(assert (=> b!1102502 (= lt!494668 (-!981 lt!494670 k0!904))))

(declare-datatypes ((Unit!36163 0))(
  ( (Unit!36164) )
))
(declare-fun lt!494666 () Unit!36163)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!239 (array!71386 array!71388 (_ BitVec 32) (_ BitVec 32) V!41467 V!41467 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36163)

(assert (=> b!1102502 (= lt!494666 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!239 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4214 (array!71386 array!71388 (_ BitVec 32) (_ BitVec 32) V!41467 V!41467 (_ BitVec 32) Int) ListLongMap!15457)

(assert (=> b!1102502 (= lt!494671 (getCurrentListMapNoExtraKeys!4214 lt!494674 lt!494672 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2345 (Int (_ BitVec 64)) V!41467)

(assert (=> b!1102502 (= lt!494672 (array!71389 (store (arr!34351 _values!874) i!650 (ValueCellFull!12918 (dynLambda!2345 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34888 _values!874)))))

(assert (=> b!1102502 (= lt!494670 (getCurrentListMapNoExtraKeys!4214 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1102502 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!494669 () Unit!36163)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71386 (_ BitVec 64) (_ BitVec 32)) Unit!36163)

(assert (=> b!1102502 (= lt!494669 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1102503 () Bool)

(assert (=> b!1102503 (= e!629322 tp_is_empty!27255)))

(declare-fun b!1102504 () Bool)

(declare-fun res!735705 () Bool)

(assert (=> b!1102504 (=> (not res!735705) (not e!629325))))

(assert (=> b!1102504 (= res!735705 (= (select (arr!34350 _keys!1070) i!650) k0!904))))

(declare-fun res!735703 () Bool)

(assert (=> start!96948 (=> (not res!735703) (not e!629325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96948 (= res!735703 (validMask!0 mask!1414))))

(assert (=> start!96948 e!629325))

(assert (=> start!96948 tp!81575))

(assert (=> start!96948 true))

(assert (=> start!96948 tp_is_empty!27255))

(declare-fun array_inv!26314 (array!71386) Bool)

(assert (=> start!96948 (array_inv!26314 _keys!1070)))

(declare-fun array_inv!26315 (array!71388) Bool)

(assert (=> start!96948 (and (array_inv!26315 _values!874) e!629320)))

(assert (= (and start!96948 res!735703) b!1102500))

(assert (= (and b!1102500 res!735698) b!1102499))

(assert (= (and b!1102499 res!735697) b!1102496))

(assert (= (and b!1102496 res!735699) b!1102501))

(assert (= (and b!1102501 res!735704) b!1102494))

(assert (= (and b!1102494 res!735702) b!1102504))

(assert (= (and b!1102504 res!735705) b!1102495))

(assert (= (and b!1102495 res!735701) b!1102497))

(assert (= (and b!1102497 res!735700) b!1102502))

(assert (= (and b!1102498 condMapEmpty!42676) mapIsEmpty!42676))

(assert (= (and b!1102498 (not condMapEmpty!42676)) mapNonEmpty!42676))

(get-info :version)

(assert (= (and mapNonEmpty!42676 ((_ is ValueCellFull!12918) mapValue!42676)) b!1102493))

(assert (= (and b!1102498 ((_ is ValueCellFull!12918) mapDefault!42676)) b!1102503))

(assert (= start!96948 b!1102498))

(declare-fun b_lambda!18223 () Bool)

(assert (=> (not b_lambda!18223) (not b!1102502)))

(declare-fun t!34405 () Bool)

(declare-fun tb!8079 () Bool)

(assert (=> (and start!96948 (= defaultEntry!882 defaultEntry!882) t!34405) tb!8079))

(declare-fun result!16695 () Bool)

(assert (=> tb!8079 (= result!16695 tp_is_empty!27255)))

(assert (=> b!1102502 t!34405))

(declare-fun b_and!37247 () Bool)

(assert (= b_and!37245 (and (=> t!34405 result!16695) b_and!37247)))

(declare-fun m!1022933 () Bool)

(assert (=> b!1102495 m!1022933))

(declare-fun m!1022935 () Bool)

(assert (=> b!1102495 m!1022935))

(declare-fun m!1022937 () Bool)

(assert (=> b!1102494 m!1022937))

(declare-fun m!1022939 () Bool)

(assert (=> b!1102499 m!1022939))

(declare-fun m!1022941 () Bool)

(assert (=> b!1102497 m!1022941))

(declare-fun m!1022943 () Bool)

(assert (=> start!96948 m!1022943))

(declare-fun m!1022945 () Bool)

(assert (=> start!96948 m!1022945))

(declare-fun m!1022947 () Bool)

(assert (=> start!96948 m!1022947))

(declare-fun m!1022949 () Bool)

(assert (=> mapNonEmpty!42676 m!1022949))

(declare-fun m!1022951 () Bool)

(assert (=> b!1102504 m!1022951))

(declare-fun m!1022953 () Bool)

(assert (=> b!1102502 m!1022953))

(declare-fun m!1022955 () Bool)

(assert (=> b!1102502 m!1022955))

(declare-fun m!1022957 () Bool)

(assert (=> b!1102502 m!1022957))

(declare-fun m!1022959 () Bool)

(assert (=> b!1102502 m!1022959))

(declare-fun m!1022961 () Bool)

(assert (=> b!1102502 m!1022961))

(declare-fun m!1022963 () Bool)

(assert (=> b!1102502 m!1022963))

(declare-fun m!1022965 () Bool)

(assert (=> b!1102502 m!1022965))

(declare-fun m!1022967 () Bool)

(assert (=> b!1102502 m!1022967))

(declare-fun m!1022969 () Bool)

(assert (=> b!1102502 m!1022969))

(declare-fun m!1022971 () Bool)

(assert (=> b!1102502 m!1022971))

(declare-fun m!1022973 () Bool)

(assert (=> b!1102496 m!1022973))

(check-sat tp_is_empty!27255 (not start!96948) (not b_lambda!18223) (not b_next!23205) (not b!1102494) (not mapNonEmpty!42676) b_and!37247 (not b!1102497) (not b!1102496) (not b!1102499) (not b!1102502) (not b!1102495))
(check-sat b_and!37247 (not b_next!23205))

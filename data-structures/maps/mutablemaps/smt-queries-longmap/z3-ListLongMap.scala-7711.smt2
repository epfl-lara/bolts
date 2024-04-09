; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96912 () Bool)

(assert start!96912)

(declare-fun b_free!23193 () Bool)

(declare-fun b_next!23193 () Bool)

(assert (=> start!96912 (= b_free!23193 (not b_next!23193))))

(declare-fun tp!81537 () Bool)

(declare-fun b_and!37207 () Bool)

(assert (=> start!96912 (= tp!81537 b_and!37207)))

(declare-fun b!1102066 () Bool)

(declare-fun e!629078 () Bool)

(declare-fun e!629079 () Bool)

(assert (=> b!1102066 (= e!629078 e!629079)))

(declare-fun res!735456 () Bool)

(assert (=> b!1102066 (=> (not res!735456) (not e!629079))))

(declare-datatypes ((array!71360 0))(
  ( (array!71361 (arr!34338 (Array (_ BitVec 32) (_ BitVec 64))) (size!34875 (_ BitVec 32))) )
))
(declare-fun lt!494351 () array!71360)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71360 (_ BitVec 32)) Bool)

(assert (=> b!1102066 (= res!735456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494351 mask!1414))))

(declare-fun _keys!1070 () array!71360)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1102066 (= lt!494351 (array!71361 (store (arr!34338 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34875 _keys!1070)))))

(declare-fun b!1102067 () Bool)

(declare-fun res!735447 () Bool)

(assert (=> b!1102067 (=> (not res!735447) (not e!629078))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1102067 (= res!735447 (= (select (arr!34338 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!42655 () Bool)

(declare-fun mapRes!42655 () Bool)

(assert (=> mapIsEmpty!42655 mapRes!42655))

(declare-fun res!735453 () Bool)

(assert (=> start!96912 (=> (not res!735453) (not e!629078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96912 (= res!735453 (validMask!0 mask!1414))))

(assert (=> start!96912 e!629078))

(assert (=> start!96912 tp!81537))

(assert (=> start!96912 true))

(declare-fun tp_is_empty!27243 () Bool)

(assert (=> start!96912 tp_is_empty!27243))

(declare-fun array_inv!26304 (array!71360) Bool)

(assert (=> start!96912 (array_inv!26304 _keys!1070)))

(declare-datatypes ((V!41451 0))(
  ( (V!41452 (val!13678 Int)) )
))
(declare-datatypes ((ValueCell!12912 0))(
  ( (ValueCellFull!12912 (v!16310 V!41451)) (EmptyCell!12912) )
))
(declare-datatypes ((array!71362 0))(
  ( (array!71363 (arr!34339 (Array (_ BitVec 32) ValueCell!12912)) (size!34876 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71362)

(declare-fun e!629080 () Bool)

(declare-fun array_inv!26305 (array!71362) Bool)

(assert (=> start!96912 (and (array_inv!26305 _values!874) e!629080)))

(declare-fun e!629084 () Bool)

(declare-datatypes ((tuple2!17466 0))(
  ( (tuple2!17467 (_1!8743 (_ BitVec 64)) (_2!8743 V!41451)) )
))
(declare-datatypes ((List!24137 0))(
  ( (Nil!24134) (Cons!24133 (h!25342 tuple2!17466) (t!34383 List!24137)) )
))
(declare-datatypes ((ListLongMap!15447 0))(
  ( (ListLongMap!15448 (toList!7739 List!24137)) )
))
(declare-fun lt!494350 () ListLongMap!15447)

(declare-fun b!1102068 () Bool)

(declare-fun lt!494344 () ListLongMap!15447)

(declare-fun -!976 (ListLongMap!15447 (_ BitVec 64)) ListLongMap!15447)

(assert (=> b!1102068 (= e!629084 (= (-!976 lt!494344 k0!904) lt!494350))))

(declare-fun lt!494342 () ListLongMap!15447)

(declare-fun lt!494354 () ListLongMap!15447)

(assert (=> b!1102068 (= (-!976 lt!494342 k0!904) lt!494354)))

(declare-fun minValue!831 () V!41451)

(declare-fun lt!494345 () ListLongMap!15447)

(declare-datatypes ((Unit!36151 0))(
  ( (Unit!36152) )
))
(declare-fun lt!494349 () Unit!36151)

(declare-fun addRemoveCommutativeForDiffKeys!143 (ListLongMap!15447 (_ BitVec 64) V!41451 (_ BitVec 64)) Unit!36151)

(assert (=> b!1102068 (= lt!494349 (addRemoveCommutativeForDiffKeys!143 lt!494345 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1102069 () Bool)

(declare-fun e!629085 () Bool)

(assert (=> b!1102069 (= e!629079 (not e!629085))))

(declare-fun res!735452 () Bool)

(assert (=> b!1102069 (=> res!735452 e!629085)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1102069 (= res!735452 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!41451)

(declare-fun getCurrentListMap!4422 (array!71360 array!71362 (_ BitVec 32) (_ BitVec 32) V!41451 V!41451 (_ BitVec 32) Int) ListLongMap!15447)

(assert (=> b!1102069 (= lt!494344 (getCurrentListMap!4422 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494348 () array!71362)

(assert (=> b!1102069 (= lt!494350 (getCurrentListMap!4422 lt!494351 lt!494348 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494353 () ListLongMap!15447)

(declare-fun lt!494347 () ListLongMap!15447)

(assert (=> b!1102069 (and (= lt!494353 lt!494347) (= lt!494347 lt!494353))))

(assert (=> b!1102069 (= lt!494347 (-!976 lt!494345 k0!904))))

(declare-fun lt!494343 () Unit!36151)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!234 (array!71360 array!71362 (_ BitVec 32) (_ BitVec 32) V!41451 V!41451 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36151)

(assert (=> b!1102069 (= lt!494343 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!234 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4209 (array!71360 array!71362 (_ BitVec 32) (_ BitVec 32) V!41451 V!41451 (_ BitVec 32) Int) ListLongMap!15447)

(assert (=> b!1102069 (= lt!494353 (getCurrentListMapNoExtraKeys!4209 lt!494351 lt!494348 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2340 (Int (_ BitVec 64)) V!41451)

(assert (=> b!1102069 (= lt!494348 (array!71363 (store (arr!34339 _values!874) i!650 (ValueCellFull!12912 (dynLambda!2340 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34876 _values!874)))))

(assert (=> b!1102069 (= lt!494345 (getCurrentListMapNoExtraKeys!4209 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1102069 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!494352 () Unit!36151)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71360 (_ BitVec 64) (_ BitVec 32)) Unit!36151)

(assert (=> b!1102069 (= lt!494352 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1102070 () Bool)

(declare-fun res!735449 () Bool)

(assert (=> b!1102070 (=> (not res!735449) (not e!629078))))

(assert (=> b!1102070 (= res!735449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102071 () Bool)

(assert (=> b!1102071 (= e!629085 e!629084)))

(declare-fun res!735451 () Bool)

(assert (=> b!1102071 (=> res!735451 e!629084)))

(assert (=> b!1102071 (= res!735451 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1102071 (= lt!494344 lt!494342)))

(declare-fun lt!494346 () tuple2!17466)

(declare-fun +!3369 (ListLongMap!15447 tuple2!17466) ListLongMap!15447)

(assert (=> b!1102071 (= lt!494342 (+!3369 lt!494345 lt!494346))))

(assert (=> b!1102071 (= lt!494350 lt!494354)))

(assert (=> b!1102071 (= lt!494354 (+!3369 lt!494347 lt!494346))))

(assert (=> b!1102071 (= lt!494350 (+!3369 lt!494353 lt!494346))))

(assert (=> b!1102071 (= lt!494346 (tuple2!17467 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1102072 () Bool)

(declare-fun res!735450 () Bool)

(assert (=> b!1102072 (=> (not res!735450) (not e!629079))))

(declare-datatypes ((List!24138 0))(
  ( (Nil!24135) (Cons!24134 (h!25343 (_ BitVec 64)) (t!34384 List!24138)) )
))
(declare-fun arrayNoDuplicates!0 (array!71360 (_ BitVec 32) List!24138) Bool)

(assert (=> b!1102072 (= res!735450 (arrayNoDuplicates!0 lt!494351 #b00000000000000000000000000000000 Nil!24135))))

(declare-fun mapNonEmpty!42655 () Bool)

(declare-fun tp!81536 () Bool)

(declare-fun e!629083 () Bool)

(assert (=> mapNonEmpty!42655 (= mapRes!42655 (and tp!81536 e!629083))))

(declare-fun mapKey!42655 () (_ BitVec 32))

(declare-fun mapValue!42655 () ValueCell!12912)

(declare-fun mapRest!42655 () (Array (_ BitVec 32) ValueCell!12912))

(assert (=> mapNonEmpty!42655 (= (arr!34339 _values!874) (store mapRest!42655 mapKey!42655 mapValue!42655))))

(declare-fun b!1102073 () Bool)

(declare-fun res!735454 () Bool)

(assert (=> b!1102073 (=> (not res!735454) (not e!629078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1102073 (= res!735454 (validKeyInArray!0 k0!904))))

(declare-fun b!1102074 () Bool)

(declare-fun e!629082 () Bool)

(assert (=> b!1102074 (= e!629080 (and e!629082 mapRes!42655))))

(declare-fun condMapEmpty!42655 () Bool)

(declare-fun mapDefault!42655 () ValueCell!12912)

(assert (=> b!1102074 (= condMapEmpty!42655 (= (arr!34339 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12912)) mapDefault!42655)))))

(declare-fun b!1102075 () Bool)

(assert (=> b!1102075 (= e!629083 tp_is_empty!27243)))

(declare-fun b!1102076 () Bool)

(declare-fun res!735446 () Bool)

(assert (=> b!1102076 (=> (not res!735446) (not e!629078))))

(assert (=> b!1102076 (= res!735446 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24135))))

(declare-fun b!1102077 () Bool)

(declare-fun res!735455 () Bool)

(assert (=> b!1102077 (=> (not res!735455) (not e!629078))))

(assert (=> b!1102077 (= res!735455 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34875 _keys!1070))))))

(declare-fun b!1102078 () Bool)

(declare-fun res!735448 () Bool)

(assert (=> b!1102078 (=> (not res!735448) (not e!629078))))

(assert (=> b!1102078 (= res!735448 (and (= (size!34876 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34875 _keys!1070) (size!34876 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1102079 () Bool)

(assert (=> b!1102079 (= e!629082 tp_is_empty!27243)))

(assert (= (and start!96912 res!735453) b!1102078))

(assert (= (and b!1102078 res!735448) b!1102070))

(assert (= (and b!1102070 res!735449) b!1102076))

(assert (= (and b!1102076 res!735446) b!1102077))

(assert (= (and b!1102077 res!735455) b!1102073))

(assert (= (and b!1102073 res!735454) b!1102067))

(assert (= (and b!1102067 res!735447) b!1102066))

(assert (= (and b!1102066 res!735456) b!1102072))

(assert (= (and b!1102072 res!735450) b!1102069))

(assert (= (and b!1102069 (not res!735452)) b!1102071))

(assert (= (and b!1102071 (not res!735451)) b!1102068))

(assert (= (and b!1102074 condMapEmpty!42655) mapIsEmpty!42655))

(assert (= (and b!1102074 (not condMapEmpty!42655)) mapNonEmpty!42655))

(get-info :version)

(assert (= (and mapNonEmpty!42655 ((_ is ValueCellFull!12912) mapValue!42655)) b!1102075))

(assert (= (and b!1102074 ((_ is ValueCellFull!12912) mapDefault!42655)) b!1102079))

(assert (= start!96912 b!1102074))

(declare-fun b_lambda!18181 () Bool)

(assert (=> (not b_lambda!18181) (not b!1102069)))

(declare-fun t!34382 () Bool)

(declare-fun tb!8067 () Bool)

(assert (=> (and start!96912 (= defaultEntry!882 defaultEntry!882) t!34382) tb!8067))

(declare-fun result!16669 () Bool)

(assert (=> tb!8067 (= result!16669 tp_is_empty!27243)))

(assert (=> b!1102069 t!34382))

(declare-fun b_and!37209 () Bool)

(assert (= b_and!37207 (and (=> t!34382 result!16669) b_and!37209)))

(declare-fun m!1022469 () Bool)

(assert (=> b!1102072 m!1022469))

(declare-fun m!1022471 () Bool)

(assert (=> b!1102070 m!1022471))

(declare-fun m!1022473 () Bool)

(assert (=> b!1102076 m!1022473))

(declare-fun m!1022475 () Bool)

(assert (=> b!1102067 m!1022475))

(declare-fun m!1022477 () Bool)

(assert (=> mapNonEmpty!42655 m!1022477))

(declare-fun m!1022479 () Bool)

(assert (=> b!1102069 m!1022479))

(declare-fun m!1022481 () Bool)

(assert (=> b!1102069 m!1022481))

(declare-fun m!1022483 () Bool)

(assert (=> b!1102069 m!1022483))

(declare-fun m!1022485 () Bool)

(assert (=> b!1102069 m!1022485))

(declare-fun m!1022487 () Bool)

(assert (=> b!1102069 m!1022487))

(declare-fun m!1022489 () Bool)

(assert (=> b!1102069 m!1022489))

(declare-fun m!1022491 () Bool)

(assert (=> b!1102069 m!1022491))

(declare-fun m!1022493 () Bool)

(assert (=> b!1102069 m!1022493))

(declare-fun m!1022495 () Bool)

(assert (=> b!1102069 m!1022495))

(declare-fun m!1022497 () Bool)

(assert (=> b!1102069 m!1022497))

(declare-fun m!1022499 () Bool)

(assert (=> b!1102071 m!1022499))

(declare-fun m!1022501 () Bool)

(assert (=> b!1102071 m!1022501))

(declare-fun m!1022503 () Bool)

(assert (=> b!1102071 m!1022503))

(declare-fun m!1022505 () Bool)

(assert (=> start!96912 m!1022505))

(declare-fun m!1022507 () Bool)

(assert (=> start!96912 m!1022507))

(declare-fun m!1022509 () Bool)

(assert (=> start!96912 m!1022509))

(declare-fun m!1022511 () Bool)

(assert (=> b!1102066 m!1022511))

(declare-fun m!1022513 () Bool)

(assert (=> b!1102066 m!1022513))

(declare-fun m!1022515 () Bool)

(assert (=> b!1102068 m!1022515))

(declare-fun m!1022517 () Bool)

(assert (=> b!1102068 m!1022517))

(declare-fun m!1022519 () Bool)

(assert (=> b!1102068 m!1022519))

(declare-fun m!1022521 () Bool)

(assert (=> b!1102073 m!1022521))

(check-sat (not b!1102068) (not start!96912) (not b!1102071) (not b!1102073) (not b!1102076) (not b!1102070) tp_is_empty!27243 (not b_lambda!18181) (not b!1102066) b_and!37209 (not b!1102072) (not b!1102069) (not b_next!23193) (not mapNonEmpty!42655))
(check-sat b_and!37209 (not b_next!23193))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96078 () Bool)

(assert start!96078)

(declare-fun b_free!22695 () Bool)

(declare-fun b_next!22695 () Bool)

(assert (=> start!96078 (= b_free!22695 (not b_next!22695))))

(declare-fun tp!79935 () Bool)

(declare-fun b_and!36083 () Bool)

(assert (=> start!96078 (= tp!79935 b_and!36083)))

(declare-fun b!1088980 () Bool)

(declare-fun e!622044 () Bool)

(declare-fun e!622042 () Bool)

(assert (=> b!1088980 (= e!622044 e!622042)))

(declare-fun res!726454 () Bool)

(assert (=> b!1088980 (=> res!726454 e!622042)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1088980 (= res!726454 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((V!40723 0))(
  ( (V!40724 (val!13405 Int)) )
))
(declare-datatypes ((tuple2!17098 0))(
  ( (tuple2!17099 (_1!8559 (_ BitVec 64)) (_2!8559 V!40723)) )
))
(declare-datatypes ((List!23737 0))(
  ( (Nil!23734) (Cons!23733 (h!24942 tuple2!17098) (t!33497 List!23737)) )
))
(declare-datatypes ((ListLongMap!15079 0))(
  ( (ListLongMap!15080 (toList!7555 List!23737)) )
))
(declare-fun lt!485298 () ListLongMap!15079)

(declare-fun lt!485309 () ListLongMap!15079)

(assert (=> b!1088980 (= lt!485298 lt!485309)))

(declare-fun lt!485300 () ListLongMap!15079)

(declare-fun lt!485303 () tuple2!17098)

(declare-fun +!3271 (ListLongMap!15079 tuple2!17098) ListLongMap!15079)

(assert (=> b!1088980 (= lt!485309 (+!3271 lt!485300 lt!485303))))

(declare-fun lt!485302 () ListLongMap!15079)

(declare-fun lt!485305 () ListLongMap!15079)

(assert (=> b!1088980 (= lt!485302 lt!485305)))

(declare-fun lt!485301 () ListLongMap!15079)

(assert (=> b!1088980 (= lt!485305 (+!3271 lt!485301 lt!485303))))

(declare-fun lt!485299 () ListLongMap!15079)

(assert (=> b!1088980 (= lt!485298 (+!3271 lt!485299 lt!485303))))

(declare-fun zeroValue!831 () V!40723)

(assert (=> b!1088980 (= lt!485303 (tuple2!17099 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088981 () Bool)

(declare-fun res!726457 () Bool)

(declare-fun e!622045 () Bool)

(assert (=> b!1088981 (=> (not res!726457) (not e!622045))))

(declare-datatypes ((array!70284 0))(
  ( (array!70285 (arr!33812 (Array (_ BitVec 32) (_ BitVec 64))) (size!34349 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70284)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70284 (_ BitVec 32)) Bool)

(assert (=> b!1088981 (= res!726457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!726455 () Bool)

(assert (=> start!96078 (=> (not res!726455) (not e!622045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96078 (= res!726455 (validMask!0 mask!1414))))

(assert (=> start!96078 e!622045))

(assert (=> start!96078 tp!79935))

(assert (=> start!96078 true))

(declare-fun tp_is_empty!26697 () Bool)

(assert (=> start!96078 tp_is_empty!26697))

(declare-fun array_inv!25942 (array!70284) Bool)

(assert (=> start!96078 (array_inv!25942 _keys!1070)))

(declare-datatypes ((ValueCell!12639 0))(
  ( (ValueCellFull!12639 (v!16027 V!40723)) (EmptyCell!12639) )
))
(declare-datatypes ((array!70286 0))(
  ( (array!70287 (arr!33813 (Array (_ BitVec 32) ValueCell!12639)) (size!34350 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70286)

(declare-fun e!622048 () Bool)

(declare-fun array_inv!25943 (array!70286) Bool)

(assert (=> start!96078 (and (array_inv!25943 _values!874) e!622048)))

(declare-fun b!1088982 () Bool)

(declare-fun e!622043 () Bool)

(assert (=> b!1088982 (= e!622045 e!622043)))

(declare-fun res!726452 () Bool)

(assert (=> b!1088982 (=> (not res!726452) (not e!622043))))

(declare-fun lt!485307 () array!70284)

(assert (=> b!1088982 (= res!726452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485307 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088982 (= lt!485307 (array!70285 (store (arr!33812 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34349 _keys!1070)))))

(declare-fun b!1088983 () Bool)

(declare-fun e!622047 () Bool)

(assert (=> b!1088983 (= e!622047 tp_is_empty!26697)))

(declare-fun b!1088984 () Bool)

(declare-fun res!726453 () Bool)

(assert (=> b!1088984 (=> (not res!726453) (not e!622045))))

(assert (=> b!1088984 (= res!726453 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34349 _keys!1070))))))

(declare-fun b!1088985 () Bool)

(declare-fun res!726458 () Bool)

(assert (=> b!1088985 (=> (not res!726458) (not e!622045))))

(assert (=> b!1088985 (= res!726458 (= (select (arr!33812 _keys!1070) i!650) k0!904))))

(declare-fun b!1088986 () Bool)

(declare-fun e!622046 () Bool)

(assert (=> b!1088986 (= e!622046 tp_is_empty!26697)))

(declare-fun b!1088987 () Bool)

(declare-fun res!726459 () Bool)

(assert (=> b!1088987 (=> (not res!726459) (not e!622045))))

(declare-datatypes ((List!23738 0))(
  ( (Nil!23735) (Cons!23734 (h!24943 (_ BitVec 64)) (t!33498 List!23738)) )
))
(declare-fun arrayNoDuplicates!0 (array!70284 (_ BitVec 32) List!23738) Bool)

(assert (=> b!1088987 (= res!726459 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23735))))

(declare-fun mapIsEmpty!41800 () Bool)

(declare-fun mapRes!41800 () Bool)

(assert (=> mapIsEmpty!41800 mapRes!41800))

(declare-fun b!1088988 () Bool)

(assert (=> b!1088988 (= e!622048 (and e!622046 mapRes!41800))))

(declare-fun condMapEmpty!41800 () Bool)

(declare-fun mapDefault!41800 () ValueCell!12639)

(assert (=> b!1088988 (= condMapEmpty!41800 (= (arr!33813 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12639)) mapDefault!41800)))))

(declare-fun b!1088989 () Bool)

(assert (=> b!1088989 (= e!622043 (not e!622044))))

(declare-fun res!726456 () Bool)

(assert (=> b!1088989 (=> res!726456 e!622044)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088989 (= res!726456 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40723)

(declare-fun getCurrentListMap!4301 (array!70284 array!70286 (_ BitVec 32) (_ BitVec 32) V!40723 V!40723 (_ BitVec 32) Int) ListLongMap!15079)

(assert (=> b!1088989 (= lt!485302 (getCurrentListMap!4301 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485304 () array!70286)

(assert (=> b!1088989 (= lt!485298 (getCurrentListMap!4301 lt!485307 lt!485304 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1088989 (and (= lt!485299 lt!485300) (= lt!485300 lt!485299))))

(declare-fun -!834 (ListLongMap!15079 (_ BitVec 64)) ListLongMap!15079)

(assert (=> b!1088989 (= lt!485300 (-!834 lt!485301 k0!904))))

(declare-datatypes ((Unit!35783 0))(
  ( (Unit!35784) )
))
(declare-fun lt!485308 () Unit!35783)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!107 (array!70284 array!70286 (_ BitVec 32) (_ BitVec 32) V!40723 V!40723 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35783)

(assert (=> b!1088989 (= lt!485308 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!107 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4053 (array!70284 array!70286 (_ BitVec 32) (_ BitVec 32) V!40723 V!40723 (_ BitVec 32) Int) ListLongMap!15079)

(assert (=> b!1088989 (= lt!485299 (getCurrentListMapNoExtraKeys!4053 lt!485307 lt!485304 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2189 (Int (_ BitVec 64)) V!40723)

(assert (=> b!1088989 (= lt!485304 (array!70287 (store (arr!33813 _values!874) i!650 (ValueCellFull!12639 (dynLambda!2189 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34350 _values!874)))))

(assert (=> b!1088989 (= lt!485301 (getCurrentListMapNoExtraKeys!4053 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088989 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!485306 () Unit!35783)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70284 (_ BitVec 64) (_ BitVec 32)) Unit!35783)

(assert (=> b!1088989 (= lt!485306 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!41800 () Bool)

(declare-fun tp!79934 () Bool)

(assert (=> mapNonEmpty!41800 (= mapRes!41800 (and tp!79934 e!622047))))

(declare-fun mapValue!41800 () ValueCell!12639)

(declare-fun mapRest!41800 () (Array (_ BitVec 32) ValueCell!12639))

(declare-fun mapKey!41800 () (_ BitVec 32))

(assert (=> mapNonEmpty!41800 (= (arr!33813 _values!874) (store mapRest!41800 mapKey!41800 mapValue!41800))))

(declare-fun b!1088990 () Bool)

(declare-fun res!726451 () Bool)

(assert (=> b!1088990 (=> (not res!726451) (not e!622045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088990 (= res!726451 (validKeyInArray!0 k0!904))))

(declare-fun b!1088991 () Bool)

(declare-fun res!726460 () Bool)

(assert (=> b!1088991 (=> (not res!726460) (not e!622043))))

(assert (=> b!1088991 (= res!726460 (arrayNoDuplicates!0 lt!485307 #b00000000000000000000000000000000 Nil!23735))))

(declare-fun b!1088992 () Bool)

(assert (=> b!1088992 (= e!622042 true)))

(assert (=> b!1088992 (= (-!834 lt!485305 k0!904) lt!485309)))

(declare-fun lt!485297 () Unit!35783)

(declare-fun addRemoveCommutativeForDiffKeys!69 (ListLongMap!15079 (_ BitVec 64) V!40723 (_ BitVec 64)) Unit!35783)

(assert (=> b!1088992 (= lt!485297 (addRemoveCommutativeForDiffKeys!69 lt!485301 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1088993 () Bool)

(declare-fun res!726461 () Bool)

(assert (=> b!1088993 (=> (not res!726461) (not e!622045))))

(assert (=> b!1088993 (= res!726461 (and (= (size!34350 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34349 _keys!1070) (size!34350 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(assert (= (and start!96078 res!726455) b!1088993))

(assert (= (and b!1088993 res!726461) b!1088981))

(assert (= (and b!1088981 res!726457) b!1088987))

(assert (= (and b!1088987 res!726459) b!1088984))

(assert (= (and b!1088984 res!726453) b!1088990))

(assert (= (and b!1088990 res!726451) b!1088985))

(assert (= (and b!1088985 res!726458) b!1088982))

(assert (= (and b!1088982 res!726452) b!1088991))

(assert (= (and b!1088991 res!726460) b!1088989))

(assert (= (and b!1088989 (not res!726456)) b!1088980))

(assert (= (and b!1088980 (not res!726454)) b!1088992))

(assert (= (and b!1088988 condMapEmpty!41800) mapIsEmpty!41800))

(assert (= (and b!1088988 (not condMapEmpty!41800)) mapNonEmpty!41800))

(get-info :version)

(assert (= (and mapNonEmpty!41800 ((_ is ValueCellFull!12639) mapValue!41800)) b!1088983))

(assert (= (and b!1088988 ((_ is ValueCellFull!12639) mapDefault!41800)) b!1088986))

(assert (= start!96078 b!1088988))

(declare-fun b_lambda!17395 () Bool)

(assert (=> (not b_lambda!17395) (not b!1088989)))

(declare-fun t!33496 () Bool)

(declare-fun tb!7581 () Bool)

(assert (=> (and start!96078 (= defaultEntry!882 defaultEntry!882) t!33496) tb!7581))

(declare-fun result!15673 () Bool)

(assert (=> tb!7581 (= result!15673 tp_is_empty!26697)))

(assert (=> b!1088989 t!33496))

(declare-fun b_and!36085 () Bool)

(assert (= b_and!36083 (and (=> t!33496 result!15673) b_and!36085)))

(declare-fun m!1008289 () Bool)

(assert (=> b!1088989 m!1008289))

(declare-fun m!1008291 () Bool)

(assert (=> b!1088989 m!1008291))

(declare-fun m!1008293 () Bool)

(assert (=> b!1088989 m!1008293))

(declare-fun m!1008295 () Bool)

(assert (=> b!1088989 m!1008295))

(declare-fun m!1008297 () Bool)

(assert (=> b!1088989 m!1008297))

(declare-fun m!1008299 () Bool)

(assert (=> b!1088989 m!1008299))

(declare-fun m!1008301 () Bool)

(assert (=> b!1088989 m!1008301))

(declare-fun m!1008303 () Bool)

(assert (=> b!1088989 m!1008303))

(declare-fun m!1008305 () Bool)

(assert (=> b!1088989 m!1008305))

(declare-fun m!1008307 () Bool)

(assert (=> b!1088989 m!1008307))

(declare-fun m!1008309 () Bool)

(assert (=> start!96078 m!1008309))

(declare-fun m!1008311 () Bool)

(assert (=> start!96078 m!1008311))

(declare-fun m!1008313 () Bool)

(assert (=> start!96078 m!1008313))

(declare-fun m!1008315 () Bool)

(assert (=> b!1088980 m!1008315))

(declare-fun m!1008317 () Bool)

(assert (=> b!1088980 m!1008317))

(declare-fun m!1008319 () Bool)

(assert (=> b!1088980 m!1008319))

(declare-fun m!1008321 () Bool)

(assert (=> b!1088987 m!1008321))

(declare-fun m!1008323 () Bool)

(assert (=> b!1088992 m!1008323))

(declare-fun m!1008325 () Bool)

(assert (=> b!1088992 m!1008325))

(declare-fun m!1008327 () Bool)

(assert (=> b!1088982 m!1008327))

(declare-fun m!1008329 () Bool)

(assert (=> b!1088982 m!1008329))

(declare-fun m!1008331 () Bool)

(assert (=> b!1088981 m!1008331))

(declare-fun m!1008333 () Bool)

(assert (=> b!1088985 m!1008333))

(declare-fun m!1008335 () Bool)

(assert (=> mapNonEmpty!41800 m!1008335))

(declare-fun m!1008337 () Bool)

(assert (=> b!1088991 m!1008337))

(declare-fun m!1008339 () Bool)

(assert (=> b!1088990 m!1008339))

(check-sat (not mapNonEmpty!41800) (not b!1088981) (not b!1088990) (not b!1088987) (not b!1088991) tp_is_empty!26697 (not b!1088992) (not start!96078) (not b_next!22695) b_and!36085 (not b!1088982) (not b!1088989) (not b!1088980) (not b_lambda!17395))
(check-sat b_and!36085 (not b_next!22695))

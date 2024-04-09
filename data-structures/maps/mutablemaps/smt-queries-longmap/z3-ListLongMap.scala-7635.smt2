; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96168 () Bool)

(assert start!96168)

(declare-fun b_free!22785 () Bool)

(declare-fun b_next!22785 () Bool)

(assert (=> start!96168 (= b_free!22785 (not b_next!22785))))

(declare-fun tp!80204 () Bool)

(declare-fun b_and!36263 () Bool)

(assert (=> start!96168 (= tp!80204 b_and!36263)))

(declare-fun b!1090969 () Bool)

(declare-fun e!623127 () Bool)

(declare-fun e!623128 () Bool)

(assert (=> b!1090969 (= e!623127 e!623128)))

(declare-fun res!727953 () Bool)

(assert (=> b!1090969 (=> (not res!727953) (not e!623128))))

(declare-datatypes ((array!70462 0))(
  ( (array!70463 (arr!33901 (Array (_ BitVec 32) (_ BitVec 64))) (size!34438 (_ BitVec 32))) )
))
(declare-fun lt!487030 () array!70462)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70462 (_ BitVec 32)) Bool)

(assert (=> b!1090969 (= res!727953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487030 mask!1414))))

(declare-fun _keys!1070 () array!70462)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090969 (= lt!487030 (array!70463 (store (arr!33901 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34438 _keys!1070)))))

(declare-fun res!727954 () Bool)

(assert (=> start!96168 (=> (not res!727954) (not e!623127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96168 (= res!727954 (validMask!0 mask!1414))))

(assert (=> start!96168 e!623127))

(assert (=> start!96168 tp!80204))

(assert (=> start!96168 true))

(declare-fun tp_is_empty!26787 () Bool)

(assert (=> start!96168 tp_is_empty!26787))

(declare-fun array_inv!25998 (array!70462) Bool)

(assert (=> start!96168 (array_inv!25998 _keys!1070)))

(declare-datatypes ((V!40843 0))(
  ( (V!40844 (val!13450 Int)) )
))
(declare-datatypes ((ValueCell!12684 0))(
  ( (ValueCellFull!12684 (v!16072 V!40843)) (EmptyCell!12684) )
))
(declare-datatypes ((array!70464 0))(
  ( (array!70465 (arr!33902 (Array (_ BitVec 32) ValueCell!12684)) (size!34439 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70464)

(declare-fun e!623125 () Bool)

(declare-fun array_inv!25999 (array!70464) Bool)

(assert (=> start!96168 (and (array_inv!25999 _values!874) e!623125)))

(declare-fun b!1090970 () Bool)

(declare-fun res!727952 () Bool)

(assert (=> b!1090970 (=> (not res!727952) (not e!623127))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090970 (= res!727952 (and (= (size!34439 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34438 _keys!1070) (size!34439 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090971 () Bool)

(declare-fun res!727945 () Bool)

(assert (=> b!1090971 (=> (not res!727945) (not e!623127))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1090971 (= res!727945 (= (select (arr!33901 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41935 () Bool)

(declare-fun mapRes!41935 () Bool)

(assert (=> mapIsEmpty!41935 mapRes!41935))

(declare-fun b!1090972 () Bool)

(declare-fun e!623122 () Bool)

(assert (=> b!1090972 (= e!623122 tp_is_empty!26787)))

(declare-fun b!1090973 () Bool)

(declare-fun e!623121 () Bool)

(assert (=> b!1090973 (= e!623121 tp_is_empty!26787)))

(declare-fun b!1090974 () Bool)

(declare-fun e!623123 () Bool)

(assert (=> b!1090974 (= e!623128 (not e!623123))))

(declare-fun res!727949 () Bool)

(assert (=> b!1090974 (=> res!727949 e!623123)))

(assert (=> b!1090974 (= res!727949 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17176 0))(
  ( (tuple2!17177 (_1!8598 (_ BitVec 64)) (_2!8598 V!40843)) )
))
(declare-datatypes ((List!23815 0))(
  ( (Nil!23812) (Cons!23811 (h!25020 tuple2!17176) (t!33665 List!23815)) )
))
(declare-datatypes ((ListLongMap!15157 0))(
  ( (ListLongMap!15158 (toList!7594 List!23815)) )
))
(declare-fun lt!487032 () ListLongMap!15157)

(declare-fun minValue!831 () V!40843)

(declare-fun zeroValue!831 () V!40843)

(declare-fun getCurrentListMap!4333 (array!70462 array!70464 (_ BitVec 32) (_ BitVec 32) V!40843 V!40843 (_ BitVec 32) Int) ListLongMap!15157)

(assert (=> b!1090974 (= lt!487032 (getCurrentListMap!4333 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487033 () ListLongMap!15157)

(declare-fun lt!487035 () array!70464)

(assert (=> b!1090974 (= lt!487033 (getCurrentListMap!4333 lt!487030 lt!487035 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487031 () ListLongMap!15157)

(declare-fun lt!487029 () ListLongMap!15157)

(assert (=> b!1090974 (and (= lt!487031 lt!487029) (= lt!487029 lt!487031))))

(declare-fun lt!487026 () ListLongMap!15157)

(declare-fun -!872 (ListLongMap!15157 (_ BitVec 64)) ListLongMap!15157)

(assert (=> b!1090974 (= lt!487029 (-!872 lt!487026 k0!904))))

(declare-datatypes ((Unit!35859 0))(
  ( (Unit!35860) )
))
(declare-fun lt!487036 () Unit!35859)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!139 (array!70462 array!70464 (_ BitVec 32) (_ BitVec 32) V!40843 V!40843 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35859)

(assert (=> b!1090974 (= lt!487036 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!139 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4085 (array!70462 array!70464 (_ BitVec 32) (_ BitVec 32) V!40843 V!40843 (_ BitVec 32) Int) ListLongMap!15157)

(assert (=> b!1090974 (= lt!487031 (getCurrentListMapNoExtraKeys!4085 lt!487030 lt!487035 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2221 (Int (_ BitVec 64)) V!40843)

(assert (=> b!1090974 (= lt!487035 (array!70465 (store (arr!33902 _values!874) i!650 (ValueCellFull!12684 (dynLambda!2221 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34439 _values!874)))))

(assert (=> b!1090974 (= lt!487026 (getCurrentListMapNoExtraKeys!4085 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090974 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!487034 () Unit!35859)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70462 (_ BitVec 64) (_ BitVec 32)) Unit!35859)

(assert (=> b!1090974 (= lt!487034 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1090975 () Bool)

(declare-fun res!727951 () Bool)

(assert (=> b!1090975 (=> (not res!727951) (not e!623127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090975 (= res!727951 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!41935 () Bool)

(declare-fun tp!80205 () Bool)

(assert (=> mapNonEmpty!41935 (= mapRes!41935 (and tp!80205 e!623122))))

(declare-fun mapValue!41935 () ValueCell!12684)

(declare-fun mapRest!41935 () (Array (_ BitVec 32) ValueCell!12684))

(declare-fun mapKey!41935 () (_ BitVec 32))

(assert (=> mapNonEmpty!41935 (= (arr!33902 _values!874) (store mapRest!41935 mapKey!41935 mapValue!41935))))

(declare-fun b!1090976 () Bool)

(declare-fun res!727948 () Bool)

(assert (=> b!1090976 (=> (not res!727948) (not e!623127))))

(assert (=> b!1090976 (= res!727948 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34438 _keys!1070))))))

(declare-fun b!1090977 () Bool)

(declare-fun e!623124 () Bool)

(assert (=> b!1090977 (= e!623123 e!623124)))

(declare-fun res!727947 () Bool)

(assert (=> b!1090977 (=> res!727947 e!623124)))

(assert (=> b!1090977 (= res!727947 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!487027 () ListLongMap!15157)

(assert (=> b!1090977 (= lt!487032 lt!487027)))

(declare-fun lt!487025 () tuple2!17176)

(declare-fun +!3302 (ListLongMap!15157 tuple2!17176) ListLongMap!15157)

(assert (=> b!1090977 (= lt!487027 (+!3302 lt!487026 lt!487025))))

(declare-fun lt!487028 () ListLongMap!15157)

(assert (=> b!1090977 (= lt!487033 lt!487028)))

(assert (=> b!1090977 (= lt!487028 (+!3302 lt!487029 lt!487025))))

(assert (=> b!1090977 (= lt!487033 (+!3302 lt!487031 lt!487025))))

(assert (=> b!1090977 (= lt!487025 (tuple2!17177 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090978 () Bool)

(assert (=> b!1090978 (= e!623125 (and e!623121 mapRes!41935))))

(declare-fun condMapEmpty!41935 () Bool)

(declare-fun mapDefault!41935 () ValueCell!12684)

(assert (=> b!1090978 (= condMapEmpty!41935 (= (arr!33902 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12684)) mapDefault!41935)))))

(declare-fun b!1090979 () Bool)

(declare-fun res!727946 () Bool)

(assert (=> b!1090979 (=> (not res!727946) (not e!623128))))

(declare-datatypes ((List!23816 0))(
  ( (Nil!23813) (Cons!23812 (h!25021 (_ BitVec 64)) (t!33666 List!23816)) )
))
(declare-fun arrayNoDuplicates!0 (array!70462 (_ BitVec 32) List!23816) Bool)

(assert (=> b!1090979 (= res!727946 (arrayNoDuplicates!0 lt!487030 #b00000000000000000000000000000000 Nil!23813))))

(declare-fun b!1090980 () Bool)

(declare-fun res!727955 () Bool)

(assert (=> b!1090980 (=> (not res!727955) (not e!623127))))

(assert (=> b!1090980 (= res!727955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090981 () Bool)

(declare-fun res!727950 () Bool)

(assert (=> b!1090981 (=> (not res!727950) (not e!623127))))

(assert (=> b!1090981 (= res!727950 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23813))))

(declare-fun b!1090982 () Bool)

(assert (=> b!1090982 (= e!623124 (bvsle #b00000000000000000000000000000000 (size!34438 _keys!1070)))))

(assert (=> b!1090982 (= (-!872 lt!487027 k0!904) lt!487028)))

(declare-fun lt!487037 () Unit!35859)

(declare-fun addRemoveCommutativeForDiffKeys!100 (ListLongMap!15157 (_ BitVec 64) V!40843 (_ BitVec 64)) Unit!35859)

(assert (=> b!1090982 (= lt!487037 (addRemoveCommutativeForDiffKeys!100 lt!487026 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(assert (= (and start!96168 res!727954) b!1090970))

(assert (= (and b!1090970 res!727952) b!1090980))

(assert (= (and b!1090980 res!727955) b!1090981))

(assert (= (and b!1090981 res!727950) b!1090976))

(assert (= (and b!1090976 res!727948) b!1090975))

(assert (= (and b!1090975 res!727951) b!1090971))

(assert (= (and b!1090971 res!727945) b!1090969))

(assert (= (and b!1090969 res!727953) b!1090979))

(assert (= (and b!1090979 res!727946) b!1090974))

(assert (= (and b!1090974 (not res!727949)) b!1090977))

(assert (= (and b!1090977 (not res!727947)) b!1090982))

(assert (= (and b!1090978 condMapEmpty!41935) mapIsEmpty!41935))

(assert (= (and b!1090978 (not condMapEmpty!41935)) mapNonEmpty!41935))

(get-info :version)

(assert (= (and mapNonEmpty!41935 ((_ is ValueCellFull!12684) mapValue!41935)) b!1090972))

(assert (= (and b!1090978 ((_ is ValueCellFull!12684) mapDefault!41935)) b!1090973))

(assert (= start!96168 b!1090978))

(declare-fun b_lambda!17485 () Bool)

(assert (=> (not b_lambda!17485) (not b!1090974)))

(declare-fun t!33664 () Bool)

(declare-fun tb!7671 () Bool)

(assert (=> (and start!96168 (= defaultEntry!882 defaultEntry!882) t!33664) tb!7671))

(declare-fun result!15853 () Bool)

(assert (=> tb!7671 (= result!15853 tp_is_empty!26787)))

(assert (=> b!1090974 t!33664))

(declare-fun b_and!36265 () Bool)

(assert (= b_and!36263 (and (=> t!33664 result!15853) b_and!36265)))

(declare-fun m!1010617 () Bool)

(assert (=> b!1090975 m!1010617))

(declare-fun m!1010619 () Bool)

(assert (=> b!1090977 m!1010619))

(declare-fun m!1010621 () Bool)

(assert (=> b!1090977 m!1010621))

(declare-fun m!1010623 () Bool)

(assert (=> b!1090977 m!1010623))

(declare-fun m!1010625 () Bool)

(assert (=> b!1090982 m!1010625))

(declare-fun m!1010627 () Bool)

(assert (=> b!1090982 m!1010627))

(declare-fun m!1010629 () Bool)

(assert (=> b!1090974 m!1010629))

(declare-fun m!1010631 () Bool)

(assert (=> b!1090974 m!1010631))

(declare-fun m!1010633 () Bool)

(assert (=> b!1090974 m!1010633))

(declare-fun m!1010635 () Bool)

(assert (=> b!1090974 m!1010635))

(declare-fun m!1010637 () Bool)

(assert (=> b!1090974 m!1010637))

(declare-fun m!1010639 () Bool)

(assert (=> b!1090974 m!1010639))

(declare-fun m!1010641 () Bool)

(assert (=> b!1090974 m!1010641))

(declare-fun m!1010643 () Bool)

(assert (=> b!1090974 m!1010643))

(declare-fun m!1010645 () Bool)

(assert (=> b!1090974 m!1010645))

(declare-fun m!1010647 () Bool)

(assert (=> b!1090974 m!1010647))

(declare-fun m!1010649 () Bool)

(assert (=> b!1090980 m!1010649))

(declare-fun m!1010651 () Bool)

(assert (=> mapNonEmpty!41935 m!1010651))

(declare-fun m!1010653 () Bool)

(assert (=> b!1090981 m!1010653))

(declare-fun m!1010655 () Bool)

(assert (=> b!1090971 m!1010655))

(declare-fun m!1010657 () Bool)

(assert (=> start!96168 m!1010657))

(declare-fun m!1010659 () Bool)

(assert (=> start!96168 m!1010659))

(declare-fun m!1010661 () Bool)

(assert (=> start!96168 m!1010661))

(declare-fun m!1010663 () Bool)

(assert (=> b!1090969 m!1010663))

(declare-fun m!1010665 () Bool)

(assert (=> b!1090969 m!1010665))

(declare-fun m!1010667 () Bool)

(assert (=> b!1090979 m!1010667))

(check-sat (not b!1090981) (not b!1090974) (not b_next!22785) (not b!1090982) (not start!96168) tp_is_empty!26787 (not b!1090969) (not b!1090975) (not b!1090980) b_and!36265 (not mapNonEmpty!41935) (not b!1090977) (not b_lambda!17485) (not b!1090979))
(check-sat b_and!36265 (not b_next!22785))

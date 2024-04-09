; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96144 () Bool)

(assert start!96144)

(declare-fun b_free!22761 () Bool)

(declare-fun b_next!22761 () Bool)

(assert (=> start!96144 (= b_free!22761 (not b_next!22761))))

(declare-fun tp!80133 () Bool)

(declare-fun b_and!36215 () Bool)

(assert (=> start!96144 (= tp!80133 b_and!36215)))

(declare-fun mapNonEmpty!41899 () Bool)

(declare-fun mapRes!41899 () Bool)

(declare-fun tp!80132 () Bool)

(declare-fun e!622834 () Bool)

(assert (=> mapNonEmpty!41899 (= mapRes!41899 (and tp!80132 e!622834))))

(declare-fun mapKey!41899 () (_ BitVec 32))

(declare-datatypes ((V!40811 0))(
  ( (V!40812 (val!13438 Int)) )
))
(declare-datatypes ((ValueCell!12672 0))(
  ( (ValueCellFull!12672 (v!16060 V!40811)) (EmptyCell!12672) )
))
(declare-datatypes ((array!70414 0))(
  ( (array!70415 (arr!33877 (Array (_ BitVec 32) ValueCell!12672)) (size!34414 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70414)

(declare-fun mapValue!41899 () ValueCell!12672)

(declare-fun mapRest!41899 () (Array (_ BitVec 32) ValueCell!12672))

(assert (=> mapNonEmpty!41899 (= (arr!33877 _values!874) (store mapRest!41899 mapKey!41899 mapValue!41899))))

(declare-fun b!1090441 () Bool)

(declare-fun e!622838 () Bool)

(declare-fun tp_is_empty!26763 () Bool)

(assert (=> b!1090441 (= e!622838 tp_is_empty!26763)))

(declare-fun b!1090442 () Bool)

(declare-fun e!622840 () Bool)

(assert (=> b!1090442 (= e!622840 true)))

(declare-datatypes ((tuple2!17152 0))(
  ( (tuple2!17153 (_1!8586 (_ BitVec 64)) (_2!8586 V!40811)) )
))
(declare-datatypes ((List!23791 0))(
  ( (Nil!23788) (Cons!23787 (h!24996 tuple2!17152) (t!33617 List!23791)) )
))
(declare-datatypes ((ListLongMap!15133 0))(
  ( (ListLongMap!15134 (toList!7582 List!23791)) )
))
(declare-fun lt!486561 () ListLongMap!15133)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!486566 () ListLongMap!15133)

(declare-fun -!860 (ListLongMap!15133 (_ BitVec 64)) ListLongMap!15133)

(assert (=> b!1090442 (= (-!860 lt!486561 k0!904) lt!486566)))

(declare-datatypes ((Unit!35835 0))(
  ( (Unit!35836) )
))
(declare-fun lt!486564 () Unit!35835)

(declare-fun lt!486559 () ListLongMap!15133)

(declare-fun minValue!831 () V!40811)

(declare-fun addRemoveCommutativeForDiffKeys!88 (ListLongMap!15133 (_ BitVec 64) V!40811 (_ BitVec 64)) Unit!35835)

(assert (=> b!1090442 (= lt!486564 (addRemoveCommutativeForDiffKeys!88 lt!486559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun res!727559 () Bool)

(declare-fun e!622835 () Bool)

(assert (=> start!96144 (=> (not res!727559) (not e!622835))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96144 (= res!727559 (validMask!0 mask!1414))))

(assert (=> start!96144 e!622835))

(assert (=> start!96144 tp!80133))

(assert (=> start!96144 true))

(assert (=> start!96144 tp_is_empty!26763))

(declare-datatypes ((array!70416 0))(
  ( (array!70417 (arr!33878 (Array (_ BitVec 32) (_ BitVec 64))) (size!34415 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70416)

(declare-fun array_inv!25978 (array!70416) Bool)

(assert (=> start!96144 (array_inv!25978 _keys!1070)))

(declare-fun e!622837 () Bool)

(declare-fun array_inv!25979 (array!70414) Bool)

(assert (=> start!96144 (and (array_inv!25979 _values!874) e!622837)))

(declare-fun b!1090443 () Bool)

(declare-fun res!727554 () Bool)

(assert (=> b!1090443 (=> (not res!727554) (not e!622835))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090443 (= res!727554 (= (select (arr!33878 _keys!1070) i!650) k0!904))))

(declare-fun b!1090444 () Bool)

(assert (=> b!1090444 (= e!622837 (and e!622838 mapRes!41899))))

(declare-fun condMapEmpty!41899 () Bool)

(declare-fun mapDefault!41899 () ValueCell!12672)

(assert (=> b!1090444 (= condMapEmpty!41899 (= (arr!33877 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12672)) mapDefault!41899)))))

(declare-fun b!1090445 () Bool)

(declare-fun res!727550 () Bool)

(assert (=> b!1090445 (=> (not res!727550) (not e!622835))))

(declare-datatypes ((List!23792 0))(
  ( (Nil!23789) (Cons!23788 (h!24997 (_ BitVec 64)) (t!33618 List!23792)) )
))
(declare-fun arrayNoDuplicates!0 (array!70416 (_ BitVec 32) List!23792) Bool)

(assert (=> b!1090445 (= res!727550 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23789))))

(declare-fun b!1090446 () Bool)

(declare-fun e!622839 () Bool)

(declare-fun e!622833 () Bool)

(assert (=> b!1090446 (= e!622839 (not e!622833))))

(declare-fun res!727556 () Bool)

(assert (=> b!1090446 (=> res!727556 e!622833)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090446 (= res!727556 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!486562 () ListLongMap!15133)

(declare-fun zeroValue!831 () V!40811)

(declare-fun getCurrentListMap!4323 (array!70416 array!70414 (_ BitVec 32) (_ BitVec 32) V!40811 V!40811 (_ BitVec 32) Int) ListLongMap!15133)

(assert (=> b!1090446 (= lt!486562 (getCurrentListMap!4323 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486563 () array!70416)

(declare-fun lt!486560 () ListLongMap!15133)

(declare-fun lt!486565 () array!70414)

(assert (=> b!1090446 (= lt!486560 (getCurrentListMap!4323 lt!486563 lt!486565 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486569 () ListLongMap!15133)

(declare-fun lt!486567 () ListLongMap!15133)

(assert (=> b!1090446 (and (= lt!486569 lt!486567) (= lt!486567 lt!486569))))

(assert (=> b!1090446 (= lt!486567 (-!860 lt!486559 k0!904))))

(declare-fun lt!486557 () Unit!35835)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!129 (array!70416 array!70414 (_ BitVec 32) (_ BitVec 32) V!40811 V!40811 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35835)

(assert (=> b!1090446 (= lt!486557 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!129 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4075 (array!70416 array!70414 (_ BitVec 32) (_ BitVec 32) V!40811 V!40811 (_ BitVec 32) Int) ListLongMap!15133)

(assert (=> b!1090446 (= lt!486569 (getCurrentListMapNoExtraKeys!4075 lt!486563 lt!486565 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2211 (Int (_ BitVec 64)) V!40811)

(assert (=> b!1090446 (= lt!486565 (array!70415 (store (arr!33877 _values!874) i!650 (ValueCellFull!12672 (dynLambda!2211 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34414 _values!874)))))

(assert (=> b!1090446 (= lt!486559 (getCurrentListMapNoExtraKeys!4075 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090446 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!486568 () Unit!35835)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70416 (_ BitVec 64) (_ BitVec 32)) Unit!35835)

(assert (=> b!1090446 (= lt!486568 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1090447 () Bool)

(declare-fun res!727557 () Bool)

(assert (=> b!1090447 (=> (not res!727557) (not e!622835))))

(assert (=> b!1090447 (= res!727557 (and (= (size!34414 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34415 _keys!1070) (size!34414 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090448 () Bool)

(declare-fun res!727552 () Bool)

(assert (=> b!1090448 (=> (not res!727552) (not e!622839))))

(assert (=> b!1090448 (= res!727552 (arrayNoDuplicates!0 lt!486563 #b00000000000000000000000000000000 Nil!23789))))

(declare-fun b!1090449 () Bool)

(assert (=> b!1090449 (= e!622835 e!622839)))

(declare-fun res!727558 () Bool)

(assert (=> b!1090449 (=> (not res!727558) (not e!622839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70416 (_ BitVec 32)) Bool)

(assert (=> b!1090449 (= res!727558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486563 mask!1414))))

(assert (=> b!1090449 (= lt!486563 (array!70417 (store (arr!33878 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34415 _keys!1070)))))

(declare-fun b!1090450 () Bool)

(declare-fun res!727555 () Bool)

(assert (=> b!1090450 (=> (not res!727555) (not e!622835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090450 (= res!727555 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!41899 () Bool)

(assert (=> mapIsEmpty!41899 mapRes!41899))

(declare-fun b!1090451 () Bool)

(declare-fun res!727551 () Bool)

(assert (=> b!1090451 (=> (not res!727551) (not e!622835))))

(assert (=> b!1090451 (= res!727551 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34415 _keys!1070))))))

(declare-fun b!1090452 () Bool)

(assert (=> b!1090452 (= e!622833 e!622840)))

(declare-fun res!727553 () Bool)

(assert (=> b!1090452 (=> res!727553 e!622840)))

(assert (=> b!1090452 (= res!727553 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1090452 (= lt!486562 lt!486561)))

(declare-fun lt!486558 () tuple2!17152)

(declare-fun +!3291 (ListLongMap!15133 tuple2!17152) ListLongMap!15133)

(assert (=> b!1090452 (= lt!486561 (+!3291 lt!486559 lt!486558))))

(assert (=> b!1090452 (= lt!486560 lt!486566)))

(assert (=> b!1090452 (= lt!486566 (+!3291 lt!486567 lt!486558))))

(assert (=> b!1090452 (= lt!486560 (+!3291 lt!486569 lt!486558))))

(assert (=> b!1090452 (= lt!486558 (tuple2!17153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090453 () Bool)

(declare-fun res!727549 () Bool)

(assert (=> b!1090453 (=> (not res!727549) (not e!622835))))

(assert (=> b!1090453 (= res!727549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090454 () Bool)

(assert (=> b!1090454 (= e!622834 tp_is_empty!26763)))

(assert (= (and start!96144 res!727559) b!1090447))

(assert (= (and b!1090447 res!727557) b!1090453))

(assert (= (and b!1090453 res!727549) b!1090445))

(assert (= (and b!1090445 res!727550) b!1090451))

(assert (= (and b!1090451 res!727551) b!1090450))

(assert (= (and b!1090450 res!727555) b!1090443))

(assert (= (and b!1090443 res!727554) b!1090449))

(assert (= (and b!1090449 res!727558) b!1090448))

(assert (= (and b!1090448 res!727552) b!1090446))

(assert (= (and b!1090446 (not res!727556)) b!1090452))

(assert (= (and b!1090452 (not res!727553)) b!1090442))

(assert (= (and b!1090444 condMapEmpty!41899) mapIsEmpty!41899))

(assert (= (and b!1090444 (not condMapEmpty!41899)) mapNonEmpty!41899))

(get-info :version)

(assert (= (and mapNonEmpty!41899 ((_ is ValueCellFull!12672) mapValue!41899)) b!1090454))

(assert (= (and b!1090444 ((_ is ValueCellFull!12672) mapDefault!41899)) b!1090441))

(assert (= start!96144 b!1090444))

(declare-fun b_lambda!17461 () Bool)

(assert (=> (not b_lambda!17461) (not b!1090446)))

(declare-fun t!33616 () Bool)

(declare-fun tb!7647 () Bool)

(assert (=> (and start!96144 (= defaultEntry!882 defaultEntry!882) t!33616) tb!7647))

(declare-fun result!15805 () Bool)

(assert (=> tb!7647 (= result!15805 tp_is_empty!26763)))

(assert (=> b!1090446 t!33616))

(declare-fun b_and!36217 () Bool)

(assert (= b_and!36215 (and (=> t!33616 result!15805) b_and!36217)))

(declare-fun m!1009993 () Bool)

(assert (=> b!1090442 m!1009993))

(declare-fun m!1009995 () Bool)

(assert (=> b!1090442 m!1009995))

(declare-fun m!1009997 () Bool)

(assert (=> b!1090443 m!1009997))

(declare-fun m!1009999 () Bool)

(assert (=> b!1090452 m!1009999))

(declare-fun m!1010001 () Bool)

(assert (=> b!1090452 m!1010001))

(declare-fun m!1010003 () Bool)

(assert (=> b!1090452 m!1010003))

(declare-fun m!1010005 () Bool)

(assert (=> b!1090445 m!1010005))

(declare-fun m!1010007 () Bool)

(assert (=> b!1090453 m!1010007))

(declare-fun m!1010009 () Bool)

(assert (=> b!1090449 m!1010009))

(declare-fun m!1010011 () Bool)

(assert (=> b!1090449 m!1010011))

(declare-fun m!1010013 () Bool)

(assert (=> start!96144 m!1010013))

(declare-fun m!1010015 () Bool)

(assert (=> start!96144 m!1010015))

(declare-fun m!1010017 () Bool)

(assert (=> start!96144 m!1010017))

(declare-fun m!1010019 () Bool)

(assert (=> b!1090450 m!1010019))

(declare-fun m!1010021 () Bool)

(assert (=> b!1090448 m!1010021))

(declare-fun m!1010023 () Bool)

(assert (=> b!1090446 m!1010023))

(declare-fun m!1010025 () Bool)

(assert (=> b!1090446 m!1010025))

(declare-fun m!1010027 () Bool)

(assert (=> b!1090446 m!1010027))

(declare-fun m!1010029 () Bool)

(assert (=> b!1090446 m!1010029))

(declare-fun m!1010031 () Bool)

(assert (=> b!1090446 m!1010031))

(declare-fun m!1010033 () Bool)

(assert (=> b!1090446 m!1010033))

(declare-fun m!1010035 () Bool)

(assert (=> b!1090446 m!1010035))

(declare-fun m!1010037 () Bool)

(assert (=> b!1090446 m!1010037))

(declare-fun m!1010039 () Bool)

(assert (=> b!1090446 m!1010039))

(declare-fun m!1010041 () Bool)

(assert (=> b!1090446 m!1010041))

(declare-fun m!1010043 () Bool)

(assert (=> mapNonEmpty!41899 m!1010043))

(check-sat (not b!1090448) tp_is_empty!26763 (not b!1090442) (not b!1090445) (not b_lambda!17461) (not b!1090449) (not b!1090453) b_and!36217 (not mapNonEmpty!41899) (not start!96144) (not b_next!22761) (not b!1090452) (not b!1090450) (not b!1090446))
(check-sat b_and!36217 (not b_next!22761))

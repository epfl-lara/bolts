; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96050 () Bool)

(assert start!96050)

(declare-fun b_free!22667 () Bool)

(declare-fun b_next!22667 () Bool)

(assert (=> start!96050 (= b_free!22667 (not b_next!22667))))

(declare-fun tp!79850 () Bool)

(declare-fun b_and!36027 () Bool)

(assert (=> start!96050 (= tp!79850 b_and!36027)))

(declare-fun b!1088364 () Bool)

(declare-fun e!621710 () Bool)

(declare-fun tp_is_empty!26669 () Bool)

(assert (=> b!1088364 (= e!621710 tp_is_empty!26669)))

(declare-fun b!1088366 () Bool)

(declare-fun res!725992 () Bool)

(declare-fun e!621708 () Bool)

(assert (=> b!1088366 (=> (not res!725992) (not e!621708))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70230 0))(
  ( (array!70231 (arr!33785 (Array (_ BitVec 32) (_ BitVec 64))) (size!34322 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70230)

(assert (=> b!1088366 (= res!725992 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34322 _keys!1070))))))

(declare-fun b!1088367 () Bool)

(declare-fun res!725996 () Bool)

(declare-fun e!621709 () Bool)

(assert (=> b!1088367 (=> (not res!725996) (not e!621709))))

(declare-fun lt!484761 () array!70230)

(declare-datatypes ((List!23713 0))(
  ( (Nil!23710) (Cons!23709 (h!24918 (_ BitVec 64)) (t!33445 List!23713)) )
))
(declare-fun arrayNoDuplicates!0 (array!70230 (_ BitVec 32) List!23713) Bool)

(assert (=> b!1088367 (= res!725996 (arrayNoDuplicates!0 lt!484761 #b00000000000000000000000000000000 Nil!23710))))

(declare-fun mapIsEmpty!41758 () Bool)

(declare-fun mapRes!41758 () Bool)

(assert (=> mapIsEmpty!41758 mapRes!41758))

(declare-fun b!1088368 () Bool)

(declare-fun res!725997 () Bool)

(assert (=> b!1088368 (=> (not res!725997) (not e!621708))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088368 (= res!725997 (validKeyInArray!0 k!904))))

(declare-fun b!1088369 () Bool)

(declare-fun e!621705 () Bool)

(declare-fun e!621707 () Bool)

(assert (=> b!1088369 (= e!621705 e!621707)))

(declare-fun res!725994 () Bool)

(assert (=> b!1088369 (=> res!725994 e!621707)))

(assert (=> b!1088369 (= res!725994 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40685 0))(
  ( (V!40686 (val!13391 Int)) )
))
(declare-datatypes ((tuple2!17072 0))(
  ( (tuple2!17073 (_1!8546 (_ BitVec 64)) (_2!8546 V!40685)) )
))
(declare-datatypes ((List!23714 0))(
  ( (Nil!23711) (Cons!23710 (h!24919 tuple2!17072) (t!33446 List!23714)) )
))
(declare-datatypes ((ListLongMap!15053 0))(
  ( (ListLongMap!15054 (toList!7542 List!23714)) )
))
(declare-fun lt!484763 () ListLongMap!15053)

(declare-fun lt!484762 () ListLongMap!15053)

(assert (=> b!1088369 (= lt!484763 lt!484762)))

(declare-fun lt!484751 () ListLongMap!15053)

(declare-fun lt!484759 () tuple2!17072)

(declare-fun +!3262 (ListLongMap!15053 tuple2!17072) ListLongMap!15053)

(assert (=> b!1088369 (= lt!484762 (+!3262 lt!484751 lt!484759))))

(declare-fun lt!484757 () ListLongMap!15053)

(declare-fun lt!484760 () ListLongMap!15053)

(assert (=> b!1088369 (= lt!484757 lt!484760)))

(declare-fun lt!484753 () ListLongMap!15053)

(assert (=> b!1088369 (= lt!484760 (+!3262 lt!484753 lt!484759))))

(declare-fun lt!484752 () ListLongMap!15053)

(assert (=> b!1088369 (= lt!484763 (+!3262 lt!484752 lt!484759))))

(declare-fun zeroValue!831 () V!40685)

(assert (=> b!1088369 (= lt!484759 (tuple2!17073 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088370 () Bool)

(assert (=> b!1088370 (= e!621708 e!621709)))

(declare-fun res!725995 () Bool)

(assert (=> b!1088370 (=> (not res!725995) (not e!621709))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70230 (_ BitVec 32)) Bool)

(assert (=> b!1088370 (= res!725995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484761 mask!1414))))

(assert (=> b!1088370 (= lt!484761 (array!70231 (store (arr!33785 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34322 _keys!1070)))))

(declare-fun b!1088371 () Bool)

(declare-fun res!725991 () Bool)

(assert (=> b!1088371 (=> (not res!725991) (not e!621708))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12625 0))(
  ( (ValueCellFull!12625 (v!16013 V!40685)) (EmptyCell!12625) )
))
(declare-datatypes ((array!70232 0))(
  ( (array!70233 (arr!33786 (Array (_ BitVec 32) ValueCell!12625)) (size!34323 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70232)

(assert (=> b!1088371 (= res!725991 (and (= (size!34323 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34322 _keys!1070) (size!34323 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088372 () Bool)

(assert (=> b!1088372 (= e!621707 true)))

(declare-fun -!822 (ListLongMap!15053 (_ BitVec 64)) ListLongMap!15053)

(assert (=> b!1088372 (= (-!822 lt!484760 k!904) lt!484762)))

(declare-datatypes ((Unit!35759 0))(
  ( (Unit!35760) )
))
(declare-fun lt!484756 () Unit!35759)

(declare-fun addRemoveCommutativeForDiffKeys!59 (ListLongMap!15053 (_ BitVec 64) V!40685 (_ BitVec 64)) Unit!35759)

(assert (=> b!1088372 (= lt!484756 (addRemoveCommutativeForDiffKeys!59 lt!484753 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1088373 () Bool)

(declare-fun res!725998 () Bool)

(assert (=> b!1088373 (=> (not res!725998) (not e!621708))))

(assert (=> b!1088373 (= res!725998 (= (select (arr!33785 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!41758 () Bool)

(declare-fun tp!79851 () Bool)

(declare-fun e!621706 () Bool)

(assert (=> mapNonEmpty!41758 (= mapRes!41758 (and tp!79851 e!621706))))

(declare-fun mapRest!41758 () (Array (_ BitVec 32) ValueCell!12625))

(declare-fun mapValue!41758 () ValueCell!12625)

(declare-fun mapKey!41758 () (_ BitVec 32))

(assert (=> mapNonEmpty!41758 (= (arr!33786 _values!874) (store mapRest!41758 mapKey!41758 mapValue!41758))))

(declare-fun b!1088374 () Bool)

(assert (=> b!1088374 (= e!621709 (not e!621705))))

(declare-fun res!725990 () Bool)

(assert (=> b!1088374 (=> res!725990 e!621705)))

(assert (=> b!1088374 (= res!725990 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40685)

(declare-fun getCurrentListMap!4292 (array!70230 array!70232 (_ BitVec 32) (_ BitVec 32) V!40685 V!40685 (_ BitVec 32) Int) ListLongMap!15053)

(assert (=> b!1088374 (= lt!484757 (getCurrentListMap!4292 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484758 () array!70232)

(assert (=> b!1088374 (= lt!484763 (getCurrentListMap!4292 lt!484761 lt!484758 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1088374 (and (= lt!484752 lt!484751) (= lt!484751 lt!484752))))

(assert (=> b!1088374 (= lt!484751 (-!822 lt!484753 k!904))))

(declare-fun lt!484755 () Unit!35759)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!98 (array!70230 array!70232 (_ BitVec 32) (_ BitVec 32) V!40685 V!40685 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35759)

(assert (=> b!1088374 (= lt!484755 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!98 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4044 (array!70230 array!70232 (_ BitVec 32) (_ BitVec 32) V!40685 V!40685 (_ BitVec 32) Int) ListLongMap!15053)

(assert (=> b!1088374 (= lt!484752 (getCurrentListMapNoExtraKeys!4044 lt!484761 lt!484758 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2180 (Int (_ BitVec 64)) V!40685)

(assert (=> b!1088374 (= lt!484758 (array!70233 (store (arr!33786 _values!874) i!650 (ValueCellFull!12625 (dynLambda!2180 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34323 _values!874)))))

(assert (=> b!1088374 (= lt!484753 (getCurrentListMapNoExtraKeys!4044 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088374 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484754 () Unit!35759)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70230 (_ BitVec 64) (_ BitVec 32)) Unit!35759)

(assert (=> b!1088374 (= lt!484754 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1088375 () Bool)

(assert (=> b!1088375 (= e!621706 tp_is_empty!26669)))

(declare-fun res!725989 () Bool)

(assert (=> start!96050 (=> (not res!725989) (not e!621708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96050 (= res!725989 (validMask!0 mask!1414))))

(assert (=> start!96050 e!621708))

(assert (=> start!96050 tp!79850))

(assert (=> start!96050 true))

(assert (=> start!96050 tp_is_empty!26669))

(declare-fun array_inv!25922 (array!70230) Bool)

(assert (=> start!96050 (array_inv!25922 _keys!1070)))

(declare-fun e!621711 () Bool)

(declare-fun array_inv!25923 (array!70232) Bool)

(assert (=> start!96050 (and (array_inv!25923 _values!874) e!621711)))

(declare-fun b!1088365 () Bool)

(declare-fun res!725999 () Bool)

(assert (=> b!1088365 (=> (not res!725999) (not e!621708))))

(assert (=> b!1088365 (= res!725999 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23710))))

(declare-fun b!1088376 () Bool)

(declare-fun res!725993 () Bool)

(assert (=> b!1088376 (=> (not res!725993) (not e!621708))))

(assert (=> b!1088376 (= res!725993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088377 () Bool)

(assert (=> b!1088377 (= e!621711 (and e!621710 mapRes!41758))))

(declare-fun condMapEmpty!41758 () Bool)

(declare-fun mapDefault!41758 () ValueCell!12625)


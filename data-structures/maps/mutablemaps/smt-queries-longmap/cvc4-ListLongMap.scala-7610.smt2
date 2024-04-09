; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96020 () Bool)

(assert start!96020)

(declare-fun b_free!22637 () Bool)

(declare-fun b_next!22637 () Bool)

(assert (=> start!96020 (= b_free!22637 (not b_next!22637))))

(declare-fun tp!79760 () Bool)

(declare-fun b_and!35967 () Bool)

(assert (=> start!96020 (= tp!79760 b_and!35967)))

(declare-fun mapIsEmpty!41713 () Bool)

(declare-fun mapRes!41713 () Bool)

(assert (=> mapIsEmpty!41713 mapRes!41713))

(declare-fun b!1087704 () Bool)

(declare-fun e!621349 () Bool)

(declare-fun tp_is_empty!26639 () Bool)

(assert (=> b!1087704 (= e!621349 tp_is_empty!26639)))

(declare-fun res!725494 () Bool)

(declare-fun e!621348 () Bool)

(assert (=> start!96020 (=> (not res!725494) (not e!621348))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96020 (= res!725494 (validMask!0 mask!1414))))

(assert (=> start!96020 e!621348))

(assert (=> start!96020 tp!79760))

(assert (=> start!96020 true))

(assert (=> start!96020 tp_is_empty!26639))

(declare-datatypes ((array!70170 0))(
  ( (array!70171 (arr!33755 (Array (_ BitVec 32) (_ BitVec 64))) (size!34292 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70170)

(declare-fun array_inv!25898 (array!70170) Bool)

(assert (=> start!96020 (array_inv!25898 _keys!1070)))

(declare-datatypes ((V!40645 0))(
  ( (V!40646 (val!13376 Int)) )
))
(declare-datatypes ((ValueCell!12610 0))(
  ( (ValueCellFull!12610 (v!15998 V!40645)) (EmptyCell!12610) )
))
(declare-datatypes ((array!70172 0))(
  ( (array!70173 (arr!33756 (Array (_ BitVec 32) ValueCell!12610)) (size!34293 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70172)

(declare-fun e!621346 () Bool)

(declare-fun array_inv!25899 (array!70172) Bool)

(assert (=> start!96020 (and (array_inv!25899 _values!874) e!621346)))

(declare-fun b!1087705 () Bool)

(declare-fun res!725502 () Bool)

(assert (=> b!1087705 (=> (not res!725502) (not e!621348))))

(declare-datatypes ((List!23685 0))(
  ( (Nil!23682) (Cons!23681 (h!24890 (_ BitVec 64)) (t!33387 List!23685)) )
))
(declare-fun arrayNoDuplicates!0 (array!70170 (_ BitVec 32) List!23685) Bool)

(assert (=> b!1087705 (= res!725502 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23682))))

(declare-fun b!1087706 () Bool)

(declare-fun e!621351 () Bool)

(declare-fun e!621350 () Bool)

(assert (=> b!1087706 (= e!621351 (not e!621350))))

(declare-fun res!725496 () Bool)

(assert (=> b!1087706 (=> res!725496 e!621350)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087706 (= res!725496 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40645)

(declare-datatypes ((tuple2!17044 0))(
  ( (tuple2!17045 (_1!8532 (_ BitVec 64)) (_2!8532 V!40645)) )
))
(declare-datatypes ((List!23686 0))(
  ( (Nil!23683) (Cons!23682 (h!24891 tuple2!17044) (t!33388 List!23686)) )
))
(declare-datatypes ((ListLongMap!15025 0))(
  ( (ListLongMap!15026 (toList!7528 List!23686)) )
))
(declare-fun lt!484172 () ListLongMap!15025)

(declare-fun zeroValue!831 () V!40645)

(declare-fun getCurrentListMap!4280 (array!70170 array!70172 (_ BitVec 32) (_ BitVec 32) V!40645 V!40645 (_ BitVec 32) Int) ListLongMap!15025)

(assert (=> b!1087706 (= lt!484172 (getCurrentListMap!4280 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484177 () array!70172)

(declare-fun lt!484169 () ListLongMap!15025)

(declare-fun lt!484174 () array!70170)

(assert (=> b!1087706 (= lt!484169 (getCurrentListMap!4280 lt!484174 lt!484177 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484167 () ListLongMap!15025)

(declare-fun lt!484171 () ListLongMap!15025)

(assert (=> b!1087706 (and (= lt!484167 lt!484171) (= lt!484171 lt!484167))))

(declare-fun lt!484178 () ListLongMap!15025)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!808 (ListLongMap!15025 (_ BitVec 64)) ListLongMap!15025)

(assert (=> b!1087706 (= lt!484171 (-!808 lt!484178 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35731 0))(
  ( (Unit!35732) )
))
(declare-fun lt!484176 () Unit!35731)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!86 (array!70170 array!70172 (_ BitVec 32) (_ BitVec 32) V!40645 V!40645 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35731)

(assert (=> b!1087706 (= lt!484176 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!86 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4032 (array!70170 array!70172 (_ BitVec 32) (_ BitVec 32) V!40645 V!40645 (_ BitVec 32) Int) ListLongMap!15025)

(assert (=> b!1087706 (= lt!484167 (getCurrentListMapNoExtraKeys!4032 lt!484174 lt!484177 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2168 (Int (_ BitVec 64)) V!40645)

(assert (=> b!1087706 (= lt!484177 (array!70173 (store (arr!33756 _values!874) i!650 (ValueCellFull!12610 (dynLambda!2168 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34293 _values!874)))))

(assert (=> b!1087706 (= lt!484178 (getCurrentListMapNoExtraKeys!4032 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087706 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484175 () Unit!35731)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70170 (_ BitVec 64) (_ BitVec 32)) Unit!35731)

(assert (=> b!1087706 (= lt!484175 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41713 () Bool)

(declare-fun tp!79761 () Bool)

(assert (=> mapNonEmpty!41713 (= mapRes!41713 (and tp!79761 e!621349))))

(declare-fun mapKey!41713 () (_ BitVec 32))

(declare-fun mapRest!41713 () (Array (_ BitVec 32) ValueCell!12610))

(declare-fun mapValue!41713 () ValueCell!12610)

(assert (=> mapNonEmpty!41713 (= (arr!33756 _values!874) (store mapRest!41713 mapKey!41713 mapValue!41713))))

(declare-fun b!1087707 () Bool)

(declare-fun res!725497 () Bool)

(assert (=> b!1087707 (=> (not res!725497) (not e!621351))))

(assert (=> b!1087707 (= res!725497 (arrayNoDuplicates!0 lt!484174 #b00000000000000000000000000000000 Nil!23682))))

(declare-fun b!1087708 () Bool)

(declare-fun res!725498 () Bool)

(assert (=> b!1087708 (=> (not res!725498) (not e!621348))))

(assert (=> b!1087708 (= res!725498 (and (= (size!34293 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34292 _keys!1070) (size!34293 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087709 () Bool)

(declare-fun res!725499 () Bool)

(assert (=> b!1087709 (=> (not res!725499) (not e!621348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70170 (_ BitVec 32)) Bool)

(assert (=> b!1087709 (= res!725499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087710 () Bool)

(declare-fun e!621347 () Bool)

(assert (=> b!1087710 (= e!621347 true)))

(declare-fun lt!484168 () ListLongMap!15025)

(declare-fun lt!484166 () ListLongMap!15025)

(assert (=> b!1087710 (= (-!808 lt!484168 k!904) lt!484166)))

(declare-fun lt!484170 () Unit!35731)

(declare-fun addRemoveCommutativeForDiffKeys!47 (ListLongMap!15025 (_ BitVec 64) V!40645 (_ BitVec 64)) Unit!35731)

(assert (=> b!1087710 (= lt!484170 (addRemoveCommutativeForDiffKeys!47 lt!484178 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1087711 () Bool)

(assert (=> b!1087711 (= e!621350 e!621347)))

(declare-fun res!725495 () Bool)

(assert (=> b!1087711 (=> res!725495 e!621347)))

(assert (=> b!1087711 (= res!725495 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(assert (=> b!1087711 (= lt!484169 lt!484166)))

(declare-fun lt!484173 () tuple2!17044)

(declare-fun +!3252 (ListLongMap!15025 tuple2!17044) ListLongMap!15025)

(assert (=> b!1087711 (= lt!484166 (+!3252 lt!484171 lt!484173))))

(assert (=> b!1087711 (= lt!484172 lt!484168)))

(assert (=> b!1087711 (= lt!484168 (+!3252 lt!484178 lt!484173))))

(assert (=> b!1087711 (= lt!484169 (+!3252 lt!484167 lt!484173))))

(assert (=> b!1087711 (= lt!484173 (tuple2!17045 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087712 () Bool)

(declare-fun res!725503 () Bool)

(assert (=> b!1087712 (=> (not res!725503) (not e!621348))))

(assert (=> b!1087712 (= res!725503 (= (select (arr!33755 _keys!1070) i!650) k!904))))

(declare-fun b!1087713 () Bool)

(declare-fun e!621352 () Bool)

(assert (=> b!1087713 (= e!621346 (and e!621352 mapRes!41713))))

(declare-fun condMapEmpty!41713 () Bool)

(declare-fun mapDefault!41713 () ValueCell!12610)


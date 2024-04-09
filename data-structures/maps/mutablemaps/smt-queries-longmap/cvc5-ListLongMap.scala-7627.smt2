; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96118 () Bool)

(assert start!96118)

(declare-fun b_free!22735 () Bool)

(declare-fun b_next!22735 () Bool)

(assert (=> start!96118 (= b_free!22735 (not b_next!22735))))

(declare-fun tp!80055 () Bool)

(declare-fun b_and!36163 () Bool)

(assert (=> start!96118 (= tp!80055 b_and!36163)))

(declare-fun b!1089869 () Bool)

(declare-fun e!622524 () Bool)

(declare-fun tp_is_empty!26737 () Bool)

(assert (=> b!1089869 (= e!622524 tp_is_empty!26737)))

(declare-fun b!1089870 () Bool)

(declare-fun res!727130 () Bool)

(declare-fun e!622526 () Bool)

(assert (=> b!1089870 (=> (not res!727130) (not e!622526))))

(declare-datatypes ((array!70362 0))(
  ( (array!70363 (arr!33851 (Array (_ BitVec 32) (_ BitVec 64))) (size!34388 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70362)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089870 (= res!727130 (= (select (arr!33851 _keys!1070) i!650) k!904))))

(declare-fun b!1089871 () Bool)

(declare-fun e!622521 () Bool)

(declare-fun e!622527 () Bool)

(assert (=> b!1089871 (= e!622521 (not e!622527))))

(declare-fun res!727124 () Bool)

(assert (=> b!1089871 (=> res!727124 e!622527)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089871 (= res!727124 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40777 0))(
  ( (V!40778 (val!13425 Int)) )
))
(declare-fun minValue!831 () V!40777)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17136 0))(
  ( (tuple2!17137 (_1!8578 (_ BitVec 64)) (_2!8578 V!40777)) )
))
(declare-datatypes ((List!23774 0))(
  ( (Nil!23771) (Cons!23770 (h!24979 tuple2!17136) (t!33574 List!23774)) )
))
(declare-datatypes ((ListLongMap!15117 0))(
  ( (ListLongMap!15118 (toList!7574 List!23774)) )
))
(declare-fun lt!486056 () ListLongMap!15117)

(declare-fun zeroValue!831 () V!40777)

(declare-datatypes ((ValueCell!12659 0))(
  ( (ValueCellFull!12659 (v!16047 V!40777)) (EmptyCell!12659) )
))
(declare-datatypes ((array!70364 0))(
  ( (array!70365 (arr!33852 (Array (_ BitVec 32) ValueCell!12659)) (size!34389 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70364)

(declare-fun getCurrentListMap!4315 (array!70362 array!70364 (_ BitVec 32) (_ BitVec 32) V!40777 V!40777 (_ BitVec 32) Int) ListLongMap!15117)

(assert (=> b!1089871 (= lt!486056 (getCurrentListMap!4315 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486061 () array!70364)

(declare-fun lt!486054 () array!70362)

(declare-fun lt!486059 () ListLongMap!15117)

(assert (=> b!1089871 (= lt!486059 (getCurrentListMap!4315 lt!486054 lt!486061 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486057 () ListLongMap!15117)

(declare-fun lt!486058 () ListLongMap!15117)

(assert (=> b!1089871 (and (= lt!486057 lt!486058) (= lt!486058 lt!486057))))

(declare-fun lt!486055 () ListLongMap!15117)

(declare-fun -!852 (ListLongMap!15117 (_ BitVec 64)) ListLongMap!15117)

(assert (=> b!1089871 (= lt!486058 (-!852 lt!486055 k!904))))

(declare-datatypes ((Unit!35819 0))(
  ( (Unit!35820) )
))
(declare-fun lt!486050 () Unit!35819)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!121 (array!70362 array!70364 (_ BitVec 32) (_ BitVec 32) V!40777 V!40777 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35819)

(assert (=> b!1089871 (= lt!486050 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!121 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4067 (array!70362 array!70364 (_ BitVec 32) (_ BitVec 32) V!40777 V!40777 (_ BitVec 32) Int) ListLongMap!15117)

(assert (=> b!1089871 (= lt!486057 (getCurrentListMapNoExtraKeys!4067 lt!486054 lt!486061 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2203 (Int (_ BitVec 64)) V!40777)

(assert (=> b!1089871 (= lt!486061 (array!70365 (store (arr!33852 _values!874) i!650 (ValueCellFull!12659 (dynLambda!2203 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34389 _values!874)))))

(assert (=> b!1089871 (= lt!486055 (getCurrentListMapNoExtraKeys!4067 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089871 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486052 () Unit!35819)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70362 (_ BitVec 64) (_ BitVec 32)) Unit!35819)

(assert (=> b!1089871 (= lt!486052 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41860 () Bool)

(declare-fun mapRes!41860 () Bool)

(declare-fun tp!80054 () Bool)

(declare-fun e!622523 () Bool)

(assert (=> mapNonEmpty!41860 (= mapRes!41860 (and tp!80054 e!622523))))

(declare-fun mapKey!41860 () (_ BitVec 32))

(declare-fun mapValue!41860 () ValueCell!12659)

(declare-fun mapRest!41860 () (Array (_ BitVec 32) ValueCell!12659))

(assert (=> mapNonEmpty!41860 (= (arr!33852 _values!874) (store mapRest!41860 mapKey!41860 mapValue!41860))))

(declare-fun b!1089872 () Bool)

(assert (=> b!1089872 (= e!622523 tp_is_empty!26737)))

(declare-fun b!1089873 () Bool)

(assert (=> b!1089873 (= e!622526 e!622521)))

(declare-fun res!727123 () Bool)

(assert (=> b!1089873 (=> (not res!727123) (not e!622521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70362 (_ BitVec 32)) Bool)

(assert (=> b!1089873 (= res!727123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486054 mask!1414))))

(assert (=> b!1089873 (= lt!486054 (array!70363 (store (arr!33851 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34388 _keys!1070)))))

(declare-fun res!727126 () Bool)

(assert (=> start!96118 (=> (not res!727126) (not e!622526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96118 (= res!727126 (validMask!0 mask!1414))))

(assert (=> start!96118 e!622526))

(assert (=> start!96118 tp!80055))

(assert (=> start!96118 true))

(assert (=> start!96118 tp_is_empty!26737))

(declare-fun array_inv!25966 (array!70362) Bool)

(assert (=> start!96118 (array_inv!25966 _keys!1070)))

(declare-fun e!622528 () Bool)

(declare-fun array_inv!25967 (array!70364) Bool)

(assert (=> start!96118 (and (array_inv!25967 _values!874) e!622528)))

(declare-fun b!1089874 () Bool)

(assert (=> b!1089874 (= e!622528 (and e!622524 mapRes!41860))))

(declare-fun condMapEmpty!41860 () Bool)

(declare-fun mapDefault!41860 () ValueCell!12659)


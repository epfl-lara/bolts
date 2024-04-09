; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96082 () Bool)

(assert start!96082)

(declare-fun b_free!22699 () Bool)

(declare-fun b_next!22699 () Bool)

(assert (=> start!96082 (= b_free!22699 (not b_next!22699))))

(declare-fun tp!79946 () Bool)

(declare-fun b_and!36091 () Bool)

(assert (=> start!96082 (= tp!79946 b_and!36091)))

(declare-fun b!1089068 () Bool)

(declare-fun res!726519 () Bool)

(declare-fun e!622089 () Bool)

(assert (=> b!1089068 (=> (not res!726519) (not e!622089))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70292 0))(
  ( (array!70293 (arr!33816 (Array (_ BitVec 32) (_ BitVec 64))) (size!34353 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70292)

(declare-datatypes ((V!40729 0))(
  ( (V!40730 (val!13407 Int)) )
))
(declare-datatypes ((ValueCell!12641 0))(
  ( (ValueCellFull!12641 (v!16029 V!40729)) (EmptyCell!12641) )
))
(declare-datatypes ((array!70294 0))(
  ( (array!70295 (arr!33817 (Array (_ BitVec 32) ValueCell!12641)) (size!34354 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70294)

(assert (=> b!1089068 (= res!726519 (and (= (size!34354 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34353 _keys!1070) (size!34354 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089069 () Bool)

(declare-fun e!622090 () Bool)

(declare-fun e!622095 () Bool)

(assert (=> b!1089069 (= e!622090 e!622095)))

(declare-fun res!726522 () Bool)

(assert (=> b!1089069 (=> res!726522 e!622095)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1089069 (= res!726522 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17102 0))(
  ( (tuple2!17103 (_1!8561 (_ BitVec 64)) (_2!8561 V!40729)) )
))
(declare-datatypes ((List!23741 0))(
  ( (Nil!23738) (Cons!23737 (h!24946 tuple2!17102) (t!33505 List!23741)) )
))
(declare-datatypes ((ListLongMap!15083 0))(
  ( (ListLongMap!15084 (toList!7557 List!23741)) )
))
(declare-fun lt!485381 () ListLongMap!15083)

(declare-fun lt!485380 () ListLongMap!15083)

(assert (=> b!1089069 (= lt!485381 lt!485380)))

(declare-fun lt!485387 () ListLongMap!15083)

(declare-fun lt!485383 () tuple2!17102)

(declare-fun +!3273 (ListLongMap!15083 tuple2!17102) ListLongMap!15083)

(assert (=> b!1089069 (= lt!485380 (+!3273 lt!485387 lt!485383))))

(declare-fun lt!485385 () ListLongMap!15083)

(declare-fun lt!485379 () ListLongMap!15083)

(assert (=> b!1089069 (= lt!485385 lt!485379)))

(declare-fun lt!485376 () ListLongMap!15083)

(assert (=> b!1089069 (= lt!485379 (+!3273 lt!485376 lt!485383))))

(declare-fun lt!485386 () ListLongMap!15083)

(assert (=> b!1089069 (= lt!485381 (+!3273 lt!485386 lt!485383))))

(declare-fun zeroValue!831 () V!40729)

(assert (=> b!1089069 (= lt!485383 (tuple2!17103 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1089070 () Bool)

(declare-fun e!622093 () Bool)

(assert (=> b!1089070 (= e!622089 e!622093)))

(declare-fun res!726527 () Bool)

(assert (=> b!1089070 (=> (not res!726527) (not e!622093))))

(declare-fun lt!485375 () array!70292)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70292 (_ BitVec 32)) Bool)

(assert (=> b!1089070 (= res!726527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485375 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089070 (= lt!485375 (array!70293 (store (arr!33816 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34353 _keys!1070)))))

(declare-fun b!1089071 () Bool)

(declare-fun res!726523 () Bool)

(assert (=> b!1089071 (=> (not res!726523) (not e!622093))))

(declare-datatypes ((List!23742 0))(
  ( (Nil!23739) (Cons!23738 (h!24947 (_ BitVec 64)) (t!33506 List!23742)) )
))
(declare-fun arrayNoDuplicates!0 (array!70292 (_ BitVec 32) List!23742) Bool)

(assert (=> b!1089071 (= res!726523 (arrayNoDuplicates!0 lt!485375 #b00000000000000000000000000000000 Nil!23739))))

(declare-fun b!1089072 () Bool)

(assert (=> b!1089072 (= e!622093 (not e!622090))))

(declare-fun res!726521 () Bool)

(assert (=> b!1089072 (=> res!726521 e!622090)))

(assert (=> b!1089072 (= res!726521 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun minValue!831 () V!40729)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4302 (array!70292 array!70294 (_ BitVec 32) (_ BitVec 32) V!40729 V!40729 (_ BitVec 32) Int) ListLongMap!15083)

(assert (=> b!1089072 (= lt!485385 (getCurrentListMap!4302 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485378 () array!70294)

(assert (=> b!1089072 (= lt!485381 (getCurrentListMap!4302 lt!485375 lt!485378 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089072 (and (= lt!485386 lt!485387) (= lt!485387 lt!485386))))

(declare-fun -!835 (ListLongMap!15083 (_ BitVec 64)) ListLongMap!15083)

(assert (=> b!1089072 (= lt!485387 (-!835 lt!485376 k!904))))

(declare-datatypes ((Unit!35785 0))(
  ( (Unit!35786) )
))
(declare-fun lt!485377 () Unit!35785)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!108 (array!70292 array!70294 (_ BitVec 32) (_ BitVec 32) V!40729 V!40729 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35785)

(assert (=> b!1089072 (= lt!485377 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!108 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4054 (array!70292 array!70294 (_ BitVec 32) (_ BitVec 32) V!40729 V!40729 (_ BitVec 32) Int) ListLongMap!15083)

(assert (=> b!1089072 (= lt!485386 (getCurrentListMapNoExtraKeys!4054 lt!485375 lt!485378 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2190 (Int (_ BitVec 64)) V!40729)

(assert (=> b!1089072 (= lt!485378 (array!70295 (store (arr!33817 _values!874) i!650 (ValueCellFull!12641 (dynLambda!2190 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34354 _values!874)))))

(assert (=> b!1089072 (= lt!485376 (getCurrentListMapNoExtraKeys!4054 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089072 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!485382 () Unit!35785)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70292 (_ BitVec 64) (_ BitVec 32)) Unit!35785)

(assert (=> b!1089072 (= lt!485382 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1089073 () Bool)

(declare-fun e!622092 () Bool)

(declare-fun e!622091 () Bool)

(declare-fun mapRes!41806 () Bool)

(assert (=> b!1089073 (= e!622092 (and e!622091 mapRes!41806))))

(declare-fun condMapEmpty!41806 () Bool)

(declare-fun mapDefault!41806 () ValueCell!12641)


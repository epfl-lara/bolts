; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96010 () Bool)

(assert start!96010)

(declare-fun b_free!22627 () Bool)

(declare-fun b_next!22627 () Bool)

(assert (=> start!96010 (= b_free!22627 (not b_next!22627))))

(declare-fun tp!79730 () Bool)

(declare-fun b_and!35947 () Bool)

(assert (=> start!96010 (= tp!79730 b_and!35947)))

(declare-fun res!725337 () Bool)

(declare-fun e!621229 () Bool)

(assert (=> start!96010 (=> (not res!725337) (not e!621229))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96010 (= res!725337 (validMask!0 mask!1414))))

(assert (=> start!96010 e!621229))

(assert (=> start!96010 tp!79730))

(assert (=> start!96010 true))

(declare-fun tp_is_empty!26629 () Bool)

(assert (=> start!96010 tp_is_empty!26629))

(declare-datatypes ((array!70150 0))(
  ( (array!70151 (arr!33745 (Array (_ BitVec 32) (_ BitVec 64))) (size!34282 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70150)

(declare-fun array_inv!25890 (array!70150) Bool)

(assert (=> start!96010 (array_inv!25890 _keys!1070)))

(declare-datatypes ((V!40633 0))(
  ( (V!40634 (val!13371 Int)) )
))
(declare-datatypes ((ValueCell!12605 0))(
  ( (ValueCellFull!12605 (v!15993 V!40633)) (EmptyCell!12605) )
))
(declare-datatypes ((array!70152 0))(
  ( (array!70153 (arr!33746 (Array (_ BitVec 32) ValueCell!12605)) (size!34283 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70152)

(declare-fun e!621227 () Bool)

(declare-fun array_inv!25891 (array!70152) Bool)

(assert (=> start!96010 (and (array_inv!25891 _values!874) e!621227)))

(declare-fun b!1087484 () Bool)

(declare-fun e!621230 () Bool)

(declare-fun e!621225 () Bool)

(assert (=> b!1087484 (= e!621230 (not e!621225))))

(declare-fun res!725329 () Bool)

(assert (=> b!1087484 (=> res!725329 e!621225)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087484 (= res!725329 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40633)

(declare-datatypes ((tuple2!17034 0))(
  ( (tuple2!17035 (_1!8527 (_ BitVec 64)) (_2!8527 V!40633)) )
))
(declare-datatypes ((List!23675 0))(
  ( (Nil!23672) (Cons!23671 (h!24880 tuple2!17034) (t!33367 List!23675)) )
))
(declare-datatypes ((ListLongMap!15015 0))(
  ( (ListLongMap!15016 (toList!7523 List!23675)) )
))
(declare-fun lt!483976 () ListLongMap!15015)

(declare-fun zeroValue!831 () V!40633)

(declare-fun getCurrentListMap!4276 (array!70150 array!70152 (_ BitVec 32) (_ BitVec 32) V!40633 V!40633 (_ BitVec 32) Int) ListLongMap!15015)

(assert (=> b!1087484 (= lt!483976 (getCurrentListMap!4276 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483982 () ListLongMap!15015)

(declare-fun lt!483971 () array!70150)

(declare-fun lt!483983 () array!70152)

(assert (=> b!1087484 (= lt!483982 (getCurrentListMap!4276 lt!483971 lt!483983 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483979 () ListLongMap!15015)

(declare-fun lt!483975 () ListLongMap!15015)

(assert (=> b!1087484 (and (= lt!483979 lt!483975) (= lt!483975 lt!483979))))

(declare-fun lt!483977 () ListLongMap!15015)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!803 (ListLongMap!15015 (_ BitVec 64)) ListLongMap!15015)

(assert (=> b!1087484 (= lt!483975 (-!803 lt!483977 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35721 0))(
  ( (Unit!35722) )
))
(declare-fun lt!483978 () Unit!35721)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!82 (array!70150 array!70152 (_ BitVec 32) (_ BitVec 32) V!40633 V!40633 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35721)

(assert (=> b!1087484 (= lt!483978 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!82 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4028 (array!70150 array!70152 (_ BitVec 32) (_ BitVec 32) V!40633 V!40633 (_ BitVec 32) Int) ListLongMap!15015)

(assert (=> b!1087484 (= lt!483979 (getCurrentListMapNoExtraKeys!4028 lt!483971 lt!483983 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2164 (Int (_ BitVec 64)) V!40633)

(assert (=> b!1087484 (= lt!483983 (array!70153 (store (arr!33746 _values!874) i!650 (ValueCellFull!12605 (dynLambda!2164 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34283 _values!874)))))

(assert (=> b!1087484 (= lt!483977 (getCurrentListMapNoExtraKeys!4028 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087484 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!483973 () Unit!35721)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70150 (_ BitVec 64) (_ BitVec 32)) Unit!35721)

(assert (=> b!1087484 (= lt!483973 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1087485 () Bool)

(declare-fun res!725334 () Bool)

(assert (=> b!1087485 (=> (not res!725334) (not e!621230))))

(declare-datatypes ((List!23676 0))(
  ( (Nil!23673) (Cons!23672 (h!24881 (_ BitVec 64)) (t!33368 List!23676)) )
))
(declare-fun arrayNoDuplicates!0 (array!70150 (_ BitVec 32) List!23676) Bool)

(assert (=> b!1087485 (= res!725334 (arrayNoDuplicates!0 lt!483971 #b00000000000000000000000000000000 Nil!23673))))

(declare-fun b!1087486 () Bool)

(declare-fun res!725336 () Bool)

(assert (=> b!1087486 (=> (not res!725336) (not e!621229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70150 (_ BitVec 32)) Bool)

(assert (=> b!1087486 (= res!725336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087487 () Bool)

(declare-fun res!725338 () Bool)

(assert (=> b!1087487 (=> (not res!725338) (not e!621229))))

(assert (=> b!1087487 (= res!725338 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23673))))

(declare-fun b!1087488 () Bool)

(declare-fun e!621232 () Bool)

(assert (=> b!1087488 (= e!621225 e!621232)))

(declare-fun res!725332 () Bool)

(assert (=> b!1087488 (=> res!725332 e!621232)))

(assert (=> b!1087488 (= res!725332 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!483972 () ListLongMap!15015)

(assert (=> b!1087488 (= lt!483982 lt!483972)))

(declare-fun lt!483981 () tuple2!17034)

(declare-fun +!3249 (ListLongMap!15015 tuple2!17034) ListLongMap!15015)

(assert (=> b!1087488 (= lt!483972 (+!3249 lt!483975 lt!483981))))

(declare-fun lt!483974 () ListLongMap!15015)

(assert (=> b!1087488 (= lt!483976 lt!483974)))

(assert (=> b!1087488 (= lt!483974 (+!3249 lt!483977 lt!483981))))

(assert (=> b!1087488 (= lt!483982 (+!3249 lt!483979 lt!483981))))

(assert (=> b!1087488 (= lt!483981 (tuple2!17035 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087489 () Bool)

(declare-fun e!621228 () Bool)

(assert (=> b!1087489 (= e!621228 tp_is_empty!26629)))

(declare-fun b!1087490 () Bool)

(assert (=> b!1087490 (= e!621229 e!621230)))

(declare-fun res!725331 () Bool)

(assert (=> b!1087490 (=> (not res!725331) (not e!621230))))

(assert (=> b!1087490 (= res!725331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483971 mask!1414))))

(assert (=> b!1087490 (= lt!483971 (array!70151 (store (arr!33745 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34282 _keys!1070)))))

(declare-fun b!1087491 () Bool)

(assert (=> b!1087491 (= e!621232 true)))

(assert (=> b!1087491 (= (-!803 lt!483974 k!904) lt!483972)))

(declare-fun lt!483980 () Unit!35721)

(declare-fun addRemoveCommutativeForDiffKeys!43 (ListLongMap!15015 (_ BitVec 64) V!40633 (_ BitVec 64)) Unit!35721)

(assert (=> b!1087491 (= lt!483980 (addRemoveCommutativeForDiffKeys!43 lt!483977 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1087492 () Bool)

(declare-fun mapRes!41698 () Bool)

(assert (=> b!1087492 (= e!621227 (and e!621228 mapRes!41698))))

(declare-fun condMapEmpty!41698 () Bool)

(declare-fun mapDefault!41698 () ValueCell!12605)


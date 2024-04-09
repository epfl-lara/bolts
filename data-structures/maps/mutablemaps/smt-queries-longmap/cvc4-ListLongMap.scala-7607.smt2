; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96002 () Bool)

(assert start!96002)

(declare-fun b_free!22619 () Bool)

(declare-fun b_next!22619 () Bool)

(assert (=> start!96002 (= b_free!22619 (not b_next!22619))))

(declare-fun tp!79706 () Bool)

(declare-fun b_and!35931 () Bool)

(assert (=> start!96002 (= tp!79706 b_and!35931)))

(declare-fun b!1087307 () Bool)

(declare-fun e!621129 () Bool)

(declare-fun e!621133 () Bool)

(assert (=> b!1087307 (= e!621129 e!621133)))

(declare-fun res!725204 () Bool)

(assert (=> b!1087307 (=> (not res!725204) (not e!621133))))

(declare-datatypes ((array!70136 0))(
  ( (array!70137 (arr!33738 (Array (_ BitVec 32) (_ BitVec 64))) (size!34275 (_ BitVec 32))) )
))
(declare-fun lt!483826 () array!70136)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70136 (_ BitVec 32)) Bool)

(assert (=> b!1087307 (= res!725204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483826 mask!1414))))

(declare-fun _keys!1070 () array!70136)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1087307 (= lt!483826 (array!70137 (store (arr!33738 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34275 _keys!1070)))))

(declare-datatypes ((V!40621 0))(
  ( (V!40622 (val!13367 Int)) )
))
(declare-datatypes ((tuple2!17028 0))(
  ( (tuple2!17029 (_1!8524 (_ BitVec 64)) (_2!8524 V!40621)) )
))
(declare-datatypes ((List!23669 0))(
  ( (Nil!23666) (Cons!23665 (h!24874 tuple2!17028) (t!33353 List!23669)) )
))
(declare-datatypes ((ListLongMap!15009 0))(
  ( (ListLongMap!15010 (toList!7520 List!23669)) )
))
(declare-fun lt!483823 () ListLongMap!15009)

(declare-fun b!1087308 () Bool)

(declare-fun e!621134 () Bool)

(declare-fun lt!483820 () ListLongMap!15009)

(declare-fun lt!483821 () tuple2!17028)

(declare-fun +!3247 (ListLongMap!15009 tuple2!17028) ListLongMap!15009)

(assert (=> b!1087308 (= e!621134 (= lt!483820 (+!3247 lt!483823 lt!483821)))))

(declare-fun b!1087309 () Bool)

(declare-fun res!725202 () Bool)

(assert (=> b!1087309 (=> (not res!725202) (not e!621129))))

(declare-datatypes ((List!23670 0))(
  ( (Nil!23667) (Cons!23666 (h!24875 (_ BitVec 64)) (t!33354 List!23670)) )
))
(declare-fun arrayNoDuplicates!0 (array!70136 (_ BitVec 32) List!23670) Bool)

(assert (=> b!1087309 (= res!725202 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23667))))

(declare-fun res!725207 () Bool)

(assert (=> start!96002 (=> (not res!725207) (not e!621129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96002 (= res!725207 (validMask!0 mask!1414))))

(assert (=> start!96002 e!621129))

(assert (=> start!96002 tp!79706))

(assert (=> start!96002 true))

(declare-fun tp_is_empty!26621 () Bool)

(assert (=> start!96002 tp_is_empty!26621))

(declare-fun array_inv!25884 (array!70136) Bool)

(assert (=> start!96002 (array_inv!25884 _keys!1070)))

(declare-datatypes ((ValueCell!12601 0))(
  ( (ValueCellFull!12601 (v!15989 V!40621)) (EmptyCell!12601) )
))
(declare-datatypes ((array!70138 0))(
  ( (array!70139 (arr!33739 (Array (_ BitVec 32) ValueCell!12601)) (size!34276 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70138)

(declare-fun e!621136 () Bool)

(declare-fun array_inv!25885 (array!70138) Bool)

(assert (=> start!96002 (and (array_inv!25885 _values!874) e!621136)))

(declare-fun b!1087310 () Bool)

(declare-fun e!621130 () Bool)

(assert (=> b!1087310 (= e!621130 tp_is_empty!26621)))

(declare-fun b!1087311 () Bool)

(declare-fun e!621132 () Bool)

(assert (=> b!1087311 (= e!621132 true)))

(assert (=> b!1087311 e!621134))

(declare-fun res!725205 () Bool)

(assert (=> b!1087311 (=> (not res!725205) (not e!621134))))

(declare-fun lt!483824 () ListLongMap!15009)

(assert (=> b!1087311 (= res!725205 (= lt!483820 (+!3247 lt!483824 lt!483821)))))

(declare-fun zeroValue!831 () V!40621)

(assert (=> b!1087311 (= lt!483821 (tuple2!17029 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087312 () Bool)

(declare-fun res!725197 () Bool)

(assert (=> b!1087312 (=> (not res!725197) (not e!621129))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1087312 (= res!725197 (= (select (arr!33738 _keys!1070) i!650) k!904))))

(declare-fun b!1087313 () Bool)

(declare-fun res!725201 () Bool)

(assert (=> b!1087313 (=> (not res!725201) (not e!621129))))

(assert (=> b!1087313 (= res!725201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087314 () Bool)

(assert (=> b!1087314 (= e!621133 (not e!621132))))

(declare-fun res!725200 () Bool)

(assert (=> b!1087314 (=> res!725200 e!621132)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087314 (= res!725200 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!483827 () ListLongMap!15009)

(declare-fun minValue!831 () V!40621)

(declare-fun getCurrentListMap!4273 (array!70136 array!70138 (_ BitVec 32) (_ BitVec 32) V!40621 V!40621 (_ BitVec 32) Int) ListLongMap!15009)

(assert (=> b!1087314 (= lt!483827 (getCurrentListMap!4273 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483825 () array!70138)

(assert (=> b!1087314 (= lt!483820 (getCurrentListMap!4273 lt!483826 lt!483825 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1087314 (and (= lt!483824 lt!483823) (= lt!483823 lt!483824))))

(declare-fun lt!483819 () ListLongMap!15009)

(declare-fun -!800 (ListLongMap!15009 (_ BitVec 64)) ListLongMap!15009)

(assert (=> b!1087314 (= lt!483823 (-!800 lt!483819 k!904))))

(declare-datatypes ((Unit!35715 0))(
  ( (Unit!35716) )
))
(declare-fun lt!483818 () Unit!35715)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!79 (array!70136 array!70138 (_ BitVec 32) (_ BitVec 32) V!40621 V!40621 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35715)

(assert (=> b!1087314 (= lt!483818 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!79 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4025 (array!70136 array!70138 (_ BitVec 32) (_ BitVec 32) V!40621 V!40621 (_ BitVec 32) Int) ListLongMap!15009)

(assert (=> b!1087314 (= lt!483824 (getCurrentListMapNoExtraKeys!4025 lt!483826 lt!483825 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2161 (Int (_ BitVec 64)) V!40621)

(assert (=> b!1087314 (= lt!483825 (array!70139 (store (arr!33739 _values!874) i!650 (ValueCellFull!12601 (dynLambda!2161 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34276 _values!874)))))

(assert (=> b!1087314 (= lt!483819 (getCurrentListMapNoExtraKeys!4025 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087314 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!483822 () Unit!35715)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70136 (_ BitVec 64) (_ BitVec 32)) Unit!35715)

(assert (=> b!1087314 (= lt!483822 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1087315 () Bool)

(declare-fun e!621131 () Bool)

(assert (=> b!1087315 (= e!621131 tp_is_empty!26621)))

(declare-fun b!1087316 () Bool)

(declare-fun res!725203 () Bool)

(assert (=> b!1087316 (=> (not res!725203) (not e!621129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087316 (= res!725203 (validKeyInArray!0 k!904))))

(declare-fun b!1087317 () Bool)

(declare-fun res!725198 () Bool)

(assert (=> b!1087317 (=> (not res!725198) (not e!621134))))

(assert (=> b!1087317 (= res!725198 (= lt!483827 (+!3247 lt!483819 lt!483821)))))

(declare-fun b!1087318 () Bool)

(declare-fun res!725206 () Bool)

(assert (=> b!1087318 (=> (not res!725206) (not e!621129))))

(assert (=> b!1087318 (= res!725206 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34275 _keys!1070))))))

(declare-fun mapIsEmpty!41686 () Bool)

(declare-fun mapRes!41686 () Bool)

(assert (=> mapIsEmpty!41686 mapRes!41686))

(declare-fun b!1087319 () Bool)

(assert (=> b!1087319 (= e!621136 (and e!621130 mapRes!41686))))

(declare-fun condMapEmpty!41686 () Bool)

(declare-fun mapDefault!41686 () ValueCell!12601)


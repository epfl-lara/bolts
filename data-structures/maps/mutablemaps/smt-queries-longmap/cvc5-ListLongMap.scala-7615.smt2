; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96046 () Bool)

(assert start!96046)

(declare-fun b_free!22663 () Bool)

(declare-fun b_next!22663 () Bool)

(assert (=> start!96046 (= b_free!22663 (not b_next!22663))))

(declare-fun tp!79839 () Bool)

(declare-fun b_and!36019 () Bool)

(assert (=> start!96046 (= tp!79839 b_and!36019)))

(declare-fun b!1088276 () Bool)

(declare-fun e!621659 () Bool)

(declare-fun e!621660 () Bool)

(assert (=> b!1088276 (= e!621659 e!621660)))

(declare-fun res!725933 () Bool)

(assert (=> b!1088276 (=> (not res!725933) (not e!621660))))

(declare-datatypes ((array!70222 0))(
  ( (array!70223 (arr!33781 (Array (_ BitVec 32) (_ BitVec 64))) (size!34318 (_ BitVec 32))) )
))
(declare-fun lt!484678 () array!70222)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70222 (_ BitVec 32)) Bool)

(assert (=> b!1088276 (= res!725933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484678 mask!1414))))

(declare-fun _keys!1070 () array!70222)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088276 (= lt!484678 (array!70223 (store (arr!33781 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34318 _keys!1070)))))

(declare-fun b!1088277 () Bool)

(declare-fun res!725929 () Bool)

(assert (=> b!1088277 (=> (not res!725929) (not e!621659))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088277 (= res!725929 (validKeyInArray!0 k!904))))

(declare-fun b!1088278 () Bool)

(declare-fun res!725923 () Bool)

(assert (=> b!1088278 (=> (not res!725923) (not e!621660))))

(declare-datatypes ((List!23709 0))(
  ( (Nil!23706) (Cons!23705 (h!24914 (_ BitVec 64)) (t!33437 List!23709)) )
))
(declare-fun arrayNoDuplicates!0 (array!70222 (_ BitVec 32) List!23709) Bool)

(assert (=> b!1088278 (= res!725923 (arrayNoDuplicates!0 lt!484678 #b00000000000000000000000000000000 Nil!23706))))

(declare-fun b!1088279 () Bool)

(declare-fun e!621658 () Bool)

(declare-fun e!621661 () Bool)

(assert (=> b!1088279 (= e!621658 e!621661)))

(declare-fun res!725932 () Bool)

(assert (=> b!1088279 (=> res!725932 e!621661)))

(assert (=> b!1088279 (= res!725932 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40681 0))(
  ( (V!40682 (val!13389 Int)) )
))
(declare-datatypes ((tuple2!17068 0))(
  ( (tuple2!17069 (_1!8544 (_ BitVec 64)) (_2!8544 V!40681)) )
))
(declare-datatypes ((List!23710 0))(
  ( (Nil!23707) (Cons!23706 (h!24915 tuple2!17068) (t!33438 List!23710)) )
))
(declare-datatypes ((ListLongMap!15049 0))(
  ( (ListLongMap!15050 (toList!7540 List!23710)) )
))
(declare-fun lt!484674 () ListLongMap!15049)

(declare-fun lt!484684 () ListLongMap!15049)

(assert (=> b!1088279 (= lt!484674 lt!484684)))

(declare-fun lt!484685 () ListLongMap!15049)

(declare-fun lt!484682 () tuple2!17068)

(declare-fun +!3260 (ListLongMap!15049 tuple2!17068) ListLongMap!15049)

(assert (=> b!1088279 (= lt!484684 (+!3260 lt!484685 lt!484682))))

(declare-fun lt!484675 () ListLongMap!15049)

(declare-fun lt!484683 () ListLongMap!15049)

(assert (=> b!1088279 (= lt!484675 lt!484683)))

(declare-fun lt!484673 () ListLongMap!15049)

(assert (=> b!1088279 (= lt!484683 (+!3260 lt!484673 lt!484682))))

(declare-fun lt!484677 () ListLongMap!15049)

(assert (=> b!1088279 (= lt!484674 (+!3260 lt!484677 lt!484682))))

(declare-fun zeroValue!831 () V!40681)

(assert (=> b!1088279 (= lt!484682 (tuple2!17069 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088280 () Bool)

(declare-fun res!725926 () Bool)

(assert (=> b!1088280 (=> (not res!725926) (not e!621659))))

(assert (=> b!1088280 (= res!725926 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23706))))

(declare-fun mapNonEmpty!41752 () Bool)

(declare-fun mapRes!41752 () Bool)

(declare-fun tp!79838 () Bool)

(declare-fun e!621663 () Bool)

(assert (=> mapNonEmpty!41752 (= mapRes!41752 (and tp!79838 e!621663))))

(declare-datatypes ((ValueCell!12623 0))(
  ( (ValueCellFull!12623 (v!16011 V!40681)) (EmptyCell!12623) )
))
(declare-fun mapRest!41752 () (Array (_ BitVec 32) ValueCell!12623))

(declare-datatypes ((array!70224 0))(
  ( (array!70225 (arr!33782 (Array (_ BitVec 32) ValueCell!12623)) (size!34319 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70224)

(declare-fun mapValue!41752 () ValueCell!12623)

(declare-fun mapKey!41752 () (_ BitVec 32))

(assert (=> mapNonEmpty!41752 (= (arr!33782 _values!874) (store mapRest!41752 mapKey!41752 mapValue!41752))))

(declare-fun b!1088281 () Bool)

(assert (=> b!1088281 (= e!621660 (not e!621658))))

(declare-fun res!725930 () Bool)

(assert (=> b!1088281 (=> res!725930 e!621658)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088281 (= res!725930 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40681)

(declare-fun getCurrentListMap!4290 (array!70222 array!70224 (_ BitVec 32) (_ BitVec 32) V!40681 V!40681 (_ BitVec 32) Int) ListLongMap!15049)

(assert (=> b!1088281 (= lt!484675 (getCurrentListMap!4290 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484680 () array!70224)

(assert (=> b!1088281 (= lt!484674 (getCurrentListMap!4290 lt!484678 lt!484680 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1088281 (and (= lt!484677 lt!484685) (= lt!484685 lt!484677))))

(declare-fun -!820 (ListLongMap!15049 (_ BitVec 64)) ListLongMap!15049)

(assert (=> b!1088281 (= lt!484685 (-!820 lt!484673 k!904))))

(declare-datatypes ((Unit!35755 0))(
  ( (Unit!35756) )
))
(declare-fun lt!484676 () Unit!35755)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!96 (array!70222 array!70224 (_ BitVec 32) (_ BitVec 32) V!40681 V!40681 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35755)

(assert (=> b!1088281 (= lt!484676 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!96 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4042 (array!70222 array!70224 (_ BitVec 32) (_ BitVec 32) V!40681 V!40681 (_ BitVec 32) Int) ListLongMap!15049)

(assert (=> b!1088281 (= lt!484677 (getCurrentListMapNoExtraKeys!4042 lt!484678 lt!484680 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2178 (Int (_ BitVec 64)) V!40681)

(assert (=> b!1088281 (= lt!484680 (array!70225 (store (arr!33782 _values!874) i!650 (ValueCellFull!12623 (dynLambda!2178 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34319 _values!874)))))

(assert (=> b!1088281 (= lt!484673 (getCurrentListMapNoExtraKeys!4042 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088281 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484679 () Unit!35755)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70222 (_ BitVec 64) (_ BitVec 32)) Unit!35755)

(assert (=> b!1088281 (= lt!484679 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1088282 () Bool)

(declare-fun res!725924 () Bool)

(assert (=> b!1088282 (=> (not res!725924) (not e!621659))))

(assert (=> b!1088282 (= res!725924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!725925 () Bool)

(assert (=> start!96046 (=> (not res!725925) (not e!621659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96046 (= res!725925 (validMask!0 mask!1414))))

(assert (=> start!96046 e!621659))

(assert (=> start!96046 tp!79839))

(assert (=> start!96046 true))

(declare-fun tp_is_empty!26665 () Bool)

(assert (=> start!96046 tp_is_empty!26665))

(declare-fun array_inv!25918 (array!70222) Bool)

(assert (=> start!96046 (array_inv!25918 _keys!1070)))

(declare-fun e!621662 () Bool)

(declare-fun array_inv!25919 (array!70224) Bool)

(assert (=> start!96046 (and (array_inv!25919 _values!874) e!621662)))

(declare-fun b!1088283 () Bool)

(declare-fun res!725928 () Bool)

(assert (=> b!1088283 (=> (not res!725928) (not e!621659))))

(assert (=> b!1088283 (= res!725928 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34318 _keys!1070))))))

(declare-fun b!1088284 () Bool)

(declare-fun res!725927 () Bool)

(assert (=> b!1088284 (=> (not res!725927) (not e!621659))))

(assert (=> b!1088284 (= res!725927 (= (select (arr!33781 _keys!1070) i!650) k!904))))

(declare-fun b!1088285 () Bool)

(declare-fun res!725931 () Bool)

(assert (=> b!1088285 (=> (not res!725931) (not e!621659))))

(assert (=> b!1088285 (= res!725931 (and (= (size!34319 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34318 _keys!1070) (size!34319 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41752 () Bool)

(assert (=> mapIsEmpty!41752 mapRes!41752))

(declare-fun b!1088286 () Bool)

(declare-fun e!621657 () Bool)

(assert (=> b!1088286 (= e!621657 tp_is_empty!26665)))

(declare-fun b!1088287 () Bool)

(assert (=> b!1088287 (= e!621662 (and e!621657 mapRes!41752))))

(declare-fun condMapEmpty!41752 () Bool)

(declare-fun mapDefault!41752 () ValueCell!12623)


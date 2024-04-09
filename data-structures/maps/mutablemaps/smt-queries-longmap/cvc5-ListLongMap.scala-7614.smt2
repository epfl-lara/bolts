; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96040 () Bool)

(assert start!96040)

(declare-fun b_free!22657 () Bool)

(declare-fun b_next!22657 () Bool)

(assert (=> start!96040 (= b_free!22657 (not b_next!22657))))

(declare-fun tp!79821 () Bool)

(declare-fun b_and!36007 () Bool)

(assert (=> start!96040 (= tp!79821 b_and!36007)))

(declare-fun b!1088144 () Bool)

(declare-fun res!725831 () Bool)

(declare-fun e!621589 () Bool)

(assert (=> b!1088144 (=> (not res!725831) (not e!621589))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70210 0))(
  ( (array!70211 (arr!33775 (Array (_ BitVec 32) (_ BitVec 64))) (size!34312 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70210)

(declare-datatypes ((V!40673 0))(
  ( (V!40674 (val!13386 Int)) )
))
(declare-datatypes ((ValueCell!12620 0))(
  ( (ValueCellFull!12620 (v!16008 V!40673)) (EmptyCell!12620) )
))
(declare-datatypes ((array!70212 0))(
  ( (array!70213 (arr!33776 (Array (_ BitVec 32) ValueCell!12620)) (size!34313 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70212)

(assert (=> b!1088144 (= res!725831 (and (= (size!34313 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34312 _keys!1070) (size!34313 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088145 () Bool)

(declare-fun e!621591 () Bool)

(declare-fun e!621592 () Bool)

(assert (=> b!1088145 (= e!621591 (not e!621592))))

(declare-fun res!725833 () Bool)

(assert (=> b!1088145 (=> res!725833 e!621592)))

(assert (=> b!1088145 (= res!725833 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40673)

(declare-datatypes ((tuple2!17062 0))(
  ( (tuple2!17063 (_1!8541 (_ BitVec 64)) (_2!8541 V!40673)) )
))
(declare-datatypes ((List!23703 0))(
  ( (Nil!23700) (Cons!23699 (h!24908 tuple2!17062) (t!33425 List!23703)) )
))
(declare-datatypes ((ListLongMap!15043 0))(
  ( (ListLongMap!15044 (toList!7537 List!23703)) )
))
(declare-fun lt!484556 () ListLongMap!15043)

(declare-fun zeroValue!831 () V!40673)

(declare-fun getCurrentListMap!4287 (array!70210 array!70212 (_ BitVec 32) (_ BitVec 32) V!40673 V!40673 (_ BitVec 32) Int) ListLongMap!15043)

(assert (=> b!1088145 (= lt!484556 (getCurrentListMap!4287 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484568 () ListLongMap!15043)

(declare-fun lt!484561 () array!70212)

(declare-fun lt!484563 () array!70210)

(assert (=> b!1088145 (= lt!484568 (getCurrentListMap!4287 lt!484563 lt!484561 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484558 () ListLongMap!15043)

(declare-fun lt!484564 () ListLongMap!15043)

(assert (=> b!1088145 (and (= lt!484558 lt!484564) (= lt!484564 lt!484558))))

(declare-fun lt!484567 () ListLongMap!15043)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!817 (ListLongMap!15043 (_ BitVec 64)) ListLongMap!15043)

(assert (=> b!1088145 (= lt!484564 (-!817 lt!484567 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35749 0))(
  ( (Unit!35750) )
))
(declare-fun lt!484560 () Unit!35749)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!93 (array!70210 array!70212 (_ BitVec 32) (_ BitVec 32) V!40673 V!40673 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35749)

(assert (=> b!1088145 (= lt!484560 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!93 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4039 (array!70210 array!70212 (_ BitVec 32) (_ BitVec 32) V!40673 V!40673 (_ BitVec 32) Int) ListLongMap!15043)

(assert (=> b!1088145 (= lt!484558 (getCurrentListMapNoExtraKeys!4039 lt!484563 lt!484561 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2175 (Int (_ BitVec 64)) V!40673)

(assert (=> b!1088145 (= lt!484561 (array!70213 (store (arr!33776 _values!874) i!650 (ValueCellFull!12620 (dynLambda!2175 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34313 _values!874)))))

(assert (=> b!1088145 (= lt!484567 (getCurrentListMapNoExtraKeys!4039 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088145 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484566 () Unit!35749)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70210 (_ BitVec 64) (_ BitVec 32)) Unit!35749)

(assert (=> b!1088145 (= lt!484566 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1088146 () Bool)

(declare-fun res!725826 () Bool)

(assert (=> b!1088146 (=> (not res!725826) (not e!621589))))

(assert (=> b!1088146 (= res!725826 (= (select (arr!33775 _keys!1070) i!650) k!904))))

(declare-fun b!1088147 () Bool)

(declare-fun res!725834 () Bool)

(assert (=> b!1088147 (=> (not res!725834) (not e!621589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70210 (_ BitVec 32)) Bool)

(assert (=> b!1088147 (= res!725834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!725827 () Bool)

(assert (=> start!96040 (=> (not res!725827) (not e!621589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96040 (= res!725827 (validMask!0 mask!1414))))

(assert (=> start!96040 e!621589))

(assert (=> start!96040 tp!79821))

(assert (=> start!96040 true))

(declare-fun tp_is_empty!26659 () Bool)

(assert (=> start!96040 tp_is_empty!26659))

(declare-fun array_inv!25912 (array!70210) Bool)

(assert (=> start!96040 (array_inv!25912 _keys!1070)))

(declare-fun e!621587 () Bool)

(declare-fun array_inv!25913 (array!70212) Bool)

(assert (=> start!96040 (and (array_inv!25913 _values!874) e!621587)))

(declare-fun b!1088148 () Bool)

(declare-fun e!621588 () Bool)

(assert (=> b!1088148 (= e!621588 tp_is_empty!26659)))

(declare-fun b!1088149 () Bool)

(declare-fun res!725824 () Bool)

(assert (=> b!1088149 (=> (not res!725824) (not e!621589))))

(assert (=> b!1088149 (= res!725824 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34312 _keys!1070))))))

(declare-fun b!1088150 () Bool)

(assert (=> b!1088150 (= e!621589 e!621591)))

(declare-fun res!725828 () Bool)

(assert (=> b!1088150 (=> (not res!725828) (not e!621591))))

(assert (=> b!1088150 (= res!725828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484563 mask!1414))))

(assert (=> b!1088150 (= lt!484563 (array!70211 (store (arr!33775 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34312 _keys!1070)))))

(declare-fun b!1088151 () Bool)

(declare-fun res!725825 () Bool)

(assert (=> b!1088151 (=> (not res!725825) (not e!621589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088151 (= res!725825 (validKeyInArray!0 k!904))))

(declare-fun b!1088152 () Bool)

(declare-fun e!621585 () Bool)

(assert (=> b!1088152 (= e!621592 e!621585)))

(declare-fun res!725832 () Bool)

(assert (=> b!1088152 (=> res!725832 e!621585)))

(assert (=> b!1088152 (= res!725832 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!484562 () ListLongMap!15043)

(assert (=> b!1088152 (= lt!484568 lt!484562)))

(declare-fun lt!484565 () tuple2!17062)

(declare-fun +!3258 (ListLongMap!15043 tuple2!17062) ListLongMap!15043)

(assert (=> b!1088152 (= lt!484562 (+!3258 lt!484564 lt!484565))))

(declare-fun lt!484557 () ListLongMap!15043)

(assert (=> b!1088152 (= lt!484556 lt!484557)))

(assert (=> b!1088152 (= lt!484557 (+!3258 lt!484567 lt!484565))))

(assert (=> b!1088152 (= lt!484568 (+!3258 lt!484558 lt!484565))))

(assert (=> b!1088152 (= lt!484565 (tuple2!17063 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088153 () Bool)

(declare-fun res!725829 () Bool)

(assert (=> b!1088153 (=> (not res!725829) (not e!621589))))

(declare-datatypes ((List!23704 0))(
  ( (Nil!23701) (Cons!23700 (h!24909 (_ BitVec 64)) (t!33426 List!23704)) )
))
(declare-fun arrayNoDuplicates!0 (array!70210 (_ BitVec 32) List!23704) Bool)

(assert (=> b!1088153 (= res!725829 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23701))))

(declare-fun b!1088154 () Bool)

(declare-fun e!621590 () Bool)

(assert (=> b!1088154 (= e!621590 tp_is_empty!26659)))

(declare-fun mapIsEmpty!41743 () Bool)

(declare-fun mapRes!41743 () Bool)

(assert (=> mapIsEmpty!41743 mapRes!41743))

(declare-fun mapNonEmpty!41743 () Bool)

(declare-fun tp!79820 () Bool)

(assert (=> mapNonEmpty!41743 (= mapRes!41743 (and tp!79820 e!621588))))

(declare-fun mapValue!41743 () ValueCell!12620)

(declare-fun mapKey!41743 () (_ BitVec 32))

(declare-fun mapRest!41743 () (Array (_ BitVec 32) ValueCell!12620))

(assert (=> mapNonEmpty!41743 (= (arr!33776 _values!874) (store mapRest!41743 mapKey!41743 mapValue!41743))))

(declare-fun b!1088155 () Bool)

(assert (=> b!1088155 (= e!621585 true)))

(assert (=> b!1088155 (= (-!817 lt!484557 k!904) lt!484562)))

(declare-fun lt!484559 () Unit!35749)

(declare-fun addRemoveCommutativeForDiffKeys!55 (ListLongMap!15043 (_ BitVec 64) V!40673 (_ BitVec 64)) Unit!35749)

(assert (=> b!1088155 (= lt!484559 (addRemoveCommutativeForDiffKeys!55 lt!484567 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1088156 () Bool)

(assert (=> b!1088156 (= e!621587 (and e!621590 mapRes!41743))))

(declare-fun condMapEmpty!41743 () Bool)

(declare-fun mapDefault!41743 () ValueCell!12620)


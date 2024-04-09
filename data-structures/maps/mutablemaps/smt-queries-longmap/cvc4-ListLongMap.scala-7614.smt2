; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96044 () Bool)

(assert start!96044)

(declare-fun b_free!22661 () Bool)

(declare-fun b_next!22661 () Bool)

(assert (=> start!96044 (= b_free!22661 (not b_next!22661))))

(declare-fun tp!79833 () Bool)

(declare-fun b_and!36015 () Bool)

(assert (=> start!96044 (= tp!79833 b_and!36015)))

(declare-fun b!1088232 () Bool)

(declare-fun e!621638 () Bool)

(declare-fun e!621637 () Bool)

(assert (=> b!1088232 (= e!621638 (not e!621637))))

(declare-fun res!725894 () Bool)

(assert (=> b!1088232 (=> res!725894 e!621637)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088232 (= res!725894 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40677 0))(
  ( (V!40678 (val!13388 Int)) )
))
(declare-fun minValue!831 () V!40677)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17066 0))(
  ( (tuple2!17067 (_1!8543 (_ BitVec 64)) (_2!8543 V!40677)) )
))
(declare-datatypes ((List!23707 0))(
  ( (Nil!23704) (Cons!23703 (h!24912 tuple2!17066) (t!33433 List!23707)) )
))
(declare-datatypes ((ListLongMap!15047 0))(
  ( (ListLongMap!15048 (toList!7539 List!23707)) )
))
(declare-fun lt!484635 () ListLongMap!15047)

(declare-fun zeroValue!831 () V!40677)

(declare-datatypes ((array!70218 0))(
  ( (array!70219 (arr!33779 (Array (_ BitVec 32) (_ BitVec 64))) (size!34316 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70218)

(declare-datatypes ((ValueCell!12622 0))(
  ( (ValueCellFull!12622 (v!16010 V!40677)) (EmptyCell!12622) )
))
(declare-datatypes ((array!70220 0))(
  ( (array!70221 (arr!33780 (Array (_ BitVec 32) ValueCell!12622)) (size!34317 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70220)

(declare-fun getCurrentListMap!4289 (array!70218 array!70220 (_ BitVec 32) (_ BitVec 32) V!40677 V!40677 (_ BitVec 32) Int) ListLongMap!15047)

(assert (=> b!1088232 (= lt!484635 (getCurrentListMap!4289 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484641 () ListLongMap!15047)

(declare-fun lt!484643 () array!70218)

(declare-fun lt!484639 () array!70220)

(assert (=> b!1088232 (= lt!484641 (getCurrentListMap!4289 lt!484643 lt!484639 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484642 () ListLongMap!15047)

(declare-fun lt!484644 () ListLongMap!15047)

(assert (=> b!1088232 (and (= lt!484642 lt!484644) (= lt!484644 lt!484642))))

(declare-fun lt!484645 () ListLongMap!15047)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!819 (ListLongMap!15047 (_ BitVec 64)) ListLongMap!15047)

(assert (=> b!1088232 (= lt!484644 (-!819 lt!484645 k!904))))

(declare-datatypes ((Unit!35753 0))(
  ( (Unit!35754) )
))
(declare-fun lt!484638 () Unit!35753)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!95 (array!70218 array!70220 (_ BitVec 32) (_ BitVec 32) V!40677 V!40677 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35753)

(assert (=> b!1088232 (= lt!484638 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!95 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4041 (array!70218 array!70220 (_ BitVec 32) (_ BitVec 32) V!40677 V!40677 (_ BitVec 32) Int) ListLongMap!15047)

(assert (=> b!1088232 (= lt!484642 (getCurrentListMapNoExtraKeys!4041 lt!484643 lt!484639 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2177 (Int (_ BitVec 64)) V!40677)

(assert (=> b!1088232 (= lt!484639 (array!70221 (store (arr!33780 _values!874) i!650 (ValueCellFull!12622 (dynLambda!2177 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34317 _values!874)))))

(assert (=> b!1088232 (= lt!484645 (getCurrentListMapNoExtraKeys!4041 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088232 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484637 () Unit!35753)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70218 (_ BitVec 64) (_ BitVec 32)) Unit!35753)

(assert (=> b!1088232 (= lt!484637 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1088233 () Bool)

(declare-fun e!621640 () Bool)

(declare-fun tp_is_empty!26663 () Bool)

(assert (=> b!1088233 (= e!621640 tp_is_empty!26663)))

(declare-fun res!725899 () Bool)

(declare-fun e!621635 () Bool)

(assert (=> start!96044 (=> (not res!725899) (not e!621635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96044 (= res!725899 (validMask!0 mask!1414))))

(assert (=> start!96044 e!621635))

(assert (=> start!96044 tp!79833))

(assert (=> start!96044 true))

(assert (=> start!96044 tp_is_empty!26663))

(declare-fun array_inv!25916 (array!70218) Bool)

(assert (=> start!96044 (array_inv!25916 _keys!1070)))

(declare-fun e!621639 () Bool)

(declare-fun array_inv!25917 (array!70220) Bool)

(assert (=> start!96044 (and (array_inv!25917 _values!874) e!621639)))

(declare-fun b!1088234 () Bool)

(declare-fun res!725892 () Bool)

(assert (=> b!1088234 (=> (not res!725892) (not e!621635))))

(assert (=> b!1088234 (= res!725892 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34316 _keys!1070))))))

(declare-fun b!1088235 () Bool)

(declare-fun res!725893 () Bool)

(assert (=> b!1088235 (=> (not res!725893) (not e!621635))))

(assert (=> b!1088235 (= res!725893 (and (= (size!34317 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34316 _keys!1070) (size!34317 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088236 () Bool)

(declare-fun res!725900 () Bool)

(assert (=> b!1088236 (=> (not res!725900) (not e!621638))))

(declare-datatypes ((List!23708 0))(
  ( (Nil!23705) (Cons!23704 (h!24913 (_ BitVec 64)) (t!33434 List!23708)) )
))
(declare-fun arrayNoDuplicates!0 (array!70218 (_ BitVec 32) List!23708) Bool)

(assert (=> b!1088236 (= res!725900 (arrayNoDuplicates!0 lt!484643 #b00000000000000000000000000000000 Nil!23705))))

(declare-fun mapIsEmpty!41749 () Bool)

(declare-fun mapRes!41749 () Bool)

(assert (=> mapIsEmpty!41749 mapRes!41749))

(declare-fun mapNonEmpty!41749 () Bool)

(declare-fun tp!79832 () Bool)

(assert (=> mapNonEmpty!41749 (= mapRes!41749 (and tp!79832 e!621640))))

(declare-fun mapKey!41749 () (_ BitVec 32))

(declare-fun mapRest!41749 () (Array (_ BitVec 32) ValueCell!12622))

(declare-fun mapValue!41749 () ValueCell!12622)

(assert (=> mapNonEmpty!41749 (= (arr!33780 _values!874) (store mapRest!41749 mapKey!41749 mapValue!41749))))

(declare-fun b!1088237 () Bool)

(declare-fun e!621633 () Bool)

(assert (=> b!1088237 (= e!621633 true)))

(declare-fun lt!484646 () ListLongMap!15047)

(declare-fun lt!484636 () ListLongMap!15047)

(assert (=> b!1088237 (= (-!819 lt!484646 k!904) lt!484636)))

(declare-fun lt!484634 () Unit!35753)

(declare-fun addRemoveCommutativeForDiffKeys!57 (ListLongMap!15047 (_ BitVec 64) V!40677 (_ BitVec 64)) Unit!35753)

(assert (=> b!1088237 (= lt!484634 (addRemoveCommutativeForDiffKeys!57 lt!484645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1088238 () Bool)

(declare-fun res!725896 () Bool)

(assert (=> b!1088238 (=> (not res!725896) (not e!621635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70218 (_ BitVec 32)) Bool)

(assert (=> b!1088238 (= res!725896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088239 () Bool)

(declare-fun res!725890 () Bool)

(assert (=> b!1088239 (=> (not res!725890) (not e!621635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088239 (= res!725890 (validKeyInArray!0 k!904))))

(declare-fun b!1088240 () Bool)

(declare-fun e!621636 () Bool)

(assert (=> b!1088240 (= e!621636 tp_is_empty!26663)))

(declare-fun b!1088241 () Bool)

(assert (=> b!1088241 (= e!621639 (and e!621636 mapRes!41749))))

(declare-fun condMapEmpty!41749 () Bool)

(declare-fun mapDefault!41749 () ValueCell!12622)


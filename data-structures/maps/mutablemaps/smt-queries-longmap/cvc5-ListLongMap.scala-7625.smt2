; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96106 () Bool)

(assert start!96106)

(declare-fun b_free!22723 () Bool)

(declare-fun b_next!22723 () Bool)

(assert (=> start!96106 (= b_free!22723 (not b_next!22723))))

(declare-fun tp!80019 () Bool)

(declare-fun b_and!36139 () Bool)

(assert (=> start!96106 (= tp!80019 b_and!36139)))

(declare-fun b!1089596 () Bool)

(declare-fun e!622377 () Bool)

(declare-fun e!622379 () Bool)

(assert (=> b!1089596 (= e!622377 (not e!622379))))

(declare-fun res!726916 () Bool)

(assert (=> b!1089596 (=> res!726916 e!622379)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089596 (= res!726916 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40761 0))(
  ( (V!40762 (val!13419 Int)) )
))
(declare-datatypes ((tuple2!17126 0))(
  ( (tuple2!17127 (_1!8573 (_ BitVec 64)) (_2!8573 V!40761)) )
))
(declare-datatypes ((List!23763 0))(
  ( (Nil!23760) (Cons!23759 (h!24968 tuple2!17126) (t!33551 List!23763)) )
))
(declare-datatypes ((ListLongMap!15107 0))(
  ( (ListLongMap!15108 (toList!7569 List!23763)) )
))
(declare-fun lt!485852 () ListLongMap!15107)

(declare-fun minValue!831 () V!40761)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40761)

(declare-datatypes ((array!70338 0))(
  ( (array!70339 (arr!33839 (Array (_ BitVec 32) (_ BitVec 64))) (size!34376 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70338)

(declare-datatypes ((ValueCell!12653 0))(
  ( (ValueCellFull!12653 (v!16041 V!40761)) (EmptyCell!12653) )
))
(declare-datatypes ((array!70340 0))(
  ( (array!70341 (arr!33840 (Array (_ BitVec 32) ValueCell!12653)) (size!34377 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70340)

(declare-fun getCurrentListMap!4310 (array!70338 array!70340 (_ BitVec 32) (_ BitVec 32) V!40761 V!40761 (_ BitVec 32) Int) ListLongMap!15107)

(assert (=> b!1089596 (= lt!485852 (getCurrentListMap!4310 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485853 () array!70338)

(declare-fun lt!485854 () array!70340)

(declare-fun lt!485855 () ListLongMap!15107)

(assert (=> b!1089596 (= lt!485855 (getCurrentListMap!4310 lt!485853 lt!485854 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485848 () ListLongMap!15107)

(declare-fun lt!485849 () ListLongMap!15107)

(assert (=> b!1089596 (and (= lt!485848 lt!485849) (= lt!485849 lt!485848))))

(declare-fun lt!485846 () ListLongMap!15107)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!847 (ListLongMap!15107 (_ BitVec 64)) ListLongMap!15107)

(assert (=> b!1089596 (= lt!485849 (-!847 lt!485846 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35809 0))(
  ( (Unit!35810) )
))
(declare-fun lt!485847 () Unit!35809)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!116 (array!70338 array!70340 (_ BitVec 32) (_ BitVec 32) V!40761 V!40761 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35809)

(assert (=> b!1089596 (= lt!485847 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!116 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4062 (array!70338 array!70340 (_ BitVec 32) (_ BitVec 32) V!40761 V!40761 (_ BitVec 32) Int) ListLongMap!15107)

(assert (=> b!1089596 (= lt!485848 (getCurrentListMapNoExtraKeys!4062 lt!485853 lt!485854 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2198 (Int (_ BitVec 64)) V!40761)

(assert (=> b!1089596 (= lt!485854 (array!70341 (store (arr!33840 _values!874) i!650 (ValueCellFull!12653 (dynLambda!2198 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34377 _values!874)))))

(assert (=> b!1089596 (= lt!485846 (getCurrentListMapNoExtraKeys!4062 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089596 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!485844 () Unit!35809)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70338 (_ BitVec 64) (_ BitVec 32)) Unit!35809)

(assert (=> b!1089596 (= lt!485844 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1089597 () Bool)

(declare-fun e!622381 () Bool)

(declare-fun tp_is_empty!26725 () Bool)

(assert (=> b!1089597 (= e!622381 tp_is_empty!26725)))

(declare-fun b!1089598 () Bool)

(declare-fun res!726919 () Bool)

(declare-fun e!622383 () Bool)

(assert (=> b!1089598 (=> (not res!726919) (not e!622383))))

(assert (=> b!1089598 (= res!726919 (= (select (arr!33839 _keys!1070) i!650) k!904))))

(declare-fun b!1089599 () Bool)

(declare-fun res!726921 () Bool)

(assert (=> b!1089599 (=> (not res!726921) (not e!622383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089599 (= res!726921 (validKeyInArray!0 k!904))))

(declare-fun b!1089600 () Bool)

(declare-fun e!622384 () Bool)

(assert (=> b!1089600 (= e!622384 tp_is_empty!26725)))

(declare-fun res!726914 () Bool)

(assert (=> start!96106 (=> (not res!726914) (not e!622383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96106 (= res!726914 (validMask!0 mask!1414))))

(assert (=> start!96106 e!622383))

(assert (=> start!96106 tp!80019))

(assert (=> start!96106 true))

(assert (=> start!96106 tp_is_empty!26725))

(declare-fun array_inv!25958 (array!70338) Bool)

(assert (=> start!96106 (array_inv!25958 _keys!1070)))

(declare-fun e!622378 () Bool)

(declare-fun array_inv!25959 (array!70340) Bool)

(assert (=> start!96106 (and (array_inv!25959 _values!874) e!622378)))

(declare-fun b!1089601 () Bool)

(declare-fun res!726920 () Bool)

(assert (=> b!1089601 (=> (not res!726920) (not e!622377))))

(declare-datatypes ((List!23764 0))(
  ( (Nil!23761) (Cons!23760 (h!24969 (_ BitVec 64)) (t!33552 List!23764)) )
))
(declare-fun arrayNoDuplicates!0 (array!70338 (_ BitVec 32) List!23764) Bool)

(assert (=> b!1089601 (= res!726920 (arrayNoDuplicates!0 lt!485853 #b00000000000000000000000000000000 Nil!23761))))

(declare-fun b!1089602 () Bool)

(declare-fun e!622382 () Bool)

(assert (=> b!1089602 (= e!622382 (bvsle #b00000000000000000000000000000000 (size!34376 _keys!1070)))))

(declare-fun lt!485845 () ListLongMap!15107)

(declare-fun lt!485850 () ListLongMap!15107)

(assert (=> b!1089602 (= (-!847 lt!485845 k!904) lt!485850)))

(declare-fun lt!485851 () Unit!35809)

(declare-fun addRemoveCommutativeForDiffKeys!80 (ListLongMap!15107 (_ BitVec 64) V!40761 (_ BitVec 64)) Unit!35809)

(assert (=> b!1089602 (= lt!485851 (addRemoveCommutativeForDiffKeys!80 lt!485846 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1089603 () Bool)

(declare-fun mapRes!41842 () Bool)

(assert (=> b!1089603 (= e!622378 (and e!622384 mapRes!41842))))

(declare-fun condMapEmpty!41842 () Bool)

(declare-fun mapDefault!41842 () ValueCell!12653)


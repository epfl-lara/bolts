; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95996 () Bool)

(assert start!95996)

(declare-fun b_free!22613 () Bool)

(declare-fun b_next!22613 () Bool)

(assert (=> start!95996 (= b_free!22613 (not b_next!22613))))

(declare-fun tp!79689 () Bool)

(declare-fun b_and!35919 () Bool)

(assert (=> start!95996 (= tp!79689 b_and!35919)))

(declare-fun b!1087168 () Bool)

(declare-fun e!621060 () Bool)

(declare-datatypes ((array!70124 0))(
  ( (array!70125 (arr!33732 (Array (_ BitVec 32) (_ BitVec 64))) (size!34269 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70124)

(assert (=> b!1087168 (= e!621060 (bvsle #b00000000000000000000000000000000 (size!34269 _keys!1070)))))

(declare-fun k!904 () (_ BitVec 64))

(declare-datatypes ((V!40613 0))(
  ( (V!40614 (val!13364 Int)) )
))
(declare-datatypes ((tuple2!17022 0))(
  ( (tuple2!17023 (_1!8521 (_ BitVec 64)) (_2!8521 V!40613)) )
))
(declare-fun lt!483735 () tuple2!17022)

(declare-datatypes ((List!23663 0))(
  ( (Nil!23660) (Cons!23659 (h!24868 tuple2!17022) (t!33341 List!23663)) )
))
(declare-datatypes ((ListLongMap!15003 0))(
  ( (ListLongMap!15004 (toList!7517 List!23663)) )
))
(declare-fun lt!483732 () ListLongMap!15003)

(declare-fun lt!483722 () ListLongMap!15003)

(declare-fun -!798 (ListLongMap!15003 (_ BitVec 64)) ListLongMap!15003)

(declare-fun +!3244 (ListLongMap!15003 tuple2!17022) ListLongMap!15003)

(assert (=> b!1087168 (= (-!798 lt!483732 k!904) (+!3244 lt!483722 lt!483735))))

(declare-datatypes ((Unit!35711 0))(
  ( (Unit!35712) )
))
(declare-fun lt!483737 () Unit!35711)

(declare-fun lt!483727 () ListLongMap!15003)

(declare-fun minValue!831 () V!40613)

(declare-fun addRemoveCommutativeForDiffKeys!40 (ListLongMap!15003 (_ BitVec 64) V!40613 (_ BitVec 64)) Unit!35711)

(assert (=> b!1087168 (= lt!483737 (addRemoveCommutativeForDiffKeys!40 lt!483727 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1087169 () Bool)

(declare-fun res!725089 () Bool)

(declare-fun e!621058 () Bool)

(assert (=> b!1087169 (=> (not res!725089) (not e!621058))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1087169 (= res!725089 (= (select (arr!33732 _keys!1070) i!650) k!904))))

(declare-fun b!1087170 () Bool)

(declare-fun res!725096 () Bool)

(assert (=> b!1087170 (=> (not res!725096) (not e!621058))))

(assert (=> b!1087170 (= res!725096 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34269 _keys!1070))))))

(declare-fun b!1087171 () Bool)

(declare-fun res!725099 () Bool)

(assert (=> b!1087171 (=> (not res!725099) (not e!621058))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12598 0))(
  ( (ValueCellFull!12598 (v!15986 V!40613)) (EmptyCell!12598) )
))
(declare-datatypes ((array!70126 0))(
  ( (array!70127 (arr!33733 (Array (_ BitVec 32) ValueCell!12598)) (size!34270 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70126)

(assert (=> b!1087171 (= res!725099 (and (= (size!34270 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34269 _keys!1070) (size!34270 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087172 () Bool)

(declare-fun res!725090 () Bool)

(assert (=> b!1087172 (=> (not res!725090) (not e!621058))))

(declare-datatypes ((List!23664 0))(
  ( (Nil!23661) (Cons!23660 (h!24869 (_ BitVec 64)) (t!33342 List!23664)) )
))
(declare-fun arrayNoDuplicates!0 (array!70124 (_ BitVec 32) List!23664) Bool)

(assert (=> b!1087172 (= res!725090 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23661))))

(declare-fun b!1087173 () Bool)

(declare-fun e!621059 () Bool)

(declare-fun tp_is_empty!26615 () Bool)

(assert (=> b!1087173 (= e!621059 tp_is_empty!26615)))

(declare-fun b!1087174 () Bool)

(declare-fun res!725092 () Bool)

(declare-fun e!621064 () Bool)

(assert (=> b!1087174 (=> (not res!725092) (not e!621064))))

(declare-fun lt!483726 () array!70124)

(assert (=> b!1087174 (= res!725092 (arrayNoDuplicates!0 lt!483726 #b00000000000000000000000000000000 Nil!23661))))

(declare-fun res!725097 () Bool)

(assert (=> start!95996 (=> (not res!725097) (not e!621058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95996 (= res!725097 (validMask!0 mask!1414))))

(assert (=> start!95996 e!621058))

(assert (=> start!95996 tp!79689))

(assert (=> start!95996 true))

(assert (=> start!95996 tp_is_empty!26615))

(declare-fun array_inv!25878 (array!70124) Bool)

(assert (=> start!95996 (array_inv!25878 _keys!1070)))

(declare-fun e!621062 () Bool)

(declare-fun array_inv!25879 (array!70126) Bool)

(assert (=> start!95996 (and (array_inv!25879 _values!874) e!621062)))

(declare-fun b!1087167 () Bool)

(declare-fun e!621061 () Bool)

(assert (=> b!1087167 (= e!621064 (not e!621061))))

(declare-fun res!725095 () Bool)

(assert (=> b!1087167 (=> res!725095 e!621061)))

(assert (=> b!1087167 (= res!725095 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!483730 () ListLongMap!15003)

(declare-fun zeroValue!831 () V!40613)

(declare-fun getCurrentListMap!4271 (array!70124 array!70126 (_ BitVec 32) (_ BitVec 32) V!40613 V!40613 (_ BitVec 32) Int) ListLongMap!15003)

(assert (=> b!1087167 (= lt!483730 (getCurrentListMap!4271 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483721 () array!70126)

(declare-fun lt!483728 () ListLongMap!15003)

(assert (=> b!1087167 (= lt!483728 (getCurrentListMap!4271 lt!483726 lt!483721 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483724 () ListLongMap!15003)

(declare-fun lt!483723 () ListLongMap!15003)

(assert (=> b!1087167 (and (= lt!483724 lt!483723) (= lt!483723 lt!483724))))

(declare-fun lt!483734 () ListLongMap!15003)

(assert (=> b!1087167 (= lt!483723 (-!798 lt!483734 k!904))))

(declare-fun lt!483725 () Unit!35711)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!77 (array!70124 array!70126 (_ BitVec 32) (_ BitVec 32) V!40613 V!40613 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35711)

(assert (=> b!1087167 (= lt!483725 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!77 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4023 (array!70124 array!70126 (_ BitVec 32) (_ BitVec 32) V!40613 V!40613 (_ BitVec 32) Int) ListLongMap!15003)

(assert (=> b!1087167 (= lt!483724 (getCurrentListMapNoExtraKeys!4023 lt!483726 lt!483721 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2159 (Int (_ BitVec 64)) V!40613)

(assert (=> b!1087167 (= lt!483721 (array!70127 (store (arr!33733 _values!874) i!650 (ValueCellFull!12598 (dynLambda!2159 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34270 _values!874)))))

(assert (=> b!1087167 (= lt!483734 (getCurrentListMapNoExtraKeys!4023 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087167 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!483731 () Unit!35711)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70124 (_ BitVec 64) (_ BitVec 32)) Unit!35711)

(assert (=> b!1087167 (= lt!483731 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41677 () Bool)

(declare-fun mapRes!41677 () Bool)

(declare-fun tp!79688 () Bool)

(assert (=> mapNonEmpty!41677 (= mapRes!41677 (and tp!79688 e!621059))))

(declare-fun mapKey!41677 () (_ BitVec 32))

(declare-fun mapRest!41677 () (Array (_ BitVec 32) ValueCell!12598))

(declare-fun mapValue!41677 () ValueCell!12598)

(assert (=> mapNonEmpty!41677 (= (arr!33733 _values!874) (store mapRest!41677 mapKey!41677 mapValue!41677))))

(declare-fun b!1087175 () Bool)

(assert (=> b!1087175 (= e!621058 e!621064)))

(declare-fun res!725094 () Bool)

(assert (=> b!1087175 (=> (not res!725094) (not e!621064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70124 (_ BitVec 32)) Bool)

(assert (=> b!1087175 (= res!725094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483726 mask!1414))))

(assert (=> b!1087175 (= lt!483726 (array!70125 (store (arr!33732 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34269 _keys!1070)))))

(declare-fun mapIsEmpty!41677 () Bool)

(assert (=> mapIsEmpty!41677 mapRes!41677))

(declare-fun b!1087176 () Bool)

(declare-fun res!725091 () Bool)

(assert (=> b!1087176 (=> (not res!725091) (not e!621058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087176 (= res!725091 (validKeyInArray!0 k!904))))

(declare-fun b!1087177 () Bool)

(assert (=> b!1087177 (= e!621061 e!621060)))

(declare-fun res!725098 () Bool)

(assert (=> b!1087177 (=> res!725098 e!621060)))

(assert (=> b!1087177 (= res!725098 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!483729 () ListLongMap!15003)

(assert (=> b!1087177 (= lt!483722 lt!483729)))

(assert (=> b!1087177 (= lt!483722 (-!798 lt!483727 k!904))))

(declare-fun lt!483733 () Unit!35711)

(assert (=> b!1087177 (= lt!483733 (addRemoveCommutativeForDiffKeys!40 lt!483734 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(assert (=> b!1087177 (= lt!483728 (+!3244 lt!483729 lt!483735))))

(declare-fun lt!483736 () tuple2!17022)

(assert (=> b!1087177 (= lt!483729 (+!3244 lt!483723 lt!483736))))

(assert (=> b!1087177 (= lt!483730 lt!483732)))

(assert (=> b!1087177 (= lt!483732 (+!3244 lt!483727 lt!483735))))

(assert (=> b!1087177 (= lt!483727 (+!3244 lt!483734 lt!483736))))

(assert (=> b!1087177 (= lt!483728 (+!3244 (+!3244 lt!483724 lt!483736) lt!483735))))

(assert (=> b!1087177 (= lt!483735 (tuple2!17023 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1087177 (= lt!483736 (tuple2!17023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087178 () Bool)

(declare-fun e!621063 () Bool)

(assert (=> b!1087178 (= e!621063 tp_is_empty!26615)))

(declare-fun b!1087179 () Bool)

(assert (=> b!1087179 (= e!621062 (and e!621063 mapRes!41677))))

(declare-fun condMapEmpty!41677 () Bool)

(declare-fun mapDefault!41677 () ValueCell!12598)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96086 () Bool)

(assert start!96086)

(declare-fun b_free!22703 () Bool)

(declare-fun b_next!22703 () Bool)

(assert (=> start!96086 (= b_free!22703 (not b_next!22703))))

(declare-fun tp!79959 () Bool)

(declare-fun b_and!36099 () Bool)

(assert (=> start!96086 (= tp!79959 b_and!36099)))

(declare-fun b!1089156 () Bool)

(declare-fun e!622137 () Bool)

(declare-fun e!622141 () Bool)

(assert (=> b!1089156 (= e!622137 e!622141)))

(declare-fun res!726593 () Bool)

(assert (=> b!1089156 (=> (not res!726593) (not e!622141))))

(declare-datatypes ((array!70300 0))(
  ( (array!70301 (arr!33820 (Array (_ BitVec 32) (_ BitVec 64))) (size!34357 (_ BitVec 32))) )
))
(declare-fun lt!485455 () array!70300)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70300 (_ BitVec 32)) Bool)

(assert (=> b!1089156 (= res!726593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485455 mask!1414))))

(declare-fun _keys!1070 () array!70300)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089156 (= lt!485455 (array!70301 (store (arr!33820 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34357 _keys!1070)))))

(declare-fun b!1089157 () Bool)

(declare-fun e!622140 () Bool)

(assert (=> b!1089157 (= e!622140 true)))

(declare-datatypes ((V!40733 0))(
  ( (V!40734 (val!13409 Int)) )
))
(declare-datatypes ((tuple2!17106 0))(
  ( (tuple2!17107 (_1!8563 (_ BitVec 64)) (_2!8563 V!40733)) )
))
(declare-datatypes ((List!23745 0))(
  ( (Nil!23742) (Cons!23741 (h!24950 tuple2!17106) (t!33513 List!23745)) )
))
(declare-datatypes ((ListLongMap!15087 0))(
  ( (ListLongMap!15088 (toList!7559 List!23745)) )
))
(declare-fun lt!485457 () ListLongMap!15087)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!485453 () ListLongMap!15087)

(declare-fun -!837 (ListLongMap!15087 (_ BitVec 64)) ListLongMap!15087)

(assert (=> b!1089157 (= (-!837 lt!485457 k!904) lt!485453)))

(declare-datatypes ((Unit!35789 0))(
  ( (Unit!35790) )
))
(declare-fun lt!485464 () Unit!35789)

(declare-fun lt!485465 () ListLongMap!15087)

(declare-fun zeroValue!831 () V!40733)

(declare-fun addRemoveCommutativeForDiffKeys!71 (ListLongMap!15087 (_ BitVec 64) V!40733 (_ BitVec 64)) Unit!35789)

(assert (=> b!1089157 (= lt!485464 (addRemoveCommutativeForDiffKeys!71 lt!485465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1089158 () Bool)

(declare-fun res!726588 () Bool)

(assert (=> b!1089158 (=> (not res!726588) (not e!622137))))

(assert (=> b!1089158 (= res!726588 (= (select (arr!33820 _keys!1070) i!650) k!904))))

(declare-fun b!1089159 () Bool)

(declare-fun e!622138 () Bool)

(assert (=> b!1089159 (= e!622138 e!622140)))

(declare-fun res!726590 () Bool)

(assert (=> b!1089159 (=> res!726590 e!622140)))

(assert (=> b!1089159 (= res!726590 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!485454 () ListLongMap!15087)

(assert (=> b!1089159 (= lt!485454 lt!485453)))

(declare-fun lt!485456 () ListLongMap!15087)

(declare-fun lt!485461 () tuple2!17106)

(declare-fun +!3275 (ListLongMap!15087 tuple2!17106) ListLongMap!15087)

(assert (=> b!1089159 (= lt!485453 (+!3275 lt!485456 lt!485461))))

(declare-fun lt!485460 () ListLongMap!15087)

(assert (=> b!1089159 (= lt!485460 lt!485457)))

(assert (=> b!1089159 (= lt!485457 (+!3275 lt!485465 lt!485461))))

(declare-fun lt!485463 () ListLongMap!15087)

(assert (=> b!1089159 (= lt!485454 (+!3275 lt!485463 lt!485461))))

(assert (=> b!1089159 (= lt!485461 (tuple2!17107 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun mapIsEmpty!41812 () Bool)

(declare-fun mapRes!41812 () Bool)

(assert (=> mapIsEmpty!41812 mapRes!41812))

(declare-fun res!726592 () Bool)

(assert (=> start!96086 (=> (not res!726592) (not e!622137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96086 (= res!726592 (validMask!0 mask!1414))))

(assert (=> start!96086 e!622137))

(assert (=> start!96086 tp!79959))

(assert (=> start!96086 true))

(declare-fun tp_is_empty!26705 () Bool)

(assert (=> start!96086 tp_is_empty!26705))

(declare-fun array_inv!25946 (array!70300) Bool)

(assert (=> start!96086 (array_inv!25946 _keys!1070)))

(declare-datatypes ((ValueCell!12643 0))(
  ( (ValueCellFull!12643 (v!16031 V!40733)) (EmptyCell!12643) )
))
(declare-datatypes ((array!70302 0))(
  ( (array!70303 (arr!33821 (Array (_ BitVec 32) ValueCell!12643)) (size!34358 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70302)

(declare-fun e!622139 () Bool)

(declare-fun array_inv!25947 (array!70302) Bool)

(assert (=> start!96086 (and (array_inv!25947 _values!874) e!622139)))

(declare-fun b!1089160 () Bool)

(declare-fun res!726589 () Bool)

(assert (=> b!1089160 (=> (not res!726589) (not e!622141))))

(declare-datatypes ((List!23746 0))(
  ( (Nil!23743) (Cons!23742 (h!24951 (_ BitVec 64)) (t!33514 List!23746)) )
))
(declare-fun arrayNoDuplicates!0 (array!70300 (_ BitVec 32) List!23746) Bool)

(assert (=> b!1089160 (= res!726589 (arrayNoDuplicates!0 lt!485455 #b00000000000000000000000000000000 Nil!23743))))

(declare-fun b!1089161 () Bool)

(declare-fun res!726591 () Bool)

(assert (=> b!1089161 (=> (not res!726591) (not e!622137))))

(assert (=> b!1089161 (= res!726591 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34357 _keys!1070))))))

(declare-fun b!1089162 () Bool)

(declare-fun e!622143 () Bool)

(assert (=> b!1089162 (= e!622143 tp_is_empty!26705)))

(declare-fun b!1089163 () Bool)

(declare-fun res!726584 () Bool)

(assert (=> b!1089163 (=> (not res!726584) (not e!622137))))

(assert (=> b!1089163 (= res!726584 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23743))))

(declare-fun b!1089164 () Bool)

(assert (=> b!1089164 (= e!622141 (not e!622138))))

(declare-fun res!726585 () Bool)

(assert (=> b!1089164 (=> res!726585 e!622138)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089164 (= res!726585 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40733)

(declare-fun getCurrentListMap!4304 (array!70300 array!70302 (_ BitVec 32) (_ BitVec 32) V!40733 V!40733 (_ BitVec 32) Int) ListLongMap!15087)

(assert (=> b!1089164 (= lt!485460 (getCurrentListMap!4304 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485462 () array!70302)

(assert (=> b!1089164 (= lt!485454 (getCurrentListMap!4304 lt!485455 lt!485462 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089164 (and (= lt!485463 lt!485456) (= lt!485456 lt!485463))))

(assert (=> b!1089164 (= lt!485456 (-!837 lt!485465 k!904))))

(declare-fun lt!485459 () Unit!35789)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!110 (array!70300 array!70302 (_ BitVec 32) (_ BitVec 32) V!40733 V!40733 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35789)

(assert (=> b!1089164 (= lt!485459 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!110 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4056 (array!70300 array!70302 (_ BitVec 32) (_ BitVec 32) V!40733 V!40733 (_ BitVec 32) Int) ListLongMap!15087)

(assert (=> b!1089164 (= lt!485463 (getCurrentListMapNoExtraKeys!4056 lt!485455 lt!485462 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2192 (Int (_ BitVec 64)) V!40733)

(assert (=> b!1089164 (= lt!485462 (array!70303 (store (arr!33821 _values!874) i!650 (ValueCellFull!12643 (dynLambda!2192 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34358 _values!874)))))

(assert (=> b!1089164 (= lt!485465 (getCurrentListMapNoExtraKeys!4056 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089164 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!485458 () Unit!35789)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70300 (_ BitVec 64) (_ BitVec 32)) Unit!35789)

(assert (=> b!1089164 (= lt!485458 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1089165 () Bool)

(declare-fun res!726583 () Bool)

(assert (=> b!1089165 (=> (not res!726583) (not e!622137))))

(assert (=> b!1089165 (= res!726583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089166 () Bool)

(assert (=> b!1089166 (= e!622139 (and e!622143 mapRes!41812))))

(declare-fun condMapEmpty!41812 () Bool)

(declare-fun mapDefault!41812 () ValueCell!12643)


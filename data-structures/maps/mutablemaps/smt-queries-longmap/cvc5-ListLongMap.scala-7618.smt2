; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96064 () Bool)

(assert start!96064)

(declare-fun b_free!22681 () Bool)

(declare-fun b_next!22681 () Bool)

(assert (=> start!96064 (= b_free!22681 (not b_next!22681))))

(declare-fun tp!79893 () Bool)

(declare-fun b_and!36055 () Bool)

(assert (=> start!96064 (= tp!79893 b_and!36055)))

(declare-fun b!1088672 () Bool)

(declare-fun e!621880 () Bool)

(assert (=> b!1088672 (= e!621880 true)))

(declare-datatypes ((V!40705 0))(
  ( (V!40706 (val!13398 Int)) )
))
(declare-datatypes ((tuple2!17086 0))(
  ( (tuple2!17087 (_1!8553 (_ BitVec 64)) (_2!8553 V!40705)) )
))
(declare-datatypes ((List!23725 0))(
  ( (Nil!23722) (Cons!23721 (h!24930 tuple2!17086) (t!33471 List!23725)) )
))
(declare-datatypes ((ListLongMap!15067 0))(
  ( (ListLongMap!15068 (toList!7549 List!23725)) )
))
(declare-fun lt!485036 () ListLongMap!15067)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!485027 () ListLongMap!15067)

(declare-fun -!829 (ListLongMap!15067 (_ BitVec 64)) ListLongMap!15067)

(assert (=> b!1088672 (= (-!829 lt!485036 k!904) lt!485027)))

(declare-fun lt!485024 () ListLongMap!15067)

(declare-datatypes ((Unit!35773 0))(
  ( (Unit!35774) )
))
(declare-fun lt!485030 () Unit!35773)

(declare-fun zeroValue!831 () V!40705)

(declare-fun addRemoveCommutativeForDiffKeys!64 (ListLongMap!15067 (_ BitVec 64) V!40705 (_ BitVec 64)) Unit!35773)

(assert (=> b!1088672 (= lt!485030 (addRemoveCommutativeForDiffKeys!64 lt!485024 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1088673 () Bool)

(declare-fun res!726222 () Bool)

(declare-fun e!621873 () Bool)

(assert (=> b!1088673 (=> (not res!726222) (not e!621873))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70258 0))(
  ( (array!70259 (arr!33799 (Array (_ BitVec 32) (_ BitVec 64))) (size!34336 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70258)

(declare-datatypes ((ValueCell!12632 0))(
  ( (ValueCellFull!12632 (v!16020 V!40705)) (EmptyCell!12632) )
))
(declare-datatypes ((array!70260 0))(
  ( (array!70261 (arr!33800 (Array (_ BitVec 32) ValueCell!12632)) (size!34337 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70260)

(assert (=> b!1088673 (= res!726222 (and (= (size!34337 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34336 _keys!1070) (size!34337 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088674 () Bool)

(declare-fun res!726220 () Bool)

(assert (=> b!1088674 (=> (not res!726220) (not e!621873))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088674 (= res!726220 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34336 _keys!1070))))))

(declare-fun b!1088675 () Bool)

(declare-fun res!726224 () Bool)

(declare-fun e!621875 () Bool)

(assert (=> b!1088675 (=> (not res!726224) (not e!621875))))

(declare-fun lt!485031 () array!70258)

(declare-datatypes ((List!23726 0))(
  ( (Nil!23723) (Cons!23722 (h!24931 (_ BitVec 64)) (t!33472 List!23726)) )
))
(declare-fun arrayNoDuplicates!0 (array!70258 (_ BitVec 32) List!23726) Bool)

(assert (=> b!1088675 (= res!726224 (arrayNoDuplicates!0 lt!485031 #b00000000000000000000000000000000 Nil!23723))))

(declare-fun b!1088676 () Bool)

(assert (=> b!1088676 (= e!621873 e!621875)))

(declare-fun res!726223 () Bool)

(assert (=> b!1088676 (=> (not res!726223) (not e!621875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70258 (_ BitVec 32)) Bool)

(assert (=> b!1088676 (= res!726223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485031 mask!1414))))

(assert (=> b!1088676 (= lt!485031 (array!70259 (store (arr!33799 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34336 _keys!1070)))))

(declare-fun b!1088677 () Bool)

(declare-fun e!621876 () Bool)

(declare-fun e!621877 () Bool)

(declare-fun mapRes!41779 () Bool)

(assert (=> b!1088677 (= e!621876 (and e!621877 mapRes!41779))))

(declare-fun condMapEmpty!41779 () Bool)

(declare-fun mapDefault!41779 () ValueCell!12632)


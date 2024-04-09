; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96068 () Bool)

(assert start!96068)

(declare-fun b_free!22685 () Bool)

(declare-fun b_next!22685 () Bool)

(assert (=> start!96068 (= b_free!22685 (not b_next!22685))))

(declare-fun tp!79905 () Bool)

(declare-fun b_and!36063 () Bool)

(assert (=> start!96068 (= tp!79905 b_and!36063)))

(declare-fun b!1088760 () Bool)

(declare-fun res!726292 () Bool)

(declare-fun e!621921 () Bool)

(assert (=> b!1088760 (=> (not res!726292) (not e!621921))))

(declare-datatypes ((array!70266 0))(
  ( (array!70267 (arr!33803 (Array (_ BitVec 32) (_ BitVec 64))) (size!34340 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70266)

(declare-datatypes ((List!23729 0))(
  ( (Nil!23726) (Cons!23725 (h!24934 (_ BitVec 64)) (t!33479 List!23729)) )
))
(declare-fun arrayNoDuplicates!0 (array!70266 (_ BitVec 32) List!23729) Bool)

(assert (=> b!1088760 (= res!726292 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23726))))

(declare-fun b!1088761 () Bool)

(declare-fun e!621922 () Bool)

(declare-fun tp_is_empty!26687 () Bool)

(assert (=> b!1088761 (= e!621922 tp_is_empty!26687)))

(declare-fun b!1088762 () Bool)

(declare-fun res!726291 () Bool)

(assert (=> b!1088762 (=> (not res!726291) (not e!621921))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088762 (= res!726291 (validKeyInArray!0 k!904))))

(declare-fun b!1088763 () Bool)

(declare-fun res!726294 () Bool)

(assert (=> b!1088763 (=> (not res!726294) (not e!621921))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088763 (= res!726294 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34340 _keys!1070))))))

(declare-fun b!1088764 () Bool)

(declare-fun res!726296 () Bool)

(assert (=> b!1088764 (=> (not res!726296) (not e!621921))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40709 0))(
  ( (V!40710 (val!13400 Int)) )
))
(declare-datatypes ((ValueCell!12634 0))(
  ( (ValueCellFull!12634 (v!16022 V!40709)) (EmptyCell!12634) )
))
(declare-datatypes ((array!70268 0))(
  ( (array!70269 (arr!33804 (Array (_ BitVec 32) ValueCell!12634)) (size!34341 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70268)

(assert (=> b!1088764 (= res!726296 (and (= (size!34341 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34340 _keys!1070) (size!34341 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088765 () Bool)

(declare-fun e!621928 () Bool)

(assert (=> b!1088765 (= e!621921 e!621928)))

(declare-fun res!726289 () Bool)

(assert (=> b!1088765 (=> (not res!726289) (not e!621928))))

(declare-fun lt!485102 () array!70266)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70266 (_ BitVec 32)) Bool)

(assert (=> b!1088765 (= res!726289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485102 mask!1414))))

(assert (=> b!1088765 (= lt!485102 (array!70267 (store (arr!33803 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34340 _keys!1070)))))

(declare-fun res!726288 () Bool)

(assert (=> start!96068 (=> (not res!726288) (not e!621921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96068 (= res!726288 (validMask!0 mask!1414))))

(assert (=> start!96068 e!621921))

(assert (=> start!96068 tp!79905))

(assert (=> start!96068 true))

(assert (=> start!96068 tp_is_empty!26687))

(declare-fun array_inv!25936 (array!70266) Bool)

(assert (=> start!96068 (array_inv!25936 _keys!1070)))

(declare-fun e!621923 () Bool)

(declare-fun array_inv!25937 (array!70268) Bool)

(assert (=> start!96068 (and (array_inv!25937 _values!874) e!621923)))

(declare-fun b!1088766 () Bool)

(declare-fun res!726295 () Bool)

(assert (=> b!1088766 (=> (not res!726295) (not e!621921))))

(assert (=> b!1088766 (= res!726295 (= (select (arr!33803 _keys!1070) i!650) k!904))))

(declare-fun b!1088767 () Bool)

(declare-fun e!621927 () Bool)

(assert (=> b!1088767 (= e!621927 true)))

(declare-datatypes ((tuple2!17090 0))(
  ( (tuple2!17091 (_1!8555 (_ BitVec 64)) (_2!8555 V!40709)) )
))
(declare-datatypes ((List!23730 0))(
  ( (Nil!23727) (Cons!23726 (h!24935 tuple2!17090) (t!33480 List!23730)) )
))
(declare-datatypes ((ListLongMap!15071 0))(
  ( (ListLongMap!15072 (toList!7551 List!23730)) )
))
(declare-fun lt!485103 () ListLongMap!15071)

(declare-fun lt!485109 () ListLongMap!15071)

(declare-fun -!831 (ListLongMap!15071 (_ BitVec 64)) ListLongMap!15071)

(assert (=> b!1088767 (= (-!831 lt!485103 k!904) lt!485109)))

(declare-fun lt!485108 () ListLongMap!15071)

(declare-datatypes ((Unit!35777 0))(
  ( (Unit!35778) )
))
(declare-fun lt!485106 () Unit!35777)

(declare-fun zeroValue!831 () V!40709)

(declare-fun addRemoveCommutativeForDiffKeys!66 (ListLongMap!15071 (_ BitVec 64) V!40709 (_ BitVec 64)) Unit!35777)

(assert (=> b!1088767 (= lt!485106 (addRemoveCommutativeForDiffKeys!66 lt!485108 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun mapIsEmpty!41785 () Bool)

(declare-fun mapRes!41785 () Bool)

(assert (=> mapIsEmpty!41785 mapRes!41785))

(declare-fun b!1088768 () Bool)

(declare-fun res!726287 () Bool)

(assert (=> b!1088768 (=> (not res!726287) (not e!621928))))

(assert (=> b!1088768 (= res!726287 (arrayNoDuplicates!0 lt!485102 #b00000000000000000000000000000000 Nil!23726))))

(declare-fun b!1088769 () Bool)

(assert (=> b!1088769 (= e!621923 (and e!621922 mapRes!41785))))

(declare-fun condMapEmpty!41785 () Bool)

(declare-fun mapDefault!41785 () ValueCell!12634)


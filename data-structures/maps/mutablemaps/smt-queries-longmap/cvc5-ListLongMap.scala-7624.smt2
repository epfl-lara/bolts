; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96100 () Bool)

(assert start!96100)

(declare-fun b_free!22717 () Bool)

(declare-fun b_next!22717 () Bool)

(assert (=> start!96100 (= b_free!22717 (not b_next!22717))))

(declare-fun tp!80001 () Bool)

(declare-fun b_and!36127 () Bool)

(assert (=> start!96100 (= tp!80001 b_and!36127)))

(declare-fun b!1089464 () Bool)

(declare-fun e!622308 () Bool)

(declare-fun e!622307 () Bool)

(assert (=> b!1089464 (= e!622308 e!622307)))

(declare-fun res!726816 () Bool)

(assert (=> b!1089464 (=> (not res!726816) (not e!622307))))

(declare-datatypes ((array!70326 0))(
  ( (array!70327 (arr!33833 (Array (_ BitVec 32) (_ BitVec 64))) (size!34370 (_ BitVec 32))) )
))
(declare-fun lt!485738 () array!70326)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70326 (_ BitVec 32)) Bool)

(assert (=> b!1089464 (= res!726816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485738 mask!1414))))

(declare-fun _keys!1070 () array!70326)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089464 (= lt!485738 (array!70327 (store (arr!33833 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34370 _keys!1070)))))

(declare-fun b!1089465 () Bool)

(declare-fun res!726819 () Bool)

(assert (=> b!1089465 (=> (not res!726819) (not e!622307))))

(declare-datatypes ((List!23758 0))(
  ( (Nil!23755) (Cons!23754 (h!24963 (_ BitVec 64)) (t!33540 List!23758)) )
))
(declare-fun arrayNoDuplicates!0 (array!70326 (_ BitVec 32) List!23758) Bool)

(assert (=> b!1089465 (= res!726819 (arrayNoDuplicates!0 lt!485738 #b00000000000000000000000000000000 Nil!23755))))

(declare-fun b!1089466 () Bool)

(declare-fun e!622310 () Bool)

(assert (=> b!1089466 (= e!622310 true)))

(declare-datatypes ((V!40753 0))(
  ( (V!40754 (val!13416 Int)) )
))
(declare-datatypes ((tuple2!17120 0))(
  ( (tuple2!17121 (_1!8570 (_ BitVec 64)) (_2!8570 V!40753)) )
))
(declare-datatypes ((List!23759 0))(
  ( (Nil!23756) (Cons!23755 (h!24964 tuple2!17120) (t!33541 List!23759)) )
))
(declare-datatypes ((ListLongMap!15101 0))(
  ( (ListLongMap!15102 (toList!7566 List!23759)) )
))
(declare-fun lt!485728 () ListLongMap!15101)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!485729 () ListLongMap!15101)

(declare-fun -!844 (ListLongMap!15101 (_ BitVec 64)) ListLongMap!15101)

(assert (=> b!1089466 (= (-!844 lt!485728 k!904) lt!485729)))

(declare-datatypes ((Unit!35803 0))(
  ( (Unit!35804) )
))
(declare-fun lt!485727 () Unit!35803)

(declare-fun lt!485735 () ListLongMap!15101)

(declare-fun zeroValue!831 () V!40753)

(declare-fun addRemoveCommutativeForDiffKeys!77 (ListLongMap!15101 (_ BitVec 64) V!40753 (_ BitVec 64)) Unit!35803)

(assert (=> b!1089466 (= lt!485727 (addRemoveCommutativeForDiffKeys!77 lt!485735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1089468 () Bool)

(declare-fun res!726820 () Bool)

(assert (=> b!1089468 (=> (not res!726820) (not e!622308))))

(assert (=> b!1089468 (= res!726820 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34370 _keys!1070))))))

(declare-fun b!1089469 () Bool)

(declare-fun res!726823 () Bool)

(assert (=> b!1089469 (=> (not res!726823) (not e!622308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089469 (= res!726823 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!41833 () Bool)

(declare-fun mapRes!41833 () Bool)

(assert (=> mapIsEmpty!41833 mapRes!41833))

(declare-fun mapNonEmpty!41833 () Bool)

(declare-fun tp!80000 () Bool)

(declare-fun e!622306 () Bool)

(assert (=> mapNonEmpty!41833 (= mapRes!41833 (and tp!80000 e!622306))))

(declare-fun mapKey!41833 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12650 0))(
  ( (ValueCellFull!12650 (v!16038 V!40753)) (EmptyCell!12650) )
))
(declare-fun mapRest!41833 () (Array (_ BitVec 32) ValueCell!12650))

(declare-fun mapValue!41833 () ValueCell!12650)

(declare-datatypes ((array!70328 0))(
  ( (array!70329 (arr!33834 (Array (_ BitVec 32) ValueCell!12650)) (size!34371 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70328)

(assert (=> mapNonEmpty!41833 (= (arr!33834 _values!874) (store mapRest!41833 mapKey!41833 mapValue!41833))))

(declare-fun b!1089470 () Bool)

(declare-fun e!622311 () Bool)

(declare-fun e!622305 () Bool)

(assert (=> b!1089470 (= e!622311 (and e!622305 mapRes!41833))))

(declare-fun condMapEmpty!41833 () Bool)

(declare-fun mapDefault!41833 () ValueCell!12650)


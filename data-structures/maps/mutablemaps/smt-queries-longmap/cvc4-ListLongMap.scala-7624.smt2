; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96104 () Bool)

(assert start!96104)

(declare-fun b_free!22721 () Bool)

(declare-fun b_next!22721 () Bool)

(assert (=> start!96104 (= b_free!22721 (not b_next!22721))))

(declare-fun tp!80012 () Bool)

(declare-fun b_and!36135 () Bool)

(assert (=> start!96104 (= tp!80012 b_and!36135)))

(declare-fun b!1089552 () Bool)

(declare-fun e!622358 () Bool)

(assert (=> b!1089552 (= e!622358 true)))

(declare-datatypes ((V!40757 0))(
  ( (V!40758 (val!13418 Int)) )
))
(declare-datatypes ((tuple2!17124 0))(
  ( (tuple2!17125 (_1!8572 (_ BitVec 64)) (_2!8572 V!40757)) )
))
(declare-datatypes ((List!23762 0))(
  ( (Nil!23759) (Cons!23758 (h!24967 tuple2!17124) (t!33548 List!23762)) )
))
(declare-datatypes ((ListLongMap!15105 0))(
  ( (ListLongMap!15106 (toList!7568 List!23762)) )
))
(declare-fun lt!485807 () ListLongMap!15105)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!485815 () ListLongMap!15105)

(declare-fun -!846 (ListLongMap!15105 (_ BitVec 64)) ListLongMap!15105)

(assert (=> b!1089552 (= (-!846 lt!485807 k!904) lt!485815)))

(declare-fun lt!485810 () ListLongMap!15105)

(declare-datatypes ((Unit!35807 0))(
  ( (Unit!35808) )
))
(declare-fun lt!485809 () Unit!35807)

(declare-fun zeroValue!831 () V!40757)

(declare-fun addRemoveCommutativeForDiffKeys!79 (ListLongMap!15105 (_ BitVec 64) V!40757 (_ BitVec 64)) Unit!35807)

(assert (=> b!1089552 (= lt!485809 (addRemoveCommutativeForDiffKeys!79 lt!485810 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1089553 () Bool)

(declare-fun e!622357 () Bool)

(declare-fun e!622353 () Bool)

(assert (=> b!1089553 (= e!622357 e!622353)))

(declare-fun res!726887 () Bool)

(assert (=> b!1089553 (=> (not res!726887) (not e!622353))))

(declare-datatypes ((array!70334 0))(
  ( (array!70335 (arr!33837 (Array (_ BitVec 32) (_ BitVec 64))) (size!34374 (_ BitVec 32))) )
))
(declare-fun lt!485808 () array!70334)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70334 (_ BitVec 32)) Bool)

(assert (=> b!1089553 (= res!726887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485808 mask!1414))))

(declare-fun _keys!1070 () array!70334)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089553 (= lt!485808 (array!70335 (store (arr!33837 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34374 _keys!1070)))))

(declare-fun b!1089554 () Bool)

(declare-fun res!726884 () Bool)

(assert (=> b!1089554 (=> (not res!726884) (not e!622357))))

(assert (=> b!1089554 (= res!726884 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34374 _keys!1070))))))

(declare-fun mapIsEmpty!41839 () Bool)

(declare-fun mapRes!41839 () Bool)

(assert (=> mapIsEmpty!41839 mapRes!41839))

(declare-fun b!1089555 () Bool)

(declare-fun e!622355 () Bool)

(assert (=> b!1089555 (= e!622355 e!622358)))

(declare-fun res!726885 () Bool)

(assert (=> b!1089555 (=> res!726885 e!622358)))

(assert (=> b!1089555 (= res!726885 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!485813 () ListLongMap!15105)

(assert (=> b!1089555 (= lt!485813 lt!485815)))

(declare-fun lt!485806 () ListLongMap!15105)

(declare-fun lt!485811 () tuple2!17124)

(declare-fun +!3281 (ListLongMap!15105 tuple2!17124) ListLongMap!15105)

(assert (=> b!1089555 (= lt!485815 (+!3281 lt!485806 lt!485811))))

(declare-fun lt!485816 () ListLongMap!15105)

(assert (=> b!1089555 (= lt!485816 lt!485807)))

(assert (=> b!1089555 (= lt!485807 (+!3281 lt!485810 lt!485811))))

(declare-fun lt!485812 () ListLongMap!15105)

(assert (=> b!1089555 (= lt!485813 (+!3281 lt!485812 lt!485811))))

(assert (=> b!1089555 (= lt!485811 (tuple2!17125 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1089556 () Bool)

(declare-fun e!622359 () Bool)

(declare-fun e!622356 () Bool)

(assert (=> b!1089556 (= e!622359 (and e!622356 mapRes!41839))))

(declare-fun condMapEmpty!41839 () Bool)

(declare-datatypes ((ValueCell!12652 0))(
  ( (ValueCellFull!12652 (v!16040 V!40757)) (EmptyCell!12652) )
))
(declare-datatypes ((array!70336 0))(
  ( (array!70337 (arr!33838 (Array (_ BitVec 32) ValueCell!12652)) (size!34375 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70336)

(declare-fun mapDefault!41839 () ValueCell!12652)


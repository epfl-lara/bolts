; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95746 () Bool)

(assert start!95746)

(declare-fun b_free!22363 () Bool)

(declare-fun b_next!22363 () Bool)

(assert (=> start!95746 (= b_free!22363 (not b_next!22363))))

(declare-fun tp!78939 () Bool)

(declare-fun b_and!35419 () Bool)

(assert (=> start!95746 (= tp!78939 b_and!35419)))

(declare-fun b!1082059 () Bool)

(declare-fun res!721357 () Bool)

(declare-fun e!618458 () Bool)

(assert (=> b!1082059 (=> (not res!721357) (not e!618458))))

(declare-datatypes ((array!69634 0))(
  ( (array!69635 (arr!33487 (Array (_ BitVec 32) (_ BitVec 64))) (size!34024 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69634)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082059 (= res!721357 (= (select (arr!33487 _keys!1070) i!650) k!904))))

(declare-fun b!1082060 () Bool)

(declare-fun res!721361 () Bool)

(assert (=> b!1082060 (=> (not res!721361) (not e!618458))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((V!40281 0))(
  ( (V!40282 (val!13239 Int)) )
))
(declare-datatypes ((ValueCell!12473 0))(
  ( (ValueCellFull!12473 (v!15861 V!40281)) (EmptyCell!12473) )
))
(declare-datatypes ((array!69636 0))(
  ( (array!69637 (arr!33488 (Array (_ BitVec 32) ValueCell!12473)) (size!34025 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69636)

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1082060 (= res!721361 (and (= (size!34025 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34024 _keys!1070) (size!34025 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082061 () Bool)

(declare-fun res!721356 () Bool)

(declare-fun e!618463 () Bool)

(assert (=> b!1082061 (=> (not res!721356) (not e!618463))))

(declare-fun lt!479491 () array!69634)

(declare-datatypes ((List!23474 0))(
  ( (Nil!23471) (Cons!23470 (h!24679 (_ BitVec 64)) (t!32902 List!23474)) )
))
(declare-fun arrayNoDuplicates!0 (array!69634 (_ BitVec 32) List!23474) Bool)

(assert (=> b!1082061 (= res!721356 (arrayNoDuplicates!0 lt!479491 #b00000000000000000000000000000000 Nil!23471))))

(declare-fun b!1082062 () Bool)

(declare-fun res!721363 () Bool)

(assert (=> b!1082062 (=> (not res!721363) (not e!618458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69634 (_ BitVec 32)) Bool)

(assert (=> b!1082062 (= res!721363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082063 () Bool)

(assert (=> b!1082063 (= e!618463 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16842 0))(
  ( (tuple2!16843 (_1!8431 (_ BitVec 64)) (_2!8431 V!40281)) )
))
(declare-datatypes ((List!23475 0))(
  ( (Nil!23472) (Cons!23471 (h!24680 tuple2!16842) (t!32903 List!23475)) )
))
(declare-datatypes ((ListLongMap!14823 0))(
  ( (ListLongMap!14824 (toList!7427 List!23475)) )
))
(declare-fun lt!479489 () ListLongMap!14823)

(declare-fun zeroValue!831 () V!40281)

(declare-fun minValue!831 () V!40281)

(declare-fun getCurrentListMapNoExtraKeys!3938 (array!69634 array!69636 (_ BitVec 32) (_ BitVec 32) V!40281 V!40281 (_ BitVec 32) Int) ListLongMap!14823)

(declare-fun dynLambda!2074 (Int (_ BitVec 64)) V!40281)

(assert (=> b!1082063 (= lt!479489 (getCurrentListMapNoExtraKeys!3938 lt!479491 (array!69637 (store (arr!33488 _values!874) i!650 (ValueCellFull!12473 (dynLambda!2074 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34025 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479490 () ListLongMap!14823)

(assert (=> b!1082063 (= lt!479490 (getCurrentListMapNoExtraKeys!3938 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082063 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35533 0))(
  ( (Unit!35534) )
))
(declare-fun lt!479492 () Unit!35533)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69634 (_ BitVec 64) (_ BitVec 32)) Unit!35533)

(assert (=> b!1082063 (= lt!479492 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1082064 () Bool)

(declare-fun res!721358 () Bool)

(assert (=> b!1082064 (=> (not res!721358) (not e!618458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082064 (= res!721358 (validKeyInArray!0 k!904))))

(declare-fun b!1082065 () Bool)

(assert (=> b!1082065 (= e!618458 e!618463)))

(declare-fun res!721359 () Bool)

(assert (=> b!1082065 (=> (not res!721359) (not e!618463))))

(assert (=> b!1082065 (= res!721359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479491 mask!1414))))

(assert (=> b!1082065 (= lt!479491 (array!69635 (store (arr!33487 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34024 _keys!1070)))))

(declare-fun b!1082066 () Bool)

(declare-fun res!721364 () Bool)

(assert (=> b!1082066 (=> (not res!721364) (not e!618458))))

(assert (=> b!1082066 (= res!721364 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34024 _keys!1070))))))

(declare-fun b!1082067 () Bool)

(declare-fun res!721360 () Bool)

(assert (=> b!1082067 (=> (not res!721360) (not e!618458))))

(assert (=> b!1082067 (= res!721360 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23471))))

(declare-fun res!721362 () Bool)

(assert (=> start!95746 (=> (not res!721362) (not e!618458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95746 (= res!721362 (validMask!0 mask!1414))))

(assert (=> start!95746 e!618458))

(assert (=> start!95746 tp!78939))

(assert (=> start!95746 true))

(declare-fun tp_is_empty!26365 () Bool)

(assert (=> start!95746 tp_is_empty!26365))

(declare-fun array_inv!25712 (array!69634) Bool)

(assert (=> start!95746 (array_inv!25712 _keys!1070)))

(declare-fun e!618459 () Bool)

(declare-fun array_inv!25713 (array!69636) Bool)

(assert (=> start!95746 (and (array_inv!25713 _values!874) e!618459)))

(declare-fun b!1082068 () Bool)

(declare-fun e!618460 () Bool)

(declare-fun mapRes!41302 () Bool)

(assert (=> b!1082068 (= e!618459 (and e!618460 mapRes!41302))))

(declare-fun condMapEmpty!41302 () Bool)

(declare-fun mapDefault!41302 () ValueCell!12473)


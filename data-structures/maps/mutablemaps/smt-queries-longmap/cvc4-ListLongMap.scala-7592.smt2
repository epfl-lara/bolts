; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95912 () Bool)

(assert start!95912)

(declare-fun b_free!22529 () Bool)

(declare-fun b_next!22529 () Bool)

(assert (=> start!95912 (= b_free!22529 (not b_next!22529))))

(declare-fun tp!79437 () Bool)

(declare-fun b_and!35751 () Bool)

(assert (=> start!95912 (= tp!79437 b_and!35751)))

(declare-fun b!1085319 () Bool)

(declare-fun e!620049 () Bool)

(declare-fun e!620054 () Bool)

(assert (=> b!1085319 (= e!620049 e!620054)))

(declare-fun res!723711 () Bool)

(assert (=> b!1085319 (=> res!723711 e!620054)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1085319 (= res!723711 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40501 0))(
  ( (V!40502 (val!13322 Int)) )
))
(declare-datatypes ((tuple2!16960 0))(
  ( (tuple2!16961 (_1!8490 (_ BitVec 64)) (_2!8490 V!40501)) )
))
(declare-datatypes ((List!23602 0))(
  ( (Nil!23599) (Cons!23598 (h!24807 tuple2!16960) (t!33196 List!23602)) )
))
(declare-datatypes ((ListLongMap!14941 0))(
  ( (ListLongMap!14942 (toList!7486 List!23602)) )
))
(declare-fun lt!481594 () ListLongMap!14941)

(declare-fun lt!481579 () ListLongMap!14941)

(assert (=> b!1085319 (= lt!481594 lt!481579)))

(declare-fun lt!481592 () ListLongMap!14941)

(declare-fun -!767 (ListLongMap!14941 (_ BitVec 64)) ListLongMap!14941)

(assert (=> b!1085319 (= lt!481594 (-!767 lt!481592 k!904))))

(declare-datatypes ((Unit!35649 0))(
  ( (Unit!35650) )
))
(declare-fun lt!481586 () Unit!35649)

(declare-fun lt!481583 () ListLongMap!14941)

(declare-fun zeroValue!831 () V!40501)

(declare-fun addRemoveCommutativeForDiffKeys!13 (ListLongMap!14941 (_ BitVec 64) V!40501 (_ BitVec 64)) Unit!35649)

(assert (=> b!1085319 (= lt!481586 (addRemoveCommutativeForDiffKeys!13 lt!481583 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!481588 () ListLongMap!14941)

(declare-fun lt!481581 () tuple2!16960)

(declare-fun +!3217 (ListLongMap!14941 tuple2!16960) ListLongMap!14941)

(assert (=> b!1085319 (= lt!481588 (+!3217 lt!481579 lt!481581))))

(declare-fun lt!481582 () ListLongMap!14941)

(declare-fun lt!481593 () tuple2!16960)

(assert (=> b!1085319 (= lt!481579 (+!3217 lt!481582 lt!481593))))

(declare-fun lt!481591 () ListLongMap!14941)

(declare-fun lt!481584 () ListLongMap!14941)

(assert (=> b!1085319 (= lt!481591 lt!481584)))

(assert (=> b!1085319 (= lt!481584 (+!3217 lt!481592 lt!481581))))

(assert (=> b!1085319 (= lt!481592 (+!3217 lt!481583 lt!481593))))

(declare-fun lt!481587 () ListLongMap!14941)

(assert (=> b!1085319 (= lt!481588 (+!3217 (+!3217 lt!481587 lt!481593) lt!481581))))

(declare-fun minValue!831 () V!40501)

(assert (=> b!1085319 (= lt!481581 (tuple2!16961 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085319 (= lt!481593 (tuple2!16961 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1085320 () Bool)

(declare-fun e!620053 () Bool)

(declare-fun e!620055 () Bool)

(declare-fun mapRes!41551 () Bool)

(assert (=> b!1085320 (= e!620053 (and e!620055 mapRes!41551))))

(declare-fun condMapEmpty!41551 () Bool)

(declare-datatypes ((ValueCell!12556 0))(
  ( (ValueCellFull!12556 (v!15944 V!40501)) (EmptyCell!12556) )
))
(declare-datatypes ((array!69964 0))(
  ( (array!69965 (arr!33652 (Array (_ BitVec 32) ValueCell!12556)) (size!34189 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69964)

(declare-fun mapDefault!41551 () ValueCell!12556)


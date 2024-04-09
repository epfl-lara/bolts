; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95848 () Bool)

(assert start!95848)

(declare-fun b_free!22465 () Bool)

(declare-fun b_next!22465 () Bool)

(assert (=> start!95848 (= b_free!22465 (not b_next!22465))))

(declare-fun tp!79244 () Bool)

(declare-fun b_and!35623 () Bool)

(assert (=> start!95848 (= tp!79244 b_and!35623)))

(declare-fun b!1083997 () Bool)

(declare-fun e!619377 () Bool)

(declare-fun tp_is_empty!26467 () Bool)

(assert (=> b!1083997 (= e!619377 tp_is_empty!26467)))

(declare-fun b!1083998 () Bool)

(declare-fun res!722741 () Bool)

(declare-fun e!619379 () Bool)

(assert (=> b!1083998 (=> (not res!722741) (not e!619379))))

(declare-datatypes ((array!69836 0))(
  ( (array!69837 (arr!33588 (Array (_ BitVec 32) (_ BitVec 64))) (size!34125 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69836)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69836 (_ BitVec 32)) Bool)

(assert (=> b!1083998 (= res!722741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083999 () Bool)

(declare-fun e!619381 () Bool)

(assert (=> b!1083999 (= e!619381 tp_is_empty!26467)))

(declare-fun b!1084000 () Bool)

(declare-fun res!722739 () Bool)

(assert (=> b!1084000 (=> (not res!722739) (not e!619379))))

(declare-datatypes ((List!23548 0))(
  ( (Nil!23545) (Cons!23544 (h!24753 (_ BitVec 64)) (t!33078 List!23548)) )
))
(declare-fun arrayNoDuplicates!0 (array!69836 (_ BitVec 32) List!23548) Bool)

(assert (=> b!1084000 (= res!722739 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23545))))

(declare-fun b!1084001 () Bool)

(declare-fun e!619378 () Bool)

(declare-fun mapRes!41455 () Bool)

(assert (=> b!1084001 (= e!619378 (and e!619377 mapRes!41455))))

(declare-fun condMapEmpty!41455 () Bool)

(declare-datatypes ((V!40417 0))(
  ( (V!40418 (val!13290 Int)) )
))
(declare-datatypes ((ValueCell!12524 0))(
  ( (ValueCellFull!12524 (v!15912 V!40417)) (EmptyCell!12524) )
))
(declare-datatypes ((array!69838 0))(
  ( (array!69839 (arr!33589 (Array (_ BitVec 32) ValueCell!12524)) (size!34126 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69838)

(declare-fun mapDefault!41455 () ValueCell!12524)


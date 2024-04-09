; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95804 () Bool)

(assert start!95804)

(declare-fun b_free!22421 () Bool)

(declare-fun b_next!22421 () Bool)

(assert (=> start!95804 (= b_free!22421 (not b_next!22421))))

(declare-fun tp!79113 () Bool)

(declare-fun b_and!35535 () Bool)

(assert (=> start!95804 (= tp!79113 b_and!35535)))

(declare-fun b!1083161 () Bool)

(declare-fun res!722141 () Bool)

(declare-fun e!618983 () Bool)

(assert (=> b!1083161 (=> (not res!722141) (not e!618983))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69748 0))(
  ( (array!69749 (arr!33544 (Array (_ BitVec 32) (_ BitVec 64))) (size!34081 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69748)

(assert (=> b!1083161 (= res!722141 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34081 _keys!1070))))))

(declare-fun b!1083162 () Bool)

(declare-fun res!722147 () Bool)

(assert (=> b!1083162 (=> (not res!722147) (not e!618983))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083162 (= res!722147 (validKeyInArray!0 k!904))))

(declare-fun b!1083163 () Bool)

(declare-fun res!722142 () Bool)

(assert (=> b!1083163 (=> (not res!722142) (not e!618983))))

(assert (=> b!1083163 (= res!722142 (= (select (arr!33544 _keys!1070) i!650) k!904))))

(declare-fun b!1083164 () Bool)

(declare-fun res!722146 () Bool)

(assert (=> b!1083164 (=> (not res!722146) (not e!618983))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69748 (_ BitVec 32)) Bool)

(assert (=> b!1083164 (= res!722146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41389 () Bool)

(declare-fun mapRes!41389 () Bool)

(assert (=> mapIsEmpty!41389 mapRes!41389))

(declare-fun b!1083165 () Bool)

(declare-fun e!618984 () Bool)

(assert (=> b!1083165 (= e!618983 e!618984)))

(declare-fun res!722145 () Bool)

(assert (=> b!1083165 (=> (not res!722145) (not e!618984))))

(declare-fun lt!479947 () array!69748)

(assert (=> b!1083165 (= res!722145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479947 mask!1414))))

(assert (=> b!1083165 (= lt!479947 (array!69749 (store (arr!33544 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34081 _keys!1070)))))

(declare-fun b!1083166 () Bool)

(declare-fun res!722144 () Bool)

(assert (=> b!1083166 (=> (not res!722144) (not e!618984))))

(declare-datatypes ((List!23517 0))(
  ( (Nil!23514) (Cons!23513 (h!24722 (_ BitVec 64)) (t!33003 List!23517)) )
))
(declare-fun arrayNoDuplicates!0 (array!69748 (_ BitVec 32) List!23517) Bool)

(assert (=> b!1083166 (= res!722144 (arrayNoDuplicates!0 lt!479947 #b00000000000000000000000000000000 Nil!23514))))

(declare-fun b!1083168 () Bool)

(declare-fun e!618985 () Bool)

(declare-fun e!618981 () Bool)

(assert (=> b!1083168 (= e!618985 (and e!618981 mapRes!41389))))

(declare-fun condMapEmpty!41389 () Bool)

(declare-datatypes ((V!40357 0))(
  ( (V!40358 (val!13268 Int)) )
))
(declare-datatypes ((ValueCell!12502 0))(
  ( (ValueCellFull!12502 (v!15890 V!40357)) (EmptyCell!12502) )
))
(declare-datatypes ((array!69750 0))(
  ( (array!69751 (arr!33545 (Array (_ BitVec 32) ValueCell!12502)) (size!34082 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69750)

(declare-fun mapDefault!41389 () ValueCell!12502)


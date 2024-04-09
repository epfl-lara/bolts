; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97638 () Bool)

(assert start!97638)

(declare-fun b!1114951 () Bool)

(declare-fun e!635445 () Bool)

(declare-fun tp_is_empty!27833 () Bool)

(assert (=> b!1114951 (= e!635445 tp_is_empty!27833)))

(declare-fun mapIsEmpty!43567 () Bool)

(declare-fun mapRes!43567 () Bool)

(assert (=> mapIsEmpty!43567 mapRes!43567))

(declare-fun b!1114952 () Bool)

(declare-fun res!744381 () Bool)

(declare-fun e!635446 () Bool)

(assert (=> b!1114952 (=> (not res!744381) (not e!635446))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72512 0))(
  ( (array!72513 (arr!34905 (Array (_ BitVec 32) (_ BitVec 64))) (size!35442 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72512)

(assert (=> b!1114952 (= res!744381 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35442 _keys!1208))))))

(declare-fun b!1114953 () Bool)

(declare-fun e!635443 () Bool)

(assert (=> b!1114953 (= e!635443 (and e!635445 mapRes!43567))))

(declare-fun condMapEmpty!43567 () Bool)

(declare-datatypes ((V!42237 0))(
  ( (V!42238 (val!13973 Int)) )
))
(declare-datatypes ((ValueCell!13207 0))(
  ( (ValueCellFull!13207 (v!16607 V!42237)) (EmptyCell!13207) )
))
(declare-datatypes ((array!72514 0))(
  ( (array!72515 (arr!34906 (Array (_ BitVec 32) ValueCell!13207)) (size!35443 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72514)

(declare-fun mapDefault!43567 () ValueCell!13207)


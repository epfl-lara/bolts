; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97454 () Bool)

(assert start!97454)

(declare-fun b_free!23389 () Bool)

(declare-fun b_next!23389 () Bool)

(assert (=> start!97454 (= b_free!23389 (not b_next!23389))))

(declare-fun tp!82467 () Bool)

(declare-fun b_and!37635 () Bool)

(assert (=> start!97454 (= tp!82467 b_and!37635)))

(declare-fun b!1111093 () Bool)

(declare-fun res!741545 () Bool)

(declare-fun e!633642 () Bool)

(assert (=> b!1111093 (=> (not res!741545) (not e!633642))))

(declare-datatypes ((array!72162 0))(
  ( (array!72163 (arr!34730 (Array (_ BitVec 32) (_ BitVec 64))) (size!35267 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72162)

(declare-datatypes ((List!24363 0))(
  ( (Nil!24360) (Cons!24359 (h!25568 (_ BitVec 64)) (t!34805 List!24363)) )
))
(declare-fun arrayNoDuplicates!0 (array!72162 (_ BitVec 32) List!24363) Bool)

(assert (=> b!1111093 (= res!741545 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24360))))

(declare-fun b!1111094 () Bool)

(declare-fun res!741542 () Bool)

(assert (=> b!1111094 (=> (not res!741542) (not e!633642))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1111094 (= res!741542 (= (select (arr!34730 _keys!1208) i!673) k!934))))

(declare-fun b!1111095 () Bool)

(declare-fun e!633647 () Bool)

(declare-fun e!633644 () Bool)

(declare-fun mapRes!43291 () Bool)

(assert (=> b!1111095 (= e!633647 (and e!633644 mapRes!43291))))

(declare-fun condMapEmpty!43291 () Bool)

(declare-datatypes ((V!41993 0))(
  ( (V!41994 (val!13881 Int)) )
))
(declare-datatypes ((ValueCell!13115 0))(
  ( (ValueCellFull!13115 (v!16515 V!41993)) (EmptyCell!13115) )
))
(declare-datatypes ((array!72164 0))(
  ( (array!72165 (arr!34731 (Array (_ BitVec 32) ValueCell!13115)) (size!35268 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72164)

(declare-fun mapDefault!43291 () ValueCell!13115)


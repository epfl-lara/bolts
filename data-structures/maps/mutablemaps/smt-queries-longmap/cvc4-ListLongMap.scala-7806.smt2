; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97620 () Bool)

(assert start!97620)

(declare-fun b!1114600 () Bool)

(declare-fun e!635284 () Bool)

(declare-fun tp_is_empty!27815 () Bool)

(assert (=> b!1114600 (= e!635284 tp_is_empty!27815)))

(declare-fun b!1114601 () Bool)

(declare-fun res!744111 () Bool)

(declare-fun e!635282 () Bool)

(assert (=> b!1114601 (=> (not res!744111) (not e!635282))))

(declare-datatypes ((array!72478 0))(
  ( (array!72479 (arr!34888 (Array (_ BitVec 32) (_ BitVec 64))) (size!35425 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72478)

(declare-datatypes ((List!24439 0))(
  ( (Nil!24436) (Cons!24435 (h!25644 (_ BitVec 64)) (t!34927 List!24439)) )
))
(declare-fun arrayNoDuplicates!0 (array!72478 (_ BitVec 32) List!24439) Bool)

(assert (=> b!1114601 (= res!744111 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24436))))

(declare-fun b!1114602 () Bool)

(declare-fun res!744104 () Bool)

(assert (=> b!1114602 (=> (not res!744104) (not e!635282))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72478 (_ BitVec 32)) Bool)

(assert (=> b!1114602 (= res!744104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114603 () Bool)

(declare-fun e!635283 () Bool)

(assert (=> b!1114603 (= e!635282 e!635283)))

(declare-fun res!744109 () Bool)

(assert (=> b!1114603 (=> (not res!744109) (not e!635283))))

(declare-fun lt!496832 () array!72478)

(assert (=> b!1114603 (= res!744109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496832 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114603 (= lt!496832 (array!72479 (store (arr!34888 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35425 _keys!1208)))))

(declare-fun b!1114604 () Bool)

(declare-fun e!635281 () Bool)

(assert (=> b!1114604 (= e!635281 tp_is_empty!27815)))

(declare-fun b!1114605 () Bool)

(declare-fun e!635280 () Bool)

(declare-fun mapRes!43540 () Bool)

(assert (=> b!1114605 (= e!635280 (and e!635284 mapRes!43540))))

(declare-fun condMapEmpty!43540 () Bool)

(declare-datatypes ((V!42213 0))(
  ( (V!42214 (val!13964 Int)) )
))
(declare-datatypes ((ValueCell!13198 0))(
  ( (ValueCellFull!13198 (v!16598 V!42213)) (EmptyCell!13198) )
))
(declare-datatypes ((array!72480 0))(
  ( (array!72481 (arr!34889 (Array (_ BitVec 32) ValueCell!13198)) (size!35426 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72480)

(declare-fun mapDefault!43540 () ValueCell!13198)


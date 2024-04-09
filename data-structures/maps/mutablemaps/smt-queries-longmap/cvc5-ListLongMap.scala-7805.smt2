; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97610 () Bool)

(assert start!97610)

(declare-fun b!1114405 () Bool)

(declare-fun res!743955 () Bool)

(declare-fun e!635191 () Bool)

(assert (=> b!1114405 (=> (not res!743955) (not e!635191))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72458 0))(
  ( (array!72459 (arr!34878 (Array (_ BitVec 32) (_ BitVec 64))) (size!35415 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72458)

(assert (=> b!1114405 (= res!743955 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35415 _keys!1208))))))

(declare-fun b!1114406 () Bool)

(declare-fun res!743952 () Bool)

(assert (=> b!1114406 (=> (not res!743952) (not e!635191))))

(declare-datatypes ((List!24436 0))(
  ( (Nil!24433) (Cons!24432 (h!25641 (_ BitVec 64)) (t!34924 List!24436)) )
))
(declare-fun arrayNoDuplicates!0 (array!72458 (_ BitVec 32) List!24436) Bool)

(assert (=> b!1114406 (= res!743952 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24433))))

(declare-fun b!1114407 () Bool)

(declare-fun res!743959 () Bool)

(assert (=> b!1114407 (=> (not res!743959) (not e!635191))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114407 (= res!743959 (validMask!0 mask!1564))))

(declare-fun b!1114408 () Bool)

(declare-fun e!635195 () Bool)

(declare-fun e!635193 () Bool)

(declare-fun mapRes!43525 () Bool)

(assert (=> b!1114408 (= e!635195 (and e!635193 mapRes!43525))))

(declare-fun condMapEmpty!43525 () Bool)

(declare-datatypes ((V!42201 0))(
  ( (V!42202 (val!13959 Int)) )
))
(declare-datatypes ((ValueCell!13193 0))(
  ( (ValueCellFull!13193 (v!16593 V!42201)) (EmptyCell!13193) )
))
(declare-datatypes ((array!72460 0))(
  ( (array!72461 (arr!34879 (Array (_ BitVec 32) ValueCell!13193)) (size!35416 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72460)

(declare-fun mapDefault!43525 () ValueCell!13193)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97386 () Bool)

(assert start!97386)

(declare-fun b_free!23321 () Bool)

(declare-fun b_next!23321 () Bool)

(assert (=> start!97386 (= b_free!23321 (not b_next!23321))))

(declare-fun tp!82262 () Bool)

(declare-fun b_and!37497 () Bool)

(assert (=> start!97386 (= tp!82262 b_and!37497)))

(declare-fun b!1109381 () Bool)

(declare-fun res!740423 () Bool)

(declare-fun e!632819 () Bool)

(assert (=> b!1109381 (=> (not res!740423) (not e!632819))))

(declare-datatypes ((array!72030 0))(
  ( (array!72031 (arr!34664 (Array (_ BitVec 32) (_ BitVec 64))) (size!35201 (_ BitVec 32))) )
))
(declare-fun lt!495960 () array!72030)

(declare-datatypes ((List!24311 0))(
  ( (Nil!24308) (Cons!24307 (h!25516 (_ BitVec 64)) (t!34685 List!24311)) )
))
(declare-fun arrayNoDuplicates!0 (array!72030 (_ BitVec 32) List!24311) Bool)

(assert (=> b!1109381 (= res!740423 (arrayNoDuplicates!0 lt!495960 #b00000000000000000000000000000000 Nil!24308))))

(declare-fun b!1109382 () Bool)

(declare-fun e!632818 () Bool)

(declare-fun e!632825 () Bool)

(declare-fun mapRes!43189 () Bool)

(assert (=> b!1109382 (= e!632818 (and e!632825 mapRes!43189))))

(declare-fun condMapEmpty!43189 () Bool)

(declare-datatypes ((V!41901 0))(
  ( (V!41902 (val!13847 Int)) )
))
(declare-datatypes ((ValueCell!13081 0))(
  ( (ValueCellFull!13081 (v!16481 V!41901)) (EmptyCell!13081) )
))
(declare-datatypes ((array!72032 0))(
  ( (array!72033 (arr!34665 (Array (_ BitVec 32) ValueCell!13081)) (size!35202 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72032)

(declare-fun mapDefault!43189 () ValueCell!13081)


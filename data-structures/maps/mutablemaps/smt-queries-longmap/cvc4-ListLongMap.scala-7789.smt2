; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97518 () Bool)

(assert start!97518)

(declare-fun b!1112611 () Bool)

(declare-fun res!742573 () Bool)

(declare-fun e!634363 () Bool)

(assert (=> b!1112611 (=> (not res!742573) (not e!634363))))

(declare-datatypes ((array!72282 0))(
  ( (array!72283 (arr!34790 (Array (_ BitVec 32) (_ BitVec 64))) (size!35327 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72282)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42077 0))(
  ( (V!42078 (val!13913 Int)) )
))
(declare-datatypes ((ValueCell!13147 0))(
  ( (ValueCellFull!13147 (v!16547 V!42077)) (EmptyCell!13147) )
))
(declare-datatypes ((array!72284 0))(
  ( (array!72285 (arr!34791 (Array (_ BitVec 32) ValueCell!13147)) (size!35328 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72284)

(assert (=> b!1112611 (= res!742573 (and (= (size!35328 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35327 _keys!1208) (size!35328 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43387 () Bool)

(declare-fun mapRes!43387 () Bool)

(assert (=> mapIsEmpty!43387 mapRes!43387))

(declare-fun b!1112612 () Bool)

(declare-fun e!634366 () Bool)

(declare-fun tp_is_empty!27713 () Bool)

(assert (=> b!1112612 (= e!634366 tp_is_empty!27713)))

(declare-fun b!1112613 () Bool)

(declare-fun res!742572 () Bool)

(assert (=> b!1112613 (=> (not res!742572) (not e!634363))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112613 (= res!742572 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35327 _keys!1208))))))

(declare-fun b!1112614 () Bool)

(declare-fun res!742574 () Bool)

(assert (=> b!1112614 (=> (not res!742574) (not e!634363))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112614 (= res!742574 (validKeyInArray!0 k!934))))

(declare-fun b!1112615 () Bool)

(declare-fun res!742576 () Bool)

(assert (=> b!1112615 (=> (not res!742576) (not e!634363))))

(declare-datatypes ((List!24403 0))(
  ( (Nil!24400) (Cons!24399 (h!25608 (_ BitVec 64)) (t!34891 List!24403)) )
))
(declare-fun arrayNoDuplicates!0 (array!72282 (_ BitVec 32) List!24403) Bool)

(assert (=> b!1112615 (= res!742576 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24400))))

(declare-fun res!742578 () Bool)

(assert (=> start!97518 (=> (not res!742578) (not e!634363))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97518 (= res!742578 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35327 _keys!1208))))))

(assert (=> start!97518 e!634363))

(declare-fun array_inv!26626 (array!72282) Bool)

(assert (=> start!97518 (array_inv!26626 _keys!1208)))

(assert (=> start!97518 true))

(declare-fun e!634367 () Bool)

(declare-fun array_inv!26627 (array!72284) Bool)

(assert (=> start!97518 (and (array_inv!26627 _values!996) e!634367)))

(declare-fun b!1112616 () Bool)

(declare-fun e!634362 () Bool)

(assert (=> b!1112616 (= e!634362 tp_is_empty!27713)))

(declare-fun b!1112617 () Bool)

(declare-fun res!742579 () Bool)

(assert (=> b!1112617 (=> (not res!742579) (not e!634363))))

(assert (=> b!1112617 (= res!742579 (= (select (arr!34790 _keys!1208) i!673) k!934))))

(declare-fun b!1112618 () Bool)

(assert (=> b!1112618 (= e!634367 (and e!634362 mapRes!43387))))

(declare-fun condMapEmpty!43387 () Bool)

(declare-fun mapDefault!43387 () ValueCell!13147)


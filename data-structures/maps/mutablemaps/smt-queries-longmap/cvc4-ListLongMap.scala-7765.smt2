; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97374 () Bool)

(assert start!97374)

(declare-fun b_free!23309 () Bool)

(declare-fun b_next!23309 () Bool)

(assert (=> start!97374 (= b_free!23309 (not b_next!23309))))

(declare-fun tp!82227 () Bool)

(declare-fun b_and!37471 () Bool)

(assert (=> start!97374 (= tp!82227 b_and!37471)))

(declare-fun mapNonEmpty!43171 () Bool)

(declare-fun mapRes!43171 () Bool)

(declare-fun tp!82226 () Bool)

(declare-fun e!632675 () Bool)

(assert (=> mapNonEmpty!43171 (= mapRes!43171 (and tp!82226 e!632675))))

(declare-fun mapKey!43171 () (_ BitVec 32))

(declare-datatypes ((V!41885 0))(
  ( (V!41886 (val!13841 Int)) )
))
(declare-datatypes ((ValueCell!13075 0))(
  ( (ValueCellFull!13075 (v!16475 V!41885)) (EmptyCell!13075) )
))
(declare-fun mapRest!43171 () (Array (_ BitVec 32) ValueCell!13075))

(declare-fun mapValue!43171 () ValueCell!13075)

(declare-datatypes ((array!72006 0))(
  ( (array!72007 (arr!34652 (Array (_ BitVec 32) ValueCell!13075)) (size!35189 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72006)

(assert (=> mapNonEmpty!43171 (= (arr!34652 _values!996) (store mapRest!43171 mapKey!43171 mapValue!43171))))

(declare-fun b!1109069 () Bool)

(declare-fun res!740232 () Bool)

(declare-fun e!632669 () Bool)

(assert (=> b!1109069 (=> (not res!740232) (not e!632669))))

(declare-datatypes ((array!72008 0))(
  ( (array!72009 (arr!34653 (Array (_ BitVec 32) (_ BitVec 64))) (size!35190 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72008)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1109069 (= res!740232 (= (select (arr!34653 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43171 () Bool)

(assert (=> mapIsEmpty!43171 mapRes!43171))

(declare-fun b!1109070 () Bool)

(declare-fun res!740228 () Bool)

(declare-fun e!632668 () Bool)

(assert (=> b!1109070 (=> (not res!740228) (not e!632668))))

(declare-fun lt!495906 () array!72008)

(declare-datatypes ((List!24301 0))(
  ( (Nil!24298) (Cons!24297 (h!25506 (_ BitVec 64)) (t!34663 List!24301)) )
))
(declare-fun arrayNoDuplicates!0 (array!72008 (_ BitVec 32) List!24301) Bool)

(assert (=> b!1109070 (= res!740228 (arrayNoDuplicates!0 lt!495906 #b00000000000000000000000000000000 Nil!24298))))

(declare-fun b!1109071 () Bool)

(declare-fun res!740223 () Bool)

(assert (=> b!1109071 (=> (not res!740223) (not e!632669))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72008 (_ BitVec 32)) Bool)

(assert (=> b!1109071 (= res!740223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!740227 () Bool)

(assert (=> start!97374 (=> (not res!740227) (not e!632669))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97374 (= res!740227 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35190 _keys!1208))))))

(assert (=> start!97374 e!632669))

(declare-fun tp_is_empty!27569 () Bool)

(assert (=> start!97374 tp_is_empty!27569))

(declare-fun array_inv!26532 (array!72008) Bool)

(assert (=> start!97374 (array_inv!26532 _keys!1208)))

(assert (=> start!97374 true))

(assert (=> start!97374 tp!82227))

(declare-fun e!632671 () Bool)

(declare-fun array_inv!26533 (array!72006) Bool)

(assert (=> start!97374 (and (array_inv!26533 _values!996) e!632671)))

(declare-fun b!1109072 () Bool)

(declare-fun e!632670 () Bool)

(assert (=> b!1109072 (= e!632671 (and e!632670 mapRes!43171))))

(declare-fun condMapEmpty!43171 () Bool)

(declare-fun mapDefault!43171 () ValueCell!13075)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74114 () Bool)

(assert start!74114)

(declare-fun b_free!14995 () Bool)

(declare-fun b_next!14995 () Bool)

(assert (=> start!74114 (= b_free!14995 (not b_next!14995))))

(declare-fun tp!52498 () Bool)

(declare-fun b_and!24765 () Bool)

(assert (=> start!74114 (= tp!52498 b_and!24765)))

(declare-fun b!871492 () Bool)

(declare-fun res!592493 () Bool)

(declare-fun e!485256 () Bool)

(assert (=> b!871492 (=> (not res!592493) (not e!485256))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871492 (= res!592493 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27305 () Bool)

(declare-fun mapRes!27305 () Bool)

(declare-fun tp!52499 () Bool)

(declare-fun e!485253 () Bool)

(assert (=> mapNonEmpty!27305 (= mapRes!27305 (and tp!52499 e!485253))))

(declare-fun mapKey!27305 () (_ BitVec 32))

(declare-datatypes ((V!27897 0))(
  ( (V!27898 (val!8616 Int)) )
))
(declare-datatypes ((ValueCell!8129 0))(
  ( (ValueCellFull!8129 (v!11037 V!27897)) (EmptyCell!8129) )
))
(declare-fun mapRest!27305 () (Array (_ BitVec 32) ValueCell!8129))

(declare-datatypes ((array!50402 0))(
  ( (array!50403 (arr!24228 (Array (_ BitVec 32) ValueCell!8129)) (size!24669 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50402)

(declare-fun mapValue!27305 () ValueCell!8129)

(assert (=> mapNonEmpty!27305 (= (arr!24228 _values!688) (store mapRest!27305 mapKey!27305 mapValue!27305))))

(declare-fun b!871493 () Bool)

(declare-fun res!592500 () Bool)

(assert (=> b!871493 (=> (not res!592500) (not e!485256))))

(declare-datatypes ((array!50404 0))(
  ( (array!50405 (arr!24229 (Array (_ BitVec 32) (_ BitVec 64))) (size!24670 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50404)

(declare-datatypes ((List!17302 0))(
  ( (Nil!17299) (Cons!17298 (h!18429 (_ BitVec 64)) (t!24347 List!17302)) )
))
(declare-fun arrayNoDuplicates!0 (array!50404 (_ BitVec 32) List!17302) Bool)

(assert (=> b!871493 (= res!592500 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17299))))

(declare-fun b!871494 () Bool)

(declare-fun res!592497 () Bool)

(assert (=> b!871494 (=> (not res!592497) (not e!485256))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871494 (= res!592497 (validKeyInArray!0 k!854))))

(declare-fun b!871495 () Bool)

(declare-fun e!485252 () Bool)

(declare-fun tp_is_empty!17137 () Bool)

(assert (=> b!871495 (= e!485252 tp_is_empty!17137)))

(declare-fun b!871496 () Bool)

(declare-fun res!592498 () Bool)

(assert (=> b!871496 (=> (not res!592498) (not e!485256))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!871496 (= res!592498 (and (= (size!24669 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24670 _keys!868) (size!24669 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27305 () Bool)

(assert (=> mapIsEmpty!27305 mapRes!27305))

(declare-fun b!871497 () Bool)

(declare-fun res!592495 () Bool)

(assert (=> b!871497 (=> (not res!592495) (not e!485256))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!871497 (= res!592495 (and (= (select (arr!24229 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!592499 () Bool)

(assert (=> start!74114 (=> (not res!592499) (not e!485256))))

(assert (=> start!74114 (= res!592499 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24670 _keys!868))))))

(assert (=> start!74114 e!485256))

(assert (=> start!74114 tp_is_empty!17137))

(assert (=> start!74114 true))

(assert (=> start!74114 tp!52498))

(declare-fun array_inv!19104 (array!50404) Bool)

(assert (=> start!74114 (array_inv!19104 _keys!868)))

(declare-fun e!485254 () Bool)

(declare-fun array_inv!19105 (array!50402) Bool)

(assert (=> start!74114 (and (array_inv!19105 _values!688) e!485254)))

(declare-fun b!871498 () Bool)

(assert (=> b!871498 (= e!485254 (and e!485252 mapRes!27305))))

(declare-fun condMapEmpty!27305 () Bool)

(declare-fun mapDefault!27305 () ValueCell!8129)


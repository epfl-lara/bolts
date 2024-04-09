; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74122 () Bool)

(assert start!74122)

(declare-fun mapIsEmpty!27317 () Bool)

(declare-fun mapRes!27317 () Bool)

(assert (=> mapIsEmpty!27317 mapRes!27317))

(declare-fun b!871604 () Bool)

(declare-fun e!485312 () Bool)

(assert (=> b!871604 (= e!485312 false)))

(declare-fun lt!395478 () Bool)

(declare-datatypes ((array!50418 0))(
  ( (array!50419 (arr!24236 (Array (_ BitVec 32) (_ BitVec 64))) (size!24677 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50418)

(declare-datatypes ((List!17306 0))(
  ( (Nil!17303) (Cons!17302 (h!18433 (_ BitVec 64)) (t!24351 List!17306)) )
))
(declare-fun arrayNoDuplicates!0 (array!50418 (_ BitVec 32) List!17306) Bool)

(assert (=> b!871604 (= lt!395478 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17303))))

(declare-fun b!871605 () Bool)

(declare-fun e!485316 () Bool)

(declare-fun e!485315 () Bool)

(assert (=> b!871605 (= e!485316 (and e!485315 mapRes!27317))))

(declare-fun condMapEmpty!27317 () Bool)

(declare-datatypes ((V!27907 0))(
  ( (V!27908 (val!8620 Int)) )
))
(declare-datatypes ((ValueCell!8133 0))(
  ( (ValueCellFull!8133 (v!11041 V!27907)) (EmptyCell!8133) )
))
(declare-datatypes ((array!50420 0))(
  ( (array!50421 (arr!24237 (Array (_ BitVec 32) ValueCell!8133)) (size!24678 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50420)

(declare-fun mapDefault!27317 () ValueCell!8133)

(assert (=> b!871605 (= condMapEmpty!27317 (= (arr!24237 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8133)) mapDefault!27317)))))

(declare-fun mapNonEmpty!27317 () Bool)

(declare-fun tp!52517 () Bool)

(declare-fun e!485314 () Bool)

(assert (=> mapNonEmpty!27317 (= mapRes!27317 (and tp!52517 e!485314))))

(declare-fun mapValue!27317 () ValueCell!8133)

(declare-fun mapKey!27317 () (_ BitVec 32))

(declare-fun mapRest!27317 () (Array (_ BitVec 32) ValueCell!8133))

(assert (=> mapNonEmpty!27317 (= (arr!24237 _values!688) (store mapRest!27317 mapKey!27317 mapValue!27317))))

(declare-fun b!871607 () Bool)

(declare-fun tp_is_empty!17145 () Bool)

(assert (=> b!871607 (= e!485315 tp_is_empty!17145)))

(declare-fun b!871608 () Bool)

(declare-fun res!592569 () Bool)

(assert (=> b!871608 (=> (not res!592569) (not e!485312))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!871608 (= res!592569 (and (= (size!24678 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24677 _keys!868) (size!24678 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871609 () Bool)

(assert (=> b!871609 (= e!485314 tp_is_empty!17145)))

(declare-fun b!871610 () Bool)

(declare-fun res!592570 () Bool)

(assert (=> b!871610 (=> (not res!592570) (not e!485312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50418 (_ BitVec 32)) Bool)

(assert (=> b!871610 (= res!592570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871606 () Bool)

(declare-fun res!592572 () Bool)

(assert (=> b!871606 (=> (not res!592572) (not e!485312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871606 (= res!592572 (validMask!0 mask!1196))))

(declare-fun res!592571 () Bool)

(assert (=> start!74122 (=> (not res!592571) (not e!485312))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74122 (= res!592571 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24677 _keys!868))))))

(assert (=> start!74122 e!485312))

(assert (=> start!74122 true))

(declare-fun array_inv!19110 (array!50418) Bool)

(assert (=> start!74122 (array_inv!19110 _keys!868)))

(declare-fun array_inv!19111 (array!50420) Bool)

(assert (=> start!74122 (and (array_inv!19111 _values!688) e!485316)))

(assert (= (and start!74122 res!592571) b!871606))

(assert (= (and b!871606 res!592572) b!871608))

(assert (= (and b!871608 res!592569) b!871610))

(assert (= (and b!871610 res!592570) b!871604))

(assert (= (and b!871605 condMapEmpty!27317) mapIsEmpty!27317))

(assert (= (and b!871605 (not condMapEmpty!27317)) mapNonEmpty!27317))

(get-info :version)

(assert (= (and mapNonEmpty!27317 ((_ is ValueCellFull!8133) mapValue!27317)) b!871609))

(assert (= (and b!871605 ((_ is ValueCellFull!8133) mapDefault!27317)) b!871607))

(assert (= start!74122 b!871605))

(declare-fun m!812827 () Bool)

(assert (=> start!74122 m!812827))

(declare-fun m!812829 () Bool)

(assert (=> start!74122 m!812829))

(declare-fun m!812831 () Bool)

(assert (=> b!871610 m!812831))

(declare-fun m!812833 () Bool)

(assert (=> mapNonEmpty!27317 m!812833))

(declare-fun m!812835 () Bool)

(assert (=> b!871604 m!812835))

(declare-fun m!812837 () Bool)

(assert (=> b!871606 m!812837))

(check-sat (not b!871604) (not b!871610) (not b!871606) (not mapNonEmpty!27317) (not start!74122) tp_is_empty!17145)
(check-sat)

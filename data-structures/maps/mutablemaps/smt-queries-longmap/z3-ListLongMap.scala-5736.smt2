; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74260 () Bool)

(assert start!74260)

(declare-fun b!873113 () Bool)

(declare-fun res!593443 () Bool)

(declare-fun e!486254 () Bool)

(assert (=> b!873113 (=> (not res!593443) (not e!486254))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873113 (= res!593443 (validMask!0 mask!1196))))

(declare-fun res!593444 () Bool)

(assert (=> start!74260 (=> (not res!593444) (not e!486254))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50622 0))(
  ( (array!50623 (arr!24336 (Array (_ BitVec 32) (_ BitVec 64))) (size!24777 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50622)

(assert (=> start!74260 (= res!593444 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24777 _keys!868))))))

(assert (=> start!74260 e!486254))

(assert (=> start!74260 true))

(declare-fun array_inv!19182 (array!50622) Bool)

(assert (=> start!74260 (array_inv!19182 _keys!868)))

(declare-datatypes ((V!28051 0))(
  ( (V!28052 (val!8674 Int)) )
))
(declare-datatypes ((ValueCell!8187 0))(
  ( (ValueCellFull!8187 (v!11099 V!28051)) (EmptyCell!8187) )
))
(declare-datatypes ((array!50624 0))(
  ( (array!50625 (arr!24337 (Array (_ BitVec 32) ValueCell!8187)) (size!24778 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50624)

(declare-fun e!486257 () Bool)

(declare-fun array_inv!19183 (array!50624) Bool)

(assert (=> start!74260 (and (array_inv!19183 _values!688) e!486257)))

(declare-fun b!873114 () Bool)

(declare-fun e!486256 () Bool)

(declare-fun tp_is_empty!17253 () Bool)

(assert (=> b!873114 (= e!486256 tp_is_empty!17253)))

(declare-fun b!873115 () Bool)

(declare-fun res!593442 () Bool)

(assert (=> b!873115 (=> (not res!593442) (not e!486254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50622 (_ BitVec 32)) Bool)

(assert (=> b!873115 (= res!593442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27485 () Bool)

(declare-fun mapRes!27485 () Bool)

(declare-fun tp!52712 () Bool)

(declare-fun e!486255 () Bool)

(assert (=> mapNonEmpty!27485 (= mapRes!27485 (and tp!52712 e!486255))))

(declare-fun mapValue!27485 () ValueCell!8187)

(declare-fun mapRest!27485 () (Array (_ BitVec 32) ValueCell!8187))

(declare-fun mapKey!27485 () (_ BitVec 32))

(assert (=> mapNonEmpty!27485 (= (arr!24337 _values!688) (store mapRest!27485 mapKey!27485 mapValue!27485))))

(declare-fun mapIsEmpty!27485 () Bool)

(assert (=> mapIsEmpty!27485 mapRes!27485))

(declare-fun b!873116 () Bool)

(declare-fun res!593445 () Bool)

(assert (=> b!873116 (=> (not res!593445) (not e!486254))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!873116 (= res!593445 (and (= (size!24778 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24777 _keys!868) (size!24778 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873117 () Bool)

(assert (=> b!873117 (= e!486255 tp_is_empty!17253)))

(declare-fun b!873118 () Bool)

(assert (=> b!873118 (= e!486257 (and e!486256 mapRes!27485))))

(declare-fun condMapEmpty!27485 () Bool)

(declare-fun mapDefault!27485 () ValueCell!8187)

(assert (=> b!873118 (= condMapEmpty!27485 (= (arr!24337 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8187)) mapDefault!27485)))))

(declare-fun b!873119 () Bool)

(assert (=> b!873119 (= e!486254 false)))

(declare-fun lt!395697 () Bool)

(declare-datatypes ((List!17346 0))(
  ( (Nil!17343) (Cons!17342 (h!18473 (_ BitVec 64)) (t!24393 List!17346)) )
))
(declare-fun arrayNoDuplicates!0 (array!50622 (_ BitVec 32) List!17346) Bool)

(assert (=> b!873119 (= lt!395697 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17343))))

(assert (= (and start!74260 res!593444) b!873113))

(assert (= (and b!873113 res!593443) b!873116))

(assert (= (and b!873116 res!593445) b!873115))

(assert (= (and b!873115 res!593442) b!873119))

(assert (= (and b!873118 condMapEmpty!27485) mapIsEmpty!27485))

(assert (= (and b!873118 (not condMapEmpty!27485)) mapNonEmpty!27485))

(get-info :version)

(assert (= (and mapNonEmpty!27485 ((_ is ValueCellFull!8187) mapValue!27485)) b!873117))

(assert (= (and b!873118 ((_ is ValueCellFull!8187) mapDefault!27485)) b!873114))

(assert (= start!74260 b!873118))

(declare-fun m!813795 () Bool)

(assert (=> start!74260 m!813795))

(declare-fun m!813797 () Bool)

(assert (=> start!74260 m!813797))

(declare-fun m!813799 () Bool)

(assert (=> b!873113 m!813799))

(declare-fun m!813801 () Bool)

(assert (=> b!873115 m!813801))

(declare-fun m!813803 () Bool)

(assert (=> b!873119 m!813803))

(declare-fun m!813805 () Bool)

(assert (=> mapNonEmpty!27485 m!813805))

(check-sat (not b!873115) (not mapNonEmpty!27485) tp_is_empty!17253 (not start!74260) (not b!873113) (not b!873119))
(check-sat)

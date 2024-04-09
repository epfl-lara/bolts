; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74104 () Bool)

(assert start!74104)

(declare-fun b!871316 () Bool)

(declare-fun res!592381 () Bool)

(declare-fun e!485159 () Bool)

(assert (=> b!871316 (=> (not res!592381) (not e!485159))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50382 0))(
  ( (array!50383 (arr!24218 (Array (_ BitVec 32) (_ BitVec 64))) (size!24659 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50382)

(declare-datatypes ((V!27883 0))(
  ( (V!27884 (val!8611 Int)) )
))
(declare-datatypes ((ValueCell!8124 0))(
  ( (ValueCellFull!8124 (v!11032 V!27883)) (EmptyCell!8124) )
))
(declare-datatypes ((array!50384 0))(
  ( (array!50385 (arr!24219 (Array (_ BitVec 32) ValueCell!8124)) (size!24660 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50384)

(assert (=> b!871316 (= res!592381 (and (= (size!24660 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24659 _keys!868) (size!24660 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27290 () Bool)

(declare-fun mapRes!27290 () Bool)

(declare-fun tp!52472 () Bool)

(declare-fun e!485161 () Bool)

(assert (=> mapNonEmpty!27290 (= mapRes!27290 (and tp!52472 e!485161))))

(declare-fun mapRest!27290 () (Array (_ BitVec 32) ValueCell!8124))

(declare-fun mapKey!27290 () (_ BitVec 32))

(declare-fun mapValue!27290 () ValueCell!8124)

(assert (=> mapNonEmpty!27290 (= (arr!24219 _values!688) (store mapRest!27290 mapKey!27290 mapValue!27290))))

(declare-fun res!592382 () Bool)

(assert (=> start!74104 (=> (not res!592382) (not e!485159))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74104 (= res!592382 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24659 _keys!868))))))

(assert (=> start!74104 e!485159))

(assert (=> start!74104 true))

(declare-fun array_inv!19094 (array!50382) Bool)

(assert (=> start!74104 (array_inv!19094 _keys!868)))

(declare-fun e!485163 () Bool)

(declare-fun array_inv!19095 (array!50384) Bool)

(assert (=> start!74104 (and (array_inv!19095 _values!688) e!485163)))

(declare-fun mapIsEmpty!27290 () Bool)

(assert (=> mapIsEmpty!27290 mapRes!27290))

(declare-fun b!871317 () Bool)

(declare-fun e!485162 () Bool)

(declare-fun tp_is_empty!17127 () Bool)

(assert (=> b!871317 (= e!485162 tp_is_empty!17127)))

(declare-fun b!871318 () Bool)

(declare-fun res!592380 () Bool)

(assert (=> b!871318 (=> (not res!592380) (not e!485159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871318 (= res!592380 (validMask!0 mask!1196))))

(declare-fun b!871319 () Bool)

(declare-fun res!592383 () Bool)

(assert (=> b!871319 (=> (not res!592383) (not e!485159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50382 (_ BitVec 32)) Bool)

(assert (=> b!871319 (= res!592383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871320 () Bool)

(assert (=> b!871320 (= e!485159 false)))

(declare-fun lt!395415 () Bool)

(declare-datatypes ((List!17295 0))(
  ( (Nil!17292) (Cons!17291 (h!18422 (_ BitVec 64)) (t!24340 List!17295)) )
))
(declare-fun arrayNoDuplicates!0 (array!50382 (_ BitVec 32) List!17295) Bool)

(assert (=> b!871320 (= lt!395415 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17292))))

(declare-fun b!871321 () Bool)

(assert (=> b!871321 (= e!485161 tp_is_empty!17127)))

(declare-fun b!871322 () Bool)

(assert (=> b!871322 (= e!485163 (and e!485162 mapRes!27290))))

(declare-fun condMapEmpty!27290 () Bool)

(declare-fun mapDefault!27290 () ValueCell!8124)

(assert (=> b!871322 (= condMapEmpty!27290 (= (arr!24219 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8124)) mapDefault!27290)))))

(assert (= (and start!74104 res!592382) b!871318))

(assert (= (and b!871318 res!592380) b!871316))

(assert (= (and b!871316 res!592381) b!871319))

(assert (= (and b!871319 res!592383) b!871320))

(assert (= (and b!871322 condMapEmpty!27290) mapIsEmpty!27290))

(assert (= (and b!871322 (not condMapEmpty!27290)) mapNonEmpty!27290))

(get-info :version)

(assert (= (and mapNonEmpty!27290 ((_ is ValueCellFull!8124) mapValue!27290)) b!871321))

(assert (= (and b!871322 ((_ is ValueCellFull!8124) mapDefault!27290)) b!871317))

(assert (= start!74104 b!871322))

(declare-fun m!812623 () Bool)

(assert (=> b!871318 m!812623))

(declare-fun m!812625 () Bool)

(assert (=> b!871320 m!812625))

(declare-fun m!812627 () Bool)

(assert (=> b!871319 m!812627))

(declare-fun m!812629 () Bool)

(assert (=> start!74104 m!812629))

(declare-fun m!812631 () Bool)

(assert (=> start!74104 m!812631))

(declare-fun m!812633 () Bool)

(assert (=> mapNonEmpty!27290 m!812633))

(check-sat (not b!871319) (not start!74104) (not b!871320) (not mapNonEmpty!27290) tp_is_empty!17127 (not b!871318))
(check-sat)

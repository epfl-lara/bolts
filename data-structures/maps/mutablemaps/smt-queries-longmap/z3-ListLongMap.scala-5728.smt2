; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74194 () Bool)

(assert start!74194)

(declare-fun b!872296 () Bool)

(declare-fun res!592974 () Bool)

(declare-fun e!485793 () Bool)

(assert (=> b!872296 (=> (not res!592974) (not e!485793))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50532 0))(
  ( (array!50533 (arr!24292 (Array (_ BitVec 32) (_ BitVec 64))) (size!24733 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50532)

(declare-datatypes ((V!27987 0))(
  ( (V!27988 (val!8650 Int)) )
))
(declare-datatypes ((ValueCell!8163 0))(
  ( (ValueCellFull!8163 (v!11071 V!27987)) (EmptyCell!8163) )
))
(declare-datatypes ((array!50534 0))(
  ( (array!50535 (arr!24293 (Array (_ BitVec 32) ValueCell!8163)) (size!24734 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50534)

(assert (=> b!872296 (= res!592974 (and (= (size!24734 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24733 _keys!868) (size!24734 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872297 () Bool)

(declare-fun e!485792 () Bool)

(declare-fun tp_is_empty!17205 () Bool)

(assert (=> b!872297 (= e!485792 tp_is_empty!17205)))

(declare-fun b!872298 () Bool)

(declare-fun e!485791 () Bool)

(assert (=> b!872298 (= e!485791 tp_is_empty!17205)))

(declare-fun b!872299 () Bool)

(assert (=> b!872299 (= e!485793 false)))

(declare-fun lt!395568 () Bool)

(declare-datatypes ((List!17327 0))(
  ( (Nil!17324) (Cons!17323 (h!18454 (_ BitVec 64)) (t!24372 List!17327)) )
))
(declare-fun arrayNoDuplicates!0 (array!50532 (_ BitVec 32) List!17327) Bool)

(assert (=> b!872299 (= lt!395568 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17324))))

(declare-fun b!872300 () Bool)

(declare-fun res!592971 () Bool)

(assert (=> b!872300 (=> (not res!592971) (not e!485793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872300 (= res!592971 (validMask!0 mask!1196))))

(declare-fun res!592972 () Bool)

(assert (=> start!74194 (=> (not res!592972) (not e!485793))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74194 (= res!592972 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24733 _keys!868))))))

(assert (=> start!74194 e!485793))

(assert (=> start!74194 true))

(declare-fun array_inv!19150 (array!50532) Bool)

(assert (=> start!74194 (array_inv!19150 _keys!868)))

(declare-fun e!485790 () Bool)

(declare-fun array_inv!19151 (array!50534) Bool)

(assert (=> start!74194 (and (array_inv!19151 _values!688) e!485790)))

(declare-fun b!872301 () Bool)

(declare-fun mapRes!27410 () Bool)

(assert (=> b!872301 (= e!485790 (and e!485792 mapRes!27410))))

(declare-fun condMapEmpty!27410 () Bool)

(declare-fun mapDefault!27410 () ValueCell!8163)

(assert (=> b!872301 (= condMapEmpty!27410 (= (arr!24293 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8163)) mapDefault!27410)))))

(declare-fun b!872302 () Bool)

(declare-fun res!592973 () Bool)

(assert (=> b!872302 (=> (not res!592973) (not e!485793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50532 (_ BitVec 32)) Bool)

(assert (=> b!872302 (= res!592973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27410 () Bool)

(assert (=> mapIsEmpty!27410 mapRes!27410))

(declare-fun mapNonEmpty!27410 () Bool)

(declare-fun tp!52610 () Bool)

(assert (=> mapNonEmpty!27410 (= mapRes!27410 (and tp!52610 e!485791))))

(declare-fun mapRest!27410 () (Array (_ BitVec 32) ValueCell!8163))

(declare-fun mapKey!27410 () (_ BitVec 32))

(declare-fun mapValue!27410 () ValueCell!8163)

(assert (=> mapNonEmpty!27410 (= (arr!24293 _values!688) (store mapRest!27410 mapKey!27410 mapValue!27410))))

(assert (= (and start!74194 res!592972) b!872300))

(assert (= (and b!872300 res!592971) b!872296))

(assert (= (and b!872296 res!592974) b!872302))

(assert (= (and b!872302 res!592973) b!872299))

(assert (= (and b!872301 condMapEmpty!27410) mapIsEmpty!27410))

(assert (= (and b!872301 (not condMapEmpty!27410)) mapNonEmpty!27410))

(get-info :version)

(assert (= (and mapNonEmpty!27410 ((_ is ValueCellFull!8163) mapValue!27410)) b!872298))

(assert (= (and b!872301 ((_ is ValueCellFull!8163) mapDefault!27410)) b!872297))

(assert (= start!74194 b!872301))

(declare-fun m!813217 () Bool)

(assert (=> b!872299 m!813217))

(declare-fun m!813219 () Bool)

(assert (=> mapNonEmpty!27410 m!813219))

(declare-fun m!813221 () Bool)

(assert (=> b!872300 m!813221))

(declare-fun m!813223 () Bool)

(assert (=> b!872302 m!813223))

(declare-fun m!813225 () Bool)

(assert (=> start!74194 m!813225))

(declare-fun m!813227 () Bool)

(assert (=> start!74194 m!813227))

(check-sat (not b!872302) (not start!74194) tp_is_empty!17205 (not mapNonEmpty!27410) (not b!872299) (not b!872300))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74212 () Bool)

(assert start!74212)

(declare-fun res!593079 () Bool)

(declare-fun e!485927 () Bool)

(assert (=> start!74212 (=> (not res!593079) (not e!485927))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50566 0))(
  ( (array!50567 (arr!24309 (Array (_ BitVec 32) (_ BitVec 64))) (size!24750 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50566)

(assert (=> start!74212 (= res!593079 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24750 _keys!868))))))

(assert (=> start!74212 e!485927))

(assert (=> start!74212 true))

(declare-fun array_inv!19162 (array!50566) Bool)

(assert (=> start!74212 (array_inv!19162 _keys!868)))

(declare-datatypes ((V!28011 0))(
  ( (V!28012 (val!8659 Int)) )
))
(declare-datatypes ((ValueCell!8172 0))(
  ( (ValueCellFull!8172 (v!11080 V!28011)) (EmptyCell!8172) )
))
(declare-datatypes ((array!50568 0))(
  ( (array!50569 (arr!24310 (Array (_ BitVec 32) ValueCell!8172)) (size!24751 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50568)

(declare-fun e!485928 () Bool)

(declare-fun array_inv!19163 (array!50568) Bool)

(assert (=> start!74212 (and (array_inv!19163 _values!688) e!485928)))

(declare-fun b!872485 () Bool)

(declare-fun res!593082 () Bool)

(assert (=> b!872485 (=> (not res!593082) (not e!485927))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50566 (_ BitVec 32)) Bool)

(assert (=> b!872485 (= res!593082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872486 () Bool)

(assert (=> b!872486 (= e!485927 false)))

(declare-fun lt!395595 () Bool)

(declare-datatypes ((List!17332 0))(
  ( (Nil!17329) (Cons!17328 (h!18459 (_ BitVec 64)) (t!24377 List!17332)) )
))
(declare-fun arrayNoDuplicates!0 (array!50566 (_ BitVec 32) List!17332) Bool)

(assert (=> b!872486 (= lt!395595 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17329))))

(declare-fun b!872487 () Bool)

(declare-fun e!485925 () Bool)

(declare-fun tp_is_empty!17223 () Bool)

(assert (=> b!872487 (= e!485925 tp_is_empty!17223)))

(declare-fun b!872488 () Bool)

(declare-fun res!593081 () Bool)

(assert (=> b!872488 (=> (not res!593081) (not e!485927))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!872488 (= res!593081 (and (= (size!24751 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24750 _keys!868) (size!24751 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872489 () Bool)

(declare-fun e!485926 () Bool)

(declare-fun mapRes!27437 () Bool)

(assert (=> b!872489 (= e!485928 (and e!485926 mapRes!27437))))

(declare-fun condMapEmpty!27437 () Bool)

(declare-fun mapDefault!27437 () ValueCell!8172)

(assert (=> b!872489 (= condMapEmpty!27437 (= (arr!24310 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8172)) mapDefault!27437)))))

(declare-fun b!872490 () Bool)

(declare-fun res!593080 () Bool)

(assert (=> b!872490 (=> (not res!593080) (not e!485927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872490 (= res!593080 (validMask!0 mask!1196))))

(declare-fun b!872491 () Bool)

(assert (=> b!872491 (= e!485926 tp_is_empty!17223)))

(declare-fun mapNonEmpty!27437 () Bool)

(declare-fun tp!52637 () Bool)

(assert (=> mapNonEmpty!27437 (= mapRes!27437 (and tp!52637 e!485925))))

(declare-fun mapKey!27437 () (_ BitVec 32))

(declare-fun mapValue!27437 () ValueCell!8172)

(declare-fun mapRest!27437 () (Array (_ BitVec 32) ValueCell!8172))

(assert (=> mapNonEmpty!27437 (= (arr!24310 _values!688) (store mapRest!27437 mapKey!27437 mapValue!27437))))

(declare-fun mapIsEmpty!27437 () Bool)

(assert (=> mapIsEmpty!27437 mapRes!27437))

(assert (= (and start!74212 res!593079) b!872490))

(assert (= (and b!872490 res!593080) b!872488))

(assert (= (and b!872488 res!593081) b!872485))

(assert (= (and b!872485 res!593082) b!872486))

(assert (= (and b!872489 condMapEmpty!27437) mapIsEmpty!27437))

(assert (= (and b!872489 (not condMapEmpty!27437)) mapNonEmpty!27437))

(get-info :version)

(assert (= (and mapNonEmpty!27437 ((_ is ValueCellFull!8172) mapValue!27437)) b!872487))

(assert (= (and b!872489 ((_ is ValueCellFull!8172) mapDefault!27437)) b!872491))

(assert (= start!74212 b!872489))

(declare-fun m!813325 () Bool)

(assert (=> b!872485 m!813325))

(declare-fun m!813327 () Bool)

(assert (=> start!74212 m!813327))

(declare-fun m!813329 () Bool)

(assert (=> start!74212 m!813329))

(declare-fun m!813331 () Bool)

(assert (=> mapNonEmpty!27437 m!813331))

(declare-fun m!813333 () Bool)

(assert (=> b!872486 m!813333))

(declare-fun m!813335 () Bool)

(assert (=> b!872490 m!813335))

(check-sat (not b!872490) (not start!74212) (not b!872486) (not b!872485) tp_is_empty!17223 (not mapNonEmpty!27437))
(check-sat)

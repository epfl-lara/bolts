; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74164 () Bool)

(assert start!74164)

(declare-fun b!871981 () Bool)

(declare-fun e!485565 () Bool)

(assert (=> b!871981 (= e!485565 false)))

(declare-fun lt!395523 () Bool)

(declare-datatypes ((array!50480 0))(
  ( (array!50481 (arr!24266 (Array (_ BitVec 32) (_ BitVec 64))) (size!24707 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50480)

(declare-datatypes ((List!17317 0))(
  ( (Nil!17314) (Cons!17313 (h!18444 (_ BitVec 64)) (t!24362 List!17317)) )
))
(declare-fun arrayNoDuplicates!0 (array!50480 (_ BitVec 32) List!17317) Bool)

(assert (=> b!871981 (= lt!395523 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17314))))

(declare-fun mapNonEmpty!27365 () Bool)

(declare-fun mapRes!27365 () Bool)

(declare-fun tp!52565 () Bool)

(declare-fun e!485566 () Bool)

(assert (=> mapNonEmpty!27365 (= mapRes!27365 (and tp!52565 e!485566))))

(declare-datatypes ((V!27947 0))(
  ( (V!27948 (val!8635 Int)) )
))
(declare-datatypes ((ValueCell!8148 0))(
  ( (ValueCellFull!8148 (v!11056 V!27947)) (EmptyCell!8148) )
))
(declare-fun mapValue!27365 () ValueCell!8148)

(declare-fun mapRest!27365 () (Array (_ BitVec 32) ValueCell!8148))

(declare-fun mapKey!27365 () (_ BitVec 32))

(declare-datatypes ((array!50482 0))(
  ( (array!50483 (arr!24267 (Array (_ BitVec 32) ValueCell!8148)) (size!24708 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50482)

(assert (=> mapNonEmpty!27365 (= (arr!24267 _values!688) (store mapRest!27365 mapKey!27365 mapValue!27365))))

(declare-fun b!871982 () Bool)

(declare-fun res!592794 () Bool)

(assert (=> b!871982 (=> (not res!592794) (not e!485565))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871982 (= res!592794 (validMask!0 mask!1196))))

(declare-fun b!871983 () Bool)

(declare-fun tp_is_empty!17175 () Bool)

(assert (=> b!871983 (= e!485566 tp_is_empty!17175)))

(declare-fun b!871984 () Bool)

(declare-fun e!485568 () Bool)

(assert (=> b!871984 (= e!485568 tp_is_empty!17175)))

(declare-fun res!592792 () Bool)

(assert (=> start!74164 (=> (not res!592792) (not e!485565))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74164 (= res!592792 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24707 _keys!868))))))

(assert (=> start!74164 e!485565))

(assert (=> start!74164 true))

(declare-fun array_inv!19132 (array!50480) Bool)

(assert (=> start!74164 (array_inv!19132 _keys!868)))

(declare-fun e!485567 () Bool)

(declare-fun array_inv!19133 (array!50482) Bool)

(assert (=> start!74164 (and (array_inv!19133 _values!688) e!485567)))

(declare-fun mapIsEmpty!27365 () Bool)

(assert (=> mapIsEmpty!27365 mapRes!27365))

(declare-fun b!871985 () Bool)

(assert (=> b!871985 (= e!485567 (and e!485568 mapRes!27365))))

(declare-fun condMapEmpty!27365 () Bool)

(declare-fun mapDefault!27365 () ValueCell!8148)

(assert (=> b!871985 (= condMapEmpty!27365 (= (arr!24267 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8148)) mapDefault!27365)))))

(declare-fun b!871986 () Bool)

(declare-fun res!592793 () Bool)

(assert (=> b!871986 (=> (not res!592793) (not e!485565))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!871986 (= res!592793 (and (= (size!24708 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24707 _keys!868) (size!24708 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871987 () Bool)

(declare-fun res!592791 () Bool)

(assert (=> b!871987 (=> (not res!592791) (not e!485565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50480 (_ BitVec 32)) Bool)

(assert (=> b!871987 (= res!592791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74164 res!592792) b!871982))

(assert (= (and b!871982 res!592794) b!871986))

(assert (= (and b!871986 res!592793) b!871987))

(assert (= (and b!871987 res!592791) b!871981))

(assert (= (and b!871985 condMapEmpty!27365) mapIsEmpty!27365))

(assert (= (and b!871985 (not condMapEmpty!27365)) mapNonEmpty!27365))

(get-info :version)

(assert (= (and mapNonEmpty!27365 ((_ is ValueCellFull!8148) mapValue!27365)) b!871983))

(assert (= (and b!871985 ((_ is ValueCellFull!8148) mapDefault!27365)) b!871984))

(assert (= start!74164 b!871985))

(declare-fun m!813037 () Bool)

(assert (=> b!871987 m!813037))

(declare-fun m!813039 () Bool)

(assert (=> mapNonEmpty!27365 m!813039))

(declare-fun m!813041 () Bool)

(assert (=> b!871981 m!813041))

(declare-fun m!813043 () Bool)

(assert (=> start!74164 m!813043))

(declare-fun m!813045 () Bool)

(assert (=> start!74164 m!813045))

(declare-fun m!813047 () Bool)

(assert (=> b!871982 m!813047))

(check-sat (not start!74164) tp_is_empty!17175 (not b!871982) (not b!871981) (not mapNonEmpty!27365) (not b!871987))
(check-sat)

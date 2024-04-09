; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74188 () Bool)

(assert start!74188)

(declare-fun mapNonEmpty!27401 () Bool)

(declare-fun mapRes!27401 () Bool)

(declare-fun tp!52601 () Bool)

(declare-fun e!485748 () Bool)

(assert (=> mapNonEmpty!27401 (= mapRes!27401 (and tp!52601 e!485748))))

(declare-datatypes ((V!27979 0))(
  ( (V!27980 (val!8647 Int)) )
))
(declare-datatypes ((ValueCell!8160 0))(
  ( (ValueCellFull!8160 (v!11068 V!27979)) (EmptyCell!8160) )
))
(declare-fun mapRest!27401 () (Array (_ BitVec 32) ValueCell!8160))

(declare-datatypes ((array!50522 0))(
  ( (array!50523 (arr!24287 (Array (_ BitVec 32) ValueCell!8160)) (size!24728 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50522)

(declare-fun mapValue!27401 () ValueCell!8160)

(declare-fun mapKey!27401 () (_ BitVec 32))

(assert (=> mapNonEmpty!27401 (= (arr!24287 _values!688) (store mapRest!27401 mapKey!27401 mapValue!27401))))

(declare-fun b!872233 () Bool)

(declare-fun tp_is_empty!17199 () Bool)

(assert (=> b!872233 (= e!485748 tp_is_empty!17199)))

(declare-fun b!872234 () Bool)

(declare-fun e!485747 () Bool)

(declare-fun e!485746 () Bool)

(assert (=> b!872234 (= e!485747 (and e!485746 mapRes!27401))))

(declare-fun condMapEmpty!27401 () Bool)

(declare-fun mapDefault!27401 () ValueCell!8160)

(assert (=> b!872234 (= condMapEmpty!27401 (= (arr!24287 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8160)) mapDefault!27401)))))

(declare-fun b!872235 () Bool)

(declare-fun e!485744 () Bool)

(assert (=> b!872235 (= e!485744 false)))

(declare-fun lt!395559 () Bool)

(declare-datatypes ((array!50524 0))(
  ( (array!50525 (arr!24288 (Array (_ BitVec 32) (_ BitVec 64))) (size!24729 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50524)

(declare-datatypes ((List!17325 0))(
  ( (Nil!17322) (Cons!17321 (h!18452 (_ BitVec 64)) (t!24370 List!17325)) )
))
(declare-fun arrayNoDuplicates!0 (array!50524 (_ BitVec 32) List!17325) Bool)

(assert (=> b!872235 (= lt!395559 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17322))))

(declare-fun res!592936 () Bool)

(assert (=> start!74188 (=> (not res!592936) (not e!485744))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74188 (= res!592936 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24729 _keys!868))))))

(assert (=> start!74188 e!485744))

(assert (=> start!74188 true))

(declare-fun array_inv!19146 (array!50524) Bool)

(assert (=> start!74188 (array_inv!19146 _keys!868)))

(declare-fun array_inv!19147 (array!50522) Bool)

(assert (=> start!74188 (and (array_inv!19147 _values!688) e!485747)))

(declare-fun b!872236 () Bool)

(assert (=> b!872236 (= e!485746 tp_is_empty!17199)))

(declare-fun mapIsEmpty!27401 () Bool)

(assert (=> mapIsEmpty!27401 mapRes!27401))

(declare-fun b!872237 () Bool)

(declare-fun res!592938 () Bool)

(assert (=> b!872237 (=> (not res!592938) (not e!485744))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!872237 (= res!592938 (and (= (size!24728 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24729 _keys!868) (size!24728 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872238 () Bool)

(declare-fun res!592935 () Bool)

(assert (=> b!872238 (=> (not res!592935) (not e!485744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872238 (= res!592935 (validMask!0 mask!1196))))

(declare-fun b!872239 () Bool)

(declare-fun res!592937 () Bool)

(assert (=> b!872239 (=> (not res!592937) (not e!485744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50524 (_ BitVec 32)) Bool)

(assert (=> b!872239 (= res!592937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74188 res!592936) b!872238))

(assert (= (and b!872238 res!592935) b!872237))

(assert (= (and b!872237 res!592938) b!872239))

(assert (= (and b!872239 res!592937) b!872235))

(assert (= (and b!872234 condMapEmpty!27401) mapIsEmpty!27401))

(assert (= (and b!872234 (not condMapEmpty!27401)) mapNonEmpty!27401))

(get-info :version)

(assert (= (and mapNonEmpty!27401 ((_ is ValueCellFull!8160) mapValue!27401)) b!872233))

(assert (= (and b!872234 ((_ is ValueCellFull!8160) mapDefault!27401)) b!872236))

(assert (= start!74188 b!872234))

(declare-fun m!813181 () Bool)

(assert (=> b!872239 m!813181))

(declare-fun m!813183 () Bool)

(assert (=> b!872235 m!813183))

(declare-fun m!813185 () Bool)

(assert (=> start!74188 m!813185))

(declare-fun m!813187 () Bool)

(assert (=> start!74188 m!813187))

(declare-fun m!813189 () Bool)

(assert (=> mapNonEmpty!27401 m!813189))

(declare-fun m!813191 () Bool)

(assert (=> b!872238 m!813191))

(check-sat tp_is_empty!17199 (not start!74188) (not mapNonEmpty!27401) (not b!872235) (not b!872239) (not b!872238))
(check-sat)

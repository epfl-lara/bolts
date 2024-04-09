; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74152 () Bool)

(assert start!74152)

(declare-fun b!871855 () Bool)

(declare-fun res!592721 () Bool)

(declare-fun e!485477 () Bool)

(assert (=> b!871855 (=> (not res!592721) (not e!485477))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871855 (= res!592721 (validMask!0 mask!1196))))

(declare-fun b!871856 () Bool)

(declare-fun e!485478 () Bool)

(declare-fun e!485476 () Bool)

(declare-fun mapRes!27347 () Bool)

(assert (=> b!871856 (= e!485478 (and e!485476 mapRes!27347))))

(declare-fun condMapEmpty!27347 () Bool)

(declare-datatypes ((V!27931 0))(
  ( (V!27932 (val!8629 Int)) )
))
(declare-datatypes ((ValueCell!8142 0))(
  ( (ValueCellFull!8142 (v!11050 V!27931)) (EmptyCell!8142) )
))
(declare-datatypes ((array!50456 0))(
  ( (array!50457 (arr!24254 (Array (_ BitVec 32) ValueCell!8142)) (size!24695 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50456)

(declare-fun mapDefault!27347 () ValueCell!8142)

(assert (=> b!871856 (= condMapEmpty!27347 (= (arr!24254 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8142)) mapDefault!27347)))))

(declare-fun mapNonEmpty!27347 () Bool)

(declare-fun tp!52547 () Bool)

(declare-fun e!485475 () Bool)

(assert (=> mapNonEmpty!27347 (= mapRes!27347 (and tp!52547 e!485475))))

(declare-fun mapValue!27347 () ValueCell!8142)

(declare-fun mapRest!27347 () (Array (_ BitVec 32) ValueCell!8142))

(declare-fun mapKey!27347 () (_ BitVec 32))

(assert (=> mapNonEmpty!27347 (= (arr!24254 _values!688) (store mapRest!27347 mapKey!27347 mapValue!27347))))

(declare-fun b!871857 () Bool)

(declare-fun res!592719 () Bool)

(assert (=> b!871857 (=> (not res!592719) (not e!485477))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50458 0))(
  ( (array!50459 (arr!24255 (Array (_ BitVec 32) (_ BitVec 64))) (size!24696 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50458)

(assert (=> b!871857 (= res!592719 (and (= (size!24695 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24696 _keys!868) (size!24695 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871858 () Bool)

(declare-fun res!592722 () Bool)

(assert (=> b!871858 (=> (not res!592722) (not e!485477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50458 (_ BitVec 32)) Bool)

(assert (=> b!871858 (= res!592722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27347 () Bool)

(assert (=> mapIsEmpty!27347 mapRes!27347))

(declare-fun res!592720 () Bool)

(assert (=> start!74152 (=> (not res!592720) (not e!485477))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74152 (= res!592720 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24696 _keys!868))))))

(assert (=> start!74152 e!485477))

(assert (=> start!74152 true))

(declare-fun array_inv!19120 (array!50458) Bool)

(assert (=> start!74152 (array_inv!19120 _keys!868)))

(declare-fun array_inv!19121 (array!50456) Bool)

(assert (=> start!74152 (and (array_inv!19121 _values!688) e!485478)))

(declare-fun b!871859 () Bool)

(declare-fun tp_is_empty!17163 () Bool)

(assert (=> b!871859 (= e!485476 tp_is_empty!17163)))

(declare-fun b!871860 () Bool)

(assert (=> b!871860 (= e!485475 tp_is_empty!17163)))

(declare-fun b!871861 () Bool)

(assert (=> b!871861 (= e!485477 false)))

(declare-fun lt!395505 () Bool)

(declare-datatypes ((List!17312 0))(
  ( (Nil!17309) (Cons!17308 (h!18439 (_ BitVec 64)) (t!24357 List!17312)) )
))
(declare-fun arrayNoDuplicates!0 (array!50458 (_ BitVec 32) List!17312) Bool)

(assert (=> b!871861 (= lt!395505 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17309))))

(assert (= (and start!74152 res!592720) b!871855))

(assert (= (and b!871855 res!592721) b!871857))

(assert (= (and b!871857 res!592719) b!871858))

(assert (= (and b!871858 res!592722) b!871861))

(assert (= (and b!871856 condMapEmpty!27347) mapIsEmpty!27347))

(assert (= (and b!871856 (not condMapEmpty!27347)) mapNonEmpty!27347))

(get-info :version)

(assert (= (and mapNonEmpty!27347 ((_ is ValueCellFull!8142) mapValue!27347)) b!871860))

(assert (= (and b!871856 ((_ is ValueCellFull!8142) mapDefault!27347)) b!871859))

(assert (= start!74152 b!871856))

(declare-fun m!812965 () Bool)

(assert (=> b!871858 m!812965))

(declare-fun m!812967 () Bool)

(assert (=> start!74152 m!812967))

(declare-fun m!812969 () Bool)

(assert (=> start!74152 m!812969))

(declare-fun m!812971 () Bool)

(assert (=> b!871861 m!812971))

(declare-fun m!812973 () Bool)

(assert (=> mapNonEmpty!27347 m!812973))

(declare-fun m!812975 () Bool)

(assert (=> b!871855 m!812975))

(check-sat (not b!871855) (not start!74152) (not b!871861) (not mapNonEmpty!27347) tp_is_empty!17163 (not b!871858))
(check-sat)

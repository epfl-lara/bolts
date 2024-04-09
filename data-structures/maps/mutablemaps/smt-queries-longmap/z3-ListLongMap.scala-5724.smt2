; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74170 () Bool)

(assert start!74170)

(declare-fun b!872044 () Bool)

(declare-fun res!592830 () Bool)

(declare-fun e!485613 () Bool)

(assert (=> b!872044 (=> (not res!592830) (not e!485613))))

(declare-datatypes ((array!50488 0))(
  ( (array!50489 (arr!24270 (Array (_ BitVec 32) (_ BitVec 64))) (size!24711 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50488)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50488 (_ BitVec 32)) Bool)

(assert (=> b!872044 (= res!592830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872045 () Bool)

(declare-fun e!485611 () Bool)

(declare-fun e!485612 () Bool)

(declare-fun mapRes!27374 () Bool)

(assert (=> b!872045 (= e!485611 (and e!485612 mapRes!27374))))

(declare-fun condMapEmpty!27374 () Bool)

(declare-datatypes ((V!27955 0))(
  ( (V!27956 (val!8638 Int)) )
))
(declare-datatypes ((ValueCell!8151 0))(
  ( (ValueCellFull!8151 (v!11059 V!27955)) (EmptyCell!8151) )
))
(declare-datatypes ((array!50490 0))(
  ( (array!50491 (arr!24271 (Array (_ BitVec 32) ValueCell!8151)) (size!24712 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50490)

(declare-fun mapDefault!27374 () ValueCell!8151)

(assert (=> b!872045 (= condMapEmpty!27374 (= (arr!24271 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8151)) mapDefault!27374)))))

(declare-fun b!872046 () Bool)

(declare-fun e!485609 () Bool)

(declare-fun tp_is_empty!17181 () Bool)

(assert (=> b!872046 (= e!485609 tp_is_empty!17181)))

(declare-fun b!872047 () Bool)

(declare-fun res!592828 () Bool)

(assert (=> b!872047 (=> (not res!592828) (not e!485613))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!872047 (= res!592828 (and (= (size!24712 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24711 _keys!868) (size!24712 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27374 () Bool)

(assert (=> mapIsEmpty!27374 mapRes!27374))

(declare-fun res!592827 () Bool)

(assert (=> start!74170 (=> (not res!592827) (not e!485613))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74170 (= res!592827 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24711 _keys!868))))))

(assert (=> start!74170 e!485613))

(assert (=> start!74170 true))

(declare-fun array_inv!19134 (array!50488) Bool)

(assert (=> start!74170 (array_inv!19134 _keys!868)))

(declare-fun array_inv!19135 (array!50490) Bool)

(assert (=> start!74170 (and (array_inv!19135 _values!688) e!485611)))

(declare-fun b!872048 () Bool)

(declare-fun res!592829 () Bool)

(assert (=> b!872048 (=> (not res!592829) (not e!485613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872048 (= res!592829 (validMask!0 mask!1196))))

(declare-fun b!872049 () Bool)

(assert (=> b!872049 (= e!485613 false)))

(declare-fun lt!395532 () Bool)

(declare-datatypes ((List!17318 0))(
  ( (Nil!17315) (Cons!17314 (h!18445 (_ BitVec 64)) (t!24363 List!17318)) )
))
(declare-fun arrayNoDuplicates!0 (array!50488 (_ BitVec 32) List!17318) Bool)

(assert (=> b!872049 (= lt!395532 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17315))))

(declare-fun b!872050 () Bool)

(assert (=> b!872050 (= e!485612 tp_is_empty!17181)))

(declare-fun mapNonEmpty!27374 () Bool)

(declare-fun tp!52574 () Bool)

(assert (=> mapNonEmpty!27374 (= mapRes!27374 (and tp!52574 e!485609))))

(declare-fun mapValue!27374 () ValueCell!8151)

(declare-fun mapRest!27374 () (Array (_ BitVec 32) ValueCell!8151))

(declare-fun mapKey!27374 () (_ BitVec 32))

(assert (=> mapNonEmpty!27374 (= (arr!24271 _values!688) (store mapRest!27374 mapKey!27374 mapValue!27374))))

(assert (= (and start!74170 res!592827) b!872048))

(assert (= (and b!872048 res!592829) b!872047))

(assert (= (and b!872047 res!592828) b!872044))

(assert (= (and b!872044 res!592830) b!872049))

(assert (= (and b!872045 condMapEmpty!27374) mapIsEmpty!27374))

(assert (= (and b!872045 (not condMapEmpty!27374)) mapNonEmpty!27374))

(get-info :version)

(assert (= (and mapNonEmpty!27374 ((_ is ValueCellFull!8151) mapValue!27374)) b!872046))

(assert (= (and b!872045 ((_ is ValueCellFull!8151) mapDefault!27374)) b!872050))

(assert (= start!74170 b!872045))

(declare-fun m!813073 () Bool)

(assert (=> start!74170 m!813073))

(declare-fun m!813075 () Bool)

(assert (=> start!74170 m!813075))

(declare-fun m!813077 () Bool)

(assert (=> mapNonEmpty!27374 m!813077))

(declare-fun m!813079 () Bool)

(assert (=> b!872048 m!813079))

(declare-fun m!813081 () Bool)

(assert (=> b!872044 m!813081))

(declare-fun m!813083 () Bool)

(assert (=> b!872049 m!813083))

(check-sat (not b!872049) (not b!872044) (not mapNonEmpty!27374) (not b!872048) tp_is_empty!17181 (not start!74170))
(check-sat)

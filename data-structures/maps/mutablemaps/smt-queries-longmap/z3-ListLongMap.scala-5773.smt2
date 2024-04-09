; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74570 () Bool)

(assert start!74570)

(declare-fun b_free!15231 () Bool)

(declare-fun b_next!15231 () Bool)

(assert (=> start!74570 (= b_free!15231 (not b_next!15231))))

(declare-fun tp!53376 () Bool)

(declare-fun b_and!25125 () Bool)

(assert (=> start!74570 (= tp!53376 b_and!25125)))

(declare-fun b!877997 () Bool)

(declare-fun res!596589 () Bool)

(declare-fun e!488716 () Bool)

(assert (=> b!877997 (=> (not res!596589) (not e!488716))))

(declare-datatypes ((array!51058 0))(
  ( (array!51059 (arr!24551 (Array (_ BitVec 32) (_ BitVec 64))) (size!24992 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51058)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51058 (_ BitVec 32)) Bool)

(assert (=> b!877997 (= res!596589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!877998 () Bool)

(declare-fun res!596584 () Bool)

(assert (=> b!877998 (=> (not res!596584) (not e!488716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877998 (= res!596584 (validMask!0 mask!1196))))

(declare-fun b!877999 () Bool)

(declare-fun res!596582 () Bool)

(assert (=> b!877999 (=> (not res!596582) (not e!488716))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877999 (= res!596582 (and (= (select (arr!24551 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!596586 () Bool)

(assert (=> start!74570 (=> (not res!596586) (not e!488716))))

(assert (=> start!74570 (= res!596586 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24992 _keys!868))))))

(assert (=> start!74570 e!488716))

(declare-fun tp_is_empty!17475 () Bool)

(assert (=> start!74570 tp_is_empty!17475))

(assert (=> start!74570 true))

(assert (=> start!74570 tp!53376))

(declare-fun array_inv!19332 (array!51058) Bool)

(assert (=> start!74570 (array_inv!19332 _keys!868)))

(declare-datatypes ((V!28347 0))(
  ( (V!28348 (val!8785 Int)) )
))
(declare-datatypes ((ValueCell!8298 0))(
  ( (ValueCellFull!8298 (v!11221 V!28347)) (EmptyCell!8298) )
))
(declare-datatypes ((array!51060 0))(
  ( (array!51061 (arr!24552 (Array (_ BitVec 32) ValueCell!8298)) (size!24993 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51060)

(declare-fun e!488717 () Bool)

(declare-fun array_inv!19333 (array!51060) Bool)

(assert (=> start!74570 (and (array_inv!19333 _values!688) e!488717)))

(declare-fun b!878000 () Bool)

(declare-fun res!596583 () Bool)

(assert (=> b!878000 (=> (not res!596583) (not e!488716))))

(declare-datatypes ((List!17516 0))(
  ( (Nil!17513) (Cons!17512 (h!18643 (_ BitVec 64)) (t!24613 List!17516)) )
))
(declare-fun arrayNoDuplicates!0 (array!51058 (_ BitVec 32) List!17516) Bool)

(assert (=> b!878000 (= res!596583 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17513))))

(declare-fun b!878001 () Bool)

(declare-fun e!488715 () Bool)

(declare-fun mapRes!27828 () Bool)

(assert (=> b!878001 (= e!488717 (and e!488715 mapRes!27828))))

(declare-fun condMapEmpty!27828 () Bool)

(declare-fun mapDefault!27828 () ValueCell!8298)

(assert (=> b!878001 (= condMapEmpty!27828 (= (arr!24552 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8298)) mapDefault!27828)))))

(declare-fun b!878002 () Bool)

(declare-fun res!596588 () Bool)

(assert (=> b!878002 (=> (not res!596588) (not e!488716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878002 (= res!596588 (validKeyInArray!0 k0!854))))

(declare-fun b!878003 () Bool)

(declare-fun res!596585 () Bool)

(assert (=> b!878003 (=> (not res!596585) (not e!488716))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!878003 (= res!596585 (and (= (size!24993 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24992 _keys!868) (size!24993 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878004 () Bool)

(declare-fun res!596587 () Bool)

(assert (=> b!878004 (=> (not res!596587) (not e!488716))))

(assert (=> b!878004 (= res!596587 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24992 _keys!868))))))

(declare-fun mapIsEmpty!27828 () Bool)

(assert (=> mapIsEmpty!27828 mapRes!27828))

(declare-fun b!878005 () Bool)

(declare-fun e!488718 () Bool)

(assert (=> b!878005 (= e!488718 tp_is_empty!17475)))

(declare-fun b!878006 () Bool)

(assert (=> b!878006 (= e!488716 false)))

(declare-fun v!557 () V!28347)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11632 0))(
  ( (tuple2!11633 (_1!5826 (_ BitVec 64)) (_2!5826 V!28347)) )
))
(declare-datatypes ((List!17517 0))(
  ( (Nil!17514) (Cons!17513 (h!18644 tuple2!11632) (t!24614 List!17517)) )
))
(declare-datatypes ((ListLongMap!10415 0))(
  ( (ListLongMap!10416 (toList!5223 List!17517)) )
))
(declare-fun lt!397148 () ListLongMap!10415)

(declare-fun minValue!654 () V!28347)

(declare-fun zeroValue!654 () V!28347)

(declare-fun getCurrentListMapNoExtraKeys!3185 (array!51058 array!51060 (_ BitVec 32) (_ BitVec 32) V!28347 V!28347 (_ BitVec 32) Int) ListLongMap!10415)

(assert (=> b!878006 (= lt!397148 (getCurrentListMapNoExtraKeys!3185 _keys!868 (array!51061 (store (arr!24552 _values!688) i!612 (ValueCellFull!8298 v!557)) (size!24993 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397147 () ListLongMap!10415)

(assert (=> b!878006 (= lt!397147 (getCurrentListMapNoExtraKeys!3185 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27828 () Bool)

(declare-fun tp!53375 () Bool)

(assert (=> mapNonEmpty!27828 (= mapRes!27828 (and tp!53375 e!488718))))

(declare-fun mapRest!27828 () (Array (_ BitVec 32) ValueCell!8298))

(declare-fun mapKey!27828 () (_ BitVec 32))

(declare-fun mapValue!27828 () ValueCell!8298)

(assert (=> mapNonEmpty!27828 (= (arr!24552 _values!688) (store mapRest!27828 mapKey!27828 mapValue!27828))))

(declare-fun b!878007 () Bool)

(assert (=> b!878007 (= e!488715 tp_is_empty!17475)))

(assert (= (and start!74570 res!596586) b!877998))

(assert (= (and b!877998 res!596584) b!878003))

(assert (= (and b!878003 res!596585) b!877997))

(assert (= (and b!877997 res!596589) b!878000))

(assert (= (and b!878000 res!596583) b!878004))

(assert (= (and b!878004 res!596587) b!878002))

(assert (= (and b!878002 res!596588) b!877999))

(assert (= (and b!877999 res!596582) b!878006))

(assert (= (and b!878001 condMapEmpty!27828) mapIsEmpty!27828))

(assert (= (and b!878001 (not condMapEmpty!27828)) mapNonEmpty!27828))

(get-info :version)

(assert (= (and mapNonEmpty!27828 ((_ is ValueCellFull!8298) mapValue!27828)) b!878005))

(assert (= (and b!878001 ((_ is ValueCellFull!8298) mapDefault!27828)) b!878007))

(assert (= start!74570 b!878001))

(declare-fun m!818071 () Bool)

(assert (=> b!878006 m!818071))

(declare-fun m!818073 () Bool)

(assert (=> b!878006 m!818073))

(declare-fun m!818075 () Bool)

(assert (=> b!878006 m!818075))

(declare-fun m!818077 () Bool)

(assert (=> mapNonEmpty!27828 m!818077))

(declare-fun m!818079 () Bool)

(assert (=> b!878002 m!818079))

(declare-fun m!818081 () Bool)

(assert (=> b!877997 m!818081))

(declare-fun m!818083 () Bool)

(assert (=> b!877999 m!818083))

(declare-fun m!818085 () Bool)

(assert (=> start!74570 m!818085))

(declare-fun m!818087 () Bool)

(assert (=> start!74570 m!818087))

(declare-fun m!818089 () Bool)

(assert (=> b!878000 m!818089))

(declare-fun m!818091 () Bool)

(assert (=> b!877998 m!818091))

(check-sat b_and!25125 (not start!74570) (not b!878002) (not b_next!15231) (not b!878000) tp_is_empty!17475 (not mapNonEmpty!27828) (not b!877998) (not b!878006) (not b!877997))
(check-sat b_and!25125 (not b_next!15231))

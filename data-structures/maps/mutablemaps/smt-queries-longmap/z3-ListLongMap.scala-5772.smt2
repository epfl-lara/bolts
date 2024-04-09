; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74564 () Bool)

(assert start!74564)

(declare-fun b_free!15225 () Bool)

(declare-fun b_next!15225 () Bool)

(assert (=> start!74564 (= b_free!15225 (not b_next!15225))))

(declare-fun tp!53357 () Bool)

(declare-fun b_and!25119 () Bool)

(assert (=> start!74564 (= tp!53357 b_and!25119)))

(declare-fun mapNonEmpty!27819 () Bool)

(declare-fun mapRes!27819 () Bool)

(declare-fun tp!53358 () Bool)

(declare-fun e!488671 () Bool)

(assert (=> mapNonEmpty!27819 (= mapRes!27819 (and tp!53358 e!488671))))

(declare-datatypes ((V!28339 0))(
  ( (V!28340 (val!8782 Int)) )
))
(declare-datatypes ((ValueCell!8295 0))(
  ( (ValueCellFull!8295 (v!11218 V!28339)) (EmptyCell!8295) )
))
(declare-fun mapValue!27819 () ValueCell!8295)

(declare-fun mapRest!27819 () (Array (_ BitVec 32) ValueCell!8295))

(declare-fun mapKey!27819 () (_ BitVec 32))

(declare-datatypes ((array!51048 0))(
  ( (array!51049 (arr!24546 (Array (_ BitVec 32) ValueCell!8295)) (size!24987 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51048)

(assert (=> mapNonEmpty!27819 (= (arr!24546 _values!688) (store mapRest!27819 mapKey!27819 mapValue!27819))))

(declare-fun b!877898 () Bool)

(declare-fun res!596511 () Bool)

(declare-fun e!488669 () Bool)

(assert (=> b!877898 (=> (not res!596511) (not e!488669))))

(declare-datatypes ((array!51050 0))(
  ( (array!51051 (arr!24547 (Array (_ BitVec 32) (_ BitVec 64))) (size!24988 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51050)

(declare-datatypes ((List!17513 0))(
  ( (Nil!17510) (Cons!17509 (h!18640 (_ BitVec 64)) (t!24610 List!17513)) )
))
(declare-fun arrayNoDuplicates!0 (array!51050 (_ BitVec 32) List!17513) Bool)

(assert (=> b!877898 (= res!596511 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17510))))

(declare-fun b!877899 () Bool)

(declare-fun res!596516 () Bool)

(assert (=> b!877899 (=> (not res!596516) (not e!488669))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!877899 (= res!596516 (and (= (select (arr!24547 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!877900 () Bool)

(declare-fun e!488673 () Bool)

(declare-fun e!488672 () Bool)

(assert (=> b!877900 (= e!488673 (and e!488672 mapRes!27819))))

(declare-fun condMapEmpty!27819 () Bool)

(declare-fun mapDefault!27819 () ValueCell!8295)

(assert (=> b!877900 (= condMapEmpty!27819 (= (arr!24546 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8295)) mapDefault!27819)))))

(declare-fun b!877901 () Bool)

(declare-fun tp_is_empty!17469 () Bool)

(assert (=> b!877901 (= e!488671 tp_is_empty!17469)))

(declare-fun b!877902 () Bool)

(declare-fun res!596517 () Bool)

(assert (=> b!877902 (=> (not res!596517) (not e!488669))))

(assert (=> b!877902 (= res!596517 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24988 _keys!868))))))

(declare-fun b!877903 () Bool)

(assert (=> b!877903 (= e!488669 false)))

(declare-fun v!557 () V!28339)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28339)

(declare-fun zeroValue!654 () V!28339)

(declare-datatypes ((tuple2!11630 0))(
  ( (tuple2!11631 (_1!5825 (_ BitVec 64)) (_2!5825 V!28339)) )
))
(declare-datatypes ((List!17514 0))(
  ( (Nil!17511) (Cons!17510 (h!18641 tuple2!11630) (t!24611 List!17514)) )
))
(declare-datatypes ((ListLongMap!10413 0))(
  ( (ListLongMap!10414 (toList!5222 List!17514)) )
))
(declare-fun lt!397129 () ListLongMap!10413)

(declare-fun getCurrentListMapNoExtraKeys!3184 (array!51050 array!51048 (_ BitVec 32) (_ BitVec 32) V!28339 V!28339 (_ BitVec 32) Int) ListLongMap!10413)

(assert (=> b!877903 (= lt!397129 (getCurrentListMapNoExtraKeys!3184 _keys!868 (array!51049 (store (arr!24546 _values!688) i!612 (ValueCellFull!8295 v!557)) (size!24987 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397130 () ListLongMap!10413)

(assert (=> b!877903 (= lt!397130 (getCurrentListMapNoExtraKeys!3184 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27819 () Bool)

(assert (=> mapIsEmpty!27819 mapRes!27819))

(declare-fun b!877904 () Bool)

(declare-fun res!596512 () Bool)

(assert (=> b!877904 (=> (not res!596512) (not e!488669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51050 (_ BitVec 32)) Bool)

(assert (=> b!877904 (= res!596512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!596513 () Bool)

(assert (=> start!74564 (=> (not res!596513) (not e!488669))))

(assert (=> start!74564 (= res!596513 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24988 _keys!868))))))

(assert (=> start!74564 e!488669))

(assert (=> start!74564 tp_is_empty!17469))

(assert (=> start!74564 true))

(assert (=> start!74564 tp!53357))

(declare-fun array_inv!19330 (array!51050) Bool)

(assert (=> start!74564 (array_inv!19330 _keys!868)))

(declare-fun array_inv!19331 (array!51048) Bool)

(assert (=> start!74564 (and (array_inv!19331 _values!688) e!488673)))

(declare-fun b!877905 () Bool)

(declare-fun res!596510 () Bool)

(assert (=> b!877905 (=> (not res!596510) (not e!488669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877905 (= res!596510 (validKeyInArray!0 k0!854))))

(declare-fun b!877906 () Bool)

(assert (=> b!877906 (= e!488672 tp_is_empty!17469)))

(declare-fun b!877907 () Bool)

(declare-fun res!596514 () Bool)

(assert (=> b!877907 (=> (not res!596514) (not e!488669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877907 (= res!596514 (validMask!0 mask!1196))))

(declare-fun b!877908 () Bool)

(declare-fun res!596515 () Bool)

(assert (=> b!877908 (=> (not res!596515) (not e!488669))))

(assert (=> b!877908 (= res!596515 (and (= (size!24987 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24988 _keys!868) (size!24987 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!74564 res!596513) b!877907))

(assert (= (and b!877907 res!596514) b!877908))

(assert (= (and b!877908 res!596515) b!877904))

(assert (= (and b!877904 res!596512) b!877898))

(assert (= (and b!877898 res!596511) b!877902))

(assert (= (and b!877902 res!596517) b!877905))

(assert (= (and b!877905 res!596510) b!877899))

(assert (= (and b!877899 res!596516) b!877903))

(assert (= (and b!877900 condMapEmpty!27819) mapIsEmpty!27819))

(assert (= (and b!877900 (not condMapEmpty!27819)) mapNonEmpty!27819))

(get-info :version)

(assert (= (and mapNonEmpty!27819 ((_ is ValueCellFull!8295) mapValue!27819)) b!877901))

(assert (= (and b!877900 ((_ is ValueCellFull!8295) mapDefault!27819)) b!877906))

(assert (= start!74564 b!877900))

(declare-fun m!818005 () Bool)

(assert (=> b!877905 m!818005))

(declare-fun m!818007 () Bool)

(assert (=> mapNonEmpty!27819 m!818007))

(declare-fun m!818009 () Bool)

(assert (=> b!877903 m!818009))

(declare-fun m!818011 () Bool)

(assert (=> b!877903 m!818011))

(declare-fun m!818013 () Bool)

(assert (=> b!877903 m!818013))

(declare-fun m!818015 () Bool)

(assert (=> b!877898 m!818015))

(declare-fun m!818017 () Bool)

(assert (=> b!877899 m!818017))

(declare-fun m!818019 () Bool)

(assert (=> start!74564 m!818019))

(declare-fun m!818021 () Bool)

(assert (=> start!74564 m!818021))

(declare-fun m!818023 () Bool)

(assert (=> b!877907 m!818023))

(declare-fun m!818025 () Bool)

(assert (=> b!877904 m!818025))

(check-sat (not b!877905) (not mapNonEmpty!27819) (not b!877907) tp_is_empty!17469 b_and!25119 (not b!877904) (not start!74564) (not b_next!15225) (not b!877898) (not b!877903))
(check-sat b_and!25119 (not b_next!15225))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74576 () Bool)

(assert start!74576)

(declare-fun b_free!15237 () Bool)

(declare-fun b_next!15237 () Bool)

(assert (=> start!74576 (= b_free!15237 (not b_next!15237))))

(declare-fun tp!53394 () Bool)

(declare-fun b_and!25131 () Bool)

(assert (=> start!74576 (= tp!53394 b_and!25131)))

(declare-fun b!878096 () Bool)

(declare-fun e!488763 () Bool)

(declare-fun tp_is_empty!17481 () Bool)

(assert (=> b!878096 (= e!488763 tp_is_empty!17481)))

(declare-fun b!878097 () Bool)

(declare-fun e!488760 () Bool)

(assert (=> b!878097 (= e!488760 tp_is_empty!17481)))

(declare-fun b!878098 () Bool)

(declare-fun res!596654 () Bool)

(declare-fun e!488762 () Bool)

(assert (=> b!878098 (=> (not res!596654) (not e!488762))))

(declare-datatypes ((array!51070 0))(
  ( (array!51071 (arr!24557 (Array (_ BitVec 32) (_ BitVec 64))) (size!24998 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51070)

(declare-datatypes ((List!17520 0))(
  ( (Nil!17517) (Cons!17516 (h!18647 (_ BitVec 64)) (t!24617 List!17520)) )
))
(declare-fun arrayNoDuplicates!0 (array!51070 (_ BitVec 32) List!17520) Bool)

(assert (=> b!878098 (= res!596654 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17517))))

(declare-fun b!878099 () Bool)

(declare-fun res!596658 () Bool)

(assert (=> b!878099 (=> (not res!596658) (not e!488762))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!878099 (= res!596658 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24998 _keys!868))))))

(declare-fun mapIsEmpty!27837 () Bool)

(declare-fun mapRes!27837 () Bool)

(assert (=> mapIsEmpty!27837 mapRes!27837))

(declare-fun b!878100 () Bool)

(declare-fun res!596660 () Bool)

(assert (=> b!878100 (=> (not res!596660) (not e!488762))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28355 0))(
  ( (V!28356 (val!8788 Int)) )
))
(declare-datatypes ((ValueCell!8301 0))(
  ( (ValueCellFull!8301 (v!11224 V!28355)) (EmptyCell!8301) )
))
(declare-datatypes ((array!51072 0))(
  ( (array!51073 (arr!24558 (Array (_ BitVec 32) ValueCell!8301)) (size!24999 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51072)

(assert (=> b!878100 (= res!596660 (and (= (size!24999 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24998 _keys!868) (size!24999 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27837 () Bool)

(declare-fun tp!53393 () Bool)

(assert (=> mapNonEmpty!27837 (= mapRes!27837 (and tp!53393 e!488763))))

(declare-fun mapRest!27837 () (Array (_ BitVec 32) ValueCell!8301))

(declare-fun mapValue!27837 () ValueCell!8301)

(declare-fun mapKey!27837 () (_ BitVec 32))

(assert (=> mapNonEmpty!27837 (= (arr!24558 _values!688) (store mapRest!27837 mapKey!27837 mapValue!27837))))

(declare-fun res!596659 () Bool)

(assert (=> start!74576 (=> (not res!596659) (not e!488762))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74576 (= res!596659 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24998 _keys!868))))))

(assert (=> start!74576 e!488762))

(assert (=> start!74576 tp_is_empty!17481))

(assert (=> start!74576 true))

(assert (=> start!74576 tp!53394))

(declare-fun array_inv!19334 (array!51070) Bool)

(assert (=> start!74576 (array_inv!19334 _keys!868)))

(declare-fun e!488759 () Bool)

(declare-fun array_inv!19335 (array!51072) Bool)

(assert (=> start!74576 (and (array_inv!19335 _values!688) e!488759)))

(declare-fun b!878101 () Bool)

(assert (=> b!878101 (= e!488759 (and e!488760 mapRes!27837))))

(declare-fun condMapEmpty!27837 () Bool)

(declare-fun mapDefault!27837 () ValueCell!8301)

(assert (=> b!878101 (= condMapEmpty!27837 (= (arr!24558 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8301)) mapDefault!27837)))))

(declare-fun b!878102 () Bool)

(declare-fun res!596661 () Bool)

(assert (=> b!878102 (=> (not res!596661) (not e!488762))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878102 (= res!596661 (validKeyInArray!0 k0!854))))

(declare-fun b!878103 () Bool)

(declare-fun res!596656 () Bool)

(assert (=> b!878103 (=> (not res!596656) (not e!488762))))

(assert (=> b!878103 (= res!596656 (and (= (select (arr!24557 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!878104 () Bool)

(assert (=> b!878104 (= e!488762 false)))

(declare-fun v!557 () V!28355)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11636 0))(
  ( (tuple2!11637 (_1!5828 (_ BitVec 64)) (_2!5828 V!28355)) )
))
(declare-datatypes ((List!17521 0))(
  ( (Nil!17518) (Cons!17517 (h!18648 tuple2!11636) (t!24618 List!17521)) )
))
(declare-datatypes ((ListLongMap!10419 0))(
  ( (ListLongMap!10420 (toList!5225 List!17521)) )
))
(declare-fun lt!397165 () ListLongMap!10419)

(declare-fun minValue!654 () V!28355)

(declare-fun zeroValue!654 () V!28355)

(declare-fun getCurrentListMapNoExtraKeys!3187 (array!51070 array!51072 (_ BitVec 32) (_ BitVec 32) V!28355 V!28355 (_ BitVec 32) Int) ListLongMap!10419)

(assert (=> b!878104 (= lt!397165 (getCurrentListMapNoExtraKeys!3187 _keys!868 (array!51073 (store (arr!24558 _values!688) i!612 (ValueCellFull!8301 v!557)) (size!24999 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397166 () ListLongMap!10419)

(assert (=> b!878104 (= lt!397166 (getCurrentListMapNoExtraKeys!3187 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878105 () Bool)

(declare-fun res!596655 () Bool)

(assert (=> b!878105 (=> (not res!596655) (not e!488762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51070 (_ BitVec 32)) Bool)

(assert (=> b!878105 (= res!596655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878106 () Bool)

(declare-fun res!596657 () Bool)

(assert (=> b!878106 (=> (not res!596657) (not e!488762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878106 (= res!596657 (validMask!0 mask!1196))))

(assert (= (and start!74576 res!596659) b!878106))

(assert (= (and b!878106 res!596657) b!878100))

(assert (= (and b!878100 res!596660) b!878105))

(assert (= (and b!878105 res!596655) b!878098))

(assert (= (and b!878098 res!596654) b!878099))

(assert (= (and b!878099 res!596658) b!878102))

(assert (= (and b!878102 res!596661) b!878103))

(assert (= (and b!878103 res!596656) b!878104))

(assert (= (and b!878101 condMapEmpty!27837) mapIsEmpty!27837))

(assert (= (and b!878101 (not condMapEmpty!27837)) mapNonEmpty!27837))

(get-info :version)

(assert (= (and mapNonEmpty!27837 ((_ is ValueCellFull!8301) mapValue!27837)) b!878096))

(assert (= (and b!878101 ((_ is ValueCellFull!8301) mapDefault!27837)) b!878097))

(assert (= start!74576 b!878101))

(declare-fun m!818137 () Bool)

(assert (=> b!878103 m!818137))

(declare-fun m!818139 () Bool)

(assert (=> b!878105 m!818139))

(declare-fun m!818141 () Bool)

(assert (=> mapNonEmpty!27837 m!818141))

(declare-fun m!818143 () Bool)

(assert (=> b!878104 m!818143))

(declare-fun m!818145 () Bool)

(assert (=> b!878104 m!818145))

(declare-fun m!818147 () Bool)

(assert (=> b!878104 m!818147))

(declare-fun m!818149 () Bool)

(assert (=> b!878102 m!818149))

(declare-fun m!818151 () Bool)

(assert (=> b!878106 m!818151))

(declare-fun m!818153 () Bool)

(assert (=> b!878098 m!818153))

(declare-fun m!818155 () Bool)

(assert (=> start!74576 m!818155))

(declare-fun m!818157 () Bool)

(assert (=> start!74576 m!818157))

(check-sat b_and!25131 (not b_next!15237) (not b!878102) (not b!878105) (not start!74576) (not mapNonEmpty!27837) tp_is_empty!17481 (not b!878106) (not b!878104) (not b!878098))
(check-sat b_and!25131 (not b_next!15237))

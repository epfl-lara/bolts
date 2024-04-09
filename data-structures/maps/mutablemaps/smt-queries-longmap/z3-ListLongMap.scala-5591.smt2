; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73360 () Bool)

(assert start!73360)

(declare-fun b_free!14247 () Bool)

(declare-fun b_next!14247 () Bool)

(assert (=> start!73360 (= b_free!14247 (not b_next!14247))))

(declare-fun tp!50246 () Bool)

(declare-fun b_and!23621 () Bool)

(assert (=> start!73360 (= tp!50246 b_and!23621)))

(declare-fun b!855451 () Bool)

(declare-fun e!476946 () Bool)

(declare-fun e!476942 () Bool)

(declare-fun mapRes!26174 () Bool)

(assert (=> b!855451 (= e!476946 (and e!476942 mapRes!26174))))

(declare-fun condMapEmpty!26174 () Bool)

(declare-datatypes ((V!26891 0))(
  ( (V!26892 (val!8239 Int)) )
))
(declare-datatypes ((ValueCell!7752 0))(
  ( (ValueCellFull!7752 (v!10660 V!26891)) (EmptyCell!7752) )
))
(declare-datatypes ((array!48942 0))(
  ( (array!48943 (arr!23498 (Array (_ BitVec 32) ValueCell!7752)) (size!23939 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48942)

(declare-fun mapDefault!26174 () ValueCell!7752)

(assert (=> b!855451 (= condMapEmpty!26174 (= (arr!23498 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7752)) mapDefault!26174)))))

(declare-fun b!855452 () Bool)

(declare-fun res!581091 () Bool)

(declare-fun e!476944 () Bool)

(assert (=> b!855452 (=> (not res!581091) (not e!476944))))

(declare-datatypes ((array!48944 0))(
  ( (array!48945 (arr!23499 (Array (_ BitVec 32) (_ BitVec 64))) (size!23940 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48944)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48944 (_ BitVec 32)) Bool)

(assert (=> b!855452 (= res!581091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855453 () Bool)

(declare-fun res!581093 () Bool)

(assert (=> b!855453 (=> (not res!581093) (not e!476944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855453 (= res!581093 (validMask!0 mask!1196))))

(declare-fun b!855454 () Bool)

(declare-fun res!581094 () Bool)

(assert (=> b!855454 (=> (not res!581094) (not e!476944))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!855454 (= res!581094 (and (= (select (arr!23499 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26174 () Bool)

(declare-fun tp!50245 () Bool)

(declare-fun e!476945 () Bool)

(assert (=> mapNonEmpty!26174 (= mapRes!26174 (and tp!50245 e!476945))))

(declare-fun mapRest!26174 () (Array (_ BitVec 32) ValueCell!7752))

(declare-fun mapKey!26174 () (_ BitVec 32))

(declare-fun mapValue!26174 () ValueCell!7752)

(assert (=> mapNonEmpty!26174 (= (arr!23498 _values!688) (store mapRest!26174 mapKey!26174 mapValue!26174))))

(declare-fun b!855455 () Bool)

(declare-fun tp_is_empty!16383 () Bool)

(assert (=> b!855455 (= e!476942 tp_is_empty!16383)))

(declare-fun b!855456 () Bool)

(assert (=> b!855456 (= e!476944 false)))

(declare-fun v!557 () V!26891)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26891)

(declare-fun zeroValue!654 () V!26891)

(declare-datatypes ((tuple2!10848 0))(
  ( (tuple2!10849 (_1!5434 (_ BitVec 64)) (_2!5434 V!26891)) )
))
(declare-datatypes ((List!16723 0))(
  ( (Nil!16720) (Cons!16719 (h!17850 tuple2!10848) (t!23372 List!16723)) )
))
(declare-datatypes ((ListLongMap!9631 0))(
  ( (ListLongMap!9632 (toList!4831 List!16723)) )
))
(declare-fun lt!385674 () ListLongMap!9631)

(declare-fun getCurrentListMapNoExtraKeys!2813 (array!48944 array!48942 (_ BitVec 32) (_ BitVec 32) V!26891 V!26891 (_ BitVec 32) Int) ListLongMap!9631)

(assert (=> b!855456 (= lt!385674 (getCurrentListMapNoExtraKeys!2813 _keys!868 (array!48943 (store (arr!23498 _values!688) i!612 (ValueCellFull!7752 v!557)) (size!23939 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385673 () ListLongMap!9631)

(assert (=> b!855456 (= lt!385673 (getCurrentListMapNoExtraKeys!2813 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855457 () Bool)

(declare-fun res!581089 () Bool)

(assert (=> b!855457 (=> (not res!581089) (not e!476944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855457 (= res!581089 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!26174 () Bool)

(assert (=> mapIsEmpty!26174 mapRes!26174))

(declare-fun b!855458 () Bool)

(declare-fun res!581090 () Bool)

(assert (=> b!855458 (=> (not res!581090) (not e!476944))))

(assert (=> b!855458 (= res!581090 (and (= (size!23939 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23940 _keys!868) (size!23939 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855459 () Bool)

(declare-fun res!581087 () Bool)

(assert (=> b!855459 (=> (not res!581087) (not e!476944))))

(declare-datatypes ((List!16724 0))(
  ( (Nil!16721) (Cons!16720 (h!17851 (_ BitVec 64)) (t!23373 List!16724)) )
))
(declare-fun arrayNoDuplicates!0 (array!48944 (_ BitVec 32) List!16724) Bool)

(assert (=> b!855459 (= res!581087 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16721))))

(declare-fun b!855461 () Bool)

(declare-fun res!581092 () Bool)

(assert (=> b!855461 (=> (not res!581092) (not e!476944))))

(assert (=> b!855461 (= res!581092 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23940 _keys!868))))))

(declare-fun b!855460 () Bool)

(assert (=> b!855460 (= e!476945 tp_is_empty!16383)))

(declare-fun res!581088 () Bool)

(assert (=> start!73360 (=> (not res!581088) (not e!476944))))

(assert (=> start!73360 (= res!581088 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23940 _keys!868))))))

(assert (=> start!73360 e!476944))

(assert (=> start!73360 tp_is_empty!16383))

(assert (=> start!73360 true))

(assert (=> start!73360 tp!50246))

(declare-fun array_inv!18604 (array!48944) Bool)

(assert (=> start!73360 (array_inv!18604 _keys!868)))

(declare-fun array_inv!18605 (array!48942) Bool)

(assert (=> start!73360 (and (array_inv!18605 _values!688) e!476946)))

(assert (= (and start!73360 res!581088) b!855453))

(assert (= (and b!855453 res!581093) b!855458))

(assert (= (and b!855458 res!581090) b!855452))

(assert (= (and b!855452 res!581091) b!855459))

(assert (= (and b!855459 res!581087) b!855461))

(assert (= (and b!855461 res!581092) b!855457))

(assert (= (and b!855457 res!581089) b!855454))

(assert (= (and b!855454 res!581094) b!855456))

(assert (= (and b!855451 condMapEmpty!26174) mapIsEmpty!26174))

(assert (= (and b!855451 (not condMapEmpty!26174)) mapNonEmpty!26174))

(get-info :version)

(assert (= (and mapNonEmpty!26174 ((_ is ValueCellFull!7752) mapValue!26174)) b!855460))

(assert (= (and b!855451 ((_ is ValueCellFull!7752) mapDefault!26174)) b!855455))

(assert (= start!73360 b!855451))

(declare-fun m!796703 () Bool)

(assert (=> start!73360 m!796703))

(declare-fun m!796705 () Bool)

(assert (=> start!73360 m!796705))

(declare-fun m!796707 () Bool)

(assert (=> b!855457 m!796707))

(declare-fun m!796709 () Bool)

(assert (=> b!855452 m!796709))

(declare-fun m!796711 () Bool)

(assert (=> b!855459 m!796711))

(declare-fun m!796713 () Bool)

(assert (=> b!855456 m!796713))

(declare-fun m!796715 () Bool)

(assert (=> b!855456 m!796715))

(declare-fun m!796717 () Bool)

(assert (=> b!855456 m!796717))

(declare-fun m!796719 () Bool)

(assert (=> mapNonEmpty!26174 m!796719))

(declare-fun m!796721 () Bool)

(assert (=> b!855453 m!796721))

(declare-fun m!796723 () Bool)

(assert (=> b!855454 m!796723))

(check-sat (not b!855456) (not b!855453) (not b!855459) b_and!23621 (not b_next!14247) (not mapNonEmpty!26174) (not b!855452) (not start!73360) (not b!855457) tp_is_empty!16383)
(check-sat b_and!23621 (not b_next!14247))

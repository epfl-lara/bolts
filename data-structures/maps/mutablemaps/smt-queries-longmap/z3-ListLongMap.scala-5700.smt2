; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74014 () Bool)

(assert start!74014)

(declare-fun b_free!14901 () Bool)

(declare-fun b_next!14901 () Bool)

(assert (=> start!74014 (= b_free!14901 (not b_next!14901))))

(declare-fun tp!52208 () Bool)

(declare-fun b_and!24671 () Bool)

(assert (=> start!74014 (= tp!52208 b_and!24671)))

(declare-fun b!869721 () Bool)

(declare-fun res!591198 () Bool)

(declare-fun e!484355 () Bool)

(assert (=> b!869721 (=> (not res!591198) (not e!484355))))

(declare-datatypes ((array!50206 0))(
  ( (array!50207 (arr!24130 (Array (_ BitVec 32) (_ BitVec 64))) (size!24571 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50206)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50206 (_ BitVec 32)) Bool)

(assert (=> b!869721 (= res!591198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869722 () Bool)

(declare-fun e!484354 () Bool)

(assert (=> b!869722 (= e!484355 e!484354)))

(declare-fun res!591197 () Bool)

(assert (=> b!869722 (=> (not res!591197) (not e!484354))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869722 (= res!591197 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27763 0))(
  ( (V!27764 (val!8566 Int)) )
))
(declare-datatypes ((ValueCell!8079 0))(
  ( (ValueCellFull!8079 (v!10987 V!27763)) (EmptyCell!8079) )
))
(declare-datatypes ((array!50208 0))(
  ( (array!50209 (arr!24131 (Array (_ BitVec 32) ValueCell!8079)) (size!24572 (_ BitVec 32))) )
))
(declare-fun lt!394892 () array!50208)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27763)

(declare-fun zeroValue!654 () V!27763)

(declare-datatypes ((tuple2!11378 0))(
  ( (tuple2!11379 (_1!5699 (_ BitVec 64)) (_2!5699 V!27763)) )
))
(declare-datatypes ((List!17234 0))(
  ( (Nil!17231) (Cons!17230 (h!18361 tuple2!11378) (t!24279 List!17234)) )
))
(declare-datatypes ((ListLongMap!10161 0))(
  ( (ListLongMap!10162 (toList!5096 List!17234)) )
))
(declare-fun lt!394890 () ListLongMap!10161)

(declare-fun getCurrentListMapNoExtraKeys!3060 (array!50206 array!50208 (_ BitVec 32) (_ BitVec 32) V!27763 V!27763 (_ BitVec 32) Int) ListLongMap!10161)

(assert (=> b!869722 (= lt!394890 (getCurrentListMapNoExtraKeys!3060 _keys!868 lt!394892 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27763)

(declare-fun _values!688 () array!50208)

(assert (=> b!869722 (= lt!394892 (array!50209 (store (arr!24131 _values!688) i!612 (ValueCellFull!8079 v!557)) (size!24572 _values!688)))))

(declare-fun lt!394891 () ListLongMap!10161)

(assert (=> b!869722 (= lt!394891 (getCurrentListMapNoExtraKeys!3060 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869723 () Bool)

(declare-fun e!484357 () Bool)

(declare-fun e!484356 () Bool)

(declare-fun mapRes!27155 () Bool)

(assert (=> b!869723 (= e!484357 (and e!484356 mapRes!27155))))

(declare-fun condMapEmpty!27155 () Bool)

(declare-fun mapDefault!27155 () ValueCell!8079)

(assert (=> b!869723 (= condMapEmpty!27155 (= (arr!24131 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8079)) mapDefault!27155)))))

(declare-fun b!869724 () Bool)

(declare-fun res!591191 () Bool)

(assert (=> b!869724 (=> (not res!591191) (not e!484355))))

(declare-datatypes ((List!17235 0))(
  ( (Nil!17232) (Cons!17231 (h!18362 (_ BitVec 64)) (t!24280 List!17235)) )
))
(declare-fun arrayNoDuplicates!0 (array!50206 (_ BitVec 32) List!17235) Bool)

(assert (=> b!869724 (= res!591191 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17232))))

(declare-fun mapIsEmpty!27155 () Bool)

(assert (=> mapIsEmpty!27155 mapRes!27155))

(declare-fun res!591195 () Bool)

(assert (=> start!74014 (=> (not res!591195) (not e!484355))))

(assert (=> start!74014 (= res!591195 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24571 _keys!868))))))

(assert (=> start!74014 e!484355))

(declare-fun tp_is_empty!17037 () Bool)

(assert (=> start!74014 tp_is_empty!17037))

(assert (=> start!74014 true))

(assert (=> start!74014 tp!52208))

(declare-fun array_inv!19030 (array!50206) Bool)

(assert (=> start!74014 (array_inv!19030 _keys!868)))

(declare-fun array_inv!19031 (array!50208) Bool)

(assert (=> start!74014 (and (array_inv!19031 _values!688) e!484357)))

(declare-fun b!869725 () Bool)

(declare-fun res!591193 () Bool)

(assert (=> b!869725 (=> (not res!591193) (not e!484355))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!869725 (= res!591193 (and (= (select (arr!24130 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!869726 () Bool)

(assert (=> b!869726 (= e!484356 tp_is_empty!17037)))

(declare-fun b!869727 () Bool)

(assert (=> b!869727 (= e!484354 (not true))))

(declare-fun +!2380 (ListLongMap!10161 tuple2!11378) ListLongMap!10161)

(assert (=> b!869727 (= (getCurrentListMapNoExtraKeys!3060 _keys!868 lt!394892 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2380 (getCurrentListMapNoExtraKeys!3060 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11379 k0!854 v!557)))))

(declare-datatypes ((Unit!29810 0))(
  ( (Unit!29811) )
))
(declare-fun lt!394893 () Unit!29810)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!611 (array!50206 array!50208 (_ BitVec 32) (_ BitVec 32) V!27763 V!27763 (_ BitVec 32) (_ BitVec 64) V!27763 (_ BitVec 32) Int) Unit!29810)

(assert (=> b!869727 (= lt!394893 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!611 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869728 () Bool)

(declare-fun res!591192 () Bool)

(assert (=> b!869728 (=> (not res!591192) (not e!484355))))

(assert (=> b!869728 (= res!591192 (and (= (size!24572 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24571 _keys!868) (size!24572 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869729 () Bool)

(declare-fun res!591194 () Bool)

(assert (=> b!869729 (=> (not res!591194) (not e!484355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869729 (= res!591194 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27155 () Bool)

(declare-fun tp!52207 () Bool)

(declare-fun e!484359 () Bool)

(assert (=> mapNonEmpty!27155 (= mapRes!27155 (and tp!52207 e!484359))))

(declare-fun mapKey!27155 () (_ BitVec 32))

(declare-fun mapValue!27155 () ValueCell!8079)

(declare-fun mapRest!27155 () (Array (_ BitVec 32) ValueCell!8079))

(assert (=> mapNonEmpty!27155 (= (arr!24131 _values!688) (store mapRest!27155 mapKey!27155 mapValue!27155))))

(declare-fun b!869730 () Bool)

(declare-fun res!591190 () Bool)

(assert (=> b!869730 (=> (not res!591190) (not e!484355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869730 (= res!591190 (validKeyInArray!0 k0!854))))

(declare-fun b!869731 () Bool)

(assert (=> b!869731 (= e!484359 tp_is_empty!17037)))

(declare-fun b!869732 () Bool)

(declare-fun res!591196 () Bool)

(assert (=> b!869732 (=> (not res!591196) (not e!484355))))

(assert (=> b!869732 (= res!591196 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24571 _keys!868))))))

(assert (= (and start!74014 res!591195) b!869729))

(assert (= (and b!869729 res!591194) b!869728))

(assert (= (and b!869728 res!591192) b!869721))

(assert (= (and b!869721 res!591198) b!869724))

(assert (= (and b!869724 res!591191) b!869732))

(assert (= (and b!869732 res!591196) b!869730))

(assert (= (and b!869730 res!591190) b!869725))

(assert (= (and b!869725 res!591193) b!869722))

(assert (= (and b!869722 res!591197) b!869727))

(assert (= (and b!869723 condMapEmpty!27155) mapIsEmpty!27155))

(assert (= (and b!869723 (not condMapEmpty!27155)) mapNonEmpty!27155))

(get-info :version)

(assert (= (and mapNonEmpty!27155 ((_ is ValueCellFull!8079) mapValue!27155)) b!869731))

(assert (= (and b!869723 ((_ is ValueCellFull!8079) mapDefault!27155)) b!869726))

(assert (= start!74014 b!869723))

(declare-fun m!811291 () Bool)

(assert (=> mapNonEmpty!27155 m!811291))

(declare-fun m!811293 () Bool)

(assert (=> b!869727 m!811293))

(declare-fun m!811295 () Bool)

(assert (=> b!869727 m!811295))

(assert (=> b!869727 m!811295))

(declare-fun m!811297 () Bool)

(assert (=> b!869727 m!811297))

(declare-fun m!811299 () Bool)

(assert (=> b!869727 m!811299))

(declare-fun m!811301 () Bool)

(assert (=> b!869724 m!811301))

(declare-fun m!811303 () Bool)

(assert (=> b!869730 m!811303))

(declare-fun m!811305 () Bool)

(assert (=> b!869721 m!811305))

(declare-fun m!811307 () Bool)

(assert (=> b!869722 m!811307))

(declare-fun m!811309 () Bool)

(assert (=> b!869722 m!811309))

(declare-fun m!811311 () Bool)

(assert (=> b!869722 m!811311))

(declare-fun m!811313 () Bool)

(assert (=> b!869729 m!811313))

(declare-fun m!811315 () Bool)

(assert (=> b!869725 m!811315))

(declare-fun m!811317 () Bool)

(assert (=> start!74014 m!811317))

(declare-fun m!811319 () Bool)

(assert (=> start!74014 m!811319))

(check-sat (not b!869724) (not mapNonEmpty!27155) tp_is_empty!17037 b_and!24671 (not b!869722) (not b!869721) (not b!869729) (not b!869727) (not b_next!14901) (not start!74014) (not b!869730))
(check-sat b_and!24671 (not b_next!14901))

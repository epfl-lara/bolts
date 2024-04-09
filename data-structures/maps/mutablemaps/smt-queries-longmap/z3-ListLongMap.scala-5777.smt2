; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74594 () Bool)

(assert start!74594)

(declare-fun b_free!15255 () Bool)

(declare-fun b_next!15255 () Bool)

(assert (=> start!74594 (= b_free!15255 (not b_next!15255))))

(declare-fun tp!53447 () Bool)

(declare-fun b_and!25149 () Bool)

(assert (=> start!74594 (= tp!53447 b_and!25149)))

(declare-fun b!878393 () Bool)

(declare-fun e!488897 () Bool)

(declare-fun tp_is_empty!17499 () Bool)

(assert (=> b!878393 (= e!488897 tp_is_empty!17499)))

(declare-fun b!878394 () Bool)

(declare-fun res!596872 () Bool)

(declare-fun e!488898 () Bool)

(assert (=> b!878394 (=> (not res!596872) (not e!488898))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878394 (= res!596872 (validKeyInArray!0 k0!854))))

(declare-fun b!878395 () Bool)

(declare-fun e!488894 () Bool)

(declare-fun mapRes!27864 () Bool)

(assert (=> b!878395 (= e!488894 (and e!488897 mapRes!27864))))

(declare-fun condMapEmpty!27864 () Bool)

(declare-datatypes ((V!28379 0))(
  ( (V!28380 (val!8797 Int)) )
))
(declare-datatypes ((ValueCell!8310 0))(
  ( (ValueCellFull!8310 (v!11233 V!28379)) (EmptyCell!8310) )
))
(declare-datatypes ((array!51104 0))(
  ( (array!51105 (arr!24574 (Array (_ BitVec 32) ValueCell!8310)) (size!25015 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51104)

(declare-fun mapDefault!27864 () ValueCell!8310)

(assert (=> b!878395 (= condMapEmpty!27864 (= (arr!24574 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8310)) mapDefault!27864)))))

(declare-fun b!878396 () Bool)

(declare-fun res!596874 () Bool)

(assert (=> b!878396 (=> (not res!596874) (not e!488898))))

(declare-datatypes ((array!51106 0))(
  ( (array!51107 (arr!24575 (Array (_ BitVec 32) (_ BitVec 64))) (size!25016 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51106)

(declare-datatypes ((List!17531 0))(
  ( (Nil!17528) (Cons!17527 (h!18658 (_ BitVec 64)) (t!24628 List!17531)) )
))
(declare-fun arrayNoDuplicates!0 (array!51106 (_ BitVec 32) List!17531) Bool)

(assert (=> b!878396 (= res!596874 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17528))))

(declare-fun mapIsEmpty!27864 () Bool)

(assert (=> mapIsEmpty!27864 mapRes!27864))

(declare-fun b!878397 () Bool)

(declare-fun res!596876 () Bool)

(assert (=> b!878397 (=> (not res!596876) (not e!488898))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!878397 (= res!596876 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25016 _keys!868))))))

(declare-fun mapNonEmpty!27864 () Bool)

(declare-fun tp!53448 () Bool)

(declare-fun e!488896 () Bool)

(assert (=> mapNonEmpty!27864 (= mapRes!27864 (and tp!53448 e!488896))))

(declare-fun mapKey!27864 () (_ BitVec 32))

(declare-fun mapValue!27864 () ValueCell!8310)

(declare-fun mapRest!27864 () (Array (_ BitVec 32) ValueCell!8310))

(assert (=> mapNonEmpty!27864 (= (arr!24574 _values!688) (store mapRest!27864 mapKey!27864 mapValue!27864))))

(declare-fun res!596877 () Bool)

(assert (=> start!74594 (=> (not res!596877) (not e!488898))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74594 (= res!596877 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25016 _keys!868))))))

(assert (=> start!74594 e!488898))

(assert (=> start!74594 tp_is_empty!17499))

(assert (=> start!74594 true))

(assert (=> start!74594 tp!53447))

(declare-fun array_inv!19344 (array!51106) Bool)

(assert (=> start!74594 (array_inv!19344 _keys!868)))

(declare-fun array_inv!19345 (array!51104) Bool)

(assert (=> start!74594 (and (array_inv!19345 _values!688) e!488894)))

(declare-fun b!878398 () Bool)

(declare-fun res!596871 () Bool)

(assert (=> b!878398 (=> (not res!596871) (not e!488898))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!878398 (= res!596871 (and (= (size!25015 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25016 _keys!868) (size!25015 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878399 () Bool)

(declare-fun res!596873 () Bool)

(assert (=> b!878399 (=> (not res!596873) (not e!488898))))

(assert (=> b!878399 (= res!596873 (and (= (select (arr!24575 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!878400 () Bool)

(declare-fun res!596870 () Bool)

(assert (=> b!878400 (=> (not res!596870) (not e!488898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878400 (= res!596870 (validMask!0 mask!1196))))

(declare-fun b!878401 () Bool)

(assert (=> b!878401 (= e!488898 false)))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28379)

(declare-fun zeroValue!654 () V!28379)

(declare-fun v!557 () V!28379)

(declare-datatypes ((tuple2!11650 0))(
  ( (tuple2!11651 (_1!5835 (_ BitVec 64)) (_2!5835 V!28379)) )
))
(declare-datatypes ((List!17532 0))(
  ( (Nil!17529) (Cons!17528 (h!18659 tuple2!11650) (t!24629 List!17532)) )
))
(declare-datatypes ((ListLongMap!10433 0))(
  ( (ListLongMap!10434 (toList!5232 List!17532)) )
))
(declare-fun lt!397220 () ListLongMap!10433)

(declare-fun getCurrentListMapNoExtraKeys!3194 (array!51106 array!51104 (_ BitVec 32) (_ BitVec 32) V!28379 V!28379 (_ BitVec 32) Int) ListLongMap!10433)

(assert (=> b!878401 (= lt!397220 (getCurrentListMapNoExtraKeys!3194 _keys!868 (array!51105 (store (arr!24574 _values!688) i!612 (ValueCellFull!8310 v!557)) (size!25015 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397219 () ListLongMap!10433)

(assert (=> b!878401 (= lt!397219 (getCurrentListMapNoExtraKeys!3194 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878402 () Bool)

(declare-fun res!596875 () Bool)

(assert (=> b!878402 (=> (not res!596875) (not e!488898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51106 (_ BitVec 32)) Bool)

(assert (=> b!878402 (= res!596875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878403 () Bool)

(assert (=> b!878403 (= e!488896 tp_is_empty!17499)))

(assert (= (and start!74594 res!596877) b!878400))

(assert (= (and b!878400 res!596870) b!878398))

(assert (= (and b!878398 res!596871) b!878402))

(assert (= (and b!878402 res!596875) b!878396))

(assert (= (and b!878396 res!596874) b!878397))

(assert (= (and b!878397 res!596876) b!878394))

(assert (= (and b!878394 res!596872) b!878399))

(assert (= (and b!878399 res!596873) b!878401))

(assert (= (and b!878395 condMapEmpty!27864) mapIsEmpty!27864))

(assert (= (and b!878395 (not condMapEmpty!27864)) mapNonEmpty!27864))

(get-info :version)

(assert (= (and mapNonEmpty!27864 ((_ is ValueCellFull!8310) mapValue!27864)) b!878403))

(assert (= (and b!878395 ((_ is ValueCellFull!8310) mapDefault!27864)) b!878393))

(assert (= start!74594 b!878395))

(declare-fun m!818335 () Bool)

(assert (=> b!878402 m!818335))

(declare-fun m!818337 () Bool)

(assert (=> b!878401 m!818337))

(declare-fun m!818339 () Bool)

(assert (=> b!878401 m!818339))

(declare-fun m!818341 () Bool)

(assert (=> b!878401 m!818341))

(declare-fun m!818343 () Bool)

(assert (=> b!878396 m!818343))

(declare-fun m!818345 () Bool)

(assert (=> mapNonEmpty!27864 m!818345))

(declare-fun m!818347 () Bool)

(assert (=> b!878394 m!818347))

(declare-fun m!818349 () Bool)

(assert (=> start!74594 m!818349))

(declare-fun m!818351 () Bool)

(assert (=> start!74594 m!818351))

(declare-fun m!818353 () Bool)

(assert (=> b!878399 m!818353))

(declare-fun m!818355 () Bool)

(assert (=> b!878400 m!818355))

(check-sat (not b!878400) (not mapNonEmpty!27864) tp_is_empty!17499 (not start!74594) (not b!878402) (not b!878396) b_and!25149 (not b!878394) (not b_next!15255) (not b!878401))
(check-sat b_and!25149 (not b_next!15255))

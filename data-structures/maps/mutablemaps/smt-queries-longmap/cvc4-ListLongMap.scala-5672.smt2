; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73848 () Bool)

(assert start!73848)

(declare-fun b_free!14735 () Bool)

(declare-fun b_next!14735 () Bool)

(assert (=> start!73848 (= b_free!14735 (not b_next!14735))))

(declare-fun tp!51710 () Bool)

(declare-fun b_and!24467 () Bool)

(assert (=> start!73848 (= tp!51710 b_and!24467)))

(declare-fun mapNonEmpty!26906 () Bool)

(declare-fun mapRes!26906 () Bool)

(declare-fun tp!51709 () Bool)

(declare-fun e!482701 () Bool)

(assert (=> mapNonEmpty!26906 (= mapRes!26906 (and tp!51709 e!482701))))

(declare-datatypes ((V!27541 0))(
  ( (V!27542 (val!8483 Int)) )
))
(declare-datatypes ((ValueCell!7996 0))(
  ( (ValueCellFull!7996 (v!10904 V!27541)) (EmptyCell!7996) )
))
(declare-fun mapRest!26906 () (Array (_ BitVec 32) ValueCell!7996))

(declare-fun mapValue!26906 () ValueCell!7996)

(declare-fun mapKey!26906 () (_ BitVec 32))

(declare-datatypes ((array!49882 0))(
  ( (array!49883 (arr!23968 (Array (_ BitVec 32) ValueCell!7996)) (size!24409 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49882)

(assert (=> mapNonEmpty!26906 (= (arr!23968 _values!688) (store mapRest!26906 mapKey!26906 mapValue!26906))))

(declare-fun b!866475 () Bool)

(declare-fun res!588839 () Bool)

(declare-fun e!482697 () Bool)

(assert (=> b!866475 (=> (not res!588839) (not e!482697))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866475 (= res!588839 (validMask!0 mask!1196))))

(declare-fun b!866476 () Bool)

(declare-fun res!588845 () Bool)

(assert (=> b!866476 (=> (not res!588845) (not e!482697))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866476 (= res!588845 (validKeyInArray!0 k!854))))

(declare-fun b!866477 () Bool)

(declare-fun e!482702 () Bool)

(declare-fun e!482698 () Bool)

(assert (=> b!866477 (= e!482702 e!482698)))

(declare-fun res!588843 () Bool)

(assert (=> b!866477 (=> res!588843 e!482698)))

(declare-datatypes ((array!49884 0))(
  ( (array!49885 (arr!23969 (Array (_ BitVec 32) (_ BitVec 64))) (size!24410 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49884)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!866477 (= res!588843 (= k!854 (select (arr!23969 _keys!868) from!1053)))))

(assert (=> b!866477 (not (= (select (arr!23969 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29680 0))(
  ( (Unit!29681) )
))
(declare-fun lt!393242 () Unit!29680)

(declare-fun e!482696 () Unit!29680)

(assert (=> b!866477 (= lt!393242 e!482696)))

(declare-fun c!92241 () Bool)

(assert (=> b!866477 (= c!92241 (= (select (arr!23969 _keys!868) from!1053) k!854))))

(declare-datatypes ((tuple2!11252 0))(
  ( (tuple2!11253 (_1!5636 (_ BitVec 64)) (_2!5636 V!27541)) )
))
(declare-datatypes ((List!17116 0))(
  ( (Nil!17113) (Cons!17112 (h!18243 tuple2!11252) (t!24125 List!17116)) )
))
(declare-datatypes ((ListLongMap!10035 0))(
  ( (ListLongMap!10036 (toList!5033 List!17116)) )
))
(declare-fun lt!393248 () ListLongMap!10035)

(declare-fun lt!393237 () ListLongMap!10035)

(assert (=> b!866477 (= lt!393248 lt!393237)))

(declare-fun lt!393234 () ListLongMap!10035)

(declare-fun lt!393243 () tuple2!11252)

(declare-fun +!2329 (ListLongMap!10035 tuple2!11252) ListLongMap!10035)

(assert (=> b!866477 (= lt!393237 (+!2329 lt!393234 lt!393243))))

(declare-fun lt!393247 () V!27541)

(assert (=> b!866477 (= lt!393243 (tuple2!11253 (select (arr!23969 _keys!868) from!1053) lt!393247))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12689 (ValueCell!7996 V!27541) V!27541)

(declare-fun dynLambda!1195 (Int (_ BitVec 64)) V!27541)

(assert (=> b!866477 (= lt!393247 (get!12689 (select (arr!23968 _values!688) from!1053) (dynLambda!1195 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866478 () Bool)

(declare-fun res!588841 () Bool)

(assert (=> b!866478 (=> (not res!588841) (not e!482697))))

(declare-datatypes ((List!17117 0))(
  ( (Nil!17114) (Cons!17113 (h!18244 (_ BitVec 64)) (t!24126 List!17117)) )
))
(declare-fun arrayNoDuplicates!0 (array!49884 (_ BitVec 32) List!17117) Bool)

(assert (=> b!866478 (= res!588841 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17114))))

(declare-fun b!866479 () Bool)

(declare-fun res!588848 () Bool)

(assert (=> b!866479 (=> (not res!588848) (not e!482697))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866479 (= res!588848 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24410 _keys!868))))))

(declare-fun res!588840 () Bool)

(assert (=> start!73848 (=> (not res!588840) (not e!482697))))

(assert (=> start!73848 (= res!588840 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24410 _keys!868))))))

(assert (=> start!73848 e!482697))

(declare-fun tp_is_empty!16871 () Bool)

(assert (=> start!73848 tp_is_empty!16871))

(assert (=> start!73848 true))

(assert (=> start!73848 tp!51710))

(declare-fun array_inv!18926 (array!49884) Bool)

(assert (=> start!73848 (array_inv!18926 _keys!868)))

(declare-fun e!482699 () Bool)

(declare-fun array_inv!18927 (array!49882) Bool)

(assert (=> start!73848 (and (array_inv!18927 _values!688) e!482699)))

(declare-fun b!866480 () Bool)

(declare-fun res!588844 () Bool)

(assert (=> b!866480 (=> (not res!588844) (not e!482697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49884 (_ BitVec 32)) Bool)

(assert (=> b!866480 (= res!588844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866481 () Bool)

(declare-fun e!482703 () Bool)

(assert (=> b!866481 (= e!482703 (not e!482702))))

(declare-fun res!588846 () Bool)

(assert (=> b!866481 (=> res!588846 e!482702)))

(assert (=> b!866481 (= res!588846 (not (validKeyInArray!0 (select (arr!23969 _keys!868) from!1053))))))

(declare-fun lt!393236 () ListLongMap!10035)

(assert (=> b!866481 (= lt!393236 lt!393234)))

(declare-fun lt!393238 () ListLongMap!10035)

(declare-fun lt!393239 () tuple2!11252)

(assert (=> b!866481 (= lt!393234 (+!2329 lt!393238 lt!393239))))

(declare-fun minValue!654 () V!27541)

(declare-fun zeroValue!654 () V!27541)

(declare-fun lt!393246 () array!49882)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3000 (array!49884 array!49882 (_ BitVec 32) (_ BitVec 32) V!27541 V!27541 (_ BitVec 32) Int) ListLongMap!10035)

(assert (=> b!866481 (= lt!393236 (getCurrentListMapNoExtraKeys!3000 _keys!868 lt!393246 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27541)

(assert (=> b!866481 (= lt!393239 (tuple2!11253 k!854 v!557))))

(assert (=> b!866481 (= lt!393238 (getCurrentListMapNoExtraKeys!3000 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!393240 () Unit!29680)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!564 (array!49884 array!49882 (_ BitVec 32) (_ BitVec 32) V!27541 V!27541 (_ BitVec 32) (_ BitVec 64) V!27541 (_ BitVec 32) Int) Unit!29680)

(assert (=> b!866481 (= lt!393240 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!564 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!866482 () Bool)

(declare-fun Unit!29682 () Unit!29680)

(assert (=> b!866482 (= e!482696 Unit!29682)))

(declare-fun lt!393235 () Unit!29680)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49884 (_ BitVec 32) (_ BitVec 32)) Unit!29680)

(assert (=> b!866482 (= lt!393235 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!866482 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17114)))

(declare-fun lt!393244 () Unit!29680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49884 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29680)

(assert (=> b!866482 (= lt!393244 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866482 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393249 () Unit!29680)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49884 (_ BitVec 64) (_ BitVec 32) List!17117) Unit!29680)

(assert (=> b!866482 (= lt!393249 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17114))))

(assert (=> b!866482 false))

(declare-fun b!866483 () Bool)

(assert (=> b!866483 (= e!482697 e!482703)))

(declare-fun res!588847 () Bool)

(assert (=> b!866483 (=> (not res!588847) (not e!482703))))

(assert (=> b!866483 (= res!588847 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!866483 (= lt!393248 (getCurrentListMapNoExtraKeys!3000 _keys!868 lt!393246 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!866483 (= lt!393246 (array!49883 (store (arr!23968 _values!688) i!612 (ValueCellFull!7996 v!557)) (size!24409 _values!688)))))

(declare-fun lt!393245 () ListLongMap!10035)

(assert (=> b!866483 (= lt!393245 (getCurrentListMapNoExtraKeys!3000 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866484 () Bool)

(declare-fun res!588849 () Bool)

(assert (=> b!866484 (=> (not res!588849) (not e!482697))))

(assert (=> b!866484 (= res!588849 (and (= (size!24409 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24410 _keys!868) (size!24409 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866485 () Bool)

(declare-fun e!482700 () Bool)

(assert (=> b!866485 (= e!482700 tp_is_empty!16871)))

(declare-fun b!866486 () Bool)

(declare-fun Unit!29683 () Unit!29680)

(assert (=> b!866486 (= e!482696 Unit!29683)))

(declare-fun b!866487 () Bool)

(declare-fun res!588842 () Bool)

(assert (=> b!866487 (=> (not res!588842) (not e!482697))))

(assert (=> b!866487 (= res!588842 (and (= (select (arr!23969 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26906 () Bool)

(assert (=> mapIsEmpty!26906 mapRes!26906))

(declare-fun b!866488 () Bool)

(assert (=> b!866488 (= e!482701 tp_is_empty!16871)))

(declare-fun b!866489 () Bool)

(assert (=> b!866489 (= e!482699 (and e!482700 mapRes!26906))))

(declare-fun condMapEmpty!26906 () Bool)

(declare-fun mapDefault!26906 () ValueCell!7996)


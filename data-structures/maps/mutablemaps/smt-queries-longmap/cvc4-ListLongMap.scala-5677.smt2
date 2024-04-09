; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73878 () Bool)

(assert start!73878)

(declare-fun b_free!14765 () Bool)

(declare-fun b_next!14765 () Bool)

(assert (=> start!73878 (= b_free!14765 (not b_next!14765))))

(declare-fun tp!51800 () Bool)

(declare-fun b_and!24527 () Bool)

(assert (=> start!73878 (= tp!51800 b_and!24527)))

(declare-fun b!867225 () Bool)

(declare-fun res!589335 () Bool)

(declare-fun e!483100 () Bool)

(assert (=> b!867225 (=> (not res!589335) (not e!483100))))

(declare-datatypes ((array!49942 0))(
  ( (array!49943 (arr!23998 (Array (_ BitVec 32) (_ BitVec 64))) (size!24439 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49942)

(declare-datatypes ((List!17140 0))(
  ( (Nil!17137) (Cons!17136 (h!18267 (_ BitVec 64)) (t!24179 List!17140)) )
))
(declare-fun arrayNoDuplicates!0 (array!49942 (_ BitVec 32) List!17140) Bool)

(assert (=> b!867225 (= res!589335 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17137))))

(declare-fun b!867226 () Bool)

(declare-fun e!483104 () Bool)

(assert (=> b!867226 (= e!483104 true)))

(declare-datatypes ((V!27581 0))(
  ( (V!27582 (val!8498 Int)) )
))
(declare-datatypes ((tuple2!11278 0))(
  ( (tuple2!11279 (_1!5649 (_ BitVec 64)) (_2!5649 V!27581)) )
))
(declare-fun lt!393957 () tuple2!11278)

(declare-fun lt!393963 () tuple2!11278)

(declare-datatypes ((List!17141 0))(
  ( (Nil!17138) (Cons!17137 (h!18268 tuple2!11278) (t!24180 List!17141)) )
))
(declare-datatypes ((ListLongMap!10061 0))(
  ( (ListLongMap!10062 (toList!5046 List!17141)) )
))
(declare-fun lt!393966 () ListLongMap!10061)

(declare-fun lt!393962 () ListLongMap!10061)

(declare-fun +!2340 (ListLongMap!10061 tuple2!11278) ListLongMap!10061)

(assert (=> b!867226 (= lt!393966 (+!2340 (+!2340 lt!393962 lt!393957) lt!393963))))

(declare-fun v!557 () V!27581)

(declare-datatypes ((Unit!29725 0))(
  ( (Unit!29726) )
))
(declare-fun lt!393955 () Unit!29725)

(declare-fun lt!393956 () V!27581)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!541 (ListLongMap!10061 (_ BitVec 64) V!27581 (_ BitVec 64) V!27581) Unit!29725)

(assert (=> b!867226 (= lt!393955 (addCommutativeForDiffKeys!541 lt!393962 k!854 v!557 (select (arr!23998 _keys!868) from!1053) lt!393956))))

(declare-fun b!867227 () Bool)

(declare-fun res!589336 () Bool)

(assert (=> b!867227 (=> (not res!589336) (not e!483100))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8011 0))(
  ( (ValueCellFull!8011 (v!10919 V!27581)) (EmptyCell!8011) )
))
(declare-datatypes ((array!49944 0))(
  ( (array!49945 (arr!23999 (Array (_ BitVec 32) ValueCell!8011)) (size!24440 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49944)

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!867227 (= res!589336 (and (= (size!24440 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24439 _keys!868) (size!24440 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26951 () Bool)

(declare-fun mapRes!26951 () Bool)

(assert (=> mapIsEmpty!26951 mapRes!26951))

(declare-fun b!867228 () Bool)

(declare-fun e!483107 () Bool)

(declare-fun tp_is_empty!16901 () Bool)

(assert (=> b!867228 (= e!483107 tp_is_empty!16901)))

(declare-fun mapNonEmpty!26951 () Bool)

(declare-fun tp!51799 () Bool)

(assert (=> mapNonEmpty!26951 (= mapRes!26951 (and tp!51799 e!483107))))

(declare-fun mapValue!26951 () ValueCell!8011)

(declare-fun mapKey!26951 () (_ BitVec 32))

(declare-fun mapRest!26951 () (Array (_ BitVec 32) ValueCell!8011))

(assert (=> mapNonEmpty!26951 (= (arr!23999 _values!688) (store mapRest!26951 mapKey!26951 mapValue!26951))))

(declare-fun b!867229 () Bool)

(declare-fun e!483103 () Bool)

(declare-fun e!483105 () Bool)

(assert (=> b!867229 (= e!483103 (not e!483105))))

(declare-fun res!589341 () Bool)

(assert (=> b!867229 (=> res!589341 e!483105)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867229 (= res!589341 (not (validKeyInArray!0 (select (arr!23998 _keys!868) from!1053))))))

(declare-fun lt!393960 () ListLongMap!10061)

(declare-fun lt!393964 () ListLongMap!10061)

(assert (=> b!867229 (= lt!393960 lt!393964)))

(assert (=> b!867229 (= lt!393964 (+!2340 lt!393962 lt!393963))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!393958 () array!49944)

(declare-fun minValue!654 () V!27581)

(declare-fun zeroValue!654 () V!27581)

(declare-fun getCurrentListMapNoExtraKeys!3011 (array!49942 array!49944 (_ BitVec 32) (_ BitVec 32) V!27581 V!27581 (_ BitVec 32) Int) ListLongMap!10061)

(assert (=> b!867229 (= lt!393960 (getCurrentListMapNoExtraKeys!3011 _keys!868 lt!393958 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!867229 (= lt!393963 (tuple2!11279 k!854 v!557))))

(assert (=> b!867229 (= lt!393962 (getCurrentListMapNoExtraKeys!3011 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!393954 () Unit!29725)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!572 (array!49942 array!49944 (_ BitVec 32) (_ BitVec 32) V!27581 V!27581 (_ BitVec 32) (_ BitVec 64) V!27581 (_ BitVec 32) Int) Unit!29725)

(assert (=> b!867229 (= lt!393954 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!572 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867230 () Bool)

(declare-fun res!589344 () Bool)

(assert (=> b!867230 (=> (not res!589344) (not e!483100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867230 (= res!589344 (validMask!0 mask!1196))))

(declare-fun b!867231 () Bool)

(declare-fun e!483106 () Bool)

(declare-fun e!483101 () Bool)

(assert (=> b!867231 (= e!483106 (and e!483101 mapRes!26951))))

(declare-fun condMapEmpty!26951 () Bool)

(declare-fun mapDefault!26951 () ValueCell!8011)


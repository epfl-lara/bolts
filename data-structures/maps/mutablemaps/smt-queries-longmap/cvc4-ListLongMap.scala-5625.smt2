; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73566 () Bool)

(assert start!73566)

(declare-fun b_free!14453 () Bool)

(declare-fun b_next!14453 () Bool)

(assert (=> start!73566 (= b_free!14453 (not b_next!14453))))

(declare-fun tp!50863 () Bool)

(declare-fun b_and!23903 () Bool)

(assert (=> start!73566 (= tp!50863 b_and!23903)))

(declare-fun b!859451 () Bool)

(declare-fun res!584087 () Bool)

(declare-fun e!478982 () Bool)

(assert (=> b!859451 (=> (not res!584087) (not e!478982))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49336 0))(
  ( (array!49337 (arr!23695 (Array (_ BitVec 32) (_ BitVec 64))) (size!24136 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49336)

(assert (=> b!859451 (= res!584087 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24136 _keys!868))))))

(declare-fun mapNonEmpty!26483 () Bool)

(declare-fun mapRes!26483 () Bool)

(declare-fun tp!50864 () Bool)

(declare-fun e!478986 () Bool)

(assert (=> mapNonEmpty!26483 (= mapRes!26483 (and tp!50864 e!478986))))

(declare-datatypes ((V!27165 0))(
  ( (V!27166 (val!8342 Int)) )
))
(declare-datatypes ((ValueCell!7855 0))(
  ( (ValueCellFull!7855 (v!10763 V!27165)) (EmptyCell!7855) )
))
(declare-fun mapValue!26483 () ValueCell!7855)

(declare-fun mapKey!26483 () (_ BitVec 32))

(declare-datatypes ((array!49338 0))(
  ( (array!49339 (arr!23696 (Array (_ BitVec 32) ValueCell!7855)) (size!24137 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49338)

(declare-fun mapRest!26483 () (Array (_ BitVec 32) ValueCell!7855))

(assert (=> mapNonEmpty!26483 (= (arr!23696 _values!688) (store mapRest!26483 mapKey!26483 mapValue!26483))))

(declare-fun b!859452 () Bool)

(declare-fun res!584091 () Bool)

(assert (=> b!859452 (=> (not res!584091) (not e!478982))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!859452 (= res!584091 (and (= (select (arr!23695 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!859453 () Bool)

(declare-fun res!584093 () Bool)

(assert (=> b!859453 (=> (not res!584093) (not e!478982))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49336 (_ BitVec 32)) Bool)

(assert (=> b!859453 (= res!584093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859454 () Bool)

(declare-fun res!584095 () Bool)

(assert (=> b!859454 (=> (not res!584095) (not e!478982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859454 (= res!584095 (validMask!0 mask!1196))))

(declare-fun b!859455 () Bool)

(declare-fun res!584085 () Bool)

(declare-fun e!478981 () Bool)

(assert (=> b!859455 (=> res!584085 e!478981)))

(declare-datatypes ((List!16879 0))(
  ( (Nil!16876) (Cons!16875 (h!18006 (_ BitVec 64)) (t!23606 List!16879)) )
))
(declare-fun noDuplicate!1304 (List!16879) Bool)

(assert (=> b!859455 (= res!584085 (not (noDuplicate!1304 Nil!16876)))))

(declare-fun mapIsEmpty!26483 () Bool)

(assert (=> mapIsEmpty!26483 mapRes!26483))

(declare-fun b!859456 () Bool)

(declare-fun res!584094 () Bool)

(assert (=> b!859456 (=> (not res!584094) (not e!478982))))

(declare-fun arrayNoDuplicates!0 (array!49336 (_ BitVec 32) List!16879) Bool)

(assert (=> b!859456 (= res!584094 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16876))))

(declare-fun b!859457 () Bool)

(assert (=> b!859457 (= e!478981 true)))

(declare-fun lt!387304 () Bool)

(declare-fun contains!4222 (List!16879 (_ BitVec 64)) Bool)

(assert (=> b!859457 (= lt!387304 (contains!4222 Nil!16876 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859458 () Bool)

(declare-fun e!478983 () Bool)

(declare-fun e!478984 () Bool)

(assert (=> b!859458 (= e!478983 (not e!478984))))

(declare-fun res!584097 () Bool)

(assert (=> b!859458 (=> res!584097 e!478984)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859458 (= res!584097 (not (validKeyInArray!0 (select (arr!23695 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11006 0))(
  ( (tuple2!11007 (_1!5513 (_ BitVec 64)) (_2!5513 V!27165)) )
))
(declare-datatypes ((List!16880 0))(
  ( (Nil!16877) (Cons!16876 (h!18007 tuple2!11006) (t!23607 List!16880)) )
))
(declare-datatypes ((ListLongMap!9789 0))(
  ( (ListLongMap!9790 (toList!4910 List!16880)) )
))
(declare-fun lt!387307 () ListLongMap!9789)

(declare-fun lt!387309 () ListLongMap!9789)

(assert (=> b!859458 (= lt!387307 lt!387309)))

(declare-fun lt!387301 () ListLongMap!9789)

(declare-fun v!557 () V!27165)

(declare-fun +!2213 (ListLongMap!9789 tuple2!11006) ListLongMap!9789)

(assert (=> b!859458 (= lt!387309 (+!2213 lt!387301 (tuple2!11007 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27165)

(declare-fun zeroValue!654 () V!27165)

(declare-fun lt!387302 () array!49338)

(declare-fun getCurrentListMapNoExtraKeys!2890 (array!49336 array!49338 (_ BitVec 32) (_ BitVec 32) V!27165 V!27165 (_ BitVec 32) Int) ListLongMap!9789)

(assert (=> b!859458 (= lt!387307 (getCurrentListMapNoExtraKeys!2890 _keys!868 lt!387302 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859458 (= lt!387301 (getCurrentListMapNoExtraKeys!2890 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29270 0))(
  ( (Unit!29271) )
))
(declare-fun lt!387306 () Unit!29270)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!470 (array!49336 array!49338 (_ BitVec 32) (_ BitVec 32) V!27165 V!27165 (_ BitVec 32) (_ BitVec 64) V!27165 (_ BitVec 32) Int) Unit!29270)

(assert (=> b!859458 (= lt!387306 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!470 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859459 () Bool)

(declare-fun e!478980 () Bool)

(assert (=> b!859459 (= e!478980 e!478981)))

(declare-fun res!584084 () Bool)

(assert (=> b!859459 (=> res!584084 e!478981)))

(assert (=> b!859459 (= res!584084 (or (bvsge (size!24136 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24136 _keys!868)) (bvsge from!1053 (size!24136 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859459 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!387300 () Unit!29270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49336 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29270)

(assert (=> b!859459 (= lt!387300 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!859459 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16876)))

(declare-fun lt!387308 () Unit!29270)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49336 (_ BitVec 32) (_ BitVec 32)) Unit!29270)

(assert (=> b!859459 (= lt!387308 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859460 () Bool)

(declare-fun e!478979 () Bool)

(declare-fun e!478985 () Bool)

(assert (=> b!859460 (= e!478979 (and e!478985 mapRes!26483))))

(declare-fun condMapEmpty!26483 () Bool)

(declare-fun mapDefault!26483 () ValueCell!7855)


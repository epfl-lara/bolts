; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73650 () Bool)

(assert start!73650)

(declare-fun b_free!14537 () Bool)

(declare-fun b_next!14537 () Bool)

(assert (=> start!73650 (= b_free!14537 (not b_next!14537))))

(declare-fun tp!51116 () Bool)

(declare-fun b_and!24071 () Bool)

(assert (=> start!73650 (= tp!51116 b_and!24071)))

(declare-fun b!861553 () Bool)

(declare-fun res!585608 () Bool)

(declare-fun e!480055 () Bool)

(assert (=> b!861553 (=> (not res!585608) (not e!480055))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861553 (= res!585608 (validKeyInArray!0 k!854))))

(declare-fun b!861554 () Bool)

(declare-fun e!480052 () Bool)

(assert (=> b!861554 (= e!480055 e!480052)))

(declare-fun res!585604 () Bool)

(assert (=> b!861554 (=> (not res!585604) (not e!480052))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!861554 (= res!585604 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27277 0))(
  ( (V!27278 (val!8384 Int)) )
))
(declare-datatypes ((ValueCell!7897 0))(
  ( (ValueCellFull!7897 (v!10805 V!27277)) (EmptyCell!7897) )
))
(declare-datatypes ((array!49492 0))(
  ( (array!49493 (arr!23773 (Array (_ BitVec 32) ValueCell!7897)) (size!24214 (_ BitVec 32))) )
))
(declare-fun lt!388629 () array!49492)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11076 0))(
  ( (tuple2!11077 (_1!5548 (_ BitVec 64)) (_2!5548 V!27277)) )
))
(declare-datatypes ((List!16946 0))(
  ( (Nil!16943) (Cons!16942 (h!18073 tuple2!11076) (t!23757 List!16946)) )
))
(declare-datatypes ((ListLongMap!9859 0))(
  ( (ListLongMap!9860 (toList!4945 List!16946)) )
))
(declare-fun lt!388623 () ListLongMap!9859)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49494 0))(
  ( (array!49495 (arr!23774 (Array (_ BitVec 32) (_ BitVec 64))) (size!24215 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49494)

(declare-fun minValue!654 () V!27277)

(declare-fun zeroValue!654 () V!27277)

(declare-fun getCurrentListMapNoExtraKeys!2924 (array!49494 array!49492 (_ BitVec 32) (_ BitVec 32) V!27277 V!27277 (_ BitVec 32) Int) ListLongMap!9859)

(assert (=> b!861554 (= lt!388623 (getCurrentListMapNoExtraKeys!2924 _keys!868 lt!388629 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27277)

(declare-fun _values!688 () array!49492)

(assert (=> b!861554 (= lt!388629 (array!49493 (store (arr!23773 _values!688) i!612 (ValueCellFull!7897 v!557)) (size!24214 _values!688)))))

(declare-fun lt!388631 () ListLongMap!9859)

(assert (=> b!861554 (= lt!388631 (getCurrentListMapNoExtraKeys!2924 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!585600 () Bool)

(assert (=> start!73650 (=> (not res!585600) (not e!480055))))

(assert (=> start!73650 (= res!585600 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24215 _keys!868))))))

(assert (=> start!73650 e!480055))

(declare-fun tp_is_empty!16673 () Bool)

(assert (=> start!73650 tp_is_empty!16673))

(assert (=> start!73650 true))

(assert (=> start!73650 tp!51116))

(declare-fun array_inv!18788 (array!49494) Bool)

(assert (=> start!73650 (array_inv!18788 _keys!868)))

(declare-fun e!480056 () Bool)

(declare-fun array_inv!18789 (array!49492) Bool)

(assert (=> start!73650 (and (array_inv!18789 _values!688) e!480056)))

(declare-fun b!861555 () Bool)

(declare-fun res!585605 () Bool)

(assert (=> b!861555 (=> (not res!585605) (not e!480055))))

(assert (=> b!861555 (= res!585605 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24215 _keys!868))))))

(declare-fun b!861556 () Bool)

(declare-datatypes ((Unit!29360 0))(
  ( (Unit!29361) )
))
(declare-fun e!480053 () Unit!29360)

(declare-fun Unit!29362 () Unit!29360)

(assert (=> b!861556 (= e!480053 Unit!29362)))

(declare-fun b!861557 () Bool)

(declare-fun res!585601 () Bool)

(assert (=> b!861557 (=> (not res!585601) (not e!480055))))

(assert (=> b!861557 (= res!585601 (and (= (select (arr!23774 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!861558 () Bool)

(declare-fun Unit!29363 () Unit!29360)

(assert (=> b!861558 (= e!480053 Unit!29363)))

(declare-fun lt!388626 () Unit!29360)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49494 (_ BitVec 32) (_ BitVec 32)) Unit!29360)

(assert (=> b!861558 (= lt!388626 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16947 0))(
  ( (Nil!16944) (Cons!16943 (h!18074 (_ BitVec 64)) (t!23758 List!16947)) )
))
(declare-fun arrayNoDuplicates!0 (array!49494 (_ BitVec 32) List!16947) Bool)

(assert (=> b!861558 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16944)))

(declare-fun lt!388625 () Unit!29360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49494 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29360)

(assert (=> b!861558 (= lt!388625 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861558 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388632 () Unit!29360)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49494 (_ BitVec 64) (_ BitVec 32) List!16947) Unit!29360)

(assert (=> b!861558 (= lt!388632 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16944))))

(assert (=> b!861558 false))

(declare-fun b!861559 () Bool)

(declare-fun e!480051 () Bool)

(assert (=> b!861559 (= e!480052 (not e!480051))))

(declare-fun res!585609 () Bool)

(assert (=> b!861559 (=> res!585609 e!480051)))

(assert (=> b!861559 (= res!585609 (not (validKeyInArray!0 (select (arr!23774 _keys!868) from!1053))))))

(declare-fun lt!388628 () ListLongMap!9859)

(declare-fun lt!388624 () ListLongMap!9859)

(assert (=> b!861559 (= lt!388628 lt!388624)))

(declare-fun lt!388622 () ListLongMap!9859)

(declare-fun +!2243 (ListLongMap!9859 tuple2!11076) ListLongMap!9859)

(assert (=> b!861559 (= lt!388624 (+!2243 lt!388622 (tuple2!11077 k!854 v!557)))))

(assert (=> b!861559 (= lt!388628 (getCurrentListMapNoExtraKeys!2924 _keys!868 lt!388629 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861559 (= lt!388622 (getCurrentListMapNoExtraKeys!2924 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388627 () Unit!29360)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!495 (array!49494 array!49492 (_ BitVec 32) (_ BitVec 32) V!27277 V!27277 (_ BitVec 32) (_ BitVec 64) V!27277 (_ BitVec 32) Int) Unit!29360)

(assert (=> b!861559 (= lt!388627 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!495 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861560 () Bool)

(assert (=> b!861560 (= e!480051 true)))

(assert (=> b!861560 (not (= (select (arr!23774 _keys!868) from!1053) k!854))))

(declare-fun lt!388630 () Unit!29360)

(assert (=> b!861560 (= lt!388630 e!480053)))

(declare-fun c!91944 () Bool)

(assert (=> b!861560 (= c!91944 (= (select (arr!23774 _keys!868) from!1053) k!854))))

(declare-fun get!12553 (ValueCell!7897 V!27277) V!27277)

(declare-fun dynLambda!1125 (Int (_ BitVec 64)) V!27277)

(assert (=> b!861560 (= lt!388623 (+!2243 lt!388624 (tuple2!11077 (select (arr!23774 _keys!868) from!1053) (get!12553 (select (arr!23773 _values!688) from!1053) (dynLambda!1125 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!26609 () Bool)

(declare-fun mapRes!26609 () Bool)

(assert (=> mapIsEmpty!26609 mapRes!26609))

(declare-fun b!861561 () Bool)

(declare-fun res!585607 () Bool)

(assert (=> b!861561 (=> (not res!585607) (not e!480055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49494 (_ BitVec 32)) Bool)

(assert (=> b!861561 (= res!585607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!861562 () Bool)

(declare-fun res!585603 () Bool)

(assert (=> b!861562 (=> (not res!585603) (not e!480055))))

(assert (=> b!861562 (= res!585603 (and (= (size!24214 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24215 _keys!868) (size!24214 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861563 () Bool)

(declare-fun e!480050 () Bool)

(assert (=> b!861563 (= e!480050 tp_is_empty!16673)))

(declare-fun mapNonEmpty!26609 () Bool)

(declare-fun tp!51115 () Bool)

(declare-fun e!480054 () Bool)

(assert (=> mapNonEmpty!26609 (= mapRes!26609 (and tp!51115 e!480054))))

(declare-fun mapRest!26609 () (Array (_ BitVec 32) ValueCell!7897))

(declare-fun mapValue!26609 () ValueCell!7897)

(declare-fun mapKey!26609 () (_ BitVec 32))

(assert (=> mapNonEmpty!26609 (= (arr!23773 _values!688) (store mapRest!26609 mapKey!26609 mapValue!26609))))

(declare-fun b!861564 () Bool)

(declare-fun res!585606 () Bool)

(assert (=> b!861564 (=> (not res!585606) (not e!480055))))

(assert (=> b!861564 (= res!585606 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16944))))

(declare-fun b!861565 () Bool)

(declare-fun res!585602 () Bool)

(assert (=> b!861565 (=> (not res!585602) (not e!480055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861565 (= res!585602 (validMask!0 mask!1196))))

(declare-fun b!861566 () Bool)

(assert (=> b!861566 (= e!480056 (and e!480050 mapRes!26609))))

(declare-fun condMapEmpty!26609 () Bool)

(declare-fun mapDefault!26609 () ValueCell!7897)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74464 () Bool)

(assert start!74464)

(declare-fun b_free!15179 () Bool)

(declare-fun b_next!15179 () Bool)

(assert (=> start!74464 (= b_free!15179 (not b_next!15179))))

(declare-fun tp!53215 () Bool)

(declare-fun b_and!25029 () Bool)

(assert (=> start!74464 (= tp!53215 b_and!25029)))

(declare-fun b!876568 () Bool)

(declare-fun e!487985 () Bool)

(declare-fun tp_is_empty!17423 () Bool)

(assert (=> b!876568 (= e!487985 tp_is_empty!17423)))

(declare-fun bm!38777 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28277 0))(
  ( (V!28278 (val!8759 Int)) )
))
(declare-datatypes ((tuple2!11592 0))(
  ( (tuple2!11593 (_1!5806 (_ BitVec 64)) (_2!5806 V!28277)) )
))
(declare-datatypes ((List!17473 0))(
  ( (Nil!17470) (Cons!17469 (h!18600 tuple2!11592) (t!24564 List!17473)) )
))
(declare-datatypes ((ListLongMap!10375 0))(
  ( (ListLongMap!10376 (toList!5203 List!17473)) )
))
(declare-fun call!38781 () ListLongMap!10375)

(declare-datatypes ((array!50954 0))(
  ( (array!50955 (arr!24500 (Array (_ BitVec 32) (_ BitVec 64))) (size!24941 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50954)

(declare-datatypes ((ValueCell!8272 0))(
  ( (ValueCellFull!8272 (v!11188 V!28277)) (EmptyCell!8272) )
))
(declare-datatypes ((array!50956 0))(
  ( (array!50957 (arr!24501 (Array (_ BitVec 32) ValueCell!8272)) (size!24942 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50956)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28277)

(declare-fun zeroValue!654 () V!28277)

(declare-fun getCurrentListMapNoExtraKeys!3165 (array!50954 array!50956 (_ BitVec 32) (_ BitVec 32) V!28277 V!28277 (_ BitVec 32) Int) ListLongMap!10375)

(assert (=> bm!38777 (= call!38781 (getCurrentListMapNoExtraKeys!3165 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876569 () Bool)

(declare-fun res!595750 () Bool)

(declare-fun e!487981 () Bool)

(assert (=> b!876569 (=> (not res!595750) (not e!487981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876569 (= res!595750 (validMask!0 mask!1196))))

(declare-fun b!876570 () Bool)

(declare-fun e!487983 () Bool)

(declare-fun call!38780 () ListLongMap!10375)

(assert (=> b!876570 (= e!487983 (= call!38780 call!38781))))

(declare-fun b!876571 () Bool)

(declare-fun e!487984 () Bool)

(assert (=> b!876571 (= e!487984 tp_is_empty!17423)))

(declare-fun b!876572 () Bool)

(declare-fun res!595749 () Bool)

(assert (=> b!876572 (=> (not res!595749) (not e!487981))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876572 (= res!595749 (validKeyInArray!0 k!854))))

(declare-fun v!557 () V!28277)

(declare-fun b!876573 () Bool)

(declare-fun +!2439 (ListLongMap!10375 tuple2!11592) ListLongMap!10375)

(assert (=> b!876573 (= e!487983 (= call!38780 (+!2439 call!38781 (tuple2!11593 k!854 v!557))))))

(declare-fun b!876574 () Bool)

(declare-fun res!595748 () Bool)

(assert (=> b!876574 (=> (not res!595748) (not e!487981))))

(declare-datatypes ((List!17474 0))(
  ( (Nil!17471) (Cons!17470 (h!18601 (_ BitVec 64)) (t!24565 List!17474)) )
))
(declare-fun arrayNoDuplicates!0 (array!50954 (_ BitVec 32) List!17474) Bool)

(assert (=> b!876574 (= res!595748 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17471))))

(declare-fun mapIsEmpty!27746 () Bool)

(declare-fun mapRes!27746 () Bool)

(assert (=> mapIsEmpty!27746 mapRes!27746))

(declare-fun res!595743 () Bool)

(assert (=> start!74464 (=> (not res!595743) (not e!487981))))

(assert (=> start!74464 (= res!595743 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24941 _keys!868))))))

(assert (=> start!74464 e!487981))

(assert (=> start!74464 tp_is_empty!17423))

(assert (=> start!74464 true))

(assert (=> start!74464 tp!53215))

(declare-fun array_inv!19298 (array!50954) Bool)

(assert (=> start!74464 (array_inv!19298 _keys!868)))

(declare-fun e!487978 () Bool)

(declare-fun array_inv!19299 (array!50956) Bool)

(assert (=> start!74464 (and (array_inv!19299 _values!688) e!487978)))

(declare-fun b!876567 () Bool)

(declare-fun res!595745 () Bool)

(assert (=> b!876567 (=> (not res!595745) (not e!487981))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876567 (= res!595745 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24941 _keys!868))))))

(declare-fun bm!38778 () Bool)

(declare-fun lt!396602 () array!50956)

(assert (=> bm!38778 (= call!38780 (getCurrentListMapNoExtraKeys!3165 _keys!868 lt!396602 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876575 () Bool)

(declare-fun res!595746 () Bool)

(assert (=> b!876575 (=> (not res!595746) (not e!487981))))

(assert (=> b!876575 (= res!595746 (and (= (select (arr!24500 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!876576 () Bool)

(declare-fun e!487979 () Bool)

(declare-fun e!487982 () Bool)

(assert (=> b!876576 (= e!487979 (not e!487982))))

(declare-fun res!595744 () Bool)

(assert (=> b!876576 (=> res!595744 e!487982)))

(assert (=> b!876576 (= res!595744 (not (validKeyInArray!0 (select (arr!24500 _keys!868) from!1053))))))

(assert (=> b!876576 e!487983))

(declare-fun c!92536 () Bool)

(assert (=> b!876576 (= c!92536 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29936 0))(
  ( (Unit!29937) )
))
(declare-fun lt!396599 () Unit!29936)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!671 (array!50954 array!50956 (_ BitVec 32) (_ BitVec 32) V!28277 V!28277 (_ BitVec 32) (_ BitVec 64) V!28277 (_ BitVec 32) Int) Unit!29936)

(assert (=> b!876576 (= lt!396599 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!671 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876577 () Bool)

(assert (=> b!876577 (= e!487982 true)))

(declare-fun lt!396606 () ListLongMap!10375)

(declare-fun lt!396601 () tuple2!11592)

(declare-fun lt!396608 () V!28277)

(assert (=> b!876577 (= (+!2439 lt!396606 lt!396601) (+!2439 (+!2439 lt!396606 (tuple2!11593 k!854 lt!396608)) lt!396601))))

(declare-fun lt!396604 () V!28277)

(assert (=> b!876577 (= lt!396601 (tuple2!11593 k!854 lt!396604))))

(declare-fun lt!396600 () Unit!29936)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!331 (ListLongMap!10375 (_ BitVec 64) V!28277 V!28277) Unit!29936)

(assert (=> b!876577 (= lt!396600 (addSameAsAddTwiceSameKeyDiffValues!331 lt!396606 k!854 lt!396608 lt!396604))))

(declare-fun lt!396607 () V!28277)

(declare-fun get!12901 (ValueCell!8272 V!28277) V!28277)

(assert (=> b!876577 (= lt!396608 (get!12901 (select (arr!24501 _values!688) from!1053) lt!396607))))

(declare-fun lt!396605 () ListLongMap!10375)

(assert (=> b!876577 (= lt!396605 (+!2439 lt!396606 (tuple2!11593 (select (arr!24500 _keys!868) from!1053) lt!396604)))))

(assert (=> b!876577 (= lt!396604 (get!12901 (select (store (arr!24501 _values!688) i!612 (ValueCellFull!8272 v!557)) from!1053) lt!396607))))

(declare-fun dynLambda!1221 (Int (_ BitVec 64)) V!28277)

(assert (=> b!876577 (= lt!396607 (dynLambda!1221 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!876577 (= lt!396606 (getCurrentListMapNoExtraKeys!3165 _keys!868 lt!396602 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876578 () Bool)

(assert (=> b!876578 (= e!487978 (and e!487984 mapRes!27746))))

(declare-fun condMapEmpty!27746 () Bool)

(declare-fun mapDefault!27746 () ValueCell!8272)


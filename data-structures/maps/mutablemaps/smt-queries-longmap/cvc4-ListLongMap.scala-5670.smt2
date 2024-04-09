; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73836 () Bool)

(assert start!73836)

(declare-fun b_free!14723 () Bool)

(declare-fun b_next!14723 () Bool)

(assert (=> start!73836 (= b_free!14723 (not b_next!14723))))

(declare-fun tp!51673 () Bool)

(declare-fun b_and!24443 () Bool)

(assert (=> start!73836 (= tp!51673 b_and!24443)))

(declare-fun b!866175 () Bool)

(declare-fun e!482541 () Bool)

(declare-fun e!482534 () Bool)

(assert (=> b!866175 (= e!482541 e!482534)))

(declare-fun res!588641 () Bool)

(assert (=> b!866175 (=> res!588641 e!482534)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49860 0))(
  ( (array!49861 (arr!23957 (Array (_ BitVec 32) (_ BitVec 64))) (size!24398 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49860)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!866175 (= res!588641 (= k!854 (select (arr!23957 _keys!868) from!1053)))))

(assert (=> b!866175 (not (= (select (arr!23957 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29667 0))(
  ( (Unit!29668) )
))
(declare-fun lt!392956 () Unit!29667)

(declare-fun e!482536 () Unit!29667)

(assert (=> b!866175 (= lt!392956 e!482536)))

(declare-fun c!92223 () Bool)

(assert (=> b!866175 (= c!92223 (= (select (arr!23957 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27525 0))(
  ( (V!27526 (val!8477 Int)) )
))
(declare-datatypes ((tuple2!11244 0))(
  ( (tuple2!11245 (_1!5632 (_ BitVec 64)) (_2!5632 V!27525)) )
))
(declare-datatypes ((List!17108 0))(
  ( (Nil!17105) (Cons!17104 (h!18235 tuple2!11244) (t!24105 List!17108)) )
))
(declare-datatypes ((ListLongMap!10027 0))(
  ( (ListLongMap!10028 (toList!5029 List!17108)) )
))
(declare-fun lt!392961 () ListLongMap!10027)

(declare-fun lt!392946 () ListLongMap!10027)

(assert (=> b!866175 (= lt!392961 lt!392946)))

(declare-fun lt!392958 () ListLongMap!10027)

(declare-fun lt!392947 () tuple2!11244)

(declare-fun +!2325 (ListLongMap!10027 tuple2!11244) ListLongMap!10027)

(assert (=> b!866175 (= lt!392946 (+!2325 lt!392958 lt!392947))))

(declare-fun lt!392949 () V!27525)

(assert (=> b!866175 (= lt!392947 (tuple2!11245 (select (arr!23957 _keys!868) from!1053) lt!392949))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7990 0))(
  ( (ValueCellFull!7990 (v!10898 V!27525)) (EmptyCell!7990) )
))
(declare-datatypes ((array!49862 0))(
  ( (array!49863 (arr!23958 (Array (_ BitVec 32) ValueCell!7990)) (size!24399 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49862)

(declare-fun get!12682 (ValueCell!7990 V!27525) V!27525)

(declare-fun dynLambda!1192 (Int (_ BitVec 64)) V!27525)

(assert (=> b!866175 (= lt!392949 (get!12682 (select (arr!23958 _values!688) from!1053) (dynLambda!1192 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866176 () Bool)

(declare-fun res!588651 () Bool)

(declare-fun e!482539 () Bool)

(assert (=> b!866176 (=> (not res!588651) (not e!482539))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866176 (= res!588651 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24398 _keys!868))))))

(declare-fun b!866177 () Bool)

(declare-fun e!482533 () Bool)

(assert (=> b!866177 (= e!482539 e!482533)))

(declare-fun res!588644 () Bool)

(assert (=> b!866177 (=> (not res!588644) (not e!482533))))

(assert (=> b!866177 (= res!588644 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27525)

(declare-fun zeroValue!654 () V!27525)

(declare-fun lt!392950 () array!49862)

(declare-fun getCurrentListMapNoExtraKeys!2996 (array!49860 array!49862 (_ BitVec 32) (_ BitVec 32) V!27525 V!27525 (_ BitVec 32) Int) ListLongMap!10027)

(assert (=> b!866177 (= lt!392961 (getCurrentListMapNoExtraKeys!2996 _keys!868 lt!392950 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27525)

(assert (=> b!866177 (= lt!392950 (array!49863 (store (arr!23958 _values!688) i!612 (ValueCellFull!7990 v!557)) (size!24399 _values!688)))))

(declare-fun lt!392960 () ListLongMap!10027)

(assert (=> b!866177 (= lt!392960 (getCurrentListMapNoExtraKeys!2996 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866178 () Bool)

(declare-fun e!482537 () Bool)

(declare-fun tp_is_empty!16859 () Bool)

(assert (=> b!866178 (= e!482537 tp_is_empty!16859)))

(declare-fun b!866179 () Bool)

(assert (=> b!866179 (= e!482533 (not e!482541))))

(declare-fun res!588646 () Bool)

(assert (=> b!866179 (=> res!588646 e!482541)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866179 (= res!588646 (not (validKeyInArray!0 (select (arr!23957 _keys!868) from!1053))))))

(declare-fun lt!392955 () ListLongMap!10027)

(assert (=> b!866179 (= lt!392955 lt!392958)))

(declare-fun lt!392952 () ListLongMap!10027)

(declare-fun lt!392957 () tuple2!11244)

(assert (=> b!866179 (= lt!392958 (+!2325 lt!392952 lt!392957))))

(assert (=> b!866179 (= lt!392955 (getCurrentListMapNoExtraKeys!2996 _keys!868 lt!392950 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!866179 (= lt!392957 (tuple2!11245 k!854 v!557))))

(assert (=> b!866179 (= lt!392952 (getCurrentListMapNoExtraKeys!2996 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392954 () Unit!29667)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!561 (array!49860 array!49862 (_ BitVec 32) (_ BitVec 32) V!27525 V!27525 (_ BitVec 32) (_ BitVec 64) V!27525 (_ BitVec 32) Int) Unit!29667)

(assert (=> b!866179 (= lt!392954 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!561 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!866180 () Bool)

(declare-fun res!588648 () Bool)

(assert (=> b!866180 (=> (not res!588648) (not e!482539))))

(assert (=> b!866180 (= res!588648 (and (= (size!24399 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24398 _keys!868) (size!24399 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!588645 () Bool)

(assert (=> start!73836 (=> (not res!588645) (not e!482539))))

(assert (=> start!73836 (= res!588645 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24398 _keys!868))))))

(assert (=> start!73836 e!482539))

(assert (=> start!73836 tp_is_empty!16859))

(assert (=> start!73836 true))

(assert (=> start!73836 tp!51673))

(declare-fun array_inv!18920 (array!49860) Bool)

(assert (=> start!73836 (array_inv!18920 _keys!868)))

(declare-fun e!482535 () Bool)

(declare-fun array_inv!18921 (array!49862) Bool)

(assert (=> start!73836 (and (array_inv!18921 _values!688) e!482535)))

(declare-fun b!866181 () Bool)

(declare-fun e!482538 () Bool)

(declare-fun mapRes!26888 () Bool)

(assert (=> b!866181 (= e!482535 (and e!482538 mapRes!26888))))

(declare-fun condMapEmpty!26888 () Bool)

(declare-fun mapDefault!26888 () ValueCell!7990)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74348 () Bool)

(assert start!74348)

(declare-fun b_free!15083 () Bool)

(declare-fun b_next!15083 () Bool)

(assert (=> start!74348 (= b_free!15083 (not b_next!15083))))

(declare-fun tp!52924 () Bool)

(declare-fun b_and!24877 () Bool)

(assert (=> start!74348 (= tp!52924 b_and!24877)))

(declare-fun b!874394 () Bool)

(declare-fun res!594337 () Bool)

(declare-fun e!486866 () Bool)

(assert (=> b!874394 (=> (not res!594337) (not e!486866))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50766 0))(
  ( (array!50767 (arr!24407 (Array (_ BitVec 32) (_ BitVec 64))) (size!24848 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50766)

(declare-datatypes ((V!28149 0))(
  ( (V!28150 (val!8711 Int)) )
))
(declare-datatypes ((ValueCell!8224 0))(
  ( (ValueCellFull!8224 (v!11136 V!28149)) (EmptyCell!8224) )
))
(declare-datatypes ((array!50768 0))(
  ( (array!50769 (arr!24408 (Array (_ BitVec 32) ValueCell!8224)) (size!24849 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50768)

(assert (=> b!874394 (= res!594337 (and (= (size!24849 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24848 _keys!868) (size!24849 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!594339 () Bool)

(assert (=> start!74348 (=> (not res!594339) (not e!486866))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74348 (= res!594339 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24848 _keys!868))))))

(assert (=> start!74348 e!486866))

(declare-fun tp_is_empty!17327 () Bool)

(assert (=> start!74348 tp_is_empty!17327))

(assert (=> start!74348 true))

(assert (=> start!74348 tp!52924))

(declare-fun array_inv!19230 (array!50766) Bool)

(assert (=> start!74348 (array_inv!19230 _keys!868)))

(declare-fun e!486865 () Bool)

(declare-fun array_inv!19231 (array!50768) Bool)

(assert (=> start!74348 (and (array_inv!19231 _values!688) e!486865)))

(declare-fun b!874395 () Bool)

(declare-fun res!594338 () Bool)

(assert (=> b!874395 (=> (not res!594338) (not e!486866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874395 (= res!594338 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27599 () Bool)

(declare-fun mapRes!27599 () Bool)

(declare-fun tp!52925 () Bool)

(declare-fun e!486864 () Bool)

(assert (=> mapNonEmpty!27599 (= mapRes!27599 (and tp!52925 e!486864))))

(declare-fun mapValue!27599 () ValueCell!8224)

(declare-fun mapKey!27599 () (_ BitVec 32))

(declare-fun mapRest!27599 () (Array (_ BitVec 32) ValueCell!8224))

(assert (=> mapNonEmpty!27599 (= (arr!24408 _values!688) (store mapRest!27599 mapKey!27599 mapValue!27599))))

(declare-fun b!874396 () Bool)

(assert (=> b!874396 (= e!486864 tp_is_empty!17327)))

(declare-fun b!874397 () Bool)

(declare-fun res!594341 () Bool)

(assert (=> b!874397 (=> (not res!594341) (not e!486866))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!874397 (= res!594341 (and (= (select (arr!24407 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874398 () Bool)

(declare-fun res!594343 () Bool)

(assert (=> b!874398 (=> (not res!594343) (not e!486866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874398 (= res!594343 (validKeyInArray!0 k!854))))

(declare-fun b!874399 () Bool)

(declare-fun res!594336 () Bool)

(assert (=> b!874399 (=> (not res!594336) (not e!486866))))

(declare-datatypes ((List!17397 0))(
  ( (Nil!17394) (Cons!17393 (h!18524 (_ BitVec 64)) (t!24446 List!17397)) )
))
(declare-fun arrayNoDuplicates!0 (array!50766 (_ BitVec 32) List!17397) Bool)

(assert (=> b!874399 (= res!594336 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17394))))

(declare-fun b!874400 () Bool)

(assert (=> b!874400 (= e!486866 false)))

(declare-datatypes ((tuple2!11508 0))(
  ( (tuple2!11509 (_1!5764 (_ BitVec 64)) (_2!5764 V!28149)) )
))
(declare-datatypes ((List!17398 0))(
  ( (Nil!17395) (Cons!17394 (h!18525 tuple2!11508) (t!24447 List!17398)) )
))
(declare-datatypes ((ListLongMap!10291 0))(
  ( (ListLongMap!10292 (toList!5161 List!17398)) )
))
(declare-fun lt!395907 () ListLongMap!10291)

(declare-fun v!557 () V!28149)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28149)

(declare-fun zeroValue!654 () V!28149)

(declare-fun getCurrentListMapNoExtraKeys!3125 (array!50766 array!50768 (_ BitVec 32) (_ BitVec 32) V!28149 V!28149 (_ BitVec 32) Int) ListLongMap!10291)

(assert (=> b!874400 (= lt!395907 (getCurrentListMapNoExtraKeys!3125 _keys!868 (array!50769 (store (arr!24408 _values!688) i!612 (ValueCellFull!8224 v!557)) (size!24849 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395908 () ListLongMap!10291)

(assert (=> b!874400 (= lt!395908 (getCurrentListMapNoExtraKeys!3125 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874401 () Bool)

(declare-fun res!594340 () Bool)

(assert (=> b!874401 (=> (not res!594340) (not e!486866))))

(assert (=> b!874401 (= res!594340 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24848 _keys!868))))))

(declare-fun b!874402 () Bool)

(declare-fun e!486868 () Bool)

(assert (=> b!874402 (= e!486868 tp_is_empty!17327)))

(declare-fun mapIsEmpty!27599 () Bool)

(assert (=> mapIsEmpty!27599 mapRes!27599))

(declare-fun b!874403 () Bool)

(assert (=> b!874403 (= e!486865 (and e!486868 mapRes!27599))))

(declare-fun condMapEmpty!27599 () Bool)

(declare-fun mapDefault!27599 () ValueCell!8224)


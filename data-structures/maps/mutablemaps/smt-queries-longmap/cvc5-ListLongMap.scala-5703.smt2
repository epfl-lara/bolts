; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74030 () Bool)

(assert start!74030)

(declare-fun b_free!14917 () Bool)

(declare-fun b_next!14917 () Bool)

(assert (=> start!74030 (= b_free!14917 (not b_next!14917))))

(declare-fun tp!52256 () Bool)

(declare-fun b_and!24687 () Bool)

(assert (=> start!74030 (= tp!52256 b_and!24687)))

(declare-fun b!870009 () Bool)

(declare-fun e!484499 () Bool)

(declare-fun tp_is_empty!17053 () Bool)

(assert (=> b!870009 (= e!484499 tp_is_empty!17053)))

(declare-fun mapNonEmpty!27179 () Bool)

(declare-fun mapRes!27179 () Bool)

(declare-fun tp!52255 () Bool)

(declare-fun e!484498 () Bool)

(assert (=> mapNonEmpty!27179 (= mapRes!27179 (and tp!52255 e!484498))))

(declare-datatypes ((V!27785 0))(
  ( (V!27786 (val!8574 Int)) )
))
(declare-datatypes ((ValueCell!8087 0))(
  ( (ValueCellFull!8087 (v!10995 V!27785)) (EmptyCell!8087) )
))
(declare-fun mapValue!27179 () ValueCell!8087)

(declare-fun mapKey!27179 () (_ BitVec 32))

(declare-fun mapRest!27179 () (Array (_ BitVec 32) ValueCell!8087))

(declare-datatypes ((array!50238 0))(
  ( (array!50239 (arr!24146 (Array (_ BitVec 32) ValueCell!8087)) (size!24587 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50238)

(assert (=> mapNonEmpty!27179 (= (arr!24146 _values!688) (store mapRest!27179 mapKey!27179 mapValue!27179))))

(declare-fun b!870011 () Bool)

(declare-fun e!484500 () Bool)

(assert (=> b!870011 (= e!484500 (not true))))

(declare-fun lt!394989 () array!50238)

(declare-fun v!557 () V!27785)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50240 0))(
  ( (array!50241 (arr!24147 (Array (_ BitVec 32) (_ BitVec 64))) (size!24588 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50240)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27785)

(declare-fun zeroValue!654 () V!27785)

(declare-datatypes ((tuple2!11390 0))(
  ( (tuple2!11391 (_1!5705 (_ BitVec 64)) (_2!5705 V!27785)) )
))
(declare-datatypes ((List!17247 0))(
  ( (Nil!17244) (Cons!17243 (h!18374 tuple2!11390) (t!24292 List!17247)) )
))
(declare-datatypes ((ListLongMap!10173 0))(
  ( (ListLongMap!10174 (toList!5102 List!17247)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3066 (array!50240 array!50238 (_ BitVec 32) (_ BitVec 32) V!27785 V!27785 (_ BitVec 32) Int) ListLongMap!10173)

(declare-fun +!2385 (ListLongMap!10173 tuple2!11390) ListLongMap!10173)

(assert (=> b!870011 (= (getCurrentListMapNoExtraKeys!3066 _keys!868 lt!394989 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2385 (getCurrentListMapNoExtraKeys!3066 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11391 k!854 v!557)))))

(declare-datatypes ((Unit!29820 0))(
  ( (Unit!29821) )
))
(declare-fun lt!394986 () Unit!29820)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!616 (array!50240 array!50238 (_ BitVec 32) (_ BitVec 32) V!27785 V!27785 (_ BitVec 32) (_ BitVec 64) V!27785 (_ BitVec 32) Int) Unit!29820)

(assert (=> b!870011 (= lt!394986 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!616 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870012 () Bool)

(declare-fun res!591409 () Bool)

(declare-fun e!484503 () Bool)

(assert (=> b!870012 (=> (not res!591409) (not e!484503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870012 (= res!591409 (validMask!0 mask!1196))))

(declare-fun b!870013 () Bool)

(assert (=> b!870013 (= e!484498 tp_is_empty!17053)))

(declare-fun b!870010 () Bool)

(declare-fun res!591414 () Bool)

(assert (=> b!870010 (=> (not res!591414) (not e!484503))))

(assert (=> b!870010 (= res!591414 (and (= (size!24587 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24588 _keys!868) (size!24587 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!591410 () Bool)

(assert (=> start!74030 (=> (not res!591410) (not e!484503))))

(assert (=> start!74030 (= res!591410 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24588 _keys!868))))))

(assert (=> start!74030 e!484503))

(assert (=> start!74030 tp_is_empty!17053))

(assert (=> start!74030 true))

(assert (=> start!74030 tp!52256))

(declare-fun array_inv!19042 (array!50240) Bool)

(assert (=> start!74030 (array_inv!19042 _keys!868)))

(declare-fun e!484501 () Bool)

(declare-fun array_inv!19043 (array!50238) Bool)

(assert (=> start!74030 (and (array_inv!19043 _values!688) e!484501)))

(declare-fun b!870014 () Bool)

(declare-fun res!591413 () Bool)

(assert (=> b!870014 (=> (not res!591413) (not e!484503))))

(assert (=> b!870014 (= res!591413 (and (= (select (arr!24147 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27179 () Bool)

(assert (=> mapIsEmpty!27179 mapRes!27179))

(declare-fun b!870015 () Bool)

(assert (=> b!870015 (= e!484503 e!484500)))

(declare-fun res!591412 () Bool)

(assert (=> b!870015 (=> (not res!591412) (not e!484500))))

(assert (=> b!870015 (= res!591412 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394988 () ListLongMap!10173)

(assert (=> b!870015 (= lt!394988 (getCurrentListMapNoExtraKeys!3066 _keys!868 lt!394989 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!870015 (= lt!394989 (array!50239 (store (arr!24146 _values!688) i!612 (ValueCellFull!8087 v!557)) (size!24587 _values!688)))))

(declare-fun lt!394987 () ListLongMap!10173)

(assert (=> b!870015 (= lt!394987 (getCurrentListMapNoExtraKeys!3066 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870016 () Bool)

(assert (=> b!870016 (= e!484501 (and e!484499 mapRes!27179))))

(declare-fun condMapEmpty!27179 () Bool)

(declare-fun mapDefault!27179 () ValueCell!8087)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74046 () Bool)

(assert start!74046)

(declare-fun b_free!14933 () Bool)

(declare-fun b_next!14933 () Bool)

(assert (=> start!74046 (= b_free!14933 (not b_next!14933))))

(declare-fun tp!52303 () Bool)

(declare-fun b_and!24703 () Bool)

(assert (=> start!74046 (= tp!52303 b_and!24703)))

(declare-fun b!870297 () Bool)

(declare-fun res!591627 () Bool)

(declare-fun e!484646 () Bool)

(assert (=> b!870297 (=> (not res!591627) (not e!484646))))

(declare-datatypes ((array!50270 0))(
  ( (array!50271 (arr!24162 (Array (_ BitVec 32) (_ BitVec 64))) (size!24603 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50270)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50270 (_ BitVec 32)) Bool)

(assert (=> b!870297 (= res!591627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27203 () Bool)

(declare-fun mapRes!27203 () Bool)

(assert (=> mapIsEmpty!27203 mapRes!27203))

(declare-fun b!870298 () Bool)

(declare-fun e!484647 () Bool)

(declare-fun tp_is_empty!17069 () Bool)

(assert (=> b!870298 (= e!484647 tp_is_empty!17069)))

(declare-fun b!870299 () Bool)

(declare-fun res!591626 () Bool)

(assert (=> b!870299 (=> (not res!591626) (not e!484646))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!870299 (= res!591626 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24603 _keys!868))))))

(declare-fun b!870300 () Bool)

(declare-fun res!591622 () Bool)

(assert (=> b!870300 (=> (not res!591622) (not e!484646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870300 (= res!591622 (validMask!0 mask!1196))))

(declare-fun b!870301 () Bool)

(declare-fun e!484643 () Bool)

(assert (=> b!870301 (= e!484643 (not true))))

(declare-datatypes ((V!27805 0))(
  ( (V!27806 (val!8582 Int)) )
))
(declare-datatypes ((ValueCell!8095 0))(
  ( (ValueCellFull!8095 (v!11003 V!27805)) (EmptyCell!8095) )
))
(declare-datatypes ((array!50272 0))(
  ( (array!50273 (arr!24163 (Array (_ BitVec 32) ValueCell!8095)) (size!24604 (_ BitVec 32))) )
))
(declare-fun lt!395084 () array!50272)

(declare-fun v!557 () V!27805)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun _values!688 () array!50272)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27805)

(declare-fun zeroValue!654 () V!27805)

(declare-datatypes ((tuple2!11404 0))(
  ( (tuple2!11405 (_1!5712 (_ BitVec 64)) (_2!5712 V!27805)) )
))
(declare-datatypes ((List!17258 0))(
  ( (Nil!17255) (Cons!17254 (h!18385 tuple2!11404) (t!24303 List!17258)) )
))
(declare-datatypes ((ListLongMap!10187 0))(
  ( (ListLongMap!10188 (toList!5109 List!17258)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3073 (array!50270 array!50272 (_ BitVec 32) (_ BitVec 32) V!27805 V!27805 (_ BitVec 32) Int) ListLongMap!10187)

(declare-fun +!2390 (ListLongMap!10187 tuple2!11404) ListLongMap!10187)

(assert (=> b!870301 (= (getCurrentListMapNoExtraKeys!3073 _keys!868 lt!395084 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2390 (getCurrentListMapNoExtraKeys!3073 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11405 k!854 v!557)))))

(declare-datatypes ((Unit!29830 0))(
  ( (Unit!29831) )
))
(declare-fun lt!395085 () Unit!29830)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!621 (array!50270 array!50272 (_ BitVec 32) (_ BitVec 32) V!27805 V!27805 (_ BitVec 32) (_ BitVec 64) V!27805 (_ BitVec 32) Int) Unit!29830)

(assert (=> b!870301 (= lt!395085 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!621 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870302 () Bool)

(declare-fun res!591623 () Bool)

(assert (=> b!870302 (=> (not res!591623) (not e!484646))))

(declare-datatypes ((List!17259 0))(
  ( (Nil!17256) (Cons!17255 (h!18386 (_ BitVec 64)) (t!24304 List!17259)) )
))
(declare-fun arrayNoDuplicates!0 (array!50270 (_ BitVec 32) List!17259) Bool)

(assert (=> b!870302 (= res!591623 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17256))))

(declare-fun b!870304 () Bool)

(declare-fun res!591624 () Bool)

(assert (=> b!870304 (=> (not res!591624) (not e!484646))))

(assert (=> b!870304 (= res!591624 (and (= (select (arr!24162 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!870305 () Bool)

(declare-fun res!591630 () Bool)

(assert (=> b!870305 (=> (not res!591630) (not e!484646))))

(assert (=> b!870305 (= res!591630 (and (= (size!24604 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24603 _keys!868) (size!24604 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870306 () Bool)

(assert (=> b!870306 (= e!484646 e!484643)))

(declare-fun res!591629 () Bool)

(assert (=> b!870306 (=> (not res!591629) (not e!484643))))

(assert (=> b!870306 (= res!591629 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395083 () ListLongMap!10187)

(assert (=> b!870306 (= lt!395083 (getCurrentListMapNoExtraKeys!3073 _keys!868 lt!395084 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!870306 (= lt!395084 (array!50273 (store (arr!24163 _values!688) i!612 (ValueCellFull!8095 v!557)) (size!24604 _values!688)))))

(declare-fun lt!395082 () ListLongMap!10187)

(assert (=> b!870306 (= lt!395082 (getCurrentListMapNoExtraKeys!3073 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27203 () Bool)

(declare-fun tp!52304 () Bool)

(declare-fun e!484645 () Bool)

(assert (=> mapNonEmpty!27203 (= mapRes!27203 (and tp!52304 e!484645))))

(declare-fun mapRest!27203 () (Array (_ BitVec 32) ValueCell!8095))

(declare-fun mapValue!27203 () ValueCell!8095)

(declare-fun mapKey!27203 () (_ BitVec 32))

(assert (=> mapNonEmpty!27203 (= (arr!24163 _values!688) (store mapRest!27203 mapKey!27203 mapValue!27203))))

(declare-fun b!870307 () Bool)

(declare-fun res!591625 () Bool)

(assert (=> b!870307 (=> (not res!591625) (not e!484646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870307 (= res!591625 (validKeyInArray!0 k!854))))

(declare-fun b!870308 () Bool)

(assert (=> b!870308 (= e!484645 tp_is_empty!17069)))

(declare-fun b!870303 () Bool)

(declare-fun e!484642 () Bool)

(assert (=> b!870303 (= e!484642 (and e!484647 mapRes!27203))))

(declare-fun condMapEmpty!27203 () Bool)

(declare-fun mapDefault!27203 () ValueCell!8095)


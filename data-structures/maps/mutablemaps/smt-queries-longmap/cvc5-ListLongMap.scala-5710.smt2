; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74072 () Bool)

(assert start!74072)

(declare-fun b_free!14959 () Bool)

(declare-fun b_next!14959 () Bool)

(assert (=> start!74072 (= b_free!14959 (not b_next!14959))))

(declare-fun tp!52381 () Bool)

(declare-fun b_and!24729 () Bool)

(assert (=> start!74072 (= tp!52381 b_and!24729)))

(declare-fun b!870765 () Bool)

(declare-fun res!591974 () Bool)

(declare-fun e!484881 () Bool)

(assert (=> b!870765 (=> (not res!591974) (not e!484881))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870765 (= res!591974 (validMask!0 mask!1196))))

(declare-fun b!870766 () Bool)

(declare-fun e!484879 () Bool)

(declare-fun tp_is_empty!17095 () Bool)

(assert (=> b!870766 (= e!484879 tp_is_empty!17095)))

(declare-fun b!870767 () Bool)

(declare-fun res!591976 () Bool)

(assert (=> b!870767 (=> (not res!591976) (not e!484881))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50320 0))(
  ( (array!50321 (arr!24187 (Array (_ BitVec 32) (_ BitVec 64))) (size!24628 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50320)

(declare-datatypes ((V!27841 0))(
  ( (V!27842 (val!8595 Int)) )
))
(declare-datatypes ((ValueCell!8108 0))(
  ( (ValueCellFull!8108 (v!11016 V!27841)) (EmptyCell!8108) )
))
(declare-datatypes ((array!50322 0))(
  ( (array!50323 (arr!24188 (Array (_ BitVec 32) ValueCell!8108)) (size!24629 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50322)

(assert (=> b!870767 (= res!591976 (and (= (size!24629 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24628 _keys!868) (size!24629 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870768 () Bool)

(declare-fun res!591979 () Bool)

(assert (=> b!870768 (=> (not res!591979) (not e!484881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50320 (_ BitVec 32)) Bool)

(assert (=> b!870768 (= res!591979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27242 () Bool)

(declare-fun mapRes!27242 () Bool)

(assert (=> mapIsEmpty!27242 mapRes!27242))

(declare-fun b!870769 () Bool)

(declare-fun res!591973 () Bool)

(assert (=> b!870769 (=> (not res!591973) (not e!484881))))

(declare-datatypes ((List!17273 0))(
  ( (Nil!17270) (Cons!17269 (h!18400 (_ BitVec 64)) (t!24318 List!17273)) )
))
(declare-fun arrayNoDuplicates!0 (array!50320 (_ BitVec 32) List!17273) Bool)

(assert (=> b!870769 (= res!591973 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17270))))

(declare-fun b!870770 () Bool)

(declare-fun e!484877 () Bool)

(assert (=> b!870770 (= e!484877 (not true))))

(declare-fun v!557 () V!27841)

(declare-fun defaultEntry!696 () Int)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lt!395240 () array!50322)

(declare-fun minValue!654 () V!27841)

(declare-fun zeroValue!654 () V!27841)

(declare-datatypes ((tuple2!11418 0))(
  ( (tuple2!11419 (_1!5719 (_ BitVec 64)) (_2!5719 V!27841)) )
))
(declare-datatypes ((List!17274 0))(
  ( (Nil!17271) (Cons!17270 (h!18401 tuple2!11418) (t!24319 List!17274)) )
))
(declare-datatypes ((ListLongMap!10201 0))(
  ( (ListLongMap!10202 (toList!5116 List!17274)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3080 (array!50320 array!50322 (_ BitVec 32) (_ BitVec 32) V!27841 V!27841 (_ BitVec 32) Int) ListLongMap!10201)

(declare-fun +!2397 (ListLongMap!10201 tuple2!11418) ListLongMap!10201)

(assert (=> b!870770 (= (getCurrentListMapNoExtraKeys!3080 _keys!868 lt!395240 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2397 (getCurrentListMapNoExtraKeys!3080 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11419 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29844 0))(
  ( (Unit!29845) )
))
(declare-fun lt!395241 () Unit!29844)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!628 (array!50320 array!50322 (_ BitVec 32) (_ BitVec 32) V!27841 V!27841 (_ BitVec 32) (_ BitVec 64) V!27841 (_ BitVec 32) Int) Unit!29844)

(assert (=> b!870770 (= lt!395241 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!628 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27242 () Bool)

(declare-fun tp!52382 () Bool)

(declare-fun e!484878 () Bool)

(assert (=> mapNonEmpty!27242 (= mapRes!27242 (and tp!52382 e!484878))))

(declare-fun mapValue!27242 () ValueCell!8108)

(declare-fun mapKey!27242 () (_ BitVec 32))

(declare-fun mapRest!27242 () (Array (_ BitVec 32) ValueCell!8108))

(assert (=> mapNonEmpty!27242 (= (arr!24188 _values!688) (store mapRest!27242 mapKey!27242 mapValue!27242))))

(declare-fun res!591977 () Bool)

(assert (=> start!74072 (=> (not res!591977) (not e!484881))))

(assert (=> start!74072 (= res!591977 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24628 _keys!868))))))

(assert (=> start!74072 e!484881))

(assert (=> start!74072 tp_is_empty!17095))

(assert (=> start!74072 true))

(assert (=> start!74072 tp!52381))

(declare-fun array_inv!19072 (array!50320) Bool)

(assert (=> start!74072 (array_inv!19072 _keys!868)))

(declare-fun e!484876 () Bool)

(declare-fun array_inv!19073 (array!50322) Bool)

(assert (=> start!74072 (and (array_inv!19073 _values!688) e!484876)))

(declare-fun b!870771 () Bool)

(declare-fun res!591978 () Bool)

(assert (=> b!870771 (=> (not res!591978) (not e!484881))))

(assert (=> b!870771 (= res!591978 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24628 _keys!868))))))

(declare-fun b!870772 () Bool)

(assert (=> b!870772 (= e!484878 tp_is_empty!17095)))

(declare-fun b!870773 () Bool)

(declare-fun res!591975 () Bool)

(assert (=> b!870773 (=> (not res!591975) (not e!484881))))

(assert (=> b!870773 (= res!591975 (and (= (select (arr!24187 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!870774 () Bool)

(declare-fun res!591980 () Bool)

(assert (=> b!870774 (=> (not res!591980) (not e!484881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870774 (= res!591980 (validKeyInArray!0 k!854))))

(declare-fun b!870775 () Bool)

(assert (=> b!870775 (= e!484881 e!484877)))

(declare-fun res!591981 () Bool)

(assert (=> b!870775 (=> (not res!591981) (not e!484877))))

(assert (=> b!870775 (= res!591981 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395238 () ListLongMap!10201)

(assert (=> b!870775 (= lt!395238 (getCurrentListMapNoExtraKeys!3080 _keys!868 lt!395240 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!870775 (= lt!395240 (array!50323 (store (arr!24188 _values!688) i!612 (ValueCellFull!8108 v!557)) (size!24629 _values!688)))))

(declare-fun lt!395239 () ListLongMap!10201)

(assert (=> b!870775 (= lt!395239 (getCurrentListMapNoExtraKeys!3080 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870776 () Bool)

(assert (=> b!870776 (= e!484876 (and e!484879 mapRes!27242))))

(declare-fun condMapEmpty!27242 () Bool)

(declare-fun mapDefault!27242 () ValueCell!8108)


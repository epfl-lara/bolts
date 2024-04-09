; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74012 () Bool)

(assert start!74012)

(declare-fun b_free!14899 () Bool)

(declare-fun b_next!14899 () Bool)

(assert (=> start!74012 (= b_free!14899 (not b_next!14899))))

(declare-fun tp!52201 () Bool)

(declare-fun b_and!24669 () Bool)

(assert (=> start!74012 (= tp!52201 b_and!24669)))

(declare-fun b!869685 () Bool)

(declare-fun e!484339 () Bool)

(declare-fun e!484338 () Bool)

(assert (=> b!869685 (= e!484339 e!484338)))

(declare-fun res!591166 () Bool)

(assert (=> b!869685 (=> (not res!591166) (not e!484338))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869685 (= res!591166 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27761 0))(
  ( (V!27762 (val!8565 Int)) )
))
(declare-datatypes ((ValueCell!8078 0))(
  ( (ValueCellFull!8078 (v!10986 V!27761)) (EmptyCell!8078) )
))
(declare-datatypes ((array!50202 0))(
  ( (array!50203 (arr!24128 (Array (_ BitVec 32) ValueCell!8078)) (size!24569 (_ BitVec 32))) )
))
(declare-fun lt!394879 () array!50202)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11376 0))(
  ( (tuple2!11377 (_1!5698 (_ BitVec 64)) (_2!5698 V!27761)) )
))
(declare-datatypes ((List!17232 0))(
  ( (Nil!17229) (Cons!17228 (h!18359 tuple2!11376) (t!24277 List!17232)) )
))
(declare-datatypes ((ListLongMap!10159 0))(
  ( (ListLongMap!10160 (toList!5095 List!17232)) )
))
(declare-fun lt!394878 () ListLongMap!10159)

(declare-datatypes ((array!50204 0))(
  ( (array!50205 (arr!24129 (Array (_ BitVec 32) (_ BitVec 64))) (size!24570 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50204)

(declare-fun minValue!654 () V!27761)

(declare-fun zeroValue!654 () V!27761)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3059 (array!50204 array!50202 (_ BitVec 32) (_ BitVec 32) V!27761 V!27761 (_ BitVec 32) Int) ListLongMap!10159)

(assert (=> b!869685 (= lt!394878 (getCurrentListMapNoExtraKeys!3059 _keys!868 lt!394879 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27761)

(declare-fun _values!688 () array!50202)

(assert (=> b!869685 (= lt!394879 (array!50203 (store (arr!24128 _values!688) i!612 (ValueCellFull!8078 v!557)) (size!24569 _values!688)))))

(declare-fun lt!394881 () ListLongMap!10159)

(assert (=> b!869685 (= lt!394881 (getCurrentListMapNoExtraKeys!3059 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869686 () Bool)

(assert (=> b!869686 (= e!484338 (not true))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2379 (ListLongMap!10159 tuple2!11376) ListLongMap!10159)

(assert (=> b!869686 (= (getCurrentListMapNoExtraKeys!3059 _keys!868 lt!394879 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2379 (getCurrentListMapNoExtraKeys!3059 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11377 k!854 v!557)))))

(declare-datatypes ((Unit!29808 0))(
  ( (Unit!29809) )
))
(declare-fun lt!394880 () Unit!29808)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!610 (array!50204 array!50202 (_ BitVec 32) (_ BitVec 32) V!27761 V!27761 (_ BitVec 32) (_ BitVec 64) V!27761 (_ BitVec 32) Int) Unit!29808)

(assert (=> b!869686 (= lt!394880 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!610 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27152 () Bool)

(declare-fun mapRes!27152 () Bool)

(declare-fun tp!52202 () Bool)

(declare-fun e!484336 () Bool)

(assert (=> mapNonEmpty!27152 (= mapRes!27152 (and tp!52202 e!484336))))

(declare-fun mapRest!27152 () (Array (_ BitVec 32) ValueCell!8078))

(declare-fun mapValue!27152 () ValueCell!8078)

(declare-fun mapKey!27152 () (_ BitVec 32))

(assert (=> mapNonEmpty!27152 (= (arr!24128 _values!688) (store mapRest!27152 mapKey!27152 mapValue!27152))))

(declare-fun b!869687 () Bool)

(declare-fun res!591170 () Bool)

(assert (=> b!869687 (=> (not res!591170) (not e!484339))))

(assert (=> b!869687 (= res!591170 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24570 _keys!868))))))

(declare-fun b!869688 () Bool)

(declare-fun res!591163 () Bool)

(assert (=> b!869688 (=> (not res!591163) (not e!484339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869688 (= res!591163 (validMask!0 mask!1196))))

(declare-fun b!869689 () Bool)

(declare-fun res!591169 () Bool)

(assert (=> b!869689 (=> (not res!591169) (not e!484339))))

(assert (=> b!869689 (= res!591169 (and (= (select (arr!24129 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27152 () Bool)

(assert (=> mapIsEmpty!27152 mapRes!27152))

(declare-fun b!869690 () Bool)

(declare-fun tp_is_empty!17035 () Bool)

(assert (=> b!869690 (= e!484336 tp_is_empty!17035)))

(declare-fun b!869691 () Bool)

(declare-fun res!591171 () Bool)

(assert (=> b!869691 (=> (not res!591171) (not e!484339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50204 (_ BitVec 32)) Bool)

(assert (=> b!869691 (= res!591171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869692 () Bool)

(declare-fun e!484337 () Bool)

(assert (=> b!869692 (= e!484337 tp_is_empty!17035)))

(declare-fun b!869694 () Bool)

(declare-fun res!591165 () Bool)

(assert (=> b!869694 (=> (not res!591165) (not e!484339))))

(declare-datatypes ((List!17233 0))(
  ( (Nil!17230) (Cons!17229 (h!18360 (_ BitVec 64)) (t!24278 List!17233)) )
))
(declare-fun arrayNoDuplicates!0 (array!50204 (_ BitVec 32) List!17233) Bool)

(assert (=> b!869694 (= res!591165 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17230))))

(declare-fun b!869695 () Bool)

(declare-fun res!591167 () Bool)

(assert (=> b!869695 (=> (not res!591167) (not e!484339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869695 (= res!591167 (validKeyInArray!0 k!854))))

(declare-fun b!869696 () Bool)

(declare-fun res!591168 () Bool)

(assert (=> b!869696 (=> (not res!591168) (not e!484339))))

(assert (=> b!869696 (= res!591168 (and (= (size!24569 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24570 _keys!868) (size!24569 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!591164 () Bool)

(assert (=> start!74012 (=> (not res!591164) (not e!484339))))

(assert (=> start!74012 (= res!591164 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24570 _keys!868))))))

(assert (=> start!74012 e!484339))

(assert (=> start!74012 tp_is_empty!17035))

(assert (=> start!74012 true))

(assert (=> start!74012 tp!52201))

(declare-fun array_inv!19028 (array!50204) Bool)

(assert (=> start!74012 (array_inv!19028 _keys!868)))

(declare-fun e!484340 () Bool)

(declare-fun array_inv!19029 (array!50202) Bool)

(assert (=> start!74012 (and (array_inv!19029 _values!688) e!484340)))

(declare-fun b!869693 () Bool)

(assert (=> b!869693 (= e!484340 (and e!484337 mapRes!27152))))

(declare-fun condMapEmpty!27152 () Bool)

(declare-fun mapDefault!27152 () ValueCell!8078)


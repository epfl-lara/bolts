; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73994 () Bool)

(assert start!73994)

(declare-fun b_free!14881 () Bool)

(declare-fun b_next!14881 () Bool)

(assert (=> start!73994 (= b_free!14881 (not b_next!14881))))

(declare-fun tp!52148 () Bool)

(declare-fun b_and!24651 () Bool)

(assert (=> start!73994 (= tp!52148 b_and!24651)))

(declare-fun mapNonEmpty!27125 () Bool)

(declare-fun mapRes!27125 () Bool)

(declare-fun tp!52147 () Bool)

(declare-fun e!484175 () Bool)

(assert (=> mapNonEmpty!27125 (= mapRes!27125 (and tp!52147 e!484175))))

(declare-fun mapKey!27125 () (_ BitVec 32))

(declare-datatypes ((V!27737 0))(
  ( (V!27738 (val!8556 Int)) )
))
(declare-datatypes ((ValueCell!8069 0))(
  ( (ValueCellFull!8069 (v!10977 V!27737)) (EmptyCell!8069) )
))
(declare-datatypes ((array!50166 0))(
  ( (array!50167 (arr!24110 (Array (_ BitVec 32) ValueCell!8069)) (size!24551 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50166)

(declare-fun mapValue!27125 () ValueCell!8069)

(declare-fun mapRest!27125 () (Array (_ BitVec 32) ValueCell!8069))

(assert (=> mapNonEmpty!27125 (= (arr!24110 _values!688) (store mapRest!27125 mapKey!27125 mapValue!27125))))

(declare-fun b!869361 () Bool)

(declare-fun res!590924 () Bool)

(declare-fun e!484176 () Bool)

(assert (=> b!869361 (=> (not res!590924) (not e!484176))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50168 0))(
  ( (array!50169 (arr!24111 (Array (_ BitVec 32) (_ BitVec 64))) (size!24552 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50168)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!869361 (= res!590924 (and (= (select (arr!24111 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!869362 () Bool)

(declare-fun res!590923 () Bool)

(assert (=> b!869362 (=> (not res!590923) (not e!484176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869362 (= res!590923 (validKeyInArray!0 k!854))))

(declare-fun b!869363 () Bool)

(declare-fun e!484178 () Bool)

(declare-fun tp_is_empty!17017 () Bool)

(assert (=> b!869363 (= e!484178 tp_is_empty!17017)))

(declare-fun b!869364 () Bool)

(declare-fun res!590921 () Bool)

(assert (=> b!869364 (=> (not res!590921) (not e!484176))))

(declare-datatypes ((List!17218 0))(
  ( (Nil!17215) (Cons!17214 (h!18345 (_ BitVec 64)) (t!24263 List!17218)) )
))
(declare-fun arrayNoDuplicates!0 (array!50168 (_ BitVec 32) List!17218) Bool)

(assert (=> b!869364 (= res!590921 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17215))))

(declare-fun b!869365 () Bool)

(declare-fun e!484179 () Bool)

(assert (=> b!869365 (= e!484176 e!484179)))

(declare-fun res!590926 () Bool)

(assert (=> b!869365 (=> (not res!590926) (not e!484179))))

(assert (=> b!869365 (= res!590926 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394773 () array!50166)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27737)

(declare-datatypes ((tuple2!11360 0))(
  ( (tuple2!11361 (_1!5690 (_ BitVec 64)) (_2!5690 V!27737)) )
))
(declare-datatypes ((List!17219 0))(
  ( (Nil!17216) (Cons!17215 (h!18346 tuple2!11360) (t!24264 List!17219)) )
))
(declare-datatypes ((ListLongMap!10143 0))(
  ( (ListLongMap!10144 (toList!5087 List!17219)) )
))
(declare-fun lt!394771 () ListLongMap!10143)

(declare-fun zeroValue!654 () V!27737)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3051 (array!50168 array!50166 (_ BitVec 32) (_ BitVec 32) V!27737 V!27737 (_ BitVec 32) Int) ListLongMap!10143)

(assert (=> b!869365 (= lt!394771 (getCurrentListMapNoExtraKeys!3051 _keys!868 lt!394773 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27737)

(assert (=> b!869365 (= lt!394773 (array!50167 (store (arr!24110 _values!688) i!612 (ValueCellFull!8069 v!557)) (size!24551 _values!688)))))

(declare-fun lt!394772 () ListLongMap!10143)

(assert (=> b!869365 (= lt!394772 (getCurrentListMapNoExtraKeys!3051 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869366 () Bool)

(assert (=> b!869366 (= e!484179 (not true))))

(declare-fun +!2373 (ListLongMap!10143 tuple2!11360) ListLongMap!10143)

(assert (=> b!869366 (= (getCurrentListMapNoExtraKeys!3051 _keys!868 lt!394773 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2373 (getCurrentListMapNoExtraKeys!3051 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11361 k!854 v!557)))))

(declare-datatypes ((Unit!29796 0))(
  ( (Unit!29797) )
))
(declare-fun lt!394770 () Unit!29796)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!604 (array!50168 array!50166 (_ BitVec 32) (_ BitVec 32) V!27737 V!27737 (_ BitVec 32) (_ BitVec 64) V!27737 (_ BitVec 32) Int) Unit!29796)

(assert (=> b!869366 (= lt!394770 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!604 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869367 () Bool)

(declare-fun res!590928 () Bool)

(assert (=> b!869367 (=> (not res!590928) (not e!484176))))

(assert (=> b!869367 (= res!590928 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24552 _keys!868))))))

(declare-fun b!869368 () Bool)

(declare-fun res!590925 () Bool)

(assert (=> b!869368 (=> (not res!590925) (not e!484176))))

(assert (=> b!869368 (= res!590925 (and (= (size!24551 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24552 _keys!868) (size!24551 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869369 () Bool)

(declare-fun res!590920 () Bool)

(assert (=> b!869369 (=> (not res!590920) (not e!484176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869369 (= res!590920 (validMask!0 mask!1196))))

(declare-fun res!590927 () Bool)

(assert (=> start!73994 (=> (not res!590927) (not e!484176))))

(assert (=> start!73994 (= res!590927 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24552 _keys!868))))))

(assert (=> start!73994 e!484176))

(assert (=> start!73994 tp_is_empty!17017))

(assert (=> start!73994 true))

(assert (=> start!73994 tp!52148))

(declare-fun array_inv!19016 (array!50168) Bool)

(assert (=> start!73994 (array_inv!19016 _keys!868)))

(declare-fun e!484174 () Bool)

(declare-fun array_inv!19017 (array!50166) Bool)

(assert (=> start!73994 (and (array_inv!19017 _values!688) e!484174)))

(declare-fun b!869370 () Bool)

(declare-fun res!590922 () Bool)

(assert (=> b!869370 (=> (not res!590922) (not e!484176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50168 (_ BitVec 32)) Bool)

(assert (=> b!869370 (= res!590922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869371 () Bool)

(assert (=> b!869371 (= e!484174 (and e!484178 mapRes!27125))))

(declare-fun condMapEmpty!27125 () Bool)

(declare-fun mapDefault!27125 () ValueCell!8069)


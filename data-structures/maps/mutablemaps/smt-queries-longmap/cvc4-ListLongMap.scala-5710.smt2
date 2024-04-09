; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74076 () Bool)

(assert start!74076)

(declare-fun b_free!14963 () Bool)

(declare-fun b_next!14963 () Bool)

(assert (=> start!74076 (= b_free!14963 (not b_next!14963))))

(declare-fun tp!52393 () Bool)

(declare-fun b_and!24733 () Bool)

(assert (=> start!74076 (= tp!52393 b_and!24733)))

(declare-fun mapNonEmpty!27248 () Bool)

(declare-fun mapRes!27248 () Bool)

(declare-fun tp!52394 () Bool)

(declare-fun e!484912 () Bool)

(assert (=> mapNonEmpty!27248 (= mapRes!27248 (and tp!52394 e!484912))))

(declare-fun mapKey!27248 () (_ BitVec 32))

(declare-datatypes ((V!27845 0))(
  ( (V!27846 (val!8597 Int)) )
))
(declare-datatypes ((ValueCell!8110 0))(
  ( (ValueCellFull!8110 (v!11018 V!27845)) (EmptyCell!8110) )
))
(declare-fun mapValue!27248 () ValueCell!8110)

(declare-fun mapRest!27248 () (Array (_ BitVec 32) ValueCell!8110))

(declare-datatypes ((array!50328 0))(
  ( (array!50329 (arr!24191 (Array (_ BitVec 32) ValueCell!8110)) (size!24632 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50328)

(assert (=> mapNonEmpty!27248 (= (arr!24191 _values!688) (store mapRest!27248 mapKey!27248 mapValue!27248))))

(declare-fun mapIsEmpty!27248 () Bool)

(assert (=> mapIsEmpty!27248 mapRes!27248))

(declare-fun b!870837 () Bool)

(declare-fun e!484914 () Bool)

(assert (=> b!870837 (= e!484914 (not true))))

(declare-fun v!557 () V!27845)

(declare-fun lt!395265 () array!50328)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50330 0))(
  ( (array!50331 (arr!24192 (Array (_ BitVec 32) (_ BitVec 64))) (size!24633 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50330)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27845)

(declare-fun zeroValue!654 () V!27845)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11422 0))(
  ( (tuple2!11423 (_1!5721 (_ BitVec 64)) (_2!5721 V!27845)) )
))
(declare-datatypes ((List!17277 0))(
  ( (Nil!17274) (Cons!17273 (h!18404 tuple2!11422) (t!24322 List!17277)) )
))
(declare-datatypes ((ListLongMap!10205 0))(
  ( (ListLongMap!10206 (toList!5118 List!17277)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3082 (array!50330 array!50328 (_ BitVec 32) (_ BitVec 32) V!27845 V!27845 (_ BitVec 32) Int) ListLongMap!10205)

(declare-fun +!2399 (ListLongMap!10205 tuple2!11422) ListLongMap!10205)

(assert (=> b!870837 (= (getCurrentListMapNoExtraKeys!3082 _keys!868 lt!395265 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2399 (getCurrentListMapNoExtraKeys!3082 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11423 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29848 0))(
  ( (Unit!29849) )
))
(declare-fun lt!395263 () Unit!29848)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!630 (array!50330 array!50328 (_ BitVec 32) (_ BitVec 32) V!27845 V!27845 (_ BitVec 32) (_ BitVec 64) V!27845 (_ BitVec 32) Int) Unit!29848)

(assert (=> b!870837 (= lt!395263 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!630 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870838 () Bool)

(declare-fun e!484917 () Bool)

(assert (=> b!870838 (= e!484917 e!484914)))

(declare-fun res!592032 () Bool)

(assert (=> b!870838 (=> (not res!592032) (not e!484914))))

(assert (=> b!870838 (= res!592032 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395264 () ListLongMap!10205)

(assert (=> b!870838 (= lt!395264 (getCurrentListMapNoExtraKeys!3082 _keys!868 lt!395265 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!870838 (= lt!395265 (array!50329 (store (arr!24191 _values!688) i!612 (ValueCellFull!8110 v!557)) (size!24632 _values!688)))))

(declare-fun lt!395262 () ListLongMap!10205)

(assert (=> b!870838 (= lt!395262 (getCurrentListMapNoExtraKeys!3082 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870839 () Bool)

(declare-fun res!592028 () Bool)

(assert (=> b!870839 (=> (not res!592028) (not e!484917))))

(assert (=> b!870839 (= res!592028 (and (= (select (arr!24192 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!870840 () Bool)

(declare-fun res!592035 () Bool)

(assert (=> b!870840 (=> (not res!592035) (not e!484917))))

(declare-datatypes ((List!17278 0))(
  ( (Nil!17275) (Cons!17274 (h!18405 (_ BitVec 64)) (t!24323 List!17278)) )
))
(declare-fun arrayNoDuplicates!0 (array!50330 (_ BitVec 32) List!17278) Bool)

(assert (=> b!870840 (= res!592035 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17275))))

(declare-fun b!870841 () Bool)

(declare-fun res!592030 () Bool)

(assert (=> b!870841 (=> (not res!592030) (not e!484917))))

(assert (=> b!870841 (= res!592030 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24633 _keys!868))))))

(declare-fun b!870842 () Bool)

(declare-fun e!484915 () Bool)

(declare-fun tp_is_empty!17099 () Bool)

(assert (=> b!870842 (= e!484915 tp_is_empty!17099)))

(declare-fun b!870843 () Bool)

(declare-fun res!592027 () Bool)

(assert (=> b!870843 (=> (not res!592027) (not e!484917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50330 (_ BitVec 32)) Bool)

(assert (=> b!870843 (= res!592027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!870844 () Bool)

(declare-fun res!592033 () Bool)

(assert (=> b!870844 (=> (not res!592033) (not e!484917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870844 (= res!592033 (validMask!0 mask!1196))))

(declare-fun b!870845 () Bool)

(declare-fun res!592031 () Bool)

(assert (=> b!870845 (=> (not res!592031) (not e!484917))))

(assert (=> b!870845 (= res!592031 (and (= (size!24632 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24633 _keys!868) (size!24632 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!592029 () Bool)

(assert (=> start!74076 (=> (not res!592029) (not e!484917))))

(assert (=> start!74076 (= res!592029 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24633 _keys!868))))))

(assert (=> start!74076 e!484917))

(assert (=> start!74076 tp_is_empty!17099))

(assert (=> start!74076 true))

(assert (=> start!74076 tp!52393))

(declare-fun array_inv!19076 (array!50330) Bool)

(assert (=> start!74076 (array_inv!19076 _keys!868)))

(declare-fun e!484916 () Bool)

(declare-fun array_inv!19077 (array!50328) Bool)

(assert (=> start!74076 (and (array_inv!19077 _values!688) e!484916)))

(declare-fun b!870846 () Bool)

(assert (=> b!870846 (= e!484912 tp_is_empty!17099)))

(declare-fun b!870847 () Bool)

(assert (=> b!870847 (= e!484916 (and e!484915 mapRes!27248))))

(declare-fun condMapEmpty!27248 () Bool)

(declare-fun mapDefault!27248 () ValueCell!8110)


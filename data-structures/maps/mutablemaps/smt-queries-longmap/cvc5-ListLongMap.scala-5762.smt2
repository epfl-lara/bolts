; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74448 () Bool)

(assert start!74448)

(declare-fun b_free!15163 () Bool)

(declare-fun b_next!15163 () Bool)

(assert (=> start!74448 (= b_free!15163 (not b_next!15163))))

(declare-fun tp!53167 () Bool)

(declare-fun b_and!24997 () Bool)

(assert (=> start!74448 (= tp!53167 b_and!24997)))

(declare-fun res!595503 () Bool)

(declare-fun e!487787 () Bool)

(assert (=> start!74448 (=> (not res!595503) (not e!487787))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50922 0))(
  ( (array!50923 (arr!24484 (Array (_ BitVec 32) (_ BitVec 64))) (size!24925 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50922)

(assert (=> start!74448 (= res!595503 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24925 _keys!868))))))

(assert (=> start!74448 e!487787))

(declare-fun tp_is_empty!17407 () Bool)

(assert (=> start!74448 tp_is_empty!17407))

(assert (=> start!74448 true))

(assert (=> start!74448 tp!53167))

(declare-fun array_inv!19284 (array!50922) Bool)

(assert (=> start!74448 (array_inv!19284 _keys!868)))

(declare-datatypes ((V!28257 0))(
  ( (V!28258 (val!8751 Int)) )
))
(declare-datatypes ((ValueCell!8264 0))(
  ( (ValueCellFull!8264 (v!11180 V!28257)) (EmptyCell!8264) )
))
(declare-datatypes ((array!50924 0))(
  ( (array!50925 (arr!24485 (Array (_ BitVec 32) ValueCell!8264)) (size!24926 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50924)

(declare-fun e!487791 () Bool)

(declare-fun array_inv!19285 (array!50924) Bool)

(assert (=> start!74448 (and (array_inv!19285 _values!688) e!487791)))

(declare-fun mapNonEmpty!27722 () Bool)

(declare-fun mapRes!27722 () Bool)

(declare-fun tp!53168 () Bool)

(declare-fun e!487792 () Bool)

(assert (=> mapNonEmpty!27722 (= mapRes!27722 (and tp!53168 e!487792))))

(declare-fun mapRest!27722 () (Array (_ BitVec 32) ValueCell!8264))

(declare-fun mapValue!27722 () ValueCell!8264)

(declare-fun mapKey!27722 () (_ BitVec 32))

(assert (=> mapNonEmpty!27722 (= (arr!24485 _values!688) (store mapRest!27722 mapKey!27722 mapValue!27722))))

(declare-fun b!876191 () Bool)

(declare-fun res!595512 () Bool)

(assert (=> b!876191 (=> (not res!595512) (not e!487787))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50922 (_ BitVec 32)) Bool)

(assert (=> b!876191 (= res!595512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!876192 () Bool)

(declare-fun res!595508 () Bool)

(assert (=> b!876192 (=> (not res!595508) (not e!487787))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!876192 (= res!595508 (and (= (select (arr!24484 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun lt!396401 () array!50924)

(declare-datatypes ((tuple2!11576 0))(
  ( (tuple2!11577 (_1!5798 (_ BitVec 64)) (_2!5798 V!28257)) )
))
(declare-datatypes ((List!17459 0))(
  ( (Nil!17456) (Cons!17455 (h!18586 tuple2!11576) (t!24534 List!17459)) )
))
(declare-datatypes ((ListLongMap!10359 0))(
  ( (ListLongMap!10360 (toList!5195 List!17459)) )
))
(declare-fun call!38733 () ListLongMap!10359)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28257)

(declare-fun zeroValue!654 () V!28257)

(declare-fun bm!38729 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3157 (array!50922 array!50924 (_ BitVec 32) (_ BitVec 32) V!28257 V!28257 (_ BitVec 32) Int) ListLongMap!10359)

(assert (=> bm!38729 (= call!38733 (getCurrentListMapNoExtraKeys!3157 _keys!868 lt!396401 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876193 () Bool)

(declare-fun res!595511 () Bool)

(assert (=> b!876193 (=> (not res!595511) (not e!487787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876193 (= res!595511 (validKeyInArray!0 k!854))))

(declare-fun b!876194 () Bool)

(declare-fun e!487786 () Bool)

(assert (=> b!876194 (= e!487786 (bvslt from!1053 (size!24926 _values!688)))))

(declare-fun lt!396404 () ListLongMap!10359)

(declare-fun +!2432 (ListLongMap!10359 tuple2!11576) ListLongMap!10359)

(declare-fun get!12891 (ValueCell!8264 V!28257) V!28257)

(declare-fun dynLambda!1215 (Int (_ BitVec 64)) V!28257)

(assert (=> b!876194 (= lt!396404 (+!2432 (getCurrentListMapNoExtraKeys!3157 _keys!868 lt!396401 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11577 (select (arr!24484 _keys!868) from!1053) (get!12891 (select (arr!24485 lt!396401) from!1053) (dynLambda!1215 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!876195 () Bool)

(declare-fun res!595507 () Bool)

(assert (=> b!876195 (=> (not res!595507) (not e!487787))))

(assert (=> b!876195 (= res!595507 (and (= (size!24926 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24925 _keys!868) (size!24926 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!876196 () Bool)

(declare-fun e!487790 () Bool)

(assert (=> b!876196 (= e!487790 tp_is_empty!17407)))

(declare-fun call!38732 () ListLongMap!10359)

(declare-fun v!557 () V!28257)

(declare-fun e!487793 () Bool)

(declare-fun b!876197 () Bool)

(assert (=> b!876197 (= e!487793 (= call!38733 (+!2432 call!38732 (tuple2!11577 k!854 v!557))))))

(declare-fun b!876198 () Bool)

(assert (=> b!876198 (= e!487792 tp_is_empty!17407)))

(declare-fun b!876199 () Bool)

(declare-fun res!595504 () Bool)

(assert (=> b!876199 (=> (not res!595504) (not e!487787))))

(declare-datatypes ((List!17460 0))(
  ( (Nil!17457) (Cons!17456 (h!18587 (_ BitVec 64)) (t!24535 List!17460)) )
))
(declare-fun arrayNoDuplicates!0 (array!50922 (_ BitVec 32) List!17460) Bool)

(assert (=> b!876199 (= res!595504 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17457))))

(declare-fun b!876200 () Bool)

(assert (=> b!876200 (= e!487791 (and e!487790 mapRes!27722))))

(declare-fun condMapEmpty!27722 () Bool)

(declare-fun mapDefault!27722 () ValueCell!8264)


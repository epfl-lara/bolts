; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73470 () Bool)

(assert start!73470)

(declare-fun b_free!14357 () Bool)

(declare-fun b_next!14357 () Bool)

(assert (=> start!73470 (= b_free!14357 (not b_next!14357))))

(declare-fun tp!50575 () Bool)

(declare-fun b_and!23731 () Bool)

(assert (=> start!73470 (= tp!50575 b_and!23731)))

(declare-fun b!857400 () Bool)

(declare-fun e!477901 () Bool)

(declare-fun tp_is_empty!16493 () Bool)

(assert (=> b!857400 (= e!477901 tp_is_empty!16493)))

(declare-fun mapNonEmpty!26339 () Bool)

(declare-fun mapRes!26339 () Bool)

(declare-fun tp!50576 () Bool)

(assert (=> mapNonEmpty!26339 (= mapRes!26339 (and tp!50576 e!477901))))

(declare-datatypes ((V!27037 0))(
  ( (V!27038 (val!8294 Int)) )
))
(declare-datatypes ((ValueCell!7807 0))(
  ( (ValueCellFull!7807 (v!10715 V!27037)) (EmptyCell!7807) )
))
(declare-fun mapRest!26339 () (Array (_ BitVec 32) ValueCell!7807))

(declare-fun mapValue!26339 () ValueCell!7807)

(declare-fun mapKey!26339 () (_ BitVec 32))

(declare-datatypes ((array!49150 0))(
  ( (array!49151 (arr!23602 (Array (_ BitVec 32) ValueCell!7807)) (size!24043 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49150)

(assert (=> mapNonEmpty!26339 (= (arr!23602 _values!688) (store mapRest!26339 mapKey!26339 mapValue!26339))))

(declare-fun b!857402 () Bool)

(declare-fun res!582542 () Bool)

(declare-fun e!477906 () Bool)

(assert (=> b!857402 (=> (not res!582542) (not e!477906))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49152 0))(
  ( (array!49153 (arr!23603 (Array (_ BitVec 32) (_ BitVec 64))) (size!24044 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49152)

(assert (=> b!857402 (= res!582542 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24044 _keys!868))))))

(declare-fun b!857403 () Bool)

(declare-fun e!477902 () Bool)

(assert (=> b!857403 (= e!477906 e!477902)))

(declare-fun res!582544 () Bool)

(assert (=> b!857403 (=> (not res!582544) (not e!477902))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857403 (= res!582544 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10928 0))(
  ( (tuple2!10929 (_1!5474 (_ BitVec 64)) (_2!5474 V!27037)) )
))
(declare-datatypes ((List!16801 0))(
  ( (Nil!16798) (Cons!16797 (h!17928 tuple2!10928) (t!23450 List!16801)) )
))
(declare-datatypes ((ListLongMap!9711 0))(
  ( (ListLongMap!9712 (toList!4871 List!16801)) )
))
(declare-fun lt!386271 () ListLongMap!9711)

(declare-fun lt!386274 () array!49150)

(declare-fun minValue!654 () V!27037)

(declare-fun zeroValue!654 () V!27037)

(declare-fun getCurrentListMapNoExtraKeys!2853 (array!49152 array!49150 (_ BitVec 32) (_ BitVec 32) V!27037 V!27037 (_ BitVec 32) Int) ListLongMap!9711)

(assert (=> b!857403 (= lt!386271 (getCurrentListMapNoExtraKeys!2853 _keys!868 lt!386274 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27037)

(assert (=> b!857403 (= lt!386274 (array!49151 (store (arr!23602 _values!688) i!612 (ValueCellFull!7807 v!557)) (size!24043 _values!688)))))

(declare-fun lt!386273 () ListLongMap!9711)

(assert (=> b!857403 (= lt!386273 (getCurrentListMapNoExtraKeys!2853 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857404 () Bool)

(declare-fun res!582541 () Bool)

(assert (=> b!857404 (=> (not res!582541) (not e!477906))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!857404 (= res!582541 (and (= (select (arr!23603 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!857405 () Bool)

(declare-fun res!582545 () Bool)

(assert (=> b!857405 (=> (not res!582545) (not e!477906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857405 (= res!582545 (validMask!0 mask!1196))))

(declare-fun b!857406 () Bool)

(assert (=> b!857406 (= e!477902 (not true))))

(declare-fun +!2179 (ListLongMap!9711 tuple2!10928) ListLongMap!9711)

(assert (=> b!857406 (= (getCurrentListMapNoExtraKeys!2853 _keys!868 lt!386274 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2179 (getCurrentListMapNoExtraKeys!2853 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10929 k!854 v!557)))))

(declare-datatypes ((Unit!29200 0))(
  ( (Unit!29201) )
))
(declare-fun lt!386272 () Unit!29200)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!439 (array!49152 array!49150 (_ BitVec 32) (_ BitVec 32) V!27037 V!27037 (_ BitVec 32) (_ BitVec 64) V!27037 (_ BitVec 32) Int) Unit!29200)

(assert (=> b!857406 (= lt!386272 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!439 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857407 () Bool)

(declare-fun res!582543 () Bool)

(assert (=> b!857407 (=> (not res!582543) (not e!477906))))

(assert (=> b!857407 (= res!582543 (and (= (size!24043 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24044 _keys!868) (size!24043 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857408 () Bool)

(declare-fun res!582547 () Bool)

(assert (=> b!857408 (=> (not res!582547) (not e!477906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49152 (_ BitVec 32)) Bool)

(assert (=> b!857408 (= res!582547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857401 () Bool)

(declare-fun e!477904 () Bool)

(declare-fun e!477903 () Bool)

(assert (=> b!857401 (= e!477904 (and e!477903 mapRes!26339))))

(declare-fun condMapEmpty!26339 () Bool)

(declare-fun mapDefault!26339 () ValueCell!7807)


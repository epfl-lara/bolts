; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73468 () Bool)

(assert start!73468)

(declare-fun b_free!14355 () Bool)

(declare-fun b_next!14355 () Bool)

(assert (=> start!73468 (= b_free!14355 (not b_next!14355))))

(declare-fun tp!50569 () Bool)

(declare-fun b_and!23729 () Bool)

(assert (=> start!73468 (= tp!50569 b_and!23729)))

(declare-fun mapNonEmpty!26336 () Bool)

(declare-fun mapRes!26336 () Bool)

(declare-fun tp!50570 () Bool)

(declare-fun e!477883 () Bool)

(assert (=> mapNonEmpty!26336 (= mapRes!26336 (and tp!50570 e!477883))))

(declare-fun mapKey!26336 () (_ BitVec 32))

(declare-datatypes ((V!27035 0))(
  ( (V!27036 (val!8293 Int)) )
))
(declare-datatypes ((ValueCell!7806 0))(
  ( (ValueCellFull!7806 (v!10714 V!27035)) (EmptyCell!7806) )
))
(declare-fun mapValue!26336 () ValueCell!7806)

(declare-datatypes ((array!49146 0))(
  ( (array!49147 (arr!23600 (Array (_ BitVec 32) ValueCell!7806)) (size!24041 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49146)

(declare-fun mapRest!26336 () (Array (_ BitVec 32) ValueCell!7806))

(assert (=> mapNonEmpty!26336 (= (arr!23600 _values!688) (store mapRest!26336 mapKey!26336 mapValue!26336))))

(declare-fun b!857364 () Bool)

(declare-fun res!582515 () Bool)

(declare-fun e!477885 () Bool)

(assert (=> b!857364 (=> (not res!582515) (not e!477885))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49148 0))(
  ( (array!49149 (arr!23601 (Array (_ BitVec 32) (_ BitVec 64))) (size!24042 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49148)

(assert (=> b!857364 (= res!582515 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24042 _keys!868))))))

(declare-fun b!857365 () Bool)

(declare-fun e!477884 () Bool)

(assert (=> b!857365 (= e!477884 (not true))))

(declare-fun v!557 () V!27035)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27035)

(declare-fun zeroValue!654 () V!27035)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lt!386261 () array!49146)

(declare-datatypes ((tuple2!10926 0))(
  ( (tuple2!10927 (_1!5473 (_ BitVec 64)) (_2!5473 V!27035)) )
))
(declare-datatypes ((List!16799 0))(
  ( (Nil!16796) (Cons!16795 (h!17926 tuple2!10926) (t!23448 List!16799)) )
))
(declare-datatypes ((ListLongMap!9709 0))(
  ( (ListLongMap!9710 (toList!4870 List!16799)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2852 (array!49148 array!49146 (_ BitVec 32) (_ BitVec 32) V!27035 V!27035 (_ BitVec 32) Int) ListLongMap!9709)

(declare-fun +!2178 (ListLongMap!9709 tuple2!10926) ListLongMap!9709)

(assert (=> b!857365 (= (getCurrentListMapNoExtraKeys!2852 _keys!868 lt!386261 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2178 (getCurrentListMapNoExtraKeys!2852 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10927 k0!854 v!557)))))

(declare-datatypes ((Unit!29198 0))(
  ( (Unit!29199) )
))
(declare-fun lt!386260 () Unit!29198)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!438 (array!49148 array!49146 (_ BitVec 32) (_ BitVec 32) V!27035 V!27035 (_ BitVec 32) (_ BitVec 64) V!27035 (_ BitVec 32) Int) Unit!29198)

(assert (=> b!857365 (= lt!386260 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!438 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857366 () Bool)

(declare-fun res!582517 () Bool)

(assert (=> b!857366 (=> (not res!582517) (not e!477885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857366 (= res!582517 (validKeyInArray!0 k0!854))))

(declare-fun b!857367 () Bool)

(declare-fun tp_is_empty!16491 () Bool)

(assert (=> b!857367 (= e!477883 tp_is_empty!16491)))

(declare-fun res!582522 () Bool)

(assert (=> start!73468 (=> (not res!582522) (not e!477885))))

(assert (=> start!73468 (= res!582522 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24042 _keys!868))))))

(assert (=> start!73468 e!477885))

(assert (=> start!73468 tp_is_empty!16491))

(assert (=> start!73468 true))

(assert (=> start!73468 tp!50569))

(declare-fun array_inv!18678 (array!49148) Bool)

(assert (=> start!73468 (array_inv!18678 _keys!868)))

(declare-fun e!477886 () Bool)

(declare-fun array_inv!18679 (array!49146) Bool)

(assert (=> start!73468 (and (array_inv!18679 _values!688) e!477886)))

(declare-fun b!857368 () Bool)

(assert (=> b!857368 (= e!477885 e!477884)))

(declare-fun res!582519 () Bool)

(assert (=> b!857368 (=> (not res!582519) (not e!477884))))

(assert (=> b!857368 (= res!582519 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386259 () ListLongMap!9709)

(assert (=> b!857368 (= lt!386259 (getCurrentListMapNoExtraKeys!2852 _keys!868 lt!386261 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!857368 (= lt!386261 (array!49147 (store (arr!23600 _values!688) i!612 (ValueCellFull!7806 v!557)) (size!24041 _values!688)))))

(declare-fun lt!386262 () ListLongMap!9709)

(assert (=> b!857368 (= lt!386262 (getCurrentListMapNoExtraKeys!2852 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857369 () Bool)

(declare-fun res!582521 () Bool)

(assert (=> b!857369 (=> (not res!582521) (not e!477885))))

(declare-datatypes ((List!16800 0))(
  ( (Nil!16797) (Cons!16796 (h!17927 (_ BitVec 64)) (t!23449 List!16800)) )
))
(declare-fun arrayNoDuplicates!0 (array!49148 (_ BitVec 32) List!16800) Bool)

(assert (=> b!857369 (= res!582521 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16797))))

(declare-fun b!857370 () Bool)

(declare-fun res!582518 () Bool)

(assert (=> b!857370 (=> (not res!582518) (not e!477885))))

(assert (=> b!857370 (= res!582518 (and (= (size!24041 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24042 _keys!868) (size!24041 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857371 () Bool)

(declare-fun res!582516 () Bool)

(assert (=> b!857371 (=> (not res!582516) (not e!477885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49148 (_ BitVec 32)) Bool)

(assert (=> b!857371 (= res!582516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857372 () Bool)

(declare-fun e!477887 () Bool)

(assert (=> b!857372 (= e!477887 tp_is_empty!16491)))

(declare-fun b!857373 () Bool)

(declare-fun res!582520 () Bool)

(assert (=> b!857373 (=> (not res!582520) (not e!477885))))

(assert (=> b!857373 (= res!582520 (and (= (select (arr!23601 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!857374 () Bool)

(declare-fun res!582514 () Bool)

(assert (=> b!857374 (=> (not res!582514) (not e!477885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857374 (= res!582514 (validMask!0 mask!1196))))

(declare-fun b!857375 () Bool)

(assert (=> b!857375 (= e!477886 (and e!477887 mapRes!26336))))

(declare-fun condMapEmpty!26336 () Bool)

(declare-fun mapDefault!26336 () ValueCell!7806)

(assert (=> b!857375 (= condMapEmpty!26336 (= (arr!23600 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7806)) mapDefault!26336)))))

(declare-fun mapIsEmpty!26336 () Bool)

(assert (=> mapIsEmpty!26336 mapRes!26336))

(assert (= (and start!73468 res!582522) b!857374))

(assert (= (and b!857374 res!582514) b!857370))

(assert (= (and b!857370 res!582518) b!857371))

(assert (= (and b!857371 res!582516) b!857369))

(assert (= (and b!857369 res!582521) b!857364))

(assert (= (and b!857364 res!582515) b!857366))

(assert (= (and b!857366 res!582517) b!857373))

(assert (= (and b!857373 res!582520) b!857368))

(assert (= (and b!857368 res!582519) b!857365))

(assert (= (and b!857375 condMapEmpty!26336) mapIsEmpty!26336))

(assert (= (and b!857375 (not condMapEmpty!26336)) mapNonEmpty!26336))

(get-info :version)

(assert (= (and mapNonEmpty!26336 ((_ is ValueCellFull!7806) mapValue!26336)) b!857367))

(assert (= (and b!857375 ((_ is ValueCellFull!7806) mapDefault!26336)) b!857372))

(assert (= start!73468 b!857375))

(declare-fun m!798235 () Bool)

(assert (=> mapNonEmpty!26336 m!798235))

(declare-fun m!798237 () Bool)

(assert (=> b!857365 m!798237))

(declare-fun m!798239 () Bool)

(assert (=> b!857365 m!798239))

(assert (=> b!857365 m!798239))

(declare-fun m!798241 () Bool)

(assert (=> b!857365 m!798241))

(declare-fun m!798243 () Bool)

(assert (=> b!857365 m!798243))

(declare-fun m!798245 () Bool)

(assert (=> b!857373 m!798245))

(declare-fun m!798247 () Bool)

(assert (=> b!857366 m!798247))

(declare-fun m!798249 () Bool)

(assert (=> b!857371 m!798249))

(declare-fun m!798251 () Bool)

(assert (=> b!857374 m!798251))

(declare-fun m!798253 () Bool)

(assert (=> start!73468 m!798253))

(declare-fun m!798255 () Bool)

(assert (=> start!73468 m!798255))

(declare-fun m!798257 () Bool)

(assert (=> b!857368 m!798257))

(declare-fun m!798259 () Bool)

(assert (=> b!857368 m!798259))

(declare-fun m!798261 () Bool)

(assert (=> b!857368 m!798261))

(declare-fun m!798263 () Bool)

(assert (=> b!857369 m!798263))

(check-sat (not b!857368) (not b!857371) (not b!857374) (not b!857369) (not b!857366) b_and!23729 tp_is_empty!16491 (not b!857365) (not start!73468) (not mapNonEmpty!26336) (not b_next!14355))
(check-sat b_and!23729 (not b_next!14355))

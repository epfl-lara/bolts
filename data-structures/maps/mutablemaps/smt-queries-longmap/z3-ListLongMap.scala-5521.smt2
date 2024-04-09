; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72940 () Bool)

(assert start!72940)

(declare-fun b_free!13827 () Bool)

(declare-fun b_next!13827 () Bool)

(assert (=> start!72940 (= b_free!13827 (not b_next!13827))))

(declare-fun tp!48985 () Bool)

(declare-fun b_and!22931 () Bool)

(assert (=> start!72940 (= tp!48985 b_and!22931)))

(declare-fun mapNonEmpty!25544 () Bool)

(declare-fun mapRes!25544 () Bool)

(declare-fun tp!48986 () Bool)

(declare-fun e!472407 () Bool)

(assert (=> mapNonEmpty!25544 (= mapRes!25544 (and tp!48986 e!472407))))

(declare-fun mapKey!25544 () (_ BitVec 32))

(declare-datatypes ((V!26331 0))(
  ( (V!26332 (val!8029 Int)) )
))
(declare-datatypes ((ValueCell!7542 0))(
  ( (ValueCellFull!7542 (v!10450 V!26331)) (EmptyCell!7542) )
))
(declare-fun mapValue!25544 () ValueCell!7542)

(declare-datatypes ((array!48124 0))(
  ( (array!48125 (arr!23089 (Array (_ BitVec 32) ValueCell!7542)) (size!23530 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48124)

(declare-fun mapRest!25544 () (Array (_ BitVec 32) ValueCell!7542))

(assert (=> mapNonEmpty!25544 (= (arr!23089 _values!688) (store mapRest!25544 mapKey!25544 mapValue!25544))))

(declare-fun b!846379 () Bool)

(declare-fun res!575153 () Bool)

(declare-fun e!472409 () Bool)

(assert (=> b!846379 (=> (not res!575153) (not e!472409))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48126 0))(
  ( (array!48127 (arr!23090 (Array (_ BitVec 32) (_ BitVec 64))) (size!23531 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48126)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!846379 (= res!575153 (and (= (select (arr!23090 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!575149 () Bool)

(assert (=> start!72940 (=> (not res!575149) (not e!472409))))

(assert (=> start!72940 (= res!575149 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23531 _keys!868))))))

(assert (=> start!72940 e!472409))

(declare-fun tp_is_empty!15963 () Bool)

(assert (=> start!72940 tp_is_empty!15963))

(assert (=> start!72940 true))

(assert (=> start!72940 tp!48985))

(declare-fun array_inv!18322 (array!48126) Bool)

(assert (=> start!72940 (array_inv!18322 _keys!868)))

(declare-fun e!472410 () Bool)

(declare-fun array_inv!18323 (array!48124) Bool)

(assert (=> start!72940 (and (array_inv!18323 _values!688) e!472410)))

(declare-fun mapIsEmpty!25544 () Bool)

(assert (=> mapIsEmpty!25544 mapRes!25544))

(declare-fun b!846380 () Bool)

(assert (=> b!846380 (= e!472407 tp_is_empty!15963)))

(declare-fun b!846381 () Bool)

(declare-fun res!575152 () Bool)

(assert (=> b!846381 (=> (not res!575152) (not e!472409))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846381 (= res!575152 (validKeyInArray!0 k0!854))))

(declare-fun b!846382 () Bool)

(declare-fun res!575147 () Bool)

(assert (=> b!846382 (=> (not res!575147) (not e!472409))))

(assert (=> b!846382 (= res!575147 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23531 _keys!868))))))

(declare-fun b!846383 () Bool)

(assert (=> b!846383 (= e!472409 false)))

(declare-fun v!557 () V!26331)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10506 0))(
  ( (tuple2!10507 (_1!5263 (_ BitVec 64)) (_2!5263 V!26331)) )
))
(declare-datatypes ((List!16417 0))(
  ( (Nil!16414) (Cons!16413 (h!17544 tuple2!10506) (t!22796 List!16417)) )
))
(declare-datatypes ((ListLongMap!9289 0))(
  ( (ListLongMap!9290 (toList!4660 List!16417)) )
))
(declare-fun lt!381497 () ListLongMap!9289)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26331)

(declare-fun zeroValue!654 () V!26331)

(declare-fun getCurrentListMapNoExtraKeys!2649 (array!48126 array!48124 (_ BitVec 32) (_ BitVec 32) V!26331 V!26331 (_ BitVec 32) Int) ListLongMap!9289)

(assert (=> b!846383 (= lt!381497 (getCurrentListMapNoExtraKeys!2649 _keys!868 (array!48125 (store (arr!23089 _values!688) i!612 (ValueCellFull!7542 v!557)) (size!23530 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381498 () ListLongMap!9289)

(assert (=> b!846383 (= lt!381498 (getCurrentListMapNoExtraKeys!2649 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846384 () Bool)

(declare-fun e!472406 () Bool)

(assert (=> b!846384 (= e!472410 (and e!472406 mapRes!25544))))

(declare-fun condMapEmpty!25544 () Bool)

(declare-fun mapDefault!25544 () ValueCell!7542)

(assert (=> b!846384 (= condMapEmpty!25544 (= (arr!23089 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7542)) mapDefault!25544)))))

(declare-fun b!846385 () Bool)

(declare-fun res!575151 () Bool)

(assert (=> b!846385 (=> (not res!575151) (not e!472409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846385 (= res!575151 (validMask!0 mask!1196))))

(declare-fun b!846386 () Bool)

(declare-fun res!575148 () Bool)

(assert (=> b!846386 (=> (not res!575148) (not e!472409))))

(assert (=> b!846386 (= res!575148 (and (= (size!23530 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23531 _keys!868) (size!23530 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846387 () Bool)

(declare-fun res!575154 () Bool)

(assert (=> b!846387 (=> (not res!575154) (not e!472409))))

(declare-datatypes ((List!16418 0))(
  ( (Nil!16415) (Cons!16414 (h!17545 (_ BitVec 64)) (t!22797 List!16418)) )
))
(declare-fun arrayNoDuplicates!0 (array!48126 (_ BitVec 32) List!16418) Bool)

(assert (=> b!846387 (= res!575154 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16415))))

(declare-fun b!846388 () Bool)

(assert (=> b!846388 (= e!472406 tp_is_empty!15963)))

(declare-fun b!846389 () Bool)

(declare-fun res!575150 () Bool)

(assert (=> b!846389 (=> (not res!575150) (not e!472409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48126 (_ BitVec 32)) Bool)

(assert (=> b!846389 (= res!575150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72940 res!575149) b!846385))

(assert (= (and b!846385 res!575151) b!846386))

(assert (= (and b!846386 res!575148) b!846389))

(assert (= (and b!846389 res!575150) b!846387))

(assert (= (and b!846387 res!575154) b!846382))

(assert (= (and b!846382 res!575147) b!846381))

(assert (= (and b!846381 res!575152) b!846379))

(assert (= (and b!846379 res!575153) b!846383))

(assert (= (and b!846384 condMapEmpty!25544) mapIsEmpty!25544))

(assert (= (and b!846384 (not condMapEmpty!25544)) mapNonEmpty!25544))

(get-info :version)

(assert (= (and mapNonEmpty!25544 ((_ is ValueCellFull!7542) mapValue!25544)) b!846380))

(assert (= (and b!846384 ((_ is ValueCellFull!7542) mapDefault!25544)) b!846388))

(assert (= start!72940 b!846384))

(declare-fun m!787857 () Bool)

(assert (=> b!846389 m!787857))

(declare-fun m!787859 () Bool)

(assert (=> b!846385 m!787859))

(declare-fun m!787861 () Bool)

(assert (=> b!846383 m!787861))

(declare-fun m!787863 () Bool)

(assert (=> b!846383 m!787863))

(declare-fun m!787865 () Bool)

(assert (=> b!846383 m!787865))

(declare-fun m!787867 () Bool)

(assert (=> b!846379 m!787867))

(declare-fun m!787869 () Bool)

(assert (=> b!846387 m!787869))

(declare-fun m!787871 () Bool)

(assert (=> b!846381 m!787871))

(declare-fun m!787873 () Bool)

(assert (=> mapNonEmpty!25544 m!787873))

(declare-fun m!787875 () Bool)

(assert (=> start!72940 m!787875))

(declare-fun m!787877 () Bool)

(assert (=> start!72940 m!787877))

(check-sat (not mapNonEmpty!25544) (not b!846387) (not b!846383) tp_is_empty!15963 b_and!22931 (not b_next!13827) (not b!846381) (not b!846389) (not b!846385) (not start!72940))
(check-sat b_and!22931 (not b_next!13827))

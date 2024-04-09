; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72448 () Bool)

(assert start!72448)

(declare-fun b_free!13605 () Bool)

(declare-fun b_next!13605 () Bool)

(assert (=> start!72448 (= b_free!13605 (not b_next!13605))))

(declare-fun tp!47915 () Bool)

(declare-fun b_and!22709 () Bool)

(assert (=> start!72448 (= tp!47915 b_and!22709)))

(declare-fun mapIsEmpty!24806 () Bool)

(declare-fun mapRes!24806 () Bool)

(assert (=> mapIsEmpty!24806 mapRes!24806))

(declare-fun b!839459 () Bool)

(declare-fun e!468505 () Bool)

(assert (=> b!839459 (= e!468505 (not true))))

(declare-fun e!468507 () Bool)

(assert (=> b!839459 e!468507))

(declare-fun c!91185 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839459 (= c!91185 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28832 0))(
  ( (Unit!28833) )
))
(declare-fun lt!380718 () Unit!28832)

(declare-datatypes ((V!25675 0))(
  ( (V!25676 (val!7783 Int)) )
))
(declare-fun v!557 () V!25675)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!47194 0))(
  ( (array!47195 (arr!22624 (Array (_ BitVec 32) (_ BitVec 64))) (size!23065 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47194)

(declare-datatypes ((ValueCell!7296 0))(
  ( (ValueCellFull!7296 (v!10204 V!25675)) (EmptyCell!7296) )
))
(declare-datatypes ((array!47196 0))(
  ( (array!47197 (arr!22625 (Array (_ BitVec 32) ValueCell!7296)) (size!23066 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47196)

(declare-fun minValue!654 () V!25675)

(declare-fun zeroValue!654 () V!25675)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!265 (array!47194 array!47196 (_ BitVec 32) (_ BitVec 32) V!25675 V!25675 (_ BitVec 32) (_ BitVec 64) V!25675 (_ BitVec 32) Int) Unit!28832)

(assert (=> b!839459 (= lt!380718 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!265 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839460 () Bool)

(declare-datatypes ((tuple2!10328 0))(
  ( (tuple2!10329 (_1!5174 (_ BitVec 64)) (_2!5174 V!25675)) )
))
(declare-datatypes ((List!16160 0))(
  ( (Nil!16157) (Cons!16156 (h!17287 tuple2!10328) (t!22539 List!16160)) )
))
(declare-datatypes ((ListLongMap!9111 0))(
  ( (ListLongMap!9112 (toList!4571 List!16160)) )
))
(declare-fun call!37048 () ListLongMap!9111)

(declare-fun call!37049 () ListLongMap!9111)

(assert (=> b!839460 (= e!468507 (= call!37048 call!37049))))

(declare-fun b!839461 () Bool)

(declare-fun res!570864 () Bool)

(assert (=> b!839461 (=> (not res!570864) (not e!468505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839461 (= res!570864 (validKeyInArray!0 k0!854))))

(declare-fun b!839463 () Bool)

(declare-fun res!570867 () Bool)

(assert (=> b!839463 (=> (not res!570867) (not e!468505))))

(assert (=> b!839463 (= res!570867 (and (= (select (arr!22624 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23065 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!839464 () Bool)

(declare-fun e!468509 () Bool)

(declare-fun e!468508 () Bool)

(assert (=> b!839464 (= e!468509 (and e!468508 mapRes!24806))))

(declare-fun condMapEmpty!24806 () Bool)

(declare-fun mapDefault!24806 () ValueCell!7296)

(assert (=> b!839464 (= condMapEmpty!24806 (= (arr!22625 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7296)) mapDefault!24806)))))

(declare-fun b!839465 () Bool)

(declare-fun e!468510 () Bool)

(declare-fun tp_is_empty!15471 () Bool)

(assert (=> b!839465 (= e!468510 tp_is_empty!15471)))

(declare-fun b!839466 () Bool)

(declare-fun res!570866 () Bool)

(assert (=> b!839466 (=> (not res!570866) (not e!468505))))

(declare-datatypes ((List!16161 0))(
  ( (Nil!16158) (Cons!16157 (h!17288 (_ BitVec 64)) (t!22540 List!16161)) )
))
(declare-fun arrayNoDuplicates!0 (array!47194 (_ BitVec 32) List!16161) Bool)

(assert (=> b!839466 (= res!570866 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16158))))

(declare-fun b!839467 () Bool)

(declare-fun res!570863 () Bool)

(assert (=> b!839467 (=> (not res!570863) (not e!468505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839467 (= res!570863 (validMask!0 mask!1196))))

(declare-fun b!839468 () Bool)

(declare-fun +!1988 (ListLongMap!9111 tuple2!10328) ListLongMap!9111)

(assert (=> b!839468 (= e!468507 (= call!37048 (+!1988 call!37049 (tuple2!10329 k0!854 v!557))))))

(declare-fun mapNonEmpty!24806 () Bool)

(declare-fun tp!47914 () Bool)

(assert (=> mapNonEmpty!24806 (= mapRes!24806 (and tp!47914 e!468510))))

(declare-fun mapValue!24806 () ValueCell!7296)

(declare-fun mapRest!24806 () (Array (_ BitVec 32) ValueCell!7296))

(declare-fun mapKey!24806 () (_ BitVec 32))

(assert (=> mapNonEmpty!24806 (= (arr!22625 _values!688) (store mapRest!24806 mapKey!24806 mapValue!24806))))

(declare-fun bm!37045 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2564 (array!47194 array!47196 (_ BitVec 32) (_ BitVec 32) V!25675 V!25675 (_ BitVec 32) Int) ListLongMap!9111)

(assert (=> bm!37045 (= call!37049 (getCurrentListMapNoExtraKeys!2564 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839469 () Bool)

(declare-fun res!570868 () Bool)

(assert (=> b!839469 (=> (not res!570868) (not e!468505))))

(assert (=> b!839469 (= res!570868 (and (= (size!23066 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23065 _keys!868) (size!23066 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37046 () Bool)

(assert (=> bm!37046 (= call!37048 (getCurrentListMapNoExtraKeys!2564 _keys!868 (array!47197 (store (arr!22625 _values!688) i!612 (ValueCellFull!7296 v!557)) (size!23066 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839470 () Bool)

(assert (=> b!839470 (= e!468508 tp_is_empty!15471)))

(declare-fun b!839471 () Bool)

(declare-fun res!570870 () Bool)

(assert (=> b!839471 (=> (not res!570870) (not e!468505))))

(assert (=> b!839471 (= res!570870 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23065 _keys!868))))))

(declare-fun res!570865 () Bool)

(assert (=> start!72448 (=> (not res!570865) (not e!468505))))

(assert (=> start!72448 (= res!570865 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23065 _keys!868))))))

(assert (=> start!72448 e!468505))

(assert (=> start!72448 tp_is_empty!15471))

(assert (=> start!72448 true))

(assert (=> start!72448 tp!47915))

(declare-fun array_inv!17994 (array!47194) Bool)

(assert (=> start!72448 (array_inv!17994 _keys!868)))

(declare-fun array_inv!17995 (array!47196) Bool)

(assert (=> start!72448 (and (array_inv!17995 _values!688) e!468509)))

(declare-fun b!839462 () Bool)

(declare-fun res!570869 () Bool)

(assert (=> b!839462 (=> (not res!570869) (not e!468505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47194 (_ BitVec 32)) Bool)

(assert (=> b!839462 (= res!570869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72448 res!570865) b!839467))

(assert (= (and b!839467 res!570863) b!839469))

(assert (= (and b!839469 res!570868) b!839462))

(assert (= (and b!839462 res!570869) b!839466))

(assert (= (and b!839466 res!570866) b!839471))

(assert (= (and b!839471 res!570870) b!839461))

(assert (= (and b!839461 res!570864) b!839463))

(assert (= (and b!839463 res!570867) b!839459))

(assert (= (and b!839459 c!91185) b!839468))

(assert (= (and b!839459 (not c!91185)) b!839460))

(assert (= (or b!839468 b!839460) bm!37046))

(assert (= (or b!839468 b!839460) bm!37045))

(assert (= (and b!839464 condMapEmpty!24806) mapIsEmpty!24806))

(assert (= (and b!839464 (not condMapEmpty!24806)) mapNonEmpty!24806))

(get-info :version)

(assert (= (and mapNonEmpty!24806 ((_ is ValueCellFull!7296) mapValue!24806)) b!839465))

(assert (= (and b!839464 ((_ is ValueCellFull!7296) mapDefault!24806)) b!839470))

(assert (= start!72448 b!839464))

(declare-fun m!783619 () Bool)

(assert (=> b!839467 m!783619))

(declare-fun m!783621 () Bool)

(assert (=> b!839461 m!783621))

(declare-fun m!783623 () Bool)

(assert (=> b!839459 m!783623))

(declare-fun m!783625 () Bool)

(assert (=> start!72448 m!783625))

(declare-fun m!783627 () Bool)

(assert (=> start!72448 m!783627))

(declare-fun m!783629 () Bool)

(assert (=> b!839466 m!783629))

(declare-fun m!783631 () Bool)

(assert (=> b!839468 m!783631))

(declare-fun m!783633 () Bool)

(assert (=> b!839463 m!783633))

(declare-fun m!783635 () Bool)

(assert (=> mapNonEmpty!24806 m!783635))

(declare-fun m!783637 () Bool)

(assert (=> bm!37046 m!783637))

(declare-fun m!783639 () Bool)

(assert (=> bm!37046 m!783639))

(declare-fun m!783641 () Bool)

(assert (=> b!839462 m!783641))

(declare-fun m!783643 () Bool)

(assert (=> bm!37045 m!783643))

(check-sat (not b_next!13605) (not b!839468) (not mapNonEmpty!24806) (not b!839461) tp_is_empty!15471 (not bm!37046) (not bm!37045) (not b!839459) (not b!839466) (not start!72448) (not b!839462) (not b!839467) b_and!22709)
(check-sat b_and!22709 (not b_next!13605))

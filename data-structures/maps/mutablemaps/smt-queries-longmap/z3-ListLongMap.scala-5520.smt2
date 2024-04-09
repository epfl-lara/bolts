; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72934 () Bool)

(assert start!72934)

(declare-fun b_free!13821 () Bool)

(declare-fun b_next!13821 () Bool)

(assert (=> start!72934 (= b_free!13821 (not b_next!13821))))

(declare-fun tp!48967 () Bool)

(declare-fun b_and!22925 () Bool)

(assert (=> start!72934 (= tp!48967 b_and!22925)))

(declare-fun mapIsEmpty!25535 () Bool)

(declare-fun mapRes!25535 () Bool)

(assert (=> mapIsEmpty!25535 mapRes!25535))

(declare-fun b!846280 () Bool)

(declare-fun res!575082 () Bool)

(declare-fun e!472363 () Bool)

(assert (=> b!846280 (=> (not res!575082) (not e!472363))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48112 0))(
  ( (array!48113 (arr!23083 (Array (_ BitVec 32) (_ BitVec 64))) (size!23524 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48112)

(assert (=> b!846280 (= res!575082 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23524 _keys!868))))))

(declare-fun b!846281 () Bool)

(declare-fun res!575076 () Bool)

(assert (=> b!846281 (=> (not res!575076) (not e!472363))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48112 (_ BitVec 32)) Bool)

(assert (=> b!846281 (= res!575076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!846282 () Bool)

(declare-fun res!575081 () Bool)

(assert (=> b!846282 (=> (not res!575081) (not e!472363))))

(declare-datatypes ((List!16413 0))(
  ( (Nil!16410) (Cons!16409 (h!17540 (_ BitVec 64)) (t!22792 List!16413)) )
))
(declare-fun arrayNoDuplicates!0 (array!48112 (_ BitVec 32) List!16413) Bool)

(assert (=> b!846282 (= res!575081 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16410))))

(declare-fun b!846283 () Bool)

(declare-fun e!472362 () Bool)

(declare-fun tp_is_empty!15957 () Bool)

(assert (=> b!846283 (= e!472362 tp_is_empty!15957)))

(declare-fun b!846284 () Bool)

(assert (=> b!846284 (= e!472363 false)))

(declare-datatypes ((V!26323 0))(
  ( (V!26324 (val!8026 Int)) )
))
(declare-fun v!557 () V!26323)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7539 0))(
  ( (ValueCellFull!7539 (v!10447 V!26323)) (EmptyCell!7539) )
))
(declare-datatypes ((array!48114 0))(
  ( (array!48115 (arr!23084 (Array (_ BitVec 32) ValueCell!7539)) (size!23525 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48114)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26323)

(declare-fun zeroValue!654 () V!26323)

(declare-datatypes ((tuple2!10502 0))(
  ( (tuple2!10503 (_1!5261 (_ BitVec 64)) (_2!5261 V!26323)) )
))
(declare-datatypes ((List!16414 0))(
  ( (Nil!16411) (Cons!16410 (h!17541 tuple2!10502) (t!22793 List!16414)) )
))
(declare-datatypes ((ListLongMap!9285 0))(
  ( (ListLongMap!9286 (toList!4658 List!16414)) )
))
(declare-fun lt!381479 () ListLongMap!9285)

(declare-fun getCurrentListMapNoExtraKeys!2647 (array!48112 array!48114 (_ BitVec 32) (_ BitVec 32) V!26323 V!26323 (_ BitVec 32) Int) ListLongMap!9285)

(assert (=> b!846284 (= lt!381479 (getCurrentListMapNoExtraKeys!2647 _keys!868 (array!48115 (store (arr!23084 _values!688) i!612 (ValueCellFull!7539 v!557)) (size!23525 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381480 () ListLongMap!9285)

(assert (=> b!846284 (= lt!381480 (getCurrentListMapNoExtraKeys!2647 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846285 () Bool)

(declare-fun res!575080 () Bool)

(assert (=> b!846285 (=> (not res!575080) (not e!472363))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!846285 (= res!575080 (and (= (select (arr!23083 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!846286 () Bool)

(declare-fun e!472361 () Bool)

(assert (=> b!846286 (= e!472361 tp_is_empty!15957)))

(declare-fun b!846287 () Bool)

(declare-fun res!575078 () Bool)

(assert (=> b!846287 (=> (not res!575078) (not e!472363))))

(assert (=> b!846287 (= res!575078 (and (= (size!23525 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23524 _keys!868) (size!23525 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846288 () Bool)

(declare-fun e!472364 () Bool)

(assert (=> b!846288 (= e!472364 (and e!472361 mapRes!25535))))

(declare-fun condMapEmpty!25535 () Bool)

(declare-fun mapDefault!25535 () ValueCell!7539)

(assert (=> b!846288 (= condMapEmpty!25535 (= (arr!23084 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7539)) mapDefault!25535)))))

(declare-fun mapNonEmpty!25535 () Bool)

(declare-fun tp!48968 () Bool)

(assert (=> mapNonEmpty!25535 (= mapRes!25535 (and tp!48968 e!472362))))

(declare-fun mapValue!25535 () ValueCell!7539)

(declare-fun mapKey!25535 () (_ BitVec 32))

(declare-fun mapRest!25535 () (Array (_ BitVec 32) ValueCell!7539))

(assert (=> mapNonEmpty!25535 (= (arr!23084 _values!688) (store mapRest!25535 mapKey!25535 mapValue!25535))))

(declare-fun res!575079 () Bool)

(assert (=> start!72934 (=> (not res!575079) (not e!472363))))

(assert (=> start!72934 (= res!575079 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23524 _keys!868))))))

(assert (=> start!72934 e!472363))

(assert (=> start!72934 tp_is_empty!15957))

(assert (=> start!72934 true))

(assert (=> start!72934 tp!48967))

(declare-fun array_inv!18320 (array!48112) Bool)

(assert (=> start!72934 (array_inv!18320 _keys!868)))

(declare-fun array_inv!18321 (array!48114) Bool)

(assert (=> start!72934 (and (array_inv!18321 _values!688) e!472364)))

(declare-fun b!846289 () Bool)

(declare-fun res!575077 () Bool)

(assert (=> b!846289 (=> (not res!575077) (not e!472363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846289 (= res!575077 (validKeyInArray!0 k0!854))))

(declare-fun b!846290 () Bool)

(declare-fun res!575075 () Bool)

(assert (=> b!846290 (=> (not res!575075) (not e!472363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846290 (= res!575075 (validMask!0 mask!1196))))

(assert (= (and start!72934 res!575079) b!846290))

(assert (= (and b!846290 res!575075) b!846287))

(assert (= (and b!846287 res!575078) b!846281))

(assert (= (and b!846281 res!575076) b!846282))

(assert (= (and b!846282 res!575081) b!846280))

(assert (= (and b!846280 res!575082) b!846289))

(assert (= (and b!846289 res!575077) b!846285))

(assert (= (and b!846285 res!575080) b!846284))

(assert (= (and b!846288 condMapEmpty!25535) mapIsEmpty!25535))

(assert (= (and b!846288 (not condMapEmpty!25535)) mapNonEmpty!25535))

(get-info :version)

(assert (= (and mapNonEmpty!25535 ((_ is ValueCellFull!7539) mapValue!25535)) b!846283))

(assert (= (and b!846288 ((_ is ValueCellFull!7539) mapDefault!25535)) b!846286))

(assert (= start!72934 b!846288))

(declare-fun m!787791 () Bool)

(assert (=> b!846285 m!787791))

(declare-fun m!787793 () Bool)

(assert (=> b!846281 m!787793))

(declare-fun m!787795 () Bool)

(assert (=> mapNonEmpty!25535 m!787795))

(declare-fun m!787797 () Bool)

(assert (=> b!846290 m!787797))

(declare-fun m!787799 () Bool)

(assert (=> b!846284 m!787799))

(declare-fun m!787801 () Bool)

(assert (=> b!846284 m!787801))

(declare-fun m!787803 () Bool)

(assert (=> b!846284 m!787803))

(declare-fun m!787805 () Bool)

(assert (=> b!846289 m!787805))

(declare-fun m!787807 () Bool)

(assert (=> b!846282 m!787807))

(declare-fun m!787809 () Bool)

(assert (=> start!72934 m!787809))

(declare-fun m!787811 () Bool)

(assert (=> start!72934 m!787811))

(check-sat tp_is_empty!15957 (not b!846282) (not b!846284) (not b!846289) b_and!22925 (not b!846281) (not b!846290) (not mapNonEmpty!25535) (not start!72934) (not b_next!13821))
(check-sat b_and!22925 (not b_next!13821))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72508 () Bool)

(assert start!72508)

(declare-fun b_free!13665 () Bool)

(declare-fun b_next!13665 () Bool)

(assert (=> start!72508 (= b_free!13665 (not b_next!13665))))

(declare-fun tp!48095 () Bool)

(declare-fun b_and!22769 () Bool)

(assert (=> start!72508 (= tp!48095 b_and!22769)))

(declare-fun b!840629 () Bool)

(declare-fun res!571586 () Bool)

(declare-fun e!469048 () Bool)

(assert (=> b!840629 (=> (not res!571586) (not e!469048))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!47308 0))(
  ( (array!47309 (arr!22681 (Array (_ BitVec 32) (_ BitVec 64))) (size!23122 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47308)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!840629 (= res!571586 (and (= (select (arr!22681 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23122 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840631 () Bool)

(declare-fun res!571584 () Bool)

(assert (=> b!840631 (=> (not res!571584) (not e!469048))))

(declare-datatypes ((List!16202 0))(
  ( (Nil!16199) (Cons!16198 (h!17329 (_ BitVec 64)) (t!22581 List!16202)) )
))
(declare-fun arrayNoDuplicates!0 (array!47308 (_ BitVec 32) List!16202) Bool)

(assert (=> b!840631 (= res!571584 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16199))))

(declare-fun b!840632 () Bool)

(declare-fun res!571583 () Bool)

(assert (=> b!840632 (=> (not res!571583) (not e!469048))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25755 0))(
  ( (V!25756 (val!7813 Int)) )
))
(declare-datatypes ((ValueCell!7326 0))(
  ( (ValueCellFull!7326 (v!10234 V!25755)) (EmptyCell!7326) )
))
(declare-datatypes ((array!47310 0))(
  ( (array!47311 (arr!22682 (Array (_ BitVec 32) ValueCell!7326)) (size!23123 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47310)

(assert (=> b!840632 (= res!571583 (and (= (size!23123 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23122 _keys!868) (size!23123 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!24896 () Bool)

(declare-fun mapRes!24896 () Bool)

(assert (=> mapIsEmpty!24896 mapRes!24896))

(declare-fun b!840633 () Bool)

(declare-fun res!571588 () Bool)

(assert (=> b!840633 (=> (not res!571588) (not e!469048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840633 (= res!571588 (validMask!0 mask!1196))))

(declare-fun v!557 () V!25755)

(declare-datatypes ((tuple2!10376 0))(
  ( (tuple2!10377 (_1!5198 (_ BitVec 64)) (_2!5198 V!25755)) )
))
(declare-datatypes ((List!16203 0))(
  ( (Nil!16200) (Cons!16199 (h!17330 tuple2!10376) (t!22582 List!16203)) )
))
(declare-datatypes ((ListLongMap!9159 0))(
  ( (ListLongMap!9160 (toList!4595 List!16203)) )
))
(declare-fun call!37228 () ListLongMap!9159)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!25755)

(declare-fun zeroValue!654 () V!25755)

(declare-fun bm!37225 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2587 (array!47308 array!47310 (_ BitVec 32) (_ BitVec 32) V!25755 V!25755 (_ BitVec 32) Int) ListLongMap!9159)

(assert (=> bm!37225 (= call!37228 (getCurrentListMapNoExtraKeys!2587 _keys!868 (array!47311 (store (arr!22682 _values!688) i!612 (ValueCellFull!7326 v!557)) (size!23123 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840634 () Bool)

(declare-fun res!571589 () Bool)

(assert (=> b!840634 (=> (not res!571589) (not e!469048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840634 (= res!571589 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!24896 () Bool)

(declare-fun tp!48094 () Bool)

(declare-fun e!469047 () Bool)

(assert (=> mapNonEmpty!24896 (= mapRes!24896 (and tp!48094 e!469047))))

(declare-fun mapRest!24896 () (Array (_ BitVec 32) ValueCell!7326))

(declare-fun mapKey!24896 () (_ BitVec 32))

(declare-fun mapValue!24896 () ValueCell!7326)

(assert (=> mapNonEmpty!24896 (= (arr!22682 _values!688) (store mapRest!24896 mapKey!24896 mapValue!24896))))

(declare-fun bm!37226 () Bool)

(declare-fun call!37229 () ListLongMap!9159)

(assert (=> bm!37226 (= call!37229 (getCurrentListMapNoExtraKeys!2587 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840635 () Bool)

(declare-fun e!469049 () Bool)

(declare-fun e!469046 () Bool)

(assert (=> b!840635 (= e!469049 (and e!469046 mapRes!24896))))

(declare-fun condMapEmpty!24896 () Bool)

(declare-fun mapDefault!24896 () ValueCell!7326)

(assert (=> b!840635 (= condMapEmpty!24896 (= (arr!22682 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7326)) mapDefault!24896)))))

(declare-fun b!840636 () Bool)

(declare-fun tp_is_empty!15531 () Bool)

(assert (=> b!840636 (= e!469047 tp_is_empty!15531)))

(declare-fun b!840637 () Bool)

(declare-fun res!571585 () Bool)

(assert (=> b!840637 (=> (not res!571585) (not e!469048))))

(assert (=> b!840637 (= res!571585 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23122 _keys!868))))))

(declare-fun b!840630 () Bool)

(declare-fun res!571587 () Bool)

(assert (=> b!840630 (=> (not res!571587) (not e!469048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47308 (_ BitVec 32)) Bool)

(assert (=> b!840630 (= res!571587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!571590 () Bool)

(assert (=> start!72508 (=> (not res!571590) (not e!469048))))

(assert (=> start!72508 (= res!571590 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23122 _keys!868))))))

(assert (=> start!72508 e!469048))

(assert (=> start!72508 tp_is_empty!15531))

(assert (=> start!72508 true))

(assert (=> start!72508 tp!48095))

(declare-fun array_inv!18030 (array!47308) Bool)

(assert (=> start!72508 (array_inv!18030 _keys!868)))

(declare-fun array_inv!18031 (array!47310) Bool)

(assert (=> start!72508 (and (array_inv!18031 _values!688) e!469049)))

(declare-fun b!840638 () Bool)

(declare-fun e!469050 () Bool)

(declare-fun +!2004 (ListLongMap!9159 tuple2!10376) ListLongMap!9159)

(assert (=> b!840638 (= e!469050 (= call!37228 (+!2004 call!37229 (tuple2!10377 k0!854 v!557))))))

(declare-fun b!840639 () Bool)

(assert (=> b!840639 (= e!469050 (= call!37228 call!37229))))

(declare-fun b!840640 () Bool)

(assert (=> b!840640 (= e!469048 (not true))))

(assert (=> b!840640 e!469050))

(declare-fun c!91275 () Bool)

(assert (=> b!840640 (= c!91275 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28870 0))(
  ( (Unit!28871) )
))
(declare-fun lt!380808 () Unit!28870)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!284 (array!47308 array!47310 (_ BitVec 32) (_ BitVec 32) V!25755 V!25755 (_ BitVec 32) (_ BitVec 64) V!25755 (_ BitVec 32) Int) Unit!28870)

(assert (=> b!840640 (= lt!380808 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!284 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840641 () Bool)

(assert (=> b!840641 (= e!469046 tp_is_empty!15531)))

(assert (= (and start!72508 res!571590) b!840633))

(assert (= (and b!840633 res!571588) b!840632))

(assert (= (and b!840632 res!571583) b!840630))

(assert (= (and b!840630 res!571587) b!840631))

(assert (= (and b!840631 res!571584) b!840637))

(assert (= (and b!840637 res!571585) b!840634))

(assert (= (and b!840634 res!571589) b!840629))

(assert (= (and b!840629 res!571586) b!840640))

(assert (= (and b!840640 c!91275) b!840638))

(assert (= (and b!840640 (not c!91275)) b!840639))

(assert (= (or b!840638 b!840639) bm!37225))

(assert (= (or b!840638 b!840639) bm!37226))

(assert (= (and b!840635 condMapEmpty!24896) mapIsEmpty!24896))

(assert (= (and b!840635 (not condMapEmpty!24896)) mapNonEmpty!24896))

(get-info :version)

(assert (= (and mapNonEmpty!24896 ((_ is ValueCellFull!7326) mapValue!24896)) b!840636))

(assert (= (and b!840635 ((_ is ValueCellFull!7326) mapDefault!24896)) b!840641))

(assert (= start!72508 b!840635))

(declare-fun m!784399 () Bool)

(assert (=> b!840629 m!784399))

(declare-fun m!784401 () Bool)

(assert (=> bm!37226 m!784401))

(declare-fun m!784403 () Bool)

(assert (=> mapNonEmpty!24896 m!784403))

(declare-fun m!784405 () Bool)

(assert (=> bm!37225 m!784405))

(declare-fun m!784407 () Bool)

(assert (=> bm!37225 m!784407))

(declare-fun m!784409 () Bool)

(assert (=> b!840630 m!784409))

(declare-fun m!784411 () Bool)

(assert (=> b!840638 m!784411))

(declare-fun m!784413 () Bool)

(assert (=> b!840634 m!784413))

(declare-fun m!784415 () Bool)

(assert (=> b!840633 m!784415))

(declare-fun m!784417 () Bool)

(assert (=> start!72508 m!784417))

(declare-fun m!784419 () Bool)

(assert (=> start!72508 m!784419))

(declare-fun m!784421 () Bool)

(assert (=> b!840640 m!784421))

(declare-fun m!784423 () Bool)

(assert (=> b!840631 m!784423))

(check-sat (not b!840638) (not start!72508) b_and!22769 tp_is_empty!15531 (not mapNonEmpty!24896) (not b_next!13665) (not b!840640) (not b!840631) (not bm!37226) (not bm!37225) (not b!840630) (not b!840634) (not b!840633))
(check-sat b_and!22769 (not b_next!13665))

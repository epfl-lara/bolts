; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72436 () Bool)

(assert start!72436)

(declare-fun b_free!13593 () Bool)

(declare-fun b_next!13593 () Bool)

(assert (=> start!72436 (= b_free!13593 (not b_next!13593))))

(declare-fun tp!47879 () Bool)

(declare-fun b_and!22697 () Bool)

(assert (=> start!72436 (= tp!47879 b_and!22697)))

(declare-fun mapIsEmpty!24788 () Bool)

(declare-fun mapRes!24788 () Bool)

(assert (=> mapIsEmpty!24788 mapRes!24788))

(declare-fun b!839225 () Bool)

(declare-fun e!468398 () Bool)

(declare-fun e!468402 () Bool)

(assert (=> b!839225 (= e!468398 (and e!468402 mapRes!24788))))

(declare-fun condMapEmpty!24788 () Bool)

(declare-datatypes ((V!25659 0))(
  ( (V!25660 (val!7777 Int)) )
))
(declare-datatypes ((ValueCell!7290 0))(
  ( (ValueCellFull!7290 (v!10198 V!25659)) (EmptyCell!7290) )
))
(declare-datatypes ((array!47170 0))(
  ( (array!47171 (arr!22612 (Array (_ BitVec 32) ValueCell!7290)) (size!23053 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47170)

(declare-fun mapDefault!24788 () ValueCell!7290)

(assert (=> b!839225 (= condMapEmpty!24788 (= (arr!22612 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7290)) mapDefault!24788)))))

(declare-fun b!839226 () Bool)

(declare-fun res!570726 () Bool)

(declare-fun e!468401 () Bool)

(assert (=> b!839226 (=> (not res!570726) (not e!468401))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!47172 0))(
  ( (array!47173 (arr!22613 (Array (_ BitVec 32) (_ BitVec 64))) (size!23054 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47172)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!839226 (= res!570726 (and (= (select (arr!22613 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23054 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun v!557 () V!25659)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10316 0))(
  ( (tuple2!10317 (_1!5168 (_ BitVec 64)) (_2!5168 V!25659)) )
))
(declare-datatypes ((List!16149 0))(
  ( (Nil!16146) (Cons!16145 (h!17276 tuple2!10316) (t!22528 List!16149)) )
))
(declare-datatypes ((ListLongMap!9099 0))(
  ( (ListLongMap!9100 (toList!4565 List!16149)) )
))
(declare-fun call!37012 () ListLongMap!9099)

(declare-fun minValue!654 () V!25659)

(declare-fun zeroValue!654 () V!25659)

(declare-fun bm!37009 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2558 (array!47172 array!47170 (_ BitVec 32) (_ BitVec 32) V!25659 V!25659 (_ BitVec 32) Int) ListLongMap!9099)

(assert (=> bm!37009 (= call!37012 (getCurrentListMapNoExtraKeys!2558 _keys!868 (array!47171 (store (arr!22612 _values!688) i!612 (ValueCellFull!7290 v!557)) (size!23053 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839227 () Bool)

(assert (=> b!839227 (= e!468401 (not true))))

(declare-fun e!468400 () Bool)

(assert (=> b!839227 e!468400))

(declare-fun c!91167 () Bool)

(assert (=> b!839227 (= c!91167 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28822 0))(
  ( (Unit!28823) )
))
(declare-fun lt!380700 () Unit!28822)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!260 (array!47172 array!47170 (_ BitVec 32) (_ BitVec 32) V!25659 V!25659 (_ BitVec 32) (_ BitVec 64) V!25659 (_ BitVec 32) Int) Unit!28822)

(assert (=> b!839227 (= lt!380700 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!260 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839228 () Bool)

(declare-fun res!570725 () Bool)

(assert (=> b!839228 (=> (not res!570725) (not e!468401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839228 (= res!570725 (validMask!0 mask!1196))))

(declare-fun b!839230 () Bool)

(declare-fun tp_is_empty!15459 () Bool)

(assert (=> b!839230 (= e!468402 tp_is_empty!15459)))

(declare-fun bm!37010 () Bool)

(declare-fun call!37013 () ListLongMap!9099)

(assert (=> bm!37010 (= call!37013 (getCurrentListMapNoExtraKeys!2558 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839231 () Bool)

(assert (=> b!839231 (= e!468400 (= call!37012 call!37013))))

(declare-fun b!839232 () Bool)

(declare-fun e!468399 () Bool)

(assert (=> b!839232 (= e!468399 tp_is_empty!15459)))

(declare-fun b!839233 () Bool)

(declare-fun res!570724 () Bool)

(assert (=> b!839233 (=> (not res!570724) (not e!468401))))

(assert (=> b!839233 (= res!570724 (and (= (size!23053 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23054 _keys!868) (size!23053 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839234 () Bool)

(declare-fun res!570719 () Bool)

(assert (=> b!839234 (=> (not res!570719) (not e!468401))))

(assert (=> b!839234 (= res!570719 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23054 _keys!868))))))

(declare-fun mapNonEmpty!24788 () Bool)

(declare-fun tp!47878 () Bool)

(assert (=> mapNonEmpty!24788 (= mapRes!24788 (and tp!47878 e!468399))))

(declare-fun mapKey!24788 () (_ BitVec 32))

(declare-fun mapRest!24788 () (Array (_ BitVec 32) ValueCell!7290))

(declare-fun mapValue!24788 () ValueCell!7290)

(assert (=> mapNonEmpty!24788 (= (arr!22612 _values!688) (store mapRest!24788 mapKey!24788 mapValue!24788))))

(declare-fun b!839235 () Bool)

(declare-fun res!570722 () Bool)

(assert (=> b!839235 (=> (not res!570722) (not e!468401))))

(declare-datatypes ((List!16150 0))(
  ( (Nil!16147) (Cons!16146 (h!17277 (_ BitVec 64)) (t!22529 List!16150)) )
))
(declare-fun arrayNoDuplicates!0 (array!47172 (_ BitVec 32) List!16150) Bool)

(assert (=> b!839235 (= res!570722 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16147))))

(declare-fun b!839236 () Bool)

(declare-fun +!1984 (ListLongMap!9099 tuple2!10316) ListLongMap!9099)

(assert (=> b!839236 (= e!468400 (= call!37012 (+!1984 call!37013 (tuple2!10317 k0!854 v!557))))))

(declare-fun b!839237 () Bool)

(declare-fun res!570720 () Bool)

(assert (=> b!839237 (=> (not res!570720) (not e!468401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47172 (_ BitVec 32)) Bool)

(assert (=> b!839237 (= res!570720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!570723 () Bool)

(assert (=> start!72436 (=> (not res!570723) (not e!468401))))

(assert (=> start!72436 (= res!570723 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23054 _keys!868))))))

(assert (=> start!72436 e!468401))

(assert (=> start!72436 tp_is_empty!15459))

(assert (=> start!72436 true))

(assert (=> start!72436 tp!47879))

(declare-fun array_inv!17988 (array!47172) Bool)

(assert (=> start!72436 (array_inv!17988 _keys!868)))

(declare-fun array_inv!17989 (array!47170) Bool)

(assert (=> start!72436 (and (array_inv!17989 _values!688) e!468398)))

(declare-fun b!839229 () Bool)

(declare-fun res!570721 () Bool)

(assert (=> b!839229 (=> (not res!570721) (not e!468401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839229 (= res!570721 (validKeyInArray!0 k0!854))))

(assert (= (and start!72436 res!570723) b!839228))

(assert (= (and b!839228 res!570725) b!839233))

(assert (= (and b!839233 res!570724) b!839237))

(assert (= (and b!839237 res!570720) b!839235))

(assert (= (and b!839235 res!570722) b!839234))

(assert (= (and b!839234 res!570719) b!839229))

(assert (= (and b!839229 res!570721) b!839226))

(assert (= (and b!839226 res!570726) b!839227))

(assert (= (and b!839227 c!91167) b!839236))

(assert (= (and b!839227 (not c!91167)) b!839231))

(assert (= (or b!839236 b!839231) bm!37009))

(assert (= (or b!839236 b!839231) bm!37010))

(assert (= (and b!839225 condMapEmpty!24788) mapIsEmpty!24788))

(assert (= (and b!839225 (not condMapEmpty!24788)) mapNonEmpty!24788))

(get-info :version)

(assert (= (and mapNonEmpty!24788 ((_ is ValueCellFull!7290) mapValue!24788)) b!839232))

(assert (= (and b!839225 ((_ is ValueCellFull!7290) mapDefault!24788)) b!839230))

(assert (= start!72436 b!839225))

(declare-fun m!783463 () Bool)

(assert (=> b!839228 m!783463))

(declare-fun m!783465 () Bool)

(assert (=> b!839237 m!783465))

(declare-fun m!783467 () Bool)

(assert (=> mapNonEmpty!24788 m!783467))

(declare-fun m!783469 () Bool)

(assert (=> b!839235 m!783469))

(declare-fun m!783471 () Bool)

(assert (=> start!72436 m!783471))

(declare-fun m!783473 () Bool)

(assert (=> start!72436 m!783473))

(declare-fun m!783475 () Bool)

(assert (=> bm!37010 m!783475))

(declare-fun m!783477 () Bool)

(assert (=> b!839226 m!783477))

(declare-fun m!783479 () Bool)

(assert (=> b!839229 m!783479))

(declare-fun m!783481 () Bool)

(assert (=> b!839236 m!783481))

(declare-fun m!783483 () Bool)

(assert (=> bm!37009 m!783483))

(declare-fun m!783485 () Bool)

(assert (=> bm!37009 m!783485))

(declare-fun m!783487 () Bool)

(assert (=> b!839227 m!783487))

(check-sat (not bm!37010) (not mapNonEmpty!24788) b_and!22697 tp_is_empty!15459 (not b!839235) (not b!839237) (not bm!37009) (not b!839236) (not b!839229) (not b_next!13593) (not b!839228) (not b!839227) (not start!72436))
(check-sat b_and!22697 (not b_next!13593))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72406 () Bool)

(assert start!72406)

(declare-fun b_free!13563 () Bool)

(declare-fun b_next!13563 () Bool)

(assert (=> start!72406 (= b_free!13563 (not b_next!13563))))

(declare-fun tp!47788 () Bool)

(declare-fun b_and!22667 () Bool)

(assert (=> start!72406 (= tp!47788 b_and!22667)))

(declare-fun b!838640 () Bool)

(declare-fun res!570359 () Bool)

(declare-fun e!468132 () Bool)

(assert (=> b!838640 (=> (not res!570359) (not e!468132))))

(declare-datatypes ((array!47110 0))(
  ( (array!47111 (arr!22582 (Array (_ BitVec 32) (_ BitVec 64))) (size!23023 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47110)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47110 (_ BitVec 32)) Bool)

(assert (=> b!838640 (= res!570359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838641 () Bool)

(declare-fun e!468131 () Bool)

(declare-fun e!468130 () Bool)

(declare-fun mapRes!24743 () Bool)

(assert (=> b!838641 (= e!468131 (and e!468130 mapRes!24743))))

(declare-fun condMapEmpty!24743 () Bool)

(declare-datatypes ((V!25619 0))(
  ( (V!25620 (val!7762 Int)) )
))
(declare-datatypes ((ValueCell!7275 0))(
  ( (ValueCellFull!7275 (v!10183 V!25619)) (EmptyCell!7275) )
))
(declare-datatypes ((array!47112 0))(
  ( (array!47113 (arr!22583 (Array (_ BitVec 32) ValueCell!7275)) (size!23024 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47112)

(declare-fun mapDefault!24743 () ValueCell!7275)

(assert (=> b!838641 (= condMapEmpty!24743 (= (arr!22583 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7275)) mapDefault!24743)))))

(declare-fun b!838642 () Bool)

(declare-fun e!468129 () Bool)

(declare-datatypes ((tuple2!10288 0))(
  ( (tuple2!10289 (_1!5154 (_ BitVec 64)) (_2!5154 V!25619)) )
))
(declare-datatypes ((List!16124 0))(
  ( (Nil!16121) (Cons!16120 (h!17251 tuple2!10288) (t!22503 List!16124)) )
))
(declare-datatypes ((ListLongMap!9071 0))(
  ( (ListLongMap!9072 (toList!4551 List!16124)) )
))
(declare-fun call!36923 () ListLongMap!9071)

(declare-fun call!36922 () ListLongMap!9071)

(assert (=> b!838642 (= e!468129 (= call!36923 call!36922))))

(declare-fun b!838643 () Bool)

(declare-fun res!570365 () Bool)

(assert (=> b!838643 (=> (not res!570365) (not e!468132))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!838643 (= res!570365 (and (= (size!23024 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23023 _keys!868) (size!23024 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838645 () Bool)

(declare-fun tp_is_empty!15429 () Bool)

(assert (=> b!838645 (= e!468130 tp_is_empty!15429)))

(declare-fun mapNonEmpty!24743 () Bool)

(declare-fun tp!47789 () Bool)

(declare-fun e!468128 () Bool)

(assert (=> mapNonEmpty!24743 (= mapRes!24743 (and tp!47789 e!468128))))

(declare-fun mapValue!24743 () ValueCell!7275)

(declare-fun mapKey!24743 () (_ BitVec 32))

(declare-fun mapRest!24743 () (Array (_ BitVec 32) ValueCell!7275))

(assert (=> mapNonEmpty!24743 (= (arr!22583 _values!688) (store mapRest!24743 mapKey!24743 mapValue!24743))))

(declare-fun b!838646 () Bool)

(assert (=> b!838646 (= e!468132 (not true))))

(assert (=> b!838646 e!468129))

(declare-fun c!91122 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838646 (= c!91122 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28796 0))(
  ( (Unit!28797) )
))
(declare-fun lt!380655 () Unit!28796)

(declare-fun v!557 () V!25619)

(declare-fun defaultEntry!696 () Int)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!25619)

(declare-fun zeroValue!654 () V!25619)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!247 (array!47110 array!47112 (_ BitVec 32) (_ BitVec 32) V!25619 V!25619 (_ BitVec 32) (_ BitVec 64) V!25619 (_ BitVec 32) Int) Unit!28796)

(assert (=> b!838646 (= lt!380655 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!247 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838647 () Bool)

(declare-fun res!570366 () Bool)

(assert (=> b!838647 (=> (not res!570366) (not e!468132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838647 (= res!570366 (validKeyInArray!0 k0!854))))

(declare-fun res!570362 () Bool)

(assert (=> start!72406 (=> (not res!570362) (not e!468132))))

(assert (=> start!72406 (= res!570362 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23023 _keys!868))))))

(assert (=> start!72406 e!468132))

(assert (=> start!72406 tp_is_empty!15429))

(assert (=> start!72406 true))

(assert (=> start!72406 tp!47788))

(declare-fun array_inv!17964 (array!47110) Bool)

(assert (=> start!72406 (array_inv!17964 _keys!868)))

(declare-fun array_inv!17965 (array!47112) Bool)

(assert (=> start!72406 (and (array_inv!17965 _values!688) e!468131)))

(declare-fun b!838644 () Bool)

(declare-fun res!570361 () Bool)

(assert (=> b!838644 (=> (not res!570361) (not e!468132))))

(declare-datatypes ((List!16125 0))(
  ( (Nil!16122) (Cons!16121 (h!17252 (_ BitVec 64)) (t!22504 List!16125)) )
))
(declare-fun arrayNoDuplicates!0 (array!47110 (_ BitVec 32) List!16125) Bool)

(assert (=> b!838644 (= res!570361 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16122))))

(declare-fun b!838648 () Bool)

(declare-fun +!1973 (ListLongMap!9071 tuple2!10288) ListLongMap!9071)

(assert (=> b!838648 (= e!468129 (= call!36923 (+!1973 call!36922 (tuple2!10289 k0!854 v!557))))))

(declare-fun b!838649 () Bool)

(declare-fun res!570364 () Bool)

(assert (=> b!838649 (=> (not res!570364) (not e!468132))))

(assert (=> b!838649 (= res!570364 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23023 _keys!868))))))

(declare-fun b!838650 () Bool)

(declare-fun res!570360 () Bool)

(assert (=> b!838650 (=> (not res!570360) (not e!468132))))

(assert (=> b!838650 (= res!570360 (and (= (select (arr!22582 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23023 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun bm!36919 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2546 (array!47110 array!47112 (_ BitVec 32) (_ BitVec 32) V!25619 V!25619 (_ BitVec 32) Int) ListLongMap!9071)

(assert (=> bm!36919 (= call!36922 (getCurrentListMapNoExtraKeys!2546 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838651 () Bool)

(declare-fun res!570363 () Bool)

(assert (=> b!838651 (=> (not res!570363) (not e!468132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838651 (= res!570363 (validMask!0 mask!1196))))

(declare-fun bm!36920 () Bool)

(assert (=> bm!36920 (= call!36923 (getCurrentListMapNoExtraKeys!2546 _keys!868 (array!47113 (store (arr!22583 _values!688) i!612 (ValueCellFull!7275 v!557)) (size!23024 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838652 () Bool)

(assert (=> b!838652 (= e!468128 tp_is_empty!15429)))

(declare-fun mapIsEmpty!24743 () Bool)

(assert (=> mapIsEmpty!24743 mapRes!24743))

(assert (= (and start!72406 res!570362) b!838651))

(assert (= (and b!838651 res!570363) b!838643))

(assert (= (and b!838643 res!570365) b!838640))

(assert (= (and b!838640 res!570359) b!838644))

(assert (= (and b!838644 res!570361) b!838649))

(assert (= (and b!838649 res!570364) b!838647))

(assert (= (and b!838647 res!570366) b!838650))

(assert (= (and b!838650 res!570360) b!838646))

(assert (= (and b!838646 c!91122) b!838648))

(assert (= (and b!838646 (not c!91122)) b!838642))

(assert (= (or b!838648 b!838642) bm!36920))

(assert (= (or b!838648 b!838642) bm!36919))

(assert (= (and b!838641 condMapEmpty!24743) mapIsEmpty!24743))

(assert (= (and b!838641 (not condMapEmpty!24743)) mapNonEmpty!24743))

(get-info :version)

(assert (= (and mapNonEmpty!24743 ((_ is ValueCellFull!7275) mapValue!24743)) b!838652))

(assert (= (and b!838641 ((_ is ValueCellFull!7275) mapDefault!24743)) b!838645))

(assert (= start!72406 b!838641))

(declare-fun m!783073 () Bool)

(assert (=> bm!36920 m!783073))

(declare-fun m!783075 () Bool)

(assert (=> bm!36920 m!783075))

(declare-fun m!783077 () Bool)

(assert (=> b!838640 m!783077))

(declare-fun m!783079 () Bool)

(assert (=> b!838650 m!783079))

(declare-fun m!783081 () Bool)

(assert (=> mapNonEmpty!24743 m!783081))

(declare-fun m!783083 () Bool)

(assert (=> b!838647 m!783083))

(declare-fun m!783085 () Bool)

(assert (=> b!838644 m!783085))

(declare-fun m!783087 () Bool)

(assert (=> b!838646 m!783087))

(declare-fun m!783089 () Bool)

(assert (=> b!838651 m!783089))

(declare-fun m!783091 () Bool)

(assert (=> b!838648 m!783091))

(declare-fun m!783093 () Bool)

(assert (=> bm!36919 m!783093))

(declare-fun m!783095 () Bool)

(assert (=> start!72406 m!783095))

(declare-fun m!783097 () Bool)

(assert (=> start!72406 m!783097))

(check-sat (not start!72406) (not b!838647) (not b_next!13563) (not b!838651) (not mapNonEmpty!24743) (not b!838644) tp_is_empty!15429 (not b!838640) b_and!22667 (not bm!36919) (not bm!36920) (not b!838646) (not b!838648))
(check-sat b_and!22667 (not b_next!13563))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72478 () Bool)

(assert start!72478)

(declare-fun b_free!13635 () Bool)

(declare-fun b_next!13635 () Bool)

(assert (=> start!72478 (= b_free!13635 (not b_next!13635))))

(declare-fun tp!48004 () Bool)

(declare-fun b_and!22739 () Bool)

(assert (=> start!72478 (= tp!48004 b_and!22739)))

(declare-fun mapIsEmpty!24851 () Bool)

(declare-fun mapRes!24851 () Bool)

(assert (=> mapIsEmpty!24851 mapRes!24851))

(declare-fun res!571223 () Bool)

(declare-fun e!468779 () Bool)

(assert (=> start!72478 (=> (not res!571223) (not e!468779))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47252 0))(
  ( (array!47253 (arr!22653 (Array (_ BitVec 32) (_ BitVec 64))) (size!23094 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47252)

(assert (=> start!72478 (= res!571223 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23094 _keys!868))))))

(assert (=> start!72478 e!468779))

(declare-fun tp_is_empty!15501 () Bool)

(assert (=> start!72478 tp_is_empty!15501))

(assert (=> start!72478 true))

(assert (=> start!72478 tp!48004))

(declare-fun array_inv!18010 (array!47252) Bool)

(assert (=> start!72478 (array_inv!18010 _keys!868)))

(declare-datatypes ((V!25715 0))(
  ( (V!25716 (val!7798 Int)) )
))
(declare-datatypes ((ValueCell!7311 0))(
  ( (ValueCellFull!7311 (v!10219 V!25715)) (EmptyCell!7311) )
))
(declare-datatypes ((array!47254 0))(
  ( (array!47255 (arr!22654 (Array (_ BitVec 32) ValueCell!7311)) (size!23095 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47254)

(declare-fun e!468780 () Bool)

(declare-fun array_inv!18011 (array!47254) Bool)

(assert (=> start!72478 (and (array_inv!18011 _values!688) e!468780)))

(declare-fun b!840044 () Bool)

(declare-fun res!571229 () Bool)

(assert (=> b!840044 (=> (not res!571229) (not e!468779))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47252 (_ BitVec 32)) Bool)

(assert (=> b!840044 (= res!571229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840045 () Bool)

(declare-fun res!571226 () Bool)

(assert (=> b!840045 (=> (not res!571226) (not e!468779))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840045 (= res!571226 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!24851 () Bool)

(declare-fun tp!48005 () Bool)

(declare-fun e!468777 () Bool)

(assert (=> mapNonEmpty!24851 (= mapRes!24851 (and tp!48005 e!468777))))

(declare-fun mapKey!24851 () (_ BitVec 32))

(declare-fun mapRest!24851 () (Array (_ BitVec 32) ValueCell!7311))

(declare-fun mapValue!24851 () ValueCell!7311)

(assert (=> mapNonEmpty!24851 (= (arr!22654 _values!688) (store mapRest!24851 mapKey!24851 mapValue!24851))))

(declare-fun b!840046 () Bool)

(declare-fun e!468775 () Bool)

(assert (=> b!840046 (= e!468780 (and e!468775 mapRes!24851))))

(declare-fun condMapEmpty!24851 () Bool)

(declare-fun mapDefault!24851 () ValueCell!7311)

(assert (=> b!840046 (= condMapEmpty!24851 (= (arr!22654 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7311)) mapDefault!24851)))))

(declare-fun b!840047 () Bool)

(assert (=> b!840047 (= e!468779 (not true))))

(declare-fun e!468778 () Bool)

(assert (=> b!840047 e!468778))

(declare-fun c!91230 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840047 (= c!91230 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25715)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!25715)

(declare-fun zeroValue!654 () V!25715)

(declare-datatypes ((Unit!28848 0))(
  ( (Unit!28849) )
))
(declare-fun lt!380763 () Unit!28848)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!273 (array!47252 array!47254 (_ BitVec 32) (_ BitVec 32) V!25715 V!25715 (_ BitVec 32) (_ BitVec 64) V!25715 (_ BitVec 32) Int) Unit!28848)

(assert (=> b!840047 (= lt!380763 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!273 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840048 () Bool)

(declare-fun res!571225 () Bool)

(assert (=> b!840048 (=> (not res!571225) (not e!468779))))

(assert (=> b!840048 (= res!571225 (and (= (size!23095 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23094 _keys!868) (size!23095 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!10350 0))(
  ( (tuple2!10351 (_1!5185 (_ BitVec 64)) (_2!5185 V!25715)) )
))
(declare-datatypes ((List!16179 0))(
  ( (Nil!16176) (Cons!16175 (h!17306 tuple2!10350) (t!22558 List!16179)) )
))
(declare-datatypes ((ListLongMap!9133 0))(
  ( (ListLongMap!9134 (toList!4582 List!16179)) )
))
(declare-fun call!37138 () ListLongMap!9133)

(declare-fun bm!37135 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2574 (array!47252 array!47254 (_ BitVec 32) (_ BitVec 32) V!25715 V!25715 (_ BitVec 32) Int) ListLongMap!9133)

(assert (=> bm!37135 (= call!37138 (getCurrentListMapNoExtraKeys!2574 _keys!868 (array!47255 (store (arr!22654 _values!688) i!612 (ValueCellFull!7311 v!557)) (size!23095 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840049 () Bool)

(assert (=> b!840049 (= e!468775 tp_is_empty!15501)))

(declare-fun b!840050 () Bool)

(declare-fun res!571228 () Bool)

(assert (=> b!840050 (=> (not res!571228) (not e!468779))))

(declare-datatypes ((List!16180 0))(
  ( (Nil!16177) (Cons!16176 (h!17307 (_ BitVec 64)) (t!22559 List!16180)) )
))
(declare-fun arrayNoDuplicates!0 (array!47252 (_ BitVec 32) List!16180) Bool)

(assert (=> b!840050 (= res!571228 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16177))))

(declare-fun b!840051 () Bool)

(declare-fun call!37139 () ListLongMap!9133)

(assert (=> b!840051 (= e!468778 (= call!37138 call!37139))))

(declare-fun b!840052 () Bool)

(assert (=> b!840052 (= e!468777 tp_is_empty!15501)))

(declare-fun b!840053 () Bool)

(declare-fun +!1996 (ListLongMap!9133 tuple2!10350) ListLongMap!9133)

(assert (=> b!840053 (= e!468778 (= call!37138 (+!1996 call!37139 (tuple2!10351 k0!854 v!557))))))

(declare-fun b!840054 () Bool)

(declare-fun res!571230 () Bool)

(assert (=> b!840054 (=> (not res!571230) (not e!468779))))

(assert (=> b!840054 (= res!571230 (and (= (select (arr!22653 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23094 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840055 () Bool)

(declare-fun res!571227 () Bool)

(assert (=> b!840055 (=> (not res!571227) (not e!468779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840055 (= res!571227 (validMask!0 mask!1196))))

(declare-fun bm!37136 () Bool)

(assert (=> bm!37136 (= call!37139 (getCurrentListMapNoExtraKeys!2574 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840056 () Bool)

(declare-fun res!571224 () Bool)

(assert (=> b!840056 (=> (not res!571224) (not e!468779))))

(assert (=> b!840056 (= res!571224 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23094 _keys!868))))))

(assert (= (and start!72478 res!571223) b!840055))

(assert (= (and b!840055 res!571227) b!840048))

(assert (= (and b!840048 res!571225) b!840044))

(assert (= (and b!840044 res!571229) b!840050))

(assert (= (and b!840050 res!571228) b!840056))

(assert (= (and b!840056 res!571224) b!840045))

(assert (= (and b!840045 res!571226) b!840054))

(assert (= (and b!840054 res!571230) b!840047))

(assert (= (and b!840047 c!91230) b!840053))

(assert (= (and b!840047 (not c!91230)) b!840051))

(assert (= (or b!840053 b!840051) bm!37135))

(assert (= (or b!840053 b!840051) bm!37136))

(assert (= (and b!840046 condMapEmpty!24851) mapIsEmpty!24851))

(assert (= (and b!840046 (not condMapEmpty!24851)) mapNonEmpty!24851))

(get-info :version)

(assert (= (and mapNonEmpty!24851 ((_ is ValueCellFull!7311) mapValue!24851)) b!840052))

(assert (= (and b!840046 ((_ is ValueCellFull!7311) mapDefault!24851)) b!840049))

(assert (= start!72478 b!840046))

(declare-fun m!784009 () Bool)

(assert (=> b!840055 m!784009))

(declare-fun m!784011 () Bool)

(assert (=> bm!37136 m!784011))

(declare-fun m!784013 () Bool)

(assert (=> start!72478 m!784013))

(declare-fun m!784015 () Bool)

(assert (=> start!72478 m!784015))

(declare-fun m!784017 () Bool)

(assert (=> b!840045 m!784017))

(declare-fun m!784019 () Bool)

(assert (=> b!840054 m!784019))

(declare-fun m!784021 () Bool)

(assert (=> mapNonEmpty!24851 m!784021))

(declare-fun m!784023 () Bool)

(assert (=> b!840047 m!784023))

(declare-fun m!784025 () Bool)

(assert (=> b!840044 m!784025))

(declare-fun m!784027 () Bool)

(assert (=> b!840053 m!784027))

(declare-fun m!784029 () Bool)

(assert (=> bm!37135 m!784029))

(declare-fun m!784031 () Bool)

(assert (=> bm!37135 m!784031))

(declare-fun m!784033 () Bool)

(assert (=> b!840050 m!784033))

(check-sat (not start!72478) (not b!840050) (not bm!37136) (not bm!37135) b_and!22739 (not mapNonEmpty!24851) (not b!840055) (not b!840044) (not b!840045) (not b_next!13635) tp_is_empty!15501 (not b!840053) (not b!840047))
(check-sat b_and!22739 (not b_next!13635))

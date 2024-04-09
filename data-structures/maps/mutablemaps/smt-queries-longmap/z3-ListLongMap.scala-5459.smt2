; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72568 () Bool)

(assert start!72568)

(declare-fun b_free!13725 () Bool)

(declare-fun b_next!13725 () Bool)

(assert (=> start!72568 (= b_free!13725 (not b_next!13725))))

(declare-fun tp!48274 () Bool)

(declare-fun b_and!22829 () Bool)

(assert (=> start!72568 (= tp!48274 b_and!22829)))

(declare-fun b!841799 () Bool)

(declare-fun res!572308 () Bool)

(declare-fun e!469586 () Bool)

(assert (=> b!841799 (=> (not res!572308) (not e!469586))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!47426 0))(
  ( (array!47427 (arr!22740 (Array (_ BitVec 32) (_ BitVec 64))) (size!23181 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47426)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!841799 (= res!572308 (and (= (select (arr!22740 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23181 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun res!572305 () Bool)

(assert (=> start!72568 (=> (not res!572305) (not e!469586))))

(assert (=> start!72568 (= res!572305 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23181 _keys!868))))))

(assert (=> start!72568 e!469586))

(declare-fun tp_is_empty!15591 () Bool)

(assert (=> start!72568 tp_is_empty!15591))

(assert (=> start!72568 true))

(assert (=> start!72568 tp!48274))

(declare-fun array_inv!18076 (array!47426) Bool)

(assert (=> start!72568 (array_inv!18076 _keys!868)))

(declare-datatypes ((V!25835 0))(
  ( (V!25836 (val!7843 Int)) )
))
(declare-datatypes ((ValueCell!7356 0))(
  ( (ValueCellFull!7356 (v!10264 V!25835)) (EmptyCell!7356) )
))
(declare-datatypes ((array!47428 0))(
  ( (array!47429 (arr!22741 (Array (_ BitVec 32) ValueCell!7356)) (size!23182 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47428)

(declare-fun e!469587 () Bool)

(declare-fun array_inv!18077 (array!47428) Bool)

(assert (=> start!72568 (and (array_inv!18077 _values!688) e!469587)))

(declare-fun b!841800 () Bool)

(declare-fun e!469590 () Bool)

(assert (=> b!841800 (= e!469590 tp_is_empty!15591)))

(declare-fun b!841801 () Bool)

(declare-fun res!572307 () Bool)

(assert (=> b!841801 (=> (not res!572307) (not e!469586))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841801 (= res!572307 (validMask!0 mask!1196))))

(declare-datatypes ((tuple2!10428 0))(
  ( (tuple2!10429 (_1!5224 (_ BitVec 64)) (_2!5224 V!25835)) )
))
(declare-datatypes ((List!16254 0))(
  ( (Nil!16251) (Cons!16250 (h!17381 tuple2!10428) (t!22633 List!16254)) )
))
(declare-datatypes ((ListLongMap!9211 0))(
  ( (ListLongMap!9212 (toList!4621 List!16254)) )
))
(declare-fun call!37408 () ListLongMap!9211)

(declare-fun v!557 () V!25835)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun bm!37405 () Bool)

(declare-fun minValue!654 () V!25835)

(declare-fun zeroValue!654 () V!25835)

(declare-fun getCurrentListMapNoExtraKeys!2611 (array!47426 array!47428 (_ BitVec 32) (_ BitVec 32) V!25835 V!25835 (_ BitVec 32) Int) ListLongMap!9211)

(assert (=> bm!37405 (= call!37408 (getCurrentListMapNoExtraKeys!2611 _keys!868 (array!47429 (store (arr!22741 _values!688) i!612 (ValueCellFull!7356 v!557)) (size!23182 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37406 () Bool)

(declare-fun call!37409 () ListLongMap!9211)

(assert (=> bm!37406 (= call!37409 (getCurrentListMapNoExtraKeys!2611 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841802 () Bool)

(declare-fun e!469585 () Bool)

(declare-fun mapRes!24986 () Bool)

(assert (=> b!841802 (= e!469587 (and e!469585 mapRes!24986))))

(declare-fun condMapEmpty!24986 () Bool)

(declare-fun mapDefault!24986 () ValueCell!7356)

(assert (=> b!841802 (= condMapEmpty!24986 (= (arr!22741 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7356)) mapDefault!24986)))))

(declare-fun b!841803 () Bool)

(declare-fun res!572304 () Bool)

(assert (=> b!841803 (=> (not res!572304) (not e!469586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841803 (= res!572304 (validKeyInArray!0 k0!854))))

(declare-fun b!841804 () Bool)

(declare-fun res!572306 () Bool)

(assert (=> b!841804 (=> (not res!572306) (not e!469586))))

(declare-datatypes ((List!16255 0))(
  ( (Nil!16252) (Cons!16251 (h!17382 (_ BitVec 64)) (t!22634 List!16255)) )
))
(declare-fun arrayNoDuplicates!0 (array!47426 (_ BitVec 32) List!16255) Bool)

(assert (=> b!841804 (= res!572306 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16252))))

(declare-fun b!841805 () Bool)

(declare-fun e!469589 () Bool)

(assert (=> b!841805 (= e!469589 (= call!37408 call!37409))))

(declare-fun b!841806 () Bool)

(declare-fun res!572309 () Bool)

(assert (=> b!841806 (=> (not res!572309) (not e!469586))))

(assert (=> b!841806 (= res!572309 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23181 _keys!868))))))

(declare-fun b!841807 () Bool)

(declare-fun +!2024 (ListLongMap!9211 tuple2!10428) ListLongMap!9211)

(assert (=> b!841807 (= e!469589 (= call!37408 (+!2024 call!37409 (tuple2!10429 k0!854 v!557))))))

(declare-fun b!841808 () Bool)

(declare-fun res!572303 () Bool)

(assert (=> b!841808 (=> (not res!572303) (not e!469586))))

(assert (=> b!841808 (= res!572303 (and (= (size!23182 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23181 _keys!868) (size!23182 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841809 () Bool)

(assert (=> b!841809 (= e!469586 (not true))))

(assert (=> b!841809 e!469589))

(declare-fun c!91365 () Bool)

(assert (=> b!841809 (= c!91365 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28904 0))(
  ( (Unit!28905) )
))
(declare-fun lt!380898 () Unit!28904)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!301 (array!47426 array!47428 (_ BitVec 32) (_ BitVec 32) V!25835 V!25835 (_ BitVec 32) (_ BitVec 64) V!25835 (_ BitVec 32) Int) Unit!28904)

(assert (=> b!841809 (= lt!380898 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!301 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!24986 () Bool)

(declare-fun tp!48275 () Bool)

(assert (=> mapNonEmpty!24986 (= mapRes!24986 (and tp!48275 e!469590))))

(declare-fun mapKey!24986 () (_ BitVec 32))

(declare-fun mapValue!24986 () ValueCell!7356)

(declare-fun mapRest!24986 () (Array (_ BitVec 32) ValueCell!7356))

(assert (=> mapNonEmpty!24986 (= (arr!22741 _values!688) (store mapRest!24986 mapKey!24986 mapValue!24986))))

(declare-fun b!841810 () Bool)

(declare-fun res!572310 () Bool)

(assert (=> b!841810 (=> (not res!572310) (not e!469586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47426 (_ BitVec 32)) Bool)

(assert (=> b!841810 (= res!572310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841811 () Bool)

(assert (=> b!841811 (= e!469585 tp_is_empty!15591)))

(declare-fun mapIsEmpty!24986 () Bool)

(assert (=> mapIsEmpty!24986 mapRes!24986))

(assert (= (and start!72568 res!572305) b!841801))

(assert (= (and b!841801 res!572307) b!841808))

(assert (= (and b!841808 res!572303) b!841810))

(assert (= (and b!841810 res!572310) b!841804))

(assert (= (and b!841804 res!572306) b!841806))

(assert (= (and b!841806 res!572309) b!841803))

(assert (= (and b!841803 res!572304) b!841799))

(assert (= (and b!841799 res!572308) b!841809))

(assert (= (and b!841809 c!91365) b!841807))

(assert (= (and b!841809 (not c!91365)) b!841805))

(assert (= (or b!841807 b!841805) bm!37405))

(assert (= (or b!841807 b!841805) bm!37406))

(assert (= (and b!841802 condMapEmpty!24986) mapIsEmpty!24986))

(assert (= (and b!841802 (not condMapEmpty!24986)) mapNonEmpty!24986))

(get-info :version)

(assert (= (and mapNonEmpty!24986 ((_ is ValueCellFull!7356) mapValue!24986)) b!841800))

(assert (= (and b!841802 ((_ is ValueCellFull!7356) mapDefault!24986)) b!841811))

(assert (= start!72568 b!841802))

(declare-fun m!785179 () Bool)

(assert (=> b!841801 m!785179))

(declare-fun m!785181 () Bool)

(assert (=> bm!37405 m!785181))

(declare-fun m!785183 () Bool)

(assert (=> bm!37405 m!785183))

(declare-fun m!785185 () Bool)

(assert (=> b!841809 m!785185))

(declare-fun m!785187 () Bool)

(assert (=> b!841803 m!785187))

(declare-fun m!785189 () Bool)

(assert (=> mapNonEmpty!24986 m!785189))

(declare-fun m!785191 () Bool)

(assert (=> b!841804 m!785191))

(declare-fun m!785193 () Bool)

(assert (=> b!841799 m!785193))

(declare-fun m!785195 () Bool)

(assert (=> b!841810 m!785195))

(declare-fun m!785197 () Bool)

(assert (=> start!72568 m!785197))

(declare-fun m!785199 () Bool)

(assert (=> start!72568 m!785199))

(declare-fun m!785201 () Bool)

(assert (=> bm!37406 m!785201))

(declare-fun m!785203 () Bool)

(assert (=> b!841807 m!785203))

(check-sat b_and!22829 (not b!841803) (not b!841810) (not mapNonEmpty!24986) (not b!841804) (not start!72568) (not bm!37405) (not b!841801) (not b_next!13725) (not b!841807) tp_is_empty!15591 (not b!841809) (not bm!37406))
(check-sat b_and!22829 (not b_next!13725))

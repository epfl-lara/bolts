; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72532 () Bool)

(assert start!72532)

(declare-fun b_free!13689 () Bool)

(declare-fun b_next!13689 () Bool)

(assert (=> start!72532 (= b_free!13689 (not b_next!13689))))

(declare-fun tp!48166 () Bool)

(declare-fun b_and!22793 () Bool)

(assert (=> start!72532 (= tp!48166 b_and!22793)))

(declare-fun mapNonEmpty!24932 () Bool)

(declare-fun mapRes!24932 () Bool)

(declare-fun tp!48167 () Bool)

(declare-fun e!469261 () Bool)

(assert (=> mapNonEmpty!24932 (= mapRes!24932 (and tp!48167 e!469261))))

(declare-datatypes ((V!25787 0))(
  ( (V!25788 (val!7825 Int)) )
))
(declare-datatypes ((ValueCell!7338 0))(
  ( (ValueCellFull!7338 (v!10246 V!25787)) (EmptyCell!7338) )
))
(declare-fun mapRest!24932 () (Array (_ BitVec 32) ValueCell!7338))

(declare-fun mapKey!24932 () (_ BitVec 32))

(declare-fun mapValue!24932 () ValueCell!7338)

(declare-datatypes ((array!47356 0))(
  ( (array!47357 (arr!22705 (Array (_ BitVec 32) ValueCell!7338)) (size!23146 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47356)

(assert (=> mapNonEmpty!24932 (= (arr!22705 _values!688) (store mapRest!24932 mapKey!24932 mapValue!24932))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10400 0))(
  ( (tuple2!10401 (_1!5210 (_ BitVec 64)) (_2!5210 V!25787)) )
))
(declare-datatypes ((List!16224 0))(
  ( (Nil!16221) (Cons!16220 (h!17351 tuple2!10400) (t!22603 List!16224)) )
))
(declare-datatypes ((ListLongMap!9183 0))(
  ( (ListLongMap!9184 (toList!4607 List!16224)) )
))
(declare-fun call!37301 () ListLongMap!9183)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!37297 () Bool)

(declare-datatypes ((array!47358 0))(
  ( (array!47359 (arr!22706 (Array (_ BitVec 32) (_ BitVec 64))) (size!23147 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47358)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25787)

(declare-fun zeroValue!654 () V!25787)

(declare-fun getCurrentListMapNoExtraKeys!2598 (array!47358 array!47356 (_ BitVec 32) (_ BitVec 32) V!25787 V!25787 (_ BitVec 32) Int) ListLongMap!9183)

(assert (=> bm!37297 (= call!37301 (getCurrentListMapNoExtraKeys!2598 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!24932 () Bool)

(assert (=> mapIsEmpty!24932 mapRes!24932))

(declare-fun b!841097 () Bool)

(declare-fun res!571874 () Bool)

(declare-fun e!469262 () Bool)

(assert (=> b!841097 (=> (not res!571874) (not e!469262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841097 (= res!571874 (validMask!0 mask!1196))))

(declare-fun b!841098 () Bool)

(declare-fun e!469266 () Bool)

(declare-fun tp_is_empty!15555 () Bool)

(assert (=> b!841098 (= e!469266 tp_is_empty!15555)))

(declare-fun res!571871 () Bool)

(assert (=> start!72532 (=> (not res!571871) (not e!469262))))

(assert (=> start!72532 (= res!571871 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23147 _keys!868))))))

(assert (=> start!72532 e!469262))

(assert (=> start!72532 tp_is_empty!15555))

(assert (=> start!72532 true))

(assert (=> start!72532 tp!48166))

(declare-fun array_inv!18052 (array!47358) Bool)

(assert (=> start!72532 (array_inv!18052 _keys!868)))

(declare-fun e!469264 () Bool)

(declare-fun array_inv!18053 (array!47356) Bool)

(assert (=> start!72532 (and (array_inv!18053 _values!688) e!469264)))

(declare-fun b!841099 () Bool)

(declare-fun res!571877 () Bool)

(assert (=> b!841099 (=> (not res!571877) (not e!469262))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841099 (= res!571877 (validKeyInArray!0 k0!854))))

(declare-fun b!841100 () Bool)

(assert (=> b!841100 (= e!469264 (and e!469266 mapRes!24932))))

(declare-fun condMapEmpty!24932 () Bool)

(declare-fun mapDefault!24932 () ValueCell!7338)

(assert (=> b!841100 (= condMapEmpty!24932 (= (arr!22705 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7338)) mapDefault!24932)))))

(declare-fun b!841101 () Bool)

(assert (=> b!841101 (= e!469261 tp_is_empty!15555)))

(declare-fun v!557 () V!25787)

(declare-fun call!37300 () ListLongMap!9183)

(declare-fun b!841102 () Bool)

(declare-fun e!469263 () Bool)

(declare-fun +!2013 (ListLongMap!9183 tuple2!10400) ListLongMap!9183)

(assert (=> b!841102 (= e!469263 (= call!37300 (+!2013 call!37301 (tuple2!10401 k0!854 v!557))))))

(declare-fun b!841103 () Bool)

(declare-fun res!571878 () Bool)

(assert (=> b!841103 (=> (not res!571878) (not e!469262))))

(declare-datatypes ((List!16225 0))(
  ( (Nil!16222) (Cons!16221 (h!17352 (_ BitVec 64)) (t!22604 List!16225)) )
))
(declare-fun arrayNoDuplicates!0 (array!47358 (_ BitVec 32) List!16225) Bool)

(assert (=> b!841103 (= res!571878 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16222))))

(declare-fun b!841104 () Bool)

(declare-fun res!571873 () Bool)

(assert (=> b!841104 (=> (not res!571873) (not e!469262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47358 (_ BitVec 32)) Bool)

(assert (=> b!841104 (= res!571873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841105 () Bool)

(declare-fun res!571875 () Bool)

(assert (=> b!841105 (=> (not res!571875) (not e!469262))))

(assert (=> b!841105 (= res!571875 (and (= (size!23146 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23147 _keys!868) (size!23146 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841106 () Bool)

(declare-fun res!571876 () Bool)

(assert (=> b!841106 (=> (not res!571876) (not e!469262))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!841106 (= res!571876 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23147 _keys!868))))))

(declare-fun bm!37298 () Bool)

(assert (=> bm!37298 (= call!37300 (getCurrentListMapNoExtraKeys!2598 _keys!868 (array!47357 (store (arr!22705 _values!688) i!612 (ValueCellFull!7338 v!557)) (size!23146 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841107 () Bool)

(declare-fun res!571872 () Bool)

(assert (=> b!841107 (=> (not res!571872) (not e!469262))))

(assert (=> b!841107 (= res!571872 (and (= (select (arr!22706 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23147 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841108 () Bool)

(assert (=> b!841108 (= e!469263 (= call!37300 call!37301))))

(declare-fun b!841109 () Bool)

(assert (=> b!841109 (= e!469262 (not true))))

(assert (=> b!841109 e!469263))

(declare-fun c!91311 () Bool)

(assert (=> b!841109 (= c!91311 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28886 0))(
  ( (Unit!28887) )
))
(declare-fun lt!380844 () Unit!28886)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!292 (array!47358 array!47356 (_ BitVec 32) (_ BitVec 32) V!25787 V!25787 (_ BitVec 32) (_ BitVec 64) V!25787 (_ BitVec 32) Int) Unit!28886)

(assert (=> b!841109 (= lt!380844 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!292 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!72532 res!571871) b!841097))

(assert (= (and b!841097 res!571874) b!841105))

(assert (= (and b!841105 res!571875) b!841104))

(assert (= (and b!841104 res!571873) b!841103))

(assert (= (and b!841103 res!571878) b!841106))

(assert (= (and b!841106 res!571876) b!841099))

(assert (= (and b!841099 res!571877) b!841107))

(assert (= (and b!841107 res!571872) b!841109))

(assert (= (and b!841109 c!91311) b!841102))

(assert (= (and b!841109 (not c!91311)) b!841108))

(assert (= (or b!841102 b!841108) bm!37298))

(assert (= (or b!841102 b!841108) bm!37297))

(assert (= (and b!841100 condMapEmpty!24932) mapIsEmpty!24932))

(assert (= (and b!841100 (not condMapEmpty!24932)) mapNonEmpty!24932))

(get-info :version)

(assert (= (and mapNonEmpty!24932 ((_ is ValueCellFull!7338) mapValue!24932)) b!841101))

(assert (= (and b!841100 ((_ is ValueCellFull!7338) mapDefault!24932)) b!841098))

(assert (= start!72532 b!841100))

(declare-fun m!784711 () Bool)

(assert (=> b!841107 m!784711))

(declare-fun m!784713 () Bool)

(assert (=> start!72532 m!784713))

(declare-fun m!784715 () Bool)

(assert (=> start!72532 m!784715))

(declare-fun m!784717 () Bool)

(assert (=> b!841109 m!784717))

(declare-fun m!784719 () Bool)

(assert (=> b!841102 m!784719))

(declare-fun m!784721 () Bool)

(assert (=> bm!37298 m!784721))

(declare-fun m!784723 () Bool)

(assert (=> bm!37298 m!784723))

(declare-fun m!784725 () Bool)

(assert (=> mapNonEmpty!24932 m!784725))

(declare-fun m!784727 () Bool)

(assert (=> b!841099 m!784727))

(declare-fun m!784729 () Bool)

(assert (=> b!841097 m!784729))

(declare-fun m!784731 () Bool)

(assert (=> bm!37297 m!784731))

(declare-fun m!784733 () Bool)

(assert (=> b!841104 m!784733))

(declare-fun m!784735 () Bool)

(assert (=> b!841103 m!784735))

(check-sat (not start!72532) (not b!841103) (not bm!37297) (not b!841102) (not b_next!13689) (not bm!37298) (not b!841097) (not b!841109) (not b!841099) b_and!22793 (not b!841104) tp_is_empty!15555 (not mapNonEmpty!24932))
(check-sat b_and!22793 (not b_next!13689))

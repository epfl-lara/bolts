; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75028 () Bool)

(assert start!75028)

(declare-fun b_free!15489 () Bool)

(declare-fun b_next!15489 () Bool)

(assert (=> start!75028 (= b_free!15489 (not b_next!15489))))

(declare-fun tp!54173 () Bool)

(declare-fun b_and!25697 () Bool)

(assert (=> start!75028 (= tp!54173 b_and!25697)))

(declare-fun b!884638 () Bool)

(declare-fun res!601080 () Bool)

(declare-fun e!492343 () Bool)

(assert (=> b!884638 (=> (not res!601080) (not e!492343))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51576 0))(
  ( (array!51577 (arr!24802 (Array (_ BitVec 32) (_ BitVec 64))) (size!25243 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51576)

(assert (=> b!884638 (= res!601080 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25243 _keys!868))))))

(declare-fun b!884639 () Bool)

(declare-fun e!492338 () Bool)

(assert (=> b!884639 (= e!492343 e!492338)))

(declare-fun res!601088 () Bool)

(assert (=> b!884639 (=> (not res!601088) (not e!492338))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!884639 (= res!601088 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!28691 0))(
  ( (V!28692 (val!8914 Int)) )
))
(declare-datatypes ((tuple2!11848 0))(
  ( (tuple2!11849 (_1!5934 (_ BitVec 64)) (_2!5934 V!28691)) )
))
(declare-datatypes ((List!17713 0))(
  ( (Nil!17710) (Cons!17709 (h!18840 tuple2!11848) (t!24996 List!17713)) )
))
(declare-datatypes ((ListLongMap!10631 0))(
  ( (ListLongMap!10632 (toList!5331 List!17713)) )
))
(declare-fun lt!400735 () ListLongMap!10631)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8427 0))(
  ( (ValueCellFull!8427 (v!11383 V!28691)) (EmptyCell!8427) )
))
(declare-datatypes ((array!51578 0))(
  ( (array!51579 (arr!24803 (Array (_ BitVec 32) ValueCell!8427)) (size!25244 (_ BitVec 32))) )
))
(declare-fun lt!400736 () array!51578)

(declare-fun minValue!654 () V!28691)

(declare-fun zeroValue!654 () V!28691)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3285 (array!51576 array!51578 (_ BitVec 32) (_ BitVec 32) V!28691 V!28691 (_ BitVec 32) Int) ListLongMap!10631)

(assert (=> b!884639 (= lt!400735 (getCurrentListMapNoExtraKeys!3285 _keys!868 lt!400736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28691)

(declare-fun _values!688 () array!51578)

(assert (=> b!884639 (= lt!400736 (array!51579 (store (arr!24803 _values!688) i!612 (ValueCellFull!8427 v!557)) (size!25244 _values!688)))))

(declare-fun lt!400739 () ListLongMap!10631)

(assert (=> b!884639 (= lt!400739 (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!884640 () Bool)

(declare-fun res!601089 () Bool)

(assert (=> b!884640 (=> (not res!601089) (not e!492343))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884640 (= res!601089 (validKeyInArray!0 k0!854))))

(declare-fun b!884641 () Bool)

(declare-fun e!492341 () Bool)

(declare-fun e!492342 () Bool)

(declare-fun mapRes!28239 () Bool)

(assert (=> b!884641 (= e!492341 (and e!492342 mapRes!28239))))

(declare-fun condMapEmpty!28239 () Bool)

(declare-fun mapDefault!28239 () ValueCell!8427)

(assert (=> b!884641 (= condMapEmpty!28239 (= (arr!24803 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8427)) mapDefault!28239)))))

(declare-fun b!884642 () Bool)

(declare-fun res!601087 () Bool)

(assert (=> b!884642 (=> (not res!601087) (not e!492343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884642 (= res!601087 (validMask!0 mask!1196))))

(declare-fun b!884643 () Bool)

(declare-fun res!601086 () Bool)

(assert (=> b!884643 (=> (not res!601086) (not e!492343))))

(assert (=> b!884643 (= res!601086 (and (= (size!25244 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25243 _keys!868) (size!25244 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!884644 () Bool)

(declare-fun res!601084 () Bool)

(assert (=> b!884644 (=> (not res!601084) (not e!492343))))

(assert (=> b!884644 (= res!601084 (and (= (select (arr!24802 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!28239 () Bool)

(declare-fun tp!54174 () Bool)

(declare-fun e!492339 () Bool)

(assert (=> mapNonEmpty!28239 (= mapRes!28239 (and tp!54174 e!492339))))

(declare-fun mapKey!28239 () (_ BitVec 32))

(declare-fun mapRest!28239 () (Array (_ BitVec 32) ValueCell!8427))

(declare-fun mapValue!28239 () ValueCell!8427)

(assert (=> mapNonEmpty!28239 (= (arr!24803 _values!688) (store mapRest!28239 mapKey!28239 mapValue!28239))))

(declare-fun b!884645 () Bool)

(declare-fun res!601082 () Bool)

(assert (=> b!884645 (=> (not res!601082) (not e!492343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51576 (_ BitVec 32)) Bool)

(assert (=> b!884645 (= res!601082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!884646 () Bool)

(declare-fun res!601085 () Bool)

(assert (=> b!884646 (=> (not res!601085) (not e!492343))))

(declare-datatypes ((List!17714 0))(
  ( (Nil!17711) (Cons!17710 (h!18841 (_ BitVec 64)) (t!24997 List!17714)) )
))
(declare-fun arrayNoDuplicates!0 (array!51576 (_ BitVec 32) List!17714) Bool)

(assert (=> b!884646 (= res!601085 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17711))))

(declare-fun res!601081 () Bool)

(assert (=> start!75028 (=> (not res!601081) (not e!492343))))

(assert (=> start!75028 (= res!601081 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25243 _keys!868))))))

(assert (=> start!75028 e!492343))

(declare-fun tp_is_empty!17733 () Bool)

(assert (=> start!75028 tp_is_empty!17733))

(assert (=> start!75028 true))

(assert (=> start!75028 tp!54173))

(declare-fun array_inv!19502 (array!51576) Bool)

(assert (=> start!75028 (array_inv!19502 _keys!868)))

(declare-fun array_inv!19503 (array!51578) Bool)

(assert (=> start!75028 (and (array_inv!19503 _values!688) e!492341)))

(declare-fun b!884647 () Bool)

(declare-fun e!492337 () Bool)

(assert (=> b!884647 (= e!492338 (not e!492337))))

(declare-fun res!601083 () Bool)

(assert (=> b!884647 (=> res!601083 e!492337)))

(assert (=> b!884647 (= res!601083 (validKeyInArray!0 (select (arr!24802 _keys!868) from!1053)))))

(declare-fun lt!400738 () tuple2!11848)

(declare-fun +!2534 (ListLongMap!10631 tuple2!11848) ListLongMap!10631)

(assert (=> b!884647 (= (getCurrentListMapNoExtraKeys!3285 _keys!868 lt!400736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2534 (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400738))))

(assert (=> b!884647 (= lt!400738 (tuple2!11849 k0!854 v!557))))

(declare-datatypes ((Unit!30177 0))(
  ( (Unit!30178) )
))
(declare-fun lt!400737 () Unit!30177)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!755 (array!51576 array!51578 (_ BitVec 32) (_ BitVec 32) V!28691 V!28691 (_ BitVec 32) (_ BitVec 64) V!28691 (_ BitVec 32) Int) Unit!30177)

(assert (=> b!884647 (= lt!400737 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!755 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!884648 () Bool)

(assert (=> b!884648 (= e!492337 (= lt!400735 (+!2534 lt!400739 lt!400738)))))

(declare-fun b!884649 () Bool)

(assert (=> b!884649 (= e!492342 tp_is_empty!17733)))

(declare-fun mapIsEmpty!28239 () Bool)

(assert (=> mapIsEmpty!28239 mapRes!28239))

(declare-fun b!884650 () Bool)

(assert (=> b!884650 (= e!492339 tp_is_empty!17733)))

(assert (= (and start!75028 res!601081) b!884642))

(assert (= (and b!884642 res!601087) b!884643))

(assert (= (and b!884643 res!601086) b!884645))

(assert (= (and b!884645 res!601082) b!884646))

(assert (= (and b!884646 res!601085) b!884638))

(assert (= (and b!884638 res!601080) b!884640))

(assert (= (and b!884640 res!601089) b!884644))

(assert (= (and b!884644 res!601084) b!884639))

(assert (= (and b!884639 res!601088) b!884647))

(assert (= (and b!884647 (not res!601083)) b!884648))

(assert (= (and b!884641 condMapEmpty!28239) mapIsEmpty!28239))

(assert (= (and b!884641 (not condMapEmpty!28239)) mapNonEmpty!28239))

(get-info :version)

(assert (= (and mapNonEmpty!28239 ((_ is ValueCellFull!8427) mapValue!28239)) b!884650))

(assert (= (and b!884641 ((_ is ValueCellFull!8427) mapDefault!28239)) b!884649))

(assert (= start!75028 b!884641))

(declare-fun m!824963 () Bool)

(assert (=> mapNonEmpty!28239 m!824963))

(declare-fun m!824965 () Bool)

(assert (=> b!884647 m!824965))

(declare-fun m!824967 () Bool)

(assert (=> b!884647 m!824967))

(declare-fun m!824969 () Bool)

(assert (=> b!884647 m!824969))

(assert (=> b!884647 m!824965))

(declare-fun m!824971 () Bool)

(assert (=> b!884647 m!824971))

(declare-fun m!824973 () Bool)

(assert (=> b!884647 m!824973))

(assert (=> b!884647 m!824967))

(declare-fun m!824975 () Bool)

(assert (=> b!884647 m!824975))

(declare-fun m!824977 () Bool)

(assert (=> b!884642 m!824977))

(declare-fun m!824979 () Bool)

(assert (=> b!884640 m!824979))

(declare-fun m!824981 () Bool)

(assert (=> b!884645 m!824981))

(declare-fun m!824983 () Bool)

(assert (=> b!884648 m!824983))

(declare-fun m!824985 () Bool)

(assert (=> b!884646 m!824985))

(declare-fun m!824987 () Bool)

(assert (=> b!884639 m!824987))

(declare-fun m!824989 () Bool)

(assert (=> b!884639 m!824989))

(declare-fun m!824991 () Bool)

(assert (=> b!884639 m!824991))

(declare-fun m!824993 () Bool)

(assert (=> b!884644 m!824993))

(declare-fun m!824995 () Bool)

(assert (=> start!75028 m!824995))

(declare-fun m!824997 () Bool)

(assert (=> start!75028 m!824997))

(check-sat b_and!25697 (not b!884645) (not b!884642) (not mapNonEmpty!28239) (not b!884648) (not b!884640) tp_is_empty!17733 (not b!884646) (not start!75028) (not b_next!15489) (not b!884639) (not b!884647))
(check-sat b_and!25697 (not b_next!15489))
(get-model)

(declare-fun b!884700 () Bool)

(declare-fun e!492375 () Bool)

(declare-fun contains!4276 (List!17714 (_ BitVec 64)) Bool)

(assert (=> b!884700 (= e!492375 (contains!4276 Nil!17711 (select (arr!24802 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!884701 () Bool)

(declare-fun e!492373 () Bool)

(declare-fun e!492376 () Bool)

(assert (=> b!884701 (= e!492373 e!492376)))

(declare-fun res!601127 () Bool)

(assert (=> b!884701 (=> (not res!601127) (not e!492376))))

(assert (=> b!884701 (= res!601127 (not e!492375))))

(declare-fun res!601126 () Bool)

(assert (=> b!884701 (=> (not res!601126) (not e!492375))))

(assert (=> b!884701 (= res!601126 (validKeyInArray!0 (select (arr!24802 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!884702 () Bool)

(declare-fun e!492374 () Bool)

(declare-fun call!39007 () Bool)

(assert (=> b!884702 (= e!492374 call!39007)))

(declare-fun b!884703 () Bool)

(assert (=> b!884703 (= e!492376 e!492374)))

(declare-fun c!93073 () Bool)

(assert (=> b!884703 (= c!93073 (validKeyInArray!0 (select (arr!24802 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!109183 () Bool)

(declare-fun res!601128 () Bool)

(assert (=> d!109183 (=> res!601128 e!492373)))

(assert (=> d!109183 (= res!601128 (bvsge #b00000000000000000000000000000000 (size!25243 _keys!868)))))

(assert (=> d!109183 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17711) e!492373)))

(declare-fun b!884704 () Bool)

(assert (=> b!884704 (= e!492374 call!39007)))

(declare-fun bm!39004 () Bool)

(assert (=> bm!39004 (= call!39007 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!93073 (Cons!17710 (select (arr!24802 _keys!868) #b00000000000000000000000000000000) Nil!17711) Nil!17711)))))

(assert (= (and d!109183 (not res!601128)) b!884701))

(assert (= (and b!884701 res!601126) b!884700))

(assert (= (and b!884701 res!601127) b!884703))

(assert (= (and b!884703 c!93073) b!884704))

(assert (= (and b!884703 (not c!93073)) b!884702))

(assert (= (or b!884704 b!884702) bm!39004))

(declare-fun m!825035 () Bool)

(assert (=> b!884700 m!825035))

(assert (=> b!884700 m!825035))

(declare-fun m!825037 () Bool)

(assert (=> b!884700 m!825037))

(assert (=> b!884701 m!825035))

(assert (=> b!884701 m!825035))

(declare-fun m!825039 () Bool)

(assert (=> b!884701 m!825039))

(assert (=> b!884703 m!825035))

(assert (=> b!884703 m!825035))

(assert (=> b!884703 m!825039))

(assert (=> bm!39004 m!825035))

(declare-fun m!825041 () Bool)

(assert (=> bm!39004 m!825041))

(assert (=> b!884646 d!109183))

(declare-fun d!109185 () Bool)

(assert (=> d!109185 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!884642 d!109185))

(declare-fun d!109187 () Bool)

(assert (=> d!109187 (= (array_inv!19502 _keys!868) (bvsge (size!25243 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!75028 d!109187))

(declare-fun d!109189 () Bool)

(assert (=> d!109189 (= (array_inv!19503 _values!688) (bvsge (size!25244 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!75028 d!109189))

(declare-fun b!884729 () Bool)

(declare-fun e!492391 () Bool)

(declare-fun lt!400774 () ListLongMap!10631)

(declare-fun isEmpty!678 (ListLongMap!10631) Bool)

(assert (=> b!884729 (= e!492391 (isEmpty!678 lt!400774))))

(declare-fun b!884730 () Bool)

(assert (=> b!884730 (= e!492391 (= lt!400774 (getCurrentListMapNoExtraKeys!3285 _keys!868 lt!400736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!884731 () Bool)

(declare-fun e!492397 () ListLongMap!10631)

(assert (=> b!884731 (= e!492397 (ListLongMap!10632 Nil!17710))))

(declare-fun b!884732 () Bool)

(declare-fun e!492395 () ListLongMap!10631)

(assert (=> b!884732 (= e!492397 e!492395)))

(declare-fun c!93085 () Bool)

(assert (=> b!884732 (= c!93085 (validKeyInArray!0 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!884733 () Bool)

(declare-fun e!492392 () Bool)

(assert (=> b!884733 (= e!492392 (validKeyInArray!0 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!884733 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!884734 () Bool)

(declare-fun call!39010 () ListLongMap!10631)

(assert (=> b!884734 (= e!492395 call!39010)))

(declare-fun b!884735 () Bool)

(declare-fun e!492394 () Bool)

(declare-fun e!492393 () Bool)

(assert (=> b!884735 (= e!492394 e!492393)))

(assert (=> b!884735 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(declare-fun res!601140 () Bool)

(declare-fun contains!4277 (ListLongMap!10631 (_ BitVec 64)) Bool)

(assert (=> b!884735 (= res!601140 (contains!4277 lt!400774 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!884735 (=> (not res!601140) (not e!492393))))

(declare-fun b!884736 () Bool)

(declare-fun res!601137 () Bool)

(declare-fun e!492396 () Bool)

(assert (=> b!884736 (=> (not res!601137) (not e!492396))))

(assert (=> b!884736 (= res!601137 (not (contains!4277 lt!400774 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884737 () Bool)

(declare-fun lt!400772 () Unit!30177)

(declare-fun lt!400769 () Unit!30177)

(assert (=> b!884737 (= lt!400772 lt!400769)))

(declare-fun lt!400771 () V!28691)

(declare-fun lt!400770 () ListLongMap!10631)

(declare-fun lt!400773 () (_ BitVec 64))

(declare-fun lt!400775 () (_ BitVec 64))

(assert (=> b!884737 (not (contains!4277 (+!2534 lt!400770 (tuple2!11849 lt!400775 lt!400771)) lt!400773))))

(declare-fun addStillNotContains!213 (ListLongMap!10631 (_ BitVec 64) V!28691 (_ BitVec 64)) Unit!30177)

(assert (=> b!884737 (= lt!400769 (addStillNotContains!213 lt!400770 lt!400775 lt!400771 lt!400773))))

(assert (=> b!884737 (= lt!400773 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!13084 (ValueCell!8427 V!28691) V!28691)

(declare-fun dynLambda!1281 (Int (_ BitVec 64)) V!28691)

(assert (=> b!884737 (= lt!400771 (get!13084 (select (arr!24803 lt!400736) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!884737 (= lt!400775 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!884737 (= lt!400770 call!39010)))

(assert (=> b!884737 (= e!492395 (+!2534 call!39010 (tuple2!11849 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13084 (select (arr!24803 lt!400736) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!884738 () Bool)

(assert (=> b!884738 (= e!492394 e!492391)))

(declare-fun c!93082 () Bool)

(assert (=> b!884738 (= c!93082 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(declare-fun b!884739 () Bool)

(assert (=> b!884739 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(assert (=> b!884739 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25244 lt!400736)))))

(declare-fun apply!386 (ListLongMap!10631 (_ BitVec 64)) V!28691)

(assert (=> b!884739 (= e!492393 (= (apply!386 lt!400774 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13084 (select (arr!24803 lt!400736) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!39007 () Bool)

(assert (=> bm!39007 (= call!39010 (getCurrentListMapNoExtraKeys!3285 _keys!868 lt!400736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!884740 () Bool)

(assert (=> b!884740 (= e!492396 e!492394)))

(declare-fun c!93083 () Bool)

(assert (=> b!884740 (= c!93083 e!492392)))

(declare-fun res!601138 () Bool)

(assert (=> b!884740 (=> (not res!601138) (not e!492392))))

(assert (=> b!884740 (= res!601138 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(declare-fun d!109191 () Bool)

(assert (=> d!109191 e!492396))

(declare-fun res!601139 () Bool)

(assert (=> d!109191 (=> (not res!601139) (not e!492396))))

(assert (=> d!109191 (= res!601139 (not (contains!4277 lt!400774 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109191 (= lt!400774 e!492397)))

(declare-fun c!93084 () Bool)

(assert (=> d!109191 (= c!93084 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(assert (=> d!109191 (validMask!0 mask!1196)))

(assert (=> d!109191 (= (getCurrentListMapNoExtraKeys!3285 _keys!868 lt!400736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400774)))

(assert (= (and d!109191 c!93084) b!884731))

(assert (= (and d!109191 (not c!93084)) b!884732))

(assert (= (and b!884732 c!93085) b!884737))

(assert (= (and b!884732 (not c!93085)) b!884734))

(assert (= (or b!884737 b!884734) bm!39007))

(assert (= (and d!109191 res!601139) b!884736))

(assert (= (and b!884736 res!601137) b!884740))

(assert (= (and b!884740 res!601138) b!884733))

(assert (= (and b!884740 c!93083) b!884735))

(assert (= (and b!884740 (not c!93083)) b!884738))

(assert (= (and b!884735 res!601140) b!884739))

(assert (= (and b!884738 c!93082) b!884730))

(assert (= (and b!884738 (not c!93082)) b!884729))

(declare-fun b_lambda!12817 () Bool)

(assert (=> (not b_lambda!12817) (not b!884737)))

(declare-fun t!25000 () Bool)

(declare-fun tb!5141 () Bool)

(assert (=> (and start!75028 (= defaultEntry!696 defaultEntry!696) t!25000) tb!5141))

(declare-fun result!9911 () Bool)

(assert (=> tb!5141 (= result!9911 tp_is_empty!17733)))

(assert (=> b!884737 t!25000))

(declare-fun b_and!25701 () Bool)

(assert (= b_and!25697 (and (=> t!25000 result!9911) b_and!25701)))

(declare-fun b_lambda!12819 () Bool)

(assert (=> (not b_lambda!12819) (not b!884739)))

(assert (=> b!884739 t!25000))

(declare-fun b_and!25703 () Bool)

(assert (= b_and!25701 (and (=> t!25000 result!9911) b_and!25703)))

(declare-fun m!825043 () Bool)

(assert (=> b!884736 m!825043))

(declare-fun m!825045 () Bool)

(assert (=> b!884732 m!825045))

(assert (=> b!884732 m!825045))

(declare-fun m!825047 () Bool)

(assert (=> b!884732 m!825047))

(declare-fun m!825049 () Bool)

(assert (=> b!884730 m!825049))

(declare-fun m!825051 () Bool)

(assert (=> b!884739 m!825051))

(declare-fun m!825053 () Bool)

(assert (=> b!884739 m!825053))

(assert (=> b!884739 m!825051))

(declare-fun m!825055 () Bool)

(assert (=> b!884739 m!825055))

(assert (=> b!884739 m!825053))

(assert (=> b!884739 m!825045))

(assert (=> b!884739 m!825045))

(declare-fun m!825057 () Bool)

(assert (=> b!884739 m!825057))

(declare-fun m!825059 () Bool)

(assert (=> b!884729 m!825059))

(declare-fun m!825061 () Bool)

(assert (=> b!884737 m!825061))

(declare-fun m!825063 () Bool)

(assert (=> b!884737 m!825063))

(assert (=> b!884737 m!825051))

(declare-fun m!825065 () Bool)

(assert (=> b!884737 m!825065))

(assert (=> b!884737 m!825045))

(assert (=> b!884737 m!825053))

(assert (=> b!884737 m!825051))

(assert (=> b!884737 m!825055))

(assert (=> b!884737 m!825061))

(assert (=> b!884737 m!825053))

(declare-fun m!825067 () Bool)

(assert (=> b!884737 m!825067))

(assert (=> b!884735 m!825045))

(assert (=> b!884735 m!825045))

(declare-fun m!825069 () Bool)

(assert (=> b!884735 m!825069))

(assert (=> b!884733 m!825045))

(assert (=> b!884733 m!825045))

(assert (=> b!884733 m!825047))

(declare-fun m!825071 () Bool)

(assert (=> d!109191 m!825071))

(assert (=> d!109191 m!824977))

(assert (=> bm!39007 m!825049))

(assert (=> b!884647 d!109191))

(declare-fun b!884743 () Bool)

(declare-fun e!492398 () Bool)

(declare-fun lt!400781 () ListLongMap!10631)

(assert (=> b!884743 (= e!492398 (isEmpty!678 lt!400781))))

(declare-fun b!884744 () Bool)

(assert (=> b!884744 (= e!492398 (= lt!400781 (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!884745 () Bool)

(declare-fun e!492404 () ListLongMap!10631)

(assert (=> b!884745 (= e!492404 (ListLongMap!10632 Nil!17710))))

(declare-fun b!884746 () Bool)

(declare-fun e!492402 () ListLongMap!10631)

(assert (=> b!884746 (= e!492404 e!492402)))

(declare-fun c!93089 () Bool)

(assert (=> b!884746 (= c!93089 (validKeyInArray!0 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!884747 () Bool)

(declare-fun e!492399 () Bool)

(assert (=> b!884747 (= e!492399 (validKeyInArray!0 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!884747 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!884748 () Bool)

(declare-fun call!39011 () ListLongMap!10631)

(assert (=> b!884748 (= e!492402 call!39011)))

(declare-fun b!884749 () Bool)

(declare-fun e!492401 () Bool)

(declare-fun e!492400 () Bool)

(assert (=> b!884749 (= e!492401 e!492400)))

(assert (=> b!884749 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(declare-fun res!601144 () Bool)

(assert (=> b!884749 (= res!601144 (contains!4277 lt!400781 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!884749 (=> (not res!601144) (not e!492400))))

(declare-fun b!884750 () Bool)

(declare-fun res!601141 () Bool)

(declare-fun e!492403 () Bool)

(assert (=> b!884750 (=> (not res!601141) (not e!492403))))

(assert (=> b!884750 (= res!601141 (not (contains!4277 lt!400781 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884751 () Bool)

(declare-fun lt!400779 () Unit!30177)

(declare-fun lt!400776 () Unit!30177)

(assert (=> b!884751 (= lt!400779 lt!400776)))

(declare-fun lt!400780 () (_ BitVec 64))

(declare-fun lt!400777 () ListLongMap!10631)

(declare-fun lt!400778 () V!28691)

(declare-fun lt!400782 () (_ BitVec 64))

(assert (=> b!884751 (not (contains!4277 (+!2534 lt!400777 (tuple2!11849 lt!400782 lt!400778)) lt!400780))))

(assert (=> b!884751 (= lt!400776 (addStillNotContains!213 lt!400777 lt!400782 lt!400778 lt!400780))))

(assert (=> b!884751 (= lt!400780 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!884751 (= lt!400778 (get!13084 (select (arr!24803 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!884751 (= lt!400782 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!884751 (= lt!400777 call!39011)))

(assert (=> b!884751 (= e!492402 (+!2534 call!39011 (tuple2!11849 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13084 (select (arr!24803 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!884752 () Bool)

(assert (=> b!884752 (= e!492401 e!492398)))

(declare-fun c!93086 () Bool)

(assert (=> b!884752 (= c!93086 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(declare-fun b!884753 () Bool)

(assert (=> b!884753 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(assert (=> b!884753 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25244 _values!688)))))

(assert (=> b!884753 (= e!492400 (= (apply!386 lt!400781 (select (arr!24802 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13084 (select (arr!24803 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!39008 () Bool)

(assert (=> bm!39008 (= call!39011 (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!884754 () Bool)

(assert (=> b!884754 (= e!492403 e!492401)))

(declare-fun c!93087 () Bool)

(assert (=> b!884754 (= c!93087 e!492399)))

(declare-fun res!601142 () Bool)

(assert (=> b!884754 (=> (not res!601142) (not e!492399))))

(assert (=> b!884754 (= res!601142 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(declare-fun d!109193 () Bool)

(assert (=> d!109193 e!492403))

(declare-fun res!601143 () Bool)

(assert (=> d!109193 (=> (not res!601143) (not e!492403))))

(assert (=> d!109193 (= res!601143 (not (contains!4277 lt!400781 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109193 (= lt!400781 e!492404)))

(declare-fun c!93088 () Bool)

(assert (=> d!109193 (= c!93088 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(assert (=> d!109193 (validMask!0 mask!1196)))

(assert (=> d!109193 (= (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400781)))

(assert (= (and d!109193 c!93088) b!884745))

(assert (= (and d!109193 (not c!93088)) b!884746))

(assert (= (and b!884746 c!93089) b!884751))

(assert (= (and b!884746 (not c!93089)) b!884748))

(assert (= (or b!884751 b!884748) bm!39008))

(assert (= (and d!109193 res!601143) b!884750))

(assert (= (and b!884750 res!601141) b!884754))

(assert (= (and b!884754 res!601142) b!884747))

(assert (= (and b!884754 c!93087) b!884749))

(assert (= (and b!884754 (not c!93087)) b!884752))

(assert (= (and b!884749 res!601144) b!884753))

(assert (= (and b!884752 c!93086) b!884744))

(assert (= (and b!884752 (not c!93086)) b!884743))

(declare-fun b_lambda!12821 () Bool)

(assert (=> (not b_lambda!12821) (not b!884751)))

(assert (=> b!884751 t!25000))

(declare-fun b_and!25705 () Bool)

(assert (= b_and!25703 (and (=> t!25000 result!9911) b_and!25705)))

(declare-fun b_lambda!12823 () Bool)

(assert (=> (not b_lambda!12823) (not b!884753)))

(assert (=> b!884753 t!25000))

(declare-fun b_and!25707 () Bool)

(assert (= b_and!25705 (and (=> t!25000 result!9911) b_and!25707)))

(declare-fun m!825073 () Bool)

(assert (=> b!884750 m!825073))

(assert (=> b!884746 m!825045))

(assert (=> b!884746 m!825045))

(assert (=> b!884746 m!825047))

(declare-fun m!825075 () Bool)

(assert (=> b!884744 m!825075))

(assert (=> b!884753 m!825051))

(declare-fun m!825077 () Bool)

(assert (=> b!884753 m!825077))

(assert (=> b!884753 m!825051))

(declare-fun m!825079 () Bool)

(assert (=> b!884753 m!825079))

(assert (=> b!884753 m!825077))

(assert (=> b!884753 m!825045))

(assert (=> b!884753 m!825045))

(declare-fun m!825081 () Bool)

(assert (=> b!884753 m!825081))

(declare-fun m!825083 () Bool)

(assert (=> b!884743 m!825083))

(declare-fun m!825085 () Bool)

(assert (=> b!884751 m!825085))

(declare-fun m!825087 () Bool)

(assert (=> b!884751 m!825087))

(assert (=> b!884751 m!825051))

(declare-fun m!825089 () Bool)

(assert (=> b!884751 m!825089))

(assert (=> b!884751 m!825045))

(assert (=> b!884751 m!825077))

(assert (=> b!884751 m!825051))

(assert (=> b!884751 m!825079))

(assert (=> b!884751 m!825085))

(assert (=> b!884751 m!825077))

(declare-fun m!825091 () Bool)

(assert (=> b!884751 m!825091))

(assert (=> b!884749 m!825045))

(assert (=> b!884749 m!825045))

(declare-fun m!825093 () Bool)

(assert (=> b!884749 m!825093))

(assert (=> b!884747 m!825045))

(assert (=> b!884747 m!825045))

(assert (=> b!884747 m!825047))

(declare-fun m!825095 () Bool)

(assert (=> d!109193 m!825095))

(assert (=> d!109193 m!824977))

(assert (=> bm!39008 m!825075))

(assert (=> b!884647 d!109193))

(declare-fun b!884761 () Bool)

(declare-fun e!492410 () Bool)

(declare-fun e!492409 () Bool)

(assert (=> b!884761 (= e!492410 e!492409)))

(declare-fun c!93092 () Bool)

(assert (=> b!884761 (= c!93092 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun b!884762 () Bool)

(declare-fun call!39016 () ListLongMap!10631)

(declare-fun call!39017 () ListLongMap!10631)

(assert (=> b!884762 (= e!492409 (= call!39016 (+!2534 call!39017 (tuple2!11849 k0!854 v!557))))))

(declare-fun bm!39013 () Bool)

(assert (=> bm!39013 (= call!39017 (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!39014 () Bool)

(assert (=> bm!39014 (= call!39016 (getCurrentListMapNoExtraKeys!3285 _keys!868 (array!51579 (store (arr!24803 _values!688) i!612 (ValueCellFull!8427 v!557)) (size!25244 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun d!109195 () Bool)

(assert (=> d!109195 e!492410))

(declare-fun res!601147 () Bool)

(assert (=> d!109195 (=> (not res!601147) (not e!492410))))

(assert (=> d!109195 (= res!601147 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25244 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25244 _values!688))))))))

(declare-fun lt!400785 () Unit!30177)

(declare-fun choose!1451 (array!51576 array!51578 (_ BitVec 32) (_ BitVec 32) V!28691 V!28691 (_ BitVec 32) (_ BitVec 64) V!28691 (_ BitVec 32) Int) Unit!30177)

(assert (=> d!109195 (= lt!400785 (choose!1451 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!109195 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25243 _keys!868)))))

(assert (=> d!109195 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!755 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400785)))

(declare-fun b!884763 () Bool)

(assert (=> b!884763 (= e!492409 (= call!39016 call!39017))))

(assert (= (and d!109195 res!601147) b!884761))

(assert (= (and b!884761 c!93092) b!884762))

(assert (= (and b!884761 (not c!93092)) b!884763))

(assert (= (or b!884762 b!884763) bm!39013))

(assert (= (or b!884762 b!884763) bm!39014))

(declare-fun m!825097 () Bool)

(assert (=> b!884762 m!825097))

(assert (=> bm!39013 m!824965))

(assert (=> bm!39014 m!824989))

(declare-fun m!825099 () Bool)

(assert (=> bm!39014 m!825099))

(declare-fun m!825101 () Bool)

(assert (=> d!109195 m!825101))

(assert (=> b!884647 d!109195))

(declare-fun d!109197 () Bool)

(declare-fun e!492413 () Bool)

(assert (=> d!109197 e!492413))

(declare-fun res!601153 () Bool)

(assert (=> d!109197 (=> (not res!601153) (not e!492413))))

(declare-fun lt!400796 () ListLongMap!10631)

(assert (=> d!109197 (= res!601153 (contains!4277 lt!400796 (_1!5934 lt!400738)))))

(declare-fun lt!400797 () List!17713)

(assert (=> d!109197 (= lt!400796 (ListLongMap!10632 lt!400797))))

(declare-fun lt!400794 () Unit!30177)

(declare-fun lt!400795 () Unit!30177)

(assert (=> d!109197 (= lt!400794 lt!400795)))

(declare-datatypes ((Option!433 0))(
  ( (Some!432 (v!11388 V!28691)) (None!431) )
))
(declare-fun getValueByKey!427 (List!17713 (_ BitVec 64)) Option!433)

(assert (=> d!109197 (= (getValueByKey!427 lt!400797 (_1!5934 lt!400738)) (Some!432 (_2!5934 lt!400738)))))

(declare-fun lemmaContainsTupThenGetReturnValue!243 (List!17713 (_ BitVec 64) V!28691) Unit!30177)

(assert (=> d!109197 (= lt!400795 (lemmaContainsTupThenGetReturnValue!243 lt!400797 (_1!5934 lt!400738) (_2!5934 lt!400738)))))

(declare-fun insertStrictlySorted!281 (List!17713 (_ BitVec 64) V!28691) List!17713)

(assert (=> d!109197 (= lt!400797 (insertStrictlySorted!281 (toList!5331 (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696)) (_1!5934 lt!400738) (_2!5934 lt!400738)))))

(assert (=> d!109197 (= (+!2534 (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!400738) lt!400796)))

(declare-fun b!884768 () Bool)

(declare-fun res!601152 () Bool)

(assert (=> b!884768 (=> (not res!601152) (not e!492413))))

(assert (=> b!884768 (= res!601152 (= (getValueByKey!427 (toList!5331 lt!400796) (_1!5934 lt!400738)) (Some!432 (_2!5934 lt!400738))))))

(declare-fun b!884769 () Bool)

(declare-fun contains!4278 (List!17713 tuple2!11848) Bool)

(assert (=> b!884769 (= e!492413 (contains!4278 (toList!5331 lt!400796) lt!400738))))

(assert (= (and d!109197 res!601153) b!884768))

(assert (= (and b!884768 res!601152) b!884769))

(declare-fun m!825103 () Bool)

(assert (=> d!109197 m!825103))

(declare-fun m!825105 () Bool)

(assert (=> d!109197 m!825105))

(declare-fun m!825107 () Bool)

(assert (=> d!109197 m!825107))

(declare-fun m!825109 () Bool)

(assert (=> d!109197 m!825109))

(declare-fun m!825111 () Bool)

(assert (=> b!884768 m!825111))

(declare-fun m!825113 () Bool)

(assert (=> b!884769 m!825113))

(assert (=> b!884647 d!109197))

(declare-fun d!109199 () Bool)

(assert (=> d!109199 (= (validKeyInArray!0 (select (arr!24802 _keys!868) from!1053)) (and (not (= (select (arr!24802 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24802 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!884647 d!109199))

(declare-fun d!109201 () Bool)

(declare-fun e!492414 () Bool)

(assert (=> d!109201 e!492414))

(declare-fun res!601155 () Bool)

(assert (=> d!109201 (=> (not res!601155) (not e!492414))))

(declare-fun lt!400800 () ListLongMap!10631)

(assert (=> d!109201 (= res!601155 (contains!4277 lt!400800 (_1!5934 lt!400738)))))

(declare-fun lt!400801 () List!17713)

(assert (=> d!109201 (= lt!400800 (ListLongMap!10632 lt!400801))))

(declare-fun lt!400798 () Unit!30177)

(declare-fun lt!400799 () Unit!30177)

(assert (=> d!109201 (= lt!400798 lt!400799)))

(assert (=> d!109201 (= (getValueByKey!427 lt!400801 (_1!5934 lt!400738)) (Some!432 (_2!5934 lt!400738)))))

(assert (=> d!109201 (= lt!400799 (lemmaContainsTupThenGetReturnValue!243 lt!400801 (_1!5934 lt!400738) (_2!5934 lt!400738)))))

(assert (=> d!109201 (= lt!400801 (insertStrictlySorted!281 (toList!5331 lt!400739) (_1!5934 lt!400738) (_2!5934 lt!400738)))))

(assert (=> d!109201 (= (+!2534 lt!400739 lt!400738) lt!400800)))

(declare-fun b!884770 () Bool)

(declare-fun res!601154 () Bool)

(assert (=> b!884770 (=> (not res!601154) (not e!492414))))

(assert (=> b!884770 (= res!601154 (= (getValueByKey!427 (toList!5331 lt!400800) (_1!5934 lt!400738)) (Some!432 (_2!5934 lt!400738))))))

(declare-fun b!884771 () Bool)

(assert (=> b!884771 (= e!492414 (contains!4278 (toList!5331 lt!400800) lt!400738))))

(assert (= (and d!109201 res!601155) b!884770))

(assert (= (and b!884770 res!601154) b!884771))

(declare-fun m!825115 () Bool)

(assert (=> d!109201 m!825115))

(declare-fun m!825117 () Bool)

(assert (=> d!109201 m!825117))

(declare-fun m!825119 () Bool)

(assert (=> d!109201 m!825119))

(declare-fun m!825121 () Bool)

(assert (=> d!109201 m!825121))

(declare-fun m!825123 () Bool)

(assert (=> b!884770 m!825123))

(declare-fun m!825125 () Bool)

(assert (=> b!884771 m!825125))

(assert (=> b!884648 d!109201))

(declare-fun b!884772 () Bool)

(declare-fun e!492415 () Bool)

(declare-fun lt!400807 () ListLongMap!10631)

(assert (=> b!884772 (= e!492415 (isEmpty!678 lt!400807))))

(declare-fun b!884773 () Bool)

(assert (=> b!884773 (= e!492415 (= lt!400807 (getCurrentListMapNoExtraKeys!3285 _keys!868 lt!400736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!884774 () Bool)

(declare-fun e!492421 () ListLongMap!10631)

(assert (=> b!884774 (= e!492421 (ListLongMap!10632 Nil!17710))))

(declare-fun b!884775 () Bool)

(declare-fun e!492419 () ListLongMap!10631)

(assert (=> b!884775 (= e!492421 e!492419)))

(declare-fun c!93096 () Bool)

(assert (=> b!884775 (= c!93096 (validKeyInArray!0 (select (arr!24802 _keys!868) from!1053)))))

(declare-fun b!884776 () Bool)

(declare-fun e!492416 () Bool)

(assert (=> b!884776 (= e!492416 (validKeyInArray!0 (select (arr!24802 _keys!868) from!1053)))))

(assert (=> b!884776 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!884777 () Bool)

(declare-fun call!39018 () ListLongMap!10631)

(assert (=> b!884777 (= e!492419 call!39018)))

(declare-fun b!884778 () Bool)

(declare-fun e!492418 () Bool)

(declare-fun e!492417 () Bool)

(assert (=> b!884778 (= e!492418 e!492417)))

(assert (=> b!884778 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25243 _keys!868)))))

(declare-fun res!601159 () Bool)

(assert (=> b!884778 (= res!601159 (contains!4277 lt!400807 (select (arr!24802 _keys!868) from!1053)))))

(assert (=> b!884778 (=> (not res!601159) (not e!492417))))

(declare-fun b!884779 () Bool)

(declare-fun res!601156 () Bool)

(declare-fun e!492420 () Bool)

(assert (=> b!884779 (=> (not res!601156) (not e!492420))))

(assert (=> b!884779 (= res!601156 (not (contains!4277 lt!400807 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884780 () Bool)

(declare-fun lt!400805 () Unit!30177)

(declare-fun lt!400802 () Unit!30177)

(assert (=> b!884780 (= lt!400805 lt!400802)))

(declare-fun lt!400803 () ListLongMap!10631)

(declare-fun lt!400804 () V!28691)

(declare-fun lt!400806 () (_ BitVec 64))

(declare-fun lt!400808 () (_ BitVec 64))

(assert (=> b!884780 (not (contains!4277 (+!2534 lt!400803 (tuple2!11849 lt!400808 lt!400804)) lt!400806))))

(assert (=> b!884780 (= lt!400802 (addStillNotContains!213 lt!400803 lt!400808 lt!400804 lt!400806))))

(assert (=> b!884780 (= lt!400806 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!884780 (= lt!400804 (get!13084 (select (arr!24803 lt!400736) from!1053) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!884780 (= lt!400808 (select (arr!24802 _keys!868) from!1053))))

(assert (=> b!884780 (= lt!400803 call!39018)))

(assert (=> b!884780 (= e!492419 (+!2534 call!39018 (tuple2!11849 (select (arr!24802 _keys!868) from!1053) (get!13084 (select (arr!24803 lt!400736) from!1053) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!884781 () Bool)

(assert (=> b!884781 (= e!492418 e!492415)))

(declare-fun c!93093 () Bool)

(assert (=> b!884781 (= c!93093 (bvslt from!1053 (size!25243 _keys!868)))))

(declare-fun b!884782 () Bool)

(assert (=> b!884782 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25243 _keys!868)))))

(assert (=> b!884782 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25244 lt!400736)))))

(assert (=> b!884782 (= e!492417 (= (apply!386 lt!400807 (select (arr!24802 _keys!868) from!1053)) (get!13084 (select (arr!24803 lt!400736) from!1053) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!39015 () Bool)

(assert (=> bm!39015 (= call!39018 (getCurrentListMapNoExtraKeys!3285 _keys!868 lt!400736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!884783 () Bool)

(assert (=> b!884783 (= e!492420 e!492418)))

(declare-fun c!93094 () Bool)

(assert (=> b!884783 (= c!93094 e!492416)))

(declare-fun res!601157 () Bool)

(assert (=> b!884783 (=> (not res!601157) (not e!492416))))

(assert (=> b!884783 (= res!601157 (bvslt from!1053 (size!25243 _keys!868)))))

(declare-fun d!109203 () Bool)

(assert (=> d!109203 e!492420))

(declare-fun res!601158 () Bool)

(assert (=> d!109203 (=> (not res!601158) (not e!492420))))

(assert (=> d!109203 (= res!601158 (not (contains!4277 lt!400807 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109203 (= lt!400807 e!492421)))

(declare-fun c!93095 () Bool)

(assert (=> d!109203 (= c!93095 (bvsge from!1053 (size!25243 _keys!868)))))

(assert (=> d!109203 (validMask!0 mask!1196)))

(assert (=> d!109203 (= (getCurrentListMapNoExtraKeys!3285 _keys!868 lt!400736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!400807)))

(assert (= (and d!109203 c!93095) b!884774))

(assert (= (and d!109203 (not c!93095)) b!884775))

(assert (= (and b!884775 c!93096) b!884780))

(assert (= (and b!884775 (not c!93096)) b!884777))

(assert (= (or b!884780 b!884777) bm!39015))

(assert (= (and d!109203 res!601158) b!884779))

(assert (= (and b!884779 res!601156) b!884783))

(assert (= (and b!884783 res!601157) b!884776))

(assert (= (and b!884783 c!93094) b!884778))

(assert (= (and b!884783 (not c!93094)) b!884781))

(assert (= (and b!884778 res!601159) b!884782))

(assert (= (and b!884781 c!93093) b!884773))

(assert (= (and b!884781 (not c!93093)) b!884772))

(declare-fun b_lambda!12825 () Bool)

(assert (=> (not b_lambda!12825) (not b!884780)))

(assert (=> b!884780 t!25000))

(declare-fun b_and!25709 () Bool)

(assert (= b_and!25707 (and (=> t!25000 result!9911) b_and!25709)))

(declare-fun b_lambda!12827 () Bool)

(assert (=> (not b_lambda!12827) (not b!884782)))

(assert (=> b!884782 t!25000))

(declare-fun b_and!25711 () Bool)

(assert (= b_and!25709 (and (=> t!25000 result!9911) b_and!25711)))

(declare-fun m!825127 () Bool)

(assert (=> b!884779 m!825127))

(assert (=> b!884775 m!824967))

(assert (=> b!884775 m!824967))

(assert (=> b!884775 m!824969))

(declare-fun m!825129 () Bool)

(assert (=> b!884773 m!825129))

(assert (=> b!884782 m!825051))

(declare-fun m!825131 () Bool)

(assert (=> b!884782 m!825131))

(assert (=> b!884782 m!825051))

(declare-fun m!825133 () Bool)

(assert (=> b!884782 m!825133))

(assert (=> b!884782 m!825131))

(assert (=> b!884782 m!824967))

(assert (=> b!884782 m!824967))

(declare-fun m!825135 () Bool)

(assert (=> b!884782 m!825135))

(declare-fun m!825137 () Bool)

(assert (=> b!884772 m!825137))

(declare-fun m!825139 () Bool)

(assert (=> b!884780 m!825139))

(declare-fun m!825141 () Bool)

(assert (=> b!884780 m!825141))

(assert (=> b!884780 m!825051))

(declare-fun m!825143 () Bool)

(assert (=> b!884780 m!825143))

(assert (=> b!884780 m!824967))

(assert (=> b!884780 m!825131))

(assert (=> b!884780 m!825051))

(assert (=> b!884780 m!825133))

(assert (=> b!884780 m!825139))

(assert (=> b!884780 m!825131))

(declare-fun m!825145 () Bool)

(assert (=> b!884780 m!825145))

(assert (=> b!884778 m!824967))

(assert (=> b!884778 m!824967))

(declare-fun m!825147 () Bool)

(assert (=> b!884778 m!825147))

(assert (=> b!884776 m!824967))

(assert (=> b!884776 m!824967))

(assert (=> b!884776 m!824969))

(declare-fun m!825149 () Bool)

(assert (=> d!109203 m!825149))

(assert (=> d!109203 m!824977))

(assert (=> bm!39015 m!825129))

(assert (=> b!884639 d!109203))

(declare-fun b!884784 () Bool)

(declare-fun e!492422 () Bool)

(declare-fun lt!400814 () ListLongMap!10631)

(assert (=> b!884784 (= e!492422 (isEmpty!678 lt!400814))))

(declare-fun b!884785 () Bool)

(assert (=> b!884785 (= e!492422 (= lt!400814 (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!884786 () Bool)

(declare-fun e!492428 () ListLongMap!10631)

(assert (=> b!884786 (= e!492428 (ListLongMap!10632 Nil!17710))))

(declare-fun b!884787 () Bool)

(declare-fun e!492426 () ListLongMap!10631)

(assert (=> b!884787 (= e!492428 e!492426)))

(declare-fun c!93100 () Bool)

(assert (=> b!884787 (= c!93100 (validKeyInArray!0 (select (arr!24802 _keys!868) from!1053)))))

(declare-fun b!884788 () Bool)

(declare-fun e!492423 () Bool)

(assert (=> b!884788 (= e!492423 (validKeyInArray!0 (select (arr!24802 _keys!868) from!1053)))))

(assert (=> b!884788 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!884789 () Bool)

(declare-fun call!39019 () ListLongMap!10631)

(assert (=> b!884789 (= e!492426 call!39019)))

(declare-fun b!884790 () Bool)

(declare-fun e!492425 () Bool)

(declare-fun e!492424 () Bool)

(assert (=> b!884790 (= e!492425 e!492424)))

(assert (=> b!884790 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25243 _keys!868)))))

(declare-fun res!601163 () Bool)

(assert (=> b!884790 (= res!601163 (contains!4277 lt!400814 (select (arr!24802 _keys!868) from!1053)))))

(assert (=> b!884790 (=> (not res!601163) (not e!492424))))

(declare-fun b!884791 () Bool)

(declare-fun res!601160 () Bool)

(declare-fun e!492427 () Bool)

(assert (=> b!884791 (=> (not res!601160) (not e!492427))))

(assert (=> b!884791 (= res!601160 (not (contains!4277 lt!400814 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!884792 () Bool)

(declare-fun lt!400812 () Unit!30177)

(declare-fun lt!400809 () Unit!30177)

(assert (=> b!884792 (= lt!400812 lt!400809)))

(declare-fun lt!400811 () V!28691)

(declare-fun lt!400810 () ListLongMap!10631)

(declare-fun lt!400813 () (_ BitVec 64))

(declare-fun lt!400815 () (_ BitVec 64))

(assert (=> b!884792 (not (contains!4277 (+!2534 lt!400810 (tuple2!11849 lt!400815 lt!400811)) lt!400813))))

(assert (=> b!884792 (= lt!400809 (addStillNotContains!213 lt!400810 lt!400815 lt!400811 lt!400813))))

(assert (=> b!884792 (= lt!400813 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!884792 (= lt!400811 (get!13084 (select (arr!24803 _values!688) from!1053) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!884792 (= lt!400815 (select (arr!24802 _keys!868) from!1053))))

(assert (=> b!884792 (= lt!400810 call!39019)))

(assert (=> b!884792 (= e!492426 (+!2534 call!39019 (tuple2!11849 (select (arr!24802 _keys!868) from!1053) (get!13084 (select (arr!24803 _values!688) from!1053) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!884793 () Bool)

(assert (=> b!884793 (= e!492425 e!492422)))

(declare-fun c!93097 () Bool)

(assert (=> b!884793 (= c!93097 (bvslt from!1053 (size!25243 _keys!868)))))

(declare-fun b!884794 () Bool)

(assert (=> b!884794 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25243 _keys!868)))))

(assert (=> b!884794 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25244 _values!688)))))

(assert (=> b!884794 (= e!492424 (= (apply!386 lt!400814 (select (arr!24802 _keys!868) from!1053)) (get!13084 (select (arr!24803 _values!688) from!1053) (dynLambda!1281 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!39016 () Bool)

(assert (=> bm!39016 (= call!39019 (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!884795 () Bool)

(assert (=> b!884795 (= e!492427 e!492425)))

(declare-fun c!93098 () Bool)

(assert (=> b!884795 (= c!93098 e!492423)))

(declare-fun res!601161 () Bool)

(assert (=> b!884795 (=> (not res!601161) (not e!492423))))

(assert (=> b!884795 (= res!601161 (bvslt from!1053 (size!25243 _keys!868)))))

(declare-fun d!109205 () Bool)

(assert (=> d!109205 e!492427))

(declare-fun res!601162 () Bool)

(assert (=> d!109205 (=> (not res!601162) (not e!492427))))

(assert (=> d!109205 (= res!601162 (not (contains!4277 lt!400814 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109205 (= lt!400814 e!492428)))

(declare-fun c!93099 () Bool)

(assert (=> d!109205 (= c!93099 (bvsge from!1053 (size!25243 _keys!868)))))

(assert (=> d!109205 (validMask!0 mask!1196)))

(assert (=> d!109205 (= (getCurrentListMapNoExtraKeys!3285 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!400814)))

(assert (= (and d!109205 c!93099) b!884786))

(assert (= (and d!109205 (not c!93099)) b!884787))

(assert (= (and b!884787 c!93100) b!884792))

(assert (= (and b!884787 (not c!93100)) b!884789))

(assert (= (or b!884792 b!884789) bm!39016))

(assert (= (and d!109205 res!601162) b!884791))

(assert (= (and b!884791 res!601160) b!884795))

(assert (= (and b!884795 res!601161) b!884788))

(assert (= (and b!884795 c!93098) b!884790))

(assert (= (and b!884795 (not c!93098)) b!884793))

(assert (= (and b!884790 res!601163) b!884794))

(assert (= (and b!884793 c!93097) b!884785))

(assert (= (and b!884793 (not c!93097)) b!884784))

(declare-fun b_lambda!12829 () Bool)

(assert (=> (not b_lambda!12829) (not b!884792)))

(assert (=> b!884792 t!25000))

(declare-fun b_and!25713 () Bool)

(assert (= b_and!25711 (and (=> t!25000 result!9911) b_and!25713)))

(declare-fun b_lambda!12831 () Bool)

(assert (=> (not b_lambda!12831) (not b!884794)))

(assert (=> b!884794 t!25000))

(declare-fun b_and!25715 () Bool)

(assert (= b_and!25713 (and (=> t!25000 result!9911) b_and!25715)))

(declare-fun m!825151 () Bool)

(assert (=> b!884791 m!825151))

(assert (=> b!884787 m!824967))

(assert (=> b!884787 m!824967))

(assert (=> b!884787 m!824969))

(declare-fun m!825153 () Bool)

(assert (=> b!884785 m!825153))

(assert (=> b!884794 m!825051))

(declare-fun m!825155 () Bool)

(assert (=> b!884794 m!825155))

(assert (=> b!884794 m!825051))

(declare-fun m!825157 () Bool)

(assert (=> b!884794 m!825157))

(assert (=> b!884794 m!825155))

(assert (=> b!884794 m!824967))

(assert (=> b!884794 m!824967))

(declare-fun m!825159 () Bool)

(assert (=> b!884794 m!825159))

(declare-fun m!825161 () Bool)

(assert (=> b!884784 m!825161))

(declare-fun m!825163 () Bool)

(assert (=> b!884792 m!825163))

(declare-fun m!825165 () Bool)

(assert (=> b!884792 m!825165))

(assert (=> b!884792 m!825051))

(declare-fun m!825167 () Bool)

(assert (=> b!884792 m!825167))

(assert (=> b!884792 m!824967))

(assert (=> b!884792 m!825155))

(assert (=> b!884792 m!825051))

(assert (=> b!884792 m!825157))

(assert (=> b!884792 m!825163))

(assert (=> b!884792 m!825155))

(declare-fun m!825169 () Bool)

(assert (=> b!884792 m!825169))

(assert (=> b!884790 m!824967))

(assert (=> b!884790 m!824967))

(declare-fun m!825171 () Bool)

(assert (=> b!884790 m!825171))

(assert (=> b!884788 m!824967))

(assert (=> b!884788 m!824967))

(assert (=> b!884788 m!824969))

(declare-fun m!825173 () Bool)

(assert (=> d!109205 m!825173))

(assert (=> d!109205 m!824977))

(assert (=> bm!39016 m!825153))

(assert (=> b!884639 d!109205))

(declare-fun d!109207 () Bool)

(assert (=> d!109207 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!884640 d!109207))

(declare-fun b!884804 () Bool)

(declare-fun e!492436 () Bool)

(declare-fun call!39022 () Bool)

(assert (=> b!884804 (= e!492436 call!39022)))

(declare-fun d!109209 () Bool)

(declare-fun res!601168 () Bool)

(declare-fun e!492437 () Bool)

(assert (=> d!109209 (=> res!601168 e!492437)))

(assert (=> d!109209 (= res!601168 (bvsge #b00000000000000000000000000000000 (size!25243 _keys!868)))))

(assert (=> d!109209 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!492437)))

(declare-fun b!884805 () Bool)

(declare-fun e!492435 () Bool)

(assert (=> b!884805 (= e!492435 e!492436)))

(declare-fun lt!400823 () (_ BitVec 64))

(assert (=> b!884805 (= lt!400823 (select (arr!24802 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!400824 () Unit!30177)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51576 (_ BitVec 64) (_ BitVec 32)) Unit!30177)

(assert (=> b!884805 (= lt!400824 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!400823 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!51576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!884805 (arrayContainsKey!0 _keys!868 lt!400823 #b00000000000000000000000000000000)))

(declare-fun lt!400822 () Unit!30177)

(assert (=> b!884805 (= lt!400822 lt!400824)))

(declare-fun res!601169 () Bool)

(declare-datatypes ((SeekEntryResult!8751 0))(
  ( (MissingZero!8751 (index!37374 (_ BitVec 32))) (Found!8751 (index!37375 (_ BitVec 32))) (Intermediate!8751 (undefined!9563 Bool) (index!37376 (_ BitVec 32)) (x!74994 (_ BitVec 32))) (Undefined!8751) (MissingVacant!8751 (index!37377 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51576 (_ BitVec 32)) SeekEntryResult!8751)

(assert (=> b!884805 (= res!601169 (= (seekEntryOrOpen!0 (select (arr!24802 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8751 #b00000000000000000000000000000000)))))

(assert (=> b!884805 (=> (not res!601169) (not e!492436))))

(declare-fun b!884806 () Bool)

(assert (=> b!884806 (= e!492435 call!39022)))

(declare-fun bm!39019 () Bool)

(assert (=> bm!39019 (= call!39022 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!884807 () Bool)

(assert (=> b!884807 (= e!492437 e!492435)))

(declare-fun c!93103 () Bool)

(assert (=> b!884807 (= c!93103 (validKeyInArray!0 (select (arr!24802 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!109209 (not res!601168)) b!884807))

(assert (= (and b!884807 c!93103) b!884805))

(assert (= (and b!884807 (not c!93103)) b!884806))

(assert (= (and b!884805 res!601169) b!884804))

(assert (= (or b!884804 b!884806) bm!39019))

(assert (=> b!884805 m!825035))

(declare-fun m!825175 () Bool)

(assert (=> b!884805 m!825175))

(declare-fun m!825177 () Bool)

(assert (=> b!884805 m!825177))

(assert (=> b!884805 m!825035))

(declare-fun m!825179 () Bool)

(assert (=> b!884805 m!825179))

(declare-fun m!825181 () Bool)

(assert (=> bm!39019 m!825181))

(assert (=> b!884807 m!825035))

(assert (=> b!884807 m!825035))

(assert (=> b!884807 m!825039))

(assert (=> b!884645 d!109209))

(declare-fun b!884815 () Bool)

(declare-fun e!492442 () Bool)

(assert (=> b!884815 (= e!492442 tp_is_empty!17733)))

(declare-fun mapIsEmpty!28245 () Bool)

(declare-fun mapRes!28245 () Bool)

(assert (=> mapIsEmpty!28245 mapRes!28245))

(declare-fun mapNonEmpty!28245 () Bool)

(declare-fun tp!54183 () Bool)

(declare-fun e!492443 () Bool)

(assert (=> mapNonEmpty!28245 (= mapRes!28245 (and tp!54183 e!492443))))

(declare-fun mapValue!28245 () ValueCell!8427)

(declare-fun mapRest!28245 () (Array (_ BitVec 32) ValueCell!8427))

(declare-fun mapKey!28245 () (_ BitVec 32))

(assert (=> mapNonEmpty!28245 (= mapRest!28239 (store mapRest!28245 mapKey!28245 mapValue!28245))))

(declare-fun condMapEmpty!28245 () Bool)

(declare-fun mapDefault!28245 () ValueCell!8427)

(assert (=> mapNonEmpty!28239 (= condMapEmpty!28245 (= mapRest!28239 ((as const (Array (_ BitVec 32) ValueCell!8427)) mapDefault!28245)))))

(assert (=> mapNonEmpty!28239 (= tp!54174 (and e!492442 mapRes!28245))))

(declare-fun b!884814 () Bool)

(assert (=> b!884814 (= e!492443 tp_is_empty!17733)))

(assert (= (and mapNonEmpty!28239 condMapEmpty!28245) mapIsEmpty!28245))

(assert (= (and mapNonEmpty!28239 (not condMapEmpty!28245)) mapNonEmpty!28245))

(assert (= (and mapNonEmpty!28245 ((_ is ValueCellFull!8427) mapValue!28245)) b!884814))

(assert (= (and mapNonEmpty!28239 ((_ is ValueCellFull!8427) mapDefault!28245)) b!884815))

(declare-fun m!825183 () Bool)

(assert (=> mapNonEmpty!28245 m!825183))

(declare-fun b_lambda!12833 () Bool)

(assert (= b_lambda!12829 (or (and start!75028 b_free!15489) b_lambda!12833)))

(declare-fun b_lambda!12835 () Bool)

(assert (= b_lambda!12825 (or (and start!75028 b_free!15489) b_lambda!12835)))

(declare-fun b_lambda!12837 () Bool)

(assert (= b_lambda!12831 (or (and start!75028 b_free!15489) b_lambda!12837)))

(declare-fun b_lambda!12839 () Bool)

(assert (= b_lambda!12823 (or (and start!75028 b_free!15489) b_lambda!12839)))

(declare-fun b_lambda!12841 () Bool)

(assert (= b_lambda!12827 (or (and start!75028 b_free!15489) b_lambda!12841)))

(declare-fun b_lambda!12843 () Bool)

(assert (= b_lambda!12817 (or (and start!75028 b_free!15489) b_lambda!12843)))

(declare-fun b_lambda!12845 () Bool)

(assert (= b_lambda!12821 (or (and start!75028 b_free!15489) b_lambda!12845)))

(declare-fun b_lambda!12847 () Bool)

(assert (= b_lambda!12819 (or (and start!75028 b_free!15489) b_lambda!12847)))

(check-sat (not b!884792) (not d!109201) (not bm!39007) (not b!884743) (not bm!39014) (not d!109203) (not b!884780) (not bm!39008) (not b!884771) (not mapNonEmpty!28245) (not b_lambda!12833) (not b!884779) (not bm!39016) (not b_lambda!12843) (not b!884746) (not b!884791) (not b!884773) (not d!109195) (not b!884737) (not d!109191) (not b!884739) (not b!884703) (not b!884787) (not b!884776) (not b!884729) (not bm!39019) (not b!884749) (not b!884790) (not b!884769) (not b!884733) (not b!884753) (not d!109197) (not b_lambda!12847) (not b!884744) (not b!884768) (not b!884807) (not b!884730) tp_is_empty!17733 (not d!109205) (not b!884782) (not b_lambda!12845) (not b_lambda!12841) (not b_lambda!12839) (not b!884736) b_and!25715 (not bm!39004) (not b!884772) (not b!884747) (not b!884732) (not bm!39013) (not b!884735) (not b!884778) (not bm!39015) (not b!884762) (not b!884751) (not b_lambda!12835) (not b!884750) (not b!884770) (not b!884775) (not b!884700) (not b_next!15489) (not b!884701) (not b!884788) (not b!884784) (not b_lambda!12837) (not b!884805) (not b!884785) (not d!109193) (not b!884794))
(check-sat b_and!25715 (not b_next!15489))

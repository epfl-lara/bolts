; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73288 () Bool)

(assert start!73288)

(declare-fun b_free!14175 () Bool)

(declare-fun b_next!14175 () Bool)

(assert (=> start!73288 (= b_free!14175 (not b_next!14175))))

(declare-fun tp!50029 () Bool)

(declare-fun b_and!23527 () Bool)

(assert (=> start!73288 (= tp!50029 b_and!23527)))

(declare-fun b!854117 () Bool)

(declare-fun e!476311 () Bool)

(declare-fun tp_is_empty!16311 () Bool)

(assert (=> b!854117 (= e!476311 tp_is_empty!16311)))

(declare-fun b!854118 () Bool)

(declare-fun res!580169 () Bool)

(declare-fun e!476309 () Bool)

(assert (=> b!854118 (=> (not res!580169) (not e!476309))))

(declare-datatypes ((array!48802 0))(
  ( (array!48803 (arr!23428 (Array (_ BitVec 32) (_ BitVec 64))) (size!23869 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48802)

(declare-datatypes ((List!16672 0))(
  ( (Nil!16669) (Cons!16668 (h!17799 (_ BitVec 64)) (t!23301 List!16672)) )
))
(declare-fun arrayNoDuplicates!0 (array!48802 (_ BitVec 32) List!16672) Bool)

(assert (=> b!854118 (= res!580169 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16669))))

(declare-fun mapNonEmpty!26066 () Bool)

(declare-fun mapRes!26066 () Bool)

(declare-fun tp!50030 () Bool)

(assert (=> mapNonEmpty!26066 (= mapRes!26066 (and tp!50030 e!476311))))

(declare-datatypes ((V!26795 0))(
  ( (V!26796 (val!8203 Int)) )
))
(declare-datatypes ((ValueCell!7716 0))(
  ( (ValueCellFull!7716 (v!10624 V!26795)) (EmptyCell!7716) )
))
(declare-fun mapRest!26066 () (Array (_ BitVec 32) ValueCell!7716))

(declare-fun mapKey!26066 () (_ BitVec 32))

(declare-fun mapValue!26066 () ValueCell!7716)

(declare-datatypes ((array!48804 0))(
  ( (array!48805 (arr!23429 (Array (_ BitVec 32) ValueCell!7716)) (size!23870 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48804)

(assert (=> mapNonEmpty!26066 (= (arr!23429 _values!688) (store mapRest!26066 mapKey!26066 mapValue!26066))))

(declare-fun b!854119 () Bool)

(declare-fun e!476316 () Bool)

(declare-datatypes ((tuple2!10798 0))(
  ( (tuple2!10799 (_1!5409 (_ BitVec 64)) (_2!5409 V!26795)) )
))
(declare-datatypes ((List!16673 0))(
  ( (Nil!16670) (Cons!16669 (h!17800 tuple2!10798) (t!23302 List!16673)) )
))
(declare-datatypes ((ListLongMap!9581 0))(
  ( (ListLongMap!9582 (toList!4806 List!16673)) )
))
(declare-fun call!38381 () ListLongMap!9581)

(declare-fun call!38380 () ListLongMap!9581)

(assert (=> b!854119 (= e!476316 (= call!38381 call!38380))))

(declare-fun b!854120 () Bool)

(declare-fun e!476310 () Bool)

(assert (=> b!854120 (= e!476309 e!476310)))

(declare-fun res!580166 () Bool)

(assert (=> b!854120 (=> (not res!580166) (not e!476310))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854120 (= res!580166 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!385218 () array!48804)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!385214 () ListLongMap!9581)

(declare-fun minValue!654 () V!26795)

(declare-fun zeroValue!654 () V!26795)

(declare-fun getCurrentListMapNoExtraKeys!2788 (array!48802 array!48804 (_ BitVec 32) (_ BitVec 32) V!26795 V!26795 (_ BitVec 32) Int) ListLongMap!9581)

(assert (=> b!854120 (= lt!385214 (getCurrentListMapNoExtraKeys!2788 _keys!868 lt!385218 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26795)

(assert (=> b!854120 (= lt!385218 (array!48805 (store (arr!23429 _values!688) i!612 (ValueCellFull!7716 v!557)) (size!23870 _values!688)))))

(declare-fun lt!385209 () ListLongMap!9581)

(assert (=> b!854120 (= lt!385209 (getCurrentListMapNoExtraKeys!2788 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854121 () Bool)

(declare-fun e!476315 () Bool)

(assert (=> b!854121 (= e!476315 tp_is_empty!16311)))

(declare-fun b!854122 () Bool)

(declare-fun e!476312 () Bool)

(assert (=> b!854122 (= e!476312 (and e!476315 mapRes!26066))))

(declare-fun condMapEmpty!26066 () Bool)

(declare-fun mapDefault!26066 () ValueCell!7716)

(assert (=> b!854122 (= condMapEmpty!26066 (= (arr!23429 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7716)) mapDefault!26066)))))

(declare-fun bm!38377 () Bool)

(assert (=> bm!38377 (= call!38380 (getCurrentListMapNoExtraKeys!2788 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854123 () Bool)

(declare-fun e!476313 () Bool)

(assert (=> b!854123 (= e!476310 (not e!476313))))

(declare-fun res!580163 () Bool)

(assert (=> b!854123 (=> res!580163 e!476313)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854123 (= res!580163 (not (validKeyInArray!0 (select (arr!23428 _keys!868) from!1053))))))

(assert (=> b!854123 e!476316))

(declare-fun c!91851 () Bool)

(assert (=> b!854123 (= c!91851 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29128 0))(
  ( (Unit!29129) )
))
(declare-fun lt!385215 () Unit!29128)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!403 (array!48802 array!48804 (_ BitVec 32) (_ BitVec 32) V!26795 V!26795 (_ BitVec 32) (_ BitVec 64) V!26795 (_ BitVec 32) Int) Unit!29128)

(assert (=> b!854123 (= lt!385215 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!403 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854124 () Bool)

(declare-fun +!2142 (ListLongMap!9581 tuple2!10798) ListLongMap!9581)

(assert (=> b!854124 (= e!476316 (= call!38381 (+!2142 call!38380 (tuple2!10799 k0!854 v!557))))))

(declare-fun b!854125 () Bool)

(declare-fun res!580162 () Bool)

(assert (=> b!854125 (=> (not res!580162) (not e!476309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854125 (= res!580162 (validMask!0 mask!1196))))

(declare-fun b!854126 () Bool)

(assert (=> b!854126 (= e!476313 true)))

(declare-fun lt!385211 () tuple2!10798)

(declare-fun lt!385210 () V!26795)

(declare-fun lt!385216 () ListLongMap!9581)

(assert (=> b!854126 (= (+!2142 lt!385216 lt!385211) (+!2142 (+!2142 lt!385216 (tuple2!10799 k0!854 lt!385210)) lt!385211))))

(declare-fun lt!385212 () V!26795)

(assert (=> b!854126 (= lt!385211 (tuple2!10799 k0!854 lt!385212))))

(declare-fun lt!385213 () Unit!29128)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!321 (ListLongMap!9581 (_ BitVec 64) V!26795 V!26795) Unit!29128)

(assert (=> b!854126 (= lt!385213 (addSameAsAddTwiceSameKeyDiffValues!321 lt!385216 k0!854 lt!385210 lt!385212))))

(declare-fun lt!385217 () V!26795)

(declare-fun get!12377 (ValueCell!7716 V!26795) V!26795)

(assert (=> b!854126 (= lt!385210 (get!12377 (select (arr!23429 _values!688) from!1053) lt!385217))))

(assert (=> b!854126 (= lt!385214 (+!2142 lt!385216 (tuple2!10799 (select (arr!23428 _keys!868) from!1053) lt!385212)))))

(assert (=> b!854126 (= lt!385212 (get!12377 (select (store (arr!23429 _values!688) i!612 (ValueCellFull!7716 v!557)) from!1053) lt!385217))))

(declare-fun dynLambda!1069 (Int (_ BitVec 64)) V!26795)

(assert (=> b!854126 (= lt!385217 (dynLambda!1069 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!854126 (= lt!385216 (getCurrentListMapNoExtraKeys!2788 _keys!868 lt!385218 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854127 () Bool)

(declare-fun res!580170 () Bool)

(assert (=> b!854127 (=> (not res!580170) (not e!476309))))

(assert (=> b!854127 (= res!580170 (and (= (size!23870 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23869 _keys!868) (size!23870 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854128 () Bool)

(declare-fun res!580168 () Bool)

(assert (=> b!854128 (=> (not res!580168) (not e!476309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48802 (_ BitVec 32)) Bool)

(assert (=> b!854128 (= res!580168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26066 () Bool)

(assert (=> mapIsEmpty!26066 mapRes!26066))

(declare-fun b!854129 () Bool)

(declare-fun res!580164 () Bool)

(assert (=> b!854129 (=> (not res!580164) (not e!476309))))

(assert (=> b!854129 (= res!580164 (and (= (select (arr!23428 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!854130 () Bool)

(declare-fun res!580161 () Bool)

(assert (=> b!854130 (=> (not res!580161) (not e!476309))))

(assert (=> b!854130 (= res!580161 (validKeyInArray!0 k0!854))))

(declare-fun res!580167 () Bool)

(assert (=> start!73288 (=> (not res!580167) (not e!476309))))

(assert (=> start!73288 (= res!580167 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23869 _keys!868))))))

(assert (=> start!73288 e!476309))

(assert (=> start!73288 tp_is_empty!16311))

(assert (=> start!73288 true))

(assert (=> start!73288 tp!50029))

(declare-fun array_inv!18550 (array!48802) Bool)

(assert (=> start!73288 (array_inv!18550 _keys!868)))

(declare-fun array_inv!18551 (array!48804) Bool)

(assert (=> start!73288 (and (array_inv!18551 _values!688) e!476312)))

(declare-fun b!854131 () Bool)

(declare-fun res!580165 () Bool)

(assert (=> b!854131 (=> (not res!580165) (not e!476309))))

(assert (=> b!854131 (= res!580165 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23869 _keys!868))))))

(declare-fun bm!38378 () Bool)

(assert (=> bm!38378 (= call!38381 (getCurrentListMapNoExtraKeys!2788 _keys!868 lt!385218 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73288 res!580167) b!854125))

(assert (= (and b!854125 res!580162) b!854127))

(assert (= (and b!854127 res!580170) b!854128))

(assert (= (and b!854128 res!580168) b!854118))

(assert (= (and b!854118 res!580169) b!854131))

(assert (= (and b!854131 res!580165) b!854130))

(assert (= (and b!854130 res!580161) b!854129))

(assert (= (and b!854129 res!580164) b!854120))

(assert (= (and b!854120 res!580166) b!854123))

(assert (= (and b!854123 c!91851) b!854124))

(assert (= (and b!854123 (not c!91851)) b!854119))

(assert (= (or b!854124 b!854119) bm!38378))

(assert (= (or b!854124 b!854119) bm!38377))

(assert (= (and b!854123 (not res!580163)) b!854126))

(assert (= (and b!854122 condMapEmpty!26066) mapIsEmpty!26066))

(assert (= (and b!854122 (not condMapEmpty!26066)) mapNonEmpty!26066))

(get-info :version)

(assert (= (and mapNonEmpty!26066 ((_ is ValueCellFull!7716) mapValue!26066)) b!854117))

(assert (= (and b!854122 ((_ is ValueCellFull!7716) mapDefault!26066)) b!854121))

(assert (= start!73288 b!854122))

(declare-fun b_lambda!11737 () Bool)

(assert (=> (not b_lambda!11737) (not b!854126)))

(declare-fun t!23300 () Bool)

(declare-fun tb!4485 () Bool)

(assert (=> (and start!73288 (= defaultEntry!696 defaultEntry!696) t!23300) tb!4485))

(declare-fun result!8573 () Bool)

(assert (=> tb!4485 (= result!8573 tp_is_empty!16311)))

(assert (=> b!854126 t!23300))

(declare-fun b_and!23529 () Bool)

(assert (= b_and!23527 (and (=> t!23300 result!8573) b_and!23529)))

(declare-fun m!795559 () Bool)

(assert (=> bm!38377 m!795559))

(declare-fun m!795561 () Bool)

(assert (=> b!854129 m!795561))

(declare-fun m!795563 () Bool)

(assert (=> b!854118 m!795563))

(declare-fun m!795565 () Bool)

(assert (=> b!854120 m!795565))

(declare-fun m!795567 () Bool)

(assert (=> b!854120 m!795567))

(declare-fun m!795569 () Bool)

(assert (=> b!854120 m!795569))

(declare-fun m!795571 () Bool)

(assert (=> mapNonEmpty!26066 m!795571))

(declare-fun m!795573 () Bool)

(assert (=> start!73288 m!795573))

(declare-fun m!795575 () Bool)

(assert (=> start!73288 m!795575))

(declare-fun m!795577 () Bool)

(assert (=> b!854123 m!795577))

(assert (=> b!854123 m!795577))

(declare-fun m!795579 () Bool)

(assert (=> b!854123 m!795579))

(declare-fun m!795581 () Bool)

(assert (=> b!854123 m!795581))

(declare-fun m!795583 () Bool)

(assert (=> b!854124 m!795583))

(declare-fun m!795585 () Bool)

(assert (=> b!854130 m!795585))

(declare-fun m!795587 () Bool)

(assert (=> bm!38378 m!795587))

(declare-fun m!795589 () Bool)

(assert (=> b!854125 m!795589))

(declare-fun m!795591 () Bool)

(assert (=> b!854128 m!795591))

(declare-fun m!795593 () Bool)

(assert (=> b!854126 m!795593))

(declare-fun m!795595 () Bool)

(assert (=> b!854126 m!795595))

(declare-fun m!795597 () Bool)

(assert (=> b!854126 m!795597))

(declare-fun m!795599 () Bool)

(assert (=> b!854126 m!795599))

(declare-fun m!795601 () Bool)

(assert (=> b!854126 m!795601))

(assert (=> b!854126 m!795587))

(assert (=> b!854126 m!795599))

(assert (=> b!854126 m!795567))

(declare-fun m!795603 () Bool)

(assert (=> b!854126 m!795603))

(assert (=> b!854126 m!795597))

(declare-fun m!795605 () Bool)

(assert (=> b!854126 m!795605))

(assert (=> b!854126 m!795577))

(declare-fun m!795607 () Bool)

(assert (=> b!854126 m!795607))

(assert (=> b!854126 m!795595))

(declare-fun m!795609 () Bool)

(assert (=> b!854126 m!795609))

(declare-fun m!795611 () Bool)

(assert (=> b!854126 m!795611))

(check-sat (not mapNonEmpty!26066) (not bm!38378) (not b!854126) (not start!73288) (not b!854125) (not b!854120) (not b!854124) tp_is_empty!16311 (not b!854130) (not b!854123) (not b!854128) (not b_next!14175) (not bm!38377) b_and!23529 (not b_lambda!11737) (not b!854118))
(check-sat b_and!23529 (not b_next!14175))

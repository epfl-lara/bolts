; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39410 () Bool)

(assert start!39410)

(declare-fun b_free!9669 () Bool)

(declare-fun b_next!9669 () Bool)

(assert (=> start!39410 (= b_free!9669 (not b_next!9669))))

(declare-fun tp!34535 () Bool)

(declare-fun b_and!17231 () Bool)

(assert (=> start!39410 (= tp!34535 b_and!17231)))

(declare-fun b!418828 () Bool)

(declare-fun res!244194 () Bool)

(declare-fun e!249682 () Bool)

(assert (=> b!418828 (=> (not res!244194) (not e!249682))))

(declare-datatypes ((array!25473 0))(
  ( (array!25474 (arr!12183 (Array (_ BitVec 32) (_ BitVec 64))) (size!12535 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25473)

(declare-datatypes ((List!7112 0))(
  ( (Nil!7109) (Cons!7108 (h!7964 (_ BitVec 64)) (t!12454 List!7112)) )
))
(declare-fun arrayNoDuplicates!0 (array!25473 (_ BitVec 32) List!7112) Bool)

(assert (=> b!418828 (= res!244194 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7109))))

(declare-fun mapNonEmpty!17853 () Bool)

(declare-fun mapRes!17853 () Bool)

(declare-fun tp!34536 () Bool)

(declare-fun e!249674 () Bool)

(assert (=> mapNonEmpty!17853 (= mapRes!17853 (and tp!34536 e!249674))))

(declare-datatypes ((V!15533 0))(
  ( (V!15534 (val!5455 Int)) )
))
(declare-datatypes ((ValueCell!5067 0))(
  ( (ValueCellFull!5067 (v!7698 V!15533)) (EmptyCell!5067) )
))
(declare-fun mapRest!17853 () (Array (_ BitVec 32) ValueCell!5067))

(declare-datatypes ((array!25475 0))(
  ( (array!25476 (arr!12184 (Array (_ BitVec 32) ValueCell!5067)) (size!12536 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25475)

(declare-fun mapKey!17853 () (_ BitVec 32))

(declare-fun mapValue!17853 () ValueCell!5067)

(assert (=> mapNonEmpty!17853 (= (arr!12184 _values!549) (store mapRest!17853 mapKey!17853 mapValue!17853))))

(declare-fun b!418829 () Bool)

(declare-fun e!249680 () Bool)

(declare-fun e!249677 () Bool)

(assert (=> b!418829 (= e!249680 (not e!249677))))

(declare-fun res!244188 () Bool)

(assert (=> b!418829 (=> res!244188 e!249677)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418829 (= res!244188 (validKeyInArray!0 (select (arr!12183 _keys!709) from!863)))))

(declare-fun e!249678 () Bool)

(assert (=> b!418829 e!249678))

(declare-fun c!55142 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418829 (= c!55142 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12339 0))(
  ( (Unit!12340) )
))
(declare-fun lt!192077 () Unit!12339)

(declare-fun minValue!515 () V!15533)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15533)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!15533)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!426 (array!25473 array!25475 (_ BitVec 32) (_ BitVec 32) V!15533 V!15533 (_ BitVec 32) (_ BitVec 64) V!15533 (_ BitVec 32) Int) Unit!12339)

(assert (=> b!418829 (= lt!192077 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!426 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418830 () Bool)

(declare-fun res!244195 () Bool)

(assert (=> b!418830 (=> (not res!244195) (not e!249682))))

(declare-fun arrayContainsKey!0 (array!25473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418830 (= res!244195 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!418831 () Bool)

(declare-datatypes ((tuple2!7064 0))(
  ( (tuple2!7065 (_1!3542 (_ BitVec 64)) (_2!3542 V!15533)) )
))
(declare-datatypes ((List!7113 0))(
  ( (Nil!7110) (Cons!7109 (h!7965 tuple2!7064) (t!12455 List!7113)) )
))
(declare-datatypes ((ListLongMap!5991 0))(
  ( (ListLongMap!5992 (toList!3011 List!7113)) )
))
(declare-fun call!29182 () ListLongMap!5991)

(declare-fun call!29183 () ListLongMap!5991)

(assert (=> b!418831 (= e!249678 (= call!29182 call!29183))))

(declare-fun lt!192084 () array!25475)

(declare-fun lt!192076 () array!25473)

(declare-fun bm!29179 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1214 (array!25473 array!25475 (_ BitVec 32) (_ BitVec 32) V!15533 V!15533 (_ BitVec 32) Int) ListLongMap!5991)

(assert (=> bm!29179 (= call!29182 (getCurrentListMapNoExtraKeys!1214 (ite c!55142 _keys!709 lt!192076) (ite c!55142 _values!549 lt!192084) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418832 () Bool)

(declare-fun tp_is_empty!10821 () Bool)

(assert (=> b!418832 (= e!249674 tp_is_empty!10821)))

(declare-fun b!418833 () Bool)

(declare-fun res!244193 () Bool)

(assert (=> b!418833 (=> (not res!244193) (not e!249682))))

(assert (=> b!418833 (= res!244193 (validKeyInArray!0 k0!794))))

(declare-fun bm!29180 () Bool)

(assert (=> bm!29180 (= call!29183 (getCurrentListMapNoExtraKeys!1214 (ite c!55142 lt!192076 _keys!709) (ite c!55142 lt!192084 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418834 () Bool)

(declare-fun res!244192 () Bool)

(assert (=> b!418834 (=> (not res!244192) (not e!249682))))

(assert (=> b!418834 (= res!244192 (and (= (size!12536 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12535 _keys!709) (size!12536 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!418835 () Bool)

(declare-fun res!244187 () Bool)

(assert (=> b!418835 (=> (not res!244187) (not e!249682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!418835 (= res!244187 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17853 () Bool)

(assert (=> mapIsEmpty!17853 mapRes!17853))

(declare-fun b!418837 () Bool)

(declare-fun res!244191 () Bool)

(assert (=> b!418837 (=> (not res!244191) (not e!249682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25473 (_ BitVec 32)) Bool)

(assert (=> b!418837 (= res!244191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!418838 () Bool)

(assert (=> b!418838 (= e!249677 true)))

(declare-fun lt!192075 () V!15533)

(declare-fun lt!192080 () tuple2!7064)

(declare-fun lt!192083 () ListLongMap!5991)

(declare-fun +!1218 (ListLongMap!5991 tuple2!7064) ListLongMap!5991)

(assert (=> b!418838 (= (+!1218 lt!192083 lt!192080) (+!1218 (+!1218 lt!192083 (tuple2!7065 k0!794 lt!192075)) lt!192080))))

(declare-fun lt!192079 () V!15533)

(assert (=> b!418838 (= lt!192080 (tuple2!7065 k0!794 lt!192079))))

(declare-fun lt!192082 () Unit!12339)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!40 (ListLongMap!5991 (_ BitVec 64) V!15533 V!15533) Unit!12339)

(assert (=> b!418838 (= lt!192082 (addSameAsAddTwiceSameKeyDiffValues!40 lt!192083 k0!794 lt!192075 lt!192079))))

(declare-fun lt!192078 () V!15533)

(declare-fun get!6045 (ValueCell!5067 V!15533) V!15533)

(assert (=> b!418838 (= lt!192075 (get!6045 (select (arr!12184 _values!549) from!863) lt!192078))))

(declare-fun lt!192081 () ListLongMap!5991)

(assert (=> b!418838 (= lt!192081 (+!1218 lt!192083 (tuple2!7065 (select (arr!12183 lt!192076) from!863) lt!192079)))))

(assert (=> b!418838 (= lt!192079 (get!6045 (select (store (arr!12184 _values!549) i!563 (ValueCellFull!5067 v!412)) from!863) lt!192078))))

(declare-fun dynLambda!702 (Int (_ BitVec 64)) V!15533)

(assert (=> b!418838 (= lt!192078 (dynLambda!702 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!418838 (= lt!192083 (getCurrentListMapNoExtraKeys!1214 lt!192076 lt!192084 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418839 () Bool)

(declare-fun res!244197 () Bool)

(assert (=> b!418839 (=> (not res!244197) (not e!249682))))

(assert (=> b!418839 (= res!244197 (or (= (select (arr!12183 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12183 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!418840 () Bool)

(declare-fun res!244198 () Bool)

(declare-fun e!249675 () Bool)

(assert (=> b!418840 (=> (not res!244198) (not e!249675))))

(assert (=> b!418840 (= res!244198 (bvsle from!863 i!563))))

(declare-fun b!418841 () Bool)

(assert (=> b!418841 (= e!249675 e!249680)))

(declare-fun res!244189 () Bool)

(assert (=> b!418841 (=> (not res!244189) (not e!249680))))

(assert (=> b!418841 (= res!244189 (= from!863 i!563))))

(assert (=> b!418841 (= lt!192081 (getCurrentListMapNoExtraKeys!1214 lt!192076 lt!192084 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!418841 (= lt!192084 (array!25476 (store (arr!12184 _values!549) i!563 (ValueCellFull!5067 v!412)) (size!12536 _values!549)))))

(declare-fun lt!192074 () ListLongMap!5991)

(assert (=> b!418841 (= lt!192074 (getCurrentListMapNoExtraKeys!1214 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!418842 () Bool)

(assert (=> b!418842 (= e!249678 (= call!29183 (+!1218 call!29182 (tuple2!7065 k0!794 v!412))))))

(declare-fun b!418843 () Bool)

(declare-fun res!244196 () Bool)

(assert (=> b!418843 (=> (not res!244196) (not e!249682))))

(assert (=> b!418843 (= res!244196 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12535 _keys!709))))))

(declare-fun b!418844 () Bool)

(declare-fun e!249676 () Bool)

(assert (=> b!418844 (= e!249676 tp_is_empty!10821)))

(declare-fun b!418845 () Bool)

(declare-fun res!244190 () Bool)

(assert (=> b!418845 (=> (not res!244190) (not e!249675))))

(assert (=> b!418845 (= res!244190 (arrayNoDuplicates!0 lt!192076 #b00000000000000000000000000000000 Nil!7109))))

(declare-fun b!418846 () Bool)

(declare-fun e!249681 () Bool)

(assert (=> b!418846 (= e!249681 (and e!249676 mapRes!17853))))

(declare-fun condMapEmpty!17853 () Bool)

(declare-fun mapDefault!17853 () ValueCell!5067)

(assert (=> b!418846 (= condMapEmpty!17853 (= (arr!12184 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5067)) mapDefault!17853)))))

(declare-fun res!244199 () Bool)

(assert (=> start!39410 (=> (not res!244199) (not e!249682))))

(assert (=> start!39410 (= res!244199 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12535 _keys!709))))))

(assert (=> start!39410 e!249682))

(assert (=> start!39410 tp_is_empty!10821))

(assert (=> start!39410 tp!34535))

(assert (=> start!39410 true))

(declare-fun array_inv!8884 (array!25475) Bool)

(assert (=> start!39410 (and (array_inv!8884 _values!549) e!249681)))

(declare-fun array_inv!8885 (array!25473) Bool)

(assert (=> start!39410 (array_inv!8885 _keys!709)))

(declare-fun b!418836 () Bool)

(assert (=> b!418836 (= e!249682 e!249675)))

(declare-fun res!244200 () Bool)

(assert (=> b!418836 (=> (not res!244200) (not e!249675))))

(assert (=> b!418836 (= res!244200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192076 mask!1025))))

(assert (=> b!418836 (= lt!192076 (array!25474 (store (arr!12183 _keys!709) i!563 k0!794) (size!12535 _keys!709)))))

(assert (= (and start!39410 res!244199) b!418835))

(assert (= (and b!418835 res!244187) b!418834))

(assert (= (and b!418834 res!244192) b!418837))

(assert (= (and b!418837 res!244191) b!418828))

(assert (= (and b!418828 res!244194) b!418843))

(assert (= (and b!418843 res!244196) b!418833))

(assert (= (and b!418833 res!244193) b!418839))

(assert (= (and b!418839 res!244197) b!418830))

(assert (= (and b!418830 res!244195) b!418836))

(assert (= (and b!418836 res!244200) b!418845))

(assert (= (and b!418845 res!244190) b!418840))

(assert (= (and b!418840 res!244198) b!418841))

(assert (= (and b!418841 res!244189) b!418829))

(assert (= (and b!418829 c!55142) b!418842))

(assert (= (and b!418829 (not c!55142)) b!418831))

(assert (= (or b!418842 b!418831) bm!29180))

(assert (= (or b!418842 b!418831) bm!29179))

(assert (= (and b!418829 (not res!244188)) b!418838))

(assert (= (and b!418846 condMapEmpty!17853) mapIsEmpty!17853))

(assert (= (and b!418846 (not condMapEmpty!17853)) mapNonEmpty!17853))

(get-info :version)

(assert (= (and mapNonEmpty!17853 ((_ is ValueCellFull!5067) mapValue!17853)) b!418832))

(assert (= (and b!418846 ((_ is ValueCellFull!5067) mapDefault!17853)) b!418844))

(assert (= start!39410 b!418846))

(declare-fun b_lambda!9003 () Bool)

(assert (=> (not b_lambda!9003) (not b!418838)))

(declare-fun t!12453 () Bool)

(declare-fun tb!3299 () Bool)

(assert (=> (and start!39410 (= defaultEntry!557 defaultEntry!557) t!12453) tb!3299))

(declare-fun result!6117 () Bool)

(assert (=> tb!3299 (= result!6117 tp_is_empty!10821)))

(assert (=> b!418838 t!12453))

(declare-fun b_and!17233 () Bool)

(assert (= b_and!17231 (and (=> t!12453 result!6117) b_and!17233)))

(declare-fun m!408325 () Bool)

(assert (=> b!418842 m!408325))

(declare-fun m!408327 () Bool)

(assert (=> start!39410 m!408327))

(declare-fun m!408329 () Bool)

(assert (=> start!39410 m!408329))

(declare-fun m!408331 () Bool)

(assert (=> b!418830 m!408331))

(declare-fun m!408333 () Bool)

(assert (=> b!418835 m!408333))

(declare-fun m!408335 () Bool)

(assert (=> bm!29180 m!408335))

(declare-fun m!408337 () Bool)

(assert (=> b!418838 m!408337))

(declare-fun m!408339 () Bool)

(assert (=> b!418838 m!408339))

(declare-fun m!408341 () Bool)

(assert (=> b!418838 m!408341))

(declare-fun m!408343 () Bool)

(assert (=> b!418838 m!408343))

(declare-fun m!408345 () Bool)

(assert (=> b!418838 m!408345))

(declare-fun m!408347 () Bool)

(assert (=> b!418838 m!408347))

(declare-fun m!408349 () Bool)

(assert (=> b!418838 m!408349))

(declare-fun m!408351 () Bool)

(assert (=> b!418838 m!408351))

(assert (=> b!418838 m!408337))

(declare-fun m!408353 () Bool)

(assert (=> b!418838 m!408353))

(declare-fun m!408355 () Bool)

(assert (=> b!418838 m!408355))

(declare-fun m!408357 () Bool)

(assert (=> b!418838 m!408357))

(assert (=> b!418838 m!408341))

(declare-fun m!408359 () Bool)

(assert (=> b!418838 m!408359))

(declare-fun m!408361 () Bool)

(assert (=> b!418838 m!408361))

(assert (=> b!418838 m!408345))

(declare-fun m!408363 () Bool)

(assert (=> mapNonEmpty!17853 m!408363))

(declare-fun m!408365 () Bool)

(assert (=> b!418839 m!408365))

(declare-fun m!408367 () Bool)

(assert (=> b!418828 m!408367))

(declare-fun m!408369 () Bool)

(assert (=> b!418833 m!408369))

(declare-fun m!408371 () Bool)

(assert (=> b!418837 m!408371))

(declare-fun m!408373 () Bool)

(assert (=> b!418829 m!408373))

(assert (=> b!418829 m!408373))

(declare-fun m!408375 () Bool)

(assert (=> b!418829 m!408375))

(declare-fun m!408377 () Bool)

(assert (=> b!418829 m!408377))

(declare-fun m!408379 () Bool)

(assert (=> b!418845 m!408379))

(declare-fun m!408381 () Bool)

(assert (=> b!418836 m!408381))

(declare-fun m!408383 () Bool)

(assert (=> b!418836 m!408383))

(declare-fun m!408385 () Bool)

(assert (=> bm!29179 m!408385))

(declare-fun m!408387 () Bool)

(assert (=> b!418841 m!408387))

(assert (=> b!418841 m!408355))

(declare-fun m!408389 () Bool)

(assert (=> b!418841 m!408389))

(check-sat (not b!418828) (not b!418830) (not b!418837) (not b!418842) (not bm!29180) (not b!418829) (not b!418836) (not b!418845) (not bm!29179) (not b!418833) (not b!418838) (not mapNonEmpty!17853) (not start!39410) (not b!418841) (not b!418835) (not b_lambda!9003) b_and!17233 tp_is_empty!10821 (not b_next!9669))
(check-sat b_and!17233 (not b_next!9669))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39320 () Bool)

(assert start!39320)

(declare-fun b_free!9579 () Bool)

(declare-fun b_next!9579 () Bool)

(assert (=> start!39320 (= b_free!9579 (not b_next!9579))))

(declare-fun tp!34266 () Bool)

(declare-fun b_and!17051 () Bool)

(assert (=> start!39320 (= tp!34266 b_and!17051)))

(declare-fun b!416173 () Bool)

(declare-fun e!248462 () Bool)

(declare-fun tp_is_empty!10731 () Bool)

(assert (=> b!416173 (= e!248462 tp_is_empty!10731)))

(declare-fun b!416174 () Bool)

(declare-fun e!248467 () Bool)

(declare-fun e!248461 () Bool)

(declare-fun mapRes!17718 () Bool)

(assert (=> b!416174 (= e!248467 (and e!248461 mapRes!17718))))

(declare-fun condMapEmpty!17718 () Bool)

(declare-datatypes ((V!15413 0))(
  ( (V!15414 (val!5410 Int)) )
))
(declare-datatypes ((ValueCell!5022 0))(
  ( (ValueCellFull!5022 (v!7653 V!15413)) (EmptyCell!5022) )
))
(declare-datatypes ((array!25297 0))(
  ( (array!25298 (arr!12095 (Array (_ BitVec 32) ValueCell!5022)) (size!12447 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25297)

(declare-fun mapDefault!17718 () ValueCell!5022)

(assert (=> b!416174 (= condMapEmpty!17718 (= (arr!12095 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5022)) mapDefault!17718)))))

(declare-fun b!416175 () Bool)

(declare-fun res!242308 () Bool)

(declare-fun e!248459 () Bool)

(assert (=> b!416175 (=> (not res!242308) (not e!248459))))

(declare-datatypes ((array!25299 0))(
  ( (array!25300 (arr!12096 (Array (_ BitVec 32) (_ BitVec 64))) (size!12448 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25299)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!416175 (= res!242308 (and (= (size!12447 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12448 _keys!709) (size!12447 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!416176 () Bool)

(declare-fun e!248466 () Bool)

(declare-datatypes ((tuple2!6980 0))(
  ( (tuple2!6981 (_1!3500 (_ BitVec 64)) (_2!3500 V!15413)) )
))
(declare-datatypes ((List!7035 0))(
  ( (Nil!7032) (Cons!7031 (h!7887 tuple2!6980) (t!12287 List!7035)) )
))
(declare-datatypes ((ListLongMap!5907 0))(
  ( (ListLongMap!5908 (toList!2969 List!7035)) )
))
(declare-fun call!28913 () ListLongMap!5907)

(declare-fun call!28912 () ListLongMap!5907)

(assert (=> b!416176 (= e!248466 (= call!28913 call!28912))))

(declare-fun b!416177 () Bool)

(declare-fun e!248460 () Bool)

(declare-fun e!248465 () Bool)

(assert (=> b!416177 (= e!248460 (not e!248465))))

(declare-fun res!242310 () Bool)

(assert (=> b!416177 (=> res!242310 e!248465)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416177 (= res!242310 (validKeyInArray!0 (select (arr!12096 _keys!709) from!863)))))

(assert (=> b!416177 e!248466))

(declare-fun c!55007 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416177 (= c!55007 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15413)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15413)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!15413)

(declare-datatypes ((Unit!12261 0))(
  ( (Unit!12262) )
))
(declare-fun lt!190598 () Unit!12261)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!393 (array!25299 array!25297 (_ BitVec 32) (_ BitVec 32) V!15413 V!15413 (_ BitVec 32) (_ BitVec 64) V!15413 (_ BitVec 32) Int) Unit!12261)

(assert (=> b!416177 (= lt!190598 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!393 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416178 () Bool)

(declare-fun res!242307 () Bool)

(assert (=> b!416178 (=> (not res!242307) (not e!248459))))

(assert (=> b!416178 (= res!242307 (validKeyInArray!0 k0!794))))

(declare-fun b!416179 () Bool)

(declare-fun res!242299 () Bool)

(declare-fun e!248463 () Bool)

(assert (=> b!416179 (=> (not res!242299) (not e!248463))))

(declare-fun lt!190590 () array!25299)

(declare-datatypes ((List!7036 0))(
  ( (Nil!7033) (Cons!7032 (h!7888 (_ BitVec 64)) (t!12288 List!7036)) )
))
(declare-fun arrayNoDuplicates!0 (array!25299 (_ BitVec 32) List!7036) Bool)

(assert (=> b!416179 (= res!242299 (arrayNoDuplicates!0 lt!190590 #b00000000000000000000000000000000 Nil!7033))))

(declare-fun b!416180 () Bool)

(assert (=> b!416180 (= e!248461 tp_is_empty!10731)))

(declare-fun b!416182 () Bool)

(declare-fun res!242309 () Bool)

(assert (=> b!416182 (=> (not res!242309) (not e!248459))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25299 (_ BitVec 32)) Bool)

(assert (=> b!416182 (= res!242309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun lt!190589 () array!25297)

(declare-fun bm!28909 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1173 (array!25299 array!25297 (_ BitVec 32) (_ BitVec 32) V!15413 V!15413 (_ BitVec 32) Int) ListLongMap!5907)

(assert (=> bm!28909 (= call!28912 (getCurrentListMapNoExtraKeys!1173 (ite c!55007 lt!190590 _keys!709) (ite c!55007 lt!190589 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416183 () Bool)

(declare-fun res!242305 () Bool)

(assert (=> b!416183 (=> (not res!242305) (not e!248459))))

(assert (=> b!416183 (= res!242305 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7033))))

(declare-fun mapNonEmpty!17718 () Bool)

(declare-fun tp!34265 () Bool)

(assert (=> mapNonEmpty!17718 (= mapRes!17718 (and tp!34265 e!248462))))

(declare-fun mapRest!17718 () (Array (_ BitVec 32) ValueCell!5022))

(declare-fun mapValue!17718 () ValueCell!5022)

(declare-fun mapKey!17718 () (_ BitVec 32))

(assert (=> mapNonEmpty!17718 (= (arr!12095 _values!549) (store mapRest!17718 mapKey!17718 mapValue!17718))))

(declare-fun b!416184 () Bool)

(declare-fun res!242304 () Bool)

(assert (=> b!416184 (=> (not res!242304) (not e!248459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416184 (= res!242304 (validMask!0 mask!1025))))

(declare-fun b!416185 () Bool)

(declare-fun +!1181 (ListLongMap!5907 tuple2!6980) ListLongMap!5907)

(assert (=> b!416185 (= e!248466 (= call!28912 (+!1181 call!28913 (tuple2!6981 k0!794 v!412))))))

(declare-fun b!416186 () Bool)

(assert (=> b!416186 (= e!248465 true)))

(declare-fun lt!190591 () V!15413)

(declare-fun lt!190595 () ListLongMap!5907)

(declare-fun lt!190593 () tuple2!6980)

(assert (=> b!416186 (= (+!1181 lt!190595 lt!190593) (+!1181 (+!1181 lt!190595 (tuple2!6981 k0!794 lt!190591)) lt!190593))))

(declare-fun lt!190594 () V!15413)

(assert (=> b!416186 (= lt!190593 (tuple2!6981 k0!794 lt!190594))))

(declare-fun lt!190599 () Unit!12261)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!5 (ListLongMap!5907 (_ BitVec 64) V!15413 V!15413) Unit!12261)

(assert (=> b!416186 (= lt!190599 (addSameAsAddTwiceSameKeyDiffValues!5 lt!190595 k0!794 lt!190591 lt!190594))))

(declare-fun lt!190597 () V!15413)

(declare-fun get!5980 (ValueCell!5022 V!15413) V!15413)

(assert (=> b!416186 (= lt!190591 (get!5980 (select (arr!12095 _values!549) from!863) lt!190597))))

(declare-fun lt!190596 () ListLongMap!5907)

(assert (=> b!416186 (= lt!190596 (+!1181 lt!190595 (tuple2!6981 (select (arr!12096 lt!190590) from!863) lt!190594)))))

(assert (=> b!416186 (= lt!190594 (get!5980 (select (store (arr!12095 _values!549) i!563 (ValueCellFull!5022 v!412)) from!863) lt!190597))))

(declare-fun dynLambda!667 (Int (_ BitVec 64)) V!15413)

(assert (=> b!416186 (= lt!190597 (dynLambda!667 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!416186 (= lt!190595 (getCurrentListMapNoExtraKeys!1173 lt!190590 lt!190589 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416187 () Bool)

(declare-fun res!242302 () Bool)

(assert (=> b!416187 (=> (not res!242302) (not e!248459))))

(assert (=> b!416187 (= res!242302 (or (= (select (arr!12096 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12096 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17718 () Bool)

(assert (=> mapIsEmpty!17718 mapRes!17718))

(declare-fun b!416188 () Bool)

(assert (=> b!416188 (= e!248463 e!248460)))

(declare-fun res!242306 () Bool)

(assert (=> b!416188 (=> (not res!242306) (not e!248460))))

(assert (=> b!416188 (= res!242306 (= from!863 i!563))))

(assert (=> b!416188 (= lt!190596 (getCurrentListMapNoExtraKeys!1173 lt!190590 lt!190589 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!416188 (= lt!190589 (array!25298 (store (arr!12095 _values!549) i!563 (ValueCellFull!5022 v!412)) (size!12447 _values!549)))))

(declare-fun lt!190592 () ListLongMap!5907)

(assert (=> b!416188 (= lt!190592 (getCurrentListMapNoExtraKeys!1173 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416189 () Bool)

(declare-fun res!242297 () Bool)

(assert (=> b!416189 (=> (not res!242297) (not e!248459))))

(assert (=> b!416189 (= res!242297 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12448 _keys!709))))))

(declare-fun b!416190 () Bool)

(assert (=> b!416190 (= e!248459 e!248463)))

(declare-fun res!242301 () Bool)

(assert (=> b!416190 (=> (not res!242301) (not e!248463))))

(assert (=> b!416190 (= res!242301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190590 mask!1025))))

(assert (=> b!416190 (= lt!190590 (array!25300 (store (arr!12096 _keys!709) i!563 k0!794) (size!12448 _keys!709)))))

(declare-fun bm!28910 () Bool)

(assert (=> bm!28910 (= call!28913 (getCurrentListMapNoExtraKeys!1173 (ite c!55007 _keys!709 lt!190590) (ite c!55007 _values!549 lt!190589) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416191 () Bool)

(declare-fun res!242303 () Bool)

(assert (=> b!416191 (=> (not res!242303) (not e!248459))))

(declare-fun arrayContainsKey!0 (array!25299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416191 (= res!242303 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!242298 () Bool)

(assert (=> start!39320 (=> (not res!242298) (not e!248459))))

(assert (=> start!39320 (= res!242298 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12448 _keys!709))))))

(assert (=> start!39320 e!248459))

(assert (=> start!39320 tp_is_empty!10731))

(assert (=> start!39320 tp!34266))

(assert (=> start!39320 true))

(declare-fun array_inv!8822 (array!25297) Bool)

(assert (=> start!39320 (and (array_inv!8822 _values!549) e!248467)))

(declare-fun array_inv!8823 (array!25299) Bool)

(assert (=> start!39320 (array_inv!8823 _keys!709)))

(declare-fun b!416181 () Bool)

(declare-fun res!242300 () Bool)

(assert (=> b!416181 (=> (not res!242300) (not e!248463))))

(assert (=> b!416181 (= res!242300 (bvsle from!863 i!563))))

(assert (= (and start!39320 res!242298) b!416184))

(assert (= (and b!416184 res!242304) b!416175))

(assert (= (and b!416175 res!242308) b!416182))

(assert (= (and b!416182 res!242309) b!416183))

(assert (= (and b!416183 res!242305) b!416189))

(assert (= (and b!416189 res!242297) b!416178))

(assert (= (and b!416178 res!242307) b!416187))

(assert (= (and b!416187 res!242302) b!416191))

(assert (= (and b!416191 res!242303) b!416190))

(assert (= (and b!416190 res!242301) b!416179))

(assert (= (and b!416179 res!242299) b!416181))

(assert (= (and b!416181 res!242300) b!416188))

(assert (= (and b!416188 res!242306) b!416177))

(assert (= (and b!416177 c!55007) b!416185))

(assert (= (and b!416177 (not c!55007)) b!416176))

(assert (= (or b!416185 b!416176) bm!28909))

(assert (= (or b!416185 b!416176) bm!28910))

(assert (= (and b!416177 (not res!242310)) b!416186))

(assert (= (and b!416174 condMapEmpty!17718) mapIsEmpty!17718))

(assert (= (and b!416174 (not condMapEmpty!17718)) mapNonEmpty!17718))

(get-info :version)

(assert (= (and mapNonEmpty!17718 ((_ is ValueCellFull!5022) mapValue!17718)) b!416173))

(assert (= (and b!416174 ((_ is ValueCellFull!5022) mapDefault!17718)) b!416180))

(assert (= start!39320 b!416174))

(declare-fun b_lambda!8913 () Bool)

(assert (=> (not b_lambda!8913) (not b!416186)))

(declare-fun t!12286 () Bool)

(declare-fun tb!3209 () Bool)

(assert (=> (and start!39320 (= defaultEntry!557 defaultEntry!557) t!12286) tb!3209))

(declare-fun result!5937 () Bool)

(assert (=> tb!3209 (= result!5937 tp_is_empty!10731)))

(assert (=> b!416186 t!12286))

(declare-fun b_and!17053 () Bool)

(assert (= b_and!17051 (and (=> t!12286 result!5937) b_and!17053)))

(declare-fun m!405355 () Bool)

(assert (=> b!416178 m!405355))

(declare-fun m!405357 () Bool)

(assert (=> bm!28909 m!405357))

(declare-fun m!405359 () Bool)

(assert (=> b!416190 m!405359))

(declare-fun m!405361 () Bool)

(assert (=> b!416190 m!405361))

(declare-fun m!405363 () Bool)

(assert (=> start!39320 m!405363))

(declare-fun m!405365 () Bool)

(assert (=> start!39320 m!405365))

(declare-fun m!405367 () Bool)

(assert (=> b!416184 m!405367))

(declare-fun m!405369 () Bool)

(assert (=> bm!28910 m!405369))

(declare-fun m!405371 () Bool)

(assert (=> b!416185 m!405371))

(declare-fun m!405373 () Bool)

(assert (=> b!416183 m!405373))

(declare-fun m!405375 () Bool)

(assert (=> b!416191 m!405375))

(declare-fun m!405377 () Bool)

(assert (=> b!416187 m!405377))

(declare-fun m!405379 () Bool)

(assert (=> b!416186 m!405379))

(declare-fun m!405381 () Bool)

(assert (=> b!416186 m!405381))

(declare-fun m!405383 () Bool)

(assert (=> b!416186 m!405383))

(declare-fun m!405385 () Bool)

(assert (=> b!416186 m!405385))

(declare-fun m!405387 () Bool)

(assert (=> b!416186 m!405387))

(declare-fun m!405389 () Bool)

(assert (=> b!416186 m!405389))

(declare-fun m!405391 () Bool)

(assert (=> b!416186 m!405391))

(assert (=> b!416186 m!405385))

(assert (=> b!416186 m!405379))

(declare-fun m!405393 () Bool)

(assert (=> b!416186 m!405393))

(declare-fun m!405395 () Bool)

(assert (=> b!416186 m!405395))

(declare-fun m!405397 () Bool)

(assert (=> b!416186 m!405397))

(declare-fun m!405399 () Bool)

(assert (=> b!416186 m!405399))

(declare-fun m!405401 () Bool)

(assert (=> b!416186 m!405401))

(declare-fun m!405403 () Bool)

(assert (=> b!416186 m!405403))

(assert (=> b!416186 m!405395))

(declare-fun m!405405 () Bool)

(assert (=> b!416179 m!405405))

(declare-fun m!405407 () Bool)

(assert (=> b!416188 m!405407))

(assert (=> b!416188 m!405391))

(declare-fun m!405409 () Bool)

(assert (=> b!416188 m!405409))

(declare-fun m!405411 () Bool)

(assert (=> mapNonEmpty!17718 m!405411))

(declare-fun m!405413 () Bool)

(assert (=> b!416177 m!405413))

(assert (=> b!416177 m!405413))

(declare-fun m!405415 () Bool)

(assert (=> b!416177 m!405415))

(declare-fun m!405417 () Bool)

(assert (=> b!416177 m!405417))

(declare-fun m!405419 () Bool)

(assert (=> b!416182 m!405419))

(check-sat (not b!416190) (not b_next!9579) (not b!416177) (not b!416185) (not b!416191) (not b!416183) (not b_lambda!8913) (not mapNonEmpty!17718) (not bm!28909) (not b!416179) (not bm!28910) (not b!416182) (not b!416186) (not start!39320) (not b!416178) tp_is_empty!10731 (not b!416188) (not b!416184) b_and!17053)
(check-sat b_and!17053 (not b_next!9579))

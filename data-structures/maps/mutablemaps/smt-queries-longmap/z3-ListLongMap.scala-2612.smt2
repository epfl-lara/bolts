; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39500 () Bool)

(assert start!39500)

(declare-fun b_free!9759 () Bool)

(declare-fun b_next!9759 () Bool)

(assert (=> start!39500 (= b_free!9759 (not b_next!9759))))

(declare-fun tp!34806 () Bool)

(declare-fun b_and!17411 () Bool)

(assert (=> start!39500 (= tp!34806 b_and!17411)))

(declare-fun mapNonEmpty!17988 () Bool)

(declare-fun mapRes!17988 () Bool)

(declare-fun tp!34805 () Bool)

(declare-fun e!250894 () Bool)

(assert (=> mapNonEmpty!17988 (= mapRes!17988 (and tp!34805 e!250894))))

(declare-datatypes ((V!15653 0))(
  ( (V!15654 (val!5500 Int)) )
))
(declare-datatypes ((ValueCell!5112 0))(
  ( (ValueCellFull!5112 (v!7743 V!15653)) (EmptyCell!5112) )
))
(declare-datatypes ((array!25649 0))(
  ( (array!25650 (arr!12271 (Array (_ BitVec 32) ValueCell!5112)) (size!12623 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25649)

(declare-fun mapValue!17988 () ValueCell!5112)

(declare-fun mapKey!17988 () (_ BitVec 32))

(declare-fun mapRest!17988 () (Array (_ BitVec 32) ValueCell!5112))

(assert (=> mapNonEmpty!17988 (= (arr!12271 _values!549) (store mapRest!17988 mapKey!17988 mapValue!17988))))

(declare-fun b!421483 () Bool)

(declare-fun e!250889 () Bool)

(assert (=> b!421483 (= e!250889 true)))

(declare-datatypes ((tuple2!7142 0))(
  ( (tuple2!7143 (_1!3581 (_ BitVec 64)) (_2!3581 V!15653)) )
))
(declare-fun lt!193562 () tuple2!7142)

(declare-fun lt!193567 () V!15653)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((List!7184 0))(
  ( (Nil!7181) (Cons!7180 (h!8036 tuple2!7142) (t!12616 List!7184)) )
))
(declare-datatypes ((ListLongMap!6069 0))(
  ( (ListLongMap!6070 (toList!3050 List!7184)) )
))
(declare-fun lt!193563 () ListLongMap!6069)

(declare-fun +!1252 (ListLongMap!6069 tuple2!7142) ListLongMap!6069)

(assert (=> b!421483 (= (+!1252 lt!193563 lt!193562) (+!1252 (+!1252 lt!193563 (tuple2!7143 k0!794 lt!193567)) lt!193562))))

(declare-fun lt!193565 () V!15653)

(assert (=> b!421483 (= lt!193562 (tuple2!7143 k0!794 lt!193565))))

(declare-datatypes ((Unit!12407 0))(
  ( (Unit!12408) )
))
(declare-fun lt!193560 () Unit!12407)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!68 (ListLongMap!6069 (_ BitVec 64) V!15653 V!15653) Unit!12407)

(assert (=> b!421483 (= lt!193560 (addSameAsAddTwiceSameKeyDiffValues!68 lt!193563 k0!794 lt!193567 lt!193565))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!193566 () V!15653)

(declare-fun get!6103 (ValueCell!5112 V!15653) V!15653)

(assert (=> b!421483 (= lt!193567 (get!6103 (select (arr!12271 _values!549) from!863) lt!193566))))

(declare-fun lt!193569 () ListLongMap!6069)

(declare-datatypes ((array!25651 0))(
  ( (array!25652 (arr!12272 (Array (_ BitVec 32) (_ BitVec 64))) (size!12624 (_ BitVec 32))) )
))
(declare-fun lt!193561 () array!25651)

(assert (=> b!421483 (= lt!193569 (+!1252 lt!193563 (tuple2!7143 (select (arr!12272 lt!193561) from!863) lt!193565)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15653)

(assert (=> b!421483 (= lt!193565 (get!6103 (select (store (arr!12271 _values!549) i!563 (ValueCellFull!5112 v!412)) from!863) lt!193566))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!730 (Int (_ BitVec 64)) V!15653)

(assert (=> b!421483 (= lt!193566 (dynLambda!730 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15653)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15653)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!193564 () array!25649)

(declare-fun getCurrentListMapNoExtraKeys!1251 (array!25651 array!25649 (_ BitVec 32) (_ BitVec 32) V!15653 V!15653 (_ BitVec 32) Int) ListLongMap!6069)

(assert (=> b!421483 (= lt!193563 (getCurrentListMapNoExtraKeys!1251 lt!193561 lt!193564 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421484 () Bool)

(declare-fun res!246081 () Bool)

(declare-fun e!250892 () Bool)

(assert (=> b!421484 (=> (not res!246081) (not e!250892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!421484 (= res!246081 (validKeyInArray!0 k0!794))))

(declare-fun b!421485 () Bool)

(declare-fun e!250890 () Bool)

(declare-fun call!29452 () ListLongMap!6069)

(declare-fun call!29453 () ListLongMap!6069)

(assert (=> b!421485 (= e!250890 (= call!29452 call!29453))))

(declare-fun b!421486 () Bool)

(declare-fun e!250897 () Bool)

(declare-fun tp_is_empty!10911 () Bool)

(assert (=> b!421486 (= e!250897 tp_is_empty!10911)))

(declare-fun bm!29449 () Bool)

(assert (=> bm!29449 (= call!29452 (getCurrentListMapNoExtraKeys!1251 lt!193561 lt!193564 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!246087 () Bool)

(assert (=> start!39500 (=> (not res!246087) (not e!250892))))

(declare-fun _keys!709 () array!25651)

(assert (=> start!39500 (= res!246087 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12624 _keys!709))))))

(assert (=> start!39500 e!250892))

(assert (=> start!39500 tp_is_empty!10911))

(assert (=> start!39500 tp!34806))

(assert (=> start!39500 true))

(declare-fun e!250896 () Bool)

(declare-fun array_inv!8940 (array!25649) Bool)

(assert (=> start!39500 (and (array_inv!8940 _values!549) e!250896)))

(declare-fun array_inv!8941 (array!25651) Bool)

(assert (=> start!39500 (array_inv!8941 _keys!709)))

(declare-fun b!421487 () Bool)

(declare-fun res!246088 () Bool)

(declare-fun e!250891 () Bool)

(assert (=> b!421487 (=> (not res!246088) (not e!250891))))

(assert (=> b!421487 (= res!246088 (bvsle from!863 i!563))))

(declare-fun b!421488 () Bool)

(assert (=> b!421488 (= e!250890 (= call!29452 (+!1252 call!29453 (tuple2!7143 k0!794 v!412))))))

(declare-fun b!421489 () Bool)

(assert (=> b!421489 (= e!250892 e!250891)))

(declare-fun res!246084 () Bool)

(assert (=> b!421489 (=> (not res!246084) (not e!250891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25651 (_ BitVec 32)) Bool)

(assert (=> b!421489 (= res!246084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193561 mask!1025))))

(assert (=> b!421489 (= lt!193561 (array!25652 (store (arr!12272 _keys!709) i!563 k0!794) (size!12624 _keys!709)))))

(declare-fun mapIsEmpty!17988 () Bool)

(assert (=> mapIsEmpty!17988 mapRes!17988))

(declare-fun b!421490 () Bool)

(declare-fun res!246078 () Bool)

(assert (=> b!421490 (=> (not res!246078) (not e!250892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!421490 (= res!246078 (validMask!0 mask!1025))))

(declare-fun b!421491 () Bool)

(declare-fun res!246080 () Bool)

(assert (=> b!421491 (=> (not res!246080) (not e!250892))))

(declare-fun arrayContainsKey!0 (array!25651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!421491 (= res!246080 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!421492 () Bool)

(declare-fun res!246079 () Bool)

(assert (=> b!421492 (=> (not res!246079) (not e!250892))))

(assert (=> b!421492 (= res!246079 (or (= (select (arr!12272 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12272 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!421493 () Bool)

(declare-fun res!246089 () Bool)

(assert (=> b!421493 (=> (not res!246089) (not e!250892))))

(assert (=> b!421493 (= res!246089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!421494 () Bool)

(declare-fun e!250895 () Bool)

(assert (=> b!421494 (= e!250895 (not e!250889))))

(declare-fun res!246082 () Bool)

(assert (=> b!421494 (=> res!246082 e!250889)))

(assert (=> b!421494 (= res!246082 (validKeyInArray!0 (select (arr!12272 _keys!709) from!863)))))

(assert (=> b!421494 e!250890))

(declare-fun c!55277 () Bool)

(assert (=> b!421494 (= c!55277 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!193559 () Unit!12407)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!456 (array!25651 array!25649 (_ BitVec 32) (_ BitVec 32) V!15653 V!15653 (_ BitVec 32) (_ BitVec 64) V!15653 (_ BitVec 32) Int) Unit!12407)

(assert (=> b!421494 (= lt!193559 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!456 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421495 () Bool)

(declare-fun res!246083 () Bool)

(assert (=> b!421495 (=> (not res!246083) (not e!250892))))

(assert (=> b!421495 (= res!246083 (and (= (size!12623 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12624 _keys!709) (size!12623 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!29450 () Bool)

(assert (=> bm!29450 (= call!29453 (getCurrentListMapNoExtraKeys!1251 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!421496 () Bool)

(declare-fun res!246085 () Bool)

(assert (=> b!421496 (=> (not res!246085) (not e!250892))))

(assert (=> b!421496 (= res!246085 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12624 _keys!709))))))

(declare-fun b!421497 () Bool)

(assert (=> b!421497 (= e!250894 tp_is_empty!10911)))

(declare-fun b!421498 () Bool)

(declare-fun res!246077 () Bool)

(assert (=> b!421498 (=> (not res!246077) (not e!250891))))

(declare-datatypes ((List!7185 0))(
  ( (Nil!7182) (Cons!7181 (h!8037 (_ BitVec 64)) (t!12617 List!7185)) )
))
(declare-fun arrayNoDuplicates!0 (array!25651 (_ BitVec 32) List!7185) Bool)

(assert (=> b!421498 (= res!246077 (arrayNoDuplicates!0 lt!193561 #b00000000000000000000000000000000 Nil!7182))))

(declare-fun b!421499 () Bool)

(assert (=> b!421499 (= e!250891 e!250895)))

(declare-fun res!246090 () Bool)

(assert (=> b!421499 (=> (not res!246090) (not e!250895))))

(assert (=> b!421499 (= res!246090 (= from!863 i!563))))

(assert (=> b!421499 (= lt!193569 (getCurrentListMapNoExtraKeys!1251 lt!193561 lt!193564 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!421499 (= lt!193564 (array!25650 (store (arr!12271 _values!549) i!563 (ValueCellFull!5112 v!412)) (size!12623 _values!549)))))

(declare-fun lt!193568 () ListLongMap!6069)

(assert (=> b!421499 (= lt!193568 (getCurrentListMapNoExtraKeys!1251 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!421500 () Bool)

(assert (=> b!421500 (= e!250896 (and e!250897 mapRes!17988))))

(declare-fun condMapEmpty!17988 () Bool)

(declare-fun mapDefault!17988 () ValueCell!5112)

(assert (=> b!421500 (= condMapEmpty!17988 (= (arr!12271 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5112)) mapDefault!17988)))))

(declare-fun b!421501 () Bool)

(declare-fun res!246086 () Bool)

(assert (=> b!421501 (=> (not res!246086) (not e!250892))))

(assert (=> b!421501 (= res!246086 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7182))))

(assert (= (and start!39500 res!246087) b!421490))

(assert (= (and b!421490 res!246078) b!421495))

(assert (= (and b!421495 res!246083) b!421493))

(assert (= (and b!421493 res!246089) b!421501))

(assert (= (and b!421501 res!246086) b!421496))

(assert (= (and b!421496 res!246085) b!421484))

(assert (= (and b!421484 res!246081) b!421492))

(assert (= (and b!421492 res!246079) b!421491))

(assert (= (and b!421491 res!246080) b!421489))

(assert (= (and b!421489 res!246084) b!421498))

(assert (= (and b!421498 res!246077) b!421487))

(assert (= (and b!421487 res!246088) b!421499))

(assert (= (and b!421499 res!246090) b!421494))

(assert (= (and b!421494 c!55277) b!421488))

(assert (= (and b!421494 (not c!55277)) b!421485))

(assert (= (or b!421488 b!421485) bm!29449))

(assert (= (or b!421488 b!421485) bm!29450))

(assert (= (and b!421494 (not res!246082)) b!421483))

(assert (= (and b!421500 condMapEmpty!17988) mapIsEmpty!17988))

(assert (= (and b!421500 (not condMapEmpty!17988)) mapNonEmpty!17988))

(get-info :version)

(assert (= (and mapNonEmpty!17988 ((_ is ValueCellFull!5112) mapValue!17988)) b!421497))

(assert (= (and b!421500 ((_ is ValueCellFull!5112) mapDefault!17988)) b!421486))

(assert (= start!39500 b!421500))

(declare-fun b_lambda!9093 () Bool)

(assert (=> (not b_lambda!9093) (not b!421483)))

(declare-fun t!12615 () Bool)

(declare-fun tb!3389 () Bool)

(assert (=> (and start!39500 (= defaultEntry!557 defaultEntry!557) t!12615) tb!3389))

(declare-fun result!6297 () Bool)

(assert (=> tb!3389 (= result!6297 tp_is_empty!10911)))

(assert (=> b!421483 t!12615))

(declare-fun b_and!17413 () Bool)

(assert (= b_and!17411 (and (=> t!12615 result!6297) b_and!17413)))

(declare-fun m!411291 () Bool)

(assert (=> b!421491 m!411291))

(declare-fun m!411293 () Bool)

(assert (=> b!421498 m!411293))

(declare-fun m!411295 () Bool)

(assert (=> b!421492 m!411295))

(declare-fun m!411297 () Bool)

(assert (=> b!421490 m!411297))

(declare-fun m!411299 () Bool)

(assert (=> mapNonEmpty!17988 m!411299))

(declare-fun m!411301 () Bool)

(assert (=> bm!29449 m!411301))

(declare-fun m!411303 () Bool)

(assert (=> b!421483 m!411303))

(declare-fun m!411305 () Bool)

(assert (=> b!421483 m!411305))

(declare-fun m!411307 () Bool)

(assert (=> b!421483 m!411307))

(declare-fun m!411309 () Bool)

(assert (=> b!421483 m!411309))

(assert (=> b!421483 m!411301))

(declare-fun m!411311 () Bool)

(assert (=> b!421483 m!411311))

(declare-fun m!411313 () Bool)

(assert (=> b!421483 m!411313))

(assert (=> b!421483 m!411307))

(declare-fun m!411315 () Bool)

(assert (=> b!421483 m!411315))

(declare-fun m!411317 () Bool)

(assert (=> b!421483 m!411317))

(assert (=> b!421483 m!411303))

(declare-fun m!411319 () Bool)

(assert (=> b!421483 m!411319))

(declare-fun m!411321 () Bool)

(assert (=> b!421483 m!411321))

(declare-fun m!411323 () Bool)

(assert (=> b!421483 m!411323))

(declare-fun m!411325 () Bool)

(assert (=> b!421483 m!411325))

(assert (=> b!421483 m!411323))

(declare-fun m!411327 () Bool)

(assert (=> b!421494 m!411327))

(assert (=> b!421494 m!411327))

(declare-fun m!411329 () Bool)

(assert (=> b!421494 m!411329))

(declare-fun m!411331 () Bool)

(assert (=> b!421494 m!411331))

(declare-fun m!411333 () Bool)

(assert (=> b!421484 m!411333))

(declare-fun m!411335 () Bool)

(assert (=> b!421493 m!411335))

(declare-fun m!411337 () Bool)

(assert (=> b!421488 m!411337))

(declare-fun m!411339 () Bool)

(assert (=> b!421499 m!411339))

(assert (=> b!421499 m!411321))

(declare-fun m!411341 () Bool)

(assert (=> b!421499 m!411341))

(declare-fun m!411343 () Bool)

(assert (=> b!421501 m!411343))

(declare-fun m!411345 () Bool)

(assert (=> b!421489 m!411345))

(declare-fun m!411347 () Bool)

(assert (=> b!421489 m!411347))

(declare-fun m!411349 () Bool)

(assert (=> start!39500 m!411349))

(declare-fun m!411351 () Bool)

(assert (=> start!39500 m!411351))

(declare-fun m!411353 () Bool)

(assert (=> bm!29450 m!411353))

(check-sat (not b!421488) b_and!17413 (not b!421490) tp_is_empty!10911 (not b!421491) (not start!39500) (not b!421489) (not b!421484) (not b!421494) (not b_next!9759) (not b!421483) (not bm!29450) (not b!421498) (not mapNonEmpty!17988) (not bm!29449) (not b!421501) (not b_lambda!9093) (not b!421499) (not b!421493))
(check-sat b_and!17413 (not b_next!9759))

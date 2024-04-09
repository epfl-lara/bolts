; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39470 () Bool)

(assert start!39470)

(declare-fun b_free!9729 () Bool)

(declare-fun b_next!9729 () Bool)

(assert (=> start!39470 (= b_free!9729 (not b_next!9729))))

(declare-fun tp!34715 () Bool)

(declare-fun b_and!17351 () Bool)

(assert (=> start!39470 (= tp!34715 b_and!17351)))

(declare-fun b!420598 () Bool)

(declare-fun res!245455 () Bool)

(declare-fun e!250488 () Bool)

(assert (=> b!420598 (=> (not res!245455) (not e!250488))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25589 0))(
  ( (array!25590 (arr!12241 (Array (_ BitVec 32) (_ BitVec 64))) (size!12593 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25589)

(assert (=> b!420598 (= res!245455 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12593 _keys!709))))))

(declare-fun res!245451 () Bool)

(assert (=> start!39470 (=> (not res!245451) (not e!250488))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39470 (= res!245451 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12593 _keys!709))))))

(assert (=> start!39470 e!250488))

(declare-fun tp_is_empty!10881 () Bool)

(assert (=> start!39470 tp_is_empty!10881))

(assert (=> start!39470 tp!34715))

(assert (=> start!39470 true))

(declare-datatypes ((V!15613 0))(
  ( (V!15614 (val!5485 Int)) )
))
(declare-datatypes ((ValueCell!5097 0))(
  ( (ValueCellFull!5097 (v!7728 V!15613)) (EmptyCell!5097) )
))
(declare-datatypes ((array!25591 0))(
  ( (array!25592 (arr!12242 (Array (_ BitVec 32) ValueCell!5097)) (size!12594 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25591)

(declare-fun e!250486 () Bool)

(declare-fun array_inv!8916 (array!25591) Bool)

(assert (=> start!39470 (and (array_inv!8916 _values!549) e!250486)))

(declare-fun array_inv!8917 (array!25589) Bool)

(assert (=> start!39470 (array_inv!8917 _keys!709)))

(declare-fun b!420599 () Bool)

(declare-fun res!245458 () Bool)

(declare-fun e!250485 () Bool)

(assert (=> b!420599 (=> (not res!245458) (not e!250485))))

(declare-fun lt!193069 () array!25589)

(declare-datatypes ((List!7160 0))(
  ( (Nil!7157) (Cons!7156 (h!8012 (_ BitVec 64)) (t!12562 List!7160)) )
))
(declare-fun arrayNoDuplicates!0 (array!25589 (_ BitVec 32) List!7160) Bool)

(assert (=> b!420599 (= res!245458 (arrayNoDuplicates!0 lt!193069 #b00000000000000000000000000000000 Nil!7157))))

(declare-fun b!420600 () Bool)

(declare-fun res!245449 () Bool)

(assert (=> b!420600 (=> (not res!245449) (not e!250488))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!420600 (= res!245449 (and (= (size!12594 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12593 _keys!709) (size!12594 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!420601 () Bool)

(declare-fun e!250491 () Bool)

(assert (=> b!420601 (= e!250491 tp_is_empty!10881)))

(declare-fun b!420602 () Bool)

(declare-fun e!250490 () Bool)

(assert (=> b!420602 (= e!250485 e!250490)))

(declare-fun res!245452 () Bool)

(assert (=> b!420602 (=> (not res!245452) (not e!250490))))

(assert (=> b!420602 (= res!245452 (= from!863 i!563))))

(declare-fun minValue!515 () V!15613)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7116 0))(
  ( (tuple2!7117 (_1!3568 (_ BitVec 64)) (_2!3568 V!15613)) )
))
(declare-datatypes ((List!7161 0))(
  ( (Nil!7158) (Cons!7157 (h!8013 tuple2!7116) (t!12563 List!7161)) )
))
(declare-datatypes ((ListLongMap!6043 0))(
  ( (ListLongMap!6044 (toList!3037 List!7161)) )
))
(declare-fun lt!193071 () ListLongMap!6043)

(declare-fun zeroValue!515 () V!15613)

(declare-fun lt!193064 () array!25591)

(declare-fun getCurrentListMapNoExtraKeys!1238 (array!25589 array!25591 (_ BitVec 32) (_ BitVec 32) V!15613 V!15613 (_ BitVec 32) Int) ListLongMap!6043)

(assert (=> b!420602 (= lt!193071 (getCurrentListMapNoExtraKeys!1238 lt!193069 lt!193064 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15613)

(assert (=> b!420602 (= lt!193064 (array!25592 (store (arr!12242 _values!549) i!563 (ValueCellFull!5097 v!412)) (size!12594 _values!549)))))

(declare-fun lt!193072 () ListLongMap!6043)

(assert (=> b!420602 (= lt!193072 (getCurrentListMapNoExtraKeys!1238 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17943 () Bool)

(declare-fun mapRes!17943 () Bool)

(declare-fun tp!34716 () Bool)

(declare-fun e!250492 () Bool)

(assert (=> mapNonEmpty!17943 (= mapRes!17943 (and tp!34716 e!250492))))

(declare-fun mapRest!17943 () (Array (_ BitVec 32) ValueCell!5097))

(declare-fun mapValue!17943 () ValueCell!5097)

(declare-fun mapKey!17943 () (_ BitVec 32))

(assert (=> mapNonEmpty!17943 (= (arr!12242 _values!549) (store mapRest!17943 mapKey!17943 mapValue!17943))))

(declare-fun b!420603 () Bool)

(declare-fun res!245456 () Bool)

(assert (=> b!420603 (=> (not res!245456) (not e!250485))))

(assert (=> b!420603 (= res!245456 (bvsle from!863 i!563))))

(declare-fun call!29362 () ListLongMap!6043)

(declare-fun c!55232 () Bool)

(declare-fun bm!29359 () Bool)

(assert (=> bm!29359 (= call!29362 (getCurrentListMapNoExtraKeys!1238 (ite c!55232 _keys!709 lt!193069) (ite c!55232 _values!549 lt!193064) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420604 () Bool)

(declare-fun res!245460 () Bool)

(assert (=> b!420604 (=> (not res!245460) (not e!250488))))

(assert (=> b!420604 (= res!245460 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7157))))

(declare-fun b!420605 () Bool)

(declare-fun call!29363 () ListLongMap!6043)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun e!250484 () Bool)

(declare-fun +!1242 (ListLongMap!6043 tuple2!7116) ListLongMap!6043)

(assert (=> b!420605 (= e!250484 (= call!29363 (+!1242 call!29362 (tuple2!7117 k0!794 v!412))))))

(declare-fun b!420606 () Bool)

(declare-fun res!245448 () Bool)

(assert (=> b!420606 (=> (not res!245448) (not e!250488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420606 (= res!245448 (validMask!0 mask!1025))))

(declare-fun b!420607 () Bool)

(declare-fun e!250487 () Bool)

(assert (=> b!420607 (= e!250487 true)))

(declare-fun lt!193073 () ListLongMap!6043)

(declare-fun lt!193068 () V!15613)

(declare-fun lt!193070 () tuple2!7116)

(assert (=> b!420607 (= (+!1242 lt!193073 lt!193070) (+!1242 (+!1242 lt!193073 (tuple2!7117 k0!794 lt!193068)) lt!193070))))

(declare-fun lt!193066 () V!15613)

(assert (=> b!420607 (= lt!193070 (tuple2!7117 k0!794 lt!193066))))

(declare-datatypes ((Unit!12383 0))(
  ( (Unit!12384) )
))
(declare-fun lt!193065 () Unit!12383)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!59 (ListLongMap!6043 (_ BitVec 64) V!15613 V!15613) Unit!12383)

(assert (=> b!420607 (= lt!193065 (addSameAsAddTwiceSameKeyDiffValues!59 lt!193073 k0!794 lt!193068 lt!193066))))

(declare-fun lt!193074 () V!15613)

(declare-fun get!6084 (ValueCell!5097 V!15613) V!15613)

(assert (=> b!420607 (= lt!193068 (get!6084 (select (arr!12242 _values!549) from!863) lt!193074))))

(assert (=> b!420607 (= lt!193071 (+!1242 lt!193073 (tuple2!7117 (select (arr!12241 lt!193069) from!863) lt!193066)))))

(assert (=> b!420607 (= lt!193066 (get!6084 (select (store (arr!12242 _values!549) i!563 (ValueCellFull!5097 v!412)) from!863) lt!193074))))

(declare-fun dynLambda!721 (Int (_ BitVec 64)) V!15613)

(assert (=> b!420607 (= lt!193074 (dynLambda!721 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!420607 (= lt!193073 (getCurrentListMapNoExtraKeys!1238 lt!193069 lt!193064 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420608 () Bool)

(assert (=> b!420608 (= e!250486 (and e!250491 mapRes!17943))))

(declare-fun condMapEmpty!17943 () Bool)

(declare-fun mapDefault!17943 () ValueCell!5097)

(assert (=> b!420608 (= condMapEmpty!17943 (= (arr!12242 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5097)) mapDefault!17943)))))

(declare-fun b!420609 () Bool)

(declare-fun res!245457 () Bool)

(assert (=> b!420609 (=> (not res!245457) (not e!250488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25589 (_ BitVec 32)) Bool)

(assert (=> b!420609 (= res!245457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420610 () Bool)

(assert (=> b!420610 (= e!250492 tp_is_empty!10881)))

(declare-fun b!420611 () Bool)

(assert (=> b!420611 (= e!250484 (= call!29362 call!29363))))

(declare-fun mapIsEmpty!17943 () Bool)

(assert (=> mapIsEmpty!17943 mapRes!17943))

(declare-fun b!420612 () Bool)

(assert (=> b!420612 (= e!250490 (not e!250487))))

(declare-fun res!245454 () Bool)

(assert (=> b!420612 (=> res!245454 e!250487)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420612 (= res!245454 (validKeyInArray!0 (select (arr!12241 _keys!709) from!863)))))

(assert (=> b!420612 e!250484))

(assert (=> b!420612 (= c!55232 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!193067 () Unit!12383)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!446 (array!25589 array!25591 (_ BitVec 32) (_ BitVec 32) V!15613 V!15613 (_ BitVec 32) (_ BitVec 64) V!15613 (_ BitVec 32) Int) Unit!12383)

(assert (=> b!420612 (= lt!193067 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!446 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29360 () Bool)

(assert (=> bm!29360 (= call!29363 (getCurrentListMapNoExtraKeys!1238 (ite c!55232 lt!193069 _keys!709) (ite c!55232 lt!193064 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420613 () Bool)

(declare-fun res!245453 () Bool)

(assert (=> b!420613 (=> (not res!245453) (not e!250488))))

(assert (=> b!420613 (= res!245453 (validKeyInArray!0 k0!794))))

(declare-fun b!420614 () Bool)

(declare-fun res!245450 () Bool)

(assert (=> b!420614 (=> (not res!245450) (not e!250488))))

(declare-fun arrayContainsKey!0 (array!25589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420614 (= res!245450 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!420615 () Bool)

(assert (=> b!420615 (= e!250488 e!250485)))

(declare-fun res!245447 () Bool)

(assert (=> b!420615 (=> (not res!245447) (not e!250485))))

(assert (=> b!420615 (= res!245447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193069 mask!1025))))

(assert (=> b!420615 (= lt!193069 (array!25590 (store (arr!12241 _keys!709) i!563 k0!794) (size!12593 _keys!709)))))

(declare-fun b!420616 () Bool)

(declare-fun res!245459 () Bool)

(assert (=> b!420616 (=> (not res!245459) (not e!250488))))

(assert (=> b!420616 (= res!245459 (or (= (select (arr!12241 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12241 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39470 res!245451) b!420606))

(assert (= (and b!420606 res!245448) b!420600))

(assert (= (and b!420600 res!245449) b!420609))

(assert (= (and b!420609 res!245457) b!420604))

(assert (= (and b!420604 res!245460) b!420598))

(assert (= (and b!420598 res!245455) b!420613))

(assert (= (and b!420613 res!245453) b!420616))

(assert (= (and b!420616 res!245459) b!420614))

(assert (= (and b!420614 res!245450) b!420615))

(assert (= (and b!420615 res!245447) b!420599))

(assert (= (and b!420599 res!245458) b!420603))

(assert (= (and b!420603 res!245456) b!420602))

(assert (= (and b!420602 res!245452) b!420612))

(assert (= (and b!420612 c!55232) b!420605))

(assert (= (and b!420612 (not c!55232)) b!420611))

(assert (= (or b!420605 b!420611) bm!29360))

(assert (= (or b!420605 b!420611) bm!29359))

(assert (= (and b!420612 (not res!245454)) b!420607))

(assert (= (and b!420608 condMapEmpty!17943) mapIsEmpty!17943))

(assert (= (and b!420608 (not condMapEmpty!17943)) mapNonEmpty!17943))

(get-info :version)

(assert (= (and mapNonEmpty!17943 ((_ is ValueCellFull!5097) mapValue!17943)) b!420610))

(assert (= (and b!420608 ((_ is ValueCellFull!5097) mapDefault!17943)) b!420601))

(assert (= start!39470 b!420608))

(declare-fun b_lambda!9063 () Bool)

(assert (=> (not b_lambda!9063) (not b!420607)))

(declare-fun t!12561 () Bool)

(declare-fun tb!3359 () Bool)

(assert (=> (and start!39470 (= defaultEntry!557 defaultEntry!557) t!12561) tb!3359))

(declare-fun result!6237 () Bool)

(assert (=> tb!3359 (= result!6237 tp_is_empty!10881)))

(assert (=> b!420607 t!12561))

(declare-fun b_and!17353 () Bool)

(assert (= b_and!17351 (and (=> t!12561 result!6237) b_and!17353)))

(declare-fun m!410303 () Bool)

(assert (=> b!420602 m!410303))

(declare-fun m!410305 () Bool)

(assert (=> b!420602 m!410305))

(declare-fun m!410307 () Bool)

(assert (=> b!420602 m!410307))

(declare-fun m!410309 () Bool)

(assert (=> b!420616 m!410309))

(declare-fun m!410311 () Bool)

(assert (=> b!420606 m!410311))

(declare-fun m!410313 () Bool)

(assert (=> b!420604 m!410313))

(declare-fun m!410315 () Bool)

(assert (=> b!420613 m!410315))

(declare-fun m!410317 () Bool)

(assert (=> b!420605 m!410317))

(declare-fun m!410319 () Bool)

(assert (=> bm!29360 m!410319))

(declare-fun m!410321 () Bool)

(assert (=> b!420615 m!410321))

(declare-fun m!410323 () Bool)

(assert (=> b!420615 m!410323))

(declare-fun m!410325 () Bool)

(assert (=> bm!29359 m!410325))

(declare-fun m!410327 () Bool)

(assert (=> b!420609 m!410327))

(declare-fun m!410329 () Bool)

(assert (=> b!420614 m!410329))

(declare-fun m!410331 () Bool)

(assert (=> mapNonEmpty!17943 m!410331))

(declare-fun m!410333 () Bool)

(assert (=> b!420612 m!410333))

(assert (=> b!420612 m!410333))

(declare-fun m!410335 () Bool)

(assert (=> b!420612 m!410335))

(declare-fun m!410337 () Bool)

(assert (=> b!420612 m!410337))

(declare-fun m!410339 () Bool)

(assert (=> start!39470 m!410339))

(declare-fun m!410341 () Bool)

(assert (=> start!39470 m!410341))

(declare-fun m!410343 () Bool)

(assert (=> b!420599 m!410343))

(declare-fun m!410345 () Bool)

(assert (=> b!420607 m!410345))

(declare-fun m!410347 () Bool)

(assert (=> b!420607 m!410347))

(declare-fun m!410349 () Bool)

(assert (=> b!420607 m!410349))

(assert (=> b!420607 m!410305))

(declare-fun m!410351 () Bool)

(assert (=> b!420607 m!410351))

(assert (=> b!420607 m!410345))

(declare-fun m!410353 () Bool)

(assert (=> b!420607 m!410353))

(declare-fun m!410355 () Bool)

(assert (=> b!420607 m!410355))

(assert (=> b!420607 m!410351))

(declare-fun m!410357 () Bool)

(assert (=> b!420607 m!410357))

(declare-fun m!410359 () Bool)

(assert (=> b!420607 m!410359))

(declare-fun m!410361 () Bool)

(assert (=> b!420607 m!410361))

(assert (=> b!420607 m!410353))

(declare-fun m!410363 () Bool)

(assert (=> b!420607 m!410363))

(declare-fun m!410365 () Bool)

(assert (=> b!420607 m!410365))

(declare-fun m!410367 () Bool)

(assert (=> b!420607 m!410367))

(check-sat (not mapNonEmpty!17943) (not b!420607) (not b!420612) (not b_next!9729) (not b!420613) (not b!420606) (not bm!29359) (not b!420609) b_and!17353 (not start!39470) (not b!420605) (not bm!29360) (not b!420602) (not b!420614) (not b!420599) tp_is_empty!10881 (not b!420615) (not b!420604) (not b_lambda!9063))
(check-sat b_and!17353 (not b_next!9729))

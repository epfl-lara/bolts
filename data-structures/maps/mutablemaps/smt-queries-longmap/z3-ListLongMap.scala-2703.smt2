; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40046 () Bool)

(assert start!40046)

(declare-fun b_free!10305 () Bool)

(declare-fun b_next!10305 () Bool)

(assert (=> start!40046 (= b_free!10305 (not b_next!10305))))

(declare-fun tp!36443 () Bool)

(declare-fun b_and!18287 () Bool)

(assert (=> start!40046 (= tp!36443 b_and!18287)))

(declare-fun res!257387 () Bool)

(declare-fun e!257726 () Bool)

(assert (=> start!40046 (=> (not res!257387) (not e!257726))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26715 0))(
  ( (array!26716 (arr!12804 (Array (_ BitVec 32) (_ BitVec 64))) (size!13156 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26715)

(assert (=> start!40046 (= res!257387 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13156 _keys!709))))))

(assert (=> start!40046 e!257726))

(declare-fun tp_is_empty!11457 () Bool)

(assert (=> start!40046 tp_is_empty!11457))

(assert (=> start!40046 tp!36443))

(assert (=> start!40046 true))

(declare-datatypes ((V!16381 0))(
  ( (V!16382 (val!5773 Int)) )
))
(declare-datatypes ((ValueCell!5385 0))(
  ( (ValueCellFull!5385 (v!8016 V!16381)) (EmptyCell!5385) )
))
(declare-datatypes ((array!26717 0))(
  ( (array!26718 (arr!12805 (Array (_ BitVec 32) ValueCell!5385)) (size!13157 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26717)

(declare-fun e!257728 () Bool)

(declare-fun array_inv!9300 (array!26717) Bool)

(assert (=> start!40046 (and (array_inv!9300 _values!549) e!257728)))

(declare-fun array_inv!9301 (array!26715) Bool)

(assert (=> start!40046 (array_inv!9301 _keys!709)))

(declare-fun b!436461 () Bool)

(declare-fun res!257390 () Bool)

(assert (=> b!436461 (=> (not res!257390) (not e!257726))))

(declare-datatypes ((List!7624 0))(
  ( (Nil!7621) (Cons!7620 (h!8476 (_ BitVec 64)) (t!13386 List!7624)) )
))
(declare-fun arrayNoDuplicates!0 (array!26715 (_ BitVec 32) List!7624) Bool)

(assert (=> b!436461 (= res!257390 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7621))))

(declare-fun b!436462 () Bool)

(declare-datatypes ((Unit!12941 0))(
  ( (Unit!12942) )
))
(declare-fun e!257725 () Unit!12941)

(declare-fun Unit!12943 () Unit!12941)

(assert (=> b!436462 (= e!257725 Unit!12943)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!201334 () Unit!12941)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26715 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12941)

(assert (=> b!436462 (= lt!201334 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!436462 false))

(declare-fun b!436463 () Bool)

(declare-fun e!257733 () Bool)

(declare-fun mapRes!18807 () Bool)

(assert (=> b!436463 (= e!257728 (and e!257733 mapRes!18807))))

(declare-fun condMapEmpty!18807 () Bool)

(declare-fun mapDefault!18807 () ValueCell!5385)

(assert (=> b!436463 (= condMapEmpty!18807 (= (arr!12805 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5385)) mapDefault!18807)))))

(declare-fun b!436464 () Bool)

(declare-fun res!257386 () Bool)

(assert (=> b!436464 (=> (not res!257386) (not e!257726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436464 (= res!257386 (validKeyInArray!0 k0!794))))

(declare-fun b!436465 () Bool)

(declare-fun res!257393 () Bool)

(assert (=> b!436465 (=> (not res!257393) (not e!257726))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!436465 (= res!257393 (and (= (size!13157 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13156 _keys!709) (size!13157 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436466 () Bool)

(assert (=> b!436466 (= e!257733 tp_is_empty!11457)))

(declare-fun b!436467 () Bool)

(declare-fun Unit!12944 () Unit!12941)

(assert (=> b!436467 (= e!257725 Unit!12944)))

(declare-fun b!436468 () Bool)

(declare-fun res!257392 () Bool)

(declare-fun e!257727 () Bool)

(assert (=> b!436468 (=> (not res!257392) (not e!257727))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436468 (= res!257392 (bvsle from!863 i!563))))

(declare-fun b!436469 () Bool)

(declare-fun res!257395 () Bool)

(assert (=> b!436469 (=> (not res!257395) (not e!257726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436469 (= res!257395 (validMask!0 mask!1025))))

(declare-fun b!436470 () Bool)

(assert (=> b!436470 (= e!257726 e!257727)))

(declare-fun res!257394 () Bool)

(assert (=> b!436470 (=> (not res!257394) (not e!257727))))

(declare-fun lt!201339 () array!26715)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26715 (_ BitVec 32)) Bool)

(assert (=> b!436470 (= res!257394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201339 mask!1025))))

(assert (=> b!436470 (= lt!201339 (array!26716 (store (arr!12804 _keys!709) i!563 k0!794) (size!13156 _keys!709)))))

(declare-fun b!436471 () Bool)

(declare-fun e!257734 () Bool)

(assert (=> b!436471 (= e!257734 tp_is_empty!11457)))

(declare-fun mapNonEmpty!18807 () Bool)

(declare-fun tp!36444 () Bool)

(assert (=> mapNonEmpty!18807 (= mapRes!18807 (and tp!36444 e!257734))))

(declare-fun mapValue!18807 () ValueCell!5385)

(declare-fun mapKey!18807 () (_ BitVec 32))

(declare-fun mapRest!18807 () (Array (_ BitVec 32) ValueCell!5385))

(assert (=> mapNonEmpty!18807 (= (arr!12805 _values!549) (store mapRest!18807 mapKey!18807 mapValue!18807))))

(declare-fun b!436472 () Bool)

(declare-fun res!257389 () Bool)

(assert (=> b!436472 (=> (not res!257389) (not e!257726))))

(declare-fun arrayContainsKey!0 (array!26715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436472 (= res!257389 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!436473 () Bool)

(declare-fun res!257396 () Bool)

(assert (=> b!436473 (=> (not res!257396) (not e!257726))))

(assert (=> b!436473 (= res!257396 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13156 _keys!709))))))

(declare-fun b!436474 () Bool)

(declare-fun e!257729 () Bool)

(assert (=> b!436474 (= e!257729 true)))

(declare-datatypes ((tuple2!7582 0))(
  ( (tuple2!7583 (_1!3801 (_ BitVec 64)) (_2!3801 V!16381)) )
))
(declare-datatypes ((List!7625 0))(
  ( (Nil!7622) (Cons!7621 (h!8477 tuple2!7582) (t!13387 List!7625)) )
))
(declare-datatypes ((ListLongMap!6509 0))(
  ( (ListLongMap!6510 (toList!3270 List!7625)) )
))
(declare-fun lt!201328 () ListLongMap!6509)

(declare-fun lt!201337 () tuple2!7582)

(declare-fun lt!201332 () ListLongMap!6509)

(declare-fun lt!201338 () tuple2!7582)

(declare-fun +!1414 (ListLongMap!6509 tuple2!7582) ListLongMap!6509)

(assert (=> b!436474 (= lt!201328 (+!1414 (+!1414 lt!201332 lt!201337) lt!201338))))

(declare-fun lt!201342 () V!16381)

(declare-fun lt!201335 () Unit!12941)

(declare-fun v!412 () V!16381)

(declare-fun addCommutativeForDiffKeys!416 (ListLongMap!6509 (_ BitVec 64) V!16381 (_ BitVec 64) V!16381) Unit!12941)

(assert (=> b!436474 (= lt!201335 (addCommutativeForDiffKeys!416 lt!201332 k0!794 v!412 (select (arr!12804 _keys!709) from!863) lt!201342))))

(declare-fun b!436475 () Bool)

(declare-fun e!257730 () Bool)

(declare-fun e!257731 () Bool)

(assert (=> b!436475 (= e!257730 (not e!257731))))

(declare-fun res!257399 () Bool)

(assert (=> b!436475 (=> res!257399 e!257731)))

(assert (=> b!436475 (= res!257399 (not (validKeyInArray!0 (select (arr!12804 _keys!709) from!863))))))

(declare-fun lt!201336 () ListLongMap!6509)

(declare-fun lt!201340 () ListLongMap!6509)

(assert (=> b!436475 (= lt!201336 lt!201340)))

(assert (=> b!436475 (= lt!201340 (+!1414 lt!201332 lt!201338))))

(declare-fun minValue!515 () V!16381)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16381)

(declare-fun lt!201333 () array!26717)

(declare-fun getCurrentListMapNoExtraKeys!1452 (array!26715 array!26717 (_ BitVec 32) (_ BitVec 32) V!16381 V!16381 (_ BitVec 32) Int) ListLongMap!6509)

(assert (=> b!436475 (= lt!201336 (getCurrentListMapNoExtraKeys!1452 lt!201339 lt!201333 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!436475 (= lt!201338 (tuple2!7583 k0!794 v!412))))

(assert (=> b!436475 (= lt!201332 (getCurrentListMapNoExtraKeys!1452 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!201330 () Unit!12941)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!592 (array!26715 array!26717 (_ BitVec 32) (_ BitVec 32) V!16381 V!16381 (_ BitVec 32) (_ BitVec 64) V!16381 (_ BitVec 32) Int) Unit!12941)

(assert (=> b!436475 (= lt!201330 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!592 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!436476 () Bool)

(declare-fun res!257388 () Bool)

(assert (=> b!436476 (=> (not res!257388) (not e!257726))))

(assert (=> b!436476 (= res!257388 (or (= (select (arr!12804 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12804 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18807 () Bool)

(assert (=> mapIsEmpty!18807 mapRes!18807))

(declare-fun b!436477 () Bool)

(declare-fun res!257400 () Bool)

(assert (=> b!436477 (=> (not res!257400) (not e!257727))))

(assert (=> b!436477 (= res!257400 (arrayNoDuplicates!0 lt!201339 #b00000000000000000000000000000000 Nil!7621))))

(declare-fun b!436478 () Bool)

(declare-fun res!257391 () Bool)

(assert (=> b!436478 (=> (not res!257391) (not e!257726))))

(assert (=> b!436478 (= res!257391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436479 () Bool)

(assert (=> b!436479 (= e!257727 e!257730)))

(declare-fun res!257397 () Bool)

(assert (=> b!436479 (=> (not res!257397) (not e!257730))))

(assert (=> b!436479 (= res!257397 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201341 () ListLongMap!6509)

(assert (=> b!436479 (= lt!201341 (getCurrentListMapNoExtraKeys!1452 lt!201339 lt!201333 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!436479 (= lt!201333 (array!26718 (store (arr!12805 _values!549) i!563 (ValueCellFull!5385 v!412)) (size!13157 _values!549)))))

(declare-fun lt!201331 () ListLongMap!6509)

(assert (=> b!436479 (= lt!201331 (getCurrentListMapNoExtraKeys!1452 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436480 () Bool)

(assert (=> b!436480 (= e!257731 e!257729)))

(declare-fun res!257398 () Bool)

(assert (=> b!436480 (=> res!257398 e!257729)))

(assert (=> b!436480 (= res!257398 (= k0!794 (select (arr!12804 _keys!709) from!863)))))

(assert (=> b!436480 (not (= (select (arr!12804 _keys!709) from!863) k0!794))))

(declare-fun lt!201329 () Unit!12941)

(assert (=> b!436480 (= lt!201329 e!257725)))

(declare-fun c!55718 () Bool)

(assert (=> b!436480 (= c!55718 (= (select (arr!12804 _keys!709) from!863) k0!794))))

(assert (=> b!436480 (= lt!201341 lt!201328)))

(assert (=> b!436480 (= lt!201328 (+!1414 lt!201340 lt!201337))))

(assert (=> b!436480 (= lt!201337 (tuple2!7583 (select (arr!12804 _keys!709) from!863) lt!201342))))

(declare-fun get!6394 (ValueCell!5385 V!16381) V!16381)

(declare-fun dynLambda!839 (Int (_ BitVec 64)) V!16381)

(assert (=> b!436480 (= lt!201342 (get!6394 (select (arr!12805 _values!549) from!863) (dynLambda!839 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!40046 res!257387) b!436469))

(assert (= (and b!436469 res!257395) b!436465))

(assert (= (and b!436465 res!257393) b!436478))

(assert (= (and b!436478 res!257391) b!436461))

(assert (= (and b!436461 res!257390) b!436473))

(assert (= (and b!436473 res!257396) b!436464))

(assert (= (and b!436464 res!257386) b!436476))

(assert (= (and b!436476 res!257388) b!436472))

(assert (= (and b!436472 res!257389) b!436470))

(assert (= (and b!436470 res!257394) b!436477))

(assert (= (and b!436477 res!257400) b!436468))

(assert (= (and b!436468 res!257392) b!436479))

(assert (= (and b!436479 res!257397) b!436475))

(assert (= (and b!436475 (not res!257399)) b!436480))

(assert (= (and b!436480 c!55718) b!436462))

(assert (= (and b!436480 (not c!55718)) b!436467))

(assert (= (and b!436480 (not res!257398)) b!436474))

(assert (= (and b!436463 condMapEmpty!18807) mapIsEmpty!18807))

(assert (= (and b!436463 (not condMapEmpty!18807)) mapNonEmpty!18807))

(get-info :version)

(assert (= (and mapNonEmpty!18807 ((_ is ValueCellFull!5385) mapValue!18807)) b!436471))

(assert (= (and b!436463 ((_ is ValueCellFull!5385) mapDefault!18807)) b!436466))

(assert (= start!40046 b!436463))

(declare-fun b_lambda!9423 () Bool)

(assert (=> (not b_lambda!9423) (not b!436480)))

(declare-fun t!13385 () Bool)

(declare-fun tb!3719 () Bool)

(assert (=> (and start!40046 (= defaultEntry!557 defaultEntry!557) t!13385) tb!3719))

(declare-fun result!6957 () Bool)

(assert (=> tb!3719 (= result!6957 tp_is_empty!11457)))

(assert (=> b!436480 t!13385))

(declare-fun b_and!18289 () Bool)

(assert (= b_and!18287 (and (=> t!13385 result!6957) b_and!18289)))

(declare-fun m!424307 () Bool)

(assert (=> mapNonEmpty!18807 m!424307))

(declare-fun m!424309 () Bool)

(assert (=> b!436469 m!424309))

(declare-fun m!424311 () Bool)

(assert (=> b!436479 m!424311))

(declare-fun m!424313 () Bool)

(assert (=> b!436479 m!424313))

(declare-fun m!424315 () Bool)

(assert (=> b!436479 m!424315))

(declare-fun m!424317 () Bool)

(assert (=> b!436470 m!424317))

(declare-fun m!424319 () Bool)

(assert (=> b!436470 m!424319))

(declare-fun m!424321 () Bool)

(assert (=> b!436475 m!424321))

(declare-fun m!424323 () Bool)

(assert (=> b!436475 m!424323))

(declare-fun m!424325 () Bool)

(assert (=> b!436475 m!424325))

(declare-fun m!424327 () Bool)

(assert (=> b!436475 m!424327))

(assert (=> b!436475 m!424321))

(declare-fun m!424329 () Bool)

(assert (=> b!436475 m!424329))

(declare-fun m!424331 () Bool)

(assert (=> b!436475 m!424331))

(declare-fun m!424333 () Bool)

(assert (=> b!436477 m!424333))

(declare-fun m!424335 () Bool)

(assert (=> b!436461 m!424335))

(declare-fun m!424337 () Bool)

(assert (=> b!436464 m!424337))

(declare-fun m!424339 () Bool)

(assert (=> b!436478 m!424339))

(declare-fun m!424341 () Bool)

(assert (=> b!436476 m!424341))

(declare-fun m!424343 () Bool)

(assert (=> b!436462 m!424343))

(declare-fun m!424345 () Bool)

(assert (=> b!436472 m!424345))

(declare-fun m!424347 () Bool)

(assert (=> start!40046 m!424347))

(declare-fun m!424349 () Bool)

(assert (=> start!40046 m!424349))

(assert (=> b!436480 m!424321))

(declare-fun m!424351 () Bool)

(assert (=> b!436480 m!424351))

(declare-fun m!424353 () Bool)

(assert (=> b!436480 m!424353))

(declare-fun m!424355 () Bool)

(assert (=> b!436480 m!424355))

(assert (=> b!436480 m!424353))

(assert (=> b!436480 m!424351))

(declare-fun m!424357 () Bool)

(assert (=> b!436480 m!424357))

(declare-fun m!424359 () Bool)

(assert (=> b!436474 m!424359))

(assert (=> b!436474 m!424359))

(declare-fun m!424361 () Bool)

(assert (=> b!436474 m!424361))

(assert (=> b!436474 m!424321))

(assert (=> b!436474 m!424321))

(declare-fun m!424363 () Bool)

(assert (=> b!436474 m!424363))

(check-sat (not b!436474) (not b_next!10305) (not b!436469) (not b!436464) (not b!436480) (not b_lambda!9423) (not b!436462) (not b!436470) (not start!40046) (not b!436478) (not b!436479) b_and!18289 tp_is_empty!11457 (not b!436477) (not mapNonEmpty!18807) (not b!436475) (not b!436461) (not b!436472))
(check-sat b_and!18289 (not b_next!10305))

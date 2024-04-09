; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39914 () Bool)

(assert start!39914)

(declare-fun b_free!10173 () Bool)

(declare-fun b_next!10173 () Bool)

(assert (=> start!39914 (= b_free!10173 (not b_next!10173))))

(declare-fun tp!36047 () Bool)

(declare-fun b_and!18023 () Bool)

(assert (=> start!39914 (= tp!36047 b_and!18023)))

(declare-fun b!432369 () Bool)

(declare-fun e!255753 () Bool)

(declare-fun tp_is_empty!11325 () Bool)

(assert (=> b!432369 (= e!255753 tp_is_empty!11325)))

(declare-fun b!432370 () Bool)

(declare-fun e!255750 () Bool)

(assert (=> b!432370 (= e!255750 tp_is_empty!11325)))

(declare-fun b!432371 () Bool)

(declare-fun res!254422 () Bool)

(declare-fun e!255746 () Bool)

(assert (=> b!432371 (=> (not res!254422) (not e!255746))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432371 (= res!254422 (validMask!0 mask!1025))))

(declare-fun b!432372 () Bool)

(declare-datatypes ((Unit!12736 0))(
  ( (Unit!12737) )
))
(declare-fun e!255749 () Unit!12736)

(declare-fun Unit!12738 () Unit!12736)

(assert (=> b!432372 (= e!255749 Unit!12738)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!198362 () Unit!12736)

(declare-datatypes ((array!26461 0))(
  ( (array!26462 (arr!12677 (Array (_ BitVec 32) (_ BitVec 64))) (size!13029 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26461)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26461 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12736)

(assert (=> b!432372 (= lt!198362 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432372 false))

(declare-fun b!432373 () Bool)

(declare-fun res!254424 () Bool)

(assert (=> b!432373 (=> (not res!254424) (not e!255746))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432373 (= res!254424 (or (= (select (arr!12677 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12677 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432374 () Bool)

(declare-fun Unit!12739 () Unit!12736)

(assert (=> b!432374 (= e!255749 Unit!12739)))

(declare-fun res!254416 () Bool)

(assert (=> start!39914 (=> (not res!254416) (not e!255746))))

(assert (=> start!39914 (= res!254416 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13029 _keys!709))))))

(assert (=> start!39914 e!255746))

(assert (=> start!39914 tp_is_empty!11325))

(assert (=> start!39914 tp!36047))

(assert (=> start!39914 true))

(declare-datatypes ((V!16205 0))(
  ( (V!16206 (val!5707 Int)) )
))
(declare-datatypes ((ValueCell!5319 0))(
  ( (ValueCellFull!5319 (v!7950 V!16205)) (EmptyCell!5319) )
))
(declare-datatypes ((array!26463 0))(
  ( (array!26464 (arr!12678 (Array (_ BitVec 32) ValueCell!5319)) (size!13030 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26463)

(declare-fun e!255747 () Bool)

(declare-fun array_inv!9218 (array!26463) Bool)

(assert (=> start!39914 (and (array_inv!9218 _values!549) e!255747)))

(declare-fun array_inv!9219 (array!26461) Bool)

(assert (=> start!39914 (array_inv!9219 _keys!709)))

(declare-fun b!432375 () Bool)

(declare-fun res!254428 () Bool)

(declare-fun e!255752 () Bool)

(assert (=> b!432375 (=> (not res!254428) (not e!255752))))

(declare-fun lt!198370 () array!26461)

(declare-datatypes ((List!7520 0))(
  ( (Nil!7517) (Cons!7516 (h!8372 (_ BitVec 64)) (t!13150 List!7520)) )
))
(declare-fun arrayNoDuplicates!0 (array!26461 (_ BitVec 32) List!7520) Bool)

(assert (=> b!432375 (= res!254428 (arrayNoDuplicates!0 lt!198370 #b00000000000000000000000000000000 Nil!7517))))

(declare-fun b!432376 () Bool)

(declare-fun res!254420 () Bool)

(assert (=> b!432376 (=> (not res!254420) (not e!255746))))

(assert (=> b!432376 (= res!254420 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7517))))

(declare-fun b!432377 () Bool)

(declare-fun e!255748 () Bool)

(assert (=> b!432377 (= e!255748 true)))

(declare-datatypes ((tuple2!7468 0))(
  ( (tuple2!7469 (_1!3744 (_ BitVec 64)) (_2!3744 V!16205)) )
))
(declare-datatypes ((List!7521 0))(
  ( (Nil!7518) (Cons!7517 (h!8373 tuple2!7468) (t!13151 List!7521)) )
))
(declare-datatypes ((ListLongMap!6395 0))(
  ( (ListLongMap!6396 (toList!3213 List!7521)) )
))
(declare-fun lt!198367 () ListLongMap!6395)

(declare-fun lt!198363 () ListLongMap!6395)

(declare-fun lt!198359 () tuple2!7468)

(declare-fun lt!198371 () tuple2!7468)

(declare-fun +!1359 (ListLongMap!6395 tuple2!7468) ListLongMap!6395)

(assert (=> b!432377 (= lt!198367 (+!1359 (+!1359 lt!198363 lt!198359) lt!198371))))

(declare-fun lt!198360 () Unit!12736)

(declare-fun v!412 () V!16205)

(declare-fun lt!198365 () V!16205)

(declare-fun addCommutativeForDiffKeys!371 (ListLongMap!6395 (_ BitVec 64) V!16205 (_ BitVec 64) V!16205) Unit!12736)

(assert (=> b!432377 (= lt!198360 (addCommutativeForDiffKeys!371 lt!198363 k0!794 v!412 (select (arr!12677 _keys!709) from!863) lt!198365))))

(declare-fun b!432378 () Bool)

(declare-fun e!255751 () Bool)

(declare-fun e!255745 () Bool)

(assert (=> b!432378 (= e!255751 (not e!255745))))

(declare-fun res!254417 () Bool)

(assert (=> b!432378 (=> res!254417 e!255745)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432378 (= res!254417 (not (validKeyInArray!0 (select (arr!12677 _keys!709) from!863))))))

(declare-fun lt!198358 () ListLongMap!6395)

(declare-fun lt!198364 () ListLongMap!6395)

(assert (=> b!432378 (= lt!198358 lt!198364)))

(assert (=> b!432378 (= lt!198364 (+!1359 lt!198363 lt!198371))))

(declare-fun minValue!515 () V!16205)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16205)

(declare-fun lt!198366 () array!26463)

(declare-fun getCurrentListMapNoExtraKeys!1405 (array!26461 array!26463 (_ BitVec 32) (_ BitVec 32) V!16205 V!16205 (_ BitVec 32) Int) ListLongMap!6395)

(assert (=> b!432378 (= lt!198358 (getCurrentListMapNoExtraKeys!1405 lt!198370 lt!198366 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!432378 (= lt!198371 (tuple2!7469 k0!794 v!412))))

(assert (=> b!432378 (= lt!198363 (getCurrentListMapNoExtraKeys!1405 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198369 () Unit!12736)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!549 (array!26461 array!26463 (_ BitVec 32) (_ BitVec 32) V!16205 V!16205 (_ BitVec 32) (_ BitVec 64) V!16205 (_ BitVec 32) Int) Unit!12736)

(assert (=> b!432378 (= lt!198369 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!549 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432379 () Bool)

(declare-fun res!254423 () Bool)

(assert (=> b!432379 (=> (not res!254423) (not e!255752))))

(assert (=> b!432379 (= res!254423 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18609 () Bool)

(declare-fun mapRes!18609 () Bool)

(assert (=> mapIsEmpty!18609 mapRes!18609))

(declare-fun b!432380 () Bool)

(declare-fun res!254430 () Bool)

(assert (=> b!432380 (=> (not res!254430) (not e!255746))))

(assert (=> b!432380 (= res!254430 (validKeyInArray!0 k0!794))))

(declare-fun b!432381 () Bool)

(assert (=> b!432381 (= e!255752 e!255751)))

(declare-fun res!254418 () Bool)

(assert (=> b!432381 (=> (not res!254418) (not e!255751))))

(assert (=> b!432381 (= res!254418 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!198361 () ListLongMap!6395)

(assert (=> b!432381 (= lt!198361 (getCurrentListMapNoExtraKeys!1405 lt!198370 lt!198366 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!432381 (= lt!198366 (array!26464 (store (arr!12678 _values!549) i!563 (ValueCellFull!5319 v!412)) (size!13030 _values!549)))))

(declare-fun lt!198372 () ListLongMap!6395)

(assert (=> b!432381 (= lt!198372 (getCurrentListMapNoExtraKeys!1405 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!432382 () Bool)

(declare-fun res!254427 () Bool)

(assert (=> b!432382 (=> (not res!254427) (not e!255746))))

(declare-fun arrayContainsKey!0 (array!26461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432382 (= res!254427 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!432383 () Bool)

(declare-fun res!254419 () Bool)

(assert (=> b!432383 (=> (not res!254419) (not e!255746))))

(assert (=> b!432383 (= res!254419 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13029 _keys!709))))))

(declare-fun b!432384 () Bool)

(declare-fun res!254429 () Bool)

(assert (=> b!432384 (=> (not res!254429) (not e!255746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26461 (_ BitVec 32)) Bool)

(assert (=> b!432384 (= res!254429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!432385 () Bool)

(assert (=> b!432385 (= e!255747 (and e!255750 mapRes!18609))))

(declare-fun condMapEmpty!18609 () Bool)

(declare-fun mapDefault!18609 () ValueCell!5319)

(assert (=> b!432385 (= condMapEmpty!18609 (= (arr!12678 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5319)) mapDefault!18609)))))

(declare-fun mapNonEmpty!18609 () Bool)

(declare-fun tp!36048 () Bool)

(assert (=> mapNonEmpty!18609 (= mapRes!18609 (and tp!36048 e!255753))))

(declare-fun mapValue!18609 () ValueCell!5319)

(declare-fun mapKey!18609 () (_ BitVec 32))

(declare-fun mapRest!18609 () (Array (_ BitVec 32) ValueCell!5319))

(assert (=> mapNonEmpty!18609 (= (arr!12678 _values!549) (store mapRest!18609 mapKey!18609 mapValue!18609))))

(declare-fun b!432386 () Bool)

(declare-fun res!254425 () Bool)

(assert (=> b!432386 (=> (not res!254425) (not e!255746))))

(assert (=> b!432386 (= res!254425 (and (= (size!13030 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13029 _keys!709) (size!13030 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432387 () Bool)

(assert (=> b!432387 (= e!255745 e!255748)))

(declare-fun res!254426 () Bool)

(assert (=> b!432387 (=> res!254426 e!255748)))

(assert (=> b!432387 (= res!254426 (= k0!794 (select (arr!12677 _keys!709) from!863)))))

(assert (=> b!432387 (not (= (select (arr!12677 _keys!709) from!863) k0!794))))

(declare-fun lt!198368 () Unit!12736)

(assert (=> b!432387 (= lt!198368 e!255749)))

(declare-fun c!55520 () Bool)

(assert (=> b!432387 (= c!55520 (= (select (arr!12677 _keys!709) from!863) k0!794))))

(assert (=> b!432387 (= lt!198361 lt!198367)))

(assert (=> b!432387 (= lt!198367 (+!1359 lt!198364 lt!198359))))

(assert (=> b!432387 (= lt!198359 (tuple2!7469 (select (arr!12677 _keys!709) from!863) lt!198365))))

(declare-fun get!6308 (ValueCell!5319 V!16205) V!16205)

(declare-fun dynLambda!797 (Int (_ BitVec 64)) V!16205)

(assert (=> b!432387 (= lt!198365 (get!6308 (select (arr!12678 _values!549) from!863) (dynLambda!797 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432388 () Bool)

(assert (=> b!432388 (= e!255746 e!255752)))

(declare-fun res!254421 () Bool)

(assert (=> b!432388 (=> (not res!254421) (not e!255752))))

(assert (=> b!432388 (= res!254421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198370 mask!1025))))

(assert (=> b!432388 (= lt!198370 (array!26462 (store (arr!12677 _keys!709) i!563 k0!794) (size!13029 _keys!709)))))

(assert (= (and start!39914 res!254416) b!432371))

(assert (= (and b!432371 res!254422) b!432386))

(assert (= (and b!432386 res!254425) b!432384))

(assert (= (and b!432384 res!254429) b!432376))

(assert (= (and b!432376 res!254420) b!432383))

(assert (= (and b!432383 res!254419) b!432380))

(assert (= (and b!432380 res!254430) b!432373))

(assert (= (and b!432373 res!254424) b!432382))

(assert (= (and b!432382 res!254427) b!432388))

(assert (= (and b!432388 res!254421) b!432375))

(assert (= (and b!432375 res!254428) b!432379))

(assert (= (and b!432379 res!254423) b!432381))

(assert (= (and b!432381 res!254418) b!432378))

(assert (= (and b!432378 (not res!254417)) b!432387))

(assert (= (and b!432387 c!55520) b!432372))

(assert (= (and b!432387 (not c!55520)) b!432374))

(assert (= (and b!432387 (not res!254426)) b!432377))

(assert (= (and b!432385 condMapEmpty!18609) mapIsEmpty!18609))

(assert (= (and b!432385 (not condMapEmpty!18609)) mapNonEmpty!18609))

(get-info :version)

(assert (= (and mapNonEmpty!18609 ((_ is ValueCellFull!5319) mapValue!18609)) b!432369))

(assert (= (and b!432385 ((_ is ValueCellFull!5319) mapDefault!18609)) b!432370))

(assert (= start!39914 b!432385))

(declare-fun b_lambda!9291 () Bool)

(assert (=> (not b_lambda!9291) (not b!432387)))

(declare-fun t!13149 () Bool)

(declare-fun tb!3587 () Bool)

(assert (=> (and start!39914 (= defaultEntry!557 defaultEntry!557) t!13149) tb!3587))

(declare-fun result!6693 () Bool)

(assert (=> tb!3587 (= result!6693 tp_is_empty!11325)))

(assert (=> b!432387 t!13149))

(declare-fun b_and!18025 () Bool)

(assert (= b_and!18023 (and (=> t!13149 result!6693) b_and!18025)))

(declare-fun m!420479 () Bool)

(assert (=> b!432376 m!420479))

(declare-fun m!420481 () Bool)

(assert (=> b!432384 m!420481))

(declare-fun m!420483 () Bool)

(assert (=> mapNonEmpty!18609 m!420483))

(declare-fun m!420485 () Bool)

(assert (=> b!432387 m!420485))

(declare-fun m!420487 () Bool)

(assert (=> b!432387 m!420487))

(declare-fun m!420489 () Bool)

(assert (=> b!432387 m!420489))

(assert (=> b!432387 m!420489))

(assert (=> b!432387 m!420487))

(declare-fun m!420491 () Bool)

(assert (=> b!432387 m!420491))

(declare-fun m!420493 () Bool)

(assert (=> b!432387 m!420493))

(declare-fun m!420495 () Bool)

(assert (=> b!432382 m!420495))

(declare-fun m!420497 () Bool)

(assert (=> b!432388 m!420497))

(declare-fun m!420499 () Bool)

(assert (=> b!432388 m!420499))

(declare-fun m!420501 () Bool)

(assert (=> b!432373 m!420501))

(declare-fun m!420503 () Bool)

(assert (=> start!39914 m!420503))

(declare-fun m!420505 () Bool)

(assert (=> start!39914 m!420505))

(assert (=> b!432378 m!420485))

(declare-fun m!420507 () Bool)

(assert (=> b!432378 m!420507))

(assert (=> b!432378 m!420485))

(declare-fun m!420509 () Bool)

(assert (=> b!432378 m!420509))

(declare-fun m!420511 () Bool)

(assert (=> b!432378 m!420511))

(declare-fun m!420513 () Bool)

(assert (=> b!432378 m!420513))

(declare-fun m!420515 () Bool)

(assert (=> b!432378 m!420515))

(declare-fun m!420517 () Bool)

(assert (=> b!432372 m!420517))

(declare-fun m!420519 () Bool)

(assert (=> b!432381 m!420519))

(declare-fun m!420521 () Bool)

(assert (=> b!432381 m!420521))

(declare-fun m!420523 () Bool)

(assert (=> b!432381 m!420523))

(declare-fun m!420525 () Bool)

(assert (=> b!432371 m!420525))

(declare-fun m!420527 () Bool)

(assert (=> b!432380 m!420527))

(declare-fun m!420529 () Bool)

(assert (=> b!432377 m!420529))

(assert (=> b!432377 m!420529))

(declare-fun m!420531 () Bool)

(assert (=> b!432377 m!420531))

(assert (=> b!432377 m!420485))

(assert (=> b!432377 m!420485))

(declare-fun m!420533 () Bool)

(assert (=> b!432377 m!420533))

(declare-fun m!420535 () Bool)

(assert (=> b!432375 m!420535))

(check-sat (not b!432384) (not b!432380) (not b!432387) (not b!432371) b_and!18025 (not b!432381) (not b!432375) (not b_next!10173) (not b!432378) (not b!432382) (not b!432377) (not b!432376) (not b!432372) (not mapNonEmpty!18609) (not b!432388) (not start!39914) (not b_lambda!9291) tp_is_empty!11325)
(check-sat b_and!18025 (not b_next!10173))

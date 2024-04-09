; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40016 () Bool)

(assert start!40016)

(declare-fun b_free!10275 () Bool)

(declare-fun b_next!10275 () Bool)

(assert (=> start!40016 (= b_free!10275 (not b_next!10275))))

(declare-fun tp!36353 () Bool)

(declare-fun b_and!18227 () Bool)

(assert (=> start!40016 (= tp!36353 b_and!18227)))

(declare-fun b!435531 () Bool)

(declare-fun e!257281 () Bool)

(declare-fun e!257282 () Bool)

(assert (=> b!435531 (= e!257281 e!257282)))

(declare-fun res!256718 () Bool)

(assert (=> b!435531 (=> res!256718 e!257282)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((array!26657 0))(
  ( (array!26658 (arr!12775 (Array (_ BitVec 32) (_ BitVec 64))) (size!13127 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26657)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!435531 (= res!256718 (= k0!794 (select (arr!12775 _keys!709) from!863)))))

(assert (=> b!435531 (not (= (select (arr!12775 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12894 0))(
  ( (Unit!12895) )
))
(declare-fun lt!200661 () Unit!12894)

(declare-fun e!257283 () Unit!12894)

(assert (=> b!435531 (= lt!200661 e!257283)))

(declare-fun c!55673 () Bool)

(assert (=> b!435531 (= c!55673 (= (select (arr!12775 _keys!709) from!863) k0!794))))

(declare-datatypes ((V!16341 0))(
  ( (V!16342 (val!5758 Int)) )
))
(declare-datatypes ((tuple2!7558 0))(
  ( (tuple2!7559 (_1!3789 (_ BitVec 64)) (_2!3789 V!16341)) )
))
(declare-datatypes ((List!7603 0))(
  ( (Nil!7600) (Cons!7599 (h!8455 tuple2!7558) (t!13335 List!7603)) )
))
(declare-datatypes ((ListLongMap!6485 0))(
  ( (ListLongMap!6486 (toList!3258 List!7603)) )
))
(declare-fun lt!200659 () ListLongMap!6485)

(declare-fun lt!200662 () ListLongMap!6485)

(assert (=> b!435531 (= lt!200659 lt!200662)))

(declare-fun lt!200660 () ListLongMap!6485)

(declare-fun lt!200654 () tuple2!7558)

(declare-fun +!1402 (ListLongMap!6485 tuple2!7558) ListLongMap!6485)

(assert (=> b!435531 (= lt!200662 (+!1402 lt!200660 lt!200654))))

(declare-fun lt!200657 () V!16341)

(assert (=> b!435531 (= lt!200654 (tuple2!7559 (select (arr!12775 _keys!709) from!863) lt!200657))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5370 0))(
  ( (ValueCellFull!5370 (v!8001 V!16341)) (EmptyCell!5370) )
))
(declare-datatypes ((array!26659 0))(
  ( (array!26660 (arr!12776 (Array (_ BitVec 32) ValueCell!5370)) (size!13128 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26659)

(declare-fun get!6375 (ValueCell!5370 V!16341) V!16341)

(declare-fun dynLambda!830 (Int (_ BitVec 64)) V!16341)

(assert (=> b!435531 (= lt!200657 (get!6375 (select (arr!12776 _values!549) from!863) (dynLambda!830 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435532 () Bool)

(declare-fun res!256712 () Bool)

(declare-fun e!257280 () Bool)

(assert (=> b!435532 (=> (not res!256712) (not e!257280))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435532 (= res!256712 (bvsle from!863 i!563))))

(declare-fun b!435533 () Bool)

(declare-fun res!256724 () Bool)

(declare-fun e!257278 () Bool)

(assert (=> b!435533 (=> (not res!256724) (not e!257278))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!435533 (= res!256724 (and (= (size!13128 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13127 _keys!709) (size!13128 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!435534 () Bool)

(declare-fun e!257284 () Bool)

(declare-fun tp_is_empty!11427 () Bool)

(assert (=> b!435534 (= e!257284 tp_is_empty!11427)))

(declare-fun b!435535 () Bool)

(declare-fun e!257276 () Bool)

(assert (=> b!435535 (= e!257276 tp_is_empty!11427)))

(declare-fun b!435536 () Bool)

(declare-fun res!256721 () Bool)

(assert (=> b!435536 (=> (not res!256721) (not e!257278))))

(declare-datatypes ((List!7604 0))(
  ( (Nil!7601) (Cons!7600 (h!8456 (_ BitVec 64)) (t!13336 List!7604)) )
))
(declare-fun arrayNoDuplicates!0 (array!26657 (_ BitVec 32) List!7604) Bool)

(assert (=> b!435536 (= res!256721 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7601))))

(declare-fun mapNonEmpty!18762 () Bool)

(declare-fun mapRes!18762 () Bool)

(declare-fun tp!36354 () Bool)

(assert (=> mapNonEmpty!18762 (= mapRes!18762 (and tp!36354 e!257276))))

(declare-fun mapRest!18762 () (Array (_ BitVec 32) ValueCell!5370))

(declare-fun mapKey!18762 () (_ BitVec 32))

(declare-fun mapValue!18762 () ValueCell!5370)

(assert (=> mapNonEmpty!18762 (= (arr!12776 _values!549) (store mapRest!18762 mapKey!18762 mapValue!18762))))

(declare-fun b!435537 () Bool)

(declare-fun Unit!12896 () Unit!12894)

(assert (=> b!435537 (= e!257283 Unit!12896)))

(declare-fun res!256711 () Bool)

(assert (=> start!40016 (=> (not res!256711) (not e!257278))))

(assert (=> start!40016 (= res!256711 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13127 _keys!709))))))

(assert (=> start!40016 e!257278))

(assert (=> start!40016 tp_is_empty!11427))

(assert (=> start!40016 tp!36353))

(assert (=> start!40016 true))

(declare-fun e!257279 () Bool)

(declare-fun array_inv!9280 (array!26659) Bool)

(assert (=> start!40016 (and (array_inv!9280 _values!549) e!257279)))

(declare-fun array_inv!9281 (array!26657) Bool)

(assert (=> start!40016 (array_inv!9281 _keys!709)))

(declare-fun b!435538 () Bool)

(assert (=> b!435538 (= e!257278 e!257280)))

(declare-fun res!256719 () Bool)

(assert (=> b!435538 (=> (not res!256719) (not e!257280))))

(declare-fun lt!200664 () array!26657)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26657 (_ BitVec 32)) Bool)

(assert (=> b!435538 (= res!256719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200664 mask!1025))))

(assert (=> b!435538 (= lt!200664 (array!26658 (store (arr!12775 _keys!709) i!563 k0!794) (size!13127 _keys!709)))))

(declare-fun b!435539 () Bool)

(declare-fun res!256713 () Bool)

(assert (=> b!435539 (=> (not res!256713) (not e!257278))))

(assert (=> b!435539 (= res!256713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!435540 () Bool)

(declare-fun res!256720 () Bool)

(assert (=> b!435540 (=> (not res!256720) (not e!257280))))

(assert (=> b!435540 (= res!256720 (arrayNoDuplicates!0 lt!200664 #b00000000000000000000000000000000 Nil!7601))))

(declare-fun b!435541 () Bool)

(declare-fun res!256723 () Bool)

(assert (=> b!435541 (=> (not res!256723) (not e!257278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435541 (= res!256723 (validMask!0 mask!1025))))

(declare-fun b!435542 () Bool)

(assert (=> b!435542 (= e!257282 true)))

(declare-fun lt!200655 () tuple2!7558)

(declare-fun lt!200658 () ListLongMap!6485)

(assert (=> b!435542 (= lt!200662 (+!1402 (+!1402 lt!200658 lt!200654) lt!200655))))

(declare-fun lt!200666 () Unit!12894)

(declare-fun v!412 () V!16341)

(declare-fun addCommutativeForDiffKeys!407 (ListLongMap!6485 (_ BitVec 64) V!16341 (_ BitVec 64) V!16341) Unit!12894)

(assert (=> b!435542 (= lt!200666 (addCommutativeForDiffKeys!407 lt!200658 k0!794 v!412 (select (arr!12775 _keys!709) from!863) lt!200657))))

(declare-fun b!435543 () Bool)

(assert (=> b!435543 (= e!257279 (and e!257284 mapRes!18762))))

(declare-fun condMapEmpty!18762 () Bool)

(declare-fun mapDefault!18762 () ValueCell!5370)

(assert (=> b!435543 (= condMapEmpty!18762 (= (arr!12776 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5370)) mapDefault!18762)))))

(declare-fun b!435544 () Bool)

(declare-fun res!256722 () Bool)

(assert (=> b!435544 (=> (not res!256722) (not e!257278))))

(assert (=> b!435544 (= res!256722 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13127 _keys!709))))))

(declare-fun b!435545 () Bool)

(declare-fun res!256716 () Bool)

(assert (=> b!435545 (=> (not res!256716) (not e!257278))))

(declare-fun arrayContainsKey!0 (array!26657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!435545 (= res!256716 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!435546 () Bool)

(declare-fun e!257277 () Bool)

(assert (=> b!435546 (= e!257277 (not e!257281))))

(declare-fun res!256715 () Bool)

(assert (=> b!435546 (=> res!256715 e!257281)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435546 (= res!256715 (not (validKeyInArray!0 (select (arr!12775 _keys!709) from!863))))))

(declare-fun lt!200663 () ListLongMap!6485)

(assert (=> b!435546 (= lt!200663 lt!200660)))

(assert (=> b!435546 (= lt!200660 (+!1402 lt!200658 lt!200655))))

(declare-fun minValue!515 () V!16341)

(declare-fun zeroValue!515 () V!16341)

(declare-fun lt!200653 () array!26659)

(declare-fun getCurrentListMapNoExtraKeys!1442 (array!26657 array!26659 (_ BitVec 32) (_ BitVec 32) V!16341 V!16341 (_ BitVec 32) Int) ListLongMap!6485)

(assert (=> b!435546 (= lt!200663 (getCurrentListMapNoExtraKeys!1442 lt!200664 lt!200653 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!435546 (= lt!200655 (tuple2!7559 k0!794 v!412))))

(assert (=> b!435546 (= lt!200658 (getCurrentListMapNoExtraKeys!1442 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!200667 () Unit!12894)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!582 (array!26657 array!26659 (_ BitVec 32) (_ BitVec 32) V!16341 V!16341 (_ BitVec 32) (_ BitVec 64) V!16341 (_ BitVec 32) Int) Unit!12894)

(assert (=> b!435546 (= lt!200667 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!582 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!435547 () Bool)

(declare-fun res!256725 () Bool)

(assert (=> b!435547 (=> (not res!256725) (not e!257278))))

(assert (=> b!435547 (= res!256725 (or (= (select (arr!12775 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12775 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18762 () Bool)

(assert (=> mapIsEmpty!18762 mapRes!18762))

(declare-fun b!435548 () Bool)

(assert (=> b!435548 (= e!257280 e!257277)))

(declare-fun res!256714 () Bool)

(assert (=> b!435548 (=> (not res!256714) (not e!257277))))

(assert (=> b!435548 (= res!256714 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!435548 (= lt!200659 (getCurrentListMapNoExtraKeys!1442 lt!200664 lt!200653 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!435548 (= lt!200653 (array!26660 (store (arr!12776 _values!549) i!563 (ValueCellFull!5370 v!412)) (size!13128 _values!549)))))

(declare-fun lt!200665 () ListLongMap!6485)

(assert (=> b!435548 (= lt!200665 (getCurrentListMapNoExtraKeys!1442 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!435549 () Bool)

(declare-fun res!256717 () Bool)

(assert (=> b!435549 (=> (not res!256717) (not e!257278))))

(assert (=> b!435549 (= res!256717 (validKeyInArray!0 k0!794))))

(declare-fun b!435550 () Bool)

(declare-fun Unit!12897 () Unit!12894)

(assert (=> b!435550 (= e!257283 Unit!12897)))

(declare-fun lt!200656 () Unit!12894)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26657 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12894)

(assert (=> b!435550 (= lt!200656 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!435550 false))

(assert (= (and start!40016 res!256711) b!435541))

(assert (= (and b!435541 res!256723) b!435533))

(assert (= (and b!435533 res!256724) b!435539))

(assert (= (and b!435539 res!256713) b!435536))

(assert (= (and b!435536 res!256721) b!435544))

(assert (= (and b!435544 res!256722) b!435549))

(assert (= (and b!435549 res!256717) b!435547))

(assert (= (and b!435547 res!256725) b!435545))

(assert (= (and b!435545 res!256716) b!435538))

(assert (= (and b!435538 res!256719) b!435540))

(assert (= (and b!435540 res!256720) b!435532))

(assert (= (and b!435532 res!256712) b!435548))

(assert (= (and b!435548 res!256714) b!435546))

(assert (= (and b!435546 (not res!256715)) b!435531))

(assert (= (and b!435531 c!55673) b!435550))

(assert (= (and b!435531 (not c!55673)) b!435537))

(assert (= (and b!435531 (not res!256718)) b!435542))

(assert (= (and b!435543 condMapEmpty!18762) mapIsEmpty!18762))

(assert (= (and b!435543 (not condMapEmpty!18762)) mapNonEmpty!18762))

(get-info :version)

(assert (= (and mapNonEmpty!18762 ((_ is ValueCellFull!5370) mapValue!18762)) b!435535))

(assert (= (and b!435543 ((_ is ValueCellFull!5370) mapDefault!18762)) b!435534))

(assert (= start!40016 b!435543))

(declare-fun b_lambda!9393 () Bool)

(assert (=> (not b_lambda!9393) (not b!435531)))

(declare-fun t!13334 () Bool)

(declare-fun tb!3689 () Bool)

(assert (=> (and start!40016 (= defaultEntry!557 defaultEntry!557) t!13334) tb!3689))

(declare-fun result!6897 () Bool)

(assert (=> tb!3689 (= result!6897 tp_is_empty!11427)))

(assert (=> b!435531 t!13334))

(declare-fun b_and!18229 () Bool)

(assert (= b_and!18227 (and (=> t!13334 result!6897) b_and!18229)))

(declare-fun m!423437 () Bool)

(assert (=> b!435550 m!423437))

(declare-fun m!423439 () Bool)

(assert (=> b!435538 m!423439))

(declare-fun m!423441 () Bool)

(assert (=> b!435538 m!423441))

(declare-fun m!423443 () Bool)

(assert (=> b!435547 m!423443))

(declare-fun m!423445 () Bool)

(assert (=> b!435546 m!423445))

(declare-fun m!423447 () Bool)

(assert (=> b!435546 m!423447))

(declare-fun m!423449 () Bool)

(assert (=> b!435546 m!423449))

(declare-fun m!423451 () Bool)

(assert (=> b!435546 m!423451))

(assert (=> b!435546 m!423445))

(declare-fun m!423453 () Bool)

(assert (=> b!435546 m!423453))

(declare-fun m!423455 () Bool)

(assert (=> b!435546 m!423455))

(declare-fun m!423457 () Bool)

(assert (=> b!435548 m!423457))

(declare-fun m!423459 () Bool)

(assert (=> b!435548 m!423459))

(declare-fun m!423461 () Bool)

(assert (=> b!435548 m!423461))

(declare-fun m!423463 () Bool)

(assert (=> b!435541 m!423463))

(declare-fun m!423465 () Bool)

(assert (=> b!435549 m!423465))

(declare-fun m!423467 () Bool)

(assert (=> b!435536 m!423467))

(declare-fun m!423469 () Bool)

(assert (=> start!40016 m!423469))

(declare-fun m!423471 () Bool)

(assert (=> start!40016 m!423471))

(declare-fun m!423473 () Bool)

(assert (=> b!435542 m!423473))

(assert (=> b!435542 m!423473))

(declare-fun m!423475 () Bool)

(assert (=> b!435542 m!423475))

(assert (=> b!435542 m!423445))

(assert (=> b!435542 m!423445))

(declare-fun m!423477 () Bool)

(assert (=> b!435542 m!423477))

(declare-fun m!423479 () Bool)

(assert (=> b!435545 m!423479))

(declare-fun m!423481 () Bool)

(assert (=> b!435540 m!423481))

(declare-fun m!423483 () Bool)

(assert (=> b!435539 m!423483))

(declare-fun m!423485 () Bool)

(assert (=> mapNonEmpty!18762 m!423485))

(assert (=> b!435531 m!423445))

(declare-fun m!423487 () Bool)

(assert (=> b!435531 m!423487))

(declare-fun m!423489 () Bool)

(assert (=> b!435531 m!423489))

(assert (=> b!435531 m!423487))

(declare-fun m!423491 () Bool)

(assert (=> b!435531 m!423491))

(declare-fun m!423493 () Bool)

(assert (=> b!435531 m!423493))

(assert (=> b!435531 m!423489))

(check-sat (not b!435531) (not b!435536) tp_is_empty!11427 (not mapNonEmpty!18762) (not b!435546) (not b_lambda!9393) (not start!40016) (not b_next!10275) (not b!435541) (not b!435542) (not b!435549) (not b!435548) (not b!435539) b_and!18229 (not b!435545) (not b!435550) (not b!435540) (not b!435538))
(check-sat b_and!18229 (not b_next!10275))

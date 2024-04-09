; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40050 () Bool)

(assert start!40050)

(declare-fun b_free!10309 () Bool)

(declare-fun b_next!10309 () Bool)

(assert (=> start!40050 (= b_free!10309 (not b_next!10309))))

(declare-fun tp!36456 () Bool)

(declare-fun b_and!18295 () Bool)

(assert (=> start!40050 (= tp!36456 b_and!18295)))

(declare-fun b!436577 () Bool)

(declare-fun res!257477 () Bool)

(declare-fun e!257781 () Bool)

(assert (=> b!436577 (=> (not res!257477) (not e!257781))))

(declare-datatypes ((array!26723 0))(
  ( (array!26724 (arr!12808 (Array (_ BitVec 32) (_ BitVec 64))) (size!13160 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26723)

(declare-datatypes ((List!7627 0))(
  ( (Nil!7624) (Cons!7623 (h!8479 (_ BitVec 64)) (t!13391 List!7627)) )
))
(declare-fun arrayNoDuplicates!0 (array!26723 (_ BitVec 32) List!7627) Bool)

(assert (=> b!436577 (= res!257477 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7624))))

(declare-fun b!436579 () Bool)

(declare-fun res!257481 () Bool)

(assert (=> b!436579 (=> (not res!257481) (not e!257781))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16387 0))(
  ( (V!16388 (val!5775 Int)) )
))
(declare-datatypes ((ValueCell!5387 0))(
  ( (ValueCellFull!5387 (v!8018 V!16387)) (EmptyCell!5387) )
))
(declare-datatypes ((array!26725 0))(
  ( (array!26726 (arr!12809 (Array (_ BitVec 32) ValueCell!5387)) (size!13161 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26725)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!436579 (= res!257481 (and (= (size!13161 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13160 _keys!709) (size!13161 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436580 () Bool)

(declare-fun e!257780 () Bool)

(declare-fun e!257784 () Bool)

(assert (=> b!436580 (= e!257780 e!257784)))

(declare-fun res!257483 () Bool)

(assert (=> b!436580 (=> (not res!257483) (not e!257784))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436580 (= res!257483 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((tuple2!7584 0))(
  ( (tuple2!7585 (_1!3802 (_ BitVec 64)) (_2!3802 V!16387)) )
))
(declare-datatypes ((List!7628 0))(
  ( (Nil!7625) (Cons!7624 (h!8480 tuple2!7584) (t!13392 List!7628)) )
))
(declare-datatypes ((ListLongMap!6511 0))(
  ( (ListLongMap!6512 (toList!3271 List!7628)) )
))
(declare-fun lt!201398 () ListLongMap!6511)

(declare-fun minValue!515 () V!16387)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!201400 () array!26725)

(declare-fun zeroValue!515 () V!16387)

(declare-fun lt!201399 () array!26723)

(declare-fun getCurrentListMapNoExtraKeys!1453 (array!26723 array!26725 (_ BitVec 32) (_ BitVec 32) V!16387 V!16387 (_ BitVec 32) Int) ListLongMap!6511)

(assert (=> b!436580 (= lt!201398 (getCurrentListMapNoExtraKeys!1453 lt!201399 lt!201400 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16387)

(assert (=> b!436580 (= lt!201400 (array!26726 (store (arr!12809 _values!549) i!563 (ValueCellFull!5387 v!412)) (size!13161 _values!549)))))

(declare-fun lt!201402 () ListLongMap!6511)

(assert (=> b!436580 (= lt!201402 (getCurrentListMapNoExtraKeys!1453 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436581 () Bool)

(declare-fun e!257785 () Bool)

(declare-fun tp_is_empty!11461 () Bool)

(assert (=> b!436581 (= e!257785 tp_is_empty!11461)))

(declare-fun b!436582 () Bool)

(declare-fun res!257476 () Bool)

(assert (=> b!436582 (=> (not res!257476) (not e!257781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26723 (_ BitVec 32)) Bool)

(assert (=> b!436582 (= res!257476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436583 () Bool)

(declare-fun res!257479 () Bool)

(assert (=> b!436583 (=> (not res!257479) (not e!257781))))

(assert (=> b!436583 (= res!257479 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13160 _keys!709))))))

(declare-fun b!436584 () Bool)

(declare-fun res!257480 () Bool)

(assert (=> b!436584 (=> (not res!257480) (not e!257781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436584 (= res!257480 (validMask!0 mask!1025))))

(declare-fun b!436585 () Bool)

(declare-fun res!257482 () Bool)

(assert (=> b!436585 (=> (not res!257482) (not e!257781))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436585 (= res!257482 (validKeyInArray!0 k!794))))

(declare-fun b!436578 () Bool)

(assert (=> b!436578 (= e!257781 e!257780)))

(declare-fun res!257473 () Bool)

(assert (=> b!436578 (=> (not res!257473) (not e!257780))))

(assert (=> b!436578 (= res!257473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201399 mask!1025))))

(assert (=> b!436578 (= lt!201399 (array!26724 (store (arr!12808 _keys!709) i!563 k!794) (size!13160 _keys!709)))))

(declare-fun res!257484 () Bool)

(assert (=> start!40050 (=> (not res!257484) (not e!257781))))

(assert (=> start!40050 (= res!257484 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13160 _keys!709))))))

(assert (=> start!40050 e!257781))

(assert (=> start!40050 tp_is_empty!11461))

(assert (=> start!40050 tp!36456))

(assert (=> start!40050 true))

(declare-fun e!257783 () Bool)

(declare-fun array_inv!9302 (array!26725) Bool)

(assert (=> start!40050 (and (array_inv!9302 _values!549) e!257783)))

(declare-fun array_inv!9303 (array!26723) Bool)

(assert (=> start!40050 (array_inv!9303 _keys!709)))

(declare-fun b!436586 () Bool)

(declare-fun res!257472 () Bool)

(assert (=> b!436586 (=> (not res!257472) (not e!257781))))

(declare-fun arrayContainsKey!0 (array!26723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436586 (= res!257472 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!436587 () Bool)

(declare-fun res!257478 () Bool)

(assert (=> b!436587 (=> (not res!257478) (not e!257780))))

(assert (=> b!436587 (= res!257478 (arrayNoDuplicates!0 lt!201399 #b00000000000000000000000000000000 Nil!7624))))

(declare-fun b!436588 () Bool)

(declare-fun res!257475 () Bool)

(assert (=> b!436588 (=> (not res!257475) (not e!257781))))

(assert (=> b!436588 (= res!257475 (or (= (select (arr!12808 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12808 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18813 () Bool)

(declare-fun mapRes!18813 () Bool)

(declare-fun tp!36455 () Bool)

(declare-fun e!257782 () Bool)

(assert (=> mapNonEmpty!18813 (= mapRes!18813 (and tp!36455 e!257782))))

(declare-fun mapValue!18813 () ValueCell!5387)

(declare-fun mapKey!18813 () (_ BitVec 32))

(declare-fun mapRest!18813 () (Array (_ BitVec 32) ValueCell!5387))

(assert (=> mapNonEmpty!18813 (= (arr!12809 _values!549) (store mapRest!18813 mapKey!18813 mapValue!18813))))

(declare-fun b!436589 () Bool)

(assert (=> b!436589 (= e!257782 tp_is_empty!11461)))

(declare-fun b!436590 () Bool)

(assert (=> b!436590 (= e!257784 (not true))))

(declare-fun +!1415 (ListLongMap!6511 tuple2!7584) ListLongMap!6511)

(assert (=> b!436590 (= (getCurrentListMapNoExtraKeys!1453 lt!201399 lt!201400 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1415 (getCurrentListMapNoExtraKeys!1453 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7585 k!794 v!412)))))

(declare-datatypes ((Unit!12945 0))(
  ( (Unit!12946) )
))
(declare-fun lt!201401 () Unit!12945)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!593 (array!26723 array!26725 (_ BitVec 32) (_ BitVec 32) V!16387 V!16387 (_ BitVec 32) (_ BitVec 64) V!16387 (_ BitVec 32) Int) Unit!12945)

(assert (=> b!436590 (= lt!201401 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!593 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18813 () Bool)

(assert (=> mapIsEmpty!18813 mapRes!18813))

(declare-fun b!436591 () Bool)

(assert (=> b!436591 (= e!257783 (and e!257785 mapRes!18813))))

(declare-fun condMapEmpty!18813 () Bool)

(declare-fun mapDefault!18813 () ValueCell!5387)


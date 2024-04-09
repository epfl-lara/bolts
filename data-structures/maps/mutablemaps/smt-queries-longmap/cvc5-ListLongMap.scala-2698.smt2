; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40014 () Bool)

(assert start!40014)

(declare-fun b_free!10273 () Bool)

(declare-fun b_next!10273 () Bool)

(assert (=> start!40014 (= b_free!10273 (not b_next!10273))))

(declare-fun tp!36348 () Bool)

(declare-fun b_and!18223 () Bool)

(assert (=> start!40014 (= tp!36348 b_and!18223)))

(declare-fun b!435469 () Bool)

(declare-fun res!256671 () Bool)

(declare-fun e!257254 () Bool)

(assert (=> b!435469 (=> (not res!256671) (not e!257254))))

(declare-datatypes ((array!26653 0))(
  ( (array!26654 (arr!12773 (Array (_ BitVec 32) (_ BitVec 64))) (size!13125 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26653)

(declare-datatypes ((List!7601 0))(
  ( (Nil!7598) (Cons!7597 (h!8453 (_ BitVec 64)) (t!13331 List!7601)) )
))
(declare-fun arrayNoDuplicates!0 (array!26653 (_ BitVec 32) List!7601) Bool)

(assert (=> b!435469 (= res!256671 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7598))))

(declare-fun b!435470 () Bool)

(declare-fun res!256680 () Bool)

(declare-fun e!257248 () Bool)

(assert (=> b!435470 (=> (not res!256680) (not e!257248))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435470 (= res!256680 (bvsle from!863 i!563))))

(declare-fun b!435471 () Bool)

(declare-fun res!256668 () Bool)

(assert (=> b!435471 (=> (not res!256668) (not e!257254))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26653 (_ BitVec 32)) Bool)

(assert (=> b!435471 (= res!256668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!435472 () Bool)

(declare-fun e!257252 () Bool)

(assert (=> b!435472 (= e!257248 e!257252)))

(declare-fun res!256675 () Bool)

(assert (=> b!435472 (=> (not res!256675) (not e!257252))))

(assert (=> b!435472 (= res!256675 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16339 0))(
  ( (V!16340 (val!5757 Int)) )
))
(declare-fun minValue!515 () V!16339)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16339)

(declare-fun lt!200622 () array!26653)

(declare-datatypes ((tuple2!7556 0))(
  ( (tuple2!7557 (_1!3788 (_ BitVec 64)) (_2!3788 V!16339)) )
))
(declare-datatypes ((List!7602 0))(
  ( (Nil!7599) (Cons!7598 (h!8454 tuple2!7556) (t!13332 List!7602)) )
))
(declare-datatypes ((ListLongMap!6483 0))(
  ( (ListLongMap!6484 (toList!3257 List!7602)) )
))
(declare-fun lt!200616 () ListLongMap!6483)

(declare-datatypes ((ValueCell!5369 0))(
  ( (ValueCellFull!5369 (v!8000 V!16339)) (EmptyCell!5369) )
))
(declare-datatypes ((array!26655 0))(
  ( (array!26656 (arr!12774 (Array (_ BitVec 32) ValueCell!5369)) (size!13126 (_ BitVec 32))) )
))
(declare-fun lt!200613 () array!26655)

(declare-fun getCurrentListMapNoExtraKeys!1441 (array!26653 array!26655 (_ BitVec 32) (_ BitVec 32) V!16339 V!16339 (_ BitVec 32) Int) ListLongMap!6483)

(assert (=> b!435472 (= lt!200616 (getCurrentListMapNoExtraKeys!1441 lt!200622 lt!200613 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26655)

(declare-fun v!412 () V!16339)

(assert (=> b!435472 (= lt!200613 (array!26656 (store (arr!12774 _values!549) i!563 (ValueCellFull!5369 v!412)) (size!13126 _values!549)))))

(declare-fun lt!200609 () ListLongMap!6483)

(assert (=> b!435472 (= lt!200609 (getCurrentListMapNoExtraKeys!1441 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!435473 () Bool)

(declare-fun e!257250 () Bool)

(declare-fun e!257253 () Bool)

(declare-fun mapRes!18759 () Bool)

(assert (=> b!435473 (= e!257250 (and e!257253 mapRes!18759))))

(declare-fun condMapEmpty!18759 () Bool)

(declare-fun mapDefault!18759 () ValueCell!5369)


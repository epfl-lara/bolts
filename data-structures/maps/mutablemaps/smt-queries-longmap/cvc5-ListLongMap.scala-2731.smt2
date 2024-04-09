; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40212 () Bool)

(assert start!40212)

(declare-fun b_free!10471 () Bool)

(declare-fun b_next!10471 () Bool)

(assert (=> start!40212 (= b_free!10471 (not b_next!10471))))

(declare-fun tp!36941 () Bool)

(declare-fun b_and!18457 () Bool)

(assert (=> start!40212 (= tp!36941 b_and!18457)))

(declare-fun b!440465 () Bool)

(declare-fun e!259486 () Bool)

(declare-fun tp_is_empty!11623 () Bool)

(assert (=> b!440465 (= e!259486 tp_is_empty!11623)))

(declare-fun b!440466 () Bool)

(declare-fun res!260642 () Bool)

(declare-fun e!259485 () Bool)

(assert (=> b!440466 (=> (not res!260642) (not e!259485))))

(declare-datatypes ((array!27033 0))(
  ( (array!27034 (arr!12963 (Array (_ BitVec 32) (_ BitVec 64))) (size!13315 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27033)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16603 0))(
  ( (V!16604 (val!5856 Int)) )
))
(declare-datatypes ((ValueCell!5468 0))(
  ( (ValueCellFull!5468 (v!8099 V!16603)) (EmptyCell!5468) )
))
(declare-datatypes ((array!27035 0))(
  ( (array!27036 (arr!12964 (Array (_ BitVec 32) ValueCell!5468)) (size!13316 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27035)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!440466 (= res!260642 (and (= (size!13316 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13315 _keys!709) (size!13316 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440467 () Bool)

(declare-fun res!260638 () Bool)

(declare-fun e!259480 () Bool)

(assert (=> b!440467 (=> (not res!260638) (not e!259480))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440467 (= res!260638 (bvsle from!863 i!563))))

(declare-fun b!440468 () Bool)

(declare-fun res!260634 () Bool)

(assert (=> b!440468 (=> (not res!260634) (not e!259485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27033 (_ BitVec 32)) Bool)

(assert (=> b!440468 (= res!260634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19056 () Bool)

(declare-fun mapRes!19056 () Bool)

(assert (=> mapIsEmpty!19056 mapRes!19056))

(declare-fun b!440469 () Bool)

(declare-fun res!260631 () Bool)

(assert (=> b!440469 (=> (not res!260631) (not e!259485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440469 (= res!260631 (validMask!0 mask!1025))))

(declare-fun b!440470 () Bool)

(declare-fun res!260635 () Bool)

(assert (=> b!440470 (=> (not res!260635) (not e!259480))))

(declare-fun lt!202613 () array!27033)

(declare-datatypes ((List!7748 0))(
  ( (Nil!7745) (Cons!7744 (h!8600 (_ BitVec 64)) (t!13512 List!7748)) )
))
(declare-fun arrayNoDuplicates!0 (array!27033 (_ BitVec 32) List!7748) Bool)

(assert (=> b!440470 (= res!260635 (arrayNoDuplicates!0 lt!202613 #b00000000000000000000000000000000 Nil!7745))))

(declare-fun b!440471 () Bool)

(declare-fun e!259482 () Bool)

(assert (=> b!440471 (= e!259480 e!259482)))

(declare-fun res!260637 () Bool)

(assert (=> b!440471 (=> (not res!260637) (not e!259482))))

(assert (=> b!440471 (= res!260637 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16603)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7708 0))(
  ( (tuple2!7709 (_1!3864 (_ BitVec 64)) (_2!3864 V!16603)) )
))
(declare-datatypes ((List!7749 0))(
  ( (Nil!7746) (Cons!7745 (h!8601 tuple2!7708) (t!13513 List!7749)) )
))
(declare-datatypes ((ListLongMap!6635 0))(
  ( (ListLongMap!6636 (toList!3333 List!7749)) )
))
(declare-fun lt!202615 () ListLongMap!6635)

(declare-fun zeroValue!515 () V!16603)

(declare-fun lt!202614 () array!27035)

(declare-fun getCurrentListMapNoExtraKeys!1515 (array!27033 array!27035 (_ BitVec 32) (_ BitVec 32) V!16603 V!16603 (_ BitVec 32) Int) ListLongMap!6635)

(assert (=> b!440471 (= lt!202615 (getCurrentListMapNoExtraKeys!1515 lt!202613 lt!202614 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16603)

(assert (=> b!440471 (= lt!202614 (array!27036 (store (arr!12964 _values!549) i!563 (ValueCellFull!5468 v!412)) (size!13316 _values!549)))))

(declare-fun lt!202616 () ListLongMap!6635)

(assert (=> b!440471 (= lt!202616 (getCurrentListMapNoExtraKeys!1515 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440472 () Bool)

(declare-fun res!260640 () Bool)

(assert (=> b!440472 (=> (not res!260640) (not e!259485))))

(assert (=> b!440472 (= res!260640 (or (= (select (arr!12963 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12963 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440473 () Bool)

(declare-fun e!259483 () Bool)

(assert (=> b!440473 (= e!259483 tp_is_empty!11623)))

(declare-fun b!440474 () Bool)

(assert (=> b!440474 (= e!259482 (not true))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun +!1469 (ListLongMap!6635 tuple2!7708) ListLongMap!6635)

(assert (=> b!440474 (= (getCurrentListMapNoExtraKeys!1515 lt!202613 lt!202614 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1469 (getCurrentListMapNoExtraKeys!1515 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7709 k!794 v!412)))))

(declare-datatypes ((Unit!13053 0))(
  ( (Unit!13054) )
))
(declare-fun lt!202617 () Unit!13053)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!647 (array!27033 array!27035 (_ BitVec 32) (_ BitVec 32) V!16603 V!16603 (_ BitVec 32) (_ BitVec 64) V!16603 (_ BitVec 32) Int) Unit!13053)

(assert (=> b!440474 (= lt!202617 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!647 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!440475 () Bool)

(declare-fun res!260633 () Bool)

(assert (=> b!440475 (=> (not res!260633) (not e!259485))))

(assert (=> b!440475 (= res!260633 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13315 _keys!709))))))

(declare-fun res!260643 () Bool)

(assert (=> start!40212 (=> (not res!260643) (not e!259485))))

(assert (=> start!40212 (= res!260643 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13315 _keys!709))))))

(assert (=> start!40212 e!259485))

(assert (=> start!40212 tp_is_empty!11623))

(assert (=> start!40212 tp!36941))

(assert (=> start!40212 true))

(declare-fun e!259484 () Bool)

(declare-fun array_inv!9400 (array!27035) Bool)

(assert (=> start!40212 (and (array_inv!9400 _values!549) e!259484)))

(declare-fun array_inv!9401 (array!27033) Bool)

(assert (=> start!40212 (array_inv!9401 _keys!709)))

(declare-fun b!440476 () Bool)

(assert (=> b!440476 (= e!259485 e!259480)))

(declare-fun res!260632 () Bool)

(assert (=> b!440476 (=> (not res!260632) (not e!259480))))

(assert (=> b!440476 (= res!260632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202613 mask!1025))))

(assert (=> b!440476 (= lt!202613 (array!27034 (store (arr!12963 _keys!709) i!563 k!794) (size!13315 _keys!709)))))

(declare-fun b!440477 () Bool)

(declare-fun res!260641 () Bool)

(assert (=> b!440477 (=> (not res!260641) (not e!259485))))

(declare-fun arrayContainsKey!0 (array!27033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440477 (= res!260641 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!440478 () Bool)

(assert (=> b!440478 (= e!259484 (and e!259483 mapRes!19056))))

(declare-fun condMapEmpty!19056 () Bool)

(declare-fun mapDefault!19056 () ValueCell!5468)


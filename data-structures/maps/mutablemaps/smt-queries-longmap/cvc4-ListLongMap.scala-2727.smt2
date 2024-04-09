; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40192 () Bool)

(assert start!40192)

(declare-fun b_free!10451 () Bool)

(declare-fun b_next!10451 () Bool)

(assert (=> start!40192 (= b_free!10451 (not b_next!10451))))

(declare-fun tp!36882 () Bool)

(declare-fun b_and!18437 () Bool)

(assert (=> start!40192 (= tp!36882 b_and!18437)))

(declare-fun b!439985 () Bool)

(declare-fun res!260241 () Bool)

(declare-fun e!259275 () Bool)

(assert (=> b!439985 (=> (not res!260241) (not e!259275))))

(declare-datatypes ((array!26997 0))(
  ( (array!26998 (arr!12945 (Array (_ BitVec 32) (_ BitVec 64))) (size!13297 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26997)

(declare-datatypes ((List!7734 0))(
  ( (Nil!7731) (Cons!7730 (h!8586 (_ BitVec 64)) (t!13498 List!7734)) )
))
(declare-fun arrayNoDuplicates!0 (array!26997 (_ BitVec 32) List!7734) Bool)

(assert (=> b!439985 (= res!260241 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7731))))

(declare-fun res!260247 () Bool)

(assert (=> start!40192 (=> (not res!260247) (not e!259275))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40192 (= res!260247 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13297 _keys!709))))))

(assert (=> start!40192 e!259275))

(declare-fun tp_is_empty!11603 () Bool)

(assert (=> start!40192 tp_is_empty!11603))

(assert (=> start!40192 tp!36882))

(assert (=> start!40192 true))

(declare-datatypes ((V!16575 0))(
  ( (V!16576 (val!5846 Int)) )
))
(declare-datatypes ((ValueCell!5458 0))(
  ( (ValueCellFull!5458 (v!8089 V!16575)) (EmptyCell!5458) )
))
(declare-datatypes ((array!26999 0))(
  ( (array!27000 (arr!12946 (Array (_ BitVec 32) ValueCell!5458)) (size!13298 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26999)

(declare-fun e!259271 () Bool)

(declare-fun array_inv!9388 (array!26999) Bool)

(assert (=> start!40192 (and (array_inv!9388 _values!549) e!259271)))

(declare-fun array_inv!9389 (array!26997) Bool)

(assert (=> start!40192 (array_inv!9389 _keys!709)))

(declare-fun b!439986 () Bool)

(declare-fun e!259270 () Bool)

(assert (=> b!439986 (= e!259270 tp_is_empty!11603)))

(declare-fun b!439987 () Bool)

(declare-fun res!260246 () Bool)

(assert (=> b!439987 (=> (not res!260246) (not e!259275))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439987 (= res!260246 (validMask!0 mask!1025))))

(declare-fun b!439988 () Bool)

(declare-fun e!259274 () Bool)

(assert (=> b!439988 (= e!259274 (not true))))

(declare-fun minValue!515 () V!16575)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!202464 () array!26997)

(declare-fun zeroValue!515 () V!16575)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!202467 () array!26999)

(declare-fun v!412 () V!16575)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7692 0))(
  ( (tuple2!7693 (_1!3856 (_ BitVec 64)) (_2!3856 V!16575)) )
))
(declare-datatypes ((List!7735 0))(
  ( (Nil!7732) (Cons!7731 (h!8587 tuple2!7692) (t!13499 List!7735)) )
))
(declare-datatypes ((ListLongMap!6619 0))(
  ( (ListLongMap!6620 (toList!3325 List!7735)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1507 (array!26997 array!26999 (_ BitVec 32) (_ BitVec 32) V!16575 V!16575 (_ BitVec 32) Int) ListLongMap!6619)

(declare-fun +!1462 (ListLongMap!6619 tuple2!7692) ListLongMap!6619)

(assert (=> b!439988 (= (getCurrentListMapNoExtraKeys!1507 lt!202464 lt!202467 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1462 (getCurrentListMapNoExtraKeys!1507 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7693 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13039 0))(
  ( (Unit!13040) )
))
(declare-fun lt!202465 () Unit!13039)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!640 (array!26997 array!26999 (_ BitVec 32) (_ BitVec 32) V!16575 V!16575 (_ BitVec 32) (_ BitVec 64) V!16575 (_ BitVec 32) Int) Unit!13039)

(assert (=> b!439988 (= lt!202465 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!640 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439989 () Bool)

(declare-fun res!260242 () Bool)

(declare-fun e!259273 () Bool)

(assert (=> b!439989 (=> (not res!260242) (not e!259273))))

(assert (=> b!439989 (= res!260242 (bvsle from!863 i!563))))

(declare-fun b!439990 () Bool)

(assert (=> b!439990 (= e!259273 e!259274)))

(declare-fun res!260253 () Bool)

(assert (=> b!439990 (=> (not res!260253) (not e!259274))))

(assert (=> b!439990 (= res!260253 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202466 () ListLongMap!6619)

(assert (=> b!439990 (= lt!202466 (getCurrentListMapNoExtraKeys!1507 lt!202464 lt!202467 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!439990 (= lt!202467 (array!27000 (store (arr!12946 _values!549) i!563 (ValueCellFull!5458 v!412)) (size!13298 _values!549)))))

(declare-fun lt!202463 () ListLongMap!6619)

(assert (=> b!439990 (= lt!202463 (getCurrentListMapNoExtraKeys!1507 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439991 () Bool)

(declare-fun e!259272 () Bool)

(assert (=> b!439991 (= e!259272 tp_is_empty!11603)))

(declare-fun b!439992 () Bool)

(assert (=> b!439992 (= e!259275 e!259273)))

(declare-fun res!260245 () Bool)

(assert (=> b!439992 (=> (not res!260245) (not e!259273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26997 (_ BitVec 32)) Bool)

(assert (=> b!439992 (= res!260245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202464 mask!1025))))

(assert (=> b!439992 (= lt!202464 (array!26998 (store (arr!12945 _keys!709) i!563 k!794) (size!13297 _keys!709)))))

(declare-fun b!439993 () Bool)

(declare-fun res!260251 () Bool)

(assert (=> b!439993 (=> (not res!260251) (not e!259275))))

(assert (=> b!439993 (= res!260251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439994 () Bool)

(declare-fun res!260248 () Bool)

(assert (=> b!439994 (=> (not res!260248) (not e!259275))))

(assert (=> b!439994 (= res!260248 (and (= (size!13298 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13297 _keys!709) (size!13298 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19026 () Bool)

(declare-fun mapRes!19026 () Bool)

(declare-fun tp!36881 () Bool)

(assert (=> mapNonEmpty!19026 (= mapRes!19026 (and tp!36881 e!259270))))

(declare-fun mapKey!19026 () (_ BitVec 32))

(declare-fun mapRest!19026 () (Array (_ BitVec 32) ValueCell!5458))

(declare-fun mapValue!19026 () ValueCell!5458)

(assert (=> mapNonEmpty!19026 (= (arr!12946 _values!549) (store mapRest!19026 mapKey!19026 mapValue!19026))))

(declare-fun b!439995 () Bool)

(assert (=> b!439995 (= e!259271 (and e!259272 mapRes!19026))))

(declare-fun condMapEmpty!19026 () Bool)

(declare-fun mapDefault!19026 () ValueCell!5458)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40110 () Bool)

(assert start!40110)

(declare-fun b_free!10369 () Bool)

(declare-fun b_next!10369 () Bool)

(assert (=> start!40110 (= b_free!10369 (not b_next!10369))))

(declare-fun tp!36636 () Bool)

(declare-fun b_and!18355 () Bool)

(assert (=> start!40110 (= tp!36636 b_and!18355)))

(declare-fun b!438017 () Bool)

(declare-fun res!258644 () Bool)

(declare-fun e!258412 () Bool)

(assert (=> b!438017 (=> (not res!258644) (not e!258412))))

(declare-datatypes ((array!26839 0))(
  ( (array!26840 (arr!12866 (Array (_ BitVec 32) (_ BitVec 64))) (size!13218 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26839)

(declare-datatypes ((List!7671 0))(
  ( (Nil!7668) (Cons!7667 (h!8523 (_ BitVec 64)) (t!13435 List!7671)) )
))
(declare-fun arrayNoDuplicates!0 (array!26839 (_ BitVec 32) List!7671) Bool)

(assert (=> b!438017 (= res!258644 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7668))))

(declare-fun b!438018 () Bool)

(declare-fun res!258649 () Bool)

(declare-fun e!258415 () Bool)

(assert (=> b!438018 (=> (not res!258649) (not e!258415))))

(declare-fun lt!201849 () array!26839)

(assert (=> b!438018 (= res!258649 (arrayNoDuplicates!0 lt!201849 #b00000000000000000000000000000000 Nil!7668))))

(declare-fun mapIsEmpty!18903 () Bool)

(declare-fun mapRes!18903 () Bool)

(assert (=> mapIsEmpty!18903 mapRes!18903))

(declare-fun b!438019 () Bool)

(declare-fun res!258654 () Bool)

(assert (=> b!438019 (=> (not res!258654) (not e!258412))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26839 (_ BitVec 32)) Bool)

(assert (=> b!438019 (= res!258654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438020 () Bool)

(declare-fun res!258648 () Bool)

(assert (=> b!438020 (=> (not res!258648) (not e!258412))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438020 (= res!258648 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!438021 () Bool)

(declare-fun e!258411 () Bool)

(assert (=> b!438021 (= e!258411 (not true))))

(declare-datatypes ((V!16467 0))(
  ( (V!16468 (val!5805 Int)) )
))
(declare-fun minValue!515 () V!16467)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5417 0))(
  ( (ValueCellFull!5417 (v!8048 V!16467)) (EmptyCell!5417) )
))
(declare-datatypes ((array!26841 0))(
  ( (array!26842 (arr!12867 (Array (_ BitVec 32) ValueCell!5417)) (size!13219 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26841)

(declare-fun zeroValue!515 () V!16467)

(declare-fun lt!201848 () array!26841)

(declare-fun v!412 () V!16467)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7628 0))(
  ( (tuple2!7629 (_1!3824 (_ BitVec 64)) (_2!3824 V!16467)) )
))
(declare-datatypes ((List!7672 0))(
  ( (Nil!7669) (Cons!7668 (h!8524 tuple2!7628) (t!13436 List!7672)) )
))
(declare-datatypes ((ListLongMap!6555 0))(
  ( (ListLongMap!6556 (toList!3293 List!7672)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1475 (array!26839 array!26841 (_ BitVec 32) (_ BitVec 32) V!16467 V!16467 (_ BitVec 32) Int) ListLongMap!6555)

(declare-fun +!1436 (ListLongMap!6555 tuple2!7628) ListLongMap!6555)

(assert (=> b!438021 (= (getCurrentListMapNoExtraKeys!1475 lt!201849 lt!201848 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1436 (getCurrentListMapNoExtraKeys!1475 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7629 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12987 0))(
  ( (Unit!12988) )
))
(declare-fun lt!201850 () Unit!12987)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!614 (array!26839 array!26841 (_ BitVec 32) (_ BitVec 32) V!16467 V!16467 (_ BitVec 32) (_ BitVec 64) V!16467 (_ BitVec 32) Int) Unit!12987)

(assert (=> b!438021 (= lt!201850 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!614 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!438022 () Bool)

(declare-fun e!258409 () Bool)

(declare-fun tp_is_empty!11521 () Bool)

(assert (=> b!438022 (= e!258409 tp_is_empty!11521)))

(declare-fun b!438023 () Bool)

(assert (=> b!438023 (= e!258415 e!258411)))

(declare-fun res!258650 () Bool)

(assert (=> b!438023 (=> (not res!258650) (not e!258411))))

(assert (=> b!438023 (= res!258650 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201851 () ListLongMap!6555)

(assert (=> b!438023 (= lt!201851 (getCurrentListMapNoExtraKeys!1475 lt!201849 lt!201848 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!438023 (= lt!201848 (array!26842 (store (arr!12867 _values!549) i!563 (ValueCellFull!5417 v!412)) (size!13219 _values!549)))))

(declare-fun lt!201852 () ListLongMap!6555)

(assert (=> b!438023 (= lt!201852 (getCurrentListMapNoExtraKeys!1475 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438024 () Bool)

(declare-fun res!258647 () Bool)

(assert (=> b!438024 (=> (not res!258647) (not e!258412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438024 (= res!258647 (validMask!0 mask!1025))))

(declare-fun res!258653 () Bool)

(assert (=> start!40110 (=> (not res!258653) (not e!258412))))

(assert (=> start!40110 (= res!258653 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13218 _keys!709))))))

(assert (=> start!40110 e!258412))

(assert (=> start!40110 tp_is_empty!11521))

(assert (=> start!40110 tp!36636))

(assert (=> start!40110 true))

(declare-fun e!258414 () Bool)

(declare-fun array_inv!9340 (array!26841) Bool)

(assert (=> start!40110 (and (array_inv!9340 _values!549) e!258414)))

(declare-fun array_inv!9341 (array!26839) Bool)

(assert (=> start!40110 (array_inv!9341 _keys!709)))

(declare-fun b!438025 () Bool)

(declare-fun res!258643 () Bool)

(assert (=> b!438025 (=> (not res!258643) (not e!258412))))

(assert (=> b!438025 (= res!258643 (and (= (size!13219 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13218 _keys!709) (size!13219 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!438026 () Bool)

(assert (=> b!438026 (= e!258412 e!258415)))

(declare-fun res!258642 () Bool)

(assert (=> b!438026 (=> (not res!258642) (not e!258415))))

(assert (=> b!438026 (= res!258642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201849 mask!1025))))

(assert (=> b!438026 (= lt!201849 (array!26840 (store (arr!12866 _keys!709) i!563 k!794) (size!13218 _keys!709)))))

(declare-fun b!438027 () Bool)

(declare-fun res!258646 () Bool)

(assert (=> b!438027 (=> (not res!258646) (not e!258412))))

(assert (=> b!438027 (= res!258646 (or (= (select (arr!12866 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12866 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438028 () Bool)

(declare-fun res!258645 () Bool)

(assert (=> b!438028 (=> (not res!258645) (not e!258415))))

(assert (=> b!438028 (= res!258645 (bvsle from!863 i!563))))

(declare-fun b!438029 () Bool)

(assert (=> b!438029 (= e!258414 (and e!258409 mapRes!18903))))

(declare-fun condMapEmpty!18903 () Bool)

(declare-fun mapDefault!18903 () ValueCell!5417)


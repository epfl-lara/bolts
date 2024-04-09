; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39928 () Bool)

(assert start!39928)

(declare-fun b_free!10187 () Bool)

(declare-fun b_next!10187 () Bool)

(assert (=> start!39928 (= b_free!10187 (not b_next!10187))))

(declare-fun tp!36090 () Bool)

(declare-fun b_and!18051 () Bool)

(assert (=> start!39928 (= tp!36090 b_and!18051)))

(declare-fun b!432803 () Bool)

(declare-datatypes ((Unit!12758 0))(
  ( (Unit!12759) )
))
(declare-fun e!255964 () Unit!12758)

(declare-fun Unit!12760 () Unit!12758)

(assert (=> b!432803 (= e!255964 Unit!12760)))

(declare-fun b!432804 () Bool)

(declare-fun res!254745 () Bool)

(declare-fun e!255962 () Bool)

(assert (=> b!432804 (=> (not res!254745) (not e!255962))))

(declare-datatypes ((array!26487 0))(
  ( (array!26488 (arr!12690 (Array (_ BitVec 32) (_ BitVec 64))) (size!13042 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26487)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16223 0))(
  ( (V!16224 (val!5714 Int)) )
))
(declare-datatypes ((ValueCell!5326 0))(
  ( (ValueCellFull!5326 (v!7957 V!16223)) (EmptyCell!5326) )
))
(declare-datatypes ((array!26489 0))(
  ( (array!26490 (arr!12691 (Array (_ BitVec 32) ValueCell!5326)) (size!13043 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26489)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!432804 (= res!254745 (and (= (size!13043 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13042 _keys!709) (size!13043 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432805 () Bool)

(declare-fun res!254733 () Bool)

(assert (=> b!432805 (=> (not res!254733) (not e!255962))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432805 (= res!254733 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!432806 () Bool)

(declare-fun res!254741 () Bool)

(assert (=> b!432806 (=> (not res!254741) (not e!255962))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432806 (= res!254741 (or (= (select (arr!12690 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12690 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18630 () Bool)

(declare-fun mapRes!18630 () Bool)

(declare-fun tp!36089 () Bool)

(declare-fun e!255961 () Bool)

(assert (=> mapNonEmpty!18630 (= mapRes!18630 (and tp!36089 e!255961))))

(declare-fun mapRest!18630 () (Array (_ BitVec 32) ValueCell!5326))

(declare-fun mapKey!18630 () (_ BitVec 32))

(declare-fun mapValue!18630 () ValueCell!5326)

(assert (=> mapNonEmpty!18630 (= (arr!12691 _values!549) (store mapRest!18630 mapKey!18630 mapValue!18630))))

(declare-fun b!432807 () Bool)

(declare-fun res!254735 () Bool)

(assert (=> b!432807 (=> (not res!254735) (not e!255962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432807 (= res!254735 (validMask!0 mask!1025))))

(declare-fun b!432808 () Bool)

(declare-fun res!254744 () Bool)

(assert (=> b!432808 (=> (not res!254744) (not e!255962))))

(declare-datatypes ((List!7530 0))(
  ( (Nil!7527) (Cons!7526 (h!8382 (_ BitVec 64)) (t!13174 List!7530)) )
))
(declare-fun arrayNoDuplicates!0 (array!26487 (_ BitVec 32) List!7530) Bool)

(assert (=> b!432808 (= res!254744 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7527))))

(declare-fun b!432810 () Bool)

(declare-fun e!255960 () Bool)

(assert (=> b!432810 (= e!255962 e!255960)))

(declare-fun res!254740 () Bool)

(assert (=> b!432810 (=> (not res!254740) (not e!255960))))

(declare-fun lt!198687 () array!26487)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26487 (_ BitVec 32)) Bool)

(assert (=> b!432810 (= res!254740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198687 mask!1025))))

(assert (=> b!432810 (= lt!198687 (array!26488 (store (arr!12690 _keys!709) i!563 k!794) (size!13042 _keys!709)))))

(declare-fun b!432811 () Bool)

(declare-fun e!255955 () Bool)

(declare-fun e!255956 () Bool)

(assert (=> b!432811 (= e!255955 (not e!255956))))

(declare-fun res!254738 () Bool)

(assert (=> b!432811 (=> res!254738 e!255956)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432811 (= res!254738 (not (validKeyInArray!0 (select (arr!12690 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7480 0))(
  ( (tuple2!7481 (_1!3750 (_ BitVec 64)) (_2!3750 V!16223)) )
))
(declare-datatypes ((List!7531 0))(
  ( (Nil!7528) (Cons!7527 (h!8383 tuple2!7480) (t!13175 List!7531)) )
))
(declare-datatypes ((ListLongMap!6407 0))(
  ( (ListLongMap!6408 (toList!3219 List!7531)) )
))
(declare-fun lt!198681 () ListLongMap!6407)

(declare-fun lt!198677 () ListLongMap!6407)

(assert (=> b!432811 (= lt!198681 lt!198677)))

(declare-fun lt!198675 () ListLongMap!6407)

(declare-fun lt!198683 () tuple2!7480)

(declare-fun +!1365 (ListLongMap!6407 tuple2!7480) ListLongMap!6407)

(assert (=> b!432811 (= lt!198677 (+!1365 lt!198675 lt!198683))))

(declare-fun minValue!515 () V!16223)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!198674 () array!26489)

(declare-fun zeroValue!515 () V!16223)

(declare-fun getCurrentListMapNoExtraKeys!1409 (array!26487 array!26489 (_ BitVec 32) (_ BitVec 32) V!16223 V!16223 (_ BitVec 32) Int) ListLongMap!6407)

(assert (=> b!432811 (= lt!198681 (getCurrentListMapNoExtraKeys!1409 lt!198687 lt!198674 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16223)

(assert (=> b!432811 (= lt!198683 (tuple2!7481 k!794 v!412))))

(assert (=> b!432811 (= lt!198675 (getCurrentListMapNoExtraKeys!1409 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198682 () Unit!12758)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!553 (array!26487 array!26489 (_ BitVec 32) (_ BitVec 32) V!16223 V!16223 (_ BitVec 32) (_ BitVec 64) V!16223 (_ BitVec 32) Int) Unit!12758)

(assert (=> b!432811 (= lt!198682 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!553 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432812 () Bool)

(declare-fun e!255963 () Bool)

(declare-fun e!255957 () Bool)

(assert (=> b!432812 (= e!255963 (and e!255957 mapRes!18630))))

(declare-fun condMapEmpty!18630 () Bool)

(declare-fun mapDefault!18630 () ValueCell!5326)


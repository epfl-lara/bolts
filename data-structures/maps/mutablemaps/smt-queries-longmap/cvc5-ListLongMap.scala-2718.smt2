; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40134 () Bool)

(assert start!40134)

(declare-fun b_free!10393 () Bool)

(declare-fun b_next!10393 () Bool)

(assert (=> start!40134 (= b_free!10393 (not b_next!10393))))

(declare-fun tp!36707 () Bool)

(declare-fun b_and!18379 () Bool)

(assert (=> start!40134 (= tp!36707 b_and!18379)))

(declare-fun b!438593 () Bool)

(declare-fun res!259110 () Bool)

(declare-fun e!258665 () Bool)

(assert (=> b!438593 (=> (not res!259110) (not e!258665))))

(declare-datatypes ((array!26883 0))(
  ( (array!26884 (arr!12888 (Array (_ BitVec 32) (_ BitVec 64))) (size!13240 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26883)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26883 (_ BitVec 32)) Bool)

(assert (=> b!438593 (= res!259110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438594 () Bool)

(declare-fun res!259121 () Bool)

(declare-fun e!258661 () Bool)

(assert (=> b!438594 (=> (not res!259121) (not e!258661))))

(declare-fun lt!202028 () array!26883)

(declare-datatypes ((List!7689 0))(
  ( (Nil!7686) (Cons!7685 (h!8541 (_ BitVec 64)) (t!13453 List!7689)) )
))
(declare-fun arrayNoDuplicates!0 (array!26883 (_ BitVec 32) List!7689) Bool)

(assert (=> b!438594 (= res!259121 (arrayNoDuplicates!0 lt!202028 #b00000000000000000000000000000000 Nil!7686))))

(declare-fun mapNonEmpty!18939 () Bool)

(declare-fun mapRes!18939 () Bool)

(declare-fun tp!36708 () Bool)

(declare-fun e!258662 () Bool)

(assert (=> mapNonEmpty!18939 (= mapRes!18939 (and tp!36708 e!258662))))

(declare-datatypes ((V!16499 0))(
  ( (V!16500 (val!5817 Int)) )
))
(declare-datatypes ((ValueCell!5429 0))(
  ( (ValueCellFull!5429 (v!8060 V!16499)) (EmptyCell!5429) )
))
(declare-fun mapRest!18939 () (Array (_ BitVec 32) ValueCell!5429))

(declare-fun mapKey!18939 () (_ BitVec 32))

(declare-fun mapValue!18939 () ValueCell!5429)

(declare-datatypes ((array!26885 0))(
  ( (array!26886 (arr!12889 (Array (_ BitVec 32) ValueCell!5429)) (size!13241 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26885)

(assert (=> mapNonEmpty!18939 (= (arr!12889 _values!549) (store mapRest!18939 mapKey!18939 mapValue!18939))))

(declare-fun b!438595 () Bool)

(declare-fun res!259118 () Bool)

(assert (=> b!438595 (=> (not res!259118) (not e!258665))))

(assert (=> b!438595 (= res!259118 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7686))))

(declare-fun b!438596 () Bool)

(declare-fun e!258667 () Bool)

(assert (=> b!438596 (= e!258667 (not true))))

(declare-fun minValue!515 () V!16499)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16499)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!202029 () array!26885)

(declare-fun v!412 () V!16499)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7646 0))(
  ( (tuple2!7647 (_1!3833 (_ BitVec 64)) (_2!3833 V!16499)) )
))
(declare-datatypes ((List!7690 0))(
  ( (Nil!7687) (Cons!7686 (h!8542 tuple2!7646) (t!13454 List!7690)) )
))
(declare-datatypes ((ListLongMap!6573 0))(
  ( (ListLongMap!6574 (toList!3302 List!7690)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1484 (array!26883 array!26885 (_ BitVec 32) (_ BitVec 32) V!16499 V!16499 (_ BitVec 32) Int) ListLongMap!6573)

(declare-fun +!1442 (ListLongMap!6573 tuple2!7646) ListLongMap!6573)

(assert (=> b!438596 (= (getCurrentListMapNoExtraKeys!1484 lt!202028 lt!202029 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1442 (getCurrentListMapNoExtraKeys!1484 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7647 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12999 0))(
  ( (Unit!13000) )
))
(declare-fun lt!202031 () Unit!12999)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!620 (array!26883 array!26885 (_ BitVec 32) (_ BitVec 32) V!16499 V!16499 (_ BitVec 32) (_ BitVec 64) V!16499 (_ BitVec 32) Int) Unit!12999)

(assert (=> b!438596 (= lt!202031 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!620 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!438597 () Bool)

(declare-fun e!258664 () Bool)

(declare-fun e!258666 () Bool)

(assert (=> b!438597 (= e!258664 (and e!258666 mapRes!18939))))

(declare-fun condMapEmpty!18939 () Bool)

(declare-fun mapDefault!18939 () ValueCell!5429)


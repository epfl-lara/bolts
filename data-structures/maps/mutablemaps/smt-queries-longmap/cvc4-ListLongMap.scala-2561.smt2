; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39196 () Bool)

(assert start!39196)

(declare-fun b_free!9455 () Bool)

(declare-fun b_next!9455 () Bool)

(assert (=> start!39196 (= b_free!9455 (not b_next!9455))))

(declare-fun tp!33893 () Bool)

(declare-fun b_and!16859 () Bool)

(assert (=> start!39196 (= tp!33893 b_and!16859)))

(declare-fun b!412647 () Bool)

(declare-fun res!239775 () Bool)

(declare-fun e!246861 () Bool)

(assert (=> b!412647 (=> (not res!239775) (not e!246861))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412647 (= res!239775 (bvsle from!863 i!563))))

(declare-fun b!412648 () Bool)

(declare-fun res!239777 () Bool)

(declare-fun e!246863 () Bool)

(assert (=> b!412648 (=> (not res!239777) (not e!246863))))

(declare-datatypes ((array!25053 0))(
  ( (array!25054 (arr!11973 (Array (_ BitVec 32) (_ BitVec 64))) (size!12325 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25053)

(assert (=> b!412648 (= res!239777 (or (= (select (arr!11973 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11973 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412649 () Bool)

(declare-fun e!246865 () Bool)

(declare-fun tp_is_empty!10607 () Bool)

(assert (=> b!412649 (= e!246865 tp_is_empty!10607)))

(declare-fun b!412650 () Bool)

(declare-fun res!239774 () Bool)

(assert (=> b!412650 (=> (not res!239774) (not e!246863))))

(assert (=> b!412650 (= res!239774 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12325 _keys!709))))))

(declare-fun mapNonEmpty!17532 () Bool)

(declare-fun mapRes!17532 () Bool)

(declare-fun tp!33894 () Bool)

(declare-fun e!246860 () Bool)

(assert (=> mapNonEmpty!17532 (= mapRes!17532 (and tp!33894 e!246860))))

(declare-datatypes ((V!15247 0))(
  ( (V!15248 (val!5348 Int)) )
))
(declare-datatypes ((ValueCell!4960 0))(
  ( (ValueCellFull!4960 (v!7591 V!15247)) (EmptyCell!4960) )
))
(declare-datatypes ((array!25055 0))(
  ( (array!25056 (arr!11974 (Array (_ BitVec 32) ValueCell!4960)) (size!12326 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25055)

(declare-fun mapKey!17532 () (_ BitVec 32))

(declare-fun mapValue!17532 () ValueCell!4960)

(declare-fun mapRest!17532 () (Array (_ BitVec 32) ValueCell!4960))

(assert (=> mapNonEmpty!17532 (= (arr!11974 _values!549) (store mapRest!17532 mapKey!17532 mapValue!17532))))

(declare-fun mapIsEmpty!17532 () Bool)

(assert (=> mapIsEmpty!17532 mapRes!17532))

(declare-fun b!412651 () Bool)

(declare-fun res!239770 () Bool)

(assert (=> b!412651 (=> (not res!239770) (not e!246863))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412651 (= res!239770 (validMask!0 mask!1025))))

(declare-fun b!412652 () Bool)

(declare-fun res!239772 () Bool)

(assert (=> b!412652 (=> (not res!239772) (not e!246863))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412652 (= res!239772 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!412653 () Bool)

(assert (=> b!412653 (= e!246861 false)))

(declare-fun minValue!515 () V!15247)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!189524 () array!25053)

(declare-fun zeroValue!515 () V!15247)

(declare-fun v!412 () V!15247)

(declare-datatypes ((tuple2!6864 0))(
  ( (tuple2!6865 (_1!3442 (_ BitVec 64)) (_2!3442 V!15247)) )
))
(declare-datatypes ((List!6926 0))(
  ( (Nil!6923) (Cons!6922 (h!7778 tuple2!6864) (t!12108 List!6926)) )
))
(declare-datatypes ((ListLongMap!5791 0))(
  ( (ListLongMap!5792 (toList!2911 List!6926)) )
))
(declare-fun lt!189523 () ListLongMap!5791)

(declare-fun getCurrentListMapNoExtraKeys!1121 (array!25053 array!25055 (_ BitVec 32) (_ BitVec 32) V!15247 V!15247 (_ BitVec 32) Int) ListLongMap!5791)

(assert (=> b!412653 (= lt!189523 (getCurrentListMapNoExtraKeys!1121 lt!189524 (array!25056 (store (arr!11974 _values!549) i!563 (ValueCellFull!4960 v!412)) (size!12326 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189525 () ListLongMap!5791)

(assert (=> b!412653 (= lt!189525 (getCurrentListMapNoExtraKeys!1121 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412654 () Bool)

(assert (=> b!412654 (= e!246860 tp_is_empty!10607)))

(declare-fun b!412656 () Bool)

(declare-fun res!239778 () Bool)

(assert (=> b!412656 (=> (not res!239778) (not e!246863))))

(assert (=> b!412656 (= res!239778 (and (= (size!12326 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12325 _keys!709) (size!12326 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!412657 () Bool)

(assert (=> b!412657 (= e!246863 e!246861)))

(declare-fun res!239767 () Bool)

(assert (=> b!412657 (=> (not res!239767) (not e!246861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25053 (_ BitVec 32)) Bool)

(assert (=> b!412657 (= res!239767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189524 mask!1025))))

(assert (=> b!412657 (= lt!189524 (array!25054 (store (arr!11973 _keys!709) i!563 k!794) (size!12325 _keys!709)))))

(declare-fun b!412658 () Bool)

(declare-fun res!239771 () Bool)

(assert (=> b!412658 (=> (not res!239771) (not e!246863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412658 (= res!239771 (validKeyInArray!0 k!794))))

(declare-fun b!412659 () Bool)

(declare-fun res!239768 () Bool)

(assert (=> b!412659 (=> (not res!239768) (not e!246863))))

(declare-datatypes ((List!6927 0))(
  ( (Nil!6924) (Cons!6923 (h!7779 (_ BitVec 64)) (t!12109 List!6927)) )
))
(declare-fun arrayNoDuplicates!0 (array!25053 (_ BitVec 32) List!6927) Bool)

(assert (=> b!412659 (= res!239768 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6924))))

(declare-fun b!412660 () Bool)

(declare-fun res!239769 () Bool)

(assert (=> b!412660 (=> (not res!239769) (not e!246861))))

(assert (=> b!412660 (= res!239769 (arrayNoDuplicates!0 lt!189524 #b00000000000000000000000000000000 Nil!6924))))

(declare-fun b!412661 () Bool)

(declare-fun res!239773 () Bool)

(assert (=> b!412661 (=> (not res!239773) (not e!246863))))

(assert (=> b!412661 (= res!239773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!239776 () Bool)

(assert (=> start!39196 (=> (not res!239776) (not e!246863))))

(assert (=> start!39196 (= res!239776 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12325 _keys!709))))))

(assert (=> start!39196 e!246863))

(assert (=> start!39196 tp_is_empty!10607))

(assert (=> start!39196 tp!33893))

(assert (=> start!39196 true))

(declare-fun e!246864 () Bool)

(declare-fun array_inv!8728 (array!25055) Bool)

(assert (=> start!39196 (and (array_inv!8728 _values!549) e!246864)))

(declare-fun array_inv!8729 (array!25053) Bool)

(assert (=> start!39196 (array_inv!8729 _keys!709)))

(declare-fun b!412655 () Bool)

(assert (=> b!412655 (= e!246864 (and e!246865 mapRes!17532))))

(declare-fun condMapEmpty!17532 () Bool)

(declare-fun mapDefault!17532 () ValueCell!4960)


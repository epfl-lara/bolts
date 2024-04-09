; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39534 () Bool)

(assert start!39534)

(declare-fun b_free!9793 () Bool)

(declare-fun b_next!9793 () Bool)

(assert (=> start!39534 (= b_free!9793 (not b_next!9793))))

(declare-fun tp!34908 () Bool)

(declare-fun b_and!17467 () Bool)

(assert (=> start!39534 (= tp!34908 b_and!17467)))

(declare-fun b!422394 () Bool)

(declare-fun res!246760 () Bool)

(declare-fun e!251290 () Bool)

(assert (=> b!422394 (=> (not res!246760) (not e!251290))))

(declare-datatypes ((array!25717 0))(
  ( (array!25718 (arr!12305 (Array (_ BitVec 32) (_ BitVec 64))) (size!12657 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25717)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15699 0))(
  ( (V!15700 (val!5517 Int)) )
))
(declare-datatypes ((ValueCell!5129 0))(
  ( (ValueCellFull!5129 (v!7760 V!15699)) (EmptyCell!5129) )
))
(declare-datatypes ((array!25719 0))(
  ( (array!25720 (arr!12306 (Array (_ BitVec 32) ValueCell!5129)) (size!12658 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25719)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!422394 (= res!246760 (and (= (size!12658 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12657 _keys!709) (size!12658 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422395 () Bool)

(declare-fun res!246755 () Bool)

(assert (=> b!422395 (=> (not res!246755) (not e!251290))))

(declare-datatypes ((List!7214 0))(
  ( (Nil!7211) (Cons!7210 (h!8066 (_ BitVec 64)) (t!12666 List!7214)) )
))
(declare-fun arrayNoDuplicates!0 (array!25717 (_ BitVec 32) List!7214) Bool)

(assert (=> b!422395 (= res!246755 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7211))))

(declare-fun b!422396 () Bool)

(declare-fun e!251291 () Bool)

(assert (=> b!422396 (= e!251291 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15699)

(declare-fun zeroValue!515 () V!15699)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!193962 () array!25717)

(declare-datatypes ((tuple2!7170 0))(
  ( (tuple2!7171 (_1!3595 (_ BitVec 64)) (_2!3595 V!15699)) )
))
(declare-datatypes ((List!7215 0))(
  ( (Nil!7212) (Cons!7211 (h!8067 tuple2!7170) (t!12667 List!7215)) )
))
(declare-datatypes ((ListLongMap!6097 0))(
  ( (ListLongMap!6098 (toList!3064 List!7215)) )
))
(declare-fun lt!193960 () ListLongMap!6097)

(declare-fun v!412 () V!15699)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1265 (array!25717 array!25719 (_ BitVec 32) (_ BitVec 32) V!15699 V!15699 (_ BitVec 32) Int) ListLongMap!6097)

(assert (=> b!422396 (= lt!193960 (getCurrentListMapNoExtraKeys!1265 lt!193962 (array!25720 (store (arr!12306 _values!549) i!563 (ValueCellFull!5129 v!412)) (size!12658 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!193961 () ListLongMap!6097)

(assert (=> b!422396 (= lt!193961 (getCurrentListMapNoExtraKeys!1265 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422397 () Bool)

(declare-fun res!246753 () Bool)

(assert (=> b!422397 (=> (not res!246753) (not e!251290))))

(assert (=> b!422397 (= res!246753 (or (= (select (arr!12305 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12305 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422398 () Bool)

(assert (=> b!422398 (= e!251290 e!251291)))

(declare-fun res!246756 () Bool)

(assert (=> b!422398 (=> (not res!246756) (not e!251291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25717 (_ BitVec 32)) Bool)

(assert (=> b!422398 (= res!246756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193962 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!422398 (= lt!193962 (array!25718 (store (arr!12305 _keys!709) i!563 k!794) (size!12657 _keys!709)))))

(declare-fun mapNonEmpty!18039 () Bool)

(declare-fun mapRes!18039 () Bool)

(declare-fun tp!34907 () Bool)

(declare-fun e!251292 () Bool)

(assert (=> mapNonEmpty!18039 (= mapRes!18039 (and tp!34907 e!251292))))

(declare-fun mapKey!18039 () (_ BitVec 32))

(declare-fun mapValue!18039 () ValueCell!5129)

(declare-fun mapRest!18039 () (Array (_ BitVec 32) ValueCell!5129))

(assert (=> mapNonEmpty!18039 (= (arr!12306 _values!549) (store mapRest!18039 mapKey!18039 mapValue!18039))))

(declare-fun res!246761 () Bool)

(assert (=> start!39534 (=> (not res!246761) (not e!251290))))

(assert (=> start!39534 (= res!246761 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12657 _keys!709))))))

(assert (=> start!39534 e!251290))

(declare-fun tp_is_empty!10945 () Bool)

(assert (=> start!39534 tp_is_empty!10945))

(assert (=> start!39534 tp!34908))

(assert (=> start!39534 true))

(declare-fun e!251289 () Bool)

(declare-fun array_inv!8964 (array!25719) Bool)

(assert (=> start!39534 (and (array_inv!8964 _values!549) e!251289)))

(declare-fun array_inv!8965 (array!25717) Bool)

(assert (=> start!39534 (array_inv!8965 _keys!709)))

(declare-fun b!422399 () Bool)

(declare-fun res!246757 () Bool)

(assert (=> b!422399 (=> (not res!246757) (not e!251290))))

(assert (=> b!422399 (= res!246757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422400 () Bool)

(declare-fun res!246762 () Bool)

(assert (=> b!422400 (=> (not res!246762) (not e!251291))))

(assert (=> b!422400 (= res!246762 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18039 () Bool)

(assert (=> mapIsEmpty!18039 mapRes!18039))

(declare-fun b!422401 () Bool)

(declare-fun res!246752 () Bool)

(assert (=> b!422401 (=> (not res!246752) (not e!251290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422401 (= res!246752 (validMask!0 mask!1025))))

(declare-fun b!422402 () Bool)

(declare-fun res!246754 () Bool)

(assert (=> b!422402 (=> (not res!246754) (not e!251290))))

(declare-fun arrayContainsKey!0 (array!25717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422402 (= res!246754 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!422403 () Bool)

(declare-fun e!251288 () Bool)

(assert (=> b!422403 (= e!251289 (and e!251288 mapRes!18039))))

(declare-fun condMapEmpty!18039 () Bool)

(declare-fun mapDefault!18039 () ValueCell!5129)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39472 () Bool)

(assert start!39472)

(declare-fun b_free!9731 () Bool)

(declare-fun b_next!9731 () Bool)

(assert (=> start!39472 (= b_free!9731 (not b_next!9731))))

(declare-fun tp!34722 () Bool)

(declare-fun b_and!17355 () Bool)

(assert (=> start!39472 (= tp!34722 b_and!17355)))

(declare-fun b!420657 () Bool)

(declare-fun res!245491 () Bool)

(declare-fun e!250512 () Bool)

(assert (=> b!420657 (=> (not res!245491) (not e!250512))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420657 (= res!245491 (bvsle from!863 i!563))))

(declare-fun b!420658 () Bool)

(declare-fun res!245489 () Bool)

(declare-fun e!250513 () Bool)

(assert (=> b!420658 (=> (not res!245489) (not e!250513))))

(declare-datatypes ((array!25593 0))(
  ( (array!25594 (arr!12243 (Array (_ BitVec 32) (_ BitVec 64))) (size!12595 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25593)

(assert (=> b!420658 (= res!245489 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12595 _keys!709))))))

(declare-fun b!420659 () Bool)

(declare-fun res!245498 () Bool)

(assert (=> b!420659 (=> (not res!245498) (not e!250513))))

(declare-datatypes ((List!7162 0))(
  ( (Nil!7159) (Cons!7158 (h!8014 (_ BitVec 64)) (t!12566 List!7162)) )
))
(declare-fun arrayNoDuplicates!0 (array!25593 (_ BitVec 32) List!7162) Bool)

(assert (=> b!420659 (= res!245498 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7159))))

(declare-fun mapIsEmpty!17946 () Bool)

(declare-fun mapRes!17946 () Bool)

(assert (=> mapIsEmpty!17946 mapRes!17946))

(declare-fun b!420660 () Bool)

(declare-fun res!245494 () Bool)

(assert (=> b!420660 (=> (not res!245494) (not e!250513))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420660 (= res!245494 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!420661 () Bool)

(declare-fun res!245496 () Bool)

(assert (=> b!420661 (=> (not res!245496) (not e!250513))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420661 (= res!245496 (validMask!0 mask!1025))))

(declare-fun b!420662 () Bool)

(declare-fun e!250516 () Bool)

(declare-fun tp_is_empty!10883 () Bool)

(assert (=> b!420662 (= e!250516 tp_is_empty!10883)))

(declare-fun res!245490 () Bool)

(assert (=> start!39472 (=> (not res!245490) (not e!250513))))

(assert (=> start!39472 (= res!245490 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12595 _keys!709))))))

(assert (=> start!39472 e!250513))

(assert (=> start!39472 tp_is_empty!10883))

(assert (=> start!39472 tp!34722))

(assert (=> start!39472 true))

(declare-datatypes ((V!15615 0))(
  ( (V!15616 (val!5486 Int)) )
))
(declare-datatypes ((ValueCell!5098 0))(
  ( (ValueCellFull!5098 (v!7729 V!15615)) (EmptyCell!5098) )
))
(declare-datatypes ((array!25595 0))(
  ( (array!25596 (arr!12244 (Array (_ BitVec 32) ValueCell!5098)) (size!12596 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25595)

(declare-fun e!250511 () Bool)

(declare-fun array_inv!8918 (array!25595) Bool)

(assert (=> start!39472 (and (array_inv!8918 _values!549) e!250511)))

(declare-fun array_inv!8919 (array!25593) Bool)

(assert (=> start!39472 (array_inv!8919 _keys!709)))

(declare-fun b!420663 () Bool)

(declare-fun res!245492 () Bool)

(assert (=> b!420663 (=> (not res!245492) (not e!250512))))

(declare-fun lt!193106 () array!25593)

(assert (=> b!420663 (= res!245492 (arrayNoDuplicates!0 lt!193106 #b00000000000000000000000000000000 Nil!7159))))

(declare-fun b!420664 () Bool)

(declare-fun e!250515 () Bool)

(assert (=> b!420664 (= e!250512 e!250515)))

(declare-fun res!245499 () Bool)

(assert (=> b!420664 (=> (not res!245499) (not e!250515))))

(assert (=> b!420664 (= res!245499 (= from!863 i!563))))

(declare-datatypes ((tuple2!7118 0))(
  ( (tuple2!7119 (_1!3569 (_ BitVec 64)) (_2!3569 V!15615)) )
))
(declare-datatypes ((List!7163 0))(
  ( (Nil!7160) (Cons!7159 (h!8015 tuple2!7118) (t!12567 List!7163)) )
))
(declare-datatypes ((ListLongMap!6045 0))(
  ( (ListLongMap!6046 (toList!3038 List!7163)) )
))
(declare-fun lt!193100 () ListLongMap!6045)

(declare-fun minValue!515 () V!15615)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15615)

(declare-fun lt!193099 () array!25595)

(declare-fun getCurrentListMapNoExtraKeys!1239 (array!25593 array!25595 (_ BitVec 32) (_ BitVec 32) V!15615 V!15615 (_ BitVec 32) Int) ListLongMap!6045)

(assert (=> b!420664 (= lt!193100 (getCurrentListMapNoExtraKeys!1239 lt!193106 lt!193099 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15615)

(assert (=> b!420664 (= lt!193099 (array!25596 (store (arr!12244 _values!549) i!563 (ValueCellFull!5098 v!412)) (size!12596 _values!549)))))

(declare-fun lt!193097 () ListLongMap!6045)

(assert (=> b!420664 (= lt!193097 (getCurrentListMapNoExtraKeys!1239 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!420665 () Bool)

(assert (=> b!420665 (= e!250511 (and e!250516 mapRes!17946))))

(declare-fun condMapEmpty!17946 () Bool)

(declare-fun mapDefault!17946 () ValueCell!5098)


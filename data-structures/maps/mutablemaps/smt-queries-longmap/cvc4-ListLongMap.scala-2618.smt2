; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39538 () Bool)

(assert start!39538)

(declare-fun b_free!9797 () Bool)

(declare-fun b_next!9797 () Bool)

(assert (=> start!39538 (= b_free!9797 (not b_next!9797))))

(declare-fun tp!34919 () Bool)

(declare-fun b_and!17471 () Bool)

(assert (=> start!39538 (= tp!34919 b_and!17471)))

(declare-fun b!422484 () Bool)

(declare-fun res!246826 () Bool)

(declare-fun e!251325 () Bool)

(assert (=> b!422484 (=> (not res!246826) (not e!251325))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422484 (= res!246826 (validKeyInArray!0 k!794))))

(declare-fun b!422485 () Bool)

(declare-fun res!246830 () Bool)

(assert (=> b!422485 (=> (not res!246830) (not e!251325))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422485 (= res!246830 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!18045 () Bool)

(declare-fun mapRes!18045 () Bool)

(assert (=> mapIsEmpty!18045 mapRes!18045))

(declare-fun b!422486 () Bool)

(declare-fun e!251326 () Bool)

(assert (=> b!422486 (= e!251325 e!251326)))

(declare-fun res!246828 () Bool)

(assert (=> b!422486 (=> (not res!246828) (not e!251326))))

(declare-datatypes ((array!25725 0))(
  ( (array!25726 (arr!12309 (Array (_ BitVec 32) (_ BitVec 64))) (size!12661 (_ BitVec 32))) )
))
(declare-fun lt!193978 () array!25725)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25725 (_ BitVec 32)) Bool)

(assert (=> b!422486 (= res!246828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193978 mask!1025))))

(declare-fun _keys!709 () array!25725)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422486 (= lt!193978 (array!25726 (store (arr!12309 _keys!709) i!563 k!794) (size!12661 _keys!709)))))

(declare-fun b!422487 () Bool)

(declare-fun e!251327 () Bool)

(declare-fun tp_is_empty!10949 () Bool)

(assert (=> b!422487 (= e!251327 tp_is_empty!10949)))

(declare-fun mapNonEmpty!18045 () Bool)

(declare-fun tp!34920 () Bool)

(assert (=> mapNonEmpty!18045 (= mapRes!18045 (and tp!34920 e!251327))))

(declare-datatypes ((V!15703 0))(
  ( (V!15704 (val!5519 Int)) )
))
(declare-datatypes ((ValueCell!5131 0))(
  ( (ValueCellFull!5131 (v!7762 V!15703)) (EmptyCell!5131) )
))
(declare-fun mapRest!18045 () (Array (_ BitVec 32) ValueCell!5131))

(declare-datatypes ((array!25727 0))(
  ( (array!25728 (arr!12310 (Array (_ BitVec 32) ValueCell!5131)) (size!12662 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25727)

(declare-fun mapValue!18045 () ValueCell!5131)

(declare-fun mapKey!18045 () (_ BitVec 32))

(assert (=> mapNonEmpty!18045 (= (arr!12310 _values!549) (store mapRest!18045 mapKey!18045 mapValue!18045))))

(declare-fun b!422488 () Bool)

(declare-fun res!246832 () Bool)

(assert (=> b!422488 (=> (not res!246832) (not e!251325))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!422488 (= res!246832 (and (= (size!12662 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12661 _keys!709) (size!12662 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422489 () Bool)

(declare-fun e!251328 () Bool)

(assert (=> b!422489 (= e!251328 tp_is_empty!10949)))

(declare-fun res!246829 () Bool)

(assert (=> start!39538 (=> (not res!246829) (not e!251325))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39538 (= res!246829 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12661 _keys!709))))))

(assert (=> start!39538 e!251325))

(assert (=> start!39538 tp_is_empty!10949))

(assert (=> start!39538 tp!34919))

(assert (=> start!39538 true))

(declare-fun e!251329 () Bool)

(declare-fun array_inv!8968 (array!25727) Bool)

(assert (=> start!39538 (and (array_inv!8968 _values!549) e!251329)))

(declare-fun array_inv!8969 (array!25725) Bool)

(assert (=> start!39538 (array_inv!8969 _keys!709)))

(declare-fun b!422490 () Bool)

(declare-fun res!246831 () Bool)

(assert (=> b!422490 (=> (not res!246831) (not e!251325))))

(declare-fun arrayContainsKey!0 (array!25725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422490 (= res!246831 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!422491 () Bool)

(declare-fun res!246824 () Bool)

(assert (=> b!422491 (=> (not res!246824) (not e!251325))))

(assert (=> b!422491 (= res!246824 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12661 _keys!709))))))

(declare-fun b!422492 () Bool)

(declare-fun res!246825 () Bool)

(assert (=> b!422492 (=> (not res!246825) (not e!251325))))

(declare-datatypes ((List!7218 0))(
  ( (Nil!7215) (Cons!7214 (h!8070 (_ BitVec 64)) (t!12670 List!7218)) )
))
(declare-fun arrayNoDuplicates!0 (array!25725 (_ BitVec 32) List!7218) Bool)

(assert (=> b!422492 (= res!246825 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7215))))

(declare-fun b!422493 () Bool)

(declare-fun res!246823 () Bool)

(assert (=> b!422493 (=> (not res!246823) (not e!251326))))

(assert (=> b!422493 (= res!246823 (bvsle from!863 i!563))))

(declare-fun b!422494 () Bool)

(declare-fun res!246827 () Bool)

(assert (=> b!422494 (=> (not res!246827) (not e!251325))))

(assert (=> b!422494 (= res!246827 (or (= (select (arr!12309 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12309 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422495 () Bool)

(declare-fun res!246833 () Bool)

(assert (=> b!422495 (=> (not res!246833) (not e!251325))))

(assert (=> b!422495 (= res!246833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422496 () Bool)

(declare-fun res!246834 () Bool)

(assert (=> b!422496 (=> (not res!246834) (not e!251326))))

(assert (=> b!422496 (= res!246834 (arrayNoDuplicates!0 lt!193978 #b00000000000000000000000000000000 Nil!7215))))

(declare-fun b!422497 () Bool)

(assert (=> b!422497 (= e!251326 false)))

(declare-fun minValue!515 () V!15703)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15703)

(declare-datatypes ((tuple2!7174 0))(
  ( (tuple2!7175 (_1!3597 (_ BitVec 64)) (_2!3597 V!15703)) )
))
(declare-datatypes ((List!7219 0))(
  ( (Nil!7216) (Cons!7215 (h!8071 tuple2!7174) (t!12671 List!7219)) )
))
(declare-datatypes ((ListLongMap!6101 0))(
  ( (ListLongMap!6102 (toList!3066 List!7219)) )
))
(declare-fun lt!193979 () ListLongMap!6101)

(declare-fun v!412 () V!15703)

(declare-fun getCurrentListMapNoExtraKeys!1267 (array!25725 array!25727 (_ BitVec 32) (_ BitVec 32) V!15703 V!15703 (_ BitVec 32) Int) ListLongMap!6101)

(assert (=> b!422497 (= lt!193979 (getCurrentListMapNoExtraKeys!1267 lt!193978 (array!25728 (store (arr!12310 _values!549) i!563 (ValueCellFull!5131 v!412)) (size!12662 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!193980 () ListLongMap!6101)

(assert (=> b!422497 (= lt!193980 (getCurrentListMapNoExtraKeys!1267 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422498 () Bool)

(assert (=> b!422498 (= e!251329 (and e!251328 mapRes!18045))))

(declare-fun condMapEmpty!18045 () Bool)

(declare-fun mapDefault!18045 () ValueCell!5131)


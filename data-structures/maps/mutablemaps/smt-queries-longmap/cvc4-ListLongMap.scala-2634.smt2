; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39634 () Bool)

(assert start!39634)

(declare-fun b_free!9893 () Bool)

(declare-fun b_next!9893 () Bool)

(assert (=> start!39634 (= b_free!9893 (not b_next!9893))))

(declare-fun tp!35207 () Bool)

(declare-fun b_and!17567 () Bool)

(assert (=> start!39634 (= tp!35207 b_and!17567)))

(declare-fun b!424652 () Bool)

(declare-fun e!252196 () Bool)

(assert (=> b!424652 (= e!252196 (not true))))

(declare-datatypes ((V!15831 0))(
  ( (V!15832 (val!5567 Int)) )
))
(declare-fun minValue!515 () V!15831)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5179 0))(
  ( (ValueCellFull!5179 (v!7810 V!15831)) (EmptyCell!5179) )
))
(declare-datatypes ((array!25917 0))(
  ( (array!25918 (arr!12405 (Array (_ BitVec 32) ValueCell!5179)) (size!12757 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25917)

(declare-fun zeroValue!515 () V!15831)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!25919 0))(
  ( (array!25920 (arr!12406 (Array (_ BitVec 32) (_ BitVec 64))) (size!12758 (_ BitVec 32))) )
))
(declare-fun lt!194430 () array!25919)

(declare-fun lt!194429 () array!25917)

(declare-fun v!412 () V!15831)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25919)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7246 0))(
  ( (tuple2!7247 (_1!3633 (_ BitVec 64)) (_2!3633 V!15831)) )
))
(declare-datatypes ((List!7291 0))(
  ( (Nil!7288) (Cons!7287 (h!8143 tuple2!7246) (t!12743 List!7291)) )
))
(declare-datatypes ((ListLongMap!6173 0))(
  ( (ListLongMap!6174 (toList!3102 List!7291)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1303 (array!25919 array!25917 (_ BitVec 32) (_ BitVec 32) V!15831 V!15831 (_ BitVec 32) Int) ListLongMap!6173)

(declare-fun +!1265 (ListLongMap!6173 tuple2!7246) ListLongMap!6173)

(assert (=> b!424652 (= (getCurrentListMapNoExtraKeys!1303 lt!194430 lt!194429 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1265 (getCurrentListMapNoExtraKeys!1303 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7247 k!794 v!412)))))

(declare-datatypes ((Unit!12433 0))(
  ( (Unit!12434) )
))
(declare-fun lt!194427 () Unit!12433)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!467 (array!25919 array!25917 (_ BitVec 32) (_ BitVec 32) V!15831 V!15831 (_ BitVec 32) (_ BitVec 64) V!15831 (_ BitVec 32) Int) Unit!12433)

(assert (=> b!424652 (= lt!194427 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!467 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!424653 () Bool)

(declare-fun res!248571 () Bool)

(declare-fun e!252201 () Bool)

(assert (=> b!424653 (=> (not res!248571) (not e!252201))))

(declare-datatypes ((List!7292 0))(
  ( (Nil!7289) (Cons!7288 (h!8144 (_ BitVec 64)) (t!12744 List!7292)) )
))
(declare-fun arrayNoDuplicates!0 (array!25919 (_ BitVec 32) List!7292) Bool)

(assert (=> b!424653 (= res!248571 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7289))))

(declare-fun mapIsEmpty!18189 () Bool)

(declare-fun mapRes!18189 () Bool)

(assert (=> mapIsEmpty!18189 mapRes!18189))

(declare-fun b!424654 () Bool)

(declare-fun res!248563 () Bool)

(declare-fun e!252198 () Bool)

(assert (=> b!424654 (=> (not res!248563) (not e!252198))))

(assert (=> b!424654 (= res!248563 (bvsle from!863 i!563))))

(declare-fun b!424655 () Bool)

(declare-fun res!248565 () Bool)

(assert (=> b!424655 (=> (not res!248565) (not e!252201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25919 (_ BitVec 32)) Bool)

(assert (=> b!424655 (= res!248565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424656 () Bool)

(declare-fun res!248559 () Bool)

(assert (=> b!424656 (=> (not res!248559) (not e!252201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424656 (= res!248559 (validKeyInArray!0 k!794))))

(declare-fun b!424657 () Bool)

(declare-fun e!252202 () Bool)

(declare-fun tp_is_empty!11045 () Bool)

(assert (=> b!424657 (= e!252202 tp_is_empty!11045)))

(declare-fun res!248568 () Bool)

(assert (=> start!39634 (=> (not res!248568) (not e!252201))))

(assert (=> start!39634 (= res!248568 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12758 _keys!709))))))

(assert (=> start!39634 e!252201))

(assert (=> start!39634 tp_is_empty!11045))

(assert (=> start!39634 tp!35207))

(assert (=> start!39634 true))

(declare-fun e!252197 () Bool)

(declare-fun array_inv!9044 (array!25917) Bool)

(assert (=> start!39634 (and (array_inv!9044 _values!549) e!252197)))

(declare-fun array_inv!9045 (array!25919) Bool)

(assert (=> start!39634 (array_inv!9045 _keys!709)))

(declare-fun b!424658 () Bool)

(assert (=> b!424658 (= e!252201 e!252198)))

(declare-fun res!248566 () Bool)

(assert (=> b!424658 (=> (not res!248566) (not e!252198))))

(assert (=> b!424658 (= res!248566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194430 mask!1025))))

(assert (=> b!424658 (= lt!194430 (array!25920 (store (arr!12406 _keys!709) i!563 k!794) (size!12758 _keys!709)))))

(declare-fun mapNonEmpty!18189 () Bool)

(declare-fun tp!35208 () Bool)

(assert (=> mapNonEmpty!18189 (= mapRes!18189 (and tp!35208 e!252202))))

(declare-fun mapKey!18189 () (_ BitVec 32))

(declare-fun mapRest!18189 () (Array (_ BitVec 32) ValueCell!5179))

(declare-fun mapValue!18189 () ValueCell!5179)

(assert (=> mapNonEmpty!18189 (= (arr!12405 _values!549) (store mapRest!18189 mapKey!18189 mapValue!18189))))

(declare-fun b!424659 () Bool)

(declare-fun res!248560 () Bool)

(assert (=> b!424659 (=> (not res!248560) (not e!252201))))

(declare-fun arrayContainsKey!0 (array!25919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424659 (= res!248560 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!424660 () Bool)

(declare-fun res!248561 () Bool)

(assert (=> b!424660 (=> (not res!248561) (not e!252201))))

(assert (=> b!424660 (= res!248561 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12758 _keys!709))))))

(declare-fun b!424661 () Bool)

(assert (=> b!424661 (= e!252198 e!252196)))

(declare-fun res!248569 () Bool)

(assert (=> b!424661 (=> (not res!248569) (not e!252196))))

(assert (=> b!424661 (= res!248569 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194426 () ListLongMap!6173)

(assert (=> b!424661 (= lt!194426 (getCurrentListMapNoExtraKeys!1303 lt!194430 lt!194429 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!424661 (= lt!194429 (array!25918 (store (arr!12405 _values!549) i!563 (ValueCellFull!5179 v!412)) (size!12757 _values!549)))))

(declare-fun lt!194428 () ListLongMap!6173)

(assert (=> b!424661 (= lt!194428 (getCurrentListMapNoExtraKeys!1303 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424662 () Bool)

(declare-fun res!248562 () Bool)

(assert (=> b!424662 (=> (not res!248562) (not e!252198))))

(assert (=> b!424662 (= res!248562 (arrayNoDuplicates!0 lt!194430 #b00000000000000000000000000000000 Nil!7289))))

(declare-fun b!424663 () Bool)

(declare-fun res!248570 () Bool)

(assert (=> b!424663 (=> (not res!248570) (not e!252201))))

(assert (=> b!424663 (= res!248570 (or (= (select (arr!12406 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12406 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424664 () Bool)

(declare-fun res!248564 () Bool)

(assert (=> b!424664 (=> (not res!248564) (not e!252201))))

(assert (=> b!424664 (= res!248564 (and (= (size!12757 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12758 _keys!709) (size!12757 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424665 () Bool)

(declare-fun e!252200 () Bool)

(assert (=> b!424665 (= e!252200 tp_is_empty!11045)))

(declare-fun b!424666 () Bool)

(declare-fun res!248567 () Bool)

(assert (=> b!424666 (=> (not res!248567) (not e!252201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424666 (= res!248567 (validMask!0 mask!1025))))

(declare-fun b!424667 () Bool)

(assert (=> b!424667 (= e!252197 (and e!252200 mapRes!18189))))

(declare-fun condMapEmpty!18189 () Bool)

(declare-fun mapDefault!18189 () ValueCell!5179)


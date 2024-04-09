; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39638 () Bool)

(assert start!39638)

(declare-fun b_free!9897 () Bool)

(declare-fun b_next!9897 () Bool)

(assert (=> start!39638 (= b_free!9897 (not b_next!9897))))

(declare-fun tp!35219 () Bool)

(declare-fun b_and!17571 () Bool)

(assert (=> start!39638 (= tp!35219 b_and!17571)))

(declare-fun b!424748 () Bool)

(declare-fun res!248644 () Bool)

(declare-fun e!252243 () Bool)

(assert (=> b!424748 (=> (not res!248644) (not e!252243))))

(declare-datatypes ((array!25925 0))(
  ( (array!25926 (arr!12409 (Array (_ BitVec 32) (_ BitVec 64))) (size!12761 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25925)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424748 (= res!248644 (or (= (select (arr!12409 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12409 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424749 () Bool)

(declare-fun e!252244 () Bool)

(assert (=> b!424749 (= e!252244 (not true))))

(declare-datatypes ((V!15837 0))(
  ( (V!15838 (val!5569 Int)) )
))
(declare-fun minValue!515 () V!15837)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!194457 () array!25925)

(declare-datatypes ((ValueCell!5181 0))(
  ( (ValueCellFull!5181 (v!7812 V!15837)) (EmptyCell!5181) )
))
(declare-datatypes ((array!25927 0))(
  ( (array!25928 (arr!12410 (Array (_ BitVec 32) ValueCell!5181)) (size!12762 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25927)

(declare-fun zeroValue!515 () V!15837)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!194459 () array!25927)

(declare-fun v!412 () V!15837)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7250 0))(
  ( (tuple2!7251 (_1!3635 (_ BitVec 64)) (_2!3635 V!15837)) )
))
(declare-datatypes ((List!7295 0))(
  ( (Nil!7292) (Cons!7291 (h!8147 tuple2!7250) (t!12747 List!7295)) )
))
(declare-datatypes ((ListLongMap!6177 0))(
  ( (ListLongMap!6178 (toList!3104 List!7295)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1305 (array!25925 array!25927 (_ BitVec 32) (_ BitVec 32) V!15837 V!15837 (_ BitVec 32) Int) ListLongMap!6177)

(declare-fun +!1266 (ListLongMap!6177 tuple2!7250) ListLongMap!6177)

(assert (=> b!424749 (= (getCurrentListMapNoExtraKeys!1305 lt!194457 lt!194459 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1266 (getCurrentListMapNoExtraKeys!1305 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7251 k0!794 v!412)))))

(declare-datatypes ((Unit!12435 0))(
  ( (Unit!12436) )
))
(declare-fun lt!194460 () Unit!12435)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!468 (array!25925 array!25927 (_ BitVec 32) (_ BitVec 32) V!15837 V!15837 (_ BitVec 32) (_ BitVec 64) V!15837 (_ BitVec 32) Int) Unit!12435)

(assert (=> b!424749 (= lt!194460 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!468 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!424750 () Bool)

(declare-fun res!248648 () Bool)

(assert (=> b!424750 (=> (not res!248648) (not e!252243))))

(declare-fun arrayContainsKey!0 (array!25925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424750 (= res!248648 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!424751 () Bool)

(declare-fun res!248639 () Bool)

(assert (=> b!424751 (=> (not res!248639) (not e!252243))))

(assert (=> b!424751 (= res!248639 (and (= (size!12762 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12761 _keys!709) (size!12762 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424752 () Bool)

(declare-fun res!248646 () Bool)

(assert (=> b!424752 (=> (not res!248646) (not e!252243))))

(assert (=> b!424752 (= res!248646 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12761 _keys!709))))))

(declare-fun b!424753 () Bool)

(declare-fun res!248642 () Bool)

(assert (=> b!424753 (=> (not res!248642) (not e!252243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25925 (_ BitVec 32)) Bool)

(assert (=> b!424753 (= res!248642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424754 () Bool)

(declare-fun e!252241 () Bool)

(declare-fun tp_is_empty!11049 () Bool)

(assert (=> b!424754 (= e!252241 tp_is_empty!11049)))

(declare-fun b!424755 () Bool)

(declare-fun e!252238 () Bool)

(declare-fun mapRes!18195 () Bool)

(assert (=> b!424755 (= e!252238 (and e!252241 mapRes!18195))))

(declare-fun condMapEmpty!18195 () Bool)

(declare-fun mapDefault!18195 () ValueCell!5181)

(assert (=> b!424755 (= condMapEmpty!18195 (= (arr!12410 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5181)) mapDefault!18195)))))

(declare-fun res!248638 () Bool)

(assert (=> start!39638 (=> (not res!248638) (not e!252243))))

(assert (=> start!39638 (= res!248638 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12761 _keys!709))))))

(assert (=> start!39638 e!252243))

(assert (=> start!39638 tp_is_empty!11049))

(assert (=> start!39638 tp!35219))

(assert (=> start!39638 true))

(declare-fun array_inv!9048 (array!25927) Bool)

(assert (=> start!39638 (and (array_inv!9048 _values!549) e!252238)))

(declare-fun array_inv!9049 (array!25925) Bool)

(assert (=> start!39638 (array_inv!9049 _keys!709)))

(declare-fun b!424756 () Bool)

(declare-fun res!248643 () Bool)

(assert (=> b!424756 (=> (not res!248643) (not e!252243))))

(declare-datatypes ((List!7296 0))(
  ( (Nil!7293) (Cons!7292 (h!8148 (_ BitVec 64)) (t!12748 List!7296)) )
))
(declare-fun arrayNoDuplicates!0 (array!25925 (_ BitVec 32) List!7296) Bool)

(assert (=> b!424756 (= res!248643 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7293))))

(declare-fun b!424757 () Bool)

(declare-fun res!248641 () Bool)

(declare-fun e!252242 () Bool)

(assert (=> b!424757 (=> (not res!248641) (not e!252242))))

(assert (=> b!424757 (= res!248641 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18195 () Bool)

(declare-fun tp!35220 () Bool)

(declare-fun e!252240 () Bool)

(assert (=> mapNonEmpty!18195 (= mapRes!18195 (and tp!35220 e!252240))))

(declare-fun mapRest!18195 () (Array (_ BitVec 32) ValueCell!5181))

(declare-fun mapKey!18195 () (_ BitVec 32))

(declare-fun mapValue!18195 () ValueCell!5181)

(assert (=> mapNonEmpty!18195 (= (arr!12410 _values!549) (store mapRest!18195 mapKey!18195 mapValue!18195))))

(declare-fun b!424758 () Bool)

(assert (=> b!424758 (= e!252240 tp_is_empty!11049)))

(declare-fun b!424759 () Bool)

(declare-fun res!248649 () Bool)

(assert (=> b!424759 (=> (not res!248649) (not e!252243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424759 (= res!248649 (validMask!0 mask!1025))))

(declare-fun b!424760 () Bool)

(declare-fun res!248645 () Bool)

(assert (=> b!424760 (=> (not res!248645) (not e!252243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424760 (= res!248645 (validKeyInArray!0 k0!794))))

(declare-fun b!424761 () Bool)

(assert (=> b!424761 (= e!252242 e!252244)))

(declare-fun res!248640 () Bool)

(assert (=> b!424761 (=> (not res!248640) (not e!252244))))

(assert (=> b!424761 (= res!248640 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194458 () ListLongMap!6177)

(assert (=> b!424761 (= lt!194458 (getCurrentListMapNoExtraKeys!1305 lt!194457 lt!194459 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!424761 (= lt!194459 (array!25928 (store (arr!12410 _values!549) i!563 (ValueCellFull!5181 v!412)) (size!12762 _values!549)))))

(declare-fun lt!194456 () ListLongMap!6177)

(assert (=> b!424761 (= lt!194456 (getCurrentListMapNoExtraKeys!1305 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424762 () Bool)

(assert (=> b!424762 (= e!252243 e!252242)))

(declare-fun res!248637 () Bool)

(assert (=> b!424762 (=> (not res!248637) (not e!252242))))

(assert (=> b!424762 (= res!248637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194457 mask!1025))))

(assert (=> b!424762 (= lt!194457 (array!25926 (store (arr!12409 _keys!709) i!563 k0!794) (size!12761 _keys!709)))))

(declare-fun mapIsEmpty!18195 () Bool)

(assert (=> mapIsEmpty!18195 mapRes!18195))

(declare-fun b!424763 () Bool)

(declare-fun res!248647 () Bool)

(assert (=> b!424763 (=> (not res!248647) (not e!252242))))

(assert (=> b!424763 (= res!248647 (arrayNoDuplicates!0 lt!194457 #b00000000000000000000000000000000 Nil!7293))))

(assert (= (and start!39638 res!248638) b!424759))

(assert (= (and b!424759 res!248649) b!424751))

(assert (= (and b!424751 res!248639) b!424753))

(assert (= (and b!424753 res!248642) b!424756))

(assert (= (and b!424756 res!248643) b!424752))

(assert (= (and b!424752 res!248646) b!424760))

(assert (= (and b!424760 res!248645) b!424748))

(assert (= (and b!424748 res!248644) b!424750))

(assert (= (and b!424750 res!248648) b!424762))

(assert (= (and b!424762 res!248637) b!424763))

(assert (= (and b!424763 res!248647) b!424757))

(assert (= (and b!424757 res!248641) b!424761))

(assert (= (and b!424761 res!248640) b!424749))

(assert (= (and b!424755 condMapEmpty!18195) mapIsEmpty!18195))

(assert (= (and b!424755 (not condMapEmpty!18195)) mapNonEmpty!18195))

(get-info :version)

(assert (= (and mapNonEmpty!18195 ((_ is ValueCellFull!5181) mapValue!18195)) b!424758))

(assert (= (and b!424755 ((_ is ValueCellFull!5181) mapDefault!18195)) b!424754))

(assert (= start!39638 b!424755))

(declare-fun m!413787 () Bool)

(assert (=> b!424756 m!413787))

(declare-fun m!413789 () Bool)

(assert (=> b!424753 m!413789))

(declare-fun m!413791 () Bool)

(assert (=> start!39638 m!413791))

(declare-fun m!413793 () Bool)

(assert (=> start!39638 m!413793))

(declare-fun m!413795 () Bool)

(assert (=> b!424750 m!413795))

(declare-fun m!413797 () Bool)

(assert (=> b!424749 m!413797))

(declare-fun m!413799 () Bool)

(assert (=> b!424749 m!413799))

(assert (=> b!424749 m!413799))

(declare-fun m!413801 () Bool)

(assert (=> b!424749 m!413801))

(declare-fun m!413803 () Bool)

(assert (=> b!424749 m!413803))

(declare-fun m!413805 () Bool)

(assert (=> b!424763 m!413805))

(declare-fun m!413807 () Bool)

(assert (=> b!424759 m!413807))

(declare-fun m!413809 () Bool)

(assert (=> b!424760 m!413809))

(declare-fun m!413811 () Bool)

(assert (=> b!424762 m!413811))

(declare-fun m!413813 () Bool)

(assert (=> b!424762 m!413813))

(declare-fun m!413815 () Bool)

(assert (=> mapNonEmpty!18195 m!413815))

(declare-fun m!413817 () Bool)

(assert (=> b!424748 m!413817))

(declare-fun m!413819 () Bool)

(assert (=> b!424761 m!413819))

(declare-fun m!413821 () Bool)

(assert (=> b!424761 m!413821))

(declare-fun m!413823 () Bool)

(assert (=> b!424761 m!413823))

(check-sat (not b!424756) (not mapNonEmpty!18195) b_and!17571 (not b!424753) (not b!424759) (not b!424750) (not b!424761) (not b!424763) (not b_next!9897) tp_is_empty!11049 (not b!424760) (not b!424762) (not start!39638) (not b!424749))
(check-sat b_and!17571 (not b_next!9897))

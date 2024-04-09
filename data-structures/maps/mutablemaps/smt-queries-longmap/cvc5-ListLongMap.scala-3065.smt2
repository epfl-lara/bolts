; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43240 () Bool)

(assert start!43240)

(declare-fun b!478881 () Bool)

(declare-fun res!285741 () Bool)

(declare-fun e!281699 () Bool)

(assert (=> b!478881 (=> (not res!285741) (not e!281699))))

(declare-datatypes ((array!30881 0))(
  ( (array!30882 (arr!14845 (Array (_ BitVec 32) (_ BitVec 64))) (size!15203 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30881)

(declare-datatypes ((List!9110 0))(
  ( (Nil!9107) (Cons!9106 (h!9962 (_ BitVec 64)) (t!15324 List!9110)) )
))
(declare-fun arrayNoDuplicates!0 (array!30881 (_ BitVec 32) List!9110) Bool)

(assert (=> b!478881 (= res!285741 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9107))))

(declare-fun mapIsEmpty!22126 () Bool)

(declare-fun mapRes!22126 () Bool)

(assert (=> mapIsEmpty!22126 mapRes!22126))

(declare-fun b!478883 () Bool)

(declare-fun res!285744 () Bool)

(assert (=> b!478883 (=> (not res!285744) (not e!281699))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19233 0))(
  ( (V!19234 (val!6858 Int)) )
))
(declare-datatypes ((ValueCell!6449 0))(
  ( (ValueCellFull!6449 (v!9143 V!19233)) (EmptyCell!6449) )
))
(declare-datatypes ((array!30883 0))(
  ( (array!30884 (arr!14846 (Array (_ BitVec 32) ValueCell!6449)) (size!15204 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30883)

(assert (=> b!478883 (= res!285744 (and (= (size!15204 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15203 _keys!1874) (size!15204 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22126 () Bool)

(declare-fun tp!42601 () Bool)

(declare-fun e!281700 () Bool)

(assert (=> mapNonEmpty!22126 (= mapRes!22126 (and tp!42601 e!281700))))

(declare-fun mapKey!22126 () (_ BitVec 32))

(declare-fun mapRest!22126 () (Array (_ BitVec 32) ValueCell!6449))

(declare-fun mapValue!22126 () ValueCell!6449)

(assert (=> mapNonEmpty!22126 (= (arr!14846 _values!1516) (store mapRest!22126 mapKey!22126 mapValue!22126))))

(declare-fun b!478884 () Bool)

(declare-fun e!281698 () Bool)

(declare-fun tp_is_empty!13621 () Bool)

(assert (=> b!478884 (= e!281698 tp_is_empty!13621)))

(declare-fun b!478885 () Bool)

(declare-fun res!285742 () Bool)

(assert (=> b!478885 (=> (not res!285742) (not e!281699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30881 (_ BitVec 32)) Bool)

(assert (=> b!478885 (= res!285742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478882 () Bool)

(declare-fun e!281701 () Bool)

(assert (=> b!478882 (= e!281701 (and e!281698 mapRes!22126))))

(declare-fun condMapEmpty!22126 () Bool)

(declare-fun mapDefault!22126 () ValueCell!6449)


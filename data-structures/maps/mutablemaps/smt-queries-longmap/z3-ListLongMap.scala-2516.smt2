; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38924 () Bool)

(assert start!38924)

(declare-fun b!406859 () Bool)

(declare-fun res!235205 () Bool)

(declare-fun e!244413 () Bool)

(assert (=> b!406859 (=> (not res!235205) (not e!244413))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406859 (= res!235205 (validKeyInArray!0 k0!794))))

(declare-fun b!406860 () Bool)

(declare-fun res!235208 () Bool)

(assert (=> b!406860 (=> (not res!235208) (not e!244413))))

(declare-datatypes ((array!24525 0))(
  ( (array!24526 (arr!11709 (Array (_ BitVec 32) (_ BitVec 64))) (size!12061 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24525)

(declare-datatypes ((List!6774 0))(
  ( (Nil!6771) (Cons!6770 (h!7626 (_ BitVec 64)) (t!11956 List!6774)) )
))
(declare-fun arrayNoDuplicates!0 (array!24525 (_ BitVec 32) List!6774) Bool)

(assert (=> b!406860 (= res!235208 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6771))))

(declare-fun res!235210 () Bool)

(assert (=> start!38924 (=> (not res!235210) (not e!244413))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38924 (= res!235210 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12061 _keys!709))))))

(assert (=> start!38924 e!244413))

(assert (=> start!38924 true))

(declare-datatypes ((V!14885 0))(
  ( (V!14886 (val!5212 Int)) )
))
(declare-datatypes ((ValueCell!4824 0))(
  ( (ValueCellFull!4824 (v!7455 V!14885)) (EmptyCell!4824) )
))
(declare-datatypes ((array!24527 0))(
  ( (array!24528 (arr!11710 (Array (_ BitVec 32) ValueCell!4824)) (size!12062 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24527)

(declare-fun e!244416 () Bool)

(declare-fun array_inv!8554 (array!24527) Bool)

(assert (=> start!38924 (and (array_inv!8554 _values!549) e!244416)))

(declare-fun array_inv!8555 (array!24525) Bool)

(assert (=> start!38924 (array_inv!8555 _keys!709)))

(declare-fun b!406861 () Bool)

(declare-fun e!244412 () Bool)

(assert (=> b!406861 (= e!244412 false)))

(declare-fun lt!188546 () Bool)

(declare-fun lt!188547 () array!24525)

(assert (=> b!406861 (= lt!188546 (arrayNoDuplicates!0 lt!188547 #b00000000000000000000000000000000 Nil!6771))))

(declare-fun b!406862 () Bool)

(declare-fun e!244417 () Bool)

(declare-fun tp_is_empty!10335 () Bool)

(assert (=> b!406862 (= e!244417 tp_is_empty!10335)))

(declare-fun b!406863 () Bool)

(assert (=> b!406863 (= e!244413 e!244412)))

(declare-fun res!235212 () Bool)

(assert (=> b!406863 (=> (not res!235212) (not e!244412))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24525 (_ BitVec 32)) Bool)

(assert (=> b!406863 (= res!235212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188547 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406863 (= lt!188547 (array!24526 (store (arr!11709 _keys!709) i!563 k0!794) (size!12061 _keys!709)))))

(declare-fun b!406864 () Bool)

(declare-fun e!244414 () Bool)

(declare-fun mapRes!17124 () Bool)

(assert (=> b!406864 (= e!244416 (and e!244414 mapRes!17124))))

(declare-fun condMapEmpty!17124 () Bool)

(declare-fun mapDefault!17124 () ValueCell!4824)

(assert (=> b!406864 (= condMapEmpty!17124 (= (arr!11710 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4824)) mapDefault!17124)))))

(declare-fun mapIsEmpty!17124 () Bool)

(assert (=> mapIsEmpty!17124 mapRes!17124))

(declare-fun b!406865 () Bool)

(declare-fun res!235203 () Bool)

(assert (=> b!406865 (=> (not res!235203) (not e!244413))))

(assert (=> b!406865 (= res!235203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406866 () Bool)

(declare-fun res!235209 () Bool)

(assert (=> b!406866 (=> (not res!235209) (not e!244413))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406866 (= res!235209 (and (= (size!12062 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12061 _keys!709) (size!12062 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406867 () Bool)

(declare-fun res!235211 () Bool)

(assert (=> b!406867 (=> (not res!235211) (not e!244413))))

(declare-fun arrayContainsKey!0 (array!24525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406867 (= res!235211 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!406868 () Bool)

(assert (=> b!406868 (= e!244414 tp_is_empty!10335)))

(declare-fun mapNonEmpty!17124 () Bool)

(declare-fun tp!33243 () Bool)

(assert (=> mapNonEmpty!17124 (= mapRes!17124 (and tp!33243 e!244417))))

(declare-fun mapKey!17124 () (_ BitVec 32))

(declare-fun mapValue!17124 () ValueCell!4824)

(declare-fun mapRest!17124 () (Array (_ BitVec 32) ValueCell!4824))

(assert (=> mapNonEmpty!17124 (= (arr!11710 _values!549) (store mapRest!17124 mapKey!17124 mapValue!17124))))

(declare-fun b!406869 () Bool)

(declare-fun res!235207 () Bool)

(assert (=> b!406869 (=> (not res!235207) (not e!244413))))

(assert (=> b!406869 (= res!235207 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12061 _keys!709))))))

(declare-fun b!406870 () Bool)

(declare-fun res!235206 () Bool)

(assert (=> b!406870 (=> (not res!235206) (not e!244413))))

(assert (=> b!406870 (= res!235206 (or (= (select (arr!11709 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11709 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406871 () Bool)

(declare-fun res!235204 () Bool)

(assert (=> b!406871 (=> (not res!235204) (not e!244413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406871 (= res!235204 (validMask!0 mask!1025))))

(assert (= (and start!38924 res!235210) b!406871))

(assert (= (and b!406871 res!235204) b!406866))

(assert (= (and b!406866 res!235209) b!406865))

(assert (= (and b!406865 res!235203) b!406860))

(assert (= (and b!406860 res!235208) b!406869))

(assert (= (and b!406869 res!235207) b!406859))

(assert (= (and b!406859 res!235205) b!406870))

(assert (= (and b!406870 res!235206) b!406867))

(assert (= (and b!406867 res!235211) b!406863))

(assert (= (and b!406863 res!235212) b!406861))

(assert (= (and b!406864 condMapEmpty!17124) mapIsEmpty!17124))

(assert (= (and b!406864 (not condMapEmpty!17124)) mapNonEmpty!17124))

(get-info :version)

(assert (= (and mapNonEmpty!17124 ((_ is ValueCellFull!4824) mapValue!17124)) b!406862))

(assert (= (and b!406864 ((_ is ValueCellFull!4824) mapDefault!17124)) b!406868))

(assert (= start!38924 b!406864))

(declare-fun m!398733 () Bool)

(assert (=> b!406870 m!398733))

(declare-fun m!398735 () Bool)

(assert (=> start!38924 m!398735))

(declare-fun m!398737 () Bool)

(assert (=> start!38924 m!398737))

(declare-fun m!398739 () Bool)

(assert (=> b!406860 m!398739))

(declare-fun m!398741 () Bool)

(assert (=> b!406859 m!398741))

(declare-fun m!398743 () Bool)

(assert (=> b!406865 m!398743))

(declare-fun m!398745 () Bool)

(assert (=> b!406867 m!398745))

(declare-fun m!398747 () Bool)

(assert (=> b!406861 m!398747))

(declare-fun m!398749 () Bool)

(assert (=> mapNonEmpty!17124 m!398749))

(declare-fun m!398751 () Bool)

(assert (=> b!406871 m!398751))

(declare-fun m!398753 () Bool)

(assert (=> b!406863 m!398753))

(declare-fun m!398755 () Bool)

(assert (=> b!406863 m!398755))

(check-sat (not b!406861) (not b!406860) (not b!406865) (not b!406871) (not b!406863) (not mapNonEmpty!17124) (not start!38924) tp_is_empty!10335 (not b!406859) (not b!406867))
(check-sat)

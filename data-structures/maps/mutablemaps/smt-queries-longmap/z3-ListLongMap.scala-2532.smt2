; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39020 () Bool)

(assert start!39020)

(declare-fun b!408731 () Bool)

(declare-fun res!236652 () Bool)

(declare-fun e!245276 () Bool)

(assert (=> b!408731 (=> (not res!236652) (not e!245276))))

(declare-datatypes ((array!24715 0))(
  ( (array!24716 (arr!11804 (Array (_ BitVec 32) (_ BitVec 64))) (size!12156 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24715)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24715 (_ BitVec 32)) Bool)

(assert (=> b!408731 (= res!236652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408732 () Bool)

(declare-fun e!245279 () Bool)

(assert (=> b!408732 (= e!245276 e!245279)))

(declare-fun res!236650 () Bool)

(assert (=> b!408732 (=> (not res!236650) (not e!245279))))

(declare-fun lt!188834 () array!24715)

(assert (=> b!408732 (= res!236650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188834 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408732 (= lt!188834 (array!24716 (store (arr!11804 _keys!709) i!563 k0!794) (size!12156 _keys!709)))))

(declare-fun b!408733 () Bool)

(declare-fun res!236651 () Bool)

(assert (=> b!408733 (=> (not res!236651) (not e!245276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408733 (= res!236651 (validKeyInArray!0 k0!794))))

(declare-fun b!408734 () Bool)

(declare-fun res!236644 () Bool)

(assert (=> b!408734 (=> (not res!236644) (not e!245276))))

(declare-fun arrayContainsKey!0 (array!24715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408734 (= res!236644 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!408735 () Bool)

(declare-fun res!236643 () Bool)

(assert (=> b!408735 (=> (not res!236643) (not e!245276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408735 (= res!236643 (validMask!0 mask!1025))))

(declare-fun b!408736 () Bool)

(declare-fun e!245277 () Bool)

(declare-fun e!245281 () Bool)

(declare-fun mapRes!17268 () Bool)

(assert (=> b!408736 (= e!245277 (and e!245281 mapRes!17268))))

(declare-fun condMapEmpty!17268 () Bool)

(declare-datatypes ((V!15013 0))(
  ( (V!15014 (val!5260 Int)) )
))
(declare-datatypes ((ValueCell!4872 0))(
  ( (ValueCellFull!4872 (v!7503 V!15013)) (EmptyCell!4872) )
))
(declare-datatypes ((array!24717 0))(
  ( (array!24718 (arr!11805 (Array (_ BitVec 32) ValueCell!4872)) (size!12157 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24717)

(declare-fun mapDefault!17268 () ValueCell!4872)

(assert (=> b!408736 (= condMapEmpty!17268 (= (arr!11805 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4872)) mapDefault!17268)))))

(declare-fun res!236649 () Bool)

(assert (=> start!39020 (=> (not res!236649) (not e!245276))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39020 (= res!236649 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12156 _keys!709))))))

(assert (=> start!39020 e!245276))

(assert (=> start!39020 true))

(declare-fun array_inv!8620 (array!24717) Bool)

(assert (=> start!39020 (and (array_inv!8620 _values!549) e!245277)))

(declare-fun array_inv!8621 (array!24715) Bool)

(assert (=> start!39020 (array_inv!8621 _keys!709)))

(declare-fun b!408737 () Bool)

(declare-fun tp_is_empty!10431 () Bool)

(assert (=> b!408737 (= e!245281 tp_is_empty!10431)))

(declare-fun b!408738 () Bool)

(assert (=> b!408738 (= e!245279 false)))

(declare-fun lt!188835 () Bool)

(declare-datatypes ((List!6816 0))(
  ( (Nil!6813) (Cons!6812 (h!7668 (_ BitVec 64)) (t!11998 List!6816)) )
))
(declare-fun arrayNoDuplicates!0 (array!24715 (_ BitVec 32) List!6816) Bool)

(assert (=> b!408738 (= lt!188835 (arrayNoDuplicates!0 lt!188834 #b00000000000000000000000000000000 Nil!6813))))

(declare-fun mapIsEmpty!17268 () Bool)

(assert (=> mapIsEmpty!17268 mapRes!17268))

(declare-fun b!408739 () Bool)

(declare-fun res!236648 () Bool)

(assert (=> b!408739 (=> (not res!236648) (not e!245276))))

(assert (=> b!408739 (= res!236648 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6813))))

(declare-fun b!408740 () Bool)

(declare-fun res!236645 () Bool)

(assert (=> b!408740 (=> (not res!236645) (not e!245276))))

(assert (=> b!408740 (= res!236645 (or (= (select (arr!11804 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11804 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408741 () Bool)

(declare-fun res!236647 () Bool)

(assert (=> b!408741 (=> (not res!236647) (not e!245276))))

(assert (=> b!408741 (= res!236647 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12156 _keys!709))))))

(declare-fun b!408742 () Bool)

(declare-fun res!236646 () Bool)

(assert (=> b!408742 (=> (not res!236646) (not e!245276))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!408742 (= res!236646 (and (= (size!12157 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12156 _keys!709) (size!12157 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408743 () Bool)

(declare-fun e!245278 () Bool)

(assert (=> b!408743 (= e!245278 tp_is_empty!10431)))

(declare-fun mapNonEmpty!17268 () Bool)

(declare-fun tp!33387 () Bool)

(assert (=> mapNonEmpty!17268 (= mapRes!17268 (and tp!33387 e!245278))))

(declare-fun mapKey!17268 () (_ BitVec 32))

(declare-fun mapRest!17268 () (Array (_ BitVec 32) ValueCell!4872))

(declare-fun mapValue!17268 () ValueCell!4872)

(assert (=> mapNonEmpty!17268 (= (arr!11805 _values!549) (store mapRest!17268 mapKey!17268 mapValue!17268))))

(assert (= (and start!39020 res!236649) b!408735))

(assert (= (and b!408735 res!236643) b!408742))

(assert (= (and b!408742 res!236646) b!408731))

(assert (= (and b!408731 res!236652) b!408739))

(assert (= (and b!408739 res!236648) b!408741))

(assert (= (and b!408741 res!236647) b!408733))

(assert (= (and b!408733 res!236651) b!408740))

(assert (= (and b!408740 res!236645) b!408734))

(assert (= (and b!408734 res!236644) b!408732))

(assert (= (and b!408732 res!236650) b!408738))

(assert (= (and b!408736 condMapEmpty!17268) mapIsEmpty!17268))

(assert (= (and b!408736 (not condMapEmpty!17268)) mapNonEmpty!17268))

(get-info :version)

(assert (= (and mapNonEmpty!17268 ((_ is ValueCellFull!4872) mapValue!17268)) b!408743))

(assert (= (and b!408736 ((_ is ValueCellFull!4872) mapDefault!17268)) b!408737))

(assert (= start!39020 b!408736))

(declare-fun m!399885 () Bool)

(assert (=> b!408734 m!399885))

(declare-fun m!399887 () Bool)

(assert (=> b!408732 m!399887))

(declare-fun m!399889 () Bool)

(assert (=> b!408732 m!399889))

(declare-fun m!399891 () Bool)

(assert (=> b!408738 m!399891))

(declare-fun m!399893 () Bool)

(assert (=> b!408740 m!399893))

(declare-fun m!399895 () Bool)

(assert (=> b!408731 m!399895))

(declare-fun m!399897 () Bool)

(assert (=> b!408739 m!399897))

(declare-fun m!399899 () Bool)

(assert (=> mapNonEmpty!17268 m!399899))

(declare-fun m!399901 () Bool)

(assert (=> b!408735 m!399901))

(declare-fun m!399903 () Bool)

(assert (=> start!39020 m!399903))

(declare-fun m!399905 () Bool)

(assert (=> start!39020 m!399905))

(declare-fun m!399907 () Bool)

(assert (=> b!408733 m!399907))

(check-sat (not b!408739) tp_is_empty!10431 (not b!408738) (not start!39020) (not b!408734) (not b!408735) (not b!408731) (not b!408732) (not mapNonEmpty!17268) (not b!408733))
(check-sat)

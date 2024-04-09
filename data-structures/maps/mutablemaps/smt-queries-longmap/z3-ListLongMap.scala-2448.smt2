; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38516 () Bool)

(assert start!38516)

(declare-fun mapIsEmpty!16512 () Bool)

(declare-fun mapRes!16512 () Bool)

(assert (=> mapIsEmpty!16512 mapRes!16512))

(declare-fun res!228442 () Bool)

(declare-fun e!240420 () Bool)

(assert (=> start!38516 (=> (not res!228442) (not e!240420))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23737 0))(
  ( (array!23738 (arr!11315 (Array (_ BitVec 32) (_ BitVec 64))) (size!11667 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23737)

(assert (=> start!38516 (= res!228442 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11667 _keys!709))))))

(assert (=> start!38516 e!240420))

(assert (=> start!38516 true))

(declare-datatypes ((V!14341 0))(
  ( (V!14342 (val!5008 Int)) )
))
(declare-datatypes ((ValueCell!4620 0))(
  ( (ValueCellFull!4620 (v!7251 V!14341)) (EmptyCell!4620) )
))
(declare-datatypes ((array!23739 0))(
  ( (array!23740 (arr!11316 (Array (_ BitVec 32) ValueCell!4620)) (size!11668 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23739)

(declare-fun e!240417 () Bool)

(declare-fun array_inv!8286 (array!23739) Bool)

(assert (=> start!38516 (and (array_inv!8286 _values!549) e!240417)))

(declare-fun array_inv!8287 (array!23737) Bool)

(assert (=> start!38516 (array_inv!8287 _keys!709)))

(declare-fun b!397607 () Bool)

(declare-fun res!228444 () Bool)

(assert (=> b!397607 (=> (not res!228444) (not e!240420))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397607 (= res!228444 (validMask!0 mask!1025))))

(declare-fun b!397608 () Bool)

(declare-fun e!240418 () Bool)

(assert (=> b!397608 (= e!240418 false)))

(declare-fun lt!187322 () Bool)

(declare-fun lt!187323 () array!23737)

(declare-datatypes ((List!6519 0))(
  ( (Nil!6516) (Cons!6515 (h!7371 (_ BitVec 64)) (t!11701 List!6519)) )
))
(declare-fun arrayNoDuplicates!0 (array!23737 (_ BitVec 32) List!6519) Bool)

(assert (=> b!397608 (= lt!187322 (arrayNoDuplicates!0 lt!187323 #b00000000000000000000000000000000 Nil!6516))))

(declare-fun mapNonEmpty!16512 () Bool)

(declare-fun tp!32307 () Bool)

(declare-fun e!240421 () Bool)

(assert (=> mapNonEmpty!16512 (= mapRes!16512 (and tp!32307 e!240421))))

(declare-fun mapValue!16512 () ValueCell!4620)

(declare-fun mapKey!16512 () (_ BitVec 32))

(declare-fun mapRest!16512 () (Array (_ BitVec 32) ValueCell!4620))

(assert (=> mapNonEmpty!16512 (= (arr!11316 _values!549) (store mapRest!16512 mapKey!16512 mapValue!16512))))

(declare-fun b!397609 () Bool)

(declare-fun res!228440 () Bool)

(assert (=> b!397609 (=> (not res!228440) (not e!240420))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397609 (= res!228440 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!397610 () Bool)

(declare-fun res!228439 () Bool)

(assert (=> b!397610 (=> (not res!228439) (not e!240420))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397610 (= res!228439 (validKeyInArray!0 k0!794))))

(declare-fun b!397611 () Bool)

(declare-fun res!228443 () Bool)

(assert (=> b!397611 (=> (not res!228443) (not e!240420))))

(assert (=> b!397611 (= res!228443 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6516))))

(declare-fun b!397612 () Bool)

(declare-fun res!228441 () Bool)

(assert (=> b!397612 (=> (not res!228441) (not e!240420))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397612 (= res!228441 (or (= (select (arr!11315 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11315 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397613 () Bool)

(declare-fun e!240416 () Bool)

(declare-fun tp_is_empty!9927 () Bool)

(assert (=> b!397613 (= e!240416 tp_is_empty!9927)))

(declare-fun b!397614 () Bool)

(assert (=> b!397614 (= e!240421 tp_is_empty!9927)))

(declare-fun b!397615 () Bool)

(assert (=> b!397615 (= e!240420 e!240418)))

(declare-fun res!228438 () Bool)

(assert (=> b!397615 (=> (not res!228438) (not e!240418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23737 (_ BitVec 32)) Bool)

(assert (=> b!397615 (= res!228438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187323 mask!1025))))

(assert (=> b!397615 (= lt!187323 (array!23738 (store (arr!11315 _keys!709) i!563 k0!794) (size!11667 _keys!709)))))

(declare-fun b!397616 () Bool)

(declare-fun res!228437 () Bool)

(assert (=> b!397616 (=> (not res!228437) (not e!240420))))

(assert (=> b!397616 (= res!228437 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11667 _keys!709))))))

(declare-fun b!397617 () Bool)

(declare-fun res!228436 () Bool)

(assert (=> b!397617 (=> (not res!228436) (not e!240420))))

(assert (=> b!397617 (= res!228436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397618 () Bool)

(declare-fun res!228435 () Bool)

(assert (=> b!397618 (=> (not res!228435) (not e!240420))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397618 (= res!228435 (and (= (size!11668 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11667 _keys!709) (size!11668 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397619 () Bool)

(assert (=> b!397619 (= e!240417 (and e!240416 mapRes!16512))))

(declare-fun condMapEmpty!16512 () Bool)

(declare-fun mapDefault!16512 () ValueCell!4620)

(assert (=> b!397619 (= condMapEmpty!16512 (= (arr!11316 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4620)) mapDefault!16512)))))

(assert (= (and start!38516 res!228442) b!397607))

(assert (= (and b!397607 res!228444) b!397618))

(assert (= (and b!397618 res!228435) b!397617))

(assert (= (and b!397617 res!228436) b!397611))

(assert (= (and b!397611 res!228443) b!397616))

(assert (= (and b!397616 res!228437) b!397610))

(assert (= (and b!397610 res!228439) b!397612))

(assert (= (and b!397612 res!228441) b!397609))

(assert (= (and b!397609 res!228440) b!397615))

(assert (= (and b!397615 res!228438) b!397608))

(assert (= (and b!397619 condMapEmpty!16512) mapIsEmpty!16512))

(assert (= (and b!397619 (not condMapEmpty!16512)) mapNonEmpty!16512))

(get-info :version)

(assert (= (and mapNonEmpty!16512 ((_ is ValueCellFull!4620) mapValue!16512)) b!397614))

(assert (= (and b!397619 ((_ is ValueCellFull!4620) mapDefault!16512)) b!397613))

(assert (= start!38516 b!397619))

(declare-fun m!392757 () Bool)

(assert (=> b!397617 m!392757))

(declare-fun m!392759 () Bool)

(assert (=> b!397609 m!392759))

(declare-fun m!392761 () Bool)

(assert (=> b!397607 m!392761))

(declare-fun m!392763 () Bool)

(assert (=> b!397611 m!392763))

(declare-fun m!392765 () Bool)

(assert (=> b!397608 m!392765))

(declare-fun m!392767 () Bool)

(assert (=> b!397615 m!392767))

(declare-fun m!392769 () Bool)

(assert (=> b!397615 m!392769))

(declare-fun m!392771 () Bool)

(assert (=> b!397612 m!392771))

(declare-fun m!392773 () Bool)

(assert (=> mapNonEmpty!16512 m!392773))

(declare-fun m!392775 () Bool)

(assert (=> start!38516 m!392775))

(declare-fun m!392777 () Bool)

(assert (=> start!38516 m!392777))

(declare-fun m!392779 () Bool)

(assert (=> b!397610 m!392779))

(check-sat (not b!397607) (not b!397611) (not b!397608) (not b!397615) (not start!38516) (not b!397610) (not mapNonEmpty!16512) tp_is_empty!9927 (not b!397617) (not b!397609))
(check-sat)

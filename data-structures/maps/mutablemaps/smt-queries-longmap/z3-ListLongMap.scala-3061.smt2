; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43218 () Bool)

(assert start!43218)

(declare-fun mapNonEmpty!22093 () Bool)

(declare-fun mapRes!22093 () Bool)

(declare-fun tp!42568 () Bool)

(declare-fun e!281535 () Bool)

(assert (=> mapNonEmpty!22093 (= mapRes!22093 (and tp!42568 e!281535))))

(declare-fun mapKey!22093 () (_ BitVec 32))

(declare-datatypes ((V!19203 0))(
  ( (V!19204 (val!6847 Int)) )
))
(declare-datatypes ((ValueCell!6438 0))(
  ( (ValueCellFull!6438 (v!9132 V!19203)) (EmptyCell!6438) )
))
(declare-fun mapRest!22093 () (Array (_ BitVec 32) ValueCell!6438))

(declare-fun mapValue!22093 () ValueCell!6438)

(declare-datatypes ((array!30839 0))(
  ( (array!30840 (arr!14824 (Array (_ BitVec 32) ValueCell!6438)) (size!15182 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30839)

(assert (=> mapNonEmpty!22093 (= (arr!14824 _values!1516) (store mapRest!22093 mapKey!22093 mapValue!22093))))

(declare-fun b!478681 () Bool)

(declare-fun tp_is_empty!13599 () Bool)

(assert (=> b!478681 (= e!281535 tp_is_empty!13599)))

(declare-fun res!285640 () Bool)

(declare-fun e!281533 () Bool)

(assert (=> start!43218 (=> (not res!285640) (not e!281533))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43218 (= res!285640 (validMask!0 mask!2352))))

(assert (=> start!43218 e!281533))

(assert (=> start!43218 true))

(declare-fun e!281536 () Bool)

(declare-fun array_inv!10682 (array!30839) Bool)

(assert (=> start!43218 (and (array_inv!10682 _values!1516) e!281536)))

(declare-datatypes ((array!30841 0))(
  ( (array!30842 (arr!14825 (Array (_ BitVec 32) (_ BitVec 64))) (size!15183 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30841)

(declare-fun array_inv!10683 (array!30841) Bool)

(assert (=> start!43218 (array_inv!10683 _keys!1874)))

(declare-fun b!478682 () Bool)

(assert (=> b!478682 (= e!281533 false)))

(declare-fun lt!217745 () Bool)

(declare-datatypes ((List!9102 0))(
  ( (Nil!9099) (Cons!9098 (h!9954 (_ BitVec 64)) (t!15316 List!9102)) )
))
(declare-fun arrayNoDuplicates!0 (array!30841 (_ BitVec 32) List!9102) Bool)

(assert (=> b!478682 (= lt!217745 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9099))))

(declare-fun b!478683 () Bool)

(declare-fun e!281534 () Bool)

(assert (=> b!478683 (= e!281534 tp_is_empty!13599)))

(declare-fun b!478684 () Bool)

(declare-fun res!285642 () Bool)

(assert (=> b!478684 (=> (not res!285642) (not e!281533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30841 (_ BitVec 32)) Bool)

(assert (=> b!478684 (= res!285642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapIsEmpty!22093 () Bool)

(assert (=> mapIsEmpty!22093 mapRes!22093))

(declare-fun b!478685 () Bool)

(assert (=> b!478685 (= e!281536 (and e!281534 mapRes!22093))))

(declare-fun condMapEmpty!22093 () Bool)

(declare-fun mapDefault!22093 () ValueCell!6438)

(assert (=> b!478685 (= condMapEmpty!22093 (= (arr!14824 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6438)) mapDefault!22093)))))

(declare-fun b!478686 () Bool)

(declare-fun res!285641 () Bool)

(assert (=> b!478686 (=> (not res!285641) (not e!281533))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478686 (= res!285641 (and (= (size!15182 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15183 _keys!1874) (size!15182 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(assert (= (and start!43218 res!285640) b!478686))

(assert (= (and b!478686 res!285641) b!478684))

(assert (= (and b!478684 res!285642) b!478682))

(assert (= (and b!478685 condMapEmpty!22093) mapIsEmpty!22093))

(assert (= (and b!478685 (not condMapEmpty!22093)) mapNonEmpty!22093))

(get-info :version)

(assert (= (and mapNonEmpty!22093 ((_ is ValueCellFull!6438) mapValue!22093)) b!478681))

(assert (= (and b!478685 ((_ is ValueCellFull!6438) mapDefault!22093)) b!478683))

(assert (= start!43218 b!478685))

(declare-fun m!460837 () Bool)

(assert (=> mapNonEmpty!22093 m!460837))

(declare-fun m!460839 () Bool)

(assert (=> start!43218 m!460839))

(declare-fun m!460841 () Bool)

(assert (=> start!43218 m!460841))

(declare-fun m!460843 () Bool)

(assert (=> start!43218 m!460843))

(declare-fun m!460845 () Bool)

(assert (=> b!478682 m!460845))

(declare-fun m!460847 () Bool)

(assert (=> b!478684 m!460847))

(check-sat (not b!478682) (not b!478684) (not mapNonEmpty!22093) tp_is_empty!13599 (not start!43218))
(check-sat)

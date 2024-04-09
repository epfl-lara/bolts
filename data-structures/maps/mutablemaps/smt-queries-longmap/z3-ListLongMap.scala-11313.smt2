; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131816 () Bool)

(assert start!131816)

(declare-fun b!1542884 () Bool)

(declare-fun e!858562 () Bool)

(declare-fun tp_is_empty!37773 () Bool)

(assert (=> b!1542884 (= e!858562 tp_is_empty!37773)))

(declare-fun b!1542885 () Bool)

(declare-fun res!1058792 () Bool)

(declare-fun e!858559 () Bool)

(assert (=> b!1542885 (=> (not res!1058792) (not e!858559))))

(declare-datatypes ((array!102733 0))(
  ( (array!102734 (arr!49564 (Array (_ BitVec 32) (_ BitVec 64))) (size!50115 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102733)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102733 (_ BitVec 32)) Bool)

(assert (=> b!1542885 (= res!1058792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1058791 () Bool)

(assert (=> start!131816 (=> (not res!1058791) (not e!858559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131816 (= res!1058791 (validMask!0 mask!926))))

(assert (=> start!131816 e!858559))

(assert (=> start!131816 true))

(declare-datatypes ((V!58807 0))(
  ( (V!58808 (val!18964 Int)) )
))
(declare-datatypes ((ValueCell!17976 0))(
  ( (ValueCellFull!17976 (v!21762 V!58807)) (EmptyCell!17976) )
))
(declare-datatypes ((array!102735 0))(
  ( (array!102736 (arr!49565 (Array (_ BitVec 32) ValueCell!17976)) (size!50116 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102735)

(declare-fun e!858561 () Bool)

(declare-fun array_inv!38483 (array!102735) Bool)

(assert (=> start!131816 (and (array_inv!38483 _values!470) e!858561)))

(declare-fun array_inv!38484 (array!102733) Bool)

(assert (=> start!131816 (array_inv!38484 _keys!618)))

(declare-fun mapIsEmpty!58363 () Bool)

(declare-fun mapRes!58363 () Bool)

(assert (=> mapIsEmpty!58363 mapRes!58363))

(declare-fun mapNonEmpty!58363 () Bool)

(declare-fun tp!110891 () Bool)

(assert (=> mapNonEmpty!58363 (= mapRes!58363 (and tp!110891 e!858562))))

(declare-fun mapValue!58363 () ValueCell!17976)

(declare-fun mapRest!58363 () (Array (_ BitVec 32) ValueCell!17976))

(declare-fun mapKey!58363 () (_ BitVec 32))

(assert (=> mapNonEmpty!58363 (= (arr!49565 _values!470) (store mapRest!58363 mapKey!58363 mapValue!58363))))

(declare-fun b!1542886 () Bool)

(declare-fun e!858558 () Bool)

(assert (=> b!1542886 (= e!858558 tp_is_empty!37773)))

(declare-fun b!1542887 () Bool)

(assert (=> b!1542887 (= e!858559 false)))

(declare-fun lt!665834 () Bool)

(declare-datatypes ((List!36050 0))(
  ( (Nil!36047) (Cons!36046 (h!37492 (_ BitVec 64)) (t!50751 List!36050)) )
))
(declare-fun arrayNoDuplicates!0 (array!102733 (_ BitVec 32) List!36050) Bool)

(assert (=> b!1542887 (= lt!665834 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36047))))

(declare-fun b!1542888 () Bool)

(assert (=> b!1542888 (= e!858561 (and e!858558 mapRes!58363))))

(declare-fun condMapEmpty!58363 () Bool)

(declare-fun mapDefault!58363 () ValueCell!17976)

(assert (=> b!1542888 (= condMapEmpty!58363 (= (arr!49565 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17976)) mapDefault!58363)))))

(declare-fun b!1542889 () Bool)

(declare-fun res!1058790 () Bool)

(assert (=> b!1542889 (=> (not res!1058790) (not e!858559))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542889 (= res!1058790 (and (= (size!50116 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50115 _keys!618) (size!50116 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(assert (= (and start!131816 res!1058791) b!1542889))

(assert (= (and b!1542889 res!1058790) b!1542885))

(assert (= (and b!1542885 res!1058792) b!1542887))

(assert (= (and b!1542888 condMapEmpty!58363) mapIsEmpty!58363))

(assert (= (and b!1542888 (not condMapEmpty!58363)) mapNonEmpty!58363))

(get-info :version)

(assert (= (and mapNonEmpty!58363 ((_ is ValueCellFull!17976) mapValue!58363)) b!1542884))

(assert (= (and b!1542888 ((_ is ValueCellFull!17976) mapDefault!58363)) b!1542886))

(assert (= start!131816 b!1542888))

(declare-fun m!1424383 () Bool)

(assert (=> b!1542885 m!1424383))

(declare-fun m!1424385 () Bool)

(assert (=> start!131816 m!1424385))

(declare-fun m!1424387 () Bool)

(assert (=> start!131816 m!1424387))

(declare-fun m!1424389 () Bool)

(assert (=> start!131816 m!1424389))

(declare-fun m!1424391 () Bool)

(assert (=> mapNonEmpty!58363 m!1424391))

(declare-fun m!1424393 () Bool)

(assert (=> b!1542887 m!1424393))

(check-sat tp_is_empty!37773 (not b!1542887) (not mapNonEmpty!58363) (not start!131816) (not b!1542885))
(check-sat)

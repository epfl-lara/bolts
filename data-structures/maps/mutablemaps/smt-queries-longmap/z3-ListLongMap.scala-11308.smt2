; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131786 () Bool)

(assert start!131786)

(declare-fun mapNonEmpty!58318 () Bool)

(declare-fun mapRes!58318 () Bool)

(declare-fun tp!110846 () Bool)

(declare-fun e!858336 () Bool)

(assert (=> mapNonEmpty!58318 (= mapRes!58318 (and tp!110846 e!858336))))

(declare-datatypes ((V!58767 0))(
  ( (V!58768 (val!18949 Int)) )
))
(declare-datatypes ((ValueCell!17961 0))(
  ( (ValueCellFull!17961 (v!21747 V!58767)) (EmptyCell!17961) )
))
(declare-fun mapValue!58318 () ValueCell!17961)

(declare-fun mapRest!58318 () (Array (_ BitVec 32) ValueCell!17961))

(declare-fun mapKey!58318 () (_ BitVec 32))

(declare-datatypes ((array!102681 0))(
  ( (array!102682 (arr!49538 (Array (_ BitVec 32) ValueCell!17961)) (size!50089 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102681)

(assert (=> mapNonEmpty!58318 (= (arr!49538 _values!470) (store mapRest!58318 mapKey!58318 mapValue!58318))))

(declare-fun b!1542614 () Bool)

(declare-fun e!858337 () Bool)

(declare-fun e!858334 () Bool)

(assert (=> b!1542614 (= e!858337 (and e!858334 mapRes!58318))))

(declare-fun condMapEmpty!58318 () Bool)

(declare-fun mapDefault!58318 () ValueCell!17961)

(assert (=> b!1542614 (= condMapEmpty!58318 (= (arr!49538 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17961)) mapDefault!58318)))))

(declare-fun b!1542615 () Bool)

(declare-fun tp_is_empty!37743 () Bool)

(assert (=> b!1542615 (= e!858336 tp_is_empty!37743)))

(declare-fun b!1542616 () Bool)

(declare-fun res!1058657 () Bool)

(declare-fun e!858333 () Bool)

(assert (=> b!1542616 (=> (not res!1058657) (not e!858333))))

(declare-datatypes ((array!102683 0))(
  ( (array!102684 (arr!49539 (Array (_ BitVec 32) (_ BitVec 64))) (size!50090 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102683)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542616 (= res!1058657 (and (= (size!50089 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50090 _keys!618) (size!50089 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058655 () Bool)

(assert (=> start!131786 (=> (not res!1058655) (not e!858333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131786 (= res!1058655 (validMask!0 mask!926))))

(assert (=> start!131786 e!858333))

(assert (=> start!131786 true))

(declare-fun array_inv!38465 (array!102681) Bool)

(assert (=> start!131786 (and (array_inv!38465 _values!470) e!858337)))

(declare-fun array_inv!38466 (array!102683) Bool)

(assert (=> start!131786 (array_inv!38466 _keys!618)))

(declare-fun mapIsEmpty!58318 () Bool)

(assert (=> mapIsEmpty!58318 mapRes!58318))

(declare-fun b!1542617 () Bool)

(assert (=> b!1542617 (= e!858333 false)))

(declare-fun lt!665789 () Bool)

(declare-datatypes ((List!36039 0))(
  ( (Nil!36036) (Cons!36035 (h!37481 (_ BitVec 64)) (t!50740 List!36039)) )
))
(declare-fun arrayNoDuplicates!0 (array!102683 (_ BitVec 32) List!36039) Bool)

(assert (=> b!1542617 (= lt!665789 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36036))))

(declare-fun b!1542618 () Bool)

(assert (=> b!1542618 (= e!858334 tp_is_empty!37743)))

(declare-fun b!1542619 () Bool)

(declare-fun res!1058656 () Bool)

(assert (=> b!1542619 (=> (not res!1058656) (not e!858333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102683 (_ BitVec 32)) Bool)

(assert (=> b!1542619 (= res!1058656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(assert (= (and start!131786 res!1058655) b!1542616))

(assert (= (and b!1542616 res!1058657) b!1542619))

(assert (= (and b!1542619 res!1058656) b!1542617))

(assert (= (and b!1542614 condMapEmpty!58318) mapIsEmpty!58318))

(assert (= (and b!1542614 (not condMapEmpty!58318)) mapNonEmpty!58318))

(get-info :version)

(assert (= (and mapNonEmpty!58318 ((_ is ValueCellFull!17961) mapValue!58318)) b!1542615))

(assert (= (and b!1542614 ((_ is ValueCellFull!17961) mapDefault!58318)) b!1542618))

(assert (= start!131786 b!1542614))

(declare-fun m!1424203 () Bool)

(assert (=> mapNonEmpty!58318 m!1424203))

(declare-fun m!1424205 () Bool)

(assert (=> start!131786 m!1424205))

(declare-fun m!1424207 () Bool)

(assert (=> start!131786 m!1424207))

(declare-fun m!1424209 () Bool)

(assert (=> start!131786 m!1424209))

(declare-fun m!1424211 () Bool)

(assert (=> b!1542617 m!1424211))

(declare-fun m!1424213 () Bool)

(assert (=> b!1542619 m!1424213))

(check-sat (not start!131786) (not mapNonEmpty!58318) (not b!1542619) tp_is_empty!37743 (not b!1542617))
(check-sat)

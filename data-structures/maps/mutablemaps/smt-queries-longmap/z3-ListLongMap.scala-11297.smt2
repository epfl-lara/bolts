; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131720 () Bool)

(assert start!131720)

(declare-fun b!1542020 () Bool)

(declare-fun e!857841 () Bool)

(declare-fun e!857840 () Bool)

(declare-fun mapRes!58219 () Bool)

(assert (=> b!1542020 (= e!857841 (and e!857840 mapRes!58219))))

(declare-fun condMapEmpty!58219 () Bool)

(declare-datatypes ((V!58679 0))(
  ( (V!58680 (val!18916 Int)) )
))
(declare-datatypes ((ValueCell!17928 0))(
  ( (ValueCellFull!17928 (v!21714 V!58679)) (EmptyCell!17928) )
))
(declare-datatypes ((array!102549 0))(
  ( (array!102550 (arr!49472 (Array (_ BitVec 32) ValueCell!17928)) (size!50023 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102549)

(declare-fun mapDefault!58219 () ValueCell!17928)

(assert (=> b!1542020 (= condMapEmpty!58219 (= (arr!49472 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17928)) mapDefault!58219)))))

(declare-fun b!1542021 () Bool)

(declare-fun res!1058360 () Bool)

(declare-fun e!857839 () Bool)

(assert (=> b!1542021 (=> (not res!1058360) (not e!857839))))

(declare-datatypes ((array!102551 0))(
  ( (array!102552 (arr!49473 (Array (_ BitVec 32) (_ BitVec 64))) (size!50024 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102551)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102551 (_ BitVec 32)) Bool)

(assert (=> b!1542021 (= res!1058360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58219 () Bool)

(assert (=> mapIsEmpty!58219 mapRes!58219))

(declare-fun b!1542023 () Bool)

(assert (=> b!1542023 (= e!857839 false)))

(declare-fun lt!665690 () Bool)

(declare-datatypes ((List!36019 0))(
  ( (Nil!36016) (Cons!36015 (h!37461 (_ BitVec 64)) (t!50720 List!36019)) )
))
(declare-fun arrayNoDuplicates!0 (array!102551 (_ BitVec 32) List!36019) Bool)

(assert (=> b!1542023 (= lt!665690 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36016))))

(declare-fun mapNonEmpty!58219 () Bool)

(declare-fun tp!110747 () Bool)

(declare-fun e!857838 () Bool)

(assert (=> mapNonEmpty!58219 (= mapRes!58219 (and tp!110747 e!857838))))

(declare-fun mapRest!58219 () (Array (_ BitVec 32) ValueCell!17928))

(declare-fun mapValue!58219 () ValueCell!17928)

(declare-fun mapKey!58219 () (_ BitVec 32))

(assert (=> mapNonEmpty!58219 (= (arr!49472 _values!470) (store mapRest!58219 mapKey!58219 mapValue!58219))))

(declare-fun b!1542022 () Bool)

(declare-fun tp_is_empty!37677 () Bool)

(assert (=> b!1542022 (= e!857838 tp_is_empty!37677)))

(declare-fun res!1058358 () Bool)

(assert (=> start!131720 (=> (not res!1058358) (not e!857839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131720 (= res!1058358 (validMask!0 mask!926))))

(assert (=> start!131720 e!857839))

(assert (=> start!131720 true))

(declare-fun array_inv!38407 (array!102549) Bool)

(assert (=> start!131720 (and (array_inv!38407 _values!470) e!857841)))

(declare-fun array_inv!38408 (array!102551) Bool)

(assert (=> start!131720 (array_inv!38408 _keys!618)))

(declare-fun b!1542024 () Bool)

(assert (=> b!1542024 (= e!857840 tp_is_empty!37677)))

(declare-fun b!1542025 () Bool)

(declare-fun res!1058359 () Bool)

(assert (=> b!1542025 (=> (not res!1058359) (not e!857839))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542025 (= res!1058359 (and (= (size!50023 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50024 _keys!618) (size!50023 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(assert (= (and start!131720 res!1058358) b!1542025))

(assert (= (and b!1542025 res!1058359) b!1542021))

(assert (= (and b!1542021 res!1058360) b!1542023))

(assert (= (and b!1542020 condMapEmpty!58219) mapIsEmpty!58219))

(assert (= (and b!1542020 (not condMapEmpty!58219)) mapNonEmpty!58219))

(get-info :version)

(assert (= (and mapNonEmpty!58219 ((_ is ValueCellFull!17928) mapValue!58219)) b!1542022))

(assert (= (and b!1542020 ((_ is ValueCellFull!17928) mapDefault!58219)) b!1542024))

(assert (= start!131720 b!1542020))

(declare-fun m!1423807 () Bool)

(assert (=> b!1542021 m!1423807))

(declare-fun m!1423809 () Bool)

(assert (=> b!1542023 m!1423809))

(declare-fun m!1423811 () Bool)

(assert (=> mapNonEmpty!58219 m!1423811))

(declare-fun m!1423813 () Bool)

(assert (=> start!131720 m!1423813))

(declare-fun m!1423815 () Bool)

(assert (=> start!131720 m!1423815))

(declare-fun m!1423817 () Bool)

(assert (=> start!131720 m!1423817))

(check-sat (not b!1542021) (not mapNonEmpty!58219) (not start!131720) (not b!1542023) tp_is_empty!37677)
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131732 () Bool)

(assert start!131732)

(declare-fun b!1542128 () Bool)

(declare-fun e!857932 () Bool)

(declare-fun e!857930 () Bool)

(declare-fun mapRes!58237 () Bool)

(assert (=> b!1542128 (= e!857932 (and e!857930 mapRes!58237))))

(declare-fun condMapEmpty!58237 () Bool)

(declare-datatypes ((V!58695 0))(
  ( (V!58696 (val!18922 Int)) )
))
(declare-datatypes ((ValueCell!17934 0))(
  ( (ValueCellFull!17934 (v!21720 V!58695)) (EmptyCell!17934) )
))
(declare-datatypes ((array!102573 0))(
  ( (array!102574 (arr!49484 (Array (_ BitVec 32) ValueCell!17934)) (size!50035 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102573)

(declare-fun mapDefault!58237 () ValueCell!17934)

(assert (=> b!1542128 (= condMapEmpty!58237 (= (arr!49484 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17934)) mapDefault!58237)))))

(declare-fun mapIsEmpty!58237 () Bool)

(assert (=> mapIsEmpty!58237 mapRes!58237))

(declare-fun b!1542129 () Bool)

(declare-fun res!1058412 () Bool)

(declare-fun e!857928 () Bool)

(assert (=> b!1542129 (=> (not res!1058412) (not e!857928))))

(declare-datatypes ((array!102575 0))(
  ( (array!102576 (arr!49485 (Array (_ BitVec 32) (_ BitVec 64))) (size!50036 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102575)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1542129 (= res!1058412 (and (= (size!50035 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50036 _keys!618) (size!50035 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun res!1058414 () Bool)

(assert (=> start!131732 (=> (not res!1058414) (not e!857928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131732 (= res!1058414 (validMask!0 mask!926))))

(assert (=> start!131732 e!857928))

(assert (=> start!131732 true))

(declare-fun array_inv!38419 (array!102573) Bool)

(assert (=> start!131732 (and (array_inv!38419 _values!470) e!857932)))

(declare-fun array_inv!38420 (array!102575) Bool)

(assert (=> start!131732 (array_inv!38420 _keys!618)))

(declare-fun b!1542130 () Bool)

(declare-fun e!857929 () Bool)

(declare-fun tp_is_empty!37689 () Bool)

(assert (=> b!1542130 (= e!857929 tp_is_empty!37689)))

(declare-fun mapNonEmpty!58237 () Bool)

(declare-fun tp!110765 () Bool)

(assert (=> mapNonEmpty!58237 (= mapRes!58237 (and tp!110765 e!857929))))

(declare-fun mapRest!58237 () (Array (_ BitVec 32) ValueCell!17934))

(declare-fun mapKey!58237 () (_ BitVec 32))

(declare-fun mapValue!58237 () ValueCell!17934)

(assert (=> mapNonEmpty!58237 (= (arr!49484 _values!470) (store mapRest!58237 mapKey!58237 mapValue!58237))))

(declare-fun b!1542131 () Bool)

(assert (=> b!1542131 (= e!857930 tp_is_empty!37689)))

(declare-fun b!1542132 () Bool)

(declare-fun res!1058413 () Bool)

(assert (=> b!1542132 (=> (not res!1058413) (not e!857928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102575 (_ BitVec 32)) Bool)

(assert (=> b!1542132 (= res!1058413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542133 () Bool)

(assert (=> b!1542133 (= e!857928 false)))

(declare-fun lt!665708 () Bool)

(declare-datatypes ((List!36023 0))(
  ( (Nil!36020) (Cons!36019 (h!37465 (_ BitVec 64)) (t!50724 List!36023)) )
))
(declare-fun arrayNoDuplicates!0 (array!102575 (_ BitVec 32) List!36023) Bool)

(assert (=> b!1542133 (= lt!665708 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36020))))

(assert (= (and start!131732 res!1058414) b!1542129))

(assert (= (and b!1542129 res!1058412) b!1542132))

(assert (= (and b!1542132 res!1058413) b!1542133))

(assert (= (and b!1542128 condMapEmpty!58237) mapIsEmpty!58237))

(assert (= (and b!1542128 (not condMapEmpty!58237)) mapNonEmpty!58237))

(get-info :version)

(assert (= (and mapNonEmpty!58237 ((_ is ValueCellFull!17934) mapValue!58237)) b!1542130))

(assert (= (and b!1542128 ((_ is ValueCellFull!17934) mapDefault!58237)) b!1542131))

(assert (= start!131732 b!1542128))

(declare-fun m!1423879 () Bool)

(assert (=> start!131732 m!1423879))

(declare-fun m!1423881 () Bool)

(assert (=> start!131732 m!1423881))

(declare-fun m!1423883 () Bool)

(assert (=> start!131732 m!1423883))

(declare-fun m!1423885 () Bool)

(assert (=> mapNonEmpty!58237 m!1423885))

(declare-fun m!1423887 () Bool)

(assert (=> b!1542132 m!1423887))

(declare-fun m!1423889 () Bool)

(assert (=> b!1542133 m!1423889))

(check-sat (not mapNonEmpty!58237) (not b!1542132) (not b!1542133) (not start!131732) tp_is_empty!37689)
(check-sat)

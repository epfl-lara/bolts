; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131840 () Bool)

(assert start!131840)

(declare-fun res!1058900 () Bool)

(declare-fun e!858739 () Bool)

(assert (=> start!131840 (=> (not res!1058900) (not e!858739))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131840 (= res!1058900 (validMask!0 mask!926))))

(assert (=> start!131840 e!858739))

(assert (=> start!131840 true))

(declare-datatypes ((V!58839 0))(
  ( (V!58840 (val!18976 Int)) )
))
(declare-datatypes ((ValueCell!17988 0))(
  ( (ValueCellFull!17988 (v!21774 V!58839)) (EmptyCell!17988) )
))
(declare-datatypes ((array!102777 0))(
  ( (array!102778 (arr!49586 (Array (_ BitVec 32) ValueCell!17988)) (size!50137 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102777)

(declare-fun e!858741 () Bool)

(declare-fun array_inv!38503 (array!102777) Bool)

(assert (=> start!131840 (and (array_inv!38503 _values!470) e!858741)))

(declare-datatypes ((array!102779 0))(
  ( (array!102780 (arr!49587 (Array (_ BitVec 32) (_ BitVec 64))) (size!50138 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102779)

(declare-fun array_inv!38504 (array!102779) Bool)

(assert (=> start!131840 (array_inv!38504 _keys!618)))

(declare-fun b!1543100 () Bool)

(declare-fun e!858738 () Bool)

(declare-fun mapRes!58399 () Bool)

(assert (=> b!1543100 (= e!858741 (and e!858738 mapRes!58399))))

(declare-fun condMapEmpty!58399 () Bool)

(declare-fun mapDefault!58399 () ValueCell!17988)

(assert (=> b!1543100 (= condMapEmpty!58399 (= (arr!49586 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17988)) mapDefault!58399)))))

(declare-fun b!1543101 () Bool)

(declare-fun res!1058898 () Bool)

(assert (=> b!1543101 (=> (not res!1058898) (not e!858739))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543101 (= res!1058898 (and (= (size!50137 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50138 _keys!618) (size!50137 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543102 () Bool)

(declare-fun tp_is_empty!37797 () Bool)

(assert (=> b!1543102 (= e!858738 tp_is_empty!37797)))

(declare-fun b!1543103 () Bool)

(declare-fun e!858742 () Bool)

(assert (=> b!1543103 (= e!858742 tp_is_empty!37797)))

(declare-fun mapNonEmpty!58399 () Bool)

(declare-fun tp!110927 () Bool)

(assert (=> mapNonEmpty!58399 (= mapRes!58399 (and tp!110927 e!858742))))

(declare-fun mapRest!58399 () (Array (_ BitVec 32) ValueCell!17988))

(declare-fun mapKey!58399 () (_ BitVec 32))

(declare-fun mapValue!58399 () ValueCell!17988)

(assert (=> mapNonEmpty!58399 (= (arr!49586 _values!470) (store mapRest!58399 mapKey!58399 mapValue!58399))))

(declare-fun b!1543104 () Bool)

(assert (=> b!1543104 (= e!858739 false)))

(declare-fun lt!665870 () Bool)

(declare-datatypes ((List!36059 0))(
  ( (Nil!36056) (Cons!36055 (h!37501 (_ BitVec 64)) (t!50760 List!36059)) )
))
(declare-fun arrayNoDuplicates!0 (array!102779 (_ BitVec 32) List!36059) Bool)

(assert (=> b!1543104 (= lt!665870 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36056))))

(declare-fun b!1543105 () Bool)

(declare-fun res!1058899 () Bool)

(assert (=> b!1543105 (=> (not res!1058899) (not e!858739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102779 (_ BitVec 32)) Bool)

(assert (=> b!1543105 (= res!1058899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58399 () Bool)

(assert (=> mapIsEmpty!58399 mapRes!58399))

(assert (= (and start!131840 res!1058900) b!1543101))

(assert (= (and b!1543101 res!1058898) b!1543105))

(assert (= (and b!1543105 res!1058899) b!1543104))

(assert (= (and b!1543100 condMapEmpty!58399) mapIsEmpty!58399))

(assert (= (and b!1543100 (not condMapEmpty!58399)) mapNonEmpty!58399))

(get-info :version)

(assert (= (and mapNonEmpty!58399 ((_ is ValueCellFull!17988) mapValue!58399)) b!1543103))

(assert (= (and b!1543100 ((_ is ValueCellFull!17988) mapDefault!58399)) b!1543102))

(assert (= start!131840 b!1543100))

(declare-fun m!1424527 () Bool)

(assert (=> start!131840 m!1424527))

(declare-fun m!1424529 () Bool)

(assert (=> start!131840 m!1424529))

(declare-fun m!1424531 () Bool)

(assert (=> start!131840 m!1424531))

(declare-fun m!1424533 () Bool)

(assert (=> mapNonEmpty!58399 m!1424533))

(declare-fun m!1424535 () Bool)

(assert (=> b!1543104 m!1424535))

(declare-fun m!1424537 () Bool)

(assert (=> b!1543105 m!1424537))

(check-sat (not b!1543104) (not start!131840) (not mapNonEmpty!58399) tp_is_empty!37797 (not b!1543105))
(check-sat)

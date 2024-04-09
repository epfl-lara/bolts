; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131888 () Bool)

(assert start!131888)

(declare-fun b!1543532 () Bool)

(declare-fun e!859098 () Bool)

(declare-fun e!859100 () Bool)

(declare-fun mapRes!58471 () Bool)

(assert (=> b!1543532 (= e!859098 (and e!859100 mapRes!58471))))

(declare-fun condMapEmpty!58471 () Bool)

(declare-datatypes ((V!58903 0))(
  ( (V!58904 (val!19000 Int)) )
))
(declare-datatypes ((ValueCell!18012 0))(
  ( (ValueCellFull!18012 (v!21798 V!58903)) (EmptyCell!18012) )
))
(declare-datatypes ((array!102867 0))(
  ( (array!102868 (arr!49631 (Array (_ BitVec 32) ValueCell!18012)) (size!50182 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102867)

(declare-fun mapDefault!58471 () ValueCell!18012)

(assert (=> b!1543532 (= condMapEmpty!58471 (= (arr!49631 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18012)) mapDefault!58471)))))

(declare-fun b!1543533 () Bool)

(declare-fun res!1059116 () Bool)

(declare-fun e!859101 () Bool)

(assert (=> b!1543533 (=> (not res!1059116) (not e!859101))))

(declare-datatypes ((array!102869 0))(
  ( (array!102870 (arr!49632 (Array (_ BitVec 32) (_ BitVec 64))) (size!50183 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102869)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102869 (_ BitVec 32)) Bool)

(assert (=> b!1543533 (= res!1059116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543534 () Bool)

(assert (=> b!1543534 (= e!859101 false)))

(declare-fun lt!665942 () Bool)

(declare-datatypes ((List!36074 0))(
  ( (Nil!36071) (Cons!36070 (h!37516 (_ BitVec 64)) (t!50775 List!36074)) )
))
(declare-fun arrayNoDuplicates!0 (array!102869 (_ BitVec 32) List!36074) Bool)

(assert (=> b!1543534 (= lt!665942 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36071))))

(declare-fun res!1059115 () Bool)

(assert (=> start!131888 (=> (not res!1059115) (not e!859101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131888 (= res!1059115 (validMask!0 mask!926))))

(assert (=> start!131888 e!859101))

(assert (=> start!131888 true))

(declare-fun array_inv!38529 (array!102867) Bool)

(assert (=> start!131888 (and (array_inv!38529 _values!470) e!859098)))

(declare-fun array_inv!38530 (array!102869) Bool)

(assert (=> start!131888 (array_inv!38530 _keys!618)))

(declare-fun b!1543535 () Bool)

(declare-fun res!1059114 () Bool)

(assert (=> b!1543535 (=> (not res!1059114) (not e!859101))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543535 (= res!1059114 (and (= (size!50182 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50183 _keys!618) (size!50182 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58471 () Bool)

(assert (=> mapIsEmpty!58471 mapRes!58471))

(declare-fun b!1543536 () Bool)

(declare-fun tp_is_empty!37845 () Bool)

(assert (=> b!1543536 (= e!859100 tp_is_empty!37845)))

(declare-fun mapNonEmpty!58471 () Bool)

(declare-fun tp!110999 () Bool)

(declare-fun e!859102 () Bool)

(assert (=> mapNonEmpty!58471 (= mapRes!58471 (and tp!110999 e!859102))))

(declare-fun mapValue!58471 () ValueCell!18012)

(declare-fun mapRest!58471 () (Array (_ BitVec 32) ValueCell!18012))

(declare-fun mapKey!58471 () (_ BitVec 32))

(assert (=> mapNonEmpty!58471 (= (arr!49631 _values!470) (store mapRest!58471 mapKey!58471 mapValue!58471))))

(declare-fun b!1543537 () Bool)

(assert (=> b!1543537 (= e!859102 tp_is_empty!37845)))

(assert (= (and start!131888 res!1059115) b!1543535))

(assert (= (and b!1543535 res!1059114) b!1543533))

(assert (= (and b!1543533 res!1059116) b!1543534))

(assert (= (and b!1543532 condMapEmpty!58471) mapIsEmpty!58471))

(assert (= (and b!1543532 (not condMapEmpty!58471)) mapNonEmpty!58471))

(get-info :version)

(assert (= (and mapNonEmpty!58471 ((_ is ValueCellFull!18012) mapValue!58471)) b!1543537))

(assert (= (and b!1543532 ((_ is ValueCellFull!18012) mapDefault!58471)) b!1543536))

(assert (= start!131888 b!1543532))

(declare-fun m!1424815 () Bool)

(assert (=> b!1543533 m!1424815))

(declare-fun m!1424817 () Bool)

(assert (=> b!1543534 m!1424817))

(declare-fun m!1424819 () Bool)

(assert (=> start!131888 m!1424819))

(declare-fun m!1424821 () Bool)

(assert (=> start!131888 m!1424821))

(declare-fun m!1424823 () Bool)

(assert (=> start!131888 m!1424823))

(declare-fun m!1424825 () Bool)

(assert (=> mapNonEmpty!58471 m!1424825))

(check-sat (not mapNonEmpty!58471) (not b!1543533) tp_is_empty!37845 (not b!1543534) (not start!131888))
(check-sat)

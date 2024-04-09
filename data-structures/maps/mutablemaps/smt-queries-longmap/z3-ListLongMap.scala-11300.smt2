; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131738 () Bool)

(assert start!131738)

(declare-fun res!1058441 () Bool)

(declare-fun e!857975 () Bool)

(assert (=> start!131738 (=> (not res!1058441) (not e!857975))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131738 (= res!1058441 (validMask!0 mask!926))))

(assert (=> start!131738 e!857975))

(assert (=> start!131738 true))

(declare-datatypes ((V!58703 0))(
  ( (V!58704 (val!18925 Int)) )
))
(declare-datatypes ((ValueCell!17937 0))(
  ( (ValueCellFull!17937 (v!21723 V!58703)) (EmptyCell!17937) )
))
(declare-datatypes ((array!102585 0))(
  ( (array!102586 (arr!49490 (Array (_ BitVec 32) ValueCell!17937)) (size!50041 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102585)

(declare-fun e!857976 () Bool)

(declare-fun array_inv!38425 (array!102585) Bool)

(assert (=> start!131738 (and (array_inv!38425 _values!470) e!857976)))

(declare-datatypes ((array!102587 0))(
  ( (array!102588 (arr!49491 (Array (_ BitVec 32) (_ BitVec 64))) (size!50042 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102587)

(declare-fun array_inv!38426 (array!102587) Bool)

(assert (=> start!131738 (array_inv!38426 _keys!618)))

(declare-fun b!1542182 () Bool)

(declare-fun e!857974 () Bool)

(declare-fun mapRes!58246 () Bool)

(assert (=> b!1542182 (= e!857976 (and e!857974 mapRes!58246))))

(declare-fun condMapEmpty!58246 () Bool)

(declare-fun mapDefault!58246 () ValueCell!17937)

(assert (=> b!1542182 (= condMapEmpty!58246 (= (arr!49490 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17937)) mapDefault!58246)))))

(declare-fun b!1542183 () Bool)

(assert (=> b!1542183 (= e!857975 false)))

(declare-fun lt!665717 () Bool)

(declare-datatypes ((List!36025 0))(
  ( (Nil!36022) (Cons!36021 (h!37467 (_ BitVec 64)) (t!50726 List!36025)) )
))
(declare-fun arrayNoDuplicates!0 (array!102587 (_ BitVec 32) List!36025) Bool)

(assert (=> b!1542183 (= lt!665717 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36022))))

(declare-fun b!1542184 () Bool)

(declare-fun e!857977 () Bool)

(declare-fun tp_is_empty!37695 () Bool)

(assert (=> b!1542184 (= e!857977 tp_is_empty!37695)))

(declare-fun mapIsEmpty!58246 () Bool)

(assert (=> mapIsEmpty!58246 mapRes!58246))

(declare-fun b!1542185 () Bool)

(declare-fun res!1058440 () Bool)

(assert (=> b!1542185 (=> (not res!1058440) (not e!857975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102587 (_ BitVec 32)) Bool)

(assert (=> b!1542185 (= res!1058440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542186 () Bool)

(assert (=> b!1542186 (= e!857974 tp_is_empty!37695)))

(declare-fun b!1542187 () Bool)

(declare-fun res!1058439 () Bool)

(assert (=> b!1542187 (=> (not res!1058439) (not e!857975))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542187 (= res!1058439 (and (= (size!50041 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50042 _keys!618) (size!50041 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58246 () Bool)

(declare-fun tp!110774 () Bool)

(assert (=> mapNonEmpty!58246 (= mapRes!58246 (and tp!110774 e!857977))))

(declare-fun mapValue!58246 () ValueCell!17937)

(declare-fun mapRest!58246 () (Array (_ BitVec 32) ValueCell!17937))

(declare-fun mapKey!58246 () (_ BitVec 32))

(assert (=> mapNonEmpty!58246 (= (arr!49490 _values!470) (store mapRest!58246 mapKey!58246 mapValue!58246))))

(assert (= (and start!131738 res!1058441) b!1542187))

(assert (= (and b!1542187 res!1058439) b!1542185))

(assert (= (and b!1542185 res!1058440) b!1542183))

(assert (= (and b!1542182 condMapEmpty!58246) mapIsEmpty!58246))

(assert (= (and b!1542182 (not condMapEmpty!58246)) mapNonEmpty!58246))

(get-info :version)

(assert (= (and mapNonEmpty!58246 ((_ is ValueCellFull!17937) mapValue!58246)) b!1542184))

(assert (= (and b!1542182 ((_ is ValueCellFull!17937) mapDefault!58246)) b!1542186))

(assert (= start!131738 b!1542182))

(declare-fun m!1423915 () Bool)

(assert (=> start!131738 m!1423915))

(declare-fun m!1423917 () Bool)

(assert (=> start!131738 m!1423917))

(declare-fun m!1423919 () Bool)

(assert (=> start!131738 m!1423919))

(declare-fun m!1423921 () Bool)

(assert (=> b!1542183 m!1423921))

(declare-fun m!1423923 () Bool)

(assert (=> b!1542185 m!1423923))

(declare-fun m!1423925 () Bool)

(assert (=> mapNonEmpty!58246 m!1423925))

(check-sat (not b!1542185) (not start!131738) (not mapNonEmpty!58246) (not b!1542183) tp_is_empty!37695)
(check-sat)

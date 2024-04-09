; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131708 () Bool)

(assert start!131708)

(declare-fun b!1541912 () Bool)

(declare-fun res!1058305 () Bool)

(declare-fun e!857748 () Bool)

(assert (=> b!1541912 (=> (not res!1058305) (not e!857748))))

(declare-datatypes ((array!102529 0))(
  ( (array!102530 (arr!49462 (Array (_ BitVec 32) (_ BitVec 64))) (size!50013 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102529)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58663 0))(
  ( (V!58664 (val!18910 Int)) )
))
(declare-datatypes ((ValueCell!17922 0))(
  ( (ValueCellFull!17922 (v!21708 V!58663)) (EmptyCell!17922) )
))
(declare-datatypes ((array!102531 0))(
  ( (array!102532 (arr!49463 (Array (_ BitVec 32) ValueCell!17922)) (size!50014 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102531)

(assert (=> b!1541912 (= res!1058305 (and (= (size!50014 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50013 _keys!618) (size!50014 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541913 () Bool)

(declare-fun e!857750 () Bool)

(declare-fun e!857751 () Bool)

(declare-fun mapRes!58201 () Bool)

(assert (=> b!1541913 (= e!857750 (and e!857751 mapRes!58201))))

(declare-fun condMapEmpty!58201 () Bool)

(declare-fun mapDefault!58201 () ValueCell!17922)

(assert (=> b!1541913 (= condMapEmpty!58201 (= (arr!49463 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17922)) mapDefault!58201)))))

(declare-fun b!1541914 () Bool)

(declare-fun res!1058306 () Bool)

(assert (=> b!1541914 (=> (not res!1058306) (not e!857748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102529 (_ BitVec 32)) Bool)

(assert (=> b!1541914 (= res!1058306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58201 () Bool)

(declare-fun tp!110729 () Bool)

(declare-fun e!857752 () Bool)

(assert (=> mapNonEmpty!58201 (= mapRes!58201 (and tp!110729 e!857752))))

(declare-fun mapValue!58201 () ValueCell!17922)

(declare-fun mapRest!58201 () (Array (_ BitVec 32) ValueCell!17922))

(declare-fun mapKey!58201 () (_ BitVec 32))

(assert (=> mapNonEmpty!58201 (= (arr!49463 _values!470) (store mapRest!58201 mapKey!58201 mapValue!58201))))

(declare-fun b!1541915 () Bool)

(declare-fun tp_is_empty!37665 () Bool)

(assert (=> b!1541915 (= e!857752 tp_is_empty!37665)))

(declare-fun b!1541917 () Bool)

(assert (=> b!1541917 (= e!857751 tp_is_empty!37665)))

(declare-fun mapIsEmpty!58201 () Bool)

(assert (=> mapIsEmpty!58201 mapRes!58201))

(declare-fun b!1541916 () Bool)

(assert (=> b!1541916 (= e!857748 false)))

(declare-fun lt!665672 () Bool)

(declare-datatypes ((List!36017 0))(
  ( (Nil!36014) (Cons!36013 (h!37459 (_ BitVec 64)) (t!50718 List!36017)) )
))
(declare-fun arrayNoDuplicates!0 (array!102529 (_ BitVec 32) List!36017) Bool)

(assert (=> b!1541916 (= lt!665672 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36014))))

(declare-fun res!1058304 () Bool)

(assert (=> start!131708 (=> (not res!1058304) (not e!857748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131708 (= res!1058304 (validMask!0 mask!926))))

(assert (=> start!131708 e!857748))

(assert (=> start!131708 true))

(declare-fun array_inv!38401 (array!102531) Bool)

(assert (=> start!131708 (and (array_inv!38401 _values!470) e!857750)))

(declare-fun array_inv!38402 (array!102529) Bool)

(assert (=> start!131708 (array_inv!38402 _keys!618)))

(assert (= (and start!131708 res!1058304) b!1541912))

(assert (= (and b!1541912 res!1058305) b!1541914))

(assert (= (and b!1541914 res!1058306) b!1541916))

(assert (= (and b!1541913 condMapEmpty!58201) mapIsEmpty!58201))

(assert (= (and b!1541913 (not condMapEmpty!58201)) mapNonEmpty!58201))

(get-info :version)

(assert (= (and mapNonEmpty!58201 ((_ is ValueCellFull!17922) mapValue!58201)) b!1541915))

(assert (= (and b!1541913 ((_ is ValueCellFull!17922) mapDefault!58201)) b!1541917))

(assert (= start!131708 b!1541913))

(declare-fun m!1423735 () Bool)

(assert (=> b!1541914 m!1423735))

(declare-fun m!1423737 () Bool)

(assert (=> mapNonEmpty!58201 m!1423737))

(declare-fun m!1423739 () Bool)

(assert (=> b!1541916 m!1423739))

(declare-fun m!1423741 () Bool)

(assert (=> start!131708 m!1423741))

(declare-fun m!1423743 () Bool)

(assert (=> start!131708 m!1423743))

(declare-fun m!1423745 () Bool)

(assert (=> start!131708 m!1423745))

(check-sat (not mapNonEmpty!58201) (not b!1541914) (not b!1541916) tp_is_empty!37665 (not start!131708))
(check-sat)

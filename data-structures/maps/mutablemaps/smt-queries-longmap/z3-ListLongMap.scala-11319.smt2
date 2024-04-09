; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131852 () Bool)

(assert start!131852)

(declare-fun b!1543208 () Bool)

(declare-fun e!858829 () Bool)

(declare-fun tp_is_empty!37809 () Bool)

(assert (=> b!1543208 (= e!858829 tp_is_empty!37809)))

(declare-fun b!1543209 () Bool)

(declare-fun res!1058953 () Bool)

(declare-fun e!858832 () Bool)

(assert (=> b!1543209 (=> (not res!1058953) (not e!858832))))

(declare-datatypes ((array!102797 0))(
  ( (array!102798 (arr!49596 (Array (_ BitVec 32) (_ BitVec 64))) (size!50147 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102797)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58855 0))(
  ( (V!58856 (val!18982 Int)) )
))
(declare-datatypes ((ValueCell!17994 0))(
  ( (ValueCellFull!17994 (v!21780 V!58855)) (EmptyCell!17994) )
))
(declare-datatypes ((array!102799 0))(
  ( (array!102800 (arr!49597 (Array (_ BitVec 32) ValueCell!17994)) (size!50148 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102799)

(assert (=> b!1543209 (= res!1058953 (and (= (size!50148 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50147 _keys!618) (size!50148 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543210 () Bool)

(declare-fun e!858831 () Bool)

(declare-fun e!858830 () Bool)

(declare-fun mapRes!58417 () Bool)

(assert (=> b!1543210 (= e!858831 (and e!858830 mapRes!58417))))

(declare-fun condMapEmpty!58417 () Bool)

(declare-fun mapDefault!58417 () ValueCell!17994)

(assert (=> b!1543210 (= condMapEmpty!58417 (= (arr!49597 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17994)) mapDefault!58417)))))

(declare-fun mapNonEmpty!58417 () Bool)

(declare-fun tp!110945 () Bool)

(assert (=> mapNonEmpty!58417 (= mapRes!58417 (and tp!110945 e!858829))))

(declare-fun mapValue!58417 () ValueCell!17994)

(declare-fun mapRest!58417 () (Array (_ BitVec 32) ValueCell!17994))

(declare-fun mapKey!58417 () (_ BitVec 32))

(assert (=> mapNonEmpty!58417 (= (arr!49597 _values!470) (store mapRest!58417 mapKey!58417 mapValue!58417))))

(declare-fun b!1543211 () Bool)

(declare-fun res!1058952 () Bool)

(assert (=> b!1543211 (=> (not res!1058952) (not e!858832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102797 (_ BitVec 32)) Bool)

(assert (=> b!1543211 (= res!1058952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543212 () Bool)

(assert (=> b!1543212 (= e!858832 false)))

(declare-fun lt!665888 () Bool)

(declare-datatypes ((List!36061 0))(
  ( (Nil!36058) (Cons!36057 (h!37503 (_ BitVec 64)) (t!50762 List!36061)) )
))
(declare-fun arrayNoDuplicates!0 (array!102797 (_ BitVec 32) List!36061) Bool)

(assert (=> b!1543212 (= lt!665888 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36058))))

(declare-fun b!1543213 () Bool)

(assert (=> b!1543213 (= e!858830 tp_is_empty!37809)))

(declare-fun res!1058954 () Bool)

(assert (=> start!131852 (=> (not res!1058954) (not e!858832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131852 (= res!1058954 (validMask!0 mask!926))))

(assert (=> start!131852 e!858832))

(assert (=> start!131852 true))

(declare-fun array_inv!38509 (array!102799) Bool)

(assert (=> start!131852 (and (array_inv!38509 _values!470) e!858831)))

(declare-fun array_inv!38510 (array!102797) Bool)

(assert (=> start!131852 (array_inv!38510 _keys!618)))

(declare-fun mapIsEmpty!58417 () Bool)

(assert (=> mapIsEmpty!58417 mapRes!58417))

(assert (= (and start!131852 res!1058954) b!1543209))

(assert (= (and b!1543209 res!1058953) b!1543211))

(assert (= (and b!1543211 res!1058952) b!1543212))

(assert (= (and b!1543210 condMapEmpty!58417) mapIsEmpty!58417))

(assert (= (and b!1543210 (not condMapEmpty!58417)) mapNonEmpty!58417))

(get-info :version)

(assert (= (and mapNonEmpty!58417 ((_ is ValueCellFull!17994) mapValue!58417)) b!1543208))

(assert (= (and b!1543210 ((_ is ValueCellFull!17994) mapDefault!58417)) b!1543213))

(assert (= start!131852 b!1543210))

(declare-fun m!1424599 () Bool)

(assert (=> mapNonEmpty!58417 m!1424599))

(declare-fun m!1424601 () Bool)

(assert (=> b!1543211 m!1424601))

(declare-fun m!1424603 () Bool)

(assert (=> b!1543212 m!1424603))

(declare-fun m!1424605 () Bool)

(assert (=> start!131852 m!1424605))

(declare-fun m!1424607 () Bool)

(assert (=> start!131852 m!1424607))

(declare-fun m!1424609 () Bool)

(assert (=> start!131852 m!1424609))

(check-sat (not mapNonEmpty!58417) (not start!131852) tp_is_empty!37809 (not b!1543211) (not b!1543212))
(check-sat)

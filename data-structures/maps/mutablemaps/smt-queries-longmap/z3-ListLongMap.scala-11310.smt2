; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131798 () Bool)

(assert start!131798)

(declare-fun b!1542723 () Bool)

(declare-fun e!858423 () Bool)

(declare-fun tp_is_empty!37755 () Bool)

(assert (=> b!1542723 (= e!858423 tp_is_empty!37755)))

(declare-fun b!1542724 () Bool)

(declare-fun e!858425 () Bool)

(assert (=> b!1542724 (= e!858425 tp_is_empty!37755)))

(declare-fun b!1542725 () Bool)

(declare-fun e!858426 () Bool)

(assert (=> b!1542725 (= e!858426 false)))

(declare-fun lt!665807 () Bool)

(declare-datatypes ((array!102699 0))(
  ( (array!102700 (arr!49547 (Array (_ BitVec 32) (_ BitVec 64))) (size!50098 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102699)

(declare-datatypes ((List!36042 0))(
  ( (Nil!36039) (Cons!36038 (h!37484 (_ BitVec 64)) (t!50743 List!36042)) )
))
(declare-fun arrayNoDuplicates!0 (array!102699 (_ BitVec 32) List!36042) Bool)

(assert (=> b!1542725 (= lt!665807 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36039))))

(declare-fun mapIsEmpty!58336 () Bool)

(declare-fun mapRes!58336 () Bool)

(assert (=> mapIsEmpty!58336 mapRes!58336))

(declare-fun b!1542726 () Bool)

(declare-fun e!858427 () Bool)

(assert (=> b!1542726 (= e!858427 (and e!858425 mapRes!58336))))

(declare-fun condMapEmpty!58336 () Bool)

(declare-datatypes ((V!58783 0))(
  ( (V!58784 (val!18955 Int)) )
))
(declare-datatypes ((ValueCell!17967 0))(
  ( (ValueCellFull!17967 (v!21753 V!58783)) (EmptyCell!17967) )
))
(declare-datatypes ((array!102701 0))(
  ( (array!102702 (arr!49548 (Array (_ BitVec 32) ValueCell!17967)) (size!50099 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102701)

(declare-fun mapDefault!58336 () ValueCell!17967)

(assert (=> b!1542726 (= condMapEmpty!58336 (= (arr!49548 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17967)) mapDefault!58336)))))

(declare-fun b!1542722 () Bool)

(declare-fun res!1058711 () Bool)

(assert (=> b!1542722 (=> (not res!1058711) (not e!858426))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102699 (_ BitVec 32)) Bool)

(assert (=> b!1542722 (= res!1058711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1058710 () Bool)

(assert (=> start!131798 (=> (not res!1058710) (not e!858426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131798 (= res!1058710 (validMask!0 mask!926))))

(assert (=> start!131798 e!858426))

(assert (=> start!131798 true))

(declare-fun array_inv!38469 (array!102701) Bool)

(assert (=> start!131798 (and (array_inv!38469 _values!470) e!858427)))

(declare-fun array_inv!38470 (array!102699) Bool)

(assert (=> start!131798 (array_inv!38470 _keys!618)))

(declare-fun b!1542727 () Bool)

(declare-fun res!1058709 () Bool)

(assert (=> b!1542727 (=> (not res!1058709) (not e!858426))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542727 (= res!1058709 (and (= (size!50099 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50098 _keys!618) (size!50099 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58336 () Bool)

(declare-fun tp!110864 () Bool)

(assert (=> mapNonEmpty!58336 (= mapRes!58336 (and tp!110864 e!858423))))

(declare-fun mapRest!58336 () (Array (_ BitVec 32) ValueCell!17967))

(declare-fun mapValue!58336 () ValueCell!17967)

(declare-fun mapKey!58336 () (_ BitVec 32))

(assert (=> mapNonEmpty!58336 (= (arr!49548 _values!470) (store mapRest!58336 mapKey!58336 mapValue!58336))))

(assert (= (and start!131798 res!1058710) b!1542727))

(assert (= (and b!1542727 res!1058709) b!1542722))

(assert (= (and b!1542722 res!1058711) b!1542725))

(assert (= (and b!1542726 condMapEmpty!58336) mapIsEmpty!58336))

(assert (= (and b!1542726 (not condMapEmpty!58336)) mapNonEmpty!58336))

(get-info :version)

(assert (= (and mapNonEmpty!58336 ((_ is ValueCellFull!17967) mapValue!58336)) b!1542723))

(assert (= (and b!1542726 ((_ is ValueCellFull!17967) mapDefault!58336)) b!1542724))

(assert (= start!131798 b!1542726))

(declare-fun m!1424275 () Bool)

(assert (=> b!1542725 m!1424275))

(declare-fun m!1424277 () Bool)

(assert (=> b!1542722 m!1424277))

(declare-fun m!1424279 () Bool)

(assert (=> start!131798 m!1424279))

(declare-fun m!1424281 () Bool)

(assert (=> start!131798 m!1424281))

(declare-fun m!1424283 () Bool)

(assert (=> start!131798 m!1424283))

(declare-fun m!1424285 () Bool)

(assert (=> mapNonEmpty!58336 m!1424285))

(check-sat tp_is_empty!37755 (not b!1542725) (not b!1542722) (not start!131798) (not mapNonEmpty!58336))
(check-sat)

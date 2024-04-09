; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131774 () Bool)

(assert start!131774)

(declare-fun b!1542506 () Bool)

(declare-fun e!858244 () Bool)

(assert (=> b!1542506 (= e!858244 false)))

(declare-fun lt!665771 () Bool)

(declare-datatypes ((array!102657 0))(
  ( (array!102658 (arr!49526 (Array (_ BitVec 32) (_ BitVec 64))) (size!50077 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102657)

(declare-datatypes ((List!36037 0))(
  ( (Nil!36034) (Cons!36033 (h!37479 (_ BitVec 64)) (t!50738 List!36037)) )
))
(declare-fun arrayNoDuplicates!0 (array!102657 (_ BitVec 32) List!36037) Bool)

(assert (=> b!1542506 (= lt!665771 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36034))))

(declare-fun b!1542507 () Bool)

(declare-fun e!858246 () Bool)

(declare-fun tp_is_empty!37731 () Bool)

(assert (=> b!1542507 (= e!858246 tp_is_empty!37731)))

(declare-fun mapIsEmpty!58300 () Bool)

(declare-fun mapRes!58300 () Bool)

(assert (=> mapIsEmpty!58300 mapRes!58300))

(declare-fun b!1542508 () Bool)

(declare-fun res!1058603 () Bool)

(assert (=> b!1542508 (=> (not res!1058603) (not e!858244))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58751 0))(
  ( (V!58752 (val!18943 Int)) )
))
(declare-datatypes ((ValueCell!17955 0))(
  ( (ValueCellFull!17955 (v!21741 V!58751)) (EmptyCell!17955) )
))
(declare-datatypes ((array!102659 0))(
  ( (array!102660 (arr!49527 (Array (_ BitVec 32) ValueCell!17955)) (size!50078 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102659)

(assert (=> b!1542508 (= res!1058603 (and (= (size!50078 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50077 _keys!618) (size!50078 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58300 () Bool)

(declare-fun tp!110828 () Bool)

(assert (=> mapNonEmpty!58300 (= mapRes!58300 (and tp!110828 e!858246))))

(declare-fun mapRest!58300 () (Array (_ BitVec 32) ValueCell!17955))

(declare-fun mapKey!58300 () (_ BitVec 32))

(declare-fun mapValue!58300 () ValueCell!17955)

(assert (=> mapNonEmpty!58300 (= (arr!49527 _values!470) (store mapRest!58300 mapKey!58300 mapValue!58300))))

(declare-fun res!1058601 () Bool)

(assert (=> start!131774 (=> (not res!1058601) (not e!858244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131774 (= res!1058601 (validMask!0 mask!926))))

(assert (=> start!131774 e!858244))

(assert (=> start!131774 true))

(declare-fun e!858243 () Bool)

(declare-fun array_inv!38457 (array!102659) Bool)

(assert (=> start!131774 (and (array_inv!38457 _values!470) e!858243)))

(declare-fun array_inv!38458 (array!102657) Bool)

(assert (=> start!131774 (array_inv!38458 _keys!618)))

(declare-fun b!1542509 () Bool)

(declare-fun res!1058602 () Bool)

(assert (=> b!1542509 (=> (not res!1058602) (not e!858244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102657 (_ BitVec 32)) Bool)

(assert (=> b!1542509 (= res!1058602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542510 () Bool)

(declare-fun e!858245 () Bool)

(assert (=> b!1542510 (= e!858245 tp_is_empty!37731)))

(declare-fun b!1542511 () Bool)

(assert (=> b!1542511 (= e!858243 (and e!858245 mapRes!58300))))

(declare-fun condMapEmpty!58300 () Bool)

(declare-fun mapDefault!58300 () ValueCell!17955)

(assert (=> b!1542511 (= condMapEmpty!58300 (= (arr!49527 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17955)) mapDefault!58300)))))

(assert (= (and start!131774 res!1058601) b!1542508))

(assert (= (and b!1542508 res!1058603) b!1542509))

(assert (= (and b!1542509 res!1058602) b!1542506))

(assert (= (and b!1542511 condMapEmpty!58300) mapIsEmpty!58300))

(assert (= (and b!1542511 (not condMapEmpty!58300)) mapNonEmpty!58300))

(get-info :version)

(assert (= (and mapNonEmpty!58300 ((_ is ValueCellFull!17955) mapValue!58300)) b!1542507))

(assert (= (and b!1542511 ((_ is ValueCellFull!17955) mapDefault!58300)) b!1542510))

(assert (= start!131774 b!1542511))

(declare-fun m!1424131 () Bool)

(assert (=> b!1542506 m!1424131))

(declare-fun m!1424133 () Bool)

(assert (=> mapNonEmpty!58300 m!1424133))

(declare-fun m!1424135 () Bool)

(assert (=> start!131774 m!1424135))

(declare-fun m!1424137 () Bool)

(assert (=> start!131774 m!1424137))

(declare-fun m!1424139 () Bool)

(assert (=> start!131774 m!1424139))

(declare-fun m!1424141 () Bool)

(assert (=> b!1542509 m!1424141))

(check-sat tp_is_empty!37731 (not b!1542509) (not b!1542506) (not start!131774) (not mapNonEmpty!58300))
(check-sat)

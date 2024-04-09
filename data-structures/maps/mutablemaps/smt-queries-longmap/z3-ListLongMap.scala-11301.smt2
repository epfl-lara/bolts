; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131744 () Bool)

(assert start!131744)

(declare-fun mapNonEmpty!58255 () Bool)

(declare-fun mapRes!58255 () Bool)

(declare-fun tp!110783 () Bool)

(declare-fun e!858022 () Bool)

(assert (=> mapNonEmpty!58255 (= mapRes!58255 (and tp!110783 e!858022))))

(declare-datatypes ((V!58711 0))(
  ( (V!58712 (val!18928 Int)) )
))
(declare-datatypes ((ValueCell!17940 0))(
  ( (ValueCellFull!17940 (v!21726 V!58711)) (EmptyCell!17940) )
))
(declare-datatypes ((array!102597 0))(
  ( (array!102598 (arr!49496 (Array (_ BitVec 32) ValueCell!17940)) (size!50047 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102597)

(declare-fun mapRest!58255 () (Array (_ BitVec 32) ValueCell!17940))

(declare-fun mapValue!58255 () ValueCell!17940)

(declare-fun mapKey!58255 () (_ BitVec 32))

(assert (=> mapNonEmpty!58255 (= (arr!49496 _values!470) (store mapRest!58255 mapKey!58255 mapValue!58255))))

(declare-fun b!1542236 () Bool)

(declare-fun res!1058468 () Bool)

(declare-fun e!858018 () Bool)

(assert (=> b!1542236 (=> (not res!1058468) (not e!858018))))

(declare-datatypes ((array!102599 0))(
  ( (array!102600 (arr!49497 (Array (_ BitVec 32) (_ BitVec 64))) (size!50048 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102599)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102599 (_ BitVec 32)) Bool)

(assert (=> b!1542236 (= res!1058468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542237 () Bool)

(assert (=> b!1542237 (= e!858018 false)))

(declare-fun lt!665726 () Bool)

(declare-datatypes ((List!36028 0))(
  ( (Nil!36025) (Cons!36024 (h!37470 (_ BitVec 64)) (t!50729 List!36028)) )
))
(declare-fun arrayNoDuplicates!0 (array!102599 (_ BitVec 32) List!36028) Bool)

(assert (=> b!1542237 (= lt!665726 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36025))))

(declare-fun b!1542238 () Bool)

(declare-fun res!1058466 () Bool)

(assert (=> b!1542238 (=> (not res!1058466) (not e!858018))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542238 (= res!1058466 (and (= (size!50047 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50048 _keys!618) (size!50047 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542239 () Bool)

(declare-fun e!858019 () Bool)

(declare-fun tp_is_empty!37701 () Bool)

(assert (=> b!1542239 (= e!858019 tp_is_empty!37701)))

(declare-fun mapIsEmpty!58255 () Bool)

(assert (=> mapIsEmpty!58255 mapRes!58255))

(declare-fun b!1542240 () Bool)

(declare-fun e!858020 () Bool)

(assert (=> b!1542240 (= e!858020 (and e!858019 mapRes!58255))))

(declare-fun condMapEmpty!58255 () Bool)

(declare-fun mapDefault!58255 () ValueCell!17940)

(assert (=> b!1542240 (= condMapEmpty!58255 (= (arr!49496 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17940)) mapDefault!58255)))))

(declare-fun b!1542241 () Bool)

(assert (=> b!1542241 (= e!858022 tp_is_empty!37701)))

(declare-fun res!1058467 () Bool)

(assert (=> start!131744 (=> (not res!1058467) (not e!858018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131744 (= res!1058467 (validMask!0 mask!926))))

(assert (=> start!131744 e!858018))

(assert (=> start!131744 true))

(declare-fun array_inv!38431 (array!102597) Bool)

(assert (=> start!131744 (and (array_inv!38431 _values!470) e!858020)))

(declare-fun array_inv!38432 (array!102599) Bool)

(assert (=> start!131744 (array_inv!38432 _keys!618)))

(assert (= (and start!131744 res!1058467) b!1542238))

(assert (= (and b!1542238 res!1058466) b!1542236))

(assert (= (and b!1542236 res!1058468) b!1542237))

(assert (= (and b!1542240 condMapEmpty!58255) mapIsEmpty!58255))

(assert (= (and b!1542240 (not condMapEmpty!58255)) mapNonEmpty!58255))

(get-info :version)

(assert (= (and mapNonEmpty!58255 ((_ is ValueCellFull!17940) mapValue!58255)) b!1542241))

(assert (= (and b!1542240 ((_ is ValueCellFull!17940) mapDefault!58255)) b!1542239))

(assert (= start!131744 b!1542240))

(declare-fun m!1423951 () Bool)

(assert (=> mapNonEmpty!58255 m!1423951))

(declare-fun m!1423953 () Bool)

(assert (=> b!1542236 m!1423953))

(declare-fun m!1423955 () Bool)

(assert (=> b!1542237 m!1423955))

(declare-fun m!1423957 () Bool)

(assert (=> start!131744 m!1423957))

(declare-fun m!1423959 () Bool)

(assert (=> start!131744 m!1423959))

(declare-fun m!1423961 () Bool)

(assert (=> start!131744 m!1423961))

(check-sat (not b!1542236) tp_is_empty!37701 (not mapNonEmpty!58255) (not b!1542237) (not start!131744))
(check-sat)

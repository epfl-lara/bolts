; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111340 () Bool)

(assert start!111340)

(declare-fun b!1317076 () Bool)

(declare-fun e!751518 () Bool)

(declare-fun tp_is_empty!35781 () Bool)

(assert (=> b!1317076 (= e!751518 tp_is_empty!35781)))

(declare-fun b!1317077 () Bool)

(declare-fun e!751519 () Bool)

(assert (=> b!1317077 (= e!751519 false)))

(declare-fun lt!586258 () Bool)

(declare-datatypes ((array!88475 0))(
  ( (array!88476 (arr!42707 (Array (_ BitVec 32) (_ BitVec 64))) (size!43258 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88475)

(declare-datatypes ((List!30475 0))(
  ( (Nil!30472) (Cons!30471 (h!31680 (_ BitVec 64)) (t!44090 List!30475)) )
))
(declare-fun arrayNoDuplicates!0 (array!88475 (_ BitVec 32) List!30475) Bool)

(assert (=> b!1317077 (= lt!586258 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30472))))

(declare-fun b!1317078 () Bool)

(declare-fun res!874273 () Bool)

(assert (=> b!1317078 (=> (not res!874273) (not e!751519))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88475 (_ BitVec 32)) Bool)

(assert (=> b!1317078 (= res!874273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317079 () Bool)

(declare-fun e!751520 () Bool)

(declare-fun mapRes!55319 () Bool)

(assert (=> b!1317079 (= e!751520 (and e!751518 mapRes!55319))))

(declare-fun condMapEmpty!55319 () Bool)

(declare-datatypes ((V!52811 0))(
  ( (V!52812 (val!17965 Int)) )
))
(declare-datatypes ((ValueCell!16992 0))(
  ( (ValueCellFull!16992 (v!20593 V!52811)) (EmptyCell!16992) )
))
(declare-datatypes ((array!88477 0))(
  ( (array!88478 (arr!42708 (Array (_ BitVec 32) ValueCell!16992)) (size!43259 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88477)

(declare-fun mapDefault!55319 () ValueCell!16992)

(assert (=> b!1317079 (= condMapEmpty!55319 (= (arr!42708 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16992)) mapDefault!55319)))))

(declare-fun b!1317080 () Bool)

(declare-fun res!874271 () Bool)

(assert (=> b!1317080 (=> (not res!874271) (not e!751519))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1317080 (= res!874271 (and (= (size!43259 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43258 _keys!1609) (size!43259 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317081 () Bool)

(declare-fun e!751521 () Bool)

(assert (=> b!1317081 (= e!751521 tp_is_empty!35781)))

(declare-fun mapIsEmpty!55319 () Bool)

(assert (=> mapIsEmpty!55319 mapRes!55319))

(declare-fun res!874272 () Bool)

(assert (=> start!111340 (=> (not res!874272) (not e!751519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111340 (= res!874272 (validMask!0 mask!2019))))

(assert (=> start!111340 e!751519))

(assert (=> start!111340 true))

(declare-fun array_inv!32219 (array!88477) Bool)

(assert (=> start!111340 (and (array_inv!32219 _values!1337) e!751520)))

(declare-fun array_inv!32220 (array!88475) Bool)

(assert (=> start!111340 (array_inv!32220 _keys!1609)))

(declare-fun mapNonEmpty!55319 () Bool)

(declare-fun tp!105426 () Bool)

(assert (=> mapNonEmpty!55319 (= mapRes!55319 (and tp!105426 e!751521))))

(declare-fun mapRest!55319 () (Array (_ BitVec 32) ValueCell!16992))

(declare-fun mapKey!55319 () (_ BitVec 32))

(declare-fun mapValue!55319 () ValueCell!16992)

(assert (=> mapNonEmpty!55319 (= (arr!42708 _values!1337) (store mapRest!55319 mapKey!55319 mapValue!55319))))

(assert (= (and start!111340 res!874272) b!1317080))

(assert (= (and b!1317080 res!874271) b!1317078))

(assert (= (and b!1317078 res!874273) b!1317077))

(assert (= (and b!1317079 condMapEmpty!55319) mapIsEmpty!55319))

(assert (= (and b!1317079 (not condMapEmpty!55319)) mapNonEmpty!55319))

(get-info :version)

(assert (= (and mapNonEmpty!55319 ((_ is ValueCellFull!16992) mapValue!55319)) b!1317081))

(assert (= (and b!1317079 ((_ is ValueCellFull!16992) mapDefault!55319)) b!1317076))

(assert (= start!111340 b!1317079))

(declare-fun m!1205067 () Bool)

(assert (=> b!1317077 m!1205067))

(declare-fun m!1205069 () Bool)

(assert (=> b!1317078 m!1205069))

(declare-fun m!1205071 () Bool)

(assert (=> start!111340 m!1205071))

(declare-fun m!1205073 () Bool)

(assert (=> start!111340 m!1205073))

(declare-fun m!1205075 () Bool)

(assert (=> start!111340 m!1205075))

(declare-fun m!1205077 () Bool)

(assert (=> mapNonEmpty!55319 m!1205077))

(check-sat tp_is_empty!35781 (not b!1317077) (not mapNonEmpty!55319) (not start!111340) (not b!1317078))
(check-sat)

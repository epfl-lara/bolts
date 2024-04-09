; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111352 () Bool)

(assert start!111352)

(declare-fun mapNonEmpty!55337 () Bool)

(declare-fun mapRes!55337 () Bool)

(declare-fun tp!105444 () Bool)

(declare-fun e!751612 () Bool)

(assert (=> mapNonEmpty!55337 (= mapRes!55337 (and tp!105444 e!751612))))

(declare-datatypes ((V!52827 0))(
  ( (V!52828 (val!17971 Int)) )
))
(declare-datatypes ((ValueCell!16998 0))(
  ( (ValueCellFull!16998 (v!20599 V!52827)) (EmptyCell!16998) )
))
(declare-fun mapValue!55337 () ValueCell!16998)

(declare-datatypes ((array!88497 0))(
  ( (array!88498 (arr!42718 (Array (_ BitVec 32) ValueCell!16998)) (size!43269 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88497)

(declare-fun mapKey!55337 () (_ BitVec 32))

(declare-fun mapRest!55337 () (Array (_ BitVec 32) ValueCell!16998))

(assert (=> mapNonEmpty!55337 (= (arr!42718 _values!1337) (store mapRest!55337 mapKey!55337 mapValue!55337))))

(declare-fun b!1317184 () Bool)

(declare-fun res!874325 () Bool)

(declare-fun e!751610 () Bool)

(assert (=> b!1317184 (=> (not res!874325) (not e!751610))))

(declare-datatypes ((array!88499 0))(
  ( (array!88500 (arr!42719 (Array (_ BitVec 32) (_ BitVec 64))) (size!43270 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88499)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317184 (= res!874325 (and (= (size!43269 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43270 _keys!1609) (size!43269 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55337 () Bool)

(assert (=> mapIsEmpty!55337 mapRes!55337))

(declare-fun b!1317185 () Bool)

(declare-fun res!874327 () Bool)

(assert (=> b!1317185 (=> (not res!874327) (not e!751610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88499 (_ BitVec 32)) Bool)

(assert (=> b!1317185 (= res!874327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317186 () Bool)

(assert (=> b!1317186 (= e!751610 false)))

(declare-fun lt!586276 () Bool)

(declare-datatypes ((List!30479 0))(
  ( (Nil!30476) (Cons!30475 (h!31684 (_ BitVec 64)) (t!44094 List!30479)) )
))
(declare-fun arrayNoDuplicates!0 (array!88499 (_ BitVec 32) List!30479) Bool)

(assert (=> b!1317186 (= lt!586276 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30476))))

(declare-fun b!1317187 () Bool)

(declare-fun e!751608 () Bool)

(declare-fun e!751609 () Bool)

(assert (=> b!1317187 (= e!751608 (and e!751609 mapRes!55337))))

(declare-fun condMapEmpty!55337 () Bool)

(declare-fun mapDefault!55337 () ValueCell!16998)

(assert (=> b!1317187 (= condMapEmpty!55337 (= (arr!42718 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!16998)) mapDefault!55337)))))

(declare-fun res!874326 () Bool)

(assert (=> start!111352 (=> (not res!874326) (not e!751610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111352 (= res!874326 (validMask!0 mask!2019))))

(assert (=> start!111352 e!751610))

(assert (=> start!111352 true))

(declare-fun array_inv!32227 (array!88497) Bool)

(assert (=> start!111352 (and (array_inv!32227 _values!1337) e!751608)))

(declare-fun array_inv!32228 (array!88499) Bool)

(assert (=> start!111352 (array_inv!32228 _keys!1609)))

(declare-fun b!1317188 () Bool)

(declare-fun tp_is_empty!35793 () Bool)

(assert (=> b!1317188 (= e!751612 tp_is_empty!35793)))

(declare-fun b!1317189 () Bool)

(assert (=> b!1317189 (= e!751609 tp_is_empty!35793)))

(assert (= (and start!111352 res!874326) b!1317184))

(assert (= (and b!1317184 res!874325) b!1317185))

(assert (= (and b!1317185 res!874327) b!1317186))

(assert (= (and b!1317187 condMapEmpty!55337) mapIsEmpty!55337))

(assert (= (and b!1317187 (not condMapEmpty!55337)) mapNonEmpty!55337))

(get-info :version)

(assert (= (and mapNonEmpty!55337 ((_ is ValueCellFull!16998) mapValue!55337)) b!1317188))

(assert (= (and b!1317187 ((_ is ValueCellFull!16998) mapDefault!55337)) b!1317189))

(assert (= start!111352 b!1317187))

(declare-fun m!1205139 () Bool)

(assert (=> mapNonEmpty!55337 m!1205139))

(declare-fun m!1205141 () Bool)

(assert (=> b!1317185 m!1205141))

(declare-fun m!1205143 () Bool)

(assert (=> b!1317186 m!1205143))

(declare-fun m!1205145 () Bool)

(assert (=> start!111352 m!1205145))

(declare-fun m!1205147 () Bool)

(assert (=> start!111352 m!1205147))

(declare-fun m!1205149 () Bool)

(assert (=> start!111352 m!1205149))

(check-sat (not b!1317186) (not start!111352) tp_is_empty!35793 (not b!1317185) (not mapNonEmpty!55337))
(check-sat)

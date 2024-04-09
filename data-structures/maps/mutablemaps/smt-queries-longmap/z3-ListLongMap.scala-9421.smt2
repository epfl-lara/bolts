; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112172 () Bool)

(assert start!112172)

(declare-fun b!1327980 () Bool)

(declare-fun res!881213 () Bool)

(declare-fun e!757155 () Bool)

(assert (=> b!1327980 (=> (not res!881213) (not e!757155))))

(declare-datatypes ((array!89747 0))(
  ( (array!89748 (arr!43335 (Array (_ BitVec 32) (_ BitVec 64))) (size!43886 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89747)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89747 (_ BitVec 32)) Bool)

(assert (=> b!1327980 (= res!881213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56335 () Bool)

(declare-fun mapRes!56335 () Bool)

(declare-fun tp!107243 () Bool)

(declare-fun e!757159 () Bool)

(assert (=> mapNonEmpty!56335 (= mapRes!56335 (and tp!107243 e!757159))))

(declare-datatypes ((V!53691 0))(
  ( (V!53692 (val!18295 Int)) )
))
(declare-datatypes ((ValueCell!17322 0))(
  ( (ValueCellFull!17322 (v!20930 V!53691)) (EmptyCell!17322) )
))
(declare-datatypes ((array!89749 0))(
  ( (array!89750 (arr!43336 (Array (_ BitVec 32) ValueCell!17322)) (size!43887 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89749)

(declare-fun mapKey!56335 () (_ BitVec 32))

(declare-fun mapRest!56335 () (Array (_ BitVec 32) ValueCell!17322))

(declare-fun mapValue!56335 () ValueCell!17322)

(assert (=> mapNonEmpty!56335 (= (arr!43336 _values!1320) (store mapRest!56335 mapKey!56335 mapValue!56335))))

(declare-fun mapIsEmpty!56335 () Bool)

(assert (=> mapIsEmpty!56335 mapRes!56335))

(declare-fun b!1327982 () Bool)

(declare-fun e!757157 () Bool)

(declare-fun tp_is_empty!36441 () Bool)

(assert (=> b!1327982 (= e!757157 tp_is_empty!36441)))

(declare-fun b!1327983 () Bool)

(declare-fun e!757156 () Bool)

(assert (=> b!1327983 (= e!757156 (and e!757157 mapRes!56335))))

(declare-fun condMapEmpty!56335 () Bool)

(declare-fun mapDefault!56335 () ValueCell!17322)

(assert (=> b!1327983 (= condMapEmpty!56335 (= (arr!43336 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17322)) mapDefault!56335)))))

(declare-fun b!1327984 () Bool)

(assert (=> b!1327984 (= e!757159 tp_is_empty!36441)))

(declare-fun b!1327985 () Bool)

(assert (=> b!1327985 (= e!757155 false)))

(declare-fun lt!590735 () Bool)

(declare-datatypes ((List!30887 0))(
  ( (Nil!30884) (Cons!30883 (h!32092 (_ BitVec 64)) (t!44900 List!30887)) )
))
(declare-fun arrayNoDuplicates!0 (array!89747 (_ BitVec 32) List!30887) Bool)

(assert (=> b!1327985 (= lt!590735 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30884))))

(declare-fun res!881211 () Bool)

(assert (=> start!112172 (=> (not res!881211) (not e!757155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112172 (= res!881211 (validMask!0 mask!1998))))

(assert (=> start!112172 e!757155))

(assert (=> start!112172 true))

(declare-fun array_inv!32647 (array!89749) Bool)

(assert (=> start!112172 (and (array_inv!32647 _values!1320) e!757156)))

(declare-fun array_inv!32648 (array!89747) Bool)

(assert (=> start!112172 (array_inv!32648 _keys!1590)))

(declare-fun b!1327981 () Bool)

(declare-fun res!881212 () Bool)

(assert (=> b!1327981 (=> (not res!881212) (not e!757155))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1327981 (= res!881212 (and (= (size!43887 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43886 _keys!1590) (size!43887 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112172 res!881211) b!1327981))

(assert (= (and b!1327981 res!881212) b!1327980))

(assert (= (and b!1327980 res!881213) b!1327985))

(assert (= (and b!1327983 condMapEmpty!56335) mapIsEmpty!56335))

(assert (= (and b!1327983 (not condMapEmpty!56335)) mapNonEmpty!56335))

(get-info :version)

(assert (= (and mapNonEmpty!56335 ((_ is ValueCellFull!17322) mapValue!56335)) b!1327984))

(assert (= (and b!1327983 ((_ is ValueCellFull!17322) mapDefault!56335)) b!1327982))

(assert (= start!112172 b!1327983))

(declare-fun m!1217121 () Bool)

(assert (=> b!1327980 m!1217121))

(declare-fun m!1217123 () Bool)

(assert (=> mapNonEmpty!56335 m!1217123))

(declare-fun m!1217125 () Bool)

(assert (=> b!1327985 m!1217125))

(declare-fun m!1217127 () Bool)

(assert (=> start!112172 m!1217127))

(declare-fun m!1217129 () Bool)

(assert (=> start!112172 m!1217129))

(declare-fun m!1217131 () Bool)

(assert (=> start!112172 m!1217131))

(check-sat (not mapNonEmpty!56335) tp_is_empty!36441 (not b!1327980) (not b!1327985) (not start!112172))
(check-sat)

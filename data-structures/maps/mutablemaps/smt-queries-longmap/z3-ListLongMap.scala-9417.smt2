; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112148 () Bool)

(assert start!112148)

(declare-fun mapIsEmpty!56299 () Bool)

(declare-fun mapRes!56299 () Bool)

(assert (=> mapIsEmpty!56299 mapRes!56299))

(declare-fun mapNonEmpty!56299 () Bool)

(declare-fun tp!107207 () Bool)

(declare-fun e!756979 () Bool)

(assert (=> mapNonEmpty!56299 (= mapRes!56299 (and tp!107207 e!756979))))

(declare-datatypes ((V!53659 0))(
  ( (V!53660 (val!18283 Int)) )
))
(declare-datatypes ((ValueCell!17310 0))(
  ( (ValueCellFull!17310 (v!20918 V!53659)) (EmptyCell!17310) )
))
(declare-fun mapValue!56299 () ValueCell!17310)

(declare-datatypes ((array!89699 0))(
  ( (array!89700 (arr!43311 (Array (_ BitVec 32) ValueCell!17310)) (size!43862 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89699)

(declare-fun mapRest!56299 () (Array (_ BitVec 32) ValueCell!17310))

(declare-fun mapKey!56299 () (_ BitVec 32))

(assert (=> mapNonEmpty!56299 (= (arr!43311 _values!1320) (store mapRest!56299 mapKey!56299 mapValue!56299))))

(declare-fun b!1327764 () Bool)

(declare-fun e!756978 () Bool)

(declare-fun tp_is_empty!36417 () Bool)

(assert (=> b!1327764 (= e!756978 tp_is_empty!36417)))

(declare-fun b!1327765 () Bool)

(declare-fun res!881105 () Bool)

(declare-fun e!756977 () Bool)

(assert (=> b!1327765 (=> (not res!881105) (not e!756977))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89701 0))(
  ( (array!89702 (arr!43312 (Array (_ BitVec 32) (_ BitVec 64))) (size!43863 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89701)

(assert (=> b!1327765 (= res!881105 (and (= (size!43862 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43863 _keys!1590) (size!43862 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327766 () Bool)

(declare-fun e!756975 () Bool)

(assert (=> b!1327766 (= e!756975 (and e!756978 mapRes!56299))))

(declare-fun condMapEmpty!56299 () Bool)

(declare-fun mapDefault!56299 () ValueCell!17310)

(assert (=> b!1327766 (= condMapEmpty!56299 (= (arr!43311 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17310)) mapDefault!56299)))))

(declare-fun b!1327767 () Bool)

(declare-fun res!881104 () Bool)

(assert (=> b!1327767 (=> (not res!881104) (not e!756977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89701 (_ BitVec 32)) Bool)

(assert (=> b!1327767 (= res!881104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327768 () Bool)

(assert (=> b!1327768 (= e!756979 tp_is_empty!36417)))

(declare-fun b!1327769 () Bool)

(assert (=> b!1327769 (= e!756977 false)))

(declare-fun lt!590699 () Bool)

(declare-datatypes ((List!30878 0))(
  ( (Nil!30875) (Cons!30874 (h!32083 (_ BitVec 64)) (t!44891 List!30878)) )
))
(declare-fun arrayNoDuplicates!0 (array!89701 (_ BitVec 32) List!30878) Bool)

(assert (=> b!1327769 (= lt!590699 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30875))))

(declare-fun res!881103 () Bool)

(assert (=> start!112148 (=> (not res!881103) (not e!756977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112148 (= res!881103 (validMask!0 mask!1998))))

(assert (=> start!112148 e!756977))

(assert (=> start!112148 true))

(declare-fun array_inv!32633 (array!89699) Bool)

(assert (=> start!112148 (and (array_inv!32633 _values!1320) e!756975)))

(declare-fun array_inv!32634 (array!89701) Bool)

(assert (=> start!112148 (array_inv!32634 _keys!1590)))

(assert (= (and start!112148 res!881103) b!1327765))

(assert (= (and b!1327765 res!881105) b!1327767))

(assert (= (and b!1327767 res!881104) b!1327769))

(assert (= (and b!1327766 condMapEmpty!56299) mapIsEmpty!56299))

(assert (= (and b!1327766 (not condMapEmpty!56299)) mapNonEmpty!56299))

(get-info :version)

(assert (= (and mapNonEmpty!56299 ((_ is ValueCellFull!17310) mapValue!56299)) b!1327768))

(assert (= (and b!1327766 ((_ is ValueCellFull!17310) mapDefault!56299)) b!1327764))

(assert (= start!112148 b!1327766))

(declare-fun m!1216977 () Bool)

(assert (=> mapNonEmpty!56299 m!1216977))

(declare-fun m!1216979 () Bool)

(assert (=> b!1327767 m!1216979))

(declare-fun m!1216981 () Bool)

(assert (=> b!1327769 m!1216981))

(declare-fun m!1216983 () Bool)

(assert (=> start!112148 m!1216983))

(declare-fun m!1216985 () Bool)

(assert (=> start!112148 m!1216985))

(declare-fun m!1216987 () Bool)

(assert (=> start!112148 m!1216987))

(check-sat (not b!1327767) (not start!112148) tp_is_empty!36417 (not mapNonEmpty!56299) (not b!1327769))
(check-sat)

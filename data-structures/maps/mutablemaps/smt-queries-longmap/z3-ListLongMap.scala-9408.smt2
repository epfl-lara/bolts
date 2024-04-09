; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112050 () Bool)

(assert start!112050)

(declare-datatypes ((V!53587 0))(
  ( (V!53588 (val!18256 Int)) )
))
(declare-datatypes ((ValueCell!17283 0))(
  ( (ValueCellFull!17283 (v!20890 V!53587)) (EmptyCell!17283) )
))
(declare-datatypes ((array!89595 0))(
  ( (array!89596 (arr!43264 (Array (_ BitVec 32) ValueCell!17283)) (size!43815 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89595)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89597 0))(
  ( (array!89598 (arr!43265 (Array (_ BitVec 32) (_ BitVec 64))) (size!43816 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89597)

(declare-fun e!756476 () Bool)

(declare-fun b!1327160 () Bool)

(assert (=> b!1327160 (= e!756476 (and (= (size!43815 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43816 _keys!1590) (size!43815 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011) (not (= (size!43816 _keys!1590) (bvadd #b00000000000000000000000000000001 mask!1998)))))))

(declare-fun b!1327161 () Bool)

(declare-fun e!756477 () Bool)

(declare-fun e!756478 () Bool)

(declare-fun mapRes!56203 () Bool)

(assert (=> b!1327161 (= e!756477 (and e!756478 mapRes!56203))))

(declare-fun condMapEmpty!56203 () Bool)

(declare-fun mapDefault!56203 () ValueCell!17283)

(assert (=> b!1327161 (= condMapEmpty!56203 (= (arr!43264 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17283)) mapDefault!56203)))))

(declare-fun b!1327162 () Bool)

(declare-fun e!756479 () Bool)

(declare-fun tp_is_empty!36363 () Bool)

(assert (=> b!1327162 (= e!756479 tp_is_empty!36363)))

(declare-fun mapNonEmpty!56203 () Bool)

(declare-fun tp!107111 () Bool)

(assert (=> mapNonEmpty!56203 (= mapRes!56203 (and tp!107111 e!756479))))

(declare-fun mapRest!56203 () (Array (_ BitVec 32) ValueCell!17283))

(declare-fun mapValue!56203 () ValueCell!17283)

(declare-fun mapKey!56203 () (_ BitVec 32))

(assert (=> mapNonEmpty!56203 (= (arr!43264 _values!1320) (store mapRest!56203 mapKey!56203 mapValue!56203))))

(declare-fun res!880806 () Bool)

(assert (=> start!112050 (=> (not res!880806) (not e!756476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112050 (= res!880806 (validMask!0 mask!1998))))

(assert (=> start!112050 e!756476))

(assert (=> start!112050 true))

(declare-fun array_inv!32597 (array!89595) Bool)

(assert (=> start!112050 (and (array_inv!32597 _values!1320) e!756477)))

(declare-fun array_inv!32598 (array!89597) Bool)

(assert (=> start!112050 (array_inv!32598 _keys!1590)))

(declare-fun mapIsEmpty!56203 () Bool)

(assert (=> mapIsEmpty!56203 mapRes!56203))

(declare-fun b!1327163 () Bool)

(assert (=> b!1327163 (= e!756478 tp_is_empty!36363)))

(assert (= (and start!112050 res!880806) b!1327160))

(assert (= (and b!1327161 condMapEmpty!56203) mapIsEmpty!56203))

(assert (= (and b!1327161 (not condMapEmpty!56203)) mapNonEmpty!56203))

(get-info :version)

(assert (= (and mapNonEmpty!56203 ((_ is ValueCellFull!17283) mapValue!56203)) b!1327162))

(assert (= (and b!1327161 ((_ is ValueCellFull!17283) mapDefault!56203)) b!1327163))

(assert (= start!112050 b!1327161))

(declare-fun m!1216597 () Bool)

(assert (=> mapNonEmpty!56203 m!1216597))

(declare-fun m!1216599 () Bool)

(assert (=> start!112050 m!1216599))

(declare-fun m!1216601 () Bool)

(assert (=> start!112050 m!1216601))

(declare-fun m!1216603 () Bool)

(assert (=> start!112050 m!1216603))

(check-sat (not start!112050) (not mapNonEmpty!56203) tp_is_empty!36363)
(check-sat)

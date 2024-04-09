; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112142 () Bool)

(assert start!112142)

(declare-fun mapIsEmpty!56290 () Bool)

(declare-fun mapRes!56290 () Bool)

(assert (=> mapIsEmpty!56290 mapRes!56290))

(declare-fun b!1327710 () Bool)

(declare-fun e!756934 () Bool)

(assert (=> b!1327710 (= e!756934 false)))

(declare-fun lt!590690 () Bool)

(declare-datatypes ((array!89687 0))(
  ( (array!89688 (arr!43305 (Array (_ BitVec 32) (_ BitVec 64))) (size!43856 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89687)

(declare-datatypes ((List!30876 0))(
  ( (Nil!30873) (Cons!30872 (h!32081 (_ BitVec 64)) (t!44889 List!30876)) )
))
(declare-fun arrayNoDuplicates!0 (array!89687 (_ BitVec 32) List!30876) Bool)

(assert (=> b!1327710 (= lt!590690 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30873))))

(declare-fun mapNonEmpty!56290 () Bool)

(declare-fun tp!107198 () Bool)

(declare-fun e!756932 () Bool)

(assert (=> mapNonEmpty!56290 (= mapRes!56290 (and tp!107198 e!756932))))

(declare-datatypes ((V!53651 0))(
  ( (V!53652 (val!18280 Int)) )
))
(declare-datatypes ((ValueCell!17307 0))(
  ( (ValueCellFull!17307 (v!20915 V!53651)) (EmptyCell!17307) )
))
(declare-datatypes ((array!89689 0))(
  ( (array!89690 (arr!43306 (Array (_ BitVec 32) ValueCell!17307)) (size!43857 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89689)

(declare-fun mapValue!56290 () ValueCell!17307)

(declare-fun mapKey!56290 () (_ BitVec 32))

(declare-fun mapRest!56290 () (Array (_ BitVec 32) ValueCell!17307))

(assert (=> mapNonEmpty!56290 (= (arr!43306 _values!1320) (store mapRest!56290 mapKey!56290 mapValue!56290))))

(declare-fun res!881076 () Bool)

(assert (=> start!112142 (=> (not res!881076) (not e!756934))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112142 (= res!881076 (validMask!0 mask!1998))))

(assert (=> start!112142 e!756934))

(assert (=> start!112142 true))

(declare-fun e!756933 () Bool)

(declare-fun array_inv!32629 (array!89689) Bool)

(assert (=> start!112142 (and (array_inv!32629 _values!1320) e!756933)))

(declare-fun array_inv!32630 (array!89687) Bool)

(assert (=> start!112142 (array_inv!32630 _keys!1590)))

(declare-fun b!1327711 () Bool)

(declare-fun e!756931 () Bool)

(assert (=> b!1327711 (= e!756933 (and e!756931 mapRes!56290))))

(declare-fun condMapEmpty!56290 () Bool)

(declare-fun mapDefault!56290 () ValueCell!17307)

(assert (=> b!1327711 (= condMapEmpty!56290 (= (arr!43306 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17307)) mapDefault!56290)))))

(declare-fun b!1327712 () Bool)

(declare-fun tp_is_empty!36411 () Bool)

(assert (=> b!1327712 (= e!756932 tp_is_empty!36411)))

(declare-fun b!1327713 () Bool)

(declare-fun res!881078 () Bool)

(assert (=> b!1327713 (=> (not res!881078) (not e!756934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89687 (_ BitVec 32)) Bool)

(assert (=> b!1327713 (= res!881078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327714 () Bool)

(declare-fun res!881077 () Bool)

(assert (=> b!1327714 (=> (not res!881077) (not e!756934))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1327714 (= res!881077 (and (= (size!43857 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43856 _keys!1590) (size!43857 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327715 () Bool)

(assert (=> b!1327715 (= e!756931 tp_is_empty!36411)))

(assert (= (and start!112142 res!881076) b!1327714))

(assert (= (and b!1327714 res!881077) b!1327713))

(assert (= (and b!1327713 res!881078) b!1327710))

(assert (= (and b!1327711 condMapEmpty!56290) mapIsEmpty!56290))

(assert (= (and b!1327711 (not condMapEmpty!56290)) mapNonEmpty!56290))

(get-info :version)

(assert (= (and mapNonEmpty!56290 ((_ is ValueCellFull!17307) mapValue!56290)) b!1327712))

(assert (= (and b!1327711 ((_ is ValueCellFull!17307) mapDefault!56290)) b!1327715))

(assert (= start!112142 b!1327711))

(declare-fun m!1216941 () Bool)

(assert (=> b!1327710 m!1216941))

(declare-fun m!1216943 () Bool)

(assert (=> mapNonEmpty!56290 m!1216943))

(declare-fun m!1216945 () Bool)

(assert (=> start!112142 m!1216945))

(declare-fun m!1216947 () Bool)

(assert (=> start!112142 m!1216947))

(declare-fun m!1216949 () Bool)

(assert (=> start!112142 m!1216949))

(declare-fun m!1216951 () Bool)

(assert (=> b!1327713 m!1216951))

(check-sat (not start!112142) tp_is_empty!36411 (not mapNonEmpty!56290) (not b!1327710) (not b!1327713))
(check-sat)

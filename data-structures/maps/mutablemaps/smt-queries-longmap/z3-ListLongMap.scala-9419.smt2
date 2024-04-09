; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112160 () Bool)

(assert start!112160)

(declare-fun b!1327872 () Bool)

(declare-fun res!881157 () Bool)

(declare-fun e!757069 () Bool)

(assert (=> b!1327872 (=> (not res!881157) (not e!757069))))

(declare-datatypes ((V!53675 0))(
  ( (V!53676 (val!18289 Int)) )
))
(declare-datatypes ((ValueCell!17316 0))(
  ( (ValueCellFull!17316 (v!20924 V!53675)) (EmptyCell!17316) )
))
(declare-datatypes ((array!89723 0))(
  ( (array!89724 (arr!43323 (Array (_ BitVec 32) ValueCell!17316)) (size!43874 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89723)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89725 0))(
  ( (array!89726 (arr!43324 (Array (_ BitVec 32) (_ BitVec 64))) (size!43875 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89725)

(assert (=> b!1327872 (= res!881157 (and (= (size!43874 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43875 _keys!1590) (size!43874 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!881158 () Bool)

(assert (=> start!112160 (=> (not res!881158) (not e!757069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112160 (= res!881158 (validMask!0 mask!1998))))

(assert (=> start!112160 e!757069))

(assert (=> start!112160 true))

(declare-fun e!757068 () Bool)

(declare-fun array_inv!32641 (array!89723) Bool)

(assert (=> start!112160 (and (array_inv!32641 _values!1320) e!757068)))

(declare-fun array_inv!32642 (array!89725) Bool)

(assert (=> start!112160 (array_inv!32642 _keys!1590)))

(declare-fun b!1327873 () Bool)

(declare-fun e!757066 () Bool)

(declare-fun tp_is_empty!36429 () Bool)

(assert (=> b!1327873 (= e!757066 tp_is_empty!36429)))

(declare-fun b!1327874 () Bool)

(declare-fun res!881159 () Bool)

(assert (=> b!1327874 (=> (not res!881159) (not e!757069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89725 (_ BitVec 32)) Bool)

(assert (=> b!1327874 (= res!881159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327875 () Bool)

(declare-fun e!757065 () Bool)

(assert (=> b!1327875 (= e!757065 tp_is_empty!36429)))

(declare-fun mapNonEmpty!56317 () Bool)

(declare-fun mapRes!56317 () Bool)

(declare-fun tp!107225 () Bool)

(assert (=> mapNonEmpty!56317 (= mapRes!56317 (and tp!107225 e!757065))))

(declare-fun mapKey!56317 () (_ BitVec 32))

(declare-fun mapValue!56317 () ValueCell!17316)

(declare-fun mapRest!56317 () (Array (_ BitVec 32) ValueCell!17316))

(assert (=> mapNonEmpty!56317 (= (arr!43323 _values!1320) (store mapRest!56317 mapKey!56317 mapValue!56317))))

(declare-fun b!1327876 () Bool)

(assert (=> b!1327876 (= e!757069 false)))

(declare-fun lt!590717 () Bool)

(declare-datatypes ((List!30883 0))(
  ( (Nil!30880) (Cons!30879 (h!32088 (_ BitVec 64)) (t!44896 List!30883)) )
))
(declare-fun arrayNoDuplicates!0 (array!89725 (_ BitVec 32) List!30883) Bool)

(assert (=> b!1327876 (= lt!590717 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30880))))

(declare-fun b!1327877 () Bool)

(assert (=> b!1327877 (= e!757068 (and e!757066 mapRes!56317))))

(declare-fun condMapEmpty!56317 () Bool)

(declare-fun mapDefault!56317 () ValueCell!17316)

(assert (=> b!1327877 (= condMapEmpty!56317 (= (arr!43323 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17316)) mapDefault!56317)))))

(declare-fun mapIsEmpty!56317 () Bool)

(assert (=> mapIsEmpty!56317 mapRes!56317))

(assert (= (and start!112160 res!881158) b!1327872))

(assert (= (and b!1327872 res!881157) b!1327874))

(assert (= (and b!1327874 res!881159) b!1327876))

(assert (= (and b!1327877 condMapEmpty!56317) mapIsEmpty!56317))

(assert (= (and b!1327877 (not condMapEmpty!56317)) mapNonEmpty!56317))

(get-info :version)

(assert (= (and mapNonEmpty!56317 ((_ is ValueCellFull!17316) mapValue!56317)) b!1327875))

(assert (= (and b!1327877 ((_ is ValueCellFull!17316) mapDefault!56317)) b!1327873))

(assert (= start!112160 b!1327877))

(declare-fun m!1217049 () Bool)

(assert (=> start!112160 m!1217049))

(declare-fun m!1217051 () Bool)

(assert (=> start!112160 m!1217051))

(declare-fun m!1217053 () Bool)

(assert (=> start!112160 m!1217053))

(declare-fun m!1217055 () Bool)

(assert (=> b!1327874 m!1217055))

(declare-fun m!1217057 () Bool)

(assert (=> mapNonEmpty!56317 m!1217057))

(declare-fun m!1217059 () Bool)

(assert (=> b!1327876 m!1217059))

(check-sat (not start!112160) tp_is_empty!36429 (not b!1327874) (not mapNonEmpty!56317) (not b!1327876))
(check-sat)

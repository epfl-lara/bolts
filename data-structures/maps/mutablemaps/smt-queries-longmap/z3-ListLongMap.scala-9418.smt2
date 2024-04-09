; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112154 () Bool)

(assert start!112154)

(declare-fun mapIsEmpty!56308 () Bool)

(declare-fun mapRes!56308 () Bool)

(assert (=> mapIsEmpty!56308 mapRes!56308))

(declare-fun res!881130 () Bool)

(declare-fun e!757022 () Bool)

(assert (=> start!112154 (=> (not res!881130) (not e!757022))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112154 (= res!881130 (validMask!0 mask!1998))))

(assert (=> start!112154 e!757022))

(assert (=> start!112154 true))

(declare-datatypes ((V!53667 0))(
  ( (V!53668 (val!18286 Int)) )
))
(declare-datatypes ((ValueCell!17313 0))(
  ( (ValueCellFull!17313 (v!20921 V!53667)) (EmptyCell!17313) )
))
(declare-datatypes ((array!89711 0))(
  ( (array!89712 (arr!43317 (Array (_ BitVec 32) ValueCell!17313)) (size!43868 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89711)

(declare-fun e!757023 () Bool)

(declare-fun array_inv!32637 (array!89711) Bool)

(assert (=> start!112154 (and (array_inv!32637 _values!1320) e!757023)))

(declare-datatypes ((array!89713 0))(
  ( (array!89714 (arr!43318 (Array (_ BitVec 32) (_ BitVec 64))) (size!43869 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89713)

(declare-fun array_inv!32638 (array!89713) Bool)

(assert (=> start!112154 (array_inv!32638 _keys!1590)))

(declare-fun b!1327818 () Bool)

(declare-fun e!757021 () Bool)

(declare-fun tp_is_empty!36423 () Bool)

(assert (=> b!1327818 (= e!757021 tp_is_empty!36423)))

(declare-fun mapNonEmpty!56308 () Bool)

(declare-fun tp!107216 () Bool)

(declare-fun e!757020 () Bool)

(assert (=> mapNonEmpty!56308 (= mapRes!56308 (and tp!107216 e!757020))))

(declare-fun mapValue!56308 () ValueCell!17313)

(declare-fun mapKey!56308 () (_ BitVec 32))

(declare-fun mapRest!56308 () (Array (_ BitVec 32) ValueCell!17313))

(assert (=> mapNonEmpty!56308 (= (arr!43317 _values!1320) (store mapRest!56308 mapKey!56308 mapValue!56308))))

(declare-fun b!1327819 () Bool)

(assert (=> b!1327819 (= e!757023 (and e!757021 mapRes!56308))))

(declare-fun condMapEmpty!56308 () Bool)

(declare-fun mapDefault!56308 () ValueCell!17313)

(assert (=> b!1327819 (= condMapEmpty!56308 (= (arr!43317 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17313)) mapDefault!56308)))))

(declare-fun b!1327820 () Bool)

(declare-fun res!881132 () Bool)

(assert (=> b!1327820 (=> (not res!881132) (not e!757022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89713 (_ BitVec 32)) Bool)

(assert (=> b!1327820 (= res!881132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327821 () Bool)

(assert (=> b!1327821 (= e!757022 false)))

(declare-fun lt!590708 () Bool)

(declare-datatypes ((List!30881 0))(
  ( (Nil!30878) (Cons!30877 (h!32086 (_ BitVec 64)) (t!44894 List!30881)) )
))
(declare-fun arrayNoDuplicates!0 (array!89713 (_ BitVec 32) List!30881) Bool)

(assert (=> b!1327821 (= lt!590708 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30878))))

(declare-fun b!1327822 () Bool)

(assert (=> b!1327822 (= e!757020 tp_is_empty!36423)))

(declare-fun b!1327823 () Bool)

(declare-fun res!881131 () Bool)

(assert (=> b!1327823 (=> (not res!881131) (not e!757022))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1327823 (= res!881131 (and (= (size!43868 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43869 _keys!1590) (size!43868 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112154 res!881130) b!1327823))

(assert (= (and b!1327823 res!881131) b!1327820))

(assert (= (and b!1327820 res!881132) b!1327821))

(assert (= (and b!1327819 condMapEmpty!56308) mapIsEmpty!56308))

(assert (= (and b!1327819 (not condMapEmpty!56308)) mapNonEmpty!56308))

(get-info :version)

(assert (= (and mapNonEmpty!56308 ((_ is ValueCellFull!17313) mapValue!56308)) b!1327822))

(assert (= (and b!1327819 ((_ is ValueCellFull!17313) mapDefault!56308)) b!1327818))

(assert (= start!112154 b!1327819))

(declare-fun m!1217013 () Bool)

(assert (=> start!112154 m!1217013))

(declare-fun m!1217015 () Bool)

(assert (=> start!112154 m!1217015))

(declare-fun m!1217017 () Bool)

(assert (=> start!112154 m!1217017))

(declare-fun m!1217019 () Bool)

(assert (=> mapNonEmpty!56308 m!1217019))

(declare-fun m!1217021 () Bool)

(assert (=> b!1327820 m!1217021))

(declare-fun m!1217023 () Bool)

(assert (=> b!1327821 m!1217023))

(check-sat (not b!1327821) tp_is_empty!36423 (not mapNonEmpty!56308) (not start!112154) (not b!1327820))
(check-sat)

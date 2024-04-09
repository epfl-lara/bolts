; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111790 () Bool)

(assert start!111790)

(declare-fun b_free!30411 () Bool)

(declare-fun b_next!30411 () Bool)

(assert (=> start!111790 (= b_free!30411 (not b_next!30411))))

(declare-fun tp!106710 () Bool)

(declare-fun b_and!48959 () Bool)

(assert (=> start!111790 (= tp!106710 b_and!48959)))

(declare-fun b!1324127 () Bool)

(declare-fun res!878982 () Bool)

(declare-fun e!754893 () Bool)

(assert (=> b!1324127 (=> (not res!878982) (not e!754893))))

(declare-datatypes ((array!89331 0))(
  ( (array!89332 (arr!43135 (Array (_ BitVec 32) (_ BitVec 64))) (size!43686 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89331)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53411 0))(
  ( (V!53412 (val!18190 Int)) )
))
(declare-datatypes ((ValueCell!17217 0))(
  ( (ValueCellFull!17217 (v!20818 V!53411)) (EmptyCell!17217) )
))
(declare-datatypes ((array!89333 0))(
  ( (array!89334 (arr!43136 (Array (_ BitVec 32) ValueCell!17217)) (size!43687 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89333)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1324127 (= res!878982 (and (= (size!43687 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43686 _keys!1609) (size!43687 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324128 () Bool)

(declare-fun res!878981 () Bool)

(assert (=> b!1324128 (=> (not res!878981) (not e!754893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89331 (_ BitVec 32)) Bool)

(assert (=> b!1324128 (= res!878981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324129 () Bool)

(assert (=> b!1324129 (= e!754893 false)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53411)

(declare-fun minValue!1279 () V!53411)

(declare-fun lt!589381 () Bool)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23602 0))(
  ( (tuple2!23603 (_1!11811 (_ BitVec 64)) (_2!11811 V!53411)) )
))
(declare-datatypes ((List!30776 0))(
  ( (Nil!30773) (Cons!30772 (h!31981 tuple2!23602) (t!44709 List!30776)) )
))
(declare-datatypes ((ListLongMap!21271 0))(
  ( (ListLongMap!21272 (toList!10651 List!30776)) )
))
(declare-fun contains!8742 (ListLongMap!21271 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5588 (array!89331 array!89333 (_ BitVec 32) (_ BitVec 32) V!53411 V!53411 (_ BitVec 32) Int) ListLongMap!21271)

(assert (=> b!1324129 (= lt!589381 (contains!8742 (getCurrentListMap!5588 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1324130 () Bool)

(declare-fun res!878980 () Bool)

(assert (=> b!1324130 (=> (not res!878980) (not e!754893))))

(declare-datatypes ((List!30777 0))(
  ( (Nil!30774) (Cons!30773 (h!31982 (_ BitVec 64)) (t!44710 List!30777)) )
))
(declare-fun arrayNoDuplicates!0 (array!89331 (_ BitVec 32) List!30777) Bool)

(assert (=> b!1324130 (= res!878980 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30774))))

(declare-fun mapIsEmpty!55994 () Bool)

(declare-fun mapRes!55994 () Bool)

(assert (=> mapIsEmpty!55994 mapRes!55994))

(declare-fun mapNonEmpty!55994 () Bool)

(declare-fun tp!106709 () Bool)

(declare-fun e!754894 () Bool)

(assert (=> mapNonEmpty!55994 (= mapRes!55994 (and tp!106709 e!754894))))

(declare-fun mapKey!55994 () (_ BitVec 32))

(declare-fun mapRest!55994 () (Array (_ BitVec 32) ValueCell!17217))

(declare-fun mapValue!55994 () ValueCell!17217)

(assert (=> mapNonEmpty!55994 (= (arr!43136 _values!1337) (store mapRest!55994 mapKey!55994 mapValue!55994))))

(declare-fun b!1324131 () Bool)

(declare-fun e!754895 () Bool)

(declare-fun e!754896 () Bool)

(assert (=> b!1324131 (= e!754895 (and e!754896 mapRes!55994))))

(declare-fun condMapEmpty!55994 () Bool)

(declare-fun mapDefault!55994 () ValueCell!17217)

(assert (=> b!1324131 (= condMapEmpty!55994 (= (arr!43136 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17217)) mapDefault!55994)))))

(declare-fun b!1324132 () Bool)

(declare-fun tp_is_empty!36231 () Bool)

(assert (=> b!1324132 (= e!754894 tp_is_empty!36231)))

(declare-fun res!878979 () Bool)

(assert (=> start!111790 (=> (not res!878979) (not e!754893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111790 (= res!878979 (validMask!0 mask!2019))))

(assert (=> start!111790 e!754893))

(declare-fun array_inv!32509 (array!89331) Bool)

(assert (=> start!111790 (array_inv!32509 _keys!1609)))

(assert (=> start!111790 true))

(assert (=> start!111790 tp_is_empty!36231))

(declare-fun array_inv!32510 (array!89333) Bool)

(assert (=> start!111790 (and (array_inv!32510 _values!1337) e!754895)))

(assert (=> start!111790 tp!106710))

(declare-fun b!1324133 () Bool)

(declare-fun res!878983 () Bool)

(assert (=> b!1324133 (=> (not res!878983) (not e!754893))))

(assert (=> b!1324133 (= res!878983 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43686 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324134 () Bool)

(assert (=> b!1324134 (= e!754896 tp_is_empty!36231)))

(assert (= (and start!111790 res!878979) b!1324127))

(assert (= (and b!1324127 res!878982) b!1324128))

(assert (= (and b!1324128 res!878981) b!1324130))

(assert (= (and b!1324130 res!878980) b!1324133))

(assert (= (and b!1324133 res!878983) b!1324129))

(assert (= (and b!1324131 condMapEmpty!55994) mapIsEmpty!55994))

(assert (= (and b!1324131 (not condMapEmpty!55994)) mapNonEmpty!55994))

(get-info :version)

(assert (= (and mapNonEmpty!55994 ((_ is ValueCellFull!17217) mapValue!55994)) b!1324132))

(assert (= (and b!1324131 ((_ is ValueCellFull!17217) mapDefault!55994)) b!1324134))

(assert (= start!111790 b!1324131))

(declare-fun m!1213099 () Bool)

(assert (=> b!1324129 m!1213099))

(assert (=> b!1324129 m!1213099))

(declare-fun m!1213101 () Bool)

(assert (=> b!1324129 m!1213101))

(declare-fun m!1213103 () Bool)

(assert (=> b!1324128 m!1213103))

(declare-fun m!1213105 () Bool)

(assert (=> mapNonEmpty!55994 m!1213105))

(declare-fun m!1213107 () Bool)

(assert (=> start!111790 m!1213107))

(declare-fun m!1213109 () Bool)

(assert (=> start!111790 m!1213109))

(declare-fun m!1213111 () Bool)

(assert (=> start!111790 m!1213111))

(declare-fun m!1213113 () Bool)

(assert (=> b!1324130 m!1213113))

(check-sat tp_is_empty!36231 (not start!111790) (not b_next!30411) (not b!1324128) (not b!1324129) (not mapNonEmpty!55994) (not b!1324130) b_and!48959)
(check-sat b_and!48959 (not b_next!30411))

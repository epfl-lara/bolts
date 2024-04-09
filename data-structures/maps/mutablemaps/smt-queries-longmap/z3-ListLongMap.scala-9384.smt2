; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111778 () Bool)

(assert start!111778)

(declare-fun b_free!30399 () Bool)

(declare-fun b_next!30399 () Bool)

(assert (=> start!111778 (= b_free!30399 (not b_next!30399))))

(declare-fun tp!106673 () Bool)

(declare-fun b_and!48947 () Bool)

(assert (=> start!111778 (= tp!106673 b_and!48947)))

(declare-fun b!1323983 () Bool)

(declare-fun e!754806 () Bool)

(assert (=> b!1323983 (= e!754806 false)))

(declare-datatypes ((array!89307 0))(
  ( (array!89308 (arr!43123 (Array (_ BitVec 32) (_ BitVec 64))) (size!43674 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89307)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun lt!589363 () Bool)

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53395 0))(
  ( (V!53396 (val!18184 Int)) )
))
(declare-fun zeroValue!1279 () V!53395)

(declare-datatypes ((ValueCell!17211 0))(
  ( (ValueCellFull!17211 (v!20812 V!53395)) (EmptyCell!17211) )
))
(declare-datatypes ((array!89309 0))(
  ( (array!89310 (arr!43124 (Array (_ BitVec 32) ValueCell!17211)) (size!43675 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89309)

(declare-fun minValue!1279 () V!53395)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23592 0))(
  ( (tuple2!23593 (_1!11806 (_ BitVec 64)) (_2!11806 V!53395)) )
))
(declare-datatypes ((List!30765 0))(
  ( (Nil!30762) (Cons!30761 (h!31970 tuple2!23592) (t!44698 List!30765)) )
))
(declare-datatypes ((ListLongMap!21261 0))(
  ( (ListLongMap!21262 (toList!10646 List!30765)) )
))
(declare-fun contains!8737 (ListLongMap!21261 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5583 (array!89307 array!89309 (_ BitVec 32) (_ BitVec 32) V!53395 V!53395 (_ BitVec 32) Int) ListLongMap!21261)

(assert (=> b!1323983 (= lt!589363 (contains!8737 (getCurrentListMap!5583 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapNonEmpty!55976 () Bool)

(declare-fun mapRes!55976 () Bool)

(declare-fun tp!106674 () Bool)

(declare-fun e!754804 () Bool)

(assert (=> mapNonEmpty!55976 (= mapRes!55976 (and tp!106674 e!754804))))

(declare-fun mapKey!55976 () (_ BitVec 32))

(declare-fun mapValue!55976 () ValueCell!17211)

(declare-fun mapRest!55976 () (Array (_ BitVec 32) ValueCell!17211))

(assert (=> mapNonEmpty!55976 (= (arr!43124 _values!1337) (store mapRest!55976 mapKey!55976 mapValue!55976))))

(declare-fun b!1323984 () Bool)

(declare-fun res!878891 () Bool)

(assert (=> b!1323984 (=> (not res!878891) (not e!754806))))

(declare-datatypes ((List!30766 0))(
  ( (Nil!30763) (Cons!30762 (h!31971 (_ BitVec 64)) (t!44699 List!30766)) )
))
(declare-fun arrayNoDuplicates!0 (array!89307 (_ BitVec 32) List!30766) Bool)

(assert (=> b!1323984 (= res!878891 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30763))))

(declare-fun res!878890 () Bool)

(assert (=> start!111778 (=> (not res!878890) (not e!754806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111778 (= res!878890 (validMask!0 mask!2019))))

(assert (=> start!111778 e!754806))

(declare-fun array_inv!32503 (array!89307) Bool)

(assert (=> start!111778 (array_inv!32503 _keys!1609)))

(assert (=> start!111778 true))

(declare-fun tp_is_empty!36219 () Bool)

(assert (=> start!111778 tp_is_empty!36219))

(declare-fun e!754805 () Bool)

(declare-fun array_inv!32504 (array!89309) Bool)

(assert (=> start!111778 (and (array_inv!32504 _values!1337) e!754805)))

(assert (=> start!111778 tp!106673))

(declare-fun mapIsEmpty!55976 () Bool)

(assert (=> mapIsEmpty!55976 mapRes!55976))

(declare-fun b!1323985 () Bool)

(declare-fun e!754807 () Bool)

(assert (=> b!1323985 (= e!754807 tp_is_empty!36219)))

(declare-fun b!1323986 () Bool)

(declare-fun res!878892 () Bool)

(assert (=> b!1323986 (=> (not res!878892) (not e!754806))))

(assert (=> b!1323986 (= res!878892 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43674 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323987 () Bool)

(assert (=> b!1323987 (= e!754805 (and e!754807 mapRes!55976))))

(declare-fun condMapEmpty!55976 () Bool)

(declare-fun mapDefault!55976 () ValueCell!17211)

(assert (=> b!1323987 (= condMapEmpty!55976 (= (arr!43124 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17211)) mapDefault!55976)))))

(declare-fun b!1323988 () Bool)

(declare-fun res!878893 () Bool)

(assert (=> b!1323988 (=> (not res!878893) (not e!754806))))

(assert (=> b!1323988 (= res!878893 (and (= (size!43675 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43674 _keys!1609) (size!43675 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323989 () Bool)

(assert (=> b!1323989 (= e!754804 tp_is_empty!36219)))

(declare-fun b!1323990 () Bool)

(declare-fun res!878889 () Bool)

(assert (=> b!1323990 (=> (not res!878889) (not e!754806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89307 (_ BitVec 32)) Bool)

(assert (=> b!1323990 (= res!878889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(assert (= (and start!111778 res!878890) b!1323988))

(assert (= (and b!1323988 res!878893) b!1323990))

(assert (= (and b!1323990 res!878889) b!1323984))

(assert (= (and b!1323984 res!878891) b!1323986))

(assert (= (and b!1323986 res!878892) b!1323983))

(assert (= (and b!1323987 condMapEmpty!55976) mapIsEmpty!55976))

(assert (= (and b!1323987 (not condMapEmpty!55976)) mapNonEmpty!55976))

(get-info :version)

(assert (= (and mapNonEmpty!55976 ((_ is ValueCellFull!17211) mapValue!55976)) b!1323989))

(assert (= (and b!1323987 ((_ is ValueCellFull!17211) mapDefault!55976)) b!1323985))

(assert (= start!111778 b!1323987))

(declare-fun m!1213003 () Bool)

(assert (=> mapNonEmpty!55976 m!1213003))

(declare-fun m!1213005 () Bool)

(assert (=> b!1323990 m!1213005))

(declare-fun m!1213007 () Bool)

(assert (=> b!1323983 m!1213007))

(assert (=> b!1323983 m!1213007))

(declare-fun m!1213009 () Bool)

(assert (=> b!1323983 m!1213009))

(declare-fun m!1213011 () Bool)

(assert (=> b!1323984 m!1213011))

(declare-fun m!1213013 () Bool)

(assert (=> start!111778 m!1213013))

(declare-fun m!1213015 () Bool)

(assert (=> start!111778 m!1213015))

(declare-fun m!1213017 () Bool)

(assert (=> start!111778 m!1213017))

(check-sat b_and!48947 (not b!1323984) (not b!1323983) (not mapNonEmpty!55976) (not b!1323990) (not b_next!30399) (not start!111778) tp_is_empty!36219)
(check-sat b_and!48947 (not b_next!30399))

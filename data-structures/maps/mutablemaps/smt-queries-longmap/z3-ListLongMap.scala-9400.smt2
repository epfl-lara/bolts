; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111932 () Bool)

(assert start!111932)

(declare-fun b_free!30495 () Bool)

(declare-fun b_next!30495 () Bool)

(assert (=> start!111932 (= b_free!30495 (not b_next!30495))))

(declare-fun tp!106966 () Bool)

(declare-fun b_and!49095 () Bool)

(assert (=> start!111932 (= tp!106966 b_and!49095)))

(declare-fun b!1325842 () Bool)

(declare-fun res!880044 () Bool)

(declare-fun e!755783 () Bool)

(assert (=> b!1325842 (=> (not res!880044) (not e!755783))))

(declare-datatypes ((array!89499 0))(
  ( (array!89500 (arr!43218 (Array (_ BitVec 32) (_ BitVec 64))) (size!43769 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89499)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53523 0))(
  ( (V!53524 (val!18232 Int)) )
))
(declare-datatypes ((ValueCell!17259 0))(
  ( (ValueCellFull!17259 (v!20863 V!53523)) (EmptyCell!17259) )
))
(declare-datatypes ((array!89501 0))(
  ( (array!89502 (arr!43219 (Array (_ BitVec 32) ValueCell!17259)) (size!43770 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89501)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1325842 (= res!880044 (and (= (size!43770 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43769 _keys!1609) (size!43770 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1325843 () Bool)

(declare-fun res!880043 () Bool)

(assert (=> b!1325843 (=> (not res!880043) (not e!755783))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1325843 (= res!880043 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43769 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325844 () Bool)

(declare-fun e!755784 () Bool)

(declare-fun tp_is_empty!36315 () Bool)

(assert (=> b!1325844 (= e!755784 tp_is_empty!36315)))

(declare-fun b!1325846 () Bool)

(declare-fun res!880037 () Bool)

(assert (=> b!1325846 (=> (not res!880037) (not e!755783))))

(assert (=> b!1325846 (= res!880037 (not (= (select (arr!43218 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1325847 () Bool)

(declare-fun res!880041 () Bool)

(assert (=> b!1325847 (=> (not res!880041) (not e!755783))))

(declare-fun minValue!1279 () V!53523)

(declare-fun defaultEntry!1340 () Int)

(declare-fun zeroValue!1279 () V!53523)

(declare-datatypes ((tuple2!23670 0))(
  ( (tuple2!23671 (_1!11845 (_ BitVec 64)) (_2!11845 V!53523)) )
))
(declare-datatypes ((List!30838 0))(
  ( (Nil!30835) (Cons!30834 (h!32043 tuple2!23670) (t!44811 List!30838)) )
))
(declare-datatypes ((ListLongMap!21339 0))(
  ( (ListLongMap!21340 (toList!10685 List!30838)) )
))
(declare-fun contains!8778 (ListLongMap!21339 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5619 (array!89499 array!89501 (_ BitVec 32) (_ BitVec 32) V!53523 V!53523 (_ BitVec 32) Int) ListLongMap!21339)

(assert (=> b!1325847 (= res!880041 (contains!8778 (getCurrentListMap!5619 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapNonEmpty!56124 () Bool)

(declare-fun mapRes!56124 () Bool)

(declare-fun tp!106965 () Bool)

(assert (=> mapNonEmpty!56124 (= mapRes!56124 (and tp!106965 e!755784))))

(declare-fun mapRest!56124 () (Array (_ BitVec 32) ValueCell!17259))

(declare-fun mapValue!56124 () ValueCell!17259)

(declare-fun mapKey!56124 () (_ BitVec 32))

(assert (=> mapNonEmpty!56124 (= (arr!43219 _values!1337) (store mapRest!56124 mapKey!56124 mapValue!56124))))

(declare-fun b!1325848 () Bool)

(assert (=> b!1325848 (= e!755783 (not true))))

(declare-fun lt!589810 () ListLongMap!21339)

(assert (=> b!1325848 (contains!8778 lt!589810 k0!1164)))

(declare-datatypes ((Unit!43606 0))(
  ( (Unit!43607) )
))
(declare-fun lt!589813 () Unit!43606)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!210 ((_ BitVec 64) (_ BitVec 64) V!53523 ListLongMap!21339) Unit!43606)

(assert (=> b!1325848 (= lt!589813 (lemmaInListMapAfterAddingDiffThenInBefore!210 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589810))))

(declare-fun lt!589812 () ListLongMap!21339)

(assert (=> b!1325848 (contains!8778 lt!589812 k0!1164)))

(declare-fun lt!589811 () Unit!43606)

(assert (=> b!1325848 (= lt!589811 (lemmaInListMapAfterAddingDiffThenInBefore!210 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589812))))

(declare-fun +!4600 (ListLongMap!21339 tuple2!23670) ListLongMap!21339)

(assert (=> b!1325848 (= lt!589812 (+!4600 lt!589810 (tuple2!23671 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6318 (array!89499 array!89501 (_ BitVec 32) (_ BitVec 32) V!53523 V!53523 (_ BitVec 32) Int) ListLongMap!21339)

(declare-fun get!21815 (ValueCell!17259 V!53523) V!53523)

(declare-fun dynLambda!3637 (Int (_ BitVec 64)) V!53523)

(assert (=> b!1325848 (= lt!589810 (+!4600 (getCurrentListMapNoExtraKeys!6318 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23671 (select (arr!43218 _keys!1609) from!2000) (get!21815 (select (arr!43219 _values!1337) from!2000) (dynLambda!3637 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1325849 () Bool)

(declare-fun res!880039 () Bool)

(assert (=> b!1325849 (=> (not res!880039) (not e!755783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325849 (= res!880039 (validKeyInArray!0 (select (arr!43218 _keys!1609) from!2000)))))

(declare-fun mapIsEmpty!56124 () Bool)

(assert (=> mapIsEmpty!56124 mapRes!56124))

(declare-fun b!1325850 () Bool)

(declare-fun res!880040 () Bool)

(assert (=> b!1325850 (=> (not res!880040) (not e!755783))))

(declare-datatypes ((List!30839 0))(
  ( (Nil!30836) (Cons!30835 (h!32044 (_ BitVec 64)) (t!44812 List!30839)) )
))
(declare-fun arrayNoDuplicates!0 (array!89499 (_ BitVec 32) List!30839) Bool)

(assert (=> b!1325850 (= res!880040 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30836))))

(declare-fun b!1325851 () Bool)

(declare-fun e!755781 () Bool)

(declare-fun e!755785 () Bool)

(assert (=> b!1325851 (= e!755781 (and e!755785 mapRes!56124))))

(declare-fun condMapEmpty!56124 () Bool)

(declare-fun mapDefault!56124 () ValueCell!17259)

(assert (=> b!1325851 (= condMapEmpty!56124 (= (arr!43219 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17259)) mapDefault!56124)))))

(declare-fun b!1325852 () Bool)

(assert (=> b!1325852 (= e!755785 tp_is_empty!36315)))

(declare-fun b!1325845 () Bool)

(declare-fun res!880038 () Bool)

(assert (=> b!1325845 (=> (not res!880038) (not e!755783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89499 (_ BitVec 32)) Bool)

(assert (=> b!1325845 (= res!880038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!880042 () Bool)

(assert (=> start!111932 (=> (not res!880042) (not e!755783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111932 (= res!880042 (validMask!0 mask!2019))))

(assert (=> start!111932 e!755783))

(declare-fun array_inv!32563 (array!89499) Bool)

(assert (=> start!111932 (array_inv!32563 _keys!1609)))

(assert (=> start!111932 true))

(assert (=> start!111932 tp_is_empty!36315))

(declare-fun array_inv!32564 (array!89501) Bool)

(assert (=> start!111932 (and (array_inv!32564 _values!1337) e!755781)))

(assert (=> start!111932 tp!106966))

(assert (= (and start!111932 res!880042) b!1325842))

(assert (= (and b!1325842 res!880044) b!1325845))

(assert (= (and b!1325845 res!880038) b!1325850))

(assert (= (and b!1325850 res!880040) b!1325843))

(assert (= (and b!1325843 res!880043) b!1325847))

(assert (= (and b!1325847 res!880041) b!1325846))

(assert (= (and b!1325846 res!880037) b!1325849))

(assert (= (and b!1325849 res!880039) b!1325848))

(assert (= (and b!1325851 condMapEmpty!56124) mapIsEmpty!56124))

(assert (= (and b!1325851 (not condMapEmpty!56124)) mapNonEmpty!56124))

(get-info :version)

(assert (= (and mapNonEmpty!56124 ((_ is ValueCellFull!17259) mapValue!56124)) b!1325844))

(assert (= (and b!1325851 ((_ is ValueCellFull!17259) mapDefault!56124)) b!1325852))

(assert (= start!111932 b!1325851))

(declare-fun b_lambda!23783 () Bool)

(assert (=> (not b_lambda!23783) (not b!1325848)))

(declare-fun t!44810 () Bool)

(declare-fun tb!11777 () Bool)

(assert (=> (and start!111932 (= defaultEntry!1340 defaultEntry!1340) t!44810) tb!11777))

(declare-fun result!24603 () Bool)

(assert (=> tb!11777 (= result!24603 tp_is_empty!36315)))

(assert (=> b!1325848 t!44810))

(declare-fun b_and!49097 () Bool)

(assert (= b_and!49095 (and (=> t!44810 result!24603) b_and!49097)))

(declare-fun m!1214789 () Bool)

(assert (=> b!1325850 m!1214789))

(declare-fun m!1214791 () Bool)

(assert (=> b!1325847 m!1214791))

(assert (=> b!1325847 m!1214791))

(declare-fun m!1214793 () Bool)

(assert (=> b!1325847 m!1214793))

(declare-fun m!1214795 () Bool)

(assert (=> b!1325849 m!1214795))

(assert (=> b!1325849 m!1214795))

(declare-fun m!1214797 () Bool)

(assert (=> b!1325849 m!1214797))

(declare-fun m!1214799 () Bool)

(assert (=> b!1325845 m!1214799))

(declare-fun m!1214801 () Bool)

(assert (=> start!111932 m!1214801))

(declare-fun m!1214803 () Bool)

(assert (=> start!111932 m!1214803))

(declare-fun m!1214805 () Bool)

(assert (=> start!111932 m!1214805))

(declare-fun m!1214807 () Bool)

(assert (=> b!1325848 m!1214807))

(declare-fun m!1214809 () Bool)

(assert (=> b!1325848 m!1214809))

(declare-fun m!1214811 () Bool)

(assert (=> b!1325848 m!1214811))

(declare-fun m!1214813 () Bool)

(assert (=> b!1325848 m!1214813))

(declare-fun m!1214815 () Bool)

(assert (=> b!1325848 m!1214815))

(declare-fun m!1214817 () Bool)

(assert (=> b!1325848 m!1214817))

(assert (=> b!1325848 m!1214813))

(assert (=> b!1325848 m!1214809))

(declare-fun m!1214819 () Bool)

(assert (=> b!1325848 m!1214819))

(declare-fun m!1214821 () Bool)

(assert (=> b!1325848 m!1214821))

(assert (=> b!1325848 m!1214795))

(assert (=> b!1325848 m!1214807))

(declare-fun m!1214823 () Bool)

(assert (=> b!1325848 m!1214823))

(declare-fun m!1214825 () Bool)

(assert (=> b!1325848 m!1214825))

(assert (=> b!1325846 m!1214795))

(declare-fun m!1214827 () Bool)

(assert (=> mapNonEmpty!56124 m!1214827))

(check-sat tp_is_empty!36315 (not b!1325847) (not b!1325845) (not b_lambda!23783) (not b!1325850) b_and!49097 (not b_next!30495) (not b!1325849) (not mapNonEmpty!56124) (not b!1325848) (not start!111932))
(check-sat b_and!49097 (not b_next!30495))

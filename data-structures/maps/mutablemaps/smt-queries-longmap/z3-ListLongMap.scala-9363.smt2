; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111652 () Bool)

(assert start!111652)

(declare-fun b_free!30273 () Bool)

(declare-fun b_next!30273 () Bool)

(assert (=> start!111652 (= b_free!30273 (not b_next!30273))))

(declare-fun tp!106295 () Bool)

(declare-fun b_and!48715 () Bool)

(assert (=> start!111652 (= tp!106295 b_and!48715)))

(declare-fun b!1321895 () Bool)

(declare-fun e!753858 () Bool)

(declare-fun tp_is_empty!36093 () Bool)

(assert (=> b!1321895 (= e!753858 tp_is_empty!36093)))

(declare-fun mapIsEmpty!55787 () Bool)

(declare-fun mapRes!55787 () Bool)

(assert (=> mapIsEmpty!55787 mapRes!55787))

(declare-fun b!1321896 () Bool)

(declare-fun res!877474 () Bool)

(declare-fun e!753862 () Bool)

(assert (=> b!1321896 (=> (not res!877474) (not e!753862))))

(declare-datatypes ((array!89069 0))(
  ( (array!89070 (arr!43004 (Array (_ BitVec 32) (_ BitVec 64))) (size!43555 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89069)

(declare-datatypes ((List!30681 0))(
  ( (Nil!30678) (Cons!30677 (h!31886 (_ BitVec 64)) (t!44510 List!30681)) )
))
(declare-fun arrayNoDuplicates!0 (array!89069 (_ BitVec 32) List!30681) Bool)

(assert (=> b!1321896 (= res!877474 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30678))))

(declare-fun b!1321897 () Bool)

(declare-fun res!877480 () Bool)

(assert (=> b!1321897 (=> (not res!877480) (not e!753862))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53227 0))(
  ( (V!53228 (val!18121 Int)) )
))
(declare-fun zeroValue!1279 () V!53227)

(declare-datatypes ((ValueCell!17148 0))(
  ( (ValueCellFull!17148 (v!20749 V!53227)) (EmptyCell!17148) )
))
(declare-datatypes ((array!89071 0))(
  ( (array!89072 (arr!43005 (Array (_ BitVec 32) ValueCell!17148)) (size!43556 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89071)

(declare-fun minValue!1279 () V!53227)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23504 0))(
  ( (tuple2!23505 (_1!11762 (_ BitVec 64)) (_2!11762 V!53227)) )
))
(declare-datatypes ((List!30682 0))(
  ( (Nil!30679) (Cons!30678 (h!31887 tuple2!23504) (t!44511 List!30682)) )
))
(declare-datatypes ((ListLongMap!21173 0))(
  ( (ListLongMap!21174 (toList!10602 List!30682)) )
))
(declare-fun contains!8693 (ListLongMap!21173 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5542 (array!89069 array!89071 (_ BitVec 32) (_ BitVec 32) V!53227 V!53227 (_ BitVec 32) Int) ListLongMap!21173)

(assert (=> b!1321897 (= res!877480 (contains!8693 (getCurrentListMap!5542 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1321898 () Bool)

(assert (=> b!1321898 (= e!753862 (not true))))

(declare-fun lt!587761 () ListLongMap!21173)

(declare-fun lt!587763 () tuple2!23504)

(declare-fun +!4555 (ListLongMap!21173 tuple2!23504) ListLongMap!21173)

(assert (=> b!1321898 (contains!8693 (+!4555 lt!587761 lt!587763) k0!1164)))

(declare-datatypes ((Unit!43510 0))(
  ( (Unit!43511) )
))
(declare-fun lt!587760 () Unit!43510)

(declare-fun addStillContains!1136 (ListLongMap!21173 (_ BitVec 64) V!53227 (_ BitVec 64)) Unit!43510)

(assert (=> b!1321898 (= lt!587760 (addStillContains!1136 lt!587761 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1321898 (contains!8693 lt!587761 k0!1164)))

(declare-fun lt!587758 () Unit!43510)

(declare-fun lt!587762 () V!53227)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!170 ((_ BitVec 64) (_ BitVec 64) V!53227 ListLongMap!21173) Unit!43510)

(assert (=> b!1321898 (= lt!587758 (lemmaInListMapAfterAddingDiffThenInBefore!170 k0!1164 (select (arr!43004 _keys!1609) from!2000) lt!587762 lt!587761))))

(declare-fun lt!587759 () ListLongMap!21173)

(assert (=> b!1321898 (contains!8693 lt!587759 k0!1164)))

(declare-fun lt!587764 () Unit!43510)

(assert (=> b!1321898 (= lt!587764 (lemmaInListMapAfterAddingDiffThenInBefore!170 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587759))))

(declare-fun lt!587756 () ListLongMap!21173)

(assert (=> b!1321898 (contains!8693 lt!587756 k0!1164)))

(declare-fun lt!587757 () Unit!43510)

(assert (=> b!1321898 (= lt!587757 (lemmaInListMapAfterAddingDiffThenInBefore!170 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587756))))

(assert (=> b!1321898 (= lt!587756 (+!4555 lt!587759 lt!587763))))

(assert (=> b!1321898 (= lt!587763 (tuple2!23505 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1321898 (= lt!587759 (+!4555 lt!587761 (tuple2!23505 (select (arr!43004 _keys!1609) from!2000) lt!587762)))))

(declare-fun get!21693 (ValueCell!17148 V!53227) V!53227)

(declare-fun dynLambda!3592 (Int (_ BitVec 64)) V!53227)

(assert (=> b!1321898 (= lt!587762 (get!21693 (select (arr!43005 _values!1337) from!2000) (dynLambda!3592 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6270 (array!89069 array!89071 (_ BitVec 32) (_ BitVec 32) V!53227 V!53227 (_ BitVec 32) Int) ListLongMap!21173)

(assert (=> b!1321898 (= lt!587761 (getCurrentListMapNoExtraKeys!6270 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55787 () Bool)

(declare-fun tp!106296 () Bool)

(declare-fun e!753861 () Bool)

(assert (=> mapNonEmpty!55787 (= mapRes!55787 (and tp!106296 e!753861))))

(declare-fun mapRest!55787 () (Array (_ BitVec 32) ValueCell!17148))

(declare-fun mapKey!55787 () (_ BitVec 32))

(declare-fun mapValue!55787 () ValueCell!17148)

(assert (=> mapNonEmpty!55787 (= (arr!43005 _values!1337) (store mapRest!55787 mapKey!55787 mapValue!55787))))

(declare-fun b!1321899 () Bool)

(declare-fun res!877478 () Bool)

(assert (=> b!1321899 (=> (not res!877478) (not e!753862))))

(assert (=> b!1321899 (= res!877478 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43555 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321900 () Bool)

(declare-fun res!877473 () Bool)

(assert (=> b!1321900 (=> (not res!877473) (not e!753862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89069 (_ BitVec 32)) Bool)

(assert (=> b!1321900 (= res!877473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321901 () Bool)

(declare-fun res!877479 () Bool)

(assert (=> b!1321901 (=> (not res!877479) (not e!753862))))

(assert (=> b!1321901 (= res!877479 (and (= (size!43556 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43555 _keys!1609) (size!43556 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321902 () Bool)

(declare-fun e!753859 () Bool)

(assert (=> b!1321902 (= e!753859 (and e!753858 mapRes!55787))))

(declare-fun condMapEmpty!55787 () Bool)

(declare-fun mapDefault!55787 () ValueCell!17148)

(assert (=> b!1321902 (= condMapEmpty!55787 (= (arr!43005 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17148)) mapDefault!55787)))))

(declare-fun b!1321894 () Bool)

(declare-fun res!877476 () Bool)

(assert (=> b!1321894 (=> (not res!877476) (not e!753862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321894 (= res!877476 (validKeyInArray!0 (select (arr!43004 _keys!1609) from!2000)))))

(declare-fun res!877477 () Bool)

(assert (=> start!111652 (=> (not res!877477) (not e!753862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111652 (= res!877477 (validMask!0 mask!2019))))

(assert (=> start!111652 e!753862))

(declare-fun array_inv!32419 (array!89069) Bool)

(assert (=> start!111652 (array_inv!32419 _keys!1609)))

(assert (=> start!111652 true))

(assert (=> start!111652 tp_is_empty!36093))

(declare-fun array_inv!32420 (array!89071) Bool)

(assert (=> start!111652 (and (array_inv!32420 _values!1337) e!753859)))

(assert (=> start!111652 tp!106295))

(declare-fun b!1321903 () Bool)

(declare-fun res!877475 () Bool)

(assert (=> b!1321903 (=> (not res!877475) (not e!753862))))

(assert (=> b!1321903 (= res!877475 (not (= (select (arr!43004 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1321904 () Bool)

(assert (=> b!1321904 (= e!753861 tp_is_empty!36093)))

(assert (= (and start!111652 res!877477) b!1321901))

(assert (= (and b!1321901 res!877479) b!1321900))

(assert (= (and b!1321900 res!877473) b!1321896))

(assert (= (and b!1321896 res!877474) b!1321899))

(assert (= (and b!1321899 res!877478) b!1321897))

(assert (= (and b!1321897 res!877480) b!1321903))

(assert (= (and b!1321903 res!877475) b!1321894))

(assert (= (and b!1321894 res!877476) b!1321898))

(assert (= (and b!1321902 condMapEmpty!55787) mapIsEmpty!55787))

(assert (= (and b!1321902 (not condMapEmpty!55787)) mapNonEmpty!55787))

(get-info :version)

(assert (= (and mapNonEmpty!55787 ((_ is ValueCellFull!17148) mapValue!55787)) b!1321904))

(assert (= (and b!1321902 ((_ is ValueCellFull!17148) mapDefault!55787)) b!1321895))

(assert (= start!111652 b!1321902))

(declare-fun b_lambda!23609 () Bool)

(assert (=> (not b_lambda!23609) (not b!1321898)))

(declare-fun t!44509 () Bool)

(declare-fun tb!11633 () Bool)

(assert (=> (and start!111652 (= defaultEntry!1340 defaultEntry!1340) t!44509) tb!11633))

(declare-fun result!24313 () Bool)

(assert (=> tb!11633 (= result!24313 tp_is_empty!36093)))

(assert (=> b!1321898 t!44509))

(declare-fun b_and!48717 () Bool)

(assert (= b_and!48715 (and (=> t!44509 result!24313) b_and!48717)))

(declare-fun m!1210031 () Bool)

(assert (=> b!1321900 m!1210031))

(declare-fun m!1210033 () Bool)

(assert (=> b!1321896 m!1210033))

(declare-fun m!1210035 () Bool)

(assert (=> mapNonEmpty!55787 m!1210035))

(declare-fun m!1210037 () Bool)

(assert (=> b!1321898 m!1210037))

(declare-fun m!1210039 () Bool)

(assert (=> b!1321898 m!1210039))

(declare-fun m!1210041 () Bool)

(assert (=> b!1321898 m!1210041))

(declare-fun m!1210043 () Bool)

(assert (=> b!1321898 m!1210043))

(declare-fun m!1210045 () Bool)

(assert (=> b!1321898 m!1210045))

(declare-fun m!1210047 () Bool)

(assert (=> b!1321898 m!1210047))

(assert (=> b!1321898 m!1210041))

(declare-fun m!1210049 () Bool)

(assert (=> b!1321898 m!1210049))

(declare-fun m!1210051 () Bool)

(assert (=> b!1321898 m!1210051))

(declare-fun m!1210053 () Bool)

(assert (=> b!1321898 m!1210053))

(declare-fun m!1210055 () Bool)

(assert (=> b!1321898 m!1210055))

(assert (=> b!1321898 m!1210055))

(declare-fun m!1210057 () Bool)

(assert (=> b!1321898 m!1210057))

(declare-fun m!1210059 () Bool)

(assert (=> b!1321898 m!1210059))

(declare-fun m!1210061 () Bool)

(assert (=> b!1321898 m!1210061))

(declare-fun m!1210063 () Bool)

(assert (=> b!1321898 m!1210063))

(assert (=> b!1321898 m!1210047))

(declare-fun m!1210065 () Bool)

(assert (=> b!1321898 m!1210065))

(assert (=> b!1321898 m!1210053))

(declare-fun m!1210067 () Bool)

(assert (=> b!1321898 m!1210067))

(assert (=> b!1321903 m!1210053))

(assert (=> b!1321894 m!1210053))

(assert (=> b!1321894 m!1210053))

(declare-fun m!1210069 () Bool)

(assert (=> b!1321894 m!1210069))

(declare-fun m!1210071 () Bool)

(assert (=> start!111652 m!1210071))

(declare-fun m!1210073 () Bool)

(assert (=> start!111652 m!1210073))

(declare-fun m!1210075 () Bool)

(assert (=> start!111652 m!1210075))

(declare-fun m!1210077 () Bool)

(assert (=> b!1321897 m!1210077))

(assert (=> b!1321897 m!1210077))

(declare-fun m!1210079 () Bool)

(assert (=> b!1321897 m!1210079))

(check-sat tp_is_empty!36093 (not b!1321897) (not start!111652) (not b!1321894) (not b!1321898) (not b_next!30273) (not b!1321900) (not b_lambda!23609) (not b!1321896) (not mapNonEmpty!55787) b_and!48717)
(check-sat b_and!48717 (not b_next!30273))

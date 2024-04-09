; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108786 () Bool)

(assert start!108786)

(declare-fun b_free!28263 () Bool)

(declare-fun b_next!28263 () Bool)

(assert (=> start!108786 (= b_free!28263 (not b_next!28263))))

(declare-fun tp!99905 () Bool)

(declare-fun b_and!46339 () Bool)

(assert (=> start!108786 (= tp!99905 b_and!46339)))

(declare-fun b!1284074 () Bool)

(declare-fun e!733507 () Bool)

(assert (=> b!1284074 (= e!733507 (not true))))

(declare-datatypes ((V!50307 0))(
  ( (V!50308 (val!17026 Int)) )
))
(declare-datatypes ((tuple2!21952 0))(
  ( (tuple2!21953 (_1!10986 (_ BitVec 64)) (_2!10986 V!50307)) )
))
(declare-datatypes ((List!29159 0))(
  ( (Nil!29156) (Cons!29155 (h!30364 tuple2!21952) (t!42710 List!29159)) )
))
(declare-datatypes ((ListLongMap!19621 0))(
  ( (ListLongMap!19622 (toList!9826 List!29159)) )
))
(declare-fun lt!576714 () ListLongMap!19621)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!7881 (ListLongMap!19621 (_ BitVec 64)) Bool)

(assert (=> b!1284074 (contains!7881 lt!576714 k0!1205)))

(declare-fun minValue!1387 () V!50307)

(declare-datatypes ((Unit!42437 0))(
  ( (Unit!42438) )
))
(declare-fun lt!576713 () Unit!42437)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!20 ((_ BitVec 64) (_ BitVec 64) V!50307 ListLongMap!19621) Unit!42437)

(assert (=> b!1284074 (= lt!576713 (lemmaInListMapAfterAddingDiffThenInBefore!20 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576714))))

(declare-fun zeroValue!1387 () V!50307)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16053 0))(
  ( (ValueCellFull!16053 (v!19626 V!50307)) (EmptyCell!16053) )
))
(declare-datatypes ((array!84821 0))(
  ( (array!84822 (arr!40908 (Array (_ BitVec 32) ValueCell!16053)) (size!41459 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84821)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84823 0))(
  ( (array!84824 (arr!40909 (Array (_ BitVec 32) (_ BitVec 64))) (size!41460 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84823)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun +!4271 (ListLongMap!19621 tuple2!21952) ListLongMap!19621)

(declare-fun getCurrentListMapNoExtraKeys!5982 (array!84823 array!84821 (_ BitVec 32) (_ BitVec 32) V!50307 V!50307 (_ BitVec 32) Int) ListLongMap!19621)

(assert (=> b!1284074 (= lt!576714 (+!4271 (getCurrentListMapNoExtraKeys!5982 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21953 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1284075 () Bool)

(declare-fun res!853117 () Bool)

(assert (=> b!1284075 (=> (not res!853117) (not e!733507))))

(declare-datatypes ((List!29160 0))(
  ( (Nil!29157) (Cons!29156 (h!30365 (_ BitVec 64)) (t!42711 List!29160)) )
))
(declare-fun arrayNoDuplicates!0 (array!84823 (_ BitVec 32) List!29160) Bool)

(assert (=> b!1284075 (= res!853117 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29157))))

(declare-fun res!853119 () Bool)

(assert (=> start!108786 (=> (not res!853119) (not e!733507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108786 (= res!853119 (validMask!0 mask!2175))))

(assert (=> start!108786 e!733507))

(declare-fun tp_is_empty!33903 () Bool)

(assert (=> start!108786 tp_is_empty!33903))

(assert (=> start!108786 true))

(declare-fun e!733508 () Bool)

(declare-fun array_inv!31009 (array!84821) Bool)

(assert (=> start!108786 (and (array_inv!31009 _values!1445) e!733508)))

(declare-fun array_inv!31010 (array!84823) Bool)

(assert (=> start!108786 (array_inv!31010 _keys!1741)))

(assert (=> start!108786 tp!99905))

(declare-fun b!1284076 () Bool)

(declare-fun res!853122 () Bool)

(assert (=> b!1284076 (=> (not res!853122) (not e!733507))))

(assert (=> b!1284076 (= res!853122 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41460 _keys!1741))))))

(declare-fun b!1284077 () Bool)

(declare-fun res!853118 () Bool)

(assert (=> b!1284077 (=> (not res!853118) (not e!733507))))

(assert (=> b!1284077 (= res!853118 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41460 _keys!1741))))))

(declare-fun b!1284078 () Bool)

(declare-fun e!733506 () Bool)

(assert (=> b!1284078 (= e!733506 tp_is_empty!33903)))

(declare-fun mapIsEmpty!52412 () Bool)

(declare-fun mapRes!52412 () Bool)

(assert (=> mapIsEmpty!52412 mapRes!52412))

(declare-fun b!1284079 () Bool)

(declare-fun res!853120 () Bool)

(assert (=> b!1284079 (=> (not res!853120) (not e!733507))))

(declare-fun getCurrentListMap!4844 (array!84823 array!84821 (_ BitVec 32) (_ BitVec 32) V!50307 V!50307 (_ BitVec 32) Int) ListLongMap!19621)

(assert (=> b!1284079 (= res!853120 (contains!7881 (getCurrentListMap!4844 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1284080 () Bool)

(declare-fun e!733510 () Bool)

(assert (=> b!1284080 (= e!733510 tp_is_empty!33903)))

(declare-fun b!1284081 () Bool)

(declare-fun res!853121 () Bool)

(assert (=> b!1284081 (=> (not res!853121) (not e!733507))))

(assert (=> b!1284081 (= res!853121 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!52412 () Bool)

(declare-fun tp!99906 () Bool)

(assert (=> mapNonEmpty!52412 (= mapRes!52412 (and tp!99906 e!733506))))

(declare-fun mapValue!52412 () ValueCell!16053)

(declare-fun mapKey!52412 () (_ BitVec 32))

(declare-fun mapRest!52412 () (Array (_ BitVec 32) ValueCell!16053))

(assert (=> mapNonEmpty!52412 (= (arr!40908 _values!1445) (store mapRest!52412 mapKey!52412 mapValue!52412))))

(declare-fun b!1284082 () Bool)

(declare-fun res!853125 () Bool)

(assert (=> b!1284082 (=> (not res!853125) (not e!733507))))

(assert (=> b!1284082 (= res!853125 (and (= (size!41459 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41460 _keys!1741) (size!41459 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284083 () Bool)

(declare-fun res!853123 () Bool)

(assert (=> b!1284083 (=> (not res!853123) (not e!733507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84823 (_ BitVec 32)) Bool)

(assert (=> b!1284083 (= res!853123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284084 () Bool)

(declare-fun res!853124 () Bool)

(assert (=> b!1284084 (=> (not res!853124) (not e!733507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284084 (= res!853124 (validKeyInArray!0 (select (arr!40909 _keys!1741) from!2144)))))

(declare-fun b!1284085 () Bool)

(assert (=> b!1284085 (= e!733508 (and e!733510 mapRes!52412))))

(declare-fun condMapEmpty!52412 () Bool)

(declare-fun mapDefault!52412 () ValueCell!16053)

(assert (=> b!1284085 (= condMapEmpty!52412 (= (arr!40908 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16053)) mapDefault!52412)))))

(assert (= (and start!108786 res!853119) b!1284082))

(assert (= (and b!1284082 res!853125) b!1284083))

(assert (= (and b!1284083 res!853123) b!1284075))

(assert (= (and b!1284075 res!853117) b!1284076))

(assert (= (and b!1284076 res!853122) b!1284079))

(assert (= (and b!1284079 res!853120) b!1284077))

(assert (= (and b!1284077 res!853118) b!1284084))

(assert (= (and b!1284084 res!853124) b!1284081))

(assert (= (and b!1284081 res!853121) b!1284074))

(assert (= (and b!1284085 condMapEmpty!52412) mapIsEmpty!52412))

(assert (= (and b!1284085 (not condMapEmpty!52412)) mapNonEmpty!52412))

(get-info :version)

(assert (= (and mapNonEmpty!52412 ((_ is ValueCellFull!16053) mapValue!52412)) b!1284078))

(assert (= (and b!1284085 ((_ is ValueCellFull!16053) mapDefault!52412)) b!1284080))

(assert (= start!108786 b!1284085))

(declare-fun m!1177879 () Bool)

(assert (=> b!1284075 m!1177879))

(declare-fun m!1177881 () Bool)

(assert (=> b!1284074 m!1177881))

(declare-fun m!1177883 () Bool)

(assert (=> b!1284074 m!1177883))

(declare-fun m!1177885 () Bool)

(assert (=> b!1284074 m!1177885))

(assert (=> b!1284074 m!1177885))

(declare-fun m!1177887 () Bool)

(assert (=> b!1284074 m!1177887))

(declare-fun m!1177889 () Bool)

(assert (=> mapNonEmpty!52412 m!1177889))

(declare-fun m!1177891 () Bool)

(assert (=> b!1284084 m!1177891))

(assert (=> b!1284084 m!1177891))

(declare-fun m!1177893 () Bool)

(assert (=> b!1284084 m!1177893))

(declare-fun m!1177895 () Bool)

(assert (=> b!1284079 m!1177895))

(assert (=> b!1284079 m!1177895))

(declare-fun m!1177897 () Bool)

(assert (=> b!1284079 m!1177897))

(declare-fun m!1177899 () Bool)

(assert (=> b!1284083 m!1177899))

(declare-fun m!1177901 () Bool)

(assert (=> start!108786 m!1177901))

(declare-fun m!1177903 () Bool)

(assert (=> start!108786 m!1177903))

(declare-fun m!1177905 () Bool)

(assert (=> start!108786 m!1177905))

(check-sat (not start!108786) (not b!1284075) (not b!1284079) tp_is_empty!33903 b_and!46339 (not b!1284074) (not mapNonEmpty!52412) (not b!1284083) (not b!1284084) (not b_next!28263))
(check-sat b_and!46339 (not b_next!28263))

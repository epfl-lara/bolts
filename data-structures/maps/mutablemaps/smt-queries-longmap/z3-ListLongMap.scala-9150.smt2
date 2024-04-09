; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109798 () Bool)

(assert start!109798)

(declare-fun b_free!29175 () Bool)

(declare-fun b_next!29175 () Bool)

(assert (=> start!109798 (= b_free!29175 (not b_next!29175))))

(declare-fun tp!102657 () Bool)

(declare-fun b_and!47293 () Bool)

(assert (=> start!109798 (= tp!102657 b_and!47293)))

(declare-fun b!1300052 () Bool)

(declare-fun res!864017 () Bool)

(declare-fun e!741644 () Bool)

(assert (=> b!1300052 (=> (not res!864017) (not e!741644))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86603 0))(
  ( (array!86604 (arr!41794 (Array (_ BitVec 32) (_ BitVec 64))) (size!42345 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86603)

(assert (=> b!1300052 (= res!864017 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42345 _keys!1741))))))

(declare-fun b!1300053 () Bool)

(declare-fun res!864012 () Bool)

(assert (=> b!1300053 (=> (not res!864012) (not e!741644))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1300053 (= res!864012 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42345 _keys!1741))))))

(declare-fun b!1300054 () Bool)

(declare-fun e!741642 () Bool)

(declare-fun tp_is_empty!34815 () Bool)

(assert (=> b!1300054 (= e!741642 tp_is_empty!34815)))

(declare-fun b!1300055 () Bool)

(declare-fun res!864014 () Bool)

(assert (=> b!1300055 (=> (not res!864014) (not e!741644))))

(declare-datatypes ((V!51523 0))(
  ( (V!51524 (val!17482 Int)) )
))
(declare-fun zeroValue!1387 () V!51523)

(declare-datatypes ((ValueCell!16509 0))(
  ( (ValueCellFull!16509 (v!20087 V!51523)) (EmptyCell!16509) )
))
(declare-datatypes ((array!86605 0))(
  ( (array!86606 (arr!41795 (Array (_ BitVec 32) ValueCell!16509)) (size!42346 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86605)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!51523)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22696 0))(
  ( (tuple2!22697 (_1!11358 (_ BitVec 64)) (_2!11358 V!51523)) )
))
(declare-datatypes ((List!29855 0))(
  ( (Nil!29852) (Cons!29851 (h!31060 tuple2!22696) (t!43434 List!29855)) )
))
(declare-datatypes ((ListLongMap!20365 0))(
  ( (ListLongMap!20366 (toList!10198 List!29855)) )
))
(declare-fun contains!8258 (ListLongMap!20365 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5171 (array!86603 array!86605 (_ BitVec 32) (_ BitVec 32) V!51523 V!51523 (_ BitVec 32) Int) ListLongMap!20365)

(assert (=> b!1300055 (= res!864014 (contains!8258 (getCurrentListMap!5171 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1300056 () Bool)

(declare-fun res!864016 () Bool)

(assert (=> b!1300056 (=> (not res!864016) (not e!741644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300056 (= res!864016 (validKeyInArray!0 (select (arr!41794 _keys!1741) from!2144)))))

(declare-fun b!1300057 () Bool)

(declare-fun res!864011 () Bool)

(assert (=> b!1300057 (=> (not res!864011) (not e!741644))))

(assert (=> b!1300057 (= res!864011 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1300058 () Bool)

(assert (=> b!1300058 (= e!741644 false)))

(declare-fun lt!581202 () Bool)

(declare-fun +!4428 (ListLongMap!20365 tuple2!22696) ListLongMap!20365)

(declare-fun getCurrentListMapNoExtraKeys!6141 (array!86603 array!86605 (_ BitVec 32) (_ BitVec 32) V!51523 V!51523 (_ BitVec 32) Int) ListLongMap!20365)

(assert (=> b!1300058 (= lt!581202 (contains!8258 (+!4428 (getCurrentListMapNoExtraKeys!6141 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22697 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun b!1300059 () Bool)

(declare-fun res!864015 () Bool)

(assert (=> b!1300059 (=> (not res!864015) (not e!741644))))

(declare-datatypes ((List!29856 0))(
  ( (Nil!29853) (Cons!29852 (h!31061 (_ BitVec 64)) (t!43435 List!29856)) )
))
(declare-fun arrayNoDuplicates!0 (array!86603 (_ BitVec 32) List!29856) Bool)

(assert (=> b!1300059 (= res!864015 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29853))))

(declare-fun res!864018 () Bool)

(assert (=> start!109798 (=> (not res!864018) (not e!741644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109798 (= res!864018 (validMask!0 mask!2175))))

(assert (=> start!109798 e!741644))

(assert (=> start!109798 tp_is_empty!34815))

(assert (=> start!109798 true))

(declare-fun e!741643 () Bool)

(declare-fun array_inv!31621 (array!86605) Bool)

(assert (=> start!109798 (and (array_inv!31621 _values!1445) e!741643)))

(declare-fun array_inv!31622 (array!86603) Bool)

(assert (=> start!109798 (array_inv!31622 _keys!1741)))

(assert (=> start!109798 tp!102657))

(declare-fun b!1300060 () Bool)

(declare-fun res!864019 () Bool)

(assert (=> b!1300060 (=> (not res!864019) (not e!741644))))

(assert (=> b!1300060 (= res!864019 (and (= (size!42346 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42345 _keys!1741) (size!42346 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53795 () Bool)

(declare-fun mapRes!53795 () Bool)

(declare-fun tp!102656 () Bool)

(assert (=> mapNonEmpty!53795 (= mapRes!53795 (and tp!102656 e!741642))))

(declare-fun mapRest!53795 () (Array (_ BitVec 32) ValueCell!16509))

(declare-fun mapValue!53795 () ValueCell!16509)

(declare-fun mapKey!53795 () (_ BitVec 32))

(assert (=> mapNonEmpty!53795 (= (arr!41795 _values!1445) (store mapRest!53795 mapKey!53795 mapValue!53795))))

(declare-fun b!1300061 () Bool)

(declare-fun e!741640 () Bool)

(assert (=> b!1300061 (= e!741640 tp_is_empty!34815)))

(declare-fun b!1300062 () Bool)

(assert (=> b!1300062 (= e!741643 (and e!741640 mapRes!53795))))

(declare-fun condMapEmpty!53795 () Bool)

(declare-fun mapDefault!53795 () ValueCell!16509)

(assert (=> b!1300062 (= condMapEmpty!53795 (= (arr!41795 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16509)) mapDefault!53795)))))

(declare-fun mapIsEmpty!53795 () Bool)

(assert (=> mapIsEmpty!53795 mapRes!53795))

(declare-fun b!1300063 () Bool)

(declare-fun res!864013 () Bool)

(assert (=> b!1300063 (=> (not res!864013) (not e!741644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86603 (_ BitVec 32)) Bool)

(assert (=> b!1300063 (= res!864013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109798 res!864018) b!1300060))

(assert (= (and b!1300060 res!864019) b!1300063))

(assert (= (and b!1300063 res!864013) b!1300059))

(assert (= (and b!1300059 res!864015) b!1300052))

(assert (= (and b!1300052 res!864017) b!1300055))

(assert (= (and b!1300055 res!864014) b!1300053))

(assert (= (and b!1300053 res!864012) b!1300056))

(assert (= (and b!1300056 res!864016) b!1300057))

(assert (= (and b!1300057 res!864011) b!1300058))

(assert (= (and b!1300062 condMapEmpty!53795) mapIsEmpty!53795))

(assert (= (and b!1300062 (not condMapEmpty!53795)) mapNonEmpty!53795))

(get-info :version)

(assert (= (and mapNonEmpty!53795 ((_ is ValueCellFull!16509) mapValue!53795)) b!1300054))

(assert (= (and b!1300062 ((_ is ValueCellFull!16509) mapDefault!53795)) b!1300061))

(assert (= start!109798 b!1300062))

(declare-fun m!1191101 () Bool)

(assert (=> b!1300055 m!1191101))

(assert (=> b!1300055 m!1191101))

(declare-fun m!1191103 () Bool)

(assert (=> b!1300055 m!1191103))

(declare-fun m!1191105 () Bool)

(assert (=> b!1300058 m!1191105))

(assert (=> b!1300058 m!1191105))

(declare-fun m!1191107 () Bool)

(assert (=> b!1300058 m!1191107))

(assert (=> b!1300058 m!1191107))

(declare-fun m!1191109 () Bool)

(assert (=> b!1300058 m!1191109))

(declare-fun m!1191111 () Bool)

(assert (=> b!1300059 m!1191111))

(declare-fun m!1191113 () Bool)

(assert (=> b!1300063 m!1191113))

(declare-fun m!1191115 () Bool)

(assert (=> mapNonEmpty!53795 m!1191115))

(declare-fun m!1191117 () Bool)

(assert (=> start!109798 m!1191117))

(declare-fun m!1191119 () Bool)

(assert (=> start!109798 m!1191119))

(declare-fun m!1191121 () Bool)

(assert (=> start!109798 m!1191121))

(declare-fun m!1191123 () Bool)

(assert (=> b!1300056 m!1191123))

(assert (=> b!1300056 m!1191123))

(declare-fun m!1191125 () Bool)

(assert (=> b!1300056 m!1191125))

(check-sat (not b!1300063) (not b!1300059) (not b!1300058) (not b_next!29175) (not mapNonEmpty!53795) tp_is_empty!34815 (not b!1300056) (not b!1300055) b_and!47293 (not start!109798))
(check-sat b_and!47293 (not b_next!29175))

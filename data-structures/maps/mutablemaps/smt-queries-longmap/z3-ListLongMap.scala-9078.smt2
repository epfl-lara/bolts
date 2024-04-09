; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109290 () Bool)

(assert start!109290)

(declare-fun b_free!28743 () Bool)

(declare-fun b_next!28743 () Bool)

(assert (=> start!109290 (= b_free!28743 (not b_next!28743))))

(declare-fun tp!101348 () Bool)

(declare-fun b_and!46843 () Bool)

(assert (=> start!109290 (= tp!101348 b_and!46843)))

(declare-fun b!1292482 () Bool)

(declare-fun res!858881 () Bool)

(declare-fun e!737725 () Bool)

(assert (=> b!1292482 (=> (not res!858881) (not e!737725))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85757 0))(
  ( (array!85758 (arr!41375 (Array (_ BitVec 32) (_ BitVec 64))) (size!41926 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85757)

(assert (=> b!1292482 (= res!858881 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41926 _keys!1741))))))

(declare-fun b!1292483 () Bool)

(declare-fun res!858878 () Bool)

(assert (=> b!1292483 (=> (not res!858878) (not e!737725))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85757 (_ BitVec 32)) Bool)

(assert (=> b!1292483 (= res!858878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292484 () Bool)

(declare-fun res!858877 () Bool)

(assert (=> b!1292484 (=> (not res!858877) (not e!737725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292484 (= res!858877 (not (validKeyInArray!0 (select (arr!41375 _keys!1741) from!2144))))))

(declare-fun b!1292485 () Bool)

(declare-fun res!858879 () Bool)

(assert (=> b!1292485 (=> (not res!858879) (not e!737725))))

(declare-datatypes ((List!29536 0))(
  ( (Nil!29533) (Cons!29532 (h!30741 (_ BitVec 64)) (t!43107 List!29536)) )
))
(declare-fun arrayNoDuplicates!0 (array!85757 (_ BitVec 32) List!29536) Bool)

(assert (=> b!1292485 (= res!858879 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29533))))

(declare-fun b!1292486 () Bool)

(declare-fun e!737723 () Bool)

(declare-fun tp_is_empty!34383 () Bool)

(assert (=> b!1292486 (= e!737723 tp_is_empty!34383)))

(declare-fun b!1292487 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292487 (= e!737725 (not (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle from!2144 (size!41926 _keys!1741)))))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50947 0))(
  ( (V!50948 (val!17266 Int)) )
))
(declare-datatypes ((tuple2!22350 0))(
  ( (tuple2!22351 (_1!11185 (_ BitVec 64)) (_2!11185 V!50947)) )
))
(declare-datatypes ((List!29537 0))(
  ( (Nil!29534) (Cons!29533 (h!30742 tuple2!22350) (t!43108 List!29537)) )
))
(declare-datatypes ((ListLongMap!20019 0))(
  ( (ListLongMap!20020 (toList!10025 List!29537)) )
))
(declare-fun contains!8081 (ListLongMap!20019 (_ BitVec 64)) Bool)

(assert (=> b!1292487 (not (contains!8081 (ListLongMap!20020 Nil!29534) k0!1205))))

(declare-datatypes ((Unit!42731 0))(
  ( (Unit!42732) )
))
(declare-fun lt!579286 () Unit!42731)

(declare-fun emptyContainsNothing!122 ((_ BitVec 64)) Unit!42731)

(assert (=> b!1292487 (= lt!579286 (emptyContainsNothing!122 k0!1205))))

(declare-fun mapIsEmpty!53135 () Bool)

(declare-fun mapRes!53135 () Bool)

(assert (=> mapIsEmpty!53135 mapRes!53135))

(declare-fun b!1292488 () Bool)

(declare-fun res!858882 () Bool)

(assert (=> b!1292488 (=> (not res!858882) (not e!737725))))

(declare-fun minValue!1387 () V!50947)

(declare-fun zeroValue!1387 () V!50947)

(declare-datatypes ((ValueCell!16293 0))(
  ( (ValueCellFull!16293 (v!19867 V!50947)) (EmptyCell!16293) )
))
(declare-datatypes ((array!85759 0))(
  ( (array!85760 (arr!41376 (Array (_ BitVec 32) ValueCell!16293)) (size!41927 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85759)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5016 (array!85757 array!85759 (_ BitVec 32) (_ BitVec 32) V!50947 V!50947 (_ BitVec 32) Int) ListLongMap!20019)

(assert (=> b!1292488 (= res!858882 (contains!8081 (getCurrentListMap!5016 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292489 () Bool)

(declare-fun res!858875 () Bool)

(assert (=> b!1292489 (=> (not res!858875) (not e!737725))))

(assert (=> b!1292489 (= res!858875 (and (= (size!41927 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41926 _keys!1741) (size!41927 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53135 () Bool)

(declare-fun tp!101349 () Bool)

(assert (=> mapNonEmpty!53135 (= mapRes!53135 (and tp!101349 e!737723))))

(declare-fun mapValue!53135 () ValueCell!16293)

(declare-fun mapKey!53135 () (_ BitVec 32))

(declare-fun mapRest!53135 () (Array (_ BitVec 32) ValueCell!16293))

(assert (=> mapNonEmpty!53135 (= (arr!41376 _values!1445) (store mapRest!53135 mapKey!53135 mapValue!53135))))

(declare-fun res!858876 () Bool)

(assert (=> start!109290 (=> (not res!858876) (not e!737725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109290 (= res!858876 (validMask!0 mask!2175))))

(assert (=> start!109290 e!737725))

(assert (=> start!109290 tp_is_empty!34383))

(assert (=> start!109290 true))

(declare-fun e!737721 () Bool)

(declare-fun array_inv!31321 (array!85759) Bool)

(assert (=> start!109290 (and (array_inv!31321 _values!1445) e!737721)))

(declare-fun array_inv!31322 (array!85757) Bool)

(assert (=> start!109290 (array_inv!31322 _keys!1741)))

(assert (=> start!109290 tp!101348))

(declare-fun b!1292490 () Bool)

(declare-fun res!858880 () Bool)

(assert (=> b!1292490 (=> (not res!858880) (not e!737725))))

(assert (=> b!1292490 (= res!858880 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41926 _keys!1741))))))

(declare-fun b!1292491 () Bool)

(declare-fun e!737724 () Bool)

(assert (=> b!1292491 (= e!737721 (and e!737724 mapRes!53135))))

(declare-fun condMapEmpty!53135 () Bool)

(declare-fun mapDefault!53135 () ValueCell!16293)

(assert (=> b!1292491 (= condMapEmpty!53135 (= (arr!41376 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16293)) mapDefault!53135)))))

(declare-fun b!1292492 () Bool)

(assert (=> b!1292492 (= e!737724 tp_is_empty!34383)))

(assert (= (and start!109290 res!858876) b!1292489))

(assert (= (and b!1292489 res!858875) b!1292483))

(assert (= (and b!1292483 res!858878) b!1292485))

(assert (= (and b!1292485 res!858879) b!1292482))

(assert (= (and b!1292482 res!858881) b!1292488))

(assert (= (and b!1292488 res!858882) b!1292490))

(assert (= (and b!1292490 res!858880) b!1292484))

(assert (= (and b!1292484 res!858877) b!1292487))

(assert (= (and b!1292491 condMapEmpty!53135) mapIsEmpty!53135))

(assert (= (and b!1292491 (not condMapEmpty!53135)) mapNonEmpty!53135))

(get-info :version)

(assert (= (and mapNonEmpty!53135 ((_ is ValueCellFull!16293) mapValue!53135)) b!1292486))

(assert (= (and b!1292491 ((_ is ValueCellFull!16293) mapDefault!53135)) b!1292492))

(assert (= start!109290 b!1292491))

(declare-fun m!1185041 () Bool)

(assert (=> mapNonEmpty!53135 m!1185041))

(declare-fun m!1185043 () Bool)

(assert (=> b!1292484 m!1185043))

(assert (=> b!1292484 m!1185043))

(declare-fun m!1185045 () Bool)

(assert (=> b!1292484 m!1185045))

(declare-fun m!1185047 () Bool)

(assert (=> b!1292483 m!1185047))

(declare-fun m!1185049 () Bool)

(assert (=> b!1292485 m!1185049))

(declare-fun m!1185051 () Bool)

(assert (=> b!1292488 m!1185051))

(assert (=> b!1292488 m!1185051))

(declare-fun m!1185053 () Bool)

(assert (=> b!1292488 m!1185053))

(declare-fun m!1185055 () Bool)

(assert (=> b!1292487 m!1185055))

(declare-fun m!1185057 () Bool)

(assert (=> b!1292487 m!1185057))

(declare-fun m!1185059 () Bool)

(assert (=> start!109290 m!1185059))

(declare-fun m!1185061 () Bool)

(assert (=> start!109290 m!1185061))

(declare-fun m!1185063 () Bool)

(assert (=> start!109290 m!1185063))

(check-sat (not b!1292487) (not start!109290) (not b_next!28743) (not mapNonEmpty!53135) b_and!46843 (not b!1292488) (not b!1292483) (not b!1292485) tp_is_empty!34383 (not b!1292484))
(check-sat b_and!46843 (not b_next!28743))

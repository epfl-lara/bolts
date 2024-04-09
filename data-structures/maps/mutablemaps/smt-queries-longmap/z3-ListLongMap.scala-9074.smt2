; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109266 () Bool)

(assert start!109266)

(declare-fun b_free!28719 () Bool)

(declare-fun b_next!28719 () Bool)

(assert (=> start!109266 (= b_free!28719 (not b_next!28719))))

(declare-fun tp!101277 () Bool)

(declare-fun b_and!46819 () Bool)

(assert (=> start!109266 (= tp!101277 b_and!46819)))

(declare-fun mapIsEmpty!53099 () Bool)

(declare-fun mapRes!53099 () Bool)

(assert (=> mapIsEmpty!53099 mapRes!53099))

(declare-fun b!1292086 () Bool)

(declare-fun e!737542 () Bool)

(assert (=> b!1292086 (= e!737542 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50915 0))(
  ( (V!50916 (val!17254 Int)) )
))
(declare-datatypes ((tuple2!22328 0))(
  ( (tuple2!22329 (_1!11174 (_ BitVec 64)) (_2!11174 V!50915)) )
))
(declare-datatypes ((List!29517 0))(
  ( (Nil!29514) (Cons!29513 (h!30722 tuple2!22328) (t!43088 List!29517)) )
))
(declare-datatypes ((ListLongMap!19997 0))(
  ( (ListLongMap!19998 (toList!10014 List!29517)) )
))
(declare-fun contains!8070 (ListLongMap!19997 (_ BitVec 64)) Bool)

(assert (=> b!1292086 (not (contains!8070 (ListLongMap!19998 Nil!29514) k0!1205))))

(declare-datatypes ((Unit!42711 0))(
  ( (Unit!42712) )
))
(declare-fun lt!579250 () Unit!42711)

(declare-fun emptyContainsNothing!112 ((_ BitVec 64)) Unit!42711)

(assert (=> b!1292086 (= lt!579250 (emptyContainsNothing!112 k0!1205))))

(declare-fun b!1292087 () Bool)

(declare-fun res!858588 () Bool)

(assert (=> b!1292087 (=> (not res!858588) (not e!737542))))

(declare-fun minValue!1387 () V!50915)

(declare-fun zeroValue!1387 () V!50915)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16281 0))(
  ( (ValueCellFull!16281 (v!19855 V!50915)) (EmptyCell!16281) )
))
(declare-datatypes ((array!85711 0))(
  ( (array!85712 (arr!41352 (Array (_ BitVec 32) ValueCell!16281)) (size!41903 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85711)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85713 0))(
  ( (array!85714 (arr!41353 (Array (_ BitVec 32) (_ BitVec 64))) (size!41904 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85713)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5007 (array!85713 array!85711 (_ BitVec 32) (_ BitVec 32) V!50915 V!50915 (_ BitVec 32) Int) ListLongMap!19997)

(assert (=> b!1292087 (= res!858588 (contains!8070 (getCurrentListMap!5007 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292088 () Bool)

(declare-fun res!858591 () Bool)

(assert (=> b!1292088 (=> (not res!858591) (not e!737542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292088 (= res!858591 (not (validKeyInArray!0 (select (arr!41353 _keys!1741) from!2144))))))

(declare-fun res!858593 () Bool)

(assert (=> start!109266 (=> (not res!858593) (not e!737542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109266 (= res!858593 (validMask!0 mask!2175))))

(assert (=> start!109266 e!737542))

(declare-fun tp_is_empty!34359 () Bool)

(assert (=> start!109266 tp_is_empty!34359))

(assert (=> start!109266 true))

(declare-fun e!737543 () Bool)

(declare-fun array_inv!31301 (array!85711) Bool)

(assert (=> start!109266 (and (array_inv!31301 _values!1445) e!737543)))

(declare-fun array_inv!31302 (array!85713) Bool)

(assert (=> start!109266 (array_inv!31302 _keys!1741)))

(assert (=> start!109266 tp!101277))

(declare-fun b!1292089 () Bool)

(declare-fun res!858594 () Bool)

(assert (=> b!1292089 (=> (not res!858594) (not e!737542))))

(assert (=> b!1292089 (= res!858594 (and (= (size!41903 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41904 _keys!1741) (size!41903 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292090 () Bool)

(declare-fun res!858589 () Bool)

(assert (=> b!1292090 (=> (not res!858589) (not e!737542))))

(declare-datatypes ((List!29518 0))(
  ( (Nil!29515) (Cons!29514 (h!30723 (_ BitVec 64)) (t!43089 List!29518)) )
))
(declare-fun arrayNoDuplicates!0 (array!85713 (_ BitVec 32) List!29518) Bool)

(assert (=> b!1292090 (= res!858589 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29515))))

(declare-fun b!1292091 () Bool)

(declare-fun res!858590 () Bool)

(assert (=> b!1292091 (=> (not res!858590) (not e!737542))))

(assert (=> b!1292091 (= res!858590 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41904 _keys!1741))))))

(declare-fun b!1292092 () Bool)

(declare-fun res!858592 () Bool)

(assert (=> b!1292092 (=> (not res!858592) (not e!737542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85713 (_ BitVec 32)) Bool)

(assert (=> b!1292092 (= res!858592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53099 () Bool)

(declare-fun tp!101276 () Bool)

(declare-fun e!737544 () Bool)

(assert (=> mapNonEmpty!53099 (= mapRes!53099 (and tp!101276 e!737544))))

(declare-fun mapRest!53099 () (Array (_ BitVec 32) ValueCell!16281))

(declare-fun mapKey!53099 () (_ BitVec 32))

(declare-fun mapValue!53099 () ValueCell!16281)

(assert (=> mapNonEmpty!53099 (= (arr!41352 _values!1445) (store mapRest!53099 mapKey!53099 mapValue!53099))))

(declare-fun b!1292093 () Bool)

(declare-fun e!737541 () Bool)

(assert (=> b!1292093 (= e!737541 tp_is_empty!34359)))

(declare-fun b!1292094 () Bool)

(assert (=> b!1292094 (= e!737544 tp_is_empty!34359)))

(declare-fun b!1292095 () Bool)

(declare-fun res!858587 () Bool)

(assert (=> b!1292095 (=> (not res!858587) (not e!737542))))

(assert (=> b!1292095 (= res!858587 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41904 _keys!1741))))))

(declare-fun b!1292096 () Bool)

(assert (=> b!1292096 (= e!737543 (and e!737541 mapRes!53099))))

(declare-fun condMapEmpty!53099 () Bool)

(declare-fun mapDefault!53099 () ValueCell!16281)

(assert (=> b!1292096 (= condMapEmpty!53099 (= (arr!41352 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16281)) mapDefault!53099)))))

(assert (= (and start!109266 res!858593) b!1292089))

(assert (= (and b!1292089 res!858594) b!1292092))

(assert (= (and b!1292092 res!858592) b!1292090))

(assert (= (and b!1292090 res!858589) b!1292095))

(assert (= (and b!1292095 res!858587) b!1292087))

(assert (= (and b!1292087 res!858588) b!1292091))

(assert (= (and b!1292091 res!858590) b!1292088))

(assert (= (and b!1292088 res!858591) b!1292086))

(assert (= (and b!1292096 condMapEmpty!53099) mapIsEmpty!53099))

(assert (= (and b!1292096 (not condMapEmpty!53099)) mapNonEmpty!53099))

(get-info :version)

(assert (= (and mapNonEmpty!53099 ((_ is ValueCellFull!16281) mapValue!53099)) b!1292094))

(assert (= (and b!1292096 ((_ is ValueCellFull!16281) mapDefault!53099)) b!1292093))

(assert (= start!109266 b!1292096))

(declare-fun m!1184753 () Bool)

(assert (=> b!1292090 m!1184753))

(declare-fun m!1184755 () Bool)

(assert (=> b!1292092 m!1184755))

(declare-fun m!1184757 () Bool)

(assert (=> b!1292086 m!1184757))

(declare-fun m!1184759 () Bool)

(assert (=> b!1292086 m!1184759))

(declare-fun m!1184761 () Bool)

(assert (=> start!109266 m!1184761))

(declare-fun m!1184763 () Bool)

(assert (=> start!109266 m!1184763))

(declare-fun m!1184765 () Bool)

(assert (=> start!109266 m!1184765))

(declare-fun m!1184767 () Bool)

(assert (=> b!1292088 m!1184767))

(assert (=> b!1292088 m!1184767))

(declare-fun m!1184769 () Bool)

(assert (=> b!1292088 m!1184769))

(declare-fun m!1184771 () Bool)

(assert (=> b!1292087 m!1184771))

(assert (=> b!1292087 m!1184771))

(declare-fun m!1184773 () Bool)

(assert (=> b!1292087 m!1184773))

(declare-fun m!1184775 () Bool)

(assert (=> mapNonEmpty!53099 m!1184775))

(check-sat (not b!1292087) b_and!46819 (not b!1292086) (not b_next!28719) (not b!1292088) (not b!1292092) (not b!1292090) (not mapNonEmpty!53099) tp_is_empty!34359 (not start!109266))
(check-sat b_and!46819 (not b_next!28719))

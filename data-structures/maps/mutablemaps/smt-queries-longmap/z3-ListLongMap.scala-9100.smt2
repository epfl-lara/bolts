; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109422 () Bool)

(assert start!109422)

(declare-fun b_free!28875 () Bool)

(declare-fun b_next!28875 () Bool)

(assert (=> start!109422 (= b_free!28875 (not b_next!28875))))

(declare-fun tp!101744 () Bool)

(declare-fun b_and!46975 () Bool)

(assert (=> start!109422 (= tp!101744 b_and!46975)))

(declare-fun res!860578 () Bool)

(declare-fun e!738825 () Bool)

(assert (=> start!109422 (=> (not res!860578) (not e!738825))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109422 (= res!860578 (validMask!0 mask!2175))))

(assert (=> start!109422 e!738825))

(declare-fun tp_is_empty!34515 () Bool)

(assert (=> start!109422 tp_is_empty!34515))

(assert (=> start!109422 true))

(declare-datatypes ((V!51123 0))(
  ( (V!51124 (val!17332 Int)) )
))
(declare-datatypes ((ValueCell!16359 0))(
  ( (ValueCellFull!16359 (v!19933 V!51123)) (EmptyCell!16359) )
))
(declare-datatypes ((array!86015 0))(
  ( (array!86016 (arr!41504 (Array (_ BitVec 32) ValueCell!16359)) (size!42055 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86015)

(declare-fun e!738824 () Bool)

(declare-fun array_inv!31407 (array!86015) Bool)

(assert (=> start!109422 (and (array_inv!31407 _values!1445) e!738824)))

(declare-datatypes ((array!86017 0))(
  ( (array!86018 (arr!41505 (Array (_ BitVec 32) (_ BitVec 64))) (size!42056 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86017)

(declare-fun array_inv!31408 (array!86017) Bool)

(assert (=> start!109422 (array_inv!31408 _keys!1741)))

(assert (=> start!109422 tp!101744))

(declare-fun b!1294773 () Bool)

(declare-fun e!738828 () Bool)

(assert (=> b!1294773 (= e!738825 (not e!738828))))

(declare-fun res!860580 () Bool)

(assert (=> b!1294773 (=> res!860580 e!738828)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1294773 (= res!860580 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22460 0))(
  ( (tuple2!22461 (_1!11240 (_ BitVec 64)) (_2!11240 V!51123)) )
))
(declare-datatypes ((List!29631 0))(
  ( (Nil!29628) (Cons!29627 (h!30836 tuple2!22460) (t!43202 List!29631)) )
))
(declare-datatypes ((ListLongMap!20129 0))(
  ( (ListLongMap!20130 (toList!10080 List!29631)) )
))
(declare-fun contains!8136 (ListLongMap!20129 (_ BitVec 64)) Bool)

(assert (=> b!1294773 (not (contains!8136 (ListLongMap!20130 Nil!29628) k0!1205))))

(declare-datatypes ((Unit!42827 0))(
  ( (Unit!42828) )
))
(declare-fun lt!579696 () Unit!42827)

(declare-fun emptyContainsNothing!170 ((_ BitVec 64)) Unit!42827)

(assert (=> b!1294773 (= lt!579696 (emptyContainsNothing!170 k0!1205))))

(declare-fun b!1294774 () Bool)

(declare-fun res!860572 () Bool)

(assert (=> b!1294774 (=> (not res!860572) (not e!738825))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294774 (= res!860572 (not (validKeyInArray!0 (select (arr!41505 _keys!1741) from!2144))))))

(declare-fun b!1294775 () Bool)

(declare-fun res!860576 () Bool)

(assert (=> b!1294775 (=> (not res!860576) (not e!738825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86017 (_ BitVec 32)) Bool)

(assert (=> b!1294775 (= res!860576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294776 () Bool)

(declare-fun res!860574 () Bool)

(assert (=> b!1294776 (=> (not res!860574) (not e!738825))))

(declare-datatypes ((List!29632 0))(
  ( (Nil!29629) (Cons!29628 (h!30837 (_ BitVec 64)) (t!43203 List!29632)) )
))
(declare-fun arrayNoDuplicates!0 (array!86017 (_ BitVec 32) List!29632) Bool)

(assert (=> b!1294776 (= res!860574 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29629))))

(declare-fun b!1294777 () Bool)

(declare-fun e!738829 () Bool)

(declare-fun mapRes!53333 () Bool)

(assert (=> b!1294777 (= e!738824 (and e!738829 mapRes!53333))))

(declare-fun condMapEmpty!53333 () Bool)

(declare-fun mapDefault!53333 () ValueCell!16359)

(assert (=> b!1294777 (= condMapEmpty!53333 (= (arr!41504 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16359)) mapDefault!53333)))))

(declare-fun b!1294778 () Bool)

(assert (=> b!1294778 (= e!738828 true)))

(declare-fun minValue!1387 () V!51123)

(declare-fun zeroValue!1387 () V!51123)

(declare-fun lt!579697 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6100 (array!86017 array!86015 (_ BitVec 32) (_ BitVec 32) V!51123 V!51123 (_ BitVec 32) Int) ListLongMap!20129)

(assert (=> b!1294778 (= lt!579697 (contains!8136 (getCurrentListMapNoExtraKeys!6100 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!53333 () Bool)

(declare-fun tp!101745 () Bool)

(declare-fun e!738827 () Bool)

(assert (=> mapNonEmpty!53333 (= mapRes!53333 (and tp!101745 e!738827))))

(declare-fun mapRest!53333 () (Array (_ BitVec 32) ValueCell!16359))

(declare-fun mapValue!53333 () ValueCell!16359)

(declare-fun mapKey!53333 () (_ BitVec 32))

(assert (=> mapNonEmpty!53333 (= (arr!41504 _values!1445) (store mapRest!53333 mapKey!53333 mapValue!53333))))

(declare-fun b!1294779 () Bool)

(declare-fun res!860573 () Bool)

(assert (=> b!1294779 (=> (not res!860573) (not e!738825))))

(assert (=> b!1294779 (= res!860573 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42056 _keys!1741))))))

(declare-fun b!1294780 () Bool)

(assert (=> b!1294780 (= e!738827 tp_is_empty!34515)))

(declare-fun b!1294781 () Bool)

(declare-fun res!860579 () Bool)

(assert (=> b!1294781 (=> (not res!860579) (not e!738825))))

(declare-fun getCurrentListMap!5063 (array!86017 array!86015 (_ BitVec 32) (_ BitVec 32) V!51123 V!51123 (_ BitVec 32) Int) ListLongMap!20129)

(assert (=> b!1294781 (= res!860579 (contains!8136 (getCurrentListMap!5063 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294782 () Bool)

(assert (=> b!1294782 (= e!738829 tp_is_empty!34515)))

(declare-fun b!1294783 () Bool)

(declare-fun res!860575 () Bool)

(assert (=> b!1294783 (=> (not res!860575) (not e!738825))))

(assert (=> b!1294783 (= res!860575 (and (= (size!42055 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42056 _keys!1741) (size!42055 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294784 () Bool)

(declare-fun res!860577 () Bool)

(assert (=> b!1294784 (=> (not res!860577) (not e!738825))))

(assert (=> b!1294784 (= res!860577 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42056 _keys!1741))))))

(declare-fun mapIsEmpty!53333 () Bool)

(assert (=> mapIsEmpty!53333 mapRes!53333))

(assert (= (and start!109422 res!860578) b!1294783))

(assert (= (and b!1294783 res!860575) b!1294775))

(assert (= (and b!1294775 res!860576) b!1294776))

(assert (= (and b!1294776 res!860574) b!1294779))

(assert (= (and b!1294779 res!860573) b!1294781))

(assert (= (and b!1294781 res!860579) b!1294784))

(assert (= (and b!1294784 res!860577) b!1294774))

(assert (= (and b!1294774 res!860572) b!1294773))

(assert (= (and b!1294773 (not res!860580)) b!1294778))

(assert (= (and b!1294777 condMapEmpty!53333) mapIsEmpty!53333))

(assert (= (and b!1294777 (not condMapEmpty!53333)) mapNonEmpty!53333))

(get-info :version)

(assert (= (and mapNonEmpty!53333 ((_ is ValueCellFull!16359) mapValue!53333)) b!1294780))

(assert (= (and b!1294777 ((_ is ValueCellFull!16359) mapDefault!53333)) b!1294782))

(assert (= start!109422 b!1294777))

(declare-fun m!1186905 () Bool)

(assert (=> b!1294774 m!1186905))

(assert (=> b!1294774 m!1186905))

(declare-fun m!1186907 () Bool)

(assert (=> b!1294774 m!1186907))

(declare-fun m!1186909 () Bool)

(assert (=> b!1294775 m!1186909))

(declare-fun m!1186911 () Bool)

(assert (=> b!1294781 m!1186911))

(assert (=> b!1294781 m!1186911))

(declare-fun m!1186913 () Bool)

(assert (=> b!1294781 m!1186913))

(declare-fun m!1186915 () Bool)

(assert (=> start!109422 m!1186915))

(declare-fun m!1186917 () Bool)

(assert (=> start!109422 m!1186917))

(declare-fun m!1186919 () Bool)

(assert (=> start!109422 m!1186919))

(declare-fun m!1186921 () Bool)

(assert (=> b!1294773 m!1186921))

(declare-fun m!1186923 () Bool)

(assert (=> b!1294773 m!1186923))

(declare-fun m!1186925 () Bool)

(assert (=> b!1294776 m!1186925))

(declare-fun m!1186927 () Bool)

(assert (=> mapNonEmpty!53333 m!1186927))

(declare-fun m!1186929 () Bool)

(assert (=> b!1294778 m!1186929))

(assert (=> b!1294778 m!1186929))

(declare-fun m!1186931 () Bool)

(assert (=> b!1294778 m!1186931))

(check-sat (not b!1294776) (not b!1294775) (not b!1294773) (not b!1294781) b_and!46975 (not b!1294778) (not mapNonEmpty!53333) (not b!1294774) (not start!109422) (not b_next!28875) tp_is_empty!34515)
(check-sat b_and!46975 (not b_next!28875))

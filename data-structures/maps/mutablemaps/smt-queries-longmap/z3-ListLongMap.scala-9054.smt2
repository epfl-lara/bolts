; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109146 () Bool)

(assert start!109146)

(declare-fun b_free!28599 () Bool)

(declare-fun b_next!28599 () Bool)

(assert (=> start!109146 (= b_free!28599 (not b_next!28599))))

(declare-fun tp!100917 () Bool)

(declare-fun b_and!46699 () Bool)

(assert (=> start!109146 (= tp!100917 b_and!46699)))

(declare-fun b!1289967 () Bool)

(declare-fun res!857008 () Bool)

(declare-fun e!736503 () Bool)

(assert (=> b!1289967 (=> (not res!857008) (not e!736503))))

(declare-datatypes ((array!85477 0))(
  ( (array!85478 (arr!41235 (Array (_ BitVec 32) (_ BitVec 64))) (size!41786 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85477)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289967 (= res!857008 (not (validKeyInArray!0 (select (arr!41235 _keys!1741) from!2144))))))

(declare-fun b!1289968 () Bool)

(declare-fun e!736504 () Bool)

(assert (=> b!1289968 (= e!736504 true)))

(declare-datatypes ((V!50755 0))(
  ( (V!50756 (val!17194 Int)) )
))
(declare-datatypes ((tuple2!22226 0))(
  ( (tuple2!22227 (_1!11123 (_ BitVec 64)) (_2!11123 V!50755)) )
))
(declare-datatypes ((List!29423 0))(
  ( (Nil!29420) (Cons!29419 (h!30628 tuple2!22226) (t!42994 List!29423)) )
))
(declare-datatypes ((ListLongMap!19895 0))(
  ( (ListLongMap!19896 (toList!9963 List!29423)) )
))
(declare-fun lt!578404 () ListLongMap!19895)

(declare-fun minValue!1387 () V!50755)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8019 (ListLongMap!19895 (_ BitVec 64)) Bool)

(declare-fun +!4333 (ListLongMap!19895 tuple2!22226) ListLongMap!19895)

(assert (=> b!1289968 (not (contains!8019 (+!4333 lt!578404 (tuple2!22227 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42617 0))(
  ( (Unit!42618) )
))
(declare-fun lt!578401 () Unit!42617)

(declare-fun addStillNotContains!378 (ListLongMap!19895 (_ BitVec 64) V!50755 (_ BitVec 64)) Unit!42617)

(assert (=> b!1289968 (= lt!578401 (addStillNotContains!378 lt!578404 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!50755)

(assert (=> b!1289968 (not (contains!8019 (+!4333 lt!578404 (tuple2!22227 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578403 () Unit!42617)

(assert (=> b!1289968 (= lt!578403 (addStillNotContains!378 lt!578404 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-datatypes ((ValueCell!16221 0))(
  ( (ValueCellFull!16221 (v!19795 V!50755)) (EmptyCell!16221) )
))
(declare-datatypes ((array!85479 0))(
  ( (array!85480 (arr!41236 (Array (_ BitVec 32) ValueCell!16221)) (size!41787 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85479)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6045 (array!85477 array!85479 (_ BitVec 32) (_ BitVec 32) V!50755 V!50755 (_ BitVec 32) Int) ListLongMap!19895)

(assert (=> b!1289968 (= lt!578404 (getCurrentListMapNoExtraKeys!6045 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289969 () Bool)

(declare-fun res!857010 () Bool)

(assert (=> b!1289969 (=> (not res!857010) (not e!736503))))

(declare-fun getCurrentListMap!4965 (array!85477 array!85479 (_ BitVec 32) (_ BitVec 32) V!50755 V!50755 (_ BitVec 32) Int) ListLongMap!19895)

(assert (=> b!1289969 (= res!857010 (contains!8019 (getCurrentListMap!4965 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1289970 () Bool)

(declare-fun res!857013 () Bool)

(assert (=> b!1289970 (=> (not res!857013) (not e!736503))))

(declare-datatypes ((List!29424 0))(
  ( (Nil!29421) (Cons!29420 (h!30629 (_ BitVec 64)) (t!42995 List!29424)) )
))
(declare-fun arrayNoDuplicates!0 (array!85477 (_ BitVec 32) List!29424) Bool)

(assert (=> b!1289970 (= res!857013 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29421))))

(declare-fun b!1289971 () Bool)

(declare-fun e!736507 () Bool)

(declare-fun tp_is_empty!34239 () Bool)

(assert (=> b!1289971 (= e!736507 tp_is_empty!34239)))

(declare-fun b!1289972 () Bool)

(declare-fun e!736502 () Bool)

(assert (=> b!1289972 (= e!736502 tp_is_empty!34239)))

(declare-fun b!1289973 () Bool)

(declare-fun res!857009 () Bool)

(assert (=> b!1289973 (=> (not res!857009) (not e!736503))))

(assert (=> b!1289973 (= res!857009 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41786 _keys!1741))))))

(declare-fun mapIsEmpty!52919 () Bool)

(declare-fun mapRes!52919 () Bool)

(assert (=> mapIsEmpty!52919 mapRes!52919))

(declare-fun b!1289974 () Bool)

(declare-fun res!857015 () Bool)

(assert (=> b!1289974 (=> (not res!857015) (not e!736503))))

(assert (=> b!1289974 (= res!857015 (and (= (size!41787 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41786 _keys!1741) (size!41787 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289975 () Bool)

(declare-fun res!857016 () Bool)

(assert (=> b!1289975 (=> (not res!857016) (not e!736503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85477 (_ BitVec 32)) Bool)

(assert (=> b!1289975 (= res!857016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289976 () Bool)

(declare-fun e!736506 () Bool)

(assert (=> b!1289976 (= e!736506 (and e!736507 mapRes!52919))))

(declare-fun condMapEmpty!52919 () Bool)

(declare-fun mapDefault!52919 () ValueCell!16221)

(assert (=> b!1289976 (= condMapEmpty!52919 (= (arr!41236 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16221)) mapDefault!52919)))))

(declare-fun res!857014 () Bool)

(assert (=> start!109146 (=> (not res!857014) (not e!736503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109146 (= res!857014 (validMask!0 mask!2175))))

(assert (=> start!109146 e!736503))

(assert (=> start!109146 tp_is_empty!34239))

(assert (=> start!109146 true))

(declare-fun array_inv!31227 (array!85479) Bool)

(assert (=> start!109146 (and (array_inv!31227 _values!1445) e!736506)))

(declare-fun array_inv!31228 (array!85477) Bool)

(assert (=> start!109146 (array_inv!31228 _keys!1741)))

(assert (=> start!109146 tp!100917))

(declare-fun b!1289977 () Bool)

(declare-fun res!857012 () Bool)

(assert (=> b!1289977 (=> (not res!857012) (not e!736503))))

(assert (=> b!1289977 (= res!857012 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41786 _keys!1741))))))

(declare-fun mapNonEmpty!52919 () Bool)

(declare-fun tp!100916 () Bool)

(assert (=> mapNonEmpty!52919 (= mapRes!52919 (and tp!100916 e!736502))))

(declare-fun mapValue!52919 () ValueCell!16221)

(declare-fun mapRest!52919 () (Array (_ BitVec 32) ValueCell!16221))

(declare-fun mapKey!52919 () (_ BitVec 32))

(assert (=> mapNonEmpty!52919 (= (arr!41236 _values!1445) (store mapRest!52919 mapKey!52919 mapValue!52919))))

(declare-fun b!1289978 () Bool)

(assert (=> b!1289978 (= e!736503 (not e!736504))))

(declare-fun res!857011 () Bool)

(assert (=> b!1289978 (=> res!857011 e!736504)))

(assert (=> b!1289978 (= res!857011 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289978 (not (contains!8019 (ListLongMap!19896 Nil!29420) k0!1205))))

(declare-fun lt!578402 () Unit!42617)

(declare-fun emptyContainsNothing!70 ((_ BitVec 64)) Unit!42617)

(assert (=> b!1289978 (= lt!578402 (emptyContainsNothing!70 k0!1205))))

(assert (= (and start!109146 res!857014) b!1289974))

(assert (= (and b!1289974 res!857015) b!1289975))

(assert (= (and b!1289975 res!857016) b!1289970))

(assert (= (and b!1289970 res!857013) b!1289973))

(assert (= (and b!1289973 res!857009) b!1289969))

(assert (= (and b!1289969 res!857010) b!1289977))

(assert (= (and b!1289977 res!857012) b!1289967))

(assert (= (and b!1289967 res!857008) b!1289978))

(assert (= (and b!1289978 (not res!857011)) b!1289968))

(assert (= (and b!1289976 condMapEmpty!52919) mapIsEmpty!52919))

(assert (= (and b!1289976 (not condMapEmpty!52919)) mapNonEmpty!52919))

(get-info :version)

(assert (= (and mapNonEmpty!52919 ((_ is ValueCellFull!16221) mapValue!52919)) b!1289972))

(assert (= (and b!1289976 ((_ is ValueCellFull!16221) mapDefault!52919)) b!1289971))

(assert (= start!109146 b!1289976))

(declare-fun m!1182565 () Bool)

(assert (=> mapNonEmpty!52919 m!1182565))

(declare-fun m!1182567 () Bool)

(assert (=> b!1289968 m!1182567))

(declare-fun m!1182569 () Bool)

(assert (=> b!1289968 m!1182569))

(assert (=> b!1289968 m!1182567))

(declare-fun m!1182571 () Bool)

(assert (=> b!1289968 m!1182571))

(declare-fun m!1182573 () Bool)

(assert (=> b!1289968 m!1182573))

(declare-fun m!1182575 () Bool)

(assert (=> b!1289968 m!1182575))

(declare-fun m!1182577 () Bool)

(assert (=> b!1289968 m!1182577))

(assert (=> b!1289968 m!1182573))

(declare-fun m!1182579 () Bool)

(assert (=> b!1289968 m!1182579))

(declare-fun m!1182581 () Bool)

(assert (=> b!1289967 m!1182581))

(assert (=> b!1289967 m!1182581))

(declare-fun m!1182583 () Bool)

(assert (=> b!1289967 m!1182583))

(declare-fun m!1182585 () Bool)

(assert (=> b!1289969 m!1182585))

(assert (=> b!1289969 m!1182585))

(declare-fun m!1182587 () Bool)

(assert (=> b!1289969 m!1182587))

(declare-fun m!1182589 () Bool)

(assert (=> b!1289975 m!1182589))

(declare-fun m!1182591 () Bool)

(assert (=> b!1289978 m!1182591))

(declare-fun m!1182593 () Bool)

(assert (=> b!1289978 m!1182593))

(declare-fun m!1182595 () Bool)

(assert (=> b!1289970 m!1182595))

(declare-fun m!1182597 () Bool)

(assert (=> start!109146 m!1182597))

(declare-fun m!1182599 () Bool)

(assert (=> start!109146 m!1182599))

(declare-fun m!1182601 () Bool)

(assert (=> start!109146 m!1182601))

(check-sat (not b!1289967) (not b!1289975) (not b!1289978) b_and!46699 (not b!1289968) (not b!1289970) tp_is_empty!34239 (not mapNonEmpty!52919) (not start!109146) (not b!1289969) (not b_next!28599))
(check-sat b_and!46699 (not b_next!28599))

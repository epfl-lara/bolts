; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109296 () Bool)

(assert start!109296)

(declare-fun b_free!28749 () Bool)

(declare-fun b_next!28749 () Bool)

(assert (=> start!109296 (= b_free!28749 (not b_next!28749))))

(declare-fun tp!101366 () Bool)

(declare-fun b_and!46849 () Bool)

(assert (=> start!109296 (= tp!101366 b_and!46849)))

(declare-fun b!1292586 () Bool)

(declare-fun e!737771 () Bool)

(declare-fun tp_is_empty!34389 () Bool)

(assert (=> b!1292586 (= e!737771 tp_is_empty!34389)))

(declare-fun b!1292587 () Bool)

(declare-fun e!737772 () Bool)

(declare-fun e!737773 () Bool)

(assert (=> b!1292587 (= e!737772 (not e!737773))))

(declare-fun res!858955 () Bool)

(assert (=> b!1292587 (=> res!858955 e!737773)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292587 (= res!858955 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50955 0))(
  ( (V!50956 (val!17269 Int)) )
))
(declare-datatypes ((tuple2!22356 0))(
  ( (tuple2!22357 (_1!11188 (_ BitVec 64)) (_2!11188 V!50955)) )
))
(declare-datatypes ((List!29541 0))(
  ( (Nil!29538) (Cons!29537 (h!30746 tuple2!22356) (t!43112 List!29541)) )
))
(declare-datatypes ((ListLongMap!20025 0))(
  ( (ListLongMap!20026 (toList!10028 List!29541)) )
))
(declare-fun contains!8084 (ListLongMap!20025 (_ BitVec 64)) Bool)

(assert (=> b!1292587 (not (contains!8084 (ListLongMap!20026 Nil!29538) k0!1205))))

(declare-datatypes ((Unit!42737 0))(
  ( (Unit!42738) )
))
(declare-fun lt!579301 () Unit!42737)

(declare-fun emptyContainsNothing!125 ((_ BitVec 64)) Unit!42737)

(assert (=> b!1292587 (= lt!579301 (emptyContainsNothing!125 k0!1205))))

(declare-fun b!1292588 () Bool)

(declare-fun res!858960 () Bool)

(assert (=> b!1292588 (=> (not res!858960) (not e!737772))))

(declare-datatypes ((array!85769 0))(
  ( (array!85770 (arr!41381 (Array (_ BitVec 32) (_ BitVec 64))) (size!41932 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85769)

(declare-datatypes ((List!29542 0))(
  ( (Nil!29539) (Cons!29538 (h!30747 (_ BitVec 64)) (t!43113 List!29542)) )
))
(declare-fun arrayNoDuplicates!0 (array!85769 (_ BitVec 32) List!29542) Bool)

(assert (=> b!1292588 (= res!858960 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29539))))

(declare-fun b!1292589 () Bool)

(declare-fun e!737774 () Bool)

(declare-fun e!737775 () Bool)

(declare-fun mapRes!53144 () Bool)

(assert (=> b!1292589 (= e!737774 (and e!737775 mapRes!53144))))

(declare-fun condMapEmpty!53144 () Bool)

(declare-datatypes ((ValueCell!16296 0))(
  ( (ValueCellFull!16296 (v!19870 V!50955)) (EmptyCell!16296) )
))
(declare-datatypes ((array!85771 0))(
  ( (array!85772 (arr!41382 (Array (_ BitVec 32) ValueCell!16296)) (size!41933 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85771)

(declare-fun mapDefault!53144 () ValueCell!16296)

(assert (=> b!1292589 (= condMapEmpty!53144 (= (arr!41382 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16296)) mapDefault!53144)))))

(declare-fun b!1292590 () Bool)

(assert (=> b!1292590 (= e!737773 true)))

(declare-fun minValue!1387 () V!50955)

(declare-fun zeroValue!1387 () V!50955)

(declare-fun lt!579300 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6076 (array!85769 array!85771 (_ BitVec 32) (_ BitVec 32) V!50955 V!50955 (_ BitVec 32) Int) ListLongMap!20025)

(assert (=> b!1292590 (= lt!579300 (contains!8084 (getCurrentListMapNoExtraKeys!6076 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292591 () Bool)

(declare-fun res!858954 () Bool)

(assert (=> b!1292591 (=> (not res!858954) (not e!737772))))

(declare-fun getCurrentListMap!5018 (array!85769 array!85771 (_ BitVec 32) (_ BitVec 32) V!50955 V!50955 (_ BitVec 32) Int) ListLongMap!20025)

(assert (=> b!1292591 (= res!858954 (contains!8084 (getCurrentListMap!5018 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292592 () Bool)

(declare-fun res!858959 () Bool)

(assert (=> b!1292592 (=> (not res!858959) (not e!737772))))

(assert (=> b!1292592 (= res!858959 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41932 _keys!1741))))))

(declare-fun b!1292593 () Bool)

(declare-fun res!858952 () Bool)

(assert (=> b!1292593 (=> (not res!858952) (not e!737772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292593 (= res!858952 (not (validKeyInArray!0 (select (arr!41381 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53144 () Bool)

(assert (=> mapIsEmpty!53144 mapRes!53144))

(declare-fun b!1292594 () Bool)

(declare-fun res!858957 () Bool)

(assert (=> b!1292594 (=> (not res!858957) (not e!737772))))

(assert (=> b!1292594 (= res!858957 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41932 _keys!1741))))))

(declare-fun b!1292595 () Bool)

(declare-fun res!858956 () Bool)

(assert (=> b!1292595 (=> (not res!858956) (not e!737772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85769 (_ BitVec 32)) Bool)

(assert (=> b!1292595 (= res!858956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292596 () Bool)

(declare-fun res!858953 () Bool)

(assert (=> b!1292596 (=> (not res!858953) (not e!737772))))

(assert (=> b!1292596 (= res!858953 (and (= (size!41933 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41932 _keys!1741) (size!41933 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!858958 () Bool)

(assert (=> start!109296 (=> (not res!858958) (not e!737772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109296 (= res!858958 (validMask!0 mask!2175))))

(assert (=> start!109296 e!737772))

(assert (=> start!109296 tp_is_empty!34389))

(assert (=> start!109296 true))

(declare-fun array_inv!31325 (array!85771) Bool)

(assert (=> start!109296 (and (array_inv!31325 _values!1445) e!737774)))

(declare-fun array_inv!31326 (array!85769) Bool)

(assert (=> start!109296 (array_inv!31326 _keys!1741)))

(assert (=> start!109296 tp!101366))

(declare-fun b!1292597 () Bool)

(assert (=> b!1292597 (= e!737775 tp_is_empty!34389)))

(declare-fun mapNonEmpty!53144 () Bool)

(declare-fun tp!101367 () Bool)

(assert (=> mapNonEmpty!53144 (= mapRes!53144 (and tp!101367 e!737771))))

(declare-fun mapValue!53144 () ValueCell!16296)

(declare-fun mapKey!53144 () (_ BitVec 32))

(declare-fun mapRest!53144 () (Array (_ BitVec 32) ValueCell!16296))

(assert (=> mapNonEmpty!53144 (= (arr!41382 _values!1445) (store mapRest!53144 mapKey!53144 mapValue!53144))))

(assert (= (and start!109296 res!858958) b!1292596))

(assert (= (and b!1292596 res!858953) b!1292595))

(assert (= (and b!1292595 res!858956) b!1292588))

(assert (= (and b!1292588 res!858960) b!1292592))

(assert (= (and b!1292592 res!858959) b!1292591))

(assert (= (and b!1292591 res!858954) b!1292594))

(assert (= (and b!1292594 res!858957) b!1292593))

(assert (= (and b!1292593 res!858952) b!1292587))

(assert (= (and b!1292587 (not res!858955)) b!1292590))

(assert (= (and b!1292589 condMapEmpty!53144) mapIsEmpty!53144))

(assert (= (and b!1292589 (not condMapEmpty!53144)) mapNonEmpty!53144))

(get-info :version)

(assert (= (and mapNonEmpty!53144 ((_ is ValueCellFull!16296) mapValue!53144)) b!1292586))

(assert (= (and b!1292589 ((_ is ValueCellFull!16296) mapDefault!53144)) b!1292597))

(assert (= start!109296 b!1292589))

(declare-fun m!1185117 () Bool)

(assert (=> mapNonEmpty!53144 m!1185117))

(declare-fun m!1185119 () Bool)

(assert (=> b!1292591 m!1185119))

(assert (=> b!1292591 m!1185119))

(declare-fun m!1185121 () Bool)

(assert (=> b!1292591 m!1185121))

(declare-fun m!1185123 () Bool)

(assert (=> b!1292590 m!1185123))

(assert (=> b!1292590 m!1185123))

(declare-fun m!1185125 () Bool)

(assert (=> b!1292590 m!1185125))

(declare-fun m!1185127 () Bool)

(assert (=> start!109296 m!1185127))

(declare-fun m!1185129 () Bool)

(assert (=> start!109296 m!1185129))

(declare-fun m!1185131 () Bool)

(assert (=> start!109296 m!1185131))

(declare-fun m!1185133 () Bool)

(assert (=> b!1292593 m!1185133))

(assert (=> b!1292593 m!1185133))

(declare-fun m!1185135 () Bool)

(assert (=> b!1292593 m!1185135))

(declare-fun m!1185137 () Bool)

(assert (=> b!1292588 m!1185137))

(declare-fun m!1185139 () Bool)

(assert (=> b!1292595 m!1185139))

(declare-fun m!1185141 () Bool)

(assert (=> b!1292587 m!1185141))

(declare-fun m!1185143 () Bool)

(assert (=> b!1292587 m!1185143))

(check-sat (not mapNonEmpty!53144) (not b!1292587) (not b_next!28749) (not b!1292588) (not start!109296) (not b!1292590) (not b!1292593) tp_is_empty!34389 (not b!1292591) (not b!1292595) b_and!46849)
(check-sat b_and!46849 (not b_next!28749))

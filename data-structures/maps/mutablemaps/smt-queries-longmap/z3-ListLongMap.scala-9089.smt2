; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109356 () Bool)

(assert start!109356)

(declare-fun b_free!28809 () Bool)

(declare-fun b_next!28809 () Bool)

(assert (=> start!109356 (= b_free!28809 (not b_next!28809))))

(declare-fun tp!101547 () Bool)

(declare-fun b_and!46909 () Bool)

(assert (=> start!109356 (= tp!101547 b_and!46909)))

(declare-fun b!1293666 () Bool)

(declare-fun res!859767 () Bool)

(declare-fun e!738312 () Bool)

(assert (=> b!1293666 (=> (not res!859767) (not e!738312))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85885 0))(
  ( (array!85886 (arr!41439 (Array (_ BitVec 32) (_ BitVec 64))) (size!41990 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85885)

(assert (=> b!1293666 (= res!859767 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41990 _keys!1741))))))

(declare-fun mapNonEmpty!53234 () Bool)

(declare-fun mapRes!53234 () Bool)

(declare-fun tp!101546 () Bool)

(declare-fun e!738311 () Bool)

(assert (=> mapNonEmpty!53234 (= mapRes!53234 (and tp!101546 e!738311))))

(declare-fun mapKey!53234 () (_ BitVec 32))

(declare-datatypes ((V!51035 0))(
  ( (V!51036 (val!17299 Int)) )
))
(declare-datatypes ((ValueCell!16326 0))(
  ( (ValueCellFull!16326 (v!19900 V!51035)) (EmptyCell!16326) )
))
(declare-fun mapValue!53234 () ValueCell!16326)

(declare-datatypes ((array!85887 0))(
  ( (array!85888 (arr!41440 (Array (_ BitVec 32) ValueCell!16326)) (size!41991 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85887)

(declare-fun mapRest!53234 () (Array (_ BitVec 32) ValueCell!16326))

(assert (=> mapNonEmpty!53234 (= (arr!41440 _values!1445) (store mapRest!53234 mapKey!53234 mapValue!53234))))

(declare-fun b!1293667 () Bool)

(declare-fun res!859764 () Bool)

(assert (=> b!1293667 (=> (not res!859764) (not e!738312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293667 (= res!859764 (not (validKeyInArray!0 (select (arr!41439 _keys!1741) from!2144))))))

(declare-fun b!1293668 () Bool)

(declare-fun e!738315 () Bool)

(assert (=> b!1293668 (= e!738312 (not e!738315))))

(declare-fun res!859768 () Bool)

(assert (=> b!1293668 (=> res!859768 e!738315)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293668 (= res!859768 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22408 0))(
  ( (tuple2!22409 (_1!11214 (_ BitVec 64)) (_2!11214 V!51035)) )
))
(declare-datatypes ((List!29589 0))(
  ( (Nil!29586) (Cons!29585 (h!30794 tuple2!22408) (t!43160 List!29589)) )
))
(declare-datatypes ((ListLongMap!20077 0))(
  ( (ListLongMap!20078 (toList!10054 List!29589)) )
))
(declare-fun contains!8110 (ListLongMap!20077 (_ BitVec 64)) Bool)

(assert (=> b!1293668 (not (contains!8110 (ListLongMap!20078 Nil!29586) k0!1205))))

(declare-datatypes ((Unit!42783 0))(
  ( (Unit!42784) )
))
(declare-fun lt!579568 () Unit!42783)

(declare-fun emptyContainsNothing!148 ((_ BitVec 64)) Unit!42783)

(assert (=> b!1293668 (= lt!579568 (emptyContainsNothing!148 k0!1205))))

(declare-fun b!1293669 () Bool)

(declare-fun res!859766 () Bool)

(assert (=> b!1293669 (=> (not res!859766) (not e!738312))))

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1293669 (= res!859766 (and (= (size!41991 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41990 _keys!1741) (size!41991 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293670 () Bool)

(declare-fun tp_is_empty!34449 () Bool)

(assert (=> b!1293670 (= e!738311 tp_is_empty!34449)))

(declare-fun mapIsEmpty!53234 () Bool)

(assert (=> mapIsEmpty!53234 mapRes!53234))

(declare-fun b!1293672 () Bool)

(declare-fun res!859763 () Bool)

(assert (=> b!1293672 (=> (not res!859763) (not e!738312))))

(assert (=> b!1293672 (= res!859763 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41990 _keys!1741))))))

(declare-fun b!1293673 () Bool)

(declare-fun res!859762 () Bool)

(assert (=> b!1293673 (=> (not res!859762) (not e!738312))))

(declare-datatypes ((List!29590 0))(
  ( (Nil!29587) (Cons!29586 (h!30795 (_ BitVec 64)) (t!43161 List!29590)) )
))
(declare-fun arrayNoDuplicates!0 (array!85885 (_ BitVec 32) List!29590) Bool)

(assert (=> b!1293673 (= res!859762 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29587))))

(declare-fun b!1293674 () Bool)

(declare-fun res!859765 () Bool)

(assert (=> b!1293674 (=> (not res!859765) (not e!738312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85885 (_ BitVec 32)) Bool)

(assert (=> b!1293674 (= res!859765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293675 () Bool)

(declare-fun e!738316 () Bool)

(assert (=> b!1293675 (= e!738316 tp_is_empty!34449)))

(declare-fun res!859769 () Bool)

(assert (=> start!109356 (=> (not res!859769) (not e!738312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109356 (= res!859769 (validMask!0 mask!2175))))

(assert (=> start!109356 e!738312))

(assert (=> start!109356 tp_is_empty!34449))

(assert (=> start!109356 true))

(declare-fun e!738313 () Bool)

(declare-fun array_inv!31367 (array!85887) Bool)

(assert (=> start!109356 (and (array_inv!31367 _values!1445) e!738313)))

(declare-fun array_inv!31368 (array!85885) Bool)

(assert (=> start!109356 (array_inv!31368 _keys!1741)))

(assert (=> start!109356 tp!101547))

(declare-fun b!1293671 () Bool)

(assert (=> b!1293671 (= e!738315 true)))

(declare-fun lt!579566 () ListLongMap!20077)

(declare-fun zeroValue!1387 () V!51035)

(declare-fun +!4383 (ListLongMap!20077 tuple2!22408) ListLongMap!20077)

(assert (=> b!1293671 (not (contains!8110 (+!4383 lt!579566 (tuple2!22409 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!579567 () Unit!42783)

(declare-fun addStillNotContains!428 (ListLongMap!20077 (_ BitVec 64) V!51035 (_ BitVec 64)) Unit!42783)

(assert (=> b!1293671 (= lt!579567 (addStillNotContains!428 lt!579566 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!51035)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6096 (array!85885 array!85887 (_ BitVec 32) (_ BitVec 32) V!51035 V!51035 (_ BitVec 32) Int) ListLongMap!20077)

(assert (=> b!1293671 (= lt!579566 (getCurrentListMapNoExtraKeys!6096 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293676 () Bool)

(declare-fun res!859770 () Bool)

(assert (=> b!1293676 (=> (not res!859770) (not e!738312))))

(declare-fun getCurrentListMap!5040 (array!85885 array!85887 (_ BitVec 32) (_ BitVec 32) V!51035 V!51035 (_ BitVec 32) Int) ListLongMap!20077)

(assert (=> b!1293676 (= res!859770 (contains!8110 (getCurrentListMap!5040 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1293677 () Bool)

(assert (=> b!1293677 (= e!738313 (and e!738316 mapRes!53234))))

(declare-fun condMapEmpty!53234 () Bool)

(declare-fun mapDefault!53234 () ValueCell!16326)

(assert (=> b!1293677 (= condMapEmpty!53234 (= (arr!41440 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16326)) mapDefault!53234)))))

(assert (= (and start!109356 res!859769) b!1293669))

(assert (= (and b!1293669 res!859766) b!1293674))

(assert (= (and b!1293674 res!859765) b!1293673))

(assert (= (and b!1293673 res!859762) b!1293666))

(assert (= (and b!1293666 res!859767) b!1293676))

(assert (= (and b!1293676 res!859770) b!1293672))

(assert (= (and b!1293672 res!859763) b!1293667))

(assert (= (and b!1293667 res!859764) b!1293668))

(assert (= (and b!1293668 (not res!859768)) b!1293671))

(assert (= (and b!1293677 condMapEmpty!53234) mapIsEmpty!53234))

(assert (= (and b!1293677 (not condMapEmpty!53234)) mapNonEmpty!53234))

(get-info :version)

(assert (= (and mapNonEmpty!53234 ((_ is ValueCellFull!16326) mapValue!53234)) b!1293670))

(assert (= (and b!1293677 ((_ is ValueCellFull!16326) mapDefault!53234)) b!1293675))

(assert (= start!109356 b!1293677))

(declare-fun m!1186069 () Bool)

(assert (=> b!1293668 m!1186069))

(declare-fun m!1186071 () Bool)

(assert (=> b!1293668 m!1186071))

(declare-fun m!1186073 () Bool)

(assert (=> b!1293671 m!1186073))

(assert (=> b!1293671 m!1186073))

(declare-fun m!1186075 () Bool)

(assert (=> b!1293671 m!1186075))

(declare-fun m!1186077 () Bool)

(assert (=> b!1293671 m!1186077))

(declare-fun m!1186079 () Bool)

(assert (=> b!1293671 m!1186079))

(declare-fun m!1186081 () Bool)

(assert (=> start!109356 m!1186081))

(declare-fun m!1186083 () Bool)

(assert (=> start!109356 m!1186083))

(declare-fun m!1186085 () Bool)

(assert (=> start!109356 m!1186085))

(declare-fun m!1186087 () Bool)

(assert (=> mapNonEmpty!53234 m!1186087))

(declare-fun m!1186089 () Bool)

(assert (=> b!1293674 m!1186089))

(declare-fun m!1186091 () Bool)

(assert (=> b!1293673 m!1186091))

(declare-fun m!1186093 () Bool)

(assert (=> b!1293676 m!1186093))

(assert (=> b!1293676 m!1186093))

(declare-fun m!1186095 () Bool)

(assert (=> b!1293676 m!1186095))

(declare-fun m!1186097 () Bool)

(assert (=> b!1293667 m!1186097))

(assert (=> b!1293667 m!1186097))

(declare-fun m!1186099 () Bool)

(assert (=> b!1293667 m!1186099))

(check-sat (not start!109356) b_and!46909 (not b_next!28809) (not mapNonEmpty!53234) tp_is_empty!34449 (not b!1293667) (not b!1293676) (not b!1293668) (not b!1293673) (not b!1293674) (not b!1293671))
(check-sat b_and!46909 (not b_next!28809))

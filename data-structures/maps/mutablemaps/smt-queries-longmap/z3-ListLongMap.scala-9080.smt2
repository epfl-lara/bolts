; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109302 () Bool)

(assert start!109302)

(declare-fun b_free!28755 () Bool)

(declare-fun b_next!28755 () Bool)

(assert (=> start!109302 (= b_free!28755 (not b_next!28755))))

(declare-fun tp!101385 () Bool)

(declare-fun b_and!46855 () Bool)

(assert (=> start!109302 (= tp!101385 b_and!46855)))

(declare-fun b!1292694 () Bool)

(declare-fun e!737825 () Bool)

(declare-fun tp_is_empty!34395 () Bool)

(assert (=> b!1292694 (= e!737825 tp_is_empty!34395)))

(declare-fun mapIsEmpty!53153 () Bool)

(declare-fun mapRes!53153 () Bool)

(assert (=> mapIsEmpty!53153 mapRes!53153))

(declare-fun b!1292695 () Bool)

(declare-fun res!859041 () Bool)

(declare-fun e!737830 () Bool)

(assert (=> b!1292695 (=> (not res!859041) (not e!737830))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85781 0))(
  ( (array!85782 (arr!41387 (Array (_ BitVec 32) (_ BitVec 64))) (size!41938 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85781)

(assert (=> b!1292695 (= res!859041 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41938 _keys!1741))))))

(declare-fun b!1292696 () Bool)

(declare-fun e!737826 () Bool)

(assert (=> b!1292696 (= e!737830 (not e!737826))))

(declare-fun res!859035 () Bool)

(assert (=> b!1292696 (=> res!859035 e!737826)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292696 (= res!859035 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50963 0))(
  ( (V!50964 (val!17272 Int)) )
))
(declare-datatypes ((tuple2!22360 0))(
  ( (tuple2!22361 (_1!11190 (_ BitVec 64)) (_2!11190 V!50963)) )
))
(declare-datatypes ((List!29545 0))(
  ( (Nil!29542) (Cons!29541 (h!30750 tuple2!22360) (t!43116 List!29545)) )
))
(declare-datatypes ((ListLongMap!20029 0))(
  ( (ListLongMap!20030 (toList!10030 List!29545)) )
))
(declare-fun contains!8086 (ListLongMap!20029 (_ BitVec 64)) Bool)

(assert (=> b!1292696 (not (contains!8086 (ListLongMap!20030 Nil!29542) k0!1205))))

(declare-datatypes ((Unit!42741 0))(
  ( (Unit!42742) )
))
(declare-fun lt!579325 () Unit!42741)

(declare-fun emptyContainsNothing!127 ((_ BitVec 64)) Unit!42741)

(assert (=> b!1292696 (= lt!579325 (emptyContainsNothing!127 k0!1205))))

(declare-fun b!1292697 () Bool)

(declare-fun res!859039 () Bool)

(assert (=> b!1292697 (=> (not res!859039) (not e!737830))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85781 (_ BitVec 32)) Bool)

(assert (=> b!1292697 (= res!859039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292699 () Bool)

(declare-fun res!859036 () Bool)

(assert (=> b!1292699 (=> (not res!859036) (not e!737830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292699 (= res!859036 (not (validKeyInArray!0 (select (arr!41387 _keys!1741) from!2144))))))

(declare-fun b!1292700 () Bool)

(declare-fun e!737828 () Bool)

(assert (=> b!1292700 (= e!737828 tp_is_empty!34395)))

(declare-fun mapNonEmpty!53153 () Bool)

(declare-fun tp!101384 () Bool)

(assert (=> mapNonEmpty!53153 (= mapRes!53153 (and tp!101384 e!737825))))

(declare-datatypes ((ValueCell!16299 0))(
  ( (ValueCellFull!16299 (v!19873 V!50963)) (EmptyCell!16299) )
))
(declare-fun mapRest!53153 () (Array (_ BitVec 32) ValueCell!16299))

(declare-datatypes ((array!85783 0))(
  ( (array!85784 (arr!41388 (Array (_ BitVec 32) ValueCell!16299)) (size!41939 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85783)

(declare-fun mapKey!53153 () (_ BitVec 32))

(declare-fun mapValue!53153 () ValueCell!16299)

(assert (=> mapNonEmpty!53153 (= (arr!41388 _values!1445) (store mapRest!53153 mapKey!53153 mapValue!53153))))

(declare-fun b!1292701 () Bool)

(assert (=> b!1292701 (= e!737826 true)))

(declare-fun lt!579323 () ListLongMap!20029)

(declare-fun zeroValue!1387 () V!50963)

(declare-fun +!4365 (ListLongMap!20029 tuple2!22360) ListLongMap!20029)

(assert (=> b!1292701 (not (contains!8086 (+!4365 lt!579323 (tuple2!22361 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!579324 () Unit!42741)

(declare-fun addStillNotContains!410 (ListLongMap!20029 (_ BitVec 64) V!50963 (_ BitVec 64)) Unit!42741)

(assert (=> b!1292701 (= lt!579324 (addStillNotContains!410 lt!579323 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50963)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6078 (array!85781 array!85783 (_ BitVec 32) (_ BitVec 32) V!50963 V!50963 (_ BitVec 32) Int) ListLongMap!20029)

(assert (=> b!1292701 (= lt!579323 (getCurrentListMapNoExtraKeys!6078 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1292702 () Bool)

(declare-fun res!859033 () Bool)

(assert (=> b!1292702 (=> (not res!859033) (not e!737830))))

(declare-fun getCurrentListMap!5019 (array!85781 array!85783 (_ BitVec 32) (_ BitVec 32) V!50963 V!50963 (_ BitVec 32) Int) ListLongMap!20029)

(assert (=> b!1292702 (= res!859033 (contains!8086 (getCurrentListMap!5019 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292703 () Bool)

(declare-fun res!859034 () Bool)

(assert (=> b!1292703 (=> (not res!859034) (not e!737830))))

(assert (=> b!1292703 (= res!859034 (and (= (size!41939 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41938 _keys!1741) (size!41939 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292704 () Bool)

(declare-fun res!859038 () Bool)

(assert (=> b!1292704 (=> (not res!859038) (not e!737830))))

(assert (=> b!1292704 (= res!859038 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41938 _keys!1741))))))

(declare-fun b!1292705 () Bool)

(declare-fun res!859040 () Bool)

(assert (=> b!1292705 (=> (not res!859040) (not e!737830))))

(declare-datatypes ((List!29546 0))(
  ( (Nil!29543) (Cons!29542 (h!30751 (_ BitVec 64)) (t!43117 List!29546)) )
))
(declare-fun arrayNoDuplicates!0 (array!85781 (_ BitVec 32) List!29546) Bool)

(assert (=> b!1292705 (= res!859040 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29543))))

(declare-fun b!1292698 () Bool)

(declare-fun e!737829 () Bool)

(assert (=> b!1292698 (= e!737829 (and e!737828 mapRes!53153))))

(declare-fun condMapEmpty!53153 () Bool)

(declare-fun mapDefault!53153 () ValueCell!16299)

(assert (=> b!1292698 (= condMapEmpty!53153 (= (arr!41388 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16299)) mapDefault!53153)))))

(declare-fun res!859037 () Bool)

(assert (=> start!109302 (=> (not res!859037) (not e!737830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109302 (= res!859037 (validMask!0 mask!2175))))

(assert (=> start!109302 e!737830))

(assert (=> start!109302 tp_is_empty!34395))

(assert (=> start!109302 true))

(declare-fun array_inv!31331 (array!85783) Bool)

(assert (=> start!109302 (and (array_inv!31331 _values!1445) e!737829)))

(declare-fun array_inv!31332 (array!85781) Bool)

(assert (=> start!109302 (array_inv!31332 _keys!1741)))

(assert (=> start!109302 tp!101385))

(assert (= (and start!109302 res!859037) b!1292703))

(assert (= (and b!1292703 res!859034) b!1292697))

(assert (= (and b!1292697 res!859039) b!1292705))

(assert (= (and b!1292705 res!859040) b!1292695))

(assert (= (and b!1292695 res!859041) b!1292702))

(assert (= (and b!1292702 res!859033) b!1292704))

(assert (= (and b!1292704 res!859038) b!1292699))

(assert (= (and b!1292699 res!859036) b!1292696))

(assert (= (and b!1292696 (not res!859035)) b!1292701))

(assert (= (and b!1292698 condMapEmpty!53153) mapIsEmpty!53153))

(assert (= (and b!1292698 (not condMapEmpty!53153)) mapNonEmpty!53153))

(get-info :version)

(assert (= (and mapNonEmpty!53153 ((_ is ValueCellFull!16299) mapValue!53153)) b!1292694))

(assert (= (and b!1292698 ((_ is ValueCellFull!16299) mapDefault!53153)) b!1292700))

(assert (= start!109302 b!1292698))

(declare-fun m!1185205 () Bool)

(assert (=> b!1292696 m!1185205))

(declare-fun m!1185207 () Bool)

(assert (=> b!1292696 m!1185207))

(declare-fun m!1185209 () Bool)

(assert (=> b!1292705 m!1185209))

(declare-fun m!1185211 () Bool)

(assert (=> b!1292697 m!1185211))

(declare-fun m!1185213 () Bool)

(assert (=> start!109302 m!1185213))

(declare-fun m!1185215 () Bool)

(assert (=> start!109302 m!1185215))

(declare-fun m!1185217 () Bool)

(assert (=> start!109302 m!1185217))

(declare-fun m!1185219 () Bool)

(assert (=> mapNonEmpty!53153 m!1185219))

(declare-fun m!1185221 () Bool)

(assert (=> b!1292701 m!1185221))

(assert (=> b!1292701 m!1185221))

(declare-fun m!1185223 () Bool)

(assert (=> b!1292701 m!1185223))

(declare-fun m!1185225 () Bool)

(assert (=> b!1292701 m!1185225))

(declare-fun m!1185227 () Bool)

(assert (=> b!1292701 m!1185227))

(declare-fun m!1185229 () Bool)

(assert (=> b!1292699 m!1185229))

(assert (=> b!1292699 m!1185229))

(declare-fun m!1185231 () Bool)

(assert (=> b!1292699 m!1185231))

(declare-fun m!1185233 () Bool)

(assert (=> b!1292702 m!1185233))

(assert (=> b!1292702 m!1185233))

(declare-fun m!1185235 () Bool)

(assert (=> b!1292702 m!1185235))

(check-sat (not b!1292702) tp_is_empty!34395 (not mapNonEmpty!53153) (not b!1292701) (not b!1292697) (not start!109302) (not b!1292696) b_and!46855 (not b_next!28755) (not b!1292705) (not b!1292699))
(check-sat b_and!46855 (not b_next!28755))

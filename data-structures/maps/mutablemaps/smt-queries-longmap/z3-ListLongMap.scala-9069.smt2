; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109236 () Bool)

(assert start!109236)

(declare-fun b_free!28689 () Bool)

(declare-fun b_next!28689 () Bool)

(assert (=> start!109236 (= b_free!28689 (not b_next!28689))))

(declare-fun tp!101186 () Bool)

(declare-fun b_and!46789 () Bool)

(assert (=> start!109236 (= tp!101186 b_and!46789)))

(declare-fun b!1291587 () Bool)

(declare-fun e!737313 () Bool)

(declare-fun tp_is_empty!34329 () Bool)

(assert (=> b!1291587 (= e!737313 tp_is_empty!34329)))

(declare-fun mapNonEmpty!53054 () Bool)

(declare-fun mapRes!53054 () Bool)

(declare-fun tp!101187 () Bool)

(declare-fun e!737316 () Bool)

(assert (=> mapNonEmpty!53054 (= mapRes!53054 (and tp!101187 e!737316))))

(declare-fun mapKey!53054 () (_ BitVec 32))

(declare-datatypes ((V!50875 0))(
  ( (V!50876 (val!17239 Int)) )
))
(declare-datatypes ((ValueCell!16266 0))(
  ( (ValueCellFull!16266 (v!19840 V!50875)) (EmptyCell!16266) )
))
(declare-datatypes ((array!85653 0))(
  ( (array!85654 (arr!41323 (Array (_ BitVec 32) ValueCell!16266)) (size!41874 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85653)

(declare-fun mapRest!53054 () (Array (_ BitVec 32) ValueCell!16266))

(declare-fun mapValue!53054 () ValueCell!16266)

(assert (=> mapNonEmpty!53054 (= (arr!41323 _values!1445) (store mapRest!53054 mapKey!53054 mapValue!53054))))

(declare-fun b!1291588 () Bool)

(declare-fun e!737317 () Bool)

(assert (=> b!1291588 (= e!737317 true)))

(assert (=> b!1291588 false))

(declare-fun minValue!1387 () V!50875)

(declare-datatypes ((Unit!42691 0))(
  ( (Unit!42692) )
))
(declare-fun lt!579189 () Unit!42691)

(declare-datatypes ((tuple2!22302 0))(
  ( (tuple2!22303 (_1!11161 (_ BitVec 64)) (_2!11161 V!50875)) )
))
(declare-datatypes ((List!29493 0))(
  ( (Nil!29490) (Cons!29489 (h!30698 tuple2!22302) (t!43064 List!29493)) )
))
(declare-datatypes ((ListLongMap!19971 0))(
  ( (ListLongMap!19972 (toList!10001 List!29493)) )
))
(declare-fun lt!579190 () ListLongMap!19971)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!58 ((_ BitVec 64) (_ BitVec 64) V!50875 ListLongMap!19971) Unit!42691)

(assert (=> b!1291588 (= lt!579189 (lemmaInListMapAfterAddingDiffThenInBefore!58 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!579190))))

(declare-fun lt!579185 () ListLongMap!19971)

(declare-fun contains!8057 (ListLongMap!19971 (_ BitVec 64)) Bool)

(declare-fun +!4363 (ListLongMap!19971 tuple2!22302) ListLongMap!19971)

(assert (=> b!1291588 (not (contains!8057 (+!4363 lt!579185 (tuple2!22303 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579186 () Unit!42691)

(declare-fun addStillNotContains!408 (ListLongMap!19971 (_ BitVec 64) V!50875 (_ BitVec 64)) Unit!42691)

(assert (=> b!1291588 (= lt!579186 (addStillNotContains!408 lt!579185 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1291588 (not (contains!8057 lt!579190 k0!1205))))

(declare-fun zeroValue!1387 () V!50875)

(assert (=> b!1291588 (= lt!579190 (+!4363 lt!579185 (tuple2!22303 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!579187 () Unit!42691)

(assert (=> b!1291588 (= lt!579187 (addStillNotContains!408 lt!579185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85655 0))(
  ( (array!85656 (arr!41324 (Array (_ BitVec 32) (_ BitVec 64))) (size!41875 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85655)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6075 (array!85655 array!85653 (_ BitVec 32) (_ BitVec 32) V!50875 V!50875 (_ BitVec 32) Int) ListLongMap!19971)

(assert (=> b!1291588 (= lt!579185 (getCurrentListMapNoExtraKeys!6075 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291589 () Bool)

(assert (=> b!1291589 (= e!737316 tp_is_empty!34329)))

(declare-fun b!1291590 () Bool)

(declare-fun res!858226 () Bool)

(declare-fun e!737314 () Bool)

(assert (=> b!1291590 (=> (not res!858226) (not e!737314))))

(assert (=> b!1291590 (= res!858226 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41875 _keys!1741))))))

(declare-fun b!1291591 () Bool)

(assert (=> b!1291591 (= e!737314 (not e!737317))))

(declare-fun res!858229 () Bool)

(assert (=> b!1291591 (=> res!858229 e!737317)))

(assert (=> b!1291591 (= res!858229 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1291591 (not (contains!8057 (ListLongMap!19972 Nil!29490) k0!1205))))

(declare-fun lt!579188 () Unit!42691)

(declare-fun emptyContainsNothing!102 ((_ BitVec 64)) Unit!42691)

(assert (=> b!1291591 (= lt!579188 (emptyContainsNothing!102 k0!1205))))

(declare-fun b!1291592 () Bool)

(declare-fun res!858228 () Bool)

(assert (=> b!1291592 (=> (not res!858228) (not e!737314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291592 (= res!858228 (not (validKeyInArray!0 (select (arr!41324 _keys!1741) from!2144))))))

(declare-fun b!1291593 () Bool)

(declare-fun res!858227 () Bool)

(assert (=> b!1291593 (=> (not res!858227) (not e!737314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85655 (_ BitVec 32)) Bool)

(assert (=> b!1291593 (= res!858227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291594 () Bool)

(declare-fun res!858225 () Bool)

(assert (=> b!1291594 (=> (not res!858225) (not e!737314))))

(declare-fun getCurrentListMap!4995 (array!85655 array!85653 (_ BitVec 32) (_ BitVec 32) V!50875 V!50875 (_ BitVec 32) Int) ListLongMap!19971)

(assert (=> b!1291594 (= res!858225 (contains!8057 (getCurrentListMap!4995 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1291595 () Bool)

(declare-fun res!858230 () Bool)

(assert (=> b!1291595 (=> (not res!858230) (not e!737314))))

(assert (=> b!1291595 (= res!858230 (and (= (size!41874 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41875 _keys!1741) (size!41874 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!858224 () Bool)

(assert (=> start!109236 (=> (not res!858224) (not e!737314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109236 (= res!858224 (validMask!0 mask!2175))))

(assert (=> start!109236 e!737314))

(assert (=> start!109236 tp_is_empty!34329))

(assert (=> start!109236 true))

(declare-fun e!737315 () Bool)

(declare-fun array_inv!31285 (array!85653) Bool)

(assert (=> start!109236 (and (array_inv!31285 _values!1445) e!737315)))

(declare-fun array_inv!31286 (array!85655) Bool)

(assert (=> start!109236 (array_inv!31286 _keys!1741)))

(assert (=> start!109236 tp!101186))

(declare-fun mapIsEmpty!53054 () Bool)

(assert (=> mapIsEmpty!53054 mapRes!53054))

(declare-fun b!1291596 () Bool)

(assert (=> b!1291596 (= e!737315 (and e!737313 mapRes!53054))))

(declare-fun condMapEmpty!53054 () Bool)

(declare-fun mapDefault!53054 () ValueCell!16266)

(assert (=> b!1291596 (= condMapEmpty!53054 (= (arr!41323 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16266)) mapDefault!53054)))))

(declare-fun b!1291597 () Bool)

(declare-fun res!858223 () Bool)

(assert (=> b!1291597 (=> (not res!858223) (not e!737314))))

(declare-datatypes ((List!29494 0))(
  ( (Nil!29491) (Cons!29490 (h!30699 (_ BitVec 64)) (t!43065 List!29494)) )
))
(declare-fun arrayNoDuplicates!0 (array!85655 (_ BitVec 32) List!29494) Bool)

(assert (=> b!1291597 (= res!858223 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29491))))

(declare-fun b!1291598 () Bool)

(declare-fun res!858231 () Bool)

(assert (=> b!1291598 (=> (not res!858231) (not e!737314))))

(assert (=> b!1291598 (= res!858231 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41875 _keys!1741))))))

(assert (= (and start!109236 res!858224) b!1291595))

(assert (= (and b!1291595 res!858230) b!1291593))

(assert (= (and b!1291593 res!858227) b!1291597))

(assert (= (and b!1291597 res!858223) b!1291590))

(assert (= (and b!1291590 res!858226) b!1291594))

(assert (= (and b!1291594 res!858225) b!1291598))

(assert (= (and b!1291598 res!858231) b!1291592))

(assert (= (and b!1291592 res!858228) b!1291591))

(assert (= (and b!1291591 (not res!858229)) b!1291588))

(assert (= (and b!1291596 condMapEmpty!53054) mapIsEmpty!53054))

(assert (= (and b!1291596 (not condMapEmpty!53054)) mapNonEmpty!53054))

(get-info :version)

(assert (= (and mapNonEmpty!53054 ((_ is ValueCellFull!16266) mapValue!53054)) b!1291589))

(assert (= (and b!1291596 ((_ is ValueCellFull!16266) mapDefault!53054)) b!1291587))

(assert (= start!109236 b!1291596))

(declare-fun m!1184361 () Bool)

(assert (=> mapNonEmpty!53054 m!1184361))

(declare-fun m!1184363 () Bool)

(assert (=> b!1291593 m!1184363))

(declare-fun m!1184365 () Bool)

(assert (=> b!1291597 m!1184365))

(declare-fun m!1184367 () Bool)

(assert (=> b!1291594 m!1184367))

(assert (=> b!1291594 m!1184367))

(declare-fun m!1184369 () Bool)

(assert (=> b!1291594 m!1184369))

(declare-fun m!1184371 () Bool)

(assert (=> b!1291591 m!1184371))

(declare-fun m!1184373 () Bool)

(assert (=> b!1291591 m!1184373))

(declare-fun m!1184375 () Bool)

(assert (=> b!1291588 m!1184375))

(declare-fun m!1184377 () Bool)

(assert (=> b!1291588 m!1184377))

(declare-fun m!1184379 () Bool)

(assert (=> b!1291588 m!1184379))

(declare-fun m!1184381 () Bool)

(assert (=> b!1291588 m!1184381))

(declare-fun m!1184383 () Bool)

(assert (=> b!1291588 m!1184383))

(declare-fun m!1184385 () Bool)

(assert (=> b!1291588 m!1184385))

(assert (=> b!1291588 m!1184375))

(declare-fun m!1184387 () Bool)

(assert (=> b!1291588 m!1184387))

(declare-fun m!1184389 () Bool)

(assert (=> b!1291588 m!1184389))

(declare-fun m!1184391 () Bool)

(assert (=> start!109236 m!1184391))

(declare-fun m!1184393 () Bool)

(assert (=> start!109236 m!1184393))

(declare-fun m!1184395 () Bool)

(assert (=> start!109236 m!1184395))

(declare-fun m!1184397 () Bool)

(assert (=> b!1291592 m!1184397))

(assert (=> b!1291592 m!1184397))

(declare-fun m!1184399 () Bool)

(assert (=> b!1291592 m!1184399))

(check-sat (not b!1291591) (not b!1291594) tp_is_empty!34329 b_and!46789 (not b!1291588) (not b!1291597) (not b!1291592) (not b!1291593) (not start!109236) (not b_next!28689) (not mapNonEmpty!53054))
(check-sat b_and!46789 (not b_next!28689))

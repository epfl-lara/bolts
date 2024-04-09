; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109450 () Bool)

(assert start!109450)

(declare-fun b_free!28903 () Bool)

(declare-fun b_next!28903 () Bool)

(assert (=> start!109450 (= b_free!28903 (not b_next!28903))))

(declare-fun tp!101829 () Bool)

(declare-fun b_and!47003 () Bool)

(assert (=> start!109450 (= tp!101829 b_and!47003)))

(declare-fun mapIsEmpty!53375 () Bool)

(declare-fun mapRes!53375 () Bool)

(assert (=> mapIsEmpty!53375 mapRes!53375))

(declare-fun b!1295277 () Bool)

(declare-fun res!860954 () Bool)

(declare-fun e!739080 () Bool)

(assert (=> b!1295277 (=> (not res!860954) (not e!739080))))

(declare-datatypes ((array!86069 0))(
  ( (array!86070 (arr!41531 (Array (_ BitVec 32) (_ BitVec 64))) (size!42082 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86069)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295277 (= res!860954 (not (validKeyInArray!0 (select (arr!41531 _keys!1741) from!2144))))))

(declare-fun b!1295278 () Bool)

(declare-fun res!860951 () Bool)

(assert (=> b!1295278 (=> (not res!860951) (not e!739080))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86069 (_ BitVec 32)) Bool)

(assert (=> b!1295278 (= res!860951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295279 () Bool)

(declare-fun e!739081 () Bool)

(declare-fun tp_is_empty!34543 () Bool)

(assert (=> b!1295279 (= e!739081 tp_is_empty!34543)))

(declare-fun mapNonEmpty!53375 () Bool)

(declare-fun tp!101828 () Bool)

(declare-fun e!739077 () Bool)

(assert (=> mapNonEmpty!53375 (= mapRes!53375 (and tp!101828 e!739077))))

(declare-datatypes ((V!51161 0))(
  ( (V!51162 (val!17346 Int)) )
))
(declare-datatypes ((ValueCell!16373 0))(
  ( (ValueCellFull!16373 (v!19947 V!51161)) (EmptyCell!16373) )
))
(declare-fun mapValue!53375 () ValueCell!16373)

(declare-fun mapKey!53375 () (_ BitVec 32))

(declare-datatypes ((array!86071 0))(
  ( (array!86072 (arr!41532 (Array (_ BitVec 32) ValueCell!16373)) (size!42083 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86071)

(declare-fun mapRest!53375 () (Array (_ BitVec 32) ValueCell!16373))

(assert (=> mapNonEmpty!53375 (= (arr!41532 _values!1445) (store mapRest!53375 mapKey!53375 mapValue!53375))))

(declare-fun b!1295280 () Bool)

(assert (=> b!1295280 (= e!739077 tp_is_empty!34543)))

(declare-fun res!860955 () Bool)

(assert (=> start!109450 (=> (not res!860955) (not e!739080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109450 (= res!860955 (validMask!0 mask!2175))))

(assert (=> start!109450 e!739080))

(assert (=> start!109450 tp_is_empty!34543))

(assert (=> start!109450 true))

(declare-fun e!739076 () Bool)

(declare-fun array_inv!31429 (array!86071) Bool)

(assert (=> start!109450 (and (array_inv!31429 _values!1445) e!739076)))

(declare-fun array_inv!31430 (array!86069) Bool)

(assert (=> start!109450 (array_inv!31430 _keys!1741)))

(assert (=> start!109450 tp!101829))

(declare-fun b!1295281 () Bool)

(declare-fun res!860953 () Bool)

(assert (=> b!1295281 (=> (not res!860953) (not e!739080))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295281 (= res!860953 (and (= (size!42083 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42082 _keys!1741) (size!42083 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295282 () Bool)

(declare-fun e!739079 () Bool)

(assert (=> b!1295282 (= e!739080 (not e!739079))))

(declare-fun res!860952 () Bool)

(assert (=> b!1295282 (=> res!860952 e!739079)))

(assert (=> b!1295282 (= res!860952 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22486 0))(
  ( (tuple2!22487 (_1!11253 (_ BitVec 64)) (_2!11253 V!51161)) )
))
(declare-datatypes ((List!29654 0))(
  ( (Nil!29651) (Cons!29650 (h!30859 tuple2!22486) (t!43225 List!29654)) )
))
(declare-datatypes ((ListLongMap!20155 0))(
  ( (ListLongMap!20156 (toList!10093 List!29654)) )
))
(declare-fun contains!8149 (ListLongMap!20155 (_ BitVec 64)) Bool)

(assert (=> b!1295282 (not (contains!8149 (ListLongMap!20156 Nil!29651) k!1205))))

(declare-datatypes ((Unit!42853 0))(
  ( (Unit!42854) )
))
(declare-fun lt!579818 () Unit!42853)

(declare-fun emptyContainsNothing!182 ((_ BitVec 64)) Unit!42853)

(assert (=> b!1295282 (= lt!579818 (emptyContainsNothing!182 k!1205))))

(declare-fun b!1295283 () Bool)

(declare-fun res!860958 () Bool)

(assert (=> b!1295283 (=> (not res!860958) (not e!739080))))

(assert (=> b!1295283 (= res!860958 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42082 _keys!1741))))))

(declare-fun b!1295284 () Bool)

(declare-fun res!860950 () Bool)

(assert (=> b!1295284 (=> (not res!860950) (not e!739080))))

(assert (=> b!1295284 (= res!860950 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42082 _keys!1741))))))

(declare-fun b!1295285 () Bool)

(declare-fun res!860956 () Bool)

(assert (=> b!1295285 (=> (not res!860956) (not e!739080))))

(declare-fun minValue!1387 () V!51161)

(declare-fun zeroValue!1387 () V!51161)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5073 (array!86069 array!86071 (_ BitVec 32) (_ BitVec 32) V!51161 V!51161 (_ BitVec 32) Int) ListLongMap!20155)

(assert (=> b!1295285 (= res!860956 (contains!8149 (getCurrentListMap!5073 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1295286 () Bool)

(assert (=> b!1295286 (= e!739079 true)))

(declare-fun lt!579819 () ListLongMap!20155)

(declare-fun +!4396 (ListLongMap!20155 tuple2!22486) ListLongMap!20155)

(assert (=> b!1295286 (not (contains!8149 (+!4396 lt!579819 (tuple2!22487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579820 () Unit!42853)

(declare-fun addStillNotContains!441 (ListLongMap!20155 (_ BitVec 64) V!51161 (_ BitVec 64)) Unit!42853)

(assert (=> b!1295286 (= lt!579820 (addStillNotContains!441 lt!579819 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6112 (array!86069 array!86071 (_ BitVec 32) (_ BitVec 32) V!51161 V!51161 (_ BitVec 32) Int) ListLongMap!20155)

(assert (=> b!1295286 (= lt!579819 (getCurrentListMapNoExtraKeys!6112 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295287 () Bool)

(assert (=> b!1295287 (= e!739076 (and e!739081 mapRes!53375))))

(declare-fun condMapEmpty!53375 () Bool)

(declare-fun mapDefault!53375 () ValueCell!16373)


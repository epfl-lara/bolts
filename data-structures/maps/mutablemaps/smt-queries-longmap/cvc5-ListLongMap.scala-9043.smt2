; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109078 () Bool)

(assert start!109078)

(declare-fun b_free!28531 () Bool)

(declare-fun b_next!28531 () Bool)

(assert (=> start!109078 (= b_free!28531 (not b_next!28531))))

(declare-fun tp!100712 () Bool)

(declare-fun b_and!46631 () Bool)

(assert (=> start!109078 (= tp!100712 b_and!46631)))

(declare-fun b!1288743 () Bool)

(declare-fun res!856098 () Bool)

(declare-fun e!735894 () Bool)

(assert (=> b!1288743 (=> (not res!856098) (not e!735894))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85341 0))(
  ( (array!85342 (arr!41167 (Array (_ BitVec 32) (_ BitVec 64))) (size!41718 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85341)

(assert (=> b!1288743 (= res!856098 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41718 _keys!1741))))))

(declare-fun mapIsEmpty!52817 () Bool)

(declare-fun mapRes!52817 () Bool)

(assert (=> mapIsEmpty!52817 mapRes!52817))

(declare-fun b!1288744 () Bool)

(declare-fun e!735893 () Bool)

(assert (=> b!1288744 (= e!735893 true)))

(declare-datatypes ((V!50665 0))(
  ( (V!50666 (val!17160 Int)) )
))
(declare-datatypes ((tuple2!22166 0))(
  ( (tuple2!22167 (_1!11093 (_ BitVec 64)) (_2!11093 V!50665)) )
))
(declare-datatypes ((List!29364 0))(
  ( (Nil!29361) (Cons!29360 (h!30569 tuple2!22166) (t!42935 List!29364)) )
))
(declare-datatypes ((ListLongMap!19835 0))(
  ( (ListLongMap!19836 (toList!9933 List!29364)) )
))
(declare-fun lt!578029 () ListLongMap!19835)

(declare-fun zeroValue!1387 () V!50665)

(declare-fun contains!7989 (ListLongMap!19835 (_ BitVec 64)) Bool)

(declare-fun +!4308 (ListLongMap!19835 tuple2!22166) ListLongMap!19835)

(assert (=> b!1288744 (not (contains!7989 (+!4308 lt!578029 (tuple2!22167 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42561 0))(
  ( (Unit!42562) )
))
(declare-fun lt!578027 () Unit!42561)

(declare-fun addStillNotContains!353 (ListLongMap!19835 (_ BitVec 64) V!50665 (_ BitVec 64)) Unit!42561)

(assert (=> b!1288744 (= lt!578027 (addStillNotContains!353 lt!578029 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50665)

(declare-datatypes ((ValueCell!16187 0))(
  ( (ValueCellFull!16187 (v!19761 V!50665)) (EmptyCell!16187) )
))
(declare-datatypes ((array!85343 0))(
  ( (array!85344 (arr!41168 (Array (_ BitVec 32) ValueCell!16187)) (size!41719 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85343)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6020 (array!85341 array!85343 (_ BitVec 32) (_ BitVec 32) V!50665 V!50665 (_ BitVec 32) Int) ListLongMap!19835)

(assert (=> b!1288744 (= lt!578029 (getCurrentListMapNoExtraKeys!6020 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!52817 () Bool)

(declare-fun tp!100713 () Bool)

(declare-fun e!735895 () Bool)

(assert (=> mapNonEmpty!52817 (= mapRes!52817 (and tp!100713 e!735895))))

(declare-fun mapValue!52817 () ValueCell!16187)

(declare-fun mapRest!52817 () (Array (_ BitVec 32) ValueCell!16187))

(declare-fun mapKey!52817 () (_ BitVec 32))

(assert (=> mapNonEmpty!52817 (= (arr!41168 _values!1445) (store mapRest!52817 mapKey!52817 mapValue!52817))))

(declare-fun b!1288745 () Bool)

(declare-fun tp_is_empty!34171 () Bool)

(assert (=> b!1288745 (= e!735895 tp_is_empty!34171)))

(declare-fun b!1288746 () Bool)

(declare-fun res!856090 () Bool)

(assert (=> b!1288746 (=> (not res!856090) (not e!735894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85341 (_ BitVec 32)) Bool)

(assert (=> b!1288746 (= res!856090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288747 () Bool)

(declare-fun res!856095 () Bool)

(assert (=> b!1288747 (=> (not res!856095) (not e!735894))))

(declare-datatypes ((List!29365 0))(
  ( (Nil!29362) (Cons!29361 (h!30570 (_ BitVec 64)) (t!42936 List!29365)) )
))
(declare-fun arrayNoDuplicates!0 (array!85341 (_ BitVec 32) List!29365) Bool)

(assert (=> b!1288747 (= res!856095 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29362))))

(declare-fun b!1288748 () Bool)

(declare-fun e!735892 () Bool)

(assert (=> b!1288748 (= e!735892 tp_is_empty!34171)))

(declare-fun b!1288749 () Bool)

(assert (=> b!1288749 (= e!735894 (not e!735893))))

(declare-fun res!856096 () Bool)

(assert (=> b!1288749 (=> res!856096 e!735893)))

(assert (=> b!1288749 (= res!856096 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288749 (not (contains!7989 (ListLongMap!19836 Nil!29361) k!1205))))

(declare-fun lt!578028 () Unit!42561)

(declare-fun emptyContainsNothing!46 ((_ BitVec 64)) Unit!42561)

(assert (=> b!1288749 (= lt!578028 (emptyContainsNothing!46 k!1205))))

(declare-fun b!1288750 () Bool)

(declare-fun res!856093 () Bool)

(assert (=> b!1288750 (=> (not res!856093) (not e!735894))))

(declare-fun getCurrentListMap!4936 (array!85341 array!85343 (_ BitVec 32) (_ BitVec 32) V!50665 V!50665 (_ BitVec 32) Int) ListLongMap!19835)

(assert (=> b!1288750 (= res!856093 (contains!7989 (getCurrentListMap!4936 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288751 () Bool)

(declare-fun res!856094 () Bool)

(assert (=> b!1288751 (=> (not res!856094) (not e!735894))))

(assert (=> b!1288751 (= res!856094 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41718 _keys!1741))))))

(declare-fun b!1288752 () Bool)

(declare-fun res!856097 () Bool)

(assert (=> b!1288752 (=> (not res!856097) (not e!735894))))

(assert (=> b!1288752 (= res!856097 (and (= (size!41719 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41718 _keys!1741) (size!41719 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288753 () Bool)

(declare-fun e!735890 () Bool)

(assert (=> b!1288753 (= e!735890 (and e!735892 mapRes!52817))))

(declare-fun condMapEmpty!52817 () Bool)

(declare-fun mapDefault!52817 () ValueCell!16187)


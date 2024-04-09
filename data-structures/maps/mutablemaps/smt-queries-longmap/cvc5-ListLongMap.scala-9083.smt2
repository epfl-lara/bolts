; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109318 () Bool)

(assert start!109318)

(declare-fun b_free!28771 () Bool)

(declare-fun b_next!28771 () Bool)

(assert (=> start!109318 (= b_free!28771 (not b_next!28771))))

(declare-fun tp!101432 () Bool)

(declare-fun b_and!46871 () Bool)

(assert (=> start!109318 (= tp!101432 b_and!46871)))

(declare-fun b!1292982 () Bool)

(declare-fun res!859249 () Bool)

(declare-fun e!737973 () Bool)

(assert (=> b!1292982 (=> (not res!859249) (not e!737973))))

(declare-datatypes ((array!85811 0))(
  ( (array!85812 (arr!41402 (Array (_ BitVec 32) (_ BitVec 64))) (size!41953 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85811)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292982 (= res!859249 (not (validKeyInArray!0 (select (arr!41402 _keys!1741) from!2144))))))

(declare-fun b!1292983 () Bool)

(declare-fun res!859253 () Bool)

(assert (=> b!1292983 (=> (not res!859253) (not e!737973))))

(declare-datatypes ((List!29558 0))(
  ( (Nil!29555) (Cons!29554 (h!30763 (_ BitVec 64)) (t!43129 List!29558)) )
))
(declare-fun arrayNoDuplicates!0 (array!85811 (_ BitVec 32) List!29558) Bool)

(assert (=> b!1292983 (= res!859253 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29555))))

(declare-fun b!1292985 () Bool)

(declare-fun res!859256 () Bool)

(assert (=> b!1292985 (=> (not res!859256) (not e!737973))))

(assert (=> b!1292985 (= res!859256 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41953 _keys!1741))))))

(declare-fun mapIsEmpty!53177 () Bool)

(declare-fun mapRes!53177 () Bool)

(assert (=> mapIsEmpty!53177 mapRes!53177))

(declare-fun b!1292986 () Bool)

(declare-fun res!859251 () Bool)

(assert (=> b!1292986 (=> (not res!859251) (not e!737973))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50985 0))(
  ( (V!50986 (val!17280 Int)) )
))
(declare-datatypes ((ValueCell!16307 0))(
  ( (ValueCellFull!16307 (v!19881 V!50985)) (EmptyCell!16307) )
))
(declare-datatypes ((array!85813 0))(
  ( (array!85814 (arr!41403 (Array (_ BitVec 32) ValueCell!16307)) (size!41954 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85813)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292986 (= res!859251 (and (= (size!41954 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41953 _keys!1741) (size!41954 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292987 () Bool)

(declare-fun e!737971 () Bool)

(assert (=> b!1292987 (= e!737973 (not e!737971))))

(declare-fun res!859255 () Bool)

(assert (=> b!1292987 (=> res!859255 e!737971)))

(assert (=> b!1292987 (= res!859255 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22374 0))(
  ( (tuple2!22375 (_1!11197 (_ BitVec 64)) (_2!11197 V!50985)) )
))
(declare-datatypes ((List!29559 0))(
  ( (Nil!29556) (Cons!29555 (h!30764 tuple2!22374) (t!43130 List!29559)) )
))
(declare-datatypes ((ListLongMap!20043 0))(
  ( (ListLongMap!20044 (toList!10037 List!29559)) )
))
(declare-fun contains!8093 (ListLongMap!20043 (_ BitVec 64)) Bool)

(assert (=> b!1292987 (not (contains!8093 (ListLongMap!20044 Nil!29556) k!1205))))

(declare-datatypes ((Unit!42753 0))(
  ( (Unit!42754) )
))
(declare-fun lt!579397 () Unit!42753)

(declare-fun emptyContainsNothing!133 ((_ BitVec 64)) Unit!42753)

(assert (=> b!1292987 (= lt!579397 (emptyContainsNothing!133 k!1205))))

(declare-fun b!1292988 () Bool)

(declare-fun e!737969 () Bool)

(declare-fun tp_is_empty!34411 () Bool)

(assert (=> b!1292988 (= e!737969 tp_is_empty!34411)))

(declare-fun b!1292989 () Bool)

(assert (=> b!1292989 (= e!737971 true)))

(declare-fun lt!579395 () ListLongMap!20043)

(declare-fun zeroValue!1387 () V!50985)

(declare-fun +!4370 (ListLongMap!20043 tuple2!22374) ListLongMap!20043)

(assert (=> b!1292989 (not (contains!8093 (+!4370 lt!579395 (tuple2!22375 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!579396 () Unit!42753)

(declare-fun addStillNotContains!415 (ListLongMap!20043 (_ BitVec 64) V!50985 (_ BitVec 64)) Unit!42753)

(assert (=> b!1292989 (= lt!579396 (addStillNotContains!415 lt!579395 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50985)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6083 (array!85811 array!85813 (_ BitVec 32) (_ BitVec 32) V!50985 V!50985 (_ BitVec 32) Int) ListLongMap!20043)

(assert (=> b!1292989 (= lt!579395 (getCurrentListMapNoExtraKeys!6083 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1292990 () Bool)

(declare-fun e!737972 () Bool)

(assert (=> b!1292990 (= e!737972 tp_is_empty!34411)))

(declare-fun b!1292991 () Bool)

(declare-fun res!859250 () Bool)

(assert (=> b!1292991 (=> (not res!859250) (not e!737973))))

(assert (=> b!1292991 (= res!859250 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41953 _keys!1741))))))

(declare-fun b!1292992 () Bool)

(declare-fun e!737974 () Bool)

(assert (=> b!1292992 (= e!737974 (and e!737969 mapRes!53177))))

(declare-fun condMapEmpty!53177 () Bool)

(declare-fun mapDefault!53177 () ValueCell!16307)


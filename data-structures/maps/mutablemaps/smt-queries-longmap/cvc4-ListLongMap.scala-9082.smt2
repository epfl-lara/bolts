; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109316 () Bool)

(assert start!109316)

(declare-fun b_free!28769 () Bool)

(declare-fun b_next!28769 () Bool)

(assert (=> start!109316 (= b_free!28769 (not b_next!28769))))

(declare-fun tp!101427 () Bool)

(declare-fun b_and!46869 () Bool)

(assert (=> start!109316 (= tp!101427 b_and!46869)))

(declare-fun b!1292946 () Bool)

(declare-fun res!859229 () Bool)

(declare-fun e!737951 () Bool)

(assert (=> b!1292946 (=> (not res!859229) (not e!737951))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85807 0))(
  ( (array!85808 (arr!41400 (Array (_ BitVec 32) (_ BitVec 64))) (size!41951 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85807)

(assert (=> b!1292946 (= res!859229 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41951 _keys!1741))))))

(declare-fun mapNonEmpty!53174 () Bool)

(declare-fun mapRes!53174 () Bool)

(declare-fun tp!101426 () Bool)

(declare-fun e!737952 () Bool)

(assert (=> mapNonEmpty!53174 (= mapRes!53174 (and tp!101426 e!737952))))

(declare-datatypes ((V!50981 0))(
  ( (V!50982 (val!17279 Int)) )
))
(declare-datatypes ((ValueCell!16306 0))(
  ( (ValueCellFull!16306 (v!19880 V!50981)) (EmptyCell!16306) )
))
(declare-fun mapValue!53174 () ValueCell!16306)

(declare-datatypes ((array!85809 0))(
  ( (array!85810 (arr!41401 (Array (_ BitVec 32) ValueCell!16306)) (size!41952 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85809)

(declare-fun mapRest!53174 () (Array (_ BitVec 32) ValueCell!16306))

(declare-fun mapKey!53174 () (_ BitVec 32))

(assert (=> mapNonEmpty!53174 (= (arr!41401 _values!1445) (store mapRest!53174 mapKey!53174 mapValue!53174))))

(declare-fun b!1292947 () Bool)

(declare-fun res!859230 () Bool)

(assert (=> b!1292947 (=> (not res!859230) (not e!737951))))

(declare-fun minValue!1387 () V!50981)

(declare-fun zeroValue!1387 () V!50981)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22372 0))(
  ( (tuple2!22373 (_1!11196 (_ BitVec 64)) (_2!11196 V!50981)) )
))
(declare-datatypes ((List!29556 0))(
  ( (Nil!29553) (Cons!29552 (h!30761 tuple2!22372) (t!43127 List!29556)) )
))
(declare-datatypes ((ListLongMap!20041 0))(
  ( (ListLongMap!20042 (toList!10036 List!29556)) )
))
(declare-fun contains!8092 (ListLongMap!20041 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5024 (array!85807 array!85809 (_ BitVec 32) (_ BitVec 32) V!50981 V!50981 (_ BitVec 32) Int) ListLongMap!20041)

(assert (=> b!1292947 (= res!859230 (contains!8092 (getCurrentListMap!5024 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1292948 () Bool)

(declare-fun tp_is_empty!34409 () Bool)

(assert (=> b!1292948 (= e!737952 tp_is_empty!34409)))

(declare-fun b!1292949 () Bool)

(declare-fun res!859222 () Bool)

(assert (=> b!1292949 (=> (not res!859222) (not e!737951))))

(declare-datatypes ((List!29557 0))(
  ( (Nil!29554) (Cons!29553 (h!30762 (_ BitVec 64)) (t!43128 List!29557)) )
))
(declare-fun arrayNoDuplicates!0 (array!85807 (_ BitVec 32) List!29557) Bool)

(assert (=> b!1292949 (= res!859222 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29554))))

(declare-fun mapIsEmpty!53174 () Bool)

(assert (=> mapIsEmpty!53174 mapRes!53174))

(declare-fun b!1292950 () Bool)

(declare-fun res!859223 () Bool)

(assert (=> b!1292950 (=> (not res!859223) (not e!737951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85807 (_ BitVec 32)) Bool)

(assert (=> b!1292950 (= res!859223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292951 () Bool)

(declare-fun res!859228 () Bool)

(assert (=> b!1292951 (=> (not res!859228) (not e!737951))))

(assert (=> b!1292951 (= res!859228 (and (= (size!41952 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41951 _keys!1741) (size!41952 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292952 () Bool)

(declare-fun e!737955 () Bool)

(assert (=> b!1292952 (= e!737955 true)))

(declare-fun lt!579386 () ListLongMap!20041)

(declare-fun +!4369 (ListLongMap!20041 tuple2!22372) ListLongMap!20041)

(assert (=> b!1292952 (not (contains!8092 (+!4369 lt!579386 (tuple2!22373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42751 0))(
  ( (Unit!42752) )
))
(declare-fun lt!579388 () Unit!42751)

(declare-fun addStillNotContains!414 (ListLongMap!20041 (_ BitVec 64) V!50981 (_ BitVec 64)) Unit!42751)

(assert (=> b!1292952 (= lt!579388 (addStillNotContains!414 lt!579386 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6082 (array!85807 array!85809 (_ BitVec 32) (_ BitVec 32) V!50981 V!50981 (_ BitVec 32) Int) ListLongMap!20041)

(assert (=> b!1292952 (= lt!579386 (getCurrentListMapNoExtraKeys!6082 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun res!859226 () Bool)

(assert (=> start!109316 (=> (not res!859226) (not e!737951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109316 (= res!859226 (validMask!0 mask!2175))))

(assert (=> start!109316 e!737951))

(assert (=> start!109316 tp_is_empty!34409))

(assert (=> start!109316 true))

(declare-fun e!737956 () Bool)

(declare-fun array_inv!31341 (array!85809) Bool)

(assert (=> start!109316 (and (array_inv!31341 _values!1445) e!737956)))

(declare-fun array_inv!31342 (array!85807) Bool)

(assert (=> start!109316 (array_inv!31342 _keys!1741)))

(assert (=> start!109316 tp!101427))

(declare-fun b!1292953 () Bool)

(assert (=> b!1292953 (= e!737951 (not e!737955))))

(declare-fun res!859225 () Bool)

(assert (=> b!1292953 (=> res!859225 e!737955)))

(assert (=> b!1292953 (= res!859225 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1292953 (not (contains!8092 (ListLongMap!20042 Nil!29553) k!1205))))

(declare-fun lt!579387 () Unit!42751)

(declare-fun emptyContainsNothing!132 ((_ BitVec 64)) Unit!42751)

(assert (=> b!1292953 (= lt!579387 (emptyContainsNothing!132 k!1205))))

(declare-fun b!1292954 () Bool)

(declare-fun res!859227 () Bool)

(assert (=> b!1292954 (=> (not res!859227) (not e!737951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292954 (= res!859227 (not (validKeyInArray!0 (select (arr!41400 _keys!1741) from!2144))))))

(declare-fun b!1292955 () Bool)

(declare-fun e!737954 () Bool)

(assert (=> b!1292955 (= e!737954 tp_is_empty!34409)))

(declare-fun b!1292956 () Bool)

(declare-fun res!859224 () Bool)

(assert (=> b!1292956 (=> (not res!859224) (not e!737951))))

(assert (=> b!1292956 (= res!859224 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41951 _keys!1741))))))

(declare-fun b!1292957 () Bool)

(assert (=> b!1292957 (= e!737956 (and e!737954 mapRes!53174))))

(declare-fun condMapEmpty!53174 () Bool)

(declare-fun mapDefault!53174 () ValueCell!16306)


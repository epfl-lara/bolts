; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109214 () Bool)

(assert start!109214)

(declare-fun b_free!28667 () Bool)

(declare-fun b_next!28667 () Bool)

(assert (=> start!109214 (= b_free!28667 (not b_next!28667))))

(declare-fun tp!101121 () Bool)

(declare-fun b_and!46767 () Bool)

(assert (=> start!109214 (= tp!101121 b_and!46767)))

(declare-fun mapNonEmpty!53021 () Bool)

(declare-fun mapRes!53021 () Bool)

(declare-fun tp!101120 () Bool)

(declare-fun e!737119 () Bool)

(assert (=> mapNonEmpty!53021 (= mapRes!53021 (and tp!101120 e!737119))))

(declare-datatypes ((V!50845 0))(
  ( (V!50846 (val!17228 Int)) )
))
(declare-datatypes ((ValueCell!16255 0))(
  ( (ValueCellFull!16255 (v!19829 V!50845)) (EmptyCell!16255) )
))
(declare-fun mapRest!53021 () (Array (_ BitVec 32) ValueCell!16255))

(declare-fun mapKey!53021 () (_ BitVec 32))

(declare-fun mapValue!53021 () ValueCell!16255)

(declare-datatypes ((array!85609 0))(
  ( (array!85610 (arr!41301 (Array (_ BitVec 32) ValueCell!16255)) (size!41852 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85609)

(assert (=> mapNonEmpty!53021 (= (arr!41301 _values!1445) (store mapRest!53021 mapKey!53021 mapValue!53021))))

(declare-fun b!1291191 () Bool)

(declare-fun e!737114 () Bool)

(declare-fun e!737116 () Bool)

(assert (=> b!1291191 (= e!737114 (not e!737116))))

(declare-fun res!857927 () Bool)

(assert (=> b!1291191 (=> res!857927 e!737116)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291191 (= res!857927 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22282 0))(
  ( (tuple2!22283 (_1!11151 (_ BitVec 64)) (_2!11151 V!50845)) )
))
(declare-datatypes ((List!29475 0))(
  ( (Nil!29472) (Cons!29471 (h!30680 tuple2!22282) (t!43046 List!29475)) )
))
(declare-datatypes ((ListLongMap!19951 0))(
  ( (ListLongMap!19952 (toList!9991 List!29475)) )
))
(declare-fun contains!8047 (ListLongMap!19951 (_ BitVec 64)) Bool)

(assert (=> b!1291191 (not (contains!8047 (ListLongMap!19952 Nil!29472) k!1205))))

(declare-datatypes ((Unit!42671 0))(
  ( (Unit!42672) )
))
(declare-fun lt!578987 () Unit!42671)

(declare-fun emptyContainsNothing!95 ((_ BitVec 64)) Unit!42671)

(assert (=> b!1291191 (= lt!578987 (emptyContainsNothing!95 k!1205))))

(declare-fun b!1291192 () Bool)

(declare-fun res!857934 () Bool)

(assert (=> b!1291192 (=> (not res!857934) (not e!737114))))

(declare-fun minValue!1387 () V!50845)

(declare-fun zeroValue!1387 () V!50845)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85611 0))(
  ( (array!85612 (arr!41302 (Array (_ BitVec 32) (_ BitVec 64))) (size!41853 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85611)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!4988 (array!85611 array!85609 (_ BitVec 32) (_ BitVec 32) V!50845 V!50845 (_ BitVec 32) Int) ListLongMap!19951)

(assert (=> b!1291192 (= res!857934 (contains!8047 (getCurrentListMap!4988 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1291193 () Bool)

(declare-fun e!737117 () Bool)

(declare-fun tp_is_empty!34307 () Bool)

(assert (=> b!1291193 (= e!737117 tp_is_empty!34307)))

(declare-fun res!857933 () Bool)

(assert (=> start!109214 (=> (not res!857933) (not e!737114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109214 (= res!857933 (validMask!0 mask!2175))))

(assert (=> start!109214 e!737114))

(assert (=> start!109214 tp_is_empty!34307))

(assert (=> start!109214 true))

(declare-fun e!737118 () Bool)

(declare-fun array_inv!31273 (array!85609) Bool)

(assert (=> start!109214 (and (array_inv!31273 _values!1445) e!737118)))

(declare-fun array_inv!31274 (array!85611) Bool)

(assert (=> start!109214 (array_inv!31274 _keys!1741)))

(assert (=> start!109214 tp!101121))

(declare-fun b!1291194 () Bool)

(assert (=> b!1291194 (= e!737116 true)))

(assert (=> b!1291194 false))

(declare-fun lt!578991 () Unit!42671)

(declare-fun lt!578988 () ListLongMap!19951)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!49 ((_ BitVec 64) (_ BitVec 64) V!50845 ListLongMap!19951) Unit!42671)

(assert (=> b!1291194 (= lt!578991 (lemmaInListMapAfterAddingDiffThenInBefore!49 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578988))))

(declare-fun lt!578990 () ListLongMap!19951)

(declare-fun +!4354 (ListLongMap!19951 tuple2!22282) ListLongMap!19951)

(assert (=> b!1291194 (not (contains!8047 (+!4354 lt!578990 (tuple2!22283 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!578989 () Unit!42671)

(declare-fun addStillNotContains!399 (ListLongMap!19951 (_ BitVec 64) V!50845 (_ BitVec 64)) Unit!42671)

(assert (=> b!1291194 (= lt!578989 (addStillNotContains!399 lt!578990 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1291194 (not (contains!8047 lt!578988 k!1205))))

(assert (=> b!1291194 (= lt!578988 (+!4354 lt!578990 (tuple2!22283 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578992 () Unit!42671)

(assert (=> b!1291194 (= lt!578992 (addStillNotContains!399 lt!578990 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6066 (array!85611 array!85609 (_ BitVec 32) (_ BitVec 32) V!50845 V!50845 (_ BitVec 32) Int) ListLongMap!19951)

(assert (=> b!1291194 (= lt!578990 (getCurrentListMapNoExtraKeys!6066 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291195 () Bool)

(declare-fun res!857932 () Bool)

(assert (=> b!1291195 (=> (not res!857932) (not e!737114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85611 (_ BitVec 32)) Bool)

(assert (=> b!1291195 (= res!857932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291196 () Bool)

(declare-fun res!857930 () Bool)

(assert (=> b!1291196 (=> (not res!857930) (not e!737114))))

(assert (=> b!1291196 (= res!857930 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41853 _keys!1741))))))

(declare-fun b!1291197 () Bool)

(assert (=> b!1291197 (= e!737118 (and e!737117 mapRes!53021))))

(declare-fun condMapEmpty!53021 () Bool)

(declare-fun mapDefault!53021 () ValueCell!16255)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109466 () Bool)

(assert start!109466)

(declare-fun b_free!28919 () Bool)

(declare-fun b_next!28919 () Bool)

(assert (=> start!109466 (= b_free!28919 (not b_next!28919))))

(declare-fun tp!101877 () Bool)

(declare-fun b_and!47019 () Bool)

(assert (=> start!109466 (= tp!101877 b_and!47019)))

(declare-fun b!1295565 () Bool)

(declare-fun res!861171 () Bool)

(declare-fun e!739221 () Bool)

(assert (=> b!1295565 (=> (not res!861171) (not e!739221))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86101 0))(
  ( (array!86102 (arr!41547 (Array (_ BitVec 32) (_ BitVec 64))) (size!42098 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86101)

(assert (=> b!1295565 (= res!861171 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42098 _keys!1741))))))

(declare-fun mapNonEmpty!53399 () Bool)

(declare-fun mapRes!53399 () Bool)

(declare-fun tp!101876 () Bool)

(declare-fun e!739223 () Bool)

(assert (=> mapNonEmpty!53399 (= mapRes!53399 (and tp!101876 e!739223))))

(declare-datatypes ((V!51181 0))(
  ( (V!51182 (val!17354 Int)) )
))
(declare-datatypes ((ValueCell!16381 0))(
  ( (ValueCellFull!16381 (v!19955 V!51181)) (EmptyCell!16381) )
))
(declare-fun mapRest!53399 () (Array (_ BitVec 32) ValueCell!16381))

(declare-datatypes ((array!86103 0))(
  ( (array!86104 (arr!41548 (Array (_ BitVec 32) ValueCell!16381)) (size!42099 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86103)

(declare-fun mapKey!53399 () (_ BitVec 32))

(declare-fun mapValue!53399 () ValueCell!16381)

(assert (=> mapNonEmpty!53399 (= (arr!41548 _values!1445) (store mapRest!53399 mapKey!53399 mapValue!53399))))

(declare-fun b!1295566 () Bool)

(declare-fun res!861174 () Bool)

(assert (=> b!1295566 (=> (not res!861174) (not e!739221))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295566 (= res!861174 (and (= (size!42099 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42098 _keys!1741) (size!42099 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!861166 () Bool)

(assert (=> start!109466 (=> (not res!861166) (not e!739221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109466 (= res!861166 (validMask!0 mask!2175))))

(assert (=> start!109466 e!739221))

(declare-fun tp_is_empty!34559 () Bool)

(assert (=> start!109466 tp_is_empty!34559))

(assert (=> start!109466 true))

(declare-fun e!739225 () Bool)

(declare-fun array_inv!31445 (array!86103) Bool)

(assert (=> start!109466 (and (array_inv!31445 _values!1445) e!739225)))

(declare-fun array_inv!31446 (array!86101) Bool)

(assert (=> start!109466 (array_inv!31446 _keys!1741)))

(assert (=> start!109466 tp!101877))

(declare-fun b!1295567 () Bool)

(declare-fun res!861170 () Bool)

(assert (=> b!1295567 (=> (not res!861170) (not e!739221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295567 (= res!861170 (not (validKeyInArray!0 (select (arr!41547 _keys!1741) from!2144))))))

(declare-fun b!1295568 () Bool)

(declare-fun e!739222 () Bool)

(assert (=> b!1295568 (= e!739222 true)))

(declare-datatypes ((tuple2!22500 0))(
  ( (tuple2!22501 (_1!11260 (_ BitVec 64)) (_2!11260 V!51181)) )
))
(declare-datatypes ((List!29668 0))(
  ( (Nil!29665) (Cons!29664 (h!30873 tuple2!22500) (t!43239 List!29668)) )
))
(declare-datatypes ((ListLongMap!20169 0))(
  ( (ListLongMap!20170 (toList!10100 List!29668)) )
))
(declare-fun lt!579892 () ListLongMap!20169)

(declare-fun minValue!1387 () V!51181)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8156 (ListLongMap!20169 (_ BitVec 64)) Bool)

(declare-fun +!4401 (ListLongMap!20169 tuple2!22500) ListLongMap!20169)

(assert (=> b!1295568 (not (contains!8156 (+!4401 lt!579892 (tuple2!22501 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42863 0))(
  ( (Unit!42864) )
))
(declare-fun lt!579891 () Unit!42863)

(declare-fun addStillNotContains!446 (ListLongMap!20169 (_ BitVec 64) V!51181 (_ BitVec 64)) Unit!42863)

(assert (=> b!1295568 (= lt!579891 (addStillNotContains!446 lt!579892 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!51181)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6117 (array!86101 array!86103 (_ BitVec 32) (_ BitVec 32) V!51181 V!51181 (_ BitVec 32) Int) ListLongMap!20169)

(assert (=> b!1295568 (= lt!579892 (getCurrentListMapNoExtraKeys!6117 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295569 () Bool)

(declare-fun res!861168 () Bool)

(assert (=> b!1295569 (=> (not res!861168) (not e!739221))))

(declare-datatypes ((List!29669 0))(
  ( (Nil!29666) (Cons!29665 (h!30874 (_ BitVec 64)) (t!43240 List!29669)) )
))
(declare-fun arrayNoDuplicates!0 (array!86101 (_ BitVec 32) List!29669) Bool)

(assert (=> b!1295569 (= res!861168 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29666))))

(declare-fun b!1295570 () Bool)

(declare-fun e!739220 () Bool)

(assert (=> b!1295570 (= e!739220 tp_is_empty!34559)))

(declare-fun b!1295571 () Bool)

(assert (=> b!1295571 (= e!739223 tp_is_empty!34559)))

(declare-fun b!1295572 () Bool)

(declare-fun res!861169 () Bool)

(assert (=> b!1295572 (=> (not res!861169) (not e!739221))))

(declare-fun getCurrentListMap!5080 (array!86101 array!86103 (_ BitVec 32) (_ BitVec 32) V!51181 V!51181 (_ BitVec 32) Int) ListLongMap!20169)

(assert (=> b!1295572 (= res!861169 (contains!8156 (getCurrentListMap!5080 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1295573 () Bool)

(declare-fun res!861173 () Bool)

(assert (=> b!1295573 (=> (not res!861173) (not e!739221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86101 (_ BitVec 32)) Bool)

(assert (=> b!1295573 (= res!861173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295574 () Bool)

(assert (=> b!1295574 (= e!739221 (not e!739222))))

(declare-fun res!861172 () Bool)

(assert (=> b!1295574 (=> res!861172 e!739222)))

(assert (=> b!1295574 (= res!861172 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295574 (not (contains!8156 (ListLongMap!20170 Nil!29665) k!1205))))

(declare-fun lt!579890 () Unit!42863)

(declare-fun emptyContainsNothing!187 ((_ BitVec 64)) Unit!42863)

(assert (=> b!1295574 (= lt!579890 (emptyContainsNothing!187 k!1205))))

(declare-fun b!1295575 () Bool)

(assert (=> b!1295575 (= e!739225 (and e!739220 mapRes!53399))))

(declare-fun condMapEmpty!53399 () Bool)

(declare-fun mapDefault!53399 () ValueCell!16381)


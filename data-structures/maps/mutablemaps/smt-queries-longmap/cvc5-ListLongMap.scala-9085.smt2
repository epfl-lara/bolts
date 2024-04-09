; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109330 () Bool)

(assert start!109330)

(declare-fun b_free!28783 () Bool)

(declare-fun b_next!28783 () Bool)

(assert (=> start!109330 (= b_free!28783 (not b_next!28783))))

(declare-fun tp!101468 () Bool)

(declare-fun b_and!46883 () Bool)

(assert (=> start!109330 (= tp!101468 b_and!46883)))

(declare-fun b!1293198 () Bool)

(declare-fun e!738082 () Bool)

(declare-fun tp_is_empty!34423 () Bool)

(assert (=> b!1293198 (= e!738082 tp_is_empty!34423)))

(declare-fun b!1293199 () Bool)

(declare-fun res!859411 () Bool)

(declare-fun e!738080 () Bool)

(assert (=> b!1293199 (=> (not res!859411) (not e!738080))))

(declare-datatypes ((array!85835 0))(
  ( (array!85836 (arr!41414 (Array (_ BitVec 32) (_ BitVec 64))) (size!41965 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85835)

(declare-datatypes ((List!29567 0))(
  ( (Nil!29564) (Cons!29563 (h!30772 (_ BitVec 64)) (t!43138 List!29567)) )
))
(declare-fun arrayNoDuplicates!0 (array!85835 (_ BitVec 32) List!29567) Bool)

(assert (=> b!1293199 (= res!859411 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29564))))

(declare-fun b!1293200 () Bool)

(declare-fun res!859417 () Bool)

(assert (=> b!1293200 (=> (not res!859417) (not e!738080))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1293200 (= res!859417 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41965 _keys!1741))))))

(declare-fun b!1293201 () Bool)

(declare-fun res!859415 () Bool)

(assert (=> b!1293201 (=> (not res!859415) (not e!738080))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51001 0))(
  ( (V!51002 (val!17286 Int)) )
))
(declare-datatypes ((ValueCell!16313 0))(
  ( (ValueCellFull!16313 (v!19887 V!51001)) (EmptyCell!16313) )
))
(declare-datatypes ((array!85837 0))(
  ( (array!85838 (arr!41415 (Array (_ BitVec 32) ValueCell!16313)) (size!41966 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85837)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293201 (= res!859415 (and (= (size!41966 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41965 _keys!1741) (size!41966 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!859414 () Bool)

(assert (=> start!109330 (=> (not res!859414) (not e!738080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109330 (= res!859414 (validMask!0 mask!2175))))

(assert (=> start!109330 e!738080))

(assert (=> start!109330 tp_is_empty!34423))

(assert (=> start!109330 true))

(declare-fun e!738079 () Bool)

(declare-fun array_inv!31351 (array!85837) Bool)

(assert (=> start!109330 (and (array_inv!31351 _values!1445) e!738079)))

(declare-fun array_inv!31352 (array!85835) Bool)

(assert (=> start!109330 (array_inv!31352 _keys!1741)))

(assert (=> start!109330 tp!101468))

(declare-fun b!1293202 () Bool)

(declare-fun e!738077 () Bool)

(assert (=> b!1293202 (= e!738080 (not e!738077))))

(declare-fun res!859419 () Bool)

(assert (=> b!1293202 (=> res!859419 e!738077)))

(assert (=> b!1293202 (= res!859419 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!22384 0))(
  ( (tuple2!22385 (_1!11202 (_ BitVec 64)) (_2!11202 V!51001)) )
))
(declare-datatypes ((List!29568 0))(
  ( (Nil!29565) (Cons!29564 (h!30773 tuple2!22384) (t!43139 List!29568)) )
))
(declare-datatypes ((ListLongMap!20053 0))(
  ( (ListLongMap!20054 (toList!10042 List!29568)) )
))
(declare-fun contains!8098 (ListLongMap!20053 (_ BitVec 64)) Bool)

(assert (=> b!1293202 (not (contains!8098 (ListLongMap!20054 Nil!29565) k!1205))))

(declare-datatypes ((Unit!42763 0))(
  ( (Unit!42764) )
))
(declare-fun lt!579450 () Unit!42763)

(declare-fun emptyContainsNothing!138 ((_ BitVec 64)) Unit!42763)

(assert (=> b!1293202 (= lt!579450 (emptyContainsNothing!138 k!1205))))

(declare-fun mapNonEmpty!53195 () Bool)

(declare-fun mapRes!53195 () Bool)

(declare-fun tp!101469 () Bool)

(declare-fun e!738081 () Bool)

(assert (=> mapNonEmpty!53195 (= mapRes!53195 (and tp!101469 e!738081))))

(declare-fun mapValue!53195 () ValueCell!16313)

(declare-fun mapRest!53195 () (Array (_ BitVec 32) ValueCell!16313))

(declare-fun mapKey!53195 () (_ BitVec 32))

(assert (=> mapNonEmpty!53195 (= (arr!41415 _values!1445) (store mapRest!53195 mapKey!53195 mapValue!53195))))

(declare-fun mapIsEmpty!53195 () Bool)

(assert (=> mapIsEmpty!53195 mapRes!53195))

(declare-fun b!1293203 () Bool)

(declare-fun res!859413 () Bool)

(assert (=> b!1293203 (=> (not res!859413) (not e!738080))))

(declare-fun minValue!1387 () V!51001)

(declare-fun zeroValue!1387 () V!51001)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5028 (array!85835 array!85837 (_ BitVec 32) (_ BitVec 32) V!51001 V!51001 (_ BitVec 32) Int) ListLongMap!20053)

(assert (=> b!1293203 (= res!859413 (contains!8098 (getCurrentListMap!5028 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293204 () Bool)

(assert (=> b!1293204 (= e!738081 tp_is_empty!34423)))

(declare-fun b!1293205 () Bool)

(declare-fun res!859412 () Bool)

(assert (=> b!1293205 (=> (not res!859412) (not e!738080))))

(assert (=> b!1293205 (= res!859412 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41965 _keys!1741))))))

(declare-fun b!1293206 () Bool)

(assert (=> b!1293206 (= e!738079 (and e!738082 mapRes!53195))))

(declare-fun condMapEmpty!53195 () Bool)

(declare-fun mapDefault!53195 () ValueCell!16313)


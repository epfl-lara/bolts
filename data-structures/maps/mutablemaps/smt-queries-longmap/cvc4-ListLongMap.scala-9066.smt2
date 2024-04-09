; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109220 () Bool)

(assert start!109220)

(declare-fun b_free!28673 () Bool)

(declare-fun b_next!28673 () Bool)

(assert (=> start!109220 (= b_free!28673 (not b_next!28673))))

(declare-fun tp!101139 () Bool)

(declare-fun b_and!46773 () Bool)

(assert (=> start!109220 (= tp!101139 b_and!46773)))

(declare-fun b!1291300 () Bool)

(declare-fun res!858009 () Bool)

(declare-fun e!737169 () Bool)

(assert (=> b!1291300 (=> (not res!858009) (not e!737169))))

(declare-datatypes ((V!50853 0))(
  ( (V!50854 (val!17231 Int)) )
))
(declare-fun minValue!1387 () V!50853)

(declare-fun zeroValue!1387 () V!50853)

(declare-datatypes ((ValueCell!16258 0))(
  ( (ValueCellFull!16258 (v!19832 V!50853)) (EmptyCell!16258) )
))
(declare-datatypes ((array!85621 0))(
  ( (array!85622 (arr!41307 (Array (_ BitVec 32) ValueCell!16258)) (size!41858 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85621)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85623 0))(
  ( (array!85624 (arr!41308 (Array (_ BitVec 32) (_ BitVec 64))) (size!41859 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85623)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22288 0))(
  ( (tuple2!22289 (_1!11154 (_ BitVec 64)) (_2!11154 V!50853)) )
))
(declare-datatypes ((List!29480 0))(
  ( (Nil!29477) (Cons!29476 (h!30685 tuple2!22288) (t!43051 List!29480)) )
))
(declare-datatypes ((ListLongMap!19957 0))(
  ( (ListLongMap!19958 (toList!9994 List!29480)) )
))
(declare-fun contains!8050 (ListLongMap!19957 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4990 (array!85623 array!85621 (_ BitVec 32) (_ BitVec 32) V!50853 V!50853 (_ BitVec 32) Int) ListLongMap!19957)

(assert (=> b!1291300 (= res!858009 (contains!8050 (getCurrentListMap!4990 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1291301 () Bool)

(declare-fun e!737170 () Bool)

(declare-fun tp_is_empty!34313 () Bool)

(assert (=> b!1291301 (= e!737170 tp_is_empty!34313)))

(declare-fun b!1291302 () Bool)

(declare-fun e!737172 () Bool)

(assert (=> b!1291302 (= e!737172 tp_is_empty!34313)))

(declare-fun b!1291303 () Bool)

(declare-fun res!858007 () Bool)

(assert (=> b!1291303 (=> (not res!858007) (not e!737169))))

(declare-datatypes ((List!29481 0))(
  ( (Nil!29478) (Cons!29477 (h!30686 (_ BitVec 64)) (t!43052 List!29481)) )
))
(declare-fun arrayNoDuplicates!0 (array!85623 (_ BitVec 32) List!29481) Bool)

(assert (=> b!1291303 (= res!858007 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29478))))

(declare-fun mapIsEmpty!53030 () Bool)

(declare-fun mapRes!53030 () Bool)

(assert (=> mapIsEmpty!53030 mapRes!53030))

(declare-fun b!1291304 () Bool)

(declare-fun res!858015 () Bool)

(assert (=> b!1291304 (=> (not res!858015) (not e!737169))))

(assert (=> b!1291304 (= res!858015 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41859 _keys!1741))))))

(declare-fun b!1291305 () Bool)

(declare-fun res!858011 () Bool)

(assert (=> b!1291305 (=> (not res!858011) (not e!737169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291305 (= res!858011 (not (validKeyInArray!0 (select (arr!41308 _keys!1741) from!2144))))))

(declare-fun b!1291306 () Bool)

(declare-fun e!737173 () Bool)

(assert (=> b!1291306 (= e!737169 (not e!737173))))

(declare-fun res!858008 () Bool)

(assert (=> b!1291306 (=> res!858008 e!737173)))

(assert (=> b!1291306 (= res!858008 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1291306 (not (contains!8050 (ListLongMap!19958 Nil!29477) k!1205))))

(declare-datatypes ((Unit!42677 0))(
  ( (Unit!42678) )
))
(declare-fun lt!579044 () Unit!42677)

(declare-fun emptyContainsNothing!97 ((_ BitVec 64)) Unit!42677)

(assert (=> b!1291306 (= lt!579044 (emptyContainsNothing!97 k!1205))))

(declare-fun mapNonEmpty!53030 () Bool)

(declare-fun tp!101138 () Bool)

(assert (=> mapNonEmpty!53030 (= mapRes!53030 (and tp!101138 e!737170))))

(declare-fun mapValue!53030 () ValueCell!16258)

(declare-fun mapRest!53030 () (Array (_ BitVec 32) ValueCell!16258))

(declare-fun mapKey!53030 () (_ BitVec 32))

(assert (=> mapNonEmpty!53030 (= (arr!41307 _values!1445) (store mapRest!53030 mapKey!53030 mapValue!53030))))

(declare-fun b!1291307 () Bool)

(declare-fun res!858012 () Bool)

(assert (=> b!1291307 (=> (not res!858012) (not e!737169))))

(assert (=> b!1291307 (= res!858012 (and (= (size!41858 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41859 _keys!1741) (size!41858 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291308 () Bool)

(declare-fun e!737168 () Bool)

(assert (=> b!1291308 (= e!737168 (and e!737172 mapRes!53030))))

(declare-fun condMapEmpty!53030 () Bool)

(declare-fun mapDefault!53030 () ValueCell!16258)


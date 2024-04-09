; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109358 () Bool)

(assert start!109358)

(declare-fun b_free!28811 () Bool)

(declare-fun b_next!28811 () Bool)

(assert (=> start!109358 (= b_free!28811 (not b_next!28811))))

(declare-fun tp!101552 () Bool)

(declare-fun b_and!46911 () Bool)

(assert (=> start!109358 (= tp!101552 b_and!46911)))

(declare-fun b!1293702 () Bool)

(declare-fun e!738334 () Bool)

(declare-fun e!738331 () Bool)

(assert (=> b!1293702 (= e!738334 (not e!738331))))

(declare-fun res!859792 () Bool)

(assert (=> b!1293702 (=> res!859792 e!738331)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293702 (= res!859792 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51037 0))(
  ( (V!51038 (val!17300 Int)) )
))
(declare-datatypes ((tuple2!22410 0))(
  ( (tuple2!22411 (_1!11215 (_ BitVec 64)) (_2!11215 V!51037)) )
))
(declare-datatypes ((List!29591 0))(
  ( (Nil!29588) (Cons!29587 (h!30796 tuple2!22410) (t!43162 List!29591)) )
))
(declare-datatypes ((ListLongMap!20079 0))(
  ( (ListLongMap!20080 (toList!10055 List!29591)) )
))
(declare-fun contains!8111 (ListLongMap!20079 (_ BitVec 64)) Bool)

(assert (=> b!1293702 (not (contains!8111 (ListLongMap!20080 Nil!29588) k!1205))))

(declare-datatypes ((Unit!42785 0))(
  ( (Unit!42786) )
))
(declare-fun lt!579576 () Unit!42785)

(declare-fun emptyContainsNothing!149 ((_ BitVec 64)) Unit!42785)

(assert (=> b!1293702 (= lt!579576 (emptyContainsNothing!149 k!1205))))

(declare-fun b!1293703 () Bool)

(declare-fun res!859795 () Bool)

(assert (=> b!1293703 (=> (not res!859795) (not e!738334))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85889 0))(
  ( (array!85890 (arr!41441 (Array (_ BitVec 32) (_ BitVec 64))) (size!41992 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85889)

(assert (=> b!1293703 (= res!859795 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41992 _keys!1741))))))

(declare-fun mapIsEmpty!53237 () Bool)

(declare-fun mapRes!53237 () Bool)

(assert (=> mapIsEmpty!53237 mapRes!53237))

(declare-fun b!1293704 () Bool)

(declare-fun res!859790 () Bool)

(assert (=> b!1293704 (=> (not res!859790) (not e!738334))))

(declare-fun zeroValue!1387 () V!51037)

(declare-fun minValue!1387 () V!51037)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16327 0))(
  ( (ValueCellFull!16327 (v!19901 V!51037)) (EmptyCell!16327) )
))
(declare-datatypes ((array!85891 0))(
  ( (array!85892 (arr!41442 (Array (_ BitVec 32) ValueCell!16327)) (size!41993 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85891)

(declare-fun getCurrentListMap!5041 (array!85889 array!85891 (_ BitVec 32) (_ BitVec 32) V!51037 V!51037 (_ BitVec 32) Int) ListLongMap!20079)

(assert (=> b!1293704 (= res!859790 (contains!8111 (getCurrentListMap!5041 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293705 () Bool)

(declare-fun res!859791 () Bool)

(assert (=> b!1293705 (=> (not res!859791) (not e!738334))))

(assert (=> b!1293705 (= res!859791 (and (= (size!41993 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41992 _keys!1741) (size!41993 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293706 () Bool)

(declare-fun res!859794 () Bool)

(assert (=> b!1293706 (=> (not res!859794) (not e!738334))))

(assert (=> b!1293706 (= res!859794 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41992 _keys!1741))))))

(declare-fun b!1293707 () Bool)

(declare-fun res!859793 () Bool)

(assert (=> b!1293707 (=> (not res!859793) (not e!738334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293707 (= res!859793 (not (validKeyInArray!0 (select (arr!41441 _keys!1741) from!2144))))))

(declare-fun b!1293708 () Bool)

(declare-fun e!738332 () Bool)

(declare-fun e!738330 () Bool)

(assert (=> b!1293708 (= e!738332 (and e!738330 mapRes!53237))))

(declare-fun condMapEmpty!53237 () Bool)

(declare-fun mapDefault!53237 () ValueCell!16327)


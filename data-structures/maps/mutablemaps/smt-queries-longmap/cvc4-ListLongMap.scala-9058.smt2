; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109172 () Bool)

(assert start!109172)

(declare-fun b_free!28625 () Bool)

(declare-fun b_next!28625 () Bool)

(assert (=> start!109172 (= b_free!28625 (not b_next!28625))))

(declare-fun tp!100995 () Bool)

(declare-fun b_and!46725 () Bool)

(assert (=> start!109172 (= tp!100995 b_and!46725)))

(declare-fun b!1290435 () Bool)

(declare-fun res!857366 () Bool)

(declare-fun e!736736 () Bool)

(assert (=> b!1290435 (=> (not res!857366) (not e!736736))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85527 0))(
  ( (array!85528 (arr!41260 (Array (_ BitVec 32) (_ BitVec 64))) (size!41811 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85527)

(assert (=> b!1290435 (= res!857366 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41811 _keys!1741))))))

(declare-fun b!1290436 () Bool)

(declare-fun res!857367 () Bool)

(assert (=> b!1290436 (=> (not res!857367) (not e!736736))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1290436 (= res!857367 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41811 _keys!1741))))))

(declare-fun b!1290437 () Bool)

(declare-fun e!736737 () Bool)

(assert (=> b!1290437 (= e!736736 (not e!736737))))

(declare-fun res!857359 () Bool)

(assert (=> b!1290437 (=> res!857359 e!736737)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1290437 (= res!857359 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!50789 0))(
  ( (V!50790 (val!17207 Int)) )
))
(declare-datatypes ((tuple2!22248 0))(
  ( (tuple2!22249 (_1!11134 (_ BitVec 64)) (_2!11134 V!50789)) )
))
(declare-datatypes ((List!29445 0))(
  ( (Nil!29442) (Cons!29441 (h!30650 tuple2!22248) (t!43016 List!29445)) )
))
(declare-datatypes ((ListLongMap!19917 0))(
  ( (ListLongMap!19918 (toList!9974 List!29445)) )
))
(declare-fun contains!8030 (ListLongMap!19917 (_ BitVec 64)) Bool)

(assert (=> b!1290437 (not (contains!8030 (ListLongMap!19918 Nil!29442) k!1205))))

(declare-datatypes ((Unit!42637 0))(
  ( (Unit!42638) )
))
(declare-fun lt!578609 () Unit!42637)

(declare-fun emptyContainsNothing!79 ((_ BitVec 64)) Unit!42637)

(assert (=> b!1290437 (= lt!578609 (emptyContainsNothing!79 k!1205))))

(declare-fun b!1290438 () Bool)

(declare-fun res!857360 () Bool)

(assert (=> b!1290438 (=> (not res!857360) (not e!736736))))

(declare-fun minValue!1387 () V!50789)

(declare-fun zeroValue!1387 () V!50789)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16234 0))(
  ( (ValueCellFull!16234 (v!19808 V!50789)) (EmptyCell!16234) )
))
(declare-datatypes ((array!85529 0))(
  ( (array!85530 (arr!41261 (Array (_ BitVec 32) ValueCell!16234)) (size!41812 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85529)

(declare-fun getCurrentListMap!4974 (array!85527 array!85529 (_ BitVec 32) (_ BitVec 32) V!50789 V!50789 (_ BitVec 32) Int) ListLongMap!19917)

(assert (=> b!1290438 (= res!857360 (contains!8030 (getCurrentListMap!4974 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1290439 () Bool)

(declare-fun e!736740 () Bool)

(declare-fun tp_is_empty!34265 () Bool)

(assert (=> b!1290439 (= e!736740 tp_is_empty!34265)))

(declare-fun b!1290440 () Bool)

(declare-fun res!857364 () Bool)

(assert (=> b!1290440 (=> (not res!857364) (not e!736736))))

(declare-datatypes ((List!29446 0))(
  ( (Nil!29443) (Cons!29442 (h!30651 (_ BitVec 64)) (t!43017 List!29446)) )
))
(declare-fun arrayNoDuplicates!0 (array!85527 (_ BitVec 32) List!29446) Bool)

(assert (=> b!1290440 (= res!857364 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29443))))

(declare-fun b!1290441 () Bool)

(declare-fun e!736741 () Bool)

(declare-fun mapRes!52958 () Bool)

(assert (=> b!1290441 (= e!736741 (and e!736740 mapRes!52958))))

(declare-fun condMapEmpty!52958 () Bool)

(declare-fun mapDefault!52958 () ValueCell!16234)


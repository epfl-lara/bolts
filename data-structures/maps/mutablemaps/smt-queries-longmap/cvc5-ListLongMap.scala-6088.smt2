; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78664 () Bool)

(assert start!78664)

(declare-fun b_free!16849 () Bool)

(declare-fun b_next!16849 () Bool)

(assert (=> start!78664 (= b_free!16849 (not b_next!16849))))

(declare-fun tp!58989 () Bool)

(declare-fun b_and!27489 () Bool)

(assert (=> start!78664 (= tp!58989 b_and!27489)))

(declare-fun b!916578 () Bool)

(declare-fun res!618023 () Bool)

(declare-fun e!514575 () Bool)

(assert (=> b!916578 (=> (not res!618023) (not e!514575))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54716 0))(
  ( (array!54717 (arr!26299 (Array (_ BitVec 32) (_ BitVec 64))) (size!26759 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54716)

(assert (=> b!916578 (= res!618023 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26759 _keys!1487))))))

(declare-fun b!916579 () Bool)

(declare-fun res!618025 () Bool)

(assert (=> b!916579 (=> (not res!618025) (not e!514575))))

(declare-datatypes ((List!18557 0))(
  ( (Nil!18554) (Cons!18553 (h!19699 (_ BitVec 64)) (t!26178 List!18557)) )
))
(declare-fun arrayNoDuplicates!0 (array!54716 (_ BitVec 32) List!18557) Bool)

(assert (=> b!916579 (= res!618025 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18554))))

(declare-fun b!916580 () Bool)

(declare-fun e!514576 () Bool)

(assert (=> b!916580 (= e!514575 e!514576)))

(declare-fun res!618026 () Bool)

(assert (=> b!916580 (=> (not res!618026) (not e!514576))))

(declare-datatypes ((V!30775 0))(
  ( (V!30776 (val!9729 Int)) )
))
(declare-datatypes ((tuple2!12698 0))(
  ( (tuple2!12699 (_1!6359 (_ BitVec 64)) (_2!6359 V!30775)) )
))
(declare-datatypes ((List!18558 0))(
  ( (Nil!18555) (Cons!18554 (h!19700 tuple2!12698) (t!26179 List!18558)) )
))
(declare-datatypes ((ListLongMap!11409 0))(
  ( (ListLongMap!11410 (toList!5720 List!18558)) )
))
(declare-fun lt!411801 () ListLongMap!11409)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4740 (ListLongMap!11409 (_ BitVec 64)) Bool)

(assert (=> b!916580 (= res!618026 (contains!4740 lt!411801 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9197 0))(
  ( (ValueCellFull!9197 (v!12247 V!30775)) (EmptyCell!9197) )
))
(declare-datatypes ((array!54718 0))(
  ( (array!54719 (arr!26300 (Array (_ BitVec 32) ValueCell!9197)) (size!26760 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54718)

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30775)

(declare-fun minValue!1173 () V!30775)

(declare-fun getCurrentListMap!2949 (array!54716 array!54718 (_ BitVec 32) (_ BitVec 32) V!30775 V!30775 (_ BitVec 32) Int) ListLongMap!11409)

(assert (=> b!916580 (= lt!411801 (getCurrentListMap!2949 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916582 () Bool)

(declare-fun e!514574 () Bool)

(declare-fun tp_is_empty!19357 () Bool)

(assert (=> b!916582 (= e!514574 tp_is_empty!19357)))

(declare-fun b!916583 () Bool)

(assert (=> b!916583 (= e!514576 false)))

(declare-fun lt!411800 () V!30775)

(declare-fun apply!548 (ListLongMap!11409 (_ BitVec 64)) V!30775)

(assert (=> b!916583 (= lt!411800 (apply!548 lt!411801 k!1099))))

(declare-fun mapIsEmpty!30792 () Bool)

(declare-fun mapRes!30792 () Bool)

(assert (=> mapIsEmpty!30792 mapRes!30792))

(declare-fun b!916584 () Bool)

(declare-fun e!514573 () Bool)

(declare-fun e!514577 () Bool)

(assert (=> b!916584 (= e!514573 (and e!514577 mapRes!30792))))

(declare-fun condMapEmpty!30792 () Bool)

(declare-fun mapDefault!30792 () ValueCell!9197)


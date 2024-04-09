; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78866 () Bool)

(assert start!78866)

(declare-fun b_free!17051 () Bool)

(declare-fun b_next!17051 () Bool)

(assert (=> start!78866 (= b_free!17051 (not b_next!17051))))

(declare-fun tp!59594 () Bool)

(declare-fun b_and!27857 () Bool)

(assert (=> start!78866 (= tp!59594 b_and!27857)))

(declare-fun b!920605 () Bool)

(declare-fun res!620923 () Bool)

(declare-fun e!516700 () Bool)

(assert (=> b!920605 (=> (not res!620923) (not e!516700))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31043 0))(
  ( (V!31044 (val!9830 Int)) )
))
(declare-fun v!791 () V!31043)

(declare-datatypes ((tuple2!12876 0))(
  ( (tuple2!12877 (_1!6448 (_ BitVec 64)) (_2!6448 V!31043)) )
))
(declare-datatypes ((List!18718 0))(
  ( (Nil!18715) (Cons!18714 (h!19860 tuple2!12876) (t!26507 List!18718)) )
))
(declare-datatypes ((ListLongMap!11587 0))(
  ( (ListLongMap!11588 (toList!5809 List!18718)) )
))
(declare-fun lt!413308 () ListLongMap!11587)

(declare-fun apply!620 (ListLongMap!11587 (_ BitVec 64)) V!31043)

(assert (=> b!920605 (= res!620923 (= (apply!620 lt!413308 k!1099) v!791))))

(declare-fun b!920606 () Bool)

(declare-fun e!516701 () Bool)

(declare-fun tp_is_empty!19559 () Bool)

(assert (=> b!920606 (= e!516701 tp_is_empty!19559)))

(declare-fun b!920607 () Bool)

(declare-fun res!620932 () Bool)

(declare-fun e!516699 () Bool)

(assert (=> b!920607 (=> (not res!620932) (not e!516699))))

(declare-datatypes ((array!55110 0))(
  ( (array!55111 (arr!26496 (Array (_ BitVec 32) (_ BitVec 64))) (size!26956 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55110)

(declare-datatypes ((List!18719 0))(
  ( (Nil!18716) (Cons!18715 (h!19861 (_ BitVec 64)) (t!26508 List!18719)) )
))
(declare-fun arrayNoDuplicates!0 (array!55110 (_ BitVec 32) List!18719) Bool)

(assert (=> b!920607 (= res!620932 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18716))))

(declare-fun b!920608 () Bool)

(declare-fun res!620921 () Bool)

(assert (=> b!920608 (=> (not res!620921) (not e!516699))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55110 (_ BitVec 32)) Bool)

(assert (=> b!920608 (= res!620921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920609 () Bool)

(declare-fun res!620925 () Bool)

(declare-fun e!516697 () Bool)

(assert (=> b!920609 (=> res!620925 e!516697)))

(declare-fun contains!4826 (List!18719 (_ BitVec 64)) Bool)

(assert (=> b!920609 (= res!620925 (contains!4826 Nil!18716 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920610 () Bool)

(declare-fun e!516696 () Bool)

(assert (=> b!920610 (= e!516696 tp_is_empty!19559)))

(declare-fun b!920611 () Bool)

(assert (=> b!920611 (= e!516699 e!516700)))

(declare-fun res!620931 () Bool)

(assert (=> b!920611 (=> (not res!620931) (not e!516700))))

(declare-fun contains!4827 (ListLongMap!11587 (_ BitVec 64)) Bool)

(assert (=> b!920611 (= res!620931 (contains!4827 lt!413308 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9298 0))(
  ( (ValueCellFull!9298 (v!12348 V!31043)) (EmptyCell!9298) )
))
(declare-datatypes ((array!55112 0))(
  ( (array!55113 (arr!26497 (Array (_ BitVec 32) ValueCell!9298)) (size!26957 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55112)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31043)

(declare-fun minValue!1173 () V!31043)

(declare-fun getCurrentListMap!3031 (array!55110 array!55112 (_ BitVec 32) (_ BitVec 32) V!31043 V!31043 (_ BitVec 32) Int) ListLongMap!11587)

(assert (=> b!920611 (= lt!413308 (getCurrentListMap!3031 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920613 () Bool)

(declare-fun e!516698 () Bool)

(declare-fun mapRes!31095 () Bool)

(assert (=> b!920613 (= e!516698 (and e!516701 mapRes!31095))))

(declare-fun condMapEmpty!31095 () Bool)

(declare-fun mapDefault!31095 () ValueCell!9298)


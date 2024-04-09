; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79186 () Bool)

(assert start!79186)

(declare-fun b_free!17371 () Bool)

(declare-fun b_next!17371 () Bool)

(assert (=> start!79186 (= b_free!17371 (not b_next!17371))))

(declare-fun tp!60554 () Bool)

(declare-fun b_and!28455 () Bool)

(assert (=> start!79186 (= tp!60554 b_and!28455)))

(declare-fun b!929010 () Bool)

(declare-fun e!521711 () Bool)

(declare-fun tp_is_empty!19879 () Bool)

(assert (=> b!929010 (= e!521711 tp_is_empty!19879)))

(declare-fun b!929011 () Bool)

(declare-fun e!521714 () Bool)

(declare-fun e!521710 () Bool)

(assert (=> b!929011 (= e!521714 e!521710)))

(declare-fun res!625703 () Bool)

(assert (=> b!929011 (=> (not res!625703) (not e!521710))))

(declare-datatypes ((V!31471 0))(
  ( (V!31472 (val!9990 Int)) )
))
(declare-datatypes ((tuple2!13166 0))(
  ( (tuple2!13167 (_1!6593 (_ BitVec 64)) (_2!6593 V!31471)) )
))
(declare-datatypes ((List!18989 0))(
  ( (Nil!18986) (Cons!18985 (h!20131 tuple2!13166) (t!27054 List!18989)) )
))
(declare-datatypes ((ListLongMap!11877 0))(
  ( (ListLongMap!11878 (toList!5954 List!18989)) )
))
(declare-fun lt!418964 () ListLongMap!11877)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4970 (ListLongMap!11877 (_ BitVec 64)) Bool)

(assert (=> b!929011 (= res!625703 (contains!4970 lt!418964 k!1099))))

(declare-datatypes ((array!55732 0))(
  ( (array!55733 (arr!26807 (Array (_ BitVec 32) (_ BitVec 64))) (size!27267 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55732)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9458 0))(
  ( (ValueCellFull!9458 (v!12508 V!31471)) (EmptyCell!9458) )
))
(declare-datatypes ((array!55734 0))(
  ( (array!55735 (arr!26808 (Array (_ BitVec 32) ValueCell!9458)) (size!27268 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55734)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31471)

(declare-fun minValue!1173 () V!31471)

(declare-fun getCurrentListMap!3164 (array!55732 array!55734 (_ BitVec 32) (_ BitVec 32) V!31471 V!31471 (_ BitVec 32) Int) ListLongMap!11877)

(assert (=> b!929011 (= lt!418964 (getCurrentListMap!3164 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!929012 () Bool)

(assert (=> b!929012 (= e!521710 false)))

(declare-fun lt!418965 () V!31471)

(declare-fun apply!749 (ListLongMap!11877 (_ BitVec 64)) V!31471)

(assert (=> b!929012 (= lt!418965 (apply!749 lt!418964 k!1099))))

(declare-fun b!929013 () Bool)

(declare-fun res!625701 () Bool)

(assert (=> b!929013 (=> (not res!625701) (not e!521714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55732 (_ BitVec 32)) Bool)

(assert (=> b!929013 (= res!625701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929014 () Bool)

(declare-fun res!625698 () Bool)

(assert (=> b!929014 (=> (not res!625698) (not e!521714))))

(assert (=> b!929014 (= res!625698 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27267 _keys!1487))))))

(declare-fun b!929015 () Bool)

(declare-fun res!625702 () Bool)

(assert (=> b!929015 (=> (not res!625702) (not e!521714))))

(assert (=> b!929015 (= res!625702 (and (= (size!27268 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27267 _keys!1487) (size!27268 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929016 () Bool)

(declare-fun e!521712 () Bool)

(declare-fun e!521715 () Bool)

(declare-fun mapRes!31575 () Bool)

(assert (=> b!929016 (= e!521712 (and e!521715 mapRes!31575))))

(declare-fun condMapEmpty!31575 () Bool)

(declare-fun mapDefault!31575 () ValueCell!9458)


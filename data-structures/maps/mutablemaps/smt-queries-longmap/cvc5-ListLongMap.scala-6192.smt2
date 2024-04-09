; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79288 () Bool)

(assert start!79288)

(declare-fun b_free!17473 () Bool)

(declare-fun b_next!17473 () Bool)

(assert (=> start!79288 (= b_free!17473 (not b_next!17473))))

(declare-fun tp!60861 () Bool)

(declare-fun b_and!28557 () Bool)

(assert (=> start!79288 (= tp!60861 b_and!28557)))

(declare-fun b!930612 () Bool)

(declare-fun res!626844 () Bool)

(declare-fun e!522632 () Bool)

(assert (=> b!930612 (=> (not res!626844) (not e!522632))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55932 0))(
  ( (array!55933 (arr!26907 (Array (_ BitVec 32) (_ BitVec 64))) (size!27367 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55932)

(assert (=> b!930612 (= res!626844 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27367 _keys!1487))))))

(declare-fun mapIsEmpty!31728 () Bool)

(declare-fun mapRes!31728 () Bool)

(assert (=> mapIsEmpty!31728 mapRes!31728))

(declare-fun b!930613 () Bool)

(declare-fun e!522633 () Bool)

(declare-fun tp_is_empty!19981 () Bool)

(assert (=> b!930613 (= e!522633 tp_is_empty!19981)))

(declare-fun b!930614 () Bool)

(declare-fun res!626842 () Bool)

(assert (=> b!930614 (=> (not res!626842) (not e!522632))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55932 (_ BitVec 32)) Bool)

(assert (=> b!930614 (= res!626842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!626846 () Bool)

(assert (=> start!79288 (=> (not res!626846) (not e!522632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79288 (= res!626846 (validMask!0 mask!1881))))

(assert (=> start!79288 e!522632))

(assert (=> start!79288 true))

(declare-datatypes ((V!31607 0))(
  ( (V!31608 (val!10041 Int)) )
))
(declare-datatypes ((ValueCell!9509 0))(
  ( (ValueCellFull!9509 (v!12559 V!31607)) (EmptyCell!9509) )
))
(declare-datatypes ((array!55934 0))(
  ( (array!55935 (arr!26908 (Array (_ BitVec 32) ValueCell!9509)) (size!27368 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55934)

(declare-fun e!522631 () Bool)

(declare-fun array_inv!20920 (array!55934) Bool)

(assert (=> start!79288 (and (array_inv!20920 _values!1231) e!522631)))

(assert (=> start!79288 tp!60861))

(declare-fun array_inv!20921 (array!55932) Bool)

(assert (=> start!79288 (array_inv!20921 _keys!1487)))

(assert (=> start!79288 tp_is_empty!19981))

(declare-fun b!930615 () Bool)

(declare-fun e!522629 () Bool)

(assert (=> b!930615 (= e!522629 false)))

(declare-fun lt!419244 () V!31607)

(declare-datatypes ((tuple2!13246 0))(
  ( (tuple2!13247 (_1!6633 (_ BitVec 64)) (_2!6633 V!31607)) )
))
(declare-datatypes ((List!19065 0))(
  ( (Nil!19062) (Cons!19061 (h!20207 tuple2!13246) (t!27130 List!19065)) )
))
(declare-datatypes ((ListLongMap!11957 0))(
  ( (ListLongMap!11958 (toList!5994 List!19065)) )
))
(declare-fun lt!419243 () ListLongMap!11957)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!781 (ListLongMap!11957 (_ BitVec 64)) V!31607)

(assert (=> b!930615 (= lt!419244 (apply!781 lt!419243 k!1099))))

(declare-fun b!930616 () Bool)

(declare-fun e!522630 () Bool)

(assert (=> b!930616 (= e!522631 (and e!522630 mapRes!31728))))

(declare-fun condMapEmpty!31728 () Bool)

(declare-fun mapDefault!31728 () ValueCell!9509)


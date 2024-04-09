; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79214 () Bool)

(assert start!79214)

(declare-fun b_free!17399 () Bool)

(declare-fun b_next!17399 () Bool)

(assert (=> start!79214 (= b_free!17399 (not b_next!17399))))

(declare-fun tp!60638 () Bool)

(declare-fun b_and!28483 () Bool)

(assert (=> start!79214 (= tp!60638 b_and!28483)))

(declare-fun b!929449 () Bool)

(declare-fun e!521966 () Bool)

(declare-fun tp_is_empty!19907 () Bool)

(assert (=> b!929449 (= e!521966 tp_is_empty!19907)))

(declare-fun b!929450 () Bool)

(declare-fun res!626013 () Bool)

(declare-fun e!521965 () Bool)

(assert (=> b!929450 (=> (not res!626013) (not e!521965))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929450 (= res!626013 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun res!626017 () Bool)

(declare-fun e!521967 () Bool)

(assert (=> start!79214 (=> (not res!626017) (not e!521967))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79214 (= res!626017 (validMask!0 mask!1881))))

(assert (=> start!79214 e!521967))

(assert (=> start!79214 true))

(assert (=> start!79214 tp_is_empty!19907))

(declare-datatypes ((V!31507 0))(
  ( (V!31508 (val!10004 Int)) )
))
(declare-datatypes ((ValueCell!9472 0))(
  ( (ValueCellFull!9472 (v!12522 V!31507)) (EmptyCell!9472) )
))
(declare-datatypes ((array!55786 0))(
  ( (array!55787 (arr!26834 (Array (_ BitVec 32) ValueCell!9472)) (size!27294 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55786)

(declare-fun e!521964 () Bool)

(declare-fun array_inv!20878 (array!55786) Bool)

(assert (=> start!79214 (and (array_inv!20878 _values!1231) e!521964)))

(assert (=> start!79214 tp!60638))

(declare-datatypes ((array!55788 0))(
  ( (array!55789 (arr!26835 (Array (_ BitVec 32) (_ BitVec 64))) (size!27295 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55788)

(declare-fun array_inv!20879 (array!55788) Bool)

(assert (=> start!79214 (array_inv!20879 _keys!1487)))

(declare-fun b!929451 () Bool)

(declare-fun res!626016 () Bool)

(assert (=> b!929451 (=> (not res!626016) (not e!521967))))

(assert (=> b!929451 (= res!626016 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27295 _keys!1487))))))

(declare-fun b!929452 () Bool)

(declare-fun e!521963 () Bool)

(assert (=> b!929452 (= e!521963 tp_is_empty!19907)))

(declare-fun b!929453 () Bool)

(declare-fun res!626011 () Bool)

(assert (=> b!929453 (=> (not res!626011) (not e!521967))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!929453 (= res!626011 (and (= (size!27294 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27295 _keys!1487) (size!27294 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929454 () Bool)

(assert (=> b!929454 (= e!521967 e!521965)))

(declare-fun res!626014 () Bool)

(assert (=> b!929454 (=> (not res!626014) (not e!521965))))

(declare-datatypes ((tuple2!13186 0))(
  ( (tuple2!13187 (_1!6603 (_ BitVec 64)) (_2!6603 V!31507)) )
))
(declare-datatypes ((List!19007 0))(
  ( (Nil!19004) (Cons!19003 (h!20149 tuple2!13186) (t!27072 List!19007)) )
))
(declare-datatypes ((ListLongMap!11897 0))(
  ( (ListLongMap!11898 (toList!5964 List!19007)) )
))
(declare-fun lt!419040 () ListLongMap!11897)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4980 (ListLongMap!11897 (_ BitVec 64)) Bool)

(assert (=> b!929454 (= res!626014 (contains!4980 lt!419040 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31507)

(declare-fun minValue!1173 () V!31507)

(declare-fun getCurrentListMap!3174 (array!55788 array!55786 (_ BitVec 32) (_ BitVec 32) V!31507 V!31507 (_ BitVec 32) Int) ListLongMap!11897)

(assert (=> b!929454 (= lt!419040 (getCurrentListMap!3174 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!929455 () Bool)

(declare-fun mapRes!31617 () Bool)

(assert (=> b!929455 (= e!521964 (and e!521966 mapRes!31617))))

(declare-fun condMapEmpty!31617 () Bool)

(declare-fun mapDefault!31617 () ValueCell!9472)


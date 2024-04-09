; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79216 () Bool)

(assert start!79216)

(declare-fun b_free!17401 () Bool)

(declare-fun b_next!17401 () Bool)

(assert (=> start!79216 (= b_free!17401 (not b_next!17401))))

(declare-fun tp!60645 () Bool)

(declare-fun b_and!28485 () Bool)

(assert (=> start!79216 (= tp!60645 b_and!28485)))

(declare-fun mapNonEmpty!31620 () Bool)

(declare-fun mapRes!31620 () Bool)

(declare-fun tp!60644 () Bool)

(declare-fun e!521983 () Bool)

(assert (=> mapNonEmpty!31620 (= mapRes!31620 (and tp!60644 e!521983))))

(declare-datatypes ((V!31511 0))(
  ( (V!31512 (val!10005 Int)) )
))
(declare-datatypes ((ValueCell!9473 0))(
  ( (ValueCellFull!9473 (v!12523 V!31511)) (EmptyCell!9473) )
))
(declare-fun mapRest!31620 () (Array (_ BitVec 32) ValueCell!9473))

(declare-datatypes ((array!55790 0))(
  ( (array!55791 (arr!26836 (Array (_ BitVec 32) ValueCell!9473)) (size!27296 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55790)

(declare-fun mapKey!31620 () (_ BitVec 32))

(declare-fun mapValue!31620 () ValueCell!9473)

(assert (=> mapNonEmpty!31620 (= (arr!26836 _values!1231) (store mapRest!31620 mapKey!31620 mapValue!31620))))

(declare-fun b!929482 () Bool)

(declare-fun e!521980 () Bool)

(assert (=> b!929482 (= e!521980 false)))

(declare-fun lt!419045 () Bool)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!55792 0))(
  ( (array!55793 (arr!26837 (Array (_ BitVec 32) (_ BitVec 64))) (size!27297 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55792)

(declare-fun zeroValue!1173 () V!31511)

(declare-fun minValue!1173 () V!31511)

(declare-datatypes ((tuple2!13188 0))(
  ( (tuple2!13189 (_1!6604 (_ BitVec 64)) (_2!6604 V!31511)) )
))
(declare-datatypes ((List!19008 0))(
  ( (Nil!19005) (Cons!19004 (h!20150 tuple2!13188) (t!27073 List!19008)) )
))
(declare-datatypes ((ListLongMap!11899 0))(
  ( (ListLongMap!11900 (toList!5965 List!19008)) )
))
(declare-fun contains!4981 (ListLongMap!11899 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3175 (array!55792 array!55790 (_ BitVec 32) (_ BitVec 32) V!31511 V!31511 (_ BitVec 32) Int) ListLongMap!11899)

(assert (=> b!929482 (= lt!419045 (contains!4981 (getCurrentListMap!3175 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k!1099))))

(declare-fun b!929483 () Bool)

(declare-fun res!626037 () Bool)

(assert (=> b!929483 (=> (not res!626037) (not e!521980))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929483 (= res!626037 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!929484 () Bool)

(declare-fun tp_is_empty!19909 () Bool)

(assert (=> b!929484 (= e!521983 tp_is_empty!19909)))

(declare-fun res!626042 () Bool)

(declare-fun e!521984 () Bool)

(assert (=> start!79216 (=> (not res!626042) (not e!521984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79216 (= res!626042 (validMask!0 mask!1881))))

(assert (=> start!79216 e!521984))

(assert (=> start!79216 true))

(assert (=> start!79216 tp_is_empty!19909))

(declare-fun e!521981 () Bool)

(declare-fun array_inv!20880 (array!55790) Bool)

(assert (=> start!79216 (and (array_inv!20880 _values!1231) e!521981)))

(assert (=> start!79216 tp!60645))

(declare-fun array_inv!20881 (array!55792) Bool)

(assert (=> start!79216 (array_inv!20881 _keys!1487)))

(declare-fun b!929485 () Bool)

(declare-fun res!626039 () Bool)

(assert (=> b!929485 (=> (not res!626039) (not e!521984))))

(declare-datatypes ((List!19009 0))(
  ( (Nil!19006) (Cons!19005 (h!20151 (_ BitVec 64)) (t!27074 List!19009)) )
))
(declare-fun arrayNoDuplicates!0 (array!55792 (_ BitVec 32) List!19009) Bool)

(assert (=> b!929485 (= res!626039 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19006))))

(declare-fun b!929486 () Bool)

(declare-fun res!626038 () Bool)

(assert (=> b!929486 (=> (not res!626038) (not e!521980))))

(declare-fun v!791 () V!31511)

(declare-fun lt!419046 () ListLongMap!11899)

(declare-fun apply!756 (ListLongMap!11899 (_ BitVec 64)) V!31511)

(assert (=> b!929486 (= res!626038 (= (apply!756 lt!419046 k!1099) v!791))))

(declare-fun b!929487 () Bool)

(declare-fun res!626041 () Bool)

(assert (=> b!929487 (=> (not res!626041) (not e!521984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55792 (_ BitVec 32)) Bool)

(assert (=> b!929487 (= res!626041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929488 () Bool)

(declare-fun e!521982 () Bool)

(assert (=> b!929488 (= e!521981 (and e!521982 mapRes!31620))))

(declare-fun condMapEmpty!31620 () Bool)

(declare-fun mapDefault!31620 () ValueCell!9473)


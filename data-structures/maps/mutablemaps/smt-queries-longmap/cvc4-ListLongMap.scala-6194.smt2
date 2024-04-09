; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79304 () Bool)

(assert start!79304)

(declare-fun b_free!17489 () Bool)

(declare-fun b_next!17489 () Bool)

(assert (=> start!79304 (= b_free!17489 (not b_next!17489))))

(declare-fun tp!60909 () Bool)

(declare-fun b_and!28573 () Bool)

(assert (=> start!79304 (= tp!60909 b_and!28573)))

(declare-fun mapIsEmpty!31752 () Bool)

(declare-fun mapRes!31752 () Bool)

(assert (=> mapIsEmpty!31752 mapRes!31752))

(declare-fun b!930828 () Bool)

(declare-fun e!522774 () Bool)

(declare-fun tp_is_empty!19997 () Bool)

(assert (=> b!930828 (= e!522774 tp_is_empty!19997)))

(declare-fun b!930829 () Bool)

(declare-fun res!626990 () Bool)

(declare-fun e!522776 () Bool)

(assert (=> b!930829 (=> (not res!626990) (not e!522776))))

(declare-datatypes ((array!55962 0))(
  ( (array!55963 (arr!26922 (Array (_ BitVec 32) (_ BitVec 64))) (size!27382 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55962)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55962 (_ BitVec 32)) Bool)

(assert (=> b!930829 (= res!626990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930830 () Bool)

(declare-fun e!522772 () Bool)

(assert (=> b!930830 (= e!522772 false)))

(declare-datatypes ((V!31627 0))(
  ( (V!31628 (val!10049 Int)) )
))
(declare-fun lt!419291 () V!31627)

(declare-datatypes ((tuple2!13262 0))(
  ( (tuple2!13263 (_1!6641 (_ BitVec 64)) (_2!6641 V!31627)) )
))
(declare-datatypes ((List!19078 0))(
  ( (Nil!19075) (Cons!19074 (h!20220 tuple2!13262) (t!27143 List!19078)) )
))
(declare-datatypes ((ListLongMap!11973 0))(
  ( (ListLongMap!11974 (toList!6002 List!19078)) )
))
(declare-fun lt!419292 () ListLongMap!11973)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!789 (ListLongMap!11973 (_ BitVec 64)) V!31627)

(assert (=> b!930830 (= lt!419291 (apply!789 lt!419292 k!1099))))

(declare-fun b!930831 () Bool)

(declare-fun e!522777 () Bool)

(assert (=> b!930831 (= e!522777 tp_is_empty!19997)))

(declare-fun b!930832 () Bool)

(declare-fun res!626986 () Bool)

(assert (=> b!930832 (=> (not res!626986) (not e!522776))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9517 0))(
  ( (ValueCellFull!9517 (v!12567 V!31627)) (EmptyCell!9517) )
))
(declare-datatypes ((array!55964 0))(
  ( (array!55965 (arr!26923 (Array (_ BitVec 32) ValueCell!9517)) (size!27383 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55964)

(assert (=> b!930832 (= res!626986 (and (= (size!27383 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27382 _keys!1487) (size!27383 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930833 () Bool)

(declare-fun e!522773 () Bool)

(assert (=> b!930833 (= e!522773 (and e!522777 mapRes!31752))))

(declare-fun condMapEmpty!31752 () Bool)

(declare-fun mapDefault!31752 () ValueCell!9517)


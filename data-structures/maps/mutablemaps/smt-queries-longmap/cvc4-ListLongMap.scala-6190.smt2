; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79280 () Bool)

(assert start!79280)

(declare-fun b_free!17465 () Bool)

(declare-fun b_next!17465 () Bool)

(assert (=> start!79280 (= b_free!17465 (not b_next!17465))))

(declare-fun tp!60836 () Bool)

(declare-fun b_and!28549 () Bool)

(assert (=> start!79280 (= tp!60836 b_and!28549)))

(declare-fun mapIsEmpty!31716 () Bool)

(declare-fun mapRes!31716 () Bool)

(assert (=> mapIsEmpty!31716 mapRes!31716))

(declare-fun b!930504 () Bool)

(declare-fun e!522560 () Bool)

(declare-fun tp_is_empty!19973 () Bool)

(assert (=> b!930504 (= e!522560 tp_is_empty!19973)))

(declare-fun mapNonEmpty!31716 () Bool)

(declare-fun tp!60837 () Bool)

(assert (=> mapNonEmpty!31716 (= mapRes!31716 (and tp!60837 e!522560))))

(declare-fun mapKey!31716 () (_ BitVec 32))

(declare-datatypes ((V!31595 0))(
  ( (V!31596 (val!10037 Int)) )
))
(declare-datatypes ((ValueCell!9505 0))(
  ( (ValueCellFull!9505 (v!12555 V!31595)) (EmptyCell!9505) )
))
(declare-fun mapValue!31716 () ValueCell!9505)

(declare-fun mapRest!31716 () (Array (_ BitVec 32) ValueCell!9505))

(declare-datatypes ((array!55916 0))(
  ( (array!55917 (arr!26899 (Array (_ BitVec 32) ValueCell!9505)) (size!27359 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55916)

(assert (=> mapNonEmpty!31716 (= (arr!26899 _values!1231) (store mapRest!31716 mapKey!31716 mapValue!31716))))

(declare-fun b!930505 () Bool)

(declare-fun res!626772 () Bool)

(declare-fun e!522557 () Bool)

(assert (=> b!930505 (=> (not res!626772) (not e!522557))))

(declare-datatypes ((array!55918 0))(
  ( (array!55919 (arr!26900 (Array (_ BitVec 32) (_ BitVec 64))) (size!27360 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55918)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55918 (_ BitVec 32)) Bool)

(assert (=> b!930505 (= res!626772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930506 () Bool)

(declare-fun res!626771 () Bool)

(assert (=> b!930506 (=> (not res!626771) (not e!522557))))

(declare-datatypes ((List!19058 0))(
  ( (Nil!19055) (Cons!19054 (h!20200 (_ BitVec 64)) (t!27123 List!19058)) )
))
(declare-fun arrayNoDuplicates!0 (array!55918 (_ BitVec 32) List!19058) Bool)

(assert (=> b!930506 (= res!626771 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19055))))

(declare-fun b!930507 () Bool)

(declare-fun res!626769 () Bool)

(assert (=> b!930507 (=> (not res!626769) (not e!522557))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930507 (= res!626769 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27360 _keys!1487))))))

(declare-fun res!626773 () Bool)

(assert (=> start!79280 (=> (not res!626773) (not e!522557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79280 (= res!626773 (validMask!0 mask!1881))))

(assert (=> start!79280 e!522557))

(assert (=> start!79280 true))

(declare-fun e!522559 () Bool)

(declare-fun array_inv!20916 (array!55916) Bool)

(assert (=> start!79280 (and (array_inv!20916 _values!1231) e!522559)))

(assert (=> start!79280 tp!60836))

(declare-fun array_inv!20917 (array!55918) Bool)

(assert (=> start!79280 (array_inv!20917 _keys!1487)))

(assert (=> start!79280 tp_is_empty!19973))

(declare-fun b!930508 () Bool)

(declare-fun e!522558 () Bool)

(assert (=> b!930508 (= e!522558 false)))

(declare-fun lt!419219 () V!31595)

(declare-datatypes ((tuple2!13238 0))(
  ( (tuple2!13239 (_1!6629 (_ BitVec 64)) (_2!6629 V!31595)) )
))
(declare-datatypes ((List!19059 0))(
  ( (Nil!19056) (Cons!19055 (h!20201 tuple2!13238) (t!27124 List!19059)) )
))
(declare-datatypes ((ListLongMap!11949 0))(
  ( (ListLongMap!11950 (toList!5990 List!19059)) )
))
(declare-fun lt!419220 () ListLongMap!11949)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!778 (ListLongMap!11949 (_ BitVec 64)) V!31595)

(assert (=> b!930508 (= lt!419219 (apply!778 lt!419220 k!1099))))

(declare-fun b!930509 () Bool)

(declare-fun e!522561 () Bool)

(assert (=> b!930509 (= e!522559 (and e!522561 mapRes!31716))))

(declare-fun condMapEmpty!31716 () Bool)

(declare-fun mapDefault!31716 () ValueCell!9505)


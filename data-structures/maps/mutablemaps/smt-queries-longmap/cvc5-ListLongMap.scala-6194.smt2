; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79300 () Bool)

(assert start!79300)

(declare-fun b_free!17485 () Bool)

(declare-fun b_next!17485 () Bool)

(assert (=> start!79300 (= b_free!17485 (not b_next!17485))))

(declare-fun tp!60896 () Bool)

(declare-fun b_and!28569 () Bool)

(assert (=> start!79300 (= tp!60896 b_and!28569)))

(declare-fun mapIsEmpty!31746 () Bool)

(declare-fun mapRes!31746 () Bool)

(assert (=> mapIsEmpty!31746 mapRes!31746))

(declare-fun res!626951 () Bool)

(declare-fun e!522738 () Bool)

(assert (=> start!79300 (=> (not res!626951) (not e!522738))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79300 (= res!626951 (validMask!0 mask!1881))))

(assert (=> start!79300 e!522738))

(assert (=> start!79300 true))

(declare-datatypes ((V!31623 0))(
  ( (V!31624 (val!10047 Int)) )
))
(declare-datatypes ((ValueCell!9515 0))(
  ( (ValueCellFull!9515 (v!12565 V!31623)) (EmptyCell!9515) )
))
(declare-datatypes ((array!55954 0))(
  ( (array!55955 (arr!26918 (Array (_ BitVec 32) ValueCell!9515)) (size!27378 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55954)

(declare-fun e!522736 () Bool)

(declare-fun array_inv!20930 (array!55954) Bool)

(assert (=> start!79300 (and (array_inv!20930 _values!1231) e!522736)))

(assert (=> start!79300 tp!60896))

(declare-datatypes ((array!55956 0))(
  ( (array!55957 (arr!26919 (Array (_ BitVec 32) (_ BitVec 64))) (size!27379 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55956)

(declare-fun array_inv!20931 (array!55956) Bool)

(assert (=> start!79300 (array_inv!20931 _keys!1487)))

(declare-fun tp_is_empty!19993 () Bool)

(assert (=> start!79300 tp_is_empty!19993))

(declare-fun b!930774 () Bool)

(declare-fun e!522737 () Bool)

(assert (=> b!930774 (= e!522737 false)))

(declare-fun lt!419279 () V!31623)

(declare-datatypes ((tuple2!13258 0))(
  ( (tuple2!13259 (_1!6639 (_ BitVec 64)) (_2!6639 V!31623)) )
))
(declare-datatypes ((List!19075 0))(
  ( (Nil!19072) (Cons!19071 (h!20217 tuple2!13258) (t!27140 List!19075)) )
))
(declare-datatypes ((ListLongMap!11969 0))(
  ( (ListLongMap!11970 (toList!6000 List!19075)) )
))
(declare-fun lt!419280 () ListLongMap!11969)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!787 (ListLongMap!11969 (_ BitVec 64)) V!31623)

(assert (=> b!930774 (= lt!419279 (apply!787 lt!419280 k!1099))))

(declare-fun mapNonEmpty!31746 () Bool)

(declare-fun tp!60897 () Bool)

(declare-fun e!522739 () Bool)

(assert (=> mapNonEmpty!31746 (= mapRes!31746 (and tp!60897 e!522739))))

(declare-fun mapKey!31746 () (_ BitVec 32))

(declare-fun mapValue!31746 () ValueCell!9515)

(declare-fun mapRest!31746 () (Array (_ BitVec 32) ValueCell!9515))

(assert (=> mapNonEmpty!31746 (= (arr!26918 _values!1231) (store mapRest!31746 mapKey!31746 mapValue!31746))))

(declare-fun b!930775 () Bool)

(declare-fun res!626954 () Bool)

(assert (=> b!930775 (=> (not res!626954) (not e!522738))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930775 (= res!626954 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27379 _keys!1487))))))

(declare-fun b!930776 () Bool)

(declare-fun e!522741 () Bool)

(assert (=> b!930776 (= e!522736 (and e!522741 mapRes!31746))))

(declare-fun condMapEmpty!31746 () Bool)

(declare-fun mapDefault!31746 () ValueCell!9515)


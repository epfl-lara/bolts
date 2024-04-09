; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79172 () Bool)

(assert start!79172)

(declare-fun b_free!17357 () Bool)

(declare-fun b_next!17357 () Bool)

(assert (=> start!79172 (= b_free!17357 (not b_next!17357))))

(declare-fun tp!60513 () Bool)

(declare-fun b_and!28441 () Bool)

(assert (=> start!79172 (= tp!60513 b_and!28441)))

(declare-fun b!928821 () Bool)

(declare-fun res!625573 () Bool)

(declare-fun e!521589 () Bool)

(assert (=> b!928821 (=> (not res!625573) (not e!521589))))

(declare-datatypes ((array!55706 0))(
  ( (array!55707 (arr!26794 (Array (_ BitVec 32) (_ BitVec 64))) (size!27254 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55706)

(declare-datatypes ((List!18977 0))(
  ( (Nil!18974) (Cons!18973 (h!20119 (_ BitVec 64)) (t!27042 List!18977)) )
))
(declare-fun arrayNoDuplicates!0 (array!55706 (_ BitVec 32) List!18977) Bool)

(assert (=> b!928821 (= res!625573 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18974))))

(declare-fun b!928822 () Bool)

(declare-fun e!521584 () Bool)

(declare-fun tp_is_empty!19865 () Bool)

(assert (=> b!928822 (= e!521584 tp_is_empty!19865)))

(declare-fun mapIsEmpty!31554 () Bool)

(declare-fun mapRes!31554 () Bool)

(assert (=> mapIsEmpty!31554 mapRes!31554))

(declare-fun res!625577 () Bool)

(assert (=> start!79172 (=> (not res!625577) (not e!521589))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79172 (= res!625577 (validMask!0 mask!1881))))

(assert (=> start!79172 e!521589))

(assert (=> start!79172 true))

(declare-datatypes ((V!31451 0))(
  ( (V!31452 (val!9983 Int)) )
))
(declare-datatypes ((ValueCell!9451 0))(
  ( (ValueCellFull!9451 (v!12501 V!31451)) (EmptyCell!9451) )
))
(declare-datatypes ((array!55708 0))(
  ( (array!55709 (arr!26795 (Array (_ BitVec 32) ValueCell!9451)) (size!27255 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55708)

(declare-fun e!521588 () Bool)

(declare-fun array_inv!20852 (array!55708) Bool)

(assert (=> start!79172 (and (array_inv!20852 _values!1231) e!521588)))

(assert (=> start!79172 tp!60513))

(declare-fun array_inv!20853 (array!55706) Bool)

(assert (=> start!79172 (array_inv!20853 _keys!1487)))

(assert (=> start!79172 tp_is_empty!19865))

(declare-fun b!928823 () Bool)

(declare-fun e!521586 () Bool)

(assert (=> b!928823 (= e!521586 false)))

(declare-fun lt!418922 () V!31451)

(declare-datatypes ((tuple2!13154 0))(
  ( (tuple2!13155 (_1!6587 (_ BitVec 64)) (_2!6587 V!31451)) )
))
(declare-datatypes ((List!18978 0))(
  ( (Nil!18975) (Cons!18974 (h!20120 tuple2!13154) (t!27043 List!18978)) )
))
(declare-datatypes ((ListLongMap!11865 0))(
  ( (ListLongMap!11866 (toList!5948 List!18978)) )
))
(declare-fun lt!418923 () ListLongMap!11865)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!743 (ListLongMap!11865 (_ BitVec 64)) V!31451)

(assert (=> b!928823 (= lt!418922 (apply!743 lt!418923 k!1099))))

(declare-fun b!928824 () Bool)

(declare-fun e!521585 () Bool)

(assert (=> b!928824 (= e!521588 (and e!521585 mapRes!31554))))

(declare-fun condMapEmpty!31554 () Bool)

(declare-fun mapDefault!31554 () ValueCell!9451)


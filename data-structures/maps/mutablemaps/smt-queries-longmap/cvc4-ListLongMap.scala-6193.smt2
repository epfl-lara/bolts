; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79298 () Bool)

(assert start!79298)

(declare-fun b_free!17483 () Bool)

(declare-fun b_next!17483 () Bool)

(assert (=> start!79298 (= b_free!17483 (not b_next!17483))))

(declare-fun tp!60891 () Bool)

(declare-fun b_and!28567 () Bool)

(assert (=> start!79298 (= tp!60891 b_and!28567)))

(declare-fun res!626932 () Bool)

(declare-fun e!522718 () Bool)

(assert (=> start!79298 (=> (not res!626932) (not e!522718))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79298 (= res!626932 (validMask!0 mask!1881))))

(assert (=> start!79298 e!522718))

(assert (=> start!79298 true))

(declare-datatypes ((V!31619 0))(
  ( (V!31620 (val!10046 Int)) )
))
(declare-datatypes ((ValueCell!9514 0))(
  ( (ValueCellFull!9514 (v!12564 V!31619)) (EmptyCell!9514) )
))
(declare-datatypes ((array!55950 0))(
  ( (array!55951 (arr!26916 (Array (_ BitVec 32) ValueCell!9514)) (size!27376 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55950)

(declare-fun e!522723 () Bool)

(declare-fun array_inv!20928 (array!55950) Bool)

(assert (=> start!79298 (and (array_inv!20928 _values!1231) e!522723)))

(assert (=> start!79298 tp!60891))

(declare-datatypes ((array!55952 0))(
  ( (array!55953 (arr!26917 (Array (_ BitVec 32) (_ BitVec 64))) (size!27377 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55952)

(declare-fun array_inv!20929 (array!55952) Bool)

(assert (=> start!79298 (array_inv!20929 _keys!1487)))

(declare-fun tp_is_empty!19991 () Bool)

(assert (=> start!79298 tp_is_empty!19991))

(declare-fun b!930747 () Bool)

(declare-fun res!626933 () Bool)

(assert (=> b!930747 (=> (not res!626933) (not e!522718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55952 (_ BitVec 32)) Bool)

(assert (=> b!930747 (= res!626933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930748 () Bool)

(declare-fun e!522720 () Bool)

(assert (=> b!930748 (= e!522718 e!522720)))

(declare-fun res!626936 () Bool)

(assert (=> b!930748 (=> (not res!626936) (not e!522720))))

(declare-datatypes ((tuple2!13256 0))(
  ( (tuple2!13257 (_1!6638 (_ BitVec 64)) (_2!6638 V!31619)) )
))
(declare-datatypes ((List!19073 0))(
  ( (Nil!19070) (Cons!19069 (h!20215 tuple2!13256) (t!27138 List!19073)) )
))
(declare-datatypes ((ListLongMap!11967 0))(
  ( (ListLongMap!11968 (toList!5999 List!19073)) )
))
(declare-fun lt!419273 () ListLongMap!11967)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5005 (ListLongMap!11967 (_ BitVec 64)) Bool)

(assert (=> b!930748 (= res!626936 (contains!5005 lt!419273 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31619)

(declare-fun minValue!1173 () V!31619)

(declare-fun getCurrentListMap!3199 (array!55952 array!55950 (_ BitVec 32) (_ BitVec 32) V!31619 V!31619 (_ BitVec 32) Int) ListLongMap!11967)

(assert (=> b!930748 (= lt!419273 (getCurrentListMap!3199 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930749 () Bool)

(declare-fun e!522722 () Bool)

(assert (=> b!930749 (= e!522722 tp_is_empty!19991)))

(declare-fun mapNonEmpty!31743 () Bool)

(declare-fun mapRes!31743 () Bool)

(declare-fun tp!60890 () Bool)

(declare-fun e!522721 () Bool)

(assert (=> mapNonEmpty!31743 (= mapRes!31743 (and tp!60890 e!522721))))

(declare-fun mapRest!31743 () (Array (_ BitVec 32) ValueCell!9514))

(declare-fun mapKey!31743 () (_ BitVec 32))

(declare-fun mapValue!31743 () ValueCell!9514)

(assert (=> mapNonEmpty!31743 (= (arr!26916 _values!1231) (store mapRest!31743 mapKey!31743 mapValue!31743))))

(declare-fun b!930750 () Bool)

(declare-fun res!626934 () Bool)

(assert (=> b!930750 (=> (not res!626934) (not e!522718))))

(assert (=> b!930750 (= res!626934 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27377 _keys!1487))))))

(declare-fun b!930751 () Bool)

(assert (=> b!930751 (= e!522721 tp_is_empty!19991)))

(declare-fun mapIsEmpty!31743 () Bool)

(assert (=> mapIsEmpty!31743 mapRes!31743))

(declare-fun b!930752 () Bool)

(declare-fun res!626931 () Bool)

(assert (=> b!930752 (=> (not res!626931) (not e!522718))))

(assert (=> b!930752 (= res!626931 (and (= (size!27376 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27377 _keys!1487) (size!27376 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930753 () Bool)

(assert (=> b!930753 (= e!522720 false)))

(declare-fun lt!419274 () V!31619)

(declare-fun apply!786 (ListLongMap!11967 (_ BitVec 64)) V!31619)

(assert (=> b!930753 (= lt!419274 (apply!786 lt!419273 k!1099))))

(declare-fun b!930754 () Bool)

(declare-fun res!626935 () Bool)

(assert (=> b!930754 (=> (not res!626935) (not e!522718))))

(declare-datatypes ((List!19074 0))(
  ( (Nil!19071) (Cons!19070 (h!20216 (_ BitVec 64)) (t!27139 List!19074)) )
))
(declare-fun arrayNoDuplicates!0 (array!55952 (_ BitVec 32) List!19074) Bool)

(assert (=> b!930754 (= res!626935 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19071))))

(declare-fun b!930755 () Bool)

(assert (=> b!930755 (= e!522723 (and e!522722 mapRes!31743))))

(declare-fun condMapEmpty!31743 () Bool)

(declare-fun mapDefault!31743 () ValueCell!9514)


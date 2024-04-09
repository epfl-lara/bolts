; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79196 () Bool)

(assert start!79196)

(declare-fun b_free!17381 () Bool)

(declare-fun b_next!17381 () Bool)

(assert (=> start!79196 (= b_free!17381 (not b_next!17381))))

(declare-fun tp!60585 () Bool)

(declare-fun b_and!28465 () Bool)

(assert (=> start!79196 (= tp!60585 b_and!28465)))

(declare-fun b!929153 () Bool)

(declare-fun res!625797 () Bool)

(declare-fun e!521804 () Bool)

(assert (=> b!929153 (=> (not res!625797) (not e!521804))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55750 0))(
  ( (array!55751 (arr!26816 (Array (_ BitVec 32) (_ BitVec 64))) (size!27276 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55750)

(assert (=> b!929153 (= res!625797 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27276 _keys!1487))))))

(declare-fun b!929154 () Bool)

(declare-fun e!521802 () Bool)

(assert (=> b!929154 (= e!521804 e!521802)))

(declare-fun res!625799 () Bool)

(assert (=> b!929154 (=> (not res!625799) (not e!521802))))

(declare-datatypes ((V!31483 0))(
  ( (V!31484 (val!9995 Int)) )
))
(declare-datatypes ((tuple2!13172 0))(
  ( (tuple2!13173 (_1!6596 (_ BitVec 64)) (_2!6596 V!31483)) )
))
(declare-datatypes ((List!18994 0))(
  ( (Nil!18991) (Cons!18990 (h!20136 tuple2!13172) (t!27059 List!18994)) )
))
(declare-datatypes ((ListLongMap!11883 0))(
  ( (ListLongMap!11884 (toList!5957 List!18994)) )
))
(declare-fun lt!418986 () ListLongMap!11883)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4973 (ListLongMap!11883 (_ BitVec 64)) Bool)

(assert (=> b!929154 (= res!625799 (contains!4973 lt!418986 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9463 0))(
  ( (ValueCellFull!9463 (v!12513 V!31483)) (EmptyCell!9463) )
))
(declare-datatypes ((array!55752 0))(
  ( (array!55753 (arr!26817 (Array (_ BitVec 32) ValueCell!9463)) (size!27277 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55752)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31483)

(declare-fun minValue!1173 () V!31483)

(declare-fun getCurrentListMap!3167 (array!55750 array!55752 (_ BitVec 32) (_ BitVec 32) V!31483 V!31483 (_ BitVec 32) Int) ListLongMap!11883)

(assert (=> b!929154 (= lt!418986 (getCurrentListMap!3167 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!929155 () Bool)

(declare-fun res!625800 () Bool)

(assert (=> b!929155 (=> (not res!625800) (not e!521804))))

(assert (=> b!929155 (= res!625800 (and (= (size!27277 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27276 _keys!1487) (size!27277 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929156 () Bool)

(declare-fun e!521800 () Bool)

(declare-fun tp_is_empty!19889 () Bool)

(assert (=> b!929156 (= e!521800 tp_is_empty!19889)))

(declare-fun b!929157 () Bool)

(declare-fun e!521805 () Bool)

(declare-fun mapRes!31590 () Bool)

(assert (=> b!929157 (= e!521805 (and e!521800 mapRes!31590))))

(declare-fun condMapEmpty!31590 () Bool)

(declare-fun mapDefault!31590 () ValueCell!9463)


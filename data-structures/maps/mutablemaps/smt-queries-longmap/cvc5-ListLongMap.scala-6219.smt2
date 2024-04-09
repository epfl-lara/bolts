; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79508 () Bool)

(assert start!79508)

(declare-fun b_free!17635 () Bool)

(declare-fun b_next!17635 () Bool)

(assert (=> start!79508 (= b_free!17635 (not b_next!17635))))

(declare-fun tp!61352 () Bool)

(declare-fun b_and!28855 () Bool)

(assert (=> start!79508 (= tp!61352 b_and!28855)))

(declare-fun b!934080 () Bool)

(declare-fun e!524525 () Bool)

(declare-fun tp_is_empty!20143 () Bool)

(assert (=> b!934080 (= e!524525 tp_is_empty!20143)))

(declare-fun b!934081 () Bool)

(declare-fun res!629226 () Bool)

(declare-fun e!524523 () Bool)

(assert (=> b!934081 (=> (not res!629226) (not e!524523))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56244 0))(
  ( (array!56245 (arr!27061 (Array (_ BitVec 32) (_ BitVec 64))) (size!27521 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56244)

(assert (=> b!934081 (= res!629226 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27521 _keys!1487))))))

(declare-fun b!934082 () Bool)

(declare-fun e!524521 () Bool)

(assert (=> b!934082 (= e!524523 e!524521)))

(declare-fun res!629230 () Bool)

(assert (=> b!934082 (=> (not res!629230) (not e!524521))))

(declare-datatypes ((V!31823 0))(
  ( (V!31824 (val!10122 Int)) )
))
(declare-datatypes ((tuple2!13380 0))(
  ( (tuple2!13381 (_1!6700 (_ BitVec 64)) (_2!6700 V!31823)) )
))
(declare-datatypes ((List!19187 0))(
  ( (Nil!19184) (Cons!19183 (h!20329 tuple2!13380) (t!27374 List!19187)) )
))
(declare-datatypes ((ListLongMap!12091 0))(
  ( (ListLongMap!12092 (toList!6061 List!19187)) )
))
(declare-fun lt!420821 () ListLongMap!12091)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5062 (ListLongMap!12091 (_ BitVec 64)) Bool)

(assert (=> b!934082 (= res!629230 (contains!5062 lt!420821 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9590 0))(
  ( (ValueCellFull!9590 (v!12642 V!31823)) (EmptyCell!9590) )
))
(declare-datatypes ((array!56246 0))(
  ( (array!56247 (arr!27062 (Array (_ BitVec 32) ValueCell!9590)) (size!27522 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56246)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31823)

(declare-fun minValue!1173 () V!31823)

(declare-fun getCurrentListMap!3253 (array!56244 array!56246 (_ BitVec 32) (_ BitVec 32) V!31823 V!31823 (_ BitVec 32) Int) ListLongMap!12091)

(assert (=> b!934082 (= lt!420821 (getCurrentListMap!3253 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934083 () Bool)

(declare-fun res!629231 () Bool)

(assert (=> b!934083 (=> (not res!629231) (not e!524523))))

(assert (=> b!934083 (= res!629231 (and (= (size!27522 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27521 _keys!1487) (size!27522 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934084 () Bool)

(declare-fun res!629225 () Bool)

(assert (=> b!934084 (=> (not res!629225) (not e!524523))))

(declare-datatypes ((List!19188 0))(
  ( (Nil!19185) (Cons!19184 (h!20330 (_ BitVec 64)) (t!27375 List!19188)) )
))
(declare-fun arrayNoDuplicates!0 (array!56244 (_ BitVec 32) List!19188) Bool)

(assert (=> b!934084 (= res!629225 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19185))))

(declare-fun mapNonEmpty!31977 () Bool)

(declare-fun mapRes!31977 () Bool)

(declare-fun tp!61353 () Bool)

(assert (=> mapNonEmpty!31977 (= mapRes!31977 (and tp!61353 e!524525))))

(declare-fun mapRest!31977 () (Array (_ BitVec 32) ValueCell!9590))

(declare-fun mapKey!31977 () (_ BitVec 32))

(declare-fun mapValue!31977 () ValueCell!9590)

(assert (=> mapNonEmpty!31977 (= (arr!27062 _values!1231) (store mapRest!31977 mapKey!31977 mapValue!31977))))

(declare-fun b!934085 () Bool)

(declare-fun e!524526 () Bool)

(declare-fun e!524522 () Bool)

(assert (=> b!934085 (= e!524526 (and e!524522 mapRes!31977))))

(declare-fun condMapEmpty!31977 () Bool)

(declare-fun mapDefault!31977 () ValueCell!9590)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79270 () Bool)

(assert start!79270)

(declare-fun b_free!17455 () Bool)

(declare-fun b_next!17455 () Bool)

(assert (=> start!79270 (= b_free!17455 (not b_next!17455))))

(declare-fun tp!60807 () Bool)

(declare-fun b_and!28539 () Bool)

(assert (=> start!79270 (= tp!60807 b_and!28539)))

(declare-fun mapNonEmpty!31701 () Bool)

(declare-fun mapRes!31701 () Bool)

(declare-fun tp!60806 () Bool)

(declare-fun e!522467 () Bool)

(assert (=> mapNonEmpty!31701 (= mapRes!31701 (and tp!60806 e!522467))))

(declare-datatypes ((V!31583 0))(
  ( (V!31584 (val!10032 Int)) )
))
(declare-datatypes ((ValueCell!9500 0))(
  ( (ValueCellFull!9500 (v!12550 V!31583)) (EmptyCell!9500) )
))
(declare-fun mapValue!31701 () ValueCell!9500)

(declare-fun mapKey!31701 () (_ BitVec 32))

(declare-fun mapRest!31701 () (Array (_ BitVec 32) ValueCell!9500))

(declare-datatypes ((array!55896 0))(
  ( (array!55897 (arr!26889 (Array (_ BitVec 32) ValueCell!9500)) (size!27349 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55896)

(assert (=> mapNonEmpty!31701 (= (arr!26889 _values!1231) (store mapRest!31701 mapKey!31701 mapValue!31701))))

(declare-fun b!930369 () Bool)

(declare-fun tp_is_empty!19963 () Bool)

(assert (=> b!930369 (= e!522467 tp_is_empty!19963)))

(declare-fun b!930370 () Bool)

(declare-fun res!626679 () Bool)

(declare-fun e!522470 () Bool)

(assert (=> b!930370 (=> (not res!626679) (not e!522470))))

(declare-datatypes ((array!55898 0))(
  ( (array!55899 (arr!26890 (Array (_ BitVec 32) (_ BitVec 64))) (size!27350 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55898)

(declare-datatypes ((List!19050 0))(
  ( (Nil!19047) (Cons!19046 (h!20192 (_ BitVec 64)) (t!27115 List!19050)) )
))
(declare-fun arrayNoDuplicates!0 (array!55898 (_ BitVec 32) List!19050) Bool)

(assert (=> b!930370 (= res!626679 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19047))))

(declare-fun b!930371 () Bool)

(declare-fun e!522466 () Bool)

(assert (=> b!930371 (= e!522466 tp_is_empty!19963)))

(declare-fun b!930372 () Bool)

(declare-fun e!522469 () Bool)

(assert (=> b!930372 (= e!522469 false)))

(declare-fun lt!419190 () V!31583)

(declare-datatypes ((tuple2!13230 0))(
  ( (tuple2!13231 (_1!6625 (_ BitVec 64)) (_2!6625 V!31583)) )
))
(declare-datatypes ((List!19051 0))(
  ( (Nil!19048) (Cons!19047 (h!20193 tuple2!13230) (t!27116 List!19051)) )
))
(declare-datatypes ((ListLongMap!11941 0))(
  ( (ListLongMap!11942 (toList!5986 List!19051)) )
))
(declare-fun lt!419189 () ListLongMap!11941)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!774 (ListLongMap!11941 (_ BitVec 64)) V!31583)

(assert (=> b!930372 (= lt!419190 (apply!774 lt!419189 k!1099))))

(declare-fun b!930373 () Bool)

(declare-fun res!626684 () Bool)

(assert (=> b!930373 (=> (not res!626684) (not e!522470))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930373 (= res!626684 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27350 _keys!1487))))))

(declare-fun b!930375 () Bool)

(declare-fun e!522468 () Bool)

(assert (=> b!930375 (= e!522468 (and e!522466 mapRes!31701))))

(declare-fun condMapEmpty!31701 () Bool)

(declare-fun mapDefault!31701 () ValueCell!9500)


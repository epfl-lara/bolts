; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79246 () Bool)

(assert start!79246)

(declare-fun b_free!17431 () Bool)

(declare-fun b_next!17431 () Bool)

(assert (=> start!79246 (= b_free!17431 (not b_next!17431))))

(declare-fun tp!60735 () Bool)

(declare-fun b_and!28515 () Bool)

(assert (=> start!79246 (= tp!60735 b_and!28515)))

(declare-fun b!929979 () Bool)

(declare-fun res!626400 () Bool)

(declare-fun e!522250 () Bool)

(assert (=> b!929979 (=> (not res!626400) (not e!522250))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929979 (= res!626400 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!929980 () Bool)

(declare-fun e!522251 () Bool)

(assert (=> b!929980 (= e!522251 e!522250)))

(declare-fun res!626397 () Bool)

(assert (=> b!929980 (=> (not res!626397) (not e!522250))))

(declare-datatypes ((V!31551 0))(
  ( (V!31552 (val!10020 Int)) )
))
(declare-datatypes ((tuple2!13208 0))(
  ( (tuple2!13209 (_1!6614 (_ BitVec 64)) (_2!6614 V!31551)) )
))
(declare-datatypes ((List!19030 0))(
  ( (Nil!19027) (Cons!19026 (h!20172 tuple2!13208) (t!27095 List!19030)) )
))
(declare-datatypes ((ListLongMap!11919 0))(
  ( (ListLongMap!11920 (toList!5975 List!19030)) )
))
(declare-fun lt!419133 () ListLongMap!11919)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4989 (ListLongMap!11919 (_ BitVec 64)) Bool)

(assert (=> b!929980 (= res!626397 (contains!4989 lt!419133 k!1099))))

(declare-datatypes ((array!55848 0))(
  ( (array!55849 (arr!26865 (Array (_ BitVec 32) (_ BitVec 64))) (size!27325 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55848)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9488 0))(
  ( (ValueCellFull!9488 (v!12538 V!31551)) (EmptyCell!9488) )
))
(declare-datatypes ((array!55850 0))(
  ( (array!55851 (arr!26866 (Array (_ BitVec 32) ValueCell!9488)) (size!27326 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55850)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31551)

(declare-fun minValue!1173 () V!31551)

(declare-fun getCurrentListMap!3183 (array!55848 array!55850 (_ BitVec 32) (_ BitVec 32) V!31551 V!31551 (_ BitVec 32) Int) ListLongMap!11919)

(assert (=> b!929980 (= lt!419133 (getCurrentListMap!3183 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!929981 () Bool)

(declare-fun res!626401 () Bool)

(assert (=> b!929981 (=> (not res!626401) (not e!522251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55848 (_ BitVec 32)) Bool)

(assert (=> b!929981 (= res!626401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31665 () Bool)

(declare-fun mapRes!31665 () Bool)

(assert (=> mapIsEmpty!31665 mapRes!31665))

(declare-fun b!929982 () Bool)

(declare-fun res!626403 () Bool)

(assert (=> b!929982 (=> (not res!626403) (not e!522251))))

(assert (=> b!929982 (= res!626403 (and (= (size!27326 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27325 _keys!1487) (size!27326 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929983 () Bool)

(declare-fun res!626399 () Bool)

(assert (=> b!929983 (=> (not res!626399) (not e!522251))))

(assert (=> b!929983 (= res!626399 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27325 _keys!1487))))))

(declare-fun b!929985 () Bool)

(declare-fun e!522255 () Bool)

(declare-fun tp_is_empty!19939 () Bool)

(assert (=> b!929985 (= e!522255 tp_is_empty!19939)))

(declare-fun b!929986 () Bool)

(declare-fun e!522253 () Bool)

(assert (=> b!929986 (= e!522253 tp_is_empty!19939)))

(declare-fun mapNonEmpty!31665 () Bool)

(declare-fun tp!60734 () Bool)

(assert (=> mapNonEmpty!31665 (= mapRes!31665 (and tp!60734 e!522253))))

(declare-fun mapRest!31665 () (Array (_ BitVec 32) ValueCell!9488))

(declare-fun mapKey!31665 () (_ BitVec 32))

(declare-fun mapValue!31665 () ValueCell!9488)

(assert (=> mapNonEmpty!31665 (= (arr!26866 _values!1231) (store mapRest!31665 mapKey!31665 mapValue!31665))))

(declare-fun b!929987 () Bool)

(assert (=> b!929987 (= e!522250 (bvsgt #b00000000000000000000000000000000 (size!27325 _keys!1487)))))

(declare-fun b!929988 () Bool)

(declare-fun e!522254 () Bool)

(assert (=> b!929988 (= e!522254 (and e!522255 mapRes!31665))))

(declare-fun condMapEmpty!31665 () Bool)

(declare-fun mapDefault!31665 () ValueCell!9488)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79222 () Bool)

(assert start!79222)

(declare-fun b_free!17407 () Bool)

(declare-fun b_next!17407 () Bool)

(assert (=> start!79222 (= b_free!17407 (not b_next!17407))))

(declare-fun tp!60662 () Bool)

(declare-fun b_and!28491 () Bool)

(assert (=> start!79222 (= tp!60662 b_and!28491)))

(declare-fun b!929581 () Bool)

(declare-fun res!626113 () Bool)

(declare-fun e!522038 () Bool)

(assert (=> b!929581 (=> (not res!626113) (not e!522038))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929581 (= res!626113 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun res!626107 () Bool)

(declare-fun e!522034 () Bool)

(assert (=> start!79222 (=> (not res!626107) (not e!522034))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79222 (= res!626107 (validMask!0 mask!1881))))

(assert (=> start!79222 e!522034))

(assert (=> start!79222 true))

(declare-fun tp_is_empty!19915 () Bool)

(assert (=> start!79222 tp_is_empty!19915))

(declare-datatypes ((V!31519 0))(
  ( (V!31520 (val!10008 Int)) )
))
(declare-datatypes ((ValueCell!9476 0))(
  ( (ValueCellFull!9476 (v!12526 V!31519)) (EmptyCell!9476) )
))
(declare-datatypes ((array!55802 0))(
  ( (array!55803 (arr!26842 (Array (_ BitVec 32) ValueCell!9476)) (size!27302 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55802)

(declare-fun e!522035 () Bool)

(declare-fun array_inv!20884 (array!55802) Bool)

(assert (=> start!79222 (and (array_inv!20884 _values!1231) e!522035)))

(assert (=> start!79222 tp!60662))

(declare-datatypes ((array!55804 0))(
  ( (array!55805 (arr!26843 (Array (_ BitVec 32) (_ BitVec 64))) (size!27303 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55804)

(declare-fun array_inv!20885 (array!55804) Bool)

(assert (=> start!79222 (array_inv!20885 _keys!1487)))

(declare-fun b!929582 () Bool)

(declare-fun res!626109 () Bool)

(assert (=> b!929582 (=> (not res!626109) (not e!522038))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31519)

(declare-datatypes ((tuple2!13192 0))(
  ( (tuple2!13193 (_1!6606 (_ BitVec 64)) (_2!6606 V!31519)) )
))
(declare-datatypes ((List!19013 0))(
  ( (Nil!19010) (Cons!19009 (h!20155 tuple2!13192) (t!27078 List!19013)) )
))
(declare-datatypes ((ListLongMap!11903 0))(
  ( (ListLongMap!11904 (toList!5967 List!19013)) )
))
(declare-fun lt!419063 () ListLongMap!11903)

(declare-fun apply!758 (ListLongMap!11903 (_ BitVec 64)) V!31519)

(assert (=> b!929582 (= res!626109 (= (apply!758 lt!419063 k!1099) v!791))))

(declare-fun b!929583 () Bool)

(declare-fun e!522036 () Bool)

(assert (=> b!929583 (= e!522036 tp_is_empty!19915)))

(declare-fun mapIsEmpty!31629 () Bool)

(declare-fun mapRes!31629 () Bool)

(assert (=> mapIsEmpty!31629 mapRes!31629))

(declare-fun b!929584 () Bool)

(declare-fun res!626108 () Bool)

(assert (=> b!929584 (=> (not res!626108) (not e!522034))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!929584 (= res!626108 (and (= (size!27302 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27303 _keys!1487) (size!27302 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929585 () Bool)

(declare-fun res!626114 () Bool)

(assert (=> b!929585 (=> (not res!626114) (not e!522034))))

(declare-datatypes ((List!19014 0))(
  ( (Nil!19011) (Cons!19010 (h!20156 (_ BitVec 64)) (t!27079 List!19014)) )
))
(declare-fun arrayNoDuplicates!0 (array!55804 (_ BitVec 32) List!19014) Bool)

(assert (=> b!929585 (= res!626114 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19011))))

(declare-fun b!929586 () Bool)

(declare-fun res!626110 () Bool)

(assert (=> b!929586 (=> (not res!626110) (not e!522034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55804 (_ BitVec 32)) Bool)

(assert (=> b!929586 (= res!626110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929587 () Bool)

(assert (=> b!929587 (= e!522038 false)))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!419064 () Bool)

(declare-fun zeroValue!1173 () V!31519)

(declare-fun minValue!1173 () V!31519)

(declare-fun contains!4983 (ListLongMap!11903 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3177 (array!55804 array!55802 (_ BitVec 32) (_ BitVec 32) V!31519 V!31519 (_ BitVec 32) Int) ListLongMap!11903)

(assert (=> b!929587 (= lt!419064 (contains!4983 (getCurrentListMap!3177 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k!1099))))

(declare-fun b!929588 () Bool)

(declare-fun res!626111 () Bool)

(assert (=> b!929588 (=> (not res!626111) (not e!522034))))

(assert (=> b!929588 (= res!626111 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27303 _keys!1487))))))

(declare-fun mapNonEmpty!31629 () Bool)

(declare-fun tp!60663 () Bool)

(declare-fun e!522037 () Bool)

(assert (=> mapNonEmpty!31629 (= mapRes!31629 (and tp!60663 e!522037))))

(declare-fun mapRest!31629 () (Array (_ BitVec 32) ValueCell!9476))

(declare-fun mapValue!31629 () ValueCell!9476)

(declare-fun mapKey!31629 () (_ BitVec 32))

(assert (=> mapNonEmpty!31629 (= (arr!26842 _values!1231) (store mapRest!31629 mapKey!31629 mapValue!31629))))

(declare-fun b!929589 () Bool)

(assert (=> b!929589 (= e!522037 tp_is_empty!19915)))

(declare-fun b!929590 () Bool)

(assert (=> b!929590 (= e!522035 (and e!522036 mapRes!31629))))

(declare-fun condMapEmpty!31629 () Bool)

(declare-fun mapDefault!31629 () ValueCell!9476)


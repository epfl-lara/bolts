; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79282 () Bool)

(assert start!79282)

(declare-fun b_free!17467 () Bool)

(declare-fun b_next!17467 () Bool)

(assert (=> start!79282 (= b_free!17467 (not b_next!17467))))

(declare-fun tp!60843 () Bool)

(declare-fun b_and!28551 () Bool)

(assert (=> start!79282 (= tp!60843 b_and!28551)))

(declare-fun b!930531 () Bool)

(declare-fun res!626790 () Bool)

(declare-fun e!522574 () Bool)

(assert (=> b!930531 (=> (not res!626790) (not e!522574))))

(declare-datatypes ((array!55920 0))(
  ( (array!55921 (arr!26901 (Array (_ BitVec 32) (_ BitVec 64))) (size!27361 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55920)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55920 (_ BitVec 32)) Bool)

(assert (=> b!930531 (= res!626790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930532 () Bool)

(declare-fun e!522576 () Bool)

(declare-fun tp_is_empty!19975 () Bool)

(assert (=> b!930532 (= e!522576 tp_is_empty!19975)))

(declare-fun b!930533 () Bool)

(declare-fun res!626788 () Bool)

(assert (=> b!930533 (=> (not res!626788) (not e!522574))))

(declare-datatypes ((List!19060 0))(
  ( (Nil!19057) (Cons!19056 (h!20202 (_ BitVec 64)) (t!27125 List!19060)) )
))
(declare-fun arrayNoDuplicates!0 (array!55920 (_ BitVec 32) List!19060) Bool)

(assert (=> b!930533 (= res!626788 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19057))))

(declare-fun b!930535 () Bool)

(declare-fun e!522579 () Bool)

(assert (=> b!930535 (= e!522574 e!522579)))

(declare-fun res!626787 () Bool)

(assert (=> b!930535 (=> (not res!626787) (not e!522579))))

(declare-datatypes ((V!31599 0))(
  ( (V!31600 (val!10038 Int)) )
))
(declare-datatypes ((tuple2!13240 0))(
  ( (tuple2!13241 (_1!6630 (_ BitVec 64)) (_2!6630 V!31599)) )
))
(declare-datatypes ((List!19061 0))(
  ( (Nil!19058) (Cons!19057 (h!20203 tuple2!13240) (t!27126 List!19061)) )
))
(declare-datatypes ((ListLongMap!11951 0))(
  ( (ListLongMap!11952 (toList!5991 List!19061)) )
))
(declare-fun lt!419225 () ListLongMap!11951)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5000 (ListLongMap!11951 (_ BitVec 64)) Bool)

(assert (=> b!930535 (= res!626787 (contains!5000 lt!419225 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9506 0))(
  ( (ValueCellFull!9506 (v!12556 V!31599)) (EmptyCell!9506) )
))
(declare-datatypes ((array!55922 0))(
  ( (array!55923 (arr!26902 (Array (_ BitVec 32) ValueCell!9506)) (size!27362 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55922)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31599)

(declare-fun minValue!1173 () V!31599)

(declare-fun getCurrentListMap!3194 (array!55920 array!55922 (_ BitVec 32) (_ BitVec 32) V!31599 V!31599 (_ BitVec 32) Int) ListLongMap!11951)

(assert (=> b!930535 (= lt!419225 (getCurrentListMap!3194 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930536 () Bool)

(declare-fun res!626792 () Bool)

(assert (=> b!930536 (=> (not res!626792) (not e!522574))))

(assert (=> b!930536 (= res!626792 (and (= (size!27362 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27361 _keys!1487) (size!27362 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31719 () Bool)

(declare-fun mapRes!31719 () Bool)

(declare-fun tp!60842 () Bool)

(assert (=> mapNonEmpty!31719 (= mapRes!31719 (and tp!60842 e!522576))))

(declare-fun mapKey!31719 () (_ BitVec 32))

(declare-fun mapRest!31719 () (Array (_ BitVec 32) ValueCell!9506))

(declare-fun mapValue!31719 () ValueCell!9506)

(assert (=> mapNonEmpty!31719 (= (arr!26902 _values!1231) (store mapRest!31719 mapKey!31719 mapValue!31719))))

(declare-fun mapIsEmpty!31719 () Bool)

(assert (=> mapIsEmpty!31719 mapRes!31719))

(declare-fun b!930537 () Bool)

(declare-fun e!522575 () Bool)

(assert (=> b!930537 (= e!522575 tp_is_empty!19975)))

(declare-fun b!930534 () Bool)

(declare-fun e!522578 () Bool)

(assert (=> b!930534 (= e!522578 (and e!522575 mapRes!31719))))

(declare-fun condMapEmpty!31719 () Bool)

(declare-fun mapDefault!31719 () ValueCell!9506)


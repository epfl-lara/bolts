; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78890 () Bool)

(assert start!78890)

(declare-fun b_free!17075 () Bool)

(declare-fun b_next!17075 () Bool)

(assert (=> start!78890 (= b_free!17075 (not b_next!17075))))

(declare-fun tp!59666 () Bool)

(declare-fun b_and!27905 () Bool)

(assert (=> start!78890 (= tp!59666 b_and!27905)))

(declare-fun b!921277 () Bool)

(declare-fun e!517021 () Bool)

(declare-fun e!517020 () Bool)

(assert (=> b!921277 (= e!517021 e!517020)))

(declare-fun res!621400 () Bool)

(assert (=> b!921277 (=> (not res!621400) (not e!517020))))

(declare-datatypes ((V!31075 0))(
  ( (V!31076 (val!9842 Int)) )
))
(declare-datatypes ((tuple2!12898 0))(
  ( (tuple2!12899 (_1!6459 (_ BitVec 64)) (_2!6459 V!31075)) )
))
(declare-datatypes ((List!18739 0))(
  ( (Nil!18736) (Cons!18735 (h!19881 tuple2!12898) (t!26552 List!18739)) )
))
(declare-datatypes ((ListLongMap!11609 0))(
  ( (ListLongMap!11610 (toList!5820 List!18739)) )
))
(declare-fun lt!413638 () ListLongMap!11609)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4845 (ListLongMap!11609 (_ BitVec 64)) Bool)

(assert (=> b!921277 (= res!621400 (contains!4845 lt!413638 k!1099))))

(declare-datatypes ((array!55156 0))(
  ( (array!55157 (arr!26519 (Array (_ BitVec 32) (_ BitVec 64))) (size!26979 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55156)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9310 0))(
  ( (ValueCellFull!9310 (v!12360 V!31075)) (EmptyCell!9310) )
))
(declare-datatypes ((array!55158 0))(
  ( (array!55159 (arr!26520 (Array (_ BitVec 32) ValueCell!9310)) (size!26980 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55158)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31075)

(declare-fun minValue!1173 () V!31075)

(declare-fun getCurrentListMap!3042 (array!55156 array!55158 (_ BitVec 32) (_ BitVec 32) V!31075 V!31075 (_ BitVec 32) Int) ListLongMap!11609)

(assert (=> b!921277 (= lt!413638 (getCurrentListMap!3042 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921278 () Bool)

(declare-fun e!517018 () Bool)

(assert (=> b!921278 (= e!517018 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921279 () Bool)

(declare-fun res!621395 () Bool)

(assert (=> b!921279 (=> (not res!621395) (not e!517020))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921279 (= res!621395 (validKeyInArray!0 k!1099))))

(declare-fun b!921280 () Bool)

(declare-fun res!621392 () Bool)

(assert (=> b!921280 (=> (not res!621392) (not e!517021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55156 (_ BitVec 32)) Bool)

(assert (=> b!921280 (= res!621392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31131 () Bool)

(declare-fun mapRes!31131 () Bool)

(declare-fun tp!59667 () Bool)

(declare-fun e!517023 () Bool)

(assert (=> mapNonEmpty!31131 (= mapRes!31131 (and tp!59667 e!517023))))

(declare-fun mapRest!31131 () (Array (_ BitVec 32) ValueCell!9310))

(declare-fun mapValue!31131 () ValueCell!9310)

(declare-fun mapKey!31131 () (_ BitVec 32))

(assert (=> mapNonEmpty!31131 (= (arr!26520 _values!1231) (store mapRest!31131 mapKey!31131 mapValue!31131))))

(declare-fun mapIsEmpty!31131 () Bool)

(assert (=> mapIsEmpty!31131 mapRes!31131))

(declare-fun b!921281 () Bool)

(declare-fun tp_is_empty!19583 () Bool)

(assert (=> b!921281 (= e!517023 tp_is_empty!19583)))

(declare-fun b!921282 () Bool)

(declare-fun res!621393 () Bool)

(assert (=> b!921282 (=> (not res!621393) (not e!517020))))

(assert (=> b!921282 (= res!621393 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921283 () Bool)

(declare-fun e!517022 () Bool)

(declare-fun e!517024 () Bool)

(assert (=> b!921283 (= e!517022 (and e!517024 mapRes!31131))))

(declare-fun condMapEmpty!31131 () Bool)

(declare-fun mapDefault!31131 () ValueCell!9310)


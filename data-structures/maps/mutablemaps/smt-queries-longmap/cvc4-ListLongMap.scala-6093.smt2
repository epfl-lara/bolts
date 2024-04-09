; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78698 () Bool)

(assert start!78698)

(declare-fun b_free!16883 () Bool)

(declare-fun b_next!16883 () Bool)

(assert (=> start!78698 (= b_free!16883 (not b_next!16883))))

(declare-fun tp!59091 () Bool)

(declare-fun b_and!27523 () Bool)

(assert (=> start!78698 (= tp!59091 b_and!27523)))

(declare-fun b!917037 () Bool)

(declare-fun e!514884 () Bool)

(declare-fun tp_is_empty!19391 () Bool)

(assert (=> b!917037 (= e!514884 tp_is_empty!19391)))

(declare-fun b!917038 () Bool)

(declare-fun e!514880 () Bool)

(declare-fun e!514882 () Bool)

(assert (=> b!917038 (= e!514880 e!514882)))

(declare-fun res!618331 () Bool)

(assert (=> b!917038 (=> (not res!618331) (not e!514882))))

(declare-datatypes ((V!30819 0))(
  ( (V!30820 (val!9746 Int)) )
))
(declare-datatypes ((tuple2!12724 0))(
  ( (tuple2!12725 (_1!6372 (_ BitVec 64)) (_2!6372 V!30819)) )
))
(declare-datatypes ((List!18579 0))(
  ( (Nil!18576) (Cons!18575 (h!19721 tuple2!12724) (t!26200 List!18579)) )
))
(declare-datatypes ((ListLongMap!11435 0))(
  ( (ListLongMap!11436 (toList!5733 List!18579)) )
))
(declare-fun lt!411903 () ListLongMap!11435)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4750 (ListLongMap!11435 (_ BitVec 64)) Bool)

(assert (=> b!917038 (= res!618331 (contains!4750 lt!411903 k!1099))))

(declare-datatypes ((array!54774 0))(
  ( (array!54775 (arr!26328 (Array (_ BitVec 32) (_ BitVec 64))) (size!26788 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54774)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9214 0))(
  ( (ValueCellFull!9214 (v!12264 V!30819)) (EmptyCell!9214) )
))
(declare-datatypes ((array!54776 0))(
  ( (array!54777 (arr!26329 (Array (_ BitVec 32) ValueCell!9214)) (size!26789 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54776)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30819)

(declare-fun minValue!1173 () V!30819)

(declare-fun getCurrentListMap!2959 (array!54774 array!54776 (_ BitVec 32) (_ BitVec 32) V!30819 V!30819 (_ BitVec 32) Int) ListLongMap!11435)

(assert (=> b!917038 (= lt!411903 (getCurrentListMap!2959 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917039 () Bool)

(declare-fun res!618332 () Bool)

(assert (=> b!917039 (=> (not res!618332) (not e!514880))))

(assert (=> b!917039 (= res!618332 (and (= (size!26789 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26788 _keys!1487) (size!26789 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917040 () Bool)

(declare-fun e!514881 () Bool)

(assert (=> b!917040 (= e!514881 tp_is_empty!19391)))

(declare-fun b!917041 () Bool)

(declare-fun e!514879 () Bool)

(declare-fun mapRes!30843 () Bool)

(assert (=> b!917041 (= e!514879 (and e!514881 mapRes!30843))))

(declare-fun condMapEmpty!30843 () Bool)

(declare-fun mapDefault!30843 () ValueCell!9214)


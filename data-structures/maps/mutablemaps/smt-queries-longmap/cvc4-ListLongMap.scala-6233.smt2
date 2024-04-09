; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79702 () Bool)

(assert start!79702)

(declare-fun b_free!17723 () Bool)

(declare-fun b_next!17723 () Bool)

(assert (=> start!79702 (= b_free!17723 (not b_next!17723))))

(declare-fun tp!61625 () Bool)

(declare-fun b_and!29055 () Bool)

(assert (=> start!79702 (= tp!61625 b_and!29055)))

(declare-fun mapIsEmpty!32118 () Bool)

(declare-fun mapRes!32118 () Bool)

(assert (=> mapIsEmpty!32118 mapRes!32118))

(declare-fun mapNonEmpty!32118 () Bool)

(declare-fun tp!61626 () Bool)

(declare-fun e!526121 () Bool)

(assert (=> mapNonEmpty!32118 (= mapRes!32118 (and tp!61626 e!526121))))

(declare-datatypes ((V!31939 0))(
  ( (V!31940 (val!10166 Int)) )
))
(declare-datatypes ((ValueCell!9634 0))(
  ( (ValueCellFull!9634 (v!12691 V!31939)) (EmptyCell!9634) )
))
(declare-datatypes ((array!56426 0))(
  ( (array!56427 (arr!27149 (Array (_ BitVec 32) ValueCell!9634)) (size!27609 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56426)

(declare-fun mapKey!32118 () (_ BitVec 32))

(declare-fun mapValue!32118 () ValueCell!9634)

(declare-fun mapRest!32118 () (Array (_ BitVec 32) ValueCell!9634))

(assert (=> mapNonEmpty!32118 (= (arr!27149 _values!1231) (store mapRest!32118 mapKey!32118 mapValue!32118))))

(declare-fun b!936888 () Bool)

(declare-datatypes ((tuple2!13458 0))(
  ( (tuple2!13459 (_1!6739 (_ BitVec 64)) (_2!6739 V!31939)) )
))
(declare-datatypes ((List!19265 0))(
  ( (Nil!19262) (Cons!19261 (h!20407 tuple2!13458) (t!27540 List!19265)) )
))
(declare-datatypes ((ListLongMap!12169 0))(
  ( (ListLongMap!12170 (toList!6100 List!19265)) )
))
(declare-fun lt!422641 () ListLongMap!12169)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!422643 () V!31939)

(declare-fun apply!878 (ListLongMap!12169 (_ BitVec 64)) V!31939)

(assert (=> b!936888 (= (apply!878 lt!422641 k!1099) lt!422643)))

(declare-fun lt!422635 () (_ BitVec 64))

(declare-fun lt!422640 () ListLongMap!12169)

(declare-fun lt!422642 () V!31939)

(declare-datatypes ((Unit!31628 0))(
  ( (Unit!31629) )
))
(declare-fun lt!422646 () Unit!31628)

(declare-fun addApplyDifferent!426 (ListLongMap!12169 (_ BitVec 64) V!31939 (_ BitVec 64)) Unit!31628)

(assert (=> b!936888 (= lt!422646 (addApplyDifferent!426 lt!422640 lt!422635 lt!422642 k!1099))))

(assert (=> b!936888 (not (= lt!422635 k!1099))))

(declare-fun lt!422636 () Unit!31628)

(declare-datatypes ((array!56428 0))(
  ( (array!56429 (arr!27150 (Array (_ BitVec 32) (_ BitVec 64))) (size!27610 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56428)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((List!19266 0))(
  ( (Nil!19263) (Cons!19262 (h!20408 (_ BitVec 64)) (t!27541 List!19266)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56428 (_ BitVec 64) (_ BitVec 32) List!19266) Unit!31628)

(assert (=> b!936888 (= lt!422636 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19263))))

(declare-fun e!526123 () Bool)

(assert (=> b!936888 e!526123))

(declare-fun c!97424 () Bool)

(assert (=> b!936888 (= c!97424 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422644 () Unit!31628)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31939)

(declare-fun minValue!1173 () V!31939)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!309 (array!56428 array!56426 (_ BitVec 32) (_ BitVec 32) V!31939 V!31939 (_ BitVec 64) (_ BitVec 32) Int) Unit!31628)

(assert (=> b!936888 (= lt!422644 (lemmaListMapContainsThenArrayContainsFrom!309 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56428 (_ BitVec 32) List!19266) Bool)

(assert (=> b!936888 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19263)))

(declare-fun lt!422638 () Unit!31628)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56428 (_ BitVec 32) (_ BitVec 32)) Unit!31628)

(assert (=> b!936888 (= lt!422638 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5110 (ListLongMap!12169 (_ BitVec 64)) Bool)

(assert (=> b!936888 (contains!5110 lt!422641 k!1099)))

(declare-fun lt!422639 () tuple2!13458)

(declare-fun +!2796 (ListLongMap!12169 tuple2!13458) ListLongMap!12169)

(assert (=> b!936888 (= lt!422641 (+!2796 lt!422640 lt!422639))))

(declare-fun lt!422637 () Unit!31628)

(declare-fun addStillContains!552 (ListLongMap!12169 (_ BitVec 64) V!31939 (_ BitVec 64)) Unit!31628)

(assert (=> b!936888 (= lt!422637 (addStillContains!552 lt!422640 lt!422635 lt!422642 k!1099))))

(declare-fun getCurrentListMap!3289 (array!56428 array!56426 (_ BitVec 32) (_ BitVec 32) V!31939 V!31939 (_ BitVec 32) Int) ListLongMap!12169)

(assert (=> b!936888 (= (getCurrentListMap!3289 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2796 (getCurrentListMap!3289 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422639))))

(assert (=> b!936888 (= lt!422639 (tuple2!13459 lt!422635 lt!422642))))

(declare-fun get!14330 (ValueCell!9634 V!31939) V!31939)

(declare-fun dynLambda!1635 (Int (_ BitVec 64)) V!31939)

(assert (=> b!936888 (= lt!422642 (get!14330 (select (arr!27149 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1635 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422647 () Unit!31628)

(declare-fun lemmaListMapRecursiveValidKeyArray!231 (array!56428 array!56426 (_ BitVec 32) (_ BitVec 32) V!31939 V!31939 (_ BitVec 32) Int) Unit!31628)

(assert (=> b!936888 (= lt!422647 (lemmaListMapRecursiveValidKeyArray!231 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!526118 () Unit!31628)

(assert (=> b!936888 (= e!526118 lt!422646)))

(declare-fun b!936889 () Bool)

(declare-fun e!526122 () Unit!31628)

(assert (=> b!936889 (= e!526122 e!526118)))

(assert (=> b!936889 (= lt!422635 (select (arr!27150 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97422 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936889 (= c!97422 (validKeyInArray!0 lt!422635))))

(declare-fun b!936890 () Bool)

(declare-fun tp_is_empty!20231 () Bool)

(assert (=> b!936890 (= e!526121 tp_is_empty!20231)))

(declare-fun b!936891 () Bool)

(declare-fun e!526117 () Bool)

(declare-fun e!526120 () Bool)

(assert (=> b!936891 (= e!526117 e!526120)))

(declare-fun res!630803 () Bool)

(assert (=> b!936891 (=> (not res!630803) (not e!526120))))

(assert (=> b!936891 (= res!630803 (contains!5110 lt!422640 k!1099))))

(assert (=> b!936891 (= lt!422640 (getCurrentListMap!3289 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936892 () Bool)

(declare-fun res!630799 () Bool)

(assert (=> b!936892 (=> (not res!630799) (not e!526117))))

(assert (=> b!936892 (= res!630799 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27610 _keys!1487))))))

(declare-fun b!936893 () Bool)

(declare-fun e!526116 () Bool)

(declare-fun e!526119 () Bool)

(assert (=> b!936893 (= e!526116 (and e!526119 mapRes!32118))))

(declare-fun condMapEmpty!32118 () Bool)

(declare-fun mapDefault!32118 () ValueCell!9634)


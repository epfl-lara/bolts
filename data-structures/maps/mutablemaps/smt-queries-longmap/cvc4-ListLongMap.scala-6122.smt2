; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78872 () Bool)

(assert start!78872)

(declare-fun b_free!17057 () Bool)

(declare-fun b_next!17057 () Bool)

(assert (=> start!78872 (= b_free!17057 (not b_next!17057))))

(declare-fun tp!59612 () Bool)

(declare-fun b_and!27869 () Bool)

(assert (=> start!78872 (= tp!59612 b_and!27869)))

(declare-fun b!920773 () Bool)

(declare-fun e!516783 () Bool)

(declare-fun tp_is_empty!19565 () Bool)

(assert (=> b!920773 (= e!516783 tp_is_empty!19565)))

(declare-fun b!920774 () Bool)

(declare-fun res!621044 () Bool)

(declare-fun e!516782 () Bool)

(assert (=> b!920774 (=> (not res!621044) (not e!516782))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31051 0))(
  ( (V!31052 (val!9833 Int)) )
))
(declare-fun v!791 () V!31051)

(declare-datatypes ((tuple2!12882 0))(
  ( (tuple2!12883 (_1!6451 (_ BitVec 64)) (_2!6451 V!31051)) )
))
(declare-datatypes ((List!18724 0))(
  ( (Nil!18721) (Cons!18720 (h!19866 tuple2!12882) (t!26519 List!18724)) )
))
(declare-datatypes ((ListLongMap!11593 0))(
  ( (ListLongMap!11594 (toList!5812 List!18724)) )
))
(declare-fun lt!413396 () ListLongMap!11593)

(declare-fun apply!622 (ListLongMap!11593 (_ BitVec 64)) V!31051)

(assert (=> b!920774 (= res!621044 (= (apply!622 lt!413396 k!1099) v!791))))

(declare-fun mapIsEmpty!31104 () Bool)

(declare-fun mapRes!31104 () Bool)

(assert (=> mapIsEmpty!31104 mapRes!31104))

(declare-fun b!920775 () Bool)

(declare-fun e!516780 () Bool)

(assert (=> b!920775 (= e!516780 e!516782)))

(declare-fun res!621047 () Bool)

(assert (=> b!920775 (=> (not res!621047) (not e!516782))))

(declare-fun contains!4832 (ListLongMap!11593 (_ BitVec 64)) Bool)

(assert (=> b!920775 (= res!621047 (contains!4832 lt!413396 k!1099))))

(declare-datatypes ((array!55122 0))(
  ( (array!55123 (arr!26502 (Array (_ BitVec 32) (_ BitVec 64))) (size!26962 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55122)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9301 0))(
  ( (ValueCellFull!9301 (v!12351 V!31051)) (EmptyCell!9301) )
))
(declare-datatypes ((array!55124 0))(
  ( (array!55125 (arr!26503 (Array (_ BitVec 32) ValueCell!9301)) (size!26963 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55124)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31051)

(declare-fun minValue!1173 () V!31051)

(declare-fun getCurrentListMap!3034 (array!55122 array!55124 (_ BitVec 32) (_ BitVec 32) V!31051 V!31051 (_ BitVec 32) Int) ListLongMap!11593)

(assert (=> b!920775 (= lt!413396 (getCurrentListMap!3034 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920776 () Bool)

(declare-fun e!516775 () Bool)

(assert (=> b!920776 (= e!516775 tp_is_empty!19565)))

(declare-fun b!920777 () Bool)

(declare-fun res!621050 () Bool)

(assert (=> b!920777 (=> (not res!621050) (not e!516782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920777 (= res!621050 (validKeyInArray!0 k!1099))))

(declare-fun b!920778 () Bool)

(declare-fun res!621049 () Bool)

(assert (=> b!920778 (=> (not res!621049) (not e!516780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55122 (_ BitVec 32)) Bool)

(assert (=> b!920778 (= res!621049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!621048 () Bool)

(assert (=> start!78872 (=> (not res!621048) (not e!516780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78872 (= res!621048 (validMask!0 mask!1881))))

(assert (=> start!78872 e!516780))

(assert (=> start!78872 true))

(assert (=> start!78872 tp_is_empty!19565))

(declare-fun e!516776 () Bool)

(declare-fun array_inv!20638 (array!55124) Bool)

(assert (=> start!78872 (and (array_inv!20638 _values!1231) e!516776)))

(assert (=> start!78872 tp!59612))

(declare-fun array_inv!20639 (array!55122) Bool)

(assert (=> start!78872 (array_inv!20639 _keys!1487)))

(declare-fun b!920779 () Bool)

(declare-fun res!621039 () Bool)

(declare-fun e!516779 () Bool)

(assert (=> b!920779 (=> res!621039 e!516779)))

(declare-datatypes ((List!18725 0))(
  ( (Nil!18722) (Cons!18721 (h!19867 (_ BitVec 64)) (t!26520 List!18725)) )
))
(declare-fun noDuplicate!1342 (List!18725) Bool)

(assert (=> b!920779 (= res!621039 (not (noDuplicate!1342 Nil!18722)))))

(declare-fun b!920780 () Bool)

(declare-fun e!516777 () Bool)

(assert (=> b!920780 (= e!516777 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!920781 () Bool)

(declare-fun e!516781 () Bool)

(assert (=> b!920781 (= e!516781 (not e!516779))))

(declare-fun res!621046 () Bool)

(assert (=> b!920781 (=> res!621046 e!516779)))

(assert (=> b!920781 (= res!621046 (or (bvsge (size!26962 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26962 _keys!1487))))))

(assert (=> b!920781 e!516777))

(declare-fun c!96005 () Bool)

(assert (=> b!920781 (= c!96005 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31067 0))(
  ( (Unit!31068) )
))
(declare-fun lt!413389 () Unit!31067)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!176 (array!55122 array!55124 (_ BitVec 32) (_ BitVec 32) V!31051 V!31051 (_ BitVec 64) (_ BitVec 32) Int) Unit!31067)

(assert (=> b!920781 (= lt!413389 (lemmaListMapContainsThenArrayContainsFrom!176 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55122 (_ BitVec 32) List!18725) Bool)

(assert (=> b!920781 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18722)))

(declare-fun lt!413397 () Unit!31067)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55122 (_ BitVec 32) (_ BitVec 32)) Unit!31067)

(assert (=> b!920781 (= lt!413397 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413390 () tuple2!12882)

(declare-fun +!2630 (ListLongMap!11593 tuple2!12882) ListLongMap!11593)

(assert (=> b!920781 (contains!4832 (+!2630 lt!413396 lt!413390) k!1099)))

(declare-fun lt!413395 () V!31051)

(declare-fun lt!413393 () (_ BitVec 64))

(declare-fun lt!413392 () Unit!31067)

(declare-fun addStillContains!392 (ListLongMap!11593 (_ BitVec 64) V!31051 (_ BitVec 64)) Unit!31067)

(assert (=> b!920781 (= lt!413392 (addStillContains!392 lt!413396 lt!413393 lt!413395 k!1099))))

(assert (=> b!920781 (= (getCurrentListMap!3034 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2630 (getCurrentListMap!3034 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413390))))

(assert (=> b!920781 (= lt!413390 (tuple2!12883 lt!413393 lt!413395))))

(declare-fun get!13927 (ValueCell!9301 V!31051) V!31051)

(declare-fun dynLambda!1469 (Int (_ BitVec 64)) V!31051)

(assert (=> b!920781 (= lt!413395 (get!13927 (select (arr!26503 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1469 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413394 () Unit!31067)

(declare-fun lemmaListMapRecursiveValidKeyArray!65 (array!55122 array!55124 (_ BitVec 32) (_ BitVec 32) V!31051 V!31051 (_ BitVec 32) Int) Unit!31067)

(assert (=> b!920781 (= lt!413394 (lemmaListMapRecursiveValidKeyArray!65 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920782 () Bool)

(declare-fun arrayContainsKey!0 (array!55122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920782 (= e!516777 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!920783 () Bool)

(assert (=> b!920783 (= e!516776 (and e!516783 mapRes!31104))))

(declare-fun condMapEmpty!31104 () Bool)

(declare-fun mapDefault!31104 () ValueCell!9301)


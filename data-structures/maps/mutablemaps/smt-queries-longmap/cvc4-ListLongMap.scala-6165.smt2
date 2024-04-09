; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79130 () Bool)

(assert start!79130)

(declare-fun b_free!17315 () Bool)

(declare-fun b_next!17315 () Bool)

(assert (=> start!79130 (= b_free!17315 (not b_next!17315))))

(declare-fun tp!60387 () Bool)

(declare-fun b_and!28385 () Bool)

(assert (=> start!79130 (= tp!60387 b_and!28385)))

(declare-fun mapIsEmpty!31491 () Bool)

(declare-fun mapRes!31491 () Bool)

(assert (=> mapIsEmpty!31491 mapRes!31491))

(declare-fun res!625104 () Bool)

(declare-fun e!521085 () Bool)

(assert (=> start!79130 (=> (not res!625104) (not e!521085))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79130 (= res!625104 (validMask!0 mask!1881))))

(assert (=> start!79130 e!521085))

(assert (=> start!79130 true))

(declare-fun tp_is_empty!19823 () Bool)

(assert (=> start!79130 tp_is_empty!19823))

(declare-datatypes ((V!31395 0))(
  ( (V!31396 (val!9962 Int)) )
))
(declare-datatypes ((ValueCell!9430 0))(
  ( (ValueCellFull!9430 (v!12480 V!31395)) (EmptyCell!9430) )
))
(declare-datatypes ((array!55624 0))(
  ( (array!55625 (arr!26753 (Array (_ BitVec 32) ValueCell!9430)) (size!27213 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55624)

(declare-fun e!521080 () Bool)

(declare-fun array_inv!20824 (array!55624) Bool)

(assert (=> start!79130 (and (array_inv!20824 _values!1231) e!521080)))

(assert (=> start!79130 tp!60387))

(declare-datatypes ((array!55626 0))(
  ( (array!55627 (arr!26754 (Array (_ BitVec 32) (_ BitVec 64))) (size!27214 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55626)

(declare-fun array_inv!20825 (array!55626) Bool)

(assert (=> start!79130 (array_inv!20825 _keys!1487)))

(declare-fun b!928031 () Bool)

(declare-fun e!521074 () Bool)

(assert (=> b!928031 (= e!521074 tp_is_empty!19823)))

(declare-fun b!928032 () Bool)

(declare-fun e!521084 () Bool)

(assert (=> b!928032 (= e!521084 (not true))))

(declare-fun e!521082 () Bool)

(assert (=> b!928032 e!521082))

(declare-fun res!625107 () Bool)

(assert (=> b!928032 (=> (not res!625107) (not e!521082))))

(declare-datatypes ((tuple2!13120 0))(
  ( (tuple2!13121 (_1!6570 (_ BitVec 64)) (_2!6570 V!31395)) )
))
(declare-datatypes ((List!18944 0))(
  ( (Nil!18941) (Cons!18940 (h!20086 tuple2!13120) (t!26997 List!18944)) )
))
(declare-datatypes ((ListLongMap!11831 0))(
  ( (ListLongMap!11832 (toList!5931 List!18944)) )
))
(declare-fun lt!418538 () ListLongMap!11831)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4950 (ListLongMap!11831 (_ BitVec 64)) Bool)

(assert (=> b!928032 (= res!625107 (contains!4950 lt!418538 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31395)

(declare-fun minValue!1173 () V!31395)

(declare-fun getCurrentListMap!3144 (array!55626 array!55624 (_ BitVec 32) (_ BitVec 32) V!31395 V!31395 (_ BitVec 32) Int) ListLongMap!11831)

(assert (=> b!928032 (= lt!418538 (getCurrentListMap!3144 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun v!791 () V!31395)

(declare-datatypes ((Unit!31406 0))(
  ( (Unit!31407) )
))
(declare-fun lt!418532 () Unit!31406)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!105 (array!55626 array!55624 (_ BitVec 32) (_ BitVec 32) V!31395 V!31395 (_ BitVec 64) V!31395 (_ BitVec 32) Int) Unit!31406)

(assert (=> b!928032 (= lt!418532 (lemmaListMapApplyFromThenApplyFromZero!105 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928033 () Bool)

(declare-fun e!521075 () Unit!31406)

(declare-fun e!521073 () Unit!31406)

(assert (=> b!928033 (= e!521075 e!521073)))

(declare-fun lt!418545 () (_ BitVec 64))

(assert (=> b!928033 (= lt!418545 (select (arr!26754 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96895 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!928033 (= c!96895 (validKeyInArray!0 lt!418545))))

(declare-fun b!928034 () Bool)

(declare-fun e!521083 () Bool)

(assert (=> b!928034 (= e!521083 tp_is_empty!19823)))

(declare-fun b!928035 () Bool)

(declare-fun res!625109 () Bool)

(assert (=> b!928035 (=> (not res!625109) (not e!521085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55626 (_ BitVec 32)) Bool)

(assert (=> b!928035 (= res!625109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31491 () Bool)

(declare-fun tp!60386 () Bool)

(assert (=> mapNonEmpty!31491 (= mapRes!31491 (and tp!60386 e!521083))))

(declare-fun mapValue!31491 () ValueCell!9430)

(declare-fun mapRest!31491 () (Array (_ BitVec 32) ValueCell!9430))

(declare-fun mapKey!31491 () (_ BitVec 32))

(assert (=> mapNonEmpty!31491 (= (arr!26753 _values!1231) (store mapRest!31491 mapKey!31491 mapValue!31491))))

(declare-fun b!928036 () Bool)

(declare-fun e!521076 () Bool)

(declare-fun e!521077 () Bool)

(assert (=> b!928036 (= e!521076 e!521077)))

(declare-fun res!625102 () Bool)

(assert (=> b!928036 (=> (not res!625102) (not e!521077))))

(declare-fun lt!418531 () V!31395)

(assert (=> b!928036 (= res!625102 (and (= lt!418531 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!418542 () ListLongMap!11831)

(declare-fun apply!727 (ListLongMap!11831 (_ BitVec 64)) V!31395)

(assert (=> b!928036 (= lt!418531 (apply!727 lt!418542 k!1099))))

(declare-fun b!928037 () Bool)

(declare-fun e!521081 () Bool)

(assert (=> b!928037 (= e!521081 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!928038 () Bool)

(assert (=> b!928038 (= e!521085 e!521076)))

(declare-fun res!625100 () Bool)

(assert (=> b!928038 (=> (not res!625100) (not e!521076))))

(assert (=> b!928038 (= res!625100 (contains!4950 lt!418542 k!1099))))

(assert (=> b!928038 (= lt!418542 (getCurrentListMap!3144 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928039 () Bool)

(assert (=> b!928039 (= e!521080 (and e!521074 mapRes!31491))))

(declare-fun condMapEmpty!31491 () Bool)

(declare-fun mapDefault!31491 () ValueCell!9430)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79106 () Bool)

(assert start!79106)

(declare-fun b_free!17291 () Bool)

(declare-fun b_next!17291 () Bool)

(assert (=> start!79106 (= b_free!17291 (not b_next!17291))))

(declare-fun tp!60315 () Bool)

(declare-fun b_and!28337 () Bool)

(assert (=> start!79106 (= tp!60315 b_and!28337)))

(declare-fun b!927287 () Bool)

(declare-datatypes ((Unit!31366 0))(
  ( (Unit!31367) )
))
(declare-fun e!520609 () Unit!31366)

(declare-fun Unit!31368 () Unit!31366)

(assert (=> b!927287 (= e!520609 Unit!31368)))

(declare-fun b!927288 () Bool)

(declare-fun res!624709 () Bool)

(declare-fun e!520615 () Bool)

(assert (=> b!927288 (=> (not res!624709) (not e!520615))))

(declare-datatypes ((array!55576 0))(
  ( (array!55577 (arr!26729 (Array (_ BitVec 32) (_ BitVec 64))) (size!27189 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55576)

(declare-datatypes ((List!18922 0))(
  ( (Nil!18919) (Cons!18918 (h!20064 (_ BitVec 64)) (t!26951 List!18922)) )
))
(declare-fun arrayNoDuplicates!0 (array!55576 (_ BitVec 32) List!18922) Bool)

(assert (=> b!927288 (= res!624709 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18919))))

(declare-fun b!927289 () Bool)

(declare-fun e!520613 () Unit!31366)

(assert (=> b!927289 (= e!520609 e!520613)))

(declare-fun lt!417966 () (_ BitVec 64))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!927289 (= lt!417966 (select (arr!26729 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96788 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927289 (= c!96788 (validKeyInArray!0 lt!417966))))

(declare-fun b!927290 () Bool)

(declare-fun e!520606 () Bool)

(assert (=> b!927290 (= e!520606 (not true))))

(declare-fun e!520616 () Bool)

(assert (=> b!927290 e!520616))

(declare-fun res!624705 () Bool)

(assert (=> b!927290 (=> (not res!624705) (not e!520616))))

(declare-datatypes ((V!31363 0))(
  ( (V!31364 (val!9950 Int)) )
))
(declare-datatypes ((tuple2!13096 0))(
  ( (tuple2!13097 (_1!6558 (_ BitVec 64)) (_2!6558 V!31363)) )
))
(declare-datatypes ((List!18923 0))(
  ( (Nil!18920) (Cons!18919 (h!20065 tuple2!13096) (t!26952 List!18923)) )
))
(declare-datatypes ((ListLongMap!11807 0))(
  ( (ListLongMap!11808 (toList!5919 List!18923)) )
))
(declare-fun lt!417962 () ListLongMap!11807)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4938 (ListLongMap!11807 (_ BitVec 64)) Bool)

(assert (=> b!927290 (= res!624705 (contains!4938 lt!417962 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9418 0))(
  ( (ValueCellFull!9418 (v!12468 V!31363)) (EmptyCell!9418) )
))
(declare-datatypes ((array!55578 0))(
  ( (array!55579 (arr!26730 (Array (_ BitVec 32) ValueCell!9418)) (size!27190 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55578)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31363)

(declare-fun minValue!1173 () V!31363)

(declare-fun getCurrentListMap!3132 (array!55576 array!55578 (_ BitVec 32) (_ BitVec 32) V!31363 V!31363 (_ BitVec 32) Int) ListLongMap!11807)

(assert (=> b!927290 (= lt!417962 (getCurrentListMap!3132 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31363)

(declare-fun lt!417958 () Unit!31366)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!96 (array!55576 array!55578 (_ BitVec 32) (_ BitVec 32) V!31363 V!31363 (_ BitVec 64) V!31363 (_ BitVec 32) Int) Unit!31366)

(assert (=> b!927290 (= lt!417958 (lemmaListMapApplyFromThenApplyFromZero!96 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927291 () Bool)

(declare-fun e!520612 () Bool)

(assert (=> b!927291 (= e!520612 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!927292 () Bool)

(declare-fun e!520617 () Bool)

(assert (=> b!927292 (= e!520617 e!520606)))

(declare-fun res!624703 () Bool)

(assert (=> b!927292 (=> (not res!624703) (not e!520606))))

(declare-fun lt!417954 () ListLongMap!11807)

(assert (=> b!927292 (= res!624703 (contains!4938 lt!417954 k!1099))))

(assert (=> b!927292 (= lt!417954 (getCurrentListMap!3132 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927293 () Bool)

(declare-fun e!520611 () Bool)

(declare-fun tp_is_empty!19799 () Bool)

(assert (=> b!927293 (= e!520611 tp_is_empty!19799)))

(declare-fun b!927294 () Bool)

(declare-fun e!520614 () Bool)

(declare-fun mapRes!31455 () Bool)

(assert (=> b!927294 (= e!520614 (and e!520611 mapRes!31455))))

(declare-fun condMapEmpty!31455 () Bool)

(declare-fun mapDefault!31455 () ValueCell!9418)


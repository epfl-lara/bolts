; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79102 () Bool)

(assert start!79102)

(declare-fun b_free!17287 () Bool)

(declare-fun b_next!17287 () Bool)

(assert (=> start!79102 (= b_free!17287 (not b_next!17287))))

(declare-fun tp!60303 () Bool)

(declare-fun b_and!28329 () Bool)

(assert (=> start!79102 (= tp!60303 b_and!28329)))

(declare-fun b!927163 () Bool)

(declare-fun res!624641 () Bool)

(declare-fun e!520528 () Bool)

(assert (=> b!927163 (=> (not res!624641) (not e!520528))))

(declare-datatypes ((array!55568 0))(
  ( (array!55569 (arr!26725 (Array (_ BitVec 32) (_ BitVec 64))) (size!27185 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55568)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31359 0))(
  ( (V!31360 (val!9948 Int)) )
))
(declare-datatypes ((ValueCell!9416 0))(
  ( (ValueCellFull!9416 (v!12466 V!31359)) (EmptyCell!9416) )
))
(declare-datatypes ((array!55570 0))(
  ( (array!55571 (arr!26726 (Array (_ BitVec 32) ValueCell!9416)) (size!27186 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55570)

(assert (=> b!927163 (= res!624641 (and (= (size!27186 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27185 _keys!1487) (size!27186 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927164 () Bool)

(declare-fun e!520537 () Bool)

(assert (=> b!927164 (= e!520537 (not true))))

(declare-fun e!520532 () Bool)

(assert (=> b!927164 e!520532))

(declare-fun res!624640 () Bool)

(assert (=> b!927164 (=> (not res!624640) (not e!520532))))

(declare-datatypes ((tuple2!13092 0))(
  ( (tuple2!13093 (_1!6556 (_ BitVec 64)) (_2!6556 V!31359)) )
))
(declare-datatypes ((List!18919 0))(
  ( (Nil!18916) (Cons!18915 (h!20061 tuple2!13092) (t!26944 List!18919)) )
))
(declare-datatypes ((ListLongMap!11803 0))(
  ( (ListLongMap!11804 (toList!5917 List!18919)) )
))
(declare-fun lt!417870 () ListLongMap!11803)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4936 (ListLongMap!11803 (_ BitVec 64)) Bool)

(assert (=> b!927164 (= res!624640 (contains!4936 lt!417870 k!1099))))

(declare-fun zeroValue!1173 () V!31359)

(declare-fun minValue!1173 () V!31359)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3130 (array!55568 array!55570 (_ BitVec 32) (_ BitVec 32) V!31359 V!31359 (_ BitVec 32) Int) ListLongMap!11803)

(assert (=> b!927164 (= lt!417870 (getCurrentListMap!3130 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun v!791 () V!31359)

(declare-datatypes ((Unit!31360 0))(
  ( (Unit!31361) )
))
(declare-fun lt!417860 () Unit!31360)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!94 (array!55568 array!55570 (_ BitVec 32) (_ BitVec 32) V!31359 V!31359 (_ BitVec 64) V!31359 (_ BitVec 32) Int) Unit!31360)

(assert (=> b!927164 (= lt!417860 (lemmaListMapApplyFromThenApplyFromZero!94 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927165 () Bool)

(declare-fun e!520536 () Bool)

(declare-fun e!520534 () Bool)

(assert (=> b!927165 (= e!520536 e!520534)))

(declare-fun res!624637 () Bool)

(assert (=> b!927165 (=> (not res!624637) (not e!520534))))

(declare-fun lt!417871 () V!31359)

(assert (=> b!927165 (= res!624637 (and (= lt!417871 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!417863 () ListLongMap!11803)

(declare-fun apply!714 (ListLongMap!11803 (_ BitVec 64)) V!31359)

(assert (=> b!927165 (= lt!417871 (apply!714 lt!417863 k!1099))))

(declare-fun mapIsEmpty!31449 () Bool)

(declare-fun mapRes!31449 () Bool)

(assert (=> mapIsEmpty!31449 mapRes!31449))

(declare-fun b!927166 () Bool)

(declare-fun e!520539 () Bool)

(declare-fun e!520530 () Bool)

(assert (=> b!927166 (= e!520539 (and e!520530 mapRes!31449))))

(declare-fun condMapEmpty!31449 () Bool)

(declare-fun mapDefault!31449 () ValueCell!9416)


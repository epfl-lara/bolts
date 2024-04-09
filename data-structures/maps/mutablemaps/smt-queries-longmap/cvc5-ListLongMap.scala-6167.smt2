; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79138 () Bool)

(assert start!79138)

(declare-fun b_free!17323 () Bool)

(declare-fun b_next!17323 () Bool)

(assert (=> start!79138 (= b_free!17323 (not b_next!17323))))

(declare-fun tp!60411 () Bool)

(declare-fun b_and!28401 () Bool)

(assert (=> start!79138 (= tp!60411 b_and!28401)))

(declare-fun b!928279 () Bool)

(declare-datatypes ((Unit!31418 0))(
  ( (Unit!31419) )
))
(declare-fun e!521235 () Unit!31418)

(declare-fun e!521229 () Unit!31418)

(assert (=> b!928279 (= e!521235 e!521229)))

(declare-fun lt!418735 () (_ BitVec 64))

(declare-datatypes ((array!55638 0))(
  ( (array!55639 (arr!26760 (Array (_ BitVec 32) (_ BitVec 64))) (size!27220 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55638)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928279 (= lt!418735 (select (arr!26760 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96932 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!928279 (= c!96932 (validKeyInArray!0 lt!418735))))

(declare-fun b!928281 () Bool)

(declare-fun res!625232 () Bool)

(declare-fun e!521238 () Bool)

(assert (=> b!928281 (=> (not res!625232) (not e!521238))))

(declare-datatypes ((List!18949 0))(
  ( (Nil!18946) (Cons!18945 (h!20091 (_ BitVec 64)) (t!27010 List!18949)) )
))
(declare-fun arrayNoDuplicates!0 (array!55638 (_ BitVec 32) List!18949) Bool)

(assert (=> b!928281 (= res!625232 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18946))))

(declare-fun b!928282 () Bool)

(declare-fun e!521234 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!928282 (= e!521234 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!928283 () Bool)

(declare-fun e!521237 () Bool)

(declare-fun e!521241 () Bool)

(assert (=> b!928283 (= e!521237 e!521241)))

(declare-fun res!625239 () Bool)

(assert (=> b!928283 (=> (not res!625239) (not e!521241))))

(declare-datatypes ((V!31407 0))(
  ( (V!31408 (val!9966 Int)) )
))
(declare-fun v!791 () V!31407)

(declare-fun lt!418732 () V!31407)

(assert (=> b!928283 (= res!625239 (and (= lt!418732 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13126 0))(
  ( (tuple2!13127 (_1!6573 (_ BitVec 64)) (_2!6573 V!31407)) )
))
(declare-datatypes ((List!18950 0))(
  ( (Nil!18947) (Cons!18946 (h!20092 tuple2!13126) (t!27011 List!18950)) )
))
(declare-datatypes ((ListLongMap!11837 0))(
  ( (ListLongMap!11838 (toList!5934 List!18950)) )
))
(declare-fun lt!418726 () ListLongMap!11837)

(declare-fun apply!730 (ListLongMap!11837 (_ BitVec 64)) V!31407)

(assert (=> b!928283 (= lt!418732 (apply!730 lt!418726 k!1099))))

(declare-fun b!928284 () Bool)

(declare-fun arrayContainsKey!0 (array!55638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!928284 (= e!521234 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!928285 () Bool)

(declare-fun Unit!31420 () Unit!31418)

(assert (=> b!928285 (= e!521229 Unit!31420)))

(declare-fun b!928286 () Bool)

(declare-fun e!521240 () Bool)

(assert (=> b!928286 (= e!521240 (not true))))

(declare-fun e!521230 () Bool)

(assert (=> b!928286 e!521230))

(declare-fun res!625235 () Bool)

(assert (=> b!928286 (=> (not res!625235) (not e!521230))))

(declare-fun lt!418734 () ListLongMap!11837)

(declare-fun contains!4953 (ListLongMap!11837 (_ BitVec 64)) Bool)

(assert (=> b!928286 (= res!625235 (contains!4953 lt!418734 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9434 0))(
  ( (ValueCellFull!9434 (v!12484 V!31407)) (EmptyCell!9434) )
))
(declare-datatypes ((array!55640 0))(
  ( (array!55641 (arr!26761 (Array (_ BitVec 32) ValueCell!9434)) (size!27221 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55640)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31407)

(declare-fun minValue!1173 () V!31407)

(declare-fun getCurrentListMap!3147 (array!55638 array!55640 (_ BitVec 32) (_ BitVec 32) V!31407 V!31407 (_ BitVec 32) Int) ListLongMap!11837)

(assert (=> b!928286 (= lt!418734 (getCurrentListMap!3147 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!418730 () Unit!31418)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!108 (array!55638 array!55640 (_ BitVec 32) (_ BitVec 32) V!31407 V!31407 (_ BitVec 64) V!31407 (_ BitVec 32) Int) Unit!31418)

(assert (=> b!928286 (= lt!418730 (lemmaListMapApplyFromThenApplyFromZero!108 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928287 () Bool)

(declare-fun res!625236 () Bool)

(assert (=> b!928287 (=> (not res!625236) (not e!521238))))

(assert (=> b!928287 (= res!625236 (and (= (size!27221 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27220 _keys!1487) (size!27221 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31503 () Bool)

(declare-fun mapRes!31503 () Bool)

(assert (=> mapIsEmpty!31503 mapRes!31503))

(declare-fun b!928288 () Bool)

(declare-fun e!521231 () Bool)

(assert (=> b!928288 (= e!521231 e!521240)))

(declare-fun res!625233 () Bool)

(assert (=> b!928288 (=> (not res!625233) (not e!521240))))

(declare-fun lt!418729 () ListLongMap!11837)

(assert (=> b!928288 (= res!625233 (contains!4953 lt!418729 k!1099))))

(assert (=> b!928288 (= lt!418729 (getCurrentListMap!3147 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928289 () Bool)

(declare-fun res!625241 () Bool)

(assert (=> b!928289 (=> (not res!625241) (not e!521238))))

(assert (=> b!928289 (= res!625241 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27220 _keys!1487))))))

(declare-fun mapNonEmpty!31503 () Bool)

(declare-fun tp!60410 () Bool)

(declare-fun e!521236 () Bool)

(assert (=> mapNonEmpty!31503 (= mapRes!31503 (and tp!60410 e!521236))))

(declare-fun mapValue!31503 () ValueCell!9434)

(declare-fun mapKey!31503 () (_ BitVec 32))

(declare-fun mapRest!31503 () (Array (_ BitVec 32) ValueCell!9434))

(assert (=> mapNonEmpty!31503 (= (arr!26761 _values!1231) (store mapRest!31503 mapKey!31503 mapValue!31503))))

(declare-fun b!928290 () Bool)

(assert (=> b!928290 (= e!521230 (= (apply!730 lt!418734 k!1099) v!791))))

(declare-fun b!928291 () Bool)

(assert (=> b!928291 (= e!521238 e!521237)))

(declare-fun res!625231 () Bool)

(assert (=> b!928291 (=> (not res!625231) (not e!521237))))

(assert (=> b!928291 (= res!625231 (contains!4953 lt!418726 k!1099))))

(assert (=> b!928291 (= lt!418726 (getCurrentListMap!3147 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928292 () Bool)

(declare-fun e!521232 () Bool)

(declare-fun e!521233 () Bool)

(assert (=> b!928292 (= e!521232 (and e!521233 mapRes!31503))))

(declare-fun condMapEmpty!31503 () Bool)

(declare-fun mapDefault!31503 () ValueCell!9434)


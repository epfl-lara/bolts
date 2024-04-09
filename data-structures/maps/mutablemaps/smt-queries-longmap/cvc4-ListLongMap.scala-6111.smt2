; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78806 () Bool)

(assert start!78806)

(declare-fun b_free!16991 () Bool)

(declare-fun b_next!16991 () Bool)

(assert (=> start!78806 (= b_free!16991 (not b_next!16991))))

(declare-fun tp!59414 () Bool)

(declare-fun b_and!27737 () Bool)

(assert (=> start!78806 (= tp!59414 b_and!27737)))

(declare-fun b!919245 () Bool)

(declare-fun e!516014 () Bool)

(declare-fun tp_is_empty!19499 () Bool)

(assert (=> b!919245 (= e!516014 tp_is_empty!19499)))

(declare-fun b!919246 () Bool)

(declare-fun res!619950 () Bool)

(declare-fun e!516016 () Bool)

(assert (=> b!919246 (=> (not res!619950) (not e!516016))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!30963 0))(
  ( (V!30964 (val!9800 Int)) )
))
(declare-fun v!791 () V!30963)

(declare-datatypes ((tuple2!12822 0))(
  ( (tuple2!12823 (_1!6421 (_ BitVec 64)) (_2!6421 V!30963)) )
))
(declare-datatypes ((List!18664 0))(
  ( (Nil!18661) (Cons!18660 (h!19806 tuple2!12822) (t!26393 List!18664)) )
))
(declare-datatypes ((ListLongMap!11533 0))(
  ( (ListLongMap!11534 (toList!5782 List!18664)) )
))
(declare-fun lt!412627 () ListLongMap!11533)

(declare-fun apply!597 (ListLongMap!11533 (_ BitVec 64)) V!30963)

(assert (=> b!919246 (= res!619950 (= (apply!597 lt!412627 k!1099) v!791))))

(declare-fun b!919247 () Bool)

(declare-fun res!619952 () Bool)

(declare-fun e!516018 () Bool)

(assert (=> b!919247 (=> (not res!619952) (not e!516018))))

(declare-datatypes ((array!54990 0))(
  ( (array!54991 (arr!26436 (Array (_ BitVec 32) (_ BitVec 64))) (size!26896 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54990)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54990 (_ BitVec 32)) Bool)

(assert (=> b!919247 (= res!619952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919248 () Bool)

(declare-fun e!516012 () Bool)

(assert (=> b!919248 (= e!516016 e!516012)))

(declare-fun res!619944 () Bool)

(assert (=> b!919248 (=> (not res!619944) (not e!516012))))

(declare-fun lt!412629 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919248 (= res!619944 (validKeyInArray!0 lt!412629))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919248 (= lt!412629 (select (arr!26436 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919249 () Bool)

(declare-fun res!619946 () Bool)

(assert (=> b!919249 (=> (not res!619946) (not e!516016))))

(assert (=> b!919249 (= res!619946 (validKeyInArray!0 k!1099))))

(declare-fun b!919250 () Bool)

(declare-fun res!619947 () Bool)

(assert (=> b!919250 (=> (not res!619947) (not e!516018))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9268 0))(
  ( (ValueCellFull!9268 (v!12318 V!30963)) (EmptyCell!9268) )
))
(declare-datatypes ((array!54992 0))(
  ( (array!54993 (arr!26437 (Array (_ BitVec 32) ValueCell!9268)) (size!26897 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54992)

(assert (=> b!919250 (= res!619947 (and (= (size!26897 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26896 _keys!1487) (size!26897 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919251 () Bool)

(declare-fun res!619949 () Bool)

(assert (=> b!919251 (=> (not res!619949) (not e!516016))))

(assert (=> b!919251 (= res!619949 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919252 () Bool)

(assert (=> b!919252 (= e!516018 e!516016)))

(declare-fun res!619945 () Bool)

(assert (=> b!919252 (=> (not res!619945) (not e!516016))))

(declare-fun contains!4793 (ListLongMap!11533 (_ BitVec 64)) Bool)

(assert (=> b!919252 (= res!619945 (contains!4793 lt!412627 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30963)

(declare-fun minValue!1173 () V!30963)

(declare-fun getCurrentListMap!3005 (array!54990 array!54992 (_ BitVec 32) (_ BitVec 32) V!30963 V!30963 (_ BitVec 32) Int) ListLongMap!11533)

(assert (=> b!919252 (= lt!412627 (getCurrentListMap!3005 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!619951 () Bool)

(assert (=> start!78806 (=> (not res!619951) (not e!516018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78806 (= res!619951 (validMask!0 mask!1881))))

(assert (=> start!78806 e!516018))

(assert (=> start!78806 true))

(assert (=> start!78806 tp_is_empty!19499))

(declare-fun e!516015 () Bool)

(declare-fun array_inv!20596 (array!54992) Bool)

(assert (=> start!78806 (and (array_inv!20596 _values!1231) e!516015)))

(assert (=> start!78806 tp!59414))

(declare-fun array_inv!20597 (array!54990) Bool)

(assert (=> start!78806 (array_inv!20597 _keys!1487)))

(declare-fun b!919253 () Bool)

(declare-fun res!619948 () Bool)

(assert (=> b!919253 (=> (not res!619948) (not e!516018))))

(declare-datatypes ((List!18665 0))(
  ( (Nil!18662) (Cons!18661 (h!19807 (_ BitVec 64)) (t!26394 List!18665)) )
))
(declare-fun arrayNoDuplicates!0 (array!54990 (_ BitVec 32) List!18665) Bool)

(assert (=> b!919253 (= res!619948 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18662))))

(declare-fun b!919254 () Bool)

(assert (=> b!919254 (= e!516012 (not true))))

(assert (=> b!919254 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18662)))

(declare-datatypes ((Unit!31021 0))(
  ( (Unit!31022) )
))
(declare-fun lt!412626 () Unit!31021)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!54990 (_ BitVec 32) (_ BitVec 32)) Unit!31021)

(assert (=> b!919254 (= lt!412626 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412631 () tuple2!12822)

(declare-fun +!2607 (ListLongMap!11533 tuple2!12822) ListLongMap!11533)

(assert (=> b!919254 (contains!4793 (+!2607 lt!412627 lt!412631) k!1099)))

(declare-fun lt!412630 () V!30963)

(declare-fun lt!412628 () Unit!31021)

(declare-fun addStillContains!369 (ListLongMap!11533 (_ BitVec 64) V!30963 (_ BitVec 64)) Unit!31021)

(assert (=> b!919254 (= lt!412628 (addStillContains!369 lt!412627 lt!412629 lt!412630 k!1099))))

(assert (=> b!919254 (= (getCurrentListMap!3005 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2607 (getCurrentListMap!3005 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412631))))

(assert (=> b!919254 (= lt!412631 (tuple2!12823 lt!412629 lt!412630))))

(declare-fun get!13882 (ValueCell!9268 V!30963) V!30963)

(declare-fun dynLambda!1446 (Int (_ BitVec 64)) V!30963)

(assert (=> b!919254 (= lt!412630 (get!13882 (select (arr!26437 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1446 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412632 () Unit!31021)

(declare-fun lemmaListMapRecursiveValidKeyArray!42 (array!54990 array!54992 (_ BitVec 32) (_ BitVec 32) V!30963 V!30963 (_ BitVec 32) Int) Unit!31021)

(assert (=> b!919254 (= lt!412632 (lemmaListMapRecursiveValidKeyArray!42 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919255 () Bool)

(declare-fun e!516013 () Bool)

(assert (=> b!919255 (= e!516013 tp_is_empty!19499)))

(declare-fun mapNonEmpty!31005 () Bool)

(declare-fun mapRes!31005 () Bool)

(declare-fun tp!59415 () Bool)

(assert (=> mapNonEmpty!31005 (= mapRes!31005 (and tp!59415 e!516014))))

(declare-fun mapRest!31005 () (Array (_ BitVec 32) ValueCell!9268))

(declare-fun mapKey!31005 () (_ BitVec 32))

(declare-fun mapValue!31005 () ValueCell!9268)

(assert (=> mapNonEmpty!31005 (= (arr!26437 _values!1231) (store mapRest!31005 mapKey!31005 mapValue!31005))))

(declare-fun b!919256 () Bool)

(declare-fun res!619943 () Bool)

(assert (=> b!919256 (=> (not res!619943) (not e!516018))))

(assert (=> b!919256 (= res!619943 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26896 _keys!1487))))))

(declare-fun b!919257 () Bool)

(assert (=> b!919257 (= e!516015 (and e!516013 mapRes!31005))))

(declare-fun condMapEmpty!31005 () Bool)

(declare-fun mapDefault!31005 () ValueCell!9268)


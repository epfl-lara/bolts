; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78772 () Bool)

(assert start!78772)

(declare-fun b_free!16957 () Bool)

(declare-fun b_next!16957 () Bool)

(assert (=> start!78772 (= b_free!16957 (not b_next!16957))))

(declare-fun tp!59312 () Bool)

(declare-fun b_and!27669 () Bool)

(assert (=> start!78772 (= tp!59312 b_and!27669)))

(declare-fun b!918548 () Bool)

(declare-fun e!515660 () Bool)

(declare-fun e!515656 () Bool)

(assert (=> b!918548 (= e!515660 e!515656)))

(declare-fun res!619435 () Bool)

(assert (=> b!918548 (=> (not res!619435) (not e!515656))))

(declare-datatypes ((V!30919 0))(
  ( (V!30920 (val!9783 Int)) )
))
(declare-datatypes ((tuple2!12792 0))(
  ( (tuple2!12793 (_1!6406 (_ BitVec 64)) (_2!6406 V!30919)) )
))
(declare-datatypes ((List!18634 0))(
  ( (Nil!18631) (Cons!18630 (h!19776 tuple2!12792) (t!26329 List!18634)) )
))
(declare-datatypes ((ListLongMap!11503 0))(
  ( (ListLongMap!11504 (toList!5767 List!18634)) )
))
(declare-fun lt!412296 () ListLongMap!11503)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4780 (ListLongMap!11503 (_ BitVec 64)) Bool)

(assert (=> b!918548 (= res!619435 (contains!4780 lt!412296 k!1099))))

(declare-datatypes ((array!54922 0))(
  ( (array!54923 (arr!26402 (Array (_ BitVec 32) (_ BitVec 64))) (size!26862 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54922)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9251 0))(
  ( (ValueCellFull!9251 (v!12301 V!30919)) (EmptyCell!9251) )
))
(declare-datatypes ((array!54924 0))(
  ( (array!54925 (arr!26403 (Array (_ BitVec 32) ValueCell!9251)) (size!26863 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54924)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30919)

(declare-fun minValue!1173 () V!30919)

(declare-fun getCurrentListMap!2992 (array!54922 array!54924 (_ BitVec 32) (_ BitVec 32) V!30919 V!30919 (_ BitVec 32) Int) ListLongMap!11503)

(assert (=> b!918548 (= lt!412296 (getCurrentListMap!2992 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918549 () Bool)

(declare-fun res!619441 () Bool)

(assert (=> b!918549 (=> (not res!619441) (not e!515660))))

(declare-datatypes ((List!18635 0))(
  ( (Nil!18632) (Cons!18631 (h!19777 (_ BitVec 64)) (t!26330 List!18635)) )
))
(declare-fun arrayNoDuplicates!0 (array!54922 (_ BitVec 32) List!18635) Bool)

(assert (=> b!918549 (= res!619441 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18632))))

(declare-fun b!918550 () Bool)

(declare-fun res!619440 () Bool)

(assert (=> b!918550 (=> (not res!619440) (not e!515660))))

(assert (=> b!918550 (= res!619440 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26862 _keys!1487))))))

(declare-fun b!918551 () Bool)

(declare-fun e!515657 () Bool)

(assert (=> b!918551 (= e!515657 (not true))))

(declare-fun lt!412299 () tuple2!12792)

(declare-fun +!2595 (ListLongMap!11503 tuple2!12792) ListLongMap!11503)

(assert (=> b!918551 (contains!4780 (+!2595 lt!412296 lt!412299) k!1099)))

(declare-fun lt!412295 () (_ BitVec 64))

(declare-fun lt!412294 () V!30919)

(declare-datatypes ((Unit!30997 0))(
  ( (Unit!30998) )
))
(declare-fun lt!412297 () Unit!30997)

(declare-fun addStillContains!357 (ListLongMap!11503 (_ BitVec 64) V!30919 (_ BitVec 64)) Unit!30997)

(assert (=> b!918551 (= lt!412297 (addStillContains!357 lt!412296 lt!412295 lt!412294 k!1099))))

(assert (=> b!918551 (= (getCurrentListMap!2992 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2595 (getCurrentListMap!2992 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412299))))

(assert (=> b!918551 (= lt!412299 (tuple2!12793 lt!412295 lt!412294))))

(declare-fun get!13860 (ValueCell!9251 V!30919) V!30919)

(declare-fun dynLambda!1434 (Int (_ BitVec 64)) V!30919)

(assert (=> b!918551 (= lt!412294 (get!13860 (select (arr!26403 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1434 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412298 () Unit!30997)

(declare-fun lemmaListMapRecursiveValidKeyArray!30 (array!54922 array!54924 (_ BitVec 32) (_ BitVec 32) V!30919 V!30919 (_ BitVec 32) Int) Unit!30997)

(assert (=> b!918551 (= lt!412298 (lemmaListMapRecursiveValidKeyArray!30 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918552 () Bool)

(declare-fun res!619442 () Bool)

(assert (=> b!918552 (=> (not res!619442) (not e!515660))))

(assert (=> b!918552 (= res!619442 (and (= (size!26863 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26862 _keys!1487) (size!26863 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918553 () Bool)

(declare-fun res!619438 () Bool)

(assert (=> b!918553 (=> (not res!619438) (not e!515656))))

(assert (=> b!918553 (= res!619438 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!619437 () Bool)

(assert (=> start!78772 (=> (not res!619437) (not e!515660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78772 (= res!619437 (validMask!0 mask!1881))))

(assert (=> start!78772 e!515660))

(assert (=> start!78772 true))

(declare-fun tp_is_empty!19465 () Bool)

(assert (=> start!78772 tp_is_empty!19465))

(declare-fun e!515655 () Bool)

(declare-fun array_inv!20574 (array!54924) Bool)

(assert (=> start!78772 (and (array_inv!20574 _values!1231) e!515655)))

(assert (=> start!78772 tp!59312))

(declare-fun array_inv!20575 (array!54922) Bool)

(assert (=> start!78772 (array_inv!20575 _keys!1487)))

(declare-fun b!918554 () Bool)

(declare-fun res!619439 () Bool)

(assert (=> b!918554 (=> (not res!619439) (not e!515656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918554 (= res!619439 (validKeyInArray!0 k!1099))))

(declare-fun b!918555 () Bool)

(declare-fun e!515658 () Bool)

(assert (=> b!918555 (= e!515658 tp_is_empty!19465)))

(declare-fun mapIsEmpty!30954 () Bool)

(declare-fun mapRes!30954 () Bool)

(assert (=> mapIsEmpty!30954 mapRes!30954))

(declare-fun b!918556 () Bool)

(declare-fun e!515659 () Bool)

(assert (=> b!918556 (= e!515659 tp_is_empty!19465)))

(declare-fun b!918557 () Bool)

(assert (=> b!918557 (= e!515655 (and e!515659 mapRes!30954))))

(declare-fun condMapEmpty!30954 () Bool)

(declare-fun mapDefault!30954 () ValueCell!9251)


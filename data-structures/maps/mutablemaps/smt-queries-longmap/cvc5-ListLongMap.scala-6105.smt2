; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78766 () Bool)

(assert start!78766)

(declare-fun b_free!16951 () Bool)

(declare-fun b_next!16951 () Bool)

(assert (=> start!78766 (= b_free!16951 (not b_next!16951))))

(declare-fun tp!59294 () Bool)

(declare-fun b_and!27657 () Bool)

(assert (=> start!78766 (= tp!59294 b_and!27657)))

(declare-fun b!918425 () Bool)

(declare-fun res!619347 () Bool)

(declare-fun e!515598 () Bool)

(assert (=> b!918425 (=> (not res!619347) (not e!515598))))

(declare-datatypes ((array!54910 0))(
  ( (array!54911 (arr!26396 (Array (_ BitVec 32) (_ BitVec 64))) (size!26856 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54910)

(declare-datatypes ((List!18629 0))(
  ( (Nil!18626) (Cons!18625 (h!19771 (_ BitVec 64)) (t!26318 List!18629)) )
))
(declare-fun arrayNoDuplicates!0 (array!54910 (_ BitVec 32) List!18629) Bool)

(assert (=> b!918425 (= res!619347 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18626))))

(declare-fun b!918426 () Bool)

(declare-fun e!515596 () Bool)

(declare-fun tp_is_empty!19459 () Bool)

(assert (=> b!918426 (= e!515596 tp_is_empty!19459)))

(declare-fun b!918427 () Bool)

(declare-fun e!515593 () Bool)

(assert (=> b!918427 (= e!515598 e!515593)))

(declare-fun res!619349 () Bool)

(assert (=> b!918427 (=> (not res!619349) (not e!515593))))

(declare-datatypes ((V!30911 0))(
  ( (V!30912 (val!9780 Int)) )
))
(declare-datatypes ((tuple2!12786 0))(
  ( (tuple2!12787 (_1!6403 (_ BitVec 64)) (_2!6403 V!30911)) )
))
(declare-datatypes ((List!18630 0))(
  ( (Nil!18627) (Cons!18626 (h!19772 tuple2!12786) (t!26319 List!18630)) )
))
(declare-datatypes ((ListLongMap!11497 0))(
  ( (ListLongMap!11498 (toList!5764 List!18630)) )
))
(declare-fun lt!412241 () ListLongMap!11497)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4777 (ListLongMap!11497 (_ BitVec 64)) Bool)

(assert (=> b!918427 (= res!619349 (contains!4777 lt!412241 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9248 0))(
  ( (ValueCellFull!9248 (v!12298 V!30911)) (EmptyCell!9248) )
))
(declare-datatypes ((array!54912 0))(
  ( (array!54913 (arr!26397 (Array (_ BitVec 32) ValueCell!9248)) (size!26857 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54912)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30911)

(declare-fun minValue!1173 () V!30911)

(declare-fun getCurrentListMap!2989 (array!54910 array!54912 (_ BitVec 32) (_ BitVec 32) V!30911 V!30911 (_ BitVec 32) Int) ListLongMap!11497)

(assert (=> b!918427 (= lt!412241 (getCurrentListMap!2989 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918428 () Bool)

(declare-fun res!619345 () Bool)

(assert (=> b!918428 (=> (not res!619345) (not e!515593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918428 (= res!619345 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!30945 () Bool)

(declare-fun mapRes!30945 () Bool)

(declare-fun tp!59295 () Bool)

(declare-fun e!515595 () Bool)

(assert (=> mapNonEmpty!30945 (= mapRes!30945 (and tp!59295 e!515595))))

(declare-fun mapRest!30945 () (Array (_ BitVec 32) ValueCell!9248))

(declare-fun mapValue!30945 () ValueCell!9248)

(declare-fun mapKey!30945 () (_ BitVec 32))

(assert (=> mapNonEmpty!30945 (= (arr!26397 _values!1231) (store mapRest!30945 mapKey!30945 mapValue!30945))))

(declare-fun b!918429 () Bool)

(declare-fun res!619348 () Bool)

(assert (=> b!918429 (=> (not res!619348) (not e!515593))))

(assert (=> b!918429 (= res!619348 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!619346 () Bool)

(assert (=> start!78766 (=> (not res!619346) (not e!515598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78766 (= res!619346 (validMask!0 mask!1881))))

(assert (=> start!78766 e!515598))

(assert (=> start!78766 true))

(assert (=> start!78766 tp_is_empty!19459))

(declare-fun e!515592 () Bool)

(declare-fun array_inv!20570 (array!54912) Bool)

(assert (=> start!78766 (and (array_inv!20570 _values!1231) e!515592)))

(assert (=> start!78766 tp!59294))

(declare-fun array_inv!20571 (array!54910) Bool)

(assert (=> start!78766 (array_inv!20571 _keys!1487)))

(declare-fun b!918430 () Bool)

(declare-fun res!619344 () Bool)

(assert (=> b!918430 (=> (not res!619344) (not e!515598))))

(assert (=> b!918430 (= res!619344 (and (= (size!26857 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26856 _keys!1487) (size!26857 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918431 () Bool)

(assert (=> b!918431 (= e!515595 tp_is_empty!19459)))

(declare-fun b!918432 () Bool)

(declare-fun e!515597 () Bool)

(assert (=> b!918432 (= e!515597 (not true))))

(declare-fun lt!412242 () tuple2!12786)

(declare-fun +!2592 (ListLongMap!11497 tuple2!12786) ListLongMap!11497)

(assert (=> b!918432 (contains!4777 (+!2592 lt!412241 lt!412242) k!1099)))

(declare-datatypes ((Unit!30991 0))(
  ( (Unit!30992) )
))
(declare-fun lt!412240 () Unit!30991)

(declare-fun lt!412245 () V!30911)

(declare-fun lt!412243 () (_ BitVec 64))

(declare-fun addStillContains!354 (ListLongMap!11497 (_ BitVec 64) V!30911 (_ BitVec 64)) Unit!30991)

(assert (=> b!918432 (= lt!412240 (addStillContains!354 lt!412241 lt!412243 lt!412245 k!1099))))

(assert (=> b!918432 (= (getCurrentListMap!2989 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2592 (getCurrentListMap!2989 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412242))))

(assert (=> b!918432 (= lt!412242 (tuple2!12787 lt!412243 lt!412245))))

(declare-fun get!13855 (ValueCell!9248 V!30911) V!30911)

(declare-fun dynLambda!1431 (Int (_ BitVec 64)) V!30911)

(assert (=> b!918432 (= lt!412245 (get!13855 (select (arr!26397 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1431 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412244 () Unit!30991)

(declare-fun lemmaListMapRecursiveValidKeyArray!27 (array!54910 array!54912 (_ BitVec 32) (_ BitVec 32) V!30911 V!30911 (_ BitVec 32) Int) Unit!30991)

(assert (=> b!918432 (= lt!412244 (lemmaListMapRecursiveValidKeyArray!27 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918433 () Bool)

(declare-fun res!619351 () Bool)

(assert (=> b!918433 (=> (not res!619351) (not e!515593))))

(declare-fun v!791 () V!30911)

(declare-fun apply!584 (ListLongMap!11497 (_ BitVec 64)) V!30911)

(assert (=> b!918433 (= res!619351 (= (apply!584 lt!412241 k!1099) v!791))))

(declare-fun mapIsEmpty!30945 () Bool)

(assert (=> mapIsEmpty!30945 mapRes!30945))

(declare-fun b!918434 () Bool)

(declare-fun res!619343 () Bool)

(assert (=> b!918434 (=> (not res!619343) (not e!515598))))

(assert (=> b!918434 (= res!619343 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26856 _keys!1487))))))

(declare-fun b!918435 () Bool)

(assert (=> b!918435 (= e!515593 e!515597)))

(declare-fun res!619352 () Bool)

(assert (=> b!918435 (=> (not res!619352) (not e!515597))))

(assert (=> b!918435 (= res!619352 (validKeyInArray!0 lt!412243))))

(assert (=> b!918435 (= lt!412243 (select (arr!26396 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918436 () Bool)

(declare-fun res!619350 () Bool)

(assert (=> b!918436 (=> (not res!619350) (not e!515598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54910 (_ BitVec 32)) Bool)

(assert (=> b!918436 (= res!619350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918437 () Bool)

(assert (=> b!918437 (= e!515592 (and e!515596 mapRes!30945))))

(declare-fun condMapEmpty!30945 () Bool)

(declare-fun mapDefault!30945 () ValueCell!9248)


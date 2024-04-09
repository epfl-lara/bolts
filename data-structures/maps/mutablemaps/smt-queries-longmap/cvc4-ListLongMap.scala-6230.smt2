; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79684 () Bool)

(assert start!79684)

(declare-fun b_free!17705 () Bool)

(declare-fun b_next!17705 () Bool)

(assert (=> start!79684 (= b_free!17705 (not b_next!17705))))

(declare-fun tp!61572 () Bool)

(declare-fun b_and!29019 () Bool)

(assert (=> start!79684 (= tp!61572 b_and!29019)))

(declare-fun b!936438 () Bool)

(declare-fun e!525849 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!936438 (= e!525849 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!936439 () Bool)

(declare-datatypes ((array!56390 0))(
  ( (array!56391 (arr!27131 (Array (_ BitVec 32) (_ BitVec 64))) (size!27591 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56390)

(declare-fun arrayContainsKey!0 (array!56390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936439 (= e!525849 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapNonEmpty!32091 () Bool)

(declare-fun mapRes!32091 () Bool)

(declare-fun tp!61571 () Bool)

(declare-fun e!525846 () Bool)

(assert (=> mapNonEmpty!32091 (= mapRes!32091 (and tp!61571 e!525846))))

(declare-fun mapKey!32091 () (_ BitVec 32))

(declare-datatypes ((V!31915 0))(
  ( (V!31916 (val!10157 Int)) )
))
(declare-datatypes ((ValueCell!9625 0))(
  ( (ValueCellFull!9625 (v!12682 V!31915)) (EmptyCell!9625) )
))
(declare-fun mapRest!32091 () (Array (_ BitVec 32) ValueCell!9625))

(declare-datatypes ((array!56392 0))(
  ( (array!56393 (arr!27132 (Array (_ BitVec 32) ValueCell!9625)) (size!27592 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56392)

(declare-fun mapValue!32091 () ValueCell!9625)

(assert (=> mapNonEmpty!32091 (= (arr!27132 _values!1231) (store mapRest!32091 mapKey!32091 mapValue!32091))))

(declare-fun b!936440 () Bool)

(declare-fun e!525853 () Bool)

(declare-fun e!525848 () Bool)

(assert (=> b!936440 (= e!525853 e!525848)))

(declare-fun res!630609 () Bool)

(assert (=> b!936440 (=> (not res!630609) (not e!525848))))

(declare-datatypes ((tuple2!13442 0))(
  ( (tuple2!13443 (_1!6731 (_ BitVec 64)) (_2!6731 V!31915)) )
))
(declare-datatypes ((List!19248 0))(
  ( (Nil!19245) (Cons!19244 (h!20390 tuple2!13442) (t!27505 List!19248)) )
))
(declare-datatypes ((ListLongMap!12153 0))(
  ( (ListLongMap!12154 (toList!6092 List!19248)) )
))
(declare-fun lt!422290 () ListLongMap!12153)

(declare-fun contains!5102 (ListLongMap!12153 (_ BitVec 64)) Bool)

(assert (=> b!936440 (= res!630609 (contains!5102 lt!422290 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31915)

(declare-fun minValue!1173 () V!31915)

(declare-fun getCurrentListMap!3281 (array!56390 array!56392 (_ BitVec 32) (_ BitVec 32) V!31915 V!31915 (_ BitVec 32) Int) ListLongMap!12153)

(assert (=> b!936440 (= lt!422290 (getCurrentListMap!3281 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936441 () Bool)

(declare-fun res!630613 () Bool)

(assert (=> b!936441 (=> (not res!630613) (not e!525853))))

(declare-datatypes ((List!19249 0))(
  ( (Nil!19246) (Cons!19245 (h!20391 (_ BitVec 64)) (t!27506 List!19249)) )
))
(declare-fun arrayNoDuplicates!0 (array!56390 (_ BitVec 32) List!19249) Bool)

(assert (=> b!936441 (= res!630613 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19246))))

(declare-fun b!936442 () Bool)

(declare-fun res!630611 () Bool)

(assert (=> b!936442 (=> (not res!630611) (not e!525853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56390 (_ BitVec 32)) Bool)

(assert (=> b!936442 (= res!630611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!630612 () Bool)

(assert (=> start!79684 (=> (not res!630612) (not e!525853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79684 (= res!630612 (validMask!0 mask!1881))))

(assert (=> start!79684 e!525853))

(assert (=> start!79684 true))

(declare-fun tp_is_empty!20213 () Bool)

(assert (=> start!79684 tp_is_empty!20213))

(declare-fun e!525847 () Bool)

(declare-fun array_inv!21068 (array!56392) Bool)

(assert (=> start!79684 (and (array_inv!21068 _values!1231) e!525847)))

(assert (=> start!79684 tp!61572))

(declare-fun array_inv!21069 (array!56390) Bool)

(assert (=> start!79684 (array_inv!21069 _keys!1487)))

(declare-fun b!936443 () Bool)

(declare-datatypes ((Unit!31596 0))(
  ( (Unit!31597) )
))
(declare-fun e!525854 () Unit!31596)

(declare-fun Unit!31598 () Unit!31596)

(assert (=> b!936443 (= e!525854 Unit!31598)))

(declare-fun b!936444 () Bool)

(declare-fun e!525850 () Bool)

(assert (=> b!936444 (= e!525850 tp_is_empty!20213)))

(declare-fun b!936445 () Bool)

(declare-fun lt!422289 () ListLongMap!12153)

(declare-fun lt!422284 () V!31915)

(declare-fun apply!870 (ListLongMap!12153 (_ BitVec 64)) V!31915)

(assert (=> b!936445 (= (apply!870 lt!422289 k!1099) lt!422284)))

(declare-fun lt!422287 () V!31915)

(declare-fun lt!422292 () Unit!31596)

(declare-fun lt!422291 () (_ BitVec 64))

(declare-fun addApplyDifferent!418 (ListLongMap!12153 (_ BitVec 64) V!31915 (_ BitVec 64)) Unit!31596)

(assert (=> b!936445 (= lt!422292 (addApplyDifferent!418 lt!422290 lt!422291 lt!422287 k!1099))))

(assert (=> b!936445 (not (= lt!422291 k!1099))))

(declare-fun lt!422286 () Unit!31596)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56390 (_ BitVec 64) (_ BitVec 32) List!19249) Unit!31596)

(assert (=> b!936445 (= lt!422286 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19246))))

(assert (=> b!936445 e!525849))

(declare-fun c!97343 () Bool)

(assert (=> b!936445 (= c!97343 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422288 () Unit!31596)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!301 (array!56390 array!56392 (_ BitVec 32) (_ BitVec 32) V!31915 V!31915 (_ BitVec 64) (_ BitVec 32) Int) Unit!31596)

(assert (=> b!936445 (= lt!422288 (lemmaListMapContainsThenArrayContainsFrom!301 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!936445 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19246)))

(declare-fun lt!422295 () Unit!31596)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56390 (_ BitVec 32) (_ BitVec 32)) Unit!31596)

(assert (=> b!936445 (= lt!422295 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!936445 (contains!5102 lt!422289 k!1099)))

(declare-fun lt!422294 () tuple2!13442)

(declare-fun +!2788 (ListLongMap!12153 tuple2!13442) ListLongMap!12153)

(assert (=> b!936445 (= lt!422289 (+!2788 lt!422290 lt!422294))))

(declare-fun lt!422285 () Unit!31596)

(declare-fun addStillContains!544 (ListLongMap!12153 (_ BitVec 64) V!31915 (_ BitVec 64)) Unit!31596)

(assert (=> b!936445 (= lt!422285 (addStillContains!544 lt!422290 lt!422291 lt!422287 k!1099))))

(assert (=> b!936445 (= (getCurrentListMap!3281 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2788 (getCurrentListMap!3281 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422294))))

(assert (=> b!936445 (= lt!422294 (tuple2!13443 lt!422291 lt!422287))))

(declare-fun get!14316 (ValueCell!9625 V!31915) V!31915)

(declare-fun dynLambda!1627 (Int (_ BitVec 64)) V!31915)

(assert (=> b!936445 (= lt!422287 (get!14316 (select (arr!27132 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1627 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422296 () Unit!31596)

(declare-fun lemmaListMapRecursiveValidKeyArray!223 (array!56390 array!56392 (_ BitVec 32) (_ BitVec 32) V!31915 V!31915 (_ BitVec 32) Int) Unit!31596)

(assert (=> b!936445 (= lt!422296 (lemmaListMapRecursiveValidKeyArray!223 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!525851 () Unit!31596)

(assert (=> b!936445 (= e!525851 lt!422292)))

(declare-fun b!936446 () Bool)

(declare-fun res!630614 () Bool)

(assert (=> b!936446 (=> (not res!630614) (not e!525853))))

(assert (=> b!936446 (= res!630614 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27591 _keys!1487))))))

(declare-fun b!936447 () Bool)

(declare-fun res!630608 () Bool)

(assert (=> b!936447 (=> (not res!630608) (not e!525853))))

(assert (=> b!936447 (= res!630608 (and (= (size!27592 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27591 _keys!1487) (size!27592 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936448 () Bool)

(assert (=> b!936448 (= e!525846 tp_is_empty!20213)))

(declare-fun b!936449 () Bool)

(declare-fun e!525852 () Bool)

(assert (=> b!936449 (= e!525852 false)))

(declare-fun lt!422293 () Unit!31596)

(assert (=> b!936449 (= lt!422293 e!525854)))

(declare-fun c!97341 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936449 (= c!97341 (validKeyInArray!0 k!1099))))

(declare-fun b!936450 () Bool)

(declare-fun Unit!31599 () Unit!31596)

(assert (=> b!936450 (= e!525851 Unit!31599)))

(declare-fun mapIsEmpty!32091 () Bool)

(assert (=> mapIsEmpty!32091 mapRes!32091))

(declare-fun b!936451 () Bool)

(assert (=> b!936451 (= e!525847 (and e!525850 mapRes!32091))))

(declare-fun condMapEmpty!32091 () Bool)

(declare-fun mapDefault!32091 () ValueCell!9625)


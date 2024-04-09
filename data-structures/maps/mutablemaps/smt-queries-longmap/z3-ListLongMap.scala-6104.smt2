; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78762 () Bool)

(assert start!78762)

(declare-fun b_free!16947 () Bool)

(declare-fun b_next!16947 () Bool)

(assert (=> start!78762 (= b_free!16947 (not b_next!16947))))

(declare-fun tp!59282 () Bool)

(declare-fun b_and!27649 () Bool)

(assert (=> start!78762 (= tp!59282 b_and!27649)))

(declare-fun b!918343 () Bool)

(declare-fun res!619286 () Bool)

(declare-fun e!515550 () Bool)

(assert (=> b!918343 (=> (not res!619286) (not e!515550))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918343 (= res!619286 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918344 () Bool)

(declare-fun e!515555 () Bool)

(declare-fun tp_is_empty!19455 () Bool)

(assert (=> b!918344 (= e!515555 tp_is_empty!19455)))

(declare-fun mapNonEmpty!30939 () Bool)

(declare-fun mapRes!30939 () Bool)

(declare-fun tp!59283 () Bool)

(declare-fun e!515554 () Bool)

(assert (=> mapNonEmpty!30939 (= mapRes!30939 (and tp!59283 e!515554))))

(declare-datatypes ((V!30905 0))(
  ( (V!30906 (val!9778 Int)) )
))
(declare-datatypes ((ValueCell!9246 0))(
  ( (ValueCellFull!9246 (v!12296 V!30905)) (EmptyCell!9246) )
))
(declare-fun mapRest!30939 () (Array (_ BitVec 32) ValueCell!9246))

(declare-fun mapValue!30939 () ValueCell!9246)

(declare-datatypes ((array!54902 0))(
  ( (array!54903 (arr!26392 (Array (_ BitVec 32) ValueCell!9246)) (size!26852 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54902)

(declare-fun mapKey!30939 () (_ BitVec 32))

(assert (=> mapNonEmpty!30939 (= (arr!26392 _values!1231) (store mapRest!30939 mapKey!30939 mapValue!30939))))

(declare-fun b!918345 () Bool)

(declare-fun e!515551 () Bool)

(assert (=> b!918345 (= e!515550 e!515551)))

(declare-fun res!619283 () Bool)

(assert (=> b!918345 (=> (not res!619283) (not e!515551))))

(declare-fun lt!412207 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918345 (= res!619283 (validKeyInArray!0 lt!412207))))

(declare-datatypes ((array!54904 0))(
  ( (array!54905 (arr!26393 (Array (_ BitVec 32) (_ BitVec 64))) (size!26853 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54904)

(assert (=> b!918345 (= lt!412207 (select (arr!26393 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918347 () Bool)

(declare-fun res!619287 () Bool)

(assert (=> b!918347 (=> (not res!619287) (not e!515550))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30905)

(declare-datatypes ((tuple2!12782 0))(
  ( (tuple2!12783 (_1!6401 (_ BitVec 64)) (_2!6401 V!30905)) )
))
(declare-datatypes ((List!18626 0))(
  ( (Nil!18623) (Cons!18622 (h!19768 tuple2!12782) (t!26311 List!18626)) )
))
(declare-datatypes ((ListLongMap!11493 0))(
  ( (ListLongMap!11494 (toList!5762 List!18626)) )
))
(declare-fun lt!412209 () ListLongMap!11493)

(declare-fun apply!582 (ListLongMap!11493 (_ BitVec 64)) V!30905)

(assert (=> b!918347 (= res!619287 (= (apply!582 lt!412209 k0!1099) v!791))))

(declare-fun b!918348 () Bool)

(assert (=> b!918348 (= e!515554 tp_is_empty!19455)))

(declare-fun b!918349 () Bool)

(declare-fun res!619291 () Bool)

(declare-fun e!515553 () Bool)

(assert (=> b!918349 (=> (not res!619291) (not e!515553))))

(declare-datatypes ((List!18627 0))(
  ( (Nil!18624) (Cons!18623 (h!19769 (_ BitVec 64)) (t!26312 List!18627)) )
))
(declare-fun arrayNoDuplicates!0 (array!54904 (_ BitVec 32) List!18627) Bool)

(assert (=> b!918349 (= res!619291 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18624))))

(declare-fun b!918350 () Bool)

(assert (=> b!918350 (= e!515551 (not true))))

(declare-fun lt!412206 () tuple2!12782)

(declare-fun contains!4776 (ListLongMap!11493 (_ BitVec 64)) Bool)

(declare-fun +!2591 (ListLongMap!11493 tuple2!12782) ListLongMap!11493)

(assert (=> b!918350 (contains!4776 (+!2591 lt!412209 lt!412206) k0!1099)))

(declare-datatypes ((Unit!30989 0))(
  ( (Unit!30990) )
))
(declare-fun lt!412204 () Unit!30989)

(declare-fun lt!412205 () V!30905)

(declare-fun addStillContains!353 (ListLongMap!11493 (_ BitVec 64) V!30905 (_ BitVec 64)) Unit!30989)

(assert (=> b!918350 (= lt!412204 (addStillContains!353 lt!412209 lt!412207 lt!412205 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30905)

(declare-fun minValue!1173 () V!30905)

(declare-fun getCurrentListMap!2988 (array!54904 array!54902 (_ BitVec 32) (_ BitVec 32) V!30905 V!30905 (_ BitVec 32) Int) ListLongMap!11493)

(assert (=> b!918350 (= (getCurrentListMap!2988 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2591 (getCurrentListMap!2988 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412206))))

(assert (=> b!918350 (= lt!412206 (tuple2!12783 lt!412207 lt!412205))))

(declare-fun get!13852 (ValueCell!9246 V!30905) V!30905)

(declare-fun dynLambda!1430 (Int (_ BitVec 64)) V!30905)

(assert (=> b!918350 (= lt!412205 (get!13852 (select (arr!26392 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1430 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412208 () Unit!30989)

(declare-fun lemmaListMapRecursiveValidKeyArray!26 (array!54904 array!54902 (_ BitVec 32) (_ BitVec 32) V!30905 V!30905 (_ BitVec 32) Int) Unit!30989)

(assert (=> b!918350 (= lt!412208 (lemmaListMapRecursiveValidKeyArray!26 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918351 () Bool)

(declare-fun res!619284 () Bool)

(assert (=> b!918351 (=> (not res!619284) (not e!515553))))

(assert (=> b!918351 (= res!619284 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26853 _keys!1487))))))

(declare-fun b!918352 () Bool)

(declare-fun e!515556 () Bool)

(assert (=> b!918352 (= e!515556 (and e!515555 mapRes!30939))))

(declare-fun condMapEmpty!30939 () Bool)

(declare-fun mapDefault!30939 () ValueCell!9246)

(assert (=> b!918352 (= condMapEmpty!30939 (= (arr!26392 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9246)) mapDefault!30939)))))

(declare-fun b!918353 () Bool)

(declare-fun res!619285 () Bool)

(assert (=> b!918353 (=> (not res!619285) (not e!515553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54904 (_ BitVec 32)) Bool)

(assert (=> b!918353 (= res!619285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918354 () Bool)

(declare-fun res!619289 () Bool)

(assert (=> b!918354 (=> (not res!619289) (not e!515553))))

(assert (=> b!918354 (= res!619289 (and (= (size!26852 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26853 _keys!1487) (size!26852 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!619288 () Bool)

(assert (=> start!78762 (=> (not res!619288) (not e!515553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78762 (= res!619288 (validMask!0 mask!1881))))

(assert (=> start!78762 e!515553))

(assert (=> start!78762 true))

(assert (=> start!78762 tp_is_empty!19455))

(declare-fun array_inv!20566 (array!54902) Bool)

(assert (=> start!78762 (and (array_inv!20566 _values!1231) e!515556)))

(assert (=> start!78762 tp!59282))

(declare-fun array_inv!20567 (array!54904) Bool)

(assert (=> start!78762 (array_inv!20567 _keys!1487)))

(declare-fun b!918346 () Bool)

(declare-fun res!619292 () Bool)

(assert (=> b!918346 (=> (not res!619292) (not e!515550))))

(assert (=> b!918346 (= res!619292 (validKeyInArray!0 k0!1099))))

(declare-fun mapIsEmpty!30939 () Bool)

(assert (=> mapIsEmpty!30939 mapRes!30939))

(declare-fun b!918355 () Bool)

(assert (=> b!918355 (= e!515553 e!515550)))

(declare-fun res!619290 () Bool)

(assert (=> b!918355 (=> (not res!619290) (not e!515550))))

(assert (=> b!918355 (= res!619290 (contains!4776 lt!412209 k0!1099))))

(assert (=> b!918355 (= lt!412209 (getCurrentListMap!2988 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78762 res!619288) b!918354))

(assert (= (and b!918354 res!619289) b!918353))

(assert (= (and b!918353 res!619285) b!918349))

(assert (= (and b!918349 res!619291) b!918351))

(assert (= (and b!918351 res!619284) b!918355))

(assert (= (and b!918355 res!619290) b!918347))

(assert (= (and b!918347 res!619287) b!918343))

(assert (= (and b!918343 res!619286) b!918346))

(assert (= (and b!918346 res!619292) b!918345))

(assert (= (and b!918345 res!619283) b!918350))

(assert (= (and b!918352 condMapEmpty!30939) mapIsEmpty!30939))

(assert (= (and b!918352 (not condMapEmpty!30939)) mapNonEmpty!30939))

(get-info :version)

(assert (= (and mapNonEmpty!30939 ((_ is ValueCellFull!9246) mapValue!30939)) b!918348))

(assert (= (and b!918352 ((_ is ValueCellFull!9246) mapDefault!30939)) b!918344))

(assert (= start!78762 b!918352))

(declare-fun b_lambda!13479 () Bool)

(assert (=> (not b_lambda!13479) (not b!918350)))

(declare-fun t!26310 () Bool)

(declare-fun tb!5535 () Bool)

(assert (=> (and start!78762 (= defaultEntry!1235 defaultEntry!1235) t!26310) tb!5535))

(declare-fun result!10885 () Bool)

(assert (=> tb!5535 (= result!10885 tp_is_empty!19455)))

(assert (=> b!918350 t!26310))

(declare-fun b_and!27651 () Bool)

(assert (= b_and!27649 (and (=> t!26310 result!10885) b_and!27651)))

(declare-fun m!852123 () Bool)

(assert (=> b!918347 m!852123))

(declare-fun m!852125 () Bool)

(assert (=> b!918355 m!852125))

(declare-fun m!852127 () Bool)

(assert (=> b!918355 m!852127))

(declare-fun m!852129 () Bool)

(assert (=> b!918350 m!852129))

(declare-fun m!852131 () Bool)

(assert (=> b!918350 m!852131))

(declare-fun m!852133 () Bool)

(assert (=> b!918350 m!852133))

(declare-fun m!852135 () Bool)

(assert (=> b!918350 m!852135))

(declare-fun m!852137 () Bool)

(assert (=> b!918350 m!852137))

(assert (=> b!918350 m!852131))

(assert (=> b!918350 m!852135))

(assert (=> b!918350 m!852137))

(declare-fun m!852139 () Bool)

(assert (=> b!918350 m!852139))

(declare-fun m!852141 () Bool)

(assert (=> b!918350 m!852141))

(declare-fun m!852143 () Bool)

(assert (=> b!918350 m!852143))

(assert (=> b!918350 m!852141))

(declare-fun m!852145 () Bool)

(assert (=> b!918350 m!852145))

(declare-fun m!852147 () Bool)

(assert (=> b!918350 m!852147))

(declare-fun m!852149 () Bool)

(assert (=> b!918353 m!852149))

(declare-fun m!852151 () Bool)

(assert (=> b!918349 m!852151))

(declare-fun m!852153 () Bool)

(assert (=> start!78762 m!852153))

(declare-fun m!852155 () Bool)

(assert (=> start!78762 m!852155))

(declare-fun m!852157 () Bool)

(assert (=> start!78762 m!852157))

(declare-fun m!852159 () Bool)

(assert (=> b!918346 m!852159))

(declare-fun m!852161 () Bool)

(assert (=> b!918345 m!852161))

(declare-fun m!852163 () Bool)

(assert (=> b!918345 m!852163))

(declare-fun m!852165 () Bool)

(assert (=> mapNonEmpty!30939 m!852165))

(check-sat (not b!918346) (not b!918353) (not b!918350) (not b_lambda!13479) tp_is_empty!19455 (not mapNonEmpty!30939) (not b!918347) (not b!918349) (not b!918345) b_and!27651 (not b!918355) (not b_next!16947) (not start!78762))
(check-sat b_and!27651 (not b_next!16947))

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79678 () Bool)

(assert start!79678)

(declare-fun b_free!17699 () Bool)

(declare-fun b_next!17699 () Bool)

(assert (=> start!79678 (= b_free!17699 (not b_next!17699))))

(declare-fun tp!61554 () Bool)

(declare-fun b_and!29007 () Bool)

(assert (=> start!79678 (= tp!61554 b_and!29007)))

(declare-fun b!936288 () Bool)

(declare-fun e!525763 () Bool)

(declare-fun tp_is_empty!20207 () Bool)

(assert (=> b!936288 (= e!525763 tp_is_empty!20207)))

(declare-fun b!936289 () Bool)

(declare-fun e!525761 () Bool)

(assert (=> b!936289 (= e!525761 false)))

(declare-datatypes ((Unit!31584 0))(
  ( (Unit!31585) )
))
(declare-fun lt!422168 () Unit!31584)

(declare-fun e!525757 () Unit!31584)

(assert (=> b!936289 (= lt!422168 e!525757)))

(declare-fun c!97315 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936289 (= c!97315 (validKeyInArray!0 k!1099))))

(declare-fun b!936290 () Bool)

(declare-fun e!525762 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!936290 (= e!525762 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936291 () Bool)

(declare-fun e!525756 () Unit!31584)

(declare-fun Unit!31586 () Unit!31584)

(assert (=> b!936291 (= e!525756 Unit!31586)))

(declare-fun b!936292 () Bool)

(declare-fun res!630546 () Bool)

(declare-fun e!525759 () Bool)

(assert (=> b!936292 (=> (not res!630546) (not e!525759))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56378 0))(
  ( (array!56379 (arr!27125 (Array (_ BitVec 32) (_ BitVec 64))) (size!27585 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56378)

(assert (=> b!936292 (= res!630546 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27585 _keys!1487))))))

(declare-fun b!936293 () Bool)

(declare-fun Unit!31587 () Unit!31584)

(assert (=> b!936293 (= e!525757 Unit!31587)))

(declare-fun b!936294 () Bool)

(declare-fun res!630551 () Bool)

(assert (=> b!936294 (=> (not res!630551) (not e!525759))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56378 (_ BitVec 32)) Bool)

(assert (=> b!936294 (= res!630551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!630549 () Bool)

(assert (=> start!79678 (=> (not res!630549) (not e!525759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79678 (= res!630549 (validMask!0 mask!1881))))

(assert (=> start!79678 e!525759))

(assert (=> start!79678 true))

(assert (=> start!79678 tp_is_empty!20207))

(declare-datatypes ((V!31907 0))(
  ( (V!31908 (val!10154 Int)) )
))
(declare-datatypes ((ValueCell!9622 0))(
  ( (ValueCellFull!9622 (v!12679 V!31907)) (EmptyCell!9622) )
))
(declare-datatypes ((array!56380 0))(
  ( (array!56381 (arr!27126 (Array (_ BitVec 32) ValueCell!9622)) (size!27586 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56380)

(declare-fun e!525760 () Bool)

(declare-fun array_inv!21064 (array!56380) Bool)

(assert (=> start!79678 (and (array_inv!21064 _values!1231) e!525760)))

(assert (=> start!79678 tp!61554))

(declare-fun array_inv!21065 (array!56378) Bool)

(assert (=> start!79678 (array_inv!21065 _keys!1487)))

(declare-fun b!936295 () Bool)

(declare-fun res!630545 () Bool)

(assert (=> b!936295 (=> (not res!630545) (not e!525759))))

(assert (=> b!936295 (= res!630545 (and (= (size!27586 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27585 _keys!1487) (size!27586 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936296 () Bool)

(declare-fun e!525764 () Bool)

(assert (=> b!936296 (= e!525764 tp_is_empty!20207)))

(declare-fun b!936297 () Bool)

(declare-fun e!525755 () Bool)

(assert (=> b!936297 (= e!525755 e!525761)))

(declare-fun res!630550 () Bool)

(assert (=> b!936297 (=> (not res!630550) (not e!525761))))

(declare-fun lt!422179 () V!31907)

(declare-fun v!791 () V!31907)

(assert (=> b!936297 (= res!630550 (and (= lt!422179 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13436 0))(
  ( (tuple2!13437 (_1!6728 (_ BitVec 64)) (_2!6728 V!31907)) )
))
(declare-datatypes ((List!19243 0))(
  ( (Nil!19240) (Cons!19239 (h!20385 tuple2!13436) (t!27494 List!19243)) )
))
(declare-datatypes ((ListLongMap!12147 0))(
  ( (ListLongMap!12148 (toList!6089 List!19243)) )
))
(declare-fun lt!422171 () ListLongMap!12147)

(declare-fun apply!867 (ListLongMap!12147 (_ BitVec 64)) V!31907)

(assert (=> b!936297 (= lt!422179 (apply!867 lt!422171 k!1099))))

(declare-fun mapIsEmpty!32082 () Bool)

(declare-fun mapRes!32082 () Bool)

(assert (=> mapIsEmpty!32082 mapRes!32082))

(declare-fun b!936298 () Bool)

(declare-fun res!630548 () Bool)

(assert (=> b!936298 (=> (not res!630548) (not e!525759))))

(declare-datatypes ((List!19244 0))(
  ( (Nil!19241) (Cons!19240 (h!20386 (_ BitVec 64)) (t!27495 List!19244)) )
))
(declare-fun arrayNoDuplicates!0 (array!56378 (_ BitVec 32) List!19244) Bool)

(assert (=> b!936298 (= res!630548 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19241))))

(declare-fun mapNonEmpty!32082 () Bool)

(declare-fun tp!61553 () Bool)

(assert (=> mapNonEmpty!32082 (= mapRes!32082 (and tp!61553 e!525763))))

(declare-fun mapValue!32082 () ValueCell!9622)

(declare-fun mapKey!32082 () (_ BitVec 32))

(declare-fun mapRest!32082 () (Array (_ BitVec 32) ValueCell!9622))

(assert (=> mapNonEmpty!32082 (= (arr!27126 _values!1231) (store mapRest!32082 mapKey!32082 mapValue!32082))))

(declare-fun b!936299 () Bool)

(assert (=> b!936299 (= e!525759 e!525755)))

(declare-fun res!630547 () Bool)

(assert (=> b!936299 (=> (not res!630547) (not e!525755))))

(declare-fun contains!5100 (ListLongMap!12147 (_ BitVec 64)) Bool)

(assert (=> b!936299 (= res!630547 (contains!5100 lt!422171 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31907)

(declare-fun minValue!1173 () V!31907)

(declare-fun getCurrentListMap!3279 (array!56378 array!56380 (_ BitVec 32) (_ BitVec 32) V!31907 V!31907 (_ BitVec 32) Int) ListLongMap!12147)

(assert (=> b!936299 (= lt!422171 (getCurrentListMap!3279 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936300 () Bool)

(declare-fun lt!422177 () ListLongMap!12147)

(assert (=> b!936300 (= (apply!867 lt!422177 k!1099) lt!422179)))

(declare-fun lt!422175 () (_ BitVec 64))

(declare-fun lt!422176 () Unit!31584)

(declare-fun lt!422167 () V!31907)

(declare-fun addApplyDifferent!416 (ListLongMap!12147 (_ BitVec 64) V!31907 (_ BitVec 64)) Unit!31584)

(assert (=> b!936300 (= lt!422176 (addApplyDifferent!416 lt!422171 lt!422175 lt!422167 k!1099))))

(assert (=> b!936300 (not (= lt!422175 k!1099))))

(declare-fun lt!422170 () Unit!31584)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56378 (_ BitVec 64) (_ BitVec 32) List!19244) Unit!31584)

(assert (=> b!936300 (= lt!422170 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19241))))

(assert (=> b!936300 e!525762))

(declare-fun c!97316 () Bool)

(assert (=> b!936300 (= c!97316 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422174 () Unit!31584)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!299 (array!56378 array!56380 (_ BitVec 32) (_ BitVec 32) V!31907 V!31907 (_ BitVec 64) (_ BitVec 32) Int) Unit!31584)

(assert (=> b!936300 (= lt!422174 (lemmaListMapContainsThenArrayContainsFrom!299 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!936300 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19241)))

(declare-fun lt!422169 () Unit!31584)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56378 (_ BitVec 32) (_ BitVec 32)) Unit!31584)

(assert (=> b!936300 (= lt!422169 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!936300 (contains!5100 lt!422177 k!1099)))

(declare-fun lt!422172 () tuple2!13436)

(declare-fun +!2786 (ListLongMap!12147 tuple2!13436) ListLongMap!12147)

(assert (=> b!936300 (= lt!422177 (+!2786 lt!422171 lt!422172))))

(declare-fun lt!422173 () Unit!31584)

(declare-fun addStillContains!542 (ListLongMap!12147 (_ BitVec 64) V!31907 (_ BitVec 64)) Unit!31584)

(assert (=> b!936300 (= lt!422173 (addStillContains!542 lt!422171 lt!422175 lt!422167 k!1099))))

(assert (=> b!936300 (= (getCurrentListMap!3279 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2786 (getCurrentListMap!3279 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422172))))

(assert (=> b!936300 (= lt!422172 (tuple2!13437 lt!422175 lt!422167))))

(declare-fun get!14312 (ValueCell!9622 V!31907) V!31907)

(declare-fun dynLambda!1625 (Int (_ BitVec 64)) V!31907)

(assert (=> b!936300 (= lt!422167 (get!14312 (select (arr!27126 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1625 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422178 () Unit!31584)

(declare-fun lemmaListMapRecursiveValidKeyArray!221 (array!56378 array!56380 (_ BitVec 32) (_ BitVec 32) V!31907 V!31907 (_ BitVec 32) Int) Unit!31584)

(assert (=> b!936300 (= lt!422178 (lemmaListMapRecursiveValidKeyArray!221 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!936300 (= e!525756 lt!422176)))

(declare-fun b!936301 () Bool)

(declare-fun arrayContainsKey!0 (array!56378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936301 (= e!525762 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!936302 () Bool)

(assert (=> b!936302 (= e!525757 e!525756)))

(assert (=> b!936302 (= lt!422175 (select (arr!27125 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97314 () Bool)

(assert (=> b!936302 (= c!97314 (validKeyInArray!0 lt!422175))))

(declare-fun b!936303 () Bool)

(assert (=> b!936303 (= e!525760 (and e!525764 mapRes!32082))))

(declare-fun condMapEmpty!32082 () Bool)

(declare-fun mapDefault!32082 () ValueCell!9622)


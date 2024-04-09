; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79896 () Bool)

(assert start!79896)

(declare-fun b_free!17765 () Bool)

(declare-fun b_next!17765 () Bool)

(assert (=> start!79896 (= b_free!17765 (not b_next!17765))))

(declare-fun tp!61760 () Bool)

(declare-fun b_and!29187 () Bool)

(assert (=> start!79896 (= tp!61760 b_and!29187)))

(declare-fun mapIsEmpty!32189 () Bool)

(declare-fun mapRes!32189 () Bool)

(assert (=> mapIsEmpty!32189 mapRes!32189))

(declare-fun b!939057 () Bool)

(declare-fun res!631776 () Bool)

(declare-fun e!527470 () Bool)

(assert (=> b!939057 (=> (not res!631776) (not e!527470))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31995 0))(
  ( (V!31996 (val!10187 Int)) )
))
(declare-fun v!791 () V!31995)

(declare-datatypes ((tuple2!13494 0))(
  ( (tuple2!13495 (_1!6757 (_ BitVec 64)) (_2!6757 V!31995)) )
))
(declare-datatypes ((List!19301 0))(
  ( (Nil!19298) (Cons!19297 (h!20443 tuple2!13494) (t!27618 List!19301)) )
))
(declare-datatypes ((ListLongMap!12205 0))(
  ( (ListLongMap!12206 (toList!6118 List!19301)) )
))
(declare-fun lt!424310 () ListLongMap!12205)

(declare-fun apply!896 (ListLongMap!12205 (_ BitVec 64)) V!31995)

(assert (=> b!939057 (= res!631776 (= (apply!896 lt!424310 k!1099) v!791))))

(declare-fun b!939058 () Bool)

(declare-fun e!527467 () Bool)

(declare-fun e!527475 () Bool)

(assert (=> b!939058 (= e!527467 e!527475)))

(declare-fun res!631769 () Bool)

(assert (=> b!939058 (=> (not res!631769) (not e!527475))))

(declare-fun lt!424313 () ListLongMap!12205)

(declare-fun contains!5131 (ListLongMap!12205 (_ BitVec 64)) Bool)

(assert (=> b!939058 (= res!631769 (contains!5131 lt!424313 k!1099))))

(declare-datatypes ((array!56512 0))(
  ( (array!56513 (arr!27190 (Array (_ BitVec 32) (_ BitVec 64))) (size!27650 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56512)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9655 0))(
  ( (ValueCellFull!9655 (v!12718 V!31995)) (EmptyCell!9655) )
))
(declare-datatypes ((array!56514 0))(
  ( (array!56515 (arr!27191 (Array (_ BitVec 32) ValueCell!9655)) (size!27651 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56514)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31995)

(declare-fun minValue!1173 () V!31995)

(declare-fun getCurrentListMap!3306 (array!56512 array!56514 (_ BitVec 32) (_ BitVec 32) V!31995 V!31995 (_ BitVec 32) Int) ListLongMap!12205)

(assert (=> b!939058 (= lt!424313 (getCurrentListMap!3306 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!939059 () Bool)

(declare-fun lt!424317 () ListLongMap!12205)

(declare-fun lt!424320 () V!31995)

(assert (=> b!939059 (= (apply!896 lt!424317 k!1099) lt!424320)))

(declare-fun lt!424315 () V!31995)

(declare-datatypes ((Unit!31741 0))(
  ( (Unit!31742) )
))
(declare-fun lt!424308 () Unit!31741)

(declare-fun lt!424312 () (_ BitVec 64))

(declare-fun addApplyDifferent!442 (ListLongMap!12205 (_ BitVec 64) V!31995 (_ BitVec 64)) Unit!31741)

(assert (=> b!939059 (= lt!424308 (addApplyDifferent!442 lt!424313 lt!424312 lt!424315 k!1099))))

(assert (=> b!939059 (not (= lt!424312 k!1099))))

(declare-fun lt!424314 () Unit!31741)

(declare-datatypes ((List!19302 0))(
  ( (Nil!19299) (Cons!19298 (h!20444 (_ BitVec 64)) (t!27619 List!19302)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56512 (_ BitVec 64) (_ BitVec 32) List!19302) Unit!31741)

(assert (=> b!939059 (= lt!424314 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19299))))

(declare-fun e!527469 () Bool)

(assert (=> b!939059 e!527469))

(declare-fun c!97892 () Bool)

(assert (=> b!939059 (= c!97892 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!424319 () Unit!31741)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!325 (array!56512 array!56514 (_ BitVec 32) (_ BitVec 32) V!31995 V!31995 (_ BitVec 64) (_ BitVec 32) Int) Unit!31741)

(assert (=> b!939059 (= lt!424319 (lemmaListMapContainsThenArrayContainsFrom!325 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56512 (_ BitVec 32) List!19302) Bool)

(assert (=> b!939059 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19299)))

(declare-fun lt!424309 () Unit!31741)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56512 (_ BitVec 32) (_ BitVec 32)) Unit!31741)

(assert (=> b!939059 (= lt!424309 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!939059 (contains!5131 lt!424317 k!1099)))

(declare-fun lt!424311 () tuple2!13494)

(declare-fun +!2812 (ListLongMap!12205 tuple2!13494) ListLongMap!12205)

(assert (=> b!939059 (= lt!424317 (+!2812 lt!424313 lt!424311))))

(declare-fun lt!424316 () Unit!31741)

(declare-fun addStillContains!568 (ListLongMap!12205 (_ BitVec 64) V!31995 (_ BitVec 64)) Unit!31741)

(assert (=> b!939059 (= lt!424316 (addStillContains!568 lt!424313 lt!424312 lt!424315 k!1099))))

(assert (=> b!939059 (= (getCurrentListMap!3306 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2812 (getCurrentListMap!3306 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!424311))))

(assert (=> b!939059 (= lt!424311 (tuple2!13495 lt!424312 lt!424315))))

(declare-fun get!14366 (ValueCell!9655 V!31995) V!31995)

(declare-fun dynLambda!1651 (Int (_ BitVec 64)) V!31995)

(assert (=> b!939059 (= lt!424315 (get!14366 (select (arr!27191 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1651 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!424318 () Unit!31741)

(declare-fun lemmaListMapRecursiveValidKeyArray!247 (array!56512 array!56514 (_ BitVec 32) (_ BitVec 32) V!31995 V!31995 (_ BitVec 32) Int) Unit!31741)

(assert (=> b!939059 (= lt!424318 (lemmaListMapRecursiveValidKeyArray!247 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!527471 () Unit!31741)

(assert (=> b!939059 (= e!527471 lt!424308)))

(declare-fun b!939061 () Bool)

(assert (=> b!939061 (= e!527469 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!939062 () Bool)

(declare-fun res!631772 () Bool)

(assert (=> b!939062 (=> (not res!631772) (not e!527467))))

(assert (=> b!939062 (= res!631772 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19299))))

(declare-fun b!939063 () Bool)

(declare-fun arrayContainsKey!0 (array!56512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!939063 (= e!527469 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!939064 () Bool)

(declare-fun res!631770 () Bool)

(assert (=> b!939064 (=> (not res!631770) (not e!527467))))

(assert (=> b!939064 (= res!631770 (and (= (size!27651 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27650 _keys!1487) (size!27651 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!939065 () Bool)

(declare-fun e!527468 () Unit!31741)

(declare-fun Unit!31743 () Unit!31741)

(assert (=> b!939065 (= e!527468 Unit!31743)))

(declare-fun b!939066 () Bool)

(declare-fun res!631778 () Bool)

(assert (=> b!939066 (=> (not res!631778) (not e!527467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56512 (_ BitVec 32)) Bool)

(assert (=> b!939066 (= res!631778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!939067 () Bool)

(declare-fun e!527466 () Bool)

(assert (=> b!939067 (= e!527475 e!527466)))

(declare-fun res!631774 () Bool)

(assert (=> b!939067 (=> (not res!631774) (not e!527466))))

(assert (=> b!939067 (= res!631774 (and (= lt!424320 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!939067 (= lt!424320 (apply!896 lt!424313 k!1099))))

(declare-fun b!939068 () Bool)

(declare-fun e!527473 () Bool)

(declare-fun tp_is_empty!20273 () Bool)

(assert (=> b!939068 (= e!527473 tp_is_empty!20273)))

(declare-fun b!939069 () Bool)

(assert (=> b!939069 (= e!527470 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) from!1844))))

(declare-fun b!939070 () Bool)

(declare-fun Unit!31744 () Unit!31741)

(assert (=> b!939070 (= e!527471 Unit!31744)))

(declare-fun mapNonEmpty!32189 () Bool)

(declare-fun tp!61759 () Bool)

(declare-fun e!527474 () Bool)

(assert (=> mapNonEmpty!32189 (= mapRes!32189 (and tp!61759 e!527474))))

(declare-fun mapValue!32189 () ValueCell!9655)

(declare-fun mapKey!32189 () (_ BitVec 32))

(declare-fun mapRest!32189 () (Array (_ BitVec 32) ValueCell!9655))

(assert (=> mapNonEmpty!32189 (= (arr!27191 _values!1231) (store mapRest!32189 mapKey!32189 mapValue!32189))))

(declare-fun b!939071 () Bool)

(declare-fun e!527472 () Bool)

(assert (=> b!939071 (= e!527472 (and e!527473 mapRes!32189))))

(declare-fun condMapEmpty!32189 () Bool)

(declare-fun mapDefault!32189 () ValueCell!9655)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79692 () Bool)

(assert start!79692)

(declare-fun b_free!17713 () Bool)

(declare-fun b_next!17713 () Bool)

(assert (=> start!79692 (= b_free!17713 (not b_next!17713))))

(declare-fun tp!61596 () Bool)

(declare-fun b_and!29035 () Bool)

(assert (=> start!79692 (= tp!61596 b_and!29035)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!525966 () Bool)

(declare-fun b!936638 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!56406 0))(
  ( (array!56407 (arr!27139 (Array (_ BitVec 32) (_ BitVec 64))) (size!27599 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56406)

(declare-fun arrayContainsKey!0 (array!56406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936638 (= e!525966 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!936639 () Bool)

(declare-fun e!525968 () Bool)

(declare-fun e!525970 () Bool)

(assert (=> b!936639 (= e!525968 e!525970)))

(declare-fun res!630697 () Bool)

(assert (=> b!936639 (=> (not res!630697) (not e!525970))))

(declare-datatypes ((V!31927 0))(
  ( (V!31928 (val!10161 Int)) )
))
(declare-datatypes ((tuple2!13448 0))(
  ( (tuple2!13449 (_1!6734 (_ BitVec 64)) (_2!6734 V!31927)) )
))
(declare-datatypes ((List!19255 0))(
  ( (Nil!19252) (Cons!19251 (h!20397 tuple2!13448) (t!27520 List!19255)) )
))
(declare-datatypes ((ListLongMap!12159 0))(
  ( (ListLongMap!12160 (toList!6095 List!19255)) )
))
(declare-fun lt!422443 () ListLongMap!12159)

(declare-fun contains!5105 (ListLongMap!12159 (_ BitVec 64)) Bool)

(assert (=> b!936639 (= res!630697 (contains!5105 lt!422443 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9629 0))(
  ( (ValueCellFull!9629 (v!12686 V!31927)) (EmptyCell!9629) )
))
(declare-datatypes ((array!56408 0))(
  ( (array!56409 (arr!27140 (Array (_ BitVec 32) ValueCell!9629)) (size!27600 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56408)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31927)

(declare-fun minValue!1173 () V!31927)

(declare-fun getCurrentListMap!3284 (array!56406 array!56408 (_ BitVec 32) (_ BitVec 32) V!31927 V!31927 (_ BitVec 32) Int) ListLongMap!12159)

(assert (=> b!936639 (= lt!422443 (getCurrentListMap!3284 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936640 () Bool)

(declare-fun e!525972 () Bool)

(assert (=> b!936640 (= e!525970 e!525972)))

(declare-fun res!630694 () Bool)

(assert (=> b!936640 (=> (not res!630694) (not e!525972))))

(declare-fun v!791 () V!31927)

(declare-fun lt!422450 () V!31927)

(assert (=> b!936640 (= res!630694 (and (= lt!422450 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun apply!873 (ListLongMap!12159 (_ BitVec 64)) V!31927)

(assert (=> b!936640 (= lt!422450 (apply!873 lt!422443 k!1099))))

(declare-fun b!936641 () Bool)

(declare-fun res!630695 () Bool)

(assert (=> b!936641 (=> (not res!630695) (not e!525968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56406 (_ BitVec 32)) Bool)

(assert (=> b!936641 (= res!630695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!936642 () Bool)

(declare-fun e!525967 () Bool)

(declare-fun tp_is_empty!20221 () Bool)

(assert (=> b!936642 (= e!525967 tp_is_empty!20221)))

(declare-fun b!936643 () Bool)

(declare-fun lt!422451 () ListLongMap!12159)

(assert (=> b!936643 (= (apply!873 lt!422451 k!1099) lt!422450)))

(declare-fun lt!422448 () (_ BitVec 64))

(declare-fun lt!422447 () V!31927)

(declare-datatypes ((Unit!31610 0))(
  ( (Unit!31611) )
))
(declare-fun lt!422445 () Unit!31610)

(declare-fun addApplyDifferent!421 (ListLongMap!12159 (_ BitVec 64) V!31927 (_ BitVec 64)) Unit!31610)

(assert (=> b!936643 (= lt!422445 (addApplyDifferent!421 lt!422443 lt!422448 lt!422447 k!1099))))

(assert (=> b!936643 (not (= lt!422448 k!1099))))

(declare-fun lt!422440 () Unit!31610)

(declare-datatypes ((List!19256 0))(
  ( (Nil!19253) (Cons!19252 (h!20398 (_ BitVec 64)) (t!27521 List!19256)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56406 (_ BitVec 64) (_ BitVec 32) List!19256) Unit!31610)

(assert (=> b!936643 (= lt!422440 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19253))))

(assert (=> b!936643 e!525966))

(declare-fun c!97378 () Bool)

(assert (=> b!936643 (= c!97378 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422441 () Unit!31610)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!304 (array!56406 array!56408 (_ BitVec 32) (_ BitVec 32) V!31927 V!31927 (_ BitVec 64) (_ BitVec 32) Int) Unit!31610)

(assert (=> b!936643 (= lt!422441 (lemmaListMapContainsThenArrayContainsFrom!304 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56406 (_ BitVec 32) List!19256) Bool)

(assert (=> b!936643 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19253)))

(declare-fun lt!422442 () Unit!31610)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56406 (_ BitVec 32) (_ BitVec 32)) Unit!31610)

(assert (=> b!936643 (= lt!422442 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!936643 (contains!5105 lt!422451 k!1099)))

(declare-fun lt!422449 () tuple2!13448)

(declare-fun +!2791 (ListLongMap!12159 tuple2!13448) ListLongMap!12159)

(assert (=> b!936643 (= lt!422451 (+!2791 lt!422443 lt!422449))))

(declare-fun lt!422452 () Unit!31610)

(declare-fun addStillContains!547 (ListLongMap!12159 (_ BitVec 64) V!31927 (_ BitVec 64)) Unit!31610)

(assert (=> b!936643 (= lt!422452 (addStillContains!547 lt!422443 lt!422448 lt!422447 k!1099))))

(assert (=> b!936643 (= (getCurrentListMap!3284 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2791 (getCurrentListMap!3284 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422449))))

(assert (=> b!936643 (= lt!422449 (tuple2!13449 lt!422448 lt!422447))))

(declare-fun get!14323 (ValueCell!9629 V!31927) V!31927)

(declare-fun dynLambda!1630 (Int (_ BitVec 64)) V!31927)

(assert (=> b!936643 (= lt!422447 (get!14323 (select (arr!27140 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1630 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422444 () Unit!31610)

(declare-fun lemmaListMapRecursiveValidKeyArray!226 (array!56406 array!56408 (_ BitVec 32) (_ BitVec 32) V!31927 V!31927 (_ BitVec 32) Int) Unit!31610)

(assert (=> b!936643 (= lt!422444 (lemmaListMapRecursiveValidKeyArray!226 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!525969 () Unit!31610)

(assert (=> b!936643 (= e!525969 lt!422445)))

(declare-fun b!936644 () Bool)

(declare-fun Unit!31612 () Unit!31610)

(assert (=> b!936644 (= e!525969 Unit!31612)))

(declare-fun b!936645 () Bool)

(declare-fun e!525965 () Bool)

(assert (=> b!936645 (= e!525965 tp_is_empty!20221)))

(declare-fun b!936646 () Bool)

(declare-fun e!525974 () Bool)

(declare-fun mapRes!32103 () Bool)

(assert (=> b!936646 (= e!525974 (and e!525967 mapRes!32103))))

(declare-fun condMapEmpty!32103 () Bool)

(declare-fun mapDefault!32103 () ValueCell!9629)


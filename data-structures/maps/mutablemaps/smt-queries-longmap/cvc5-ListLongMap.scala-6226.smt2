; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79656 () Bool)

(assert start!79656)

(declare-fun b_free!17677 () Bool)

(declare-fun b_next!17677 () Bool)

(assert (=> start!79656 (= b_free!17677 (not b_next!17677))))

(declare-fun tp!61488 () Bool)

(declare-fun b_and!28963 () Bool)

(assert (=> start!79656 (= tp!61488 b_and!28963)))

(declare-fun b!935763 () Bool)

(declare-fun res!630245 () Bool)

(declare-fun e!525481 () Bool)

(assert (=> b!935763 (=> (not res!630245) (not e!525481))))

(declare-datatypes ((array!56334 0))(
  ( (array!56335 (arr!27103 (Array (_ BitVec 32) (_ BitVec 64))) (size!27563 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56334)

(declare-datatypes ((List!19225 0))(
  ( (Nil!19222) (Cons!19221 (h!20367 (_ BitVec 64)) (t!27454 List!19225)) )
))
(declare-fun arrayNoDuplicates!0 (array!56334 (_ BitVec 32) List!19225) Bool)

(assert (=> b!935763 (= res!630245 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19222))))

(declare-fun b!935764 () Bool)

(declare-fun e!525478 () Bool)

(declare-fun tp_is_empty!20185 () Bool)

(assert (=> b!935764 (= e!525478 tp_is_empty!20185)))

(declare-fun b!935765 () Bool)

(declare-fun e!525476 () Bool)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!935765 (= e!525476 (not (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27563 _keys!1487))))))

(declare-fun lt!421841 () (_ BitVec 64))

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!935765 (not (= lt!421841 k!1099))))

(declare-datatypes ((Unit!31564 0))(
  ( (Unit!31565) )
))
(declare-fun lt!421843 () Unit!31564)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56334 (_ BitVec 64) (_ BitVec 32) List!19225) Unit!31564)

(assert (=> b!935765 (= lt!421843 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19222))))

(declare-fun e!525480 () Bool)

(assert (=> b!935765 e!525480))

(declare-fun c!97265 () Bool)

(assert (=> b!935765 (= c!97265 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!421839 () Unit!31564)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31879 0))(
  ( (V!31880 (val!10143 Int)) )
))
(declare-datatypes ((ValueCell!9611 0))(
  ( (ValueCellFull!9611 (v!12668 V!31879)) (EmptyCell!9611) )
))
(declare-datatypes ((array!56336 0))(
  ( (array!56337 (arr!27104 (Array (_ BitVec 32) ValueCell!9611)) (size!27564 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56336)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31879)

(declare-fun minValue!1173 () V!31879)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!291 (array!56334 array!56336 (_ BitVec 32) (_ BitVec 32) V!31879 V!31879 (_ BitVec 64) (_ BitVec 32) Int) Unit!31564)

(assert (=> b!935765 (= lt!421839 (lemmaListMapContainsThenArrayContainsFrom!291 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!935765 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19222)))

(declare-fun lt!421844 () Unit!31564)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56334 (_ BitVec 32) (_ BitVec 32)) Unit!31564)

(assert (=> b!935765 (= lt!421844 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13418 0))(
  ( (tuple2!13419 (_1!6719 (_ BitVec 64)) (_2!6719 V!31879)) )
))
(declare-datatypes ((List!19226 0))(
  ( (Nil!19223) (Cons!19222 (h!20368 tuple2!13418) (t!27455 List!19226)) )
))
(declare-datatypes ((ListLongMap!12129 0))(
  ( (ListLongMap!12130 (toList!6080 List!19226)) )
))
(declare-fun lt!421840 () ListLongMap!12129)

(declare-fun lt!421846 () tuple2!13418)

(declare-fun contains!5092 (ListLongMap!12129 (_ BitVec 64)) Bool)

(declare-fun +!2778 (ListLongMap!12129 tuple2!13418) ListLongMap!12129)

(assert (=> b!935765 (contains!5092 (+!2778 lt!421840 lt!421846) k!1099)))

(declare-fun lt!421845 () V!31879)

(declare-fun lt!421838 () Unit!31564)

(declare-fun addStillContains!534 (ListLongMap!12129 (_ BitVec 64) V!31879 (_ BitVec 64)) Unit!31564)

(assert (=> b!935765 (= lt!421838 (addStillContains!534 lt!421840 lt!421841 lt!421845 k!1099))))

(declare-fun getCurrentListMap!3271 (array!56334 array!56336 (_ BitVec 32) (_ BitVec 32) V!31879 V!31879 (_ BitVec 32) Int) ListLongMap!12129)

(assert (=> b!935765 (= (getCurrentListMap!3271 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2778 (getCurrentListMap!3271 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421846))))

(assert (=> b!935765 (= lt!421846 (tuple2!13419 lt!421841 lt!421845))))

(declare-fun get!14298 (ValueCell!9611 V!31879) V!31879)

(declare-fun dynLambda!1617 (Int (_ BitVec 64)) V!31879)

(assert (=> b!935765 (= lt!421845 (get!14298 (select (arr!27104 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1617 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421842 () Unit!31564)

(declare-fun lemmaListMapRecursiveValidKeyArray!213 (array!56334 array!56336 (_ BitVec 32) (_ BitVec 32) V!31879 V!31879 (_ BitVec 32) Int) Unit!31564)

(assert (=> b!935765 (= lt!421842 (lemmaListMapRecursiveValidKeyArray!213 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935766 () Bool)

(declare-fun res!630241 () Bool)

(declare-fun e!525482 () Bool)

(assert (=> b!935766 (=> (not res!630241) (not e!525482))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935766 (= res!630241 (validKeyInArray!0 k!1099))))

(declare-fun mapIsEmpty!32049 () Bool)

(declare-fun mapRes!32049 () Bool)

(assert (=> mapIsEmpty!32049 mapRes!32049))

(declare-fun b!935767 () Bool)

(declare-fun e!525475 () Bool)

(assert (=> b!935767 (= e!525475 tp_is_empty!20185)))

(declare-fun b!935768 () Bool)

(declare-fun res!630246 () Bool)

(assert (=> b!935768 (=> (not res!630246) (not e!525482))))

(assert (=> b!935768 (= res!630246 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!935769 () Bool)

(declare-fun res!630247 () Bool)

(assert (=> b!935769 (=> (not res!630247) (not e!525481))))

(assert (=> b!935769 (= res!630247 (and (= (size!27564 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27563 _keys!1487) (size!27564 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!935771 () Bool)

(declare-fun res!630239 () Bool)

(assert (=> b!935771 (=> (not res!630239) (not e!525481))))

(assert (=> b!935771 (= res!630239 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27563 _keys!1487))))))

(declare-fun b!935772 () Bool)

(declare-fun arrayContainsKey!0 (array!56334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935772 (= e!525480 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!935773 () Bool)

(declare-fun e!525479 () Bool)

(assert (=> b!935773 (= e!525479 (and e!525478 mapRes!32049))))

(declare-fun condMapEmpty!32049 () Bool)

(declare-fun mapDefault!32049 () ValueCell!9611)


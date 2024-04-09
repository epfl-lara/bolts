; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78854 () Bool)

(assert start!78854)

(declare-fun b_free!17039 () Bool)

(declare-fun b_next!17039 () Bool)

(assert (=> start!78854 (= b_free!17039 (not b_next!17039))))

(declare-fun tp!59559 () Bool)

(declare-fun b_and!27833 () Bool)

(assert (=> start!78854 (= tp!59559 b_and!27833)))

(declare-fun b!920269 () Bool)

(declare-fun res!620697 () Bool)

(declare-fun e!516532 () Bool)

(assert (=> b!920269 (=> (not res!620697) (not e!516532))))

(declare-datatypes ((array!55086 0))(
  ( (array!55087 (arr!26484 (Array (_ BitVec 32) (_ BitVec 64))) (size!26944 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55086)

(declare-datatypes ((List!18706 0))(
  ( (Nil!18703) (Cons!18702 (h!19848 (_ BitVec 64)) (t!26483 List!18706)) )
))
(declare-fun arrayNoDuplicates!0 (array!55086 (_ BitVec 32) List!18706) Bool)

(assert (=> b!920269 (= res!620697 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18703))))

(declare-fun b!920270 () Bool)

(declare-fun res!620690 () Bool)

(declare-fun e!516538 () Bool)

(assert (=> b!920270 (=> (not res!620690) (not e!516538))))

(declare-datatypes ((V!31027 0))(
  ( (V!31028 (val!9824 Int)) )
))
(declare-fun v!791 () V!31027)

(declare-datatypes ((tuple2!12864 0))(
  ( (tuple2!12865 (_1!6442 (_ BitVec 64)) (_2!6442 V!31027)) )
))
(declare-datatypes ((List!18707 0))(
  ( (Nil!18704) (Cons!18703 (h!19849 tuple2!12864) (t!26484 List!18707)) )
))
(declare-datatypes ((ListLongMap!11575 0))(
  ( (ListLongMap!11576 (toList!5803 List!18707)) )
))
(declare-fun lt!413154 () ListLongMap!11575)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!615 (ListLongMap!11575 (_ BitVec 64)) V!31027)

(assert (=> b!920270 (= res!620690 (= (apply!615 lt!413154 k!1099) v!791))))

(declare-fun mapIsEmpty!31077 () Bool)

(declare-fun mapRes!31077 () Bool)

(assert (=> mapIsEmpty!31077 mapRes!31077))

(declare-fun b!920271 () Bool)

(declare-fun res!620689 () Bool)

(declare-fun e!516540 () Bool)

(assert (=> b!920271 (=> res!620689 e!516540)))

(declare-fun noDuplicate!1335 (List!18706) Bool)

(assert (=> b!920271 (= res!620689 (not (noDuplicate!1335 Nil!18703)))))

(declare-fun b!920272 () Bool)

(declare-fun e!516536 () Bool)

(declare-fun tp_is_empty!19547 () Bool)

(assert (=> b!920272 (= e!516536 tp_is_empty!19547)))

(declare-fun b!920273 () Bool)

(declare-fun e!516533 () Bool)

(assert (=> b!920273 (= e!516533 tp_is_empty!19547)))

(declare-fun b!920274 () Bool)

(assert (=> b!920274 (= e!516540 true)))

(declare-fun lt!413147 () Bool)

(declare-fun contains!4815 (List!18706 (_ BitVec 64)) Bool)

(assert (=> b!920274 (= lt!413147 (contains!4815 Nil!18703 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920275 () Bool)

(declare-fun res!620687 () Bool)

(assert (=> b!920275 (=> (not res!620687) (not e!516538))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920275 (= res!620687 (validKeyInArray!0 k!1099))))

(declare-fun b!920276 () Bool)

(declare-fun res!620698 () Bool)

(assert (=> b!920276 (=> (not res!620698) (not e!516532))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!920276 (= res!620698 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26944 _keys!1487))))))

(declare-fun b!920277 () Bool)

(declare-fun res!620693 () Bool)

(assert (=> b!920277 (=> (not res!620693) (not e!516532))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55086 (_ BitVec 32)) Bool)

(assert (=> b!920277 (= res!620693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920278 () Bool)

(declare-fun e!516534 () Bool)

(declare-fun arrayContainsKey!0 (array!55086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920278 (= e!516534 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun res!620696 () Bool)

(assert (=> start!78854 (=> (not res!620696) (not e!516532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78854 (= res!620696 (validMask!0 mask!1881))))

(assert (=> start!78854 e!516532))

(assert (=> start!78854 true))

(assert (=> start!78854 tp_is_empty!19547))

(declare-datatypes ((ValueCell!9292 0))(
  ( (ValueCellFull!9292 (v!12342 V!31027)) (EmptyCell!9292) )
))
(declare-datatypes ((array!55088 0))(
  ( (array!55089 (arr!26485 (Array (_ BitVec 32) ValueCell!9292)) (size!26945 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55088)

(declare-fun e!516539 () Bool)

(declare-fun array_inv!20626 (array!55088) Bool)

(assert (=> start!78854 (and (array_inv!20626 _values!1231) e!516539)))

(assert (=> start!78854 tp!59559))

(declare-fun array_inv!20627 (array!55086) Bool)

(assert (=> start!78854 (array_inv!20627 _keys!1487)))

(declare-fun b!920279 () Bool)

(declare-fun e!516535 () Bool)

(assert (=> b!920279 (= e!516538 e!516535)))

(declare-fun res!620699 () Bool)

(assert (=> b!920279 (=> (not res!620699) (not e!516535))))

(declare-fun lt!413151 () (_ BitVec 64))

(assert (=> b!920279 (= res!620699 (validKeyInArray!0 lt!413151))))

(assert (=> b!920279 (= lt!413151 (select (arr!26484 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920280 () Bool)

(declare-fun res!620692 () Bool)

(assert (=> b!920280 (=> (not res!620692) (not e!516532))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!920280 (= res!620692 (and (= (size!26945 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26944 _keys!1487) (size!26945 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31077 () Bool)

(declare-fun tp!59558 () Bool)

(assert (=> mapNonEmpty!31077 (= mapRes!31077 (and tp!59558 e!516536))))

(declare-fun mapKey!31077 () (_ BitVec 32))

(declare-fun mapValue!31077 () ValueCell!9292)

(declare-fun mapRest!31077 () (Array (_ BitVec 32) ValueCell!9292))

(assert (=> mapNonEmpty!31077 (= (arr!26485 _values!1231) (store mapRest!31077 mapKey!31077 mapValue!31077))))

(declare-fun b!920281 () Bool)

(assert (=> b!920281 (= e!516535 (not e!516540))))

(declare-fun res!620688 () Bool)

(assert (=> b!920281 (=> res!620688 e!516540)))

(assert (=> b!920281 (= res!620688 (or (bvsge (size!26944 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26944 _keys!1487))))))

(assert (=> b!920281 e!516534))

(declare-fun c!95978 () Bool)

(assert (=> b!920281 (= c!95978 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31051 0))(
  ( (Unit!31052) )
))
(declare-fun lt!413149 () Unit!31051)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31027)

(declare-fun minValue!1173 () V!31027)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!168 (array!55086 array!55088 (_ BitVec 32) (_ BitVec 32) V!31027 V!31027 (_ BitVec 64) (_ BitVec 32) Int) Unit!31051)

(assert (=> b!920281 (= lt!413149 (lemmaListMapContainsThenArrayContainsFrom!168 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!920281 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18703)))

(declare-fun lt!413146 () Unit!31051)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55086 (_ BitVec 32) (_ BitVec 32)) Unit!31051)

(assert (=> b!920281 (= lt!413146 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413148 () tuple2!12864)

(declare-fun contains!4816 (ListLongMap!11575 (_ BitVec 64)) Bool)

(declare-fun +!2622 (ListLongMap!11575 tuple2!12864) ListLongMap!11575)

(assert (=> b!920281 (contains!4816 (+!2622 lt!413154 lt!413148) k!1099)))

(declare-fun lt!413150 () Unit!31051)

(declare-fun lt!413153 () V!31027)

(declare-fun addStillContains!384 (ListLongMap!11575 (_ BitVec 64) V!31027 (_ BitVec 64)) Unit!31051)

(assert (=> b!920281 (= lt!413150 (addStillContains!384 lt!413154 lt!413151 lt!413153 k!1099))))

(declare-fun getCurrentListMap!3025 (array!55086 array!55088 (_ BitVec 32) (_ BitVec 32) V!31027 V!31027 (_ BitVec 32) Int) ListLongMap!11575)

(assert (=> b!920281 (= (getCurrentListMap!3025 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2622 (getCurrentListMap!3025 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413148))))

(assert (=> b!920281 (= lt!413148 (tuple2!12865 lt!413151 lt!413153))))

(declare-fun get!13913 (ValueCell!9292 V!31027) V!31027)

(declare-fun dynLambda!1461 (Int (_ BitVec 64)) V!31027)

(assert (=> b!920281 (= lt!413153 (get!13913 (select (arr!26485 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1461 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413152 () Unit!31051)

(declare-fun lemmaListMapRecursiveValidKeyArray!57 (array!55086 array!55088 (_ BitVec 32) (_ BitVec 32) V!31027 V!31027 (_ BitVec 32) Int) Unit!31051)

(assert (=> b!920281 (= lt!413152 (lemmaListMapRecursiveValidKeyArray!57 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920282 () Bool)

(assert (=> b!920282 (= e!516534 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!920283 () Bool)

(assert (=> b!920283 (= e!516532 e!516538)))

(declare-fun res!620691 () Bool)

(assert (=> b!920283 (=> (not res!620691) (not e!516538))))

(assert (=> b!920283 (= res!620691 (contains!4816 lt!413154 k!1099))))

(assert (=> b!920283 (= lt!413154 (getCurrentListMap!3025 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920284 () Bool)

(declare-fun res!620694 () Bool)

(assert (=> b!920284 (=> (not res!620694) (not e!516538))))

(assert (=> b!920284 (= res!620694 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!920285 () Bool)

(declare-fun res!620695 () Bool)

(assert (=> b!920285 (=> res!620695 e!516540)))

(assert (=> b!920285 (= res!620695 (contains!4815 Nil!18703 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920286 () Bool)

(assert (=> b!920286 (= e!516539 (and e!516533 mapRes!31077))))

(declare-fun condMapEmpty!31077 () Bool)

(declare-fun mapDefault!31077 () ValueCell!9292)


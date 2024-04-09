; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79012 () Bool)

(assert start!79012)

(declare-fun b_free!17197 () Bool)

(declare-fun b_next!17197 () Bool)

(assert (=> start!79012 (= b_free!17197 (not b_next!17197))))

(declare-fun tp!60033 () Bool)

(declare-fun b_and!28149 () Bool)

(assert (=> start!79012 (= tp!60033 b_and!28149)))

(declare-fun b!924423 () Bool)

(declare-datatypes ((Unit!31221 0))(
  ( (Unit!31222) )
))
(declare-fun e!518799 () Unit!31221)

(declare-fun e!518808 () Unit!31221)

(assert (=> b!924423 (= e!518799 e!518808)))

(declare-fun lt!415732 () (_ BitVec 64))

(declare-datatypes ((array!55394 0))(
  ( (array!55395 (arr!26638 (Array (_ BitVec 32) (_ BitVec 64))) (size!27098 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55394)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!924423 (= lt!415732 (select (arr!26638 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96364 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924423 (= c!96364 (validKeyInArray!0 lt!415732))))

(declare-fun b!924424 () Bool)

(declare-fun Unit!31223 () Unit!31221)

(assert (=> b!924424 (= e!518799 Unit!31223)))

(declare-fun b!924425 () Bool)

(declare-datatypes ((V!31239 0))(
  ( (V!31240 (val!9903 Int)) )
))
(declare-datatypes ((tuple2!13010 0))(
  ( (tuple2!13011 (_1!6515 (_ BitVec 64)) (_2!6515 V!31239)) )
))
(declare-datatypes ((List!18847 0))(
  ( (Nil!18844) (Cons!18843 (h!19989 tuple2!13010) (t!26782 List!18847)) )
))
(declare-datatypes ((ListLongMap!11721 0))(
  ( (ListLongMap!11722 (toList!5876 List!18847)) )
))
(declare-fun lt!415733 () ListLongMap!11721)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!415725 () V!31239)

(declare-fun apply!678 (ListLongMap!11721 (_ BitVec 64)) V!31239)

(assert (=> b!924425 (= (apply!678 lt!415733 k!1099) lt!415725)))

(declare-fun lt!415727 () V!31239)

(declare-fun lt!415736 () Unit!31221)

(declare-fun lt!415735 () ListLongMap!11721)

(declare-fun addApplyDifferent!369 (ListLongMap!11721 (_ BitVec 64) V!31239 (_ BitVec 64)) Unit!31221)

(assert (=> b!924425 (= lt!415736 (addApplyDifferent!369 lt!415735 lt!415732 lt!415727 k!1099))))

(assert (=> b!924425 (not (= lt!415732 k!1099))))

(declare-fun lt!415724 () Unit!31221)

(declare-datatypes ((List!18848 0))(
  ( (Nil!18845) (Cons!18844 (h!19990 (_ BitVec 64)) (t!26783 List!18848)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55394 (_ BitVec 64) (_ BitVec 32) List!18848) Unit!31221)

(assert (=> b!924425 (= lt!415724 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18845))))

(declare-fun e!518806 () Bool)

(assert (=> b!924425 e!518806))

(declare-fun c!96365 () Bool)

(assert (=> b!924425 (= c!96365 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!415726 () Unit!31221)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9371 0))(
  ( (ValueCellFull!9371 (v!12421 V!31239)) (EmptyCell!9371) )
))
(declare-datatypes ((array!55396 0))(
  ( (array!55397 (arr!26639 (Array (_ BitVec 32) ValueCell!9371)) (size!27099 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55396)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31239)

(declare-fun minValue!1173 () V!31239)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!229 (array!55394 array!55396 (_ BitVec 32) (_ BitVec 32) V!31239 V!31239 (_ BitVec 64) (_ BitVec 32) Int) Unit!31221)

(assert (=> b!924425 (= lt!415726 (lemmaListMapContainsThenArrayContainsFrom!229 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55394 (_ BitVec 32) List!18848) Bool)

(assert (=> b!924425 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18845)))

(declare-fun lt!415737 () Unit!31221)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55394 (_ BitVec 32) (_ BitVec 32)) Unit!31221)

(assert (=> b!924425 (= lt!415737 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4900 (ListLongMap!11721 (_ BitVec 64)) Bool)

(assert (=> b!924425 (contains!4900 lt!415733 k!1099)))

(declare-fun lt!415730 () tuple2!13010)

(declare-fun +!2683 (ListLongMap!11721 tuple2!13010) ListLongMap!11721)

(assert (=> b!924425 (= lt!415733 (+!2683 lt!415735 lt!415730))))

(declare-fun lt!415723 () Unit!31221)

(declare-fun addStillContains!445 (ListLongMap!11721 (_ BitVec 64) V!31239 (_ BitVec 64)) Unit!31221)

(assert (=> b!924425 (= lt!415723 (addStillContains!445 lt!415735 lt!415732 lt!415727 k!1099))))

(declare-fun getCurrentListMap!3094 (array!55394 array!55396 (_ BitVec 32) (_ BitVec 32) V!31239 V!31239 (_ BitVec 32) Int) ListLongMap!11721)

(assert (=> b!924425 (= (getCurrentListMap!3094 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2683 (getCurrentListMap!3094 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415730))))

(assert (=> b!924425 (= lt!415730 (tuple2!13011 lt!415732 lt!415727))))

(declare-fun get!14028 (ValueCell!9371 V!31239) V!31239)

(declare-fun dynLambda!1522 (Int (_ BitVec 64)) V!31239)

(assert (=> b!924425 (= lt!415727 (get!14028 (select (arr!26639 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1522 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415734 () Unit!31221)

(declare-fun lemmaListMapRecursiveValidKeyArray!118 (array!55394 array!55396 (_ BitVec 32) (_ BitVec 32) V!31239 V!31239 (_ BitVec 32) Int) Unit!31221)

(assert (=> b!924425 (= lt!415734 (lemmaListMapRecursiveValidKeyArray!118 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!924425 (= e!518808 lt!415736)))

(declare-fun b!924426 () Bool)

(declare-fun e!518804 () Bool)

(declare-fun tp_is_empty!19705 () Bool)

(assert (=> b!924426 (= e!518804 tp_is_empty!19705)))

(declare-fun b!924427 () Bool)

(declare-fun res!623204 () Bool)

(declare-fun e!518801 () Bool)

(assert (=> b!924427 (=> (not res!623204) (not e!518801))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55394 (_ BitVec 32)) Bool)

(assert (=> b!924427 (= res!623204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924428 () Bool)

(declare-fun e!518807 () Bool)

(declare-fun e!518805 () Bool)

(assert (=> b!924428 (= e!518807 e!518805)))

(declare-fun res!623207 () Bool)

(assert (=> b!924428 (=> (not res!623207) (not e!518805))))

(assert (=> b!924428 (= res!623207 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27098 _keys!1487)))))

(declare-fun lt!415728 () Unit!31221)

(assert (=> b!924428 (= lt!415728 e!518799)))

(declare-fun c!96363 () Bool)

(assert (=> b!924428 (= c!96363 (validKeyInArray!0 k!1099))))

(declare-fun res!623206 () Bool)

(assert (=> start!79012 (=> (not res!623206) (not e!518801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79012 (= res!623206 (validMask!0 mask!1881))))

(assert (=> start!79012 e!518801))

(assert (=> start!79012 true))

(assert (=> start!79012 tp_is_empty!19705))

(declare-fun e!518798 () Bool)

(declare-fun array_inv!20742 (array!55396) Bool)

(assert (=> start!79012 (and (array_inv!20742 _values!1231) e!518798)))

(assert (=> start!79012 tp!60033))

(declare-fun array_inv!20743 (array!55394) Bool)

(assert (=> start!79012 (array_inv!20743 _keys!1487)))

(declare-fun b!924429 () Bool)

(declare-fun e!518797 () Bool)

(assert (=> b!924429 (= e!518801 e!518797)))

(declare-fun res!623208 () Bool)

(assert (=> b!924429 (=> (not res!623208) (not e!518797))))

(assert (=> b!924429 (= res!623208 (contains!4900 lt!415735 k!1099))))

(assert (=> b!924429 (= lt!415735 (getCurrentListMap!3094 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!31314 () Bool)

(declare-fun mapRes!31314 () Bool)

(declare-fun tp!60032 () Bool)

(assert (=> mapNonEmpty!31314 (= mapRes!31314 (and tp!60032 e!518804))))

(declare-fun mapRest!31314 () (Array (_ BitVec 32) ValueCell!9371))

(declare-fun mapKey!31314 () (_ BitVec 32))

(declare-fun mapValue!31314 () ValueCell!9371)

(assert (=> mapNonEmpty!31314 (= (arr!26639 _values!1231) (store mapRest!31314 mapKey!31314 mapValue!31314))))

(declare-fun b!924430 () Bool)

(declare-fun e!518802 () Bool)

(assert (=> b!924430 (= e!518805 e!518802)))

(declare-fun res!623205 () Bool)

(assert (=> b!924430 (=> (not res!623205) (not e!518802))))

(declare-fun lt!415729 () ListLongMap!11721)

(assert (=> b!924430 (= res!623205 (contains!4900 lt!415729 k!1099))))

(assert (=> b!924430 (= lt!415729 (getCurrentListMap!3094 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924431 () Bool)

(declare-fun arrayContainsKey!0 (array!55394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924431 (= e!518806 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!924432 () Bool)

(declare-fun e!518803 () Bool)

(assert (=> b!924432 (= e!518798 (and e!518803 mapRes!31314))))

(declare-fun condMapEmpty!31314 () Bool)

(declare-fun mapDefault!31314 () ValueCell!9371)


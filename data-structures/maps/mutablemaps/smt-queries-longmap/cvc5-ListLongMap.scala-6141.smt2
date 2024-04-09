; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78982 () Bool)

(assert start!78982)

(declare-fun b_free!17167 () Bool)

(declare-fun b_next!17167 () Bool)

(assert (=> start!78982 (= b_free!17167 (not b_next!17167))))

(declare-fun tp!59943 () Bool)

(declare-fun b_and!28089 () Bool)

(assert (=> start!78982 (= tp!59943 b_and!28089)))

(declare-fun b!923583 () Bool)

(declare-fun e!518262 () Bool)

(declare-fun e!518261 () Bool)

(assert (=> b!923583 (= e!518262 e!518261)))

(declare-fun res!622805 () Bool)

(assert (=> b!923583 (=> (not res!622805) (not e!518261))))

(declare-datatypes ((V!31199 0))(
  ( (V!31200 (val!9888 Int)) )
))
(declare-datatypes ((tuple2!12984 0))(
  ( (tuple2!12985 (_1!6502 (_ BitVec 64)) (_2!6502 V!31199)) )
))
(declare-datatypes ((List!18820 0))(
  ( (Nil!18817) (Cons!18816 (h!19962 tuple2!12984) (t!26725 List!18820)) )
))
(declare-datatypes ((ListLongMap!11695 0))(
  ( (ListLongMap!11696 (toList!5863 List!18820)) )
))
(declare-fun lt!415055 () ListLongMap!11695)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4887 (ListLongMap!11695 (_ BitVec 64)) Bool)

(assert (=> b!923583 (= res!622805 (contains!4887 lt!415055 k!1099))))

(declare-datatypes ((array!55336 0))(
  ( (array!55337 (arr!26609 (Array (_ BitVec 32) (_ BitVec 64))) (size!27069 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55336)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9356 0))(
  ( (ValueCellFull!9356 (v!12406 V!31199)) (EmptyCell!9356) )
))
(declare-datatypes ((array!55338 0))(
  ( (array!55339 (arr!26610 (Array (_ BitVec 32) ValueCell!9356)) (size!27070 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55338)

(declare-fun zeroValue!1173 () V!31199)

(declare-fun minValue!1173 () V!31199)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3081 (array!55336 array!55338 (_ BitVec 32) (_ BitVec 32) V!31199 V!31199 (_ BitVec 32) Int) ListLongMap!11695)

(assert (=> b!923583 (= lt!415055 (getCurrentListMap!3081 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923585 () Bool)

(declare-fun e!518259 () Bool)

(declare-fun tp_is_empty!19675 () Bool)

(assert (=> b!923585 (= e!518259 tp_is_empty!19675)))

(declare-fun b!923586 () Bool)

(declare-fun e!518266 () Bool)

(declare-fun e!518257 () Bool)

(assert (=> b!923586 (= e!518266 e!518257)))

(declare-fun res!622804 () Bool)

(assert (=> b!923586 (=> (not res!622804) (not e!518257))))

(assert (=> b!923586 (= res!622804 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27069 _keys!1487)))))

(declare-datatypes ((Unit!31168 0))(
  ( (Unit!31169) )
))
(declare-fun lt!415052 () Unit!31168)

(declare-fun e!518258 () Unit!31168)

(assert (=> b!923586 (= lt!415052 e!518258)))

(declare-fun c!96229 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923586 (= c!96229 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!31269 () Bool)

(declare-fun mapRes!31269 () Bool)

(declare-fun tp!59942 () Bool)

(declare-fun e!518260 () Bool)

(assert (=> mapNonEmpty!31269 (= mapRes!31269 (and tp!59942 e!518260))))

(declare-fun mapValue!31269 () ValueCell!9356)

(declare-fun mapKey!31269 () (_ BitVec 32))

(declare-fun mapRest!31269 () (Array (_ BitVec 32) ValueCell!9356))

(assert (=> mapNonEmpty!31269 (= (arr!26610 _values!1231) (store mapRest!31269 mapKey!31269 mapValue!31269))))

(declare-fun e!518265 () Bool)

(declare-fun b!923587 () Bool)

(declare-fun arrayContainsKey!0 (array!55336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923587 (= e!518265 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!923588 () Bool)

(assert (=> b!923588 (= e!518260 tp_is_empty!19675)))

(declare-fun b!923589 () Bool)

(declare-fun e!518263 () Bool)

(assert (=> b!923589 (= e!518257 e!518263)))

(declare-fun res!622799 () Bool)

(assert (=> b!923589 (=> (not res!622799) (not e!518263))))

(declare-fun lt!415050 () ListLongMap!11695)

(assert (=> b!923589 (= res!622799 (contains!4887 lt!415050 k!1099))))

(assert (=> b!923589 (= lt!415050 (getCurrentListMap!3081 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923590 () Bool)

(assert (=> b!923590 (= e!518263 false)))

(declare-fun lt!415053 () V!31199)

(declare-fun apply!666 (ListLongMap!11695 (_ BitVec 64)) V!31199)

(assert (=> b!923590 (= lt!415053 (apply!666 lt!415050 k!1099))))

(declare-fun b!923591 () Bool)

(assert (=> b!923591 (= e!518265 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923592 () Bool)

(declare-fun res!622800 () Bool)

(assert (=> b!923592 (=> (not res!622800) (not e!518262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55336 (_ BitVec 32)) Bool)

(assert (=> b!923592 (= res!622800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923593 () Bool)

(declare-fun Unit!31170 () Unit!31168)

(assert (=> b!923593 (= e!518258 Unit!31170)))

(declare-fun mapIsEmpty!31269 () Bool)

(assert (=> mapIsEmpty!31269 mapRes!31269))

(declare-fun res!622802 () Bool)

(assert (=> start!78982 (=> (not res!622802) (not e!518262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78982 (= res!622802 (validMask!0 mask!1881))))

(assert (=> start!78982 e!518262))

(assert (=> start!78982 true))

(assert (=> start!78982 tp_is_empty!19675))

(declare-fun e!518267 () Bool)

(declare-fun array_inv!20718 (array!55338) Bool)

(assert (=> start!78982 (and (array_inv!20718 _values!1231) e!518267)))

(assert (=> start!78982 tp!59943))

(declare-fun array_inv!20719 (array!55336) Bool)

(assert (=> start!78982 (array_inv!20719 _keys!1487)))

(declare-fun b!923584 () Bool)

(declare-fun e!518264 () Unit!31168)

(declare-fun Unit!31171 () Unit!31168)

(assert (=> b!923584 (= e!518264 Unit!31171)))

(declare-fun b!923594 () Bool)

(declare-fun res!622797 () Bool)

(assert (=> b!923594 (=> (not res!622797) (not e!518262))))

(declare-datatypes ((List!18821 0))(
  ( (Nil!18818) (Cons!18817 (h!19963 (_ BitVec 64)) (t!26726 List!18821)) )
))
(declare-fun arrayNoDuplicates!0 (array!55336 (_ BitVec 32) List!18821) Bool)

(assert (=> b!923594 (= res!622797 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18818))))

(declare-fun b!923595 () Bool)

(declare-fun lt!415051 () ListLongMap!11695)

(declare-fun lt!415054 () V!31199)

(assert (=> b!923595 (= (apply!666 lt!415051 k!1099) lt!415054)))

(declare-fun lt!415060 () Unit!31168)

(declare-fun lt!415057 () V!31199)

(declare-fun lt!415059 () (_ BitVec 64))

(declare-fun addApplyDifferent!359 (ListLongMap!11695 (_ BitVec 64) V!31199 (_ BitVec 64)) Unit!31168)

(assert (=> b!923595 (= lt!415060 (addApplyDifferent!359 lt!415055 lt!415059 lt!415057 k!1099))))

(assert (=> b!923595 (not (= lt!415059 k!1099))))

(declare-fun lt!415049 () Unit!31168)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55336 (_ BitVec 64) (_ BitVec 32) List!18821) Unit!31168)

(assert (=> b!923595 (= lt!415049 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18818))))

(assert (=> b!923595 e!518265))

(declare-fun c!96230 () Bool)

(assert (=> b!923595 (= c!96230 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415061 () Unit!31168)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!219 (array!55336 array!55338 (_ BitVec 32) (_ BitVec 32) V!31199 V!31199 (_ BitVec 64) (_ BitVec 32) Int) Unit!31168)

(assert (=> b!923595 (= lt!415061 (lemmaListMapContainsThenArrayContainsFrom!219 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!923595 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18818)))

(declare-fun lt!415058 () Unit!31168)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55336 (_ BitVec 32) (_ BitVec 32)) Unit!31168)

(assert (=> b!923595 (= lt!415058 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!923595 (contains!4887 lt!415051 k!1099)))

(declare-fun lt!415048 () tuple2!12984)

(declare-fun +!2673 (ListLongMap!11695 tuple2!12984) ListLongMap!11695)

(assert (=> b!923595 (= lt!415051 (+!2673 lt!415055 lt!415048))))

(declare-fun lt!415056 () Unit!31168)

(declare-fun addStillContains!435 (ListLongMap!11695 (_ BitVec 64) V!31199 (_ BitVec 64)) Unit!31168)

(assert (=> b!923595 (= lt!415056 (addStillContains!435 lt!415055 lt!415059 lt!415057 k!1099))))

(assert (=> b!923595 (= (getCurrentListMap!3081 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2673 (getCurrentListMap!3081 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415048))))

(assert (=> b!923595 (= lt!415048 (tuple2!12985 lt!415059 lt!415057))))

(declare-fun get!14008 (ValueCell!9356 V!31199) V!31199)

(declare-fun dynLambda!1512 (Int (_ BitVec 64)) V!31199)

(assert (=> b!923595 (= lt!415057 (get!14008 (select (arr!26610 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1512 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415062 () Unit!31168)

(declare-fun lemmaListMapRecursiveValidKeyArray!108 (array!55336 array!55338 (_ BitVec 32) (_ BitVec 32) V!31199 V!31199 (_ BitVec 32) Int) Unit!31168)

(assert (=> b!923595 (= lt!415062 (lemmaListMapRecursiveValidKeyArray!108 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!923595 (= e!518264 lt!415060)))

(declare-fun b!923596 () Bool)

(declare-fun res!622798 () Bool)

(assert (=> b!923596 (=> (not res!622798) (not e!518262))))

(assert (=> b!923596 (= res!622798 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27069 _keys!1487))))))

(declare-fun b!923597 () Bool)

(assert (=> b!923597 (= e!518267 (and e!518259 mapRes!31269))))

(declare-fun condMapEmpty!31269 () Bool)

(declare-fun mapDefault!31269 () ValueCell!9356)


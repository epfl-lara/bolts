; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79136 () Bool)

(assert start!79136)

(declare-fun b_free!17321 () Bool)

(declare-fun b_next!17321 () Bool)

(assert (=> start!79136 (= b_free!17321 (not b_next!17321))))

(declare-fun tp!60404 () Bool)

(declare-fun b_and!28397 () Bool)

(assert (=> start!79136 (= tp!60404 b_and!28397)))

(declare-fun b!928217 () Bool)

(declare-datatypes ((V!31403 0))(
  ( (V!31404 (val!9965 Int)) )
))
(declare-datatypes ((tuple2!13124 0))(
  ( (tuple2!13125 (_1!6572 (_ BitVec 64)) (_2!6572 V!31403)) )
))
(declare-datatypes ((List!18947 0))(
  ( (Nil!18944) (Cons!18943 (h!20089 tuple2!13124) (t!27006 List!18947)) )
))
(declare-datatypes ((ListLongMap!11835 0))(
  ( (ListLongMap!11836 (toList!5933 List!18947)) )
))
(declare-fun lt!418680 () ListLongMap!11835)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun lt!418684 () V!31403)

(declare-fun apply!729 (ListLongMap!11835 (_ BitVec 64)) V!31403)

(assert (=> b!928217 (= (apply!729 lt!418680 k!1099) lt!418684)))

(declare-fun lt!418678 () V!31403)

(declare-datatypes ((Unit!31415 0))(
  ( (Unit!31416) )
))
(declare-fun lt!418687 () Unit!31415)

(declare-fun lt!418688 () (_ BitVec 64))

(declare-fun lt!418674 () ListLongMap!11835)

(declare-fun addApplyDifferent!406 (ListLongMap!11835 (_ BitVec 64) V!31403 (_ BitVec 64)) Unit!31415)

(assert (=> b!928217 (= lt!418687 (addApplyDifferent!406 lt!418674 lt!418688 lt!418678 k!1099))))

(assert (=> b!928217 (not (= lt!418688 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!418682 () Unit!31415)

(declare-datatypes ((array!55634 0))(
  ( (array!55635 (arr!26758 (Array (_ BitVec 32) (_ BitVec 64))) (size!27218 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55634)

(declare-datatypes ((List!18948 0))(
  ( (Nil!18945) (Cons!18944 (h!20090 (_ BitVec 64)) (t!27007 List!18948)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55634 (_ BitVec 64) (_ BitVec 32) List!18948) Unit!31415)

(assert (=> b!928217 (= lt!418682 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18945))))

(declare-fun e!521196 () Bool)

(assert (=> b!928217 e!521196))

(declare-fun c!96922 () Bool)

(assert (=> b!928217 (= c!96922 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9433 0))(
  ( (ValueCellFull!9433 (v!12483 V!31403)) (EmptyCell!9433) )
))
(declare-datatypes ((array!55636 0))(
  ( (array!55637 (arr!26759 (Array (_ BitVec 32) ValueCell!9433)) (size!27219 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55636)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!418689 () Unit!31415)

(declare-fun zeroValue!1173 () V!31403)

(declare-fun minValue!1173 () V!31403)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!266 (array!55634 array!55636 (_ BitVec 32) (_ BitVec 32) V!31403 V!31403 (_ BitVec 64) (_ BitVec 32) Int) Unit!31415)

(assert (=> b!928217 (= lt!418689 (lemmaListMapContainsThenArrayContainsFrom!266 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55634 (_ BitVec 32) List!18948) Bool)

(assert (=> b!928217 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18945)))

(declare-fun lt!418683 () Unit!31415)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55634 (_ BitVec 32) (_ BitVec 32)) Unit!31415)

(assert (=> b!928217 (= lt!418683 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4952 (ListLongMap!11835 (_ BitVec 64)) Bool)

(assert (=> b!928217 (contains!4952 lt!418680 k!1099)))

(declare-fun lt!418676 () tuple2!13124)

(declare-fun +!2720 (ListLongMap!11835 tuple2!13124) ListLongMap!11835)

(assert (=> b!928217 (= lt!418680 (+!2720 lt!418674 lt!418676))))

(declare-fun lt!418679 () Unit!31415)

(declare-fun addStillContains!482 (ListLongMap!11835 (_ BitVec 64) V!31403 (_ BitVec 64)) Unit!31415)

(assert (=> b!928217 (= lt!418679 (addStillContains!482 lt!418674 lt!418688 lt!418678 k!1099))))

(declare-fun getCurrentListMap!3146 (array!55634 array!55636 (_ BitVec 32) (_ BitVec 32) V!31403 V!31403 (_ BitVec 32) Int) ListLongMap!11835)

(assert (=> b!928217 (= (getCurrentListMap!3146 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2720 (getCurrentListMap!3146 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418676))))

(assert (=> b!928217 (= lt!418676 (tuple2!13125 lt!418688 lt!418678))))

(declare-fun get!14105 (ValueCell!9433 V!31403) V!31403)

(declare-fun dynLambda!1559 (Int (_ BitVec 64)) V!31403)

(assert (=> b!928217 (= lt!418678 (get!14105 (select (arr!26759 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1559 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418686 () Unit!31415)

(declare-fun lemmaListMapRecursiveValidKeyArray!155 (array!55634 array!55636 (_ BitVec 32) (_ BitVec 32) V!31403 V!31403 (_ BitVec 32) Int) Unit!31415)

(assert (=> b!928217 (= lt!418686 (lemmaListMapRecursiveValidKeyArray!155 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!521191 () Unit!31415)

(assert (=> b!928217 (= e!521191 lt!418687)))

(declare-fun b!928218 () Bool)

(declare-fun res!625204 () Bool)

(declare-fun e!521197 () Bool)

(assert (=> b!928218 (=> (not res!625204) (not e!521197))))

(assert (=> b!928218 (= res!625204 (and (= (size!27219 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27218 _keys!1487) (size!27219 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928219 () Bool)

(declare-fun e!521202 () Bool)

(declare-fun e!521199 () Bool)

(assert (=> b!928219 (= e!521202 e!521199)))

(declare-fun res!625198 () Bool)

(assert (=> b!928219 (=> (not res!625198) (not e!521199))))

(declare-fun lt!418685 () ListLongMap!11835)

(assert (=> b!928219 (= res!625198 (contains!4952 lt!418685 k!1099))))

(assert (=> b!928219 (= lt!418685 (getCurrentListMap!3146 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928220 () Bool)

(assert (=> b!928220 (= e!521196 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!928221 () Bool)

(declare-fun e!521194 () Bool)

(assert (=> b!928221 (= e!521194 e!521202)))

(declare-fun res!625203 () Bool)

(assert (=> b!928221 (=> (not res!625203) (not e!521202))))

(assert (=> b!928221 (= res!625203 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27218 _keys!1487)))))

(declare-fun lt!418677 () Unit!31415)

(declare-fun e!521198 () Unit!31415)

(assert (=> b!928221 (= lt!418677 e!521198)))

(declare-fun c!96923 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!928221 (= c!96923 (validKeyInArray!0 k!1099))))

(declare-fun b!928222 () Bool)

(declare-fun arrayContainsKey!0 (array!55634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!928222 (= e!521196 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun res!625205 () Bool)

(assert (=> start!79136 (=> (not res!625205) (not e!521197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79136 (= res!625205 (validMask!0 mask!1881))))

(assert (=> start!79136 e!521197))

(assert (=> start!79136 true))

(declare-fun tp_is_empty!19829 () Bool)

(assert (=> start!79136 tp_is_empty!19829))

(declare-fun e!521201 () Bool)

(declare-fun array_inv!20828 (array!55636) Bool)

(assert (=> start!79136 (and (array_inv!20828 _values!1231) e!521201)))

(assert (=> start!79136 tp!60404))

(declare-fun array_inv!20829 (array!55634) Bool)

(assert (=> start!79136 (array_inv!20829 _keys!1487)))

(declare-fun b!928223 () Bool)

(declare-fun v!791 () V!31403)

(declare-fun e!521195 () Bool)

(declare-fun lt!418675 () ListLongMap!11835)

(assert (=> b!928223 (= e!521195 (= (apply!729 lt!418675 k!1099) v!791))))

(declare-fun b!928224 () Bool)

(declare-fun e!521192 () Bool)

(assert (=> b!928224 (= e!521192 tp_is_empty!19829)))

(declare-fun b!928225 () Bool)

(declare-fun e!521200 () Bool)

(assert (=> b!928225 (= e!521200 tp_is_empty!19829)))

(declare-fun b!928226 () Bool)

(declare-fun res!625206 () Bool)

(assert (=> b!928226 (=> (not res!625206) (not e!521199))))

(assert (=> b!928226 (= res!625206 (= (apply!729 lt!418685 k!1099) v!791))))

(declare-fun mapIsEmpty!31500 () Bool)

(declare-fun mapRes!31500 () Bool)

(assert (=> mapIsEmpty!31500 mapRes!31500))

(declare-fun b!928227 () Bool)

(assert (=> b!928227 (= e!521199 (not (bvsle #b00000000000000000000000000000000 (size!27218 _keys!1487))))))

(assert (=> b!928227 e!521195))

(declare-fun res!625208 () Bool)

(assert (=> b!928227 (=> (not res!625208) (not e!521195))))

(assert (=> b!928227 (= res!625208 (contains!4952 lt!418675 k!1099))))

(assert (=> b!928227 (= lt!418675 (getCurrentListMap!3146 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!418681 () Unit!31415)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!107 (array!55634 array!55636 (_ BitVec 32) (_ BitVec 32) V!31403 V!31403 (_ BitVec 64) V!31403 (_ BitVec 32) Int) Unit!31415)

(assert (=> b!928227 (= lt!418681 (lemmaListMapApplyFromThenApplyFromZero!107 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928228 () Bool)

(declare-fun e!521193 () Bool)

(assert (=> b!928228 (= e!521193 e!521194)))

(declare-fun res!625201 () Bool)

(assert (=> b!928228 (=> (not res!625201) (not e!521194))))

(assert (=> b!928228 (= res!625201 (and (= lt!418684 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!928228 (= lt!418684 (apply!729 lt!418674 k!1099))))

(declare-fun b!928229 () Bool)

(declare-fun Unit!31417 () Unit!31415)

(assert (=> b!928229 (= e!521191 Unit!31417)))

(declare-fun b!928230 () Bool)

(assert (=> b!928230 (= e!521201 (and e!521200 mapRes!31500))))

(declare-fun condMapEmpty!31500 () Bool)

(declare-fun mapDefault!31500 () ValueCell!9433)


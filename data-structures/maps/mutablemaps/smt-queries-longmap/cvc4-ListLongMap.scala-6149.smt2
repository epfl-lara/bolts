; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79034 () Bool)

(assert start!79034)

(declare-fun b_free!17219 () Bool)

(declare-fun b_next!17219 () Bool)

(assert (=> start!79034 (= b_free!17219 (not b_next!17219))))

(declare-fun tp!60099 () Bool)

(declare-fun b_and!28193 () Bool)

(assert (=> start!79034 (= tp!60099 b_and!28193)))

(declare-fun b!925055 () Bool)

(declare-fun res!623519 () Bool)

(declare-fun e!519207 () Bool)

(assert (=> b!925055 (=> (not res!623519) (not e!519207))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31267 0))(
  ( (V!31268 (val!9914 Int)) )
))
(declare-fun v!791 () V!31267)

(declare-datatypes ((tuple2!13030 0))(
  ( (tuple2!13031 (_1!6525 (_ BitVec 64)) (_2!6525 V!31267)) )
))
(declare-datatypes ((List!18866 0))(
  ( (Nil!18863) (Cons!18862 (h!20008 tuple2!13030) (t!26823 List!18866)) )
))
(declare-datatypes ((ListLongMap!11741 0))(
  ( (ListLongMap!11742 (toList!5886 List!18866)) )
))
(declare-fun lt!416226 () ListLongMap!11741)

(declare-fun apply!687 (ListLongMap!11741 (_ BitVec 64)) V!31267)

(assert (=> b!925055 (= res!623519 (= (apply!687 lt!416226 k!1099) v!791))))

(declare-fun b!925056 () Bool)

(declare-fun e!519208 () Bool)

(declare-fun tp_is_empty!19727 () Bool)

(assert (=> b!925056 (= e!519208 tp_is_empty!19727)))

(declare-fun b!925057 () Bool)

(declare-fun lt!416241 () ListLongMap!11741)

(declare-fun lt!416237 () V!31267)

(assert (=> b!925057 (= (apply!687 lt!416241 k!1099) lt!416237)))

(declare-fun lt!416234 () V!31267)

(declare-fun lt!416229 () ListLongMap!11741)

(declare-fun lt!416235 () (_ BitVec 64))

(declare-datatypes ((Unit!31256 0))(
  ( (Unit!31257) )
))
(declare-fun lt!416239 () Unit!31256)

(declare-fun addApplyDifferent!376 (ListLongMap!11741 (_ BitVec 64) V!31267 (_ BitVec 64)) Unit!31256)

(assert (=> b!925057 (= lt!416239 (addApplyDifferent!376 lt!416229 lt!416235 lt!416234 k!1099))))

(assert (=> b!925057 (not (= lt!416235 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!416227 () Unit!31256)

(declare-datatypes ((array!55436 0))(
  ( (array!55437 (arr!26659 (Array (_ BitVec 32) (_ BitVec 64))) (size!27119 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55436)

(declare-datatypes ((List!18867 0))(
  ( (Nil!18864) (Cons!18863 (h!20009 (_ BitVec 64)) (t!26824 List!18867)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55436 (_ BitVec 64) (_ BitVec 32) List!18867) Unit!31256)

(assert (=> b!925057 (= lt!416227 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18864))))

(declare-fun e!519202 () Bool)

(assert (=> b!925057 e!519202))

(declare-fun c!96462 () Bool)

(assert (=> b!925057 (= c!96462 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9382 0))(
  ( (ValueCellFull!9382 (v!12432 V!31267)) (EmptyCell!9382) )
))
(declare-datatypes ((array!55438 0))(
  ( (array!55439 (arr!26660 (Array (_ BitVec 32) ValueCell!9382)) (size!27120 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55438)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!416231 () Unit!31256)

(declare-fun zeroValue!1173 () V!31267)

(declare-fun minValue!1173 () V!31267)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!236 (array!55436 array!55438 (_ BitVec 32) (_ BitVec 32) V!31267 V!31267 (_ BitVec 64) (_ BitVec 32) Int) Unit!31256)

(assert (=> b!925057 (= lt!416231 (lemmaListMapContainsThenArrayContainsFrom!236 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55436 (_ BitVec 32) List!18867) Bool)

(assert (=> b!925057 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18864)))

(declare-fun lt!416236 () Unit!31256)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55436 (_ BitVec 32) (_ BitVec 32)) Unit!31256)

(assert (=> b!925057 (= lt!416236 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4910 (ListLongMap!11741 (_ BitVec 64)) Bool)

(assert (=> b!925057 (contains!4910 lt!416241 k!1099)))

(declare-fun lt!416230 () tuple2!13030)

(declare-fun +!2690 (ListLongMap!11741 tuple2!13030) ListLongMap!11741)

(assert (=> b!925057 (= lt!416241 (+!2690 lt!416229 lt!416230))))

(declare-fun lt!416238 () Unit!31256)

(declare-fun addStillContains!452 (ListLongMap!11741 (_ BitVec 64) V!31267 (_ BitVec 64)) Unit!31256)

(assert (=> b!925057 (= lt!416238 (addStillContains!452 lt!416229 lt!416235 lt!416234 k!1099))))

(declare-fun getCurrentListMap!3104 (array!55436 array!55438 (_ BitVec 32) (_ BitVec 32) V!31267 V!31267 (_ BitVec 32) Int) ListLongMap!11741)

(assert (=> b!925057 (= (getCurrentListMap!3104 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2690 (getCurrentListMap!3104 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416230))))

(assert (=> b!925057 (= lt!416230 (tuple2!13031 lt!416235 lt!416234))))

(declare-fun get!14041 (ValueCell!9382 V!31267) V!31267)

(declare-fun dynLambda!1529 (Int (_ BitVec 64)) V!31267)

(assert (=> b!925057 (= lt!416234 (get!14041 (select (arr!26660 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1529 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416240 () Unit!31256)

(declare-fun lemmaListMapRecursiveValidKeyArray!125 (array!55436 array!55438 (_ BitVec 32) (_ BitVec 32) V!31267 V!31267 (_ BitVec 32) Int) Unit!31256)

(assert (=> b!925057 (= lt!416240 (lemmaListMapRecursiveValidKeyArray!125 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519212 () Unit!31256)

(assert (=> b!925057 (= e!519212 lt!416239)))

(declare-fun b!925058 () Bool)

(declare-fun e!519201 () Bool)

(declare-fun e!519205 () Bool)

(assert (=> b!925058 (= e!519201 e!519205)))

(declare-fun res!623516 () Bool)

(assert (=> b!925058 (=> (not res!623516) (not e!519205))))

(assert (=> b!925058 (= res!623516 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27119 _keys!1487)))))

(declare-fun lt!416228 () Unit!31256)

(declare-fun e!519204 () Unit!31256)

(assert (=> b!925058 (= lt!416228 e!519204)))

(declare-fun c!96464 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925058 (= c!96464 (validKeyInArray!0 k!1099))))

(declare-fun b!925059 () Bool)

(declare-fun e!519211 () Bool)

(declare-fun e!519210 () Bool)

(declare-fun mapRes!31347 () Bool)

(assert (=> b!925059 (= e!519211 (and e!519210 mapRes!31347))))

(declare-fun condMapEmpty!31347 () Bool)

(declare-fun mapDefault!31347 () ValueCell!9382)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79022 () Bool)

(assert start!79022)

(declare-fun b_free!17207 () Bool)

(declare-fun b_next!17207 () Bool)

(assert (=> start!79022 (= b_free!17207 (not b_next!17207))))

(declare-fun tp!60062 () Bool)

(declare-fun b_and!28169 () Bool)

(assert (=> start!79022 (= tp!60062 b_and!28169)))

(declare-fun b!924703 () Bool)

(declare-datatypes ((Unit!31235 0))(
  ( (Unit!31236) )
))
(declare-fun e!518986 () Unit!31235)

(declare-fun e!518977 () Unit!31235)

(assert (=> b!924703 (= e!518986 e!518977)))

(declare-fun lt!415948 () (_ BitVec 64))

(declare-datatypes ((array!55414 0))(
  ( (array!55415 (arr!26648 (Array (_ BitVec 32) (_ BitVec 64))) (size!27108 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55414)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!924703 (= lt!415948 (select (arr!26648 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96410 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924703 (= c!96410 (validKeyInArray!0 lt!415948))))

(declare-fun b!924704 () Bool)

(declare-fun e!518982 () Bool)

(declare-fun e!518978 () Bool)

(assert (=> b!924704 (= e!518982 e!518978)))

(declare-fun res!623337 () Bool)

(assert (=> b!924704 (=> (not res!623337) (not e!518978))))

(assert (=> b!924704 (= res!623337 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27108 _keys!1487)))))

(declare-fun lt!415960 () Unit!31235)

(assert (=> b!924704 (= lt!415960 e!518986)))

(declare-fun c!96408 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!924704 (= c!96408 (validKeyInArray!0 k!1099))))

(declare-fun b!924705 () Bool)

(declare-fun Unit!31237 () Unit!31235)

(assert (=> b!924705 (= e!518986 Unit!31237)))

(declare-fun b!924706 () Bool)

(declare-datatypes ((V!31251 0))(
  ( (V!31252 (val!9908 Int)) )
))
(declare-datatypes ((tuple2!13020 0))(
  ( (tuple2!13021 (_1!6520 (_ BitVec 64)) (_2!6520 V!31251)) )
))
(declare-datatypes ((List!18856 0))(
  ( (Nil!18853) (Cons!18852 (h!19998 tuple2!13020) (t!26801 List!18856)) )
))
(declare-datatypes ((ListLongMap!11731 0))(
  ( (ListLongMap!11732 (toList!5881 List!18856)) )
))
(declare-fun lt!415959 () ListLongMap!11731)

(declare-fun lt!415955 () V!31251)

(declare-fun apply!682 (ListLongMap!11731 (_ BitVec 64)) V!31251)

(assert (=> b!924706 (= (apply!682 lt!415959 k!1099) lt!415955)))

(declare-fun lt!415952 () V!31251)

(declare-fun lt!415954 () Unit!31235)

(declare-fun lt!415953 () ListLongMap!11731)

(declare-fun addApplyDifferent!372 (ListLongMap!11731 (_ BitVec 64) V!31251 (_ BitVec 64)) Unit!31235)

(assert (=> b!924706 (= lt!415954 (addApplyDifferent!372 lt!415953 lt!415948 lt!415952 k!1099))))

(assert (=> b!924706 (not (= lt!415948 k!1099))))

(declare-fun lt!415957 () Unit!31235)

(declare-datatypes ((List!18857 0))(
  ( (Nil!18854) (Cons!18853 (h!19999 (_ BitVec 64)) (t!26802 List!18857)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55414 (_ BitVec 64) (_ BitVec 32) List!18857) Unit!31235)

(assert (=> b!924706 (= lt!415957 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18854))))

(declare-fun e!518987 () Bool)

(assert (=> b!924706 e!518987))

(declare-fun c!96409 () Bool)

(assert (=> b!924706 (= c!96409 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun lt!415950 () Unit!31235)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((ValueCell!9376 0))(
  ( (ValueCellFull!9376 (v!12426 V!31251)) (EmptyCell!9376) )
))
(declare-datatypes ((array!55416 0))(
  ( (array!55417 (arr!26649 (Array (_ BitVec 32) ValueCell!9376)) (size!27109 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55416)

(declare-fun zeroValue!1173 () V!31251)

(declare-fun minValue!1173 () V!31251)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!232 (array!55414 array!55416 (_ BitVec 32) (_ BitVec 32) V!31251 V!31251 (_ BitVec 64) (_ BitVec 32) Int) Unit!31235)

(assert (=> b!924706 (= lt!415950 (lemmaListMapContainsThenArrayContainsFrom!232 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55414 (_ BitVec 32) List!18857) Bool)

(assert (=> b!924706 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18854)))

(declare-fun lt!415958 () Unit!31235)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55414 (_ BitVec 32) (_ BitVec 32)) Unit!31235)

(assert (=> b!924706 (= lt!415958 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4905 (ListLongMap!11731 (_ BitVec 64)) Bool)

(assert (=> b!924706 (contains!4905 lt!415959 k!1099)))

(declare-fun lt!415951 () tuple2!13020)

(declare-fun +!2686 (ListLongMap!11731 tuple2!13020) ListLongMap!11731)

(assert (=> b!924706 (= lt!415959 (+!2686 lt!415953 lt!415951))))

(declare-fun lt!415961 () Unit!31235)

(declare-fun addStillContains!448 (ListLongMap!11731 (_ BitVec 64) V!31251 (_ BitVec 64)) Unit!31235)

(assert (=> b!924706 (= lt!415961 (addStillContains!448 lt!415953 lt!415948 lt!415952 k!1099))))

(declare-fun getCurrentListMap!3099 (array!55414 array!55416 (_ BitVec 32) (_ BitVec 32) V!31251 V!31251 (_ BitVec 32) Int) ListLongMap!11731)

(assert (=> b!924706 (= (getCurrentListMap!3099 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2686 (getCurrentListMap!3099 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415951))))

(assert (=> b!924706 (= lt!415951 (tuple2!13021 lt!415948 lt!415952))))

(declare-fun get!14033 (ValueCell!9376 V!31251) V!31251)

(declare-fun dynLambda!1525 (Int (_ BitVec 64)) V!31251)

(assert (=> b!924706 (= lt!415952 (get!14033 (select (arr!26649 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1525 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415956 () Unit!31235)

(declare-fun lemmaListMapRecursiveValidKeyArray!121 (array!55414 array!55416 (_ BitVec 32) (_ BitVec 32) V!31251 V!31251 (_ BitVec 32) Int) Unit!31235)

(assert (=> b!924706 (= lt!415956 (lemmaListMapRecursiveValidKeyArray!121 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!924706 (= e!518977 lt!415954)))

(declare-fun b!924707 () Bool)

(declare-fun res!623341 () Bool)

(declare-fun e!518979 () Bool)

(assert (=> b!924707 (=> (not res!623341) (not e!518979))))

(assert (=> b!924707 (= res!623341 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18854))))

(declare-fun b!924708 () Bool)

(declare-fun e!518981 () Bool)

(assert (=> b!924708 (= e!518981 e!518982)))

(declare-fun res!623340 () Bool)

(assert (=> b!924708 (=> (not res!623340) (not e!518982))))

(declare-fun v!791 () V!31251)

(assert (=> b!924708 (= res!623340 (and (= lt!415955 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!924708 (= lt!415955 (apply!682 lt!415953 k!1099))))

(declare-fun b!924709 () Bool)

(declare-fun Unit!31238 () Unit!31235)

(assert (=> b!924709 (= e!518977 Unit!31238)))

(declare-fun b!924710 () Bool)

(declare-fun e!518983 () Bool)

(declare-fun e!518985 () Bool)

(declare-fun mapRes!31329 () Bool)

(assert (=> b!924710 (= e!518983 (and e!518985 mapRes!31329))))

(declare-fun condMapEmpty!31329 () Bool)

(declare-fun mapDefault!31329 () ValueCell!9376)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78980 () Bool)

(assert start!78980)

(declare-fun b_free!17165 () Bool)

(declare-fun b_next!17165 () Bool)

(assert (=> start!78980 (= b_free!17165 (not b_next!17165))))

(declare-fun tp!59936 () Bool)

(declare-fun b_and!28085 () Bool)

(assert (=> start!78980 (= tp!59936 b_and!28085)))

(declare-fun b!923527 () Bool)

(declare-fun e!518222 () Bool)

(declare-fun tp_is_empty!19673 () Bool)

(assert (=> b!923527 (= e!518222 tp_is_empty!19673)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!518223 () Bool)

(declare-fun b!923528 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!55332 0))(
  ( (array!55333 (arr!26607 (Array (_ BitVec 32) (_ BitVec 64))) (size!27067 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55332)

(declare-fun arrayContainsKey!0 (array!55332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923528 (= e!518223 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!923529 () Bool)

(declare-datatypes ((Unit!31166 0))(
  ( (Unit!31167) )
))
(declare-fun e!518231 () Unit!31166)

(declare-fun e!518228 () Unit!31166)

(assert (=> b!923529 (= e!518231 e!518228)))

(declare-fun lt!415009 () (_ BitVec 64))

(assert (=> b!923529 (= lt!415009 (select (arr!26607 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96219 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923529 (= c!96219 (validKeyInArray!0 lt!415009))))

(declare-fun b!923530 () Bool)

(declare-fun e!518232 () Bool)

(declare-fun e!518225 () Bool)

(assert (=> b!923530 (= e!518232 e!518225)))

(declare-fun res!622774 () Bool)

(assert (=> b!923530 (=> (not res!622774) (not e!518225))))

(assert (=> b!923530 (= res!622774 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27067 _keys!1487)))))

(declare-fun lt!415006 () Unit!31166)

(assert (=> b!923530 (= lt!415006 e!518231)))

(declare-fun c!96221 () Bool)

(assert (=> b!923530 (= c!96221 (validKeyInArray!0 k!1099))))

(declare-fun b!923531 () Bool)

(declare-fun res!622776 () Bool)

(declare-fun e!518229 () Bool)

(assert (=> b!923531 (=> (not res!622776) (not e!518229))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55332 (_ BitVec 32)) Bool)

(assert (=> b!923531 (= res!622776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923532 () Bool)

(declare-fun e!518230 () Bool)

(assert (=> b!923532 (= e!518230 e!518232)))

(declare-fun res!622771 () Bool)

(assert (=> b!923532 (=> (not res!622771) (not e!518232))))

(declare-datatypes ((V!31195 0))(
  ( (V!31196 (val!9887 Int)) )
))
(declare-fun v!791 () V!31195)

(declare-fun lt!415016 () V!31195)

(assert (=> b!923532 (= res!622771 (and (= lt!415016 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!12982 0))(
  ( (tuple2!12983 (_1!6501 (_ BitVec 64)) (_2!6501 V!31195)) )
))
(declare-datatypes ((List!18818 0))(
  ( (Nil!18815) (Cons!18814 (h!19960 tuple2!12982) (t!26721 List!18818)) )
))
(declare-datatypes ((ListLongMap!11693 0))(
  ( (ListLongMap!11694 (toList!5862 List!18818)) )
))
(declare-fun lt!415007 () ListLongMap!11693)

(declare-fun apply!665 (ListLongMap!11693 (_ BitVec 64)) V!31195)

(assert (=> b!923532 (= lt!415016 (apply!665 lt!415007 k!1099))))

(declare-fun b!923533 () Bool)

(declare-fun res!622773 () Bool)

(assert (=> b!923533 (=> (not res!622773) (not e!518229))))

(declare-datatypes ((List!18819 0))(
  ( (Nil!18816) (Cons!18815 (h!19961 (_ BitVec 64)) (t!26722 List!18819)) )
))
(declare-fun arrayNoDuplicates!0 (array!55332 (_ BitVec 32) List!18819) Bool)

(assert (=> b!923533 (= res!622773 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18816))))

(declare-fun b!923534 () Bool)

(declare-fun e!518226 () Bool)

(assert (=> b!923534 (= e!518225 e!518226)))

(declare-fun res!622778 () Bool)

(assert (=> b!923534 (=> (not res!622778) (not e!518226))))

(declare-fun lt!415013 () ListLongMap!11693)

(declare-fun contains!4886 (ListLongMap!11693 (_ BitVec 64)) Bool)

(assert (=> b!923534 (= res!622778 (contains!4886 lt!415013 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9355 0))(
  ( (ValueCellFull!9355 (v!12405 V!31195)) (EmptyCell!9355) )
))
(declare-datatypes ((array!55334 0))(
  ( (array!55335 (arr!26608 (Array (_ BitVec 32) ValueCell!9355)) (size!27068 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55334)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31195)

(declare-fun minValue!1173 () V!31195)

(declare-fun getCurrentListMap!3080 (array!55332 array!55334 (_ BitVec 32) (_ BitVec 32) V!31195 V!31195 (_ BitVec 32) Int) ListLongMap!11693)

(assert (=> b!923534 (= lt!415013 (getCurrentListMap!3080 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923535 () Bool)

(assert (=> b!923535 (= e!518226 false)))

(declare-fun lt!415015 () V!31195)

(assert (=> b!923535 (= lt!415015 (apply!665 lt!415013 k!1099))))

(declare-fun res!622775 () Bool)

(assert (=> start!78980 (=> (not res!622775) (not e!518229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78980 (= res!622775 (validMask!0 mask!1881))))

(assert (=> start!78980 e!518229))

(assert (=> start!78980 true))

(assert (=> start!78980 tp_is_empty!19673))

(declare-fun e!518227 () Bool)

(declare-fun array_inv!20716 (array!55334) Bool)

(assert (=> start!78980 (and (array_inv!20716 _values!1231) e!518227)))

(assert (=> start!78980 tp!59936))

(declare-fun array_inv!20717 (array!55332) Bool)

(assert (=> start!78980 (array_inv!20717 _keys!1487)))

(declare-fun b!923536 () Bool)

(declare-fun res!622770 () Bool)

(assert (=> b!923536 (=> (not res!622770) (not e!518229))))

(assert (=> b!923536 (= res!622770 (and (= (size!27068 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27067 _keys!1487) (size!27068 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923537 () Bool)

(declare-fun lt!415017 () ListLongMap!11693)

(assert (=> b!923537 (= (apply!665 lt!415017 k!1099) lt!415016)))

(declare-fun lt!415011 () V!31195)

(declare-fun lt!415012 () Unit!31166)

(declare-fun addApplyDifferent!358 (ListLongMap!11693 (_ BitVec 64) V!31195 (_ BitVec 64)) Unit!31166)

(assert (=> b!923537 (= lt!415012 (addApplyDifferent!358 lt!415007 lt!415009 lt!415011 k!1099))))

(assert (=> b!923537 (not (= lt!415009 k!1099))))

(declare-fun lt!415010 () Unit!31166)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55332 (_ BitVec 64) (_ BitVec 32) List!18819) Unit!31166)

(assert (=> b!923537 (= lt!415010 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18816))))

(assert (=> b!923537 e!518223))

(declare-fun c!96220 () Bool)

(assert (=> b!923537 (= c!96220 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415014 () Unit!31166)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!218 (array!55332 array!55334 (_ BitVec 32) (_ BitVec 32) V!31195 V!31195 (_ BitVec 64) (_ BitVec 32) Int) Unit!31166)

(assert (=> b!923537 (= lt!415014 (lemmaListMapContainsThenArrayContainsFrom!218 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!923537 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18816)))

(declare-fun lt!415005 () Unit!31166)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55332 (_ BitVec 32) (_ BitVec 32)) Unit!31166)

(assert (=> b!923537 (= lt!415005 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!923537 (contains!4886 lt!415017 k!1099)))

(declare-fun lt!415003 () tuple2!12982)

(declare-fun +!2672 (ListLongMap!11693 tuple2!12982) ListLongMap!11693)

(assert (=> b!923537 (= lt!415017 (+!2672 lt!415007 lt!415003))))

(declare-fun lt!415004 () Unit!31166)

(declare-fun addStillContains!434 (ListLongMap!11693 (_ BitVec 64) V!31195 (_ BitVec 64)) Unit!31166)

(assert (=> b!923537 (= lt!415004 (addStillContains!434 lt!415007 lt!415009 lt!415011 k!1099))))

(assert (=> b!923537 (= (getCurrentListMap!3080 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2672 (getCurrentListMap!3080 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415003))))

(assert (=> b!923537 (= lt!415003 (tuple2!12983 lt!415009 lt!415011))))

(declare-fun get!14005 (ValueCell!9355 V!31195) V!31195)

(declare-fun dynLambda!1511 (Int (_ BitVec 64)) V!31195)

(assert (=> b!923537 (= lt!415011 (get!14005 (select (arr!26608 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1511 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415008 () Unit!31166)

(declare-fun lemmaListMapRecursiveValidKeyArray!107 (array!55332 array!55334 (_ BitVec 32) (_ BitVec 32) V!31195 V!31195 (_ BitVec 32) Int) Unit!31166)

(assert (=> b!923537 (= lt!415008 (lemmaListMapRecursiveValidKeyArray!107 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!923537 (= e!518228 lt!415012)))

(declare-fun b!923538 () Bool)

(declare-fun res!622777 () Bool)

(assert (=> b!923538 (=> (not res!622777) (not e!518229))))

(assert (=> b!923538 (= res!622777 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27067 _keys!1487))))))

(declare-fun b!923539 () Bool)

(declare-fun e!518221 () Bool)

(declare-fun mapRes!31266 () Bool)

(assert (=> b!923539 (= e!518227 (and e!518221 mapRes!31266))))

(declare-fun condMapEmpty!31266 () Bool)

(declare-fun mapDefault!31266 () ValueCell!9355)


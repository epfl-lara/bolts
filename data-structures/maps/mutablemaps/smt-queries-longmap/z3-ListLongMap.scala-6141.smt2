; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78984 () Bool)

(assert start!78984)

(declare-fun b_free!17169 () Bool)

(declare-fun b_next!17169 () Bool)

(assert (=> start!78984 (= b_free!17169 (not b_next!17169))))

(declare-fun tp!59948 () Bool)

(declare-fun b_and!28093 () Bool)

(assert (=> start!78984 (= tp!59948 b_and!28093)))

(declare-fun b!923639 () Bool)

(declare-fun e!518303 () Bool)

(declare-fun e!518295 () Bool)

(assert (=> b!923639 (= e!518303 e!518295)))

(declare-fun res!622825 () Bool)

(assert (=> b!923639 (=> (not res!622825) (not e!518295))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((V!31201 0))(
  ( (V!31202 (val!9889 Int)) )
))
(declare-fun v!791 () V!31201)

(declare-fun lt!415096 () V!31201)

(assert (=> b!923639 (= res!622825 (and (= lt!415096 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!12986 0))(
  ( (tuple2!12987 (_1!6503 (_ BitVec 64)) (_2!6503 V!31201)) )
))
(declare-datatypes ((List!18822 0))(
  ( (Nil!18819) (Cons!18818 (h!19964 tuple2!12986) (t!26729 List!18822)) )
))
(declare-datatypes ((ListLongMap!11697 0))(
  ( (ListLongMap!11698 (toList!5864 List!18822)) )
))
(declare-fun lt!415095 () ListLongMap!11697)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!667 (ListLongMap!11697 (_ BitVec 64)) V!31201)

(assert (=> b!923639 (= lt!415096 (apply!667 lt!415095 k0!1099))))

(declare-fun b!923640 () Bool)

(declare-fun e!518301 () Bool)

(assert (=> b!923640 (= e!518295 e!518301)))

(declare-fun res!622832 () Bool)

(assert (=> b!923640 (=> (not res!622832) (not e!518301))))

(declare-datatypes ((array!55340 0))(
  ( (array!55341 (arr!26611 (Array (_ BitVec 32) (_ BitVec 64))) (size!27071 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55340)

(assert (=> b!923640 (= res!622832 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27071 _keys!1487)))))

(declare-datatypes ((Unit!31172 0))(
  ( (Unit!31173) )
))
(declare-fun lt!415103 () Unit!31172)

(declare-fun e!518300 () Unit!31172)

(assert (=> b!923640 (= lt!415103 e!518300)))

(declare-fun c!96238 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923640 (= c!96238 (validKeyInArray!0 k0!1099))))

(declare-fun b!923641 () Bool)

(declare-fun lt!415099 () ListLongMap!11697)

(assert (=> b!923641 (= (apply!667 lt!415099 k0!1099) lt!415096)))

(declare-fun lt!415104 () (_ BitVec 64))

(declare-fun lt!415105 () Unit!31172)

(declare-fun lt!415100 () V!31201)

(declare-fun addApplyDifferent!360 (ListLongMap!11697 (_ BitVec 64) V!31201 (_ BitVec 64)) Unit!31172)

(assert (=> b!923641 (= lt!415105 (addApplyDifferent!360 lt!415095 lt!415104 lt!415100 k0!1099))))

(assert (=> b!923641 (not (= lt!415104 k0!1099))))

(declare-fun lt!415106 () Unit!31172)

(declare-datatypes ((List!18823 0))(
  ( (Nil!18820) (Cons!18819 (h!19965 (_ BitVec 64)) (t!26730 List!18823)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55340 (_ BitVec 64) (_ BitVec 32) List!18823) Unit!31172)

(assert (=> b!923641 (= lt!415106 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18820))))

(declare-fun e!518298 () Bool)

(assert (=> b!923641 e!518298))

(declare-fun c!96237 () Bool)

(assert (=> b!923641 (= c!96237 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415094 () Unit!31172)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9357 0))(
  ( (ValueCellFull!9357 (v!12407 V!31201)) (EmptyCell!9357) )
))
(declare-datatypes ((array!55342 0))(
  ( (array!55343 (arr!26612 (Array (_ BitVec 32) ValueCell!9357)) (size!27072 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55342)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31201)

(declare-fun minValue!1173 () V!31201)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!220 (array!55340 array!55342 (_ BitVec 32) (_ BitVec 32) V!31201 V!31201 (_ BitVec 64) (_ BitVec 32) Int) Unit!31172)

(assert (=> b!923641 (= lt!415094 (lemmaListMapContainsThenArrayContainsFrom!220 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55340 (_ BitVec 32) List!18823) Bool)

(assert (=> b!923641 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18820)))

(declare-fun lt!415107 () Unit!31172)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55340 (_ BitVec 32) (_ BitVec 32)) Unit!31172)

(assert (=> b!923641 (= lt!415107 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4888 (ListLongMap!11697 (_ BitVec 64)) Bool)

(assert (=> b!923641 (contains!4888 lt!415099 k0!1099)))

(declare-fun lt!415102 () tuple2!12986)

(declare-fun +!2674 (ListLongMap!11697 tuple2!12986) ListLongMap!11697)

(assert (=> b!923641 (= lt!415099 (+!2674 lt!415095 lt!415102))))

(declare-fun lt!415098 () Unit!31172)

(declare-fun addStillContains!436 (ListLongMap!11697 (_ BitVec 64) V!31201 (_ BitVec 64)) Unit!31172)

(assert (=> b!923641 (= lt!415098 (addStillContains!436 lt!415095 lt!415104 lt!415100 k0!1099))))

(declare-fun getCurrentListMap!3082 (array!55340 array!55342 (_ BitVec 32) (_ BitVec 32) V!31201 V!31201 (_ BitVec 32) Int) ListLongMap!11697)

(assert (=> b!923641 (= (getCurrentListMap!3082 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2674 (getCurrentListMap!3082 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415102))))

(assert (=> b!923641 (= lt!415102 (tuple2!12987 lt!415104 lt!415100))))

(declare-fun get!14009 (ValueCell!9357 V!31201) V!31201)

(declare-fun dynLambda!1513 (Int (_ BitVec 64)) V!31201)

(assert (=> b!923641 (= lt!415100 (get!14009 (select (arr!26612 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1513 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415101 () Unit!31172)

(declare-fun lemmaListMapRecursiveValidKeyArray!109 (array!55340 array!55342 (_ BitVec 32) (_ BitVec 32) V!31201 V!31201 (_ BitVec 32) Int) Unit!31172)

(assert (=> b!923641 (= lt!415101 (lemmaListMapRecursiveValidKeyArray!109 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!518294 () Unit!31172)

(assert (=> b!923641 (= e!518294 lt!415105)))

(declare-fun b!923642 () Bool)

(declare-fun res!622824 () Bool)

(declare-fun e!518302 () Bool)

(assert (=> b!923642 (=> (not res!622824) (not e!518302))))

(assert (=> b!923642 (= res!622824 (and (= (size!27072 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27071 _keys!1487) (size!27072 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923643 () Bool)

(declare-fun res!622831 () Bool)

(assert (=> b!923643 (=> (not res!622831) (not e!518302))))

(assert (=> b!923643 (= res!622831 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27071 _keys!1487))))))

(declare-fun b!923644 () Bool)

(declare-fun Unit!31174 () Unit!31172)

(assert (=> b!923644 (= e!518300 Unit!31174)))

(declare-fun b!923645 () Bool)

(declare-fun e!518296 () Bool)

(assert (=> b!923645 (= e!518296 false)))

(declare-fun lt!415093 () V!31201)

(declare-fun lt!415097 () ListLongMap!11697)

(assert (=> b!923645 (= lt!415093 (apply!667 lt!415097 k0!1099))))

(declare-fun b!923646 () Bool)

(assert (=> b!923646 (= e!518302 e!518303)))

(declare-fun res!622829 () Bool)

(assert (=> b!923646 (=> (not res!622829) (not e!518303))))

(assert (=> b!923646 (= res!622829 (contains!4888 lt!415095 k0!1099))))

(assert (=> b!923646 (= lt!415095 (getCurrentListMap!3082 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923647 () Bool)

(declare-fun Unit!31175 () Unit!31172)

(assert (=> b!923647 (= e!518294 Unit!31175)))

(declare-fun b!923648 () Bool)

(assert (=> b!923648 (= e!518298 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923649 () Bool)

(declare-fun e!518304 () Bool)

(declare-fun tp_is_empty!19677 () Bool)

(assert (=> b!923649 (= e!518304 tp_is_empty!19677)))

(declare-fun b!923650 () Bool)

(declare-fun res!622827 () Bool)

(assert (=> b!923650 (=> (not res!622827) (not e!518302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55340 (_ BitVec 32)) Bool)

(assert (=> b!923650 (= res!622827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31272 () Bool)

(declare-fun mapRes!31272 () Bool)

(assert (=> mapIsEmpty!31272 mapRes!31272))

(declare-fun b!923651 () Bool)

(assert (=> b!923651 (= e!518300 e!518294)))

(assert (=> b!923651 (= lt!415104 (select (arr!26611 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96239 () Bool)

(assert (=> b!923651 (= c!96239 (validKeyInArray!0 lt!415104))))

(declare-fun b!923652 () Bool)

(assert (=> b!923652 (= e!518301 e!518296)))

(declare-fun res!622828 () Bool)

(assert (=> b!923652 (=> (not res!622828) (not e!518296))))

(assert (=> b!923652 (= res!622828 (contains!4888 lt!415097 k0!1099))))

(assert (=> b!923652 (= lt!415097 (getCurrentListMap!3082 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapNonEmpty!31272 () Bool)

(declare-fun tp!59949 () Bool)

(assert (=> mapNonEmpty!31272 (= mapRes!31272 (and tp!59949 e!518304))))

(declare-fun mapValue!31272 () ValueCell!9357)

(declare-fun mapKey!31272 () (_ BitVec 32))

(declare-fun mapRest!31272 () (Array (_ BitVec 32) ValueCell!9357))

(assert (=> mapNonEmpty!31272 (= (arr!26612 _values!1231) (store mapRest!31272 mapKey!31272 mapValue!31272))))

(declare-fun b!923653 () Bool)

(declare-fun e!518297 () Bool)

(declare-fun e!518293 () Bool)

(assert (=> b!923653 (= e!518297 (and e!518293 mapRes!31272))))

(declare-fun condMapEmpty!31272 () Bool)

(declare-fun mapDefault!31272 () ValueCell!9357)

(assert (=> b!923653 (= condMapEmpty!31272 (= (arr!26612 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9357)) mapDefault!31272)))))

(declare-fun b!923654 () Bool)

(declare-fun res!622830 () Bool)

(assert (=> b!923654 (=> (not res!622830) (not e!518302))))

(assert (=> b!923654 (= res!622830 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18820))))

(declare-fun res!622826 () Bool)

(assert (=> start!78984 (=> (not res!622826) (not e!518302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78984 (= res!622826 (validMask!0 mask!1881))))

(assert (=> start!78984 e!518302))

(assert (=> start!78984 true))

(assert (=> start!78984 tp_is_empty!19677))

(declare-fun array_inv!20720 (array!55342) Bool)

(assert (=> start!78984 (and (array_inv!20720 _values!1231) e!518297)))

(assert (=> start!78984 tp!59948))

(declare-fun array_inv!20721 (array!55340) Bool)

(assert (=> start!78984 (array_inv!20721 _keys!1487)))

(declare-fun b!923655 () Bool)

(assert (=> b!923655 (= e!518293 tp_is_empty!19677)))

(declare-fun b!923656 () Bool)

(declare-fun arrayContainsKey!0 (array!55340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923656 (= e!518298 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(assert (= (and start!78984 res!622826) b!923642))

(assert (= (and b!923642 res!622824) b!923650))

(assert (= (and b!923650 res!622827) b!923654))

(assert (= (and b!923654 res!622830) b!923643))

(assert (= (and b!923643 res!622831) b!923646))

(assert (= (and b!923646 res!622829) b!923639))

(assert (= (and b!923639 res!622825) b!923640))

(assert (= (and b!923640 c!96238) b!923651))

(assert (= (and b!923640 (not c!96238)) b!923644))

(assert (= (and b!923651 c!96239) b!923641))

(assert (= (and b!923651 (not c!96239)) b!923647))

(assert (= (and b!923641 c!96237) b!923656))

(assert (= (and b!923641 (not c!96237)) b!923648))

(assert (= (and b!923640 res!622832) b!923652))

(assert (= (and b!923652 res!622828) b!923645))

(assert (= (and b!923653 condMapEmpty!31272) mapIsEmpty!31272))

(assert (= (and b!923653 (not condMapEmpty!31272)) mapNonEmpty!31272))

(get-info :version)

(assert (= (and mapNonEmpty!31272 ((_ is ValueCellFull!9357) mapValue!31272)) b!923649))

(assert (= (and b!923653 ((_ is ValueCellFull!9357) mapDefault!31272)) b!923655))

(assert (= start!78984 b!923653))

(declare-fun b_lambda!13701 () Bool)

(assert (=> (not b_lambda!13701) (not b!923641)))

(declare-fun t!26728 () Bool)

(declare-fun tb!5757 () Bool)

(assert (=> (and start!78984 (= defaultEntry!1235 defaultEntry!1235) t!26728) tb!5757))

(declare-fun result!11329 () Bool)

(assert (=> tb!5757 (= result!11329 tp_is_empty!19677)))

(assert (=> b!923641 t!26728))

(declare-fun b_and!28095 () Bool)

(assert (= b_and!28093 (and (=> t!26728 result!11329) b_and!28095)))

(declare-fun m!857985 () Bool)

(assert (=> b!923650 m!857985))

(declare-fun m!857987 () Bool)

(assert (=> mapNonEmpty!31272 m!857987))

(declare-fun m!857989 () Bool)

(assert (=> start!78984 m!857989))

(declare-fun m!857991 () Bool)

(assert (=> start!78984 m!857991))

(declare-fun m!857993 () Bool)

(assert (=> start!78984 m!857993))

(declare-fun m!857995 () Bool)

(assert (=> b!923639 m!857995))

(declare-fun m!857997 () Bool)

(assert (=> b!923640 m!857997))

(declare-fun m!857999 () Bool)

(assert (=> b!923645 m!857999))

(declare-fun m!858001 () Bool)

(assert (=> b!923646 m!858001))

(declare-fun m!858003 () Bool)

(assert (=> b!923646 m!858003))

(declare-fun m!858005 () Bool)

(assert (=> b!923652 m!858005))

(declare-fun m!858007 () Bool)

(assert (=> b!923652 m!858007))

(declare-fun m!858009 () Bool)

(assert (=> b!923654 m!858009))

(declare-fun m!858011 () Bool)

(assert (=> b!923651 m!858011))

(declare-fun m!858013 () Bool)

(assert (=> b!923651 m!858013))

(declare-fun m!858015 () Bool)

(assert (=> b!923656 m!858015))

(declare-fun m!858017 () Bool)

(assert (=> b!923641 m!858017))

(declare-fun m!858019 () Bool)

(assert (=> b!923641 m!858019))

(declare-fun m!858021 () Bool)

(assert (=> b!923641 m!858021))

(declare-fun m!858023 () Bool)

(assert (=> b!923641 m!858023))

(declare-fun m!858025 () Bool)

(assert (=> b!923641 m!858025))

(declare-fun m!858027 () Bool)

(assert (=> b!923641 m!858027))

(declare-fun m!858029 () Bool)

(assert (=> b!923641 m!858029))

(assert (=> b!923641 m!858023))

(assert (=> b!923641 m!858025))

(declare-fun m!858031 () Bool)

(assert (=> b!923641 m!858031))

(declare-fun m!858033 () Bool)

(assert (=> b!923641 m!858033))

(assert (=> b!923641 m!858007))

(declare-fun m!858035 () Bool)

(assert (=> b!923641 m!858035))

(declare-fun m!858037 () Bool)

(assert (=> b!923641 m!858037))

(declare-fun m!858039 () Bool)

(assert (=> b!923641 m!858039))

(assert (=> b!923641 m!858037))

(declare-fun m!858041 () Bool)

(assert (=> b!923641 m!858041))

(declare-fun m!858043 () Bool)

(assert (=> b!923641 m!858043))

(declare-fun m!858045 () Bool)

(assert (=> b!923641 m!858045))

(check-sat (not b!923654) (not b!923641) (not b!923651) (not b!923639) (not b_next!17169) (not b!923652) (not b!923640) (not b!923646) b_and!28095 (not mapNonEmpty!31272) (not b!923656) (not start!78984) (not b!923650) (not b_lambda!13701) tp_is_empty!19677 (not b!923645))
(check-sat b_and!28095 (not b_next!17169))

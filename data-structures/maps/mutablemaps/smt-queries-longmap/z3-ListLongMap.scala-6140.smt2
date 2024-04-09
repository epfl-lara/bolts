; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78978 () Bool)

(assert start!78978)

(declare-fun b_free!17163 () Bool)

(declare-fun b_next!17163 () Bool)

(assert (=> start!78978 (= b_free!17163 (not b_next!17163))))

(declare-fun tp!59930 () Bool)

(declare-fun b_and!28081 () Bool)

(assert (=> start!78978 (= tp!59930 b_and!28081)))

(declare-fun b!923471 () Bool)

(declare-fun e!518187 () Bool)

(declare-fun tp_is_empty!19671 () Bool)

(assert (=> b!923471 (= e!518187 tp_is_empty!19671)))

(declare-fun b!923472 () Bool)

(declare-datatypes ((V!31193 0))(
  ( (V!31194 (val!9886 Int)) )
))
(declare-datatypes ((tuple2!12980 0))(
  ( (tuple2!12981 (_1!6500 (_ BitVec 64)) (_2!6500 V!31193)) )
))
(declare-datatypes ((List!18816 0))(
  ( (Nil!18813) (Cons!18812 (h!19958 tuple2!12980) (t!26717 List!18816)) )
))
(declare-datatypes ((ListLongMap!11691 0))(
  ( (ListLongMap!11692 (toList!5861 List!18816)) )
))
(declare-fun lt!414968 () ListLongMap!11691)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun lt!414961 () V!31193)

(declare-fun apply!664 (ListLongMap!11691 (_ BitVec 64)) V!31193)

(assert (=> b!923472 (= (apply!664 lt!414968 k0!1099) lt!414961)))

(declare-fun lt!414967 () V!31193)

(declare-fun lt!414972 () (_ BitVec 64))

(declare-fun lt!414964 () ListLongMap!11691)

(declare-datatypes ((Unit!31162 0))(
  ( (Unit!31163) )
))
(declare-fun lt!414958 () Unit!31162)

(declare-fun addApplyDifferent!357 (ListLongMap!11691 (_ BitVec 64) V!31193 (_ BitVec 64)) Unit!31162)

(assert (=> b!923472 (= lt!414958 (addApplyDifferent!357 lt!414964 lt!414972 lt!414967 k0!1099))))

(assert (=> b!923472 (not (= lt!414972 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!414963 () Unit!31162)

(declare-datatypes ((array!55328 0))(
  ( (array!55329 (arr!26605 (Array (_ BitVec 32) (_ BitVec 64))) (size!27065 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55328)

(declare-datatypes ((List!18817 0))(
  ( (Nil!18814) (Cons!18813 (h!19959 (_ BitVec 64)) (t!26718 List!18817)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55328 (_ BitVec 64) (_ BitVec 32) List!18817) Unit!31162)

(assert (=> b!923472 (= lt!414963 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18814))))

(declare-fun e!518192 () Bool)

(assert (=> b!923472 e!518192))

(declare-fun c!96212 () Bool)

(assert (=> b!923472 (= c!96212 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9354 0))(
  ( (ValueCellFull!9354 (v!12404 V!31193)) (EmptyCell!9354) )
))
(declare-datatypes ((array!55330 0))(
  ( (array!55331 (arr!26606 (Array (_ BitVec 32) ValueCell!9354)) (size!27066 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55330)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31193)

(declare-fun minValue!1173 () V!31193)

(declare-fun lt!414969 () Unit!31162)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!217 (array!55328 array!55330 (_ BitVec 32) (_ BitVec 32) V!31193 V!31193 (_ BitVec 64) (_ BitVec 32) Int) Unit!31162)

(assert (=> b!923472 (= lt!414969 (lemmaListMapContainsThenArrayContainsFrom!217 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55328 (_ BitVec 32) List!18817) Bool)

(assert (=> b!923472 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18814)))

(declare-fun lt!414959 () Unit!31162)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55328 (_ BitVec 32) (_ BitVec 32)) Unit!31162)

(assert (=> b!923472 (= lt!414959 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4885 (ListLongMap!11691 (_ BitVec 64)) Bool)

(assert (=> b!923472 (contains!4885 lt!414968 k0!1099)))

(declare-fun lt!414971 () tuple2!12980)

(declare-fun +!2671 (ListLongMap!11691 tuple2!12980) ListLongMap!11691)

(assert (=> b!923472 (= lt!414968 (+!2671 lt!414964 lt!414971))))

(declare-fun lt!414970 () Unit!31162)

(declare-fun addStillContains!433 (ListLongMap!11691 (_ BitVec 64) V!31193 (_ BitVec 64)) Unit!31162)

(assert (=> b!923472 (= lt!414970 (addStillContains!433 lt!414964 lt!414972 lt!414967 k0!1099))))

(declare-fun getCurrentListMap!3079 (array!55328 array!55330 (_ BitVec 32) (_ BitVec 32) V!31193 V!31193 (_ BitVec 32) Int) ListLongMap!11691)

(assert (=> b!923472 (= (getCurrentListMap!3079 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2671 (getCurrentListMap!3079 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414971))))

(assert (=> b!923472 (= lt!414971 (tuple2!12981 lt!414972 lt!414967))))

(declare-fun get!14004 (ValueCell!9354 V!31193) V!31193)

(declare-fun dynLambda!1510 (Int (_ BitVec 64)) V!31193)

(assert (=> b!923472 (= lt!414967 (get!14004 (select (arr!26606 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1510 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414962 () Unit!31162)

(declare-fun lemmaListMapRecursiveValidKeyArray!106 (array!55328 array!55330 (_ BitVec 32) (_ BitVec 32) V!31193 V!31193 (_ BitVec 32) Int) Unit!31162)

(assert (=> b!923472 (= lt!414962 (lemmaListMapRecursiveValidKeyArray!106 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!518191 () Unit!31162)

(assert (=> b!923472 (= e!518191 lt!414958)))

(declare-fun b!923473 () Bool)

(declare-fun arrayContainsKey!0 (array!55328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923473 (= e!518192 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!923474 () Bool)

(declare-fun res!622751 () Bool)

(declare-fun e!518194 () Bool)

(assert (=> b!923474 (=> (not res!622751) (not e!518194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55328 (_ BitVec 32)) Bool)

(assert (=> b!923474 (= res!622751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923475 () Bool)

(declare-fun res!622750 () Bool)

(assert (=> b!923475 (=> (not res!622750) (not e!518194))))

(assert (=> b!923475 (= res!622750 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27065 _keys!1487))))))

(declare-fun b!923476 () Bool)

(declare-fun e!518185 () Bool)

(declare-fun e!518188 () Bool)

(assert (=> b!923476 (= e!518185 e!518188)))

(declare-fun res!622748 () Bool)

(assert (=> b!923476 (=> (not res!622748) (not e!518188))))

(declare-fun v!791 () V!31193)

(assert (=> b!923476 (= res!622748 (and (= lt!414961 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!923476 (= lt!414961 (apply!664 lt!414964 k0!1099))))

(declare-fun b!923477 () Bool)

(declare-fun e!518186 () Bool)

(assert (=> b!923477 (= e!518188 e!518186)))

(declare-fun res!622747 () Bool)

(assert (=> b!923477 (=> (not res!622747) (not e!518186))))

(assert (=> b!923477 (= res!622747 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27065 _keys!1487)))))

(declare-fun lt!414960 () Unit!31162)

(declare-fun e!518193 () Unit!31162)

(assert (=> b!923477 (= lt!414960 e!518193)))

(declare-fun c!96211 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923477 (= c!96211 (validKeyInArray!0 k0!1099))))

(declare-fun b!923478 () Bool)

(declare-fun e!518195 () Bool)

(assert (=> b!923478 (= e!518195 tp_is_empty!19671)))

(declare-fun b!923479 () Bool)

(assert (=> b!923479 (= e!518194 e!518185)))

(declare-fun res!622746 () Bool)

(assert (=> b!923479 (=> (not res!622746) (not e!518185))))

(assert (=> b!923479 (= res!622746 (contains!4885 lt!414964 k0!1099))))

(assert (=> b!923479 (= lt!414964 (getCurrentListMap!3079 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31263 () Bool)

(declare-fun mapRes!31263 () Bool)

(assert (=> mapIsEmpty!31263 mapRes!31263))

(declare-fun b!923480 () Bool)

(declare-fun Unit!31164 () Unit!31162)

(assert (=> b!923480 (= e!518191 Unit!31164)))

(declare-fun b!923481 () Bool)

(declare-fun e!518189 () Bool)

(assert (=> b!923481 (= e!518189 (and e!518187 mapRes!31263))))

(declare-fun condMapEmpty!31263 () Bool)

(declare-fun mapDefault!31263 () ValueCell!9354)

(assert (=> b!923481 (= condMapEmpty!31263 (= (arr!26606 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9354)) mapDefault!31263)))))

(declare-fun b!923482 () Bool)

(declare-fun e!518196 () Bool)

(assert (=> b!923482 (= e!518186 e!518196)))

(declare-fun res!622744 () Bool)

(assert (=> b!923482 (=> (not res!622744) (not e!518196))))

(declare-fun lt!414965 () ListLongMap!11691)

(assert (=> b!923482 (= res!622744 (contains!4885 lt!414965 k0!1099))))

(assert (=> b!923482 (= lt!414965 (getCurrentListMap!3079 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923483 () Bool)

(declare-fun res!622749 () Bool)

(assert (=> b!923483 (=> (not res!622749) (not e!518194))))

(assert (=> b!923483 (= res!622749 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18814))))

(declare-fun b!923484 () Bool)

(declare-fun Unit!31165 () Unit!31162)

(assert (=> b!923484 (= e!518193 Unit!31165)))

(declare-fun b!923485 () Bool)

(assert (=> b!923485 (= e!518192 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923486 () Bool)

(assert (=> b!923486 (= e!518193 e!518191)))

(assert (=> b!923486 (= lt!414972 (select (arr!26605 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96210 () Bool)

(assert (=> b!923486 (= c!96210 (validKeyInArray!0 lt!414972))))

(declare-fun mapNonEmpty!31263 () Bool)

(declare-fun tp!59931 () Bool)

(assert (=> mapNonEmpty!31263 (= mapRes!31263 (and tp!59931 e!518195))))

(declare-fun mapValue!31263 () ValueCell!9354)

(declare-fun mapRest!31263 () (Array (_ BitVec 32) ValueCell!9354))

(declare-fun mapKey!31263 () (_ BitVec 32))

(assert (=> mapNonEmpty!31263 (= (arr!26606 _values!1231) (store mapRest!31263 mapKey!31263 mapValue!31263))))

(declare-fun res!622743 () Bool)

(assert (=> start!78978 (=> (not res!622743) (not e!518194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78978 (= res!622743 (validMask!0 mask!1881))))

(assert (=> start!78978 e!518194))

(assert (=> start!78978 true))

(assert (=> start!78978 tp_is_empty!19671))

(declare-fun array_inv!20714 (array!55330) Bool)

(assert (=> start!78978 (and (array_inv!20714 _values!1231) e!518189)))

(assert (=> start!78978 tp!59930))

(declare-fun array_inv!20715 (array!55328) Bool)

(assert (=> start!78978 (array_inv!20715 _keys!1487)))

(declare-fun b!923487 () Bool)

(assert (=> b!923487 (= e!518196 false)))

(declare-fun lt!414966 () V!31193)

(assert (=> b!923487 (= lt!414966 (apply!664 lt!414965 k0!1099))))

(declare-fun b!923488 () Bool)

(declare-fun res!622745 () Bool)

(assert (=> b!923488 (=> (not res!622745) (not e!518194))))

(assert (=> b!923488 (= res!622745 (and (= (size!27066 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27065 _keys!1487) (size!27066 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!78978 res!622743) b!923488))

(assert (= (and b!923488 res!622745) b!923474))

(assert (= (and b!923474 res!622751) b!923483))

(assert (= (and b!923483 res!622749) b!923475))

(assert (= (and b!923475 res!622750) b!923479))

(assert (= (and b!923479 res!622746) b!923476))

(assert (= (and b!923476 res!622748) b!923477))

(assert (= (and b!923477 c!96211) b!923486))

(assert (= (and b!923477 (not c!96211)) b!923484))

(assert (= (and b!923486 c!96210) b!923472))

(assert (= (and b!923486 (not c!96210)) b!923480))

(assert (= (and b!923472 c!96212) b!923473))

(assert (= (and b!923472 (not c!96212)) b!923485))

(assert (= (and b!923477 res!622747) b!923482))

(assert (= (and b!923482 res!622744) b!923487))

(assert (= (and b!923481 condMapEmpty!31263) mapIsEmpty!31263))

(assert (= (and b!923481 (not condMapEmpty!31263)) mapNonEmpty!31263))

(get-info :version)

(assert (= (and mapNonEmpty!31263 ((_ is ValueCellFull!9354) mapValue!31263)) b!923478))

(assert (= (and b!923481 ((_ is ValueCellFull!9354) mapDefault!31263)) b!923471))

(assert (= start!78978 b!923481))

(declare-fun b_lambda!13695 () Bool)

(assert (=> (not b_lambda!13695) (not b!923472)))

(declare-fun t!26716 () Bool)

(declare-fun tb!5751 () Bool)

(assert (=> (and start!78978 (= defaultEntry!1235 defaultEntry!1235) t!26716) tb!5751))

(declare-fun result!11317 () Bool)

(assert (=> tb!5751 (= result!11317 tp_is_empty!19671)))

(assert (=> b!923472 t!26716))

(declare-fun b_and!28083 () Bool)

(assert (= b_and!28081 (and (=> t!26716 result!11317) b_and!28083)))

(declare-fun m!857799 () Bool)

(assert (=> b!923476 m!857799))

(declare-fun m!857801 () Bool)

(assert (=> b!923472 m!857801))

(declare-fun m!857803 () Bool)

(assert (=> b!923472 m!857803))

(declare-fun m!857805 () Bool)

(assert (=> b!923472 m!857805))

(declare-fun m!857807 () Bool)

(assert (=> b!923472 m!857807))

(declare-fun m!857809 () Bool)

(assert (=> b!923472 m!857809))

(assert (=> b!923472 m!857803))

(assert (=> b!923472 m!857805))

(declare-fun m!857811 () Bool)

(assert (=> b!923472 m!857811))

(declare-fun m!857813 () Bool)

(assert (=> b!923472 m!857813))

(declare-fun m!857815 () Bool)

(assert (=> b!923472 m!857815))

(declare-fun m!857817 () Bool)

(assert (=> b!923472 m!857817))

(declare-fun m!857819 () Bool)

(assert (=> b!923472 m!857819))

(declare-fun m!857821 () Bool)

(assert (=> b!923472 m!857821))

(declare-fun m!857823 () Bool)

(assert (=> b!923472 m!857823))

(declare-fun m!857825 () Bool)

(assert (=> b!923472 m!857825))

(declare-fun m!857827 () Bool)

(assert (=> b!923472 m!857827))

(declare-fun m!857829 () Bool)

(assert (=> b!923472 m!857829))

(assert (=> b!923472 m!857825))

(declare-fun m!857831 () Bool)

(assert (=> b!923472 m!857831))

(declare-fun m!857833 () Bool)

(assert (=> b!923474 m!857833))

(declare-fun m!857835 () Bool)

(assert (=> b!923486 m!857835))

(declare-fun m!857837 () Bool)

(assert (=> b!923486 m!857837))

(declare-fun m!857839 () Bool)

(assert (=> b!923483 m!857839))

(declare-fun m!857841 () Bool)

(assert (=> b!923477 m!857841))

(declare-fun m!857843 () Bool)

(assert (=> mapNonEmpty!31263 m!857843))

(declare-fun m!857845 () Bool)

(assert (=> b!923482 m!857845))

(assert (=> b!923482 m!857823))

(declare-fun m!857847 () Bool)

(assert (=> b!923487 m!857847))

(declare-fun m!857849 () Bool)

(assert (=> b!923473 m!857849))

(declare-fun m!857851 () Bool)

(assert (=> start!78978 m!857851))

(declare-fun m!857853 () Bool)

(assert (=> start!78978 m!857853))

(declare-fun m!857855 () Bool)

(assert (=> start!78978 m!857855))

(declare-fun m!857857 () Bool)

(assert (=> b!923479 m!857857))

(declare-fun m!857859 () Bool)

(assert (=> b!923479 m!857859))

(check-sat (not b!923486) (not b!923474) tp_is_empty!19671 b_and!28083 (not b!923477) (not mapNonEmpty!31263) (not b!923473) (not b!923483) (not b!923479) (not b_next!17163) (not b!923472) (not start!78978) (not b!923487) (not b_lambda!13695) (not b!923476) (not b!923482))
(check-sat b_and!28083 (not b_next!17163))

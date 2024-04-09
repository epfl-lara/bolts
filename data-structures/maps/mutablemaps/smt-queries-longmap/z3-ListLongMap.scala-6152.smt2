; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79050 () Bool)

(assert start!79050)

(declare-fun b_free!17235 () Bool)

(declare-fun b_next!17235 () Bool)

(assert (=> start!79050 (= b_free!17235 (not b_next!17235))))

(declare-fun tp!60146 () Bool)

(declare-fun b_and!28225 () Bool)

(assert (=> start!79050 (= tp!60146 b_and!28225)))

(declare-fun b!925551 () Bool)

(declare-fun e!519517 () Bool)

(declare-fun e!519524 () Bool)

(assert (=> b!925551 (= e!519517 e!519524)))

(declare-fun res!623788 () Bool)

(assert (=> b!925551 (=> (not res!623788) (not e!519524))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55468 0))(
  ( (array!55469 (arr!26675 (Array (_ BitVec 32) (_ BitVec 64))) (size!27135 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55468)

(assert (=> b!925551 (= res!623788 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27135 _keys!1487)))))

(declare-datatypes ((Unit!31279 0))(
  ( (Unit!31280) )
))
(declare-fun lt!416625 () Unit!31279)

(declare-fun e!519513 () Unit!31279)

(assert (=> b!925551 (= lt!416625 e!519513)))

(declare-fun c!96534 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925551 (= c!96534 (validKeyInArray!0 k0!1099))))

(declare-fun b!925553 () Bool)

(declare-fun e!519518 () Bool)

(declare-fun arrayContainsKey!0 (array!55468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!925553 (= e!519518 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!925554 () Bool)

(declare-fun e!519522 () Bool)

(assert (=> b!925554 (= e!519522 (not true))))

(declare-fun e!519525 () Bool)

(assert (=> b!925554 e!519525))

(declare-fun res!623781 () Bool)

(assert (=> b!925554 (=> (not res!623781) (not e!519525))))

(declare-datatypes ((V!31289 0))(
  ( (V!31290 (val!9922 Int)) )
))
(declare-datatypes ((tuple2!13044 0))(
  ( (tuple2!13045 (_1!6532 (_ BitVec 64)) (_2!6532 V!31289)) )
))
(declare-datatypes ((List!18878 0))(
  ( (Nil!18875) (Cons!18874 (h!20020 tuple2!13044) (t!26851 List!18878)) )
))
(declare-datatypes ((ListLongMap!11755 0))(
  ( (ListLongMap!11756 (toList!5893 List!18878)) )
))
(declare-fun lt!416610 () ListLongMap!11755)

(declare-fun contains!4916 (ListLongMap!11755 (_ BitVec 64)) Bool)

(assert (=> b!925554 (= res!623781 (contains!4916 lt!416610 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9390 0))(
  ( (ValueCellFull!9390 (v!12440 V!31289)) (EmptyCell!9390) )
))
(declare-datatypes ((array!55470 0))(
  ( (array!55471 (arr!26676 (Array (_ BitVec 32) ValueCell!9390)) (size!27136 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55470)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31289)

(declare-fun minValue!1173 () V!31289)

(declare-fun getCurrentListMap!3110 (array!55468 array!55470 (_ BitVec 32) (_ BitVec 32) V!31289 V!31289 (_ BitVec 32) Int) ListLongMap!11755)

(assert (=> b!925554 (= lt!416610 (getCurrentListMap!3110 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31289)

(declare-fun lt!416611 () Unit!31279)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!76 (array!55468 array!55470 (_ BitVec 32) (_ BitVec 32) V!31289 V!31289 (_ BitVec 64) V!31289 (_ BitVec 32) Int) Unit!31279)

(assert (=> b!925554 (= lt!416611 (lemmaListMapApplyFromThenApplyFromZero!76 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925555 () Bool)

(assert (=> b!925555 (= e!519524 e!519522)))

(declare-fun res!623787 () Bool)

(assert (=> b!925555 (=> (not res!623787) (not e!519522))))

(declare-fun lt!416624 () ListLongMap!11755)

(assert (=> b!925555 (= res!623787 (contains!4916 lt!416624 k0!1099))))

(assert (=> b!925555 (= lt!416624 (getCurrentListMap!3110 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925556 () Bool)

(declare-fun lt!416621 () ListLongMap!11755)

(declare-fun lt!416623 () V!31289)

(declare-fun apply!693 (ListLongMap!11755 (_ BitVec 64)) V!31289)

(assert (=> b!925556 (= (apply!693 lt!416621 k0!1099) lt!416623)))

(declare-fun lt!416620 () Unit!31279)

(declare-fun lt!416612 () ListLongMap!11755)

(declare-fun lt!416614 () V!31289)

(declare-fun lt!416616 () (_ BitVec 64))

(declare-fun addApplyDifferent!380 (ListLongMap!11755 (_ BitVec 64) V!31289 (_ BitVec 64)) Unit!31279)

(assert (=> b!925556 (= lt!416620 (addApplyDifferent!380 lt!416612 lt!416616 lt!416614 k0!1099))))

(assert (=> b!925556 (not (= lt!416616 k0!1099))))

(declare-fun lt!416622 () Unit!31279)

(declare-datatypes ((List!18879 0))(
  ( (Nil!18876) (Cons!18875 (h!20021 (_ BitVec 64)) (t!26852 List!18879)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55468 (_ BitVec 64) (_ BitVec 32) List!18879) Unit!31279)

(assert (=> b!925556 (= lt!416622 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18876))))

(assert (=> b!925556 e!519518))

(declare-fun c!96535 () Bool)

(assert (=> b!925556 (= c!96535 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!416618 () Unit!31279)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!240 (array!55468 array!55470 (_ BitVec 32) (_ BitVec 32) V!31289 V!31289 (_ BitVec 64) (_ BitVec 32) Int) Unit!31279)

(assert (=> b!925556 (= lt!416618 (lemmaListMapContainsThenArrayContainsFrom!240 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55468 (_ BitVec 32) List!18879) Bool)

(assert (=> b!925556 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18876)))

(declare-fun lt!416615 () Unit!31279)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55468 (_ BitVec 32) (_ BitVec 32)) Unit!31279)

(assert (=> b!925556 (= lt!416615 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!925556 (contains!4916 lt!416621 k0!1099)))

(declare-fun lt!416613 () tuple2!13044)

(declare-fun +!2694 (ListLongMap!11755 tuple2!13044) ListLongMap!11755)

(assert (=> b!925556 (= lt!416621 (+!2694 lt!416612 lt!416613))))

(declare-fun lt!416617 () Unit!31279)

(declare-fun addStillContains!456 (ListLongMap!11755 (_ BitVec 64) V!31289 (_ BitVec 64)) Unit!31279)

(assert (=> b!925556 (= lt!416617 (addStillContains!456 lt!416612 lt!416616 lt!416614 k0!1099))))

(assert (=> b!925556 (= (getCurrentListMap!3110 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2694 (getCurrentListMap!3110 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416613))))

(assert (=> b!925556 (= lt!416613 (tuple2!13045 lt!416616 lt!416614))))

(declare-fun get!14051 (ValueCell!9390 V!31289) V!31289)

(declare-fun dynLambda!1533 (Int (_ BitVec 64)) V!31289)

(assert (=> b!925556 (= lt!416614 (get!14051 (select (arr!26676 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1533 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416619 () Unit!31279)

(declare-fun lemmaListMapRecursiveValidKeyArray!129 (array!55468 array!55470 (_ BitVec 32) (_ BitVec 32) V!31289 V!31289 (_ BitVec 32) Int) Unit!31279)

(assert (=> b!925556 (= lt!416619 (lemmaListMapRecursiveValidKeyArray!129 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519523 () Unit!31279)

(assert (=> b!925556 (= e!519523 lt!416620)))

(declare-fun b!925557 () Bool)

(declare-fun e!519521 () Bool)

(declare-fun tp_is_empty!19743 () Bool)

(assert (=> b!925557 (= e!519521 tp_is_empty!19743)))

(declare-fun b!925558 () Bool)

(declare-fun e!519514 () Bool)

(declare-fun e!519520 () Bool)

(assert (=> b!925558 (= e!519514 e!519520)))

(declare-fun res!623782 () Bool)

(assert (=> b!925558 (=> (not res!623782) (not e!519520))))

(assert (=> b!925558 (= res!623782 (contains!4916 lt!416612 k0!1099))))

(assert (=> b!925558 (= lt!416612 (getCurrentListMap!3110 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925559 () Bool)

(declare-fun Unit!31281 () Unit!31279)

(assert (=> b!925559 (= e!519513 Unit!31281)))

(declare-fun b!925552 () Bool)

(assert (=> b!925552 (= e!519520 e!519517)))

(declare-fun res!623783 () Bool)

(assert (=> b!925552 (=> (not res!623783) (not e!519517))))

(assert (=> b!925552 (= res!623783 (and (= lt!416623 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!925552 (= lt!416623 (apply!693 lt!416612 k0!1099))))

(declare-fun res!623784 () Bool)

(assert (=> start!79050 (=> (not res!623784) (not e!519514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79050 (= res!623784 (validMask!0 mask!1881))))

(assert (=> start!79050 e!519514))

(assert (=> start!79050 true))

(assert (=> start!79050 tp_is_empty!19743))

(declare-fun e!519515 () Bool)

(declare-fun array_inv!20768 (array!55470) Bool)

(assert (=> start!79050 (and (array_inv!20768 _values!1231) e!519515)))

(assert (=> start!79050 tp!60146))

(declare-fun array_inv!20769 (array!55468) Bool)

(assert (=> start!79050 (array_inv!20769 _keys!1487)))

(declare-fun b!925560 () Bool)

(declare-fun Unit!31282 () Unit!31279)

(assert (=> b!925560 (= e!519523 Unit!31282)))

(declare-fun b!925561 () Bool)

(declare-fun e!519516 () Bool)

(declare-fun mapRes!31371 () Bool)

(assert (=> b!925561 (= e!519515 (and e!519516 mapRes!31371))))

(declare-fun condMapEmpty!31371 () Bool)

(declare-fun mapDefault!31371 () ValueCell!9390)

(assert (=> b!925561 (= condMapEmpty!31371 (= (arr!26676 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9390)) mapDefault!31371)))))

(declare-fun b!925562 () Bool)

(declare-fun res!623780 () Bool)

(assert (=> b!925562 (=> (not res!623780) (not e!519514))))

(assert (=> b!925562 (= res!623780 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18876))))

(declare-fun b!925563 () Bool)

(assert (=> b!925563 (= e!519525 (= (apply!693 lt!416610 k0!1099) v!791))))

(declare-fun b!925564 () Bool)

(assert (=> b!925564 (= e!519513 e!519523)))

(assert (=> b!925564 (= lt!416616 (select (arr!26675 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96536 () Bool)

(assert (=> b!925564 (= c!96536 (validKeyInArray!0 lt!416616))))

(declare-fun b!925565 () Bool)

(declare-fun res!623779 () Bool)

(assert (=> b!925565 (=> (not res!623779) (not e!519514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55468 (_ BitVec 32)) Bool)

(assert (=> b!925565 (= res!623779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31371 () Bool)

(declare-fun tp!60147 () Bool)

(assert (=> mapNonEmpty!31371 (= mapRes!31371 (and tp!60147 e!519521))))

(declare-fun mapKey!31371 () (_ BitVec 32))

(declare-fun mapValue!31371 () ValueCell!9390)

(declare-fun mapRest!31371 () (Array (_ BitVec 32) ValueCell!9390))

(assert (=> mapNonEmpty!31371 (= (arr!26676 _values!1231) (store mapRest!31371 mapKey!31371 mapValue!31371))))

(declare-fun b!925566 () Bool)

(assert (=> b!925566 (= e!519518 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!925567 () Bool)

(declare-fun res!623786 () Bool)

(assert (=> b!925567 (=> (not res!623786) (not e!519522))))

(assert (=> b!925567 (= res!623786 (= (apply!693 lt!416624 k0!1099) v!791))))

(declare-fun b!925568 () Bool)

(assert (=> b!925568 (= e!519516 tp_is_empty!19743)))

(declare-fun b!925569 () Bool)

(declare-fun res!623789 () Bool)

(assert (=> b!925569 (=> (not res!623789) (not e!519514))))

(assert (=> b!925569 (= res!623789 (and (= (size!27136 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27135 _keys!1487) (size!27136 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!925570 () Bool)

(declare-fun res!623785 () Bool)

(assert (=> b!925570 (=> (not res!623785) (not e!519514))))

(assert (=> b!925570 (= res!623785 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27135 _keys!1487))))))

(declare-fun mapIsEmpty!31371 () Bool)

(assert (=> mapIsEmpty!31371 mapRes!31371))

(assert (= (and start!79050 res!623784) b!925569))

(assert (= (and b!925569 res!623789) b!925565))

(assert (= (and b!925565 res!623779) b!925562))

(assert (= (and b!925562 res!623780) b!925570))

(assert (= (and b!925570 res!623785) b!925558))

(assert (= (and b!925558 res!623782) b!925552))

(assert (= (and b!925552 res!623783) b!925551))

(assert (= (and b!925551 c!96534) b!925564))

(assert (= (and b!925551 (not c!96534)) b!925559))

(assert (= (and b!925564 c!96536) b!925556))

(assert (= (and b!925564 (not c!96536)) b!925560))

(assert (= (and b!925556 c!96535) b!925553))

(assert (= (and b!925556 (not c!96535)) b!925566))

(assert (= (and b!925551 res!623788) b!925555))

(assert (= (and b!925555 res!623787) b!925567))

(assert (= (and b!925567 res!623786) b!925554))

(assert (= (and b!925554 res!623781) b!925563))

(assert (= (and b!925561 condMapEmpty!31371) mapIsEmpty!31371))

(assert (= (and b!925561 (not condMapEmpty!31371)) mapNonEmpty!31371))

(get-info :version)

(assert (= (and mapNonEmpty!31371 ((_ is ValueCellFull!9390) mapValue!31371)) b!925557))

(assert (= (and b!925561 ((_ is ValueCellFull!9390) mapDefault!31371)) b!925568))

(assert (= start!79050 b!925561))

(declare-fun b_lambda!13767 () Bool)

(assert (=> (not b_lambda!13767) (not b!925556)))

(declare-fun t!26850 () Bool)

(declare-fun tb!5823 () Bool)

(assert (=> (and start!79050 (= defaultEntry!1235 defaultEntry!1235) t!26850) tb!5823))

(declare-fun result!11461 () Bool)

(assert (=> tb!5823 (= result!11461 tp_is_empty!19743)))

(assert (=> b!925556 t!26850))

(declare-fun b_and!28227 () Bool)

(assert (= b_and!28225 (and (=> t!26850 result!11461) b_and!28227)))

(declare-fun m!860111 () Bool)

(assert (=> b!925554 m!860111))

(declare-fun m!860113 () Bool)

(assert (=> b!925554 m!860113))

(declare-fun m!860115 () Bool)

(assert (=> b!925554 m!860115))

(declare-fun m!860117 () Bool)

(assert (=> b!925553 m!860117))

(declare-fun m!860119 () Bool)

(assert (=> b!925563 m!860119))

(declare-fun m!860121 () Bool)

(assert (=> mapNonEmpty!31371 m!860121))

(declare-fun m!860123 () Bool)

(assert (=> b!925556 m!860123))

(declare-fun m!860125 () Bool)

(assert (=> b!925556 m!860125))

(declare-fun m!860127 () Bool)

(assert (=> b!925556 m!860127))

(declare-fun m!860129 () Bool)

(assert (=> b!925556 m!860129))

(declare-fun m!860131 () Bool)

(assert (=> b!925556 m!860131))

(declare-fun m!860133 () Bool)

(assert (=> b!925556 m!860133))

(declare-fun m!860135 () Bool)

(assert (=> b!925556 m!860135))

(assert (=> b!925556 m!860129))

(declare-fun m!860137 () Bool)

(assert (=> b!925556 m!860137))

(declare-fun m!860139 () Bool)

(assert (=> b!925556 m!860139))

(declare-fun m!860141 () Bool)

(assert (=> b!925556 m!860141))

(declare-fun m!860143 () Bool)

(assert (=> b!925556 m!860143))

(declare-fun m!860145 () Bool)

(assert (=> b!925556 m!860145))

(assert (=> b!925556 m!860135))

(assert (=> b!925556 m!860131))

(declare-fun m!860147 () Bool)

(assert (=> b!925556 m!860147))

(declare-fun m!860149 () Bool)

(assert (=> b!925556 m!860149))

(declare-fun m!860151 () Bool)

(assert (=> b!925556 m!860151))

(declare-fun m!860153 () Bool)

(assert (=> b!925556 m!860153))

(declare-fun m!860155 () Bool)

(assert (=> b!925552 m!860155))

(declare-fun m!860157 () Bool)

(assert (=> b!925565 m!860157))

(declare-fun m!860159 () Bool)

(assert (=> b!925567 m!860159))

(declare-fun m!860161 () Bool)

(assert (=> b!925555 m!860161))

(assert (=> b!925555 m!860139))

(declare-fun m!860163 () Bool)

(assert (=> b!925551 m!860163))

(declare-fun m!860165 () Bool)

(assert (=> start!79050 m!860165))

(declare-fun m!860167 () Bool)

(assert (=> start!79050 m!860167))

(declare-fun m!860169 () Bool)

(assert (=> start!79050 m!860169))

(declare-fun m!860171 () Bool)

(assert (=> b!925558 m!860171))

(declare-fun m!860173 () Bool)

(assert (=> b!925558 m!860173))

(declare-fun m!860175 () Bool)

(assert (=> b!925564 m!860175))

(declare-fun m!860177 () Bool)

(assert (=> b!925564 m!860177))

(declare-fun m!860179 () Bool)

(assert (=> b!925562 m!860179))

(check-sat (not b!925553) (not b_next!17235) (not b!925551) (not b!925564) (not b!925563) (not mapNonEmpty!31371) (not b!925558) b_and!28227 (not b!925562) (not b!925554) (not start!79050) (not b!925565) (not b_lambda!13767) (not b!925567) (not b!925552) (not b!925555) tp_is_empty!19743 (not b!925556))
(check-sat b_and!28227 (not b_next!17235))

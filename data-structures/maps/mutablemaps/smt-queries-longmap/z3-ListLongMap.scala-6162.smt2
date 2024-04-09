; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79110 () Bool)

(assert start!79110)

(declare-fun b_free!17295 () Bool)

(declare-fun b_next!17295 () Bool)

(assert (=> start!79110 (= b_free!17295 (not b_next!17295))))

(declare-fun tp!60326 () Bool)

(declare-fun b_and!28345 () Bool)

(assert (=> start!79110 (= tp!60326 b_and!28345)))

(declare-fun b!927411 () Bool)

(declare-datatypes ((V!31369 0))(
  ( (V!31370 (val!9952 Int)) )
))
(declare-datatypes ((tuple2!13100 0))(
  ( (tuple2!13101 (_1!6560 (_ BitVec 64)) (_2!6560 V!31369)) )
))
(declare-datatypes ((List!18926 0))(
  ( (Nil!18923) (Cons!18922 (h!20068 tuple2!13100) (t!26959 List!18926)) )
))
(declare-datatypes ((ListLongMap!11811 0))(
  ( (ListLongMap!11812 (toList!5921 List!18926)) )
))
(declare-fun lt!418064 () ListLongMap!11811)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun lt!418050 () V!31369)

(declare-fun apply!717 (ListLongMap!11811 (_ BitVec 64)) V!31369)

(assert (=> b!927411 (= (apply!717 lt!418064 k0!1099) lt!418050)))

(declare-fun lt!418062 () ListLongMap!11811)

(declare-datatypes ((Unit!31372 0))(
  ( (Unit!31373) )
))
(declare-fun lt!418060 () Unit!31372)

(declare-fun lt!418057 () (_ BitVec 64))

(declare-fun lt!418059 () V!31369)

(declare-fun addApplyDifferent!397 (ListLongMap!11811 (_ BitVec 64) V!31369 (_ BitVec 64)) Unit!31372)

(assert (=> b!927411 (= lt!418060 (addApplyDifferent!397 lt!418062 lt!418057 lt!418059 k0!1099))))

(assert (=> b!927411 (not (= lt!418057 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!418056 () Unit!31372)

(declare-datatypes ((array!55584 0))(
  ( (array!55585 (arr!26733 (Array (_ BitVec 32) (_ BitVec 64))) (size!27193 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55584)

(declare-datatypes ((List!18927 0))(
  ( (Nil!18924) (Cons!18923 (h!20069 (_ BitVec 64)) (t!26960 List!18927)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55584 (_ BitVec 64) (_ BitVec 32) List!18927) Unit!31372)

(assert (=> b!927411 (= lt!418056 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18924))))

(declare-fun e!520684 () Bool)

(assert (=> b!927411 e!520684))

(declare-fun c!96804 () Bool)

(assert (=> b!927411 (= c!96804 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9420 0))(
  ( (ValueCellFull!9420 (v!12470 V!31369)) (EmptyCell!9420) )
))
(declare-datatypes ((array!55586 0))(
  ( (array!55587 (arr!26734 (Array (_ BitVec 32) ValueCell!9420)) (size!27194 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55586)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!418055 () Unit!31372)

(declare-fun zeroValue!1173 () V!31369)

(declare-fun minValue!1173 () V!31369)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!257 (array!55584 array!55586 (_ BitVec 32) (_ BitVec 32) V!31369 V!31369 (_ BitVec 64) (_ BitVec 32) Int) Unit!31372)

(assert (=> b!927411 (= lt!418055 (lemmaListMapContainsThenArrayContainsFrom!257 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55584 (_ BitVec 32) List!18927) Bool)

(assert (=> b!927411 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18924)))

(declare-fun lt!418065 () Unit!31372)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55584 (_ BitVec 32) (_ BitVec 32)) Unit!31372)

(assert (=> b!927411 (= lt!418065 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4940 (ListLongMap!11811 (_ BitVec 64)) Bool)

(assert (=> b!927411 (contains!4940 lt!418064 k0!1099)))

(declare-fun lt!418061 () tuple2!13100)

(declare-fun +!2711 (ListLongMap!11811 tuple2!13100) ListLongMap!11811)

(assert (=> b!927411 (= lt!418064 (+!2711 lt!418062 lt!418061))))

(declare-fun lt!418054 () Unit!31372)

(declare-fun addStillContains!473 (ListLongMap!11811 (_ BitVec 64) V!31369 (_ BitVec 64)) Unit!31372)

(assert (=> b!927411 (= lt!418054 (addStillContains!473 lt!418062 lt!418057 lt!418059 k0!1099))))

(declare-fun getCurrentListMap!3134 (array!55584 array!55586 (_ BitVec 32) (_ BitVec 32) V!31369 V!31369 (_ BitVec 32) Int) ListLongMap!11811)

(assert (=> b!927411 (= (getCurrentListMap!3134 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2711 (getCurrentListMap!3134 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418061))))

(assert (=> b!927411 (= lt!418061 (tuple2!13101 lt!418057 lt!418059))))

(declare-fun get!14088 (ValueCell!9420 V!31369) V!31369)

(declare-fun dynLambda!1550 (Int (_ BitVec 64)) V!31369)

(assert (=> b!927411 (= lt!418059 (get!14088 (select (arr!26734 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1550 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418063 () Unit!31372)

(declare-fun lemmaListMapRecursiveValidKeyArray!146 (array!55584 array!55586 (_ BitVec 32) (_ BitVec 32) V!31369 V!31369 (_ BitVec 32) Int) Unit!31372)

(assert (=> b!927411 (= lt!418063 (lemmaListMapRecursiveValidKeyArray!146 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!520687 () Unit!31372)

(assert (=> b!927411 (= e!520687 lt!418060)))

(declare-fun b!927412 () Bool)

(declare-fun e!520692 () Bool)

(declare-fun tp_is_empty!19803 () Bool)

(assert (=> b!927412 (= e!520692 tp_is_empty!19803)))

(declare-fun b!927413 () Bool)

(declare-fun res!624772 () Bool)

(declare-fun e!520688 () Bool)

(assert (=> b!927413 (=> (not res!624772) (not e!520688))))

(assert (=> b!927413 (= res!624772 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27193 _keys!1487))))))

(declare-fun e!520690 () Bool)

(declare-fun v!791 () V!31369)

(declare-fun lt!418051 () ListLongMap!11811)

(declare-fun b!927414 () Bool)

(assert (=> b!927414 (= e!520690 (= (apply!717 lt!418051 k0!1099) v!791))))

(declare-fun b!927415 () Bool)

(declare-fun e!520691 () Bool)

(assert (=> b!927415 (= e!520691 tp_is_empty!19803)))

(declare-fun b!927416 () Bool)

(declare-fun Unit!31374 () Unit!31372)

(assert (=> b!927416 (= e!520687 Unit!31374)))

(declare-fun b!927417 () Bool)

(declare-fun e!520694 () Bool)

(declare-fun e!520695 () Bool)

(assert (=> b!927417 (= e!520694 e!520695)))

(declare-fun res!624775 () Bool)

(assert (=> b!927417 (=> (not res!624775) (not e!520695))))

(declare-fun lt!418058 () ListLongMap!11811)

(assert (=> b!927417 (= res!624775 (contains!4940 lt!418058 k0!1099))))

(assert (=> b!927417 (= lt!418058 (getCurrentListMap!3134 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927418 () Bool)

(declare-fun e!520685 () Bool)

(declare-fun mapRes!31461 () Bool)

(assert (=> b!927418 (= e!520685 (and e!520691 mapRes!31461))))

(declare-fun condMapEmpty!31461 () Bool)

(declare-fun mapDefault!31461 () ValueCell!9420)

(assert (=> b!927418 (= condMapEmpty!31461 (= (arr!26734 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9420)) mapDefault!31461)))))

(declare-fun mapIsEmpty!31461 () Bool)

(assert (=> mapIsEmpty!31461 mapRes!31461))

(declare-fun b!927419 () Bool)

(declare-fun res!624778 () Bool)

(assert (=> b!927419 (=> (not res!624778) (not e!520688))))

(assert (=> b!927419 (= res!624778 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18924))))

(declare-fun b!927420 () Bool)

(declare-fun e!520693 () Unit!31372)

(declare-fun Unit!31375 () Unit!31372)

(assert (=> b!927420 (= e!520693 Unit!31375)))

(declare-fun res!624779 () Bool)

(assert (=> start!79110 (=> (not res!624779) (not e!520688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79110 (= res!624779 (validMask!0 mask!1881))))

(assert (=> start!79110 e!520688))

(assert (=> start!79110 true))

(assert (=> start!79110 tp_is_empty!19803))

(declare-fun array_inv!20804 (array!55586) Bool)

(assert (=> start!79110 (and (array_inv!20804 _values!1231) e!520685)))

(assert (=> start!79110 tp!60326))

(declare-fun array_inv!20805 (array!55584) Bool)

(assert (=> start!79110 (array_inv!20805 _keys!1487)))

(declare-fun b!927421 () Bool)

(declare-fun res!624770 () Bool)

(assert (=> b!927421 (=> (not res!624770) (not e!520688))))

(assert (=> b!927421 (= res!624770 (and (= (size!27194 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27193 _keys!1487) (size!27194 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927422 () Bool)

(declare-fun res!624776 () Bool)

(assert (=> b!927422 (=> (not res!624776) (not e!520688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55584 (_ BitVec 32)) Bool)

(assert (=> b!927422 (= res!624776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!927423 () Bool)

(declare-fun res!624771 () Bool)

(assert (=> b!927423 (=> (not res!624771) (not e!520695))))

(assert (=> b!927423 (= res!624771 (= (apply!717 lt!418058 k0!1099) v!791))))

(declare-fun b!927424 () Bool)

(assert (=> b!927424 (= e!520684 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31461 () Bool)

(declare-fun tp!60327 () Bool)

(assert (=> mapNonEmpty!31461 (= mapRes!31461 (and tp!60327 e!520692))))

(declare-fun mapRest!31461 () (Array (_ BitVec 32) ValueCell!9420))

(declare-fun mapValue!31461 () ValueCell!9420)

(declare-fun mapKey!31461 () (_ BitVec 32))

(assert (=> mapNonEmpty!31461 (= (arr!26734 _values!1231) (store mapRest!31461 mapKey!31461 mapValue!31461))))

(declare-fun b!927425 () Bool)

(declare-fun arrayContainsKey!0 (array!55584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927425 (= e!520684 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!927426 () Bool)

(declare-fun e!520683 () Bool)

(assert (=> b!927426 (= e!520688 e!520683)))

(declare-fun res!624773 () Bool)

(assert (=> b!927426 (=> (not res!624773) (not e!520683))))

(assert (=> b!927426 (= res!624773 (contains!4940 lt!418062 k0!1099))))

(assert (=> b!927426 (= lt!418062 (getCurrentListMap!3134 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927427 () Bool)

(declare-fun e!520686 () Bool)

(assert (=> b!927427 (= e!520686 e!520694)))

(declare-fun res!624769 () Bool)

(assert (=> b!927427 (=> (not res!624769) (not e!520694))))

(assert (=> b!927427 (= res!624769 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27193 _keys!1487)))))

(declare-fun lt!418052 () Unit!31372)

(assert (=> b!927427 (= lt!418052 e!520693)))

(declare-fun c!96805 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927427 (= c!96805 (validKeyInArray!0 k0!1099))))

(declare-fun b!927428 () Bool)

(assert (=> b!927428 (= e!520683 e!520686)))

(declare-fun res!624774 () Bool)

(assert (=> b!927428 (=> (not res!624774) (not e!520686))))

(assert (=> b!927428 (= res!624774 (and (= lt!418050 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!927428 (= lt!418050 (apply!717 lt!418062 k0!1099))))

(declare-fun b!927429 () Bool)

(assert (=> b!927429 (= e!520695 (not true))))

(assert (=> b!927429 e!520690))

(declare-fun res!624777 () Bool)

(assert (=> b!927429 (=> (not res!624777) (not e!520690))))

(assert (=> b!927429 (= res!624777 (contains!4940 lt!418051 k0!1099))))

(assert (=> b!927429 (= lt!418051 (getCurrentListMap!3134 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!418053 () Unit!31372)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!98 (array!55584 array!55586 (_ BitVec 32) (_ BitVec 32) V!31369 V!31369 (_ BitVec 64) V!31369 (_ BitVec 32) Int) Unit!31372)

(assert (=> b!927429 (= lt!418053 (lemmaListMapApplyFromThenApplyFromZero!98 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927430 () Bool)

(assert (=> b!927430 (= e!520693 e!520687)))

(assert (=> b!927430 (= lt!418057 (select (arr!26733 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96806 () Bool)

(assert (=> b!927430 (= c!96806 (validKeyInArray!0 lt!418057))))

(assert (= (and start!79110 res!624779) b!927421))

(assert (= (and b!927421 res!624770) b!927422))

(assert (= (and b!927422 res!624776) b!927419))

(assert (= (and b!927419 res!624778) b!927413))

(assert (= (and b!927413 res!624772) b!927426))

(assert (= (and b!927426 res!624773) b!927428))

(assert (= (and b!927428 res!624774) b!927427))

(assert (= (and b!927427 c!96805) b!927430))

(assert (= (and b!927427 (not c!96805)) b!927420))

(assert (= (and b!927430 c!96806) b!927411))

(assert (= (and b!927430 (not c!96806)) b!927416))

(assert (= (and b!927411 c!96804) b!927425))

(assert (= (and b!927411 (not c!96804)) b!927424))

(assert (= (and b!927427 res!624769) b!927417))

(assert (= (and b!927417 res!624775) b!927423))

(assert (= (and b!927423 res!624771) b!927429))

(assert (= (and b!927429 res!624777) b!927414))

(assert (= (and b!927418 condMapEmpty!31461) mapIsEmpty!31461))

(assert (= (and b!927418 (not condMapEmpty!31461)) mapNonEmpty!31461))

(get-info :version)

(assert (= (and mapNonEmpty!31461 ((_ is ValueCellFull!9420) mapValue!31461)) b!927412))

(assert (= (and b!927418 ((_ is ValueCellFull!9420) mapDefault!31461)) b!927415))

(assert (= start!79110 b!927418))

(declare-fun b_lambda!13827 () Bool)

(assert (=> (not b_lambda!13827) (not b!927411)))

(declare-fun t!26958 () Bool)

(declare-fun tb!5883 () Bool)

(assert (=> (and start!79110 (= defaultEntry!1235 defaultEntry!1235) t!26958) tb!5883))

(declare-fun result!11581 () Bool)

(assert (=> tb!5883 (= result!11581 tp_is_empty!19803)))

(assert (=> b!927411 t!26958))

(declare-fun b_and!28347 () Bool)

(assert (= b_and!28345 (and (=> t!26958 result!11581) b_and!28347)))

(declare-fun m!862211 () Bool)

(assert (=> b!927429 m!862211))

(declare-fun m!862213 () Bool)

(assert (=> b!927429 m!862213))

(declare-fun m!862215 () Bool)

(assert (=> b!927429 m!862215))

(declare-fun m!862217 () Bool)

(assert (=> b!927411 m!862217))

(declare-fun m!862219 () Bool)

(assert (=> b!927411 m!862219))

(declare-fun m!862221 () Bool)

(assert (=> b!927411 m!862221))

(declare-fun m!862223 () Bool)

(assert (=> b!927411 m!862223))

(declare-fun m!862225 () Bool)

(assert (=> b!927411 m!862225))

(declare-fun m!862227 () Bool)

(assert (=> b!927411 m!862227))

(declare-fun m!862229 () Bool)

(assert (=> b!927411 m!862229))

(declare-fun m!862231 () Bool)

(assert (=> b!927411 m!862231))

(declare-fun m!862233 () Bool)

(assert (=> b!927411 m!862233))

(declare-fun m!862235 () Bool)

(assert (=> b!927411 m!862235))

(declare-fun m!862237 () Bool)

(assert (=> b!927411 m!862237))

(declare-fun m!862239 () Bool)

(assert (=> b!927411 m!862239))

(declare-fun m!862241 () Bool)

(assert (=> b!927411 m!862241))

(declare-fun m!862243 () Bool)

(assert (=> b!927411 m!862243))

(assert (=> b!927411 m!862221))

(assert (=> b!927411 m!862223))

(declare-fun m!862245 () Bool)

(assert (=> b!927411 m!862245))

(assert (=> b!927411 m!862217))

(declare-fun m!862247 () Bool)

(assert (=> b!927411 m!862247))

(declare-fun m!862249 () Bool)

(assert (=> b!927419 m!862249))

(declare-fun m!862251 () Bool)

(assert (=> b!927414 m!862251))

(declare-fun m!862253 () Bool)

(assert (=> b!927427 m!862253))

(declare-fun m!862255 () Bool)

(assert (=> b!927430 m!862255))

(declare-fun m!862257 () Bool)

(assert (=> b!927430 m!862257))

(declare-fun m!862259 () Bool)

(assert (=> b!927422 m!862259))

(declare-fun m!862261 () Bool)

(assert (=> b!927425 m!862261))

(declare-fun m!862263 () Bool)

(assert (=> b!927423 m!862263))

(declare-fun m!862265 () Bool)

(assert (=> b!927417 m!862265))

(assert (=> b!927417 m!862227))

(declare-fun m!862267 () Bool)

(assert (=> b!927426 m!862267))

(declare-fun m!862269 () Bool)

(assert (=> b!927426 m!862269))

(declare-fun m!862271 () Bool)

(assert (=> mapNonEmpty!31461 m!862271))

(declare-fun m!862273 () Bool)

(assert (=> b!927428 m!862273))

(declare-fun m!862275 () Bool)

(assert (=> start!79110 m!862275))

(declare-fun m!862277 () Bool)

(assert (=> start!79110 m!862277))

(declare-fun m!862279 () Bool)

(assert (=> start!79110 m!862279))

(check-sat (not b!927414) (not b_next!17295) (not b!927423) (not b!927411) (not start!79110) (not b!927429) b_and!28347 (not mapNonEmpty!31461) (not b!927425) (not b!927422) (not b_lambda!13827) (not b!927417) (not b!927428) (not b!927427) tp_is_empty!19803 (not b!927419) (not b!927426) (not b!927430))
(check-sat b_and!28347 (not b_next!17295))

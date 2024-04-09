; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79730 () Bool)

(assert start!79730)

(declare-fun b_free!17751 () Bool)

(declare-fun b_next!17751 () Bool)

(assert (=> start!79730 (= b_free!17751 (not b_next!17751))))

(declare-fun tp!61709 () Bool)

(declare-fun b_and!29111 () Bool)

(assert (=> start!79730 (= tp!61709 b_and!29111)))

(declare-fun b!937593 () Bool)

(declare-fun e!526548 () Bool)

(declare-fun e!526540 () Bool)

(declare-fun mapRes!32160 () Bool)

(assert (=> b!937593 (= e!526548 (and e!526540 mapRes!32160))))

(declare-fun condMapEmpty!32160 () Bool)

(declare-datatypes ((V!31977 0))(
  ( (V!31978 (val!10180 Int)) )
))
(declare-datatypes ((ValueCell!9648 0))(
  ( (ValueCellFull!9648 (v!12705 V!31977)) (EmptyCell!9648) )
))
(declare-datatypes ((array!56482 0))(
  ( (array!56483 (arr!27177 (Array (_ BitVec 32) ValueCell!9648)) (size!27637 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56482)

(declare-fun mapDefault!32160 () ValueCell!9648)

(assert (=> b!937593 (= condMapEmpty!32160 (= (arr!27177 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9648)) mapDefault!32160)))))

(declare-fun b!937594 () Bool)

(declare-fun e!526547 () Bool)

(declare-fun tp_is_empty!20259 () Bool)

(assert (=> b!937594 (= e!526547 tp_is_empty!20259)))

(declare-fun b!937595 () Bool)

(declare-fun e!526550 () Bool)

(declare-fun e!526545 () Bool)

(assert (=> b!937595 (= e!526550 e!526545)))

(declare-fun res!631097 () Bool)

(assert (=> b!937595 (=> (not res!631097) (not e!526545))))

(declare-datatypes ((tuple2!13484 0))(
  ( (tuple2!13485 (_1!6752 (_ BitVec 64)) (_2!6752 V!31977)) )
))
(declare-datatypes ((List!19291 0))(
  ( (Nil!19288) (Cons!19287 (h!20433 tuple2!13484) (t!27594 List!19291)) )
))
(declare-datatypes ((ListLongMap!12195 0))(
  ( (ListLongMap!12196 (toList!6113 List!19291)) )
))
(declare-fun lt!423184 () ListLongMap!12195)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5123 (ListLongMap!12195 (_ BitVec 64)) Bool)

(assert (=> b!937595 (= res!631097 (contains!5123 lt!423184 k0!1099))))

(declare-datatypes ((array!56484 0))(
  ( (array!56485 (arr!27178 (Array (_ BitVec 32) (_ BitVec 64))) (size!27638 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56484)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31977)

(declare-fun minValue!1173 () V!31977)

(declare-fun getCurrentListMap!3302 (array!56484 array!56482 (_ BitVec 32) (_ BitVec 32) V!31977 V!31977 (_ BitVec 32) Int) ListLongMap!12195)

(assert (=> b!937595 (= lt!423184 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!32160 () Bool)

(declare-fun tp!61710 () Bool)

(assert (=> mapNonEmpty!32160 (= mapRes!32160 (and tp!61710 e!526547))))

(declare-fun mapRest!32160 () (Array (_ BitVec 32) ValueCell!9648))

(declare-fun mapKey!32160 () (_ BitVec 32))

(declare-fun mapValue!32160 () ValueCell!9648)

(assert (=> mapNonEmpty!32160 (= (arr!27177 _values!1231) (store mapRest!32160 mapKey!32160 mapValue!32160))))

(declare-fun res!631099 () Bool)

(assert (=> start!79730 (=> (not res!631099) (not e!526550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79730 (= res!631099 (validMask!0 mask!1881))))

(assert (=> start!79730 e!526550))

(assert (=> start!79730 true))

(assert (=> start!79730 tp_is_empty!20259))

(declare-fun array_inv!21098 (array!56482) Bool)

(assert (=> start!79730 (and (array_inv!21098 _values!1231) e!526548)))

(assert (=> start!79730 tp!61709))

(declare-fun array_inv!21099 (array!56484) Bool)

(assert (=> start!79730 (array_inv!21099 _keys!1487)))

(declare-fun b!937596 () Bool)

(declare-fun res!631102 () Bool)

(assert (=> b!937596 (=> (not res!631102) (not e!526550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56484 (_ BitVec 32)) Bool)

(assert (=> b!937596 (= res!631102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!937597 () Bool)

(declare-datatypes ((Unit!31676 0))(
  ( (Unit!31677) )
))
(declare-fun e!526549 () Unit!31676)

(declare-fun Unit!31678 () Unit!31676)

(assert (=> b!937597 (= e!526549 Unit!31678)))

(declare-fun b!937598 () Bool)

(declare-fun res!631100 () Bool)

(assert (=> b!937598 (=> (not res!631100) (not e!526550))))

(declare-datatypes ((List!19292 0))(
  ( (Nil!19289) (Cons!19288 (h!20434 (_ BitVec 64)) (t!27595 List!19292)) )
))
(declare-fun arrayNoDuplicates!0 (array!56484 (_ BitVec 32) List!19292) Bool)

(assert (=> b!937598 (= res!631100 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19289))))

(declare-fun b!937599 () Bool)

(declare-fun e!526544 () Unit!31676)

(assert (=> b!937599 (= e!526544 e!526549)))

(declare-fun lt!423187 () (_ BitVec 64))

(assert (=> b!937599 (= lt!423187 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97548 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937599 (= c!97548 (validKeyInArray!0 lt!423187))))

(declare-fun mapIsEmpty!32160 () Bool)

(assert (=> mapIsEmpty!32160 mapRes!32160))

(declare-fun b!937600 () Bool)

(declare-fun lt!423181 () ListLongMap!12195)

(declare-fun lt!423191 () V!31977)

(declare-fun apply!891 (ListLongMap!12195 (_ BitVec 64)) V!31977)

(assert (=> b!937600 (= (apply!891 lt!423181 k0!1099) lt!423191)))

(declare-fun lt!423185 () Unit!31676)

(declare-fun lt!423193 () V!31977)

(declare-fun addApplyDifferent!438 (ListLongMap!12195 (_ BitVec 64) V!31977 (_ BitVec 64)) Unit!31676)

(assert (=> b!937600 (= lt!423185 (addApplyDifferent!438 lt!423184 lt!423187 lt!423193 k0!1099))))

(assert (=> b!937600 (not (= lt!423187 k0!1099))))

(declare-fun lt!423190 () Unit!31676)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56484 (_ BitVec 64) (_ BitVec 32) List!19292) Unit!31676)

(assert (=> b!937600 (= lt!423190 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19289))))

(declare-fun e!526546 () Bool)

(assert (=> b!937600 e!526546))

(declare-fun c!97550 () Bool)

(assert (=> b!937600 (= c!97550 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!423183 () Unit!31676)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!321 (array!56484 array!56482 (_ BitVec 32) (_ BitVec 32) V!31977 V!31977 (_ BitVec 64) (_ BitVec 32) Int) Unit!31676)

(assert (=> b!937600 (= lt!423183 (lemmaListMapContainsThenArrayContainsFrom!321 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!937600 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19289)))

(declare-fun lt!423189 () Unit!31676)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56484 (_ BitVec 32) (_ BitVec 32)) Unit!31676)

(assert (=> b!937600 (= lt!423189 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!937600 (contains!5123 lt!423181 k0!1099)))

(declare-fun lt!423188 () tuple2!13484)

(declare-fun +!2808 (ListLongMap!12195 tuple2!13484) ListLongMap!12195)

(assert (=> b!937600 (= lt!423181 (+!2808 lt!423184 lt!423188))))

(declare-fun lt!423192 () Unit!31676)

(declare-fun addStillContains!564 (ListLongMap!12195 (_ BitVec 64) V!31977 (_ BitVec 64)) Unit!31676)

(assert (=> b!937600 (= lt!423192 (addStillContains!564 lt!423184 lt!423187 lt!423193 k0!1099))))

(assert (=> b!937600 (= (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2808 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423188))))

(assert (=> b!937600 (= lt!423188 (tuple2!13485 lt!423187 lt!423193))))

(declare-fun get!14352 (ValueCell!9648 V!31977) V!31977)

(declare-fun dynLambda!1647 (Int (_ BitVec 64)) V!31977)

(assert (=> b!937600 (= lt!423193 (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!423186 () Unit!31676)

(declare-fun lemmaListMapRecursiveValidKeyArray!243 (array!56484 array!56482 (_ BitVec 32) (_ BitVec 32) V!31977 V!31977 (_ BitVec 32) Int) Unit!31676)

(assert (=> b!937600 (= lt!423186 (lemmaListMapRecursiveValidKeyArray!243 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!937600 (= e!526549 lt!423185)))

(declare-fun b!937601 () Bool)

(declare-fun e!526543 () Bool)

(declare-fun e!526542 () Bool)

(assert (=> b!937601 (= e!526543 e!526542)))

(declare-fun res!631096 () Bool)

(assert (=> b!937601 (=> (not res!631096) (not e!526542))))

(assert (=> b!937601 (= res!631096 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun lt!423182 () Unit!31676)

(assert (=> b!937601 (= lt!423182 e!526544)))

(declare-fun c!97549 () Bool)

(assert (=> b!937601 (= c!97549 (validKeyInArray!0 k0!1099))))

(declare-fun b!937602 () Bool)

(assert (=> b!937602 (= e!526542 (not (contains!5123 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) k0!1099)))))

(declare-fun b!937603 () Bool)

(declare-fun res!631098 () Bool)

(assert (=> b!937603 (=> (not res!631098) (not e!526550))))

(assert (=> b!937603 (= res!631098 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27638 _keys!1487))))))

(declare-fun b!937604 () Bool)

(declare-fun arrayContainsKey!0 (array!56484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!937604 (= e!526546 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!937605 () Bool)

(assert (=> b!937605 (= e!526540 tp_is_empty!20259)))

(declare-fun b!937606 () Bool)

(assert (=> b!937606 (= e!526546 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!937607 () Bool)

(declare-fun res!631103 () Bool)

(assert (=> b!937607 (=> (not res!631103) (not e!526550))))

(assert (=> b!937607 (= res!631103 (and (= (size!27637 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27638 _keys!1487) (size!27637 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!937608 () Bool)

(assert (=> b!937608 (= e!526545 e!526543)))

(declare-fun res!631101 () Bool)

(assert (=> b!937608 (=> (not res!631101) (not e!526543))))

(declare-fun v!791 () V!31977)

(assert (=> b!937608 (= res!631101 (and (= lt!423191 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!937608 (= lt!423191 (apply!891 lt!423184 k0!1099))))

(declare-fun b!937609 () Bool)

(declare-fun Unit!31679 () Unit!31676)

(assert (=> b!937609 (= e!526544 Unit!31679)))

(assert (= (and start!79730 res!631099) b!937607))

(assert (= (and b!937607 res!631103) b!937596))

(assert (= (and b!937596 res!631102) b!937598))

(assert (= (and b!937598 res!631100) b!937603))

(assert (= (and b!937603 res!631098) b!937595))

(assert (= (and b!937595 res!631097) b!937608))

(assert (= (and b!937608 res!631101) b!937601))

(assert (= (and b!937601 c!97549) b!937599))

(assert (= (and b!937601 (not c!97549)) b!937609))

(assert (= (and b!937599 c!97548) b!937600))

(assert (= (and b!937599 (not c!97548)) b!937597))

(assert (= (and b!937600 c!97550) b!937604))

(assert (= (and b!937600 (not c!97550)) b!937606))

(assert (= (and b!937601 res!631096) b!937602))

(assert (= (and b!937593 condMapEmpty!32160) mapIsEmpty!32160))

(assert (= (and b!937593 (not condMapEmpty!32160)) mapNonEmpty!32160))

(get-info :version)

(assert (= (and mapNonEmpty!32160 ((_ is ValueCellFull!9648) mapValue!32160)) b!937594))

(assert (= (and b!937593 ((_ is ValueCellFull!9648) mapDefault!32160)) b!937605))

(assert (= start!79730 b!937593))

(declare-fun b_lambda!14187 () Bool)

(assert (=> (not b_lambda!14187) (not b!937600)))

(declare-fun t!27593 () Bool)

(declare-fun tb!6153 () Bool)

(assert (=> (and start!79730 (= defaultEntry!1235 defaultEntry!1235) t!27593) tb!6153))

(declare-fun result!12131 () Bool)

(assert (=> tb!6153 (= result!12131 tp_is_empty!20259)))

(assert (=> b!937600 t!27593))

(declare-fun b_and!29113 () Bool)

(assert (= b_and!29111 (and (=> t!27593 result!12131) b_and!29113)))

(declare-fun m!872507 () Bool)

(assert (=> start!79730 m!872507))

(declare-fun m!872509 () Bool)

(assert (=> start!79730 m!872509))

(declare-fun m!872511 () Bool)

(assert (=> start!79730 m!872511))

(declare-fun m!872513 () Bool)

(assert (=> b!937601 m!872513))

(declare-fun m!872515 () Bool)

(assert (=> b!937608 m!872515))

(declare-fun m!872517 () Bool)

(assert (=> b!937596 m!872517))

(declare-fun m!872519 () Bool)

(assert (=> b!937600 m!872519))

(declare-fun m!872521 () Bool)

(assert (=> b!937600 m!872521))

(declare-fun m!872523 () Bool)

(assert (=> b!937600 m!872523))

(declare-fun m!872525 () Bool)

(assert (=> b!937600 m!872525))

(declare-fun m!872527 () Bool)

(assert (=> b!937600 m!872527))

(assert (=> b!937600 m!872521))

(declare-fun m!872529 () Bool)

(assert (=> b!937600 m!872529))

(declare-fun m!872531 () Bool)

(assert (=> b!937600 m!872531))

(declare-fun m!872533 () Bool)

(assert (=> b!937600 m!872533))

(declare-fun m!872535 () Bool)

(assert (=> b!937600 m!872535))

(declare-fun m!872537 () Bool)

(assert (=> b!937600 m!872537))

(assert (=> b!937600 m!872527))

(declare-fun m!872539 () Bool)

(assert (=> b!937600 m!872539))

(declare-fun m!872541 () Bool)

(assert (=> b!937600 m!872541))

(declare-fun m!872543 () Bool)

(assert (=> b!937600 m!872543))

(declare-fun m!872545 () Bool)

(assert (=> b!937600 m!872545))

(declare-fun m!872547 () Bool)

(assert (=> b!937600 m!872547))

(assert (=> b!937600 m!872541))

(declare-fun m!872549 () Bool)

(assert (=> b!937600 m!872549))

(declare-fun m!872551 () Bool)

(assert (=> b!937604 m!872551))

(declare-fun m!872553 () Bool)

(assert (=> b!937595 m!872553))

(declare-fun m!872555 () Bool)

(assert (=> b!937595 m!872555))

(declare-fun m!872557 () Bool)

(assert (=> b!937598 m!872557))

(declare-fun m!872559 () Bool)

(assert (=> mapNonEmpty!32160 m!872559))

(declare-fun m!872561 () Bool)

(assert (=> b!937599 m!872561))

(declare-fun m!872563 () Bool)

(assert (=> b!937599 m!872563))

(assert (=> b!937602 m!872539))

(assert (=> b!937602 m!872539))

(declare-fun m!872565 () Bool)

(assert (=> b!937602 m!872565))

(check-sat (not b!937596) (not b_next!17751) (not b_lambda!14187) (not b!937602) (not mapNonEmpty!32160) b_and!29113 (not b!937600) tp_is_empty!20259 (not b!937595) (not b!937604) (not b!937599) (not b!937601) (not start!79730) (not b!937598) (not b!937608))
(check-sat b_and!29113 (not b_next!17751))
(get-model)

(declare-fun b_lambda!14191 () Bool)

(assert (= b_lambda!14187 (or (and start!79730 b_free!17751) b_lambda!14191)))

(check-sat (not b_next!17751) (not b!937602) (not mapNonEmpty!32160) b_and!29113 (not b!937600) tp_is_empty!20259 (not b!937595) (not b!937604) (not b!937599) (not b_lambda!14191) (not b!937596) (not b!937601) (not start!79730) (not b!937598) (not b!937608))
(check-sat b_and!29113 (not b_next!17751))
(get-model)

(declare-fun b!937707 () Bool)

(declare-fun e!526611 () ListLongMap!12195)

(declare-fun call!40776 () ListLongMap!12195)

(assert (=> b!937707 (= e!526611 call!40776)))

(declare-fun b!937708 () Bool)

(declare-fun e!526610 () Bool)

(assert (=> b!937708 (= e!526610 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!937709 () Bool)

(declare-fun res!631149 () Bool)

(declare-fun e!526613 () Bool)

(assert (=> b!937709 (=> (not res!631149) (not e!526613))))

(declare-fun e!526614 () Bool)

(assert (=> b!937709 (= res!631149 e!526614)))

(declare-fun c!97572 () Bool)

(assert (=> b!937709 (= c!97572 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!937710 () Bool)

(declare-fun e!526618 () ListLongMap!12195)

(declare-fun call!40779 () ListLongMap!12195)

(assert (=> b!937710 (= e!526618 call!40779)))

(declare-fun b!937711 () Bool)

(declare-fun e!526621 () Bool)

(declare-fun e!526616 () Bool)

(assert (=> b!937711 (= e!526621 e!526616)))

(declare-fun res!631152 () Bool)

(declare-fun call!40775 () Bool)

(assert (=> b!937711 (= res!631152 call!40775)))

(assert (=> b!937711 (=> (not res!631152) (not e!526616))))

(declare-fun b!937712 () Bool)

(declare-fun res!631151 () Bool)

(assert (=> b!937712 (=> (not res!631151) (not e!526613))))

(declare-fun e!526620 () Bool)

(assert (=> b!937712 (= res!631151 e!526620)))

(declare-fun res!631154 () Bool)

(assert (=> b!937712 (=> res!631154 e!526620)))

(declare-fun e!526619 () Bool)

(assert (=> b!937712 (= res!631154 (not e!526619))))

(declare-fun res!631147 () Bool)

(assert (=> b!937712 (=> (not res!631147) (not e!526619))))

(assert (=> b!937712 (= res!631147 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun b!937713 () Bool)

(assert (=> b!937713 (= e!526619 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!937714 () Bool)

(declare-fun call!40778 () Bool)

(assert (=> b!937714 (= e!526614 (not call!40778))))

(declare-fun b!937715 () Bool)

(declare-fun c!97573 () Bool)

(assert (=> b!937715 (= c!97573 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!937715 (= e!526618 e!526611)))

(declare-fun b!937716 () Bool)

(declare-fun e!526615 () ListLongMap!12195)

(declare-fun call!40774 () ListLongMap!12195)

(assert (=> b!937716 (= e!526615 (+!2808 call!40774 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun bm!40770 () Bool)

(declare-fun call!40777 () ListLongMap!12195)

(declare-fun call!40773 () ListLongMap!12195)

(declare-fun c!97575 () Bool)

(declare-fun c!97577 () Bool)

(assert (=> bm!40770 (= call!40774 (+!2808 (ite c!97575 call!40777 (ite c!97577 call!40773 call!40776)) (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun bm!40771 () Bool)

(assert (=> bm!40771 (= call!40779 call!40774)))

(declare-fun b!937717 () Bool)

(declare-fun e!526617 () Bool)

(assert (=> b!937717 (= e!526620 e!526617)))

(declare-fun res!631148 () Bool)

(assert (=> b!937717 (=> (not res!631148) (not e!526617))))

(declare-fun lt!423279 () ListLongMap!12195)

(assert (=> b!937717 (= res!631148 (contains!5123 lt!423279 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!937717 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun bm!40772 () Bool)

(assert (=> bm!40772 (= call!40776 call!40773)))

(declare-fun bm!40773 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3319 (array!56484 array!56482 (_ BitVec 32) (_ BitVec 32) V!31977 V!31977 (_ BitVec 32) Int) ListLongMap!12195)

(assert (=> bm!40773 (= call!40777 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!937718 () Bool)

(assert (=> b!937718 (= e!526621 (not call!40775))))

(declare-fun bm!40774 () Bool)

(assert (=> bm!40774 (= call!40775 (contains!5123 lt!423279 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!937719 () Bool)

(declare-fun e!526612 () Unit!31676)

(declare-fun lt!423286 () Unit!31676)

(assert (=> b!937719 (= e!526612 lt!423286)))

(declare-fun lt!423280 () ListLongMap!12195)

(assert (=> b!937719 (= lt!423280 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423297 () (_ BitVec 64))

(assert (=> b!937719 (= lt!423297 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423298 () (_ BitVec 64))

(assert (=> b!937719 (= lt!423298 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!423285 () Unit!31676)

(assert (=> b!937719 (= lt!423285 (addStillContains!564 lt!423280 lt!423297 zeroValue!1173 lt!423298))))

(assert (=> b!937719 (contains!5123 (+!2808 lt!423280 (tuple2!13485 lt!423297 zeroValue!1173)) lt!423298)))

(declare-fun lt!423296 () Unit!31676)

(assert (=> b!937719 (= lt!423296 lt!423285)))

(declare-fun lt!423292 () ListLongMap!12195)

(assert (=> b!937719 (= lt!423292 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423284 () (_ BitVec 64))

(assert (=> b!937719 (= lt!423284 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423283 () (_ BitVec 64))

(assert (=> b!937719 (= lt!423283 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!423288 () Unit!31676)

(assert (=> b!937719 (= lt!423288 (addApplyDifferent!438 lt!423292 lt!423284 minValue!1173 lt!423283))))

(assert (=> b!937719 (= (apply!891 (+!2808 lt!423292 (tuple2!13485 lt!423284 minValue!1173)) lt!423283) (apply!891 lt!423292 lt!423283))))

(declare-fun lt!423287 () Unit!31676)

(assert (=> b!937719 (= lt!423287 lt!423288)))

(declare-fun lt!423295 () ListLongMap!12195)

(assert (=> b!937719 (= lt!423295 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423289 () (_ BitVec 64))

(assert (=> b!937719 (= lt!423289 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423277 () (_ BitVec 64))

(assert (=> b!937719 (= lt!423277 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!423293 () Unit!31676)

(assert (=> b!937719 (= lt!423293 (addApplyDifferent!438 lt!423295 lt!423289 zeroValue!1173 lt!423277))))

(assert (=> b!937719 (= (apply!891 (+!2808 lt!423295 (tuple2!13485 lt!423289 zeroValue!1173)) lt!423277) (apply!891 lt!423295 lt!423277))))

(declare-fun lt!423281 () Unit!31676)

(assert (=> b!937719 (= lt!423281 lt!423293)))

(declare-fun lt!423278 () ListLongMap!12195)

(assert (=> b!937719 (= lt!423278 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423282 () (_ BitVec 64))

(assert (=> b!937719 (= lt!423282 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423290 () (_ BitVec 64))

(assert (=> b!937719 (= lt!423290 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!937719 (= lt!423286 (addApplyDifferent!438 lt!423278 lt!423282 minValue!1173 lt!423290))))

(assert (=> b!937719 (= (apply!891 (+!2808 lt!423278 (tuple2!13485 lt!423282 minValue!1173)) lt!423290) (apply!891 lt!423278 lt!423290))))

(declare-fun b!937720 () Bool)

(declare-fun Unit!31682 () Unit!31676)

(assert (=> b!937720 (= e!526612 Unit!31682)))

(declare-fun b!937721 () Bool)

(assert (=> b!937721 (= e!526615 e!526618)))

(assert (=> b!937721 (= c!97577 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!937722 () Bool)

(assert (=> b!937722 (= e!526616 (= (apply!891 lt!423279 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun bm!40775 () Bool)

(assert (=> bm!40775 (= call!40778 (contains!5123 lt!423279 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!937723 () Bool)

(assert (=> b!937723 (= e!526617 (= (apply!891 lt!423279 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!937723 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27637 _values!1231)))))

(assert (=> b!937723 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun b!937724 () Bool)

(assert (=> b!937724 (= e!526611 call!40779)))

(declare-fun b!937725 () Bool)

(declare-fun e!526622 () Bool)

(assert (=> b!937725 (= e!526614 e!526622)))

(declare-fun res!631150 () Bool)

(assert (=> b!937725 (= res!631150 call!40778)))

(assert (=> b!937725 (=> (not res!631150) (not e!526622))))

(declare-fun bm!40776 () Bool)

(assert (=> bm!40776 (= call!40773 call!40777)))

(declare-fun d!113249 () Bool)

(assert (=> d!113249 e!526613))

(declare-fun res!631146 () Bool)

(assert (=> d!113249 (=> (not res!631146) (not e!526613))))

(assert (=> d!113249 (= res!631146 (or (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)) (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))))

(declare-fun lt!423291 () ListLongMap!12195)

(assert (=> d!113249 (= lt!423279 lt!423291)))

(declare-fun lt!423294 () Unit!31676)

(assert (=> d!113249 (= lt!423294 e!526612)))

(declare-fun c!97576 () Bool)

(assert (=> d!113249 (= c!97576 e!526610)))

(declare-fun res!631153 () Bool)

(assert (=> d!113249 (=> (not res!631153) (not e!526610))))

(assert (=> d!113249 (= res!631153 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(assert (=> d!113249 (= lt!423291 e!526615)))

(assert (=> d!113249 (= c!97575 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113249 (validMask!0 mask!1881)))

(assert (=> d!113249 (= (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!423279)))

(declare-fun b!937726 () Bool)

(assert (=> b!937726 (= e!526622 (= (apply!891 lt!423279 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!937727 () Bool)

(assert (=> b!937727 (= e!526613 e!526621)))

(declare-fun c!97574 () Bool)

(assert (=> b!937727 (= c!97574 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!113249 c!97575) b!937716))

(assert (= (and d!113249 (not c!97575)) b!937721))

(assert (= (and b!937721 c!97577) b!937710))

(assert (= (and b!937721 (not c!97577)) b!937715))

(assert (= (and b!937715 c!97573) b!937724))

(assert (= (and b!937715 (not c!97573)) b!937707))

(assert (= (or b!937724 b!937707) bm!40772))

(assert (= (or b!937710 bm!40772) bm!40776))

(assert (= (or b!937710 b!937724) bm!40771))

(assert (= (or b!937716 bm!40776) bm!40773))

(assert (= (or b!937716 bm!40771) bm!40770))

(assert (= (and d!113249 res!631153) b!937708))

(assert (= (and d!113249 c!97576) b!937719))

(assert (= (and d!113249 (not c!97576)) b!937720))

(assert (= (and d!113249 res!631146) b!937712))

(assert (= (and b!937712 res!631147) b!937713))

(assert (= (and b!937712 (not res!631154)) b!937717))

(assert (= (and b!937717 res!631148) b!937723))

(assert (= (and b!937712 res!631151) b!937709))

(assert (= (and b!937709 c!97572) b!937725))

(assert (= (and b!937709 (not c!97572)) b!937714))

(assert (= (and b!937725 res!631150) b!937726))

(assert (= (or b!937725 b!937714) bm!40775))

(assert (= (and b!937709 res!631149) b!937727))

(assert (= (and b!937727 c!97574) b!937711))

(assert (= (and b!937727 (not c!97574)) b!937718))

(assert (= (and b!937711 res!631152) b!937722))

(assert (= (or b!937711 b!937718) bm!40774))

(declare-fun b_lambda!14193 () Bool)

(assert (=> (not b_lambda!14193) (not b!937723)))

(assert (=> b!937723 t!27593))

(declare-fun b_and!29119 () Bool)

(assert (= b_and!29113 (and (=> t!27593 result!12131) b_and!29119)))

(assert (=> b!937723 m!872521))

(assert (=> b!937723 m!872561))

(assert (=> b!937723 m!872561))

(declare-fun m!872627 () Bool)

(assert (=> b!937723 m!872627))

(assert (=> b!937723 m!872527))

(assert (=> b!937723 m!872521))

(assert (=> b!937723 m!872529))

(assert (=> b!937723 m!872527))

(declare-fun m!872629 () Bool)

(assert (=> bm!40775 m!872629))

(assert (=> b!937708 m!872561))

(assert (=> b!937708 m!872561))

(declare-fun m!872631 () Bool)

(assert (=> b!937708 m!872631))

(declare-fun m!872633 () Bool)

(assert (=> b!937719 m!872633))

(declare-fun m!872635 () Bool)

(assert (=> b!937719 m!872635))

(declare-fun m!872637 () Bool)

(assert (=> b!937719 m!872637))

(declare-fun m!872639 () Bool)

(assert (=> b!937719 m!872639))

(declare-fun m!872641 () Bool)

(assert (=> b!937719 m!872641))

(declare-fun m!872643 () Bool)

(assert (=> b!937719 m!872643))

(declare-fun m!872645 () Bool)

(assert (=> b!937719 m!872645))

(declare-fun m!872647 () Bool)

(assert (=> b!937719 m!872647))

(assert (=> b!937719 m!872561))

(declare-fun m!872649 () Bool)

(assert (=> b!937719 m!872649))

(assert (=> b!937719 m!872647))

(declare-fun m!872651 () Bool)

(assert (=> b!937719 m!872651))

(declare-fun m!872653 () Bool)

(assert (=> b!937719 m!872653))

(assert (=> b!937719 m!872645))

(declare-fun m!872655 () Bool)

(assert (=> b!937719 m!872655))

(declare-fun m!872657 () Bool)

(assert (=> b!937719 m!872657))

(assert (=> b!937719 m!872657))

(declare-fun m!872659 () Bool)

(assert (=> b!937719 m!872659))

(declare-fun m!872661 () Bool)

(assert (=> b!937719 m!872661))

(assert (=> b!937719 m!872639))

(declare-fun m!872663 () Bool)

(assert (=> b!937719 m!872663))

(declare-fun m!872665 () Bool)

(assert (=> b!937716 m!872665))

(assert (=> b!937713 m!872561))

(assert (=> b!937713 m!872561))

(assert (=> b!937713 m!872631))

(declare-fun m!872667 () Bool)

(assert (=> b!937726 m!872667))

(declare-fun m!872669 () Bool)

(assert (=> bm!40774 m!872669))

(declare-fun m!872671 () Bool)

(assert (=> b!937722 m!872671))

(assert (=> bm!40773 m!872633))

(assert (=> d!113249 m!872507))

(assert (=> b!937717 m!872561))

(assert (=> b!937717 m!872561))

(declare-fun m!872673 () Bool)

(assert (=> b!937717 m!872673))

(declare-fun m!872675 () Bool)

(assert (=> bm!40770 m!872675))

(assert (=> b!937600 d!113249))

(declare-fun b!937728 () Bool)

(declare-fun e!526624 () ListLongMap!12195)

(declare-fun call!40783 () ListLongMap!12195)

(assert (=> b!937728 (= e!526624 call!40783)))

(declare-fun b!937729 () Bool)

(declare-fun e!526623 () Bool)

(assert (=> b!937729 (= e!526623 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!937730 () Bool)

(declare-fun res!631158 () Bool)

(declare-fun e!526626 () Bool)

(assert (=> b!937730 (=> (not res!631158) (not e!526626))))

(declare-fun e!526627 () Bool)

(assert (=> b!937730 (= res!631158 e!526627)))

(declare-fun c!97578 () Bool)

(assert (=> b!937730 (= c!97578 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!937731 () Bool)

(declare-fun e!526631 () ListLongMap!12195)

(declare-fun call!40786 () ListLongMap!12195)

(assert (=> b!937731 (= e!526631 call!40786)))

(declare-fun b!937732 () Bool)

(declare-fun e!526634 () Bool)

(declare-fun e!526629 () Bool)

(assert (=> b!937732 (= e!526634 e!526629)))

(declare-fun res!631161 () Bool)

(declare-fun call!40782 () Bool)

(assert (=> b!937732 (= res!631161 call!40782)))

(assert (=> b!937732 (=> (not res!631161) (not e!526629))))

(declare-fun b!937733 () Bool)

(declare-fun res!631160 () Bool)

(assert (=> b!937733 (=> (not res!631160) (not e!526626))))

(declare-fun e!526633 () Bool)

(assert (=> b!937733 (= res!631160 e!526633)))

(declare-fun res!631163 () Bool)

(assert (=> b!937733 (=> res!631163 e!526633)))

(declare-fun e!526632 () Bool)

(assert (=> b!937733 (= res!631163 (not e!526632))))

(declare-fun res!631156 () Bool)

(assert (=> b!937733 (=> (not res!631156) (not e!526632))))

(assert (=> b!937733 (= res!631156 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))

(declare-fun b!937734 () Bool)

(assert (=> b!937734 (= e!526632 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!937735 () Bool)

(declare-fun call!40785 () Bool)

(assert (=> b!937735 (= e!526627 (not call!40785))))

(declare-fun b!937736 () Bool)

(declare-fun c!97579 () Bool)

(assert (=> b!937736 (= c!97579 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!937736 (= e!526631 e!526624)))

(declare-fun b!937737 () Bool)

(declare-fun e!526628 () ListLongMap!12195)

(declare-fun call!40781 () ListLongMap!12195)

(assert (=> b!937737 (= e!526628 (+!2808 call!40781 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun c!97581 () Bool)

(declare-fun c!97583 () Bool)

(declare-fun bm!40777 () Bool)

(declare-fun call!40780 () ListLongMap!12195)

(declare-fun call!40784 () ListLongMap!12195)

(assert (=> bm!40777 (= call!40781 (+!2808 (ite c!97581 call!40784 (ite c!97583 call!40780 call!40783)) (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun bm!40778 () Bool)

(assert (=> bm!40778 (= call!40786 call!40781)))

(declare-fun b!937738 () Bool)

(declare-fun e!526630 () Bool)

(assert (=> b!937738 (= e!526633 e!526630)))

(declare-fun res!631157 () Bool)

(assert (=> b!937738 (=> (not res!631157) (not e!526630))))

(declare-fun lt!423301 () ListLongMap!12195)

(assert (=> b!937738 (= res!631157 (contains!5123 lt!423301 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!937738 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))

(declare-fun bm!40779 () Bool)

(assert (=> bm!40779 (= call!40783 call!40780)))

(declare-fun bm!40780 () Bool)

(assert (=> bm!40780 (= call!40784 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun b!937739 () Bool)

(assert (=> b!937739 (= e!526634 (not call!40782))))

(declare-fun bm!40781 () Bool)

(assert (=> bm!40781 (= call!40782 (contains!5123 lt!423301 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!937740 () Bool)

(declare-fun e!526625 () Unit!31676)

(declare-fun lt!423308 () Unit!31676)

(assert (=> b!937740 (= e!526625 lt!423308)))

(declare-fun lt!423302 () ListLongMap!12195)

(assert (=> b!937740 (= lt!423302 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!423319 () (_ BitVec 64))

(assert (=> b!937740 (= lt!423319 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423320 () (_ BitVec 64))

(assert (=> b!937740 (= lt!423320 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!423307 () Unit!31676)

(assert (=> b!937740 (= lt!423307 (addStillContains!564 lt!423302 lt!423319 zeroValue!1173 lt!423320))))

(assert (=> b!937740 (contains!5123 (+!2808 lt!423302 (tuple2!13485 lt!423319 zeroValue!1173)) lt!423320)))

(declare-fun lt!423318 () Unit!31676)

(assert (=> b!937740 (= lt!423318 lt!423307)))

(declare-fun lt!423314 () ListLongMap!12195)

(assert (=> b!937740 (= lt!423314 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!423306 () (_ BitVec 64))

(assert (=> b!937740 (= lt!423306 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423305 () (_ BitVec 64))

(assert (=> b!937740 (= lt!423305 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!423310 () Unit!31676)

(assert (=> b!937740 (= lt!423310 (addApplyDifferent!438 lt!423314 lt!423306 minValue!1173 lt!423305))))

(assert (=> b!937740 (= (apply!891 (+!2808 lt!423314 (tuple2!13485 lt!423306 minValue!1173)) lt!423305) (apply!891 lt!423314 lt!423305))))

(declare-fun lt!423309 () Unit!31676)

(assert (=> b!937740 (= lt!423309 lt!423310)))

(declare-fun lt!423317 () ListLongMap!12195)

(assert (=> b!937740 (= lt!423317 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!423311 () (_ BitVec 64))

(assert (=> b!937740 (= lt!423311 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423299 () (_ BitVec 64))

(assert (=> b!937740 (= lt!423299 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!423315 () Unit!31676)

(assert (=> b!937740 (= lt!423315 (addApplyDifferent!438 lt!423317 lt!423311 zeroValue!1173 lt!423299))))

(assert (=> b!937740 (= (apply!891 (+!2808 lt!423317 (tuple2!13485 lt!423311 zeroValue!1173)) lt!423299) (apply!891 lt!423317 lt!423299))))

(declare-fun lt!423303 () Unit!31676)

(assert (=> b!937740 (= lt!423303 lt!423315)))

(declare-fun lt!423300 () ListLongMap!12195)

(assert (=> b!937740 (= lt!423300 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!423304 () (_ BitVec 64))

(assert (=> b!937740 (= lt!423304 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423312 () (_ BitVec 64))

(assert (=> b!937740 (= lt!423312 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!937740 (= lt!423308 (addApplyDifferent!438 lt!423300 lt!423304 minValue!1173 lt!423312))))

(assert (=> b!937740 (= (apply!891 (+!2808 lt!423300 (tuple2!13485 lt!423304 minValue!1173)) lt!423312) (apply!891 lt!423300 lt!423312))))

(declare-fun b!937741 () Bool)

(declare-fun Unit!31683 () Unit!31676)

(assert (=> b!937741 (= e!526625 Unit!31683)))

(declare-fun b!937742 () Bool)

(assert (=> b!937742 (= e!526628 e!526631)))

(assert (=> b!937742 (= c!97583 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!937743 () Bool)

(assert (=> b!937743 (= e!526629 (= (apply!891 lt!423301 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun bm!40782 () Bool)

(assert (=> bm!40782 (= call!40785 (contains!5123 lt!423301 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!937744 () Bool)

(assert (=> b!937744 (= e!526630 (= (apply!891 lt!423301 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14352 (select (arr!27177 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!937744 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27637 _values!1231)))))

(assert (=> b!937744 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))

(declare-fun b!937745 () Bool)

(assert (=> b!937745 (= e!526624 call!40786)))

(declare-fun b!937746 () Bool)

(declare-fun e!526635 () Bool)

(assert (=> b!937746 (= e!526627 e!526635)))

(declare-fun res!631159 () Bool)

(assert (=> b!937746 (= res!631159 call!40785)))

(assert (=> b!937746 (=> (not res!631159) (not e!526635))))

(declare-fun bm!40783 () Bool)

(assert (=> bm!40783 (= call!40780 call!40784)))

(declare-fun d!113251 () Bool)

(assert (=> d!113251 e!526626))

(declare-fun res!631155 () Bool)

(assert (=> d!113251 (=> (not res!631155) (not e!526626))))

(assert (=> d!113251 (= res!631155 (or (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)) (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))))

(declare-fun lt!423313 () ListLongMap!12195)

(assert (=> d!113251 (= lt!423301 lt!423313)))

(declare-fun lt!423316 () Unit!31676)

(assert (=> d!113251 (= lt!423316 e!526625)))

(declare-fun c!97582 () Bool)

(assert (=> d!113251 (= c!97582 e!526623)))

(declare-fun res!631162 () Bool)

(assert (=> d!113251 (=> (not res!631162) (not e!526623))))

(assert (=> d!113251 (= res!631162 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))

(assert (=> d!113251 (= lt!423313 e!526628)))

(assert (=> d!113251 (= c!97581 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113251 (validMask!0 mask!1881)))

(assert (=> d!113251 (= (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423301)))

(declare-fun b!937747 () Bool)

(assert (=> b!937747 (= e!526635 (= (apply!891 lt!423301 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!937748 () Bool)

(assert (=> b!937748 (= e!526626 e!526634)))

(declare-fun c!97580 () Bool)

(assert (=> b!937748 (= c!97580 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!113251 c!97581) b!937737))

(assert (= (and d!113251 (not c!97581)) b!937742))

(assert (= (and b!937742 c!97583) b!937731))

(assert (= (and b!937742 (not c!97583)) b!937736))

(assert (= (and b!937736 c!97579) b!937745))

(assert (= (and b!937736 (not c!97579)) b!937728))

(assert (= (or b!937745 b!937728) bm!40779))

(assert (= (or b!937731 bm!40779) bm!40783))

(assert (= (or b!937731 b!937745) bm!40778))

(assert (= (or b!937737 bm!40783) bm!40780))

(assert (= (or b!937737 bm!40778) bm!40777))

(assert (= (and d!113251 res!631162) b!937729))

(assert (= (and d!113251 c!97582) b!937740))

(assert (= (and d!113251 (not c!97582)) b!937741))

(assert (= (and d!113251 res!631155) b!937733))

(assert (= (and b!937733 res!631156) b!937734))

(assert (= (and b!937733 (not res!631163)) b!937738))

(assert (= (and b!937738 res!631157) b!937744))

(assert (= (and b!937733 res!631160) b!937730))

(assert (= (and b!937730 c!97578) b!937746))

(assert (= (and b!937730 (not c!97578)) b!937735))

(assert (= (and b!937746 res!631159) b!937747))

(assert (= (or b!937746 b!937735) bm!40782))

(assert (= (and b!937730 res!631158) b!937748))

(assert (= (and b!937748 c!97580) b!937732))

(assert (= (and b!937748 (not c!97580)) b!937739))

(assert (= (and b!937732 res!631161) b!937743))

(assert (= (or b!937732 b!937739) bm!40781))

(declare-fun b_lambda!14195 () Bool)

(assert (=> (not b_lambda!14195) (not b!937744)))

(assert (=> b!937744 t!27593))

(declare-fun b_and!29121 () Bool)

(assert (= b_and!29119 (and (=> t!27593 result!12131) b_and!29121)))

(assert (=> b!937744 m!872521))

(declare-fun m!872677 () Bool)

(assert (=> b!937744 m!872677))

(assert (=> b!937744 m!872677))

(declare-fun m!872679 () Bool)

(assert (=> b!937744 m!872679))

(declare-fun m!872681 () Bool)

(assert (=> b!937744 m!872681))

(assert (=> b!937744 m!872521))

(declare-fun m!872683 () Bool)

(assert (=> b!937744 m!872683))

(assert (=> b!937744 m!872681))

(declare-fun m!872685 () Bool)

(assert (=> bm!40782 m!872685))

(assert (=> b!937729 m!872677))

(assert (=> b!937729 m!872677))

(declare-fun m!872687 () Bool)

(assert (=> b!937729 m!872687))

(declare-fun m!872689 () Bool)

(assert (=> b!937740 m!872689))

(declare-fun m!872691 () Bool)

(assert (=> b!937740 m!872691))

(declare-fun m!872693 () Bool)

(assert (=> b!937740 m!872693))

(declare-fun m!872695 () Bool)

(assert (=> b!937740 m!872695))

(declare-fun m!872697 () Bool)

(assert (=> b!937740 m!872697))

(declare-fun m!872699 () Bool)

(assert (=> b!937740 m!872699))

(declare-fun m!872701 () Bool)

(assert (=> b!937740 m!872701))

(declare-fun m!872703 () Bool)

(assert (=> b!937740 m!872703))

(assert (=> b!937740 m!872677))

(declare-fun m!872705 () Bool)

(assert (=> b!937740 m!872705))

(assert (=> b!937740 m!872703))

(declare-fun m!872707 () Bool)

(assert (=> b!937740 m!872707))

(declare-fun m!872709 () Bool)

(assert (=> b!937740 m!872709))

(assert (=> b!937740 m!872701))

(declare-fun m!872711 () Bool)

(assert (=> b!937740 m!872711))

(declare-fun m!872713 () Bool)

(assert (=> b!937740 m!872713))

(assert (=> b!937740 m!872713))

(declare-fun m!872715 () Bool)

(assert (=> b!937740 m!872715))

(declare-fun m!872717 () Bool)

(assert (=> b!937740 m!872717))

(assert (=> b!937740 m!872695))

(declare-fun m!872719 () Bool)

(assert (=> b!937740 m!872719))

(declare-fun m!872721 () Bool)

(assert (=> b!937737 m!872721))

(assert (=> b!937734 m!872677))

(assert (=> b!937734 m!872677))

(assert (=> b!937734 m!872687))

(declare-fun m!872723 () Bool)

(assert (=> b!937747 m!872723))

(declare-fun m!872725 () Bool)

(assert (=> bm!40781 m!872725))

(declare-fun m!872727 () Bool)

(assert (=> b!937743 m!872727))

(assert (=> bm!40780 m!872689))

(assert (=> d!113251 m!872507))

(assert (=> b!937738 m!872677))

(assert (=> b!937738 m!872677))

(declare-fun m!872729 () Bool)

(assert (=> b!937738 m!872729))

(declare-fun m!872731 () Bool)

(assert (=> bm!40777 m!872731))

(assert (=> b!937600 d!113251))

(declare-fun d!113253 () Bool)

(assert (=> d!113253 (= (apply!891 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193)) k0!1099) (apply!891 lt!423184 k0!1099))))

(declare-fun lt!423323 () Unit!31676)

(declare-fun choose!1561 (ListLongMap!12195 (_ BitVec 64) V!31977 (_ BitVec 64)) Unit!31676)

(assert (=> d!113253 (= lt!423323 (choose!1561 lt!423184 lt!423187 lt!423193 k0!1099))))

(declare-fun e!526638 () Bool)

(assert (=> d!113253 e!526638))

(declare-fun res!631166 () Bool)

(assert (=> d!113253 (=> (not res!631166) (not e!526638))))

(assert (=> d!113253 (= res!631166 (contains!5123 lt!423184 k0!1099))))

(assert (=> d!113253 (= (addApplyDifferent!438 lt!423184 lt!423187 lt!423193 k0!1099) lt!423323)))

(declare-fun b!937752 () Bool)

(assert (=> b!937752 (= e!526638 (not (= k0!1099 lt!423187)))))

(assert (= (and d!113253 res!631166) b!937752))

(assert (=> d!113253 m!872553))

(assert (=> d!113253 m!872515))

(declare-fun m!872733 () Bool)

(assert (=> d!113253 m!872733))

(assert (=> d!113253 m!872733))

(declare-fun m!872735 () Bool)

(assert (=> d!113253 m!872735))

(declare-fun m!872737 () Bool)

(assert (=> d!113253 m!872737))

(assert (=> b!937600 d!113253))

(declare-fun d!113255 () Bool)

(declare-fun e!526641 () Bool)

(assert (=> d!113255 e!526641))

(declare-fun res!631171 () Bool)

(assert (=> d!113255 (=> (not res!631171) (not e!526641))))

(declare-fun lt!423335 () ListLongMap!12195)

(assert (=> d!113255 (= res!631171 (contains!5123 lt!423335 (_1!6752 lt!423188)))))

(declare-fun lt!423333 () List!19291)

(assert (=> d!113255 (= lt!423335 (ListLongMap!12196 lt!423333))))

(declare-fun lt!423334 () Unit!31676)

(declare-fun lt!423332 () Unit!31676)

(assert (=> d!113255 (= lt!423334 lt!423332)))

(declare-datatypes ((Option!492 0))(
  ( (Some!491 (v!12707 V!31977)) (None!490) )
))
(declare-fun getValueByKey!486 (List!19291 (_ BitVec 64)) Option!492)

(assert (=> d!113255 (= (getValueByKey!486 lt!423333 (_1!6752 lt!423188)) (Some!491 (_2!6752 lt!423188)))))

(declare-fun lemmaContainsTupThenGetReturnValue!260 (List!19291 (_ BitVec 64) V!31977) Unit!31676)

(assert (=> d!113255 (= lt!423332 (lemmaContainsTupThenGetReturnValue!260 lt!423333 (_1!6752 lt!423188) (_2!6752 lt!423188)))))

(declare-fun insertStrictlySorted!316 (List!19291 (_ BitVec 64) V!31977) List!19291)

(assert (=> d!113255 (= lt!423333 (insertStrictlySorted!316 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)) (_1!6752 lt!423188) (_2!6752 lt!423188)))))

(assert (=> d!113255 (= (+!2808 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423188) lt!423335)))

(declare-fun b!937757 () Bool)

(declare-fun res!631172 () Bool)

(assert (=> b!937757 (=> (not res!631172) (not e!526641))))

(assert (=> b!937757 (= res!631172 (= (getValueByKey!486 (toList!6113 lt!423335) (_1!6752 lt!423188)) (Some!491 (_2!6752 lt!423188))))))

(declare-fun b!937758 () Bool)

(declare-fun contains!5124 (List!19291 tuple2!13484) Bool)

(assert (=> b!937758 (= e!526641 (contains!5124 (toList!6113 lt!423335) lt!423188))))

(assert (= (and d!113255 res!631171) b!937757))

(assert (= (and b!937757 res!631172) b!937758))

(declare-fun m!872739 () Bool)

(assert (=> d!113255 m!872739))

(declare-fun m!872741 () Bool)

(assert (=> d!113255 m!872741))

(declare-fun m!872743 () Bool)

(assert (=> d!113255 m!872743))

(declare-fun m!872745 () Bool)

(assert (=> d!113255 m!872745))

(declare-fun m!872747 () Bool)

(assert (=> b!937757 m!872747))

(declare-fun m!872749 () Bool)

(assert (=> b!937758 m!872749))

(assert (=> b!937600 d!113255))

(declare-fun d!113257 () Bool)

(declare-fun e!526644 () Bool)

(assert (=> d!113257 e!526644))

(declare-fun res!631175 () Bool)

(assert (=> d!113257 (=> (not res!631175) (not e!526644))))

(assert (=> d!113257 (= res!631175 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27637 _values!1231))))))

(declare-fun lt!423338 () Unit!31676)

(declare-fun choose!1562 (array!56484 array!56482 (_ BitVec 32) (_ BitVec 32) V!31977 V!31977 (_ BitVec 32) Int) Unit!31676)

(assert (=> d!113257 (= lt!423338 (choose!1562 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> d!113257 (validMask!0 mask!1881)))

(assert (=> d!113257 (= (lemmaListMapRecursiveValidKeyArray!243 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!423338)))

(declare-fun b!937761 () Bool)

(assert (=> b!937761 (= e!526644 (= (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2808 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!113257 res!631175) b!937761))

(declare-fun b_lambda!14197 () Bool)

(assert (=> (not b_lambda!14197) (not b!937761)))

(assert (=> b!937761 t!27593))

(declare-fun b_and!29123 () Bool)

(assert (= b_and!29121 (and (=> t!27593 result!12131) b_and!29123)))

(declare-fun m!872751 () Bool)

(assert (=> d!113257 m!872751))

(assert (=> d!113257 m!872507))

(declare-fun m!872753 () Bool)

(assert (=> b!937761 m!872753))

(assert (=> b!937761 m!872561))

(assert (=> b!937761 m!872539))

(assert (=> b!937761 m!872521))

(assert (=> b!937761 m!872753))

(declare-fun m!872755 () Bool)

(assert (=> b!937761 m!872755))

(assert (=> b!937761 m!872527))

(assert (=> b!937761 m!872521))

(assert (=> b!937761 m!872529))

(assert (=> b!937761 m!872527))

(assert (=> b!937600 d!113257))

(declare-fun d!113259 () Bool)

(assert (=> d!113259 (contains!5123 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193)) k0!1099)))

(declare-fun lt!423341 () Unit!31676)

(declare-fun choose!1563 (ListLongMap!12195 (_ BitVec 64) V!31977 (_ BitVec 64)) Unit!31676)

(assert (=> d!113259 (= lt!423341 (choose!1563 lt!423184 lt!423187 lt!423193 k0!1099))))

(assert (=> d!113259 (contains!5123 lt!423184 k0!1099)))

(assert (=> d!113259 (= (addStillContains!564 lt!423184 lt!423187 lt!423193 k0!1099) lt!423341)))

(declare-fun bs!26294 () Bool)

(assert (= bs!26294 d!113259))

(assert (=> bs!26294 m!872733))

(assert (=> bs!26294 m!872733))

(declare-fun m!872757 () Bool)

(assert (=> bs!26294 m!872757))

(declare-fun m!872759 () Bool)

(assert (=> bs!26294 m!872759))

(assert (=> bs!26294 m!872553))

(assert (=> b!937600 d!113259))

(declare-fun d!113261 () Bool)

(declare-fun e!526650 () Bool)

(assert (=> d!113261 e!526650))

(declare-fun res!631178 () Bool)

(assert (=> d!113261 (=> res!631178 e!526650)))

(declare-fun lt!423352 () Bool)

(assert (=> d!113261 (= res!631178 (not lt!423352))))

(declare-fun lt!423350 () Bool)

(assert (=> d!113261 (= lt!423352 lt!423350)))

(declare-fun lt!423353 () Unit!31676)

(declare-fun e!526649 () Unit!31676)

(assert (=> d!113261 (= lt!423353 e!526649)))

(declare-fun c!97586 () Bool)

(assert (=> d!113261 (= c!97586 lt!423350)))

(declare-fun containsKey!451 (List!19291 (_ BitVec 64)) Bool)

(assert (=> d!113261 (= lt!423350 (containsKey!451 (toList!6113 lt!423181) k0!1099))))

(assert (=> d!113261 (= (contains!5123 lt!423181 k0!1099) lt!423352)))

(declare-fun b!937769 () Bool)

(declare-fun lt!423351 () Unit!31676)

(assert (=> b!937769 (= e!526649 lt!423351)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!346 (List!19291 (_ BitVec 64)) Unit!31676)

(assert (=> b!937769 (= lt!423351 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423181) k0!1099))))

(declare-fun isDefined!356 (Option!492) Bool)

(assert (=> b!937769 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423181) k0!1099))))

(declare-fun b!937770 () Bool)

(declare-fun Unit!31684 () Unit!31676)

(assert (=> b!937770 (= e!526649 Unit!31684)))

(declare-fun b!937771 () Bool)

(assert (=> b!937771 (= e!526650 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423181) k0!1099)))))

(assert (= (and d!113261 c!97586) b!937769))

(assert (= (and d!113261 (not c!97586)) b!937770))

(assert (= (and d!113261 (not res!631178)) b!937771))

(declare-fun m!872761 () Bool)

(assert (=> d!113261 m!872761))

(declare-fun m!872763 () Bool)

(assert (=> b!937769 m!872763))

(declare-fun m!872765 () Bool)

(assert (=> b!937769 m!872765))

(assert (=> b!937769 m!872765))

(declare-fun m!872767 () Bool)

(assert (=> b!937769 m!872767))

(assert (=> b!937771 m!872765))

(assert (=> b!937771 m!872765))

(assert (=> b!937771 m!872767))

(assert (=> b!937600 d!113261))

(declare-fun d!113263 () Bool)

(declare-fun e!526653 () Bool)

(assert (=> d!113263 e!526653))

(declare-fun c!97589 () Bool)

(assert (=> d!113263 (= c!97589 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!423356 () Unit!31676)

(declare-fun choose!1564 (array!56484 array!56482 (_ BitVec 32) (_ BitVec 32) V!31977 V!31977 (_ BitVec 64) (_ BitVec 32) Int) Unit!31676)

(assert (=> d!113263 (= lt!423356 (choose!1564 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> d!113263 (validMask!0 mask!1881)))

(assert (=> d!113263 (= (lemmaListMapContainsThenArrayContainsFrom!321 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235) lt!423356)))

(declare-fun b!937776 () Bool)

(assert (=> b!937776 (= e!526653 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!937777 () Bool)

(assert (=> b!937777 (= e!526653 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!113263 c!97589) b!937776))

(assert (= (and d!113263 (not c!97589)) b!937777))

(declare-fun m!872769 () Bool)

(assert (=> d!113263 m!872769))

(assert (=> d!113263 m!872507))

(assert (=> b!937776 m!872551))

(assert (=> b!937600 d!113263))

(declare-fun d!113265 () Bool)

(declare-fun e!526654 () Bool)

(assert (=> d!113265 e!526654))

(declare-fun res!631179 () Bool)

(assert (=> d!113265 (=> (not res!631179) (not e!526654))))

(declare-fun lt!423360 () ListLongMap!12195)

(assert (=> d!113265 (= res!631179 (contains!5123 lt!423360 (_1!6752 lt!423188)))))

(declare-fun lt!423358 () List!19291)

(assert (=> d!113265 (= lt!423360 (ListLongMap!12196 lt!423358))))

(declare-fun lt!423359 () Unit!31676)

(declare-fun lt!423357 () Unit!31676)

(assert (=> d!113265 (= lt!423359 lt!423357)))

(assert (=> d!113265 (= (getValueByKey!486 lt!423358 (_1!6752 lt!423188)) (Some!491 (_2!6752 lt!423188)))))

(assert (=> d!113265 (= lt!423357 (lemmaContainsTupThenGetReturnValue!260 lt!423358 (_1!6752 lt!423188) (_2!6752 lt!423188)))))

(assert (=> d!113265 (= lt!423358 (insertStrictlySorted!316 (toList!6113 lt!423184) (_1!6752 lt!423188) (_2!6752 lt!423188)))))

(assert (=> d!113265 (= (+!2808 lt!423184 lt!423188) lt!423360)))

(declare-fun b!937778 () Bool)

(declare-fun res!631180 () Bool)

(assert (=> b!937778 (=> (not res!631180) (not e!526654))))

(assert (=> b!937778 (= res!631180 (= (getValueByKey!486 (toList!6113 lt!423360) (_1!6752 lt!423188)) (Some!491 (_2!6752 lt!423188))))))

(declare-fun b!937779 () Bool)

(assert (=> b!937779 (= e!526654 (contains!5124 (toList!6113 lt!423360) lt!423188))))

(assert (= (and d!113265 res!631179) b!937778))

(assert (= (and b!937778 res!631180) b!937779))

(declare-fun m!872771 () Bool)

(assert (=> d!113265 m!872771))

(declare-fun m!872773 () Bool)

(assert (=> d!113265 m!872773))

(declare-fun m!872775 () Bool)

(assert (=> d!113265 m!872775))

(declare-fun m!872777 () Bool)

(assert (=> d!113265 m!872777))

(declare-fun m!872779 () Bool)

(assert (=> b!937778 m!872779))

(declare-fun m!872781 () Bool)

(assert (=> b!937779 m!872781))

(assert (=> b!937600 d!113265))

(declare-fun d!113267 () Bool)

(assert (=> d!113267 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)) (not (= (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) k0!1099)))))

(declare-fun lt!423363 () Unit!31676)

(declare-fun choose!21 (array!56484 (_ BitVec 64) (_ BitVec 32) List!19292) Unit!31676)

(assert (=> d!113267 (= lt!423363 (choose!21 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19289))))

(assert (=> d!113267 (bvslt (size!27638 _keys!1487) #b01111111111111111111111111111111)))

(assert (=> d!113267 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19289) lt!423363)))

(declare-fun bs!26295 () Bool)

(assert (= bs!26295 d!113267))

(assert (=> bs!26295 m!872561))

(declare-fun m!872783 () Bool)

(assert (=> bs!26295 m!872783))

(assert (=> b!937600 d!113267))

(declare-fun b!937790 () Bool)

(declare-fun e!526664 () Bool)

(declare-fun contains!5125 (List!19292 (_ BitVec 64)) Bool)

(assert (=> b!937790 (= e!526664 (contains!5125 Nil!19289 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!937791 () Bool)

(declare-fun e!526665 () Bool)

(declare-fun call!40789 () Bool)

(assert (=> b!937791 (= e!526665 call!40789)))

(declare-fun d!113269 () Bool)

(declare-fun res!631187 () Bool)

(declare-fun e!526666 () Bool)

(assert (=> d!113269 (=> res!631187 e!526666)))

(assert (=> d!113269 (= res!631187 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(assert (=> d!113269 (= (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19289) e!526666)))

(declare-fun b!937792 () Bool)

(declare-fun e!526663 () Bool)

(assert (=> b!937792 (= e!526666 e!526663)))

(declare-fun res!631188 () Bool)

(assert (=> b!937792 (=> (not res!631188) (not e!526663))))

(assert (=> b!937792 (= res!631188 (not e!526664))))

(declare-fun res!631189 () Bool)

(assert (=> b!937792 (=> (not res!631189) (not e!526664))))

(assert (=> b!937792 (= res!631189 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!937793 () Bool)

(assert (=> b!937793 (= e!526663 e!526665)))

(declare-fun c!97592 () Bool)

(assert (=> b!937793 (= c!97592 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun bm!40786 () Bool)

(assert (=> bm!40786 (= call!40789 (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (ite c!97592 (Cons!19288 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19289) Nil!19289)))))

(declare-fun b!937794 () Bool)

(assert (=> b!937794 (= e!526665 call!40789)))

(assert (= (and d!113269 (not res!631187)) b!937792))

(assert (= (and b!937792 res!631189) b!937790))

(assert (= (and b!937792 res!631188) b!937793))

(assert (= (and b!937793 c!97592) b!937791))

(assert (= (and b!937793 (not c!97592)) b!937794))

(assert (= (or b!937791 b!937794) bm!40786))

(assert (=> b!937790 m!872561))

(assert (=> b!937790 m!872561))

(declare-fun m!872785 () Bool)

(assert (=> b!937790 m!872785))

(assert (=> b!937792 m!872561))

(assert (=> b!937792 m!872561))

(assert (=> b!937792 m!872631))

(assert (=> b!937793 m!872561))

(assert (=> b!937793 m!872561))

(assert (=> b!937793 m!872631))

(assert (=> bm!40786 m!872561))

(declare-fun m!872787 () Bool)

(assert (=> bm!40786 m!872787))

(assert (=> b!937600 d!113269))

(declare-fun d!113271 () Bool)

(declare-fun get!14353 (Option!492) V!31977)

(assert (=> d!113271 (= (apply!891 lt!423181 k0!1099) (get!14353 (getValueByKey!486 (toList!6113 lt!423181) k0!1099)))))

(declare-fun bs!26296 () Bool)

(assert (= bs!26296 d!113271))

(assert (=> bs!26296 m!872765))

(assert (=> bs!26296 m!872765))

(declare-fun m!872789 () Bool)

(assert (=> bs!26296 m!872789))

(assert (=> b!937600 d!113271))

(declare-fun d!113273 () Bool)

(declare-fun c!97595 () Bool)

(assert (=> d!113273 (= c!97595 ((_ is ValueCellFull!9648) (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun e!526669 () V!31977)

(assert (=> d!113273 (= (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!526669)))

(declare-fun b!937799 () Bool)

(declare-fun get!14354 (ValueCell!9648 V!31977) V!31977)

(assert (=> b!937799 (= e!526669 (get!14354 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!937800 () Bool)

(declare-fun get!14355 (ValueCell!9648 V!31977) V!31977)

(assert (=> b!937800 (= e!526669 (get!14355 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113273 c!97595) b!937799))

(assert (= (and d!113273 (not c!97595)) b!937800))

(assert (=> b!937799 m!872527))

(assert (=> b!937799 m!872521))

(declare-fun m!872791 () Bool)

(assert (=> b!937799 m!872791))

(assert (=> b!937800 m!872527))

(assert (=> b!937800 m!872521))

(declare-fun m!872793 () Bool)

(assert (=> b!937800 m!872793))

(assert (=> b!937600 d!113273))

(declare-fun d!113275 () Bool)

(assert (=> d!113275 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19289)))

(declare-fun lt!423366 () Unit!31676)

(declare-fun choose!39 (array!56484 (_ BitVec 32) (_ BitVec 32)) Unit!31676)

(assert (=> d!113275 (= lt!423366 (choose!39 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> d!113275 (bvslt (size!27638 _keys!1487) #b01111111111111111111111111111111)))

(assert (=> d!113275 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)) lt!423366)))

(declare-fun bs!26297 () Bool)

(assert (= bs!26297 d!113275))

(assert (=> bs!26297 m!872533))

(declare-fun m!872795 () Bool)

(assert (=> bs!26297 m!872795))

(assert (=> b!937600 d!113275))

(declare-fun b!937809 () Bool)

(declare-fun e!526678 () Bool)

(declare-fun call!40792 () Bool)

(assert (=> b!937809 (= e!526678 call!40792)))

(declare-fun b!937810 () Bool)

(declare-fun e!526677 () Bool)

(assert (=> b!937810 (= e!526677 e!526678)))

(declare-fun c!97598 () Bool)

(assert (=> b!937810 (= c!97598 (validKeyInArray!0 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!937811 () Bool)

(declare-fun e!526676 () Bool)

(assert (=> b!937811 (= e!526678 e!526676)))

(declare-fun lt!423373 () (_ BitVec 64))

(assert (=> b!937811 (= lt!423373 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000))))

(declare-fun lt!423374 () Unit!31676)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56484 (_ BitVec 64) (_ BitVec 32)) Unit!31676)

(assert (=> b!937811 (= lt!423374 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!423373 #b00000000000000000000000000000000))))

(assert (=> b!937811 (arrayContainsKey!0 _keys!1487 lt!423373 #b00000000000000000000000000000000)))

(declare-fun lt!423375 () Unit!31676)

(assert (=> b!937811 (= lt!423375 lt!423374)))

(declare-fun res!631195 () Bool)

(declare-datatypes ((SeekEntryResult!8968 0))(
  ( (MissingZero!8968 (index!38242 (_ BitVec 32))) (Found!8968 (index!38243 (_ BitVec 32))) (Intermediate!8968 (undefined!9780 Bool) (index!38244 (_ BitVec 32)) (x!80412 (_ BitVec 32))) (Undefined!8968) (MissingVacant!8968 (index!38245 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56484 (_ BitVec 32)) SeekEntryResult!8968)

(assert (=> b!937811 (= res!631195 (= (seekEntryOrOpen!0 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8968 #b00000000000000000000000000000000)))))

(assert (=> b!937811 (=> (not res!631195) (not e!526676))))

(declare-fun d!113277 () Bool)

(declare-fun res!631194 () Bool)

(assert (=> d!113277 (=> res!631194 e!526677)))

(assert (=> d!113277 (= res!631194 (bvsge #b00000000000000000000000000000000 (size!27638 _keys!1487)))))

(assert (=> d!113277 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!526677)))

(declare-fun b!937812 () Bool)

(assert (=> b!937812 (= e!526676 call!40792)))

(declare-fun bm!40789 () Bool)

(assert (=> bm!40789 (= call!40792 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(assert (= (and d!113277 (not res!631194)) b!937810))

(assert (= (and b!937810 c!97598) b!937811))

(assert (= (and b!937810 (not c!97598)) b!937809))

(assert (= (and b!937811 res!631195) b!937812))

(assert (= (or b!937812 b!937809) bm!40789))

(declare-fun m!872797 () Bool)

(assert (=> b!937810 m!872797))

(assert (=> b!937810 m!872797))

(declare-fun m!872799 () Bool)

(assert (=> b!937810 m!872799))

(assert (=> b!937811 m!872797))

(declare-fun m!872801 () Bool)

(assert (=> b!937811 m!872801))

(declare-fun m!872803 () Bool)

(assert (=> b!937811 m!872803))

(assert (=> b!937811 m!872797))

(declare-fun m!872805 () Bool)

(assert (=> b!937811 m!872805))

(declare-fun m!872807 () Bool)

(assert (=> bm!40789 m!872807))

(assert (=> b!937596 d!113277))

(declare-fun d!113279 () Bool)

(assert (=> d!113279 (= (validKeyInArray!0 k0!1099) (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!937601 d!113279))

(declare-fun d!113281 () Bool)

(assert (=> d!113281 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!79730 d!113281))

(declare-fun d!113283 () Bool)

(assert (=> d!113283 (= (array_inv!21098 _values!1231) (bvsge (size!27637 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!79730 d!113283))

(declare-fun d!113285 () Bool)

(assert (=> d!113285 (= (array_inv!21099 _keys!1487) (bvsge (size!27638 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!79730 d!113285))

(declare-fun d!113287 () Bool)

(declare-fun e!526680 () Bool)

(assert (=> d!113287 e!526680))

(declare-fun res!631196 () Bool)

(assert (=> d!113287 (=> res!631196 e!526680)))

(declare-fun lt!423378 () Bool)

(assert (=> d!113287 (= res!631196 (not lt!423378))))

(declare-fun lt!423376 () Bool)

(assert (=> d!113287 (= lt!423378 lt!423376)))

(declare-fun lt!423379 () Unit!31676)

(declare-fun e!526679 () Unit!31676)

(assert (=> d!113287 (= lt!423379 e!526679)))

(declare-fun c!97599 () Bool)

(assert (=> d!113287 (= c!97599 lt!423376)))

(assert (=> d!113287 (= lt!423376 (containsKey!451 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099))))

(assert (=> d!113287 (= (contains!5123 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) k0!1099) lt!423378)))

(declare-fun b!937813 () Bool)

(declare-fun lt!423377 () Unit!31676)

(assert (=> b!937813 (= e!526679 lt!423377)))

(assert (=> b!937813 (= lt!423377 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099))))

(assert (=> b!937813 (isDefined!356 (getValueByKey!486 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099))))

(declare-fun b!937814 () Bool)

(declare-fun Unit!31685 () Unit!31676)

(assert (=> b!937814 (= e!526679 Unit!31685)))

(declare-fun b!937815 () Bool)

(assert (=> b!937815 (= e!526680 (isDefined!356 (getValueByKey!486 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099)))))

(assert (= (and d!113287 c!97599) b!937813))

(assert (= (and d!113287 (not c!97599)) b!937814))

(assert (= (and d!113287 (not res!631196)) b!937815))

(declare-fun m!872809 () Bool)

(assert (=> d!113287 m!872809))

(declare-fun m!872811 () Bool)

(assert (=> b!937813 m!872811))

(declare-fun m!872813 () Bool)

(assert (=> b!937813 m!872813))

(assert (=> b!937813 m!872813))

(declare-fun m!872815 () Bool)

(assert (=> b!937813 m!872815))

(assert (=> b!937815 m!872813))

(assert (=> b!937815 m!872813))

(assert (=> b!937815 m!872815))

(assert (=> b!937602 d!113287))

(assert (=> b!937602 d!113249))

(declare-fun b!937816 () Bool)

(declare-fun e!526682 () Bool)

(assert (=> b!937816 (= e!526682 (contains!5125 Nil!19289 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!937817 () Bool)

(declare-fun e!526683 () Bool)

(declare-fun call!40793 () Bool)

(assert (=> b!937817 (= e!526683 call!40793)))

(declare-fun d!113289 () Bool)

(declare-fun res!631197 () Bool)

(declare-fun e!526684 () Bool)

(assert (=> d!113289 (=> res!631197 e!526684)))

(assert (=> d!113289 (= res!631197 (bvsge #b00000000000000000000000000000000 (size!27638 _keys!1487)))))

(assert (=> d!113289 (= (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19289) e!526684)))

(declare-fun b!937818 () Bool)

(declare-fun e!526681 () Bool)

(assert (=> b!937818 (= e!526684 e!526681)))

(declare-fun res!631198 () Bool)

(assert (=> b!937818 (=> (not res!631198) (not e!526681))))

(assert (=> b!937818 (= res!631198 (not e!526682))))

(declare-fun res!631199 () Bool)

(assert (=> b!937818 (=> (not res!631199) (not e!526682))))

(assert (=> b!937818 (= res!631199 (validKeyInArray!0 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!937819 () Bool)

(assert (=> b!937819 (= e!526681 e!526683)))

(declare-fun c!97600 () Bool)

(assert (=> b!937819 (= c!97600 (validKeyInArray!0 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun bm!40790 () Bool)

(assert (=> bm!40790 (= call!40793 (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97600 (Cons!19288 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) Nil!19289) Nil!19289)))))

(declare-fun b!937820 () Bool)

(assert (=> b!937820 (= e!526683 call!40793)))

(assert (= (and d!113289 (not res!631197)) b!937818))

(assert (= (and b!937818 res!631199) b!937816))

(assert (= (and b!937818 res!631198) b!937819))

(assert (= (and b!937819 c!97600) b!937817))

(assert (= (and b!937819 (not c!97600)) b!937820))

(assert (= (or b!937817 b!937820) bm!40790))

(assert (=> b!937816 m!872797))

(assert (=> b!937816 m!872797))

(declare-fun m!872817 () Bool)

(assert (=> b!937816 m!872817))

(assert (=> b!937818 m!872797))

(assert (=> b!937818 m!872797))

(assert (=> b!937818 m!872799))

(assert (=> b!937819 m!872797))

(assert (=> b!937819 m!872797))

(assert (=> b!937819 m!872799))

(assert (=> bm!40790 m!872797))

(declare-fun m!872819 () Bool)

(assert (=> bm!40790 m!872819))

(assert (=> b!937598 d!113289))

(declare-fun d!113291 () Bool)

(assert (=> d!113291 (= (apply!891 lt!423184 k0!1099) (get!14353 (getValueByKey!486 (toList!6113 lt!423184) k0!1099)))))

(declare-fun bs!26298 () Bool)

(assert (= bs!26298 d!113291))

(declare-fun m!872821 () Bool)

(assert (=> bs!26298 m!872821))

(assert (=> bs!26298 m!872821))

(declare-fun m!872823 () Bool)

(assert (=> bs!26298 m!872823))

(assert (=> b!937608 d!113291))

(declare-fun d!113293 () Bool)

(assert (=> d!113293 (= (validKeyInArray!0 lt!423187) (and (not (= lt!423187 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!423187 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!937599 d!113293))

(declare-fun d!113295 () Bool)

(declare-fun e!526686 () Bool)

(assert (=> d!113295 e!526686))

(declare-fun res!631200 () Bool)

(assert (=> d!113295 (=> res!631200 e!526686)))

(declare-fun lt!423382 () Bool)

(assert (=> d!113295 (= res!631200 (not lt!423382))))

(declare-fun lt!423380 () Bool)

(assert (=> d!113295 (= lt!423382 lt!423380)))

(declare-fun lt!423383 () Unit!31676)

(declare-fun e!526685 () Unit!31676)

(assert (=> d!113295 (= lt!423383 e!526685)))

(declare-fun c!97601 () Bool)

(assert (=> d!113295 (= c!97601 lt!423380)))

(assert (=> d!113295 (= lt!423380 (containsKey!451 (toList!6113 lt!423184) k0!1099))))

(assert (=> d!113295 (= (contains!5123 lt!423184 k0!1099) lt!423382)))

(declare-fun b!937821 () Bool)

(declare-fun lt!423381 () Unit!31676)

(assert (=> b!937821 (= e!526685 lt!423381)))

(assert (=> b!937821 (= lt!423381 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423184) k0!1099))))

(assert (=> b!937821 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423184) k0!1099))))

(declare-fun b!937822 () Bool)

(declare-fun Unit!31686 () Unit!31676)

(assert (=> b!937822 (= e!526685 Unit!31686)))

(declare-fun b!937823 () Bool)

(assert (=> b!937823 (= e!526686 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423184) k0!1099)))))

(assert (= (and d!113295 c!97601) b!937821))

(assert (= (and d!113295 (not c!97601)) b!937822))

(assert (= (and d!113295 (not res!631200)) b!937823))

(declare-fun m!872825 () Bool)

(assert (=> d!113295 m!872825))

(declare-fun m!872827 () Bool)

(assert (=> b!937821 m!872827))

(assert (=> b!937821 m!872821))

(assert (=> b!937821 m!872821))

(declare-fun m!872829 () Bool)

(assert (=> b!937821 m!872829))

(assert (=> b!937823 m!872821))

(assert (=> b!937823 m!872821))

(assert (=> b!937823 m!872829))

(assert (=> b!937595 d!113295))

(declare-fun b!937824 () Bool)

(declare-fun e!526688 () ListLongMap!12195)

(declare-fun call!40797 () ListLongMap!12195)

(assert (=> b!937824 (= e!526688 call!40797)))

(declare-fun b!937825 () Bool)

(declare-fun e!526687 () Bool)

(assert (=> b!937825 (= e!526687 (validKeyInArray!0 (select (arr!27178 _keys!1487) from!1844)))))

(declare-fun b!937826 () Bool)

(declare-fun res!631204 () Bool)

(declare-fun e!526690 () Bool)

(assert (=> b!937826 (=> (not res!631204) (not e!526690))))

(declare-fun e!526691 () Bool)

(assert (=> b!937826 (= res!631204 e!526691)))

(declare-fun c!97602 () Bool)

(assert (=> b!937826 (= c!97602 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!937827 () Bool)

(declare-fun e!526695 () ListLongMap!12195)

(declare-fun call!40800 () ListLongMap!12195)

(assert (=> b!937827 (= e!526695 call!40800)))

(declare-fun b!937828 () Bool)

(declare-fun e!526698 () Bool)

(declare-fun e!526693 () Bool)

(assert (=> b!937828 (= e!526698 e!526693)))

(declare-fun res!631207 () Bool)

(declare-fun call!40796 () Bool)

(assert (=> b!937828 (= res!631207 call!40796)))

(assert (=> b!937828 (=> (not res!631207) (not e!526693))))

(declare-fun b!937829 () Bool)

(declare-fun res!631206 () Bool)

(assert (=> b!937829 (=> (not res!631206) (not e!526690))))

(declare-fun e!526697 () Bool)

(assert (=> b!937829 (= res!631206 e!526697)))

(declare-fun res!631209 () Bool)

(assert (=> b!937829 (=> res!631209 e!526697)))

(declare-fun e!526696 () Bool)

(assert (=> b!937829 (= res!631209 (not e!526696))))

(declare-fun res!631202 () Bool)

(assert (=> b!937829 (=> (not res!631202) (not e!526696))))

(assert (=> b!937829 (= res!631202 (bvslt from!1844 (size!27638 _keys!1487)))))

(declare-fun b!937830 () Bool)

(assert (=> b!937830 (= e!526696 (validKeyInArray!0 (select (arr!27178 _keys!1487) from!1844)))))

(declare-fun b!937831 () Bool)

(declare-fun call!40799 () Bool)

(assert (=> b!937831 (= e!526691 (not call!40799))))

(declare-fun b!937832 () Bool)

(declare-fun c!97603 () Bool)

(assert (=> b!937832 (= c!97603 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!937832 (= e!526695 e!526688)))

(declare-fun b!937833 () Bool)

(declare-fun e!526692 () ListLongMap!12195)

(declare-fun call!40795 () ListLongMap!12195)

(assert (=> b!937833 (= e!526692 (+!2808 call!40795 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun c!97605 () Bool)

(declare-fun call!40794 () ListLongMap!12195)

(declare-fun c!97607 () Bool)

(declare-fun bm!40791 () Bool)

(declare-fun call!40798 () ListLongMap!12195)

(assert (=> bm!40791 (= call!40795 (+!2808 (ite c!97605 call!40798 (ite c!97607 call!40794 call!40797)) (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun bm!40792 () Bool)

(assert (=> bm!40792 (= call!40800 call!40795)))

(declare-fun b!937834 () Bool)

(declare-fun e!526694 () Bool)

(assert (=> b!937834 (= e!526697 e!526694)))

(declare-fun res!631203 () Bool)

(assert (=> b!937834 (=> (not res!631203) (not e!526694))))

(declare-fun lt!423386 () ListLongMap!12195)

(assert (=> b!937834 (= res!631203 (contains!5123 lt!423386 (select (arr!27178 _keys!1487) from!1844)))))

(assert (=> b!937834 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27638 _keys!1487)))))

(declare-fun bm!40793 () Bool)

(assert (=> bm!40793 (= call!40797 call!40794)))

(declare-fun bm!40794 () Bool)

(assert (=> bm!40794 (= call!40798 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!937835 () Bool)

(assert (=> b!937835 (= e!526698 (not call!40796))))

(declare-fun bm!40795 () Bool)

(assert (=> bm!40795 (= call!40796 (contains!5123 lt!423386 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!937836 () Bool)

(declare-fun e!526689 () Unit!31676)

(declare-fun lt!423393 () Unit!31676)

(assert (=> b!937836 (= e!526689 lt!423393)))

(declare-fun lt!423387 () ListLongMap!12195)

(assert (=> b!937836 (= lt!423387 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!423404 () (_ BitVec 64))

(assert (=> b!937836 (= lt!423404 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423405 () (_ BitVec 64))

(assert (=> b!937836 (= lt!423405 (select (arr!27178 _keys!1487) from!1844))))

(declare-fun lt!423392 () Unit!31676)

(assert (=> b!937836 (= lt!423392 (addStillContains!564 lt!423387 lt!423404 zeroValue!1173 lt!423405))))

(assert (=> b!937836 (contains!5123 (+!2808 lt!423387 (tuple2!13485 lt!423404 zeroValue!1173)) lt!423405)))

(declare-fun lt!423403 () Unit!31676)

(assert (=> b!937836 (= lt!423403 lt!423392)))

(declare-fun lt!423399 () ListLongMap!12195)

(assert (=> b!937836 (= lt!423399 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!423391 () (_ BitVec 64))

(assert (=> b!937836 (= lt!423391 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423390 () (_ BitVec 64))

(assert (=> b!937836 (= lt!423390 (select (arr!27178 _keys!1487) from!1844))))

(declare-fun lt!423395 () Unit!31676)

(assert (=> b!937836 (= lt!423395 (addApplyDifferent!438 lt!423399 lt!423391 minValue!1173 lt!423390))))

(assert (=> b!937836 (= (apply!891 (+!2808 lt!423399 (tuple2!13485 lt!423391 minValue!1173)) lt!423390) (apply!891 lt!423399 lt!423390))))

(declare-fun lt!423394 () Unit!31676)

(assert (=> b!937836 (= lt!423394 lt!423395)))

(declare-fun lt!423402 () ListLongMap!12195)

(assert (=> b!937836 (= lt!423402 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!423396 () (_ BitVec 64))

(assert (=> b!937836 (= lt!423396 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423384 () (_ BitVec 64))

(assert (=> b!937836 (= lt!423384 (select (arr!27178 _keys!1487) from!1844))))

(declare-fun lt!423400 () Unit!31676)

(assert (=> b!937836 (= lt!423400 (addApplyDifferent!438 lt!423402 lt!423396 zeroValue!1173 lt!423384))))

(assert (=> b!937836 (= (apply!891 (+!2808 lt!423402 (tuple2!13485 lt!423396 zeroValue!1173)) lt!423384) (apply!891 lt!423402 lt!423384))))

(declare-fun lt!423388 () Unit!31676)

(assert (=> b!937836 (= lt!423388 lt!423400)))

(declare-fun lt!423385 () ListLongMap!12195)

(assert (=> b!937836 (= lt!423385 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!423389 () (_ BitVec 64))

(assert (=> b!937836 (= lt!423389 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423397 () (_ BitVec 64))

(assert (=> b!937836 (= lt!423397 (select (arr!27178 _keys!1487) from!1844))))

(assert (=> b!937836 (= lt!423393 (addApplyDifferent!438 lt!423385 lt!423389 minValue!1173 lt!423397))))

(assert (=> b!937836 (= (apply!891 (+!2808 lt!423385 (tuple2!13485 lt!423389 minValue!1173)) lt!423397) (apply!891 lt!423385 lt!423397))))

(declare-fun b!937837 () Bool)

(declare-fun Unit!31687 () Unit!31676)

(assert (=> b!937837 (= e!526689 Unit!31687)))

(declare-fun b!937838 () Bool)

(assert (=> b!937838 (= e!526692 e!526695)))

(assert (=> b!937838 (= c!97607 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!937839 () Bool)

(assert (=> b!937839 (= e!526693 (= (apply!891 lt!423386 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun bm!40796 () Bool)

(assert (=> bm!40796 (= call!40799 (contains!5123 lt!423386 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!937840 () Bool)

(assert (=> b!937840 (= e!526694 (= (apply!891 lt!423386 (select (arr!27178 _keys!1487) from!1844)) (get!14352 (select (arr!27177 _values!1231) from!1844) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!937840 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27637 _values!1231)))))

(assert (=> b!937840 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27638 _keys!1487)))))

(declare-fun b!937841 () Bool)

(assert (=> b!937841 (= e!526688 call!40800)))

(declare-fun b!937842 () Bool)

(declare-fun e!526699 () Bool)

(assert (=> b!937842 (= e!526691 e!526699)))

(declare-fun res!631205 () Bool)

(assert (=> b!937842 (= res!631205 call!40799)))

(assert (=> b!937842 (=> (not res!631205) (not e!526699))))

(declare-fun bm!40797 () Bool)

(assert (=> bm!40797 (= call!40794 call!40798)))

(declare-fun d!113297 () Bool)

(assert (=> d!113297 e!526690))

(declare-fun res!631201 () Bool)

(assert (=> d!113297 (=> (not res!631201) (not e!526690))))

(assert (=> d!113297 (= res!631201 (or (bvsge from!1844 (size!27638 _keys!1487)) (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27638 _keys!1487)))))))

(declare-fun lt!423398 () ListLongMap!12195)

(assert (=> d!113297 (= lt!423386 lt!423398)))

(declare-fun lt!423401 () Unit!31676)

(assert (=> d!113297 (= lt!423401 e!526689)))

(declare-fun c!97606 () Bool)

(assert (=> d!113297 (= c!97606 e!526687)))

(declare-fun res!631208 () Bool)

(assert (=> d!113297 (=> (not res!631208) (not e!526687))))

(assert (=> d!113297 (= res!631208 (bvslt from!1844 (size!27638 _keys!1487)))))

(assert (=> d!113297 (= lt!423398 e!526692)))

(assert (=> d!113297 (= c!97605 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113297 (validMask!0 mask!1881)))

(assert (=> d!113297 (= (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) lt!423386)))

(declare-fun b!937843 () Bool)

(assert (=> b!937843 (= e!526699 (= (apply!891 lt!423386 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!937844 () Bool)

(assert (=> b!937844 (= e!526690 e!526698)))

(declare-fun c!97604 () Bool)

(assert (=> b!937844 (= c!97604 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!113297 c!97605) b!937833))

(assert (= (and d!113297 (not c!97605)) b!937838))

(assert (= (and b!937838 c!97607) b!937827))

(assert (= (and b!937838 (not c!97607)) b!937832))

(assert (= (and b!937832 c!97603) b!937841))

(assert (= (and b!937832 (not c!97603)) b!937824))

(assert (= (or b!937841 b!937824) bm!40793))

(assert (= (or b!937827 bm!40793) bm!40797))

(assert (= (or b!937827 b!937841) bm!40792))

(assert (= (or b!937833 bm!40797) bm!40794))

(assert (= (or b!937833 bm!40792) bm!40791))

(assert (= (and d!113297 res!631208) b!937825))

(assert (= (and d!113297 c!97606) b!937836))

(assert (= (and d!113297 (not c!97606)) b!937837))

(assert (= (and d!113297 res!631201) b!937829))

(assert (= (and b!937829 res!631202) b!937830))

(assert (= (and b!937829 (not res!631209)) b!937834))

(assert (= (and b!937834 res!631203) b!937840))

(assert (= (and b!937829 res!631206) b!937826))

(assert (= (and b!937826 c!97602) b!937842))

(assert (= (and b!937826 (not c!97602)) b!937831))

(assert (= (and b!937842 res!631205) b!937843))

(assert (= (or b!937842 b!937831) bm!40796))

(assert (= (and b!937826 res!631204) b!937844))

(assert (= (and b!937844 c!97604) b!937828))

(assert (= (and b!937844 (not c!97604)) b!937835))

(assert (= (and b!937828 res!631207) b!937839))

(assert (= (or b!937828 b!937835) bm!40795))

(declare-fun b_lambda!14199 () Bool)

(assert (=> (not b_lambda!14199) (not b!937840)))

(assert (=> b!937840 t!27593))

(declare-fun b_and!29125 () Bool)

(assert (= b_and!29123 (and (=> t!27593 result!12131) b_and!29125)))

(assert (=> b!937840 m!872521))

(declare-fun m!872831 () Bool)

(assert (=> b!937840 m!872831))

(assert (=> b!937840 m!872831))

(declare-fun m!872833 () Bool)

(assert (=> b!937840 m!872833))

(declare-fun m!872835 () Bool)

(assert (=> b!937840 m!872835))

(assert (=> b!937840 m!872521))

(declare-fun m!872837 () Bool)

(assert (=> b!937840 m!872837))

(assert (=> b!937840 m!872835))

(declare-fun m!872839 () Bool)

(assert (=> bm!40796 m!872839))

(assert (=> b!937825 m!872831))

(assert (=> b!937825 m!872831))

(declare-fun m!872841 () Bool)

(assert (=> b!937825 m!872841))

(declare-fun m!872843 () Bool)

(assert (=> b!937836 m!872843))

(declare-fun m!872845 () Bool)

(assert (=> b!937836 m!872845))

(declare-fun m!872847 () Bool)

(assert (=> b!937836 m!872847))

(declare-fun m!872849 () Bool)

(assert (=> b!937836 m!872849))

(declare-fun m!872851 () Bool)

(assert (=> b!937836 m!872851))

(declare-fun m!872853 () Bool)

(assert (=> b!937836 m!872853))

(declare-fun m!872855 () Bool)

(assert (=> b!937836 m!872855))

(declare-fun m!872857 () Bool)

(assert (=> b!937836 m!872857))

(assert (=> b!937836 m!872831))

(declare-fun m!872859 () Bool)

(assert (=> b!937836 m!872859))

(assert (=> b!937836 m!872857))

(declare-fun m!872861 () Bool)

(assert (=> b!937836 m!872861))

(declare-fun m!872863 () Bool)

(assert (=> b!937836 m!872863))

(assert (=> b!937836 m!872855))

(declare-fun m!872865 () Bool)

(assert (=> b!937836 m!872865))

(declare-fun m!872867 () Bool)

(assert (=> b!937836 m!872867))

(assert (=> b!937836 m!872867))

(declare-fun m!872869 () Bool)

(assert (=> b!937836 m!872869))

(declare-fun m!872871 () Bool)

(assert (=> b!937836 m!872871))

(assert (=> b!937836 m!872849))

(declare-fun m!872873 () Bool)

(assert (=> b!937836 m!872873))

(declare-fun m!872875 () Bool)

(assert (=> b!937833 m!872875))

(assert (=> b!937830 m!872831))

(assert (=> b!937830 m!872831))

(assert (=> b!937830 m!872841))

(declare-fun m!872877 () Bool)

(assert (=> b!937843 m!872877))

(declare-fun m!872879 () Bool)

(assert (=> bm!40795 m!872879))

(declare-fun m!872881 () Bool)

(assert (=> b!937839 m!872881))

(assert (=> bm!40794 m!872843))

(assert (=> d!113297 m!872507))

(assert (=> b!937834 m!872831))

(assert (=> b!937834 m!872831))

(declare-fun m!872883 () Bool)

(assert (=> b!937834 m!872883))

(declare-fun m!872885 () Bool)

(assert (=> bm!40791 m!872885))

(assert (=> b!937595 d!113297))

(declare-fun d!113299 () Bool)

(declare-fun res!631214 () Bool)

(declare-fun e!526704 () Bool)

(assert (=> d!113299 (=> res!631214 e!526704)))

(assert (=> d!113299 (= res!631214 (= (select (arr!27178 _keys!1487) from!1844) k0!1099))))

(assert (=> d!113299 (= (arrayContainsKey!0 _keys!1487 k0!1099 from!1844) e!526704)))

(declare-fun b!937849 () Bool)

(declare-fun e!526705 () Bool)

(assert (=> b!937849 (= e!526704 e!526705)))

(declare-fun res!631215 () Bool)

(assert (=> b!937849 (=> (not res!631215) (not e!526705))))

(assert (=> b!937849 (= res!631215 (bvslt (bvadd from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun b!937850 () Bool)

(assert (=> b!937850 (= e!526705 (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001)))))

(assert (= (and d!113299 (not res!631214)) b!937849))

(assert (= (and b!937849 res!631215) b!937850))

(assert (=> d!113299 m!872831))

(declare-fun m!872887 () Bool)

(assert (=> b!937850 m!872887))

(assert (=> b!937604 d!113299))

(declare-fun mapIsEmpty!32166 () Bool)

(declare-fun mapRes!32166 () Bool)

(assert (=> mapIsEmpty!32166 mapRes!32166))

(declare-fun condMapEmpty!32166 () Bool)

(declare-fun mapDefault!32166 () ValueCell!9648)

(assert (=> mapNonEmpty!32160 (= condMapEmpty!32166 (= mapRest!32160 ((as const (Array (_ BitVec 32) ValueCell!9648)) mapDefault!32166)))))

(declare-fun e!526711 () Bool)

(assert (=> mapNonEmpty!32160 (= tp!61710 (and e!526711 mapRes!32166))))

(declare-fun b!937858 () Bool)

(assert (=> b!937858 (= e!526711 tp_is_empty!20259)))

(declare-fun mapNonEmpty!32166 () Bool)

(declare-fun tp!61719 () Bool)

(declare-fun e!526710 () Bool)

(assert (=> mapNonEmpty!32166 (= mapRes!32166 (and tp!61719 e!526710))))

(declare-fun mapRest!32166 () (Array (_ BitVec 32) ValueCell!9648))

(declare-fun mapValue!32166 () ValueCell!9648)

(declare-fun mapKey!32166 () (_ BitVec 32))

(assert (=> mapNonEmpty!32166 (= mapRest!32160 (store mapRest!32166 mapKey!32166 mapValue!32166))))

(declare-fun b!937857 () Bool)

(assert (=> b!937857 (= e!526710 tp_is_empty!20259)))

(assert (= (and mapNonEmpty!32160 condMapEmpty!32166) mapIsEmpty!32166))

(assert (= (and mapNonEmpty!32160 (not condMapEmpty!32166)) mapNonEmpty!32166))

(assert (= (and mapNonEmpty!32166 ((_ is ValueCellFull!9648) mapValue!32166)) b!937857))

(assert (= (and mapNonEmpty!32160 ((_ is ValueCellFull!9648) mapDefault!32166)) b!937858))

(declare-fun m!872889 () Bool)

(assert (=> mapNonEmpty!32166 m!872889))

(declare-fun b_lambda!14201 () Bool)

(assert (= b_lambda!14193 (or (and start!79730 b_free!17751) b_lambda!14201)))

(declare-fun b_lambda!14203 () Bool)

(assert (= b_lambda!14195 (or (and start!79730 b_free!17751) b_lambda!14203)))

(declare-fun b_lambda!14205 () Bool)

(assert (= b_lambda!14197 (or (and start!79730 b_free!17751) b_lambda!14205)))

(declare-fun b_lambda!14207 () Bool)

(assert (= b_lambda!14199 (or (and start!79730 b_free!17751) b_lambda!14207)))

(check-sat (not b!937716) (not bm!40790) (not b!937747) (not b!937815) tp_is_empty!20259 (not bm!40775) (not d!113263) (not b!937850) (not bm!40770) (not b!937758) (not b!937840) (not b!937839) (not b!937738) (not b!937843) (not b_lambda!14191) (not d!113257) (not bm!40782) (not b!937800) (not d!113265) b_and!29125 (not b!937790) (not b_next!17751) (not b!937729) (not b!937823) (not bm!40777) (not bm!40789) (not b!937825) (not b!937821) (not b!937813) (not b!937726) (not b!937722) (not d!113267) (not b!937734) (not b!937713) (not b_lambda!14201) (not b!937740) (not b_lambda!14205) (not b!937836) (not b!937744) (not b_lambda!14203) (not b!937793) (not d!113249) (not b!937816) (not bm!40791) (not b!937830) (not d!113295) (not d!113271) (not b!937778) (not bm!40796) (not d!113253) (not b!937833) (not b!937818) (not mapNonEmpty!32166) (not bm!40774) (not bm!40795) (not bm!40794) (not b!937708) (not b!937811) (not b!937799) (not b!937810) (not b!937834) (not bm!40773) (not bm!40780) (not b!937743) (not b!937723) (not d!113297) (not b!937771) (not d!113255) (not b!937769) (not bm!40781) (not bm!40786) (not b!937717) (not b!937779) (not d!113251) (not d!113261) (not b!937792) (not d!113287) (not b!937737) (not b!937761) (not b!937819) (not d!113291) (not d!113259) (not b!937757) (not b_lambda!14207) (not d!113275) (not b!937719) (not b!937776))
(check-sat b_and!29125 (not b_next!17751))
(get-model)

(declare-fun d!113301 () Bool)

(declare-fun e!526712 () Bool)

(assert (=> d!113301 e!526712))

(declare-fun res!631216 () Bool)

(assert (=> d!113301 (=> (not res!631216) (not e!526712))))

(declare-fun lt!423409 () ListLongMap!12195)

(assert (=> d!113301 (= res!631216 (contains!5123 lt!423409 (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun lt!423407 () List!19291)

(assert (=> d!113301 (= lt!423409 (ListLongMap!12196 lt!423407))))

(declare-fun lt!423408 () Unit!31676)

(declare-fun lt!423406 () Unit!31676)

(assert (=> d!113301 (= lt!423408 lt!423406)))

(assert (=> d!113301 (= (getValueByKey!486 lt!423407 (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113301 (= lt!423406 (lemmaContainsTupThenGetReturnValue!260 lt!423407 (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113301 (= lt!423407 (insertStrictlySorted!316 (toList!6113 call!40781) (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113301 (= (+!2808 call!40781 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) lt!423409)))

(declare-fun b!937859 () Bool)

(declare-fun res!631217 () Bool)

(assert (=> b!937859 (=> (not res!631217) (not e!526712))))

(assert (=> b!937859 (= res!631217 (= (getValueByKey!486 (toList!6113 lt!423409) (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun b!937860 () Bool)

(assert (=> b!937860 (= e!526712 (contains!5124 (toList!6113 lt!423409) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(assert (= (and d!113301 res!631216) b!937859))

(assert (= (and b!937859 res!631217) b!937860))

(declare-fun m!872891 () Bool)

(assert (=> d!113301 m!872891))

(declare-fun m!872893 () Bool)

(assert (=> d!113301 m!872893))

(declare-fun m!872895 () Bool)

(assert (=> d!113301 m!872895))

(declare-fun m!872897 () Bool)

(assert (=> d!113301 m!872897))

(declare-fun m!872899 () Bool)

(assert (=> b!937859 m!872899))

(declare-fun m!872901 () Bool)

(assert (=> b!937860 m!872901))

(assert (=> b!937737 d!113301))

(declare-fun d!113303 () Bool)

(assert (=> d!113303 (= (apply!891 lt!423279 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14353 (getValueByKey!486 (toList!6113 lt!423279) (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun bs!26299 () Bool)

(assert (= bs!26299 d!113303))

(assert (=> bs!26299 m!872561))

(declare-fun m!872903 () Bool)

(assert (=> bs!26299 m!872903))

(assert (=> bs!26299 m!872903))

(declare-fun m!872905 () Bool)

(assert (=> bs!26299 m!872905))

(assert (=> b!937723 d!113303))

(assert (=> b!937723 d!113273))

(declare-fun d!113305 () Bool)

(assert (=> d!113305 (= (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (and (not (= (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!937708 d!113305))

(declare-fun d!113307 () Bool)

(declare-fun isEmpty!701 (Option!492) Bool)

(assert (=> d!113307 (= (isDefined!356 (getValueByKey!486 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099)) (not (isEmpty!701 (getValueByKey!486 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099))))))

(declare-fun bs!26300 () Bool)

(assert (= bs!26300 d!113307))

(assert (=> bs!26300 m!872813))

(declare-fun m!872907 () Bool)

(assert (=> bs!26300 m!872907))

(assert (=> b!937815 d!113307))

(declare-fun b!937870 () Bool)

(declare-fun e!526717 () Option!492)

(declare-fun e!526718 () Option!492)

(assert (=> b!937870 (= e!526717 e!526718)))

(declare-fun c!97613 () Bool)

(assert (=> b!937870 (= c!97613 (and ((_ is Cons!19287) (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))) (not (= (_1!6752 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)))) k0!1099))))))

(declare-fun b!937871 () Bool)

(assert (=> b!937871 (= e!526718 (getValueByKey!486 (t!27594 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))) k0!1099))))

(declare-fun b!937869 () Bool)

(assert (=> b!937869 (= e!526717 (Some!491 (_2!6752 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))))))

(declare-fun b!937872 () Bool)

(assert (=> b!937872 (= e!526718 None!490)))

(declare-fun d!113309 () Bool)

(declare-fun c!97612 () Bool)

(assert (=> d!113309 (= c!97612 (and ((_ is Cons!19287) (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))) (= (_1!6752 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)))) k0!1099)))))

(assert (=> d!113309 (= (getValueByKey!486 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099) e!526717)))

(assert (= (and d!113309 c!97612) b!937869))

(assert (= (and d!113309 (not c!97612)) b!937870))

(assert (= (and b!937870 c!97613) b!937871))

(assert (= (and b!937870 (not c!97613)) b!937872))

(declare-fun m!872909 () Bool)

(assert (=> b!937871 m!872909))

(assert (=> b!937815 d!113309))

(declare-fun d!113311 () Bool)

(declare-fun e!526719 () Bool)

(assert (=> d!113311 e!526719))

(declare-fun res!631218 () Bool)

(assert (=> d!113311 (=> (not res!631218) (not e!526719))))

(declare-fun lt!423413 () ListLongMap!12195)

(assert (=> d!113311 (= res!631218 (contains!5123 lt!423413 (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun lt!423411 () List!19291)

(assert (=> d!113311 (= lt!423413 (ListLongMap!12196 lt!423411))))

(declare-fun lt!423412 () Unit!31676)

(declare-fun lt!423410 () Unit!31676)

(assert (=> d!113311 (= lt!423412 lt!423410)))

(assert (=> d!113311 (= (getValueByKey!486 lt!423411 (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113311 (= lt!423410 (lemmaContainsTupThenGetReturnValue!260 lt!423411 (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113311 (= lt!423411 (insertStrictlySorted!316 (toList!6113 call!40795) (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113311 (= (+!2808 call!40795 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) lt!423413)))

(declare-fun b!937873 () Bool)

(declare-fun res!631219 () Bool)

(assert (=> b!937873 (=> (not res!631219) (not e!526719))))

(assert (=> b!937873 (= res!631219 (= (getValueByKey!486 (toList!6113 lt!423413) (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun b!937874 () Bool)

(assert (=> b!937874 (= e!526719 (contains!5124 (toList!6113 lt!423413) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(assert (= (and d!113311 res!631218) b!937873))

(assert (= (and b!937873 res!631219) b!937874))

(declare-fun m!872911 () Bool)

(assert (=> d!113311 m!872911))

(declare-fun m!872913 () Bool)

(assert (=> d!113311 m!872913))

(declare-fun m!872915 () Bool)

(assert (=> d!113311 m!872915))

(declare-fun m!872917 () Bool)

(assert (=> d!113311 m!872917))

(declare-fun m!872919 () Bool)

(assert (=> b!937873 m!872919))

(declare-fun m!872921 () Bool)

(assert (=> b!937874 m!872921))

(assert (=> b!937833 d!113311))

(declare-fun d!113313 () Bool)

(assert (=> d!113313 (isDefined!356 (getValueByKey!486 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099))))

(declare-fun lt!423416 () Unit!31676)

(declare-fun choose!1565 (List!19291 (_ BitVec 64)) Unit!31676)

(assert (=> d!113313 (= lt!423416 (choose!1565 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099))))

(declare-fun e!526722 () Bool)

(assert (=> d!113313 e!526722))

(declare-fun res!631222 () Bool)

(assert (=> d!113313 (=> (not res!631222) (not e!526722))))

(declare-fun isStrictlySorted!499 (List!19291) Bool)

(assert (=> d!113313 (= res!631222 (isStrictlySorted!499 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))))

(assert (=> d!113313 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099) lt!423416)))

(declare-fun b!937877 () Bool)

(assert (=> b!937877 (= e!526722 (containsKey!451 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099))))

(assert (= (and d!113313 res!631222) b!937877))

(assert (=> d!113313 m!872813))

(assert (=> d!113313 m!872813))

(assert (=> d!113313 m!872815))

(declare-fun m!872923 () Bool)

(assert (=> d!113313 m!872923))

(declare-fun m!872925 () Bool)

(assert (=> d!113313 m!872925))

(assert (=> b!937877 m!872809))

(assert (=> b!937813 d!113313))

(assert (=> b!937813 d!113307))

(assert (=> b!937813 d!113309))

(assert (=> b!937776 d!113299))

(declare-fun d!113315 () Bool)

(declare-fun res!631227 () Bool)

(declare-fun e!526727 () Bool)

(assert (=> d!113315 (=> res!631227 e!526727)))

(assert (=> d!113315 (= res!631227 (and ((_ is Cons!19287) (toList!6113 lt!423184)) (= (_1!6752 (h!20433 (toList!6113 lt!423184))) k0!1099)))))

(assert (=> d!113315 (= (containsKey!451 (toList!6113 lt!423184) k0!1099) e!526727)))

(declare-fun b!937882 () Bool)

(declare-fun e!526728 () Bool)

(assert (=> b!937882 (= e!526727 e!526728)))

(declare-fun res!631228 () Bool)

(assert (=> b!937882 (=> (not res!631228) (not e!526728))))

(assert (=> b!937882 (= res!631228 (and (or (not ((_ is Cons!19287) (toList!6113 lt!423184))) (bvsle (_1!6752 (h!20433 (toList!6113 lt!423184))) k0!1099)) ((_ is Cons!19287) (toList!6113 lt!423184)) (bvslt (_1!6752 (h!20433 (toList!6113 lt!423184))) k0!1099)))))

(declare-fun b!937883 () Bool)

(assert (=> b!937883 (= e!526728 (containsKey!451 (t!27594 (toList!6113 lt!423184)) k0!1099))))

(assert (= (and d!113315 (not res!631227)) b!937882))

(assert (= (and b!937882 res!631228) b!937883))

(declare-fun m!872927 () Bool)

(assert (=> b!937883 m!872927))

(assert (=> d!113295 d!113315))

(declare-fun d!113317 () Bool)

(assert (=> d!113317 (= (apply!891 lt!423279 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14353 (getValueByKey!486 (toList!6113 lt!423279) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26301 () Bool)

(assert (= bs!26301 d!113317))

(declare-fun m!872929 () Bool)

(assert (=> bs!26301 m!872929))

(assert (=> bs!26301 m!872929))

(declare-fun m!872931 () Bool)

(assert (=> bs!26301 m!872931))

(assert (=> b!937726 d!113317))

(assert (=> d!113297 d!113281))

(declare-fun d!113319 () Bool)

(declare-fun e!526730 () Bool)

(assert (=> d!113319 e!526730))

(declare-fun res!631229 () Bool)

(assert (=> d!113319 (=> res!631229 e!526730)))

(declare-fun lt!423419 () Bool)

(assert (=> d!113319 (= res!631229 (not lt!423419))))

(declare-fun lt!423417 () Bool)

(assert (=> d!113319 (= lt!423419 lt!423417)))

(declare-fun lt!423420 () Unit!31676)

(declare-fun e!526729 () Unit!31676)

(assert (=> d!113319 (= lt!423420 e!526729)))

(declare-fun c!97614 () Bool)

(assert (=> d!113319 (= c!97614 lt!423417)))

(assert (=> d!113319 (= lt!423417 (containsKey!451 (toList!6113 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193))) k0!1099))))

(assert (=> d!113319 (= (contains!5123 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193)) k0!1099) lt!423419)))

(declare-fun b!937884 () Bool)

(declare-fun lt!423418 () Unit!31676)

(assert (=> b!937884 (= e!526729 lt!423418)))

(assert (=> b!937884 (= lt!423418 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193))) k0!1099))))

(assert (=> b!937884 (isDefined!356 (getValueByKey!486 (toList!6113 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193))) k0!1099))))

(declare-fun b!937885 () Bool)

(declare-fun Unit!31688 () Unit!31676)

(assert (=> b!937885 (= e!526729 Unit!31688)))

(declare-fun b!937886 () Bool)

(assert (=> b!937886 (= e!526730 (isDefined!356 (getValueByKey!486 (toList!6113 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193))) k0!1099)))))

(assert (= (and d!113319 c!97614) b!937884))

(assert (= (and d!113319 (not c!97614)) b!937885))

(assert (= (and d!113319 (not res!631229)) b!937886))

(declare-fun m!872933 () Bool)

(assert (=> d!113319 m!872933))

(declare-fun m!872935 () Bool)

(assert (=> b!937884 m!872935))

(declare-fun m!872937 () Bool)

(assert (=> b!937884 m!872937))

(assert (=> b!937884 m!872937))

(declare-fun m!872939 () Bool)

(assert (=> b!937884 m!872939))

(assert (=> b!937886 m!872937))

(assert (=> b!937886 m!872937))

(assert (=> b!937886 m!872939))

(assert (=> d!113259 d!113319))

(declare-fun d!113321 () Bool)

(declare-fun e!526731 () Bool)

(assert (=> d!113321 e!526731))

(declare-fun res!631230 () Bool)

(assert (=> d!113321 (=> (not res!631230) (not e!526731))))

(declare-fun lt!423424 () ListLongMap!12195)

(assert (=> d!113321 (= res!631230 (contains!5123 lt!423424 (_1!6752 (tuple2!13485 lt!423187 lt!423193))))))

(declare-fun lt!423422 () List!19291)

(assert (=> d!113321 (= lt!423424 (ListLongMap!12196 lt!423422))))

(declare-fun lt!423423 () Unit!31676)

(declare-fun lt!423421 () Unit!31676)

(assert (=> d!113321 (= lt!423423 lt!423421)))

(assert (=> d!113321 (= (getValueByKey!486 lt!423422 (_1!6752 (tuple2!13485 lt!423187 lt!423193))) (Some!491 (_2!6752 (tuple2!13485 lt!423187 lt!423193))))))

(assert (=> d!113321 (= lt!423421 (lemmaContainsTupThenGetReturnValue!260 lt!423422 (_1!6752 (tuple2!13485 lt!423187 lt!423193)) (_2!6752 (tuple2!13485 lt!423187 lt!423193))))))

(assert (=> d!113321 (= lt!423422 (insertStrictlySorted!316 (toList!6113 lt!423184) (_1!6752 (tuple2!13485 lt!423187 lt!423193)) (_2!6752 (tuple2!13485 lt!423187 lt!423193))))))

(assert (=> d!113321 (= (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193)) lt!423424)))

(declare-fun b!937887 () Bool)

(declare-fun res!631231 () Bool)

(assert (=> b!937887 (=> (not res!631231) (not e!526731))))

(assert (=> b!937887 (= res!631231 (= (getValueByKey!486 (toList!6113 lt!423424) (_1!6752 (tuple2!13485 lt!423187 lt!423193))) (Some!491 (_2!6752 (tuple2!13485 lt!423187 lt!423193)))))))

(declare-fun b!937888 () Bool)

(assert (=> b!937888 (= e!526731 (contains!5124 (toList!6113 lt!423424) (tuple2!13485 lt!423187 lt!423193)))))

(assert (= (and d!113321 res!631230) b!937887))

(assert (= (and b!937887 res!631231) b!937888))

(declare-fun m!872941 () Bool)

(assert (=> d!113321 m!872941))

(declare-fun m!872943 () Bool)

(assert (=> d!113321 m!872943))

(declare-fun m!872945 () Bool)

(assert (=> d!113321 m!872945))

(declare-fun m!872947 () Bool)

(assert (=> d!113321 m!872947))

(declare-fun m!872949 () Bool)

(assert (=> b!937887 m!872949))

(declare-fun m!872951 () Bool)

(assert (=> b!937888 m!872951))

(assert (=> d!113259 d!113321))

(declare-fun d!113323 () Bool)

(assert (=> d!113323 (contains!5123 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193)) k0!1099)))

(assert (=> d!113323 true))

(declare-fun _$35!431 () Unit!31676)

(assert (=> d!113323 (= (choose!1563 lt!423184 lt!423187 lt!423193 k0!1099) _$35!431)))

(declare-fun bs!26302 () Bool)

(assert (= bs!26302 d!113323))

(assert (=> bs!26302 m!872733))

(assert (=> bs!26302 m!872733))

(assert (=> bs!26302 m!872757))

(assert (=> d!113259 d!113323))

(assert (=> d!113259 d!113295))

(declare-fun d!113325 () Bool)

(assert (=> d!113325 (= (validKeyInArray!0 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)) (and (not (= (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!937810 d!113325))

(declare-fun d!113327 () Bool)

(declare-fun res!631232 () Bool)

(declare-fun e!526732 () Bool)

(assert (=> d!113327 (=> res!631232 e!526732)))

(assert (=> d!113327 (= res!631232 (= (select (arr!27178 _keys!1487) (bvadd from!1844 #b00000000000000000000000000000001)) k0!1099))))

(assert (=> d!113327 (= (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001)) e!526732)))

(declare-fun b!937890 () Bool)

(declare-fun e!526733 () Bool)

(assert (=> b!937890 (= e!526732 e!526733)))

(declare-fun res!631233 () Bool)

(assert (=> b!937890 (=> (not res!631233) (not e!526733))))

(assert (=> b!937890 (= res!631233 (bvslt (bvadd from!1844 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun b!937891 () Bool)

(assert (=> b!937891 (= e!526733 (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!113327 (not res!631232)) b!937890))

(assert (= (and b!937890 res!631233) b!937891))

(declare-fun m!872953 () Bool)

(assert (=> d!113327 m!872953))

(declare-fun m!872955 () Bool)

(assert (=> b!937891 m!872955))

(assert (=> b!937850 d!113327))

(declare-fun d!113329 () Bool)

(declare-fun e!526736 () Bool)

(assert (=> d!113329 e!526736))

(declare-fun c!97617 () Bool)

(assert (=> d!113329 (= c!97617 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!113329 true))

(declare-fun _$29!180 () Unit!31676)

(assert (=> d!113329 (= (choose!1564 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235) _$29!180)))

(declare-fun b!937896 () Bool)

(assert (=> b!937896 (= e!526736 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!937897 () Bool)

(assert (=> b!937897 (= e!526736 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!113329 c!97617) b!937896))

(assert (= (and d!113329 (not c!97617)) b!937897))

(assert (=> b!937896 m!872551))

(assert (=> d!113263 d!113329))

(assert (=> d!113263 d!113281))

(declare-fun d!113331 () Bool)

(assert (=> d!113331 (= (apply!891 lt!423386 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14353 (getValueByKey!486 (toList!6113 lt!423386) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26303 () Bool)

(assert (= bs!26303 d!113331))

(declare-fun m!872957 () Bool)

(assert (=> bs!26303 m!872957))

(assert (=> bs!26303 m!872957))

(declare-fun m!872959 () Bool)

(assert (=> bs!26303 m!872959))

(assert (=> b!937843 d!113331))

(declare-fun d!113333 () Bool)

(declare-fun e!526737 () Bool)

(assert (=> d!113333 e!526737))

(declare-fun res!631234 () Bool)

(assert (=> d!113333 (=> (not res!631234) (not e!526737))))

(declare-fun lt!423428 () ListLongMap!12195)

(assert (=> d!113333 (= res!631234 (contains!5123 lt!423428 (_1!6752 (tuple2!13485 lt!423304 minValue!1173))))))

(declare-fun lt!423426 () List!19291)

(assert (=> d!113333 (= lt!423428 (ListLongMap!12196 lt!423426))))

(declare-fun lt!423427 () Unit!31676)

(declare-fun lt!423425 () Unit!31676)

(assert (=> d!113333 (= lt!423427 lt!423425)))

(assert (=> d!113333 (= (getValueByKey!486 lt!423426 (_1!6752 (tuple2!13485 lt!423304 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423304 minValue!1173))))))

(assert (=> d!113333 (= lt!423425 (lemmaContainsTupThenGetReturnValue!260 lt!423426 (_1!6752 (tuple2!13485 lt!423304 minValue!1173)) (_2!6752 (tuple2!13485 lt!423304 minValue!1173))))))

(assert (=> d!113333 (= lt!423426 (insertStrictlySorted!316 (toList!6113 lt!423300) (_1!6752 (tuple2!13485 lt!423304 minValue!1173)) (_2!6752 (tuple2!13485 lt!423304 minValue!1173))))))

(assert (=> d!113333 (= (+!2808 lt!423300 (tuple2!13485 lt!423304 minValue!1173)) lt!423428)))

(declare-fun b!937898 () Bool)

(declare-fun res!631235 () Bool)

(assert (=> b!937898 (=> (not res!631235) (not e!526737))))

(assert (=> b!937898 (= res!631235 (= (getValueByKey!486 (toList!6113 lt!423428) (_1!6752 (tuple2!13485 lt!423304 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423304 minValue!1173)))))))

(declare-fun b!937899 () Bool)

(assert (=> b!937899 (= e!526737 (contains!5124 (toList!6113 lt!423428) (tuple2!13485 lt!423304 minValue!1173)))))

(assert (= (and d!113333 res!631234) b!937898))

(assert (= (and b!937898 res!631235) b!937899))

(declare-fun m!872961 () Bool)

(assert (=> d!113333 m!872961))

(declare-fun m!872963 () Bool)

(assert (=> d!113333 m!872963))

(declare-fun m!872965 () Bool)

(assert (=> d!113333 m!872965))

(declare-fun m!872967 () Bool)

(assert (=> d!113333 m!872967))

(declare-fun m!872969 () Bool)

(assert (=> b!937898 m!872969))

(declare-fun m!872971 () Bool)

(assert (=> b!937899 m!872971))

(assert (=> b!937740 d!113333))

(declare-fun d!113335 () Bool)

(assert (=> d!113335 (= (apply!891 (+!2808 lt!423300 (tuple2!13485 lt!423304 minValue!1173)) lt!423312) (apply!891 lt!423300 lt!423312))))

(declare-fun lt!423429 () Unit!31676)

(assert (=> d!113335 (= lt!423429 (choose!1561 lt!423300 lt!423304 minValue!1173 lt!423312))))

(declare-fun e!526738 () Bool)

(assert (=> d!113335 e!526738))

(declare-fun res!631236 () Bool)

(assert (=> d!113335 (=> (not res!631236) (not e!526738))))

(assert (=> d!113335 (= res!631236 (contains!5123 lt!423300 lt!423312))))

(assert (=> d!113335 (= (addApplyDifferent!438 lt!423300 lt!423304 minValue!1173 lt!423312) lt!423429)))

(declare-fun b!937900 () Bool)

(assert (=> b!937900 (= e!526738 (not (= lt!423312 lt!423304)))))

(assert (= (and d!113335 res!631236) b!937900))

(declare-fun m!872973 () Bool)

(assert (=> d!113335 m!872973))

(assert (=> d!113335 m!872705))

(assert (=> d!113335 m!872703))

(assert (=> d!113335 m!872703))

(assert (=> d!113335 m!872707))

(declare-fun m!872975 () Bool)

(assert (=> d!113335 m!872975))

(assert (=> b!937740 d!113335))

(declare-fun d!113337 () Bool)

(assert (=> d!113337 (= (apply!891 (+!2808 lt!423314 (tuple2!13485 lt!423306 minValue!1173)) lt!423305) (apply!891 lt!423314 lt!423305))))

(declare-fun lt!423430 () Unit!31676)

(assert (=> d!113337 (= lt!423430 (choose!1561 lt!423314 lt!423306 minValue!1173 lt!423305))))

(declare-fun e!526739 () Bool)

(assert (=> d!113337 e!526739))

(declare-fun res!631237 () Bool)

(assert (=> d!113337 (=> (not res!631237) (not e!526739))))

(assert (=> d!113337 (= res!631237 (contains!5123 lt!423314 lt!423305))))

(assert (=> d!113337 (= (addApplyDifferent!438 lt!423314 lt!423306 minValue!1173 lt!423305) lt!423430)))

(declare-fun b!937901 () Bool)

(assert (=> b!937901 (= e!526739 (not (= lt!423305 lt!423306)))))

(assert (= (and d!113337 res!631237) b!937901))

(declare-fun m!872977 () Bool)

(assert (=> d!113337 m!872977))

(assert (=> d!113337 m!872699))

(assert (=> d!113337 m!872713))

(assert (=> d!113337 m!872713))

(assert (=> d!113337 m!872715))

(declare-fun m!872979 () Bool)

(assert (=> d!113337 m!872979))

(assert (=> b!937740 d!113337))

(declare-fun d!113339 () Bool)

(assert (=> d!113339 (= (apply!891 lt!423317 lt!423299) (get!14353 (getValueByKey!486 (toList!6113 lt!423317) lt!423299)))))

(declare-fun bs!26304 () Bool)

(assert (= bs!26304 d!113339))

(declare-fun m!872981 () Bool)

(assert (=> bs!26304 m!872981))

(assert (=> bs!26304 m!872981))

(declare-fun m!872983 () Bool)

(assert (=> bs!26304 m!872983))

(assert (=> b!937740 d!113339))

(declare-fun d!113341 () Bool)

(assert (=> d!113341 (= (apply!891 lt!423300 lt!423312) (get!14353 (getValueByKey!486 (toList!6113 lt!423300) lt!423312)))))

(declare-fun bs!26305 () Bool)

(assert (= bs!26305 d!113341))

(declare-fun m!872985 () Bool)

(assert (=> bs!26305 m!872985))

(assert (=> bs!26305 m!872985))

(declare-fun m!872987 () Bool)

(assert (=> bs!26305 m!872987))

(assert (=> b!937740 d!113341))

(declare-fun d!113343 () Bool)

(declare-fun e!526741 () Bool)

(assert (=> d!113343 e!526741))

(declare-fun res!631238 () Bool)

(assert (=> d!113343 (=> res!631238 e!526741)))

(declare-fun lt!423433 () Bool)

(assert (=> d!113343 (= res!631238 (not lt!423433))))

(declare-fun lt!423431 () Bool)

(assert (=> d!113343 (= lt!423433 lt!423431)))

(declare-fun lt!423434 () Unit!31676)

(declare-fun e!526740 () Unit!31676)

(assert (=> d!113343 (= lt!423434 e!526740)))

(declare-fun c!97618 () Bool)

(assert (=> d!113343 (= c!97618 lt!423431)))

(assert (=> d!113343 (= lt!423431 (containsKey!451 (toList!6113 (+!2808 lt!423302 (tuple2!13485 lt!423319 zeroValue!1173))) lt!423320))))

(assert (=> d!113343 (= (contains!5123 (+!2808 lt!423302 (tuple2!13485 lt!423319 zeroValue!1173)) lt!423320) lt!423433)))

(declare-fun b!937902 () Bool)

(declare-fun lt!423432 () Unit!31676)

(assert (=> b!937902 (= e!526740 lt!423432)))

(assert (=> b!937902 (= lt!423432 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 (+!2808 lt!423302 (tuple2!13485 lt!423319 zeroValue!1173))) lt!423320))))

(assert (=> b!937902 (isDefined!356 (getValueByKey!486 (toList!6113 (+!2808 lt!423302 (tuple2!13485 lt!423319 zeroValue!1173))) lt!423320))))

(declare-fun b!937903 () Bool)

(declare-fun Unit!31689 () Unit!31676)

(assert (=> b!937903 (= e!526740 Unit!31689)))

(declare-fun b!937904 () Bool)

(assert (=> b!937904 (= e!526741 (isDefined!356 (getValueByKey!486 (toList!6113 (+!2808 lt!423302 (tuple2!13485 lt!423319 zeroValue!1173))) lt!423320)))))

(assert (= (and d!113343 c!97618) b!937902))

(assert (= (and d!113343 (not c!97618)) b!937903))

(assert (= (and d!113343 (not res!631238)) b!937904))

(declare-fun m!872989 () Bool)

(assert (=> d!113343 m!872989))

(declare-fun m!872991 () Bool)

(assert (=> b!937902 m!872991))

(declare-fun m!872993 () Bool)

(assert (=> b!937902 m!872993))

(assert (=> b!937902 m!872993))

(declare-fun m!872995 () Bool)

(assert (=> b!937902 m!872995))

(assert (=> b!937904 m!872993))

(assert (=> b!937904 m!872993))

(assert (=> b!937904 m!872995))

(assert (=> b!937740 d!113343))

(declare-fun d!113345 () Bool)

(assert (=> d!113345 (= (apply!891 (+!2808 lt!423317 (tuple2!13485 lt!423311 zeroValue!1173)) lt!423299) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423317 (tuple2!13485 lt!423311 zeroValue!1173))) lt!423299)))))

(declare-fun bs!26306 () Bool)

(assert (= bs!26306 d!113345))

(declare-fun m!872997 () Bool)

(assert (=> bs!26306 m!872997))

(assert (=> bs!26306 m!872997))

(declare-fun m!872999 () Bool)

(assert (=> bs!26306 m!872999))

(assert (=> b!937740 d!113345))

(declare-fun d!113347 () Bool)

(assert (=> d!113347 (= (apply!891 (+!2808 lt!423300 (tuple2!13485 lt!423304 minValue!1173)) lt!423312) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423300 (tuple2!13485 lt!423304 minValue!1173))) lt!423312)))))

(declare-fun bs!26307 () Bool)

(assert (= bs!26307 d!113347))

(declare-fun m!873001 () Bool)

(assert (=> bs!26307 m!873001))

(assert (=> bs!26307 m!873001))

(declare-fun m!873003 () Bool)

(assert (=> bs!26307 m!873003))

(assert (=> b!937740 d!113347))

(declare-fun d!113349 () Bool)

(assert (=> d!113349 (= (apply!891 (+!2808 lt!423314 (tuple2!13485 lt!423306 minValue!1173)) lt!423305) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423314 (tuple2!13485 lt!423306 minValue!1173))) lt!423305)))))

(declare-fun bs!26308 () Bool)

(assert (= bs!26308 d!113349))

(declare-fun m!873005 () Bool)

(assert (=> bs!26308 m!873005))

(assert (=> bs!26308 m!873005))

(declare-fun m!873007 () Bool)

(assert (=> bs!26308 m!873007))

(assert (=> b!937740 d!113349))

(declare-fun d!113351 () Bool)

(assert (=> d!113351 (= (apply!891 lt!423314 lt!423305) (get!14353 (getValueByKey!486 (toList!6113 lt!423314) lt!423305)))))

(declare-fun bs!26309 () Bool)

(assert (= bs!26309 d!113351))

(declare-fun m!873009 () Bool)

(assert (=> bs!26309 m!873009))

(assert (=> bs!26309 m!873009))

(declare-fun m!873011 () Bool)

(assert (=> bs!26309 m!873011))

(assert (=> b!937740 d!113351))

(declare-fun d!113353 () Bool)

(assert (=> d!113353 (= (apply!891 (+!2808 lt!423317 (tuple2!13485 lt!423311 zeroValue!1173)) lt!423299) (apply!891 lt!423317 lt!423299))))

(declare-fun lt!423435 () Unit!31676)

(assert (=> d!113353 (= lt!423435 (choose!1561 lt!423317 lt!423311 zeroValue!1173 lt!423299))))

(declare-fun e!526742 () Bool)

(assert (=> d!113353 e!526742))

(declare-fun res!631239 () Bool)

(assert (=> d!113353 (=> (not res!631239) (not e!526742))))

(assert (=> d!113353 (= res!631239 (contains!5123 lt!423317 lt!423299))))

(assert (=> d!113353 (= (addApplyDifferent!438 lt!423317 lt!423311 zeroValue!1173 lt!423299) lt!423435)))

(declare-fun b!937905 () Bool)

(assert (=> b!937905 (= e!526742 (not (= lt!423299 lt!423311)))))

(assert (= (and d!113353 res!631239) b!937905))

(declare-fun m!873013 () Bool)

(assert (=> d!113353 m!873013))

(assert (=> d!113353 m!872693))

(assert (=> d!113353 m!872701))

(assert (=> d!113353 m!872701))

(assert (=> d!113353 m!872711))

(declare-fun m!873015 () Bool)

(assert (=> d!113353 m!873015))

(assert (=> b!937740 d!113353))

(declare-fun d!113355 () Bool)

(assert (=> d!113355 (contains!5123 (+!2808 lt!423302 (tuple2!13485 lt!423319 zeroValue!1173)) lt!423320)))

(declare-fun lt!423436 () Unit!31676)

(assert (=> d!113355 (= lt!423436 (choose!1563 lt!423302 lt!423319 zeroValue!1173 lt!423320))))

(assert (=> d!113355 (contains!5123 lt!423302 lt!423320)))

(assert (=> d!113355 (= (addStillContains!564 lt!423302 lt!423319 zeroValue!1173 lt!423320) lt!423436)))

(declare-fun bs!26310 () Bool)

(assert (= bs!26310 d!113355))

(assert (=> bs!26310 m!872695))

(assert (=> bs!26310 m!872695))

(assert (=> bs!26310 m!872719))

(declare-fun m!873017 () Bool)

(assert (=> bs!26310 m!873017))

(declare-fun m!873019 () Bool)

(assert (=> bs!26310 m!873019))

(assert (=> b!937740 d!113355))

(declare-fun d!113357 () Bool)

(declare-fun e!526743 () Bool)

(assert (=> d!113357 e!526743))

(declare-fun res!631240 () Bool)

(assert (=> d!113357 (=> (not res!631240) (not e!526743))))

(declare-fun lt!423440 () ListLongMap!12195)

(assert (=> d!113357 (= res!631240 (contains!5123 lt!423440 (_1!6752 (tuple2!13485 lt!423319 zeroValue!1173))))))

(declare-fun lt!423438 () List!19291)

(assert (=> d!113357 (= lt!423440 (ListLongMap!12196 lt!423438))))

(declare-fun lt!423439 () Unit!31676)

(declare-fun lt!423437 () Unit!31676)

(assert (=> d!113357 (= lt!423439 lt!423437)))

(assert (=> d!113357 (= (getValueByKey!486 lt!423438 (_1!6752 (tuple2!13485 lt!423319 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423319 zeroValue!1173))))))

(assert (=> d!113357 (= lt!423437 (lemmaContainsTupThenGetReturnValue!260 lt!423438 (_1!6752 (tuple2!13485 lt!423319 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423319 zeroValue!1173))))))

(assert (=> d!113357 (= lt!423438 (insertStrictlySorted!316 (toList!6113 lt!423302) (_1!6752 (tuple2!13485 lt!423319 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423319 zeroValue!1173))))))

(assert (=> d!113357 (= (+!2808 lt!423302 (tuple2!13485 lt!423319 zeroValue!1173)) lt!423440)))

(declare-fun b!937906 () Bool)

(declare-fun res!631241 () Bool)

(assert (=> b!937906 (=> (not res!631241) (not e!526743))))

(assert (=> b!937906 (= res!631241 (= (getValueByKey!486 (toList!6113 lt!423440) (_1!6752 (tuple2!13485 lt!423319 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423319 zeroValue!1173)))))))

(declare-fun b!937907 () Bool)

(assert (=> b!937907 (= e!526743 (contains!5124 (toList!6113 lt!423440) (tuple2!13485 lt!423319 zeroValue!1173)))))

(assert (= (and d!113357 res!631240) b!937906))

(assert (= (and b!937906 res!631241) b!937907))

(declare-fun m!873021 () Bool)

(assert (=> d!113357 m!873021))

(declare-fun m!873023 () Bool)

(assert (=> d!113357 m!873023))

(declare-fun m!873025 () Bool)

(assert (=> d!113357 m!873025))

(declare-fun m!873027 () Bool)

(assert (=> d!113357 m!873027))

(declare-fun m!873029 () Bool)

(assert (=> b!937906 m!873029))

(declare-fun m!873031 () Bool)

(assert (=> b!937907 m!873031))

(assert (=> b!937740 d!113357))

(declare-fun d!113359 () Bool)

(declare-fun e!526744 () Bool)

(assert (=> d!113359 e!526744))

(declare-fun res!631242 () Bool)

(assert (=> d!113359 (=> (not res!631242) (not e!526744))))

(declare-fun lt!423444 () ListLongMap!12195)

(assert (=> d!113359 (= res!631242 (contains!5123 lt!423444 (_1!6752 (tuple2!13485 lt!423311 zeroValue!1173))))))

(declare-fun lt!423442 () List!19291)

(assert (=> d!113359 (= lt!423444 (ListLongMap!12196 lt!423442))))

(declare-fun lt!423443 () Unit!31676)

(declare-fun lt!423441 () Unit!31676)

(assert (=> d!113359 (= lt!423443 lt!423441)))

(assert (=> d!113359 (= (getValueByKey!486 lt!423442 (_1!6752 (tuple2!13485 lt!423311 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423311 zeroValue!1173))))))

(assert (=> d!113359 (= lt!423441 (lemmaContainsTupThenGetReturnValue!260 lt!423442 (_1!6752 (tuple2!13485 lt!423311 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423311 zeroValue!1173))))))

(assert (=> d!113359 (= lt!423442 (insertStrictlySorted!316 (toList!6113 lt!423317) (_1!6752 (tuple2!13485 lt!423311 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423311 zeroValue!1173))))))

(assert (=> d!113359 (= (+!2808 lt!423317 (tuple2!13485 lt!423311 zeroValue!1173)) lt!423444)))

(declare-fun b!937908 () Bool)

(declare-fun res!631243 () Bool)

(assert (=> b!937908 (=> (not res!631243) (not e!526744))))

(assert (=> b!937908 (= res!631243 (= (getValueByKey!486 (toList!6113 lt!423444) (_1!6752 (tuple2!13485 lt!423311 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423311 zeroValue!1173)))))))

(declare-fun b!937909 () Bool)

(assert (=> b!937909 (= e!526744 (contains!5124 (toList!6113 lt!423444) (tuple2!13485 lt!423311 zeroValue!1173)))))

(assert (= (and d!113359 res!631242) b!937908))

(assert (= (and b!937908 res!631243) b!937909))

(declare-fun m!873033 () Bool)

(assert (=> d!113359 m!873033))

(declare-fun m!873035 () Bool)

(assert (=> d!113359 m!873035))

(declare-fun m!873037 () Bool)

(assert (=> d!113359 m!873037))

(declare-fun m!873039 () Bool)

(assert (=> d!113359 m!873039))

(declare-fun m!873041 () Bool)

(assert (=> b!937908 m!873041))

(declare-fun m!873043 () Bool)

(assert (=> b!937909 m!873043))

(assert (=> b!937740 d!113359))

(declare-fun d!113361 () Bool)

(declare-fun e!526745 () Bool)

(assert (=> d!113361 e!526745))

(declare-fun res!631244 () Bool)

(assert (=> d!113361 (=> (not res!631244) (not e!526745))))

(declare-fun lt!423448 () ListLongMap!12195)

(assert (=> d!113361 (= res!631244 (contains!5123 lt!423448 (_1!6752 (tuple2!13485 lt!423306 minValue!1173))))))

(declare-fun lt!423446 () List!19291)

(assert (=> d!113361 (= lt!423448 (ListLongMap!12196 lt!423446))))

(declare-fun lt!423447 () Unit!31676)

(declare-fun lt!423445 () Unit!31676)

(assert (=> d!113361 (= lt!423447 lt!423445)))

(assert (=> d!113361 (= (getValueByKey!486 lt!423446 (_1!6752 (tuple2!13485 lt!423306 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423306 minValue!1173))))))

(assert (=> d!113361 (= lt!423445 (lemmaContainsTupThenGetReturnValue!260 lt!423446 (_1!6752 (tuple2!13485 lt!423306 minValue!1173)) (_2!6752 (tuple2!13485 lt!423306 minValue!1173))))))

(assert (=> d!113361 (= lt!423446 (insertStrictlySorted!316 (toList!6113 lt!423314) (_1!6752 (tuple2!13485 lt!423306 minValue!1173)) (_2!6752 (tuple2!13485 lt!423306 minValue!1173))))))

(assert (=> d!113361 (= (+!2808 lt!423314 (tuple2!13485 lt!423306 minValue!1173)) lt!423448)))

(declare-fun b!937910 () Bool)

(declare-fun res!631245 () Bool)

(assert (=> b!937910 (=> (not res!631245) (not e!526745))))

(assert (=> b!937910 (= res!631245 (= (getValueByKey!486 (toList!6113 lt!423448) (_1!6752 (tuple2!13485 lt!423306 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423306 minValue!1173)))))))

(declare-fun b!937911 () Bool)

(assert (=> b!937911 (= e!526745 (contains!5124 (toList!6113 lt!423448) (tuple2!13485 lt!423306 minValue!1173)))))

(assert (= (and d!113361 res!631244) b!937910))

(assert (= (and b!937910 res!631245) b!937911))

(declare-fun m!873045 () Bool)

(assert (=> d!113361 m!873045))

(declare-fun m!873047 () Bool)

(assert (=> d!113361 m!873047))

(declare-fun m!873049 () Bool)

(assert (=> d!113361 m!873049))

(declare-fun m!873051 () Bool)

(assert (=> d!113361 m!873051))

(declare-fun m!873053 () Bool)

(assert (=> b!937910 m!873053))

(declare-fun m!873055 () Bool)

(assert (=> b!937911 m!873055))

(assert (=> b!937740 d!113361))

(declare-fun b!937936 () Bool)

(declare-fun e!526764 () ListLongMap!12195)

(declare-fun call!40803 () ListLongMap!12195)

(assert (=> b!937936 (= e!526764 call!40803)))

(declare-fun b!937937 () Bool)

(declare-fun e!526766 () Bool)

(declare-fun lt!423468 () ListLongMap!12195)

(declare-fun isEmpty!702 (ListLongMap!12195) Bool)

(assert (=> b!937937 (= e!526766 (isEmpty!702 lt!423468))))

(declare-fun b!937938 () Bool)

(declare-fun lt!423469 () Unit!31676)

(declare-fun lt!423465 () Unit!31676)

(assert (=> b!937938 (= lt!423469 lt!423465)))

(declare-fun lt!423464 () (_ BitVec 64))

(declare-fun lt!423466 () (_ BitVec 64))

(declare-fun lt!423463 () V!31977)

(declare-fun lt!423467 () ListLongMap!12195)

(assert (=> b!937938 (not (contains!5123 (+!2808 lt!423467 (tuple2!13485 lt!423466 lt!423463)) lt!423464))))

(declare-fun addStillNotContains!222 (ListLongMap!12195 (_ BitVec 64) V!31977 (_ BitVec 64)) Unit!31676)

(assert (=> b!937938 (= lt!423465 (addStillNotContains!222 lt!423467 lt!423466 lt!423463 lt!423464))))

(assert (=> b!937938 (= lt!423464 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!937938 (= lt!423463 (get!14352 (select (arr!27177 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!937938 (= lt!423466 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!937938 (= lt!423467 call!40803)))

(assert (=> b!937938 (= e!526764 (+!2808 call!40803 (tuple2!13485 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (get!14352 (select (arr!27177 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!937939 () Bool)

(declare-fun e!526763 () Bool)

(assert (=> b!937939 (= e!526763 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!937939 (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000)))

(declare-fun b!937940 () Bool)

(declare-fun e!526762 () Bool)

(assert (=> b!937940 (= e!526762 e!526766)))

(declare-fun c!97627 () Bool)

(assert (=> b!937940 (= c!97627 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))

(declare-fun b!937941 () Bool)

(assert (=> b!937941 (= e!526766 (= lt!423468 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235)))))

(declare-fun b!937942 () Bool)

(declare-fun res!631256 () Bool)

(declare-fun e!526765 () Bool)

(assert (=> b!937942 (=> (not res!631256) (not e!526765))))

(assert (=> b!937942 (= res!631256 (not (contains!5123 lt!423468 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!937943 () Bool)

(assert (=> b!937943 (= e!526765 e!526762)))

(declare-fun c!97628 () Bool)

(assert (=> b!937943 (= c!97628 e!526763)))

(declare-fun res!631255 () Bool)

(assert (=> b!937943 (=> (not res!631255) (not e!526763))))

(assert (=> b!937943 (= res!631255 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))

(declare-fun b!937944 () Bool)

(declare-fun e!526760 () ListLongMap!12195)

(assert (=> b!937944 (= e!526760 (ListLongMap!12196 Nil!19288))))

(declare-fun d!113363 () Bool)

(assert (=> d!113363 e!526765))

(declare-fun res!631257 () Bool)

(assert (=> d!113363 (=> (not res!631257) (not e!526765))))

(assert (=> d!113363 (= res!631257 (not (contains!5123 lt!423468 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!113363 (= lt!423468 e!526760)))

(declare-fun c!97630 () Bool)

(assert (=> d!113363 (= c!97630 (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))

(assert (=> d!113363 (validMask!0 mask!1881)))

(assert (=> d!113363 (= (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423468)))

(declare-fun b!937945 () Bool)

(declare-fun e!526761 () Bool)

(assert (=> b!937945 (= e!526762 e!526761)))

(assert (=> b!937945 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))

(declare-fun res!631254 () Bool)

(assert (=> b!937945 (= res!631254 (contains!5123 lt!423468 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!937945 (=> (not res!631254) (not e!526761))))

(declare-fun b!937946 () Bool)

(assert (=> b!937946 (= e!526760 e!526764)))

(declare-fun c!97629 () Bool)

(assert (=> b!937946 (= c!97629 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun bm!40800 () Bool)

(assert (=> bm!40800 (= call!40803 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!937947 () Bool)

(assert (=> b!937947 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27638 _keys!1487)))))

(assert (=> b!937947 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27637 _values!1231)))))

(assert (=> b!937947 (= e!526761 (= (apply!891 lt!423468 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14352 (select (arr!27177 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!113363 c!97630) b!937944))

(assert (= (and d!113363 (not c!97630)) b!937946))

(assert (= (and b!937946 c!97629) b!937938))

(assert (= (and b!937946 (not c!97629)) b!937936))

(assert (= (or b!937938 b!937936) bm!40800))

(assert (= (and d!113363 res!631257) b!937942))

(assert (= (and b!937942 res!631256) b!937943))

(assert (= (and b!937943 res!631255) b!937939))

(assert (= (and b!937943 c!97628) b!937945))

(assert (= (and b!937943 (not c!97628)) b!937940))

(assert (= (and b!937945 res!631254) b!937947))

(assert (= (and b!937940 c!97627) b!937941))

(assert (= (and b!937940 (not c!97627)) b!937937))

(declare-fun b_lambda!14209 () Bool)

(assert (=> (not b_lambda!14209) (not b!937938)))

(assert (=> b!937938 t!27593))

(declare-fun b_and!29127 () Bool)

(assert (= b_and!29125 (and (=> t!27593 result!12131) b_and!29127)))

(declare-fun b_lambda!14211 () Bool)

(assert (=> (not b_lambda!14211) (not b!937947)))

(assert (=> b!937947 t!27593))

(declare-fun b_and!29129 () Bool)

(assert (= b_and!29127 (and (=> t!27593 result!12131) b_and!29129)))

(assert (=> b!937939 m!872677))

(assert (=> b!937939 m!872677))

(assert (=> b!937939 m!872687))

(declare-fun m!873057 () Bool)

(assert (=> b!937937 m!873057))

(declare-fun m!873059 () Bool)

(assert (=> b!937942 m!873059))

(declare-fun m!873061 () Bool)

(assert (=> b!937941 m!873061))

(assert (=> b!937947 m!872521))

(assert (=> b!937947 m!872681))

(assert (=> b!937947 m!872681))

(assert (=> b!937947 m!872521))

(assert (=> b!937947 m!872683))

(assert (=> b!937947 m!872677))

(declare-fun m!873063 () Bool)

(assert (=> b!937947 m!873063))

(assert (=> b!937947 m!872677))

(assert (=> bm!40800 m!873061))

(declare-fun m!873065 () Bool)

(assert (=> d!113363 m!873065))

(assert (=> d!113363 m!872507))

(assert (=> b!937945 m!872677))

(assert (=> b!937945 m!872677))

(declare-fun m!873067 () Bool)

(assert (=> b!937945 m!873067))

(assert (=> b!937938 m!872521))

(declare-fun m!873069 () Bool)

(assert (=> b!937938 m!873069))

(assert (=> b!937938 m!872681))

(declare-fun m!873071 () Bool)

(assert (=> b!937938 m!873071))

(assert (=> b!937938 m!872681))

(assert (=> b!937938 m!872521))

(assert (=> b!937938 m!872683))

(assert (=> b!937938 m!873071))

(declare-fun m!873073 () Bool)

(assert (=> b!937938 m!873073))

(declare-fun m!873075 () Bool)

(assert (=> b!937938 m!873075))

(assert (=> b!937938 m!872677))

(assert (=> b!937946 m!872677))

(assert (=> b!937946 m!872677))

(assert (=> b!937946 m!872687))

(assert (=> b!937740 d!113363))

(declare-fun d!113365 () Bool)

(declare-fun e!526767 () Bool)

(assert (=> d!113365 e!526767))

(declare-fun res!631258 () Bool)

(assert (=> d!113365 (=> (not res!631258) (not e!526767))))

(declare-fun lt!423473 () ListLongMap!12195)

(assert (=> d!113365 (= res!631258 (contains!5123 lt!423473 (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun lt!423471 () List!19291)

(assert (=> d!113365 (= lt!423473 (ListLongMap!12196 lt!423471))))

(declare-fun lt!423472 () Unit!31676)

(declare-fun lt!423470 () Unit!31676)

(assert (=> d!113365 (= lt!423472 lt!423470)))

(assert (=> d!113365 (= (getValueByKey!486 lt!423471 (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113365 (= lt!423470 (lemmaContainsTupThenGetReturnValue!260 lt!423471 (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113365 (= lt!423471 (insertStrictlySorted!316 (toList!6113 call!40774) (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113365 (= (+!2808 call!40774 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) lt!423473)))

(declare-fun b!937948 () Bool)

(declare-fun res!631259 () Bool)

(assert (=> b!937948 (=> (not res!631259) (not e!526767))))

(assert (=> b!937948 (= res!631259 (= (getValueByKey!486 (toList!6113 lt!423473) (_1!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun b!937949 () Bool)

(assert (=> b!937949 (= e!526767 (contains!5124 (toList!6113 lt!423473) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(assert (= (and d!113365 res!631258) b!937948))

(assert (= (and b!937948 res!631259) b!937949))

(declare-fun m!873077 () Bool)

(assert (=> d!113365 m!873077))

(declare-fun m!873079 () Bool)

(assert (=> d!113365 m!873079))

(declare-fun m!873081 () Bool)

(assert (=> d!113365 m!873081))

(declare-fun m!873083 () Bool)

(assert (=> d!113365 m!873083))

(declare-fun m!873085 () Bool)

(assert (=> b!937948 m!873085))

(declare-fun m!873087 () Bool)

(assert (=> b!937949 m!873087))

(assert (=> b!937716 d!113365))

(declare-fun d!113367 () Bool)

(assert (=> d!113367 (= (get!14354 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!12705 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!937799 d!113367))

(declare-fun d!113369 () Bool)

(declare-fun lt!423476 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!410 (List!19291) (InoxSet tuple2!13484))

(assert (=> d!113369 (= lt!423476 (select (content!410 (toList!6113 lt!423360)) lt!423188))))

(declare-fun e!526772 () Bool)

(assert (=> d!113369 (= lt!423476 e!526772)))

(declare-fun res!631265 () Bool)

(assert (=> d!113369 (=> (not res!631265) (not e!526772))))

(assert (=> d!113369 (= res!631265 ((_ is Cons!19287) (toList!6113 lt!423360)))))

(assert (=> d!113369 (= (contains!5124 (toList!6113 lt!423360) lt!423188) lt!423476)))

(declare-fun b!937954 () Bool)

(declare-fun e!526773 () Bool)

(assert (=> b!937954 (= e!526772 e!526773)))

(declare-fun res!631264 () Bool)

(assert (=> b!937954 (=> res!631264 e!526773)))

(assert (=> b!937954 (= res!631264 (= (h!20433 (toList!6113 lt!423360)) lt!423188))))

(declare-fun b!937955 () Bool)

(assert (=> b!937955 (= e!526773 (contains!5124 (t!27594 (toList!6113 lt!423360)) lt!423188))))

(assert (= (and d!113369 res!631265) b!937954))

(assert (= (and b!937954 (not res!631264)) b!937955))

(declare-fun m!873089 () Bool)

(assert (=> d!113369 m!873089))

(declare-fun m!873091 () Bool)

(assert (=> d!113369 m!873091))

(declare-fun m!873093 () Bool)

(assert (=> b!937955 m!873093))

(assert (=> b!937779 d!113369))

(declare-fun d!113371 () Bool)

(declare-fun res!631266 () Bool)

(declare-fun e!526774 () Bool)

(assert (=> d!113371 (=> res!631266 e!526774)))

(assert (=> d!113371 (= res!631266 (and ((_ is Cons!19287) (toList!6113 lt!423181)) (= (_1!6752 (h!20433 (toList!6113 lt!423181))) k0!1099)))))

(assert (=> d!113371 (= (containsKey!451 (toList!6113 lt!423181) k0!1099) e!526774)))

(declare-fun b!937956 () Bool)

(declare-fun e!526775 () Bool)

(assert (=> b!937956 (= e!526774 e!526775)))

(declare-fun res!631267 () Bool)

(assert (=> b!937956 (=> (not res!631267) (not e!526775))))

(assert (=> b!937956 (= res!631267 (and (or (not ((_ is Cons!19287) (toList!6113 lt!423181))) (bvsle (_1!6752 (h!20433 (toList!6113 lt!423181))) k0!1099)) ((_ is Cons!19287) (toList!6113 lt!423181)) (bvslt (_1!6752 (h!20433 (toList!6113 lt!423181))) k0!1099)))))

(declare-fun b!937957 () Bool)

(assert (=> b!937957 (= e!526775 (containsKey!451 (t!27594 (toList!6113 lt!423181)) k0!1099))))

(assert (= (and d!113371 (not res!631266)) b!937956))

(assert (= (and b!937956 res!631267) b!937957))

(declare-fun m!873095 () Bool)

(assert (=> b!937957 m!873095))

(assert (=> d!113261 d!113371))

(declare-fun d!113373 () Bool)

(assert (=> d!113373 (= (apply!891 lt!423301 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14353 (getValueByKey!486 (toList!6113 lt!423301) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26311 () Bool)

(assert (= bs!26311 d!113373))

(declare-fun m!873097 () Bool)

(assert (=> bs!26311 m!873097))

(assert (=> bs!26311 m!873097))

(declare-fun m!873099 () Bool)

(assert (=> bs!26311 m!873099))

(assert (=> b!937743 d!113373))

(declare-fun d!113375 () Bool)

(declare-fun e!526777 () Bool)

(assert (=> d!113375 e!526777))

(declare-fun res!631268 () Bool)

(assert (=> d!113375 (=> res!631268 e!526777)))

(declare-fun lt!423479 () Bool)

(assert (=> d!113375 (= res!631268 (not lt!423479))))

(declare-fun lt!423477 () Bool)

(assert (=> d!113375 (= lt!423479 lt!423477)))

(declare-fun lt!423480 () Unit!31676)

(declare-fun e!526776 () Unit!31676)

(assert (=> d!113375 (= lt!423480 e!526776)))

(declare-fun c!97631 () Bool)

(assert (=> d!113375 (= c!97631 lt!423477)))

(assert (=> d!113375 (= lt!423477 (containsKey!451 (toList!6113 lt!423279) (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> d!113375 (= (contains!5123 lt!423279 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) lt!423479)))

(declare-fun b!937958 () Bool)

(declare-fun lt!423478 () Unit!31676)

(assert (=> b!937958 (= e!526776 lt!423478)))

(assert (=> b!937958 (= lt!423478 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423279) (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!937958 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423279) (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!937959 () Bool)

(declare-fun Unit!31690 () Unit!31676)

(assert (=> b!937959 (= e!526776 Unit!31690)))

(declare-fun b!937960 () Bool)

(assert (=> b!937960 (= e!526777 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423279) (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (= (and d!113375 c!97631) b!937958))

(assert (= (and d!113375 (not c!97631)) b!937959))

(assert (= (and d!113375 (not res!631268)) b!937960))

(assert (=> d!113375 m!872561))

(declare-fun m!873101 () Bool)

(assert (=> d!113375 m!873101))

(assert (=> b!937958 m!872561))

(declare-fun m!873103 () Bool)

(assert (=> b!937958 m!873103))

(assert (=> b!937958 m!872561))

(assert (=> b!937958 m!872903))

(assert (=> b!937958 m!872903))

(declare-fun m!873105 () Bool)

(assert (=> b!937958 m!873105))

(assert (=> b!937960 m!872561))

(assert (=> b!937960 m!872903))

(assert (=> b!937960 m!872903))

(assert (=> b!937960 m!873105))

(assert (=> b!937717 d!113375))

(declare-fun d!113377 () Bool)

(declare-fun res!631269 () Bool)

(declare-fun e!526778 () Bool)

(assert (=> d!113377 (=> res!631269 e!526778)))

(assert (=> d!113377 (= res!631269 (and ((_ is Cons!19287) (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))) (= (_1!6752 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)))) k0!1099)))))

(assert (=> d!113377 (= (containsKey!451 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)) k0!1099) e!526778)))

(declare-fun b!937961 () Bool)

(declare-fun e!526779 () Bool)

(assert (=> b!937961 (= e!526778 e!526779)))

(declare-fun res!631270 () Bool)

(assert (=> b!937961 (=> (not res!631270) (not e!526779))))

(assert (=> b!937961 (= res!631270 (and (or (not ((_ is Cons!19287) (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)))) (bvsle (_1!6752 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)))) k0!1099)) ((_ is Cons!19287) (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))) (bvslt (_1!6752 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235)))) k0!1099)))))

(declare-fun b!937962 () Bool)

(assert (=> b!937962 (= e!526779 (containsKey!451 (t!27594 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))) k0!1099))))

(assert (= (and d!113377 (not res!631269)) b!937961))

(assert (= (and b!937961 res!631270) b!937962))

(declare-fun m!873107 () Bool)

(assert (=> b!937962 m!873107))

(assert (=> d!113287 d!113377))

(declare-fun d!113379 () Bool)

(assert (=> d!113379 (= (get!14353 (getValueByKey!486 (toList!6113 lt!423181) k0!1099)) (v!12707 (getValueByKey!486 (toList!6113 lt!423181) k0!1099)))))

(assert (=> d!113271 d!113379))

(declare-fun b!937964 () Bool)

(declare-fun e!526780 () Option!492)

(declare-fun e!526781 () Option!492)

(assert (=> b!937964 (= e!526780 e!526781)))

(declare-fun c!97633 () Bool)

(assert (=> b!937964 (= c!97633 (and ((_ is Cons!19287) (toList!6113 lt!423181)) (not (= (_1!6752 (h!20433 (toList!6113 lt!423181))) k0!1099))))))

(declare-fun b!937965 () Bool)

(assert (=> b!937965 (= e!526781 (getValueByKey!486 (t!27594 (toList!6113 lt!423181)) k0!1099))))

(declare-fun b!937963 () Bool)

(assert (=> b!937963 (= e!526780 (Some!491 (_2!6752 (h!20433 (toList!6113 lt!423181)))))))

(declare-fun b!937966 () Bool)

(assert (=> b!937966 (= e!526781 None!490)))

(declare-fun d!113381 () Bool)

(declare-fun c!97632 () Bool)

(assert (=> d!113381 (= c!97632 (and ((_ is Cons!19287) (toList!6113 lt!423181)) (= (_1!6752 (h!20433 (toList!6113 lt!423181))) k0!1099)))))

(assert (=> d!113381 (= (getValueByKey!486 (toList!6113 lt!423181) k0!1099) e!526780)))

(assert (= (and d!113381 c!97632) b!937963))

(assert (= (and d!113381 (not c!97632)) b!937964))

(assert (= (and b!937964 c!97633) b!937965))

(assert (= (and b!937964 (not c!97633)) b!937966))

(declare-fun m!873109 () Bool)

(assert (=> b!937965 m!873109))

(assert (=> d!113271 d!113381))

(declare-fun d!113383 () Bool)

(declare-fun e!526783 () Bool)

(assert (=> d!113383 e!526783))

(declare-fun res!631271 () Bool)

(assert (=> d!113383 (=> res!631271 e!526783)))

(declare-fun lt!423483 () Bool)

(assert (=> d!113383 (= res!631271 (not lt!423483))))

(declare-fun lt!423481 () Bool)

(assert (=> d!113383 (= lt!423483 lt!423481)))

(declare-fun lt!423484 () Unit!31676)

(declare-fun e!526782 () Unit!31676)

(assert (=> d!113383 (= lt!423484 e!526782)))

(declare-fun c!97634 () Bool)

(assert (=> d!113383 (= c!97634 lt!423481)))

(assert (=> d!113383 (= lt!423481 (containsKey!451 (toList!6113 lt!423386) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113383 (= (contains!5123 lt!423386 #b0000000000000000000000000000000000000000000000000000000000000000) lt!423483)))

(declare-fun b!937967 () Bool)

(declare-fun lt!423482 () Unit!31676)

(assert (=> b!937967 (= e!526782 lt!423482)))

(assert (=> b!937967 (= lt!423482 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423386) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!937967 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423386) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!937968 () Bool)

(declare-fun Unit!31691 () Unit!31676)

(assert (=> b!937968 (= e!526782 Unit!31691)))

(declare-fun b!937969 () Bool)

(assert (=> b!937969 (= e!526783 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423386) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113383 c!97634) b!937967))

(assert (= (and d!113383 (not c!97634)) b!937968))

(assert (= (and d!113383 (not res!631271)) b!937969))

(declare-fun m!873111 () Bool)

(assert (=> d!113383 m!873111))

(declare-fun m!873113 () Bool)

(assert (=> b!937967 m!873113))

(assert (=> b!937967 m!872957))

(assert (=> b!937967 m!872957))

(declare-fun m!873115 () Bool)

(assert (=> b!937967 m!873115))

(assert (=> b!937969 m!872957))

(assert (=> b!937969 m!872957))

(assert (=> b!937969 m!873115))

(assert (=> bm!40796 d!113383))

(declare-fun b!937971 () Bool)

(declare-fun e!526784 () Option!492)

(declare-fun e!526785 () Option!492)

(assert (=> b!937971 (= e!526784 e!526785)))

(declare-fun c!97636 () Bool)

(assert (=> b!937971 (= c!97636 (and ((_ is Cons!19287) (toList!6113 lt!423335)) (not (= (_1!6752 (h!20433 (toList!6113 lt!423335))) (_1!6752 lt!423188)))))))

(declare-fun b!937972 () Bool)

(assert (=> b!937972 (= e!526785 (getValueByKey!486 (t!27594 (toList!6113 lt!423335)) (_1!6752 lt!423188)))))

(declare-fun b!937970 () Bool)

(assert (=> b!937970 (= e!526784 (Some!491 (_2!6752 (h!20433 (toList!6113 lt!423335)))))))

(declare-fun b!937973 () Bool)

(assert (=> b!937973 (= e!526785 None!490)))

(declare-fun d!113385 () Bool)

(declare-fun c!97635 () Bool)

(assert (=> d!113385 (= c!97635 (and ((_ is Cons!19287) (toList!6113 lt!423335)) (= (_1!6752 (h!20433 (toList!6113 lt!423335))) (_1!6752 lt!423188))))))

(assert (=> d!113385 (= (getValueByKey!486 (toList!6113 lt!423335) (_1!6752 lt!423188)) e!526784)))

(assert (= (and d!113385 c!97635) b!937970))

(assert (= (and d!113385 (not c!97635)) b!937971))

(assert (= (and b!937971 c!97636) b!937972))

(assert (= (and b!937971 (not c!97636)) b!937973))

(declare-fun m!873117 () Bool)

(assert (=> b!937972 m!873117))

(assert (=> b!937757 d!113385))

(declare-fun d!113387 () Bool)

(assert (=> d!113387 (= (get!14353 (getValueByKey!486 (toList!6113 lt!423184) k0!1099)) (v!12707 (getValueByKey!486 (toList!6113 lt!423184) k0!1099)))))

(assert (=> d!113291 d!113387))

(declare-fun b!937975 () Bool)

(declare-fun e!526786 () Option!492)

(declare-fun e!526787 () Option!492)

(assert (=> b!937975 (= e!526786 e!526787)))

(declare-fun c!97638 () Bool)

(assert (=> b!937975 (= c!97638 (and ((_ is Cons!19287) (toList!6113 lt!423184)) (not (= (_1!6752 (h!20433 (toList!6113 lt!423184))) k0!1099))))))

(declare-fun b!937976 () Bool)

(assert (=> b!937976 (= e!526787 (getValueByKey!486 (t!27594 (toList!6113 lt!423184)) k0!1099))))

(declare-fun b!937974 () Bool)

(assert (=> b!937974 (= e!526786 (Some!491 (_2!6752 (h!20433 (toList!6113 lt!423184)))))))

(declare-fun b!937977 () Bool)

(assert (=> b!937977 (= e!526787 None!490)))

(declare-fun d!113389 () Bool)

(declare-fun c!97637 () Bool)

(assert (=> d!113389 (= c!97637 (and ((_ is Cons!19287) (toList!6113 lt!423184)) (= (_1!6752 (h!20433 (toList!6113 lt!423184))) k0!1099)))))

(assert (=> d!113389 (= (getValueByKey!486 (toList!6113 lt!423184) k0!1099) e!526786)))

(assert (= (and d!113389 c!97637) b!937974))

(assert (= (and d!113389 (not c!97637)) b!937975))

(assert (= (and b!937975 c!97638) b!937976))

(assert (= (and b!937975 (not c!97638)) b!937977))

(declare-fun m!873119 () Bool)

(assert (=> b!937976 m!873119))

(assert (=> d!113291 d!113389))

(declare-fun d!113391 () Bool)

(assert (=> d!113391 (= (apply!891 lt!423301 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14353 (getValueByKey!486 (toList!6113 lt!423301) (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))))

(declare-fun bs!26312 () Bool)

(assert (= bs!26312 d!113391))

(assert (=> bs!26312 m!872677))

(declare-fun m!873121 () Bool)

(assert (=> bs!26312 m!873121))

(assert (=> bs!26312 m!873121))

(declare-fun m!873123 () Bool)

(assert (=> bs!26312 m!873123))

(assert (=> b!937744 d!113391))

(declare-fun d!113393 () Bool)

(declare-fun c!97639 () Bool)

(assert (=> d!113393 (= c!97639 ((_ is ValueCellFull!9648) (select (arr!27177 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun e!526788 () V!31977)

(assert (=> d!113393 (= (get!14352 (select (arr!27177 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!526788)))

(declare-fun b!937978 () Bool)

(assert (=> b!937978 (= e!526788 (get!14354 (select (arr!27177 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!937979 () Bool)

(assert (=> b!937979 (= e!526788 (get!14355 (select (arr!27177 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113393 c!97639) b!937978))

(assert (= (and d!113393 (not c!97639)) b!937979))

(assert (=> b!937978 m!872681))

(assert (=> b!937978 m!872521))

(declare-fun m!873125 () Bool)

(assert (=> b!937978 m!873125))

(assert (=> b!937979 m!872681))

(assert (=> b!937979 m!872521))

(declare-fun m!873127 () Bool)

(assert (=> b!937979 m!873127))

(assert (=> b!937744 d!113393))

(declare-fun d!113395 () Bool)

(assert (=> d!113395 (= (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (and (not (= (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!937729 d!113395))

(declare-fun b!937980 () Bool)

(declare-fun e!526793 () ListLongMap!12195)

(declare-fun call!40804 () ListLongMap!12195)

(assert (=> b!937980 (= e!526793 call!40804)))

(declare-fun b!937981 () Bool)

(declare-fun e!526795 () Bool)

(declare-fun lt!423490 () ListLongMap!12195)

(assert (=> b!937981 (= e!526795 (isEmpty!702 lt!423490))))

(declare-fun b!937982 () Bool)

(declare-fun lt!423491 () Unit!31676)

(declare-fun lt!423487 () Unit!31676)

(assert (=> b!937982 (= lt!423491 lt!423487)))

(declare-fun lt!423489 () ListLongMap!12195)

(declare-fun lt!423485 () V!31977)

(declare-fun lt!423488 () (_ BitVec 64))

(declare-fun lt!423486 () (_ BitVec 64))

(assert (=> b!937982 (not (contains!5123 (+!2808 lt!423489 (tuple2!13485 lt!423488 lt!423485)) lt!423486))))

(assert (=> b!937982 (= lt!423487 (addStillNotContains!222 lt!423489 lt!423488 lt!423485 lt!423486))))

(assert (=> b!937982 (= lt!423486 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!937982 (= lt!423485 (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!937982 (= lt!423488 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!937982 (= lt!423489 call!40804)))

(assert (=> b!937982 (= e!526793 (+!2808 call!40804 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!937983 () Bool)

(declare-fun e!526792 () Bool)

(assert (=> b!937983 (= e!526792 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!937983 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!937984 () Bool)

(declare-fun e!526791 () Bool)

(assert (=> b!937984 (= e!526791 e!526795)))

(declare-fun c!97640 () Bool)

(assert (=> b!937984 (= c!97640 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun b!937985 () Bool)

(assert (=> b!937985 (= e!526795 (= lt!423490 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235)))))

(declare-fun b!937986 () Bool)

(declare-fun res!631274 () Bool)

(declare-fun e!526794 () Bool)

(assert (=> b!937986 (=> (not res!631274) (not e!526794))))

(assert (=> b!937986 (= res!631274 (not (contains!5123 lt!423490 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!937987 () Bool)

(assert (=> b!937987 (= e!526794 e!526791)))

(declare-fun c!97641 () Bool)

(assert (=> b!937987 (= c!97641 e!526792)))

(declare-fun res!631273 () Bool)

(assert (=> b!937987 (=> (not res!631273) (not e!526792))))

(assert (=> b!937987 (= res!631273 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun b!937988 () Bool)

(declare-fun e!526789 () ListLongMap!12195)

(assert (=> b!937988 (= e!526789 (ListLongMap!12196 Nil!19288))))

(declare-fun d!113397 () Bool)

(assert (=> d!113397 e!526794))

(declare-fun res!631275 () Bool)

(assert (=> d!113397 (=> (not res!631275) (not e!526794))))

(assert (=> d!113397 (= res!631275 (not (contains!5123 lt!423490 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!113397 (= lt!423490 e!526789)))

(declare-fun c!97643 () Bool)

(assert (=> d!113397 (= c!97643 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(assert (=> d!113397 (validMask!0 mask!1881)))

(assert (=> d!113397 (= (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!423490)))

(declare-fun b!937989 () Bool)

(declare-fun e!526790 () Bool)

(assert (=> b!937989 (= e!526791 e!526790)))

(assert (=> b!937989 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun res!631272 () Bool)

(assert (=> b!937989 (= res!631272 (contains!5123 lt!423490 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!937989 (=> (not res!631272) (not e!526790))))

(declare-fun b!937990 () Bool)

(assert (=> b!937990 (= e!526789 e!526793)))

(declare-fun c!97642 () Bool)

(assert (=> b!937990 (= c!97642 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun bm!40801 () Bool)

(assert (=> bm!40801 (= call!40804 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!937991 () Bool)

(assert (=> b!937991 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(assert (=> b!937991 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27637 _values!1231)))))

(assert (=> b!937991 (= e!526790 (= (apply!891 lt!423490 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!113397 c!97643) b!937988))

(assert (= (and d!113397 (not c!97643)) b!937990))

(assert (= (and b!937990 c!97642) b!937982))

(assert (= (and b!937990 (not c!97642)) b!937980))

(assert (= (or b!937982 b!937980) bm!40801))

(assert (= (and d!113397 res!631275) b!937986))

(assert (= (and b!937986 res!631274) b!937987))

(assert (= (and b!937987 res!631273) b!937983))

(assert (= (and b!937987 c!97641) b!937989))

(assert (= (and b!937987 (not c!97641)) b!937984))

(assert (= (and b!937989 res!631272) b!937991))

(assert (= (and b!937984 c!97640) b!937985))

(assert (= (and b!937984 (not c!97640)) b!937981))

(declare-fun b_lambda!14213 () Bool)

(assert (=> (not b_lambda!14213) (not b!937982)))

(assert (=> b!937982 t!27593))

(declare-fun b_and!29131 () Bool)

(assert (= b_and!29129 (and (=> t!27593 result!12131) b_and!29131)))

(declare-fun b_lambda!14215 () Bool)

(assert (=> (not b_lambda!14215) (not b!937991)))

(assert (=> b!937991 t!27593))

(declare-fun b_and!29133 () Bool)

(assert (= b_and!29131 (and (=> t!27593 result!12131) b_and!29133)))

(assert (=> b!937983 m!872561))

(assert (=> b!937983 m!872561))

(assert (=> b!937983 m!872631))

(declare-fun m!873129 () Bool)

(assert (=> b!937981 m!873129))

(declare-fun m!873131 () Bool)

(assert (=> b!937986 m!873131))

(declare-fun m!873133 () Bool)

(assert (=> b!937985 m!873133))

(assert (=> b!937991 m!872521))

(assert (=> b!937991 m!872527))

(assert (=> b!937991 m!872527))

(assert (=> b!937991 m!872521))

(assert (=> b!937991 m!872529))

(assert (=> b!937991 m!872561))

(declare-fun m!873135 () Bool)

(assert (=> b!937991 m!873135))

(assert (=> b!937991 m!872561))

(assert (=> bm!40801 m!873133))

(declare-fun m!873137 () Bool)

(assert (=> d!113397 m!873137))

(assert (=> d!113397 m!872507))

(assert (=> b!937989 m!872561))

(assert (=> b!937989 m!872561))

(declare-fun m!873139 () Bool)

(assert (=> b!937989 m!873139))

(assert (=> b!937982 m!872521))

(declare-fun m!873141 () Bool)

(assert (=> b!937982 m!873141))

(assert (=> b!937982 m!872527))

(declare-fun m!873143 () Bool)

(assert (=> b!937982 m!873143))

(assert (=> b!937982 m!872527))

(assert (=> b!937982 m!872521))

(assert (=> b!937982 m!872529))

(assert (=> b!937982 m!873143))

(declare-fun m!873145 () Bool)

(assert (=> b!937982 m!873145))

(declare-fun m!873147 () Bool)

(assert (=> b!937982 m!873147))

(assert (=> b!937982 m!872561))

(assert (=> b!937990 m!872561))

(assert (=> b!937990 m!872561))

(assert (=> b!937990 m!872631))

(assert (=> bm!40773 d!113397))

(declare-fun d!113399 () Bool)

(declare-fun e!526797 () Bool)

(assert (=> d!113399 e!526797))

(declare-fun res!631276 () Bool)

(assert (=> d!113399 (=> res!631276 e!526797)))

(declare-fun lt!423494 () Bool)

(assert (=> d!113399 (= res!631276 (not lt!423494))))

(declare-fun lt!423492 () Bool)

(assert (=> d!113399 (= lt!423494 lt!423492)))

(declare-fun lt!423495 () Unit!31676)

(declare-fun e!526796 () Unit!31676)

(assert (=> d!113399 (= lt!423495 e!526796)))

(declare-fun c!97644 () Bool)

(assert (=> d!113399 (= c!97644 lt!423492)))

(assert (=> d!113399 (= lt!423492 (containsKey!451 (toList!6113 lt!423279) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113399 (= (contains!5123 lt!423279 #b1000000000000000000000000000000000000000000000000000000000000000) lt!423494)))

(declare-fun b!937992 () Bool)

(declare-fun lt!423493 () Unit!31676)

(assert (=> b!937992 (= e!526796 lt!423493)))

(assert (=> b!937992 (= lt!423493 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423279) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!937992 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423279) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!937993 () Bool)

(declare-fun Unit!31692 () Unit!31676)

(assert (=> b!937993 (= e!526796 Unit!31692)))

(declare-fun b!937994 () Bool)

(assert (=> b!937994 (= e!526797 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423279) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113399 c!97644) b!937992))

(assert (= (and d!113399 (not c!97644)) b!937993))

(assert (= (and d!113399 (not res!631276)) b!937994))

(declare-fun m!873149 () Bool)

(assert (=> d!113399 m!873149))

(declare-fun m!873151 () Bool)

(assert (=> b!937992 m!873151))

(declare-fun m!873153 () Bool)

(assert (=> b!937992 m!873153))

(assert (=> b!937992 m!873153))

(declare-fun m!873155 () Bool)

(assert (=> b!937992 m!873155))

(assert (=> b!937994 m!873153))

(assert (=> b!937994 m!873153))

(assert (=> b!937994 m!873155))

(assert (=> bm!40774 d!113399))

(declare-fun b!937995 () Bool)

(declare-fun e!526802 () ListLongMap!12195)

(declare-fun call!40805 () ListLongMap!12195)

(assert (=> b!937995 (= e!526802 call!40805)))

(declare-fun b!937996 () Bool)

(declare-fun e!526804 () Bool)

(declare-fun lt!423501 () ListLongMap!12195)

(assert (=> b!937996 (= e!526804 (isEmpty!702 lt!423501))))

(declare-fun b!937997 () Bool)

(declare-fun lt!423502 () Unit!31676)

(declare-fun lt!423498 () Unit!31676)

(assert (=> b!937997 (= lt!423502 lt!423498)))

(declare-fun lt!423499 () (_ BitVec 64))

(declare-fun lt!423497 () (_ BitVec 64))

(declare-fun lt!423496 () V!31977)

(declare-fun lt!423500 () ListLongMap!12195)

(assert (=> b!937997 (not (contains!5123 (+!2808 lt!423500 (tuple2!13485 lt!423499 lt!423496)) lt!423497))))

(assert (=> b!937997 (= lt!423498 (addStillNotContains!222 lt!423500 lt!423499 lt!423496 lt!423497))))

(assert (=> b!937997 (= lt!423497 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!937997 (= lt!423496 (get!14352 (select (arr!27177 _values!1231) from!1844) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!937997 (= lt!423499 (select (arr!27178 _keys!1487) from!1844))))

(assert (=> b!937997 (= lt!423500 call!40805)))

(assert (=> b!937997 (= e!526802 (+!2808 call!40805 (tuple2!13485 (select (arr!27178 _keys!1487) from!1844) (get!14352 (select (arr!27177 _values!1231) from!1844) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!937998 () Bool)

(declare-fun e!526801 () Bool)

(assert (=> b!937998 (= e!526801 (validKeyInArray!0 (select (arr!27178 _keys!1487) from!1844)))))

(assert (=> b!937998 (bvsge from!1844 #b00000000000000000000000000000000)))

(declare-fun b!937999 () Bool)

(declare-fun e!526800 () Bool)

(assert (=> b!937999 (= e!526800 e!526804)))

(declare-fun c!97645 () Bool)

(assert (=> b!937999 (= c!97645 (bvslt from!1844 (size!27638 _keys!1487)))))

(declare-fun b!938000 () Bool)

(assert (=> b!938000 (= e!526804 (= lt!423501 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd from!1844 #b00000000000000000000000000000001) defaultEntry!1235)))))

(declare-fun b!938001 () Bool)

(declare-fun res!631279 () Bool)

(declare-fun e!526803 () Bool)

(assert (=> b!938001 (=> (not res!631279) (not e!526803))))

(assert (=> b!938001 (= res!631279 (not (contains!5123 lt!423501 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!938002 () Bool)

(assert (=> b!938002 (= e!526803 e!526800)))

(declare-fun c!97646 () Bool)

(assert (=> b!938002 (= c!97646 e!526801)))

(declare-fun res!631278 () Bool)

(assert (=> b!938002 (=> (not res!631278) (not e!526801))))

(assert (=> b!938002 (= res!631278 (bvslt from!1844 (size!27638 _keys!1487)))))

(declare-fun b!938003 () Bool)

(declare-fun e!526798 () ListLongMap!12195)

(assert (=> b!938003 (= e!526798 (ListLongMap!12196 Nil!19288))))

(declare-fun d!113401 () Bool)

(assert (=> d!113401 e!526803))

(declare-fun res!631280 () Bool)

(assert (=> d!113401 (=> (not res!631280) (not e!526803))))

(assert (=> d!113401 (= res!631280 (not (contains!5123 lt!423501 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!113401 (= lt!423501 e!526798)))

(declare-fun c!97648 () Bool)

(assert (=> d!113401 (= c!97648 (bvsge from!1844 (size!27638 _keys!1487)))))

(assert (=> d!113401 (validMask!0 mask!1881)))

(assert (=> d!113401 (= (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) lt!423501)))

(declare-fun b!938004 () Bool)

(declare-fun e!526799 () Bool)

(assert (=> b!938004 (= e!526800 e!526799)))

(assert (=> b!938004 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27638 _keys!1487)))))

(declare-fun res!631277 () Bool)

(assert (=> b!938004 (= res!631277 (contains!5123 lt!423501 (select (arr!27178 _keys!1487) from!1844)))))

(assert (=> b!938004 (=> (not res!631277) (not e!526799))))

(declare-fun b!938005 () Bool)

(assert (=> b!938005 (= e!526798 e!526802)))

(declare-fun c!97647 () Bool)

(assert (=> b!938005 (= c!97647 (validKeyInArray!0 (select (arr!27178 _keys!1487) from!1844)))))

(declare-fun bm!40802 () Bool)

(assert (=> bm!40802 (= call!40805 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!938006 () Bool)

(assert (=> b!938006 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27638 _keys!1487)))))

(assert (=> b!938006 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27637 _values!1231)))))

(assert (=> b!938006 (= e!526799 (= (apply!891 lt!423501 (select (arr!27178 _keys!1487) from!1844)) (get!14352 (select (arr!27177 _values!1231) from!1844) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!113401 c!97648) b!938003))

(assert (= (and d!113401 (not c!97648)) b!938005))

(assert (= (and b!938005 c!97647) b!937997))

(assert (= (and b!938005 (not c!97647)) b!937995))

(assert (= (or b!937997 b!937995) bm!40802))

(assert (= (and d!113401 res!631280) b!938001))

(assert (= (and b!938001 res!631279) b!938002))

(assert (= (and b!938002 res!631278) b!937998))

(assert (= (and b!938002 c!97646) b!938004))

(assert (= (and b!938002 (not c!97646)) b!937999))

(assert (= (and b!938004 res!631277) b!938006))

(assert (= (and b!937999 c!97645) b!938000))

(assert (= (and b!937999 (not c!97645)) b!937996))

(declare-fun b_lambda!14217 () Bool)

(assert (=> (not b_lambda!14217) (not b!937997)))

(assert (=> b!937997 t!27593))

(declare-fun b_and!29135 () Bool)

(assert (= b_and!29133 (and (=> t!27593 result!12131) b_and!29135)))

(declare-fun b_lambda!14219 () Bool)

(assert (=> (not b_lambda!14219) (not b!938006)))

(assert (=> b!938006 t!27593))

(declare-fun b_and!29137 () Bool)

(assert (= b_and!29135 (and (=> t!27593 result!12131) b_and!29137)))

(assert (=> b!937998 m!872831))

(assert (=> b!937998 m!872831))

(assert (=> b!937998 m!872841))

(declare-fun m!873157 () Bool)

(assert (=> b!937996 m!873157))

(declare-fun m!873159 () Bool)

(assert (=> b!938001 m!873159))

(declare-fun m!873161 () Bool)

(assert (=> b!938000 m!873161))

(assert (=> b!938006 m!872521))

(assert (=> b!938006 m!872835))

(assert (=> b!938006 m!872835))

(assert (=> b!938006 m!872521))

(assert (=> b!938006 m!872837))

(assert (=> b!938006 m!872831))

(declare-fun m!873163 () Bool)

(assert (=> b!938006 m!873163))

(assert (=> b!938006 m!872831))

(assert (=> bm!40802 m!873161))

(declare-fun m!873165 () Bool)

(assert (=> d!113401 m!873165))

(assert (=> d!113401 m!872507))

(assert (=> b!938004 m!872831))

(assert (=> b!938004 m!872831))

(declare-fun m!873167 () Bool)

(assert (=> b!938004 m!873167))

(assert (=> b!937997 m!872521))

(declare-fun m!873169 () Bool)

(assert (=> b!937997 m!873169))

(assert (=> b!937997 m!872835))

(declare-fun m!873171 () Bool)

(assert (=> b!937997 m!873171))

(assert (=> b!937997 m!872835))

(assert (=> b!937997 m!872521))

(assert (=> b!937997 m!872837))

(assert (=> b!937997 m!873171))

(declare-fun m!873173 () Bool)

(assert (=> b!937997 m!873173))

(declare-fun m!873175 () Bool)

(assert (=> b!937997 m!873175))

(assert (=> b!937997 m!872831))

(assert (=> b!938005 m!872831))

(assert (=> b!938005 m!872831))

(assert (=> b!938005 m!872841))

(assert (=> b!937836 d!113401))

(declare-fun d!113403 () Bool)

(assert (=> d!113403 (= (apply!891 (+!2808 lt!423402 (tuple2!13485 lt!423396 zeroValue!1173)) lt!423384) (apply!891 lt!423402 lt!423384))))

(declare-fun lt!423503 () Unit!31676)

(assert (=> d!113403 (= lt!423503 (choose!1561 lt!423402 lt!423396 zeroValue!1173 lt!423384))))

(declare-fun e!526805 () Bool)

(assert (=> d!113403 e!526805))

(declare-fun res!631281 () Bool)

(assert (=> d!113403 (=> (not res!631281) (not e!526805))))

(assert (=> d!113403 (= res!631281 (contains!5123 lt!423402 lt!423384))))

(assert (=> d!113403 (= (addApplyDifferent!438 lt!423402 lt!423396 zeroValue!1173 lt!423384) lt!423503)))

(declare-fun b!938007 () Bool)

(assert (=> b!938007 (= e!526805 (not (= lt!423384 lt!423396)))))

(assert (= (and d!113403 res!631281) b!938007))

(declare-fun m!873177 () Bool)

(assert (=> d!113403 m!873177))

(assert (=> d!113403 m!872847))

(assert (=> d!113403 m!872855))

(assert (=> d!113403 m!872855))

(assert (=> d!113403 m!872865))

(declare-fun m!873179 () Bool)

(assert (=> d!113403 m!873179))

(assert (=> b!937836 d!113403))

(declare-fun d!113405 () Bool)

(declare-fun e!526806 () Bool)

(assert (=> d!113405 e!526806))

(declare-fun res!631282 () Bool)

(assert (=> d!113405 (=> (not res!631282) (not e!526806))))

(declare-fun lt!423507 () ListLongMap!12195)

(assert (=> d!113405 (= res!631282 (contains!5123 lt!423507 (_1!6752 (tuple2!13485 lt!423396 zeroValue!1173))))))

(declare-fun lt!423505 () List!19291)

(assert (=> d!113405 (= lt!423507 (ListLongMap!12196 lt!423505))))

(declare-fun lt!423506 () Unit!31676)

(declare-fun lt!423504 () Unit!31676)

(assert (=> d!113405 (= lt!423506 lt!423504)))

(assert (=> d!113405 (= (getValueByKey!486 lt!423505 (_1!6752 (tuple2!13485 lt!423396 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423396 zeroValue!1173))))))

(assert (=> d!113405 (= lt!423504 (lemmaContainsTupThenGetReturnValue!260 lt!423505 (_1!6752 (tuple2!13485 lt!423396 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423396 zeroValue!1173))))))

(assert (=> d!113405 (= lt!423505 (insertStrictlySorted!316 (toList!6113 lt!423402) (_1!6752 (tuple2!13485 lt!423396 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423396 zeroValue!1173))))))

(assert (=> d!113405 (= (+!2808 lt!423402 (tuple2!13485 lt!423396 zeroValue!1173)) lt!423507)))

(declare-fun b!938008 () Bool)

(declare-fun res!631283 () Bool)

(assert (=> b!938008 (=> (not res!631283) (not e!526806))))

(assert (=> b!938008 (= res!631283 (= (getValueByKey!486 (toList!6113 lt!423507) (_1!6752 (tuple2!13485 lt!423396 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423396 zeroValue!1173)))))))

(declare-fun b!938009 () Bool)

(assert (=> b!938009 (= e!526806 (contains!5124 (toList!6113 lt!423507) (tuple2!13485 lt!423396 zeroValue!1173)))))

(assert (= (and d!113405 res!631282) b!938008))

(assert (= (and b!938008 res!631283) b!938009))

(declare-fun m!873181 () Bool)

(assert (=> d!113405 m!873181))

(declare-fun m!873183 () Bool)

(assert (=> d!113405 m!873183))

(declare-fun m!873185 () Bool)

(assert (=> d!113405 m!873185))

(declare-fun m!873187 () Bool)

(assert (=> d!113405 m!873187))

(declare-fun m!873189 () Bool)

(assert (=> b!938008 m!873189))

(declare-fun m!873191 () Bool)

(assert (=> b!938009 m!873191))

(assert (=> b!937836 d!113405))

(declare-fun d!113407 () Bool)

(declare-fun e!526807 () Bool)

(assert (=> d!113407 e!526807))

(declare-fun res!631284 () Bool)

(assert (=> d!113407 (=> (not res!631284) (not e!526807))))

(declare-fun lt!423511 () ListLongMap!12195)

(assert (=> d!113407 (= res!631284 (contains!5123 lt!423511 (_1!6752 (tuple2!13485 lt!423391 minValue!1173))))))

(declare-fun lt!423509 () List!19291)

(assert (=> d!113407 (= lt!423511 (ListLongMap!12196 lt!423509))))

(declare-fun lt!423510 () Unit!31676)

(declare-fun lt!423508 () Unit!31676)

(assert (=> d!113407 (= lt!423510 lt!423508)))

(assert (=> d!113407 (= (getValueByKey!486 lt!423509 (_1!6752 (tuple2!13485 lt!423391 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423391 minValue!1173))))))

(assert (=> d!113407 (= lt!423508 (lemmaContainsTupThenGetReturnValue!260 lt!423509 (_1!6752 (tuple2!13485 lt!423391 minValue!1173)) (_2!6752 (tuple2!13485 lt!423391 minValue!1173))))))

(assert (=> d!113407 (= lt!423509 (insertStrictlySorted!316 (toList!6113 lt!423399) (_1!6752 (tuple2!13485 lt!423391 minValue!1173)) (_2!6752 (tuple2!13485 lt!423391 minValue!1173))))))

(assert (=> d!113407 (= (+!2808 lt!423399 (tuple2!13485 lt!423391 minValue!1173)) lt!423511)))

(declare-fun b!938010 () Bool)

(declare-fun res!631285 () Bool)

(assert (=> b!938010 (=> (not res!631285) (not e!526807))))

(assert (=> b!938010 (= res!631285 (= (getValueByKey!486 (toList!6113 lt!423511) (_1!6752 (tuple2!13485 lt!423391 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423391 minValue!1173)))))))

(declare-fun b!938011 () Bool)

(assert (=> b!938011 (= e!526807 (contains!5124 (toList!6113 lt!423511) (tuple2!13485 lt!423391 minValue!1173)))))

(assert (= (and d!113407 res!631284) b!938010))

(assert (= (and b!938010 res!631285) b!938011))

(declare-fun m!873193 () Bool)

(assert (=> d!113407 m!873193))

(declare-fun m!873195 () Bool)

(assert (=> d!113407 m!873195))

(declare-fun m!873197 () Bool)

(assert (=> d!113407 m!873197))

(declare-fun m!873199 () Bool)

(assert (=> d!113407 m!873199))

(declare-fun m!873201 () Bool)

(assert (=> b!938010 m!873201))

(declare-fun m!873203 () Bool)

(assert (=> b!938011 m!873203))

(assert (=> b!937836 d!113407))

(declare-fun d!113409 () Bool)

(assert (=> d!113409 (= (apply!891 (+!2808 lt!423399 (tuple2!13485 lt!423391 minValue!1173)) lt!423390) (apply!891 lt!423399 lt!423390))))

(declare-fun lt!423512 () Unit!31676)

(assert (=> d!113409 (= lt!423512 (choose!1561 lt!423399 lt!423391 minValue!1173 lt!423390))))

(declare-fun e!526808 () Bool)

(assert (=> d!113409 e!526808))

(declare-fun res!631286 () Bool)

(assert (=> d!113409 (=> (not res!631286) (not e!526808))))

(assert (=> d!113409 (= res!631286 (contains!5123 lt!423399 lt!423390))))

(assert (=> d!113409 (= (addApplyDifferent!438 lt!423399 lt!423391 minValue!1173 lt!423390) lt!423512)))

(declare-fun b!938012 () Bool)

(assert (=> b!938012 (= e!526808 (not (= lt!423390 lt!423391)))))

(assert (= (and d!113409 res!631286) b!938012))

(declare-fun m!873205 () Bool)

(assert (=> d!113409 m!873205))

(assert (=> d!113409 m!872853))

(assert (=> d!113409 m!872867))

(assert (=> d!113409 m!872867))

(assert (=> d!113409 m!872869))

(declare-fun m!873207 () Bool)

(assert (=> d!113409 m!873207))

(assert (=> b!937836 d!113409))

(declare-fun d!113411 () Bool)

(assert (=> d!113411 (= (apply!891 (+!2808 lt!423399 (tuple2!13485 lt!423391 minValue!1173)) lt!423390) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423399 (tuple2!13485 lt!423391 minValue!1173))) lt!423390)))))

(declare-fun bs!26313 () Bool)

(assert (= bs!26313 d!113411))

(declare-fun m!873209 () Bool)

(assert (=> bs!26313 m!873209))

(assert (=> bs!26313 m!873209))

(declare-fun m!873211 () Bool)

(assert (=> bs!26313 m!873211))

(assert (=> b!937836 d!113411))

(declare-fun d!113413 () Bool)

(assert (=> d!113413 (= (apply!891 (+!2808 lt!423402 (tuple2!13485 lt!423396 zeroValue!1173)) lt!423384) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423402 (tuple2!13485 lt!423396 zeroValue!1173))) lt!423384)))))

(declare-fun bs!26314 () Bool)

(assert (= bs!26314 d!113413))

(declare-fun m!873213 () Bool)

(assert (=> bs!26314 m!873213))

(assert (=> bs!26314 m!873213))

(declare-fun m!873215 () Bool)

(assert (=> bs!26314 m!873215))

(assert (=> b!937836 d!113413))

(declare-fun d!113415 () Bool)

(assert (=> d!113415 (= (apply!891 lt!423399 lt!423390) (get!14353 (getValueByKey!486 (toList!6113 lt!423399) lt!423390)))))

(declare-fun bs!26315 () Bool)

(assert (= bs!26315 d!113415))

(declare-fun m!873217 () Bool)

(assert (=> bs!26315 m!873217))

(assert (=> bs!26315 m!873217))

(declare-fun m!873219 () Bool)

(assert (=> bs!26315 m!873219))

(assert (=> b!937836 d!113415))

(declare-fun d!113417 () Bool)

(assert (=> d!113417 (= (apply!891 (+!2808 lt!423385 (tuple2!13485 lt!423389 minValue!1173)) lt!423397) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423385 (tuple2!13485 lt!423389 minValue!1173))) lt!423397)))))

(declare-fun bs!26316 () Bool)

(assert (= bs!26316 d!113417))

(declare-fun m!873221 () Bool)

(assert (=> bs!26316 m!873221))

(assert (=> bs!26316 m!873221))

(declare-fun m!873223 () Bool)

(assert (=> bs!26316 m!873223))

(assert (=> b!937836 d!113417))

(declare-fun d!113419 () Bool)

(declare-fun e!526810 () Bool)

(assert (=> d!113419 e!526810))

(declare-fun res!631287 () Bool)

(assert (=> d!113419 (=> res!631287 e!526810)))

(declare-fun lt!423515 () Bool)

(assert (=> d!113419 (= res!631287 (not lt!423515))))

(declare-fun lt!423513 () Bool)

(assert (=> d!113419 (= lt!423515 lt!423513)))

(declare-fun lt!423516 () Unit!31676)

(declare-fun e!526809 () Unit!31676)

(assert (=> d!113419 (= lt!423516 e!526809)))

(declare-fun c!97649 () Bool)

(assert (=> d!113419 (= c!97649 lt!423513)))

(assert (=> d!113419 (= lt!423513 (containsKey!451 (toList!6113 (+!2808 lt!423387 (tuple2!13485 lt!423404 zeroValue!1173))) lt!423405))))

(assert (=> d!113419 (= (contains!5123 (+!2808 lt!423387 (tuple2!13485 lt!423404 zeroValue!1173)) lt!423405) lt!423515)))

(declare-fun b!938013 () Bool)

(declare-fun lt!423514 () Unit!31676)

(assert (=> b!938013 (= e!526809 lt!423514)))

(assert (=> b!938013 (= lt!423514 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 (+!2808 lt!423387 (tuple2!13485 lt!423404 zeroValue!1173))) lt!423405))))

(assert (=> b!938013 (isDefined!356 (getValueByKey!486 (toList!6113 (+!2808 lt!423387 (tuple2!13485 lt!423404 zeroValue!1173))) lt!423405))))

(declare-fun b!938014 () Bool)

(declare-fun Unit!31693 () Unit!31676)

(assert (=> b!938014 (= e!526809 Unit!31693)))

(declare-fun b!938015 () Bool)

(assert (=> b!938015 (= e!526810 (isDefined!356 (getValueByKey!486 (toList!6113 (+!2808 lt!423387 (tuple2!13485 lt!423404 zeroValue!1173))) lt!423405)))))

(assert (= (and d!113419 c!97649) b!938013))

(assert (= (and d!113419 (not c!97649)) b!938014))

(assert (= (and d!113419 (not res!631287)) b!938015))

(declare-fun m!873225 () Bool)

(assert (=> d!113419 m!873225))

(declare-fun m!873227 () Bool)

(assert (=> b!938013 m!873227))

(declare-fun m!873229 () Bool)

(assert (=> b!938013 m!873229))

(assert (=> b!938013 m!873229))

(declare-fun m!873231 () Bool)

(assert (=> b!938013 m!873231))

(assert (=> b!938015 m!873229))

(assert (=> b!938015 m!873229))

(assert (=> b!938015 m!873231))

(assert (=> b!937836 d!113419))

(declare-fun d!113421 () Bool)

(assert (=> d!113421 (= (apply!891 lt!423385 lt!423397) (get!14353 (getValueByKey!486 (toList!6113 lt!423385) lt!423397)))))

(declare-fun bs!26317 () Bool)

(assert (= bs!26317 d!113421))

(declare-fun m!873233 () Bool)

(assert (=> bs!26317 m!873233))

(assert (=> bs!26317 m!873233))

(declare-fun m!873235 () Bool)

(assert (=> bs!26317 m!873235))

(assert (=> b!937836 d!113421))

(declare-fun d!113423 () Bool)

(assert (=> d!113423 (= (apply!891 (+!2808 lt!423385 (tuple2!13485 lt!423389 minValue!1173)) lt!423397) (apply!891 lt!423385 lt!423397))))

(declare-fun lt!423517 () Unit!31676)

(assert (=> d!113423 (= lt!423517 (choose!1561 lt!423385 lt!423389 minValue!1173 lt!423397))))

(declare-fun e!526811 () Bool)

(assert (=> d!113423 e!526811))

(declare-fun res!631288 () Bool)

(assert (=> d!113423 (=> (not res!631288) (not e!526811))))

(assert (=> d!113423 (= res!631288 (contains!5123 lt!423385 lt!423397))))

(assert (=> d!113423 (= (addApplyDifferent!438 lt!423385 lt!423389 minValue!1173 lt!423397) lt!423517)))

(declare-fun b!938016 () Bool)

(assert (=> b!938016 (= e!526811 (not (= lt!423397 lt!423389)))))

(assert (= (and d!113423 res!631288) b!938016))

(declare-fun m!873237 () Bool)

(assert (=> d!113423 m!873237))

(assert (=> d!113423 m!872859))

(assert (=> d!113423 m!872857))

(assert (=> d!113423 m!872857))

(assert (=> d!113423 m!872861))

(declare-fun m!873239 () Bool)

(assert (=> d!113423 m!873239))

(assert (=> b!937836 d!113423))

(declare-fun d!113425 () Bool)

(declare-fun e!526812 () Bool)

(assert (=> d!113425 e!526812))

(declare-fun res!631289 () Bool)

(assert (=> d!113425 (=> (not res!631289) (not e!526812))))

(declare-fun lt!423521 () ListLongMap!12195)

(assert (=> d!113425 (= res!631289 (contains!5123 lt!423521 (_1!6752 (tuple2!13485 lt!423404 zeroValue!1173))))))

(declare-fun lt!423519 () List!19291)

(assert (=> d!113425 (= lt!423521 (ListLongMap!12196 lt!423519))))

(declare-fun lt!423520 () Unit!31676)

(declare-fun lt!423518 () Unit!31676)

(assert (=> d!113425 (= lt!423520 lt!423518)))

(assert (=> d!113425 (= (getValueByKey!486 lt!423519 (_1!6752 (tuple2!13485 lt!423404 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423404 zeroValue!1173))))))

(assert (=> d!113425 (= lt!423518 (lemmaContainsTupThenGetReturnValue!260 lt!423519 (_1!6752 (tuple2!13485 lt!423404 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423404 zeroValue!1173))))))

(assert (=> d!113425 (= lt!423519 (insertStrictlySorted!316 (toList!6113 lt!423387) (_1!6752 (tuple2!13485 lt!423404 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423404 zeroValue!1173))))))

(assert (=> d!113425 (= (+!2808 lt!423387 (tuple2!13485 lt!423404 zeroValue!1173)) lt!423521)))

(declare-fun b!938017 () Bool)

(declare-fun res!631290 () Bool)

(assert (=> b!938017 (=> (not res!631290) (not e!526812))))

(assert (=> b!938017 (= res!631290 (= (getValueByKey!486 (toList!6113 lt!423521) (_1!6752 (tuple2!13485 lt!423404 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423404 zeroValue!1173)))))))

(declare-fun b!938018 () Bool)

(assert (=> b!938018 (= e!526812 (contains!5124 (toList!6113 lt!423521) (tuple2!13485 lt!423404 zeroValue!1173)))))

(assert (= (and d!113425 res!631289) b!938017))

(assert (= (and b!938017 res!631290) b!938018))

(declare-fun m!873241 () Bool)

(assert (=> d!113425 m!873241))

(declare-fun m!873243 () Bool)

(assert (=> d!113425 m!873243))

(declare-fun m!873245 () Bool)

(assert (=> d!113425 m!873245))

(declare-fun m!873247 () Bool)

(assert (=> d!113425 m!873247))

(declare-fun m!873249 () Bool)

(assert (=> b!938017 m!873249))

(declare-fun m!873251 () Bool)

(assert (=> b!938018 m!873251))

(assert (=> b!937836 d!113425))

(declare-fun d!113427 () Bool)

(declare-fun e!526813 () Bool)

(assert (=> d!113427 e!526813))

(declare-fun res!631291 () Bool)

(assert (=> d!113427 (=> (not res!631291) (not e!526813))))

(declare-fun lt!423525 () ListLongMap!12195)

(assert (=> d!113427 (= res!631291 (contains!5123 lt!423525 (_1!6752 (tuple2!13485 lt!423389 minValue!1173))))))

(declare-fun lt!423523 () List!19291)

(assert (=> d!113427 (= lt!423525 (ListLongMap!12196 lt!423523))))

(declare-fun lt!423524 () Unit!31676)

(declare-fun lt!423522 () Unit!31676)

(assert (=> d!113427 (= lt!423524 lt!423522)))

(assert (=> d!113427 (= (getValueByKey!486 lt!423523 (_1!6752 (tuple2!13485 lt!423389 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423389 minValue!1173))))))

(assert (=> d!113427 (= lt!423522 (lemmaContainsTupThenGetReturnValue!260 lt!423523 (_1!6752 (tuple2!13485 lt!423389 minValue!1173)) (_2!6752 (tuple2!13485 lt!423389 minValue!1173))))))

(assert (=> d!113427 (= lt!423523 (insertStrictlySorted!316 (toList!6113 lt!423385) (_1!6752 (tuple2!13485 lt!423389 minValue!1173)) (_2!6752 (tuple2!13485 lt!423389 minValue!1173))))))

(assert (=> d!113427 (= (+!2808 lt!423385 (tuple2!13485 lt!423389 minValue!1173)) lt!423525)))

(declare-fun b!938019 () Bool)

(declare-fun res!631292 () Bool)

(assert (=> b!938019 (=> (not res!631292) (not e!526813))))

(assert (=> b!938019 (= res!631292 (= (getValueByKey!486 (toList!6113 lt!423525) (_1!6752 (tuple2!13485 lt!423389 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423389 minValue!1173)))))))

(declare-fun b!938020 () Bool)

(assert (=> b!938020 (= e!526813 (contains!5124 (toList!6113 lt!423525) (tuple2!13485 lt!423389 minValue!1173)))))

(assert (= (and d!113427 res!631291) b!938019))

(assert (= (and b!938019 res!631292) b!938020))

(declare-fun m!873253 () Bool)

(assert (=> d!113427 m!873253))

(declare-fun m!873255 () Bool)

(assert (=> d!113427 m!873255))

(declare-fun m!873257 () Bool)

(assert (=> d!113427 m!873257))

(declare-fun m!873259 () Bool)

(assert (=> d!113427 m!873259))

(declare-fun m!873261 () Bool)

(assert (=> b!938019 m!873261))

(declare-fun m!873263 () Bool)

(assert (=> b!938020 m!873263))

(assert (=> b!937836 d!113427))

(declare-fun d!113429 () Bool)

(assert (=> d!113429 (contains!5123 (+!2808 lt!423387 (tuple2!13485 lt!423404 zeroValue!1173)) lt!423405)))

(declare-fun lt!423526 () Unit!31676)

(assert (=> d!113429 (= lt!423526 (choose!1563 lt!423387 lt!423404 zeroValue!1173 lt!423405))))

(assert (=> d!113429 (contains!5123 lt!423387 lt!423405)))

(assert (=> d!113429 (= (addStillContains!564 lt!423387 lt!423404 zeroValue!1173 lt!423405) lt!423526)))

(declare-fun bs!26318 () Bool)

(assert (= bs!26318 d!113429))

(assert (=> bs!26318 m!872849))

(assert (=> bs!26318 m!872849))

(assert (=> bs!26318 m!872873))

(declare-fun m!873265 () Bool)

(assert (=> bs!26318 m!873265))

(declare-fun m!873267 () Bool)

(assert (=> bs!26318 m!873267))

(assert (=> b!937836 d!113429))

(declare-fun d!113431 () Bool)

(assert (=> d!113431 (= (apply!891 lt!423402 lt!423384) (get!14353 (getValueByKey!486 (toList!6113 lt!423402) lt!423384)))))

(declare-fun bs!26319 () Bool)

(assert (= bs!26319 d!113431))

(declare-fun m!873269 () Bool)

(assert (=> bs!26319 m!873269))

(assert (=> bs!26319 m!873269))

(declare-fun m!873271 () Bool)

(assert (=> bs!26319 m!873271))

(assert (=> b!937836 d!113431))

(assert (=> d!113253 d!113321))

(declare-fun d!113433 () Bool)

(assert (=> d!113433 (= (apply!891 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193)) k0!1099) (apply!891 lt!423184 k0!1099))))

(assert (=> d!113433 true))

(declare-fun _$34!1155 () Unit!31676)

(assert (=> d!113433 (= (choose!1561 lt!423184 lt!423187 lt!423193 k0!1099) _$34!1155)))

(declare-fun bs!26320 () Bool)

(assert (= bs!26320 d!113433))

(assert (=> bs!26320 m!872733))

(assert (=> bs!26320 m!872733))

(assert (=> bs!26320 m!872735))

(assert (=> bs!26320 m!872515))

(assert (=> d!113253 d!113433))

(assert (=> d!113253 d!113291))

(assert (=> d!113253 d!113295))

(declare-fun d!113435 () Bool)

(assert (=> d!113435 (= (apply!891 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193)) k0!1099) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423184 (tuple2!13485 lt!423187 lt!423193))) k0!1099)))))

(declare-fun bs!26321 () Bool)

(assert (= bs!26321 d!113435))

(assert (=> bs!26321 m!872937))

(assert (=> bs!26321 m!872937))

(declare-fun m!873273 () Bool)

(assert (=> bs!26321 m!873273))

(assert (=> d!113253 d!113435))

(declare-fun d!113437 () Bool)

(assert (=> d!113437 (= (apply!891 lt!423301 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14353 (getValueByKey!486 (toList!6113 lt!423301) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26322 () Bool)

(assert (= bs!26322 d!113437))

(declare-fun m!873275 () Bool)

(assert (=> bs!26322 m!873275))

(assert (=> bs!26322 m!873275))

(declare-fun m!873277 () Bool)

(assert (=> bs!26322 m!873277))

(assert (=> b!937747 d!113437))

(assert (=> d!113249 d!113281))

(declare-fun d!113439 () Bool)

(assert (=> d!113439 (= (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2808 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!113439 true))

(declare-fun _$20!31 () Unit!31676)

(assert (=> d!113439 (= (choose!1562 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) _$20!31)))

(declare-fun b_lambda!14221 () Bool)

(assert (=> (not b_lambda!14221) (not d!113439)))

(assert (=> d!113439 t!27593))

(declare-fun b_and!29139 () Bool)

(assert (= b_and!29137 (and (=> t!27593 result!12131) b_and!29139)))

(assert (=> d!113439 m!872527))

(assert (=> d!113439 m!872521))

(assert (=> d!113439 m!872529))

(assert (=> d!113439 m!872527))

(assert (=> d!113439 m!872521))

(assert (=> d!113439 m!872753))

(assert (=> d!113439 m!872561))

(assert (=> d!113439 m!872753))

(assert (=> d!113439 m!872755))

(assert (=> d!113439 m!872539))

(assert (=> d!113257 d!113439))

(assert (=> d!113257 d!113281))

(assert (=> d!113251 d!113281))

(declare-fun d!113441 () Bool)

(assert (=> d!113441 (= (apply!891 lt!423279 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14353 (getValueByKey!486 (toList!6113 lt!423279) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26323 () Bool)

(assert (= bs!26323 d!113441))

(assert (=> bs!26323 m!873153))

(assert (=> bs!26323 m!873153))

(declare-fun m!873279 () Bool)

(assert (=> bs!26323 m!873279))

(assert (=> b!937722 d!113441))

(assert (=> b!937793 d!113305))

(assert (=> b!937819 d!113325))

(declare-fun d!113443 () Bool)

(declare-fun e!526815 () Bool)

(assert (=> d!113443 e!526815))

(declare-fun res!631293 () Bool)

(assert (=> d!113443 (=> res!631293 e!526815)))

(declare-fun lt!423529 () Bool)

(assert (=> d!113443 (= res!631293 (not lt!423529))))

(declare-fun lt!423527 () Bool)

(assert (=> d!113443 (= lt!423529 lt!423527)))

(declare-fun lt!423530 () Unit!31676)

(declare-fun e!526814 () Unit!31676)

(assert (=> d!113443 (= lt!423530 e!526814)))

(declare-fun c!97650 () Bool)

(assert (=> d!113443 (= c!97650 lt!423527)))

(assert (=> d!113443 (= lt!423527 (containsKey!451 (toList!6113 lt!423335) (_1!6752 lt!423188)))))

(assert (=> d!113443 (= (contains!5123 lt!423335 (_1!6752 lt!423188)) lt!423529)))

(declare-fun b!938022 () Bool)

(declare-fun lt!423528 () Unit!31676)

(assert (=> b!938022 (= e!526814 lt!423528)))

(assert (=> b!938022 (= lt!423528 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423335) (_1!6752 lt!423188)))))

(assert (=> b!938022 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423335) (_1!6752 lt!423188)))))

(declare-fun b!938023 () Bool)

(declare-fun Unit!31694 () Unit!31676)

(assert (=> b!938023 (= e!526814 Unit!31694)))

(declare-fun b!938024 () Bool)

(assert (=> b!938024 (= e!526815 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423335) (_1!6752 lt!423188))))))

(assert (= (and d!113443 c!97650) b!938022))

(assert (= (and d!113443 (not c!97650)) b!938023))

(assert (= (and d!113443 (not res!631293)) b!938024))

(declare-fun m!873281 () Bool)

(assert (=> d!113443 m!873281))

(declare-fun m!873283 () Bool)

(assert (=> b!938022 m!873283))

(assert (=> b!938022 m!872747))

(assert (=> b!938022 m!872747))

(declare-fun m!873285 () Bool)

(assert (=> b!938022 m!873285))

(assert (=> b!938024 m!872747))

(assert (=> b!938024 m!872747))

(assert (=> b!938024 m!873285))

(assert (=> d!113255 d!113443))

(declare-fun b!938026 () Bool)

(declare-fun e!526816 () Option!492)

(declare-fun e!526817 () Option!492)

(assert (=> b!938026 (= e!526816 e!526817)))

(declare-fun c!97652 () Bool)

(assert (=> b!938026 (= c!97652 (and ((_ is Cons!19287) lt!423333) (not (= (_1!6752 (h!20433 lt!423333)) (_1!6752 lt!423188)))))))

(declare-fun b!938027 () Bool)

(assert (=> b!938027 (= e!526817 (getValueByKey!486 (t!27594 lt!423333) (_1!6752 lt!423188)))))

(declare-fun b!938025 () Bool)

(assert (=> b!938025 (= e!526816 (Some!491 (_2!6752 (h!20433 lt!423333))))))

(declare-fun b!938028 () Bool)

(assert (=> b!938028 (= e!526817 None!490)))

(declare-fun d!113445 () Bool)

(declare-fun c!97651 () Bool)

(assert (=> d!113445 (= c!97651 (and ((_ is Cons!19287) lt!423333) (= (_1!6752 (h!20433 lt!423333)) (_1!6752 lt!423188))))))

(assert (=> d!113445 (= (getValueByKey!486 lt!423333 (_1!6752 lt!423188)) e!526816)))

(assert (= (and d!113445 c!97651) b!938025))

(assert (= (and d!113445 (not c!97651)) b!938026))

(assert (= (and b!938026 c!97652) b!938027))

(assert (= (and b!938026 (not c!97652)) b!938028))

(declare-fun m!873287 () Bool)

(assert (=> b!938027 m!873287))

(assert (=> d!113255 d!113445))

(declare-fun d!113447 () Bool)

(assert (=> d!113447 (= (getValueByKey!486 lt!423333 (_1!6752 lt!423188)) (Some!491 (_2!6752 lt!423188)))))

(declare-fun lt!423533 () Unit!31676)

(declare-fun choose!1566 (List!19291 (_ BitVec 64) V!31977) Unit!31676)

(assert (=> d!113447 (= lt!423533 (choose!1566 lt!423333 (_1!6752 lt!423188) (_2!6752 lt!423188)))))

(declare-fun e!526820 () Bool)

(assert (=> d!113447 e!526820))

(declare-fun res!631298 () Bool)

(assert (=> d!113447 (=> (not res!631298) (not e!526820))))

(assert (=> d!113447 (= res!631298 (isStrictlySorted!499 lt!423333))))

(assert (=> d!113447 (= (lemmaContainsTupThenGetReturnValue!260 lt!423333 (_1!6752 lt!423188) (_2!6752 lt!423188)) lt!423533)))

(declare-fun b!938033 () Bool)

(declare-fun res!631299 () Bool)

(assert (=> b!938033 (=> (not res!631299) (not e!526820))))

(assert (=> b!938033 (= res!631299 (containsKey!451 lt!423333 (_1!6752 lt!423188)))))

(declare-fun b!938034 () Bool)

(assert (=> b!938034 (= e!526820 (contains!5124 lt!423333 (tuple2!13485 (_1!6752 lt!423188) (_2!6752 lt!423188))))))

(assert (= (and d!113447 res!631298) b!938033))

(assert (= (and b!938033 res!631299) b!938034))

(assert (=> d!113447 m!872741))

(declare-fun m!873289 () Bool)

(assert (=> d!113447 m!873289))

(declare-fun m!873291 () Bool)

(assert (=> d!113447 m!873291))

(declare-fun m!873293 () Bool)

(assert (=> b!938033 m!873293))

(declare-fun m!873295 () Bool)

(assert (=> b!938034 m!873295))

(assert (=> d!113255 d!113447))

(declare-fun b!938055 () Bool)

(declare-fun e!526834 () List!19291)

(declare-fun call!40814 () List!19291)

(assert (=> b!938055 (= e!526834 call!40814)))

(declare-fun b!938056 () Bool)

(declare-fun e!526835 () List!19291)

(declare-fun call!40812 () List!19291)

(assert (=> b!938056 (= e!526835 call!40812)))

(declare-fun b!938057 () Bool)

(declare-fun e!526833 () Bool)

(declare-fun lt!423536 () List!19291)

(assert (=> b!938057 (= e!526833 (contains!5124 lt!423536 (tuple2!13485 (_1!6752 lt!423188) (_2!6752 lt!423188))))))

(declare-fun b!938058 () Bool)

(declare-fun e!526831 () List!19291)

(assert (=> b!938058 (= e!526831 e!526835)))

(declare-fun c!97662 () Bool)

(assert (=> b!938058 (= c!97662 (and ((_ is Cons!19287) (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (= (_1!6752 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))) (_1!6752 lt!423188))))))

(declare-fun bm!40809 () Bool)

(declare-fun call!40813 () List!19291)

(assert (=> bm!40809 (= call!40812 call!40813)))

(declare-fun bm!40810 () Bool)

(assert (=> bm!40810 (= call!40814 call!40812)))

(declare-fun e!526832 () List!19291)

(declare-fun b!938059 () Bool)

(assert (=> b!938059 (= e!526832 (insertStrictlySorted!316 (t!27594 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (_1!6752 lt!423188) (_2!6752 lt!423188)))))

(declare-fun d!113449 () Bool)

(assert (=> d!113449 e!526833))

(declare-fun res!631304 () Bool)

(assert (=> d!113449 (=> (not res!631304) (not e!526833))))

(assert (=> d!113449 (= res!631304 (isStrictlySorted!499 lt!423536))))

(assert (=> d!113449 (= lt!423536 e!526831)))

(declare-fun c!97663 () Bool)

(assert (=> d!113449 (= c!97663 (and ((_ is Cons!19287) (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (bvslt (_1!6752 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))) (_1!6752 lt!423188))))))

(assert (=> d!113449 (isStrictlySorted!499 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))))

(assert (=> d!113449 (= (insertStrictlySorted!316 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)) (_1!6752 lt!423188) (_2!6752 lt!423188)) lt!423536)))

(declare-fun c!97664 () Bool)

(declare-fun b!938060 () Bool)

(assert (=> b!938060 (= c!97664 (and ((_ is Cons!19287) (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (bvsgt (_1!6752 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))) (_1!6752 lt!423188))))))

(assert (=> b!938060 (= e!526835 e!526834)))

(declare-fun bm!40811 () Bool)

(declare-fun $colon$colon!553 (List!19291 tuple2!13484) List!19291)

(assert (=> bm!40811 (= call!40813 ($colon$colon!553 e!526832 (ite c!97663 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (tuple2!13485 (_1!6752 lt!423188) (_2!6752 lt!423188)))))))

(declare-fun c!97661 () Bool)

(assert (=> bm!40811 (= c!97661 c!97663)))

(declare-fun b!938061 () Bool)

(assert (=> b!938061 (= e!526834 call!40814)))

(declare-fun b!938062 () Bool)

(assert (=> b!938062 (= e!526832 (ite c!97662 (t!27594 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (ite c!97664 (Cons!19287 (h!20433 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (t!27594 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))) Nil!19288)))))

(declare-fun b!938063 () Bool)

(assert (=> b!938063 (= e!526831 call!40813)))

(declare-fun b!938064 () Bool)

(declare-fun res!631305 () Bool)

(assert (=> b!938064 (=> (not res!631305) (not e!526833))))

(assert (=> b!938064 (= res!631305 (containsKey!451 lt!423536 (_1!6752 lt!423188)))))

(assert (= (and d!113449 c!97663) b!938063))

(assert (= (and d!113449 (not c!97663)) b!938058))

(assert (= (and b!938058 c!97662) b!938056))

(assert (= (and b!938058 (not c!97662)) b!938060))

(assert (= (and b!938060 c!97664) b!938061))

(assert (= (and b!938060 (not c!97664)) b!938055))

(assert (= (or b!938061 b!938055) bm!40810))

(assert (= (or b!938056 bm!40810) bm!40809))

(assert (= (or b!938063 bm!40809) bm!40811))

(assert (= (and bm!40811 c!97661) b!938059))

(assert (= (and bm!40811 (not c!97661)) b!938062))

(assert (= (and d!113449 res!631304) b!938064))

(assert (= (and b!938064 res!631305) b!938057))

(declare-fun m!873297 () Bool)

(assert (=> b!938064 m!873297))

(declare-fun m!873299 () Bool)

(assert (=> d!113449 m!873299))

(declare-fun m!873301 () Bool)

(assert (=> d!113449 m!873301))

(declare-fun m!873303 () Bool)

(assert (=> b!938059 m!873303))

(declare-fun m!873305 () Bool)

(assert (=> b!938057 m!873305))

(declare-fun m!873307 () Bool)

(assert (=> bm!40811 m!873307))

(assert (=> d!113255 d!113449))

(declare-fun d!113451 () Bool)

(declare-fun e!526837 () Bool)

(assert (=> d!113451 e!526837))

(declare-fun res!631306 () Bool)

(assert (=> d!113451 (=> res!631306 e!526837)))

(declare-fun lt!423539 () Bool)

(assert (=> d!113451 (= res!631306 (not lt!423539))))

(declare-fun lt!423537 () Bool)

(assert (=> d!113451 (= lt!423539 lt!423537)))

(declare-fun lt!423540 () Unit!31676)

(declare-fun e!526836 () Unit!31676)

(assert (=> d!113451 (= lt!423540 e!526836)))

(declare-fun c!97665 () Bool)

(assert (=> d!113451 (= c!97665 lt!423537)))

(assert (=> d!113451 (= lt!423537 (containsKey!451 (toList!6113 lt!423386) (select (arr!27178 _keys!1487) from!1844)))))

(assert (=> d!113451 (= (contains!5123 lt!423386 (select (arr!27178 _keys!1487) from!1844)) lt!423539)))

(declare-fun b!938065 () Bool)

(declare-fun lt!423538 () Unit!31676)

(assert (=> b!938065 (= e!526836 lt!423538)))

(assert (=> b!938065 (= lt!423538 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423386) (select (arr!27178 _keys!1487) from!1844)))))

(assert (=> b!938065 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423386) (select (arr!27178 _keys!1487) from!1844)))))

(declare-fun b!938066 () Bool)

(declare-fun Unit!31695 () Unit!31676)

(assert (=> b!938066 (= e!526836 Unit!31695)))

(declare-fun b!938067 () Bool)

(assert (=> b!938067 (= e!526837 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423386) (select (arr!27178 _keys!1487) from!1844))))))

(assert (= (and d!113451 c!97665) b!938065))

(assert (= (and d!113451 (not c!97665)) b!938066))

(assert (= (and d!113451 (not res!631306)) b!938067))

(assert (=> d!113451 m!872831))

(declare-fun m!873309 () Bool)

(assert (=> d!113451 m!873309))

(assert (=> b!938065 m!872831))

(declare-fun m!873311 () Bool)

(assert (=> b!938065 m!873311))

(assert (=> b!938065 m!872831))

(declare-fun m!873313 () Bool)

(assert (=> b!938065 m!873313))

(assert (=> b!938065 m!873313))

(declare-fun m!873315 () Bool)

(assert (=> b!938065 m!873315))

(assert (=> b!938067 m!872831))

(assert (=> b!938067 m!873313))

(assert (=> b!938067 m!873313))

(assert (=> b!938067 m!873315))

(assert (=> b!937834 d!113451))

(assert (=> b!937818 d!113325))

(declare-fun d!113453 () Bool)

(declare-fun e!526838 () Bool)

(assert (=> d!113453 e!526838))

(declare-fun res!631307 () Bool)

(assert (=> d!113453 (=> (not res!631307) (not e!526838))))

(declare-fun lt!423544 () ListLongMap!12195)

(assert (=> d!113453 (= res!631307 (contains!5123 lt!423544 (_1!6752 (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun lt!423542 () List!19291)

(assert (=> d!113453 (= lt!423544 (ListLongMap!12196 lt!423542))))

(declare-fun lt!423543 () Unit!31676)

(declare-fun lt!423541 () Unit!31676)

(assert (=> d!113453 (= lt!423543 lt!423541)))

(assert (=> d!113453 (= (getValueByKey!486 lt!423542 (_1!6752 (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!491 (_2!6752 (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113453 (= lt!423541 (lemmaContainsTupThenGetReturnValue!260 lt!423542 (_1!6752 (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6752 (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113453 (= lt!423542 (insertStrictlySorted!316 (toList!6113 (ite c!97581 call!40784 (ite c!97583 call!40780 call!40783))) (_1!6752 (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6752 (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113453 (= (+!2808 (ite c!97581 call!40784 (ite c!97583 call!40780 call!40783)) (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) lt!423544)))

(declare-fun b!938068 () Bool)

(declare-fun res!631308 () Bool)

(assert (=> b!938068 (=> (not res!631308) (not e!526838))))

(assert (=> b!938068 (= res!631308 (= (getValueByKey!486 (toList!6113 lt!423544) (_1!6752 (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!491 (_2!6752 (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))))

(declare-fun b!938069 () Bool)

(assert (=> b!938069 (= e!526838 (contains!5124 (toList!6113 lt!423544) (ite (or c!97581 c!97583) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (= (and d!113453 res!631307) b!938068))

(assert (= (and b!938068 res!631308) b!938069))

(declare-fun m!873317 () Bool)

(assert (=> d!113453 m!873317))

(declare-fun m!873319 () Bool)

(assert (=> d!113453 m!873319))

(declare-fun m!873321 () Bool)

(assert (=> d!113453 m!873321))

(declare-fun m!873323 () Bool)

(assert (=> d!113453 m!873323))

(declare-fun m!873325 () Bool)

(assert (=> b!938068 m!873325))

(declare-fun m!873327 () Bool)

(assert (=> b!938069 m!873327))

(assert (=> bm!40777 d!113453))

(declare-fun d!113455 () Bool)

(declare-fun lt!423547 () Bool)

(declare-fun content!411 (List!19292) (InoxSet (_ BitVec 64)))

(assert (=> d!113455 (= lt!423547 (select (content!411 Nil!19289) (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun e!526843 () Bool)

(assert (=> d!113455 (= lt!423547 e!526843)))

(declare-fun res!631314 () Bool)

(assert (=> d!113455 (=> (not res!631314) (not e!526843))))

(assert (=> d!113455 (= res!631314 ((_ is Cons!19288) Nil!19289))))

(assert (=> d!113455 (= (contains!5125 Nil!19289 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) lt!423547)))

(declare-fun b!938074 () Bool)

(declare-fun e!526844 () Bool)

(assert (=> b!938074 (= e!526843 e!526844)))

(declare-fun res!631313 () Bool)

(assert (=> b!938074 (=> res!631313 e!526844)))

(assert (=> b!938074 (= res!631313 (= (h!20434 Nil!19289) (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!938075 () Bool)

(assert (=> b!938075 (= e!526844 (contains!5125 (t!27595 Nil!19289) (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (= (and d!113455 res!631314) b!938074))

(assert (= (and b!938074 (not res!631313)) b!938075))

(declare-fun m!873329 () Bool)

(assert (=> d!113455 m!873329))

(assert (=> d!113455 m!872561))

(declare-fun m!873331 () Bool)

(assert (=> d!113455 m!873331))

(assert (=> b!938075 m!872561))

(declare-fun m!873333 () Bool)

(assert (=> b!938075 m!873333))

(assert (=> b!937790 d!113455))

(declare-fun d!113457 () Bool)

(declare-fun e!526845 () Bool)

(assert (=> d!113457 e!526845))

(declare-fun res!631315 () Bool)

(assert (=> d!113457 (=> (not res!631315) (not e!526845))))

(declare-fun lt!423551 () ListLongMap!12195)

(assert (=> d!113457 (= res!631315 (contains!5123 lt!423551 (_1!6752 (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun lt!423549 () List!19291)

(assert (=> d!113457 (= lt!423551 (ListLongMap!12196 lt!423549))))

(declare-fun lt!423550 () Unit!31676)

(declare-fun lt!423548 () Unit!31676)

(assert (=> d!113457 (= lt!423550 lt!423548)))

(assert (=> d!113457 (= (getValueByKey!486 lt!423549 (_1!6752 (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!491 (_2!6752 (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113457 (= lt!423548 (lemmaContainsTupThenGetReturnValue!260 lt!423549 (_1!6752 (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6752 (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113457 (= lt!423549 (insertStrictlySorted!316 (toList!6113 (ite c!97605 call!40798 (ite c!97607 call!40794 call!40797))) (_1!6752 (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6752 (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113457 (= (+!2808 (ite c!97605 call!40798 (ite c!97607 call!40794 call!40797)) (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) lt!423551)))

(declare-fun b!938076 () Bool)

(declare-fun res!631316 () Bool)

(assert (=> b!938076 (=> (not res!631316) (not e!526845))))

(assert (=> b!938076 (= res!631316 (= (getValueByKey!486 (toList!6113 lt!423551) (_1!6752 (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!491 (_2!6752 (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))))

(declare-fun b!938077 () Bool)

(assert (=> b!938077 (= e!526845 (contains!5124 (toList!6113 lt!423551) (ite (or c!97605 c!97607) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (= (and d!113457 res!631315) b!938076))

(assert (= (and b!938076 res!631316) b!938077))

(declare-fun m!873335 () Bool)

(assert (=> d!113457 m!873335))

(declare-fun m!873337 () Bool)

(assert (=> d!113457 m!873337))

(declare-fun m!873339 () Bool)

(assert (=> d!113457 m!873339))

(declare-fun m!873341 () Bool)

(assert (=> d!113457 m!873341))

(declare-fun m!873343 () Bool)

(assert (=> b!938076 m!873343))

(declare-fun m!873345 () Bool)

(assert (=> b!938077 m!873345))

(assert (=> bm!40791 d!113457))

(declare-fun d!113459 () Bool)

(declare-fun lt!423552 () Bool)

(assert (=> d!113459 (= lt!423552 (select (content!411 Nil!19289) (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun e!526846 () Bool)

(assert (=> d!113459 (= lt!423552 e!526846)))

(declare-fun res!631318 () Bool)

(assert (=> d!113459 (=> (not res!631318) (not e!526846))))

(assert (=> d!113459 (= res!631318 ((_ is Cons!19288) Nil!19289))))

(assert (=> d!113459 (= (contains!5125 Nil!19289 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)) lt!423552)))

(declare-fun b!938078 () Bool)

(declare-fun e!526847 () Bool)

(assert (=> b!938078 (= e!526846 e!526847)))

(declare-fun res!631317 () Bool)

(assert (=> b!938078 (=> res!631317 e!526847)))

(assert (=> b!938078 (= res!631317 (= (h!20434 Nil!19289) (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!938079 () Bool)

(assert (=> b!938079 (= e!526847 (contains!5125 (t!27595 Nil!19289) (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)))))

(assert (= (and d!113459 res!631318) b!938078))

(assert (= (and b!938078 (not res!631317)) b!938079))

(assert (=> d!113459 m!873329))

(assert (=> d!113459 m!872797))

(declare-fun m!873347 () Bool)

(assert (=> d!113459 m!873347))

(assert (=> b!938079 m!872797))

(declare-fun m!873349 () Bool)

(assert (=> b!938079 m!873349))

(assert (=> b!937816 d!113459))

(assert (=> d!113275 d!113269))

(declare-fun d!113461 () Bool)

(assert (=> d!113461 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19289)))

(assert (=> d!113461 true))

(declare-fun _$71!180 () Unit!31676)

(assert (=> d!113461 (= (choose!39 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)) _$71!180)))

(declare-fun bs!26324 () Bool)

(assert (= bs!26324 d!113461))

(assert (=> bs!26324 m!872533))

(assert (=> d!113275 d!113461))

(declare-fun b!938080 () Bool)

(declare-fun e!526850 () Bool)

(declare-fun call!40815 () Bool)

(assert (=> b!938080 (= e!526850 call!40815)))

(declare-fun b!938081 () Bool)

(declare-fun e!526849 () Bool)

(assert (=> b!938081 (= e!526849 e!526850)))

(declare-fun c!97666 () Bool)

(assert (=> b!938081 (= c!97666 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!938082 () Bool)

(declare-fun e!526848 () Bool)

(assert (=> b!938082 (= e!526850 e!526848)))

(declare-fun lt!423553 () (_ BitVec 64))

(assert (=> b!938082 (= lt!423553 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!423554 () Unit!31676)

(assert (=> b!938082 (= lt!423554 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!423553 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!938082 (arrayContainsKey!0 _keys!1487 lt!423553 #b00000000000000000000000000000000)))

(declare-fun lt!423555 () Unit!31676)

(assert (=> b!938082 (= lt!423555 lt!423554)))

(declare-fun res!631320 () Bool)

(assert (=> b!938082 (= res!631320 (= (seekEntryOrOpen!0 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1487 mask!1881) (Found!8968 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!938082 (=> (not res!631320) (not e!526848))))

(declare-fun d!113463 () Bool)

(declare-fun res!631319 () Bool)

(assert (=> d!113463 (=> res!631319 e!526849)))

(assert (=> d!113463 (= res!631319 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(assert (=> d!113463 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881) e!526849)))

(declare-fun b!938083 () Bool)

(assert (=> b!938083 (= e!526848 call!40815)))

(declare-fun bm!40812 () Bool)

(assert (=> bm!40812 (= call!40815 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(assert (= (and d!113463 (not res!631319)) b!938081))

(assert (= (and b!938081 c!97666) b!938082))

(assert (= (and b!938081 (not c!97666)) b!938080))

(assert (= (and b!938082 res!631320) b!938083))

(assert (= (or b!938083 b!938080) bm!40812))

(declare-fun m!873351 () Bool)

(assert (=> b!938081 m!873351))

(assert (=> b!938081 m!873351))

(declare-fun m!873353 () Bool)

(assert (=> b!938081 m!873353))

(assert (=> b!938082 m!873351))

(declare-fun m!873355 () Bool)

(assert (=> b!938082 m!873355))

(declare-fun m!873357 () Bool)

(assert (=> b!938082 m!873357))

(assert (=> b!938082 m!873351))

(declare-fun m!873359 () Bool)

(assert (=> b!938082 m!873359))

(declare-fun m!873361 () Bool)

(assert (=> bm!40812 m!873361))

(assert (=> bm!40789 d!113463))

(declare-fun d!113465 () Bool)

(declare-fun e!526852 () Bool)

(assert (=> d!113465 e!526852))

(declare-fun res!631321 () Bool)

(assert (=> d!113465 (=> res!631321 e!526852)))

(declare-fun lt!423558 () Bool)

(assert (=> d!113465 (= res!631321 (not lt!423558))))

(declare-fun lt!423556 () Bool)

(assert (=> d!113465 (= lt!423558 lt!423556)))

(declare-fun lt!423559 () Unit!31676)

(declare-fun e!526851 () Unit!31676)

(assert (=> d!113465 (= lt!423559 e!526851)))

(declare-fun c!97667 () Bool)

(assert (=> d!113465 (= c!97667 lt!423556)))

(assert (=> d!113465 (= lt!423556 (containsKey!451 (toList!6113 lt!423301) (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> d!113465 (= (contains!5123 lt!423301 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) lt!423558)))

(declare-fun b!938084 () Bool)

(declare-fun lt!423557 () Unit!31676)

(assert (=> b!938084 (= e!526851 lt!423557)))

(assert (=> b!938084 (= lt!423557 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423301) (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!938084 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423301) (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!938085 () Bool)

(declare-fun Unit!31696 () Unit!31676)

(assert (=> b!938085 (= e!526851 Unit!31696)))

(declare-fun b!938086 () Bool)

(assert (=> b!938086 (= e!526852 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423301) (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))))

(assert (= (and d!113465 c!97667) b!938084))

(assert (= (and d!113465 (not c!97667)) b!938085))

(assert (= (and d!113465 (not res!631321)) b!938086))

(assert (=> d!113465 m!872677))

(declare-fun m!873363 () Bool)

(assert (=> d!113465 m!873363))

(assert (=> b!938084 m!872677))

(declare-fun m!873365 () Bool)

(assert (=> b!938084 m!873365))

(assert (=> b!938084 m!872677))

(assert (=> b!938084 m!873121))

(assert (=> b!938084 m!873121))

(declare-fun m!873367 () Bool)

(assert (=> b!938084 m!873367))

(assert (=> b!938086 m!872677))

(assert (=> b!938086 m!873121))

(assert (=> b!938086 m!873121))

(assert (=> b!938086 m!873367))

(assert (=> b!937738 d!113465))

(declare-fun d!113467 () Bool)

(assert (=> d!113467 (arrayContainsKey!0 _keys!1487 lt!423373 #b00000000000000000000000000000000)))

(declare-fun lt!423562 () Unit!31676)

(declare-fun choose!13 (array!56484 (_ BitVec 64) (_ BitVec 32)) Unit!31676)

(assert (=> d!113467 (= lt!423562 (choose!13 _keys!1487 lt!423373 #b00000000000000000000000000000000))))

(assert (=> d!113467 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!113467 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!423373 #b00000000000000000000000000000000) lt!423562)))

(declare-fun bs!26325 () Bool)

(assert (= bs!26325 d!113467))

(assert (=> bs!26325 m!872803))

(declare-fun m!873369 () Bool)

(assert (=> bs!26325 m!873369))

(assert (=> b!937811 d!113467))

(declare-fun d!113469 () Bool)

(declare-fun res!631322 () Bool)

(declare-fun e!526853 () Bool)

(assert (=> d!113469 (=> res!631322 e!526853)))

(assert (=> d!113469 (= res!631322 (= (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) lt!423373))))

(assert (=> d!113469 (= (arrayContainsKey!0 _keys!1487 lt!423373 #b00000000000000000000000000000000) e!526853)))

(declare-fun b!938087 () Bool)

(declare-fun e!526854 () Bool)

(assert (=> b!938087 (= e!526853 e!526854)))

(declare-fun res!631323 () Bool)

(assert (=> b!938087 (=> (not res!631323) (not e!526854))))

(assert (=> b!938087 (= res!631323 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun b!938088 () Bool)

(assert (=> b!938088 (= e!526854 (arrayContainsKey!0 _keys!1487 lt!423373 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!113469 (not res!631322)) b!938087))

(assert (= (and b!938087 res!631323) b!938088))

(assert (=> d!113469 m!872797))

(declare-fun m!873371 () Bool)

(assert (=> b!938088 m!873371))

(assert (=> b!937811 d!113469))

(declare-fun b!938101 () Bool)

(declare-fun e!526862 () SeekEntryResult!8968)

(declare-fun lt!423570 () SeekEntryResult!8968)

(assert (=> b!938101 (= e!526862 (MissingZero!8968 (index!38244 lt!423570)))))

(declare-fun b!938102 () Bool)

(declare-fun c!97675 () Bool)

(declare-fun lt!423571 () (_ BitVec 64))

(assert (=> b!938102 (= c!97675 (= lt!423571 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!526861 () SeekEntryResult!8968)

(assert (=> b!938102 (= e!526861 e!526862)))

(declare-fun d!113471 () Bool)

(declare-fun lt!423569 () SeekEntryResult!8968)

(assert (=> d!113471 (and (or ((_ is Undefined!8968) lt!423569) (not ((_ is Found!8968) lt!423569)) (and (bvsge (index!38243 lt!423569) #b00000000000000000000000000000000) (bvslt (index!38243 lt!423569) (size!27638 _keys!1487)))) (or ((_ is Undefined!8968) lt!423569) ((_ is Found!8968) lt!423569) (not ((_ is MissingZero!8968) lt!423569)) (and (bvsge (index!38242 lt!423569) #b00000000000000000000000000000000) (bvslt (index!38242 lt!423569) (size!27638 _keys!1487)))) (or ((_ is Undefined!8968) lt!423569) ((_ is Found!8968) lt!423569) ((_ is MissingZero!8968) lt!423569) (not ((_ is MissingVacant!8968) lt!423569)) (and (bvsge (index!38245 lt!423569) #b00000000000000000000000000000000) (bvslt (index!38245 lt!423569) (size!27638 _keys!1487)))) (or ((_ is Undefined!8968) lt!423569) (ite ((_ is Found!8968) lt!423569) (= (select (arr!27178 _keys!1487) (index!38243 lt!423569)) (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!8968) lt!423569) (= (select (arr!27178 _keys!1487) (index!38242 lt!423569)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8968) lt!423569) (= (select (arr!27178 _keys!1487) (index!38245 lt!423569)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!526863 () SeekEntryResult!8968)

(assert (=> d!113471 (= lt!423569 e!526863)))

(declare-fun c!97674 () Bool)

(assert (=> d!113471 (= c!97674 (and ((_ is Intermediate!8968) lt!423570) (undefined!9780 lt!423570)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56484 (_ BitVec 32)) SeekEntryResult!8968)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!113471 (= lt!423570 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) mask!1881) (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881))))

(assert (=> d!113471 (validMask!0 mask!1881)))

(assert (=> d!113471 (= (seekEntryOrOpen!0 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) lt!423569)))

(declare-fun b!938103 () Bool)

(assert (=> b!938103 (= e!526863 Undefined!8968)))

(declare-fun b!938104 () Bool)

(assert (=> b!938104 (= e!526861 (Found!8968 (index!38244 lt!423570)))))

(declare-fun b!938105 () Bool)

(assert (=> b!938105 (= e!526863 e!526861)))

(assert (=> b!938105 (= lt!423571 (select (arr!27178 _keys!1487) (index!38244 lt!423570)))))

(declare-fun c!97676 () Bool)

(assert (=> b!938105 (= c!97676 (= lt!423571 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!938106 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56484 (_ BitVec 32)) SeekEntryResult!8968)

(assert (=> b!938106 (= e!526862 (seekKeyOrZeroReturnVacant!0 (x!80412 lt!423570) (index!38244 lt!423570) (index!38244 lt!423570) (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881))))

(assert (= (and d!113471 c!97674) b!938103))

(assert (= (and d!113471 (not c!97674)) b!938105))

(assert (= (and b!938105 c!97676) b!938104))

(assert (= (and b!938105 (not c!97676)) b!938102))

(assert (= (and b!938102 c!97675) b!938101))

(assert (= (and b!938102 (not c!97675)) b!938106))

(declare-fun m!873373 () Bool)

(assert (=> d!113471 m!873373))

(declare-fun m!873375 () Bool)

(assert (=> d!113471 m!873375))

(declare-fun m!873377 () Bool)

(assert (=> d!113471 m!873377))

(assert (=> d!113471 m!872797))

(declare-fun m!873379 () Bool)

(assert (=> d!113471 m!873379))

(assert (=> d!113471 m!872797))

(assert (=> d!113471 m!873377))

(assert (=> d!113471 m!872507))

(declare-fun m!873381 () Bool)

(assert (=> d!113471 m!873381))

(declare-fun m!873383 () Bool)

(assert (=> b!938105 m!873383))

(assert (=> b!938106 m!872797))

(declare-fun m!873385 () Bool)

(assert (=> b!938106 m!873385))

(assert (=> b!937811 d!113471))

(assert (=> bm!40780 d!113363))

(assert (=> b!937713 d!113305))

(declare-fun d!113473 () Bool)

(assert (=> d!113473 (= (validKeyInArray!0 (select (arr!27178 _keys!1487) from!1844)) (and (not (= (select (arr!27178 _keys!1487) from!1844) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27178 _keys!1487) from!1844) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!937830 d!113473))

(declare-fun d!113475 () Bool)

(declare-fun e!526865 () Bool)

(assert (=> d!113475 e!526865))

(declare-fun res!631324 () Bool)

(assert (=> d!113475 (=> res!631324 e!526865)))

(declare-fun lt!423574 () Bool)

(assert (=> d!113475 (= res!631324 (not lt!423574))))

(declare-fun lt!423572 () Bool)

(assert (=> d!113475 (= lt!423574 lt!423572)))

(declare-fun lt!423575 () Unit!31676)

(declare-fun e!526864 () Unit!31676)

(assert (=> d!113475 (= lt!423575 e!526864)))

(declare-fun c!97677 () Bool)

(assert (=> d!113475 (= c!97677 lt!423572)))

(assert (=> d!113475 (= lt!423572 (containsKey!451 (toList!6113 lt!423301) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113475 (= (contains!5123 lt!423301 #b1000000000000000000000000000000000000000000000000000000000000000) lt!423574)))

(declare-fun b!938107 () Bool)

(declare-fun lt!423573 () Unit!31676)

(assert (=> b!938107 (= e!526864 lt!423573)))

(assert (=> b!938107 (= lt!423573 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423301) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938107 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423301) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938108 () Bool)

(declare-fun Unit!31697 () Unit!31676)

(assert (=> b!938108 (= e!526864 Unit!31697)))

(declare-fun b!938109 () Bool)

(assert (=> b!938109 (= e!526865 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423301) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113475 c!97677) b!938107))

(assert (= (and d!113475 (not c!97677)) b!938108))

(assert (= (and d!113475 (not res!631324)) b!938109))

(declare-fun m!873387 () Bool)

(assert (=> d!113475 m!873387))

(declare-fun m!873389 () Bool)

(assert (=> b!938107 m!873389))

(assert (=> b!938107 m!873097))

(assert (=> b!938107 m!873097))

(declare-fun m!873391 () Bool)

(assert (=> b!938107 m!873391))

(assert (=> b!938109 m!873097))

(assert (=> b!938109 m!873097))

(assert (=> b!938109 m!873391))

(assert (=> bm!40781 d!113475))

(declare-fun d!113477 () Bool)

(assert (=> d!113477 (= (get!14355 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!937800 d!113477))

(declare-fun d!113479 () Bool)

(declare-fun e!526866 () Bool)

(assert (=> d!113479 e!526866))

(declare-fun res!631325 () Bool)

(assert (=> d!113479 (=> (not res!631325) (not e!526866))))

(declare-fun lt!423579 () ListLongMap!12195)

(assert (=> d!113479 (= res!631325 (contains!5123 lt!423579 (_1!6752 (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun lt!423577 () List!19291)

(assert (=> d!113479 (= lt!423579 (ListLongMap!12196 lt!423577))))

(declare-fun lt!423578 () Unit!31676)

(declare-fun lt!423576 () Unit!31676)

(assert (=> d!113479 (= lt!423578 lt!423576)))

(assert (=> d!113479 (= (getValueByKey!486 lt!423577 (_1!6752 (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!491 (_2!6752 (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113479 (= lt!423576 (lemmaContainsTupThenGetReturnValue!260 lt!423577 (_1!6752 (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6752 (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113479 (= lt!423577 (insertStrictlySorted!316 (toList!6113 (ite c!97575 call!40777 (ite c!97577 call!40773 call!40776))) (_1!6752 (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6752 (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113479 (= (+!2808 (ite c!97575 call!40777 (ite c!97577 call!40773 call!40776)) (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) lt!423579)))

(declare-fun b!938110 () Bool)

(declare-fun res!631326 () Bool)

(assert (=> b!938110 (=> (not res!631326) (not e!526866))))

(assert (=> b!938110 (= res!631326 (= (getValueByKey!486 (toList!6113 lt!423579) (_1!6752 (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!491 (_2!6752 (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))))

(declare-fun b!938111 () Bool)

(assert (=> b!938111 (= e!526866 (contains!5124 (toList!6113 lt!423579) (ite (or c!97575 c!97577) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (= (and d!113479 res!631325) b!938110))

(assert (= (and b!938110 res!631326) b!938111))

(declare-fun m!873393 () Bool)

(assert (=> d!113479 m!873393))

(declare-fun m!873395 () Bool)

(assert (=> d!113479 m!873395))

(declare-fun m!873397 () Bool)

(assert (=> d!113479 m!873397))

(declare-fun m!873399 () Bool)

(assert (=> d!113479 m!873399))

(declare-fun m!873401 () Bool)

(assert (=> b!938110 m!873401))

(declare-fun m!873403 () Bool)

(assert (=> b!938111 m!873403))

(assert (=> bm!40770 d!113479))

(assert (=> b!937825 d!113473))

(declare-fun d!113481 () Bool)

(assert (=> d!113481 (= (apply!891 lt!423386 (select (arr!27178 _keys!1487) from!1844)) (get!14353 (getValueByKey!486 (toList!6113 lt!423386) (select (arr!27178 _keys!1487) from!1844))))))

(declare-fun bs!26326 () Bool)

(assert (= bs!26326 d!113481))

(assert (=> bs!26326 m!872831))

(assert (=> bs!26326 m!873313))

(assert (=> bs!26326 m!873313))

(declare-fun m!873405 () Bool)

(assert (=> bs!26326 m!873405))

(assert (=> b!937840 d!113481))

(declare-fun d!113483 () Bool)

(declare-fun c!97678 () Bool)

(assert (=> d!113483 (= c!97678 ((_ is ValueCellFull!9648) (select (arr!27177 _values!1231) from!1844)))))

(declare-fun e!526867 () V!31977)

(assert (=> d!113483 (= (get!14352 (select (arr!27177 _values!1231) from!1844) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!526867)))

(declare-fun b!938112 () Bool)

(assert (=> b!938112 (= e!526867 (get!14354 (select (arr!27177 _values!1231) from!1844) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!938113 () Bool)

(assert (=> b!938113 (= e!526867 (get!14355 (select (arr!27177 _values!1231) from!1844) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113483 c!97678) b!938112))

(assert (= (and d!113483 (not c!97678)) b!938113))

(assert (=> b!938112 m!872835))

(assert (=> b!938112 m!872521))

(declare-fun m!873407 () Bool)

(assert (=> b!938112 m!873407))

(assert (=> b!938113 m!872835))

(assert (=> b!938113 m!872521))

(declare-fun m!873409 () Bool)

(assert (=> b!938113 m!873409))

(assert (=> b!937840 d!113483))

(declare-fun d!113485 () Bool)

(declare-fun lt!423580 () Bool)

(assert (=> d!113485 (= lt!423580 (select (content!410 (toList!6113 lt!423335)) lt!423188))))

(declare-fun e!526868 () Bool)

(assert (=> d!113485 (= lt!423580 e!526868)))

(declare-fun res!631328 () Bool)

(assert (=> d!113485 (=> (not res!631328) (not e!526868))))

(assert (=> d!113485 (= res!631328 ((_ is Cons!19287) (toList!6113 lt!423335)))))

(assert (=> d!113485 (= (contains!5124 (toList!6113 lt!423335) lt!423188) lt!423580)))

(declare-fun b!938114 () Bool)

(declare-fun e!526869 () Bool)

(assert (=> b!938114 (= e!526868 e!526869)))

(declare-fun res!631327 () Bool)

(assert (=> b!938114 (=> res!631327 e!526869)))

(assert (=> b!938114 (= res!631327 (= (h!20433 (toList!6113 lt!423335)) lt!423188))))

(declare-fun b!938115 () Bool)

(assert (=> b!938115 (= e!526869 (contains!5124 (t!27594 (toList!6113 lt!423335)) lt!423188))))

(assert (= (and d!113485 res!631328) b!938114))

(assert (= (and b!938114 (not res!631327)) b!938115))

(declare-fun m!873411 () Bool)

(assert (=> d!113485 m!873411))

(declare-fun m!873413 () Bool)

(assert (=> d!113485 m!873413))

(declare-fun m!873415 () Bool)

(assert (=> b!938115 m!873415))

(assert (=> b!937758 d!113485))

(declare-fun b!938117 () Bool)

(declare-fun e!526870 () Option!492)

(declare-fun e!526871 () Option!492)

(assert (=> b!938117 (= e!526870 e!526871)))

(declare-fun c!97680 () Bool)

(assert (=> b!938117 (= c!97680 (and ((_ is Cons!19287) (toList!6113 lt!423360)) (not (= (_1!6752 (h!20433 (toList!6113 lt!423360))) (_1!6752 lt!423188)))))))

(declare-fun b!938118 () Bool)

(assert (=> b!938118 (= e!526871 (getValueByKey!486 (t!27594 (toList!6113 lt!423360)) (_1!6752 lt!423188)))))

(declare-fun b!938116 () Bool)

(assert (=> b!938116 (= e!526870 (Some!491 (_2!6752 (h!20433 (toList!6113 lt!423360)))))))

(declare-fun b!938119 () Bool)

(assert (=> b!938119 (= e!526871 None!490)))

(declare-fun d!113487 () Bool)

(declare-fun c!97679 () Bool)

(assert (=> d!113487 (= c!97679 (and ((_ is Cons!19287) (toList!6113 lt!423360)) (= (_1!6752 (h!20433 (toList!6113 lt!423360))) (_1!6752 lt!423188))))))

(assert (=> d!113487 (= (getValueByKey!486 (toList!6113 lt!423360) (_1!6752 lt!423188)) e!526870)))

(assert (= (and d!113487 c!97679) b!938116))

(assert (= (and d!113487 (not c!97679)) b!938117))

(assert (= (and b!938117 c!97680) b!938118))

(assert (= (and b!938117 (not c!97680)) b!938119))

(declare-fun m!873417 () Bool)

(assert (=> b!938118 m!873417))

(assert (=> b!937778 d!113487))

(declare-fun d!113489 () Bool)

(declare-fun e!526873 () Bool)

(assert (=> d!113489 e!526873))

(declare-fun res!631329 () Bool)

(assert (=> d!113489 (=> res!631329 e!526873)))

(declare-fun lt!423583 () Bool)

(assert (=> d!113489 (= res!631329 (not lt!423583))))

(declare-fun lt!423581 () Bool)

(assert (=> d!113489 (= lt!423583 lt!423581)))

(declare-fun lt!423584 () Unit!31676)

(declare-fun e!526872 () Unit!31676)

(assert (=> d!113489 (= lt!423584 e!526872)))

(declare-fun c!97681 () Bool)

(assert (=> d!113489 (= c!97681 lt!423581)))

(assert (=> d!113489 (= lt!423581 (containsKey!451 (toList!6113 lt!423301) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113489 (= (contains!5123 lt!423301 #b0000000000000000000000000000000000000000000000000000000000000000) lt!423583)))

(declare-fun b!938120 () Bool)

(declare-fun lt!423582 () Unit!31676)

(assert (=> b!938120 (= e!526872 lt!423582)))

(assert (=> b!938120 (= lt!423582 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423301) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938120 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423301) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938121 () Bool)

(declare-fun Unit!31698 () Unit!31676)

(assert (=> b!938121 (= e!526872 Unit!31698)))

(declare-fun b!938122 () Bool)

(assert (=> b!938122 (= e!526873 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423301) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113489 c!97681) b!938120))

(assert (= (and d!113489 (not c!97681)) b!938121))

(assert (= (and d!113489 (not res!631329)) b!938122))

(declare-fun m!873419 () Bool)

(assert (=> d!113489 m!873419))

(declare-fun m!873421 () Bool)

(assert (=> b!938120 m!873421))

(assert (=> b!938120 m!873275))

(assert (=> b!938120 m!873275))

(declare-fun m!873423 () Bool)

(assert (=> b!938120 m!873423))

(assert (=> b!938122 m!873275))

(assert (=> b!938122 m!873275))

(assert (=> b!938122 m!873423))

(assert (=> bm!40782 d!113489))

(declare-fun d!113491 () Bool)

(assert (=> d!113491 (= (apply!891 lt!423386 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14353 (getValueByKey!486 (toList!6113 lt!423386) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26327 () Bool)

(assert (= bs!26327 d!113491))

(declare-fun m!873425 () Bool)

(assert (=> bs!26327 m!873425))

(assert (=> bs!26327 m!873425))

(declare-fun m!873427 () Bool)

(assert (=> bs!26327 m!873427))

(assert (=> b!937839 d!113491))

(declare-fun d!113493 () Bool)

(assert (=> d!113493 (= (isDefined!356 (getValueByKey!486 (toList!6113 lt!423184) k0!1099)) (not (isEmpty!701 (getValueByKey!486 (toList!6113 lt!423184) k0!1099))))))

(declare-fun bs!26328 () Bool)

(assert (= bs!26328 d!113493))

(assert (=> bs!26328 m!872821))

(declare-fun m!873429 () Bool)

(assert (=> bs!26328 m!873429))

(assert (=> b!937823 d!113493))

(assert (=> b!937823 d!113389))

(declare-fun d!113495 () Bool)

(assert (=> d!113495 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423184) k0!1099))))

(declare-fun lt!423585 () Unit!31676)

(assert (=> d!113495 (= lt!423585 (choose!1565 (toList!6113 lt!423184) k0!1099))))

(declare-fun e!526874 () Bool)

(assert (=> d!113495 e!526874))

(declare-fun res!631330 () Bool)

(assert (=> d!113495 (=> (not res!631330) (not e!526874))))

(assert (=> d!113495 (= res!631330 (isStrictlySorted!499 (toList!6113 lt!423184)))))

(assert (=> d!113495 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423184) k0!1099) lt!423585)))

(declare-fun b!938123 () Bool)

(assert (=> b!938123 (= e!526874 (containsKey!451 (toList!6113 lt!423184) k0!1099))))

(assert (= (and d!113495 res!631330) b!938123))

(assert (=> d!113495 m!872821))

(assert (=> d!113495 m!872821))

(assert (=> d!113495 m!872829))

(declare-fun m!873431 () Bool)

(assert (=> d!113495 m!873431))

(declare-fun m!873433 () Bool)

(assert (=> d!113495 m!873433))

(assert (=> b!938123 m!872825))

(assert (=> b!937821 d!113495))

(assert (=> b!937821 d!113493))

(assert (=> b!937821 d!113389))

(assert (=> b!937719 d!113397))

(declare-fun d!113497 () Bool)

(declare-fun e!526875 () Bool)

(assert (=> d!113497 e!526875))

(declare-fun res!631331 () Bool)

(assert (=> d!113497 (=> (not res!631331) (not e!526875))))

(declare-fun lt!423589 () ListLongMap!12195)

(assert (=> d!113497 (= res!631331 (contains!5123 lt!423589 (_1!6752 (tuple2!13485 lt!423282 minValue!1173))))))

(declare-fun lt!423587 () List!19291)

(assert (=> d!113497 (= lt!423589 (ListLongMap!12196 lt!423587))))

(declare-fun lt!423588 () Unit!31676)

(declare-fun lt!423586 () Unit!31676)

(assert (=> d!113497 (= lt!423588 lt!423586)))

(assert (=> d!113497 (= (getValueByKey!486 lt!423587 (_1!6752 (tuple2!13485 lt!423282 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423282 minValue!1173))))))

(assert (=> d!113497 (= lt!423586 (lemmaContainsTupThenGetReturnValue!260 lt!423587 (_1!6752 (tuple2!13485 lt!423282 minValue!1173)) (_2!6752 (tuple2!13485 lt!423282 minValue!1173))))))

(assert (=> d!113497 (= lt!423587 (insertStrictlySorted!316 (toList!6113 lt!423278) (_1!6752 (tuple2!13485 lt!423282 minValue!1173)) (_2!6752 (tuple2!13485 lt!423282 minValue!1173))))))

(assert (=> d!113497 (= (+!2808 lt!423278 (tuple2!13485 lt!423282 minValue!1173)) lt!423589)))

(declare-fun b!938124 () Bool)

(declare-fun res!631332 () Bool)

(assert (=> b!938124 (=> (not res!631332) (not e!526875))))

(assert (=> b!938124 (= res!631332 (= (getValueByKey!486 (toList!6113 lt!423589) (_1!6752 (tuple2!13485 lt!423282 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423282 minValue!1173)))))))

(declare-fun b!938125 () Bool)

(assert (=> b!938125 (= e!526875 (contains!5124 (toList!6113 lt!423589) (tuple2!13485 lt!423282 minValue!1173)))))

(assert (= (and d!113497 res!631331) b!938124))

(assert (= (and b!938124 res!631332) b!938125))

(declare-fun m!873435 () Bool)

(assert (=> d!113497 m!873435))

(declare-fun m!873437 () Bool)

(assert (=> d!113497 m!873437))

(declare-fun m!873439 () Bool)

(assert (=> d!113497 m!873439))

(declare-fun m!873441 () Bool)

(assert (=> d!113497 m!873441))

(declare-fun m!873443 () Bool)

(assert (=> b!938124 m!873443))

(declare-fun m!873445 () Bool)

(assert (=> b!938125 m!873445))

(assert (=> b!937719 d!113497))

(declare-fun d!113499 () Bool)

(declare-fun e!526877 () Bool)

(assert (=> d!113499 e!526877))

(declare-fun res!631333 () Bool)

(assert (=> d!113499 (=> res!631333 e!526877)))

(declare-fun lt!423592 () Bool)

(assert (=> d!113499 (= res!631333 (not lt!423592))))

(declare-fun lt!423590 () Bool)

(assert (=> d!113499 (= lt!423592 lt!423590)))

(declare-fun lt!423593 () Unit!31676)

(declare-fun e!526876 () Unit!31676)

(assert (=> d!113499 (= lt!423593 e!526876)))

(declare-fun c!97682 () Bool)

(assert (=> d!113499 (= c!97682 lt!423590)))

(assert (=> d!113499 (= lt!423590 (containsKey!451 (toList!6113 (+!2808 lt!423280 (tuple2!13485 lt!423297 zeroValue!1173))) lt!423298))))

(assert (=> d!113499 (= (contains!5123 (+!2808 lt!423280 (tuple2!13485 lt!423297 zeroValue!1173)) lt!423298) lt!423592)))

(declare-fun b!938126 () Bool)

(declare-fun lt!423591 () Unit!31676)

(assert (=> b!938126 (= e!526876 lt!423591)))

(assert (=> b!938126 (= lt!423591 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 (+!2808 lt!423280 (tuple2!13485 lt!423297 zeroValue!1173))) lt!423298))))

(assert (=> b!938126 (isDefined!356 (getValueByKey!486 (toList!6113 (+!2808 lt!423280 (tuple2!13485 lt!423297 zeroValue!1173))) lt!423298))))

(declare-fun b!938127 () Bool)

(declare-fun Unit!31699 () Unit!31676)

(assert (=> b!938127 (= e!526876 Unit!31699)))

(declare-fun b!938128 () Bool)

(assert (=> b!938128 (= e!526877 (isDefined!356 (getValueByKey!486 (toList!6113 (+!2808 lt!423280 (tuple2!13485 lt!423297 zeroValue!1173))) lt!423298)))))

(assert (= (and d!113499 c!97682) b!938126))

(assert (= (and d!113499 (not c!97682)) b!938127))

(assert (= (and d!113499 (not res!631333)) b!938128))

(declare-fun m!873447 () Bool)

(assert (=> d!113499 m!873447))

(declare-fun m!873449 () Bool)

(assert (=> b!938126 m!873449))

(declare-fun m!873451 () Bool)

(assert (=> b!938126 m!873451))

(assert (=> b!938126 m!873451))

(declare-fun m!873453 () Bool)

(assert (=> b!938126 m!873453))

(assert (=> b!938128 m!873451))

(assert (=> b!938128 m!873451))

(assert (=> b!938128 m!873453))

(assert (=> b!937719 d!113499))

(declare-fun d!113501 () Bool)

(assert (=> d!113501 (contains!5123 (+!2808 lt!423280 (tuple2!13485 lt!423297 zeroValue!1173)) lt!423298)))

(declare-fun lt!423594 () Unit!31676)

(assert (=> d!113501 (= lt!423594 (choose!1563 lt!423280 lt!423297 zeroValue!1173 lt!423298))))

(assert (=> d!113501 (contains!5123 lt!423280 lt!423298)))

(assert (=> d!113501 (= (addStillContains!564 lt!423280 lt!423297 zeroValue!1173 lt!423298) lt!423594)))

(declare-fun bs!26329 () Bool)

(assert (= bs!26329 d!113501))

(assert (=> bs!26329 m!872639))

(assert (=> bs!26329 m!872639))

(assert (=> bs!26329 m!872663))

(declare-fun m!873455 () Bool)

(assert (=> bs!26329 m!873455))

(declare-fun m!873457 () Bool)

(assert (=> bs!26329 m!873457))

(assert (=> b!937719 d!113501))

(declare-fun d!113503 () Bool)

(assert (=> d!113503 (= (apply!891 lt!423292 lt!423283) (get!14353 (getValueByKey!486 (toList!6113 lt!423292) lt!423283)))))

(declare-fun bs!26330 () Bool)

(assert (= bs!26330 d!113503))

(declare-fun m!873459 () Bool)

(assert (=> bs!26330 m!873459))

(assert (=> bs!26330 m!873459))

(declare-fun m!873461 () Bool)

(assert (=> bs!26330 m!873461))

(assert (=> b!937719 d!113503))

(declare-fun d!113505 () Bool)

(declare-fun e!526878 () Bool)

(assert (=> d!113505 e!526878))

(declare-fun res!631334 () Bool)

(assert (=> d!113505 (=> (not res!631334) (not e!526878))))

(declare-fun lt!423598 () ListLongMap!12195)

(assert (=> d!113505 (= res!631334 (contains!5123 lt!423598 (_1!6752 (tuple2!13485 lt!423284 minValue!1173))))))

(declare-fun lt!423596 () List!19291)

(assert (=> d!113505 (= lt!423598 (ListLongMap!12196 lt!423596))))

(declare-fun lt!423597 () Unit!31676)

(declare-fun lt!423595 () Unit!31676)

(assert (=> d!113505 (= lt!423597 lt!423595)))

(assert (=> d!113505 (= (getValueByKey!486 lt!423596 (_1!6752 (tuple2!13485 lt!423284 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423284 minValue!1173))))))

(assert (=> d!113505 (= lt!423595 (lemmaContainsTupThenGetReturnValue!260 lt!423596 (_1!6752 (tuple2!13485 lt!423284 minValue!1173)) (_2!6752 (tuple2!13485 lt!423284 minValue!1173))))))

(assert (=> d!113505 (= lt!423596 (insertStrictlySorted!316 (toList!6113 lt!423292) (_1!6752 (tuple2!13485 lt!423284 minValue!1173)) (_2!6752 (tuple2!13485 lt!423284 minValue!1173))))))

(assert (=> d!113505 (= (+!2808 lt!423292 (tuple2!13485 lt!423284 minValue!1173)) lt!423598)))

(declare-fun b!938129 () Bool)

(declare-fun res!631335 () Bool)

(assert (=> b!938129 (=> (not res!631335) (not e!526878))))

(assert (=> b!938129 (= res!631335 (= (getValueByKey!486 (toList!6113 lt!423598) (_1!6752 (tuple2!13485 lt!423284 minValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423284 minValue!1173)))))))

(declare-fun b!938130 () Bool)

(assert (=> b!938130 (= e!526878 (contains!5124 (toList!6113 lt!423598) (tuple2!13485 lt!423284 minValue!1173)))))

(assert (= (and d!113505 res!631334) b!938129))

(assert (= (and b!938129 res!631335) b!938130))

(declare-fun m!873463 () Bool)

(assert (=> d!113505 m!873463))

(declare-fun m!873465 () Bool)

(assert (=> d!113505 m!873465))

(declare-fun m!873467 () Bool)

(assert (=> d!113505 m!873467))

(declare-fun m!873469 () Bool)

(assert (=> d!113505 m!873469))

(declare-fun m!873471 () Bool)

(assert (=> b!938129 m!873471))

(declare-fun m!873473 () Bool)

(assert (=> b!938130 m!873473))

(assert (=> b!937719 d!113505))

(declare-fun d!113507 () Bool)

(assert (=> d!113507 (= (apply!891 (+!2808 lt!423292 (tuple2!13485 lt!423284 minValue!1173)) lt!423283) (apply!891 lt!423292 lt!423283))))

(declare-fun lt!423599 () Unit!31676)

(assert (=> d!113507 (= lt!423599 (choose!1561 lt!423292 lt!423284 minValue!1173 lt!423283))))

(declare-fun e!526879 () Bool)

(assert (=> d!113507 e!526879))

(declare-fun res!631336 () Bool)

(assert (=> d!113507 (=> (not res!631336) (not e!526879))))

(assert (=> d!113507 (= res!631336 (contains!5123 lt!423292 lt!423283))))

(assert (=> d!113507 (= (addApplyDifferent!438 lt!423292 lt!423284 minValue!1173 lt!423283) lt!423599)))

(declare-fun b!938131 () Bool)

(assert (=> b!938131 (= e!526879 (not (= lt!423283 lt!423284)))))

(assert (= (and d!113507 res!631336) b!938131))

(declare-fun m!873475 () Bool)

(assert (=> d!113507 m!873475))

(assert (=> d!113507 m!872643))

(assert (=> d!113507 m!872657))

(assert (=> d!113507 m!872657))

(assert (=> d!113507 m!872659))

(declare-fun m!873477 () Bool)

(assert (=> d!113507 m!873477))

(assert (=> b!937719 d!113507))

(declare-fun d!113509 () Bool)

(assert (=> d!113509 (= (apply!891 lt!423295 lt!423277) (get!14353 (getValueByKey!486 (toList!6113 lt!423295) lt!423277)))))

(declare-fun bs!26331 () Bool)

(assert (= bs!26331 d!113509))

(declare-fun m!873479 () Bool)

(assert (=> bs!26331 m!873479))

(assert (=> bs!26331 m!873479))

(declare-fun m!873481 () Bool)

(assert (=> bs!26331 m!873481))

(assert (=> b!937719 d!113509))

(declare-fun d!113511 () Bool)

(assert (=> d!113511 (= (apply!891 lt!423278 lt!423290) (get!14353 (getValueByKey!486 (toList!6113 lt!423278) lt!423290)))))

(declare-fun bs!26332 () Bool)

(assert (= bs!26332 d!113511))

(declare-fun m!873483 () Bool)

(assert (=> bs!26332 m!873483))

(assert (=> bs!26332 m!873483))

(declare-fun m!873485 () Bool)

(assert (=> bs!26332 m!873485))

(assert (=> b!937719 d!113511))

(declare-fun d!113513 () Bool)

(declare-fun e!526880 () Bool)

(assert (=> d!113513 e!526880))

(declare-fun res!631337 () Bool)

(assert (=> d!113513 (=> (not res!631337) (not e!526880))))

(declare-fun lt!423603 () ListLongMap!12195)

(assert (=> d!113513 (= res!631337 (contains!5123 lt!423603 (_1!6752 (tuple2!13485 lt!423297 zeroValue!1173))))))

(declare-fun lt!423601 () List!19291)

(assert (=> d!113513 (= lt!423603 (ListLongMap!12196 lt!423601))))

(declare-fun lt!423602 () Unit!31676)

(declare-fun lt!423600 () Unit!31676)

(assert (=> d!113513 (= lt!423602 lt!423600)))

(assert (=> d!113513 (= (getValueByKey!486 lt!423601 (_1!6752 (tuple2!13485 lt!423297 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423297 zeroValue!1173))))))

(assert (=> d!113513 (= lt!423600 (lemmaContainsTupThenGetReturnValue!260 lt!423601 (_1!6752 (tuple2!13485 lt!423297 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423297 zeroValue!1173))))))

(assert (=> d!113513 (= lt!423601 (insertStrictlySorted!316 (toList!6113 lt!423280) (_1!6752 (tuple2!13485 lt!423297 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423297 zeroValue!1173))))))

(assert (=> d!113513 (= (+!2808 lt!423280 (tuple2!13485 lt!423297 zeroValue!1173)) lt!423603)))

(declare-fun b!938132 () Bool)

(declare-fun res!631338 () Bool)

(assert (=> b!938132 (=> (not res!631338) (not e!526880))))

(assert (=> b!938132 (= res!631338 (= (getValueByKey!486 (toList!6113 lt!423603) (_1!6752 (tuple2!13485 lt!423297 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423297 zeroValue!1173)))))))

(declare-fun b!938133 () Bool)

(assert (=> b!938133 (= e!526880 (contains!5124 (toList!6113 lt!423603) (tuple2!13485 lt!423297 zeroValue!1173)))))

(assert (= (and d!113513 res!631337) b!938132))

(assert (= (and b!938132 res!631338) b!938133))

(declare-fun m!873487 () Bool)

(assert (=> d!113513 m!873487))

(declare-fun m!873489 () Bool)

(assert (=> d!113513 m!873489))

(declare-fun m!873491 () Bool)

(assert (=> d!113513 m!873491))

(declare-fun m!873493 () Bool)

(assert (=> d!113513 m!873493))

(declare-fun m!873495 () Bool)

(assert (=> b!938132 m!873495))

(declare-fun m!873497 () Bool)

(assert (=> b!938133 m!873497))

(assert (=> b!937719 d!113513))

(declare-fun d!113515 () Bool)

(assert (=> d!113515 (= (apply!891 (+!2808 lt!423278 (tuple2!13485 lt!423282 minValue!1173)) lt!423290) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423278 (tuple2!13485 lt!423282 minValue!1173))) lt!423290)))))

(declare-fun bs!26333 () Bool)

(assert (= bs!26333 d!113515))

(declare-fun m!873499 () Bool)

(assert (=> bs!26333 m!873499))

(assert (=> bs!26333 m!873499))

(declare-fun m!873501 () Bool)

(assert (=> bs!26333 m!873501))

(assert (=> b!937719 d!113515))

(declare-fun d!113517 () Bool)

(assert (=> d!113517 (= (apply!891 (+!2808 lt!423295 (tuple2!13485 lt!423289 zeroValue!1173)) lt!423277) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423295 (tuple2!13485 lt!423289 zeroValue!1173))) lt!423277)))))

(declare-fun bs!26334 () Bool)

(assert (= bs!26334 d!113517))

(declare-fun m!873503 () Bool)

(assert (=> bs!26334 m!873503))

(assert (=> bs!26334 m!873503))

(declare-fun m!873505 () Bool)

(assert (=> bs!26334 m!873505))

(assert (=> b!937719 d!113517))

(declare-fun d!113519 () Bool)

(assert (=> d!113519 (= (apply!891 (+!2808 lt!423295 (tuple2!13485 lt!423289 zeroValue!1173)) lt!423277) (apply!891 lt!423295 lt!423277))))

(declare-fun lt!423604 () Unit!31676)

(assert (=> d!113519 (= lt!423604 (choose!1561 lt!423295 lt!423289 zeroValue!1173 lt!423277))))

(declare-fun e!526881 () Bool)

(assert (=> d!113519 e!526881))

(declare-fun res!631339 () Bool)

(assert (=> d!113519 (=> (not res!631339) (not e!526881))))

(assert (=> d!113519 (= res!631339 (contains!5123 lt!423295 lt!423277))))

(assert (=> d!113519 (= (addApplyDifferent!438 lt!423295 lt!423289 zeroValue!1173 lt!423277) lt!423604)))

(declare-fun b!938134 () Bool)

(assert (=> b!938134 (= e!526881 (not (= lt!423277 lt!423289)))))

(assert (= (and d!113519 res!631339) b!938134))

(declare-fun m!873507 () Bool)

(assert (=> d!113519 m!873507))

(assert (=> d!113519 m!872637))

(assert (=> d!113519 m!872645))

(assert (=> d!113519 m!872645))

(assert (=> d!113519 m!872655))

(declare-fun m!873509 () Bool)

(assert (=> d!113519 m!873509))

(assert (=> b!937719 d!113519))

(declare-fun d!113521 () Bool)

(declare-fun e!526882 () Bool)

(assert (=> d!113521 e!526882))

(declare-fun res!631340 () Bool)

(assert (=> d!113521 (=> (not res!631340) (not e!526882))))

(declare-fun lt!423608 () ListLongMap!12195)

(assert (=> d!113521 (= res!631340 (contains!5123 lt!423608 (_1!6752 (tuple2!13485 lt!423289 zeroValue!1173))))))

(declare-fun lt!423606 () List!19291)

(assert (=> d!113521 (= lt!423608 (ListLongMap!12196 lt!423606))))

(declare-fun lt!423607 () Unit!31676)

(declare-fun lt!423605 () Unit!31676)

(assert (=> d!113521 (= lt!423607 lt!423605)))

(assert (=> d!113521 (= (getValueByKey!486 lt!423606 (_1!6752 (tuple2!13485 lt!423289 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423289 zeroValue!1173))))))

(assert (=> d!113521 (= lt!423605 (lemmaContainsTupThenGetReturnValue!260 lt!423606 (_1!6752 (tuple2!13485 lt!423289 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423289 zeroValue!1173))))))

(assert (=> d!113521 (= lt!423606 (insertStrictlySorted!316 (toList!6113 lt!423295) (_1!6752 (tuple2!13485 lt!423289 zeroValue!1173)) (_2!6752 (tuple2!13485 lt!423289 zeroValue!1173))))))

(assert (=> d!113521 (= (+!2808 lt!423295 (tuple2!13485 lt!423289 zeroValue!1173)) lt!423608)))

(declare-fun b!938135 () Bool)

(declare-fun res!631341 () Bool)

(assert (=> b!938135 (=> (not res!631341) (not e!526882))))

(assert (=> b!938135 (= res!631341 (= (getValueByKey!486 (toList!6113 lt!423608) (_1!6752 (tuple2!13485 lt!423289 zeroValue!1173))) (Some!491 (_2!6752 (tuple2!13485 lt!423289 zeroValue!1173)))))))

(declare-fun b!938136 () Bool)

(assert (=> b!938136 (= e!526882 (contains!5124 (toList!6113 lt!423608) (tuple2!13485 lt!423289 zeroValue!1173)))))

(assert (= (and d!113521 res!631340) b!938135))

(assert (= (and b!938135 res!631341) b!938136))

(declare-fun m!873511 () Bool)

(assert (=> d!113521 m!873511))

(declare-fun m!873513 () Bool)

(assert (=> d!113521 m!873513))

(declare-fun m!873515 () Bool)

(assert (=> d!113521 m!873515))

(declare-fun m!873517 () Bool)

(assert (=> d!113521 m!873517))

(declare-fun m!873519 () Bool)

(assert (=> b!938135 m!873519))

(declare-fun m!873521 () Bool)

(assert (=> b!938136 m!873521))

(assert (=> b!937719 d!113521))

(declare-fun d!113523 () Bool)

(assert (=> d!113523 (= (apply!891 (+!2808 lt!423278 (tuple2!13485 lt!423282 minValue!1173)) lt!423290) (apply!891 lt!423278 lt!423290))))

(declare-fun lt!423609 () Unit!31676)

(assert (=> d!113523 (= lt!423609 (choose!1561 lt!423278 lt!423282 minValue!1173 lt!423290))))

(declare-fun e!526883 () Bool)

(assert (=> d!113523 e!526883))

(declare-fun res!631342 () Bool)

(assert (=> d!113523 (=> (not res!631342) (not e!526883))))

(assert (=> d!113523 (= res!631342 (contains!5123 lt!423278 lt!423290))))

(assert (=> d!113523 (= (addApplyDifferent!438 lt!423278 lt!423282 minValue!1173 lt!423290) lt!423609)))

(declare-fun b!938137 () Bool)

(assert (=> b!938137 (= e!526883 (not (= lt!423290 lt!423282)))))

(assert (= (and d!113523 res!631342) b!938137))

(declare-fun m!873523 () Bool)

(assert (=> d!113523 m!873523))

(assert (=> d!113523 m!872649))

(assert (=> d!113523 m!872647))

(assert (=> d!113523 m!872647))

(assert (=> d!113523 m!872651))

(declare-fun m!873525 () Bool)

(assert (=> d!113523 m!873525))

(assert (=> b!937719 d!113523))

(declare-fun d!113525 () Bool)

(assert (=> d!113525 (= (apply!891 (+!2808 lt!423292 (tuple2!13485 lt!423284 minValue!1173)) lt!423283) (get!14353 (getValueByKey!486 (toList!6113 (+!2808 lt!423292 (tuple2!13485 lt!423284 minValue!1173))) lt!423283)))))

(declare-fun bs!26335 () Bool)

(assert (= bs!26335 d!113525))

(declare-fun m!873527 () Bool)

(assert (=> bs!26335 m!873527))

(assert (=> bs!26335 m!873527))

(declare-fun m!873529 () Bool)

(assert (=> bs!26335 m!873529))

(assert (=> b!937719 d!113525))

(declare-fun d!113527 () Bool)

(assert (=> d!113527 (= (isDefined!356 (getValueByKey!486 (toList!6113 lt!423181) k0!1099)) (not (isEmpty!701 (getValueByKey!486 (toList!6113 lt!423181) k0!1099))))))

(declare-fun bs!26336 () Bool)

(assert (= bs!26336 d!113527))

(assert (=> bs!26336 m!872765))

(declare-fun m!873531 () Bool)

(assert (=> bs!26336 m!873531))

(assert (=> b!937771 d!113527))

(assert (=> b!937771 d!113381))

(declare-fun d!113529 () Bool)

(declare-fun e!526885 () Bool)

(assert (=> d!113529 e!526885))

(declare-fun res!631343 () Bool)

(assert (=> d!113529 (=> res!631343 e!526885)))

(declare-fun lt!423612 () Bool)

(assert (=> d!113529 (= res!631343 (not lt!423612))))

(declare-fun lt!423610 () Bool)

(assert (=> d!113529 (= lt!423612 lt!423610)))

(declare-fun lt!423613 () Unit!31676)

(declare-fun e!526884 () Unit!31676)

(assert (=> d!113529 (= lt!423613 e!526884)))

(declare-fun c!97683 () Bool)

(assert (=> d!113529 (= c!97683 lt!423610)))

(assert (=> d!113529 (= lt!423610 (containsKey!451 (toList!6113 lt!423386) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113529 (= (contains!5123 lt!423386 #b1000000000000000000000000000000000000000000000000000000000000000) lt!423612)))

(declare-fun b!938138 () Bool)

(declare-fun lt!423611 () Unit!31676)

(assert (=> b!938138 (= e!526884 lt!423611)))

(assert (=> b!938138 (= lt!423611 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423386) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938138 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423386) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938139 () Bool)

(declare-fun Unit!31700 () Unit!31676)

(assert (=> b!938139 (= e!526884 Unit!31700)))

(declare-fun b!938140 () Bool)

(assert (=> b!938140 (= e!526885 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423386) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113529 c!97683) b!938138))

(assert (= (and d!113529 (not c!97683)) b!938139))

(assert (= (and d!113529 (not res!631343)) b!938140))

(declare-fun m!873533 () Bool)

(assert (=> d!113529 m!873533))

(declare-fun m!873535 () Bool)

(assert (=> b!938138 m!873535))

(assert (=> b!938138 m!873425))

(assert (=> b!938138 m!873425))

(declare-fun m!873537 () Bool)

(assert (=> b!938138 m!873537))

(assert (=> b!938140 m!873425))

(assert (=> b!938140 m!873425))

(assert (=> b!938140 m!873537))

(assert (=> bm!40795 d!113529))

(declare-fun d!113531 () Bool)

(assert (=> d!113531 (not (= (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) k0!1099))))

(assert (=> d!113531 true))

(declare-fun _$67!49 () Unit!31676)

(assert (=> d!113531 (= (choose!21 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19289) _$67!49)))

(declare-fun bs!26337 () Bool)

(assert (= bs!26337 d!113531))

(assert (=> bs!26337 m!872561))

(assert (=> d!113267 d!113531))

(assert (=> b!937761 d!113249))

(declare-fun d!113533 () Bool)

(declare-fun e!526886 () Bool)

(assert (=> d!113533 e!526886))

(declare-fun res!631344 () Bool)

(assert (=> d!113533 (=> (not res!631344) (not e!526886))))

(declare-fun lt!423617 () ListLongMap!12195)

(assert (=> d!113533 (= res!631344 (contains!5123 lt!423617 (_1!6752 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!423615 () List!19291)

(assert (=> d!113533 (= lt!423617 (ListLongMap!12196 lt!423615))))

(declare-fun lt!423616 () Unit!31676)

(declare-fun lt!423614 () Unit!31676)

(assert (=> d!113533 (= lt!423616 lt!423614)))

(assert (=> d!113533 (= (getValueByKey!486 lt!423615 (_1!6752 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!491 (_2!6752 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!113533 (= lt!423614 (lemmaContainsTupThenGetReturnValue!260 lt!423615 (_1!6752 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!6752 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!113533 (= lt!423615 (insertStrictlySorted!316 (toList!6113 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235)) (_1!6752 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!6752 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!113533 (= (+!2808 (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!423617)))

(declare-fun b!938141 () Bool)

(declare-fun res!631345 () Bool)

(assert (=> b!938141 (=> (not res!631345) (not e!526886))))

(assert (=> b!938141 (= res!631345 (= (getValueByKey!486 (toList!6113 lt!423617) (_1!6752 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!491 (_2!6752 (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!938142 () Bool)

(assert (=> b!938142 (= e!526886 (contains!5124 (toList!6113 lt!423617) (tuple2!13485 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14352 (select (arr!27177 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!113533 res!631344) b!938141))

(assert (= (and b!938141 res!631345) b!938142))

(declare-fun m!873539 () Bool)

(assert (=> d!113533 m!873539))

(declare-fun m!873541 () Bool)

(assert (=> d!113533 m!873541))

(declare-fun m!873543 () Bool)

(assert (=> d!113533 m!873543))

(declare-fun m!873545 () Bool)

(assert (=> d!113533 m!873545))

(declare-fun m!873547 () Bool)

(assert (=> b!938141 m!873547))

(declare-fun m!873549 () Bool)

(assert (=> b!938142 m!873549))

(assert (=> b!937761 d!113533))

(declare-fun b!938143 () Bool)

(declare-fun e!526888 () ListLongMap!12195)

(declare-fun call!40819 () ListLongMap!12195)

(assert (=> b!938143 (= e!526888 call!40819)))

(declare-fun b!938144 () Bool)

(declare-fun e!526887 () Bool)

(assert (=> b!938144 (= e!526887 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!938145 () Bool)

(declare-fun res!631349 () Bool)

(declare-fun e!526890 () Bool)

(assert (=> b!938145 (=> (not res!631349) (not e!526890))))

(declare-fun e!526891 () Bool)

(assert (=> b!938145 (= res!631349 e!526891)))

(declare-fun c!97684 () Bool)

(assert (=> b!938145 (= c!97684 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!938146 () Bool)

(declare-fun e!526895 () ListLongMap!12195)

(declare-fun call!40822 () ListLongMap!12195)

(assert (=> b!938146 (= e!526895 call!40822)))

(declare-fun b!938147 () Bool)

(declare-fun e!526898 () Bool)

(declare-fun e!526893 () Bool)

(assert (=> b!938147 (= e!526898 e!526893)))

(declare-fun res!631352 () Bool)

(declare-fun call!40818 () Bool)

(assert (=> b!938147 (= res!631352 call!40818)))

(assert (=> b!938147 (=> (not res!631352) (not e!526893))))

(declare-fun b!938148 () Bool)

(declare-fun res!631351 () Bool)

(assert (=> b!938148 (=> (not res!631351) (not e!526890))))

(declare-fun e!526897 () Bool)

(assert (=> b!938148 (= res!631351 e!526897)))

(declare-fun res!631354 () Bool)

(assert (=> b!938148 (=> res!631354 e!526897)))

(declare-fun e!526896 () Bool)

(assert (=> b!938148 (= res!631354 (not e!526896))))

(declare-fun res!631347 () Bool)

(assert (=> b!938148 (=> (not res!631347) (not e!526896))))

(assert (=> b!938148 (= res!631347 (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun b!938149 () Bool)

(assert (=> b!938149 (= e!526896 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!938150 () Bool)

(declare-fun call!40821 () Bool)

(assert (=> b!938150 (= e!526891 (not call!40821))))

(declare-fun b!938151 () Bool)

(declare-fun c!97685 () Bool)

(assert (=> b!938151 (= c!97685 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!938151 (= e!526895 e!526888)))

(declare-fun b!938152 () Bool)

(declare-fun e!526892 () ListLongMap!12195)

(declare-fun call!40817 () ListLongMap!12195)

(assert (=> b!938152 (= e!526892 (+!2808 call!40817 (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun call!40820 () ListLongMap!12195)

(declare-fun c!97687 () Bool)

(declare-fun c!97689 () Bool)

(declare-fun call!40816 () ListLongMap!12195)

(declare-fun bm!40813 () Bool)

(assert (=> bm!40813 (= call!40817 (+!2808 (ite c!97687 call!40820 (ite c!97689 call!40816 call!40819)) (ite (or c!97687 c!97689) (tuple2!13485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun bm!40814 () Bool)

(assert (=> bm!40814 (= call!40822 call!40817)))

(declare-fun b!938153 () Bool)

(declare-fun e!526894 () Bool)

(assert (=> b!938153 (= e!526897 e!526894)))

(declare-fun res!631348 () Bool)

(assert (=> b!938153 (=> (not res!631348) (not e!526894))))

(declare-fun lt!423620 () ListLongMap!12195)

(assert (=> b!938153 (= res!631348 (contains!5123 lt!423620 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(assert (=> b!938153 (and (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun bm!40815 () Bool)

(assert (=> bm!40815 (= call!40819 call!40816)))

(declare-fun bm!40816 () Bool)

(assert (=> bm!40816 (= call!40820 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!938154 () Bool)

(assert (=> b!938154 (= e!526898 (not call!40818))))

(declare-fun bm!40817 () Bool)

(assert (=> bm!40817 (= call!40818 (contains!5123 lt!423620 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938155 () Bool)

(declare-fun e!526889 () Unit!31676)

(declare-fun lt!423627 () Unit!31676)

(assert (=> b!938155 (= e!526889 lt!423627)))

(declare-fun lt!423621 () ListLongMap!12195)

(assert (=> b!938155 (= lt!423621 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423638 () (_ BitVec 64))

(assert (=> b!938155 (= lt!423638 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423639 () (_ BitVec 64))

(assert (=> b!938155 (= lt!423639 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!423626 () Unit!31676)

(assert (=> b!938155 (= lt!423626 (addStillContains!564 lt!423621 lt!423638 zeroValue!1173 lt!423639))))

(assert (=> b!938155 (contains!5123 (+!2808 lt!423621 (tuple2!13485 lt!423638 zeroValue!1173)) lt!423639)))

(declare-fun lt!423637 () Unit!31676)

(assert (=> b!938155 (= lt!423637 lt!423626)))

(declare-fun lt!423633 () ListLongMap!12195)

(assert (=> b!938155 (= lt!423633 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423625 () (_ BitVec 64))

(assert (=> b!938155 (= lt!423625 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423624 () (_ BitVec 64))

(assert (=> b!938155 (= lt!423624 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!423629 () Unit!31676)

(assert (=> b!938155 (= lt!423629 (addApplyDifferent!438 lt!423633 lt!423625 minValue!1173 lt!423624))))

(assert (=> b!938155 (= (apply!891 (+!2808 lt!423633 (tuple2!13485 lt!423625 minValue!1173)) lt!423624) (apply!891 lt!423633 lt!423624))))

(declare-fun lt!423628 () Unit!31676)

(assert (=> b!938155 (= lt!423628 lt!423629)))

(declare-fun lt!423636 () ListLongMap!12195)

(assert (=> b!938155 (= lt!423636 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423630 () (_ BitVec 64))

(assert (=> b!938155 (= lt!423630 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423618 () (_ BitVec 64))

(assert (=> b!938155 (= lt!423618 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!423634 () Unit!31676)

(assert (=> b!938155 (= lt!423634 (addApplyDifferent!438 lt!423636 lt!423630 zeroValue!1173 lt!423618))))

(assert (=> b!938155 (= (apply!891 (+!2808 lt!423636 (tuple2!13485 lt!423630 zeroValue!1173)) lt!423618) (apply!891 lt!423636 lt!423618))))

(declare-fun lt!423622 () Unit!31676)

(assert (=> b!938155 (= lt!423622 lt!423634)))

(declare-fun lt!423619 () ListLongMap!12195)

(assert (=> b!938155 (= lt!423619 (getCurrentListMapNoExtraKeys!3319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423623 () (_ BitVec 64))

(assert (=> b!938155 (= lt!423623 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423631 () (_ BitVec 64))

(assert (=> b!938155 (= lt!423631 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (=> b!938155 (= lt!423627 (addApplyDifferent!438 lt!423619 lt!423623 minValue!1173 lt!423631))))

(assert (=> b!938155 (= (apply!891 (+!2808 lt!423619 (tuple2!13485 lt!423623 minValue!1173)) lt!423631) (apply!891 lt!423619 lt!423631))))

(declare-fun b!938156 () Bool)

(declare-fun Unit!31701 () Unit!31676)

(assert (=> b!938156 (= e!526889 Unit!31701)))

(declare-fun b!938157 () Bool)

(assert (=> b!938157 (= e!526892 e!526895)))

(assert (=> b!938157 (= c!97689 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!938158 () Bool)

(assert (=> b!938158 (= e!526893 (= (apply!891 lt!423620 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun bm!40818 () Bool)

(assert (=> bm!40818 (= call!40821 (contains!5123 lt!423620 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938159 () Bool)

(assert (=> b!938159 (= e!526894 (= (apply!891 lt!423620 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) (get!14352 (select (arr!27177 _values!1231) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (dynLambda!1647 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938159 (and (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27637 _values!1231)))))

(assert (=> b!938159 (and (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(declare-fun b!938160 () Bool)

(assert (=> b!938160 (= e!526888 call!40822)))

(declare-fun b!938161 () Bool)

(declare-fun e!526899 () Bool)

(assert (=> b!938161 (= e!526891 e!526899)))

(declare-fun res!631350 () Bool)

(assert (=> b!938161 (= res!631350 call!40821)))

(assert (=> b!938161 (=> (not res!631350) (not e!526899))))

(declare-fun bm!40819 () Bool)

(assert (=> bm!40819 (= call!40816 call!40820)))

(declare-fun d!113535 () Bool)

(assert (=> d!113535 e!526890))

(declare-fun res!631346 () Bool)

(assert (=> d!113535 (=> (not res!631346) (not e!526890))))

(assert (=> d!113535 (= res!631346 (or (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27638 _keys!1487)) (and (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27638 _keys!1487)))))))

(declare-fun lt!423632 () ListLongMap!12195)

(assert (=> d!113535 (= lt!423620 lt!423632)))

(declare-fun lt!423635 () Unit!31676)

(assert (=> d!113535 (= lt!423635 e!526889)))

(declare-fun c!97688 () Bool)

(assert (=> d!113535 (= c!97688 e!526887)))

(declare-fun res!631353 () Bool)

(assert (=> d!113535 (=> (not res!631353) (not e!526887))))

(assert (=> d!113535 (= res!631353 (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(assert (=> d!113535 (= lt!423632 e!526892)))

(assert (=> d!113535 (= c!97687 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113535 (validMask!0 mask!1881)))

(assert (=> d!113535 (= (getCurrentListMap!3302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) lt!423620)))

(declare-fun b!938162 () Bool)

(assert (=> b!938162 (= e!526899 (= (apply!891 lt!423620 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!938163 () Bool)

(assert (=> b!938163 (= e!526890 e!526898)))

(declare-fun c!97686 () Bool)

(assert (=> b!938163 (= c!97686 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!113535 c!97687) b!938152))

(assert (= (and d!113535 (not c!97687)) b!938157))

(assert (= (and b!938157 c!97689) b!938146))

(assert (= (and b!938157 (not c!97689)) b!938151))

(assert (= (and b!938151 c!97685) b!938160))

(assert (= (and b!938151 (not c!97685)) b!938143))

(assert (= (or b!938160 b!938143) bm!40815))

(assert (= (or b!938146 bm!40815) bm!40819))

(assert (= (or b!938146 b!938160) bm!40814))

(assert (= (or b!938152 bm!40819) bm!40816))

(assert (= (or b!938152 bm!40814) bm!40813))

(assert (= (and d!113535 res!631353) b!938144))

(assert (= (and d!113535 c!97688) b!938155))

(assert (= (and d!113535 (not c!97688)) b!938156))

(assert (= (and d!113535 res!631346) b!938148))

(assert (= (and b!938148 res!631347) b!938149))

(assert (= (and b!938148 (not res!631354)) b!938153))

(assert (= (and b!938153 res!631348) b!938159))

(assert (= (and b!938148 res!631351) b!938145))

(assert (= (and b!938145 c!97684) b!938161))

(assert (= (and b!938145 (not c!97684)) b!938150))

(assert (= (and b!938161 res!631350) b!938162))

(assert (= (or b!938161 b!938150) bm!40818))

(assert (= (and b!938145 res!631349) b!938163))

(assert (= (and b!938163 c!97686) b!938147))

(assert (= (and b!938163 (not c!97686)) b!938154))

(assert (= (and b!938147 res!631352) b!938158))

(assert (= (or b!938147 b!938154) bm!40817))

(declare-fun b_lambda!14223 () Bool)

(assert (=> (not b_lambda!14223) (not b!938159)))

(assert (=> b!938159 t!27593))

(declare-fun b_and!29141 () Bool)

(assert (= b_and!29139 (and (=> t!27593 result!12131) b_and!29141)))

(assert (=> b!938159 m!872521))

(declare-fun m!873551 () Bool)

(assert (=> b!938159 m!873551))

(assert (=> b!938159 m!873551))

(declare-fun m!873553 () Bool)

(assert (=> b!938159 m!873553))

(declare-fun m!873555 () Bool)

(assert (=> b!938159 m!873555))

(assert (=> b!938159 m!872521))

(declare-fun m!873557 () Bool)

(assert (=> b!938159 m!873557))

(assert (=> b!938159 m!873555))

(declare-fun m!873559 () Bool)

(assert (=> bm!40818 m!873559))

(assert (=> b!938144 m!873551))

(assert (=> b!938144 m!873551))

(declare-fun m!873561 () Bool)

(assert (=> b!938144 m!873561))

(assert (=> b!938155 m!873133))

(declare-fun m!873563 () Bool)

(assert (=> b!938155 m!873563))

(declare-fun m!873565 () Bool)

(assert (=> b!938155 m!873565))

(declare-fun m!873567 () Bool)

(assert (=> b!938155 m!873567))

(declare-fun m!873569 () Bool)

(assert (=> b!938155 m!873569))

(declare-fun m!873571 () Bool)

(assert (=> b!938155 m!873571))

(declare-fun m!873573 () Bool)

(assert (=> b!938155 m!873573))

(declare-fun m!873575 () Bool)

(assert (=> b!938155 m!873575))

(assert (=> b!938155 m!873551))

(declare-fun m!873577 () Bool)

(assert (=> b!938155 m!873577))

(assert (=> b!938155 m!873575))

(declare-fun m!873579 () Bool)

(assert (=> b!938155 m!873579))

(declare-fun m!873581 () Bool)

(assert (=> b!938155 m!873581))

(assert (=> b!938155 m!873573))

(declare-fun m!873583 () Bool)

(assert (=> b!938155 m!873583))

(declare-fun m!873585 () Bool)

(assert (=> b!938155 m!873585))

(assert (=> b!938155 m!873585))

(declare-fun m!873587 () Bool)

(assert (=> b!938155 m!873587))

(declare-fun m!873589 () Bool)

(assert (=> b!938155 m!873589))

(assert (=> b!938155 m!873567))

(declare-fun m!873591 () Bool)

(assert (=> b!938155 m!873591))

(declare-fun m!873593 () Bool)

(assert (=> b!938152 m!873593))

(assert (=> b!938149 m!873551))

(assert (=> b!938149 m!873551))

(assert (=> b!938149 m!873561))

(declare-fun m!873595 () Bool)

(assert (=> b!938162 m!873595))

(declare-fun m!873597 () Bool)

(assert (=> bm!40817 m!873597))

(declare-fun m!873599 () Bool)

(assert (=> b!938158 m!873599))

(assert (=> bm!40816 m!873133))

(assert (=> d!113535 m!872507))

(assert (=> b!938153 m!873551))

(assert (=> b!938153 m!873551))

(declare-fun m!873601 () Bool)

(assert (=> b!938153 m!873601))

(declare-fun m!873603 () Bool)

(assert (=> bm!40813 m!873603))

(assert (=> b!937761 d!113535))

(assert (=> b!937761 d!113273))

(assert (=> b!937734 d!113395))

(declare-fun b!938164 () Bool)

(declare-fun e!526901 () Bool)

(assert (=> b!938164 (= e!526901 (contains!5125 (ite c!97592 (Cons!19288 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19289) Nil!19289) (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!938165 () Bool)

(declare-fun e!526902 () Bool)

(declare-fun call!40823 () Bool)

(assert (=> b!938165 (= e!526902 call!40823)))

(declare-fun d!113537 () Bool)

(declare-fun res!631355 () Bool)

(declare-fun e!526903 () Bool)

(assert (=> d!113537 (=> res!631355 e!526903)))

(assert (=> d!113537 (= res!631355 (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(assert (=> d!113537 (= (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (ite c!97592 (Cons!19288 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19289) Nil!19289)) e!526903)))

(declare-fun b!938166 () Bool)

(declare-fun e!526900 () Bool)

(assert (=> b!938166 (= e!526903 e!526900)))

(declare-fun res!631356 () Bool)

(assert (=> b!938166 (=> (not res!631356) (not e!526900))))

(assert (=> b!938166 (= res!631356 (not e!526901))))

(declare-fun res!631357 () Bool)

(assert (=> b!938166 (=> (not res!631357) (not e!526901))))

(assert (=> b!938166 (= res!631357 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!938167 () Bool)

(assert (=> b!938167 (= e!526900 e!526902)))

(declare-fun c!97690 () Bool)

(assert (=> b!938167 (= c!97690 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun bm!40820 () Bool)

(assert (=> bm!40820 (= call!40823 (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!97690 (Cons!19288 (select (arr!27178 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (ite c!97592 (Cons!19288 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19289) Nil!19289)) (ite c!97592 (Cons!19288 (select (arr!27178 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19289) Nil!19289))))))

(declare-fun b!938168 () Bool)

(assert (=> b!938168 (= e!526902 call!40823)))

(assert (= (and d!113537 (not res!631355)) b!938166))

(assert (= (and b!938166 res!631357) b!938164))

(assert (= (and b!938166 res!631356) b!938167))

(assert (= (and b!938167 c!97690) b!938165))

(assert (= (and b!938167 (not c!97690)) b!938168))

(assert (= (or b!938165 b!938168) bm!40820))

(assert (=> b!938164 m!873551))

(assert (=> b!938164 m!873551))

(declare-fun m!873605 () Bool)

(assert (=> b!938164 m!873605))

(assert (=> b!938166 m!873551))

(assert (=> b!938166 m!873551))

(assert (=> b!938166 m!873561))

(assert (=> b!938167 m!873551))

(assert (=> b!938167 m!873551))

(assert (=> b!938167 m!873561))

(assert (=> bm!40820 m!873551))

(declare-fun m!873607 () Bool)

(assert (=> bm!40820 m!873607))

(assert (=> bm!40786 d!113537))

(declare-fun d!113539 () Bool)

(assert (=> d!113539 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423181) k0!1099))))

(declare-fun lt!423640 () Unit!31676)

(assert (=> d!113539 (= lt!423640 (choose!1565 (toList!6113 lt!423181) k0!1099))))

(declare-fun e!526904 () Bool)

(assert (=> d!113539 e!526904))

(declare-fun res!631358 () Bool)

(assert (=> d!113539 (=> (not res!631358) (not e!526904))))

(assert (=> d!113539 (= res!631358 (isStrictlySorted!499 (toList!6113 lt!423181)))))

(assert (=> d!113539 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423181) k0!1099) lt!423640)))

(declare-fun b!938169 () Bool)

(assert (=> b!938169 (= e!526904 (containsKey!451 (toList!6113 lt!423181) k0!1099))))

(assert (= (and d!113539 res!631358) b!938169))

(assert (=> d!113539 m!872765))

(assert (=> d!113539 m!872765))

(assert (=> d!113539 m!872767))

(declare-fun m!873609 () Bool)

(assert (=> d!113539 m!873609))

(declare-fun m!873611 () Bool)

(assert (=> d!113539 m!873611))

(assert (=> b!938169 m!872761))

(assert (=> b!937769 d!113539))

(assert (=> b!937769 d!113527))

(assert (=> b!937769 d!113381))

(assert (=> bm!40794 d!113401))

(declare-fun b!938170 () Bool)

(declare-fun e!526906 () Bool)

(assert (=> b!938170 (= e!526906 (contains!5125 (ite c!97600 (Cons!19288 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) Nil!19289) Nil!19289) (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!938171 () Bool)

(declare-fun e!526907 () Bool)

(declare-fun call!40824 () Bool)

(assert (=> b!938171 (= e!526907 call!40824)))

(declare-fun d!113541 () Bool)

(declare-fun res!631359 () Bool)

(declare-fun e!526908 () Bool)

(assert (=> d!113541 (=> res!631359 e!526908)))

(assert (=> d!113541 (= res!631359 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27638 _keys!1487)))))

(assert (=> d!113541 (= (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97600 (Cons!19288 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) Nil!19289) Nil!19289)) e!526908)))

(declare-fun b!938172 () Bool)

(declare-fun e!526905 () Bool)

(assert (=> b!938172 (= e!526908 e!526905)))

(declare-fun res!631360 () Bool)

(assert (=> b!938172 (=> (not res!631360) (not e!526905))))

(assert (=> b!938172 (= res!631360 (not e!526906))))

(declare-fun res!631361 () Bool)

(assert (=> b!938172 (=> (not res!631361) (not e!526906))))

(assert (=> b!938172 (= res!631361 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!938173 () Bool)

(assert (=> b!938173 (= e!526905 e!526907)))

(declare-fun c!97691 () Bool)

(assert (=> b!938173 (= c!97691 (validKeyInArray!0 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!40821 () Bool)

(assert (=> bm!40821 (= call!40824 (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!97691 (Cons!19288 (select (arr!27178 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!97600 (Cons!19288 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) Nil!19289) Nil!19289)) (ite c!97600 (Cons!19288 (select (arr!27178 _keys!1487) #b00000000000000000000000000000000) Nil!19289) Nil!19289))))))

(declare-fun b!938174 () Bool)

(assert (=> b!938174 (= e!526907 call!40824)))

(assert (= (and d!113541 (not res!631359)) b!938172))

(assert (= (and b!938172 res!631361) b!938170))

(assert (= (and b!938172 res!631360) b!938173))

(assert (= (and b!938173 c!97691) b!938171))

(assert (= (and b!938173 (not c!97691)) b!938174))

(assert (= (or b!938171 b!938174) bm!40821))

(assert (=> b!938170 m!873351))

(assert (=> b!938170 m!873351))

(declare-fun m!873613 () Bool)

(assert (=> b!938170 m!873613))

(assert (=> b!938172 m!873351))

(assert (=> b!938172 m!873351))

(assert (=> b!938172 m!873353))

(assert (=> b!938173 m!873351))

(assert (=> b!938173 m!873351))

(assert (=> b!938173 m!873353))

(assert (=> bm!40821 m!873351))

(declare-fun m!873615 () Bool)

(assert (=> bm!40821 m!873615))

(assert (=> bm!40790 d!113541))

(declare-fun d!113543 () Bool)

(declare-fun e!526910 () Bool)

(assert (=> d!113543 e!526910))

(declare-fun res!631362 () Bool)

(assert (=> d!113543 (=> res!631362 e!526910)))

(declare-fun lt!423643 () Bool)

(assert (=> d!113543 (= res!631362 (not lt!423643))))

(declare-fun lt!423641 () Bool)

(assert (=> d!113543 (= lt!423643 lt!423641)))

(declare-fun lt!423644 () Unit!31676)

(declare-fun e!526909 () Unit!31676)

(assert (=> d!113543 (= lt!423644 e!526909)))

(declare-fun c!97692 () Bool)

(assert (=> d!113543 (= c!97692 lt!423641)))

(assert (=> d!113543 (= lt!423641 (containsKey!451 (toList!6113 lt!423360) (_1!6752 lt!423188)))))

(assert (=> d!113543 (= (contains!5123 lt!423360 (_1!6752 lt!423188)) lt!423643)))

(declare-fun b!938175 () Bool)

(declare-fun lt!423642 () Unit!31676)

(assert (=> b!938175 (= e!526909 lt!423642)))

(assert (=> b!938175 (= lt!423642 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423360) (_1!6752 lt!423188)))))

(assert (=> b!938175 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423360) (_1!6752 lt!423188)))))

(declare-fun b!938176 () Bool)

(declare-fun Unit!31702 () Unit!31676)

(assert (=> b!938176 (= e!526909 Unit!31702)))

(declare-fun b!938177 () Bool)

(assert (=> b!938177 (= e!526910 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423360) (_1!6752 lt!423188))))))

(assert (= (and d!113543 c!97692) b!938175))

(assert (= (and d!113543 (not c!97692)) b!938176))

(assert (= (and d!113543 (not res!631362)) b!938177))

(declare-fun m!873617 () Bool)

(assert (=> d!113543 m!873617))

(declare-fun m!873619 () Bool)

(assert (=> b!938175 m!873619))

(assert (=> b!938175 m!872779))

(assert (=> b!938175 m!872779))

(declare-fun m!873621 () Bool)

(assert (=> b!938175 m!873621))

(assert (=> b!938177 m!872779))

(assert (=> b!938177 m!872779))

(assert (=> b!938177 m!873621))

(assert (=> d!113265 d!113543))

(declare-fun b!938179 () Bool)

(declare-fun e!526911 () Option!492)

(declare-fun e!526912 () Option!492)

(assert (=> b!938179 (= e!526911 e!526912)))

(declare-fun c!97694 () Bool)

(assert (=> b!938179 (= c!97694 (and ((_ is Cons!19287) lt!423358) (not (= (_1!6752 (h!20433 lt!423358)) (_1!6752 lt!423188)))))))

(declare-fun b!938180 () Bool)

(assert (=> b!938180 (= e!526912 (getValueByKey!486 (t!27594 lt!423358) (_1!6752 lt!423188)))))

(declare-fun b!938178 () Bool)

(assert (=> b!938178 (= e!526911 (Some!491 (_2!6752 (h!20433 lt!423358))))))

(declare-fun b!938181 () Bool)

(assert (=> b!938181 (= e!526912 None!490)))

(declare-fun d!113545 () Bool)

(declare-fun c!97693 () Bool)

(assert (=> d!113545 (= c!97693 (and ((_ is Cons!19287) lt!423358) (= (_1!6752 (h!20433 lt!423358)) (_1!6752 lt!423188))))))

(assert (=> d!113545 (= (getValueByKey!486 lt!423358 (_1!6752 lt!423188)) e!526911)))

(assert (= (and d!113545 c!97693) b!938178))

(assert (= (and d!113545 (not c!97693)) b!938179))

(assert (= (and b!938179 c!97694) b!938180))

(assert (= (and b!938179 (not c!97694)) b!938181))

(declare-fun m!873623 () Bool)

(assert (=> b!938180 m!873623))

(assert (=> d!113265 d!113545))

(declare-fun d!113547 () Bool)

(assert (=> d!113547 (= (getValueByKey!486 lt!423358 (_1!6752 lt!423188)) (Some!491 (_2!6752 lt!423188)))))

(declare-fun lt!423645 () Unit!31676)

(assert (=> d!113547 (= lt!423645 (choose!1566 lt!423358 (_1!6752 lt!423188) (_2!6752 lt!423188)))))

(declare-fun e!526913 () Bool)

(assert (=> d!113547 e!526913))

(declare-fun res!631363 () Bool)

(assert (=> d!113547 (=> (not res!631363) (not e!526913))))

(assert (=> d!113547 (= res!631363 (isStrictlySorted!499 lt!423358))))

(assert (=> d!113547 (= (lemmaContainsTupThenGetReturnValue!260 lt!423358 (_1!6752 lt!423188) (_2!6752 lt!423188)) lt!423645)))

(declare-fun b!938182 () Bool)

(declare-fun res!631364 () Bool)

(assert (=> b!938182 (=> (not res!631364) (not e!526913))))

(assert (=> b!938182 (= res!631364 (containsKey!451 lt!423358 (_1!6752 lt!423188)))))

(declare-fun b!938183 () Bool)

(assert (=> b!938183 (= e!526913 (contains!5124 lt!423358 (tuple2!13485 (_1!6752 lt!423188) (_2!6752 lt!423188))))))

(assert (= (and d!113547 res!631363) b!938182))

(assert (= (and b!938182 res!631364) b!938183))

(assert (=> d!113547 m!872773))

(declare-fun m!873625 () Bool)

(assert (=> d!113547 m!873625))

(declare-fun m!873627 () Bool)

(assert (=> d!113547 m!873627))

(declare-fun m!873629 () Bool)

(assert (=> b!938182 m!873629))

(declare-fun m!873631 () Bool)

(assert (=> b!938183 m!873631))

(assert (=> d!113265 d!113547))

(declare-fun b!938184 () Bool)

(declare-fun e!526917 () List!19291)

(declare-fun call!40827 () List!19291)

(assert (=> b!938184 (= e!526917 call!40827)))

(declare-fun b!938185 () Bool)

(declare-fun e!526918 () List!19291)

(declare-fun call!40825 () List!19291)

(assert (=> b!938185 (= e!526918 call!40825)))

(declare-fun b!938186 () Bool)

(declare-fun e!526916 () Bool)

(declare-fun lt!423646 () List!19291)

(assert (=> b!938186 (= e!526916 (contains!5124 lt!423646 (tuple2!13485 (_1!6752 lt!423188) (_2!6752 lt!423188))))))

(declare-fun b!938187 () Bool)

(declare-fun e!526914 () List!19291)

(assert (=> b!938187 (= e!526914 e!526918)))

(declare-fun c!97696 () Bool)

(assert (=> b!938187 (= c!97696 (and ((_ is Cons!19287) (toList!6113 lt!423184)) (= (_1!6752 (h!20433 (toList!6113 lt!423184))) (_1!6752 lt!423188))))))

(declare-fun bm!40822 () Bool)

(declare-fun call!40826 () List!19291)

(assert (=> bm!40822 (= call!40825 call!40826)))

(declare-fun bm!40823 () Bool)

(assert (=> bm!40823 (= call!40827 call!40825)))

(declare-fun b!938188 () Bool)

(declare-fun e!526915 () List!19291)

(assert (=> b!938188 (= e!526915 (insertStrictlySorted!316 (t!27594 (toList!6113 lt!423184)) (_1!6752 lt!423188) (_2!6752 lt!423188)))))

(declare-fun d!113549 () Bool)

(assert (=> d!113549 e!526916))

(declare-fun res!631365 () Bool)

(assert (=> d!113549 (=> (not res!631365) (not e!526916))))

(assert (=> d!113549 (= res!631365 (isStrictlySorted!499 lt!423646))))

(assert (=> d!113549 (= lt!423646 e!526914)))

(declare-fun c!97697 () Bool)

(assert (=> d!113549 (= c!97697 (and ((_ is Cons!19287) (toList!6113 lt!423184)) (bvslt (_1!6752 (h!20433 (toList!6113 lt!423184))) (_1!6752 lt!423188))))))

(assert (=> d!113549 (isStrictlySorted!499 (toList!6113 lt!423184))))

(assert (=> d!113549 (= (insertStrictlySorted!316 (toList!6113 lt!423184) (_1!6752 lt!423188) (_2!6752 lt!423188)) lt!423646)))

(declare-fun b!938189 () Bool)

(declare-fun c!97698 () Bool)

(assert (=> b!938189 (= c!97698 (and ((_ is Cons!19287) (toList!6113 lt!423184)) (bvsgt (_1!6752 (h!20433 (toList!6113 lt!423184))) (_1!6752 lt!423188))))))

(assert (=> b!938189 (= e!526918 e!526917)))

(declare-fun bm!40824 () Bool)

(assert (=> bm!40824 (= call!40826 ($colon$colon!553 e!526915 (ite c!97697 (h!20433 (toList!6113 lt!423184)) (tuple2!13485 (_1!6752 lt!423188) (_2!6752 lt!423188)))))))

(declare-fun c!97695 () Bool)

(assert (=> bm!40824 (= c!97695 c!97697)))

(declare-fun b!938190 () Bool)

(assert (=> b!938190 (= e!526917 call!40827)))

(declare-fun b!938191 () Bool)

(assert (=> b!938191 (= e!526915 (ite c!97696 (t!27594 (toList!6113 lt!423184)) (ite c!97698 (Cons!19287 (h!20433 (toList!6113 lt!423184)) (t!27594 (toList!6113 lt!423184))) Nil!19288)))))

(declare-fun b!938192 () Bool)

(assert (=> b!938192 (= e!526914 call!40826)))

(declare-fun b!938193 () Bool)

(declare-fun res!631366 () Bool)

(assert (=> b!938193 (=> (not res!631366) (not e!526916))))

(assert (=> b!938193 (= res!631366 (containsKey!451 lt!423646 (_1!6752 lt!423188)))))

(assert (= (and d!113549 c!97697) b!938192))

(assert (= (and d!113549 (not c!97697)) b!938187))

(assert (= (and b!938187 c!97696) b!938185))

(assert (= (and b!938187 (not c!97696)) b!938189))

(assert (= (and b!938189 c!97698) b!938190))

(assert (= (and b!938189 (not c!97698)) b!938184))

(assert (= (or b!938190 b!938184) bm!40823))

(assert (= (or b!938185 bm!40823) bm!40822))

(assert (= (or b!938192 bm!40822) bm!40824))

(assert (= (and bm!40824 c!97695) b!938188))

(assert (= (and bm!40824 (not c!97695)) b!938191))

(assert (= (and d!113549 res!631365) b!938193))

(assert (= (and b!938193 res!631366) b!938186))

(declare-fun m!873633 () Bool)

(assert (=> b!938193 m!873633))

(declare-fun m!873635 () Bool)

(assert (=> d!113549 m!873635))

(assert (=> d!113549 m!873433))

(declare-fun m!873637 () Bool)

(assert (=> b!938188 m!873637))

(declare-fun m!873639 () Bool)

(assert (=> b!938186 m!873639))

(declare-fun m!873641 () Bool)

(assert (=> bm!40824 m!873641))

(assert (=> d!113265 d!113549))

(declare-fun d!113551 () Bool)

(declare-fun e!526920 () Bool)

(assert (=> d!113551 e!526920))

(declare-fun res!631367 () Bool)

(assert (=> d!113551 (=> res!631367 e!526920)))

(declare-fun lt!423649 () Bool)

(assert (=> d!113551 (= res!631367 (not lt!423649))))

(declare-fun lt!423647 () Bool)

(assert (=> d!113551 (= lt!423649 lt!423647)))

(declare-fun lt!423650 () Unit!31676)

(declare-fun e!526919 () Unit!31676)

(assert (=> d!113551 (= lt!423650 e!526919)))

(declare-fun c!97699 () Bool)

(assert (=> d!113551 (= c!97699 lt!423647)))

(assert (=> d!113551 (= lt!423647 (containsKey!451 (toList!6113 lt!423279) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113551 (= (contains!5123 lt!423279 #b0000000000000000000000000000000000000000000000000000000000000000) lt!423649)))

(declare-fun b!938194 () Bool)

(declare-fun lt!423648 () Unit!31676)

(assert (=> b!938194 (= e!526919 lt!423648)))

(assert (=> b!938194 (= lt!423648 (lemmaContainsKeyImpliesGetValueByKeyDefined!346 (toList!6113 lt!423279) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938194 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423279) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938195 () Bool)

(declare-fun Unit!31703 () Unit!31676)

(assert (=> b!938195 (= e!526919 Unit!31703)))

(declare-fun b!938196 () Bool)

(assert (=> b!938196 (= e!526920 (isDefined!356 (getValueByKey!486 (toList!6113 lt!423279) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113551 c!97699) b!938194))

(assert (= (and d!113551 (not c!97699)) b!938195))

(assert (= (and d!113551 (not res!631367)) b!938196))

(declare-fun m!873643 () Bool)

(assert (=> d!113551 m!873643))

(declare-fun m!873645 () Bool)

(assert (=> b!938194 m!873645))

(assert (=> b!938194 m!872929))

(assert (=> b!938194 m!872929))

(declare-fun m!873647 () Bool)

(assert (=> b!938194 m!873647))

(assert (=> b!938196 m!872929))

(assert (=> b!938196 m!872929))

(assert (=> b!938196 m!873647))

(assert (=> bm!40775 d!113551))

(assert (=> b!937792 d!113305))

(declare-fun mapIsEmpty!32167 () Bool)

(declare-fun mapRes!32167 () Bool)

(assert (=> mapIsEmpty!32167 mapRes!32167))

(declare-fun condMapEmpty!32167 () Bool)

(declare-fun mapDefault!32167 () ValueCell!9648)

(assert (=> mapNonEmpty!32166 (= condMapEmpty!32167 (= mapRest!32166 ((as const (Array (_ BitVec 32) ValueCell!9648)) mapDefault!32167)))))

(declare-fun e!526922 () Bool)

(assert (=> mapNonEmpty!32166 (= tp!61719 (and e!526922 mapRes!32167))))

(declare-fun b!938198 () Bool)

(assert (=> b!938198 (= e!526922 tp_is_empty!20259)))

(declare-fun mapNonEmpty!32167 () Bool)

(declare-fun tp!61720 () Bool)

(declare-fun e!526921 () Bool)

(assert (=> mapNonEmpty!32167 (= mapRes!32167 (and tp!61720 e!526921))))

(declare-fun mapRest!32167 () (Array (_ BitVec 32) ValueCell!9648))

(declare-fun mapKey!32167 () (_ BitVec 32))

(declare-fun mapValue!32167 () ValueCell!9648)

(assert (=> mapNonEmpty!32167 (= mapRest!32166 (store mapRest!32167 mapKey!32167 mapValue!32167))))

(declare-fun b!938197 () Bool)

(assert (=> b!938197 (= e!526921 tp_is_empty!20259)))

(assert (= (and mapNonEmpty!32166 condMapEmpty!32167) mapIsEmpty!32167))

(assert (= (and mapNonEmpty!32166 (not condMapEmpty!32167)) mapNonEmpty!32167))

(assert (= (and mapNonEmpty!32167 ((_ is ValueCellFull!9648) mapValue!32167)) b!938197))

(assert (= (and mapNonEmpty!32166 ((_ is ValueCellFull!9648) mapDefault!32167)) b!938198))

(declare-fun m!873649 () Bool)

(assert (=> mapNonEmpty!32167 m!873649))

(declare-fun b_lambda!14225 () Bool)

(assert (= b_lambda!14221 (or (and start!79730 b_free!17751) b_lambda!14225)))

(declare-fun b_lambda!14227 () Bool)

(assert (= b_lambda!14219 (or (and start!79730 b_free!17751) b_lambda!14227)))

(declare-fun b_lambda!14229 () Bool)

(assert (= b_lambda!14223 (or (and start!79730 b_free!17751) b_lambda!14229)))

(declare-fun b_lambda!14231 () Bool)

(assert (= b_lambda!14211 (or (and start!79730 b_free!17751) b_lambda!14231)))

(declare-fun b_lambda!14233 () Bool)

(assert (= b_lambda!14209 (or (and start!79730 b_free!17751) b_lambda!14233)))

(declare-fun b_lambda!14235 () Bool)

(assert (= b_lambda!14215 (or (and start!79730 b_free!17751) b_lambda!14235)))

(declare-fun b_lambda!14237 () Bool)

(assert (= b_lambda!14213 (or (and start!79730 b_free!17751) b_lambda!14237)))

(declare-fun b_lambda!14239 () Bool)

(assert (= b_lambda!14217 (or (and start!79730 b_free!17751) b_lambda!14239)))

(check-sat (not b!938064) tp_is_empty!20259 (not b!938183) (not b_lambda!14231) (not b!938109) (not b!938142) (not d!113415) (not b!937981) (not d!113303) (not b!938130) (not b!937960) (not d!113533) (not b!937896) (not d!113461) (not b!937982) (not d!113505) (not b!937962) (not b!938158) (not d!113317) (not d!113429) (not d!113431) (not b!938010) (not b!938084) (not d!113335) (not b_lambda!14191) (not b!938115) (not d!113403) (not bm!40824) (not b!938086) (not b!938067) (not b!937969) (not d!113349) (not d!113437) (not b!937909) (not d!113397) (not d!113409) (not b!938149) (not b!938001) (not d!113373) (not b!937986) (not b!938107) (not b!937884) (not b!938167) (not b!938022) (not b!937957) (not d!113423) (not b!938162) (not b!937955) (not d!113523) (not d!113465) (not b!938152) (not b!938009) (not d!113441) (not d!113313) (not b_next!17751) (not b!937978) (not b!938122) (not b!938120) (not b!938079) (not d!113547) (not b!938019) (not b!937979) (not d!113425) (not d!113433) (not d!113521) (not b!938133) (not d!113421) (not b!937946) (not b!938124) (not b!938110) (not d!113311) (not d!113413) (not d!113345) (not b!937891) (not bm!40801) (not d!113515) (not b!938186) (not b_lambda!14229) (not b!938018) (not bm!40817) (not d!113361) (not b!937983) (not d!113551) (not b!938076) (not d!113391) (not b!938082) (not d!113369) (not b!938169) (not d!113479) (not d!113457) (not d!113411) (not b!937877) (not b!937991) (not b!937948) (not b!938077) (not b!937997) (not b!937874) (not b!937910) (not b!938194) (not d!113427) (not b!938069) (not d!113513) (not b!938088) (not d!113375) (not b_lambda!14201) (not b!937990) (not b!938141) (not bm!40818) (not bm!40800) (not b!938188) (not bm!40812) (not b!938000) (not b_lambda!14205) (not b!938006) (not b!938155) (not mapNonEmpty!32167) (not b!938075) (not b!937945) (not b!938068) (not b_lambda!14239) (not b!937967) (not b!937902) (not b!937898) (not d!113443) (not d!113491) (not b!938081) (not b!937941) (not d!113405) (not d!113301) (not d!113419) (not b!937937) (not d!113307) (not d!113453) (not b!938013) (not b!937908) (not b!938111) (not bm!40816) (not b!938059) (not b!937906) (not b!937992) (not d!113343) (not b!937998) b_and!29141 (not b!938008) (not b_lambda!14203) (not b!938027) (not b!938057) (not b!938175) (not b!938135) (not d!113347) (not d!113449) (not b!938132) (not d!113407) (not d!113331) (not d!113509) (not d!113351) (not d!113501) (not d!113447) (not d!113383) (not d!113439) (not d!113323) (not b!938017) (not b!937873) (not b!937888) (not b!938193) (not b!937989) (not b!938153) (not b!937985) (not d!113519) (not b!937886) (not d!113417) (not d!113459) (not b_lambda!14227) (not b!938159) (not b!937949) (not b_lambda!14235) (not d!113549) (not b!937860) (not b!937942) (not d!113357) (not b!938118) (not bm!40821) (not b!938164) (not d!113525) (not d!113435) (not d!113527) (not b!937938) (not d!113485) (not d!113499) (not b!937939) (not d!113359) (not b!938182) (not b!938065) (not b!937907) (not b!938180) (not d!113363) (not b!937947) (not b!937976) (not d!113539) (not d!113365) (not bm!40820) (not d!113495) (not d!113339) (not b!938106) (not b!938113) (not d!113511) (not b!938033) (not b!937899) (not b!937965) (not b!938004) (not b!938005) (not b!938173) (not b!938123) (not b!937996) (not b!938126) (not b!938138) (not d!113503) (not d!113355) (not b!937887) (not b!938125) (not d!113455) (not b!937911) (not b!938172) (not d!113529) (not b!938024) (not d!113497) (not b!937972) (not b!938011) (not b!938196) (not d!113451) (not d!113535) (not b!938144) (not bm!40813) (not b!938015) (not d!113353) (not b!937859) (not b!937883) (not b!938129) (not d!113471) (not b!938170) (not d!113481) (not d!113321) (not bm!40811) (not d!113401) (not d!113489) (not d!113467) (not d!113333) (not b!938034) (not d!113337) (not b!937958) (not b!938140) (not b!937871) (not bm!40802) (not b!937994) (not d!113543) (not b!938128) (not b_lambda!14233) (not b!938020) (not d!113341) (not b!938112) (not b_lambda!14225) (not b!938136) (not b_lambda!14207) (not d!113507) (not b!938166) (not b_lambda!14237) (not d!113493) (not d!113517) (not b!938177) (not b!937904) (not d!113475) (not d!113319) (not d!113399))
(check-sat b_and!29141 (not b_next!17751))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!960 () Bool)

(assert start!960)

(declare-fun b_free!333 () Bool)

(declare-fun b_next!333 () Bool)

(assert (=> start!960 (= b_free!333 (not b_next!333))))

(declare-fun tp!1232 () Bool)

(declare-fun b_and!481 () Bool)

(assert (=> start!960 (= tp!1232 b_and!481)))

(declare-fun b!8257 () Bool)

(declare-fun e!4680 () Bool)

(declare-datatypes ((array!745 0))(
  ( (array!746 (arr!360 (Array (_ BitVec 32) (_ BitVec 64))) (size!422 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!745)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8257 (= e!4680 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8258 () Bool)

(declare-fun res!7879 () Bool)

(declare-fun e!4684 () Bool)

(assert (=> b!8258 (=> (not res!7879) (not e!4684))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!725 0))(
  ( (V!726 (val!211 Int)) )
))
(declare-datatypes ((ValueCell!189 0))(
  ( (ValueCellFull!189 (v!1303 V!725)) (EmptyCell!189) )
))
(declare-datatypes ((array!747 0))(
  ( (array!748 (arr!361 (Array (_ BitVec 32) ValueCell!189)) (size!423 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!747)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!8258 (= res!7879 (and (= (size!423 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!422 _keys!1806) (size!423 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!8259 () Bool)

(declare-fun e!4679 () Bool)

(declare-fun e!4681 () Bool)

(declare-fun mapRes!590 () Bool)

(assert (=> b!8259 (= e!4679 (and e!4681 mapRes!590))))

(declare-fun condMapEmpty!590 () Bool)

(declare-fun mapDefault!590 () ValueCell!189)

(assert (=> b!8259 (= condMapEmpty!590 (= (arr!361 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!189)) mapDefault!590)))))

(declare-fun b!8260 () Bool)

(declare-fun e!4682 () Bool)

(assert (=> b!8260 (= e!4682 (or (not (= (size!422 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))) (bvsle #b00000000000000000000000000000000 (size!422 _keys!1806))))))

(declare-fun lt!1661 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!745 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8260 (= lt!1661 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8261 () Bool)

(declare-fun res!7880 () Bool)

(assert (=> b!8261 (=> (not res!7880) (not e!4684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8261 (= res!7880 (validKeyInArray!0 k0!1278))))

(declare-fun res!7878 () Bool)

(assert (=> start!960 (=> (not res!7878) (not e!4684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!960 (= res!7878 (validMask!0 mask!2250))))

(assert (=> start!960 e!4684))

(assert (=> start!960 tp!1232))

(assert (=> start!960 true))

(declare-fun array_inv!265 (array!747) Bool)

(assert (=> start!960 (and (array_inv!265 _values!1492) e!4679)))

(declare-fun tp_is_empty!411 () Bool)

(assert (=> start!960 tp_is_empty!411))

(declare-fun array_inv!266 (array!745) Bool)

(assert (=> start!960 (array_inv!266 _keys!1806)))

(declare-fun b!8262 () Bool)

(declare-fun res!7881 () Bool)

(assert (=> b!8262 (=> (not res!7881) (not e!4684))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!725)

(declare-fun zeroValue!1434 () V!725)

(declare-datatypes ((tuple2!224 0))(
  ( (tuple2!225 (_1!112 (_ BitVec 64)) (_2!112 V!725)) )
))
(declare-datatypes ((List!247 0))(
  ( (Nil!244) (Cons!243 (h!809 tuple2!224) (t!2384 List!247)) )
))
(declare-datatypes ((ListLongMap!229 0))(
  ( (ListLongMap!230 (toList!130 List!247)) )
))
(declare-fun contains!105 (ListLongMap!229 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!89 (array!745 array!747 (_ BitVec 32) (_ BitVec 32) V!725 V!725 (_ BitVec 32) Int) ListLongMap!229)

(assert (=> b!8262 (= res!7881 (contains!105 (getCurrentListMap!89 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!8263 () Bool)

(declare-fun e!4685 () Bool)

(assert (=> b!8263 (= e!4685 tp_is_empty!411)))

(declare-fun b!8264 () Bool)

(declare-fun res!7877 () Bool)

(assert (=> b!8264 (=> (not res!7877) (not e!4684))))

(declare-datatypes ((List!248 0))(
  ( (Nil!245) (Cons!244 (h!810 (_ BitVec 64)) (t!2385 List!248)) )
))
(declare-fun arrayNoDuplicates!0 (array!745 (_ BitVec 32) List!248) Bool)

(assert (=> b!8264 (= res!7877 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!245))))

(declare-fun mapIsEmpty!590 () Bool)

(assert (=> mapIsEmpty!590 mapRes!590))

(declare-fun b!8265 () Bool)

(assert (=> b!8265 (= e!4680 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!8266 () Bool)

(declare-fun res!7882 () Bool)

(assert (=> b!8266 (=> (not res!7882) (not e!4684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!745 (_ BitVec 32)) Bool)

(assert (=> b!8266 (= res!7882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapNonEmpty!590 () Bool)

(declare-fun tp!1231 () Bool)

(assert (=> mapNonEmpty!590 (= mapRes!590 (and tp!1231 e!4685))))

(declare-fun mapKey!590 () (_ BitVec 32))

(declare-fun mapValue!590 () ValueCell!189)

(declare-fun mapRest!590 () (Array (_ BitVec 32) ValueCell!189))

(assert (=> mapNonEmpty!590 (= (arr!361 _values!1492) (store mapRest!590 mapKey!590 mapValue!590))))

(declare-fun b!8267 () Bool)

(assert (=> b!8267 (= e!4681 tp_is_empty!411)))

(declare-fun b!8268 () Bool)

(assert (=> b!8268 (= e!4684 (not e!4682))))

(declare-fun res!7876 () Bool)

(assert (=> b!8268 (=> res!7876 e!4682)))

(assert (=> b!8268 (= res!7876 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!8268 e!4680))

(declare-fun c!581 () Bool)

(assert (=> b!8268 (= c!581 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!153 0))(
  ( (Unit!154) )
))
(declare-fun lt!1662 () Unit!153)

(declare-fun lemmaKeyInListMapIsInArray!57 (array!745 array!747 (_ BitVec 32) (_ BitVec 32) V!725 V!725 (_ BitVec 64) Int) Unit!153)

(assert (=> b!8268 (= lt!1662 (lemmaKeyInListMapIsInArray!57 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (= (and start!960 res!7878) b!8258))

(assert (= (and b!8258 res!7879) b!8266))

(assert (= (and b!8266 res!7882) b!8264))

(assert (= (and b!8264 res!7877) b!8262))

(assert (= (and b!8262 res!7881) b!8261))

(assert (= (and b!8261 res!7880) b!8268))

(assert (= (and b!8268 c!581) b!8257))

(assert (= (and b!8268 (not c!581)) b!8265))

(assert (= (and b!8268 (not res!7876)) b!8260))

(assert (= (and b!8259 condMapEmpty!590) mapIsEmpty!590))

(assert (= (and b!8259 (not condMapEmpty!590)) mapNonEmpty!590))

(get-info :version)

(assert (= (and mapNonEmpty!590 ((_ is ValueCellFull!189) mapValue!590)) b!8263))

(assert (= (and b!8259 ((_ is ValueCellFull!189) mapDefault!590)) b!8267))

(assert (= start!960 b!8259))

(declare-fun m!5069 () Bool)

(assert (=> b!8257 m!5069))

(assert (=> b!8268 m!5069))

(declare-fun m!5071 () Bool)

(assert (=> b!8268 m!5071))

(declare-fun m!5073 () Bool)

(assert (=> mapNonEmpty!590 m!5073))

(declare-fun m!5075 () Bool)

(assert (=> start!960 m!5075))

(declare-fun m!5077 () Bool)

(assert (=> start!960 m!5077))

(declare-fun m!5079 () Bool)

(assert (=> start!960 m!5079))

(declare-fun m!5081 () Bool)

(assert (=> b!8266 m!5081))

(declare-fun m!5083 () Bool)

(assert (=> b!8262 m!5083))

(assert (=> b!8262 m!5083))

(declare-fun m!5085 () Bool)

(assert (=> b!8262 m!5085))

(declare-fun m!5087 () Bool)

(assert (=> b!8264 m!5087))

(declare-fun m!5089 () Bool)

(assert (=> b!8261 m!5089))

(declare-fun m!5091 () Bool)

(assert (=> b!8260 m!5091))

(check-sat (not b!8261) (not b!8266) (not b_next!333) (not b!8264) tp_is_empty!411 (not b!8257) (not b!8260) (not b!8268) b_and!481 (not mapNonEmpty!590) (not b!8262) (not start!960))
(check-sat b_and!481 (not b_next!333))
(get-model)

(declare-fun d!837 () Bool)

(declare-fun res!7908 () Bool)

(declare-fun e!4711 () Bool)

(assert (=> d!837 (=> res!7908 e!4711)))

(assert (=> d!837 (= res!7908 (= (select (arr!360 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!837 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!4711)))

(declare-fun b!8309 () Bool)

(declare-fun e!4712 () Bool)

(assert (=> b!8309 (= e!4711 e!4712)))

(declare-fun res!7909 () Bool)

(assert (=> b!8309 (=> (not res!7909) (not e!4712))))

(assert (=> b!8309 (= res!7909 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!422 _keys!1806)))))

(declare-fun b!8310 () Bool)

(assert (=> b!8310 (= e!4712 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!837 (not res!7908)) b!8309))

(assert (= (and b!8309 res!7909) b!8310))

(declare-fun m!5117 () Bool)

(assert (=> d!837 m!5117))

(declare-fun m!5119 () Bool)

(assert (=> b!8310 m!5119))

(assert (=> b!8268 d!837))

(declare-fun d!839 () Bool)

(declare-fun e!4715 () Bool)

(assert (=> d!839 e!4715))

(declare-fun c!587 () Bool)

(assert (=> d!839 (= c!587 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1671 () Unit!153)

(declare-fun choose!140 (array!745 array!747 (_ BitVec 32) (_ BitVec 32) V!725 V!725 (_ BitVec 64) Int) Unit!153)

(assert (=> d!839 (= lt!1671 (choose!140 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!839 (validMask!0 mask!2250)))

(assert (=> d!839 (= (lemmaKeyInListMapIsInArray!57 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!1671)))

(declare-fun b!8315 () Bool)

(assert (=> b!8315 (= e!4715 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8316 () Bool)

(assert (=> b!8316 (= e!4715 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!839 c!587) b!8315))

(assert (= (and d!839 (not c!587)) b!8316))

(declare-fun m!5121 () Bool)

(assert (=> d!839 m!5121))

(assert (=> d!839 m!5075))

(assert (=> b!8315 m!5069))

(assert (=> b!8268 d!839))

(declare-fun b!8327 () Bool)

(declare-fun e!4726 () Bool)

(declare-fun e!4727 () Bool)

(assert (=> b!8327 (= e!4726 e!4727)))

(declare-fun res!7917 () Bool)

(assert (=> b!8327 (=> (not res!7917) (not e!4727))))

(declare-fun e!4725 () Bool)

(assert (=> b!8327 (= res!7917 (not e!4725))))

(declare-fun res!7916 () Bool)

(assert (=> b!8327 (=> (not res!7916) (not e!4725))))

(assert (=> b!8327 (= res!7916 (validKeyInArray!0 (select (arr!360 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!8328 () Bool)

(declare-fun e!4724 () Bool)

(assert (=> b!8328 (= e!4727 e!4724)))

(declare-fun c!590 () Bool)

(assert (=> b!8328 (= c!590 (validKeyInArray!0 (select (arr!360 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!8329 () Bool)

(declare-fun call!185 () Bool)

(assert (=> b!8329 (= e!4724 call!185)))

(declare-fun b!8330 () Bool)

(assert (=> b!8330 (= e!4724 call!185)))

(declare-fun bm!182 () Bool)

(assert (=> bm!182 (= call!185 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!590 (Cons!244 (select (arr!360 _keys!1806) #b00000000000000000000000000000000) Nil!245) Nil!245)))))

(declare-fun d!841 () Bool)

(declare-fun res!7918 () Bool)

(assert (=> d!841 (=> res!7918 e!4726)))

(assert (=> d!841 (= res!7918 (bvsge #b00000000000000000000000000000000 (size!422 _keys!1806)))))

(assert (=> d!841 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!245) e!4726)))

(declare-fun b!8331 () Bool)

(declare-fun contains!106 (List!248 (_ BitVec 64)) Bool)

(assert (=> b!8331 (= e!4725 (contains!106 Nil!245 (select (arr!360 _keys!1806) #b00000000000000000000000000000000)))))

(assert (= (and d!841 (not res!7918)) b!8327))

(assert (= (and b!8327 res!7916) b!8331))

(assert (= (and b!8327 res!7917) b!8328))

(assert (= (and b!8328 c!590) b!8329))

(assert (= (and b!8328 (not c!590)) b!8330))

(assert (= (or b!8329 b!8330) bm!182))

(assert (=> b!8327 m!5117))

(assert (=> b!8327 m!5117))

(declare-fun m!5123 () Bool)

(assert (=> b!8327 m!5123))

(assert (=> b!8328 m!5117))

(assert (=> b!8328 m!5117))

(assert (=> b!8328 m!5123))

(assert (=> bm!182 m!5117))

(declare-fun m!5125 () Bool)

(assert (=> bm!182 m!5125))

(assert (=> b!8331 m!5117))

(assert (=> b!8331 m!5117))

(declare-fun m!5127 () Bool)

(assert (=> b!8331 m!5127))

(assert (=> b!8264 d!841))

(declare-fun d!843 () Bool)

(declare-fun lt!1674 () (_ BitVec 32))

(assert (=> d!843 (and (or (bvslt lt!1674 #b00000000000000000000000000000000) (bvsge lt!1674 (size!422 _keys!1806)) (and (bvsge lt!1674 #b00000000000000000000000000000000) (bvslt lt!1674 (size!422 _keys!1806)))) (bvsge lt!1674 #b00000000000000000000000000000000) (bvslt lt!1674 (size!422 _keys!1806)) (= (select (arr!360 _keys!1806) lt!1674) k0!1278))))

(declare-fun e!4730 () (_ BitVec 32))

(assert (=> d!843 (= lt!1674 e!4730)))

(declare-fun c!593 () Bool)

(assert (=> d!843 (= c!593 (= (select (arr!360 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!843 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!422 _keys!1806)) (bvslt (size!422 _keys!1806) #b01111111111111111111111111111111))))

(assert (=> d!843 (= (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) lt!1674)))

(declare-fun b!8336 () Bool)

(assert (=> b!8336 (= e!4730 #b00000000000000000000000000000000)))

(declare-fun b!8337 () Bool)

(assert (=> b!8337 (= e!4730 (arrayScanForKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!843 c!593) b!8336))

(assert (= (and d!843 (not c!593)) b!8337))

(declare-fun m!5129 () Bool)

(assert (=> d!843 m!5129))

(assert (=> d!843 m!5117))

(declare-fun m!5131 () Bool)

(assert (=> b!8337 m!5131))

(assert (=> b!8260 d!843))

(declare-fun d!845 () Bool)

(declare-fun e!4736 () Bool)

(assert (=> d!845 e!4736))

(declare-fun res!7921 () Bool)

(assert (=> d!845 (=> res!7921 e!4736)))

(declare-fun lt!1685 () Bool)

(assert (=> d!845 (= res!7921 (not lt!1685))))

(declare-fun lt!1684 () Bool)

(assert (=> d!845 (= lt!1685 lt!1684)))

(declare-fun lt!1683 () Unit!153)

(declare-fun e!4735 () Unit!153)

(assert (=> d!845 (= lt!1683 e!4735)))

(declare-fun c!596 () Bool)

(assert (=> d!845 (= c!596 lt!1684)))

(declare-fun containsKey!6 (List!247 (_ BitVec 64)) Bool)

(assert (=> d!845 (= lt!1684 (containsKey!6 (toList!130 (getCurrentListMap!89 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!845 (= (contains!105 (getCurrentListMap!89 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!1685)))

(declare-fun b!8344 () Bool)

(declare-fun lt!1686 () Unit!153)

(assert (=> b!8344 (= e!4735 lt!1686)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!6 (List!247 (_ BitVec 64)) Unit!153)

(assert (=> b!8344 (= lt!1686 (lemmaContainsKeyImpliesGetValueByKeyDefined!6 (toList!130 (getCurrentListMap!89 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!18 0))(
  ( (Some!17 (v!1305 V!725)) (None!16) )
))
(declare-fun isDefined!7 (Option!18) Bool)

(declare-fun getValueByKey!12 (List!247 (_ BitVec 64)) Option!18)

(assert (=> b!8344 (isDefined!7 (getValueByKey!12 (toList!130 (getCurrentListMap!89 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!8345 () Bool)

(declare-fun Unit!155 () Unit!153)

(assert (=> b!8345 (= e!4735 Unit!155)))

(declare-fun b!8346 () Bool)

(assert (=> b!8346 (= e!4736 (isDefined!7 (getValueByKey!12 (toList!130 (getCurrentListMap!89 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!845 c!596) b!8344))

(assert (= (and d!845 (not c!596)) b!8345))

(assert (= (and d!845 (not res!7921)) b!8346))

(declare-fun m!5133 () Bool)

(assert (=> d!845 m!5133))

(declare-fun m!5135 () Bool)

(assert (=> b!8344 m!5135))

(declare-fun m!5137 () Bool)

(assert (=> b!8344 m!5137))

(assert (=> b!8344 m!5137))

(declare-fun m!5139 () Bool)

(assert (=> b!8344 m!5139))

(assert (=> b!8346 m!5137))

(assert (=> b!8346 m!5137))

(assert (=> b!8346 m!5139))

(assert (=> b!8262 d!845))

(declare-fun b!8389 () Bool)

(declare-fun e!4764 () Bool)

(declare-fun e!4769 () Bool)

(assert (=> b!8389 (= e!4764 e!4769)))

(declare-fun res!7945 () Bool)

(assert (=> b!8389 (=> (not res!7945) (not e!4769))))

(declare-fun lt!1737 () ListLongMap!229)

(assert (=> b!8389 (= res!7945 (contains!105 lt!1737 (select (arr!360 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!8389 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!422 _keys!1806)))))

(declare-fun b!8390 () Bool)

(declare-fun res!7947 () Bool)

(declare-fun e!4775 () Bool)

(assert (=> b!8390 (=> (not res!7947) (not e!4775))))

(assert (=> b!8390 (= res!7947 e!4764)))

(declare-fun res!7940 () Bool)

(assert (=> b!8390 (=> res!7940 e!4764)))

(declare-fun e!4770 () Bool)

(assert (=> b!8390 (= res!7940 (not e!4770))))

(declare-fun res!7944 () Bool)

(assert (=> b!8390 (=> (not res!7944) (not e!4770))))

(assert (=> b!8390 (= res!7944 (bvslt #b00000000000000000000000000000000 (size!422 _keys!1806)))))

(declare-fun b!8391 () Bool)

(declare-fun c!612 () Bool)

(assert (=> b!8391 (= c!612 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!4771 () ListLongMap!229)

(declare-fun e!4772 () ListLongMap!229)

(assert (=> b!8391 (= e!4771 e!4772)))

(declare-fun b!8392 () Bool)

(declare-fun call!204 () ListLongMap!229)

(assert (=> b!8392 (= e!4772 call!204)))

(declare-fun b!8393 () Bool)

(declare-fun call!205 () ListLongMap!229)

(assert (=> b!8393 (= e!4771 call!205)))

(declare-fun b!8394 () Bool)

(declare-fun e!4768 () Bool)

(assert (=> b!8394 (= e!4768 (validKeyInArray!0 (select (arr!360 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun call!202 () ListLongMap!229)

(declare-fun c!614 () Bool)

(declare-fun bm!197 () Bool)

(declare-fun c!611 () Bool)

(declare-fun call!201 () ListLongMap!229)

(declare-fun call!206 () ListLongMap!229)

(declare-fun +!9 (ListLongMap!229 tuple2!224) ListLongMap!229)

(assert (=> bm!197 (= call!202 (+!9 (ite c!611 call!201 (ite c!614 call!206 call!204)) (ite (or c!611 c!614) (tuple2!225 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!225 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun b!8395 () Bool)

(declare-fun e!4767 () ListLongMap!229)

(assert (=> b!8395 (= e!4767 (+!9 call!202 (tuple2!225 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(declare-fun b!8396 () Bool)

(declare-fun e!4765 () Bool)

(declare-fun call!203 () Bool)

(assert (=> b!8396 (= e!4765 (not call!203))))

(declare-fun b!8397 () Bool)

(declare-fun e!4763 () Unit!153)

(declare-fun lt!1740 () Unit!153)

(assert (=> b!8397 (= e!4763 lt!1740)))

(declare-fun lt!1738 () ListLongMap!229)

(declare-fun getCurrentListMapNoExtraKeys!6 (array!745 array!747 (_ BitVec 32) (_ BitVec 32) V!725 V!725 (_ BitVec 32) Int) ListLongMap!229)

(assert (=> b!8397 (= lt!1738 (getCurrentListMapNoExtraKeys!6 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1742 () (_ BitVec 64))

(assert (=> b!8397 (= lt!1742 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1750 () (_ BitVec 64))

(assert (=> b!8397 (= lt!1750 (select (arr!360 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1734 () Unit!153)

(declare-fun addStillContains!7 (ListLongMap!229 (_ BitVec 64) V!725 (_ BitVec 64)) Unit!153)

(assert (=> b!8397 (= lt!1734 (addStillContains!7 lt!1738 lt!1742 zeroValue!1434 lt!1750))))

(assert (=> b!8397 (contains!105 (+!9 lt!1738 (tuple2!225 lt!1742 zeroValue!1434)) lt!1750)))

(declare-fun lt!1747 () Unit!153)

(assert (=> b!8397 (= lt!1747 lt!1734)))

(declare-fun lt!1741 () ListLongMap!229)

(assert (=> b!8397 (= lt!1741 (getCurrentListMapNoExtraKeys!6 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1744 () (_ BitVec 64))

(assert (=> b!8397 (= lt!1744 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1735 () (_ BitVec 64))

(assert (=> b!8397 (= lt!1735 (select (arr!360 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1736 () Unit!153)

(declare-fun addApplyDifferent!7 (ListLongMap!229 (_ BitVec 64) V!725 (_ BitVec 64)) Unit!153)

(assert (=> b!8397 (= lt!1736 (addApplyDifferent!7 lt!1741 lt!1744 minValue!1434 lt!1735))))

(declare-fun apply!22 (ListLongMap!229 (_ BitVec 64)) V!725)

(assert (=> b!8397 (= (apply!22 (+!9 lt!1741 (tuple2!225 lt!1744 minValue!1434)) lt!1735) (apply!22 lt!1741 lt!1735))))

(declare-fun lt!1733 () Unit!153)

(assert (=> b!8397 (= lt!1733 lt!1736)))

(declare-fun lt!1746 () ListLongMap!229)

(assert (=> b!8397 (= lt!1746 (getCurrentListMapNoExtraKeys!6 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1745 () (_ BitVec 64))

(assert (=> b!8397 (= lt!1745 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1743 () (_ BitVec 64))

(assert (=> b!8397 (= lt!1743 (select (arr!360 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1752 () Unit!153)

(assert (=> b!8397 (= lt!1752 (addApplyDifferent!7 lt!1746 lt!1745 zeroValue!1434 lt!1743))))

(assert (=> b!8397 (= (apply!22 (+!9 lt!1746 (tuple2!225 lt!1745 zeroValue!1434)) lt!1743) (apply!22 lt!1746 lt!1743))))

(declare-fun lt!1732 () Unit!153)

(assert (=> b!8397 (= lt!1732 lt!1752)))

(declare-fun lt!1731 () ListLongMap!229)

(assert (=> b!8397 (= lt!1731 (getCurrentListMapNoExtraKeys!6 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1739 () (_ BitVec 64))

(assert (=> b!8397 (= lt!1739 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1751 () (_ BitVec 64))

(assert (=> b!8397 (= lt!1751 (select (arr!360 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!8397 (= lt!1740 (addApplyDifferent!7 lt!1731 lt!1739 minValue!1434 lt!1751))))

(assert (=> b!8397 (= (apply!22 (+!9 lt!1731 (tuple2!225 lt!1739 minValue!1434)) lt!1751) (apply!22 lt!1731 lt!1751))))

(declare-fun b!8398 () Bool)

(assert (=> b!8398 (= e!4770 (validKeyInArray!0 (select (arr!360 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!198 () Bool)

(assert (=> bm!198 (= call!204 call!206)))

(declare-fun bm!199 () Bool)

(assert (=> bm!199 (= call!205 call!202)))

(declare-fun b!8399 () Bool)

(declare-fun e!4774 () Bool)

(declare-fun e!4766 () Bool)

(assert (=> b!8399 (= e!4774 e!4766)))

(declare-fun res!7941 () Bool)

(declare-fun call!200 () Bool)

(assert (=> b!8399 (= res!7941 call!200)))

(assert (=> b!8399 (=> (not res!7941) (not e!4766))))

(declare-fun b!8400 () Bool)

(declare-fun res!7942 () Bool)

(assert (=> b!8400 (=> (not res!7942) (not e!4775))))

(assert (=> b!8400 (= res!7942 e!4774)))

(declare-fun c!613 () Bool)

(assert (=> b!8400 (= c!613 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!200 () Bool)

(assert (=> bm!200 (= call!206 call!201)))

(declare-fun b!8401 () Bool)

(assert (=> b!8401 (= e!4766 (= (apply!22 lt!1737 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun d!847 () Bool)

(assert (=> d!847 e!4775))

(declare-fun res!7948 () Bool)

(assert (=> d!847 (=> (not res!7948) (not e!4775))))

(assert (=> d!847 (= res!7948 (or (bvsge #b00000000000000000000000000000000 (size!422 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!422 _keys!1806)))))))

(declare-fun lt!1748 () ListLongMap!229)

(assert (=> d!847 (= lt!1737 lt!1748)))

(declare-fun lt!1749 () Unit!153)

(assert (=> d!847 (= lt!1749 e!4763)))

(declare-fun c!610 () Bool)

(assert (=> d!847 (= c!610 e!4768)))

(declare-fun res!7943 () Bool)

(assert (=> d!847 (=> (not res!7943) (not e!4768))))

(assert (=> d!847 (= res!7943 (bvslt #b00000000000000000000000000000000 (size!422 _keys!1806)))))

(assert (=> d!847 (= lt!1748 e!4767)))

(assert (=> d!847 (= c!611 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!847 (validMask!0 mask!2250)))

(assert (=> d!847 (= (getCurrentListMap!89 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!1737)))

(declare-fun b!8402 () Bool)

(assert (=> b!8402 (= e!4772 call!205)))

(declare-fun bm!201 () Bool)

(assert (=> bm!201 (= call!200 (contains!105 lt!1737 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!8403 () Bool)

(assert (=> b!8403 (= e!4774 (not call!200))))

(declare-fun b!8404 () Bool)

(assert (=> b!8404 (= e!4775 e!4765)))

(declare-fun c!609 () Bool)

(assert (=> b!8404 (= c!609 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!202 () Bool)

(assert (=> bm!202 (= call!201 (getCurrentListMapNoExtraKeys!6 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun b!8405 () Bool)

(declare-fun e!4773 () Bool)

(assert (=> b!8405 (= e!4765 e!4773)))

(declare-fun res!7946 () Bool)

(assert (=> b!8405 (= res!7946 call!203)))

(assert (=> b!8405 (=> (not res!7946) (not e!4773))))

(declare-fun b!8406 () Bool)

(assert (=> b!8406 (= e!4767 e!4771)))

(assert (=> b!8406 (= c!614 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!8407 () Bool)

(declare-fun Unit!156 () Unit!153)

(assert (=> b!8407 (= e!4763 Unit!156)))

(declare-fun b!8408 () Bool)

(assert (=> b!8408 (= e!4773 (= (apply!22 lt!1737 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun b!8409 () Bool)

(declare-fun get!160 (ValueCell!189 V!725) V!725)

(declare-fun dynLambda!44 (Int (_ BitVec 64)) V!725)

(assert (=> b!8409 (= e!4769 (= (apply!22 lt!1737 (select (arr!360 _keys!1806) #b00000000000000000000000000000000)) (get!160 (select (arr!361 _values!1492) #b00000000000000000000000000000000) (dynLambda!44 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!8409 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!423 _values!1492)))))

(assert (=> b!8409 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!422 _keys!1806)))))

(declare-fun bm!203 () Bool)

(assert (=> bm!203 (= call!203 (contains!105 lt!1737 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!847 c!611) b!8395))

(assert (= (and d!847 (not c!611)) b!8406))

(assert (= (and b!8406 c!614) b!8393))

(assert (= (and b!8406 (not c!614)) b!8391))

(assert (= (and b!8391 c!612) b!8402))

(assert (= (and b!8391 (not c!612)) b!8392))

(assert (= (or b!8402 b!8392) bm!198))

(assert (= (or b!8393 bm!198) bm!200))

(assert (= (or b!8393 b!8402) bm!199))

(assert (= (or b!8395 bm!200) bm!202))

(assert (= (or b!8395 bm!199) bm!197))

(assert (= (and d!847 res!7943) b!8394))

(assert (= (and d!847 c!610) b!8397))

(assert (= (and d!847 (not c!610)) b!8407))

(assert (= (and d!847 res!7948) b!8390))

(assert (= (and b!8390 res!7944) b!8398))

(assert (= (and b!8390 (not res!7940)) b!8389))

(assert (= (and b!8389 res!7945) b!8409))

(assert (= (and b!8390 res!7947) b!8400))

(assert (= (and b!8400 c!613) b!8399))

(assert (= (and b!8400 (not c!613)) b!8403))

(assert (= (and b!8399 res!7941) b!8401))

(assert (= (or b!8399 b!8403) bm!201))

(assert (= (and b!8400 res!7942) b!8404))

(assert (= (and b!8404 c!609) b!8405))

(assert (= (and b!8404 (not c!609)) b!8396))

(assert (= (and b!8405 res!7946) b!8408))

(assert (= (or b!8405 b!8396) bm!203))

(declare-fun b_lambda!339 () Bool)

(assert (=> (not b_lambda!339) (not b!8409)))

(declare-fun t!2387 () Bool)

(declare-fun tb!137 () Bool)

(assert (=> (and start!960 (= defaultEntry!1495 defaultEntry!1495) t!2387) tb!137))

(declare-fun result!213 () Bool)

(assert (=> tb!137 (= result!213 tp_is_empty!411)))

(assert (=> b!8409 t!2387))

(declare-fun b_and!485 () Bool)

(assert (= b_and!481 (and (=> t!2387 result!213) b_and!485)))

(assert (=> b!8389 m!5117))

(assert (=> b!8389 m!5117))

(declare-fun m!5141 () Bool)

(assert (=> b!8389 m!5141))

(assert (=> b!8398 m!5117))

(assert (=> b!8398 m!5117))

(assert (=> b!8398 m!5123))

(assert (=> b!8409 m!5117))

(declare-fun m!5143 () Bool)

(assert (=> b!8409 m!5143))

(declare-fun m!5145 () Bool)

(assert (=> b!8409 m!5145))

(assert (=> b!8409 m!5117))

(declare-fun m!5147 () Bool)

(assert (=> b!8409 m!5147))

(assert (=> b!8409 m!5143))

(assert (=> b!8409 m!5145))

(declare-fun m!5149 () Bool)

(assert (=> b!8409 m!5149))

(declare-fun m!5151 () Bool)

(assert (=> b!8397 m!5151))

(declare-fun m!5153 () Bool)

(assert (=> b!8397 m!5153))

(declare-fun m!5155 () Bool)

(assert (=> b!8397 m!5155))

(declare-fun m!5157 () Bool)

(assert (=> b!8397 m!5157))

(declare-fun m!5159 () Bool)

(assert (=> b!8397 m!5159))

(declare-fun m!5161 () Bool)

(assert (=> b!8397 m!5161))

(assert (=> b!8397 m!5159))

(assert (=> b!8397 m!5157))

(declare-fun m!5163 () Bool)

(assert (=> b!8397 m!5163))

(assert (=> b!8397 m!5153))

(declare-fun m!5165 () Bool)

(assert (=> b!8397 m!5165))

(declare-fun m!5167 () Bool)

(assert (=> b!8397 m!5167))

(declare-fun m!5169 () Bool)

(assert (=> b!8397 m!5169))

(declare-fun m!5171 () Bool)

(assert (=> b!8397 m!5171))

(declare-fun m!5173 () Bool)

(assert (=> b!8397 m!5173))

(declare-fun m!5175 () Bool)

(assert (=> b!8397 m!5175))

(assert (=> b!8397 m!5117))

(declare-fun m!5177 () Bool)

(assert (=> b!8397 m!5177))

(assert (=> b!8397 m!5165))

(declare-fun m!5179 () Bool)

(assert (=> b!8397 m!5179))

(declare-fun m!5181 () Bool)

(assert (=> b!8397 m!5181))

(declare-fun m!5183 () Bool)

(assert (=> bm!203 m!5183))

(assert (=> d!847 m!5075))

(declare-fun m!5185 () Bool)

(assert (=> bm!197 m!5185))

(assert (=> bm!202 m!5175))

(declare-fun m!5187 () Bool)

(assert (=> bm!201 m!5187))

(declare-fun m!5189 () Bool)

(assert (=> b!8395 m!5189))

(declare-fun m!5191 () Bool)

(assert (=> b!8408 m!5191))

(declare-fun m!5193 () Bool)

(assert (=> b!8401 m!5193))

(assert (=> b!8394 m!5117))

(assert (=> b!8394 m!5117))

(assert (=> b!8394 m!5123))

(assert (=> b!8262 d!847))

(declare-fun b!8420 () Bool)

(declare-fun e!4783 () Bool)

(declare-fun call!209 () Bool)

(assert (=> b!8420 (= e!4783 call!209)))

(declare-fun b!8421 () Bool)

(declare-fun e!4784 () Bool)

(assert (=> b!8421 (= e!4784 call!209)))

(declare-fun b!8422 () Bool)

(declare-fun e!4782 () Bool)

(assert (=> b!8422 (= e!4782 e!4784)))

(declare-fun c!617 () Bool)

(assert (=> b!8422 (= c!617 (validKeyInArray!0 (select (arr!360 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!206 () Bool)

(assert (=> bm!206 (= call!209 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!8423 () Bool)

(assert (=> b!8423 (= e!4784 e!4783)))

(declare-fun lt!1761 () (_ BitVec 64))

(assert (=> b!8423 (= lt!1761 (select (arr!360 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1759 () Unit!153)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!745 (_ BitVec 64) (_ BitVec 32)) Unit!153)

(assert (=> b!8423 (= lt!1759 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!1761 #b00000000000000000000000000000000))))

(assert (=> b!8423 (arrayContainsKey!0 _keys!1806 lt!1761 #b00000000000000000000000000000000)))

(declare-fun lt!1760 () Unit!153)

(assert (=> b!8423 (= lt!1760 lt!1759)))

(declare-fun res!7953 () Bool)

(declare-datatypes ((SeekEntryResult!35 0))(
  ( (MissingZero!35 (index!2259 (_ BitVec 32))) (Found!35 (index!2260 (_ BitVec 32))) (Intermediate!35 (undefined!847 Bool) (index!2261 (_ BitVec 32)) (x!2713 (_ BitVec 32))) (Undefined!35) (MissingVacant!35 (index!2262 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!745 (_ BitVec 32)) SeekEntryResult!35)

(assert (=> b!8423 (= res!7953 (= (seekEntryOrOpen!0 (select (arr!360 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!35 #b00000000000000000000000000000000)))))

(assert (=> b!8423 (=> (not res!7953) (not e!4783))))

(declare-fun d!849 () Bool)

(declare-fun res!7954 () Bool)

(assert (=> d!849 (=> res!7954 e!4782)))

(assert (=> d!849 (= res!7954 (bvsge #b00000000000000000000000000000000 (size!422 _keys!1806)))))

(assert (=> d!849 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!4782)))

(assert (= (and d!849 (not res!7954)) b!8422))

(assert (= (and b!8422 c!617) b!8423))

(assert (= (and b!8422 (not c!617)) b!8421))

(assert (= (and b!8423 res!7953) b!8420))

(assert (= (or b!8420 b!8421) bm!206))

(assert (=> b!8422 m!5117))

(assert (=> b!8422 m!5117))

(assert (=> b!8422 m!5123))

(declare-fun m!5195 () Bool)

(assert (=> bm!206 m!5195))

(assert (=> b!8423 m!5117))

(declare-fun m!5197 () Bool)

(assert (=> b!8423 m!5197))

(declare-fun m!5199 () Bool)

(assert (=> b!8423 m!5199))

(assert (=> b!8423 m!5117))

(declare-fun m!5201 () Bool)

(assert (=> b!8423 m!5201))

(assert (=> b!8266 d!849))

(declare-fun d!851 () Bool)

(assert (=> d!851 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!8261 d!851))

(declare-fun d!853 () Bool)

(assert (=> d!853 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!960 d!853))

(declare-fun d!855 () Bool)

(assert (=> d!855 (= (array_inv!265 _values!1492) (bvsge (size!423 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!960 d!855))

(declare-fun d!857 () Bool)

(assert (=> d!857 (= (array_inv!266 _keys!1806) (bvsge (size!422 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!960 d!857))

(assert (=> b!8257 d!837))

(declare-fun mapNonEmpty!596 () Bool)

(declare-fun mapRes!596 () Bool)

(declare-fun tp!1241 () Bool)

(declare-fun e!4790 () Bool)

(assert (=> mapNonEmpty!596 (= mapRes!596 (and tp!1241 e!4790))))

(declare-fun mapValue!596 () ValueCell!189)

(declare-fun mapRest!596 () (Array (_ BitVec 32) ValueCell!189))

(declare-fun mapKey!596 () (_ BitVec 32))

(assert (=> mapNonEmpty!596 (= mapRest!590 (store mapRest!596 mapKey!596 mapValue!596))))

(declare-fun b!8431 () Bool)

(declare-fun e!4789 () Bool)

(assert (=> b!8431 (= e!4789 tp_is_empty!411)))

(declare-fun b!8430 () Bool)

(assert (=> b!8430 (= e!4790 tp_is_empty!411)))

(declare-fun mapIsEmpty!596 () Bool)

(assert (=> mapIsEmpty!596 mapRes!596))

(declare-fun condMapEmpty!596 () Bool)

(declare-fun mapDefault!596 () ValueCell!189)

(assert (=> mapNonEmpty!590 (= condMapEmpty!596 (= mapRest!590 ((as const (Array (_ BitVec 32) ValueCell!189)) mapDefault!596)))))

(assert (=> mapNonEmpty!590 (= tp!1231 (and e!4789 mapRes!596))))

(assert (= (and mapNonEmpty!590 condMapEmpty!596) mapIsEmpty!596))

(assert (= (and mapNonEmpty!590 (not condMapEmpty!596)) mapNonEmpty!596))

(assert (= (and mapNonEmpty!596 ((_ is ValueCellFull!189) mapValue!596)) b!8430))

(assert (= (and mapNonEmpty!590 ((_ is ValueCellFull!189) mapDefault!596)) b!8431))

(declare-fun m!5203 () Bool)

(assert (=> mapNonEmpty!596 m!5203))

(declare-fun b_lambda!341 () Bool)

(assert (= b_lambda!339 (or (and start!960 b_free!333) b_lambda!341)))

(check-sat (not bm!203) (not b_lambda!341) (not b!8344) (not b_next!333) (not bm!202) tp_is_empty!411 (not b!8409) (not bm!197) (not b!8310) (not b!8397) (not b!8346) (not b!8395) (not b!8331) b_and!485 (not bm!206) (not b!8315) (not d!847) (not b!8337) (not b!8398) (not b!8389) (not b!8401) (not bm!201) (not d!839) (not b!8423) (not b!8394) (not mapNonEmpty!596) (not b!8328) (not bm!182) (not b!8327) (not d!845) (not b!8422) (not b!8408))
(check-sat b_and!485 (not b_next!333))

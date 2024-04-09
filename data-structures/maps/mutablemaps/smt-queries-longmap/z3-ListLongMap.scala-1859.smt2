; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33544 () Bool)

(assert start!33544)

(declare-fun b_free!6825 () Bool)

(declare-fun b_next!6825 () Bool)

(assert (=> start!33544 (= b_free!6825 (not b_next!6825))))

(declare-fun tp!23970 () Bool)

(declare-fun b_and!14017 () Bool)

(assert (=> start!33544 (= tp!23970 b_and!14017)))

(declare-fun b!332649 () Bool)

(declare-fun e!204281 () Bool)

(declare-fun tp_is_empty!6777 () Bool)

(assert (=> b!332649 (= e!204281 tp_is_empty!6777)))

(declare-fun e!204278 () Bool)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun b!332650 () Bool)

(declare-datatypes ((SeekEntryResult!3144 0))(
  ( (MissingZero!3144 (index!14755 (_ BitVec 32))) (Found!3144 (index!14756 (_ BitVec 32))) (Intermediate!3144 (undefined!3956 Bool) (index!14757 (_ BitVec 32)) (x!33163 (_ BitVec 32))) (Undefined!3144) (MissingVacant!3144 (index!14758 (_ BitVec 32))) )
))
(declare-fun lt!159012 () SeekEntryResult!3144)

(declare-datatypes ((array!17145 0))(
  ( (array!17146 (arr!8103 (Array (_ BitVec 32) (_ BitVec 64))) (size!8455 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17145)

(get-info :version)

(assert (=> b!332650 (= e!204278 (and ((_ is Found!3144) lt!159012) (= (select (arr!8103 _keys!1895) (index!14756 lt!159012)) k0!1348) (bvslt (index!14756 lt!159012) #b00000000000000000000000000000000)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17145 (_ BitVec 32)) SeekEntryResult!3144)

(assert (=> b!332650 (= lt!159012 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!332651 () Bool)

(declare-fun res!183350 () Bool)

(assert (=> b!332651 (=> (not res!183350) (not e!204278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332651 (= res!183350 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!11553 () Bool)

(declare-fun mapRes!11553 () Bool)

(assert (=> mapIsEmpty!11553 mapRes!11553))

(declare-fun b!332652 () Bool)

(declare-fun res!183349 () Bool)

(assert (=> b!332652 (=> (not res!183349) (not e!204278))))

(declare-datatypes ((V!10013 0))(
  ( (V!10014 (val!3433 Int)) )
))
(declare-fun zeroValue!1467 () V!10013)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3045 0))(
  ( (ValueCellFull!3045 (v!5588 V!10013)) (EmptyCell!3045) )
))
(declare-datatypes ((array!17147 0))(
  ( (array!17148 (arr!8104 (Array (_ BitVec 32) ValueCell!3045)) (size!8456 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17147)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10013)

(declare-datatypes ((tuple2!4996 0))(
  ( (tuple2!4997 (_1!2508 (_ BitVec 64)) (_2!2508 V!10013)) )
))
(declare-datatypes ((List!4634 0))(
  ( (Nil!4631) (Cons!4630 (h!5486 tuple2!4996) (t!9724 List!4634)) )
))
(declare-datatypes ((ListLongMap!3923 0))(
  ( (ListLongMap!3924 (toList!1977 List!4634)) )
))
(declare-fun contains!2014 (ListLongMap!3923 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1500 (array!17145 array!17147 (_ BitVec 32) (_ BitVec 32) V!10013 V!10013 (_ BitVec 32) Int) ListLongMap!3923)

(assert (=> b!332652 (= res!183349 (not (contains!2014 (getCurrentListMap!1500 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!183352 () Bool)

(assert (=> start!33544 (=> (not res!183352) (not e!204278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33544 (= res!183352 (validMask!0 mask!2385))))

(assert (=> start!33544 e!204278))

(assert (=> start!33544 true))

(assert (=> start!33544 tp_is_empty!6777))

(assert (=> start!33544 tp!23970))

(declare-fun e!204280 () Bool)

(declare-fun array_inv!6024 (array!17147) Bool)

(assert (=> start!33544 (and (array_inv!6024 _values!1525) e!204280)))

(declare-fun array_inv!6025 (array!17145) Bool)

(assert (=> start!33544 (array_inv!6025 _keys!1895)))

(declare-fun mapNonEmpty!11553 () Bool)

(declare-fun tp!23969 () Bool)

(assert (=> mapNonEmpty!11553 (= mapRes!11553 (and tp!23969 e!204281))))

(declare-fun mapValue!11553 () ValueCell!3045)

(declare-fun mapRest!11553 () (Array (_ BitVec 32) ValueCell!3045))

(declare-fun mapKey!11553 () (_ BitVec 32))

(assert (=> mapNonEmpty!11553 (= (arr!8104 _values!1525) (store mapRest!11553 mapKey!11553 mapValue!11553))))

(declare-fun b!332653 () Bool)

(declare-fun res!183351 () Bool)

(assert (=> b!332653 (=> (not res!183351) (not e!204278))))

(assert (=> b!332653 (= res!183351 (and (= (size!8456 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8455 _keys!1895) (size!8456 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332654 () Bool)

(declare-fun e!204282 () Bool)

(assert (=> b!332654 (= e!204280 (and e!204282 mapRes!11553))))

(declare-fun condMapEmpty!11553 () Bool)

(declare-fun mapDefault!11553 () ValueCell!3045)

(assert (=> b!332654 (= condMapEmpty!11553 (= (arr!8104 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3045)) mapDefault!11553)))))

(declare-fun b!332655 () Bool)

(declare-fun res!183348 () Bool)

(assert (=> b!332655 (=> (not res!183348) (not e!204278))))

(declare-datatypes ((List!4635 0))(
  ( (Nil!4632) (Cons!4631 (h!5487 (_ BitVec 64)) (t!9725 List!4635)) )
))
(declare-fun arrayNoDuplicates!0 (array!17145 (_ BitVec 32) List!4635) Bool)

(assert (=> b!332655 (= res!183348 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4632))))

(declare-fun b!332656 () Bool)

(declare-fun res!183353 () Bool)

(assert (=> b!332656 (=> (not res!183353) (not e!204278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17145 (_ BitVec 32)) Bool)

(assert (=> b!332656 (= res!183353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332657 () Bool)

(assert (=> b!332657 (= e!204282 tp_is_empty!6777)))

(assert (= (and start!33544 res!183352) b!332653))

(assert (= (and b!332653 res!183351) b!332656))

(assert (= (and b!332656 res!183353) b!332655))

(assert (= (and b!332655 res!183348) b!332651))

(assert (= (and b!332651 res!183350) b!332652))

(assert (= (and b!332652 res!183349) b!332650))

(assert (= (and b!332654 condMapEmpty!11553) mapIsEmpty!11553))

(assert (= (and b!332654 (not condMapEmpty!11553)) mapNonEmpty!11553))

(assert (= (and mapNonEmpty!11553 ((_ is ValueCellFull!3045) mapValue!11553)) b!332649))

(assert (= (and b!332654 ((_ is ValueCellFull!3045) mapDefault!11553)) b!332657))

(assert (= start!33544 b!332654))

(declare-fun m!337083 () Bool)

(assert (=> b!332651 m!337083))

(declare-fun m!337085 () Bool)

(assert (=> b!332652 m!337085))

(assert (=> b!332652 m!337085))

(declare-fun m!337087 () Bool)

(assert (=> b!332652 m!337087))

(declare-fun m!337089 () Bool)

(assert (=> start!33544 m!337089))

(declare-fun m!337091 () Bool)

(assert (=> start!33544 m!337091))

(declare-fun m!337093 () Bool)

(assert (=> start!33544 m!337093))

(declare-fun m!337095 () Bool)

(assert (=> b!332655 m!337095))

(declare-fun m!337097 () Bool)

(assert (=> mapNonEmpty!11553 m!337097))

(declare-fun m!337099 () Bool)

(assert (=> b!332656 m!337099))

(declare-fun m!337101 () Bool)

(assert (=> b!332650 m!337101))

(declare-fun m!337103 () Bool)

(assert (=> b!332650 m!337103))

(check-sat tp_is_empty!6777 (not b!332650) (not mapNonEmpty!11553) (not b!332652) b_and!14017 (not b!332651) (not b!332655) (not b_next!6825) (not start!33544) (not b!332656))
(check-sat b_and!14017 (not b_next!6825))
(get-model)

(declare-fun b!332695 () Bool)

(declare-fun e!204306 () Bool)

(declare-fun call!26213 () Bool)

(assert (=> b!332695 (= e!204306 call!26213)))

(declare-fun b!332696 () Bool)

(declare-fun e!204307 () Bool)

(assert (=> b!332696 (= e!204307 e!204306)))

(declare-fun c!52010 () Bool)

(assert (=> b!332696 (= c!52010 (validKeyInArray!0 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26210 () Bool)

(assert (=> bm!26210 (= call!26213 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52010 (Cons!4631 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000) Nil!4632) Nil!4632)))))

(declare-fun b!332697 () Bool)

(declare-fun e!204309 () Bool)

(assert (=> b!332697 (= e!204309 e!204307)))

(declare-fun res!183378 () Bool)

(assert (=> b!332697 (=> (not res!183378) (not e!204307))))

(declare-fun e!204308 () Bool)

(assert (=> b!332697 (= res!183378 (not e!204308))))

(declare-fun res!183379 () Bool)

(assert (=> b!332697 (=> (not res!183379) (not e!204308))))

(assert (=> b!332697 (= res!183379 (validKeyInArray!0 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!70411 () Bool)

(declare-fun res!183380 () Bool)

(assert (=> d!70411 (=> res!183380 e!204309)))

(assert (=> d!70411 (= res!183380 (bvsge #b00000000000000000000000000000000 (size!8455 _keys!1895)))))

(assert (=> d!70411 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4632) e!204309)))

(declare-fun b!332698 () Bool)

(assert (=> b!332698 (= e!204306 call!26213)))

(declare-fun b!332699 () Bool)

(declare-fun contains!2016 (List!4635 (_ BitVec 64)) Bool)

(assert (=> b!332699 (= e!204308 (contains!2016 Nil!4632 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70411 (not res!183380)) b!332697))

(assert (= (and b!332697 res!183379) b!332699))

(assert (= (and b!332697 res!183378) b!332696))

(assert (= (and b!332696 c!52010) b!332695))

(assert (= (and b!332696 (not c!52010)) b!332698))

(assert (= (or b!332695 b!332698) bm!26210))

(declare-fun m!337127 () Bool)

(assert (=> b!332696 m!337127))

(assert (=> b!332696 m!337127))

(declare-fun m!337129 () Bool)

(assert (=> b!332696 m!337129))

(assert (=> bm!26210 m!337127))

(declare-fun m!337131 () Bool)

(assert (=> bm!26210 m!337131))

(assert (=> b!332697 m!337127))

(assert (=> b!332697 m!337127))

(assert (=> b!332697 m!337129))

(assert (=> b!332699 m!337127))

(assert (=> b!332699 m!337127))

(declare-fun m!337133 () Bool)

(assert (=> b!332699 m!337133))

(assert (=> b!332655 d!70411))

(declare-fun b!332708 () Bool)

(declare-fun e!204318 () Bool)

(declare-fun call!26216 () Bool)

(assert (=> b!332708 (= e!204318 call!26216)))

(declare-fun bm!26213 () Bool)

(assert (=> bm!26213 (= call!26216 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!332709 () Bool)

(declare-fun e!204316 () Bool)

(assert (=> b!332709 (= e!204316 call!26216)))

(declare-fun b!332710 () Bool)

(assert (=> b!332710 (= e!204318 e!204316)))

(declare-fun lt!159024 () (_ BitVec 64))

(assert (=> b!332710 (= lt!159024 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10362 0))(
  ( (Unit!10363) )
))
(declare-fun lt!159022 () Unit!10362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17145 (_ BitVec 64) (_ BitVec 32)) Unit!10362)

(assert (=> b!332710 (= lt!159022 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!159024 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!17145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!332710 (arrayContainsKey!0 _keys!1895 lt!159024 #b00000000000000000000000000000000)))

(declare-fun lt!159023 () Unit!10362)

(assert (=> b!332710 (= lt!159023 lt!159022)))

(declare-fun res!183386 () Bool)

(assert (=> b!332710 (= res!183386 (= (seekEntryOrOpen!0 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3144 #b00000000000000000000000000000000)))))

(assert (=> b!332710 (=> (not res!183386) (not e!204316))))

(declare-fun d!70413 () Bool)

(declare-fun res!183385 () Bool)

(declare-fun e!204317 () Bool)

(assert (=> d!70413 (=> res!183385 e!204317)))

(assert (=> d!70413 (= res!183385 (bvsge #b00000000000000000000000000000000 (size!8455 _keys!1895)))))

(assert (=> d!70413 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!204317)))

(declare-fun b!332711 () Bool)

(assert (=> b!332711 (= e!204317 e!204318)))

(declare-fun c!52013 () Bool)

(assert (=> b!332711 (= c!52013 (validKeyInArray!0 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70413 (not res!183385)) b!332711))

(assert (= (and b!332711 c!52013) b!332710))

(assert (= (and b!332711 (not c!52013)) b!332708))

(assert (= (and b!332710 res!183386) b!332709))

(assert (= (or b!332709 b!332708) bm!26213))

(declare-fun m!337135 () Bool)

(assert (=> bm!26213 m!337135))

(assert (=> b!332710 m!337127))

(declare-fun m!337137 () Bool)

(assert (=> b!332710 m!337137))

(declare-fun m!337139 () Bool)

(assert (=> b!332710 m!337139))

(assert (=> b!332710 m!337127))

(declare-fun m!337141 () Bool)

(assert (=> b!332710 m!337141))

(assert (=> b!332711 m!337127))

(assert (=> b!332711 m!337127))

(assert (=> b!332711 m!337129))

(assert (=> b!332656 d!70413))

(declare-fun d!70415 () Bool)

(declare-fun e!204324 () Bool)

(assert (=> d!70415 e!204324))

(declare-fun res!183389 () Bool)

(assert (=> d!70415 (=> res!183389 e!204324)))

(declare-fun lt!159034 () Bool)

(assert (=> d!70415 (= res!183389 (not lt!159034))))

(declare-fun lt!159036 () Bool)

(assert (=> d!70415 (= lt!159034 lt!159036)))

(declare-fun lt!159033 () Unit!10362)

(declare-fun e!204323 () Unit!10362)

(assert (=> d!70415 (= lt!159033 e!204323)))

(declare-fun c!52016 () Bool)

(assert (=> d!70415 (= c!52016 lt!159036)))

(declare-fun containsKey!312 (List!4634 (_ BitVec 64)) Bool)

(assert (=> d!70415 (= lt!159036 (containsKey!312 (toList!1977 (getCurrentListMap!1500 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70415 (= (contains!2014 (getCurrentListMap!1500 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!159034)))

(declare-fun b!332718 () Bool)

(declare-fun lt!159035 () Unit!10362)

(assert (=> b!332718 (= e!204323 lt!159035)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!261 (List!4634 (_ BitVec 64)) Unit!10362)

(assert (=> b!332718 (= lt!159035 (lemmaContainsKeyImpliesGetValueByKeyDefined!261 (toList!1977 (getCurrentListMap!1500 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!326 0))(
  ( (Some!325 (v!5590 V!10013)) (None!324) )
))
(declare-fun isDefined!262 (Option!326) Bool)

(declare-fun getValueByKey!320 (List!4634 (_ BitVec 64)) Option!326)

(assert (=> b!332718 (isDefined!262 (getValueByKey!320 (toList!1977 (getCurrentListMap!1500 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!332719 () Bool)

(declare-fun Unit!10364 () Unit!10362)

(assert (=> b!332719 (= e!204323 Unit!10364)))

(declare-fun b!332720 () Bool)

(assert (=> b!332720 (= e!204324 (isDefined!262 (getValueByKey!320 (toList!1977 (getCurrentListMap!1500 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70415 c!52016) b!332718))

(assert (= (and d!70415 (not c!52016)) b!332719))

(assert (= (and d!70415 (not res!183389)) b!332720))

(declare-fun m!337143 () Bool)

(assert (=> d!70415 m!337143))

(declare-fun m!337145 () Bool)

(assert (=> b!332718 m!337145))

(declare-fun m!337147 () Bool)

(assert (=> b!332718 m!337147))

(assert (=> b!332718 m!337147))

(declare-fun m!337149 () Bool)

(assert (=> b!332718 m!337149))

(assert (=> b!332720 m!337147))

(assert (=> b!332720 m!337147))

(assert (=> b!332720 m!337149))

(assert (=> b!332652 d!70415))

(declare-fun b!332763 () Bool)

(declare-fun res!183416 () Bool)

(declare-fun e!204351 () Bool)

(assert (=> b!332763 (=> (not res!183416) (not e!204351))))

(declare-fun e!204361 () Bool)

(assert (=> b!332763 (= res!183416 e!204361)))

(declare-fun c!52030 () Bool)

(assert (=> b!332763 (= c!52030 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!332764 () Bool)

(declare-fun e!204352 () ListLongMap!3923)

(declare-fun call!26231 () ListLongMap!3923)

(assert (=> b!332764 (= e!204352 call!26231)))

(declare-fun bm!26228 () Bool)

(declare-fun call!26233 () ListLongMap!3923)

(assert (=> bm!26228 (= call!26231 call!26233)))

(declare-fun b!332765 () Bool)

(declare-fun e!204353 () Bool)

(declare-fun call!26235 () Bool)

(assert (=> b!332765 (= e!204353 (not call!26235))))

(declare-fun b!332766 () Bool)

(declare-fun e!204360 () Bool)

(declare-fun e!204354 () Bool)

(assert (=> b!332766 (= e!204360 e!204354)))

(declare-fun res!183410 () Bool)

(assert (=> b!332766 (=> (not res!183410) (not e!204354))))

(declare-fun lt!159099 () ListLongMap!3923)

(assert (=> b!332766 (= res!183410 (contains!2014 lt!159099 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!332766 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8455 _keys!1895)))))

(declare-fun b!332767 () Bool)

(declare-fun e!204356 () Unit!10362)

(declare-fun lt!159082 () Unit!10362)

(assert (=> b!332767 (= e!204356 lt!159082)))

(declare-fun lt!159081 () ListLongMap!3923)

(declare-fun getCurrentListMapNoExtraKeys!582 (array!17145 array!17147 (_ BitVec 32) (_ BitVec 32) V!10013 V!10013 (_ BitVec 32) Int) ListLongMap!3923)

(assert (=> b!332767 (= lt!159081 (getCurrentListMapNoExtraKeys!582 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159090 () (_ BitVec 64))

(assert (=> b!332767 (= lt!159090 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159092 () (_ BitVec 64))

(assert (=> b!332767 (= lt!159092 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159091 () Unit!10362)

(declare-fun addStillContains!239 (ListLongMap!3923 (_ BitVec 64) V!10013 (_ BitVec 64)) Unit!10362)

(assert (=> b!332767 (= lt!159091 (addStillContains!239 lt!159081 lt!159090 zeroValue!1467 lt!159092))))

(declare-fun +!707 (ListLongMap!3923 tuple2!4996) ListLongMap!3923)

(assert (=> b!332767 (contains!2014 (+!707 lt!159081 (tuple2!4997 lt!159090 zeroValue!1467)) lt!159092)))

(declare-fun lt!159085 () Unit!10362)

(assert (=> b!332767 (= lt!159085 lt!159091)))

(declare-fun lt!159100 () ListLongMap!3923)

(assert (=> b!332767 (= lt!159100 (getCurrentListMapNoExtraKeys!582 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159096 () (_ BitVec 64))

(assert (=> b!332767 (= lt!159096 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159097 () (_ BitVec 64))

(assert (=> b!332767 (= lt!159097 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159095 () Unit!10362)

(declare-fun addApplyDifferent!239 (ListLongMap!3923 (_ BitVec 64) V!10013 (_ BitVec 64)) Unit!10362)

(assert (=> b!332767 (= lt!159095 (addApplyDifferent!239 lt!159100 lt!159096 minValue!1467 lt!159097))))

(declare-fun apply!263 (ListLongMap!3923 (_ BitVec 64)) V!10013)

(assert (=> b!332767 (= (apply!263 (+!707 lt!159100 (tuple2!4997 lt!159096 minValue!1467)) lt!159097) (apply!263 lt!159100 lt!159097))))

(declare-fun lt!159098 () Unit!10362)

(assert (=> b!332767 (= lt!159098 lt!159095)))

(declare-fun lt!159094 () ListLongMap!3923)

(assert (=> b!332767 (= lt!159094 (getCurrentListMapNoExtraKeys!582 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159089 () (_ BitVec 64))

(assert (=> b!332767 (= lt!159089 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159093 () (_ BitVec 64))

(assert (=> b!332767 (= lt!159093 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159086 () Unit!10362)

(assert (=> b!332767 (= lt!159086 (addApplyDifferent!239 lt!159094 lt!159089 zeroValue!1467 lt!159093))))

(assert (=> b!332767 (= (apply!263 (+!707 lt!159094 (tuple2!4997 lt!159089 zeroValue!1467)) lt!159093) (apply!263 lt!159094 lt!159093))))

(declare-fun lt!159084 () Unit!10362)

(assert (=> b!332767 (= lt!159084 lt!159086)))

(declare-fun lt!159088 () ListLongMap!3923)

(assert (=> b!332767 (= lt!159088 (getCurrentListMapNoExtraKeys!582 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159101 () (_ BitVec 64))

(assert (=> b!332767 (= lt!159101 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159083 () (_ BitVec 64))

(assert (=> b!332767 (= lt!159083 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!332767 (= lt!159082 (addApplyDifferent!239 lt!159088 lt!159101 minValue!1467 lt!159083))))

(assert (=> b!332767 (= (apply!263 (+!707 lt!159088 (tuple2!4997 lt!159101 minValue!1467)) lt!159083) (apply!263 lt!159088 lt!159083))))

(declare-fun bm!26229 () Bool)

(assert (=> bm!26229 (= call!26235 (contains!2014 lt!159099 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!332768 () Bool)

(declare-fun e!204358 () Bool)

(assert (=> b!332768 (= e!204358 (= (apply!263 lt!159099 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!332769 () Bool)

(declare-fun Unit!10365 () Unit!10362)

(assert (=> b!332769 (= e!204356 Unit!10365)))

(declare-fun b!332770 () Bool)

(declare-fun c!52032 () Bool)

(assert (=> b!332770 (= c!52032 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!204359 () ListLongMap!3923)

(assert (=> b!332770 (= e!204352 e!204359)))

(declare-fun b!332771 () Bool)

(declare-fun call!26237 () Bool)

(assert (=> b!332771 (= e!204361 (not call!26237))))

(declare-fun b!332772 () Bool)

(assert (=> b!332772 (= e!204359 call!26231)))

(declare-fun b!332773 () Bool)

(declare-fun call!26232 () ListLongMap!3923)

(assert (=> b!332773 (= e!204359 call!26232)))

(declare-fun bm!26231 () Bool)

(declare-fun call!26234 () ListLongMap!3923)

(assert (=> bm!26231 (= call!26232 call!26234)))

(declare-fun b!332774 () Bool)

(declare-fun res!183414 () Bool)

(assert (=> b!332774 (=> (not res!183414) (not e!204351))))

(assert (=> b!332774 (= res!183414 e!204360)))

(declare-fun res!183411 () Bool)

(assert (=> b!332774 (=> res!183411 e!204360)))

(declare-fun e!204363 () Bool)

(assert (=> b!332774 (= res!183411 (not e!204363))))

(declare-fun res!183412 () Bool)

(assert (=> b!332774 (=> (not res!183412) (not e!204363))))

(assert (=> b!332774 (= res!183412 (bvslt #b00000000000000000000000000000000 (size!8455 _keys!1895)))))

(declare-fun bm!26232 () Bool)

(assert (=> bm!26232 (= call!26237 (contains!2014 lt!159099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!332775 () Bool)

(assert (=> b!332775 (= e!204351 e!204353)))

(declare-fun c!52034 () Bool)

(assert (=> b!332775 (= c!52034 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26233 () Bool)

(declare-fun call!26236 () ListLongMap!3923)

(assert (=> bm!26233 (= call!26234 call!26236)))

(declare-fun b!332776 () Bool)

(assert (=> b!332776 (= e!204363 (validKeyInArray!0 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26230 () Bool)

(assert (=> bm!26230 (= call!26236 (getCurrentListMapNoExtraKeys!582 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun d!70417 () Bool)

(assert (=> d!70417 e!204351))

(declare-fun res!183413 () Bool)

(assert (=> d!70417 (=> (not res!183413) (not e!204351))))

(assert (=> d!70417 (= res!183413 (or (bvsge #b00000000000000000000000000000000 (size!8455 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8455 _keys!1895)))))))

(declare-fun lt!159102 () ListLongMap!3923)

(assert (=> d!70417 (= lt!159099 lt!159102)))

(declare-fun lt!159087 () Unit!10362)

(assert (=> d!70417 (= lt!159087 e!204356)))

(declare-fun c!52029 () Bool)

(declare-fun e!204355 () Bool)

(assert (=> d!70417 (= c!52029 e!204355)))

(declare-fun res!183415 () Bool)

(assert (=> d!70417 (=> (not res!183415) (not e!204355))))

(assert (=> d!70417 (= res!183415 (bvslt #b00000000000000000000000000000000 (size!8455 _keys!1895)))))

(declare-fun e!204362 () ListLongMap!3923)

(assert (=> d!70417 (= lt!159102 e!204362)))

(declare-fun c!52031 () Bool)

(assert (=> d!70417 (= c!52031 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70417 (validMask!0 mask!2385)))

(assert (=> d!70417 (= (getCurrentListMap!1500 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!159099)))

(declare-fun b!332777 () Bool)

(declare-fun e!204357 () Bool)

(assert (=> b!332777 (= e!204353 e!204357)))

(declare-fun res!183409 () Bool)

(assert (=> b!332777 (= res!183409 call!26235)))

(assert (=> b!332777 (=> (not res!183409) (not e!204357))))

(declare-fun b!332778 () Bool)

(assert (=> b!332778 (= e!204357 (= (apply!263 lt!159099 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!332779 () Bool)

(assert (=> b!332779 (= e!204362 e!204352)))

(declare-fun c!52033 () Bool)

(assert (=> b!332779 (= c!52033 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!332780 () Bool)

(assert (=> b!332780 (= e!204361 e!204358)))

(declare-fun res!183408 () Bool)

(assert (=> b!332780 (= res!183408 call!26237)))

(assert (=> b!332780 (=> (not res!183408) (not e!204358))))

(declare-fun b!332781 () Bool)

(declare-fun get!4468 (ValueCell!3045 V!10013) V!10013)

(declare-fun dynLambda!601 (Int (_ BitVec 64)) V!10013)

(assert (=> b!332781 (= e!204354 (= (apply!263 lt!159099 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000)) (get!4468 (select (arr!8104 _values!1525) #b00000000000000000000000000000000) (dynLambda!601 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!332781 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8456 _values!1525)))))

(assert (=> b!332781 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8455 _keys!1895)))))

(declare-fun bm!26234 () Bool)

(assert (=> bm!26234 (= call!26233 (+!707 (ite c!52031 call!26236 (ite c!52033 call!26234 call!26232)) (ite (or c!52031 c!52033) (tuple2!4997 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!4997 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!332782 () Bool)

(assert (=> b!332782 (= e!204362 (+!707 call!26233 (tuple2!4997 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!332783 () Bool)

(assert (=> b!332783 (= e!204355 (validKeyInArray!0 (select (arr!8103 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70417 c!52031) b!332782))

(assert (= (and d!70417 (not c!52031)) b!332779))

(assert (= (and b!332779 c!52033) b!332764))

(assert (= (and b!332779 (not c!52033)) b!332770))

(assert (= (and b!332770 c!52032) b!332772))

(assert (= (and b!332770 (not c!52032)) b!332773))

(assert (= (or b!332772 b!332773) bm!26231))

(assert (= (or b!332764 bm!26231) bm!26233))

(assert (= (or b!332764 b!332772) bm!26228))

(assert (= (or b!332782 bm!26233) bm!26230))

(assert (= (or b!332782 bm!26228) bm!26234))

(assert (= (and d!70417 res!183415) b!332783))

(assert (= (and d!70417 c!52029) b!332767))

(assert (= (and d!70417 (not c!52029)) b!332769))

(assert (= (and d!70417 res!183413) b!332774))

(assert (= (and b!332774 res!183412) b!332776))

(assert (= (and b!332774 (not res!183411)) b!332766))

(assert (= (and b!332766 res!183410) b!332781))

(assert (= (and b!332774 res!183414) b!332763))

(assert (= (and b!332763 c!52030) b!332780))

(assert (= (and b!332763 (not c!52030)) b!332771))

(assert (= (and b!332780 res!183408) b!332768))

(assert (= (or b!332780 b!332771) bm!26232))

(assert (= (and b!332763 res!183416) b!332775))

(assert (= (and b!332775 c!52034) b!332777))

(assert (= (and b!332775 (not c!52034)) b!332765))

(assert (= (and b!332777 res!183409) b!332778))

(assert (= (or b!332777 b!332765) bm!26229))

(declare-fun b_lambda!8421 () Bool)

(assert (=> (not b_lambda!8421) (not b!332781)))

(declare-fun t!9729 () Bool)

(declare-fun tb!3049 () Bool)

(assert (=> (and start!33544 (= defaultEntry!1528 defaultEntry!1528) t!9729) tb!3049))

(declare-fun result!5461 () Bool)

(assert (=> tb!3049 (= result!5461 tp_is_empty!6777)))

(assert (=> b!332781 t!9729))

(declare-fun b_and!14021 () Bool)

(assert (= b_and!14017 (and (=> t!9729 result!5461) b_and!14021)))

(declare-fun m!337151 () Bool)

(assert (=> bm!26232 m!337151))

(assert (=> b!332783 m!337127))

(assert (=> b!332783 m!337127))

(assert (=> b!332783 m!337129))

(declare-fun m!337153 () Bool)

(assert (=> bm!26234 m!337153))

(declare-fun m!337155 () Bool)

(assert (=> b!332778 m!337155))

(declare-fun m!337157 () Bool)

(assert (=> bm!26230 m!337157))

(assert (=> b!332776 m!337127))

(assert (=> b!332776 m!337127))

(assert (=> b!332776 m!337129))

(declare-fun m!337159 () Bool)

(assert (=> b!332767 m!337159))

(declare-fun m!337161 () Bool)

(assert (=> b!332767 m!337161))

(declare-fun m!337163 () Bool)

(assert (=> b!332767 m!337163))

(declare-fun m!337165 () Bool)

(assert (=> b!332767 m!337165))

(declare-fun m!337167 () Bool)

(assert (=> b!332767 m!337167))

(declare-fun m!337169 () Bool)

(assert (=> b!332767 m!337169))

(assert (=> b!332767 m!337127))

(assert (=> b!332767 m!337161))

(assert (=> b!332767 m!337157))

(declare-fun m!337171 () Bool)

(assert (=> b!332767 m!337171))

(declare-fun m!337173 () Bool)

(assert (=> b!332767 m!337173))

(assert (=> b!332767 m!337169))

(declare-fun m!337175 () Bool)

(assert (=> b!332767 m!337175))

(declare-fun m!337177 () Bool)

(assert (=> b!332767 m!337177))

(declare-fun m!337179 () Bool)

(assert (=> b!332767 m!337179))

(declare-fun m!337181 () Bool)

(assert (=> b!332767 m!337181))

(assert (=> b!332767 m!337177))

(declare-fun m!337183 () Bool)

(assert (=> b!332767 m!337183))

(assert (=> b!332767 m!337171))

(declare-fun m!337185 () Bool)

(assert (=> b!332767 m!337185))

(declare-fun m!337187 () Bool)

(assert (=> b!332767 m!337187))

(declare-fun m!337189 () Bool)

(assert (=> bm!26229 m!337189))

(assert (=> b!332766 m!337127))

(assert (=> b!332766 m!337127))

(declare-fun m!337191 () Bool)

(assert (=> b!332766 m!337191))

(declare-fun m!337193 () Bool)

(assert (=> b!332781 m!337193))

(declare-fun m!337195 () Bool)

(assert (=> b!332781 m!337195))

(assert (=> b!332781 m!337195))

(assert (=> b!332781 m!337193))

(declare-fun m!337197 () Bool)

(assert (=> b!332781 m!337197))

(assert (=> b!332781 m!337127))

(assert (=> b!332781 m!337127))

(declare-fun m!337199 () Bool)

(assert (=> b!332781 m!337199))

(assert (=> d!70417 m!337089))

(declare-fun m!337201 () Bool)

(assert (=> b!332782 m!337201))

(declare-fun m!337203 () Bool)

(assert (=> b!332768 m!337203))

(assert (=> b!332652 d!70417))

(declare-fun d!70419 () Bool)

(assert (=> d!70419 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33544 d!70419))

(declare-fun d!70421 () Bool)

(assert (=> d!70421 (= (array_inv!6024 _values!1525) (bvsge (size!8456 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33544 d!70421))

(declare-fun d!70423 () Bool)

(assert (=> d!70423 (= (array_inv!6025 _keys!1895) (bvsge (size!8455 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33544 d!70423))

(declare-fun d!70425 () Bool)

(assert (=> d!70425 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!332651 d!70425))

(declare-fun b!332798 () Bool)

(declare-fun e!204372 () SeekEntryResult!3144)

(declare-fun lt!159111 () SeekEntryResult!3144)

(assert (=> b!332798 (= e!204372 (Found!3144 (index!14757 lt!159111)))))

(declare-fun b!332800 () Bool)

(declare-fun e!204371 () SeekEntryResult!3144)

(assert (=> b!332800 (= e!204371 Undefined!3144)))

(declare-fun b!332801 () Bool)

(declare-fun e!204370 () SeekEntryResult!3144)

(assert (=> b!332801 (= e!204370 (MissingZero!3144 (index!14757 lt!159111)))))

(declare-fun b!332802 () Bool)

(declare-fun c!52043 () Bool)

(declare-fun lt!159110 () (_ BitVec 64))

(assert (=> b!332802 (= c!52043 (= lt!159110 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!332802 (= e!204372 e!204370)))

(declare-fun b!332803 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17145 (_ BitVec 32)) SeekEntryResult!3144)

(assert (=> b!332803 (= e!204370 (seekKeyOrZeroReturnVacant!0 (x!33163 lt!159111) (index!14757 lt!159111) (index!14757 lt!159111) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!332799 () Bool)

(assert (=> b!332799 (= e!204371 e!204372)))

(assert (=> b!332799 (= lt!159110 (select (arr!8103 _keys!1895) (index!14757 lt!159111)))))

(declare-fun c!52042 () Bool)

(assert (=> b!332799 (= c!52042 (= lt!159110 k0!1348))))

(declare-fun d!70427 () Bool)

(declare-fun lt!159109 () SeekEntryResult!3144)

(assert (=> d!70427 (and (or ((_ is Undefined!3144) lt!159109) (not ((_ is Found!3144) lt!159109)) (and (bvsge (index!14756 lt!159109) #b00000000000000000000000000000000) (bvslt (index!14756 lt!159109) (size!8455 _keys!1895)))) (or ((_ is Undefined!3144) lt!159109) ((_ is Found!3144) lt!159109) (not ((_ is MissingZero!3144) lt!159109)) (and (bvsge (index!14755 lt!159109) #b00000000000000000000000000000000) (bvslt (index!14755 lt!159109) (size!8455 _keys!1895)))) (or ((_ is Undefined!3144) lt!159109) ((_ is Found!3144) lt!159109) ((_ is MissingZero!3144) lt!159109) (not ((_ is MissingVacant!3144) lt!159109)) (and (bvsge (index!14758 lt!159109) #b00000000000000000000000000000000) (bvslt (index!14758 lt!159109) (size!8455 _keys!1895)))) (or ((_ is Undefined!3144) lt!159109) (ite ((_ is Found!3144) lt!159109) (= (select (arr!8103 _keys!1895) (index!14756 lt!159109)) k0!1348) (ite ((_ is MissingZero!3144) lt!159109) (= (select (arr!8103 _keys!1895) (index!14755 lt!159109)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3144) lt!159109) (= (select (arr!8103 _keys!1895) (index!14758 lt!159109)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70427 (= lt!159109 e!204371)))

(declare-fun c!52041 () Bool)

(assert (=> d!70427 (= c!52041 (and ((_ is Intermediate!3144) lt!159111) (undefined!3956 lt!159111)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17145 (_ BitVec 32)) SeekEntryResult!3144)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70427 (= lt!159111 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70427 (validMask!0 mask!2385)))

(assert (=> d!70427 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!159109)))

(assert (= (and d!70427 c!52041) b!332800))

(assert (= (and d!70427 (not c!52041)) b!332799))

(assert (= (and b!332799 c!52042) b!332798))

(assert (= (and b!332799 (not c!52042)) b!332802))

(assert (= (and b!332802 c!52043) b!332801))

(assert (= (and b!332802 (not c!52043)) b!332803))

(declare-fun m!337205 () Bool)

(assert (=> b!332803 m!337205))

(declare-fun m!337207 () Bool)

(assert (=> b!332799 m!337207))

(declare-fun m!337209 () Bool)

(assert (=> d!70427 m!337209))

(declare-fun m!337211 () Bool)

(assert (=> d!70427 m!337211))

(declare-fun m!337213 () Bool)

(assert (=> d!70427 m!337213))

(declare-fun m!337215 () Bool)

(assert (=> d!70427 m!337215))

(assert (=> d!70427 m!337089))

(declare-fun m!337217 () Bool)

(assert (=> d!70427 m!337217))

(assert (=> d!70427 m!337213))

(assert (=> b!332650 d!70427))

(declare-fun condMapEmpty!11559 () Bool)

(declare-fun mapDefault!11559 () ValueCell!3045)

(assert (=> mapNonEmpty!11553 (= condMapEmpty!11559 (= mapRest!11553 ((as const (Array (_ BitVec 32) ValueCell!3045)) mapDefault!11559)))))

(declare-fun e!204378 () Bool)

(declare-fun mapRes!11559 () Bool)

(assert (=> mapNonEmpty!11553 (= tp!23969 (and e!204378 mapRes!11559))))

(declare-fun b!332811 () Bool)

(assert (=> b!332811 (= e!204378 tp_is_empty!6777)))

(declare-fun mapIsEmpty!11559 () Bool)

(assert (=> mapIsEmpty!11559 mapRes!11559))

(declare-fun mapNonEmpty!11559 () Bool)

(declare-fun tp!23979 () Bool)

(declare-fun e!204377 () Bool)

(assert (=> mapNonEmpty!11559 (= mapRes!11559 (and tp!23979 e!204377))))

(declare-fun mapValue!11559 () ValueCell!3045)

(declare-fun mapRest!11559 () (Array (_ BitVec 32) ValueCell!3045))

(declare-fun mapKey!11559 () (_ BitVec 32))

(assert (=> mapNonEmpty!11559 (= mapRest!11553 (store mapRest!11559 mapKey!11559 mapValue!11559))))

(declare-fun b!332810 () Bool)

(assert (=> b!332810 (= e!204377 tp_is_empty!6777)))

(assert (= (and mapNonEmpty!11553 condMapEmpty!11559) mapIsEmpty!11559))

(assert (= (and mapNonEmpty!11553 (not condMapEmpty!11559)) mapNonEmpty!11559))

(assert (= (and mapNonEmpty!11559 ((_ is ValueCellFull!3045) mapValue!11559)) b!332810))

(assert (= (and mapNonEmpty!11553 ((_ is ValueCellFull!3045) mapDefault!11559)) b!332811))

(declare-fun m!337219 () Bool)

(assert (=> mapNonEmpty!11559 m!337219))

(declare-fun b_lambda!8423 () Bool)

(assert (= b_lambda!8421 (or (and start!33544 b_free!6825) b_lambda!8423)))

(check-sat (not b!332782) (not bm!26210) (not mapNonEmpty!11559) (not bm!26229) (not d!70417) (not b!332767) (not b!332768) (not b!332783) (not b!332776) (not b!332711) (not bm!26234) tp_is_empty!6777 (not bm!26232) (not b_lambda!8423) (not b!332697) (not d!70427) (not b!332778) (not b!332720) (not b!332710) (not bm!26230) (not b!332699) (not b!332766) (not b!332781) (not b_next!6825) (not b!332803) b_and!14021 (not bm!26213) (not b!332696) (not b!332718) (not d!70415))
(check-sat b_and!14021 (not b_next!6825))

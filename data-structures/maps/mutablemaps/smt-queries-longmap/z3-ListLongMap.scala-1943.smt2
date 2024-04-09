; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34388 () Bool)

(assert start!34388)

(declare-fun b_free!7329 () Bool)

(declare-fun b_next!7329 () Bool)

(assert (=> start!34388 (= b_free!7329 (not b_next!7329))))

(declare-fun tp!25530 () Bool)

(declare-fun b_and!14553 () Bool)

(assert (=> start!34388 (= tp!25530 b_and!14553)))

(declare-fun b!343127 () Bool)

(declare-fun e!210407 () Bool)

(declare-fun tp_is_empty!7281 () Bool)

(assert (=> b!343127 (= e!210407 tp_is_empty!7281)))

(declare-fun b!343128 () Bool)

(declare-fun res!189744 () Bool)

(declare-fun e!210413 () Bool)

(assert (=> b!343128 (=> (not res!189744) (not e!210413))))

(declare-datatypes ((array!18125 0))(
  ( (array!18126 (arr!8577 (Array (_ BitVec 32) (_ BitVec 64))) (size!8929 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18125)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18125 (_ BitVec 32)) Bool)

(assert (=> b!343128 (= res!189744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343129 () Bool)

(declare-fun e!210414 () Bool)

(declare-datatypes ((SeekEntryResult!3308 0))(
  ( (MissingZero!3308 (index!15411 (_ BitVec 32))) (Found!3308 (index!15412 (_ BitVec 32))) (Intermediate!3308 (undefined!4120 Bool) (index!15413 (_ BitVec 32)) (x!34159 (_ BitVec 32))) (Undefined!3308) (MissingVacant!3308 (index!15414 (_ BitVec 32))) )
))
(declare-fun lt!162415 () SeekEntryResult!3308)

(assert (=> b!343129 (= e!210414 (and (= (select (arr!8577 _keys!1895) (index!15414 lt!162415)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8929 _keys!1895)) (bvsge (size!8929 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!343130 () Bool)

(declare-fun res!189746 () Bool)

(assert (=> b!343130 (=> (not res!189746) (not e!210413))))

(declare-datatypes ((List!4971 0))(
  ( (Nil!4968) (Cons!4967 (h!5823 (_ BitVec 64)) (t!10093 List!4971)) )
))
(declare-fun arrayNoDuplicates!0 (array!18125 (_ BitVec 32) List!4971) Bool)

(assert (=> b!343130 (= res!189746 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4968))))

(declare-fun b!343132 () Bool)

(declare-fun res!189748 () Bool)

(assert (=> b!343132 (=> (not res!189748) (not e!210413))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343132 (= res!189748 (validKeyInArray!0 k0!1348))))

(declare-fun b!343133 () Bool)

(declare-fun res!189750 () Bool)

(assert (=> b!343133 (=> (not res!189750) (not e!210413))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10685 0))(
  ( (V!10686 (val!3685 Int)) )
))
(declare-datatypes ((ValueCell!3297 0))(
  ( (ValueCellFull!3297 (v!5856 V!10685)) (EmptyCell!3297) )
))
(declare-datatypes ((array!18127 0))(
  ( (array!18128 (arr!8578 (Array (_ BitVec 32) ValueCell!3297)) (size!8930 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18127)

(assert (=> b!343133 (= res!189750 (and (= (size!8930 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8929 _keys!1895) (size!8930 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343134 () Bool)

(declare-fun res!189747 () Bool)

(assert (=> b!343134 (=> (not res!189747) (not e!210413))))

(declare-fun zeroValue!1467 () V!10685)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10685)

(declare-datatypes ((tuple2!5328 0))(
  ( (tuple2!5329 (_1!2674 (_ BitVec 64)) (_2!2674 V!10685)) )
))
(declare-datatypes ((List!4972 0))(
  ( (Nil!4969) (Cons!4968 (h!5824 tuple2!5328) (t!10094 List!4972)) )
))
(declare-datatypes ((ListLongMap!4255 0))(
  ( (ListLongMap!4256 (toList!2143 List!4972)) )
))
(declare-fun contains!2196 (ListLongMap!4255 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1663 (array!18125 array!18127 (_ BitVec 32) (_ BitVec 32) V!10685 V!10685 (_ BitVec 32) Int) ListLongMap!4255)

(assert (=> b!343134 (= res!189747 (not (contains!2196 (getCurrentListMap!1663 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!343135 () Bool)

(declare-fun res!189751 () Bool)

(assert (=> b!343135 (=> (not res!189751) (not e!210414))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!343135 (= res!189751 (inRange!0 (index!15414 lt!162415) mask!2385))))

(declare-fun b!343136 () Bool)

(declare-fun e!210409 () Bool)

(declare-fun mapRes!12357 () Bool)

(assert (=> b!343136 (= e!210409 (and e!210407 mapRes!12357))))

(declare-fun condMapEmpty!12357 () Bool)

(declare-fun mapDefault!12357 () ValueCell!3297)

(assert (=> b!343136 (= condMapEmpty!12357 (= (arr!8578 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3297)) mapDefault!12357)))))

(declare-fun mapIsEmpty!12357 () Bool)

(assert (=> mapIsEmpty!12357 mapRes!12357))

(declare-fun b!343137 () Bool)

(declare-datatypes ((Unit!10718 0))(
  ( (Unit!10719) )
))
(declare-fun e!210412 () Unit!10718)

(declare-fun Unit!10720 () Unit!10718)

(assert (=> b!343137 (= e!210412 Unit!10720)))

(declare-fun lt!162416 () Unit!10718)

(declare-fun lemmaArrayContainsKeyThenInListMap!315 (array!18125 array!18127 (_ BitVec 32) (_ BitVec 32) V!10685 V!10685 (_ BitVec 64) (_ BitVec 32) Int) Unit!10718)

(declare-fun arrayScanForKey!0 (array!18125 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!343137 (= lt!162416 (lemmaArrayContainsKeyThenInListMap!315 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!343137 false))

(declare-fun b!343131 () Bool)

(declare-fun e!210411 () Bool)

(assert (=> b!343131 (= e!210413 e!210411)))

(declare-fun res!189745 () Bool)

(assert (=> b!343131 (=> (not res!189745) (not e!210411))))

(get-info :version)

(assert (=> b!343131 (= res!189745 (and (not ((_ is Found!3308) lt!162415)) (not ((_ is MissingZero!3308) lt!162415)) ((_ is MissingVacant!3308) lt!162415)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18125 (_ BitVec 32)) SeekEntryResult!3308)

(assert (=> b!343131 (= lt!162415 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!189749 () Bool)

(assert (=> start!34388 (=> (not res!189749) (not e!210413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34388 (= res!189749 (validMask!0 mask!2385))))

(assert (=> start!34388 e!210413))

(assert (=> start!34388 true))

(assert (=> start!34388 tp_is_empty!7281))

(assert (=> start!34388 tp!25530))

(declare-fun array_inv!6342 (array!18127) Bool)

(assert (=> start!34388 (and (array_inv!6342 _values!1525) e!210409)))

(declare-fun array_inv!6343 (array!18125) Bool)

(assert (=> start!34388 (array_inv!6343 _keys!1895)))

(declare-fun b!343138 () Bool)

(declare-fun e!210410 () Bool)

(assert (=> b!343138 (= e!210410 tp_is_empty!7281)))

(declare-fun b!343139 () Bool)

(declare-fun Unit!10721 () Unit!10718)

(assert (=> b!343139 (= e!210412 Unit!10721)))

(declare-fun mapNonEmpty!12357 () Bool)

(declare-fun tp!25529 () Bool)

(assert (=> mapNonEmpty!12357 (= mapRes!12357 (and tp!25529 e!210410))))

(declare-fun mapRest!12357 () (Array (_ BitVec 32) ValueCell!3297))

(declare-fun mapValue!12357 () ValueCell!3297)

(declare-fun mapKey!12357 () (_ BitVec 32))

(assert (=> mapNonEmpty!12357 (= (arr!8578 _values!1525) (store mapRest!12357 mapKey!12357 mapValue!12357))))

(declare-fun b!343140 () Bool)

(assert (=> b!343140 (= e!210411 e!210414)))

(declare-fun res!189752 () Bool)

(assert (=> b!343140 (=> (not res!189752) (not e!210414))))

(declare-fun lt!162414 () Bool)

(assert (=> b!343140 (= res!189752 (not lt!162414))))

(declare-fun lt!162417 () Unit!10718)

(assert (=> b!343140 (= lt!162417 e!210412)))

(declare-fun c!52835 () Bool)

(assert (=> b!343140 (= c!52835 lt!162414)))

(declare-fun arrayContainsKey!0 (array!18125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!343140 (= lt!162414 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(assert (= (and start!34388 res!189749) b!343133))

(assert (= (and b!343133 res!189750) b!343128))

(assert (= (and b!343128 res!189744) b!343130))

(assert (= (and b!343130 res!189746) b!343132))

(assert (= (and b!343132 res!189748) b!343134))

(assert (= (and b!343134 res!189747) b!343131))

(assert (= (and b!343131 res!189745) b!343140))

(assert (= (and b!343140 c!52835) b!343137))

(assert (= (and b!343140 (not c!52835)) b!343139))

(assert (= (and b!343140 res!189752) b!343135))

(assert (= (and b!343135 res!189751) b!343129))

(assert (= (and b!343136 condMapEmpty!12357) mapIsEmpty!12357))

(assert (= (and b!343136 (not condMapEmpty!12357)) mapNonEmpty!12357))

(assert (= (and mapNonEmpty!12357 ((_ is ValueCellFull!3297) mapValue!12357)) b!343138))

(assert (= (and b!343136 ((_ is ValueCellFull!3297) mapDefault!12357)) b!343127))

(assert (= start!34388 b!343136))

(declare-fun m!345075 () Bool)

(assert (=> b!343131 m!345075))

(declare-fun m!345077 () Bool)

(assert (=> b!343129 m!345077))

(declare-fun m!345079 () Bool)

(assert (=> b!343140 m!345079))

(declare-fun m!345081 () Bool)

(assert (=> b!343137 m!345081))

(assert (=> b!343137 m!345081))

(declare-fun m!345083 () Bool)

(assert (=> b!343137 m!345083))

(declare-fun m!345085 () Bool)

(assert (=> b!343128 m!345085))

(declare-fun m!345087 () Bool)

(assert (=> b!343135 m!345087))

(declare-fun m!345089 () Bool)

(assert (=> b!343134 m!345089))

(assert (=> b!343134 m!345089))

(declare-fun m!345091 () Bool)

(assert (=> b!343134 m!345091))

(declare-fun m!345093 () Bool)

(assert (=> start!34388 m!345093))

(declare-fun m!345095 () Bool)

(assert (=> start!34388 m!345095))

(declare-fun m!345097 () Bool)

(assert (=> start!34388 m!345097))

(declare-fun m!345099 () Bool)

(assert (=> b!343132 m!345099))

(declare-fun m!345101 () Bool)

(assert (=> b!343130 m!345101))

(declare-fun m!345103 () Bool)

(assert (=> mapNonEmpty!12357 m!345103))

(check-sat (not b!343135) (not b!343131) (not b!343132) (not b!343134) (not b!343128) (not b_next!7329) b_and!14553 (not b!343137) tp_is_empty!7281 (not mapNonEmpty!12357) (not start!34388) (not b!343130) (not b!343140))
(check-sat b_and!14553 (not b_next!7329))
(get-model)

(declare-fun bm!26642 () Bool)

(declare-fun call!26645 () Bool)

(assert (=> bm!26642 (= call!26645 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!343192 () Bool)

(declare-fun e!210446 () Bool)

(declare-fun e!210445 () Bool)

(assert (=> b!343192 (= e!210446 e!210445)))

(declare-fun c!52841 () Bool)

(assert (=> b!343192 (= c!52841 (validKeyInArray!0 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!343193 () Bool)

(declare-fun e!210447 () Bool)

(assert (=> b!343193 (= e!210445 e!210447)))

(declare-fun lt!162436 () (_ BitVec 64))

(assert (=> b!343193 (= lt!162436 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162437 () Unit!10718)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18125 (_ BitVec 64) (_ BitVec 32)) Unit!10718)

(assert (=> b!343193 (= lt!162437 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!162436 #b00000000000000000000000000000000))))

(assert (=> b!343193 (arrayContainsKey!0 _keys!1895 lt!162436 #b00000000000000000000000000000000)))

(declare-fun lt!162438 () Unit!10718)

(assert (=> b!343193 (= lt!162438 lt!162437)))

(declare-fun res!189785 () Bool)

(assert (=> b!343193 (= res!189785 (= (seekEntryOrOpen!0 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3308 #b00000000000000000000000000000000)))))

(assert (=> b!343193 (=> (not res!189785) (not e!210447))))

(declare-fun b!343194 () Bool)

(assert (=> b!343194 (= e!210447 call!26645)))

(declare-fun b!343191 () Bool)

(assert (=> b!343191 (= e!210445 call!26645)))

(declare-fun d!70919 () Bool)

(declare-fun res!189784 () Bool)

(assert (=> d!70919 (=> res!189784 e!210446)))

(assert (=> d!70919 (= res!189784 (bvsge #b00000000000000000000000000000000 (size!8929 _keys!1895)))))

(assert (=> d!70919 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!210446)))

(assert (= (and d!70919 (not res!189784)) b!343192))

(assert (= (and b!343192 c!52841) b!343193))

(assert (= (and b!343192 (not c!52841)) b!343191))

(assert (= (and b!343193 res!189785) b!343194))

(assert (= (or b!343194 b!343191) bm!26642))

(declare-fun m!345135 () Bool)

(assert (=> bm!26642 m!345135))

(declare-fun m!345137 () Bool)

(assert (=> b!343192 m!345137))

(assert (=> b!343192 m!345137))

(declare-fun m!345139 () Bool)

(assert (=> b!343192 m!345139))

(assert (=> b!343193 m!345137))

(declare-fun m!345141 () Bool)

(assert (=> b!343193 m!345141))

(declare-fun m!345143 () Bool)

(assert (=> b!343193 m!345143))

(assert (=> b!343193 m!345137))

(declare-fun m!345145 () Bool)

(assert (=> b!343193 m!345145))

(assert (=> b!343128 d!70919))

(declare-fun d!70921 () Bool)

(declare-fun e!210453 () Bool)

(assert (=> d!70921 e!210453))

(declare-fun res!189788 () Bool)

(assert (=> d!70921 (=> res!189788 e!210453)))

(declare-fun lt!162448 () Bool)

(assert (=> d!70921 (= res!189788 (not lt!162448))))

(declare-fun lt!162449 () Bool)

(assert (=> d!70921 (= lt!162448 lt!162449)))

(declare-fun lt!162447 () Unit!10718)

(declare-fun e!210452 () Unit!10718)

(assert (=> d!70921 (= lt!162447 e!210452)))

(declare-fun c!52844 () Bool)

(assert (=> d!70921 (= c!52844 lt!162449)))

(declare-fun containsKey!328 (List!4972 (_ BitVec 64)) Bool)

(assert (=> d!70921 (= lt!162449 (containsKey!328 (toList!2143 (getCurrentListMap!1663 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70921 (= (contains!2196 (getCurrentListMap!1663 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!162448)))

(declare-fun b!343201 () Bool)

(declare-fun lt!162450 () Unit!10718)

(assert (=> b!343201 (= e!210452 lt!162450)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!277 (List!4972 (_ BitVec 64)) Unit!10718)

(assert (=> b!343201 (= lt!162450 (lemmaContainsKeyImpliesGetValueByKeyDefined!277 (toList!2143 (getCurrentListMap!1663 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!342 0))(
  ( (Some!341 (v!5858 V!10685)) (None!340) )
))
(declare-fun isDefined!278 (Option!342) Bool)

(declare-fun getValueByKey!336 (List!4972 (_ BitVec 64)) Option!342)

(assert (=> b!343201 (isDefined!278 (getValueByKey!336 (toList!2143 (getCurrentListMap!1663 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!343202 () Bool)

(declare-fun Unit!10722 () Unit!10718)

(assert (=> b!343202 (= e!210452 Unit!10722)))

(declare-fun b!343203 () Bool)

(assert (=> b!343203 (= e!210453 (isDefined!278 (getValueByKey!336 (toList!2143 (getCurrentListMap!1663 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70921 c!52844) b!343201))

(assert (= (and d!70921 (not c!52844)) b!343202))

(assert (= (and d!70921 (not res!189788)) b!343203))

(declare-fun m!345147 () Bool)

(assert (=> d!70921 m!345147))

(declare-fun m!345149 () Bool)

(assert (=> b!343201 m!345149))

(declare-fun m!345151 () Bool)

(assert (=> b!343201 m!345151))

(assert (=> b!343201 m!345151))

(declare-fun m!345153 () Bool)

(assert (=> b!343201 m!345153))

(assert (=> b!343203 m!345151))

(assert (=> b!343203 m!345151))

(assert (=> b!343203 m!345153))

(assert (=> b!343134 d!70921))

(declare-fun bm!26657 () Bool)

(declare-fun call!26663 () Bool)

(declare-fun lt!162507 () ListLongMap!4255)

(assert (=> bm!26657 (= call!26663 (contains!2196 lt!162507 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!343246 () Bool)

(declare-fun e!210484 () Bool)

(declare-fun e!210482 () Bool)

(assert (=> b!343246 (= e!210484 e!210482)))

(declare-fun c!52862 () Bool)

(assert (=> b!343246 (= c!52862 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!343247 () Bool)

(assert (=> b!343247 (= e!210482 (not call!26663))))

(declare-fun b!343248 () Bool)

(declare-fun e!210485 () Bool)

(assert (=> b!343248 (= e!210482 e!210485)))

(declare-fun res!189811 () Bool)

(assert (=> b!343248 (= res!189811 call!26663)))

(assert (=> b!343248 (=> (not res!189811) (not e!210485))))

(declare-fun b!343249 () Bool)

(declare-fun e!210488 () Bool)

(assert (=> b!343249 (= e!210488 (validKeyInArray!0 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26658 () Bool)

(declare-fun call!26664 () ListLongMap!4255)

(declare-fun call!26662 () ListLongMap!4255)

(assert (=> bm!26658 (= call!26664 call!26662)))

(declare-fun b!343250 () Bool)

(declare-fun c!52858 () Bool)

(assert (=> b!343250 (= c!52858 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!210491 () ListLongMap!4255)

(declare-fun e!210492 () ListLongMap!4255)

(assert (=> b!343250 (= e!210491 e!210492)))

(declare-fun b!343252 () Bool)

(declare-fun call!26666 () ListLongMap!4255)

(assert (=> b!343252 (= e!210492 call!26666)))

(declare-fun b!343253 () Bool)

(assert (=> b!343253 (= e!210491 call!26666)))

(declare-fun b!343254 () Bool)

(declare-fun e!210481 () ListLongMap!4255)

(assert (=> b!343254 (= e!210481 e!210491)))

(declare-fun c!52861 () Bool)

(assert (=> b!343254 (= c!52861 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26659 () Bool)

(declare-fun call!26665 () ListLongMap!4255)

(assert (=> bm!26659 (= call!26666 call!26665)))

(declare-fun b!343255 () Bool)

(declare-fun e!210490 () Bool)

(assert (=> b!343255 (= e!210490 (validKeyInArray!0 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26660 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!598 (array!18125 array!18127 (_ BitVec 32) (_ BitVec 32) V!10685 V!10685 (_ BitVec 32) Int) ListLongMap!4255)

(assert (=> bm!26660 (= call!26662 (getCurrentListMapNoExtraKeys!598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!343256 () Bool)

(declare-fun e!210487 () Unit!10718)

(declare-fun Unit!10723 () Unit!10718)

(assert (=> b!343256 (= e!210487 Unit!10723)))

(declare-fun b!343257 () Bool)

(declare-fun lt!162510 () Unit!10718)

(assert (=> b!343257 (= e!210487 lt!162510)))

(declare-fun lt!162503 () ListLongMap!4255)

(assert (=> b!343257 (= lt!162503 (getCurrentListMapNoExtraKeys!598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162502 () (_ BitVec 64))

(assert (=> b!343257 (= lt!162502 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162500 () (_ BitVec 64))

(assert (=> b!343257 (= lt!162500 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162515 () Unit!10718)

(declare-fun addStillContains!255 (ListLongMap!4255 (_ BitVec 64) V!10685 (_ BitVec 64)) Unit!10718)

(assert (=> b!343257 (= lt!162515 (addStillContains!255 lt!162503 lt!162502 zeroValue!1467 lt!162500))))

(declare-fun +!723 (ListLongMap!4255 tuple2!5328) ListLongMap!4255)

(assert (=> b!343257 (contains!2196 (+!723 lt!162503 (tuple2!5329 lt!162502 zeroValue!1467)) lt!162500)))

(declare-fun lt!162514 () Unit!10718)

(assert (=> b!343257 (= lt!162514 lt!162515)))

(declare-fun lt!162506 () ListLongMap!4255)

(assert (=> b!343257 (= lt!162506 (getCurrentListMapNoExtraKeys!598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162513 () (_ BitVec 64))

(assert (=> b!343257 (= lt!162513 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162498 () (_ BitVec 64))

(assert (=> b!343257 (= lt!162498 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162505 () Unit!10718)

(declare-fun addApplyDifferent!255 (ListLongMap!4255 (_ BitVec 64) V!10685 (_ BitVec 64)) Unit!10718)

(assert (=> b!343257 (= lt!162505 (addApplyDifferent!255 lt!162506 lt!162513 minValue!1467 lt!162498))))

(declare-fun apply!279 (ListLongMap!4255 (_ BitVec 64)) V!10685)

(assert (=> b!343257 (= (apply!279 (+!723 lt!162506 (tuple2!5329 lt!162513 minValue!1467)) lt!162498) (apply!279 lt!162506 lt!162498))))

(declare-fun lt!162504 () Unit!10718)

(assert (=> b!343257 (= lt!162504 lt!162505)))

(declare-fun lt!162499 () ListLongMap!4255)

(assert (=> b!343257 (= lt!162499 (getCurrentListMapNoExtraKeys!598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162512 () (_ BitVec 64))

(assert (=> b!343257 (= lt!162512 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162501 () (_ BitVec 64))

(assert (=> b!343257 (= lt!162501 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162511 () Unit!10718)

(assert (=> b!343257 (= lt!162511 (addApplyDifferent!255 lt!162499 lt!162512 zeroValue!1467 lt!162501))))

(assert (=> b!343257 (= (apply!279 (+!723 lt!162499 (tuple2!5329 lt!162512 zeroValue!1467)) lt!162501) (apply!279 lt!162499 lt!162501))))

(declare-fun lt!162495 () Unit!10718)

(assert (=> b!343257 (= lt!162495 lt!162511)))

(declare-fun lt!162508 () ListLongMap!4255)

(assert (=> b!343257 (= lt!162508 (getCurrentListMapNoExtraKeys!598 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162509 () (_ BitVec 64))

(assert (=> b!343257 (= lt!162509 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162496 () (_ BitVec 64))

(assert (=> b!343257 (= lt!162496 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!343257 (= lt!162510 (addApplyDifferent!255 lt!162508 lt!162509 minValue!1467 lt!162496))))

(assert (=> b!343257 (= (apply!279 (+!723 lt!162508 (tuple2!5329 lt!162509 minValue!1467)) lt!162496) (apply!279 lt!162508 lt!162496))))

(declare-fun b!343258 () Bool)

(assert (=> b!343258 (= e!210485 (= (apply!279 lt!162507 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!343259 () Bool)

(declare-fun e!210486 () Bool)

(assert (=> b!343259 (= e!210486 (= (apply!279 lt!162507 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun bm!26661 () Bool)

(declare-fun call!26661 () ListLongMap!4255)

(assert (=> bm!26661 (= call!26661 call!26664)))

(declare-fun b!343260 () Bool)

(declare-fun res!189812 () Bool)

(assert (=> b!343260 (=> (not res!189812) (not e!210484))))

(declare-fun e!210489 () Bool)

(assert (=> b!343260 (= res!189812 e!210489)))

(declare-fun res!189815 () Bool)

(assert (=> b!343260 (=> res!189815 e!210489)))

(assert (=> b!343260 (= res!189815 (not e!210488))))

(declare-fun res!189814 () Bool)

(assert (=> b!343260 (=> (not res!189814) (not e!210488))))

(assert (=> b!343260 (= res!189814 (bvslt #b00000000000000000000000000000000 (size!8929 _keys!1895)))))

(declare-fun b!343261 () Bool)

(declare-fun e!210483 () Bool)

(assert (=> b!343261 (= e!210483 e!210486)))

(declare-fun res!189807 () Bool)

(declare-fun call!26660 () Bool)

(assert (=> b!343261 (= res!189807 call!26660)))

(assert (=> b!343261 (=> (not res!189807) (not e!210486))))

(declare-fun b!343262 () Bool)

(assert (=> b!343262 (= e!210492 call!26661)))

(declare-fun b!343263 () Bool)

(declare-fun res!189808 () Bool)

(assert (=> b!343263 (=> (not res!189808) (not e!210484))))

(assert (=> b!343263 (= res!189808 e!210483)))

(declare-fun c!52859 () Bool)

(assert (=> b!343263 (= c!52859 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!343264 () Bool)

(declare-fun e!210480 () Bool)

(declare-fun get!4652 (ValueCell!3297 V!10685) V!10685)

(declare-fun dynLambda!617 (Int (_ BitVec 64)) V!10685)

(assert (=> b!343264 (= e!210480 (= (apply!279 lt!162507 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000)) (get!4652 (select (arr!8578 _values!1525) #b00000000000000000000000000000000) (dynLambda!617 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!343264 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8930 _values!1525)))))

(assert (=> b!343264 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8929 _keys!1895)))))

(declare-fun b!343265 () Bool)

(assert (=> b!343265 (= e!210481 (+!723 call!26665 (tuple2!5329 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun bm!26662 () Bool)

(assert (=> bm!26662 (= call!26660 (contains!2196 lt!162507 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!343251 () Bool)

(assert (=> b!343251 (= e!210483 (not call!26660))))

(declare-fun d!70923 () Bool)

(assert (=> d!70923 e!210484))

(declare-fun res!189810 () Bool)

(assert (=> d!70923 (=> (not res!189810) (not e!210484))))

(assert (=> d!70923 (= res!189810 (or (bvsge #b00000000000000000000000000000000 (size!8929 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8929 _keys!1895)))))))

(declare-fun lt!162497 () ListLongMap!4255)

(assert (=> d!70923 (= lt!162507 lt!162497)))

(declare-fun lt!162516 () Unit!10718)

(assert (=> d!70923 (= lt!162516 e!210487)))

(declare-fun c!52857 () Bool)

(assert (=> d!70923 (= c!52857 e!210490)))

(declare-fun res!189809 () Bool)

(assert (=> d!70923 (=> (not res!189809) (not e!210490))))

(assert (=> d!70923 (= res!189809 (bvslt #b00000000000000000000000000000000 (size!8929 _keys!1895)))))

(assert (=> d!70923 (= lt!162497 e!210481)))

(declare-fun c!52860 () Bool)

(assert (=> d!70923 (= c!52860 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70923 (validMask!0 mask!2385)))

(assert (=> d!70923 (= (getCurrentListMap!1663 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!162507)))

(declare-fun b!343266 () Bool)

(assert (=> b!343266 (= e!210489 e!210480)))

(declare-fun res!189813 () Bool)

(assert (=> b!343266 (=> (not res!189813) (not e!210480))))

(assert (=> b!343266 (= res!189813 (contains!2196 lt!162507 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!343266 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8929 _keys!1895)))))

(declare-fun bm!26663 () Bool)

(assert (=> bm!26663 (= call!26665 (+!723 (ite c!52860 call!26662 (ite c!52861 call!26664 call!26661)) (ite (or c!52860 c!52861) (tuple2!5329 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5329 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(assert (= (and d!70923 c!52860) b!343265))

(assert (= (and d!70923 (not c!52860)) b!343254))

(assert (= (and b!343254 c!52861) b!343253))

(assert (= (and b!343254 (not c!52861)) b!343250))

(assert (= (and b!343250 c!52858) b!343252))

(assert (= (and b!343250 (not c!52858)) b!343262))

(assert (= (or b!343252 b!343262) bm!26661))

(assert (= (or b!343253 bm!26661) bm!26658))

(assert (= (or b!343253 b!343252) bm!26659))

(assert (= (or b!343265 bm!26658) bm!26660))

(assert (= (or b!343265 bm!26659) bm!26663))

(assert (= (and d!70923 res!189809) b!343255))

(assert (= (and d!70923 c!52857) b!343257))

(assert (= (and d!70923 (not c!52857)) b!343256))

(assert (= (and d!70923 res!189810) b!343260))

(assert (= (and b!343260 res!189814) b!343249))

(assert (= (and b!343260 (not res!189815)) b!343266))

(assert (= (and b!343266 res!189813) b!343264))

(assert (= (and b!343260 res!189812) b!343263))

(assert (= (and b!343263 c!52859) b!343261))

(assert (= (and b!343263 (not c!52859)) b!343251))

(assert (= (and b!343261 res!189807) b!343259))

(assert (= (or b!343261 b!343251) bm!26662))

(assert (= (and b!343263 res!189808) b!343246))

(assert (= (and b!343246 c!52862) b!343248))

(assert (= (and b!343246 (not c!52862)) b!343247))

(assert (= (and b!343248 res!189811) b!343258))

(assert (= (or b!343248 b!343247) bm!26657))

(declare-fun b_lambda!8485 () Bool)

(assert (=> (not b_lambda!8485) (not b!343264)))

(declare-fun t!10097 () Bool)

(declare-fun tb!3081 () Bool)

(assert (=> (and start!34388 (= defaultEntry!1528 defaultEntry!1528) t!10097) tb!3081))

(declare-fun result!5557 () Bool)

(assert (=> tb!3081 (= result!5557 tp_is_empty!7281)))

(assert (=> b!343264 t!10097))

(declare-fun b_and!14557 () Bool)

(assert (= b_and!14553 (and (=> t!10097 result!5557) b_and!14557)))

(assert (=> b!343255 m!345137))

(assert (=> b!343255 m!345137))

(assert (=> b!343255 m!345139))

(declare-fun m!345155 () Bool)

(assert (=> bm!26660 m!345155))

(declare-fun m!345157 () Bool)

(assert (=> bm!26657 m!345157))

(declare-fun m!345159 () Bool)

(assert (=> bm!26663 m!345159))

(assert (=> b!343257 m!345155))

(declare-fun m!345161 () Bool)

(assert (=> b!343257 m!345161))

(declare-fun m!345163 () Bool)

(assert (=> b!343257 m!345163))

(declare-fun m!345165 () Bool)

(assert (=> b!343257 m!345165))

(declare-fun m!345167 () Bool)

(assert (=> b!343257 m!345167))

(declare-fun m!345169 () Bool)

(assert (=> b!343257 m!345169))

(declare-fun m!345171 () Bool)

(assert (=> b!343257 m!345171))

(assert (=> b!343257 m!345163))

(declare-fun m!345173 () Bool)

(assert (=> b!343257 m!345173))

(assert (=> b!343257 m!345173))

(declare-fun m!345175 () Bool)

(assert (=> b!343257 m!345175))

(declare-fun m!345177 () Bool)

(assert (=> b!343257 m!345177))

(declare-fun m!345179 () Bool)

(assert (=> b!343257 m!345179))

(assert (=> b!343257 m!345177))

(declare-fun m!345181 () Bool)

(assert (=> b!343257 m!345181))

(declare-fun m!345183 () Bool)

(assert (=> b!343257 m!345183))

(declare-fun m!345185 () Bool)

(assert (=> b!343257 m!345185))

(assert (=> b!343257 m!345179))

(declare-fun m!345187 () Bool)

(assert (=> b!343257 m!345187))

(assert (=> b!343257 m!345137))

(declare-fun m!345189 () Bool)

(assert (=> b!343257 m!345189))

(declare-fun m!345191 () Bool)

(assert (=> b!343264 m!345191))

(assert (=> b!343264 m!345137))

(declare-fun m!345193 () Bool)

(assert (=> b!343264 m!345193))

(declare-fun m!345195 () Bool)

(assert (=> b!343264 m!345195))

(assert (=> b!343264 m!345191))

(declare-fun m!345197 () Bool)

(assert (=> b!343264 m!345197))

(assert (=> b!343264 m!345137))

(assert (=> b!343264 m!345195))

(assert (=> b!343266 m!345137))

(assert (=> b!343266 m!345137))

(declare-fun m!345199 () Bool)

(assert (=> b!343266 m!345199))

(assert (=> d!70923 m!345093))

(declare-fun m!345201 () Bool)

(assert (=> bm!26662 m!345201))

(declare-fun m!345203 () Bool)

(assert (=> b!343265 m!345203))

(declare-fun m!345205 () Bool)

(assert (=> b!343259 m!345205))

(assert (=> b!343249 m!345137))

(assert (=> b!343249 m!345137))

(assert (=> b!343249 m!345139))

(declare-fun m!345207 () Bool)

(assert (=> b!343258 m!345207))

(assert (=> b!343134 d!70923))

(declare-fun d!70925 () Bool)

(assert (=> d!70925 (= (inRange!0 (index!15414 lt!162415) mask!2385) (and (bvsge (index!15414 lt!162415) #b00000000000000000000000000000000) (bvslt (index!15414 lt!162415) (bvadd mask!2385 #b00000000000000000000000000000001))))))

(assert (=> b!343135 d!70925))

(declare-fun b!343280 () Bool)

(declare-fun e!210501 () Bool)

(declare-fun e!210503 () Bool)

(assert (=> b!343280 (= e!210501 e!210503)))

(declare-fun res!189822 () Bool)

(assert (=> b!343280 (=> (not res!189822) (not e!210503))))

(declare-fun e!210502 () Bool)

(assert (=> b!343280 (= res!189822 (not e!210502))))

(declare-fun res!189823 () Bool)

(assert (=> b!343280 (=> (not res!189823) (not e!210502))))

(assert (=> b!343280 (= res!189823 (validKeyInArray!0 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!343281 () Bool)

(declare-fun e!210504 () Bool)

(declare-fun call!26669 () Bool)

(assert (=> b!343281 (= e!210504 call!26669)))

(declare-fun b!343282 () Bool)

(assert (=> b!343282 (= e!210503 e!210504)))

(declare-fun c!52865 () Bool)

(assert (=> b!343282 (= c!52865 (validKeyInArray!0 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26666 () Bool)

(assert (=> bm!26666 (= call!26669 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52865 (Cons!4967 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000) Nil!4968) Nil!4968)))))

(declare-fun b!343283 () Bool)

(declare-fun contains!2197 (List!4971 (_ BitVec 64)) Bool)

(assert (=> b!343283 (= e!210502 (contains!2197 Nil!4968 (select (arr!8577 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!70927 () Bool)

(declare-fun res!189824 () Bool)

(assert (=> d!70927 (=> res!189824 e!210501)))

(assert (=> d!70927 (= res!189824 (bvsge #b00000000000000000000000000000000 (size!8929 _keys!1895)))))

(assert (=> d!70927 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4968) e!210501)))

(declare-fun b!343279 () Bool)

(assert (=> b!343279 (= e!210504 call!26669)))

(assert (= (and d!70927 (not res!189824)) b!343280))

(assert (= (and b!343280 res!189823) b!343283))

(assert (= (and b!343280 res!189822) b!343282))

(assert (= (and b!343282 c!52865) b!343281))

(assert (= (and b!343282 (not c!52865)) b!343279))

(assert (= (or b!343281 b!343279) bm!26666))

(assert (=> b!343280 m!345137))

(assert (=> b!343280 m!345137))

(assert (=> b!343280 m!345139))

(assert (=> b!343282 m!345137))

(assert (=> b!343282 m!345137))

(assert (=> b!343282 m!345139))

(assert (=> bm!26666 m!345137))

(declare-fun m!345209 () Bool)

(assert (=> bm!26666 m!345209))

(assert (=> b!343283 m!345137))

(assert (=> b!343283 m!345137))

(declare-fun m!345211 () Bool)

(assert (=> b!343283 m!345211))

(assert (=> b!343130 d!70927))

(declare-fun d!70929 () Bool)

(assert (=> d!70929 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34388 d!70929))

(declare-fun d!70931 () Bool)

(assert (=> d!70931 (= (array_inv!6342 _values!1525) (bvsge (size!8930 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34388 d!70931))

(declare-fun d!70933 () Bool)

(assert (=> d!70933 (= (array_inv!6343 _keys!1895) (bvsge (size!8929 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34388 d!70933))

(declare-fun b!343296 () Bool)

(declare-fun e!210512 () SeekEntryResult!3308)

(declare-fun lt!162523 () SeekEntryResult!3308)

(assert (=> b!343296 (= e!210512 (MissingZero!3308 (index!15413 lt!162523)))))

(declare-fun b!343297 () Bool)

(declare-fun e!210511 () SeekEntryResult!3308)

(assert (=> b!343297 (= e!210511 Undefined!3308)))

(declare-fun d!70935 () Bool)

(declare-fun lt!162525 () SeekEntryResult!3308)

(assert (=> d!70935 (and (or ((_ is Undefined!3308) lt!162525) (not ((_ is Found!3308) lt!162525)) (and (bvsge (index!15412 lt!162525) #b00000000000000000000000000000000) (bvslt (index!15412 lt!162525) (size!8929 _keys!1895)))) (or ((_ is Undefined!3308) lt!162525) ((_ is Found!3308) lt!162525) (not ((_ is MissingZero!3308) lt!162525)) (and (bvsge (index!15411 lt!162525) #b00000000000000000000000000000000) (bvslt (index!15411 lt!162525) (size!8929 _keys!1895)))) (or ((_ is Undefined!3308) lt!162525) ((_ is Found!3308) lt!162525) ((_ is MissingZero!3308) lt!162525) (not ((_ is MissingVacant!3308) lt!162525)) (and (bvsge (index!15414 lt!162525) #b00000000000000000000000000000000) (bvslt (index!15414 lt!162525) (size!8929 _keys!1895)))) (or ((_ is Undefined!3308) lt!162525) (ite ((_ is Found!3308) lt!162525) (= (select (arr!8577 _keys!1895) (index!15412 lt!162525)) k0!1348) (ite ((_ is MissingZero!3308) lt!162525) (= (select (arr!8577 _keys!1895) (index!15411 lt!162525)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3308) lt!162525) (= (select (arr!8577 _keys!1895) (index!15414 lt!162525)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70935 (= lt!162525 e!210511)))

(declare-fun c!52872 () Bool)

(assert (=> d!70935 (= c!52872 (and ((_ is Intermediate!3308) lt!162523) (undefined!4120 lt!162523)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18125 (_ BitVec 32)) SeekEntryResult!3308)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70935 (= lt!162523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70935 (validMask!0 mask!2385)))

(assert (=> d!70935 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!162525)))

(declare-fun b!343298 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18125 (_ BitVec 32)) SeekEntryResult!3308)

(assert (=> b!343298 (= e!210512 (seekKeyOrZeroReturnVacant!0 (x!34159 lt!162523) (index!15413 lt!162523) (index!15413 lt!162523) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!343299 () Bool)

(declare-fun c!52874 () Bool)

(declare-fun lt!162524 () (_ BitVec 64))

(assert (=> b!343299 (= c!52874 (= lt!162524 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!210513 () SeekEntryResult!3308)

(assert (=> b!343299 (= e!210513 e!210512)))

(declare-fun b!343300 () Bool)

(assert (=> b!343300 (= e!210513 (Found!3308 (index!15413 lt!162523)))))

(declare-fun b!343301 () Bool)

(assert (=> b!343301 (= e!210511 e!210513)))

(assert (=> b!343301 (= lt!162524 (select (arr!8577 _keys!1895) (index!15413 lt!162523)))))

(declare-fun c!52873 () Bool)

(assert (=> b!343301 (= c!52873 (= lt!162524 k0!1348))))

(assert (= (and d!70935 c!52872) b!343297))

(assert (= (and d!70935 (not c!52872)) b!343301))

(assert (= (and b!343301 c!52873) b!343300))

(assert (= (and b!343301 (not c!52873)) b!343299))

(assert (= (and b!343299 c!52874) b!343296))

(assert (= (and b!343299 (not c!52874)) b!343298))

(assert (=> d!70935 m!345093))

(declare-fun m!345213 () Bool)

(assert (=> d!70935 m!345213))

(declare-fun m!345215 () Bool)

(assert (=> d!70935 m!345215))

(declare-fun m!345217 () Bool)

(assert (=> d!70935 m!345217))

(assert (=> d!70935 m!345215))

(declare-fun m!345219 () Bool)

(assert (=> d!70935 m!345219))

(declare-fun m!345221 () Bool)

(assert (=> d!70935 m!345221))

(declare-fun m!345223 () Bool)

(assert (=> b!343298 m!345223))

(declare-fun m!345225 () Bool)

(assert (=> b!343301 m!345225))

(assert (=> b!343131 d!70935))

(declare-fun d!70937 () Bool)

(declare-fun res!189829 () Bool)

(declare-fun e!210518 () Bool)

(assert (=> d!70937 (=> res!189829 e!210518)))

(assert (=> d!70937 (= res!189829 (= (select (arr!8577 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70937 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!210518)))

(declare-fun b!343306 () Bool)

(declare-fun e!210519 () Bool)

(assert (=> b!343306 (= e!210518 e!210519)))

(declare-fun res!189830 () Bool)

(assert (=> b!343306 (=> (not res!189830) (not e!210519))))

(assert (=> b!343306 (= res!189830 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8929 _keys!1895)))))

(declare-fun b!343307 () Bool)

(assert (=> b!343307 (= e!210519 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70937 (not res!189829)) b!343306))

(assert (= (and b!343306 res!189830) b!343307))

(assert (=> d!70937 m!345137))

(declare-fun m!345227 () Bool)

(assert (=> b!343307 m!345227))

(assert (=> b!343140 d!70937))

(declare-fun d!70939 () Bool)

(assert (=> d!70939 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!343132 d!70939))

(declare-fun d!70941 () Bool)

(assert (=> d!70941 (contains!2196 (getCurrentListMap!1663 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!162528 () Unit!10718)

(declare-fun choose!1313 (array!18125 array!18127 (_ BitVec 32) (_ BitVec 32) V!10685 V!10685 (_ BitVec 64) (_ BitVec 32) Int) Unit!10718)

(assert (=> d!70941 (= lt!162528 (choose!1313 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!70941 (validMask!0 mask!2385)))

(assert (=> d!70941 (= (lemmaArrayContainsKeyThenInListMap!315 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!162528)))

(declare-fun bs!11762 () Bool)

(assert (= bs!11762 d!70941))

(assert (=> bs!11762 m!345089))

(assert (=> bs!11762 m!345089))

(assert (=> bs!11762 m!345091))

(assert (=> bs!11762 m!345081))

(declare-fun m!345229 () Bool)

(assert (=> bs!11762 m!345229))

(assert (=> bs!11762 m!345093))

(assert (=> b!343137 d!70941))

(declare-fun d!70943 () Bool)

(declare-fun lt!162531 () (_ BitVec 32))

(assert (=> d!70943 (and (or (bvslt lt!162531 #b00000000000000000000000000000000) (bvsge lt!162531 (size!8929 _keys!1895)) (and (bvsge lt!162531 #b00000000000000000000000000000000) (bvslt lt!162531 (size!8929 _keys!1895)))) (bvsge lt!162531 #b00000000000000000000000000000000) (bvslt lt!162531 (size!8929 _keys!1895)) (= (select (arr!8577 _keys!1895) lt!162531) k0!1348))))

(declare-fun e!210522 () (_ BitVec 32))

(assert (=> d!70943 (= lt!162531 e!210522)))

(declare-fun c!52877 () Bool)

(assert (=> d!70943 (= c!52877 (= (select (arr!8577 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70943 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8929 _keys!1895)) (bvslt (size!8929 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!70943 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!162531)))

(declare-fun b!343312 () Bool)

(assert (=> b!343312 (= e!210522 #b00000000000000000000000000000000)))

(declare-fun b!343313 () Bool)

(assert (=> b!343313 (= e!210522 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70943 c!52877) b!343312))

(assert (= (and d!70943 (not c!52877)) b!343313))

(declare-fun m!345231 () Bool)

(assert (=> d!70943 m!345231))

(assert (=> d!70943 m!345137))

(declare-fun m!345233 () Bool)

(assert (=> b!343313 m!345233))

(assert (=> b!343137 d!70943))

(declare-fun mapIsEmpty!12363 () Bool)

(declare-fun mapRes!12363 () Bool)

(assert (=> mapIsEmpty!12363 mapRes!12363))

(declare-fun b!343321 () Bool)

(declare-fun e!210528 () Bool)

(assert (=> b!343321 (= e!210528 tp_is_empty!7281)))

(declare-fun b!343320 () Bool)

(declare-fun e!210527 () Bool)

(assert (=> b!343320 (= e!210527 tp_is_empty!7281)))

(declare-fun condMapEmpty!12363 () Bool)

(declare-fun mapDefault!12363 () ValueCell!3297)

(assert (=> mapNonEmpty!12357 (= condMapEmpty!12363 (= mapRest!12357 ((as const (Array (_ BitVec 32) ValueCell!3297)) mapDefault!12363)))))

(assert (=> mapNonEmpty!12357 (= tp!25529 (and e!210528 mapRes!12363))))

(declare-fun mapNonEmpty!12363 () Bool)

(declare-fun tp!25539 () Bool)

(assert (=> mapNonEmpty!12363 (= mapRes!12363 (and tp!25539 e!210527))))

(declare-fun mapValue!12363 () ValueCell!3297)

(declare-fun mapKey!12363 () (_ BitVec 32))

(declare-fun mapRest!12363 () (Array (_ BitVec 32) ValueCell!3297))

(assert (=> mapNonEmpty!12363 (= mapRest!12357 (store mapRest!12363 mapKey!12363 mapValue!12363))))

(assert (= (and mapNonEmpty!12357 condMapEmpty!12363) mapIsEmpty!12363))

(assert (= (and mapNonEmpty!12357 (not condMapEmpty!12363)) mapNonEmpty!12363))

(assert (= (and mapNonEmpty!12363 ((_ is ValueCellFull!3297) mapValue!12363)) b!343320))

(assert (= (and mapNonEmpty!12357 ((_ is ValueCellFull!3297) mapDefault!12363)) b!343321))

(declare-fun m!345235 () Bool)

(assert (=> mapNonEmpty!12363 m!345235))

(declare-fun b_lambda!8487 () Bool)

(assert (= b_lambda!8485 (or (and start!34388 b_free!7329) b_lambda!8487)))

(check-sat (not b!343203) (not bm!26657) (not b!343280) (not b!343307) (not b!343265) (not b!343313) (not b!343192) (not d!70941) tp_is_empty!7281 (not b!343257) b_and!14557 (not b!343201) (not b!343255) (not d!70935) (not mapNonEmpty!12363) (not bm!26663) (not b!343258) (not b_lambda!8487) (not b!343282) (not b_next!7329) (not b!343259) (not d!70923) (not bm!26666) (not b!343249) (not b!343266) (not bm!26642) (not b!343283) (not b!343193) (not b!343264) (not d!70921) (not bm!26660) (not b!343298) (not bm!26662))
(check-sat b_and!14557 (not b_next!7329))

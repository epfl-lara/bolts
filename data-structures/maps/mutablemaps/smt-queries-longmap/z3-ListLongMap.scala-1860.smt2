; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33568 () Bool)

(assert start!33568)

(declare-fun b_free!6831 () Bool)

(declare-fun b_next!6831 () Bool)

(assert (=> start!33568 (= b_free!6831 (not b_next!6831))))

(declare-fun tp!23991 () Bool)

(declare-fun b_and!14025 () Bool)

(assert (=> start!33568 (= tp!23991 b_and!14025)))

(declare-fun b!332857 () Bool)

(declare-fun res!183450 () Bool)

(declare-fun e!204406 () Bool)

(assert (=> b!332857 (=> (not res!183450) (not e!204406))))

(declare-datatypes ((array!17159 0))(
  ( (array!17160 (arr!8109 (Array (_ BitVec 32) (_ BitVec 64))) (size!8461 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17159)

(declare-datatypes ((List!4639 0))(
  ( (Nil!4636) (Cons!4635 (h!5491 (_ BitVec 64)) (t!9731 List!4639)) )
))
(declare-fun arrayNoDuplicates!0 (array!17159 (_ BitVec 32) List!4639) Bool)

(assert (=> b!332857 (= res!183450 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4636))))

(declare-fun b!332858 () Bool)

(declare-fun res!183451 () Bool)

(assert (=> b!332858 (=> (not res!183451) (not e!204406))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332858 (= res!183451 (validKeyInArray!0 k0!1348))))

(declare-fun b!332859 () Bool)

(declare-fun res!183452 () Bool)

(assert (=> b!332859 (=> (not res!183452) (not e!204406))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10021 0))(
  ( (V!10022 (val!3436 Int)) )
))
(declare-datatypes ((ValueCell!3048 0))(
  ( (ValueCellFull!3048 (v!5592 V!10021)) (EmptyCell!3048) )
))
(declare-datatypes ((array!17161 0))(
  ( (array!17162 (arr!8110 (Array (_ BitVec 32) ValueCell!3048)) (size!8462 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17161)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332859 (= res!183452 (and (= (size!8462 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8461 _keys!1895) (size!8462 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11565 () Bool)

(declare-fun mapRes!11565 () Bool)

(declare-fun tp!23990 () Bool)

(declare-fun e!204405 () Bool)

(assert (=> mapNonEmpty!11565 (= mapRes!11565 (and tp!23990 e!204405))))

(declare-fun mapValue!11565 () ValueCell!3048)

(declare-fun mapRest!11565 () (Array (_ BitVec 32) ValueCell!3048))

(declare-fun mapKey!11565 () (_ BitVec 32))

(assert (=> mapNonEmpty!11565 (= (arr!8110 _values!1525) (store mapRest!11565 mapKey!11565 mapValue!11565))))

(declare-fun b!332860 () Bool)

(declare-fun e!204408 () Bool)

(declare-fun tp_is_empty!6783 () Bool)

(assert (=> b!332860 (= e!204408 tp_is_empty!6783)))

(declare-fun b!332861 () Bool)

(assert (=> b!332861 (= e!204405 tp_is_empty!6783)))

(declare-fun b!332862 () Bool)

(declare-fun e!204404 () Bool)

(assert (=> b!332862 (= e!204404 (and e!204408 mapRes!11565))))

(declare-fun condMapEmpty!11565 () Bool)

(declare-fun mapDefault!11565 () ValueCell!3048)

(assert (=> b!332862 (= condMapEmpty!11565 (= (arr!8110 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3048)) mapDefault!11565)))))

(declare-fun mapIsEmpty!11565 () Bool)

(assert (=> mapIsEmpty!11565 mapRes!11565))

(declare-fun b!332863 () Bool)

(declare-fun res!183448 () Bool)

(assert (=> b!332863 (=> (not res!183448) (not e!204406))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17159 (_ BitVec 32)) Bool)

(assert (=> b!332863 (= res!183448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!183447 () Bool)

(assert (=> start!33568 (=> (not res!183447) (not e!204406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33568 (= res!183447 (validMask!0 mask!2385))))

(assert (=> start!33568 e!204406))

(assert (=> start!33568 true))

(assert (=> start!33568 tp_is_empty!6783))

(assert (=> start!33568 tp!23991))

(declare-fun array_inv!6030 (array!17161) Bool)

(assert (=> start!33568 (and (array_inv!6030 _values!1525) e!204404)))

(declare-fun array_inv!6031 (array!17159) Bool)

(assert (=> start!33568 (array_inv!6031 _keys!1895)))

(declare-fun b!332864 () Bool)

(declare-fun res!183449 () Bool)

(assert (=> b!332864 (=> (not res!183449) (not e!204406))))

(declare-fun zeroValue!1467 () V!10021)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10021)

(declare-datatypes ((tuple2!5000 0))(
  ( (tuple2!5001 (_1!2510 (_ BitVec 64)) (_2!2510 V!10021)) )
))
(declare-datatypes ((List!4640 0))(
  ( (Nil!4637) (Cons!4636 (h!5492 tuple2!5000) (t!9732 List!4640)) )
))
(declare-datatypes ((ListLongMap!3927 0))(
  ( (ListLongMap!3928 (toList!1979 List!4640)) )
))
(declare-fun contains!2017 (ListLongMap!3927 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1502 (array!17159 array!17161 (_ BitVec 32) (_ BitVec 32) V!10021 V!10021 (_ BitVec 32) Int) ListLongMap!3927)

(assert (=> b!332864 (= res!183449 (not (contains!2017 (getCurrentListMap!1502 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!332865 () Bool)

(declare-datatypes ((SeekEntryResult!3147 0))(
  ( (MissingZero!3147 (index!14767 (_ BitVec 32))) (Found!3147 (index!14768 (_ BitVec 32))) (Intermediate!3147 (undefined!3959 Bool) (index!14769 (_ BitVec 32)) (x!33184 (_ BitVec 32))) (Undefined!3147) (MissingVacant!3147 (index!14770 (_ BitVec 32))) )
))
(declare-fun lt!159117 () SeekEntryResult!3147)

(get-info :version)

(assert (=> b!332865 (= e!204406 (and ((_ is Found!3147) lt!159117) (= (select (arr!8109 _keys!1895) (index!14768 lt!159117)) k0!1348) (bvsge (index!14768 lt!159117) #b00000000000000000000000000000000) (bvsge (index!14768 lt!159117) (size!8461 _keys!1895))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17159 (_ BitVec 32)) SeekEntryResult!3147)

(assert (=> b!332865 (= lt!159117 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(assert (= (and start!33568 res!183447) b!332859))

(assert (= (and b!332859 res!183452) b!332863))

(assert (= (and b!332863 res!183448) b!332857))

(assert (= (and b!332857 res!183450) b!332858))

(assert (= (and b!332858 res!183451) b!332864))

(assert (= (and b!332864 res!183449) b!332865))

(assert (= (and b!332862 condMapEmpty!11565) mapIsEmpty!11565))

(assert (= (and b!332862 (not condMapEmpty!11565)) mapNonEmpty!11565))

(assert (= (and mapNonEmpty!11565 ((_ is ValueCellFull!3048) mapValue!11565)) b!332861))

(assert (= (and b!332862 ((_ is ValueCellFull!3048) mapDefault!11565)) b!332860))

(assert (= start!33568 b!332862))

(declare-fun m!337243 () Bool)

(assert (=> b!332863 m!337243))

(declare-fun m!337245 () Bool)

(assert (=> mapNonEmpty!11565 m!337245))

(declare-fun m!337247 () Bool)

(assert (=> b!332858 m!337247))

(declare-fun m!337249 () Bool)

(assert (=> b!332857 m!337249))

(declare-fun m!337251 () Bool)

(assert (=> b!332864 m!337251))

(assert (=> b!332864 m!337251))

(declare-fun m!337253 () Bool)

(assert (=> b!332864 m!337253))

(declare-fun m!337255 () Bool)

(assert (=> start!33568 m!337255))

(declare-fun m!337257 () Bool)

(assert (=> start!33568 m!337257))

(declare-fun m!337259 () Bool)

(assert (=> start!33568 m!337259))

(declare-fun m!337261 () Bool)

(assert (=> b!332865 m!337261))

(declare-fun m!337263 () Bool)

(assert (=> b!332865 m!337263))

(check-sat (not b!332865) (not b!332857) (not b!332863) (not start!33568) (not b!332858) b_and!14025 tp_is_empty!6783 (not mapNonEmpty!11565) (not b!332864) (not b_next!6831))
(check-sat b_and!14025 (not b_next!6831))
(get-model)

(declare-fun d!70431 () Bool)

(assert (=> d!70431 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33568 d!70431))

(declare-fun d!70433 () Bool)

(assert (=> d!70433 (= (array_inv!6030 _values!1525) (bvsge (size!8462 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33568 d!70433))

(declare-fun d!70435 () Bool)

(assert (=> d!70435 (= (array_inv!6031 _keys!1895) (bvsge (size!8461 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33568 d!70435))

(declare-fun d!70437 () Bool)

(assert (=> d!70437 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!332858 d!70437))

(declare-fun bm!26237 () Bool)

(declare-fun call!26240 () Bool)

(assert (=> bm!26237 (= call!26240 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!332901 () Bool)

(declare-fun e!204430 () Bool)

(declare-fun e!204431 () Bool)

(assert (=> b!332901 (= e!204430 e!204431)))

(declare-fun lt!159128 () (_ BitVec 64))

(assert (=> b!332901 (= lt!159128 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10366 0))(
  ( (Unit!10367) )
))
(declare-fun lt!159127 () Unit!10366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17159 (_ BitVec 64) (_ BitVec 32)) Unit!10366)

(assert (=> b!332901 (= lt!159127 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!159128 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!17159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!332901 (arrayContainsKey!0 _keys!1895 lt!159128 #b00000000000000000000000000000000)))

(declare-fun lt!159129 () Unit!10366)

(assert (=> b!332901 (= lt!159129 lt!159127)))

(declare-fun res!183475 () Bool)

(assert (=> b!332901 (= res!183475 (= (seekEntryOrOpen!0 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3147 #b00000000000000000000000000000000)))))

(assert (=> b!332901 (=> (not res!183475) (not e!204431))))

(declare-fun b!332902 () Bool)

(assert (=> b!332902 (= e!204431 call!26240)))

(declare-fun d!70439 () Bool)

(declare-fun res!183476 () Bool)

(declare-fun e!204432 () Bool)

(assert (=> d!70439 (=> res!183476 e!204432)))

(assert (=> d!70439 (= res!183476 (bvsge #b00000000000000000000000000000000 (size!8461 _keys!1895)))))

(assert (=> d!70439 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!204432)))

(declare-fun b!332903 () Bool)

(assert (=> b!332903 (= e!204430 call!26240)))

(declare-fun b!332904 () Bool)

(assert (=> b!332904 (= e!204432 e!204430)))

(declare-fun c!52046 () Bool)

(assert (=> b!332904 (= c!52046 (validKeyInArray!0 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70439 (not res!183476)) b!332904))

(assert (= (and b!332904 c!52046) b!332901))

(assert (= (and b!332904 (not c!52046)) b!332903))

(assert (= (and b!332901 res!183475) b!332902))

(assert (= (or b!332902 b!332903) bm!26237))

(declare-fun m!337287 () Bool)

(assert (=> bm!26237 m!337287))

(declare-fun m!337289 () Bool)

(assert (=> b!332901 m!337289))

(declare-fun m!337291 () Bool)

(assert (=> b!332901 m!337291))

(declare-fun m!337293 () Bool)

(assert (=> b!332901 m!337293))

(assert (=> b!332901 m!337289))

(declare-fun m!337295 () Bool)

(assert (=> b!332901 m!337295))

(assert (=> b!332904 m!337289))

(assert (=> b!332904 m!337289))

(declare-fun m!337297 () Bool)

(assert (=> b!332904 m!337297))

(assert (=> b!332863 d!70439))

(declare-fun d!70441 () Bool)

(declare-fun e!204437 () Bool)

(assert (=> d!70441 e!204437))

(declare-fun res!183479 () Bool)

(assert (=> d!70441 (=> res!183479 e!204437)))

(declare-fun lt!159138 () Bool)

(assert (=> d!70441 (= res!183479 (not lt!159138))))

(declare-fun lt!159141 () Bool)

(assert (=> d!70441 (= lt!159138 lt!159141)))

(declare-fun lt!159139 () Unit!10366)

(declare-fun e!204438 () Unit!10366)

(assert (=> d!70441 (= lt!159139 e!204438)))

(declare-fun c!52049 () Bool)

(assert (=> d!70441 (= c!52049 lt!159141)))

(declare-fun containsKey!313 (List!4640 (_ BitVec 64)) Bool)

(assert (=> d!70441 (= lt!159141 (containsKey!313 (toList!1979 (getCurrentListMap!1502 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70441 (= (contains!2017 (getCurrentListMap!1502 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!159138)))

(declare-fun b!332911 () Bool)

(declare-fun lt!159140 () Unit!10366)

(assert (=> b!332911 (= e!204438 lt!159140)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!262 (List!4640 (_ BitVec 64)) Unit!10366)

(assert (=> b!332911 (= lt!159140 (lemmaContainsKeyImpliesGetValueByKeyDefined!262 (toList!1979 (getCurrentListMap!1502 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!327 0))(
  ( (Some!326 (v!5594 V!10021)) (None!325) )
))
(declare-fun isDefined!263 (Option!327) Bool)

(declare-fun getValueByKey!321 (List!4640 (_ BitVec 64)) Option!327)

(assert (=> b!332911 (isDefined!263 (getValueByKey!321 (toList!1979 (getCurrentListMap!1502 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!332912 () Bool)

(declare-fun Unit!10368 () Unit!10366)

(assert (=> b!332912 (= e!204438 Unit!10368)))

(declare-fun b!332913 () Bool)

(assert (=> b!332913 (= e!204437 (isDefined!263 (getValueByKey!321 (toList!1979 (getCurrentListMap!1502 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70441 c!52049) b!332911))

(assert (= (and d!70441 (not c!52049)) b!332912))

(assert (= (and d!70441 (not res!183479)) b!332913))

(declare-fun m!337299 () Bool)

(assert (=> d!70441 m!337299))

(declare-fun m!337301 () Bool)

(assert (=> b!332911 m!337301))

(declare-fun m!337303 () Bool)

(assert (=> b!332911 m!337303))

(assert (=> b!332911 m!337303))

(declare-fun m!337305 () Bool)

(assert (=> b!332911 m!337305))

(assert (=> b!332913 m!337303))

(assert (=> b!332913 m!337303))

(assert (=> b!332913 m!337305))

(assert (=> b!332864 d!70441))

(declare-fun b!332956 () Bool)

(declare-fun c!52065 () Bool)

(assert (=> b!332956 (= c!52065 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!204476 () ListLongMap!3927)

(declare-fun e!204466 () ListLongMap!3927)

(assert (=> b!332956 (= e!204476 e!204466)))

(declare-fun call!26261 () ListLongMap!3927)

(declare-fun bm!26252 () Bool)

(declare-fun call!26255 () ListLongMap!3927)

(declare-fun call!26259 () ListLongMap!3927)

(declare-fun c!52066 () Bool)

(declare-fun c!52062 () Bool)

(declare-fun call!26260 () ListLongMap!3927)

(declare-fun +!708 (ListLongMap!3927 tuple2!5000) ListLongMap!3927)

(assert (=> bm!26252 (= call!26259 (+!708 (ite c!52062 call!26261 (ite c!52066 call!26260 call!26255)) (ite (or c!52062 c!52066) (tuple2!5001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!332957 () Bool)

(declare-fun e!204470 () ListLongMap!3927)

(assert (=> b!332957 (= e!204470 e!204476)))

(assert (=> b!332957 (= c!52066 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!332958 () Bool)

(declare-fun e!204467 () Bool)

(declare-fun lt!159202 () ListLongMap!3927)

(declare-fun apply!264 (ListLongMap!3927 (_ BitVec 64)) V!10021)

(assert (=> b!332958 (= e!204467 (= (apply!264 lt!159202 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!332959 () Bool)

(declare-fun e!204477 () Bool)

(assert (=> b!332959 (= e!204477 e!204467)))

(declare-fun res!183505 () Bool)

(declare-fun call!26257 () Bool)

(assert (=> b!332959 (= res!183505 call!26257)))

(assert (=> b!332959 (=> (not res!183505) (not e!204467))))

(declare-fun b!332960 () Bool)

(declare-fun e!204468 () Bool)

(assert (=> b!332960 (= e!204468 (validKeyInArray!0 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!332961 () Bool)

(declare-fun call!26256 () ListLongMap!3927)

(assert (=> b!332961 (= e!204466 call!26256)))

(declare-fun b!332962 () Bool)

(declare-fun e!204473 () Bool)

(declare-fun e!204465 () Bool)

(assert (=> b!332962 (= e!204473 e!204465)))

(declare-fun res!183499 () Bool)

(declare-fun call!26258 () Bool)

(assert (=> b!332962 (= res!183499 call!26258)))

(assert (=> b!332962 (=> (not res!183499) (not e!204465))))

(declare-fun d!70443 () Bool)

(declare-fun e!204471 () Bool)

(assert (=> d!70443 e!204471))

(declare-fun res!183503 () Bool)

(assert (=> d!70443 (=> (not res!183503) (not e!204471))))

(assert (=> d!70443 (= res!183503 (or (bvsge #b00000000000000000000000000000000 (size!8461 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8461 _keys!1895)))))))

(declare-fun lt!159201 () ListLongMap!3927)

(assert (=> d!70443 (= lt!159202 lt!159201)))

(declare-fun lt!159191 () Unit!10366)

(declare-fun e!204472 () Unit!10366)

(assert (=> d!70443 (= lt!159191 e!204472)))

(declare-fun c!52067 () Bool)

(declare-fun e!204469 () Bool)

(assert (=> d!70443 (= c!52067 e!204469)))

(declare-fun res!183500 () Bool)

(assert (=> d!70443 (=> (not res!183500) (not e!204469))))

(assert (=> d!70443 (= res!183500 (bvslt #b00000000000000000000000000000000 (size!8461 _keys!1895)))))

(assert (=> d!70443 (= lt!159201 e!204470)))

(assert (=> d!70443 (= c!52062 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70443 (validMask!0 mask!2385)))

(assert (=> d!70443 (= (getCurrentListMap!1502 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!159202)))

(declare-fun b!332963 () Bool)

(declare-fun lt!159194 () Unit!10366)

(assert (=> b!332963 (= e!204472 lt!159194)))

(declare-fun lt!159200 () ListLongMap!3927)

(declare-fun getCurrentListMapNoExtraKeys!583 (array!17159 array!17161 (_ BitVec 32) (_ BitVec 32) V!10021 V!10021 (_ BitVec 32) Int) ListLongMap!3927)

(assert (=> b!332963 (= lt!159200 (getCurrentListMapNoExtraKeys!583 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159195 () (_ BitVec 64))

(assert (=> b!332963 (= lt!159195 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159198 () (_ BitVec 64))

(assert (=> b!332963 (= lt!159198 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159206 () Unit!10366)

(declare-fun addStillContains!240 (ListLongMap!3927 (_ BitVec 64) V!10021 (_ BitVec 64)) Unit!10366)

(assert (=> b!332963 (= lt!159206 (addStillContains!240 lt!159200 lt!159195 zeroValue!1467 lt!159198))))

(assert (=> b!332963 (contains!2017 (+!708 lt!159200 (tuple2!5001 lt!159195 zeroValue!1467)) lt!159198)))

(declare-fun lt!159203 () Unit!10366)

(assert (=> b!332963 (= lt!159203 lt!159206)))

(declare-fun lt!159196 () ListLongMap!3927)

(assert (=> b!332963 (= lt!159196 (getCurrentListMapNoExtraKeys!583 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159199 () (_ BitVec 64))

(assert (=> b!332963 (= lt!159199 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159205 () (_ BitVec 64))

(assert (=> b!332963 (= lt!159205 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159192 () Unit!10366)

(declare-fun addApplyDifferent!240 (ListLongMap!3927 (_ BitVec 64) V!10021 (_ BitVec 64)) Unit!10366)

(assert (=> b!332963 (= lt!159192 (addApplyDifferent!240 lt!159196 lt!159199 minValue!1467 lt!159205))))

(assert (=> b!332963 (= (apply!264 (+!708 lt!159196 (tuple2!5001 lt!159199 minValue!1467)) lt!159205) (apply!264 lt!159196 lt!159205))))

(declare-fun lt!159189 () Unit!10366)

(assert (=> b!332963 (= lt!159189 lt!159192)))

(declare-fun lt!159204 () ListLongMap!3927)

(assert (=> b!332963 (= lt!159204 (getCurrentListMapNoExtraKeys!583 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159187 () (_ BitVec 64))

(assert (=> b!332963 (= lt!159187 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159193 () (_ BitVec 64))

(assert (=> b!332963 (= lt!159193 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159197 () Unit!10366)

(assert (=> b!332963 (= lt!159197 (addApplyDifferent!240 lt!159204 lt!159187 zeroValue!1467 lt!159193))))

(assert (=> b!332963 (= (apply!264 (+!708 lt!159204 (tuple2!5001 lt!159187 zeroValue!1467)) lt!159193) (apply!264 lt!159204 lt!159193))))

(declare-fun lt!159186 () Unit!10366)

(assert (=> b!332963 (= lt!159186 lt!159197)))

(declare-fun lt!159188 () ListLongMap!3927)

(assert (=> b!332963 (= lt!159188 (getCurrentListMapNoExtraKeys!583 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159190 () (_ BitVec 64))

(assert (=> b!332963 (= lt!159190 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159207 () (_ BitVec 64))

(assert (=> b!332963 (= lt!159207 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!332963 (= lt!159194 (addApplyDifferent!240 lt!159188 lt!159190 minValue!1467 lt!159207))))

(assert (=> b!332963 (= (apply!264 (+!708 lt!159188 (tuple2!5001 lt!159190 minValue!1467)) lt!159207) (apply!264 lt!159188 lt!159207))))

(declare-fun b!332964 () Bool)

(assert (=> b!332964 (= e!204469 (validKeyInArray!0 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!332965 () Bool)

(assert (=> b!332965 (= e!204470 (+!708 call!26259 (tuple2!5001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!332966 () Bool)

(declare-fun Unit!10369 () Unit!10366)

(assert (=> b!332966 (= e!204472 Unit!10369)))

(declare-fun b!332967 () Bool)

(assert (=> b!332967 (= e!204471 e!204473)))

(declare-fun c!52063 () Bool)

(assert (=> b!332967 (= c!52063 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26253 () Bool)

(assert (=> bm!26253 (= call!26256 call!26259)))

(declare-fun b!332968 () Bool)

(declare-fun res!183506 () Bool)

(assert (=> b!332968 (=> (not res!183506) (not e!204471))))

(assert (=> b!332968 (= res!183506 e!204477)))

(declare-fun c!52064 () Bool)

(assert (=> b!332968 (= c!52064 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!332969 () Bool)

(assert (=> b!332969 (= e!204473 (not call!26258))))

(declare-fun b!332970 () Bool)

(declare-fun e!204475 () Bool)

(declare-fun get!4471 (ValueCell!3048 V!10021) V!10021)

(declare-fun dynLambda!602 (Int (_ BitVec 64)) V!10021)

(assert (=> b!332970 (= e!204475 (= (apply!264 lt!159202 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000)) (get!4471 (select (arr!8110 _values!1525) #b00000000000000000000000000000000) (dynLambda!602 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!332970 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8462 _values!1525)))))

(assert (=> b!332970 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8461 _keys!1895)))))

(declare-fun bm!26254 () Bool)

(assert (=> bm!26254 (= call!26261 (getCurrentListMapNoExtraKeys!583 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!332971 () Bool)

(assert (=> b!332971 (= e!204465 (= (apply!264 lt!159202 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!332972 () Bool)

(assert (=> b!332972 (= e!204466 call!26255)))

(declare-fun bm!26255 () Bool)

(assert (=> bm!26255 (= call!26260 call!26261)))

(declare-fun b!332973 () Bool)

(assert (=> b!332973 (= e!204477 (not call!26257))))

(declare-fun bm!26256 () Bool)

(assert (=> bm!26256 (= call!26255 call!26260)))

(declare-fun b!332974 () Bool)

(declare-fun e!204474 () Bool)

(assert (=> b!332974 (= e!204474 e!204475)))

(declare-fun res!183498 () Bool)

(assert (=> b!332974 (=> (not res!183498) (not e!204475))))

(assert (=> b!332974 (= res!183498 (contains!2017 lt!159202 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!332974 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8461 _keys!1895)))))

(declare-fun bm!26257 () Bool)

(assert (=> bm!26257 (= call!26257 (contains!2017 lt!159202 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!332975 () Bool)

(assert (=> b!332975 (= e!204476 call!26256)))

(declare-fun b!332976 () Bool)

(declare-fun res!183501 () Bool)

(assert (=> b!332976 (=> (not res!183501) (not e!204471))))

(assert (=> b!332976 (= res!183501 e!204474)))

(declare-fun res!183502 () Bool)

(assert (=> b!332976 (=> res!183502 e!204474)))

(assert (=> b!332976 (= res!183502 (not e!204468))))

(declare-fun res!183504 () Bool)

(assert (=> b!332976 (=> (not res!183504) (not e!204468))))

(assert (=> b!332976 (= res!183504 (bvslt #b00000000000000000000000000000000 (size!8461 _keys!1895)))))

(declare-fun bm!26258 () Bool)

(assert (=> bm!26258 (= call!26258 (contains!2017 lt!159202 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!70443 c!52062) b!332965))

(assert (= (and d!70443 (not c!52062)) b!332957))

(assert (= (and b!332957 c!52066) b!332975))

(assert (= (and b!332957 (not c!52066)) b!332956))

(assert (= (and b!332956 c!52065) b!332961))

(assert (= (and b!332956 (not c!52065)) b!332972))

(assert (= (or b!332961 b!332972) bm!26256))

(assert (= (or b!332975 bm!26256) bm!26255))

(assert (= (or b!332975 b!332961) bm!26253))

(assert (= (or b!332965 bm!26255) bm!26254))

(assert (= (or b!332965 bm!26253) bm!26252))

(assert (= (and d!70443 res!183500) b!332964))

(assert (= (and d!70443 c!52067) b!332963))

(assert (= (and d!70443 (not c!52067)) b!332966))

(assert (= (and d!70443 res!183503) b!332976))

(assert (= (and b!332976 res!183504) b!332960))

(assert (= (and b!332976 (not res!183502)) b!332974))

(assert (= (and b!332974 res!183498) b!332970))

(assert (= (and b!332976 res!183501) b!332968))

(assert (= (and b!332968 c!52064) b!332959))

(assert (= (and b!332968 (not c!52064)) b!332973))

(assert (= (and b!332959 res!183505) b!332958))

(assert (= (or b!332959 b!332973) bm!26257))

(assert (= (and b!332968 res!183506) b!332967))

(assert (= (and b!332967 c!52063) b!332962))

(assert (= (and b!332967 (not c!52063)) b!332969))

(assert (= (and b!332962 res!183499) b!332971))

(assert (= (or b!332962 b!332969) bm!26258))

(declare-fun b_lambda!8425 () Bool)

(assert (=> (not b_lambda!8425) (not b!332970)))

(declare-fun t!9736 () Bool)

(declare-fun tb!3051 () Bool)

(assert (=> (and start!33568 (= defaultEntry!1528 defaultEntry!1528) t!9736) tb!3051))

(declare-fun result!5467 () Bool)

(assert (=> tb!3051 (= result!5467 tp_is_empty!6783)))

(assert (=> b!332970 t!9736))

(declare-fun b_and!14029 () Bool)

(assert (= b_and!14025 (and (=> t!9736 result!5467) b_and!14029)))

(assert (=> d!70443 m!337255))

(declare-fun m!337307 () Bool)

(assert (=> bm!26257 m!337307))

(assert (=> b!332964 m!337289))

(assert (=> b!332964 m!337289))

(assert (=> b!332964 m!337297))

(assert (=> b!332960 m!337289))

(assert (=> b!332960 m!337289))

(assert (=> b!332960 m!337297))

(declare-fun m!337309 () Bool)

(assert (=> bm!26254 m!337309))

(assert (=> b!332963 m!337289))

(declare-fun m!337311 () Bool)

(assert (=> b!332963 m!337311))

(declare-fun m!337313 () Bool)

(assert (=> b!332963 m!337313))

(declare-fun m!337315 () Bool)

(assert (=> b!332963 m!337315))

(declare-fun m!337317 () Bool)

(assert (=> b!332963 m!337317))

(declare-fun m!337319 () Bool)

(assert (=> b!332963 m!337319))

(declare-fun m!337321 () Bool)

(assert (=> b!332963 m!337321))

(declare-fun m!337323 () Bool)

(assert (=> b!332963 m!337323))

(declare-fun m!337325 () Bool)

(assert (=> b!332963 m!337325))

(declare-fun m!337327 () Bool)

(assert (=> b!332963 m!337327))

(declare-fun m!337329 () Bool)

(assert (=> b!332963 m!337329))

(declare-fun m!337331 () Bool)

(assert (=> b!332963 m!337331))

(declare-fun m!337333 () Bool)

(assert (=> b!332963 m!337333))

(declare-fun m!337335 () Bool)

(assert (=> b!332963 m!337335))

(assert (=> b!332963 m!337309))

(assert (=> b!332963 m!337311))

(assert (=> b!332963 m!337315))

(declare-fun m!337337 () Bool)

(assert (=> b!332963 m!337337))

(assert (=> b!332963 m!337327))

(assert (=> b!332963 m!337321))

(declare-fun m!337339 () Bool)

(assert (=> b!332963 m!337339))

(declare-fun m!337341 () Bool)

(assert (=> b!332965 m!337341))

(declare-fun m!337343 () Bool)

(assert (=> bm!26258 m!337343))

(declare-fun m!337345 () Bool)

(assert (=> b!332970 m!337345))

(declare-fun m!337347 () Bool)

(assert (=> b!332970 m!337347))

(declare-fun m!337349 () Bool)

(assert (=> b!332970 m!337349))

(assert (=> b!332970 m!337289))

(assert (=> b!332970 m!337345))

(assert (=> b!332970 m!337289))

(declare-fun m!337351 () Bool)

(assert (=> b!332970 m!337351))

(assert (=> b!332970 m!337347))

(declare-fun m!337353 () Bool)

(assert (=> bm!26252 m!337353))

(declare-fun m!337355 () Bool)

(assert (=> b!332958 m!337355))

(assert (=> b!332974 m!337289))

(assert (=> b!332974 m!337289))

(declare-fun m!337357 () Bool)

(assert (=> b!332974 m!337357))

(declare-fun m!337359 () Bool)

(assert (=> b!332971 m!337359))

(assert (=> b!332864 d!70443))

(declare-fun d!70445 () Bool)

(declare-fun lt!159216 () SeekEntryResult!3147)

(assert (=> d!70445 (and (or ((_ is Undefined!3147) lt!159216) (not ((_ is Found!3147) lt!159216)) (and (bvsge (index!14768 lt!159216) #b00000000000000000000000000000000) (bvslt (index!14768 lt!159216) (size!8461 _keys!1895)))) (or ((_ is Undefined!3147) lt!159216) ((_ is Found!3147) lt!159216) (not ((_ is MissingZero!3147) lt!159216)) (and (bvsge (index!14767 lt!159216) #b00000000000000000000000000000000) (bvslt (index!14767 lt!159216) (size!8461 _keys!1895)))) (or ((_ is Undefined!3147) lt!159216) ((_ is Found!3147) lt!159216) ((_ is MissingZero!3147) lt!159216) (not ((_ is MissingVacant!3147) lt!159216)) (and (bvsge (index!14770 lt!159216) #b00000000000000000000000000000000) (bvslt (index!14770 lt!159216) (size!8461 _keys!1895)))) (or ((_ is Undefined!3147) lt!159216) (ite ((_ is Found!3147) lt!159216) (= (select (arr!8109 _keys!1895) (index!14768 lt!159216)) k0!1348) (ite ((_ is MissingZero!3147) lt!159216) (= (select (arr!8109 _keys!1895) (index!14767 lt!159216)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3147) lt!159216) (= (select (arr!8109 _keys!1895) (index!14770 lt!159216)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!204485 () SeekEntryResult!3147)

(assert (=> d!70445 (= lt!159216 e!204485)))

(declare-fun c!52075 () Bool)

(declare-fun lt!159215 () SeekEntryResult!3147)

(assert (=> d!70445 (= c!52075 (and ((_ is Intermediate!3147) lt!159215) (undefined!3959 lt!159215)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17159 (_ BitVec 32)) SeekEntryResult!3147)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70445 (= lt!159215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70445 (validMask!0 mask!2385)))

(assert (=> d!70445 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!159216)))

(declare-fun b!332991 () Bool)

(declare-fun e!204484 () SeekEntryResult!3147)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17159 (_ BitVec 32)) SeekEntryResult!3147)

(assert (=> b!332991 (= e!204484 (seekKeyOrZeroReturnVacant!0 (x!33184 lt!159215) (index!14769 lt!159215) (index!14769 lt!159215) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!332992 () Bool)

(assert (=> b!332992 (= e!204485 Undefined!3147)))

(declare-fun b!332993 () Bool)

(declare-fun e!204486 () SeekEntryResult!3147)

(assert (=> b!332993 (= e!204486 (Found!3147 (index!14769 lt!159215)))))

(declare-fun b!332994 () Bool)

(declare-fun c!52074 () Bool)

(declare-fun lt!159214 () (_ BitVec 64))

(assert (=> b!332994 (= c!52074 (= lt!159214 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!332994 (= e!204486 e!204484)))

(declare-fun b!332995 () Bool)

(assert (=> b!332995 (= e!204484 (MissingZero!3147 (index!14769 lt!159215)))))

(declare-fun b!332996 () Bool)

(assert (=> b!332996 (= e!204485 e!204486)))

(assert (=> b!332996 (= lt!159214 (select (arr!8109 _keys!1895) (index!14769 lt!159215)))))

(declare-fun c!52076 () Bool)

(assert (=> b!332996 (= c!52076 (= lt!159214 k0!1348))))

(assert (= (and d!70445 c!52075) b!332992))

(assert (= (and d!70445 (not c!52075)) b!332996))

(assert (= (and b!332996 c!52076) b!332993))

(assert (= (and b!332996 (not c!52076)) b!332994))

(assert (= (and b!332994 c!52074) b!332995))

(assert (= (and b!332994 (not c!52074)) b!332991))

(declare-fun m!337361 () Bool)

(assert (=> d!70445 m!337361))

(declare-fun m!337363 () Bool)

(assert (=> d!70445 m!337363))

(declare-fun m!337365 () Bool)

(assert (=> d!70445 m!337365))

(assert (=> d!70445 m!337255))

(assert (=> d!70445 m!337361))

(declare-fun m!337367 () Bool)

(assert (=> d!70445 m!337367))

(declare-fun m!337369 () Bool)

(assert (=> d!70445 m!337369))

(declare-fun m!337371 () Bool)

(assert (=> b!332991 m!337371))

(declare-fun m!337373 () Bool)

(assert (=> b!332996 m!337373))

(assert (=> b!332865 d!70445))

(declare-fun b!333007 () Bool)

(declare-fun e!204498 () Bool)

(declare-fun call!26264 () Bool)

(assert (=> b!333007 (= e!204498 call!26264)))

(declare-fun b!333008 () Bool)

(declare-fun e!204497 () Bool)

(declare-fun e!204495 () Bool)

(assert (=> b!333008 (= e!204497 e!204495)))

(declare-fun res!183513 () Bool)

(assert (=> b!333008 (=> (not res!183513) (not e!204495))))

(declare-fun e!204496 () Bool)

(assert (=> b!333008 (= res!183513 (not e!204496))))

(declare-fun res!183514 () Bool)

(assert (=> b!333008 (=> (not res!183514) (not e!204496))))

(assert (=> b!333008 (= res!183514 (validKeyInArray!0 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!70447 () Bool)

(declare-fun res!183515 () Bool)

(assert (=> d!70447 (=> res!183515 e!204497)))

(assert (=> d!70447 (= res!183515 (bvsge #b00000000000000000000000000000000 (size!8461 _keys!1895)))))

(assert (=> d!70447 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4636) e!204497)))

(declare-fun bm!26261 () Bool)

(declare-fun c!52079 () Bool)

(assert (=> bm!26261 (= call!26264 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52079 (Cons!4635 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000) Nil!4636) Nil!4636)))))

(declare-fun b!333009 () Bool)

(declare-fun contains!2019 (List!4639 (_ BitVec 64)) Bool)

(assert (=> b!333009 (= e!204496 (contains!2019 Nil!4636 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!333010 () Bool)

(assert (=> b!333010 (= e!204495 e!204498)))

(assert (=> b!333010 (= c!52079 (validKeyInArray!0 (select (arr!8109 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!333011 () Bool)

(assert (=> b!333011 (= e!204498 call!26264)))

(assert (= (and d!70447 (not res!183515)) b!333008))

(assert (= (and b!333008 res!183514) b!333009))

(assert (= (and b!333008 res!183513) b!333010))

(assert (= (and b!333010 c!52079) b!333007))

(assert (= (and b!333010 (not c!52079)) b!333011))

(assert (= (or b!333007 b!333011) bm!26261))

(assert (=> b!333008 m!337289))

(assert (=> b!333008 m!337289))

(assert (=> b!333008 m!337297))

(assert (=> bm!26261 m!337289))

(declare-fun m!337375 () Bool)

(assert (=> bm!26261 m!337375))

(assert (=> b!333009 m!337289))

(assert (=> b!333009 m!337289))

(declare-fun m!337377 () Bool)

(assert (=> b!333009 m!337377))

(assert (=> b!333010 m!337289))

(assert (=> b!333010 m!337289))

(assert (=> b!333010 m!337297))

(assert (=> b!332857 d!70447))

(declare-fun mapNonEmpty!11571 () Bool)

(declare-fun mapRes!11571 () Bool)

(declare-fun tp!24000 () Bool)

(declare-fun e!204503 () Bool)

(assert (=> mapNonEmpty!11571 (= mapRes!11571 (and tp!24000 e!204503))))

(declare-fun mapKey!11571 () (_ BitVec 32))

(declare-fun mapValue!11571 () ValueCell!3048)

(declare-fun mapRest!11571 () (Array (_ BitVec 32) ValueCell!3048))

(assert (=> mapNonEmpty!11571 (= mapRest!11565 (store mapRest!11571 mapKey!11571 mapValue!11571))))

(declare-fun b!333018 () Bool)

(assert (=> b!333018 (= e!204503 tp_is_empty!6783)))

(declare-fun mapIsEmpty!11571 () Bool)

(assert (=> mapIsEmpty!11571 mapRes!11571))

(declare-fun condMapEmpty!11571 () Bool)

(declare-fun mapDefault!11571 () ValueCell!3048)

(assert (=> mapNonEmpty!11565 (= condMapEmpty!11571 (= mapRest!11565 ((as const (Array (_ BitVec 32) ValueCell!3048)) mapDefault!11571)))))

(declare-fun e!204504 () Bool)

(assert (=> mapNonEmpty!11565 (= tp!23990 (and e!204504 mapRes!11571))))

(declare-fun b!333019 () Bool)

(assert (=> b!333019 (= e!204504 tp_is_empty!6783)))

(assert (= (and mapNonEmpty!11565 condMapEmpty!11571) mapIsEmpty!11571))

(assert (= (and mapNonEmpty!11565 (not condMapEmpty!11571)) mapNonEmpty!11571))

(assert (= (and mapNonEmpty!11571 ((_ is ValueCellFull!3048) mapValue!11571)) b!333018))

(assert (= (and mapNonEmpty!11565 ((_ is ValueCellFull!3048) mapDefault!11571)) b!333019))

(declare-fun m!337379 () Bool)

(assert (=> mapNonEmpty!11571 m!337379))

(declare-fun b_lambda!8427 () Bool)

(assert (= b_lambda!8425 (or (and start!33568 b_free!6831) b_lambda!8427)))

(check-sat (not bm!26261) (not bm!26257) (not b!333008) (not b!332974) (not b!332960) (not d!70445) (not b_next!6831) (not b!332964) (not b_lambda!8427) (not b!332911) (not b!332991) (not b!333010) (not b!332901) (not bm!26252) (not bm!26258) (not d!70441) (not b!332971) (not bm!26254) b_and!14029 (not b!332965) (not b!332904) (not bm!26237) (not b!332958) (not b!333009) (not b!332963) (not b!332913) (not d!70443) (not b!332970) (not mapNonEmpty!11571) tp_is_empty!6783)
(check-sat b_and!14029 (not b_next!6831))

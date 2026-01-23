; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185608 () Bool)

(assert start!185608)

(declare-fun b!1859150 () Bool)

(declare-fun b_free!51999 () Bool)

(declare-fun b_next!52703 () Bool)

(assert (=> b!1859150 (= b_free!51999 (not b_next!52703))))

(declare-fun tp!529957 () Bool)

(declare-fun b_and!144267 () Bool)

(assert (=> b!1859150 (= tp!529957 b_and!144267)))

(declare-fun b!1859148 () Bool)

(declare-fun e!1187304 () Bool)

(declare-fun tp_is_empty!8603 () Bool)

(declare-fun mapRes!8909 () Bool)

(assert (=> b!1859148 (= e!1187304 (and tp_is_empty!8603 mapRes!8909))))

(declare-fun condMapEmpty!8909 () Bool)

(declare-datatypes ((V!3913 0))(
  ( (V!3914 (val!5904 Int)) )
))
(declare-datatypes ((array!6605 0))(
  ( (array!6606 (arr!2934 (Array (_ BitVec 32) (_ BitVec 64))) (size!16319 (_ BitVec 32))) )
))
(declare-datatypes ((array!6607 0))(
  ( (array!6608 (arr!2935 (Array (_ BitVec 32) V!3913)) (size!16320 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3836 0))(
  ( (LongMapFixedSize!3837 (defaultEntry!2283 Int) (mask!5641 (_ BitVec 32)) (extraKeys!2166 (_ BitVec 32)) (zeroValue!2176 V!3913) (minValue!2176 V!3913) (_size!3896 (_ BitVec 32)) (_keys!2215 array!6605) (_values!2198 array!6607) (_vacant!1979 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7515 0))(
  ( (Cell!7516 (v!26064 LongMapFixedSize!3836)) )
))
(declare-datatypes ((MutLongMap!1918 0))(
  ( (LongMap!1918 (underlying!4036 Cell!7515)) (MutLongMapExt!1917 (__x!12987 Int)) )
))
(declare-fun thiss!47327 () MutLongMap!1918)

(declare-fun mapDefault!8909 () V!3913)

(assert (=> b!1859148 (= condMapEmpty!8909 (= (arr!2935 (_values!2198 (v!26064 (underlying!4036 thiss!47327)))) ((as const (Array (_ BitVec 32) V!3913)) mapDefault!8909)))))

(declare-fun b!1859149 () Bool)

(declare-fun e!1187300 () Bool)

(declare-fun e!1187298 () Bool)

(assert (=> b!1859149 (= e!1187300 e!1187298)))

(declare-fun res!832704 () Bool)

(declare-fun e!1187299 () Bool)

(assert (=> start!185608 (=> (not res!832704) (not e!1187299))))

(get-info :version)

(assert (=> start!185608 (= res!832704 ((_ is LongMap!1918) thiss!47327))))

(assert (=> start!185608 e!1187299))

(declare-fun e!1187303 () Bool)

(assert (=> start!185608 e!1187303))

(assert (=> start!185608 true))

(declare-fun mapIsEmpty!8909 () Bool)

(assert (=> mapIsEmpty!8909 mapRes!8909))

(declare-fun array_inv!2111 (array!6605) Bool)

(declare-fun array_inv!2112 (array!6607) Bool)

(assert (=> b!1859150 (= e!1187298 (and tp!529957 tp_is_empty!8603 (array_inv!2111 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) (array_inv!2112 (_values!2198 (v!26064 (underlying!4036 thiss!47327)))) e!1187304))))

(declare-fun mapNonEmpty!8909 () Bool)

(declare-fun tp!529956 () Bool)

(assert (=> mapNonEmpty!8909 (= mapRes!8909 (and tp!529956 tp_is_empty!8603))))

(declare-fun mapKey!8909 () (_ BitVec 32))

(declare-fun mapRest!8909 () (Array (_ BitVec 32) V!3913))

(declare-fun mapValue!8909 () V!3913)

(assert (=> mapNonEmpty!8909 (= (arr!2935 (_values!2198 (v!26064 (underlying!4036 thiss!47327)))) (store mapRest!8909 mapKey!8909 mapValue!8909))))

(declare-fun bm!115624 () Bool)

(declare-datatypes ((tuple2!19900 0))(
  ( (tuple2!19901 (_1!11377 (_ BitVec 64)) (_2!11377 V!3913)) )
))
(declare-datatypes ((List!20696 0))(
  ( (Nil!20616) (Cons!20616 (h!26017 tuple2!19900) (t!172565 List!20696)) )
))
(declare-datatypes ((ListLongMap!225 0))(
  ( (ListLongMap!226 (toList!998 List!20696)) )
))
(declare-fun call!115630 () ListLongMap!225)

(declare-fun lt!717409 () MutLongMap!1918)

(declare-fun map!4366 (MutLongMap!1918) ListLongMap!225)

(assert (=> bm!115624 (= call!115630 (map!4366 lt!717409))))

(declare-fun b!1859151 () Bool)

(declare-fun e!1187305 () Bool)

(declare-fun call!115629 () ListLongMap!225)

(assert (=> b!1859151 (= e!1187305 (not (= call!115630 call!115629)))))

(declare-fun b!1859152 () Bool)

(assert (=> b!1859152 (= e!1187303 e!1187300)))

(declare-fun bm!115625 () Bool)

(assert (=> bm!115625 (= call!115629 (map!4366 thiss!47327))))

(declare-fun b!1859153 () Bool)

(declare-fun key!7027 () (_ BitVec 64))

(declare-fun -!106 (ListLongMap!225 (_ BitVec 64)) ListLongMap!225)

(assert (=> b!1859153 (= e!1187305 (not (= call!115630 (-!106 call!115629 key!7027))))))

(declare-fun b!1859154 () Bool)

(declare-fun res!832705 () Bool)

(assert (=> b!1859154 (=> (not res!832705) (not e!1187299))))

(declare-fun valid!1547 (MutLongMap!1918) Bool)

(assert (=> b!1859154 (= res!832705 (valid!1547 thiss!47327))))

(declare-fun b!1859155 () Bool)

(declare-fun e!1187302 () Bool)

(assert (=> b!1859155 (= e!1187302 e!1187305)))

(declare-fun c!302685 () Bool)

(declare-datatypes ((tuple2!19902 0))(
  ( (tuple2!19903 (_1!11378 Bool) (_2!11378 LongMapFixedSize!3836)) )
))
(declare-fun lt!717410 () tuple2!19902)

(assert (=> b!1859155 (= c!302685 (_1!11378 lt!717410))))

(declare-fun b!1859156 () Bool)

(assert (=> b!1859156 (= e!1187299 e!1187302)))

(declare-fun res!832706 () Bool)

(assert (=> b!1859156 (=> res!832706 e!1187302)))

(assert (=> b!1859156 (= res!832706 (not (valid!1547 lt!717409)))))

(assert (=> b!1859156 (= lt!717409 (LongMap!1918 (Cell!7516 (_2!11378 lt!717410))))))

(declare-fun remove!62 (LongMapFixedSize!3836 (_ BitVec 64)) tuple2!19902)

(assert (=> b!1859156 (= lt!717410 (remove!62 (v!26064 (underlying!4036 thiss!47327)) key!7027))))

(assert (= (and start!185608 res!832704) b!1859154))

(assert (= (and b!1859154 res!832705) b!1859156))

(assert (= (and b!1859156 (not res!832706)) b!1859155))

(assert (= (and b!1859155 c!302685) b!1859153))

(assert (= (and b!1859155 (not c!302685)) b!1859151))

(assert (= (or b!1859153 b!1859151) bm!115624))

(assert (= (or b!1859153 b!1859151) bm!115625))

(assert (= (and b!1859148 condMapEmpty!8909) mapIsEmpty!8909))

(assert (= (and b!1859148 (not condMapEmpty!8909)) mapNonEmpty!8909))

(assert (= b!1859150 b!1859148))

(assert (= b!1859149 b!1859150))

(assert (= b!1859152 b!1859149))

(assert (= (and start!185608 ((_ is LongMap!1918) thiss!47327)) b!1859152))

(declare-fun m!2282543 () Bool)

(assert (=> mapNonEmpty!8909 m!2282543))

(declare-fun m!2282545 () Bool)

(assert (=> b!1859154 m!2282545))

(declare-fun m!2282547 () Bool)

(assert (=> b!1859156 m!2282547))

(declare-fun m!2282549 () Bool)

(assert (=> b!1859156 m!2282549))

(declare-fun m!2282551 () Bool)

(assert (=> b!1859150 m!2282551))

(declare-fun m!2282553 () Bool)

(assert (=> b!1859150 m!2282553))

(declare-fun m!2282555 () Bool)

(assert (=> b!1859153 m!2282555))

(declare-fun m!2282557 () Bool)

(assert (=> bm!115625 m!2282557))

(declare-fun m!2282559 () Bool)

(assert (=> bm!115624 m!2282559))

(check-sat (not b!1859156) (not b!1859150) (not bm!115624) (not mapNonEmpty!8909) b_and!144267 (not b_next!52703) (not bm!115625) (not b!1859154) (not b!1859153) tp_is_empty!8603)
(check-sat b_and!144267 (not b_next!52703))
(get-model)

(declare-fun d!567235 () Bool)

(assert (=> d!567235 (= (array_inv!2111 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) (bvsge (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) #b00000000000000000000000000000000))))

(assert (=> b!1859150 d!567235))

(declare-fun d!567237 () Bool)

(assert (=> d!567237 (= (array_inv!2112 (_values!2198 (v!26064 (underlying!4036 thiss!47327)))) (bvsge (size!16320 (_values!2198 (v!26064 (underlying!4036 thiss!47327)))) #b00000000000000000000000000000000))))

(assert (=> b!1859150 d!567237))

(declare-fun d!567239 () Bool)

(declare-fun lt!717413 () ListLongMap!225)

(declare-fun contains!3804 (ListLongMap!225 (_ BitVec 64)) Bool)

(assert (=> d!567239 (not (contains!3804 lt!717413 key!7027))))

(declare-fun removeStrictlySorted!4 (List!20696 (_ BitVec 64)) List!20696)

(assert (=> d!567239 (= lt!717413 (ListLongMap!226 (removeStrictlySorted!4 (toList!998 call!115629) key!7027)))))

(assert (=> d!567239 (= (-!106 call!115629 key!7027) lt!717413)))

(declare-fun bs!410777 () Bool)

(assert (= bs!410777 d!567239))

(declare-fun m!2282561 () Bool)

(assert (=> bs!410777 m!2282561))

(declare-fun m!2282563 () Bool)

(assert (=> bs!410777 m!2282563))

(assert (=> b!1859153 d!567239))

(declare-fun d!567241 () Bool)

(declare-fun map!4367 (LongMapFixedSize!3836) ListLongMap!225)

(assert (=> d!567241 (= (map!4366 thiss!47327) (map!4367 (v!26064 (underlying!4036 thiss!47327))))))

(declare-fun bs!410778 () Bool)

(assert (= bs!410778 d!567241))

(declare-fun m!2282565 () Bool)

(assert (=> bs!410778 m!2282565))

(assert (=> bm!115625 d!567241))

(declare-fun d!567243 () Bool)

(declare-fun valid!1548 (LongMapFixedSize!3836) Bool)

(assert (=> d!567243 (= (valid!1547 lt!717409) (valid!1548 (v!26064 (underlying!4036 lt!717409))))))

(declare-fun bs!410779 () Bool)

(assert (= bs!410779 d!567243))

(declare-fun m!2282567 () Bool)

(assert (=> bs!410779 m!2282567))

(assert (=> b!1859156 d!567243))

(declare-fun bm!115642 () Bool)

(declare-fun call!115647 () ListLongMap!225)

(declare-fun call!115648 () ListLongMap!225)

(assert (=> bm!115642 (= call!115647 call!115648)))

(declare-fun b!1859191 () Bool)

(declare-datatypes ((Unit!35221 0))(
  ( (Unit!35222) )
))
(declare-fun lt!717485 () Unit!35221)

(declare-fun lt!717499 () Unit!35221)

(assert (=> b!1859191 (= lt!717485 lt!717499)))

(declare-fun call!115649 () ListLongMap!225)

(assert (=> b!1859191 (= call!115649 call!115647)))

(declare-fun lt!717488 () V!3913)

(declare-fun lt!717487 () (_ BitVec 32))

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!2 (array!6605 array!6607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3913 V!3913 V!3913 Int) Unit!35221)

(assert (=> b!1859191 (= lt!717499 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!2 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (_values!2198 (v!26064 (underlying!4036 thiss!47327))) (mask!5641 (v!26064 (underlying!4036 thiss!47327))) (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) lt!717487 (zeroValue!2176 (v!26064 (underlying!4036 thiss!47327))) (minValue!2176 (v!26064 (underlying!4036 thiss!47327))) lt!717488 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327)))))))

(declare-fun dynLambda!10202 (Int (_ BitVec 64)) V!3913)

(assert (=> b!1859191 (= lt!717488 (dynLambda!10202 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1859191 (= lt!717487 (bvand (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) #b00000000000000000000000000000001))))

(declare-fun e!1187330 () tuple2!19902)

(assert (=> b!1859191 (= e!1187330 (tuple2!19903 true (LongMapFixedSize!3837 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) (mask!5641 (v!26064 (underlying!4036 thiss!47327))) (bvand (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) #b00000000000000000000000000000001) (zeroValue!2176 (v!26064 (underlying!4036 thiss!47327))) (dynLambda!10202 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) #b1000000000000000000000000000000000000000000000000000000000000000) (_size!3896 (v!26064 (underlying!4036 thiss!47327))) (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (_values!2198 (v!26064 (underlying!4036 thiss!47327))) (_vacant!1979 (v!26064 (underlying!4036 thiss!47327))))))))

(declare-fun d!567245 () Bool)

(declare-fun e!1187327 () Bool)

(assert (=> d!567245 e!1187327))

(declare-fun res!832709 () Bool)

(assert (=> d!567245 (=> (not res!832709) (not e!1187327))))

(declare-fun lt!717492 () tuple2!19902)

(assert (=> d!567245 (= res!832709 (valid!1548 (_2!11378 lt!717492)))))

(declare-fun e!1187326 () tuple2!19902)

(assert (=> d!567245 (= lt!717492 e!1187326)))

(declare-fun c!302702 () Bool)

(assert (=> d!567245 (= c!302702 (= key!7027 (bvneg key!7027)))))

(assert (=> d!567245 (valid!1548 (v!26064 (underlying!4036 thiss!47327)))))

(assert (=> d!567245 (= (remove!62 (v!26064 (underlying!4036 thiss!47327)) key!7027) lt!717492)))

(declare-fun b!1859192 () Bool)

(declare-fun e!1187325 () Bool)

(declare-datatypes ((tuple2!19904 0))(
  ( (tuple2!19905 (_1!11379 Unit!35221) (_2!11379 LongMapFixedSize!3836)) )
))
(declare-fun lt!717498 () tuple2!19904)

(assert (=> b!1859192 (= e!1187325 (ite (= key!7027 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2166 (_2!11379 lt!717498)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2166 (_2!11379 lt!717498)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((SeekEntryResult!9 0))(
  ( (Found!9 (index!1077 (_ BitVec 32))) (Undefined!9) (MissingZero!9 (index!1078 (_ BitVec 32))) (MissingVacant!9 (index!1079 (_ BitVec 32))) (Intermediate!9 (undefined!90 Bool) (index!1080 (_ BitVec 32)) (x!372487 (_ BitVec 32))) )
))
(declare-fun lt!717476 () SeekEntryResult!9)

(declare-fun e!1187328 () array!6607)

(declare-fun bm!115643 () Bool)

(declare-fun call!115654 () ListLongMap!225)

(declare-fun getCurrentListMap!10 (array!6605 array!6607 (_ BitVec 32) (_ BitVec 32) V!3913 V!3913 (_ BitVec 32) Int) ListLongMap!225)

(assert (=> bm!115643 (= call!115654 (getCurrentListMap!10 (ite c!302702 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (array!6606 (store (arr!2934 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))))) e!1187328 (mask!5641 (v!26064 (underlying!4036 thiss!47327))) (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) (zeroValue!2176 (v!26064 (underlying!4036 thiss!47327))) (minValue!2176 (v!26064 (underlying!4036 thiss!47327))) #b00000000000000000000000000000000 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327)))))))

(declare-fun c!302706 () Bool)

(assert (=> bm!115643 (= c!302706 c!302702)))

(declare-fun b!1859193 () Bool)

(declare-fun lt!717489 () Unit!35221)

(declare-fun e!1187331 () Unit!35221)

(assert (=> b!1859193 (= lt!717489 e!1187331)))

(declare-fun c!302703 () Bool)

(assert (=> b!1859193 (= c!302703 (contains!3804 (getCurrentListMap!10 (_keys!2215 (_2!11379 lt!717498)) (_values!2198 (_2!11379 lt!717498)) (mask!5641 (_2!11379 lt!717498)) (extraKeys!2166 (_2!11379 lt!717498)) (zeroValue!2176 (_2!11379 lt!717498)) (minValue!2176 (_2!11379 lt!717498)) #b00000000000000000000000000000000 (defaultEntry!2283 (_2!11379 lt!717498))) key!7027))))

(declare-fun e!1187329 () tuple2!19904)

(assert (=> b!1859193 (= lt!717498 e!1187329)))

(declare-fun c!302708 () Bool)

(declare-fun lt!717497 () (_ BitVec 32))

(assert (=> b!1859193 (= c!302708 (bvsgt lt!717497 #b00000000000000000000000000000000))))

(assert (=> b!1859193 (= lt!717497 (bvadd (_vacant!1979 (v!26064 (underlying!4036 thiss!47327))) #b00000000000000000000000000000001))))

(declare-fun lt!717472 () Unit!35221)

(declare-fun lt!717478 () Unit!35221)

(assert (=> b!1859193 (= lt!717472 lt!717478)))

(declare-fun call!115653 () ListLongMap!225)

(assert (=> b!1859193 (= call!115653 call!115654)))

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!2 (array!6605 array!6607 (_ BitVec 32) (_ BitVec 32) V!3913 V!3913 (_ BitVec 32) (_ BitVec 64) Int) Unit!35221)

(assert (=> b!1859193 (= lt!717478 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!2 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (_values!2198 (v!26064 (underlying!4036 thiss!47327))) (mask!5641 (v!26064 (underlying!4036 thiss!47327))) (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) (zeroValue!2176 (v!26064 (underlying!4036 thiss!47327))) (minValue!2176 (v!26064 (underlying!4036 thiss!47327))) (index!1077 lt!717476) key!7027 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327)))))))

(declare-fun lt!717496 () Unit!35221)

(declare-fun lt!717495 () Unit!35221)

(assert (=> b!1859193 (= lt!717496 lt!717495)))

(declare-fun arrayContainsKey!0 (array!6605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1859193 (not (arrayContainsKey!0 (array!6606 (store (arr!2934 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))))) key!7027 #b00000000000000000000000000000000))))

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!6605 (_ BitVec 32) (_ BitVec 64)) Unit!35221)

(assert (=> b!1859193 (= lt!717495 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (index!1077 lt!717476) key!7027))))

(declare-fun lt!717494 () Unit!35221)

(declare-fun lt!717493 () Unit!35221)

(assert (=> b!1859193 (= lt!717494 lt!717493)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6605 (_ BitVec 32)) Bool)

(assert (=> b!1859193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!6606 (store (arr!2934 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))))) (mask!5641 (v!26064 (underlying!4036 thiss!47327))))))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!6605 (_ BitVec 32) (_ BitVec 32)) Unit!35221)

(assert (=> b!1859193 (= lt!717493 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (index!1077 lt!717476) (mask!5641 (v!26064 (underlying!4036 thiss!47327)))))))

(declare-fun lt!717490 () Unit!35221)

(declare-fun lt!717474 () Unit!35221)

(assert (=> b!1859193 (= lt!717490 lt!717474)))

(declare-fun lt!717482 () (_ BitVec 32))

(declare-datatypes ((List!20697 0))(
  ( (Nil!20617) (Cons!20617 (h!26018 (_ BitVec 64)) (t!172570 List!20697)) )
))
(declare-fun lt!717481 () List!20697)

(declare-fun lt!717479 () (_ BitVec 64))

(declare-fun arrayNoDuplicates!0 (array!6605 (_ BitVec 32) List!20697) Bool)

(assert (=> b!1859193 (arrayNoDuplicates!0 (array!6606 (store (arr!2934 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) lt!717479) (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))))) lt!717482 lt!717481)))

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!6605 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!20697) Unit!35221)

(assert (=> b!1859193 (= lt!717474 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) lt!717479 (index!1077 lt!717476) lt!717482 lt!717481))))

(assert (=> b!1859193 (= lt!717481 Nil!20617)))

(assert (=> b!1859193 (= lt!717482 #b00000000000000000000000000000000)))

(assert (=> b!1859193 (= lt!717479 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!717500 () Unit!35221)

(declare-fun lt!717484 () Unit!35221)

(assert (=> b!1859193 (= lt!717500 lt!717484)))

(declare-fun lt!717473 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!6605 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1859193 (= (arrayCountValidKeys!0 (array!6606 (store (arr!2934 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) lt!717473) (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))))) #b00000000000000000000000000000000 (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))))) (bvsub (arrayCountValidKeys!0 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) #b00000000000000000000000000000000 (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))))) #b00000000000000000000000000000001))))

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!6605 (_ BitVec 32) (_ BitVec 64)) Unit!35221)

(assert (=> b!1859193 (= lt!717484 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (index!1077 lt!717476) lt!717473))))

(assert (=> b!1859193 (= lt!717473 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun e!1187332 () tuple2!19902)

(assert (=> b!1859193 (= e!1187332 (tuple2!19903 true (_2!11379 lt!717498)))))

(declare-fun b!1859194 () Bool)

(declare-fun e!1187324 () Bool)

(assert (=> b!1859194 (= e!1187327 e!1187324)))

(declare-fun c!302709 () Bool)

(assert (=> b!1859194 (= c!302709 (_1!11378 lt!717492))))

(declare-fun bm!115644 () Bool)

(declare-fun c!302704 () Bool)

(declare-fun call!115651 () ListLongMap!225)

(assert (=> bm!115644 (= call!115653 (-!106 (ite c!302702 call!115651 call!115648) (ite c!302702 (ite c!302704 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) key!7027)))))

(declare-fun b!1859195 () Bool)

(declare-fun Unit!35223 () Unit!35221)

(assert (=> b!1859195 (= e!1187329 (tuple2!19905 Unit!35223 (LongMapFixedSize!3837 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) (mask!5641 (v!26064 (underlying!4036 thiss!47327))) (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) (zeroValue!2176 (v!26064 (underlying!4036 thiss!47327))) (minValue!2176 (v!26064 (underlying!4036 thiss!47327))) (bvsub (_size!3896 (v!26064 (underlying!4036 thiss!47327))) #b00000000000000000000000000000001) (array!6606 (store (arr!2934 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))))) (array!6608 (store (arr!2935 (_values!2198 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) (dynLambda!10202 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) #b0000000000000000000000000000000000000000000000000000000000000000)) (size!16320 (_values!2198 (v!26064 (underlying!4036 thiss!47327))))) (_vacant!1979 (v!26064 (underlying!4036 thiss!47327))))))))

(declare-fun lt!717477 () V!3913)

(declare-fun lt!717483 () (_ BitVec 32))

(declare-fun bm!115645 () Bool)

(assert (=> bm!115645 (= call!115648 (getCurrentListMap!10 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (_values!2198 (v!26064 (underlying!4036 thiss!47327))) (mask!5641 (v!26064 (underlying!4036 thiss!47327))) (ite c!302702 (ite c!302704 lt!717483 lt!717487) (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327)))) (ite (and c!302702 c!302704) lt!717477 (zeroValue!2176 (v!26064 (underlying!4036 thiss!47327)))) (ite c!302702 (ite c!302704 (minValue!2176 (v!26064 (underlying!4036 thiss!47327))) lt!717488) (minValue!2176 (v!26064 (underlying!4036 thiss!47327)))) #b00000000000000000000000000000000 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327)))))))

(declare-fun bm!115646 () Bool)

(declare-fun call!115650 () ListLongMap!225)

(assert (=> bm!115646 (= call!115650 (map!4367 (_2!11378 lt!717492)))))

(declare-fun call!115652 () ListLongMap!225)

(declare-fun b!1859196 () Bool)

(assert (=> b!1859196 (= e!1187324 (= call!115650 (-!106 call!115652 key!7027)))))

(declare-fun bm!115647 () Bool)

(assert (=> bm!115647 (= call!115651 call!115654)))

(declare-fun b!1859197 () Bool)

(assert (=> b!1859197 (= e!1187326 e!1187332)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!6605 (_ BitVec 32)) SeekEntryResult!9)

(assert (=> b!1859197 (= lt!717476 (seekEntry!0 key!7027 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (mask!5641 (v!26064 (underlying!4036 thiss!47327)))))))

(declare-fun c!302707 () Bool)

(assert (=> b!1859197 (= c!302707 ((_ is Found!9) lt!717476))))

(declare-fun b!1859198 () Bool)

(assert (=> b!1859198 (= e!1187328 (_values!2198 (v!26064 (underlying!4036 thiss!47327))))))

(declare-fun b!1859199 () Bool)

(declare-fun Unit!35224 () Unit!35221)

(assert (=> b!1859199 (= e!1187331 Unit!35224)))

(declare-fun b!1859200 () Bool)

(assert (=> b!1859200 (= e!1187332 (tuple2!19903 false (v!26064 (underlying!4036 thiss!47327))))))

(declare-fun bm!115648 () Bool)

(assert (=> bm!115648 (= call!115649 call!115653)))

(declare-fun b!1859201 () Bool)

(assert (=> b!1859201 (= e!1187324 (= call!115650 call!115652))))

(declare-fun b!1859202 () Bool)

(assert (=> b!1859202 (= e!1187326 e!1187330)))

(assert (=> b!1859202 (= c!302704 (= key!7027 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1859203 () Bool)

(assert (=> b!1859203 (= e!1187325 (arrayContainsKey!0 (_keys!2215 (_2!11379 lt!717498)) key!7027 #b00000000000000000000000000000000))))

(declare-fun b!1859204 () Bool)

(declare-fun Unit!35225 () Unit!35221)

(assert (=> b!1859204 (= e!1187329 (tuple2!19905 Unit!35225 (LongMapFixedSize!3837 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) (mask!5641 (v!26064 (underlying!4036 thiss!47327))) (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) (zeroValue!2176 (v!26064 (underlying!4036 thiss!47327))) (minValue!2176 (v!26064 (underlying!4036 thiss!47327))) (bvsub (_size!3896 (v!26064 (underlying!4036 thiss!47327))) #b00000000000000000000000000000001) (array!6606 (store (arr!2934 (_keys!2215 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16319 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))))) (array!6608 (store (arr!2935 (_values!2198 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) (dynLambda!10202 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) #b0000000000000000000000000000000000000000000000000000000000000000)) (size!16320 (_values!2198 (v!26064 (underlying!4036 thiss!47327))))) lt!717497)))))

(declare-fun b!1859205 () Bool)

(declare-fun lt!717486 () Unit!35221)

(declare-fun lt!717480 () Unit!35221)

(assert (=> b!1859205 (= lt!717486 lt!717480)))

(assert (=> b!1859205 (= call!115649 call!115647)))

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!2 (array!6605 array!6607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3913 V!3913 V!3913 Int) Unit!35221)

(assert (=> b!1859205 (= lt!717480 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!2 (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (_values!2198 (v!26064 (underlying!4036 thiss!47327))) (mask!5641 (v!26064 (underlying!4036 thiss!47327))) (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) lt!717483 (zeroValue!2176 (v!26064 (underlying!4036 thiss!47327))) lt!717477 (minValue!2176 (v!26064 (underlying!4036 thiss!47327))) (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327)))))))

(assert (=> b!1859205 (= lt!717477 (dynLambda!10202 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1859205 (= lt!717483 (bvand (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) #b00000000000000000000000000000010))))

(assert (=> b!1859205 (= e!1187330 (tuple2!19903 true (LongMapFixedSize!3837 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) (mask!5641 (v!26064 (underlying!4036 thiss!47327))) (bvand (extraKeys!2166 (v!26064 (underlying!4036 thiss!47327))) #b00000000000000000000000000000010) (dynLambda!10202 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) #b0000000000000000000000000000000000000000000000000000000000000000) (minValue!2176 (v!26064 (underlying!4036 thiss!47327))) (_size!3896 (v!26064 (underlying!4036 thiss!47327))) (_keys!2215 (v!26064 (underlying!4036 thiss!47327))) (_values!2198 (v!26064 (underlying!4036 thiss!47327))) (_vacant!1979 (v!26064 (underlying!4036 thiss!47327))))))))

(declare-fun b!1859206 () Bool)

(declare-fun Unit!35226 () Unit!35221)

(assert (=> b!1859206 (= e!1187331 Unit!35226)))

(declare-fun lt!717475 () Unit!35221)

(declare-fun lemmaKeyInListMapIsInArray!9 (array!6605 array!6607 (_ BitVec 32) (_ BitVec 32) V!3913 V!3913 (_ BitVec 64) Int) Unit!35221)

(assert (=> b!1859206 (= lt!717475 (lemmaKeyInListMapIsInArray!9 (_keys!2215 (_2!11379 lt!717498)) (_values!2198 (_2!11379 lt!717498)) (mask!5641 (_2!11379 lt!717498)) (extraKeys!2166 (_2!11379 lt!717498)) (zeroValue!2176 (_2!11379 lt!717498)) (minValue!2176 (_2!11379 lt!717498)) key!7027 (defaultEntry!2283 (_2!11379 lt!717498))))))

(declare-fun c!302705 () Bool)

(assert (=> b!1859206 (= c!302705 (and (not (= key!7027 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!7027 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1859206 e!1187325))

(declare-fun lt!717491 () Unit!35221)

(assert (=> b!1859206 (= lt!717491 lt!717475)))

(assert (=> b!1859206 false))

(declare-fun bm!115649 () Bool)

(assert (=> bm!115649 (= call!115652 (map!4367 (v!26064 (underlying!4036 thiss!47327))))))

(declare-fun b!1859207 () Bool)

(assert (=> b!1859207 (= e!1187328 (array!6608 (store (arr!2935 (_values!2198 (v!26064 (underlying!4036 thiss!47327)))) (index!1077 lt!717476) (dynLambda!10202 (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) #b0000000000000000000000000000000000000000000000000000000000000000)) (size!16320 (_values!2198 (v!26064 (underlying!4036 thiss!47327))))))))

(assert (= (and d!567245 c!302702) b!1859202))

(assert (= (and d!567245 (not c!302702)) b!1859197))

(assert (= (and b!1859202 c!302704) b!1859205))

(assert (= (and b!1859202 (not c!302704)) b!1859191))

(assert (= (or b!1859205 b!1859191) bm!115642))

(assert (= (or b!1859205 b!1859191) bm!115647))

(assert (= (or b!1859205 b!1859191) bm!115648))

(assert (= (and b!1859197 c!302707) b!1859193))

(assert (= (and b!1859197 (not c!302707)) b!1859200))

(assert (= (and b!1859193 c!302708) b!1859204))

(assert (= (and b!1859193 (not c!302708)) b!1859195))

(assert (= (and b!1859193 c!302703) b!1859206))

(assert (= (and b!1859193 (not c!302703)) b!1859199))

(assert (= (and b!1859206 c!302705) b!1859203))

(assert (= (and b!1859206 (not c!302705)) b!1859192))

(assert (= (or bm!115642 b!1859193) bm!115645))

(assert (= (or bm!115647 b!1859193) bm!115643))

(assert (= (and bm!115643 c!302706) b!1859198))

(assert (= (and bm!115643 (not c!302706)) b!1859207))

(assert (= (or bm!115648 b!1859193) bm!115644))

(assert (= (and d!567245 res!832709) b!1859194))

(assert (= (and b!1859194 c!302709) b!1859196))

(assert (= (and b!1859194 (not c!302709)) b!1859201))

(assert (= (or b!1859196 b!1859201) bm!115649))

(assert (= (or b!1859196 b!1859201) bm!115646))

(declare-fun b_lambda!61565 () Bool)

(assert (=> (not b_lambda!61565) (not b!1859207)))

(declare-fun t!172567 () Bool)

(declare-fun tb!112933 () Bool)

(assert (=> (and b!1859150 (= (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327)))) t!172567) tb!112933))

(declare-fun result!136266 () Bool)

(assert (=> tb!112933 (= result!136266 tp_is_empty!8603)))

(assert (=> b!1859207 t!172567))

(declare-fun b_and!144269 () Bool)

(assert (= b_and!144267 (and (=> t!172567 result!136266) b_and!144269)))

(declare-fun b_lambda!61567 () Bool)

(assert (=> (not b_lambda!61567) (not b!1859204)))

(assert (=> b!1859204 t!172567))

(declare-fun b_and!144271 () Bool)

(assert (= b_and!144269 (and (=> t!172567 result!136266) b_and!144271)))

(declare-fun b_lambda!61569 () Bool)

(assert (=> (not b_lambda!61569) (not b!1859191)))

(declare-fun t!172569 () Bool)

(declare-fun tb!112935 () Bool)

(assert (=> (and b!1859150 (= (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327))) (defaultEntry!2283 (v!26064 (underlying!4036 thiss!47327)))) t!172569) tb!112935))

(declare-fun result!136270 () Bool)

(assert (=> tb!112935 (= result!136270 tp_is_empty!8603)))

(assert (=> b!1859191 t!172569))

(declare-fun b_and!144273 () Bool)

(assert (= b_and!144271 (and (=> t!172569 result!136270) b_and!144273)))

(declare-fun b_lambda!61571 () Bool)

(assert (=> (not b_lambda!61571) (not b!1859195)))

(assert (=> b!1859195 t!172567))

(declare-fun b_and!144275 () Bool)

(assert (= b_and!144273 (and (=> t!172567 result!136266) b_and!144275)))

(declare-fun b_lambda!61573 () Bool)

(assert (=> (not b_lambda!61573) (not b!1859205)))

(assert (=> b!1859205 t!172567))

(declare-fun b_and!144277 () Bool)

(assert (= b_and!144275 (and (=> t!172567 result!136266) b_and!144277)))

(declare-fun m!2282569 () Bool)

(assert (=> b!1859193 m!2282569))

(declare-fun m!2282571 () Bool)

(assert (=> b!1859193 m!2282571))

(declare-fun m!2282573 () Bool)

(assert (=> b!1859193 m!2282573))

(declare-fun m!2282575 () Bool)

(assert (=> b!1859193 m!2282575))

(declare-fun m!2282577 () Bool)

(assert (=> b!1859193 m!2282577))

(declare-fun m!2282579 () Bool)

(assert (=> b!1859193 m!2282579))

(declare-fun m!2282581 () Bool)

(assert (=> b!1859193 m!2282581))

(declare-fun m!2282583 () Bool)

(assert (=> b!1859193 m!2282583))

(declare-fun m!2282585 () Bool)

(assert (=> b!1859193 m!2282585))

(declare-fun m!2282587 () Bool)

(assert (=> b!1859193 m!2282587))

(assert (=> b!1859193 m!2282575))

(declare-fun m!2282589 () Bool)

(assert (=> b!1859193 m!2282589))

(declare-fun m!2282591 () Bool)

(assert (=> b!1859193 m!2282591))

(declare-fun m!2282593 () Bool)

(assert (=> b!1859193 m!2282593))

(declare-fun m!2282595 () Bool)

(assert (=> b!1859193 m!2282595))

(declare-fun m!2282597 () Bool)

(assert (=> b!1859193 m!2282597))

(declare-fun m!2282599 () Bool)

(assert (=> b!1859197 m!2282599))

(assert (=> b!1859195 m!2282585))

(declare-fun m!2282601 () Bool)

(assert (=> b!1859195 m!2282601))

(declare-fun m!2282603 () Bool)

(assert (=> b!1859195 m!2282603))

(assert (=> b!1859207 m!2282601))

(assert (=> b!1859207 m!2282603))

(declare-fun m!2282605 () Bool)

(assert (=> bm!115646 m!2282605))

(declare-fun m!2282607 () Bool)

(assert (=> b!1859196 m!2282607))

(declare-fun m!2282609 () Bool)

(assert (=> bm!115645 m!2282609))

(assert (=> bm!115643 m!2282585))

(declare-fun m!2282611 () Bool)

(assert (=> bm!115643 m!2282611))

(declare-fun m!2282613 () Bool)

(assert (=> b!1859206 m!2282613))

(assert (=> bm!115649 m!2282565))

(declare-fun m!2282615 () Bool)

(assert (=> d!567245 m!2282615))

(declare-fun m!2282617 () Bool)

(assert (=> d!567245 m!2282617))

(declare-fun m!2282619 () Bool)

(assert (=> b!1859205 m!2282619))

(assert (=> b!1859205 m!2282601))

(declare-fun m!2282621 () Bool)

(assert (=> bm!115644 m!2282621))

(declare-fun m!2282623 () Bool)

(assert (=> b!1859191 m!2282623))

(declare-fun m!2282625 () Bool)

(assert (=> b!1859191 m!2282625))

(declare-fun m!2282627 () Bool)

(assert (=> b!1859203 m!2282627))

(assert (=> b!1859204 m!2282585))

(assert (=> b!1859204 m!2282601))

(assert (=> b!1859204 m!2282603))

(assert (=> b!1859156 d!567245))

(declare-fun d!567247 () Bool)

(assert (=> d!567247 (= (valid!1547 thiss!47327) (valid!1548 (v!26064 (underlying!4036 thiss!47327))))))

(declare-fun bs!410780 () Bool)

(assert (= bs!410780 d!567247))

(assert (=> bs!410780 m!2282617))

(assert (=> b!1859154 d!567247))

(declare-fun d!567249 () Bool)

(assert (=> d!567249 (= (map!4366 lt!717409) (map!4367 (v!26064 (underlying!4036 lt!717409))))))

(declare-fun bs!410781 () Bool)

(assert (= bs!410781 d!567249))

(declare-fun m!2282629 () Bool)

(assert (=> bs!410781 m!2282629))

(assert (=> bm!115624 d!567249))

(declare-fun condMapEmpty!8912 () Bool)

(declare-fun mapDefault!8912 () V!3913)

(assert (=> mapNonEmpty!8909 (= condMapEmpty!8912 (= mapRest!8909 ((as const (Array (_ BitVec 32) V!3913)) mapDefault!8912)))))

(declare-fun mapRes!8912 () Bool)

(assert (=> mapNonEmpty!8909 (= tp!529956 (and tp_is_empty!8603 mapRes!8912))))

(declare-fun mapIsEmpty!8912 () Bool)

(assert (=> mapIsEmpty!8912 mapRes!8912))

(declare-fun mapNonEmpty!8912 () Bool)

(declare-fun tp!529960 () Bool)

(assert (=> mapNonEmpty!8912 (= mapRes!8912 (and tp!529960 tp_is_empty!8603))))

(declare-fun mapValue!8912 () V!3913)

(declare-fun mapRest!8912 () (Array (_ BitVec 32) V!3913))

(declare-fun mapKey!8912 () (_ BitVec 32))

(assert (=> mapNonEmpty!8912 (= mapRest!8909 (store mapRest!8912 mapKey!8912 mapValue!8912))))

(assert (= (and mapNonEmpty!8909 condMapEmpty!8912) mapIsEmpty!8912))

(assert (= (and mapNonEmpty!8909 (not condMapEmpty!8912)) mapNonEmpty!8912))

(declare-fun m!2282631 () Bool)

(assert (=> mapNonEmpty!8912 m!2282631))

(declare-fun b_lambda!61575 () Bool)

(assert (= b_lambda!61569 (or (and b!1859150 b_free!51999) b_lambda!61575)))

(declare-fun b_lambda!61577 () Bool)

(assert (= b_lambda!61567 (or (and b!1859150 b_free!51999) b_lambda!61577)))

(declare-fun b_lambda!61579 () Bool)

(assert (= b_lambda!61565 (or (and b!1859150 b_free!51999) b_lambda!61579)))

(declare-fun b_lambda!61581 () Bool)

(assert (= b_lambda!61573 (or (and b!1859150 b_free!51999) b_lambda!61581)))

(declare-fun b_lambda!61583 () Bool)

(assert (= b_lambda!61571 (or (and b!1859150 b_free!51999) b_lambda!61583)))

(check-sat (not b!1859191) (not d!567239) (not b_lambda!61575) (not bm!115649) (not b_lambda!61579) (not b!1859197) (not b_next!52703) b_and!144277 (not b!1859203) (not b!1859206) (not b_lambda!61577) (not d!567243) tp_is_empty!8603 (not bm!115644) (not b!1859205) (not b_lambda!61583) (not bm!115643) (not b_lambda!61581) (not d!567247) (not b!1859196) (not bm!115645) (not mapNonEmpty!8912) (not d!567241) (not d!567245) (not bm!115646) (not b!1859193) (not d!567249))
(check-sat b_and!144277 (not b_next!52703))

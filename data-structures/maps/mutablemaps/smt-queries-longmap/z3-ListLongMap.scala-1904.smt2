; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33948 () Bool)

(assert start!33948)

(declare-fun b_free!7095 () Bool)

(declare-fun b_next!7095 () Bool)

(assert (=> start!33948 (= b_free!7095 (not b_next!7095))))

(declare-fun tp!24800 () Bool)

(declare-fun b_and!14301 () Bool)

(assert (=> start!33948 (= tp!24800 b_and!14301)))

(declare-fun b!337846 () Bool)

(declare-fun res!186707 () Bool)

(declare-fun e!207314 () Bool)

(assert (=> b!337846 (=> (not res!186707) (not e!207314))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10373 0))(
  ( (V!10374 (val!3568 Int)) )
))
(declare-datatypes ((ValueCell!3180 0))(
  ( (ValueCellFull!3180 (v!5730 V!10373)) (EmptyCell!3180) )
))
(declare-datatypes ((array!17659 0))(
  ( (array!17660 (arr!8353 (Array (_ BitVec 32) ValueCell!3180)) (size!8705 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17659)

(declare-datatypes ((array!17661 0))(
  ( (array!17662 (arr!8354 (Array (_ BitVec 32) (_ BitVec 64))) (size!8706 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17661)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!337846 (= res!186707 (and (= (size!8705 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8706 _keys!1895) (size!8705 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!337847 () Bool)

(declare-fun e!207311 () Bool)

(declare-fun tp_is_empty!7047 () Bool)

(assert (=> b!337847 (= e!207311 tp_is_empty!7047)))

(declare-fun b!337848 () Bool)

(declare-fun e!207309 () Bool)

(assert (=> b!337848 (= e!207314 e!207309)))

(declare-fun res!186708 () Bool)

(assert (=> b!337848 (=> (not res!186708) (not e!207309))))

(declare-datatypes ((SeekEntryResult!3232 0))(
  ( (MissingZero!3232 (index!15107 (_ BitVec 32))) (Found!3232 (index!15108 (_ BitVec 32))) (Intermediate!3232 (undefined!4044 Bool) (index!15109 (_ BitVec 32)) (x!33681 (_ BitVec 32))) (Undefined!3232) (MissingVacant!3232 (index!15110 (_ BitVec 32))) )
))
(declare-fun lt!160602 () SeekEntryResult!3232)

(get-info :version)

(assert (=> b!337848 (= res!186708 (and (not ((_ is Found!3232) lt!160602)) ((_ is MissingZero!3232) lt!160602)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17661 (_ BitVec 32)) SeekEntryResult!3232)

(assert (=> b!337848 (= lt!160602 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!337849 () Bool)

(declare-fun res!186705 () Bool)

(assert (=> b!337849 (=> (not res!186705) (not e!207314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337849 (= res!186705 (validKeyInArray!0 k0!1348))))

(declare-fun b!337850 () Bool)

(declare-fun e!207310 () Bool)

(declare-fun e!207315 () Bool)

(declare-fun mapRes!11979 () Bool)

(assert (=> b!337850 (= e!207310 (and e!207315 mapRes!11979))))

(declare-fun condMapEmpty!11979 () Bool)

(declare-fun mapDefault!11979 () ValueCell!3180)

(assert (=> b!337850 (= condMapEmpty!11979 (= (arr!8353 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3180)) mapDefault!11979)))))

(declare-fun b!337851 () Bool)

(assert (=> b!337851 (= e!207315 tp_is_empty!7047)))

(declare-fun res!186706 () Bool)

(assert (=> start!33948 (=> (not res!186706) (not e!207314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33948 (= res!186706 (validMask!0 mask!2385))))

(assert (=> start!33948 e!207314))

(assert (=> start!33948 true))

(assert (=> start!33948 tp_is_empty!7047))

(assert (=> start!33948 tp!24800))

(declare-fun array_inv!6188 (array!17659) Bool)

(assert (=> start!33948 (and (array_inv!6188 _values!1525) e!207310)))

(declare-fun array_inv!6189 (array!17661) Bool)

(assert (=> start!33948 (array_inv!6189 _keys!1895)))

(declare-fun mapNonEmpty!11979 () Bool)

(declare-fun tp!24801 () Bool)

(assert (=> mapNonEmpty!11979 (= mapRes!11979 (and tp!24801 e!207311))))

(declare-fun mapRest!11979 () (Array (_ BitVec 32) ValueCell!3180))

(declare-fun mapValue!11979 () ValueCell!3180)

(declare-fun mapKey!11979 () (_ BitVec 32))

(assert (=> mapNonEmpty!11979 (= (arr!8353 _values!1525) (store mapRest!11979 mapKey!11979 mapValue!11979))))

(declare-fun b!337852 () Bool)

(assert (=> b!337852 (= e!207309 (and (bvslt #b00000000000000000000000000000000 (size!8706 _keys!1895)) (bvsge (size!8706 _keys!1895) #b01111111111111111111111111111111)))))

(declare-datatypes ((Unit!10470 0))(
  ( (Unit!10471) )
))
(declare-fun lt!160600 () Unit!10470)

(declare-fun e!207313 () Unit!10470)

(assert (=> b!337852 (= lt!160600 e!207313)))

(declare-fun c!52286 () Bool)

(declare-fun arrayContainsKey!0 (array!17661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337852 (= c!52286 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!337853 () Bool)

(declare-fun res!186710 () Bool)

(assert (=> b!337853 (=> (not res!186710) (not e!207314))))

(declare-fun zeroValue!1467 () V!10373)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10373)

(declare-datatypes ((tuple2!5172 0))(
  ( (tuple2!5173 (_1!2596 (_ BitVec 64)) (_2!2596 V!10373)) )
))
(declare-datatypes ((List!4812 0))(
  ( (Nil!4809) (Cons!4808 (h!5664 tuple2!5172) (t!9916 List!4812)) )
))
(declare-datatypes ((ListLongMap!4099 0))(
  ( (ListLongMap!4100 (toList!2065 List!4812)) )
))
(declare-fun contains!2109 (ListLongMap!4099 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1585 (array!17661 array!17659 (_ BitVec 32) (_ BitVec 32) V!10373 V!10373 (_ BitVec 32) Int) ListLongMap!4099)

(assert (=> b!337853 (= res!186710 (not (contains!2109 (getCurrentListMap!1585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!337854 () Bool)

(declare-fun Unit!10472 () Unit!10470)

(assert (=> b!337854 (= e!207313 Unit!10472)))

(declare-fun b!337855 () Bool)

(declare-fun res!186709 () Bool)

(assert (=> b!337855 (=> (not res!186709) (not e!207314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17661 (_ BitVec 32)) Bool)

(assert (=> b!337855 (= res!186709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!337856 () Bool)

(declare-fun res!186704 () Bool)

(assert (=> b!337856 (=> (not res!186704) (not e!207314))))

(declare-datatypes ((List!4813 0))(
  ( (Nil!4810) (Cons!4809 (h!5665 (_ BitVec 64)) (t!9917 List!4813)) )
))
(declare-fun arrayNoDuplicates!0 (array!17661 (_ BitVec 32) List!4813) Bool)

(assert (=> b!337856 (= res!186704 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4810))))

(declare-fun b!337857 () Bool)

(declare-fun Unit!10473 () Unit!10470)

(assert (=> b!337857 (= e!207313 Unit!10473)))

(declare-fun lt!160601 () Unit!10470)

(declare-fun lemmaArrayContainsKeyThenInListMap!265 (array!17661 array!17659 (_ BitVec 32) (_ BitVec 32) V!10373 V!10373 (_ BitVec 64) (_ BitVec 32) Int) Unit!10470)

(declare-fun arrayScanForKey!0 (array!17661 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337857 (= lt!160601 (lemmaArrayContainsKeyThenInListMap!265 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!337857 false))

(declare-fun mapIsEmpty!11979 () Bool)

(assert (=> mapIsEmpty!11979 mapRes!11979))

(assert (= (and start!33948 res!186706) b!337846))

(assert (= (and b!337846 res!186707) b!337855))

(assert (= (and b!337855 res!186709) b!337856))

(assert (= (and b!337856 res!186704) b!337849))

(assert (= (and b!337849 res!186705) b!337853))

(assert (= (and b!337853 res!186710) b!337848))

(assert (= (and b!337848 res!186708) b!337852))

(assert (= (and b!337852 c!52286) b!337857))

(assert (= (and b!337852 (not c!52286)) b!337854))

(assert (= (and b!337850 condMapEmpty!11979) mapIsEmpty!11979))

(assert (= (and b!337850 (not condMapEmpty!11979)) mapNonEmpty!11979))

(assert (= (and mapNonEmpty!11979 ((_ is ValueCellFull!3180) mapValue!11979)) b!337847))

(assert (= (and b!337850 ((_ is ValueCellFull!3180) mapDefault!11979)) b!337851))

(assert (= start!33948 b!337850))

(declare-fun m!341247 () Bool)

(assert (=> b!337857 m!341247))

(assert (=> b!337857 m!341247))

(declare-fun m!341249 () Bool)

(assert (=> b!337857 m!341249))

(declare-fun m!341251 () Bool)

(assert (=> b!337855 m!341251))

(declare-fun m!341253 () Bool)

(assert (=> b!337853 m!341253))

(assert (=> b!337853 m!341253))

(declare-fun m!341255 () Bool)

(assert (=> b!337853 m!341255))

(declare-fun m!341257 () Bool)

(assert (=> mapNonEmpty!11979 m!341257))

(declare-fun m!341259 () Bool)

(assert (=> b!337856 m!341259))

(declare-fun m!341261 () Bool)

(assert (=> start!33948 m!341261))

(declare-fun m!341263 () Bool)

(assert (=> start!33948 m!341263))

(declare-fun m!341265 () Bool)

(assert (=> start!33948 m!341265))

(declare-fun m!341267 () Bool)

(assert (=> b!337848 m!341267))

(declare-fun m!341269 () Bool)

(assert (=> b!337849 m!341269))

(declare-fun m!341271 () Bool)

(assert (=> b!337852 m!341271))

(check-sat (not start!33948) (not b!337855) tp_is_empty!7047 (not b!337853) (not b_next!7095) (not b!337852) (not b!337857) (not mapNonEmpty!11979) (not b!337849) b_and!14301 (not b!337856) (not b!337848))
(check-sat b_and!14301 (not b_next!7095))
(get-model)

(declare-fun d!70635 () Bool)

(declare-fun e!207341 () Bool)

(assert (=> d!70635 e!207341))

(declare-fun res!186734 () Bool)

(assert (=> d!70635 (=> res!186734 e!207341)))

(declare-fun lt!160622 () Bool)

(assert (=> d!70635 (= res!186734 (not lt!160622))))

(declare-fun lt!160621 () Bool)

(assert (=> d!70635 (= lt!160622 lt!160621)))

(declare-fun lt!160623 () Unit!10470)

(declare-fun e!207342 () Unit!10470)

(assert (=> d!70635 (= lt!160623 e!207342)))

(declare-fun c!52292 () Bool)

(assert (=> d!70635 (= c!52292 lt!160621)))

(declare-fun containsKey!319 (List!4812 (_ BitVec 64)) Bool)

(assert (=> d!70635 (= lt!160621 (containsKey!319 (toList!2065 (getCurrentListMap!1585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70635 (= (contains!2109 (getCurrentListMap!1585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!160622)))

(declare-fun b!337900 () Bool)

(declare-fun lt!160620 () Unit!10470)

(assert (=> b!337900 (= e!207342 lt!160620)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!268 (List!4812 (_ BitVec 64)) Unit!10470)

(assert (=> b!337900 (= lt!160620 (lemmaContainsKeyImpliesGetValueByKeyDefined!268 (toList!2065 (getCurrentListMap!1585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!333 0))(
  ( (Some!332 (v!5732 V!10373)) (None!331) )
))
(declare-fun isDefined!269 (Option!333) Bool)

(declare-fun getValueByKey!327 (List!4812 (_ BitVec 64)) Option!333)

(assert (=> b!337900 (isDefined!269 (getValueByKey!327 (toList!2065 (getCurrentListMap!1585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!337901 () Bool)

(declare-fun Unit!10477 () Unit!10470)

(assert (=> b!337901 (= e!207342 Unit!10477)))

(declare-fun b!337902 () Bool)

(assert (=> b!337902 (= e!207341 (isDefined!269 (getValueByKey!327 (toList!2065 (getCurrentListMap!1585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70635 c!52292) b!337900))

(assert (= (and d!70635 (not c!52292)) b!337901))

(assert (= (and d!70635 (not res!186734)) b!337902))

(declare-fun m!341299 () Bool)

(assert (=> d!70635 m!341299))

(declare-fun m!341301 () Bool)

(assert (=> b!337900 m!341301))

(declare-fun m!341303 () Bool)

(assert (=> b!337900 m!341303))

(assert (=> b!337900 m!341303))

(declare-fun m!341305 () Bool)

(assert (=> b!337900 m!341305))

(assert (=> b!337902 m!341303))

(assert (=> b!337902 m!341303))

(assert (=> b!337902 m!341305))

(assert (=> b!337853 d!70635))

(declare-fun d!70637 () Bool)

(declare-fun e!207381 () Bool)

(assert (=> d!70637 e!207381))

(declare-fun res!186761 () Bool)

(assert (=> d!70637 (=> (not res!186761) (not e!207381))))

(assert (=> d!70637 (= res!186761 (or (bvsge #b00000000000000000000000000000000 (size!8706 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8706 _keys!1895)))))))

(declare-fun lt!160673 () ListLongMap!4099)

(declare-fun lt!160687 () ListLongMap!4099)

(assert (=> d!70637 (= lt!160673 lt!160687)))

(declare-fun lt!160672 () Unit!10470)

(declare-fun e!207379 () Unit!10470)

(assert (=> d!70637 (= lt!160672 e!207379)))

(declare-fun c!52310 () Bool)

(declare-fun e!207369 () Bool)

(assert (=> d!70637 (= c!52310 e!207369)))

(declare-fun res!186755 () Bool)

(assert (=> d!70637 (=> (not res!186755) (not e!207369))))

(assert (=> d!70637 (= res!186755 (bvslt #b00000000000000000000000000000000 (size!8706 _keys!1895)))))

(declare-fun e!207372 () ListLongMap!4099)

(assert (=> d!70637 (= lt!160687 e!207372)))

(declare-fun c!52308 () Bool)

(assert (=> d!70637 (= c!52308 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70637 (validMask!0 mask!2385)))

(assert (=> d!70637 (= (getCurrentListMap!1585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!160673)))

(declare-fun b!337945 () Bool)

(declare-fun res!186759 () Bool)

(assert (=> b!337945 (=> (not res!186759) (not e!207381))))

(declare-fun e!207377 () Bool)

(assert (=> b!337945 (= res!186759 e!207377)))

(declare-fun c!52309 () Bool)

(assert (=> b!337945 (= c!52309 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!337946 () Bool)

(declare-fun res!186756 () Bool)

(assert (=> b!337946 (=> (not res!186756) (not e!207381))))

(declare-fun e!207380 () Bool)

(assert (=> b!337946 (= res!186756 e!207380)))

(declare-fun res!186760 () Bool)

(assert (=> b!337946 (=> res!186760 e!207380)))

(declare-fun e!207374 () Bool)

(assert (=> b!337946 (= res!186760 (not e!207374))))

(declare-fun res!186753 () Bool)

(assert (=> b!337946 (=> (not res!186753) (not e!207374))))

(assert (=> b!337946 (= res!186753 (bvslt #b00000000000000000000000000000000 (size!8706 _keys!1895)))))

(declare-fun b!337947 () Bool)

(assert (=> b!337947 (= e!207374 (validKeyInArray!0 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!337948 () Bool)

(declare-fun e!207370 () Bool)

(assert (=> b!337948 (= e!207377 e!207370)))

(declare-fun res!186757 () Bool)

(declare-fun call!26416 () Bool)

(assert (=> b!337948 (= res!186757 call!26416)))

(assert (=> b!337948 (=> (not res!186757) (not e!207370))))

(declare-fun b!337949 () Bool)

(declare-fun e!207373 () Bool)

(declare-fun apply!270 (ListLongMap!4099 (_ BitVec 64)) V!10373)

(declare-fun get!4565 (ValueCell!3180 V!10373) V!10373)

(declare-fun dynLambda!608 (Int (_ BitVec 64)) V!10373)

(assert (=> b!337949 (= e!207373 (= (apply!270 lt!160673 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000)) (get!4565 (select (arr!8353 _values!1525) #b00000000000000000000000000000000) (dynLambda!608 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!337949 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8705 _values!1525)))))

(assert (=> b!337949 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8706 _keys!1895)))))

(declare-fun b!337950 () Bool)

(declare-fun e!207375 () Bool)

(assert (=> b!337950 (= e!207381 e!207375)))

(declare-fun c!52307 () Bool)

(assert (=> b!337950 (= c!52307 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!337951 () Bool)

(declare-fun lt!160670 () Unit!10470)

(assert (=> b!337951 (= e!207379 lt!160670)))

(declare-fun lt!160679 () ListLongMap!4099)

(declare-fun getCurrentListMapNoExtraKeys!589 (array!17661 array!17659 (_ BitVec 32) (_ BitVec 32) V!10373 V!10373 (_ BitVec 32) Int) ListLongMap!4099)

(assert (=> b!337951 (= lt!160679 (getCurrentListMapNoExtraKeys!589 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160689 () (_ BitVec 64))

(assert (=> b!337951 (= lt!160689 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160674 () (_ BitVec 64))

(assert (=> b!337951 (= lt!160674 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160688 () Unit!10470)

(declare-fun addStillContains!246 (ListLongMap!4099 (_ BitVec 64) V!10373 (_ BitVec 64)) Unit!10470)

(assert (=> b!337951 (= lt!160688 (addStillContains!246 lt!160679 lt!160689 zeroValue!1467 lt!160674))))

(declare-fun +!714 (ListLongMap!4099 tuple2!5172) ListLongMap!4099)

(assert (=> b!337951 (contains!2109 (+!714 lt!160679 (tuple2!5173 lt!160689 zeroValue!1467)) lt!160674)))

(declare-fun lt!160686 () Unit!10470)

(assert (=> b!337951 (= lt!160686 lt!160688)))

(declare-fun lt!160681 () ListLongMap!4099)

(assert (=> b!337951 (= lt!160681 (getCurrentListMapNoExtraKeys!589 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160682 () (_ BitVec 64))

(assert (=> b!337951 (= lt!160682 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160684 () (_ BitVec 64))

(assert (=> b!337951 (= lt!160684 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160676 () Unit!10470)

(declare-fun addApplyDifferent!246 (ListLongMap!4099 (_ BitVec 64) V!10373 (_ BitVec 64)) Unit!10470)

(assert (=> b!337951 (= lt!160676 (addApplyDifferent!246 lt!160681 lt!160682 minValue!1467 lt!160684))))

(assert (=> b!337951 (= (apply!270 (+!714 lt!160681 (tuple2!5173 lt!160682 minValue!1467)) lt!160684) (apply!270 lt!160681 lt!160684))))

(declare-fun lt!160671 () Unit!10470)

(assert (=> b!337951 (= lt!160671 lt!160676)))

(declare-fun lt!160677 () ListLongMap!4099)

(assert (=> b!337951 (= lt!160677 (getCurrentListMapNoExtraKeys!589 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160675 () (_ BitVec 64))

(assert (=> b!337951 (= lt!160675 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160669 () (_ BitVec 64))

(assert (=> b!337951 (= lt!160669 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160668 () Unit!10470)

(assert (=> b!337951 (= lt!160668 (addApplyDifferent!246 lt!160677 lt!160675 zeroValue!1467 lt!160669))))

(assert (=> b!337951 (= (apply!270 (+!714 lt!160677 (tuple2!5173 lt!160675 zeroValue!1467)) lt!160669) (apply!270 lt!160677 lt!160669))))

(declare-fun lt!160678 () Unit!10470)

(assert (=> b!337951 (= lt!160678 lt!160668)))

(declare-fun lt!160680 () ListLongMap!4099)

(assert (=> b!337951 (= lt!160680 (getCurrentListMapNoExtraKeys!589 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160683 () (_ BitVec 64))

(assert (=> b!337951 (= lt!160683 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160685 () (_ BitVec 64))

(assert (=> b!337951 (= lt!160685 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!337951 (= lt!160670 (addApplyDifferent!246 lt!160680 lt!160683 minValue!1467 lt!160685))))

(assert (=> b!337951 (= (apply!270 (+!714 lt!160680 (tuple2!5173 lt!160683 minValue!1467)) lt!160685) (apply!270 lt!160680 lt!160685))))

(declare-fun b!337952 () Bool)

(declare-fun e!207371 () ListLongMap!4099)

(assert (=> b!337952 (= e!207372 e!207371)))

(declare-fun c!52306 () Bool)

(assert (=> b!337952 (= c!52306 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!337953 () Bool)

(declare-fun e!207376 () ListLongMap!4099)

(declare-fun call!26418 () ListLongMap!4099)

(assert (=> b!337953 (= e!207376 call!26418)))

(declare-fun call!26414 () ListLongMap!4099)

(declare-fun call!26417 () ListLongMap!4099)

(declare-fun bm!26411 () Bool)

(declare-fun call!26420 () ListLongMap!4099)

(assert (=> bm!26411 (= call!26414 (+!714 (ite c!52308 call!26420 (ite c!52306 call!26417 call!26418)) (ite (or c!52308 c!52306) (tuple2!5173 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5173 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!337954 () Bool)

(declare-fun e!207378 () Bool)

(assert (=> b!337954 (= e!207378 (= (apply!270 lt!160673 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!337955 () Bool)

(declare-fun call!26415 () ListLongMap!4099)

(assert (=> b!337955 (= e!207371 call!26415)))

(declare-fun b!337956 () Bool)

(assert (=> b!337956 (= e!207370 (= (apply!270 lt!160673 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!337957 () Bool)

(assert (=> b!337957 (= e!207375 e!207378)))

(declare-fun res!186754 () Bool)

(declare-fun call!26419 () Bool)

(assert (=> b!337957 (= res!186754 call!26419)))

(assert (=> b!337957 (=> (not res!186754) (not e!207378))))

(declare-fun b!337958 () Bool)

(assert (=> b!337958 (= e!207369 (validKeyInArray!0 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!337959 () Bool)

(assert (=> b!337959 (= e!207372 (+!714 call!26414 (tuple2!5173 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!337960 () Bool)

(assert (=> b!337960 (= e!207375 (not call!26419))))

(declare-fun bm!26412 () Bool)

(assert (=> bm!26412 (= call!26418 call!26417)))

(declare-fun bm!26413 () Bool)

(assert (=> bm!26413 (= call!26419 (contains!2109 lt!160673 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!337961 () Bool)

(declare-fun c!52305 () Bool)

(assert (=> b!337961 (= c!52305 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!337961 (= e!207371 e!207376)))

(declare-fun bm!26414 () Bool)

(assert (=> bm!26414 (= call!26415 call!26414)))

(declare-fun b!337962 () Bool)

(assert (=> b!337962 (= e!207377 (not call!26416))))

(declare-fun b!337963 () Bool)

(assert (=> b!337963 (= e!207376 call!26415)))

(declare-fun bm!26415 () Bool)

(assert (=> bm!26415 (= call!26420 (getCurrentListMapNoExtraKeys!589 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun bm!26416 () Bool)

(assert (=> bm!26416 (= call!26417 call!26420)))

(declare-fun b!337964 () Bool)

(declare-fun Unit!10478 () Unit!10470)

(assert (=> b!337964 (= e!207379 Unit!10478)))

(declare-fun bm!26417 () Bool)

(assert (=> bm!26417 (= call!26416 (contains!2109 lt!160673 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!337965 () Bool)

(assert (=> b!337965 (= e!207380 e!207373)))

(declare-fun res!186758 () Bool)

(assert (=> b!337965 (=> (not res!186758) (not e!207373))))

(assert (=> b!337965 (= res!186758 (contains!2109 lt!160673 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!337965 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8706 _keys!1895)))))

(assert (= (and d!70637 c!52308) b!337959))

(assert (= (and d!70637 (not c!52308)) b!337952))

(assert (= (and b!337952 c!52306) b!337955))

(assert (= (and b!337952 (not c!52306)) b!337961))

(assert (= (and b!337961 c!52305) b!337963))

(assert (= (and b!337961 (not c!52305)) b!337953))

(assert (= (or b!337963 b!337953) bm!26412))

(assert (= (or b!337955 bm!26412) bm!26416))

(assert (= (or b!337955 b!337963) bm!26414))

(assert (= (or b!337959 bm!26416) bm!26415))

(assert (= (or b!337959 bm!26414) bm!26411))

(assert (= (and d!70637 res!186755) b!337958))

(assert (= (and d!70637 c!52310) b!337951))

(assert (= (and d!70637 (not c!52310)) b!337964))

(assert (= (and d!70637 res!186761) b!337946))

(assert (= (and b!337946 res!186753) b!337947))

(assert (= (and b!337946 (not res!186760)) b!337965))

(assert (= (and b!337965 res!186758) b!337949))

(assert (= (and b!337946 res!186756) b!337945))

(assert (= (and b!337945 c!52309) b!337948))

(assert (= (and b!337945 (not c!52309)) b!337962))

(assert (= (and b!337948 res!186757) b!337956))

(assert (= (or b!337948 b!337962) bm!26417))

(assert (= (and b!337945 res!186759) b!337950))

(assert (= (and b!337950 c!52307) b!337957))

(assert (= (and b!337950 (not c!52307)) b!337960))

(assert (= (and b!337957 res!186754) b!337954))

(assert (= (or b!337957 b!337960) bm!26413))

(declare-fun b_lambda!8449 () Bool)

(assert (=> (not b_lambda!8449) (not b!337949)))

(declare-fun t!9920 () Bool)

(declare-fun tb!3063 () Bool)

(assert (=> (and start!33948 (= defaultEntry!1528 defaultEntry!1528) t!9920) tb!3063))

(declare-fun result!5503 () Bool)

(assert (=> tb!3063 (= result!5503 tp_is_empty!7047)))

(assert (=> b!337949 t!9920))

(declare-fun b_and!14305 () Bool)

(assert (= b_and!14301 (and (=> t!9920 result!5503) b_and!14305)))

(declare-fun m!341307 () Bool)

(assert (=> b!337959 m!341307))

(declare-fun m!341309 () Bool)

(assert (=> b!337949 m!341309))

(declare-fun m!341311 () Bool)

(assert (=> b!337949 m!341311))

(assert (=> b!337949 m!341309))

(declare-fun m!341313 () Bool)

(assert (=> b!337949 m!341313))

(declare-fun m!341315 () Bool)

(assert (=> b!337949 m!341315))

(assert (=> b!337949 m!341313))

(assert (=> b!337949 m!341311))

(declare-fun m!341317 () Bool)

(assert (=> b!337949 m!341317))

(declare-fun m!341319 () Bool)

(assert (=> b!337954 m!341319))

(declare-fun m!341321 () Bool)

(assert (=> bm!26413 m!341321))

(declare-fun m!341323 () Bool)

(assert (=> b!337956 m!341323))

(assert (=> b!337947 m!341311))

(assert (=> b!337947 m!341311))

(declare-fun m!341325 () Bool)

(assert (=> b!337947 m!341325))

(assert (=> b!337958 m!341311))

(assert (=> b!337958 m!341311))

(assert (=> b!337958 m!341325))

(declare-fun m!341327 () Bool)

(assert (=> b!337951 m!341327))

(declare-fun m!341329 () Bool)

(assert (=> b!337951 m!341329))

(declare-fun m!341331 () Bool)

(assert (=> b!337951 m!341331))

(declare-fun m!341333 () Bool)

(assert (=> b!337951 m!341333))

(declare-fun m!341335 () Bool)

(assert (=> b!337951 m!341335))

(assert (=> b!337951 m!341333))

(declare-fun m!341337 () Bool)

(assert (=> b!337951 m!341337))

(assert (=> b!337951 m!341337))

(declare-fun m!341339 () Bool)

(assert (=> b!337951 m!341339))

(declare-fun m!341341 () Bool)

(assert (=> b!337951 m!341341))

(declare-fun m!341343 () Bool)

(assert (=> b!337951 m!341343))

(declare-fun m!341345 () Bool)

(assert (=> b!337951 m!341345))

(declare-fun m!341347 () Bool)

(assert (=> b!337951 m!341347))

(declare-fun m!341349 () Bool)

(assert (=> b!337951 m!341349))

(assert (=> b!337951 m!341311))

(declare-fun m!341351 () Bool)

(assert (=> b!337951 m!341351))

(declare-fun m!341353 () Bool)

(assert (=> b!337951 m!341353))

(declare-fun m!341355 () Bool)

(assert (=> b!337951 m!341355))

(declare-fun m!341357 () Bool)

(assert (=> b!337951 m!341357))

(assert (=> b!337951 m!341351))

(assert (=> b!337951 m!341343))

(assert (=> d!70637 m!341261))

(assert (=> b!337965 m!341311))

(assert (=> b!337965 m!341311))

(declare-fun m!341359 () Bool)

(assert (=> b!337965 m!341359))

(declare-fun m!341361 () Bool)

(assert (=> bm!26417 m!341361))

(declare-fun m!341363 () Bool)

(assert (=> bm!26411 m!341363))

(assert (=> bm!26415 m!341327))

(assert (=> b!337853 d!70637))

(declare-fun d!70639 () Bool)

(assert (=> d!70639 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!337849 d!70639))

(declare-fun d!70641 () Bool)

(assert (=> d!70641 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33948 d!70641))

(declare-fun d!70643 () Bool)

(assert (=> d!70643 (= (array_inv!6188 _values!1525) (bvsge (size!8705 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33948 d!70643))

(declare-fun d!70645 () Bool)

(assert (=> d!70645 (= (array_inv!6189 _keys!1895) (bvsge (size!8706 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33948 d!70645))

(declare-fun b!337977 () Bool)

(declare-fun e!207388 () Bool)

(declare-fun call!26423 () Bool)

(assert (=> b!337977 (= e!207388 call!26423)))

(declare-fun b!337978 () Bool)

(declare-fun e!207390 () Bool)

(assert (=> b!337978 (= e!207390 call!26423)))

(declare-fun b!337979 () Bool)

(assert (=> b!337979 (= e!207390 e!207388)))

(declare-fun lt!160697 () (_ BitVec 64))

(assert (=> b!337979 (= lt!160697 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160696 () Unit!10470)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17661 (_ BitVec 64) (_ BitVec 32)) Unit!10470)

(assert (=> b!337979 (= lt!160696 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!160697 #b00000000000000000000000000000000))))

(assert (=> b!337979 (arrayContainsKey!0 _keys!1895 lt!160697 #b00000000000000000000000000000000)))

(declare-fun lt!160698 () Unit!10470)

(assert (=> b!337979 (= lt!160698 lt!160696)))

(declare-fun res!186766 () Bool)

(assert (=> b!337979 (= res!186766 (= (seekEntryOrOpen!0 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3232 #b00000000000000000000000000000000)))))

(assert (=> b!337979 (=> (not res!186766) (not e!207388))))

(declare-fun bm!26420 () Bool)

(assert (=> bm!26420 (= call!26423 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun d!70647 () Bool)

(declare-fun res!186767 () Bool)

(declare-fun e!207389 () Bool)

(assert (=> d!70647 (=> res!186767 e!207389)))

(assert (=> d!70647 (= res!186767 (bvsge #b00000000000000000000000000000000 (size!8706 _keys!1895)))))

(assert (=> d!70647 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!207389)))

(declare-fun b!337976 () Bool)

(assert (=> b!337976 (= e!207389 e!207390)))

(declare-fun c!52313 () Bool)

(assert (=> b!337976 (= c!52313 (validKeyInArray!0 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70647 (not res!186767)) b!337976))

(assert (= (and b!337976 c!52313) b!337979))

(assert (= (and b!337976 (not c!52313)) b!337978))

(assert (= (and b!337979 res!186766) b!337977))

(assert (= (or b!337977 b!337978) bm!26420))

(assert (=> b!337979 m!341311))

(declare-fun m!341365 () Bool)

(assert (=> b!337979 m!341365))

(declare-fun m!341367 () Bool)

(assert (=> b!337979 m!341367))

(assert (=> b!337979 m!341311))

(declare-fun m!341369 () Bool)

(assert (=> b!337979 m!341369))

(declare-fun m!341371 () Bool)

(assert (=> bm!26420 m!341371))

(assert (=> b!337976 m!341311))

(assert (=> b!337976 m!341311))

(assert (=> b!337976 m!341325))

(assert (=> b!337855 d!70647))

(declare-fun d!70649 () Bool)

(declare-fun res!186774 () Bool)

(declare-fun e!207401 () Bool)

(assert (=> d!70649 (=> res!186774 e!207401)))

(assert (=> d!70649 (= res!186774 (bvsge #b00000000000000000000000000000000 (size!8706 _keys!1895)))))

(assert (=> d!70649 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4810) e!207401)))

(declare-fun b!337990 () Bool)

(declare-fun e!207402 () Bool)

(assert (=> b!337990 (= e!207401 e!207402)))

(declare-fun res!186775 () Bool)

(assert (=> b!337990 (=> (not res!186775) (not e!207402))))

(declare-fun e!207400 () Bool)

(assert (=> b!337990 (= res!186775 (not e!207400))))

(declare-fun res!186776 () Bool)

(assert (=> b!337990 (=> (not res!186776) (not e!207400))))

(assert (=> b!337990 (= res!186776 (validKeyInArray!0 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!337991 () Bool)

(declare-fun e!207399 () Bool)

(declare-fun call!26426 () Bool)

(assert (=> b!337991 (= e!207399 call!26426)))

(declare-fun bm!26423 () Bool)

(declare-fun c!52316 () Bool)

(assert (=> bm!26423 (= call!26426 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52316 (Cons!4809 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000) Nil!4810) Nil!4810)))))

(declare-fun b!337992 () Bool)

(assert (=> b!337992 (= e!207399 call!26426)))

(declare-fun b!337993 () Bool)

(assert (=> b!337993 (= e!207402 e!207399)))

(assert (=> b!337993 (= c!52316 (validKeyInArray!0 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!337994 () Bool)

(declare-fun contains!2111 (List!4813 (_ BitVec 64)) Bool)

(assert (=> b!337994 (= e!207400 (contains!2111 Nil!4810 (select (arr!8354 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70649 (not res!186774)) b!337990))

(assert (= (and b!337990 res!186776) b!337994))

(assert (= (and b!337990 res!186775) b!337993))

(assert (= (and b!337993 c!52316) b!337992))

(assert (= (and b!337993 (not c!52316)) b!337991))

(assert (= (or b!337992 b!337991) bm!26423))

(assert (=> b!337990 m!341311))

(assert (=> b!337990 m!341311))

(assert (=> b!337990 m!341325))

(assert (=> bm!26423 m!341311))

(declare-fun m!341373 () Bool)

(assert (=> bm!26423 m!341373))

(assert (=> b!337993 m!341311))

(assert (=> b!337993 m!341311))

(assert (=> b!337993 m!341325))

(assert (=> b!337994 m!341311))

(assert (=> b!337994 m!341311))

(declare-fun m!341375 () Bool)

(assert (=> b!337994 m!341375))

(assert (=> b!337856 d!70649))

(declare-fun d!70651 () Bool)

(assert (=> d!70651 (contains!2109 (getCurrentListMap!1585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!160701 () Unit!10470)

(declare-fun choose!1307 (array!17661 array!17659 (_ BitVec 32) (_ BitVec 32) V!10373 V!10373 (_ BitVec 64) (_ BitVec 32) Int) Unit!10470)

(assert (=> d!70651 (= lt!160701 (choose!1307 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!70651 (validMask!0 mask!2385)))

(assert (=> d!70651 (= (lemmaArrayContainsKeyThenInListMap!265 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!160701)))

(declare-fun bs!11639 () Bool)

(assert (= bs!11639 d!70651))

(assert (=> bs!11639 m!341253))

(assert (=> bs!11639 m!341253))

(assert (=> bs!11639 m!341255))

(assert (=> bs!11639 m!341247))

(declare-fun m!341377 () Bool)

(assert (=> bs!11639 m!341377))

(assert (=> bs!11639 m!341261))

(assert (=> b!337857 d!70651))

(declare-fun d!70653 () Bool)

(declare-fun lt!160704 () (_ BitVec 32))

(assert (=> d!70653 (and (or (bvslt lt!160704 #b00000000000000000000000000000000) (bvsge lt!160704 (size!8706 _keys!1895)) (and (bvsge lt!160704 #b00000000000000000000000000000000) (bvslt lt!160704 (size!8706 _keys!1895)))) (bvsge lt!160704 #b00000000000000000000000000000000) (bvslt lt!160704 (size!8706 _keys!1895)) (= (select (arr!8354 _keys!1895) lt!160704) k0!1348))))

(declare-fun e!207405 () (_ BitVec 32))

(assert (=> d!70653 (= lt!160704 e!207405)))

(declare-fun c!52319 () Bool)

(assert (=> d!70653 (= c!52319 (= (select (arr!8354 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70653 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8706 _keys!1895)) (bvslt (size!8706 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!70653 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!160704)))

(declare-fun b!337999 () Bool)

(assert (=> b!337999 (= e!207405 #b00000000000000000000000000000000)))

(declare-fun b!338000 () Bool)

(assert (=> b!338000 (= e!207405 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70653 c!52319) b!337999))

(assert (= (and d!70653 (not c!52319)) b!338000))

(declare-fun m!341379 () Bool)

(assert (=> d!70653 m!341379))

(assert (=> d!70653 m!341311))

(declare-fun m!341381 () Bool)

(assert (=> b!338000 m!341381))

(assert (=> b!337857 d!70653))

(declare-fun d!70655 () Bool)

(declare-fun res!186781 () Bool)

(declare-fun e!207410 () Bool)

(assert (=> d!70655 (=> res!186781 e!207410)))

(assert (=> d!70655 (= res!186781 (= (select (arr!8354 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70655 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!207410)))

(declare-fun b!338005 () Bool)

(declare-fun e!207411 () Bool)

(assert (=> b!338005 (= e!207410 e!207411)))

(declare-fun res!186782 () Bool)

(assert (=> b!338005 (=> (not res!186782) (not e!207411))))

(assert (=> b!338005 (= res!186782 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8706 _keys!1895)))))

(declare-fun b!338006 () Bool)

(assert (=> b!338006 (= e!207411 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70655 (not res!186781)) b!338005))

(assert (= (and b!338005 res!186782) b!338006))

(assert (=> d!70655 m!341311))

(declare-fun m!341383 () Bool)

(assert (=> b!338006 m!341383))

(assert (=> b!337852 d!70655))

(declare-fun b!338019 () Bool)

(declare-fun e!207420 () SeekEntryResult!3232)

(declare-fun lt!160712 () SeekEntryResult!3232)

(assert (=> b!338019 (= e!207420 (Found!3232 (index!15109 lt!160712)))))

(declare-fun b!338020 () Bool)

(declare-fun c!52328 () Bool)

(declare-fun lt!160713 () (_ BitVec 64))

(assert (=> b!338020 (= c!52328 (= lt!160713 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!207418 () SeekEntryResult!3232)

(assert (=> b!338020 (= e!207420 e!207418)))

(declare-fun b!338021 () Bool)

(assert (=> b!338021 (= e!207418 (MissingZero!3232 (index!15109 lt!160712)))))

(declare-fun b!338022 () Bool)

(declare-fun e!207419 () SeekEntryResult!3232)

(assert (=> b!338022 (= e!207419 e!207420)))

(assert (=> b!338022 (= lt!160713 (select (arr!8354 _keys!1895) (index!15109 lt!160712)))))

(declare-fun c!52326 () Bool)

(assert (=> b!338022 (= c!52326 (= lt!160713 k0!1348))))

(declare-fun b!338023 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17661 (_ BitVec 32)) SeekEntryResult!3232)

(assert (=> b!338023 (= e!207418 (seekKeyOrZeroReturnVacant!0 (x!33681 lt!160712) (index!15109 lt!160712) (index!15109 lt!160712) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!338024 () Bool)

(assert (=> b!338024 (= e!207419 Undefined!3232)))

(declare-fun d!70657 () Bool)

(declare-fun lt!160711 () SeekEntryResult!3232)

(assert (=> d!70657 (and (or ((_ is Undefined!3232) lt!160711) (not ((_ is Found!3232) lt!160711)) (and (bvsge (index!15108 lt!160711) #b00000000000000000000000000000000) (bvslt (index!15108 lt!160711) (size!8706 _keys!1895)))) (or ((_ is Undefined!3232) lt!160711) ((_ is Found!3232) lt!160711) (not ((_ is MissingZero!3232) lt!160711)) (and (bvsge (index!15107 lt!160711) #b00000000000000000000000000000000) (bvslt (index!15107 lt!160711) (size!8706 _keys!1895)))) (or ((_ is Undefined!3232) lt!160711) ((_ is Found!3232) lt!160711) ((_ is MissingZero!3232) lt!160711) (not ((_ is MissingVacant!3232) lt!160711)) (and (bvsge (index!15110 lt!160711) #b00000000000000000000000000000000) (bvslt (index!15110 lt!160711) (size!8706 _keys!1895)))) (or ((_ is Undefined!3232) lt!160711) (ite ((_ is Found!3232) lt!160711) (= (select (arr!8354 _keys!1895) (index!15108 lt!160711)) k0!1348) (ite ((_ is MissingZero!3232) lt!160711) (= (select (arr!8354 _keys!1895) (index!15107 lt!160711)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3232) lt!160711) (= (select (arr!8354 _keys!1895) (index!15110 lt!160711)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70657 (= lt!160711 e!207419)))

(declare-fun c!52327 () Bool)

(assert (=> d!70657 (= c!52327 (and ((_ is Intermediate!3232) lt!160712) (undefined!4044 lt!160712)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17661 (_ BitVec 32)) SeekEntryResult!3232)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70657 (= lt!160712 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70657 (validMask!0 mask!2385)))

(assert (=> d!70657 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!160711)))

(assert (= (and d!70657 c!52327) b!338024))

(assert (= (and d!70657 (not c!52327)) b!338022))

(assert (= (and b!338022 c!52326) b!338019))

(assert (= (and b!338022 (not c!52326)) b!338020))

(assert (= (and b!338020 c!52328) b!338021))

(assert (= (and b!338020 (not c!52328)) b!338023))

(declare-fun m!341385 () Bool)

(assert (=> b!338022 m!341385))

(declare-fun m!341387 () Bool)

(assert (=> b!338023 m!341387))

(declare-fun m!341389 () Bool)

(assert (=> d!70657 m!341389))

(declare-fun m!341391 () Bool)

(assert (=> d!70657 m!341391))

(declare-fun m!341393 () Bool)

(assert (=> d!70657 m!341393))

(assert (=> d!70657 m!341261))

(assert (=> d!70657 m!341391))

(declare-fun m!341395 () Bool)

(assert (=> d!70657 m!341395))

(declare-fun m!341397 () Bool)

(assert (=> d!70657 m!341397))

(assert (=> b!337848 d!70657))

(declare-fun mapIsEmpty!11985 () Bool)

(declare-fun mapRes!11985 () Bool)

(assert (=> mapIsEmpty!11985 mapRes!11985))

(declare-fun b!338032 () Bool)

(declare-fun e!207425 () Bool)

(assert (=> b!338032 (= e!207425 tp_is_empty!7047)))

(declare-fun condMapEmpty!11985 () Bool)

(declare-fun mapDefault!11985 () ValueCell!3180)

(assert (=> mapNonEmpty!11979 (= condMapEmpty!11985 (= mapRest!11979 ((as const (Array (_ BitVec 32) ValueCell!3180)) mapDefault!11985)))))

(assert (=> mapNonEmpty!11979 (= tp!24801 (and e!207425 mapRes!11985))))

(declare-fun mapNonEmpty!11985 () Bool)

(declare-fun tp!24810 () Bool)

(declare-fun e!207426 () Bool)

(assert (=> mapNonEmpty!11985 (= mapRes!11985 (and tp!24810 e!207426))))

(declare-fun mapRest!11985 () (Array (_ BitVec 32) ValueCell!3180))

(declare-fun mapKey!11985 () (_ BitVec 32))

(declare-fun mapValue!11985 () ValueCell!3180)

(assert (=> mapNonEmpty!11985 (= mapRest!11979 (store mapRest!11985 mapKey!11985 mapValue!11985))))

(declare-fun b!338031 () Bool)

(assert (=> b!338031 (= e!207426 tp_is_empty!7047)))

(assert (= (and mapNonEmpty!11979 condMapEmpty!11985) mapIsEmpty!11985))

(assert (= (and mapNonEmpty!11979 (not condMapEmpty!11985)) mapNonEmpty!11985))

(assert (= (and mapNonEmpty!11985 ((_ is ValueCellFull!3180) mapValue!11985)) b!338031))

(assert (= (and mapNonEmpty!11979 ((_ is ValueCellFull!3180) mapDefault!11985)) b!338032))

(declare-fun m!341399 () Bool)

(assert (=> mapNonEmpty!11985 m!341399))

(declare-fun b_lambda!8451 () Bool)

(assert (= b_lambda!8449 (or (and start!33948 b_free!7095) b_lambda!8451)))

(check-sat (not b!338023) (not b!337949) (not b!337958) (not b!337947) (not b_next!7095) (not bm!26415) (not bm!26423) (not b!338006) (not d!70657) (not b!337990) (not bm!26413) (not b!337951) (not b!337954) (not b!337956) (not d!70651) (not bm!26411) b_and!14305 tp_is_empty!7047 (not b!337902) (not bm!26420) (not mapNonEmpty!11985) (not b!337994) (not b!337993) (not b!337979) (not b!338000) (not b_lambda!8451) (not b!337965) (not b!337959) (not d!70637) (not b!337976) (not d!70635) (not bm!26417) (not b!337900))
(check-sat b_and!14305 (not b_next!7095))

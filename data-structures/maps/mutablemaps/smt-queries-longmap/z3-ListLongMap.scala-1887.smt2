; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33766 () Bool)

(assert start!33766)

(declare-fun b_free!6993 () Bool)

(declare-fun b_next!6993 () Bool)

(assert (=> start!33766 (= b_free!6993 (not b_next!6993))))

(declare-fun tp!24482 () Bool)

(declare-fun b_and!14191 () Bool)

(assert (=> start!33766 (= tp!24482 b_and!14191)))

(declare-fun b!335658 () Bool)

(declare-fun res!185355 () Bool)

(declare-fun e!206052 () Bool)

(assert (=> b!335658 (=> (not res!185355) (not e!206052))))

(declare-datatypes ((array!17467 0))(
  ( (array!17468 (arr!8261 (Array (_ BitVec 32) (_ BitVec 64))) (size!8613 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17467)

(declare-datatypes ((List!4749 0))(
  ( (Nil!4746) (Cons!4745 (h!5601 (_ BitVec 64)) (t!9845 List!4749)) )
))
(declare-fun arrayNoDuplicates!0 (array!17467 (_ BitVec 32) List!4749) Bool)

(assert (=> b!335658 (= res!185355 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4746))))

(declare-fun mapIsEmpty!11814 () Bool)

(declare-fun mapRes!11814 () Bool)

(assert (=> mapIsEmpty!11814 mapRes!11814))

(declare-fun b!335659 () Bool)

(declare-fun res!185356 () Bool)

(assert (=> b!335659 (=> (not res!185356) (not e!206052))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10237 0))(
  ( (V!10238 (val!3517 Int)) )
))
(declare-datatypes ((ValueCell!3129 0))(
  ( (ValueCellFull!3129 (v!5675 V!10237)) (EmptyCell!3129) )
))
(declare-datatypes ((array!17469 0))(
  ( (array!17470 (arr!8262 (Array (_ BitVec 32) ValueCell!3129)) (size!8614 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17469)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335659 (= res!185356 (and (= (size!8614 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8613 _keys!1895) (size!8614 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11814 () Bool)

(declare-fun tp!24483 () Bool)

(declare-fun e!206051 () Bool)

(assert (=> mapNonEmpty!11814 (= mapRes!11814 (and tp!24483 e!206051))))

(declare-fun mapValue!11814 () ValueCell!3129)

(declare-fun mapKey!11814 () (_ BitVec 32))

(declare-fun mapRest!11814 () (Array (_ BitVec 32) ValueCell!3129))

(assert (=> mapNonEmpty!11814 (= (arr!8262 _values!1525) (store mapRest!11814 mapKey!11814 mapValue!11814))))

(declare-fun b!335660 () Bool)

(declare-fun e!206053 () Bool)

(declare-fun tp_is_empty!6945 () Bool)

(assert (=> b!335660 (= e!206053 tp_is_empty!6945)))

(declare-fun res!185360 () Bool)

(assert (=> start!33766 (=> (not res!185360) (not e!206052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33766 (= res!185360 (validMask!0 mask!2385))))

(assert (=> start!33766 e!206052))

(assert (=> start!33766 true))

(assert (=> start!33766 tp_is_empty!6945))

(assert (=> start!33766 tp!24482))

(declare-fun e!206054 () Bool)

(declare-fun array_inv!6124 (array!17469) Bool)

(assert (=> start!33766 (and (array_inv!6124 _values!1525) e!206054)))

(declare-fun array_inv!6125 (array!17467) Bool)

(assert (=> start!33766 (array_inv!6125 _keys!1895)))

(declare-fun b!335661 () Bool)

(declare-datatypes ((SeekEntryResult!3204 0))(
  ( (MissingZero!3204 (index!14995 (_ BitVec 32))) (Found!3204 (index!14996 (_ BitVec 32))) (Intermediate!3204 (undefined!4016 Bool) (index!14997 (_ BitVec 32)) (x!33477 (_ BitVec 32))) (Undefined!3204) (MissingVacant!3204 (index!14998 (_ BitVec 32))) )
))
(declare-fun lt!159912 () SeekEntryResult!3204)

(get-info :version)

(assert (=> b!335661 (= e!206052 (and (not ((_ is Found!3204) lt!159912)) ((_ is MissingZero!3204) lt!159912) (bvsge #b00000000000000000000000000000000 (size!8613 _keys!1895))))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17467 (_ BitVec 32)) SeekEntryResult!3204)

(assert (=> b!335661 (= lt!159912 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335662 () Bool)

(assert (=> b!335662 (= e!206051 tp_is_empty!6945)))

(declare-fun b!335663 () Bool)

(declare-fun res!185358 () Bool)

(assert (=> b!335663 (=> (not res!185358) (not e!206052))))

(declare-fun zeroValue!1467 () V!10237)

(declare-fun minValue!1467 () V!10237)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5110 0))(
  ( (tuple2!5111 (_1!2565 (_ BitVec 64)) (_2!2565 V!10237)) )
))
(declare-datatypes ((List!4750 0))(
  ( (Nil!4747) (Cons!4746 (h!5602 tuple2!5110) (t!9846 List!4750)) )
))
(declare-datatypes ((ListLongMap!4037 0))(
  ( (ListLongMap!4038 (toList!2034 List!4750)) )
))
(declare-fun contains!2074 (ListLongMap!4037 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1554 (array!17467 array!17469 (_ BitVec 32) (_ BitVec 32) V!10237 V!10237 (_ BitVec 32) Int) ListLongMap!4037)

(assert (=> b!335663 (= res!185358 (not (contains!2074 (getCurrentListMap!1554 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!335664 () Bool)

(declare-fun res!185357 () Bool)

(assert (=> b!335664 (=> (not res!185357) (not e!206052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17467 (_ BitVec 32)) Bool)

(assert (=> b!335664 (= res!185357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!335665 () Bool)

(assert (=> b!335665 (= e!206054 (and e!206053 mapRes!11814))))

(declare-fun condMapEmpty!11814 () Bool)

(declare-fun mapDefault!11814 () ValueCell!3129)

(assert (=> b!335665 (= condMapEmpty!11814 (= (arr!8262 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3129)) mapDefault!11814)))))

(declare-fun b!335666 () Bool)

(declare-fun res!185359 () Bool)

(assert (=> b!335666 (=> (not res!185359) (not e!206052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335666 (= res!185359 (validKeyInArray!0 k0!1348))))

(assert (= (and start!33766 res!185360) b!335659))

(assert (= (and b!335659 res!185356) b!335664))

(assert (= (and b!335664 res!185357) b!335658))

(assert (= (and b!335658 res!185355) b!335666))

(assert (= (and b!335666 res!185359) b!335663))

(assert (= (and b!335663 res!185358) b!335661))

(assert (= (and b!335665 condMapEmpty!11814) mapIsEmpty!11814))

(assert (= (and b!335665 (not condMapEmpty!11814)) mapNonEmpty!11814))

(assert (= (and mapNonEmpty!11814 ((_ is ValueCellFull!3129) mapValue!11814)) b!335662))

(assert (= (and b!335665 ((_ is ValueCellFull!3129) mapDefault!11814)) b!335660))

(assert (= start!33766 b!335665))

(declare-fun m!339661 () Bool)

(assert (=> b!335658 m!339661))

(declare-fun m!339663 () Bool)

(assert (=> b!335661 m!339663))

(declare-fun m!339665 () Bool)

(assert (=> b!335666 m!339665))

(declare-fun m!339667 () Bool)

(assert (=> start!33766 m!339667))

(declare-fun m!339669 () Bool)

(assert (=> start!33766 m!339669))

(declare-fun m!339671 () Bool)

(assert (=> start!33766 m!339671))

(declare-fun m!339673 () Bool)

(assert (=> b!335663 m!339673))

(assert (=> b!335663 m!339673))

(declare-fun m!339675 () Bool)

(assert (=> b!335663 m!339675))

(declare-fun m!339677 () Bool)

(assert (=> b!335664 m!339677))

(declare-fun m!339679 () Bool)

(assert (=> mapNonEmpty!11814 m!339679))

(check-sat (not start!33766) (not b!335663) (not b_next!6993) tp_is_empty!6945 (not b!335661) (not b!335658) (not b!335664) (not mapNonEmpty!11814) (not b!335666) b_and!14191)
(check-sat b_and!14191 (not b_next!6993))
(get-model)

(declare-fun b!335702 () Bool)

(declare-fun e!206077 () Bool)

(declare-fun e!206078 () Bool)

(assert (=> b!335702 (= e!206077 e!206078)))

(declare-fun lt!159923 () (_ BitVec 64))

(assert (=> b!335702 (= lt!159923 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10442 0))(
  ( (Unit!10443) )
))
(declare-fun lt!159922 () Unit!10442)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17467 (_ BitVec 64) (_ BitVec 32)) Unit!10442)

(assert (=> b!335702 (= lt!159922 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!159923 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!17467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335702 (arrayContainsKey!0 _keys!1895 lt!159923 #b00000000000000000000000000000000)))

(declare-fun lt!159924 () Unit!10442)

(assert (=> b!335702 (= lt!159924 lt!159922)))

(declare-fun res!185383 () Bool)

(assert (=> b!335702 (= res!185383 (= (seekEntryOrOpen!0 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3204 #b00000000000000000000000000000000)))))

(assert (=> b!335702 (=> (not res!185383) (not e!206078))))

(declare-fun bm!26291 () Bool)

(declare-fun call!26294 () Bool)

(assert (=> bm!26291 (= call!26294 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!335703 () Bool)

(assert (=> b!335703 (= e!206078 call!26294)))

(declare-fun b!335704 () Bool)

(assert (=> b!335704 (= e!206077 call!26294)))

(declare-fun d!70521 () Bool)

(declare-fun res!185384 () Bool)

(declare-fun e!206079 () Bool)

(assert (=> d!70521 (=> res!185384 e!206079)))

(assert (=> d!70521 (= res!185384 (bvsge #b00000000000000000000000000000000 (size!8613 _keys!1895)))))

(assert (=> d!70521 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!206079)))

(declare-fun b!335705 () Bool)

(assert (=> b!335705 (= e!206079 e!206077)))

(declare-fun c!52118 () Bool)

(assert (=> b!335705 (= c!52118 (validKeyInArray!0 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70521 (not res!185384)) b!335705))

(assert (= (and b!335705 c!52118) b!335702))

(assert (= (and b!335705 (not c!52118)) b!335704))

(assert (= (and b!335702 res!185383) b!335703))

(assert (= (or b!335703 b!335704) bm!26291))

(declare-fun m!339701 () Bool)

(assert (=> b!335702 m!339701))

(declare-fun m!339703 () Bool)

(assert (=> b!335702 m!339703))

(declare-fun m!339705 () Bool)

(assert (=> b!335702 m!339705))

(assert (=> b!335702 m!339701))

(declare-fun m!339707 () Bool)

(assert (=> b!335702 m!339707))

(declare-fun m!339709 () Bool)

(assert (=> bm!26291 m!339709))

(assert (=> b!335705 m!339701))

(assert (=> b!335705 m!339701))

(declare-fun m!339711 () Bool)

(assert (=> b!335705 m!339711))

(assert (=> b!335664 d!70521))

(declare-fun d!70523 () Bool)

(declare-fun e!206085 () Bool)

(assert (=> d!70523 e!206085))

(declare-fun res!185387 () Bool)

(assert (=> d!70523 (=> res!185387 e!206085)))

(declare-fun lt!159933 () Bool)

(assert (=> d!70523 (= res!185387 (not lt!159933))))

(declare-fun lt!159936 () Bool)

(assert (=> d!70523 (= lt!159933 lt!159936)))

(declare-fun lt!159934 () Unit!10442)

(declare-fun e!206084 () Unit!10442)

(assert (=> d!70523 (= lt!159934 e!206084)))

(declare-fun c!52121 () Bool)

(assert (=> d!70523 (= c!52121 lt!159936)))

(declare-fun containsKey!315 (List!4750 (_ BitVec 64)) Bool)

(assert (=> d!70523 (= lt!159936 (containsKey!315 (toList!2034 (getCurrentListMap!1554 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70523 (= (contains!2074 (getCurrentListMap!1554 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!159933)))

(declare-fun b!335712 () Bool)

(declare-fun lt!159935 () Unit!10442)

(assert (=> b!335712 (= e!206084 lt!159935)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!264 (List!4750 (_ BitVec 64)) Unit!10442)

(assert (=> b!335712 (= lt!159935 (lemmaContainsKeyImpliesGetValueByKeyDefined!264 (toList!2034 (getCurrentListMap!1554 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!329 0))(
  ( (Some!328 (v!5677 V!10237)) (None!327) )
))
(declare-fun isDefined!265 (Option!329) Bool)

(declare-fun getValueByKey!323 (List!4750 (_ BitVec 64)) Option!329)

(assert (=> b!335712 (isDefined!265 (getValueByKey!323 (toList!2034 (getCurrentListMap!1554 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!335713 () Bool)

(declare-fun Unit!10444 () Unit!10442)

(assert (=> b!335713 (= e!206084 Unit!10444)))

(declare-fun b!335714 () Bool)

(assert (=> b!335714 (= e!206085 (isDefined!265 (getValueByKey!323 (toList!2034 (getCurrentListMap!1554 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70523 c!52121) b!335712))

(assert (= (and d!70523 (not c!52121)) b!335713))

(assert (= (and d!70523 (not res!185387)) b!335714))

(declare-fun m!339713 () Bool)

(assert (=> d!70523 m!339713))

(declare-fun m!339715 () Bool)

(assert (=> b!335712 m!339715))

(declare-fun m!339717 () Bool)

(assert (=> b!335712 m!339717))

(assert (=> b!335712 m!339717))

(declare-fun m!339719 () Bool)

(assert (=> b!335712 m!339719))

(assert (=> b!335714 m!339717))

(assert (=> b!335714 m!339717))

(assert (=> b!335714 m!339719))

(assert (=> b!335663 d!70523))

(declare-fun b!335757 () Bool)

(declare-fun res!185410 () Bool)

(declare-fun e!206119 () Bool)

(assert (=> b!335757 (=> (not res!185410) (not e!206119))))

(declare-fun e!206123 () Bool)

(assert (=> b!335757 (= res!185410 e!206123)))

(declare-fun c!52134 () Bool)

(assert (=> b!335757 (= c!52134 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!335758 () Bool)

(declare-fun e!206114 () Unit!10442)

(declare-fun lt!159996 () Unit!10442)

(assert (=> b!335758 (= e!206114 lt!159996)))

(declare-fun lt!160000 () ListLongMap!4037)

(declare-fun getCurrentListMapNoExtraKeys!585 (array!17467 array!17469 (_ BitVec 32) (_ BitVec 32) V!10237 V!10237 (_ BitVec 32) Int) ListLongMap!4037)

(assert (=> b!335758 (= lt!160000 (getCurrentListMapNoExtraKeys!585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159981 () (_ BitVec 64))

(assert (=> b!335758 (= lt!159981 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159998 () (_ BitVec 64))

(assert (=> b!335758 (= lt!159998 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159989 () Unit!10442)

(declare-fun addStillContains!242 (ListLongMap!4037 (_ BitVec 64) V!10237 (_ BitVec 64)) Unit!10442)

(assert (=> b!335758 (= lt!159989 (addStillContains!242 lt!160000 lt!159981 zeroValue!1467 lt!159998))))

(declare-fun +!710 (ListLongMap!4037 tuple2!5110) ListLongMap!4037)

(assert (=> b!335758 (contains!2074 (+!710 lt!160000 (tuple2!5111 lt!159981 zeroValue!1467)) lt!159998)))

(declare-fun lt!159982 () Unit!10442)

(assert (=> b!335758 (= lt!159982 lt!159989)))

(declare-fun lt!159983 () ListLongMap!4037)

(assert (=> b!335758 (= lt!159983 (getCurrentListMapNoExtraKeys!585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159995 () (_ BitVec 64))

(assert (=> b!335758 (= lt!159995 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159993 () (_ BitVec 64))

(assert (=> b!335758 (= lt!159993 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159986 () Unit!10442)

(declare-fun addApplyDifferent!242 (ListLongMap!4037 (_ BitVec 64) V!10237 (_ BitVec 64)) Unit!10442)

(assert (=> b!335758 (= lt!159986 (addApplyDifferent!242 lt!159983 lt!159995 minValue!1467 lt!159993))))

(declare-fun apply!266 (ListLongMap!4037 (_ BitVec 64)) V!10237)

(assert (=> b!335758 (= (apply!266 (+!710 lt!159983 (tuple2!5111 lt!159995 minValue!1467)) lt!159993) (apply!266 lt!159983 lt!159993))))

(declare-fun lt!159991 () Unit!10442)

(assert (=> b!335758 (= lt!159991 lt!159986)))

(declare-fun lt!159999 () ListLongMap!4037)

(assert (=> b!335758 (= lt!159999 (getCurrentListMapNoExtraKeys!585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159985 () (_ BitVec 64))

(assert (=> b!335758 (= lt!159985 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159988 () (_ BitVec 64))

(assert (=> b!335758 (= lt!159988 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159997 () Unit!10442)

(assert (=> b!335758 (= lt!159997 (addApplyDifferent!242 lt!159999 lt!159985 zeroValue!1467 lt!159988))))

(assert (=> b!335758 (= (apply!266 (+!710 lt!159999 (tuple2!5111 lt!159985 zeroValue!1467)) lt!159988) (apply!266 lt!159999 lt!159988))))

(declare-fun lt!159984 () Unit!10442)

(assert (=> b!335758 (= lt!159984 lt!159997)))

(declare-fun lt!159994 () ListLongMap!4037)

(assert (=> b!335758 (= lt!159994 (getCurrentListMapNoExtraKeys!585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160002 () (_ BitVec 64))

(assert (=> b!335758 (= lt!160002 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159990 () (_ BitVec 64))

(assert (=> b!335758 (= lt!159990 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!335758 (= lt!159996 (addApplyDifferent!242 lt!159994 lt!160002 minValue!1467 lt!159990))))

(assert (=> b!335758 (= (apply!266 (+!710 lt!159994 (tuple2!5111 lt!160002 minValue!1467)) lt!159990) (apply!266 lt!159994 lt!159990))))

(declare-fun bm!26306 () Bool)

(declare-fun call!26309 () ListLongMap!4037)

(declare-fun call!26313 () ListLongMap!4037)

(assert (=> bm!26306 (= call!26309 call!26313)))

(declare-fun bm!26307 () Bool)

(assert (=> bm!26307 (= call!26313 (getCurrentListMapNoExtraKeys!585 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335759 () Bool)

(declare-fun e!206122 () ListLongMap!4037)

(declare-fun call!26312 () ListLongMap!4037)

(assert (=> b!335759 (= e!206122 (+!710 call!26312 (tuple2!5111 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!335760 () Bool)

(declare-fun c!52139 () Bool)

(assert (=> b!335760 (= c!52139 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!206112 () ListLongMap!4037)

(declare-fun e!206120 () ListLongMap!4037)

(assert (=> b!335760 (= e!206112 e!206120)))

(declare-fun d!70525 () Bool)

(assert (=> d!70525 e!206119))

(declare-fun res!185413 () Bool)

(assert (=> d!70525 (=> (not res!185413) (not e!206119))))

(assert (=> d!70525 (= res!185413 (or (bvsge #b00000000000000000000000000000000 (size!8613 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8613 _keys!1895)))))))

(declare-fun lt!159987 () ListLongMap!4037)

(declare-fun lt!159992 () ListLongMap!4037)

(assert (=> d!70525 (= lt!159987 lt!159992)))

(declare-fun lt!160001 () Unit!10442)

(assert (=> d!70525 (= lt!160001 e!206114)))

(declare-fun c!52135 () Bool)

(declare-fun e!206118 () Bool)

(assert (=> d!70525 (= c!52135 e!206118)))

(declare-fun res!185409 () Bool)

(assert (=> d!70525 (=> (not res!185409) (not e!206118))))

(assert (=> d!70525 (= res!185409 (bvslt #b00000000000000000000000000000000 (size!8613 _keys!1895)))))

(assert (=> d!70525 (= lt!159992 e!206122)))

(declare-fun c!52138 () Bool)

(assert (=> d!70525 (= c!52138 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70525 (validMask!0 mask!2385)))

(assert (=> d!70525 (= (getCurrentListMap!1554 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!159987)))

(declare-fun b!335761 () Bool)

(declare-fun e!206113 () Bool)

(declare-fun call!26315 () Bool)

(assert (=> b!335761 (= e!206113 (not call!26315))))

(declare-fun c!52136 () Bool)

(declare-fun call!26314 () ListLongMap!4037)

(declare-fun bm!26308 () Bool)

(assert (=> bm!26308 (= call!26312 (+!710 (ite c!52138 call!26313 (ite c!52136 call!26309 call!26314)) (ite (or c!52138 c!52136) (tuple2!5111 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5111 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!335762 () Bool)

(declare-fun e!206115 () Bool)

(assert (=> b!335762 (= e!206115 (validKeyInArray!0 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!335763 () Bool)

(declare-fun e!206121 () Bool)

(declare-fun get!4527 (ValueCell!3129 V!10237) V!10237)

(declare-fun dynLambda!604 (Int (_ BitVec 64)) V!10237)

(assert (=> b!335763 (= e!206121 (= (apply!266 lt!159987 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000)) (get!4527 (select (arr!8262 _values!1525) #b00000000000000000000000000000000) (dynLambda!604 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!335763 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8614 _values!1525)))))

(assert (=> b!335763 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8613 _keys!1895)))))

(declare-fun bm!26309 () Bool)

(assert (=> bm!26309 (= call!26315 (contains!2074 lt!159987 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26310 () Bool)

(assert (=> bm!26310 (= call!26314 call!26309)))

(declare-fun b!335764 () Bool)

(declare-fun e!206116 () Bool)

(assert (=> b!335764 (= e!206116 e!206121)))

(declare-fun res!185412 () Bool)

(assert (=> b!335764 (=> (not res!185412) (not e!206121))))

(assert (=> b!335764 (= res!185412 (contains!2074 lt!159987 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!335764 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8613 _keys!1895)))))

(declare-fun b!335765 () Bool)

(declare-fun call!26311 () ListLongMap!4037)

(assert (=> b!335765 (= e!206112 call!26311)))

(declare-fun b!335766 () Bool)

(declare-fun e!206117 () Bool)

(assert (=> b!335766 (= e!206123 e!206117)))

(declare-fun res!185414 () Bool)

(declare-fun call!26310 () Bool)

(assert (=> b!335766 (= res!185414 call!26310)))

(assert (=> b!335766 (=> (not res!185414) (not e!206117))))

(declare-fun b!335767 () Bool)

(declare-fun Unit!10445 () Unit!10442)

(assert (=> b!335767 (= e!206114 Unit!10445)))

(declare-fun b!335768 () Bool)

(assert (=> b!335768 (= e!206122 e!206112)))

(assert (=> b!335768 (= c!52136 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26311 () Bool)

(assert (=> bm!26311 (= call!26311 call!26312)))

(declare-fun b!335769 () Bool)

(assert (=> b!335769 (= e!206117 (= (apply!266 lt!159987 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!335770 () Bool)

(assert (=> b!335770 (= e!206120 call!26311)))

(declare-fun b!335771 () Bool)

(assert (=> b!335771 (= e!206119 e!206113)))

(declare-fun c!52137 () Bool)

(assert (=> b!335771 (= c!52137 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!335772 () Bool)

(declare-fun res!185407 () Bool)

(assert (=> b!335772 (=> (not res!185407) (not e!206119))))

(assert (=> b!335772 (= res!185407 e!206116)))

(declare-fun res!185408 () Bool)

(assert (=> b!335772 (=> res!185408 e!206116)))

(assert (=> b!335772 (= res!185408 (not e!206115))))

(declare-fun res!185406 () Bool)

(assert (=> b!335772 (=> (not res!185406) (not e!206115))))

(assert (=> b!335772 (= res!185406 (bvslt #b00000000000000000000000000000000 (size!8613 _keys!1895)))))

(declare-fun b!335773 () Bool)

(assert (=> b!335773 (= e!206118 (validKeyInArray!0 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!335774 () Bool)

(assert (=> b!335774 (= e!206120 call!26314)))

(declare-fun bm!26312 () Bool)

(assert (=> bm!26312 (= call!26310 (contains!2074 lt!159987 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!335775 () Bool)

(declare-fun e!206124 () Bool)

(assert (=> b!335775 (= e!206124 (= (apply!266 lt!159987 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!335776 () Bool)

(assert (=> b!335776 (= e!206113 e!206124)))

(declare-fun res!185411 () Bool)

(assert (=> b!335776 (= res!185411 call!26315)))

(assert (=> b!335776 (=> (not res!185411) (not e!206124))))

(declare-fun b!335777 () Bool)

(assert (=> b!335777 (= e!206123 (not call!26310))))

(assert (= (and d!70525 c!52138) b!335759))

(assert (= (and d!70525 (not c!52138)) b!335768))

(assert (= (and b!335768 c!52136) b!335765))

(assert (= (and b!335768 (not c!52136)) b!335760))

(assert (= (and b!335760 c!52139) b!335770))

(assert (= (and b!335760 (not c!52139)) b!335774))

(assert (= (or b!335770 b!335774) bm!26310))

(assert (= (or b!335765 bm!26310) bm!26306))

(assert (= (or b!335765 b!335770) bm!26311))

(assert (= (or b!335759 bm!26306) bm!26307))

(assert (= (or b!335759 bm!26311) bm!26308))

(assert (= (and d!70525 res!185409) b!335773))

(assert (= (and d!70525 c!52135) b!335758))

(assert (= (and d!70525 (not c!52135)) b!335767))

(assert (= (and d!70525 res!185413) b!335772))

(assert (= (and b!335772 res!185406) b!335762))

(assert (= (and b!335772 (not res!185408)) b!335764))

(assert (= (and b!335764 res!185412) b!335763))

(assert (= (and b!335772 res!185407) b!335757))

(assert (= (and b!335757 c!52134) b!335766))

(assert (= (and b!335757 (not c!52134)) b!335777))

(assert (= (and b!335766 res!185414) b!335769))

(assert (= (or b!335766 b!335777) bm!26312))

(assert (= (and b!335757 res!185410) b!335771))

(assert (= (and b!335771 c!52137) b!335776))

(assert (= (and b!335771 (not c!52137)) b!335761))

(assert (= (and b!335776 res!185411) b!335775))

(assert (= (or b!335776 b!335761) bm!26309))

(declare-fun b_lambda!8433 () Bool)

(assert (=> (not b_lambda!8433) (not b!335763)))

(declare-fun t!9850 () Bool)

(declare-fun tb!3055 () Bool)

(assert (=> (and start!33766 (= defaultEntry!1528 defaultEntry!1528) t!9850) tb!3055))

(declare-fun result!5479 () Bool)

(assert (=> tb!3055 (= result!5479 tp_is_empty!6945)))

(assert (=> b!335763 t!9850))

(declare-fun b_and!14195 () Bool)

(assert (= b_and!14191 (and (=> t!9850 result!5479) b_and!14195)))

(declare-fun m!339721 () Bool)

(assert (=> b!335775 m!339721))

(declare-fun m!339723 () Bool)

(assert (=> bm!26307 m!339723))

(declare-fun m!339725 () Bool)

(assert (=> bm!26308 m!339725))

(assert (=> d!70525 m!339667))

(declare-fun m!339727 () Bool)

(assert (=> bm!26312 m!339727))

(declare-fun m!339729 () Bool)

(assert (=> b!335769 m!339729))

(declare-fun m!339731 () Bool)

(assert (=> b!335759 m!339731))

(assert (=> b!335764 m!339701))

(assert (=> b!335764 m!339701))

(declare-fun m!339733 () Bool)

(assert (=> b!335764 m!339733))

(declare-fun m!339735 () Bool)

(assert (=> b!335758 m!339735))

(declare-fun m!339737 () Bool)

(assert (=> b!335758 m!339737))

(declare-fun m!339739 () Bool)

(assert (=> b!335758 m!339739))

(declare-fun m!339741 () Bool)

(assert (=> b!335758 m!339741))

(declare-fun m!339743 () Bool)

(assert (=> b!335758 m!339743))

(assert (=> b!335758 m!339723))

(declare-fun m!339745 () Bool)

(assert (=> b!335758 m!339745))

(assert (=> b!335758 m!339735))

(assert (=> b!335758 m!339745))

(declare-fun m!339747 () Bool)

(assert (=> b!335758 m!339747))

(declare-fun m!339749 () Bool)

(assert (=> b!335758 m!339749))

(declare-fun m!339751 () Bool)

(assert (=> b!335758 m!339751))

(declare-fun m!339753 () Bool)

(assert (=> b!335758 m!339753))

(declare-fun m!339755 () Bool)

(assert (=> b!335758 m!339755))

(declare-fun m!339757 () Bool)

(assert (=> b!335758 m!339757))

(declare-fun m!339759 () Bool)

(assert (=> b!335758 m!339759))

(assert (=> b!335758 m!339751))

(declare-fun m!339761 () Bool)

(assert (=> b!335758 m!339761))

(assert (=> b!335758 m!339701))

(assert (=> b!335758 m!339755))

(declare-fun m!339763 () Bool)

(assert (=> b!335758 m!339763))

(declare-fun m!339765 () Bool)

(assert (=> bm!26309 m!339765))

(assert (=> b!335762 m!339701))

(assert (=> b!335762 m!339701))

(assert (=> b!335762 m!339711))

(assert (=> b!335773 m!339701))

(assert (=> b!335773 m!339701))

(assert (=> b!335773 m!339711))

(declare-fun m!339767 () Bool)

(assert (=> b!335763 m!339767))

(declare-fun m!339769 () Bool)

(assert (=> b!335763 m!339769))

(assert (=> b!335763 m!339701))

(assert (=> b!335763 m!339701))

(declare-fun m!339771 () Bool)

(assert (=> b!335763 m!339771))

(assert (=> b!335763 m!339769))

(assert (=> b!335763 m!339767))

(declare-fun m!339773 () Bool)

(assert (=> b!335763 m!339773))

(assert (=> b!335663 d!70525))

(declare-fun d!70527 () Bool)

(assert (=> d!70527 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33766 d!70527))

(declare-fun d!70529 () Bool)

(assert (=> d!70529 (= (array_inv!6124 _values!1525) (bvsge (size!8614 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33766 d!70529))

(declare-fun d!70531 () Bool)

(assert (=> d!70531 (= (array_inv!6125 _keys!1895) (bvsge (size!8613 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33766 d!70531))

(declare-fun d!70533 () Bool)

(declare-fun lt!160010 () SeekEntryResult!3204)

(assert (=> d!70533 (and (or ((_ is Undefined!3204) lt!160010) (not ((_ is Found!3204) lt!160010)) (and (bvsge (index!14996 lt!160010) #b00000000000000000000000000000000) (bvslt (index!14996 lt!160010) (size!8613 _keys!1895)))) (or ((_ is Undefined!3204) lt!160010) ((_ is Found!3204) lt!160010) (not ((_ is MissingZero!3204) lt!160010)) (and (bvsge (index!14995 lt!160010) #b00000000000000000000000000000000) (bvslt (index!14995 lt!160010) (size!8613 _keys!1895)))) (or ((_ is Undefined!3204) lt!160010) ((_ is Found!3204) lt!160010) ((_ is MissingZero!3204) lt!160010) (not ((_ is MissingVacant!3204) lt!160010)) (and (bvsge (index!14998 lt!160010) #b00000000000000000000000000000000) (bvslt (index!14998 lt!160010) (size!8613 _keys!1895)))) (or ((_ is Undefined!3204) lt!160010) (ite ((_ is Found!3204) lt!160010) (= (select (arr!8261 _keys!1895) (index!14996 lt!160010)) k0!1348) (ite ((_ is MissingZero!3204) lt!160010) (= (select (arr!8261 _keys!1895) (index!14995 lt!160010)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3204) lt!160010) (= (select (arr!8261 _keys!1895) (index!14998 lt!160010)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!206132 () SeekEntryResult!3204)

(assert (=> d!70533 (= lt!160010 e!206132)))

(declare-fun c!52147 () Bool)

(declare-fun lt!160011 () SeekEntryResult!3204)

(assert (=> d!70533 (= c!52147 (and ((_ is Intermediate!3204) lt!160011) (undefined!4016 lt!160011)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17467 (_ BitVec 32)) SeekEntryResult!3204)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70533 (= lt!160011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70533 (validMask!0 mask!2385)))

(assert (=> d!70533 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!160010)))

(declare-fun b!335792 () Bool)

(declare-fun e!206133 () SeekEntryResult!3204)

(assert (=> b!335792 (= e!206133 (MissingZero!3204 (index!14997 lt!160011)))))

(declare-fun b!335793 () Bool)

(declare-fun e!206131 () SeekEntryResult!3204)

(assert (=> b!335793 (= e!206132 e!206131)))

(declare-fun lt!160009 () (_ BitVec 64))

(assert (=> b!335793 (= lt!160009 (select (arr!8261 _keys!1895) (index!14997 lt!160011)))))

(declare-fun c!52148 () Bool)

(assert (=> b!335793 (= c!52148 (= lt!160009 k0!1348))))

(declare-fun b!335794 () Bool)

(assert (=> b!335794 (= e!206132 Undefined!3204)))

(declare-fun b!335795 () Bool)

(assert (=> b!335795 (= e!206131 (Found!3204 (index!14997 lt!160011)))))

(declare-fun b!335796 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17467 (_ BitVec 32)) SeekEntryResult!3204)

(assert (=> b!335796 (= e!206133 (seekKeyOrZeroReturnVacant!0 (x!33477 lt!160011) (index!14997 lt!160011) (index!14997 lt!160011) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335797 () Bool)

(declare-fun c!52146 () Bool)

(assert (=> b!335797 (= c!52146 (= lt!160009 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!335797 (= e!206131 e!206133)))

(assert (= (and d!70533 c!52147) b!335794))

(assert (= (and d!70533 (not c!52147)) b!335793))

(assert (= (and b!335793 c!52148) b!335795))

(assert (= (and b!335793 (not c!52148)) b!335797))

(assert (= (and b!335797 c!52146) b!335792))

(assert (= (and b!335797 (not c!52146)) b!335796))

(assert (=> d!70533 m!339667))

(declare-fun m!339775 () Bool)

(assert (=> d!70533 m!339775))

(declare-fun m!339777 () Bool)

(assert (=> d!70533 m!339777))

(assert (=> d!70533 m!339775))

(declare-fun m!339779 () Bool)

(assert (=> d!70533 m!339779))

(declare-fun m!339781 () Bool)

(assert (=> d!70533 m!339781))

(declare-fun m!339783 () Bool)

(assert (=> d!70533 m!339783))

(declare-fun m!339785 () Bool)

(assert (=> b!335793 m!339785))

(declare-fun m!339787 () Bool)

(assert (=> b!335796 m!339787))

(assert (=> b!335661 d!70533))

(declare-fun d!70535 () Bool)

(declare-fun res!185423 () Bool)

(declare-fun e!206143 () Bool)

(assert (=> d!70535 (=> res!185423 e!206143)))

(assert (=> d!70535 (= res!185423 (bvsge #b00000000000000000000000000000000 (size!8613 _keys!1895)))))

(assert (=> d!70535 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4746) e!206143)))

(declare-fun b!335808 () Bool)

(declare-fun e!206142 () Bool)

(assert (=> b!335808 (= e!206143 e!206142)))

(declare-fun res!185422 () Bool)

(assert (=> b!335808 (=> (not res!185422) (not e!206142))))

(declare-fun e!206144 () Bool)

(assert (=> b!335808 (= res!185422 (not e!206144))))

(declare-fun res!185421 () Bool)

(assert (=> b!335808 (=> (not res!185421) (not e!206144))))

(assert (=> b!335808 (= res!185421 (validKeyInArray!0 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!335809 () Bool)

(declare-fun contains!2076 (List!4749 (_ BitVec 64)) Bool)

(assert (=> b!335809 (= e!206144 (contains!2076 Nil!4746 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!335810 () Bool)

(declare-fun e!206145 () Bool)

(declare-fun call!26318 () Bool)

(assert (=> b!335810 (= e!206145 call!26318)))

(declare-fun bm!26315 () Bool)

(declare-fun c!52151 () Bool)

(assert (=> bm!26315 (= call!26318 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52151 (Cons!4745 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000) Nil!4746) Nil!4746)))))

(declare-fun b!335811 () Bool)

(assert (=> b!335811 (= e!206145 call!26318)))

(declare-fun b!335812 () Bool)

(assert (=> b!335812 (= e!206142 e!206145)))

(assert (=> b!335812 (= c!52151 (validKeyInArray!0 (select (arr!8261 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70535 (not res!185423)) b!335808))

(assert (= (and b!335808 res!185421) b!335809))

(assert (= (and b!335808 res!185422) b!335812))

(assert (= (and b!335812 c!52151) b!335810))

(assert (= (and b!335812 (not c!52151)) b!335811))

(assert (= (or b!335810 b!335811) bm!26315))

(assert (=> b!335808 m!339701))

(assert (=> b!335808 m!339701))

(assert (=> b!335808 m!339711))

(assert (=> b!335809 m!339701))

(assert (=> b!335809 m!339701))

(declare-fun m!339789 () Bool)

(assert (=> b!335809 m!339789))

(assert (=> bm!26315 m!339701))

(declare-fun m!339791 () Bool)

(assert (=> bm!26315 m!339791))

(assert (=> b!335812 m!339701))

(assert (=> b!335812 m!339701))

(assert (=> b!335812 m!339711))

(assert (=> b!335658 d!70535))

(declare-fun d!70537 () Bool)

(assert (=> d!70537 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!335666 d!70537))

(declare-fun mapIsEmpty!11820 () Bool)

(declare-fun mapRes!11820 () Bool)

(assert (=> mapIsEmpty!11820 mapRes!11820))

(declare-fun b!335820 () Bool)

(declare-fun e!206150 () Bool)

(assert (=> b!335820 (= e!206150 tp_is_empty!6945)))

(declare-fun mapNonEmpty!11820 () Bool)

(declare-fun tp!24492 () Bool)

(declare-fun e!206151 () Bool)

(assert (=> mapNonEmpty!11820 (= mapRes!11820 (and tp!24492 e!206151))))

(declare-fun mapKey!11820 () (_ BitVec 32))

(declare-fun mapValue!11820 () ValueCell!3129)

(declare-fun mapRest!11820 () (Array (_ BitVec 32) ValueCell!3129))

(assert (=> mapNonEmpty!11820 (= mapRest!11814 (store mapRest!11820 mapKey!11820 mapValue!11820))))

(declare-fun b!335819 () Bool)

(assert (=> b!335819 (= e!206151 tp_is_empty!6945)))

(declare-fun condMapEmpty!11820 () Bool)

(declare-fun mapDefault!11820 () ValueCell!3129)

(assert (=> mapNonEmpty!11814 (= condMapEmpty!11820 (= mapRest!11814 ((as const (Array (_ BitVec 32) ValueCell!3129)) mapDefault!11820)))))

(assert (=> mapNonEmpty!11814 (= tp!24483 (and e!206150 mapRes!11820))))

(assert (= (and mapNonEmpty!11814 condMapEmpty!11820) mapIsEmpty!11820))

(assert (= (and mapNonEmpty!11814 (not condMapEmpty!11820)) mapNonEmpty!11820))

(assert (= (and mapNonEmpty!11820 ((_ is ValueCellFull!3129) mapValue!11820)) b!335819))

(assert (= (and mapNonEmpty!11814 ((_ is ValueCellFull!3129) mapDefault!11820)) b!335820))

(declare-fun m!339793 () Bool)

(assert (=> mapNonEmpty!11820 m!339793))

(declare-fun b_lambda!8435 () Bool)

(assert (= b_lambda!8433 (or (and start!33766 b_free!6993) b_lambda!8435)))

(check-sat (not b!335714) (not b_next!6993) (not b!335758) (not d!70525) tp_is_empty!6945 (not b!335705) (not b!335763) (not mapNonEmpty!11820) (not bm!26291) (not bm!26307) (not b!335775) (not b!335764) (not b!335812) (not d!70523) (not b!335808) (not bm!26312) (not b!335796) (not b!335773) (not b!335759) (not b!335712) (not bm!26315) (not b!335762) (not bm!26309) (not b!335809) (not b!335702) b_and!14195 (not d!70533) (not b_lambda!8435) (not b!335769) (not bm!26308))
(check-sat b_and!14195 (not b_next!6993))

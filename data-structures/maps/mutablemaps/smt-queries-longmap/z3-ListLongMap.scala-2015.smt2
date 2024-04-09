; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35124 () Bool)

(assert start!35124)

(declare-fun b_free!7761 () Bool)

(declare-fun b_next!7761 () Bool)

(assert (=> start!35124 (= b_free!7761 (not b_next!7761))))

(declare-fun tp!26867 () Bool)

(declare-fun b_and!15013 () Bool)

(assert (=> start!35124 (= tp!26867 b_and!15013)))

(declare-fun b!351919 () Bool)

(declare-fun e!215517 () Bool)

(declare-datatypes ((SeekEntryResult!3455 0))(
  ( (MissingZero!3455 (index!15999 (_ BitVec 32))) (Found!3455 (index!16000 (_ BitVec 32))) (Intermediate!3455 (undefined!4267 Bool) (index!16001 (_ BitVec 32)) (x!35022 (_ BitVec 32))) (Undefined!3455) (MissingVacant!3455 (index!16002 (_ BitVec 32))) )
))
(declare-fun lt!165026 () SeekEntryResult!3455)

(declare-datatypes ((array!18971 0))(
  ( (array!18972 (arr!8986 (Array (_ BitVec 32) (_ BitVec 64))) (size!9338 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18971)

(assert (=> b!351919 (= e!215517 (or (bvslt (index!16002 lt!165026) #b00000000000000000000000000000000) (bvsge (index!16002 lt!165026) (size!9338 _keys!1895))))))

(declare-fun b!351920 () Bool)

(declare-fun e!215511 () Bool)

(declare-fun e!215510 () Bool)

(declare-fun mapRes!13047 () Bool)

(assert (=> b!351920 (= e!215511 (and e!215510 mapRes!13047))))

(declare-fun condMapEmpty!13047 () Bool)

(declare-datatypes ((V!11261 0))(
  ( (V!11262 (val!3901 Int)) )
))
(declare-datatypes ((ValueCell!3513 0))(
  ( (ValueCellFull!3513 (v!6086 V!11261)) (EmptyCell!3513) )
))
(declare-datatypes ((array!18973 0))(
  ( (array!18974 (arr!8987 (Array (_ BitVec 32) ValueCell!3513)) (size!9339 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18973)

(declare-fun mapDefault!13047 () ValueCell!3513)

(assert (=> b!351920 (= condMapEmpty!13047 (= (arr!8987 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3513)) mapDefault!13047)))))

(declare-fun b!351921 () Bool)

(declare-fun res!195248 () Bool)

(declare-fun e!215512 () Bool)

(assert (=> b!351921 (=> (not res!195248) (not e!215512))))

(declare-datatypes ((List!5261 0))(
  ( (Nil!5258) (Cons!5257 (h!6113 (_ BitVec 64)) (t!10411 List!5261)) )
))
(declare-fun arrayNoDuplicates!0 (array!18971 (_ BitVec 32) List!5261) Bool)

(assert (=> b!351921 (= res!195248 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5258))))

(declare-fun mapIsEmpty!13047 () Bool)

(assert (=> mapIsEmpty!13047 mapRes!13047))

(declare-fun b!351922 () Bool)

(declare-fun res!195241 () Bool)

(assert (=> b!351922 (=> (not res!195241) (not e!215512))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!11261)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11261)

(declare-datatypes ((tuple2!5624 0))(
  ( (tuple2!5625 (_1!2822 (_ BitVec 64)) (_2!2822 V!11261)) )
))
(declare-datatypes ((List!5262 0))(
  ( (Nil!5259) (Cons!5258 (h!6114 tuple2!5624) (t!10412 List!5262)) )
))
(declare-datatypes ((ListLongMap!4551 0))(
  ( (ListLongMap!4552 (toList!2291 List!5262)) )
))
(declare-fun contains!2358 (ListLongMap!4551 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1808 (array!18971 array!18973 (_ BitVec 32) (_ BitVec 32) V!11261 V!11261 (_ BitVec 32) Int) ListLongMap!4551)

(assert (=> b!351922 (= res!195241 (not (contains!2358 (getCurrentListMap!1808 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun res!195243 () Bool)

(assert (=> start!35124 (=> (not res!195243) (not e!215512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35124 (= res!195243 (validMask!0 mask!2385))))

(assert (=> start!35124 e!215512))

(assert (=> start!35124 true))

(declare-fun tp_is_empty!7713 () Bool)

(assert (=> start!35124 tp_is_empty!7713))

(assert (=> start!35124 tp!26867))

(declare-fun array_inv!6622 (array!18973) Bool)

(assert (=> start!35124 (and (array_inv!6622 _values!1525) e!215511)))

(declare-fun array_inv!6623 (array!18971) Bool)

(assert (=> start!35124 (array_inv!6623 _keys!1895)))

(declare-fun b!351923 () Bool)

(assert (=> b!351923 (= e!215510 tp_is_empty!7713)))

(declare-fun b!351924 () Bool)

(declare-fun res!195247 () Bool)

(assert (=> b!351924 (=> (not res!195247) (not e!215512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18971 (_ BitVec 32)) Bool)

(assert (=> b!351924 (= res!195247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351925 () Bool)

(declare-fun res!195246 () Bool)

(assert (=> b!351925 (=> (not res!195246) (not e!215517))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!351925 (= res!195246 (inRange!0 (index!16002 lt!165026) mask!2385))))

(declare-fun b!351926 () Bool)

(declare-datatypes ((Unit!10885 0))(
  ( (Unit!10886) )
))
(declare-fun e!215513 () Unit!10885)

(declare-fun Unit!10887 () Unit!10885)

(assert (=> b!351926 (= e!215513 Unit!10887)))

(declare-fun lt!165025 () Unit!10885)

(declare-fun lemmaArrayContainsKeyThenInListMap!332 (array!18971 array!18973 (_ BitVec 32) (_ BitVec 32) V!11261 V!11261 (_ BitVec 64) (_ BitVec 32) Int) Unit!10885)

(declare-fun arrayScanForKey!0 (array!18971 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351926 (= lt!165025 (lemmaArrayContainsKeyThenInListMap!332 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!351926 false))

(declare-fun b!351927 () Bool)

(declare-fun Unit!10888 () Unit!10885)

(assert (=> b!351927 (= e!215513 Unit!10888)))

(declare-fun b!351928 () Bool)

(declare-fun res!195244 () Bool)

(assert (=> b!351928 (=> (not res!195244) (not e!215512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351928 (= res!195244 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!13047 () Bool)

(declare-fun tp!26868 () Bool)

(declare-fun e!215515 () Bool)

(assert (=> mapNonEmpty!13047 (= mapRes!13047 (and tp!26868 e!215515))))

(declare-fun mapKey!13047 () (_ BitVec 32))

(declare-fun mapValue!13047 () ValueCell!3513)

(declare-fun mapRest!13047 () (Array (_ BitVec 32) ValueCell!3513))

(assert (=> mapNonEmpty!13047 (= (arr!8987 _values!1525) (store mapRest!13047 mapKey!13047 mapValue!13047))))

(declare-fun b!351929 () Bool)

(declare-fun e!215514 () Bool)

(assert (=> b!351929 (= e!215514 e!215517)))

(declare-fun res!195240 () Bool)

(assert (=> b!351929 (=> (not res!195240) (not e!215517))))

(declare-fun lt!165027 () Bool)

(assert (=> b!351929 (= res!195240 (not lt!165027))))

(declare-fun lt!165024 () Unit!10885)

(assert (=> b!351929 (= lt!165024 e!215513)))

(declare-fun c!53441 () Bool)

(assert (=> b!351929 (= c!53441 lt!165027)))

(declare-fun arrayContainsKey!0 (array!18971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351929 (= lt!165027 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!351930 () Bool)

(assert (=> b!351930 (= e!215515 tp_is_empty!7713)))

(declare-fun b!351931 () Bool)

(assert (=> b!351931 (= e!215512 e!215514)))

(declare-fun res!195242 () Bool)

(assert (=> b!351931 (=> (not res!195242) (not e!215514))))

(get-info :version)

(assert (=> b!351931 (= res!195242 (and (not ((_ is Found!3455) lt!165026)) (not ((_ is MissingZero!3455) lt!165026)) ((_ is MissingVacant!3455) lt!165026)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18971 (_ BitVec 32)) SeekEntryResult!3455)

(assert (=> b!351931 (= lt!165026 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!351932 () Bool)

(declare-fun res!195245 () Bool)

(assert (=> b!351932 (=> (not res!195245) (not e!215512))))

(assert (=> b!351932 (= res!195245 (and (= (size!9339 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9338 _keys!1895) (size!9339 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!35124 res!195243) b!351932))

(assert (= (and b!351932 res!195245) b!351924))

(assert (= (and b!351924 res!195247) b!351921))

(assert (= (and b!351921 res!195248) b!351928))

(assert (= (and b!351928 res!195244) b!351922))

(assert (= (and b!351922 res!195241) b!351931))

(assert (= (and b!351931 res!195242) b!351929))

(assert (= (and b!351929 c!53441) b!351926))

(assert (= (and b!351929 (not c!53441)) b!351927))

(assert (= (and b!351929 res!195240) b!351925))

(assert (= (and b!351925 res!195246) b!351919))

(assert (= (and b!351920 condMapEmpty!13047) mapIsEmpty!13047))

(assert (= (and b!351920 (not condMapEmpty!13047)) mapNonEmpty!13047))

(assert (= (and mapNonEmpty!13047 ((_ is ValueCellFull!3513) mapValue!13047)) b!351930))

(assert (= (and b!351920 ((_ is ValueCellFull!3513) mapDefault!13047)) b!351923))

(assert (= start!35124 b!351920))

(declare-fun m!351697 () Bool)

(assert (=> mapNonEmpty!13047 m!351697))

(declare-fun m!351699 () Bool)

(assert (=> b!351926 m!351699))

(assert (=> b!351926 m!351699))

(declare-fun m!351701 () Bool)

(assert (=> b!351926 m!351701))

(declare-fun m!351703 () Bool)

(assert (=> start!35124 m!351703))

(declare-fun m!351705 () Bool)

(assert (=> start!35124 m!351705))

(declare-fun m!351707 () Bool)

(assert (=> start!35124 m!351707))

(declare-fun m!351709 () Bool)

(assert (=> b!351921 m!351709))

(declare-fun m!351711 () Bool)

(assert (=> b!351925 m!351711))

(declare-fun m!351713 () Bool)

(assert (=> b!351928 m!351713))

(declare-fun m!351715 () Bool)

(assert (=> b!351931 m!351715))

(declare-fun m!351717 () Bool)

(assert (=> b!351924 m!351717))

(declare-fun m!351719 () Bool)

(assert (=> b!351929 m!351719))

(declare-fun m!351721 () Bool)

(assert (=> b!351922 m!351721))

(assert (=> b!351922 m!351721))

(declare-fun m!351723 () Bool)

(assert (=> b!351922 m!351723))

(check-sat b_and!15013 (not b!351931) (not start!35124) (not b!351929) (not b!351926) (not b!351921) (not b!351924) tp_is_empty!7713 (not b_next!7761) (not b!351925) (not b!351922) (not b!351928) (not mapNonEmpty!13047))
(check-sat b_and!15013 (not b_next!7761))
(get-model)

(declare-fun d!71373 () Bool)

(assert (=> d!71373 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!35124 d!71373))

(declare-fun d!71375 () Bool)

(assert (=> d!71375 (= (array_inv!6622 _values!1525) (bvsge (size!9339 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!35124 d!71375))

(declare-fun d!71377 () Bool)

(assert (=> d!71377 (= (array_inv!6623 _keys!1895) (bvsge (size!9338 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!35124 d!71377))

(declare-fun b!351987 () Bool)

(declare-fun c!53453 () Bool)

(declare-fun lt!165047 () (_ BitVec 64))

(assert (=> b!351987 (= c!53453 (= lt!165047 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!215549 () SeekEntryResult!3455)

(declare-fun e!215548 () SeekEntryResult!3455)

(assert (=> b!351987 (= e!215549 e!215548)))

(declare-fun b!351988 () Bool)

(declare-fun e!215550 () SeekEntryResult!3455)

(assert (=> b!351988 (= e!215550 e!215549)))

(declare-fun lt!165048 () SeekEntryResult!3455)

(assert (=> b!351988 (= lt!165047 (select (arr!8986 _keys!1895) (index!16001 lt!165048)))))

(declare-fun c!53451 () Bool)

(assert (=> b!351988 (= c!53451 (= lt!165047 k0!1348))))

(declare-fun b!351989 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18971 (_ BitVec 32)) SeekEntryResult!3455)

(assert (=> b!351989 (= e!215548 (seekKeyOrZeroReturnVacant!0 (x!35022 lt!165048) (index!16001 lt!165048) (index!16001 lt!165048) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!351991 () Bool)

(assert (=> b!351991 (= e!215549 (Found!3455 (index!16001 lt!165048)))))

(declare-fun b!351992 () Bool)

(assert (=> b!351992 (= e!215550 Undefined!3455)))

(declare-fun b!351990 () Bool)

(assert (=> b!351990 (= e!215548 (MissingZero!3455 (index!16001 lt!165048)))))

(declare-fun d!71379 () Bool)

(declare-fun lt!165046 () SeekEntryResult!3455)

(assert (=> d!71379 (and (or ((_ is Undefined!3455) lt!165046) (not ((_ is Found!3455) lt!165046)) (and (bvsge (index!16000 lt!165046) #b00000000000000000000000000000000) (bvslt (index!16000 lt!165046) (size!9338 _keys!1895)))) (or ((_ is Undefined!3455) lt!165046) ((_ is Found!3455) lt!165046) (not ((_ is MissingZero!3455) lt!165046)) (and (bvsge (index!15999 lt!165046) #b00000000000000000000000000000000) (bvslt (index!15999 lt!165046) (size!9338 _keys!1895)))) (or ((_ is Undefined!3455) lt!165046) ((_ is Found!3455) lt!165046) ((_ is MissingZero!3455) lt!165046) (not ((_ is MissingVacant!3455) lt!165046)) (and (bvsge (index!16002 lt!165046) #b00000000000000000000000000000000) (bvslt (index!16002 lt!165046) (size!9338 _keys!1895)))) (or ((_ is Undefined!3455) lt!165046) (ite ((_ is Found!3455) lt!165046) (= (select (arr!8986 _keys!1895) (index!16000 lt!165046)) k0!1348) (ite ((_ is MissingZero!3455) lt!165046) (= (select (arr!8986 _keys!1895) (index!15999 lt!165046)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3455) lt!165046) (= (select (arr!8986 _keys!1895) (index!16002 lt!165046)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71379 (= lt!165046 e!215550)))

(declare-fun c!53452 () Bool)

(assert (=> d!71379 (= c!53452 (and ((_ is Intermediate!3455) lt!165048) (undefined!4267 lt!165048)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18971 (_ BitVec 32)) SeekEntryResult!3455)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71379 (= lt!165048 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71379 (validMask!0 mask!2385)))

(assert (=> d!71379 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!165046)))

(assert (= (and d!71379 c!53452) b!351992))

(assert (= (and d!71379 (not c!53452)) b!351988))

(assert (= (and b!351988 c!53451) b!351991))

(assert (= (and b!351988 (not c!53451)) b!351987))

(assert (= (and b!351987 c!53453) b!351990))

(assert (= (and b!351987 (not c!53453)) b!351989))

(declare-fun m!351753 () Bool)

(assert (=> b!351988 m!351753))

(declare-fun m!351755 () Bool)

(assert (=> b!351989 m!351755))

(declare-fun m!351757 () Bool)

(assert (=> d!71379 m!351757))

(declare-fun m!351759 () Bool)

(assert (=> d!71379 m!351759))

(assert (=> d!71379 m!351703))

(declare-fun m!351761 () Bool)

(assert (=> d!71379 m!351761))

(declare-fun m!351763 () Bool)

(assert (=> d!71379 m!351763))

(assert (=> d!71379 m!351757))

(declare-fun m!351765 () Bool)

(assert (=> d!71379 m!351765))

(assert (=> b!351931 d!71379))

(declare-fun d!71381 () Bool)

(assert (=> d!71381 (contains!2358 (getCurrentListMap!1808 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!165051 () Unit!10885)

(declare-fun choose!1316 (array!18971 array!18973 (_ BitVec 32) (_ BitVec 32) V!11261 V!11261 (_ BitVec 64) (_ BitVec 32) Int) Unit!10885)

(assert (=> d!71381 (= lt!165051 (choose!1316 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!71381 (validMask!0 mask!2385)))

(assert (=> d!71381 (= (lemmaArrayContainsKeyThenInListMap!332 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!165051)))

(declare-fun bs!11982 () Bool)

(assert (= bs!11982 d!71381))

(assert (=> bs!11982 m!351721))

(assert (=> bs!11982 m!351721))

(assert (=> bs!11982 m!351723))

(assert (=> bs!11982 m!351699))

(declare-fun m!351767 () Bool)

(assert (=> bs!11982 m!351767))

(assert (=> bs!11982 m!351703))

(assert (=> b!351926 d!71381))

(declare-fun d!71383 () Bool)

(declare-fun lt!165054 () (_ BitVec 32))

(assert (=> d!71383 (and (or (bvslt lt!165054 #b00000000000000000000000000000000) (bvsge lt!165054 (size!9338 _keys!1895)) (and (bvsge lt!165054 #b00000000000000000000000000000000) (bvslt lt!165054 (size!9338 _keys!1895)))) (bvsge lt!165054 #b00000000000000000000000000000000) (bvslt lt!165054 (size!9338 _keys!1895)) (= (select (arr!8986 _keys!1895) lt!165054) k0!1348))))

(declare-fun e!215553 () (_ BitVec 32))

(assert (=> d!71383 (= lt!165054 e!215553)))

(declare-fun c!53456 () Bool)

(assert (=> d!71383 (= c!53456 (= (select (arr!8986 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71383 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9338 _keys!1895)) (bvslt (size!9338 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!71383 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!165054)))

(declare-fun b!351997 () Bool)

(assert (=> b!351997 (= e!215553 #b00000000000000000000000000000000)))

(declare-fun b!351998 () Bool)

(assert (=> b!351998 (= e!215553 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71383 c!53456) b!351997))

(assert (= (and d!71383 (not c!53456)) b!351998))

(declare-fun m!351769 () Bool)

(assert (=> d!71383 m!351769))

(declare-fun m!351771 () Bool)

(assert (=> d!71383 m!351771))

(declare-fun m!351773 () Bool)

(assert (=> b!351998 m!351773))

(assert (=> b!351926 d!71383))

(declare-fun d!71385 () Bool)

(assert (=> d!71385 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!351928 d!71385))

(declare-fun d!71387 () Bool)

(declare-fun e!215559 () Bool)

(assert (=> d!71387 e!215559))

(declare-fun res!195278 () Bool)

(assert (=> d!71387 (=> res!195278 e!215559)))

(declare-fun lt!165063 () Bool)

(assert (=> d!71387 (= res!195278 (not lt!165063))))

(declare-fun lt!165064 () Bool)

(assert (=> d!71387 (= lt!165063 lt!165064)))

(declare-fun lt!165065 () Unit!10885)

(declare-fun e!215558 () Unit!10885)

(assert (=> d!71387 (= lt!165065 e!215558)))

(declare-fun c!53459 () Bool)

(assert (=> d!71387 (= c!53459 lt!165064)))

(declare-fun containsKey!342 (List!5262 (_ BitVec 64)) Bool)

(assert (=> d!71387 (= lt!165064 (containsKey!342 (toList!2291 (getCurrentListMap!1808 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71387 (= (contains!2358 (getCurrentListMap!1808 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!165063)))

(declare-fun b!352005 () Bool)

(declare-fun lt!165066 () Unit!10885)

(assert (=> b!352005 (= e!215558 lt!165066)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!291 (List!5262 (_ BitVec 64)) Unit!10885)

(assert (=> b!352005 (= lt!165066 (lemmaContainsKeyImpliesGetValueByKeyDefined!291 (toList!2291 (getCurrentListMap!1808 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!356 0))(
  ( (Some!355 (v!6088 V!11261)) (None!354) )
))
(declare-fun isDefined!292 (Option!356) Bool)

(declare-fun getValueByKey!350 (List!5262 (_ BitVec 64)) Option!356)

(assert (=> b!352005 (isDefined!292 (getValueByKey!350 (toList!2291 (getCurrentListMap!1808 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!352006 () Bool)

(declare-fun Unit!10893 () Unit!10885)

(assert (=> b!352006 (= e!215558 Unit!10893)))

(declare-fun b!352007 () Bool)

(assert (=> b!352007 (= e!215559 (isDefined!292 (getValueByKey!350 (toList!2291 (getCurrentListMap!1808 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71387 c!53459) b!352005))

(assert (= (and d!71387 (not c!53459)) b!352006))

(assert (= (and d!71387 (not res!195278)) b!352007))

(declare-fun m!351775 () Bool)

(assert (=> d!71387 m!351775))

(declare-fun m!351777 () Bool)

(assert (=> b!352005 m!351777))

(declare-fun m!351779 () Bool)

(assert (=> b!352005 m!351779))

(assert (=> b!352005 m!351779))

(declare-fun m!351781 () Bool)

(assert (=> b!352005 m!351781))

(assert (=> b!352007 m!351779))

(assert (=> b!352007 m!351779))

(assert (=> b!352007 m!351781))

(assert (=> b!351922 d!71387))

(declare-fun b!352050 () Bool)

(declare-fun e!215586 () Bool)

(declare-fun e!215592 () Bool)

(assert (=> b!352050 (= e!215586 e!215592)))

(declare-fun c!53475 () Bool)

(assert (=> b!352050 (= c!53475 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!352051 () Bool)

(declare-fun e!215597 () Bool)

(declare-fun e!215590 () Bool)

(assert (=> b!352051 (= e!215597 e!215590)))

(declare-fun res!195305 () Bool)

(assert (=> b!352051 (=> (not res!195305) (not e!215590))))

(declare-fun lt!165120 () ListLongMap!4551)

(assert (=> b!352051 (= res!195305 (contains!2358 lt!165120 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!352051 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9338 _keys!1895)))))

(declare-fun b!352052 () Bool)

(declare-fun e!215587 () Bool)

(assert (=> b!352052 (= e!215587 (validKeyInArray!0 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!27041 () Bool)

(declare-fun call!27049 () ListLongMap!4551)

(declare-fun getCurrentListMapNoExtraKeys!612 (array!18971 array!18973 (_ BitVec 32) (_ BitVec 32) V!11261 V!11261 (_ BitVec 32) Int) ListLongMap!4551)

(assert (=> bm!27041 (= call!27049 (getCurrentListMapNoExtraKeys!612 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun bm!27042 () Bool)

(declare-fun call!27047 () Bool)

(assert (=> bm!27042 (= call!27047 (contains!2358 lt!165120 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!352053 () Bool)

(declare-fun res!195302 () Bool)

(assert (=> b!352053 (=> (not res!195302) (not e!215586))))

(assert (=> b!352053 (= res!195302 e!215597)))

(declare-fun res!195298 () Bool)

(assert (=> b!352053 (=> res!195298 e!215597)))

(declare-fun e!215588 () Bool)

(assert (=> b!352053 (= res!195298 (not e!215588))))

(declare-fun res!195303 () Bool)

(assert (=> b!352053 (=> (not res!195303) (not e!215588))))

(assert (=> b!352053 (= res!195303 (bvslt #b00000000000000000000000000000000 (size!9338 _keys!1895)))))

(declare-fun b!352054 () Bool)

(declare-fun e!215594 () Bool)

(declare-fun apply!293 (ListLongMap!4551 (_ BitVec 64)) V!11261)

(assert (=> b!352054 (= e!215594 (= (apply!293 lt!165120 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!352055 () Bool)

(declare-fun get!4810 (ValueCell!3513 V!11261) V!11261)

(declare-fun dynLambda!631 (Int (_ BitVec 64)) V!11261)

(assert (=> b!352055 (= e!215590 (= (apply!293 lt!165120 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000)) (get!4810 (select (arr!8987 _values!1525) #b00000000000000000000000000000000) (dynLambda!631 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!352055 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9339 _values!1525)))))

(assert (=> b!352055 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9338 _keys!1895)))))

(declare-fun b!352056 () Bool)

(declare-fun res!195304 () Bool)

(assert (=> b!352056 (=> (not res!195304) (not e!215586))))

(declare-fun e!215596 () Bool)

(assert (=> b!352056 (= res!195304 e!215596)))

(declare-fun c!53473 () Bool)

(assert (=> b!352056 (= c!53473 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!27045 () ListLongMap!4551)

(declare-fun bm!27043 () Bool)

(declare-fun c!53474 () Bool)

(declare-fun call!27050 () ListLongMap!4551)

(declare-fun c!53472 () Bool)

(declare-fun call!27048 () ListLongMap!4551)

(declare-fun +!737 (ListLongMap!4551 tuple2!5624) ListLongMap!4551)

(assert (=> bm!27043 (= call!27050 (+!737 (ite c!53472 call!27049 (ite c!53474 call!27048 call!27045)) (ite (or c!53472 c!53474) (tuple2!5625 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5625 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!352057 () Bool)

(declare-fun e!215589 () ListLongMap!4551)

(declare-fun call!27044 () ListLongMap!4551)

(assert (=> b!352057 (= e!215589 call!27044)))

(declare-fun b!352058 () Bool)

(declare-fun e!215595 () Bool)

(assert (=> b!352058 (= e!215592 e!215595)))

(declare-fun res!195301 () Bool)

(assert (=> b!352058 (= res!195301 call!27047)))

(assert (=> b!352058 (=> (not res!195301) (not e!215595))))

(declare-fun b!352059 () Bool)

(declare-fun e!215593 () ListLongMap!4551)

(assert (=> b!352059 (= e!215593 e!215589)))

(assert (=> b!352059 (= c!53474 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27044 () Bool)

(assert (=> bm!27044 (= call!27045 call!27048)))

(declare-fun b!352060 () Bool)

(declare-fun e!215598 () Unit!10885)

(declare-fun Unit!10894 () Unit!10885)

(assert (=> b!352060 (= e!215598 Unit!10894)))

(declare-fun b!352061 () Bool)

(declare-fun e!215591 () ListLongMap!4551)

(assert (=> b!352061 (= e!215591 call!27045)))

(declare-fun b!352062 () Bool)

(assert (=> b!352062 (= e!215592 (not call!27047))))

(declare-fun b!352063 () Bool)

(declare-fun c!53477 () Bool)

(assert (=> b!352063 (= c!53477 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!352063 (= e!215589 e!215591)))

(declare-fun bm!27045 () Bool)

(assert (=> bm!27045 (= call!27044 call!27050)))

(declare-fun b!352064 () Bool)

(declare-fun lt!165115 () Unit!10885)

(assert (=> b!352064 (= e!215598 lt!165115)))

(declare-fun lt!165124 () ListLongMap!4551)

(assert (=> b!352064 (= lt!165124 (getCurrentListMapNoExtraKeys!612 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165121 () (_ BitVec 64))

(assert (=> b!352064 (= lt!165121 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165114 () (_ BitVec 64))

(assert (=> b!352064 (= lt!165114 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165117 () Unit!10885)

(declare-fun addStillContains!269 (ListLongMap!4551 (_ BitVec 64) V!11261 (_ BitVec 64)) Unit!10885)

(assert (=> b!352064 (= lt!165117 (addStillContains!269 lt!165124 lt!165121 zeroValue!1467 lt!165114))))

(assert (=> b!352064 (contains!2358 (+!737 lt!165124 (tuple2!5625 lt!165121 zeroValue!1467)) lt!165114)))

(declare-fun lt!165126 () Unit!10885)

(assert (=> b!352064 (= lt!165126 lt!165117)))

(declare-fun lt!165112 () ListLongMap!4551)

(assert (=> b!352064 (= lt!165112 (getCurrentListMapNoExtraKeys!612 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165118 () (_ BitVec 64))

(assert (=> b!352064 (= lt!165118 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165119 () (_ BitVec 64))

(assert (=> b!352064 (= lt!165119 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165122 () Unit!10885)

(declare-fun addApplyDifferent!269 (ListLongMap!4551 (_ BitVec 64) V!11261 (_ BitVec 64)) Unit!10885)

(assert (=> b!352064 (= lt!165122 (addApplyDifferent!269 lt!165112 lt!165118 minValue!1467 lt!165119))))

(assert (=> b!352064 (= (apply!293 (+!737 lt!165112 (tuple2!5625 lt!165118 minValue!1467)) lt!165119) (apply!293 lt!165112 lt!165119))))

(declare-fun lt!165125 () Unit!10885)

(assert (=> b!352064 (= lt!165125 lt!165122)))

(declare-fun lt!165123 () ListLongMap!4551)

(assert (=> b!352064 (= lt!165123 (getCurrentListMapNoExtraKeys!612 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165132 () (_ BitVec 64))

(assert (=> b!352064 (= lt!165132 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165130 () (_ BitVec 64))

(assert (=> b!352064 (= lt!165130 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165116 () Unit!10885)

(assert (=> b!352064 (= lt!165116 (addApplyDifferent!269 lt!165123 lt!165132 zeroValue!1467 lt!165130))))

(assert (=> b!352064 (= (apply!293 (+!737 lt!165123 (tuple2!5625 lt!165132 zeroValue!1467)) lt!165130) (apply!293 lt!165123 lt!165130))))

(declare-fun lt!165129 () Unit!10885)

(assert (=> b!352064 (= lt!165129 lt!165116)))

(declare-fun lt!165111 () ListLongMap!4551)

(assert (=> b!352064 (= lt!165111 (getCurrentListMapNoExtraKeys!612 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165131 () (_ BitVec 64))

(assert (=> b!352064 (= lt!165131 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165127 () (_ BitVec 64))

(assert (=> b!352064 (= lt!165127 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!352064 (= lt!165115 (addApplyDifferent!269 lt!165111 lt!165131 minValue!1467 lt!165127))))

(assert (=> b!352064 (= (apply!293 (+!737 lt!165111 (tuple2!5625 lt!165131 minValue!1467)) lt!165127) (apply!293 lt!165111 lt!165127))))

(declare-fun b!352065 () Bool)

(assert (=> b!352065 (= e!215596 e!215594)))

(declare-fun res!195300 () Bool)

(declare-fun call!27046 () Bool)

(assert (=> b!352065 (= res!195300 call!27046)))

(assert (=> b!352065 (=> (not res!195300) (not e!215594))))

(declare-fun b!352066 () Bool)

(assert (=> b!352066 (= e!215591 call!27044)))

(declare-fun b!352067 () Bool)

(assert (=> b!352067 (= e!215596 (not call!27046))))

(declare-fun bm!27046 () Bool)

(assert (=> bm!27046 (= call!27046 (contains!2358 lt!165120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!352068 () Bool)

(assert (=> b!352068 (= e!215588 (validKeyInArray!0 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352069 () Bool)

(assert (=> b!352069 (= e!215593 (+!737 call!27050 (tuple2!5625 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun bm!27047 () Bool)

(assert (=> bm!27047 (= call!27048 call!27049)))

(declare-fun b!352070 () Bool)

(assert (=> b!352070 (= e!215595 (= (apply!293 lt!165120 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun d!71389 () Bool)

(assert (=> d!71389 e!215586))

(declare-fun res!195299 () Bool)

(assert (=> d!71389 (=> (not res!195299) (not e!215586))))

(assert (=> d!71389 (= res!195299 (or (bvsge #b00000000000000000000000000000000 (size!9338 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9338 _keys!1895)))))))

(declare-fun lt!165128 () ListLongMap!4551)

(assert (=> d!71389 (= lt!165120 lt!165128)))

(declare-fun lt!165113 () Unit!10885)

(assert (=> d!71389 (= lt!165113 e!215598)))

(declare-fun c!53476 () Bool)

(assert (=> d!71389 (= c!53476 e!215587)))

(declare-fun res!195297 () Bool)

(assert (=> d!71389 (=> (not res!195297) (not e!215587))))

(assert (=> d!71389 (= res!195297 (bvslt #b00000000000000000000000000000000 (size!9338 _keys!1895)))))

(assert (=> d!71389 (= lt!165128 e!215593)))

(assert (=> d!71389 (= c!53472 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71389 (validMask!0 mask!2385)))

(assert (=> d!71389 (= (getCurrentListMap!1808 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!165120)))

(assert (= (and d!71389 c!53472) b!352069))

(assert (= (and d!71389 (not c!53472)) b!352059))

(assert (= (and b!352059 c!53474) b!352057))

(assert (= (and b!352059 (not c!53474)) b!352063))

(assert (= (and b!352063 c!53477) b!352066))

(assert (= (and b!352063 (not c!53477)) b!352061))

(assert (= (or b!352066 b!352061) bm!27044))

(assert (= (or b!352057 bm!27044) bm!27047))

(assert (= (or b!352057 b!352066) bm!27045))

(assert (= (or b!352069 bm!27047) bm!27041))

(assert (= (or b!352069 bm!27045) bm!27043))

(assert (= (and d!71389 res!195297) b!352052))

(assert (= (and d!71389 c!53476) b!352064))

(assert (= (and d!71389 (not c!53476)) b!352060))

(assert (= (and d!71389 res!195299) b!352053))

(assert (= (and b!352053 res!195303) b!352068))

(assert (= (and b!352053 (not res!195298)) b!352051))

(assert (= (and b!352051 res!195305) b!352055))

(assert (= (and b!352053 res!195302) b!352056))

(assert (= (and b!352056 c!53473) b!352065))

(assert (= (and b!352056 (not c!53473)) b!352067))

(assert (= (and b!352065 res!195300) b!352054))

(assert (= (or b!352065 b!352067) bm!27046))

(assert (= (and b!352056 res!195304) b!352050))

(assert (= (and b!352050 c!53475) b!352058))

(assert (= (and b!352050 (not c!53475)) b!352062))

(assert (= (and b!352058 res!195301) b!352070))

(assert (= (or b!352058 b!352062) bm!27042))

(declare-fun b_lambda!8541 () Bool)

(assert (=> (not b_lambda!8541) (not b!352055)))

(declare-fun t!10416 () Bool)

(declare-fun tb!3109 () Bool)

(assert (=> (and start!35124 (= defaultEntry!1528 defaultEntry!1528) t!10416) tb!3109))

(declare-fun result!5641 () Bool)

(assert (=> tb!3109 (= result!5641 tp_is_empty!7713)))

(assert (=> b!352055 t!10416))

(declare-fun b_and!15017 () Bool)

(assert (= b_and!15013 (and (=> t!10416 result!5641) b_and!15017)))

(declare-fun m!351783 () Bool)

(assert (=> b!352055 m!351783))

(assert (=> b!352055 m!351783))

(declare-fun m!351785 () Bool)

(assert (=> b!352055 m!351785))

(declare-fun m!351787 () Bool)

(assert (=> b!352055 m!351787))

(assert (=> b!352055 m!351785))

(assert (=> b!352055 m!351771))

(assert (=> b!352055 m!351771))

(declare-fun m!351789 () Bool)

(assert (=> b!352055 m!351789))

(assert (=> b!352051 m!351771))

(assert (=> b!352051 m!351771))

(declare-fun m!351791 () Bool)

(assert (=> b!352051 m!351791))

(assert (=> b!352068 m!351771))

(assert (=> b!352068 m!351771))

(declare-fun m!351793 () Bool)

(assert (=> b!352068 m!351793))

(declare-fun m!351795 () Bool)

(assert (=> b!352070 m!351795))

(declare-fun m!351797 () Bool)

(assert (=> bm!27043 m!351797))

(declare-fun m!351799 () Bool)

(assert (=> b!352069 m!351799))

(assert (=> b!352052 m!351771))

(assert (=> b!352052 m!351771))

(assert (=> b!352052 m!351793))

(declare-fun m!351801 () Bool)

(assert (=> bm!27042 m!351801))

(declare-fun m!351803 () Bool)

(assert (=> bm!27041 m!351803))

(assert (=> d!71389 m!351703))

(declare-fun m!351805 () Bool)

(assert (=> b!352054 m!351805))

(declare-fun m!351807 () Bool)

(assert (=> bm!27046 m!351807))

(declare-fun m!351809 () Bool)

(assert (=> b!352064 m!351809))

(declare-fun m!351811 () Bool)

(assert (=> b!352064 m!351811))

(declare-fun m!351813 () Bool)

(assert (=> b!352064 m!351813))

(declare-fun m!351815 () Bool)

(assert (=> b!352064 m!351815))

(declare-fun m!351817 () Bool)

(assert (=> b!352064 m!351817))

(declare-fun m!351819 () Bool)

(assert (=> b!352064 m!351819))

(assert (=> b!352064 m!351817))

(assert (=> b!352064 m!351771))

(declare-fun m!351821 () Bool)

(assert (=> b!352064 m!351821))

(assert (=> b!352064 m!351809))

(assert (=> b!352064 m!351803))

(declare-fun m!351823 () Bool)

(assert (=> b!352064 m!351823))

(declare-fun m!351825 () Bool)

(assert (=> b!352064 m!351825))

(declare-fun m!351827 () Bool)

(assert (=> b!352064 m!351827))

(assert (=> b!352064 m!351825))

(declare-fun m!351829 () Bool)

(assert (=> b!352064 m!351829))

(declare-fun m!351831 () Bool)

(assert (=> b!352064 m!351831))

(assert (=> b!352064 m!351821))

(declare-fun m!351833 () Bool)

(assert (=> b!352064 m!351833))

(declare-fun m!351835 () Bool)

(assert (=> b!352064 m!351835))

(declare-fun m!351837 () Bool)

(assert (=> b!352064 m!351837))

(assert (=> b!351922 d!71389))

(declare-fun bm!27050 () Bool)

(declare-fun call!27053 () Bool)

(assert (=> bm!27050 (= call!27053 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!352081 () Bool)

(declare-fun e!215606 () Bool)

(declare-fun e!215607 () Bool)

(assert (=> b!352081 (= e!215606 e!215607)))

(declare-fun lt!165139 () (_ BitVec 64))

(assert (=> b!352081 (= lt!165139 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165141 () Unit!10885)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18971 (_ BitVec 64) (_ BitVec 32)) Unit!10885)

(assert (=> b!352081 (= lt!165141 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!165139 #b00000000000000000000000000000000))))

(assert (=> b!352081 (arrayContainsKey!0 _keys!1895 lt!165139 #b00000000000000000000000000000000)))

(declare-fun lt!165140 () Unit!10885)

(assert (=> b!352081 (= lt!165140 lt!165141)))

(declare-fun res!195311 () Bool)

(assert (=> b!352081 (= res!195311 (= (seekEntryOrOpen!0 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3455 #b00000000000000000000000000000000)))))

(assert (=> b!352081 (=> (not res!195311) (not e!215607))))

(declare-fun d!71391 () Bool)

(declare-fun res!195310 () Bool)

(declare-fun e!215605 () Bool)

(assert (=> d!71391 (=> res!195310 e!215605)))

(assert (=> d!71391 (= res!195310 (bvsge #b00000000000000000000000000000000 (size!9338 _keys!1895)))))

(assert (=> d!71391 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!215605)))

(declare-fun b!352082 () Bool)

(assert (=> b!352082 (= e!215606 call!27053)))

(declare-fun b!352083 () Bool)

(assert (=> b!352083 (= e!215605 e!215606)))

(declare-fun c!53480 () Bool)

(assert (=> b!352083 (= c!53480 (validKeyInArray!0 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352084 () Bool)

(assert (=> b!352084 (= e!215607 call!27053)))

(assert (= (and d!71391 (not res!195310)) b!352083))

(assert (= (and b!352083 c!53480) b!352081))

(assert (= (and b!352083 (not c!53480)) b!352082))

(assert (= (and b!352081 res!195311) b!352084))

(assert (= (or b!352084 b!352082) bm!27050))

(declare-fun m!351839 () Bool)

(assert (=> bm!27050 m!351839))

(assert (=> b!352081 m!351771))

(declare-fun m!351841 () Bool)

(assert (=> b!352081 m!351841))

(declare-fun m!351843 () Bool)

(assert (=> b!352081 m!351843))

(assert (=> b!352081 m!351771))

(declare-fun m!351845 () Bool)

(assert (=> b!352081 m!351845))

(assert (=> b!352083 m!351771))

(assert (=> b!352083 m!351771))

(assert (=> b!352083 m!351793))

(assert (=> b!351924 d!71391))

(declare-fun d!71393 () Bool)

(assert (=> d!71393 (= (inRange!0 (index!16002 lt!165026) mask!2385) (and (bvsge (index!16002 lt!165026) #b00000000000000000000000000000000) (bvslt (index!16002 lt!165026) (bvadd mask!2385 #b00000000000000000000000000000001))))))

(assert (=> b!351925 d!71393))

(declare-fun b!352095 () Bool)

(declare-fun e!215617 () Bool)

(declare-fun call!27056 () Bool)

(assert (=> b!352095 (= e!215617 call!27056)))

(declare-fun b!352096 () Bool)

(declare-fun e!215618 () Bool)

(declare-fun e!215619 () Bool)

(assert (=> b!352096 (= e!215618 e!215619)))

(declare-fun res!195320 () Bool)

(assert (=> b!352096 (=> (not res!195320) (not e!215619))))

(declare-fun e!215616 () Bool)

(assert (=> b!352096 (= res!195320 (not e!215616))))

(declare-fun res!195319 () Bool)

(assert (=> b!352096 (=> (not res!195319) (not e!215616))))

(assert (=> b!352096 (= res!195319 (validKeyInArray!0 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352097 () Bool)

(assert (=> b!352097 (= e!215619 e!215617)))

(declare-fun c!53483 () Bool)

(assert (=> b!352097 (= c!53483 (validKeyInArray!0 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!27053 () Bool)

(assert (=> bm!27053 (= call!27056 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53483 (Cons!5257 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000) Nil!5258) Nil!5258)))))

(declare-fun d!71395 () Bool)

(declare-fun res!195318 () Bool)

(assert (=> d!71395 (=> res!195318 e!215618)))

(assert (=> d!71395 (= res!195318 (bvsge #b00000000000000000000000000000000 (size!9338 _keys!1895)))))

(assert (=> d!71395 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5258) e!215618)))

(declare-fun b!352098 () Bool)

(declare-fun contains!2360 (List!5261 (_ BitVec 64)) Bool)

(assert (=> b!352098 (= e!215616 (contains!2360 Nil!5258 (select (arr!8986 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352099 () Bool)

(assert (=> b!352099 (= e!215617 call!27056)))

(assert (= (and d!71395 (not res!195318)) b!352096))

(assert (= (and b!352096 res!195319) b!352098))

(assert (= (and b!352096 res!195320) b!352097))

(assert (= (and b!352097 c!53483) b!352099))

(assert (= (and b!352097 (not c!53483)) b!352095))

(assert (= (or b!352099 b!352095) bm!27053))

(assert (=> b!352096 m!351771))

(assert (=> b!352096 m!351771))

(assert (=> b!352096 m!351793))

(assert (=> b!352097 m!351771))

(assert (=> b!352097 m!351771))

(assert (=> b!352097 m!351793))

(assert (=> bm!27053 m!351771))

(declare-fun m!351847 () Bool)

(assert (=> bm!27053 m!351847))

(assert (=> b!352098 m!351771))

(assert (=> b!352098 m!351771))

(declare-fun m!351849 () Bool)

(assert (=> b!352098 m!351849))

(assert (=> b!351921 d!71395))

(declare-fun d!71397 () Bool)

(declare-fun res!195325 () Bool)

(declare-fun e!215624 () Bool)

(assert (=> d!71397 (=> res!195325 e!215624)))

(assert (=> d!71397 (= res!195325 (= (select (arr!8986 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71397 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!215624)))

(declare-fun b!352104 () Bool)

(declare-fun e!215625 () Bool)

(assert (=> b!352104 (= e!215624 e!215625)))

(declare-fun res!195326 () Bool)

(assert (=> b!352104 (=> (not res!195326) (not e!215625))))

(assert (=> b!352104 (= res!195326 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!9338 _keys!1895)))))

(declare-fun b!352105 () Bool)

(assert (=> b!352105 (= e!215625 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71397 (not res!195325)) b!352104))

(assert (= (and b!352104 res!195326) b!352105))

(assert (=> d!71397 m!351771))

(declare-fun m!351851 () Bool)

(assert (=> b!352105 m!351851))

(assert (=> b!351929 d!71397))

(declare-fun mapNonEmpty!13053 () Bool)

(declare-fun mapRes!13053 () Bool)

(declare-fun tp!26877 () Bool)

(declare-fun e!215630 () Bool)

(assert (=> mapNonEmpty!13053 (= mapRes!13053 (and tp!26877 e!215630))))

(declare-fun mapRest!13053 () (Array (_ BitVec 32) ValueCell!3513))

(declare-fun mapValue!13053 () ValueCell!3513)

(declare-fun mapKey!13053 () (_ BitVec 32))

(assert (=> mapNonEmpty!13053 (= mapRest!13047 (store mapRest!13053 mapKey!13053 mapValue!13053))))

(declare-fun mapIsEmpty!13053 () Bool)

(assert (=> mapIsEmpty!13053 mapRes!13053))

(declare-fun b!352113 () Bool)

(declare-fun e!215631 () Bool)

(assert (=> b!352113 (= e!215631 tp_is_empty!7713)))

(declare-fun condMapEmpty!13053 () Bool)

(declare-fun mapDefault!13053 () ValueCell!3513)

(assert (=> mapNonEmpty!13047 (= condMapEmpty!13053 (= mapRest!13047 ((as const (Array (_ BitVec 32) ValueCell!3513)) mapDefault!13053)))))

(assert (=> mapNonEmpty!13047 (= tp!26868 (and e!215631 mapRes!13053))))

(declare-fun b!352112 () Bool)

(assert (=> b!352112 (= e!215630 tp_is_empty!7713)))

(assert (= (and mapNonEmpty!13047 condMapEmpty!13053) mapIsEmpty!13053))

(assert (= (and mapNonEmpty!13047 (not condMapEmpty!13053)) mapNonEmpty!13053))

(assert (= (and mapNonEmpty!13053 ((_ is ValueCellFull!3513) mapValue!13053)) b!352112))

(assert (= (and mapNonEmpty!13047 ((_ is ValueCellFull!3513) mapDefault!13053)) b!352113))

(declare-fun m!351853 () Bool)

(assert (=> mapNonEmpty!13053 m!351853))

(declare-fun b_lambda!8543 () Bool)

(assert (= b_lambda!8541 (or (and start!35124 b_free!7761) b_lambda!8543)))

(check-sat (not bm!27050) (not b!352051) (not b!352052) (not b!352069) (not b!351998) (not b!352070) (not b!352096) (not bm!27041) (not b!352005) (not bm!27053) (not b!351989) (not b!352068) (not b!352055) (not d!71387) (not b_lambda!8543) (not d!71389) (not bm!27042) (not d!71381) (not b!352064) (not b!352007) (not b!352105) (not b!352097) (not bm!27046) (not b!352098) (not d!71379) tp_is_empty!7713 (not b_next!7761) b_and!15017 (not mapNonEmpty!13053) (not bm!27043) (not b!352083) (not b!352054) (not b!352081))
(check-sat b_and!15017 (not b_next!7761))

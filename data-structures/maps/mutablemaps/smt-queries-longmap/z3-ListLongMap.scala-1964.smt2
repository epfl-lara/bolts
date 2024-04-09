; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34540 () Bool)

(assert start!34540)

(declare-fun b_free!7455 () Bool)

(declare-fun b_next!7455 () Bool)

(assert (=> start!34540 (= b_free!7455 (not b_next!7455))))

(declare-fun tp!25911 () Bool)

(declare-fun b_and!14681 () Bool)

(assert (=> start!34540 (= tp!25911 b_and!14681)))

(declare-fun b!344987 () Bool)

(declare-fun res!190943 () Bool)

(declare-fun e!211455 () Bool)

(assert (=> b!344987 (=> (not res!190943) (not e!211455))))

(declare-datatypes ((array!18369 0))(
  ( (array!18370 (arr!8698 (Array (_ BitVec 32) (_ BitVec 64))) (size!9050 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18369)

(declare-datatypes ((List!5060 0))(
  ( (Nil!5057) (Cons!5056 (h!5912 (_ BitVec 64)) (t!10184 List!5060)) )
))
(declare-fun arrayNoDuplicates!0 (array!18369 (_ BitVec 32) List!5060) Bool)

(assert (=> b!344987 (= res!190943 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5057))))

(declare-fun b!344988 () Bool)

(declare-fun res!190946 () Bool)

(assert (=> b!344988 (=> (not res!190946) (not e!211455))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18369 (_ BitVec 32)) Bool)

(assert (=> b!344988 (= res!190946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12549 () Bool)

(declare-fun mapRes!12549 () Bool)

(assert (=> mapIsEmpty!12549 mapRes!12549))

(declare-fun b!344989 () Bool)

(declare-fun e!211457 () Bool)

(declare-fun tp_is_empty!7407 () Bool)

(assert (=> b!344989 (= e!211457 tp_is_empty!7407)))

(declare-fun b!344990 () Bool)

(declare-fun e!211458 () Bool)

(assert (=> b!344990 (= e!211458 tp_is_empty!7407)))

(declare-fun b!344991 () Bool)

(declare-fun res!190945 () Bool)

(assert (=> b!344991 (=> (not res!190945) (not e!211455))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10853 0))(
  ( (V!10854 (val!3748 Int)) )
))
(declare-fun zeroValue!1467 () V!10853)

(declare-datatypes ((ValueCell!3360 0))(
  ( (ValueCellFull!3360 (v!5920 V!10853)) (EmptyCell!3360) )
))
(declare-datatypes ((array!18371 0))(
  ( (array!18372 (arr!8699 (Array (_ BitVec 32) ValueCell!3360)) (size!9051 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18371)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10853)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5412 0))(
  ( (tuple2!5413 (_1!2716 (_ BitVec 64)) (_2!2716 V!10853)) )
))
(declare-datatypes ((List!5061 0))(
  ( (Nil!5058) (Cons!5057 (h!5913 tuple2!5412) (t!10185 List!5061)) )
))
(declare-datatypes ((ListLongMap!4339 0))(
  ( (ListLongMap!4340 (toList!2185 List!5061)) )
))
(declare-fun contains!2239 (ListLongMap!4339 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1705 (array!18369 array!18371 (_ BitVec 32) (_ BitVec 32) V!10853 V!10853 (_ BitVec 32) Int) ListLongMap!4339)

(assert (=> b!344991 (= res!190945 (not (contains!2239 (getCurrentListMap!1705 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!344992 () Bool)

(declare-fun res!190941 () Bool)

(assert (=> b!344992 (=> (not res!190941) (not e!211455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344992 (= res!190941 (validKeyInArray!0 k0!1348))))

(declare-fun res!190944 () Bool)

(assert (=> start!34540 (=> (not res!190944) (not e!211455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34540 (= res!190944 (validMask!0 mask!2385))))

(assert (=> start!34540 e!211455))

(assert (=> start!34540 true))

(assert (=> start!34540 tp_is_empty!7407))

(assert (=> start!34540 tp!25911))

(declare-fun e!211456 () Bool)

(declare-fun array_inv!6432 (array!18371) Bool)

(assert (=> start!34540 (and (array_inv!6432 _values!1525) e!211456)))

(declare-fun array_inv!6433 (array!18369) Bool)

(assert (=> start!34540 (array_inv!6433 _keys!1895)))

(declare-fun b!344993 () Bool)

(assert (=> b!344993 (= e!211456 (and e!211458 mapRes!12549))))

(declare-fun condMapEmpty!12549 () Bool)

(declare-fun mapDefault!12549 () ValueCell!3360)

(assert (=> b!344993 (= condMapEmpty!12549 (= (arr!8699 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3360)) mapDefault!12549)))))

(declare-fun mapNonEmpty!12549 () Bool)

(declare-fun tp!25910 () Bool)

(assert (=> mapNonEmpty!12549 (= mapRes!12549 (and tp!25910 e!211457))))

(declare-fun mapValue!12549 () ValueCell!3360)

(declare-fun mapKey!12549 () (_ BitVec 32))

(declare-fun mapRest!12549 () (Array (_ BitVec 32) ValueCell!3360))

(assert (=> mapNonEmpty!12549 (= (arr!8699 _values!1525) (store mapRest!12549 mapKey!12549 mapValue!12549))))

(declare-fun b!344994 () Bool)

(declare-datatypes ((SeekEntryResult!3350 0))(
  ( (MissingZero!3350 (index!15579 (_ BitVec 32))) (Found!3350 (index!15580 (_ BitVec 32))) (Intermediate!3350 (undefined!4162 Bool) (index!15581 (_ BitVec 32)) (x!34379 (_ BitVec 32))) (Undefined!3350) (MissingVacant!3350 (index!15582 (_ BitVec 32))) )
))
(declare-fun lt!162717 () SeekEntryResult!3350)

(get-info :version)

(assert (=> b!344994 (= e!211455 (and ((_ is Found!3350) lt!162717) (not (= (select (arr!8698 _keys!1895) (index!15580 lt!162717)) k0!1348))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18369 (_ BitVec 32)) SeekEntryResult!3350)

(assert (=> b!344994 (= lt!162717 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!344995 () Bool)

(declare-fun res!190942 () Bool)

(assert (=> b!344995 (=> (not res!190942) (not e!211455))))

(assert (=> b!344995 (= res!190942 (and (= (size!9051 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9050 _keys!1895) (size!9051 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!34540 res!190944) b!344995))

(assert (= (and b!344995 res!190942) b!344988))

(assert (= (and b!344988 res!190946) b!344987))

(assert (= (and b!344987 res!190943) b!344992))

(assert (= (and b!344992 res!190941) b!344991))

(assert (= (and b!344991 res!190945) b!344994))

(assert (= (and b!344993 condMapEmpty!12549) mapIsEmpty!12549))

(assert (= (and b!344993 (not condMapEmpty!12549)) mapNonEmpty!12549))

(assert (= (and mapNonEmpty!12549 ((_ is ValueCellFull!3360) mapValue!12549)) b!344989))

(assert (= (and b!344993 ((_ is ValueCellFull!3360) mapDefault!12549)) b!344990))

(assert (= start!34540 b!344993))

(declare-fun m!346459 () Bool)

(assert (=> start!34540 m!346459))

(declare-fun m!346461 () Bool)

(assert (=> start!34540 m!346461))

(declare-fun m!346463 () Bool)

(assert (=> start!34540 m!346463))

(declare-fun m!346465 () Bool)

(assert (=> b!344992 m!346465))

(declare-fun m!346467 () Bool)

(assert (=> b!344991 m!346467))

(assert (=> b!344991 m!346467))

(declare-fun m!346469 () Bool)

(assert (=> b!344991 m!346469))

(declare-fun m!346471 () Bool)

(assert (=> b!344994 m!346471))

(declare-fun m!346473 () Bool)

(assert (=> b!344994 m!346473))

(declare-fun m!346475 () Bool)

(assert (=> b!344988 m!346475))

(declare-fun m!346477 () Bool)

(assert (=> mapNonEmpty!12549 m!346477))

(declare-fun m!346479 () Bool)

(assert (=> b!344987 m!346479))

(check-sat (not mapNonEmpty!12549) (not b!344994) (not b!344988) (not b!344987) (not b!344991) (not b!344992) b_and!14681 tp_is_empty!7407 (not start!34540) (not b_next!7455))
(check-sat b_and!14681 (not b_next!7455))
(get-model)

(declare-fun b!345035 () Bool)

(declare-fun e!211480 () SeekEntryResult!3350)

(declare-fun lt!162728 () SeekEntryResult!3350)

(assert (=> b!345035 (= e!211480 (MissingZero!3350 (index!15581 lt!162728)))))

(declare-fun d!70987 () Bool)

(declare-fun lt!162727 () SeekEntryResult!3350)

(assert (=> d!70987 (and (or ((_ is Undefined!3350) lt!162727) (not ((_ is Found!3350) lt!162727)) (and (bvsge (index!15580 lt!162727) #b00000000000000000000000000000000) (bvslt (index!15580 lt!162727) (size!9050 _keys!1895)))) (or ((_ is Undefined!3350) lt!162727) ((_ is Found!3350) lt!162727) (not ((_ is MissingZero!3350) lt!162727)) (and (bvsge (index!15579 lt!162727) #b00000000000000000000000000000000) (bvslt (index!15579 lt!162727) (size!9050 _keys!1895)))) (or ((_ is Undefined!3350) lt!162727) ((_ is Found!3350) lt!162727) ((_ is MissingZero!3350) lt!162727) (not ((_ is MissingVacant!3350) lt!162727)) (and (bvsge (index!15582 lt!162727) #b00000000000000000000000000000000) (bvslt (index!15582 lt!162727) (size!9050 _keys!1895)))) (or ((_ is Undefined!3350) lt!162727) (ite ((_ is Found!3350) lt!162727) (= (select (arr!8698 _keys!1895) (index!15580 lt!162727)) k0!1348) (ite ((_ is MissingZero!3350) lt!162727) (= (select (arr!8698 _keys!1895) (index!15579 lt!162727)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3350) lt!162727) (= (select (arr!8698 _keys!1895) (index!15582 lt!162727)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!211482 () SeekEntryResult!3350)

(assert (=> d!70987 (= lt!162727 e!211482)))

(declare-fun c!52884 () Bool)

(assert (=> d!70987 (= c!52884 (and ((_ is Intermediate!3350) lt!162728) (undefined!4162 lt!162728)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18369 (_ BitVec 32)) SeekEntryResult!3350)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70987 (= lt!162728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70987 (validMask!0 mask!2385)))

(assert (=> d!70987 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!162727)))

(declare-fun b!345036 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18369 (_ BitVec 32)) SeekEntryResult!3350)

(assert (=> b!345036 (= e!211480 (seekKeyOrZeroReturnVacant!0 (x!34379 lt!162728) (index!15581 lt!162728) (index!15581 lt!162728) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!345037 () Bool)

(assert (=> b!345037 (= e!211482 Undefined!3350)))

(declare-fun b!345038 () Bool)

(declare-fun c!52885 () Bool)

(declare-fun lt!162729 () (_ BitVec 64))

(assert (=> b!345038 (= c!52885 (= lt!162729 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!211481 () SeekEntryResult!3350)

(assert (=> b!345038 (= e!211481 e!211480)))

(declare-fun b!345039 () Bool)

(assert (=> b!345039 (= e!211482 e!211481)))

(assert (=> b!345039 (= lt!162729 (select (arr!8698 _keys!1895) (index!15581 lt!162728)))))

(declare-fun c!52886 () Bool)

(assert (=> b!345039 (= c!52886 (= lt!162729 k0!1348))))

(declare-fun b!345040 () Bool)

(assert (=> b!345040 (= e!211481 (Found!3350 (index!15581 lt!162728)))))

(assert (= (and d!70987 c!52884) b!345037))

(assert (= (and d!70987 (not c!52884)) b!345039))

(assert (= (and b!345039 c!52886) b!345040))

(assert (= (and b!345039 (not c!52886)) b!345038))

(assert (= (and b!345038 c!52885) b!345035))

(assert (= (and b!345038 (not c!52885)) b!345036))

(declare-fun m!346503 () Bool)

(assert (=> d!70987 m!346503))

(declare-fun m!346505 () Bool)

(assert (=> d!70987 m!346505))

(declare-fun m!346507 () Bool)

(assert (=> d!70987 m!346507))

(declare-fun m!346509 () Bool)

(assert (=> d!70987 m!346509))

(assert (=> d!70987 m!346505))

(declare-fun m!346511 () Bool)

(assert (=> d!70987 m!346511))

(assert (=> d!70987 m!346459))

(declare-fun m!346513 () Bool)

(assert (=> b!345036 m!346513))

(declare-fun m!346515 () Bool)

(assert (=> b!345039 m!346515))

(assert (=> b!344994 d!70987))

(declare-fun d!70989 () Bool)

(assert (=> d!70989 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34540 d!70989))

(declare-fun d!70991 () Bool)

(assert (=> d!70991 (= (array_inv!6432 _values!1525) (bvsge (size!9051 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34540 d!70991))

(declare-fun d!70993 () Bool)

(assert (=> d!70993 (= (array_inv!6433 _keys!1895) (bvsge (size!9050 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34540 d!70993))

(declare-fun d!70995 () Bool)

(assert (=> d!70995 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!344992 d!70995))

(declare-fun bm!26669 () Bool)

(declare-fun call!26672 () Bool)

(assert (=> bm!26669 (= call!26672 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!345049 () Bool)

(declare-fun e!211491 () Bool)

(assert (=> b!345049 (= e!211491 call!26672)))

(declare-fun b!345050 () Bool)

(declare-fun e!211489 () Bool)

(assert (=> b!345050 (= e!211491 e!211489)))

(declare-fun lt!162737 () (_ BitVec 64))

(assert (=> b!345050 (= lt!162737 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10724 0))(
  ( (Unit!10725) )
))
(declare-fun lt!162738 () Unit!10724)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18369 (_ BitVec 64) (_ BitVec 32)) Unit!10724)

(assert (=> b!345050 (= lt!162738 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!162737 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!18369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!345050 (arrayContainsKey!0 _keys!1895 lt!162737 #b00000000000000000000000000000000)))

(declare-fun lt!162736 () Unit!10724)

(assert (=> b!345050 (= lt!162736 lt!162738)))

(declare-fun res!190970 () Bool)

(assert (=> b!345050 (= res!190970 (= (seekEntryOrOpen!0 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3350 #b00000000000000000000000000000000)))))

(assert (=> b!345050 (=> (not res!190970) (not e!211489))))

(declare-fun b!345051 () Bool)

(declare-fun e!211490 () Bool)

(assert (=> b!345051 (= e!211490 e!211491)))

(declare-fun c!52889 () Bool)

(assert (=> b!345051 (= c!52889 (validKeyInArray!0 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345052 () Bool)

(assert (=> b!345052 (= e!211489 call!26672)))

(declare-fun d!70997 () Bool)

(declare-fun res!190969 () Bool)

(assert (=> d!70997 (=> res!190969 e!211490)))

(assert (=> d!70997 (= res!190969 (bvsge #b00000000000000000000000000000000 (size!9050 _keys!1895)))))

(assert (=> d!70997 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!211490)))

(assert (= (and d!70997 (not res!190969)) b!345051))

(assert (= (and b!345051 c!52889) b!345050))

(assert (= (and b!345051 (not c!52889)) b!345049))

(assert (= (and b!345050 res!190970) b!345052))

(assert (= (or b!345052 b!345049) bm!26669))

(declare-fun m!346517 () Bool)

(assert (=> bm!26669 m!346517))

(declare-fun m!346519 () Bool)

(assert (=> b!345050 m!346519))

(declare-fun m!346521 () Bool)

(assert (=> b!345050 m!346521))

(declare-fun m!346523 () Bool)

(assert (=> b!345050 m!346523))

(assert (=> b!345050 m!346519))

(declare-fun m!346525 () Bool)

(assert (=> b!345050 m!346525))

(assert (=> b!345051 m!346519))

(assert (=> b!345051 m!346519))

(declare-fun m!346527 () Bool)

(assert (=> b!345051 m!346527))

(assert (=> b!344988 d!70997))

(declare-fun d!70999 () Bool)

(declare-fun e!211497 () Bool)

(assert (=> d!70999 e!211497))

(declare-fun res!190973 () Bool)

(assert (=> d!70999 (=> res!190973 e!211497)))

(declare-fun lt!162750 () Bool)

(assert (=> d!70999 (= res!190973 (not lt!162750))))

(declare-fun lt!162749 () Bool)

(assert (=> d!70999 (= lt!162750 lt!162749)))

(declare-fun lt!162747 () Unit!10724)

(declare-fun e!211496 () Unit!10724)

(assert (=> d!70999 (= lt!162747 e!211496)))

(declare-fun c!52892 () Bool)

(assert (=> d!70999 (= c!52892 lt!162749)))

(declare-fun containsKey!329 (List!5061 (_ BitVec 64)) Bool)

(assert (=> d!70999 (= lt!162749 (containsKey!329 (toList!2185 (getCurrentListMap!1705 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70999 (= (contains!2239 (getCurrentListMap!1705 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!162750)))

(declare-fun b!345059 () Bool)

(declare-fun lt!162748 () Unit!10724)

(assert (=> b!345059 (= e!211496 lt!162748)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!278 (List!5061 (_ BitVec 64)) Unit!10724)

(assert (=> b!345059 (= lt!162748 (lemmaContainsKeyImpliesGetValueByKeyDefined!278 (toList!2185 (getCurrentListMap!1705 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!343 0))(
  ( (Some!342 (v!5922 V!10853)) (None!341) )
))
(declare-fun isDefined!279 (Option!343) Bool)

(declare-fun getValueByKey!337 (List!5061 (_ BitVec 64)) Option!343)

(assert (=> b!345059 (isDefined!279 (getValueByKey!337 (toList!2185 (getCurrentListMap!1705 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!345060 () Bool)

(declare-fun Unit!10726 () Unit!10724)

(assert (=> b!345060 (= e!211496 Unit!10726)))

(declare-fun b!345061 () Bool)

(assert (=> b!345061 (= e!211497 (isDefined!279 (getValueByKey!337 (toList!2185 (getCurrentListMap!1705 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70999 c!52892) b!345059))

(assert (= (and d!70999 (not c!52892)) b!345060))

(assert (= (and d!70999 (not res!190973)) b!345061))

(declare-fun m!346529 () Bool)

(assert (=> d!70999 m!346529))

(declare-fun m!346531 () Bool)

(assert (=> b!345059 m!346531))

(declare-fun m!346533 () Bool)

(assert (=> b!345059 m!346533))

(assert (=> b!345059 m!346533))

(declare-fun m!346535 () Bool)

(assert (=> b!345059 m!346535))

(assert (=> b!345061 m!346533))

(assert (=> b!345061 m!346533))

(assert (=> b!345061 m!346535))

(assert (=> b!344991 d!70999))

(declare-fun bm!26684 () Bool)

(declare-fun call!26689 () Bool)

(declare-fun lt!162810 () ListLongMap!4339)

(assert (=> bm!26684 (= call!26689 (contains!2239 lt!162810 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!345104 () Bool)

(declare-fun e!211533 () ListLongMap!4339)

(declare-fun e!211534 () ListLongMap!4339)

(assert (=> b!345104 (= e!211533 e!211534)))

(declare-fun c!52905 () Bool)

(assert (=> b!345104 (= c!52905 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!345105 () Bool)

(declare-fun call!26687 () ListLongMap!4339)

(assert (=> b!345105 (= e!211534 call!26687)))

(declare-fun b!345106 () Bool)

(declare-fun e!211532 () ListLongMap!4339)

(assert (=> b!345106 (= e!211532 call!26687)))

(declare-fun b!345108 () Bool)

(declare-fun e!211525 () Bool)

(assert (=> b!345108 (= e!211525 (validKeyInArray!0 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345109 () Bool)

(declare-fun e!211535 () Bool)

(declare-fun e!211524 () Bool)

(assert (=> b!345109 (= e!211535 e!211524)))

(declare-fun c!52909 () Bool)

(assert (=> b!345109 (= c!52909 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!345110 () Bool)

(declare-fun e!211528 () Unit!10724)

(declare-fun lt!162808 () Unit!10724)

(assert (=> b!345110 (= e!211528 lt!162808)))

(declare-fun lt!162801 () ListLongMap!4339)

(declare-fun getCurrentListMapNoExtraKeys!599 (array!18369 array!18371 (_ BitVec 32) (_ BitVec 32) V!10853 V!10853 (_ BitVec 32) Int) ListLongMap!4339)

(assert (=> b!345110 (= lt!162801 (getCurrentListMapNoExtraKeys!599 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162795 () (_ BitVec 64))

(assert (=> b!345110 (= lt!162795 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162803 () (_ BitVec 64))

(assert (=> b!345110 (= lt!162803 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162804 () Unit!10724)

(declare-fun addStillContains!256 (ListLongMap!4339 (_ BitVec 64) V!10853 (_ BitVec 64)) Unit!10724)

(assert (=> b!345110 (= lt!162804 (addStillContains!256 lt!162801 lt!162795 zeroValue!1467 lt!162803))))

(declare-fun +!724 (ListLongMap!4339 tuple2!5412) ListLongMap!4339)

(assert (=> b!345110 (contains!2239 (+!724 lt!162801 (tuple2!5413 lt!162795 zeroValue!1467)) lt!162803)))

(declare-fun lt!162796 () Unit!10724)

(assert (=> b!345110 (= lt!162796 lt!162804)))

(declare-fun lt!162807 () ListLongMap!4339)

(assert (=> b!345110 (= lt!162807 (getCurrentListMapNoExtraKeys!599 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162802 () (_ BitVec 64))

(assert (=> b!345110 (= lt!162802 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162816 () (_ BitVec 64))

(assert (=> b!345110 (= lt!162816 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162811 () Unit!10724)

(declare-fun addApplyDifferent!256 (ListLongMap!4339 (_ BitVec 64) V!10853 (_ BitVec 64)) Unit!10724)

(assert (=> b!345110 (= lt!162811 (addApplyDifferent!256 lt!162807 lt!162802 minValue!1467 lt!162816))))

(declare-fun apply!280 (ListLongMap!4339 (_ BitVec 64)) V!10853)

(assert (=> b!345110 (= (apply!280 (+!724 lt!162807 (tuple2!5413 lt!162802 minValue!1467)) lt!162816) (apply!280 lt!162807 lt!162816))))

(declare-fun lt!162814 () Unit!10724)

(assert (=> b!345110 (= lt!162814 lt!162811)))

(declare-fun lt!162799 () ListLongMap!4339)

(assert (=> b!345110 (= lt!162799 (getCurrentListMapNoExtraKeys!599 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162798 () (_ BitVec 64))

(assert (=> b!345110 (= lt!162798 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162812 () (_ BitVec 64))

(assert (=> b!345110 (= lt!162812 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!162800 () Unit!10724)

(assert (=> b!345110 (= lt!162800 (addApplyDifferent!256 lt!162799 lt!162798 zeroValue!1467 lt!162812))))

(assert (=> b!345110 (= (apply!280 (+!724 lt!162799 (tuple2!5413 lt!162798 zeroValue!1467)) lt!162812) (apply!280 lt!162799 lt!162812))))

(declare-fun lt!162805 () Unit!10724)

(assert (=> b!345110 (= lt!162805 lt!162800)))

(declare-fun lt!162813 () ListLongMap!4339)

(assert (=> b!345110 (= lt!162813 (getCurrentListMapNoExtraKeys!599 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!162797 () (_ BitVec 64))

(assert (=> b!345110 (= lt!162797 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!162815 () (_ BitVec 64))

(assert (=> b!345110 (= lt!162815 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!345110 (= lt!162808 (addApplyDifferent!256 lt!162813 lt!162797 minValue!1467 lt!162815))))

(assert (=> b!345110 (= (apply!280 (+!724 lt!162813 (tuple2!5413 lt!162797 minValue!1467)) lt!162815) (apply!280 lt!162813 lt!162815))))

(declare-fun b!345111 () Bool)

(declare-fun call!26688 () Bool)

(assert (=> b!345111 (= e!211524 (not call!26688))))

(declare-fun bm!26685 () Bool)

(assert (=> bm!26685 (= call!26688 (contains!2239 lt!162810 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26686 () Bool)

(declare-fun call!26691 () ListLongMap!4339)

(declare-fun call!26693 () ListLongMap!4339)

(assert (=> bm!26686 (= call!26691 call!26693)))

(declare-fun b!345112 () Bool)

(declare-fun res!190994 () Bool)

(assert (=> b!345112 (=> (not res!190994) (not e!211535))))

(declare-fun e!211529 () Bool)

(assert (=> b!345112 (= res!190994 e!211529)))

(declare-fun c!52910 () Bool)

(assert (=> b!345112 (= c!52910 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!26687 () Bool)

(declare-fun call!26690 () ListLongMap!4339)

(assert (=> bm!26687 (= call!26687 call!26690)))

(declare-fun b!345113 () Bool)

(declare-fun e!211536 () Bool)

(assert (=> b!345113 (= e!211529 e!211536)))

(declare-fun res!190996 () Bool)

(assert (=> b!345113 (= res!190996 call!26689)))

(assert (=> b!345113 (=> (not res!190996) (not e!211536))))

(declare-fun b!345114 () Bool)

(assert (=> b!345114 (= e!211529 (not call!26689))))

(declare-fun bm!26688 () Bool)

(declare-fun c!52906 () Bool)

(declare-fun call!26692 () ListLongMap!4339)

(assert (=> bm!26688 (= call!26690 (+!724 (ite c!52906 call!26693 (ite c!52905 call!26691 call!26692)) (ite (or c!52906 c!52905) (tuple2!5413 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5413 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!345115 () Bool)

(declare-fun e!211526 () Bool)

(assert (=> b!345115 (= e!211526 (validKeyInArray!0 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345116 () Bool)

(assert (=> b!345116 (= e!211532 call!26692)))

(declare-fun bm!26689 () Bool)

(assert (=> bm!26689 (= call!26693 (getCurrentListMapNoExtraKeys!599 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!345117 () Bool)

(declare-fun e!211531 () Bool)

(assert (=> b!345117 (= e!211531 (= (apply!280 lt!162810 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun bm!26690 () Bool)

(assert (=> bm!26690 (= call!26692 call!26691)))

(declare-fun b!345107 () Bool)

(declare-fun res!190997 () Bool)

(assert (=> b!345107 (=> (not res!190997) (not e!211535))))

(declare-fun e!211530 () Bool)

(assert (=> b!345107 (= res!190997 e!211530)))

(declare-fun res!191000 () Bool)

(assert (=> b!345107 (=> res!191000 e!211530)))

(assert (=> b!345107 (= res!191000 (not e!211525))))

(declare-fun res!190998 () Bool)

(assert (=> b!345107 (=> (not res!190998) (not e!211525))))

(assert (=> b!345107 (= res!190998 (bvslt #b00000000000000000000000000000000 (size!9050 _keys!1895)))))

(declare-fun d!71001 () Bool)

(assert (=> d!71001 e!211535))

(declare-fun res!190992 () Bool)

(assert (=> d!71001 (=> (not res!190992) (not e!211535))))

(assert (=> d!71001 (= res!190992 (or (bvsge #b00000000000000000000000000000000 (size!9050 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9050 _keys!1895)))))))

(declare-fun lt!162809 () ListLongMap!4339)

(assert (=> d!71001 (= lt!162810 lt!162809)))

(declare-fun lt!162806 () Unit!10724)

(assert (=> d!71001 (= lt!162806 e!211528)))

(declare-fun c!52907 () Bool)

(assert (=> d!71001 (= c!52907 e!211526)))

(declare-fun res!190999 () Bool)

(assert (=> d!71001 (=> (not res!190999) (not e!211526))))

(assert (=> d!71001 (= res!190999 (bvslt #b00000000000000000000000000000000 (size!9050 _keys!1895)))))

(assert (=> d!71001 (= lt!162809 e!211533)))

(assert (=> d!71001 (= c!52906 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71001 (validMask!0 mask!2385)))

(assert (=> d!71001 (= (getCurrentListMap!1705 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!162810)))

(declare-fun b!345118 () Bool)

(declare-fun Unit!10727 () Unit!10724)

(assert (=> b!345118 (= e!211528 Unit!10727)))

(declare-fun b!345119 () Bool)

(declare-fun c!52908 () Bool)

(assert (=> b!345119 (= c!52908 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!345119 (= e!211534 e!211532)))

(declare-fun b!345120 () Bool)

(assert (=> b!345120 (= e!211533 (+!724 call!26690 (tuple2!5413 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!345121 () Bool)

(assert (=> b!345121 (= e!211524 e!211531)))

(declare-fun res!190995 () Bool)

(assert (=> b!345121 (= res!190995 call!26688)))

(assert (=> b!345121 (=> (not res!190995) (not e!211531))))

(declare-fun b!345122 () Bool)

(assert (=> b!345122 (= e!211536 (= (apply!280 lt!162810 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!345123 () Bool)

(declare-fun e!211527 () Bool)

(assert (=> b!345123 (= e!211530 e!211527)))

(declare-fun res!190993 () Bool)

(assert (=> b!345123 (=> (not res!190993) (not e!211527))))

(assert (=> b!345123 (= res!190993 (contains!2239 lt!162810 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!345123 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9050 _keys!1895)))))

(declare-fun b!345124 () Bool)

(declare-fun get!4695 (ValueCell!3360 V!10853) V!10853)

(declare-fun dynLambda!618 (Int (_ BitVec 64)) V!10853)

(assert (=> b!345124 (= e!211527 (= (apply!280 lt!162810 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000)) (get!4695 (select (arr!8699 _values!1525) #b00000000000000000000000000000000) (dynLambda!618 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!345124 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9051 _values!1525)))))

(assert (=> b!345124 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9050 _keys!1895)))))

(assert (= (and d!71001 c!52906) b!345120))

(assert (= (and d!71001 (not c!52906)) b!345104))

(assert (= (and b!345104 c!52905) b!345105))

(assert (= (and b!345104 (not c!52905)) b!345119))

(assert (= (and b!345119 c!52908) b!345106))

(assert (= (and b!345119 (not c!52908)) b!345116))

(assert (= (or b!345106 b!345116) bm!26690))

(assert (= (or b!345105 bm!26690) bm!26686))

(assert (= (or b!345105 b!345106) bm!26687))

(assert (= (or b!345120 bm!26686) bm!26689))

(assert (= (or b!345120 bm!26687) bm!26688))

(assert (= (and d!71001 res!190999) b!345115))

(assert (= (and d!71001 c!52907) b!345110))

(assert (= (and d!71001 (not c!52907)) b!345118))

(assert (= (and d!71001 res!190992) b!345107))

(assert (= (and b!345107 res!190998) b!345108))

(assert (= (and b!345107 (not res!191000)) b!345123))

(assert (= (and b!345123 res!190993) b!345124))

(assert (= (and b!345107 res!190997) b!345112))

(assert (= (and b!345112 c!52910) b!345113))

(assert (= (and b!345112 (not c!52910)) b!345114))

(assert (= (and b!345113 res!190996) b!345122))

(assert (= (or b!345113 b!345114) bm!26684))

(assert (= (and b!345112 res!190994) b!345109))

(assert (= (and b!345109 c!52909) b!345121))

(assert (= (and b!345109 (not c!52909)) b!345111))

(assert (= (and b!345121 res!190995) b!345117))

(assert (= (or b!345121 b!345111) bm!26685))

(declare-fun b_lambda!8489 () Bool)

(assert (=> (not b_lambda!8489) (not b!345124)))

(declare-fun t!10187 () Bool)

(declare-fun tb!3083 () Bool)

(assert (=> (and start!34540 (= defaultEntry!1528 defaultEntry!1528) t!10187) tb!3083))

(declare-fun result!5563 () Bool)

(assert (=> tb!3083 (= result!5563 tp_is_empty!7407)))

(assert (=> b!345124 t!10187))

(declare-fun b_and!14685 () Bool)

(assert (= b_and!14681 (and (=> t!10187 result!5563) b_and!14685)))

(assert (=> d!71001 m!346459))

(declare-fun m!346537 () Bool)

(assert (=> bm!26689 m!346537))

(assert (=> b!345123 m!346519))

(assert (=> b!345123 m!346519))

(declare-fun m!346539 () Bool)

(assert (=> b!345123 m!346539))

(declare-fun m!346541 () Bool)

(assert (=> bm!26688 m!346541))

(declare-fun m!346543 () Bool)

(assert (=> b!345117 m!346543))

(declare-fun m!346545 () Bool)

(assert (=> bm!26685 m!346545))

(assert (=> b!345124 m!346519))

(assert (=> b!345124 m!346519))

(declare-fun m!346547 () Bool)

(assert (=> b!345124 m!346547))

(declare-fun m!346549 () Bool)

(assert (=> b!345124 m!346549))

(declare-fun m!346551 () Bool)

(assert (=> b!345124 m!346551))

(assert (=> b!345124 m!346549))

(declare-fun m!346553 () Bool)

(assert (=> b!345124 m!346553))

(assert (=> b!345124 m!346551))

(declare-fun m!346555 () Bool)

(assert (=> bm!26684 m!346555))

(declare-fun m!346557 () Bool)

(assert (=> b!345120 m!346557))

(assert (=> b!345110 m!346519))

(declare-fun m!346559 () Bool)

(assert (=> b!345110 m!346559))

(declare-fun m!346561 () Bool)

(assert (=> b!345110 m!346561))

(declare-fun m!346563 () Bool)

(assert (=> b!345110 m!346563))

(declare-fun m!346565 () Bool)

(assert (=> b!345110 m!346565))

(declare-fun m!346567 () Bool)

(assert (=> b!345110 m!346567))

(declare-fun m!346569 () Bool)

(assert (=> b!345110 m!346569))

(assert (=> b!345110 m!346559))

(declare-fun m!346571 () Bool)

(assert (=> b!345110 m!346571))

(declare-fun m!346573 () Bool)

(assert (=> b!345110 m!346573))

(assert (=> b!345110 m!346563))

(declare-fun m!346575 () Bool)

(assert (=> b!345110 m!346575))

(assert (=> b!345110 m!346537))

(declare-fun m!346577 () Bool)

(assert (=> b!345110 m!346577))

(declare-fun m!346579 () Bool)

(assert (=> b!345110 m!346579))

(assert (=> b!345110 m!346573))

(declare-fun m!346581 () Bool)

(assert (=> b!345110 m!346581))

(assert (=> b!345110 m!346567))

(declare-fun m!346583 () Bool)

(assert (=> b!345110 m!346583))

(declare-fun m!346585 () Bool)

(assert (=> b!345110 m!346585))

(declare-fun m!346587 () Bool)

(assert (=> b!345110 m!346587))

(assert (=> b!345115 m!346519))

(assert (=> b!345115 m!346519))

(assert (=> b!345115 m!346527))

(declare-fun m!346589 () Bool)

(assert (=> b!345122 m!346589))

(assert (=> b!345108 m!346519))

(assert (=> b!345108 m!346519))

(assert (=> b!345108 m!346527))

(assert (=> b!344991 d!71001))

(declare-fun b!345137 () Bool)

(declare-fun e!211547 () Bool)

(declare-fun call!26696 () Bool)

(assert (=> b!345137 (= e!211547 call!26696)))

(declare-fun b!345138 () Bool)

(declare-fun e!211546 () Bool)

(declare-fun e!211545 () Bool)

(assert (=> b!345138 (= e!211546 e!211545)))

(declare-fun res!191007 () Bool)

(assert (=> b!345138 (=> (not res!191007) (not e!211545))))

(declare-fun e!211548 () Bool)

(assert (=> b!345138 (= res!191007 (not e!211548))))

(declare-fun res!191009 () Bool)

(assert (=> b!345138 (=> (not res!191009) (not e!211548))))

(assert (=> b!345138 (= res!191009 (validKeyInArray!0 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71003 () Bool)

(declare-fun res!191008 () Bool)

(assert (=> d!71003 (=> res!191008 e!211546)))

(assert (=> d!71003 (= res!191008 (bvsge #b00000000000000000000000000000000 (size!9050 _keys!1895)))))

(assert (=> d!71003 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5057) e!211546)))

(declare-fun b!345139 () Bool)

(assert (=> b!345139 (= e!211545 e!211547)))

(declare-fun c!52913 () Bool)

(assert (=> b!345139 (= c!52913 (validKeyInArray!0 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345140 () Bool)

(declare-fun contains!2240 (List!5060 (_ BitVec 64)) Bool)

(assert (=> b!345140 (= e!211548 (contains!2240 Nil!5057 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345141 () Bool)

(assert (=> b!345141 (= e!211547 call!26696)))

(declare-fun bm!26693 () Bool)

(assert (=> bm!26693 (= call!26696 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52913 (Cons!5056 (select (arr!8698 _keys!1895) #b00000000000000000000000000000000) Nil!5057) Nil!5057)))))

(assert (= (and d!71003 (not res!191008)) b!345138))

(assert (= (and b!345138 res!191009) b!345140))

(assert (= (and b!345138 res!191007) b!345139))

(assert (= (and b!345139 c!52913) b!345137))

(assert (= (and b!345139 (not c!52913)) b!345141))

(assert (= (or b!345137 b!345141) bm!26693))

(assert (=> b!345138 m!346519))

(assert (=> b!345138 m!346519))

(assert (=> b!345138 m!346527))

(assert (=> b!345139 m!346519))

(assert (=> b!345139 m!346519))

(assert (=> b!345139 m!346527))

(assert (=> b!345140 m!346519))

(assert (=> b!345140 m!346519))

(declare-fun m!346591 () Bool)

(assert (=> b!345140 m!346591))

(assert (=> bm!26693 m!346519))

(declare-fun m!346593 () Bool)

(assert (=> bm!26693 m!346593))

(assert (=> b!344987 d!71003))

(declare-fun mapNonEmpty!12555 () Bool)

(declare-fun mapRes!12555 () Bool)

(declare-fun tp!25920 () Bool)

(declare-fun e!211553 () Bool)

(assert (=> mapNonEmpty!12555 (= mapRes!12555 (and tp!25920 e!211553))))

(declare-fun mapValue!12555 () ValueCell!3360)

(declare-fun mapKey!12555 () (_ BitVec 32))

(declare-fun mapRest!12555 () (Array (_ BitVec 32) ValueCell!3360))

(assert (=> mapNonEmpty!12555 (= mapRest!12549 (store mapRest!12555 mapKey!12555 mapValue!12555))))

(declare-fun condMapEmpty!12555 () Bool)

(declare-fun mapDefault!12555 () ValueCell!3360)

(assert (=> mapNonEmpty!12549 (= condMapEmpty!12555 (= mapRest!12549 ((as const (Array (_ BitVec 32) ValueCell!3360)) mapDefault!12555)))))

(declare-fun e!211554 () Bool)

(assert (=> mapNonEmpty!12549 (= tp!25910 (and e!211554 mapRes!12555))))

(declare-fun b!345148 () Bool)

(assert (=> b!345148 (= e!211553 tp_is_empty!7407)))

(declare-fun b!345149 () Bool)

(assert (=> b!345149 (= e!211554 tp_is_empty!7407)))

(declare-fun mapIsEmpty!12555 () Bool)

(assert (=> mapIsEmpty!12555 mapRes!12555))

(assert (= (and mapNonEmpty!12549 condMapEmpty!12555) mapIsEmpty!12555))

(assert (= (and mapNonEmpty!12549 (not condMapEmpty!12555)) mapNonEmpty!12555))

(assert (= (and mapNonEmpty!12555 ((_ is ValueCellFull!3360) mapValue!12555)) b!345148))

(assert (= (and mapNonEmpty!12549 ((_ is ValueCellFull!3360) mapDefault!12555)) b!345149))

(declare-fun m!346595 () Bool)

(assert (=> mapNonEmpty!12555 m!346595))

(declare-fun b_lambda!8491 () Bool)

(assert (= b_lambda!8489 (or (and start!34540 b_free!7455) b_lambda!8491)))

(check-sat (not b!345051) (not bm!26669) (not bm!26685) (not b!345036) (not b!345059) (not b!345139) (not b!345123) (not b!345117) (not d!70999) (not d!70987) (not b!345108) (not b!345122) (not bm!26684) (not bm!26689) tp_is_empty!7407 (not b!345138) (not b!345115) (not b!345050) (not b_next!7455) b_and!14685 (not b!345120) (not b!345140) (not b!345124) (not b!345061) (not mapNonEmpty!12555) (not bm!26693) (not bm!26688) (not b!345110) (not b_lambda!8491) (not d!71001))
(check-sat b_and!14685 (not b_next!7455))

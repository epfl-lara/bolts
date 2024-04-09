; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34248 () Bool)

(assert start!34248)

(declare-fun b_free!7263 () Bool)

(declare-fun b_next!7263 () Bool)

(assert (=> start!34248 (= b_free!7263 (not b_next!7263))))

(declare-fun tp!25322 () Bool)

(declare-fun b_and!14481 () Bool)

(assert (=> start!34248 (= tp!25322 b_and!14481)))

(declare-fun b!341494 () Bool)

(declare-datatypes ((Unit!10613 0))(
  ( (Unit!10614) )
))
(declare-fun e!209435 () Unit!10613)

(declare-fun Unit!10615 () Unit!10613)

(assert (=> b!341494 (= e!209435 Unit!10615)))

(declare-fun b!341496 () Bool)

(declare-fun res!188873 () Bool)

(declare-fun e!209431 () Bool)

(assert (=> b!341496 (=> (not res!188873) (not e!209431))))

(declare-datatypes ((array!17995 0))(
  ( (array!17996 (arr!8515 (Array (_ BitVec 32) (_ BitVec 64))) (size!8867 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17995)

(declare-datatypes ((List!4923 0))(
  ( (Nil!4920) (Cons!4919 (h!5775 (_ BitVec 64)) (t!10039 List!4923)) )
))
(declare-fun arrayNoDuplicates!0 (array!17995 (_ BitVec 32) List!4923) Bool)

(assert (=> b!341496 (= res!188873 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4920))))

(declare-fun b!341497 () Bool)

(declare-fun res!188876 () Bool)

(assert (=> b!341497 (=> (not res!188876) (not e!209431))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((V!10597 0))(
  ( (V!10598 (val!3652 Int)) )
))
(declare-datatypes ((ValueCell!3264 0))(
  ( (ValueCellFull!3264 (v!5820 V!10597)) (EmptyCell!3264) )
))
(declare-datatypes ((array!17997 0))(
  ( (array!17998 (arr!8516 (Array (_ BitVec 32) ValueCell!3264)) (size!8868 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17997)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10597)

(declare-fun zeroValue!1467 () V!10597)

(declare-datatypes ((tuple2!5280 0))(
  ( (tuple2!5281 (_1!2650 (_ BitVec 64)) (_2!2650 V!10597)) )
))
(declare-datatypes ((List!4924 0))(
  ( (Nil!4921) (Cons!4920 (h!5776 tuple2!5280) (t!10040 List!4924)) )
))
(declare-datatypes ((ListLongMap!4207 0))(
  ( (ListLongMap!4208 (toList!2119 List!4924)) )
))
(declare-fun contains!2169 (ListLongMap!4207 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1639 (array!17995 array!17997 (_ BitVec 32) (_ BitVec 32) V!10597 V!10597 (_ BitVec 32) Int) ListLongMap!4207)

(assert (=> b!341497 (= res!188876 (not (contains!2169 (getCurrentListMap!1639 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!341498 () Bool)

(declare-fun res!188871 () Bool)

(assert (=> b!341498 (=> (not res!188871) (not e!209431))))

(assert (=> b!341498 (= res!188871 (and (= (size!8868 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8867 _keys!1895) (size!8868 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341499 () Bool)

(declare-fun e!209433 () Bool)

(assert (=> b!341499 (= e!209431 e!209433)))

(declare-fun res!188872 () Bool)

(assert (=> b!341499 (=> (not res!188872) (not e!209433))))

(declare-datatypes ((SeekEntryResult!3286 0))(
  ( (MissingZero!3286 (index!15323 (_ BitVec 32))) (Found!3286 (index!15324 (_ BitVec 32))) (Intermediate!3286 (undefined!4098 Bool) (index!15325 (_ BitVec 32)) (x!34019 (_ BitVec 32))) (Undefined!3286) (MissingVacant!3286 (index!15326 (_ BitVec 32))) )
))
(declare-fun lt!161790 () SeekEntryResult!3286)

(get-info :version)

(assert (=> b!341499 (= res!188872 (and (not ((_ is Found!3286) lt!161790)) (not ((_ is MissingZero!3286) lt!161790)) ((_ is MissingVacant!3286) lt!161790)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17995 (_ BitVec 32)) SeekEntryResult!3286)

(assert (=> b!341499 (= lt!161790 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12249 () Bool)

(declare-fun mapRes!12249 () Bool)

(assert (=> mapIsEmpty!12249 mapRes!12249))

(declare-fun b!341500 () Bool)

(declare-fun e!209434 () Bool)

(declare-fun tp_is_empty!7215 () Bool)

(assert (=> b!341500 (= e!209434 tp_is_empty!7215)))

(declare-fun b!341501 () Bool)

(assert (=> b!341501 (= e!209433 (bvsge #b00000000000000000000000000000000 (size!8867 _keys!1895)))))

(declare-fun lt!161789 () Unit!10613)

(assert (=> b!341501 (= lt!161789 e!209435)))

(declare-fun c!52619 () Bool)

(declare-fun arrayContainsKey!0 (array!17995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341501 (= c!52619 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!341502 () Bool)

(declare-fun Unit!10616 () Unit!10613)

(assert (=> b!341502 (= e!209435 Unit!10616)))

(declare-fun lt!161788 () Unit!10613)

(declare-fun lemmaArrayContainsKeyThenInListMap!292 (array!17995 array!17997 (_ BitVec 32) (_ BitVec 32) V!10597 V!10597 (_ BitVec 64) (_ BitVec 32) Int) Unit!10613)

(declare-fun arrayScanForKey!0 (array!17995 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341502 (= lt!161788 (lemmaArrayContainsKeyThenInListMap!292 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!341502 false))

(declare-fun b!341503 () Bool)

(declare-fun e!209430 () Bool)

(assert (=> b!341503 (= e!209430 tp_is_empty!7215)))

(declare-fun b!341504 () Bool)

(declare-fun e!209432 () Bool)

(assert (=> b!341504 (= e!209432 (and e!209430 mapRes!12249))))

(declare-fun condMapEmpty!12249 () Bool)

(declare-fun mapDefault!12249 () ValueCell!3264)

(assert (=> b!341504 (= condMapEmpty!12249 (= (arr!8516 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3264)) mapDefault!12249)))))

(declare-fun b!341495 () Bool)

(declare-fun res!188875 () Bool)

(assert (=> b!341495 (=> (not res!188875) (not e!209431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341495 (= res!188875 (validKeyInArray!0 k0!1348))))

(declare-fun res!188870 () Bool)

(assert (=> start!34248 (=> (not res!188870) (not e!209431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34248 (= res!188870 (validMask!0 mask!2385))))

(assert (=> start!34248 e!209431))

(assert (=> start!34248 true))

(assert (=> start!34248 tp_is_empty!7215))

(assert (=> start!34248 tp!25322))

(declare-fun array_inv!6300 (array!17997) Bool)

(assert (=> start!34248 (and (array_inv!6300 _values!1525) e!209432)))

(declare-fun array_inv!6301 (array!17995) Bool)

(assert (=> start!34248 (array_inv!6301 _keys!1895)))

(declare-fun mapNonEmpty!12249 () Bool)

(declare-fun tp!25323 () Bool)

(assert (=> mapNonEmpty!12249 (= mapRes!12249 (and tp!25323 e!209434))))

(declare-fun mapRest!12249 () (Array (_ BitVec 32) ValueCell!3264))

(declare-fun mapKey!12249 () (_ BitVec 32))

(declare-fun mapValue!12249 () ValueCell!3264)

(assert (=> mapNonEmpty!12249 (= (arr!8516 _values!1525) (store mapRest!12249 mapKey!12249 mapValue!12249))))

(declare-fun b!341505 () Bool)

(declare-fun res!188874 () Bool)

(assert (=> b!341505 (=> (not res!188874) (not e!209431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17995 (_ BitVec 32)) Bool)

(assert (=> b!341505 (= res!188874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!34248 res!188870) b!341498))

(assert (= (and b!341498 res!188871) b!341505))

(assert (= (and b!341505 res!188874) b!341496))

(assert (= (and b!341496 res!188873) b!341495))

(assert (= (and b!341495 res!188875) b!341497))

(assert (= (and b!341497 res!188876) b!341499))

(assert (= (and b!341499 res!188872) b!341501))

(assert (= (and b!341501 c!52619) b!341502))

(assert (= (and b!341501 (not c!52619)) b!341494))

(assert (= (and b!341504 condMapEmpty!12249) mapIsEmpty!12249))

(assert (= (and b!341504 (not condMapEmpty!12249)) mapNonEmpty!12249))

(assert (= (and mapNonEmpty!12249 ((_ is ValueCellFull!3264) mapValue!12249)) b!341500))

(assert (= (and b!341504 ((_ is ValueCellFull!3264) mapDefault!12249)) b!341503))

(assert (= start!34248 b!341504))

(declare-fun m!343895 () Bool)

(assert (=> b!341496 m!343895))

(declare-fun m!343897 () Bool)

(assert (=> b!341497 m!343897))

(assert (=> b!341497 m!343897))

(declare-fun m!343899 () Bool)

(assert (=> b!341497 m!343899))

(declare-fun m!343901 () Bool)

(assert (=> b!341499 m!343901))

(declare-fun m!343903 () Bool)

(assert (=> b!341495 m!343903))

(declare-fun m!343905 () Bool)

(assert (=> b!341502 m!343905))

(assert (=> b!341502 m!343905))

(declare-fun m!343907 () Bool)

(assert (=> b!341502 m!343907))

(declare-fun m!343909 () Bool)

(assert (=> start!34248 m!343909))

(declare-fun m!343911 () Bool)

(assert (=> start!34248 m!343911))

(declare-fun m!343913 () Bool)

(assert (=> start!34248 m!343913))

(declare-fun m!343915 () Bool)

(assert (=> b!341501 m!343915))

(declare-fun m!343917 () Bool)

(assert (=> mapNonEmpty!12249 m!343917))

(declare-fun m!343919 () Bool)

(assert (=> b!341505 m!343919))

(check-sat (not mapNonEmpty!12249) (not b_next!7263) (not b!341497) (not b!341495) b_and!14481 (not b!341501) (not b!341505) (not b!341499) (not start!34248) (not b!341502) (not b!341496) tp_is_empty!7215)
(check-sat b_and!14481 (not b_next!7263))
(get-model)

(declare-fun d!70823 () Bool)

(assert (=> d!70823 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!341495 d!70823))

(declare-fun b!341552 () Bool)

(declare-fun e!209469 () Bool)

(declare-fun call!26564 () Bool)

(assert (=> b!341552 (= e!209469 call!26564)))

(declare-fun bm!26561 () Bool)

(declare-fun c!52625 () Bool)

(assert (=> bm!26561 (= call!26564 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52625 (Cons!4919 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000) Nil!4920) Nil!4920)))))

(declare-fun b!341554 () Bool)

(declare-fun e!209468 () Bool)

(assert (=> b!341554 (= e!209468 e!209469)))

(assert (=> b!341554 (= c!52625 (validKeyInArray!0 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!341555 () Bool)

(declare-fun e!209466 () Bool)

(assert (=> b!341555 (= e!209466 e!209468)))

(declare-fun res!188905 () Bool)

(assert (=> b!341555 (=> (not res!188905) (not e!209468))))

(declare-fun e!209467 () Bool)

(assert (=> b!341555 (= res!188905 (not e!209467))))

(declare-fun res!188906 () Bool)

(assert (=> b!341555 (=> (not res!188906) (not e!209467))))

(assert (=> b!341555 (= res!188906 (validKeyInArray!0 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!341556 () Bool)

(assert (=> b!341556 (= e!209469 call!26564)))

(declare-fun d!70825 () Bool)

(declare-fun res!188904 () Bool)

(assert (=> d!70825 (=> res!188904 e!209466)))

(assert (=> d!70825 (= res!188904 (bvsge #b00000000000000000000000000000000 (size!8867 _keys!1895)))))

(assert (=> d!70825 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4920) e!209466)))

(declare-fun b!341553 () Bool)

(declare-fun contains!2170 (List!4923 (_ BitVec 64)) Bool)

(assert (=> b!341553 (= e!209467 (contains!2170 Nil!4920 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70825 (not res!188904)) b!341555))

(assert (= (and b!341555 res!188906) b!341553))

(assert (= (and b!341555 res!188905) b!341554))

(assert (= (and b!341554 c!52625) b!341556))

(assert (= (and b!341554 (not c!52625)) b!341552))

(assert (= (or b!341556 b!341552) bm!26561))

(declare-fun m!343947 () Bool)

(assert (=> bm!26561 m!343947))

(declare-fun m!343949 () Bool)

(assert (=> bm!26561 m!343949))

(assert (=> b!341554 m!343947))

(assert (=> b!341554 m!343947))

(declare-fun m!343951 () Bool)

(assert (=> b!341554 m!343951))

(assert (=> b!341555 m!343947))

(assert (=> b!341555 m!343947))

(assert (=> b!341555 m!343951))

(assert (=> b!341553 m!343947))

(assert (=> b!341553 m!343947))

(declare-fun m!343953 () Bool)

(assert (=> b!341553 m!343953))

(assert (=> b!341496 d!70825))

(declare-fun bm!26564 () Bool)

(declare-fun call!26567 () Bool)

(assert (=> bm!26564 (= call!26567 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!341565 () Bool)

(declare-fun e!209476 () Bool)

(declare-fun e!209478 () Bool)

(assert (=> b!341565 (= e!209476 e!209478)))

(declare-fun c!52628 () Bool)

(assert (=> b!341565 (= c!52628 (validKeyInArray!0 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!70827 () Bool)

(declare-fun res!188912 () Bool)

(assert (=> d!70827 (=> res!188912 e!209476)))

(assert (=> d!70827 (= res!188912 (bvsge #b00000000000000000000000000000000 (size!8867 _keys!1895)))))

(assert (=> d!70827 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!209476)))

(declare-fun b!341566 () Bool)

(assert (=> b!341566 (= e!209478 call!26567)))

(declare-fun b!341567 () Bool)

(declare-fun e!209477 () Bool)

(assert (=> b!341567 (= e!209478 e!209477)))

(declare-fun lt!161808 () (_ BitVec 64))

(assert (=> b!341567 (= lt!161808 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161807 () Unit!10613)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17995 (_ BitVec 64) (_ BitVec 32)) Unit!10613)

(assert (=> b!341567 (= lt!161807 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!161808 #b00000000000000000000000000000000))))

(assert (=> b!341567 (arrayContainsKey!0 _keys!1895 lt!161808 #b00000000000000000000000000000000)))

(declare-fun lt!161806 () Unit!10613)

(assert (=> b!341567 (= lt!161806 lt!161807)))

(declare-fun res!188911 () Bool)

(assert (=> b!341567 (= res!188911 (= (seekEntryOrOpen!0 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3286 #b00000000000000000000000000000000)))))

(assert (=> b!341567 (=> (not res!188911) (not e!209477))))

(declare-fun b!341568 () Bool)

(assert (=> b!341568 (= e!209477 call!26567)))

(assert (= (and d!70827 (not res!188912)) b!341565))

(assert (= (and b!341565 c!52628) b!341567))

(assert (= (and b!341565 (not c!52628)) b!341566))

(assert (= (and b!341567 res!188911) b!341568))

(assert (= (or b!341568 b!341566) bm!26564))

(declare-fun m!343955 () Bool)

(assert (=> bm!26564 m!343955))

(assert (=> b!341565 m!343947))

(assert (=> b!341565 m!343947))

(assert (=> b!341565 m!343951))

(assert (=> b!341567 m!343947))

(declare-fun m!343957 () Bool)

(assert (=> b!341567 m!343957))

(declare-fun m!343959 () Bool)

(assert (=> b!341567 m!343959))

(assert (=> b!341567 m!343947))

(declare-fun m!343961 () Bool)

(assert (=> b!341567 m!343961))

(assert (=> b!341505 d!70827))

(declare-fun d!70829 () Bool)

(assert (=> d!70829 (contains!2169 (getCurrentListMap!1639 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!161811 () Unit!10613)

(declare-fun choose!1310 (array!17995 array!17997 (_ BitVec 32) (_ BitVec 32) V!10597 V!10597 (_ BitVec 64) (_ BitVec 32) Int) Unit!10613)

(assert (=> d!70829 (= lt!161811 (choose!1310 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!70829 (validMask!0 mask!2385)))

(assert (=> d!70829 (= (lemmaArrayContainsKeyThenInListMap!292 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!161811)))

(declare-fun bs!11726 () Bool)

(assert (= bs!11726 d!70829))

(assert (=> bs!11726 m!343897))

(assert (=> bs!11726 m!343897))

(assert (=> bs!11726 m!343899))

(assert (=> bs!11726 m!343905))

(declare-fun m!343963 () Bool)

(assert (=> bs!11726 m!343963))

(assert (=> bs!11726 m!343909))

(assert (=> b!341502 d!70829))

(declare-fun d!70831 () Bool)

(declare-fun lt!161814 () (_ BitVec 32))

(assert (=> d!70831 (and (or (bvslt lt!161814 #b00000000000000000000000000000000) (bvsge lt!161814 (size!8867 _keys!1895)) (and (bvsge lt!161814 #b00000000000000000000000000000000) (bvslt lt!161814 (size!8867 _keys!1895)))) (bvsge lt!161814 #b00000000000000000000000000000000) (bvslt lt!161814 (size!8867 _keys!1895)) (= (select (arr!8515 _keys!1895) lt!161814) k0!1348))))

(declare-fun e!209481 () (_ BitVec 32))

(assert (=> d!70831 (= lt!161814 e!209481)))

(declare-fun c!52631 () Bool)

(assert (=> d!70831 (= c!52631 (= (select (arr!8515 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70831 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8867 _keys!1895)) (bvslt (size!8867 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!70831 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!161814)))

(declare-fun b!341573 () Bool)

(assert (=> b!341573 (= e!209481 #b00000000000000000000000000000000)))

(declare-fun b!341574 () Bool)

(assert (=> b!341574 (= e!209481 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70831 c!52631) b!341573))

(assert (= (and d!70831 (not c!52631)) b!341574))

(declare-fun m!343965 () Bool)

(assert (=> d!70831 m!343965))

(assert (=> d!70831 m!343947))

(declare-fun m!343967 () Bool)

(assert (=> b!341574 m!343967))

(assert (=> b!341502 d!70831))

(declare-fun d!70833 () Bool)

(declare-fun res!188917 () Bool)

(declare-fun e!209486 () Bool)

(assert (=> d!70833 (=> res!188917 e!209486)))

(assert (=> d!70833 (= res!188917 (= (select (arr!8515 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70833 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!209486)))

(declare-fun b!341579 () Bool)

(declare-fun e!209487 () Bool)

(assert (=> b!341579 (= e!209486 e!209487)))

(declare-fun res!188918 () Bool)

(assert (=> b!341579 (=> (not res!188918) (not e!209487))))

(assert (=> b!341579 (= res!188918 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8867 _keys!1895)))))

(declare-fun b!341580 () Bool)

(assert (=> b!341580 (= e!209487 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70833 (not res!188917)) b!341579))

(assert (= (and b!341579 res!188918) b!341580))

(assert (=> d!70833 m!343947))

(declare-fun m!343969 () Bool)

(assert (=> b!341580 m!343969))

(assert (=> b!341501 d!70833))

(declare-fun d!70835 () Bool)

(declare-fun e!209492 () Bool)

(assert (=> d!70835 e!209492))

(declare-fun res!188921 () Bool)

(assert (=> d!70835 (=> res!188921 e!209492)))

(declare-fun lt!161824 () Bool)

(assert (=> d!70835 (= res!188921 (not lt!161824))))

(declare-fun lt!161825 () Bool)

(assert (=> d!70835 (= lt!161824 lt!161825)))

(declare-fun lt!161826 () Unit!10613)

(declare-fun e!209493 () Unit!10613)

(assert (=> d!70835 (= lt!161826 e!209493)))

(declare-fun c!52634 () Bool)

(assert (=> d!70835 (= c!52634 lt!161825)))

(declare-fun containsKey!325 (List!4924 (_ BitVec 64)) Bool)

(assert (=> d!70835 (= lt!161825 (containsKey!325 (toList!2119 (getCurrentListMap!1639 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70835 (= (contains!2169 (getCurrentListMap!1639 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!161824)))

(declare-fun b!341587 () Bool)

(declare-fun lt!161823 () Unit!10613)

(assert (=> b!341587 (= e!209493 lt!161823)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!274 (List!4924 (_ BitVec 64)) Unit!10613)

(assert (=> b!341587 (= lt!161823 (lemmaContainsKeyImpliesGetValueByKeyDefined!274 (toList!2119 (getCurrentListMap!1639 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!339 0))(
  ( (Some!338 (v!5822 V!10597)) (None!337) )
))
(declare-fun isDefined!275 (Option!339) Bool)

(declare-fun getValueByKey!333 (List!4924 (_ BitVec 64)) Option!339)

(assert (=> b!341587 (isDefined!275 (getValueByKey!333 (toList!2119 (getCurrentListMap!1639 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!341588 () Bool)

(declare-fun Unit!10617 () Unit!10613)

(assert (=> b!341588 (= e!209493 Unit!10617)))

(declare-fun b!341589 () Bool)

(assert (=> b!341589 (= e!209492 (isDefined!275 (getValueByKey!333 (toList!2119 (getCurrentListMap!1639 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70835 c!52634) b!341587))

(assert (= (and d!70835 (not c!52634)) b!341588))

(assert (= (and d!70835 (not res!188921)) b!341589))

(declare-fun m!343971 () Bool)

(assert (=> d!70835 m!343971))

(declare-fun m!343973 () Bool)

(assert (=> b!341587 m!343973))

(declare-fun m!343975 () Bool)

(assert (=> b!341587 m!343975))

(assert (=> b!341587 m!343975))

(declare-fun m!343977 () Bool)

(assert (=> b!341587 m!343977))

(assert (=> b!341589 m!343975))

(assert (=> b!341589 m!343975))

(assert (=> b!341589 m!343977))

(assert (=> b!341497 d!70835))

(declare-fun b!341632 () Bool)

(declare-fun e!209524 () Bool)

(declare-fun e!209531 () Bool)

(assert (=> b!341632 (= e!209524 e!209531)))

(declare-fun res!188944 () Bool)

(declare-fun call!26588 () Bool)

(assert (=> b!341632 (= res!188944 call!26588)))

(assert (=> b!341632 (=> (not res!188944) (not e!209531))))

(declare-fun b!341633 () Bool)

(declare-fun e!209528 () Bool)

(declare-fun e!209525 () Bool)

(assert (=> b!341633 (= e!209528 e!209525)))

(declare-fun res!188940 () Bool)

(assert (=> b!341633 (=> (not res!188940) (not e!209525))))

(declare-fun lt!161885 () ListLongMap!4207)

(assert (=> b!341633 (= res!188940 (contains!2169 lt!161885 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!341633 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8867 _keys!1895)))))

(declare-fun b!341634 () Bool)

(declare-fun e!209530 () Bool)

(assert (=> b!341634 (= e!209530 e!209524)))

(declare-fun c!52651 () Bool)

(assert (=> b!341634 (= c!52651 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!341635 () Bool)

(declare-fun e!209521 () Unit!10613)

(declare-fun lt!161873 () Unit!10613)

(assert (=> b!341635 (= e!209521 lt!161873)))

(declare-fun lt!161872 () ListLongMap!4207)

(declare-fun getCurrentListMapNoExtraKeys!595 (array!17995 array!17997 (_ BitVec 32) (_ BitVec 32) V!10597 V!10597 (_ BitVec 32) Int) ListLongMap!4207)

(assert (=> b!341635 (= lt!161872 (getCurrentListMapNoExtraKeys!595 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161890 () (_ BitVec 64))

(assert (=> b!341635 (= lt!161890 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161883 () (_ BitVec 64))

(assert (=> b!341635 (= lt!161883 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161875 () Unit!10613)

(declare-fun addStillContains!252 (ListLongMap!4207 (_ BitVec 64) V!10597 (_ BitVec 64)) Unit!10613)

(assert (=> b!341635 (= lt!161875 (addStillContains!252 lt!161872 lt!161890 zeroValue!1467 lt!161883))))

(declare-fun +!720 (ListLongMap!4207 tuple2!5280) ListLongMap!4207)

(assert (=> b!341635 (contains!2169 (+!720 lt!161872 (tuple2!5281 lt!161890 zeroValue!1467)) lt!161883)))

(declare-fun lt!161887 () Unit!10613)

(assert (=> b!341635 (= lt!161887 lt!161875)))

(declare-fun lt!161884 () ListLongMap!4207)

(assert (=> b!341635 (= lt!161884 (getCurrentListMapNoExtraKeys!595 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161874 () (_ BitVec 64))

(assert (=> b!341635 (= lt!161874 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161886 () (_ BitVec 64))

(assert (=> b!341635 (= lt!161886 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161888 () Unit!10613)

(declare-fun addApplyDifferent!252 (ListLongMap!4207 (_ BitVec 64) V!10597 (_ BitVec 64)) Unit!10613)

(assert (=> b!341635 (= lt!161888 (addApplyDifferent!252 lt!161884 lt!161874 minValue!1467 lt!161886))))

(declare-fun apply!276 (ListLongMap!4207 (_ BitVec 64)) V!10597)

(assert (=> b!341635 (= (apply!276 (+!720 lt!161884 (tuple2!5281 lt!161874 minValue!1467)) lt!161886) (apply!276 lt!161884 lt!161886))))

(declare-fun lt!161871 () Unit!10613)

(assert (=> b!341635 (= lt!161871 lt!161888)))

(declare-fun lt!161882 () ListLongMap!4207)

(assert (=> b!341635 (= lt!161882 (getCurrentListMapNoExtraKeys!595 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161880 () (_ BitVec 64))

(assert (=> b!341635 (= lt!161880 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161879 () (_ BitVec 64))

(assert (=> b!341635 (= lt!161879 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161889 () Unit!10613)

(assert (=> b!341635 (= lt!161889 (addApplyDifferent!252 lt!161882 lt!161880 zeroValue!1467 lt!161879))))

(assert (=> b!341635 (= (apply!276 (+!720 lt!161882 (tuple2!5281 lt!161880 zeroValue!1467)) lt!161879) (apply!276 lt!161882 lt!161879))))

(declare-fun lt!161877 () Unit!10613)

(assert (=> b!341635 (= lt!161877 lt!161889)))

(declare-fun lt!161892 () ListLongMap!4207)

(assert (=> b!341635 (= lt!161892 (getCurrentListMapNoExtraKeys!595 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161881 () (_ BitVec 64))

(assert (=> b!341635 (= lt!161881 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161878 () (_ BitVec 64))

(assert (=> b!341635 (= lt!161878 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!341635 (= lt!161873 (addApplyDifferent!252 lt!161892 lt!161881 minValue!1467 lt!161878))))

(assert (=> b!341635 (= (apply!276 (+!720 lt!161892 (tuple2!5281 lt!161881 minValue!1467)) lt!161878) (apply!276 lt!161892 lt!161878))))

(declare-fun b!341637 () Bool)

(declare-fun get!4627 (ValueCell!3264 V!10597) V!10597)

(declare-fun dynLambda!614 (Int (_ BitVec 64)) V!10597)

(assert (=> b!341637 (= e!209525 (= (apply!276 lt!161885 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000)) (get!4627 (select (arr!8516 _values!1525) #b00000000000000000000000000000000) (dynLambda!614 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!341637 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8868 _values!1525)))))

(assert (=> b!341637 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8867 _keys!1895)))))

(declare-fun b!341638 () Bool)

(declare-fun e!209527 () Bool)

(assert (=> b!341638 (= e!209527 (validKeyInArray!0 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!341639 () Bool)

(assert (=> b!341639 (= e!209524 (not call!26588))))

(declare-fun b!341640 () Bool)

(declare-fun res!188947 () Bool)

(assert (=> b!341640 (=> (not res!188947) (not e!209530))))

(declare-fun e!209532 () Bool)

(assert (=> b!341640 (= res!188947 e!209532)))

(declare-fun c!52647 () Bool)

(assert (=> b!341640 (= c!52647 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!341641 () Bool)

(declare-fun call!26587 () Bool)

(assert (=> b!341641 (= e!209532 (not call!26587))))

(declare-fun b!341642 () Bool)

(declare-fun res!188942 () Bool)

(assert (=> b!341642 (=> (not res!188942) (not e!209530))))

(assert (=> b!341642 (= res!188942 e!209528)))

(declare-fun res!188948 () Bool)

(assert (=> b!341642 (=> res!188948 e!209528)))

(assert (=> b!341642 (= res!188948 (not e!209527))))

(declare-fun res!188946 () Bool)

(assert (=> b!341642 (=> (not res!188946) (not e!209527))))

(assert (=> b!341642 (= res!188946 (bvslt #b00000000000000000000000000000000 (size!8867 _keys!1895)))))

(declare-fun b!341643 () Bool)

(declare-fun e!209522 () Bool)

(assert (=> b!341643 (= e!209522 (validKeyInArray!0 (select (arr!8515 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26579 () Bool)

(declare-fun call!26584 () ListLongMap!4207)

(declare-fun call!26583 () ListLongMap!4207)

(assert (=> bm!26579 (= call!26584 call!26583)))

(declare-fun b!341644 () Bool)

(declare-fun e!209529 () ListLongMap!4207)

(declare-fun call!26585 () ListLongMap!4207)

(assert (=> b!341644 (= e!209529 call!26585)))

(declare-fun b!341645 () Bool)

(declare-fun e!209520 () ListLongMap!4207)

(assert (=> b!341645 (= e!209520 e!209529)))

(declare-fun c!52650 () Bool)

(assert (=> b!341645 (= c!52650 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26580 () Bool)

(assert (=> bm!26580 (= call!26587 (contains!2169 lt!161885 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26581 () Bool)

(declare-fun call!26586 () ListLongMap!4207)

(assert (=> bm!26581 (= call!26585 call!26586)))

(declare-fun bm!26582 () Bool)

(assert (=> bm!26582 (= call!26588 (contains!2169 lt!161885 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!26582 () ListLongMap!4207)

(declare-fun c!52648 () Bool)

(declare-fun bm!26583 () Bool)

(assert (=> bm!26583 (= call!26586 (+!720 (ite c!52648 call!26583 (ite c!52650 call!26584 call!26582)) (ite (or c!52648 c!52650) (tuple2!5281 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5281 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!341636 () Bool)

(declare-fun e!209523 () ListLongMap!4207)

(assert (=> b!341636 (= e!209523 call!26585)))

(declare-fun d!70837 () Bool)

(assert (=> d!70837 e!209530))

(declare-fun res!188941 () Bool)

(assert (=> d!70837 (=> (not res!188941) (not e!209530))))

(assert (=> d!70837 (= res!188941 (or (bvsge #b00000000000000000000000000000000 (size!8867 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8867 _keys!1895)))))))

(declare-fun lt!161876 () ListLongMap!4207)

(assert (=> d!70837 (= lt!161885 lt!161876)))

(declare-fun lt!161891 () Unit!10613)

(assert (=> d!70837 (= lt!161891 e!209521)))

(declare-fun c!52649 () Bool)

(assert (=> d!70837 (= c!52649 e!209522)))

(declare-fun res!188943 () Bool)

(assert (=> d!70837 (=> (not res!188943) (not e!209522))))

(assert (=> d!70837 (= res!188943 (bvslt #b00000000000000000000000000000000 (size!8867 _keys!1895)))))

(assert (=> d!70837 (= lt!161876 e!209520)))

(assert (=> d!70837 (= c!52648 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70837 (validMask!0 mask!2385)))

(assert (=> d!70837 (= (getCurrentListMap!1639 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!161885)))

(declare-fun b!341646 () Bool)

(declare-fun e!209526 () Bool)

(assert (=> b!341646 (= e!209532 e!209526)))

(declare-fun res!188945 () Bool)

(assert (=> b!341646 (= res!188945 call!26587)))

(assert (=> b!341646 (=> (not res!188945) (not e!209526))))

(declare-fun b!341647 () Bool)

(assert (=> b!341647 (= e!209526 (= (apply!276 lt!161885 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!341648 () Bool)

(assert (=> b!341648 (= e!209531 (= (apply!276 lt!161885 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun bm!26584 () Bool)

(assert (=> bm!26584 (= call!26582 call!26584)))

(declare-fun bm!26585 () Bool)

(assert (=> bm!26585 (= call!26583 (getCurrentListMapNoExtraKeys!595 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!341649 () Bool)

(assert (=> b!341649 (= e!209520 (+!720 call!26586 (tuple2!5281 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!341650 () Bool)

(declare-fun c!52652 () Bool)

(assert (=> b!341650 (= c!52652 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!341650 (= e!209529 e!209523)))

(declare-fun b!341651 () Bool)

(assert (=> b!341651 (= e!209523 call!26582)))

(declare-fun b!341652 () Bool)

(declare-fun Unit!10618 () Unit!10613)

(assert (=> b!341652 (= e!209521 Unit!10618)))

(assert (= (and d!70837 c!52648) b!341649))

(assert (= (and d!70837 (not c!52648)) b!341645))

(assert (= (and b!341645 c!52650) b!341644))

(assert (= (and b!341645 (not c!52650)) b!341650))

(assert (= (and b!341650 c!52652) b!341636))

(assert (= (and b!341650 (not c!52652)) b!341651))

(assert (= (or b!341636 b!341651) bm!26584))

(assert (= (or b!341644 bm!26584) bm!26579))

(assert (= (or b!341644 b!341636) bm!26581))

(assert (= (or b!341649 bm!26579) bm!26585))

(assert (= (or b!341649 bm!26581) bm!26583))

(assert (= (and d!70837 res!188943) b!341643))

(assert (= (and d!70837 c!52649) b!341635))

(assert (= (and d!70837 (not c!52649)) b!341652))

(assert (= (and d!70837 res!188941) b!341642))

(assert (= (and b!341642 res!188946) b!341638))

(assert (= (and b!341642 (not res!188948)) b!341633))

(assert (= (and b!341633 res!188940) b!341637))

(assert (= (and b!341642 res!188942) b!341640))

(assert (= (and b!341640 c!52647) b!341646))

(assert (= (and b!341640 (not c!52647)) b!341641))

(assert (= (and b!341646 res!188945) b!341647))

(assert (= (or b!341646 b!341641) bm!26580))

(assert (= (and b!341640 res!188947) b!341634))

(assert (= (and b!341634 c!52651) b!341632))

(assert (= (and b!341634 (not c!52651)) b!341639))

(assert (= (and b!341632 res!188944) b!341648))

(assert (= (or b!341632 b!341639) bm!26582))

(declare-fun b_lambda!8473 () Bool)

(assert (=> (not b_lambda!8473) (not b!341637)))

(declare-fun t!10042 () Bool)

(declare-fun tb!3075 () Bool)

(assert (=> (and start!34248 (= defaultEntry!1528 defaultEntry!1528) t!10042) tb!3075))

(declare-fun result!5539 () Bool)

(assert (=> tb!3075 (= result!5539 tp_is_empty!7215)))

(assert (=> b!341637 t!10042))

(declare-fun b_and!14485 () Bool)

(assert (= b_and!14481 (and (=> t!10042 result!5539) b_and!14485)))

(declare-fun m!343979 () Bool)

(assert (=> b!341637 m!343979))

(declare-fun m!343981 () Bool)

(assert (=> b!341637 m!343981))

(assert (=> b!341637 m!343979))

(declare-fun m!343983 () Bool)

(assert (=> b!341637 m!343983))

(assert (=> b!341637 m!343947))

(assert (=> b!341637 m!343947))

(declare-fun m!343985 () Bool)

(assert (=> b!341637 m!343985))

(assert (=> b!341637 m!343981))

(assert (=> b!341633 m!343947))

(assert (=> b!341633 m!343947))

(declare-fun m!343987 () Bool)

(assert (=> b!341633 m!343987))

(declare-fun m!343989 () Bool)

(assert (=> b!341635 m!343989))

(declare-fun m!343991 () Bool)

(assert (=> b!341635 m!343991))

(declare-fun m!343993 () Bool)

(assert (=> b!341635 m!343993))

(assert (=> b!341635 m!343991))

(declare-fun m!343995 () Bool)

(assert (=> b!341635 m!343995))

(assert (=> b!341635 m!343947))

(declare-fun m!343997 () Bool)

(assert (=> b!341635 m!343997))

(declare-fun m!343999 () Bool)

(assert (=> b!341635 m!343999))

(declare-fun m!344001 () Bool)

(assert (=> b!341635 m!344001))

(declare-fun m!344003 () Bool)

(assert (=> b!341635 m!344003))

(declare-fun m!344005 () Bool)

(assert (=> b!341635 m!344005))

(declare-fun m!344007 () Bool)

(assert (=> b!341635 m!344007))

(declare-fun m!344009 () Bool)

(assert (=> b!341635 m!344009))

(declare-fun m!344011 () Bool)

(assert (=> b!341635 m!344011))

(assert (=> b!341635 m!344011))

(declare-fun m!344013 () Bool)

(assert (=> b!341635 m!344013))

(assert (=> b!341635 m!343999))

(declare-fun m!344015 () Bool)

(assert (=> b!341635 m!344015))

(declare-fun m!344017 () Bool)

(assert (=> b!341635 m!344017))

(assert (=> b!341635 m!344017))

(declare-fun m!344019 () Bool)

(assert (=> b!341635 m!344019))

(declare-fun m!344021 () Bool)

(assert (=> b!341649 m!344021))

(declare-fun m!344023 () Bool)

(assert (=> bm!26582 m!344023))

(assert (=> d!70837 m!343909))

(assert (=> bm!26585 m!343997))

(declare-fun m!344025 () Bool)

(assert (=> b!341647 m!344025))

(assert (=> b!341638 m!343947))

(assert (=> b!341638 m!343947))

(assert (=> b!341638 m!343951))

(declare-fun m!344027 () Bool)

(assert (=> b!341648 m!344027))

(declare-fun m!344029 () Bool)

(assert (=> bm!26583 m!344029))

(declare-fun m!344031 () Bool)

(assert (=> bm!26580 m!344031))

(assert (=> b!341643 m!343947))

(assert (=> b!341643 m!343947))

(assert (=> b!341643 m!343951))

(assert (=> b!341497 d!70837))

(declare-fun d!70839 () Bool)

(assert (=> d!70839 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34248 d!70839))

(declare-fun d!70841 () Bool)

(assert (=> d!70841 (= (array_inv!6300 _values!1525) (bvsge (size!8868 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34248 d!70841))

(declare-fun d!70843 () Bool)

(assert (=> d!70843 (= (array_inv!6301 _keys!1895) (bvsge (size!8867 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34248 d!70843))

(declare-fun b!341667 () Bool)

(declare-fun e!209539 () SeekEntryResult!3286)

(declare-fun lt!161900 () SeekEntryResult!3286)

(assert (=> b!341667 (= e!209539 (MissingZero!3286 (index!15325 lt!161900)))))

(declare-fun b!341668 () Bool)

(declare-fun e!209541 () SeekEntryResult!3286)

(assert (=> b!341668 (= e!209541 (Found!3286 (index!15325 lt!161900)))))

(declare-fun b!341669 () Bool)

(declare-fun e!209540 () SeekEntryResult!3286)

(assert (=> b!341669 (= e!209540 e!209541)))

(declare-fun lt!161901 () (_ BitVec 64))

(assert (=> b!341669 (= lt!161901 (select (arr!8515 _keys!1895) (index!15325 lt!161900)))))

(declare-fun c!52659 () Bool)

(assert (=> b!341669 (= c!52659 (= lt!161901 k0!1348))))

(declare-fun b!341670 () Bool)

(assert (=> b!341670 (= e!209540 Undefined!3286)))

(declare-fun b!341671 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17995 (_ BitVec 32)) SeekEntryResult!3286)

(assert (=> b!341671 (= e!209539 (seekKeyOrZeroReturnVacant!0 (x!34019 lt!161900) (index!15325 lt!161900) (index!15325 lt!161900) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!341672 () Bool)

(declare-fun c!52660 () Bool)

(assert (=> b!341672 (= c!52660 (= lt!161901 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!341672 (= e!209541 e!209539)))

(declare-fun d!70845 () Bool)

(declare-fun lt!161899 () SeekEntryResult!3286)

(assert (=> d!70845 (and (or ((_ is Undefined!3286) lt!161899) (not ((_ is Found!3286) lt!161899)) (and (bvsge (index!15324 lt!161899) #b00000000000000000000000000000000) (bvslt (index!15324 lt!161899) (size!8867 _keys!1895)))) (or ((_ is Undefined!3286) lt!161899) ((_ is Found!3286) lt!161899) (not ((_ is MissingZero!3286) lt!161899)) (and (bvsge (index!15323 lt!161899) #b00000000000000000000000000000000) (bvslt (index!15323 lt!161899) (size!8867 _keys!1895)))) (or ((_ is Undefined!3286) lt!161899) ((_ is Found!3286) lt!161899) ((_ is MissingZero!3286) lt!161899) (not ((_ is MissingVacant!3286) lt!161899)) (and (bvsge (index!15326 lt!161899) #b00000000000000000000000000000000) (bvslt (index!15326 lt!161899) (size!8867 _keys!1895)))) (or ((_ is Undefined!3286) lt!161899) (ite ((_ is Found!3286) lt!161899) (= (select (arr!8515 _keys!1895) (index!15324 lt!161899)) k0!1348) (ite ((_ is MissingZero!3286) lt!161899) (= (select (arr!8515 _keys!1895) (index!15323 lt!161899)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3286) lt!161899) (= (select (arr!8515 _keys!1895) (index!15326 lt!161899)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70845 (= lt!161899 e!209540)))

(declare-fun c!52661 () Bool)

(assert (=> d!70845 (= c!52661 (and ((_ is Intermediate!3286) lt!161900) (undefined!4098 lt!161900)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17995 (_ BitVec 32)) SeekEntryResult!3286)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70845 (= lt!161900 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70845 (validMask!0 mask!2385)))

(assert (=> d!70845 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!161899)))

(assert (= (and d!70845 c!52661) b!341670))

(assert (= (and d!70845 (not c!52661)) b!341669))

(assert (= (and b!341669 c!52659) b!341668))

(assert (= (and b!341669 (not c!52659)) b!341672))

(assert (= (and b!341672 c!52660) b!341667))

(assert (= (and b!341672 (not c!52660)) b!341671))

(declare-fun m!344033 () Bool)

(assert (=> b!341669 m!344033))

(declare-fun m!344035 () Bool)

(assert (=> b!341671 m!344035))

(declare-fun m!344037 () Bool)

(assert (=> d!70845 m!344037))

(assert (=> d!70845 m!344037))

(declare-fun m!344039 () Bool)

(assert (=> d!70845 m!344039))

(declare-fun m!344041 () Bool)

(assert (=> d!70845 m!344041))

(assert (=> d!70845 m!343909))

(declare-fun m!344043 () Bool)

(assert (=> d!70845 m!344043))

(declare-fun m!344045 () Bool)

(assert (=> d!70845 m!344045))

(assert (=> b!341499 d!70845))

(declare-fun condMapEmpty!12255 () Bool)

(declare-fun mapDefault!12255 () ValueCell!3264)

(assert (=> mapNonEmpty!12249 (= condMapEmpty!12255 (= mapRest!12249 ((as const (Array (_ BitVec 32) ValueCell!3264)) mapDefault!12255)))))

(declare-fun e!209546 () Bool)

(declare-fun mapRes!12255 () Bool)

(assert (=> mapNonEmpty!12249 (= tp!25323 (and e!209546 mapRes!12255))))

(declare-fun mapIsEmpty!12255 () Bool)

(assert (=> mapIsEmpty!12255 mapRes!12255))

(declare-fun mapNonEmpty!12255 () Bool)

(declare-fun tp!25332 () Bool)

(declare-fun e!209547 () Bool)

(assert (=> mapNonEmpty!12255 (= mapRes!12255 (and tp!25332 e!209547))))

(declare-fun mapKey!12255 () (_ BitVec 32))

(declare-fun mapRest!12255 () (Array (_ BitVec 32) ValueCell!3264))

(declare-fun mapValue!12255 () ValueCell!3264)

(assert (=> mapNonEmpty!12255 (= mapRest!12249 (store mapRest!12255 mapKey!12255 mapValue!12255))))

(declare-fun b!341680 () Bool)

(assert (=> b!341680 (= e!209546 tp_is_empty!7215)))

(declare-fun b!341679 () Bool)

(assert (=> b!341679 (= e!209547 tp_is_empty!7215)))

(assert (= (and mapNonEmpty!12249 condMapEmpty!12255) mapIsEmpty!12255))

(assert (= (and mapNonEmpty!12249 (not condMapEmpty!12255)) mapNonEmpty!12255))

(assert (= (and mapNonEmpty!12255 ((_ is ValueCellFull!3264) mapValue!12255)) b!341679))

(assert (= (and mapNonEmpty!12249 ((_ is ValueCellFull!3264) mapDefault!12255)) b!341680))

(declare-fun m!344047 () Bool)

(assert (=> mapNonEmpty!12255 m!344047))

(declare-fun b_lambda!8475 () Bool)

(assert (= b_lambda!8473 (or (and start!34248 b_free!7263) b_lambda!8475)))

(check-sat (not b_next!7263) (not b!341643) (not b!341649) (not b!341589) (not b!341648) (not bm!26582) (not bm!26561) b_and!14485 (not d!70845) (not b!341633) (not b!341567) (not b!341638) (not d!70835) (not b!341637) (not b!341555) (not bm!26564) (not bm!26580) (not b!341635) (not b!341587) (not b!341580) (not b!341671) (not mapNonEmpty!12255) (not d!70829) (not b!341574) (not b!341647) (not bm!26583) (not b!341554) (not b!341553) (not b_lambda!8475) (not d!70837) (not bm!26585) (not b!341565) tp_is_empty!7215)
(check-sat b_and!14485 (not b_next!7263))

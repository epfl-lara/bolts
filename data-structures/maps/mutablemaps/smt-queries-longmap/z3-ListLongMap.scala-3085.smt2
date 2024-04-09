; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43436 () Bool)

(assert start!43436)

(declare-fun b_free!12231 () Bool)

(declare-fun b_next!12231 () Bool)

(assert (=> start!43436 (= b_free!12231 (not b_next!12231))))

(declare-fun tp!42973 () Bool)

(declare-fun b_and!21007 () Bool)

(assert (=> start!43436 (= tp!42973 b_and!21007)))

(declare-fun b!480959 () Bool)

(declare-fun e!282993 () Bool)

(declare-fun tp_is_empty!13743 () Bool)

(assert (=> b!480959 (= e!282993 tp_is_empty!13743)))

(declare-fun mapIsEmpty!22321 () Bool)

(declare-fun mapRes!22321 () Bool)

(assert (=> mapIsEmpty!22321 mapRes!22321))

(declare-fun b!480960 () Bool)

(declare-fun res!286845 () Bool)

(declare-fun e!282992 () Bool)

(assert (=> b!480960 (=> (not res!286845) (not e!282992))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480960 (= res!286845 (validKeyInArray!0 k0!1332))))

(declare-fun mapNonEmpty!22321 () Bool)

(declare-fun tp!42972 () Bool)

(assert (=> mapNonEmpty!22321 (= mapRes!22321 (and tp!42972 e!282993))))

(declare-datatypes ((V!19395 0))(
  ( (V!19396 (val!6919 Int)) )
))
(declare-datatypes ((ValueCell!6510 0))(
  ( (ValueCellFull!6510 (v!9207 V!19395)) (EmptyCell!6510) )
))
(declare-fun mapRest!22321 () (Array (_ BitVec 32) ValueCell!6510))

(declare-datatypes ((array!31123 0))(
  ( (array!31124 (arr!14962 (Array (_ BitVec 32) ValueCell!6510)) (size!15320 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31123)

(declare-fun mapValue!22321 () ValueCell!6510)

(declare-fun mapKey!22321 () (_ BitVec 32))

(assert (=> mapNonEmpty!22321 (= (arr!14962 _values!1516) (store mapRest!22321 mapKey!22321 mapValue!22321))))

(declare-fun b!480961 () Bool)

(declare-fun e!282995 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480961 (= e!282995 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480962 () Bool)

(declare-fun res!286846 () Bool)

(assert (=> b!480962 (=> (not res!286846) (not e!282992))))

(declare-datatypes ((array!31125 0))(
  ( (array!31126 (arr!14963 (Array (_ BitVec 32) (_ BitVec 64))) (size!15321 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31125)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31125 (_ BitVec 32)) Bool)

(assert (=> b!480962 (= res!286846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480963 () Bool)

(declare-fun res!286844 () Bool)

(assert (=> b!480963 (=> (not res!286844) (not e!282992))))

(assert (=> b!480963 (= res!286844 (and (= (size!15320 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15321 _keys!1874) (size!15320 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun lt!218349 () (_ BitVec 32))

(declare-fun b!480964 () Bool)

(assert (=> b!480964 (= e!282992 (not (or (not (= (size!15321 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))) (bvslt lt!218349 #b00000000000000000000000000000000) (bvsle lt!218349 (size!15321 _keys!1874)))))))

(assert (=> b!480964 (arrayForallSeekEntryOrOpenFound!0 lt!218349 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14082 0))(
  ( (Unit!14083) )
))
(declare-fun lt!218351 () Unit!14082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14082)

(assert (=> b!480964 (= lt!218351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218349))))

(declare-fun arrayScanForKey!0 (array!31125 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480964 (= lt!218349 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!480964 e!282995))

(declare-fun c!57791 () Bool)

(assert (=> b!480964 (= c!57791 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun minValue!1458 () V!19395)

(declare-fun zeroValue!1458 () V!19395)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lt!218350 () Unit!14082)

(declare-fun lemmaKeyInListMapIsInArray!131 (array!31125 array!31123 (_ BitVec 32) (_ BitVec 32) V!19395 V!19395 (_ BitVec 64) Int) Unit!14082)

(assert (=> b!480964 (= lt!218350 (lemmaKeyInListMapIsInArray!131 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!480965 () Bool)

(declare-fun e!282996 () Bool)

(declare-fun e!282994 () Bool)

(assert (=> b!480965 (= e!282996 (and e!282994 mapRes!22321))))

(declare-fun condMapEmpty!22321 () Bool)

(declare-fun mapDefault!22321 () ValueCell!6510)

(assert (=> b!480965 (= condMapEmpty!22321 (= (arr!14962 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6510)) mapDefault!22321)))))

(declare-fun b!480966 () Bool)

(declare-fun arrayContainsKey!0 (array!31125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480966 (= e!282995 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!480967 () Bool)

(declare-fun res!286847 () Bool)

(assert (=> b!480967 (=> (not res!286847) (not e!282992))))

(declare-datatypes ((tuple2!9078 0))(
  ( (tuple2!9079 (_1!4549 (_ BitVec 64)) (_2!4549 V!19395)) )
))
(declare-datatypes ((List!9193 0))(
  ( (Nil!9190) (Cons!9189 (h!10045 tuple2!9078) (t!15413 List!9193)) )
))
(declare-datatypes ((ListLongMap!8005 0))(
  ( (ListLongMap!8006 (toList!4018 List!9193)) )
))
(declare-fun contains!2628 (ListLongMap!8005 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2310 (array!31125 array!31123 (_ BitVec 32) (_ BitVec 32) V!19395 V!19395 (_ BitVec 32) Int) ListLongMap!8005)

(assert (=> b!480967 (= res!286847 (contains!2628 (getCurrentListMap!2310 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun res!286843 () Bool)

(assert (=> start!43436 (=> (not res!286843) (not e!282992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43436 (= res!286843 (validMask!0 mask!2352))))

(assert (=> start!43436 e!282992))

(assert (=> start!43436 true))

(assert (=> start!43436 tp_is_empty!13743))

(declare-fun array_inv!10774 (array!31123) Bool)

(assert (=> start!43436 (and (array_inv!10774 _values!1516) e!282996)))

(assert (=> start!43436 tp!42973))

(declare-fun array_inv!10775 (array!31125) Bool)

(assert (=> start!43436 (array_inv!10775 _keys!1874)))

(declare-fun b!480968 () Bool)

(declare-fun res!286842 () Bool)

(assert (=> b!480968 (=> (not res!286842) (not e!282992))))

(declare-datatypes ((List!9194 0))(
  ( (Nil!9191) (Cons!9190 (h!10046 (_ BitVec 64)) (t!15414 List!9194)) )
))
(declare-fun arrayNoDuplicates!0 (array!31125 (_ BitVec 32) List!9194) Bool)

(assert (=> b!480968 (= res!286842 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9191))))

(declare-fun b!480969 () Bool)

(assert (=> b!480969 (= e!282994 tp_is_empty!13743)))

(assert (= (and start!43436 res!286843) b!480963))

(assert (= (and b!480963 res!286844) b!480962))

(assert (= (and b!480962 res!286846) b!480968))

(assert (= (and b!480968 res!286842) b!480967))

(assert (= (and b!480967 res!286847) b!480960))

(assert (= (and b!480960 res!286845) b!480964))

(assert (= (and b!480964 c!57791) b!480966))

(assert (= (and b!480964 (not c!57791)) b!480961))

(assert (= (and b!480965 condMapEmpty!22321) mapIsEmpty!22321))

(assert (= (and b!480965 (not condMapEmpty!22321)) mapNonEmpty!22321))

(get-info :version)

(assert (= (and mapNonEmpty!22321 ((_ is ValueCellFull!6510) mapValue!22321)) b!480959))

(assert (= (and b!480965 ((_ is ValueCellFull!6510) mapDefault!22321)) b!480969))

(assert (= start!43436 b!480965))

(declare-fun m!462497 () Bool)

(assert (=> b!480964 m!462497))

(declare-fun m!462499 () Bool)

(assert (=> b!480964 m!462499))

(declare-fun m!462501 () Bool)

(assert (=> b!480964 m!462501))

(declare-fun m!462503 () Bool)

(assert (=> b!480964 m!462503))

(declare-fun m!462505 () Bool)

(assert (=> b!480962 m!462505))

(declare-fun m!462507 () Bool)

(assert (=> start!43436 m!462507))

(declare-fun m!462509 () Bool)

(assert (=> start!43436 m!462509))

(declare-fun m!462511 () Bool)

(assert (=> start!43436 m!462511))

(declare-fun m!462513 () Bool)

(assert (=> mapNonEmpty!22321 m!462513))

(declare-fun m!462515 () Bool)

(assert (=> b!480967 m!462515))

(assert (=> b!480967 m!462515))

(declare-fun m!462517 () Bool)

(assert (=> b!480967 m!462517))

(declare-fun m!462519 () Bool)

(assert (=> b!480966 m!462519))

(declare-fun m!462521 () Bool)

(assert (=> b!480960 m!462521))

(declare-fun m!462523 () Bool)

(assert (=> b!480968 m!462523))

(check-sat b_and!21007 (not b!480966) (not b!480967) tp_is_empty!13743 (not b!480964) (not b!480962) (not b_next!12231) (not b!480968) (not start!43436) (not mapNonEmpty!22321) (not b!480960))
(check-sat b_and!21007 (not b_next!12231))
(get-model)

(declare-fun bm!30926 () Bool)

(declare-fun call!30929 () Bool)

(declare-fun c!57797 () Bool)

(assert (=> bm!30926 (= call!30929 (arrayNoDuplicates!0 _keys!1874 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57797 (Cons!9190 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000) Nil!9191) Nil!9191)))))

(declare-fun b!481013 () Bool)

(declare-fun e!283027 () Bool)

(declare-fun e!283026 () Bool)

(assert (=> b!481013 (= e!283027 e!283026)))

(declare-fun res!286873 () Bool)

(assert (=> b!481013 (=> (not res!286873) (not e!283026))))

(declare-fun e!283025 () Bool)

(assert (=> b!481013 (= res!286873 (not e!283025))))

(declare-fun res!286874 () Bool)

(assert (=> b!481013 (=> (not res!286874) (not e!283025))))

(assert (=> b!481013 (= res!286874 (validKeyInArray!0 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!481014 () Bool)

(declare-fun e!283024 () Bool)

(assert (=> b!481014 (= e!283026 e!283024)))

(assert (=> b!481014 (= c!57797 (validKeyInArray!0 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun d!76641 () Bool)

(declare-fun res!286872 () Bool)

(assert (=> d!76641 (=> res!286872 e!283027)))

(assert (=> d!76641 (= res!286872 (bvsge #b00000000000000000000000000000000 (size!15321 _keys!1874)))))

(assert (=> d!76641 (= (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9191) e!283027)))

(declare-fun b!481015 () Bool)

(declare-fun contains!2629 (List!9194 (_ BitVec 64)) Bool)

(assert (=> b!481015 (= e!283025 (contains!2629 Nil!9191 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!481016 () Bool)

(assert (=> b!481016 (= e!283024 call!30929)))

(declare-fun b!481017 () Bool)

(assert (=> b!481017 (= e!283024 call!30929)))

(assert (= (and d!76641 (not res!286872)) b!481013))

(assert (= (and b!481013 res!286874) b!481015))

(assert (= (and b!481013 res!286873) b!481014))

(assert (= (and b!481014 c!57797) b!481017))

(assert (= (and b!481014 (not c!57797)) b!481016))

(assert (= (or b!481017 b!481016) bm!30926))

(declare-fun m!462553 () Bool)

(assert (=> bm!30926 m!462553))

(declare-fun m!462555 () Bool)

(assert (=> bm!30926 m!462555))

(assert (=> b!481013 m!462553))

(assert (=> b!481013 m!462553))

(declare-fun m!462557 () Bool)

(assert (=> b!481013 m!462557))

(assert (=> b!481014 m!462553))

(assert (=> b!481014 m!462553))

(assert (=> b!481014 m!462557))

(assert (=> b!481015 m!462553))

(assert (=> b!481015 m!462553))

(declare-fun m!462559 () Bool)

(assert (=> b!481015 m!462559))

(assert (=> b!480968 d!76641))

(declare-fun d!76643 () Bool)

(assert (=> d!76643 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43436 d!76643))

(declare-fun d!76645 () Bool)

(assert (=> d!76645 (= (array_inv!10774 _values!1516) (bvsge (size!15320 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43436 d!76645))

(declare-fun d!76647 () Bool)

(assert (=> d!76647 (= (array_inv!10775 _keys!1874) (bvsge (size!15321 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43436 d!76647))

(declare-fun b!481026 () Bool)

(declare-fun e!283034 () Bool)

(declare-fun e!283036 () Bool)

(assert (=> b!481026 (= e!283034 e!283036)))

(declare-fun c!57800 () Bool)

(assert (=> b!481026 (= c!57800 (validKeyInArray!0 (select (arr!14963 _keys!1874) lt!218349)))))

(declare-fun d!76649 () Bool)

(declare-fun res!286880 () Bool)

(assert (=> d!76649 (=> res!286880 e!283034)))

(assert (=> d!76649 (= res!286880 (bvsge lt!218349 (size!15321 _keys!1874)))))

(assert (=> d!76649 (= (arrayForallSeekEntryOrOpenFound!0 lt!218349 _keys!1874 mask!2352) e!283034)))

(declare-fun bm!30929 () Bool)

(declare-fun call!30932 () Bool)

(assert (=> bm!30929 (= call!30932 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!218349 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!481027 () Bool)

(declare-fun e!283035 () Bool)

(assert (=> b!481027 (= e!283036 e!283035)))

(declare-fun lt!218369 () (_ BitVec 64))

(assert (=> b!481027 (= lt!218369 (select (arr!14963 _keys!1874) lt!218349))))

(declare-fun lt!218368 () Unit!14082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31125 (_ BitVec 64) (_ BitVec 32)) Unit!14082)

(assert (=> b!481027 (= lt!218368 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!218369 lt!218349))))

(assert (=> b!481027 (arrayContainsKey!0 _keys!1874 lt!218369 #b00000000000000000000000000000000)))

(declare-fun lt!218367 () Unit!14082)

(assert (=> b!481027 (= lt!218367 lt!218368)))

(declare-fun res!286879 () Bool)

(declare-datatypes ((SeekEntryResult!3559 0))(
  ( (MissingZero!3559 (index!16415 (_ BitVec 32))) (Found!3559 (index!16416 (_ BitVec 32))) (Intermediate!3559 (undefined!4371 Bool) (index!16417 (_ BitVec 32)) (x!45178 (_ BitVec 32))) (Undefined!3559) (MissingVacant!3559 (index!16418 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31125 (_ BitVec 32)) SeekEntryResult!3559)

(assert (=> b!481027 (= res!286879 (= (seekEntryOrOpen!0 (select (arr!14963 _keys!1874) lt!218349) _keys!1874 mask!2352) (Found!3559 lt!218349)))))

(assert (=> b!481027 (=> (not res!286879) (not e!283035))))

(declare-fun b!481028 () Bool)

(assert (=> b!481028 (= e!283035 call!30932)))

(declare-fun b!481029 () Bool)

(assert (=> b!481029 (= e!283036 call!30932)))

(assert (= (and d!76649 (not res!286880)) b!481026))

(assert (= (and b!481026 c!57800) b!481027))

(assert (= (and b!481026 (not c!57800)) b!481029))

(assert (= (and b!481027 res!286879) b!481028))

(assert (= (or b!481028 b!481029) bm!30929))

(declare-fun m!462561 () Bool)

(assert (=> b!481026 m!462561))

(assert (=> b!481026 m!462561))

(declare-fun m!462563 () Bool)

(assert (=> b!481026 m!462563))

(declare-fun m!462565 () Bool)

(assert (=> bm!30929 m!462565))

(assert (=> b!481027 m!462561))

(declare-fun m!462567 () Bool)

(assert (=> b!481027 m!462567))

(declare-fun m!462569 () Bool)

(assert (=> b!481027 m!462569))

(assert (=> b!481027 m!462561))

(declare-fun m!462571 () Bool)

(assert (=> b!481027 m!462571))

(assert (=> b!480964 d!76649))

(declare-fun d!76651 () Bool)

(assert (=> d!76651 (arrayForallSeekEntryOrOpenFound!0 lt!218349 _keys!1874 mask!2352)))

(declare-fun lt!218372 () Unit!14082)

(declare-fun choose!38 (array!31125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14082)

(assert (=> d!76651 (= lt!218372 (choose!38 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218349))))

(assert (=> d!76651 (validMask!0 mask!2352)))

(assert (=> d!76651 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218349) lt!218372)))

(declare-fun bs!15300 () Bool)

(assert (= bs!15300 d!76651))

(assert (=> bs!15300 m!462497))

(declare-fun m!462573 () Bool)

(assert (=> bs!15300 m!462573))

(assert (=> bs!15300 m!462507))

(assert (=> b!480964 d!76651))

(declare-fun d!76653 () Bool)

(declare-fun lt!218375 () (_ BitVec 32))

(assert (=> d!76653 (and (or (bvslt lt!218375 #b00000000000000000000000000000000) (bvsge lt!218375 (size!15321 _keys!1874)) (and (bvsge lt!218375 #b00000000000000000000000000000000) (bvslt lt!218375 (size!15321 _keys!1874)))) (bvsge lt!218375 #b00000000000000000000000000000000) (bvslt lt!218375 (size!15321 _keys!1874)) (= (select (arr!14963 _keys!1874) lt!218375) k0!1332))))

(declare-fun e!283039 () (_ BitVec 32))

(assert (=> d!76653 (= lt!218375 e!283039)))

(declare-fun c!57803 () Bool)

(assert (=> d!76653 (= c!57803 (= (select (arr!14963 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76653 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15321 _keys!1874)) (bvslt (size!15321 _keys!1874) #b01111111111111111111111111111111))))

(assert (=> d!76653 (= (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) lt!218375)))

(declare-fun b!481034 () Bool)

(assert (=> b!481034 (= e!283039 #b00000000000000000000000000000000)))

(declare-fun b!481035 () Bool)

(assert (=> b!481035 (= e!283039 (arrayScanForKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76653 c!57803) b!481034))

(assert (= (and d!76653 (not c!57803)) b!481035))

(declare-fun m!462575 () Bool)

(assert (=> d!76653 m!462575))

(assert (=> d!76653 m!462553))

(declare-fun m!462577 () Bool)

(assert (=> b!481035 m!462577))

(assert (=> b!480964 d!76653))

(declare-fun d!76655 () Bool)

(declare-fun e!283042 () Bool)

(assert (=> d!76655 e!283042))

(declare-fun c!57806 () Bool)

(assert (=> d!76655 (= c!57806 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218378 () Unit!14082)

(declare-fun choose!1385 (array!31125 array!31123 (_ BitVec 32) (_ BitVec 32) V!19395 V!19395 (_ BitVec 64) Int) Unit!14082)

(assert (=> d!76655 (= lt!218378 (choose!1385 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (=> d!76655 (validMask!0 mask!2352)))

(assert (=> d!76655 (= (lemmaKeyInListMapIsInArray!131 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519) lt!218378)))

(declare-fun b!481040 () Bool)

(assert (=> b!481040 (= e!283042 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!481041 () Bool)

(assert (=> b!481041 (= e!283042 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!76655 c!57806) b!481040))

(assert (= (and d!76655 (not c!57806)) b!481041))

(declare-fun m!462579 () Bool)

(assert (=> d!76655 m!462579))

(assert (=> d!76655 m!462507))

(assert (=> b!481040 m!462519))

(assert (=> b!480964 d!76655))

(declare-fun d!76657 () Bool)

(assert (=> d!76657 (= (validKeyInArray!0 k0!1332) (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!480960 d!76657))

(declare-fun d!76659 () Bool)

(declare-fun res!286885 () Bool)

(declare-fun e!283047 () Bool)

(assert (=> d!76659 (=> res!286885 e!283047)))

(assert (=> d!76659 (= res!286885 (= (select (arr!14963 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76659 (= (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) e!283047)))

(declare-fun b!481046 () Bool)

(declare-fun e!283048 () Bool)

(assert (=> b!481046 (= e!283047 e!283048)))

(declare-fun res!286886 () Bool)

(assert (=> b!481046 (=> (not res!286886) (not e!283048))))

(assert (=> b!481046 (= res!286886 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15321 _keys!1874)))))

(declare-fun b!481047 () Bool)

(assert (=> b!481047 (= e!283048 (arrayContainsKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76659 (not res!286885)) b!481046))

(assert (= (and b!481046 res!286886) b!481047))

(assert (=> d!76659 m!462553))

(declare-fun m!462581 () Bool)

(assert (=> b!481047 m!462581))

(assert (=> b!480966 d!76659))

(declare-fun b!481048 () Bool)

(declare-fun e!283049 () Bool)

(declare-fun e!283051 () Bool)

(assert (=> b!481048 (= e!283049 e!283051)))

(declare-fun c!57807 () Bool)

(assert (=> b!481048 (= c!57807 (validKeyInArray!0 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun d!76661 () Bool)

(declare-fun res!286888 () Bool)

(assert (=> d!76661 (=> res!286888 e!283049)))

(assert (=> d!76661 (= res!286888 (bvsge #b00000000000000000000000000000000 (size!15321 _keys!1874)))))

(assert (=> d!76661 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!283049)))

(declare-fun bm!30930 () Bool)

(declare-fun call!30933 () Bool)

(assert (=> bm!30930 (= call!30933 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!481049 () Bool)

(declare-fun e!283050 () Bool)

(assert (=> b!481049 (= e!283051 e!283050)))

(declare-fun lt!218381 () (_ BitVec 64))

(assert (=> b!481049 (= lt!218381 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218380 () Unit!14082)

(assert (=> b!481049 (= lt!218380 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!218381 #b00000000000000000000000000000000))))

(assert (=> b!481049 (arrayContainsKey!0 _keys!1874 lt!218381 #b00000000000000000000000000000000)))

(declare-fun lt!218379 () Unit!14082)

(assert (=> b!481049 (= lt!218379 lt!218380)))

(declare-fun res!286887 () Bool)

(assert (=> b!481049 (= res!286887 (= (seekEntryOrOpen!0 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3559 #b00000000000000000000000000000000)))))

(assert (=> b!481049 (=> (not res!286887) (not e!283050))))

(declare-fun b!481050 () Bool)

(assert (=> b!481050 (= e!283050 call!30933)))

(declare-fun b!481051 () Bool)

(assert (=> b!481051 (= e!283051 call!30933)))

(assert (= (and d!76661 (not res!286888)) b!481048))

(assert (= (and b!481048 c!57807) b!481049))

(assert (= (and b!481048 (not c!57807)) b!481051))

(assert (= (and b!481049 res!286887) b!481050))

(assert (= (or b!481050 b!481051) bm!30930))

(assert (=> b!481048 m!462553))

(assert (=> b!481048 m!462553))

(assert (=> b!481048 m!462557))

(declare-fun m!462583 () Bool)

(assert (=> bm!30930 m!462583))

(assert (=> b!481049 m!462553))

(declare-fun m!462585 () Bool)

(assert (=> b!481049 m!462585))

(declare-fun m!462587 () Bool)

(assert (=> b!481049 m!462587))

(assert (=> b!481049 m!462553))

(declare-fun m!462589 () Bool)

(assert (=> b!481049 m!462589))

(assert (=> b!480962 d!76661))

(declare-fun d!76663 () Bool)

(declare-fun e!283057 () Bool)

(assert (=> d!76663 e!283057))

(declare-fun res!286891 () Bool)

(assert (=> d!76663 (=> res!286891 e!283057)))

(declare-fun lt!218392 () Bool)

(assert (=> d!76663 (= res!286891 (not lt!218392))))

(declare-fun lt!218391 () Bool)

(assert (=> d!76663 (= lt!218392 lt!218391)))

(declare-fun lt!218393 () Unit!14082)

(declare-fun e!283056 () Unit!14082)

(assert (=> d!76663 (= lt!218393 e!283056)))

(declare-fun c!57810 () Bool)

(assert (=> d!76663 (= c!57810 lt!218391)))

(declare-fun containsKey!356 (List!9193 (_ BitVec 64)) Bool)

(assert (=> d!76663 (= lt!218391 (containsKey!356 (toList!4018 (getCurrentListMap!2310 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(assert (=> d!76663 (= (contains!2628 (getCurrentListMap!2310 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332) lt!218392)))

(declare-fun b!481058 () Bool)

(declare-fun lt!218390 () Unit!14082)

(assert (=> b!481058 (= e!283056 lt!218390)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!305 (List!9193 (_ BitVec 64)) Unit!14082)

(assert (=> b!481058 (= lt!218390 (lemmaContainsKeyImpliesGetValueByKeyDefined!305 (toList!4018 (getCurrentListMap!2310 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-datatypes ((Option!400 0))(
  ( (Some!399 (v!9209 V!19395)) (None!398) )
))
(declare-fun isDefined!306 (Option!400) Bool)

(declare-fun getValueByKey!394 (List!9193 (_ BitVec 64)) Option!400)

(assert (=> b!481058 (isDefined!306 (getValueByKey!394 (toList!4018 (getCurrentListMap!2310 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-fun b!481059 () Bool)

(declare-fun Unit!14086 () Unit!14082)

(assert (=> b!481059 (= e!283056 Unit!14086)))

(declare-fun b!481060 () Bool)

(assert (=> b!481060 (= e!283057 (isDefined!306 (getValueByKey!394 (toList!4018 (getCurrentListMap!2310 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332)))))

(assert (= (and d!76663 c!57810) b!481058))

(assert (= (and d!76663 (not c!57810)) b!481059))

(assert (= (and d!76663 (not res!286891)) b!481060))

(declare-fun m!462591 () Bool)

(assert (=> d!76663 m!462591))

(declare-fun m!462593 () Bool)

(assert (=> b!481058 m!462593))

(declare-fun m!462595 () Bool)

(assert (=> b!481058 m!462595))

(assert (=> b!481058 m!462595))

(declare-fun m!462597 () Bool)

(assert (=> b!481058 m!462597))

(assert (=> b!481060 m!462595))

(assert (=> b!481060 m!462595))

(assert (=> b!481060 m!462597))

(assert (=> b!480967 d!76663))

(declare-fun b!481103 () Bool)

(declare-fun e!283092 () Bool)

(declare-fun call!30951 () Bool)

(assert (=> b!481103 (= e!283092 (not call!30951))))

(declare-fun b!481104 () Bool)

(declare-fun e!283093 () Bool)

(declare-fun e!283095 () Bool)

(assert (=> b!481104 (= e!283093 e!283095)))

(declare-fun res!286913 () Bool)

(assert (=> b!481104 (=> (not res!286913) (not e!283095))))

(declare-fun lt!218440 () ListLongMap!8005)

(assert (=> b!481104 (= res!286913 (contains!2628 lt!218440 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000)))))

(assert (=> b!481104 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15321 _keys!1874)))))

(declare-fun bm!30945 () Bool)

(assert (=> bm!30945 (= call!30951 (contains!2628 lt!218440 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!481105 () Bool)

(declare-fun e!283096 () Unit!14082)

(declare-fun lt!218438 () Unit!14082)

(assert (=> b!481105 (= e!283096 lt!218438)))

(declare-fun lt!218449 () ListLongMap!8005)

(declare-fun getCurrentListMapNoExtraKeys!2115 (array!31125 array!31123 (_ BitVec 32) (_ BitVec 32) V!19395 V!19395 (_ BitVec 32) Int) ListLongMap!8005)

(assert (=> b!481105 (= lt!218449 (getCurrentListMapNoExtraKeys!2115 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218441 () (_ BitVec 64))

(assert (=> b!481105 (= lt!218441 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218445 () (_ BitVec 64))

(assert (=> b!481105 (= lt!218445 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218452 () Unit!14082)

(declare-fun addStillContains!300 (ListLongMap!8005 (_ BitVec 64) V!19395 (_ BitVec 64)) Unit!14082)

(assert (=> b!481105 (= lt!218452 (addStillContains!300 lt!218449 lt!218441 zeroValue!1458 lt!218445))))

(declare-fun +!1745 (ListLongMap!8005 tuple2!9078) ListLongMap!8005)

(assert (=> b!481105 (contains!2628 (+!1745 lt!218449 (tuple2!9079 lt!218441 zeroValue!1458)) lt!218445)))

(declare-fun lt!218455 () Unit!14082)

(assert (=> b!481105 (= lt!218455 lt!218452)))

(declare-fun lt!218450 () ListLongMap!8005)

(assert (=> b!481105 (= lt!218450 (getCurrentListMapNoExtraKeys!2115 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218458 () (_ BitVec 64))

(assert (=> b!481105 (= lt!218458 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218459 () (_ BitVec 64))

(assert (=> b!481105 (= lt!218459 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218453 () Unit!14082)

(declare-fun addApplyDifferent!300 (ListLongMap!8005 (_ BitVec 64) V!19395 (_ BitVec 64)) Unit!14082)

(assert (=> b!481105 (= lt!218453 (addApplyDifferent!300 lt!218450 lt!218458 minValue!1458 lt!218459))))

(declare-fun apply!342 (ListLongMap!8005 (_ BitVec 64)) V!19395)

(assert (=> b!481105 (= (apply!342 (+!1745 lt!218450 (tuple2!9079 lt!218458 minValue!1458)) lt!218459) (apply!342 lt!218450 lt!218459))))

(declare-fun lt!218447 () Unit!14082)

(assert (=> b!481105 (= lt!218447 lt!218453)))

(declare-fun lt!218456 () ListLongMap!8005)

(assert (=> b!481105 (= lt!218456 (getCurrentListMapNoExtraKeys!2115 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218454 () (_ BitVec 64))

(assert (=> b!481105 (= lt!218454 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218451 () (_ BitVec 64))

(assert (=> b!481105 (= lt!218451 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218448 () Unit!14082)

(assert (=> b!481105 (= lt!218448 (addApplyDifferent!300 lt!218456 lt!218454 zeroValue!1458 lt!218451))))

(assert (=> b!481105 (= (apply!342 (+!1745 lt!218456 (tuple2!9079 lt!218454 zeroValue!1458)) lt!218451) (apply!342 lt!218456 lt!218451))))

(declare-fun lt!218457 () Unit!14082)

(assert (=> b!481105 (= lt!218457 lt!218448)))

(declare-fun lt!218442 () ListLongMap!8005)

(assert (=> b!481105 (= lt!218442 (getCurrentListMapNoExtraKeys!2115 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218443 () (_ BitVec 64))

(assert (=> b!481105 (= lt!218443 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218446 () (_ BitVec 64))

(assert (=> b!481105 (= lt!218446 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> b!481105 (= lt!218438 (addApplyDifferent!300 lt!218442 lt!218443 minValue!1458 lt!218446))))

(assert (=> b!481105 (= (apply!342 (+!1745 lt!218442 (tuple2!9079 lt!218443 minValue!1458)) lt!218446) (apply!342 lt!218442 lt!218446))))

(declare-fun b!481106 () Bool)

(declare-fun e!283086 () Bool)

(declare-fun call!30950 () Bool)

(assert (=> b!481106 (= e!283086 (not call!30950))))

(declare-fun b!481107 () Bool)

(declare-fun e!283094 () Bool)

(assert (=> b!481107 (= e!283086 e!283094)))

(declare-fun res!286912 () Bool)

(assert (=> b!481107 (= res!286912 call!30950)))

(assert (=> b!481107 (=> (not res!286912) (not e!283094))))

(declare-fun b!481108 () Bool)

(declare-fun res!286915 () Bool)

(declare-fun e!283088 () Bool)

(assert (=> b!481108 (=> (not res!286915) (not e!283088))))

(assert (=> b!481108 (= res!286915 e!283093)))

(declare-fun res!286914 () Bool)

(assert (=> b!481108 (=> res!286914 e!283093)))

(declare-fun e!283087 () Bool)

(assert (=> b!481108 (= res!286914 (not e!283087))))

(declare-fun res!286911 () Bool)

(assert (=> b!481108 (=> (not res!286911) (not e!283087))))

(assert (=> b!481108 (= res!286911 (bvslt #b00000000000000000000000000000000 (size!15321 _keys!1874)))))

(declare-fun d!76665 () Bool)

(assert (=> d!76665 e!283088))

(declare-fun res!286917 () Bool)

(assert (=> d!76665 (=> (not res!286917) (not e!283088))))

(assert (=> d!76665 (= res!286917 (or (bvsge #b00000000000000000000000000000000 (size!15321 _keys!1874)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15321 _keys!1874)))))))

(declare-fun lt!218439 () ListLongMap!8005)

(assert (=> d!76665 (= lt!218440 lt!218439)))

(declare-fun lt!218444 () Unit!14082)

(assert (=> d!76665 (= lt!218444 e!283096)))

(declare-fun c!57828 () Bool)

(declare-fun e!283090 () Bool)

(assert (=> d!76665 (= c!57828 e!283090)))

(declare-fun res!286916 () Bool)

(assert (=> d!76665 (=> (not res!286916) (not e!283090))))

(assert (=> d!76665 (= res!286916 (bvslt #b00000000000000000000000000000000 (size!15321 _keys!1874)))))

(declare-fun e!283089 () ListLongMap!8005)

(assert (=> d!76665 (= lt!218439 e!283089)))

(declare-fun c!57825 () Bool)

(assert (=> d!76665 (= c!57825 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!76665 (validMask!0 mask!2352)))

(assert (=> d!76665 (= (getCurrentListMap!2310 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) lt!218440)))

(declare-fun b!481109 () Bool)

(declare-fun e!283085 () Bool)

(assert (=> b!481109 (= e!283092 e!283085)))

(declare-fun res!286910 () Bool)

(assert (=> b!481109 (= res!286910 call!30951)))

(assert (=> b!481109 (=> (not res!286910) (not e!283085))))

(declare-fun c!57824 () Bool)

(declare-fun bm!30946 () Bool)

(declare-fun call!30954 () ListLongMap!8005)

(declare-fun call!30949 () ListLongMap!8005)

(declare-fun call!30953 () ListLongMap!8005)

(declare-fun call!30948 () ListLongMap!8005)

(assert (=> bm!30946 (= call!30949 (+!1745 (ite c!57825 call!30954 (ite c!57824 call!30953 call!30948)) (ite (or c!57825 c!57824) (tuple2!9079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1458) (tuple2!9079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458))))))

(declare-fun b!481110 () Bool)

(declare-fun e!283084 () ListLongMap!8005)

(assert (=> b!481110 (= e!283084 call!30948)))

(declare-fun bm!30947 () Bool)

(assert (=> bm!30947 (= call!30954 (getCurrentListMapNoExtraKeys!2115 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun b!481111 () Bool)

(assert (=> b!481111 (= e!283090 (validKeyInArray!0 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!481112 () Bool)

(declare-fun e!283091 () ListLongMap!8005)

(declare-fun call!30952 () ListLongMap!8005)

(assert (=> b!481112 (= e!283091 call!30952)))

(declare-fun b!481113 () Bool)

(assert (=> b!481113 (= e!283089 e!283091)))

(assert (=> b!481113 (= c!57824 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!481114 () Bool)

(assert (=> b!481114 (= e!283084 call!30952)))

(declare-fun b!481115 () Bool)

(declare-fun get!7266 (ValueCell!6510 V!19395) V!19395)

(declare-fun dynLambda!952 (Int (_ BitVec 64)) V!19395)

(assert (=> b!481115 (= e!283095 (= (apply!342 lt!218440 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000)) (get!7266 (select (arr!14962 _values!1516) #b00000000000000000000000000000000) (dynLambda!952 defaultEntry!1519 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!481115 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15320 _values!1516)))))

(assert (=> b!481115 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15321 _keys!1874)))))

(declare-fun bm!30948 () Bool)

(assert (=> bm!30948 (= call!30948 call!30953)))

(declare-fun bm!30949 () Bool)

(assert (=> bm!30949 (= call!30952 call!30949)))

(declare-fun b!481116 () Bool)

(declare-fun Unit!14087 () Unit!14082)

(assert (=> b!481116 (= e!283096 Unit!14087)))

(declare-fun b!481117 () Bool)

(declare-fun c!57827 () Bool)

(assert (=> b!481117 (= c!57827 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!481117 (= e!283091 e!283084)))

(declare-fun bm!30950 () Bool)

(assert (=> bm!30950 (= call!30953 call!30954)))

(declare-fun bm!30951 () Bool)

(assert (=> bm!30951 (= call!30950 (contains!2628 lt!218440 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!481118 () Bool)

(declare-fun res!286918 () Bool)

(assert (=> b!481118 (=> (not res!286918) (not e!283088))))

(assert (=> b!481118 (= res!286918 e!283086)))

(declare-fun c!57826 () Bool)

(assert (=> b!481118 (= c!57826 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!481119 () Bool)

(assert (=> b!481119 (= e!283087 (validKeyInArray!0 (select (arr!14963 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!481120 () Bool)

(assert (=> b!481120 (= e!283094 (= (apply!342 lt!218440 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1458))))

(declare-fun b!481121 () Bool)

(assert (=> b!481121 (= e!283088 e!283092)))

(declare-fun c!57823 () Bool)

(assert (=> b!481121 (= c!57823 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!481122 () Bool)

(assert (=> b!481122 (= e!283085 (= (apply!342 lt!218440 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1458))))

(declare-fun b!481123 () Bool)

(assert (=> b!481123 (= e!283089 (+!1745 call!30949 (tuple2!9079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458)))))

(assert (= (and d!76665 c!57825) b!481123))

(assert (= (and d!76665 (not c!57825)) b!481113))

(assert (= (and b!481113 c!57824) b!481112))

(assert (= (and b!481113 (not c!57824)) b!481117))

(assert (= (and b!481117 c!57827) b!481114))

(assert (= (and b!481117 (not c!57827)) b!481110))

(assert (= (or b!481114 b!481110) bm!30948))

(assert (= (or b!481112 bm!30948) bm!30950))

(assert (= (or b!481112 b!481114) bm!30949))

(assert (= (or b!481123 bm!30950) bm!30947))

(assert (= (or b!481123 bm!30949) bm!30946))

(assert (= (and d!76665 res!286916) b!481111))

(assert (= (and d!76665 c!57828) b!481105))

(assert (= (and d!76665 (not c!57828)) b!481116))

(assert (= (and d!76665 res!286917) b!481108))

(assert (= (and b!481108 res!286911) b!481119))

(assert (= (and b!481108 (not res!286914)) b!481104))

(assert (= (and b!481104 res!286913) b!481115))

(assert (= (and b!481108 res!286915) b!481118))

(assert (= (and b!481118 c!57826) b!481107))

(assert (= (and b!481118 (not c!57826)) b!481106))

(assert (= (and b!481107 res!286912) b!481120))

(assert (= (or b!481107 b!481106) bm!30951))

(assert (= (and b!481118 res!286918) b!481121))

(assert (= (and b!481121 c!57823) b!481109))

(assert (= (and b!481121 (not c!57823)) b!481103))

(assert (= (and b!481109 res!286910) b!481122))

(assert (= (or b!481109 b!481103) bm!30945))

(declare-fun b_lambda!10833 () Bool)

(assert (=> (not b_lambda!10833) (not b!481115)))

(declare-fun t!15417 () Bool)

(declare-fun tb!4173 () Bool)

(assert (=> (and start!43436 (= defaultEntry!1519 defaultEntry!1519) t!15417) tb!4173))

(declare-fun result!7771 () Bool)

(assert (=> tb!4173 (= result!7771 tp_is_empty!13743)))

(assert (=> b!481115 t!15417))

(declare-fun b_and!21011 () Bool)

(assert (= b_and!21007 (and (=> t!15417 result!7771) b_and!21011)))

(assert (=> d!76665 m!462507))

(declare-fun m!462599 () Bool)

(assert (=> b!481120 m!462599))

(assert (=> b!481119 m!462553))

(assert (=> b!481119 m!462553))

(assert (=> b!481119 m!462557))

(declare-fun m!462601 () Bool)

(assert (=> bm!30951 m!462601))

(declare-fun m!462603 () Bool)

(assert (=> b!481122 m!462603))

(assert (=> b!481111 m!462553))

(assert (=> b!481111 m!462553))

(assert (=> b!481111 m!462557))

(declare-fun m!462605 () Bool)

(assert (=> bm!30947 m!462605))

(assert (=> b!481115 m!462553))

(declare-fun m!462607 () Bool)

(assert (=> b!481115 m!462607))

(declare-fun m!462609 () Bool)

(assert (=> b!481115 m!462609))

(declare-fun m!462611 () Bool)

(assert (=> b!481115 m!462611))

(declare-fun m!462613 () Bool)

(assert (=> b!481115 m!462613))

(assert (=> b!481115 m!462609))

(assert (=> b!481115 m!462611))

(assert (=> b!481115 m!462553))

(assert (=> b!481104 m!462553))

(assert (=> b!481104 m!462553))

(declare-fun m!462615 () Bool)

(assert (=> b!481104 m!462615))

(declare-fun m!462617 () Bool)

(assert (=> bm!30946 m!462617))

(declare-fun m!462619 () Bool)

(assert (=> b!481123 m!462619))

(declare-fun m!462621 () Bool)

(assert (=> b!481105 m!462621))

(declare-fun m!462623 () Bool)

(assert (=> b!481105 m!462623))

(assert (=> b!481105 m!462605))

(declare-fun m!462625 () Bool)

(assert (=> b!481105 m!462625))

(declare-fun m!462627 () Bool)

(assert (=> b!481105 m!462627))

(declare-fun m!462629 () Bool)

(assert (=> b!481105 m!462629))

(assert (=> b!481105 m!462553))

(assert (=> b!481105 m!462621))

(declare-fun m!462631 () Bool)

(assert (=> b!481105 m!462631))

(declare-fun m!462633 () Bool)

(assert (=> b!481105 m!462633))

(declare-fun m!462635 () Bool)

(assert (=> b!481105 m!462635))

(declare-fun m!462637 () Bool)

(assert (=> b!481105 m!462637))

(declare-fun m!462639 () Bool)

(assert (=> b!481105 m!462639))

(declare-fun m!462641 () Bool)

(assert (=> b!481105 m!462641))

(assert (=> b!481105 m!462639))

(declare-fun m!462643 () Bool)

(assert (=> b!481105 m!462643))

(assert (=> b!481105 m!462625))

(declare-fun m!462645 () Bool)

(assert (=> b!481105 m!462645))

(assert (=> b!481105 m!462635))

(declare-fun m!462647 () Bool)

(assert (=> b!481105 m!462647))

(declare-fun m!462649 () Bool)

(assert (=> b!481105 m!462649))

(declare-fun m!462651 () Bool)

(assert (=> bm!30945 m!462651))

(assert (=> b!480967 d!76665))

(declare-fun b!481132 () Bool)

(declare-fun e!283101 () Bool)

(assert (=> b!481132 (= e!283101 tp_is_empty!13743)))

(declare-fun condMapEmpty!22327 () Bool)

(declare-fun mapDefault!22327 () ValueCell!6510)

(assert (=> mapNonEmpty!22321 (= condMapEmpty!22327 (= mapRest!22321 ((as const (Array (_ BitVec 32) ValueCell!6510)) mapDefault!22327)))))

(declare-fun e!283102 () Bool)

(declare-fun mapRes!22327 () Bool)

(assert (=> mapNonEmpty!22321 (= tp!42972 (and e!283102 mapRes!22327))))

(declare-fun mapIsEmpty!22327 () Bool)

(assert (=> mapIsEmpty!22327 mapRes!22327))

(declare-fun mapNonEmpty!22327 () Bool)

(declare-fun tp!42982 () Bool)

(assert (=> mapNonEmpty!22327 (= mapRes!22327 (and tp!42982 e!283101))))

(declare-fun mapValue!22327 () ValueCell!6510)

(declare-fun mapKey!22327 () (_ BitVec 32))

(declare-fun mapRest!22327 () (Array (_ BitVec 32) ValueCell!6510))

(assert (=> mapNonEmpty!22327 (= mapRest!22321 (store mapRest!22327 mapKey!22327 mapValue!22327))))

(declare-fun b!481133 () Bool)

(assert (=> b!481133 (= e!283102 tp_is_empty!13743)))

(assert (= (and mapNonEmpty!22321 condMapEmpty!22327) mapIsEmpty!22327))

(assert (= (and mapNonEmpty!22321 (not condMapEmpty!22327)) mapNonEmpty!22327))

(assert (= (and mapNonEmpty!22327 ((_ is ValueCellFull!6510) mapValue!22327)) b!481132))

(assert (= (and mapNonEmpty!22321 ((_ is ValueCellFull!6510) mapDefault!22327)) b!481133))

(declare-fun m!462653 () Bool)

(assert (=> mapNonEmpty!22327 m!462653))

(declare-fun b_lambda!10835 () Bool)

(assert (= b_lambda!10833 (or (and start!43436 b_free!12231) b_lambda!10835)))

(check-sat (not b!481122) (not mapNonEmpty!22327) (not bm!30930) (not b!481013) (not b!481115) (not b!481015) (not b!481120) (not d!76655) (not b_lambda!10835) (not b!481123) (not b!481105) (not b!481027) (not d!76663) (not bm!30947) (not b!481119) (not b!481060) b_and!21011 (not b!481047) (not bm!30945) (not bm!30951) (not bm!30946) (not b!481026) (not b!481040) (not d!76651) (not b!481048) (not b!481111) (not b!481014) (not d!76665) (not b!481049) tp_is_empty!13743 (not bm!30929) (not b!481035) (not b_next!12231) (not bm!30926) (not b!481058) (not b!481104))
(check-sat b_and!21011 (not b_next!12231))

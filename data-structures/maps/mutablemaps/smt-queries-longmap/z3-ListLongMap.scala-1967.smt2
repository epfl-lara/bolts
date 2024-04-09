; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34614 () Bool)

(assert start!34614)

(declare-fun b_free!7473 () Bool)

(declare-fun b_next!7473 () Bool)

(assert (=> start!34614 (= b_free!7473 (not b_next!7473))))

(declare-fun tp!25973 () Bool)

(declare-fun b_and!14705 () Bool)

(assert (=> start!34614 (= tp!25973 b_and!14705)))

(declare-fun mapNonEmpty!12585 () Bool)

(declare-fun mapRes!12585 () Bool)

(declare-fun tp!25974 () Bool)

(declare-fun e!211854 () Bool)

(assert (=> mapNonEmpty!12585 (= mapRes!12585 (and tp!25974 e!211854))))

(declare-fun mapKey!12585 () (_ BitVec 32))

(declare-datatypes ((V!10877 0))(
  ( (V!10878 (val!3757 Int)) )
))
(declare-datatypes ((ValueCell!3369 0))(
  ( (ValueCellFull!3369 (v!5932 V!10877)) (EmptyCell!3369) )
))
(declare-fun mapValue!12585 () ValueCell!3369)

(declare-datatypes ((array!18405 0))(
  ( (array!18406 (arr!8713 (Array (_ BitVec 32) ValueCell!3369)) (size!9065 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18405)

(declare-fun mapRest!12585 () (Array (_ BitVec 32) ValueCell!3369))

(assert (=> mapNonEmpty!12585 (= (arr!8713 _values!1525) (store mapRest!12585 mapKey!12585 mapValue!12585))))

(declare-fun b!345636 () Bool)

(declare-fun res!191270 () Bool)

(declare-fun e!211857 () Bool)

(assert (=> b!345636 (=> (not res!191270) (not e!211857))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345636 (= res!191270 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!12585 () Bool)

(assert (=> mapIsEmpty!12585 mapRes!12585))

(declare-fun b!345637 () Bool)

(declare-fun res!191264 () Bool)

(declare-fun e!211852 () Bool)

(assert (=> b!345637 (=> (not res!191264) (not e!211852))))

(declare-datatypes ((SeekEntryResult!3354 0))(
  ( (MissingZero!3354 (index!15595 (_ BitVec 32))) (Found!3354 (index!15596 (_ BitVec 32))) (Intermediate!3354 (undefined!4166 Bool) (index!15597 (_ BitVec 32)) (x!34437 (_ BitVec 32))) (Undefined!3354) (MissingVacant!3354 (index!15598 (_ BitVec 32))) )
))
(declare-fun lt!163032 () SeekEntryResult!3354)

(declare-datatypes ((array!18407 0))(
  ( (array!18408 (arr!8714 (Array (_ BitVec 32) (_ BitVec 64))) (size!9066 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18407)

(declare-fun arrayContainsKey!0 (array!18407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!345637 (= res!191264 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15596 lt!163032)))))

(declare-fun b!345638 () Bool)

(declare-fun e!211856 () Bool)

(declare-fun tp_is_empty!7425 () Bool)

(assert (=> b!345638 (= e!211856 tp_is_empty!7425)))

(declare-fun b!345639 () Bool)

(assert (=> b!345639 (= e!211852 (bvslt (index!15596 lt!163032) #b00000000000000000000000000000000))))

(declare-fun b!345641 () Bool)

(declare-fun res!191263 () Bool)

(assert (=> b!345641 (=> (not res!191263) (not e!211857))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10877)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10877)

(declare-datatypes ((tuple2!5420 0))(
  ( (tuple2!5421 (_1!2720 (_ BitVec 64)) (_2!2720 V!10877)) )
))
(declare-datatypes ((List!5068 0))(
  ( (Nil!5065) (Cons!5064 (h!5920 tuple2!5420) (t!10198 List!5068)) )
))
(declare-datatypes ((ListLongMap!4347 0))(
  ( (ListLongMap!4348 (toList!2189 List!5068)) )
))
(declare-fun contains!2246 (ListLongMap!4347 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1709 (array!18407 array!18405 (_ BitVec 32) (_ BitVec 32) V!10877 V!10877 (_ BitVec 32) Int) ListLongMap!4347)

(assert (=> b!345641 (= res!191263 (not (contains!2246 (getCurrentListMap!1709 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!345642 () Bool)

(assert (=> b!345642 (= e!211857 e!211852)))

(declare-fun res!191269 () Bool)

(assert (=> b!345642 (=> (not res!191269) (not e!211852))))

(get-info :version)

(assert (=> b!345642 (= res!191269 (and ((_ is Found!3354) lt!163032) (= (select (arr!8714 _keys!1895) (index!15596 lt!163032)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18407 (_ BitVec 32)) SeekEntryResult!3354)

(assert (=> b!345642 (= lt!163032 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!345643 () Bool)

(declare-fun res!191266 () Bool)

(assert (=> b!345643 (=> (not res!191266) (not e!211857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18407 (_ BitVec 32)) Bool)

(assert (=> b!345643 (= res!191266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!345644 () Bool)

(declare-fun res!191267 () Bool)

(assert (=> b!345644 (=> (not res!191267) (not e!211857))))

(assert (=> b!345644 (= res!191267 (and (= (size!9065 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9066 _keys!1895) (size!9065 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!345645 () Bool)

(declare-fun res!191268 () Bool)

(assert (=> b!345645 (=> (not res!191268) (not e!211857))))

(declare-datatypes ((List!5069 0))(
  ( (Nil!5066) (Cons!5065 (h!5921 (_ BitVec 64)) (t!10199 List!5069)) )
))
(declare-fun arrayNoDuplicates!0 (array!18407 (_ BitVec 32) List!5069) Bool)

(assert (=> b!345645 (= res!191268 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5066))))

(declare-fun b!345646 () Bool)

(declare-fun e!211853 () Bool)

(assert (=> b!345646 (= e!211853 (and e!211856 mapRes!12585))))

(declare-fun condMapEmpty!12585 () Bool)

(declare-fun mapDefault!12585 () ValueCell!3369)

(assert (=> b!345646 (= condMapEmpty!12585 (= (arr!8713 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3369)) mapDefault!12585)))))

(declare-fun b!345640 () Bool)

(assert (=> b!345640 (= e!211854 tp_is_empty!7425)))

(declare-fun res!191265 () Bool)

(assert (=> start!34614 (=> (not res!191265) (not e!211857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34614 (= res!191265 (validMask!0 mask!2385))))

(assert (=> start!34614 e!211857))

(assert (=> start!34614 true))

(assert (=> start!34614 tp_is_empty!7425))

(assert (=> start!34614 tp!25973))

(declare-fun array_inv!6442 (array!18405) Bool)

(assert (=> start!34614 (and (array_inv!6442 _values!1525) e!211853)))

(declare-fun array_inv!6443 (array!18407) Bool)

(assert (=> start!34614 (array_inv!6443 _keys!1895)))

(assert (= (and start!34614 res!191265) b!345644))

(assert (= (and b!345644 res!191267) b!345643))

(assert (= (and b!345643 res!191266) b!345645))

(assert (= (and b!345645 res!191268) b!345636))

(assert (= (and b!345636 res!191270) b!345641))

(assert (= (and b!345641 res!191263) b!345642))

(assert (= (and b!345642 res!191269) b!345637))

(assert (= (and b!345637 res!191264) b!345639))

(assert (= (and b!345646 condMapEmpty!12585) mapIsEmpty!12585))

(assert (= (and b!345646 (not condMapEmpty!12585)) mapNonEmpty!12585))

(assert (= (and mapNonEmpty!12585 ((_ is ValueCellFull!3369) mapValue!12585)) b!345640))

(assert (= (and b!345646 ((_ is ValueCellFull!3369) mapDefault!12585)) b!345638))

(assert (= start!34614 b!345646))

(declare-fun m!346943 () Bool)

(assert (=> b!345641 m!346943))

(assert (=> b!345641 m!346943))

(declare-fun m!346945 () Bool)

(assert (=> b!345641 m!346945))

(declare-fun m!346947 () Bool)

(assert (=> b!345637 m!346947))

(declare-fun m!346949 () Bool)

(assert (=> b!345645 m!346949))

(declare-fun m!346951 () Bool)

(assert (=> b!345643 m!346951))

(declare-fun m!346953 () Bool)

(assert (=> start!34614 m!346953))

(declare-fun m!346955 () Bool)

(assert (=> start!34614 m!346955))

(declare-fun m!346957 () Bool)

(assert (=> start!34614 m!346957))

(declare-fun m!346959 () Bool)

(assert (=> b!345642 m!346959))

(declare-fun m!346961 () Bool)

(assert (=> b!345642 m!346961))

(declare-fun m!346963 () Bool)

(assert (=> b!345636 m!346963))

(declare-fun m!346965 () Bool)

(assert (=> mapNonEmpty!12585 m!346965))

(check-sat (not start!34614) tp_is_empty!7425 b_and!14705 (not b!345642) (not mapNonEmpty!12585) (not b!345643) (not b!345637) (not b!345636) (not b!345645) (not b_next!7473) (not b!345641))
(check-sat b_and!14705 (not b_next!7473))
(get-model)

(declare-fun b!345692 () Bool)

(declare-fun e!211883 () SeekEntryResult!3354)

(declare-fun e!211884 () SeekEntryResult!3354)

(assert (=> b!345692 (= e!211883 e!211884)))

(declare-fun lt!163043 () (_ BitVec 64))

(declare-fun lt!163042 () SeekEntryResult!3354)

(assert (=> b!345692 (= lt!163043 (select (arr!8714 _keys!1895) (index!15597 lt!163042)))))

(declare-fun c!52994 () Bool)

(assert (=> b!345692 (= c!52994 (= lt!163043 k0!1348))))

(declare-fun d!71049 () Bool)

(declare-fun lt!163044 () SeekEntryResult!3354)

(assert (=> d!71049 (and (or ((_ is Undefined!3354) lt!163044) (not ((_ is Found!3354) lt!163044)) (and (bvsge (index!15596 lt!163044) #b00000000000000000000000000000000) (bvslt (index!15596 lt!163044) (size!9066 _keys!1895)))) (or ((_ is Undefined!3354) lt!163044) ((_ is Found!3354) lt!163044) (not ((_ is MissingZero!3354) lt!163044)) (and (bvsge (index!15595 lt!163044) #b00000000000000000000000000000000) (bvslt (index!15595 lt!163044) (size!9066 _keys!1895)))) (or ((_ is Undefined!3354) lt!163044) ((_ is Found!3354) lt!163044) ((_ is MissingZero!3354) lt!163044) (not ((_ is MissingVacant!3354) lt!163044)) (and (bvsge (index!15598 lt!163044) #b00000000000000000000000000000000) (bvslt (index!15598 lt!163044) (size!9066 _keys!1895)))) (or ((_ is Undefined!3354) lt!163044) (ite ((_ is Found!3354) lt!163044) (= (select (arr!8714 _keys!1895) (index!15596 lt!163044)) k0!1348) (ite ((_ is MissingZero!3354) lt!163044) (= (select (arr!8714 _keys!1895) (index!15595 lt!163044)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3354) lt!163044) (= (select (arr!8714 _keys!1895) (index!15598 lt!163044)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71049 (= lt!163044 e!211883)))

(declare-fun c!52993 () Bool)

(assert (=> d!71049 (= c!52993 (and ((_ is Intermediate!3354) lt!163042) (undefined!4166 lt!163042)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18407 (_ BitVec 32)) SeekEntryResult!3354)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71049 (= lt!163042 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71049 (validMask!0 mask!2385)))

(assert (=> d!71049 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!163044)))

(declare-fun b!345693 () Bool)

(assert (=> b!345693 (= e!211883 Undefined!3354)))

(declare-fun b!345694 () Bool)

(declare-fun c!52992 () Bool)

(assert (=> b!345694 (= c!52992 (= lt!163043 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!211882 () SeekEntryResult!3354)

(assert (=> b!345694 (= e!211884 e!211882)))

(declare-fun b!345695 () Bool)

(assert (=> b!345695 (= e!211882 (MissingZero!3354 (index!15597 lt!163042)))))

(declare-fun b!345696 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18407 (_ BitVec 32)) SeekEntryResult!3354)

(assert (=> b!345696 (= e!211882 (seekKeyOrZeroReturnVacant!0 (x!34437 lt!163042) (index!15597 lt!163042) (index!15597 lt!163042) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!345697 () Bool)

(assert (=> b!345697 (= e!211884 (Found!3354 (index!15597 lt!163042)))))

(assert (= (and d!71049 c!52993) b!345693))

(assert (= (and d!71049 (not c!52993)) b!345692))

(assert (= (and b!345692 c!52994) b!345697))

(assert (= (and b!345692 (not c!52994)) b!345694))

(assert (= (and b!345694 c!52992) b!345695))

(assert (= (and b!345694 (not c!52992)) b!345696))

(declare-fun m!346991 () Bool)

(assert (=> b!345692 m!346991))

(assert (=> d!71049 m!346953))

(declare-fun m!346993 () Bool)

(assert (=> d!71049 m!346993))

(declare-fun m!346995 () Bool)

(assert (=> d!71049 m!346995))

(declare-fun m!346997 () Bool)

(assert (=> d!71049 m!346997))

(assert (=> d!71049 m!346995))

(declare-fun m!346999 () Bool)

(assert (=> d!71049 m!346999))

(declare-fun m!347001 () Bool)

(assert (=> d!71049 m!347001))

(declare-fun m!347003 () Bool)

(assert (=> b!345696 m!347003))

(assert (=> b!345642 d!71049))

(declare-fun d!71051 () Bool)

(declare-fun res!191299 () Bool)

(declare-fun e!211889 () Bool)

(assert (=> d!71051 (=> res!191299 e!211889)))

(assert (=> d!71051 (= res!191299 (= (select (arr!8714 _keys!1895) (index!15596 lt!163032)) k0!1348))))

(assert (=> d!71051 (= (arrayContainsKey!0 _keys!1895 k0!1348 (index!15596 lt!163032)) e!211889)))

(declare-fun b!345702 () Bool)

(declare-fun e!211890 () Bool)

(assert (=> b!345702 (= e!211889 e!211890)))

(declare-fun res!191300 () Bool)

(assert (=> b!345702 (=> (not res!191300) (not e!211890))))

(assert (=> b!345702 (= res!191300 (bvslt (bvadd (index!15596 lt!163032) #b00000000000000000000000000000001) (size!9066 _keys!1895)))))

(declare-fun b!345703 () Bool)

(assert (=> b!345703 (= e!211890 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd (index!15596 lt!163032) #b00000000000000000000000000000001)))))

(assert (= (and d!71051 (not res!191299)) b!345702))

(assert (= (and b!345702 res!191300) b!345703))

(assert (=> d!71051 m!346959))

(declare-fun m!347005 () Bool)

(assert (=> b!345703 m!347005))

(assert (=> b!345637 d!71051))

(declare-fun d!71053 () Bool)

(assert (=> d!71053 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34614 d!71053))

(declare-fun d!71055 () Bool)

(assert (=> d!71055 (= (array_inv!6442 _values!1525) (bvsge (size!9065 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34614 d!71055))

(declare-fun d!71057 () Bool)

(assert (=> d!71057 (= (array_inv!6443 _keys!1895) (bvsge (size!9066 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34614 d!71057))

(declare-fun b!345712 () Bool)

(declare-fun e!211899 () Bool)

(declare-fun e!211897 () Bool)

(assert (=> b!345712 (= e!211899 e!211897)))

(declare-fun c!52997 () Bool)

(assert (=> b!345712 (= c!52997 (validKeyInArray!0 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345713 () Bool)

(declare-fun call!26753 () Bool)

(assert (=> b!345713 (= e!211897 call!26753)))

(declare-fun b!345714 () Bool)

(declare-fun e!211898 () Bool)

(assert (=> b!345714 (= e!211897 e!211898)))

(declare-fun lt!163053 () (_ BitVec 64))

(assert (=> b!345714 (= lt!163053 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10736 0))(
  ( (Unit!10737) )
))
(declare-fun lt!163051 () Unit!10736)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18407 (_ BitVec 64) (_ BitVec 32)) Unit!10736)

(assert (=> b!345714 (= lt!163051 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!163053 #b00000000000000000000000000000000))))

(assert (=> b!345714 (arrayContainsKey!0 _keys!1895 lt!163053 #b00000000000000000000000000000000)))

(declare-fun lt!163052 () Unit!10736)

(assert (=> b!345714 (= lt!163052 lt!163051)))

(declare-fun res!191305 () Bool)

(assert (=> b!345714 (= res!191305 (= (seekEntryOrOpen!0 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3354 #b00000000000000000000000000000000)))))

(assert (=> b!345714 (=> (not res!191305) (not e!211898))))

(declare-fun b!345715 () Bool)

(assert (=> b!345715 (= e!211898 call!26753)))

(declare-fun d!71059 () Bool)

(declare-fun res!191306 () Bool)

(assert (=> d!71059 (=> res!191306 e!211899)))

(assert (=> d!71059 (= res!191306 (bvsge #b00000000000000000000000000000000 (size!9066 _keys!1895)))))

(assert (=> d!71059 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!211899)))

(declare-fun bm!26750 () Bool)

(assert (=> bm!26750 (= call!26753 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(assert (= (and d!71059 (not res!191306)) b!345712))

(assert (= (and b!345712 c!52997) b!345714))

(assert (= (and b!345712 (not c!52997)) b!345713))

(assert (= (and b!345714 res!191305) b!345715))

(assert (= (or b!345715 b!345713) bm!26750))

(declare-fun m!347007 () Bool)

(assert (=> b!345712 m!347007))

(assert (=> b!345712 m!347007))

(declare-fun m!347009 () Bool)

(assert (=> b!345712 m!347009))

(assert (=> b!345714 m!347007))

(declare-fun m!347011 () Bool)

(assert (=> b!345714 m!347011))

(declare-fun m!347013 () Bool)

(assert (=> b!345714 m!347013))

(assert (=> b!345714 m!347007))

(declare-fun m!347015 () Bool)

(assert (=> b!345714 m!347015))

(declare-fun m!347017 () Bool)

(assert (=> bm!26750 m!347017))

(assert (=> b!345643 d!71059))

(declare-fun b!345726 () Bool)

(declare-fun e!211908 () Bool)

(declare-fun call!26756 () Bool)

(assert (=> b!345726 (= e!211908 call!26756)))

(declare-fun b!345727 () Bool)

(assert (=> b!345727 (= e!211908 call!26756)))

(declare-fun d!71061 () Bool)

(declare-fun res!191313 () Bool)

(declare-fun e!211911 () Bool)

(assert (=> d!71061 (=> res!191313 e!211911)))

(assert (=> d!71061 (= res!191313 (bvsge #b00000000000000000000000000000000 (size!9066 _keys!1895)))))

(assert (=> d!71061 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5066) e!211911)))

(declare-fun bm!26753 () Bool)

(declare-fun c!53000 () Bool)

(assert (=> bm!26753 (= call!26756 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53000 (Cons!5065 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000) Nil!5066) Nil!5066)))))

(declare-fun b!345728 () Bool)

(declare-fun e!211910 () Bool)

(assert (=> b!345728 (= e!211910 e!211908)))

(assert (=> b!345728 (= c!53000 (validKeyInArray!0 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345729 () Bool)

(declare-fun e!211909 () Bool)

(declare-fun contains!2248 (List!5069 (_ BitVec 64)) Bool)

(assert (=> b!345729 (= e!211909 (contains!2248 Nil!5066 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345730 () Bool)

(assert (=> b!345730 (= e!211911 e!211910)))

(declare-fun res!191315 () Bool)

(assert (=> b!345730 (=> (not res!191315) (not e!211910))))

(assert (=> b!345730 (= res!191315 (not e!211909))))

(declare-fun res!191314 () Bool)

(assert (=> b!345730 (=> (not res!191314) (not e!211909))))

(assert (=> b!345730 (= res!191314 (validKeyInArray!0 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71061 (not res!191313)) b!345730))

(assert (= (and b!345730 res!191314) b!345729))

(assert (= (and b!345730 res!191315) b!345728))

(assert (= (and b!345728 c!53000) b!345727))

(assert (= (and b!345728 (not c!53000)) b!345726))

(assert (= (or b!345727 b!345726) bm!26753))

(assert (=> bm!26753 m!347007))

(declare-fun m!347019 () Bool)

(assert (=> bm!26753 m!347019))

(assert (=> b!345728 m!347007))

(assert (=> b!345728 m!347007))

(assert (=> b!345728 m!347009))

(assert (=> b!345729 m!347007))

(assert (=> b!345729 m!347007))

(declare-fun m!347021 () Bool)

(assert (=> b!345729 m!347021))

(assert (=> b!345730 m!347007))

(assert (=> b!345730 m!347007))

(assert (=> b!345730 m!347009))

(assert (=> b!345645 d!71061))

(declare-fun d!71063 () Bool)

(assert (=> d!71063 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!345636 d!71063))

(declare-fun d!71065 () Bool)

(declare-fun e!211916 () Bool)

(assert (=> d!71065 e!211916))

(declare-fun res!191318 () Bool)

(assert (=> d!71065 (=> res!191318 e!211916)))

(declare-fun lt!163062 () Bool)

(assert (=> d!71065 (= res!191318 (not lt!163062))))

(declare-fun lt!163063 () Bool)

(assert (=> d!71065 (= lt!163062 lt!163063)))

(declare-fun lt!163065 () Unit!10736)

(declare-fun e!211917 () Unit!10736)

(assert (=> d!71065 (= lt!163065 e!211917)))

(declare-fun c!53003 () Bool)

(assert (=> d!71065 (= c!53003 lt!163063)))

(declare-fun containsKey!332 (List!5068 (_ BitVec 64)) Bool)

(assert (=> d!71065 (= lt!163063 (containsKey!332 (toList!2189 (getCurrentListMap!1709 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71065 (= (contains!2246 (getCurrentListMap!1709 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!163062)))

(declare-fun b!345737 () Bool)

(declare-fun lt!163064 () Unit!10736)

(assert (=> b!345737 (= e!211917 lt!163064)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!281 (List!5068 (_ BitVec 64)) Unit!10736)

(assert (=> b!345737 (= lt!163064 (lemmaContainsKeyImpliesGetValueByKeyDefined!281 (toList!2189 (getCurrentListMap!1709 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!346 0))(
  ( (Some!345 (v!5934 V!10877)) (None!344) )
))
(declare-fun isDefined!282 (Option!346) Bool)

(declare-fun getValueByKey!340 (List!5068 (_ BitVec 64)) Option!346)

(assert (=> b!345737 (isDefined!282 (getValueByKey!340 (toList!2189 (getCurrentListMap!1709 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!345738 () Bool)

(declare-fun Unit!10738 () Unit!10736)

(assert (=> b!345738 (= e!211917 Unit!10738)))

(declare-fun b!345739 () Bool)

(assert (=> b!345739 (= e!211916 (isDefined!282 (getValueByKey!340 (toList!2189 (getCurrentListMap!1709 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71065 c!53003) b!345737))

(assert (= (and d!71065 (not c!53003)) b!345738))

(assert (= (and d!71065 (not res!191318)) b!345739))

(declare-fun m!347023 () Bool)

(assert (=> d!71065 m!347023))

(declare-fun m!347025 () Bool)

(assert (=> b!345737 m!347025))

(declare-fun m!347027 () Bool)

(assert (=> b!345737 m!347027))

(assert (=> b!345737 m!347027))

(declare-fun m!347029 () Bool)

(assert (=> b!345737 m!347029))

(assert (=> b!345739 m!347027))

(assert (=> b!345739 m!347027))

(assert (=> b!345739 m!347029))

(assert (=> b!345641 d!71065))

(declare-fun bm!26768 () Bool)

(declare-fun call!26774 () ListLongMap!4347)

(declare-fun getCurrentListMapNoExtraKeys!602 (array!18407 array!18405 (_ BitVec 32) (_ BitVec 32) V!10877 V!10877 (_ BitVec 32) Int) ListLongMap!4347)

(assert (=> bm!26768 (= call!26774 (getCurrentListMapNoExtraKeys!602 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!345782 () Bool)

(declare-fun e!211952 () Bool)

(assert (=> b!345782 (= e!211952 (validKeyInArray!0 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345783 () Bool)

(declare-fun e!211949 () Bool)

(declare-fun lt!163125 () ListLongMap!4347)

(declare-fun apply!283 (ListLongMap!4347 (_ BitVec 64)) V!10877)

(assert (=> b!345783 (= e!211949 (= (apply!283 lt!163125 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!345784 () Bool)

(declare-fun res!191339 () Bool)

(declare-fun e!211950 () Bool)

(assert (=> b!345784 (=> (not res!191339) (not e!211950))))

(declare-fun e!211951 () Bool)

(assert (=> b!345784 (= res!191339 e!211951)))

(declare-fun res!191338 () Bool)

(assert (=> b!345784 (=> res!191338 e!211951)))

(declare-fun e!211953 () Bool)

(assert (=> b!345784 (= res!191338 (not e!211953))))

(declare-fun res!191341 () Bool)

(assert (=> b!345784 (=> (not res!191341) (not e!211953))))

(assert (=> b!345784 (= res!191341 (bvslt #b00000000000000000000000000000000 (size!9066 _keys!1895)))))

(declare-fun b!345785 () Bool)

(declare-fun e!211945 () Bool)

(declare-fun call!26773 () Bool)

(assert (=> b!345785 (= e!211945 (not call!26773))))

(declare-fun b!345786 () Bool)

(declare-fun e!211944 () Bool)

(declare-fun call!26772 () Bool)

(assert (=> b!345786 (= e!211944 (not call!26772))))

(declare-fun call!26775 () ListLongMap!4347)

(declare-fun call!26771 () ListLongMap!4347)

(declare-fun bm!26769 () Bool)

(declare-fun c!53017 () Bool)

(declare-fun call!26777 () ListLongMap!4347)

(declare-fun c!53021 () Bool)

(declare-fun +!727 (ListLongMap!4347 tuple2!5420) ListLongMap!4347)

(assert (=> bm!26769 (= call!26777 (+!727 (ite c!53017 call!26774 (ite c!53021 call!26771 call!26775)) (ite (or c!53017 c!53021) (tuple2!5421 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5421 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun d!71067 () Bool)

(assert (=> d!71067 e!211950))

(declare-fun res!191340 () Bool)

(assert (=> d!71067 (=> (not res!191340) (not e!211950))))

(assert (=> d!71067 (= res!191340 (or (bvsge #b00000000000000000000000000000000 (size!9066 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9066 _keys!1895)))))))

(declare-fun lt!163120 () ListLongMap!4347)

(assert (=> d!71067 (= lt!163125 lt!163120)))

(declare-fun lt!163122 () Unit!10736)

(declare-fun e!211947 () Unit!10736)

(assert (=> d!71067 (= lt!163122 e!211947)))

(declare-fun c!53019 () Bool)

(assert (=> d!71067 (= c!53019 e!211952)))

(declare-fun res!191342 () Bool)

(assert (=> d!71067 (=> (not res!191342) (not e!211952))))

(assert (=> d!71067 (= res!191342 (bvslt #b00000000000000000000000000000000 (size!9066 _keys!1895)))))

(declare-fun e!211946 () ListLongMap!4347)

(assert (=> d!71067 (= lt!163120 e!211946)))

(assert (=> d!71067 (= c!53017 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71067 (validMask!0 mask!2385)))

(assert (=> d!71067 (= (getCurrentListMap!1709 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!163125)))

(declare-fun b!345787 () Bool)

(declare-fun Unit!10739 () Unit!10736)

(assert (=> b!345787 (= e!211947 Unit!10739)))

(declare-fun b!345788 () Bool)

(declare-fun e!211954 () ListLongMap!4347)

(assert (=> b!345788 (= e!211946 e!211954)))

(assert (=> b!345788 (= c!53021 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!345789 () Bool)

(assert (=> b!345789 (= e!211946 (+!727 call!26777 (tuple2!5421 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun e!211955 () Bool)

(declare-fun b!345790 () Bool)

(declare-fun get!4704 (ValueCell!3369 V!10877) V!10877)

(declare-fun dynLambda!621 (Int (_ BitVec 64)) V!10877)

(assert (=> b!345790 (= e!211955 (= (apply!283 lt!163125 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000)) (get!4704 (select (arr!8713 _values!1525) #b00000000000000000000000000000000) (dynLambda!621 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!345790 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9065 _values!1525)))))

(assert (=> b!345790 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9066 _keys!1895)))))

(declare-fun b!345791 () Bool)

(declare-fun res!191345 () Bool)

(assert (=> b!345791 (=> (not res!191345) (not e!211950))))

(assert (=> b!345791 (= res!191345 e!211945)))

(declare-fun c!53020 () Bool)

(assert (=> b!345791 (= c!53020 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!345792 () Bool)

(declare-fun call!26776 () ListLongMap!4347)

(assert (=> b!345792 (= e!211954 call!26776)))

(declare-fun b!345793 () Bool)

(declare-fun e!211956 () ListLongMap!4347)

(assert (=> b!345793 (= e!211956 call!26776)))

(declare-fun bm!26770 () Bool)

(assert (=> bm!26770 (= call!26776 call!26777)))

(declare-fun b!345794 () Bool)

(declare-fun lt!163130 () Unit!10736)

(assert (=> b!345794 (= e!211947 lt!163130)))

(declare-fun lt!163131 () ListLongMap!4347)

(assert (=> b!345794 (= lt!163131 (getCurrentListMapNoExtraKeys!602 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163116 () (_ BitVec 64))

(assert (=> b!345794 (= lt!163116 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163118 () (_ BitVec 64))

(assert (=> b!345794 (= lt!163118 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163124 () Unit!10736)

(declare-fun addStillContains!259 (ListLongMap!4347 (_ BitVec 64) V!10877 (_ BitVec 64)) Unit!10736)

(assert (=> b!345794 (= lt!163124 (addStillContains!259 lt!163131 lt!163116 zeroValue!1467 lt!163118))))

(assert (=> b!345794 (contains!2246 (+!727 lt!163131 (tuple2!5421 lt!163116 zeroValue!1467)) lt!163118)))

(declare-fun lt!163117 () Unit!10736)

(assert (=> b!345794 (= lt!163117 lt!163124)))

(declare-fun lt!163129 () ListLongMap!4347)

(assert (=> b!345794 (= lt!163129 (getCurrentListMapNoExtraKeys!602 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163113 () (_ BitVec 64))

(assert (=> b!345794 (= lt!163113 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163115 () (_ BitVec 64))

(assert (=> b!345794 (= lt!163115 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163110 () Unit!10736)

(declare-fun addApplyDifferent!259 (ListLongMap!4347 (_ BitVec 64) V!10877 (_ BitVec 64)) Unit!10736)

(assert (=> b!345794 (= lt!163110 (addApplyDifferent!259 lt!163129 lt!163113 minValue!1467 lt!163115))))

(assert (=> b!345794 (= (apply!283 (+!727 lt!163129 (tuple2!5421 lt!163113 minValue!1467)) lt!163115) (apply!283 lt!163129 lt!163115))))

(declare-fun lt!163114 () Unit!10736)

(assert (=> b!345794 (= lt!163114 lt!163110)))

(declare-fun lt!163121 () ListLongMap!4347)

(assert (=> b!345794 (= lt!163121 (getCurrentListMapNoExtraKeys!602 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163128 () (_ BitVec 64))

(assert (=> b!345794 (= lt!163128 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163112 () (_ BitVec 64))

(assert (=> b!345794 (= lt!163112 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163119 () Unit!10736)

(assert (=> b!345794 (= lt!163119 (addApplyDifferent!259 lt!163121 lt!163128 zeroValue!1467 lt!163112))))

(assert (=> b!345794 (= (apply!283 (+!727 lt!163121 (tuple2!5421 lt!163128 zeroValue!1467)) lt!163112) (apply!283 lt!163121 lt!163112))))

(declare-fun lt!163127 () Unit!10736)

(assert (=> b!345794 (= lt!163127 lt!163119)))

(declare-fun lt!163126 () ListLongMap!4347)

(assert (=> b!345794 (= lt!163126 (getCurrentListMapNoExtraKeys!602 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163111 () (_ BitVec 64))

(assert (=> b!345794 (= lt!163111 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163123 () (_ BitVec 64))

(assert (=> b!345794 (= lt!163123 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!345794 (= lt!163130 (addApplyDifferent!259 lt!163126 lt!163111 minValue!1467 lt!163123))))

(assert (=> b!345794 (= (apply!283 (+!727 lt!163126 (tuple2!5421 lt!163111 minValue!1467)) lt!163123) (apply!283 lt!163126 lt!163123))))

(declare-fun bm!26771 () Bool)

(assert (=> bm!26771 (= call!26772 (contains!2246 lt!163125 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!345795 () Bool)

(declare-fun c!53016 () Bool)

(assert (=> b!345795 (= c!53016 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!345795 (= e!211954 e!211956)))

(declare-fun b!345796 () Bool)

(assert (=> b!345796 (= e!211953 (validKeyInArray!0 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!345797 () Bool)

(assert (=> b!345797 (= e!211944 e!211949)))

(declare-fun res!191344 () Bool)

(assert (=> b!345797 (= res!191344 call!26772)))

(assert (=> b!345797 (=> (not res!191344) (not e!211949))))

(declare-fun bm!26772 () Bool)

(assert (=> bm!26772 (= call!26773 (contains!2246 lt!163125 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26773 () Bool)

(assert (=> bm!26773 (= call!26775 call!26771)))

(declare-fun b!345798 () Bool)

(declare-fun e!211948 () Bool)

(assert (=> b!345798 (= e!211945 e!211948)))

(declare-fun res!191343 () Bool)

(assert (=> b!345798 (= res!191343 call!26773)))

(assert (=> b!345798 (=> (not res!191343) (not e!211948))))

(declare-fun b!345799 () Bool)

(assert (=> b!345799 (= e!211948 (= (apply!283 lt!163125 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!345800 () Bool)

(assert (=> b!345800 (= e!211956 call!26775)))

(declare-fun b!345801 () Bool)

(assert (=> b!345801 (= e!211950 e!211944)))

(declare-fun c!53018 () Bool)

(assert (=> b!345801 (= c!53018 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26774 () Bool)

(assert (=> bm!26774 (= call!26771 call!26774)))

(declare-fun b!345802 () Bool)

(assert (=> b!345802 (= e!211951 e!211955)))

(declare-fun res!191337 () Bool)

(assert (=> b!345802 (=> (not res!191337) (not e!211955))))

(assert (=> b!345802 (= res!191337 (contains!2246 lt!163125 (select (arr!8714 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!345802 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9066 _keys!1895)))))

(assert (= (and d!71067 c!53017) b!345789))

(assert (= (and d!71067 (not c!53017)) b!345788))

(assert (= (and b!345788 c!53021) b!345792))

(assert (= (and b!345788 (not c!53021)) b!345795))

(assert (= (and b!345795 c!53016) b!345793))

(assert (= (and b!345795 (not c!53016)) b!345800))

(assert (= (or b!345793 b!345800) bm!26773))

(assert (= (or b!345792 bm!26773) bm!26774))

(assert (= (or b!345792 b!345793) bm!26770))

(assert (= (or b!345789 bm!26774) bm!26768))

(assert (= (or b!345789 bm!26770) bm!26769))

(assert (= (and d!71067 res!191342) b!345782))

(assert (= (and d!71067 c!53019) b!345794))

(assert (= (and d!71067 (not c!53019)) b!345787))

(assert (= (and d!71067 res!191340) b!345784))

(assert (= (and b!345784 res!191341) b!345796))

(assert (= (and b!345784 (not res!191338)) b!345802))

(assert (= (and b!345802 res!191337) b!345790))

(assert (= (and b!345784 res!191339) b!345791))

(assert (= (and b!345791 c!53020) b!345798))

(assert (= (and b!345791 (not c!53020)) b!345785))

(assert (= (and b!345798 res!191343) b!345799))

(assert (= (or b!345798 b!345785) bm!26772))

(assert (= (and b!345791 res!191345) b!345801))

(assert (= (and b!345801 c!53018) b!345797))

(assert (= (and b!345801 (not c!53018)) b!345786))

(assert (= (and b!345797 res!191344) b!345783))

(assert (= (or b!345797 b!345786) bm!26771))

(declare-fun b_lambda!8501 () Bool)

(assert (=> (not b_lambda!8501) (not b!345790)))

(declare-fun t!10202 () Bool)

(declare-fun tb!3089 () Bool)

(assert (=> (and start!34614 (= defaultEntry!1528 defaultEntry!1528) t!10202) tb!3089))

(declare-fun result!5581 () Bool)

(assert (=> tb!3089 (= result!5581 tp_is_empty!7425)))

(assert (=> b!345790 t!10202))

(declare-fun b_and!14709 () Bool)

(assert (= b_and!14705 (and (=> t!10202 result!5581) b_and!14709)))

(assert (=> b!345782 m!347007))

(assert (=> b!345782 m!347007))

(assert (=> b!345782 m!347009))

(declare-fun m!347031 () Bool)

(assert (=> b!345783 m!347031))

(declare-fun m!347033 () Bool)

(assert (=> b!345794 m!347033))

(declare-fun m!347035 () Bool)

(assert (=> b!345794 m!347035))

(declare-fun m!347037 () Bool)

(assert (=> b!345794 m!347037))

(declare-fun m!347039 () Bool)

(assert (=> b!345794 m!347039))

(declare-fun m!347041 () Bool)

(assert (=> b!345794 m!347041))

(declare-fun m!347043 () Bool)

(assert (=> b!345794 m!347043))

(declare-fun m!347045 () Bool)

(assert (=> b!345794 m!347045))

(declare-fun m!347047 () Bool)

(assert (=> b!345794 m!347047))

(declare-fun m!347049 () Bool)

(assert (=> b!345794 m!347049))

(declare-fun m!347051 () Bool)

(assert (=> b!345794 m!347051))

(assert (=> b!345794 m!347033))

(declare-fun m!347053 () Bool)

(assert (=> b!345794 m!347053))

(declare-fun m!347055 () Bool)

(assert (=> b!345794 m!347055))

(declare-fun m!347057 () Bool)

(assert (=> b!345794 m!347057))

(declare-fun m!347059 () Bool)

(assert (=> b!345794 m!347059))

(assert (=> b!345794 m!347039))

(declare-fun m!347061 () Bool)

(assert (=> b!345794 m!347061))

(assert (=> b!345794 m!347043))

(assert (=> b!345794 m!347049))

(declare-fun m!347063 () Bool)

(assert (=> b!345794 m!347063))

(assert (=> b!345794 m!347007))

(assert (=> b!345796 m!347007))

(assert (=> b!345796 m!347007))

(assert (=> b!345796 m!347009))

(declare-fun m!347065 () Bool)

(assert (=> bm!26771 m!347065))

(assert (=> bm!26768 m!347053))

(declare-fun m!347067 () Bool)

(assert (=> bm!26772 m!347067))

(declare-fun m!347069 () Bool)

(assert (=> b!345789 m!347069))

(assert (=> b!345802 m!347007))

(assert (=> b!345802 m!347007))

(declare-fun m!347071 () Bool)

(assert (=> b!345802 m!347071))

(declare-fun m!347073 () Bool)

(assert (=> b!345790 m!347073))

(declare-fun m!347075 () Bool)

(assert (=> b!345790 m!347075))

(assert (=> b!345790 m!347073))

(declare-fun m!347077 () Bool)

(assert (=> b!345790 m!347077))

(assert (=> b!345790 m!347075))

(assert (=> b!345790 m!347007))

(assert (=> b!345790 m!347007))

(declare-fun m!347079 () Bool)

(assert (=> b!345790 m!347079))

(declare-fun m!347081 () Bool)

(assert (=> bm!26769 m!347081))

(declare-fun m!347083 () Bool)

(assert (=> b!345799 m!347083))

(assert (=> d!71067 m!346953))

(assert (=> b!345641 d!71067))

(declare-fun b!345811 () Bool)

(declare-fun e!211962 () Bool)

(assert (=> b!345811 (= e!211962 tp_is_empty!7425)))

(declare-fun mapNonEmpty!12591 () Bool)

(declare-fun mapRes!12591 () Bool)

(declare-fun tp!25983 () Bool)

(assert (=> mapNonEmpty!12591 (= mapRes!12591 (and tp!25983 e!211962))))

(declare-fun mapKey!12591 () (_ BitVec 32))

(declare-fun mapRest!12591 () (Array (_ BitVec 32) ValueCell!3369))

(declare-fun mapValue!12591 () ValueCell!3369)

(assert (=> mapNonEmpty!12591 (= mapRest!12585 (store mapRest!12591 mapKey!12591 mapValue!12591))))

(declare-fun b!345812 () Bool)

(declare-fun e!211961 () Bool)

(assert (=> b!345812 (= e!211961 tp_is_empty!7425)))

(declare-fun mapIsEmpty!12591 () Bool)

(assert (=> mapIsEmpty!12591 mapRes!12591))

(declare-fun condMapEmpty!12591 () Bool)

(declare-fun mapDefault!12591 () ValueCell!3369)

(assert (=> mapNonEmpty!12585 (= condMapEmpty!12591 (= mapRest!12585 ((as const (Array (_ BitVec 32) ValueCell!3369)) mapDefault!12591)))))

(assert (=> mapNonEmpty!12585 (= tp!25974 (and e!211961 mapRes!12591))))

(assert (= (and mapNonEmpty!12585 condMapEmpty!12591) mapIsEmpty!12591))

(assert (= (and mapNonEmpty!12585 (not condMapEmpty!12591)) mapNonEmpty!12591))

(assert (= (and mapNonEmpty!12591 ((_ is ValueCellFull!3369) mapValue!12591)) b!345811))

(assert (= (and mapNonEmpty!12585 ((_ is ValueCellFull!3369) mapDefault!12591)) b!345812))

(declare-fun m!347085 () Bool)

(assert (=> mapNonEmpty!12591 m!347085))

(declare-fun b_lambda!8503 () Bool)

(assert (= b_lambda!8501 (or (and start!34614 b_free!7473) b_lambda!8503)))

(check-sat (not b!345714) (not bm!26771) b_and!14709 (not b!345712) (not b!345728) (not b!345696) (not b!345790) (not bm!26768) (not b!345789) (not bm!26753) (not mapNonEmpty!12591) (not d!71067) (not b_next!7473) tp_is_empty!7425 (not bm!26750) (not b!345703) (not b!345796) (not b!345782) (not d!71049) (not b!345783) (not b!345737) (not b!345799) (not b_lambda!8503) (not b!345739) (not b!345729) (not bm!26769) (not b!345794) (not bm!26772) (not b!345802) (not d!71065) (not b!345730))
(check-sat b_and!14709 (not b_next!7473))

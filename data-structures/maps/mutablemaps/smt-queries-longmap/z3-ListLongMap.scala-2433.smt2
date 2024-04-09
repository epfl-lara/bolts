; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38378 () Bool)

(assert start!38378)

(declare-fun b!395661 () Bool)

(declare-fun res!226969 () Bool)

(declare-fun e!239491 () Bool)

(assert (=> b!395661 (=> (not res!226969) (not e!239491))))

(declare-datatypes ((array!23557 0))(
  ( (array!23558 (arr!11228 (Array (_ BitVec 32) (_ BitVec 64))) (size!11580 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23557)

(declare-datatypes ((List!6482 0))(
  ( (Nil!6479) (Cons!6478 (h!7334 (_ BitVec 64)) (t!11664 List!6482)) )
))
(declare-fun arrayNoDuplicates!0 (array!23557 (_ BitVec 32) List!6482) Bool)

(assert (=> b!395661 (= res!226969 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6479))))

(declare-fun res!226966 () Bool)

(assert (=> start!38378 (=> (not res!226966) (not e!239491))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38378 (= res!226966 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11580 _keys!709))))))

(assert (=> start!38378 e!239491))

(assert (=> start!38378 true))

(declare-datatypes ((V!14221 0))(
  ( (V!14222 (val!4963 Int)) )
))
(declare-datatypes ((ValueCell!4575 0))(
  ( (ValueCellFull!4575 (v!7205 V!14221)) (EmptyCell!4575) )
))
(declare-datatypes ((array!23559 0))(
  ( (array!23560 (arr!11229 (Array (_ BitVec 32) ValueCell!4575)) (size!11581 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23559)

(declare-fun e!239494 () Bool)

(declare-fun array_inv!8222 (array!23559) Bool)

(assert (=> start!38378 (and (array_inv!8222 _values!549) e!239494)))

(declare-fun array_inv!8223 (array!23557) Bool)

(assert (=> start!38378 (array_inv!8223 _keys!709)))

(declare-fun b!395662 () Bool)

(declare-fun res!226963 () Bool)

(assert (=> b!395662 (=> (not res!226963) (not e!239491))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23557 (_ BitVec 32)) Bool)

(assert (=> b!395662 (= res!226963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709)) mask!1025))))

(declare-fun b!395663 () Bool)

(declare-fun res!226960 () Bool)

(assert (=> b!395663 (=> (not res!226960) (not e!239491))))

(assert (=> b!395663 (= res!226960 (or (= (select (arr!11228 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11228 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!395664 () Bool)

(declare-fun e!239495 () Bool)

(declare-fun tp_is_empty!9837 () Bool)

(assert (=> b!395664 (= e!239495 tp_is_empty!9837)))

(declare-fun b!395665 () Bool)

(declare-fun res!226962 () Bool)

(assert (=> b!395665 (=> (not res!226962) (not e!239491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395665 (= res!226962 (validMask!0 mask!1025))))

(declare-fun b!395666 () Bool)

(declare-fun res!226964 () Bool)

(assert (=> b!395666 (=> (not res!226964) (not e!239491))))

(declare-fun arrayContainsKey!0 (array!23557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395666 (= res!226964 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!395667 () Bool)

(declare-fun res!226968 () Bool)

(assert (=> b!395667 (=> (not res!226968) (not e!239491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395667 (= res!226968 (validKeyInArray!0 k0!794))))

(declare-fun b!395668 () Bool)

(declare-fun res!226965 () Bool)

(assert (=> b!395668 (=> (not res!226965) (not e!239491))))

(assert (=> b!395668 (= res!226965 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11580 _keys!709))))))

(declare-fun b!395669 () Bool)

(declare-fun e!239492 () Bool)

(declare-fun mapRes!16368 () Bool)

(assert (=> b!395669 (= e!239494 (and e!239492 mapRes!16368))))

(declare-fun condMapEmpty!16368 () Bool)

(declare-fun mapDefault!16368 () ValueCell!4575)

(assert (=> b!395669 (= condMapEmpty!16368 (= (arr!11229 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4575)) mapDefault!16368)))))

(declare-fun b!395670 () Bool)

(declare-fun res!226967 () Bool)

(assert (=> b!395670 (=> (not res!226967) (not e!239491))))

(assert (=> b!395670 (= res!226967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395671 () Bool)

(assert (=> b!395671 (= e!239492 tp_is_empty!9837)))

(declare-fun b!395672 () Bool)

(declare-fun res!226961 () Bool)

(assert (=> b!395672 (=> (not res!226961) (not e!239491))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!395672 (= res!226961 (and (= (size!11581 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11580 _keys!709) (size!11581 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!16368 () Bool)

(assert (=> mapIsEmpty!16368 mapRes!16368))

(declare-fun b!395673 () Bool)

(assert (=> b!395673 (= e!239491 (and (bvsle #b00000000000000000000000000000000 (size!11580 _keys!709)) (bvsge (size!11580 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!16368 () Bool)

(declare-fun tp!32163 () Bool)

(assert (=> mapNonEmpty!16368 (= mapRes!16368 (and tp!32163 e!239495))))

(declare-fun mapValue!16368 () ValueCell!4575)

(declare-fun mapKey!16368 () (_ BitVec 32))

(declare-fun mapRest!16368 () (Array (_ BitVec 32) ValueCell!4575))

(assert (=> mapNonEmpty!16368 (= (arr!11229 _values!549) (store mapRest!16368 mapKey!16368 mapValue!16368))))

(assert (= (and start!38378 res!226966) b!395665))

(assert (= (and b!395665 res!226962) b!395672))

(assert (= (and b!395672 res!226961) b!395670))

(assert (= (and b!395670 res!226967) b!395661))

(assert (= (and b!395661 res!226969) b!395668))

(assert (= (and b!395668 res!226965) b!395667))

(assert (= (and b!395667 res!226968) b!395663))

(assert (= (and b!395663 res!226960) b!395666))

(assert (= (and b!395666 res!226964) b!395662))

(assert (= (and b!395662 res!226963) b!395673))

(assert (= (and b!395669 condMapEmpty!16368) mapIsEmpty!16368))

(assert (= (and b!395669 (not condMapEmpty!16368)) mapNonEmpty!16368))

(get-info :version)

(assert (= (and mapNonEmpty!16368 ((_ is ValueCellFull!4575) mapValue!16368)) b!395664))

(assert (= (and b!395669 ((_ is ValueCellFull!4575) mapDefault!16368)) b!395671))

(assert (= start!38378 b!395669))

(declare-fun m!391555 () Bool)

(assert (=> b!395670 m!391555))

(declare-fun m!391557 () Bool)

(assert (=> mapNonEmpty!16368 m!391557))

(declare-fun m!391559 () Bool)

(assert (=> b!395661 m!391559))

(declare-fun m!391561 () Bool)

(assert (=> b!395666 m!391561))

(declare-fun m!391563 () Bool)

(assert (=> b!395667 m!391563))

(declare-fun m!391565 () Bool)

(assert (=> b!395665 m!391565))

(declare-fun m!391567 () Bool)

(assert (=> start!38378 m!391567))

(declare-fun m!391569 () Bool)

(assert (=> start!38378 m!391569))

(declare-fun m!391571 () Bool)

(assert (=> b!395663 m!391571))

(declare-fun m!391573 () Bool)

(assert (=> b!395662 m!391573))

(declare-fun m!391575 () Bool)

(assert (=> b!395662 m!391575))

(check-sat (not b!395662) (not mapNonEmpty!16368) (not b!395661) (not b!395667) (not b!395666) tp_is_empty!9837 (not start!38378) (not b!395670) (not b!395665))
(check-sat)
(get-model)

(declare-fun d!73229 () Bool)

(assert (=> d!73229 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!395665 d!73229))

(declare-fun b!395721 () Bool)

(declare-fun e!239517 () Bool)

(declare-fun call!27875 () Bool)

(assert (=> b!395721 (= e!239517 call!27875)))

(declare-fun b!395722 () Bool)

(declare-fun e!239518 () Bool)

(declare-fun e!239519 () Bool)

(assert (=> b!395722 (= e!239518 e!239519)))

(declare-fun c!54479 () Bool)

(assert (=> b!395722 (= c!54479 (validKeyInArray!0 (select (arr!11228 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!27872 () Bool)

(assert (=> bm!27872 (= call!27875 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!395724 () Bool)

(assert (=> b!395724 (= e!239519 call!27875)))

(declare-fun b!395723 () Bool)

(assert (=> b!395723 (= e!239519 e!239517)))

(declare-fun lt!187064 () (_ BitVec 64))

(assert (=> b!395723 (= lt!187064 (select (arr!11228 _keys!709) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!12029 0))(
  ( (Unit!12030) )
))
(declare-fun lt!187062 () Unit!12029)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23557 (_ BitVec 64) (_ BitVec 32)) Unit!12029)

(assert (=> b!395723 (= lt!187062 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!187064 #b00000000000000000000000000000000))))

(assert (=> b!395723 (arrayContainsKey!0 _keys!709 lt!187064 #b00000000000000000000000000000000)))

(declare-fun lt!187063 () Unit!12029)

(assert (=> b!395723 (= lt!187063 lt!187062)))

(declare-fun res!227004 () Bool)

(declare-datatypes ((SeekEntryResult!3512 0))(
  ( (MissingZero!3512 (index!16227 (_ BitVec 32))) (Found!3512 (index!16228 (_ BitVec 32))) (Intermediate!3512 (undefined!4324 Bool) (index!16229 (_ BitVec 32)) (x!38655 (_ BitVec 32))) (Undefined!3512) (MissingVacant!3512 (index!16230 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23557 (_ BitVec 32)) SeekEntryResult!3512)

(assert (=> b!395723 (= res!227004 (= (seekEntryOrOpen!0 (select (arr!11228 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3512 #b00000000000000000000000000000000)))))

(assert (=> b!395723 (=> (not res!227004) (not e!239517))))

(declare-fun d!73231 () Bool)

(declare-fun res!227005 () Bool)

(assert (=> d!73231 (=> res!227005 e!239518)))

(assert (=> d!73231 (= res!227005 (bvsge #b00000000000000000000000000000000 (size!11580 _keys!709)))))

(assert (=> d!73231 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!239518)))

(assert (= (and d!73231 (not res!227005)) b!395722))

(assert (= (and b!395722 c!54479) b!395723))

(assert (= (and b!395722 (not c!54479)) b!395724))

(assert (= (and b!395723 res!227004) b!395721))

(assert (= (or b!395721 b!395724) bm!27872))

(declare-fun m!391599 () Bool)

(assert (=> b!395722 m!391599))

(assert (=> b!395722 m!391599))

(declare-fun m!391601 () Bool)

(assert (=> b!395722 m!391601))

(declare-fun m!391603 () Bool)

(assert (=> bm!27872 m!391603))

(assert (=> b!395723 m!391599))

(declare-fun m!391605 () Bool)

(assert (=> b!395723 m!391605))

(declare-fun m!391607 () Bool)

(assert (=> b!395723 m!391607))

(assert (=> b!395723 m!391599))

(declare-fun m!391609 () Bool)

(assert (=> b!395723 m!391609))

(assert (=> b!395670 d!73231))

(declare-fun d!73233 () Bool)

(assert (=> d!73233 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!395667 d!73233))

(declare-fun d!73235 () Bool)

(declare-fun res!227012 () Bool)

(declare-fun e!239528 () Bool)

(assert (=> d!73235 (=> res!227012 e!239528)))

(assert (=> d!73235 (= res!227012 (bvsge #b00000000000000000000000000000000 (size!11580 _keys!709)))))

(assert (=> d!73235 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6479) e!239528)))

(declare-fun b!395735 () Bool)

(declare-fun e!239530 () Bool)

(declare-fun e!239529 () Bool)

(assert (=> b!395735 (= e!239530 e!239529)))

(declare-fun c!54482 () Bool)

(assert (=> b!395735 (= c!54482 (validKeyInArray!0 (select (arr!11228 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!395736 () Bool)

(declare-fun e!239531 () Bool)

(declare-fun contains!2482 (List!6482 (_ BitVec 64)) Bool)

(assert (=> b!395736 (= e!239531 (contains!2482 Nil!6479 (select (arr!11228 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!27875 () Bool)

(declare-fun call!27878 () Bool)

(assert (=> bm!27875 (= call!27878 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54482 (Cons!6478 (select (arr!11228 _keys!709) #b00000000000000000000000000000000) Nil!6479) Nil!6479)))))

(declare-fun b!395737 () Bool)

(assert (=> b!395737 (= e!239529 call!27878)))

(declare-fun b!395738 () Bool)

(assert (=> b!395738 (= e!239529 call!27878)))

(declare-fun b!395739 () Bool)

(assert (=> b!395739 (= e!239528 e!239530)))

(declare-fun res!227014 () Bool)

(assert (=> b!395739 (=> (not res!227014) (not e!239530))))

(assert (=> b!395739 (= res!227014 (not e!239531))))

(declare-fun res!227013 () Bool)

(assert (=> b!395739 (=> (not res!227013) (not e!239531))))

(assert (=> b!395739 (= res!227013 (validKeyInArray!0 (select (arr!11228 _keys!709) #b00000000000000000000000000000000)))))

(assert (= (and d!73235 (not res!227012)) b!395739))

(assert (= (and b!395739 res!227013) b!395736))

(assert (= (and b!395739 res!227014) b!395735))

(assert (= (and b!395735 c!54482) b!395737))

(assert (= (and b!395735 (not c!54482)) b!395738))

(assert (= (or b!395737 b!395738) bm!27875))

(assert (=> b!395735 m!391599))

(assert (=> b!395735 m!391599))

(assert (=> b!395735 m!391601))

(assert (=> b!395736 m!391599))

(assert (=> b!395736 m!391599))

(declare-fun m!391611 () Bool)

(assert (=> b!395736 m!391611))

(assert (=> bm!27875 m!391599))

(declare-fun m!391613 () Bool)

(assert (=> bm!27875 m!391613))

(assert (=> b!395739 m!391599))

(assert (=> b!395739 m!391599))

(assert (=> b!395739 m!391601))

(assert (=> b!395661 d!73235))

(declare-fun d!73237 () Bool)

(declare-fun res!227019 () Bool)

(declare-fun e!239536 () Bool)

(assert (=> d!73237 (=> res!227019 e!239536)))

(assert (=> d!73237 (= res!227019 (= (select (arr!11228 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!73237 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!239536)))

(declare-fun b!395744 () Bool)

(declare-fun e!239537 () Bool)

(assert (=> b!395744 (= e!239536 e!239537)))

(declare-fun res!227020 () Bool)

(assert (=> b!395744 (=> (not res!227020) (not e!239537))))

(assert (=> b!395744 (= res!227020 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11580 _keys!709)))))

(declare-fun b!395745 () Bool)

(assert (=> b!395745 (= e!239537 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!73237 (not res!227019)) b!395744))

(assert (= (and b!395744 res!227020) b!395745))

(assert (=> d!73237 m!391599))

(declare-fun m!391615 () Bool)

(assert (=> b!395745 m!391615))

(assert (=> b!395666 d!73237))

(declare-fun b!395746 () Bool)

(declare-fun e!239538 () Bool)

(declare-fun call!27879 () Bool)

(assert (=> b!395746 (= e!239538 call!27879)))

(declare-fun b!395747 () Bool)

(declare-fun e!239539 () Bool)

(declare-fun e!239540 () Bool)

(assert (=> b!395747 (= e!239539 e!239540)))

(declare-fun c!54483 () Bool)

(assert (=> b!395747 (= c!54483 (validKeyInArray!0 (select (arr!11228 (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709))) #b00000000000000000000000000000000)))))

(declare-fun bm!27876 () Bool)

(assert (=> bm!27876 (= call!27879 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709)) mask!1025))))

(declare-fun b!395749 () Bool)

(assert (=> b!395749 (= e!239540 call!27879)))

(declare-fun b!395748 () Bool)

(assert (=> b!395748 (= e!239540 e!239538)))

(declare-fun lt!187067 () (_ BitVec 64))

(assert (=> b!395748 (= lt!187067 (select (arr!11228 (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709))) #b00000000000000000000000000000000))))

(declare-fun lt!187065 () Unit!12029)

(assert (=> b!395748 (= lt!187065 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709)) lt!187067 #b00000000000000000000000000000000))))

(assert (=> b!395748 (arrayContainsKey!0 (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709)) lt!187067 #b00000000000000000000000000000000)))

(declare-fun lt!187066 () Unit!12029)

(assert (=> b!395748 (= lt!187066 lt!187065)))

(declare-fun res!227021 () Bool)

(assert (=> b!395748 (= res!227021 (= (seekEntryOrOpen!0 (select (arr!11228 (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709))) #b00000000000000000000000000000000) (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709)) mask!1025) (Found!3512 #b00000000000000000000000000000000)))))

(assert (=> b!395748 (=> (not res!227021) (not e!239538))))

(declare-fun d!73239 () Bool)

(declare-fun res!227022 () Bool)

(assert (=> d!73239 (=> res!227022 e!239539)))

(assert (=> d!73239 (= res!227022 (bvsge #b00000000000000000000000000000000 (size!11580 (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709)))))))

(assert (=> d!73239 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23558 (store (arr!11228 _keys!709) i!563 k0!794) (size!11580 _keys!709)) mask!1025) e!239539)))

(assert (= (and d!73239 (not res!227022)) b!395747))

(assert (= (and b!395747 c!54483) b!395748))

(assert (= (and b!395747 (not c!54483)) b!395749))

(assert (= (and b!395748 res!227021) b!395746))

(assert (= (or b!395746 b!395749) bm!27876))

(declare-fun m!391617 () Bool)

(assert (=> b!395747 m!391617))

(assert (=> b!395747 m!391617))

(declare-fun m!391619 () Bool)

(assert (=> b!395747 m!391619))

(declare-fun m!391621 () Bool)

(assert (=> bm!27876 m!391621))

(assert (=> b!395748 m!391617))

(declare-fun m!391623 () Bool)

(assert (=> b!395748 m!391623))

(declare-fun m!391625 () Bool)

(assert (=> b!395748 m!391625))

(assert (=> b!395748 m!391617))

(declare-fun m!391627 () Bool)

(assert (=> b!395748 m!391627))

(assert (=> b!395662 d!73239))

(declare-fun d!73241 () Bool)

(assert (=> d!73241 (= (array_inv!8222 _values!549) (bvsge (size!11581 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!38378 d!73241))

(declare-fun d!73243 () Bool)

(assert (=> d!73243 (= (array_inv!8223 _keys!709) (bvsge (size!11580 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!38378 d!73243))

(declare-fun mapIsEmpty!16374 () Bool)

(declare-fun mapRes!16374 () Bool)

(assert (=> mapIsEmpty!16374 mapRes!16374))

(declare-fun mapNonEmpty!16374 () Bool)

(declare-fun tp!32169 () Bool)

(declare-fun e!239546 () Bool)

(assert (=> mapNonEmpty!16374 (= mapRes!16374 (and tp!32169 e!239546))))

(declare-fun mapValue!16374 () ValueCell!4575)

(declare-fun mapRest!16374 () (Array (_ BitVec 32) ValueCell!4575))

(declare-fun mapKey!16374 () (_ BitVec 32))

(assert (=> mapNonEmpty!16374 (= mapRest!16368 (store mapRest!16374 mapKey!16374 mapValue!16374))))

(declare-fun b!395756 () Bool)

(assert (=> b!395756 (= e!239546 tp_is_empty!9837)))

(declare-fun b!395757 () Bool)

(declare-fun e!239545 () Bool)

(assert (=> b!395757 (= e!239545 tp_is_empty!9837)))

(declare-fun condMapEmpty!16374 () Bool)

(declare-fun mapDefault!16374 () ValueCell!4575)

(assert (=> mapNonEmpty!16368 (= condMapEmpty!16374 (= mapRest!16368 ((as const (Array (_ BitVec 32) ValueCell!4575)) mapDefault!16374)))))

(assert (=> mapNonEmpty!16368 (= tp!32163 (and e!239545 mapRes!16374))))

(assert (= (and mapNonEmpty!16368 condMapEmpty!16374) mapIsEmpty!16374))

(assert (= (and mapNonEmpty!16368 (not condMapEmpty!16374)) mapNonEmpty!16374))

(assert (= (and mapNonEmpty!16374 ((_ is ValueCellFull!4575) mapValue!16374)) b!395756))

(assert (= (and mapNonEmpty!16368 ((_ is ValueCellFull!4575) mapDefault!16374)) b!395757))

(declare-fun m!391629 () Bool)

(assert (=> mapNonEmpty!16374 m!391629))

(check-sat (not bm!27875) (not b!395723) (not b!395747) (not b!395739) (not b!395736) (not bm!27876) (not mapNonEmpty!16374) (not bm!27872) (not b!395748) tp_is_empty!9837 (not b!395735) (not b!395722) (not b!395745))
(check-sat)

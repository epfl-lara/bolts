; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3802 () Bool)

(assert start!3802)

(declare-fun b!26669 () Bool)

(declare-fun e!17397 () Bool)

(declare-fun tp_is_empty!1125 () Bool)

(assert (=> b!26669 (= e!17397 tp_is_empty!1125)))

(declare-fun mapIsEmpty!1204 () Bool)

(declare-fun mapRes!1204 () Bool)

(assert (=> mapIsEmpty!1204 mapRes!1204))

(declare-fun b!26670 () Bool)

(declare-fun res!15801 () Bool)

(declare-fun e!17401 () Bool)

(assert (=> b!26670 (=> (not res!15801) (not e!17401))))

(declare-datatypes ((V!1325 0))(
  ( (V!1326 (val!589 Int)) )
))
(declare-datatypes ((ValueCell!363 0))(
  ( (ValueCellFull!363 (v!1675 V!1325)) (EmptyCell!363) )
))
(declare-datatypes ((array!1479 0))(
  ( (array!1480 (arr!697 (Array (_ BitVec 32) ValueCell!363)) (size!798 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1479)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1481 0))(
  ( (array!1482 (arr!698 (Array (_ BitVec 32) (_ BitVec 64))) (size!799 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1481)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!26670 (= res!15801 (and (= (size!798 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!799 _keys!1833) (size!798 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26671 () Bool)

(declare-fun res!15804 () Bool)

(assert (=> b!26671 (=> (not res!15804) (not e!17401))))

(declare-datatypes ((List!596 0))(
  ( (Nil!593) (Cons!592 (h!1159 (_ BitVec 64)) (t!3285 List!596)) )
))
(declare-fun arrayNoDuplicates!0 (array!1481 (_ BitVec 32) List!596) Bool)

(assert (=> b!26671 (= res!15804 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!593))))

(declare-fun b!26672 () Bool)

(declare-fun e!17398 () Bool)

(assert (=> b!26672 (= e!17398 tp_is_empty!1125)))

(declare-fun res!15803 () Bool)

(assert (=> start!3802 (=> (not res!15803) (not e!17401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3802 (= res!15803 (validMask!0 mask!2294))))

(assert (=> start!3802 e!17401))

(assert (=> start!3802 true))

(declare-fun e!17399 () Bool)

(declare-fun array_inv!481 (array!1479) Bool)

(assert (=> start!3802 (and (array_inv!481 _values!1501) e!17399)))

(declare-fun array_inv!482 (array!1481) Bool)

(assert (=> start!3802 (array_inv!482 _keys!1833)))

(declare-fun b!26673 () Bool)

(declare-fun res!15805 () Bool)

(assert (=> b!26673 (=> (not res!15805) (not e!17401))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!26673 (= res!15805 (validKeyInArray!0 k0!1304))))

(declare-fun b!26674 () Bool)

(assert (=> b!26674 (= e!17399 (and e!17397 mapRes!1204))))

(declare-fun condMapEmpty!1204 () Bool)

(declare-fun mapDefault!1204 () ValueCell!363)

(assert (=> b!26674 (= condMapEmpty!1204 (= (arr!697 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!363)) mapDefault!1204)))))

(declare-fun b!26675 () Bool)

(assert (=> b!26675 (= e!17401 (bvsgt #b00000000000000000000000000000000 (size!799 _keys!1833)))))

(declare-fun b!26676 () Bool)

(declare-fun res!15802 () Bool)

(assert (=> b!26676 (=> (not res!15802) (not e!17401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1481 (_ BitVec 32)) Bool)

(assert (=> b!26676 (= res!15802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1204 () Bool)

(declare-fun tp!3724 () Bool)

(assert (=> mapNonEmpty!1204 (= mapRes!1204 (and tp!3724 e!17398))))

(declare-fun mapKey!1204 () (_ BitVec 32))

(declare-fun mapRest!1204 () (Array (_ BitVec 32) ValueCell!363))

(declare-fun mapValue!1204 () ValueCell!363)

(assert (=> mapNonEmpty!1204 (= (arr!697 _values!1501) (store mapRest!1204 mapKey!1204 mapValue!1204))))

(assert (= (and start!3802 res!15803) b!26670))

(assert (= (and b!26670 res!15801) b!26676))

(assert (= (and b!26676 res!15802) b!26671))

(assert (= (and b!26671 res!15804) b!26673))

(assert (= (and b!26673 res!15805) b!26675))

(assert (= (and b!26674 condMapEmpty!1204) mapIsEmpty!1204))

(assert (= (and b!26674 (not condMapEmpty!1204)) mapNonEmpty!1204))

(get-info :version)

(assert (= (and mapNonEmpty!1204 ((_ is ValueCellFull!363) mapValue!1204)) b!26672))

(assert (= (and b!26674 ((_ is ValueCellFull!363) mapDefault!1204)) b!26669))

(assert (= start!3802 b!26674))

(declare-fun m!21375 () Bool)

(assert (=> b!26676 m!21375))

(declare-fun m!21377 () Bool)

(assert (=> start!3802 m!21377))

(declare-fun m!21379 () Bool)

(assert (=> start!3802 m!21379))

(declare-fun m!21381 () Bool)

(assert (=> start!3802 m!21381))

(declare-fun m!21383 () Bool)

(assert (=> b!26671 m!21383))

(declare-fun m!21385 () Bool)

(assert (=> b!26673 m!21385))

(declare-fun m!21387 () Bool)

(assert (=> mapNonEmpty!1204 m!21387))

(check-sat (not start!3802) (not mapNonEmpty!1204) (not b!26676) tp_is_empty!1125 (not b!26673) (not b!26671))
(check-sat)
(get-model)

(declare-fun d!4901 () Bool)

(declare-fun res!15826 () Bool)

(declare-fun e!17425 () Bool)

(assert (=> d!4901 (=> res!15826 e!17425)))

(assert (=> d!4901 (= res!15826 (bvsge #b00000000000000000000000000000000 (size!799 _keys!1833)))))

(assert (=> d!4901 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!17425)))

(declare-fun b!26709 () Bool)

(declare-fun e!17423 () Bool)

(assert (=> b!26709 (= e!17425 e!17423)))

(declare-fun c!3667 () Bool)

(assert (=> b!26709 (= c!3667 (validKeyInArray!0 (select (arr!698 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2501 () Bool)

(declare-fun call!2504 () Bool)

(assert (=> bm!2501 (= call!2504 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!26710 () Bool)

(declare-fun e!17424 () Bool)

(assert (=> b!26710 (= e!17424 call!2504)))

(declare-fun b!26711 () Bool)

(assert (=> b!26711 (= e!17423 call!2504)))

(declare-fun b!26712 () Bool)

(assert (=> b!26712 (= e!17423 e!17424)))

(declare-fun lt!10408 () (_ BitVec 64))

(assert (=> b!26712 (= lt!10408 (select (arr!698 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!629 0))(
  ( (Unit!630) )
))
(declare-fun lt!10410 () Unit!629)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1481 (_ BitVec 64) (_ BitVec 32)) Unit!629)

(assert (=> b!26712 (= lt!10410 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!10408 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!26712 (arrayContainsKey!0 _keys!1833 lt!10408 #b00000000000000000000000000000000)))

(declare-fun lt!10409 () Unit!629)

(assert (=> b!26712 (= lt!10409 lt!10410)))

(declare-fun res!15825 () Bool)

(declare-datatypes ((SeekEntryResult!66 0))(
  ( (MissingZero!66 (index!2386 (_ BitVec 32))) (Found!66 (index!2387 (_ BitVec 32))) (Intermediate!66 (undefined!878 Bool) (index!2388 (_ BitVec 32)) (x!6154 (_ BitVec 32))) (Undefined!66) (MissingVacant!66 (index!2389 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1481 (_ BitVec 32)) SeekEntryResult!66)

(assert (=> b!26712 (= res!15825 (= (seekEntryOrOpen!0 (select (arr!698 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!66 #b00000000000000000000000000000000)))))

(assert (=> b!26712 (=> (not res!15825) (not e!17424))))

(assert (= (and d!4901 (not res!15826)) b!26709))

(assert (= (and b!26709 c!3667) b!26712))

(assert (= (and b!26709 (not c!3667)) b!26711))

(assert (= (and b!26712 res!15825) b!26710))

(assert (= (or b!26710 b!26711) bm!2501))

(declare-fun m!21403 () Bool)

(assert (=> b!26709 m!21403))

(assert (=> b!26709 m!21403))

(declare-fun m!21405 () Bool)

(assert (=> b!26709 m!21405))

(declare-fun m!21407 () Bool)

(assert (=> bm!2501 m!21407))

(assert (=> b!26712 m!21403))

(declare-fun m!21409 () Bool)

(assert (=> b!26712 m!21409))

(declare-fun m!21411 () Bool)

(assert (=> b!26712 m!21411))

(assert (=> b!26712 m!21403))

(declare-fun m!21413 () Bool)

(assert (=> b!26712 m!21413))

(assert (=> b!26676 d!4901))

(declare-fun b!26723 () Bool)

(declare-fun e!17435 () Bool)

(declare-fun e!17436 () Bool)

(assert (=> b!26723 (= e!17435 e!17436)))

(declare-fun res!15835 () Bool)

(assert (=> b!26723 (=> (not res!15835) (not e!17436))))

(declare-fun e!17437 () Bool)

(assert (=> b!26723 (= res!15835 (not e!17437))))

(declare-fun res!15833 () Bool)

(assert (=> b!26723 (=> (not res!15833) (not e!17437))))

(assert (=> b!26723 (= res!15833 (validKeyInArray!0 (select (arr!698 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!26724 () Bool)

(declare-fun contains!229 (List!596 (_ BitVec 64)) Bool)

(assert (=> b!26724 (= e!17437 (contains!229 Nil!593 (select (arr!698 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2504 () Bool)

(declare-fun call!2507 () Bool)

(declare-fun c!3670 () Bool)

(assert (=> bm!2504 (= call!2507 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3670 (Cons!592 (select (arr!698 _keys!1833) #b00000000000000000000000000000000) Nil!593) Nil!593)))))

(declare-fun b!26725 () Bool)

(declare-fun e!17434 () Bool)

(assert (=> b!26725 (= e!17434 call!2507)))

(declare-fun b!26727 () Bool)

(assert (=> b!26727 (= e!17434 call!2507)))

(declare-fun b!26726 () Bool)

(assert (=> b!26726 (= e!17436 e!17434)))

(assert (=> b!26726 (= c!3670 (validKeyInArray!0 (select (arr!698 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun d!4903 () Bool)

(declare-fun res!15834 () Bool)

(assert (=> d!4903 (=> res!15834 e!17435)))

(assert (=> d!4903 (= res!15834 (bvsge #b00000000000000000000000000000000 (size!799 _keys!1833)))))

(assert (=> d!4903 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!593) e!17435)))

(assert (= (and d!4903 (not res!15834)) b!26723))

(assert (= (and b!26723 res!15833) b!26724))

(assert (= (and b!26723 res!15835) b!26726))

(assert (= (and b!26726 c!3670) b!26727))

(assert (= (and b!26726 (not c!3670)) b!26725))

(assert (= (or b!26727 b!26725) bm!2504))

(assert (=> b!26723 m!21403))

(assert (=> b!26723 m!21403))

(assert (=> b!26723 m!21405))

(assert (=> b!26724 m!21403))

(assert (=> b!26724 m!21403))

(declare-fun m!21415 () Bool)

(assert (=> b!26724 m!21415))

(assert (=> bm!2504 m!21403))

(declare-fun m!21417 () Bool)

(assert (=> bm!2504 m!21417))

(assert (=> b!26726 m!21403))

(assert (=> b!26726 m!21403))

(assert (=> b!26726 m!21405))

(assert (=> b!26671 d!4903))

(declare-fun d!4905 () Bool)

(assert (=> d!4905 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!3802 d!4905))

(declare-fun d!4907 () Bool)

(assert (=> d!4907 (= (array_inv!481 _values!1501) (bvsge (size!798 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!3802 d!4907))

(declare-fun d!4909 () Bool)

(assert (=> d!4909 (= (array_inv!482 _keys!1833) (bvsge (size!799 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!3802 d!4909))

(declare-fun d!4911 () Bool)

(assert (=> d!4911 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!26673 d!4911))

(declare-fun condMapEmpty!1210 () Bool)

(declare-fun mapDefault!1210 () ValueCell!363)

(assert (=> mapNonEmpty!1204 (= condMapEmpty!1210 (= mapRest!1204 ((as const (Array (_ BitVec 32) ValueCell!363)) mapDefault!1210)))))

(declare-fun e!17442 () Bool)

(declare-fun mapRes!1210 () Bool)

(assert (=> mapNonEmpty!1204 (= tp!3724 (and e!17442 mapRes!1210))))

(declare-fun b!26734 () Bool)

(declare-fun e!17443 () Bool)

(assert (=> b!26734 (= e!17443 tp_is_empty!1125)))

(declare-fun b!26735 () Bool)

(assert (=> b!26735 (= e!17442 tp_is_empty!1125)))

(declare-fun mapIsEmpty!1210 () Bool)

(assert (=> mapIsEmpty!1210 mapRes!1210))

(declare-fun mapNonEmpty!1210 () Bool)

(declare-fun tp!3730 () Bool)

(assert (=> mapNonEmpty!1210 (= mapRes!1210 (and tp!3730 e!17443))))

(declare-fun mapKey!1210 () (_ BitVec 32))

(declare-fun mapRest!1210 () (Array (_ BitVec 32) ValueCell!363))

(declare-fun mapValue!1210 () ValueCell!363)

(assert (=> mapNonEmpty!1210 (= mapRest!1204 (store mapRest!1210 mapKey!1210 mapValue!1210))))

(assert (= (and mapNonEmpty!1204 condMapEmpty!1210) mapIsEmpty!1210))

(assert (= (and mapNonEmpty!1204 (not condMapEmpty!1210)) mapNonEmpty!1210))

(assert (= (and mapNonEmpty!1210 ((_ is ValueCellFull!363) mapValue!1210)) b!26734))

(assert (= (and mapNonEmpty!1204 ((_ is ValueCellFull!363) mapDefault!1210)) b!26735))

(declare-fun m!21419 () Bool)

(assert (=> mapNonEmpty!1210 m!21419))

(check-sat (not bm!2501) (not b!26712) tp_is_empty!1125 (not b!26709) (not bm!2504) (not mapNonEmpty!1210) (not b!26724) (not b!26723) (not b!26726))
(check-sat)

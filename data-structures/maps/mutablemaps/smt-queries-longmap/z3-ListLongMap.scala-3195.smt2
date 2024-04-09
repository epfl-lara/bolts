; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44808 () Bool)

(assert start!44808)

(declare-fun b!491702 () Bool)

(declare-fun e!288868 () Bool)

(declare-fun e!288864 () Bool)

(assert (=> b!491702 (= e!288868 e!288864)))

(declare-fun res!294795 () Bool)

(assert (=> b!491702 (=> (not res!294795) (not e!288864))))

(declare-datatypes ((SeekEntryResult!3772 0))(
  ( (MissingZero!3772 (index!17267 (_ BitVec 32))) (Found!3772 (index!17268 (_ BitVec 32))) (Intermediate!3772 (undefined!4584 Bool) (index!17269 (_ BitVec 32)) (x!46377 (_ BitVec 32))) (Undefined!3772) (MissingVacant!3772 (index!17270 (_ BitVec 32))) )
))
(declare-fun lt!222349 () SeekEntryResult!3772)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491702 (= res!294795 (or (= lt!222349 (MissingZero!3772 i!1204)) (= lt!222349 (MissingVacant!3772 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31827 0))(
  ( (array!31828 (arr!15298 (Array (_ BitVec 32) (_ BitVec 64))) (size!15662 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31827)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31827 (_ BitVec 32)) SeekEntryResult!3772)

(assert (=> b!491702 (= lt!222349 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!294794 () Bool)

(assert (=> start!44808 (=> (not res!294794) (not e!288868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44808 (= res!294794 (validMask!0 mask!3524))))

(assert (=> start!44808 e!288868))

(assert (=> start!44808 true))

(declare-fun array_inv!11072 (array!31827) Bool)

(assert (=> start!44808 (array_inv!11072 a!3235)))

(declare-fun b!491703 () Bool)

(declare-fun e!288865 () Bool)

(assert (=> b!491703 (= e!288864 (not e!288865))))

(declare-fun res!294793 () Bool)

(assert (=> b!491703 (=> res!294793 e!288865)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31827 (_ BitVec 32)) SeekEntryResult!3772)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491703 (= res!294793 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15298 a!3235) j!176) mask!3524) (select (arr!15298 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) mask!3524) (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235)) mask!3524)))))

(declare-fun e!288867 () Bool)

(assert (=> b!491703 e!288867))

(declare-fun res!294797 () Bool)

(assert (=> b!491703 (=> (not res!294797) (not e!288867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31827 (_ BitVec 32)) Bool)

(assert (=> b!491703 (= res!294797 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14482 0))(
  ( (Unit!14483) )
))
(declare-fun lt!222350 () Unit!14482)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14482)

(assert (=> b!491703 (= lt!222350 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491704 () Bool)

(declare-fun res!294788 () Bool)

(assert (=> b!491704 (=> (not res!294788) (not e!288868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491704 (= res!294788 (validKeyInArray!0 k0!2280))))

(declare-fun b!491705 () Bool)

(declare-fun res!294790 () Bool)

(assert (=> b!491705 (=> (not res!294790) (not e!288868))))

(assert (=> b!491705 (= res!294790 (validKeyInArray!0 (select (arr!15298 a!3235) j!176)))))

(declare-fun b!491706 () Bool)

(assert (=> b!491706 (= e!288865 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(declare-fun b!491707 () Bool)

(declare-fun res!294791 () Bool)

(assert (=> b!491707 (=> (not res!294791) (not e!288868))))

(assert (=> b!491707 (= res!294791 (and (= (size!15662 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15662 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15662 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491708 () Bool)

(declare-fun res!294796 () Bool)

(assert (=> b!491708 (=> (not res!294796) (not e!288868))))

(declare-fun arrayContainsKey!0 (array!31827 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491708 (= res!294796 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491709 () Bool)

(declare-fun res!294792 () Bool)

(assert (=> b!491709 (=> (not res!294792) (not e!288864))))

(declare-datatypes ((List!9509 0))(
  ( (Nil!9506) (Cons!9505 (h!10367 (_ BitVec 64)) (t!15745 List!9509)) )
))
(declare-fun arrayNoDuplicates!0 (array!31827 (_ BitVec 32) List!9509) Bool)

(assert (=> b!491709 (= res!294792 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9506))))

(declare-fun b!491710 () Bool)

(declare-fun res!294789 () Bool)

(assert (=> b!491710 (=> (not res!294789) (not e!288864))))

(assert (=> b!491710 (= res!294789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491711 () Bool)

(assert (=> b!491711 (= e!288867 (= (seekEntryOrOpen!0 (select (arr!15298 a!3235) j!176) a!3235 mask!3524) (Found!3772 j!176)))))

(assert (= (and start!44808 res!294794) b!491707))

(assert (= (and b!491707 res!294791) b!491705))

(assert (= (and b!491705 res!294790) b!491704))

(assert (= (and b!491704 res!294788) b!491708))

(assert (= (and b!491708 res!294796) b!491702))

(assert (= (and b!491702 res!294795) b!491710))

(assert (= (and b!491710 res!294789) b!491709))

(assert (= (and b!491709 res!294792) b!491703))

(assert (= (and b!491703 res!294797) b!491711))

(assert (= (and b!491703 (not res!294793)) b!491706))

(declare-fun m!472495 () Bool)

(assert (=> b!491704 m!472495))

(declare-fun m!472497 () Bool)

(assert (=> b!491705 m!472497))

(assert (=> b!491705 m!472497))

(declare-fun m!472499 () Bool)

(assert (=> b!491705 m!472499))

(declare-fun m!472501 () Bool)

(assert (=> b!491702 m!472501))

(assert (=> b!491711 m!472497))

(assert (=> b!491711 m!472497))

(declare-fun m!472503 () Bool)

(assert (=> b!491711 m!472503))

(declare-fun m!472505 () Bool)

(assert (=> start!44808 m!472505))

(declare-fun m!472507 () Bool)

(assert (=> start!44808 m!472507))

(declare-fun m!472509 () Bool)

(assert (=> b!491709 m!472509))

(declare-fun m!472511 () Bool)

(assert (=> b!491710 m!472511))

(declare-fun m!472513 () Bool)

(assert (=> b!491708 m!472513))

(declare-fun m!472515 () Bool)

(assert (=> b!491703 m!472515))

(declare-fun m!472517 () Bool)

(assert (=> b!491703 m!472517))

(declare-fun m!472519 () Bool)

(assert (=> b!491703 m!472519))

(declare-fun m!472521 () Bool)

(assert (=> b!491703 m!472521))

(assert (=> b!491703 m!472497))

(declare-fun m!472523 () Bool)

(assert (=> b!491703 m!472523))

(assert (=> b!491703 m!472497))

(assert (=> b!491703 m!472521))

(declare-fun m!472525 () Bool)

(assert (=> b!491703 m!472525))

(assert (=> b!491703 m!472519))

(declare-fun m!472527 () Bool)

(assert (=> b!491703 m!472527))

(assert (=> b!491703 m!472497))

(declare-fun m!472529 () Bool)

(assert (=> b!491703 m!472529))

(assert (=> b!491703 m!472519))

(assert (=> b!491703 m!472525))

(check-sat (not b!491702) (not b!491711) (not b!491708) (not start!44808) (not b!491709) (not b!491705) (not b!491710) (not b!491704) (not b!491703))
(check-sat)
(get-model)

(declare-fun d!77877 () Bool)

(assert (=> d!77877 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!491704 d!77877))

(declare-fun b!491750 () Bool)

(declare-fun e!288891 () Bool)

(declare-fun call!31367 () Bool)

(assert (=> b!491750 (= e!288891 call!31367)))

(declare-fun b!491751 () Bool)

(declare-fun e!288892 () Bool)

(declare-fun e!288890 () Bool)

(assert (=> b!491751 (= e!288892 e!288890)))

(declare-fun c!58730 () Bool)

(assert (=> b!491751 (= c!58730 (validKeyInArray!0 (select (arr!15298 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77879 () Bool)

(declare-fun res!294832 () Bool)

(assert (=> d!77879 (=> res!294832 e!288892)))

(assert (=> d!77879 (= res!294832 (bvsge #b00000000000000000000000000000000 (size!15662 a!3235)))))

(assert (=> d!77879 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!288892)))

(declare-fun bm!31364 () Bool)

(assert (=> bm!31364 (= call!31367 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!491752 () Bool)

(assert (=> b!491752 (= e!288890 call!31367)))

(declare-fun b!491753 () Bool)

(assert (=> b!491753 (= e!288890 e!288891)))

(declare-fun lt!222364 () (_ BitVec 64))

(assert (=> b!491753 (= lt!222364 (select (arr!15298 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!222365 () Unit!14482)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31827 (_ BitVec 64) (_ BitVec 32)) Unit!14482)

(assert (=> b!491753 (= lt!222365 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222364 #b00000000000000000000000000000000))))

(assert (=> b!491753 (arrayContainsKey!0 a!3235 lt!222364 #b00000000000000000000000000000000)))

(declare-fun lt!222363 () Unit!14482)

(assert (=> b!491753 (= lt!222363 lt!222365)))

(declare-fun res!294833 () Bool)

(assert (=> b!491753 (= res!294833 (= (seekEntryOrOpen!0 (select (arr!15298 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3772 #b00000000000000000000000000000000)))))

(assert (=> b!491753 (=> (not res!294833) (not e!288891))))

(assert (= (and d!77879 (not res!294832)) b!491751))

(assert (= (and b!491751 c!58730) b!491753))

(assert (= (and b!491751 (not c!58730)) b!491752))

(assert (= (and b!491753 res!294833) b!491750))

(assert (= (or b!491750 b!491752) bm!31364))

(declare-fun m!472567 () Bool)

(assert (=> b!491751 m!472567))

(assert (=> b!491751 m!472567))

(declare-fun m!472569 () Bool)

(assert (=> b!491751 m!472569))

(declare-fun m!472571 () Bool)

(assert (=> bm!31364 m!472571))

(assert (=> b!491753 m!472567))

(declare-fun m!472573 () Bool)

(assert (=> b!491753 m!472573))

(declare-fun m!472575 () Bool)

(assert (=> b!491753 m!472575))

(assert (=> b!491753 m!472567))

(declare-fun m!472577 () Bool)

(assert (=> b!491753 m!472577))

(assert (=> b!491710 d!77879))

(declare-fun d!77881 () Bool)

(assert (=> d!77881 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44808 d!77881))

(declare-fun d!77883 () Bool)

(assert (=> d!77883 (= (array_inv!11072 a!3235) (bvsge (size!15662 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44808 d!77883))

(declare-fun d!77885 () Bool)

(assert (=> d!77885 (= (validKeyInArray!0 (select (arr!15298 a!3235) j!176)) (and (not (= (select (arr!15298 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15298 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!491705 d!77885))

(declare-fun b!491784 () Bool)

(declare-fun e!288910 () SeekEntryResult!3772)

(declare-fun e!288909 () SeekEntryResult!3772)

(assert (=> b!491784 (= e!288910 e!288909)))

(declare-fun lt!222382 () (_ BitVec 64))

(declare-fun lt!222381 () SeekEntryResult!3772)

(assert (=> b!491784 (= lt!222382 (select (arr!15298 a!3235) (index!17269 lt!222381)))))

(declare-fun c!58748 () Bool)

(assert (=> b!491784 (= c!58748 (= lt!222382 (select (arr!15298 a!3235) j!176)))))

(declare-fun b!491785 () Bool)

(declare-fun e!288908 () SeekEntryResult!3772)

(assert (=> b!491785 (= e!288908 (MissingZero!3772 (index!17269 lt!222381)))))

(declare-fun b!491787 () Bool)

(assert (=> b!491787 (= e!288909 (Found!3772 (index!17269 lt!222381)))))

(declare-fun b!491788 () Bool)

(declare-fun c!58746 () Bool)

(assert (=> b!491788 (= c!58746 (= lt!222382 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!491788 (= e!288909 e!288908)))

(declare-fun b!491789 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31827 (_ BitVec 32)) SeekEntryResult!3772)

(assert (=> b!491789 (= e!288908 (seekKeyOrZeroReturnVacant!0 (x!46377 lt!222381) (index!17269 lt!222381) (index!17269 lt!222381) (select (arr!15298 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!77887 () Bool)

(declare-fun lt!222383 () SeekEntryResult!3772)

(get-info :version)

(assert (=> d!77887 (and (or ((_ is Undefined!3772) lt!222383) (not ((_ is Found!3772) lt!222383)) (and (bvsge (index!17268 lt!222383) #b00000000000000000000000000000000) (bvslt (index!17268 lt!222383) (size!15662 a!3235)))) (or ((_ is Undefined!3772) lt!222383) ((_ is Found!3772) lt!222383) (not ((_ is MissingZero!3772) lt!222383)) (and (bvsge (index!17267 lt!222383) #b00000000000000000000000000000000) (bvslt (index!17267 lt!222383) (size!15662 a!3235)))) (or ((_ is Undefined!3772) lt!222383) ((_ is Found!3772) lt!222383) ((_ is MissingZero!3772) lt!222383) (not ((_ is MissingVacant!3772) lt!222383)) (and (bvsge (index!17270 lt!222383) #b00000000000000000000000000000000) (bvslt (index!17270 lt!222383) (size!15662 a!3235)))) (or ((_ is Undefined!3772) lt!222383) (ite ((_ is Found!3772) lt!222383) (= (select (arr!15298 a!3235) (index!17268 lt!222383)) (select (arr!15298 a!3235) j!176)) (ite ((_ is MissingZero!3772) lt!222383) (= (select (arr!15298 a!3235) (index!17267 lt!222383)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3772) lt!222383) (= (select (arr!15298 a!3235) (index!17270 lt!222383)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77887 (= lt!222383 e!288910)))

(declare-fun c!58747 () Bool)

(assert (=> d!77887 (= c!58747 (and ((_ is Intermediate!3772) lt!222381) (undefined!4584 lt!222381)))))

(assert (=> d!77887 (= lt!222381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15298 a!3235) j!176) mask!3524) (select (arr!15298 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77887 (validMask!0 mask!3524)))

(assert (=> d!77887 (= (seekEntryOrOpen!0 (select (arr!15298 a!3235) j!176) a!3235 mask!3524) lt!222383)))

(declare-fun b!491786 () Bool)

(assert (=> b!491786 (= e!288910 Undefined!3772)))

(assert (= (and d!77887 c!58747) b!491786))

(assert (= (and d!77887 (not c!58747)) b!491784))

(assert (= (and b!491784 c!58748) b!491787))

(assert (= (and b!491784 (not c!58748)) b!491788))

(assert (= (and b!491788 c!58746) b!491785))

(assert (= (and b!491788 (not c!58746)) b!491789))

(declare-fun m!472593 () Bool)

(assert (=> b!491784 m!472593))

(assert (=> b!491789 m!472497))

(declare-fun m!472595 () Bool)

(assert (=> b!491789 m!472595))

(assert (=> d!77887 m!472505))

(declare-fun m!472597 () Bool)

(assert (=> d!77887 m!472597))

(assert (=> d!77887 m!472497))

(assert (=> d!77887 m!472521))

(declare-fun m!472599 () Bool)

(assert (=> d!77887 m!472599))

(declare-fun m!472601 () Bool)

(assert (=> d!77887 m!472601))

(assert (=> d!77887 m!472521))

(assert (=> d!77887 m!472497))

(assert (=> d!77887 m!472523))

(assert (=> b!491711 d!77887))

(declare-fun b!491790 () Bool)

(declare-fun e!288913 () SeekEntryResult!3772)

(declare-fun e!288912 () SeekEntryResult!3772)

(assert (=> b!491790 (= e!288913 e!288912)))

(declare-fun lt!222385 () (_ BitVec 64))

(declare-fun lt!222384 () SeekEntryResult!3772)

(assert (=> b!491790 (= lt!222385 (select (arr!15298 a!3235) (index!17269 lt!222384)))))

(declare-fun c!58751 () Bool)

(assert (=> b!491790 (= c!58751 (= lt!222385 k0!2280))))

(declare-fun b!491791 () Bool)

(declare-fun e!288911 () SeekEntryResult!3772)

(assert (=> b!491791 (= e!288911 (MissingZero!3772 (index!17269 lt!222384)))))

(declare-fun b!491793 () Bool)

(assert (=> b!491793 (= e!288912 (Found!3772 (index!17269 lt!222384)))))

(declare-fun b!491794 () Bool)

(declare-fun c!58749 () Bool)

(assert (=> b!491794 (= c!58749 (= lt!222385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!491794 (= e!288912 e!288911)))

(declare-fun b!491795 () Bool)

(assert (=> b!491795 (= e!288911 (seekKeyOrZeroReturnVacant!0 (x!46377 lt!222384) (index!17269 lt!222384) (index!17269 lt!222384) k0!2280 a!3235 mask!3524))))

(declare-fun d!77895 () Bool)

(declare-fun lt!222386 () SeekEntryResult!3772)

(assert (=> d!77895 (and (or ((_ is Undefined!3772) lt!222386) (not ((_ is Found!3772) lt!222386)) (and (bvsge (index!17268 lt!222386) #b00000000000000000000000000000000) (bvslt (index!17268 lt!222386) (size!15662 a!3235)))) (or ((_ is Undefined!3772) lt!222386) ((_ is Found!3772) lt!222386) (not ((_ is MissingZero!3772) lt!222386)) (and (bvsge (index!17267 lt!222386) #b00000000000000000000000000000000) (bvslt (index!17267 lt!222386) (size!15662 a!3235)))) (or ((_ is Undefined!3772) lt!222386) ((_ is Found!3772) lt!222386) ((_ is MissingZero!3772) lt!222386) (not ((_ is MissingVacant!3772) lt!222386)) (and (bvsge (index!17270 lt!222386) #b00000000000000000000000000000000) (bvslt (index!17270 lt!222386) (size!15662 a!3235)))) (or ((_ is Undefined!3772) lt!222386) (ite ((_ is Found!3772) lt!222386) (= (select (arr!15298 a!3235) (index!17268 lt!222386)) k0!2280) (ite ((_ is MissingZero!3772) lt!222386) (= (select (arr!15298 a!3235) (index!17267 lt!222386)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3772) lt!222386) (= (select (arr!15298 a!3235) (index!17270 lt!222386)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77895 (= lt!222386 e!288913)))

(declare-fun c!58750 () Bool)

(assert (=> d!77895 (= c!58750 (and ((_ is Intermediate!3772) lt!222384) (undefined!4584 lt!222384)))))

(assert (=> d!77895 (= lt!222384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!77895 (validMask!0 mask!3524)))

(assert (=> d!77895 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!222386)))

(declare-fun b!491792 () Bool)

(assert (=> b!491792 (= e!288913 Undefined!3772)))

(assert (= (and d!77895 c!58750) b!491792))

(assert (= (and d!77895 (not c!58750)) b!491790))

(assert (= (and b!491790 c!58751) b!491793))

(assert (= (and b!491790 (not c!58751)) b!491794))

(assert (= (and b!491794 c!58749) b!491791))

(assert (= (and b!491794 (not c!58749)) b!491795))

(declare-fun m!472603 () Bool)

(assert (=> b!491790 m!472603))

(declare-fun m!472605 () Bool)

(assert (=> b!491795 m!472605))

(assert (=> d!77895 m!472505))

(declare-fun m!472607 () Bool)

(assert (=> d!77895 m!472607))

(declare-fun m!472609 () Bool)

(assert (=> d!77895 m!472609))

(declare-fun m!472611 () Bool)

(assert (=> d!77895 m!472611))

(declare-fun m!472613 () Bool)

(assert (=> d!77895 m!472613))

(assert (=> d!77895 m!472609))

(declare-fun m!472615 () Bool)

(assert (=> d!77895 m!472615))

(assert (=> b!491702 d!77895))

(declare-fun d!77897 () Bool)

(declare-fun res!294844 () Bool)

(declare-fun e!288927 () Bool)

(assert (=> d!77897 (=> res!294844 e!288927)))

(assert (=> d!77897 (= res!294844 (= (select (arr!15298 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!77897 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!288927)))

(declare-fun b!491812 () Bool)

(declare-fun e!288928 () Bool)

(assert (=> b!491812 (= e!288927 e!288928)))

(declare-fun res!294845 () Bool)

(assert (=> b!491812 (=> (not res!294845) (not e!288928))))

(assert (=> b!491812 (= res!294845 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15662 a!3235)))))

(declare-fun b!491813 () Bool)

(assert (=> b!491813 (= e!288928 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77897 (not res!294844)) b!491812))

(assert (= (and b!491812 res!294845) b!491813))

(assert (=> d!77897 m!472567))

(declare-fun m!472629 () Bool)

(assert (=> b!491813 m!472629))

(assert (=> b!491708 d!77897))

(declare-fun b!491916 () Bool)

(declare-fun e!288993 () SeekEntryResult!3772)

(declare-fun e!288996 () SeekEntryResult!3772)

(assert (=> b!491916 (= e!288993 e!288996)))

(declare-fun c!58790 () Bool)

(declare-fun lt!222428 () (_ BitVec 64))

(assert (=> b!491916 (= c!58790 (or (= lt!222428 (select (arr!15298 a!3235) j!176)) (= (bvadd lt!222428 lt!222428) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!491917 () Bool)

(assert (=> b!491917 (= e!288993 (Intermediate!3772 true (toIndex!0 (select (arr!15298 a!3235) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!491918 () Bool)

(declare-fun lt!222427 () SeekEntryResult!3772)

(assert (=> b!491918 (and (bvsge (index!17269 lt!222427) #b00000000000000000000000000000000) (bvslt (index!17269 lt!222427) (size!15662 a!3235)))))

(declare-fun res!294885 () Bool)

(assert (=> b!491918 (= res!294885 (= (select (arr!15298 a!3235) (index!17269 lt!222427)) (select (arr!15298 a!3235) j!176)))))

(declare-fun e!288997 () Bool)

(assert (=> b!491918 (=> res!294885 e!288997)))

(declare-fun e!288994 () Bool)

(assert (=> b!491918 (= e!288994 e!288997)))

(declare-fun b!491919 () Bool)

(declare-fun e!288995 () Bool)

(assert (=> b!491919 (= e!288995 (bvsge (x!46377 lt!222427) #b01111111111111111111111111111110))))

(declare-fun d!77903 () Bool)

(assert (=> d!77903 e!288995))

(declare-fun c!58788 () Bool)

(assert (=> d!77903 (= c!58788 (and ((_ is Intermediate!3772) lt!222427) (undefined!4584 lt!222427)))))

(assert (=> d!77903 (= lt!222427 e!288993)))

(declare-fun c!58789 () Bool)

(assert (=> d!77903 (= c!58789 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!77903 (= lt!222428 (select (arr!15298 a!3235) (toIndex!0 (select (arr!15298 a!3235) j!176) mask!3524)))))

(assert (=> d!77903 (validMask!0 mask!3524)))

(assert (=> d!77903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15298 a!3235) j!176) mask!3524) (select (arr!15298 a!3235) j!176) a!3235 mask!3524) lt!222427)))

(declare-fun b!491920 () Bool)

(assert (=> b!491920 (= e!288996 (Intermediate!3772 false (toIndex!0 (select (arr!15298 a!3235) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!491921 () Bool)

(assert (=> b!491921 (and (bvsge (index!17269 lt!222427) #b00000000000000000000000000000000) (bvslt (index!17269 lt!222427) (size!15662 a!3235)))))

(declare-fun res!294883 () Bool)

(assert (=> b!491921 (= res!294883 (= (select (arr!15298 a!3235) (index!17269 lt!222427)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!491921 (=> res!294883 e!288997)))

(declare-fun b!491922 () Bool)

(assert (=> b!491922 (and (bvsge (index!17269 lt!222427) #b00000000000000000000000000000000) (bvslt (index!17269 lt!222427) (size!15662 a!3235)))))

(assert (=> b!491922 (= e!288997 (= (select (arr!15298 a!3235) (index!17269 lt!222427)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!491923 () Bool)

(assert (=> b!491923 (= e!288995 e!288994)))

(declare-fun res!294884 () Bool)

(assert (=> b!491923 (= res!294884 (and ((_ is Intermediate!3772) lt!222427) (not (undefined!4584 lt!222427)) (bvslt (x!46377 lt!222427) #b01111111111111111111111111111110) (bvsge (x!46377 lt!222427) #b00000000000000000000000000000000) (bvsge (x!46377 lt!222427) #b00000000000000000000000000000000)))))

(assert (=> b!491923 (=> (not res!294884) (not e!288994))))

(declare-fun b!491924 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491924 (= e!288996 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!15298 a!3235) j!176) mask!3524) #b00000000000000000000000000000000 mask!3524) (select (arr!15298 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!77903 c!58789) b!491917))

(assert (= (and d!77903 (not c!58789)) b!491916))

(assert (= (and b!491916 c!58790) b!491920))

(assert (= (and b!491916 (not c!58790)) b!491924))

(assert (= (and d!77903 c!58788) b!491919))

(assert (= (and d!77903 (not c!58788)) b!491923))

(assert (= (and b!491923 res!294884) b!491918))

(assert (= (and b!491918 (not res!294885)) b!491921))

(assert (= (and b!491921 (not res!294883)) b!491922))

(declare-fun m!472681 () Bool)

(assert (=> b!491921 m!472681))

(assert (=> d!77903 m!472521))

(declare-fun m!472683 () Bool)

(assert (=> d!77903 m!472683))

(assert (=> d!77903 m!472505))

(assert (=> b!491918 m!472681))

(assert (=> b!491922 m!472681))

(assert (=> b!491924 m!472521))

(declare-fun m!472685 () Bool)

(assert (=> b!491924 m!472685))

(assert (=> b!491924 m!472685))

(assert (=> b!491924 m!472497))

(declare-fun m!472687 () Bool)

(assert (=> b!491924 m!472687))

(assert (=> b!491703 d!77903))

(declare-fun d!77919 () Bool)

(declare-fun lt!222450 () (_ BitVec 32))

(declare-fun lt!222449 () (_ BitVec 32))

(assert (=> d!77919 (= lt!222450 (bvmul (bvxor lt!222449 (bvlshr lt!222449 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77919 (= lt!222449 ((_ extract 31 0) (bvand (bvxor (select (arr!15298 a!3235) j!176) (bvlshr (select (arr!15298 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77919 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!294886 (let ((h!10370 ((_ extract 31 0) (bvand (bvxor (select (arr!15298 a!3235) j!176) (bvlshr (select (arr!15298 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46382 (bvmul (bvxor h!10370 (bvlshr h!10370 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46382 (bvlshr x!46382 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!294886 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!294886 #b00000000000000000000000000000000))))))

(assert (=> d!77919 (= (toIndex!0 (select (arr!15298 a!3235) j!176) mask!3524) (bvand (bvxor lt!222450 (bvlshr lt!222450 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!491703 d!77919))

(declare-fun b!491938 () Bool)

(declare-fun e!289007 () Bool)

(declare-fun call!31378 () Bool)

(assert (=> b!491938 (= e!289007 call!31378)))

(declare-fun b!491939 () Bool)

(declare-fun e!289008 () Bool)

(declare-fun e!289006 () Bool)

(assert (=> b!491939 (= e!289008 e!289006)))

(declare-fun c!58795 () Bool)

(assert (=> b!491939 (= c!58795 (validKeyInArray!0 (select (arr!15298 a!3235) j!176)))))

(declare-fun d!77929 () Bool)

(declare-fun res!294892 () Bool)

(assert (=> d!77929 (=> res!294892 e!289008)))

(assert (=> d!77929 (= res!294892 (bvsge j!176 (size!15662 a!3235)))))

(assert (=> d!77929 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!289008)))

(declare-fun bm!31375 () Bool)

(assert (=> bm!31375 (= call!31378 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!491940 () Bool)

(assert (=> b!491940 (= e!289006 call!31378)))

(declare-fun b!491941 () Bool)

(assert (=> b!491941 (= e!289006 e!289007)))

(declare-fun lt!222452 () (_ BitVec 64))

(assert (=> b!491941 (= lt!222452 (select (arr!15298 a!3235) j!176))))

(declare-fun lt!222453 () Unit!14482)

(assert (=> b!491941 (= lt!222453 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!222452 j!176))))

(assert (=> b!491941 (arrayContainsKey!0 a!3235 lt!222452 #b00000000000000000000000000000000)))

(declare-fun lt!222451 () Unit!14482)

(assert (=> b!491941 (= lt!222451 lt!222453)))

(declare-fun res!294893 () Bool)

(assert (=> b!491941 (= res!294893 (= (seekEntryOrOpen!0 (select (arr!15298 a!3235) j!176) a!3235 mask!3524) (Found!3772 j!176)))))

(assert (=> b!491941 (=> (not res!294893) (not e!289007))))

(assert (= (and d!77929 (not res!294892)) b!491939))

(assert (= (and b!491939 c!58795) b!491941))

(assert (= (and b!491939 (not c!58795)) b!491940))

(assert (= (and b!491941 res!294893) b!491938))

(assert (= (or b!491938 b!491940) bm!31375))

(assert (=> b!491939 m!472497))

(assert (=> b!491939 m!472497))

(assert (=> b!491939 m!472499))

(declare-fun m!472705 () Bool)

(assert (=> bm!31375 m!472705))

(assert (=> b!491941 m!472497))

(declare-fun m!472707 () Bool)

(assert (=> b!491941 m!472707))

(declare-fun m!472709 () Bool)

(assert (=> b!491941 m!472709))

(assert (=> b!491941 m!472497))

(assert (=> b!491941 m!472503))

(assert (=> b!491703 d!77929))

(declare-fun d!77933 () Bool)

(assert (=> d!77933 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222459 () Unit!14482)

(declare-fun choose!38 (array!31827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14482)

(assert (=> d!77933 (= lt!222459 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!77933 (validMask!0 mask!3524)))

(assert (=> d!77933 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!222459)))

(declare-fun bs!15685 () Bool)

(assert (= bs!15685 d!77933))

(assert (=> bs!15685 m!472529))

(declare-fun m!472721 () Bool)

(assert (=> bs!15685 m!472721))

(assert (=> bs!15685 m!472505))

(assert (=> b!491703 d!77933))

(declare-fun d!77941 () Bool)

(declare-fun lt!222461 () (_ BitVec 32))

(declare-fun lt!222460 () (_ BitVec 32))

(assert (=> d!77941 (= lt!222461 (bvmul (bvxor lt!222460 (bvlshr lt!222460 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!77941 (= lt!222460 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!77941 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!294886 (let ((h!10370 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!46382 (bvmul (bvxor h!10370 (bvlshr h!10370 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!46382 (bvlshr x!46382 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!294886 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!294886 #b00000000000000000000000000000000))))))

(assert (=> d!77941 (= (toIndex!0 (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!222461 (bvlshr lt!222461 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!491703 d!77941))

(declare-fun b!491958 () Bool)

(declare-fun e!289020 () SeekEntryResult!3772)

(declare-fun e!289023 () SeekEntryResult!3772)

(assert (=> b!491958 (= e!289020 e!289023)))

(declare-fun lt!222463 () (_ BitVec 64))

(declare-fun c!58803 () Bool)

(assert (=> b!491958 (= c!58803 (or (= lt!222463 (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!222463 lt!222463) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!491959 () Bool)

(assert (=> b!491959 (= e!289020 (Intermediate!3772 true (toIndex!0 (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun lt!222462 () SeekEntryResult!3772)

(declare-fun b!491960 () Bool)

(assert (=> b!491960 (and (bvsge (index!17269 lt!222462) #b00000000000000000000000000000000) (bvslt (index!17269 lt!222462) (size!15662 (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235)))))))

(declare-fun res!294902 () Bool)

(assert (=> b!491960 (= res!294902 (= (select (arr!15298 (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235))) (index!17269 lt!222462)) (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176)))))

(declare-fun e!289024 () Bool)

(assert (=> b!491960 (=> res!294902 e!289024)))

(declare-fun e!289021 () Bool)

(assert (=> b!491960 (= e!289021 e!289024)))

(declare-fun b!491961 () Bool)

(declare-fun e!289022 () Bool)

(assert (=> b!491961 (= e!289022 (bvsge (x!46377 lt!222462) #b01111111111111111111111111111110))))

(declare-fun d!77943 () Bool)

(assert (=> d!77943 e!289022))

(declare-fun c!58801 () Bool)

(assert (=> d!77943 (= c!58801 (and ((_ is Intermediate!3772) lt!222462) (undefined!4584 lt!222462)))))

(assert (=> d!77943 (= lt!222462 e!289020)))

(declare-fun c!58802 () Bool)

(assert (=> d!77943 (= c!58802 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!77943 (= lt!222463 (select (arr!15298 (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235))) (toIndex!0 (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) mask!3524)))))

(assert (=> d!77943 (validMask!0 mask!3524)))

(assert (=> d!77943 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) mask!3524) (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235)) mask!3524) lt!222462)))

(declare-fun b!491962 () Bool)

(assert (=> b!491962 (= e!289023 (Intermediate!3772 false (toIndex!0 (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) mask!3524) #b00000000000000000000000000000000))))

(declare-fun b!491963 () Bool)

(assert (=> b!491963 (and (bvsge (index!17269 lt!222462) #b00000000000000000000000000000000) (bvslt (index!17269 lt!222462) (size!15662 (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235)))))))

(declare-fun res!294900 () Bool)

(assert (=> b!491963 (= res!294900 (= (select (arr!15298 (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235))) (index!17269 lt!222462)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!491963 (=> res!294900 e!289024)))

(declare-fun b!491964 () Bool)

(assert (=> b!491964 (and (bvsge (index!17269 lt!222462) #b00000000000000000000000000000000) (bvslt (index!17269 lt!222462) (size!15662 (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235)))))))

(assert (=> b!491964 (= e!289024 (= (select (arr!15298 (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235))) (index!17269 lt!222462)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!491965 () Bool)

(assert (=> b!491965 (= e!289022 e!289021)))

(declare-fun res!294901 () Bool)

(assert (=> b!491965 (= res!294901 (and ((_ is Intermediate!3772) lt!222462) (not (undefined!4584 lt!222462)) (bvslt (x!46377 lt!222462) #b01111111111111111111111111111110) (bvsge (x!46377 lt!222462) #b00000000000000000000000000000000) (bvsge (x!46377 lt!222462) #b00000000000000000000000000000000)))))

(assert (=> b!491965 (=> (not res!294901) (not e!289021))))

(declare-fun b!491966 () Bool)

(assert (=> b!491966 (= e!289023 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) mask!3524) #b00000000000000000000000000000000 mask!3524) (select (store (arr!15298 a!3235) i!1204 k0!2280) j!176) (array!31828 (store (arr!15298 a!3235) i!1204 k0!2280) (size!15662 a!3235)) mask!3524))))

(assert (= (and d!77943 c!58802) b!491959))

(assert (= (and d!77943 (not c!58802)) b!491958))

(assert (= (and b!491958 c!58803) b!491962))

(assert (= (and b!491958 (not c!58803)) b!491966))

(assert (= (and d!77943 c!58801) b!491961))

(assert (= (and d!77943 (not c!58801)) b!491965))

(assert (= (and b!491965 res!294901) b!491960))

(assert (= (and b!491960 (not res!294902)) b!491963))

(assert (= (and b!491963 (not res!294900)) b!491964))

(declare-fun m!472723 () Bool)

(assert (=> b!491963 m!472723))

(assert (=> d!77943 m!472525))

(declare-fun m!472725 () Bool)

(assert (=> d!77943 m!472725))

(assert (=> d!77943 m!472505))

(assert (=> b!491960 m!472723))

(assert (=> b!491964 m!472723))

(assert (=> b!491966 m!472525))

(declare-fun m!472727 () Bool)

(assert (=> b!491966 m!472727))

(assert (=> b!491966 m!472727))

(assert (=> b!491966 m!472519))

(declare-fun m!472729 () Bool)

(assert (=> b!491966 m!472729))

(assert (=> b!491703 d!77943))

(declare-fun b!491982 () Bool)

(declare-fun e!289037 () Bool)

(declare-fun e!289039 () Bool)

(assert (=> b!491982 (= e!289037 e!289039)))

(declare-fun res!294912 () Bool)

(assert (=> b!491982 (=> (not res!294912) (not e!289039))))

(declare-fun e!289038 () Bool)

(assert (=> b!491982 (= res!294912 (not e!289038))))

(declare-fun res!294914 () Bool)

(assert (=> b!491982 (=> (not res!294914) (not e!289038))))

(assert (=> b!491982 (= res!294914 (validKeyInArray!0 (select (arr!15298 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77945 () Bool)

(declare-fun res!294913 () Bool)

(assert (=> d!77945 (=> res!294913 e!289037)))

(assert (=> d!77945 (= res!294913 (bvsge #b00000000000000000000000000000000 (size!15662 a!3235)))))

(assert (=> d!77945 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9506) e!289037)))

(declare-fun b!491983 () Bool)

(declare-fun e!289040 () Bool)

(assert (=> b!491983 (= e!289039 e!289040)))

(declare-fun c!58807 () Bool)

(assert (=> b!491983 (= c!58807 (validKeyInArray!0 (select (arr!15298 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!491984 () Bool)

(declare-fun contains!2714 (List!9509 (_ BitVec 64)) Bool)

(assert (=> b!491984 (= e!289038 (contains!2714 Nil!9506 (select (arr!15298 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!491985 () Bool)

(declare-fun call!31384 () Bool)

(assert (=> b!491985 (= e!289040 call!31384)))

(declare-fun bm!31381 () Bool)

(assert (=> bm!31381 (= call!31384 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58807 (Cons!9505 (select (arr!15298 a!3235) #b00000000000000000000000000000000) Nil!9506) Nil!9506)))))

(declare-fun b!491986 () Bool)

(assert (=> b!491986 (= e!289040 call!31384)))

(assert (= (and d!77945 (not res!294913)) b!491982))

(assert (= (and b!491982 res!294914) b!491984))

(assert (= (and b!491982 res!294912) b!491983))

(assert (= (and b!491983 c!58807) b!491986))

(assert (= (and b!491983 (not c!58807)) b!491985))

(assert (= (or b!491986 b!491985) bm!31381))

(assert (=> b!491982 m!472567))

(assert (=> b!491982 m!472567))

(assert (=> b!491982 m!472569))

(assert (=> b!491983 m!472567))

(assert (=> b!491983 m!472567))

(assert (=> b!491983 m!472569))

(assert (=> b!491984 m!472567))

(assert (=> b!491984 m!472567))

(declare-fun m!472735 () Bool)

(assert (=> b!491984 m!472735))

(assert (=> bm!31381 m!472567))

(declare-fun m!472737 () Bool)

(assert (=> bm!31381 m!472737))

(assert (=> b!491709 d!77945))

(check-sat (not b!491751) (not b!491813) (not b!491984) (not d!77903) (not d!77943) (not bm!31381) (not b!491939) (not b!491941) (not d!77895) (not b!491966) (not b!491795) (not b!491982) (not bm!31375) (not bm!31364) (not b!491983) (not d!77887) (not b!491753) (not d!77933) (not b!491789) (not b!491924))
(check-sat)

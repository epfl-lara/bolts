; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47826 () Bool)

(assert start!47826)

(declare-fun b!526741 () Bool)

(declare-fun res!323444 () Bool)

(declare-fun e!307002 () Bool)

(assert (=> b!526741 (=> res!323444 e!307002)))

(declare-datatypes ((SeekEntryResult!4534 0))(
  ( (MissingZero!4534 (index!20348 (_ BitVec 32))) (Found!4534 (index!20349 (_ BitVec 32))) (Intermediate!4534 (undefined!5346 Bool) (index!20350 (_ BitVec 32)) (x!49342 (_ BitVec 32))) (Undefined!4534) (MissingVacant!4534 (index!20351 (_ BitVec 32))) )
))
(declare-fun lt!242435 () SeekEntryResult!4534)

(get-info :version)

(assert (=> b!526741 (= res!323444 (or (undefined!5346 lt!242435) (not ((_ is Intermediate!4534) lt!242435))))))

(declare-fun b!526742 () Bool)

(declare-fun res!323446 () Bool)

(declare-fun e!307003 () Bool)

(assert (=> b!526742 (=> (not res!323446) (not e!307003))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526742 (= res!323446 (validKeyInArray!0 k0!2280))))

(declare-fun b!526743 () Bool)

(declare-fun res!323453 () Bool)

(declare-fun e!307005 () Bool)

(assert (=> b!526743 (=> (not res!323453) (not e!307005))))

(declare-datatypes ((array!33423 0))(
  ( (array!33424 (arr!16060 (Array (_ BitVec 32) (_ BitVec 64))) (size!16424 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33423)

(declare-datatypes ((List!10271 0))(
  ( (Nil!10268) (Cons!10267 (h!11198 (_ BitVec 64)) (t!16507 List!10271)) )
))
(declare-fun arrayNoDuplicates!0 (array!33423 (_ BitVec 32) List!10271) Bool)

(assert (=> b!526743 (= res!323453 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10268))))

(declare-fun b!526744 () Bool)

(declare-fun res!323449 () Bool)

(assert (=> b!526744 (=> (not res!323449) (not e!307003))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!526744 (= res!323449 (validKeyInArray!0 (select (arr!16060 a!3235) j!176)))))

(declare-fun b!526745 () Bool)

(assert (=> b!526745 (= e!307003 e!307005)))

(declare-fun res!323443 () Bool)

(assert (=> b!526745 (=> (not res!323443) (not e!307005))))

(declare-fun lt!242433 () SeekEntryResult!4534)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526745 (= res!323443 (or (= lt!242433 (MissingZero!4534 i!1204)) (= lt!242433 (MissingVacant!4534 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33423 (_ BitVec 32)) SeekEntryResult!4534)

(assert (=> b!526745 (= lt!242433 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!526746 () Bool)

(declare-fun res!323445 () Bool)

(assert (=> b!526746 (=> (not res!323445) (not e!307005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33423 (_ BitVec 32)) Bool)

(assert (=> b!526746 (= res!323445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526747 () Bool)

(declare-fun res!323452 () Bool)

(assert (=> b!526747 (=> (not res!323452) (not e!307003))))

(declare-fun arrayContainsKey!0 (array!33423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526747 (= res!323452 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526748 () Bool)

(assert (=> b!526748 (= e!307005 (not e!307002))))

(declare-fun res!323451 () Bool)

(assert (=> b!526748 (=> res!323451 e!307002)))

(declare-fun lt!242426 () (_ BitVec 32))

(declare-fun lt!242431 () array!33423)

(declare-fun lt!242434 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33423 (_ BitVec 32)) SeekEntryResult!4534)

(assert (=> b!526748 (= res!323451 (= lt!242435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242426 lt!242434 lt!242431 mask!3524)))))

(declare-fun lt!242429 () (_ BitVec 32))

(assert (=> b!526748 (= lt!242435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242429 (select (arr!16060 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526748 (= lt!242426 (toIndex!0 lt!242434 mask!3524))))

(assert (=> b!526748 (= lt!242434 (select (store (arr!16060 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!526748 (= lt!242429 (toIndex!0 (select (arr!16060 a!3235) j!176) mask!3524))))

(assert (=> b!526748 (= lt!242431 (array!33424 (store (arr!16060 a!3235) i!1204 k0!2280) (size!16424 a!3235)))))

(declare-fun e!307001 () Bool)

(assert (=> b!526748 e!307001))

(declare-fun res!323450 () Bool)

(assert (=> b!526748 (=> (not res!323450) (not e!307001))))

(assert (=> b!526748 (= res!323450 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16602 0))(
  ( (Unit!16603) )
))
(declare-fun lt!242432 () Unit!16602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16602)

(assert (=> b!526748 (= lt!242432 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526749 () Bool)

(declare-fun e!307004 () Unit!16602)

(declare-fun Unit!16604 () Unit!16602)

(assert (=> b!526749 (= e!307004 Unit!16604)))

(declare-fun lt!242428 () Unit!16602)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33423 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16602)

(assert (=> b!526749 (= lt!242428 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242429 #b00000000000000000000000000000000 (index!20350 lt!242435) (x!49342 lt!242435) mask!3524))))

(declare-fun res!323442 () Bool)

(assert (=> b!526749 (= res!323442 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242429 lt!242434 lt!242431 mask!3524) (Intermediate!4534 false (index!20350 lt!242435) (x!49342 lt!242435))))))

(declare-fun e!307006 () Bool)

(assert (=> b!526749 (=> (not res!323442) (not e!307006))))

(assert (=> b!526749 e!307006))

(declare-fun b!526750 () Bool)

(assert (=> b!526750 (= e!307001 (= (seekEntryOrOpen!0 (select (arr!16060 a!3235) j!176) a!3235 mask!3524) (Found!4534 j!176)))))

(declare-fun b!526751 () Bool)

(assert (=> b!526751 (= e!307006 false)))

(declare-fun b!526752 () Bool)

(declare-fun Unit!16605 () Unit!16602)

(assert (=> b!526752 (= e!307004 Unit!16605)))

(declare-fun res!323447 () Bool)

(assert (=> start!47826 (=> (not res!323447) (not e!307003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47826 (= res!323447 (validMask!0 mask!3524))))

(assert (=> start!47826 e!307003))

(assert (=> start!47826 true))

(declare-fun array_inv!11834 (array!33423) Bool)

(assert (=> start!47826 (array_inv!11834 a!3235)))

(declare-fun b!526753 () Bool)

(declare-fun res!323448 () Bool)

(assert (=> b!526753 (=> (not res!323448) (not e!307003))))

(assert (=> b!526753 (= res!323448 (and (= (size!16424 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16424 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16424 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526754 () Bool)

(assert (=> b!526754 (= e!307002 (or (bvsgt (x!49342 lt!242435) #b01111111111111111111111111111110) (and (bvsge lt!242429 #b00000000000000000000000000000000) (bvslt lt!242429 (size!16424 a!3235)))))))

(assert (=> b!526754 (= (index!20350 lt!242435) i!1204)))

(declare-fun lt!242430 () Unit!16602)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33423 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16602)

(assert (=> b!526754 (= lt!242430 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242429 #b00000000000000000000000000000000 (index!20350 lt!242435) (x!49342 lt!242435) mask!3524))))

(assert (=> b!526754 (and (or (= (select (arr!16060 a!3235) (index!20350 lt!242435)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16060 a!3235) (index!20350 lt!242435)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16060 a!3235) (index!20350 lt!242435)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16060 a!3235) (index!20350 lt!242435)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242427 () Unit!16602)

(assert (=> b!526754 (= lt!242427 e!307004)))

(declare-fun c!61955 () Bool)

(assert (=> b!526754 (= c!61955 (= (select (arr!16060 a!3235) (index!20350 lt!242435)) (select (arr!16060 a!3235) j!176)))))

(assert (=> b!526754 (and (bvslt (x!49342 lt!242435) #b01111111111111111111111111111110) (or (= (select (arr!16060 a!3235) (index!20350 lt!242435)) (select (arr!16060 a!3235) j!176)) (= (select (arr!16060 a!3235) (index!20350 lt!242435)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16060 a!3235) (index!20350 lt!242435)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47826 res!323447) b!526753))

(assert (= (and b!526753 res!323448) b!526744))

(assert (= (and b!526744 res!323449) b!526742))

(assert (= (and b!526742 res!323446) b!526747))

(assert (= (and b!526747 res!323452) b!526745))

(assert (= (and b!526745 res!323443) b!526746))

(assert (= (and b!526746 res!323445) b!526743))

(assert (= (and b!526743 res!323453) b!526748))

(assert (= (and b!526748 res!323450) b!526750))

(assert (= (and b!526748 (not res!323451)) b!526741))

(assert (= (and b!526741 (not res!323444)) b!526754))

(assert (= (and b!526754 c!61955) b!526749))

(assert (= (and b!526754 (not c!61955)) b!526752))

(assert (= (and b!526749 res!323442) b!526751))

(declare-fun m!507507 () Bool)

(assert (=> b!526742 m!507507))

(declare-fun m!507509 () Bool)

(assert (=> b!526743 m!507509))

(declare-fun m!507511 () Bool)

(assert (=> b!526747 m!507511))

(declare-fun m!507513 () Bool)

(assert (=> b!526754 m!507513))

(declare-fun m!507515 () Bool)

(assert (=> b!526754 m!507515))

(declare-fun m!507517 () Bool)

(assert (=> b!526754 m!507517))

(declare-fun m!507519 () Bool)

(assert (=> b!526748 m!507519))

(declare-fun m!507521 () Bool)

(assert (=> b!526748 m!507521))

(declare-fun m!507523 () Bool)

(assert (=> b!526748 m!507523))

(assert (=> b!526748 m!507517))

(declare-fun m!507525 () Bool)

(assert (=> b!526748 m!507525))

(declare-fun m!507527 () Bool)

(assert (=> b!526748 m!507527))

(assert (=> b!526748 m!507517))

(declare-fun m!507529 () Bool)

(assert (=> b!526748 m!507529))

(assert (=> b!526748 m!507517))

(declare-fun m!507531 () Bool)

(assert (=> b!526748 m!507531))

(declare-fun m!507533 () Bool)

(assert (=> b!526748 m!507533))

(assert (=> b!526750 m!507517))

(assert (=> b!526750 m!507517))

(declare-fun m!507535 () Bool)

(assert (=> b!526750 m!507535))

(declare-fun m!507537 () Bool)

(assert (=> b!526746 m!507537))

(declare-fun m!507539 () Bool)

(assert (=> b!526745 m!507539))

(declare-fun m!507541 () Bool)

(assert (=> b!526749 m!507541))

(declare-fun m!507543 () Bool)

(assert (=> b!526749 m!507543))

(assert (=> b!526744 m!507517))

(assert (=> b!526744 m!507517))

(declare-fun m!507545 () Bool)

(assert (=> b!526744 m!507545))

(declare-fun m!507547 () Bool)

(assert (=> start!47826 m!507547))

(declare-fun m!507549 () Bool)

(assert (=> start!47826 m!507549))

(check-sat (not b!526742) (not b!526743) (not b!526746) (not b!526744) (not b!526747) (not start!47826) (not b!526749) (not b!526745) (not b!526748) (not b!526750) (not b!526754))
(check-sat)
(get-model)

(declare-fun d!80647 () Bool)

(assert (=> d!80647 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!526742 d!80647))

(declare-fun b!526807 () Bool)

(declare-fun e!307039 () Bool)

(declare-fun e!307036 () Bool)

(assert (=> b!526807 (= e!307039 e!307036)))

(declare-fun res!323496 () Bool)

(assert (=> b!526807 (=> (not res!323496) (not e!307036))))

(declare-fun e!307037 () Bool)

(assert (=> b!526807 (= res!323496 (not e!307037))))

(declare-fun res!323497 () Bool)

(assert (=> b!526807 (=> (not res!323497) (not e!307037))))

(assert (=> b!526807 (= res!323497 (validKeyInArray!0 (select (arr!16060 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!526808 () Bool)

(declare-fun e!307038 () Bool)

(assert (=> b!526808 (= e!307036 e!307038)))

(declare-fun c!61961 () Bool)

(assert (=> b!526808 (= c!61961 (validKeyInArray!0 (select (arr!16060 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31868 () Bool)

(declare-fun call!31871 () Bool)

(assert (=> bm!31868 (= call!31871 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61961 (Cons!10267 (select (arr!16060 a!3235) #b00000000000000000000000000000000) Nil!10268) Nil!10268)))))

(declare-fun b!526809 () Bool)

(declare-fun contains!2778 (List!10271 (_ BitVec 64)) Bool)

(assert (=> b!526809 (= e!307037 (contains!2778 Nil!10268 (select (arr!16060 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!526810 () Bool)

(assert (=> b!526810 (= e!307038 call!31871)))

(declare-fun d!80649 () Bool)

(declare-fun res!323498 () Bool)

(assert (=> d!80649 (=> res!323498 e!307039)))

(assert (=> d!80649 (= res!323498 (bvsge #b00000000000000000000000000000000 (size!16424 a!3235)))))

(assert (=> d!80649 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10268) e!307039)))

(declare-fun b!526811 () Bool)

(assert (=> b!526811 (= e!307038 call!31871)))

(assert (= (and d!80649 (not res!323498)) b!526807))

(assert (= (and b!526807 res!323497) b!526809))

(assert (= (and b!526807 res!323496) b!526808))

(assert (= (and b!526808 c!61961) b!526810))

(assert (= (and b!526808 (not c!61961)) b!526811))

(assert (= (or b!526810 b!526811) bm!31868))

(declare-fun m!507595 () Bool)

(assert (=> b!526807 m!507595))

(assert (=> b!526807 m!507595))

(declare-fun m!507597 () Bool)

(assert (=> b!526807 m!507597))

(assert (=> b!526808 m!507595))

(assert (=> b!526808 m!507595))

(assert (=> b!526808 m!507597))

(assert (=> bm!31868 m!507595))

(declare-fun m!507599 () Bool)

(assert (=> bm!31868 m!507599))

(assert (=> b!526809 m!507595))

(assert (=> b!526809 m!507595))

(declare-fun m!507601 () Bool)

(assert (=> b!526809 m!507601))

(assert (=> b!526743 d!80649))

(declare-fun d!80651 () Bool)

(assert (=> d!80651 (= (index!20350 lt!242435) i!1204)))

(declare-fun lt!242468 () Unit!16602)

(declare-fun choose!104 (array!33423 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16602)

(assert (=> d!80651 (= lt!242468 (choose!104 a!3235 i!1204 k0!2280 j!176 lt!242429 #b00000000000000000000000000000000 (index!20350 lt!242435) (x!49342 lt!242435) mask!3524))))

(assert (=> d!80651 (validMask!0 mask!3524)))

(assert (=> d!80651 (= (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242429 #b00000000000000000000000000000000 (index!20350 lt!242435) (x!49342 lt!242435) mask!3524) lt!242468)))

(declare-fun bs!16521 () Bool)

(assert (= bs!16521 d!80651))

(declare-fun m!507603 () Bool)

(assert (=> bs!16521 m!507603))

(assert (=> bs!16521 m!507547))

(assert (=> b!526754 d!80651))

(declare-fun d!80653 () Bool)

(declare-fun e!307042 () Bool)

(assert (=> d!80653 e!307042))

(declare-fun res!323501 () Bool)

(assert (=> d!80653 (=> (not res!323501) (not e!307042))))

(assert (=> d!80653 (= res!323501 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16424 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16424 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16424 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16424 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16424 a!3235))))))

(declare-fun lt!242471 () Unit!16602)

(declare-fun choose!47 (array!33423 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16602)

(assert (=> d!80653 (= lt!242471 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!242429 #b00000000000000000000000000000000 (index!20350 lt!242435) (x!49342 lt!242435) mask!3524))))

(assert (=> d!80653 (validMask!0 mask!3524)))

(assert (=> d!80653 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242429 #b00000000000000000000000000000000 (index!20350 lt!242435) (x!49342 lt!242435) mask!3524) lt!242471)))

(declare-fun b!526814 () Bool)

(assert (=> b!526814 (= e!307042 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242429 (select (store (arr!16060 a!3235) i!1204 k0!2280) j!176) (array!33424 (store (arr!16060 a!3235) i!1204 k0!2280) (size!16424 a!3235)) mask!3524) (Intermediate!4534 false (index!20350 lt!242435) (x!49342 lt!242435))))))

(assert (= (and d!80653 res!323501) b!526814))

(declare-fun m!507605 () Bool)

(assert (=> d!80653 m!507605))

(assert (=> d!80653 m!507547))

(assert (=> b!526814 m!507519))

(assert (=> b!526814 m!507523))

(assert (=> b!526814 m!507523))

(declare-fun m!507607 () Bool)

(assert (=> b!526814 m!507607))

(assert (=> b!526749 d!80653))

(declare-fun b!526833 () Bool)

(declare-fun e!307056 () SeekEntryResult!4534)

(assert (=> b!526833 (= e!307056 (Intermediate!4534 true lt!242429 #b00000000000000000000000000000000))))

(declare-fun b!526834 () Bool)

(declare-fun lt!242477 () SeekEntryResult!4534)

(assert (=> b!526834 (and (bvsge (index!20350 lt!242477) #b00000000000000000000000000000000) (bvslt (index!20350 lt!242477) (size!16424 lt!242431)))))

(declare-fun res!323509 () Bool)

(assert (=> b!526834 (= res!323509 (= (select (arr!16060 lt!242431) (index!20350 lt!242477)) lt!242434))))

(declare-fun e!307054 () Bool)

(assert (=> b!526834 (=> res!323509 e!307054)))

(declare-fun e!307053 () Bool)

(assert (=> b!526834 (= e!307053 e!307054)))

(declare-fun b!526835 () Bool)

(declare-fun e!307057 () Bool)

(assert (=> b!526835 (= e!307057 (bvsge (x!49342 lt!242477) #b01111111111111111111111111111110))))

(declare-fun b!526836 () Bool)

(assert (=> b!526836 (and (bvsge (index!20350 lt!242477) #b00000000000000000000000000000000) (bvslt (index!20350 lt!242477) (size!16424 lt!242431)))))

(declare-fun res!323508 () Bool)

(assert (=> b!526836 (= res!323508 (= (select (arr!16060 lt!242431) (index!20350 lt!242477)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!526836 (=> res!323508 e!307054)))

(declare-fun b!526837 () Bool)

(assert (=> b!526837 (= e!307057 e!307053)))

(declare-fun res!323510 () Bool)

(assert (=> b!526837 (= res!323510 (and ((_ is Intermediate!4534) lt!242477) (not (undefined!5346 lt!242477)) (bvslt (x!49342 lt!242477) #b01111111111111111111111111111110) (bvsge (x!49342 lt!242477) #b00000000000000000000000000000000) (bvsge (x!49342 lt!242477) #b00000000000000000000000000000000)))))

(assert (=> b!526837 (=> (not res!323510) (not e!307053))))

(declare-fun b!526838 () Bool)

(assert (=> b!526838 (and (bvsge (index!20350 lt!242477) #b00000000000000000000000000000000) (bvslt (index!20350 lt!242477) (size!16424 lt!242431)))))

(assert (=> b!526838 (= e!307054 (= (select (arr!16060 lt!242431) (index!20350 lt!242477)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!526840 () Bool)

(declare-fun e!307055 () SeekEntryResult!4534)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526840 (= e!307055 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!242429 #b00000000000000000000000000000000 mask!3524) lt!242434 lt!242431 mask!3524))))

(declare-fun b!526841 () Bool)

(assert (=> b!526841 (= e!307055 (Intermediate!4534 false lt!242429 #b00000000000000000000000000000000))))

(declare-fun d!80655 () Bool)

(assert (=> d!80655 e!307057))

(declare-fun c!61970 () Bool)

(assert (=> d!80655 (= c!61970 (and ((_ is Intermediate!4534) lt!242477) (undefined!5346 lt!242477)))))

(assert (=> d!80655 (= lt!242477 e!307056)))

(declare-fun c!61969 () Bool)

(assert (=> d!80655 (= c!61969 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!242476 () (_ BitVec 64))

(assert (=> d!80655 (= lt!242476 (select (arr!16060 lt!242431) lt!242429))))

(assert (=> d!80655 (validMask!0 mask!3524)))

(assert (=> d!80655 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242429 lt!242434 lt!242431 mask!3524) lt!242477)))

(declare-fun b!526839 () Bool)

(assert (=> b!526839 (= e!307056 e!307055)))

(declare-fun c!61968 () Bool)

(assert (=> b!526839 (= c!61968 (or (= lt!242476 lt!242434) (= (bvadd lt!242476 lt!242476) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!80655 c!61969) b!526833))

(assert (= (and d!80655 (not c!61969)) b!526839))

(assert (= (and b!526839 c!61968) b!526841))

(assert (= (and b!526839 (not c!61968)) b!526840))

(assert (= (and d!80655 c!61970) b!526835))

(assert (= (and d!80655 (not c!61970)) b!526837))

(assert (= (and b!526837 res!323510) b!526834))

(assert (= (and b!526834 (not res!323509)) b!526836))

(assert (= (and b!526836 (not res!323508)) b!526838))

(declare-fun m!507609 () Bool)

(assert (=> b!526834 m!507609))

(declare-fun m!507611 () Bool)

(assert (=> d!80655 m!507611))

(assert (=> d!80655 m!507547))

(assert (=> b!526836 m!507609))

(assert (=> b!526838 m!507609))

(declare-fun m!507613 () Bool)

(assert (=> b!526840 m!507613))

(assert (=> b!526840 m!507613))

(declare-fun m!507615 () Bool)

(assert (=> b!526840 m!507615))

(assert (=> b!526749 d!80655))

(declare-fun d!80661 () Bool)

(assert (=> d!80661 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47826 d!80661))

(declare-fun d!80669 () Bool)

(assert (=> d!80669 (= (array_inv!11834 a!3235) (bvsge (size!16424 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47826 d!80669))

(declare-fun d!80671 () Bool)

(declare-fun lt!242511 () SeekEntryResult!4534)

(assert (=> d!80671 (and (or ((_ is Undefined!4534) lt!242511) (not ((_ is Found!4534) lt!242511)) (and (bvsge (index!20349 lt!242511) #b00000000000000000000000000000000) (bvslt (index!20349 lt!242511) (size!16424 a!3235)))) (or ((_ is Undefined!4534) lt!242511) ((_ is Found!4534) lt!242511) (not ((_ is MissingZero!4534) lt!242511)) (and (bvsge (index!20348 lt!242511) #b00000000000000000000000000000000) (bvslt (index!20348 lt!242511) (size!16424 a!3235)))) (or ((_ is Undefined!4534) lt!242511) ((_ is Found!4534) lt!242511) ((_ is MissingZero!4534) lt!242511) (not ((_ is MissingVacant!4534) lt!242511)) (and (bvsge (index!20351 lt!242511) #b00000000000000000000000000000000) (bvslt (index!20351 lt!242511) (size!16424 a!3235)))) (or ((_ is Undefined!4534) lt!242511) (ite ((_ is Found!4534) lt!242511) (= (select (arr!16060 a!3235) (index!20349 lt!242511)) (select (arr!16060 a!3235) j!176)) (ite ((_ is MissingZero!4534) lt!242511) (= (select (arr!16060 a!3235) (index!20348 lt!242511)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4534) lt!242511) (= (select (arr!16060 a!3235) (index!20351 lt!242511)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307088 () SeekEntryResult!4534)

(assert (=> d!80671 (= lt!242511 e!307088)))

(declare-fun c!61987 () Bool)

(declare-fun lt!242513 () SeekEntryResult!4534)

(assert (=> d!80671 (= c!61987 (and ((_ is Intermediate!4534) lt!242513) (undefined!5346 lt!242513)))))

(assert (=> d!80671 (= lt!242513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16060 a!3235) j!176) mask!3524) (select (arr!16060 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80671 (validMask!0 mask!3524)))

(assert (=> d!80671 (= (seekEntryOrOpen!0 (select (arr!16060 a!3235) j!176) a!3235 mask!3524) lt!242511)))

(declare-fun b!526887 () Bool)

(declare-fun c!61986 () Bool)

(declare-fun lt!242512 () (_ BitVec 64))

(assert (=> b!526887 (= c!61986 (= lt!242512 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!307087 () SeekEntryResult!4534)

(declare-fun e!307086 () SeekEntryResult!4534)

(assert (=> b!526887 (= e!307087 e!307086)))

(declare-fun b!526888 () Bool)

(assert (=> b!526888 (= e!307087 (Found!4534 (index!20350 lt!242513)))))

(declare-fun b!526889 () Bool)

(assert (=> b!526889 (= e!307088 e!307087)))

(assert (=> b!526889 (= lt!242512 (select (arr!16060 a!3235) (index!20350 lt!242513)))))

(declare-fun c!61988 () Bool)

(assert (=> b!526889 (= c!61988 (= lt!242512 (select (arr!16060 a!3235) j!176)))))

(declare-fun b!526890 () Bool)

(assert (=> b!526890 (= e!307088 Undefined!4534)))

(declare-fun b!526891 () Bool)

(assert (=> b!526891 (= e!307086 (MissingZero!4534 (index!20350 lt!242513)))))

(declare-fun b!526892 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33423 (_ BitVec 32)) SeekEntryResult!4534)

(assert (=> b!526892 (= e!307086 (seekKeyOrZeroReturnVacant!0 (x!49342 lt!242513) (index!20350 lt!242513) (index!20350 lt!242513) (select (arr!16060 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!80671 c!61987) b!526890))

(assert (= (and d!80671 (not c!61987)) b!526889))

(assert (= (and b!526889 c!61988) b!526888))

(assert (= (and b!526889 (not c!61988)) b!526887))

(assert (= (and b!526887 c!61986) b!526891))

(assert (= (and b!526887 (not c!61986)) b!526892))

(assert (=> d!80671 m!507529))

(assert (=> d!80671 m!507517))

(declare-fun m!507629 () Bool)

(assert (=> d!80671 m!507629))

(declare-fun m!507631 () Bool)

(assert (=> d!80671 m!507631))

(assert (=> d!80671 m!507547))

(assert (=> d!80671 m!507517))

(assert (=> d!80671 m!507529))

(declare-fun m!507633 () Bool)

(assert (=> d!80671 m!507633))

(declare-fun m!507635 () Bool)

(assert (=> d!80671 m!507635))

(declare-fun m!507637 () Bool)

(assert (=> b!526889 m!507637))

(assert (=> b!526892 m!507517))

(declare-fun m!507639 () Bool)

(assert (=> b!526892 m!507639))

(assert (=> b!526750 d!80671))

(declare-fun d!80681 () Bool)

(declare-fun res!323534 () Bool)

(declare-fun e!307098 () Bool)

(assert (=> d!80681 (=> res!323534 e!307098)))

(assert (=> d!80681 (= res!323534 (= (select (arr!16060 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!80681 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!307098)))

(declare-fun b!526906 () Bool)

(declare-fun e!307099 () Bool)

(assert (=> b!526906 (= e!307098 e!307099)))

(declare-fun res!323535 () Bool)

(assert (=> b!526906 (=> (not res!323535) (not e!307099))))

(assert (=> b!526906 (= res!323535 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16424 a!3235)))))

(declare-fun b!526907 () Bool)

(assert (=> b!526907 (= e!307099 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80681 (not res!323534)) b!526906))

(assert (= (and b!526906 res!323535) b!526907))

(assert (=> d!80681 m!507595))

(declare-fun m!507649 () Bool)

(assert (=> b!526907 m!507649))

(assert (=> b!526747 d!80681))

(declare-fun d!80685 () Bool)

(declare-fun lt!242528 () (_ BitVec 32))

(declare-fun lt!242527 () (_ BitVec 32))

(assert (=> d!80685 (= lt!242528 (bvmul (bvxor lt!242527 (bvlshr lt!242527 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80685 (= lt!242527 ((_ extract 31 0) (bvand (bvxor (select (arr!16060 a!3235) j!176) (bvlshr (select (arr!16060 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80685 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!323536 (let ((h!11201 ((_ extract 31 0) (bvand (bvxor (select (arr!16060 a!3235) j!176) (bvlshr (select (arr!16060 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49350 (bvmul (bvxor h!11201 (bvlshr h!11201 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49350 (bvlshr x!49350 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!323536 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!323536 #b00000000000000000000000000000000))))))

(assert (=> d!80685 (= (toIndex!0 (select (arr!16060 a!3235) j!176) mask!3524) (bvand (bvxor lt!242528 (bvlshr lt!242528 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!526748 d!80685))

(declare-fun b!526964 () Bool)

(declare-fun e!307137 () Bool)

(declare-fun call!31880 () Bool)

(assert (=> b!526964 (= e!307137 call!31880)))

(declare-fun bm!31877 () Bool)

(assert (=> bm!31877 (= call!31880 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!526965 () Bool)

(declare-fun e!307135 () Bool)

(assert (=> b!526965 (= e!307137 e!307135)))

(declare-fun lt!242548 () (_ BitVec 64))

(assert (=> b!526965 (= lt!242548 (select (arr!16060 a!3235) j!176))))

(declare-fun lt!242550 () Unit!16602)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33423 (_ BitVec 64) (_ BitVec 32)) Unit!16602)

(assert (=> b!526965 (= lt!242550 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!242548 j!176))))

(assert (=> b!526965 (arrayContainsKey!0 a!3235 lt!242548 #b00000000000000000000000000000000)))

(declare-fun lt!242549 () Unit!16602)

(assert (=> b!526965 (= lt!242549 lt!242550)))

(declare-fun res!323559 () Bool)

(assert (=> b!526965 (= res!323559 (= (seekEntryOrOpen!0 (select (arr!16060 a!3235) j!176) a!3235 mask!3524) (Found!4534 j!176)))))

(assert (=> b!526965 (=> (not res!323559) (not e!307135))))

(declare-fun d!80689 () Bool)

(declare-fun res!323560 () Bool)

(declare-fun e!307136 () Bool)

(assert (=> d!80689 (=> res!323560 e!307136)))

(assert (=> d!80689 (= res!323560 (bvsge j!176 (size!16424 a!3235)))))

(assert (=> d!80689 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!307136)))

(declare-fun b!526966 () Bool)

(assert (=> b!526966 (= e!307135 call!31880)))

(declare-fun b!526967 () Bool)

(assert (=> b!526967 (= e!307136 e!307137)))

(declare-fun c!62009 () Bool)

(assert (=> b!526967 (= c!62009 (validKeyInArray!0 (select (arr!16060 a!3235) j!176)))))

(assert (= (and d!80689 (not res!323560)) b!526967))

(assert (= (and b!526967 c!62009) b!526965))

(assert (= (and b!526967 (not c!62009)) b!526964))

(assert (= (and b!526965 res!323559) b!526966))

(assert (= (or b!526966 b!526964) bm!31877))

(declare-fun m!507681 () Bool)

(assert (=> bm!31877 m!507681))

(assert (=> b!526965 m!507517))

(declare-fun m!507683 () Bool)

(assert (=> b!526965 m!507683))

(declare-fun m!507685 () Bool)

(assert (=> b!526965 m!507685))

(assert (=> b!526965 m!507517))

(assert (=> b!526965 m!507535))

(assert (=> b!526967 m!507517))

(assert (=> b!526967 m!507517))

(assert (=> b!526967 m!507545))

(assert (=> b!526748 d!80689))

(declare-fun d!80697 () Bool)

(declare-fun lt!242552 () (_ BitVec 32))

(declare-fun lt!242551 () (_ BitVec 32))

(assert (=> d!80697 (= lt!242552 (bvmul (bvxor lt!242551 (bvlshr lt!242551 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80697 (= lt!242551 ((_ extract 31 0) (bvand (bvxor lt!242434 (bvlshr lt!242434 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80697 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!323536 (let ((h!11201 ((_ extract 31 0) (bvand (bvxor lt!242434 (bvlshr lt!242434 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49350 (bvmul (bvxor h!11201 (bvlshr h!11201 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49350 (bvlshr x!49350 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!323536 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!323536 #b00000000000000000000000000000000))))))

(assert (=> d!80697 (= (toIndex!0 lt!242434 mask!3524) (bvand (bvxor lt!242552 (bvlshr lt!242552 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!526748 d!80697))

(declare-fun b!526968 () Bool)

(declare-fun e!307141 () SeekEntryResult!4534)

(assert (=> b!526968 (= e!307141 (Intermediate!4534 true lt!242426 #b00000000000000000000000000000000))))

(declare-fun b!526969 () Bool)

(declare-fun lt!242554 () SeekEntryResult!4534)

(assert (=> b!526969 (and (bvsge (index!20350 lt!242554) #b00000000000000000000000000000000) (bvslt (index!20350 lt!242554) (size!16424 lt!242431)))))

(declare-fun res!323562 () Bool)

(assert (=> b!526969 (= res!323562 (= (select (arr!16060 lt!242431) (index!20350 lt!242554)) lt!242434))))

(declare-fun e!307139 () Bool)

(assert (=> b!526969 (=> res!323562 e!307139)))

(declare-fun e!307138 () Bool)

(assert (=> b!526969 (= e!307138 e!307139)))

(declare-fun b!526970 () Bool)

(declare-fun e!307142 () Bool)

(assert (=> b!526970 (= e!307142 (bvsge (x!49342 lt!242554) #b01111111111111111111111111111110))))

(declare-fun b!526971 () Bool)

(assert (=> b!526971 (and (bvsge (index!20350 lt!242554) #b00000000000000000000000000000000) (bvslt (index!20350 lt!242554) (size!16424 lt!242431)))))

(declare-fun res!323561 () Bool)

(assert (=> b!526971 (= res!323561 (= (select (arr!16060 lt!242431) (index!20350 lt!242554)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!526971 (=> res!323561 e!307139)))

(declare-fun b!526972 () Bool)

(assert (=> b!526972 (= e!307142 e!307138)))

(declare-fun res!323563 () Bool)

(assert (=> b!526972 (= res!323563 (and ((_ is Intermediate!4534) lt!242554) (not (undefined!5346 lt!242554)) (bvslt (x!49342 lt!242554) #b01111111111111111111111111111110) (bvsge (x!49342 lt!242554) #b00000000000000000000000000000000) (bvsge (x!49342 lt!242554) #b00000000000000000000000000000000)))))

(assert (=> b!526972 (=> (not res!323563) (not e!307138))))

(declare-fun b!526973 () Bool)

(assert (=> b!526973 (and (bvsge (index!20350 lt!242554) #b00000000000000000000000000000000) (bvslt (index!20350 lt!242554) (size!16424 lt!242431)))))

(assert (=> b!526973 (= e!307139 (= (select (arr!16060 lt!242431) (index!20350 lt!242554)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!526975 () Bool)

(declare-fun e!307140 () SeekEntryResult!4534)

(assert (=> b!526975 (= e!307140 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!242426 #b00000000000000000000000000000000 mask!3524) lt!242434 lt!242431 mask!3524))))

(declare-fun b!526976 () Bool)

(assert (=> b!526976 (= e!307140 (Intermediate!4534 false lt!242426 #b00000000000000000000000000000000))))

(declare-fun d!80699 () Bool)

(assert (=> d!80699 e!307142))

(declare-fun c!62012 () Bool)

(assert (=> d!80699 (= c!62012 (and ((_ is Intermediate!4534) lt!242554) (undefined!5346 lt!242554)))))

(assert (=> d!80699 (= lt!242554 e!307141)))

(declare-fun c!62011 () Bool)

(assert (=> d!80699 (= c!62011 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!242553 () (_ BitVec 64))

(assert (=> d!80699 (= lt!242553 (select (arr!16060 lt!242431) lt!242426))))

(assert (=> d!80699 (validMask!0 mask!3524)))

(assert (=> d!80699 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242426 lt!242434 lt!242431 mask!3524) lt!242554)))

(declare-fun b!526974 () Bool)

(assert (=> b!526974 (= e!307141 e!307140)))

(declare-fun c!62010 () Bool)

(assert (=> b!526974 (= c!62010 (or (= lt!242553 lt!242434) (= (bvadd lt!242553 lt!242553) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!80699 c!62011) b!526968))

(assert (= (and d!80699 (not c!62011)) b!526974))

(assert (= (and b!526974 c!62010) b!526976))

(assert (= (and b!526974 (not c!62010)) b!526975))

(assert (= (and d!80699 c!62012) b!526970))

(assert (= (and d!80699 (not c!62012)) b!526972))

(assert (= (and b!526972 res!323563) b!526969))

(assert (= (and b!526969 (not res!323562)) b!526971))

(assert (= (and b!526971 (not res!323561)) b!526973))

(declare-fun m!507687 () Bool)

(assert (=> b!526969 m!507687))

(declare-fun m!507689 () Bool)

(assert (=> d!80699 m!507689))

(assert (=> d!80699 m!507547))

(assert (=> b!526971 m!507687))

(assert (=> b!526973 m!507687))

(declare-fun m!507691 () Bool)

(assert (=> b!526975 m!507691))

(assert (=> b!526975 m!507691))

(declare-fun m!507693 () Bool)

(assert (=> b!526975 m!507693))

(assert (=> b!526748 d!80699))

(declare-fun d!80701 () Bool)

(assert (=> d!80701 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!242557 () Unit!16602)

(declare-fun choose!38 (array!33423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16602)

(assert (=> d!80701 (= lt!242557 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80701 (validMask!0 mask!3524)))

(assert (=> d!80701 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!242557)))

(declare-fun bs!16524 () Bool)

(assert (= bs!16524 d!80701))

(assert (=> bs!16524 m!507531))

(declare-fun m!507695 () Bool)

(assert (=> bs!16524 m!507695))

(assert (=> bs!16524 m!507547))

(assert (=> b!526748 d!80701))

(declare-fun b!526977 () Bool)

(declare-fun e!307146 () SeekEntryResult!4534)

(assert (=> b!526977 (= e!307146 (Intermediate!4534 true lt!242429 #b00000000000000000000000000000000))))

(declare-fun b!526978 () Bool)

(declare-fun lt!242559 () SeekEntryResult!4534)

(assert (=> b!526978 (and (bvsge (index!20350 lt!242559) #b00000000000000000000000000000000) (bvslt (index!20350 lt!242559) (size!16424 a!3235)))))

(declare-fun res!323565 () Bool)

(assert (=> b!526978 (= res!323565 (= (select (arr!16060 a!3235) (index!20350 lt!242559)) (select (arr!16060 a!3235) j!176)))))

(declare-fun e!307144 () Bool)

(assert (=> b!526978 (=> res!323565 e!307144)))

(declare-fun e!307143 () Bool)

(assert (=> b!526978 (= e!307143 e!307144)))

(declare-fun b!526979 () Bool)

(declare-fun e!307147 () Bool)

(assert (=> b!526979 (= e!307147 (bvsge (x!49342 lt!242559) #b01111111111111111111111111111110))))

(declare-fun b!526980 () Bool)

(assert (=> b!526980 (and (bvsge (index!20350 lt!242559) #b00000000000000000000000000000000) (bvslt (index!20350 lt!242559) (size!16424 a!3235)))))

(declare-fun res!323564 () Bool)

(assert (=> b!526980 (= res!323564 (= (select (arr!16060 a!3235) (index!20350 lt!242559)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!526980 (=> res!323564 e!307144)))

(declare-fun b!526981 () Bool)

(assert (=> b!526981 (= e!307147 e!307143)))

(declare-fun res!323566 () Bool)

(assert (=> b!526981 (= res!323566 (and ((_ is Intermediate!4534) lt!242559) (not (undefined!5346 lt!242559)) (bvslt (x!49342 lt!242559) #b01111111111111111111111111111110) (bvsge (x!49342 lt!242559) #b00000000000000000000000000000000) (bvsge (x!49342 lt!242559) #b00000000000000000000000000000000)))))

(assert (=> b!526981 (=> (not res!323566) (not e!307143))))

(declare-fun b!526982 () Bool)

(assert (=> b!526982 (and (bvsge (index!20350 lt!242559) #b00000000000000000000000000000000) (bvslt (index!20350 lt!242559) (size!16424 a!3235)))))

(assert (=> b!526982 (= e!307144 (= (select (arr!16060 a!3235) (index!20350 lt!242559)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!526984 () Bool)

(declare-fun e!307145 () SeekEntryResult!4534)

(assert (=> b!526984 (= e!307145 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!242429 #b00000000000000000000000000000000 mask!3524) (select (arr!16060 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!526985 () Bool)

(assert (=> b!526985 (= e!307145 (Intermediate!4534 false lt!242429 #b00000000000000000000000000000000))))

(declare-fun d!80703 () Bool)

(assert (=> d!80703 e!307147))

(declare-fun c!62015 () Bool)

(assert (=> d!80703 (= c!62015 (and ((_ is Intermediate!4534) lt!242559) (undefined!5346 lt!242559)))))

(assert (=> d!80703 (= lt!242559 e!307146)))

(declare-fun c!62014 () Bool)

(assert (=> d!80703 (= c!62014 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!242558 () (_ BitVec 64))

(assert (=> d!80703 (= lt!242558 (select (arr!16060 a!3235) lt!242429))))

(assert (=> d!80703 (validMask!0 mask!3524)))

(assert (=> d!80703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242429 (select (arr!16060 a!3235) j!176) a!3235 mask!3524) lt!242559)))

(declare-fun b!526983 () Bool)

(assert (=> b!526983 (= e!307146 e!307145)))

(declare-fun c!62013 () Bool)

(assert (=> b!526983 (= c!62013 (or (= lt!242558 (select (arr!16060 a!3235) j!176)) (= (bvadd lt!242558 lt!242558) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!80703 c!62014) b!526977))

(assert (= (and d!80703 (not c!62014)) b!526983))

(assert (= (and b!526983 c!62013) b!526985))

(assert (= (and b!526983 (not c!62013)) b!526984))

(assert (= (and d!80703 c!62015) b!526979))

(assert (= (and d!80703 (not c!62015)) b!526981))

(assert (= (and b!526981 res!323566) b!526978))

(assert (= (and b!526978 (not res!323565)) b!526980))

(assert (= (and b!526980 (not res!323564)) b!526982))

(declare-fun m!507697 () Bool)

(assert (=> b!526978 m!507697))

(declare-fun m!507699 () Bool)

(assert (=> d!80703 m!507699))

(assert (=> d!80703 m!507547))

(assert (=> b!526980 m!507697))

(assert (=> b!526982 m!507697))

(assert (=> b!526984 m!507613))

(assert (=> b!526984 m!507613))

(assert (=> b!526984 m!507517))

(declare-fun m!507701 () Bool)

(assert (=> b!526984 m!507701))

(assert (=> b!526748 d!80703))

(declare-fun d!80705 () Bool)

(assert (=> d!80705 (= (validKeyInArray!0 (select (arr!16060 a!3235) j!176)) (and (not (= (select (arr!16060 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16060 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!526744 d!80705))

(declare-fun d!80707 () Bool)

(declare-fun lt!242562 () SeekEntryResult!4534)

(assert (=> d!80707 (and (or ((_ is Undefined!4534) lt!242562) (not ((_ is Found!4534) lt!242562)) (and (bvsge (index!20349 lt!242562) #b00000000000000000000000000000000) (bvslt (index!20349 lt!242562) (size!16424 a!3235)))) (or ((_ is Undefined!4534) lt!242562) ((_ is Found!4534) lt!242562) (not ((_ is MissingZero!4534) lt!242562)) (and (bvsge (index!20348 lt!242562) #b00000000000000000000000000000000) (bvslt (index!20348 lt!242562) (size!16424 a!3235)))) (or ((_ is Undefined!4534) lt!242562) ((_ is Found!4534) lt!242562) ((_ is MissingZero!4534) lt!242562) (not ((_ is MissingVacant!4534) lt!242562)) (and (bvsge (index!20351 lt!242562) #b00000000000000000000000000000000) (bvslt (index!20351 lt!242562) (size!16424 a!3235)))) (or ((_ is Undefined!4534) lt!242562) (ite ((_ is Found!4534) lt!242562) (= (select (arr!16060 a!3235) (index!20349 lt!242562)) k0!2280) (ite ((_ is MissingZero!4534) lt!242562) (= (select (arr!16060 a!3235) (index!20348 lt!242562)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4534) lt!242562) (= (select (arr!16060 a!3235) (index!20351 lt!242562)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307152 () SeekEntryResult!4534)

(assert (=> d!80707 (= lt!242562 e!307152)))

(declare-fun c!62017 () Bool)

(declare-fun lt!242564 () SeekEntryResult!4534)

(assert (=> d!80707 (= c!62017 (and ((_ is Intermediate!4534) lt!242564) (undefined!5346 lt!242564)))))

(assert (=> d!80707 (= lt!242564 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!80707 (validMask!0 mask!3524)))

(assert (=> d!80707 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!242562)))

(declare-fun b!526988 () Bool)

(declare-fun c!62016 () Bool)

(declare-fun lt!242563 () (_ BitVec 64))

(assert (=> b!526988 (= c!62016 (= lt!242563 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!307151 () SeekEntryResult!4534)

(declare-fun e!307150 () SeekEntryResult!4534)

(assert (=> b!526988 (= e!307151 e!307150)))

(declare-fun b!526989 () Bool)

(assert (=> b!526989 (= e!307151 (Found!4534 (index!20350 lt!242564)))))

(declare-fun b!526990 () Bool)

(assert (=> b!526990 (= e!307152 e!307151)))

(assert (=> b!526990 (= lt!242563 (select (arr!16060 a!3235) (index!20350 lt!242564)))))

(declare-fun c!62018 () Bool)

(assert (=> b!526990 (= c!62018 (= lt!242563 k0!2280))))

(declare-fun b!526991 () Bool)

(assert (=> b!526991 (= e!307152 Undefined!4534)))

(declare-fun b!526992 () Bool)

(assert (=> b!526992 (= e!307150 (MissingZero!4534 (index!20350 lt!242564)))))

(declare-fun b!526993 () Bool)

(assert (=> b!526993 (= e!307150 (seekKeyOrZeroReturnVacant!0 (x!49342 lt!242564) (index!20350 lt!242564) (index!20350 lt!242564) k0!2280 a!3235 mask!3524))))

(assert (= (and d!80707 c!62017) b!526991))

(assert (= (and d!80707 (not c!62017)) b!526990))

(assert (= (and b!526990 c!62018) b!526989))

(assert (= (and b!526990 (not c!62018)) b!526988))

(assert (= (and b!526988 c!62016) b!526992))

(assert (= (and b!526988 (not c!62016)) b!526993))

(declare-fun m!507703 () Bool)

(assert (=> d!80707 m!507703))

(declare-fun m!507705 () Bool)

(assert (=> d!80707 m!507705))

(declare-fun m!507707 () Bool)

(assert (=> d!80707 m!507707))

(assert (=> d!80707 m!507547))

(assert (=> d!80707 m!507703))

(declare-fun m!507709 () Bool)

(assert (=> d!80707 m!507709))

(declare-fun m!507711 () Bool)

(assert (=> d!80707 m!507711))

(declare-fun m!507713 () Bool)

(assert (=> b!526990 m!507713))

(declare-fun m!507715 () Bool)

(assert (=> b!526993 m!507715))

(assert (=> b!526745 d!80707))

(declare-fun b!526995 () Bool)

(declare-fun e!307156 () Bool)

(declare-fun call!31881 () Bool)

(assert (=> b!526995 (= e!307156 call!31881)))

(declare-fun bm!31878 () Bool)

(assert (=> bm!31878 (= call!31881 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!526996 () Bool)

(declare-fun e!307154 () Bool)

(assert (=> b!526996 (= e!307156 e!307154)))

(declare-fun lt!242566 () (_ BitVec 64))

(assert (=> b!526996 (= lt!242566 (select (arr!16060 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!242568 () Unit!16602)

(assert (=> b!526996 (= lt!242568 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!242566 #b00000000000000000000000000000000))))

(assert (=> b!526996 (arrayContainsKey!0 a!3235 lt!242566 #b00000000000000000000000000000000)))

(declare-fun lt!242567 () Unit!16602)

(assert (=> b!526996 (= lt!242567 lt!242568)))

(declare-fun res!323570 () Bool)

(assert (=> b!526996 (= res!323570 (= (seekEntryOrOpen!0 (select (arr!16060 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4534 #b00000000000000000000000000000000)))))

(assert (=> b!526996 (=> (not res!323570) (not e!307154))))

(declare-fun d!80709 () Bool)

(declare-fun res!323571 () Bool)

(declare-fun e!307155 () Bool)

(assert (=> d!80709 (=> res!323571 e!307155)))

(assert (=> d!80709 (= res!323571 (bvsge #b00000000000000000000000000000000 (size!16424 a!3235)))))

(assert (=> d!80709 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!307155)))

(declare-fun b!526997 () Bool)

(assert (=> b!526997 (= e!307154 call!31881)))

(declare-fun b!526998 () Bool)

(assert (=> b!526998 (= e!307155 e!307156)))

(declare-fun c!62019 () Bool)

(assert (=> b!526998 (= c!62019 (validKeyInArray!0 (select (arr!16060 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!80709 (not res!323571)) b!526998))

(assert (= (and b!526998 c!62019) b!526996))

(assert (= (and b!526998 (not c!62019)) b!526995))

(assert (= (and b!526996 res!323570) b!526997))

(assert (= (or b!526997 b!526995) bm!31878))

(declare-fun m!507719 () Bool)

(assert (=> bm!31878 m!507719))

(assert (=> b!526996 m!507595))

(declare-fun m!507721 () Bool)

(assert (=> b!526996 m!507721))

(declare-fun m!507723 () Bool)

(assert (=> b!526996 m!507723))

(assert (=> b!526996 m!507595))

(declare-fun m!507727 () Bool)

(assert (=> b!526996 m!507727))

(assert (=> b!526998 m!507595))

(assert (=> b!526998 m!507595))

(assert (=> b!526998 m!507597))

(assert (=> b!526746 d!80709))

(check-sat (not d!80655) (not b!526984) (not b!526807) (not d!80671) (not b!526975) (not d!80707) (not b!526996) (not b!526892) (not b!526840) (not d!80653) (not bm!31868) (not b!526814) (not bm!31877) (not d!80703) (not d!80699) (not b!526809) (not b!526967) (not b!526907) (not d!80701) (not b!526808) (not bm!31878) (not d!80651) (not b!526965) (not b!526993) (not b!526998))
(check-sat)

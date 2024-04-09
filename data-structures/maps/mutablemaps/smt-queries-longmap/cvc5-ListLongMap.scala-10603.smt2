; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124798 () Bool)

(assert start!124798)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1446688 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun e!814823 () Bool)

(assert (=> b!1446688 (= e!814823 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446689 () Bool)

(declare-fun e!814825 () Bool)

(declare-fun e!814817 () Bool)

(assert (=> b!1446689 (= e!814825 e!814817)))

(declare-fun res!978525 () Bool)

(assert (=> b!1446689 (=> (not res!978525) (not e!814817))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11640 0))(
  ( (MissingZero!11640 (index!48951 (_ BitVec 32))) (Found!11640 (index!48952 (_ BitVec 32))) (Intermediate!11640 (undefined!12452 Bool) (index!48953 (_ BitVec 32)) (x!130636 (_ BitVec 32))) (Undefined!11640) (MissingVacant!11640 (index!48954 (_ BitVec 32))) )
))
(declare-fun lt!634857 () SeekEntryResult!11640)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446689 (= res!978525 (= lt!634857 (Intermediate!11640 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98163 0))(
  ( (array!98164 (arr!47365 (Array (_ BitVec 32) (_ BitVec 64))) (size!47916 (_ BitVec 32))) )
))
(declare-fun lt!634855 () array!98163)

(declare-fun lt!634858 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98163 (_ BitVec 32)) SeekEntryResult!11640)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446689 (= lt!634857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634858 mask!2687) lt!634858 lt!634855 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98163)

(assert (=> b!1446689 (= lt!634858 (select (store (arr!47365 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446690 () Bool)

(declare-fun res!978524 () Bool)

(declare-fun e!814818 () Bool)

(assert (=> b!1446690 (=> (not res!978524) (not e!814818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446690 (= res!978524 (validKeyInArray!0 (select (arr!47365 a!2862) j!93)))))

(declare-fun b!1446691 () Bool)

(declare-fun res!978518 () Bool)

(assert (=> b!1446691 (=> (not res!978518) (not e!814818))))

(assert (=> b!1446691 (= res!978518 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47916 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47916 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47916 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446692 () Bool)

(declare-fun res!978520 () Bool)

(assert (=> b!1446692 (=> (not res!978520) (not e!814817))))

(assert (=> b!1446692 (= res!978520 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446693 () Bool)

(declare-fun res!978523 () Bool)

(assert (=> b!1446693 (=> (not res!978523) (not e!814817))))

(declare-fun e!814822 () Bool)

(assert (=> b!1446693 (= res!978523 e!814822)))

(declare-fun c!133598 () Bool)

(assert (=> b!1446693 (= c!133598 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446695 () Bool)

(declare-fun res!978529 () Bool)

(assert (=> b!1446695 (=> (not res!978529) (not e!814818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98163 (_ BitVec 32)) Bool)

(assert (=> b!1446695 (= res!978529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446696 () Bool)

(declare-fun res!978528 () Bool)

(assert (=> b!1446696 (=> (not res!978528) (not e!814818))))

(assert (=> b!1446696 (= res!978528 (validKeyInArray!0 (select (arr!47365 a!2862) i!1006)))))

(declare-fun b!1446697 () Bool)

(declare-fun e!814821 () Bool)

(assert (=> b!1446697 (= e!814817 (not e!814821))))

(declare-fun res!978526 () Bool)

(assert (=> b!1446697 (=> res!978526 e!814821)))

(assert (=> b!1446697 (= res!978526 (or (and (= (select (arr!47365 a!2862) index!646) (select (store (arr!47365 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47365 a!2862) index!646) (select (arr!47365 a!2862) j!93))) (not (= (select (arr!47365 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47365 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!814819 () Bool)

(assert (=> b!1446697 e!814819))

(declare-fun res!978531 () Bool)

(assert (=> b!1446697 (=> (not res!978531) (not e!814819))))

(declare-fun lt!634860 () SeekEntryResult!11640)

(assert (=> b!1446697 (= res!978531 (and (= lt!634860 (Found!11640 j!93)) (or (= (select (arr!47365 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47365 a!2862) intermediateBeforeIndex!19) (select (arr!47365 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98163 (_ BitVec 32)) SeekEntryResult!11640)

(assert (=> b!1446697 (= lt!634860 (seekEntryOrOpen!0 (select (arr!47365 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1446697 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48724 0))(
  ( (Unit!48725) )
))
(declare-fun lt!634856 () Unit!48724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98163 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48724)

(assert (=> b!1446697 (= lt!634856 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446698 () Bool)

(assert (=> b!1446698 (= e!814821 true)))

(declare-fun lt!634859 () SeekEntryResult!11640)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98163 (_ BitVec 32)) SeekEntryResult!11640)

(assert (=> b!1446698 (= lt!634859 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47365 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446699 () Bool)

(declare-fun res!978533 () Bool)

(assert (=> b!1446699 (=> (not res!978533) (not e!814818))))

(declare-datatypes ((List!34046 0))(
  ( (Nil!34043) (Cons!34042 (h!35392 (_ BitVec 64)) (t!48747 List!34046)) )
))
(declare-fun arrayNoDuplicates!0 (array!98163 (_ BitVec 32) List!34046) Bool)

(assert (=> b!1446699 (= res!978533 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34043))))

(declare-fun b!1446700 () Bool)

(assert (=> b!1446700 (= e!814822 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634858 lt!634855 mask!2687) (seekEntryOrOpen!0 lt!634858 lt!634855 mask!2687)))))

(declare-fun b!1446701 () Bool)

(declare-fun e!814824 () Bool)

(assert (=> b!1446701 (= e!814818 e!814824)))

(declare-fun res!978522 () Bool)

(assert (=> b!1446701 (=> (not res!978522) (not e!814824))))

(assert (=> b!1446701 (= res!978522 (= (select (store (arr!47365 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446701 (= lt!634855 (array!98164 (store (arr!47365 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47916 a!2862)))))

(declare-fun b!1446702 () Bool)

(declare-fun e!814820 () Bool)

(assert (=> b!1446702 (= e!814819 e!814820)))

(declare-fun res!978532 () Bool)

(assert (=> b!1446702 (=> res!978532 e!814820)))

(assert (=> b!1446702 (= res!978532 (or (and (= (select (arr!47365 a!2862) index!646) (select (store (arr!47365 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47365 a!2862) index!646) (select (arr!47365 a!2862) j!93))) (not (= (select (arr!47365 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446703 () Bool)

(declare-fun res!978534 () Bool)

(assert (=> b!1446703 (=> (not res!978534) (not e!814825))))

(declare-fun lt!634861 () SeekEntryResult!11640)

(assert (=> b!1446703 (= res!978534 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47365 a!2862) j!93) a!2862 mask!2687) lt!634861))))

(declare-fun res!978519 () Bool)

(assert (=> start!124798 (=> (not res!978519) (not e!814818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124798 (= res!978519 (validMask!0 mask!2687))))

(assert (=> start!124798 e!814818))

(assert (=> start!124798 true))

(declare-fun array_inv!36310 (array!98163) Bool)

(assert (=> start!124798 (array_inv!36310 a!2862)))

(declare-fun b!1446694 () Bool)

(assert (=> b!1446694 (= e!814820 e!814823)))

(declare-fun res!978530 () Bool)

(assert (=> b!1446694 (=> (not res!978530) (not e!814823))))

(assert (=> b!1446694 (= res!978530 (= lt!634860 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47365 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446704 () Bool)

(declare-fun res!978521 () Bool)

(assert (=> b!1446704 (=> (not res!978521) (not e!814818))))

(assert (=> b!1446704 (= res!978521 (and (= (size!47916 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47916 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47916 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446705 () Bool)

(assert (=> b!1446705 (= e!814824 e!814825)))

(declare-fun res!978527 () Bool)

(assert (=> b!1446705 (=> (not res!978527) (not e!814825))))

(assert (=> b!1446705 (= res!978527 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47365 a!2862) j!93) mask!2687) (select (arr!47365 a!2862) j!93) a!2862 mask!2687) lt!634861))))

(assert (=> b!1446705 (= lt!634861 (Intermediate!11640 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446706 () Bool)

(assert (=> b!1446706 (= e!814822 (= lt!634857 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634858 lt!634855 mask!2687)))))

(assert (= (and start!124798 res!978519) b!1446704))

(assert (= (and b!1446704 res!978521) b!1446696))

(assert (= (and b!1446696 res!978528) b!1446690))

(assert (= (and b!1446690 res!978524) b!1446695))

(assert (= (and b!1446695 res!978529) b!1446699))

(assert (= (and b!1446699 res!978533) b!1446691))

(assert (= (and b!1446691 res!978518) b!1446701))

(assert (= (and b!1446701 res!978522) b!1446705))

(assert (= (and b!1446705 res!978527) b!1446703))

(assert (= (and b!1446703 res!978534) b!1446689))

(assert (= (and b!1446689 res!978525) b!1446693))

(assert (= (and b!1446693 c!133598) b!1446706))

(assert (= (and b!1446693 (not c!133598)) b!1446700))

(assert (= (and b!1446693 res!978523) b!1446692))

(assert (= (and b!1446692 res!978520) b!1446697))

(assert (= (and b!1446697 res!978531) b!1446702))

(assert (= (and b!1446702 (not res!978532)) b!1446694))

(assert (= (and b!1446694 res!978530) b!1446688))

(assert (= (and b!1446697 (not res!978526)) b!1446698))

(declare-fun m!1335597 () Bool)

(assert (=> b!1446698 m!1335597))

(assert (=> b!1446698 m!1335597))

(declare-fun m!1335599 () Bool)

(assert (=> b!1446698 m!1335599))

(declare-fun m!1335601 () Bool)

(assert (=> b!1446695 m!1335601))

(declare-fun m!1335603 () Bool)

(assert (=> b!1446689 m!1335603))

(assert (=> b!1446689 m!1335603))

(declare-fun m!1335605 () Bool)

(assert (=> b!1446689 m!1335605))

(declare-fun m!1335607 () Bool)

(assert (=> b!1446689 m!1335607))

(declare-fun m!1335609 () Bool)

(assert (=> b!1446689 m!1335609))

(declare-fun m!1335611 () Bool)

(assert (=> b!1446699 m!1335611))

(assert (=> b!1446705 m!1335597))

(assert (=> b!1446705 m!1335597))

(declare-fun m!1335613 () Bool)

(assert (=> b!1446705 m!1335613))

(assert (=> b!1446705 m!1335613))

(assert (=> b!1446705 m!1335597))

(declare-fun m!1335615 () Bool)

(assert (=> b!1446705 m!1335615))

(declare-fun m!1335617 () Bool)

(assert (=> b!1446700 m!1335617))

(declare-fun m!1335619 () Bool)

(assert (=> b!1446700 m!1335619))

(assert (=> b!1446690 m!1335597))

(assert (=> b!1446690 m!1335597))

(declare-fun m!1335621 () Bool)

(assert (=> b!1446690 m!1335621))

(assert (=> b!1446703 m!1335597))

(assert (=> b!1446703 m!1335597))

(declare-fun m!1335623 () Bool)

(assert (=> b!1446703 m!1335623))

(declare-fun m!1335625 () Bool)

(assert (=> b!1446706 m!1335625))

(declare-fun m!1335627 () Bool)

(assert (=> b!1446702 m!1335627))

(assert (=> b!1446702 m!1335607))

(declare-fun m!1335629 () Bool)

(assert (=> b!1446702 m!1335629))

(assert (=> b!1446702 m!1335597))

(assert (=> b!1446694 m!1335597))

(assert (=> b!1446694 m!1335597))

(declare-fun m!1335631 () Bool)

(assert (=> b!1446694 m!1335631))

(assert (=> b!1446701 m!1335607))

(declare-fun m!1335633 () Bool)

(assert (=> b!1446701 m!1335633))

(declare-fun m!1335635 () Bool)

(assert (=> start!124798 m!1335635))

(declare-fun m!1335637 () Bool)

(assert (=> start!124798 m!1335637))

(declare-fun m!1335639 () Bool)

(assert (=> b!1446697 m!1335639))

(assert (=> b!1446697 m!1335607))

(declare-fun m!1335641 () Bool)

(assert (=> b!1446697 m!1335641))

(assert (=> b!1446697 m!1335629))

(assert (=> b!1446697 m!1335627))

(assert (=> b!1446697 m!1335597))

(declare-fun m!1335643 () Bool)

(assert (=> b!1446697 m!1335643))

(declare-fun m!1335645 () Bool)

(assert (=> b!1446697 m!1335645))

(assert (=> b!1446697 m!1335597))

(declare-fun m!1335647 () Bool)

(assert (=> b!1446696 m!1335647))

(assert (=> b!1446696 m!1335647))

(declare-fun m!1335649 () Bool)

(assert (=> b!1446696 m!1335649))

(push 1)


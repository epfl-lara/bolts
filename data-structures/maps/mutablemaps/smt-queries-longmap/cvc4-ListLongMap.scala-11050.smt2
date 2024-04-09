; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129182 () Bool)

(assert start!129182)

(declare-fun b!1515439 () Bool)

(declare-fun res!1035417 () Bool)

(declare-fun e!845715 () Bool)

(assert (=> b!1515439 (=> (not res!1035417) (not e!845715))))

(declare-datatypes ((array!100951 0))(
  ( (array!100952 (arr!48708 (Array (_ BitVec 32) (_ BitVec 64))) (size!49259 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100951)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515439 (= res!1035417 (validKeyInArray!0 (select (arr!48708 a!2804) i!961)))))

(declare-fun b!1515440 () Bool)

(declare-fun res!1035425 () Bool)

(declare-fun e!845717 () Bool)

(assert (=> b!1515440 (=> (not res!1035425) (not e!845717))))

(declare-datatypes ((SeekEntryResult!12900 0))(
  ( (MissingZero!12900 (index!53994 (_ BitVec 32))) (Found!12900 (index!53995 (_ BitVec 32))) (Intermediate!12900 (undefined!13712 Bool) (index!53996 (_ BitVec 32)) (x!135703 (_ BitVec 32))) (Undefined!12900) (MissingVacant!12900 (index!53997 (_ BitVec 32))) )
))
(declare-fun lt!656860 () SeekEntryResult!12900)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100951 (_ BitVec 32)) SeekEntryResult!12900)

(assert (=> b!1515440 (= res!1035425 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48708 a!2804) j!70) a!2804 mask!2512) lt!656860))))

(declare-fun e!845714 () Bool)

(declare-fun b!1515441 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100951 (_ BitVec 32)) SeekEntryResult!12900)

(assert (=> b!1515441 (= e!845714 (= (seekEntry!0 (select (arr!48708 a!2804) j!70) a!2804 mask!2512) (Found!12900 j!70)))))

(declare-fun b!1515442 () Bool)

(declare-fun res!1035416 () Bool)

(assert (=> b!1515442 (=> (not res!1035416) (not e!845715))))

(assert (=> b!1515442 (= res!1035416 (validKeyInArray!0 (select (arr!48708 a!2804) j!70)))))

(declare-fun b!1515443 () Bool)

(declare-fun res!1035423 () Bool)

(assert (=> b!1515443 (=> (not res!1035423) (not e!845715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100951 (_ BitVec 32)) Bool)

(assert (=> b!1515443 (= res!1035423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515444 () Bool)

(assert (=> b!1515444 (= e!845715 e!845717)))

(declare-fun res!1035418 () Bool)

(assert (=> b!1515444 (=> (not res!1035418) (not e!845717))))

(declare-fun lt!656861 () SeekEntryResult!12900)

(assert (=> b!1515444 (= res!1035418 (= lt!656861 lt!656860))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1515444 (= lt!656860 (Intermediate!12900 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515444 (= lt!656861 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48708 a!2804) j!70) mask!2512) (select (arr!48708 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515446 () Bool)

(declare-fun e!845719 () Bool)

(assert (=> b!1515446 (= e!845719 true)))

(declare-fun lt!656854 () SeekEntryResult!12900)

(declare-fun lt!656855 () SeekEntryResult!12900)

(assert (=> b!1515446 (= lt!656854 lt!656855)))

(declare-datatypes ((Unit!50624 0))(
  ( (Unit!50625) )
))
(declare-fun lt!656857 () Unit!50624)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100951 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50624)

(assert (=> b!1515446 (= lt!656857 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515447 () Bool)

(declare-fun res!1035422 () Bool)

(assert (=> b!1515447 (=> (not res!1035422) (not e!845715))))

(assert (=> b!1515447 (= res!1035422 (and (= (size!49259 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49259 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49259 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515448 () Bool)

(declare-fun res!1035419 () Bool)

(assert (=> b!1515448 (=> (not res!1035419) (not e!845715))))

(assert (=> b!1515448 (= res!1035419 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49259 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49259 a!2804))))))

(declare-fun b!1515449 () Bool)

(declare-fun res!1035414 () Bool)

(assert (=> b!1515449 (=> (not res!1035414) (not e!845715))))

(declare-datatypes ((List!35371 0))(
  ( (Nil!35368) (Cons!35367 (h!36780 (_ BitVec 64)) (t!50072 List!35371)) )
))
(declare-fun arrayNoDuplicates!0 (array!100951 (_ BitVec 32) List!35371) Bool)

(assert (=> b!1515449 (= res!1035414 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35368))))

(declare-fun b!1515445 () Bool)

(declare-fun e!845720 () Bool)

(declare-fun e!845716 () Bool)

(assert (=> b!1515445 (= e!845720 (not e!845716))))

(declare-fun res!1035421 () Bool)

(assert (=> b!1515445 (=> res!1035421 e!845716)))

(declare-fun lt!656863 () (_ BitVec 64))

(assert (=> b!1515445 (= res!1035421 (or (not (= (select (arr!48708 a!2804) j!70) lt!656863)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48708 a!2804) index!487) (select (arr!48708 a!2804) j!70)) (not (= (select (arr!48708 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1515445 e!845714))

(declare-fun res!1035426 () Bool)

(assert (=> b!1515445 (=> (not res!1035426) (not e!845714))))

(assert (=> b!1515445 (= res!1035426 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656859 () Unit!50624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100951 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50624)

(assert (=> b!1515445 (= lt!656859 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1035420 () Bool)

(assert (=> start!129182 (=> (not res!1035420) (not e!845715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129182 (= res!1035420 (validMask!0 mask!2512))))

(assert (=> start!129182 e!845715))

(assert (=> start!129182 true))

(declare-fun array_inv!37653 (array!100951) Bool)

(assert (=> start!129182 (array_inv!37653 a!2804)))

(declare-fun b!1515450 () Bool)

(assert (=> b!1515450 (= e!845717 e!845720)))

(declare-fun res!1035424 () Bool)

(assert (=> b!1515450 (=> (not res!1035424) (not e!845720))))

(declare-fun lt!656856 () array!100951)

(assert (=> b!1515450 (= res!1035424 (= lt!656861 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656863 mask!2512) lt!656863 lt!656856 mask!2512)))))

(assert (=> b!1515450 (= lt!656863 (select (store (arr!48708 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515450 (= lt!656856 (array!100952 (store (arr!48708 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49259 a!2804)))))

(declare-fun b!1515451 () Bool)

(assert (=> b!1515451 (= e!845716 e!845719)))

(declare-fun res!1035415 () Bool)

(assert (=> b!1515451 (=> res!1035415 e!845719)))

(assert (=> b!1515451 (= res!1035415 (not (= lt!656855 (Found!12900 j!70))))))

(declare-fun lt!656862 () SeekEntryResult!12900)

(assert (=> b!1515451 (= lt!656862 lt!656854)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100951 (_ BitVec 32)) SeekEntryResult!12900)

(assert (=> b!1515451 (= lt!656854 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656863 lt!656856 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100951 (_ BitVec 32)) SeekEntryResult!12900)

(assert (=> b!1515451 (= lt!656862 (seekEntryOrOpen!0 lt!656863 lt!656856 mask!2512))))

(declare-fun lt!656858 () SeekEntryResult!12900)

(assert (=> b!1515451 (= lt!656858 lt!656855)))

(assert (=> b!1515451 (= lt!656855 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48708 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515451 (= lt!656858 (seekEntryOrOpen!0 (select (arr!48708 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129182 res!1035420) b!1515447))

(assert (= (and b!1515447 res!1035422) b!1515439))

(assert (= (and b!1515439 res!1035417) b!1515442))

(assert (= (and b!1515442 res!1035416) b!1515443))

(assert (= (and b!1515443 res!1035423) b!1515449))

(assert (= (and b!1515449 res!1035414) b!1515448))

(assert (= (and b!1515448 res!1035419) b!1515444))

(assert (= (and b!1515444 res!1035418) b!1515440))

(assert (= (and b!1515440 res!1035425) b!1515450))

(assert (= (and b!1515450 res!1035424) b!1515445))

(assert (= (and b!1515445 res!1035426) b!1515441))

(assert (= (and b!1515445 (not res!1035421)) b!1515451))

(assert (= (and b!1515451 (not res!1035415)) b!1515446))

(declare-fun m!1398609 () Bool)

(assert (=> b!1515450 m!1398609))

(assert (=> b!1515450 m!1398609))

(declare-fun m!1398611 () Bool)

(assert (=> b!1515450 m!1398611))

(declare-fun m!1398613 () Bool)

(assert (=> b!1515450 m!1398613))

(declare-fun m!1398615 () Bool)

(assert (=> b!1515450 m!1398615))

(declare-fun m!1398617 () Bool)

(assert (=> b!1515441 m!1398617))

(assert (=> b!1515441 m!1398617))

(declare-fun m!1398619 () Bool)

(assert (=> b!1515441 m!1398619))

(declare-fun m!1398621 () Bool)

(assert (=> b!1515446 m!1398621))

(assert (=> b!1515444 m!1398617))

(assert (=> b!1515444 m!1398617))

(declare-fun m!1398623 () Bool)

(assert (=> b!1515444 m!1398623))

(assert (=> b!1515444 m!1398623))

(assert (=> b!1515444 m!1398617))

(declare-fun m!1398625 () Bool)

(assert (=> b!1515444 m!1398625))

(declare-fun m!1398627 () Bool)

(assert (=> b!1515443 m!1398627))

(assert (=> b!1515440 m!1398617))

(assert (=> b!1515440 m!1398617))

(declare-fun m!1398629 () Bool)

(assert (=> b!1515440 m!1398629))

(declare-fun m!1398631 () Bool)

(assert (=> b!1515439 m!1398631))

(assert (=> b!1515439 m!1398631))

(declare-fun m!1398633 () Bool)

(assert (=> b!1515439 m!1398633))

(declare-fun m!1398635 () Bool)

(assert (=> start!129182 m!1398635))

(declare-fun m!1398637 () Bool)

(assert (=> start!129182 m!1398637))

(assert (=> b!1515442 m!1398617))

(assert (=> b!1515442 m!1398617))

(declare-fun m!1398639 () Bool)

(assert (=> b!1515442 m!1398639))

(assert (=> b!1515445 m!1398617))

(declare-fun m!1398641 () Bool)

(assert (=> b!1515445 m!1398641))

(declare-fun m!1398643 () Bool)

(assert (=> b!1515445 m!1398643))

(declare-fun m!1398645 () Bool)

(assert (=> b!1515445 m!1398645))

(assert (=> b!1515451 m!1398617))

(declare-fun m!1398647 () Bool)

(assert (=> b!1515451 m!1398647))

(assert (=> b!1515451 m!1398617))

(declare-fun m!1398649 () Bool)

(assert (=> b!1515451 m!1398649))

(assert (=> b!1515451 m!1398617))

(declare-fun m!1398651 () Bool)

(assert (=> b!1515451 m!1398651))

(declare-fun m!1398653 () Bool)

(assert (=> b!1515451 m!1398653))

(declare-fun m!1398655 () Bool)

(assert (=> b!1515449 m!1398655))

(push 1)


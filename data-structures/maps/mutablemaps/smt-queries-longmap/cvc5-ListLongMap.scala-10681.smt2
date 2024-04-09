; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125266 () Bool)

(assert start!125266)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98631 0))(
  ( (array!98632 (arr!47599 (Array (_ BitVec 32) (_ BitVec 64))) (size!48150 (_ BitVec 32))) )
))
(declare-fun lt!639888 () array!98631)

(declare-fun e!821338 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!639891 () (_ BitVec 32))

(declare-fun lt!639889 () (_ BitVec 64))

(declare-fun b!1460779 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11874 0))(
  ( (MissingZero!11874 (index!49887 (_ BitVec 32))) (Found!11874 (index!49888 (_ BitVec 32))) (Intermediate!11874 (undefined!12686 Bool) (index!49889 (_ BitVec 32)) (x!131494 (_ BitVec 32))) (Undefined!11874) (MissingVacant!11874 (index!49890 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98631 (_ BitVec 32)) SeekEntryResult!11874)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98631 (_ BitVec 32)) SeekEntryResult!11874)

(assert (=> b!1460779 (= e!821338 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639891 intermediateAfterIndex!19 lt!639889 lt!639888 mask!2687) (seekEntryOrOpen!0 lt!639889 lt!639888 mask!2687))))))

(declare-fun b!1460781 () Bool)

(declare-fun e!821335 () Bool)

(declare-fun e!821337 () Bool)

(assert (=> b!1460781 (= e!821335 (not e!821337))))

(declare-fun res!990610 () Bool)

(assert (=> b!1460781 (=> res!990610 e!821337)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98631)

(assert (=> b!1460781 (= res!990610 (or (and (= (select (arr!47599 a!2862) index!646) (select (store (arr!47599 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47599 a!2862) index!646) (select (arr!47599 a!2862) j!93))) (= (select (arr!47599 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!821333 () Bool)

(assert (=> b!1460781 e!821333))

(declare-fun res!990616 () Bool)

(assert (=> b!1460781 (=> (not res!990616) (not e!821333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98631 (_ BitVec 32)) Bool)

(assert (=> b!1460781 (= res!990616 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49192 0))(
  ( (Unit!49193) )
))
(declare-fun lt!639886 () Unit!49192)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49192)

(assert (=> b!1460781 (= lt!639886 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460782 () Bool)

(declare-fun res!990615 () Bool)

(declare-fun e!821341 () Bool)

(assert (=> b!1460782 (=> (not res!990615) (not e!821341))))

(assert (=> b!1460782 (= res!990615 (and (= (size!48150 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48150 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48150 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460783 () Bool)

(declare-fun res!990612 () Bool)

(assert (=> b!1460783 (=> (not res!990612) (not e!821341))))

(assert (=> b!1460783 (= res!990612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460784 () Bool)

(declare-fun lt!639887 () SeekEntryResult!11874)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98631 (_ BitVec 32)) SeekEntryResult!11874)

(assert (=> b!1460784 (= e!821338 (not (= lt!639887 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639891 lt!639889 lt!639888 mask!2687))))))

(declare-fun b!1460785 () Bool)

(declare-fun e!821336 () Bool)

(declare-fun e!821334 () Bool)

(assert (=> b!1460785 (= e!821336 e!821334)))

(declare-fun res!990609 () Bool)

(assert (=> b!1460785 (=> (not res!990609) (not e!821334))))

(declare-fun lt!639892 () SeekEntryResult!11874)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460785 (= res!990609 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47599 a!2862) j!93) mask!2687) (select (arr!47599 a!2862) j!93) a!2862 mask!2687) lt!639892))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460785 (= lt!639892 (Intermediate!11874 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460786 () Bool)

(declare-fun e!821342 () Bool)

(assert (=> b!1460786 (= e!821342 true)))

(declare-fun lt!639890 () Bool)

(assert (=> b!1460786 (= lt!639890 e!821338)))

(declare-fun c!134600 () Bool)

(assert (=> b!1460786 (= c!134600 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1460787 () Bool)

(declare-fun res!990617 () Bool)

(assert (=> b!1460787 (=> (not res!990617) (not e!821341))))

(assert (=> b!1460787 (= res!990617 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48150 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48150 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48150 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460788 () Bool)

(assert (=> b!1460788 (= e!821333 (or (= (select (arr!47599 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47599 a!2862) intermediateBeforeIndex!19) (select (arr!47599 a!2862) j!93))))))

(declare-fun b!1460789 () Bool)

(assert (=> b!1460789 (= e!821334 e!821335)))

(declare-fun res!990624 () Bool)

(assert (=> b!1460789 (=> (not res!990624) (not e!821335))))

(assert (=> b!1460789 (= res!990624 (= lt!639887 (Intermediate!11874 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1460789 (= lt!639887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639889 mask!2687) lt!639889 lt!639888 mask!2687))))

(assert (=> b!1460789 (= lt!639889 (select (store (arr!47599 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!821340 () Bool)

(declare-fun b!1460790 () Bool)

(assert (=> b!1460790 (= e!821340 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639889 lt!639888 mask!2687) (seekEntryOrOpen!0 lt!639889 lt!639888 mask!2687)))))

(declare-fun b!1460791 () Bool)

(assert (=> b!1460791 (= e!821340 (= lt!639887 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639889 lt!639888 mask!2687)))))

(declare-fun b!1460792 () Bool)

(declare-fun res!990613 () Bool)

(assert (=> b!1460792 (=> (not res!990613) (not e!821334))))

(assert (=> b!1460792 (= res!990613 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47599 a!2862) j!93) a!2862 mask!2687) lt!639892))))

(declare-fun b!1460793 () Bool)

(declare-fun res!990619 () Bool)

(assert (=> b!1460793 (=> (not res!990619) (not e!821335))))

(assert (=> b!1460793 (= res!990619 e!821340)))

(declare-fun c!134599 () Bool)

(assert (=> b!1460793 (= c!134599 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460794 () Bool)

(declare-fun res!990608 () Bool)

(assert (=> b!1460794 (=> (not res!990608) (not e!821341))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460794 (= res!990608 (validKeyInArray!0 (select (arr!47599 a!2862) j!93)))))

(declare-fun b!1460795 () Bool)

(assert (=> b!1460795 (= e!821337 e!821342)))

(declare-fun res!990622 () Bool)

(assert (=> b!1460795 (=> res!990622 e!821342)))

(assert (=> b!1460795 (= res!990622 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639891 #b00000000000000000000000000000000) (bvsge lt!639891 (size!48150 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460795 (= lt!639891 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1460796 () Bool)

(declare-fun res!990621 () Bool)

(assert (=> b!1460796 (=> (not res!990621) (not e!821335))))

(assert (=> b!1460796 (= res!990621 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460780 () Bool)

(declare-fun res!990614 () Bool)

(assert (=> b!1460780 (=> (not res!990614) (not e!821341))))

(assert (=> b!1460780 (= res!990614 (validKeyInArray!0 (select (arr!47599 a!2862) i!1006)))))

(declare-fun res!990623 () Bool)

(assert (=> start!125266 (=> (not res!990623) (not e!821341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125266 (= res!990623 (validMask!0 mask!2687))))

(assert (=> start!125266 e!821341))

(assert (=> start!125266 true))

(declare-fun array_inv!36544 (array!98631) Bool)

(assert (=> start!125266 (array_inv!36544 a!2862)))

(declare-fun b!1460797 () Bool)

(declare-fun res!990618 () Bool)

(assert (=> b!1460797 (=> (not res!990618) (not e!821341))))

(declare-datatypes ((List!34280 0))(
  ( (Nil!34277) (Cons!34276 (h!35626 (_ BitVec 64)) (t!48981 List!34280)) )
))
(declare-fun arrayNoDuplicates!0 (array!98631 (_ BitVec 32) List!34280) Bool)

(assert (=> b!1460797 (= res!990618 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34277))))

(declare-fun b!1460798 () Bool)

(declare-fun res!990607 () Bool)

(assert (=> b!1460798 (=> res!990607 e!821342)))

(assert (=> b!1460798 (= res!990607 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639891 (select (arr!47599 a!2862) j!93) a!2862 mask!2687) lt!639892)))))

(declare-fun b!1460799 () Bool)

(assert (=> b!1460799 (= e!821341 e!821336)))

(declare-fun res!990611 () Bool)

(assert (=> b!1460799 (=> (not res!990611) (not e!821336))))

(assert (=> b!1460799 (= res!990611 (= (select (store (arr!47599 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460799 (= lt!639888 (array!98632 (store (arr!47599 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48150 a!2862)))))

(declare-fun b!1460800 () Bool)

(declare-fun res!990620 () Bool)

(assert (=> b!1460800 (=> (not res!990620) (not e!821333))))

(assert (=> b!1460800 (= res!990620 (= (seekEntryOrOpen!0 (select (arr!47599 a!2862) j!93) a!2862 mask!2687) (Found!11874 j!93)))))

(assert (= (and start!125266 res!990623) b!1460782))

(assert (= (and b!1460782 res!990615) b!1460780))

(assert (= (and b!1460780 res!990614) b!1460794))

(assert (= (and b!1460794 res!990608) b!1460783))

(assert (= (and b!1460783 res!990612) b!1460797))

(assert (= (and b!1460797 res!990618) b!1460787))

(assert (= (and b!1460787 res!990617) b!1460799))

(assert (= (and b!1460799 res!990611) b!1460785))

(assert (= (and b!1460785 res!990609) b!1460792))

(assert (= (and b!1460792 res!990613) b!1460789))

(assert (= (and b!1460789 res!990624) b!1460793))

(assert (= (and b!1460793 c!134599) b!1460791))

(assert (= (and b!1460793 (not c!134599)) b!1460790))

(assert (= (and b!1460793 res!990619) b!1460796))

(assert (= (and b!1460796 res!990621) b!1460781))

(assert (= (and b!1460781 res!990616) b!1460800))

(assert (= (and b!1460800 res!990620) b!1460788))

(assert (= (and b!1460781 (not res!990610)) b!1460795))

(assert (= (and b!1460795 (not res!990622)) b!1460798))

(assert (= (and b!1460798 (not res!990607)) b!1460786))

(assert (= (and b!1460786 c!134600) b!1460784))

(assert (= (and b!1460786 (not c!134600)) b!1460779))

(declare-fun m!1348485 () Bool)

(assert (=> b!1460794 m!1348485))

(assert (=> b!1460794 m!1348485))

(declare-fun m!1348487 () Bool)

(assert (=> b!1460794 m!1348487))

(declare-fun m!1348489 () Bool)

(assert (=> b!1460780 m!1348489))

(assert (=> b!1460780 m!1348489))

(declare-fun m!1348491 () Bool)

(assert (=> b!1460780 m!1348491))

(declare-fun m!1348493 () Bool)

(assert (=> b!1460779 m!1348493))

(declare-fun m!1348495 () Bool)

(assert (=> b!1460779 m!1348495))

(declare-fun m!1348497 () Bool)

(assert (=> b!1460788 m!1348497))

(assert (=> b!1460788 m!1348485))

(declare-fun m!1348499 () Bool)

(assert (=> b!1460789 m!1348499))

(assert (=> b!1460789 m!1348499))

(declare-fun m!1348501 () Bool)

(assert (=> b!1460789 m!1348501))

(declare-fun m!1348503 () Bool)

(assert (=> b!1460789 m!1348503))

(declare-fun m!1348505 () Bool)

(assert (=> b!1460789 m!1348505))

(assert (=> b!1460799 m!1348503))

(declare-fun m!1348507 () Bool)

(assert (=> b!1460799 m!1348507))

(declare-fun m!1348509 () Bool)

(assert (=> b!1460797 m!1348509))

(declare-fun m!1348511 () Bool)

(assert (=> b!1460781 m!1348511))

(assert (=> b!1460781 m!1348503))

(declare-fun m!1348513 () Bool)

(assert (=> b!1460781 m!1348513))

(declare-fun m!1348515 () Bool)

(assert (=> b!1460781 m!1348515))

(declare-fun m!1348517 () Bool)

(assert (=> b!1460781 m!1348517))

(assert (=> b!1460781 m!1348485))

(declare-fun m!1348519 () Bool)

(assert (=> b!1460791 m!1348519))

(assert (=> b!1460798 m!1348485))

(assert (=> b!1460798 m!1348485))

(declare-fun m!1348521 () Bool)

(assert (=> b!1460798 m!1348521))

(assert (=> b!1460792 m!1348485))

(assert (=> b!1460792 m!1348485))

(declare-fun m!1348523 () Bool)

(assert (=> b!1460792 m!1348523))

(declare-fun m!1348525 () Bool)

(assert (=> b!1460783 m!1348525))

(declare-fun m!1348527 () Bool)

(assert (=> b!1460790 m!1348527))

(assert (=> b!1460790 m!1348495))

(declare-fun m!1348529 () Bool)

(assert (=> start!125266 m!1348529))

(declare-fun m!1348531 () Bool)

(assert (=> start!125266 m!1348531))

(declare-fun m!1348533 () Bool)

(assert (=> b!1460784 m!1348533))

(declare-fun m!1348535 () Bool)

(assert (=> b!1460795 m!1348535))

(assert (=> b!1460800 m!1348485))

(assert (=> b!1460800 m!1348485))

(declare-fun m!1348537 () Bool)

(assert (=> b!1460800 m!1348537))

(assert (=> b!1460785 m!1348485))

(assert (=> b!1460785 m!1348485))

(declare-fun m!1348539 () Bool)

(assert (=> b!1460785 m!1348539))

(assert (=> b!1460785 m!1348539))

(assert (=> b!1460785 m!1348485))

(declare-fun m!1348541 () Bool)

(assert (=> b!1460785 m!1348541))

(push 1)


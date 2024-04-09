; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125136 () Bool)

(assert start!125136)

(declare-fun b!1456660 () Bool)

(declare-fun res!987197 () Bool)

(declare-fun e!819557 () Bool)

(assert (=> b!1456660 (=> (not res!987197) (not e!819557))))

(declare-datatypes ((array!98501 0))(
  ( (array!98502 (arr!47534 (Array (_ BitVec 32) (_ BitVec 64))) (size!48085 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98501)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11809 0))(
  ( (MissingZero!11809 (index!49627 (_ BitVec 32))) (Found!11809 (index!49628 (_ BitVec 32))) (Intermediate!11809 (undefined!12621 Bool) (index!49629 (_ BitVec 32)) (x!131253 (_ BitVec 32))) (Undefined!11809) (MissingVacant!11809 (index!49630 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98501 (_ BitVec 32)) SeekEntryResult!11809)

(assert (=> b!1456660 (= res!987197 (= (seekEntryOrOpen!0 (select (arr!47534 a!2862) j!93) a!2862 mask!2687) (Found!11809 j!93)))))

(declare-fun b!1456661 () Bool)

(declare-fun res!987201 () Bool)

(declare-fun e!819558 () Bool)

(assert (=> b!1456661 (=> (not res!987201) (not e!819558))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456661 (= res!987201 (validKeyInArray!0 (select (arr!47534 a!2862) i!1006)))))

(declare-fun b!1456662 () Bool)

(declare-fun res!987211 () Bool)

(assert (=> b!1456662 (=> (not res!987211) (not e!819558))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1456662 (= res!987211 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48085 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48085 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48085 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456663 () Bool)

(declare-fun res!987208 () Bool)

(assert (=> b!1456663 (=> (not res!987208) (not e!819558))))

(assert (=> b!1456663 (= res!987208 (and (= (size!48085 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48085 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48085 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!819556 () Bool)

(declare-fun lt!638366 () SeekEntryResult!11809)

(declare-fun lt!638369 () (_ BitVec 64))

(declare-fun b!1456664 () Bool)

(declare-fun lt!638367 () array!98501)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98501 (_ BitVec 32)) SeekEntryResult!11809)

(assert (=> b!1456664 (= e!819556 (= lt!638366 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638369 lt!638367 mask!2687)))))

(declare-fun b!1456665 () Bool)

(declare-fun res!987198 () Bool)

(assert (=> b!1456665 (=> (not res!987198) (not e!819558))))

(declare-datatypes ((List!34215 0))(
  ( (Nil!34212) (Cons!34211 (h!35561 (_ BitVec 64)) (t!48916 List!34215)) )
))
(declare-fun arrayNoDuplicates!0 (array!98501 (_ BitVec 32) List!34215) Bool)

(assert (=> b!1456665 (= res!987198 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34212))))

(declare-fun b!1456666 () Bool)

(assert (=> b!1456666 (= e!819557 (and (or (= (select (arr!47534 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47534 a!2862) intermediateBeforeIndex!19) (select (arr!47534 a!2862) j!93))) (let ((bdg!53272 (select (store (arr!47534 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47534 a!2862) index!646) bdg!53272) (= (select (arr!47534 a!2862) index!646) (select (arr!47534 a!2862) j!93))) (= (select (arr!47534 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53272 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456667 () Bool)

(declare-fun res!987199 () Bool)

(declare-fun e!819561 () Bool)

(assert (=> b!1456667 (=> (not res!987199) (not e!819561))))

(assert (=> b!1456667 (= res!987199 e!819556)))

(declare-fun c!134245 () Bool)

(assert (=> b!1456667 (= c!134245 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!987207 () Bool)

(assert (=> start!125136 (=> (not res!987207) (not e!819558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125136 (= res!987207 (validMask!0 mask!2687))))

(assert (=> start!125136 e!819558))

(assert (=> start!125136 true))

(declare-fun array_inv!36479 (array!98501) Bool)

(assert (=> start!125136 (array_inv!36479 a!2862)))

(declare-fun b!1456668 () Bool)

(declare-fun e!819555 () Bool)

(declare-fun e!819562 () Bool)

(assert (=> b!1456668 (= e!819555 e!819562)))

(declare-fun res!987213 () Bool)

(assert (=> b!1456668 (=> (not res!987213) (not e!819562))))

(declare-fun lt!638368 () SeekEntryResult!11809)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456668 (= res!987213 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47534 a!2862) j!93) mask!2687) (select (arr!47534 a!2862) j!93) a!2862 mask!2687) lt!638368))))

(assert (=> b!1456668 (= lt!638368 (Intermediate!11809 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456669 () Bool)

(declare-fun e!819563 () Bool)

(assert (=> b!1456669 (= e!819561 (not e!819563))))

(declare-fun res!987210 () Bool)

(assert (=> b!1456669 (=> res!987210 e!819563)))

(assert (=> b!1456669 (= res!987210 (or (and (= (select (arr!47534 a!2862) index!646) (select (store (arr!47534 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47534 a!2862) index!646) (select (arr!47534 a!2862) j!93))) (= (select (arr!47534 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456669 e!819557))

(declare-fun res!987206 () Bool)

(assert (=> b!1456669 (=> (not res!987206) (not e!819557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98501 (_ BitVec 32)) Bool)

(assert (=> b!1456669 (= res!987206 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49062 0))(
  ( (Unit!49063) )
))
(declare-fun lt!638365 () Unit!49062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98501 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49062)

(assert (=> b!1456669 (= lt!638365 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456670 () Bool)

(declare-fun res!987202 () Bool)

(assert (=> b!1456670 (=> (not res!987202) (not e!819558))))

(assert (=> b!1456670 (= res!987202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!638371 () SeekEntryResult!11809)

(declare-fun e!819560 () Bool)

(declare-fun b!1456671 () Bool)

(declare-fun lt!638364 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98501 (_ BitVec 32)) SeekEntryResult!11809)

(assert (=> b!1456671 (= e!819560 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638364 intermediateAfterIndex!19 lt!638369 lt!638367 mask!2687) lt!638371)))))

(declare-fun b!1456672 () Bool)

(declare-fun res!987204 () Bool)

(declare-fun e!819559 () Bool)

(assert (=> b!1456672 (=> res!987204 e!819559)))

(assert (=> b!1456672 (= res!987204 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638364 (select (arr!47534 a!2862) j!93) a!2862 mask!2687) lt!638368)))))

(declare-fun b!1456673 () Bool)

(declare-fun res!987209 () Bool)

(assert (=> b!1456673 (=> (not res!987209) (not e!819558))))

(assert (=> b!1456673 (= res!987209 (validKeyInArray!0 (select (arr!47534 a!2862) j!93)))))

(declare-fun b!1456674 () Bool)

(assert (=> b!1456674 (= e!819560 (not (= lt!638366 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638364 lt!638369 lt!638367 mask!2687))))))

(declare-fun b!1456675 () Bool)

(declare-fun res!987196 () Bool)

(assert (=> b!1456675 (=> (not res!987196) (not e!819561))))

(assert (=> b!1456675 (= res!987196 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456676 () Bool)

(assert (=> b!1456676 (= e!819556 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638369 lt!638367 mask!2687) (seekEntryOrOpen!0 lt!638369 lt!638367 mask!2687)))))

(declare-fun b!1456677 () Bool)

(assert (=> b!1456677 (= e!819559 true)))

(declare-fun lt!638370 () Bool)

(assert (=> b!1456677 (= lt!638370 e!819560)))

(declare-fun c!134246 () Bool)

(assert (=> b!1456677 (= c!134246 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456678 () Bool)

(assert (=> b!1456678 (= e!819563 e!819559)))

(declare-fun res!987200 () Bool)

(assert (=> b!1456678 (=> res!987200 e!819559)))

(assert (=> b!1456678 (= res!987200 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638364 #b00000000000000000000000000000000) (bvsge lt!638364 (size!48085 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456678 (= lt!638364 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456678 (= lt!638371 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638369 lt!638367 mask!2687))))

(assert (=> b!1456678 (= lt!638371 (seekEntryOrOpen!0 lt!638369 lt!638367 mask!2687))))

(declare-fun b!1456679 () Bool)

(declare-fun res!987203 () Bool)

(assert (=> b!1456679 (=> (not res!987203) (not e!819562))))

(assert (=> b!1456679 (= res!987203 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47534 a!2862) j!93) a!2862 mask!2687) lt!638368))))

(declare-fun b!1456680 () Bool)

(assert (=> b!1456680 (= e!819562 e!819561)))

(declare-fun res!987212 () Bool)

(assert (=> b!1456680 (=> (not res!987212) (not e!819561))))

(assert (=> b!1456680 (= res!987212 (= lt!638366 (Intermediate!11809 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1456680 (= lt!638366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638369 mask!2687) lt!638369 lt!638367 mask!2687))))

(assert (=> b!1456680 (= lt!638369 (select (store (arr!47534 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456681 () Bool)

(assert (=> b!1456681 (= e!819558 e!819555)))

(declare-fun res!987205 () Bool)

(assert (=> b!1456681 (=> (not res!987205) (not e!819555))))

(assert (=> b!1456681 (= res!987205 (= (select (store (arr!47534 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456681 (= lt!638367 (array!98502 (store (arr!47534 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48085 a!2862)))))

(assert (= (and start!125136 res!987207) b!1456663))

(assert (= (and b!1456663 res!987208) b!1456661))

(assert (= (and b!1456661 res!987201) b!1456673))

(assert (= (and b!1456673 res!987209) b!1456670))

(assert (= (and b!1456670 res!987202) b!1456665))

(assert (= (and b!1456665 res!987198) b!1456662))

(assert (= (and b!1456662 res!987211) b!1456681))

(assert (= (and b!1456681 res!987205) b!1456668))

(assert (= (and b!1456668 res!987213) b!1456679))

(assert (= (and b!1456679 res!987203) b!1456680))

(assert (= (and b!1456680 res!987212) b!1456667))

(assert (= (and b!1456667 c!134245) b!1456664))

(assert (= (and b!1456667 (not c!134245)) b!1456676))

(assert (= (and b!1456667 res!987199) b!1456675))

(assert (= (and b!1456675 res!987196) b!1456669))

(assert (= (and b!1456669 res!987206) b!1456660))

(assert (= (and b!1456660 res!987197) b!1456666))

(assert (= (and b!1456669 (not res!987210)) b!1456678))

(assert (= (and b!1456678 (not res!987200)) b!1456672))

(assert (= (and b!1456672 (not res!987204)) b!1456677))

(assert (= (and b!1456677 c!134246) b!1456674))

(assert (= (and b!1456677 (not c!134246)) b!1456671))

(declare-fun m!1344781 () Bool)

(assert (=> b!1456673 m!1344781))

(assert (=> b!1456673 m!1344781))

(declare-fun m!1344783 () Bool)

(assert (=> b!1456673 m!1344783))

(declare-fun m!1344785 () Bool)

(assert (=> start!125136 m!1344785))

(declare-fun m!1344787 () Bool)

(assert (=> start!125136 m!1344787))

(declare-fun m!1344789 () Bool)

(assert (=> b!1456674 m!1344789))

(declare-fun m!1344791 () Bool)

(assert (=> b!1456664 m!1344791))

(declare-fun m!1344793 () Bool)

(assert (=> b!1456678 m!1344793))

(declare-fun m!1344795 () Bool)

(assert (=> b!1456678 m!1344795))

(declare-fun m!1344797 () Bool)

(assert (=> b!1456678 m!1344797))

(declare-fun m!1344799 () Bool)

(assert (=> b!1456661 m!1344799))

(assert (=> b!1456661 m!1344799))

(declare-fun m!1344801 () Bool)

(assert (=> b!1456661 m!1344801))

(declare-fun m!1344803 () Bool)

(assert (=> b!1456671 m!1344803))

(assert (=> b!1456660 m!1344781))

(assert (=> b!1456660 m!1344781))

(declare-fun m!1344805 () Bool)

(assert (=> b!1456660 m!1344805))

(declare-fun m!1344807 () Bool)

(assert (=> b!1456669 m!1344807))

(declare-fun m!1344809 () Bool)

(assert (=> b!1456669 m!1344809))

(declare-fun m!1344811 () Bool)

(assert (=> b!1456669 m!1344811))

(declare-fun m!1344813 () Bool)

(assert (=> b!1456669 m!1344813))

(declare-fun m!1344815 () Bool)

(assert (=> b!1456669 m!1344815))

(assert (=> b!1456669 m!1344781))

(assert (=> b!1456666 m!1344809))

(declare-fun m!1344817 () Bool)

(assert (=> b!1456666 m!1344817))

(assert (=> b!1456666 m!1344811))

(assert (=> b!1456666 m!1344813))

(assert (=> b!1456666 m!1344781))

(declare-fun m!1344819 () Bool)

(assert (=> b!1456670 m!1344819))

(assert (=> b!1456679 m!1344781))

(assert (=> b!1456679 m!1344781))

(declare-fun m!1344821 () Bool)

(assert (=> b!1456679 m!1344821))

(assert (=> b!1456676 m!1344795))

(assert (=> b!1456676 m!1344797))

(assert (=> b!1456681 m!1344809))

(declare-fun m!1344823 () Bool)

(assert (=> b!1456681 m!1344823))

(assert (=> b!1456668 m!1344781))

(assert (=> b!1456668 m!1344781))

(declare-fun m!1344825 () Bool)

(assert (=> b!1456668 m!1344825))

(assert (=> b!1456668 m!1344825))

(assert (=> b!1456668 m!1344781))

(declare-fun m!1344827 () Bool)

(assert (=> b!1456668 m!1344827))

(declare-fun m!1344829 () Bool)

(assert (=> b!1456665 m!1344829))

(declare-fun m!1344831 () Bool)

(assert (=> b!1456680 m!1344831))

(assert (=> b!1456680 m!1344831))

(declare-fun m!1344833 () Bool)

(assert (=> b!1456680 m!1344833))

(assert (=> b!1456680 m!1344809))

(declare-fun m!1344835 () Bool)

(assert (=> b!1456680 m!1344835))

(assert (=> b!1456672 m!1344781))

(assert (=> b!1456672 m!1344781))

(declare-fun m!1344837 () Bool)

(assert (=> b!1456672 m!1344837))

(check-sat (not b!1456674) (not b!1456661) (not b!1456676) (not b!1456680) (not b!1456672) (not b!1456660) (not b!1456679) (not b!1456668) (not b!1456664) (not b!1456669) (not b!1456678) (not b!1456671) (not b!1456673) (not b!1456670) (not start!125136) (not b!1456665))
(check-sat)

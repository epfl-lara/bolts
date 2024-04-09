; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126702 () Bool)

(assert start!126702)

(declare-fun b!1486796 () Bool)

(declare-fun e!833474 () Bool)

(declare-fun e!833470 () Bool)

(assert (=> b!1486796 (= e!833474 e!833470)))

(declare-fun res!1011228 () Bool)

(assert (=> b!1486796 (=> (not res!1011228) (not e!833470))))

(declare-fun lt!648555 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486796 (= res!1011228 (and (= index!646 intermediateAfterIndex!19) (= lt!648555 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486797 () Bool)

(declare-fun res!1011219 () Bool)

(declare-fun e!833472 () Bool)

(assert (=> b!1486797 (=> (not res!1011219) (not e!833472))))

(declare-datatypes ((array!99518 0))(
  ( (array!99519 (arr!48029 (Array (_ BitVec 32) (_ BitVec 64))) (size!48580 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99518)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486797 (= res!1011219 (validKeyInArray!0 (select (arr!48029 a!2862) i!1006)))))

(declare-fun b!1486798 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!648557 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!833465 () Bool)

(declare-fun lt!648554 () array!99518)

(declare-datatypes ((SeekEntryResult!12292 0))(
  ( (MissingZero!12292 (index!51559 (_ BitVec 32))) (Found!12292 (index!51560 (_ BitVec 32))) (Intermediate!12292 (undefined!13104 Bool) (index!51561 (_ BitVec 32)) (x!133143 (_ BitVec 32))) (Undefined!12292) (MissingVacant!12292 (index!51562 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99518 (_ BitVec 32)) SeekEntryResult!12292)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99518 (_ BitVec 32)) SeekEntryResult!12292)

(assert (=> b!1486798 (= e!833465 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648557 lt!648554 mask!2687) (seekEntryOrOpen!0 lt!648557 lt!648554 mask!2687)))))

(declare-fun b!1486799 () Bool)

(declare-fun res!1011227 () Bool)

(declare-fun e!833471 () Bool)

(assert (=> b!1486799 (=> (not res!1011227) (not e!833471))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1486799 (= res!1011227 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1011215 () Bool)

(assert (=> start!126702 (=> (not res!1011215) (not e!833472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126702 (= res!1011215 (validMask!0 mask!2687))))

(assert (=> start!126702 e!833472))

(assert (=> start!126702 true))

(declare-fun array_inv!36974 (array!99518) Bool)

(assert (=> start!126702 (array_inv!36974 a!2862)))

(declare-fun b!1486800 () Bool)

(declare-fun res!1011214 () Bool)

(assert (=> b!1486800 (=> (not res!1011214) (not e!833472))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1486800 (= res!1011214 (and (= (size!48580 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48580 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48580 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486801 () Bool)

(declare-fun res!1011231 () Bool)

(declare-fun e!833469 () Bool)

(assert (=> b!1486801 (=> (not res!1011231) (not e!833469))))

(declare-fun lt!648556 () SeekEntryResult!12292)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99518 (_ BitVec 32)) SeekEntryResult!12292)

(assert (=> b!1486801 (= res!1011231 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48029 a!2862) j!93) a!2862 mask!2687) lt!648556))))

(declare-fun b!1486802 () Bool)

(declare-fun res!1011230 () Bool)

(assert (=> b!1486802 (=> (not res!1011230) (not e!833472))))

(declare-datatypes ((List!34710 0))(
  ( (Nil!34707) (Cons!34706 (h!36083 (_ BitVec 64)) (t!49411 List!34710)) )
))
(declare-fun arrayNoDuplicates!0 (array!99518 (_ BitVec 32) List!34710) Bool)

(assert (=> b!1486802 (= res!1011230 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34707))))

(declare-fun b!1486803 () Bool)

(declare-fun e!833468 () Bool)

(assert (=> b!1486803 (= e!833471 (not e!833468))))

(declare-fun res!1011226 () Bool)

(assert (=> b!1486803 (=> res!1011226 e!833468)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1486803 (= res!1011226 (or (and (= (select (arr!48029 a!2862) index!646) (select (store (arr!48029 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48029 a!2862) index!646) (select (arr!48029 a!2862) j!93))) (= (select (arr!48029 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!833466 () Bool)

(assert (=> b!1486803 e!833466))

(declare-fun res!1011217 () Bool)

(assert (=> b!1486803 (=> (not res!1011217) (not e!833466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99518 (_ BitVec 32)) Bool)

(assert (=> b!1486803 (= res!1011217 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49872 0))(
  ( (Unit!49873) )
))
(declare-fun lt!648558 () Unit!49872)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99518 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49872)

(assert (=> b!1486803 (= lt!648558 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486804 () Bool)

(assert (=> b!1486804 (= e!833470 (= (seekEntryOrOpen!0 lt!648557 lt!648554 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648557 lt!648554 mask!2687)))))

(declare-fun b!1486805 () Bool)

(declare-fun res!1011221 () Bool)

(assert (=> b!1486805 (=> (not res!1011221) (not e!833471))))

(assert (=> b!1486805 (= res!1011221 e!833465)))

(declare-fun c!137318 () Bool)

(assert (=> b!1486805 (= c!137318 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486806 () Bool)

(assert (=> b!1486806 (= e!833466 e!833474)))

(declare-fun res!1011224 () Bool)

(assert (=> b!1486806 (=> res!1011224 e!833474)))

(assert (=> b!1486806 (= res!1011224 (or (and (= (select (arr!48029 a!2862) index!646) lt!648555) (= (select (arr!48029 a!2862) index!646) (select (arr!48029 a!2862) j!93))) (= (select (arr!48029 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486806 (= lt!648555 (select (store (arr!48029 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486807 () Bool)

(declare-fun res!1011216 () Bool)

(assert (=> b!1486807 (=> (not res!1011216) (not e!833472))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1486807 (= res!1011216 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48580 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48580 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48580 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486808 () Bool)

(declare-fun res!1011218 () Bool)

(assert (=> b!1486808 (=> (not res!1011218) (not e!833466))))

(assert (=> b!1486808 (= res!1011218 (= (seekEntryOrOpen!0 (select (arr!48029 a!2862) j!93) a!2862 mask!2687) (Found!12292 j!93)))))

(declare-fun b!1486809 () Bool)

(assert (=> b!1486809 (= e!833468 true)))

(declare-fun lt!648559 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486809 (= lt!648559 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486810 () Bool)

(declare-fun e!833473 () Bool)

(assert (=> b!1486810 (= e!833472 e!833473)))

(declare-fun res!1011223 () Bool)

(assert (=> b!1486810 (=> (not res!1011223) (not e!833473))))

(assert (=> b!1486810 (= res!1011223 (= (select (store (arr!48029 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486810 (= lt!648554 (array!99519 (store (arr!48029 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48580 a!2862)))))

(declare-fun b!1486811 () Bool)

(declare-fun res!1011225 () Bool)

(assert (=> b!1486811 (=> (not res!1011225) (not e!833466))))

(assert (=> b!1486811 (= res!1011225 (or (= (select (arr!48029 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48029 a!2862) intermediateBeforeIndex!19) (select (arr!48029 a!2862) j!93))))))

(declare-fun b!1486812 () Bool)

(declare-fun res!1011222 () Bool)

(assert (=> b!1486812 (=> (not res!1011222) (not e!833472))))

(assert (=> b!1486812 (= res!1011222 (validKeyInArray!0 (select (arr!48029 a!2862) j!93)))))

(declare-fun b!1486813 () Bool)

(assert (=> b!1486813 (= e!833473 e!833469)))

(declare-fun res!1011220 () Bool)

(assert (=> b!1486813 (=> (not res!1011220) (not e!833469))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486813 (= res!1011220 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48029 a!2862) j!93) mask!2687) (select (arr!48029 a!2862) j!93) a!2862 mask!2687) lt!648556))))

(assert (=> b!1486813 (= lt!648556 (Intermediate!12292 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!648553 () SeekEntryResult!12292)

(declare-fun b!1486814 () Bool)

(assert (=> b!1486814 (= e!833465 (= lt!648553 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648557 lt!648554 mask!2687)))))

(declare-fun b!1486815 () Bool)

(assert (=> b!1486815 (= e!833469 e!833471)))

(declare-fun res!1011213 () Bool)

(assert (=> b!1486815 (=> (not res!1011213) (not e!833471))))

(assert (=> b!1486815 (= res!1011213 (= lt!648553 (Intermediate!12292 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1486815 (= lt!648553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648557 mask!2687) lt!648557 lt!648554 mask!2687))))

(assert (=> b!1486815 (= lt!648557 (select (store (arr!48029 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486816 () Bool)

(declare-fun res!1011229 () Bool)

(assert (=> b!1486816 (=> (not res!1011229) (not e!833472))))

(assert (=> b!1486816 (= res!1011229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126702 res!1011215) b!1486800))

(assert (= (and b!1486800 res!1011214) b!1486797))

(assert (= (and b!1486797 res!1011219) b!1486812))

(assert (= (and b!1486812 res!1011222) b!1486816))

(assert (= (and b!1486816 res!1011229) b!1486802))

(assert (= (and b!1486802 res!1011230) b!1486807))

(assert (= (and b!1486807 res!1011216) b!1486810))

(assert (= (and b!1486810 res!1011223) b!1486813))

(assert (= (and b!1486813 res!1011220) b!1486801))

(assert (= (and b!1486801 res!1011231) b!1486815))

(assert (= (and b!1486815 res!1011213) b!1486805))

(assert (= (and b!1486805 c!137318) b!1486814))

(assert (= (and b!1486805 (not c!137318)) b!1486798))

(assert (= (and b!1486805 res!1011221) b!1486799))

(assert (= (and b!1486799 res!1011227) b!1486803))

(assert (= (and b!1486803 res!1011217) b!1486808))

(assert (= (and b!1486808 res!1011218) b!1486811))

(assert (= (and b!1486811 res!1011225) b!1486806))

(assert (= (and b!1486806 (not res!1011224)) b!1486796))

(assert (= (and b!1486796 res!1011228) b!1486804))

(assert (= (and b!1486803 (not res!1011226)) b!1486809))

(declare-fun m!1371655 () Bool)

(assert (=> b!1486812 m!1371655))

(assert (=> b!1486812 m!1371655))

(declare-fun m!1371657 () Bool)

(assert (=> b!1486812 m!1371657))

(declare-fun m!1371659 () Bool)

(assert (=> b!1486798 m!1371659))

(declare-fun m!1371661 () Bool)

(assert (=> b!1486798 m!1371661))

(assert (=> b!1486801 m!1371655))

(assert (=> b!1486801 m!1371655))

(declare-fun m!1371663 () Bool)

(assert (=> b!1486801 m!1371663))

(assert (=> b!1486808 m!1371655))

(assert (=> b!1486808 m!1371655))

(declare-fun m!1371665 () Bool)

(assert (=> b!1486808 m!1371665))

(declare-fun m!1371667 () Bool)

(assert (=> b!1486806 m!1371667))

(assert (=> b!1486806 m!1371655))

(declare-fun m!1371669 () Bool)

(assert (=> b!1486806 m!1371669))

(declare-fun m!1371671 () Bool)

(assert (=> b!1486806 m!1371671))

(assert (=> b!1486804 m!1371661))

(assert (=> b!1486804 m!1371659))

(declare-fun m!1371673 () Bool)

(assert (=> b!1486815 m!1371673))

(assert (=> b!1486815 m!1371673))

(declare-fun m!1371675 () Bool)

(assert (=> b!1486815 m!1371675))

(assert (=> b!1486815 m!1371669))

(declare-fun m!1371677 () Bool)

(assert (=> b!1486815 m!1371677))

(declare-fun m!1371679 () Bool)

(assert (=> start!126702 m!1371679))

(declare-fun m!1371681 () Bool)

(assert (=> start!126702 m!1371681))

(assert (=> b!1486810 m!1371669))

(declare-fun m!1371683 () Bool)

(assert (=> b!1486810 m!1371683))

(declare-fun m!1371685 () Bool)

(assert (=> b!1486816 m!1371685))

(declare-fun m!1371687 () Bool)

(assert (=> b!1486811 m!1371687))

(assert (=> b!1486811 m!1371655))

(declare-fun m!1371689 () Bool)

(assert (=> b!1486803 m!1371689))

(assert (=> b!1486803 m!1371669))

(assert (=> b!1486803 m!1371671))

(assert (=> b!1486803 m!1371667))

(declare-fun m!1371691 () Bool)

(assert (=> b!1486803 m!1371691))

(assert (=> b!1486803 m!1371655))

(assert (=> b!1486813 m!1371655))

(assert (=> b!1486813 m!1371655))

(declare-fun m!1371693 () Bool)

(assert (=> b!1486813 m!1371693))

(assert (=> b!1486813 m!1371693))

(assert (=> b!1486813 m!1371655))

(declare-fun m!1371695 () Bool)

(assert (=> b!1486813 m!1371695))

(declare-fun m!1371697 () Bool)

(assert (=> b!1486802 m!1371697))

(declare-fun m!1371699 () Bool)

(assert (=> b!1486797 m!1371699))

(assert (=> b!1486797 m!1371699))

(declare-fun m!1371701 () Bool)

(assert (=> b!1486797 m!1371701))

(declare-fun m!1371703 () Bool)

(assert (=> b!1486809 m!1371703))

(declare-fun m!1371705 () Bool)

(assert (=> b!1486814 m!1371705))

(check-sat (not b!1486808) (not b!1486797) (not b!1486812) (not b!1486809) (not b!1486813) (not b!1486803) (not b!1486801) (not b!1486804) (not b!1486814) (not b!1486802) (not start!126702) (not b!1486798) (not b!1486815) (not b!1486816))
(check-sat)

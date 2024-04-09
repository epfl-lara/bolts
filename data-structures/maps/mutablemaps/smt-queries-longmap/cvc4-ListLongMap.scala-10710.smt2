; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125444 () Bool)

(assert start!125444)

(declare-fun b!1466653 () Bool)

(declare-fun res!995421 () Bool)

(declare-fun e!823961 () Bool)

(assert (=> b!1466653 (=> (not res!995421) (not e!823961))))

(declare-fun e!823964 () Bool)

(assert (=> b!1466653 (= res!995421 e!823964)))

(declare-fun c!135134 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1466653 (= c!135134 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466654 () Bool)

(declare-fun e!823963 () Bool)

(assert (=> b!1466654 (= e!823961 (not e!823963))))

(declare-fun res!995430 () Bool)

(assert (=> b!1466654 (=> res!995430 e!823963)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98809 0))(
  ( (array!98810 (arr!47688 (Array (_ BitVec 32) (_ BitVec 64))) (size!48239 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98809)

(assert (=> b!1466654 (= res!995430 (or (and (= (select (arr!47688 a!2862) index!646) (select (store (arr!47688 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47688 a!2862) index!646) (select (arr!47688 a!2862) j!93))) (= (select (arr!47688 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-datatypes ((SeekEntryResult!11963 0))(
  ( (MissingZero!11963 (index!50243 (_ BitVec 32))) (Found!11963 (index!50244 (_ BitVec 32))) (Intermediate!11963 (undefined!12775 Bool) (index!50245 (_ BitVec 32)) (x!131815 (_ BitVec 32))) (Undefined!11963) (MissingVacant!11963 (index!50246 (_ BitVec 32))) )
))
(declare-fun lt!641799 () SeekEntryResult!11963)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1466654 (and (= lt!641799 (Found!11963 j!93)) (or (= (select (arr!47688 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47688 a!2862) intermediateBeforeIndex!19) (select (arr!47688 a!2862) j!93))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98809 (_ BitVec 32)) SeekEntryResult!11963)

(assert (=> b!1466654 (= lt!641799 (seekEntryOrOpen!0 (select (arr!47688 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98809 (_ BitVec 32)) Bool)

(assert (=> b!1466654 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49370 0))(
  ( (Unit!49371) )
))
(declare-fun lt!641804 () Unit!49370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49370)

(assert (=> b!1466654 (= lt!641804 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466655 () Bool)

(declare-fun lt!641803 () (_ BitVec 64))

(declare-fun lt!641800 () SeekEntryResult!11963)

(declare-fun lt!641802 () array!98809)

(declare-fun lt!641801 () (_ BitVec 32))

(declare-fun e!823960 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98809 (_ BitVec 32)) SeekEntryResult!11963)

(assert (=> b!1466655 (= e!823960 (not (= lt!641800 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641801 lt!641803 lt!641802 mask!2687))))))

(declare-fun res!995415 () Bool)

(declare-fun e!823965 () Bool)

(assert (=> start!125444 (=> (not res!995415) (not e!823965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125444 (= res!995415 (validMask!0 mask!2687))))

(assert (=> start!125444 e!823965))

(assert (=> start!125444 true))

(declare-fun array_inv!36633 (array!98809) Bool)

(assert (=> start!125444 (array_inv!36633 a!2862)))

(declare-fun b!1466656 () Bool)

(declare-fun res!995418 () Bool)

(assert (=> b!1466656 (=> (not res!995418) (not e!823965))))

(assert (=> b!1466656 (= res!995418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466657 () Bool)

(declare-fun res!995414 () Bool)

(assert (=> b!1466657 (=> (not res!995414) (not e!823965))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466657 (= res!995414 (validKeyInArray!0 (select (arr!47688 a!2862) i!1006)))))

(declare-fun b!1466658 () Bool)

(declare-fun e!823962 () Bool)

(assert (=> b!1466658 (= e!823963 e!823962)))

(declare-fun res!995417 () Bool)

(assert (=> b!1466658 (=> res!995417 e!823962)))

(assert (=> b!1466658 (= res!995417 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641801 #b00000000000000000000000000000000) (bvsge lt!641801 (size!48239 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466658 (= lt!641801 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466659 () Bool)

(declare-fun e!823967 () Bool)

(assert (=> b!1466659 (= e!823965 e!823967)))

(declare-fun res!995427 () Bool)

(assert (=> b!1466659 (=> (not res!995427) (not e!823967))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1466659 (= res!995427 (= (select (store (arr!47688 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466659 (= lt!641802 (array!98810 (store (arr!47688 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48239 a!2862)))))

(declare-fun b!1466660 () Bool)

(declare-fun e!823959 () Bool)

(assert (=> b!1466660 (= e!823967 e!823959)))

(declare-fun res!995422 () Bool)

(assert (=> b!1466660 (=> (not res!995422) (not e!823959))))

(declare-fun lt!641805 () SeekEntryResult!11963)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466660 (= res!995422 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47688 a!2862) j!93) mask!2687) (select (arr!47688 a!2862) j!93) a!2862 mask!2687) lt!641805))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1466660 (= lt!641805 (Intermediate!11963 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466661 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98809 (_ BitVec 32)) SeekEntryResult!11963)

(assert (=> b!1466661 (= e!823964 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641803 lt!641802 mask!2687) (seekEntryOrOpen!0 lt!641803 lt!641802 mask!2687)))))

(declare-fun b!1466662 () Bool)

(assert (=> b!1466662 (= e!823962 true)))

(assert (=> b!1466662 (= lt!641799 (seekEntryOrOpen!0 lt!641803 lt!641802 mask!2687))))

(declare-fun lt!641806 () Unit!49370)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49370)

(assert (=> b!1466662 (= lt!641806 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641801 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466663 () Bool)

(declare-fun res!995425 () Bool)

(assert (=> b!1466663 (=> (not res!995425) (not e!823959))))

(assert (=> b!1466663 (= res!995425 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47688 a!2862) j!93) a!2862 mask!2687) lt!641805))))

(declare-fun b!1466664 () Bool)

(declare-fun res!995424 () Bool)

(assert (=> b!1466664 (=> res!995424 e!823962)))

(assert (=> b!1466664 (= res!995424 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466665 () Bool)

(declare-fun res!995416 () Bool)

(assert (=> b!1466665 (=> (not res!995416) (not e!823965))))

(assert (=> b!1466665 (= res!995416 (and (= (size!48239 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48239 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48239 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466666 () Bool)

(declare-fun res!995428 () Bool)

(assert (=> b!1466666 (=> res!995428 e!823962)))

(assert (=> b!1466666 (= res!995428 e!823960)))

(declare-fun c!135133 () Bool)

(assert (=> b!1466666 (= c!135133 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466667 () Bool)

(assert (=> b!1466667 (= e!823959 e!823961)))

(declare-fun res!995426 () Bool)

(assert (=> b!1466667 (=> (not res!995426) (not e!823961))))

(assert (=> b!1466667 (= res!995426 (= lt!641800 (Intermediate!11963 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466667 (= lt!641800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641803 mask!2687) lt!641803 lt!641802 mask!2687))))

(assert (=> b!1466667 (= lt!641803 (select (store (arr!47688 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466668 () Bool)

(assert (=> b!1466668 (= e!823960 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641801 intermediateAfterIndex!19 lt!641803 lt!641802 mask!2687) (seekEntryOrOpen!0 lt!641803 lt!641802 mask!2687))))))

(declare-fun b!1466669 () Bool)

(assert (=> b!1466669 (= e!823964 (= lt!641800 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641803 lt!641802 mask!2687)))))

(declare-fun b!1466670 () Bool)

(declare-fun res!995413 () Bool)

(assert (=> b!1466670 (=> res!995413 e!823962)))

(assert (=> b!1466670 (= res!995413 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641801 (select (arr!47688 a!2862) j!93) a!2862 mask!2687) lt!641805)))))

(declare-fun b!1466671 () Bool)

(declare-fun res!995429 () Bool)

(assert (=> b!1466671 (=> (not res!995429) (not e!823965))))

(assert (=> b!1466671 (= res!995429 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48239 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48239 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48239 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466672 () Bool)

(declare-fun res!995419 () Bool)

(assert (=> b!1466672 (=> (not res!995419) (not e!823961))))

(assert (=> b!1466672 (= res!995419 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466673 () Bool)

(declare-fun res!995420 () Bool)

(assert (=> b!1466673 (=> (not res!995420) (not e!823965))))

(assert (=> b!1466673 (= res!995420 (validKeyInArray!0 (select (arr!47688 a!2862) j!93)))))

(declare-fun b!1466674 () Bool)

(declare-fun res!995423 () Bool)

(assert (=> b!1466674 (=> (not res!995423) (not e!823965))))

(declare-datatypes ((List!34369 0))(
  ( (Nil!34366) (Cons!34365 (h!35715 (_ BitVec 64)) (t!49070 List!34369)) )
))
(declare-fun arrayNoDuplicates!0 (array!98809 (_ BitVec 32) List!34369) Bool)

(assert (=> b!1466674 (= res!995423 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34366))))

(assert (= (and start!125444 res!995415) b!1466665))

(assert (= (and b!1466665 res!995416) b!1466657))

(assert (= (and b!1466657 res!995414) b!1466673))

(assert (= (and b!1466673 res!995420) b!1466656))

(assert (= (and b!1466656 res!995418) b!1466674))

(assert (= (and b!1466674 res!995423) b!1466671))

(assert (= (and b!1466671 res!995429) b!1466659))

(assert (= (and b!1466659 res!995427) b!1466660))

(assert (= (and b!1466660 res!995422) b!1466663))

(assert (= (and b!1466663 res!995425) b!1466667))

(assert (= (and b!1466667 res!995426) b!1466653))

(assert (= (and b!1466653 c!135134) b!1466669))

(assert (= (and b!1466653 (not c!135134)) b!1466661))

(assert (= (and b!1466653 res!995421) b!1466672))

(assert (= (and b!1466672 res!995419) b!1466654))

(assert (= (and b!1466654 (not res!995430)) b!1466658))

(assert (= (and b!1466658 (not res!995417)) b!1466670))

(assert (= (and b!1466670 (not res!995413)) b!1466666))

(assert (= (and b!1466666 c!135133) b!1466655))

(assert (= (and b!1466666 (not c!135133)) b!1466668))

(assert (= (and b!1466666 (not res!995428)) b!1466664))

(assert (= (and b!1466664 (not res!995424)) b!1466662))

(declare-fun m!1353675 () Bool)

(assert (=> b!1466667 m!1353675))

(assert (=> b!1466667 m!1353675))

(declare-fun m!1353677 () Bool)

(assert (=> b!1466667 m!1353677))

(declare-fun m!1353679 () Bool)

(assert (=> b!1466667 m!1353679))

(declare-fun m!1353681 () Bool)

(assert (=> b!1466667 m!1353681))

(declare-fun m!1353683 () Bool)

(assert (=> b!1466654 m!1353683))

(assert (=> b!1466654 m!1353679))

(declare-fun m!1353685 () Bool)

(assert (=> b!1466654 m!1353685))

(declare-fun m!1353687 () Bool)

(assert (=> b!1466654 m!1353687))

(declare-fun m!1353689 () Bool)

(assert (=> b!1466654 m!1353689))

(declare-fun m!1353691 () Bool)

(assert (=> b!1466654 m!1353691))

(declare-fun m!1353693 () Bool)

(assert (=> b!1466654 m!1353693))

(declare-fun m!1353695 () Bool)

(assert (=> b!1466654 m!1353695))

(assert (=> b!1466654 m!1353691))

(declare-fun m!1353697 () Bool)

(assert (=> b!1466658 m!1353697))

(assert (=> b!1466663 m!1353691))

(assert (=> b!1466663 m!1353691))

(declare-fun m!1353699 () Bool)

(assert (=> b!1466663 m!1353699))

(declare-fun m!1353701 () Bool)

(assert (=> b!1466674 m!1353701))

(assert (=> b!1466660 m!1353691))

(assert (=> b!1466660 m!1353691))

(declare-fun m!1353703 () Bool)

(assert (=> b!1466660 m!1353703))

(assert (=> b!1466660 m!1353703))

(assert (=> b!1466660 m!1353691))

(declare-fun m!1353705 () Bool)

(assert (=> b!1466660 m!1353705))

(assert (=> b!1466659 m!1353679))

(declare-fun m!1353707 () Bool)

(assert (=> b!1466659 m!1353707))

(declare-fun m!1353709 () Bool)

(assert (=> b!1466657 m!1353709))

(assert (=> b!1466657 m!1353709))

(declare-fun m!1353711 () Bool)

(assert (=> b!1466657 m!1353711))

(assert (=> b!1466670 m!1353691))

(assert (=> b!1466670 m!1353691))

(declare-fun m!1353713 () Bool)

(assert (=> b!1466670 m!1353713))

(declare-fun m!1353715 () Bool)

(assert (=> b!1466661 m!1353715))

(declare-fun m!1353717 () Bool)

(assert (=> b!1466661 m!1353717))

(assert (=> b!1466673 m!1353691))

(assert (=> b!1466673 m!1353691))

(declare-fun m!1353719 () Bool)

(assert (=> b!1466673 m!1353719))

(declare-fun m!1353721 () Bool)

(assert (=> start!125444 m!1353721))

(declare-fun m!1353723 () Bool)

(assert (=> start!125444 m!1353723))

(declare-fun m!1353725 () Bool)

(assert (=> b!1466656 m!1353725))

(declare-fun m!1353727 () Bool)

(assert (=> b!1466668 m!1353727))

(assert (=> b!1466668 m!1353717))

(assert (=> b!1466662 m!1353717))

(declare-fun m!1353729 () Bool)

(assert (=> b!1466662 m!1353729))

(declare-fun m!1353731 () Bool)

(assert (=> b!1466669 m!1353731))

(declare-fun m!1353733 () Bool)

(assert (=> b!1466655 m!1353733))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127420 () Bool)

(assert start!127420)

(declare-fun b!1497430 () Bool)

(declare-fun e!838588 () Bool)

(declare-fun e!838586 () Bool)

(assert (=> b!1497430 (= e!838588 e!838586)))

(declare-fun res!1018675 () Bool)

(assert (=> b!1497430 (=> (not res!1018675) (not e!838586))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12420 0))(
  ( (MissingZero!12420 (index!52071 (_ BitVec 32))) (Found!12420 (index!52072 (_ BitVec 32))) (Intermediate!12420 (undefined!13232 Bool) (index!52073 (_ BitVec 32)) (x!133699 (_ BitVec 32))) (Undefined!12420) (MissingVacant!12420 (index!52074 (_ BitVec 32))) )
))
(declare-fun lt!652418 () SeekEntryResult!12420)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1497430 (= res!1018675 (= lt!652418 (Intermediate!12420 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99795 0))(
  ( (array!99796 (arr!48157 (Array (_ BitVec 32) (_ BitVec 64))) (size!48708 (_ BitVec 32))) )
))
(declare-fun lt!652419 () array!99795)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!652414 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99795 (_ BitVec 32)) SeekEntryResult!12420)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497430 (= lt!652418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652414 mask!2687) lt!652414 lt!652419 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99795)

(assert (=> b!1497430 (= lt!652414 (select (store (arr!48157 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1497431 () Bool)

(declare-fun e!838592 () Bool)

(assert (=> b!1497431 (= e!838586 (not e!838592))))

(declare-fun res!1018662 () Bool)

(assert (=> b!1497431 (=> res!1018662 e!838592)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1497431 (= res!1018662 (or (and (= (select (arr!48157 a!2862) index!646) (select (store (arr!48157 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48157 a!2862) index!646) (select (arr!48157 a!2862) j!93))) (= (select (arr!48157 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!652413 () SeekEntryResult!12420)

(assert (=> b!1497431 (and (= lt!652413 (Found!12420 j!93)) (or (= (select (arr!48157 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48157 a!2862) intermediateBeforeIndex!19) (select (arr!48157 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99795 (_ BitVec 32)) SeekEntryResult!12420)

(assert (=> b!1497431 (= lt!652413 (seekEntryOrOpen!0 (select (arr!48157 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99795 (_ BitVec 32)) Bool)

(assert (=> b!1497431 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!50128 0))(
  ( (Unit!50129) )
))
(declare-fun lt!652416 () Unit!50128)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50128)

(assert (=> b!1497431 (= lt!652416 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1497432 () Bool)

(declare-fun res!1018663 () Bool)

(assert (=> b!1497432 (=> (not res!1018663) (not e!838586))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1497432 (= res!1018663 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1497433 () Bool)

(declare-fun res!1018668 () Bool)

(declare-fun e!838584 () Bool)

(assert (=> b!1497433 (=> (not res!1018668) (not e!838584))))

(assert (=> b!1497433 (= res!1018668 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48708 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48708 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48708 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1018669 () Bool)

(assert (=> start!127420 (=> (not res!1018669) (not e!838584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127420 (= res!1018669 (validMask!0 mask!2687))))

(assert (=> start!127420 e!838584))

(assert (=> start!127420 true))

(declare-fun array_inv!37102 (array!99795) Bool)

(assert (=> start!127420 (array_inv!37102 a!2862)))

(declare-fun b!1497434 () Bool)

(declare-fun res!1018661 () Bool)

(assert (=> b!1497434 (=> (not res!1018661) (not e!838584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497434 (= res!1018661 (validKeyInArray!0 (select (arr!48157 a!2862) j!93)))))

(declare-fun e!838589 () Bool)

(declare-fun b!1497435 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99795 (_ BitVec 32)) SeekEntryResult!12420)

(assert (=> b!1497435 (= e!838589 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652414 lt!652419 mask!2687) (seekEntryOrOpen!0 lt!652414 lt!652419 mask!2687)))))

(declare-fun b!1497436 () Bool)

(declare-fun e!838587 () Bool)

(assert (=> b!1497436 (= e!838587 e!838588)))

(declare-fun res!1018667 () Bool)

(assert (=> b!1497436 (=> (not res!1018667) (not e!838588))))

(declare-fun lt!652417 () SeekEntryResult!12420)

(assert (=> b!1497436 (= res!1018667 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48157 a!2862) j!93) mask!2687) (select (arr!48157 a!2862) j!93) a!2862 mask!2687) lt!652417))))

(assert (=> b!1497436 (= lt!652417 (Intermediate!12420 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1497437 () Bool)

(declare-fun res!1018673 () Bool)

(declare-fun e!838591 () Bool)

(assert (=> b!1497437 (=> res!1018673 e!838591)))

(declare-fun lt!652415 () (_ BitVec 32))

(assert (=> b!1497437 (= res!1018673 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652415 (select (arr!48157 a!2862) j!93) a!2862 mask!2687) lt!652417)))))

(declare-fun b!1497438 () Bool)

(declare-fun res!1018666 () Bool)

(assert (=> b!1497438 (=> (not res!1018666) (not e!838584))))

(assert (=> b!1497438 (= res!1018666 (validKeyInArray!0 (select (arr!48157 a!2862) i!1006)))))

(declare-fun b!1497439 () Bool)

(assert (=> b!1497439 (= e!838584 e!838587)))

(declare-fun res!1018660 () Bool)

(assert (=> b!1497439 (=> (not res!1018660) (not e!838587))))

(assert (=> b!1497439 (= res!1018660 (= (select (store (arr!48157 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1497439 (= lt!652419 (array!99796 (store (arr!48157 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48708 a!2862)))))

(declare-fun b!1497440 () Bool)

(declare-fun e!838590 () Bool)

(assert (=> b!1497440 (= e!838590 (not (= lt!652418 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652415 lt!652414 lt!652419 mask!2687))))))

(declare-fun b!1497441 () Bool)

(declare-fun res!1018670 () Bool)

(assert (=> b!1497441 (=> res!1018670 e!838591)))

(assert (=> b!1497441 (= res!1018670 e!838590)))

(declare-fun c!138923 () Bool)

(assert (=> b!1497441 (= c!138923 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1497442 () Bool)

(assert (=> b!1497442 (= e!838589 (= lt!652418 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652414 lt!652419 mask!2687)))))

(declare-fun b!1497443 () Bool)

(declare-fun res!1018664 () Bool)

(assert (=> b!1497443 (=> (not res!1018664) (not e!838586))))

(assert (=> b!1497443 (= res!1018664 e!838589)))

(declare-fun c!138922 () Bool)

(assert (=> b!1497443 (= c!138922 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1497444 () Bool)

(assert (=> b!1497444 (= e!838592 e!838591)))

(declare-fun res!1018677 () Bool)

(assert (=> b!1497444 (=> res!1018677 e!838591)))

(assert (=> b!1497444 (= res!1018677 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652415 #b00000000000000000000000000000000) (bvsge lt!652415 (size!48708 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497444 (= lt!652415 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1497445 () Bool)

(declare-fun res!1018672 () Bool)

(assert (=> b!1497445 (=> (not res!1018672) (not e!838584))))

(assert (=> b!1497445 (= res!1018672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1497446 () Bool)

(assert (=> b!1497446 (= e!838590 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652415 intermediateAfterIndex!19 lt!652414 lt!652419 mask!2687) (seekEntryOrOpen!0 lt!652414 lt!652419 mask!2687))))))

(declare-fun b!1497447 () Bool)

(declare-fun res!1018665 () Bool)

(assert (=> b!1497447 (=> (not res!1018665) (not e!838584))))

(declare-datatypes ((List!34838 0))(
  ( (Nil!34835) (Cons!34834 (h!36232 (_ BitVec 64)) (t!49539 List!34838)) )
))
(declare-fun arrayNoDuplicates!0 (array!99795 (_ BitVec 32) List!34838) Bool)

(assert (=> b!1497447 (= res!1018665 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34835))))

(declare-fun b!1497448 () Bool)

(declare-fun res!1018674 () Bool)

(assert (=> b!1497448 (=> res!1018674 e!838591)))

(assert (=> b!1497448 (= res!1018674 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1497449 () Bool)

(declare-fun res!1018671 () Bool)

(assert (=> b!1497449 (=> (not res!1018671) (not e!838588))))

(assert (=> b!1497449 (= res!1018671 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48157 a!2862) j!93) a!2862 mask!2687) lt!652417))))

(declare-fun b!1497450 () Bool)

(assert (=> b!1497450 (= e!838591 true)))

(assert (=> b!1497450 (= lt!652413 (seekEntryOrOpen!0 lt!652414 lt!652419 mask!2687))))

(declare-fun lt!652420 () Unit!50128)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50128)

(assert (=> b!1497450 (= lt!652420 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652415 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1497451 () Bool)

(declare-fun res!1018676 () Bool)

(assert (=> b!1497451 (=> (not res!1018676) (not e!838584))))

(assert (=> b!1497451 (= res!1018676 (and (= (size!48708 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48708 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48708 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!127420 res!1018669) b!1497451))

(assert (= (and b!1497451 res!1018676) b!1497438))

(assert (= (and b!1497438 res!1018666) b!1497434))

(assert (= (and b!1497434 res!1018661) b!1497445))

(assert (= (and b!1497445 res!1018672) b!1497447))

(assert (= (and b!1497447 res!1018665) b!1497433))

(assert (= (and b!1497433 res!1018668) b!1497439))

(assert (= (and b!1497439 res!1018660) b!1497436))

(assert (= (and b!1497436 res!1018667) b!1497449))

(assert (= (and b!1497449 res!1018671) b!1497430))

(assert (= (and b!1497430 res!1018675) b!1497443))

(assert (= (and b!1497443 c!138922) b!1497442))

(assert (= (and b!1497443 (not c!138922)) b!1497435))

(assert (= (and b!1497443 res!1018664) b!1497432))

(assert (= (and b!1497432 res!1018663) b!1497431))

(assert (= (and b!1497431 (not res!1018662)) b!1497444))

(assert (= (and b!1497444 (not res!1018677)) b!1497437))

(assert (= (and b!1497437 (not res!1018673)) b!1497441))

(assert (= (and b!1497441 c!138923) b!1497440))

(assert (= (and b!1497441 (not c!138923)) b!1497446))

(assert (= (and b!1497441 (not res!1018670)) b!1497448))

(assert (= (and b!1497448 (not res!1018674)) b!1497450))

(declare-fun m!1380561 () Bool)

(assert (=> b!1497436 m!1380561))

(assert (=> b!1497436 m!1380561))

(declare-fun m!1380563 () Bool)

(assert (=> b!1497436 m!1380563))

(assert (=> b!1497436 m!1380563))

(assert (=> b!1497436 m!1380561))

(declare-fun m!1380565 () Bool)

(assert (=> b!1497436 m!1380565))

(declare-fun m!1380567 () Bool)

(assert (=> b!1497439 m!1380567))

(declare-fun m!1380569 () Bool)

(assert (=> b!1497439 m!1380569))

(declare-fun m!1380571 () Bool)

(assert (=> b!1497442 m!1380571))

(declare-fun m!1380573 () Bool)

(assert (=> start!127420 m!1380573))

(declare-fun m!1380575 () Bool)

(assert (=> start!127420 m!1380575))

(declare-fun m!1380577 () Bool)

(assert (=> b!1497435 m!1380577))

(declare-fun m!1380579 () Bool)

(assert (=> b!1497435 m!1380579))

(declare-fun m!1380581 () Bool)

(assert (=> b!1497447 m!1380581))

(declare-fun m!1380583 () Bool)

(assert (=> b!1497444 m!1380583))

(assert (=> b!1497437 m!1380561))

(assert (=> b!1497437 m!1380561))

(declare-fun m!1380585 () Bool)

(assert (=> b!1497437 m!1380585))

(assert (=> b!1497450 m!1380579))

(declare-fun m!1380587 () Bool)

(assert (=> b!1497450 m!1380587))

(assert (=> b!1497434 m!1380561))

(assert (=> b!1497434 m!1380561))

(declare-fun m!1380589 () Bool)

(assert (=> b!1497434 m!1380589))

(declare-fun m!1380591 () Bool)

(assert (=> b!1497438 m!1380591))

(assert (=> b!1497438 m!1380591))

(declare-fun m!1380593 () Bool)

(assert (=> b!1497438 m!1380593))

(declare-fun m!1380595 () Bool)

(assert (=> b!1497446 m!1380595))

(assert (=> b!1497446 m!1380579))

(declare-fun m!1380597 () Bool)

(assert (=> b!1497430 m!1380597))

(assert (=> b!1497430 m!1380597))

(declare-fun m!1380599 () Bool)

(assert (=> b!1497430 m!1380599))

(assert (=> b!1497430 m!1380567))

(declare-fun m!1380601 () Bool)

(assert (=> b!1497430 m!1380601))

(declare-fun m!1380603 () Bool)

(assert (=> b!1497431 m!1380603))

(assert (=> b!1497431 m!1380567))

(declare-fun m!1380605 () Bool)

(assert (=> b!1497431 m!1380605))

(declare-fun m!1380607 () Bool)

(assert (=> b!1497431 m!1380607))

(declare-fun m!1380609 () Bool)

(assert (=> b!1497431 m!1380609))

(assert (=> b!1497431 m!1380561))

(declare-fun m!1380611 () Bool)

(assert (=> b!1497431 m!1380611))

(declare-fun m!1380613 () Bool)

(assert (=> b!1497431 m!1380613))

(assert (=> b!1497431 m!1380561))

(assert (=> b!1497449 m!1380561))

(assert (=> b!1497449 m!1380561))

(declare-fun m!1380615 () Bool)

(assert (=> b!1497449 m!1380615))

(declare-fun m!1380617 () Bool)

(assert (=> b!1497440 m!1380617))

(declare-fun m!1380619 () Bool)

(assert (=> b!1497445 m!1380619))

(push 1)


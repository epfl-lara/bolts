; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127424 () Bool)

(assert start!127424)

(declare-fun b!1497562 () Bool)

(declare-fun e!838643 () Bool)

(declare-fun e!838638 () Bool)

(assert (=> b!1497562 (= e!838643 (not e!838638))))

(declare-fun res!1018782 () Bool)

(assert (=> b!1497562 (=> res!1018782 e!838638)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99799 0))(
  ( (array!99800 (arr!48159 (Array (_ BitVec 32) (_ BitVec 64))) (size!48710 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99799)

(assert (=> b!1497562 (= res!1018782 (or (and (= (select (arr!48159 a!2862) index!646) (select (store (arr!48159 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48159 a!2862) index!646) (select (arr!48159 a!2862) j!93))) (= (select (arr!48159 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12422 0))(
  ( (MissingZero!12422 (index!52079 (_ BitVec 32))) (Found!12422 (index!52080 (_ BitVec 32))) (Intermediate!12422 (undefined!13234 Bool) (index!52081 (_ BitVec 32)) (x!133701 (_ BitVec 32))) (Undefined!12422) (MissingVacant!12422 (index!52082 (_ BitVec 32))) )
))
(declare-fun lt!652465 () SeekEntryResult!12422)

(assert (=> b!1497562 (and (= lt!652465 (Found!12422 j!93)) (or (= (select (arr!48159 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48159 a!2862) intermediateBeforeIndex!19) (select (arr!48159 a!2862) j!93))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99799 (_ BitVec 32)) SeekEntryResult!12422)

(assert (=> b!1497562 (= lt!652465 (seekEntryOrOpen!0 (select (arr!48159 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99799 (_ BitVec 32)) Bool)

(assert (=> b!1497562 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!50132 0))(
  ( (Unit!50133) )
))
(declare-fun lt!652461 () Unit!50132)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50132)

(assert (=> b!1497562 (= lt!652461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1497564 () Bool)

(declare-fun res!1018778 () Bool)

(declare-fun e!838645 () Bool)

(assert (=> b!1497564 (=> res!1018778 e!838645)))

(declare-fun e!838644 () Bool)

(assert (=> b!1497564 (= res!1018778 e!838644)))

(declare-fun c!138935 () Bool)

(assert (=> b!1497564 (= c!138935 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1497565 () Bool)

(assert (=> b!1497565 (= e!838645 true)))

(declare-fun lt!652468 () array!99799)

(declare-fun lt!652462 () (_ BitVec 64))

(assert (=> b!1497565 (= lt!652465 (seekEntryOrOpen!0 lt!652462 lt!652468 mask!2687))))

(declare-fun lt!652467 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun lt!652464 () Unit!50132)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50132)

(assert (=> b!1497565 (= lt!652464 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652467 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1497566 () Bool)

(assert (=> b!1497566 (= e!838638 e!838645)))

(declare-fun res!1018780 () Bool)

(assert (=> b!1497566 (=> res!1018780 e!838645)))

(assert (=> b!1497566 (= res!1018780 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652467 #b00000000000000000000000000000000) (bvsge lt!652467 (size!48710 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497566 (= lt!652467 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1497567 () Bool)

(declare-fun res!1018784 () Bool)

(assert (=> b!1497567 (=> (not res!1018784) (not e!838643))))

(declare-fun e!838646 () Bool)

(assert (=> b!1497567 (= res!1018784 e!838646)))

(declare-fun c!138934 () Bool)

(assert (=> b!1497567 (= c!138934 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1497568 () Bool)

(declare-fun res!1018781 () Bool)

(declare-fun e!838641 () Bool)

(assert (=> b!1497568 (=> (not res!1018781) (not e!838641))))

(assert (=> b!1497568 (= res!1018781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1497569 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99799 (_ BitVec 32)) SeekEntryResult!12422)

(assert (=> b!1497569 (= e!838644 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652467 intermediateAfterIndex!19 lt!652462 lt!652468 mask!2687) (seekEntryOrOpen!0 lt!652462 lt!652468 mask!2687))))))

(declare-fun b!1497570 () Bool)

(declare-fun res!1018770 () Bool)

(assert (=> b!1497570 (=> (not res!1018770) (not e!838641))))

(declare-datatypes ((List!34840 0))(
  ( (Nil!34837) (Cons!34836 (h!36234 (_ BitVec 64)) (t!49541 List!34840)) )
))
(declare-fun arrayNoDuplicates!0 (array!99799 (_ BitVec 32) List!34840) Bool)

(assert (=> b!1497570 (= res!1018770 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34837))))

(declare-fun b!1497571 () Bool)

(assert (=> b!1497571 (= e!838646 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652462 lt!652468 mask!2687) (seekEntryOrOpen!0 lt!652462 lt!652468 mask!2687)))))

(declare-fun b!1497572 () Bool)

(declare-fun res!1018769 () Bool)

(assert (=> b!1497572 (=> res!1018769 e!838645)))

(declare-fun lt!652463 () SeekEntryResult!12422)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99799 (_ BitVec 32)) SeekEntryResult!12422)

(assert (=> b!1497572 (= res!1018769 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652467 (select (arr!48159 a!2862) j!93) a!2862 mask!2687) lt!652463)))))

(declare-fun b!1497573 () Bool)

(declare-fun res!1018777 () Bool)

(declare-fun e!838640 () Bool)

(assert (=> b!1497573 (=> (not res!1018777) (not e!838640))))

(assert (=> b!1497573 (= res!1018777 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48159 a!2862) j!93) a!2862 mask!2687) lt!652463))))

(declare-fun b!1497574 () Bool)

(declare-fun res!1018779 () Bool)

(assert (=> b!1497574 (=> (not res!1018779) (not e!838641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497574 (= res!1018779 (validKeyInArray!0 (select (arr!48159 a!2862) i!1006)))))

(declare-fun b!1497575 () Bool)

(declare-fun res!1018776 () Bool)

(assert (=> b!1497575 (=> (not res!1018776) (not e!838641))))

(assert (=> b!1497575 (= res!1018776 (validKeyInArray!0 (select (arr!48159 a!2862) j!93)))))

(declare-fun b!1497563 () Bool)

(declare-fun e!838639 () Bool)

(assert (=> b!1497563 (= e!838639 e!838640)))

(declare-fun res!1018775 () Bool)

(assert (=> b!1497563 (=> (not res!1018775) (not e!838640))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497563 (= res!1018775 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48159 a!2862) j!93) mask!2687) (select (arr!48159 a!2862) j!93) a!2862 mask!2687) lt!652463))))

(assert (=> b!1497563 (= lt!652463 (Intermediate!12422 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1018768 () Bool)

(assert (=> start!127424 (=> (not res!1018768) (not e!838641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127424 (= res!1018768 (validMask!0 mask!2687))))

(assert (=> start!127424 e!838641))

(assert (=> start!127424 true))

(declare-fun array_inv!37104 (array!99799) Bool)

(assert (=> start!127424 (array_inv!37104 a!2862)))

(declare-fun b!1497576 () Bool)

(declare-fun res!1018772 () Bool)

(assert (=> b!1497576 (=> (not res!1018772) (not e!838641))))

(assert (=> b!1497576 (= res!1018772 (and (= (size!48710 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48710 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48710 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1497577 () Bool)

(declare-fun res!1018785 () Bool)

(assert (=> b!1497577 (=> (not res!1018785) (not e!838643))))

(assert (=> b!1497577 (= res!1018785 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!652466 () SeekEntryResult!12422)

(declare-fun b!1497578 () Bool)

(assert (=> b!1497578 (= e!838646 (= lt!652466 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652462 lt!652468 mask!2687)))))

(declare-fun b!1497579 () Bool)

(assert (=> b!1497579 (= e!838641 e!838639)))

(declare-fun res!1018771 () Bool)

(assert (=> b!1497579 (=> (not res!1018771) (not e!838639))))

(assert (=> b!1497579 (= res!1018771 (= (select (store (arr!48159 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1497579 (= lt!652468 (array!99800 (store (arr!48159 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48710 a!2862)))))

(declare-fun b!1497580 () Bool)

(assert (=> b!1497580 (= e!838644 (not (= lt!652466 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652467 lt!652462 lt!652468 mask!2687))))))

(declare-fun b!1497581 () Bool)

(assert (=> b!1497581 (= e!838640 e!838643)))

(declare-fun res!1018783 () Bool)

(assert (=> b!1497581 (=> (not res!1018783) (not e!838643))))

(assert (=> b!1497581 (= res!1018783 (= lt!652466 (Intermediate!12422 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1497581 (= lt!652466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652462 mask!2687) lt!652462 lt!652468 mask!2687))))

(assert (=> b!1497581 (= lt!652462 (select (store (arr!48159 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1497582 () Bool)

(declare-fun res!1018773 () Bool)

(assert (=> b!1497582 (=> res!1018773 e!838645)))

(assert (=> b!1497582 (= res!1018773 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1497583 () Bool)

(declare-fun res!1018774 () Bool)

(assert (=> b!1497583 (=> (not res!1018774) (not e!838641))))

(assert (=> b!1497583 (= res!1018774 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48710 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48710 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48710 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!127424 res!1018768) b!1497576))

(assert (= (and b!1497576 res!1018772) b!1497574))

(assert (= (and b!1497574 res!1018779) b!1497575))

(assert (= (and b!1497575 res!1018776) b!1497568))

(assert (= (and b!1497568 res!1018781) b!1497570))

(assert (= (and b!1497570 res!1018770) b!1497583))

(assert (= (and b!1497583 res!1018774) b!1497579))

(assert (= (and b!1497579 res!1018771) b!1497563))

(assert (= (and b!1497563 res!1018775) b!1497573))

(assert (= (and b!1497573 res!1018777) b!1497581))

(assert (= (and b!1497581 res!1018783) b!1497567))

(assert (= (and b!1497567 c!138934) b!1497578))

(assert (= (and b!1497567 (not c!138934)) b!1497571))

(assert (= (and b!1497567 res!1018784) b!1497577))

(assert (= (and b!1497577 res!1018785) b!1497562))

(assert (= (and b!1497562 (not res!1018782)) b!1497566))

(assert (= (and b!1497566 (not res!1018780)) b!1497572))

(assert (= (and b!1497572 (not res!1018769)) b!1497564))

(assert (= (and b!1497564 c!138935) b!1497580))

(assert (= (and b!1497564 (not c!138935)) b!1497569))

(assert (= (and b!1497564 (not res!1018778)) b!1497582))

(assert (= (and b!1497582 (not res!1018773)) b!1497565))

(declare-fun m!1380681 () Bool)

(assert (=> b!1497571 m!1380681))

(declare-fun m!1380683 () Bool)

(assert (=> b!1497571 m!1380683))

(declare-fun m!1380685 () Bool)

(assert (=> b!1497573 m!1380685))

(assert (=> b!1497573 m!1380685))

(declare-fun m!1380687 () Bool)

(assert (=> b!1497573 m!1380687))

(declare-fun m!1380689 () Bool)

(assert (=> b!1497580 m!1380689))

(declare-fun m!1380691 () Bool)

(assert (=> b!1497570 m!1380691))

(declare-fun m!1380693 () Bool)

(assert (=> b!1497568 m!1380693))

(declare-fun m!1380695 () Bool)

(assert (=> b!1497562 m!1380695))

(declare-fun m!1380697 () Bool)

(assert (=> b!1497562 m!1380697))

(declare-fun m!1380699 () Bool)

(assert (=> b!1497562 m!1380699))

(declare-fun m!1380701 () Bool)

(assert (=> b!1497562 m!1380701))

(declare-fun m!1380703 () Bool)

(assert (=> b!1497562 m!1380703))

(assert (=> b!1497562 m!1380685))

(declare-fun m!1380705 () Bool)

(assert (=> b!1497562 m!1380705))

(declare-fun m!1380707 () Bool)

(assert (=> b!1497562 m!1380707))

(assert (=> b!1497562 m!1380685))

(declare-fun m!1380709 () Bool)

(assert (=> b!1497566 m!1380709))

(assert (=> b!1497579 m!1380697))

(declare-fun m!1380711 () Bool)

(assert (=> b!1497579 m!1380711))

(assert (=> b!1497575 m!1380685))

(assert (=> b!1497575 m!1380685))

(declare-fun m!1380713 () Bool)

(assert (=> b!1497575 m!1380713))

(assert (=> b!1497572 m!1380685))

(assert (=> b!1497572 m!1380685))

(declare-fun m!1380715 () Bool)

(assert (=> b!1497572 m!1380715))

(assert (=> b!1497563 m!1380685))

(assert (=> b!1497563 m!1380685))

(declare-fun m!1380717 () Bool)

(assert (=> b!1497563 m!1380717))

(assert (=> b!1497563 m!1380717))

(assert (=> b!1497563 m!1380685))

(declare-fun m!1380719 () Bool)

(assert (=> b!1497563 m!1380719))

(declare-fun m!1380721 () Bool)

(assert (=> b!1497569 m!1380721))

(assert (=> b!1497569 m!1380683))

(declare-fun m!1380723 () Bool)

(assert (=> b!1497574 m!1380723))

(assert (=> b!1497574 m!1380723))

(declare-fun m!1380725 () Bool)

(assert (=> b!1497574 m!1380725))

(declare-fun m!1380727 () Bool)

(assert (=> start!127424 m!1380727))

(declare-fun m!1380729 () Bool)

(assert (=> start!127424 m!1380729))

(declare-fun m!1380731 () Bool)

(assert (=> b!1497578 m!1380731))

(declare-fun m!1380733 () Bool)

(assert (=> b!1497581 m!1380733))

(assert (=> b!1497581 m!1380733))

(declare-fun m!1380735 () Bool)

(assert (=> b!1497581 m!1380735))

(assert (=> b!1497581 m!1380697))

(declare-fun m!1380737 () Bool)

(assert (=> b!1497581 m!1380737))

(assert (=> b!1497565 m!1380683))

(declare-fun m!1380739 () Bool)

(assert (=> b!1497565 m!1380739))

(push 1)

(assert (not b!1497581))

(assert (not b!1497573))

(assert (not b!1497569))

(assert (not b!1497572))

(assert (not b!1497570))

(assert (not b!1497566))

(assert (not b!1497580))

(assert (not start!127424))

(assert (not b!1497562))

(assert (not b!1497568))

(assert (not b!1497571))

(assert (not b!1497574))

(assert (not b!1497575))

(assert (not b!1497565))

(assert (not b!1497578))

(assert (not b!1497563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


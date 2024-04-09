; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124536 () Bool)

(assert start!124536)

(declare-fun b!1440441 () Bool)

(declare-fun res!972985 () Bool)

(declare-fun e!812194 () Bool)

(assert (=> b!1440441 (=> (not res!972985) (not e!812194))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97901 0))(
  ( (array!97902 (arr!47234 (Array (_ BitVec 32) (_ BitVec 64))) (size!47785 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97901)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11509 0))(
  ( (MissingZero!11509 (index!48427 (_ BitVec 32))) (Found!11509 (index!48428 (_ BitVec 32))) (Intermediate!11509 (undefined!12321 Bool) (index!48429 (_ BitVec 32)) (x!130153 (_ BitVec 32))) (Undefined!11509) (MissingVacant!11509 (index!48430 (_ BitVec 32))) )
))
(declare-fun lt!632920 () SeekEntryResult!11509)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97901 (_ BitVec 32)) SeekEntryResult!11509)

(assert (=> b!1440441 (= res!972985 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47234 a!2862) j!93) a!2862 mask!2687) lt!632920))))

(declare-fun b!1440442 () Bool)

(declare-fun res!972977 () Bool)

(assert (=> b!1440442 (=> (not res!972977) (not e!812194))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440442 (= res!972977 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvslt intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun res!972979 () Bool)

(declare-fun e!812193 () Bool)

(assert (=> start!124536 (=> (not res!972979) (not e!812193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124536 (= res!972979 (validMask!0 mask!2687))))

(assert (=> start!124536 e!812193))

(assert (=> start!124536 true))

(declare-fun array_inv!36179 (array!97901) Bool)

(assert (=> start!124536 (array_inv!36179 a!2862)))

(declare-fun b!1440443 () Bool)

(declare-fun res!972983 () Bool)

(assert (=> b!1440443 (=> (not res!972983) (not e!812193))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440443 (= res!972983 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47785 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47785 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47785 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47234 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440444 () Bool)

(declare-fun res!972982 () Bool)

(assert (=> b!1440444 (=> (not res!972982) (not e!812193))))

(declare-datatypes ((List!33915 0))(
  ( (Nil!33912) (Cons!33911 (h!35261 (_ BitVec 64)) (t!48616 List!33915)) )
))
(declare-fun arrayNoDuplicates!0 (array!97901 (_ BitVec 32) List!33915) Bool)

(assert (=> b!1440444 (= res!972982 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33912))))

(declare-fun b!1440445 () Bool)

(declare-fun res!972986 () Bool)

(assert (=> b!1440445 (=> (not res!972986) (not e!812193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440445 (= res!972986 (validKeyInArray!0 (select (arr!47234 a!2862) i!1006)))))

(declare-fun b!1440446 () Bool)

(assert (=> b!1440446 (= e!812194 (not (validKeyInArray!0 (select (store (arr!47234 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1440447 () Bool)

(assert (=> b!1440447 (= e!812193 e!812194)))

(declare-fun res!972978 () Bool)

(assert (=> b!1440447 (=> (not res!972978) (not e!812194))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440447 (= res!972978 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47234 a!2862) j!93) mask!2687) (select (arr!47234 a!2862) j!93) a!2862 mask!2687) lt!632920))))

(assert (=> b!1440447 (= lt!632920 (Intermediate!11509 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440448 () Bool)

(declare-fun res!972984 () Bool)

(assert (=> b!1440448 (=> (not res!972984) (not e!812193))))

(assert (=> b!1440448 (= res!972984 (and (= (size!47785 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47785 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47785 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440449 () Bool)

(declare-fun res!972981 () Bool)

(assert (=> b!1440449 (=> (not res!972981) (not e!812194))))

(assert (=> b!1440449 (= res!972981 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47234 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47234 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97902 (store (arr!47234 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47785 a!2862)) mask!2687) (Intermediate!11509 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440450 () Bool)

(declare-fun res!972980 () Bool)

(assert (=> b!1440450 (=> (not res!972980) (not e!812193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97901 (_ BitVec 32)) Bool)

(assert (=> b!1440450 (= res!972980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440451 () Bool)

(declare-fun res!972987 () Bool)

(assert (=> b!1440451 (=> (not res!972987) (not e!812193))))

(assert (=> b!1440451 (= res!972987 (validKeyInArray!0 (select (arr!47234 a!2862) j!93)))))

(assert (= (and start!124536 res!972979) b!1440448))

(assert (= (and b!1440448 res!972984) b!1440445))

(assert (= (and b!1440445 res!972986) b!1440451))

(assert (= (and b!1440451 res!972987) b!1440450))

(assert (= (and b!1440450 res!972980) b!1440444))

(assert (= (and b!1440444 res!972982) b!1440443))

(assert (= (and b!1440443 res!972983) b!1440447))

(assert (= (and b!1440447 res!972978) b!1440441))

(assert (= (and b!1440441 res!972985) b!1440449))

(assert (= (and b!1440449 res!972981) b!1440442))

(assert (= (and b!1440442 res!972977) b!1440446))

(declare-fun m!1329697 () Bool)

(assert (=> b!1440441 m!1329697))

(assert (=> b!1440441 m!1329697))

(declare-fun m!1329699 () Bool)

(assert (=> b!1440441 m!1329699))

(assert (=> b!1440447 m!1329697))

(assert (=> b!1440447 m!1329697))

(declare-fun m!1329701 () Bool)

(assert (=> b!1440447 m!1329701))

(assert (=> b!1440447 m!1329701))

(assert (=> b!1440447 m!1329697))

(declare-fun m!1329703 () Bool)

(assert (=> b!1440447 m!1329703))

(declare-fun m!1329705 () Bool)

(assert (=> b!1440445 m!1329705))

(assert (=> b!1440445 m!1329705))

(declare-fun m!1329707 () Bool)

(assert (=> b!1440445 m!1329707))

(declare-fun m!1329709 () Bool)

(assert (=> b!1440444 m!1329709))

(declare-fun m!1329711 () Bool)

(assert (=> b!1440446 m!1329711))

(declare-fun m!1329713 () Bool)

(assert (=> b!1440446 m!1329713))

(assert (=> b!1440446 m!1329713))

(declare-fun m!1329715 () Bool)

(assert (=> b!1440446 m!1329715))

(assert (=> b!1440451 m!1329697))

(assert (=> b!1440451 m!1329697))

(declare-fun m!1329717 () Bool)

(assert (=> b!1440451 m!1329717))

(assert (=> b!1440443 m!1329711))

(declare-fun m!1329719 () Bool)

(assert (=> b!1440443 m!1329719))

(assert (=> b!1440449 m!1329711))

(assert (=> b!1440449 m!1329713))

(assert (=> b!1440449 m!1329713))

(declare-fun m!1329721 () Bool)

(assert (=> b!1440449 m!1329721))

(assert (=> b!1440449 m!1329721))

(assert (=> b!1440449 m!1329713))

(declare-fun m!1329723 () Bool)

(assert (=> b!1440449 m!1329723))

(declare-fun m!1329725 () Bool)

(assert (=> b!1440450 m!1329725))

(declare-fun m!1329727 () Bool)

(assert (=> start!124536 m!1329727))

(declare-fun m!1329729 () Bool)

(assert (=> start!124536 m!1329729))

(check-sat (not start!124536) (not b!1440446) (not b!1440449) (not b!1440445) (not b!1440450) (not b!1440451) (not b!1440444) (not b!1440441) (not b!1440447))
(check-sat)

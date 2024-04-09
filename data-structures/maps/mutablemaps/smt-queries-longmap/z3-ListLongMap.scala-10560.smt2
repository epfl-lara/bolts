; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124542 () Bool)

(assert start!124542)

(declare-fun b!1440530 () Bool)

(declare-fun res!973068 () Bool)

(declare-fun e!812220 () Bool)

(assert (=> b!1440530 (=> (not res!973068) (not e!812220))))

(declare-datatypes ((array!97907 0))(
  ( (array!97908 (arr!47237 (Array (_ BitVec 32) (_ BitVec 64))) (size!47788 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97907)

(declare-datatypes ((List!33918 0))(
  ( (Nil!33915) (Cons!33914 (h!35264 (_ BitVec 64)) (t!48619 List!33918)) )
))
(declare-fun arrayNoDuplicates!0 (array!97907 (_ BitVec 32) List!33918) Bool)

(assert (=> b!1440530 (= res!973068 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33915))))

(declare-fun b!1440532 () Bool)

(declare-fun res!973067 () Bool)

(assert (=> b!1440532 (=> (not res!973067) (not e!812220))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440532 (= res!973067 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47788 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47788 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47788 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47237 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440533 () Bool)

(declare-fun res!973066 () Bool)

(assert (=> b!1440533 (=> (not res!973066) (not e!812220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440533 (= res!973066 (validKeyInArray!0 (select (arr!47237 a!2862) i!1006)))))

(declare-fun b!1440534 () Bool)

(declare-fun e!812222 () Bool)

(assert (=> b!1440534 (= e!812220 e!812222)))

(declare-fun res!973073 () Bool)

(assert (=> b!1440534 (=> (not res!973073) (not e!812222))))

(declare-datatypes ((SeekEntryResult!11512 0))(
  ( (MissingZero!11512 (index!48439 (_ BitVec 32))) (Found!11512 (index!48440 (_ BitVec 32))) (Intermediate!11512 (undefined!12324 Bool) (index!48441 (_ BitVec 32)) (x!130164 (_ BitVec 32))) (Undefined!11512) (MissingVacant!11512 (index!48442 (_ BitVec 32))) )
))
(declare-fun lt!632935 () SeekEntryResult!11512)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97907 (_ BitVec 32)) SeekEntryResult!11512)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440534 (= res!973073 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47237 a!2862) j!93) mask!2687) (select (arr!47237 a!2862) j!93) a!2862 mask!2687) lt!632935))))

(assert (=> b!1440534 (= lt!632935 (Intermediate!11512 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440535 () Bool)

(assert (=> b!1440535 (= e!812222 false)))

(declare-fun lt!632934 () SeekEntryResult!11512)

(assert (=> b!1440535 (= lt!632934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47237 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47237 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97908 (store (arr!47237 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47788 a!2862)) mask!2687))))

(declare-fun b!1440536 () Bool)

(declare-fun res!973071 () Bool)

(assert (=> b!1440536 (=> (not res!973071) (not e!812220))))

(assert (=> b!1440536 (= res!973071 (validKeyInArray!0 (select (arr!47237 a!2862) j!93)))))

(declare-fun b!1440537 () Bool)

(declare-fun res!973072 () Bool)

(assert (=> b!1440537 (=> (not res!973072) (not e!812220))))

(assert (=> b!1440537 (= res!973072 (and (= (size!47788 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47788 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47788 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440538 () Bool)

(declare-fun res!973070 () Bool)

(assert (=> b!1440538 (=> (not res!973070) (not e!812222))))

(assert (=> b!1440538 (= res!973070 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47237 a!2862) j!93) a!2862 mask!2687) lt!632935))))

(declare-fun b!1440531 () Bool)

(declare-fun res!973069 () Bool)

(assert (=> b!1440531 (=> (not res!973069) (not e!812220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97907 (_ BitVec 32)) Bool)

(assert (=> b!1440531 (= res!973069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!973074 () Bool)

(assert (=> start!124542 (=> (not res!973074) (not e!812220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124542 (= res!973074 (validMask!0 mask!2687))))

(assert (=> start!124542 e!812220))

(assert (=> start!124542 true))

(declare-fun array_inv!36182 (array!97907) Bool)

(assert (=> start!124542 (array_inv!36182 a!2862)))

(assert (= (and start!124542 res!973074) b!1440537))

(assert (= (and b!1440537 res!973072) b!1440533))

(assert (= (and b!1440533 res!973066) b!1440536))

(assert (= (and b!1440536 res!973071) b!1440531))

(assert (= (and b!1440531 res!973069) b!1440530))

(assert (= (and b!1440530 res!973068) b!1440532))

(assert (= (and b!1440532 res!973067) b!1440534))

(assert (= (and b!1440534 res!973073) b!1440538))

(assert (= (and b!1440538 res!973070) b!1440535))

(declare-fun m!1329797 () Bool)

(assert (=> start!124542 m!1329797))

(declare-fun m!1329799 () Bool)

(assert (=> start!124542 m!1329799))

(declare-fun m!1329801 () Bool)

(assert (=> b!1440530 m!1329801))

(declare-fun m!1329803 () Bool)

(assert (=> b!1440535 m!1329803))

(declare-fun m!1329805 () Bool)

(assert (=> b!1440535 m!1329805))

(assert (=> b!1440535 m!1329805))

(declare-fun m!1329807 () Bool)

(assert (=> b!1440535 m!1329807))

(assert (=> b!1440535 m!1329807))

(assert (=> b!1440535 m!1329805))

(declare-fun m!1329809 () Bool)

(assert (=> b!1440535 m!1329809))

(declare-fun m!1329811 () Bool)

(assert (=> b!1440534 m!1329811))

(assert (=> b!1440534 m!1329811))

(declare-fun m!1329813 () Bool)

(assert (=> b!1440534 m!1329813))

(assert (=> b!1440534 m!1329813))

(assert (=> b!1440534 m!1329811))

(declare-fun m!1329815 () Bool)

(assert (=> b!1440534 m!1329815))

(assert (=> b!1440532 m!1329803))

(declare-fun m!1329817 () Bool)

(assert (=> b!1440532 m!1329817))

(assert (=> b!1440538 m!1329811))

(assert (=> b!1440538 m!1329811))

(declare-fun m!1329819 () Bool)

(assert (=> b!1440538 m!1329819))

(declare-fun m!1329821 () Bool)

(assert (=> b!1440531 m!1329821))

(declare-fun m!1329823 () Bool)

(assert (=> b!1440533 m!1329823))

(assert (=> b!1440533 m!1329823))

(declare-fun m!1329825 () Bool)

(assert (=> b!1440533 m!1329825))

(assert (=> b!1440536 m!1329811))

(assert (=> b!1440536 m!1329811))

(declare-fun m!1329827 () Bool)

(assert (=> b!1440536 m!1329827))

(check-sat (not b!1440531) (not b!1440536) (not b!1440534) (not b!1440535) (not start!124542) (not b!1440533) (not b!1440530) (not b!1440538))
(check-sat)

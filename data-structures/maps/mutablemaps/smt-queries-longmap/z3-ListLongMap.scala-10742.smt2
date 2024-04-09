; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125634 () Bool)

(assert start!125634)

(declare-fun b!1469598 () Bool)

(declare-fun res!998166 () Bool)

(declare-fun e!825044 () Bool)

(assert (=> b!1469598 (=> (not res!998166) (not e!825044))))

(declare-fun e!825045 () Bool)

(assert (=> b!1469598 (= res!998166 e!825045)))

(declare-fun c!135230 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469598 (= c!135230 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469599 () Bool)

(declare-fun e!825043 () Bool)

(declare-fun e!825042 () Bool)

(assert (=> b!1469599 (= e!825043 e!825042)))

(declare-fun res!998173 () Bool)

(assert (=> b!1469599 (=> (not res!998173) (not e!825042))))

(declare-datatypes ((SeekEntryResult!12046 0))(
  ( (MissingZero!12046 (index!50575 (_ BitVec 32))) (Found!12046 (index!50576 (_ BitVec 32))) (Intermediate!12046 (undefined!12858 Bool) (index!50577 (_ BitVec 32)) (x!132154 (_ BitVec 32))) (Undefined!12046) (MissingVacant!12046 (index!50578 (_ BitVec 32))) )
))
(declare-fun lt!642576 () SeekEntryResult!12046)

(declare-datatypes ((array!98999 0))(
  ( (array!99000 (arr!47783 (Array (_ BitVec 32) (_ BitVec 64))) (size!48334 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98999)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98999 (_ BitVec 32)) SeekEntryResult!12046)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469599 (= res!998173 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47783 a!2862) j!93) mask!2687) (select (arr!47783 a!2862) j!93) a!2862 mask!2687) lt!642576))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469599 (= lt!642576 (Intermediate!12046 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469600 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469600 (= e!825044 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006) (bvsle #b00000000000000000000000000000000 (size!48334 a!2862)) (bvsgt j!93 (size!48334 a!2862))))))

(declare-fun b!1469601 () Bool)

(declare-fun res!998170 () Bool)

(declare-fun e!825047 () Bool)

(assert (=> b!1469601 (=> (not res!998170) (not e!825047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469601 (= res!998170 (validKeyInArray!0 (select (arr!47783 a!2862) j!93)))))

(declare-fun b!1469602 () Bool)

(declare-fun res!998169 () Bool)

(assert (=> b!1469602 (=> (not res!998169) (not e!825047))))

(declare-datatypes ((List!34464 0))(
  ( (Nil!34461) (Cons!34460 (h!35810 (_ BitVec 64)) (t!49165 List!34464)) )
))
(declare-fun arrayNoDuplicates!0 (array!98999 (_ BitVec 32) List!34464) Bool)

(assert (=> b!1469602 (= res!998169 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34461))))

(declare-fun b!1469603 () Bool)

(assert (=> b!1469603 (= e!825047 e!825043)))

(declare-fun res!998167 () Bool)

(assert (=> b!1469603 (=> (not res!998167) (not e!825043))))

(assert (=> b!1469603 (= res!998167 (= (select (store (arr!47783 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!642574 () array!98999)

(assert (=> b!1469603 (= lt!642574 (array!99000 (store (arr!47783 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48334 a!2862)))))

(declare-fun b!1469604 () Bool)

(declare-fun res!998168 () Bool)

(assert (=> b!1469604 (=> (not res!998168) (not e!825047))))

(assert (=> b!1469604 (= res!998168 (and (= (size!48334 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48334 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48334 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!998171 () Bool)

(assert (=> start!125634 (=> (not res!998171) (not e!825047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125634 (= res!998171 (validMask!0 mask!2687))))

(assert (=> start!125634 e!825047))

(assert (=> start!125634 true))

(declare-fun array_inv!36728 (array!98999) Bool)

(assert (=> start!125634 (array_inv!36728 a!2862)))

(declare-fun b!1469605 () Bool)

(declare-fun res!998175 () Bool)

(assert (=> b!1469605 (=> (not res!998175) (not e!825047))))

(assert (=> b!1469605 (= res!998175 (validKeyInArray!0 (select (arr!47783 a!2862) i!1006)))))

(declare-fun b!1469606 () Bool)

(declare-fun res!998174 () Bool)

(assert (=> b!1469606 (=> (not res!998174) (not e!825047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98999 (_ BitVec 32)) Bool)

(assert (=> b!1469606 (= res!998174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469607 () Bool)

(assert (=> b!1469607 (= e!825042 e!825044)))

(declare-fun res!998165 () Bool)

(assert (=> b!1469607 (=> (not res!998165) (not e!825044))))

(declare-fun lt!642575 () SeekEntryResult!12046)

(assert (=> b!1469607 (= res!998165 (= lt!642575 (Intermediate!12046 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642577 () (_ BitVec 64))

(assert (=> b!1469607 (= lt!642575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642577 mask!2687) lt!642577 lt!642574 mask!2687))))

(assert (=> b!1469607 (= lt!642577 (select (store (arr!47783 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469608 () Bool)

(declare-fun res!998164 () Bool)

(assert (=> b!1469608 (=> (not res!998164) (not e!825047))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1469608 (= res!998164 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48334 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48334 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48334 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469609 () Bool)

(declare-fun res!998172 () Bool)

(assert (=> b!1469609 (=> (not res!998172) (not e!825042))))

(assert (=> b!1469609 (= res!998172 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47783 a!2862) j!93) a!2862 mask!2687) lt!642576))))

(declare-fun b!1469610 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98999 (_ BitVec 32)) SeekEntryResult!12046)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98999 (_ BitVec 32)) SeekEntryResult!12046)

(assert (=> b!1469610 (= e!825045 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642577 lt!642574 mask!2687) (seekEntryOrOpen!0 lt!642577 lt!642574 mask!2687)))))

(declare-fun b!1469611 () Bool)

(assert (=> b!1469611 (= e!825045 (= lt!642575 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642577 lt!642574 mask!2687)))))

(assert (= (and start!125634 res!998171) b!1469604))

(assert (= (and b!1469604 res!998168) b!1469605))

(assert (= (and b!1469605 res!998175) b!1469601))

(assert (= (and b!1469601 res!998170) b!1469606))

(assert (= (and b!1469606 res!998174) b!1469602))

(assert (= (and b!1469602 res!998169) b!1469608))

(assert (= (and b!1469608 res!998164) b!1469603))

(assert (= (and b!1469603 res!998167) b!1469599))

(assert (= (and b!1469599 res!998173) b!1469609))

(assert (= (and b!1469609 res!998172) b!1469607))

(assert (= (and b!1469607 res!998165) b!1469598))

(assert (= (and b!1469598 c!135230) b!1469611))

(assert (= (and b!1469598 (not c!135230)) b!1469610))

(assert (= (and b!1469598 res!998166) b!1469600))

(declare-fun m!1356815 () Bool)

(assert (=> start!125634 m!1356815))

(declare-fun m!1356817 () Bool)

(assert (=> start!125634 m!1356817))

(declare-fun m!1356819 () Bool)

(assert (=> b!1469606 m!1356819))

(declare-fun m!1356821 () Bool)

(assert (=> b!1469602 m!1356821))

(declare-fun m!1356823 () Bool)

(assert (=> b!1469605 m!1356823))

(assert (=> b!1469605 m!1356823))

(declare-fun m!1356825 () Bool)

(assert (=> b!1469605 m!1356825))

(declare-fun m!1356827 () Bool)

(assert (=> b!1469603 m!1356827))

(declare-fun m!1356829 () Bool)

(assert (=> b!1469603 m!1356829))

(declare-fun m!1356831 () Bool)

(assert (=> b!1469601 m!1356831))

(assert (=> b!1469601 m!1356831))

(declare-fun m!1356833 () Bool)

(assert (=> b!1469601 m!1356833))

(declare-fun m!1356835 () Bool)

(assert (=> b!1469611 m!1356835))

(assert (=> b!1469599 m!1356831))

(assert (=> b!1469599 m!1356831))

(declare-fun m!1356837 () Bool)

(assert (=> b!1469599 m!1356837))

(assert (=> b!1469599 m!1356837))

(assert (=> b!1469599 m!1356831))

(declare-fun m!1356839 () Bool)

(assert (=> b!1469599 m!1356839))

(declare-fun m!1356841 () Bool)

(assert (=> b!1469607 m!1356841))

(assert (=> b!1469607 m!1356841))

(declare-fun m!1356843 () Bool)

(assert (=> b!1469607 m!1356843))

(assert (=> b!1469607 m!1356827))

(declare-fun m!1356845 () Bool)

(assert (=> b!1469607 m!1356845))

(assert (=> b!1469609 m!1356831))

(assert (=> b!1469609 m!1356831))

(declare-fun m!1356847 () Bool)

(assert (=> b!1469609 m!1356847))

(declare-fun m!1356849 () Bool)

(assert (=> b!1469610 m!1356849))

(declare-fun m!1356851 () Bool)

(assert (=> b!1469610 m!1356851))

(check-sat (not b!1469610) (not b!1469605) (not b!1469602) (not b!1469599) (not b!1469606) (not b!1469601) (not start!125634) (not b!1469609) (not b!1469611) (not b!1469607))
(check-sat)

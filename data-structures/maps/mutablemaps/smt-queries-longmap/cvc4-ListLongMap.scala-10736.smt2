; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125600 () Bool)

(assert start!125600)

(declare-fun b!1468961 () Bool)

(declare-fun res!997617 () Bool)

(declare-fun e!824768 () Bool)

(assert (=> b!1468961 (=> (not res!997617) (not e!824768))))

(declare-datatypes ((array!98965 0))(
  ( (array!98966 (arr!47766 (Array (_ BitVec 32) (_ BitVec 64))) (size!48317 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98965)

(declare-datatypes ((List!34447 0))(
  ( (Nil!34444) (Cons!34443 (h!35793 (_ BitVec 64)) (t!49148 List!34447)) )
))
(declare-fun arrayNoDuplicates!0 (array!98965 (_ BitVec 32) List!34447) Bool)

(assert (=> b!1468961 (= res!997617 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34444))))

(declare-fun b!1468962 () Bool)

(declare-fun res!997614 () Bool)

(assert (=> b!1468962 (=> (not res!997614) (not e!824768))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468962 (= res!997614 (validKeyInArray!0 (select (arr!47766 a!2862) i!1006)))))

(declare-fun b!1468963 () Bool)

(declare-fun res!997609 () Bool)

(assert (=> b!1468963 (=> (not res!997609) (not e!824768))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1468963 (= res!997609 (validKeyInArray!0 (select (arr!47766 a!2862) j!93)))))

(declare-fun b!1468964 () Bool)

(declare-fun e!824767 () Bool)

(assert (=> b!1468964 (= e!824767 false)))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12029 0))(
  ( (MissingZero!12029 (index!50507 (_ BitVec 32))) (Found!12029 (index!50508 (_ BitVec 32))) (Intermediate!12029 (undefined!12841 Bool) (index!50509 (_ BitVec 32)) (x!132089 (_ BitVec 32))) (Undefined!12029) (MissingVacant!12029 (index!50510 (_ BitVec 32))) )
))
(declare-fun lt!642364 () SeekEntryResult!12029)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98965 (_ BitVec 32)) SeekEntryResult!12029)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468964 (= lt!642364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47766 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47766 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98966 (store (arr!47766 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48317 a!2862)) mask!2687))))

(declare-fun b!1468966 () Bool)

(declare-fun res!997610 () Bool)

(assert (=> b!1468966 (=> (not res!997610) (not e!824768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98965 (_ BitVec 32)) Bool)

(assert (=> b!1468966 (= res!997610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468967 () Bool)

(declare-fun res!997615 () Bool)

(assert (=> b!1468967 (=> (not res!997615) (not e!824768))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468967 (= res!997615 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48317 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48317 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48317 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47766 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468968 () Bool)

(declare-fun res!997616 () Bool)

(assert (=> b!1468968 (=> (not res!997616) (not e!824767))))

(declare-fun lt!642363 () SeekEntryResult!12029)

(assert (=> b!1468968 (= res!997616 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47766 a!2862) j!93) a!2862 mask!2687) lt!642363))))

(declare-fun b!1468969 () Bool)

(assert (=> b!1468969 (= e!824768 e!824767)))

(declare-fun res!997611 () Bool)

(assert (=> b!1468969 (=> (not res!997611) (not e!824767))))

(assert (=> b!1468969 (= res!997611 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47766 a!2862) j!93) mask!2687) (select (arr!47766 a!2862) j!93) a!2862 mask!2687) lt!642363))))

(assert (=> b!1468969 (= lt!642363 (Intermediate!12029 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!997613 () Bool)

(assert (=> start!125600 (=> (not res!997613) (not e!824768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125600 (= res!997613 (validMask!0 mask!2687))))

(assert (=> start!125600 e!824768))

(assert (=> start!125600 true))

(declare-fun array_inv!36711 (array!98965) Bool)

(assert (=> start!125600 (array_inv!36711 a!2862)))

(declare-fun b!1468965 () Bool)

(declare-fun res!997612 () Bool)

(assert (=> b!1468965 (=> (not res!997612) (not e!824768))))

(assert (=> b!1468965 (= res!997612 (and (= (size!48317 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48317 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48317 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125600 res!997613) b!1468965))

(assert (= (and b!1468965 res!997612) b!1468962))

(assert (= (and b!1468962 res!997614) b!1468963))

(assert (= (and b!1468963 res!997609) b!1468966))

(assert (= (and b!1468966 res!997610) b!1468961))

(assert (= (and b!1468961 res!997617) b!1468967))

(assert (= (and b!1468967 res!997615) b!1468969))

(assert (= (and b!1468969 res!997611) b!1468968))

(assert (= (and b!1468968 res!997616) b!1468964))

(declare-fun m!1356193 () Bool)

(assert (=> b!1468964 m!1356193))

(declare-fun m!1356195 () Bool)

(assert (=> b!1468964 m!1356195))

(assert (=> b!1468964 m!1356195))

(declare-fun m!1356197 () Bool)

(assert (=> b!1468964 m!1356197))

(assert (=> b!1468964 m!1356197))

(assert (=> b!1468964 m!1356195))

(declare-fun m!1356199 () Bool)

(assert (=> b!1468964 m!1356199))

(declare-fun m!1356201 () Bool)

(assert (=> b!1468962 m!1356201))

(assert (=> b!1468962 m!1356201))

(declare-fun m!1356203 () Bool)

(assert (=> b!1468962 m!1356203))

(declare-fun m!1356205 () Bool)

(assert (=> b!1468961 m!1356205))

(declare-fun m!1356207 () Bool)

(assert (=> b!1468969 m!1356207))

(assert (=> b!1468969 m!1356207))

(declare-fun m!1356209 () Bool)

(assert (=> b!1468969 m!1356209))

(assert (=> b!1468969 m!1356209))

(assert (=> b!1468969 m!1356207))

(declare-fun m!1356211 () Bool)

(assert (=> b!1468969 m!1356211))

(assert (=> b!1468967 m!1356193))

(declare-fun m!1356213 () Bool)

(assert (=> b!1468967 m!1356213))

(assert (=> b!1468968 m!1356207))

(assert (=> b!1468968 m!1356207))

(declare-fun m!1356215 () Bool)

(assert (=> b!1468968 m!1356215))

(declare-fun m!1356217 () Bool)

(assert (=> start!125600 m!1356217))

(declare-fun m!1356219 () Bool)

(assert (=> start!125600 m!1356219))

(declare-fun m!1356221 () Bool)

(assert (=> b!1468966 m!1356221))

(assert (=> b!1468963 m!1356207))

(assert (=> b!1468963 m!1356207))

(declare-fun m!1356223 () Bool)

(assert (=> b!1468963 m!1356223))

(push 1)

(assert (not b!1468963))

(assert (not b!1468968))

(assert (not b!1468966))

(assert (not b!1468969))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125504 () Bool)

(assert start!125504)

(declare-fun b!1467675 () Bool)

(declare-fun res!996324 () Bool)

(declare-fun e!824345 () Bool)

(assert (=> b!1467675 (=> (not res!996324) (not e!824345))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98869 0))(
  ( (array!98870 (arr!47718 (Array (_ BitVec 32) (_ BitVec 64))) (size!48269 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98869)

(assert (=> b!1467675 (= res!996324 (and (= (size!48269 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48269 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48269 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467676 () Bool)

(declare-fun res!996330 () Bool)

(assert (=> b!1467676 (=> (not res!996330) (not e!824345))))

(declare-datatypes ((List!34399 0))(
  ( (Nil!34396) (Cons!34395 (h!35745 (_ BitVec 64)) (t!49100 List!34399)) )
))
(declare-fun arrayNoDuplicates!0 (array!98869 (_ BitVec 32) List!34399) Bool)

(assert (=> b!1467676 (= res!996330 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34396))))

(declare-fun b!1467677 () Bool)

(declare-fun res!996326 () Bool)

(assert (=> b!1467677 (=> (not res!996326) (not e!824345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467677 (= res!996326 (validKeyInArray!0 (select (arr!47718 a!2862) i!1006)))))

(declare-fun b!1467678 () Bool)

(assert (=> b!1467678 (= e!824345 false)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11981 0))(
  ( (MissingZero!11981 (index!50315 (_ BitVec 32))) (Found!11981 (index!50316 (_ BitVec 32))) (Intermediate!11981 (undefined!12793 Bool) (index!50317 (_ BitVec 32)) (x!131913 (_ BitVec 32))) (Undefined!11981) (MissingVacant!11981 (index!50318 (_ BitVec 32))) )
))
(declare-fun lt!642085 () SeekEntryResult!11981)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98869 (_ BitVec 32)) SeekEntryResult!11981)

(assert (=> b!1467678 (= lt!642085 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47718 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467679 () Bool)

(declare-fun res!996327 () Bool)

(assert (=> b!1467679 (=> (not res!996327) (not e!824345))))

(assert (=> b!1467679 (= res!996327 (validKeyInArray!0 (select (arr!47718 a!2862) j!93)))))

(declare-fun b!1467681 () Bool)

(declare-fun res!996323 () Bool)

(assert (=> b!1467681 (=> (not res!996323) (not e!824345))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467681 (= res!996323 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48269 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48269 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48269 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47718 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467682 () Bool)

(declare-fun res!996329 () Bool)

(assert (=> b!1467682 (=> (not res!996329) (not e!824345))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98869 (_ BitVec 32)) Bool)

(assert (=> b!1467682 (= res!996329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467680 () Bool)

(declare-fun res!996325 () Bool)

(assert (=> b!1467680 (=> (not res!996325) (not e!824345))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467680 (= res!996325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47718 a!2862) j!93) mask!2687) (select (arr!47718 a!2862) j!93) a!2862 mask!2687) (Intermediate!11981 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun res!996328 () Bool)

(assert (=> start!125504 (=> (not res!996328) (not e!824345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125504 (= res!996328 (validMask!0 mask!2687))))

(assert (=> start!125504 e!824345))

(assert (=> start!125504 true))

(declare-fun array_inv!36663 (array!98869) Bool)

(assert (=> start!125504 (array_inv!36663 a!2862)))

(assert (= (and start!125504 res!996328) b!1467675))

(assert (= (and b!1467675 res!996324) b!1467677))

(assert (= (and b!1467677 res!996326) b!1467679))

(assert (= (and b!1467679 res!996327) b!1467682))

(assert (= (and b!1467682 res!996329) b!1467676))

(assert (= (and b!1467676 res!996330) b!1467681))

(assert (= (and b!1467681 res!996323) b!1467680))

(assert (= (and b!1467680 res!996325) b!1467678))

(declare-fun m!1354693 () Bool)

(assert (=> b!1467682 m!1354693))

(declare-fun m!1354695 () Bool)

(assert (=> b!1467678 m!1354695))

(assert (=> b!1467678 m!1354695))

(declare-fun m!1354697 () Bool)

(assert (=> b!1467678 m!1354697))

(declare-fun m!1354699 () Bool)

(assert (=> b!1467677 m!1354699))

(assert (=> b!1467677 m!1354699))

(declare-fun m!1354701 () Bool)

(assert (=> b!1467677 m!1354701))

(declare-fun m!1354703 () Bool)

(assert (=> b!1467676 m!1354703))

(declare-fun m!1354705 () Bool)

(assert (=> start!125504 m!1354705))

(declare-fun m!1354707 () Bool)

(assert (=> start!125504 m!1354707))

(assert (=> b!1467680 m!1354695))

(assert (=> b!1467680 m!1354695))

(declare-fun m!1354709 () Bool)

(assert (=> b!1467680 m!1354709))

(assert (=> b!1467680 m!1354709))

(assert (=> b!1467680 m!1354695))

(declare-fun m!1354711 () Bool)

(assert (=> b!1467680 m!1354711))

(assert (=> b!1467679 m!1354695))

(assert (=> b!1467679 m!1354695))

(declare-fun m!1354713 () Bool)

(assert (=> b!1467679 m!1354713))

(declare-fun m!1354715 () Bool)

(assert (=> b!1467681 m!1354715))

(declare-fun m!1354717 () Bool)

(assert (=> b!1467681 m!1354717))

(push 1)

(assert (not start!125504))

(assert (not b!1467678))

(assert (not b!1467679))

(assert (not b!1467677))

(assert (not b!1467680))

(assert (not b!1467682))

(assert (not b!1467676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


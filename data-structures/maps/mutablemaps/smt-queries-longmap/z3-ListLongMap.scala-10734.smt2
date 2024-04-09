; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125586 () Bool)

(assert start!125586)

(declare-fun b!1468772 () Bool)

(declare-fun e!824705 () Bool)

(declare-fun e!824703 () Bool)

(assert (=> b!1468772 (= e!824705 e!824703)))

(declare-fun res!997427 () Bool)

(assert (=> b!1468772 (=> (not res!997427) (not e!824703))))

(declare-datatypes ((SeekEntryResult!12022 0))(
  ( (MissingZero!12022 (index!50479 (_ BitVec 32))) (Found!12022 (index!50480 (_ BitVec 32))) (Intermediate!12022 (undefined!12834 Bool) (index!50481 (_ BitVec 32)) (x!132066 (_ BitVec 32))) (Undefined!12022) (MissingVacant!12022 (index!50482 (_ BitVec 32))) )
))
(declare-fun lt!642321 () SeekEntryResult!12022)

(declare-datatypes ((array!98951 0))(
  ( (array!98952 (arr!47759 (Array (_ BitVec 32) (_ BitVec 64))) (size!48310 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98951)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98951 (_ BitVec 32)) SeekEntryResult!12022)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468772 (= res!997427 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47759 a!2862) j!93) mask!2687) (select (arr!47759 a!2862) j!93) a!2862 mask!2687) lt!642321))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468772 (= lt!642321 (Intermediate!12022 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468773 () Bool)

(assert (=> b!1468773 (= e!824703 false)))

(declare-fun lt!642322 () SeekEntryResult!12022)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1468773 (= lt!642322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47759 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47759 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98952 (store (arr!47759 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48310 a!2862)) mask!2687))))

(declare-fun b!1468774 () Bool)

(declare-fun res!997426 () Bool)

(assert (=> b!1468774 (=> (not res!997426) (not e!824705))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468774 (= res!997426 (validKeyInArray!0 (select (arr!47759 a!2862) i!1006)))))

(declare-fun b!1468775 () Bool)

(declare-fun res!997421 () Bool)

(assert (=> b!1468775 (=> (not res!997421) (not e!824705))))

(assert (=> b!1468775 (= res!997421 (validKeyInArray!0 (select (arr!47759 a!2862) j!93)))))

(declare-fun b!1468776 () Bool)

(declare-fun res!997428 () Bool)

(assert (=> b!1468776 (=> (not res!997428) (not e!824703))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1468776 (= res!997428 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47759 a!2862) j!93) a!2862 mask!2687) lt!642321))))

(declare-fun b!1468777 () Bool)

(declare-fun res!997425 () Bool)

(assert (=> b!1468777 (=> (not res!997425) (not e!824705))))

(declare-datatypes ((List!34440 0))(
  ( (Nil!34437) (Cons!34436 (h!35786 (_ BitVec 64)) (t!49141 List!34440)) )
))
(declare-fun arrayNoDuplicates!0 (array!98951 (_ BitVec 32) List!34440) Bool)

(assert (=> b!1468777 (= res!997425 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34437))))

(declare-fun b!1468779 () Bool)

(declare-fun res!997423 () Bool)

(assert (=> b!1468779 (=> (not res!997423) (not e!824705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98951 (_ BitVec 32)) Bool)

(assert (=> b!1468779 (= res!997423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468780 () Bool)

(declare-fun res!997420 () Bool)

(assert (=> b!1468780 (=> (not res!997420) (not e!824705))))

(assert (=> b!1468780 (= res!997420 (and (= (size!48310 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48310 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48310 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!997422 () Bool)

(assert (=> start!125586 (=> (not res!997422) (not e!824705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125586 (= res!997422 (validMask!0 mask!2687))))

(assert (=> start!125586 e!824705))

(assert (=> start!125586 true))

(declare-fun array_inv!36704 (array!98951) Bool)

(assert (=> start!125586 (array_inv!36704 a!2862)))

(declare-fun b!1468778 () Bool)

(declare-fun res!997424 () Bool)

(assert (=> b!1468778 (=> (not res!997424) (not e!824705))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468778 (= res!997424 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48310 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48310 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48310 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47759 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125586 res!997422) b!1468780))

(assert (= (and b!1468780 res!997420) b!1468774))

(assert (= (and b!1468774 res!997426) b!1468775))

(assert (= (and b!1468775 res!997421) b!1468779))

(assert (= (and b!1468779 res!997423) b!1468777))

(assert (= (and b!1468777 res!997425) b!1468778))

(assert (= (and b!1468778 res!997424) b!1468772))

(assert (= (and b!1468772 res!997427) b!1468776))

(assert (= (and b!1468776 res!997428) b!1468773))

(declare-fun m!1355969 () Bool)

(assert (=> b!1468778 m!1355969))

(declare-fun m!1355971 () Bool)

(assert (=> b!1468778 m!1355971))

(declare-fun m!1355973 () Bool)

(assert (=> b!1468776 m!1355973))

(assert (=> b!1468776 m!1355973))

(declare-fun m!1355975 () Bool)

(assert (=> b!1468776 m!1355975))

(declare-fun m!1355977 () Bool)

(assert (=> b!1468774 m!1355977))

(assert (=> b!1468774 m!1355977))

(declare-fun m!1355979 () Bool)

(assert (=> b!1468774 m!1355979))

(declare-fun m!1355981 () Bool)

(assert (=> b!1468777 m!1355981))

(assert (=> b!1468775 m!1355973))

(assert (=> b!1468775 m!1355973))

(declare-fun m!1355983 () Bool)

(assert (=> b!1468775 m!1355983))

(declare-fun m!1355985 () Bool)

(assert (=> start!125586 m!1355985))

(declare-fun m!1355987 () Bool)

(assert (=> start!125586 m!1355987))

(assert (=> b!1468772 m!1355973))

(assert (=> b!1468772 m!1355973))

(declare-fun m!1355989 () Bool)

(assert (=> b!1468772 m!1355989))

(assert (=> b!1468772 m!1355989))

(assert (=> b!1468772 m!1355973))

(declare-fun m!1355991 () Bool)

(assert (=> b!1468772 m!1355991))

(assert (=> b!1468773 m!1355969))

(declare-fun m!1355993 () Bool)

(assert (=> b!1468773 m!1355993))

(assert (=> b!1468773 m!1355993))

(declare-fun m!1355995 () Bool)

(assert (=> b!1468773 m!1355995))

(assert (=> b!1468773 m!1355995))

(assert (=> b!1468773 m!1355993))

(declare-fun m!1355997 () Bool)

(assert (=> b!1468773 m!1355997))

(declare-fun m!1355999 () Bool)

(assert (=> b!1468779 m!1355999))

(check-sat (not b!1468772) (not start!125586) (not b!1468773) (not b!1468774) (not b!1468776) (not b!1468779) (not b!1468775) (not b!1468777))
(check-sat)

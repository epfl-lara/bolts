; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125524 () Bool)

(assert start!125524)

(declare-fun b!1467935 () Bool)

(declare-fun res!996591 () Bool)

(declare-fun e!824424 () Bool)

(assert (=> b!1467935 (=> (not res!996591) (not e!824424))))

(declare-datatypes ((array!98889 0))(
  ( (array!98890 (arr!47728 (Array (_ BitVec 32) (_ BitVec 64))) (size!48279 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98889)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467935 (= res!996591 (validKeyInArray!0 (select (arr!47728 a!2862) i!1006)))))

(declare-fun b!1467936 () Bool)

(declare-fun res!996587 () Bool)

(assert (=> b!1467936 (=> (not res!996587) (not e!824424))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98889 (_ BitVec 32)) Bool)

(assert (=> b!1467936 (= res!996587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467937 () Bool)

(declare-fun res!996588 () Bool)

(assert (=> b!1467937 (=> (not res!996588) (not e!824424))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1467937 (= res!996588 (validKeyInArray!0 (select (arr!47728 a!2862) j!93)))))

(declare-fun b!1467938 () Bool)

(declare-fun res!996585 () Bool)

(assert (=> b!1467938 (=> (not res!996585) (not e!824424))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467938 (= res!996585 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48279 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48279 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48279 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47728 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467939 () Bool)

(declare-fun res!996590 () Bool)

(declare-fun e!824425 () Bool)

(assert (=> b!1467939 (=> (not res!996590) (not e!824425))))

(declare-datatypes ((SeekEntryResult!11991 0))(
  ( (MissingZero!11991 (index!50355 (_ BitVec 32))) (Found!11991 (index!50356 (_ BitVec 32))) (Intermediate!11991 (undefined!12803 Bool) (index!50357 (_ BitVec 32)) (x!131955 (_ BitVec 32))) (Undefined!11991) (MissingVacant!11991 (index!50358 (_ BitVec 32))) )
))
(declare-fun lt!642136 () SeekEntryResult!11991)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98889 (_ BitVec 32)) SeekEntryResult!11991)

(assert (=> b!1467939 (= res!996590 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47728 a!2862) j!93) a!2862 mask!2687) lt!642136))))

(declare-fun b!1467940 () Bool)

(assert (=> b!1467940 (= e!824424 e!824425)))

(declare-fun res!996589 () Bool)

(assert (=> b!1467940 (=> (not res!996589) (not e!824425))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467940 (= res!996589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47728 a!2862) j!93) mask!2687) (select (arr!47728 a!2862) j!93) a!2862 mask!2687) lt!642136))))

(assert (=> b!1467940 (= lt!642136 (Intermediate!11991 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467941 () Bool)

(declare-fun res!996586 () Bool)

(assert (=> b!1467941 (=> (not res!996586) (not e!824424))))

(declare-datatypes ((List!34409 0))(
  ( (Nil!34406) (Cons!34405 (h!35755 (_ BitVec 64)) (t!49110 List!34409)) )
))
(declare-fun arrayNoDuplicates!0 (array!98889 (_ BitVec 32) List!34409) Bool)

(assert (=> b!1467941 (= res!996586 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34406))))

(declare-fun res!996584 () Bool)

(assert (=> start!125524 (=> (not res!996584) (not e!824424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125524 (= res!996584 (validMask!0 mask!2687))))

(assert (=> start!125524 e!824424))

(assert (=> start!125524 true))

(declare-fun array_inv!36673 (array!98889) Bool)

(assert (=> start!125524 (array_inv!36673 a!2862)))

(declare-fun b!1467942 () Bool)

(declare-fun res!996583 () Bool)

(assert (=> b!1467942 (=> (not res!996583) (not e!824424))))

(assert (=> b!1467942 (= res!996583 (and (= (size!48279 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48279 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48279 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467943 () Bool)

(assert (=> b!1467943 (= e!824425 false)))

(declare-fun lt!642135 () SeekEntryResult!11991)

(assert (=> b!1467943 (= lt!642135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47728 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47728 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98890 (store (arr!47728 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48279 a!2862)) mask!2687))))

(assert (= (and start!125524 res!996584) b!1467942))

(assert (= (and b!1467942 res!996583) b!1467935))

(assert (= (and b!1467935 res!996591) b!1467937))

(assert (= (and b!1467937 res!996588) b!1467936))

(assert (= (and b!1467936 res!996587) b!1467941))

(assert (= (and b!1467941 res!996586) b!1467938))

(assert (= (and b!1467938 res!996585) b!1467940))

(assert (= (and b!1467940 res!996589) b!1467939))

(assert (= (and b!1467939 res!996590) b!1467943))

(declare-fun m!1354977 () Bool)

(assert (=> b!1467939 m!1354977))

(assert (=> b!1467939 m!1354977))

(declare-fun m!1354979 () Bool)

(assert (=> b!1467939 m!1354979))

(assert (=> b!1467940 m!1354977))

(assert (=> b!1467940 m!1354977))

(declare-fun m!1354981 () Bool)

(assert (=> b!1467940 m!1354981))

(assert (=> b!1467940 m!1354981))

(assert (=> b!1467940 m!1354977))

(declare-fun m!1354983 () Bool)

(assert (=> b!1467940 m!1354983))

(declare-fun m!1354985 () Bool)

(assert (=> b!1467943 m!1354985))

(declare-fun m!1354987 () Bool)

(assert (=> b!1467943 m!1354987))

(assert (=> b!1467943 m!1354987))

(declare-fun m!1354989 () Bool)

(assert (=> b!1467943 m!1354989))

(assert (=> b!1467943 m!1354989))

(assert (=> b!1467943 m!1354987))

(declare-fun m!1354991 () Bool)

(assert (=> b!1467943 m!1354991))

(declare-fun m!1354993 () Bool)

(assert (=> start!125524 m!1354993))

(declare-fun m!1354995 () Bool)

(assert (=> start!125524 m!1354995))

(declare-fun m!1354997 () Bool)

(assert (=> b!1467941 m!1354997))

(declare-fun m!1354999 () Bool)

(assert (=> b!1467935 m!1354999))

(assert (=> b!1467935 m!1354999))

(declare-fun m!1355001 () Bool)

(assert (=> b!1467935 m!1355001))

(assert (=> b!1467938 m!1354985))

(declare-fun m!1355003 () Bool)

(assert (=> b!1467938 m!1355003))

(assert (=> b!1467937 m!1354977))

(assert (=> b!1467937 m!1354977))

(declare-fun m!1355005 () Bool)

(assert (=> b!1467937 m!1355005))

(declare-fun m!1355007 () Bool)

(assert (=> b!1467936 m!1355007))

(push 1)


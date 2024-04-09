; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125482 () Bool)

(assert start!125482)

(declare-fun b!1467427 () Bool)

(declare-fun res!996077 () Bool)

(declare-fun e!824278 () Bool)

(assert (=> b!1467427 (=> (not res!996077) (not e!824278))))

(declare-datatypes ((array!98847 0))(
  ( (array!98848 (arr!47707 (Array (_ BitVec 32) (_ BitVec 64))) (size!48258 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98847)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467427 (= res!996077 (validKeyInArray!0 (select (arr!47707 a!2862) j!93)))))

(declare-fun b!1467428 () Bool)

(declare-fun res!996079 () Bool)

(assert (=> b!1467428 (=> (not res!996079) (not e!824278))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467428 (= res!996079 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48258 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48258 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48258 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47707 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467429 () Bool)

(declare-fun res!996076 () Bool)

(assert (=> b!1467429 (=> (not res!996076) (not e!824278))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1467429 (= res!996076 (and (= (size!48258 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48258 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48258 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467430 () Bool)

(declare-fun res!996075 () Bool)

(assert (=> b!1467430 (=> (not res!996075) (not e!824278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98847 (_ BitVec 32)) Bool)

(assert (=> b!1467430 (= res!996075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!996078 () Bool)

(assert (=> start!125482 (=> (not res!996078) (not e!824278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125482 (= res!996078 (validMask!0 mask!2687))))

(assert (=> start!125482 e!824278))

(assert (=> start!125482 true))

(declare-fun array_inv!36652 (array!98847) Bool)

(assert (=> start!125482 (array_inv!36652 a!2862)))

(declare-fun b!1467431 () Bool)

(declare-fun res!996080 () Bool)

(assert (=> b!1467431 (=> (not res!996080) (not e!824278))))

(assert (=> b!1467431 (= res!996080 (validKeyInArray!0 (select (arr!47707 a!2862) i!1006)))))

(declare-fun b!1467432 () Bool)

(assert (=> b!1467432 (= e!824278 false)))

(declare-fun lt!642052 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467432 (= lt!642052 (toIndex!0 (select (arr!47707 a!2862) j!93) mask!2687))))

(declare-fun b!1467433 () Bool)

(declare-fun res!996081 () Bool)

(assert (=> b!1467433 (=> (not res!996081) (not e!824278))))

(declare-datatypes ((List!34388 0))(
  ( (Nil!34385) (Cons!34384 (h!35734 (_ BitVec 64)) (t!49089 List!34388)) )
))
(declare-fun arrayNoDuplicates!0 (array!98847 (_ BitVec 32) List!34388) Bool)

(assert (=> b!1467433 (= res!996081 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34385))))

(assert (= (and start!125482 res!996078) b!1467429))

(assert (= (and b!1467429 res!996076) b!1467431))

(assert (= (and b!1467431 res!996080) b!1467427))

(assert (= (and b!1467427 res!996077) b!1467430))

(assert (= (and b!1467430 res!996075) b!1467433))

(assert (= (and b!1467433 res!996081) b!1467428))

(assert (= (and b!1467428 res!996079) b!1467432))

(declare-fun m!1354425 () Bool)

(assert (=> b!1467432 m!1354425))

(assert (=> b!1467432 m!1354425))

(declare-fun m!1354427 () Bool)

(assert (=> b!1467432 m!1354427))

(assert (=> b!1467427 m!1354425))

(assert (=> b!1467427 m!1354425))

(declare-fun m!1354429 () Bool)

(assert (=> b!1467427 m!1354429))

(declare-fun m!1354431 () Bool)

(assert (=> b!1467430 m!1354431))

(declare-fun m!1354433 () Bool)

(assert (=> b!1467431 m!1354433))

(assert (=> b!1467431 m!1354433))

(declare-fun m!1354435 () Bool)

(assert (=> b!1467431 m!1354435))

(declare-fun m!1354437 () Bool)

(assert (=> start!125482 m!1354437))

(declare-fun m!1354439 () Bool)

(assert (=> start!125482 m!1354439))

(declare-fun m!1354441 () Bool)

(assert (=> b!1467428 m!1354441))

(declare-fun m!1354443 () Bool)

(assert (=> b!1467428 m!1354443))

(declare-fun m!1354445 () Bool)

(assert (=> b!1467433 m!1354445))

(push 1)

(assert (not b!1467431))

(assert (not b!1467430))

(assert (not start!125482))

(assert (not b!1467432))

(assert (not b!1467433))

(assert (not b!1467427))

(check-sat)

(pop 1)


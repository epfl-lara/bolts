; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125582 () Bool)

(assert start!125582)

(declare-fun b!1468718 () Bool)

(declare-fun res!997372 () Bool)

(declare-fun e!824685 () Bool)

(assert (=> b!1468718 (=> (not res!997372) (not e!824685))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98947 0))(
  ( (array!98948 (arr!47757 (Array (_ BitVec 32) (_ BitVec 64))) (size!48308 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98947)

(assert (=> b!1468718 (= res!997372 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48308 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48308 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48308 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47757 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468719 () Bool)

(declare-fun res!997370 () Bool)

(assert (=> b!1468719 (=> (not res!997370) (not e!824685))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1468719 (= res!997370 (and (= (size!48308 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48308 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48308 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468720 () Bool)

(declare-fun res!997367 () Bool)

(declare-fun e!824686 () Bool)

(assert (=> b!1468720 (=> (not res!997367) (not e!824686))))

(declare-datatypes ((SeekEntryResult!12020 0))(
  ( (MissingZero!12020 (index!50471 (_ BitVec 32))) (Found!12020 (index!50472 (_ BitVec 32))) (Intermediate!12020 (undefined!12832 Bool) (index!50473 (_ BitVec 32)) (x!132056 (_ BitVec 32))) (Undefined!12020) (MissingVacant!12020 (index!50474 (_ BitVec 32))) )
))
(declare-fun lt!642309 () SeekEntryResult!12020)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98947 (_ BitVec 32)) SeekEntryResult!12020)

(assert (=> b!1468720 (= res!997367 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47757 a!2862) j!93) a!2862 mask!2687) lt!642309))))

(declare-fun b!1468721 () Bool)

(declare-fun res!997373 () Bool)

(assert (=> b!1468721 (=> (not res!997373) (not e!824685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468721 (= res!997373 (validKeyInArray!0 (select (arr!47757 a!2862) i!1006)))))

(declare-fun b!1468722 () Bool)

(declare-fun res!997366 () Bool)

(assert (=> b!1468722 (=> (not res!997366) (not e!824685))))

(declare-datatypes ((List!34438 0))(
  ( (Nil!34435) (Cons!34434 (h!35784 (_ BitVec 64)) (t!49139 List!34438)) )
))
(declare-fun arrayNoDuplicates!0 (array!98947 (_ BitVec 32) List!34438) Bool)

(assert (=> b!1468722 (= res!997366 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34435))))

(declare-fun b!1468723 () Bool)

(declare-fun res!997371 () Bool)

(assert (=> b!1468723 (=> (not res!997371) (not e!824685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98947 (_ BitVec 32)) Bool)

(assert (=> b!1468723 (= res!997371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468724 () Bool)

(assert (=> b!1468724 (= e!824686 false)))

(declare-fun lt!642310 () SeekEntryResult!12020)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468724 (= lt!642310 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47757 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47757 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98948 (store (arr!47757 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48308 a!2862)) mask!2687))))

(declare-fun b!1468725 () Bool)

(assert (=> b!1468725 (= e!824685 e!824686)))

(declare-fun res!997369 () Bool)

(assert (=> b!1468725 (=> (not res!997369) (not e!824686))))

(assert (=> b!1468725 (= res!997369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47757 a!2862) j!93) mask!2687) (select (arr!47757 a!2862) j!93) a!2862 mask!2687) lt!642309))))

(assert (=> b!1468725 (= lt!642309 (Intermediate!12020 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468726 () Bool)

(declare-fun res!997368 () Bool)

(assert (=> b!1468726 (=> (not res!997368) (not e!824685))))

(assert (=> b!1468726 (= res!997368 (validKeyInArray!0 (select (arr!47757 a!2862) j!93)))))

(declare-fun res!997374 () Bool)

(assert (=> start!125582 (=> (not res!997374) (not e!824685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125582 (= res!997374 (validMask!0 mask!2687))))

(assert (=> start!125582 e!824685))

(assert (=> start!125582 true))

(declare-fun array_inv!36702 (array!98947) Bool)

(assert (=> start!125582 (array_inv!36702 a!2862)))

(assert (= (and start!125582 res!997374) b!1468719))

(assert (= (and b!1468719 res!997370) b!1468721))

(assert (= (and b!1468721 res!997373) b!1468726))

(assert (= (and b!1468726 res!997368) b!1468723))

(assert (= (and b!1468723 res!997371) b!1468722))

(assert (= (and b!1468722 res!997366) b!1468718))

(assert (= (and b!1468718 res!997372) b!1468725))

(assert (= (and b!1468725 res!997369) b!1468720))

(assert (= (and b!1468720 res!997367) b!1468724))

(declare-fun m!1355905 () Bool)

(assert (=> b!1468722 m!1355905))

(declare-fun m!1355907 () Bool)

(assert (=> b!1468723 m!1355907))

(declare-fun m!1355909 () Bool)

(assert (=> b!1468726 m!1355909))

(assert (=> b!1468726 m!1355909))

(declare-fun m!1355911 () Bool)

(assert (=> b!1468726 m!1355911))

(assert (=> b!1468720 m!1355909))

(assert (=> b!1468720 m!1355909))

(declare-fun m!1355913 () Bool)

(assert (=> b!1468720 m!1355913))

(assert (=> b!1468725 m!1355909))

(assert (=> b!1468725 m!1355909))

(declare-fun m!1355915 () Bool)

(assert (=> b!1468725 m!1355915))

(assert (=> b!1468725 m!1355915))

(assert (=> b!1468725 m!1355909))

(declare-fun m!1355917 () Bool)

(assert (=> b!1468725 m!1355917))

(declare-fun m!1355919 () Bool)

(assert (=> start!125582 m!1355919))

(declare-fun m!1355921 () Bool)

(assert (=> start!125582 m!1355921))

(declare-fun m!1355923 () Bool)

(assert (=> b!1468721 m!1355923))

(assert (=> b!1468721 m!1355923))

(declare-fun m!1355925 () Bool)

(assert (=> b!1468721 m!1355925))

(declare-fun m!1355927 () Bool)

(assert (=> b!1468724 m!1355927))

(declare-fun m!1355929 () Bool)

(assert (=> b!1468724 m!1355929))

(assert (=> b!1468724 m!1355929))

(declare-fun m!1355931 () Bool)

(assert (=> b!1468724 m!1355931))

(assert (=> b!1468724 m!1355931))

(assert (=> b!1468724 m!1355929))

(declare-fun m!1355933 () Bool)

(assert (=> b!1468724 m!1355933))

(assert (=> b!1468718 m!1355927))

(declare-fun m!1355935 () Bool)

(assert (=> b!1468718 m!1355935))

(push 1)

(assert (not b!1468723))

(assert (not b!1468720))

(assert (not b!1468721))

(assert (not b!1468725))

(assert (not b!1468724))

(assert (not b!1468722))

(assert (not start!125582))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124972 () Bool)

(assert start!124972)

(declare-fun res!982982 () Bool)

(declare-fun e!817336 () Bool)

(assert (=> start!124972 (=> (not res!982982) (not e!817336))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124972 (= res!982982 (validMask!0 mask!2687))))

(assert (=> start!124972 e!817336))

(assert (=> start!124972 true))

(declare-datatypes ((array!98337 0))(
  ( (array!98338 (arr!47452 (Array (_ BitVec 32) (_ BitVec 64))) (size!48003 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98337)

(declare-fun array_inv!36397 (array!98337) Bool)

(assert (=> start!124972 (array_inv!36397 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1451661 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!817337 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1451661 (= e!817337 (and (or (= (select (arr!47452 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47452 a!2862) intermediateBeforeIndex!19) (select (arr!47452 a!2862) j!93))) (or (and (= (select (arr!47452 a!2862) index!646) (select (store (arr!47452 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47452 a!2862) index!646) (select (arr!47452 a!2862) j!93))) (= (select (arr!47452 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47452 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451662 () Bool)

(declare-fun res!982974 () Bool)

(declare-fun e!817331 () Bool)

(assert (=> b!1451662 (=> (not res!982974) (not e!817331))))

(declare-datatypes ((SeekEntryResult!11727 0))(
  ( (MissingZero!11727 (index!49299 (_ BitVec 32))) (Found!11727 (index!49300 (_ BitVec 32))) (Intermediate!11727 (undefined!12539 Bool) (index!49301 (_ BitVec 32)) (x!130955 (_ BitVec 32))) (Undefined!11727) (MissingVacant!11727 (index!49302 (_ BitVec 32))) )
))
(declare-fun lt!636682 () SeekEntryResult!11727)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98337 (_ BitVec 32)) SeekEntryResult!11727)

(assert (=> b!1451662 (= res!982974 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47452 a!2862) j!93) a!2862 mask!2687) lt!636682))))

(declare-fun b!1451663 () Bool)

(declare-fun res!982969 () Bool)

(assert (=> b!1451663 (=> (not res!982969) (not e!817336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451663 (= res!982969 (validKeyInArray!0 (select (arr!47452 a!2862) i!1006)))))

(declare-fun b!1451664 () Bool)

(declare-fun res!982975 () Bool)

(assert (=> b!1451664 (=> (not res!982975) (not e!817336))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451664 (= res!982975 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48003 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48003 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48003 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451665 () Bool)

(declare-fun res!982970 () Bool)

(assert (=> b!1451665 (=> (not res!982970) (not e!817336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98337 (_ BitVec 32)) Bool)

(assert (=> b!1451665 (= res!982970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451666 () Bool)

(declare-fun res!982979 () Bool)

(declare-fun e!817332 () Bool)

(assert (=> b!1451666 (=> (not res!982979) (not e!817332))))

(declare-fun e!817334 () Bool)

(assert (=> b!1451666 (= res!982979 e!817334)))

(declare-fun c!133859 () Bool)

(assert (=> b!1451666 (= c!133859 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451667 () Bool)

(declare-fun lt!636680 () (_ BitVec 64))

(declare-fun lt!636679 () array!98337)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98337 (_ BitVec 32)) SeekEntryResult!11727)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98337 (_ BitVec 32)) SeekEntryResult!11727)

(assert (=> b!1451667 (= e!817334 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636680 lt!636679 mask!2687) (seekEntryOrOpen!0 lt!636680 lt!636679 mask!2687)))))

(declare-fun b!1451668 () Bool)

(assert (=> b!1451668 (= e!817332 (not true))))

(assert (=> b!1451668 e!817337))

(declare-fun res!982972 () Bool)

(assert (=> b!1451668 (=> (not res!982972) (not e!817337))))

(assert (=> b!1451668 (= res!982972 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48898 0))(
  ( (Unit!48899) )
))
(declare-fun lt!636681 () Unit!48898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98337 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48898)

(assert (=> b!1451668 (= lt!636681 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451669 () Bool)

(declare-fun e!817335 () Bool)

(assert (=> b!1451669 (= e!817335 e!817331)))

(declare-fun res!982980 () Bool)

(assert (=> b!1451669 (=> (not res!982980) (not e!817331))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451669 (= res!982980 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47452 a!2862) j!93) mask!2687) (select (arr!47452 a!2862) j!93) a!2862 mask!2687) lt!636682))))

(assert (=> b!1451669 (= lt!636682 (Intermediate!11727 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451670 () Bool)

(declare-fun res!982976 () Bool)

(assert (=> b!1451670 (=> (not res!982976) (not e!817336))))

(assert (=> b!1451670 (= res!982976 (and (= (size!48003 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48003 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48003 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451671 () Bool)

(declare-fun res!982977 () Bool)

(assert (=> b!1451671 (=> (not res!982977) (not e!817336))))

(declare-datatypes ((List!34133 0))(
  ( (Nil!34130) (Cons!34129 (h!35479 (_ BitVec 64)) (t!48834 List!34133)) )
))
(declare-fun arrayNoDuplicates!0 (array!98337 (_ BitVec 32) List!34133) Bool)

(assert (=> b!1451671 (= res!982977 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34130))))

(declare-fun lt!636678 () SeekEntryResult!11727)

(declare-fun b!1451672 () Bool)

(assert (=> b!1451672 (= e!817334 (= lt!636678 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636680 lt!636679 mask!2687)))))

(declare-fun b!1451673 () Bool)

(declare-fun res!982983 () Bool)

(assert (=> b!1451673 (=> (not res!982983) (not e!817336))))

(assert (=> b!1451673 (= res!982983 (validKeyInArray!0 (select (arr!47452 a!2862) j!93)))))

(declare-fun b!1451674 () Bool)

(assert (=> b!1451674 (= e!817331 e!817332)))

(declare-fun res!982971 () Bool)

(assert (=> b!1451674 (=> (not res!982971) (not e!817332))))

(assert (=> b!1451674 (= res!982971 (= lt!636678 (Intermediate!11727 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1451674 (= lt!636678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636680 mask!2687) lt!636680 lt!636679 mask!2687))))

(assert (=> b!1451674 (= lt!636680 (select (store (arr!47452 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451675 () Bool)

(declare-fun res!982978 () Bool)

(assert (=> b!1451675 (=> (not res!982978) (not e!817332))))

(assert (=> b!1451675 (= res!982978 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451676 () Bool)

(assert (=> b!1451676 (= e!817336 e!817335)))

(declare-fun res!982981 () Bool)

(assert (=> b!1451676 (=> (not res!982981) (not e!817335))))

(assert (=> b!1451676 (= res!982981 (= (select (store (arr!47452 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451676 (= lt!636679 (array!98338 (store (arr!47452 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48003 a!2862)))))

(declare-fun b!1451677 () Bool)

(declare-fun res!982973 () Bool)

(assert (=> b!1451677 (=> (not res!982973) (not e!817337))))

(assert (=> b!1451677 (= res!982973 (= (seekEntryOrOpen!0 (select (arr!47452 a!2862) j!93) a!2862 mask!2687) (Found!11727 j!93)))))

(assert (= (and start!124972 res!982982) b!1451670))

(assert (= (and b!1451670 res!982976) b!1451663))

(assert (= (and b!1451663 res!982969) b!1451673))

(assert (= (and b!1451673 res!982983) b!1451665))

(assert (= (and b!1451665 res!982970) b!1451671))

(assert (= (and b!1451671 res!982977) b!1451664))

(assert (= (and b!1451664 res!982975) b!1451676))

(assert (= (and b!1451676 res!982981) b!1451669))

(assert (= (and b!1451669 res!982980) b!1451662))

(assert (= (and b!1451662 res!982974) b!1451674))

(assert (= (and b!1451674 res!982971) b!1451666))

(assert (= (and b!1451666 c!133859) b!1451672))

(assert (= (and b!1451666 (not c!133859)) b!1451667))

(assert (= (and b!1451666 res!982979) b!1451675))

(assert (= (and b!1451675 res!982978) b!1451668))

(assert (= (and b!1451668 res!982972) b!1451677))

(assert (= (and b!1451677 res!982973) b!1451661))

(declare-fun m!1340307 () Bool)

(assert (=> b!1451677 m!1340307))

(assert (=> b!1451677 m!1340307))

(declare-fun m!1340309 () Bool)

(assert (=> b!1451677 m!1340309))

(declare-fun m!1340311 () Bool)

(assert (=> start!124972 m!1340311))

(declare-fun m!1340313 () Bool)

(assert (=> start!124972 m!1340313))

(declare-fun m!1340315 () Bool)

(assert (=> b!1451671 m!1340315))

(assert (=> b!1451669 m!1340307))

(assert (=> b!1451669 m!1340307))

(declare-fun m!1340317 () Bool)

(assert (=> b!1451669 m!1340317))

(assert (=> b!1451669 m!1340317))

(assert (=> b!1451669 m!1340307))

(declare-fun m!1340319 () Bool)

(assert (=> b!1451669 m!1340319))

(assert (=> b!1451673 m!1340307))

(assert (=> b!1451673 m!1340307))

(declare-fun m!1340321 () Bool)

(assert (=> b!1451673 m!1340321))

(declare-fun m!1340323 () Bool)

(assert (=> b!1451663 m!1340323))

(assert (=> b!1451663 m!1340323))

(declare-fun m!1340325 () Bool)

(assert (=> b!1451663 m!1340325))

(declare-fun m!1340327 () Bool)

(assert (=> b!1451661 m!1340327))

(declare-fun m!1340329 () Bool)

(assert (=> b!1451661 m!1340329))

(declare-fun m!1340331 () Bool)

(assert (=> b!1451661 m!1340331))

(declare-fun m!1340333 () Bool)

(assert (=> b!1451661 m!1340333))

(assert (=> b!1451661 m!1340307))

(assert (=> b!1451662 m!1340307))

(assert (=> b!1451662 m!1340307))

(declare-fun m!1340335 () Bool)

(assert (=> b!1451662 m!1340335))

(declare-fun m!1340337 () Bool)

(assert (=> b!1451672 m!1340337))

(declare-fun m!1340339 () Bool)

(assert (=> b!1451665 m!1340339))

(declare-fun m!1340341 () Bool)

(assert (=> b!1451668 m!1340341))

(declare-fun m!1340343 () Bool)

(assert (=> b!1451668 m!1340343))

(assert (=> b!1451676 m!1340327))

(declare-fun m!1340345 () Bool)

(assert (=> b!1451676 m!1340345))

(declare-fun m!1340347 () Bool)

(assert (=> b!1451667 m!1340347))

(declare-fun m!1340349 () Bool)

(assert (=> b!1451667 m!1340349))

(declare-fun m!1340351 () Bool)

(assert (=> b!1451674 m!1340351))

(assert (=> b!1451674 m!1340351))

(declare-fun m!1340353 () Bool)

(assert (=> b!1451674 m!1340353))

(assert (=> b!1451674 m!1340327))

(declare-fun m!1340355 () Bool)

(assert (=> b!1451674 m!1340355))

(push 1)


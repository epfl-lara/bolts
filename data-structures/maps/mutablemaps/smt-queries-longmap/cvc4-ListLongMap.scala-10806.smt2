; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126530 () Bool)

(assert start!126530)

(declare-fun b!1483076 () Bool)

(declare-fun e!831653 () Bool)

(declare-fun e!831658 () Bool)

(assert (=> b!1483076 (= e!831653 e!831658)))

(declare-fun res!1008101 () Bool)

(assert (=> b!1483076 (=> res!1008101 e!831658)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99409 0))(
  ( (array!99410 (arr!47976 (Array (_ BitVec 32) (_ BitVec 64))) (size!48527 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99409)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!647274 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1483076 (= res!1008101 (or (and (= (select (arr!47976 a!2862) index!646) lt!647274) (= (select (arr!47976 a!2862) index!646) (select (arr!47976 a!2862) j!93))) (= (select (arr!47976 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1483076 (= lt!647274 (select (store (arr!47976 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483077 () Bool)

(declare-fun e!831651 () Bool)

(declare-fun e!831659 () Bool)

(assert (=> b!1483077 (= e!831651 e!831659)))

(declare-fun res!1008097 () Bool)

(assert (=> b!1483077 (=> (not res!1008097) (not e!831659))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1483077 (= res!1008097 (= (select (store (arr!47976 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647278 () array!99409)

(assert (=> b!1483077 (= lt!647278 (array!99410 (store (arr!47976 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48527 a!2862)))))

(declare-fun b!1483078 () Bool)

(declare-fun res!1008084 () Bool)

(assert (=> b!1483078 (=> (not res!1008084) (not e!831651))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99409 (_ BitVec 32)) Bool)

(assert (=> b!1483078 (= res!1008084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!831655 () Bool)

(declare-fun b!1483079 () Bool)

(declare-fun lt!647275 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12239 0))(
  ( (MissingZero!12239 (index!51347 (_ BitVec 32))) (Found!12239 (index!51348 (_ BitVec 32))) (Intermediate!12239 (undefined!13051 Bool) (index!51349 (_ BitVec 32)) (x!132934 (_ BitVec 32))) (Undefined!12239) (MissingVacant!12239 (index!51350 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99409 (_ BitVec 32)) SeekEntryResult!12239)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99409 (_ BitVec 32)) SeekEntryResult!12239)

(assert (=> b!1483079 (= e!831655 (= (seekEntryOrOpen!0 lt!647275 lt!647278 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647275 lt!647278 mask!2687)))))

(declare-fun lt!647272 () SeekEntryResult!12239)

(declare-fun e!831654 () Bool)

(declare-fun b!1483080 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99409 (_ BitVec 32)) SeekEntryResult!12239)

(assert (=> b!1483080 (= e!831654 (= lt!647272 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647275 lt!647278 mask!2687)))))

(declare-fun b!1483082 () Bool)

(declare-fun e!831650 () Bool)

(declare-fun e!831657 () Bool)

(assert (=> b!1483082 (= e!831650 (not e!831657))))

(declare-fun res!1008088 () Bool)

(assert (=> b!1483082 (=> res!1008088 e!831657)))

(assert (=> b!1483082 (= res!1008088 (or (and (= (select (arr!47976 a!2862) index!646) (select (store (arr!47976 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47976 a!2862) index!646) (select (arr!47976 a!2862) j!93))) (= (select (arr!47976 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483082 e!831653))

(declare-fun res!1008095 () Bool)

(assert (=> b!1483082 (=> (not res!1008095) (not e!831653))))

(assert (=> b!1483082 (= res!1008095 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49766 0))(
  ( (Unit!49767) )
))
(declare-fun lt!647276 () Unit!49766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49766)

(assert (=> b!1483082 (= lt!647276 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483083 () Bool)

(declare-fun res!1008090 () Bool)

(assert (=> b!1483083 (=> (not res!1008090) (not e!831651))))

(assert (=> b!1483083 (= res!1008090 (and (= (size!48527 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48527 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48527 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483084 () Bool)

(declare-fun res!1008093 () Bool)

(assert (=> b!1483084 (=> (not res!1008093) (not e!831653))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1483084 (= res!1008093 (or (= (select (arr!47976 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47976 a!2862) intermediateBeforeIndex!19) (select (arr!47976 a!2862) j!93))))))

(declare-fun b!1483085 () Bool)

(assert (=> b!1483085 (= e!831658 e!831655)))

(declare-fun res!1008087 () Bool)

(assert (=> b!1483085 (=> (not res!1008087) (not e!831655))))

(assert (=> b!1483085 (= res!1008087 (and (= index!646 intermediateAfterIndex!19) (= lt!647274 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483086 () Bool)

(declare-fun res!1008102 () Bool)

(assert (=> b!1483086 (=> (not res!1008102) (not e!831650))))

(assert (=> b!1483086 (= res!1008102 e!831654)))

(declare-fun c!137021 () Bool)

(assert (=> b!1483086 (= c!137021 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483087 () Bool)

(declare-fun res!1008099 () Bool)

(declare-fun e!831652 () Bool)

(assert (=> b!1483087 (=> (not res!1008099) (not e!831652))))

(declare-fun lt!647273 () SeekEntryResult!12239)

(assert (=> b!1483087 (= res!1008099 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47976 a!2862) j!93) a!2862 mask!2687) lt!647273))))

(declare-fun b!1483088 () Bool)

(assert (=> b!1483088 (= e!831659 e!831652)))

(declare-fun res!1008092 () Bool)

(assert (=> b!1483088 (=> (not res!1008092) (not e!831652))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483088 (= res!1008092 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47976 a!2862) j!93) mask!2687) (select (arr!47976 a!2862) j!93) a!2862 mask!2687) lt!647273))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483088 (= lt!647273 (Intermediate!12239 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483089 () Bool)

(declare-fun res!1008098 () Bool)

(assert (=> b!1483089 (=> (not res!1008098) (not e!831651))))

(declare-datatypes ((List!34657 0))(
  ( (Nil!34654) (Cons!34653 (h!36027 (_ BitVec 64)) (t!49358 List!34657)) )
))
(declare-fun arrayNoDuplicates!0 (array!99409 (_ BitVec 32) List!34657) Bool)

(assert (=> b!1483089 (= res!1008098 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34654))))

(declare-fun b!1483090 () Bool)

(declare-fun res!1008094 () Bool)

(assert (=> b!1483090 (=> (not res!1008094) (not e!831653))))

(assert (=> b!1483090 (= res!1008094 (= (seekEntryOrOpen!0 (select (arr!47976 a!2862) j!93) a!2862 mask!2687) (Found!12239 j!93)))))

(declare-fun b!1483091 () Bool)

(assert (=> b!1483091 (= e!831652 e!831650)))

(declare-fun res!1008096 () Bool)

(assert (=> b!1483091 (=> (not res!1008096) (not e!831650))))

(assert (=> b!1483091 (= res!1008096 (= lt!647272 (Intermediate!12239 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483091 (= lt!647272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647275 mask!2687) lt!647275 lt!647278 mask!2687))))

(assert (=> b!1483091 (= lt!647275 (select (store (arr!47976 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483092 () Bool)

(declare-fun res!1008086 () Bool)

(assert (=> b!1483092 (=> (not res!1008086) (not e!831651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483092 (= res!1008086 (validKeyInArray!0 (select (arr!47976 a!2862) j!93)))))

(declare-fun b!1483081 () Bool)

(declare-fun res!1008091 () Bool)

(assert (=> b!1483081 (=> (not res!1008091) (not e!831651))))

(assert (=> b!1483081 (= res!1008091 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48527 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48527 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48527 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1008100 () Bool)

(assert (=> start!126530 (=> (not res!1008100) (not e!831651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126530 (= res!1008100 (validMask!0 mask!2687))))

(assert (=> start!126530 e!831651))

(assert (=> start!126530 true))

(declare-fun array_inv!36921 (array!99409) Bool)

(assert (=> start!126530 (array_inv!36921 a!2862)))

(declare-fun b!1483093 () Bool)

(assert (=> b!1483093 (= e!831657 true)))

(declare-fun lt!647277 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483093 (= lt!647277 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483094 () Bool)

(assert (=> b!1483094 (= e!831654 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647275 lt!647278 mask!2687) (seekEntryOrOpen!0 lt!647275 lt!647278 mask!2687)))))

(declare-fun b!1483095 () Bool)

(declare-fun res!1008085 () Bool)

(assert (=> b!1483095 (=> (not res!1008085) (not e!831651))))

(assert (=> b!1483095 (= res!1008085 (validKeyInArray!0 (select (arr!47976 a!2862) i!1006)))))

(declare-fun b!1483096 () Bool)

(declare-fun res!1008089 () Bool)

(assert (=> b!1483096 (=> (not res!1008089) (not e!831650))))

(assert (=> b!1483096 (= res!1008089 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126530 res!1008100) b!1483083))

(assert (= (and b!1483083 res!1008090) b!1483095))

(assert (= (and b!1483095 res!1008085) b!1483092))

(assert (= (and b!1483092 res!1008086) b!1483078))

(assert (= (and b!1483078 res!1008084) b!1483089))

(assert (= (and b!1483089 res!1008098) b!1483081))

(assert (= (and b!1483081 res!1008091) b!1483077))

(assert (= (and b!1483077 res!1008097) b!1483088))

(assert (= (and b!1483088 res!1008092) b!1483087))

(assert (= (and b!1483087 res!1008099) b!1483091))

(assert (= (and b!1483091 res!1008096) b!1483086))

(assert (= (and b!1483086 c!137021) b!1483080))

(assert (= (and b!1483086 (not c!137021)) b!1483094))

(assert (= (and b!1483086 res!1008102) b!1483096))

(assert (= (and b!1483096 res!1008089) b!1483082))

(assert (= (and b!1483082 res!1008095) b!1483090))

(assert (= (and b!1483090 res!1008094) b!1483084))

(assert (= (and b!1483084 res!1008093) b!1483076))

(assert (= (and b!1483076 (not res!1008101)) b!1483085))

(assert (= (and b!1483085 res!1008087) b!1483079))

(assert (= (and b!1483082 (not res!1008088)) b!1483093))

(declare-fun m!1368665 () Bool)

(assert (=> b!1483077 m!1368665))

(declare-fun m!1368667 () Bool)

(assert (=> b!1483077 m!1368667))

(declare-fun m!1368669 () Bool)

(assert (=> b!1483088 m!1368669))

(assert (=> b!1483088 m!1368669))

(declare-fun m!1368671 () Bool)

(assert (=> b!1483088 m!1368671))

(assert (=> b!1483088 m!1368671))

(assert (=> b!1483088 m!1368669))

(declare-fun m!1368673 () Bool)

(assert (=> b!1483088 m!1368673))

(declare-fun m!1368675 () Bool)

(assert (=> start!126530 m!1368675))

(declare-fun m!1368677 () Bool)

(assert (=> start!126530 m!1368677))

(declare-fun m!1368679 () Bool)

(assert (=> b!1483089 m!1368679))

(assert (=> b!1483090 m!1368669))

(assert (=> b!1483090 m!1368669))

(declare-fun m!1368681 () Bool)

(assert (=> b!1483090 m!1368681))

(declare-fun m!1368683 () Bool)

(assert (=> b!1483078 m!1368683))

(declare-fun m!1368685 () Bool)

(assert (=> b!1483079 m!1368685))

(declare-fun m!1368687 () Bool)

(assert (=> b!1483079 m!1368687))

(assert (=> b!1483087 m!1368669))

(assert (=> b!1483087 m!1368669))

(declare-fun m!1368689 () Bool)

(assert (=> b!1483087 m!1368689))

(declare-fun m!1368691 () Bool)

(assert (=> b!1483082 m!1368691))

(assert (=> b!1483082 m!1368665))

(declare-fun m!1368693 () Bool)

(assert (=> b!1483082 m!1368693))

(declare-fun m!1368695 () Bool)

(assert (=> b!1483082 m!1368695))

(declare-fun m!1368697 () Bool)

(assert (=> b!1483082 m!1368697))

(assert (=> b!1483082 m!1368669))

(declare-fun m!1368699 () Bool)

(assert (=> b!1483091 m!1368699))

(assert (=> b!1483091 m!1368699))

(declare-fun m!1368701 () Bool)

(assert (=> b!1483091 m!1368701))

(assert (=> b!1483091 m!1368665))

(declare-fun m!1368703 () Bool)

(assert (=> b!1483091 m!1368703))

(declare-fun m!1368705 () Bool)

(assert (=> b!1483080 m!1368705))

(declare-fun m!1368707 () Bool)

(assert (=> b!1483084 m!1368707))

(assert (=> b!1483084 m!1368669))

(declare-fun m!1368709 () Bool)

(assert (=> b!1483095 m!1368709))

(assert (=> b!1483095 m!1368709))

(declare-fun m!1368711 () Bool)

(assert (=> b!1483095 m!1368711))

(assert (=> b!1483076 m!1368695))

(assert (=> b!1483076 m!1368669))

(assert (=> b!1483076 m!1368665))

(assert (=> b!1483076 m!1368693))

(assert (=> b!1483092 m!1368669))

(assert (=> b!1483092 m!1368669))

(declare-fun m!1368713 () Bool)

(assert (=> b!1483092 m!1368713))

(assert (=> b!1483094 m!1368687))

(assert (=> b!1483094 m!1368685))

(declare-fun m!1368715 () Bool)

(assert (=> b!1483093 m!1368715))

(push 1)


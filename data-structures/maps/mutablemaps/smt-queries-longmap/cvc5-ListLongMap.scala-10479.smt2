; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123292 () Bool)

(assert start!123292)

(declare-fun b!1429090 () Bool)

(declare-fun res!963835 () Bool)

(declare-fun e!807021 () Bool)

(assert (=> b!1429090 (=> (not res!963835) (not e!807021))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97371 0))(
  ( (array!97372 (arr!46993 (Array (_ BitVec 32) (_ BitVec 64))) (size!47544 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97371)

(declare-datatypes ((SeekEntryResult!11294 0))(
  ( (MissingZero!11294 (index!47567 (_ BitVec 32))) (Found!11294 (index!47568 (_ BitVec 32))) (Intermediate!11294 (undefined!12106 Bool) (index!47569 (_ BitVec 32)) (x!129211 (_ BitVec 32))) (Undefined!11294) (MissingVacant!11294 (index!47570 (_ BitVec 32))) )
))
(declare-fun lt!629203 () SeekEntryResult!11294)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97371 (_ BitVec 32)) SeekEntryResult!11294)

(assert (=> b!1429090 (= res!963835 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46993 a!2831) j!81) a!2831 mask!2608) lt!629203))))

(declare-fun b!1429091 () Bool)

(declare-fun res!963838 () Bool)

(declare-fun e!807019 () Bool)

(assert (=> b!1429091 (=> (not res!963838) (not e!807019))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1429091 (= res!963838 (and (= (size!47544 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47544 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47544 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429092 () Bool)

(declare-fun res!963832 () Bool)

(assert (=> b!1429092 (=> (not res!963832) (not e!807019))))

(declare-datatypes ((List!33683 0))(
  ( (Nil!33680) (Cons!33679 (h!34993 (_ BitVec 64)) (t!48384 List!33683)) )
))
(declare-fun arrayNoDuplicates!0 (array!97371 (_ BitVec 32) List!33683) Bool)

(assert (=> b!1429092 (= res!963832 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33680))))

(declare-fun b!1429093 () Bool)

(declare-fun res!963839 () Bool)

(assert (=> b!1429093 (=> (not res!963839) (not e!807019))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429093 (= res!963839 (validKeyInArray!0 (select (arr!46993 a!2831) i!982)))))

(declare-fun b!1429094 () Bool)

(declare-fun res!963837 () Bool)

(assert (=> b!1429094 (=> (not res!963837) (not e!807019))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1429094 (= res!963837 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47544 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47544 a!2831))))))

(declare-fun res!963829 () Bool)

(assert (=> start!123292 (=> (not res!963829) (not e!807019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123292 (= res!963829 (validMask!0 mask!2608))))

(assert (=> start!123292 e!807019))

(assert (=> start!123292 true))

(declare-fun array_inv!35938 (array!97371) Bool)

(assert (=> start!123292 (array_inv!35938 a!2831)))

(declare-fun b!1429095 () Bool)

(declare-fun res!963831 () Bool)

(assert (=> b!1429095 (=> (not res!963831) (not e!807019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97371 (_ BitVec 32)) Bool)

(assert (=> b!1429095 (= res!963831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429096 () Bool)

(declare-fun res!963833 () Bool)

(assert (=> b!1429096 (=> (not res!963833) (not e!807021))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429096 (= res!963833 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429097 () Bool)

(declare-fun e!807023 () Bool)

(assert (=> b!1429097 (= e!807019 e!807023)))

(declare-fun res!963836 () Bool)

(assert (=> b!1429097 (=> (not res!963836) (not e!807023))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429097 (= res!963836 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46993 a!2831) j!81) mask!2608) (select (arr!46993 a!2831) j!81) a!2831 mask!2608) lt!629203))))

(assert (=> b!1429097 (= lt!629203 (Intermediate!11294 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429098 () Bool)

(assert (=> b!1429098 (= e!807023 e!807021)))

(declare-fun res!963830 () Bool)

(assert (=> b!1429098 (=> (not res!963830) (not e!807021))))

(declare-fun lt!629205 () (_ BitVec 64))

(declare-fun lt!629206 () SeekEntryResult!11294)

(declare-fun lt!629202 () array!97371)

(assert (=> b!1429098 (= res!963830 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629205 mask!2608) lt!629205 lt!629202 mask!2608) lt!629206))))

(assert (=> b!1429098 (= lt!629206 (Intermediate!11294 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429098 (= lt!629205 (select (store (arr!46993 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429098 (= lt!629202 (array!97372 (store (arr!46993 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47544 a!2831)))))

(declare-fun b!1429099 () Bool)

(declare-fun e!807020 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97371 (_ BitVec 32)) SeekEntryResult!11294)

(assert (=> b!1429099 (= e!807020 (= (seekEntryOrOpen!0 (select (arr!46993 a!2831) j!81) a!2831 mask!2608) (Found!11294 j!81)))))

(declare-fun b!1429100 () Bool)

(declare-fun res!963834 () Bool)

(assert (=> b!1429100 (=> (not res!963834) (not e!807021))))

(assert (=> b!1429100 (= res!963834 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629205 lt!629202 mask!2608) lt!629206))))

(declare-fun b!1429101 () Bool)

(assert (=> b!1429101 (= e!807021 (not true))))

(assert (=> b!1429101 e!807020))

(declare-fun res!963840 () Bool)

(assert (=> b!1429101 (=> (not res!963840) (not e!807020))))

(assert (=> b!1429101 (= res!963840 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48282 0))(
  ( (Unit!48283) )
))
(declare-fun lt!629204 () Unit!48282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97371 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48282)

(assert (=> b!1429101 (= lt!629204 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429102 () Bool)

(declare-fun res!963828 () Bool)

(assert (=> b!1429102 (=> (not res!963828) (not e!807019))))

(assert (=> b!1429102 (= res!963828 (validKeyInArray!0 (select (arr!46993 a!2831) j!81)))))

(assert (= (and start!123292 res!963829) b!1429091))

(assert (= (and b!1429091 res!963838) b!1429093))

(assert (= (and b!1429093 res!963839) b!1429102))

(assert (= (and b!1429102 res!963828) b!1429095))

(assert (= (and b!1429095 res!963831) b!1429092))

(assert (= (and b!1429092 res!963832) b!1429094))

(assert (= (and b!1429094 res!963837) b!1429097))

(assert (= (and b!1429097 res!963836) b!1429098))

(assert (= (and b!1429098 res!963830) b!1429090))

(assert (= (and b!1429090 res!963835) b!1429100))

(assert (= (and b!1429100 res!963834) b!1429096))

(assert (= (and b!1429096 res!963833) b!1429101))

(assert (= (and b!1429101 res!963840) b!1429099))

(declare-fun m!1319255 () Bool)

(assert (=> b!1429102 m!1319255))

(assert (=> b!1429102 m!1319255))

(declare-fun m!1319257 () Bool)

(assert (=> b!1429102 m!1319257))

(declare-fun m!1319259 () Bool)

(assert (=> b!1429098 m!1319259))

(assert (=> b!1429098 m!1319259))

(declare-fun m!1319261 () Bool)

(assert (=> b!1429098 m!1319261))

(declare-fun m!1319263 () Bool)

(assert (=> b!1429098 m!1319263))

(declare-fun m!1319265 () Bool)

(assert (=> b!1429098 m!1319265))

(declare-fun m!1319267 () Bool)

(assert (=> b!1429101 m!1319267))

(declare-fun m!1319269 () Bool)

(assert (=> b!1429101 m!1319269))

(declare-fun m!1319271 () Bool)

(assert (=> b!1429100 m!1319271))

(assert (=> b!1429099 m!1319255))

(assert (=> b!1429099 m!1319255))

(declare-fun m!1319273 () Bool)

(assert (=> b!1429099 m!1319273))

(declare-fun m!1319275 () Bool)

(assert (=> b!1429092 m!1319275))

(declare-fun m!1319277 () Bool)

(assert (=> start!123292 m!1319277))

(declare-fun m!1319279 () Bool)

(assert (=> start!123292 m!1319279))

(declare-fun m!1319281 () Bool)

(assert (=> b!1429093 m!1319281))

(assert (=> b!1429093 m!1319281))

(declare-fun m!1319283 () Bool)

(assert (=> b!1429093 m!1319283))

(assert (=> b!1429097 m!1319255))

(assert (=> b!1429097 m!1319255))

(declare-fun m!1319285 () Bool)

(assert (=> b!1429097 m!1319285))

(assert (=> b!1429097 m!1319285))

(assert (=> b!1429097 m!1319255))

(declare-fun m!1319287 () Bool)

(assert (=> b!1429097 m!1319287))

(declare-fun m!1319289 () Bool)

(assert (=> b!1429095 m!1319289))

(assert (=> b!1429090 m!1319255))

(assert (=> b!1429090 m!1319255))

(declare-fun m!1319291 () Bool)

(assert (=> b!1429090 m!1319291))

(push 1)


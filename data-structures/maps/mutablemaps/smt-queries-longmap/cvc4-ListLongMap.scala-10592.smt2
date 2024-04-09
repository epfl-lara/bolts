; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124736 () Bool)

(assert start!124736)

(declare-fun b!1445067 () Bool)

(declare-fun res!977086 () Bool)

(declare-fun e!814110 () Bool)

(assert (=> b!1445067 (=> (not res!977086) (not e!814110))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445067 (= res!977086 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445068 () Bool)

(declare-fun res!977084 () Bool)

(declare-fun e!814107 () Bool)

(assert (=> b!1445068 (=> (not res!977084) (not e!814107))))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98101 0))(
  ( (array!98102 (arr!47334 (Array (_ BitVec 32) (_ BitVec 64))) (size!47885 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98101)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11609 0))(
  ( (MissingZero!11609 (index!48827 (_ BitVec 32))) (Found!11609 (index!48828 (_ BitVec 32))) (Intermediate!11609 (undefined!12421 Bool) (index!48829 (_ BitVec 32)) (x!130517 (_ BitVec 32))) (Undefined!11609) (MissingVacant!11609 (index!48830 (_ BitVec 32))) )
))
(declare-fun lt!634352 () SeekEntryResult!11609)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98101 (_ BitVec 32)) SeekEntryResult!11609)

(assert (=> b!1445068 (= res!977084 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47334 a!2862) j!93) a!2862 mask!2687) lt!634352))))

(declare-fun b!1445069 () Bool)

(declare-fun res!977093 () Bool)

(declare-fun e!814111 () Bool)

(assert (=> b!1445069 (=> (not res!977093) (not e!814111))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98101 (_ BitVec 32)) SeekEntryResult!11609)

(assert (=> b!1445069 (= res!977093 (= (seekEntryOrOpen!0 (select (arr!47334 a!2862) j!93) a!2862 mask!2687) (Found!11609 j!93)))))

(declare-fun b!1445070 () Bool)

(declare-fun res!977091 () Bool)

(declare-fun e!814109 () Bool)

(assert (=> b!1445070 (=> (not res!977091) (not e!814109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445070 (= res!977091 (validKeyInArray!0 (select (arr!47334 a!2862) i!1006)))))

(declare-fun b!1445071 () Bool)

(declare-fun res!977087 () Bool)

(assert (=> b!1445071 (=> (not res!977087) (not e!814109))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445071 (= res!977087 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47885 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47885 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47885 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445072 () Bool)

(declare-fun lt!634350 () (_ BitVec 64))

(declare-fun lt!634354 () array!98101)

(declare-fun e!814108 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98101 (_ BitVec 32)) SeekEntryResult!11609)

(assert (=> b!1445072 (= e!814108 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634350 lt!634354 mask!2687) (seekEntryOrOpen!0 lt!634350 lt!634354 mask!2687)))))

(declare-fun b!1445073 () Bool)

(assert (=> b!1445073 (= e!814111 (or (= (select (arr!47334 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47334 a!2862) intermediateBeforeIndex!19) (select (arr!47334 a!2862) j!93))))))

(declare-fun b!1445074 () Bool)

(declare-fun res!977097 () Bool)

(assert (=> b!1445074 (=> (not res!977097) (not e!814110))))

(assert (=> b!1445074 (= res!977097 e!814108)))

(declare-fun c!133505 () Bool)

(assert (=> b!1445074 (= c!133505 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445075 () Bool)

(declare-fun e!814106 () Bool)

(assert (=> b!1445075 (= e!814106 e!814107)))

(declare-fun res!977089 () Bool)

(assert (=> b!1445075 (=> (not res!977089) (not e!814107))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445075 (= res!977089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47334 a!2862) j!93) mask!2687) (select (arr!47334 a!2862) j!93) a!2862 mask!2687) lt!634352))))

(assert (=> b!1445075 (= lt!634352 (Intermediate!11609 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445076 () Bool)

(assert (=> b!1445076 (= e!814109 e!814106)))

(declare-fun res!977094 () Bool)

(assert (=> b!1445076 (=> (not res!977094) (not e!814106))))

(assert (=> b!1445076 (= res!977094 (= (select (store (arr!47334 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445076 (= lt!634354 (array!98102 (store (arr!47334 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47885 a!2862)))))

(declare-fun b!1445077 () Bool)

(assert (=> b!1445077 (= e!814110 (not true))))

(assert (=> b!1445077 e!814111))

(declare-fun res!977095 () Bool)

(assert (=> b!1445077 (=> (not res!977095) (not e!814111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98101 (_ BitVec 32)) Bool)

(assert (=> b!1445077 (= res!977095 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48662 0))(
  ( (Unit!48663) )
))
(declare-fun lt!634351 () Unit!48662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98101 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48662)

(assert (=> b!1445077 (= lt!634351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445078 () Bool)

(declare-fun res!977088 () Bool)

(assert (=> b!1445078 (=> (not res!977088) (not e!814109))))

(declare-datatypes ((List!34015 0))(
  ( (Nil!34012) (Cons!34011 (h!35361 (_ BitVec 64)) (t!48716 List!34015)) )
))
(declare-fun arrayNoDuplicates!0 (array!98101 (_ BitVec 32) List!34015) Bool)

(assert (=> b!1445078 (= res!977088 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34012))))

(declare-fun lt!634353 () SeekEntryResult!11609)

(declare-fun b!1445079 () Bool)

(assert (=> b!1445079 (= e!814108 (= lt!634353 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634350 lt!634354 mask!2687)))))

(declare-fun b!1445080 () Bool)

(declare-fun res!977083 () Bool)

(assert (=> b!1445080 (=> (not res!977083) (not e!814109))))

(assert (=> b!1445080 (= res!977083 (and (= (size!47885 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47885 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47885 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!977085 () Bool)

(assert (=> start!124736 (=> (not res!977085) (not e!814109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124736 (= res!977085 (validMask!0 mask!2687))))

(assert (=> start!124736 e!814109))

(assert (=> start!124736 true))

(declare-fun array_inv!36279 (array!98101) Bool)

(assert (=> start!124736 (array_inv!36279 a!2862)))

(declare-fun b!1445081 () Bool)

(declare-fun res!977092 () Bool)

(assert (=> b!1445081 (=> (not res!977092) (not e!814109))))

(assert (=> b!1445081 (= res!977092 (validKeyInArray!0 (select (arr!47334 a!2862) j!93)))))

(declare-fun b!1445082 () Bool)

(assert (=> b!1445082 (= e!814107 e!814110)))

(declare-fun res!977090 () Bool)

(assert (=> b!1445082 (=> (not res!977090) (not e!814110))))

(assert (=> b!1445082 (= res!977090 (= lt!634353 (Intermediate!11609 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445082 (= lt!634353 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634350 mask!2687) lt!634350 lt!634354 mask!2687))))

(assert (=> b!1445082 (= lt!634350 (select (store (arr!47334 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445083 () Bool)

(declare-fun res!977096 () Bool)

(assert (=> b!1445083 (=> (not res!977096) (not e!814109))))

(assert (=> b!1445083 (= res!977096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124736 res!977085) b!1445080))

(assert (= (and b!1445080 res!977083) b!1445070))

(assert (= (and b!1445070 res!977091) b!1445081))

(assert (= (and b!1445081 res!977092) b!1445083))

(assert (= (and b!1445083 res!977096) b!1445078))

(assert (= (and b!1445078 res!977088) b!1445071))

(assert (= (and b!1445071 res!977087) b!1445076))

(assert (= (and b!1445076 res!977094) b!1445075))

(assert (= (and b!1445075 res!977089) b!1445068))

(assert (= (and b!1445068 res!977084) b!1445082))

(assert (= (and b!1445082 res!977090) b!1445074))

(assert (= (and b!1445074 c!133505) b!1445079))

(assert (= (and b!1445074 (not c!133505)) b!1445072))

(assert (= (and b!1445074 res!977097) b!1445067))

(assert (= (and b!1445067 res!977086) b!1445077))

(assert (= (and b!1445077 res!977095) b!1445069))

(assert (= (and b!1445069 res!977093) b!1445073))

(declare-fun m!1334099 () Bool)

(assert (=> b!1445082 m!1334099))

(assert (=> b!1445082 m!1334099))

(declare-fun m!1334101 () Bool)

(assert (=> b!1445082 m!1334101))

(declare-fun m!1334103 () Bool)

(assert (=> b!1445082 m!1334103))

(declare-fun m!1334105 () Bool)

(assert (=> b!1445082 m!1334105))

(declare-fun m!1334107 () Bool)

(assert (=> b!1445073 m!1334107))

(declare-fun m!1334109 () Bool)

(assert (=> b!1445073 m!1334109))

(declare-fun m!1334111 () Bool)

(assert (=> start!124736 m!1334111))

(declare-fun m!1334113 () Bool)

(assert (=> start!124736 m!1334113))

(declare-fun m!1334115 () Bool)

(assert (=> b!1445083 m!1334115))

(assert (=> b!1445076 m!1334103))

(declare-fun m!1334117 () Bool)

(assert (=> b!1445076 m!1334117))

(declare-fun m!1334119 () Bool)

(assert (=> b!1445072 m!1334119))

(declare-fun m!1334121 () Bool)

(assert (=> b!1445072 m!1334121))

(declare-fun m!1334123 () Bool)

(assert (=> b!1445070 m!1334123))

(assert (=> b!1445070 m!1334123))

(declare-fun m!1334125 () Bool)

(assert (=> b!1445070 m!1334125))

(assert (=> b!1445068 m!1334109))

(assert (=> b!1445068 m!1334109))

(declare-fun m!1334127 () Bool)

(assert (=> b!1445068 m!1334127))

(declare-fun m!1334129 () Bool)

(assert (=> b!1445079 m!1334129))

(declare-fun m!1334131 () Bool)

(assert (=> b!1445078 m!1334131))

(assert (=> b!1445069 m!1334109))

(assert (=> b!1445069 m!1334109))

(declare-fun m!1334133 () Bool)

(assert (=> b!1445069 m!1334133))

(assert (=> b!1445075 m!1334109))

(assert (=> b!1445075 m!1334109))

(declare-fun m!1334135 () Bool)

(assert (=> b!1445075 m!1334135))

(assert (=> b!1445075 m!1334135))

(assert (=> b!1445075 m!1334109))

(declare-fun m!1334137 () Bool)

(assert (=> b!1445075 m!1334137))

(assert (=> b!1445081 m!1334109))

(assert (=> b!1445081 m!1334109))

(declare-fun m!1334139 () Bool)

(assert (=> b!1445081 m!1334139))

(declare-fun m!1334141 () Bool)

(assert (=> b!1445077 m!1334141))

(declare-fun m!1334143 () Bool)

(assert (=> b!1445077 m!1334143))

(push 1)


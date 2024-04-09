; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125638 () Bool)

(assert start!125638)

(declare-fun b!1469680 () Bool)

(declare-fun res!998244 () Bool)

(declare-fun e!825078 () Bool)

(assert (=> b!1469680 (=> (not res!998244) (not e!825078))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99003 0))(
  ( (array!99004 (arr!47785 (Array (_ BitVec 32) (_ BitVec 64))) (size!48336 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99003)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12048 0))(
  ( (MissingZero!12048 (index!50583 (_ BitVec 32))) (Found!12048 (index!50584 (_ BitVec 32))) (Intermediate!12048 (undefined!12860 Bool) (index!50585 (_ BitVec 32)) (x!132164 (_ BitVec 32))) (Undefined!12048) (MissingVacant!12048 (index!50586 (_ BitVec 32))) )
))
(declare-fun lt!642601 () SeekEntryResult!12048)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99003 (_ BitVec 32)) SeekEntryResult!12048)

(assert (=> b!1469680 (= res!998244 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47785 a!2862) j!93) a!2862 mask!2687) lt!642601))))

(declare-fun b!1469681 () Bool)

(declare-fun e!825082 () Bool)

(assert (=> b!1469681 (= e!825082 false)))

(declare-fun lt!642600 () Bool)

(declare-fun e!825079 () Bool)

(assert (=> b!1469681 (= lt!642600 e!825079)))

(declare-fun c!135236 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469681 (= c!135236 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469682 () Bool)

(declare-fun e!825081 () Bool)

(declare-fun e!825080 () Bool)

(assert (=> b!1469682 (= e!825081 e!825080)))

(declare-fun res!998243 () Bool)

(assert (=> b!1469682 (=> (not res!998243) (not e!825080))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469682 (= res!998243 (= (select (store (arr!47785 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!642603 () array!99003)

(assert (=> b!1469682 (= lt!642603 (array!99004 (store (arr!47785 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48336 a!2862)))))

(declare-fun b!1469683 () Bool)

(declare-fun res!998237 () Bool)

(assert (=> b!1469683 (=> (not res!998237) (not e!825081))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469683 (= res!998237 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48336 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48336 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48336 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469684 () Bool)

(declare-fun res!998235 () Bool)

(assert (=> b!1469684 (=> (not res!998235) (not e!825081))))

(assert (=> b!1469684 (= res!998235 (and (= (size!48336 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48336 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48336 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469685 () Bool)

(declare-fun res!998241 () Bool)

(assert (=> b!1469685 (=> (not res!998241) (not e!825081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99003 (_ BitVec 32)) Bool)

(assert (=> b!1469685 (= res!998241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469686 () Bool)

(declare-fun res!998236 () Bool)

(assert (=> b!1469686 (=> (not res!998236) (not e!825081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469686 (= res!998236 (validKeyInArray!0 (select (arr!47785 a!2862) j!93)))))

(declare-fun b!1469687 () Bool)

(declare-fun res!998239 () Bool)

(assert (=> b!1469687 (=> (not res!998239) (not e!825081))))

(declare-datatypes ((List!34466 0))(
  ( (Nil!34463) (Cons!34462 (h!35812 (_ BitVec 64)) (t!49167 List!34466)) )
))
(declare-fun arrayNoDuplicates!0 (array!99003 (_ BitVec 32) List!34466) Bool)

(assert (=> b!1469687 (= res!998239 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34463))))

(declare-fun b!1469688 () Bool)

(assert (=> b!1469688 (= e!825080 e!825078)))

(declare-fun res!998234 () Bool)

(assert (=> b!1469688 (=> (not res!998234) (not e!825078))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469688 (= res!998234 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47785 a!2862) j!93) mask!2687) (select (arr!47785 a!2862) j!93) a!2862 mask!2687) lt!642601))))

(assert (=> b!1469688 (= lt!642601 (Intermediate!12048 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!642604 () SeekEntryResult!12048)

(declare-fun b!1469689 () Bool)

(declare-fun lt!642602 () (_ BitVec 64))

(assert (=> b!1469689 (= e!825079 (not (= lt!642604 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642602 lt!642603 mask!2687))))))

(declare-fun b!1469690 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99003 (_ BitVec 32)) SeekEntryResult!12048)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99003 (_ BitVec 32)) SeekEntryResult!12048)

(assert (=> b!1469690 (= e!825079 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642602 lt!642603 mask!2687) (seekEntryOrOpen!0 lt!642602 lt!642603 mask!2687))))))

(declare-fun res!998242 () Bool)

(assert (=> start!125638 (=> (not res!998242) (not e!825081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125638 (= res!998242 (validMask!0 mask!2687))))

(assert (=> start!125638 e!825081))

(assert (=> start!125638 true))

(declare-fun array_inv!36730 (array!99003) Bool)

(assert (=> start!125638 (array_inv!36730 a!2862)))

(declare-fun b!1469691 () Bool)

(declare-fun res!998240 () Bool)

(assert (=> b!1469691 (=> (not res!998240) (not e!825081))))

(assert (=> b!1469691 (= res!998240 (validKeyInArray!0 (select (arr!47785 a!2862) i!1006)))))

(declare-fun b!1469692 () Bool)

(assert (=> b!1469692 (= e!825078 e!825082)))

(declare-fun res!998238 () Bool)

(assert (=> b!1469692 (=> (not res!998238) (not e!825082))))

(assert (=> b!1469692 (= res!998238 (= lt!642604 (Intermediate!12048 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469692 (= lt!642604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642602 mask!2687) lt!642602 lt!642603 mask!2687))))

(assert (=> b!1469692 (= lt!642602 (select (store (arr!47785 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125638 res!998242) b!1469684))

(assert (= (and b!1469684 res!998235) b!1469691))

(assert (= (and b!1469691 res!998240) b!1469686))

(assert (= (and b!1469686 res!998236) b!1469685))

(assert (= (and b!1469685 res!998241) b!1469687))

(assert (= (and b!1469687 res!998239) b!1469683))

(assert (= (and b!1469683 res!998237) b!1469682))

(assert (= (and b!1469682 res!998243) b!1469688))

(assert (= (and b!1469688 res!998234) b!1469680))

(assert (= (and b!1469680 res!998244) b!1469692))

(assert (= (and b!1469692 res!998238) b!1469681))

(assert (= (and b!1469681 c!135236) b!1469689))

(assert (= (and b!1469681 (not c!135236)) b!1469690))

(declare-fun m!1356891 () Bool)

(assert (=> start!125638 m!1356891))

(declare-fun m!1356893 () Bool)

(assert (=> start!125638 m!1356893))

(declare-fun m!1356895 () Bool)

(assert (=> b!1469692 m!1356895))

(assert (=> b!1469692 m!1356895))

(declare-fun m!1356897 () Bool)

(assert (=> b!1469692 m!1356897))

(declare-fun m!1356899 () Bool)

(assert (=> b!1469692 m!1356899))

(declare-fun m!1356901 () Bool)

(assert (=> b!1469692 m!1356901))

(assert (=> b!1469682 m!1356899))

(declare-fun m!1356903 () Bool)

(assert (=> b!1469682 m!1356903))

(declare-fun m!1356905 () Bool)

(assert (=> b!1469685 m!1356905))

(declare-fun m!1356907 () Bool)

(assert (=> b!1469688 m!1356907))

(assert (=> b!1469688 m!1356907))

(declare-fun m!1356909 () Bool)

(assert (=> b!1469688 m!1356909))

(assert (=> b!1469688 m!1356909))

(assert (=> b!1469688 m!1356907))

(declare-fun m!1356911 () Bool)

(assert (=> b!1469688 m!1356911))

(declare-fun m!1356913 () Bool)

(assert (=> b!1469691 m!1356913))

(assert (=> b!1469691 m!1356913))

(declare-fun m!1356915 () Bool)

(assert (=> b!1469691 m!1356915))

(declare-fun m!1356917 () Bool)

(assert (=> b!1469690 m!1356917))

(declare-fun m!1356919 () Bool)

(assert (=> b!1469690 m!1356919))

(assert (=> b!1469686 m!1356907))

(assert (=> b!1469686 m!1356907))

(declare-fun m!1356921 () Bool)

(assert (=> b!1469686 m!1356921))

(declare-fun m!1356923 () Bool)

(assert (=> b!1469687 m!1356923))

(assert (=> b!1469680 m!1356907))

(assert (=> b!1469680 m!1356907))

(declare-fun m!1356925 () Bool)

(assert (=> b!1469680 m!1356925))

(declare-fun m!1356927 () Bool)

(assert (=> b!1469689 m!1356927))

(push 1)


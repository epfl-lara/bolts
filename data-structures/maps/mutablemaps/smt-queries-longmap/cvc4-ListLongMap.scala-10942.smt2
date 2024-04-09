; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128036 () Bool)

(assert start!128036)

(declare-fun b!1503602 () Bool)

(declare-fun res!1024552 () Bool)

(declare-fun e!840668 () Bool)

(assert (=> b!1503602 (=> (not res!1024552) (not e!840668))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100264 0))(
  ( (array!100265 (arr!48384 (Array (_ BitVec 32) (_ BitVec 64))) (size!48935 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100264)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12601 0))(
  ( (MissingZero!12601 (index!52795 (_ BitVec 32))) (Found!12601 (index!52796 (_ BitVec 32))) (Intermediate!12601 (undefined!13413 Bool) (index!52797 (_ BitVec 32)) (x!134486 (_ BitVec 32))) (Undefined!12601) (MissingVacant!12601 (index!52798 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100264 (_ BitVec 32)) SeekEntryResult!12601)

(assert (=> b!1503602 (= res!1024552 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48384 a!2850) j!87) a!2850 mask!2661) (Found!12601 j!87)))))

(declare-fun res!1024555 () Bool)

(assert (=> start!128036 (=> (not res!1024555) (not e!840668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128036 (= res!1024555 (validMask!0 mask!2661))))

(assert (=> start!128036 e!840668))

(assert (=> start!128036 true))

(declare-fun array_inv!37329 (array!100264) Bool)

(assert (=> start!128036 (array_inv!37329 a!2850)))

(declare-fun b!1503603 () Bool)

(assert (=> b!1503603 (= e!840668 false)))

(declare-fun lt!653512 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503603 (= lt!653512 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503604 () Bool)

(declare-fun res!1024553 () Bool)

(assert (=> b!1503604 (=> (not res!1024553) (not e!840668))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503604 (= res!1024553 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48935 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48935 a!2850)) (= (select (arr!48384 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48384 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48935 a!2850))))))

(declare-fun b!1503605 () Bool)

(declare-fun res!1024558 () Bool)

(assert (=> b!1503605 (=> (not res!1024558) (not e!840668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503605 (= res!1024558 (validKeyInArray!0 (select (arr!48384 a!2850) j!87)))))

(declare-fun b!1503606 () Bool)

(declare-fun res!1024554 () Bool)

(assert (=> b!1503606 (=> (not res!1024554) (not e!840668))))

(assert (=> b!1503606 (= res!1024554 (and (= (size!48935 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48935 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48935 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503607 () Bool)

(declare-fun res!1024559 () Bool)

(assert (=> b!1503607 (=> (not res!1024559) (not e!840668))))

(assert (=> b!1503607 (= res!1024559 (validKeyInArray!0 (select (arr!48384 a!2850) i!996)))))

(declare-fun b!1503608 () Bool)

(declare-fun res!1024557 () Bool)

(assert (=> b!1503608 (=> (not res!1024557) (not e!840668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100264 (_ BitVec 32)) Bool)

(assert (=> b!1503608 (= res!1024557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503609 () Bool)

(declare-fun res!1024560 () Bool)

(assert (=> b!1503609 (=> (not res!1024560) (not e!840668))))

(assert (=> b!1503609 (= res!1024560 (not (= (select (arr!48384 a!2850) index!625) (select (arr!48384 a!2850) j!87))))))

(declare-fun b!1503610 () Bool)

(declare-fun res!1024556 () Bool)

(assert (=> b!1503610 (=> (not res!1024556) (not e!840668))))

(declare-datatypes ((List!35056 0))(
  ( (Nil!35053) (Cons!35052 (h!36450 (_ BitVec 64)) (t!49757 List!35056)) )
))
(declare-fun arrayNoDuplicates!0 (array!100264 (_ BitVec 32) List!35056) Bool)

(assert (=> b!1503610 (= res!1024556 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35053))))

(assert (= (and start!128036 res!1024555) b!1503606))

(assert (= (and b!1503606 res!1024554) b!1503607))

(assert (= (and b!1503607 res!1024559) b!1503605))

(assert (= (and b!1503605 res!1024558) b!1503608))

(assert (= (and b!1503608 res!1024557) b!1503610))

(assert (= (and b!1503610 res!1024556) b!1503604))

(assert (= (and b!1503604 res!1024553) b!1503602))

(assert (= (and b!1503602 res!1024552) b!1503609))

(assert (= (and b!1503609 res!1024560) b!1503603))

(declare-fun m!1386917 () Bool)

(assert (=> b!1503605 m!1386917))

(assert (=> b!1503605 m!1386917))

(declare-fun m!1386919 () Bool)

(assert (=> b!1503605 m!1386919))

(declare-fun m!1386921 () Bool)

(assert (=> b!1503603 m!1386921))

(declare-fun m!1386923 () Bool)

(assert (=> b!1503608 m!1386923))

(declare-fun m!1386925 () Bool)

(assert (=> b!1503610 m!1386925))

(declare-fun m!1386927 () Bool)

(assert (=> b!1503607 m!1386927))

(assert (=> b!1503607 m!1386927))

(declare-fun m!1386929 () Bool)

(assert (=> b!1503607 m!1386929))

(declare-fun m!1386931 () Bool)

(assert (=> b!1503604 m!1386931))

(declare-fun m!1386933 () Bool)

(assert (=> b!1503604 m!1386933))

(declare-fun m!1386935 () Bool)

(assert (=> b!1503604 m!1386935))

(declare-fun m!1386937 () Bool)

(assert (=> b!1503609 m!1386937))

(assert (=> b!1503609 m!1386917))

(declare-fun m!1386939 () Bool)

(assert (=> start!128036 m!1386939))

(declare-fun m!1386941 () Bool)

(assert (=> start!128036 m!1386941))

(assert (=> b!1503602 m!1386917))

(assert (=> b!1503602 m!1386917))

(declare-fun m!1386943 () Bool)

(assert (=> b!1503602 m!1386943))

(push 1)

(assert (not b!1503602))

(assert (not b!1503605))

(assert (not b!1503608))

(assert (not b!1503610))

(assert (not start!128036))

(assert (not b!1503603))

(assert (not b!1503607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


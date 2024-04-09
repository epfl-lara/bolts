; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128094 () Bool)

(assert start!128094)

(declare-fun b!1503953 () Bool)

(declare-fun res!1024814 () Bool)

(declare-fun e!840806 () Bool)

(assert (=> b!1503953 (=> (not res!1024814) (not e!840806))))

(declare-datatypes ((array!100283 0))(
  ( (array!100284 (arr!48392 (Array (_ BitVec 32) (_ BitVec 64))) (size!48943 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100283)

(declare-datatypes ((List!35064 0))(
  ( (Nil!35061) (Cons!35060 (h!36458 (_ BitVec 64)) (t!49765 List!35064)) )
))
(declare-fun arrayNoDuplicates!0 (array!100283 (_ BitVec 32) List!35064) Bool)

(assert (=> b!1503953 (= res!1024814 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35061))))

(declare-fun b!1503954 () Bool)

(declare-fun res!1024815 () Bool)

(assert (=> b!1503954 (=> (not res!1024815) (not e!840806))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503954 (= res!1024815 (and (= (size!48943 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48943 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48943 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503955 () Bool)

(assert (=> b!1503955 (= e!840806 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653590 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503955 (= lt!653590 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1024820 () Bool)

(assert (=> start!128094 (=> (not res!1024820) (not e!840806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128094 (= res!1024820 (validMask!0 mask!2661))))

(assert (=> start!128094 e!840806))

(assert (=> start!128094 true))

(declare-fun array_inv!37337 (array!100283) Bool)

(assert (=> start!128094 (array_inv!37337 a!2850)))

(declare-fun b!1503956 () Bool)

(declare-fun res!1024818 () Bool)

(assert (=> b!1503956 (=> (not res!1024818) (not e!840806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503956 (= res!1024818 (validKeyInArray!0 (select (arr!48392 a!2850) j!87)))))

(declare-fun b!1503957 () Bool)

(declare-fun res!1024821 () Bool)

(assert (=> b!1503957 (=> (not res!1024821) (not e!840806))))

(assert (=> b!1503957 (= res!1024821 (not (= (select (arr!48392 a!2850) index!625) (select (arr!48392 a!2850) j!87))))))

(declare-fun b!1503958 () Bool)

(declare-fun res!1024813 () Bool)

(assert (=> b!1503958 (=> (not res!1024813) (not e!840806))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12609 0))(
  ( (MissingZero!12609 (index!52827 (_ BitVec 32))) (Found!12609 (index!52828 (_ BitVec 32))) (Intermediate!12609 (undefined!13421 Bool) (index!52829 (_ BitVec 32)) (x!134524 (_ BitVec 32))) (Undefined!12609) (MissingVacant!12609 (index!52830 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100283 (_ BitVec 32)) SeekEntryResult!12609)

(assert (=> b!1503958 (= res!1024813 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48392 a!2850) j!87) a!2850 mask!2661) (Found!12609 j!87)))))

(declare-fun b!1503959 () Bool)

(declare-fun res!1024819 () Bool)

(assert (=> b!1503959 (=> (not res!1024819) (not e!840806))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503959 (= res!1024819 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48943 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48943 a!2850)) (= (select (arr!48392 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48392 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48943 a!2850))))))

(declare-fun b!1503960 () Bool)

(declare-fun res!1024817 () Bool)

(assert (=> b!1503960 (=> (not res!1024817) (not e!840806))))

(assert (=> b!1503960 (= res!1024817 (validKeyInArray!0 (select (arr!48392 a!2850) i!996)))))

(declare-fun b!1503961 () Bool)

(declare-fun res!1024816 () Bool)

(assert (=> b!1503961 (=> (not res!1024816) (not e!840806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100283 (_ BitVec 32)) Bool)

(assert (=> b!1503961 (= res!1024816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!128094 res!1024820) b!1503954))

(assert (= (and b!1503954 res!1024815) b!1503960))

(assert (= (and b!1503960 res!1024817) b!1503956))

(assert (= (and b!1503956 res!1024818) b!1503961))

(assert (= (and b!1503961 res!1024816) b!1503953))

(assert (= (and b!1503953 res!1024814) b!1503959))

(assert (= (and b!1503959 res!1024819) b!1503958))

(assert (= (and b!1503958 res!1024813) b!1503957))

(assert (= (and b!1503957 res!1024821) b!1503955))

(declare-fun m!1387213 () Bool)

(assert (=> b!1503960 m!1387213))

(assert (=> b!1503960 m!1387213))

(declare-fun m!1387215 () Bool)

(assert (=> b!1503960 m!1387215))

(declare-fun m!1387217 () Bool)

(assert (=> b!1503956 m!1387217))

(assert (=> b!1503956 m!1387217))

(declare-fun m!1387219 () Bool)

(assert (=> b!1503956 m!1387219))

(declare-fun m!1387221 () Bool)

(assert (=> start!128094 m!1387221))

(declare-fun m!1387223 () Bool)

(assert (=> start!128094 m!1387223))

(declare-fun m!1387225 () Bool)

(assert (=> b!1503959 m!1387225))

(declare-fun m!1387227 () Bool)

(assert (=> b!1503959 m!1387227))

(declare-fun m!1387229 () Bool)

(assert (=> b!1503959 m!1387229))

(declare-fun m!1387231 () Bool)

(assert (=> b!1503957 m!1387231))

(assert (=> b!1503957 m!1387217))

(declare-fun m!1387233 () Bool)

(assert (=> b!1503955 m!1387233))

(assert (=> b!1503958 m!1387217))

(assert (=> b!1503958 m!1387217))

(declare-fun m!1387235 () Bool)

(assert (=> b!1503958 m!1387235))

(declare-fun m!1387237 () Bool)

(assert (=> b!1503961 m!1387237))

(declare-fun m!1387239 () Bool)

(assert (=> b!1503953 m!1387239))

(check-sat (not b!1503955) (not b!1503958) (not b!1503960) (not start!128094) (not b!1503956) (not b!1503961) (not b!1503953))

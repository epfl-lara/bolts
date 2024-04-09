; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128112 () Bool)

(assert start!128112)

(declare-fun b!1504196 () Bool)

(declare-fun res!1025064 () Bool)

(declare-fun e!840859 () Bool)

(assert (=> b!1504196 (=> (not res!1025064) (not e!840859))))

(declare-datatypes ((array!100301 0))(
  ( (array!100302 (arr!48401 (Array (_ BitVec 32) (_ BitVec 64))) (size!48952 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100301)

(declare-datatypes ((List!35073 0))(
  ( (Nil!35070) (Cons!35069 (h!36467 (_ BitVec 64)) (t!49774 List!35073)) )
))
(declare-fun arrayNoDuplicates!0 (array!100301 (_ BitVec 32) List!35073) Bool)

(assert (=> b!1504196 (= res!1025064 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35070))))

(declare-fun b!1504197 () Bool)

(assert (=> b!1504197 (= e!840859 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653617 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504197 (= lt!653617 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504198 () Bool)

(declare-fun res!1025063 () Bool)

(assert (=> b!1504198 (=> (not res!1025063) (not e!840859))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504198 (= res!1025063 (validKeyInArray!0 (select (arr!48401 a!2850) i!996)))))

(declare-fun b!1504199 () Bool)

(declare-fun res!1025057 () Bool)

(assert (=> b!1504199 (=> (not res!1025057) (not e!840859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100301 (_ BitVec 32)) Bool)

(assert (=> b!1504199 (= res!1025057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504200 () Bool)

(declare-fun res!1025061 () Bool)

(assert (=> b!1504200 (=> (not res!1025061) (not e!840859))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504200 (= res!1025061 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48952 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48952 a!2850)) (= (select (arr!48401 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48401 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48952 a!2850))))))

(declare-fun b!1504201 () Bool)

(declare-fun res!1025058 () Bool)

(assert (=> b!1504201 (=> (not res!1025058) (not e!840859))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1504201 (= res!1025058 (validKeyInArray!0 (select (arr!48401 a!2850) j!87)))))

(declare-fun b!1504202 () Bool)

(declare-fun res!1025060 () Bool)

(assert (=> b!1504202 (=> (not res!1025060) (not e!840859))))

(declare-datatypes ((SeekEntryResult!12618 0))(
  ( (MissingZero!12618 (index!52863 (_ BitVec 32))) (Found!12618 (index!52864 (_ BitVec 32))) (Intermediate!12618 (undefined!13430 Bool) (index!52865 (_ BitVec 32)) (x!134557 (_ BitVec 32))) (Undefined!12618) (MissingVacant!12618 (index!52866 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100301 (_ BitVec 32)) SeekEntryResult!12618)

(assert (=> b!1504202 (= res!1025060 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48401 a!2850) j!87) a!2850 mask!2661) (Found!12618 j!87)))))

(declare-fun res!1025062 () Bool)

(assert (=> start!128112 (=> (not res!1025062) (not e!840859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128112 (= res!1025062 (validMask!0 mask!2661))))

(assert (=> start!128112 e!840859))

(assert (=> start!128112 true))

(declare-fun array_inv!37346 (array!100301) Bool)

(assert (=> start!128112 (array_inv!37346 a!2850)))

(declare-fun b!1504203 () Bool)

(declare-fun res!1025056 () Bool)

(assert (=> b!1504203 (=> (not res!1025056) (not e!840859))))

(assert (=> b!1504203 (= res!1025056 (not (= (select (arr!48401 a!2850) index!625) (select (arr!48401 a!2850) j!87))))))

(declare-fun b!1504204 () Bool)

(declare-fun res!1025059 () Bool)

(assert (=> b!1504204 (=> (not res!1025059) (not e!840859))))

(assert (=> b!1504204 (= res!1025059 (and (= (size!48952 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48952 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48952 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!128112 res!1025062) b!1504204))

(assert (= (and b!1504204 res!1025059) b!1504198))

(assert (= (and b!1504198 res!1025063) b!1504201))

(assert (= (and b!1504201 res!1025058) b!1504199))

(assert (= (and b!1504199 res!1025057) b!1504196))

(assert (= (and b!1504196 res!1025064) b!1504200))

(assert (= (and b!1504200 res!1025061) b!1504202))

(assert (= (and b!1504202 res!1025060) b!1504203))

(assert (= (and b!1504203 res!1025056) b!1504197))

(declare-fun m!1387465 () Bool)

(assert (=> b!1504201 m!1387465))

(assert (=> b!1504201 m!1387465))

(declare-fun m!1387467 () Bool)

(assert (=> b!1504201 m!1387467))

(declare-fun m!1387469 () Bool)

(assert (=> b!1504203 m!1387469))

(assert (=> b!1504203 m!1387465))

(declare-fun m!1387471 () Bool)

(assert (=> b!1504197 m!1387471))

(declare-fun m!1387473 () Bool)

(assert (=> b!1504198 m!1387473))

(assert (=> b!1504198 m!1387473))

(declare-fun m!1387475 () Bool)

(assert (=> b!1504198 m!1387475))

(assert (=> b!1504202 m!1387465))

(assert (=> b!1504202 m!1387465))

(declare-fun m!1387477 () Bool)

(assert (=> b!1504202 m!1387477))

(declare-fun m!1387479 () Bool)

(assert (=> b!1504200 m!1387479))

(declare-fun m!1387481 () Bool)

(assert (=> b!1504200 m!1387481))

(declare-fun m!1387483 () Bool)

(assert (=> b!1504200 m!1387483))

(declare-fun m!1387485 () Bool)

(assert (=> b!1504199 m!1387485))

(declare-fun m!1387487 () Bool)

(assert (=> b!1504196 m!1387487))

(declare-fun m!1387489 () Bool)

(assert (=> start!128112 m!1387489))

(declare-fun m!1387491 () Bool)

(assert (=> start!128112 m!1387491))

(check-sat (not b!1504197) (not b!1504201) (not b!1504198) (not b!1504199) (not b!1504196) (not start!128112) (not b!1504202))

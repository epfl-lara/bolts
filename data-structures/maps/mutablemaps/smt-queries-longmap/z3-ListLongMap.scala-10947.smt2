; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128106 () Bool)

(assert start!128106)

(declare-fun b!1504115 () Bool)

(declare-fun res!1024976 () Bool)

(declare-fun e!840841 () Bool)

(assert (=> b!1504115 (=> (not res!1024976) (not e!840841))))

(declare-datatypes ((array!100295 0))(
  ( (array!100296 (arr!48398 (Array (_ BitVec 32) (_ BitVec 64))) (size!48949 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100295)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1504115 (= res!1024976 (not (= (select (arr!48398 a!2850) index!625) (select (arr!48398 a!2850) j!87))))))

(declare-fun b!1504116 () Bool)

(declare-fun res!1024978 () Bool)

(assert (=> b!1504116 (=> (not res!1024978) (not e!840841))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1504116 (= res!1024978 (and (= (size!48949 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48949 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48949 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504117 () Bool)

(declare-fun res!1024982 () Bool)

(assert (=> b!1504117 (=> (not res!1024982) (not e!840841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100295 (_ BitVec 32)) Bool)

(assert (=> b!1504117 (= res!1024982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504118 () Bool)

(declare-fun res!1024977 () Bool)

(assert (=> b!1504118 (=> (not res!1024977) (not e!840841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504118 (= res!1024977 (validKeyInArray!0 (select (arr!48398 a!2850) i!996)))))

(declare-fun b!1504119 () Bool)

(declare-fun res!1024980 () Bool)

(assert (=> b!1504119 (=> (not res!1024980) (not e!840841))))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(assert (=> b!1504119 (= res!1024980 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48949 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48949 a!2850)) (= (select (arr!48398 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48398 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48949 a!2850))))))

(declare-fun b!1504120 () Bool)

(assert (=> b!1504120 (= e!840841 false)))

(declare-fun lt!653608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504120 (= lt!653608 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504121 () Bool)

(declare-fun res!1024981 () Bool)

(assert (=> b!1504121 (=> (not res!1024981) (not e!840841))))

(assert (=> b!1504121 (= res!1024981 (validKeyInArray!0 (select (arr!48398 a!2850) j!87)))))

(declare-fun res!1024983 () Bool)

(assert (=> start!128106 (=> (not res!1024983) (not e!840841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128106 (= res!1024983 (validMask!0 mask!2661))))

(assert (=> start!128106 e!840841))

(assert (=> start!128106 true))

(declare-fun array_inv!37343 (array!100295) Bool)

(assert (=> start!128106 (array_inv!37343 a!2850)))

(declare-fun b!1504122 () Bool)

(declare-fun res!1024979 () Bool)

(assert (=> b!1504122 (=> (not res!1024979) (not e!840841))))

(declare-datatypes ((SeekEntryResult!12615 0))(
  ( (MissingZero!12615 (index!52851 (_ BitVec 32))) (Found!12615 (index!52852 (_ BitVec 32))) (Intermediate!12615 (undefined!13427 Bool) (index!52853 (_ BitVec 32)) (x!134546 (_ BitVec 32))) (Undefined!12615) (MissingVacant!12615 (index!52854 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100295 (_ BitVec 32)) SeekEntryResult!12615)

(assert (=> b!1504122 (= res!1024979 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48398 a!2850) j!87) a!2850 mask!2661) (Found!12615 j!87)))))

(declare-fun b!1504123 () Bool)

(declare-fun res!1024975 () Bool)

(assert (=> b!1504123 (=> (not res!1024975) (not e!840841))))

(declare-datatypes ((List!35070 0))(
  ( (Nil!35067) (Cons!35066 (h!36464 (_ BitVec 64)) (t!49771 List!35070)) )
))
(declare-fun arrayNoDuplicates!0 (array!100295 (_ BitVec 32) List!35070) Bool)

(assert (=> b!1504123 (= res!1024975 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35067))))

(assert (= (and start!128106 res!1024983) b!1504116))

(assert (= (and b!1504116 res!1024978) b!1504118))

(assert (= (and b!1504118 res!1024977) b!1504121))

(assert (= (and b!1504121 res!1024981) b!1504117))

(assert (= (and b!1504117 res!1024982) b!1504123))

(assert (= (and b!1504123 res!1024975) b!1504119))

(assert (= (and b!1504119 res!1024980) b!1504122))

(assert (= (and b!1504122 res!1024979) b!1504115))

(assert (= (and b!1504115 res!1024976) b!1504120))

(declare-fun m!1387381 () Bool)

(assert (=> b!1504121 m!1387381))

(assert (=> b!1504121 m!1387381))

(declare-fun m!1387383 () Bool)

(assert (=> b!1504121 m!1387383))

(declare-fun m!1387385 () Bool)

(assert (=> b!1504115 m!1387385))

(assert (=> b!1504115 m!1387381))

(declare-fun m!1387387 () Bool)

(assert (=> start!128106 m!1387387))

(declare-fun m!1387389 () Bool)

(assert (=> start!128106 m!1387389))

(declare-fun m!1387391 () Bool)

(assert (=> b!1504120 m!1387391))

(declare-fun m!1387393 () Bool)

(assert (=> b!1504123 m!1387393))

(assert (=> b!1504122 m!1387381))

(assert (=> b!1504122 m!1387381))

(declare-fun m!1387395 () Bool)

(assert (=> b!1504122 m!1387395))

(declare-fun m!1387397 () Bool)

(assert (=> b!1504118 m!1387397))

(assert (=> b!1504118 m!1387397))

(declare-fun m!1387399 () Bool)

(assert (=> b!1504118 m!1387399))

(declare-fun m!1387401 () Bool)

(assert (=> b!1504119 m!1387401))

(declare-fun m!1387403 () Bool)

(assert (=> b!1504119 m!1387403))

(declare-fun m!1387405 () Bool)

(assert (=> b!1504119 m!1387405))

(declare-fun m!1387407 () Bool)

(assert (=> b!1504117 m!1387407))

(check-sat (not b!1504122) (not start!128106) (not b!1504118) (not b!1504121) (not b!1504120) (not b!1504123) (not b!1504117))

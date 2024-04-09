; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131396 () Bool)

(assert start!131396)

(declare-fun b!1540050 () Bool)

(declare-fun res!1056879 () Bool)

(declare-fun e!856574 () Bool)

(assert (=> b!1540050 (=> (not res!1056879) (not e!856574))))

(declare-datatypes ((array!102271 0))(
  ( (array!102272 (arr!49341 (Array (_ BitVec 32) (_ BitVec 64))) (size!49892 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102271)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540050 (= res!1056879 (validKeyInArray!0 (select (arr!49341 a!2792) j!64)))))

(declare-fun b!1540051 () Bool)

(declare-fun res!1056881 () Bool)

(assert (=> b!1540051 (=> (not res!1056881) (not e!856574))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1540051 (= res!1056881 (validKeyInArray!0 (select (arr!49341 a!2792) i!951)))))

(declare-fun b!1540052 () Bool)

(declare-fun res!1056884 () Bool)

(assert (=> b!1540052 (=> (not res!1056884) (not e!856574))))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1540052 (= res!1056884 (and (= (size!49892 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49892 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49892 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540053 () Bool)

(declare-fun res!1056883 () Bool)

(assert (=> b!1540053 (=> (not res!1056883) (not e!856574))))

(declare-datatypes ((List!35995 0))(
  ( (Nil!35992) (Cons!35991 (h!37437 (_ BitVec 64)) (t!50696 List!35995)) )
))
(declare-fun arrayNoDuplicates!0 (array!102271 (_ BitVec 32) List!35995) Bool)

(assert (=> b!1540053 (= res!1056883 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35992))))

(declare-fun b!1540054 () Bool)

(declare-fun e!856570 () Bool)

(declare-fun e!856573 () Bool)

(assert (=> b!1540054 (= e!856570 e!856573)))

(declare-fun res!1056887 () Bool)

(assert (=> b!1540054 (=> (not res!1056887) (not e!856573))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!665175 () (_ BitVec 32))

(assert (=> b!1540054 (= res!1056887 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665175 #b00000000000000000000000000000000) (bvslt lt!665175 (size!49892 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540054 (= lt!665175 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540056 () Bool)

(declare-fun e!856571 () Bool)

(assert (=> b!1540056 (= e!856573 e!856571)))

(declare-fun res!1056888 () Bool)

(assert (=> b!1540056 (=> (not res!1056888) (not e!856571))))

(declare-datatypes ((SeekEntryResult!13490 0))(
  ( (MissingZero!13490 (index!56354 (_ BitVec 32))) (Found!13490 (index!56355 (_ BitVec 32))) (Intermediate!13490 (undefined!14302 Bool) (index!56356 (_ BitVec 32)) (x!138092 (_ BitVec 32))) (Undefined!13490) (MissingVacant!13490 (index!56357 (_ BitVec 32))) )
))
(declare-fun lt!665176 () SeekEntryResult!13490)

(declare-fun lt!665173 () SeekEntryResult!13490)

(assert (=> b!1540056 (= res!1056888 (= lt!665176 lt!665173))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102271 (_ BitVec 32)) SeekEntryResult!13490)

(assert (=> b!1540056 (= lt!665176 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665175 vacantIndex!5 (select (arr!49341 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540057 () Bool)

(assert (=> b!1540057 (= e!856571 (not true))))

(assert (=> b!1540057 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665175 vacantIndex!5 (select (store (arr!49341 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102272 (store (arr!49341 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49892 a!2792)) mask!2480) lt!665176)))

(declare-datatypes ((Unit!51372 0))(
  ( (Unit!51373) )
))
(declare-fun lt!665174 () Unit!51372)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102271 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51372)

(assert (=> b!1540057 (= lt!665174 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665175 vacantIndex!5 mask!2480))))

(declare-fun b!1540058 () Bool)

(declare-fun res!1056878 () Bool)

(assert (=> b!1540058 (=> (not res!1056878) (not e!856570))))

(assert (=> b!1540058 (= res!1056878 (not (= (select (arr!49341 a!2792) index!463) (select (arr!49341 a!2792) j!64))))))

(declare-fun b!1540059 () Bool)

(assert (=> b!1540059 (= e!856574 e!856570)))

(declare-fun res!1056885 () Bool)

(assert (=> b!1540059 (=> (not res!1056885) (not e!856570))))

(assert (=> b!1540059 (= res!1056885 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49341 a!2792) j!64) a!2792 mask!2480) lt!665173))))

(assert (=> b!1540059 (= lt!665173 (Found!13490 j!64))))

(declare-fun b!1540060 () Bool)

(declare-fun res!1056882 () Bool)

(assert (=> b!1540060 (=> (not res!1056882) (not e!856574))))

(assert (=> b!1540060 (= res!1056882 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49892 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49892 a!2792)) (= (select (arr!49341 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540055 () Bool)

(declare-fun res!1056880 () Bool)

(assert (=> b!1540055 (=> (not res!1056880) (not e!856574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102271 (_ BitVec 32)) Bool)

(assert (=> b!1540055 (= res!1056880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1056886 () Bool)

(assert (=> start!131396 (=> (not res!1056886) (not e!856574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131396 (= res!1056886 (validMask!0 mask!2480))))

(assert (=> start!131396 e!856574))

(assert (=> start!131396 true))

(declare-fun array_inv!38286 (array!102271) Bool)

(assert (=> start!131396 (array_inv!38286 a!2792)))

(assert (= (and start!131396 res!1056886) b!1540052))

(assert (= (and b!1540052 res!1056884) b!1540051))

(assert (= (and b!1540051 res!1056881) b!1540050))

(assert (= (and b!1540050 res!1056879) b!1540055))

(assert (= (and b!1540055 res!1056880) b!1540053))

(assert (= (and b!1540053 res!1056883) b!1540060))

(assert (= (and b!1540060 res!1056882) b!1540059))

(assert (= (and b!1540059 res!1056885) b!1540058))

(assert (= (and b!1540058 res!1056878) b!1540054))

(assert (= (and b!1540054 res!1056887) b!1540056))

(assert (= (and b!1540056 res!1056888) b!1540057))

(declare-fun m!1422203 () Bool)

(assert (=> b!1540056 m!1422203))

(assert (=> b!1540056 m!1422203))

(declare-fun m!1422205 () Bool)

(assert (=> b!1540056 m!1422205))

(declare-fun m!1422207 () Bool)

(assert (=> b!1540060 m!1422207))

(declare-fun m!1422209 () Bool)

(assert (=> b!1540054 m!1422209))

(declare-fun m!1422211 () Bool)

(assert (=> b!1540057 m!1422211))

(declare-fun m!1422213 () Bool)

(assert (=> b!1540057 m!1422213))

(assert (=> b!1540057 m!1422213))

(declare-fun m!1422215 () Bool)

(assert (=> b!1540057 m!1422215))

(declare-fun m!1422217 () Bool)

(assert (=> b!1540057 m!1422217))

(declare-fun m!1422219 () Bool)

(assert (=> b!1540051 m!1422219))

(assert (=> b!1540051 m!1422219))

(declare-fun m!1422221 () Bool)

(assert (=> b!1540051 m!1422221))

(declare-fun m!1422223 () Bool)

(assert (=> b!1540055 m!1422223))

(declare-fun m!1422225 () Bool)

(assert (=> b!1540058 m!1422225))

(assert (=> b!1540058 m!1422203))

(declare-fun m!1422227 () Bool)

(assert (=> start!131396 m!1422227))

(declare-fun m!1422229 () Bool)

(assert (=> start!131396 m!1422229))

(assert (=> b!1540059 m!1422203))

(assert (=> b!1540059 m!1422203))

(declare-fun m!1422231 () Bool)

(assert (=> b!1540059 m!1422231))

(assert (=> b!1540050 m!1422203))

(assert (=> b!1540050 m!1422203))

(declare-fun m!1422233 () Bool)

(assert (=> b!1540050 m!1422233))

(declare-fun m!1422235 () Bool)

(assert (=> b!1540053 m!1422235))

(push 1)

(assert (not b!1540051))

(assert (not b!1540056))

(assert (not b!1540057))


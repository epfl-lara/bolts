; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87076 () Bool)

(assert start!87076)

(declare-fun b!1009392 () Bool)

(declare-fun res!678081 () Bool)

(declare-fun e!567959 () Bool)

(assert (=> b!1009392 (=> (not res!678081) (not e!567959))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1009392 (= res!678081 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1009393 () Bool)

(declare-fun res!678086 () Bool)

(declare-fun e!567957 () Bool)

(assert (=> b!1009393 (=> (not res!678086) (not e!567957))))

(declare-datatypes ((array!63595 0))(
  ( (array!63596 (arr!30613 (Array (_ BitVec 32) (_ BitVec 64))) (size!31116 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63595)

(declare-datatypes ((List!21415 0))(
  ( (Nil!21412) (Cons!21411 (h!22600 (_ BitVec 64)) (t!30424 List!21415)) )
))
(declare-fun arrayNoDuplicates!0 (array!63595 (_ BitVec 32) List!21415) Bool)

(assert (=> b!1009393 (= res!678086 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21412))))

(declare-fun b!1009394 () Bool)

(declare-fun res!678094 () Bool)

(assert (=> b!1009394 (=> (not res!678094) (not e!567957))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63595 (_ BitVec 32)) Bool)

(assert (=> b!1009394 (= res!678094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1009395 () Bool)

(declare-fun e!567962 () Bool)

(declare-fun e!567961 () Bool)

(assert (=> b!1009395 (= e!567962 e!567961)))

(declare-fun res!678088 () Bool)

(assert (=> b!1009395 (=> (not res!678088) (not e!567961))))

(declare-datatypes ((SeekEntryResult!9545 0))(
  ( (MissingZero!9545 (index!40550 (_ BitVec 32))) (Found!9545 (index!40551 (_ BitVec 32))) (Intermediate!9545 (undefined!10357 Bool) (index!40552 (_ BitVec 32)) (x!87983 (_ BitVec 32))) (Undefined!9545) (MissingVacant!9545 (index!40553 (_ BitVec 32))) )
))
(declare-fun lt!446118 () SeekEntryResult!9545)

(declare-fun lt!446115 () SeekEntryResult!9545)

(assert (=> b!1009395 (= res!678088 (= lt!446118 lt!446115))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63595 (_ BitVec 32)) SeekEntryResult!9545)

(assert (=> b!1009395 (= lt!446118 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30613 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009396 () Bool)

(declare-fun e!567958 () Bool)

(assert (=> b!1009396 (= e!567958 e!567957)))

(declare-fun res!678085 () Bool)

(assert (=> b!1009396 (=> (not res!678085) (not e!567957))))

(declare-fun lt!446120 () SeekEntryResult!9545)

(assert (=> b!1009396 (= res!678085 (or (= lt!446120 (MissingVacant!9545 i!1194)) (= lt!446120 (MissingZero!9545 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63595 (_ BitVec 32)) SeekEntryResult!9545)

(assert (=> b!1009396 (= lt!446120 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1009397 () Bool)

(assert (=> b!1009397 (= e!567957 e!567962)))

(declare-fun res!678082 () Bool)

(assert (=> b!1009397 (=> (not res!678082) (not e!567962))))

(declare-fun lt!446117 () SeekEntryResult!9545)

(assert (=> b!1009397 (= res!678082 (= lt!446117 lt!446115))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1009397 (= lt!446115 (Intermediate!9545 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009397 (= lt!446117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30613 a!3219) j!170) mask!3464) (select (arr!30613 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009398 () Bool)

(declare-fun res!678089 () Bool)

(assert (=> b!1009398 (=> (not res!678089) (not e!567957))))

(assert (=> b!1009398 (= res!678089 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31116 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31116 a!3219))))))

(declare-fun b!1009399 () Bool)

(declare-fun res!678091 () Bool)

(assert (=> b!1009399 (=> (not res!678091) (not e!567958))))

(declare-fun arrayContainsKey!0 (array!63595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1009399 (= res!678091 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1009400 () Bool)

(declare-fun res!678093 () Bool)

(assert (=> b!1009400 (=> (not res!678093) (not e!567959))))

(declare-fun lt!446116 () (_ BitVec 64))

(declare-fun lt!446121 () array!63595)

(assert (=> b!1009400 (= res!678093 (not (= lt!446118 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446116 lt!446121 mask!3464))))))

(declare-fun b!1009402 () Bool)

(assert (=> b!1009402 (= e!567959 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvslt (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000)))))

(declare-fun lt!446119 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009402 (= lt!446119 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1009403 () Bool)

(declare-fun res!678090 () Bool)

(assert (=> b!1009403 (=> (not res!678090) (not e!567958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1009403 (= res!678090 (validKeyInArray!0 k!2224))))

(declare-fun b!1009404 () Bool)

(declare-fun res!678083 () Bool)

(assert (=> b!1009404 (=> (not res!678083) (not e!567958))))

(assert (=> b!1009404 (= res!678083 (and (= (size!31116 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31116 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31116 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1009405 () Bool)

(declare-fun res!678092 () Bool)

(assert (=> b!1009405 (=> (not res!678092) (not e!567958))))

(assert (=> b!1009405 (= res!678092 (validKeyInArray!0 (select (arr!30613 a!3219) j!170)))))

(declare-fun res!678087 () Bool)

(assert (=> start!87076 (=> (not res!678087) (not e!567958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87076 (= res!678087 (validMask!0 mask!3464))))

(assert (=> start!87076 e!567958))

(declare-fun array_inv!23603 (array!63595) Bool)

(assert (=> start!87076 (array_inv!23603 a!3219)))

(assert (=> start!87076 true))

(declare-fun b!1009401 () Bool)

(assert (=> b!1009401 (= e!567961 e!567959)))

(declare-fun res!678084 () Bool)

(assert (=> b!1009401 (=> (not res!678084) (not e!567959))))

(assert (=> b!1009401 (= res!678084 (not (= lt!446117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446116 mask!3464) lt!446116 lt!446121 mask!3464))))))

(assert (=> b!1009401 (= lt!446116 (select (store (arr!30613 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1009401 (= lt!446121 (array!63596 (store (arr!30613 a!3219) i!1194 k!2224) (size!31116 a!3219)))))

(assert (= (and start!87076 res!678087) b!1009404))

(assert (= (and b!1009404 res!678083) b!1009405))

(assert (= (and b!1009405 res!678092) b!1009403))

(assert (= (and b!1009403 res!678090) b!1009399))

(assert (= (and b!1009399 res!678091) b!1009396))

(assert (= (and b!1009396 res!678085) b!1009394))

(assert (= (and b!1009394 res!678094) b!1009393))

(assert (= (and b!1009393 res!678086) b!1009398))

(assert (= (and b!1009398 res!678089) b!1009397))

(assert (= (and b!1009397 res!678082) b!1009395))

(assert (= (and b!1009395 res!678088) b!1009401))

(assert (= (and b!1009401 res!678084) b!1009400))

(assert (= (and b!1009400 res!678093) b!1009392))

(assert (= (and b!1009392 res!678081) b!1009402))

(declare-fun m!934065 () Bool)

(assert (=> b!1009394 m!934065))

(declare-fun m!934067 () Bool)

(assert (=> start!87076 m!934067))

(declare-fun m!934069 () Bool)

(assert (=> start!87076 m!934069))

(declare-fun m!934071 () Bool)

(assert (=> b!1009393 m!934071))

(declare-fun m!934073 () Bool)

(assert (=> b!1009396 m!934073))

(declare-fun m!934075 () Bool)

(assert (=> b!1009400 m!934075))

(declare-fun m!934077 () Bool)

(assert (=> b!1009395 m!934077))

(assert (=> b!1009395 m!934077))

(declare-fun m!934079 () Bool)

(assert (=> b!1009395 m!934079))

(declare-fun m!934081 () Bool)

(assert (=> b!1009402 m!934081))

(assert (=> b!1009397 m!934077))

(assert (=> b!1009397 m!934077))

(declare-fun m!934083 () Bool)

(assert (=> b!1009397 m!934083))

(assert (=> b!1009397 m!934083))

(assert (=> b!1009397 m!934077))

(declare-fun m!934085 () Bool)

(assert (=> b!1009397 m!934085))

(assert (=> b!1009405 m!934077))

(assert (=> b!1009405 m!934077))

(declare-fun m!934087 () Bool)

(assert (=> b!1009405 m!934087))

(declare-fun m!934089 () Bool)

(assert (=> b!1009403 m!934089))

(declare-fun m!934091 () Bool)

(assert (=> b!1009401 m!934091))

(assert (=> b!1009401 m!934091))

(declare-fun m!934093 () Bool)

(assert (=> b!1009401 m!934093))

(declare-fun m!934095 () Bool)

(assert (=> b!1009401 m!934095))

(declare-fun m!934097 () Bool)

(assert (=> b!1009401 m!934097))

(declare-fun m!934099 () Bool)

(assert (=> b!1009399 m!934099))

(push 1)


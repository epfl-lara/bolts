; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52460 () Bool)

(assert start!52460)

(declare-fun b!572387 () Bool)

(declare-fun res!362049 () Bool)

(declare-fun e!329261 () Bool)

(assert (=> b!572387 (=> (not res!362049) (not e!329261))))

(declare-datatypes ((array!35811 0))(
  ( (array!35812 (arr!17190 (Array (_ BitVec 32) (_ BitVec 64))) (size!17554 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35811)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35811 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572387 (= res!362049 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572388 () Bool)

(declare-fun res!362047 () Bool)

(declare-fun e!329258 () Bool)

(assert (=> b!572388 (=> (not res!362047) (not e!329258))))

(declare-datatypes ((List!11323 0))(
  ( (Nil!11320) (Cons!11319 (h!12346 (_ BitVec 64)) (t!17559 List!11323)) )
))
(declare-fun arrayNoDuplicates!0 (array!35811 (_ BitVec 32) List!11323) Bool)

(assert (=> b!572388 (= res!362047 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11320))))

(declare-fun b!572389 () Bool)

(declare-fun e!329257 () Bool)

(declare-fun e!329259 () Bool)

(assert (=> b!572389 (= e!329257 e!329259)))

(declare-fun res!362052 () Bool)

(assert (=> b!572389 (=> res!362052 e!329259)))

(declare-datatypes ((SeekEntryResult!5646 0))(
  ( (MissingZero!5646 (index!24811 (_ BitVec 32))) (Found!5646 (index!24812 (_ BitVec 32))) (Intermediate!5646 (undefined!6458 Bool) (index!24813 (_ BitVec 32)) (x!53710 (_ BitVec 32))) (Undefined!5646) (MissingVacant!5646 (index!24814 (_ BitVec 32))) )
))
(declare-fun lt!261298 () SeekEntryResult!5646)

(assert (=> b!572389 (= res!362052 (or (undefined!6458 lt!261298) (not (is-Intermediate!5646 lt!261298))))))

(declare-fun res!362045 () Bool)

(assert (=> start!52460 (=> (not res!362045) (not e!329261))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52460 (= res!362045 (validMask!0 mask!3119))))

(assert (=> start!52460 e!329261))

(assert (=> start!52460 true))

(declare-fun array_inv!12964 (array!35811) Bool)

(assert (=> start!52460 (array_inv!12964 a!3118)))

(declare-fun b!572390 () Bool)

(declare-fun res!362056 () Bool)

(assert (=> b!572390 (=> (not res!362056) (not e!329261))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572390 (= res!362056 (and (= (size!17554 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17554 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17554 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572391 () Bool)

(declare-fun e!329262 () Bool)

(declare-fun e!329260 () Bool)

(assert (=> b!572391 (= e!329262 e!329260)))

(declare-fun res!362057 () Bool)

(assert (=> b!572391 (=> (not res!362057) (not e!329260))))

(declare-fun lt!261305 () SeekEntryResult!5646)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35811 (_ BitVec 32)) SeekEntryResult!5646)

(assert (=> b!572391 (= res!362057 (= lt!261305 (seekKeyOrZeroReturnVacant!0 (x!53710 lt!261298) (index!24813 lt!261298) (index!24813 lt!261298) (select (arr!17190 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572392 () Bool)

(declare-fun e!329256 () Bool)

(assert (=> b!572392 (= e!329256 (not true))))

(assert (=> b!572392 e!329257))

(declare-fun res!362053 () Bool)

(assert (=> b!572392 (=> (not res!362053) (not e!329257))))

(assert (=> b!572392 (= res!362053 (= lt!261305 (Found!5646 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35811 (_ BitVec 32)) SeekEntryResult!5646)

(assert (=> b!572392 (= lt!261305 (seekEntryOrOpen!0 (select (arr!17190 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35811 (_ BitVec 32)) Bool)

(assert (=> b!572392 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17994 0))(
  ( (Unit!17995) )
))
(declare-fun lt!261297 () Unit!17994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17994)

(assert (=> b!572392 (= lt!261297 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572393 () Bool)

(assert (=> b!572393 (= e!329258 e!329256)))

(declare-fun res!362055 () Bool)

(assert (=> b!572393 (=> (not res!362055) (not e!329256))))

(declare-fun lt!261303 () array!35811)

(declare-fun lt!261304 () (_ BitVec 32))

(declare-fun lt!261302 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35811 (_ BitVec 32)) SeekEntryResult!5646)

(assert (=> b!572393 (= res!362055 (= lt!261298 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261304 lt!261302 lt!261303 mask!3119)))))

(declare-fun lt!261301 () (_ BitVec 32))

(assert (=> b!572393 (= lt!261298 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261301 (select (arr!17190 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572393 (= lt!261304 (toIndex!0 lt!261302 mask!3119))))

(assert (=> b!572393 (= lt!261302 (select (store (arr!17190 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572393 (= lt!261301 (toIndex!0 (select (arr!17190 a!3118) j!142) mask!3119))))

(assert (=> b!572393 (= lt!261303 (array!35812 (store (arr!17190 a!3118) i!1132 k!1914) (size!17554 a!3118)))))

(declare-fun b!572394 () Bool)

(assert (=> b!572394 (= e!329259 e!329262)))

(declare-fun res!362054 () Bool)

(assert (=> b!572394 (=> res!362054 e!329262)))

(declare-fun lt!261299 () (_ BitVec 64))

(assert (=> b!572394 (= res!362054 (or (= lt!261299 (select (arr!17190 a!3118) j!142)) (= lt!261299 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572394 (= lt!261299 (select (arr!17190 a!3118) (index!24813 lt!261298)))))

(declare-fun b!572395 () Bool)

(declare-fun res!362051 () Bool)

(assert (=> b!572395 (=> (not res!362051) (not e!329261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572395 (= res!362051 (validKeyInArray!0 k!1914))))

(declare-fun b!572396 () Bool)

(declare-fun res!362046 () Bool)

(assert (=> b!572396 (=> (not res!362046) (not e!329261))))

(assert (=> b!572396 (= res!362046 (validKeyInArray!0 (select (arr!17190 a!3118) j!142)))))

(declare-fun b!572397 () Bool)

(assert (=> b!572397 (= e!329260 (= (seekEntryOrOpen!0 lt!261302 lt!261303 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53710 lt!261298) (index!24813 lt!261298) (index!24813 lt!261298) lt!261302 lt!261303 mask!3119)))))

(declare-fun b!572398 () Bool)

(assert (=> b!572398 (= e!329261 e!329258)))

(declare-fun res!362050 () Bool)

(assert (=> b!572398 (=> (not res!362050) (not e!329258))))

(declare-fun lt!261300 () SeekEntryResult!5646)

(assert (=> b!572398 (= res!362050 (or (= lt!261300 (MissingZero!5646 i!1132)) (= lt!261300 (MissingVacant!5646 i!1132))))))

(assert (=> b!572398 (= lt!261300 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572399 () Bool)

(declare-fun res!362048 () Bool)

(assert (=> b!572399 (=> (not res!362048) (not e!329258))))

(assert (=> b!572399 (= res!362048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52460 res!362045) b!572390))

(assert (= (and b!572390 res!362056) b!572396))

(assert (= (and b!572396 res!362046) b!572395))

(assert (= (and b!572395 res!362051) b!572387))

(assert (= (and b!572387 res!362049) b!572398))

(assert (= (and b!572398 res!362050) b!572399))

(assert (= (and b!572399 res!362048) b!572388))

(assert (= (and b!572388 res!362047) b!572393))

(assert (= (and b!572393 res!362055) b!572392))

(assert (= (and b!572392 res!362053) b!572389))

(assert (= (and b!572389 (not res!362052)) b!572394))

(assert (= (and b!572394 (not res!362054)) b!572391))

(assert (= (and b!572391 res!362057) b!572397))

(declare-fun m!551419 () Bool)

(assert (=> b!572398 m!551419))

(declare-fun m!551421 () Bool)

(assert (=> b!572395 m!551421))

(declare-fun m!551423 () Bool)

(assert (=> b!572391 m!551423))

(assert (=> b!572391 m!551423))

(declare-fun m!551425 () Bool)

(assert (=> b!572391 m!551425))

(assert (=> b!572393 m!551423))

(declare-fun m!551427 () Bool)

(assert (=> b!572393 m!551427))

(assert (=> b!572393 m!551423))

(declare-fun m!551429 () Bool)

(assert (=> b!572393 m!551429))

(declare-fun m!551431 () Bool)

(assert (=> b!572393 m!551431))

(assert (=> b!572393 m!551423))

(declare-fun m!551433 () Bool)

(assert (=> b!572393 m!551433))

(declare-fun m!551435 () Bool)

(assert (=> b!572393 m!551435))

(declare-fun m!551437 () Bool)

(assert (=> b!572393 m!551437))

(assert (=> b!572392 m!551423))

(assert (=> b!572392 m!551423))

(declare-fun m!551439 () Bool)

(assert (=> b!572392 m!551439))

(declare-fun m!551441 () Bool)

(assert (=> b!572392 m!551441))

(declare-fun m!551443 () Bool)

(assert (=> b!572392 m!551443))

(declare-fun m!551445 () Bool)

(assert (=> b!572387 m!551445))

(declare-fun m!551447 () Bool)

(assert (=> b!572388 m!551447))

(assert (=> b!572394 m!551423))

(declare-fun m!551449 () Bool)

(assert (=> b!572394 m!551449))

(declare-fun m!551451 () Bool)

(assert (=> b!572399 m!551451))

(declare-fun m!551453 () Bool)

(assert (=> b!572397 m!551453))

(declare-fun m!551455 () Bool)

(assert (=> b!572397 m!551455))

(assert (=> b!572396 m!551423))

(assert (=> b!572396 m!551423))

(declare-fun m!551457 () Bool)

(assert (=> b!572396 m!551457))

(declare-fun m!551459 () Bool)

(assert (=> start!52460 m!551459))

(declare-fun m!551461 () Bool)

(assert (=> start!52460 m!551461))

(push 1)


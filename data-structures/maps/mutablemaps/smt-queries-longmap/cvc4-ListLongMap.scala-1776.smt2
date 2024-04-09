; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32368 () Bool)

(assert start!32368)

(declare-fun b!322047 () Bool)

(declare-fun res!176184 () Bool)

(declare-fun e!199378 () Bool)

(assert (=> b!322047 (=> (not res!176184) (not e!199378))))

(declare-datatypes ((array!16503 0))(
  ( (array!16504 (arr!7806 (Array (_ BitVec 32) (_ BitVec 64))) (size!8158 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16503)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322047 (= res!176184 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322048 () Bool)

(declare-fun res!176185 () Bool)

(assert (=> b!322048 (=> (not res!176185) (not e!199378))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16503 (_ BitVec 32)) Bool)

(assert (=> b!322048 (= res!176185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322049 () Bool)

(declare-fun res!176190 () Bool)

(declare-fun e!199376 () Bool)

(assert (=> b!322049 (=> (not res!176190) (not e!199376))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322049 (= res!176190 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7806 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7806 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7806 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!176193 () Bool)

(assert (=> start!32368 (=> (not res!176193) (not e!199378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32368 (= res!176193 (validMask!0 mask!3777))))

(assert (=> start!32368 e!199378))

(declare-fun array_inv!5760 (array!16503) Bool)

(assert (=> start!32368 (array_inv!5760 a!3305)))

(assert (=> start!32368 true))

(declare-fun b!322050 () Bool)

(declare-fun res!176191 () Bool)

(assert (=> b!322050 (=> (not res!176191) (not e!199378))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322050 (= res!176191 (and (= (size!8158 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8158 a!3305))))))

(declare-fun b!322051 () Bool)

(declare-fun res!176192 () Bool)

(assert (=> b!322051 (=> (not res!176192) (not e!199376))))

(assert (=> b!322051 (= res!176192 (and (= (select (arr!7806 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8158 a!3305))))))

(declare-fun b!322052 () Bool)

(assert (=> b!322052 (= e!199378 e!199376)))

(declare-fun res!176187 () Bool)

(assert (=> b!322052 (=> (not res!176187) (not e!199376))))

(declare-datatypes ((SeekEntryResult!2948 0))(
  ( (MissingZero!2948 (index!13968 (_ BitVec 32))) (Found!2948 (index!13969 (_ BitVec 32))) (Intermediate!2948 (undefined!3760 Bool) (index!13970 (_ BitVec 32)) (x!32195 (_ BitVec 32))) (Undefined!2948) (MissingVacant!2948 (index!13971 (_ BitVec 32))) )
))
(declare-fun lt!156373 () SeekEntryResult!2948)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16503 (_ BitVec 32)) SeekEntryResult!2948)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322052 (= res!176187 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156373))))

(assert (=> b!322052 (= lt!156373 (Intermediate!2948 false resIndex!58 resX!58))))

(declare-fun b!322053 () Bool)

(declare-fun res!176186 () Bool)

(assert (=> b!322053 (=> (not res!176186) (not e!199376))))

(assert (=> b!322053 (= res!176186 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156373))))

(declare-fun b!322054 () Bool)

(declare-fun res!176188 () Bool)

(assert (=> b!322054 (=> (not res!176188) (not e!199378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322054 (= res!176188 (validKeyInArray!0 k!2497))))

(declare-fun b!322055 () Bool)

(assert (=> b!322055 (= e!199376 false)))

(declare-fun lt!156374 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322055 (= lt!156374 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!322056 () Bool)

(declare-fun res!176189 () Bool)

(assert (=> b!322056 (=> (not res!176189) (not e!199378))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16503 (_ BitVec 32)) SeekEntryResult!2948)

(assert (=> b!322056 (= res!176189 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2948 i!1250)))))

(assert (= (and start!32368 res!176193) b!322050))

(assert (= (and b!322050 res!176191) b!322054))

(assert (= (and b!322054 res!176188) b!322047))

(assert (= (and b!322047 res!176184) b!322056))

(assert (= (and b!322056 res!176189) b!322048))

(assert (= (and b!322048 res!176185) b!322052))

(assert (= (and b!322052 res!176187) b!322051))

(assert (= (and b!322051 res!176192) b!322053))

(assert (= (and b!322053 res!176186) b!322049))

(assert (= (and b!322049 res!176190) b!322055))

(declare-fun m!330013 () Bool)

(assert (=> b!322055 m!330013))

(declare-fun m!330015 () Bool)

(assert (=> b!322053 m!330015))

(declare-fun m!330017 () Bool)

(assert (=> b!322054 m!330017))

(declare-fun m!330019 () Bool)

(assert (=> start!32368 m!330019))

(declare-fun m!330021 () Bool)

(assert (=> start!32368 m!330021))

(declare-fun m!330023 () Bool)

(assert (=> b!322048 m!330023))

(declare-fun m!330025 () Bool)

(assert (=> b!322056 m!330025))

(declare-fun m!330027 () Bool)

(assert (=> b!322049 m!330027))

(declare-fun m!330029 () Bool)

(assert (=> b!322052 m!330029))

(assert (=> b!322052 m!330029))

(declare-fun m!330031 () Bool)

(assert (=> b!322052 m!330031))

(declare-fun m!330033 () Bool)

(assert (=> b!322047 m!330033))

(declare-fun m!330035 () Bool)

(assert (=> b!322051 m!330035))

(push 1)

(assert (not b!322048))

(assert (not b!322056))

(assert (not start!32368))

(assert (not b!322052))


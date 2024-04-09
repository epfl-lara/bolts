; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31860 () Bool)

(assert start!31860)

(declare-fun res!173021 () Bool)

(declare-fun e!197775 () Bool)

(assert (=> start!31860 (=> (not res!173021) (not e!197775))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31860 (= res!173021 (validMask!0 mask!3709))))

(assert (=> start!31860 e!197775))

(declare-datatypes ((array!16229 0))(
  ( (array!16230 (arr!7678 (Array (_ BitVec 32) (_ BitVec 64))) (size!8030 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16229)

(declare-fun array_inv!5632 (array!16229) Bool)

(assert (=> start!31860 (array_inv!5632 a!3293)))

(assert (=> start!31860 true))

(declare-fun b!318279 () Bool)

(declare-fun e!197779 () Bool)

(assert (=> b!318279 (= e!197775 e!197779)))

(declare-fun res!173025 () Bool)

(assert (=> b!318279 (=> (not res!173025) (not e!197779))))

(declare-datatypes ((SeekEntryResult!2829 0))(
  ( (MissingZero!2829 (index!13492 (_ BitVec 32))) (Found!2829 (index!13493 (_ BitVec 32))) (Intermediate!2829 (undefined!3641 Bool) (index!13494 (_ BitVec 32)) (x!31713 (_ BitVec 32))) (Undefined!2829) (MissingVacant!2829 (index!13495 (_ BitVec 32))) )
))
(declare-fun lt!155327 () SeekEntryResult!2829)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16229 (_ BitVec 32)) SeekEntryResult!2829)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318279 (= res!173025 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155327))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318279 (= lt!155327 (Intermediate!2829 false resIndex!52 resX!52))))

(declare-fun b!318280 () Bool)

(declare-fun lt!155329 () (_ BitVec 32))

(declare-fun e!197777 () Bool)

(declare-fun lt!155330 () array!16229)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318280 (= e!197777 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155330 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155329 k!2441 lt!155330 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318280 (= lt!155330 (array!16230 (store (arr!7678 a!3293) i!1240 k!2441) (size!8030 a!3293)))))

(declare-fun b!318281 () Bool)

(declare-fun e!197778 () Bool)

(assert (=> b!318281 (= e!197779 e!197778)))

(declare-fun res!173017 () Bool)

(assert (=> b!318281 (=> (not res!173017) (not e!197778))))

(declare-fun lt!155328 () SeekEntryResult!2829)

(assert (=> b!318281 (= res!173017 (and (= lt!155328 lt!155327) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7678 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318281 (= lt!155328 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318282 () Bool)

(declare-fun res!173022 () Bool)

(assert (=> b!318282 (=> (not res!173022) (not e!197775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318282 (= res!173022 (validKeyInArray!0 k!2441))))

(declare-fun b!318283 () Bool)

(declare-fun res!173018 () Bool)

(assert (=> b!318283 (=> (not res!173018) (not e!197775))))

(declare-fun arrayContainsKey!0 (array!16229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318283 (= res!173018 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318284 () Bool)

(declare-fun res!173019 () Bool)

(assert (=> b!318284 (=> (not res!173019) (not e!197775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16229 (_ BitVec 32)) Bool)

(assert (=> b!318284 (= res!173019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318285 () Bool)

(declare-fun res!173020 () Bool)

(assert (=> b!318285 (=> (not res!173020) (not e!197775))))

(assert (=> b!318285 (= res!173020 (and (= (size!8030 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8030 a!3293))))))

(declare-fun b!318286 () Bool)

(declare-fun res!173023 () Bool)

(assert (=> b!318286 (=> (not res!173023) (not e!197779))))

(assert (=> b!318286 (= res!173023 (and (= (select (arr!7678 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8030 a!3293))))))

(declare-fun b!318287 () Bool)

(declare-fun res!173024 () Bool)

(assert (=> b!318287 (=> (not res!173024) (not e!197775))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16229 (_ BitVec 32)) SeekEntryResult!2829)

(assert (=> b!318287 (= res!173024 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2829 i!1240)))))

(declare-fun b!318288 () Bool)

(assert (=> b!318288 (= e!197778 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000))))))

(assert (=> b!318288 e!197777))

(declare-fun res!173016 () Bool)

(assert (=> b!318288 (=> (not res!173016) (not e!197777))))

(assert (=> b!318288 (= res!173016 (= lt!155328 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155329 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318288 (= lt!155329 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!31860 res!173021) b!318285))

(assert (= (and b!318285 res!173020) b!318282))

(assert (= (and b!318282 res!173022) b!318283))

(assert (= (and b!318283 res!173018) b!318287))

(assert (= (and b!318287 res!173024) b!318284))

(assert (= (and b!318284 res!173019) b!318279))

(assert (= (and b!318279 res!173025) b!318286))

(assert (= (and b!318286 res!173023) b!318281))

(assert (= (and b!318281 res!173017) b!318288))

(assert (= (and b!318288 res!173016) b!318280))

(declare-fun m!327025 () Bool)

(assert (=> b!318280 m!327025))

(declare-fun m!327027 () Bool)

(assert (=> b!318280 m!327027))

(declare-fun m!327029 () Bool)

(assert (=> b!318280 m!327029))

(declare-fun m!327031 () Bool)

(assert (=> b!318279 m!327031))

(assert (=> b!318279 m!327031))

(declare-fun m!327033 () Bool)

(assert (=> b!318279 m!327033))

(declare-fun m!327035 () Bool)

(assert (=> b!318284 m!327035))

(declare-fun m!327037 () Bool)

(assert (=> b!318287 m!327037))

(declare-fun m!327039 () Bool)

(assert (=> b!318288 m!327039))

(declare-fun m!327041 () Bool)

(assert (=> b!318288 m!327041))

(declare-fun m!327043 () Bool)

(assert (=> b!318281 m!327043))

(declare-fun m!327045 () Bool)

(assert (=> b!318281 m!327045))

(declare-fun m!327047 () Bool)

(assert (=> b!318282 m!327047))

(declare-fun m!327049 () Bool)

(assert (=> b!318286 m!327049))

(declare-fun m!327051 () Bool)

(assert (=> b!318283 m!327051))

(declare-fun m!327053 () Bool)

(assert (=> start!31860 m!327053))

(declare-fun m!327055 () Bool)

(assert (=> start!31860 m!327055))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32730 () Bool)

(assert start!32730)

(declare-fun res!180120 () Bool)

(declare-fun e!201124 () Bool)

(assert (=> start!32730 (=> (not res!180120) (not e!201124))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32730 (= res!180120 (validMask!0 mask!3777))))

(assert (=> start!32730 e!201124))

(declare-datatypes ((array!16763 0))(
  ( (array!16764 (arr!7933 (Array (_ BitVec 32) (_ BitVec 64))) (size!8285 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16763)

(declare-fun array_inv!5887 (array!16763) Bool)

(assert (=> start!32730 (array_inv!5887 a!3305)))

(assert (=> start!32730 true))

(declare-fun b!326928 () Bool)

(declare-fun e!201122 () Bool)

(assert (=> b!326928 (= e!201124 e!201122)))

(declare-fun res!180117 () Bool)

(assert (=> b!326928 (=> (not res!180117) (not e!201122))))

(declare-datatypes ((SeekEntryResult!3075 0))(
  ( (MissingZero!3075 (index!14476 (_ BitVec 32))) (Found!3075 (index!14477 (_ BitVec 32))) (Intermediate!3075 (undefined!3887 Bool) (index!14478 (_ BitVec 32)) (x!32684 (_ BitVec 32))) (Undefined!3075) (MissingVacant!3075 (index!14479 (_ BitVec 32))) )
))
(declare-fun lt!157423 () SeekEntryResult!3075)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16763 (_ BitVec 32)) SeekEntryResult!3075)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326928 (= res!180117 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157423))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!326928 (= lt!157423 (Intermediate!3075 false resIndex!58 resX!58))))

(declare-fun b!326929 () Bool)

(declare-fun res!180119 () Bool)

(assert (=> b!326929 (=> (not res!180119) (not e!201122))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!326929 (= res!180119 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157423))))

(declare-fun b!326930 () Bool)

(declare-fun res!180125 () Bool)

(assert (=> b!326930 (=> (not res!180125) (not e!201124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16763 (_ BitVec 32)) Bool)

(assert (=> b!326930 (= res!180125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326931 () Bool)

(declare-fun res!180126 () Bool)

(assert (=> b!326931 (=> (not res!180126) (not e!201124))))

(declare-fun arrayContainsKey!0 (array!16763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326931 (= res!180126 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326932 () Bool)

(declare-fun res!180118 () Bool)

(assert (=> b!326932 (=> (not res!180118) (not e!201122))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326932 (= res!180118 (and (= (select (arr!7933 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8285 a!3305))))))

(declare-fun b!326933 () Bool)

(assert (=> b!326933 (= e!201122 false)))

(declare-datatypes ((Unit!10159 0))(
  ( (Unit!10160) )
))
(declare-fun lt!157424 () Unit!10159)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16763 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10159)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326933 (= lt!157424 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326934 () Bool)

(declare-fun res!180123 () Bool)

(assert (=> b!326934 (=> (not res!180123) (not e!201122))))

(assert (=> b!326934 (= res!180123 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7933 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326935 () Bool)

(declare-fun res!180122 () Bool)

(assert (=> b!326935 (=> (not res!180122) (not e!201124))))

(assert (=> b!326935 (= res!180122 (and (= (size!8285 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8285 a!3305))))))

(declare-fun b!326936 () Bool)

(declare-fun res!180121 () Bool)

(assert (=> b!326936 (=> (not res!180121) (not e!201124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326936 (= res!180121 (validKeyInArray!0 k!2497))))

(declare-fun b!326937 () Bool)

(declare-fun res!180124 () Bool)

(assert (=> b!326937 (=> (not res!180124) (not e!201124))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16763 (_ BitVec 32)) SeekEntryResult!3075)

(assert (=> b!326937 (= res!180124 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3075 i!1250)))))

(assert (= (and start!32730 res!180120) b!326935))

(assert (= (and b!326935 res!180122) b!326936))

(assert (= (and b!326936 res!180121) b!326931))

(assert (= (and b!326931 res!180126) b!326937))

(assert (= (and b!326937 res!180124) b!326930))

(assert (= (and b!326930 res!180125) b!326928))

(assert (= (and b!326928 res!180117) b!326932))

(assert (= (and b!326932 res!180118) b!326929))

(assert (= (and b!326929 res!180119) b!326934))

(assert (= (and b!326934 res!180123) b!326933))

(declare-fun m!333427 () Bool)

(assert (=> b!326928 m!333427))

(assert (=> b!326928 m!333427))

(declare-fun m!333429 () Bool)

(assert (=> b!326928 m!333429))

(declare-fun m!333431 () Bool)

(assert (=> b!326930 m!333431))

(declare-fun m!333433 () Bool)

(assert (=> b!326929 m!333433))

(declare-fun m!333435 () Bool)

(assert (=> b!326933 m!333435))

(assert (=> b!326933 m!333435))

(declare-fun m!333437 () Bool)

(assert (=> b!326933 m!333437))

(declare-fun m!333439 () Bool)

(assert (=> b!326937 m!333439))

(declare-fun m!333441 () Bool)

(assert (=> b!326931 m!333441))

(declare-fun m!333443 () Bool)

(assert (=> b!326934 m!333443))

(declare-fun m!333445 () Bool)

(assert (=> start!32730 m!333445))

(declare-fun m!333447 () Bool)

(assert (=> start!32730 m!333447))

(declare-fun m!333449 () Bool)

(assert (=> b!326936 m!333449))

(declare-fun m!333451 () Bool)

(assert (=> b!326932 m!333451))

(push 1)


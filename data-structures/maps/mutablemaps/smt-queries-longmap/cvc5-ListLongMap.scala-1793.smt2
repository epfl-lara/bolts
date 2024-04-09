; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32466 () Bool)

(assert start!32466)

(declare-fun b!324120 () Bool)

(declare-fun res!177616 () Bool)

(declare-fun e!200133 () Bool)

(assert (=> b!324120 (=> (not res!177616) (not e!200133))))

(declare-datatypes ((array!16601 0))(
  ( (array!16602 (arr!7855 (Array (_ BitVec 32) (_ BitVec 64))) (size!8207 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16601)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324120 (= res!177616 (and (= (size!8207 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8207 a!3305))))))

(declare-fun b!324121 () Bool)

(declare-fun res!177614 () Bool)

(assert (=> b!324121 (=> (not res!177614) (not e!200133))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324121 (= res!177614 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324122 () Bool)

(declare-fun e!200132 () Bool)

(assert (=> b!324122 (= e!200133 e!200132)))

(declare-fun res!177613 () Bool)

(assert (=> b!324122 (=> (not res!177613) (not e!200132))))

(declare-datatypes ((SeekEntryResult!2997 0))(
  ( (MissingZero!2997 (index!14164 (_ BitVec 32))) (Found!2997 (index!14165 (_ BitVec 32))) (Intermediate!2997 (undefined!3809 Bool) (index!14166 (_ BitVec 32)) (x!32380 (_ BitVec 32))) (Undefined!2997) (MissingVacant!2997 (index!14167 (_ BitVec 32))) )
))
(declare-fun lt!156740 () SeekEntryResult!2997)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16601 (_ BitVec 32)) SeekEntryResult!2997)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324122 (= res!177613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156740))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324122 (= lt!156740 (Intermediate!2997 false resIndex!58 resX!58))))

(declare-fun b!324123 () Bool)

(declare-fun res!177615 () Bool)

(assert (=> b!324123 (=> (not res!177615) (not e!200133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16601 (_ BitVec 32)) Bool)

(assert (=> b!324123 (= res!177615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324124 () Bool)

(declare-fun res!177612 () Bool)

(assert (=> b!324124 (=> (not res!177612) (not e!200132))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324124 (= res!177612 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156740))))

(declare-fun b!324125 () Bool)

(declare-fun res!177617 () Bool)

(assert (=> b!324125 (=> (not res!177617) (not e!200132))))

(assert (=> b!324125 (= res!177617 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7855 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324126 () Bool)

(declare-fun res!177609 () Bool)

(assert (=> b!324126 (=> (not res!177609) (not e!200133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324126 (= res!177609 (validKeyInArray!0 k!2497))))

(declare-fun res!177611 () Bool)

(assert (=> start!32466 (=> (not res!177611) (not e!200133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32466 (= res!177611 (validMask!0 mask!3777))))

(assert (=> start!32466 e!200133))

(declare-fun array_inv!5809 (array!16601) Bool)

(assert (=> start!32466 (array_inv!5809 a!3305)))

(assert (=> start!32466 true))

(declare-fun b!324127 () Bool)

(assert (=> b!324127 (= e!200132 false)))

(declare-fun lt!156739 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324127 (= lt!156739 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324128 () Bool)

(declare-fun res!177610 () Bool)

(assert (=> b!324128 (=> (not res!177610) (not e!200132))))

(assert (=> b!324128 (= res!177610 (and (= (select (arr!7855 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8207 a!3305))))))

(declare-fun b!324129 () Bool)

(declare-fun res!177618 () Bool)

(assert (=> b!324129 (=> (not res!177618) (not e!200133))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16601 (_ BitVec 32)) SeekEntryResult!2997)

(assert (=> b!324129 (= res!177618 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2997 i!1250)))))

(assert (= (and start!32466 res!177611) b!324120))

(assert (= (and b!324120 res!177616) b!324126))

(assert (= (and b!324126 res!177609) b!324121))

(assert (= (and b!324121 res!177614) b!324129))

(assert (= (and b!324129 res!177618) b!324123))

(assert (= (and b!324123 res!177615) b!324122))

(assert (= (and b!324122 res!177613) b!324128))

(assert (= (and b!324128 res!177610) b!324124))

(assert (= (and b!324124 res!177612) b!324125))

(assert (= (and b!324125 res!177617) b!324127))

(declare-fun m!331231 () Bool)

(assert (=> b!324123 m!331231))

(declare-fun m!331233 () Bool)

(assert (=> b!324126 m!331233))

(declare-fun m!331235 () Bool)

(assert (=> b!324127 m!331235))

(declare-fun m!331237 () Bool)

(assert (=> b!324129 m!331237))

(declare-fun m!331239 () Bool)

(assert (=> b!324125 m!331239))

(declare-fun m!331241 () Bool)

(assert (=> b!324124 m!331241))

(declare-fun m!331243 () Bool)

(assert (=> b!324121 m!331243))

(declare-fun m!331245 () Bool)

(assert (=> b!324128 m!331245))

(declare-fun m!331247 () Bool)

(assert (=> b!324122 m!331247))

(assert (=> b!324122 m!331247))

(declare-fun m!331249 () Bool)

(assert (=> b!324122 m!331249))

(declare-fun m!331251 () Bool)

(assert (=> start!32466 m!331251))

(declare-fun m!331253 () Bool)

(assert (=> start!32466 m!331253))

(push 1)


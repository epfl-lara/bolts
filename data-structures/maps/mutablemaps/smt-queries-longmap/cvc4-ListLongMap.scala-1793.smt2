; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32470 () Bool)

(assert start!32470)

(declare-fun b!324180 () Bool)

(declare-fun res!177670 () Bool)

(declare-fun e!200150 () Bool)

(assert (=> b!324180 (=> (not res!177670) (not e!200150))))

(declare-datatypes ((array!16605 0))(
  ( (array!16606 (arr!7857 (Array (_ BitVec 32) (_ BitVec 64))) (size!8209 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16605)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2999 0))(
  ( (MissingZero!2999 (index!14172 (_ BitVec 32))) (Found!2999 (index!14173 (_ BitVec 32))) (Intermediate!2999 (undefined!3811 Bool) (index!14174 (_ BitVec 32)) (x!32382 (_ BitVec 32))) (Undefined!2999) (MissingVacant!2999 (index!14175 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16605 (_ BitVec 32)) SeekEntryResult!2999)

(assert (=> b!324180 (= res!177670 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2999 i!1250)))))

(declare-fun b!324181 () Bool)

(declare-fun res!177674 () Bool)

(declare-fun e!200152 () Bool)

(assert (=> b!324181 (=> (not res!177674) (not e!200152))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324181 (= res!177674 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7857 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324182 () Bool)

(declare-fun res!177669 () Bool)

(assert (=> b!324182 (=> (not res!177669) (not e!200152))))

(declare-fun lt!156752 () SeekEntryResult!2999)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16605 (_ BitVec 32)) SeekEntryResult!2999)

(assert (=> b!324182 (= res!177669 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156752))))

(declare-fun b!324183 () Bool)

(declare-fun res!177676 () Bool)

(assert (=> b!324183 (=> (not res!177676) (not e!200150))))

(assert (=> b!324183 (= res!177676 (and (= (size!8209 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8209 a!3305))))))

(declare-fun res!177673 () Bool)

(assert (=> start!32470 (=> (not res!177673) (not e!200150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32470 (= res!177673 (validMask!0 mask!3777))))

(assert (=> start!32470 e!200150))

(declare-fun array_inv!5811 (array!16605) Bool)

(assert (=> start!32470 (array_inv!5811 a!3305)))

(assert (=> start!32470 true))

(declare-fun b!324184 () Bool)

(declare-fun res!177672 () Bool)

(assert (=> b!324184 (=> (not res!177672) (not e!200150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16605 (_ BitVec 32)) Bool)

(assert (=> b!324184 (= res!177672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324185 () Bool)

(assert (=> b!324185 (= e!200152 false)))

(declare-fun lt!156751 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324185 (= lt!156751 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324186 () Bool)

(declare-fun res!177677 () Bool)

(assert (=> b!324186 (=> (not res!177677) (not e!200150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324186 (= res!177677 (validKeyInArray!0 k!2497))))

(declare-fun b!324187 () Bool)

(declare-fun res!177678 () Bool)

(assert (=> b!324187 (=> (not res!177678) (not e!200150))))

(declare-fun arrayContainsKey!0 (array!16605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324187 (= res!177678 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324188 () Bool)

(declare-fun res!177671 () Bool)

(assert (=> b!324188 (=> (not res!177671) (not e!200152))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324188 (= res!177671 (and (= (select (arr!7857 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8209 a!3305))))))

(declare-fun b!324189 () Bool)

(assert (=> b!324189 (= e!200150 e!200152)))

(declare-fun res!177675 () Bool)

(assert (=> b!324189 (=> (not res!177675) (not e!200152))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324189 (= res!177675 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156752))))

(assert (=> b!324189 (= lt!156752 (Intermediate!2999 false resIndex!58 resX!58))))

(assert (= (and start!32470 res!177673) b!324183))

(assert (= (and b!324183 res!177676) b!324186))

(assert (= (and b!324186 res!177677) b!324187))

(assert (= (and b!324187 res!177678) b!324180))

(assert (= (and b!324180 res!177670) b!324184))

(assert (= (and b!324184 res!177672) b!324189))

(assert (= (and b!324189 res!177675) b!324188))

(assert (= (and b!324188 res!177671) b!324182))

(assert (= (and b!324182 res!177669) b!324181))

(assert (= (and b!324181 res!177674) b!324185))

(declare-fun m!331279 () Bool)

(assert (=> b!324180 m!331279))

(declare-fun m!331281 () Bool)

(assert (=> b!324186 m!331281))

(declare-fun m!331283 () Bool)

(assert (=> b!324189 m!331283))

(assert (=> b!324189 m!331283))

(declare-fun m!331285 () Bool)

(assert (=> b!324189 m!331285))

(declare-fun m!331287 () Bool)

(assert (=> b!324188 m!331287))

(declare-fun m!331289 () Bool)

(assert (=> b!324184 m!331289))

(declare-fun m!331291 () Bool)

(assert (=> b!324185 m!331291))

(declare-fun m!331293 () Bool)

(assert (=> b!324182 m!331293))

(declare-fun m!331295 () Bool)

(assert (=> b!324181 m!331295))

(declare-fun m!331297 () Bool)

(assert (=> start!32470 m!331297))

(declare-fun m!331299 () Bool)

(assert (=> start!32470 m!331299))

(declare-fun m!331301 () Bool)

(assert (=> b!324187 m!331301))

(push 1)

(assert (not b!324182))

(assert (not b!324180))

(assert (not b!324184))

(assert (not start!32470))

(assert (not b!324189))

(assert (not b!324187))

(assert (not b!324185))


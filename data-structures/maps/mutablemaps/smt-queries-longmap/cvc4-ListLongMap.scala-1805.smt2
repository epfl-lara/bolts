; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32542 () Bool)

(assert start!32542)

(declare-fun b!325261 () Bool)

(declare-fun res!178756 () Bool)

(declare-fun e!200476 () Bool)

(assert (=> b!325261 (=> (not res!178756) (not e!200476))))

(declare-datatypes ((array!16677 0))(
  ( (array!16678 (arr!7893 (Array (_ BitVec 32) (_ BitVec 64))) (size!8245 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16677)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3035 0))(
  ( (MissingZero!3035 (index!14316 (_ BitVec 32))) (Found!3035 (index!14317 (_ BitVec 32))) (Intermediate!3035 (undefined!3847 Bool) (index!14318 (_ BitVec 32)) (x!32514 (_ BitVec 32))) (Undefined!3035) (MissingVacant!3035 (index!14319 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16677 (_ BitVec 32)) SeekEntryResult!3035)

(assert (=> b!325261 (= res!178756 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3035 i!1250)))))

(declare-fun b!325262 () Bool)

(declare-fun res!178751 () Bool)

(assert (=> b!325262 (=> (not res!178751) (not e!200476))))

(assert (=> b!325262 (= res!178751 (and (= (size!8245 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8245 a!3305))))))

(declare-fun b!325263 () Bool)

(declare-fun res!178753 () Bool)

(declare-fun e!200475 () Bool)

(assert (=> b!325263 (=> (not res!178753) (not e!200475))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325263 (= res!178753 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7893 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325264 () Bool)

(declare-fun res!178749 () Bool)

(assert (=> b!325264 (=> (not res!178749) (not e!200475))))

(declare-fun lt!156968 () SeekEntryResult!3035)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16677 (_ BitVec 32)) SeekEntryResult!3035)

(assert (=> b!325264 (= res!178749 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156968))))

(declare-fun b!325265 () Bool)

(declare-fun res!178758 () Bool)

(assert (=> b!325265 (=> (not res!178758) (not e!200476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16677 (_ BitVec 32)) Bool)

(assert (=> b!325265 (= res!178758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325266 () Bool)

(declare-fun res!178757 () Bool)

(assert (=> b!325266 (=> (not res!178757) (not e!200476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325266 (= res!178757 (validKeyInArray!0 k!2497))))

(declare-fun b!325267 () Bool)

(assert (=> b!325267 (= e!200475 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1490) resX!58) (bvslt (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000)))))

(declare-fun lt!156967 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325267 (= lt!156967 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun res!178754 () Bool)

(assert (=> start!32542 (=> (not res!178754) (not e!200476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32542 (= res!178754 (validMask!0 mask!3777))))

(assert (=> start!32542 e!200476))

(declare-fun array_inv!5847 (array!16677) Bool)

(assert (=> start!32542 (array_inv!5847 a!3305)))

(assert (=> start!32542 true))

(declare-fun b!325260 () Bool)

(declare-fun res!178755 () Bool)

(assert (=> b!325260 (=> (not res!178755) (not e!200476))))

(declare-fun arrayContainsKey!0 (array!16677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325260 (= res!178755 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325268 () Bool)

(assert (=> b!325268 (= e!200476 e!200475)))

(declare-fun res!178750 () Bool)

(assert (=> b!325268 (=> (not res!178750) (not e!200475))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325268 (= res!178750 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156968))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!325268 (= lt!156968 (Intermediate!3035 false resIndex!58 resX!58))))

(declare-fun b!325269 () Bool)

(declare-fun res!178752 () Bool)

(assert (=> b!325269 (=> (not res!178752) (not e!200475))))

(assert (=> b!325269 (= res!178752 (and (= (select (arr!7893 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8245 a!3305))))))

(assert (= (and start!32542 res!178754) b!325262))

(assert (= (and b!325262 res!178751) b!325266))

(assert (= (and b!325266 res!178757) b!325260))

(assert (= (and b!325260 res!178755) b!325261))

(assert (= (and b!325261 res!178756) b!325265))

(assert (= (and b!325265 res!178758) b!325268))

(assert (= (and b!325268 res!178750) b!325269))

(assert (= (and b!325269 res!178752) b!325264))

(assert (= (and b!325264 res!178749) b!325263))

(assert (= (and b!325263 res!178753) b!325267))

(declare-fun m!332143 () Bool)

(assert (=> b!325268 m!332143))

(assert (=> b!325268 m!332143))

(declare-fun m!332145 () Bool)

(assert (=> b!325268 m!332145))

(declare-fun m!332147 () Bool)

(assert (=> b!325267 m!332147))

(declare-fun m!332149 () Bool)

(assert (=> b!325269 m!332149))

(declare-fun m!332151 () Bool)

(assert (=> b!325261 m!332151))

(declare-fun m!332153 () Bool)

(assert (=> b!325263 m!332153))

(declare-fun m!332155 () Bool)

(assert (=> b!325265 m!332155))

(declare-fun m!332157 () Bool)

(assert (=> start!32542 m!332157))

(declare-fun m!332159 () Bool)

(assert (=> start!32542 m!332159))

(declare-fun m!332161 () Bool)

(assert (=> b!325266 m!332161))

(declare-fun m!332163 () Bool)

(assert (=> b!325260 m!332163))

(declare-fun m!332165 () Bool)

(assert (=> b!325264 m!332165))

(push 1)

(assert (not b!325264))

(assert (not b!325260))

(assert (not b!325268))

(assert (not b!325265))

(assert (not b!325261))

(assert (not start!32542))

(assert (not b!325267))

(assert (not b!325266))

(check-sat)

(pop 1)

(push 1)

(check-sat)


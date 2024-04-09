; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32540 () Bool)

(assert start!32540)

(declare-fun b!325230 () Bool)

(declare-fun res!178719 () Bool)

(declare-fun e!200466 () Bool)

(assert (=> b!325230 (=> (not res!178719) (not e!200466))))

(declare-datatypes ((array!16675 0))(
  ( (array!16676 (arr!7892 (Array (_ BitVec 32) (_ BitVec 64))) (size!8244 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16675)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16675 (_ BitVec 32)) Bool)

(assert (=> b!325230 (= res!178719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325231 () Bool)

(declare-fun res!178720 () Bool)

(declare-fun e!200467 () Bool)

(assert (=> b!325231 (=> (not res!178720) (not e!200467))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325231 (= res!178720 (and (= (select (arr!7892 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8244 a!3305))))))

(declare-fun b!325232 () Bool)

(declare-fun res!178724 () Bool)

(assert (=> b!325232 (=> (not res!178724) (not e!200466))))

(assert (=> b!325232 (= res!178724 (and (= (size!8244 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8244 a!3305))))))

(declare-fun b!325233 () Bool)

(assert (=> b!325233 (= e!200467 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1490) resX!58) (bvslt (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000)))))

(declare-fun lt!156961 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325233 (= lt!156961 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!325235 () Bool)

(declare-fun res!178725 () Bool)

(assert (=> b!325235 (=> (not res!178725) (not e!200466))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3034 0))(
  ( (MissingZero!3034 (index!14312 (_ BitVec 32))) (Found!3034 (index!14313 (_ BitVec 32))) (Intermediate!3034 (undefined!3846 Bool) (index!14314 (_ BitVec 32)) (x!32513 (_ BitVec 32))) (Undefined!3034) (MissingVacant!3034 (index!14315 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16675 (_ BitVec 32)) SeekEntryResult!3034)

(assert (=> b!325235 (= res!178725 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3034 i!1250)))))

(declare-fun b!325236 () Bool)

(declare-fun res!178727 () Bool)

(assert (=> b!325236 (=> (not res!178727) (not e!200466))))

(declare-fun arrayContainsKey!0 (array!16675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325236 (= res!178727 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325237 () Bool)

(declare-fun res!178721 () Bool)

(assert (=> b!325237 (=> (not res!178721) (not e!200467))))

(assert (=> b!325237 (= res!178721 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7892 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325238 () Bool)

(declare-fun res!178728 () Bool)

(assert (=> b!325238 (=> (not res!178728) (not e!200467))))

(declare-fun lt!156962 () SeekEntryResult!3034)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16675 (_ BitVec 32)) SeekEntryResult!3034)

(assert (=> b!325238 (= res!178728 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156962))))

(declare-fun b!325239 () Bool)

(assert (=> b!325239 (= e!200466 e!200467)))

(declare-fun res!178726 () Bool)

(assert (=> b!325239 (=> (not res!178726) (not e!200467))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325239 (= res!178726 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156962))))

(assert (=> b!325239 (= lt!156962 (Intermediate!3034 false resIndex!58 resX!58))))

(declare-fun res!178723 () Bool)

(assert (=> start!32540 (=> (not res!178723) (not e!200466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32540 (= res!178723 (validMask!0 mask!3777))))

(assert (=> start!32540 e!200466))

(declare-fun array_inv!5846 (array!16675) Bool)

(assert (=> start!32540 (array_inv!5846 a!3305)))

(assert (=> start!32540 true))

(declare-fun b!325234 () Bool)

(declare-fun res!178722 () Bool)

(assert (=> b!325234 (=> (not res!178722) (not e!200466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325234 (= res!178722 (validKeyInArray!0 k0!2497))))

(assert (= (and start!32540 res!178723) b!325232))

(assert (= (and b!325232 res!178724) b!325234))

(assert (= (and b!325234 res!178722) b!325236))

(assert (= (and b!325236 res!178727) b!325235))

(assert (= (and b!325235 res!178725) b!325230))

(assert (= (and b!325230 res!178719) b!325239))

(assert (= (and b!325239 res!178726) b!325231))

(assert (= (and b!325231 res!178720) b!325238))

(assert (= (and b!325238 res!178728) b!325237))

(assert (= (and b!325237 res!178721) b!325233))

(declare-fun m!332119 () Bool)

(assert (=> b!325230 m!332119))

(declare-fun m!332121 () Bool)

(assert (=> b!325233 m!332121))

(declare-fun m!332123 () Bool)

(assert (=> b!325237 m!332123))

(declare-fun m!332125 () Bool)

(assert (=> b!325235 m!332125))

(declare-fun m!332127 () Bool)

(assert (=> b!325231 m!332127))

(declare-fun m!332129 () Bool)

(assert (=> start!32540 m!332129))

(declare-fun m!332131 () Bool)

(assert (=> start!32540 m!332131))

(declare-fun m!332133 () Bool)

(assert (=> b!325236 m!332133))

(declare-fun m!332135 () Bool)

(assert (=> b!325238 m!332135))

(declare-fun m!332137 () Bool)

(assert (=> b!325234 m!332137))

(declare-fun m!332139 () Bool)

(assert (=> b!325239 m!332139))

(assert (=> b!325239 m!332139))

(declare-fun m!332141 () Bool)

(assert (=> b!325239 m!332141))

(check-sat (not b!325235) (not b!325230) (not b!325239) (not start!32540) (not b!325238) (not b!325236) (not b!325234) (not b!325233))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32150 () Bool)

(assert start!32150)

(declare-fun res!174538 () Bool)

(declare-fun e!198673 () Bool)

(assert (=> start!32150 (=> (not res!174538) (not e!198673))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32150 (= res!174538 (validMask!0 mask!3777))))

(assert (=> start!32150 e!198673))

(assert (=> start!32150 true))

(declare-datatypes ((array!16381 0))(
  ( (array!16382 (arr!7748 (Array (_ BitVec 32) (_ BitVec 64))) (size!8100 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16381)

(declare-fun array_inv!5702 (array!16381) Bool)

(assert (=> start!32150 (array_inv!5702 a!3305)))

(declare-fun b!320134 () Bool)

(declare-fun res!174537 () Bool)

(assert (=> b!320134 (=> (not res!174537) (not e!198673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16381 (_ BitVec 32)) Bool)

(assert (=> b!320134 (= res!174537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320135 () Bool)

(declare-fun res!174536 () Bool)

(assert (=> b!320135 (=> (not res!174536) (not e!198673))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2890 0))(
  ( (MissingZero!2890 (index!13736 (_ BitVec 32))) (Found!2890 (index!13737 (_ BitVec 32))) (Intermediate!2890 (undefined!3702 Bool) (index!13738 (_ BitVec 32)) (x!31970 (_ BitVec 32))) (Undefined!2890) (MissingVacant!2890 (index!13739 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16381 (_ BitVec 32)) SeekEntryResult!2890)

(assert (=> b!320135 (= res!174536 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2890 i!1250)))))

(declare-fun b!320136 () Bool)

(declare-fun res!174540 () Bool)

(assert (=> b!320136 (=> (not res!174540) (not e!198673))))

(declare-fun arrayContainsKey!0 (array!16381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320136 (= res!174540 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320137 () Bool)

(declare-fun res!174539 () Bool)

(assert (=> b!320137 (=> (not res!174539) (not e!198673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320137 (= res!174539 (validKeyInArray!0 k0!2497))))

(declare-fun b!320138 () Bool)

(declare-fun res!174535 () Bool)

(assert (=> b!320138 (=> (not res!174535) (not e!198673))))

(assert (=> b!320138 (= res!174535 (and (= (size!8100 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8100 a!3305))))))

(declare-fun b!320139 () Bool)

(assert (=> b!320139 (= e!198673 false)))

(declare-fun lt!155969 () SeekEntryResult!2890)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16381 (_ BitVec 32)) SeekEntryResult!2890)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320139 (= lt!155969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (= (and start!32150 res!174538) b!320138))

(assert (= (and b!320138 res!174535) b!320137))

(assert (= (and b!320137 res!174539) b!320136))

(assert (= (and b!320136 res!174540) b!320135))

(assert (= (and b!320135 res!174536) b!320134))

(assert (= (and b!320134 res!174537) b!320139))

(declare-fun m!328571 () Bool)

(assert (=> b!320135 m!328571))

(declare-fun m!328573 () Bool)

(assert (=> b!320137 m!328573))

(declare-fun m!328575 () Bool)

(assert (=> b!320139 m!328575))

(assert (=> b!320139 m!328575))

(declare-fun m!328577 () Bool)

(assert (=> b!320139 m!328577))

(declare-fun m!328579 () Bool)

(assert (=> b!320134 m!328579))

(declare-fun m!328581 () Bool)

(assert (=> start!32150 m!328581))

(declare-fun m!328583 () Bool)

(assert (=> start!32150 m!328583))

(declare-fun m!328585 () Bool)

(assert (=> b!320136 m!328585))

(check-sat (not start!32150) (not b!320137) (not b!320139) (not b!320135) (not b!320134) (not b!320136))

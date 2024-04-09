; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32534 () Bool)

(assert start!32534)

(declare-fun b!325140 () Bool)

(declare-fun e!200439 () Bool)

(declare-fun e!200438 () Bool)

(assert (=> b!325140 (= e!200439 e!200438)))

(declare-fun res!178636 () Bool)

(assert (=> b!325140 (=> (not res!178636) (not e!200438))))

(declare-datatypes ((array!16669 0))(
  ( (array!16670 (arr!7889 (Array (_ BitVec 32) (_ BitVec 64))) (size!8241 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16669)

(declare-datatypes ((SeekEntryResult!3031 0))(
  ( (MissingZero!3031 (index!14300 (_ BitVec 32))) (Found!3031 (index!14301 (_ BitVec 32))) (Intermediate!3031 (undefined!3843 Bool) (index!14302 (_ BitVec 32)) (x!32502 (_ BitVec 32))) (Undefined!3031) (MissingVacant!3031 (index!14303 (_ BitVec 32))) )
))
(declare-fun lt!156944 () SeekEntryResult!3031)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16669 (_ BitVec 32)) SeekEntryResult!3031)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325140 (= res!178636 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156944))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!325140 (= lt!156944 (Intermediate!3031 false resIndex!58 resX!58))))

(declare-fun b!325141 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325141 (= e!200438 (bvsgt (bvadd #b00000000000000000000000000000001 x!1490) resX!58))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun lt!156943 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325141 (= lt!156943 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!325142 () Bool)

(declare-fun res!178634 () Bool)

(assert (=> b!325142 (=> (not res!178634) (not e!200439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325142 (= res!178634 (validKeyInArray!0 k0!2497))))

(declare-fun res!178638 () Bool)

(assert (=> start!32534 (=> (not res!178638) (not e!200439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32534 (= res!178638 (validMask!0 mask!3777))))

(assert (=> start!32534 e!200439))

(declare-fun array_inv!5843 (array!16669) Bool)

(assert (=> start!32534 (array_inv!5843 a!3305)))

(assert (=> start!32534 true))

(declare-fun b!325143 () Bool)

(declare-fun res!178635 () Bool)

(assert (=> b!325143 (=> (not res!178635) (not e!200438))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!325143 (= res!178635 (and (= (select (arr!7889 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8241 a!3305))))))

(declare-fun b!325144 () Bool)

(declare-fun res!178632 () Bool)

(assert (=> b!325144 (=> (not res!178632) (not e!200439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16669 (_ BitVec 32)) Bool)

(assert (=> b!325144 (= res!178632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325145 () Bool)

(declare-fun res!178629 () Bool)

(assert (=> b!325145 (=> (not res!178629) (not e!200438))))

(assert (=> b!325145 (= res!178629 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156944))))

(declare-fun b!325146 () Bool)

(declare-fun res!178630 () Bool)

(assert (=> b!325146 (=> (not res!178630) (not e!200439))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16669 (_ BitVec 32)) SeekEntryResult!3031)

(assert (=> b!325146 (= res!178630 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3031 i!1250)))))

(declare-fun b!325147 () Bool)

(declare-fun res!178633 () Bool)

(assert (=> b!325147 (=> (not res!178633) (not e!200439))))

(declare-fun arrayContainsKey!0 (array!16669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325147 (= res!178633 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325148 () Bool)

(declare-fun res!178637 () Bool)

(assert (=> b!325148 (=> (not res!178637) (not e!200438))))

(assert (=> b!325148 (= res!178637 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7889 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325149 () Bool)

(declare-fun res!178631 () Bool)

(assert (=> b!325149 (=> (not res!178631) (not e!200439))))

(assert (=> b!325149 (= res!178631 (and (= (size!8241 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8241 a!3305))))))

(assert (= (and start!32534 res!178638) b!325149))

(assert (= (and b!325149 res!178631) b!325142))

(assert (= (and b!325142 res!178634) b!325147))

(assert (= (and b!325147 res!178633) b!325146))

(assert (= (and b!325146 res!178630) b!325144))

(assert (= (and b!325144 res!178632) b!325140))

(assert (= (and b!325140 res!178636) b!325143))

(assert (= (and b!325143 res!178635) b!325145))

(assert (= (and b!325145 res!178629) b!325148))

(assert (= (and b!325148 res!178637) b!325141))

(declare-fun m!332047 () Bool)

(assert (=> b!325142 m!332047))

(declare-fun m!332049 () Bool)

(assert (=> b!325143 m!332049))

(declare-fun m!332051 () Bool)

(assert (=> b!325147 m!332051))

(declare-fun m!332053 () Bool)

(assert (=> b!325140 m!332053))

(assert (=> b!325140 m!332053))

(declare-fun m!332055 () Bool)

(assert (=> b!325140 m!332055))

(declare-fun m!332057 () Bool)

(assert (=> b!325144 m!332057))

(declare-fun m!332059 () Bool)

(assert (=> b!325141 m!332059))

(declare-fun m!332061 () Bool)

(assert (=> b!325148 m!332061))

(declare-fun m!332063 () Bool)

(assert (=> b!325145 m!332063))

(declare-fun m!332065 () Bool)

(assert (=> start!32534 m!332065))

(declare-fun m!332067 () Bool)

(assert (=> start!32534 m!332067))

(declare-fun m!332069 () Bool)

(assert (=> b!325146 m!332069))

(check-sat (not b!325145) (not start!32534) (not b!325140) (not b!325147) (not b!325144) (not b!325141) (not b!325142) (not b!325146))
(check-sat)

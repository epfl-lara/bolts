; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32506 () Bool)

(assert start!32506)

(declare-fun b!324720 () Bool)

(declare-fun res!178210 () Bool)

(declare-fun e!200313 () Bool)

(assert (=> b!324720 (=> (not res!178210) (not e!200313))))

(declare-datatypes ((array!16641 0))(
  ( (array!16642 (arr!7875 (Array (_ BitVec 32) (_ BitVec 64))) (size!8227 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16641)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324720 (= res!178210 (and (= (size!8227 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8227 a!3305))))))

(declare-fun b!324721 () Bool)

(declare-fun res!178216 () Bool)

(declare-fun e!200314 () Bool)

(assert (=> b!324721 (=> (not res!178216) (not e!200314))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3017 0))(
  ( (MissingZero!3017 (index!14244 (_ BitVec 32))) (Found!3017 (index!14245 (_ BitVec 32))) (Intermediate!3017 (undefined!3829 Bool) (index!14246 (_ BitVec 32)) (x!32448 (_ BitVec 32))) (Undefined!3017) (MissingVacant!3017 (index!14247 (_ BitVec 32))) )
))
(declare-fun lt!156859 () SeekEntryResult!3017)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16641 (_ BitVec 32)) SeekEntryResult!3017)

(assert (=> b!324721 (= res!178216 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156859))))

(declare-fun b!324722 () Bool)

(declare-fun res!178209 () Bool)

(assert (=> b!324722 (=> (not res!178209) (not e!200313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16641 (_ BitVec 32)) Bool)

(assert (=> b!324722 (= res!178209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324723 () Bool)

(declare-fun res!178218 () Bool)

(assert (=> b!324723 (=> (not res!178218) (not e!200314))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324723 (= res!178218 (and (= (select (arr!7875 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8227 a!3305))))))

(declare-fun b!324725 () Bool)

(assert (=> b!324725 (= e!200314 false)))

(declare-fun lt!156860 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324725 (= lt!156860 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324726 () Bool)

(declare-fun res!178215 () Bool)

(assert (=> b!324726 (=> (not res!178215) (not e!200313))))

(declare-fun arrayContainsKey!0 (array!16641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324726 (= res!178215 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324727 () Bool)

(declare-fun res!178212 () Bool)

(assert (=> b!324727 (=> (not res!178212) (not e!200314))))

(assert (=> b!324727 (= res!178212 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7875 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun res!178217 () Bool)

(assert (=> start!32506 (=> (not res!178217) (not e!200313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32506 (= res!178217 (validMask!0 mask!3777))))

(assert (=> start!32506 e!200313))

(declare-fun array_inv!5829 (array!16641) Bool)

(assert (=> start!32506 (array_inv!5829 a!3305)))

(assert (=> start!32506 true))

(declare-fun b!324724 () Bool)

(declare-fun res!178214 () Bool)

(assert (=> b!324724 (=> (not res!178214) (not e!200313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324724 (= res!178214 (validKeyInArray!0 k!2497))))

(declare-fun b!324728 () Bool)

(assert (=> b!324728 (= e!200313 e!200314)))

(declare-fun res!178213 () Bool)

(assert (=> b!324728 (=> (not res!178213) (not e!200314))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324728 (= res!178213 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156859))))

(assert (=> b!324728 (= lt!156859 (Intermediate!3017 false resIndex!58 resX!58))))

(declare-fun b!324729 () Bool)

(declare-fun res!178211 () Bool)

(assert (=> b!324729 (=> (not res!178211) (not e!200313))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16641 (_ BitVec 32)) SeekEntryResult!3017)

(assert (=> b!324729 (= res!178211 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3017 i!1250)))))

(assert (= (and start!32506 res!178217) b!324720))

(assert (= (and b!324720 res!178210) b!324724))

(assert (= (and b!324724 res!178214) b!324726))

(assert (= (and b!324726 res!178215) b!324729))

(assert (= (and b!324729 res!178211) b!324722))

(assert (= (and b!324722 res!178209) b!324728))

(assert (= (and b!324728 res!178213) b!324723))

(assert (= (and b!324723 res!178218) b!324721))

(assert (= (and b!324721 res!178216) b!324727))

(assert (= (and b!324727 res!178212) b!324725))

(declare-fun m!331711 () Bool)

(assert (=> b!324727 m!331711))

(declare-fun m!331713 () Bool)

(assert (=> b!324726 m!331713))

(declare-fun m!331715 () Bool)

(assert (=> b!324722 m!331715))

(declare-fun m!331717 () Bool)

(assert (=> b!324728 m!331717))

(assert (=> b!324728 m!331717))

(declare-fun m!331719 () Bool)

(assert (=> b!324728 m!331719))

(declare-fun m!331721 () Bool)

(assert (=> start!32506 m!331721))

(declare-fun m!331723 () Bool)

(assert (=> start!32506 m!331723))

(declare-fun m!331725 () Bool)

(assert (=> b!324729 m!331725))

(declare-fun m!331727 () Bool)

(assert (=> b!324725 m!331727))

(declare-fun m!331729 () Bool)

(assert (=> b!324724 m!331729))

(declare-fun m!331731 () Bool)

(assert (=> b!324721 m!331731))

(declare-fun m!331733 () Bool)

(assert (=> b!324723 m!331733))

(push 1)

(assert (not b!324721))

(assert (not b!324728))

(assert (not b!324726))

(assert (not b!324725))

(assert (not b!324729))


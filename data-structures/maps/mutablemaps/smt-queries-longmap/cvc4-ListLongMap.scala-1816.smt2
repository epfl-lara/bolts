; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32716 () Bool)

(assert start!32716)

(declare-fun b!326718 () Bool)

(declare-fun res!179916 () Bool)

(declare-fun e!201060 () Bool)

(assert (=> b!326718 (=> (not res!179916) (not e!201060))))

(declare-datatypes ((array!16749 0))(
  ( (array!16750 (arr!7926 (Array (_ BitVec 32) (_ BitVec 64))) (size!8278 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16749)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3068 0))(
  ( (MissingZero!3068 (index!14448 (_ BitVec 32))) (Found!3068 (index!14449 (_ BitVec 32))) (Intermediate!3068 (undefined!3880 Bool) (index!14450 (_ BitVec 32)) (x!32653 (_ BitVec 32))) (Undefined!3068) (MissingVacant!3068 (index!14451 (_ BitVec 32))) )
))
(declare-fun lt!157381 () SeekEntryResult!3068)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16749 (_ BitVec 32)) SeekEntryResult!3068)

(assert (=> b!326718 (= res!179916 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157381))))

(declare-fun res!179914 () Bool)

(declare-fun e!201059 () Bool)

(assert (=> start!32716 (=> (not res!179914) (not e!201059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32716 (= res!179914 (validMask!0 mask!3777))))

(assert (=> start!32716 e!201059))

(declare-fun array_inv!5880 (array!16749) Bool)

(assert (=> start!32716 (array_inv!5880 a!3305)))

(assert (=> start!32716 true))

(declare-fun b!326719 () Bool)

(assert (=> b!326719 (= e!201059 e!201060)))

(declare-fun res!179911 () Bool)

(assert (=> b!326719 (=> (not res!179911) (not e!201060))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326719 (= res!179911 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157381))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!326719 (= lt!157381 (Intermediate!3068 false resIndex!58 resX!58))))

(declare-fun b!326720 () Bool)

(declare-fun res!179915 () Bool)

(assert (=> b!326720 (=> (not res!179915) (not e!201059))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16749 (_ BitVec 32)) SeekEntryResult!3068)

(assert (=> b!326720 (= res!179915 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3068 i!1250)))))

(declare-fun b!326721 () Bool)

(declare-fun res!179912 () Bool)

(assert (=> b!326721 (=> (not res!179912) (not e!201059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16749 (_ BitVec 32)) Bool)

(assert (=> b!326721 (= res!179912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326722 () Bool)

(declare-fun res!179910 () Bool)

(assert (=> b!326722 (=> (not res!179910) (not e!201059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326722 (= res!179910 (validKeyInArray!0 k!2497))))

(declare-fun b!326723 () Bool)

(declare-fun res!179913 () Bool)

(assert (=> b!326723 (=> (not res!179913) (not e!201060))))

(assert (=> b!326723 (= res!179913 (and (= (select (arr!7926 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8278 a!3305))))))

(declare-fun b!326724 () Bool)

(declare-fun res!179909 () Bool)

(assert (=> b!326724 (=> (not res!179909) (not e!201059))))

(assert (=> b!326724 (= res!179909 (and (= (size!8278 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8278 a!3305))))))

(declare-fun b!326725 () Bool)

(declare-fun res!179907 () Bool)

(assert (=> b!326725 (=> (not res!179907) (not e!201059))))

(declare-fun arrayContainsKey!0 (array!16749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326725 (= res!179907 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326726 () Bool)

(assert (=> b!326726 (= e!201060 false)))

(declare-datatypes ((Unit!10145 0))(
  ( (Unit!10146) )
))
(declare-fun lt!157382 () Unit!10145)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16749 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10145)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326726 (= lt!157382 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326727 () Bool)

(declare-fun res!179908 () Bool)

(assert (=> b!326727 (=> (not res!179908) (not e!201060))))

(assert (=> b!326727 (= res!179908 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7926 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(assert (= (and start!32716 res!179914) b!326724))

(assert (= (and b!326724 res!179909) b!326722))

(assert (= (and b!326722 res!179910) b!326725))

(assert (= (and b!326725 res!179907) b!326720))

(assert (= (and b!326720 res!179915) b!326721))

(assert (= (and b!326721 res!179912) b!326719))

(assert (= (and b!326719 res!179911) b!326723))

(assert (= (and b!326723 res!179913) b!326718))

(assert (= (and b!326718 res!179916) b!326727))

(assert (= (and b!326727 res!179908) b!326726))

(declare-fun m!333245 () Bool)

(assert (=> b!326725 m!333245))

(declare-fun m!333247 () Bool)

(assert (=> b!326722 m!333247))

(declare-fun m!333249 () Bool)

(assert (=> b!326723 m!333249))

(declare-fun m!333251 () Bool)

(assert (=> start!32716 m!333251))

(declare-fun m!333253 () Bool)

(assert (=> start!32716 m!333253))

(declare-fun m!333255 () Bool)

(assert (=> b!326719 m!333255))

(assert (=> b!326719 m!333255))

(declare-fun m!333257 () Bool)

(assert (=> b!326719 m!333257))

(declare-fun m!333259 () Bool)

(assert (=> b!326718 m!333259))

(declare-fun m!333261 () Bool)

(assert (=> b!326727 m!333261))

(declare-fun m!333263 () Bool)

(assert (=> b!326726 m!333263))

(assert (=> b!326726 m!333263))

(declare-fun m!333265 () Bool)

(assert (=> b!326726 m!333265))

(declare-fun m!333267 () Bool)

(assert (=> b!326721 m!333267))

(declare-fun m!333269 () Bool)

(assert (=> b!326720 m!333269))

(push 1)

(assert (not b!326726))

(assert (not b!326719))

(assert (not b!326720))

(assert (not b!326725))

(assert (not b!326722))


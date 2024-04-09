; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32712 () Bool)

(assert start!32712)

(declare-fun b!326658 () Bool)

(declare-fun e!201042 () Bool)

(assert (=> b!326658 (= e!201042 false)))

(declare-datatypes ((array!16745 0))(
  ( (array!16746 (arr!7924 (Array (_ BitVec 32) (_ BitVec 64))) (size!8276 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16745)

(declare-datatypes ((Unit!10141 0))(
  ( (Unit!10142) )
))
(declare-fun lt!157369 () Unit!10141)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16745 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10141)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326658 (= lt!157369 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326659 () Bool)

(declare-fun e!201043 () Bool)

(assert (=> b!326659 (= e!201043 e!201042)))

(declare-fun res!179852 () Bool)

(assert (=> b!326659 (=> (not res!179852) (not e!201042))))

(declare-datatypes ((SeekEntryResult!3066 0))(
  ( (MissingZero!3066 (index!14440 (_ BitVec 32))) (Found!3066 (index!14441 (_ BitVec 32))) (Intermediate!3066 (undefined!3878 Bool) (index!14442 (_ BitVec 32)) (x!32651 (_ BitVec 32))) (Undefined!3066) (MissingVacant!3066 (index!14443 (_ BitVec 32))) )
))
(declare-fun lt!157370 () SeekEntryResult!3066)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16745 (_ BitVec 32)) SeekEntryResult!3066)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326659 (= res!179852 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157370))))

(assert (=> b!326659 (= lt!157370 (Intermediate!3066 false resIndex!58 resX!58))))

(declare-fun b!326660 () Bool)

(declare-fun res!179847 () Bool)

(assert (=> b!326660 (=> (not res!179847) (not e!201043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16745 (_ BitVec 32)) Bool)

(assert (=> b!326660 (= res!179847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326661 () Bool)

(declare-fun res!179856 () Bool)

(assert (=> b!326661 (=> (not res!179856) (not e!201043))))

(assert (=> b!326661 (= res!179856 (and (= (size!8276 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8276 a!3305))))))

(declare-fun b!326662 () Bool)

(declare-fun res!179855 () Bool)

(assert (=> b!326662 (=> (not res!179855) (not e!201042))))

(assert (=> b!326662 (= res!179855 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157370))))

(declare-fun b!326663 () Bool)

(declare-fun res!179850 () Bool)

(assert (=> b!326663 (=> (not res!179850) (not e!201043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326663 (= res!179850 (validKeyInArray!0 k!2497))))

(declare-fun b!326664 () Bool)

(declare-fun res!179848 () Bool)

(assert (=> b!326664 (=> (not res!179848) (not e!201042))))

(assert (=> b!326664 (= res!179848 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7924 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326666 () Bool)

(declare-fun res!179854 () Bool)

(assert (=> b!326666 (=> (not res!179854) (not e!201042))))

(assert (=> b!326666 (= res!179854 (and (= (select (arr!7924 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8276 a!3305))))))

(declare-fun b!326667 () Bool)

(declare-fun res!179851 () Bool)

(assert (=> b!326667 (=> (not res!179851) (not e!201043))))

(declare-fun arrayContainsKey!0 (array!16745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326667 (= res!179851 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!179853 () Bool)

(assert (=> start!32712 (=> (not res!179853) (not e!201043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32712 (= res!179853 (validMask!0 mask!3777))))

(assert (=> start!32712 e!201043))

(declare-fun array_inv!5878 (array!16745) Bool)

(assert (=> start!32712 (array_inv!5878 a!3305)))

(assert (=> start!32712 true))

(declare-fun b!326665 () Bool)

(declare-fun res!179849 () Bool)

(assert (=> b!326665 (=> (not res!179849) (not e!201043))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16745 (_ BitVec 32)) SeekEntryResult!3066)

(assert (=> b!326665 (= res!179849 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3066 i!1250)))))

(assert (= (and start!32712 res!179853) b!326661))

(assert (= (and b!326661 res!179856) b!326663))

(assert (= (and b!326663 res!179850) b!326667))

(assert (= (and b!326667 res!179851) b!326665))

(assert (= (and b!326665 res!179849) b!326660))

(assert (= (and b!326660 res!179847) b!326659))

(assert (= (and b!326659 res!179852) b!326666))

(assert (= (and b!326666 res!179854) b!326662))

(assert (= (and b!326662 res!179855) b!326664))

(assert (= (and b!326664 res!179848) b!326658))

(declare-fun m!333193 () Bool)

(assert (=> b!326658 m!333193))

(assert (=> b!326658 m!333193))

(declare-fun m!333195 () Bool)

(assert (=> b!326658 m!333195))

(declare-fun m!333197 () Bool)

(assert (=> b!326662 m!333197))

(declare-fun m!333199 () Bool)

(assert (=> b!326660 m!333199))

(declare-fun m!333201 () Bool)

(assert (=> b!326665 m!333201))

(declare-fun m!333203 () Bool)

(assert (=> b!326664 m!333203))

(declare-fun m!333205 () Bool)

(assert (=> b!326659 m!333205))

(assert (=> b!326659 m!333205))

(declare-fun m!333207 () Bool)

(assert (=> b!326659 m!333207))

(declare-fun m!333209 () Bool)

(assert (=> b!326666 m!333209))

(declare-fun m!333211 () Bool)

(assert (=> b!326667 m!333211))

(declare-fun m!333213 () Bool)

(assert (=> b!326663 m!333213))

(declare-fun m!333215 () Bool)

(assert (=> start!32712 m!333215))

(declare-fun m!333217 () Bool)

(assert (=> start!32712 m!333217))

(push 1)


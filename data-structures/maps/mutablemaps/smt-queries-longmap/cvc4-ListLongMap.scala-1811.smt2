; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32686 () Bool)

(assert start!32686)

(declare-fun b!326268 () Bool)

(declare-fun res!179457 () Bool)

(declare-fun e!200926 () Bool)

(assert (=> b!326268 (=> (not res!179457) (not e!200926))))

(declare-datatypes ((array!16719 0))(
  ( (array!16720 (arr!7911 (Array (_ BitVec 32) (_ BitVec 64))) (size!8263 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16719)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(assert (=> b!326268 (= res!179457 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7911 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326269 () Bool)

(declare-fun res!179463 () Bool)

(declare-fun e!200924 () Bool)

(assert (=> b!326269 (=> (not res!179463) (not e!200924))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326269 (= res!179463 (and (= (size!8263 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8263 a!3305))))))

(declare-fun b!326270 () Bool)

(declare-fun res!179458 () Bool)

(assert (=> b!326270 (=> (not res!179458) (not e!200926))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!326270 (= res!179458 (and (= (select (arr!7911 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8263 a!3305))))))

(declare-fun b!326271 () Bool)

(declare-fun res!179459 () Bool)

(assert (=> b!326271 (=> (not res!179459) (not e!200924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326271 (= res!179459 (validKeyInArray!0 k!2497))))

(declare-fun b!326272 () Bool)

(declare-fun res!179464 () Bool)

(assert (=> b!326272 (=> (not res!179464) (not e!200926))))

(declare-datatypes ((SeekEntryResult!3053 0))(
  ( (MissingZero!3053 (index!14388 (_ BitVec 32))) (Found!3053 (index!14389 (_ BitVec 32))) (Intermediate!3053 (undefined!3865 Bool) (index!14390 (_ BitVec 32)) (x!32598 (_ BitVec 32))) (Undefined!3053) (MissingVacant!3053 (index!14391 (_ BitVec 32))) )
))
(declare-fun lt!157292 () SeekEntryResult!3053)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16719 (_ BitVec 32)) SeekEntryResult!3053)

(assert (=> b!326272 (= res!179464 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157292))))

(declare-fun b!326273 () Bool)

(declare-fun res!179462 () Bool)

(assert (=> b!326273 (=> (not res!179462) (not e!200924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16719 (_ BitVec 32)) Bool)

(assert (=> b!326273 (= res!179462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326274 () Bool)

(declare-fun res!179461 () Bool)

(assert (=> b!326274 (=> (not res!179461) (not e!200924))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16719 (_ BitVec 32)) SeekEntryResult!3053)

(assert (=> b!326274 (= res!179461 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3053 i!1250)))))

(declare-fun b!326275 () Bool)

(declare-fun res!179460 () Bool)

(assert (=> b!326275 (=> (not res!179460) (not e!200924))))

(declare-fun arrayContainsKey!0 (array!16719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326275 (= res!179460 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326276 () Bool)

(assert (=> b!326276 (= e!200924 e!200926)))

(declare-fun res!179465 () Bool)

(assert (=> b!326276 (=> (not res!179465) (not e!200926))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326276 (= res!179465 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157292))))

(assert (=> b!326276 (= lt!157292 (Intermediate!3053 false resIndex!58 resX!58))))

(declare-fun res!179466 () Bool)

(assert (=> start!32686 (=> (not res!179466) (not e!200924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32686 (= res!179466 (validMask!0 mask!3777))))

(assert (=> start!32686 e!200924))

(declare-fun array_inv!5865 (array!16719) Bool)

(assert (=> start!32686 (array_inv!5865 a!3305)))

(assert (=> start!32686 true))

(declare-fun b!326277 () Bool)

(assert (=> b!326277 (= e!200926 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-datatypes ((Unit!10115 0))(
  ( (Unit!10116) )
))
(declare-fun lt!157291 () Unit!10115)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16719 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10115)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326277 (= lt!157291 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(assert (= (and start!32686 res!179466) b!326269))

(assert (= (and b!326269 res!179463) b!326271))

(assert (= (and b!326271 res!179459) b!326275))

(assert (= (and b!326275 res!179460) b!326274))

(assert (= (and b!326274 res!179461) b!326273))

(assert (= (and b!326273 res!179462) b!326276))

(assert (= (and b!326276 res!179465) b!326270))

(assert (= (and b!326270 res!179458) b!326272))

(assert (= (and b!326272 res!179464) b!326268))

(assert (= (and b!326268 res!179457) b!326277))

(declare-fun m!332855 () Bool)

(assert (=> b!326274 m!332855))

(declare-fun m!332857 () Bool)

(assert (=> b!326273 m!332857))

(declare-fun m!332859 () Bool)

(assert (=> b!326277 m!332859))

(assert (=> b!326277 m!332859))

(declare-fun m!332861 () Bool)

(assert (=> b!326277 m!332861))

(declare-fun m!332863 () Bool)

(assert (=> b!326271 m!332863))

(declare-fun m!332865 () Bool)

(assert (=> b!326275 m!332865))

(declare-fun m!332867 () Bool)

(assert (=> b!326276 m!332867))

(assert (=> b!326276 m!332867))

(declare-fun m!332869 () Bool)

(assert (=> b!326276 m!332869))

(declare-fun m!332871 () Bool)

(assert (=> b!326268 m!332871))

(declare-fun m!332873 () Bool)

(assert (=> start!32686 m!332873))

(declare-fun m!332875 () Bool)

(assert (=> start!32686 m!332875))

(declare-fun m!332877 () Bool)

(assert (=> b!326270 m!332877))

(declare-fun m!332879 () Bool)

(assert (=> b!326272 m!332879))

(push 1)

(assert (not b!326271))

(assert (not start!32686))

(assert (not b!326276))

(assert (not b!326274))

(assert (not b!326272))

(assert (not b!326273))

(assert (not b!326277))

(assert (not b!326275))

(check-sat)

(pop 1)

(push 1)

(check-sat)


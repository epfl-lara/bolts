; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32682 () Bool)

(assert start!32682)

(declare-fun b!326208 () Bool)

(declare-fun e!200906 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!326208 (= e!200906 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-datatypes ((Unit!10111 0))(
  ( (Unit!10112) )
))
(declare-fun lt!157280 () Unit!10111)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((array!16715 0))(
  ( (array!16716 (arr!7909 (Array (_ BitVec 32) (_ BitVec 64))) (size!8261 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16715)

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16715 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10111)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326208 (= lt!157280 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326209 () Bool)

(declare-fun res!179405 () Bool)

(declare-fun e!200908 () Bool)

(assert (=> b!326209 (=> (not res!179405) (not e!200908))))

(assert (=> b!326209 (= res!179405 (and (= (size!8261 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8261 a!3305))))))

(declare-fun b!326210 () Bool)

(declare-fun res!179400 () Bool)

(assert (=> b!326210 (=> (not res!179400) (not e!200906))))

(assert (=> b!326210 (= res!179400 (and (= (select (arr!7909 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8261 a!3305))))))

(declare-fun b!326211 () Bool)

(declare-fun res!179401 () Bool)

(assert (=> b!326211 (=> (not res!179401) (not e!200908))))

(declare-fun arrayContainsKey!0 (array!16715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326211 (= res!179401 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326213 () Bool)

(declare-fun res!179403 () Bool)

(assert (=> b!326213 (=> (not res!179403) (not e!200908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16715 (_ BitVec 32)) Bool)

(assert (=> b!326213 (= res!179403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326214 () Bool)

(declare-fun res!179404 () Bool)

(assert (=> b!326214 (=> (not res!179404) (not e!200908))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326214 (= res!179404 (validKeyInArray!0 k!2497))))

(declare-fun b!326215 () Bool)

(declare-fun res!179402 () Bool)

(assert (=> b!326215 (=> (not res!179402) (not e!200906))))

(declare-datatypes ((SeekEntryResult!3051 0))(
  ( (MissingZero!3051 (index!14380 (_ BitVec 32))) (Found!3051 (index!14381 (_ BitVec 32))) (Intermediate!3051 (undefined!3863 Bool) (index!14382 (_ BitVec 32)) (x!32596 (_ BitVec 32))) (Undefined!3051) (MissingVacant!3051 (index!14383 (_ BitVec 32))) )
))
(declare-fun lt!157279 () SeekEntryResult!3051)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16715 (_ BitVec 32)) SeekEntryResult!3051)

(assert (=> b!326215 (= res!179402 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157279))))

(declare-fun b!326216 () Bool)

(declare-fun res!179399 () Bool)

(assert (=> b!326216 (=> (not res!179399) (not e!200906))))

(assert (=> b!326216 (= res!179399 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7909 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326217 () Bool)

(assert (=> b!326217 (= e!200908 e!200906)))

(declare-fun res!179406 () Bool)

(assert (=> b!326217 (=> (not res!179406) (not e!200906))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326217 (= res!179406 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157279))))

(assert (=> b!326217 (= lt!157279 (Intermediate!3051 false resIndex!58 resX!58))))

(declare-fun res!179397 () Bool)

(assert (=> start!32682 (=> (not res!179397) (not e!200908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32682 (= res!179397 (validMask!0 mask!3777))))

(assert (=> start!32682 e!200908))

(declare-fun array_inv!5863 (array!16715) Bool)

(assert (=> start!32682 (array_inv!5863 a!3305)))

(assert (=> start!32682 true))

(declare-fun b!326212 () Bool)

(declare-fun res!179398 () Bool)

(assert (=> b!326212 (=> (not res!179398) (not e!200908))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16715 (_ BitVec 32)) SeekEntryResult!3051)

(assert (=> b!326212 (= res!179398 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3051 i!1250)))))

(assert (= (and start!32682 res!179397) b!326209))

(assert (= (and b!326209 res!179405) b!326214))

(assert (= (and b!326214 res!179404) b!326211))

(assert (= (and b!326211 res!179401) b!326212))

(assert (= (and b!326212 res!179398) b!326213))

(assert (= (and b!326213 res!179403) b!326217))

(assert (= (and b!326217 res!179406) b!326210))

(assert (= (and b!326210 res!179400) b!326215))

(assert (= (and b!326215 res!179402) b!326216))

(assert (= (and b!326216 res!179399) b!326208))

(declare-fun m!332803 () Bool)

(assert (=> b!326213 m!332803))

(declare-fun m!332805 () Bool)

(assert (=> b!326215 m!332805))

(declare-fun m!332807 () Bool)

(assert (=> b!326211 m!332807))

(declare-fun m!332809 () Bool)

(assert (=> b!326208 m!332809))

(assert (=> b!326208 m!332809))

(declare-fun m!332811 () Bool)

(assert (=> b!326208 m!332811))

(declare-fun m!332813 () Bool)

(assert (=> b!326212 m!332813))

(declare-fun m!332815 () Bool)

(assert (=> b!326217 m!332815))

(assert (=> b!326217 m!332815))

(declare-fun m!332817 () Bool)

(assert (=> b!326217 m!332817))

(declare-fun m!332819 () Bool)

(assert (=> b!326216 m!332819))

(declare-fun m!332821 () Bool)

(assert (=> b!326210 m!332821))

(declare-fun m!332823 () Bool)

(assert (=> start!32682 m!332823))

(declare-fun m!332825 () Bool)

(assert (=> start!32682 m!332825))

(declare-fun m!332827 () Bool)

(assert (=> b!326214 m!332827))

(push 1)

(assert (not b!326212))

(assert (not b!326211))

(assert (not start!32682))

(assert (not b!326217))

(assert (not b!326208))

(assert (not b!326213))

(assert (not b!326215))

(assert (not b!326214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


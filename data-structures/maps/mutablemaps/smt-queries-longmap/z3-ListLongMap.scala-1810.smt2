; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32678 () Bool)

(assert start!32678)

(declare-fun b!326148 () Bool)

(declare-fun res!179341 () Bool)

(declare-fun e!200890 () Bool)

(assert (=> b!326148 (=> (not res!179341) (not e!200890))))

(declare-datatypes ((array!16711 0))(
  ( (array!16712 (arr!7907 (Array (_ BitVec 32) (_ BitVec 64))) (size!8259 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16711)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326148 (= res!179341 (and (= (select (arr!7907 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8259 a!3305))))))

(declare-fun b!326149 () Bool)

(declare-fun res!179338 () Bool)

(assert (=> b!326149 (=> (not res!179338) (not e!200890))))

(declare-fun k0!2497 () (_ BitVec 64))

(assert (=> b!326149 (= res!179338 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7907 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326150 () Bool)

(declare-fun res!179343 () Bool)

(declare-fun e!200889 () Bool)

(assert (=> b!326150 (=> (not res!179343) (not e!200889))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16711 (_ BitVec 32)) Bool)

(assert (=> b!326150 (= res!179343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!179340 () Bool)

(assert (=> start!32678 (=> (not res!179340) (not e!200889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32678 (= res!179340 (validMask!0 mask!3777))))

(assert (=> start!32678 e!200889))

(declare-fun array_inv!5861 (array!16711) Bool)

(assert (=> start!32678 (array_inv!5861 a!3305)))

(assert (=> start!32678 true))

(declare-fun b!326151 () Bool)

(declare-fun res!179346 () Bool)

(assert (=> b!326151 (=> (not res!179346) (not e!200890))))

(declare-datatypes ((SeekEntryResult!3049 0))(
  ( (MissingZero!3049 (index!14372 (_ BitVec 32))) (Found!3049 (index!14373 (_ BitVec 32))) (Intermediate!3049 (undefined!3861 Bool) (index!14374 (_ BitVec 32)) (x!32586 (_ BitVec 32))) (Undefined!3049) (MissingVacant!3049 (index!14375 (_ BitVec 32))) )
))
(declare-fun lt!157268 () SeekEntryResult!3049)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16711 (_ BitVec 32)) SeekEntryResult!3049)

(assert (=> b!326151 (= res!179346 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157268))))

(declare-fun b!326152 () Bool)

(assert (=> b!326152 (= e!200889 e!200890)))

(declare-fun res!179342 () Bool)

(assert (=> b!326152 (=> (not res!179342) (not e!200890))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326152 (= res!179342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157268))))

(assert (=> b!326152 (= lt!157268 (Intermediate!3049 false resIndex!58 resX!58))))

(declare-fun b!326153 () Bool)

(declare-fun res!179339 () Bool)

(assert (=> b!326153 (=> (not res!179339) (not e!200889))))

(declare-fun arrayContainsKey!0 (array!16711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326153 (= res!179339 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326154 () Bool)

(declare-fun res!179337 () Bool)

(assert (=> b!326154 (=> (not res!179337) (not e!200889))))

(assert (=> b!326154 (= res!179337 (and (= (size!8259 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8259 a!3305))))))

(declare-fun b!326155 () Bool)

(assert (=> b!326155 (= e!200890 false)))

(declare-datatypes ((Unit!10107 0))(
  ( (Unit!10108) )
))
(declare-fun lt!157267 () Unit!10107)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16711 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10107)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326155 (= lt!157267 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326156 () Bool)

(declare-fun res!179344 () Bool)

(assert (=> b!326156 (=> (not res!179344) (not e!200889))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16711 (_ BitVec 32)) SeekEntryResult!3049)

(assert (=> b!326156 (= res!179344 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3049 i!1250)))))

(declare-fun b!326157 () Bool)

(declare-fun res!179345 () Bool)

(assert (=> b!326157 (=> (not res!179345) (not e!200889))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326157 (= res!179345 (validKeyInArray!0 k0!2497))))

(assert (= (and start!32678 res!179340) b!326154))

(assert (= (and b!326154 res!179337) b!326157))

(assert (= (and b!326157 res!179345) b!326153))

(assert (= (and b!326153 res!179339) b!326156))

(assert (= (and b!326156 res!179344) b!326150))

(assert (= (and b!326150 res!179343) b!326152))

(assert (= (and b!326152 res!179342) b!326148))

(assert (= (and b!326148 res!179341) b!326151))

(assert (= (and b!326151 res!179346) b!326149))

(assert (= (and b!326149 res!179338) b!326155))

(declare-fun m!332751 () Bool)

(assert (=> b!326151 m!332751))

(declare-fun m!332753 () Bool)

(assert (=> b!326156 m!332753))

(declare-fun m!332755 () Bool)

(assert (=> b!326149 m!332755))

(declare-fun m!332757 () Bool)

(assert (=> b!326155 m!332757))

(assert (=> b!326155 m!332757))

(declare-fun m!332759 () Bool)

(assert (=> b!326155 m!332759))

(declare-fun m!332761 () Bool)

(assert (=> start!32678 m!332761))

(declare-fun m!332763 () Bool)

(assert (=> start!32678 m!332763))

(declare-fun m!332765 () Bool)

(assert (=> b!326157 m!332765))

(declare-fun m!332767 () Bool)

(assert (=> b!326150 m!332767))

(declare-fun m!332769 () Bool)

(assert (=> b!326152 m!332769))

(assert (=> b!326152 m!332769))

(declare-fun m!332771 () Bool)

(assert (=> b!326152 m!332771))

(declare-fun m!332773 () Bool)

(assert (=> b!326148 m!332773))

(declare-fun m!332775 () Bool)

(assert (=> b!326153 m!332775))

(check-sat (not b!326152) (not b!326157) (not b!326153) (not b!326151) (not b!326155) (not b!326150) (not start!32678) (not b!326156))
(check-sat)

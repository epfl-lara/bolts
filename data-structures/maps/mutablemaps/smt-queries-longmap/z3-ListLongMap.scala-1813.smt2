; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32696 () Bool)

(assert start!32696)

(declare-fun b!326418 () Bool)

(declare-fun res!179611 () Bool)

(declare-fun e!200971 () Bool)

(assert (=> b!326418 (=> (not res!179611) (not e!200971))))

(declare-datatypes ((array!16729 0))(
  ( (array!16730 (arr!7916 (Array (_ BitVec 32) (_ BitVec 64))) (size!8268 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16729)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326418 (= res!179611 (and (= (select (arr!7916 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8268 a!3305))))))

(declare-fun res!179613 () Bool)

(declare-fun e!200969 () Bool)

(assert (=> start!32696 (=> (not res!179613) (not e!200969))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32696 (= res!179613 (validMask!0 mask!3777))))

(assert (=> start!32696 e!200969))

(declare-fun array_inv!5870 (array!16729) Bool)

(assert (=> start!32696 (array_inv!5870 a!3305)))

(assert (=> start!32696 true))

(declare-fun b!326419 () Bool)

(assert (=> b!326419 (= e!200971 false)))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((Unit!10125 0))(
  ( (Unit!10126) )
))
(declare-fun lt!157321 () Unit!10125)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16729 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10125)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326419 (= lt!157321 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326420 () Bool)

(declare-fun res!179612 () Bool)

(assert (=> b!326420 (=> (not res!179612) (not e!200969))))

(declare-fun arrayContainsKey!0 (array!16729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326420 (= res!179612 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326421 () Bool)

(declare-fun res!179607 () Bool)

(assert (=> b!326421 (=> (not res!179607) (not e!200969))))

(declare-datatypes ((SeekEntryResult!3058 0))(
  ( (MissingZero!3058 (index!14408 (_ BitVec 32))) (Found!3058 (index!14409 (_ BitVec 32))) (Intermediate!3058 (undefined!3870 Bool) (index!14410 (_ BitVec 32)) (x!32619 (_ BitVec 32))) (Undefined!3058) (MissingVacant!3058 (index!14411 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16729 (_ BitVec 32)) SeekEntryResult!3058)

(assert (=> b!326421 (= res!179607 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3058 i!1250)))))

(declare-fun b!326422 () Bool)

(declare-fun res!179609 () Bool)

(assert (=> b!326422 (=> (not res!179609) (not e!200969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326422 (= res!179609 (validKeyInArray!0 k0!2497))))

(declare-fun b!326423 () Bool)

(assert (=> b!326423 (= e!200969 e!200971)))

(declare-fun res!179615 () Bool)

(assert (=> b!326423 (=> (not res!179615) (not e!200971))))

(declare-fun lt!157322 () SeekEntryResult!3058)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16729 (_ BitVec 32)) SeekEntryResult!3058)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326423 (= res!179615 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157322))))

(assert (=> b!326423 (= lt!157322 (Intermediate!3058 false resIndex!58 resX!58))))

(declare-fun b!326424 () Bool)

(declare-fun res!179608 () Bool)

(assert (=> b!326424 (=> (not res!179608) (not e!200971))))

(assert (=> b!326424 (= res!179608 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7916 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326425 () Bool)

(declare-fun res!179614 () Bool)

(assert (=> b!326425 (=> (not res!179614) (not e!200969))))

(assert (=> b!326425 (= res!179614 (and (= (size!8268 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8268 a!3305))))))

(declare-fun b!326426 () Bool)

(declare-fun res!179616 () Bool)

(assert (=> b!326426 (=> (not res!179616) (not e!200969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16729 (_ BitVec 32)) Bool)

(assert (=> b!326426 (= res!179616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326427 () Bool)

(declare-fun res!179610 () Bool)

(assert (=> b!326427 (=> (not res!179610) (not e!200971))))

(assert (=> b!326427 (= res!179610 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157322))))

(assert (= (and start!32696 res!179613) b!326425))

(assert (= (and b!326425 res!179614) b!326422))

(assert (= (and b!326422 res!179609) b!326420))

(assert (= (and b!326420 res!179612) b!326421))

(assert (= (and b!326421 res!179607) b!326426))

(assert (= (and b!326426 res!179616) b!326423))

(assert (= (and b!326423 res!179615) b!326418))

(assert (= (and b!326418 res!179611) b!326427))

(assert (= (and b!326427 res!179610) b!326424))

(assert (= (and b!326424 res!179608) b!326419))

(declare-fun m!332985 () Bool)

(assert (=> b!326422 m!332985))

(declare-fun m!332987 () Bool)

(assert (=> start!32696 m!332987))

(declare-fun m!332989 () Bool)

(assert (=> start!32696 m!332989))

(declare-fun m!332991 () Bool)

(assert (=> b!326418 m!332991))

(declare-fun m!332993 () Bool)

(assert (=> b!326421 m!332993))

(declare-fun m!332995 () Bool)

(assert (=> b!326426 m!332995))

(declare-fun m!332997 () Bool)

(assert (=> b!326420 m!332997))

(declare-fun m!332999 () Bool)

(assert (=> b!326423 m!332999))

(assert (=> b!326423 m!332999))

(declare-fun m!333001 () Bool)

(assert (=> b!326423 m!333001))

(declare-fun m!333003 () Bool)

(assert (=> b!326419 m!333003))

(assert (=> b!326419 m!333003))

(declare-fun m!333005 () Bool)

(assert (=> b!326419 m!333005))

(declare-fun m!333007 () Bool)

(assert (=> b!326424 m!333007))

(declare-fun m!333009 () Bool)

(assert (=> b!326427 m!333009))

(check-sat (not b!326427) (not b!326422) (not start!32696) (not b!326423) (not b!326420) (not b!326419) (not b!326426) (not b!326421))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45294 () Bool)

(assert start!45294)

(declare-fun b!497329 () Bool)

(declare-fun e!291511 () Bool)

(declare-fun e!291512 () Bool)

(assert (=> b!497329 (= e!291511 e!291512)))

(declare-fun res!299864 () Bool)

(assert (=> b!497329 (=> (not res!299864) (not e!291512))))

(declare-datatypes ((SeekEntryResult!3925 0))(
  ( (MissingZero!3925 (index!17879 (_ BitVec 32))) (Found!3925 (index!17880 (_ BitVec 32))) (Intermediate!3925 (undefined!4737 Bool) (index!17881 (_ BitVec 32)) (x!46956 (_ BitVec 32))) (Undefined!3925) (MissingVacant!3925 (index!17882 (_ BitVec 32))) )
))
(declare-fun lt!225211 () SeekEntryResult!3925)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!497329 (= res!299864 (or (= lt!225211 (MissingZero!3925 i!1204)) (= lt!225211 (MissingVacant!3925 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32142 0))(
  ( (array!32143 (arr!15451 (Array (_ BitVec 32) (_ BitVec 64))) (size!15815 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32142)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32142 (_ BitVec 32)) SeekEntryResult!3925)

(assert (=> b!497329 (= lt!225211 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!497330 () Bool)

(declare-datatypes ((Unit!14790 0))(
  ( (Unit!14791) )
))
(declare-fun e!291513 () Unit!14790)

(declare-fun Unit!14792 () Unit!14790)

(assert (=> b!497330 (= e!291513 Unit!14792)))

(declare-fun lt!225210 () SeekEntryResult!3925)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!225217 () Unit!14790)

(declare-fun lt!225213 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32142 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14790)

(assert (=> b!497330 (= lt!225217 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!225213 #b00000000000000000000000000000000 (index!17881 lt!225210) (x!46956 lt!225210) mask!3524))))

(declare-fun lt!225215 () (_ BitVec 64))

(declare-fun lt!225218 () array!32142)

(declare-fun res!299858 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32142 (_ BitVec 32)) SeekEntryResult!3925)

(assert (=> b!497330 (= res!299858 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225213 lt!225215 lt!225218 mask!3524) (Intermediate!3925 false (index!17881 lt!225210) (x!46956 lt!225210))))))

(declare-fun e!291515 () Bool)

(assert (=> b!497330 (=> (not res!299858) (not e!291515))))

(assert (=> b!497330 e!291515))

(declare-fun e!291516 () Bool)

(declare-fun b!497331 () Bool)

(assert (=> b!497331 (= e!291516 (= (seekEntryOrOpen!0 (select (arr!15451 a!3235) j!176) a!3235 mask!3524) (Found!3925 j!176)))))

(declare-fun b!497332 () Bool)

(declare-fun res!299867 () Bool)

(assert (=> b!497332 (=> (not res!299867) (not e!291511))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497332 (= res!299867 (validKeyInArray!0 (select (arr!15451 a!3235) j!176)))))

(declare-fun b!497333 () Bool)

(declare-fun e!291517 () Bool)

(assert (=> b!497333 (= e!291517 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!497333 (and (or (= (select (arr!15451 a!3235) (index!17881 lt!225210)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15451 a!3235) (index!17881 lt!225210)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15451 a!3235) (index!17881 lt!225210)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15451 a!3235) (index!17881 lt!225210)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225214 () Unit!14790)

(assert (=> b!497333 (= lt!225214 e!291513)))

(declare-fun c!59012 () Bool)

(assert (=> b!497333 (= c!59012 (= (select (arr!15451 a!3235) (index!17881 lt!225210)) (select (arr!15451 a!3235) j!176)))))

(assert (=> b!497333 (and (bvslt (x!46956 lt!225210) #b01111111111111111111111111111110) (or (= (select (arr!15451 a!3235) (index!17881 lt!225210)) (select (arr!15451 a!3235) j!176)) (= (select (arr!15451 a!3235) (index!17881 lt!225210)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15451 a!3235) (index!17881 lt!225210)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497334 () Bool)

(declare-fun res!299856 () Bool)

(assert (=> b!497334 (=> (not res!299856) (not e!291512))))

(declare-datatypes ((List!9662 0))(
  ( (Nil!9659) (Cons!9658 (h!10529 (_ BitVec 64)) (t!15898 List!9662)) )
))
(declare-fun arrayNoDuplicates!0 (array!32142 (_ BitVec 32) List!9662) Bool)

(assert (=> b!497334 (= res!299856 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9659))))

(declare-fun b!497335 () Bool)

(declare-fun Unit!14793 () Unit!14790)

(assert (=> b!497335 (= e!291513 Unit!14793)))

(declare-fun b!497336 () Bool)

(assert (=> b!497336 (= e!291515 false)))

(declare-fun b!497337 () Bool)

(declare-fun res!299865 () Bool)

(assert (=> b!497337 (=> (not res!299865) (not e!291512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32142 (_ BitVec 32)) Bool)

(assert (=> b!497337 (= res!299865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497339 () Bool)

(declare-fun res!299861 () Bool)

(assert (=> b!497339 (=> (not res!299861) (not e!291511))))

(declare-fun arrayContainsKey!0 (array!32142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497339 (= res!299861 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497340 () Bool)

(declare-fun res!299862 () Bool)

(assert (=> b!497340 (=> (not res!299862) (not e!291511))))

(assert (=> b!497340 (= res!299862 (validKeyInArray!0 k0!2280))))

(declare-fun b!497341 () Bool)

(assert (=> b!497341 (= e!291512 (not e!291517))))

(declare-fun res!299857 () Bool)

(assert (=> b!497341 (=> res!299857 e!291517)))

(declare-fun lt!225216 () (_ BitVec 32))

(assert (=> b!497341 (= res!299857 (= lt!225210 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225216 lt!225215 lt!225218 mask!3524)))))

(assert (=> b!497341 (= lt!225210 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225213 (select (arr!15451 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497341 (= lt!225216 (toIndex!0 lt!225215 mask!3524))))

(assert (=> b!497341 (= lt!225215 (select (store (arr!15451 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!497341 (= lt!225213 (toIndex!0 (select (arr!15451 a!3235) j!176) mask!3524))))

(assert (=> b!497341 (= lt!225218 (array!32143 (store (arr!15451 a!3235) i!1204 k0!2280) (size!15815 a!3235)))))

(assert (=> b!497341 e!291516))

(declare-fun res!299860 () Bool)

(assert (=> b!497341 (=> (not res!299860) (not e!291516))))

(assert (=> b!497341 (= res!299860 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225212 () Unit!14790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32142 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14790)

(assert (=> b!497341 (= lt!225212 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497342 () Bool)

(declare-fun res!299859 () Bool)

(assert (=> b!497342 (=> (not res!299859) (not e!291511))))

(assert (=> b!497342 (= res!299859 (and (= (size!15815 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15815 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15815 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497338 () Bool)

(declare-fun res!299863 () Bool)

(assert (=> b!497338 (=> res!299863 e!291517)))

(get-info :version)

(assert (=> b!497338 (= res!299863 (or (undefined!4737 lt!225210) (not ((_ is Intermediate!3925) lt!225210))))))

(declare-fun res!299866 () Bool)

(assert (=> start!45294 (=> (not res!299866) (not e!291511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45294 (= res!299866 (validMask!0 mask!3524))))

(assert (=> start!45294 e!291511))

(assert (=> start!45294 true))

(declare-fun array_inv!11225 (array!32142) Bool)

(assert (=> start!45294 (array_inv!11225 a!3235)))

(assert (= (and start!45294 res!299866) b!497342))

(assert (= (and b!497342 res!299859) b!497332))

(assert (= (and b!497332 res!299867) b!497340))

(assert (= (and b!497340 res!299862) b!497339))

(assert (= (and b!497339 res!299861) b!497329))

(assert (= (and b!497329 res!299864) b!497337))

(assert (= (and b!497337 res!299865) b!497334))

(assert (= (and b!497334 res!299856) b!497341))

(assert (= (and b!497341 res!299860) b!497331))

(assert (= (and b!497341 (not res!299857)) b!497338))

(assert (= (and b!497338 (not res!299863)) b!497333))

(assert (= (and b!497333 c!59012) b!497330))

(assert (= (and b!497333 (not c!59012)) b!497335))

(assert (= (and b!497330 res!299858) b!497336))

(declare-fun m!478753 () Bool)

(assert (=> b!497331 m!478753))

(assert (=> b!497331 m!478753))

(declare-fun m!478755 () Bool)

(assert (=> b!497331 m!478755))

(assert (=> b!497332 m!478753))

(assert (=> b!497332 m!478753))

(declare-fun m!478757 () Bool)

(assert (=> b!497332 m!478757))

(declare-fun m!478759 () Bool)

(assert (=> b!497330 m!478759))

(declare-fun m!478761 () Bool)

(assert (=> b!497330 m!478761))

(declare-fun m!478763 () Bool)

(assert (=> b!497329 m!478763))

(declare-fun m!478765 () Bool)

(assert (=> b!497334 m!478765))

(declare-fun m!478767 () Bool)

(assert (=> b!497333 m!478767))

(assert (=> b!497333 m!478753))

(declare-fun m!478769 () Bool)

(assert (=> b!497339 m!478769))

(declare-fun m!478771 () Bool)

(assert (=> b!497337 m!478771))

(declare-fun m!478773 () Bool)

(assert (=> start!45294 m!478773))

(declare-fun m!478775 () Bool)

(assert (=> start!45294 m!478775))

(declare-fun m!478777 () Bool)

(assert (=> b!497340 m!478777))

(declare-fun m!478779 () Bool)

(assert (=> b!497341 m!478779))

(assert (=> b!497341 m!478753))

(declare-fun m!478781 () Bool)

(assert (=> b!497341 m!478781))

(declare-fun m!478783 () Bool)

(assert (=> b!497341 m!478783))

(declare-fun m!478785 () Bool)

(assert (=> b!497341 m!478785))

(declare-fun m!478787 () Bool)

(assert (=> b!497341 m!478787))

(declare-fun m!478789 () Bool)

(assert (=> b!497341 m!478789))

(assert (=> b!497341 m!478753))

(declare-fun m!478791 () Bool)

(assert (=> b!497341 m!478791))

(assert (=> b!497341 m!478753))

(declare-fun m!478793 () Bool)

(assert (=> b!497341 m!478793))

(check-sat (not b!497329) (not b!497341) (not b!497330) (not b!497332) (not b!497331) (not b!497339) (not b!497340) (not start!45294) (not b!497334) (not b!497337))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45390 () Bool)

(assert start!45390)

(declare-fun b!498318 () Bool)

(declare-fun e!292075 () Bool)

(declare-fun e!292073 () Bool)

(assert (=> b!498318 (= e!292075 e!292073)))

(declare-fun res!300560 () Bool)

(assert (=> b!498318 (=> res!300560 e!292073)))

(declare-fun lt!225793 () (_ BitVec 32))

(declare-datatypes ((array!32175 0))(
  ( (array!32176 (arr!15466 (Array (_ BitVec 32) (_ BitVec 64))) (size!15830 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32175)

(declare-datatypes ((SeekEntryResult!3940 0))(
  ( (MissingZero!3940 (index!17942 (_ BitVec 32))) (Found!3940 (index!17943 (_ BitVec 32))) (Intermediate!3940 (undefined!4752 Bool) (index!17944 (_ BitVec 32)) (x!47020 (_ BitVec 32))) (Undefined!3940) (MissingVacant!3940 (index!17945 (_ BitVec 32))) )
))
(declare-fun lt!225799 () SeekEntryResult!3940)

(assert (=> b!498318 (= res!300560 (or (bvsgt #b00000000000000000000000000000000 (x!47020 lt!225799)) (bvsgt (x!47020 lt!225799) #b01111111111111111111111111111110) (bvslt lt!225793 #b00000000000000000000000000000000) (bvsge lt!225793 (size!15830 a!3235)) (bvslt (index!17944 lt!225799) #b00000000000000000000000000000000) (bvsge (index!17944 lt!225799) (size!15830 a!3235)) (not (= lt!225799 (Intermediate!3940 false (index!17944 lt!225799) (x!47020 lt!225799))))))))

(assert (=> b!498318 (and (or (= (select (arr!15466 a!3235) (index!17944 lt!225799)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15466 a!3235) (index!17944 lt!225799)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15466 a!3235) (index!17944 lt!225799)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15466 a!3235) (index!17944 lt!225799)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14850 0))(
  ( (Unit!14851) )
))
(declare-fun lt!225800 () Unit!14850)

(declare-fun e!292074 () Unit!14850)

(assert (=> b!498318 (= lt!225800 e!292074)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun c!59159 () Bool)

(assert (=> b!498318 (= c!59159 (= (select (arr!15466 a!3235) (index!17944 lt!225799)) (select (arr!15466 a!3235) j!176)))))

(assert (=> b!498318 (and (bvslt (x!47020 lt!225799) #b01111111111111111111111111111110) (or (= (select (arr!15466 a!3235) (index!17944 lt!225799)) (select (arr!15466 a!3235) j!176)) (= (select (arr!15466 a!3235) (index!17944 lt!225799)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15466 a!3235) (index!17944 lt!225799)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498319 () Bool)

(declare-fun res!300566 () Bool)

(declare-fun e!292068 () Bool)

(assert (=> b!498319 (=> (not res!300566) (not e!292068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498319 (= res!300566 (validKeyInArray!0 (select (arr!15466 a!3235) j!176)))))

(declare-fun b!498320 () Bool)

(declare-fun e!292070 () Bool)

(assert (=> b!498320 (= e!292070 (not e!292075))))

(declare-fun res!300563 () Bool)

(assert (=> b!498320 (=> res!300563 e!292075)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!225796 () array!32175)

(declare-fun lt!225792 () (_ BitVec 64))

(declare-fun lt!225798 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32175 (_ BitVec 32)) SeekEntryResult!3940)

(assert (=> b!498320 (= res!300563 (= lt!225799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225798 lt!225792 lt!225796 mask!3524)))))

(assert (=> b!498320 (= lt!225799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225793 (select (arr!15466 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498320 (= lt!225798 (toIndex!0 lt!225792 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498320 (= lt!225792 (select (store (arr!15466 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!498320 (= lt!225793 (toIndex!0 (select (arr!15466 a!3235) j!176) mask!3524))))

(assert (=> b!498320 (= lt!225796 (array!32176 (store (arr!15466 a!3235) i!1204 k0!2280) (size!15830 a!3235)))))

(declare-fun e!292071 () Bool)

(assert (=> b!498320 e!292071))

(declare-fun res!300562 () Bool)

(assert (=> b!498320 (=> (not res!300562) (not e!292071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32175 (_ BitVec 32)) Bool)

(assert (=> b!498320 (= res!300562 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225797 () Unit!14850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32175 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14850)

(assert (=> b!498320 (= lt!225797 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498321 () Bool)

(declare-fun Unit!14852 () Unit!14850)

(assert (=> b!498321 (= e!292074 Unit!14852)))

(declare-fun b!498322 () Bool)

(declare-fun res!300556 () Bool)

(assert (=> b!498322 (=> res!300556 e!292075)))

(get-info :version)

(assert (=> b!498322 (= res!300556 (or (undefined!4752 lt!225799) (not ((_ is Intermediate!3940) lt!225799))))))

(declare-fun b!498323 () Bool)

(declare-fun res!300554 () Bool)

(assert (=> b!498323 (=> (not res!300554) (not e!292068))))

(declare-fun arrayContainsKey!0 (array!32175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498323 (= res!300554 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498324 () Bool)

(assert (=> b!498324 (= e!292073 true)))

(declare-fun lt!225794 () SeekEntryResult!3940)

(assert (=> b!498324 (= lt!225794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225793 lt!225792 lt!225796 mask!3524))))

(declare-fun b!498325 () Bool)

(declare-fun e!292069 () Bool)

(assert (=> b!498325 (= e!292069 false)))

(declare-fun b!498326 () Bool)

(assert (=> b!498326 (= e!292068 e!292070)))

(declare-fun res!300555 () Bool)

(assert (=> b!498326 (=> (not res!300555) (not e!292070))))

(declare-fun lt!225795 () SeekEntryResult!3940)

(assert (=> b!498326 (= res!300555 (or (= lt!225795 (MissingZero!3940 i!1204)) (= lt!225795 (MissingVacant!3940 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32175 (_ BitVec 32)) SeekEntryResult!3940)

(assert (=> b!498326 (= lt!225795 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!498327 () Bool)

(declare-fun res!300565 () Bool)

(assert (=> b!498327 (=> (not res!300565) (not e!292070))))

(declare-datatypes ((List!9677 0))(
  ( (Nil!9674) (Cons!9673 (h!10547 (_ BitVec 64)) (t!15913 List!9677)) )
))
(declare-fun arrayNoDuplicates!0 (array!32175 (_ BitVec 32) List!9677) Bool)

(assert (=> b!498327 (= res!300565 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9674))))

(declare-fun b!498328 () Bool)

(declare-fun res!300558 () Bool)

(assert (=> b!498328 (=> (not res!300558) (not e!292070))))

(assert (=> b!498328 (= res!300558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!300564 () Bool)

(assert (=> start!45390 (=> (not res!300564) (not e!292068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45390 (= res!300564 (validMask!0 mask!3524))))

(assert (=> start!45390 e!292068))

(assert (=> start!45390 true))

(declare-fun array_inv!11240 (array!32175) Bool)

(assert (=> start!45390 (array_inv!11240 a!3235)))

(declare-fun b!498329 () Bool)

(assert (=> b!498329 (= e!292071 (= (seekEntryOrOpen!0 (select (arr!15466 a!3235) j!176) a!3235 mask!3524) (Found!3940 j!176)))))

(declare-fun b!498330 () Bool)

(declare-fun res!300561 () Bool)

(assert (=> b!498330 (=> (not res!300561) (not e!292068))))

(assert (=> b!498330 (= res!300561 (validKeyInArray!0 k0!2280))))

(declare-fun b!498331 () Bool)

(declare-fun res!300557 () Bool)

(assert (=> b!498331 (=> (not res!300557) (not e!292068))))

(assert (=> b!498331 (= res!300557 (and (= (size!15830 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15830 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15830 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498332 () Bool)

(declare-fun Unit!14853 () Unit!14850)

(assert (=> b!498332 (= e!292074 Unit!14853)))

(declare-fun lt!225791 () Unit!14850)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32175 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14850)

(assert (=> b!498332 (= lt!225791 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!225793 #b00000000000000000000000000000000 (index!17944 lt!225799) (x!47020 lt!225799) mask!3524))))

(declare-fun res!300559 () Bool)

(assert (=> b!498332 (= res!300559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225793 lt!225792 lt!225796 mask!3524) (Intermediate!3940 false (index!17944 lt!225799) (x!47020 lt!225799))))))

(assert (=> b!498332 (=> (not res!300559) (not e!292069))))

(assert (=> b!498332 e!292069))

(assert (= (and start!45390 res!300564) b!498331))

(assert (= (and b!498331 res!300557) b!498319))

(assert (= (and b!498319 res!300566) b!498330))

(assert (= (and b!498330 res!300561) b!498323))

(assert (= (and b!498323 res!300554) b!498326))

(assert (= (and b!498326 res!300555) b!498328))

(assert (= (and b!498328 res!300558) b!498327))

(assert (= (and b!498327 res!300565) b!498320))

(assert (= (and b!498320 res!300562) b!498329))

(assert (= (and b!498320 (not res!300563)) b!498322))

(assert (= (and b!498322 (not res!300556)) b!498318))

(assert (= (and b!498318 c!59159) b!498332))

(assert (= (and b!498318 (not c!59159)) b!498321))

(assert (= (and b!498332 res!300559) b!498325))

(assert (= (and b!498318 (not res!300560)) b!498324))

(declare-fun m!479617 () Bool)

(assert (=> b!498327 m!479617))

(declare-fun m!479619 () Bool)

(assert (=> b!498320 m!479619))

(declare-fun m!479621 () Bool)

(assert (=> b!498320 m!479621))

(declare-fun m!479623 () Bool)

(assert (=> b!498320 m!479623))

(declare-fun m!479625 () Bool)

(assert (=> b!498320 m!479625))

(declare-fun m!479627 () Bool)

(assert (=> b!498320 m!479627))

(declare-fun m!479629 () Bool)

(assert (=> b!498320 m!479629))

(assert (=> b!498320 m!479627))

(declare-fun m!479631 () Bool)

(assert (=> b!498320 m!479631))

(assert (=> b!498320 m!479627))

(declare-fun m!479633 () Bool)

(assert (=> b!498320 m!479633))

(declare-fun m!479635 () Bool)

(assert (=> b!498320 m!479635))

(assert (=> b!498319 m!479627))

(assert (=> b!498319 m!479627))

(declare-fun m!479637 () Bool)

(assert (=> b!498319 m!479637))

(declare-fun m!479639 () Bool)

(assert (=> start!45390 m!479639))

(declare-fun m!479641 () Bool)

(assert (=> start!45390 m!479641))

(declare-fun m!479643 () Bool)

(assert (=> b!498324 m!479643))

(declare-fun m!479645 () Bool)

(assert (=> b!498328 m!479645))

(declare-fun m!479647 () Bool)

(assert (=> b!498332 m!479647))

(assert (=> b!498332 m!479643))

(declare-fun m!479649 () Bool)

(assert (=> b!498326 m!479649))

(declare-fun m!479651 () Bool)

(assert (=> b!498323 m!479651))

(assert (=> b!498329 m!479627))

(assert (=> b!498329 m!479627))

(declare-fun m!479653 () Bool)

(assert (=> b!498329 m!479653))

(declare-fun m!479655 () Bool)

(assert (=> b!498318 m!479655))

(assert (=> b!498318 m!479627))

(declare-fun m!479657 () Bool)

(assert (=> b!498330 m!479657))

(check-sat (not b!498329) (not b!498319) (not b!498320) (not b!498328) (not b!498323) (not start!45390) (not b!498332) (not b!498326) (not b!498327) (not b!498330) (not b!498324))
(check-sat)

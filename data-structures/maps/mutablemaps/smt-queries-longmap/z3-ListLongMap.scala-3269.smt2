; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45498 () Bool)

(assert start!45498)

(declare-fun b!500748 () Bool)

(declare-fun e!293367 () Bool)

(assert (=> b!500748 (= e!293367 false)))

(declare-fun b!500749 () Bool)

(declare-fun res!302671 () Bool)

(declare-fun e!293368 () Bool)

(assert (=> b!500749 (=> res!302671 e!293368)))

(declare-datatypes ((SeekEntryResult!3994 0))(
  ( (MissingZero!3994 (index!18158 (_ BitVec 32))) (Found!3994 (index!18159 (_ BitVec 32))) (Intermediate!3994 (undefined!4806 Bool) (index!18160 (_ BitVec 32)) (x!47218 (_ BitVec 32))) (Undefined!3994) (MissingVacant!3994 (index!18161 (_ BitVec 32))) )
))
(declare-fun lt!227418 () SeekEntryResult!3994)

(get-info :version)

(assert (=> b!500749 (= res!302671 (or (undefined!4806 lt!227418) (not ((_ is Intermediate!3994) lt!227418))))))

(declare-fun e!293364 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!500750 () Bool)

(declare-datatypes ((array!32283 0))(
  ( (array!32284 (arr!15520 (Array (_ BitVec 32) (_ BitVec 64))) (size!15884 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32283)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32283 (_ BitVec 32)) SeekEntryResult!3994)

(assert (=> b!500750 (= e!293364 (= (seekEntryOrOpen!0 (select (arr!15520 a!3235) j!176) a!3235 mask!3524) (Found!3994 j!176)))))

(declare-fun b!500751 () Bool)

(declare-fun res!302664 () Bool)

(declare-fun e!293370 () Bool)

(assert (=> b!500751 (=> (not res!302664) (not e!293370))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500751 (= res!302664 (validKeyInArray!0 k0!2280))))

(declare-fun b!500752 () Bool)

(declare-fun res!302662 () Bool)

(declare-fun e!293365 () Bool)

(assert (=> b!500752 (=> (not res!302662) (not e!293365))))

(declare-datatypes ((List!9731 0))(
  ( (Nil!9728) (Cons!9727 (h!10601 (_ BitVec 64)) (t!15967 List!9731)) )
))
(declare-fun arrayNoDuplicates!0 (array!32283 (_ BitVec 32) List!9731) Bool)

(assert (=> b!500752 (= res!302662 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9728))))

(declare-fun b!500753 () Bool)

(assert (=> b!500753 (= e!293365 (not e!293368))))

(declare-fun res!302667 () Bool)

(assert (=> b!500753 (=> res!302667 e!293368)))

(declare-fun lt!227420 () array!32283)

(declare-fun lt!227412 () (_ BitVec 64))

(declare-fun lt!227411 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32283 (_ BitVec 32)) SeekEntryResult!3994)

(assert (=> b!500753 (= res!302667 (= lt!227418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227411 lt!227412 lt!227420 mask!3524)))))

(declare-fun lt!227416 () (_ BitVec 32))

(assert (=> b!500753 (= lt!227418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227416 (select (arr!15520 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500753 (= lt!227411 (toIndex!0 lt!227412 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500753 (= lt!227412 (select (store (arr!15520 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!500753 (= lt!227416 (toIndex!0 (select (arr!15520 a!3235) j!176) mask!3524))))

(assert (=> b!500753 (= lt!227420 (array!32284 (store (arr!15520 a!3235) i!1204 k0!2280) (size!15884 a!3235)))))

(assert (=> b!500753 e!293364))

(declare-fun res!302665 () Bool)

(assert (=> b!500753 (=> (not res!302665) (not e!293364))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32283 (_ BitVec 32)) Bool)

(assert (=> b!500753 (= res!302665 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15066 0))(
  ( (Unit!15067) )
))
(declare-fun lt!227415 () Unit!15066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32283 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15066)

(assert (=> b!500753 (= lt!227415 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500754 () Bool)

(declare-fun e!293371 () Bool)

(assert (=> b!500754 (= e!293368 e!293371)))

(declare-fun res!302668 () Bool)

(assert (=> b!500754 (=> res!302668 e!293371)))

(assert (=> b!500754 (= res!302668 (or (bvsgt #b00000000000000000000000000000000 (x!47218 lt!227418)) (bvsgt (x!47218 lt!227418) #b01111111111111111111111111111110) (bvslt lt!227416 #b00000000000000000000000000000000) (bvsge lt!227416 (size!15884 a!3235)) (bvslt (index!18160 lt!227418) #b00000000000000000000000000000000) (bvsge (index!18160 lt!227418) (size!15884 a!3235)) (not (= lt!227418 (Intermediate!3994 false (index!18160 lt!227418) (x!47218 lt!227418))))))))

(assert (=> b!500754 (and (or (= (select (arr!15520 a!3235) (index!18160 lt!227418)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15520 a!3235) (index!18160 lt!227418)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15520 a!3235) (index!18160 lt!227418)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15520 a!3235) (index!18160 lt!227418)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227413 () Unit!15066)

(declare-fun e!293369 () Unit!15066)

(assert (=> b!500754 (= lt!227413 e!293369)))

(declare-fun c!59321 () Bool)

(assert (=> b!500754 (= c!59321 (= (select (arr!15520 a!3235) (index!18160 lt!227418)) (select (arr!15520 a!3235) j!176)))))

(assert (=> b!500754 (and (bvslt (x!47218 lt!227418) #b01111111111111111111111111111110) (or (= (select (arr!15520 a!3235) (index!18160 lt!227418)) (select (arr!15520 a!3235) j!176)) (= (select (arr!15520 a!3235) (index!18160 lt!227418)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15520 a!3235) (index!18160 lt!227418)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500755 () Bool)

(declare-fun res!302661 () Bool)

(assert (=> b!500755 (=> (not res!302661) (not e!293370))))

(assert (=> b!500755 (= res!302661 (validKeyInArray!0 (select (arr!15520 a!3235) j!176)))))

(declare-fun res!302670 () Bool)

(assert (=> start!45498 (=> (not res!302670) (not e!293370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45498 (= res!302670 (validMask!0 mask!3524))))

(assert (=> start!45498 e!293370))

(assert (=> start!45498 true))

(declare-fun array_inv!11294 (array!32283) Bool)

(assert (=> start!45498 (array_inv!11294 a!3235)))

(declare-fun b!500756 () Bool)

(declare-fun res!302669 () Bool)

(assert (=> b!500756 (=> (not res!302669) (not e!293370))))

(declare-fun arrayContainsKey!0 (array!32283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500756 (= res!302669 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500757 () Bool)

(assert (=> b!500757 (= e!293371 true)))

(declare-fun lt!227419 () SeekEntryResult!3994)

(assert (=> b!500757 (= lt!227419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227416 lt!227412 lt!227420 mask!3524))))

(declare-fun b!500758 () Bool)

(assert (=> b!500758 (= e!293370 e!293365)))

(declare-fun res!302666 () Bool)

(assert (=> b!500758 (=> (not res!302666) (not e!293365))))

(declare-fun lt!227414 () SeekEntryResult!3994)

(assert (=> b!500758 (= res!302666 (or (= lt!227414 (MissingZero!3994 i!1204)) (= lt!227414 (MissingVacant!3994 i!1204))))))

(assert (=> b!500758 (= lt!227414 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!500759 () Bool)

(declare-fun Unit!15068 () Unit!15066)

(assert (=> b!500759 (= e!293369 Unit!15068)))

(declare-fun lt!227417 () Unit!15066)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15066)

(assert (=> b!500759 (= lt!227417 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227416 #b00000000000000000000000000000000 (index!18160 lt!227418) (x!47218 lt!227418) mask!3524))))

(declare-fun res!302660 () Bool)

(assert (=> b!500759 (= res!302660 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227416 lt!227412 lt!227420 mask!3524) (Intermediate!3994 false (index!18160 lt!227418) (x!47218 lt!227418))))))

(assert (=> b!500759 (=> (not res!302660) (not e!293367))))

(assert (=> b!500759 e!293367))

(declare-fun b!500760 () Bool)

(declare-fun Unit!15069 () Unit!15066)

(assert (=> b!500760 (= e!293369 Unit!15069)))

(declare-fun b!500761 () Bool)

(declare-fun res!302672 () Bool)

(assert (=> b!500761 (=> (not res!302672) (not e!293365))))

(assert (=> b!500761 (= res!302672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500762 () Bool)

(declare-fun res!302663 () Bool)

(assert (=> b!500762 (=> (not res!302663) (not e!293370))))

(assert (=> b!500762 (= res!302663 (and (= (size!15884 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15884 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15884 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45498 res!302670) b!500762))

(assert (= (and b!500762 res!302663) b!500755))

(assert (= (and b!500755 res!302661) b!500751))

(assert (= (and b!500751 res!302664) b!500756))

(assert (= (and b!500756 res!302669) b!500758))

(assert (= (and b!500758 res!302666) b!500761))

(assert (= (and b!500761 res!302672) b!500752))

(assert (= (and b!500752 res!302662) b!500753))

(assert (= (and b!500753 res!302665) b!500750))

(assert (= (and b!500753 (not res!302667)) b!500749))

(assert (= (and b!500749 (not res!302671)) b!500754))

(assert (= (and b!500754 c!59321) b!500759))

(assert (= (and b!500754 (not c!59321)) b!500760))

(assert (= (and b!500759 res!302660) b!500748))

(assert (= (and b!500754 (not res!302668)) b!500757))

(declare-fun m!481885 () Bool)

(assert (=> b!500752 m!481885))

(declare-fun m!481887 () Bool)

(assert (=> b!500758 m!481887))

(declare-fun m!481889 () Bool)

(assert (=> b!500757 m!481889))

(declare-fun m!481891 () Bool)

(assert (=> b!500759 m!481891))

(assert (=> b!500759 m!481889))

(declare-fun m!481893 () Bool)

(assert (=> b!500754 m!481893))

(declare-fun m!481895 () Bool)

(assert (=> b!500754 m!481895))

(declare-fun m!481897 () Bool)

(assert (=> start!45498 m!481897))

(declare-fun m!481899 () Bool)

(assert (=> start!45498 m!481899))

(declare-fun m!481901 () Bool)

(assert (=> b!500756 m!481901))

(declare-fun m!481903 () Bool)

(assert (=> b!500761 m!481903))

(assert (=> b!500755 m!481895))

(assert (=> b!500755 m!481895))

(declare-fun m!481905 () Bool)

(assert (=> b!500755 m!481905))

(declare-fun m!481907 () Bool)

(assert (=> b!500751 m!481907))

(declare-fun m!481909 () Bool)

(assert (=> b!500753 m!481909))

(declare-fun m!481911 () Bool)

(assert (=> b!500753 m!481911))

(declare-fun m!481913 () Bool)

(assert (=> b!500753 m!481913))

(assert (=> b!500753 m!481895))

(declare-fun m!481915 () Bool)

(assert (=> b!500753 m!481915))

(assert (=> b!500753 m!481895))

(declare-fun m!481917 () Bool)

(assert (=> b!500753 m!481917))

(assert (=> b!500753 m!481895))

(declare-fun m!481919 () Bool)

(assert (=> b!500753 m!481919))

(declare-fun m!481921 () Bool)

(assert (=> b!500753 m!481921))

(declare-fun m!481923 () Bool)

(assert (=> b!500753 m!481923))

(assert (=> b!500750 m!481895))

(assert (=> b!500750 m!481895))

(declare-fun m!481925 () Bool)

(assert (=> b!500750 m!481925))

(check-sat (not b!500756) (not start!45498) (not b!500753) (not b!500761) (not b!500759) (not b!500751) (not b!500758) (not b!500752) (not b!500755) (not b!500757) (not b!500750))
(check-sat)

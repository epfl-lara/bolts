; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45270 () Bool)

(assert start!45270)

(declare-fun b!496918 () Bool)

(declare-fun e!291323 () Bool)

(assert (=> b!496918 (= e!291323 true)))

(declare-datatypes ((SeekEntryResult!3913 0))(
  ( (MissingZero!3913 (index!17831 (_ BitVec 32))) (Found!3913 (index!17832 (_ BitVec 32))) (Intermediate!3913 (undefined!4725 Bool) (index!17833 (_ BitVec 32)) (x!46912 (_ BitVec 32))) (Undefined!3913) (MissingVacant!3913 (index!17834 (_ BitVec 32))) )
))
(declare-fun lt!225014 () SeekEntryResult!3913)

(declare-datatypes ((array!32118 0))(
  ( (array!32119 (arr!15439 (Array (_ BitVec 32) (_ BitVec 64))) (size!15803 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32118)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496918 (and (bvslt (x!46912 lt!225014) #b01111111111111111111111111111110) (or (= (select (arr!15439 a!3235) (index!17833 lt!225014)) (select (arr!15439 a!3235) j!176)) (= (select (arr!15439 a!3235) (index!17833 lt!225014)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15439 a!3235) (index!17833 lt!225014)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496919 () Bool)

(declare-fun res!299465 () Bool)

(declare-fun e!291325 () Bool)

(assert (=> b!496919 (=> (not res!299465) (not e!291325))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32118 (_ BitVec 32)) Bool)

(assert (=> b!496919 (= res!299465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496920 () Bool)

(declare-fun e!291322 () Bool)

(assert (=> b!496920 (= e!291322 e!291325)))

(declare-fun res!299460 () Bool)

(assert (=> b!496920 (=> (not res!299460) (not e!291325))))

(declare-fun lt!225010 () SeekEntryResult!3913)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496920 (= res!299460 (or (= lt!225010 (MissingZero!3913 i!1204)) (= lt!225010 (MissingVacant!3913 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32118 (_ BitVec 32)) SeekEntryResult!3913)

(assert (=> b!496920 (= lt!225010 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!496921 () Bool)

(declare-fun res!299461 () Bool)

(assert (=> b!496921 (=> (not res!299461) (not e!291325))))

(declare-datatypes ((List!9650 0))(
  ( (Nil!9647) (Cons!9646 (h!10517 (_ BitVec 64)) (t!15886 List!9650)) )
))
(declare-fun arrayNoDuplicates!0 (array!32118 (_ BitVec 32) List!9650) Bool)

(assert (=> b!496921 (= res!299461 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9647))))

(declare-fun b!496922 () Bool)

(declare-fun res!299459 () Bool)

(assert (=> b!496922 (=> (not res!299459) (not e!291322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496922 (= res!299459 (validKeyInArray!0 (select (arr!15439 a!3235) j!176)))))

(declare-fun e!291324 () Bool)

(declare-fun b!496923 () Bool)

(assert (=> b!496923 (= e!291324 (= (seekEntryOrOpen!0 (select (arr!15439 a!3235) j!176) a!3235 mask!3524) (Found!3913 j!176)))))

(declare-fun b!496925 () Bool)

(assert (=> b!496925 (= e!291325 (not e!291323))))

(declare-fun res!299464 () Bool)

(assert (=> b!496925 (=> res!299464 e!291323)))

(declare-fun lt!225012 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32118 (_ BitVec 32)) SeekEntryResult!3913)

(assert (=> b!496925 (= res!299464 (= lt!225014 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225012 (select (store (arr!15439 a!3235) i!1204 k0!2280) j!176) (array!32119 (store (arr!15439 a!3235) i!1204 k0!2280) (size!15803 a!3235)) mask!3524)))))

(declare-fun lt!225011 () (_ BitVec 32))

(assert (=> b!496925 (= lt!225014 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225011 (select (arr!15439 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496925 (= lt!225012 (toIndex!0 (select (store (arr!15439 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496925 (= lt!225011 (toIndex!0 (select (arr!15439 a!3235) j!176) mask!3524))))

(assert (=> b!496925 e!291324))

(declare-fun res!299462 () Bool)

(assert (=> b!496925 (=> (not res!299462) (not e!291324))))

(assert (=> b!496925 (= res!299462 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14764 0))(
  ( (Unit!14765) )
))
(declare-fun lt!225013 () Unit!14764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32118 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14764)

(assert (=> b!496925 (= lt!225013 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496926 () Bool)

(declare-fun res!299455 () Bool)

(assert (=> b!496926 (=> (not res!299455) (not e!291322))))

(assert (=> b!496926 (= res!299455 (validKeyInArray!0 k0!2280))))

(declare-fun b!496927 () Bool)

(declare-fun res!299463 () Bool)

(assert (=> b!496927 (=> res!299463 e!291323)))

(get-info :version)

(assert (=> b!496927 (= res!299463 (or (undefined!4725 lt!225014) (not ((_ is Intermediate!3913) lt!225014))))))

(declare-fun b!496928 () Bool)

(declare-fun res!299457 () Bool)

(assert (=> b!496928 (=> (not res!299457) (not e!291322))))

(declare-fun arrayContainsKey!0 (array!32118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496928 (= res!299457 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496924 () Bool)

(declare-fun res!299458 () Bool)

(assert (=> b!496924 (=> (not res!299458) (not e!291322))))

(assert (=> b!496924 (= res!299458 (and (= (size!15803 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15803 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15803 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!299456 () Bool)

(assert (=> start!45270 (=> (not res!299456) (not e!291322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45270 (= res!299456 (validMask!0 mask!3524))))

(assert (=> start!45270 e!291322))

(assert (=> start!45270 true))

(declare-fun array_inv!11213 (array!32118) Bool)

(assert (=> start!45270 (array_inv!11213 a!3235)))

(assert (= (and start!45270 res!299456) b!496924))

(assert (= (and b!496924 res!299458) b!496922))

(assert (= (and b!496922 res!299459) b!496926))

(assert (= (and b!496926 res!299455) b!496928))

(assert (= (and b!496928 res!299457) b!496920))

(assert (= (and b!496920 res!299460) b!496919))

(assert (= (and b!496919 res!299465) b!496921))

(assert (= (and b!496921 res!299461) b!496925))

(assert (= (and b!496925 res!299462) b!496923))

(assert (= (and b!496925 (not res!299464)) b!496927))

(assert (= (and b!496927 (not res!299463)) b!496918))

(declare-fun m!478293 () Bool)

(assert (=> start!45270 m!478293))

(declare-fun m!478295 () Bool)

(assert (=> start!45270 m!478295))

(declare-fun m!478297 () Bool)

(assert (=> b!496926 m!478297))

(declare-fun m!478299 () Bool)

(assert (=> b!496928 m!478299))

(declare-fun m!478301 () Bool)

(assert (=> b!496925 m!478301))

(declare-fun m!478303 () Bool)

(assert (=> b!496925 m!478303))

(declare-fun m!478305 () Bool)

(assert (=> b!496925 m!478305))

(declare-fun m!478307 () Bool)

(assert (=> b!496925 m!478307))

(declare-fun m!478309 () Bool)

(assert (=> b!496925 m!478309))

(assert (=> b!496925 m!478307))

(declare-fun m!478311 () Bool)

(assert (=> b!496925 m!478311))

(assert (=> b!496925 m!478305))

(declare-fun m!478313 () Bool)

(assert (=> b!496925 m!478313))

(assert (=> b!496925 m!478307))

(declare-fun m!478315 () Bool)

(assert (=> b!496925 m!478315))

(assert (=> b!496925 m!478305))

(declare-fun m!478317 () Bool)

(assert (=> b!496925 m!478317))

(assert (=> b!496922 m!478307))

(assert (=> b!496922 m!478307))

(declare-fun m!478319 () Bool)

(assert (=> b!496922 m!478319))

(declare-fun m!478321 () Bool)

(assert (=> b!496921 m!478321))

(assert (=> b!496923 m!478307))

(assert (=> b!496923 m!478307))

(declare-fun m!478323 () Bool)

(assert (=> b!496923 m!478323))

(declare-fun m!478325 () Bool)

(assert (=> b!496918 m!478325))

(assert (=> b!496918 m!478307))

(declare-fun m!478327 () Bool)

(assert (=> b!496920 m!478327))

(declare-fun m!478329 () Bool)

(assert (=> b!496919 m!478329))

(check-sat (not b!496922) (not b!496926) (not b!496921) (not b!496928) (not b!496920) (not b!496923) (not b!496925) (not start!45270) (not b!496919))
(check-sat)

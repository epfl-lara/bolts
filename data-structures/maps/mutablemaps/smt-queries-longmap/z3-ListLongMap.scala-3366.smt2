; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46260 () Bool)

(assert start!46260)

(declare-fun b!512045 () Bool)

(declare-fun e!299078 () Bool)

(declare-fun e!299080 () Bool)

(assert (=> b!512045 (= e!299078 e!299080)))

(declare-fun res!312865 () Bool)

(assert (=> b!512045 (=> (not res!312865) (not e!299080))))

(declare-datatypes ((SeekEntryResult!4285 0))(
  ( (MissingZero!4285 (index!19328 (_ BitVec 32))) (Found!4285 (index!19329 (_ BitVec 32))) (Intermediate!4285 (undefined!5097 Bool) (index!19330 (_ BitVec 32)) (x!48303 (_ BitVec 32))) (Undefined!4285) (MissingVacant!4285 (index!19331 (_ BitVec 32))) )
))
(declare-fun lt!234424 () SeekEntryResult!4285)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512045 (= res!312865 (or (= lt!234424 (MissingZero!4285 i!1204)) (= lt!234424 (MissingVacant!4285 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32874 0))(
  ( (array!32875 (arr!15811 (Array (_ BitVec 32) (_ BitVec 64))) (size!16175 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32874)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32874 (_ BitVec 32)) SeekEntryResult!4285)

(assert (=> b!512045 (= lt!234424 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!512046 () Bool)

(declare-fun res!312860 () Bool)

(assert (=> b!512046 (=> (not res!312860) (not e!299080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32874 (_ BitVec 32)) Bool)

(assert (=> b!512046 (= res!312860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512047 () Bool)

(declare-fun res!312866 () Bool)

(declare-fun e!299079 () Bool)

(assert (=> b!512047 (=> res!312866 e!299079)))

(declare-fun lt!234427 () SeekEntryResult!4285)

(get-info :version)

(assert (=> b!512047 (= res!312866 (or (not ((_ is Intermediate!4285) lt!234427)) (not (undefined!5097 lt!234427))))))

(declare-fun b!512049 () Bool)

(declare-fun res!312857 () Bool)

(assert (=> b!512049 (=> (not res!312857) (not e!299080))))

(declare-datatypes ((List!10022 0))(
  ( (Nil!10019) (Cons!10018 (h!10898 (_ BitVec 64)) (t!16258 List!10022)) )
))
(declare-fun arrayNoDuplicates!0 (array!32874 (_ BitVec 32) List!10022) Bool)

(assert (=> b!512049 (= res!312857 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10019))))

(declare-fun b!512050 () Bool)

(declare-fun res!312863 () Bool)

(assert (=> b!512050 (=> (not res!312863) (not e!299078))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512050 (= res!312863 (validKeyInArray!0 (select (arr!15811 a!3235) j!176)))))

(declare-fun b!512051 () Bool)

(assert (=> b!512051 (= e!299079 true)))

(declare-fun lt!234426 () SeekEntryResult!4285)

(assert (=> b!512051 (= lt!234426 Undefined!4285)))

(declare-fun b!512052 () Bool)

(declare-fun res!312861 () Bool)

(assert (=> b!512052 (=> (not res!312861) (not e!299078))))

(assert (=> b!512052 (= res!312861 (validKeyInArray!0 k0!2280))))

(declare-fun b!512053 () Bool)

(declare-fun res!312864 () Bool)

(assert (=> b!512053 (=> (not res!312864) (not e!299078))))

(declare-fun arrayContainsKey!0 (array!32874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512053 (= res!312864 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512054 () Bool)

(assert (=> b!512054 (= e!299080 (not e!299079))))

(declare-fun res!312862 () Bool)

(assert (=> b!512054 (=> res!312862 e!299079)))

(declare-fun lt!234423 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32874 (_ BitVec 32)) SeekEntryResult!4285)

(assert (=> b!512054 (= res!312862 (= lt!234427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234423 (select (store (arr!15811 a!3235) i!1204 k0!2280) j!176) (array!32875 (store (arr!15811 a!3235) i!1204 k0!2280) (size!16175 a!3235)) mask!3524)))))

(declare-fun lt!234428 () (_ BitVec 32))

(assert (=> b!512054 (= lt!234427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234428 (select (arr!15811 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512054 (= lt!234423 (toIndex!0 (select (store (arr!15811 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!512054 (= lt!234428 (toIndex!0 (select (arr!15811 a!3235) j!176) mask!3524))))

(assert (=> b!512054 (= lt!234426 (Found!4285 j!176))))

(assert (=> b!512054 (= lt!234426 (seekEntryOrOpen!0 (select (arr!15811 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!512054 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15820 0))(
  ( (Unit!15821) )
))
(declare-fun lt!234425 () Unit!15820)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32874 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15820)

(assert (=> b!512054 (= lt!234425 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512048 () Bool)

(declare-fun res!312858 () Bool)

(assert (=> b!512048 (=> (not res!312858) (not e!299078))))

(assert (=> b!512048 (= res!312858 (and (= (size!16175 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16175 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16175 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!312859 () Bool)

(assert (=> start!46260 (=> (not res!312859) (not e!299078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46260 (= res!312859 (validMask!0 mask!3524))))

(assert (=> start!46260 e!299078))

(assert (=> start!46260 true))

(declare-fun array_inv!11585 (array!32874) Bool)

(assert (=> start!46260 (array_inv!11585 a!3235)))

(assert (= (and start!46260 res!312859) b!512048))

(assert (= (and b!512048 res!312858) b!512050))

(assert (= (and b!512050 res!312863) b!512052))

(assert (= (and b!512052 res!312861) b!512053))

(assert (= (and b!512053 res!312864) b!512045))

(assert (= (and b!512045 res!312865) b!512046))

(assert (= (and b!512046 res!312860) b!512049))

(assert (= (and b!512049 res!312857) b!512054))

(assert (= (and b!512054 (not res!312862)) b!512047))

(assert (= (and b!512047 (not res!312866)) b!512051))

(declare-fun m!493699 () Bool)

(assert (=> b!512053 m!493699))

(declare-fun m!493701 () Bool)

(assert (=> b!512049 m!493701))

(declare-fun m!493703 () Bool)

(assert (=> b!512046 m!493703))

(declare-fun m!493705 () Bool)

(assert (=> b!512045 m!493705))

(declare-fun m!493707 () Bool)

(assert (=> b!512052 m!493707))

(declare-fun m!493709 () Bool)

(assert (=> start!46260 m!493709))

(declare-fun m!493711 () Bool)

(assert (=> start!46260 m!493711))

(declare-fun m!493713 () Bool)

(assert (=> b!512054 m!493713))

(declare-fun m!493715 () Bool)

(assert (=> b!512054 m!493715))

(declare-fun m!493717 () Bool)

(assert (=> b!512054 m!493717))

(assert (=> b!512054 m!493717))

(declare-fun m!493719 () Bool)

(assert (=> b!512054 m!493719))

(declare-fun m!493721 () Bool)

(assert (=> b!512054 m!493721))

(declare-fun m!493723 () Bool)

(assert (=> b!512054 m!493723))

(assert (=> b!512054 m!493721))

(declare-fun m!493725 () Bool)

(assert (=> b!512054 m!493725))

(assert (=> b!512054 m!493717))

(declare-fun m!493727 () Bool)

(assert (=> b!512054 m!493727))

(assert (=> b!512054 m!493721))

(declare-fun m!493729 () Bool)

(assert (=> b!512054 m!493729))

(assert (=> b!512054 m!493721))

(declare-fun m!493731 () Bool)

(assert (=> b!512054 m!493731))

(assert (=> b!512050 m!493721))

(assert (=> b!512050 m!493721))

(declare-fun m!493733 () Bool)

(assert (=> b!512050 m!493733))

(check-sat (not b!512050) (not b!512049) (not b!512054) (not b!512053) (not start!46260) (not b!512052) (not b!512045) (not b!512046))
(check-sat)

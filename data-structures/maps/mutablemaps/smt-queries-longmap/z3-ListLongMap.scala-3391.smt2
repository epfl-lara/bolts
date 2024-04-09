; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46770 () Bool)

(assert start!46770)

(declare-fun b!516208 () Bool)

(declare-fun res!315928 () Bool)

(declare-fun e!301279 () Bool)

(assert (=> b!516208 (=> res!315928 e!301279)))

(declare-datatypes ((SeekEntryResult!4360 0))(
  ( (MissingZero!4360 (index!19628 (_ BitVec 32))) (Found!4360 (index!19629 (_ BitVec 32))) (Intermediate!4360 (undefined!5172 Bool) (index!19630 (_ BitVec 32)) (x!48614 (_ BitVec 32))) (Undefined!4360) (MissingVacant!4360 (index!19631 (_ BitVec 32))) )
))
(declare-fun lt!236364 () SeekEntryResult!4360)

(get-info :version)

(assert (=> b!516208 (= res!315928 (or (undefined!5172 lt!236364) (not ((_ is Intermediate!4360) lt!236364))))))

(declare-fun b!516209 () Bool)

(declare-fun res!315922 () Bool)

(declare-fun e!301281 () Bool)

(assert (=> b!516209 (=> (not res!315922) (not e!301281))))

(declare-datatypes ((array!33042 0))(
  ( (array!33043 (arr!15886 (Array (_ BitVec 32) (_ BitVec 64))) (size!16250 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33042)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516209 (= res!315922 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516210 () Bool)

(declare-fun e!301278 () Bool)

(assert (=> b!516210 (= e!301278 (not e!301279))))

(declare-fun res!315931 () Bool)

(assert (=> b!516210 (=> res!315931 e!301279)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!236365 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33042 (_ BitVec 32)) SeekEntryResult!4360)

(assert (=> b!516210 (= res!315931 (= lt!236364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236365 (select (store (arr!15886 a!3235) i!1204 k0!2280) j!176) (array!33043 (store (arr!15886 a!3235) i!1204 k0!2280) (size!16250 a!3235)) mask!3524)))))

(declare-fun lt!236362 () (_ BitVec 32))

(assert (=> b!516210 (= lt!236364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236362 (select (arr!15886 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516210 (= lt!236365 (toIndex!0 (select (store (arr!15886 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!516210 (= lt!236362 (toIndex!0 (select (arr!15886 a!3235) j!176) mask!3524))))

(declare-fun e!301280 () Bool)

(assert (=> b!516210 e!301280))

(declare-fun res!315927 () Bool)

(assert (=> b!516210 (=> (not res!315927) (not e!301280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33042 (_ BitVec 32)) Bool)

(assert (=> b!516210 (= res!315927 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15970 0))(
  ( (Unit!15971) )
))
(declare-fun lt!236366 () Unit!15970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33042 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15970)

(assert (=> b!516210 (= lt!236366 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516211 () Bool)

(assert (=> b!516211 (= e!301281 e!301278)))

(declare-fun res!315926 () Bool)

(assert (=> b!516211 (=> (not res!315926) (not e!301278))))

(declare-fun lt!236363 () SeekEntryResult!4360)

(assert (=> b!516211 (= res!315926 (or (= lt!236363 (MissingZero!4360 i!1204)) (= lt!236363 (MissingVacant!4360 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33042 (_ BitVec 32)) SeekEntryResult!4360)

(assert (=> b!516211 (= lt!236363 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!516212 () Bool)

(declare-fun res!315924 () Bool)

(assert (=> b!516212 (=> (not res!315924) (not e!301278))))

(declare-datatypes ((List!10097 0))(
  ( (Nil!10094) (Cons!10093 (h!10991 (_ BitVec 64)) (t!16333 List!10097)) )
))
(declare-fun arrayNoDuplicates!0 (array!33042 (_ BitVec 32) List!10097) Bool)

(assert (=> b!516212 (= res!315924 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10094))))

(declare-fun b!516213 () Bool)

(declare-fun res!315923 () Bool)

(assert (=> b!516213 (=> (not res!315923) (not e!301278))))

(assert (=> b!516213 (= res!315923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516214 () Bool)

(declare-fun res!315930 () Bool)

(assert (=> b!516214 (=> (not res!315930) (not e!301281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516214 (= res!315930 (validKeyInArray!0 (select (arr!15886 a!3235) j!176)))))

(declare-fun b!516215 () Bool)

(assert (=> b!516215 (= e!301280 (= (seekEntryOrOpen!0 (select (arr!15886 a!3235) j!176) a!3235 mask!3524) (Found!4360 j!176)))))

(declare-fun b!516216 () Bool)

(declare-fun res!315929 () Bool)

(assert (=> b!516216 (=> (not res!315929) (not e!301281))))

(assert (=> b!516216 (= res!315929 (validKeyInArray!0 k0!2280))))

(declare-fun b!516217 () Bool)

(assert (=> b!516217 (= e!301279 true)))

(assert (=> b!516217 (and (bvslt (x!48614 lt!236364) #b01111111111111111111111111111110) (or (= (select (arr!15886 a!3235) (index!19630 lt!236364)) (select (arr!15886 a!3235) j!176)) (= (select (arr!15886 a!3235) (index!19630 lt!236364)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15886 a!3235) (index!19630 lt!236364)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516218 () Bool)

(declare-fun res!315925 () Bool)

(assert (=> b!516218 (=> (not res!315925) (not e!301281))))

(assert (=> b!516218 (= res!315925 (and (= (size!16250 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16250 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16250 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!315932 () Bool)

(assert (=> start!46770 (=> (not res!315932) (not e!301281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46770 (= res!315932 (validMask!0 mask!3524))))

(assert (=> start!46770 e!301281))

(assert (=> start!46770 true))

(declare-fun array_inv!11660 (array!33042) Bool)

(assert (=> start!46770 (array_inv!11660 a!3235)))

(assert (= (and start!46770 res!315932) b!516218))

(assert (= (and b!516218 res!315925) b!516214))

(assert (= (and b!516214 res!315930) b!516216))

(assert (= (and b!516216 res!315929) b!516209))

(assert (= (and b!516209 res!315922) b!516211))

(assert (= (and b!516211 res!315926) b!516213))

(assert (= (and b!516213 res!315923) b!516212))

(assert (= (and b!516212 res!315924) b!516210))

(assert (= (and b!516210 res!315927) b!516215))

(assert (= (and b!516210 (not res!315931)) b!516208))

(assert (= (and b!516208 (not res!315928)) b!516217))

(declare-fun m!497727 () Bool)

(assert (=> b!516216 m!497727))

(declare-fun m!497729 () Bool)

(assert (=> b!516212 m!497729))

(declare-fun m!497731 () Bool)

(assert (=> b!516217 m!497731))

(declare-fun m!497733 () Bool)

(assert (=> b!516217 m!497733))

(assert (=> b!516215 m!497733))

(assert (=> b!516215 m!497733))

(declare-fun m!497735 () Bool)

(assert (=> b!516215 m!497735))

(declare-fun m!497737 () Bool)

(assert (=> start!46770 m!497737))

(declare-fun m!497739 () Bool)

(assert (=> start!46770 m!497739))

(assert (=> b!516214 m!497733))

(assert (=> b!516214 m!497733))

(declare-fun m!497741 () Bool)

(assert (=> b!516214 m!497741))

(declare-fun m!497743 () Bool)

(assert (=> b!516211 m!497743))

(declare-fun m!497745 () Bool)

(assert (=> b!516213 m!497745))

(declare-fun m!497747 () Bool)

(assert (=> b!516210 m!497747))

(declare-fun m!497749 () Bool)

(assert (=> b!516210 m!497749))

(declare-fun m!497751 () Bool)

(assert (=> b!516210 m!497751))

(assert (=> b!516210 m!497751))

(declare-fun m!497753 () Bool)

(assert (=> b!516210 m!497753))

(assert (=> b!516210 m!497733))

(declare-fun m!497755 () Bool)

(assert (=> b!516210 m!497755))

(assert (=> b!516210 m!497733))

(declare-fun m!497757 () Bool)

(assert (=> b!516210 m!497757))

(assert (=> b!516210 m!497751))

(declare-fun m!497759 () Bool)

(assert (=> b!516210 m!497759))

(assert (=> b!516210 m!497733))

(declare-fun m!497761 () Bool)

(assert (=> b!516210 m!497761))

(declare-fun m!497763 () Bool)

(assert (=> b!516209 m!497763))

(check-sat (not start!46770) (not b!516209) (not b!516213) (not b!516212) (not b!516210) (not b!516214) (not b!516216) (not b!516211) (not b!516215))
(check-sat)

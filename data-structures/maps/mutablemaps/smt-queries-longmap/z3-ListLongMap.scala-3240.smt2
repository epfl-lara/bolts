; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45258 () Bool)

(assert start!45258)

(declare-fun b!496720 () Bool)

(declare-fun res!299261 () Bool)

(declare-fun e!291234 () Bool)

(assert (=> b!496720 (=> (not res!299261) (not e!291234))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496720 (= res!299261 (validKeyInArray!0 k0!2280))))

(declare-fun res!299266 () Bool)

(assert (=> start!45258 (=> (not res!299266) (not e!291234))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45258 (= res!299266 (validMask!0 mask!3524))))

(assert (=> start!45258 e!291234))

(assert (=> start!45258 true))

(declare-datatypes ((array!32106 0))(
  ( (array!32107 (arr!15433 (Array (_ BitVec 32) (_ BitVec 64))) (size!15797 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32106)

(declare-fun array_inv!11207 (array!32106) Bool)

(assert (=> start!45258 (array_inv!11207 a!3235)))

(declare-fun b!496721 () Bool)

(declare-fun e!291235 () Bool)

(assert (=> b!496721 (= e!291234 e!291235)))

(declare-fun res!299262 () Bool)

(assert (=> b!496721 (=> (not res!299262) (not e!291235))))

(declare-datatypes ((SeekEntryResult!3907 0))(
  ( (MissingZero!3907 (index!17807 (_ BitVec 32))) (Found!3907 (index!17808 (_ BitVec 32))) (Intermediate!3907 (undefined!4719 Bool) (index!17809 (_ BitVec 32)) (x!46890 (_ BitVec 32))) (Undefined!3907) (MissingVacant!3907 (index!17810 (_ BitVec 32))) )
))
(declare-fun lt!224923 () SeekEntryResult!3907)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496721 (= res!299262 (or (= lt!224923 (MissingZero!3907 i!1204)) (= lt!224923 (MissingVacant!3907 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32106 (_ BitVec 32)) SeekEntryResult!3907)

(assert (=> b!496721 (= lt!224923 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!496722 () Bool)

(declare-fun e!291231 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496722 (= e!291231 (= (seekEntryOrOpen!0 (select (arr!15433 a!3235) j!176) a!3235 mask!3524) (Found!3907 j!176)))))

(declare-fun b!496723 () Bool)

(declare-fun res!299267 () Bool)

(assert (=> b!496723 (=> (not res!299267) (not e!291234))))

(assert (=> b!496723 (= res!299267 (and (= (size!15797 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15797 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15797 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496724 () Bool)

(declare-fun res!299265 () Bool)

(assert (=> b!496724 (=> (not res!299265) (not e!291235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32106 (_ BitVec 32)) Bool)

(assert (=> b!496724 (= res!299265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496725 () Bool)

(declare-fun res!299260 () Bool)

(assert (=> b!496725 (=> (not res!299260) (not e!291234))))

(assert (=> b!496725 (= res!299260 (validKeyInArray!0 (select (arr!15433 a!3235) j!176)))))

(declare-fun b!496726 () Bool)

(declare-fun res!299259 () Bool)

(assert (=> b!496726 (=> (not res!299259) (not e!291234))))

(declare-fun arrayContainsKey!0 (array!32106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496726 (= res!299259 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496727 () Bool)

(declare-fun e!291233 () Bool)

(assert (=> b!496727 (= e!291235 (not e!291233))))

(declare-fun res!299264 () Bool)

(assert (=> b!496727 (=> res!299264 e!291233)))

(declare-fun lt!224922 () (_ BitVec 32))

(declare-fun lt!224921 () SeekEntryResult!3907)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32106 (_ BitVec 32)) SeekEntryResult!3907)

(assert (=> b!496727 (= res!299264 (= lt!224921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224922 (select (store (arr!15433 a!3235) i!1204 k0!2280) j!176) (array!32107 (store (arr!15433 a!3235) i!1204 k0!2280) (size!15797 a!3235)) mask!3524)))))

(declare-fun lt!224920 () (_ BitVec 32))

(assert (=> b!496727 (= lt!224921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224920 (select (arr!15433 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496727 (= lt!224922 (toIndex!0 (select (store (arr!15433 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496727 (= lt!224920 (toIndex!0 (select (arr!15433 a!3235) j!176) mask!3524))))

(assert (=> b!496727 e!291231))

(declare-fun res!299263 () Bool)

(assert (=> b!496727 (=> (not res!299263) (not e!291231))))

(assert (=> b!496727 (= res!299263 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14752 0))(
  ( (Unit!14753) )
))
(declare-fun lt!224924 () Unit!14752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32106 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14752)

(assert (=> b!496727 (= lt!224924 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496728 () Bool)

(declare-fun res!299257 () Bool)

(assert (=> b!496728 (=> res!299257 e!291233)))

(get-info :version)

(assert (=> b!496728 (= res!299257 (or (undefined!4719 lt!224921) (not ((_ is Intermediate!3907) lt!224921))))))

(declare-fun b!496729 () Bool)

(assert (=> b!496729 (= e!291233 true)))

(assert (=> b!496729 (and (bvslt (x!46890 lt!224921) #b01111111111111111111111111111110) (or (= (select (arr!15433 a!3235) (index!17809 lt!224921)) (select (arr!15433 a!3235) j!176)) (= (select (arr!15433 a!3235) (index!17809 lt!224921)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15433 a!3235) (index!17809 lt!224921)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496730 () Bool)

(declare-fun res!299258 () Bool)

(assert (=> b!496730 (=> (not res!299258) (not e!291235))))

(declare-datatypes ((List!9644 0))(
  ( (Nil!9641) (Cons!9640 (h!10511 (_ BitVec 64)) (t!15880 List!9644)) )
))
(declare-fun arrayNoDuplicates!0 (array!32106 (_ BitVec 32) List!9644) Bool)

(assert (=> b!496730 (= res!299258 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9641))))

(assert (= (and start!45258 res!299266) b!496723))

(assert (= (and b!496723 res!299267) b!496725))

(assert (= (and b!496725 res!299260) b!496720))

(assert (= (and b!496720 res!299261) b!496726))

(assert (= (and b!496726 res!299259) b!496721))

(assert (= (and b!496721 res!299262) b!496724))

(assert (= (and b!496724 res!299265) b!496730))

(assert (= (and b!496730 res!299258) b!496727))

(assert (= (and b!496727 res!299263) b!496722))

(assert (= (and b!496727 (not res!299264)) b!496728))

(assert (= (and b!496728 (not res!299257)) b!496729))

(declare-fun m!478065 () Bool)

(assert (=> b!496727 m!478065))

(declare-fun m!478067 () Bool)

(assert (=> b!496727 m!478067))

(declare-fun m!478069 () Bool)

(assert (=> b!496727 m!478069))

(declare-fun m!478071 () Bool)

(assert (=> b!496727 m!478071))

(assert (=> b!496727 m!478069))

(declare-fun m!478073 () Bool)

(assert (=> b!496727 m!478073))

(declare-fun m!478075 () Bool)

(assert (=> b!496727 m!478075))

(declare-fun m!478077 () Bool)

(assert (=> b!496727 m!478077))

(assert (=> b!496727 m!478069))

(declare-fun m!478079 () Bool)

(assert (=> b!496727 m!478079))

(assert (=> b!496727 m!478075))

(declare-fun m!478081 () Bool)

(assert (=> b!496727 m!478081))

(assert (=> b!496727 m!478075))

(declare-fun m!478083 () Bool)

(assert (=> b!496726 m!478083))

(assert (=> b!496725 m!478069))

(assert (=> b!496725 m!478069))

(declare-fun m!478085 () Bool)

(assert (=> b!496725 m!478085))

(declare-fun m!478087 () Bool)

(assert (=> start!45258 m!478087))

(declare-fun m!478089 () Bool)

(assert (=> start!45258 m!478089))

(declare-fun m!478091 () Bool)

(assert (=> b!496721 m!478091))

(declare-fun m!478093 () Bool)

(assert (=> b!496729 m!478093))

(assert (=> b!496729 m!478069))

(assert (=> b!496722 m!478069))

(assert (=> b!496722 m!478069))

(declare-fun m!478095 () Bool)

(assert (=> b!496722 m!478095))

(declare-fun m!478097 () Bool)

(assert (=> b!496724 m!478097))

(declare-fun m!478099 () Bool)

(assert (=> b!496730 m!478099))

(declare-fun m!478101 () Bool)

(assert (=> b!496720 m!478101))

(check-sat (not b!496721) (not start!45258) (not b!496726) (not b!496720) (not b!496724) (not b!496730) (not b!496727) (not b!496722) (not b!496725))
(check-sat)

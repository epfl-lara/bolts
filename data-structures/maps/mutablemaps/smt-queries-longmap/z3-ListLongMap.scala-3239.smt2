; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45252 () Bool)

(assert start!45252)

(declare-fun b!496621 () Bool)

(declare-fun res!299168 () Bool)

(declare-fun e!291186 () Bool)

(assert (=> b!496621 (=> (not res!299168) (not e!291186))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32100 0))(
  ( (array!32101 (arr!15430 (Array (_ BitVec 32) (_ BitVec 64))) (size!15794 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32100)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496621 (= res!299168 (and (= (size!15794 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15794 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15794 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496622 () Bool)

(declare-fun res!299166 () Bool)

(declare-fun e!291189 () Bool)

(assert (=> b!496622 (=> (not res!299166) (not e!291189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32100 (_ BitVec 32)) Bool)

(assert (=> b!496622 (= res!299166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496623 () Bool)

(declare-fun res!299158 () Bool)

(assert (=> b!496623 (=> (not res!299158) (not e!291189))))

(declare-datatypes ((List!9641 0))(
  ( (Nil!9638) (Cons!9637 (h!10508 (_ BitVec 64)) (t!15877 List!9641)) )
))
(declare-fun arrayNoDuplicates!0 (array!32100 (_ BitVec 32) List!9641) Bool)

(assert (=> b!496623 (= res!299158 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9638))))

(declare-fun b!496624 () Bool)

(assert (=> b!496624 (= e!291186 e!291189)))

(declare-fun res!299164 () Bool)

(assert (=> b!496624 (=> (not res!299164) (not e!291189))))

(declare-datatypes ((SeekEntryResult!3904 0))(
  ( (MissingZero!3904 (index!17795 (_ BitVec 32))) (Found!3904 (index!17796 (_ BitVec 32))) (Intermediate!3904 (undefined!4716 Bool) (index!17797 (_ BitVec 32)) (x!46879 (_ BitVec 32))) (Undefined!3904) (MissingVacant!3904 (index!17798 (_ BitVec 32))) )
))
(declare-fun lt!224875 () SeekEntryResult!3904)

(assert (=> b!496624 (= res!299164 (or (= lt!224875 (MissingZero!3904 i!1204)) (= lt!224875 (MissingVacant!3904 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32100 (_ BitVec 32)) SeekEntryResult!3904)

(assert (=> b!496624 (= lt!224875 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!496625 () Bool)

(declare-fun e!291190 () Bool)

(assert (=> b!496625 (= e!291189 (not e!291190))))

(declare-fun res!299167 () Bool)

(assert (=> b!496625 (=> res!299167 e!291190)))

(declare-fun lt!224879 () (_ BitVec 32))

(declare-fun lt!224876 () SeekEntryResult!3904)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32100 (_ BitVec 32)) SeekEntryResult!3904)

(assert (=> b!496625 (= res!299167 (= lt!224876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224879 (select (store (arr!15430 a!3235) i!1204 k0!2280) j!176) (array!32101 (store (arr!15430 a!3235) i!1204 k0!2280) (size!15794 a!3235)) mask!3524)))))

(declare-fun lt!224878 () (_ BitVec 32))

(assert (=> b!496625 (= lt!224876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224878 (select (arr!15430 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496625 (= lt!224879 (toIndex!0 (select (store (arr!15430 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496625 (= lt!224878 (toIndex!0 (select (arr!15430 a!3235) j!176) mask!3524))))

(declare-fun e!291187 () Bool)

(assert (=> b!496625 e!291187))

(declare-fun res!299163 () Bool)

(assert (=> b!496625 (=> (not res!299163) (not e!291187))))

(assert (=> b!496625 (= res!299163 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14746 0))(
  ( (Unit!14747) )
))
(declare-fun lt!224877 () Unit!14746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32100 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14746)

(assert (=> b!496625 (= lt!224877 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496626 () Bool)

(assert (=> b!496626 (= e!291190 true)))

(assert (=> b!496626 (and (bvslt (x!46879 lt!224876) #b01111111111111111111111111111110) (or (= (select (arr!15430 a!3235) (index!17797 lt!224876)) (select (arr!15430 a!3235) j!176)) (= (select (arr!15430 a!3235) (index!17797 lt!224876)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15430 a!3235) (index!17797 lt!224876)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496627 () Bool)

(declare-fun res!299165 () Bool)

(assert (=> b!496627 (=> (not res!299165) (not e!291186))))

(declare-fun arrayContainsKey!0 (array!32100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496627 (= res!299165 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496628 () Bool)

(declare-fun res!299159 () Bool)

(assert (=> b!496628 (=> res!299159 e!291190)))

(get-info :version)

(assert (=> b!496628 (= res!299159 (or (undefined!4716 lt!224876) (not ((_ is Intermediate!3904) lt!224876))))))

(declare-fun b!496629 () Bool)

(declare-fun res!299162 () Bool)

(assert (=> b!496629 (=> (not res!299162) (not e!291186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496629 (= res!299162 (validKeyInArray!0 (select (arr!15430 a!3235) j!176)))))

(declare-fun res!299161 () Bool)

(assert (=> start!45252 (=> (not res!299161) (not e!291186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45252 (= res!299161 (validMask!0 mask!3524))))

(assert (=> start!45252 e!291186))

(assert (=> start!45252 true))

(declare-fun array_inv!11204 (array!32100) Bool)

(assert (=> start!45252 (array_inv!11204 a!3235)))

(declare-fun b!496630 () Bool)

(declare-fun res!299160 () Bool)

(assert (=> b!496630 (=> (not res!299160) (not e!291186))))

(assert (=> b!496630 (= res!299160 (validKeyInArray!0 k0!2280))))

(declare-fun b!496631 () Bool)

(assert (=> b!496631 (= e!291187 (= (seekEntryOrOpen!0 (select (arr!15430 a!3235) j!176) a!3235 mask!3524) (Found!3904 j!176)))))

(assert (= (and start!45252 res!299161) b!496621))

(assert (= (and b!496621 res!299168) b!496629))

(assert (= (and b!496629 res!299162) b!496630))

(assert (= (and b!496630 res!299160) b!496627))

(assert (= (and b!496627 res!299165) b!496624))

(assert (= (and b!496624 res!299164) b!496622))

(assert (= (and b!496622 res!299166) b!496623))

(assert (= (and b!496623 res!299158) b!496625))

(assert (= (and b!496625 res!299163) b!496631))

(assert (= (and b!496625 (not res!299167)) b!496628))

(assert (= (and b!496628 (not res!299159)) b!496626))

(declare-fun m!477951 () Bool)

(assert (=> b!496625 m!477951))

(declare-fun m!477953 () Bool)

(assert (=> b!496625 m!477953))

(declare-fun m!477955 () Bool)

(assert (=> b!496625 m!477955))

(declare-fun m!477957 () Bool)

(assert (=> b!496625 m!477957))

(assert (=> b!496625 m!477955))

(assert (=> b!496625 m!477953))

(declare-fun m!477959 () Bool)

(assert (=> b!496625 m!477959))

(declare-fun m!477961 () Bool)

(assert (=> b!496625 m!477961))

(assert (=> b!496625 m!477953))

(declare-fun m!477963 () Bool)

(assert (=> b!496625 m!477963))

(declare-fun m!477965 () Bool)

(assert (=> b!496625 m!477965))

(assert (=> b!496625 m!477955))

(declare-fun m!477967 () Bool)

(assert (=> b!496625 m!477967))

(assert (=> b!496629 m!477955))

(assert (=> b!496629 m!477955))

(declare-fun m!477969 () Bool)

(assert (=> b!496629 m!477969))

(declare-fun m!477971 () Bool)

(assert (=> b!496630 m!477971))

(declare-fun m!477973 () Bool)

(assert (=> start!45252 m!477973))

(declare-fun m!477975 () Bool)

(assert (=> start!45252 m!477975))

(declare-fun m!477977 () Bool)

(assert (=> b!496626 m!477977))

(assert (=> b!496626 m!477955))

(declare-fun m!477979 () Bool)

(assert (=> b!496627 m!477979))

(declare-fun m!477981 () Bool)

(assert (=> b!496624 m!477981))

(declare-fun m!477983 () Bool)

(assert (=> b!496623 m!477983))

(assert (=> b!496631 m!477955))

(assert (=> b!496631 m!477955))

(declare-fun m!477985 () Bool)

(assert (=> b!496631 m!477985))

(declare-fun m!477987 () Bool)

(assert (=> b!496622 m!477987))

(check-sat (not b!496630) (not b!496623) (not b!496622) (not b!496625) (not b!496624) (not start!45252) (not b!496631) (not b!496629) (not b!496627))
(check-sat)

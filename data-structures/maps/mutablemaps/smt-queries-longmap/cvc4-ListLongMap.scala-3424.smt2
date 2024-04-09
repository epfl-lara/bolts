; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47546 () Bool)

(assert start!47546)

(declare-fun b!522970 () Bool)

(declare-fun res!320525 () Bool)

(declare-fun e!305017 () Bool)

(assert (=> b!522970 (=> (not res!320525) (not e!305017))))

(declare-datatypes ((array!33269 0))(
  ( (array!33270 (arr!15986 (Array (_ BitVec 32) (_ BitVec 64))) (size!16350 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33269)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522970 (= res!320525 (validKeyInArray!0 (select (arr!15986 a!3235) j!176)))))

(declare-fun b!522971 () Bool)

(declare-fun res!320521 () Bool)

(declare-fun e!305020 () Bool)

(assert (=> b!522971 (=> (not res!320521) (not e!305020))))

(declare-datatypes ((List!10197 0))(
  ( (Nil!10194) (Cons!10193 (h!11118 (_ BitVec 64)) (t!16433 List!10197)) )
))
(declare-fun arrayNoDuplicates!0 (array!33269 (_ BitVec 32) List!10197) Bool)

(assert (=> b!522971 (= res!320521 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10194))))

(declare-fun b!522972 () Bool)

(declare-datatypes ((Unit!16306 0))(
  ( (Unit!16307) )
))
(declare-fun e!305022 () Unit!16306)

(declare-fun Unit!16308 () Unit!16306)

(assert (=> b!522972 (= e!305022 Unit!16308)))

(declare-fun lt!239967 () Unit!16306)

(declare-datatypes ((SeekEntryResult!4460 0))(
  ( (MissingZero!4460 (index!20046 (_ BitVec 32))) (Found!4460 (index!20047 (_ BitVec 32))) (Intermediate!4460 (undefined!5272 Bool) (index!20048 (_ BitVec 32)) (x!49050 (_ BitVec 32))) (Undefined!4460) (MissingVacant!4460 (index!20049 (_ BitVec 32))) )
))
(declare-fun lt!239969 () SeekEntryResult!4460)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!239970 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33269 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16306)

(assert (=> b!522972 (= lt!239967 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239970 #b00000000000000000000000000000000 (index!20048 lt!239969) (x!49050 lt!239969) mask!3524))))

(declare-fun res!320524 () Bool)

(declare-fun lt!239972 () array!33269)

(declare-fun lt!239968 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33269 (_ BitVec 32)) SeekEntryResult!4460)

(assert (=> b!522972 (= res!320524 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239970 lt!239968 lt!239972 mask!3524) (Intermediate!4460 false (index!20048 lt!239969) (x!49050 lt!239969))))))

(declare-fun e!305023 () Bool)

(assert (=> b!522972 (=> (not res!320524) (not e!305023))))

(assert (=> b!522972 e!305023))

(declare-fun b!522973 () Bool)

(declare-fun e!305021 () Bool)

(assert (=> b!522973 (= e!305020 (not e!305021))))

(declare-fun res!320518 () Bool)

(assert (=> b!522973 (=> res!320518 e!305021)))

(declare-fun lt!239965 () (_ BitVec 32))

(assert (=> b!522973 (= res!320518 (= lt!239969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239965 lt!239968 lt!239972 mask!3524)))))

(assert (=> b!522973 (= lt!239969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239970 (select (arr!15986 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522973 (= lt!239965 (toIndex!0 lt!239968 mask!3524))))

(assert (=> b!522973 (= lt!239968 (select (store (arr!15986 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522973 (= lt!239970 (toIndex!0 (select (arr!15986 a!3235) j!176) mask!3524))))

(assert (=> b!522973 (= lt!239972 (array!33270 (store (arr!15986 a!3235) i!1204 k!2280) (size!16350 a!3235)))))

(declare-fun e!305019 () Bool)

(assert (=> b!522973 e!305019))

(declare-fun res!320526 () Bool)

(assert (=> b!522973 (=> (not res!320526) (not e!305019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33269 (_ BitVec 32)) Bool)

(assert (=> b!522973 (= res!320526 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239964 () Unit!16306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16306)

(assert (=> b!522973 (= lt!239964 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522974 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33269 (_ BitVec 32)) SeekEntryResult!4460)

(assert (=> b!522974 (= e!305019 (= (seekEntryOrOpen!0 (select (arr!15986 a!3235) j!176) a!3235 mask!3524) (Found!4460 j!176)))))

(declare-fun b!522975 () Bool)

(declare-fun Unit!16309 () Unit!16306)

(assert (=> b!522975 (= e!305022 Unit!16309)))

(declare-fun res!320523 () Bool)

(assert (=> start!47546 (=> (not res!320523) (not e!305017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47546 (= res!320523 (validMask!0 mask!3524))))

(assert (=> start!47546 e!305017))

(assert (=> start!47546 true))

(declare-fun array_inv!11760 (array!33269) Bool)

(assert (=> start!47546 (array_inv!11760 a!3235)))

(declare-fun b!522976 () Bool)

(declare-fun res!320520 () Bool)

(assert (=> b!522976 (=> (not res!320520) (not e!305020))))

(assert (=> b!522976 (= res!320520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522977 () Bool)

(declare-fun res!320519 () Bool)

(assert (=> b!522977 (=> (not res!320519) (not e!305017))))

(declare-fun arrayContainsKey!0 (array!33269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522977 (= res!320519 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522978 () Bool)

(declare-fun res!320527 () Bool)

(assert (=> b!522978 (=> (not res!320527) (not e!305017))))

(assert (=> b!522978 (= res!320527 (and (= (size!16350 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16350 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16350 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522979 () Bool)

(assert (=> b!522979 (= e!305023 false)))

(declare-fun b!522980 () Bool)

(assert (=> b!522980 (= e!305017 e!305020)))

(declare-fun res!320522 () Bool)

(assert (=> b!522980 (=> (not res!320522) (not e!305020))))

(declare-fun lt!239966 () SeekEntryResult!4460)

(assert (=> b!522980 (= res!320522 (or (= lt!239966 (MissingZero!4460 i!1204)) (= lt!239966 (MissingVacant!4460 i!1204))))))

(assert (=> b!522980 (= lt!239966 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522981 () Bool)

(assert (=> b!522981 (= e!305021 true)))

(assert (=> b!522981 (and (or (= (select (arr!15986 a!3235) (index!20048 lt!239969)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15986 a!3235) (index!20048 lt!239969)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15986 a!3235) (index!20048 lt!239969)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15986 a!3235) (index!20048 lt!239969)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239971 () Unit!16306)

(assert (=> b!522981 (= lt!239971 e!305022)))

(declare-fun c!61529 () Bool)

(assert (=> b!522981 (= c!61529 (= (select (arr!15986 a!3235) (index!20048 lt!239969)) (select (arr!15986 a!3235) j!176)))))

(assert (=> b!522981 (and (bvslt (x!49050 lt!239969) #b01111111111111111111111111111110) (or (= (select (arr!15986 a!3235) (index!20048 lt!239969)) (select (arr!15986 a!3235) j!176)) (= (select (arr!15986 a!3235) (index!20048 lt!239969)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15986 a!3235) (index!20048 lt!239969)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522982 () Bool)

(declare-fun res!320528 () Bool)

(assert (=> b!522982 (=> res!320528 e!305021)))

(assert (=> b!522982 (= res!320528 (or (undefined!5272 lt!239969) (not (is-Intermediate!4460 lt!239969))))))

(declare-fun b!522983 () Bool)

(declare-fun res!320517 () Bool)

(assert (=> b!522983 (=> (not res!320517) (not e!305017))))

(assert (=> b!522983 (= res!320517 (validKeyInArray!0 k!2280))))

(assert (= (and start!47546 res!320523) b!522978))

(assert (= (and b!522978 res!320527) b!522970))

(assert (= (and b!522970 res!320525) b!522983))

(assert (= (and b!522983 res!320517) b!522977))

(assert (= (and b!522977 res!320519) b!522980))

(assert (= (and b!522980 res!320522) b!522976))

(assert (= (and b!522976 res!320520) b!522971))

(assert (= (and b!522971 res!320521) b!522973))

(assert (= (and b!522973 res!320526) b!522974))

(assert (= (and b!522973 (not res!320518)) b!522982))

(assert (= (and b!522982 (not res!320528)) b!522981))

(assert (= (and b!522981 c!61529) b!522972))

(assert (= (and b!522981 (not c!61529)) b!522975))

(assert (= (and b!522972 res!320524) b!522979))

(declare-fun m!503827 () Bool)

(assert (=> b!522980 m!503827))

(declare-fun m!503829 () Bool)

(assert (=> b!522983 m!503829))

(declare-fun m!503831 () Bool)

(assert (=> b!522976 m!503831))

(declare-fun m!503833 () Bool)

(assert (=> b!522977 m!503833))

(declare-fun m!503835 () Bool)

(assert (=> b!522981 m!503835))

(declare-fun m!503837 () Bool)

(assert (=> b!522981 m!503837))

(declare-fun m!503839 () Bool)

(assert (=> b!522972 m!503839))

(declare-fun m!503841 () Bool)

(assert (=> b!522972 m!503841))

(declare-fun m!503843 () Bool)

(assert (=> b!522973 m!503843))

(declare-fun m!503845 () Bool)

(assert (=> b!522973 m!503845))

(declare-fun m!503847 () Bool)

(assert (=> b!522973 m!503847))

(declare-fun m!503849 () Bool)

(assert (=> b!522973 m!503849))

(assert (=> b!522973 m!503837))

(declare-fun m!503851 () Bool)

(assert (=> b!522973 m!503851))

(assert (=> b!522973 m!503837))

(declare-fun m!503853 () Bool)

(assert (=> b!522973 m!503853))

(assert (=> b!522973 m!503837))

(declare-fun m!503855 () Bool)

(assert (=> b!522973 m!503855))

(declare-fun m!503857 () Bool)

(assert (=> b!522973 m!503857))

(declare-fun m!503859 () Bool)

(assert (=> b!522971 m!503859))

(assert (=> b!522974 m!503837))

(assert (=> b!522974 m!503837))

(declare-fun m!503861 () Bool)

(assert (=> b!522974 m!503861))

(assert (=> b!522970 m!503837))

(assert (=> b!522970 m!503837))

(declare-fun m!503863 () Bool)

(assert (=> b!522970 m!503863))

(declare-fun m!503865 () Bool)

(assert (=> start!47546 m!503865))

(declare-fun m!503867 () Bool)

(assert (=> start!47546 m!503867))

(push 1)


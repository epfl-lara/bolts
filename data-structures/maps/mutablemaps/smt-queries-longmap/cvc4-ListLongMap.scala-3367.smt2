; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46268 () Bool)

(assert start!46268)

(declare-fun b!512165 () Bool)

(declare-fun res!312978 () Bool)

(declare-fun e!299125 () Bool)

(assert (=> b!512165 (=> (not res!312978) (not e!299125))))

(declare-datatypes ((array!32882 0))(
  ( (array!32883 (arr!15815 (Array (_ BitVec 32) (_ BitVec 64))) (size!16179 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32882)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512165 (= res!312978 (and (= (size!16179 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16179 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16179 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512166 () Bool)

(declare-fun res!312981 () Bool)

(assert (=> b!512166 (=> (not res!312981) (not e!299125))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512166 (= res!312981 (validKeyInArray!0 k!2280))))

(declare-fun b!512167 () Bool)

(declare-fun e!299127 () Bool)

(declare-fun e!299128 () Bool)

(assert (=> b!512167 (= e!299127 (not e!299128))))

(declare-fun res!312977 () Bool)

(assert (=> b!512167 (=> res!312977 e!299128)))

(declare-datatypes ((SeekEntryResult!4289 0))(
  ( (MissingZero!4289 (index!19344 (_ BitVec 32))) (Found!4289 (index!19345 (_ BitVec 32))) (Intermediate!4289 (undefined!5101 Bool) (index!19346 (_ BitVec 32)) (x!48315 (_ BitVec 32))) (Undefined!4289) (MissingVacant!4289 (index!19347 (_ BitVec 32))) )
))
(declare-fun lt!234495 () SeekEntryResult!4289)

(declare-fun lt!234499 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32882 (_ BitVec 32)) SeekEntryResult!4289)

(assert (=> b!512167 (= res!312977 (= lt!234495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234499 (select (store (arr!15815 a!3235) i!1204 k!2280) j!176) (array!32883 (store (arr!15815 a!3235) i!1204 k!2280) (size!16179 a!3235)) mask!3524)))))

(declare-fun lt!234496 () (_ BitVec 32))

(assert (=> b!512167 (= lt!234495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234496 (select (arr!15815 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512167 (= lt!234499 (toIndex!0 (select (store (arr!15815 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512167 (= lt!234496 (toIndex!0 (select (arr!15815 a!3235) j!176) mask!3524))))

(declare-fun lt!234497 () SeekEntryResult!4289)

(assert (=> b!512167 (= lt!234497 (Found!4289 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32882 (_ BitVec 32)) SeekEntryResult!4289)

(assert (=> b!512167 (= lt!234497 (seekEntryOrOpen!0 (select (arr!15815 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32882 (_ BitVec 32)) Bool)

(assert (=> b!512167 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15828 0))(
  ( (Unit!15829) )
))
(declare-fun lt!234500 () Unit!15828)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15828)

(assert (=> b!512167 (= lt!234500 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512168 () Bool)

(declare-fun res!312983 () Bool)

(assert (=> b!512168 (=> (not res!312983) (not e!299127))))

(declare-datatypes ((List!10026 0))(
  ( (Nil!10023) (Cons!10022 (h!10902 (_ BitVec 64)) (t!16262 List!10026)) )
))
(declare-fun arrayNoDuplicates!0 (array!32882 (_ BitVec 32) List!10026) Bool)

(assert (=> b!512168 (= res!312983 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10023))))

(declare-fun res!312979 () Bool)

(assert (=> start!46268 (=> (not res!312979) (not e!299125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46268 (= res!312979 (validMask!0 mask!3524))))

(assert (=> start!46268 e!299125))

(assert (=> start!46268 true))

(declare-fun array_inv!11589 (array!32882) Bool)

(assert (=> start!46268 (array_inv!11589 a!3235)))

(declare-fun b!512169 () Bool)

(assert (=> b!512169 (= e!299125 e!299127)))

(declare-fun res!312982 () Bool)

(assert (=> b!512169 (=> (not res!312982) (not e!299127))))

(declare-fun lt!234498 () SeekEntryResult!4289)

(assert (=> b!512169 (= res!312982 (or (= lt!234498 (MissingZero!4289 i!1204)) (= lt!234498 (MissingVacant!4289 i!1204))))))

(assert (=> b!512169 (= lt!234498 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512170 () Bool)

(assert (=> b!512170 (= e!299128 true)))

(assert (=> b!512170 (= lt!234497 Undefined!4289)))

(declare-fun b!512171 () Bool)

(declare-fun res!312985 () Bool)

(assert (=> b!512171 (=> (not res!312985) (not e!299125))))

(declare-fun arrayContainsKey!0 (array!32882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512171 (= res!312985 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512172 () Bool)

(declare-fun res!312986 () Bool)

(assert (=> b!512172 (=> (not res!312986) (not e!299127))))

(assert (=> b!512172 (= res!312986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512173 () Bool)

(declare-fun res!312984 () Bool)

(assert (=> b!512173 (=> res!312984 e!299128)))

(assert (=> b!512173 (= res!312984 (or (not (is-Intermediate!4289 lt!234495)) (not (undefined!5101 lt!234495))))))

(declare-fun b!512174 () Bool)

(declare-fun res!312980 () Bool)

(assert (=> b!512174 (=> (not res!312980) (not e!299125))))

(assert (=> b!512174 (= res!312980 (validKeyInArray!0 (select (arr!15815 a!3235) j!176)))))

(assert (= (and start!46268 res!312979) b!512165))

(assert (= (and b!512165 res!312978) b!512174))

(assert (= (and b!512174 res!312980) b!512166))

(assert (= (and b!512166 res!312981) b!512171))

(assert (= (and b!512171 res!312985) b!512169))

(assert (= (and b!512169 res!312982) b!512172))

(assert (= (and b!512172 res!312986) b!512168))

(assert (= (and b!512168 res!312983) b!512167))

(assert (= (and b!512167 (not res!312977)) b!512173))

(assert (= (and b!512173 (not res!312984)) b!512170))

(declare-fun m!493843 () Bool)

(assert (=> b!512167 m!493843))

(declare-fun m!493845 () Bool)

(assert (=> b!512167 m!493845))

(declare-fun m!493847 () Bool)

(assert (=> b!512167 m!493847))

(declare-fun m!493849 () Bool)

(assert (=> b!512167 m!493849))

(assert (=> b!512167 m!493845))

(declare-fun m!493851 () Bool)

(assert (=> b!512167 m!493851))

(declare-fun m!493853 () Bool)

(assert (=> b!512167 m!493853))

(assert (=> b!512167 m!493851))

(declare-fun m!493855 () Bool)

(assert (=> b!512167 m!493855))

(assert (=> b!512167 m!493851))

(declare-fun m!493857 () Bool)

(assert (=> b!512167 m!493857))

(assert (=> b!512167 m!493851))

(declare-fun m!493859 () Bool)

(assert (=> b!512167 m!493859))

(assert (=> b!512167 m!493845))

(declare-fun m!493861 () Bool)

(assert (=> b!512167 m!493861))

(assert (=> b!512174 m!493851))

(assert (=> b!512174 m!493851))

(declare-fun m!493863 () Bool)

(assert (=> b!512174 m!493863))

(declare-fun m!493865 () Bool)

(assert (=> b!512171 m!493865))

(declare-fun m!493867 () Bool)

(assert (=> b!512168 m!493867))

(declare-fun m!493869 () Bool)

(assert (=> start!46268 m!493869))

(declare-fun m!493871 () Bool)

(assert (=> start!46268 m!493871))

(declare-fun m!493873 () Bool)

(assert (=> b!512169 m!493873))

(declare-fun m!493875 () Bool)

(assert (=> b!512172 m!493875))

(declare-fun m!493877 () Bool)

(assert (=> b!512166 m!493877))

(push 1)


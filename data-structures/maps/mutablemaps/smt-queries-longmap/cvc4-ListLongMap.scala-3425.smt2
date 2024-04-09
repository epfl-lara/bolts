; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47552 () Bool)

(assert start!47552)

(declare-fun b!523096 () Bool)

(declare-fun e!305081 () Bool)

(declare-fun e!305080 () Bool)

(assert (=> b!523096 (= e!305081 (not e!305080))))

(declare-fun res!320631 () Bool)

(assert (=> b!523096 (=> res!320631 e!305080)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4463 0))(
  ( (MissingZero!4463 (index!20058 (_ BitVec 32))) (Found!4463 (index!20059 (_ BitVec 32))) (Intermediate!4463 (undefined!5275 Bool) (index!20060 (_ BitVec 32)) (x!49061 (_ BitVec 32))) (Undefined!4463) (MissingVacant!4463 (index!20061 (_ BitVec 32))) )
))
(declare-fun lt!240049 () SeekEntryResult!4463)

(declare-fun lt!240046 () (_ BitVec 64))

(declare-datatypes ((array!33275 0))(
  ( (array!33276 (arr!15989 (Array (_ BitVec 32) (_ BitVec 64))) (size!16353 (_ BitVec 32))) )
))
(declare-fun lt!240052 () array!33275)

(declare-fun lt!240045 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33275 (_ BitVec 32)) SeekEntryResult!4463)

(assert (=> b!523096 (= res!320631 (= lt!240049 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240045 lt!240046 lt!240052 mask!3524)))))

(declare-fun a!3235 () array!33275)

(declare-fun lt!240051 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!523096 (= lt!240049 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240051 (select (arr!15989 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523096 (= lt!240045 (toIndex!0 lt!240046 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!523096 (= lt!240046 (select (store (arr!15989 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!523096 (= lt!240051 (toIndex!0 (select (arr!15989 a!3235) j!176) mask!3524))))

(assert (=> b!523096 (= lt!240052 (array!33276 (store (arr!15989 a!3235) i!1204 k!2280) (size!16353 a!3235)))))

(declare-fun e!305083 () Bool)

(assert (=> b!523096 e!305083))

(declare-fun res!320625 () Bool)

(assert (=> b!523096 (=> (not res!320625) (not e!305083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33275 (_ BitVec 32)) Bool)

(assert (=> b!523096 (= res!320625 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16318 0))(
  ( (Unit!16319) )
))
(declare-fun lt!240053 () Unit!16318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16318)

(assert (=> b!523096 (= lt!240053 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!523097 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33275 (_ BitVec 32)) SeekEntryResult!4463)

(assert (=> b!523097 (= e!305083 (= (seekEntryOrOpen!0 (select (arr!15989 a!3235) j!176) a!3235 mask!3524) (Found!4463 j!176)))))

(declare-fun b!523098 () Bool)

(declare-fun res!320628 () Bool)

(declare-fun e!305085 () Bool)

(assert (=> b!523098 (=> (not res!320628) (not e!305085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!523098 (= res!320628 (validKeyInArray!0 k!2280))))

(declare-fun res!320635 () Bool)

(assert (=> start!47552 (=> (not res!320635) (not e!305085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47552 (= res!320635 (validMask!0 mask!3524))))

(assert (=> start!47552 e!305085))

(assert (=> start!47552 true))

(declare-fun array_inv!11763 (array!33275) Bool)

(assert (=> start!47552 (array_inv!11763 a!3235)))

(declare-fun b!523099 () Bool)

(declare-fun e!305082 () Bool)

(assert (=> b!523099 (= e!305082 false)))

(declare-fun b!523100 () Bool)

(declare-fun res!320630 () Bool)

(assert (=> b!523100 (=> (not res!320630) (not e!305085))))

(assert (=> b!523100 (= res!320630 (and (= (size!16353 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16353 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16353 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!523101 () Bool)

(declare-fun res!320627 () Bool)

(assert (=> b!523101 (=> (not res!320627) (not e!305085))))

(assert (=> b!523101 (= res!320627 (validKeyInArray!0 (select (arr!15989 a!3235) j!176)))))

(declare-fun b!523102 () Bool)

(declare-fun res!320632 () Bool)

(assert (=> b!523102 (=> res!320632 e!305080)))

(assert (=> b!523102 (= res!320632 (or (undefined!5275 lt!240049) (not (is-Intermediate!4463 lt!240049))))))

(declare-fun b!523103 () Bool)

(declare-fun res!320633 () Bool)

(assert (=> b!523103 (=> (not res!320633) (not e!305081))))

(assert (=> b!523103 (= res!320633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!523104 () Bool)

(declare-fun e!305084 () Unit!16318)

(declare-fun Unit!16320 () Unit!16318)

(assert (=> b!523104 (= e!305084 Unit!16320)))

(declare-fun lt!240048 () Unit!16318)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33275 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16318)

(assert (=> b!523104 (= lt!240048 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240051 #b00000000000000000000000000000000 (index!20060 lt!240049) (x!49061 lt!240049) mask!3524))))

(declare-fun res!320634 () Bool)

(assert (=> b!523104 (= res!320634 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240051 lt!240046 lt!240052 mask!3524) (Intermediate!4463 false (index!20060 lt!240049) (x!49061 lt!240049))))))

(assert (=> b!523104 (=> (not res!320634) (not e!305082))))

(assert (=> b!523104 e!305082))

(declare-fun b!523105 () Bool)

(declare-fun res!320636 () Bool)

(assert (=> b!523105 (=> (not res!320636) (not e!305081))))

(declare-datatypes ((List!10200 0))(
  ( (Nil!10197) (Cons!10196 (h!11121 (_ BitVec 64)) (t!16436 List!10200)) )
))
(declare-fun arrayNoDuplicates!0 (array!33275 (_ BitVec 32) List!10200) Bool)

(assert (=> b!523105 (= res!320636 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10197))))

(declare-fun b!523106 () Bool)

(declare-fun Unit!16321 () Unit!16318)

(assert (=> b!523106 (= e!305084 Unit!16321)))

(declare-fun b!523107 () Bool)

(assert (=> b!523107 (= e!305085 e!305081)))

(declare-fun res!320629 () Bool)

(assert (=> b!523107 (=> (not res!320629) (not e!305081))))

(declare-fun lt!240047 () SeekEntryResult!4463)

(assert (=> b!523107 (= res!320629 (or (= lt!240047 (MissingZero!4463 i!1204)) (= lt!240047 (MissingVacant!4463 i!1204))))))

(assert (=> b!523107 (= lt!240047 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!523108 () Bool)

(assert (=> b!523108 (= e!305080 (or (bvsgt #b00000000000000000000000000000000 (x!49061 lt!240049)) (bvsle (x!49061 lt!240049) #b01111111111111111111111111111110)))))

(assert (=> b!523108 (and (or (= (select (arr!15989 a!3235) (index!20060 lt!240049)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15989 a!3235) (index!20060 lt!240049)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15989 a!3235) (index!20060 lt!240049)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15989 a!3235) (index!20060 lt!240049)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240050 () Unit!16318)

(assert (=> b!523108 (= lt!240050 e!305084)))

(declare-fun c!61538 () Bool)

(assert (=> b!523108 (= c!61538 (= (select (arr!15989 a!3235) (index!20060 lt!240049)) (select (arr!15989 a!3235) j!176)))))

(assert (=> b!523108 (and (bvslt (x!49061 lt!240049) #b01111111111111111111111111111110) (or (= (select (arr!15989 a!3235) (index!20060 lt!240049)) (select (arr!15989 a!3235) j!176)) (= (select (arr!15989 a!3235) (index!20060 lt!240049)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15989 a!3235) (index!20060 lt!240049)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523109 () Bool)

(declare-fun res!320626 () Bool)

(assert (=> b!523109 (=> (not res!320626) (not e!305085))))

(declare-fun arrayContainsKey!0 (array!33275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!523109 (= res!320626 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47552 res!320635) b!523100))

(assert (= (and b!523100 res!320630) b!523101))

(assert (= (and b!523101 res!320627) b!523098))

(assert (= (and b!523098 res!320628) b!523109))

(assert (= (and b!523109 res!320626) b!523107))

(assert (= (and b!523107 res!320629) b!523103))

(assert (= (and b!523103 res!320633) b!523105))

(assert (= (and b!523105 res!320636) b!523096))

(assert (= (and b!523096 res!320625) b!523097))

(assert (= (and b!523096 (not res!320631)) b!523102))

(assert (= (and b!523102 (not res!320632)) b!523108))

(assert (= (and b!523108 c!61538) b!523104))

(assert (= (and b!523108 (not c!61538)) b!523106))

(assert (= (and b!523104 res!320634) b!523099))

(declare-fun m!503953 () Bool)

(assert (=> b!523107 m!503953))

(declare-fun m!503955 () Bool)

(assert (=> b!523103 m!503955))

(declare-fun m!503957 () Bool)

(assert (=> start!47552 m!503957))

(declare-fun m!503959 () Bool)

(assert (=> start!47552 m!503959))

(declare-fun m!503961 () Bool)

(assert (=> b!523109 m!503961))

(declare-fun m!503963 () Bool)

(assert (=> b!523098 m!503963))

(declare-fun m!503965 () Bool)

(assert (=> b!523108 m!503965))

(declare-fun m!503967 () Bool)

(assert (=> b!523108 m!503967))

(declare-fun m!503969 () Bool)

(assert (=> b!523105 m!503969))

(declare-fun m!503971 () Bool)

(assert (=> b!523104 m!503971))

(declare-fun m!503973 () Bool)

(assert (=> b!523104 m!503973))

(declare-fun m!503975 () Bool)

(assert (=> b!523096 m!503975))

(declare-fun m!503977 () Bool)

(assert (=> b!523096 m!503977))

(declare-fun m!503979 () Bool)

(assert (=> b!523096 m!503979))

(assert (=> b!523096 m!503967))

(declare-fun m!503981 () Bool)

(assert (=> b!523096 m!503981))

(assert (=> b!523096 m!503967))

(declare-fun m!503983 () Bool)

(assert (=> b!523096 m!503983))

(declare-fun m!503985 () Bool)

(assert (=> b!523096 m!503985))

(declare-fun m!503987 () Bool)

(assert (=> b!523096 m!503987))

(assert (=> b!523096 m!503967))

(declare-fun m!503989 () Bool)

(assert (=> b!523096 m!503989))

(assert (=> b!523101 m!503967))

(assert (=> b!523101 m!503967))

(declare-fun m!503991 () Bool)

(assert (=> b!523101 m!503991))

(assert (=> b!523097 m!503967))

(assert (=> b!523097 m!503967))

(declare-fun m!503993 () Bool)

(assert (=> b!523097 m!503993))

(push 1)


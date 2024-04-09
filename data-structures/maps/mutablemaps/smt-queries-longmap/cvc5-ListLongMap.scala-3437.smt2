; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47752 () Bool)

(assert start!47752)

(declare-fun b!525187 () Bool)

(declare-fun e!306228 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33349 0))(
  ( (array!33350 (arr!16023 (Array (_ BitVec 32) (_ BitVec 64))) (size!16387 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33349)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4497 0))(
  ( (MissingZero!4497 (index!20200 (_ BitVec 32))) (Found!4497 (index!20201 (_ BitVec 32))) (Intermediate!4497 (undefined!5309 Bool) (index!20202 (_ BitVec 32)) (x!49209 (_ BitVec 32))) (Undefined!4497) (MissingVacant!4497 (index!20203 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33349 (_ BitVec 32)) SeekEntryResult!4497)

(assert (=> b!525187 (= e!306228 (= (seekEntryOrOpen!0 (select (arr!16023 a!3235) j!176) a!3235 mask!3524) (Found!4497 j!176)))))

(declare-fun b!525188 () Bool)

(declare-fun res!322121 () Bool)

(declare-fun e!306227 () Bool)

(assert (=> b!525188 (=> (not res!322121) (not e!306227))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525188 (= res!322121 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525189 () Bool)

(declare-fun e!306223 () Bool)

(assert (=> b!525189 (= e!306223 true)))

(declare-fun lt!241322 () SeekEntryResult!4497)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525189 (= (index!20202 lt!241322) i!1204)))

(declare-fun lt!241325 () (_ BitVec 32))

(declare-datatypes ((Unit!16454 0))(
  ( (Unit!16455) )
))
(declare-fun lt!241318 () Unit!16454)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33349 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16454)

(assert (=> b!525189 (= lt!241318 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241325 #b00000000000000000000000000000000 (index!20202 lt!241322) (x!49209 lt!241322) mask!3524))))

(assert (=> b!525189 (and (or (= (select (arr!16023 a!3235) (index!20202 lt!241322)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16023 a!3235) (index!20202 lt!241322)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16023 a!3235) (index!20202 lt!241322)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16023 a!3235) (index!20202 lt!241322)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241317 () Unit!16454)

(declare-fun e!306226 () Unit!16454)

(assert (=> b!525189 (= lt!241317 e!306226)))

(declare-fun c!61844 () Bool)

(assert (=> b!525189 (= c!61844 (= (select (arr!16023 a!3235) (index!20202 lt!241322)) (select (arr!16023 a!3235) j!176)))))

(assert (=> b!525189 (and (bvslt (x!49209 lt!241322) #b01111111111111111111111111111110) (or (= (select (arr!16023 a!3235) (index!20202 lt!241322)) (select (arr!16023 a!3235) j!176)) (= (select (arr!16023 a!3235) (index!20202 lt!241322)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16023 a!3235) (index!20202 lt!241322)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525190 () Bool)

(declare-fun e!306225 () Bool)

(assert (=> b!525190 (= e!306225 false)))

(declare-fun b!525191 () Bool)

(declare-fun e!306229 () Bool)

(assert (=> b!525191 (= e!306229 (not e!306223))))

(declare-fun res!322112 () Bool)

(assert (=> b!525191 (=> res!322112 e!306223)))

(declare-fun lt!241321 () (_ BitVec 64))

(declare-fun lt!241320 () array!33349)

(declare-fun lt!241319 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33349 (_ BitVec 32)) SeekEntryResult!4497)

(assert (=> b!525191 (= res!322112 (= lt!241322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241319 lt!241321 lt!241320 mask!3524)))))

(assert (=> b!525191 (= lt!241322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241325 (select (arr!16023 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525191 (= lt!241319 (toIndex!0 lt!241321 mask!3524))))

(assert (=> b!525191 (= lt!241321 (select (store (arr!16023 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525191 (= lt!241325 (toIndex!0 (select (arr!16023 a!3235) j!176) mask!3524))))

(assert (=> b!525191 (= lt!241320 (array!33350 (store (arr!16023 a!3235) i!1204 k!2280) (size!16387 a!3235)))))

(assert (=> b!525191 e!306228))

(declare-fun res!322118 () Bool)

(assert (=> b!525191 (=> (not res!322118) (not e!306228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33349 (_ BitVec 32)) Bool)

(assert (=> b!525191 (= res!322118 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241316 () Unit!16454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16454)

(assert (=> b!525191 (= lt!241316 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!322120 () Bool)

(assert (=> start!47752 (=> (not res!322120) (not e!306227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47752 (= res!322120 (validMask!0 mask!3524))))

(assert (=> start!47752 e!306227))

(assert (=> start!47752 true))

(declare-fun array_inv!11797 (array!33349) Bool)

(assert (=> start!47752 (array_inv!11797 a!3235)))

(declare-fun b!525192 () Bool)

(assert (=> b!525192 (= e!306227 e!306229)))

(declare-fun res!322110 () Bool)

(assert (=> b!525192 (=> (not res!322110) (not e!306229))))

(declare-fun lt!241323 () SeekEntryResult!4497)

(assert (=> b!525192 (= res!322110 (or (= lt!241323 (MissingZero!4497 i!1204)) (= lt!241323 (MissingVacant!4497 i!1204))))))

(assert (=> b!525192 (= lt!241323 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525193 () Bool)

(declare-fun res!322117 () Bool)

(assert (=> b!525193 (=> res!322117 e!306223)))

(assert (=> b!525193 (= res!322117 (or (undefined!5309 lt!241322) (not (is-Intermediate!4497 lt!241322))))))

(declare-fun b!525194 () Bool)

(declare-fun res!322119 () Bool)

(assert (=> b!525194 (=> (not res!322119) (not e!306229))))

(assert (=> b!525194 (= res!322119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525195 () Bool)

(declare-fun res!322114 () Bool)

(assert (=> b!525195 (=> (not res!322114) (not e!306227))))

(assert (=> b!525195 (= res!322114 (and (= (size!16387 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16387 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16387 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525196 () Bool)

(declare-fun Unit!16456 () Unit!16454)

(assert (=> b!525196 (= e!306226 Unit!16456)))

(declare-fun b!525197 () Bool)

(declare-fun Unit!16457 () Unit!16454)

(assert (=> b!525197 (= e!306226 Unit!16457)))

(declare-fun lt!241324 () Unit!16454)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33349 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16454)

(assert (=> b!525197 (= lt!241324 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241325 #b00000000000000000000000000000000 (index!20202 lt!241322) (x!49209 lt!241322) mask!3524))))

(declare-fun res!322115 () Bool)

(assert (=> b!525197 (= res!322115 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241325 lt!241321 lt!241320 mask!3524) (Intermediate!4497 false (index!20202 lt!241322) (x!49209 lt!241322))))))

(assert (=> b!525197 (=> (not res!322115) (not e!306225))))

(assert (=> b!525197 e!306225))

(declare-fun b!525198 () Bool)

(declare-fun res!322113 () Bool)

(assert (=> b!525198 (=> (not res!322113) (not e!306227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525198 (= res!322113 (validKeyInArray!0 (select (arr!16023 a!3235) j!176)))))

(declare-fun b!525199 () Bool)

(declare-fun res!322116 () Bool)

(assert (=> b!525199 (=> (not res!322116) (not e!306227))))

(assert (=> b!525199 (= res!322116 (validKeyInArray!0 k!2280))))

(declare-fun b!525200 () Bool)

(declare-fun res!322111 () Bool)

(assert (=> b!525200 (=> (not res!322111) (not e!306229))))

(declare-datatypes ((List!10234 0))(
  ( (Nil!10231) (Cons!10230 (h!11161 (_ BitVec 64)) (t!16470 List!10234)) )
))
(declare-fun arrayNoDuplicates!0 (array!33349 (_ BitVec 32) List!10234) Bool)

(assert (=> b!525200 (= res!322111 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10231))))

(assert (= (and start!47752 res!322120) b!525195))

(assert (= (and b!525195 res!322114) b!525198))

(assert (= (and b!525198 res!322113) b!525199))

(assert (= (and b!525199 res!322116) b!525188))

(assert (= (and b!525188 res!322121) b!525192))

(assert (= (and b!525192 res!322110) b!525194))

(assert (= (and b!525194 res!322119) b!525200))

(assert (= (and b!525200 res!322111) b!525191))

(assert (= (and b!525191 res!322118) b!525187))

(assert (= (and b!525191 (not res!322112)) b!525193))

(assert (= (and b!525193 (not res!322117)) b!525189))

(assert (= (and b!525189 c!61844) b!525197))

(assert (= (and b!525189 (not c!61844)) b!525196))

(assert (= (and b!525197 res!322115) b!525190))

(declare-fun m!505879 () Bool)

(assert (=> b!525198 m!505879))

(assert (=> b!525198 m!505879))

(declare-fun m!505881 () Bool)

(assert (=> b!525198 m!505881))

(declare-fun m!505883 () Bool)

(assert (=> b!525192 m!505883))

(declare-fun m!505885 () Bool)

(assert (=> b!525194 m!505885))

(declare-fun m!505887 () Bool)

(assert (=> b!525191 m!505887))

(assert (=> b!525191 m!505879))

(declare-fun m!505889 () Bool)

(assert (=> b!525191 m!505889))

(declare-fun m!505891 () Bool)

(assert (=> b!525191 m!505891))

(declare-fun m!505893 () Bool)

(assert (=> b!525191 m!505893))

(declare-fun m!505895 () Bool)

(assert (=> b!525191 m!505895))

(assert (=> b!525191 m!505879))

(declare-fun m!505897 () Bool)

(assert (=> b!525191 m!505897))

(assert (=> b!525191 m!505879))

(declare-fun m!505899 () Bool)

(assert (=> b!525191 m!505899))

(declare-fun m!505901 () Bool)

(assert (=> b!525191 m!505901))

(declare-fun m!505903 () Bool)

(assert (=> b!525197 m!505903))

(declare-fun m!505905 () Bool)

(assert (=> b!525197 m!505905))

(declare-fun m!505907 () Bool)

(assert (=> start!47752 m!505907))

(declare-fun m!505909 () Bool)

(assert (=> start!47752 m!505909))

(declare-fun m!505911 () Bool)

(assert (=> b!525199 m!505911))

(declare-fun m!505913 () Bool)

(assert (=> b!525188 m!505913))

(assert (=> b!525187 m!505879))

(assert (=> b!525187 m!505879))

(declare-fun m!505915 () Bool)

(assert (=> b!525187 m!505915))

(declare-fun m!505917 () Bool)

(assert (=> b!525200 m!505917))

(declare-fun m!505919 () Bool)

(assert (=> b!525189 m!505919))

(declare-fun m!505921 () Bool)

(assert (=> b!525189 m!505921))

(assert (=> b!525189 m!505879))

(push 1)


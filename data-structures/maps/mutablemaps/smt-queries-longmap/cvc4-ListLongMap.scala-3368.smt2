; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46274 () Bool)

(assert start!46274)

(declare-fun b!512255 () Bool)

(declare-fun e!299161 () Bool)

(declare-fun e!299162 () Bool)

(assert (=> b!512255 (= e!299161 (not e!299162))))

(declare-fun res!313067 () Bool)

(assert (=> b!512255 (=> res!313067 e!299162)))

(declare-datatypes ((SeekEntryResult!4292 0))(
  ( (MissingZero!4292 (index!19356 (_ BitVec 32))) (Found!4292 (index!19357 (_ BitVec 32))) (Intermediate!4292 (undefined!5104 Bool) (index!19358 (_ BitVec 32)) (x!48326 (_ BitVec 32))) (Undefined!4292) (MissingVacant!4292 (index!19359 (_ BitVec 32))) )
))
(declare-fun lt!234550 () SeekEntryResult!4292)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32888 0))(
  ( (array!32889 (arr!15818 (Array (_ BitVec 32) (_ BitVec 64))) (size!16182 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32888)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!234551 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32888 (_ BitVec 32)) SeekEntryResult!4292)

(assert (=> b!512255 (= res!313067 (= lt!234550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234551 (select (store (arr!15818 a!3235) i!1204 k!2280) j!176) (array!32889 (store (arr!15818 a!3235) i!1204 k!2280) (size!16182 a!3235)) mask!3524)))))

(declare-fun lt!234554 () (_ BitVec 32))

(assert (=> b!512255 (= lt!234550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234554 (select (arr!15818 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512255 (= lt!234551 (toIndex!0 (select (store (arr!15818 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512255 (= lt!234554 (toIndex!0 (select (arr!15818 a!3235) j!176) mask!3524))))

(declare-fun lt!234549 () SeekEntryResult!4292)

(assert (=> b!512255 (= lt!234549 (Found!4292 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32888 (_ BitVec 32)) SeekEntryResult!4292)

(assert (=> b!512255 (= lt!234549 (seekEntryOrOpen!0 (select (arr!15818 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32888 (_ BitVec 32)) Bool)

(assert (=> b!512255 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15834 0))(
  ( (Unit!15835) )
))
(declare-fun lt!234552 () Unit!15834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32888 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15834)

(assert (=> b!512255 (= lt!234552 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512256 () Bool)

(declare-fun res!313069 () Bool)

(declare-fun e!299164 () Bool)

(assert (=> b!512256 (=> (not res!313069) (not e!299164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512256 (= res!313069 (validKeyInArray!0 k!2280))))

(declare-fun b!512257 () Bool)

(declare-fun res!313070 () Bool)

(assert (=> b!512257 (=> (not res!313070) (not e!299161))))

(assert (=> b!512257 (= res!313070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!313074 () Bool)

(assert (=> start!46274 (=> (not res!313074) (not e!299164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46274 (= res!313074 (validMask!0 mask!3524))))

(assert (=> start!46274 e!299164))

(assert (=> start!46274 true))

(declare-fun array_inv!11592 (array!32888) Bool)

(assert (=> start!46274 (array_inv!11592 a!3235)))

(declare-fun b!512258 () Bool)

(declare-fun res!313072 () Bool)

(assert (=> b!512258 (=> (not res!313072) (not e!299161))))

(declare-datatypes ((List!10029 0))(
  ( (Nil!10026) (Cons!10025 (h!10905 (_ BitVec 64)) (t!16265 List!10029)) )
))
(declare-fun arrayNoDuplicates!0 (array!32888 (_ BitVec 32) List!10029) Bool)

(assert (=> b!512258 (= res!313072 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10026))))

(declare-fun b!512259 () Bool)

(assert (=> b!512259 (= e!299164 e!299161)))

(declare-fun res!313075 () Bool)

(assert (=> b!512259 (=> (not res!313075) (not e!299161))))

(declare-fun lt!234553 () SeekEntryResult!4292)

(assert (=> b!512259 (= res!313075 (or (= lt!234553 (MissingZero!4292 i!1204)) (= lt!234553 (MissingVacant!4292 i!1204))))))

(assert (=> b!512259 (= lt!234553 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512260 () Bool)

(declare-fun res!313076 () Bool)

(assert (=> b!512260 (=> (not res!313076) (not e!299164))))

(assert (=> b!512260 (= res!313076 (and (= (size!16182 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16182 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16182 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512261 () Bool)

(assert (=> b!512261 (= e!299162 true)))

(assert (=> b!512261 (= lt!234549 Undefined!4292)))

(declare-fun b!512262 () Bool)

(declare-fun res!313068 () Bool)

(assert (=> b!512262 (=> (not res!313068) (not e!299164))))

(declare-fun arrayContainsKey!0 (array!32888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512262 (= res!313068 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512263 () Bool)

(declare-fun res!313073 () Bool)

(assert (=> b!512263 (=> res!313073 e!299162)))

(assert (=> b!512263 (= res!313073 (or (not (is-Intermediate!4292 lt!234550)) (not (undefined!5104 lt!234550))))))

(declare-fun b!512264 () Bool)

(declare-fun res!313071 () Bool)

(assert (=> b!512264 (=> (not res!313071) (not e!299164))))

(assert (=> b!512264 (= res!313071 (validKeyInArray!0 (select (arr!15818 a!3235) j!176)))))

(assert (= (and start!46274 res!313074) b!512260))

(assert (= (and b!512260 res!313076) b!512264))

(assert (= (and b!512264 res!313071) b!512256))

(assert (= (and b!512256 res!313069) b!512262))

(assert (= (and b!512262 res!313068) b!512259))

(assert (= (and b!512259 res!313075) b!512257))

(assert (= (and b!512257 res!313070) b!512258))

(assert (= (and b!512258 res!313072) b!512255))

(assert (= (and b!512255 (not res!313067)) b!512263))

(assert (= (and b!512263 (not res!313073)) b!512261))

(declare-fun m!493951 () Bool)

(assert (=> b!512262 m!493951))

(declare-fun m!493953 () Bool)

(assert (=> b!512259 m!493953))

(declare-fun m!493955 () Bool)

(assert (=> b!512255 m!493955))

(declare-fun m!493957 () Bool)

(assert (=> b!512255 m!493957))

(declare-fun m!493959 () Bool)

(assert (=> b!512255 m!493959))

(declare-fun m!493961 () Bool)

(assert (=> b!512255 m!493961))

(declare-fun m!493963 () Bool)

(assert (=> b!512255 m!493963))

(assert (=> b!512255 m!493961))

(assert (=> b!512255 m!493959))

(declare-fun m!493965 () Bool)

(assert (=> b!512255 m!493965))

(declare-fun m!493967 () Bool)

(assert (=> b!512255 m!493967))

(assert (=> b!512255 m!493961))

(declare-fun m!493969 () Bool)

(assert (=> b!512255 m!493969))

(assert (=> b!512255 m!493959))

(declare-fun m!493971 () Bool)

(assert (=> b!512255 m!493971))

(assert (=> b!512255 m!493961))

(declare-fun m!493973 () Bool)

(assert (=> b!512255 m!493973))

(declare-fun m!493975 () Bool)

(assert (=> b!512258 m!493975))

(declare-fun m!493977 () Bool)

(assert (=> start!46274 m!493977))

(declare-fun m!493979 () Bool)

(assert (=> start!46274 m!493979))

(assert (=> b!512264 m!493961))

(assert (=> b!512264 m!493961))

(declare-fun m!493981 () Bool)

(assert (=> b!512264 m!493981))

(declare-fun m!493983 () Bool)

(assert (=> b!512257 m!493983))

(declare-fun m!493985 () Bool)

(assert (=> b!512256 m!493985))

(push 1)


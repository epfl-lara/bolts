; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46074 () Bool)

(assert start!46074)

(declare-fun b!509967 () Bool)

(declare-fun res!310962 () Bool)

(declare-fun e!298137 () Bool)

(assert (=> b!509967 (=> (not res!310962) (not e!298137))))

(declare-datatypes ((array!32745 0))(
  ( (array!32746 (arr!15748 (Array (_ BitVec 32) (_ BitVec 64))) (size!16112 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32745)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509967 (= res!310962 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509968 () Bool)

(declare-fun e!298136 () Bool)

(assert (=> b!509968 (= e!298137 e!298136)))

(declare-fun res!310970 () Bool)

(assert (=> b!509968 (=> (not res!310970) (not e!298136))))

(declare-datatypes ((SeekEntryResult!4222 0))(
  ( (MissingZero!4222 (index!19076 (_ BitVec 32))) (Found!4222 (index!19077 (_ BitVec 32))) (Intermediate!4222 (undefined!5034 Bool) (index!19078 (_ BitVec 32)) (x!48066 (_ BitVec 32))) (Undefined!4222) (MissingVacant!4222 (index!19079 (_ BitVec 32))) )
))
(declare-fun lt!233160 () SeekEntryResult!4222)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509968 (= res!310970 (or (= lt!233160 (MissingZero!4222 i!1204)) (= lt!233160 (MissingVacant!4222 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32745 (_ BitVec 32)) SeekEntryResult!4222)

(assert (=> b!509968 (= lt!233160 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!509969 () Bool)

(declare-fun res!310965 () Bool)

(assert (=> b!509969 (=> (not res!310965) (not e!298136))))

(declare-datatypes ((List!9959 0))(
  ( (Nil!9956) (Cons!9955 (h!10832 (_ BitVec 64)) (t!16195 List!9959)) )
))
(declare-fun arrayNoDuplicates!0 (array!32745 (_ BitVec 32) List!9959) Bool)

(assert (=> b!509969 (= res!310965 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9956))))

(declare-fun b!509970 () Bool)

(declare-fun res!310963 () Bool)

(assert (=> b!509970 (=> (not res!310963) (not e!298137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509970 (= res!310963 (validKeyInArray!0 k0!2280))))

(declare-fun b!509971 () Bool)

(declare-fun e!298135 () Bool)

(assert (=> b!509971 (= e!298136 (not e!298135))))

(declare-fun res!310966 () Bool)

(assert (=> b!509971 (=> res!310966 e!298135)))

(declare-fun lt!233164 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!233163 () array!32745)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32745 (_ BitVec 32)) SeekEntryResult!4222)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509971 (= res!310966 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15748 a!3235) j!176) mask!3524) (select (arr!15748 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233164 mask!3524) lt!233164 lt!233163 mask!3524))))))

(assert (=> b!509971 (= lt!233164 (select (store (arr!15748 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!509971 (= lt!233163 (array!32746 (store (arr!15748 a!3235) i!1204 k0!2280) (size!16112 a!3235)))))

(declare-fun lt!233161 () SeekEntryResult!4222)

(assert (=> b!509971 (= lt!233161 (Found!4222 j!176))))

(assert (=> b!509971 (= lt!233161 (seekEntryOrOpen!0 (select (arr!15748 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32745 (_ BitVec 32)) Bool)

(assert (=> b!509971 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15694 0))(
  ( (Unit!15695) )
))
(declare-fun lt!233165 () Unit!15694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15694)

(assert (=> b!509971 (= lt!233165 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509972 () Bool)

(assert (=> b!509972 (= e!298135 true)))

(assert (=> b!509972 (= lt!233161 (seekEntryOrOpen!0 lt!233164 lt!233163 mask!3524))))

(declare-fun lt!233162 () Unit!15694)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32745 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15694)

(assert (=> b!509972 (= lt!233162 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!509973 () Bool)

(declare-fun res!310964 () Bool)

(assert (=> b!509973 (=> (not res!310964) (not e!298137))))

(assert (=> b!509973 (= res!310964 (and (= (size!16112 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16112 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16112 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509974 () Bool)

(declare-fun res!310967 () Bool)

(assert (=> b!509974 (=> (not res!310967) (not e!298137))))

(assert (=> b!509974 (= res!310967 (validKeyInArray!0 (select (arr!15748 a!3235) j!176)))))

(declare-fun b!509975 () Bool)

(declare-fun res!310969 () Bool)

(assert (=> b!509975 (=> (not res!310969) (not e!298136))))

(assert (=> b!509975 (= res!310969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!310968 () Bool)

(assert (=> start!46074 (=> (not res!310968) (not e!298137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46074 (= res!310968 (validMask!0 mask!3524))))

(assert (=> start!46074 e!298137))

(assert (=> start!46074 true))

(declare-fun array_inv!11522 (array!32745) Bool)

(assert (=> start!46074 (array_inv!11522 a!3235)))

(assert (= (and start!46074 res!310968) b!509973))

(assert (= (and b!509973 res!310964) b!509974))

(assert (= (and b!509974 res!310967) b!509970))

(assert (= (and b!509970 res!310963) b!509967))

(assert (= (and b!509967 res!310962) b!509968))

(assert (= (and b!509968 res!310970) b!509975))

(assert (= (and b!509975 res!310969) b!509969))

(assert (= (and b!509969 res!310965) b!509971))

(assert (= (and b!509971 (not res!310966)) b!509972))

(declare-fun m!491135 () Bool)

(assert (=> b!509967 m!491135))

(declare-fun m!491137 () Bool)

(assert (=> start!46074 m!491137))

(declare-fun m!491139 () Bool)

(assert (=> start!46074 m!491139))

(declare-fun m!491141 () Bool)

(assert (=> b!509969 m!491141))

(declare-fun m!491143 () Bool)

(assert (=> b!509974 m!491143))

(assert (=> b!509974 m!491143))

(declare-fun m!491145 () Bool)

(assert (=> b!509974 m!491145))

(declare-fun m!491147 () Bool)

(assert (=> b!509968 m!491147))

(declare-fun m!491149 () Bool)

(assert (=> b!509975 m!491149))

(declare-fun m!491151 () Bool)

(assert (=> b!509972 m!491151))

(declare-fun m!491153 () Bool)

(assert (=> b!509972 m!491153))

(declare-fun m!491155 () Bool)

(assert (=> b!509971 m!491155))

(declare-fun m!491157 () Bool)

(assert (=> b!509971 m!491157))

(declare-fun m!491159 () Bool)

(assert (=> b!509971 m!491159))

(declare-fun m!491161 () Bool)

(assert (=> b!509971 m!491161))

(assert (=> b!509971 m!491143))

(declare-fun m!491163 () Bool)

(assert (=> b!509971 m!491163))

(declare-fun m!491165 () Bool)

(assert (=> b!509971 m!491165))

(assert (=> b!509971 m!491143))

(assert (=> b!509971 m!491161))

(assert (=> b!509971 m!491143))

(assert (=> b!509971 m!491143))

(declare-fun m!491167 () Bool)

(assert (=> b!509971 m!491167))

(declare-fun m!491169 () Bool)

(assert (=> b!509971 m!491169))

(assert (=> b!509971 m!491165))

(declare-fun m!491171 () Bool)

(assert (=> b!509971 m!491171))

(declare-fun m!491173 () Bool)

(assert (=> b!509970 m!491173))

(check-sat (not b!509974) (not start!46074) (not b!509967) (not b!509968) (not b!509970) (not b!509975) (not b!509972) (not b!509969) (not b!509971))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44624 () Bool)

(assert start!44624)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!489186 () Bool)

(declare-datatypes ((array!31643 0))(
  ( (array!31644 (arr!15206 (Array (_ BitVec 32) (_ BitVec 64))) (size!15570 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31643)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!287728 () Bool)

(declare-datatypes ((SeekEntryResult!3680 0))(
  ( (MissingZero!3680 (index!16899 (_ BitVec 32))) (Found!3680 (index!16900 (_ BitVec 32))) (Intermediate!3680 (undefined!4492 Bool) (index!16901 (_ BitVec 32)) (x!46037 (_ BitVec 32))) (Undefined!3680) (MissingVacant!3680 (index!16902 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31643 (_ BitVec 32)) SeekEntryResult!3680)

(assert (=> b!489186 (= e!287728 (= (seekEntryOrOpen!0 (select (arr!15206 a!3235) j!176) a!3235 mask!3524) (Found!3680 j!176)))))

(declare-fun b!489187 () Bool)

(declare-fun res!292277 () Bool)

(declare-fun e!287730 () Bool)

(assert (=> b!489187 (=> (not res!292277) (not e!287730))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489187 (= res!292277 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489188 () Bool)

(declare-fun res!292276 () Bool)

(assert (=> b!489188 (=> (not res!292276) (not e!287730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489188 (= res!292276 (validKeyInArray!0 (select (arr!15206 a!3235) j!176)))))

(declare-fun b!489189 () Bool)

(declare-fun e!287729 () Bool)

(assert (=> b!489189 (= e!287729 (not true))))

(declare-fun lt!220753 () SeekEntryResult!3680)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!220750 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31643 (_ BitVec 32)) SeekEntryResult!3680)

(assert (=> b!489189 (= lt!220753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220750 (select (store (arr!15206 a!3235) i!1204 k!2280) j!176) (array!31644 (store (arr!15206 a!3235) i!1204 k!2280) (size!15570 a!3235)) mask!3524))))

(declare-fun lt!220749 () (_ BitVec 32))

(declare-fun lt!220752 () SeekEntryResult!3680)

(assert (=> b!489189 (= lt!220752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220749 (select (arr!15206 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489189 (= lt!220750 (toIndex!0 (select (store (arr!15206 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489189 (= lt!220749 (toIndex!0 (select (arr!15206 a!3235) j!176) mask!3524))))

(assert (=> b!489189 e!287728))

(declare-fun res!292279 () Bool)

(assert (=> b!489189 (=> (not res!292279) (not e!287728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31643 (_ BitVec 32)) Bool)

(assert (=> b!489189 (= res!292279 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14298 0))(
  ( (Unit!14299) )
))
(declare-fun lt!220751 () Unit!14298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14298)

(assert (=> b!489189 (= lt!220751 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!292272 () Bool)

(assert (=> start!44624 (=> (not res!292272) (not e!287730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44624 (= res!292272 (validMask!0 mask!3524))))

(assert (=> start!44624 e!287730))

(assert (=> start!44624 true))

(declare-fun array_inv!10980 (array!31643) Bool)

(assert (=> start!44624 (array_inv!10980 a!3235)))

(declare-fun b!489190 () Bool)

(declare-fun res!292278 () Bool)

(assert (=> b!489190 (=> (not res!292278) (not e!287730))))

(assert (=> b!489190 (= res!292278 (validKeyInArray!0 k!2280))))

(declare-fun b!489191 () Bool)

(declare-fun res!292274 () Bool)

(assert (=> b!489191 (=> (not res!292274) (not e!287729))))

(assert (=> b!489191 (= res!292274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489192 () Bool)

(assert (=> b!489192 (= e!287730 e!287729)))

(declare-fun res!292273 () Bool)

(assert (=> b!489192 (=> (not res!292273) (not e!287729))))

(declare-fun lt!220754 () SeekEntryResult!3680)

(assert (=> b!489192 (= res!292273 (or (= lt!220754 (MissingZero!3680 i!1204)) (= lt!220754 (MissingVacant!3680 i!1204))))))

(assert (=> b!489192 (= lt!220754 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489193 () Bool)

(declare-fun res!292280 () Bool)

(assert (=> b!489193 (=> (not res!292280) (not e!287729))))

(declare-datatypes ((List!9417 0))(
  ( (Nil!9414) (Cons!9413 (h!10275 (_ BitVec 64)) (t!15653 List!9417)) )
))
(declare-fun arrayNoDuplicates!0 (array!31643 (_ BitVec 32) List!9417) Bool)

(assert (=> b!489193 (= res!292280 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9414))))

(declare-fun b!489194 () Bool)

(declare-fun res!292275 () Bool)

(assert (=> b!489194 (=> (not res!292275) (not e!287730))))

(assert (=> b!489194 (= res!292275 (and (= (size!15570 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15570 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15570 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44624 res!292272) b!489194))

(assert (= (and b!489194 res!292275) b!489188))

(assert (= (and b!489188 res!292276) b!489190))

(assert (= (and b!489190 res!292278) b!489187))

(assert (= (and b!489187 res!292277) b!489192))

(assert (= (and b!489192 res!292273) b!489191))

(assert (= (and b!489191 res!292274) b!489193))

(assert (= (and b!489193 res!292280) b!489189))

(assert (= (and b!489189 res!292279) b!489186))

(declare-fun m!468979 () Bool)

(assert (=> b!489187 m!468979))

(declare-fun m!468981 () Bool)

(assert (=> b!489191 m!468981))

(declare-fun m!468983 () Bool)

(assert (=> b!489188 m!468983))

(assert (=> b!489188 m!468983))

(declare-fun m!468985 () Bool)

(assert (=> b!489188 m!468985))

(declare-fun m!468987 () Bool)

(assert (=> b!489192 m!468987))

(declare-fun m!468989 () Bool)

(assert (=> b!489189 m!468989))

(declare-fun m!468991 () Bool)

(assert (=> b!489189 m!468991))

(declare-fun m!468993 () Bool)

(assert (=> b!489189 m!468993))

(assert (=> b!489189 m!468993))

(declare-fun m!468995 () Bool)

(assert (=> b!489189 m!468995))

(assert (=> b!489189 m!468983))

(declare-fun m!468997 () Bool)

(assert (=> b!489189 m!468997))

(assert (=> b!489189 m!468983))

(declare-fun m!468999 () Bool)

(assert (=> b!489189 m!468999))

(assert (=> b!489189 m!468983))

(declare-fun m!469001 () Bool)

(assert (=> b!489189 m!469001))

(assert (=> b!489189 m!468993))

(declare-fun m!469003 () Bool)

(assert (=> b!489189 m!469003))

(declare-fun m!469005 () Bool)

(assert (=> start!44624 m!469005))

(declare-fun m!469007 () Bool)

(assert (=> start!44624 m!469007))

(declare-fun m!469009 () Bool)

(assert (=> b!489193 m!469009))

(declare-fun m!469011 () Bool)

(assert (=> b!489190 m!469011))

(assert (=> b!489186 m!468983))

(assert (=> b!489186 m!468983))

(declare-fun m!469013 () Bool)

(assert (=> b!489186 m!469013))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46132 () Bool)

(assert start!46132)

(declare-fun b!510751 () Bool)

(declare-fun e!298485 () Bool)

(declare-fun e!298484 () Bool)

(assert (=> b!510751 (= e!298485 e!298484)))

(declare-fun res!311749 () Bool)

(assert (=> b!510751 (=> (not res!311749) (not e!298484))))

(declare-datatypes ((SeekEntryResult!4251 0))(
  ( (MissingZero!4251 (index!19192 (_ BitVec 32))) (Found!4251 (index!19193 (_ BitVec 32))) (Intermediate!4251 (undefined!5063 Bool) (index!19194 (_ BitVec 32)) (x!48175 (_ BitVec 32))) (Undefined!4251) (MissingVacant!4251 (index!19195 (_ BitVec 32))) )
))
(declare-fun lt!233686 () SeekEntryResult!4251)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510751 (= res!311749 (or (= lt!233686 (MissingZero!4251 i!1204)) (= lt!233686 (MissingVacant!4251 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32803 0))(
  ( (array!32804 (arr!15777 (Array (_ BitVec 32) (_ BitVec 64))) (size!16141 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32803)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32803 (_ BitVec 32)) SeekEntryResult!4251)

(assert (=> b!510751 (= lt!233686 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510752 () Bool)

(declare-fun res!311748 () Bool)

(assert (=> b!510752 (=> (not res!311748) (not e!298484))))

(declare-datatypes ((List!9988 0))(
  ( (Nil!9985) (Cons!9984 (h!10861 (_ BitVec 64)) (t!16224 List!9988)) )
))
(declare-fun arrayNoDuplicates!0 (array!32803 (_ BitVec 32) List!9988) Bool)

(assert (=> b!510752 (= res!311748 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9985))))

(declare-fun b!510753 () Bool)

(declare-fun res!311747 () Bool)

(assert (=> b!510753 (=> (not res!311747) (not e!298485))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510753 (= res!311747 (validKeyInArray!0 (select (arr!15777 a!3235) j!176)))))

(declare-fun b!510754 () Bool)

(assert (=> b!510754 (= e!298484 (not true))))

(declare-fun lt!233683 () SeekEntryResult!4251)

(declare-fun lt!233684 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32803 (_ BitVec 32)) SeekEntryResult!4251)

(assert (=> b!510754 (= lt!233683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233684 (select (store (arr!15777 a!3235) i!1204 k!2280) j!176) (array!32804 (store (arr!15777 a!3235) i!1204 k!2280) (size!16141 a!3235)) mask!3524))))

(declare-fun lt!233682 () SeekEntryResult!4251)

(declare-fun lt!233687 () (_ BitVec 32))

(assert (=> b!510754 (= lt!233682 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233687 (select (arr!15777 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510754 (= lt!233684 (toIndex!0 (select (store (arr!15777 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!510754 (= lt!233687 (toIndex!0 (select (arr!15777 a!3235) j!176) mask!3524))))

(declare-fun e!298483 () Bool)

(assert (=> b!510754 e!298483))

(declare-fun res!311745 () Bool)

(assert (=> b!510754 (=> (not res!311745) (not e!298483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32803 (_ BitVec 32)) Bool)

(assert (=> b!510754 (= res!311745 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15752 0))(
  ( (Unit!15753) )
))
(declare-fun lt!233685 () Unit!15752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15752)

(assert (=> b!510754 (= lt!233685 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510755 () Bool)

(declare-fun res!311752 () Bool)

(assert (=> b!510755 (=> (not res!311752) (not e!298485))))

(assert (=> b!510755 (= res!311752 (and (= (size!16141 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16141 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16141 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510756 () Bool)

(assert (=> b!510756 (= e!298483 (= (seekEntryOrOpen!0 (select (arr!15777 a!3235) j!176) a!3235 mask!3524) (Found!4251 j!176)))))

(declare-fun b!510757 () Bool)

(declare-fun res!311746 () Bool)

(assert (=> b!510757 (=> (not res!311746) (not e!298484))))

(assert (=> b!510757 (= res!311746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510758 () Bool)

(declare-fun res!311751 () Bool)

(assert (=> b!510758 (=> (not res!311751) (not e!298485))))

(assert (=> b!510758 (= res!311751 (validKeyInArray!0 k!2280))))

(declare-fun b!510750 () Bool)

(declare-fun res!311753 () Bool)

(assert (=> b!510750 (=> (not res!311753) (not e!298485))))

(declare-fun arrayContainsKey!0 (array!32803 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510750 (= res!311753 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!311750 () Bool)

(assert (=> start!46132 (=> (not res!311750) (not e!298485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46132 (= res!311750 (validMask!0 mask!3524))))

(assert (=> start!46132 e!298485))

(assert (=> start!46132 true))

(declare-fun array_inv!11551 (array!32803) Bool)

(assert (=> start!46132 (array_inv!11551 a!3235)))

(assert (= (and start!46132 res!311750) b!510755))

(assert (= (and b!510755 res!311752) b!510753))

(assert (= (and b!510753 res!311747) b!510758))

(assert (= (and b!510758 res!311751) b!510750))

(assert (= (and b!510750 res!311753) b!510751))

(assert (= (and b!510751 res!311749) b!510757))

(assert (= (and b!510757 res!311746) b!510752))

(assert (= (and b!510752 res!311748) b!510754))

(assert (= (and b!510754 res!311745) b!510756))

(declare-fun m!492271 () Bool)

(assert (=> b!510752 m!492271))

(declare-fun m!492273 () Bool)

(assert (=> b!510757 m!492273))

(declare-fun m!492275 () Bool)

(assert (=> b!510751 m!492275))

(declare-fun m!492277 () Bool)

(assert (=> b!510754 m!492277))

(declare-fun m!492279 () Bool)

(assert (=> b!510754 m!492279))

(declare-fun m!492281 () Bool)

(assert (=> b!510754 m!492281))

(declare-fun m!492283 () Bool)

(assert (=> b!510754 m!492283))

(assert (=> b!510754 m!492281))

(declare-fun m!492285 () Bool)

(assert (=> b!510754 m!492285))

(declare-fun m!492287 () Bool)

(assert (=> b!510754 m!492287))

(declare-fun m!492289 () Bool)

(assert (=> b!510754 m!492289))

(assert (=> b!510754 m!492281))

(declare-fun m!492291 () Bool)

(assert (=> b!510754 m!492291))

(assert (=> b!510754 m!492287))

(declare-fun m!492293 () Bool)

(assert (=> b!510754 m!492293))

(assert (=> b!510754 m!492287))

(declare-fun m!492295 () Bool)

(assert (=> start!46132 m!492295))

(declare-fun m!492297 () Bool)

(assert (=> start!46132 m!492297))

(declare-fun m!492299 () Bool)

(assert (=> b!510750 m!492299))

(declare-fun m!492301 () Bool)

(assert (=> b!510758 m!492301))

(assert (=> b!510753 m!492281))

(assert (=> b!510753 m!492281))

(declare-fun m!492303 () Bool)

(assert (=> b!510753 m!492303))

(assert (=> b!510756 m!492281))

(assert (=> b!510756 m!492281))

(declare-fun m!492305 () Bool)

(assert (=> b!510756 m!492305))

(push 1)


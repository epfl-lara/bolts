; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46026 () Bool)

(assert start!46026)

(declare-fun b!509319 () Bool)

(declare-fun res!310317 () Bool)

(declare-fun e!297849 () Bool)

(assert (=> b!509319 (=> (not res!310317) (not e!297849))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32697 0))(
  ( (array!32698 (arr!15724 (Array (_ BitVec 32) (_ BitVec 64))) (size!16088 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32697)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509319 (= res!310317 (and (= (size!16088 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16088 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16088 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509320 () Bool)

(declare-fun res!310316 () Bool)

(assert (=> b!509320 (=> (not res!310316) (not e!297849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509320 (= res!310316 (validKeyInArray!0 (select (arr!15724 a!3235) j!176)))))

(declare-fun b!509321 () Bool)

(declare-fun e!297850 () Bool)

(assert (=> b!509321 (= e!297849 e!297850)))

(declare-fun res!310318 () Bool)

(assert (=> b!509321 (=> (not res!310318) (not e!297850))))

(declare-datatypes ((SeekEntryResult!4198 0))(
  ( (MissingZero!4198 (index!18980 (_ BitVec 32))) (Found!4198 (index!18981 (_ BitVec 32))) (Intermediate!4198 (undefined!5010 Bool) (index!18982 (_ BitVec 32)) (x!47978 (_ BitVec 32))) (Undefined!4198) (MissingVacant!4198 (index!18983 (_ BitVec 32))) )
))
(declare-fun lt!232732 () SeekEntryResult!4198)

(assert (=> b!509321 (= res!310318 (or (= lt!232732 (MissingZero!4198 i!1204)) (= lt!232732 (MissingVacant!4198 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32697 (_ BitVec 32)) SeekEntryResult!4198)

(assert (=> b!509321 (= lt!232732 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!509322 () Bool)

(declare-fun res!310320 () Bool)

(assert (=> b!509322 (=> (not res!310320) (not e!297849))))

(declare-fun arrayContainsKey!0 (array!32697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509322 (= res!310320 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509323 () Bool)

(declare-fun res!310319 () Bool)

(assert (=> b!509323 (=> (not res!310319) (not e!297850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32697 (_ BitVec 32)) Bool)

(assert (=> b!509323 (= res!310319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509324 () Bool)

(declare-fun e!297848 () Bool)

(assert (=> b!509324 (= e!297848 (= (seekEntryOrOpen!0 (select (arr!15724 a!3235) j!176) a!3235 mask!3524) (Found!4198 j!176)))))

(declare-fun b!509326 () Bool)

(assert (=> b!509326 (= e!297850 (not true))))

(declare-fun lt!232731 () (_ BitVec 32))

(declare-fun lt!232729 () SeekEntryResult!4198)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32697 (_ BitVec 32)) SeekEntryResult!4198)

(assert (=> b!509326 (= lt!232729 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232731 (select (store (arr!15724 a!3235) i!1204 k0!2280) j!176) (array!32698 (store (arr!15724 a!3235) i!1204 k0!2280) (size!16088 a!3235)) mask!3524))))

(declare-fun lt!232730 () (_ BitVec 32))

(declare-fun lt!232728 () SeekEntryResult!4198)

(assert (=> b!509326 (= lt!232728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232730 (select (arr!15724 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509326 (= lt!232731 (toIndex!0 (select (store (arr!15724 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509326 (= lt!232730 (toIndex!0 (select (arr!15724 a!3235) j!176) mask!3524))))

(assert (=> b!509326 e!297848))

(declare-fun res!310314 () Bool)

(assert (=> b!509326 (=> (not res!310314) (not e!297848))))

(assert (=> b!509326 (= res!310314 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15646 0))(
  ( (Unit!15647) )
))
(declare-fun lt!232733 () Unit!15646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15646)

(assert (=> b!509326 (= lt!232733 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509327 () Bool)

(declare-fun res!310321 () Bool)

(assert (=> b!509327 (=> (not res!310321) (not e!297850))))

(declare-datatypes ((List!9935 0))(
  ( (Nil!9932) (Cons!9931 (h!10808 (_ BitVec 64)) (t!16171 List!9935)) )
))
(declare-fun arrayNoDuplicates!0 (array!32697 (_ BitVec 32) List!9935) Bool)

(assert (=> b!509327 (= res!310321 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9932))))

(declare-fun b!509325 () Bool)

(declare-fun res!310322 () Bool)

(assert (=> b!509325 (=> (not res!310322) (not e!297849))))

(assert (=> b!509325 (= res!310322 (validKeyInArray!0 k0!2280))))

(declare-fun res!310315 () Bool)

(assert (=> start!46026 (=> (not res!310315) (not e!297849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46026 (= res!310315 (validMask!0 mask!3524))))

(assert (=> start!46026 e!297849))

(assert (=> start!46026 true))

(declare-fun array_inv!11498 (array!32697) Bool)

(assert (=> start!46026 (array_inv!11498 a!3235)))

(assert (= (and start!46026 res!310315) b!509319))

(assert (= (and b!509319 res!310317) b!509320))

(assert (= (and b!509320 res!310316) b!509325))

(assert (= (and b!509325 res!310322) b!509322))

(assert (= (and b!509322 res!310320) b!509321))

(assert (= (and b!509321 res!310318) b!509323))

(assert (= (and b!509323 res!310319) b!509327))

(assert (= (and b!509327 res!310321) b!509326))

(assert (= (and b!509326 res!310314) b!509324))

(declare-fun m!490267 () Bool)

(assert (=> b!509323 m!490267))

(declare-fun m!490269 () Bool)

(assert (=> b!509320 m!490269))

(assert (=> b!509320 m!490269))

(declare-fun m!490271 () Bool)

(assert (=> b!509320 m!490271))

(declare-fun m!490273 () Bool)

(assert (=> b!509321 m!490273))

(declare-fun m!490275 () Bool)

(assert (=> b!509326 m!490275))

(declare-fun m!490277 () Bool)

(assert (=> b!509326 m!490277))

(declare-fun m!490279 () Bool)

(assert (=> b!509326 m!490279))

(assert (=> b!509326 m!490279))

(declare-fun m!490281 () Bool)

(assert (=> b!509326 m!490281))

(assert (=> b!509326 m!490269))

(declare-fun m!490283 () Bool)

(assert (=> b!509326 m!490283))

(assert (=> b!509326 m!490269))

(declare-fun m!490285 () Bool)

(assert (=> b!509326 m!490285))

(assert (=> b!509326 m!490279))

(declare-fun m!490287 () Bool)

(assert (=> b!509326 m!490287))

(assert (=> b!509326 m!490269))

(declare-fun m!490289 () Bool)

(assert (=> b!509326 m!490289))

(declare-fun m!490291 () Bool)

(assert (=> b!509322 m!490291))

(declare-fun m!490293 () Bool)

(assert (=> b!509327 m!490293))

(declare-fun m!490295 () Bool)

(assert (=> start!46026 m!490295))

(declare-fun m!490297 () Bool)

(assert (=> start!46026 m!490297))

(declare-fun m!490299 () Bool)

(assert (=> b!509325 m!490299))

(assert (=> b!509324 m!490269))

(assert (=> b!509324 m!490269))

(declare-fun m!490301 () Bool)

(assert (=> b!509324 m!490301))

(check-sat (not b!509324) (not start!46026) (not b!509323) (not b!509321) (not b!509327) (not b!509322) (not b!509320) (not b!509326) (not b!509325))
(check-sat)

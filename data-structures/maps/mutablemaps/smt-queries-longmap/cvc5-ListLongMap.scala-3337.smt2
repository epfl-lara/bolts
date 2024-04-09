; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46024 () Bool)

(assert start!46024)

(declare-fun b!509292 () Bool)

(declare-fun e!297836 () Bool)

(declare-fun e!297835 () Bool)

(assert (=> b!509292 (= e!297836 e!297835)))

(declare-fun res!310289 () Bool)

(assert (=> b!509292 (=> (not res!310289) (not e!297835))))

(declare-datatypes ((SeekEntryResult!4197 0))(
  ( (MissingZero!4197 (index!18976 (_ BitVec 32))) (Found!4197 (index!18977 (_ BitVec 32))) (Intermediate!4197 (undefined!5009 Bool) (index!18978 (_ BitVec 32)) (x!47977 (_ BitVec 32))) (Undefined!4197) (MissingVacant!4197 (index!18979 (_ BitVec 32))) )
))
(declare-fun lt!232710 () SeekEntryResult!4197)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509292 (= res!310289 (or (= lt!232710 (MissingZero!4197 i!1204)) (= lt!232710 (MissingVacant!4197 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32695 0))(
  ( (array!32696 (arr!15723 (Array (_ BitVec 32) (_ BitVec 64))) (size!16087 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32695)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32695 (_ BitVec 32)) SeekEntryResult!4197)

(assert (=> b!509292 (= lt!232710 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509293 () Bool)

(declare-fun res!310293 () Bool)

(assert (=> b!509293 (=> (not res!310293) (not e!297836))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509293 (= res!310293 (and (= (size!16087 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16087 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16087 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509294 () Bool)

(declare-fun res!310295 () Bool)

(assert (=> b!509294 (=> (not res!310295) (not e!297836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509294 (= res!310295 (validKeyInArray!0 (select (arr!15723 a!3235) j!176)))))

(declare-fun b!509295 () Bool)

(assert (=> b!509295 (= e!297835 (not true))))

(declare-fun lt!232714 () (_ BitVec 32))

(declare-fun lt!232713 () SeekEntryResult!4197)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32695 (_ BitVec 32)) SeekEntryResult!4197)

(assert (=> b!509295 (= lt!232713 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232714 (select (store (arr!15723 a!3235) i!1204 k!2280) j!176) (array!32696 (store (arr!15723 a!3235) i!1204 k!2280) (size!16087 a!3235)) mask!3524))))

(declare-fun lt!232711 () (_ BitVec 32))

(declare-fun lt!232715 () SeekEntryResult!4197)

(assert (=> b!509295 (= lt!232715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232711 (select (arr!15723 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509295 (= lt!232714 (toIndex!0 (select (store (arr!15723 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509295 (= lt!232711 (toIndex!0 (select (arr!15723 a!3235) j!176) mask!3524))))

(declare-fun e!297838 () Bool)

(assert (=> b!509295 e!297838))

(declare-fun res!310294 () Bool)

(assert (=> b!509295 (=> (not res!310294) (not e!297838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32695 (_ BitVec 32)) Bool)

(assert (=> b!509295 (= res!310294 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15644 0))(
  ( (Unit!15645) )
))
(declare-fun lt!232712 () Unit!15644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15644)

(assert (=> b!509295 (= lt!232712 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!310291 () Bool)

(assert (=> start!46024 (=> (not res!310291) (not e!297836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46024 (= res!310291 (validMask!0 mask!3524))))

(assert (=> start!46024 e!297836))

(assert (=> start!46024 true))

(declare-fun array_inv!11497 (array!32695) Bool)

(assert (=> start!46024 (array_inv!11497 a!3235)))

(declare-fun b!509296 () Bool)

(declare-fun res!310290 () Bool)

(assert (=> b!509296 (=> (not res!310290) (not e!297835))))

(assert (=> b!509296 (= res!310290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509297 () Bool)

(declare-fun res!310292 () Bool)

(assert (=> b!509297 (=> (not res!310292) (not e!297835))))

(declare-datatypes ((List!9934 0))(
  ( (Nil!9931) (Cons!9930 (h!10807 (_ BitVec 64)) (t!16170 List!9934)) )
))
(declare-fun arrayNoDuplicates!0 (array!32695 (_ BitVec 32) List!9934) Bool)

(assert (=> b!509297 (= res!310292 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9931))))

(declare-fun b!509298 () Bool)

(declare-fun res!310287 () Bool)

(assert (=> b!509298 (=> (not res!310287) (not e!297836))))

(declare-fun arrayContainsKey!0 (array!32695 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509298 (= res!310287 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509299 () Bool)

(declare-fun res!310288 () Bool)

(assert (=> b!509299 (=> (not res!310288) (not e!297836))))

(assert (=> b!509299 (= res!310288 (validKeyInArray!0 k!2280))))

(declare-fun b!509300 () Bool)

(assert (=> b!509300 (= e!297838 (= (seekEntryOrOpen!0 (select (arr!15723 a!3235) j!176) a!3235 mask!3524) (Found!4197 j!176)))))

(assert (= (and start!46024 res!310291) b!509293))

(assert (= (and b!509293 res!310293) b!509294))

(assert (= (and b!509294 res!310295) b!509299))

(assert (= (and b!509299 res!310288) b!509298))

(assert (= (and b!509298 res!310287) b!509292))

(assert (= (and b!509292 res!310289) b!509296))

(assert (= (and b!509296 res!310290) b!509297))

(assert (= (and b!509297 res!310292) b!509295))

(assert (= (and b!509295 res!310294) b!509300))

(declare-fun m!490231 () Bool)

(assert (=> b!509297 m!490231))

(declare-fun m!490233 () Bool)

(assert (=> start!46024 m!490233))

(declare-fun m!490235 () Bool)

(assert (=> start!46024 m!490235))

(declare-fun m!490237 () Bool)

(assert (=> b!509298 m!490237))

(declare-fun m!490239 () Bool)

(assert (=> b!509299 m!490239))

(declare-fun m!490241 () Bool)

(assert (=> b!509292 m!490241))

(declare-fun m!490243 () Bool)

(assert (=> b!509300 m!490243))

(assert (=> b!509300 m!490243))

(declare-fun m!490245 () Bool)

(assert (=> b!509300 m!490245))

(declare-fun m!490247 () Bool)

(assert (=> b!509295 m!490247))

(declare-fun m!490249 () Bool)

(assert (=> b!509295 m!490249))

(declare-fun m!490251 () Bool)

(assert (=> b!509295 m!490251))

(assert (=> b!509295 m!490251))

(declare-fun m!490253 () Bool)

(assert (=> b!509295 m!490253))

(assert (=> b!509295 m!490243))

(declare-fun m!490255 () Bool)

(assert (=> b!509295 m!490255))

(assert (=> b!509295 m!490243))

(declare-fun m!490257 () Bool)

(assert (=> b!509295 m!490257))

(assert (=> b!509295 m!490251))

(declare-fun m!490259 () Bool)

(assert (=> b!509295 m!490259))

(assert (=> b!509295 m!490243))

(declare-fun m!490261 () Bool)

(assert (=> b!509295 m!490261))

(assert (=> b!509294 m!490243))

(assert (=> b!509294 m!490243))

(declare-fun m!490263 () Bool)

(assert (=> b!509294 m!490263))

(declare-fun m!490265 () Bool)

(assert (=> b!509296 m!490265))

(push 1)


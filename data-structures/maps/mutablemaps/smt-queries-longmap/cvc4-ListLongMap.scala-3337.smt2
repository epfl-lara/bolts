; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46028 () Bool)

(assert start!46028)

(declare-fun b!509346 () Bool)

(declare-fun e!297860 () Bool)

(assert (=> b!509346 (= e!297860 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4199 0))(
  ( (MissingZero!4199 (index!18984 (_ BitVec 32))) (Found!4199 (index!18985 (_ BitVec 32))) (Intermediate!4199 (undefined!5011 Bool) (index!18986 (_ BitVec 32)) (x!47979 (_ BitVec 32))) (Undefined!4199) (MissingVacant!4199 (index!18987 (_ BitVec 32))) )
))
(declare-fun lt!232746 () SeekEntryResult!4199)

(declare-datatypes ((array!32699 0))(
  ( (array!32700 (arr!15725 (Array (_ BitVec 32) (_ BitVec 64))) (size!16089 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32699)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!232749 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32699 (_ BitVec 32)) SeekEntryResult!4199)

(assert (=> b!509346 (= lt!232746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232749 (select (store (arr!15725 a!3235) i!1204 k!2280) j!176) (array!32700 (store (arr!15725 a!3235) i!1204 k!2280) (size!16089 a!3235)) mask!3524))))

(declare-fun lt!232748 () (_ BitVec 32))

(declare-fun lt!232747 () SeekEntryResult!4199)

(assert (=> b!509346 (= lt!232747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232748 (select (arr!15725 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509346 (= lt!232749 (toIndex!0 (select (store (arr!15725 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509346 (= lt!232748 (toIndex!0 (select (arr!15725 a!3235) j!176) mask!3524))))

(declare-fun e!297859 () Bool)

(assert (=> b!509346 e!297859))

(declare-fun res!310346 () Bool)

(assert (=> b!509346 (=> (not res!310346) (not e!297859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32699 (_ BitVec 32)) Bool)

(assert (=> b!509346 (= res!310346 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15648 0))(
  ( (Unit!15649) )
))
(declare-fun lt!232750 () Unit!15648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15648)

(assert (=> b!509346 (= lt!232750 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509347 () Bool)

(declare-fun res!310343 () Bool)

(declare-fun e!297862 () Bool)

(assert (=> b!509347 (=> (not res!310343) (not e!297862))))

(declare-fun arrayContainsKey!0 (array!32699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509347 (= res!310343 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!310347 () Bool)

(assert (=> start!46028 (=> (not res!310347) (not e!297862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46028 (= res!310347 (validMask!0 mask!3524))))

(assert (=> start!46028 e!297862))

(assert (=> start!46028 true))

(declare-fun array_inv!11499 (array!32699) Bool)

(assert (=> start!46028 (array_inv!11499 a!3235)))

(declare-fun b!509348 () Bool)

(declare-fun res!310348 () Bool)

(assert (=> b!509348 (=> (not res!310348) (not e!297862))))

(assert (=> b!509348 (= res!310348 (and (= (size!16089 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16089 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16089 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509349 () Bool)

(declare-fun res!310342 () Bool)

(assert (=> b!509349 (=> (not res!310342) (not e!297860))))

(assert (=> b!509349 (= res!310342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509350 () Bool)

(declare-fun res!310341 () Bool)

(assert (=> b!509350 (=> (not res!310341) (not e!297860))))

(declare-datatypes ((List!9936 0))(
  ( (Nil!9933) (Cons!9932 (h!10809 (_ BitVec 64)) (t!16172 List!9936)) )
))
(declare-fun arrayNoDuplicates!0 (array!32699 (_ BitVec 32) List!9936) Bool)

(assert (=> b!509350 (= res!310341 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9933))))

(declare-fun b!509351 () Bool)

(declare-fun res!310344 () Bool)

(assert (=> b!509351 (=> (not res!310344) (not e!297862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509351 (= res!310344 (validKeyInArray!0 k!2280))))

(declare-fun b!509352 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32699 (_ BitVec 32)) SeekEntryResult!4199)

(assert (=> b!509352 (= e!297859 (= (seekEntryOrOpen!0 (select (arr!15725 a!3235) j!176) a!3235 mask!3524) (Found!4199 j!176)))))

(declare-fun b!509353 () Bool)

(declare-fun res!310349 () Bool)

(assert (=> b!509353 (=> (not res!310349) (not e!297862))))

(assert (=> b!509353 (= res!310349 (validKeyInArray!0 (select (arr!15725 a!3235) j!176)))))

(declare-fun b!509354 () Bool)

(assert (=> b!509354 (= e!297862 e!297860)))

(declare-fun res!310345 () Bool)

(assert (=> b!509354 (=> (not res!310345) (not e!297860))))

(declare-fun lt!232751 () SeekEntryResult!4199)

(assert (=> b!509354 (= res!310345 (or (= lt!232751 (MissingZero!4199 i!1204)) (= lt!232751 (MissingVacant!4199 i!1204))))))

(assert (=> b!509354 (= lt!232751 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!46028 res!310347) b!509348))

(assert (= (and b!509348 res!310348) b!509353))

(assert (= (and b!509353 res!310349) b!509351))

(assert (= (and b!509351 res!310344) b!509347))

(assert (= (and b!509347 res!310343) b!509354))

(assert (= (and b!509354 res!310345) b!509349))

(assert (= (and b!509349 res!310342) b!509350))

(assert (= (and b!509350 res!310341) b!509346))

(assert (= (and b!509346 res!310346) b!509352))

(declare-fun m!490303 () Bool)

(assert (=> b!509354 m!490303))

(declare-fun m!490305 () Bool)

(assert (=> b!509346 m!490305))

(declare-fun m!490307 () Bool)

(assert (=> b!509346 m!490307))

(declare-fun m!490309 () Bool)

(assert (=> b!509346 m!490309))

(declare-fun m!490311 () Bool)

(assert (=> b!509346 m!490311))

(declare-fun m!490313 () Bool)

(assert (=> b!509346 m!490313))

(assert (=> b!509346 m!490311))

(declare-fun m!490315 () Bool)

(assert (=> b!509346 m!490315))

(assert (=> b!509346 m!490309))

(declare-fun m!490317 () Bool)

(assert (=> b!509346 m!490317))

(assert (=> b!509346 m!490311))

(declare-fun m!490319 () Bool)

(assert (=> b!509346 m!490319))

(assert (=> b!509346 m!490309))

(declare-fun m!490321 () Bool)

(assert (=> b!509346 m!490321))

(assert (=> b!509352 m!490311))

(assert (=> b!509352 m!490311))

(declare-fun m!490323 () Bool)

(assert (=> b!509352 m!490323))

(declare-fun m!490325 () Bool)

(assert (=> b!509351 m!490325))

(assert (=> b!509353 m!490311))

(assert (=> b!509353 m!490311))

(declare-fun m!490327 () Bool)

(assert (=> b!509353 m!490327))

(declare-fun m!490329 () Bool)

(assert (=> b!509349 m!490329))

(declare-fun m!490331 () Bool)

(assert (=> b!509350 m!490331))

(declare-fun m!490333 () Bool)

(assert (=> b!509347 m!490333))

(declare-fun m!490335 () Bool)

(assert (=> start!46028 m!490335))

(declare-fun m!490337 () Bool)

(assert (=> start!46028 m!490337))

(push 1)

(assert (not b!509354))

(assert (not b!509352))

(assert (not b!509351))

(assert (not b!509349))

(assert (not b!509350))

(assert (not b!509347))

(assert (not b!509346))

(assert (not start!46028))

(assert (not b!509353))

(check-sat)

(pop 1)

(push 1)

(check-sat)


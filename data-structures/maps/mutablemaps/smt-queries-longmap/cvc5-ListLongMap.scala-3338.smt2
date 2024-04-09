; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46030 () Bool)

(assert start!46030)

(declare-fun b!509374 () Bool)

(declare-fun e!297872 () Bool)

(assert (=> b!509374 (= e!297872 (not true))))

(declare-fun lt!232768 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32701 0))(
  ( (array!32702 (arr!15726 (Array (_ BitVec 32) (_ BitVec 64))) (size!16090 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32701)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4200 0))(
  ( (MissingZero!4200 (index!18988 (_ BitVec 32))) (Found!4200 (index!18989 (_ BitVec 32))) (Intermediate!4200 (undefined!5012 Bool) (index!18990 (_ BitVec 32)) (x!47988 (_ BitVec 32))) (Undefined!4200) (MissingVacant!4200 (index!18991 (_ BitVec 32))) )
))
(declare-fun lt!232767 () SeekEntryResult!4200)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32701 (_ BitVec 32)) SeekEntryResult!4200)

(assert (=> b!509374 (= lt!232767 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232768 (select (store (arr!15726 a!3235) i!1204 k!2280) j!176) (array!32702 (store (arr!15726 a!3235) i!1204 k!2280) (size!16090 a!3235)) mask!3524))))

(declare-fun lt!232769 () SeekEntryResult!4200)

(declare-fun lt!232766 () (_ BitVec 32))

(assert (=> b!509374 (= lt!232769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232766 (select (arr!15726 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509374 (= lt!232768 (toIndex!0 (select (store (arr!15726 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509374 (= lt!232766 (toIndex!0 (select (arr!15726 a!3235) j!176) mask!3524))))

(declare-fun e!297874 () Bool)

(assert (=> b!509374 e!297874))

(declare-fun res!310369 () Bool)

(assert (=> b!509374 (=> (not res!310369) (not e!297874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32701 (_ BitVec 32)) Bool)

(assert (=> b!509374 (= res!310369 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15650 0))(
  ( (Unit!15651) )
))
(declare-fun lt!232765 () Unit!15650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15650)

(assert (=> b!509374 (= lt!232765 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509375 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32701 (_ BitVec 32)) SeekEntryResult!4200)

(assert (=> b!509375 (= e!297874 (= (seekEntryOrOpen!0 (select (arr!15726 a!3235) j!176) a!3235 mask!3524) (Found!4200 j!176)))))

(declare-fun b!509376 () Bool)

(declare-fun res!310371 () Bool)

(assert (=> b!509376 (=> (not res!310371) (not e!297872))))

(declare-datatypes ((List!9937 0))(
  ( (Nil!9934) (Cons!9933 (h!10810 (_ BitVec 64)) (t!16173 List!9937)) )
))
(declare-fun arrayNoDuplicates!0 (array!32701 (_ BitVec 32) List!9937) Bool)

(assert (=> b!509376 (= res!310371 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9934))))

(declare-fun b!509377 () Bool)

(declare-fun res!310374 () Bool)

(declare-fun e!297871 () Bool)

(assert (=> b!509377 (=> (not res!310374) (not e!297871))))

(assert (=> b!509377 (= res!310374 (and (= (size!16090 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16090 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16090 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!310373 () Bool)

(assert (=> start!46030 (=> (not res!310373) (not e!297871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46030 (= res!310373 (validMask!0 mask!3524))))

(assert (=> start!46030 e!297871))

(assert (=> start!46030 true))

(declare-fun array_inv!11500 (array!32701) Bool)

(assert (=> start!46030 (array_inv!11500 a!3235)))

(declare-fun b!509373 () Bool)

(declare-fun res!310375 () Bool)

(assert (=> b!509373 (=> (not res!310375) (not e!297871))))

(declare-fun arrayContainsKey!0 (array!32701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509373 (= res!310375 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509378 () Bool)

(declare-fun res!310372 () Bool)

(assert (=> b!509378 (=> (not res!310372) (not e!297871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509378 (= res!310372 (validKeyInArray!0 k!2280))))

(declare-fun b!509379 () Bool)

(declare-fun res!310368 () Bool)

(assert (=> b!509379 (=> (not res!310368) (not e!297872))))

(assert (=> b!509379 (= res!310368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509380 () Bool)

(assert (=> b!509380 (= e!297871 e!297872)))

(declare-fun res!310376 () Bool)

(assert (=> b!509380 (=> (not res!310376) (not e!297872))))

(declare-fun lt!232764 () SeekEntryResult!4200)

(assert (=> b!509380 (= res!310376 (or (= lt!232764 (MissingZero!4200 i!1204)) (= lt!232764 (MissingVacant!4200 i!1204))))))

(assert (=> b!509380 (= lt!232764 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509381 () Bool)

(declare-fun res!310370 () Bool)

(assert (=> b!509381 (=> (not res!310370) (not e!297871))))

(assert (=> b!509381 (= res!310370 (validKeyInArray!0 (select (arr!15726 a!3235) j!176)))))

(assert (= (and start!46030 res!310373) b!509377))

(assert (= (and b!509377 res!310374) b!509381))

(assert (= (and b!509381 res!310370) b!509378))

(assert (= (and b!509378 res!310372) b!509373))

(assert (= (and b!509373 res!310375) b!509380))

(assert (= (and b!509380 res!310376) b!509379))

(assert (= (and b!509379 res!310368) b!509376))

(assert (= (and b!509376 res!310371) b!509374))

(assert (= (and b!509374 res!310369) b!509375))

(declare-fun m!490339 () Bool)

(assert (=> start!46030 m!490339))

(declare-fun m!490341 () Bool)

(assert (=> start!46030 m!490341))

(declare-fun m!490343 () Bool)

(assert (=> b!509375 m!490343))

(assert (=> b!509375 m!490343))

(declare-fun m!490345 () Bool)

(assert (=> b!509375 m!490345))

(declare-fun m!490347 () Bool)

(assert (=> b!509380 m!490347))

(declare-fun m!490349 () Bool)

(assert (=> b!509374 m!490349))

(declare-fun m!490351 () Bool)

(assert (=> b!509374 m!490351))

(declare-fun m!490353 () Bool)

(assert (=> b!509374 m!490353))

(declare-fun m!490355 () Bool)

(assert (=> b!509374 m!490355))

(assert (=> b!509374 m!490349))

(assert (=> b!509374 m!490343))

(declare-fun m!490357 () Bool)

(assert (=> b!509374 m!490357))

(assert (=> b!509374 m!490343))

(declare-fun m!490359 () Bool)

(assert (=> b!509374 m!490359))

(assert (=> b!509374 m!490349))

(declare-fun m!490361 () Bool)

(assert (=> b!509374 m!490361))

(assert (=> b!509374 m!490343))

(declare-fun m!490363 () Bool)

(assert (=> b!509374 m!490363))

(assert (=> b!509381 m!490343))

(assert (=> b!509381 m!490343))

(declare-fun m!490365 () Bool)

(assert (=> b!509381 m!490365))

(declare-fun m!490367 () Bool)

(assert (=> b!509373 m!490367))

(declare-fun m!490369 () Bool)

(assert (=> b!509379 m!490369))

(declare-fun m!490371 () Bool)

(assert (=> b!509378 m!490371))

(declare-fun m!490373 () Bool)

(assert (=> b!509376 m!490373))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45970 () Bool)

(assert start!45970)

(declare-fun res!309560 () Bool)

(declare-fun e!297512 () Bool)

(assert (=> start!45970 (=> (not res!309560) (not e!297512))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45970 (= res!309560 (validMask!0 mask!3524))))

(assert (=> start!45970 e!297512))

(assert (=> start!45970 true))

(declare-datatypes ((array!32641 0))(
  ( (array!32642 (arr!15696 (Array (_ BitVec 32) (_ BitVec 64))) (size!16060 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32641)

(declare-fun array_inv!11470 (array!32641) Bool)

(assert (=> start!45970 (array_inv!11470 a!3235)))

(declare-fun b!508563 () Bool)

(declare-fun e!297514 () Bool)

(assert (=> b!508563 (= e!297512 e!297514)))

(declare-fun res!309559 () Bool)

(assert (=> b!508563 (=> (not res!309559) (not e!297514))))

(declare-datatypes ((SeekEntryResult!4170 0))(
  ( (MissingZero!4170 (index!18868 (_ BitVec 32))) (Found!4170 (index!18869 (_ BitVec 32))) (Intermediate!4170 (undefined!4982 Bool) (index!18870 (_ BitVec 32)) (x!47878 (_ BitVec 32))) (Undefined!4170) (MissingVacant!4170 (index!18871 (_ BitVec 32))) )
))
(declare-fun lt!232309 () SeekEntryResult!4170)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508563 (= res!309559 (or (= lt!232309 (MissingZero!4170 i!1204)) (= lt!232309 (MissingVacant!4170 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32641 (_ BitVec 32)) SeekEntryResult!4170)

(assert (=> b!508563 (= lt!232309 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508564 () Bool)

(declare-fun res!309564 () Bool)

(assert (=> b!508564 (=> (not res!309564) (not e!297512))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508564 (= res!309564 (validKeyInArray!0 (select (arr!15696 a!3235) j!176)))))

(declare-fun b!508565 () Bool)

(declare-fun res!309565 () Bool)

(assert (=> b!508565 (=> (not res!309565) (not e!297512))))

(assert (=> b!508565 (= res!309565 (validKeyInArray!0 k!2280))))

(declare-fun b!508566 () Bool)

(assert (=> b!508566 (= e!297514 (not true))))

(declare-fun lt!232310 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508566 (= lt!232310 (toIndex!0 (select (arr!15696 a!3235) j!176) mask!3524))))

(declare-fun e!297513 () Bool)

(assert (=> b!508566 e!297513))

(declare-fun res!309563 () Bool)

(assert (=> b!508566 (=> (not res!309563) (not e!297513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32641 (_ BitVec 32)) Bool)

(assert (=> b!508566 (= res!309563 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15590 0))(
  ( (Unit!15591) )
))
(declare-fun lt!232308 () Unit!15590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32641 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15590)

(assert (=> b!508566 (= lt!232308 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508567 () Bool)

(declare-fun res!309558 () Bool)

(assert (=> b!508567 (=> (not res!309558) (not e!297512))))

(declare-fun arrayContainsKey!0 (array!32641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508567 (= res!309558 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508568 () Bool)

(assert (=> b!508568 (= e!297513 (= (seekEntryOrOpen!0 (select (arr!15696 a!3235) j!176) a!3235 mask!3524) (Found!4170 j!176)))))

(declare-fun b!508569 () Bool)

(declare-fun res!309562 () Bool)

(assert (=> b!508569 (=> (not res!309562) (not e!297512))))

(assert (=> b!508569 (= res!309562 (and (= (size!16060 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16060 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16060 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508570 () Bool)

(declare-fun res!309566 () Bool)

(assert (=> b!508570 (=> (not res!309566) (not e!297514))))

(declare-datatypes ((List!9907 0))(
  ( (Nil!9904) (Cons!9903 (h!10780 (_ BitVec 64)) (t!16143 List!9907)) )
))
(declare-fun arrayNoDuplicates!0 (array!32641 (_ BitVec 32) List!9907) Bool)

(assert (=> b!508570 (= res!309566 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9904))))

(declare-fun b!508571 () Bool)

(declare-fun res!309561 () Bool)

(assert (=> b!508571 (=> (not res!309561) (not e!297514))))

(assert (=> b!508571 (= res!309561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45970 res!309560) b!508569))

(assert (= (and b!508569 res!309562) b!508564))

(assert (= (and b!508564 res!309564) b!508565))

(assert (= (and b!508565 res!309565) b!508567))

(assert (= (and b!508567 res!309558) b!508563))

(assert (= (and b!508563 res!309559) b!508571))

(assert (= (and b!508571 res!309561) b!508570))

(assert (= (and b!508570 res!309566) b!508566))

(assert (= (and b!508566 res!309563) b!508568))

(declare-fun m!489343 () Bool)

(assert (=> b!508568 m!489343))

(assert (=> b!508568 m!489343))

(declare-fun m!489345 () Bool)

(assert (=> b!508568 m!489345))

(assert (=> b!508564 m!489343))

(assert (=> b!508564 m!489343))

(declare-fun m!489347 () Bool)

(assert (=> b!508564 m!489347))

(declare-fun m!489349 () Bool)

(assert (=> b!508565 m!489349))

(declare-fun m!489351 () Bool)

(assert (=> b!508570 m!489351))

(declare-fun m!489353 () Bool)

(assert (=> b!508563 m!489353))

(declare-fun m!489355 () Bool)

(assert (=> b!508571 m!489355))

(declare-fun m!489357 () Bool)

(assert (=> b!508567 m!489357))

(declare-fun m!489359 () Bool)

(assert (=> start!45970 m!489359))

(declare-fun m!489361 () Bool)

(assert (=> start!45970 m!489361))

(assert (=> b!508566 m!489343))

(assert (=> b!508566 m!489343))

(declare-fun m!489363 () Bool)

(assert (=> b!508566 m!489363))

(declare-fun m!489365 () Bool)

(assert (=> b!508566 m!489365))

(declare-fun m!489367 () Bool)

(assert (=> b!508566 m!489367))

(push 1)


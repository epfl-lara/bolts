; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45800 () Bool)

(assert start!45800)

(declare-fun res!307737 () Bool)

(declare-fun e!296521 () Bool)

(assert (=> start!45800 (=> (not res!307737) (not e!296521))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45800 (= res!307737 (validMask!0 mask!3524))))

(assert (=> start!45800 e!296521))

(assert (=> start!45800 true))

(declare-datatypes ((array!32516 0))(
  ( (array!32517 (arr!15635 (Array (_ BitVec 32) (_ BitVec 64))) (size!15999 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32516)

(declare-fun array_inv!11409 (array!32516) Bool)

(assert (=> start!45800 (array_inv!11409 a!3235)))

(declare-fun b!506623 () Bool)

(declare-fun res!307733 () Bool)

(assert (=> b!506623 (=> (not res!307733) (not e!296521))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506623 (= res!307733 (validKeyInArray!0 k!2280))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!296518 () Bool)

(declare-fun b!506624 () Bool)

(declare-datatypes ((SeekEntryResult!4109 0))(
  ( (MissingZero!4109 (index!18624 (_ BitVec 32))) (Found!4109 (index!18625 (_ BitVec 32))) (Intermediate!4109 (undefined!4921 Bool) (index!18626 (_ BitVec 32)) (x!47649 (_ BitVec 32))) (Undefined!4109) (MissingVacant!4109 (index!18627 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32516 (_ BitVec 32)) SeekEntryResult!4109)

(assert (=> b!506624 (= e!296518 (= (seekEntryOrOpen!0 (select (arr!15635 a!3235) j!176) a!3235 mask!3524) (Found!4109 j!176)))))

(declare-fun b!506625 () Bool)

(declare-fun res!307738 () Bool)

(assert (=> b!506625 (=> (not res!307738) (not e!296521))))

(declare-fun arrayContainsKey!0 (array!32516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506625 (= res!307738 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506626 () Bool)

(declare-fun res!307741 () Bool)

(declare-fun e!296519 () Bool)

(assert (=> b!506626 (=> (not res!307741) (not e!296519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32516 (_ BitVec 32)) Bool)

(assert (=> b!506626 (= res!307741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506627 () Bool)

(declare-fun e!296520 () Bool)

(assert (=> b!506627 (= e!296520 true)))

(assert (=> b!506627 false))

(declare-fun b!506628 () Bool)

(declare-fun res!307734 () Bool)

(assert (=> b!506628 (=> (not res!307734) (not e!296519))))

(declare-datatypes ((List!9846 0))(
  ( (Nil!9843) (Cons!9842 (h!10719 (_ BitVec 64)) (t!16082 List!9846)) )
))
(declare-fun arrayNoDuplicates!0 (array!32516 (_ BitVec 32) List!9846) Bool)

(assert (=> b!506628 (= res!307734 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9843))))

(declare-fun b!506629 () Bool)

(declare-fun e!296516 () Bool)

(assert (=> b!506629 (= e!296516 e!296520)))

(declare-fun res!307740 () Bool)

(assert (=> b!506629 (=> res!307740 e!296520)))

(declare-fun lt!231266 () Bool)

(declare-fun lt!231265 () SeekEntryResult!4109)

(assert (=> b!506629 (= res!307740 (or (and (not lt!231266) (undefined!4921 lt!231265)) (and (not lt!231266) (not (undefined!4921 lt!231265)))))))

(assert (=> b!506629 (= lt!231266 (not (is-Intermediate!4109 lt!231265)))))

(declare-fun b!506630 () Bool)

(assert (=> b!506630 (= e!296521 e!296519)))

(declare-fun res!307736 () Bool)

(assert (=> b!506630 (=> (not res!307736) (not e!296519))))

(declare-fun lt!231261 () SeekEntryResult!4109)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506630 (= res!307736 (or (= lt!231261 (MissingZero!4109 i!1204)) (= lt!231261 (MissingVacant!4109 i!1204))))))

(assert (=> b!506630 (= lt!231261 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506631 () Bool)

(declare-fun res!307735 () Bool)

(assert (=> b!506631 (=> (not res!307735) (not e!296521))))

(assert (=> b!506631 (= res!307735 (validKeyInArray!0 (select (arr!15635 a!3235) j!176)))))

(declare-fun b!506632 () Bool)

(assert (=> b!506632 (= e!296519 (not e!296516))))

(declare-fun res!307742 () Bool)

(assert (=> b!506632 (=> res!307742 e!296516)))

(declare-fun lt!231264 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32516 (_ BitVec 32)) SeekEntryResult!4109)

(assert (=> b!506632 (= res!307742 (= lt!231265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231264 (select (store (arr!15635 a!3235) i!1204 k!2280) j!176) (array!32517 (store (arr!15635 a!3235) i!1204 k!2280) (size!15999 a!3235)) mask!3524)))))

(declare-fun lt!231263 () (_ BitVec 32))

(assert (=> b!506632 (= lt!231265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231263 (select (arr!15635 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506632 (= lt!231264 (toIndex!0 (select (store (arr!15635 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506632 (= lt!231263 (toIndex!0 (select (arr!15635 a!3235) j!176) mask!3524))))

(assert (=> b!506632 e!296518))

(declare-fun res!307732 () Bool)

(assert (=> b!506632 (=> (not res!307732) (not e!296518))))

(assert (=> b!506632 (= res!307732 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15498 0))(
  ( (Unit!15499) )
))
(declare-fun lt!231262 () Unit!15498)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15498)

(assert (=> b!506632 (= lt!231262 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506633 () Bool)

(declare-fun res!307739 () Bool)

(assert (=> b!506633 (=> (not res!307739) (not e!296521))))

(assert (=> b!506633 (= res!307739 (and (= (size!15999 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15999 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15999 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45800 res!307737) b!506633))

(assert (= (and b!506633 res!307739) b!506631))

(assert (= (and b!506631 res!307735) b!506623))

(assert (= (and b!506623 res!307733) b!506625))

(assert (= (and b!506625 res!307738) b!506630))

(assert (= (and b!506630 res!307736) b!506626))

(assert (= (and b!506626 res!307741) b!506628))

(assert (= (and b!506628 res!307734) b!506632))

(assert (= (and b!506632 res!307732) b!506624))

(assert (= (and b!506632 (not res!307742)) b!506629))

(assert (= (and b!506629 (not res!307740)) b!506627))

(declare-fun m!487357 () Bool)

(assert (=> b!506628 m!487357))

(declare-fun m!487359 () Bool)

(assert (=> b!506631 m!487359))

(assert (=> b!506631 m!487359))

(declare-fun m!487361 () Bool)

(assert (=> b!506631 m!487361))

(declare-fun m!487363 () Bool)

(assert (=> b!506632 m!487363))

(declare-fun m!487365 () Bool)

(assert (=> b!506632 m!487365))

(declare-fun m!487367 () Bool)

(assert (=> b!506632 m!487367))

(assert (=> b!506632 m!487359))

(declare-fun m!487369 () Bool)

(assert (=> b!506632 m!487369))

(assert (=> b!506632 m!487359))

(assert (=> b!506632 m!487367))

(declare-fun m!487371 () Bool)

(assert (=> b!506632 m!487371))

(declare-fun m!487373 () Bool)

(assert (=> b!506632 m!487373))

(assert (=> b!506632 m!487359))

(declare-fun m!487375 () Bool)

(assert (=> b!506632 m!487375))

(assert (=> b!506632 m!487367))

(declare-fun m!487377 () Bool)

(assert (=> b!506632 m!487377))

(declare-fun m!487379 () Bool)

(assert (=> b!506630 m!487379))

(declare-fun m!487381 () Bool)

(assert (=> start!45800 m!487381))

(declare-fun m!487383 () Bool)

(assert (=> start!45800 m!487383))

(declare-fun m!487385 () Bool)

(assert (=> b!506626 m!487385))

(declare-fun m!487387 () Bool)

(assert (=> b!506623 m!487387))

(declare-fun m!487389 () Bool)

(assert (=> b!506625 m!487389))

(assert (=> b!506624 m!487359))

(assert (=> b!506624 m!487359))

(declare-fun m!487391 () Bool)

(assert (=> b!506624 m!487391))

(push 1)


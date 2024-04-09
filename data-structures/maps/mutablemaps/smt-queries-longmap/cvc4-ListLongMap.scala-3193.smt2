; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44798 () Bool)

(assert start!44798)

(declare-fun b!491552 () Bool)

(declare-fun e!288791 () Bool)

(declare-fun lt!222316 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491552 (= e!288791 (validKeyInArray!0 lt!222316))))

(declare-fun b!491553 () Bool)

(declare-fun res!294642 () Bool)

(declare-fun e!288789 () Bool)

(assert (=> b!491553 (=> (not res!294642) (not e!288789))))

(declare-datatypes ((array!31817 0))(
  ( (array!31818 (arr!15293 (Array (_ BitVec 32) (_ BitVec 64))) (size!15657 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31817)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!491553 (= res!294642 (validKeyInArray!0 (select (arr!15293 a!3235) j!176)))))

(declare-fun b!491554 () Bool)

(declare-fun res!294643 () Bool)

(declare-fun e!288792 () Bool)

(assert (=> b!491554 (=> (not res!294643) (not e!288792))))

(declare-datatypes ((List!9504 0))(
  ( (Nil!9501) (Cons!9500 (h!10362 (_ BitVec 64)) (t!15740 List!9504)) )
))
(declare-fun arrayNoDuplicates!0 (array!31817 (_ BitVec 32) List!9504) Bool)

(assert (=> b!491554 (= res!294643 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9501))))

(declare-fun b!491555 () Bool)

(declare-fun res!294646 () Bool)

(assert (=> b!491555 (=> (not res!294646) (not e!288789))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491555 (= res!294646 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!294640 () Bool)

(assert (=> start!44798 (=> (not res!294640) (not e!288789))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44798 (= res!294640 (validMask!0 mask!3524))))

(assert (=> start!44798 e!288789))

(assert (=> start!44798 true))

(declare-fun array_inv!11067 (array!31817) Bool)

(assert (=> start!44798 (array_inv!11067 a!3235)))

(declare-fun b!491556 () Bool)

(assert (=> b!491556 (= e!288789 e!288792)))

(declare-fun res!294639 () Bool)

(assert (=> b!491556 (=> (not res!294639) (not e!288792))))

(declare-datatypes ((SeekEntryResult!3767 0))(
  ( (MissingZero!3767 (index!17247 (_ BitVec 32))) (Found!3767 (index!17248 (_ BitVec 32))) (Intermediate!3767 (undefined!4579 Bool) (index!17249 (_ BitVec 32)) (x!46356 (_ BitVec 32))) (Undefined!3767) (MissingVacant!3767 (index!17250 (_ BitVec 32))) )
))
(declare-fun lt!222319 () SeekEntryResult!3767)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491556 (= res!294639 (or (= lt!222319 (MissingZero!3767 i!1204)) (= lt!222319 (MissingVacant!3767 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31817 (_ BitVec 32)) SeekEntryResult!3767)

(assert (=> b!491556 (= lt!222319 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491557 () Bool)

(declare-fun res!294647 () Bool)

(assert (=> b!491557 (=> (not res!294647) (not e!288789))))

(assert (=> b!491557 (= res!294647 (and (= (size!15657 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15657 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15657 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491558 () Bool)

(declare-fun e!288790 () Bool)

(assert (=> b!491558 (= e!288792 (not e!288790))))

(declare-fun res!294644 () Bool)

(assert (=> b!491558 (=> res!294644 e!288790)))

(declare-fun lt!222315 () array!31817)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31817 (_ BitVec 32)) SeekEntryResult!3767)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491558 (= res!294644 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15293 a!3235) j!176) mask!3524) (select (arr!15293 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222316 mask!3524) lt!222316 lt!222315 mask!3524))))))

(assert (=> b!491558 (= lt!222316 (select (store (arr!15293 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491558 (= lt!222315 (array!31818 (store (arr!15293 a!3235) i!1204 k!2280) (size!15657 a!3235)))))

(declare-fun lt!222320 () SeekEntryResult!3767)

(assert (=> b!491558 (= lt!222320 (Found!3767 j!176))))

(assert (=> b!491558 (= lt!222320 (seekEntryOrOpen!0 (select (arr!15293 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31817 (_ BitVec 32)) Bool)

(assert (=> b!491558 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14472 0))(
  ( (Unit!14473) )
))
(declare-fun lt!222317 () Unit!14472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14472)

(assert (=> b!491558 (= lt!222317 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491559 () Bool)

(declare-fun res!294645 () Bool)

(assert (=> b!491559 (=> (not res!294645) (not e!288792))))

(assert (=> b!491559 (= res!294645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491560 () Bool)

(declare-fun res!294638 () Bool)

(assert (=> b!491560 (=> (not res!294638) (not e!288789))))

(assert (=> b!491560 (= res!294638 (validKeyInArray!0 k!2280))))

(declare-fun b!491561 () Bool)

(assert (=> b!491561 (= e!288790 e!288791)))

(declare-fun res!294641 () Bool)

(assert (=> b!491561 (=> res!294641 e!288791)))

(assert (=> b!491561 (= res!294641 (bvslt mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!491561 (= lt!222320 (seekEntryOrOpen!0 lt!222316 lt!222315 mask!3524))))

(declare-fun lt!222318 () Unit!14472)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31817 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14472)

(assert (=> b!491561 (= lt!222318 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(assert (= (and start!44798 res!294640) b!491557))

(assert (= (and b!491557 res!294647) b!491553))

(assert (= (and b!491553 res!294642) b!491560))

(assert (= (and b!491560 res!294638) b!491555))

(assert (= (and b!491555 res!294646) b!491556))

(assert (= (and b!491556 res!294639) b!491559))

(assert (= (and b!491559 res!294645) b!491554))

(assert (= (and b!491554 res!294643) b!491558))

(assert (= (and b!491558 (not res!294644)) b!491561))

(assert (= (and b!491561 (not res!294641)) b!491552))

(declare-fun m!472309 () Bool)

(assert (=> b!491560 m!472309))

(declare-fun m!472311 () Bool)

(assert (=> b!491559 m!472311))

(declare-fun m!472313 () Bool)

(assert (=> b!491561 m!472313))

(declare-fun m!472315 () Bool)

(assert (=> b!491561 m!472315))

(declare-fun m!472317 () Bool)

(assert (=> b!491553 m!472317))

(assert (=> b!491553 m!472317))

(declare-fun m!472319 () Bool)

(assert (=> b!491553 m!472319))

(declare-fun m!472321 () Bool)

(assert (=> b!491555 m!472321))

(declare-fun m!472323 () Bool)

(assert (=> b!491552 m!472323))

(declare-fun m!472325 () Bool)

(assert (=> start!44798 m!472325))

(declare-fun m!472327 () Bool)

(assert (=> start!44798 m!472327))

(declare-fun m!472329 () Bool)

(assert (=> b!491558 m!472329))

(declare-fun m!472331 () Bool)

(assert (=> b!491558 m!472331))

(declare-fun m!472333 () Bool)

(assert (=> b!491558 m!472333))

(declare-fun m!472335 () Bool)

(assert (=> b!491558 m!472335))

(assert (=> b!491558 m!472317))

(declare-fun m!472337 () Bool)

(assert (=> b!491558 m!472337))

(assert (=> b!491558 m!472317))

(assert (=> b!491558 m!472335))

(assert (=> b!491558 m!472317))

(declare-fun m!472339 () Bool)

(assert (=> b!491558 m!472339))

(assert (=> b!491558 m!472317))

(declare-fun m!472341 () Bool)

(assert (=> b!491558 m!472341))

(declare-fun m!472343 () Bool)

(assert (=> b!491558 m!472343))

(declare-fun m!472345 () Bool)

(assert (=> b!491558 m!472345))

(assert (=> b!491558 m!472343))

(declare-fun m!472347 () Bool)

(assert (=> b!491554 m!472347))

(declare-fun m!472349 () Bool)

(assert (=> b!491556 m!472349))

(push 1)

(assert (not b!491556))

(assert (not b!491559))

(assert (not b!491553))

(assert (not b!491555))


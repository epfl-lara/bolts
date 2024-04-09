; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44546 () Bool)

(assert start!44546)

(declare-fun b!488670 () Bool)

(declare-fun res!291867 () Bool)

(declare-fun e!287451 () Bool)

(assert (=> b!488670 (=> (not res!291867) (not e!287451))))

(declare-datatypes ((array!31616 0))(
  ( (array!31617 (arr!15194 (Array (_ BitVec 32) (_ BitVec 64))) (size!15558 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31616)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488670 (= res!291867 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488671 () Bool)

(declare-fun e!287452 () Bool)

(assert (=> b!488671 (= e!287452 (not true))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!220519 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488671 (= lt!220519 (toIndex!0 (select (store (arr!15194 a!3235) i!1204 k!2280) j!176) mask!3524))))

(declare-fun e!287450 () Bool)

(assert (=> b!488671 e!287450))

(declare-fun res!291874 () Bool)

(assert (=> b!488671 (=> (not res!291874) (not e!287450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31616 (_ BitVec 32)) Bool)

(assert (=> b!488671 (= res!291874 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14274 0))(
  ( (Unit!14275) )
))
(declare-fun lt!220520 () Unit!14274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31616 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14274)

(assert (=> b!488671 (= lt!220520 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488672 () Bool)

(declare-fun res!291873 () Bool)

(assert (=> b!488672 (=> (not res!291873) (not e!287451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488672 (= res!291873 (validKeyInArray!0 (select (arr!15194 a!3235) j!176)))))

(declare-fun b!488673 () Bool)

(declare-fun res!291875 () Bool)

(assert (=> b!488673 (=> (not res!291875) (not e!287452))))

(assert (=> b!488673 (= res!291875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488674 () Bool)

(declare-fun res!291869 () Bool)

(assert (=> b!488674 (=> (not res!291869) (not e!287451))))

(assert (=> b!488674 (= res!291869 (and (= (size!15558 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15558 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15558 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488675 () Bool)

(declare-fun res!291872 () Bool)

(assert (=> b!488675 (=> (not res!291872) (not e!287452))))

(declare-datatypes ((List!9405 0))(
  ( (Nil!9402) (Cons!9401 (h!10260 (_ BitVec 64)) (t!15641 List!9405)) )
))
(declare-fun arrayNoDuplicates!0 (array!31616 (_ BitVec 32) List!9405) Bool)

(assert (=> b!488675 (= res!291872 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9402))))

(declare-fun res!291871 () Bool)

(assert (=> start!44546 (=> (not res!291871) (not e!287451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44546 (= res!291871 (validMask!0 mask!3524))))

(assert (=> start!44546 e!287451))

(assert (=> start!44546 true))

(declare-fun array_inv!10968 (array!31616) Bool)

(assert (=> start!44546 (array_inv!10968 a!3235)))

(declare-fun b!488676 () Bool)

(assert (=> b!488676 (= e!287451 e!287452)))

(declare-fun res!291868 () Bool)

(assert (=> b!488676 (=> (not res!291868) (not e!287452))))

(declare-datatypes ((SeekEntryResult!3668 0))(
  ( (MissingZero!3668 (index!16851 (_ BitVec 32))) (Found!3668 (index!16852 (_ BitVec 32))) (Intermediate!3668 (undefined!4480 Bool) (index!16853 (_ BitVec 32)) (x!45990 (_ BitVec 32))) (Undefined!3668) (MissingVacant!3668 (index!16854 (_ BitVec 32))) )
))
(declare-fun lt!220518 () SeekEntryResult!3668)

(assert (=> b!488676 (= res!291868 (or (= lt!220518 (MissingZero!3668 i!1204)) (= lt!220518 (MissingVacant!3668 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31616 (_ BitVec 32)) SeekEntryResult!3668)

(assert (=> b!488676 (= lt!220518 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488677 () Bool)

(declare-fun res!291870 () Bool)

(assert (=> b!488677 (=> (not res!291870) (not e!287451))))

(assert (=> b!488677 (= res!291870 (validKeyInArray!0 k!2280))))

(declare-fun b!488678 () Bool)

(assert (=> b!488678 (= e!287450 (= (seekEntryOrOpen!0 (select (arr!15194 a!3235) j!176) a!3235 mask!3524) (Found!3668 j!176)))))

(assert (= (and start!44546 res!291871) b!488674))

(assert (= (and b!488674 res!291869) b!488672))

(assert (= (and b!488672 res!291873) b!488677))

(assert (= (and b!488677 res!291870) b!488670))

(assert (= (and b!488670 res!291867) b!488676))

(assert (= (and b!488676 res!291868) b!488673))

(assert (= (and b!488673 res!291875) b!488675))

(assert (= (and b!488675 res!291872) b!488671))

(assert (= (and b!488671 res!291874) b!488678))

(declare-fun m!468439 () Bool)

(assert (=> b!488673 m!468439))

(declare-fun m!468441 () Bool)

(assert (=> b!488671 m!468441))

(declare-fun m!468443 () Bool)

(assert (=> b!488671 m!468443))

(declare-fun m!468445 () Bool)

(assert (=> b!488671 m!468445))

(declare-fun m!468447 () Bool)

(assert (=> b!488671 m!468447))

(assert (=> b!488671 m!468445))

(declare-fun m!468449 () Bool)

(assert (=> b!488671 m!468449))

(declare-fun m!468451 () Bool)

(assert (=> b!488678 m!468451))

(assert (=> b!488678 m!468451))

(declare-fun m!468453 () Bool)

(assert (=> b!488678 m!468453))

(declare-fun m!468455 () Bool)

(assert (=> b!488675 m!468455))

(declare-fun m!468457 () Bool)

(assert (=> start!44546 m!468457))

(declare-fun m!468459 () Bool)

(assert (=> start!44546 m!468459))

(declare-fun m!468461 () Bool)

(assert (=> b!488677 m!468461))

(declare-fun m!468463 () Bool)

(assert (=> b!488676 m!468463))

(declare-fun m!468465 () Bool)

(assert (=> b!488670 m!468465))

(assert (=> b!488672 m!468451))

(assert (=> b!488672 m!468451))

(declare-fun m!468467 () Bool)

(assert (=> b!488672 m!468467))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44642 () Bool)

(assert start!44642)

(declare-fun b!489429 () Bool)

(declare-fun res!292522 () Bool)

(declare-fun e!287836 () Bool)

(assert (=> b!489429 (=> (not res!292522) (not e!287836))))

(declare-datatypes ((array!31661 0))(
  ( (array!31662 (arr!15215 (Array (_ BitVec 32) (_ BitVec 64))) (size!15579 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31661)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489429 (= res!292522 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489430 () Bool)

(declare-fun res!292523 () Bool)

(declare-fun e!287838 () Bool)

(assert (=> b!489430 (=> (not res!292523) (not e!287838))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31661 (_ BitVec 32)) Bool)

(assert (=> b!489430 (= res!292523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489431 () Bool)

(declare-fun res!292521 () Bool)

(assert (=> b!489431 (=> (not res!292521) (not e!287836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489431 (= res!292521 (validKeyInArray!0 k!2280))))

(declare-fun b!489432 () Bool)

(assert (=> b!489432 (= e!287838 (not true))))

(declare-fun lt!220916 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3689 0))(
  ( (MissingZero!3689 (index!16935 (_ BitVec 32))) (Found!3689 (index!16936 (_ BitVec 32))) (Intermediate!3689 (undefined!4501 Bool) (index!16937 (_ BitVec 32)) (x!46070 (_ BitVec 32))) (Undefined!3689) (MissingVacant!3689 (index!16938 (_ BitVec 32))) )
))
(declare-fun lt!220912 () SeekEntryResult!3689)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31661 (_ BitVec 32)) SeekEntryResult!3689)

(assert (=> b!489432 (= lt!220912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220916 (select (store (arr!15215 a!3235) i!1204 k!2280) j!176) (array!31662 (store (arr!15215 a!3235) i!1204 k!2280) (size!15579 a!3235)) mask!3524))))

(declare-fun lt!220915 () SeekEntryResult!3689)

(declare-fun lt!220911 () (_ BitVec 32))

(assert (=> b!489432 (= lt!220915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220911 (select (arr!15215 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489432 (= lt!220916 (toIndex!0 (select (store (arr!15215 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489432 (= lt!220911 (toIndex!0 (select (arr!15215 a!3235) j!176) mask!3524))))

(declare-fun e!287837 () Bool)

(assert (=> b!489432 e!287837))

(declare-fun res!292519 () Bool)

(assert (=> b!489432 (=> (not res!292519) (not e!287837))))

(assert (=> b!489432 (= res!292519 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14316 0))(
  ( (Unit!14317) )
))
(declare-fun lt!220914 () Unit!14316)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14316)

(assert (=> b!489432 (= lt!220914 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489433 () Bool)

(declare-fun res!292518 () Bool)

(assert (=> b!489433 (=> (not res!292518) (not e!287836))))

(assert (=> b!489433 (= res!292518 (and (= (size!15579 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15579 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15579 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489434 () Bool)

(declare-fun res!292516 () Bool)

(assert (=> b!489434 (=> (not res!292516) (not e!287836))))

(assert (=> b!489434 (= res!292516 (validKeyInArray!0 (select (arr!15215 a!3235) j!176)))))

(declare-fun res!292517 () Bool)

(assert (=> start!44642 (=> (not res!292517) (not e!287836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44642 (= res!292517 (validMask!0 mask!3524))))

(assert (=> start!44642 e!287836))

(assert (=> start!44642 true))

(declare-fun array_inv!10989 (array!31661) Bool)

(assert (=> start!44642 (array_inv!10989 a!3235)))

(declare-fun b!489435 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31661 (_ BitVec 32)) SeekEntryResult!3689)

(assert (=> b!489435 (= e!287837 (= (seekEntryOrOpen!0 (select (arr!15215 a!3235) j!176) a!3235 mask!3524) (Found!3689 j!176)))))

(declare-fun b!489436 () Bool)

(declare-fun res!292515 () Bool)

(assert (=> b!489436 (=> (not res!292515) (not e!287838))))

(declare-datatypes ((List!9426 0))(
  ( (Nil!9423) (Cons!9422 (h!10284 (_ BitVec 64)) (t!15662 List!9426)) )
))
(declare-fun arrayNoDuplicates!0 (array!31661 (_ BitVec 32) List!9426) Bool)

(assert (=> b!489436 (= res!292515 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9423))))

(declare-fun b!489437 () Bool)

(assert (=> b!489437 (= e!287836 e!287838)))

(declare-fun res!292520 () Bool)

(assert (=> b!489437 (=> (not res!292520) (not e!287838))))

(declare-fun lt!220913 () SeekEntryResult!3689)

(assert (=> b!489437 (= res!292520 (or (= lt!220913 (MissingZero!3689 i!1204)) (= lt!220913 (MissingVacant!3689 i!1204))))))

(assert (=> b!489437 (= lt!220913 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44642 res!292517) b!489433))

(assert (= (and b!489433 res!292518) b!489434))

(assert (= (and b!489434 res!292516) b!489431))

(assert (= (and b!489431 res!292521) b!489429))

(assert (= (and b!489429 res!292522) b!489437))

(assert (= (and b!489437 res!292520) b!489430))

(assert (= (and b!489430 res!292523) b!489436))

(assert (= (and b!489436 res!292515) b!489432))

(assert (= (and b!489432 res!292519) b!489435))

(declare-fun m!469303 () Bool)

(assert (=> b!489434 m!469303))

(assert (=> b!489434 m!469303))

(declare-fun m!469305 () Bool)

(assert (=> b!489434 m!469305))

(assert (=> b!489435 m!469303))

(assert (=> b!489435 m!469303))

(declare-fun m!469307 () Bool)

(assert (=> b!489435 m!469307))

(declare-fun m!469309 () Bool)

(assert (=> b!489431 m!469309))

(declare-fun m!469311 () Bool)

(assert (=> b!489429 m!469311))

(declare-fun m!469313 () Bool)

(assert (=> start!44642 m!469313))

(declare-fun m!469315 () Bool)

(assert (=> start!44642 m!469315))

(declare-fun m!469317 () Bool)

(assert (=> b!489432 m!469317))

(declare-fun m!469319 () Bool)

(assert (=> b!489432 m!469319))

(declare-fun m!469321 () Bool)

(assert (=> b!489432 m!469321))

(assert (=> b!489432 m!469303))

(declare-fun m!469323 () Bool)

(assert (=> b!489432 m!469323))

(assert (=> b!489432 m!469303))

(declare-fun m!469325 () Bool)

(assert (=> b!489432 m!469325))

(assert (=> b!489432 m!469303))

(declare-fun m!469327 () Bool)

(assert (=> b!489432 m!469327))

(assert (=> b!489432 m!469321))

(declare-fun m!469329 () Bool)

(assert (=> b!489432 m!469329))

(assert (=> b!489432 m!469321))

(declare-fun m!469331 () Bool)

(assert (=> b!489432 m!469331))

(declare-fun m!469333 () Bool)

(assert (=> b!489436 m!469333))

(declare-fun m!469335 () Bool)

(assert (=> b!489437 m!469335))

(declare-fun m!469337 () Bool)

(assert (=> b!489430 m!469337))

(push 1)


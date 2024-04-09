; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44636 () Bool)

(assert start!44636)

(declare-fun b!489348 () Bool)

(declare-fun res!292442 () Bool)

(declare-fun e!287801 () Bool)

(assert (=> b!489348 (=> (not res!292442) (not e!287801))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489348 (= res!292442 (validKeyInArray!0 k!2280))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31655 0))(
  ( (array!31656 (arr!15212 (Array (_ BitVec 32) (_ BitVec 64))) (size!15576 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31655)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!287803 () Bool)

(declare-fun b!489349 () Bool)

(declare-datatypes ((SeekEntryResult!3686 0))(
  ( (MissingZero!3686 (index!16923 (_ BitVec 32))) (Found!3686 (index!16924 (_ BitVec 32))) (Intermediate!3686 (undefined!4498 Bool) (index!16925 (_ BitVec 32)) (x!46059 (_ BitVec 32))) (Undefined!3686) (MissingVacant!3686 (index!16926 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31655 (_ BitVec 32)) SeekEntryResult!3686)

(assert (=> b!489349 (= e!287803 (= (seekEntryOrOpen!0 (select (arr!15212 a!3235) j!176) a!3235 mask!3524) (Found!3686 j!176)))))

(declare-fun b!489350 () Bool)

(declare-fun res!292434 () Bool)

(assert (=> b!489350 (=> (not res!292434) (not e!287801))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489350 (= res!292434 (and (= (size!15576 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15576 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15576 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489351 () Bool)

(declare-fun res!292435 () Bool)

(declare-fun e!287802 () Bool)

(assert (=> b!489351 (=> (not res!292435) (not e!287802))))

(declare-datatypes ((List!9423 0))(
  ( (Nil!9420) (Cons!9419 (h!10281 (_ BitVec 64)) (t!15659 List!9423)) )
))
(declare-fun arrayNoDuplicates!0 (array!31655 (_ BitVec 32) List!9423) Bool)

(assert (=> b!489351 (= res!292435 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9420))))

(declare-fun res!292438 () Bool)

(assert (=> start!44636 (=> (not res!292438) (not e!287801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44636 (= res!292438 (validMask!0 mask!3524))))

(assert (=> start!44636 e!287801))

(assert (=> start!44636 true))

(declare-fun array_inv!10986 (array!31655) Bool)

(assert (=> start!44636 (array_inv!10986 a!3235)))

(declare-fun b!489352 () Bool)

(declare-fun res!292437 () Bool)

(assert (=> b!489352 (=> (not res!292437) (not e!287801))))

(declare-fun arrayContainsKey!0 (array!31655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489352 (= res!292437 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489353 () Bool)

(assert (=> b!489353 (= e!287802 (not true))))

(declare-fun lt!220861 () (_ BitVec 32))

(declare-fun lt!220858 () SeekEntryResult!3686)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31655 (_ BitVec 32)) SeekEntryResult!3686)

(assert (=> b!489353 (= lt!220858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220861 (select (store (arr!15212 a!3235) i!1204 k!2280) j!176) (array!31656 (store (arr!15212 a!3235) i!1204 k!2280) (size!15576 a!3235)) mask!3524))))

(declare-fun lt!220859 () SeekEntryResult!3686)

(declare-fun lt!220860 () (_ BitVec 32))

(assert (=> b!489353 (= lt!220859 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220860 (select (arr!15212 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489353 (= lt!220861 (toIndex!0 (select (store (arr!15212 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489353 (= lt!220860 (toIndex!0 (select (arr!15212 a!3235) j!176) mask!3524))))

(assert (=> b!489353 e!287803))

(declare-fun res!292441 () Bool)

(assert (=> b!489353 (=> (not res!292441) (not e!287803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31655 (_ BitVec 32)) Bool)

(assert (=> b!489353 (= res!292441 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14310 0))(
  ( (Unit!14311) )
))
(declare-fun lt!220862 () Unit!14310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14310)

(assert (=> b!489353 (= lt!220862 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489354 () Bool)

(declare-fun res!292439 () Bool)

(assert (=> b!489354 (=> (not res!292439) (not e!287801))))

(assert (=> b!489354 (= res!292439 (validKeyInArray!0 (select (arr!15212 a!3235) j!176)))))

(declare-fun b!489355 () Bool)

(assert (=> b!489355 (= e!287801 e!287802)))

(declare-fun res!292436 () Bool)

(assert (=> b!489355 (=> (not res!292436) (not e!287802))))

(declare-fun lt!220857 () SeekEntryResult!3686)

(assert (=> b!489355 (= res!292436 (or (= lt!220857 (MissingZero!3686 i!1204)) (= lt!220857 (MissingVacant!3686 i!1204))))))

(assert (=> b!489355 (= lt!220857 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489356 () Bool)

(declare-fun res!292440 () Bool)

(assert (=> b!489356 (=> (not res!292440) (not e!287802))))

(assert (=> b!489356 (= res!292440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44636 res!292438) b!489350))

(assert (= (and b!489350 res!292434) b!489354))

(assert (= (and b!489354 res!292439) b!489348))

(assert (= (and b!489348 res!292442) b!489352))

(assert (= (and b!489352 res!292437) b!489355))

(assert (= (and b!489355 res!292436) b!489356))

(assert (= (and b!489356 res!292440) b!489351))

(assert (= (and b!489351 res!292435) b!489353))

(assert (= (and b!489353 res!292441) b!489349))

(declare-fun m!469195 () Bool)

(assert (=> b!489352 m!469195))

(declare-fun m!469197 () Bool)

(assert (=> b!489348 m!469197))

(declare-fun m!469199 () Bool)

(assert (=> b!489354 m!469199))

(assert (=> b!489354 m!469199))

(declare-fun m!469201 () Bool)

(assert (=> b!489354 m!469201))

(assert (=> b!489349 m!469199))

(assert (=> b!489349 m!469199))

(declare-fun m!469203 () Bool)

(assert (=> b!489349 m!469203))

(declare-fun m!469205 () Bool)

(assert (=> start!44636 m!469205))

(declare-fun m!469207 () Bool)

(assert (=> start!44636 m!469207))

(declare-fun m!469209 () Bool)

(assert (=> b!489353 m!469209))

(declare-fun m!469211 () Bool)

(assert (=> b!489353 m!469211))

(assert (=> b!489353 m!469199))

(declare-fun m!469213 () Bool)

(assert (=> b!489353 m!469213))

(assert (=> b!489353 m!469199))

(declare-fun m!469215 () Bool)

(assert (=> b!489353 m!469215))

(assert (=> b!489353 m!469199))

(declare-fun m!469217 () Bool)

(assert (=> b!489353 m!469217))

(assert (=> b!489353 m!469211))

(declare-fun m!469219 () Bool)

(assert (=> b!489353 m!469219))

(assert (=> b!489353 m!469211))

(declare-fun m!469221 () Bool)

(assert (=> b!489353 m!469221))

(declare-fun m!469223 () Bool)

(assert (=> b!489353 m!469223))

(declare-fun m!469225 () Bool)

(assert (=> b!489351 m!469225))

(declare-fun m!469227 () Bool)

(assert (=> b!489355 m!469227))

(declare-fun m!469229 () Bool)

(assert (=> b!489356 m!469229))

(push 1)


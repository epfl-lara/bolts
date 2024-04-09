; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25774 () Bool)

(assert start!25774)

(declare-fun b!267049 () Bool)

(declare-fun res!131387 () Bool)

(declare-fun e!172689 () Bool)

(assert (=> b!267049 (=> (not res!131387) (not e!172689))))

(declare-datatypes ((array!12940 0))(
  ( (array!12941 (arr!6124 (Array (_ BitVec 32) (_ BitVec 64))) (size!6476 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12940)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267049 (= res!131387 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267050 () Bool)

(declare-fun e!172688 () Bool)

(assert (=> b!267050 (= e!172688 false)))

(declare-fun lt!134645 () Bool)

(declare-datatypes ((List!3959 0))(
  ( (Nil!3956) (Cons!3955 (h!4622 (_ BitVec 64)) (t!9049 List!3959)) )
))
(declare-fun arrayNoDuplicates!0 (array!12940 (_ BitVec 32) List!3959) Bool)

(assert (=> b!267050 (= lt!134645 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3956))))

(declare-fun b!267051 () Bool)

(declare-fun res!131384 () Bool)

(assert (=> b!267051 (=> (not res!131384) (not e!172689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267051 (= res!131384 (validKeyInArray!0 k!2698))))

(declare-fun res!131388 () Bool)

(assert (=> start!25774 (=> (not res!131388) (not e!172689))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25774 (= res!131388 (validMask!0 mask!4002))))

(assert (=> start!25774 e!172689))

(assert (=> start!25774 true))

(declare-fun array_inv!4078 (array!12940) Bool)

(assert (=> start!25774 (array_inv!4078 a!3436)))

(declare-fun b!267052 () Bool)

(declare-fun res!131386 () Bool)

(assert (=> b!267052 (=> (not res!131386) (not e!172688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12940 (_ BitVec 32)) Bool)

(assert (=> b!267052 (= res!131386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267053 () Bool)

(assert (=> b!267053 (= e!172689 e!172688)))

(declare-fun res!131385 () Bool)

(assert (=> b!267053 (=> (not res!131385) (not e!172688))))

(declare-datatypes ((SeekEntryResult!1326 0))(
  ( (MissingZero!1326 (index!7474 (_ BitVec 32))) (Found!1326 (index!7475 (_ BitVec 32))) (Intermediate!1326 (undefined!2138 Bool) (index!7476 (_ BitVec 32)) (x!25739 (_ BitVec 32))) (Undefined!1326) (MissingVacant!1326 (index!7477 (_ BitVec 32))) )
))
(declare-fun lt!134644 () SeekEntryResult!1326)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267053 (= res!131385 (or (= lt!134644 (MissingZero!1326 i!1355)) (= lt!134644 (MissingVacant!1326 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12940 (_ BitVec 32)) SeekEntryResult!1326)

(assert (=> b!267053 (= lt!134644 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!267054 () Bool)

(declare-fun res!131383 () Bool)

(assert (=> b!267054 (=> (not res!131383) (not e!172689))))

(assert (=> b!267054 (= res!131383 (and (= (size!6476 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6476 a!3436))))))

(assert (= (and start!25774 res!131388) b!267054))

(assert (= (and b!267054 res!131383) b!267051))

(assert (= (and b!267051 res!131384) b!267049))

(assert (= (and b!267049 res!131387) b!267053))

(assert (= (and b!267053 res!131385) b!267052))

(assert (= (and b!267052 res!131386) b!267050))

(declare-fun m!283541 () Bool)

(assert (=> b!267053 m!283541))

(declare-fun m!283543 () Bool)

(assert (=> b!267049 m!283543))

(declare-fun m!283545 () Bool)

(assert (=> b!267050 m!283545))

(declare-fun m!283547 () Bool)

(assert (=> start!25774 m!283547))

(declare-fun m!283549 () Bool)

(assert (=> start!25774 m!283549))

(declare-fun m!283551 () Bool)

(assert (=> b!267052 m!283551))

(declare-fun m!283553 () Bool)

(assert (=> b!267051 m!283553))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25790 () Bool)

(assert start!25790)

(declare-fun b!267209 () Bool)

(declare-fun res!131545 () Bool)

(declare-fun e!172762 () Bool)

(assert (=> b!267209 (=> (not res!131545) (not e!172762))))

(declare-datatypes ((array!12956 0))(
  ( (array!12957 (arr!6132 (Array (_ BitVec 32) (_ BitVec 64))) (size!6484 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12956)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12956 (_ BitVec 32)) Bool)

(assert (=> b!267209 (= res!131545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267210 () Bool)

(declare-fun res!131547 () Bool)

(declare-fun e!172761 () Bool)

(assert (=> b!267210 (=> (not res!131547) (not e!172761))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267210 (= res!131547 (validKeyInArray!0 k!2698))))

(declare-fun b!267212 () Bool)

(declare-fun res!131543 () Bool)

(assert (=> b!267212 (=> (not res!131543) (not e!172761))))

(declare-fun arrayContainsKey!0 (array!12956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267212 (= res!131543 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267213 () Bool)

(declare-fun res!131546 () Bool)

(assert (=> b!267213 (=> (not res!131546) (not e!172761))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267213 (= res!131546 (and (= (size!6484 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6484 a!3436))))))

(declare-fun b!267214 () Bool)

(declare-fun res!131550 () Bool)

(assert (=> b!267214 (=> (not res!131550) (not e!172762))))

(assert (=> b!267214 (= res!131550 (bvslt #b00000000000000000000000000000000 (size!6484 a!3436)))))

(declare-fun b!267215 () Bool)

(assert (=> b!267215 (= e!172762 (not true))))

(assert (=> b!267215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12957 (store (arr!6132 a!3436) i!1355 k!2698) (size!6484 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8296 0))(
  ( (Unit!8297) )
))
(declare-fun lt!134692 () Unit!8296)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12956 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8296)

(assert (=> b!267215 (= lt!134692 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!267216 () Bool)

(declare-fun res!131548 () Bool)

(assert (=> b!267216 (=> (not res!131548) (not e!172762))))

(declare-datatypes ((List!3967 0))(
  ( (Nil!3964) (Cons!3963 (h!4630 (_ BitVec 64)) (t!9057 List!3967)) )
))
(declare-fun arrayNoDuplicates!0 (array!12956 (_ BitVec 32) List!3967) Bool)

(assert (=> b!267216 (= res!131548 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3964))))

(declare-fun b!267211 () Bool)

(assert (=> b!267211 (= e!172761 e!172762)))

(declare-fun res!131549 () Bool)

(assert (=> b!267211 (=> (not res!131549) (not e!172762))))

(declare-datatypes ((SeekEntryResult!1334 0))(
  ( (MissingZero!1334 (index!7506 (_ BitVec 32))) (Found!1334 (index!7507 (_ BitVec 32))) (Intermediate!1334 (undefined!2146 Bool) (index!7508 (_ BitVec 32)) (x!25763 (_ BitVec 32))) (Undefined!1334) (MissingVacant!1334 (index!7509 (_ BitVec 32))) )
))
(declare-fun lt!134693 () SeekEntryResult!1334)

(assert (=> b!267211 (= res!131549 (or (= lt!134693 (MissingZero!1334 i!1355)) (= lt!134693 (MissingVacant!1334 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12956 (_ BitVec 32)) SeekEntryResult!1334)

(assert (=> b!267211 (= lt!134693 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!131544 () Bool)

(assert (=> start!25790 (=> (not res!131544) (not e!172761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25790 (= res!131544 (validMask!0 mask!4002))))

(assert (=> start!25790 e!172761))

(assert (=> start!25790 true))

(declare-fun array_inv!4086 (array!12956) Bool)

(assert (=> start!25790 (array_inv!4086 a!3436)))

(assert (= (and start!25790 res!131544) b!267213))

(assert (= (and b!267213 res!131546) b!267210))

(assert (= (and b!267210 res!131547) b!267212))

(assert (= (and b!267212 res!131543) b!267211))

(assert (= (and b!267211 res!131549) b!267209))

(assert (= (and b!267209 res!131545) b!267216))

(assert (= (and b!267216 res!131548) b!267214))

(assert (= (and b!267214 res!131550) b!267215))

(declare-fun m!283665 () Bool)

(assert (=> b!267215 m!283665))

(declare-fun m!283667 () Bool)

(assert (=> b!267215 m!283667))

(declare-fun m!283669 () Bool)

(assert (=> b!267215 m!283669))

(declare-fun m!283671 () Bool)

(assert (=> b!267211 m!283671))

(declare-fun m!283673 () Bool)

(assert (=> b!267209 m!283673))

(declare-fun m!283675 () Bool)

(assert (=> b!267210 m!283675))

(declare-fun m!283677 () Bool)

(assert (=> start!25790 m!283677))

(declare-fun m!283679 () Bool)

(assert (=> start!25790 m!283679))

(declare-fun m!283681 () Bool)

(assert (=> b!267212 m!283681))

(declare-fun m!283683 () Bool)

(assert (=> b!267216 m!283683))

(push 1)


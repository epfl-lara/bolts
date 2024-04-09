; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25742 () Bool)

(assert start!25742)

(declare-fun b!266752 () Bool)

(declare-fun res!131089 () Bool)

(declare-fun e!172546 () Bool)

(assert (=> b!266752 (=> (not res!131089) (not e!172546))))

(declare-datatypes ((array!12908 0))(
  ( (array!12909 (arr!6108 (Array (_ BitVec 32) (_ BitVec 64))) (size!6460 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12908)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266752 (= res!131089 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266753 () Bool)

(declare-fun res!131088 () Bool)

(assert (=> b!266753 (=> (not res!131088) (not e!172546))))

(declare-fun i!1355 () (_ BitVec 32))

(declare-fun mask!4002 () (_ BitVec 32))

(assert (=> b!266753 (= res!131088 (and (= (size!6460 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6460 a!3436))))))

(declare-fun b!266754 () Bool)

(declare-fun e!172544 () Bool)

(assert (=> b!266754 (= e!172546 e!172544)))

(declare-fun res!131090 () Bool)

(assert (=> b!266754 (=> (not res!131090) (not e!172544))))

(declare-datatypes ((SeekEntryResult!1310 0))(
  ( (MissingZero!1310 (index!7410 (_ BitVec 32))) (Found!1310 (index!7411 (_ BitVec 32))) (Intermediate!1310 (undefined!2122 Bool) (index!7412 (_ BitVec 32)) (x!25675 (_ BitVec 32))) (Undefined!1310) (MissingVacant!1310 (index!7413 (_ BitVec 32))) )
))
(declare-fun lt!134558 () SeekEntryResult!1310)

(assert (=> b!266754 (= res!131090 (or (= lt!134558 (MissingZero!1310 i!1355)) (= lt!134558 (MissingVacant!1310 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12908 (_ BitVec 32)) SeekEntryResult!1310)

(assert (=> b!266754 (= lt!134558 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266755 () Bool)

(declare-fun res!131086 () Bool)

(assert (=> b!266755 (=> (not res!131086) (not e!172546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266755 (= res!131086 (validKeyInArray!0 k!2698))))

(declare-fun b!266756 () Bool)

(declare-fun res!131087 () Bool)

(assert (=> b!266756 (=> (not res!131087) (not e!172544))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12908 (_ BitVec 32)) Bool)

(assert (=> b!266756 (= res!131087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266757 () Bool)

(assert (=> b!266757 (= e!172544 false)))

(declare-fun lt!134557 () Bool)

(declare-datatypes ((List!3943 0))(
  ( (Nil!3940) (Cons!3939 (h!4606 (_ BitVec 64)) (t!9033 List!3943)) )
))
(declare-fun arrayNoDuplicates!0 (array!12908 (_ BitVec 32) List!3943) Bool)

(assert (=> b!266757 (= lt!134557 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3940))))

(declare-fun res!131091 () Bool)

(assert (=> start!25742 (=> (not res!131091) (not e!172546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25742 (= res!131091 (validMask!0 mask!4002))))

(assert (=> start!25742 e!172546))

(assert (=> start!25742 true))

(declare-fun array_inv!4062 (array!12908) Bool)

(assert (=> start!25742 (array_inv!4062 a!3436)))

(assert (= (and start!25742 res!131091) b!266753))

(assert (= (and b!266753 res!131088) b!266755))

(assert (= (and b!266755 res!131086) b!266752))

(assert (= (and b!266752 res!131089) b!266754))

(assert (= (and b!266754 res!131090) b!266756))

(assert (= (and b!266756 res!131087) b!266757))

(declare-fun m!283317 () Bool)

(assert (=> b!266752 m!283317))

(declare-fun m!283319 () Bool)

(assert (=> b!266754 m!283319))

(declare-fun m!283321 () Bool)

(assert (=> b!266755 m!283321))

(declare-fun m!283323 () Bool)

(assert (=> start!25742 m!283323))

(declare-fun m!283325 () Bool)

(assert (=> start!25742 m!283325))

(declare-fun m!283327 () Bool)

(assert (=> b!266756 m!283327))

(declare-fun m!283329 () Bool)

(assert (=> b!266757 m!283329))

(push 1)

(assert (not b!266754))

(assert (not b!266757))

(assert (not b!266756))

(assert (not b!266755))


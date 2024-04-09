; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25672 () Bool)

(assert start!25672)

(declare-fun b!266050 () Bool)

(declare-fun res!130387 () Bool)

(declare-fun e!172230 () Bool)

(assert (=> b!266050 (=> (not res!130387) (not e!172230))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266050 (= res!130387 (validKeyInArray!0 k!2698))))

(declare-fun res!130385 () Bool)

(assert (=> start!25672 (=> (not res!130385) (not e!172230))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25672 (= res!130385 (validMask!0 mask!4002))))

(assert (=> start!25672 e!172230))

(assert (=> start!25672 true))

(declare-datatypes ((array!12838 0))(
  ( (array!12839 (arr!6073 (Array (_ BitVec 32) (_ BitVec 64))) (size!6425 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12838)

(declare-fun array_inv!4027 (array!12838) Bool)

(assert (=> start!25672 (array_inv!4027 a!3436)))

(declare-fun b!266051 () Bool)

(declare-fun res!130384 () Bool)

(assert (=> b!266051 (=> (not res!130384) (not e!172230))))

(declare-fun arrayContainsKey!0 (array!12838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266051 (= res!130384 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266052 () Bool)

(declare-fun e!172231 () Bool)

(assert (=> b!266052 (= e!172230 e!172231)))

(declare-fun res!130388 () Bool)

(assert (=> b!266052 (=> (not res!130388) (not e!172231))))

(declare-datatypes ((SeekEntryResult!1275 0))(
  ( (MissingZero!1275 (index!7270 (_ BitVec 32))) (Found!1275 (index!7271 (_ BitVec 32))) (Intermediate!1275 (undefined!2087 Bool) (index!7272 (_ BitVec 32)) (x!25552 (_ BitVec 32))) (Undefined!1275) (MissingVacant!1275 (index!7273 (_ BitVec 32))) )
))
(declare-fun lt!134347 () SeekEntryResult!1275)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266052 (= res!130388 (or (= lt!134347 (MissingZero!1275 i!1355)) (= lt!134347 (MissingVacant!1275 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12838 (_ BitVec 32)) SeekEntryResult!1275)

(assert (=> b!266052 (= lt!134347 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266053 () Bool)

(declare-fun res!130386 () Bool)

(assert (=> b!266053 (=> (not res!130386) (not e!172231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12838 (_ BitVec 32)) Bool)

(assert (=> b!266053 (= res!130386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266054 () Bool)

(declare-fun res!130389 () Bool)

(assert (=> b!266054 (=> (not res!130389) (not e!172230))))

(assert (=> b!266054 (= res!130389 (and (= (size!6425 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6425 a!3436))))))

(declare-fun b!266055 () Bool)

(assert (=> b!266055 (= e!172231 false)))

(declare-fun lt!134348 () Bool)

(declare-datatypes ((List!3908 0))(
  ( (Nil!3905) (Cons!3904 (h!4571 (_ BitVec 64)) (t!8998 List!3908)) )
))
(declare-fun arrayNoDuplicates!0 (array!12838 (_ BitVec 32) List!3908) Bool)

(assert (=> b!266055 (= lt!134348 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3905))))

(assert (= (and start!25672 res!130385) b!266054))

(assert (= (and b!266054 res!130389) b!266050))

(assert (= (and b!266050 res!130387) b!266051))

(assert (= (and b!266051 res!130384) b!266052))

(assert (= (and b!266052 res!130388) b!266053))

(assert (= (and b!266053 res!130386) b!266055))

(declare-fun m!282755 () Bool)

(assert (=> b!266051 m!282755))

(declare-fun m!282757 () Bool)

(assert (=> b!266055 m!282757))

(declare-fun m!282759 () Bool)

(assert (=> b!266053 m!282759))

(declare-fun m!282761 () Bool)

(assert (=> b!266052 m!282761))

(declare-fun m!282763 () Bool)

(assert (=> b!266050 m!282763))

(declare-fun m!282765 () Bool)

(assert (=> start!25672 m!282765))

(declare-fun m!282767 () Bool)

(assert (=> start!25672 m!282767))

(push 1)

(assert (not b!266051))

(assert (not b!266050))


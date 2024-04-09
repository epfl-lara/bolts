; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25768 () Bool)

(assert start!25768)

(declare-fun b!266995 () Bool)

(declare-fun res!131333 () Bool)

(declare-fun e!172662 () Bool)

(assert (=> b!266995 (=> (not res!131333) (not e!172662))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266995 (= res!131333 (validKeyInArray!0 k!2698))))

(declare-fun b!266996 () Bool)

(declare-fun res!131332 () Bool)

(assert (=> b!266996 (=> (not res!131332) (not e!172662))))

(declare-datatypes ((array!12934 0))(
  ( (array!12935 (arr!6121 (Array (_ BitVec 32) (_ BitVec 64))) (size!6473 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12934)

(declare-fun arrayContainsKey!0 (array!12934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266996 (= res!131332 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun res!131331 () Bool)

(assert (=> start!25768 (=> (not res!131331) (not e!172662))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25768 (= res!131331 (validMask!0 mask!4002))))

(assert (=> start!25768 e!172662))

(assert (=> start!25768 true))

(declare-fun array_inv!4075 (array!12934) Bool)

(assert (=> start!25768 (array_inv!4075 a!3436)))

(declare-fun b!266997 () Bool)

(declare-fun res!131330 () Bool)

(assert (=> b!266997 (=> (not res!131330) (not e!172662))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266997 (= res!131330 (and (= (size!6473 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6473 a!3436))))))

(declare-fun b!266998 () Bool)

(declare-fun res!131334 () Bool)

(declare-fun e!172663 () Bool)

(assert (=> b!266998 (=> (not res!131334) (not e!172663))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12934 (_ BitVec 32)) Bool)

(assert (=> b!266998 (= res!131334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266999 () Bool)

(assert (=> b!266999 (= e!172663 false)))

(declare-fun lt!134627 () Bool)

(declare-datatypes ((List!3956 0))(
  ( (Nil!3953) (Cons!3952 (h!4619 (_ BitVec 64)) (t!9046 List!3956)) )
))
(declare-fun arrayNoDuplicates!0 (array!12934 (_ BitVec 32) List!3956) Bool)

(assert (=> b!266999 (= lt!134627 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3953))))

(declare-fun b!267000 () Bool)

(assert (=> b!267000 (= e!172662 e!172663)))

(declare-fun res!131329 () Bool)

(assert (=> b!267000 (=> (not res!131329) (not e!172663))))

(declare-datatypes ((SeekEntryResult!1323 0))(
  ( (MissingZero!1323 (index!7462 (_ BitVec 32))) (Found!1323 (index!7463 (_ BitVec 32))) (Intermediate!1323 (undefined!2135 Bool) (index!7464 (_ BitVec 32)) (x!25728 (_ BitVec 32))) (Undefined!1323) (MissingVacant!1323 (index!7465 (_ BitVec 32))) )
))
(declare-fun lt!134626 () SeekEntryResult!1323)

(assert (=> b!267000 (= res!131329 (or (= lt!134626 (MissingZero!1323 i!1355)) (= lt!134626 (MissingVacant!1323 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12934 (_ BitVec 32)) SeekEntryResult!1323)

(assert (=> b!267000 (= lt!134626 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25768 res!131331) b!266997))

(assert (= (and b!266997 res!131330) b!266995))

(assert (= (and b!266995 res!131333) b!266996))

(assert (= (and b!266996 res!131332) b!267000))

(assert (= (and b!267000 res!131329) b!266998))

(assert (= (and b!266998 res!131334) b!266999))

(declare-fun m!283499 () Bool)

(assert (=> start!25768 m!283499))

(declare-fun m!283501 () Bool)

(assert (=> start!25768 m!283501))

(declare-fun m!283503 () Bool)

(assert (=> b!266998 m!283503))

(declare-fun m!283505 () Bool)

(assert (=> b!266996 m!283505))

(declare-fun m!283507 () Bool)

(assert (=> b!267000 m!283507))

(declare-fun m!283509 () Bool)

(assert (=> b!266999 m!283509))

(declare-fun m!283511 () Bool)

(assert (=> b!266995 m!283511))

(push 1)


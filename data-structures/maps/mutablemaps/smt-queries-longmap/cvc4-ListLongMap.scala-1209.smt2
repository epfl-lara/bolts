; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25736 () Bool)

(assert start!25736)

(declare-fun b!266698 () Bool)

(declare-fun e!172517 () Bool)

(assert (=> b!266698 (= e!172517 false)))

(declare-fun lt!134539 () Bool)

(declare-datatypes ((array!12902 0))(
  ( (array!12903 (arr!6105 (Array (_ BitVec 32) (_ BitVec 64))) (size!6457 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12902)

(declare-datatypes ((List!3940 0))(
  ( (Nil!3937) (Cons!3936 (h!4603 (_ BitVec 64)) (t!9030 List!3940)) )
))
(declare-fun arrayNoDuplicates!0 (array!12902 (_ BitVec 32) List!3940) Bool)

(assert (=> b!266698 (= lt!134539 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3937))))

(declare-fun b!266699 () Bool)

(declare-fun res!131032 () Bool)

(declare-fun e!172519 () Bool)

(assert (=> b!266699 (=> (not res!131032) (not e!172519))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266699 (= res!131032 (validKeyInArray!0 k!2698))))

(declare-fun b!266700 () Bool)

(declare-fun res!131033 () Bool)

(assert (=> b!266700 (=> (not res!131033) (not e!172517))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12902 (_ BitVec 32)) Bool)

(assert (=> b!266700 (= res!131033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266701 () Bool)

(declare-fun res!131036 () Bool)

(assert (=> b!266701 (=> (not res!131036) (not e!172519))))

(declare-fun arrayContainsKey!0 (array!12902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266701 (= res!131036 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266703 () Bool)

(assert (=> b!266703 (= e!172519 e!172517)))

(declare-fun res!131037 () Bool)

(assert (=> b!266703 (=> (not res!131037) (not e!172517))))

(declare-datatypes ((SeekEntryResult!1307 0))(
  ( (MissingZero!1307 (index!7398 (_ BitVec 32))) (Found!1307 (index!7399 (_ BitVec 32))) (Intermediate!1307 (undefined!2119 Bool) (index!7400 (_ BitVec 32)) (x!25664 (_ BitVec 32))) (Undefined!1307) (MissingVacant!1307 (index!7401 (_ BitVec 32))) )
))
(declare-fun lt!134540 () SeekEntryResult!1307)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266703 (= res!131037 (or (= lt!134540 (MissingZero!1307 i!1355)) (= lt!134540 (MissingVacant!1307 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12902 (_ BitVec 32)) SeekEntryResult!1307)

(assert (=> b!266703 (= lt!134540 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!131035 () Bool)

(assert (=> start!25736 (=> (not res!131035) (not e!172519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25736 (= res!131035 (validMask!0 mask!4002))))

(assert (=> start!25736 e!172519))

(assert (=> start!25736 true))

(declare-fun array_inv!4059 (array!12902) Bool)

(assert (=> start!25736 (array_inv!4059 a!3436)))

(declare-fun b!266702 () Bool)

(declare-fun res!131034 () Bool)

(assert (=> b!266702 (=> (not res!131034) (not e!172519))))

(assert (=> b!266702 (= res!131034 (and (= (size!6457 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6457 a!3436))))))

(assert (= (and start!25736 res!131035) b!266702))

(assert (= (and b!266702 res!131034) b!266699))

(assert (= (and b!266699 res!131032) b!266701))

(assert (= (and b!266701 res!131036) b!266703))

(assert (= (and b!266703 res!131037) b!266700))

(assert (= (and b!266700 res!131033) b!266698))

(declare-fun m!283275 () Bool)

(assert (=> b!266699 m!283275))

(declare-fun m!283277 () Bool)

(assert (=> b!266703 m!283277))

(declare-fun m!283279 () Bool)

(assert (=> start!25736 m!283279))

(declare-fun m!283281 () Bool)

(assert (=> start!25736 m!283281))

(declare-fun m!283283 () Bool)

(assert (=> b!266698 m!283283))

(declare-fun m!283285 () Bool)

(assert (=> b!266700 m!283285))

(declare-fun m!283287 () Bool)

(assert (=> b!266701 m!283287))

(push 1)

(assert (not b!266701))

(assert (not b!266699))

(assert (not b!266700))

(assert (not start!25736))

(assert (not b!266703))


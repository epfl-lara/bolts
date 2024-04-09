; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25732 () Bool)

(assert start!25732)

(declare-fun b!266662 () Bool)

(declare-fun res!130998 () Bool)

(declare-fun e!172501 () Bool)

(assert (=> b!266662 (=> (not res!130998) (not e!172501))))

(declare-datatypes ((array!12898 0))(
  ( (array!12899 (arr!6103 (Array (_ BitVec 32) (_ BitVec 64))) (size!6455 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12898)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266662 (= res!130998 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266663 () Bool)

(declare-fun res!130997 () Bool)

(assert (=> b!266663 (=> (not res!130997) (not e!172501))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266663 (= res!130997 (and (= (size!6455 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6455 a!3436))))))

(declare-fun b!266664 () Bool)

(declare-fun e!172499 () Bool)

(assert (=> b!266664 (= e!172501 e!172499)))

(declare-fun res!131000 () Bool)

(assert (=> b!266664 (=> (not res!131000) (not e!172499))))

(declare-datatypes ((SeekEntryResult!1305 0))(
  ( (MissingZero!1305 (index!7390 (_ BitVec 32))) (Found!1305 (index!7391 (_ BitVec 32))) (Intermediate!1305 (undefined!2117 Bool) (index!7392 (_ BitVec 32)) (x!25662 (_ BitVec 32))) (Undefined!1305) (MissingVacant!1305 (index!7393 (_ BitVec 32))) )
))
(declare-fun lt!134528 () SeekEntryResult!1305)

(assert (=> b!266664 (= res!131000 (or (= lt!134528 (MissingZero!1305 i!1355)) (= lt!134528 (MissingVacant!1305 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12898 (_ BitVec 32)) SeekEntryResult!1305)

(assert (=> b!266664 (= lt!134528 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266665 () Bool)

(declare-fun res!131001 () Bool)

(assert (=> b!266665 (=> (not res!131001) (not e!172501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266665 (= res!131001 (validKeyInArray!0 k!2698))))

(declare-fun res!130999 () Bool)

(assert (=> start!25732 (=> (not res!130999) (not e!172501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25732 (= res!130999 (validMask!0 mask!4002))))

(assert (=> start!25732 e!172501))

(assert (=> start!25732 true))

(declare-fun array_inv!4057 (array!12898) Bool)

(assert (=> start!25732 (array_inv!4057 a!3436)))

(declare-fun b!266666 () Bool)

(assert (=> b!266666 (= e!172499 false)))

(declare-fun lt!134527 () Bool)

(declare-datatypes ((List!3938 0))(
  ( (Nil!3935) (Cons!3934 (h!4601 (_ BitVec 64)) (t!9028 List!3938)) )
))
(declare-fun arrayNoDuplicates!0 (array!12898 (_ BitVec 32) List!3938) Bool)

(assert (=> b!266666 (= lt!134527 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3935))))

(declare-fun b!266667 () Bool)

(declare-fun res!130996 () Bool)

(assert (=> b!266667 (=> (not res!130996) (not e!172499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12898 (_ BitVec 32)) Bool)

(assert (=> b!266667 (= res!130996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25732 res!130999) b!266663))

(assert (= (and b!266663 res!130997) b!266665))

(assert (= (and b!266665 res!131001) b!266662))

(assert (= (and b!266662 res!130998) b!266664))

(assert (= (and b!266664 res!131000) b!266667))

(assert (= (and b!266667 res!130996) b!266666))

(declare-fun m!283247 () Bool)

(assert (=> b!266665 m!283247))

(declare-fun m!283249 () Bool)

(assert (=> start!25732 m!283249))

(declare-fun m!283251 () Bool)

(assert (=> start!25732 m!283251))

(declare-fun m!283253 () Bool)

(assert (=> b!266666 m!283253))

(declare-fun m!283255 () Bool)

(assert (=> b!266667 m!283255))

(declare-fun m!283257 () Bool)

(assert (=> b!266664 m!283257))

(declare-fun m!283259 () Bool)

(assert (=> b!266662 m!283259))

(push 1)


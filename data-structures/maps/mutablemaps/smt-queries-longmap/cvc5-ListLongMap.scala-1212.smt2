; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25750 () Bool)

(assert start!25750)

(declare-fun b!266833 () Bool)

(declare-fun res!131172 () Bool)

(declare-fun e!172582 () Bool)

(assert (=> b!266833 (=> (not res!131172) (not e!172582))))

(declare-datatypes ((array!12916 0))(
  ( (array!12917 (arr!6112 (Array (_ BitVec 32) (_ BitVec 64))) (size!6464 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12916)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12916 (_ BitVec 32)) Bool)

(assert (=> b!266833 (= res!131172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266834 () Bool)

(declare-fun e!172580 () Bool)

(assert (=> b!266834 (= e!172580 e!172582)))

(declare-fun res!131170 () Bool)

(assert (=> b!266834 (=> (not res!131170) (not e!172582))))

(declare-datatypes ((SeekEntryResult!1314 0))(
  ( (MissingZero!1314 (index!7426 (_ BitVec 32))) (Found!1314 (index!7427 (_ BitVec 32))) (Intermediate!1314 (undefined!2126 Bool) (index!7428 (_ BitVec 32)) (x!25695 (_ BitVec 32))) (Undefined!1314) (MissingVacant!1314 (index!7429 (_ BitVec 32))) )
))
(declare-fun lt!134573 () SeekEntryResult!1314)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266834 (= res!131170 (or (= lt!134573 (MissingZero!1314 i!1355)) (= lt!134573 (MissingVacant!1314 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12916 (_ BitVec 32)) SeekEntryResult!1314)

(assert (=> b!266834 (= lt!134573 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266835 () Bool)

(declare-fun res!131168 () Bool)

(assert (=> b!266835 (=> (not res!131168) (not e!172580))))

(assert (=> b!266835 (= res!131168 (and (= (size!6464 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6464 a!3436))))))

(declare-fun res!131169 () Bool)

(assert (=> start!25750 (=> (not res!131169) (not e!172580))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25750 (= res!131169 (validMask!0 mask!4002))))

(assert (=> start!25750 e!172580))

(assert (=> start!25750 true))

(declare-fun array_inv!4066 (array!12916) Bool)

(assert (=> start!25750 (array_inv!4066 a!3436)))

(declare-fun b!266836 () Bool)

(declare-fun res!131167 () Bool)

(assert (=> b!266836 (=> (not res!131167) (not e!172580))))

(declare-fun arrayContainsKey!0 (array!12916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266836 (= res!131167 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266837 () Bool)

(declare-fun res!131171 () Bool)

(assert (=> b!266837 (=> (not res!131171) (not e!172580))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266837 (= res!131171 (validKeyInArray!0 k!2698))))

(declare-fun b!266838 () Bool)

(assert (=> b!266838 (= e!172582 false)))

(declare-fun lt!134572 () Bool)

(declare-datatypes ((List!3947 0))(
  ( (Nil!3944) (Cons!3943 (h!4610 (_ BitVec 64)) (t!9037 List!3947)) )
))
(declare-fun arrayNoDuplicates!0 (array!12916 (_ BitVec 32) List!3947) Bool)

(assert (=> b!266838 (= lt!134572 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3944))))

(assert (= (and start!25750 res!131169) b!266835))

(assert (= (and b!266835 res!131168) b!266837))

(assert (= (and b!266837 res!131171) b!266836))

(assert (= (and b!266836 res!131167) b!266834))

(assert (= (and b!266834 res!131170) b!266833))

(assert (= (and b!266833 res!131172) b!266838))

(declare-fun m!283373 () Bool)

(assert (=> b!266836 m!283373))

(declare-fun m!283375 () Bool)

(assert (=> b!266837 m!283375))

(declare-fun m!283377 () Bool)

(assert (=> start!25750 m!283377))

(declare-fun m!283379 () Bool)

(assert (=> start!25750 m!283379))

(declare-fun m!283381 () Bool)

(assert (=> b!266834 m!283381))

(declare-fun m!283383 () Bool)

(assert (=> b!266838 m!283383))

(declare-fun m!283385 () Bool)

(assert (=> b!266833 m!283385))

(push 1)


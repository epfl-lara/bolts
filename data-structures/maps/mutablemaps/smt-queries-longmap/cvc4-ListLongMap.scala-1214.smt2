; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25766 () Bool)

(assert start!25766)

(declare-fun b!266977 () Bool)

(declare-fun res!131313 () Bool)

(declare-fun e!172653 () Bool)

(assert (=> b!266977 (=> (not res!131313) (not e!172653))))

(declare-datatypes ((array!12932 0))(
  ( (array!12933 (arr!6120 (Array (_ BitVec 32) (_ BitVec 64))) (size!6472 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12932)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12932 (_ BitVec 32)) Bool)

(assert (=> b!266977 (= res!131313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266978 () Bool)

(declare-fun e!172652 () Bool)

(assert (=> b!266978 (= e!172652 e!172653)))

(declare-fun res!131314 () Bool)

(assert (=> b!266978 (=> (not res!131314) (not e!172653))))

(declare-datatypes ((SeekEntryResult!1322 0))(
  ( (MissingZero!1322 (index!7458 (_ BitVec 32))) (Found!1322 (index!7459 (_ BitVec 32))) (Intermediate!1322 (undefined!2134 Bool) (index!7460 (_ BitVec 32)) (x!25719 (_ BitVec 32))) (Undefined!1322) (MissingVacant!1322 (index!7461 (_ BitVec 32))) )
))
(declare-fun lt!134620 () SeekEntryResult!1322)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266978 (= res!131314 (or (= lt!134620 (MissingZero!1322 i!1355)) (= lt!134620 (MissingVacant!1322 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12932 (_ BitVec 32)) SeekEntryResult!1322)

(assert (=> b!266978 (= lt!134620 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266979 () Bool)

(assert (=> b!266979 (= e!172653 false)))

(declare-fun lt!134621 () Bool)

(declare-datatypes ((List!3955 0))(
  ( (Nil!3952) (Cons!3951 (h!4618 (_ BitVec 64)) (t!9045 List!3955)) )
))
(declare-fun arrayNoDuplicates!0 (array!12932 (_ BitVec 32) List!3955) Bool)

(assert (=> b!266979 (= lt!134621 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3952))))

(declare-fun b!266980 () Bool)

(declare-fun res!131315 () Bool)

(assert (=> b!266980 (=> (not res!131315) (not e!172652))))

(declare-fun arrayContainsKey!0 (array!12932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266980 (= res!131315 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun res!131316 () Bool)

(assert (=> start!25766 (=> (not res!131316) (not e!172652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25766 (= res!131316 (validMask!0 mask!4002))))

(assert (=> start!25766 e!172652))

(assert (=> start!25766 true))

(declare-fun array_inv!4074 (array!12932) Bool)

(assert (=> start!25766 (array_inv!4074 a!3436)))

(declare-fun b!266981 () Bool)

(declare-fun res!131312 () Bool)

(assert (=> b!266981 (=> (not res!131312) (not e!172652))))

(assert (=> b!266981 (= res!131312 (and (= (size!6472 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6472 a!3436))))))

(declare-fun b!266982 () Bool)

(declare-fun res!131311 () Bool)

(assert (=> b!266982 (=> (not res!131311) (not e!172652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266982 (= res!131311 (validKeyInArray!0 k!2698))))

(assert (= (and start!25766 res!131316) b!266981))

(assert (= (and b!266981 res!131312) b!266982))

(assert (= (and b!266982 res!131311) b!266980))

(assert (= (and b!266980 res!131315) b!266978))

(assert (= (and b!266978 res!131314) b!266977))

(assert (= (and b!266977 res!131313) b!266979))

(declare-fun m!283485 () Bool)

(assert (=> b!266977 m!283485))

(declare-fun m!283487 () Bool)

(assert (=> b!266982 m!283487))

(declare-fun m!283489 () Bool)

(assert (=> b!266980 m!283489))

(declare-fun m!283491 () Bool)

(assert (=> b!266979 m!283491))

(declare-fun m!283493 () Bool)

(assert (=> start!25766 m!283493))

(declare-fun m!283495 () Bool)

(assert (=> start!25766 m!283495))

(declare-fun m!283497 () Bool)

(assert (=> b!266978 m!283497))

(push 1)

(assert (not b!266982))

(assert (not b!266977))

(assert (not start!25766))

(assert (not b!266978))

(assert (not b!266980))

(assert (not b!266979))


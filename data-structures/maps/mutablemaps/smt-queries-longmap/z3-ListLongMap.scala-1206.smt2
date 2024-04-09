; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25716 () Bool)

(assert start!25716)

(declare-fun b!266518 () Bool)

(declare-fun res!130854 () Bool)

(declare-fun e!172427 () Bool)

(assert (=> b!266518 (=> (not res!130854) (not e!172427))))

(declare-datatypes ((array!12882 0))(
  ( (array!12883 (arr!6095 (Array (_ BitVec 32) (_ BitVec 64))) (size!6447 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12882)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12882 (_ BitVec 32)) Bool)

(assert (=> b!266518 (= res!130854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266519 () Bool)

(declare-fun res!130856 () Bool)

(declare-fun e!172429 () Bool)

(assert (=> b!266519 (=> (not res!130856) (not e!172429))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266519 (= res!130856 (and (= (size!6447 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6447 a!3436))))))

(declare-fun b!266520 () Bool)

(declare-fun res!130857 () Bool)

(assert (=> b!266520 (=> (not res!130857) (not e!172429))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266520 (= res!130857 (validKeyInArray!0 k0!2698))))

(declare-fun b!266521 () Bool)

(declare-fun res!130855 () Bool)

(assert (=> b!266521 (=> (not res!130855) (not e!172429))))

(declare-fun arrayContainsKey!0 (array!12882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266521 (= res!130855 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266522 () Bool)

(assert (=> b!266522 (= e!172427 false)))

(declare-fun lt!134479 () Bool)

(declare-datatypes ((List!3930 0))(
  ( (Nil!3927) (Cons!3926 (h!4593 (_ BitVec 64)) (t!9020 List!3930)) )
))
(declare-fun arrayNoDuplicates!0 (array!12882 (_ BitVec 32) List!3930) Bool)

(assert (=> b!266522 (= lt!134479 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3927))))

(declare-fun b!266523 () Bool)

(assert (=> b!266523 (= e!172429 e!172427)))

(declare-fun res!130853 () Bool)

(assert (=> b!266523 (=> (not res!130853) (not e!172427))))

(declare-datatypes ((SeekEntryResult!1297 0))(
  ( (MissingZero!1297 (index!7358 (_ BitVec 32))) (Found!1297 (index!7359 (_ BitVec 32))) (Intermediate!1297 (undefined!2109 Bool) (index!7360 (_ BitVec 32)) (x!25630 (_ BitVec 32))) (Undefined!1297) (MissingVacant!1297 (index!7361 (_ BitVec 32))) )
))
(declare-fun lt!134480 () SeekEntryResult!1297)

(assert (=> b!266523 (= res!130853 (or (= lt!134480 (MissingZero!1297 i!1355)) (= lt!134480 (MissingVacant!1297 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12882 (_ BitVec 32)) SeekEntryResult!1297)

(assert (=> b!266523 (= lt!134480 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!130852 () Bool)

(assert (=> start!25716 (=> (not res!130852) (not e!172429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25716 (= res!130852 (validMask!0 mask!4002))))

(assert (=> start!25716 e!172429))

(assert (=> start!25716 true))

(declare-fun array_inv!4049 (array!12882) Bool)

(assert (=> start!25716 (array_inv!4049 a!3436)))

(assert (= (and start!25716 res!130852) b!266519))

(assert (= (and b!266519 res!130856) b!266520))

(assert (= (and b!266520 res!130857) b!266521))

(assert (= (and b!266521 res!130855) b!266523))

(assert (= (and b!266523 res!130853) b!266518))

(assert (= (and b!266518 res!130854) b!266522))

(declare-fun m!283135 () Bool)

(assert (=> b!266522 m!283135))

(declare-fun m!283137 () Bool)

(assert (=> b!266518 m!283137))

(declare-fun m!283139 () Bool)

(assert (=> b!266521 m!283139))

(declare-fun m!283141 () Bool)

(assert (=> b!266523 m!283141))

(declare-fun m!283143 () Bool)

(assert (=> start!25716 m!283143))

(declare-fun m!283145 () Bool)

(assert (=> start!25716 m!283145))

(declare-fun m!283147 () Bool)

(assert (=> b!266520 m!283147))

(check-sat (not start!25716) (not b!266523) (not b!266522) (not b!266518) (not b!266521) (not b!266520))
(check-sat)

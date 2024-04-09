; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25728 () Bool)

(assert start!25728)

(declare-fun b!266626 () Bool)

(declare-fun e!172481 () Bool)

(assert (=> b!266626 (= e!172481 false)))

(declare-fun lt!134516 () Bool)

(declare-datatypes ((array!12894 0))(
  ( (array!12895 (arr!6101 (Array (_ BitVec 32) (_ BitVec 64))) (size!6453 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12894)

(declare-datatypes ((List!3936 0))(
  ( (Nil!3933) (Cons!3932 (h!4599 (_ BitVec 64)) (t!9026 List!3936)) )
))
(declare-fun arrayNoDuplicates!0 (array!12894 (_ BitVec 32) List!3936) Bool)

(assert (=> b!266626 (= lt!134516 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3933))))

(declare-fun b!266627 () Bool)

(declare-fun e!172483 () Bool)

(assert (=> b!266627 (= e!172483 e!172481)))

(declare-fun res!130965 () Bool)

(assert (=> b!266627 (=> (not res!130965) (not e!172481))))

(declare-datatypes ((SeekEntryResult!1303 0))(
  ( (MissingZero!1303 (index!7382 (_ BitVec 32))) (Found!1303 (index!7383 (_ BitVec 32))) (Intermediate!1303 (undefined!2115 Bool) (index!7384 (_ BitVec 32)) (x!25652 (_ BitVec 32))) (Undefined!1303) (MissingVacant!1303 (index!7385 (_ BitVec 32))) )
))
(declare-fun lt!134515 () SeekEntryResult!1303)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266627 (= res!130965 (or (= lt!134515 (MissingZero!1303 i!1355)) (= lt!134515 (MissingVacant!1303 i!1355))))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12894 (_ BitVec 32)) SeekEntryResult!1303)

(assert (=> b!266627 (= lt!134515 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266628 () Bool)

(declare-fun res!130964 () Bool)

(assert (=> b!266628 (=> (not res!130964) (not e!172483))))

(assert (=> b!266628 (= res!130964 (and (= (size!6453 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6453 a!3436))))))

(declare-fun res!130961 () Bool)

(assert (=> start!25728 (=> (not res!130961) (not e!172483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25728 (= res!130961 (validMask!0 mask!4002))))

(assert (=> start!25728 e!172483))

(assert (=> start!25728 true))

(declare-fun array_inv!4055 (array!12894) Bool)

(assert (=> start!25728 (array_inv!4055 a!3436)))

(declare-fun b!266629 () Bool)

(declare-fun res!130960 () Bool)

(assert (=> b!266629 (=> (not res!130960) (not e!172483))))

(declare-fun arrayContainsKey!0 (array!12894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266629 (= res!130960 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266630 () Bool)

(declare-fun res!130962 () Bool)

(assert (=> b!266630 (=> (not res!130962) (not e!172483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266630 (= res!130962 (validKeyInArray!0 k0!2698))))

(declare-fun b!266631 () Bool)

(declare-fun res!130963 () Bool)

(assert (=> b!266631 (=> (not res!130963) (not e!172481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12894 (_ BitVec 32)) Bool)

(assert (=> b!266631 (= res!130963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25728 res!130961) b!266628))

(assert (= (and b!266628 res!130964) b!266630))

(assert (= (and b!266630 res!130962) b!266629))

(assert (= (and b!266629 res!130960) b!266627))

(assert (= (and b!266627 res!130965) b!266631))

(assert (= (and b!266631 res!130963) b!266626))

(declare-fun m!283219 () Bool)

(assert (=> start!25728 m!283219))

(declare-fun m!283221 () Bool)

(assert (=> start!25728 m!283221))

(declare-fun m!283223 () Bool)

(assert (=> b!266631 m!283223))

(declare-fun m!283225 () Bool)

(assert (=> b!266626 m!283225))

(declare-fun m!283227 () Bool)

(assert (=> b!266627 m!283227))

(declare-fun m!283229 () Bool)

(assert (=> b!266629 m!283229))

(declare-fun m!283231 () Bool)

(assert (=> b!266630 m!283231))

(check-sat (not start!25728) (not b!266629) (not b!266631) (not b!266630) (not b!266626) (not b!266627))
(check-sat)

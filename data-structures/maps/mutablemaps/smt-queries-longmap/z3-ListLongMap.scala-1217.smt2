; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25782 () Bool)

(assert start!25782)

(declare-fun b!267121 () Bool)

(declare-fun res!131455 () Bool)

(declare-fun e!172726 () Bool)

(assert (=> b!267121 (=> (not res!131455) (not e!172726))))

(declare-datatypes ((array!12948 0))(
  ( (array!12949 (arr!6128 (Array (_ BitVec 32) (_ BitVec 64))) (size!6480 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12948)

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267121 (= res!131455 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267122 () Bool)

(declare-fun res!131459 () Bool)

(assert (=> b!267122 (=> (not res!131459) (not e!172726))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267122 (= res!131459 (and (= (size!6480 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6480 a!3436))))))

(declare-fun b!267123 () Bool)

(declare-fun res!131456 () Bool)

(assert (=> b!267123 (=> (not res!131456) (not e!172726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267123 (= res!131456 (validKeyInArray!0 k0!2698))))

(declare-fun b!267124 () Bool)

(declare-fun e!172724 () Bool)

(assert (=> b!267124 (= e!172724 false)))

(declare-fun lt!134669 () Bool)

(declare-datatypes ((List!3963 0))(
  ( (Nil!3960) (Cons!3959 (h!4626 (_ BitVec 64)) (t!9053 List!3963)) )
))
(declare-fun arrayNoDuplicates!0 (array!12948 (_ BitVec 32) List!3963) Bool)

(assert (=> b!267124 (= lt!134669 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3960))))

(declare-fun b!267125 () Bool)

(assert (=> b!267125 (= e!172726 e!172724)))

(declare-fun res!131458 () Bool)

(assert (=> b!267125 (=> (not res!131458) (not e!172724))))

(declare-datatypes ((SeekEntryResult!1330 0))(
  ( (MissingZero!1330 (index!7490 (_ BitVec 32))) (Found!1330 (index!7491 (_ BitVec 32))) (Intermediate!1330 (undefined!2142 Bool) (index!7492 (_ BitVec 32)) (x!25751 (_ BitVec 32))) (Undefined!1330) (MissingVacant!1330 (index!7493 (_ BitVec 32))) )
))
(declare-fun lt!134668 () SeekEntryResult!1330)

(assert (=> b!267125 (= res!131458 (or (= lt!134668 (MissingZero!1330 i!1355)) (= lt!134668 (MissingVacant!1330 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12948 (_ BitVec 32)) SeekEntryResult!1330)

(assert (=> b!267125 (= lt!134668 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!267126 () Bool)

(declare-fun res!131457 () Bool)

(assert (=> b!267126 (=> (not res!131457) (not e!172724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12948 (_ BitVec 32)) Bool)

(assert (=> b!267126 (= res!131457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!131460 () Bool)

(assert (=> start!25782 (=> (not res!131460) (not e!172726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25782 (= res!131460 (validMask!0 mask!4002))))

(assert (=> start!25782 e!172726))

(assert (=> start!25782 true))

(declare-fun array_inv!4082 (array!12948) Bool)

(assert (=> start!25782 (array_inv!4082 a!3436)))

(assert (= (and start!25782 res!131460) b!267122))

(assert (= (and b!267122 res!131459) b!267123))

(assert (= (and b!267123 res!131456) b!267121))

(assert (= (and b!267121 res!131455) b!267125))

(assert (= (and b!267125 res!131458) b!267126))

(assert (= (and b!267126 res!131457) b!267124))

(declare-fun m!283597 () Bool)

(assert (=> b!267126 m!283597))

(declare-fun m!283599 () Bool)

(assert (=> b!267123 m!283599))

(declare-fun m!283601 () Bool)

(assert (=> start!25782 m!283601))

(declare-fun m!283603 () Bool)

(assert (=> start!25782 m!283603))

(declare-fun m!283605 () Bool)

(assert (=> b!267125 m!283605))

(declare-fun m!283607 () Bool)

(assert (=> b!267121 m!283607))

(declare-fun m!283609 () Bool)

(assert (=> b!267124 m!283609))

(check-sat (not b!267126) (not start!25782) (not b!267121) (not b!267124) (not b!267123) (not b!267125))
(check-sat)

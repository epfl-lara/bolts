; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25746 () Bool)

(assert start!25746)

(declare-fun b!266793 () Bool)

(declare-fun res!131129 () Bool)

(declare-fun e!172564 () Bool)

(assert (=> b!266793 (=> (not res!131129) (not e!172564))))

(declare-datatypes ((array!12912 0))(
  ( (array!12913 (arr!6110 (Array (_ BitVec 32) (_ BitVec 64))) (size!6462 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12912)

(declare-datatypes ((List!3945 0))(
  ( (Nil!3942) (Cons!3941 (h!4608 (_ BitVec 64)) (t!9035 List!3945)) )
))
(declare-fun arrayNoDuplicates!0 (array!12912 (_ BitVec 32) List!3945) Bool)

(assert (=> b!266793 (= res!131129 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3942))))

(declare-fun b!266794 () Bool)

(declare-fun res!131133 () Bool)

(declare-fun e!172562 () Bool)

(assert (=> b!266794 (=> (not res!131133) (not e!172562))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266794 (= res!131133 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun res!131131 () Bool)

(assert (=> start!25746 (=> (not res!131131) (not e!172562))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25746 (= res!131131 (validMask!0 mask!4002))))

(assert (=> start!25746 e!172562))

(assert (=> start!25746 true))

(declare-fun array_inv!4064 (array!12912) Bool)

(assert (=> start!25746 (array_inv!4064 a!3436)))

(declare-fun b!266795 () Bool)

(declare-fun res!131130 () Bool)

(assert (=> b!266795 (=> (not res!131130) (not e!172562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266795 (= res!131130 (validKeyInArray!0 k0!2698))))

(declare-fun b!266796 () Bool)

(assert (=> b!266796 (= e!172564 (bvsge #b00000000000000000000000000000000 (size!6462 a!3436)))))

(declare-fun b!266797 () Bool)

(assert (=> b!266797 (= e!172562 e!172564)))

(declare-fun res!131128 () Bool)

(assert (=> b!266797 (=> (not res!131128) (not e!172564))))

(declare-datatypes ((SeekEntryResult!1312 0))(
  ( (MissingZero!1312 (index!7418 (_ BitVec 32))) (Found!1312 (index!7419 (_ BitVec 32))) (Intermediate!1312 (undefined!2124 Bool) (index!7420 (_ BitVec 32)) (x!25685 (_ BitVec 32))) (Undefined!1312) (MissingVacant!1312 (index!7421 (_ BitVec 32))) )
))
(declare-fun lt!134564 () SeekEntryResult!1312)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266797 (= res!131128 (or (= lt!134564 (MissingZero!1312 i!1355)) (= lt!134564 (MissingVacant!1312 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12912 (_ BitVec 32)) SeekEntryResult!1312)

(assert (=> b!266797 (= lt!134564 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266798 () Bool)

(declare-fun res!131132 () Bool)

(assert (=> b!266798 (=> (not res!131132) (not e!172564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12912 (_ BitVec 32)) Bool)

(assert (=> b!266798 (= res!131132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266799 () Bool)

(declare-fun res!131127 () Bool)

(assert (=> b!266799 (=> (not res!131127) (not e!172562))))

(assert (=> b!266799 (= res!131127 (and (= (size!6462 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6462 a!3436))))))

(assert (= (and start!25746 res!131131) b!266799))

(assert (= (and b!266799 res!131127) b!266795))

(assert (= (and b!266795 res!131130) b!266794))

(assert (= (and b!266794 res!131133) b!266797))

(assert (= (and b!266797 res!131128) b!266798))

(assert (= (and b!266798 res!131132) b!266793))

(assert (= (and b!266793 res!131129) b!266796))

(declare-fun m!283345 () Bool)

(assert (=> start!25746 m!283345))

(declare-fun m!283347 () Bool)

(assert (=> start!25746 m!283347))

(declare-fun m!283349 () Bool)

(assert (=> b!266793 m!283349))

(declare-fun m!283351 () Bool)

(assert (=> b!266794 m!283351))

(declare-fun m!283353 () Bool)

(assert (=> b!266797 m!283353))

(declare-fun m!283355 () Bool)

(assert (=> b!266798 m!283355))

(declare-fun m!283357 () Bool)

(assert (=> b!266795 m!283357))

(check-sat (not b!266795) (not b!266797) (not start!25746) (not b!266793) (not b!266794) (not b!266798))
(check-sat)

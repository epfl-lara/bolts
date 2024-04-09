; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25656 () Bool)

(assert start!25656)

(declare-fun b!265906 () Bool)

(declare-fun res!130245 () Bool)

(declare-fun e!172157 () Bool)

(assert (=> b!265906 (=> (not res!130245) (not e!172157))))

(declare-datatypes ((array!12822 0))(
  ( (array!12823 (arr!6065 (Array (_ BitVec 32) (_ BitVec 64))) (size!6417 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12822)

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265906 (= res!130245 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265907 () Bool)

(declare-fun res!130244 () Bool)

(assert (=> b!265907 (=> (not res!130244) (not e!172157))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265907 (= res!130244 (and (= (size!6417 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6417 a!3436))))))

(declare-fun b!265908 () Bool)

(declare-fun e!172159 () Bool)

(assert (=> b!265908 (= e!172157 e!172159)))

(declare-fun res!130241 () Bool)

(assert (=> b!265908 (=> (not res!130241) (not e!172159))))

(declare-datatypes ((SeekEntryResult!1267 0))(
  ( (MissingZero!1267 (index!7238 (_ BitVec 32))) (Found!1267 (index!7239 (_ BitVec 32))) (Intermediate!1267 (undefined!2079 Bool) (index!7240 (_ BitVec 32)) (x!25520 (_ BitVec 32))) (Undefined!1267) (MissingVacant!1267 (index!7241 (_ BitVec 32))) )
))
(declare-fun lt!134300 () SeekEntryResult!1267)

(assert (=> b!265908 (= res!130241 (or (= lt!134300 (MissingZero!1267 i!1355)) (= lt!134300 (MissingVacant!1267 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12822 (_ BitVec 32)) SeekEntryResult!1267)

(assert (=> b!265908 (= lt!134300 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!265909 () Bool)

(assert (=> b!265909 (= e!172159 false)))

(declare-fun lt!134299 () Bool)

(declare-datatypes ((List!3900 0))(
  ( (Nil!3897) (Cons!3896 (h!4563 (_ BitVec 64)) (t!8990 List!3900)) )
))
(declare-fun arrayNoDuplicates!0 (array!12822 (_ BitVec 32) List!3900) Bool)

(assert (=> b!265909 (= lt!134299 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3897))))

(declare-fun res!130243 () Bool)

(assert (=> start!25656 (=> (not res!130243) (not e!172157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25656 (= res!130243 (validMask!0 mask!4002))))

(assert (=> start!25656 e!172157))

(assert (=> start!25656 true))

(declare-fun array_inv!4019 (array!12822) Bool)

(assert (=> start!25656 (array_inv!4019 a!3436)))

(declare-fun b!265910 () Bool)

(declare-fun res!130240 () Bool)

(assert (=> b!265910 (=> (not res!130240) (not e!172159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12822 (_ BitVec 32)) Bool)

(assert (=> b!265910 (= res!130240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265911 () Bool)

(declare-fun res!130242 () Bool)

(assert (=> b!265911 (=> (not res!130242) (not e!172157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265911 (= res!130242 (validKeyInArray!0 k0!2698))))

(assert (= (and start!25656 res!130243) b!265907))

(assert (= (and b!265907 res!130244) b!265911))

(assert (= (and b!265911 res!130242) b!265906))

(assert (= (and b!265906 res!130245) b!265908))

(assert (= (and b!265908 res!130241) b!265910))

(assert (= (and b!265910 res!130240) b!265909))

(declare-fun m!282643 () Bool)

(assert (=> b!265908 m!282643))

(declare-fun m!282645 () Bool)

(assert (=> start!25656 m!282645))

(declare-fun m!282647 () Bool)

(assert (=> start!25656 m!282647))

(declare-fun m!282649 () Bool)

(assert (=> b!265906 m!282649))

(declare-fun m!282651 () Bool)

(assert (=> b!265910 m!282651))

(declare-fun m!282653 () Bool)

(assert (=> b!265911 m!282653))

(declare-fun m!282655 () Bool)

(assert (=> b!265909 m!282655))

(check-sat (not b!265908) (not b!265910) (not start!25656) (not b!265911) (not b!265909) (not b!265906))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25620 () Bool)

(assert start!25620)

(declare-fun res!129920 () Bool)

(declare-fun e!171997 () Bool)

(assert (=> start!25620 (=> (not res!129920) (not e!171997))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25620 (= res!129920 (validMask!0 mask!4002))))

(assert (=> start!25620 e!171997))

(assert (=> start!25620 true))

(declare-datatypes ((array!12786 0))(
  ( (array!12787 (arr!6047 (Array (_ BitVec 32) (_ BitVec 64))) (size!6399 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12786)

(declare-fun array_inv!4001 (array!12786) Bool)

(assert (=> start!25620 (array_inv!4001 a!3436)))

(declare-fun b!265582 () Bool)

(declare-fun res!129916 () Bool)

(assert (=> b!265582 (=> (not res!129916) (not e!171997))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265582 (= res!129916 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265583 () Bool)

(declare-fun res!129917 () Bool)

(declare-fun e!171995 () Bool)

(assert (=> b!265583 (=> (not res!129917) (not e!171995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12786 (_ BitVec 32)) Bool)

(assert (=> b!265583 (= res!129917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265584 () Bool)

(declare-fun res!129919 () Bool)

(assert (=> b!265584 (=> (not res!129919) (not e!171997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265584 (= res!129919 (validKeyInArray!0 k0!2698))))

(declare-fun b!265585 () Bool)

(assert (=> b!265585 (= e!171997 e!171995)))

(declare-fun res!129918 () Bool)

(assert (=> b!265585 (=> (not res!129918) (not e!171995))))

(declare-datatypes ((SeekEntryResult!1249 0))(
  ( (MissingZero!1249 (index!7166 (_ BitVec 32))) (Found!1249 (index!7167 (_ BitVec 32))) (Intermediate!1249 (undefined!2061 Bool) (index!7168 (_ BitVec 32)) (x!25454 (_ BitVec 32))) (Undefined!1249) (MissingVacant!1249 (index!7169 (_ BitVec 32))) )
))
(declare-fun lt!134191 () SeekEntryResult!1249)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265585 (= res!129918 (or (= lt!134191 (MissingZero!1249 i!1355)) (= lt!134191 (MissingVacant!1249 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12786 (_ BitVec 32)) SeekEntryResult!1249)

(assert (=> b!265585 (= lt!134191 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!265586 () Bool)

(assert (=> b!265586 (= e!171995 false)))

(declare-fun lt!134192 () Bool)

(declare-datatypes ((List!3882 0))(
  ( (Nil!3879) (Cons!3878 (h!4545 (_ BitVec 64)) (t!8972 List!3882)) )
))
(declare-fun arrayNoDuplicates!0 (array!12786 (_ BitVec 32) List!3882) Bool)

(assert (=> b!265586 (= lt!134192 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3879))))

(declare-fun b!265587 () Bool)

(declare-fun res!129921 () Bool)

(assert (=> b!265587 (=> (not res!129921) (not e!171997))))

(assert (=> b!265587 (= res!129921 (and (= (size!6399 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6399 a!3436))))))

(assert (= (and start!25620 res!129920) b!265587))

(assert (= (and b!265587 res!129921) b!265584))

(assert (= (and b!265584 res!129919) b!265582))

(assert (= (and b!265582 res!129916) b!265585))

(assert (= (and b!265585 res!129918) b!265583))

(assert (= (and b!265583 res!129917) b!265586))

(declare-fun m!282391 () Bool)

(assert (=> b!265586 m!282391))

(declare-fun m!282393 () Bool)

(assert (=> b!265582 m!282393))

(declare-fun m!282395 () Bool)

(assert (=> b!265584 m!282395))

(declare-fun m!282397 () Bool)

(assert (=> b!265583 m!282397))

(declare-fun m!282399 () Bool)

(assert (=> b!265585 m!282399))

(declare-fun m!282401 () Bool)

(assert (=> start!25620 m!282401))

(declare-fun m!282403 () Bool)

(assert (=> start!25620 m!282403))

(check-sat (not b!265582) (not b!265586) (not b!265584) (not b!265585) (not b!265583) (not start!25620))
(check-sat)

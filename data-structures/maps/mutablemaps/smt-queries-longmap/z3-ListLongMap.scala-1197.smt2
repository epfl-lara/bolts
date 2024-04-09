; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25662 () Bool)

(assert start!25662)

(declare-fun res!130298 () Bool)

(declare-fun e!172184 () Bool)

(assert (=> start!25662 (=> (not res!130298) (not e!172184))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25662 (= res!130298 (validMask!0 mask!4002))))

(assert (=> start!25662 e!172184))

(assert (=> start!25662 true))

(declare-datatypes ((array!12828 0))(
  ( (array!12829 (arr!6068 (Array (_ BitVec 32) (_ BitVec 64))) (size!6420 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12828)

(declare-fun array_inv!4022 (array!12828) Bool)

(assert (=> start!25662 (array_inv!4022 a!3436)))

(declare-fun b!265960 () Bool)

(declare-fun res!130299 () Bool)

(assert (=> b!265960 (=> (not res!130299) (not e!172184))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265960 (= res!130299 (validKeyInArray!0 k0!2698))))

(declare-fun b!265961 () Bool)

(declare-fun res!130296 () Bool)

(assert (=> b!265961 (=> (not res!130296) (not e!172184))))

(declare-fun arrayContainsKey!0 (array!12828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265961 (= res!130296 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265962 () Bool)

(declare-fun e!172186 () Bool)

(assert (=> b!265962 (= e!172184 e!172186)))

(declare-fun res!130297 () Bool)

(assert (=> b!265962 (=> (not res!130297) (not e!172186))))

(declare-datatypes ((SeekEntryResult!1270 0))(
  ( (MissingZero!1270 (index!7250 (_ BitVec 32))) (Found!1270 (index!7251 (_ BitVec 32))) (Intermediate!1270 (undefined!2082 Bool) (index!7252 (_ BitVec 32)) (x!25531 (_ BitVec 32))) (Undefined!1270) (MissingVacant!1270 (index!7253 (_ BitVec 32))) )
))
(declare-fun lt!134318 () SeekEntryResult!1270)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265962 (= res!130297 (or (= lt!134318 (MissingZero!1270 i!1355)) (= lt!134318 (MissingVacant!1270 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12828 (_ BitVec 32)) SeekEntryResult!1270)

(assert (=> b!265962 (= lt!134318 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!265963 () Bool)

(declare-fun res!130295 () Bool)

(assert (=> b!265963 (=> (not res!130295) (not e!172186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12828 (_ BitVec 32)) Bool)

(assert (=> b!265963 (= res!130295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265964 () Bool)

(declare-fun res!130294 () Bool)

(assert (=> b!265964 (=> (not res!130294) (not e!172184))))

(assert (=> b!265964 (= res!130294 (and (= (size!6420 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6420 a!3436))))))

(declare-fun b!265965 () Bool)

(assert (=> b!265965 (= e!172186 false)))

(declare-fun lt!134317 () Bool)

(declare-datatypes ((List!3903 0))(
  ( (Nil!3900) (Cons!3899 (h!4566 (_ BitVec 64)) (t!8993 List!3903)) )
))
(declare-fun arrayNoDuplicates!0 (array!12828 (_ BitVec 32) List!3903) Bool)

(assert (=> b!265965 (= lt!134317 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3900))))

(assert (= (and start!25662 res!130298) b!265964))

(assert (= (and b!265964 res!130294) b!265960))

(assert (= (and b!265960 res!130299) b!265961))

(assert (= (and b!265961 res!130296) b!265962))

(assert (= (and b!265962 res!130297) b!265963))

(assert (= (and b!265963 res!130295) b!265965))

(declare-fun m!282685 () Bool)

(assert (=> b!265962 m!282685))

(declare-fun m!282687 () Bool)

(assert (=> b!265961 m!282687))

(declare-fun m!282689 () Bool)

(assert (=> start!25662 m!282689))

(declare-fun m!282691 () Bool)

(assert (=> start!25662 m!282691))

(declare-fun m!282693 () Bool)

(assert (=> b!265963 m!282693))

(declare-fun m!282695 () Bool)

(assert (=> b!265965 m!282695))

(declare-fun m!282697 () Bool)

(assert (=> b!265960 m!282697))

(check-sat (not b!265963) (not start!25662) (not b!265965) (not b!265960) (not b!265962) (not b!265961))
(check-sat)

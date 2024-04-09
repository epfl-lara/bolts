; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25626 () Bool)

(assert start!25626)

(declare-fun b!265636 () Bool)

(declare-fun res!129973 () Bool)

(declare-fun e!172024 () Bool)

(assert (=> b!265636 (=> (not res!129973) (not e!172024))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265636 (= res!129973 (validKeyInArray!0 k0!2698))))

(declare-fun b!265637 () Bool)

(declare-fun e!172022 () Bool)

(assert (=> b!265637 (= e!172024 e!172022)))

(declare-fun res!129975 () Bool)

(assert (=> b!265637 (=> (not res!129975) (not e!172022))))

(declare-datatypes ((SeekEntryResult!1252 0))(
  ( (MissingZero!1252 (index!7178 (_ BitVec 32))) (Found!1252 (index!7179 (_ BitVec 32))) (Intermediate!1252 (undefined!2064 Bool) (index!7180 (_ BitVec 32)) (x!25465 (_ BitVec 32))) (Undefined!1252) (MissingVacant!1252 (index!7181 (_ BitVec 32))) )
))
(declare-fun lt!134210 () SeekEntryResult!1252)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265637 (= res!129975 (or (= lt!134210 (MissingZero!1252 i!1355)) (= lt!134210 (MissingVacant!1252 i!1355))))))

(declare-datatypes ((array!12792 0))(
  ( (array!12793 (arr!6050 (Array (_ BitVec 32) (_ BitVec 64))) (size!6402 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12792)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12792 (_ BitVec 32)) SeekEntryResult!1252)

(assert (=> b!265637 (= lt!134210 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!129974 () Bool)

(assert (=> start!25626 (=> (not res!129974) (not e!172024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25626 (= res!129974 (validMask!0 mask!4002))))

(assert (=> start!25626 e!172024))

(assert (=> start!25626 true))

(declare-fun array_inv!4004 (array!12792) Bool)

(assert (=> start!25626 (array_inv!4004 a!3436)))

(declare-fun b!265638 () Bool)

(assert (=> b!265638 (= e!172022 false)))

(declare-fun lt!134209 () Bool)

(declare-datatypes ((List!3885 0))(
  ( (Nil!3882) (Cons!3881 (h!4548 (_ BitVec 64)) (t!8975 List!3885)) )
))
(declare-fun arrayNoDuplicates!0 (array!12792 (_ BitVec 32) List!3885) Bool)

(assert (=> b!265638 (= lt!134209 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3882))))

(declare-fun b!265639 () Bool)

(declare-fun res!129971 () Bool)

(assert (=> b!265639 (=> (not res!129971) (not e!172024))))

(assert (=> b!265639 (= res!129971 (and (= (size!6402 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6402 a!3436))))))

(declare-fun b!265640 () Bool)

(declare-fun res!129972 () Bool)

(assert (=> b!265640 (=> (not res!129972) (not e!172024))))

(declare-fun arrayContainsKey!0 (array!12792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265640 (= res!129972 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265641 () Bool)

(declare-fun res!129970 () Bool)

(assert (=> b!265641 (=> (not res!129970) (not e!172022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12792 (_ BitVec 32)) Bool)

(assert (=> b!265641 (= res!129970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25626 res!129974) b!265639))

(assert (= (and b!265639 res!129971) b!265636))

(assert (= (and b!265636 res!129973) b!265640))

(assert (= (and b!265640 res!129972) b!265637))

(assert (= (and b!265637 res!129975) b!265641))

(assert (= (and b!265641 res!129970) b!265638))

(declare-fun m!282433 () Bool)

(assert (=> b!265641 m!282433))

(declare-fun m!282435 () Bool)

(assert (=> start!25626 m!282435))

(declare-fun m!282437 () Bool)

(assert (=> start!25626 m!282437))

(declare-fun m!282439 () Bool)

(assert (=> b!265640 m!282439))

(declare-fun m!282441 () Bool)

(assert (=> b!265638 m!282441))

(declare-fun m!282443 () Bool)

(assert (=> b!265637 m!282443))

(declare-fun m!282445 () Bool)

(assert (=> b!265636 m!282445))

(check-sat (not b!265638) (not b!265637) (not b!265636) (not b!265641) (not b!265640) (not start!25626))
(check-sat)

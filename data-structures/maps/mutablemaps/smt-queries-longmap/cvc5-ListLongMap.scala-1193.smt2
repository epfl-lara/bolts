; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25636 () Bool)

(assert start!25636)

(declare-fun b!265726 () Bool)

(declare-fun res!130064 () Bool)

(declare-fun e!172067 () Bool)

(assert (=> b!265726 (=> (not res!130064) (not e!172067))))

(declare-datatypes ((array!12802 0))(
  ( (array!12803 (arr!6055 (Array (_ BitVec 32) (_ BitVec 64))) (size!6407 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12802)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265726 (= res!130064 (and (= (size!6407 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6407 a!3436))))))

(declare-fun b!265727 () Bool)

(declare-fun res!130063 () Bool)

(assert (=> b!265727 (=> (not res!130063) (not e!172067))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265727 (= res!130063 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265728 () Bool)

(declare-fun res!130065 () Bool)

(assert (=> b!265728 (=> (not res!130065) (not e!172067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265728 (= res!130065 (validKeyInArray!0 k!2698))))

(declare-fun b!265729 () Bool)

(declare-fun e!172068 () Bool)

(assert (=> b!265729 (= e!172068 false)))

(declare-fun lt!134240 () Bool)

(declare-datatypes ((List!3890 0))(
  ( (Nil!3887) (Cons!3886 (h!4553 (_ BitVec 64)) (t!8980 List!3890)) )
))
(declare-fun arrayNoDuplicates!0 (array!12802 (_ BitVec 32) List!3890) Bool)

(assert (=> b!265729 (= lt!134240 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3887))))

(declare-fun res!130061 () Bool)

(assert (=> start!25636 (=> (not res!130061) (not e!172067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25636 (= res!130061 (validMask!0 mask!4002))))

(assert (=> start!25636 e!172067))

(assert (=> start!25636 true))

(declare-fun array_inv!4009 (array!12802) Bool)

(assert (=> start!25636 (array_inv!4009 a!3436)))

(declare-fun b!265730 () Bool)

(assert (=> b!265730 (= e!172067 e!172068)))

(declare-fun res!130060 () Bool)

(assert (=> b!265730 (=> (not res!130060) (not e!172068))))

(declare-datatypes ((SeekEntryResult!1257 0))(
  ( (MissingZero!1257 (index!7198 (_ BitVec 32))) (Found!1257 (index!7199 (_ BitVec 32))) (Intermediate!1257 (undefined!2069 Bool) (index!7200 (_ BitVec 32)) (x!25486 (_ BitVec 32))) (Undefined!1257) (MissingVacant!1257 (index!7201 (_ BitVec 32))) )
))
(declare-fun lt!134239 () SeekEntryResult!1257)

(assert (=> b!265730 (= res!130060 (or (= lt!134239 (MissingZero!1257 i!1355)) (= lt!134239 (MissingVacant!1257 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12802 (_ BitVec 32)) SeekEntryResult!1257)

(assert (=> b!265730 (= lt!134239 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265731 () Bool)

(declare-fun res!130062 () Bool)

(assert (=> b!265731 (=> (not res!130062) (not e!172068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12802 (_ BitVec 32)) Bool)

(assert (=> b!265731 (= res!130062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25636 res!130061) b!265726))

(assert (= (and b!265726 res!130064) b!265728))

(assert (= (and b!265728 res!130065) b!265727))

(assert (= (and b!265727 res!130063) b!265730))

(assert (= (and b!265730 res!130060) b!265731))

(assert (= (and b!265731 res!130062) b!265729))

(declare-fun m!282503 () Bool)

(assert (=> b!265728 m!282503))

(declare-fun m!282505 () Bool)

(assert (=> b!265729 m!282505))

(declare-fun m!282507 () Bool)

(assert (=> b!265731 m!282507))

(declare-fun m!282509 () Bool)

(assert (=> start!25636 m!282509))

(declare-fun m!282511 () Bool)

(assert (=> start!25636 m!282511))

(declare-fun m!282513 () Bool)

(assert (=> b!265727 m!282513))

(declare-fun m!282515 () Bool)

(assert (=> b!265730 m!282515))

(push 1)

(assert (not b!265730))

(assert (not b!265729))

(assert (not b!265731))

(assert (not start!25636))

(assert (not b!265728))

(assert (not b!265727))

(check-sat)


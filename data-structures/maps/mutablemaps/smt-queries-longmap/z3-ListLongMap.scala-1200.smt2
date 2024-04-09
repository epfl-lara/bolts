; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25680 () Bool)

(assert start!25680)

(declare-fun b!266122 () Bool)

(declare-fun res!130456 () Bool)

(declare-fun e!172265 () Bool)

(assert (=> b!266122 (=> (not res!130456) (not e!172265))))

(declare-datatypes ((array!12846 0))(
  ( (array!12847 (arr!6077 (Array (_ BitVec 32) (_ BitVec 64))) (size!6429 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12846)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12846 (_ BitVec 32)) Bool)

(assert (=> b!266122 (= res!130456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266123 () Bool)

(declare-fun res!130459 () Bool)

(declare-fun e!172266 () Bool)

(assert (=> b!266123 (=> (not res!130459) (not e!172266))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266123 (= res!130459 (validKeyInArray!0 k0!2698))))

(declare-fun res!130461 () Bool)

(assert (=> start!25680 (=> (not res!130461) (not e!172266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25680 (= res!130461 (validMask!0 mask!4002))))

(assert (=> start!25680 e!172266))

(assert (=> start!25680 true))

(declare-fun array_inv!4031 (array!12846) Bool)

(assert (=> start!25680 (array_inv!4031 a!3436)))

(declare-fun b!266124 () Bool)

(declare-fun res!130458 () Bool)

(assert (=> b!266124 (=> (not res!130458) (not e!172266))))

(declare-fun arrayContainsKey!0 (array!12846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266124 (= res!130458 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266125 () Bool)

(declare-fun res!130460 () Bool)

(assert (=> b!266125 (=> (not res!130460) (not e!172266))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266125 (= res!130460 (and (= (size!6429 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6429 a!3436))))))

(declare-fun b!266126 () Bool)

(assert (=> b!266126 (= e!172265 false)))

(declare-fun lt!134372 () Bool)

(declare-datatypes ((List!3912 0))(
  ( (Nil!3909) (Cons!3908 (h!4575 (_ BitVec 64)) (t!9002 List!3912)) )
))
(declare-fun arrayNoDuplicates!0 (array!12846 (_ BitVec 32) List!3912) Bool)

(assert (=> b!266126 (= lt!134372 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3909))))

(declare-fun b!266127 () Bool)

(assert (=> b!266127 (= e!172266 e!172265)))

(declare-fun res!130457 () Bool)

(assert (=> b!266127 (=> (not res!130457) (not e!172265))))

(declare-datatypes ((SeekEntryResult!1279 0))(
  ( (MissingZero!1279 (index!7286 (_ BitVec 32))) (Found!1279 (index!7287 (_ BitVec 32))) (Intermediate!1279 (undefined!2091 Bool) (index!7288 (_ BitVec 32)) (x!25564 (_ BitVec 32))) (Undefined!1279) (MissingVacant!1279 (index!7289 (_ BitVec 32))) )
))
(declare-fun lt!134371 () SeekEntryResult!1279)

(assert (=> b!266127 (= res!130457 (or (= lt!134371 (MissingZero!1279 i!1355)) (= lt!134371 (MissingVacant!1279 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12846 (_ BitVec 32)) SeekEntryResult!1279)

(assert (=> b!266127 (= lt!134371 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(assert (= (and start!25680 res!130461) b!266125))

(assert (= (and b!266125 res!130460) b!266123))

(assert (= (and b!266123 res!130459) b!266124))

(assert (= (and b!266124 res!130458) b!266127))

(assert (= (and b!266127 res!130457) b!266122))

(assert (= (and b!266122 res!130456) b!266126))

(declare-fun m!282811 () Bool)

(assert (=> b!266127 m!282811))

(declare-fun m!282813 () Bool)

(assert (=> b!266122 m!282813))

(declare-fun m!282815 () Bool)

(assert (=> b!266126 m!282815))

(declare-fun m!282817 () Bool)

(assert (=> start!25680 m!282817))

(declare-fun m!282819 () Bool)

(assert (=> start!25680 m!282819))

(declare-fun m!282821 () Bool)

(assert (=> b!266124 m!282821))

(declare-fun m!282823 () Bool)

(assert (=> b!266123 m!282823))

(check-sat (not b!266124) (not b!266126) (not start!25680) (not b!266122) (not b!266123) (not b!266127))
(check-sat)

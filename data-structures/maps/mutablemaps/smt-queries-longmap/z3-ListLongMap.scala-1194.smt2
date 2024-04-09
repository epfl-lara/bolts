; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25644 () Bool)

(assert start!25644)

(declare-fun b!265798 () Bool)

(declare-fun e!172103 () Bool)

(declare-fun e!172104 () Bool)

(assert (=> b!265798 (= e!172103 e!172104)))

(declare-fun res!130132 () Bool)

(assert (=> b!265798 (=> (not res!130132) (not e!172104))))

(declare-datatypes ((SeekEntryResult!1261 0))(
  ( (MissingZero!1261 (index!7214 (_ BitVec 32))) (Found!1261 (index!7215 (_ BitVec 32))) (Intermediate!1261 (undefined!2073 Bool) (index!7216 (_ BitVec 32)) (x!25498 (_ BitVec 32))) (Undefined!1261) (MissingVacant!1261 (index!7217 (_ BitVec 32))) )
))
(declare-fun lt!134264 () SeekEntryResult!1261)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265798 (= res!130132 (or (= lt!134264 (MissingZero!1261 i!1355)) (= lt!134264 (MissingVacant!1261 i!1355))))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-datatypes ((array!12810 0))(
  ( (array!12811 (arr!6059 (Array (_ BitVec 32) (_ BitVec 64))) (size!6411 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12810)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12810 (_ BitVec 32)) SeekEntryResult!1261)

(assert (=> b!265798 (= lt!134264 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!265799 () Bool)

(declare-fun res!130136 () Bool)

(assert (=> b!265799 (=> (not res!130136) (not e!172103))))

(assert (=> b!265799 (= res!130136 (and (= (size!6411 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6411 a!3436))))))

(declare-fun b!265800 () Bool)

(declare-fun res!130134 () Bool)

(assert (=> b!265800 (=> (not res!130134) (not e!172104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12810 (_ BitVec 32)) Bool)

(assert (=> b!265800 (= res!130134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265801 () Bool)

(assert (=> b!265801 (= e!172104 false)))

(declare-fun lt!134263 () Bool)

(declare-datatypes ((List!3894 0))(
  ( (Nil!3891) (Cons!3890 (h!4557 (_ BitVec 64)) (t!8984 List!3894)) )
))
(declare-fun arrayNoDuplicates!0 (array!12810 (_ BitVec 32) List!3894) Bool)

(assert (=> b!265801 (= lt!134263 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3891))))

(declare-fun res!130137 () Bool)

(assert (=> start!25644 (=> (not res!130137) (not e!172103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25644 (= res!130137 (validMask!0 mask!4002))))

(assert (=> start!25644 e!172103))

(assert (=> start!25644 true))

(declare-fun array_inv!4013 (array!12810) Bool)

(assert (=> start!25644 (array_inv!4013 a!3436)))

(declare-fun b!265802 () Bool)

(declare-fun res!130135 () Bool)

(assert (=> b!265802 (=> (not res!130135) (not e!172103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265802 (= res!130135 (validKeyInArray!0 k0!2698))))

(declare-fun b!265803 () Bool)

(declare-fun res!130133 () Bool)

(assert (=> b!265803 (=> (not res!130133) (not e!172103))))

(declare-fun arrayContainsKey!0 (array!12810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265803 (= res!130133 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25644 res!130137) b!265799))

(assert (= (and b!265799 res!130136) b!265802))

(assert (= (and b!265802 res!130135) b!265803))

(assert (= (and b!265803 res!130133) b!265798))

(assert (= (and b!265798 res!130132) b!265800))

(assert (= (and b!265800 res!130134) b!265801))

(declare-fun m!282559 () Bool)

(assert (=> b!265798 m!282559))

(declare-fun m!282561 () Bool)

(assert (=> start!25644 m!282561))

(declare-fun m!282563 () Bool)

(assert (=> start!25644 m!282563))

(declare-fun m!282565 () Bool)

(assert (=> b!265803 m!282565))

(declare-fun m!282567 () Bool)

(assert (=> b!265801 m!282567))

(declare-fun m!282569 () Bool)

(assert (=> b!265802 m!282569))

(declare-fun m!282571 () Bool)

(assert (=> b!265800 m!282571))

(check-sat (not b!265802) (not b!265798) (not start!25644) (not b!265803) (not b!265800) (not b!265801))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25632 () Bool)

(assert start!25632)

(declare-fun b!265690 () Bool)

(declare-fun res!130025 () Bool)

(declare-fun e!172049 () Bool)

(assert (=> b!265690 (=> (not res!130025) (not e!172049))))

(declare-datatypes ((array!12798 0))(
  ( (array!12799 (arr!6053 (Array (_ BitVec 32) (_ BitVec 64))) (size!6405 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12798)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12798 (_ BitVec 32)) Bool)

(assert (=> b!265690 (= res!130025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265691 () Bool)

(declare-fun res!130028 () Bool)

(declare-fun e!172051 () Bool)

(assert (=> b!265691 (=> (not res!130028) (not e!172051))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265691 (= res!130028 (validKeyInArray!0 k0!2698))))

(declare-fun b!265692 () Bool)

(declare-fun res!130024 () Bool)

(assert (=> b!265692 (=> (not res!130024) (not e!172051))))

(declare-fun arrayContainsKey!0 (array!12798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265692 (= res!130024 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265693 () Bool)

(declare-fun res!130029 () Bool)

(assert (=> b!265693 (=> (not res!130029) (not e!172051))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265693 (= res!130029 (and (= (size!6405 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6405 a!3436))))))

(declare-fun res!130026 () Bool)

(assert (=> start!25632 (=> (not res!130026) (not e!172051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25632 (= res!130026 (validMask!0 mask!4002))))

(assert (=> start!25632 e!172051))

(assert (=> start!25632 true))

(declare-fun array_inv!4007 (array!12798) Bool)

(assert (=> start!25632 (array_inv!4007 a!3436)))

(declare-fun b!265694 () Bool)

(assert (=> b!265694 (= e!172049 false)))

(declare-fun lt!134228 () Bool)

(declare-datatypes ((List!3888 0))(
  ( (Nil!3885) (Cons!3884 (h!4551 (_ BitVec 64)) (t!8978 List!3888)) )
))
(declare-fun arrayNoDuplicates!0 (array!12798 (_ BitVec 32) List!3888) Bool)

(assert (=> b!265694 (= lt!134228 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3885))))

(declare-fun b!265695 () Bool)

(assert (=> b!265695 (= e!172051 e!172049)))

(declare-fun res!130027 () Bool)

(assert (=> b!265695 (=> (not res!130027) (not e!172049))))

(declare-datatypes ((SeekEntryResult!1255 0))(
  ( (MissingZero!1255 (index!7190 (_ BitVec 32))) (Found!1255 (index!7191 (_ BitVec 32))) (Intermediate!1255 (undefined!2067 Bool) (index!7192 (_ BitVec 32)) (x!25476 (_ BitVec 32))) (Undefined!1255) (MissingVacant!1255 (index!7193 (_ BitVec 32))) )
))
(declare-fun lt!134227 () SeekEntryResult!1255)

(assert (=> b!265695 (= res!130027 (or (= lt!134227 (MissingZero!1255 i!1355)) (= lt!134227 (MissingVacant!1255 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12798 (_ BitVec 32)) SeekEntryResult!1255)

(assert (=> b!265695 (= lt!134227 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(assert (= (and start!25632 res!130026) b!265693))

(assert (= (and b!265693 res!130029) b!265691))

(assert (= (and b!265691 res!130028) b!265692))

(assert (= (and b!265692 res!130024) b!265695))

(assert (= (and b!265695 res!130027) b!265690))

(assert (= (and b!265690 res!130025) b!265694))

(declare-fun m!282475 () Bool)

(assert (=> b!265695 m!282475))

(declare-fun m!282477 () Bool)

(assert (=> b!265692 m!282477))

(declare-fun m!282479 () Bool)

(assert (=> start!25632 m!282479))

(declare-fun m!282481 () Bool)

(assert (=> start!25632 m!282481))

(declare-fun m!282483 () Bool)

(assert (=> b!265690 m!282483))

(declare-fun m!282485 () Bool)

(assert (=> b!265691 m!282485))

(declare-fun m!282487 () Bool)

(assert (=> b!265694 m!282487))

(check-sat (not start!25632) (not b!265690) (not b!265691) (not b!265692) (not b!265694) (not b!265695))
(check-sat)

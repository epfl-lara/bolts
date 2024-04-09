; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25634 () Bool)

(assert start!25634)

(declare-fun b!265708 () Bool)

(declare-fun res!130042 () Bool)

(declare-fun e!172058 () Bool)

(assert (=> b!265708 (=> (not res!130042) (not e!172058))))

(declare-datatypes ((array!12800 0))(
  ( (array!12801 (arr!6054 (Array (_ BitVec 32) (_ BitVec 64))) (size!6406 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12800)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265708 (= res!130042 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265709 () Bool)

(declare-fun e!172060 () Bool)

(assert (=> b!265709 (= e!172058 e!172060)))

(declare-fun res!130047 () Bool)

(assert (=> b!265709 (=> (not res!130047) (not e!172060))))

(declare-datatypes ((SeekEntryResult!1256 0))(
  ( (MissingZero!1256 (index!7194 (_ BitVec 32))) (Found!1256 (index!7195 (_ BitVec 32))) (Intermediate!1256 (undefined!2068 Bool) (index!7196 (_ BitVec 32)) (x!25477 (_ BitVec 32))) (Undefined!1256) (MissingVacant!1256 (index!7197 (_ BitVec 32))) )
))
(declare-fun lt!134233 () SeekEntryResult!1256)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265709 (= res!130047 (or (= lt!134233 (MissingZero!1256 i!1355)) (= lt!134233 (MissingVacant!1256 i!1355))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12800 (_ BitVec 32)) SeekEntryResult!1256)

(assert (=> b!265709 (= lt!134233 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!130043 () Bool)

(assert (=> start!25634 (=> (not res!130043) (not e!172058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25634 (= res!130043 (validMask!0 mask!4002))))

(assert (=> start!25634 e!172058))

(assert (=> start!25634 true))

(declare-fun array_inv!4008 (array!12800) Bool)

(assert (=> start!25634 (array_inv!4008 a!3436)))

(declare-fun b!265710 () Bool)

(assert (=> b!265710 (= e!172060 false)))

(declare-fun lt!134234 () Bool)

(declare-datatypes ((List!3889 0))(
  ( (Nil!3886) (Cons!3885 (h!4552 (_ BitVec 64)) (t!8979 List!3889)) )
))
(declare-fun arrayNoDuplicates!0 (array!12800 (_ BitVec 32) List!3889) Bool)

(assert (=> b!265710 (= lt!134234 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3886))))

(declare-fun b!265711 () Bool)

(declare-fun res!130045 () Bool)

(assert (=> b!265711 (=> (not res!130045) (not e!172058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265711 (= res!130045 (validKeyInArray!0 k!2698))))

(declare-fun b!265712 () Bool)

(declare-fun res!130046 () Bool)

(assert (=> b!265712 (=> (not res!130046) (not e!172060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12800 (_ BitVec 32)) Bool)

(assert (=> b!265712 (= res!130046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265713 () Bool)

(declare-fun res!130044 () Bool)

(assert (=> b!265713 (=> (not res!130044) (not e!172058))))

(assert (=> b!265713 (= res!130044 (and (= (size!6406 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6406 a!3436))))))

(assert (= (and start!25634 res!130043) b!265713))

(assert (= (and b!265713 res!130044) b!265711))

(assert (= (and b!265711 res!130045) b!265708))

(assert (= (and b!265708 res!130042) b!265709))

(assert (= (and b!265709 res!130047) b!265712))

(assert (= (and b!265712 res!130046) b!265710))

(declare-fun m!282489 () Bool)

(assert (=> start!25634 m!282489))

(declare-fun m!282491 () Bool)

(assert (=> start!25634 m!282491))

(declare-fun m!282493 () Bool)

(assert (=> b!265709 m!282493))

(declare-fun m!282495 () Bool)

(assert (=> b!265712 m!282495))

(declare-fun m!282497 () Bool)

(assert (=> b!265710 m!282497))

(declare-fun m!282499 () Bool)

(assert (=> b!265708 m!282499))

(declare-fun m!282501 () Bool)

(assert (=> b!265711 m!282501))

(push 1)


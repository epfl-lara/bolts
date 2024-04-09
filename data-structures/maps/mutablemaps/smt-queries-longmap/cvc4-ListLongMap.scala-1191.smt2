; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25628 () Bool)

(assert start!25628)

(declare-fun b!265654 () Bool)

(declare-fun e!172032 () Bool)

(declare-fun e!172031 () Bool)

(assert (=> b!265654 (= e!172032 e!172031)))

(declare-fun res!129992 () Bool)

(assert (=> b!265654 (=> (not res!129992) (not e!172031))))

(declare-datatypes ((SeekEntryResult!1253 0))(
  ( (MissingZero!1253 (index!7182 (_ BitVec 32))) (Found!1253 (index!7183 (_ BitVec 32))) (Intermediate!1253 (undefined!2065 Bool) (index!7184 (_ BitVec 32)) (x!25466 (_ BitVec 32))) (Undefined!1253) (MissingVacant!1253 (index!7185 (_ BitVec 32))) )
))
(declare-fun lt!134215 () SeekEntryResult!1253)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265654 (= res!129992 (or (= lt!134215 (MissingZero!1253 i!1355)) (= lt!134215 (MissingVacant!1253 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-datatypes ((array!12794 0))(
  ( (array!12795 (arr!6051 (Array (_ BitVec 32) (_ BitVec 64))) (size!6403 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12794)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12794 (_ BitVec 32)) SeekEntryResult!1253)

(assert (=> b!265654 (= lt!134215 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!129993 () Bool)

(assert (=> start!25628 (=> (not res!129993) (not e!172032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25628 (= res!129993 (validMask!0 mask!4002))))

(assert (=> start!25628 e!172032))

(assert (=> start!25628 true))

(declare-fun array_inv!4005 (array!12794) Bool)

(assert (=> start!25628 (array_inv!4005 a!3436)))

(declare-fun b!265655 () Bool)

(declare-fun res!129991 () Bool)

(assert (=> b!265655 (=> (not res!129991) (not e!172032))))

(assert (=> b!265655 (= res!129991 (and (= (size!6403 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6403 a!3436))))))

(declare-fun b!265656 () Bool)

(assert (=> b!265656 (= e!172031 false)))

(declare-fun lt!134216 () Bool)

(declare-datatypes ((List!3886 0))(
  ( (Nil!3883) (Cons!3882 (h!4549 (_ BitVec 64)) (t!8976 List!3886)) )
))
(declare-fun arrayNoDuplicates!0 (array!12794 (_ BitVec 32) List!3886) Bool)

(assert (=> b!265656 (= lt!134216 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3883))))

(declare-fun b!265657 () Bool)

(declare-fun res!129988 () Bool)

(assert (=> b!265657 (=> (not res!129988) (not e!172031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12794 (_ BitVec 32)) Bool)

(assert (=> b!265657 (= res!129988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265658 () Bool)

(declare-fun res!129989 () Bool)

(assert (=> b!265658 (=> (not res!129989) (not e!172032))))

(declare-fun arrayContainsKey!0 (array!12794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265658 (= res!129989 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265659 () Bool)

(declare-fun res!129990 () Bool)

(assert (=> b!265659 (=> (not res!129990) (not e!172032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265659 (= res!129990 (validKeyInArray!0 k!2698))))

(assert (= (and start!25628 res!129993) b!265655))

(assert (= (and b!265655 res!129991) b!265659))

(assert (= (and b!265659 res!129990) b!265658))

(assert (= (and b!265658 res!129989) b!265654))

(assert (= (and b!265654 res!129992) b!265657))

(assert (= (and b!265657 res!129988) b!265656))

(declare-fun m!282447 () Bool)

(assert (=> b!265654 m!282447))

(declare-fun m!282449 () Bool)

(assert (=> b!265656 m!282449))

(declare-fun m!282451 () Bool)

(assert (=> b!265658 m!282451))

(declare-fun m!282453 () Bool)

(assert (=> b!265657 m!282453))

(declare-fun m!282455 () Bool)

(assert (=> b!265659 m!282455))

(declare-fun m!282457 () Bool)

(assert (=> start!25628 m!282457))

(declare-fun m!282459 () Bool)

(assert (=> start!25628 m!282459))

(push 1)

(assert (not b!265657))

(assert (not b!265656))

(assert (not b!265659))


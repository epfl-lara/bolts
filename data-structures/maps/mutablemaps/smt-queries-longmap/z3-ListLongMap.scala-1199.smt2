; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25674 () Bool)

(assert start!25674)

(declare-fun b!266068 () Bool)

(declare-fun res!130406 () Bool)

(declare-fun e!172239 () Bool)

(assert (=> b!266068 (=> (not res!130406) (not e!172239))))

(declare-datatypes ((array!12840 0))(
  ( (array!12841 (arr!6074 (Array (_ BitVec 32) (_ BitVec 64))) (size!6426 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12840)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12840 (_ BitVec 32)) Bool)

(assert (=> b!266068 (= res!130406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!130405 () Bool)

(declare-fun e!172238 () Bool)

(assert (=> start!25674 (=> (not res!130405) (not e!172238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25674 (= res!130405 (validMask!0 mask!4002))))

(assert (=> start!25674 e!172238))

(assert (=> start!25674 true))

(declare-fun array_inv!4028 (array!12840) Bool)

(assert (=> start!25674 (array_inv!4028 a!3436)))

(declare-fun b!266069 () Bool)

(assert (=> b!266069 (= e!172238 e!172239)))

(declare-fun res!130407 () Bool)

(assert (=> b!266069 (=> (not res!130407) (not e!172239))))

(declare-datatypes ((SeekEntryResult!1276 0))(
  ( (MissingZero!1276 (index!7274 (_ BitVec 32))) (Found!1276 (index!7275 (_ BitVec 32))) (Intermediate!1276 (undefined!2088 Bool) (index!7276 (_ BitVec 32)) (x!25553 (_ BitVec 32))) (Undefined!1276) (MissingVacant!1276 (index!7277 (_ BitVec 32))) )
))
(declare-fun lt!134354 () SeekEntryResult!1276)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266069 (= res!130407 (or (= lt!134354 (MissingZero!1276 i!1355)) (= lt!134354 (MissingVacant!1276 i!1355))))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12840 (_ BitVec 32)) SeekEntryResult!1276)

(assert (=> b!266069 (= lt!134354 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266070 () Bool)

(declare-fun res!130404 () Bool)

(assert (=> b!266070 (=> (not res!130404) (not e!172238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266070 (= res!130404 (validKeyInArray!0 k0!2698))))

(declare-fun b!266071 () Bool)

(declare-fun res!130402 () Bool)

(assert (=> b!266071 (=> (not res!130402) (not e!172238))))

(assert (=> b!266071 (= res!130402 (and (= (size!6426 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6426 a!3436))))))

(declare-fun b!266072 () Bool)

(declare-fun res!130403 () Bool)

(assert (=> b!266072 (=> (not res!130403) (not e!172238))))

(declare-fun arrayContainsKey!0 (array!12840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266072 (= res!130403 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266073 () Bool)

(assert (=> b!266073 (= e!172239 false)))

(declare-fun lt!134353 () Bool)

(declare-datatypes ((List!3909 0))(
  ( (Nil!3906) (Cons!3905 (h!4572 (_ BitVec 64)) (t!8999 List!3909)) )
))
(declare-fun arrayNoDuplicates!0 (array!12840 (_ BitVec 32) List!3909) Bool)

(assert (=> b!266073 (= lt!134353 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3906))))

(assert (= (and start!25674 res!130405) b!266071))

(assert (= (and b!266071 res!130402) b!266070))

(assert (= (and b!266070 res!130404) b!266072))

(assert (= (and b!266072 res!130403) b!266069))

(assert (= (and b!266069 res!130407) b!266068))

(assert (= (and b!266068 res!130406) b!266073))

(declare-fun m!282769 () Bool)

(assert (=> b!266072 m!282769))

(declare-fun m!282771 () Bool)

(assert (=> b!266073 m!282771))

(declare-fun m!282773 () Bool)

(assert (=> start!25674 m!282773))

(declare-fun m!282775 () Bool)

(assert (=> start!25674 m!282775))

(declare-fun m!282777 () Bool)

(assert (=> b!266069 m!282777))

(declare-fun m!282779 () Bool)

(assert (=> b!266070 m!282779))

(declare-fun m!282781 () Bool)

(assert (=> b!266068 m!282781))

(check-sat (not b!266070) (not b!266072) (not b!266068) (not b!266073) (not start!25674) (not b!266069))
(check-sat)

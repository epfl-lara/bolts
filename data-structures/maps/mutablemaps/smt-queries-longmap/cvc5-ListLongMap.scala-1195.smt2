; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25648 () Bool)

(assert start!25648)

(declare-fun b!265834 () Bool)

(declare-fun e!172121 () Bool)

(assert (=> b!265834 (= e!172121 false)))

(declare-fun lt!134275 () Bool)

(declare-datatypes ((array!12814 0))(
  ( (array!12815 (arr!6061 (Array (_ BitVec 32) (_ BitVec 64))) (size!6413 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12814)

(declare-datatypes ((List!3896 0))(
  ( (Nil!3893) (Cons!3892 (h!4559 (_ BitVec 64)) (t!8986 List!3896)) )
))
(declare-fun arrayNoDuplicates!0 (array!12814 (_ BitVec 32) List!3896) Bool)

(assert (=> b!265834 (= lt!134275 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3893))))

(declare-fun b!265835 () Bool)

(declare-fun res!130172 () Bool)

(declare-fun e!172122 () Bool)

(assert (=> b!265835 (=> (not res!130172) (not e!172122))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265835 (= res!130172 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265837 () Bool)

(assert (=> b!265837 (= e!172122 e!172121)))

(declare-fun res!130173 () Bool)

(assert (=> b!265837 (=> (not res!130173) (not e!172121))))

(declare-datatypes ((SeekEntryResult!1263 0))(
  ( (MissingZero!1263 (index!7222 (_ BitVec 32))) (Found!1263 (index!7223 (_ BitVec 32))) (Intermediate!1263 (undefined!2075 Bool) (index!7224 (_ BitVec 32)) (x!25508 (_ BitVec 32))) (Undefined!1263) (MissingVacant!1263 (index!7225 (_ BitVec 32))) )
))
(declare-fun lt!134276 () SeekEntryResult!1263)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265837 (= res!130173 (or (= lt!134276 (MissingZero!1263 i!1355)) (= lt!134276 (MissingVacant!1263 i!1355))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12814 (_ BitVec 32)) SeekEntryResult!1263)

(assert (=> b!265837 (= lt!134276 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265838 () Bool)

(declare-fun res!130169 () Bool)

(assert (=> b!265838 (=> (not res!130169) (not e!172122))))

(assert (=> b!265838 (= res!130169 (and (= (size!6413 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6413 a!3436))))))

(declare-fun b!265839 () Bool)

(declare-fun res!130171 () Bool)

(assert (=> b!265839 (=> (not res!130171) (not e!172121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12814 (_ BitVec 32)) Bool)

(assert (=> b!265839 (= res!130171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265836 () Bool)

(declare-fun res!130168 () Bool)

(assert (=> b!265836 (=> (not res!130168) (not e!172122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265836 (= res!130168 (validKeyInArray!0 k!2698))))

(declare-fun res!130170 () Bool)

(assert (=> start!25648 (=> (not res!130170) (not e!172122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25648 (= res!130170 (validMask!0 mask!4002))))

(assert (=> start!25648 e!172122))

(assert (=> start!25648 true))

(declare-fun array_inv!4015 (array!12814) Bool)

(assert (=> start!25648 (array_inv!4015 a!3436)))

(assert (= (and start!25648 res!130170) b!265838))

(assert (= (and b!265838 res!130169) b!265836))

(assert (= (and b!265836 res!130168) b!265835))

(assert (= (and b!265835 res!130172) b!265837))

(assert (= (and b!265837 res!130173) b!265839))

(assert (= (and b!265839 res!130171) b!265834))

(declare-fun m!282587 () Bool)

(assert (=> b!265835 m!282587))

(declare-fun m!282589 () Bool)

(assert (=> b!265834 m!282589))

(declare-fun m!282591 () Bool)

(assert (=> b!265836 m!282591))

(declare-fun m!282593 () Bool)

(assert (=> start!25648 m!282593))

(declare-fun m!282595 () Bool)

(assert (=> start!25648 m!282595))

(declare-fun m!282597 () Bool)

(assert (=> b!265837 m!282597))

(declare-fun m!282599 () Bool)

(assert (=> b!265839 m!282599))

(push 1)

(assert (not b!265839))

(assert (not start!25648))

(assert (not b!265836))

(assert (not b!265835))

(assert (not b!265834))

(assert (not b!265837))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


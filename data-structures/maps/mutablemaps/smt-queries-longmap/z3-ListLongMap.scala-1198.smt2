; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25668 () Bool)

(assert start!25668)

(declare-fun b!266014 () Bool)

(declare-fun res!130349 () Bool)

(declare-fun e!172211 () Bool)

(assert (=> b!266014 (=> (not res!130349) (not e!172211))))

(declare-datatypes ((array!12834 0))(
  ( (array!12835 (arr!6071 (Array (_ BitVec 32) (_ BitVec 64))) (size!6423 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12834)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12834 (_ BitVec 32)) Bool)

(assert (=> b!266014 (= res!130349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266015 () Bool)

(declare-fun res!130352 () Bool)

(declare-fun e!172213 () Bool)

(assert (=> b!266015 (=> (not res!130352) (not e!172213))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266015 (= res!130352 (and (= (size!6423 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6423 a!3436))))))

(declare-fun b!266016 () Bool)

(declare-fun res!130353 () Bool)

(assert (=> b!266016 (=> (not res!130353) (not e!172213))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266016 (= res!130353 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266017 () Bool)

(assert (=> b!266017 (= e!172211 false)))

(declare-fun lt!134336 () Bool)

(declare-datatypes ((List!3906 0))(
  ( (Nil!3903) (Cons!3902 (h!4569 (_ BitVec 64)) (t!8996 List!3906)) )
))
(declare-fun arrayNoDuplicates!0 (array!12834 (_ BitVec 32) List!3906) Bool)

(assert (=> b!266017 (= lt!134336 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3903))))

(declare-fun res!130350 () Bool)

(assert (=> start!25668 (=> (not res!130350) (not e!172213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25668 (= res!130350 (validMask!0 mask!4002))))

(assert (=> start!25668 e!172213))

(assert (=> start!25668 true))

(declare-fun array_inv!4025 (array!12834) Bool)

(assert (=> start!25668 (array_inv!4025 a!3436)))

(declare-fun b!266018 () Bool)

(assert (=> b!266018 (= e!172213 e!172211)))

(declare-fun res!130351 () Bool)

(assert (=> b!266018 (=> (not res!130351) (not e!172211))))

(declare-datatypes ((SeekEntryResult!1273 0))(
  ( (MissingZero!1273 (index!7262 (_ BitVec 32))) (Found!1273 (index!7263 (_ BitVec 32))) (Intermediate!1273 (undefined!2085 Bool) (index!7264 (_ BitVec 32)) (x!25542 (_ BitVec 32))) (Undefined!1273) (MissingVacant!1273 (index!7265 (_ BitVec 32))) )
))
(declare-fun lt!134335 () SeekEntryResult!1273)

(assert (=> b!266018 (= res!130351 (or (= lt!134335 (MissingZero!1273 i!1355)) (= lt!134335 (MissingVacant!1273 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12834 (_ BitVec 32)) SeekEntryResult!1273)

(assert (=> b!266018 (= lt!134335 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266019 () Bool)

(declare-fun res!130348 () Bool)

(assert (=> b!266019 (=> (not res!130348) (not e!172213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266019 (= res!130348 (validKeyInArray!0 k0!2698))))

(assert (= (and start!25668 res!130350) b!266015))

(assert (= (and b!266015 res!130352) b!266019))

(assert (= (and b!266019 res!130348) b!266016))

(assert (= (and b!266016 res!130353) b!266018))

(assert (= (and b!266018 res!130351) b!266014))

(assert (= (and b!266014 res!130349) b!266017))

(declare-fun m!282727 () Bool)

(assert (=> b!266016 m!282727))

(declare-fun m!282729 () Bool)

(assert (=> b!266014 m!282729))

(declare-fun m!282731 () Bool)

(assert (=> start!25668 m!282731))

(declare-fun m!282733 () Bool)

(assert (=> start!25668 m!282733))

(declare-fun m!282735 () Bool)

(assert (=> b!266017 m!282735))

(declare-fun m!282737 () Bool)

(assert (=> b!266018 m!282737))

(declare-fun m!282739 () Bool)

(assert (=> b!266019 m!282739))

(check-sat (not b!266014) (not b!266017) (not b!266019) (not b!266016) (not start!25668) (not b!266018))
(check-sat)

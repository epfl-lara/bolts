; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25434 () Bool)

(assert start!25434)

(declare-fun b!264720 () Bool)

(declare-fun res!129270 () Bool)

(declare-fun e!171489 () Bool)

(assert (=> b!264720 (=> (not res!129270) (not e!171489))))

(declare-datatypes ((array!12717 0))(
  ( (array!12718 (arr!6017 (Array (_ BitVec 32) (_ BitVec 64))) (size!6369 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12717)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264720 (= res!129270 (and (= (size!6369 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6369 a!3436))))))

(declare-fun b!264721 () Bool)

(declare-fun res!129272 () Bool)

(assert (=> b!264721 (=> (not res!129272) (not e!171489))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264721 (= res!129272 (validKeyInArray!0 k0!2698))))

(declare-fun b!264723 () Bool)

(assert (=> b!264723 (= e!171489 false)))

(declare-datatypes ((SeekEntryResult!1219 0))(
  ( (MissingZero!1219 (index!7046 (_ BitVec 32))) (Found!1219 (index!7047 (_ BitVec 32))) (Intermediate!1219 (undefined!2031 Bool) (index!7048 (_ BitVec 32)) (x!25344 (_ BitVec 32))) (Undefined!1219) (MissingVacant!1219 (index!7049 (_ BitVec 32))) )
))
(declare-fun lt!133922 () SeekEntryResult!1219)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12717 (_ BitVec 32)) SeekEntryResult!1219)

(assert (=> b!264723 (= lt!133922 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!264722 () Bool)

(declare-fun res!129273 () Bool)

(assert (=> b!264722 (=> (not res!129273) (not e!171489))))

(declare-fun arrayContainsKey!0 (array!12717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264722 (= res!129273 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun res!129271 () Bool)

(assert (=> start!25434 (=> (not res!129271) (not e!171489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25434 (= res!129271 (validMask!0 mask!4002))))

(assert (=> start!25434 e!171489))

(assert (=> start!25434 true))

(declare-fun array_inv!3971 (array!12717) Bool)

(assert (=> start!25434 (array_inv!3971 a!3436)))

(assert (= (and start!25434 res!129271) b!264720))

(assert (= (and b!264720 res!129270) b!264721))

(assert (= (and b!264721 res!129272) b!264722))

(assert (= (and b!264722 res!129273) b!264723))

(declare-fun m!281733 () Bool)

(assert (=> b!264721 m!281733))

(declare-fun m!281735 () Bool)

(assert (=> b!264723 m!281735))

(declare-fun m!281737 () Bool)

(assert (=> b!264722 m!281737))

(declare-fun m!281739 () Bool)

(assert (=> start!25434 m!281739))

(declare-fun m!281741 () Bool)

(assert (=> start!25434 m!281741))

(check-sat (not b!264723) (not b!264722) (not start!25434) (not b!264721))

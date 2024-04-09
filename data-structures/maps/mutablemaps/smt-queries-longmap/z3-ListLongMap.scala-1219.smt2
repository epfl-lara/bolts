; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25794 () Bool)

(assert start!25794)

(declare-fun b!267257 () Bool)

(declare-fun res!131597 () Bool)

(declare-fun e!172779 () Bool)

(assert (=> b!267257 (=> (not res!131597) (not e!172779))))

(declare-datatypes ((array!12960 0))(
  ( (array!12961 (arr!6134 (Array (_ BitVec 32) (_ BitVec 64))) (size!6486 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12960)

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267257 (= res!131597 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267258 () Bool)

(declare-fun res!131598 () Bool)

(assert (=> b!267258 (=> (not res!131598) (not e!172779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267258 (= res!131598 (validKeyInArray!0 k0!2698))))

(declare-fun b!267259 () Bool)

(declare-fun res!131595 () Bool)

(assert (=> b!267259 (=> (not res!131595) (not e!172779))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267259 (= res!131595 (and (= (size!6486 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6486 a!3436))))))

(declare-fun b!267260 () Bool)

(declare-fun e!172780 () Bool)

(assert (=> b!267260 (= e!172779 e!172780)))

(declare-fun res!131594 () Bool)

(assert (=> b!267260 (=> (not res!131594) (not e!172780))))

(declare-datatypes ((SeekEntryResult!1336 0))(
  ( (MissingZero!1336 (index!7514 (_ BitVec 32))) (Found!1336 (index!7515 (_ BitVec 32))) (Intermediate!1336 (undefined!2148 Bool) (index!7516 (_ BitVec 32)) (x!25773 (_ BitVec 32))) (Undefined!1336) (MissingVacant!1336 (index!7517 (_ BitVec 32))) )
))
(declare-fun lt!134704 () SeekEntryResult!1336)

(assert (=> b!267260 (= res!131594 (or (= lt!134704 (MissingZero!1336 i!1355)) (= lt!134704 (MissingVacant!1336 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12960 (_ BitVec 32)) SeekEntryResult!1336)

(assert (=> b!267260 (= lt!134704 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!267261 () Bool)

(declare-fun res!131596 () Bool)

(assert (=> b!267261 (=> (not res!131596) (not e!172780))))

(declare-datatypes ((List!3969 0))(
  ( (Nil!3966) (Cons!3965 (h!4632 (_ BitVec 64)) (t!9059 List!3969)) )
))
(declare-fun arrayNoDuplicates!0 (array!12960 (_ BitVec 32) List!3969) Bool)

(assert (=> b!267261 (= res!131596 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3966))))

(declare-fun b!267262 () Bool)

(declare-fun res!131591 () Bool)

(assert (=> b!267262 (=> (not res!131591) (not e!172780))))

(assert (=> b!267262 (= res!131591 (bvslt #b00000000000000000000000000000000 (size!6486 a!3436)))))

(declare-fun res!131592 () Bool)

(assert (=> start!25794 (=> (not res!131592) (not e!172779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25794 (= res!131592 (validMask!0 mask!4002))))

(assert (=> start!25794 e!172779))

(assert (=> start!25794 true))

(declare-fun array_inv!4088 (array!12960) Bool)

(assert (=> start!25794 (array_inv!4088 a!3436)))

(declare-fun b!267263 () Bool)

(declare-fun res!131593 () Bool)

(assert (=> b!267263 (=> (not res!131593) (not e!172780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12960 (_ BitVec 32)) Bool)

(assert (=> b!267263 (= res!131593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267264 () Bool)

(assert (=> b!267264 (= e!172780 (not true))))

(assert (=> b!267264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12961 (store (arr!6134 a!3436) i!1355 k0!2698) (size!6486 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8300 0))(
  ( (Unit!8301) )
))
(declare-fun lt!134705 () Unit!8300)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12960 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8300)

(assert (=> b!267264 (= lt!134705 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k0!2698 #b00000000000000000000000000000000 mask!4002))))

(assert (= (and start!25794 res!131592) b!267259))

(assert (= (and b!267259 res!131595) b!267258))

(assert (= (and b!267258 res!131598) b!267257))

(assert (= (and b!267257 res!131597) b!267260))

(assert (= (and b!267260 res!131594) b!267263))

(assert (= (and b!267263 res!131593) b!267261))

(assert (= (and b!267261 res!131596) b!267262))

(assert (= (and b!267262 res!131591) b!267264))

(declare-fun m!283705 () Bool)

(assert (=> b!267257 m!283705))

(declare-fun m!283707 () Bool)

(assert (=> b!267264 m!283707))

(declare-fun m!283709 () Bool)

(assert (=> b!267264 m!283709))

(declare-fun m!283711 () Bool)

(assert (=> b!267264 m!283711))

(declare-fun m!283713 () Bool)

(assert (=> b!267260 m!283713))

(declare-fun m!283715 () Bool)

(assert (=> b!267261 m!283715))

(declare-fun m!283717 () Bool)

(assert (=> b!267263 m!283717))

(declare-fun m!283719 () Bool)

(assert (=> b!267258 m!283719))

(declare-fun m!283721 () Bool)

(assert (=> start!25794 m!283721))

(declare-fun m!283723 () Bool)

(assert (=> start!25794 m!283723))

(check-sat (not b!267261) (not start!25794) (not b!267264) (not b!267263) (not b!267258) (not b!267257) (not b!267260))
(check-sat)

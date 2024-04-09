; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25734 () Bool)

(assert start!25734)

(declare-fun res!131015 () Bool)

(declare-fun e!172510 () Bool)

(assert (=> start!25734 (=> (not res!131015) (not e!172510))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25734 (= res!131015 (validMask!0 mask!4002))))

(assert (=> start!25734 e!172510))

(assert (=> start!25734 true))

(declare-datatypes ((array!12900 0))(
  ( (array!12901 (arr!6104 (Array (_ BitVec 32) (_ BitVec 64))) (size!6456 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12900)

(declare-fun array_inv!4058 (array!12900) Bool)

(assert (=> start!25734 (array_inv!4058 a!3436)))

(declare-fun b!266680 () Bool)

(declare-fun res!131018 () Bool)

(assert (=> b!266680 (=> (not res!131018) (not e!172510))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266680 (= res!131018 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266681 () Bool)

(declare-fun e!172508 () Bool)

(assert (=> b!266681 (= e!172510 e!172508)))

(declare-fun res!131017 () Bool)

(assert (=> b!266681 (=> (not res!131017) (not e!172508))))

(declare-datatypes ((SeekEntryResult!1306 0))(
  ( (MissingZero!1306 (index!7394 (_ BitVec 32))) (Found!1306 (index!7395 (_ BitVec 32))) (Intermediate!1306 (undefined!2118 Bool) (index!7396 (_ BitVec 32)) (x!25663 (_ BitVec 32))) (Undefined!1306) (MissingVacant!1306 (index!7397 (_ BitVec 32))) )
))
(declare-fun lt!134534 () SeekEntryResult!1306)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266681 (= res!131017 (or (= lt!134534 (MissingZero!1306 i!1355)) (= lt!134534 (MissingVacant!1306 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12900 (_ BitVec 32)) SeekEntryResult!1306)

(assert (=> b!266681 (= lt!134534 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266682 () Bool)

(declare-fun res!131014 () Bool)

(assert (=> b!266682 (=> (not res!131014) (not e!172510))))

(assert (=> b!266682 (= res!131014 (and (= (size!6456 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6456 a!3436))))))

(declare-fun b!266683 () Bool)

(declare-fun res!131016 () Bool)

(assert (=> b!266683 (=> (not res!131016) (not e!172508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12900 (_ BitVec 32)) Bool)

(assert (=> b!266683 (= res!131016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266684 () Bool)

(declare-fun res!131019 () Bool)

(assert (=> b!266684 (=> (not res!131019) (not e!172510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266684 (= res!131019 (validKeyInArray!0 k0!2698))))

(declare-fun b!266685 () Bool)

(assert (=> b!266685 (= e!172508 false)))

(declare-fun lt!134533 () Bool)

(declare-datatypes ((List!3939 0))(
  ( (Nil!3936) (Cons!3935 (h!4602 (_ BitVec 64)) (t!9029 List!3939)) )
))
(declare-fun arrayNoDuplicates!0 (array!12900 (_ BitVec 32) List!3939) Bool)

(assert (=> b!266685 (= lt!134533 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3936))))

(assert (= (and start!25734 res!131015) b!266682))

(assert (= (and b!266682 res!131014) b!266684))

(assert (= (and b!266684 res!131019) b!266680))

(assert (= (and b!266680 res!131018) b!266681))

(assert (= (and b!266681 res!131017) b!266683))

(assert (= (and b!266683 res!131016) b!266685))

(declare-fun m!283261 () Bool)

(assert (=> b!266685 m!283261))

(declare-fun m!283263 () Bool)

(assert (=> b!266684 m!283263))

(declare-fun m!283265 () Bool)

(assert (=> b!266680 m!283265))

(declare-fun m!283267 () Bool)

(assert (=> start!25734 m!283267))

(declare-fun m!283269 () Bool)

(assert (=> start!25734 m!283269))

(declare-fun m!283271 () Bool)

(assert (=> b!266681 m!283271))

(declare-fun m!283273 () Bool)

(assert (=> b!266683 m!283273))

(check-sat (not b!266685) (not start!25734) (not b!266683) (not b!266681) (not b!266680) (not b!266684))
(check-sat)

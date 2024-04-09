; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26034 () Bool)

(assert start!26034)

(declare-fun b!268441 () Bool)

(declare-fun res!132758 () Bool)

(declare-fun e!173389 () Bool)

(assert (=> b!268441 (=> (not res!132758) (not e!173389))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268441 (= res!132758 (validKeyInArray!0 k0!2581))))

(declare-fun b!268442 () Bool)

(declare-fun res!132761 () Bool)

(assert (=> b!268442 (=> (not res!132761) (not e!173389))))

(declare-datatypes ((array!13120 0))(
  ( (array!13121 (arr!6209 (Array (_ BitVec 32) (_ BitVec 64))) (size!6561 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13120)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268442 (= res!132761 (and (= (size!6561 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6561 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6561 a!3325))))))

(declare-fun res!132762 () Bool)

(assert (=> start!26034 (=> (not res!132762) (not e!173389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26034 (= res!132762 (validMask!0 mask!3868))))

(assert (=> start!26034 e!173389))

(declare-fun array_inv!4163 (array!13120) Bool)

(assert (=> start!26034 (array_inv!4163 a!3325)))

(assert (=> start!26034 true))

(declare-fun b!268443 () Bool)

(declare-fun e!173387 () Bool)

(assert (=> b!268443 (= e!173389 e!173387)))

(declare-fun res!132757 () Bool)

(assert (=> b!268443 (=> (not res!132757) (not e!173387))))

(declare-datatypes ((SeekEntryResult!1378 0))(
  ( (MissingZero!1378 (index!7682 (_ BitVec 32))) (Found!1378 (index!7683 (_ BitVec 32))) (Intermediate!1378 (undefined!2190 Bool) (index!7684 (_ BitVec 32)) (x!26015 (_ BitVec 32))) (Undefined!1378) (MissingVacant!1378 (index!7685 (_ BitVec 32))) )
))
(declare-fun lt!134914 () SeekEntryResult!1378)

(assert (=> b!268443 (= res!132757 (or (= lt!134914 (MissingZero!1378 i!1267)) (= lt!134914 (MissingVacant!1378 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13120 (_ BitVec 32)) SeekEntryResult!1378)

(assert (=> b!268443 (= lt!134914 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268444 () Bool)

(declare-fun res!132759 () Bool)

(assert (=> b!268444 (=> (not res!132759) (not e!173389))))

(declare-fun arrayContainsKey!0 (array!13120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268444 (= res!132759 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268445 () Bool)

(assert (=> b!268445 (= e!173387 false)))

(declare-fun lt!134915 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13120 (_ BitVec 32)) Bool)

(assert (=> b!268445 (= lt!134915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268446 () Bool)

(declare-fun res!132760 () Bool)

(assert (=> b!268446 (=> (not res!132760) (not e!173389))))

(declare-datatypes ((List!4038 0))(
  ( (Nil!4035) (Cons!4034 (h!4701 (_ BitVec 64)) (t!9128 List!4038)) )
))
(declare-fun arrayNoDuplicates!0 (array!13120 (_ BitVec 32) List!4038) Bool)

(assert (=> b!268446 (= res!132760 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4035))))

(assert (= (and start!26034 res!132762) b!268442))

(assert (= (and b!268442 res!132761) b!268441))

(assert (= (and b!268441 res!132758) b!268446))

(assert (= (and b!268446 res!132760) b!268444))

(assert (= (and b!268444 res!132759) b!268443))

(assert (= (and b!268443 res!132757) b!268445))

(declare-fun m!284601 () Bool)

(assert (=> start!26034 m!284601))

(declare-fun m!284603 () Bool)

(assert (=> start!26034 m!284603))

(declare-fun m!284605 () Bool)

(assert (=> b!268441 m!284605))

(declare-fun m!284607 () Bool)

(assert (=> b!268446 m!284607))

(declare-fun m!284609 () Bool)

(assert (=> b!268443 m!284609))

(declare-fun m!284611 () Bool)

(assert (=> b!268445 m!284611))

(declare-fun m!284613 () Bool)

(assert (=> b!268444 m!284613))

(check-sat (not b!268441) (not b!268445) (not b!268443) (not b!268444) (not b!268446) (not start!26034))
(check-sat)

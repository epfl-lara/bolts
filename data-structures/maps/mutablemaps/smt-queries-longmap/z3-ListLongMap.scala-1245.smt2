; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26040 () Bool)

(assert start!26040)

(declare-fun b!268495 () Bool)

(declare-fun res!132811 () Bool)

(declare-fun e!173416 () Bool)

(assert (=> b!268495 (=> (not res!132811) (not e!173416))))

(declare-datatypes ((array!13126 0))(
  ( (array!13127 (arr!6212 (Array (_ BitVec 32) (_ BitVec 64))) (size!6564 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13126)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268495 (= res!132811 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268496 () Bool)

(declare-fun res!132812 () Bool)

(assert (=> b!268496 (=> (not res!132812) (not e!173416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268496 (= res!132812 (validKeyInArray!0 k0!2581))))

(declare-fun b!268497 () Bool)

(declare-fun res!132813 () Bool)

(assert (=> b!268497 (=> (not res!132813) (not e!173416))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268497 (= res!132813 (and (= (size!6564 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6564 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6564 a!3325))))))

(declare-fun b!268498 () Bool)

(declare-fun e!173415 () Bool)

(assert (=> b!268498 (= e!173416 e!173415)))

(declare-fun res!132815 () Bool)

(assert (=> b!268498 (=> (not res!132815) (not e!173415))))

(declare-datatypes ((SeekEntryResult!1381 0))(
  ( (MissingZero!1381 (index!7694 (_ BitVec 32))) (Found!1381 (index!7695 (_ BitVec 32))) (Intermediate!1381 (undefined!2193 Bool) (index!7696 (_ BitVec 32)) (x!26026 (_ BitVec 32))) (Undefined!1381) (MissingVacant!1381 (index!7697 (_ BitVec 32))) )
))
(declare-fun lt!134932 () SeekEntryResult!1381)

(assert (=> b!268498 (= res!132815 (or (= lt!134932 (MissingZero!1381 i!1267)) (= lt!134932 (MissingVacant!1381 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13126 (_ BitVec 32)) SeekEntryResult!1381)

(assert (=> b!268498 (= lt!134932 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268499 () Bool)

(declare-fun res!132814 () Bool)

(assert (=> b!268499 (=> (not res!132814) (not e!173416))))

(declare-datatypes ((List!4041 0))(
  ( (Nil!4038) (Cons!4037 (h!4704 (_ BitVec 64)) (t!9131 List!4041)) )
))
(declare-fun arrayNoDuplicates!0 (array!13126 (_ BitVec 32) List!4041) Bool)

(assert (=> b!268499 (= res!132814 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4038))))

(declare-fun b!268500 () Bool)

(assert (=> b!268500 (= e!173415 false)))

(declare-fun lt!134933 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13126 (_ BitVec 32)) Bool)

(assert (=> b!268500 (= lt!134933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!132816 () Bool)

(assert (=> start!26040 (=> (not res!132816) (not e!173416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26040 (= res!132816 (validMask!0 mask!3868))))

(assert (=> start!26040 e!173416))

(declare-fun array_inv!4166 (array!13126) Bool)

(assert (=> start!26040 (array_inv!4166 a!3325)))

(assert (=> start!26040 true))

(assert (= (and start!26040 res!132816) b!268497))

(assert (= (and b!268497 res!132813) b!268496))

(assert (= (and b!268496 res!132812) b!268499))

(assert (= (and b!268499 res!132814) b!268495))

(assert (= (and b!268495 res!132811) b!268498))

(assert (= (and b!268498 res!132815) b!268500))

(declare-fun m!284643 () Bool)

(assert (=> start!26040 m!284643))

(declare-fun m!284645 () Bool)

(assert (=> start!26040 m!284645))

(declare-fun m!284647 () Bool)

(assert (=> b!268495 m!284647))

(declare-fun m!284649 () Bool)

(assert (=> b!268496 m!284649))

(declare-fun m!284651 () Bool)

(assert (=> b!268500 m!284651))

(declare-fun m!284653 () Bool)

(assert (=> b!268499 m!284653))

(declare-fun m!284655 () Bool)

(assert (=> b!268498 m!284655))

(check-sat (not b!268496) (not b!268499) (not b!268498) (not b!268500) (not start!26040) (not b!268495))
(check-sat)

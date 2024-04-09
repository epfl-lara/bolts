; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26028 () Bool)

(assert start!26028)

(declare-fun b!268387 () Bool)

(declare-fun res!132708 () Bool)

(declare-fun e!173362 () Bool)

(assert (=> b!268387 (=> (not res!132708) (not e!173362))))

(declare-datatypes ((array!13114 0))(
  ( (array!13115 (arr!6206 (Array (_ BitVec 32) (_ BitVec 64))) (size!6558 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13114)

(declare-datatypes ((List!4035 0))(
  ( (Nil!4032) (Cons!4031 (h!4698 (_ BitVec 64)) (t!9125 List!4035)) )
))
(declare-fun arrayNoDuplicates!0 (array!13114 (_ BitVec 32) List!4035) Bool)

(assert (=> b!268387 (= res!132708 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4032))))

(declare-fun b!268388 () Bool)

(declare-fun res!132707 () Bool)

(assert (=> b!268388 (=> (not res!132707) (not e!173362))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268388 (= res!132707 (and (= (size!6558 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6558 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6558 a!3325))))))

(declare-fun b!268389 () Bool)

(declare-fun res!132705 () Bool)

(assert (=> b!268389 (=> (not res!132705) (not e!173362))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268389 (= res!132705 (validKeyInArray!0 k0!2581))))

(declare-fun b!268390 () Bool)

(declare-fun e!173360 () Bool)

(assert (=> b!268390 (= e!173360 false)))

(declare-fun lt!134896 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13114 (_ BitVec 32)) Bool)

(assert (=> b!268390 (= lt!134896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268392 () Bool)

(declare-fun res!132706 () Bool)

(assert (=> b!268392 (=> (not res!132706) (not e!173362))))

(declare-fun arrayContainsKey!0 (array!13114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268392 (= res!132706 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!132703 () Bool)

(assert (=> start!26028 (=> (not res!132703) (not e!173362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26028 (= res!132703 (validMask!0 mask!3868))))

(assert (=> start!26028 e!173362))

(declare-fun array_inv!4160 (array!13114) Bool)

(assert (=> start!26028 (array_inv!4160 a!3325)))

(assert (=> start!26028 true))

(declare-fun b!268391 () Bool)

(assert (=> b!268391 (= e!173362 e!173360)))

(declare-fun res!132704 () Bool)

(assert (=> b!268391 (=> (not res!132704) (not e!173360))))

(declare-datatypes ((SeekEntryResult!1375 0))(
  ( (MissingZero!1375 (index!7670 (_ BitVec 32))) (Found!1375 (index!7671 (_ BitVec 32))) (Intermediate!1375 (undefined!2187 Bool) (index!7672 (_ BitVec 32)) (x!26004 (_ BitVec 32))) (Undefined!1375) (MissingVacant!1375 (index!7673 (_ BitVec 32))) )
))
(declare-fun lt!134897 () SeekEntryResult!1375)

(assert (=> b!268391 (= res!132704 (or (= lt!134897 (MissingZero!1375 i!1267)) (= lt!134897 (MissingVacant!1375 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13114 (_ BitVec 32)) SeekEntryResult!1375)

(assert (=> b!268391 (= lt!134897 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26028 res!132703) b!268388))

(assert (= (and b!268388 res!132707) b!268389))

(assert (= (and b!268389 res!132705) b!268387))

(assert (= (and b!268387 res!132708) b!268392))

(assert (= (and b!268392 res!132706) b!268391))

(assert (= (and b!268391 res!132704) b!268390))

(declare-fun m!284559 () Bool)

(assert (=> b!268391 m!284559))

(declare-fun m!284561 () Bool)

(assert (=> b!268387 m!284561))

(declare-fun m!284563 () Bool)

(assert (=> b!268389 m!284563))

(declare-fun m!284565 () Bool)

(assert (=> b!268390 m!284565))

(declare-fun m!284567 () Bool)

(assert (=> b!268392 m!284567))

(declare-fun m!284569 () Bool)

(assert (=> start!26028 m!284569))

(declare-fun m!284571 () Bool)

(assert (=> start!26028 m!284571))

(check-sat (not b!268387) (not b!268389) (not b!268390) (not start!26028) (not b!268391) (not b!268392))
(check-sat)

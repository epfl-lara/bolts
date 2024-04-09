; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26036 () Bool)

(assert start!26036)

(declare-fun res!132775 () Bool)

(declare-fun e!173398 () Bool)

(assert (=> start!26036 (=> (not res!132775) (not e!173398))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26036 (= res!132775 (validMask!0 mask!3868))))

(assert (=> start!26036 e!173398))

(declare-datatypes ((array!13122 0))(
  ( (array!13123 (arr!6210 (Array (_ BitVec 32) (_ BitVec 64))) (size!6562 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13122)

(declare-fun array_inv!4164 (array!13122) Bool)

(assert (=> start!26036 (array_inv!4164 a!3325)))

(assert (=> start!26036 true))

(declare-fun b!268459 () Bool)

(declare-fun res!132778 () Bool)

(assert (=> b!268459 (=> (not res!132778) (not e!173398))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268459 (= res!132778 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268460 () Bool)

(declare-fun res!132780 () Bool)

(assert (=> b!268460 (=> (not res!132780) (not e!173398))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268460 (= res!132780 (and (= (size!6562 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6562 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6562 a!3325))))))

(declare-fun b!268461 () Bool)

(declare-fun e!173397 () Bool)

(assert (=> b!268461 (= e!173398 e!173397)))

(declare-fun res!132779 () Bool)

(assert (=> b!268461 (=> (not res!132779) (not e!173397))))

(declare-datatypes ((SeekEntryResult!1379 0))(
  ( (MissingZero!1379 (index!7686 (_ BitVec 32))) (Found!1379 (index!7687 (_ BitVec 32))) (Intermediate!1379 (undefined!2191 Bool) (index!7688 (_ BitVec 32)) (x!26016 (_ BitVec 32))) (Undefined!1379) (MissingVacant!1379 (index!7689 (_ BitVec 32))) )
))
(declare-fun lt!134921 () SeekEntryResult!1379)

(assert (=> b!268461 (= res!132779 (or (= lt!134921 (MissingZero!1379 i!1267)) (= lt!134921 (MissingVacant!1379 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13122 (_ BitVec 32)) SeekEntryResult!1379)

(assert (=> b!268461 (= lt!134921 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268462 () Bool)

(declare-fun res!132777 () Bool)

(assert (=> b!268462 (=> (not res!132777) (not e!173398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268462 (= res!132777 (validKeyInArray!0 k!2581))))

(declare-fun b!268463 () Bool)

(assert (=> b!268463 (= e!173397 false)))

(declare-fun lt!134920 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13122 (_ BitVec 32)) Bool)

(assert (=> b!268463 (= lt!134920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268464 () Bool)

(declare-fun res!132776 () Bool)

(assert (=> b!268464 (=> (not res!132776) (not e!173398))))

(declare-datatypes ((List!4039 0))(
  ( (Nil!4036) (Cons!4035 (h!4702 (_ BitVec 64)) (t!9129 List!4039)) )
))
(declare-fun arrayNoDuplicates!0 (array!13122 (_ BitVec 32) List!4039) Bool)

(assert (=> b!268464 (= res!132776 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4036))))

(assert (= (and start!26036 res!132775) b!268460))

(assert (= (and b!268460 res!132780) b!268462))

(assert (= (and b!268462 res!132777) b!268464))

(assert (= (and b!268464 res!132776) b!268459))

(assert (= (and b!268459 res!132778) b!268461))

(assert (= (and b!268461 res!132779) b!268463))

(declare-fun m!284615 () Bool)

(assert (=> b!268464 m!284615))

(declare-fun m!284617 () Bool)

(assert (=> b!268462 m!284617))

(declare-fun m!284619 () Bool)

(assert (=> start!26036 m!284619))

(declare-fun m!284621 () Bool)

(assert (=> start!26036 m!284621))

(declare-fun m!284623 () Bool)

(assert (=> b!268459 m!284623))

(declare-fun m!284625 () Bool)

(assert (=> b!268461 m!284625))

(declare-fun m!284627 () Bool)

(assert (=> b!268463 m!284627))

(push 1)

(assert (not b!268461))

(assert (not b!268463))

(assert (not b!268464))

(assert (not start!26036))

(assert (not b!268462))

(assert (not b!268459))

(check-sat)


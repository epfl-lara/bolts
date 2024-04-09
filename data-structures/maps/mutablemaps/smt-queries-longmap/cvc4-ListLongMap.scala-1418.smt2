; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27548 () Bool)

(assert start!27548)

(declare-fun res!147060 () Bool)

(declare-fun e!180471 () Bool)

(assert (=> start!27548 (=> (not res!147060) (not e!180471))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27548 (= res!147060 (validMask!0 mask!3868))))

(assert (=> start!27548 e!180471))

(declare-datatypes ((array!14187 0))(
  ( (array!14188 (arr!6732 (Array (_ BitVec 32) (_ BitVec 64))) (size!7084 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14187)

(declare-fun array_inv!4686 (array!14187) Bool)

(assert (=> start!27548 (array_inv!4686 a!3325)))

(assert (=> start!27548 true))

(declare-fun b!284512 () Bool)

(declare-fun e!180470 () Bool)

(assert (=> b!284512 (= e!180470 false)))

(declare-fun lt!140564 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14187 (_ BitVec 32)) Bool)

(assert (=> b!284512 (= lt!140564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284513 () Bool)

(declare-fun res!147059 () Bool)

(assert (=> b!284513 (=> (not res!147059) (not e!180471))))

(declare-datatypes ((List!4561 0))(
  ( (Nil!4558) (Cons!4557 (h!5230 (_ BitVec 64)) (t!9651 List!4561)) )
))
(declare-fun arrayNoDuplicates!0 (array!14187 (_ BitVec 32) List!4561) Bool)

(assert (=> b!284513 (= res!147059 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4558))))

(declare-fun b!284514 () Bool)

(declare-fun res!147063 () Bool)

(assert (=> b!284514 (=> (not res!147063) (not e!180471))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284514 (= res!147063 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284515 () Bool)

(assert (=> b!284515 (= e!180471 e!180470)))

(declare-fun res!147058 () Bool)

(assert (=> b!284515 (=> (not res!147058) (not e!180470))))

(declare-datatypes ((SeekEntryResult!1901 0))(
  ( (MissingZero!1901 (index!9774 (_ BitVec 32))) (Found!1901 (index!9775 (_ BitVec 32))) (Intermediate!1901 (undefined!2713 Bool) (index!9776 (_ BitVec 32)) (x!27948 (_ BitVec 32))) (Undefined!1901) (MissingVacant!1901 (index!9777 (_ BitVec 32))) )
))
(declare-fun lt!140563 () SeekEntryResult!1901)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284515 (= res!147058 (or (= lt!140563 (MissingZero!1901 i!1267)) (= lt!140563 (MissingVacant!1901 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14187 (_ BitVec 32)) SeekEntryResult!1901)

(assert (=> b!284515 (= lt!140563 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284516 () Bool)

(declare-fun res!147061 () Bool)

(assert (=> b!284516 (=> (not res!147061) (not e!180471))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284516 (= res!147061 (and (= (size!7084 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7084 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7084 a!3325))))))

(declare-fun b!284517 () Bool)

(declare-fun res!147062 () Bool)

(assert (=> b!284517 (=> (not res!147062) (not e!180471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284517 (= res!147062 (validKeyInArray!0 k!2581))))

(assert (= (and start!27548 res!147060) b!284516))

(assert (= (and b!284516 res!147061) b!284517))

(assert (= (and b!284517 res!147062) b!284513))

(assert (= (and b!284513 res!147059) b!284514))

(assert (= (and b!284514 res!147063) b!284515))

(assert (= (and b!284515 res!147058) b!284512))

(declare-fun m!299543 () Bool)

(assert (=> b!284515 m!299543))

(declare-fun m!299545 () Bool)

(assert (=> b!284513 m!299545))

(declare-fun m!299547 () Bool)

(assert (=> b!284517 m!299547))

(declare-fun m!299549 () Bool)

(assert (=> b!284512 m!299549))

(declare-fun m!299551 () Bool)

(assert (=> start!27548 m!299551))

(declare-fun m!299553 () Bool)

(assert (=> start!27548 m!299553))

(declare-fun m!299555 () Bool)

(assert (=> b!284514 m!299555))

(push 1)

(assert (not b!284515))

(assert (not b!284517))

(assert (not b!284513))

(assert (not start!27548))

(assert (not b!284514))

(assert (not b!284512))

(check-sat)

(pop 1)


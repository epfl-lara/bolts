; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27590 () Bool)

(assert start!27590)

(declare-fun b!284914 () Bool)

(declare-fun res!147466 () Bool)

(declare-fun e!180659 () Bool)

(assert (=> b!284914 (=> (not res!147466) (not e!180659))))

(declare-datatypes ((array!14229 0))(
  ( (array!14230 (arr!6753 (Array (_ BitVec 32) (_ BitVec 64))) (size!7105 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14229)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284914 (= res!147466 (not (validKeyInArray!0 (select (arr!6753 a!3325) startIndex!26))))))

(declare-fun b!284915 () Bool)

(declare-fun res!147468 () Bool)

(declare-fun e!180660 () Bool)

(assert (=> b!284915 (=> (not res!147468) (not e!180660))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284915 (= res!147468 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284916 () Bool)

(declare-fun res!147461 () Bool)

(assert (=> b!284916 (=> (not res!147461) (not e!180660))))

(declare-datatypes ((List!4582 0))(
  ( (Nil!4579) (Cons!4578 (h!5251 (_ BitVec 64)) (t!9672 List!4582)) )
))
(declare-fun arrayNoDuplicates!0 (array!14229 (_ BitVec 32) List!4582) Bool)

(assert (=> b!284916 (= res!147461 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4579))))

(declare-fun b!284917 () Bool)

(declare-fun res!147464 () Bool)

(assert (=> b!284917 (=> (not res!147464) (not e!180660))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284917 (= res!147464 (and (= (size!7105 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7105 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7105 a!3325))))))

(declare-fun res!147460 () Bool)

(assert (=> start!27590 (=> (not res!147460) (not e!180660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27590 (= res!147460 (validMask!0 mask!3868))))

(assert (=> start!27590 e!180660))

(declare-fun array_inv!4707 (array!14229) Bool)

(assert (=> start!27590 (array_inv!4707 a!3325)))

(assert (=> start!27590 true))

(declare-fun b!284918 () Bool)

(declare-fun res!147463 () Bool)

(assert (=> b!284918 (=> (not res!147463) (not e!180659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14229 (_ BitVec 32)) Bool)

(assert (=> b!284918 (= res!147463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284919 () Bool)

(assert (=> b!284919 (= e!180660 e!180659)))

(declare-fun res!147465 () Bool)

(assert (=> b!284919 (=> (not res!147465) (not e!180659))))

(declare-datatypes ((SeekEntryResult!1922 0))(
  ( (MissingZero!1922 (index!9858 (_ BitVec 32))) (Found!1922 (index!9859 (_ BitVec 32))) (Intermediate!1922 (undefined!2734 Bool) (index!9860 (_ BitVec 32)) (x!28025 (_ BitVec 32))) (Undefined!1922) (MissingVacant!1922 (index!9861 (_ BitVec 32))) )
))
(declare-fun lt!140681 () SeekEntryResult!1922)

(assert (=> b!284919 (= res!147465 (or (= lt!140681 (MissingZero!1922 i!1267)) (= lt!140681 (MissingVacant!1922 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14229 (_ BitVec 32)) SeekEntryResult!1922)

(assert (=> b!284919 (= lt!140681 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284920 () Bool)

(assert (=> b!284920 (= e!180659 (and (bvslt startIndex!26 (bvsub (size!7105 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000) (bvsge (bvsub (size!7105 a!3325) (bvadd #b00000000000000000000000000000001 startIndex!26)) (bvsub (size!7105 a!3325) startIndex!26))))))

(declare-fun b!284921 () Bool)

(declare-fun res!147462 () Bool)

(assert (=> b!284921 (=> (not res!147462) (not e!180659))))

(assert (=> b!284921 (= res!147462 (not (= startIndex!26 i!1267)))))

(declare-fun b!284922 () Bool)

(declare-fun res!147467 () Bool)

(assert (=> b!284922 (=> (not res!147467) (not e!180660))))

(assert (=> b!284922 (= res!147467 (validKeyInArray!0 k!2581))))

(assert (= (and start!27590 res!147460) b!284917))

(assert (= (and b!284917 res!147464) b!284922))

(assert (= (and b!284922 res!147467) b!284916))

(assert (= (and b!284916 res!147461) b!284915))

(assert (= (and b!284915 res!147468) b!284919))

(assert (= (and b!284919 res!147465) b!284918))

(assert (= (and b!284918 res!147463) b!284921))

(assert (= (and b!284921 res!147462) b!284914))

(assert (= (and b!284914 res!147466) b!284920))

(declare-fun m!299845 () Bool)

(assert (=> b!284919 m!299845))

(declare-fun m!299847 () Bool)

(assert (=> b!284922 m!299847))

(declare-fun m!299849 () Bool)

(assert (=> b!284914 m!299849))

(assert (=> b!284914 m!299849))

(declare-fun m!299851 () Bool)

(assert (=> b!284914 m!299851))

(declare-fun m!299853 () Bool)

(assert (=> b!284915 m!299853))

(declare-fun m!299855 () Bool)

(assert (=> b!284916 m!299855))

(declare-fun m!299857 () Bool)

(assert (=> start!27590 m!299857))

(declare-fun m!299859 () Bool)

(assert (=> start!27590 m!299859))

(declare-fun m!299861 () Bool)

(assert (=> b!284918 m!299861))

(push 1)

(assert (not b!284916))

(assert (not b!284919))

(assert (not start!27590))

(assert (not b!284918))

(assert (not b!284915))

(assert (not b!284914))

(assert (not b!284922))

(check-sat)

(pop 1)

(push 1)

(check-sat)


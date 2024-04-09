; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27566 () Bool)

(assert start!27566)

(declare-fun b!284674 () Bool)

(declare-fun res!147225 () Bool)

(declare-fun e!180552 () Bool)

(assert (=> b!284674 (=> (not res!147225) (not e!180552))))

(declare-datatypes ((array!14205 0))(
  ( (array!14206 (arr!6741 (Array (_ BitVec 32) (_ BitVec 64))) (size!7093 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14205)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284674 (= res!147225 (and (= (size!7093 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7093 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7093 a!3325))))))

(declare-fun b!284675 () Bool)

(declare-fun res!147224 () Bool)

(assert (=> b!284675 (=> (not res!147224) (not e!180552))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284675 (= res!147224 (validKeyInArray!0 k!2581))))

(declare-fun b!284676 () Bool)

(declare-fun res!147220 () Bool)

(assert (=> b!284676 (=> (not res!147220) (not e!180552))))

(declare-fun arrayContainsKey!0 (array!14205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284676 (= res!147220 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284677 () Bool)

(declare-fun e!180551 () Bool)

(assert (=> b!284677 (= e!180551 false)))

(declare-fun lt!140617 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14205 (_ BitVec 32)) Bool)

(assert (=> b!284677 (= lt!140617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284678 () Bool)

(assert (=> b!284678 (= e!180552 e!180551)))

(declare-fun res!147222 () Bool)

(assert (=> b!284678 (=> (not res!147222) (not e!180551))))

(declare-datatypes ((SeekEntryResult!1910 0))(
  ( (MissingZero!1910 (index!9810 (_ BitVec 32))) (Found!1910 (index!9811 (_ BitVec 32))) (Intermediate!1910 (undefined!2722 Bool) (index!9812 (_ BitVec 32)) (x!27981 (_ BitVec 32))) (Undefined!1910) (MissingVacant!1910 (index!9813 (_ BitVec 32))) )
))
(declare-fun lt!140618 () SeekEntryResult!1910)

(assert (=> b!284678 (= res!147222 (or (= lt!140618 (MissingZero!1910 i!1267)) (= lt!140618 (MissingVacant!1910 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14205 (_ BitVec 32)) SeekEntryResult!1910)

(assert (=> b!284678 (= lt!140618 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284679 () Bool)

(declare-fun res!147221 () Bool)

(assert (=> b!284679 (=> (not res!147221) (not e!180552))))

(declare-datatypes ((List!4570 0))(
  ( (Nil!4567) (Cons!4566 (h!5239 (_ BitVec 64)) (t!9660 List!4570)) )
))
(declare-fun arrayNoDuplicates!0 (array!14205 (_ BitVec 32) List!4570) Bool)

(assert (=> b!284679 (= res!147221 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4567))))

(declare-fun res!147223 () Bool)

(assert (=> start!27566 (=> (not res!147223) (not e!180552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27566 (= res!147223 (validMask!0 mask!3868))))

(assert (=> start!27566 e!180552))

(declare-fun array_inv!4695 (array!14205) Bool)

(assert (=> start!27566 (array_inv!4695 a!3325)))

(assert (=> start!27566 true))

(assert (= (and start!27566 res!147223) b!284674))

(assert (= (and b!284674 res!147225) b!284675))

(assert (= (and b!284675 res!147224) b!284679))

(assert (= (and b!284679 res!147221) b!284676))

(assert (= (and b!284676 res!147220) b!284678))

(assert (= (and b!284678 res!147222) b!284677))

(declare-fun m!299669 () Bool)

(assert (=> b!284676 m!299669))

(declare-fun m!299671 () Bool)

(assert (=> start!27566 m!299671))

(declare-fun m!299673 () Bool)

(assert (=> start!27566 m!299673))

(declare-fun m!299675 () Bool)

(assert (=> b!284677 m!299675))

(declare-fun m!299677 () Bool)

(assert (=> b!284678 m!299677))

(declare-fun m!299679 () Bool)

(assert (=> b!284679 m!299679))

(declare-fun m!299681 () Bool)

(assert (=> b!284675 m!299681))

(push 1)

(assert (not b!284678))

(assert (not start!27566))

(assert (not b!284675))

(assert (not b!284676))

(assert (not b!284677))

(assert (not b!284679))


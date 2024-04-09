; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27578 () Bool)

(assert start!27578)

(declare-fun b!284782 () Bool)

(declare-fun res!147331 () Bool)

(declare-fun e!180606 () Bool)

(assert (=> b!284782 (=> (not res!147331) (not e!180606))))

(declare-datatypes ((array!14217 0))(
  ( (array!14218 (arr!6747 (Array (_ BitVec 32) (_ BitVec 64))) (size!7099 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14217)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284782 (= res!147331 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284783 () Bool)

(declare-fun res!147330 () Bool)

(assert (=> b!284783 (=> (not res!147330) (not e!180606))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284783 (= res!147330 (and (= (size!7099 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7099 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7099 a!3325))))))

(declare-fun b!284784 () Bool)

(declare-fun res!147329 () Bool)

(assert (=> b!284784 (=> (not res!147329) (not e!180606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284784 (= res!147329 (validKeyInArray!0 k!2581))))

(declare-fun b!284785 () Bool)

(declare-fun e!180607 () Bool)

(assert (=> b!284785 (= e!180606 e!180607)))

(declare-fun res!147332 () Bool)

(assert (=> b!284785 (=> (not res!147332) (not e!180607))))

(declare-datatypes ((SeekEntryResult!1916 0))(
  ( (MissingZero!1916 (index!9834 (_ BitVec 32))) (Found!1916 (index!9835 (_ BitVec 32))) (Intermediate!1916 (undefined!2728 Bool) (index!9836 (_ BitVec 32)) (x!28003 (_ BitVec 32))) (Undefined!1916) (MissingVacant!1916 (index!9837 (_ BitVec 32))) )
))
(declare-fun lt!140654 () SeekEntryResult!1916)

(assert (=> b!284785 (= res!147332 (or (= lt!140654 (MissingZero!1916 i!1267)) (= lt!140654 (MissingVacant!1916 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14217 (_ BitVec 32)) SeekEntryResult!1916)

(assert (=> b!284785 (= lt!140654 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284786 () Bool)

(declare-fun res!147333 () Bool)

(assert (=> b!284786 (=> (not res!147333) (not e!180606))))

(declare-datatypes ((List!4576 0))(
  ( (Nil!4573) (Cons!4572 (h!5245 (_ BitVec 64)) (t!9666 List!4576)) )
))
(declare-fun arrayNoDuplicates!0 (array!14217 (_ BitVec 32) List!4576) Bool)

(assert (=> b!284786 (= res!147333 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4573))))

(declare-fun b!284787 () Bool)

(assert (=> b!284787 (= e!180607 false)))

(declare-fun lt!140653 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14217 (_ BitVec 32)) Bool)

(assert (=> b!284787 (= lt!140653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!147328 () Bool)

(assert (=> start!27578 (=> (not res!147328) (not e!180606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27578 (= res!147328 (validMask!0 mask!3868))))

(assert (=> start!27578 e!180606))

(declare-fun array_inv!4701 (array!14217) Bool)

(assert (=> start!27578 (array_inv!4701 a!3325)))

(assert (=> start!27578 true))

(assert (= (and start!27578 res!147328) b!284783))

(assert (= (and b!284783 res!147330) b!284784))

(assert (= (and b!284784 res!147329) b!284786))

(assert (= (and b!284786 res!147333) b!284782))

(assert (= (and b!284782 res!147331) b!284785))

(assert (= (and b!284785 res!147332) b!284787))

(declare-fun m!299753 () Bool)

(assert (=> start!27578 m!299753))

(declare-fun m!299755 () Bool)

(assert (=> start!27578 m!299755))

(declare-fun m!299757 () Bool)

(assert (=> b!284787 m!299757))

(declare-fun m!299759 () Bool)

(assert (=> b!284784 m!299759))

(declare-fun m!299761 () Bool)

(assert (=> b!284786 m!299761))

(declare-fun m!299763 () Bool)

(assert (=> b!284785 m!299763))

(declare-fun m!299765 () Bool)

(assert (=> b!284782 m!299765))

(push 1)

(assert (not b!284786))

(assert (not start!27578))

(assert (not b!284785))

(assert (not b!284782))

(assert (not b!284784))

(assert (not b!284787))

(check-sat)

(pop 1)


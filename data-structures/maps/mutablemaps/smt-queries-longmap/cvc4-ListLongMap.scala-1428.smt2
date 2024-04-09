; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27656 () Bool)

(assert start!27656)

(declare-fun b!285337 () Bool)

(declare-fun res!147785 () Bool)

(declare-fun e!180886 () Bool)

(assert (=> b!285337 (=> (not res!147785) (not e!180886))))

(declare-datatypes ((array!14250 0))(
  ( (array!14251 (arr!6762 (Array (_ BitVec 32) (_ BitVec 64))) (size!7114 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14250)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!285337 (= res!147785 (and (= (size!7114 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7114 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7114 a!3325))))))

(declare-fun b!285338 () Bool)

(declare-fun e!180884 () Bool)

(assert (=> b!285338 (= e!180884 false)))

(declare-fun lt!140824 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14250 (_ BitVec 32)) Bool)

(assert (=> b!285338 (= lt!140824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!147782 () Bool)

(assert (=> start!27656 (=> (not res!147782) (not e!180886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27656 (= res!147782 (validMask!0 mask!3868))))

(assert (=> start!27656 e!180886))

(declare-fun array_inv!4716 (array!14250) Bool)

(assert (=> start!27656 (array_inv!4716 a!3325)))

(assert (=> start!27656 true))

(declare-fun b!285339 () Bool)

(declare-fun res!147786 () Bool)

(assert (=> b!285339 (=> (not res!147786) (not e!180886))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285339 (= res!147786 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!285340 () Bool)

(declare-fun res!147783 () Bool)

(assert (=> b!285340 (=> (not res!147783) (not e!180886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285340 (= res!147783 (validKeyInArray!0 k!2581))))

(declare-fun b!285341 () Bool)

(assert (=> b!285341 (= e!180886 e!180884)))

(declare-fun res!147784 () Bool)

(assert (=> b!285341 (=> (not res!147784) (not e!180884))))

(declare-datatypes ((SeekEntryResult!1931 0))(
  ( (MissingZero!1931 (index!9894 (_ BitVec 32))) (Found!1931 (index!9895 (_ BitVec 32))) (Intermediate!1931 (undefined!2743 Bool) (index!9896 (_ BitVec 32)) (x!28058 (_ BitVec 32))) (Undefined!1931) (MissingVacant!1931 (index!9897 (_ BitVec 32))) )
))
(declare-fun lt!140825 () SeekEntryResult!1931)

(assert (=> b!285341 (= res!147784 (or (= lt!140825 (MissingZero!1931 i!1267)) (= lt!140825 (MissingVacant!1931 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14250 (_ BitVec 32)) SeekEntryResult!1931)

(assert (=> b!285341 (= lt!140825 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!285342 () Bool)

(declare-fun res!147781 () Bool)

(assert (=> b!285342 (=> (not res!147781) (not e!180886))))

(declare-datatypes ((List!4591 0))(
  ( (Nil!4588) (Cons!4587 (h!5260 (_ BitVec 64)) (t!9681 List!4591)) )
))
(declare-fun arrayNoDuplicates!0 (array!14250 (_ BitVec 32) List!4591) Bool)

(assert (=> b!285342 (= res!147781 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4588))))

(assert (= (and start!27656 res!147782) b!285337))

(assert (= (and b!285337 res!147785) b!285340))

(assert (= (and b!285340 res!147783) b!285342))

(assert (= (and b!285342 res!147781) b!285339))

(assert (= (and b!285339 res!147786) b!285341))

(assert (= (and b!285341 res!147784) b!285338))

(declare-fun m!300221 () Bool)

(assert (=> b!285338 m!300221))

(declare-fun m!300223 () Bool)

(assert (=> b!285340 m!300223))

(declare-fun m!300225 () Bool)

(assert (=> b!285342 m!300225))

(declare-fun m!300227 () Bool)

(assert (=> b!285341 m!300227))

(declare-fun m!300229 () Bool)

(assert (=> b!285339 m!300229))

(declare-fun m!300231 () Bool)

(assert (=> start!27656 m!300231))

(declare-fun m!300233 () Bool)

(assert (=> start!27656 m!300233))

(push 1)

(assert (not b!285338))

(assert (not start!27656))

(assert (not b!285340))

(assert (not b!285339))

(assert (not b!285341))

(assert (not b!285342))


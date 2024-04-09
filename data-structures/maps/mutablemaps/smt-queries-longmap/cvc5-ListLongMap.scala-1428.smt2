; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27652 () Bool)

(assert start!27652)

(declare-fun b!285301 () Bool)

(declare-fun e!180866 () Bool)

(assert (=> b!285301 (= e!180866 false)))

(declare-fun lt!140813 () Bool)

(declare-datatypes ((array!14246 0))(
  ( (array!14247 (arr!6760 (Array (_ BitVec 32) (_ BitVec 64))) (size!7112 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14246)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14246 (_ BitVec 32)) Bool)

(assert (=> b!285301 (= lt!140813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!285302 () Bool)

(declare-fun res!147747 () Bool)

(declare-fun e!180868 () Bool)

(assert (=> b!285302 (=> (not res!147747) (not e!180868))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285302 (= res!147747 (validKeyInArray!0 k!2581))))

(declare-fun b!285303 () Bool)

(declare-fun res!147749 () Bool)

(assert (=> b!285303 (=> (not res!147749) (not e!180868))))

(declare-fun arrayContainsKey!0 (array!14246 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285303 (= res!147749 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!147748 () Bool)

(assert (=> start!27652 (=> (not res!147748) (not e!180868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27652 (= res!147748 (validMask!0 mask!3868))))

(assert (=> start!27652 e!180868))

(declare-fun array_inv!4714 (array!14246) Bool)

(assert (=> start!27652 (array_inv!4714 a!3325)))

(assert (=> start!27652 true))

(declare-fun b!285304 () Bool)

(declare-fun res!147750 () Bool)

(assert (=> b!285304 (=> (not res!147750) (not e!180868))))

(declare-datatypes ((List!4589 0))(
  ( (Nil!4586) (Cons!4585 (h!5258 (_ BitVec 64)) (t!9679 List!4589)) )
))
(declare-fun arrayNoDuplicates!0 (array!14246 (_ BitVec 32) List!4589) Bool)

(assert (=> b!285304 (= res!147750 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4586))))

(declare-fun b!285305 () Bool)

(declare-fun res!147746 () Bool)

(assert (=> b!285305 (=> (not res!147746) (not e!180868))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!285305 (= res!147746 (and (= (size!7112 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7112 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7112 a!3325))))))

(declare-fun b!285306 () Bool)

(assert (=> b!285306 (= e!180868 e!180866)))

(declare-fun res!147745 () Bool)

(assert (=> b!285306 (=> (not res!147745) (not e!180866))))

(declare-datatypes ((SeekEntryResult!1929 0))(
  ( (MissingZero!1929 (index!9886 (_ BitVec 32))) (Found!1929 (index!9887 (_ BitVec 32))) (Intermediate!1929 (undefined!2741 Bool) (index!9888 (_ BitVec 32)) (x!28056 (_ BitVec 32))) (Undefined!1929) (MissingVacant!1929 (index!9889 (_ BitVec 32))) )
))
(declare-fun lt!140812 () SeekEntryResult!1929)

(assert (=> b!285306 (= res!147745 (or (= lt!140812 (MissingZero!1929 i!1267)) (= lt!140812 (MissingVacant!1929 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14246 (_ BitVec 32)) SeekEntryResult!1929)

(assert (=> b!285306 (= lt!140812 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27652 res!147748) b!285305))

(assert (= (and b!285305 res!147746) b!285302))

(assert (= (and b!285302 res!147747) b!285304))

(assert (= (and b!285304 res!147750) b!285303))

(assert (= (and b!285303 res!147749) b!285306))

(assert (= (and b!285306 res!147745) b!285301))

(declare-fun m!300193 () Bool)

(assert (=> b!285306 m!300193))

(declare-fun m!300195 () Bool)

(assert (=> b!285303 m!300195))

(declare-fun m!300197 () Bool)

(assert (=> b!285302 m!300197))

(declare-fun m!300199 () Bool)

(assert (=> b!285301 m!300199))

(declare-fun m!300201 () Bool)

(assert (=> b!285304 m!300201))

(declare-fun m!300203 () Bool)

(assert (=> start!27652 m!300203))

(declare-fun m!300205 () Bool)

(assert (=> start!27652 m!300205))

(push 1)


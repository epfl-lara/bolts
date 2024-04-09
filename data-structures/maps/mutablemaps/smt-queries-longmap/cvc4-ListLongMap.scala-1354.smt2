; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26696 () Bool)

(assert start!26696)

(declare-fun b!276927 () Bool)

(declare-fun e!176845 () Bool)

(declare-datatypes ((array!13782 0))(
  ( (array!13783 (arr!6540 (Array (_ BitVec 32) (_ BitVec 64))) (size!6892 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13782)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276927 (= e!176845 (and (= startIndex!26 i!1267) (bvslt startIndex!26 (bvsub (size!6892 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000) (bvsge (bvsub (size!6892 a!3325) (bvadd #b00000000000000000000000000000001 startIndex!26)) (bvsub (size!6892 a!3325) startIndex!26))))))

(declare-fun b!276928 () Bool)

(declare-fun res!140956 () Bool)

(declare-fun e!176843 () Bool)

(assert (=> b!276928 (=> (not res!140956) (not e!176843))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276928 (= res!140956 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276929 () Bool)

(declare-fun res!140960 () Bool)

(assert (=> b!276929 (=> (not res!140960) (not e!176843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276929 (= res!140960 (validKeyInArray!0 k!2581))))

(declare-fun b!276930 () Bool)

(declare-fun res!140961 () Bool)

(assert (=> b!276930 (=> (not res!140961) (not e!176843))))

(declare-datatypes ((List!4369 0))(
  ( (Nil!4366) (Cons!4365 (h!5032 (_ BitVec 64)) (t!9459 List!4369)) )
))
(declare-fun arrayNoDuplicates!0 (array!13782 (_ BitVec 32) List!4369) Bool)

(assert (=> b!276930 (= res!140961 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4366))))

(declare-fun b!276931 () Bool)

(assert (=> b!276931 (= e!176843 e!176845)))

(declare-fun res!140958 () Bool)

(assert (=> b!276931 (=> (not res!140958) (not e!176845))))

(declare-datatypes ((SeekEntryResult!1709 0))(
  ( (MissingZero!1709 (index!9006 (_ BitVec 32))) (Found!1709 (index!9007 (_ BitVec 32))) (Intermediate!1709 (undefined!2521 Bool) (index!9008 (_ BitVec 32)) (x!27226 (_ BitVec 32))) (Undefined!1709) (MissingVacant!1709 (index!9009 (_ BitVec 32))) )
))
(declare-fun lt!137819 () SeekEntryResult!1709)

(assert (=> b!276931 (= res!140958 (or (= lt!137819 (MissingZero!1709 i!1267)) (= lt!137819 (MissingVacant!1709 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13782 (_ BitVec 32)) SeekEntryResult!1709)

(assert (=> b!276931 (= lt!137819 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276932 () Bool)

(declare-fun res!140957 () Bool)

(assert (=> b!276932 (=> (not res!140957) (not e!176845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13782 (_ BitVec 32)) Bool)

(assert (=> b!276932 (= res!140957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!140959 () Bool)

(assert (=> start!26696 (=> (not res!140959) (not e!176843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26696 (= res!140959 (validMask!0 mask!3868))))

(assert (=> start!26696 e!176843))

(declare-fun array_inv!4494 (array!13782) Bool)

(assert (=> start!26696 (array_inv!4494 a!3325)))

(assert (=> start!26696 true))

(declare-fun b!276933 () Bool)

(declare-fun res!140955 () Bool)

(assert (=> b!276933 (=> (not res!140955) (not e!176843))))

(assert (=> b!276933 (= res!140955 (and (= (size!6892 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6892 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6892 a!3325))))))

(assert (= (and start!26696 res!140959) b!276933))

(assert (= (and b!276933 res!140955) b!276929))

(assert (= (and b!276929 res!140960) b!276930))

(assert (= (and b!276930 res!140961) b!276928))

(assert (= (and b!276928 res!140956) b!276931))

(assert (= (and b!276931 res!140958) b!276932))

(assert (= (and b!276932 res!140957) b!276927))

(declare-fun m!292175 () Bool)

(assert (=> b!276931 m!292175))

(declare-fun m!292177 () Bool)

(assert (=> b!276932 m!292177))

(declare-fun m!292179 () Bool)

(assert (=> start!26696 m!292179))

(declare-fun m!292181 () Bool)

(assert (=> start!26696 m!292181))

(declare-fun m!292183 () Bool)

(assert (=> b!276929 m!292183))

(declare-fun m!292185 () Bool)

(assert (=> b!276930 m!292185))

(declare-fun m!292187 () Bool)

(assert (=> b!276928 m!292187))

(push 1)

(assert (not b!276930))

(assert (not b!276929))

(assert (not start!26696))

(assert (not b!276928))

(assert (not b!276931))

(assert (not b!276932))

(check-sat)

(pop 1)

(push 1)

(check-sat)


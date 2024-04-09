; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25688 () Bool)

(assert start!25688)

(declare-fun b!266194 () Bool)

(declare-fun e!172301 () Bool)

(assert (=> b!266194 (= e!172301 false)))

(declare-fun lt!134396 () Bool)

(declare-datatypes ((array!12854 0))(
  ( (array!12855 (arr!6081 (Array (_ BitVec 32) (_ BitVec 64))) (size!6433 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12854)

(declare-datatypes ((List!3916 0))(
  ( (Nil!3913) (Cons!3912 (h!4579 (_ BitVec 64)) (t!9006 List!3916)) )
))
(declare-fun arrayNoDuplicates!0 (array!12854 (_ BitVec 32) List!3916) Bool)

(assert (=> b!266194 (= lt!134396 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3913))))

(declare-fun b!266195 () Bool)

(declare-fun res!130529 () Bool)

(declare-fun e!172302 () Bool)

(assert (=> b!266195 (=> (not res!130529) (not e!172302))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266195 (= res!130529 (validKeyInArray!0 k!2698))))

(declare-fun res!130533 () Bool)

(assert (=> start!25688 (=> (not res!130533) (not e!172302))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25688 (= res!130533 (validMask!0 mask!4002))))

(assert (=> start!25688 e!172302))

(assert (=> start!25688 true))

(declare-fun array_inv!4035 (array!12854) Bool)

(assert (=> start!25688 (array_inv!4035 a!3436)))

(declare-fun b!266196 () Bool)

(assert (=> b!266196 (= e!172302 e!172301)))

(declare-fun res!130531 () Bool)

(assert (=> b!266196 (=> (not res!130531) (not e!172301))))

(declare-datatypes ((SeekEntryResult!1283 0))(
  ( (MissingZero!1283 (index!7302 (_ BitVec 32))) (Found!1283 (index!7303 (_ BitVec 32))) (Intermediate!1283 (undefined!2095 Bool) (index!7304 (_ BitVec 32)) (x!25576 (_ BitVec 32))) (Undefined!1283) (MissingVacant!1283 (index!7305 (_ BitVec 32))) )
))
(declare-fun lt!134395 () SeekEntryResult!1283)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266196 (= res!130531 (or (= lt!134395 (MissingZero!1283 i!1355)) (= lt!134395 (MissingVacant!1283 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12854 (_ BitVec 32)) SeekEntryResult!1283)

(assert (=> b!266196 (= lt!134395 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266197 () Bool)

(declare-fun res!130530 () Bool)

(assert (=> b!266197 (=> (not res!130530) (not e!172302))))

(declare-fun arrayContainsKey!0 (array!12854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266197 (= res!130530 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266198 () Bool)

(declare-fun res!130528 () Bool)

(assert (=> b!266198 (=> (not res!130528) (not e!172301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12854 (_ BitVec 32)) Bool)

(assert (=> b!266198 (= res!130528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266199 () Bool)

(declare-fun res!130532 () Bool)

(assert (=> b!266199 (=> (not res!130532) (not e!172302))))

(assert (=> b!266199 (= res!130532 (and (= (size!6433 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6433 a!3436))))))

(assert (= (and start!25688 res!130533) b!266199))

(assert (= (and b!266199 res!130532) b!266195))

(assert (= (and b!266195 res!130529) b!266197))

(assert (= (and b!266197 res!130530) b!266196))

(assert (= (and b!266196 res!130531) b!266198))

(assert (= (and b!266198 res!130528) b!266194))

(declare-fun m!282867 () Bool)

(assert (=> b!266198 m!282867))

(declare-fun m!282869 () Bool)

(assert (=> b!266194 m!282869))

(declare-fun m!282871 () Bool)

(assert (=> start!25688 m!282871))

(declare-fun m!282873 () Bool)

(assert (=> start!25688 m!282873))

(declare-fun m!282875 () Bool)

(assert (=> b!266195 m!282875))

(declare-fun m!282877 () Bool)

(assert (=> b!266197 m!282877))

(declare-fun m!282879 () Bool)

(assert (=> b!266196 m!282879))

(push 1)

(assert (not start!25688))

(assert (not b!266194))

(assert (not b!266198))

(assert (not b!266195))


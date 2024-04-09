; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25976 () Bool)

(assert start!25976)

(declare-fun b!267947 () Bool)

(declare-fun res!132266 () Bool)

(declare-fun e!173164 () Bool)

(assert (=> b!267947 (=> (not res!132266) (not e!173164))))

(declare-datatypes ((array!13062 0))(
  ( (array!13063 (arr!6180 (Array (_ BitVec 32) (_ BitVec 64))) (size!6532 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13062)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267947 (= res!132266 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267948 () Bool)

(declare-fun res!132263 () Bool)

(assert (=> b!267948 (=> (not res!132263) (not e!173164))))

(declare-datatypes ((List!4009 0))(
  ( (Nil!4006) (Cons!4005 (h!4672 (_ BitVec 64)) (t!9099 List!4009)) )
))
(declare-fun arrayNoDuplicates!0 (array!13062 (_ BitVec 32) List!4009) Bool)

(assert (=> b!267948 (= res!132263 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4006))))

(declare-fun b!267949 () Bool)

(assert (=> b!267949 (= e!173164 false)))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1349 0))(
  ( (MissingZero!1349 (index!7566 (_ BitVec 32))) (Found!1349 (index!7567 (_ BitVec 32))) (Intermediate!1349 (undefined!2161 Bool) (index!7568 (_ BitVec 32)) (x!25906 (_ BitVec 32))) (Undefined!1349) (MissingVacant!1349 (index!7569 (_ BitVec 32))) )
))
(declare-fun lt!134786 () SeekEntryResult!1349)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13062 (_ BitVec 32)) SeekEntryResult!1349)

(assert (=> b!267949 (= lt!134786 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!267950 () Bool)

(declare-fun res!132267 () Bool)

(assert (=> b!267950 (=> (not res!132267) (not e!173164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267950 (= res!132267 (validKeyInArray!0 k!2581))))

(declare-fun b!267951 () Bool)

(declare-fun res!132264 () Bool)

(assert (=> b!267951 (=> (not res!132264) (not e!173164))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267951 (= res!132264 (and (= (size!6532 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6532 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6532 a!3325))))))

(declare-fun res!132265 () Bool)

(assert (=> start!25976 (=> (not res!132265) (not e!173164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25976 (= res!132265 (validMask!0 mask!3868))))

(assert (=> start!25976 e!173164))

(declare-fun array_inv!4134 (array!13062) Bool)

(assert (=> start!25976 (array_inv!4134 a!3325)))

(assert (=> start!25976 true))

(assert (= (and start!25976 res!132265) b!267951))

(assert (= (and b!267951 res!132264) b!267950))

(assert (= (and b!267950 res!132267) b!267948))

(assert (= (and b!267948 res!132263) b!267947))

(assert (= (and b!267947 res!132266) b!267949))

(declare-fun m!284221 () Bool)

(assert (=> start!25976 m!284221))

(declare-fun m!284223 () Bool)

(assert (=> start!25976 m!284223))

(declare-fun m!284225 () Bool)

(assert (=> b!267949 m!284225))

(declare-fun m!284227 () Bool)

(assert (=> b!267950 m!284227))

(declare-fun m!284229 () Bool)

(assert (=> b!267948 m!284229))

(declare-fun m!284231 () Bool)

(assert (=> b!267947 m!284231))

(push 1)

(assert (not b!267948))

(assert (not b!267950))

(assert (not start!25976))

(assert (not b!267949))

(assert (not b!267947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


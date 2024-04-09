; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25978 () Bool)

(assert start!25978)

(declare-fun b!267962 () Bool)

(declare-fun res!132280 () Bool)

(declare-fun e!173170 () Bool)

(assert (=> b!267962 (=> (not res!132280) (not e!173170))))

(declare-datatypes ((array!13064 0))(
  ( (array!13065 (arr!6181 (Array (_ BitVec 32) (_ BitVec 64))) (size!6533 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13064)

(declare-datatypes ((List!4010 0))(
  ( (Nil!4007) (Cons!4006 (h!4673 (_ BitVec 64)) (t!9100 List!4010)) )
))
(declare-fun arrayNoDuplicates!0 (array!13064 (_ BitVec 32) List!4010) Bool)

(assert (=> b!267962 (= res!132280 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4007))))

(declare-fun b!267963 () Bool)

(assert (=> b!267963 (= e!173170 false)))

(declare-datatypes ((SeekEntryResult!1350 0))(
  ( (MissingZero!1350 (index!7570 (_ BitVec 32))) (Found!1350 (index!7571 (_ BitVec 32))) (Intermediate!1350 (undefined!2162 Bool) (index!7572 (_ BitVec 32)) (x!25915 (_ BitVec 32))) (Undefined!1350) (MissingVacant!1350 (index!7573 (_ BitVec 32))) )
))
(declare-fun lt!134789 () SeekEntryResult!1350)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13064 (_ BitVec 32)) SeekEntryResult!1350)

(assert (=> b!267963 (= lt!134789 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!267964 () Bool)

(declare-fun res!132279 () Bool)

(assert (=> b!267964 (=> (not res!132279) (not e!173170))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267964 (= res!132279 (validKeyInArray!0 k!2581))))

(declare-fun res!132281 () Bool)

(assert (=> start!25978 (=> (not res!132281) (not e!173170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25978 (= res!132281 (validMask!0 mask!3868))))

(assert (=> start!25978 e!173170))

(declare-fun array_inv!4135 (array!13064) Bool)

(assert (=> start!25978 (array_inv!4135 a!3325)))

(assert (=> start!25978 true))

(declare-fun b!267965 () Bool)

(declare-fun res!132278 () Bool)

(assert (=> b!267965 (=> (not res!132278) (not e!173170))))

(declare-fun arrayContainsKey!0 (array!13064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267965 (= res!132278 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267966 () Bool)

(declare-fun res!132282 () Bool)

(assert (=> b!267966 (=> (not res!132282) (not e!173170))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267966 (= res!132282 (and (= (size!6533 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6533 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6533 a!3325))))))

(assert (= (and start!25978 res!132281) b!267966))

(assert (= (and b!267966 res!132282) b!267964))

(assert (= (and b!267964 res!132279) b!267962))

(assert (= (and b!267962 res!132280) b!267965))

(assert (= (and b!267965 res!132278) b!267963))

(declare-fun m!284233 () Bool)

(assert (=> b!267963 m!284233))

(declare-fun m!284235 () Bool)

(assert (=> b!267964 m!284235))

(declare-fun m!284237 () Bool)

(assert (=> b!267962 m!284237))

(declare-fun m!284239 () Bool)

(assert (=> start!25978 m!284239))

(declare-fun m!284241 () Bool)

(assert (=> start!25978 m!284241))

(declare-fun m!284243 () Bool)

(assert (=> b!267965 m!284243))

(push 1)

(assert (not b!267964))

(assert (not b!267962))

(assert (not b!267965))

(assert (not b!267963))

(assert (not start!25978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


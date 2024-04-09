; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25954 () Bool)

(assert start!25954)

(declare-fun b!267773 () Bool)

(declare-fun res!132091 () Bool)

(declare-fun e!173097 () Bool)

(assert (=> b!267773 (=> (not res!132091) (not e!173097))))

(declare-datatypes ((array!13040 0))(
  ( (array!13041 (arr!6169 (Array (_ BitVec 32) (_ BitVec 64))) (size!6521 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13040)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267773 (= res!132091 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267774 () Bool)

(declare-fun res!132093 () Bool)

(assert (=> b!267774 (=> (not res!132093) (not e!173097))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267774 (= res!132093 (and (= (size!6521 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6521 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6521 a!3325))))))

(declare-fun b!267775 () Bool)

(assert (=> b!267775 (= e!173097 false)))

(declare-datatypes ((SeekEntryResult!1338 0))(
  ( (MissingZero!1338 (index!7522 (_ BitVec 32))) (Found!1338 (index!7523 (_ BitVec 32))) (Intermediate!1338 (undefined!2150 Bool) (index!7524 (_ BitVec 32)) (x!25871 (_ BitVec 32))) (Undefined!1338) (MissingVacant!1338 (index!7525 (_ BitVec 32))) )
))
(declare-fun lt!134762 () SeekEntryResult!1338)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13040 (_ BitVec 32)) SeekEntryResult!1338)

(assert (=> b!267775 (= lt!134762 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!267776 () Bool)

(declare-fun res!132092 () Bool)

(assert (=> b!267776 (=> (not res!132092) (not e!173097))))

(declare-datatypes ((List!3998 0))(
  ( (Nil!3995) (Cons!3994 (h!4661 (_ BitVec 64)) (t!9088 List!3998)) )
))
(declare-fun arrayNoDuplicates!0 (array!13040 (_ BitVec 32) List!3998) Bool)

(assert (=> b!267776 (= res!132092 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3995))))

(declare-fun b!267777 () Bool)

(declare-fun res!132090 () Bool)

(assert (=> b!267777 (=> (not res!132090) (not e!173097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267777 (= res!132090 (validKeyInArray!0 k!2581))))

(declare-fun res!132089 () Bool)

(assert (=> start!25954 (=> (not res!132089) (not e!173097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25954 (= res!132089 (validMask!0 mask!3868))))

(assert (=> start!25954 e!173097))

(declare-fun array_inv!4123 (array!13040) Bool)

(assert (=> start!25954 (array_inv!4123 a!3325)))

(assert (=> start!25954 true))

(assert (= (and start!25954 res!132089) b!267774))

(assert (= (and b!267774 res!132093) b!267777))

(assert (= (and b!267777 res!132090) b!267776))

(assert (= (and b!267776 res!132092) b!267773))

(assert (= (and b!267773 res!132091) b!267775))

(declare-fun m!284089 () Bool)

(assert (=> b!267776 m!284089))

(declare-fun m!284091 () Bool)

(assert (=> b!267775 m!284091))

(declare-fun m!284093 () Bool)

(assert (=> b!267773 m!284093))

(declare-fun m!284095 () Bool)

(assert (=> start!25954 m!284095))

(declare-fun m!284097 () Bool)

(assert (=> start!25954 m!284097))

(declare-fun m!284099 () Bool)

(assert (=> b!267777 m!284099))

(push 1)

(assert (not start!25954))

(assert (not b!267775))

(assert (not b!267773))

(assert (not b!267776))

(assert (not b!267777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


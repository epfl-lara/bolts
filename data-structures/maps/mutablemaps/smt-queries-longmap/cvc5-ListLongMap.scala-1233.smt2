; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25966 () Bool)

(assert start!25966)

(declare-fun res!132191 () Bool)

(declare-fun e!173134 () Bool)

(assert (=> start!25966 (=> (not res!132191) (not e!173134))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25966 (= res!132191 (validMask!0 mask!3868))))

(assert (=> start!25966 e!173134))

(declare-datatypes ((array!13052 0))(
  ( (array!13053 (arr!6175 (Array (_ BitVec 32) (_ BitVec 64))) (size!6527 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13052)

(declare-fun array_inv!4129 (array!13052) Bool)

(assert (=> start!25966 (array_inv!4129 a!3325)))

(assert (=> start!25966 true))

(declare-fun b!267872 () Bool)

(declare-fun res!132190 () Bool)

(assert (=> b!267872 (=> (not res!132190) (not e!173134))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267872 (= res!132190 (validKeyInArray!0 k!2581))))

(declare-fun b!267873 () Bool)

(declare-fun res!132192 () Bool)

(assert (=> b!267873 (=> (not res!132192) (not e!173134))))

(declare-datatypes ((List!4004 0))(
  ( (Nil!4001) (Cons!4000 (h!4667 (_ BitVec 64)) (t!9094 List!4004)) )
))
(declare-fun arrayNoDuplicates!0 (array!13052 (_ BitVec 32) List!4004) Bool)

(assert (=> b!267873 (= res!132192 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4001))))

(declare-fun b!267874 () Bool)

(assert (=> b!267874 (= e!173134 false)))

(declare-datatypes ((SeekEntryResult!1344 0))(
  ( (MissingZero!1344 (index!7546 (_ BitVec 32))) (Found!1344 (index!7547 (_ BitVec 32))) (Intermediate!1344 (undefined!2156 Bool) (index!7548 (_ BitVec 32)) (x!25893 (_ BitVec 32))) (Undefined!1344) (MissingVacant!1344 (index!7549 (_ BitVec 32))) )
))
(declare-fun lt!134771 () SeekEntryResult!1344)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13052 (_ BitVec 32)) SeekEntryResult!1344)

(assert (=> b!267874 (= lt!134771 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!267875 () Bool)

(declare-fun res!132189 () Bool)

(assert (=> b!267875 (=> (not res!132189) (not e!173134))))

(declare-fun arrayContainsKey!0 (array!13052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267875 (= res!132189 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267876 () Bool)

(declare-fun res!132188 () Bool)

(assert (=> b!267876 (=> (not res!132188) (not e!173134))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267876 (= res!132188 (and (= (size!6527 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6527 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6527 a!3325))))))

(assert (= (and start!25966 res!132191) b!267876))

(assert (= (and b!267876 res!132188) b!267872))

(assert (= (and b!267872 res!132190) b!267873))

(assert (= (and b!267873 res!132192) b!267875))

(assert (= (and b!267875 res!132189) b!267874))

(declare-fun m!284161 () Bool)

(assert (=> b!267872 m!284161))

(declare-fun m!284163 () Bool)

(assert (=> b!267875 m!284163))

(declare-fun m!284165 () Bool)

(assert (=> b!267873 m!284165))

(declare-fun m!284167 () Bool)

(assert (=> b!267874 m!284167))

(declare-fun m!284169 () Bool)

(assert (=> start!25966 m!284169))

(declare-fun m!284171 () Bool)

(assert (=> start!25966 m!284171))

(push 1)

(assert (not b!267874))

(assert (not b!267875))

(assert (not start!25966))

(assert (not b!267873))

(assert (not b!267872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


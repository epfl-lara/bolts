; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25982 () Bool)

(assert start!25982)

(declare-fun b!267992 () Bool)

(declare-fun res!132311 () Bool)

(declare-fun e!173182 () Bool)

(assert (=> b!267992 (=> (not res!132311) (not e!173182))))

(declare-datatypes ((array!13068 0))(
  ( (array!13069 (arr!6183 (Array (_ BitVec 32) (_ BitVec 64))) (size!6535 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13068)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267992 (= res!132311 (and (= (size!6535 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6535 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6535 a!3325))))))

(declare-fun res!132312 () Bool)

(assert (=> start!25982 (=> (not res!132312) (not e!173182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25982 (= res!132312 (validMask!0 mask!3868))))

(assert (=> start!25982 e!173182))

(declare-fun array_inv!4137 (array!13068) Bool)

(assert (=> start!25982 (array_inv!4137 a!3325)))

(assert (=> start!25982 true))

(declare-fun b!267993 () Bool)

(declare-fun res!132310 () Bool)

(assert (=> b!267993 (=> (not res!132310) (not e!173182))))

(declare-datatypes ((List!4012 0))(
  ( (Nil!4009) (Cons!4008 (h!4675 (_ BitVec 64)) (t!9102 List!4012)) )
))
(declare-fun arrayNoDuplicates!0 (array!13068 (_ BitVec 32) List!4012) Bool)

(assert (=> b!267993 (= res!132310 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4009))))

(declare-fun b!267994 () Bool)

(declare-fun res!132309 () Bool)

(assert (=> b!267994 (=> (not res!132309) (not e!173182))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267994 (= res!132309 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267995 () Bool)

(assert (=> b!267995 (= e!173182 false)))

(declare-datatypes ((SeekEntryResult!1352 0))(
  ( (MissingZero!1352 (index!7578 (_ BitVec 32))) (Found!1352 (index!7579 (_ BitVec 32))) (Intermediate!1352 (undefined!2164 Bool) (index!7580 (_ BitVec 32)) (x!25917 (_ BitVec 32))) (Undefined!1352) (MissingVacant!1352 (index!7581 (_ BitVec 32))) )
))
(declare-fun lt!134795 () SeekEntryResult!1352)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13068 (_ BitVec 32)) SeekEntryResult!1352)

(assert (=> b!267995 (= lt!134795 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!267996 () Bool)

(declare-fun res!132308 () Bool)

(assert (=> b!267996 (=> (not res!132308) (not e!173182))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267996 (= res!132308 (validKeyInArray!0 k!2581))))

(assert (= (and start!25982 res!132312) b!267992))

(assert (= (and b!267992 res!132311) b!267996))

(assert (= (and b!267996 res!132308) b!267993))

(assert (= (and b!267993 res!132310) b!267994))

(assert (= (and b!267994 res!132309) b!267995))

(declare-fun m!284257 () Bool)

(assert (=> b!267993 m!284257))

(declare-fun m!284259 () Bool)

(assert (=> start!25982 m!284259))

(declare-fun m!284261 () Bool)

(assert (=> start!25982 m!284261))

(declare-fun m!284263 () Bool)

(assert (=> b!267996 m!284263))

(declare-fun m!284265 () Bool)

(assert (=> b!267994 m!284265))

(declare-fun m!284267 () Bool)

(assert (=> b!267995 m!284267))

(push 1)

(assert (not b!267995))

(assert (not b!267996))

(assert (not b!267994))

(assert (not b!267993))

(assert (not start!25982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


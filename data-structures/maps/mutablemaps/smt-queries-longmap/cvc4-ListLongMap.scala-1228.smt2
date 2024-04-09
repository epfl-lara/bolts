; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25940 () Bool)

(assert start!25940)

(declare-fun b!267704 () Bool)

(declare-fun e!173055 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267704 (= e!173055 (bvslt mask!3868 #b00000000000000000000000000000000))))

(declare-fun b!267705 () Bool)

(declare-fun res!132022 () Bool)

(assert (=> b!267705 (=> (not res!132022) (not e!173055))))

(declare-datatypes ((array!13026 0))(
  ( (array!13027 (arr!6162 (Array (_ BitVec 32) (_ BitVec 64))) (size!6514 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13026)

(declare-datatypes ((List!3991 0))(
  ( (Nil!3988) (Cons!3987 (h!4654 (_ BitVec 64)) (t!9081 List!3991)) )
))
(declare-fun arrayNoDuplicates!0 (array!13026 (_ BitVec 32) List!3991) Bool)

(assert (=> b!267705 (= res!132022 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3988))))

(declare-fun res!132024 () Bool)

(assert (=> start!25940 (=> (not res!132024) (not e!173055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25940 (= res!132024 (validMask!0 mask!3868))))

(assert (=> start!25940 e!173055))

(declare-fun array_inv!4116 (array!13026) Bool)

(assert (=> start!25940 (array_inv!4116 a!3325)))

(assert (=> start!25940 true))

(declare-fun b!267706 () Bool)

(declare-fun res!132021 () Bool)

(assert (=> b!267706 (=> (not res!132021) (not e!173055))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267706 (= res!132021 (and (= (size!6514 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6514 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6514 a!3325))))))

(declare-fun b!267707 () Bool)

(declare-fun res!132020 () Bool)

(assert (=> b!267707 (=> (not res!132020) (not e!173055))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267707 (= res!132020 (validKeyInArray!0 k!2581))))

(declare-fun b!267708 () Bool)

(declare-fun res!132023 () Bool)

(assert (=> b!267708 (=> (not res!132023) (not e!173055))))

(declare-fun arrayContainsKey!0 (array!13026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267708 (= res!132023 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!25940 res!132024) b!267706))

(assert (= (and b!267706 res!132021) b!267707))

(assert (= (and b!267707 res!132020) b!267705))

(assert (= (and b!267705 res!132022) b!267708))

(assert (= (and b!267708 res!132023) b!267704))

(declare-fun m!284031 () Bool)

(assert (=> b!267705 m!284031))

(declare-fun m!284033 () Bool)

(assert (=> start!25940 m!284033))

(declare-fun m!284035 () Bool)

(assert (=> start!25940 m!284035))

(declare-fun m!284037 () Bool)

(assert (=> b!267707 m!284037))

(declare-fun m!284039 () Bool)

(assert (=> b!267708 m!284039))

(push 1)

(assert (not b!267708))

(assert (not b!267707))

(assert (not b!267705))

(assert (not start!25940))

(check-sat)

(pop 1)

(push 1)

(check-sat)


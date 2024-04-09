; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25804 () Bool)

(assert start!25804)

(declare-fun res!131657 () Bool)

(declare-fun e!172812 () Bool)

(assert (=> start!25804 (=> (not res!131657) (not e!172812))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25804 (= res!131657 (validMask!0 mask!3868))))

(assert (=> start!25804 e!172812))

(declare-datatypes ((array!12970 0))(
  ( (array!12971 (arr!6139 (Array (_ BitVec 32) (_ BitVec 64))) (size!6491 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12970)

(declare-fun array_inv!4093 (array!12970) Bool)

(assert (=> start!25804 (array_inv!4093 a!3325)))

(assert (=> start!25804 true))

(declare-fun b!267322 () Bool)

(declare-fun res!131656 () Bool)

(assert (=> b!267322 (=> (not res!131656) (not e!172812))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267322 (= res!131656 (and (= (size!6491 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6491 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6491 a!3325))))))

(declare-fun b!267323 () Bool)

(declare-fun res!131658 () Bool)

(assert (=> b!267323 (=> (not res!131658) (not e!172812))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267323 (= res!131658 (validKeyInArray!0 k!2581))))

(declare-fun b!267324 () Bool)

(assert (=> b!267324 (= e!172812 (and (bvsle #b00000000000000000000000000000000 (size!6491 a!3325)) (bvsge (size!6491 a!3325) #b01111111111111111111111111111111)))))

(assert (= (and start!25804 res!131657) b!267322))

(assert (= (and b!267322 res!131656) b!267323))

(assert (= (and b!267323 res!131658) b!267324))

(declare-fun m!283763 () Bool)

(assert (=> start!25804 m!283763))

(declare-fun m!283765 () Bool)

(assert (=> start!25804 m!283765))

(declare-fun m!283767 () Bool)

(assert (=> b!267323 m!283767))

(push 1)

(assert (not b!267323))

(assert (not start!25804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)


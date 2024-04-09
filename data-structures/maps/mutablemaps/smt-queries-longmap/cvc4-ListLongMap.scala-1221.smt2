; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25808 () Bool)

(assert start!25808)

(declare-fun res!131676 () Bool)

(declare-fun e!172824 () Bool)

(assert (=> start!25808 (=> (not res!131676) (not e!172824))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25808 (= res!131676 (validMask!0 mask!3868))))

(assert (=> start!25808 e!172824))

(declare-datatypes ((array!12974 0))(
  ( (array!12975 (arr!6141 (Array (_ BitVec 32) (_ BitVec 64))) (size!6493 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12974)

(declare-fun array_inv!4095 (array!12974) Bool)

(assert (=> start!25808 (array_inv!4095 a!3325)))

(assert (=> start!25808 true))

(declare-fun b!267340 () Bool)

(declare-fun res!131674 () Bool)

(assert (=> b!267340 (=> (not res!131674) (not e!172824))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267340 (= res!131674 (and (= (size!6493 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6493 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6493 a!3325))))))

(declare-fun b!267341 () Bool)

(declare-fun res!131675 () Bool)

(assert (=> b!267341 (=> (not res!131675) (not e!172824))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267341 (= res!131675 (validKeyInArray!0 k!2581))))

(declare-fun b!267342 () Bool)

(assert (=> b!267342 (= e!172824 (and (bvsle #b00000000000000000000000000000000 (size!6493 a!3325)) (bvsge (size!6493 a!3325) #b01111111111111111111111111111111)))))

(assert (= (and start!25808 res!131676) b!267340))

(assert (= (and b!267340 res!131674) b!267341))

(assert (= (and b!267341 res!131675) b!267342))

(declare-fun m!283775 () Bool)

(assert (=> start!25808 m!283775))

(declare-fun m!283777 () Bool)

(assert (=> start!25808 m!283777))

(declare-fun m!283779 () Bool)

(assert (=> b!267341 m!283779))

(push 1)

(assert (not start!25808))

(assert (not b!267341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)


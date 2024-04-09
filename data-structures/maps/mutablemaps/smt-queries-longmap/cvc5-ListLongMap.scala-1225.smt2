; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25894 () Bool)

(assert start!25894)

(declare-fun b!267531 () Bool)

(declare-fun e!172954 () Bool)

(declare-datatypes ((array!13001 0))(
  ( (array!13002 (arr!6151 (Array (_ BitVec 32) (_ BitVec 64))) (size!6503 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13001)

(assert (=> b!267531 (= e!172954 (bvsge #b00000000000000000000000000000000 (size!6503 a!3325)))))

(declare-fun b!267528 () Bool)

(declare-fun res!131864 () Bool)

(assert (=> b!267528 (=> (not res!131864) (not e!172954))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267528 (= res!131864 (and (= (size!6503 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6503 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6503 a!3325))))))

(declare-fun res!131865 () Bool)

(assert (=> start!25894 (=> (not res!131865) (not e!172954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25894 (= res!131865 (validMask!0 mask!3868))))

(assert (=> start!25894 e!172954))

(declare-fun array_inv!4105 (array!13001) Bool)

(assert (=> start!25894 (array_inv!4105 a!3325)))

(assert (=> start!25894 true))

(declare-fun b!267529 () Bool)

(declare-fun res!131862 () Bool)

(assert (=> b!267529 (=> (not res!131862) (not e!172954))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267529 (= res!131862 (validKeyInArray!0 k!2581))))

(declare-fun b!267530 () Bool)

(declare-fun res!131863 () Bool)

(assert (=> b!267530 (=> (not res!131863) (not e!172954))))

(declare-datatypes ((List!3980 0))(
  ( (Nil!3977) (Cons!3976 (h!4643 (_ BitVec 64)) (t!9070 List!3980)) )
))
(declare-fun arrayNoDuplicates!0 (array!13001 (_ BitVec 32) List!3980) Bool)

(assert (=> b!267530 (= res!131863 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3977))))

(assert (= (and start!25894 res!131865) b!267528))

(assert (= (and b!267528 res!131864) b!267529))

(assert (= (and b!267529 res!131862) b!267530))

(assert (= (and b!267530 res!131863) b!267531))

(declare-fun m!283915 () Bool)

(assert (=> start!25894 m!283915))

(declare-fun m!283917 () Bool)

(assert (=> start!25894 m!283917))

(declare-fun m!283919 () Bool)

(assert (=> b!267529 m!283919))

(declare-fun m!283921 () Bool)

(assert (=> b!267530 m!283921))

(push 1)

(assert (not b!267530))

(assert (not b!267529))

(assert (not start!25894))

(check-sat)

(pop 1)


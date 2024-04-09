; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25888 () Bool)

(assert start!25888)

(declare-fun res!131834 () Bool)

(declare-fun e!172936 () Bool)

(assert (=> start!25888 (=> (not res!131834) (not e!172936))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25888 (= res!131834 (validMask!0 mask!3868))))

(assert (=> start!25888 e!172936))

(declare-datatypes ((array!12995 0))(
  ( (array!12996 (arr!6148 (Array (_ BitVec 32) (_ BitVec 64))) (size!6500 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12995)

(declare-fun array_inv!4102 (array!12995) Bool)

(assert (=> start!25888 (array_inv!4102 a!3325)))

(assert (=> start!25888 true))

(declare-fun b!267499 () Bool)

(declare-fun res!131835 () Bool)

(assert (=> b!267499 (=> (not res!131835) (not e!172936))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267499 (= res!131835 (and (= (size!6500 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6500 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6500 a!3325))))))

(declare-fun b!267500 () Bool)

(declare-fun res!131833 () Bool)

(assert (=> b!267500 (=> (not res!131833) (not e!172936))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267500 (= res!131833 (validKeyInArray!0 k!2581))))

(declare-fun b!267501 () Bool)

(assert (=> b!267501 (= e!172936 false)))

(declare-fun lt!134726 () Bool)

(declare-datatypes ((List!3977 0))(
  ( (Nil!3974) (Cons!3973 (h!4640 (_ BitVec 64)) (t!9067 List!3977)) )
))
(declare-fun arrayNoDuplicates!0 (array!12995 (_ BitVec 32) List!3977) Bool)

(assert (=> b!267501 (= lt!134726 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3974))))

(assert (= (and start!25888 res!131834) b!267499))

(assert (= (and b!267499 res!131835) b!267500))

(assert (= (and b!267500 res!131833) b!267501))

(declare-fun m!283891 () Bool)

(assert (=> start!25888 m!283891))

(declare-fun m!283893 () Bool)

(assert (=> start!25888 m!283893))

(declare-fun m!283895 () Bool)

(assert (=> b!267500 m!283895))

(declare-fun m!283897 () Bool)

(assert (=> b!267501 m!283897))

(push 1)

(assert (not b!267500))

(assert (not b!267501))

(assert (not start!25888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


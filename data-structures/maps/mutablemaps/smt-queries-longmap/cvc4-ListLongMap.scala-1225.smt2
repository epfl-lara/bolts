; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25898 () Bool)

(assert start!25898)

(declare-fun res!131888 () Bool)

(declare-fun e!172965 () Bool)

(assert (=> start!25898 (=> (not res!131888) (not e!172965))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25898 (= res!131888 (validMask!0 mask!3868))))

(assert (=> start!25898 e!172965))

(declare-datatypes ((array!13005 0))(
  ( (array!13006 (arr!6153 (Array (_ BitVec 32) (_ BitVec 64))) (size!6505 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13005)

(declare-fun array_inv!4107 (array!13005) Bool)

(assert (=> start!25898 (array_inv!4107 a!3325)))

(assert (=> start!25898 true))

(declare-fun b!267555 () Bool)

(assert (=> b!267555 (= e!172965 (bvsge #b00000000000000000000000000000000 (size!6505 a!3325)))))

(declare-fun b!267553 () Bool)

(declare-fun res!131887 () Bool)

(assert (=> b!267553 (=> (not res!131887) (not e!172965))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267553 (= res!131887 (validKeyInArray!0 k!2581))))

(declare-fun b!267552 () Bool)

(declare-fun res!131886 () Bool)

(assert (=> b!267552 (=> (not res!131886) (not e!172965))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267552 (= res!131886 (and (= (size!6505 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6505 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6505 a!3325))))))

(declare-fun b!267554 () Bool)

(declare-fun res!131889 () Bool)

(assert (=> b!267554 (=> (not res!131889) (not e!172965))))

(declare-datatypes ((List!3982 0))(
  ( (Nil!3979) (Cons!3978 (h!4645 (_ BitVec 64)) (t!9072 List!3982)) )
))
(declare-fun arrayNoDuplicates!0 (array!13005 (_ BitVec 32) List!3982) Bool)

(assert (=> b!267554 (= res!131889 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3979))))

(assert (= (and start!25898 res!131888) b!267552))

(assert (= (and b!267552 res!131886) b!267553))

(assert (= (and b!267553 res!131887) b!267554))

(assert (= (and b!267554 res!131889) b!267555))

(declare-fun m!283931 () Bool)

(assert (=> start!25898 m!283931))

(declare-fun m!283933 () Bool)

(assert (=> start!25898 m!283933))

(declare-fun m!283935 () Bool)

(assert (=> b!267553 m!283935))

(declare-fun m!283937 () Bool)

(assert (=> b!267554 m!283937))

(push 1)

(assert (not b!267554))

(assert (not b!267553))

(assert (not start!25898))

(check-sat)

(pop 1)

(push 1)

(check-sat)


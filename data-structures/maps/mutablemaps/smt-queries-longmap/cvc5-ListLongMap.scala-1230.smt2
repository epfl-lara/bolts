; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25948 () Bool)

(assert start!25948)

(declare-fun res!132059 () Bool)

(declare-fun e!173079 () Bool)

(assert (=> start!25948 (=> (not res!132059) (not e!173079))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25948 (= res!132059 (validMask!0 mask!3868))))

(assert (=> start!25948 e!173079))

(declare-datatypes ((array!13034 0))(
  ( (array!13035 (arr!6166 (Array (_ BitVec 32) (_ BitVec 64))) (size!6518 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13034)

(declare-fun array_inv!4120 (array!13034) Bool)

(assert (=> start!25948 (array_inv!4120 a!3325)))

(assert (=> start!25948 true))

(declare-fun b!267742 () Bool)

(declare-fun res!132058 () Bool)

(assert (=> b!267742 (=> (not res!132058) (not e!173079))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267742 (= res!132058 (and (= (size!6518 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6518 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6518 a!3325))))))

(declare-fun b!267743 () Bool)

(declare-fun res!132060 () Bool)

(assert (=> b!267743 (=> (not res!132060) (not e!173079))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267743 (= res!132060 (validKeyInArray!0 k!2581))))

(declare-fun b!267744 () Bool)

(assert (=> b!267744 (= e!173079 false)))

(declare-fun lt!134753 () Bool)

(declare-datatypes ((List!3995 0))(
  ( (Nil!3992) (Cons!3991 (h!4658 (_ BitVec 64)) (t!9085 List!3995)) )
))
(declare-fun arrayNoDuplicates!0 (array!13034 (_ BitVec 32) List!3995) Bool)

(assert (=> b!267744 (= lt!134753 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3992))))

(assert (= (and start!25948 res!132059) b!267742))

(assert (= (and b!267742 res!132058) b!267743))

(assert (= (and b!267743 res!132060) b!267744))

(declare-fun m!284065 () Bool)

(assert (=> start!25948 m!284065))

(declare-fun m!284067 () Bool)

(assert (=> start!25948 m!284067))

(declare-fun m!284069 () Bool)

(assert (=> b!267743 m!284069))

(declare-fun m!284071 () Bool)

(assert (=> b!267744 m!284071))

(push 1)

(assert (not b!267744))

(assert (not start!25948))

(assert (not b!267743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


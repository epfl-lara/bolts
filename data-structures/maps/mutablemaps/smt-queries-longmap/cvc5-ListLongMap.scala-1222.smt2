; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25822 () Bool)

(assert start!25822)

(declare-fun res!131686 () Bool)

(declare-fun e!172830 () Bool)

(assert (=> start!25822 (=> (not res!131686) (not e!172830))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25822 (= res!131686 (validMask!0 mask!3868))))

(assert (=> start!25822 e!172830))

(declare-datatypes ((array!12977 0))(
  ( (array!12978 (arr!6142 (Array (_ BitVec 32) (_ BitVec 64))) (size!6494 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12977)

(declare-fun array_inv!4096 (array!12977) Bool)

(assert (=> start!25822 (array_inv!4096 a!3325)))

(assert (=> start!25822 true))

(declare-fun b!267352 () Bool)

(declare-fun res!131688 () Bool)

(assert (=> b!267352 (=> (not res!131688) (not e!172830))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267352 (= res!131688 (validKeyInArray!0 k!2581))))

(declare-fun b!267353 () Bool)

(declare-fun res!131685 () Bool)

(assert (=> b!267353 (=> (not res!131685) (not e!172830))))

(assert (=> b!267353 (= res!131685 (and (bvsle #b00000000000000000000000000000000 (size!6494 a!3325)) (bvslt (size!6494 a!3325) #b01111111111111111111111111111111)))))

(declare-fun b!267351 () Bool)

(declare-fun res!131687 () Bool)

(assert (=> b!267351 (=> (not res!131687) (not e!172830))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267351 (= res!131687 (and (= (size!6494 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6494 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6494 a!3325))))))

(declare-fun b!267354 () Bool)

(declare-datatypes ((List!3971 0))(
  ( (Nil!3968) (Cons!3967 (h!4634 (_ BitVec 64)) (t!9061 List!3971)) )
))
(declare-fun noDuplicate!110 (List!3971) Bool)

(assert (=> b!267354 (= e!172830 (not (noDuplicate!110 Nil!3968)))))

(assert (= (and start!25822 res!131686) b!267351))

(assert (= (and b!267351 res!131687) b!267352))

(assert (= (and b!267352 res!131688) b!267353))

(assert (= (and b!267353 res!131685) b!267354))

(declare-fun m!283781 () Bool)

(assert (=> start!25822 m!283781))

(declare-fun m!283783 () Bool)

(assert (=> start!25822 m!283783))

(declare-fun m!283785 () Bool)

(assert (=> b!267352 m!283785))

(declare-fun m!283787 () Bool)

(assert (=> b!267354 m!283787))

(push 1)

(assert (not b!267354))

(assert (not b!267352))

(assert (not start!25822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64237 () Bool)

(declare-fun res!131717 () Bool)

(declare-fun e!172848 () Bool)

(assert (=> d!64237 (=> res!131717 e!172848)))

(assert (=> d!64237 (= res!131717 (is-Nil!3968 Nil!3968))))

(assert (=> d!64237 (= (noDuplicate!110 Nil!3968) e!172848)))

(declare-fun b!267383 () Bool)

(declare-fun e!172849 () Bool)


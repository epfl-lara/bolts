; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25826 () Bool)

(assert start!25826)

(declare-fun b!267375 () Bool)

(declare-fun res!131711 () Bool)

(declare-fun e!172843 () Bool)

(assert (=> b!267375 (=> (not res!131711) (not e!172843))))

(declare-datatypes ((array!12981 0))(
  ( (array!12982 (arr!6144 (Array (_ BitVec 32) (_ BitVec 64))) (size!6496 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12981)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267375 (= res!131711 (and (= (size!6496 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6496 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6496 a!3325))))))

(declare-fun b!267376 () Bool)

(declare-fun res!131712 () Bool)

(assert (=> b!267376 (=> (not res!131712) (not e!172843))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267376 (= res!131712 (validKeyInArray!0 k!2581))))

(declare-fun b!267377 () Bool)

(declare-fun res!131710 () Bool)

(assert (=> b!267377 (=> (not res!131710) (not e!172843))))

(assert (=> b!267377 (= res!131710 (and (bvsle #b00000000000000000000000000000000 (size!6496 a!3325)) (bvslt (size!6496 a!3325) #b01111111111111111111111111111111)))))

(declare-fun b!267378 () Bool)

(declare-datatypes ((List!3973 0))(
  ( (Nil!3970) (Cons!3969 (h!4636 (_ BitVec 64)) (t!9063 List!3973)) )
))
(declare-fun noDuplicate!112 (List!3973) Bool)

(assert (=> b!267378 (= e!172843 (not (noDuplicate!112 Nil!3970)))))

(declare-fun res!131709 () Bool)

(assert (=> start!25826 (=> (not res!131709) (not e!172843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25826 (= res!131709 (validMask!0 mask!3868))))

(assert (=> start!25826 e!172843))

(declare-fun array_inv!4098 (array!12981) Bool)

(assert (=> start!25826 (array_inv!4098 a!3325)))

(assert (=> start!25826 true))

(assert (= (and start!25826 res!131709) b!267375))

(assert (= (and b!267375 res!131711) b!267376))

(assert (= (and b!267376 res!131712) b!267377))

(assert (= (and b!267377 res!131710) b!267378))

(declare-fun m!283797 () Bool)

(assert (=> b!267376 m!283797))

(declare-fun m!283799 () Bool)

(assert (=> b!267378 m!283799))

(declare-fun m!283801 () Bool)

(assert (=> start!25826 m!283801))

(declare-fun m!283803 () Bool)

(assert (=> start!25826 m!283803))

(push 1)

(assert (not b!267376))

(assert (not start!25826))

(assert (not b!267378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)


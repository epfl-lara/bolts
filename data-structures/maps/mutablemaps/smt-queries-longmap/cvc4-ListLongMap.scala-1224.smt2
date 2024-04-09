; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25892 () Bool)

(assert start!25892)

(declare-fun res!131853 () Bool)

(declare-fun e!172948 () Bool)

(assert (=> start!25892 (=> (not res!131853) (not e!172948))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25892 (= res!131853 (validMask!0 mask!3868))))

(assert (=> start!25892 e!172948))

(declare-datatypes ((array!12999 0))(
  ( (array!13000 (arr!6150 (Array (_ BitVec 32) (_ BitVec 64))) (size!6502 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12999)

(declare-fun array_inv!4104 (array!12999) Bool)

(assert (=> start!25892 (array_inv!4104 a!3325)))

(assert (=> start!25892 true))

(declare-fun b!267517 () Bool)

(declare-fun res!131852 () Bool)

(assert (=> b!267517 (=> (not res!131852) (not e!172948))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!267517 (= res!131852 (and (= (size!6502 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6502 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6502 a!3325))))))

(declare-fun b!267518 () Bool)

(declare-fun res!131851 () Bool)

(assert (=> b!267518 (=> (not res!131851) (not e!172948))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267518 (= res!131851 (validKeyInArray!0 k!2581))))

(declare-fun b!267519 () Bool)

(assert (=> b!267519 (= e!172948 false)))

(declare-fun lt!134732 () Bool)

(declare-datatypes ((List!3979 0))(
  ( (Nil!3976) (Cons!3975 (h!4642 (_ BitVec 64)) (t!9069 List!3979)) )
))
(declare-fun arrayNoDuplicates!0 (array!12999 (_ BitVec 32) List!3979) Bool)

(assert (=> b!267519 (= lt!134732 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3976))))

(assert (= (and start!25892 res!131853) b!267517))

(assert (= (and b!267517 res!131852) b!267518))

(assert (= (and b!267518 res!131851) b!267519))

(declare-fun m!283907 () Bool)

(assert (=> start!25892 m!283907))

(declare-fun m!283909 () Bool)

(assert (=> start!25892 m!283909))

(declare-fun m!283911 () Bool)

(assert (=> b!267518 m!283911))

(declare-fun m!283913 () Bool)

(assert (=> b!267519 m!283913))

(push 1)

(assert (not b!267518))

(assert (not b!267519))

(assert (not start!25892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


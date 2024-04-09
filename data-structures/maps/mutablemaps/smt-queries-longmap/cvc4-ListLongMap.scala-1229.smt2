; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25946 () Bool)

(assert start!25946)

(declare-fun res!132049 () Bool)

(declare-fun e!173074 () Bool)

(assert (=> start!25946 (=> (not res!132049) (not e!173074))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25946 (= res!132049 (validMask!0 mask!3868))))

(assert (=> start!25946 e!173074))

(declare-datatypes ((array!13032 0))(
  ( (array!13033 (arr!6165 (Array (_ BitVec 32) (_ BitVec 64))) (size!6517 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13032)

(declare-fun array_inv!4119 (array!13032) Bool)

(assert (=> start!25946 (array_inv!4119 a!3325)))

(assert (=> start!25946 true))

(declare-fun b!267733 () Bool)

(declare-fun res!132051 () Bool)

(assert (=> b!267733 (=> (not res!132051) (not e!173074))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267733 (= res!132051 (and (= (size!6517 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6517 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6517 a!3325))))))

(declare-fun b!267734 () Bool)

(declare-fun res!132050 () Bool)

(assert (=> b!267734 (=> (not res!132050) (not e!173074))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267734 (= res!132050 (validKeyInArray!0 k!2581))))

(declare-fun b!267735 () Bool)

(assert (=> b!267735 (= e!173074 false)))

(declare-fun lt!134750 () Bool)

(declare-datatypes ((List!3994 0))(
  ( (Nil!3991) (Cons!3990 (h!4657 (_ BitVec 64)) (t!9084 List!3994)) )
))
(declare-fun arrayNoDuplicates!0 (array!13032 (_ BitVec 32) List!3994) Bool)

(assert (=> b!267735 (= lt!134750 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3991))))

(assert (= (and start!25946 res!132049) b!267733))

(assert (= (and b!267733 res!132051) b!267734))

(assert (= (and b!267734 res!132050) b!267735))

(declare-fun m!284057 () Bool)

(assert (=> start!25946 m!284057))

(declare-fun m!284059 () Bool)

(assert (=> start!25946 m!284059))

(declare-fun m!284061 () Bool)

(assert (=> b!267734 m!284061))

(declare-fun m!284063 () Bool)

(assert (=> b!267735 m!284063))

(push 1)

(assert (not start!25946))

(assert (not b!267734))

(assert (not b!267735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


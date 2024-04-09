; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25952 () Bool)

(assert start!25952)

(declare-fun res!132076 () Bool)

(declare-fun e!173092 () Bool)

(assert (=> start!25952 (=> (not res!132076) (not e!173092))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25952 (= res!132076 (validMask!0 mask!3868))))

(assert (=> start!25952 e!173092))

(declare-datatypes ((array!13038 0))(
  ( (array!13039 (arr!6168 (Array (_ BitVec 32) (_ BitVec 64))) (size!6520 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13038)

(declare-fun array_inv!4122 (array!13038) Bool)

(assert (=> start!25952 (array_inv!4122 a!3325)))

(assert (=> start!25952 true))

(declare-fun b!267760 () Bool)

(declare-fun res!132078 () Bool)

(assert (=> b!267760 (=> (not res!132078) (not e!173092))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!267760 (= res!132078 (and (= (size!6520 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6520 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6520 a!3325))))))

(declare-fun b!267761 () Bool)

(declare-fun res!132077 () Bool)

(assert (=> b!267761 (=> (not res!132077) (not e!173092))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267761 (= res!132077 (validKeyInArray!0 k!2581))))

(declare-fun b!267762 () Bool)

(assert (=> b!267762 (= e!173092 false)))

(declare-fun lt!134759 () Bool)

(declare-datatypes ((List!3997 0))(
  ( (Nil!3994) (Cons!3993 (h!4660 (_ BitVec 64)) (t!9087 List!3997)) )
))
(declare-fun arrayNoDuplicates!0 (array!13038 (_ BitVec 32) List!3997) Bool)

(assert (=> b!267762 (= lt!134759 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3994))))

(assert (= (and start!25952 res!132076) b!267760))

(assert (= (and b!267760 res!132078) b!267761))

(assert (= (and b!267761 res!132077) b!267762))

(declare-fun m!284081 () Bool)

(assert (=> start!25952 m!284081))

(declare-fun m!284083 () Bool)

(assert (=> start!25952 m!284083))

(declare-fun m!284085 () Bool)

(assert (=> b!267761 m!284085))

(declare-fun m!284087 () Bool)

(assert (=> b!267762 m!284087))

(push 1)

(assert (not start!25952))

(assert (not b!267761))

(assert (not b!267762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


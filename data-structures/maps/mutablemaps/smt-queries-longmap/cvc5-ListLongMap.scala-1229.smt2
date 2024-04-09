; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25942 () Bool)

(assert start!25942)

(declare-fun res!132033 () Bool)

(declare-fun e!173061 () Bool)

(assert (=> start!25942 (=> (not res!132033) (not e!173061))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25942 (= res!132033 (validMask!0 mask!3868))))

(assert (=> start!25942 e!173061))

(declare-datatypes ((array!13028 0))(
  ( (array!13029 (arr!6163 (Array (_ BitVec 32) (_ BitVec 64))) (size!6515 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13028)

(declare-fun array_inv!4117 (array!13028) Bool)

(assert (=> start!25942 (array_inv!4117 a!3325)))

(assert (=> start!25942 true))

(declare-fun b!267715 () Bool)

(declare-fun res!132031 () Bool)

(assert (=> b!267715 (=> (not res!132031) (not e!173061))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267715 (= res!132031 (and (= (size!6515 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6515 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6515 a!3325))))))

(declare-fun b!267716 () Bool)

(declare-fun res!132032 () Bool)

(assert (=> b!267716 (=> (not res!132032) (not e!173061))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267716 (= res!132032 (validKeyInArray!0 k!2581))))

(declare-fun b!267717 () Bool)

(assert (=> b!267717 (= e!173061 false)))

(declare-fun lt!134744 () Bool)

(declare-datatypes ((List!3992 0))(
  ( (Nil!3989) (Cons!3988 (h!4655 (_ BitVec 64)) (t!9082 List!3992)) )
))
(declare-fun arrayNoDuplicates!0 (array!13028 (_ BitVec 32) List!3992) Bool)

(assert (=> b!267717 (= lt!134744 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3989))))

(assert (= (and start!25942 res!132033) b!267715))

(assert (= (and b!267715 res!132031) b!267716))

(assert (= (and b!267716 res!132032) b!267717))

(declare-fun m!284041 () Bool)

(assert (=> start!25942 m!284041))

(declare-fun m!284043 () Bool)

(assert (=> start!25942 m!284043))

(declare-fun m!284045 () Bool)

(assert (=> b!267716 m!284045))

(declare-fun m!284047 () Bool)

(assert (=> b!267717 m!284047))

(push 1)

(assert (not b!267716))

(assert (not b!267717))

(assert (not start!25942))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


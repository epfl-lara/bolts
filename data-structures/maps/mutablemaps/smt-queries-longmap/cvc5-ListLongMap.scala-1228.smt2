; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25936 () Bool)

(assert start!25936)

(declare-fun b!267674 () Bool)

(declare-fun res!131994 () Bool)

(declare-fun e!173043 () Bool)

(assert (=> b!267674 (=> (not res!131994) (not e!173043))))

(declare-datatypes ((array!13022 0))(
  ( (array!13023 (arr!6160 (Array (_ BitVec 32) (_ BitVec 64))) (size!6512 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13022)

(declare-datatypes ((List!3989 0))(
  ( (Nil!3986) (Cons!3985 (h!4652 (_ BitVec 64)) (t!9079 List!3989)) )
))
(declare-fun arrayNoDuplicates!0 (array!13022 (_ BitVec 32) List!3989) Bool)

(assert (=> b!267674 (= res!131994 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3986))))

(declare-fun b!267675 () Bool)

(declare-fun res!131990 () Bool)

(assert (=> b!267675 (=> (not res!131990) (not e!173043))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267675 (= res!131990 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267676 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267676 (= e!173043 (bvslt mask!3868 #b00000000000000000000000000000000))))

(declare-fun res!131992 () Bool)

(assert (=> start!25936 (=> (not res!131992) (not e!173043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25936 (= res!131992 (validMask!0 mask!3868))))

(assert (=> start!25936 e!173043))

(declare-fun array_inv!4114 (array!13022) Bool)

(assert (=> start!25936 (array_inv!4114 a!3325)))

(assert (=> start!25936 true))

(declare-fun b!267677 () Bool)

(declare-fun res!131991 () Bool)

(assert (=> b!267677 (=> (not res!131991) (not e!173043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267677 (= res!131991 (validKeyInArray!0 k!2581))))

(declare-fun b!267678 () Bool)

(declare-fun res!131993 () Bool)

(assert (=> b!267678 (=> (not res!131993) (not e!173043))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267678 (= res!131993 (and (= (size!6512 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6512 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6512 a!3325))))))

(assert (= (and start!25936 res!131992) b!267678))

(assert (= (and b!267678 res!131993) b!267677))

(assert (= (and b!267677 res!131991) b!267674))

(assert (= (and b!267674 res!131994) b!267675))

(assert (= (and b!267675 res!131990) b!267676))

(declare-fun m!284011 () Bool)

(assert (=> b!267674 m!284011))

(declare-fun m!284013 () Bool)

(assert (=> b!267675 m!284013))

(declare-fun m!284015 () Bool)

(assert (=> start!25936 m!284015))

(declare-fun m!284017 () Bool)

(assert (=> start!25936 m!284017))

(declare-fun m!284019 () Bool)

(assert (=> b!267677 m!284019))

(push 1)

(assert (not b!267677))

(assert (not b!267675))

(assert (not start!25936))

(assert (not b!267674))

(check-sat)

(pop 1)


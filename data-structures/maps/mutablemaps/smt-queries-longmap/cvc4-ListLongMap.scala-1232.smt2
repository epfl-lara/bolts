; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25964 () Bool)

(assert start!25964)

(declare-fun b!267856 () Bool)

(declare-fun res!132174 () Bool)

(declare-fun e!173127 () Bool)

(assert (=> b!267856 (=> (not res!132174) (not e!173127))))

(declare-datatypes ((array!13050 0))(
  ( (array!13051 (arr!6174 (Array (_ BitVec 32) (_ BitVec 64))) (size!6526 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13050)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1343 0))(
  ( (MissingZero!1343 (index!7542 (_ BitVec 32))) (Found!1343 (index!7543 (_ BitVec 32))) (Intermediate!1343 (undefined!2155 Bool) (index!7544 (_ BitVec 32)) (x!25884 (_ BitVec 32))) (Undefined!1343) (MissingVacant!1343 (index!7545 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13050 (_ BitVec 32)) SeekEntryResult!1343)

(assert (=> b!267856 (= res!132174 (not (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) (MissingZero!1343 i!1267))))))

(declare-fun b!267857 () Bool)

(declare-fun res!132177 () Bool)

(assert (=> b!267857 (=> (not res!132177) (not e!173127))))

(declare-fun arrayContainsKey!0 (array!13050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267857 (= res!132177 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267858 () Bool)

(declare-fun res!132175 () Bool)

(assert (=> b!267858 (=> (not res!132175) (not e!173127))))

(declare-datatypes ((List!4003 0))(
  ( (Nil!4000) (Cons!3999 (h!4666 (_ BitVec 64)) (t!9093 List!4003)) )
))
(declare-fun arrayNoDuplicates!0 (array!13050 (_ BitVec 32) List!4003) Bool)

(assert (=> b!267858 (= res!132175 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4000))))

(declare-fun b!267859 () Bool)

(declare-fun res!132176 () Bool)

(assert (=> b!267859 (=> (not res!132176) (not e!173127))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267859 (= res!132176 (and (= (size!6526 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6526 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6526 a!3325))))))

(declare-fun res!132173 () Bool)

(assert (=> start!25964 (=> (not res!132173) (not e!173127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25964 (= res!132173 (validMask!0 mask!3868))))

(assert (=> start!25964 e!173127))

(declare-fun array_inv!4128 (array!13050) Bool)

(assert (=> start!25964 (array_inv!4128 a!3325)))

(assert (=> start!25964 true))

(declare-fun b!267860 () Bool)

(assert (=> b!267860 (= e!173127 (bvslt mask!3868 #b00000000000000000000000000000000))))

(declare-fun b!267861 () Bool)

(declare-fun res!132172 () Bool)

(assert (=> b!267861 (=> (not res!132172) (not e!173127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267861 (= res!132172 (validKeyInArray!0 k!2581))))

(assert (= (and start!25964 res!132173) b!267859))

(assert (= (and b!267859 res!132176) b!267861))

(assert (= (and b!267861 res!132172) b!267858))

(assert (= (and b!267858 res!132175) b!267857))

(assert (= (and b!267857 res!132177) b!267856))

(assert (= (and b!267856 res!132174) b!267860))

(declare-fun m!284149 () Bool)

(assert (=> b!267857 m!284149))

(declare-fun m!284151 () Bool)

(assert (=> start!25964 m!284151))

(declare-fun m!284153 () Bool)

(assert (=> start!25964 m!284153))

(declare-fun m!284155 () Bool)

(assert (=> b!267856 m!284155))

(declare-fun m!284157 () Bool)

(assert (=> b!267858 m!284157))

(declare-fun m!284159 () Bool)

(assert (=> b!267861 m!284159))

(push 1)

(assert (not b!267861))

(assert (not b!267856))

(assert (not start!25964))

(assert (not b!267858))

(assert (not b!267857))

(check-sat)

(pop 1)

(push 1)

(check-sat)


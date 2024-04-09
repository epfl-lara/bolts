; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25970 () Bool)

(assert start!25970)

(declare-fun b!267902 () Bool)

(declare-fun res!132222 () Bool)

(declare-fun e!173145 () Bool)

(assert (=> b!267902 (=> (not res!132222) (not e!173145))))

(declare-datatypes ((array!13056 0))(
  ( (array!13057 (arr!6177 (Array (_ BitVec 32) (_ BitVec 64))) (size!6529 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13056)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267902 (= res!132222 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267903 () Bool)

(declare-fun res!132221 () Bool)

(assert (=> b!267903 (=> (not res!132221) (not e!173145))))

(declare-datatypes ((List!4006 0))(
  ( (Nil!4003) (Cons!4002 (h!4669 (_ BitVec 64)) (t!9096 List!4006)) )
))
(declare-fun arrayNoDuplicates!0 (array!13056 (_ BitVec 32) List!4006) Bool)

(assert (=> b!267903 (= res!132221 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4003))))

(declare-fun b!267904 () Bool)

(declare-fun res!132219 () Bool)

(assert (=> b!267904 (=> (not res!132219) (not e!173145))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!267904 (= res!132219 (and (= (size!6529 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6529 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6529 a!3325))))))

(declare-fun b!267906 () Bool)

(declare-fun res!132220 () Bool)

(assert (=> b!267906 (=> (not res!132220) (not e!173145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267906 (= res!132220 (validKeyInArray!0 k!2581))))

(declare-fun b!267905 () Bool)

(assert (=> b!267905 (= e!173145 false)))

(declare-datatypes ((SeekEntryResult!1346 0))(
  ( (MissingZero!1346 (index!7554 (_ BitVec 32))) (Found!1346 (index!7555 (_ BitVec 32))) (Intermediate!1346 (undefined!2158 Bool) (index!7556 (_ BitVec 32)) (x!25895 (_ BitVec 32))) (Undefined!1346) (MissingVacant!1346 (index!7557 (_ BitVec 32))) )
))
(declare-fun lt!134777 () SeekEntryResult!1346)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13056 (_ BitVec 32)) SeekEntryResult!1346)

(assert (=> b!267905 (= lt!134777 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!132218 () Bool)

(assert (=> start!25970 (=> (not res!132218) (not e!173145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25970 (= res!132218 (validMask!0 mask!3868))))

(assert (=> start!25970 e!173145))

(declare-fun array_inv!4131 (array!13056) Bool)

(assert (=> start!25970 (array_inv!4131 a!3325)))

(assert (=> start!25970 true))

(assert (= (and start!25970 res!132218) b!267904))

(assert (= (and b!267904 res!132219) b!267906))

(assert (= (and b!267906 res!132220) b!267903))

(assert (= (and b!267903 res!132221) b!267902))

(assert (= (and b!267902 res!132222) b!267905))

(declare-fun m!284185 () Bool)

(assert (=> b!267906 m!284185))

(declare-fun m!284187 () Bool)

(assert (=> b!267905 m!284187))

(declare-fun m!284189 () Bool)

(assert (=> b!267902 m!284189))

(declare-fun m!284191 () Bool)

(assert (=> b!267903 m!284191))

(declare-fun m!284193 () Bool)

(assert (=> start!25970 m!284193))

(declare-fun m!284195 () Bool)

(assert (=> start!25970 m!284195))

(push 1)

(assert (not b!267905))

(assert (not b!267903))

(assert (not b!267902))

(assert (not start!25970))

(assert (not b!267906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


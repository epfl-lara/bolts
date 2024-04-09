; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26006 () Bool)

(assert start!26006)

(declare-fun b!268180 () Bool)

(declare-fun e!173263 () Bool)

(assert (=> b!268180 (= e!173263 false)))

(declare-fun lt!134840 () Bool)

(declare-datatypes ((array!13092 0))(
  ( (array!13093 (arr!6195 (Array (_ BitVec 32) (_ BitVec 64))) (size!6547 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13092)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13092 (_ BitVec 32)) Bool)

(assert (=> b!268180 (= lt!134840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268181 () Bool)

(declare-fun res!132499 () Bool)

(declare-fun e!173262 () Bool)

(assert (=> b!268181 (=> (not res!132499) (not e!173262))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268181 (= res!132499 (and (= (size!6547 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6547 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6547 a!3325))))))

(declare-fun b!268182 () Bool)

(declare-fun res!132497 () Bool)

(assert (=> b!268182 (=> (not res!132497) (not e!173262))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268182 (= res!132497 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268183 () Bool)

(assert (=> b!268183 (= e!173262 e!173263)))

(declare-fun res!132500 () Bool)

(assert (=> b!268183 (=> (not res!132500) (not e!173263))))

(declare-datatypes ((SeekEntryResult!1364 0))(
  ( (MissingZero!1364 (index!7626 (_ BitVec 32))) (Found!1364 (index!7627 (_ BitVec 32))) (Intermediate!1364 (undefined!2176 Bool) (index!7628 (_ BitVec 32)) (x!25961 (_ BitVec 32))) (Undefined!1364) (MissingVacant!1364 (index!7629 (_ BitVec 32))) )
))
(declare-fun lt!134839 () SeekEntryResult!1364)

(assert (=> b!268183 (= res!132500 (or (= lt!134839 (MissingZero!1364 i!1267)) (= lt!134839 (MissingVacant!1364 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13092 (_ BitVec 32)) SeekEntryResult!1364)

(assert (=> b!268183 (= lt!134839 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268184 () Bool)

(declare-fun res!132496 () Bool)

(assert (=> b!268184 (=> (not res!132496) (not e!173262))))

(declare-datatypes ((List!4024 0))(
  ( (Nil!4021) (Cons!4020 (h!4687 (_ BitVec 64)) (t!9114 List!4024)) )
))
(declare-fun arrayNoDuplicates!0 (array!13092 (_ BitVec 32) List!4024) Bool)

(assert (=> b!268184 (= res!132496 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4021))))

(declare-fun b!268185 () Bool)

(declare-fun res!132498 () Bool)

(assert (=> b!268185 (=> (not res!132498) (not e!173262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268185 (= res!132498 (validKeyInArray!0 k!2581))))

(declare-fun res!132501 () Bool)

(assert (=> start!26006 (=> (not res!132501) (not e!173262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26006 (= res!132501 (validMask!0 mask!3868))))

(assert (=> start!26006 e!173262))

(declare-fun array_inv!4149 (array!13092) Bool)

(assert (=> start!26006 (array_inv!4149 a!3325)))

(assert (=> start!26006 true))

(assert (= (and start!26006 res!132501) b!268181))

(assert (= (and b!268181 res!132499) b!268185))

(assert (= (and b!268185 res!132498) b!268184))

(assert (= (and b!268184 res!132496) b!268182))

(assert (= (and b!268182 res!132497) b!268183))

(assert (= (and b!268183 res!132500) b!268180))

(declare-fun m!284405 () Bool)

(assert (=> start!26006 m!284405))

(declare-fun m!284407 () Bool)

(assert (=> start!26006 m!284407))

(declare-fun m!284409 () Bool)

(assert (=> b!268180 m!284409))

(declare-fun m!284411 () Bool)

(assert (=> b!268183 m!284411))

(declare-fun m!284413 () Bool)

(assert (=> b!268185 m!284413))

(declare-fun m!284415 () Bool)

(assert (=> b!268184 m!284415))

(declare-fun m!284417 () Bool)

(assert (=> b!268182 m!284417))

(push 1)

(assert (not b!268182))

(assert (not b!268184))

(assert (not b!268183))

(assert (not b!268180))

(assert (not b!268185))

(assert (not start!26006))

(check-sat)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26018 () Bool)

(assert start!26018)

(declare-fun b!268288 () Bool)

(declare-fun res!132609 () Bool)

(declare-fun e!173315 () Bool)

(assert (=> b!268288 (=> (not res!132609) (not e!173315))))

(declare-datatypes ((array!13104 0))(
  ( (array!13105 (arr!6201 (Array (_ BitVec 32) (_ BitVec 64))) (size!6553 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13104)

(declare-datatypes ((List!4030 0))(
  ( (Nil!4027) (Cons!4026 (h!4693 (_ BitVec 64)) (t!9120 List!4030)) )
))
(declare-fun arrayNoDuplicates!0 (array!13104 (_ BitVec 32) List!4030) Bool)

(assert (=> b!268288 (= res!132609 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4027))))

(declare-fun b!268289 () Bool)

(declare-fun res!132607 () Bool)

(assert (=> b!268289 (=> (not res!132607) (not e!173315))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268289 (= res!132607 (validKeyInArray!0 k!2581))))

(declare-fun res!132605 () Bool)

(assert (=> start!26018 (=> (not res!132605) (not e!173315))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26018 (= res!132605 (validMask!0 mask!3868))))

(assert (=> start!26018 e!173315))

(declare-fun array_inv!4155 (array!13104) Bool)

(assert (=> start!26018 (array_inv!4155 a!3325)))

(assert (=> start!26018 true))

(declare-fun b!268290 () Bool)

(declare-fun res!132606 () Bool)

(assert (=> b!268290 (=> (not res!132606) (not e!173315))))

(declare-fun arrayContainsKey!0 (array!13104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268290 (= res!132606 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268291 () Bool)

(declare-fun res!132608 () Bool)

(assert (=> b!268291 (=> (not res!132608) (not e!173315))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268291 (= res!132608 (and (= (size!6553 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6553 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6553 a!3325))))))

(declare-fun b!268292 () Bool)

(declare-fun e!173317 () Bool)

(assert (=> b!268292 (= e!173315 e!173317)))

(declare-fun res!132604 () Bool)

(assert (=> b!268292 (=> (not res!132604) (not e!173317))))

(declare-datatypes ((SeekEntryResult!1370 0))(
  ( (MissingZero!1370 (index!7650 (_ BitVec 32))) (Found!1370 (index!7651 (_ BitVec 32))) (Intermediate!1370 (undefined!2182 Bool) (index!7652 (_ BitVec 32)) (x!25983 (_ BitVec 32))) (Undefined!1370) (MissingVacant!1370 (index!7653 (_ BitVec 32))) )
))
(declare-fun lt!134876 () SeekEntryResult!1370)

(assert (=> b!268292 (= res!132604 (or (= lt!134876 (MissingZero!1370 i!1267)) (= lt!134876 (MissingVacant!1370 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13104 (_ BitVec 32)) SeekEntryResult!1370)

(assert (=> b!268292 (= lt!134876 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268293 () Bool)

(assert (=> b!268293 (= e!173317 false)))

(declare-fun lt!134875 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13104 (_ BitVec 32)) Bool)

(assert (=> b!268293 (= lt!134875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26018 res!132605) b!268291))

(assert (= (and b!268291 res!132608) b!268289))

(assert (= (and b!268289 res!132607) b!268288))

(assert (= (and b!268288 res!132609) b!268290))

(assert (= (and b!268290 res!132606) b!268292))

(assert (= (and b!268292 res!132604) b!268293))

(declare-fun m!284489 () Bool)

(assert (=> b!268290 m!284489))

(declare-fun m!284491 () Bool)

(assert (=> b!268292 m!284491))

(declare-fun m!284493 () Bool)

(assert (=> b!268289 m!284493))

(declare-fun m!284495 () Bool)

(assert (=> start!26018 m!284495))

(declare-fun m!284497 () Bool)

(assert (=> start!26018 m!284497))

(declare-fun m!284499 () Bool)

(assert (=> b!268293 m!284499))

(declare-fun m!284501 () Bool)

(assert (=> b!268288 m!284501))

(push 1)

(assert (not b!268290))

(assert (not b!268289))

(assert (not b!268288))

(assert (not b!268292))

(assert (not start!26018))

(assert (not b!268293))

(check-sat)

(pop 1)


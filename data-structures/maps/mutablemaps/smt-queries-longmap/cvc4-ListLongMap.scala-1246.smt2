; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26048 () Bool)

(assert start!26048)

(declare-fun b!268567 () Bool)

(declare-fun res!132884 () Bool)

(declare-fun e!173452 () Bool)

(assert (=> b!268567 (=> (not res!132884) (not e!173452))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268567 (= res!132884 (validKeyInArray!0 k!2581))))

(declare-fun res!132885 () Bool)

(assert (=> start!26048 (=> (not res!132885) (not e!173452))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26048 (= res!132885 (validMask!0 mask!3868))))

(assert (=> start!26048 e!173452))

(declare-datatypes ((array!13134 0))(
  ( (array!13135 (arr!6216 (Array (_ BitVec 32) (_ BitVec 64))) (size!6568 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13134)

(declare-fun array_inv!4170 (array!13134) Bool)

(assert (=> start!26048 (array_inv!4170 a!3325)))

(assert (=> start!26048 true))

(declare-fun b!268568 () Bool)

(declare-fun e!173450 () Bool)

(assert (=> b!268568 (= e!173450 false)))

(declare-fun lt!134957 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13134 (_ BitVec 32)) Bool)

(assert (=> b!268568 (= lt!134957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268569 () Bool)

(declare-fun res!132883 () Bool)

(assert (=> b!268569 (=> (not res!132883) (not e!173452))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268569 (= res!132883 (and (= (size!6568 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6568 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6568 a!3325))))))

(declare-fun b!268570 () Bool)

(declare-fun res!132888 () Bool)

(assert (=> b!268570 (=> (not res!132888) (not e!173452))))

(declare-fun arrayContainsKey!0 (array!13134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268570 (= res!132888 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268571 () Bool)

(declare-fun res!132887 () Bool)

(assert (=> b!268571 (=> (not res!132887) (not e!173452))))

(declare-datatypes ((List!4045 0))(
  ( (Nil!4042) (Cons!4041 (h!4708 (_ BitVec 64)) (t!9135 List!4045)) )
))
(declare-fun arrayNoDuplicates!0 (array!13134 (_ BitVec 32) List!4045) Bool)

(assert (=> b!268571 (= res!132887 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4042))))

(declare-fun b!268572 () Bool)

(assert (=> b!268572 (= e!173452 e!173450)))

(declare-fun res!132886 () Bool)

(assert (=> b!268572 (=> (not res!132886) (not e!173450))))

(declare-datatypes ((SeekEntryResult!1385 0))(
  ( (MissingZero!1385 (index!7710 (_ BitVec 32))) (Found!1385 (index!7711 (_ BitVec 32))) (Intermediate!1385 (undefined!2197 Bool) (index!7712 (_ BitVec 32)) (x!26038 (_ BitVec 32))) (Undefined!1385) (MissingVacant!1385 (index!7713 (_ BitVec 32))) )
))
(declare-fun lt!134956 () SeekEntryResult!1385)

(assert (=> b!268572 (= res!132886 (or (= lt!134956 (MissingZero!1385 i!1267)) (= lt!134956 (MissingVacant!1385 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13134 (_ BitVec 32)) SeekEntryResult!1385)

(assert (=> b!268572 (= lt!134956 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26048 res!132885) b!268569))

(assert (= (and b!268569 res!132883) b!268567))

(assert (= (and b!268567 res!132884) b!268571))

(assert (= (and b!268571 res!132887) b!268570))

(assert (= (and b!268570 res!132888) b!268572))

(assert (= (and b!268572 res!132886) b!268568))

(declare-fun m!284699 () Bool)

(assert (=> b!268572 m!284699))

(declare-fun m!284701 () Bool)

(assert (=> b!268568 m!284701))

(declare-fun m!284703 () Bool)

(assert (=> b!268571 m!284703))

(declare-fun m!284705 () Bool)

(assert (=> start!26048 m!284705))

(declare-fun m!284707 () Bool)

(assert (=> start!26048 m!284707))

(declare-fun m!284709 () Bool)

(assert (=> b!268567 m!284709))

(declare-fun m!284711 () Bool)

(assert (=> b!268570 m!284711))

(push 1)

(assert (not b!268567))

(assert (not start!26048))

(assert (not b!268571))

(assert (not b!268572))

(assert (not b!268568))


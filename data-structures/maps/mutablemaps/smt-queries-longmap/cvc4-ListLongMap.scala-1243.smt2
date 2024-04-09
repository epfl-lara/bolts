; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26030 () Bool)

(assert start!26030)

(declare-fun b!268405 () Bool)

(declare-fun e!173370 () Bool)

(assert (=> b!268405 (= e!173370 false)))

(declare-fun lt!134902 () Bool)

(declare-datatypes ((array!13116 0))(
  ( (array!13117 (arr!6207 (Array (_ BitVec 32) (_ BitVec 64))) (size!6559 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13116)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13116 (_ BitVec 32)) Bool)

(assert (=> b!268405 (= lt!134902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268406 () Bool)

(declare-fun e!173369 () Bool)

(assert (=> b!268406 (= e!173369 e!173370)))

(declare-fun res!132726 () Bool)

(assert (=> b!268406 (=> (not res!132726) (not e!173370))))

(declare-datatypes ((SeekEntryResult!1376 0))(
  ( (MissingZero!1376 (index!7674 (_ BitVec 32))) (Found!1376 (index!7675 (_ BitVec 32))) (Intermediate!1376 (undefined!2188 Bool) (index!7676 (_ BitVec 32)) (x!26005 (_ BitVec 32))) (Undefined!1376) (MissingVacant!1376 (index!7677 (_ BitVec 32))) )
))
(declare-fun lt!134903 () SeekEntryResult!1376)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268406 (= res!132726 (or (= lt!134903 (MissingZero!1376 i!1267)) (= lt!134903 (MissingVacant!1376 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13116 (_ BitVec 32)) SeekEntryResult!1376)

(assert (=> b!268406 (= lt!134903 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268407 () Bool)

(declare-fun res!132721 () Bool)

(assert (=> b!268407 (=> (not res!132721) (not e!173369))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268407 (= res!132721 (validKeyInArray!0 k!2581))))

(declare-fun b!268408 () Bool)

(declare-fun res!132723 () Bool)

(assert (=> b!268408 (=> (not res!132723) (not e!173369))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268408 (= res!132723 (and (= (size!6559 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6559 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6559 a!3325))))))

(declare-fun b!268409 () Bool)

(declare-fun res!132724 () Bool)

(assert (=> b!268409 (=> (not res!132724) (not e!173369))))

(declare-fun arrayContainsKey!0 (array!13116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268409 (= res!132724 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!132725 () Bool)

(assert (=> start!26030 (=> (not res!132725) (not e!173369))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26030 (= res!132725 (validMask!0 mask!3868))))

(assert (=> start!26030 e!173369))

(declare-fun array_inv!4161 (array!13116) Bool)

(assert (=> start!26030 (array_inv!4161 a!3325)))

(assert (=> start!26030 true))

(declare-fun b!268410 () Bool)

(declare-fun res!132722 () Bool)

(assert (=> b!268410 (=> (not res!132722) (not e!173369))))

(declare-datatypes ((List!4036 0))(
  ( (Nil!4033) (Cons!4032 (h!4699 (_ BitVec 64)) (t!9126 List!4036)) )
))
(declare-fun arrayNoDuplicates!0 (array!13116 (_ BitVec 32) List!4036) Bool)

(assert (=> b!268410 (= res!132722 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4033))))

(assert (= (and start!26030 res!132725) b!268408))

(assert (= (and b!268408 res!132723) b!268407))

(assert (= (and b!268407 res!132721) b!268410))

(assert (= (and b!268410 res!132722) b!268409))

(assert (= (and b!268409 res!132724) b!268406))

(assert (= (and b!268406 res!132726) b!268405))

(declare-fun m!284573 () Bool)

(assert (=> b!268405 m!284573))

(declare-fun m!284575 () Bool)

(assert (=> b!268406 m!284575))

(declare-fun m!284577 () Bool)

(assert (=> b!268407 m!284577))

(declare-fun m!284579 () Bool)

(assert (=> start!26030 m!284579))

(declare-fun m!284581 () Bool)

(assert (=> start!26030 m!284581))

(declare-fun m!284583 () Bool)

(assert (=> b!268410 m!284583))

(declare-fun m!284585 () Bool)

(assert (=> b!268409 m!284585))

(push 1)

(assert (not b!268405))

(assert (not start!26030))

(assert (not b!268410))

(assert (not b!268406))

(assert (not b!268409))

(assert (not b!268407))

(check-sat)


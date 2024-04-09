; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26038 () Bool)

(assert start!26038)

(declare-fun b!268477 () Bool)

(declare-fun e!173407 () Bool)

(assert (=> b!268477 (= e!173407 false)))

(declare-fun lt!134927 () Bool)

(declare-datatypes ((array!13124 0))(
  ( (array!13125 (arr!6211 (Array (_ BitVec 32) (_ BitVec 64))) (size!6563 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13124)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13124 (_ BitVec 32)) Bool)

(assert (=> b!268477 (= lt!134927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268478 () Bool)

(declare-fun e!173406 () Bool)

(assert (=> b!268478 (= e!173406 e!173407)))

(declare-fun res!132795 () Bool)

(assert (=> b!268478 (=> (not res!132795) (not e!173407))))

(declare-datatypes ((SeekEntryResult!1380 0))(
  ( (MissingZero!1380 (index!7690 (_ BitVec 32))) (Found!1380 (index!7691 (_ BitVec 32))) (Intermediate!1380 (undefined!2192 Bool) (index!7692 (_ BitVec 32)) (x!26025 (_ BitVec 32))) (Undefined!1380) (MissingVacant!1380 (index!7693 (_ BitVec 32))) )
))
(declare-fun lt!134926 () SeekEntryResult!1380)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268478 (= res!132795 (or (= lt!134926 (MissingZero!1380 i!1267)) (= lt!134926 (MissingVacant!1380 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13124 (_ BitVec 32)) SeekEntryResult!1380)

(assert (=> b!268478 (= lt!134926 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!132796 () Bool)

(assert (=> start!26038 (=> (not res!132796) (not e!173406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26038 (= res!132796 (validMask!0 mask!3868))))

(assert (=> start!26038 e!173406))

(declare-fun array_inv!4165 (array!13124) Bool)

(assert (=> start!26038 (array_inv!4165 a!3325)))

(assert (=> start!26038 true))

(declare-fun b!268479 () Bool)

(declare-fun res!132798 () Bool)

(assert (=> b!268479 (=> (not res!132798) (not e!173406))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268479 (= res!132798 (and (= (size!6563 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6563 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6563 a!3325))))))

(declare-fun b!268480 () Bool)

(declare-fun res!132797 () Bool)

(assert (=> b!268480 (=> (not res!132797) (not e!173406))))

(declare-fun arrayContainsKey!0 (array!13124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268480 (= res!132797 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268481 () Bool)

(declare-fun res!132794 () Bool)

(assert (=> b!268481 (=> (not res!132794) (not e!173406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268481 (= res!132794 (validKeyInArray!0 k!2581))))

(declare-fun b!268482 () Bool)

(declare-fun res!132793 () Bool)

(assert (=> b!268482 (=> (not res!132793) (not e!173406))))

(declare-datatypes ((List!4040 0))(
  ( (Nil!4037) (Cons!4036 (h!4703 (_ BitVec 64)) (t!9130 List!4040)) )
))
(declare-fun arrayNoDuplicates!0 (array!13124 (_ BitVec 32) List!4040) Bool)

(assert (=> b!268482 (= res!132793 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4037))))

(assert (= (and start!26038 res!132796) b!268479))

(assert (= (and b!268479 res!132798) b!268481))

(assert (= (and b!268481 res!132794) b!268482))

(assert (= (and b!268482 res!132793) b!268480))

(assert (= (and b!268480 res!132797) b!268478))

(assert (= (and b!268478 res!132795) b!268477))

(declare-fun m!284629 () Bool)

(assert (=> b!268482 m!284629))

(declare-fun m!284631 () Bool)

(assert (=> start!26038 m!284631))

(declare-fun m!284633 () Bool)

(assert (=> start!26038 m!284633))

(declare-fun m!284635 () Bool)

(assert (=> b!268480 m!284635))

(declare-fun m!284637 () Bool)

(assert (=> b!268481 m!284637))

(declare-fun m!284639 () Bool)

(assert (=> b!268478 m!284639))

(declare-fun m!284641 () Bool)

(assert (=> b!268477 m!284641))

(push 1)

(assert (not b!268482))


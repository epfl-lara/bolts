; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26058 () Bool)

(assert start!26058)

(declare-fun b!268657 () Bool)

(declare-fun res!132973 () Bool)

(declare-fun e!173496 () Bool)

(assert (=> b!268657 (=> (not res!132973) (not e!173496))))

(declare-datatypes ((array!13144 0))(
  ( (array!13145 (arr!6221 (Array (_ BitVec 32) (_ BitVec 64))) (size!6573 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13144)

(declare-datatypes ((List!4050 0))(
  ( (Nil!4047) (Cons!4046 (h!4713 (_ BitVec 64)) (t!9140 List!4050)) )
))
(declare-fun arrayNoDuplicates!0 (array!13144 (_ BitVec 32) List!4050) Bool)

(assert (=> b!268657 (= res!132973 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4047))))

(declare-fun b!268658 () Bool)

(declare-fun res!132976 () Bool)

(assert (=> b!268658 (=> (not res!132976) (not e!173496))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13144 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268658 (= res!132976 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!132978 () Bool)

(assert (=> start!26058 (=> (not res!132978) (not e!173496))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26058 (= res!132978 (validMask!0 mask!3868))))

(assert (=> start!26058 e!173496))

(declare-fun array_inv!4175 (array!13144) Bool)

(assert (=> start!26058 (array_inv!4175 a!3325)))

(assert (=> start!26058 true))

(declare-fun b!268659 () Bool)

(declare-fun res!132977 () Bool)

(assert (=> b!268659 (=> (not res!132977) (not e!173496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268659 (= res!132977 (validKeyInArray!0 k0!2581))))

(declare-fun b!268660 () Bool)

(declare-fun res!132974 () Bool)

(assert (=> b!268660 (=> (not res!132974) (not e!173496))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268660 (= res!132974 (and (= (size!6573 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6573 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6573 a!3325))))))

(declare-fun b!268661 () Bool)

(declare-fun e!173495 () Bool)

(assert (=> b!268661 (= e!173496 e!173495)))

(declare-fun res!132975 () Bool)

(assert (=> b!268661 (=> (not res!132975) (not e!173495))))

(declare-datatypes ((SeekEntryResult!1390 0))(
  ( (MissingZero!1390 (index!7730 (_ BitVec 32))) (Found!1390 (index!7731 (_ BitVec 32))) (Intermediate!1390 (undefined!2202 Bool) (index!7732 (_ BitVec 32)) (x!26059 (_ BitVec 32))) (Undefined!1390) (MissingVacant!1390 (index!7733 (_ BitVec 32))) )
))
(declare-fun lt!134987 () SeekEntryResult!1390)

(assert (=> b!268661 (= res!132975 (or (= lt!134987 (MissingZero!1390 i!1267)) (= lt!134987 (MissingVacant!1390 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13144 (_ BitVec 32)) SeekEntryResult!1390)

(assert (=> b!268661 (= lt!134987 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268662 () Bool)

(assert (=> b!268662 (= e!173495 false)))

(declare-fun lt!134986 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13144 (_ BitVec 32)) Bool)

(assert (=> b!268662 (= lt!134986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26058 res!132978) b!268660))

(assert (= (and b!268660 res!132974) b!268659))

(assert (= (and b!268659 res!132977) b!268657))

(assert (= (and b!268657 res!132973) b!268658))

(assert (= (and b!268658 res!132976) b!268661))

(assert (= (and b!268661 res!132975) b!268662))

(declare-fun m!284769 () Bool)

(assert (=> b!268659 m!284769))

(declare-fun m!284771 () Bool)

(assert (=> b!268657 m!284771))

(declare-fun m!284773 () Bool)

(assert (=> b!268661 m!284773))

(declare-fun m!284775 () Bool)

(assert (=> b!268658 m!284775))

(declare-fun m!284777 () Bool)

(assert (=> start!26058 m!284777))

(declare-fun m!284779 () Bool)

(assert (=> start!26058 m!284779))

(declare-fun m!284781 () Bool)

(assert (=> b!268662 m!284781))

(check-sat (not b!268662) (not b!268657) (not b!268661) (not b!268659) (not start!26058) (not b!268658))
(check-sat)

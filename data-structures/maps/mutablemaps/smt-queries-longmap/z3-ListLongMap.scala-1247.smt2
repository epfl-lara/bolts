; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26052 () Bool)

(assert start!26052)

(declare-fun res!132919 () Bool)

(declare-fun e!173469 () Bool)

(assert (=> start!26052 (=> (not res!132919) (not e!173469))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26052 (= res!132919 (validMask!0 mask!3868))))

(assert (=> start!26052 e!173469))

(declare-datatypes ((array!13138 0))(
  ( (array!13139 (arr!6218 (Array (_ BitVec 32) (_ BitVec 64))) (size!6570 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13138)

(declare-fun array_inv!4172 (array!13138) Bool)

(assert (=> start!26052 (array_inv!4172 a!3325)))

(assert (=> start!26052 true))

(declare-fun b!268603 () Bool)

(declare-fun e!173468 () Bool)

(assert (=> b!268603 (= e!173468 false)))

(declare-fun lt!134969 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13138 (_ BitVec 32)) Bool)

(assert (=> b!268603 (= lt!134969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268604 () Bool)

(declare-fun res!132922 () Bool)

(assert (=> b!268604 (=> (not res!132922) (not e!173469))))

(declare-datatypes ((List!4047 0))(
  ( (Nil!4044) (Cons!4043 (h!4710 (_ BitVec 64)) (t!9137 List!4047)) )
))
(declare-fun arrayNoDuplicates!0 (array!13138 (_ BitVec 32) List!4047) Bool)

(assert (=> b!268604 (= res!132922 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4044))))

(declare-fun b!268605 () Bool)

(declare-fun res!132923 () Bool)

(assert (=> b!268605 (=> (not res!132923) (not e!173469))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268605 (= res!132923 (validKeyInArray!0 k0!2581))))

(declare-fun b!268606 () Bool)

(declare-fun res!132920 () Bool)

(assert (=> b!268606 (=> (not res!132920) (not e!173469))))

(declare-fun arrayContainsKey!0 (array!13138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268606 (= res!132920 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268607 () Bool)

(assert (=> b!268607 (= e!173469 e!173468)))

(declare-fun res!132924 () Bool)

(assert (=> b!268607 (=> (not res!132924) (not e!173468))))

(declare-datatypes ((SeekEntryResult!1387 0))(
  ( (MissingZero!1387 (index!7718 (_ BitVec 32))) (Found!1387 (index!7719 (_ BitVec 32))) (Intermediate!1387 (undefined!2199 Bool) (index!7720 (_ BitVec 32)) (x!26048 (_ BitVec 32))) (Undefined!1387) (MissingVacant!1387 (index!7721 (_ BitVec 32))) )
))
(declare-fun lt!134968 () SeekEntryResult!1387)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268607 (= res!132924 (or (= lt!134968 (MissingZero!1387 i!1267)) (= lt!134968 (MissingVacant!1387 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13138 (_ BitVec 32)) SeekEntryResult!1387)

(assert (=> b!268607 (= lt!134968 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268608 () Bool)

(declare-fun res!132921 () Bool)

(assert (=> b!268608 (=> (not res!132921) (not e!173469))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268608 (= res!132921 (and (= (size!6570 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6570 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6570 a!3325))))))

(assert (= (and start!26052 res!132919) b!268608))

(assert (= (and b!268608 res!132921) b!268605))

(assert (= (and b!268605 res!132923) b!268604))

(assert (= (and b!268604 res!132922) b!268606))

(assert (= (and b!268606 res!132920) b!268607))

(assert (= (and b!268607 res!132924) b!268603))

(declare-fun m!284727 () Bool)

(assert (=> b!268605 m!284727))

(declare-fun m!284729 () Bool)

(assert (=> b!268607 m!284729))

(declare-fun m!284731 () Bool)

(assert (=> start!26052 m!284731))

(declare-fun m!284733 () Bool)

(assert (=> start!26052 m!284733))

(declare-fun m!284735 () Bool)

(assert (=> b!268604 m!284735))

(declare-fun m!284737 () Bool)

(assert (=> b!268606 m!284737))

(declare-fun m!284739 () Bool)

(assert (=> b!268603 m!284739))

(check-sat (not start!26052) (not b!268604) (not b!268603) (not b!268606) (not b!268605) (not b!268607))
(check-sat)

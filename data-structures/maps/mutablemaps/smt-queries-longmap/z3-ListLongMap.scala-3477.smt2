; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48222 () Bool)

(assert start!48222)

(declare-fun b!530548 () Bool)

(declare-fun res!326406 () Bool)

(declare-fun e!309075 () Bool)

(assert (=> b!530548 (=> (not res!326406) (not e!309075))))

(declare-datatypes ((array!33603 0))(
  ( (array!33604 (arr!16144 (Array (_ BitVec 32) (_ BitVec 64))) (size!16508 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33603)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530548 (= res!326406 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530549 () Bool)

(declare-fun res!326407 () Bool)

(assert (=> b!530549 (=> (not res!326407) (not e!309075))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530549 (= res!326407 (and (= (size!16508 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16508 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16508 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530550 () Bool)

(declare-fun res!326408 () Bool)

(assert (=> b!530550 (=> (not res!326408) (not e!309075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530550 (= res!326408 (validKeyInArray!0 (select (arr!16144 a!3154) j!147)))))

(declare-fun res!326405 () Bool)

(assert (=> start!48222 (=> (not res!326405) (not e!309075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48222 (= res!326405 (validMask!0 mask!3216))))

(assert (=> start!48222 e!309075))

(assert (=> start!48222 true))

(declare-fun array_inv!11918 (array!33603) Bool)

(assert (=> start!48222 (array_inv!11918 a!3154)))

(declare-fun b!530551 () Bool)

(assert (=> b!530551 (= e!309075 false)))

(declare-datatypes ((SeekEntryResult!4609 0))(
  ( (MissingZero!4609 (index!20660 (_ BitVec 32))) (Found!4609 (index!20661 (_ BitVec 32))) (Intermediate!4609 (undefined!5421 Bool) (index!20662 (_ BitVec 32)) (x!49674 (_ BitVec 32))) (Undefined!4609) (MissingVacant!4609 (index!20663 (_ BitVec 32))) )
))
(declare-fun lt!244751 () SeekEntryResult!4609)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33603 (_ BitVec 32)) SeekEntryResult!4609)

(assert (=> b!530551 (= lt!244751 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!530552 () Bool)

(declare-fun res!326404 () Bool)

(assert (=> b!530552 (=> (not res!326404) (not e!309075))))

(assert (=> b!530552 (= res!326404 (validKeyInArray!0 k0!1998))))

(assert (= (and start!48222 res!326405) b!530549))

(assert (= (and b!530549 res!326407) b!530550))

(assert (= (and b!530550 res!326408) b!530552))

(assert (= (and b!530552 res!326404) b!530548))

(assert (= (and b!530548 res!326406) b!530551))

(declare-fun m!511137 () Bool)

(assert (=> b!530550 m!511137))

(assert (=> b!530550 m!511137))

(declare-fun m!511139 () Bool)

(assert (=> b!530550 m!511139))

(declare-fun m!511141 () Bool)

(assert (=> b!530552 m!511141))

(declare-fun m!511143 () Bool)

(assert (=> b!530551 m!511143))

(declare-fun m!511145 () Bool)

(assert (=> start!48222 m!511145))

(declare-fun m!511147 () Bool)

(assert (=> start!48222 m!511147))

(declare-fun m!511149 () Bool)

(assert (=> b!530548 m!511149))

(check-sat (not b!530551) (not b!530550) (not start!48222) (not b!530548) (not b!530552))

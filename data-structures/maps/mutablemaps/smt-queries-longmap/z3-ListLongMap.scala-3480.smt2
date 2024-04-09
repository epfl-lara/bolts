; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48240 () Bool)

(assert start!48240)

(declare-fun b!530683 () Bool)

(declare-fun res!326542 () Bool)

(declare-fun e!309129 () Bool)

(assert (=> b!530683 (=> (not res!326542) (not e!309129))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33621 0))(
  ( (array!33622 (arr!16153 (Array (_ BitVec 32) (_ BitVec 64))) (size!16517 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33621)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530683 (= res!326542 (and (= (size!16517 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16517 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16517 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530684 () Bool)

(declare-fun res!326543 () Bool)

(assert (=> b!530684 (=> (not res!326543) (not e!309129))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530684 (= res!326543 (validKeyInArray!0 k0!1998))))

(declare-fun b!530685 () Bool)

(declare-fun res!326541 () Bool)

(assert (=> b!530685 (=> (not res!326541) (not e!309129))))

(declare-fun arrayContainsKey!0 (array!33621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530685 (= res!326541 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530686 () Bool)

(declare-fun res!326539 () Bool)

(assert (=> b!530686 (=> (not res!326539) (not e!309129))))

(assert (=> b!530686 (= res!326539 (validKeyInArray!0 (select (arr!16153 a!3154) j!147)))))

(declare-fun res!326540 () Bool)

(assert (=> start!48240 (=> (not res!326540) (not e!309129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48240 (= res!326540 (validMask!0 mask!3216))))

(assert (=> start!48240 e!309129))

(assert (=> start!48240 true))

(declare-fun array_inv!11927 (array!33621) Bool)

(assert (=> start!48240 (array_inv!11927 a!3154)))

(declare-fun b!530687 () Bool)

(declare-datatypes ((SeekEntryResult!4618 0))(
  ( (MissingZero!4618 (index!20696 (_ BitVec 32))) (Found!4618 (index!20697 (_ BitVec 32))) (Intermediate!4618 (undefined!5430 Bool) (index!20698 (_ BitVec 32)) (x!49707 (_ BitVec 32))) (Undefined!4618) (MissingVacant!4618 (index!20699 (_ BitVec 32))) )
))
(declare-fun lt!244778 () SeekEntryResult!4618)

(assert (=> b!530687 (= e!309129 (and (or (= lt!244778 (MissingZero!4618 i!1153)) (= lt!244778 (MissingVacant!4618 i!1153))) (bvsgt #b00000000000000000000000000000000 (size!16517 a!3154))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33621 (_ BitVec 32)) SeekEntryResult!4618)

(assert (=> b!530687 (= lt!244778 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!48240 res!326540) b!530683))

(assert (= (and b!530683 res!326542) b!530686))

(assert (= (and b!530686 res!326539) b!530684))

(assert (= (and b!530684 res!326543) b!530685))

(assert (= (and b!530685 res!326541) b!530687))

(declare-fun m!511263 () Bool)

(assert (=> start!48240 m!511263))

(declare-fun m!511265 () Bool)

(assert (=> start!48240 m!511265))

(declare-fun m!511267 () Bool)

(assert (=> b!530684 m!511267))

(declare-fun m!511269 () Bool)

(assert (=> b!530685 m!511269))

(declare-fun m!511271 () Bool)

(assert (=> b!530687 m!511271))

(declare-fun m!511273 () Bool)

(assert (=> b!530686 m!511273))

(assert (=> b!530686 m!511273))

(declare-fun m!511275 () Bool)

(assert (=> b!530686 m!511275))

(check-sat (not start!48240) (not b!530685) (not b!530687) (not b!530684) (not b!530686))
(check-sat)

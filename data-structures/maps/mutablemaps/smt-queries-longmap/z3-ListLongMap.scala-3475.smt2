; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48210 () Bool)

(assert start!48210)

(declare-fun b!530458 () Bool)

(declare-fun res!326317 () Bool)

(declare-fun e!309039 () Bool)

(assert (=> b!530458 (=> (not res!326317) (not e!309039))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33591 0))(
  ( (array!33592 (arr!16138 (Array (_ BitVec 32) (_ BitVec 64))) (size!16502 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33591)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530458 (= res!326317 (and (= (size!16502 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16502 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16502 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530460 () Bool)

(assert (=> b!530460 (= e!309039 false)))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4603 0))(
  ( (MissingZero!4603 (index!20636 (_ BitVec 32))) (Found!4603 (index!20637 (_ BitVec 32))) (Intermediate!4603 (undefined!5415 Bool) (index!20638 (_ BitVec 32)) (x!49652 (_ BitVec 32))) (Undefined!4603) (MissingVacant!4603 (index!20639 (_ BitVec 32))) )
))
(declare-fun lt!244733 () SeekEntryResult!4603)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33591 (_ BitVec 32)) SeekEntryResult!4603)

(assert (=> b!530460 (= lt!244733 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!530461 () Bool)

(declare-fun res!326318 () Bool)

(assert (=> b!530461 (=> (not res!326318) (not e!309039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530461 (= res!326318 (validKeyInArray!0 k0!1998))))

(declare-fun b!530462 () Bool)

(declare-fun res!326315 () Bool)

(assert (=> b!530462 (=> (not res!326315) (not e!309039))))

(assert (=> b!530462 (= res!326315 (validKeyInArray!0 (select (arr!16138 a!3154) j!147)))))

(declare-fun b!530459 () Bool)

(declare-fun res!326314 () Bool)

(assert (=> b!530459 (=> (not res!326314) (not e!309039))))

(declare-fun arrayContainsKey!0 (array!33591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530459 (= res!326314 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun res!326316 () Bool)

(assert (=> start!48210 (=> (not res!326316) (not e!309039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48210 (= res!326316 (validMask!0 mask!3216))))

(assert (=> start!48210 e!309039))

(assert (=> start!48210 true))

(declare-fun array_inv!11912 (array!33591) Bool)

(assert (=> start!48210 (array_inv!11912 a!3154)))

(assert (= (and start!48210 res!326316) b!530458))

(assert (= (and b!530458 res!326317) b!530462))

(assert (= (and b!530462 res!326315) b!530461))

(assert (= (and b!530461 res!326318) b!530459))

(assert (= (and b!530459 res!326314) b!530460))

(declare-fun m!511053 () Bool)

(assert (=> b!530459 m!511053))

(declare-fun m!511055 () Bool)

(assert (=> b!530460 m!511055))

(declare-fun m!511057 () Bool)

(assert (=> b!530461 m!511057))

(declare-fun m!511059 () Bool)

(assert (=> start!48210 m!511059))

(declare-fun m!511061 () Bool)

(assert (=> start!48210 m!511061))

(declare-fun m!511063 () Bool)

(assert (=> b!530462 m!511063))

(assert (=> b!530462 m!511063))

(declare-fun m!511065 () Bool)

(assert (=> b!530462 m!511065))

(check-sat (not b!530460) (not b!530462) (not b!530459) (not start!48210) (not b!530461))

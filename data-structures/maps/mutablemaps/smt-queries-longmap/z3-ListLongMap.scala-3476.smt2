; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48216 () Bool)

(assert start!48216)

(declare-fun b!530503 () Bool)

(declare-fun res!326362 () Bool)

(declare-fun e!309058 () Bool)

(assert (=> b!530503 (=> (not res!326362) (not e!309058))))

(declare-datatypes ((array!33597 0))(
  ( (array!33598 (arr!16141 (Array (_ BitVec 32) (_ BitVec 64))) (size!16505 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33597)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530503 (= res!326362 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530504 () Bool)

(assert (=> b!530504 (= e!309058 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4606 0))(
  ( (MissingZero!4606 (index!20648 (_ BitVec 32))) (Found!4606 (index!20649 (_ BitVec 32))) (Intermediate!4606 (undefined!5418 Bool) (index!20650 (_ BitVec 32)) (x!49663 (_ BitVec 32))) (Undefined!4606) (MissingVacant!4606 (index!20651 (_ BitVec 32))) )
))
(declare-fun lt!244742 () SeekEntryResult!4606)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33597 (_ BitVec 32)) SeekEntryResult!4606)

(assert (=> b!530504 (= lt!244742 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun res!326363 () Bool)

(assert (=> start!48216 (=> (not res!326363) (not e!309058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48216 (= res!326363 (validMask!0 mask!3216))))

(assert (=> start!48216 e!309058))

(assert (=> start!48216 true))

(declare-fun array_inv!11915 (array!33597) Bool)

(assert (=> start!48216 (array_inv!11915 a!3154)))

(declare-fun b!530505 () Bool)

(declare-fun res!326359 () Bool)

(assert (=> b!530505 (=> (not res!326359) (not e!309058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530505 (= res!326359 (validKeyInArray!0 k0!1998))))

(declare-fun b!530506 () Bool)

(declare-fun res!326361 () Bool)

(assert (=> b!530506 (=> (not res!326361) (not e!309058))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530506 (= res!326361 (and (= (size!16505 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16505 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16505 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530507 () Bool)

(declare-fun res!326360 () Bool)

(assert (=> b!530507 (=> (not res!326360) (not e!309058))))

(assert (=> b!530507 (= res!326360 (validKeyInArray!0 (select (arr!16141 a!3154) j!147)))))

(assert (= (and start!48216 res!326363) b!530506))

(assert (= (and b!530506 res!326361) b!530507))

(assert (= (and b!530507 res!326360) b!530505))

(assert (= (and b!530505 res!326359) b!530503))

(assert (= (and b!530503 res!326362) b!530504))

(declare-fun m!511095 () Bool)

(assert (=> start!48216 m!511095))

(declare-fun m!511097 () Bool)

(assert (=> start!48216 m!511097))

(declare-fun m!511099 () Bool)

(assert (=> b!530504 m!511099))

(declare-fun m!511101 () Bool)

(assert (=> b!530503 m!511101))

(declare-fun m!511103 () Bool)

(assert (=> b!530507 m!511103))

(assert (=> b!530507 m!511103))

(declare-fun m!511105 () Bool)

(assert (=> b!530507 m!511105))

(declare-fun m!511107 () Bool)

(assert (=> b!530505 m!511107))

(check-sat (not b!530504) (not b!530505) (not b!530503) (not start!48216) (not b!530507))

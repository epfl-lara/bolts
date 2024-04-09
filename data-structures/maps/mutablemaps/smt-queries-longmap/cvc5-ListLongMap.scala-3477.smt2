; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48220 () Bool)

(assert start!48220)

(declare-fun b!530533 () Bool)

(declare-fun res!326393 () Bool)

(declare-fun e!309070 () Bool)

(assert (=> b!530533 (=> (not res!326393) (not e!309070))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530533 (= res!326393 (validKeyInArray!0 k!1998))))

(declare-fun b!530534 () Bool)

(declare-fun res!326389 () Bool)

(assert (=> b!530534 (=> (not res!326389) (not e!309070))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33601 0))(
  ( (array!33602 (arr!16143 (Array (_ BitVec 32) (_ BitVec 64))) (size!16507 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33601)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530534 (= res!326389 (and (= (size!16507 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16507 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16507 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!326391 () Bool)

(assert (=> start!48220 (=> (not res!326391) (not e!309070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48220 (= res!326391 (validMask!0 mask!3216))))

(assert (=> start!48220 e!309070))

(assert (=> start!48220 true))

(declare-fun array_inv!11917 (array!33601) Bool)

(assert (=> start!48220 (array_inv!11917 a!3154)))

(declare-fun b!530535 () Bool)

(assert (=> b!530535 (= e!309070 false)))

(declare-datatypes ((SeekEntryResult!4608 0))(
  ( (MissingZero!4608 (index!20656 (_ BitVec 32))) (Found!4608 (index!20657 (_ BitVec 32))) (Intermediate!4608 (undefined!5420 Bool) (index!20658 (_ BitVec 32)) (x!49673 (_ BitVec 32))) (Undefined!4608) (MissingVacant!4608 (index!20659 (_ BitVec 32))) )
))
(declare-fun lt!244748 () SeekEntryResult!4608)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33601 (_ BitVec 32)) SeekEntryResult!4608)

(assert (=> b!530535 (= lt!244748 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530536 () Bool)

(declare-fun res!326392 () Bool)

(assert (=> b!530536 (=> (not res!326392) (not e!309070))))

(declare-fun arrayContainsKey!0 (array!33601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530536 (= res!326392 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530537 () Bool)

(declare-fun res!326390 () Bool)

(assert (=> b!530537 (=> (not res!326390) (not e!309070))))

(assert (=> b!530537 (= res!326390 (validKeyInArray!0 (select (arr!16143 a!3154) j!147)))))

(assert (= (and start!48220 res!326391) b!530534))

(assert (= (and b!530534 res!326389) b!530537))

(assert (= (and b!530537 res!326390) b!530533))

(assert (= (and b!530533 res!326393) b!530536))

(assert (= (and b!530536 res!326392) b!530535))

(declare-fun m!511123 () Bool)

(assert (=> b!530533 m!511123))

(declare-fun m!511125 () Bool)

(assert (=> start!48220 m!511125))

(declare-fun m!511127 () Bool)

(assert (=> start!48220 m!511127))

(declare-fun m!511129 () Bool)

(assert (=> b!530537 m!511129))

(assert (=> b!530537 m!511129))

(declare-fun m!511131 () Bool)

(assert (=> b!530537 m!511131))

(declare-fun m!511133 () Bool)

(assert (=> b!530536 m!511133))

(declare-fun m!511135 () Bool)

(assert (=> b!530535 m!511135))

(push 1)

(assert (not b!530535))

(assert (not b!530536))

(assert (not b!530533))

(assert (not start!48220))

(assert (not b!530537))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


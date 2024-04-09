; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48400 () Bool)

(assert start!48400)

(declare-fun b!531454 () Bool)

(declare-fun e!309563 () Bool)

(declare-fun e!309564 () Bool)

(assert (=> b!531454 (= e!309563 e!309564)))

(declare-fun res!327099 () Bool)

(assert (=> b!531454 (=> (not res!327099) (not e!309564))))

(declare-datatypes ((SeekEntryResult!4635 0))(
  ( (MissingZero!4635 (index!20764 (_ BitVec 32))) (Found!4635 (index!20765 (_ BitVec 32))) (Intermediate!4635 (undefined!5447 Bool) (index!20766 (_ BitVec 32)) (x!49772 (_ BitVec 32))) (Undefined!4635) (MissingVacant!4635 (index!20767 (_ BitVec 32))) )
))
(declare-fun lt!245012 () SeekEntryResult!4635)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531454 (= res!327099 (or (= lt!245012 (MissingZero!4635 i!1153)) (= lt!245012 (MissingVacant!4635 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33664 0))(
  ( (array!33665 (arr!16170 (Array (_ BitVec 32) (_ BitVec 64))) (size!16534 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33664)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33664 (_ BitVec 32)) SeekEntryResult!4635)

(assert (=> b!531454 (= lt!245012 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!327098 () Bool)

(assert (=> start!48400 (=> (not res!327098) (not e!309563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48400 (= res!327098 (validMask!0 mask!3216))))

(assert (=> start!48400 e!309563))

(assert (=> start!48400 true))

(declare-fun array_inv!11944 (array!33664) Bool)

(assert (=> start!48400 (array_inv!11944 a!3154)))

(declare-fun b!531455 () Bool)

(declare-fun res!327097 () Bool)

(assert (=> b!531455 (=> (not res!327097) (not e!309563))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531455 (= res!327097 (validKeyInArray!0 (select (arr!16170 a!3154) j!147)))))

(declare-fun b!531456 () Bool)

(declare-fun res!327100 () Bool)

(assert (=> b!531456 (=> (not res!327100) (not e!309563))))

(assert (=> b!531456 (= res!327100 (validKeyInArray!0 k!1998))))

(declare-fun b!531457 () Bool)

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!531457 (= e!309564 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16534 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16534 a!3154)) (= (select (arr!16170 a!3154) resIndex!32) (select (arr!16170 a!3154) j!147)) (bvslt mask!3216 #b00000000000000000000000000000000)))))

(declare-fun b!531458 () Bool)

(declare-fun res!327095 () Bool)

(assert (=> b!531458 (=> (not res!327095) (not e!309564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33664 (_ BitVec 32)) Bool)

(assert (=> b!531458 (= res!327095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531459 () Bool)

(declare-fun res!327101 () Bool)

(assert (=> b!531459 (=> (not res!327101) (not e!309563))))

(declare-fun arrayContainsKey!0 (array!33664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531459 (= res!327101 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531460 () Bool)

(declare-fun res!327096 () Bool)

(assert (=> b!531460 (=> (not res!327096) (not e!309564))))

(declare-datatypes ((List!10342 0))(
  ( (Nil!10339) (Cons!10338 (h!11278 (_ BitVec 64)) (t!16578 List!10342)) )
))
(declare-fun arrayNoDuplicates!0 (array!33664 (_ BitVec 32) List!10342) Bool)

(assert (=> b!531460 (= res!327096 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10339))))

(declare-fun b!531461 () Bool)

(declare-fun res!327094 () Bool)

(assert (=> b!531461 (=> (not res!327094) (not e!309563))))

(assert (=> b!531461 (= res!327094 (and (= (size!16534 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16534 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16534 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48400 res!327098) b!531461))

(assert (= (and b!531461 res!327094) b!531455))

(assert (= (and b!531455 res!327097) b!531456))

(assert (= (and b!531456 res!327100) b!531459))

(assert (= (and b!531459 res!327101) b!531454))

(assert (= (and b!531454 res!327099) b!531458))

(assert (= (and b!531458 res!327095) b!531460))

(assert (= (and b!531460 res!327096) b!531457))

(declare-fun m!511867 () Bool)

(assert (=> b!531456 m!511867))

(declare-fun m!511869 () Bool)

(assert (=> start!48400 m!511869))

(declare-fun m!511871 () Bool)

(assert (=> start!48400 m!511871))

(declare-fun m!511873 () Bool)

(assert (=> b!531455 m!511873))

(assert (=> b!531455 m!511873))

(declare-fun m!511875 () Bool)

(assert (=> b!531455 m!511875))

(declare-fun m!511877 () Bool)

(assert (=> b!531454 m!511877))

(declare-fun m!511879 () Bool)

(assert (=> b!531460 m!511879))

(declare-fun m!511881 () Bool)

(assert (=> b!531459 m!511881))

(declare-fun m!511883 () Bool)

(assert (=> b!531457 m!511883))

(assert (=> b!531457 m!511873))

(declare-fun m!511885 () Bool)

(assert (=> b!531458 m!511885))

(push 1)

(assert (not b!531460))

(assert (not b!531455))

(assert (not start!48400))

(assert (not b!531459))

(assert (not b!531456))

(assert (not b!531454))

(assert (not b!531458))

(check-sat)

(pop 1)

(push 1)

(check-sat)


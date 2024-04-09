; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48218 () Bool)

(assert start!48218)

(declare-fun res!326374 () Bool)

(declare-fun e!309064 () Bool)

(assert (=> start!48218 (=> (not res!326374) (not e!309064))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48218 (= res!326374 (validMask!0 mask!3216))))

(assert (=> start!48218 e!309064))

(assert (=> start!48218 true))

(declare-datatypes ((array!33599 0))(
  ( (array!33600 (arr!16142 (Array (_ BitVec 32) (_ BitVec 64))) (size!16506 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33599)

(declare-fun array_inv!11916 (array!33599) Bool)

(assert (=> start!48218 (array_inv!11916 a!3154)))

(declare-fun b!530518 () Bool)

(declare-fun res!326377 () Bool)

(assert (=> b!530518 (=> (not res!326377) (not e!309064))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530518 (= res!326377 (validKeyInArray!0 (select (arr!16142 a!3154) j!147)))))

(declare-fun b!530519 () Bool)

(assert (=> b!530519 (= e!309064 false)))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4607 0))(
  ( (MissingZero!4607 (index!20652 (_ BitVec 32))) (Found!4607 (index!20653 (_ BitVec 32))) (Intermediate!4607 (undefined!5419 Bool) (index!20654 (_ BitVec 32)) (x!49664 (_ BitVec 32))) (Undefined!4607) (MissingVacant!4607 (index!20655 (_ BitVec 32))) )
))
(declare-fun lt!244745 () SeekEntryResult!4607)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33599 (_ BitVec 32)) SeekEntryResult!4607)

(assert (=> b!530519 (= lt!244745 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530520 () Bool)

(declare-fun res!326378 () Bool)

(assert (=> b!530520 (=> (not res!326378) (not e!309064))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530520 (= res!326378 (and (= (size!16506 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16506 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16506 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530521 () Bool)

(declare-fun res!326376 () Bool)

(assert (=> b!530521 (=> (not res!326376) (not e!309064))))

(declare-fun arrayContainsKey!0 (array!33599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530521 (= res!326376 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530522 () Bool)

(declare-fun res!326375 () Bool)

(assert (=> b!530522 (=> (not res!326375) (not e!309064))))

(assert (=> b!530522 (= res!326375 (validKeyInArray!0 k!1998))))

(assert (= (and start!48218 res!326374) b!530520))

(assert (= (and b!530520 res!326378) b!530518))

(assert (= (and b!530518 res!326377) b!530522))

(assert (= (and b!530522 res!326375) b!530521))

(assert (= (and b!530521 res!326376) b!530519))

(declare-fun m!511109 () Bool)

(assert (=> start!48218 m!511109))

(declare-fun m!511111 () Bool)

(assert (=> start!48218 m!511111))

(declare-fun m!511113 () Bool)

(assert (=> b!530518 m!511113))

(assert (=> b!530518 m!511113))

(declare-fun m!511115 () Bool)

(assert (=> b!530518 m!511115))

(declare-fun m!511117 () Bool)

(assert (=> b!530522 m!511117))

(declare-fun m!511119 () Bool)

(assert (=> b!530519 m!511119))

(declare-fun m!511121 () Bool)

(assert (=> b!530521 m!511121))

(push 1)

(assert (not b!530518))

(assert (not b!530522))

(assert (not start!48218))

(assert (not b!530519))

(assert (not b!530521))

(check-sat)

(pop 1)


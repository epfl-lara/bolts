; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131086 () Bool)

(assert start!131086)

(declare-fun res!1054773 () Bool)

(declare-fun e!855680 () Bool)

(assert (=> start!131086 (=> (not res!1054773) (not e!855680))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131086 (= res!1054773 (validMask!0 mask!2480))))

(assert (=> start!131086 e!855680))

(assert (=> start!131086 true))

(declare-datatypes ((array!102111 0))(
  ( (array!102112 (arr!49267 (Array (_ BitVec 32) (_ BitVec 64))) (size!49818 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102111)

(declare-fun array_inv!38212 (array!102111) Bool)

(assert (=> start!131086 (array_inv!38212 a!2792)))

(declare-fun b!1537546 () Bool)

(assert (=> b!1537546 (= e!855680 false)))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13416 0))(
  ( (MissingZero!13416 (index!56058 (_ BitVec 32))) (Found!13416 (index!56059 (_ BitVec 32))) (Intermediate!13416 (undefined!14228 Bool) (index!56060 (_ BitVec 32)) (x!137805 (_ BitVec 32))) (Undefined!13416) (MissingVacant!13416 (index!56061 (_ BitVec 32))) )
))
(declare-fun lt!664690 () SeekEntryResult!13416)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102111 (_ BitVec 32)) SeekEntryResult!13416)

(assert (=> b!1537546 (= lt!664690 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49267 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537547 () Bool)

(declare-fun res!1054771 () Bool)

(assert (=> b!1537547 (=> (not res!1054771) (not e!855680))))

(assert (=> b!1537547 (= res!1054771 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49818 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49818 a!2792)) (= (select (arr!49267 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537548 () Bool)

(declare-fun res!1054772 () Bool)

(assert (=> b!1537548 (=> (not res!1054772) (not e!855680))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537548 (= res!1054772 (and (= (size!49818 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49818 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49818 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537549 () Bool)

(declare-fun res!1054774 () Bool)

(assert (=> b!1537549 (=> (not res!1054774) (not e!855680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537549 (= res!1054774 (validKeyInArray!0 (select (arr!49267 a!2792) i!951)))))

(declare-fun b!1537550 () Bool)

(declare-fun res!1054770 () Bool)

(assert (=> b!1537550 (=> (not res!1054770) (not e!855680))))

(assert (=> b!1537550 (= res!1054770 (validKeyInArray!0 (select (arr!49267 a!2792) j!64)))))

(declare-fun b!1537551 () Bool)

(declare-fun res!1054776 () Bool)

(assert (=> b!1537551 (=> (not res!1054776) (not e!855680))))

(declare-datatypes ((List!35921 0))(
  ( (Nil!35918) (Cons!35917 (h!37363 (_ BitVec 64)) (t!50622 List!35921)) )
))
(declare-fun arrayNoDuplicates!0 (array!102111 (_ BitVec 32) List!35921) Bool)

(assert (=> b!1537551 (= res!1054776 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35918))))

(declare-fun b!1537552 () Bool)

(declare-fun res!1054775 () Bool)

(assert (=> b!1537552 (=> (not res!1054775) (not e!855680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102111 (_ BitVec 32)) Bool)

(assert (=> b!1537552 (= res!1054775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131086 res!1054773) b!1537548))

(assert (= (and b!1537548 res!1054772) b!1537549))

(assert (= (and b!1537549 res!1054774) b!1537550))

(assert (= (and b!1537550 res!1054770) b!1537552))

(assert (= (and b!1537552 res!1054775) b!1537551))

(assert (= (and b!1537551 res!1054776) b!1537547))

(assert (= (and b!1537547 res!1054771) b!1537546))

(declare-fun m!1420113 () Bool)

(assert (=> b!1537546 m!1420113))

(assert (=> b!1537546 m!1420113))

(declare-fun m!1420115 () Bool)

(assert (=> b!1537546 m!1420115))

(assert (=> b!1537550 m!1420113))

(assert (=> b!1537550 m!1420113))

(declare-fun m!1420117 () Bool)

(assert (=> b!1537550 m!1420117))

(declare-fun m!1420119 () Bool)

(assert (=> b!1537551 m!1420119))

(declare-fun m!1420121 () Bool)

(assert (=> b!1537549 m!1420121))

(assert (=> b!1537549 m!1420121))

(declare-fun m!1420123 () Bool)

(assert (=> b!1537549 m!1420123))

(declare-fun m!1420125 () Bool)

(assert (=> b!1537547 m!1420125))

(declare-fun m!1420127 () Bool)

(assert (=> b!1537552 m!1420127))

(declare-fun m!1420129 () Bool)

(assert (=> start!131086 m!1420129))

(declare-fun m!1420131 () Bool)

(assert (=> start!131086 m!1420131))

(push 1)

(assert (not b!1537551))

(assert (not b!1537550))

(assert (not b!1537552))

(assert (not b!1537549))

(assert (not b!1537546))

(assert (not start!131086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


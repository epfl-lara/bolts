; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131110 () Bool)

(assert start!131110)

(declare-fun b!1537798 () Bool)

(declare-fun res!1055024 () Bool)

(declare-fun e!855752 () Bool)

(assert (=> b!1537798 (=> (not res!1055024) (not e!855752))))

(declare-datatypes ((array!102135 0))(
  ( (array!102136 (arr!49279 (Array (_ BitVec 32) (_ BitVec 64))) (size!49830 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102135)

(declare-datatypes ((List!35933 0))(
  ( (Nil!35930) (Cons!35929 (h!37375 (_ BitVec 64)) (t!50634 List!35933)) )
))
(declare-fun arrayNoDuplicates!0 (array!102135 (_ BitVec 32) List!35933) Bool)

(assert (=> b!1537798 (= res!1055024 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35930))))

(declare-fun b!1537799 () Bool)

(declare-fun res!1055028 () Bool)

(assert (=> b!1537799 (=> (not res!1055028) (not e!855752))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537799 (= res!1055028 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49830 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49830 a!2792)) (= (select (arr!49279 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537800 () Bool)

(assert (=> b!1537800 (= e!855752 false)))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13428 0))(
  ( (MissingZero!13428 (index!56106 (_ BitVec 32))) (Found!13428 (index!56107 (_ BitVec 32))) (Intermediate!13428 (undefined!14240 Bool) (index!56108 (_ BitVec 32)) (x!137849 (_ BitVec 32))) (Undefined!13428) (MissingVacant!13428 (index!56109 (_ BitVec 32))) )
))
(declare-fun lt!664726 () SeekEntryResult!13428)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102135 (_ BitVec 32)) SeekEntryResult!13428)

(assert (=> b!1537800 (= lt!664726 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49279 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537801 () Bool)

(declare-fun res!1055022 () Bool)

(assert (=> b!1537801 (=> (not res!1055022) (not e!855752))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537801 (= res!1055022 (validKeyInArray!0 (select (arr!49279 a!2792) i!951)))))

(declare-fun b!1537803 () Bool)

(declare-fun res!1055023 () Bool)

(assert (=> b!1537803 (=> (not res!1055023) (not e!855752))))

(assert (=> b!1537803 (= res!1055023 (validKeyInArray!0 (select (arr!49279 a!2792) j!64)))))

(declare-fun b!1537804 () Bool)

(declare-fun res!1055026 () Bool)

(assert (=> b!1537804 (=> (not res!1055026) (not e!855752))))

(assert (=> b!1537804 (= res!1055026 (and (= (size!49830 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49830 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49830 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537802 () Bool)

(declare-fun res!1055025 () Bool)

(assert (=> b!1537802 (=> (not res!1055025) (not e!855752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102135 (_ BitVec 32)) Bool)

(assert (=> b!1537802 (= res!1055025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1055027 () Bool)

(assert (=> start!131110 (=> (not res!1055027) (not e!855752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131110 (= res!1055027 (validMask!0 mask!2480))))

(assert (=> start!131110 e!855752))

(assert (=> start!131110 true))

(declare-fun array_inv!38224 (array!102135) Bool)

(assert (=> start!131110 (array_inv!38224 a!2792)))

(assert (= (and start!131110 res!1055027) b!1537804))

(assert (= (and b!1537804 res!1055026) b!1537801))

(assert (= (and b!1537801 res!1055022) b!1537803))

(assert (= (and b!1537803 res!1055023) b!1537802))

(assert (= (and b!1537802 res!1055025) b!1537798))

(assert (= (and b!1537798 res!1055024) b!1537799))

(assert (= (and b!1537799 res!1055028) b!1537800))

(declare-fun m!1420353 () Bool)

(assert (=> b!1537803 m!1420353))

(assert (=> b!1537803 m!1420353))

(declare-fun m!1420355 () Bool)

(assert (=> b!1537803 m!1420355))

(declare-fun m!1420357 () Bool)

(assert (=> b!1537801 m!1420357))

(assert (=> b!1537801 m!1420357))

(declare-fun m!1420359 () Bool)

(assert (=> b!1537801 m!1420359))

(declare-fun m!1420361 () Bool)

(assert (=> start!131110 m!1420361))

(declare-fun m!1420363 () Bool)

(assert (=> start!131110 m!1420363))

(declare-fun m!1420365 () Bool)

(assert (=> b!1537798 m!1420365))

(declare-fun m!1420367 () Bool)

(assert (=> b!1537802 m!1420367))

(assert (=> b!1537800 m!1420353))

(assert (=> b!1537800 m!1420353))

(declare-fun m!1420369 () Bool)

(assert (=> b!1537800 m!1420369))

(declare-fun m!1420371 () Bool)

(assert (=> b!1537799 m!1420371))

(push 1)

(assert (not b!1537801))

(assert (not b!1537798))

(assert (not b!1537803))

(assert (not b!1537802))

(assert (not b!1537800))

(assert (not start!131110))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131176 () Bool)

(assert start!131176)

(declare-fun b!1538315 () Bool)

(declare-fun res!1055433 () Bool)

(declare-fun e!855950 () Bool)

(assert (=> b!1538315 (=> (not res!1055433) (not e!855950))))

(declare-datatypes ((array!102168 0))(
  ( (array!102169 (arr!49294 (Array (_ BitVec 32) (_ BitVec 64))) (size!49845 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102168)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538315 (= res!1055433 (validKeyInArray!0 (select (arr!49294 a!2792) i!951)))))

(declare-fun b!1538316 () Bool)

(declare-fun res!1055432 () Bool)

(assert (=> b!1538316 (=> (not res!1055432) (not e!855950))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1538316 (= res!1055432 (validKeyInArray!0 (select (arr!49294 a!2792) j!64)))))

(declare-fun b!1538317 () Bool)

(declare-fun res!1055435 () Bool)

(assert (=> b!1538317 (=> (not res!1055435) (not e!855950))))

(declare-datatypes ((List!35948 0))(
  ( (Nil!35945) (Cons!35944 (h!37390 (_ BitVec 64)) (t!50649 List!35948)) )
))
(declare-fun arrayNoDuplicates!0 (array!102168 (_ BitVec 32) List!35948) Bool)

(assert (=> b!1538317 (= res!1055435 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35945))))

(declare-fun b!1538318 () Bool)

(declare-fun res!1055431 () Bool)

(assert (=> b!1538318 (=> (not res!1055431) (not e!855950))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102168 (_ BitVec 32)) Bool)

(assert (=> b!1538318 (= res!1055431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538319 () Bool)

(declare-fun res!1055436 () Bool)

(assert (=> b!1538319 (=> (not res!1055436) (not e!855950))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538319 (= res!1055436 (not (= (select (arr!49294 a!2792) index!463) (select (arr!49294 a!2792) j!64))))))

(declare-fun res!1055437 () Bool)

(assert (=> start!131176 (=> (not res!1055437) (not e!855950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131176 (= res!1055437 (validMask!0 mask!2480))))

(assert (=> start!131176 e!855950))

(assert (=> start!131176 true))

(declare-fun array_inv!38239 (array!102168) Bool)

(assert (=> start!131176 (array_inv!38239 a!2792)))

(declare-fun b!1538320 () Bool)

(assert (=> b!1538320 (= e!855950 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664822 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538320 (= lt!664822 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538321 () Bool)

(declare-fun res!1055438 () Bool)

(assert (=> b!1538321 (=> (not res!1055438) (not e!855950))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538321 (= res!1055438 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49845 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49845 a!2792)) (= (select (arr!49294 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538322 () Bool)

(declare-fun res!1055434 () Bool)

(assert (=> b!1538322 (=> (not res!1055434) (not e!855950))))

(assert (=> b!1538322 (= res!1055434 (and (= (size!49845 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49845 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49845 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538323 () Bool)

(declare-fun res!1055439 () Bool)

(assert (=> b!1538323 (=> (not res!1055439) (not e!855950))))

(declare-datatypes ((SeekEntryResult!13443 0))(
  ( (MissingZero!13443 (index!56166 (_ BitVec 32))) (Found!13443 (index!56167 (_ BitVec 32))) (Intermediate!13443 (undefined!14255 Bool) (index!56168 (_ BitVec 32)) (x!137907 (_ BitVec 32))) (Undefined!13443) (MissingVacant!13443 (index!56169 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102168 (_ BitVec 32)) SeekEntryResult!13443)

(assert (=> b!1538323 (= res!1055439 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49294 a!2792) j!64) a!2792 mask!2480) (Found!13443 j!64)))))

(assert (= (and start!131176 res!1055437) b!1538322))

(assert (= (and b!1538322 res!1055434) b!1538315))

(assert (= (and b!1538315 res!1055433) b!1538316))

(assert (= (and b!1538316 res!1055432) b!1538318))

(assert (= (and b!1538318 res!1055431) b!1538317))

(assert (= (and b!1538317 res!1055435) b!1538321))

(assert (= (and b!1538321 res!1055438) b!1538323))

(assert (= (and b!1538323 res!1055439) b!1538319))

(assert (= (and b!1538319 res!1055436) b!1538320))

(declare-fun m!1420797 () Bool)

(assert (=> b!1538321 m!1420797))

(declare-fun m!1420799 () Bool)

(assert (=> start!131176 m!1420799))

(declare-fun m!1420801 () Bool)

(assert (=> start!131176 m!1420801))

(declare-fun m!1420803 () Bool)

(assert (=> b!1538323 m!1420803))

(assert (=> b!1538323 m!1420803))

(declare-fun m!1420805 () Bool)

(assert (=> b!1538323 m!1420805))

(declare-fun m!1420807 () Bool)

(assert (=> b!1538317 m!1420807))

(declare-fun m!1420809 () Bool)

(assert (=> b!1538318 m!1420809))

(assert (=> b!1538316 m!1420803))

(assert (=> b!1538316 m!1420803))

(declare-fun m!1420811 () Bool)

(assert (=> b!1538316 m!1420811))

(declare-fun m!1420813 () Bool)

(assert (=> b!1538320 m!1420813))

(declare-fun m!1420815 () Bool)

(assert (=> b!1538319 m!1420815))

(assert (=> b!1538319 m!1420803))

(declare-fun m!1420817 () Bool)

(assert (=> b!1538315 m!1420817))

(assert (=> b!1538315 m!1420817))

(declare-fun m!1420819 () Bool)

(assert (=> b!1538315 m!1420819))

(push 1)

(assert (not b!1538323))

(assert (not b!1538320))

(assert (not b!1538316))

(assert (not b!1538317))

(assert (not start!131176))

(assert (not b!1538315))

(assert (not b!1538318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


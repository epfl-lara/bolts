; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131182 () Bool)

(assert start!131182)

(declare-fun b!1538396 () Bool)

(declare-fun res!1055515 () Bool)

(declare-fun e!855968 () Bool)

(assert (=> b!1538396 (=> (not res!1055515) (not e!855968))))

(declare-datatypes ((array!102174 0))(
  ( (array!102175 (arr!49297 (Array (_ BitVec 32) (_ BitVec 64))) (size!49848 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102174)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538396 (= res!1055515 (and (= (size!49848 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49848 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49848 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538398 () Bool)

(declare-fun res!1055517 () Bool)

(assert (=> b!1538398 (=> (not res!1055517) (not e!855968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102174 (_ BitVec 32)) Bool)

(assert (=> b!1538398 (= res!1055517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538399 () Bool)

(declare-fun res!1055513 () Bool)

(assert (=> b!1538399 (=> (not res!1055513) (not e!855968))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538399 (= res!1055513 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49848 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49848 a!2792)) (= (select (arr!49297 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538400 () Bool)

(declare-fun res!1055514 () Bool)

(assert (=> b!1538400 (=> (not res!1055514) (not e!855968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538400 (= res!1055514 (validKeyInArray!0 (select (arr!49297 a!2792) i!951)))))

(declare-fun b!1538401 () Bool)

(declare-fun res!1055516 () Bool)

(assert (=> b!1538401 (=> (not res!1055516) (not e!855968))))

(declare-datatypes ((SeekEntryResult!13446 0))(
  ( (MissingZero!13446 (index!56178 (_ BitVec 32))) (Found!13446 (index!56179 (_ BitVec 32))) (Intermediate!13446 (undefined!14258 Bool) (index!56180 (_ BitVec 32)) (x!137918 (_ BitVec 32))) (Undefined!13446) (MissingVacant!13446 (index!56181 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102174 (_ BitVec 32)) SeekEntryResult!13446)

(assert (=> b!1538401 (= res!1055516 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49297 a!2792) j!64) a!2792 mask!2480) (Found!13446 j!64)))))

(declare-fun b!1538402 () Bool)

(declare-fun res!1055512 () Bool)

(assert (=> b!1538402 (=> (not res!1055512) (not e!855968))))

(declare-datatypes ((List!35951 0))(
  ( (Nil!35948) (Cons!35947 (h!37393 (_ BitVec 64)) (t!50652 List!35951)) )
))
(declare-fun arrayNoDuplicates!0 (array!102174 (_ BitVec 32) List!35951) Bool)

(assert (=> b!1538402 (= res!1055512 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35948))))

(declare-fun b!1538403 () Bool)

(assert (=> b!1538403 (= e!855968 false)))

(declare-fun lt!664831 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538403 (= lt!664831 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538404 () Bool)

(declare-fun res!1055520 () Bool)

(assert (=> b!1538404 (=> (not res!1055520) (not e!855968))))

(assert (=> b!1538404 (= res!1055520 (validKeyInArray!0 (select (arr!49297 a!2792) j!64)))))

(declare-fun b!1538397 () Bool)

(declare-fun res!1055518 () Bool)

(assert (=> b!1538397 (=> (not res!1055518) (not e!855968))))

(assert (=> b!1538397 (= res!1055518 (not (= (select (arr!49297 a!2792) index!463) (select (arr!49297 a!2792) j!64))))))

(declare-fun res!1055519 () Bool)

(assert (=> start!131182 (=> (not res!1055519) (not e!855968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131182 (= res!1055519 (validMask!0 mask!2480))))

(assert (=> start!131182 e!855968))

(assert (=> start!131182 true))

(declare-fun array_inv!38242 (array!102174) Bool)

(assert (=> start!131182 (array_inv!38242 a!2792)))

(assert (= (and start!131182 res!1055519) b!1538396))

(assert (= (and b!1538396 res!1055515) b!1538400))

(assert (= (and b!1538400 res!1055514) b!1538404))

(assert (= (and b!1538404 res!1055520) b!1538398))

(assert (= (and b!1538398 res!1055517) b!1538402))

(assert (= (and b!1538402 res!1055512) b!1538399))

(assert (= (and b!1538399 res!1055513) b!1538401))

(assert (= (and b!1538401 res!1055516) b!1538397))

(assert (= (and b!1538397 res!1055518) b!1538403))

(declare-fun m!1420869 () Bool)

(assert (=> b!1538399 m!1420869))

(declare-fun m!1420871 () Bool)

(assert (=> b!1538401 m!1420871))

(assert (=> b!1538401 m!1420871))

(declare-fun m!1420873 () Bool)

(assert (=> b!1538401 m!1420873))

(declare-fun m!1420875 () Bool)

(assert (=> b!1538402 m!1420875))

(declare-fun m!1420877 () Bool)

(assert (=> b!1538398 m!1420877))

(declare-fun m!1420879 () Bool)

(assert (=> b!1538403 m!1420879))

(assert (=> b!1538404 m!1420871))

(assert (=> b!1538404 m!1420871))

(declare-fun m!1420881 () Bool)

(assert (=> b!1538404 m!1420881))

(declare-fun m!1420883 () Bool)

(assert (=> b!1538400 m!1420883))

(assert (=> b!1538400 m!1420883))

(declare-fun m!1420885 () Bool)

(assert (=> b!1538400 m!1420885))

(declare-fun m!1420887 () Bool)

(assert (=> start!131182 m!1420887))

(declare-fun m!1420889 () Bool)

(assert (=> start!131182 m!1420889))

(declare-fun m!1420891 () Bool)

(assert (=> b!1538397 m!1420891))

(assert (=> b!1538397 m!1420871))

(push 1)

(assert (not b!1538401))

(assert (not b!1538403))

(assert (not b!1538402))

(assert (not b!1538400))

(assert (not b!1538404))

(assert (not b!1538398))

(assert (not start!131182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


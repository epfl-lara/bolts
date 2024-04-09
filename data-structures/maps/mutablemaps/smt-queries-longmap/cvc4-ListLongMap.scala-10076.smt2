; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118634 () Bool)

(assert start!118634)

(declare-fun b!1386359 () Bool)

(declare-fun res!927669 () Bool)

(declare-fun e!785382 () Bool)

(assert (=> b!1386359 (=> (not res!927669) (not e!785382))))

(declare-datatypes ((array!94828 0))(
  ( (array!94829 (arr!45786 (Array (_ BitVec 32) (_ BitVec 64))) (size!46337 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94828)

(declare-datatypes ((List!32494 0))(
  ( (Nil!32491) (Cons!32490 (h!33699 (_ BitVec 64)) (t!47195 List!32494)) )
))
(declare-fun arrayNoDuplicates!0 (array!94828 (_ BitVec 32) List!32494) Bool)

(assert (=> b!1386359 (= res!927669 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32491))))

(declare-fun b!1386360 () Bool)

(declare-fun res!927670 () Bool)

(assert (=> b!1386360 (=> (not res!927670) (not e!785382))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386360 (= res!927670 (validKeyInArray!0 (select (arr!45786 a!2938) i!1065)))))

(declare-fun b!1386361 () Bool)

(declare-datatypes ((Unit!46252 0))(
  ( (Unit!46253) )
))
(declare-fun e!785383 () Unit!46252)

(declare-fun lt!609405 () Unit!46252)

(assert (=> b!1386361 (= e!785383 lt!609405)))

(declare-fun lt!609404 () Unit!46252)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46252)

(assert (=> b!1386361 (= lt!609404 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10151 0))(
  ( (MissingZero!10151 (index!42974 (_ BitVec 32))) (Found!10151 (index!42975 (_ BitVec 32))) (Intermediate!10151 (undefined!10963 Bool) (index!42976 (_ BitVec 32)) (x!124595 (_ BitVec 32))) (Undefined!10151) (MissingVacant!10151 (index!42977 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94828 (_ BitVec 32)) SeekEntryResult!10151)

(assert (=> b!1386361 (= (seekEntryOrOpen!0 (select (arr!45786 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45786 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94829 (store (arr!45786 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46337 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46252)

(assert (=> b!1386361 (= lt!609405 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94828 (_ BitVec 32)) Bool)

(assert (=> b!1386361 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386362 () Bool)

(declare-fun res!927672 () Bool)

(assert (=> b!1386362 (=> (not res!927672) (not e!785382))))

(assert (=> b!1386362 (= res!927672 (and (not (= (select (arr!45786 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45786 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386363 () Bool)

(declare-fun Unit!46254 () Unit!46252)

(assert (=> b!1386363 (= e!785383 Unit!46254)))

(declare-fun b!1386365 () Bool)

(declare-fun res!927671 () Bool)

(assert (=> b!1386365 (=> (not res!927671) (not e!785382))))

(assert (=> b!1386365 (= res!927671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386366 () Bool)

(assert (=> b!1386366 (= e!785382 false)))

(declare-fun lt!609406 () Unit!46252)

(assert (=> b!1386366 (= lt!609406 e!785383)))

(declare-fun c!128789 () Bool)

(declare-fun e!785384 () Bool)

(assert (=> b!1386366 (= c!128789 e!785384)))

(declare-fun res!927668 () Bool)

(assert (=> b!1386366 (=> (not res!927668) (not e!785384))))

(assert (=> b!1386366 (= res!927668 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386367 () Bool)

(assert (=> b!1386367 (= e!785384 (validKeyInArray!0 (select (arr!45786 a!2938) startIndex!16)))))

(declare-fun res!927667 () Bool)

(assert (=> start!118634 (=> (not res!927667) (not e!785382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118634 (= res!927667 (validMask!0 mask!2987))))

(assert (=> start!118634 e!785382))

(assert (=> start!118634 true))

(declare-fun array_inv!34731 (array!94828) Bool)

(assert (=> start!118634 (array_inv!34731 a!2938)))

(declare-fun b!1386364 () Bool)

(declare-fun res!927666 () Bool)

(assert (=> b!1386364 (=> (not res!927666) (not e!785382))))

(assert (=> b!1386364 (= res!927666 (and (= (size!46337 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46337 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46337 a!2938))))))

(assert (= (and start!118634 res!927667) b!1386364))

(assert (= (and b!1386364 res!927666) b!1386360))

(assert (= (and b!1386360 res!927670) b!1386359))

(assert (= (and b!1386359 res!927669) b!1386365))

(assert (= (and b!1386365 res!927671) b!1386362))

(assert (= (and b!1386362 res!927672) b!1386366))

(assert (= (and b!1386366 res!927668) b!1386367))

(assert (= (and b!1386366 c!128789) b!1386361))

(assert (= (and b!1386366 (not c!128789)) b!1386363))

(declare-fun m!1271783 () Bool)

(assert (=> b!1386361 m!1271783))

(declare-fun m!1271785 () Bool)

(assert (=> b!1386361 m!1271785))

(assert (=> b!1386361 m!1271785))

(declare-fun m!1271787 () Bool)

(assert (=> b!1386361 m!1271787))

(declare-fun m!1271789 () Bool)

(assert (=> b!1386361 m!1271789))

(declare-fun m!1271791 () Bool)

(assert (=> b!1386361 m!1271791))

(declare-fun m!1271793 () Bool)

(assert (=> b!1386361 m!1271793))

(declare-fun m!1271795 () Bool)

(assert (=> b!1386361 m!1271795))

(assert (=> b!1386361 m!1271793))

(declare-fun m!1271797 () Bool)

(assert (=> b!1386361 m!1271797))

(declare-fun m!1271799 () Bool)

(assert (=> b!1386365 m!1271799))

(declare-fun m!1271801 () Bool)

(assert (=> b!1386360 m!1271801))

(assert (=> b!1386360 m!1271801))

(declare-fun m!1271803 () Bool)

(assert (=> b!1386360 m!1271803))

(declare-fun m!1271805 () Bool)

(assert (=> b!1386359 m!1271805))

(declare-fun m!1271807 () Bool)

(assert (=> start!118634 m!1271807))

(declare-fun m!1271809 () Bool)

(assert (=> start!118634 m!1271809))

(assert (=> b!1386367 m!1271793))

(assert (=> b!1386367 m!1271793))

(declare-fun m!1271811 () Bool)

(assert (=> b!1386367 m!1271811))

(assert (=> b!1386362 m!1271801))

(push 1)

(assert (not start!118634))

(assert (not b!1386367))

(assert (not b!1386360))

(assert (not b!1386359))

(assert (not b!1386361))

(assert (not b!1386365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131194 () Bool)

(assert start!131194)

(declare-fun b!1538558 () Bool)

(declare-fun res!1055682 () Bool)

(declare-fun e!856004 () Bool)

(assert (=> b!1538558 (=> (not res!1055682) (not e!856004))))

(declare-datatypes ((array!102186 0))(
  ( (array!102187 (arr!49303 (Array (_ BitVec 32) (_ BitVec 64))) (size!49854 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102186)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102186 (_ BitVec 32)) Bool)

(assert (=> b!1538558 (= res!1055682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538559 () Bool)

(assert (=> b!1538559 (= e!856004 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664849 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538559 (= lt!664849 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538560 () Bool)

(declare-fun res!1055677 () Bool)

(assert (=> b!1538560 (=> (not res!1055677) (not e!856004))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538560 (= res!1055677 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49854 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49854 a!2792)) (= (select (arr!49303 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1055681 () Bool)

(assert (=> start!131194 (=> (not res!1055681) (not e!856004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131194 (= res!1055681 (validMask!0 mask!2480))))

(assert (=> start!131194 e!856004))

(assert (=> start!131194 true))

(declare-fun array_inv!38248 (array!102186) Bool)

(assert (=> start!131194 (array_inv!38248 a!2792)))

(declare-fun b!1538561 () Bool)

(declare-fun res!1055675 () Bool)

(assert (=> b!1538561 (=> (not res!1055675) (not e!856004))))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13452 0))(
  ( (MissingZero!13452 (index!56202 (_ BitVec 32))) (Found!13452 (index!56203 (_ BitVec 32))) (Intermediate!13452 (undefined!14264 Bool) (index!56204 (_ BitVec 32)) (x!137940 (_ BitVec 32))) (Undefined!13452) (MissingVacant!13452 (index!56205 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102186 (_ BitVec 32)) SeekEntryResult!13452)

(assert (=> b!1538561 (= res!1055675 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49303 a!2792) j!64) a!2792 mask!2480) (Found!13452 j!64)))))

(declare-fun b!1538562 () Bool)

(declare-fun res!1055676 () Bool)

(assert (=> b!1538562 (=> (not res!1055676) (not e!856004))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538562 (= res!1055676 (and (= (size!49854 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49854 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49854 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538563 () Bool)

(declare-fun res!1055674 () Bool)

(assert (=> b!1538563 (=> (not res!1055674) (not e!856004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538563 (= res!1055674 (validKeyInArray!0 (select (arr!49303 a!2792) j!64)))))

(declare-fun b!1538564 () Bool)

(declare-fun res!1055679 () Bool)

(assert (=> b!1538564 (=> (not res!1055679) (not e!856004))))

(assert (=> b!1538564 (= res!1055679 (not (= (select (arr!49303 a!2792) index!463) (select (arr!49303 a!2792) j!64))))))

(declare-fun b!1538565 () Bool)

(declare-fun res!1055678 () Bool)

(assert (=> b!1538565 (=> (not res!1055678) (not e!856004))))

(declare-datatypes ((List!35957 0))(
  ( (Nil!35954) (Cons!35953 (h!37399 (_ BitVec 64)) (t!50658 List!35957)) )
))
(declare-fun arrayNoDuplicates!0 (array!102186 (_ BitVec 32) List!35957) Bool)

(assert (=> b!1538565 (= res!1055678 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35954))))

(declare-fun b!1538566 () Bool)

(declare-fun res!1055680 () Bool)

(assert (=> b!1538566 (=> (not res!1055680) (not e!856004))))

(assert (=> b!1538566 (= res!1055680 (validKeyInArray!0 (select (arr!49303 a!2792) i!951)))))

(assert (= (and start!131194 res!1055681) b!1538562))

(assert (= (and b!1538562 res!1055676) b!1538566))

(assert (= (and b!1538566 res!1055680) b!1538563))

(assert (= (and b!1538563 res!1055674) b!1538558))

(assert (= (and b!1538558 res!1055682) b!1538565))

(assert (= (and b!1538565 res!1055678) b!1538560))

(assert (= (and b!1538560 res!1055677) b!1538561))

(assert (= (and b!1538561 res!1055675) b!1538564))

(assert (= (and b!1538564 res!1055679) b!1538559))

(declare-fun m!1421013 () Bool)

(assert (=> b!1538563 m!1421013))

(assert (=> b!1538563 m!1421013))

(declare-fun m!1421015 () Bool)

(assert (=> b!1538563 m!1421015))

(declare-fun m!1421017 () Bool)

(assert (=> b!1538565 m!1421017))

(declare-fun m!1421019 () Bool)

(assert (=> b!1538564 m!1421019))

(assert (=> b!1538564 m!1421013))

(declare-fun m!1421021 () Bool)

(assert (=> start!131194 m!1421021))

(declare-fun m!1421023 () Bool)

(assert (=> start!131194 m!1421023))

(declare-fun m!1421025 () Bool)

(assert (=> b!1538560 m!1421025))

(declare-fun m!1421027 () Bool)

(assert (=> b!1538559 m!1421027))

(assert (=> b!1538561 m!1421013))

(assert (=> b!1538561 m!1421013))

(declare-fun m!1421029 () Bool)

(assert (=> b!1538561 m!1421029))

(declare-fun m!1421031 () Bool)

(assert (=> b!1538566 m!1421031))

(assert (=> b!1538566 m!1421031))

(declare-fun m!1421033 () Bool)

(assert (=> b!1538566 m!1421033))

(declare-fun m!1421035 () Bool)

(assert (=> b!1538558 m!1421035))

(push 1)

(assert (not start!131194))

(assert (not b!1538558))

(assert (not b!1538565))

(assert (not b!1538559))

(assert (not b!1538563))

(assert (not b!1538561))

(assert (not b!1538566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


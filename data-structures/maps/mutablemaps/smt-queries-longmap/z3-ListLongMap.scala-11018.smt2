; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128988 () Bool)

(assert start!128988)

(declare-fun res!1031480 () Bool)

(declare-fun e!843869 () Bool)

(assert (=> start!128988 (=> (not res!1031480) (not e!843869))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128988 (= res!1031480 (validMask!0 mask!2512))))

(assert (=> start!128988 e!843869))

(assert (=> start!128988 true))

(declare-datatypes ((array!100757 0))(
  ( (array!100758 (arr!48611 (Array (_ BitVec 32) (_ BitVec 64))) (size!49162 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100757)

(declare-fun array_inv!37556 (array!100757) Bool)

(assert (=> start!128988 (array_inv!37556 a!2804)))

(declare-fun b!1511502 () Bool)

(declare-fun res!1031477 () Bool)

(declare-fun e!843870 () Bool)

(assert (=> b!1511502 (=> (not res!1031477) (not e!843870))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12803 0))(
  ( (MissingZero!12803 (index!53606 (_ BitVec 32))) (Found!12803 (index!53607 (_ BitVec 32))) (Intermediate!12803 (undefined!13615 Bool) (index!53608 (_ BitVec 32)) (x!135350 (_ BitVec 32))) (Undefined!12803) (MissingVacant!12803 (index!53609 (_ BitVec 32))) )
))
(declare-fun lt!655431 () SeekEntryResult!12803)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100757 (_ BitVec 32)) SeekEntryResult!12803)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511502 (= res!1031477 (= lt!655431 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48611 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48611 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100758 (store (arr!48611 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49162 a!2804)) mask!2512)))))

(declare-fun b!1511503 () Bool)

(declare-fun res!1031487 () Bool)

(assert (=> b!1511503 (=> (not res!1031487) (not e!843869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100757 (_ BitVec 32)) Bool)

(assert (=> b!1511503 (= res!1031487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511504 () Bool)

(declare-fun res!1031481 () Bool)

(assert (=> b!1511504 (=> (not res!1031481) (not e!843869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511504 (= res!1031481 (validKeyInArray!0 (select (arr!48611 a!2804) j!70)))))

(declare-fun b!1511505 () Bool)

(assert (=> b!1511505 (= e!843870 (not true))))

(declare-fun e!843872 () Bool)

(assert (=> b!1511505 e!843872))

(declare-fun res!1031482 () Bool)

(assert (=> b!1511505 (=> (not res!1031482) (not e!843872))))

(assert (=> b!1511505 (= res!1031482 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50430 0))(
  ( (Unit!50431) )
))
(declare-fun lt!655432 () Unit!50430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50430)

(assert (=> b!1511505 (= lt!655432 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511506 () Bool)

(declare-fun res!1031486 () Bool)

(assert (=> b!1511506 (=> (not res!1031486) (not e!843869))))

(declare-datatypes ((List!35274 0))(
  ( (Nil!35271) (Cons!35270 (h!36683 (_ BitVec 64)) (t!49975 List!35274)) )
))
(declare-fun arrayNoDuplicates!0 (array!100757 (_ BitVec 32) List!35274) Bool)

(assert (=> b!1511506 (= res!1031486 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35271))))

(declare-fun b!1511507 () Bool)

(declare-fun res!1031478 () Bool)

(assert (=> b!1511507 (=> (not res!1031478) (not e!843869))))

(assert (=> b!1511507 (= res!1031478 (and (= (size!49162 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49162 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49162 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511508 () Bool)

(declare-fun res!1031483 () Bool)

(assert (=> b!1511508 (=> (not res!1031483) (not e!843870))))

(declare-fun lt!655430 () SeekEntryResult!12803)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1511508 (= res!1031483 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48611 a!2804) j!70) a!2804 mask!2512) lt!655430))))

(declare-fun b!1511509 () Bool)

(declare-fun res!1031484 () Bool)

(assert (=> b!1511509 (=> (not res!1031484) (not e!843869))))

(assert (=> b!1511509 (= res!1031484 (validKeyInArray!0 (select (arr!48611 a!2804) i!961)))))

(declare-fun b!1511510 () Bool)

(declare-fun res!1031485 () Bool)

(assert (=> b!1511510 (=> (not res!1031485) (not e!843869))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511510 (= res!1031485 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49162 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49162 a!2804))))))

(declare-fun b!1511511 () Bool)

(assert (=> b!1511511 (= e!843869 e!843870)))

(declare-fun res!1031479 () Bool)

(assert (=> b!1511511 (=> (not res!1031479) (not e!843870))))

(assert (=> b!1511511 (= res!1031479 (= lt!655431 lt!655430))))

(assert (=> b!1511511 (= lt!655430 (Intermediate!12803 false resIndex!21 resX!21))))

(assert (=> b!1511511 (= lt!655431 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48611 a!2804) j!70) mask!2512) (select (arr!48611 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511512 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100757 (_ BitVec 32)) SeekEntryResult!12803)

(assert (=> b!1511512 (= e!843872 (= (seekEntry!0 (select (arr!48611 a!2804) j!70) a!2804 mask!2512) (Found!12803 j!70)))))

(assert (= (and start!128988 res!1031480) b!1511507))

(assert (= (and b!1511507 res!1031478) b!1511509))

(assert (= (and b!1511509 res!1031484) b!1511504))

(assert (= (and b!1511504 res!1031481) b!1511503))

(assert (= (and b!1511503 res!1031487) b!1511506))

(assert (= (and b!1511506 res!1031486) b!1511510))

(assert (= (and b!1511510 res!1031485) b!1511511))

(assert (= (and b!1511511 res!1031479) b!1511508))

(assert (= (and b!1511508 res!1031483) b!1511502))

(assert (= (and b!1511502 res!1031477) b!1511505))

(assert (= (and b!1511505 res!1031482) b!1511512))

(declare-fun m!1394265 () Bool)

(assert (=> b!1511505 m!1394265))

(declare-fun m!1394267 () Bool)

(assert (=> b!1511505 m!1394267))

(declare-fun m!1394269 () Bool)

(assert (=> b!1511511 m!1394269))

(assert (=> b!1511511 m!1394269))

(declare-fun m!1394271 () Bool)

(assert (=> b!1511511 m!1394271))

(assert (=> b!1511511 m!1394271))

(assert (=> b!1511511 m!1394269))

(declare-fun m!1394273 () Bool)

(assert (=> b!1511511 m!1394273))

(assert (=> b!1511512 m!1394269))

(assert (=> b!1511512 m!1394269))

(declare-fun m!1394275 () Bool)

(assert (=> b!1511512 m!1394275))

(declare-fun m!1394277 () Bool)

(assert (=> b!1511502 m!1394277))

(declare-fun m!1394279 () Bool)

(assert (=> b!1511502 m!1394279))

(assert (=> b!1511502 m!1394279))

(declare-fun m!1394281 () Bool)

(assert (=> b!1511502 m!1394281))

(assert (=> b!1511502 m!1394281))

(assert (=> b!1511502 m!1394279))

(declare-fun m!1394283 () Bool)

(assert (=> b!1511502 m!1394283))

(assert (=> b!1511504 m!1394269))

(assert (=> b!1511504 m!1394269))

(declare-fun m!1394285 () Bool)

(assert (=> b!1511504 m!1394285))

(declare-fun m!1394287 () Bool)

(assert (=> b!1511503 m!1394287))

(declare-fun m!1394289 () Bool)

(assert (=> start!128988 m!1394289))

(declare-fun m!1394291 () Bool)

(assert (=> start!128988 m!1394291))

(declare-fun m!1394293 () Bool)

(assert (=> b!1511509 m!1394293))

(assert (=> b!1511509 m!1394293))

(declare-fun m!1394295 () Bool)

(assert (=> b!1511509 m!1394295))

(assert (=> b!1511508 m!1394269))

(assert (=> b!1511508 m!1394269))

(declare-fun m!1394297 () Bool)

(assert (=> b!1511508 m!1394297))

(declare-fun m!1394299 () Bool)

(assert (=> b!1511506 m!1394299))

(check-sat (not start!128988) (not b!1511511) (not b!1511506) (not b!1511504) (not b!1511505) (not b!1511502) (not b!1511509) (not b!1511508) (not b!1511512) (not b!1511503))
(check-sat)

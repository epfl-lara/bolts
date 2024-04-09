; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129236 () Bool)

(assert start!129236)

(declare-fun b!1516429 () Bool)

(declare-fun res!1036411 () Bool)

(declare-fun e!846178 () Bool)

(assert (=> b!1516429 (=> (not res!1036411) (not e!846178))))

(declare-datatypes ((array!101005 0))(
  ( (array!101006 (arr!48735 (Array (_ BitVec 32) (_ BitVec 64))) (size!49286 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101005)

(declare-datatypes ((List!35398 0))(
  ( (Nil!35395) (Cons!35394 (h!36807 (_ BitVec 64)) (t!50099 List!35398)) )
))
(declare-fun arrayNoDuplicates!0 (array!101005 (_ BitVec 32) List!35398) Bool)

(assert (=> b!1516429 (= res!1036411 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35395))))

(declare-fun b!1516430 () Bool)

(declare-fun e!846176 () Bool)

(assert (=> b!1516430 (= e!846178 e!846176)))

(declare-fun res!1036405 () Bool)

(assert (=> b!1516430 (=> (not res!1036405) (not e!846176))))

(declare-datatypes ((SeekEntryResult!12927 0))(
  ( (MissingZero!12927 (index!54102 (_ BitVec 32))) (Found!12927 (index!54103 (_ BitVec 32))) (Intermediate!12927 (undefined!13739 Bool) (index!54104 (_ BitVec 32)) (x!135802 (_ BitVec 32))) (Undefined!12927) (MissingVacant!12927 (index!54105 (_ BitVec 32))) )
))
(declare-fun lt!657376 () SeekEntryResult!12927)

(declare-fun lt!657375 () SeekEntryResult!12927)

(assert (=> b!1516430 (= res!1036405 (= lt!657376 lt!657375))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1516430 (= lt!657375 (Intermediate!12927 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101005 (_ BitVec 32)) SeekEntryResult!12927)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516430 (= lt!657376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48735 a!2804) j!70) mask!2512) (select (arr!48735 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516431 () Bool)

(declare-fun e!846179 () Bool)

(declare-fun e!846175 () Bool)

(assert (=> b!1516431 (= e!846179 e!846175)))

(declare-fun res!1036409 () Bool)

(assert (=> b!1516431 (=> res!1036409 e!846175)))

(declare-fun lt!657372 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516431 (= res!1036409 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657372 #b00000000000000000000000000000000) (bvsge lt!657372 (size!49286 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516431 (= lt!657372 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516432 () Bool)

(declare-fun res!1036406 () Bool)

(assert (=> b!1516432 (=> (not res!1036406) (not e!846178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516432 (= res!1036406 (validKeyInArray!0 (select (arr!48735 a!2804) j!70)))))

(declare-fun e!846174 () Bool)

(declare-fun b!1516433 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101005 (_ BitVec 32)) SeekEntryResult!12927)

(assert (=> b!1516433 (= e!846174 (= (seekEntry!0 (select (arr!48735 a!2804) j!70) a!2804 mask!2512) (Found!12927 j!70)))))

(declare-fun res!1036407 () Bool)

(assert (=> start!129236 (=> (not res!1036407) (not e!846178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129236 (= res!1036407 (validMask!0 mask!2512))))

(assert (=> start!129236 e!846178))

(assert (=> start!129236 true))

(declare-fun array_inv!37680 (array!101005) Bool)

(assert (=> start!129236 (array_inv!37680 a!2804)))

(declare-fun b!1516434 () Bool)

(assert (=> b!1516434 (= e!846175 true)))

(declare-fun lt!657373 () SeekEntryResult!12927)

(assert (=> b!1516434 (= lt!657373 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657372 (select (arr!48735 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516435 () Bool)

(assert (=> b!1516435 (= e!846176 (not e!846179))))

(declare-fun res!1036412 () Bool)

(assert (=> b!1516435 (=> res!1036412 e!846179)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1516435 (= res!1036412 (or (not (= (select (arr!48735 a!2804) j!70) (select (store (arr!48735 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1516435 e!846174))

(declare-fun res!1036415 () Bool)

(assert (=> b!1516435 (=> (not res!1036415) (not e!846174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101005 (_ BitVec 32)) Bool)

(assert (=> b!1516435 (= res!1036415 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50678 0))(
  ( (Unit!50679) )
))
(declare-fun lt!657374 () Unit!50678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101005 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50678)

(assert (=> b!1516435 (= lt!657374 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516436 () Bool)

(declare-fun res!1036410 () Bool)

(assert (=> b!1516436 (=> (not res!1036410) (not e!846176))))

(assert (=> b!1516436 (= res!1036410 (= lt!657376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48735 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48735 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101006 (store (arr!48735 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49286 a!2804)) mask!2512)))))

(declare-fun b!1516437 () Bool)

(declare-fun res!1036416 () Bool)

(assert (=> b!1516437 (=> (not res!1036416) (not e!846178))))

(assert (=> b!1516437 (= res!1036416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516438 () Bool)

(declare-fun res!1036413 () Bool)

(assert (=> b!1516438 (=> (not res!1036413) (not e!846176))))

(assert (=> b!1516438 (= res!1036413 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48735 a!2804) j!70) a!2804 mask!2512) lt!657375))))

(declare-fun b!1516439 () Bool)

(declare-fun res!1036408 () Bool)

(assert (=> b!1516439 (=> (not res!1036408) (not e!846178))))

(assert (=> b!1516439 (= res!1036408 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49286 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49286 a!2804))))))

(declare-fun b!1516440 () Bool)

(declare-fun res!1036404 () Bool)

(assert (=> b!1516440 (=> (not res!1036404) (not e!846178))))

(assert (=> b!1516440 (= res!1036404 (validKeyInArray!0 (select (arr!48735 a!2804) i!961)))))

(declare-fun b!1516441 () Bool)

(declare-fun res!1036414 () Bool)

(assert (=> b!1516441 (=> (not res!1036414) (not e!846178))))

(assert (=> b!1516441 (= res!1036414 (and (= (size!49286 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49286 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49286 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129236 res!1036407) b!1516441))

(assert (= (and b!1516441 res!1036414) b!1516440))

(assert (= (and b!1516440 res!1036404) b!1516432))

(assert (= (and b!1516432 res!1036406) b!1516437))

(assert (= (and b!1516437 res!1036416) b!1516429))

(assert (= (and b!1516429 res!1036411) b!1516439))

(assert (= (and b!1516439 res!1036408) b!1516430))

(assert (= (and b!1516430 res!1036405) b!1516438))

(assert (= (and b!1516438 res!1036413) b!1516436))

(assert (= (and b!1516436 res!1036410) b!1516435))

(assert (= (and b!1516435 res!1036415) b!1516433))

(assert (= (and b!1516435 (not res!1036412)) b!1516431))

(assert (= (and b!1516431 (not res!1036409)) b!1516434))

(declare-fun m!1399751 () Bool)

(assert (=> b!1516429 m!1399751))

(declare-fun m!1399753 () Bool)

(assert (=> b!1516438 m!1399753))

(assert (=> b!1516438 m!1399753))

(declare-fun m!1399755 () Bool)

(assert (=> b!1516438 m!1399755))

(assert (=> b!1516432 m!1399753))

(assert (=> b!1516432 m!1399753))

(declare-fun m!1399757 () Bool)

(assert (=> b!1516432 m!1399757))

(assert (=> b!1516434 m!1399753))

(assert (=> b!1516434 m!1399753))

(declare-fun m!1399759 () Bool)

(assert (=> b!1516434 m!1399759))

(assert (=> b!1516435 m!1399753))

(declare-fun m!1399761 () Bool)

(assert (=> b!1516435 m!1399761))

(declare-fun m!1399763 () Bool)

(assert (=> b!1516435 m!1399763))

(declare-fun m!1399765 () Bool)

(assert (=> b!1516435 m!1399765))

(declare-fun m!1399767 () Bool)

(assert (=> b!1516435 m!1399767))

(declare-fun m!1399769 () Bool)

(assert (=> start!129236 m!1399769))

(declare-fun m!1399771 () Bool)

(assert (=> start!129236 m!1399771))

(declare-fun m!1399773 () Bool)

(assert (=> b!1516431 m!1399773))

(assert (=> b!1516430 m!1399753))

(assert (=> b!1516430 m!1399753))

(declare-fun m!1399775 () Bool)

(assert (=> b!1516430 m!1399775))

(assert (=> b!1516430 m!1399775))

(assert (=> b!1516430 m!1399753))

(declare-fun m!1399777 () Bool)

(assert (=> b!1516430 m!1399777))

(declare-fun m!1399779 () Bool)

(assert (=> b!1516437 m!1399779))

(assert (=> b!1516433 m!1399753))

(assert (=> b!1516433 m!1399753))

(declare-fun m!1399781 () Bool)

(assert (=> b!1516433 m!1399781))

(declare-fun m!1399783 () Bool)

(assert (=> b!1516440 m!1399783))

(assert (=> b!1516440 m!1399783))

(declare-fun m!1399785 () Bool)

(assert (=> b!1516440 m!1399785))

(assert (=> b!1516436 m!1399763))

(assert (=> b!1516436 m!1399765))

(assert (=> b!1516436 m!1399765))

(declare-fun m!1399787 () Bool)

(assert (=> b!1516436 m!1399787))

(assert (=> b!1516436 m!1399787))

(assert (=> b!1516436 m!1399765))

(declare-fun m!1399789 () Bool)

(assert (=> b!1516436 m!1399789))

(push 1)


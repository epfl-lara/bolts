; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130578 () Bool)

(assert start!130578)

(declare-fun b!1531998 () Bool)

(declare-fun e!853631 () Bool)

(declare-fun e!853630 () Bool)

(assert (=> b!1531998 (= e!853631 e!853630)))

(declare-fun res!1049285 () Bool)

(assert (=> b!1531998 (=> (not res!1049285) (not e!853630))))

(declare-fun lt!663475 () (_ BitVec 64))

(declare-datatypes ((array!101684 0))(
  ( (array!101685 (arr!49058 (Array (_ BitVec 32) (_ BitVec 64))) (size!49609 (_ BitVec 32))) )
))
(declare-fun lt!663473 () array!101684)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13244 0))(
  ( (MissingZero!13244 (index!55370 (_ BitVec 32))) (Found!13244 (index!55371 (_ BitVec 32))) (Intermediate!13244 (undefined!14056 Bool) (index!55372 (_ BitVec 32)) (x!137073 (_ BitVec 32))) (Undefined!13244) (MissingVacant!13244 (index!55373 (_ BitVec 32))) )
))
(declare-fun lt!663470 () SeekEntryResult!13244)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101684 (_ BitVec 32)) SeekEntryResult!13244)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531998 (= res!1049285 (= lt!663470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663475 mask!2512) lt!663475 lt!663473 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101684)

(assert (=> b!1531998 (= lt!663475 (select (store (arr!49058 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531998 (= lt!663473 (array!101685 (store (arr!49058 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49609 a!2804)))))

(declare-fun b!1531999 () Bool)

(declare-fun e!853625 () Bool)

(declare-fun e!853629 () Bool)

(assert (=> b!1531999 (= e!853625 e!853629)))

(declare-fun res!1049281 () Bool)

(assert (=> b!1531999 (=> res!1049281 e!853629)))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!663469 () (_ BitVec 32))

(assert (=> b!1531999 (= res!1049281 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663469 #b00000000000000000000000000000000) (bvsge lt!663469 (size!49609 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531999 (= lt!663469 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1532000 () Bool)

(declare-fun res!1049277 () Bool)

(declare-fun e!853628 () Bool)

(assert (=> b!1532000 (=> (not res!1049277) (not e!853628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101684 (_ BitVec 32)) Bool)

(assert (=> b!1532000 (= res!1049277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1532001 () Bool)

(declare-fun res!1049279 () Bool)

(assert (=> b!1532001 (=> (not res!1049279) (not e!853628))))

(assert (=> b!1532001 (= res!1049279 (and (= (size!49609 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49609 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49609 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1532002 () Bool)

(declare-fun res!1049286 () Bool)

(assert (=> b!1532002 (=> (not res!1049286) (not e!853628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532002 (= res!1049286 (validKeyInArray!0 (select (arr!49058 a!2804) j!70)))))

(declare-fun b!1532003 () Bool)

(declare-fun e!853627 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101684 (_ BitVec 32)) SeekEntryResult!13244)

(assert (=> b!1532003 (= e!853627 (= (seekEntry!0 (select (arr!49058 a!2804) j!70) a!2804 mask!2512) (Found!13244 j!70)))))

(declare-fun res!1049289 () Bool)

(assert (=> start!130578 (=> (not res!1049289) (not e!853628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130578 (= res!1049289 (validMask!0 mask!2512))))

(assert (=> start!130578 e!853628))

(assert (=> start!130578 true))

(declare-fun array_inv!38003 (array!101684) Bool)

(assert (=> start!130578 (array_inv!38003 a!2804)))

(declare-fun b!1532004 () Bool)

(declare-fun res!1049280 () Bool)

(assert (=> b!1532004 (=> (not res!1049280) (not e!853631))))

(declare-fun lt!663471 () SeekEntryResult!13244)

(assert (=> b!1532004 (= res!1049280 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49058 a!2804) j!70) a!2804 mask!2512) lt!663471))))

(declare-fun b!1532005 () Bool)

(declare-fun res!1049282 () Bool)

(assert (=> b!1532005 (=> (not res!1049282) (not e!853628))))

(assert (=> b!1532005 (= res!1049282 (validKeyInArray!0 (select (arr!49058 a!2804) i!961)))))

(declare-fun b!1532006 () Bool)

(assert (=> b!1532006 (= e!853630 (not e!853625))))

(declare-fun res!1049287 () Bool)

(assert (=> b!1532006 (=> res!1049287 e!853625)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1532006 (= res!1049287 (or (not (= (select (arr!49058 a!2804) j!70) lt!663475)) (= x!534 resX!21)))))

(assert (=> b!1532006 e!853627))

(declare-fun res!1049288 () Bool)

(assert (=> b!1532006 (=> (not res!1049288) (not e!853627))))

(assert (=> b!1532006 (= res!1049288 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51228 0))(
  ( (Unit!51229) )
))
(declare-fun lt!663472 () Unit!51228)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101684 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51228)

(assert (=> b!1532006 (= lt!663472 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1532007 () Bool)

(declare-fun res!1049276 () Bool)

(assert (=> b!1532007 (=> res!1049276 e!853629)))

(assert (=> b!1532007 (= res!1049276 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663469 (select (arr!49058 a!2804) j!70) a!2804 mask!2512) lt!663471)))))

(declare-fun b!1532008 () Bool)

(declare-fun res!1049284 () Bool)

(assert (=> b!1532008 (=> (not res!1049284) (not e!853628))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1532008 (= res!1049284 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49609 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49609 a!2804))))))

(declare-fun b!1532009 () Bool)

(assert (=> b!1532009 (= e!853628 e!853631)))

(declare-fun res!1049278 () Bool)

(assert (=> b!1532009 (=> (not res!1049278) (not e!853631))))

(assert (=> b!1532009 (= res!1049278 (= lt!663470 lt!663471))))

(assert (=> b!1532009 (= lt!663471 (Intermediate!13244 false resIndex!21 resX!21))))

(assert (=> b!1532009 (= lt!663470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49058 a!2804) j!70) mask!2512) (select (arr!49058 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1532010 () Bool)

(declare-fun res!1049283 () Bool)

(assert (=> b!1532010 (=> (not res!1049283) (not e!853628))))

(declare-datatypes ((List!35721 0))(
  ( (Nil!35718) (Cons!35717 (h!37163 (_ BitVec 64)) (t!50422 List!35721)) )
))
(declare-fun arrayNoDuplicates!0 (array!101684 (_ BitVec 32) List!35721) Bool)

(assert (=> b!1532010 (= res!1049283 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35718))))

(declare-fun b!1532011 () Bool)

(assert (=> b!1532011 (= e!853629 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101684 (_ BitVec 32)) SeekEntryResult!13244)

(assert (=> b!1532011 (= (seekEntryOrOpen!0 (select (arr!49058 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663475 lt!663473 mask!2512))))

(declare-fun lt!663474 () Unit!51228)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101684 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51228)

(assert (=> b!1532011 (= lt!663474 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663469 resX!21 resIndex!21 mask!2512))))

(assert (= (and start!130578 res!1049289) b!1532001))

(assert (= (and b!1532001 res!1049279) b!1532005))

(assert (= (and b!1532005 res!1049282) b!1532002))

(assert (= (and b!1532002 res!1049286) b!1532000))

(assert (= (and b!1532000 res!1049277) b!1532010))

(assert (= (and b!1532010 res!1049283) b!1532008))

(assert (= (and b!1532008 res!1049284) b!1532009))

(assert (= (and b!1532009 res!1049278) b!1532004))

(assert (= (and b!1532004 res!1049280) b!1531998))

(assert (= (and b!1531998 res!1049285) b!1532006))

(assert (= (and b!1532006 res!1049288) b!1532003))

(assert (= (and b!1532006 (not res!1049287)) b!1531999))

(assert (= (and b!1531999 (not res!1049281)) b!1532007))

(assert (= (and b!1532007 (not res!1049276)) b!1532011))

(declare-fun m!1414741 () Bool)

(assert (=> b!1532004 m!1414741))

(assert (=> b!1532004 m!1414741))

(declare-fun m!1414743 () Bool)

(assert (=> b!1532004 m!1414743))

(declare-fun m!1414745 () Bool)

(assert (=> b!1531999 m!1414745))

(assert (=> b!1532003 m!1414741))

(assert (=> b!1532003 m!1414741))

(declare-fun m!1414747 () Bool)

(assert (=> b!1532003 m!1414747))

(assert (=> b!1532009 m!1414741))

(assert (=> b!1532009 m!1414741))

(declare-fun m!1414749 () Bool)

(assert (=> b!1532009 m!1414749))

(assert (=> b!1532009 m!1414749))

(assert (=> b!1532009 m!1414741))

(declare-fun m!1414751 () Bool)

(assert (=> b!1532009 m!1414751))

(assert (=> b!1532011 m!1414741))

(assert (=> b!1532011 m!1414741))

(declare-fun m!1414753 () Bool)

(assert (=> b!1532011 m!1414753))

(declare-fun m!1414755 () Bool)

(assert (=> b!1532011 m!1414755))

(declare-fun m!1414757 () Bool)

(assert (=> b!1532011 m!1414757))

(declare-fun m!1414759 () Bool)

(assert (=> b!1531998 m!1414759))

(assert (=> b!1531998 m!1414759))

(declare-fun m!1414761 () Bool)

(assert (=> b!1531998 m!1414761))

(declare-fun m!1414763 () Bool)

(assert (=> b!1531998 m!1414763))

(declare-fun m!1414765 () Bool)

(assert (=> b!1531998 m!1414765))

(declare-fun m!1414767 () Bool)

(assert (=> start!130578 m!1414767))

(declare-fun m!1414769 () Bool)

(assert (=> start!130578 m!1414769))

(assert (=> b!1532006 m!1414741))

(declare-fun m!1414771 () Bool)

(assert (=> b!1532006 m!1414771))

(declare-fun m!1414773 () Bool)

(assert (=> b!1532006 m!1414773))

(declare-fun m!1414775 () Bool)

(assert (=> b!1532000 m!1414775))

(assert (=> b!1532007 m!1414741))

(assert (=> b!1532007 m!1414741))

(declare-fun m!1414777 () Bool)

(assert (=> b!1532007 m!1414777))

(assert (=> b!1532002 m!1414741))

(assert (=> b!1532002 m!1414741))

(declare-fun m!1414779 () Bool)

(assert (=> b!1532002 m!1414779))

(declare-fun m!1414781 () Bool)

(assert (=> b!1532010 m!1414781))

(declare-fun m!1414783 () Bool)

(assert (=> b!1532005 m!1414783))

(assert (=> b!1532005 m!1414783))

(declare-fun m!1414785 () Bool)

(assert (=> b!1532005 m!1414785))

(check-sat (not b!1532005) (not b!1531999) (not b!1532002) (not b!1532003) (not b!1531998) (not b!1532009) (not b!1532004) (not b!1532000) (not start!130578) (not b!1532007) (not b!1532011) (not b!1532010) (not b!1532006))
(check-sat)

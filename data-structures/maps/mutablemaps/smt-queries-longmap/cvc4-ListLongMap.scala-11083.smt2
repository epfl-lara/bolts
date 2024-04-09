; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129380 () Bool)

(assert start!129380)

(declare-fun b!1519299 () Bool)

(declare-fun res!1039284 () Bool)

(declare-fun e!847537 () Bool)

(assert (=> b!1519299 (=> (not res!1039284) (not e!847537))))

(declare-datatypes ((array!101149 0))(
  ( (array!101150 (arr!48807 (Array (_ BitVec 32) (_ BitVec 64))) (size!49358 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101149)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519299 (= res!1039284 (validKeyInArray!0 (select (arr!48807 a!2804) j!70)))))

(declare-fun b!1519300 () Bool)

(declare-fun res!1039274 () Bool)

(declare-fun e!847533 () Bool)

(assert (=> b!1519300 (=> (not res!1039274) (not e!847533))))

(declare-datatypes ((SeekEntryResult!12999 0))(
  ( (MissingZero!12999 (index!54390 (_ BitVec 32))) (Found!12999 (index!54391 (_ BitVec 32))) (Intermediate!12999 (undefined!13811 Bool) (index!54392 (_ BitVec 32)) (x!136066 (_ BitVec 32))) (Undefined!12999) (MissingVacant!12999 (index!54393 (_ BitVec 32))) )
))
(declare-fun lt!658578 () SeekEntryResult!12999)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101149 (_ BitVec 32)) SeekEntryResult!12999)

(assert (=> b!1519300 (= res!1039274 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48807 a!2804) j!70) a!2804 mask!2512) lt!658578))))

(declare-fun b!1519301 () Bool)

(declare-fun res!1039278 () Bool)

(assert (=> b!1519301 (=> (not res!1039278) (not e!847537))))

(declare-datatypes ((List!35470 0))(
  ( (Nil!35467) (Cons!35466 (h!36879 (_ BitVec 64)) (t!50171 List!35470)) )
))
(declare-fun arrayNoDuplicates!0 (array!101149 (_ BitVec 32) List!35470) Bool)

(assert (=> b!1519301 (= res!1039278 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35467))))

(declare-fun b!1519302 () Bool)

(declare-fun e!847532 () Bool)

(assert (=> b!1519302 (= e!847532 true)))

(declare-fun lt!658577 () (_ BitVec 64))

(declare-fun lt!658576 () array!101149)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101149 (_ BitVec 32)) SeekEntryResult!12999)

(assert (=> b!1519302 (= (seekEntryOrOpen!0 (select (arr!48807 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658577 lt!658576 mask!2512))))

(declare-datatypes ((Unit!50822 0))(
  ( (Unit!50823) )
))
(declare-fun lt!658581 () Unit!50822)

(declare-fun lt!658582 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101149 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50822)

(assert (=> b!1519302 (= lt!658581 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658582 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1519303 () Bool)

(assert (=> b!1519303 (= e!847537 e!847533)))

(declare-fun res!1039276 () Bool)

(assert (=> b!1519303 (=> (not res!1039276) (not e!847533))))

(declare-fun lt!658579 () SeekEntryResult!12999)

(assert (=> b!1519303 (= res!1039276 (= lt!658579 lt!658578))))

(assert (=> b!1519303 (= lt!658578 (Intermediate!12999 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519303 (= lt!658579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48807 a!2804) j!70) mask!2512) (select (arr!48807 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519304 () Bool)

(declare-fun e!847538 () Bool)

(assert (=> b!1519304 (= e!847533 e!847538)))

(declare-fun res!1039275 () Bool)

(assert (=> b!1519304 (=> (not res!1039275) (not e!847538))))

(assert (=> b!1519304 (= res!1039275 (= lt!658579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658577 mask!2512) lt!658577 lt!658576 mask!2512)))))

(assert (=> b!1519304 (= lt!658577 (select (store (arr!48807 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519304 (= lt!658576 (array!101150 (store (arr!48807 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49358 a!2804)))))

(declare-fun b!1519305 () Bool)

(declare-fun e!847534 () Bool)

(assert (=> b!1519305 (= e!847534 e!847532)))

(declare-fun res!1039282 () Bool)

(assert (=> b!1519305 (=> res!1039282 e!847532)))

(assert (=> b!1519305 (= res!1039282 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658582 #b00000000000000000000000000000000) (bvsge lt!658582 (size!49358 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519305 (= lt!658582 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1519306 () Bool)

(assert (=> b!1519306 (= e!847538 (not e!847534))))

(declare-fun res!1039287 () Bool)

(assert (=> b!1519306 (=> res!1039287 e!847534)))

(assert (=> b!1519306 (= res!1039287 (or (not (= (select (arr!48807 a!2804) j!70) lt!658577)) (= x!534 resX!21)))))

(declare-fun e!847536 () Bool)

(assert (=> b!1519306 e!847536))

(declare-fun res!1039283 () Bool)

(assert (=> b!1519306 (=> (not res!1039283) (not e!847536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101149 (_ BitVec 32)) Bool)

(assert (=> b!1519306 (= res!1039283 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!658580 () Unit!50822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101149 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50822)

(assert (=> b!1519306 (= lt!658580 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519307 () Bool)

(declare-fun res!1039280 () Bool)

(assert (=> b!1519307 (=> (not res!1039280) (not e!847537))))

(assert (=> b!1519307 (= res!1039280 (and (= (size!49358 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49358 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49358 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519308 () Bool)

(declare-fun res!1039285 () Bool)

(assert (=> b!1519308 (=> (not res!1039285) (not e!847537))))

(assert (=> b!1519308 (= res!1039285 (validKeyInArray!0 (select (arr!48807 a!2804) i!961)))))

(declare-fun b!1519309 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101149 (_ BitVec 32)) SeekEntryResult!12999)

(assert (=> b!1519309 (= e!847536 (= (seekEntry!0 (select (arr!48807 a!2804) j!70) a!2804 mask!2512) (Found!12999 j!70)))))

(declare-fun b!1519310 () Bool)

(declare-fun res!1039286 () Bool)

(assert (=> b!1519310 (=> (not res!1039286) (not e!847537))))

(assert (=> b!1519310 (= res!1039286 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49358 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49358 a!2804))))))

(declare-fun res!1039279 () Bool)

(assert (=> start!129380 (=> (not res!1039279) (not e!847537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129380 (= res!1039279 (validMask!0 mask!2512))))

(assert (=> start!129380 e!847537))

(assert (=> start!129380 true))

(declare-fun array_inv!37752 (array!101149) Bool)

(assert (=> start!129380 (array_inv!37752 a!2804)))

(declare-fun b!1519311 () Bool)

(declare-fun res!1039281 () Bool)

(assert (=> b!1519311 (=> (not res!1039281) (not e!847537))))

(assert (=> b!1519311 (= res!1039281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519312 () Bool)

(declare-fun res!1039277 () Bool)

(assert (=> b!1519312 (=> res!1039277 e!847532)))

(assert (=> b!1519312 (= res!1039277 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658582 (select (arr!48807 a!2804) j!70) a!2804 mask!2512) lt!658578)))))

(assert (= (and start!129380 res!1039279) b!1519307))

(assert (= (and b!1519307 res!1039280) b!1519308))

(assert (= (and b!1519308 res!1039285) b!1519299))

(assert (= (and b!1519299 res!1039284) b!1519311))

(assert (= (and b!1519311 res!1039281) b!1519301))

(assert (= (and b!1519301 res!1039278) b!1519310))

(assert (= (and b!1519310 res!1039286) b!1519303))

(assert (= (and b!1519303 res!1039276) b!1519300))

(assert (= (and b!1519300 res!1039274) b!1519304))

(assert (= (and b!1519304 res!1039275) b!1519306))

(assert (= (and b!1519306 res!1039283) b!1519309))

(assert (= (and b!1519306 (not res!1039287)) b!1519305))

(assert (= (and b!1519305 (not res!1039282)) b!1519312))

(assert (= (and b!1519312 (not res!1039277)) b!1519302))

(declare-fun m!1402751 () Bool)

(assert (=> b!1519304 m!1402751))

(assert (=> b!1519304 m!1402751))

(declare-fun m!1402753 () Bool)

(assert (=> b!1519304 m!1402753))

(declare-fun m!1402755 () Bool)

(assert (=> b!1519304 m!1402755))

(declare-fun m!1402757 () Bool)

(assert (=> b!1519304 m!1402757))

(declare-fun m!1402759 () Bool)

(assert (=> b!1519303 m!1402759))

(assert (=> b!1519303 m!1402759))

(declare-fun m!1402761 () Bool)

(assert (=> b!1519303 m!1402761))

(assert (=> b!1519303 m!1402761))

(assert (=> b!1519303 m!1402759))

(declare-fun m!1402763 () Bool)

(assert (=> b!1519303 m!1402763))

(declare-fun m!1402765 () Bool)

(assert (=> b!1519311 m!1402765))

(assert (=> b!1519306 m!1402759))

(declare-fun m!1402767 () Bool)

(assert (=> b!1519306 m!1402767))

(declare-fun m!1402769 () Bool)

(assert (=> b!1519306 m!1402769))

(assert (=> b!1519300 m!1402759))

(assert (=> b!1519300 m!1402759))

(declare-fun m!1402771 () Bool)

(assert (=> b!1519300 m!1402771))

(assert (=> b!1519299 m!1402759))

(assert (=> b!1519299 m!1402759))

(declare-fun m!1402773 () Bool)

(assert (=> b!1519299 m!1402773))

(assert (=> b!1519309 m!1402759))

(assert (=> b!1519309 m!1402759))

(declare-fun m!1402775 () Bool)

(assert (=> b!1519309 m!1402775))

(declare-fun m!1402777 () Bool)

(assert (=> b!1519301 m!1402777))

(declare-fun m!1402779 () Bool)

(assert (=> b!1519308 m!1402779))

(assert (=> b!1519308 m!1402779))

(declare-fun m!1402781 () Bool)

(assert (=> b!1519308 m!1402781))

(declare-fun m!1402783 () Bool)

(assert (=> start!129380 m!1402783))

(declare-fun m!1402785 () Bool)

(assert (=> start!129380 m!1402785))

(assert (=> b!1519302 m!1402759))

(assert (=> b!1519302 m!1402759))

(declare-fun m!1402787 () Bool)

(assert (=> b!1519302 m!1402787))

(declare-fun m!1402789 () Bool)

(assert (=> b!1519302 m!1402789))

(declare-fun m!1402791 () Bool)

(assert (=> b!1519302 m!1402791))

(assert (=> b!1519312 m!1402759))

(assert (=> b!1519312 m!1402759))

(declare-fun m!1402793 () Bool)

(assert (=> b!1519312 m!1402793))

(declare-fun m!1402795 () Bool)

(assert (=> b!1519305 m!1402795))

(push 1)


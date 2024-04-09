; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128882 () Bool)

(assert start!128882)

(declare-fun res!1029724 () Bool)

(declare-fun e!843226 () Bool)

(assert (=> start!128882 (=> (not res!1029724) (not e!843226))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128882 (= res!1029724 (validMask!0 mask!2512))))

(assert (=> start!128882 e!843226))

(assert (=> start!128882 true))

(declare-datatypes ((array!100651 0))(
  ( (array!100652 (arr!48558 (Array (_ BitVec 32) (_ BitVec 64))) (size!49109 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100651)

(declare-fun array_inv!37503 (array!100651) Bool)

(assert (=> start!128882 (array_inv!37503 a!2804)))

(declare-fun b!1509744 () Bool)

(declare-fun res!1029723 () Bool)

(declare-fun e!843227 () Bool)

(assert (=> b!1509744 (=> (not res!1029723) (not e!843227))))

(declare-datatypes ((SeekEntryResult!12750 0))(
  ( (MissingZero!12750 (index!53394 (_ BitVec 32))) (Found!12750 (index!53395 (_ BitVec 32))) (Intermediate!12750 (undefined!13562 Bool) (index!53396 (_ BitVec 32)) (x!135153 (_ BitVec 32))) (Undefined!12750) (MissingVacant!12750 (index!53397 (_ BitVec 32))) )
))
(declare-fun lt!654953 () SeekEntryResult!12750)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100651 (_ BitVec 32)) SeekEntryResult!12750)

(assert (=> b!1509744 (= res!1029723 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48558 a!2804) j!70) a!2804 mask!2512) lt!654953))))

(declare-fun b!1509745 () Bool)

(declare-fun res!1029719 () Bool)

(assert (=> b!1509745 (=> (not res!1029719) (not e!843226))))

(declare-datatypes ((List!35221 0))(
  ( (Nil!35218) (Cons!35217 (h!36630 (_ BitVec 64)) (t!49922 List!35221)) )
))
(declare-fun arrayNoDuplicates!0 (array!100651 (_ BitVec 32) List!35221) Bool)

(assert (=> b!1509745 (= res!1029719 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35218))))

(declare-fun b!1509746 () Bool)

(declare-fun res!1029726 () Bool)

(assert (=> b!1509746 (=> (not res!1029726) (not e!843226))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1509746 (= res!1029726 (and (= (size!49109 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49109 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49109 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509747 () Bool)

(assert (=> b!1509747 (= e!843226 e!843227)))

(declare-fun res!1029720 () Bool)

(assert (=> b!1509747 (=> (not res!1029720) (not e!843227))))

(declare-fun lt!654954 () SeekEntryResult!12750)

(assert (=> b!1509747 (= res!1029720 (= lt!654954 lt!654953))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509747 (= lt!654953 (Intermediate!12750 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509747 (= lt!654954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48558 a!2804) j!70) mask!2512) (select (arr!48558 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509748 () Bool)

(declare-fun res!1029721 () Bool)

(assert (=> b!1509748 (=> (not res!1029721) (not e!843226))))

(assert (=> b!1509748 (= res!1029721 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49109 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49109 a!2804))))))

(declare-fun b!1509749 () Bool)

(declare-fun res!1029728 () Bool)

(assert (=> b!1509749 (=> (not res!1029728) (not e!843227))))

(assert (=> b!1509749 (= res!1029728 (= lt!654954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48558 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48558 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100652 (store (arr!48558 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49109 a!2804)) mask!2512)))))

(declare-fun b!1509750 () Bool)

(declare-fun res!1029727 () Bool)

(assert (=> b!1509750 (=> (not res!1029727) (not e!843226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509750 (= res!1029727 (validKeyInArray!0 (select (arr!48558 a!2804) i!961)))))

(declare-fun b!1509751 () Bool)

(declare-fun e!843225 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100651 (_ BitVec 32)) SeekEntryResult!12750)

(assert (=> b!1509751 (= e!843225 (= (seekEntry!0 (select (arr!48558 a!2804) j!70) a!2804 mask!2512) (Found!12750 j!70)))))

(declare-fun b!1509752 () Bool)

(declare-fun res!1029729 () Bool)

(assert (=> b!1509752 (=> (not res!1029729) (not e!843226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100651 (_ BitVec 32)) Bool)

(assert (=> b!1509752 (= res!1029729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509753 () Bool)

(declare-fun res!1029722 () Bool)

(assert (=> b!1509753 (=> (not res!1029722) (not e!843226))))

(assert (=> b!1509753 (= res!1029722 (validKeyInArray!0 (select (arr!48558 a!2804) j!70)))))

(declare-fun b!1509754 () Bool)

(assert (=> b!1509754 (= e!843227 (not (or (not (= (select (arr!48558 a!2804) j!70) (select (store (arr!48558 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48558 a!2804) index!487) (select (arr!48558 a!2804) j!70))) (not (= j!70 index!487)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1509754 e!843225))

(declare-fun res!1029725 () Bool)

(assert (=> b!1509754 (=> (not res!1029725) (not e!843225))))

(assert (=> b!1509754 (= res!1029725 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50324 0))(
  ( (Unit!50325) )
))
(declare-fun lt!654955 () Unit!50324)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50324)

(assert (=> b!1509754 (= lt!654955 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!128882 res!1029724) b!1509746))

(assert (= (and b!1509746 res!1029726) b!1509750))

(assert (= (and b!1509750 res!1029727) b!1509753))

(assert (= (and b!1509753 res!1029722) b!1509752))

(assert (= (and b!1509752 res!1029729) b!1509745))

(assert (= (and b!1509745 res!1029719) b!1509748))

(assert (= (and b!1509748 res!1029721) b!1509747))

(assert (= (and b!1509747 res!1029720) b!1509744))

(assert (= (and b!1509744 res!1029723) b!1509749))

(assert (= (and b!1509749 res!1029728) b!1509754))

(assert (= (and b!1509754 res!1029725) b!1509751))

(declare-fun m!1392319 () Bool)

(assert (=> b!1509752 m!1392319))

(declare-fun m!1392321 () Bool)

(assert (=> b!1509745 m!1392321))

(declare-fun m!1392323 () Bool)

(assert (=> b!1509750 m!1392323))

(assert (=> b!1509750 m!1392323))

(declare-fun m!1392325 () Bool)

(assert (=> b!1509750 m!1392325))

(declare-fun m!1392327 () Bool)

(assert (=> b!1509744 m!1392327))

(assert (=> b!1509744 m!1392327))

(declare-fun m!1392329 () Bool)

(assert (=> b!1509744 m!1392329))

(declare-fun m!1392331 () Bool)

(assert (=> b!1509749 m!1392331))

(declare-fun m!1392333 () Bool)

(assert (=> b!1509749 m!1392333))

(assert (=> b!1509749 m!1392333))

(declare-fun m!1392335 () Bool)

(assert (=> b!1509749 m!1392335))

(assert (=> b!1509749 m!1392335))

(assert (=> b!1509749 m!1392333))

(declare-fun m!1392337 () Bool)

(assert (=> b!1509749 m!1392337))

(assert (=> b!1509747 m!1392327))

(assert (=> b!1509747 m!1392327))

(declare-fun m!1392339 () Bool)

(assert (=> b!1509747 m!1392339))

(assert (=> b!1509747 m!1392339))

(assert (=> b!1509747 m!1392327))

(declare-fun m!1392341 () Bool)

(assert (=> b!1509747 m!1392341))

(assert (=> b!1509753 m!1392327))

(assert (=> b!1509753 m!1392327))

(declare-fun m!1392343 () Bool)

(assert (=> b!1509753 m!1392343))

(declare-fun m!1392345 () Bool)

(assert (=> start!128882 m!1392345))

(declare-fun m!1392347 () Bool)

(assert (=> start!128882 m!1392347))

(assert (=> b!1509754 m!1392327))

(declare-fun m!1392349 () Bool)

(assert (=> b!1509754 m!1392349))

(assert (=> b!1509754 m!1392331))

(declare-fun m!1392351 () Bool)

(assert (=> b!1509754 m!1392351))

(assert (=> b!1509754 m!1392333))

(declare-fun m!1392353 () Bool)

(assert (=> b!1509754 m!1392353))

(assert (=> b!1509751 m!1392327))

(assert (=> b!1509751 m!1392327))

(declare-fun m!1392355 () Bool)

(assert (=> b!1509751 m!1392355))

(push 1)

(assert (not b!1509744))

(assert (not b!1509747))

(assert (not start!128882))


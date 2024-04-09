; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130586 () Bool)

(assert start!130586)

(declare-fun b!1532166 () Bool)

(declare-fun e!853711 () Bool)

(declare-fun e!853710 () Bool)

(assert (=> b!1532166 (= e!853711 e!853710)))

(declare-fun res!1049449 () Bool)

(assert (=> b!1532166 (=> res!1049449 e!853710)))

(declare-fun lt!663554 () (_ BitVec 32))

(declare-datatypes ((array!101692 0))(
  ( (array!101693 (arr!49062 (Array (_ BitVec 32) (_ BitVec 64))) (size!49613 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101692)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1532166 (= res!1049449 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663554 #b00000000000000000000000000000000) (bvsge lt!663554 (size!49613 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1532166 (= lt!663554 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1532168 () Bool)

(declare-fun e!853713 () Bool)

(declare-fun e!853709 () Bool)

(assert (=> b!1532168 (= e!853713 e!853709)))

(declare-fun res!1049447 () Bool)

(assert (=> b!1532168 (=> (not res!1049447) (not e!853709))))

(declare-datatypes ((SeekEntryResult!13248 0))(
  ( (MissingZero!13248 (index!55386 (_ BitVec 32))) (Found!13248 (index!55387 (_ BitVec 32))) (Intermediate!13248 (undefined!14060 Bool) (index!55388 (_ BitVec 32)) (x!137085 (_ BitVec 32))) (Undefined!13248) (MissingVacant!13248 (index!55389 (_ BitVec 32))) )
))
(declare-fun lt!663556 () SeekEntryResult!13248)

(declare-fun lt!663558 () SeekEntryResult!13248)

(assert (=> b!1532168 (= res!1049447 (= lt!663556 lt!663558))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1532168 (= lt!663558 (Intermediate!13248 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101692 (_ BitVec 32)) SeekEntryResult!13248)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1532168 (= lt!663556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49062 a!2804) j!70) mask!2512) (select (arr!49062 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1532169 () Bool)

(assert (=> b!1532169 (= e!853710 true)))

(declare-fun lt!663553 () (_ BitVec 64))

(declare-fun lt!663559 () array!101692)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101692 (_ BitVec 32)) SeekEntryResult!13248)

(assert (=> b!1532169 (= (seekEntryOrOpen!0 (select (arr!49062 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663553 lt!663559 mask!2512))))

(declare-fun i!961 () (_ BitVec 32))

(declare-datatypes ((Unit!51236 0))(
  ( (Unit!51237) )
))
(declare-fun lt!663555 () Unit!51236)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101692 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51236)

(assert (=> b!1532169 (= lt!663555 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663554 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1532170 () Bool)

(declare-fun res!1049455 () Bool)

(assert (=> b!1532170 (=> (not res!1049455) (not e!853713))))

(assert (=> b!1532170 (= res!1049455 (and (= (size!49613 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49613 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49613 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1532171 () Bool)

(declare-fun res!1049456 () Bool)

(assert (=> b!1532171 (=> res!1049456 e!853710)))

(assert (=> b!1532171 (= res!1049456 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663554 (select (arr!49062 a!2804) j!70) a!2804 mask!2512) lt!663558)))))

(declare-fun b!1532172 () Bool)

(declare-fun res!1049452 () Bool)

(assert (=> b!1532172 (=> (not res!1049452) (not e!853709))))

(assert (=> b!1532172 (= res!1049452 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49062 a!2804) j!70) a!2804 mask!2512) lt!663558))))

(declare-fun b!1532173 () Bool)

(declare-fun res!1049450 () Bool)

(assert (=> b!1532173 (=> (not res!1049450) (not e!853713))))

(assert (=> b!1532173 (= res!1049450 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49613 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49613 a!2804))))))

(declare-fun b!1532174 () Bool)

(declare-fun res!1049454 () Bool)

(assert (=> b!1532174 (=> (not res!1049454) (not e!853713))))

(declare-datatypes ((List!35725 0))(
  ( (Nil!35722) (Cons!35721 (h!37167 (_ BitVec 64)) (t!50426 List!35725)) )
))
(declare-fun arrayNoDuplicates!0 (array!101692 (_ BitVec 32) List!35725) Bool)

(assert (=> b!1532174 (= res!1049454 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35722))))

(declare-fun b!1532175 () Bool)

(declare-fun res!1049457 () Bool)

(assert (=> b!1532175 (=> (not res!1049457) (not e!853713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532175 (= res!1049457 (validKeyInArray!0 (select (arr!49062 a!2804) i!961)))))

(declare-fun b!1532176 () Bool)

(declare-fun res!1049446 () Bool)

(assert (=> b!1532176 (=> (not res!1049446) (not e!853713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101692 (_ BitVec 32)) Bool)

(assert (=> b!1532176 (= res!1049446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1532177 () Bool)

(declare-fun res!1049444 () Bool)

(assert (=> b!1532177 (=> (not res!1049444) (not e!853713))))

(assert (=> b!1532177 (= res!1049444 (validKeyInArray!0 (select (arr!49062 a!2804) j!70)))))

(declare-fun res!1049451 () Bool)

(assert (=> start!130586 (=> (not res!1049451) (not e!853713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130586 (= res!1049451 (validMask!0 mask!2512))))

(assert (=> start!130586 e!853713))

(assert (=> start!130586 true))

(declare-fun array_inv!38007 (array!101692) Bool)

(assert (=> start!130586 (array_inv!38007 a!2804)))

(declare-fun b!1532167 () Bool)

(declare-fun e!853714 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101692 (_ BitVec 32)) SeekEntryResult!13248)

(assert (=> b!1532167 (= e!853714 (= (seekEntry!0 (select (arr!49062 a!2804) j!70) a!2804 mask!2512) (Found!13248 j!70)))))

(declare-fun b!1532178 () Bool)

(declare-fun e!853715 () Bool)

(assert (=> b!1532178 (= e!853715 (not e!853711))))

(declare-fun res!1049448 () Bool)

(assert (=> b!1532178 (=> res!1049448 e!853711)))

(assert (=> b!1532178 (= res!1049448 (or (not (= (select (arr!49062 a!2804) j!70) lt!663553)) (= x!534 resX!21)))))

(assert (=> b!1532178 e!853714))

(declare-fun res!1049453 () Bool)

(assert (=> b!1532178 (=> (not res!1049453) (not e!853714))))

(assert (=> b!1532178 (= res!1049453 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663557 () Unit!51236)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101692 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51236)

(assert (=> b!1532178 (= lt!663557 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1532179 () Bool)

(assert (=> b!1532179 (= e!853709 e!853715)))

(declare-fun res!1049445 () Bool)

(assert (=> b!1532179 (=> (not res!1049445) (not e!853715))))

(assert (=> b!1532179 (= res!1049445 (= lt!663556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663553 mask!2512) lt!663553 lt!663559 mask!2512)))))

(assert (=> b!1532179 (= lt!663553 (select (store (arr!49062 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1532179 (= lt!663559 (array!101693 (store (arr!49062 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49613 a!2804)))))

(assert (= (and start!130586 res!1049451) b!1532170))

(assert (= (and b!1532170 res!1049455) b!1532175))

(assert (= (and b!1532175 res!1049457) b!1532177))

(assert (= (and b!1532177 res!1049444) b!1532176))

(assert (= (and b!1532176 res!1049446) b!1532174))

(assert (= (and b!1532174 res!1049454) b!1532173))

(assert (= (and b!1532173 res!1049450) b!1532168))

(assert (= (and b!1532168 res!1049447) b!1532172))

(assert (= (and b!1532172 res!1049452) b!1532179))

(assert (= (and b!1532179 res!1049445) b!1532178))

(assert (= (and b!1532178 res!1049453) b!1532167))

(assert (= (and b!1532178 (not res!1049448)) b!1532166))

(assert (= (and b!1532166 (not res!1049449)) b!1532171))

(assert (= (and b!1532171 (not res!1049456)) b!1532169))

(declare-fun m!1414925 () Bool)

(assert (=> b!1532179 m!1414925))

(assert (=> b!1532179 m!1414925))

(declare-fun m!1414927 () Bool)

(assert (=> b!1532179 m!1414927))

(declare-fun m!1414929 () Bool)

(assert (=> b!1532179 m!1414929))

(declare-fun m!1414931 () Bool)

(assert (=> b!1532179 m!1414931))

(declare-fun m!1414933 () Bool)

(assert (=> start!130586 m!1414933))

(declare-fun m!1414935 () Bool)

(assert (=> start!130586 m!1414935))

(declare-fun m!1414937 () Bool)

(assert (=> b!1532171 m!1414937))

(assert (=> b!1532171 m!1414937))

(declare-fun m!1414939 () Bool)

(assert (=> b!1532171 m!1414939))

(declare-fun m!1414941 () Bool)

(assert (=> b!1532166 m!1414941))

(declare-fun m!1414943 () Bool)

(assert (=> b!1532174 m!1414943))

(assert (=> b!1532169 m!1414937))

(assert (=> b!1532169 m!1414937))

(declare-fun m!1414945 () Bool)

(assert (=> b!1532169 m!1414945))

(declare-fun m!1414947 () Bool)

(assert (=> b!1532169 m!1414947))

(declare-fun m!1414949 () Bool)

(assert (=> b!1532169 m!1414949))

(assert (=> b!1532172 m!1414937))

(assert (=> b!1532172 m!1414937))

(declare-fun m!1414951 () Bool)

(assert (=> b!1532172 m!1414951))

(assert (=> b!1532177 m!1414937))

(assert (=> b!1532177 m!1414937))

(declare-fun m!1414953 () Bool)

(assert (=> b!1532177 m!1414953))

(declare-fun m!1414955 () Bool)

(assert (=> b!1532175 m!1414955))

(assert (=> b!1532175 m!1414955))

(declare-fun m!1414957 () Bool)

(assert (=> b!1532175 m!1414957))

(declare-fun m!1414959 () Bool)

(assert (=> b!1532176 m!1414959))

(assert (=> b!1532167 m!1414937))

(assert (=> b!1532167 m!1414937))

(declare-fun m!1414961 () Bool)

(assert (=> b!1532167 m!1414961))

(assert (=> b!1532178 m!1414937))

(declare-fun m!1414963 () Bool)

(assert (=> b!1532178 m!1414963))

(declare-fun m!1414965 () Bool)

(assert (=> b!1532178 m!1414965))

(assert (=> b!1532168 m!1414937))

(assert (=> b!1532168 m!1414937))

(declare-fun m!1414967 () Bool)

(assert (=> b!1532168 m!1414967))

(assert (=> b!1532168 m!1414967))

(assert (=> b!1532168 m!1414937))

(declare-fun m!1414969 () Bool)

(assert (=> b!1532168 m!1414969))

(push 1)


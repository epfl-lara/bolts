; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129244 () Bool)

(assert start!129244)

(declare-fun b!1516585 () Bool)

(declare-fun res!1036560 () Bool)

(declare-fun e!846249 () Bool)

(assert (=> b!1516585 (=> (not res!1036560) (not e!846249))))

(declare-datatypes ((SeekEntryResult!12931 0))(
  ( (MissingZero!12931 (index!54118 (_ BitVec 32))) (Found!12931 (index!54119 (_ BitVec 32))) (Intermediate!12931 (undefined!13743 Bool) (index!54120 (_ BitVec 32)) (x!135822 (_ BitVec 32))) (Undefined!12931) (MissingVacant!12931 (index!54121 (_ BitVec 32))) )
))
(declare-fun lt!657435 () SeekEntryResult!12931)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101013 0))(
  ( (array!101014 (arr!48739 (Array (_ BitVec 32) (_ BitVec 64))) (size!49290 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101013)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101013 (_ BitVec 32)) SeekEntryResult!12931)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516585 (= res!1036560 (= lt!657435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48739 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48739 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101014 (store (arr!48739 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49290 a!2804)) mask!2512)))))

(declare-fun b!1516586 () Bool)

(declare-fun res!1036562 () Bool)

(declare-fun e!846246 () Bool)

(assert (=> b!1516586 (=> (not res!1036562) (not e!846246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516586 (= res!1036562 (validKeyInArray!0 (select (arr!48739 a!2804) j!70)))))

(declare-fun b!1516587 () Bool)

(declare-fun res!1036569 () Bool)

(assert (=> b!1516587 (=> (not res!1036569) (not e!846246))))

(assert (=> b!1516587 (= res!1036569 (validKeyInArray!0 (select (arr!48739 a!2804) i!961)))))

(declare-fun b!1516588 () Bool)

(declare-fun e!846248 () Bool)

(assert (=> b!1516588 (= e!846249 (not e!846248))))

(declare-fun res!1036568 () Bool)

(assert (=> b!1516588 (=> res!1036568 e!846248)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516588 (= res!1036568 (or (not (= (select (arr!48739 a!2804) j!70) (select (store (arr!48739 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846250 () Bool)

(assert (=> b!1516588 e!846250))

(declare-fun res!1036570 () Bool)

(assert (=> b!1516588 (=> (not res!1036570) (not e!846250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101013 (_ BitVec 32)) Bool)

(assert (=> b!1516588 (= res!1036570 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50686 0))(
  ( (Unit!50687) )
))
(declare-fun lt!657434 () Unit!50686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101013 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50686)

(assert (=> b!1516588 (= lt!657434 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516589 () Bool)

(declare-fun e!846247 () Bool)

(assert (=> b!1516589 (= e!846247 true)))

(declare-fun lt!657436 () SeekEntryResult!12931)

(declare-fun lt!657432 () (_ BitVec 32))

(assert (=> b!1516589 (= lt!657436 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657432 (select (arr!48739 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516590 () Bool)

(assert (=> b!1516590 (= e!846246 e!846249)))

(declare-fun res!1036561 () Bool)

(assert (=> b!1516590 (=> (not res!1036561) (not e!846249))))

(declare-fun lt!657433 () SeekEntryResult!12931)

(assert (=> b!1516590 (= res!1036561 (= lt!657435 lt!657433))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516590 (= lt!657433 (Intermediate!12931 false resIndex!21 resX!21))))

(assert (=> b!1516590 (= lt!657435 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48739 a!2804) j!70) mask!2512) (select (arr!48739 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516591 () Bool)

(declare-fun res!1036563 () Bool)

(assert (=> b!1516591 (=> (not res!1036563) (not e!846246))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1516591 (= res!1036563 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49290 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49290 a!2804))))))

(declare-fun res!1036564 () Bool)

(assert (=> start!129244 (=> (not res!1036564) (not e!846246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129244 (= res!1036564 (validMask!0 mask!2512))))

(assert (=> start!129244 e!846246))

(assert (=> start!129244 true))

(declare-fun array_inv!37684 (array!101013) Bool)

(assert (=> start!129244 (array_inv!37684 a!2804)))

(declare-fun b!1516592 () Bool)

(declare-fun res!1036571 () Bool)

(assert (=> b!1516592 (=> (not res!1036571) (not e!846246))))

(assert (=> b!1516592 (= res!1036571 (and (= (size!49290 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49290 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49290 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516593 () Bool)

(declare-fun res!1036572 () Bool)

(assert (=> b!1516593 (=> (not res!1036572) (not e!846246))))

(declare-datatypes ((List!35402 0))(
  ( (Nil!35399) (Cons!35398 (h!36811 (_ BitVec 64)) (t!50103 List!35402)) )
))
(declare-fun arrayNoDuplicates!0 (array!101013 (_ BitVec 32) List!35402) Bool)

(assert (=> b!1516593 (= res!1036572 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35399))))

(declare-fun b!1516594 () Bool)

(assert (=> b!1516594 (= e!846248 e!846247)))

(declare-fun res!1036566 () Bool)

(assert (=> b!1516594 (=> res!1036566 e!846247)))

(assert (=> b!1516594 (= res!1036566 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657432 #b00000000000000000000000000000000) (bvsge lt!657432 (size!49290 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516594 (= lt!657432 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516595 () Bool)

(declare-fun res!1036565 () Bool)

(assert (=> b!1516595 (=> (not res!1036565) (not e!846249))))

(assert (=> b!1516595 (= res!1036565 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48739 a!2804) j!70) a!2804 mask!2512) lt!657433))))

(declare-fun b!1516596 () Bool)

(declare-fun res!1036567 () Bool)

(assert (=> b!1516596 (=> (not res!1036567) (not e!846246))))

(assert (=> b!1516596 (= res!1036567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516597 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101013 (_ BitVec 32)) SeekEntryResult!12931)

(assert (=> b!1516597 (= e!846250 (= (seekEntry!0 (select (arr!48739 a!2804) j!70) a!2804 mask!2512) (Found!12931 j!70)))))

(assert (= (and start!129244 res!1036564) b!1516592))

(assert (= (and b!1516592 res!1036571) b!1516587))

(assert (= (and b!1516587 res!1036569) b!1516586))

(assert (= (and b!1516586 res!1036562) b!1516596))

(assert (= (and b!1516596 res!1036567) b!1516593))

(assert (= (and b!1516593 res!1036572) b!1516591))

(assert (= (and b!1516591 res!1036563) b!1516590))

(assert (= (and b!1516590 res!1036561) b!1516595))

(assert (= (and b!1516595 res!1036565) b!1516585))

(assert (= (and b!1516585 res!1036560) b!1516588))

(assert (= (and b!1516588 res!1036570) b!1516597))

(assert (= (and b!1516588 (not res!1036568)) b!1516594))

(assert (= (and b!1516594 (not res!1036566)) b!1516589))

(declare-fun m!1399911 () Bool)

(assert (=> b!1516585 m!1399911))

(declare-fun m!1399913 () Bool)

(assert (=> b!1516585 m!1399913))

(assert (=> b!1516585 m!1399913))

(declare-fun m!1399915 () Bool)

(assert (=> b!1516585 m!1399915))

(assert (=> b!1516585 m!1399915))

(assert (=> b!1516585 m!1399913))

(declare-fun m!1399917 () Bool)

(assert (=> b!1516585 m!1399917))

(declare-fun m!1399919 () Bool)

(assert (=> b!1516587 m!1399919))

(assert (=> b!1516587 m!1399919))

(declare-fun m!1399921 () Bool)

(assert (=> b!1516587 m!1399921))

(declare-fun m!1399923 () Bool)

(assert (=> start!129244 m!1399923))

(declare-fun m!1399925 () Bool)

(assert (=> start!129244 m!1399925))

(declare-fun m!1399927 () Bool)

(assert (=> b!1516586 m!1399927))

(assert (=> b!1516586 m!1399927))

(declare-fun m!1399929 () Bool)

(assert (=> b!1516586 m!1399929))

(assert (=> b!1516589 m!1399927))

(assert (=> b!1516589 m!1399927))

(declare-fun m!1399931 () Bool)

(assert (=> b!1516589 m!1399931))

(assert (=> b!1516590 m!1399927))

(assert (=> b!1516590 m!1399927))

(declare-fun m!1399933 () Bool)

(assert (=> b!1516590 m!1399933))

(assert (=> b!1516590 m!1399933))

(assert (=> b!1516590 m!1399927))

(declare-fun m!1399935 () Bool)

(assert (=> b!1516590 m!1399935))

(assert (=> b!1516597 m!1399927))

(assert (=> b!1516597 m!1399927))

(declare-fun m!1399937 () Bool)

(assert (=> b!1516597 m!1399937))

(declare-fun m!1399939 () Bool)

(assert (=> b!1516593 m!1399939))

(declare-fun m!1399941 () Bool)

(assert (=> b!1516594 m!1399941))

(declare-fun m!1399943 () Bool)

(assert (=> b!1516596 m!1399943))

(assert (=> b!1516588 m!1399927))

(declare-fun m!1399945 () Bool)

(assert (=> b!1516588 m!1399945))

(assert (=> b!1516588 m!1399911))

(assert (=> b!1516588 m!1399913))

(declare-fun m!1399947 () Bool)

(assert (=> b!1516588 m!1399947))

(assert (=> b!1516595 m!1399927))

(assert (=> b!1516595 m!1399927))

(declare-fun m!1399949 () Bool)

(assert (=> b!1516595 m!1399949))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129258 () Bool)

(assert start!129258)

(declare-fun b!1516858 () Bool)

(declare-fun e!846376 () Bool)

(assert (=> b!1516858 (= e!846376 true)))

(declare-datatypes ((SeekEntryResult!12938 0))(
  ( (MissingZero!12938 (index!54146 (_ BitVec 32))) (Found!12938 (index!54147 (_ BitVec 32))) (Intermediate!12938 (undefined!13750 Bool) (index!54148 (_ BitVec 32)) (x!135845 (_ BitVec 32))) (Undefined!12938) (MissingVacant!12938 (index!54149 (_ BitVec 32))) )
))
(declare-fun lt!657538 () SeekEntryResult!12938)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101027 0))(
  ( (array!101028 (arr!48746 (Array (_ BitVec 32) (_ BitVec 64))) (size!49297 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101027)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!657539 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101027 (_ BitVec 32)) SeekEntryResult!12938)

(assert (=> b!1516858 (= lt!657538 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657539 (select (arr!48746 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516859 () Bool)

(declare-fun e!846374 () Bool)

(declare-fun e!846372 () Bool)

(assert (=> b!1516859 (= e!846374 (not e!846372))))

(declare-fun res!1036838 () Bool)

(assert (=> b!1516859 (=> res!1036838 e!846372)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1516859 (= res!1036838 (or (not (= (select (arr!48746 a!2804) j!70) (select (store (arr!48746 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846375 () Bool)

(assert (=> b!1516859 e!846375))

(declare-fun res!1036845 () Bool)

(assert (=> b!1516859 (=> (not res!1036845) (not e!846375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101027 (_ BitVec 32)) Bool)

(assert (=> b!1516859 (= res!1036845 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50700 0))(
  ( (Unit!50701) )
))
(declare-fun lt!657541 () Unit!50700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50700)

(assert (=> b!1516859 (= lt!657541 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516860 () Bool)

(declare-fun res!1036842 () Bool)

(declare-fun e!846373 () Bool)

(assert (=> b!1516860 (=> (not res!1036842) (not e!846373))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516860 (= res!1036842 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49297 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49297 a!2804))))))

(declare-fun b!1516861 () Bool)

(declare-fun res!1036834 () Bool)

(assert (=> b!1516861 (=> (not res!1036834) (not e!846373))))

(declare-datatypes ((List!35409 0))(
  ( (Nil!35406) (Cons!35405 (h!36818 (_ BitVec 64)) (t!50110 List!35409)) )
))
(declare-fun arrayNoDuplicates!0 (array!101027 (_ BitVec 32) List!35409) Bool)

(assert (=> b!1516861 (= res!1036834 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35406))))

(declare-fun b!1516862 () Bool)

(assert (=> b!1516862 (= e!846373 e!846374)))

(declare-fun res!1036843 () Bool)

(assert (=> b!1516862 (=> (not res!1036843) (not e!846374))))

(declare-fun lt!657540 () SeekEntryResult!12938)

(declare-fun lt!657537 () SeekEntryResult!12938)

(assert (=> b!1516862 (= res!1036843 (= lt!657540 lt!657537))))

(assert (=> b!1516862 (= lt!657537 (Intermediate!12938 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516862 (= lt!657540 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48746 a!2804) j!70) mask!2512) (select (arr!48746 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516863 () Bool)

(assert (=> b!1516863 (= e!846372 e!846376)))

(declare-fun res!1036837 () Bool)

(assert (=> b!1516863 (=> res!1036837 e!846376)))

(assert (=> b!1516863 (= res!1036837 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657539 #b00000000000000000000000000000000) (bvsge lt!657539 (size!49297 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516863 (= lt!657539 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516864 () Bool)

(declare-fun res!1036840 () Bool)

(assert (=> b!1516864 (=> (not res!1036840) (not e!846373))))

(assert (=> b!1516864 (= res!1036840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516865 () Bool)

(declare-fun res!1036835 () Bool)

(assert (=> b!1516865 (=> (not res!1036835) (not e!846373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516865 (= res!1036835 (validKeyInArray!0 (select (arr!48746 a!2804) i!961)))))

(declare-fun b!1516866 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101027 (_ BitVec 32)) SeekEntryResult!12938)

(assert (=> b!1516866 (= e!846375 (= (seekEntry!0 (select (arr!48746 a!2804) j!70) a!2804 mask!2512) (Found!12938 j!70)))))

(declare-fun res!1036844 () Bool)

(assert (=> start!129258 (=> (not res!1036844) (not e!846373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129258 (= res!1036844 (validMask!0 mask!2512))))

(assert (=> start!129258 e!846373))

(assert (=> start!129258 true))

(declare-fun array_inv!37691 (array!101027) Bool)

(assert (=> start!129258 (array_inv!37691 a!2804)))

(declare-fun b!1516867 () Bool)

(declare-fun res!1036836 () Bool)

(assert (=> b!1516867 (=> (not res!1036836) (not e!846374))))

(assert (=> b!1516867 (= res!1036836 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48746 a!2804) j!70) a!2804 mask!2512) lt!657537))))

(declare-fun b!1516868 () Bool)

(declare-fun res!1036833 () Bool)

(assert (=> b!1516868 (=> (not res!1036833) (not e!846373))))

(assert (=> b!1516868 (= res!1036833 (validKeyInArray!0 (select (arr!48746 a!2804) j!70)))))

(declare-fun b!1516869 () Bool)

(declare-fun res!1036841 () Bool)

(assert (=> b!1516869 (=> (not res!1036841) (not e!846374))))

(assert (=> b!1516869 (= res!1036841 (= lt!657540 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48746 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48746 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101028 (store (arr!48746 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49297 a!2804)) mask!2512)))))

(declare-fun b!1516870 () Bool)

(declare-fun res!1036839 () Bool)

(assert (=> b!1516870 (=> (not res!1036839) (not e!846373))))

(assert (=> b!1516870 (= res!1036839 (and (= (size!49297 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49297 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49297 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129258 res!1036844) b!1516870))

(assert (= (and b!1516870 res!1036839) b!1516865))

(assert (= (and b!1516865 res!1036835) b!1516868))

(assert (= (and b!1516868 res!1036833) b!1516864))

(assert (= (and b!1516864 res!1036840) b!1516861))

(assert (= (and b!1516861 res!1036834) b!1516860))

(assert (= (and b!1516860 res!1036842) b!1516862))

(assert (= (and b!1516862 res!1036843) b!1516867))

(assert (= (and b!1516867 res!1036836) b!1516869))

(assert (= (and b!1516869 res!1036841) b!1516859))

(assert (= (and b!1516859 res!1036845) b!1516866))

(assert (= (and b!1516859 (not res!1036838)) b!1516863))

(assert (= (and b!1516863 (not res!1036837)) b!1516858))

(declare-fun m!1400191 () Bool)

(assert (=> b!1516866 m!1400191))

(assert (=> b!1516866 m!1400191))

(declare-fun m!1400193 () Bool)

(assert (=> b!1516866 m!1400193))

(declare-fun m!1400195 () Bool)

(assert (=> b!1516864 m!1400195))

(declare-fun m!1400197 () Bool)

(assert (=> b!1516865 m!1400197))

(assert (=> b!1516865 m!1400197))

(declare-fun m!1400199 () Bool)

(assert (=> b!1516865 m!1400199))

(assert (=> b!1516862 m!1400191))

(assert (=> b!1516862 m!1400191))

(declare-fun m!1400201 () Bool)

(assert (=> b!1516862 m!1400201))

(assert (=> b!1516862 m!1400201))

(assert (=> b!1516862 m!1400191))

(declare-fun m!1400203 () Bool)

(assert (=> b!1516862 m!1400203))

(declare-fun m!1400205 () Bool)

(assert (=> b!1516869 m!1400205))

(declare-fun m!1400207 () Bool)

(assert (=> b!1516869 m!1400207))

(assert (=> b!1516869 m!1400207))

(declare-fun m!1400209 () Bool)

(assert (=> b!1516869 m!1400209))

(assert (=> b!1516869 m!1400209))

(assert (=> b!1516869 m!1400207))

(declare-fun m!1400211 () Bool)

(assert (=> b!1516869 m!1400211))

(assert (=> b!1516858 m!1400191))

(assert (=> b!1516858 m!1400191))

(declare-fun m!1400213 () Bool)

(assert (=> b!1516858 m!1400213))

(declare-fun m!1400215 () Bool)

(assert (=> start!129258 m!1400215))

(declare-fun m!1400217 () Bool)

(assert (=> start!129258 m!1400217))

(declare-fun m!1400219 () Bool)

(assert (=> b!1516861 m!1400219))

(assert (=> b!1516868 m!1400191))

(assert (=> b!1516868 m!1400191))

(declare-fun m!1400221 () Bool)

(assert (=> b!1516868 m!1400221))

(declare-fun m!1400223 () Bool)

(assert (=> b!1516863 m!1400223))

(assert (=> b!1516859 m!1400191))

(declare-fun m!1400225 () Bool)

(assert (=> b!1516859 m!1400225))

(assert (=> b!1516859 m!1400205))

(assert (=> b!1516859 m!1400207))

(declare-fun m!1400227 () Bool)

(assert (=> b!1516859 m!1400227))

(assert (=> b!1516867 m!1400191))

(assert (=> b!1516867 m!1400191))

(declare-fun m!1400229 () Bool)

(assert (=> b!1516867 m!1400229))

(check-sat (not b!1516866) (not b!1516867) (not b!1516864) (not b!1516868) (not b!1516863) (not b!1516865) (not b!1516859) (not b!1516858) (not b!1516869) (not b!1516861) (not start!129258) (not b!1516862))
(check-sat)

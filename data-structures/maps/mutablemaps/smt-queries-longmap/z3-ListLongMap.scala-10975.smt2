; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128562 () Bool)

(assert start!128562)

(declare-fun b!1506902 () Bool)

(declare-fun res!1027297 () Bool)

(declare-fun e!842059 () Bool)

(assert (=> b!1506902 (=> (not res!1027297) (not e!842059))))

(declare-datatypes ((array!100487 0))(
  ( (array!100488 (arr!48482 (Array (_ BitVec 32) (_ BitVec 64))) (size!49033 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100487)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506902 (= res!1027297 (validKeyInArray!0 (select (arr!48482 a!2804) j!70)))))

(declare-fun b!1506903 () Bool)

(declare-fun res!1027299 () Bool)

(assert (=> b!1506903 (=> (not res!1027299) (not e!842059))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1506903 (= res!1027299 (and (= (size!49033 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49033 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49033 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506904 () Bool)

(declare-fun res!1027300 () Bool)

(assert (=> b!1506904 (=> (not res!1027300) (not e!842059))))

(assert (=> b!1506904 (= res!1027300 (validKeyInArray!0 (select (arr!48482 a!2804) i!961)))))

(declare-fun b!1506905 () Bool)

(declare-fun e!842060 () Bool)

(assert (=> b!1506905 (= e!842059 e!842060)))

(declare-fun res!1027298 () Bool)

(assert (=> b!1506905 (=> (not res!1027298) (not e!842060))))

(declare-datatypes ((SeekEntryResult!12674 0))(
  ( (MissingZero!12674 (index!53090 (_ BitVec 32))) (Found!12674 (index!53091 (_ BitVec 32))) (Intermediate!12674 (undefined!13486 Bool) (index!53092 (_ BitVec 32)) (x!134853 (_ BitVec 32))) (Undefined!12674) (MissingVacant!12674 (index!53093 (_ BitVec 32))) )
))
(declare-fun lt!654247 () SeekEntryResult!12674)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100487 (_ BitVec 32)) SeekEntryResult!12674)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506905 (= res!1027298 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48482 a!2804) j!70) mask!2512) (select (arr!48482 a!2804) j!70) a!2804 mask!2512) lt!654247))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1506905 (= lt!654247 (Intermediate!12674 false resIndex!21 resX!21))))

(declare-fun b!1506906 () Bool)

(declare-fun res!1027303 () Bool)

(assert (=> b!1506906 (=> (not res!1027303) (not e!842059))))

(declare-datatypes ((List!35145 0))(
  ( (Nil!35142) (Cons!35141 (h!36542 (_ BitVec 64)) (t!49846 List!35145)) )
))
(declare-fun arrayNoDuplicates!0 (array!100487 (_ BitVec 32) List!35145) Bool)

(assert (=> b!1506906 (= res!1027303 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35142))))

(declare-fun b!1506907 () Bool)

(declare-fun res!1027305 () Bool)

(assert (=> b!1506907 (=> (not res!1027305) (not e!842059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100487 (_ BitVec 32)) Bool)

(assert (=> b!1506907 (= res!1027305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506908 () Bool)

(declare-fun res!1027304 () Bool)

(assert (=> b!1506908 (=> (not res!1027304) (not e!842060))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1506908 (= res!1027304 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48482 a!2804) j!70) a!2804 mask!2512) lt!654247))))

(declare-fun b!1506909 () Bool)

(declare-fun res!1027302 () Bool)

(assert (=> b!1506909 (=> (not res!1027302) (not e!842059))))

(assert (=> b!1506909 (= res!1027302 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49033 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49033 a!2804))))))

(declare-fun b!1506910 () Bool)

(assert (=> b!1506910 (= e!842060 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun res!1027301 () Bool)

(assert (=> start!128562 (=> (not res!1027301) (not e!842059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128562 (= res!1027301 (validMask!0 mask!2512))))

(assert (=> start!128562 e!842059))

(assert (=> start!128562 true))

(declare-fun array_inv!37427 (array!100487) Bool)

(assert (=> start!128562 (array_inv!37427 a!2804)))

(assert (= (and start!128562 res!1027301) b!1506903))

(assert (= (and b!1506903 res!1027299) b!1506904))

(assert (= (and b!1506904 res!1027300) b!1506902))

(assert (= (and b!1506902 res!1027297) b!1506907))

(assert (= (and b!1506907 res!1027305) b!1506906))

(assert (= (and b!1506906 res!1027303) b!1506909))

(assert (= (and b!1506909 res!1027302) b!1506905))

(assert (= (and b!1506905 res!1027298) b!1506908))

(assert (= (and b!1506908 res!1027304) b!1506910))

(declare-fun m!1389847 () Bool)

(assert (=> b!1506905 m!1389847))

(assert (=> b!1506905 m!1389847))

(declare-fun m!1389849 () Bool)

(assert (=> b!1506905 m!1389849))

(assert (=> b!1506905 m!1389849))

(assert (=> b!1506905 m!1389847))

(declare-fun m!1389851 () Bool)

(assert (=> b!1506905 m!1389851))

(declare-fun m!1389853 () Bool)

(assert (=> b!1506907 m!1389853))

(assert (=> b!1506902 m!1389847))

(assert (=> b!1506902 m!1389847))

(declare-fun m!1389855 () Bool)

(assert (=> b!1506902 m!1389855))

(declare-fun m!1389857 () Bool)

(assert (=> b!1506904 m!1389857))

(assert (=> b!1506904 m!1389857))

(declare-fun m!1389859 () Bool)

(assert (=> b!1506904 m!1389859))

(declare-fun m!1389861 () Bool)

(assert (=> b!1506906 m!1389861))

(assert (=> b!1506908 m!1389847))

(assert (=> b!1506908 m!1389847))

(declare-fun m!1389863 () Bool)

(assert (=> b!1506908 m!1389863))

(declare-fun m!1389865 () Bool)

(assert (=> start!128562 m!1389865))

(declare-fun m!1389867 () Bool)

(assert (=> start!128562 m!1389867))

(check-sat (not b!1506908) (not start!128562) (not b!1506902) (not b!1506904) (not b!1506907) (not b!1506905) (not b!1506906))
(check-sat)

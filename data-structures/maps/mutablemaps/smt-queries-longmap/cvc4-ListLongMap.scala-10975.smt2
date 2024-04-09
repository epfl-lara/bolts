; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128564 () Bool)

(assert start!128564)

(declare-fun b!1506929 () Bool)

(declare-fun e!842068 () Bool)

(declare-fun e!842069 () Bool)

(assert (=> b!1506929 (= e!842068 e!842069)))

(declare-fun res!1027330 () Bool)

(assert (=> b!1506929 (=> (not res!1027330) (not e!842069))))

(declare-datatypes ((SeekEntryResult!12675 0))(
  ( (MissingZero!12675 (index!53094 (_ BitVec 32))) (Found!12675 (index!53095 (_ BitVec 32))) (Intermediate!12675 (undefined!13487 Bool) (index!53096 (_ BitVec 32)) (x!134854 (_ BitVec 32))) (Undefined!12675) (MissingVacant!12675 (index!53097 (_ BitVec 32))) )
))
(declare-fun lt!654250 () SeekEntryResult!12675)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100489 0))(
  ( (array!100490 (arr!48483 (Array (_ BitVec 32) (_ BitVec 64))) (size!49034 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100489)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100489 (_ BitVec 32)) SeekEntryResult!12675)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506929 (= res!1027330 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48483 a!2804) j!70) mask!2512) (select (arr!48483 a!2804) j!70) a!2804 mask!2512) lt!654250))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1506929 (= lt!654250 (Intermediate!12675 false resIndex!21 resX!21))))

(declare-fun b!1506930 () Bool)

(declare-fun res!1027329 () Bool)

(assert (=> b!1506930 (=> (not res!1027329) (not e!842068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100489 (_ BitVec 32)) Bool)

(assert (=> b!1506930 (= res!1027329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1027331 () Bool)

(assert (=> start!128564 (=> (not res!1027331) (not e!842068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128564 (= res!1027331 (validMask!0 mask!2512))))

(assert (=> start!128564 e!842068))

(assert (=> start!128564 true))

(declare-fun array_inv!37428 (array!100489) Bool)

(assert (=> start!128564 (array_inv!37428 a!2804)))

(declare-fun b!1506931 () Bool)

(declare-fun res!1027326 () Bool)

(assert (=> b!1506931 (=> (not res!1027326) (not e!842068))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1506931 (= res!1027326 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49034 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49034 a!2804))))))

(declare-fun b!1506932 () Bool)

(declare-fun res!1027327 () Bool)

(assert (=> b!1506932 (=> (not res!1027327) (not e!842068))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506932 (= res!1027327 (and (= (size!49034 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49034 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49034 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506933 () Bool)

(assert (=> b!1506933 (= e!842069 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun b!1506934 () Bool)

(declare-fun res!1027328 () Bool)

(assert (=> b!1506934 (=> (not res!1027328) (not e!842068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506934 (= res!1027328 (validKeyInArray!0 (select (arr!48483 a!2804) j!70)))))

(declare-fun b!1506935 () Bool)

(declare-fun res!1027332 () Bool)

(assert (=> b!1506935 (=> (not res!1027332) (not e!842069))))

(assert (=> b!1506935 (= res!1027332 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48483 a!2804) j!70) a!2804 mask!2512) lt!654250))))

(declare-fun b!1506936 () Bool)

(declare-fun res!1027324 () Bool)

(assert (=> b!1506936 (=> (not res!1027324) (not e!842068))))

(declare-datatypes ((List!35146 0))(
  ( (Nil!35143) (Cons!35142 (h!36543 (_ BitVec 64)) (t!49847 List!35146)) )
))
(declare-fun arrayNoDuplicates!0 (array!100489 (_ BitVec 32) List!35146) Bool)

(assert (=> b!1506936 (= res!1027324 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35143))))

(declare-fun b!1506937 () Bool)

(declare-fun res!1027325 () Bool)

(assert (=> b!1506937 (=> (not res!1027325) (not e!842068))))

(assert (=> b!1506937 (= res!1027325 (validKeyInArray!0 (select (arr!48483 a!2804) i!961)))))

(assert (= (and start!128564 res!1027331) b!1506932))

(assert (= (and b!1506932 res!1027327) b!1506937))

(assert (= (and b!1506937 res!1027325) b!1506934))

(assert (= (and b!1506934 res!1027328) b!1506930))

(assert (= (and b!1506930 res!1027329) b!1506936))

(assert (= (and b!1506936 res!1027324) b!1506931))

(assert (= (and b!1506931 res!1027326) b!1506929))

(assert (= (and b!1506929 res!1027330) b!1506935))

(assert (= (and b!1506935 res!1027332) b!1506933))

(declare-fun m!1389869 () Bool)

(assert (=> start!128564 m!1389869))

(declare-fun m!1389871 () Bool)

(assert (=> start!128564 m!1389871))

(declare-fun m!1389873 () Bool)

(assert (=> b!1506934 m!1389873))

(assert (=> b!1506934 m!1389873))

(declare-fun m!1389875 () Bool)

(assert (=> b!1506934 m!1389875))

(declare-fun m!1389877 () Bool)

(assert (=> b!1506936 m!1389877))

(assert (=> b!1506935 m!1389873))

(assert (=> b!1506935 m!1389873))

(declare-fun m!1389879 () Bool)

(assert (=> b!1506935 m!1389879))

(assert (=> b!1506929 m!1389873))

(assert (=> b!1506929 m!1389873))

(declare-fun m!1389881 () Bool)

(assert (=> b!1506929 m!1389881))

(assert (=> b!1506929 m!1389881))

(assert (=> b!1506929 m!1389873))

(declare-fun m!1389883 () Bool)

(assert (=> b!1506929 m!1389883))

(declare-fun m!1389885 () Bool)

(assert (=> b!1506937 m!1389885))

(assert (=> b!1506937 m!1389885))

(declare-fun m!1389887 () Bool)

(assert (=> b!1506937 m!1389887))

(declare-fun m!1389889 () Bool)

(assert (=> b!1506930 m!1389889))

(push 1)

(assert (not b!1506930))

(assert (not start!128564))

(assert (not b!1506929))

(assert (not b!1506934))


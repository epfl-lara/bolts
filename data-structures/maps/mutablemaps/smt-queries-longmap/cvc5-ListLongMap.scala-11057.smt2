; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129220 () Bool)

(assert start!129220)

(declare-fun b!1516149 () Bool)

(declare-fun res!1036129 () Bool)

(declare-fun e!846062 () Bool)

(assert (=> b!1516149 (=> (not res!1036129) (not e!846062))))

(declare-datatypes ((array!100989 0))(
  ( (array!100990 (arr!48727 (Array (_ BitVec 32) (_ BitVec 64))) (size!49278 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100989)

(declare-datatypes ((List!35390 0))(
  ( (Nil!35387) (Cons!35386 (h!36799 (_ BitVec 64)) (t!50091 List!35390)) )
))
(declare-fun arrayNoDuplicates!0 (array!100989 (_ BitVec 32) List!35390) Bool)

(assert (=> b!1516149 (= res!1036129 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35387))))

(declare-fun b!1516150 () Bool)

(declare-fun res!1036128 () Bool)

(assert (=> b!1516150 (=> (not res!1036128) (not e!846062))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516150 (= res!1036128 (validKeyInArray!0 (select (arr!48727 a!2804) i!961)))))

(declare-fun b!1516151 () Bool)

(declare-fun res!1036133 () Bool)

(assert (=> b!1516151 (=> (not res!1036133) (not e!846062))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516151 (= res!1036133 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49278 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49278 a!2804))))))

(declare-fun b!1516152 () Bool)

(declare-fun res!1036125 () Bool)

(assert (=> b!1516152 (=> (not res!1036125) (not e!846062))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1516152 (= res!1036125 (and (= (size!49278 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49278 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49278 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516153 () Bool)

(declare-fun res!1036131 () Bool)

(assert (=> b!1516153 (=> (not res!1036131) (not e!846062))))

(assert (=> b!1516153 (= res!1036131 (validKeyInArray!0 (select (arr!48727 a!2804) j!70)))))

(declare-fun e!846064 () Bool)

(declare-fun b!1516154 () Bool)

(assert (=> b!1516154 (= e!846064 (not (or (not (= (select (arr!48727 a!2804) j!70) (select (store (arr!48727 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21) (bvslt mask!2512 #b00000000000000000000000000000000) (bvslt index!487 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun e!846065 () Bool)

(assert (=> b!1516154 e!846065))

(declare-fun res!1036124 () Bool)

(assert (=> b!1516154 (=> (not res!1036124) (not e!846065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100989 (_ BitVec 32)) Bool)

(assert (=> b!1516154 (= res!1036124 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50662 0))(
  ( (Unit!50663) )
))
(declare-fun lt!657286 () Unit!50662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100989 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50662)

(assert (=> b!1516154 (= lt!657286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516155 () Bool)

(declare-fun res!1036127 () Bool)

(assert (=> b!1516155 (=> (not res!1036127) (not e!846062))))

(assert (=> b!1516155 (= res!1036127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516156 () Bool)

(declare-datatypes ((SeekEntryResult!12919 0))(
  ( (MissingZero!12919 (index!54070 (_ BitVec 32))) (Found!12919 (index!54071 (_ BitVec 32))) (Intermediate!12919 (undefined!13731 Bool) (index!54072 (_ BitVec 32)) (x!135778 (_ BitVec 32))) (Undefined!12919) (MissingVacant!12919 (index!54073 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100989 (_ BitVec 32)) SeekEntryResult!12919)

(assert (=> b!1516156 (= e!846065 (= (seekEntry!0 (select (arr!48727 a!2804) j!70) a!2804 mask!2512) (Found!12919 j!70)))))

(declare-fun b!1516157 () Bool)

(declare-fun res!1036130 () Bool)

(assert (=> b!1516157 (=> (not res!1036130) (not e!846064))))

(declare-fun lt!657284 () SeekEntryResult!12919)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100989 (_ BitVec 32)) SeekEntryResult!12919)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516157 (= res!1036130 (= lt!657284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48727 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48727 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100990 (store (arr!48727 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49278 a!2804)) mask!2512)))))

(declare-fun res!1036126 () Bool)

(assert (=> start!129220 (=> (not res!1036126) (not e!846062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129220 (= res!1036126 (validMask!0 mask!2512))))

(assert (=> start!129220 e!846062))

(assert (=> start!129220 true))

(declare-fun array_inv!37672 (array!100989) Bool)

(assert (=> start!129220 (array_inv!37672 a!2804)))

(declare-fun b!1516158 () Bool)

(assert (=> b!1516158 (= e!846062 e!846064)))

(declare-fun res!1036132 () Bool)

(assert (=> b!1516158 (=> (not res!1036132) (not e!846064))))

(declare-fun lt!657285 () SeekEntryResult!12919)

(assert (=> b!1516158 (= res!1036132 (= lt!657284 lt!657285))))

(assert (=> b!1516158 (= lt!657285 (Intermediate!12919 false resIndex!21 resX!21))))

(assert (=> b!1516158 (= lt!657284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48727 a!2804) j!70) mask!2512) (select (arr!48727 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516159 () Bool)

(declare-fun res!1036134 () Bool)

(assert (=> b!1516159 (=> (not res!1036134) (not e!846064))))

(assert (=> b!1516159 (= res!1036134 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48727 a!2804) j!70) a!2804 mask!2512) lt!657285))))

(assert (= (and start!129220 res!1036126) b!1516152))

(assert (= (and b!1516152 res!1036125) b!1516150))

(assert (= (and b!1516150 res!1036128) b!1516153))

(assert (= (and b!1516153 res!1036131) b!1516155))

(assert (= (and b!1516155 res!1036127) b!1516149))

(assert (= (and b!1516149 res!1036129) b!1516151))

(assert (= (and b!1516151 res!1036133) b!1516158))

(assert (= (and b!1516158 res!1036132) b!1516159))

(assert (= (and b!1516159 res!1036134) b!1516157))

(assert (= (and b!1516157 res!1036130) b!1516154))

(assert (= (and b!1516154 res!1036124) b!1516156))

(declare-fun m!1399455 () Bool)

(assert (=> b!1516157 m!1399455))

(declare-fun m!1399457 () Bool)

(assert (=> b!1516157 m!1399457))

(assert (=> b!1516157 m!1399457))

(declare-fun m!1399459 () Bool)

(assert (=> b!1516157 m!1399459))

(assert (=> b!1516157 m!1399459))

(assert (=> b!1516157 m!1399457))

(declare-fun m!1399461 () Bool)

(assert (=> b!1516157 m!1399461))

(declare-fun m!1399463 () Bool)

(assert (=> b!1516149 m!1399463))

(declare-fun m!1399465 () Bool)

(assert (=> b!1516150 m!1399465))

(assert (=> b!1516150 m!1399465))

(declare-fun m!1399467 () Bool)

(assert (=> b!1516150 m!1399467))

(declare-fun m!1399469 () Bool)

(assert (=> b!1516155 m!1399469))

(declare-fun m!1399471 () Bool)

(assert (=> b!1516158 m!1399471))

(assert (=> b!1516158 m!1399471))

(declare-fun m!1399473 () Bool)

(assert (=> b!1516158 m!1399473))

(assert (=> b!1516158 m!1399473))

(assert (=> b!1516158 m!1399471))

(declare-fun m!1399475 () Bool)

(assert (=> b!1516158 m!1399475))

(assert (=> b!1516156 m!1399471))

(assert (=> b!1516156 m!1399471))

(declare-fun m!1399477 () Bool)

(assert (=> b!1516156 m!1399477))

(assert (=> b!1516154 m!1399471))

(declare-fun m!1399479 () Bool)

(assert (=> b!1516154 m!1399479))

(assert (=> b!1516154 m!1399455))

(assert (=> b!1516154 m!1399457))

(declare-fun m!1399481 () Bool)

(assert (=> b!1516154 m!1399481))

(assert (=> b!1516153 m!1399471))

(assert (=> b!1516153 m!1399471))

(declare-fun m!1399483 () Bool)

(assert (=> b!1516153 m!1399483))

(assert (=> b!1516159 m!1399471))

(assert (=> b!1516159 m!1399471))

(declare-fun m!1399485 () Bool)

(assert (=> b!1516159 m!1399485))

(declare-fun m!1399487 () Bool)

(assert (=> start!129220 m!1399487))

(declare-fun m!1399489 () Bool)

(assert (=> start!129220 m!1399489))

(push 1)

(assert (not b!1516153))

(assert (not b!1516158))

(assert (not b!1516159))

(assert (not b!1516157))

(assert (not start!129220))

(assert (not b!1516154))

(assert (not b!1516155))

(assert (not b!1516149))

(assert (not b!1516150))

(assert (not b!1516156))

(check-sat)

(pop 1)

(push 1)

(check-sat)


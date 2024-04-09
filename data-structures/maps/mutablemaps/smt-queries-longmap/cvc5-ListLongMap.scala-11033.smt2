; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129076 () Bool)

(assert start!129076)

(declare-fun res!1033224 () Bool)

(declare-fun e!844604 () Bool)

(assert (=> start!129076 (=> (not res!1033224) (not e!844604))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129076 (= res!1033224 (validMask!0 mask!2512))))

(assert (=> start!129076 e!844604))

(assert (=> start!129076 true))

(declare-datatypes ((array!100845 0))(
  ( (array!100846 (arr!48655 (Array (_ BitVec 32) (_ BitVec 64))) (size!49206 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100845)

(declare-fun array_inv!37600 (array!100845) Bool)

(assert (=> start!129076 (array_inv!37600 a!2804)))

(declare-fun b!1513248 () Bool)

(declare-fun e!844602 () Bool)

(assert (=> b!1513248 (= e!844604 e!844602)))

(declare-fun res!1033228 () Bool)

(assert (=> b!1513248 (=> (not res!1033228) (not e!844602))))

(declare-datatypes ((SeekEntryResult!12847 0))(
  ( (MissingZero!12847 (index!53782 (_ BitVec 32))) (Found!12847 (index!53783 (_ BitVec 32))) (Intermediate!12847 (undefined!13659 Bool) (index!53784 (_ BitVec 32)) (x!135514 (_ BitVec 32))) (Undefined!12847) (MissingVacant!12847 (index!53785 (_ BitVec 32))) )
))
(declare-fun lt!655888 () SeekEntryResult!12847)

(declare-fun lt!655885 () SeekEntryResult!12847)

(assert (=> b!1513248 (= res!1033228 (= lt!655888 lt!655885))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513248 (= lt!655885 (Intermediate!12847 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100845 (_ BitVec 32)) SeekEntryResult!12847)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513248 (= lt!655888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48655 a!2804) j!70) mask!2512) (select (arr!48655 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!844601 () Bool)

(declare-fun lt!655887 () (_ BitVec 64))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun b!1513249 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!655886 () array!100845)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100845 (_ BitVec 32)) SeekEntryResult!12847)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100845 (_ BitVec 32)) SeekEntryResult!12847)

(assert (=> b!1513249 (= e!844601 (= (seekEntryOrOpen!0 lt!655887 lt!655886 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655887 lt!655886 mask!2512)))))

(declare-fun b!1513250 () Bool)

(declare-fun res!1033230 () Bool)

(assert (=> b!1513250 (=> (not res!1033230) (not e!844604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513250 (= res!1033230 (validKeyInArray!0 (select (arr!48655 a!2804) j!70)))))

(declare-fun b!1513251 () Bool)

(declare-fun e!844606 () Bool)

(assert (=> b!1513251 (= e!844606 (not true))))

(declare-fun e!844603 () Bool)

(assert (=> b!1513251 e!844603))

(declare-fun res!1033235 () Bool)

(assert (=> b!1513251 (=> (not res!1033235) (not e!844603))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100845 (_ BitVec 32)) Bool)

(assert (=> b!1513251 (= res!1033235 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50518 0))(
  ( (Unit!50519) )
))
(declare-fun lt!655884 () Unit!50518)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100845 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50518)

(assert (=> b!1513251 (= lt!655884 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513252 () Bool)

(declare-fun res!1033234 () Bool)

(assert (=> b!1513252 (=> (not res!1033234) (not e!844604))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513252 (= res!1033234 (and (= (size!49206 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49206 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49206 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513253 () Bool)

(declare-fun res!1033226 () Bool)

(assert (=> b!1513253 (=> (not res!1033226) (not e!844603))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100845 (_ BitVec 32)) SeekEntryResult!12847)

(assert (=> b!1513253 (= res!1033226 (= (seekEntry!0 (select (arr!48655 a!2804) j!70) a!2804 mask!2512) (Found!12847 j!70)))))

(declare-fun b!1513254 () Bool)

(assert (=> b!1513254 (= e!844602 e!844606)))

(declare-fun res!1033223 () Bool)

(assert (=> b!1513254 (=> (not res!1033223) (not e!844606))))

(assert (=> b!1513254 (= res!1033223 (= lt!655888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655887 mask!2512) lt!655887 lt!655886 mask!2512)))))

(assert (=> b!1513254 (= lt!655887 (select (store (arr!48655 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513254 (= lt!655886 (array!100846 (store (arr!48655 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49206 a!2804)))))

(declare-fun b!1513255 () Bool)

(declare-fun e!844607 () Bool)

(assert (=> b!1513255 (= e!844607 e!844601)))

(declare-fun res!1033229 () Bool)

(assert (=> b!1513255 (=> (not res!1033229) (not e!844601))))

(assert (=> b!1513255 (= res!1033229 (= (seekEntryOrOpen!0 (select (arr!48655 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48655 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513256 () Bool)

(declare-fun res!1033225 () Bool)

(assert (=> b!1513256 (=> (not res!1033225) (not e!844604))))

(declare-datatypes ((List!35318 0))(
  ( (Nil!35315) (Cons!35314 (h!36727 (_ BitVec 64)) (t!50019 List!35318)) )
))
(declare-fun arrayNoDuplicates!0 (array!100845 (_ BitVec 32) List!35318) Bool)

(assert (=> b!1513256 (= res!1033225 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35315))))

(declare-fun b!1513257 () Bool)

(declare-fun res!1033231 () Bool)

(assert (=> b!1513257 (=> (not res!1033231) (not e!844604))))

(assert (=> b!1513257 (= res!1033231 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49206 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49206 a!2804))))))

(declare-fun b!1513258 () Bool)

(declare-fun res!1033236 () Bool)

(assert (=> b!1513258 (=> (not res!1033236) (not e!844604))))

(assert (=> b!1513258 (= res!1033236 (validKeyInArray!0 (select (arr!48655 a!2804) i!961)))))

(declare-fun b!1513259 () Bool)

(assert (=> b!1513259 (= e!844603 e!844607)))

(declare-fun res!1033233 () Bool)

(assert (=> b!1513259 (=> res!1033233 e!844607)))

(assert (=> b!1513259 (= res!1033233 (or (not (= (select (arr!48655 a!2804) j!70) lt!655887)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48655 a!2804) index!487) (select (arr!48655 a!2804) j!70)) (not (= (select (arr!48655 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513260 () Bool)

(declare-fun res!1033232 () Bool)

(assert (=> b!1513260 (=> (not res!1033232) (not e!844602))))

(assert (=> b!1513260 (= res!1033232 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48655 a!2804) j!70) a!2804 mask!2512) lt!655885))))

(declare-fun b!1513261 () Bool)

(declare-fun res!1033227 () Bool)

(assert (=> b!1513261 (=> (not res!1033227) (not e!844604))))

(assert (=> b!1513261 (= res!1033227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129076 res!1033224) b!1513252))

(assert (= (and b!1513252 res!1033234) b!1513258))

(assert (= (and b!1513258 res!1033236) b!1513250))

(assert (= (and b!1513250 res!1033230) b!1513261))

(assert (= (and b!1513261 res!1033227) b!1513256))

(assert (= (and b!1513256 res!1033225) b!1513257))

(assert (= (and b!1513257 res!1033231) b!1513248))

(assert (= (and b!1513248 res!1033228) b!1513260))

(assert (= (and b!1513260 res!1033232) b!1513254))

(assert (= (and b!1513254 res!1033223) b!1513251))

(assert (= (and b!1513251 res!1033235) b!1513253))

(assert (= (and b!1513253 res!1033226) b!1513259))

(assert (= (and b!1513259 (not res!1033233)) b!1513255))

(assert (= (and b!1513255 res!1033229) b!1513249))

(declare-fun m!1396149 () Bool)

(assert (=> b!1513249 m!1396149))

(declare-fun m!1396151 () Bool)

(assert (=> b!1513249 m!1396151))

(declare-fun m!1396153 () Bool)

(assert (=> b!1513256 m!1396153))

(declare-fun m!1396155 () Bool)

(assert (=> start!129076 m!1396155))

(declare-fun m!1396157 () Bool)

(assert (=> start!129076 m!1396157))

(declare-fun m!1396159 () Bool)

(assert (=> b!1513261 m!1396159))

(declare-fun m!1396161 () Bool)

(assert (=> b!1513254 m!1396161))

(assert (=> b!1513254 m!1396161))

(declare-fun m!1396163 () Bool)

(assert (=> b!1513254 m!1396163))

(declare-fun m!1396165 () Bool)

(assert (=> b!1513254 m!1396165))

(declare-fun m!1396167 () Bool)

(assert (=> b!1513254 m!1396167))

(declare-fun m!1396169 () Bool)

(assert (=> b!1513258 m!1396169))

(assert (=> b!1513258 m!1396169))

(declare-fun m!1396171 () Bool)

(assert (=> b!1513258 m!1396171))

(declare-fun m!1396173 () Bool)

(assert (=> b!1513260 m!1396173))

(assert (=> b!1513260 m!1396173))

(declare-fun m!1396175 () Bool)

(assert (=> b!1513260 m!1396175))

(declare-fun m!1396177 () Bool)

(assert (=> b!1513251 m!1396177))

(declare-fun m!1396179 () Bool)

(assert (=> b!1513251 m!1396179))

(assert (=> b!1513259 m!1396173))

(declare-fun m!1396181 () Bool)

(assert (=> b!1513259 m!1396181))

(assert (=> b!1513253 m!1396173))

(assert (=> b!1513253 m!1396173))

(declare-fun m!1396183 () Bool)

(assert (=> b!1513253 m!1396183))

(assert (=> b!1513250 m!1396173))

(assert (=> b!1513250 m!1396173))

(declare-fun m!1396185 () Bool)

(assert (=> b!1513250 m!1396185))

(assert (=> b!1513248 m!1396173))

(assert (=> b!1513248 m!1396173))

(declare-fun m!1396187 () Bool)

(assert (=> b!1513248 m!1396187))

(assert (=> b!1513248 m!1396187))

(assert (=> b!1513248 m!1396173))

(declare-fun m!1396189 () Bool)

(assert (=> b!1513248 m!1396189))

(assert (=> b!1513255 m!1396173))

(assert (=> b!1513255 m!1396173))

(declare-fun m!1396191 () Bool)

(assert (=> b!1513255 m!1396191))

(assert (=> b!1513255 m!1396173))

(declare-fun m!1396193 () Bool)

(assert (=> b!1513255 m!1396193))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129378 () Bool)

(assert start!129378)

(declare-fun b!1519257 () Bool)

(declare-fun e!847514 () Bool)

(declare-fun e!847511 () Bool)

(assert (=> b!1519257 (= e!847514 (not e!847511))))

(declare-fun res!1039244 () Bool)

(assert (=> b!1519257 (=> res!1039244 e!847511)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((array!101147 0))(
  ( (array!101148 (arr!48806 (Array (_ BitVec 32) (_ BitVec 64))) (size!49357 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101147)

(declare-fun lt!658555 () (_ BitVec 64))

(assert (=> b!1519257 (= res!1039244 (or (not (= (select (arr!48806 a!2804) j!70) lt!658555)) (= x!534 resX!21)))))

(declare-fun e!847513 () Bool)

(assert (=> b!1519257 e!847513))

(declare-fun res!1039235 () Bool)

(assert (=> b!1519257 (=> (not res!1039235) (not e!847513))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101147 (_ BitVec 32)) Bool)

(assert (=> b!1519257 (= res!1039235 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50820 0))(
  ( (Unit!50821) )
))
(declare-fun lt!658560 () Unit!50820)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101147 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50820)

(assert (=> b!1519257 (= lt!658560 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519258 () Bool)

(declare-fun res!1039239 () Bool)

(declare-fun e!847515 () Bool)

(assert (=> b!1519258 (=> (not res!1039239) (not e!847515))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519258 (= res!1039239 (validKeyInArray!0 (select (arr!48806 a!2804) i!961)))))

(declare-fun b!1519259 () Bool)

(declare-fun e!847516 () Bool)

(assert (=> b!1519259 (= e!847516 e!847514)))

(declare-fun res!1039238 () Bool)

(assert (=> b!1519259 (=> (not res!1039238) (not e!847514))))

(declare-fun lt!658559 () array!101147)

(declare-datatypes ((SeekEntryResult!12998 0))(
  ( (MissingZero!12998 (index!54386 (_ BitVec 32))) (Found!12998 (index!54387 (_ BitVec 32))) (Intermediate!12998 (undefined!13810 Bool) (index!54388 (_ BitVec 32)) (x!136065 (_ BitVec 32))) (Undefined!12998) (MissingVacant!12998 (index!54389 (_ BitVec 32))) )
))
(declare-fun lt!658558 () SeekEntryResult!12998)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101147 (_ BitVec 32)) SeekEntryResult!12998)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519259 (= res!1039238 (= lt!658558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658555 mask!2512) lt!658555 lt!658559 mask!2512)))))

(assert (=> b!1519259 (= lt!658555 (select (store (arr!48806 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519259 (= lt!658559 (array!101148 (store (arr!48806 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49357 a!2804)))))

(declare-fun b!1519261 () Bool)

(declare-fun res!1039234 () Bool)

(declare-fun e!847512 () Bool)

(assert (=> b!1519261 (=> res!1039234 e!847512)))

(declare-fun lt!658557 () SeekEntryResult!12998)

(declare-fun lt!658556 () (_ BitVec 32))

(assert (=> b!1519261 (= res!1039234 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658556 (select (arr!48806 a!2804) j!70) a!2804 mask!2512) lt!658557)))))

(declare-fun b!1519262 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101147 (_ BitVec 32)) SeekEntryResult!12998)

(assert (=> b!1519262 (= e!847513 (= (seekEntry!0 (select (arr!48806 a!2804) j!70) a!2804 mask!2512) (Found!12998 j!70)))))

(declare-fun b!1519263 () Bool)

(assert (=> b!1519263 (= e!847512 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101147 (_ BitVec 32)) SeekEntryResult!12998)

(assert (=> b!1519263 (= (seekEntryOrOpen!0 (select (arr!48806 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658555 lt!658559 mask!2512))))

(declare-fun lt!658561 () Unit!50820)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101147 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50820)

(assert (=> b!1519263 (= lt!658561 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658556 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1519264 () Bool)

(declare-fun res!1039232 () Bool)

(assert (=> b!1519264 (=> (not res!1039232) (not e!847515))))

(assert (=> b!1519264 (= res!1039232 (validKeyInArray!0 (select (arr!48806 a!2804) j!70)))))

(declare-fun res!1039236 () Bool)

(assert (=> start!129378 (=> (not res!1039236) (not e!847515))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129378 (= res!1039236 (validMask!0 mask!2512))))

(assert (=> start!129378 e!847515))

(assert (=> start!129378 true))

(declare-fun array_inv!37751 (array!101147) Bool)

(assert (=> start!129378 (array_inv!37751 a!2804)))

(declare-fun b!1519260 () Bool)

(declare-fun res!1039233 () Bool)

(assert (=> b!1519260 (=> (not res!1039233) (not e!847515))))

(declare-datatypes ((List!35469 0))(
  ( (Nil!35466) (Cons!35465 (h!36878 (_ BitVec 64)) (t!50170 List!35469)) )
))
(declare-fun arrayNoDuplicates!0 (array!101147 (_ BitVec 32) List!35469) Bool)

(assert (=> b!1519260 (= res!1039233 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35466))))

(declare-fun b!1519265 () Bool)

(declare-fun res!1039243 () Bool)

(assert (=> b!1519265 (=> (not res!1039243) (not e!847515))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1519265 (= res!1039243 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49357 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49357 a!2804))))))

(declare-fun b!1519266 () Bool)

(declare-fun res!1039242 () Bool)

(assert (=> b!1519266 (=> (not res!1039242) (not e!847515))))

(assert (=> b!1519266 (= res!1039242 (and (= (size!49357 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49357 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49357 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519267 () Bool)

(declare-fun res!1039237 () Bool)

(assert (=> b!1519267 (=> (not res!1039237) (not e!847515))))

(assert (=> b!1519267 (= res!1039237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519268 () Bool)

(assert (=> b!1519268 (= e!847515 e!847516)))

(declare-fun res!1039240 () Bool)

(assert (=> b!1519268 (=> (not res!1039240) (not e!847516))))

(assert (=> b!1519268 (= res!1039240 (= lt!658558 lt!658557))))

(assert (=> b!1519268 (= lt!658557 (Intermediate!12998 false resIndex!21 resX!21))))

(assert (=> b!1519268 (= lt!658558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48806 a!2804) j!70) mask!2512) (select (arr!48806 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519269 () Bool)

(declare-fun res!1039241 () Bool)

(assert (=> b!1519269 (=> (not res!1039241) (not e!847516))))

(assert (=> b!1519269 (= res!1039241 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48806 a!2804) j!70) a!2804 mask!2512) lt!658557))))

(declare-fun b!1519270 () Bool)

(assert (=> b!1519270 (= e!847511 e!847512)))

(declare-fun res!1039245 () Bool)

(assert (=> b!1519270 (=> res!1039245 e!847512)))

(assert (=> b!1519270 (= res!1039245 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658556 #b00000000000000000000000000000000) (bvsge lt!658556 (size!49357 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519270 (= lt!658556 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!129378 res!1039236) b!1519266))

(assert (= (and b!1519266 res!1039242) b!1519258))

(assert (= (and b!1519258 res!1039239) b!1519264))

(assert (= (and b!1519264 res!1039232) b!1519267))

(assert (= (and b!1519267 res!1039237) b!1519260))

(assert (= (and b!1519260 res!1039233) b!1519265))

(assert (= (and b!1519265 res!1039243) b!1519268))

(assert (= (and b!1519268 res!1039240) b!1519269))

(assert (= (and b!1519269 res!1039241) b!1519259))

(assert (= (and b!1519259 res!1039238) b!1519257))

(assert (= (and b!1519257 res!1039235) b!1519262))

(assert (= (and b!1519257 (not res!1039244)) b!1519270))

(assert (= (and b!1519270 (not res!1039245)) b!1519261))

(assert (= (and b!1519261 (not res!1039234)) b!1519263))

(declare-fun m!1402705 () Bool)

(assert (=> start!129378 m!1402705))

(declare-fun m!1402707 () Bool)

(assert (=> start!129378 m!1402707))

(declare-fun m!1402709 () Bool)

(assert (=> b!1519267 m!1402709))

(declare-fun m!1402711 () Bool)

(assert (=> b!1519263 m!1402711))

(assert (=> b!1519263 m!1402711))

(declare-fun m!1402713 () Bool)

(assert (=> b!1519263 m!1402713))

(declare-fun m!1402715 () Bool)

(assert (=> b!1519263 m!1402715))

(declare-fun m!1402717 () Bool)

(assert (=> b!1519263 m!1402717))

(declare-fun m!1402719 () Bool)

(assert (=> b!1519258 m!1402719))

(assert (=> b!1519258 m!1402719))

(declare-fun m!1402721 () Bool)

(assert (=> b!1519258 m!1402721))

(assert (=> b!1519269 m!1402711))

(assert (=> b!1519269 m!1402711))

(declare-fun m!1402723 () Bool)

(assert (=> b!1519269 m!1402723))

(assert (=> b!1519268 m!1402711))

(assert (=> b!1519268 m!1402711))

(declare-fun m!1402725 () Bool)

(assert (=> b!1519268 m!1402725))

(assert (=> b!1519268 m!1402725))

(assert (=> b!1519268 m!1402711))

(declare-fun m!1402727 () Bool)

(assert (=> b!1519268 m!1402727))

(declare-fun m!1402729 () Bool)

(assert (=> b!1519270 m!1402729))

(assert (=> b!1519261 m!1402711))

(assert (=> b!1519261 m!1402711))

(declare-fun m!1402731 () Bool)

(assert (=> b!1519261 m!1402731))

(assert (=> b!1519257 m!1402711))

(declare-fun m!1402733 () Bool)

(assert (=> b!1519257 m!1402733))

(declare-fun m!1402735 () Bool)

(assert (=> b!1519257 m!1402735))

(declare-fun m!1402737 () Bool)

(assert (=> b!1519259 m!1402737))

(assert (=> b!1519259 m!1402737))

(declare-fun m!1402739 () Bool)

(assert (=> b!1519259 m!1402739))

(declare-fun m!1402741 () Bool)

(assert (=> b!1519259 m!1402741))

(declare-fun m!1402743 () Bool)

(assert (=> b!1519259 m!1402743))

(declare-fun m!1402745 () Bool)

(assert (=> b!1519260 m!1402745))

(assert (=> b!1519262 m!1402711))

(assert (=> b!1519262 m!1402711))

(declare-fun m!1402747 () Bool)

(assert (=> b!1519262 m!1402747))

(assert (=> b!1519264 m!1402711))

(assert (=> b!1519264 m!1402711))

(declare-fun m!1402749 () Bool)

(assert (=> b!1519264 m!1402749))

(check-sat (not b!1519268) (not b!1519264) (not b!1519259) (not b!1519262) (not b!1519263) (not b!1519258) (not b!1519270) (not start!129378) (not b!1519269) (not b!1519267) (not b!1519260) (not b!1519257) (not b!1519261))
(check-sat)

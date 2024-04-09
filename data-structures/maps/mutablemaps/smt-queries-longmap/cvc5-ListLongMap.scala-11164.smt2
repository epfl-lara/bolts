; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130558 () Bool)

(assert start!130558)

(declare-fun res!1048859 () Bool)

(declare-fun e!853415 () Bool)

(assert (=> start!130558 (=> (not res!1048859) (not e!853415))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130558 (= res!1048859 (validMask!0 mask!2512))))

(assert (=> start!130558 e!853415))

(assert (=> start!130558 true))

(declare-datatypes ((array!101664 0))(
  ( (array!101665 (arr!49048 (Array (_ BitVec 32) (_ BitVec 64))) (size!49599 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101664)

(declare-fun array_inv!37993 (array!101664) Bool)

(assert (=> start!130558 (array_inv!37993 a!2804)))

(declare-fun b!1531578 () Bool)

(declare-fun res!1048867 () Bool)

(assert (=> b!1531578 (=> (not res!1048867) (not e!853415))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531578 (= res!1048867 (validKeyInArray!0 (select (arr!49048 a!2804) j!70)))))

(declare-fun b!1531579 () Bool)

(declare-fun res!1048864 () Bool)

(declare-fun e!853421 () Bool)

(assert (=> b!1531579 (=> (not res!1048864) (not e!853421))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13234 0))(
  ( (MissingZero!13234 (index!55330 (_ BitVec 32))) (Found!13234 (index!55331 (_ BitVec 32))) (Intermediate!13234 (undefined!14046 Bool) (index!55332 (_ BitVec 32)) (x!137039 (_ BitVec 32))) (Undefined!13234) (MissingVacant!13234 (index!55333 (_ BitVec 32))) )
))
(declare-fun lt!663259 () SeekEntryResult!13234)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101664 (_ BitVec 32)) SeekEntryResult!13234)

(assert (=> b!1531579 (= res!1048864 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49048 a!2804) j!70) a!2804 mask!2512) lt!663259))))

(declare-fun b!1531580 () Bool)

(declare-fun e!853416 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101664 (_ BitVec 32)) SeekEntryResult!13234)

(assert (=> b!1531580 (= e!853416 (= (seekEntry!0 (select (arr!49048 a!2804) j!70) a!2804 mask!2512) (Found!13234 j!70)))))

(declare-fun b!1531581 () Bool)

(assert (=> b!1531581 (= e!853415 e!853421)))

(declare-fun res!1048861 () Bool)

(assert (=> b!1531581 (=> (not res!1048861) (not e!853421))))

(declare-fun lt!663263 () SeekEntryResult!13234)

(assert (=> b!1531581 (= res!1048861 (= lt!663263 lt!663259))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1531581 (= lt!663259 (Intermediate!13234 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531581 (= lt!663263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49048 a!2804) j!70) mask!2512) (select (arr!49048 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531582 () Bool)

(declare-fun res!1048868 () Bool)

(declare-fun e!853420 () Bool)

(assert (=> b!1531582 (=> res!1048868 e!853420)))

(declare-fun lt!663260 () (_ BitVec 32))

(assert (=> b!1531582 (= res!1048868 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663260 (select (arr!49048 a!2804) j!70) a!2804 mask!2512) lt!663259)))))

(declare-fun b!1531583 () Bool)

(declare-fun res!1048856 () Bool)

(assert (=> b!1531583 (=> (not res!1048856) (not e!853415))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1531583 (= res!1048856 (and (= (size!49599 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49599 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49599 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531584 () Bool)

(declare-fun res!1048865 () Bool)

(assert (=> b!1531584 (=> (not res!1048865) (not e!853415))))

(assert (=> b!1531584 (= res!1048865 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49599 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49599 a!2804))))))

(declare-fun b!1531585 () Bool)

(assert (=> b!1531585 (= e!853420 true)))

(declare-fun lt!663262 () (_ BitVec 64))

(declare-fun lt!663265 () array!101664)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101664 (_ BitVec 32)) SeekEntryResult!13234)

(assert (=> b!1531585 (= (seekEntryOrOpen!0 (select (arr!49048 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663262 lt!663265 mask!2512))))

(declare-datatypes ((Unit!51208 0))(
  ( (Unit!51209) )
))
(declare-fun lt!663261 () Unit!51208)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101664 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51208)

(assert (=> b!1531585 (= lt!663261 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663260 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1531586 () Bool)

(declare-fun e!853418 () Bool)

(assert (=> b!1531586 (= e!853418 e!853420)))

(declare-fun res!1048857 () Bool)

(assert (=> b!1531586 (=> res!1048857 e!853420)))

(assert (=> b!1531586 (= res!1048857 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663260 #b00000000000000000000000000000000) (bvsge lt!663260 (size!49599 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531586 (= lt!663260 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531587 () Bool)

(declare-fun res!1048858 () Bool)

(assert (=> b!1531587 (=> (not res!1048858) (not e!853415))))

(assert (=> b!1531587 (= res!1048858 (validKeyInArray!0 (select (arr!49048 a!2804) i!961)))))

(declare-fun b!1531588 () Bool)

(declare-fun res!1048869 () Bool)

(assert (=> b!1531588 (=> (not res!1048869) (not e!853415))))

(declare-datatypes ((List!35711 0))(
  ( (Nil!35708) (Cons!35707 (h!37153 (_ BitVec 64)) (t!50412 List!35711)) )
))
(declare-fun arrayNoDuplicates!0 (array!101664 (_ BitVec 32) List!35711) Bool)

(assert (=> b!1531588 (= res!1048869 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35708))))

(declare-fun b!1531589 () Bool)

(declare-fun res!1048863 () Bool)

(assert (=> b!1531589 (=> (not res!1048863) (not e!853415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101664 (_ BitVec 32)) Bool)

(assert (=> b!1531589 (= res!1048863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531590 () Bool)

(declare-fun e!853417 () Bool)

(assert (=> b!1531590 (= e!853421 e!853417)))

(declare-fun res!1048866 () Bool)

(assert (=> b!1531590 (=> (not res!1048866) (not e!853417))))

(assert (=> b!1531590 (= res!1048866 (= lt!663263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663262 mask!2512) lt!663262 lt!663265 mask!2512)))))

(assert (=> b!1531590 (= lt!663262 (select (store (arr!49048 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531590 (= lt!663265 (array!101665 (store (arr!49048 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49599 a!2804)))))

(declare-fun b!1531591 () Bool)

(assert (=> b!1531591 (= e!853417 (not e!853418))))

(declare-fun res!1048860 () Bool)

(assert (=> b!1531591 (=> res!1048860 e!853418)))

(assert (=> b!1531591 (= res!1048860 (or (not (= (select (arr!49048 a!2804) j!70) lt!663262)) (= x!534 resX!21)))))

(assert (=> b!1531591 e!853416))

(declare-fun res!1048862 () Bool)

(assert (=> b!1531591 (=> (not res!1048862) (not e!853416))))

(assert (=> b!1531591 (= res!1048862 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663264 () Unit!51208)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101664 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51208)

(assert (=> b!1531591 (= lt!663264 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130558 res!1048859) b!1531583))

(assert (= (and b!1531583 res!1048856) b!1531587))

(assert (= (and b!1531587 res!1048858) b!1531578))

(assert (= (and b!1531578 res!1048867) b!1531589))

(assert (= (and b!1531589 res!1048863) b!1531588))

(assert (= (and b!1531588 res!1048869) b!1531584))

(assert (= (and b!1531584 res!1048865) b!1531581))

(assert (= (and b!1531581 res!1048861) b!1531579))

(assert (= (and b!1531579 res!1048864) b!1531590))

(assert (= (and b!1531590 res!1048866) b!1531591))

(assert (= (and b!1531591 res!1048862) b!1531580))

(assert (= (and b!1531591 (not res!1048860)) b!1531586))

(assert (= (and b!1531586 (not res!1048857)) b!1531582))

(assert (= (and b!1531582 (not res!1048868)) b!1531585))

(declare-fun m!1414281 () Bool)

(assert (=> b!1531589 m!1414281))

(declare-fun m!1414283 () Bool)

(assert (=> b!1531590 m!1414283))

(assert (=> b!1531590 m!1414283))

(declare-fun m!1414285 () Bool)

(assert (=> b!1531590 m!1414285))

(declare-fun m!1414287 () Bool)

(assert (=> b!1531590 m!1414287))

(declare-fun m!1414289 () Bool)

(assert (=> b!1531590 m!1414289))

(declare-fun m!1414291 () Bool)

(assert (=> b!1531580 m!1414291))

(assert (=> b!1531580 m!1414291))

(declare-fun m!1414293 () Bool)

(assert (=> b!1531580 m!1414293))

(declare-fun m!1414295 () Bool)

(assert (=> b!1531587 m!1414295))

(assert (=> b!1531587 m!1414295))

(declare-fun m!1414297 () Bool)

(assert (=> b!1531587 m!1414297))

(declare-fun m!1414299 () Bool)

(assert (=> start!130558 m!1414299))

(declare-fun m!1414301 () Bool)

(assert (=> start!130558 m!1414301))

(declare-fun m!1414303 () Bool)

(assert (=> b!1531586 m!1414303))

(assert (=> b!1531581 m!1414291))

(assert (=> b!1531581 m!1414291))

(declare-fun m!1414305 () Bool)

(assert (=> b!1531581 m!1414305))

(assert (=> b!1531581 m!1414305))

(assert (=> b!1531581 m!1414291))

(declare-fun m!1414307 () Bool)

(assert (=> b!1531581 m!1414307))

(assert (=> b!1531578 m!1414291))

(assert (=> b!1531578 m!1414291))

(declare-fun m!1414309 () Bool)

(assert (=> b!1531578 m!1414309))

(declare-fun m!1414311 () Bool)

(assert (=> b!1531588 m!1414311))

(assert (=> b!1531582 m!1414291))

(assert (=> b!1531582 m!1414291))

(declare-fun m!1414313 () Bool)

(assert (=> b!1531582 m!1414313))

(assert (=> b!1531579 m!1414291))

(assert (=> b!1531579 m!1414291))

(declare-fun m!1414315 () Bool)

(assert (=> b!1531579 m!1414315))

(assert (=> b!1531585 m!1414291))

(assert (=> b!1531585 m!1414291))

(declare-fun m!1414317 () Bool)

(assert (=> b!1531585 m!1414317))

(declare-fun m!1414319 () Bool)

(assert (=> b!1531585 m!1414319))

(declare-fun m!1414321 () Bool)

(assert (=> b!1531585 m!1414321))

(assert (=> b!1531591 m!1414291))

(declare-fun m!1414323 () Bool)

(assert (=> b!1531591 m!1414323))

(declare-fun m!1414325 () Bool)

(assert (=> b!1531591 m!1414325))

(push 1)


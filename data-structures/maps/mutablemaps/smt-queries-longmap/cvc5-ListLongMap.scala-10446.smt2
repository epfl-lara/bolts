; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122878 () Bool)

(assert start!122878)

(declare-fun b!1424665 () Bool)

(declare-fun res!960213 () Bool)

(declare-fun e!805139 () Bool)

(assert (=> b!1424665 (=> (not res!960213) (not e!805139))))

(declare-datatypes ((array!97161 0))(
  ( (array!97162 (arr!46894 (Array (_ BitVec 32) (_ BitVec 64))) (size!47445 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97161)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424665 (= res!960213 (validKeyInArray!0 (select (arr!46894 a!2831) i!982)))))

(declare-fun b!1424666 () Bool)

(declare-fun res!960217 () Bool)

(declare-fun e!805134 () Bool)

(assert (=> b!1424666 (=> (not res!960217) (not e!805134))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424666 (= res!960217 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424667 () Bool)

(declare-fun res!960219 () Bool)

(declare-fun e!805136 () Bool)

(assert (=> b!1424667 (=> res!960219 e!805136)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!627630 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11201 0))(
  ( (MissingZero!11201 (index!47195 (_ BitVec 32))) (Found!11201 (index!47196 (_ BitVec 32))) (Intermediate!11201 (undefined!12013 Bool) (index!47197 (_ BitVec 32)) (x!128830 (_ BitVec 32))) (Undefined!11201) (MissingVacant!11201 (index!47198 (_ BitVec 32))) )
))
(declare-fun lt!627628 () SeekEntryResult!11201)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97161 (_ BitVec 32)) SeekEntryResult!11201)

(assert (=> b!1424667 (= res!960219 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627630 (select (arr!46894 a!2831) j!81) a!2831 mask!2608) lt!627628)))))

(declare-fun res!960212 () Bool)

(assert (=> start!122878 (=> (not res!960212) (not e!805139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122878 (= res!960212 (validMask!0 mask!2608))))

(assert (=> start!122878 e!805139))

(assert (=> start!122878 true))

(declare-fun array_inv!35839 (array!97161) Bool)

(assert (=> start!122878 (array_inv!35839 a!2831)))

(declare-fun b!1424668 () Bool)

(declare-fun res!960218 () Bool)

(assert (=> b!1424668 (=> (not res!960218) (not e!805139))))

(assert (=> b!1424668 (= res!960218 (and (= (size!47445 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47445 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47445 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424669 () Bool)

(declare-fun e!805135 () Bool)

(assert (=> b!1424669 (= e!805139 e!805135)))

(declare-fun res!960215 () Bool)

(assert (=> b!1424669 (=> (not res!960215) (not e!805135))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424669 (= res!960215 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46894 a!2831) j!81) mask!2608) (select (arr!46894 a!2831) j!81) a!2831 mask!2608) lt!627628))))

(assert (=> b!1424669 (= lt!627628 (Intermediate!11201 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424670 () Bool)

(declare-fun res!960207 () Bool)

(assert (=> b!1424670 (=> (not res!960207) (not e!805134))))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424670 (= res!960207 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46894 a!2831) j!81) a!2831 mask!2608) lt!627628))))

(declare-fun b!1424671 () Bool)

(assert (=> b!1424671 (= e!805135 e!805134)))

(declare-fun res!960208 () Bool)

(assert (=> b!1424671 (=> (not res!960208) (not e!805134))))

(declare-fun lt!627631 () array!97161)

(declare-fun lt!627626 () SeekEntryResult!11201)

(declare-fun lt!627627 () (_ BitVec 64))

(assert (=> b!1424671 (= res!960208 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627627 mask!2608) lt!627627 lt!627631 mask!2608) lt!627626))))

(assert (=> b!1424671 (= lt!627626 (Intermediate!11201 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424671 (= lt!627627 (select (store (arr!46894 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424671 (= lt!627631 (array!97162 (store (arr!46894 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47445 a!2831)))))

(declare-fun b!1424672 () Bool)

(declare-fun res!960222 () Bool)

(assert (=> b!1424672 (=> (not res!960222) (not e!805139))))

(assert (=> b!1424672 (= res!960222 (validKeyInArray!0 (select (arr!46894 a!2831) j!81)))))

(declare-fun b!1424673 () Bool)

(declare-fun e!805137 () Bool)

(assert (=> b!1424673 (= e!805137 e!805136)))

(declare-fun res!960221 () Bool)

(assert (=> b!1424673 (=> res!960221 e!805136)))

(assert (=> b!1424673 (= res!960221 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627630 #b00000000000000000000000000000000) (bvsge lt!627630 (size!47445 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424673 (= lt!627630 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424674 () Bool)

(declare-fun res!960214 () Bool)

(assert (=> b!1424674 (=> (not res!960214) (not e!805139))))

(declare-datatypes ((List!33584 0))(
  ( (Nil!33581) (Cons!33580 (h!34882 (_ BitVec 64)) (t!48285 List!33584)) )
))
(declare-fun arrayNoDuplicates!0 (array!97161 (_ BitVec 32) List!33584) Bool)

(assert (=> b!1424674 (= res!960214 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33581))))

(declare-fun b!1424675 () Bool)

(declare-fun res!960216 () Bool)

(assert (=> b!1424675 (=> (not res!960216) (not e!805139))))

(assert (=> b!1424675 (= res!960216 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47445 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47445 a!2831))))))

(declare-fun b!1424676 () Bool)

(assert (=> b!1424676 (= e!805134 (not e!805137))))

(declare-fun res!960210 () Bool)

(assert (=> b!1424676 (=> res!960210 e!805137)))

(assert (=> b!1424676 (= res!960210 (or (= (select (arr!46894 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46894 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46894 a!2831) index!585) (select (arr!46894 a!2831) j!81)) (= (select (store (arr!46894 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!805133 () Bool)

(assert (=> b!1424676 e!805133))

(declare-fun res!960211 () Bool)

(assert (=> b!1424676 (=> (not res!960211) (not e!805133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97161 (_ BitVec 32)) Bool)

(assert (=> b!1424676 (= res!960211 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48186 0))(
  ( (Unit!48187) )
))
(declare-fun lt!627625 () Unit!48186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48186)

(assert (=> b!1424676 (= lt!627625 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424677 () Bool)

(assert (=> b!1424677 (= e!805136 true)))

(declare-fun lt!627629 () SeekEntryResult!11201)

(assert (=> b!1424677 (= lt!627629 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627630 lt!627627 lt!627631 mask!2608))))

(declare-fun b!1424678 () Bool)

(declare-fun res!960220 () Bool)

(assert (=> b!1424678 (=> (not res!960220) (not e!805139))))

(assert (=> b!1424678 (= res!960220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424679 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97161 (_ BitVec 32)) SeekEntryResult!11201)

(assert (=> b!1424679 (= e!805133 (= (seekEntryOrOpen!0 (select (arr!46894 a!2831) j!81) a!2831 mask!2608) (Found!11201 j!81)))))

(declare-fun b!1424680 () Bool)

(declare-fun res!960209 () Bool)

(assert (=> b!1424680 (=> (not res!960209) (not e!805134))))

(assert (=> b!1424680 (= res!960209 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627627 lt!627631 mask!2608) lt!627626))))

(assert (= (and start!122878 res!960212) b!1424668))

(assert (= (and b!1424668 res!960218) b!1424665))

(assert (= (and b!1424665 res!960213) b!1424672))

(assert (= (and b!1424672 res!960222) b!1424678))

(assert (= (and b!1424678 res!960220) b!1424674))

(assert (= (and b!1424674 res!960214) b!1424675))

(assert (= (and b!1424675 res!960216) b!1424669))

(assert (= (and b!1424669 res!960215) b!1424671))

(assert (= (and b!1424671 res!960208) b!1424670))

(assert (= (and b!1424670 res!960207) b!1424680))

(assert (= (and b!1424680 res!960209) b!1424666))

(assert (= (and b!1424666 res!960217) b!1424676))

(assert (= (and b!1424676 res!960211) b!1424679))

(assert (= (and b!1424676 (not res!960210)) b!1424673))

(assert (= (and b!1424673 (not res!960221)) b!1424667))

(assert (= (and b!1424667 (not res!960219)) b!1424677))

(declare-fun m!1315271 () Bool)

(assert (=> b!1424676 m!1315271))

(declare-fun m!1315273 () Bool)

(assert (=> b!1424676 m!1315273))

(declare-fun m!1315275 () Bool)

(assert (=> b!1424676 m!1315275))

(declare-fun m!1315277 () Bool)

(assert (=> b!1424676 m!1315277))

(declare-fun m!1315279 () Bool)

(assert (=> b!1424676 m!1315279))

(declare-fun m!1315281 () Bool)

(assert (=> b!1424676 m!1315281))

(declare-fun m!1315283 () Bool)

(assert (=> b!1424680 m!1315283))

(assert (=> b!1424669 m!1315279))

(assert (=> b!1424669 m!1315279))

(declare-fun m!1315285 () Bool)

(assert (=> b!1424669 m!1315285))

(assert (=> b!1424669 m!1315285))

(assert (=> b!1424669 m!1315279))

(declare-fun m!1315287 () Bool)

(assert (=> b!1424669 m!1315287))

(declare-fun m!1315289 () Bool)

(assert (=> b!1424678 m!1315289))

(declare-fun m!1315291 () Bool)

(assert (=> b!1424673 m!1315291))

(assert (=> b!1424670 m!1315279))

(assert (=> b!1424670 m!1315279))

(declare-fun m!1315293 () Bool)

(assert (=> b!1424670 m!1315293))

(declare-fun m!1315295 () Bool)

(assert (=> b!1424665 m!1315295))

(assert (=> b!1424665 m!1315295))

(declare-fun m!1315297 () Bool)

(assert (=> b!1424665 m!1315297))

(assert (=> b!1424679 m!1315279))

(assert (=> b!1424679 m!1315279))

(declare-fun m!1315299 () Bool)

(assert (=> b!1424679 m!1315299))

(assert (=> b!1424672 m!1315279))

(assert (=> b!1424672 m!1315279))

(declare-fun m!1315301 () Bool)

(assert (=> b!1424672 m!1315301))

(declare-fun m!1315303 () Bool)

(assert (=> b!1424677 m!1315303))

(assert (=> b!1424667 m!1315279))

(assert (=> b!1424667 m!1315279))

(declare-fun m!1315305 () Bool)

(assert (=> b!1424667 m!1315305))

(declare-fun m!1315307 () Bool)

(assert (=> b!1424671 m!1315307))

(assert (=> b!1424671 m!1315307))

(declare-fun m!1315309 () Bool)

(assert (=> b!1424671 m!1315309))

(assert (=> b!1424671 m!1315271))

(declare-fun m!1315311 () Bool)

(assert (=> b!1424671 m!1315311))

(declare-fun m!1315313 () Bool)

(assert (=> start!122878 m!1315313))

(declare-fun m!1315315 () Bool)

(assert (=> start!122878 m!1315315))

(declare-fun m!1315317 () Bool)

(assert (=> b!1424674 m!1315317))

(push 1)


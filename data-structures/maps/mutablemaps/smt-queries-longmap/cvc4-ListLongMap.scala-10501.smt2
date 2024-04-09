; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123686 () Bool)

(assert start!123686)

(declare-fun b!1433382 () Bool)

(declare-fun res!967157 () Bool)

(declare-fun e!809080 () Bool)

(assert (=> b!1433382 (=> (not res!967157) (not e!809080))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11362 0))(
  ( (MissingZero!11362 (index!47839 (_ BitVec 32))) (Found!11362 (index!47840 (_ BitVec 32))) (Intermediate!11362 (undefined!12174 Bool) (index!47841 (_ BitVec 32)) (x!129488 (_ BitVec 32))) (Undefined!11362) (MissingVacant!11362 (index!47842 (_ BitVec 32))) )
))
(declare-fun lt!630983 () SeekEntryResult!11362)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97519 0))(
  ( (array!97520 (arr!47061 (Array (_ BitVec 32) (_ BitVec 64))) (size!47612 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97519)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97519 (_ BitVec 32)) SeekEntryResult!11362)

(assert (=> b!1433382 (= res!967157 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47061 a!2831) j!81) a!2831 mask!2608) lt!630983))))

(declare-fun b!1433383 () Bool)

(declare-fun res!967166 () Bool)

(declare-fun e!809081 () Bool)

(assert (=> b!1433383 (=> (not res!967166) (not e!809081))))

(declare-datatypes ((List!33751 0))(
  ( (Nil!33748) (Cons!33747 (h!35073 (_ BitVec 64)) (t!48452 List!33751)) )
))
(declare-fun arrayNoDuplicates!0 (array!97519 (_ BitVec 32) List!33751) Bool)

(assert (=> b!1433383 (= res!967166 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33748))))

(declare-fun b!1433384 () Bool)

(declare-fun res!967158 () Bool)

(assert (=> b!1433384 (=> (not res!967158) (not e!809081))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1433384 (= res!967158 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47612 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47612 a!2831))))))

(declare-fun b!1433385 () Bool)

(declare-fun res!967161 () Bool)

(assert (=> b!1433385 (=> (not res!967161) (not e!809081))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433385 (= res!967161 (validKeyInArray!0 (select (arr!47061 a!2831) i!982)))))

(declare-fun b!1433386 () Bool)

(declare-fun e!809084 () Bool)

(assert (=> b!1433386 (= e!809084 e!809080)))

(declare-fun res!967154 () Bool)

(assert (=> b!1433386 (=> (not res!967154) (not e!809080))))

(declare-fun lt!630982 () array!97519)

(declare-fun lt!630984 () (_ BitVec 64))

(declare-fun lt!630985 () SeekEntryResult!11362)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433386 (= res!967154 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630984 mask!2608) lt!630984 lt!630982 mask!2608) lt!630985))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1433386 (= lt!630985 (Intermediate!11362 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1433386 (= lt!630984 (select (store (arr!47061 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433386 (= lt!630982 (array!97520 (store (arr!47061 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47612 a!2831)))))

(declare-fun res!967163 () Bool)

(assert (=> start!123686 (=> (not res!967163) (not e!809081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123686 (= res!967163 (validMask!0 mask!2608))))

(assert (=> start!123686 e!809081))

(assert (=> start!123686 true))

(declare-fun array_inv!36006 (array!97519) Bool)

(assert (=> start!123686 (array_inv!36006 a!2831)))

(declare-fun b!1433387 () Bool)

(declare-fun res!967155 () Bool)

(assert (=> b!1433387 (=> (not res!967155) (not e!809081))))

(assert (=> b!1433387 (= res!967155 (validKeyInArray!0 (select (arr!47061 a!2831) j!81)))))

(declare-fun b!1433388 () Bool)

(declare-fun res!967156 () Bool)

(assert (=> b!1433388 (=> (not res!967156) (not e!809080))))

(assert (=> b!1433388 (= res!967156 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1433389 () Bool)

(declare-fun res!967167 () Bool)

(assert (=> b!1433389 (=> (not res!967167) (not e!809081))))

(assert (=> b!1433389 (= res!967167 (and (= (size!47612 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47612 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47612 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1433390 () Bool)

(declare-fun res!967164 () Bool)

(assert (=> b!1433390 (=> (not res!967164) (not e!809080))))

(assert (=> b!1433390 (= res!967164 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630984 lt!630982 mask!2608) lt!630985))))

(declare-fun b!1433391 () Bool)

(assert (=> b!1433391 (= e!809081 e!809084)))

(declare-fun res!967159 () Bool)

(assert (=> b!1433391 (=> (not res!967159) (not e!809084))))

(assert (=> b!1433391 (= res!967159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47061 a!2831) j!81) mask!2608) (select (arr!47061 a!2831) j!81) a!2831 mask!2608) lt!630983))))

(assert (=> b!1433391 (= lt!630983 (Intermediate!11362 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433392 () Bool)

(declare-fun e!809082 () Bool)

(assert (=> b!1433392 (= e!809080 (not e!809082))))

(declare-fun res!967162 () Bool)

(assert (=> b!1433392 (=> res!967162 e!809082)))

(assert (=> b!1433392 (= res!967162 (or (= (select (arr!47061 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47061 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47061 a!2831) index!585) (select (arr!47061 a!2831) j!81)) (= (select (store (arr!47061 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809079 () Bool)

(assert (=> b!1433392 e!809079))

(declare-fun res!967160 () Bool)

(assert (=> b!1433392 (=> (not res!967160) (not e!809079))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97519 (_ BitVec 32)) Bool)

(assert (=> b!1433392 (= res!967160 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48418 0))(
  ( (Unit!48419) )
))
(declare-fun lt!630981 () Unit!48418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97519 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48418)

(assert (=> b!1433392 (= lt!630981 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1433393 () Bool)

(declare-fun res!967165 () Bool)

(assert (=> b!1433393 (=> (not res!967165) (not e!809081))))

(assert (=> b!1433393 (= res!967165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1433394 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97519 (_ BitVec 32)) SeekEntryResult!11362)

(assert (=> b!1433394 (= e!809079 (= (seekEntryOrOpen!0 (select (arr!47061 a!2831) j!81) a!2831 mask!2608) (Found!11362 j!81)))))

(declare-fun b!1433395 () Bool)

(assert (=> b!1433395 (= e!809082 true)))

(declare-fun lt!630980 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433395 (= lt!630980 (nextIndex!0 index!585 x!605 mask!2608))))

(assert (= (and start!123686 res!967163) b!1433389))

(assert (= (and b!1433389 res!967167) b!1433385))

(assert (= (and b!1433385 res!967161) b!1433387))

(assert (= (and b!1433387 res!967155) b!1433393))

(assert (= (and b!1433393 res!967165) b!1433383))

(assert (= (and b!1433383 res!967166) b!1433384))

(assert (= (and b!1433384 res!967158) b!1433391))

(assert (= (and b!1433391 res!967159) b!1433386))

(assert (= (and b!1433386 res!967154) b!1433382))

(assert (= (and b!1433382 res!967157) b!1433390))

(assert (= (and b!1433390 res!967164) b!1433388))

(assert (= (and b!1433388 res!967156) b!1433392))

(assert (= (and b!1433392 res!967160) b!1433394))

(assert (= (and b!1433392 (not res!967162)) b!1433395))

(declare-fun m!1323159 () Bool)

(assert (=> b!1433382 m!1323159))

(assert (=> b!1433382 m!1323159))

(declare-fun m!1323161 () Bool)

(assert (=> b!1433382 m!1323161))

(declare-fun m!1323163 () Bool)

(assert (=> b!1433390 m!1323163))

(assert (=> b!1433391 m!1323159))

(assert (=> b!1433391 m!1323159))

(declare-fun m!1323165 () Bool)

(assert (=> b!1433391 m!1323165))

(assert (=> b!1433391 m!1323165))

(assert (=> b!1433391 m!1323159))

(declare-fun m!1323167 () Bool)

(assert (=> b!1433391 m!1323167))

(declare-fun m!1323169 () Bool)

(assert (=> b!1433386 m!1323169))

(assert (=> b!1433386 m!1323169))

(declare-fun m!1323171 () Bool)

(assert (=> b!1433386 m!1323171))

(declare-fun m!1323173 () Bool)

(assert (=> b!1433386 m!1323173))

(declare-fun m!1323175 () Bool)

(assert (=> b!1433386 m!1323175))

(declare-fun m!1323177 () Bool)

(assert (=> b!1433395 m!1323177))

(declare-fun m!1323179 () Bool)

(assert (=> b!1433385 m!1323179))

(assert (=> b!1433385 m!1323179))

(declare-fun m!1323181 () Bool)

(assert (=> b!1433385 m!1323181))

(assert (=> b!1433394 m!1323159))

(assert (=> b!1433394 m!1323159))

(declare-fun m!1323183 () Bool)

(assert (=> b!1433394 m!1323183))

(declare-fun m!1323185 () Bool)

(assert (=> start!123686 m!1323185))

(declare-fun m!1323187 () Bool)

(assert (=> start!123686 m!1323187))

(assert (=> b!1433392 m!1323173))

(declare-fun m!1323189 () Bool)

(assert (=> b!1433392 m!1323189))

(declare-fun m!1323191 () Bool)

(assert (=> b!1433392 m!1323191))

(declare-fun m!1323193 () Bool)

(assert (=> b!1433392 m!1323193))

(assert (=> b!1433392 m!1323159))

(declare-fun m!1323195 () Bool)

(assert (=> b!1433392 m!1323195))

(declare-fun m!1323197 () Bool)

(assert (=> b!1433393 m!1323197))

(declare-fun m!1323199 () Bool)

(assert (=> b!1433383 m!1323199))

(assert (=> b!1433387 m!1323159))

(assert (=> b!1433387 m!1323159))

(declare-fun m!1323201 () Bool)

(assert (=> b!1433387 m!1323201))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123584 () Bool)

(assert start!123584)

(declare-fun b!1432191 () Bool)

(declare-fun res!966168 () Bool)

(declare-fun e!808513 () Bool)

(assert (=> b!1432191 (=> (not res!966168) (not e!808513))))

(declare-datatypes ((array!97474 0))(
  ( (array!97475 (arr!47040 (Array (_ BitVec 32) (_ BitVec 64))) (size!47591 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97474)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432191 (= res!966168 (validKeyInArray!0 (select (arr!47040 a!2831) j!81)))))

(declare-fun b!1432192 () Bool)

(declare-fun e!808517 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11341 0))(
  ( (MissingZero!11341 (index!47755 (_ BitVec 32))) (Found!11341 (index!47756 (_ BitVec 32))) (Intermediate!11341 (undefined!12153 Bool) (index!47757 (_ BitVec 32)) (x!129402 (_ BitVec 32))) (Undefined!11341) (MissingVacant!11341 (index!47758 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97474 (_ BitVec 32)) SeekEntryResult!11341)

(assert (=> b!1432192 (= e!808517 (= (seekEntryOrOpen!0 (select (arr!47040 a!2831) j!81) a!2831 mask!2608) (Found!11341 j!81)))))

(declare-fun b!1432193 () Bool)

(declare-fun res!966176 () Bool)

(assert (=> b!1432193 (=> (not res!966176) (not e!808513))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432193 (= res!966176 (and (= (size!47591 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47591 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47591 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432194 () Bool)

(declare-fun res!966177 () Bool)

(declare-fun e!808516 () Bool)

(assert (=> b!1432194 (=> (not res!966177) (not e!808516))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!630461 () SeekEntryResult!11341)

(declare-fun lt!630464 () array!97474)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!630465 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97474 (_ BitVec 32)) SeekEntryResult!11341)

(assert (=> b!1432194 (= res!966177 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630465 lt!630464 mask!2608) lt!630461))))

(declare-fun b!1432196 () Bool)

(declare-fun e!808512 () Bool)

(assert (=> b!1432196 (= e!808516 (not e!808512))))

(declare-fun res!966175 () Bool)

(assert (=> b!1432196 (=> res!966175 e!808512)))

(assert (=> b!1432196 (= res!966175 (or (= (select (arr!47040 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47040 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47040 a!2831) index!585) (select (arr!47040 a!2831) j!81)) (= (select (store (arr!47040 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432196 e!808517))

(declare-fun res!966167 () Bool)

(assert (=> b!1432196 (=> (not res!966167) (not e!808517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97474 (_ BitVec 32)) Bool)

(assert (=> b!1432196 (= res!966167 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48376 0))(
  ( (Unit!48377) )
))
(declare-fun lt!630462 () Unit!48376)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48376)

(assert (=> b!1432196 (= lt!630462 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432197 () Bool)

(declare-fun res!966165 () Bool)

(assert (=> b!1432197 (=> (not res!966165) (not e!808516))))

(declare-fun lt!630463 () SeekEntryResult!11341)

(assert (=> b!1432197 (= res!966165 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47040 a!2831) j!81) a!2831 mask!2608) lt!630463))))

(declare-fun b!1432198 () Bool)

(declare-fun res!966169 () Bool)

(assert (=> b!1432198 (=> (not res!966169) (not e!808513))))

(declare-datatypes ((List!33730 0))(
  ( (Nil!33727) (Cons!33726 (h!35049 (_ BitVec 64)) (t!48431 List!33730)) )
))
(declare-fun arrayNoDuplicates!0 (array!97474 (_ BitVec 32) List!33730) Bool)

(assert (=> b!1432198 (= res!966169 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33727))))

(declare-fun b!1432199 () Bool)

(declare-fun res!966164 () Bool)

(assert (=> b!1432199 (=> (not res!966164) (not e!808513))))

(assert (=> b!1432199 (= res!966164 (validKeyInArray!0 (select (arr!47040 a!2831) i!982)))))

(declare-fun b!1432200 () Bool)

(declare-fun res!966174 () Bool)

(assert (=> b!1432200 (=> (not res!966174) (not e!808513))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1432200 (= res!966174 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47591 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47591 a!2831))))))

(declare-fun b!1432201 () Bool)

(declare-fun res!966170 () Bool)

(assert (=> b!1432201 (=> (not res!966170) (not e!808516))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432201 (= res!966170 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432202 () Bool)

(declare-fun res!966166 () Bool)

(assert (=> b!1432202 (=> (not res!966166) (not e!808513))))

(assert (=> b!1432202 (= res!966166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432203 () Bool)

(declare-fun e!808515 () Bool)

(assert (=> b!1432203 (= e!808513 e!808515)))

(declare-fun res!966171 () Bool)

(assert (=> b!1432203 (=> (not res!966171) (not e!808515))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432203 (= res!966171 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47040 a!2831) j!81) mask!2608) (select (arr!47040 a!2831) j!81) a!2831 mask!2608) lt!630463))))

(assert (=> b!1432203 (= lt!630463 (Intermediate!11341 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432204 () Bool)

(assert (=> b!1432204 (= e!808512 true)))

(declare-fun lt!630466 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432204 (= lt!630466 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432195 () Bool)

(assert (=> b!1432195 (= e!808515 e!808516)))

(declare-fun res!966173 () Bool)

(assert (=> b!1432195 (=> (not res!966173) (not e!808516))))

(assert (=> b!1432195 (= res!966173 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630465 mask!2608) lt!630465 lt!630464 mask!2608) lt!630461))))

(assert (=> b!1432195 (= lt!630461 (Intermediate!11341 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432195 (= lt!630465 (select (store (arr!47040 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432195 (= lt!630464 (array!97475 (store (arr!47040 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47591 a!2831)))))

(declare-fun res!966172 () Bool)

(assert (=> start!123584 (=> (not res!966172) (not e!808513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123584 (= res!966172 (validMask!0 mask!2608))))

(assert (=> start!123584 e!808513))

(assert (=> start!123584 true))

(declare-fun array_inv!35985 (array!97474) Bool)

(assert (=> start!123584 (array_inv!35985 a!2831)))

(assert (= (and start!123584 res!966172) b!1432193))

(assert (= (and b!1432193 res!966176) b!1432199))

(assert (= (and b!1432199 res!966164) b!1432191))

(assert (= (and b!1432191 res!966168) b!1432202))

(assert (= (and b!1432202 res!966166) b!1432198))

(assert (= (and b!1432198 res!966169) b!1432200))

(assert (= (and b!1432200 res!966174) b!1432203))

(assert (= (and b!1432203 res!966171) b!1432195))

(assert (= (and b!1432195 res!966173) b!1432197))

(assert (= (and b!1432197 res!966165) b!1432194))

(assert (= (and b!1432194 res!966177) b!1432201))

(assert (= (and b!1432201 res!966170) b!1432196))

(assert (= (and b!1432196 res!966167) b!1432192))

(assert (= (and b!1432196 (not res!966175)) b!1432204))

(declare-fun m!1322049 () Bool)

(assert (=> b!1432197 m!1322049))

(assert (=> b!1432197 m!1322049))

(declare-fun m!1322051 () Bool)

(assert (=> b!1432197 m!1322051))

(declare-fun m!1322053 () Bool)

(assert (=> b!1432204 m!1322053))

(declare-fun m!1322055 () Bool)

(assert (=> start!123584 m!1322055))

(declare-fun m!1322057 () Bool)

(assert (=> start!123584 m!1322057))

(declare-fun m!1322059 () Bool)

(assert (=> b!1432199 m!1322059))

(assert (=> b!1432199 m!1322059))

(declare-fun m!1322061 () Bool)

(assert (=> b!1432199 m!1322061))

(declare-fun m!1322063 () Bool)

(assert (=> b!1432198 m!1322063))

(assert (=> b!1432192 m!1322049))

(assert (=> b!1432192 m!1322049))

(declare-fun m!1322065 () Bool)

(assert (=> b!1432192 m!1322065))

(assert (=> b!1432203 m!1322049))

(assert (=> b!1432203 m!1322049))

(declare-fun m!1322067 () Bool)

(assert (=> b!1432203 m!1322067))

(assert (=> b!1432203 m!1322067))

(assert (=> b!1432203 m!1322049))

(declare-fun m!1322069 () Bool)

(assert (=> b!1432203 m!1322069))

(assert (=> b!1432191 m!1322049))

(assert (=> b!1432191 m!1322049))

(declare-fun m!1322071 () Bool)

(assert (=> b!1432191 m!1322071))

(declare-fun m!1322073 () Bool)

(assert (=> b!1432195 m!1322073))

(assert (=> b!1432195 m!1322073))

(declare-fun m!1322075 () Bool)

(assert (=> b!1432195 m!1322075))

(declare-fun m!1322077 () Bool)

(assert (=> b!1432195 m!1322077))

(declare-fun m!1322079 () Bool)

(assert (=> b!1432195 m!1322079))

(declare-fun m!1322081 () Bool)

(assert (=> b!1432202 m!1322081))

(declare-fun m!1322083 () Bool)

(assert (=> b!1432194 m!1322083))

(assert (=> b!1432196 m!1322077))

(declare-fun m!1322085 () Bool)

(assert (=> b!1432196 m!1322085))

(declare-fun m!1322087 () Bool)

(assert (=> b!1432196 m!1322087))

(declare-fun m!1322089 () Bool)

(assert (=> b!1432196 m!1322089))

(assert (=> b!1432196 m!1322049))

(declare-fun m!1322091 () Bool)

(assert (=> b!1432196 m!1322091))

(push 1)


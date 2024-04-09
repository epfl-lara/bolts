; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122960 () Bool)

(assert start!122960)

(declare-fun b!1425703 () Bool)

(declare-fun res!961250 () Bool)

(declare-fun e!805450 () Bool)

(assert (=> b!1425703 (=> (not res!961250) (not e!805450))))

(declare-datatypes ((array!97243 0))(
  ( (array!97244 (arr!46935 (Array (_ BitVec 32) (_ BitVec 64))) (size!47486 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97243)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97243 (_ BitVec 32)) Bool)

(assert (=> b!1425703 (= res!961250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425704 () Bool)

(declare-fun e!805451 () Bool)

(declare-fun e!805449 () Bool)

(assert (=> b!1425704 (= e!805451 e!805449)))

(declare-fun res!961252 () Bool)

(assert (=> b!1425704 (=> (not res!961252) (not e!805449))))

(declare-fun lt!627842 () array!97243)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun lt!627844 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11236 0))(
  ( (MissingZero!11236 (index!47335 (_ BitVec 32))) (Found!11236 (index!47336 (_ BitVec 32))) (Intermediate!11236 (undefined!12048 Bool) (index!47337 (_ BitVec 32)) (x!128969 (_ BitVec 32))) (Undefined!11236) (MissingVacant!11236 (index!47338 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97243 (_ BitVec 32)) SeekEntryResult!11236)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425704 (= res!961252 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627844 mask!2608) lt!627844 lt!627842 mask!2608) (Intermediate!11236 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425704 (= lt!627844 (select (store (arr!46935 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425704 (= lt!627842 (array!97244 (store (arr!46935 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47486 a!2831)))))

(declare-fun b!1425705 () Bool)

(declare-fun res!961246 () Bool)

(assert (=> b!1425705 (=> (not res!961246) (not e!805450))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425705 (= res!961246 (validKeyInArray!0 (select (arr!46935 a!2831) j!81)))))

(declare-fun b!1425707 () Bool)

(declare-fun res!961245 () Bool)

(assert (=> b!1425707 (=> (not res!961245) (not e!805450))))

(declare-datatypes ((List!33625 0))(
  ( (Nil!33622) (Cons!33621 (h!34923 (_ BitVec 64)) (t!48326 List!33625)) )
))
(declare-fun arrayNoDuplicates!0 (array!97243 (_ BitVec 32) List!33625) Bool)

(assert (=> b!1425707 (= res!961245 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33622))))

(declare-fun b!1425708 () Bool)

(declare-fun res!961253 () Bool)

(assert (=> b!1425708 (=> (not res!961253) (not e!805450))))

(assert (=> b!1425708 (= res!961253 (validKeyInArray!0 (select (arr!46935 a!2831) i!982)))))

(declare-fun b!1425709 () Bool)

(assert (=> b!1425709 (= e!805450 e!805451)))

(declare-fun res!961251 () Bool)

(assert (=> b!1425709 (=> (not res!961251) (not e!805451))))

(declare-fun lt!627843 () SeekEntryResult!11236)

(assert (=> b!1425709 (= res!961251 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46935 a!2831) j!81) mask!2608) (select (arr!46935 a!2831) j!81) a!2831 mask!2608) lt!627843))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1425709 (= lt!627843 (Intermediate!11236 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425710 () Bool)

(declare-fun res!961254 () Bool)

(assert (=> b!1425710 (=> (not res!961254) (not e!805450))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425710 (= res!961254 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47486 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47486 a!2831))))))

(declare-fun b!1425711 () Bool)

(assert (=> b!1425711 (= e!805449 false)))

(declare-fun lt!627841 () SeekEntryResult!11236)

(assert (=> b!1425711 (= lt!627841 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627844 lt!627842 mask!2608))))

(declare-fun b!1425712 () Bool)

(declare-fun res!961248 () Bool)

(assert (=> b!1425712 (=> (not res!961248) (not e!805450))))

(assert (=> b!1425712 (= res!961248 (and (= (size!47486 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47486 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47486 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!961249 () Bool)

(assert (=> start!122960 (=> (not res!961249) (not e!805450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122960 (= res!961249 (validMask!0 mask!2608))))

(assert (=> start!122960 e!805450))

(assert (=> start!122960 true))

(declare-fun array_inv!35880 (array!97243) Bool)

(assert (=> start!122960 (array_inv!35880 a!2831)))

(declare-fun b!1425706 () Bool)

(declare-fun res!961247 () Bool)

(assert (=> b!1425706 (=> (not res!961247) (not e!805449))))

(assert (=> b!1425706 (= res!961247 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46935 a!2831) j!81) a!2831 mask!2608) lt!627843))))

(assert (= (and start!122960 res!961249) b!1425712))

(assert (= (and b!1425712 res!961248) b!1425708))

(assert (= (and b!1425708 res!961253) b!1425705))

(assert (= (and b!1425705 res!961246) b!1425703))

(assert (= (and b!1425703 res!961250) b!1425707))

(assert (= (and b!1425707 res!961245) b!1425710))

(assert (= (and b!1425710 res!961254) b!1425709))

(assert (= (and b!1425709 res!961251) b!1425704))

(assert (= (and b!1425704 res!961252) b!1425706))

(assert (= (and b!1425706 res!961247) b!1425711))

(declare-fun m!1316367 () Bool)

(assert (=> b!1425704 m!1316367))

(assert (=> b!1425704 m!1316367))

(declare-fun m!1316369 () Bool)

(assert (=> b!1425704 m!1316369))

(declare-fun m!1316371 () Bool)

(assert (=> b!1425704 m!1316371))

(declare-fun m!1316373 () Bool)

(assert (=> b!1425704 m!1316373))

(declare-fun m!1316375 () Bool)

(assert (=> b!1425705 m!1316375))

(assert (=> b!1425705 m!1316375))

(declare-fun m!1316377 () Bool)

(assert (=> b!1425705 m!1316377))

(assert (=> b!1425709 m!1316375))

(assert (=> b!1425709 m!1316375))

(declare-fun m!1316379 () Bool)

(assert (=> b!1425709 m!1316379))

(assert (=> b!1425709 m!1316379))

(assert (=> b!1425709 m!1316375))

(declare-fun m!1316381 () Bool)

(assert (=> b!1425709 m!1316381))

(declare-fun m!1316383 () Bool)

(assert (=> b!1425703 m!1316383))

(assert (=> b!1425706 m!1316375))

(assert (=> b!1425706 m!1316375))

(declare-fun m!1316385 () Bool)

(assert (=> b!1425706 m!1316385))

(declare-fun m!1316387 () Bool)

(assert (=> b!1425707 m!1316387))

(declare-fun m!1316389 () Bool)

(assert (=> start!122960 m!1316389))

(declare-fun m!1316391 () Bool)

(assert (=> start!122960 m!1316391))

(declare-fun m!1316393 () Bool)

(assert (=> b!1425711 m!1316393))

(declare-fun m!1316395 () Bool)

(assert (=> b!1425708 m!1316395))

(assert (=> b!1425708 m!1316395))

(declare-fun m!1316397 () Bool)

(assert (=> b!1425708 m!1316397))

(push 1)

(assert (not b!1425708))

(assert (not b!1425703))

(assert (not b!1425707))

(assert (not b!1425709))

(assert (not b!1425711))

(assert (not b!1425704))

(assert (not b!1425705))

(assert (not start!122960))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122950 () Bool)

(assert start!122950)

(declare-fun b!1425553 () Bool)

(declare-fun res!961104 () Bool)

(declare-fun e!805391 () Bool)

(assert (=> b!1425553 (=> (not res!961104) (not e!805391))))

(declare-datatypes ((array!97233 0))(
  ( (array!97234 (arr!46930 (Array (_ BitVec 32) (_ BitVec 64))) (size!47481 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97233)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425553 (= res!961104 (validKeyInArray!0 (select (arr!46930 a!2831) j!81)))))

(declare-fun res!961095 () Bool)

(assert (=> start!122950 (=> (not res!961095) (not e!805391))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122950 (= res!961095 (validMask!0 mask!2608))))

(assert (=> start!122950 e!805391))

(assert (=> start!122950 true))

(declare-fun array_inv!35875 (array!97233) Bool)

(assert (=> start!122950 (array_inv!35875 a!2831)))

(declare-fun b!1425554 () Bool)

(declare-fun res!961097 () Bool)

(assert (=> b!1425554 (=> (not res!961097) (not e!805391))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425554 (= res!961097 (validKeyInArray!0 (select (arr!46930 a!2831) i!982)))))

(declare-fun b!1425555 () Bool)

(declare-fun e!805390 () Bool)

(assert (=> b!1425555 (= e!805391 e!805390)))

(declare-fun res!961102 () Bool)

(assert (=> b!1425555 (=> (not res!961102) (not e!805390))))

(declare-datatypes ((SeekEntryResult!11231 0))(
  ( (MissingZero!11231 (index!47315 (_ BitVec 32))) (Found!11231 (index!47316 (_ BitVec 32))) (Intermediate!11231 (undefined!12043 Bool) (index!47317 (_ BitVec 32)) (x!128956 (_ BitVec 32))) (Undefined!11231) (MissingVacant!11231 (index!47318 (_ BitVec 32))) )
))
(declare-fun lt!627783 () SeekEntryResult!11231)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97233 (_ BitVec 32)) SeekEntryResult!11231)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425555 (= res!961102 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46930 a!2831) j!81) mask!2608) (select (arr!46930 a!2831) j!81) a!2831 mask!2608) lt!627783))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1425555 (= lt!627783 (Intermediate!11231 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425556 () Bool)

(declare-fun res!961103 () Bool)

(assert (=> b!1425556 (=> (not res!961103) (not e!805391))))

(declare-datatypes ((List!33620 0))(
  ( (Nil!33617) (Cons!33616 (h!34918 (_ BitVec 64)) (t!48321 List!33620)) )
))
(declare-fun arrayNoDuplicates!0 (array!97233 (_ BitVec 32) List!33620) Bool)

(assert (=> b!1425556 (= res!961103 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33617))))

(declare-fun b!1425557 () Bool)

(declare-fun e!805388 () Bool)

(assert (=> b!1425557 (= e!805390 e!805388)))

(declare-fun res!961100 () Bool)

(assert (=> b!1425557 (=> (not res!961100) (not e!805388))))

(declare-fun lt!627782 () array!97233)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!627784 () (_ BitVec 64))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1425557 (= res!961100 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627784 mask!2608) lt!627784 lt!627782 mask!2608) (Intermediate!11231 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1425557 (= lt!627784 (select (store (arr!46930 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425557 (= lt!627782 (array!97234 (store (arr!46930 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47481 a!2831)))))

(declare-fun b!1425558 () Bool)

(declare-fun res!961096 () Bool)

(assert (=> b!1425558 (=> (not res!961096) (not e!805388))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425558 (= res!961096 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46930 a!2831) j!81) a!2831 mask!2608) lt!627783))))

(declare-fun b!1425559 () Bool)

(declare-fun res!961099 () Bool)

(assert (=> b!1425559 (=> (not res!961099) (not e!805391))))

(assert (=> b!1425559 (= res!961099 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47481 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47481 a!2831))))))

(declare-fun b!1425560 () Bool)

(assert (=> b!1425560 (= e!805388 false)))

(declare-fun lt!627781 () SeekEntryResult!11231)

(assert (=> b!1425560 (= lt!627781 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627784 lt!627782 mask!2608))))

(declare-fun b!1425561 () Bool)

(declare-fun res!961098 () Bool)

(assert (=> b!1425561 (=> (not res!961098) (not e!805391))))

(assert (=> b!1425561 (= res!961098 (and (= (size!47481 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47481 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47481 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425562 () Bool)

(declare-fun res!961101 () Bool)

(assert (=> b!1425562 (=> (not res!961101) (not e!805391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97233 (_ BitVec 32)) Bool)

(assert (=> b!1425562 (= res!961101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122950 res!961095) b!1425561))

(assert (= (and b!1425561 res!961098) b!1425554))

(assert (= (and b!1425554 res!961097) b!1425553))

(assert (= (and b!1425553 res!961104) b!1425562))

(assert (= (and b!1425562 res!961101) b!1425556))

(assert (= (and b!1425556 res!961103) b!1425559))

(assert (= (and b!1425559 res!961099) b!1425555))

(assert (= (and b!1425555 res!961102) b!1425557))

(assert (= (and b!1425557 res!961100) b!1425558))

(assert (= (and b!1425558 res!961096) b!1425560))

(declare-fun m!1316207 () Bool)

(assert (=> b!1425555 m!1316207))

(assert (=> b!1425555 m!1316207))

(declare-fun m!1316209 () Bool)

(assert (=> b!1425555 m!1316209))

(assert (=> b!1425555 m!1316209))

(assert (=> b!1425555 m!1316207))

(declare-fun m!1316211 () Bool)

(assert (=> b!1425555 m!1316211))

(declare-fun m!1316213 () Bool)

(assert (=> b!1425562 m!1316213))

(declare-fun m!1316215 () Bool)

(assert (=> start!122950 m!1316215))

(declare-fun m!1316217 () Bool)

(assert (=> start!122950 m!1316217))

(declare-fun m!1316219 () Bool)

(assert (=> b!1425560 m!1316219))

(declare-fun m!1316221 () Bool)

(assert (=> b!1425556 m!1316221))

(declare-fun m!1316223 () Bool)

(assert (=> b!1425554 m!1316223))

(assert (=> b!1425554 m!1316223))

(declare-fun m!1316225 () Bool)

(assert (=> b!1425554 m!1316225))

(declare-fun m!1316227 () Bool)

(assert (=> b!1425557 m!1316227))

(assert (=> b!1425557 m!1316227))

(declare-fun m!1316229 () Bool)

(assert (=> b!1425557 m!1316229))

(declare-fun m!1316231 () Bool)

(assert (=> b!1425557 m!1316231))

(declare-fun m!1316233 () Bool)

(assert (=> b!1425557 m!1316233))

(assert (=> b!1425558 m!1316207))

(assert (=> b!1425558 m!1316207))

(declare-fun m!1316235 () Bool)

(assert (=> b!1425558 m!1316235))

(assert (=> b!1425553 m!1316207))

(assert (=> b!1425553 m!1316207))

(declare-fun m!1316237 () Bool)

(assert (=> b!1425553 m!1316237))

(push 1)


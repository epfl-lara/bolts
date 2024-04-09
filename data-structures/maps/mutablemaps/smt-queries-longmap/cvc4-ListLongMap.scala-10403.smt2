; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122624 () Bool)

(assert start!122624)

(declare-fun b!1419719 () Bool)

(declare-fun e!803210 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1419719 (= e!803210 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun b!1419720 () Bool)

(declare-fun res!955264 () Bool)

(assert (=> b!1419720 (=> (not res!955264) (not e!803210))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!96907 0))(
  ( (array!96908 (arr!46767 (Array (_ BitVec 32) (_ BitVec 64))) (size!47318 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96907)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419720 (= res!955264 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47318 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47318 a!2831))))))

(declare-fun b!1419721 () Bool)

(declare-fun res!955263 () Bool)

(assert (=> b!1419721 (=> (not res!955263) (not e!803210))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419721 (= res!955263 (validKeyInArray!0 (select (arr!46767 a!2831) i!982)))))

(declare-fun b!1419722 () Bool)

(declare-fun res!955268 () Bool)

(assert (=> b!1419722 (=> (not res!955268) (not e!803210))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1419722 (= res!955268 (and (= (size!47318 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47318 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47318 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419723 () Bool)

(declare-fun res!955262 () Bool)

(assert (=> b!1419723 (=> (not res!955262) (not e!803210))))

(assert (=> b!1419723 (= res!955262 (validKeyInArray!0 (select (arr!46767 a!2831) j!81)))))

(declare-fun res!955261 () Bool)

(assert (=> start!122624 (=> (not res!955261) (not e!803210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122624 (= res!955261 (validMask!0 mask!2608))))

(assert (=> start!122624 e!803210))

(assert (=> start!122624 true))

(declare-fun array_inv!35712 (array!96907) Bool)

(assert (=> start!122624 (array_inv!35712 a!2831)))

(declare-fun b!1419724 () Bool)

(declare-fun res!955266 () Bool)

(assert (=> b!1419724 (=> (not res!955266) (not e!803210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96907 (_ BitVec 32)) Bool)

(assert (=> b!1419724 (= res!955266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419725 () Bool)

(declare-fun res!955267 () Bool)

(assert (=> b!1419725 (=> (not res!955267) (not e!803210))))

(declare-datatypes ((List!33457 0))(
  ( (Nil!33454) (Cons!33453 (h!34755 (_ BitVec 64)) (t!48158 List!33457)) )
))
(declare-fun arrayNoDuplicates!0 (array!96907 (_ BitVec 32) List!33457) Bool)

(assert (=> b!1419725 (= res!955267 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33454))))

(declare-fun b!1419726 () Bool)

(declare-fun res!955269 () Bool)

(assert (=> b!1419726 (=> (not res!955269) (not e!803210))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11074 0))(
  ( (MissingZero!11074 (index!46687 (_ BitVec 32))) (Found!11074 (index!46688 (_ BitVec 32))) (Intermediate!11074 (undefined!11886 Bool) (index!46689 (_ BitVec 32)) (x!128359 (_ BitVec 32))) (Undefined!11074) (MissingVacant!11074 (index!46690 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96907 (_ BitVec 32)) SeekEntryResult!11074)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419726 (= res!955269 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46767 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46767 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96908 (store (arr!46767 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47318 a!2831)) mask!2608) (Intermediate!11074 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1419727 () Bool)

(declare-fun res!955265 () Bool)

(assert (=> b!1419727 (=> (not res!955265) (not e!803210))))

(assert (=> b!1419727 (= res!955265 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46767 a!2831) j!81) mask!2608) (select (arr!46767 a!2831) j!81) a!2831 mask!2608) (Intermediate!11074 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(assert (= (and start!122624 res!955261) b!1419722))

(assert (= (and b!1419722 res!955268) b!1419721))

(assert (= (and b!1419721 res!955263) b!1419723))

(assert (= (and b!1419723 res!955262) b!1419724))

(assert (= (and b!1419724 res!955266) b!1419725))

(assert (= (and b!1419725 res!955267) b!1419720))

(assert (= (and b!1419720 res!955264) b!1419727))

(assert (= (and b!1419727 res!955265) b!1419726))

(assert (= (and b!1419726 res!955269) b!1419719))

(declare-fun m!1310233 () Bool)

(assert (=> b!1419727 m!1310233))

(assert (=> b!1419727 m!1310233))

(declare-fun m!1310235 () Bool)

(assert (=> b!1419727 m!1310235))

(assert (=> b!1419727 m!1310235))

(assert (=> b!1419727 m!1310233))

(declare-fun m!1310237 () Bool)

(assert (=> b!1419727 m!1310237))

(declare-fun m!1310239 () Bool)

(assert (=> b!1419725 m!1310239))

(declare-fun m!1310241 () Bool)

(assert (=> b!1419721 m!1310241))

(assert (=> b!1419721 m!1310241))

(declare-fun m!1310243 () Bool)

(assert (=> b!1419721 m!1310243))

(declare-fun m!1310245 () Bool)

(assert (=> b!1419726 m!1310245))

(declare-fun m!1310247 () Bool)

(assert (=> b!1419726 m!1310247))

(assert (=> b!1419726 m!1310247))

(declare-fun m!1310249 () Bool)

(assert (=> b!1419726 m!1310249))

(assert (=> b!1419726 m!1310249))

(assert (=> b!1419726 m!1310247))

(declare-fun m!1310251 () Bool)

(assert (=> b!1419726 m!1310251))

(assert (=> b!1419723 m!1310233))

(assert (=> b!1419723 m!1310233))

(declare-fun m!1310253 () Bool)

(assert (=> b!1419723 m!1310253))

(declare-fun m!1310255 () Bool)

(assert (=> b!1419724 m!1310255))

(declare-fun m!1310257 () Bool)

(assert (=> start!122624 m!1310257))

(declare-fun m!1310259 () Bool)

(assert (=> start!122624 m!1310259))

(push 1)

(assert (not b!1419721))

(assert (not b!1419724))

(assert (not b!1419723))

(assert (not b!1419725))

(assert (not b!1419727))

(assert (not b!1419726))

(assert (not start!122624))

(check-sat)

(pop 1)

(push 1)

(check-sat)


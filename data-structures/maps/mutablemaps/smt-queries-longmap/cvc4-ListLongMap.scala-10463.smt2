; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122984 () Bool)

(assert start!122984)

(declare-fun b!1426081 () Bool)

(declare-fun res!961629 () Bool)

(declare-fun e!805594 () Bool)

(assert (=> b!1426081 (=> (not res!961629) (not e!805594))))

(declare-datatypes ((array!97267 0))(
  ( (array!97268 (arr!46947 (Array (_ BitVec 32) (_ BitVec 64))) (size!47498 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97267)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426081 (= res!961629 (validKeyInArray!0 (select (arr!46947 a!2831) i!982)))))

(declare-fun b!1426082 () Bool)

(declare-fun e!805592 () Bool)

(declare-fun e!805593 () Bool)

(assert (=> b!1426082 (= e!805592 e!805593)))

(declare-fun res!961623 () Bool)

(assert (=> b!1426082 (=> (not res!961623) (not e!805593))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!627986 () array!97267)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun lt!627985 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-datatypes ((SeekEntryResult!11248 0))(
  ( (MissingZero!11248 (index!47383 (_ BitVec 32))) (Found!11248 (index!47384 (_ BitVec 32))) (Intermediate!11248 (undefined!12060 Bool) (index!47385 (_ BitVec 32)) (x!129013 (_ BitVec 32))) (Undefined!11248) (MissingVacant!11248 (index!47386 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97267 (_ BitVec 32)) SeekEntryResult!11248)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426082 (= res!961623 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627985 mask!2608) lt!627985 lt!627986 mask!2608) (Intermediate!11248 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1426082 (= lt!627985 (select (store (arr!46947 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426082 (= lt!627986 (array!97268 (store (arr!46947 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47498 a!2831)))))

(declare-fun res!961624 () Bool)

(assert (=> start!122984 (=> (not res!961624) (not e!805594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122984 (= res!961624 (validMask!0 mask!2608))))

(assert (=> start!122984 e!805594))

(assert (=> start!122984 true))

(declare-fun array_inv!35892 (array!97267) Bool)

(assert (=> start!122984 (array_inv!35892 a!2831)))

(declare-fun b!1426083 () Bool)

(assert (=> b!1426083 (= e!805594 e!805592)))

(declare-fun res!961625 () Bool)

(assert (=> b!1426083 (=> (not res!961625) (not e!805592))))

(declare-fun lt!627987 () SeekEntryResult!11248)

(assert (=> b!1426083 (= res!961625 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46947 a!2831) j!81) mask!2608) (select (arr!46947 a!2831) j!81) a!2831 mask!2608) lt!627987))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1426083 (= lt!627987 (Intermediate!11248 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426084 () Bool)

(declare-fun res!961626 () Bool)

(assert (=> b!1426084 (=> (not res!961626) (not e!805593))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1426084 (= res!961626 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46947 a!2831) j!81) a!2831 mask!2608) lt!627987))))

(declare-fun b!1426085 () Bool)

(declare-fun res!961628 () Bool)

(assert (=> b!1426085 (=> (not res!961628) (not e!805594))))

(assert (=> b!1426085 (= res!961628 (and (= (size!47498 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47498 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47498 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426086 () Bool)

(declare-fun res!961627 () Bool)

(assert (=> b!1426086 (=> (not res!961627) (not e!805594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97267 (_ BitVec 32)) Bool)

(assert (=> b!1426086 (= res!961627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426087 () Bool)

(assert (=> b!1426087 (= e!805593 false)))

(declare-fun lt!627988 () SeekEntryResult!11248)

(assert (=> b!1426087 (= lt!627988 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627985 lt!627986 mask!2608))))

(declare-fun b!1426088 () Bool)

(declare-fun res!961632 () Bool)

(assert (=> b!1426088 (=> (not res!961632) (not e!805594))))

(declare-datatypes ((List!33637 0))(
  ( (Nil!33634) (Cons!33633 (h!34935 (_ BitVec 64)) (t!48338 List!33637)) )
))
(declare-fun arrayNoDuplicates!0 (array!97267 (_ BitVec 32) List!33637) Bool)

(assert (=> b!1426088 (= res!961632 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33634))))

(declare-fun b!1426089 () Bool)

(declare-fun res!961631 () Bool)

(assert (=> b!1426089 (=> (not res!961631) (not e!805594))))

(assert (=> b!1426089 (= res!961631 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47498 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47498 a!2831))))))

(declare-fun b!1426090 () Bool)

(declare-fun res!961630 () Bool)

(assert (=> b!1426090 (=> (not res!961630) (not e!805594))))

(assert (=> b!1426090 (= res!961630 (validKeyInArray!0 (select (arr!46947 a!2831) j!81)))))

(assert (= (and start!122984 res!961624) b!1426085))

(assert (= (and b!1426085 res!961628) b!1426081))

(assert (= (and b!1426081 res!961629) b!1426090))

(assert (= (and b!1426090 res!961630) b!1426086))

(assert (= (and b!1426086 res!961627) b!1426088))

(assert (= (and b!1426088 res!961632) b!1426089))

(assert (= (and b!1426089 res!961631) b!1426083))

(assert (= (and b!1426083 res!961625) b!1426082))

(assert (= (and b!1426082 res!961623) b!1426084))

(assert (= (and b!1426084 res!961626) b!1426087))

(declare-fun m!1316751 () Bool)

(assert (=> b!1426087 m!1316751))

(declare-fun m!1316753 () Bool)

(assert (=> b!1426090 m!1316753))

(assert (=> b!1426090 m!1316753))

(declare-fun m!1316755 () Bool)

(assert (=> b!1426090 m!1316755))

(declare-fun m!1316757 () Bool)

(assert (=> b!1426088 m!1316757))

(declare-fun m!1316759 () Bool)

(assert (=> b!1426081 m!1316759))

(assert (=> b!1426081 m!1316759))

(declare-fun m!1316761 () Bool)

(assert (=> b!1426081 m!1316761))

(declare-fun m!1316763 () Bool)

(assert (=> b!1426086 m!1316763))

(declare-fun m!1316765 () Bool)

(assert (=> start!122984 m!1316765))

(declare-fun m!1316767 () Bool)

(assert (=> start!122984 m!1316767))

(assert (=> b!1426083 m!1316753))

(assert (=> b!1426083 m!1316753))

(declare-fun m!1316769 () Bool)

(assert (=> b!1426083 m!1316769))

(assert (=> b!1426083 m!1316769))

(assert (=> b!1426083 m!1316753))

(declare-fun m!1316771 () Bool)

(assert (=> b!1426083 m!1316771))

(assert (=> b!1426084 m!1316753))

(assert (=> b!1426084 m!1316753))

(declare-fun m!1316773 () Bool)

(assert (=> b!1426084 m!1316773))

(declare-fun m!1316775 () Bool)

(assert (=> b!1426082 m!1316775))

(assert (=> b!1426082 m!1316775))

(declare-fun m!1316777 () Bool)

(assert (=> b!1426082 m!1316777))

(declare-fun m!1316779 () Bool)

(assert (=> b!1426082 m!1316779))

(declare-fun m!1316781 () Bool)

(assert (=> b!1426082 m!1316781))

(push 1)


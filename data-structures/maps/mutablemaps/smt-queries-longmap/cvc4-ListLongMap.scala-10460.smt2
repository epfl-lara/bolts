; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122966 () Bool)

(assert start!122966)

(declare-fun b!1425793 () Bool)

(declare-fun res!961342 () Bool)

(declare-fun e!805484 () Bool)

(assert (=> b!1425793 (=> (not res!961342) (not e!805484))))

(declare-datatypes ((array!97249 0))(
  ( (array!97250 (arr!46938 (Array (_ BitVec 32) (_ BitVec 64))) (size!47489 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97249)

(declare-datatypes ((List!33628 0))(
  ( (Nil!33625) (Cons!33624 (h!34926 (_ BitVec 64)) (t!48329 List!33628)) )
))
(declare-fun arrayNoDuplicates!0 (array!97249 (_ BitVec 32) List!33628) Bool)

(assert (=> b!1425793 (= res!961342 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33625))))

(declare-fun b!1425794 () Bool)

(declare-fun e!805486 () Bool)

(assert (=> b!1425794 (= e!805486 false)))

(declare-datatypes ((SeekEntryResult!11239 0))(
  ( (MissingZero!11239 (index!47347 (_ BitVec 32))) (Found!11239 (index!47348 (_ BitVec 32))) (Intermediate!11239 (undefined!12051 Bool) (index!47349 (_ BitVec 32)) (x!128980 (_ BitVec 32))) (Undefined!11239) (MissingVacant!11239 (index!47350 (_ BitVec 32))) )
))
(declare-fun lt!627878 () SeekEntryResult!11239)

(declare-fun lt!627879 () array!97249)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!627880 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97249 (_ BitVec 32)) SeekEntryResult!11239)

(assert (=> b!1425794 (= lt!627878 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627880 lt!627879 mask!2608))))

(declare-fun b!1425795 () Bool)

(declare-fun res!961340 () Bool)

(assert (=> b!1425795 (=> (not res!961340) (not e!805484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97249 (_ BitVec 32)) Bool)

(assert (=> b!1425795 (= res!961340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!961337 () Bool)

(assert (=> start!122966 (=> (not res!961337) (not e!805484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122966 (= res!961337 (validMask!0 mask!2608))))

(assert (=> start!122966 e!805484))

(assert (=> start!122966 true))

(declare-fun array_inv!35883 (array!97249) Bool)

(assert (=> start!122966 (array_inv!35883 a!2831)))

(declare-fun b!1425796 () Bool)

(declare-fun res!961341 () Bool)

(assert (=> b!1425796 (=> (not res!961341) (not e!805484))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425796 (= res!961341 (validKeyInArray!0 (select (arr!46938 a!2831) i!982)))))

(declare-fun b!1425797 () Bool)

(declare-fun res!961344 () Bool)

(assert (=> b!1425797 (=> (not res!961344) (not e!805486))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun lt!627877 () SeekEntryResult!11239)

(assert (=> b!1425797 (= res!961344 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46938 a!2831) j!81) a!2831 mask!2608) lt!627877))))

(declare-fun b!1425798 () Bool)

(declare-fun e!805487 () Bool)

(assert (=> b!1425798 (= e!805487 e!805486)))

(declare-fun res!961336 () Bool)

(assert (=> b!1425798 (=> (not res!961336) (not e!805486))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425798 (= res!961336 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627880 mask!2608) lt!627880 lt!627879 mask!2608) (Intermediate!11239 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1425798 (= lt!627880 (select (store (arr!46938 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425798 (= lt!627879 (array!97250 (store (arr!46938 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47489 a!2831)))))

(declare-fun b!1425799 () Bool)

(assert (=> b!1425799 (= e!805484 e!805487)))

(declare-fun res!961335 () Bool)

(assert (=> b!1425799 (=> (not res!961335) (not e!805487))))

(assert (=> b!1425799 (= res!961335 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46938 a!2831) j!81) mask!2608) (select (arr!46938 a!2831) j!81) a!2831 mask!2608) lt!627877))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1425799 (= lt!627877 (Intermediate!11239 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425800 () Bool)

(declare-fun res!961339 () Bool)

(assert (=> b!1425800 (=> (not res!961339) (not e!805484))))

(assert (=> b!1425800 (= res!961339 (and (= (size!47489 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47489 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47489 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425801 () Bool)

(declare-fun res!961343 () Bool)

(assert (=> b!1425801 (=> (not res!961343) (not e!805484))))

(assert (=> b!1425801 (= res!961343 (validKeyInArray!0 (select (arr!46938 a!2831) j!81)))))

(declare-fun b!1425802 () Bool)

(declare-fun res!961338 () Bool)

(assert (=> b!1425802 (=> (not res!961338) (not e!805484))))

(assert (=> b!1425802 (= res!961338 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47489 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47489 a!2831))))))

(assert (= (and start!122966 res!961337) b!1425800))

(assert (= (and b!1425800 res!961339) b!1425796))

(assert (= (and b!1425796 res!961341) b!1425801))

(assert (= (and b!1425801 res!961343) b!1425795))

(assert (= (and b!1425795 res!961340) b!1425793))

(assert (= (and b!1425793 res!961342) b!1425802))

(assert (= (and b!1425802 res!961338) b!1425799))

(assert (= (and b!1425799 res!961335) b!1425798))

(assert (= (and b!1425798 res!961336) b!1425797))

(assert (= (and b!1425797 res!961344) b!1425794))

(declare-fun m!1316463 () Bool)

(assert (=> b!1425797 m!1316463))

(assert (=> b!1425797 m!1316463))

(declare-fun m!1316465 () Bool)

(assert (=> b!1425797 m!1316465))

(declare-fun m!1316467 () Bool)

(assert (=> b!1425794 m!1316467))

(assert (=> b!1425799 m!1316463))

(assert (=> b!1425799 m!1316463))

(declare-fun m!1316469 () Bool)

(assert (=> b!1425799 m!1316469))

(assert (=> b!1425799 m!1316469))

(assert (=> b!1425799 m!1316463))

(declare-fun m!1316471 () Bool)

(assert (=> b!1425799 m!1316471))

(declare-fun m!1316473 () Bool)

(assert (=> start!122966 m!1316473))

(declare-fun m!1316475 () Bool)

(assert (=> start!122966 m!1316475))

(declare-fun m!1316477 () Bool)

(assert (=> b!1425795 m!1316477))

(declare-fun m!1316479 () Bool)

(assert (=> b!1425798 m!1316479))

(assert (=> b!1425798 m!1316479))

(declare-fun m!1316481 () Bool)

(assert (=> b!1425798 m!1316481))

(declare-fun m!1316483 () Bool)

(assert (=> b!1425798 m!1316483))

(declare-fun m!1316485 () Bool)

(assert (=> b!1425798 m!1316485))

(declare-fun m!1316487 () Bool)

(assert (=> b!1425793 m!1316487))

(assert (=> b!1425801 m!1316463))

(assert (=> b!1425801 m!1316463))

(declare-fun m!1316489 () Bool)

(assert (=> b!1425801 m!1316489))

(declare-fun m!1316491 () Bool)

(assert (=> b!1425796 m!1316491))

(assert (=> b!1425796 m!1316491))

(declare-fun m!1316493 () Bool)

(assert (=> b!1425796 m!1316493))

(push 1)


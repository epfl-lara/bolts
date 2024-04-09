; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122982 () Bool)

(assert start!122982)

(declare-fun b!1426051 () Bool)

(declare-fun e!805582 () Bool)

(declare-fun e!805583 () Bool)

(assert (=> b!1426051 (= e!805582 e!805583)))

(declare-fun res!961597 () Bool)

(assert (=> b!1426051 (=> (not res!961597) (not e!805583))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-datatypes ((array!97265 0))(
  ( (array!97266 (arr!46946 (Array (_ BitVec 32) (_ BitVec 64))) (size!47497 (_ BitVec 32))) )
))
(declare-fun lt!627974 () array!97265)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!627975 () (_ BitVec 64))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11247 0))(
  ( (MissingZero!11247 (index!47379 (_ BitVec 32))) (Found!11247 (index!47380 (_ BitVec 32))) (Intermediate!11247 (undefined!12059 Bool) (index!47381 (_ BitVec 32)) (x!129012 (_ BitVec 32))) (Undefined!11247) (MissingVacant!11247 (index!47382 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97265 (_ BitVec 32)) SeekEntryResult!11247)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426051 (= res!961597 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627975 mask!2608) lt!627975 lt!627974 mask!2608) (Intermediate!11247 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun a!2831 () array!97265)

(assert (=> b!1426051 (= lt!627975 (select (store (arr!46946 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426051 (= lt!627974 (array!97266 (store (arr!46946 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47497 a!2831)))))

(declare-fun b!1426052 () Bool)

(declare-fun e!805581 () Bool)

(assert (=> b!1426052 (= e!805581 e!805582)))

(declare-fun res!961594 () Bool)

(assert (=> b!1426052 (=> (not res!961594) (not e!805582))))

(declare-fun lt!627973 () SeekEntryResult!11247)

(assert (=> b!1426052 (= res!961594 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46946 a!2831) j!81) mask!2608) (select (arr!46946 a!2831) j!81) a!2831 mask!2608) lt!627973))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1426052 (= lt!627973 (Intermediate!11247 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426053 () Bool)

(assert (=> b!1426053 (= e!805583 false)))

(declare-fun lt!627976 () SeekEntryResult!11247)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1426053 (= lt!627976 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627975 lt!627974 mask!2608))))

(declare-fun b!1426054 () Bool)

(declare-fun res!961593 () Bool)

(assert (=> b!1426054 (=> (not res!961593) (not e!805581))))

(assert (=> b!1426054 (= res!961593 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47497 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47497 a!2831))))))

(declare-fun b!1426056 () Bool)

(declare-fun res!961599 () Bool)

(assert (=> b!1426056 (=> (not res!961599) (not e!805581))))

(assert (=> b!1426056 (= res!961599 (and (= (size!47497 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47497 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47497 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426057 () Bool)

(declare-fun res!961602 () Bool)

(assert (=> b!1426057 (=> (not res!961602) (not e!805581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97265 (_ BitVec 32)) Bool)

(assert (=> b!1426057 (= res!961602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426058 () Bool)

(declare-fun res!961596 () Bool)

(assert (=> b!1426058 (=> (not res!961596) (not e!805581))))

(declare-datatypes ((List!33636 0))(
  ( (Nil!33633) (Cons!33632 (h!34934 (_ BitVec 64)) (t!48337 List!33636)) )
))
(declare-fun arrayNoDuplicates!0 (array!97265 (_ BitVec 32) List!33636) Bool)

(assert (=> b!1426058 (= res!961596 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33633))))

(declare-fun b!1426059 () Bool)

(declare-fun res!961601 () Bool)

(assert (=> b!1426059 (=> (not res!961601) (not e!805581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426059 (= res!961601 (validKeyInArray!0 (select (arr!46946 a!2831) i!982)))))

(declare-fun b!1426060 () Bool)

(declare-fun res!961595 () Bool)

(assert (=> b!1426060 (=> (not res!961595) (not e!805581))))

(assert (=> b!1426060 (= res!961595 (validKeyInArray!0 (select (arr!46946 a!2831) j!81)))))

(declare-fun b!1426055 () Bool)

(declare-fun res!961600 () Bool)

(assert (=> b!1426055 (=> (not res!961600) (not e!805583))))

(assert (=> b!1426055 (= res!961600 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46946 a!2831) j!81) a!2831 mask!2608) lt!627973))))

(declare-fun res!961598 () Bool)

(assert (=> start!122982 (=> (not res!961598) (not e!805581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122982 (= res!961598 (validMask!0 mask!2608))))

(assert (=> start!122982 e!805581))

(assert (=> start!122982 true))

(declare-fun array_inv!35891 (array!97265) Bool)

(assert (=> start!122982 (array_inv!35891 a!2831)))

(assert (= (and start!122982 res!961598) b!1426056))

(assert (= (and b!1426056 res!961599) b!1426059))

(assert (= (and b!1426059 res!961601) b!1426060))

(assert (= (and b!1426060 res!961595) b!1426057))

(assert (= (and b!1426057 res!961602) b!1426058))

(assert (= (and b!1426058 res!961596) b!1426054))

(assert (= (and b!1426054 res!961593) b!1426052))

(assert (= (and b!1426052 res!961594) b!1426051))

(assert (= (and b!1426051 res!961597) b!1426055))

(assert (= (and b!1426055 res!961600) b!1426053))

(declare-fun m!1316719 () Bool)

(assert (=> b!1426058 m!1316719))

(declare-fun m!1316721 () Bool)

(assert (=> b!1426055 m!1316721))

(assert (=> b!1426055 m!1316721))

(declare-fun m!1316723 () Bool)

(assert (=> b!1426055 m!1316723))

(assert (=> b!1426060 m!1316721))

(assert (=> b!1426060 m!1316721))

(declare-fun m!1316725 () Bool)

(assert (=> b!1426060 m!1316725))

(declare-fun m!1316727 () Bool)

(assert (=> b!1426059 m!1316727))

(assert (=> b!1426059 m!1316727))

(declare-fun m!1316729 () Bool)

(assert (=> b!1426059 m!1316729))

(declare-fun m!1316731 () Bool)

(assert (=> start!122982 m!1316731))

(declare-fun m!1316733 () Bool)

(assert (=> start!122982 m!1316733))

(declare-fun m!1316735 () Bool)

(assert (=> b!1426051 m!1316735))

(assert (=> b!1426051 m!1316735))

(declare-fun m!1316737 () Bool)

(assert (=> b!1426051 m!1316737))

(declare-fun m!1316739 () Bool)

(assert (=> b!1426051 m!1316739))

(declare-fun m!1316741 () Bool)

(assert (=> b!1426051 m!1316741))

(declare-fun m!1316743 () Bool)

(assert (=> b!1426057 m!1316743))

(assert (=> b!1426052 m!1316721))

(assert (=> b!1426052 m!1316721))

(declare-fun m!1316745 () Bool)

(assert (=> b!1426052 m!1316745))

(assert (=> b!1426052 m!1316745))

(assert (=> b!1426052 m!1316721))

(declare-fun m!1316747 () Bool)

(assert (=> b!1426052 m!1316747))

(declare-fun m!1316749 () Bool)

(assert (=> b!1426053 m!1316749))

(check-sat (not b!1426057) (not b!1426051) (not b!1426059) (not b!1426055) (not b!1426053) (not b!1426052) (not start!122982) (not b!1426058) (not b!1426060))
(check-sat)

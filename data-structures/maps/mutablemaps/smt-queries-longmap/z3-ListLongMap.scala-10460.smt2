; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122964 () Bool)

(assert start!122964)

(declare-fun b!1425763 () Bool)

(declare-fun res!961314 () Bool)

(declare-fun e!805473 () Bool)

(assert (=> b!1425763 (=> (not res!961314) (not e!805473))))

(declare-datatypes ((array!97247 0))(
  ( (array!97248 (arr!46937 (Array (_ BitVec 32) (_ BitVec 64))) (size!47488 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97247)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1425763 (= res!961314 (and (= (size!47488 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47488 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47488 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425764 () Bool)

(declare-fun res!961307 () Bool)

(assert (=> b!1425764 (=> (not res!961307) (not e!805473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425764 (= res!961307 (validKeyInArray!0 (select (arr!46937 a!2831) i!982)))))

(declare-fun b!1425765 () Bool)

(declare-fun res!961309 () Bool)

(assert (=> b!1425765 (=> (not res!961309) (not e!805473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97247 (_ BitVec 32)) Bool)

(assert (=> b!1425765 (= res!961309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425766 () Bool)

(declare-fun res!961305 () Bool)

(declare-fun e!805475 () Bool)

(assert (=> b!1425766 (=> (not res!961305) (not e!805475))))

(declare-datatypes ((SeekEntryResult!11238 0))(
  ( (MissingZero!11238 (index!47343 (_ BitVec 32))) (Found!11238 (index!47344 (_ BitVec 32))) (Intermediate!11238 (undefined!12050 Bool) (index!47345 (_ BitVec 32)) (x!128979 (_ BitVec 32))) (Undefined!11238) (MissingVacant!11238 (index!47346 (_ BitVec 32))) )
))
(declare-fun lt!627866 () SeekEntryResult!11238)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97247 (_ BitVec 32)) SeekEntryResult!11238)

(assert (=> b!1425766 (= res!961305 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46937 a!2831) j!81) a!2831 mask!2608) lt!627866))))

(declare-fun res!961313 () Bool)

(assert (=> start!122964 (=> (not res!961313) (not e!805473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122964 (= res!961313 (validMask!0 mask!2608))))

(assert (=> start!122964 e!805473))

(assert (=> start!122964 true))

(declare-fun array_inv!35882 (array!97247) Bool)

(assert (=> start!122964 (array_inv!35882 a!2831)))

(declare-fun b!1425767 () Bool)

(assert (=> b!1425767 (= e!805475 false)))

(declare-fun lt!627865 () (_ BitVec 64))

(declare-fun lt!627867 () array!97247)

(declare-fun lt!627868 () SeekEntryResult!11238)

(assert (=> b!1425767 (= lt!627868 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627865 lt!627867 mask!2608))))

(declare-fun b!1425768 () Bool)

(declare-fun res!961306 () Bool)

(assert (=> b!1425768 (=> (not res!961306) (not e!805473))))

(declare-datatypes ((List!33627 0))(
  ( (Nil!33624) (Cons!33623 (h!34925 (_ BitVec 64)) (t!48328 List!33627)) )
))
(declare-fun arrayNoDuplicates!0 (array!97247 (_ BitVec 32) List!33627) Bool)

(assert (=> b!1425768 (= res!961306 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33624))))

(declare-fun b!1425769 () Bool)

(declare-fun res!961308 () Bool)

(assert (=> b!1425769 (=> (not res!961308) (not e!805473))))

(assert (=> b!1425769 (= res!961308 (validKeyInArray!0 (select (arr!46937 a!2831) j!81)))))

(declare-fun b!1425770 () Bool)

(declare-fun res!961311 () Bool)

(assert (=> b!1425770 (=> (not res!961311) (not e!805473))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1425770 (= res!961311 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47488 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47488 a!2831))))))

(declare-fun b!1425771 () Bool)

(declare-fun e!805474 () Bool)

(assert (=> b!1425771 (= e!805474 e!805475)))

(declare-fun res!961312 () Bool)

(assert (=> b!1425771 (=> (not res!961312) (not e!805475))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425771 (= res!961312 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627865 mask!2608) lt!627865 lt!627867 mask!2608) (Intermediate!11238 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1425771 (= lt!627865 (select (store (arr!46937 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425771 (= lt!627867 (array!97248 (store (arr!46937 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47488 a!2831)))))

(declare-fun b!1425772 () Bool)

(assert (=> b!1425772 (= e!805473 e!805474)))

(declare-fun res!961310 () Bool)

(assert (=> b!1425772 (=> (not res!961310) (not e!805474))))

(assert (=> b!1425772 (= res!961310 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46937 a!2831) j!81) mask!2608) (select (arr!46937 a!2831) j!81) a!2831 mask!2608) lt!627866))))

(assert (=> b!1425772 (= lt!627866 (Intermediate!11238 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!122964 res!961313) b!1425763))

(assert (= (and b!1425763 res!961314) b!1425764))

(assert (= (and b!1425764 res!961307) b!1425769))

(assert (= (and b!1425769 res!961308) b!1425765))

(assert (= (and b!1425765 res!961309) b!1425768))

(assert (= (and b!1425768 res!961306) b!1425770))

(assert (= (and b!1425770 res!961311) b!1425772))

(assert (= (and b!1425772 res!961310) b!1425771))

(assert (= (and b!1425771 res!961312) b!1425766))

(assert (= (and b!1425766 res!961305) b!1425767))

(declare-fun m!1316431 () Bool)

(assert (=> b!1425768 m!1316431))

(declare-fun m!1316433 () Bool)

(assert (=> b!1425767 m!1316433))

(declare-fun m!1316435 () Bool)

(assert (=> b!1425766 m!1316435))

(assert (=> b!1425766 m!1316435))

(declare-fun m!1316437 () Bool)

(assert (=> b!1425766 m!1316437))

(assert (=> b!1425769 m!1316435))

(assert (=> b!1425769 m!1316435))

(declare-fun m!1316439 () Bool)

(assert (=> b!1425769 m!1316439))

(declare-fun m!1316441 () Bool)

(assert (=> b!1425765 m!1316441))

(declare-fun m!1316443 () Bool)

(assert (=> b!1425771 m!1316443))

(assert (=> b!1425771 m!1316443))

(declare-fun m!1316445 () Bool)

(assert (=> b!1425771 m!1316445))

(declare-fun m!1316447 () Bool)

(assert (=> b!1425771 m!1316447))

(declare-fun m!1316449 () Bool)

(assert (=> b!1425771 m!1316449))

(declare-fun m!1316451 () Bool)

(assert (=> b!1425764 m!1316451))

(assert (=> b!1425764 m!1316451))

(declare-fun m!1316453 () Bool)

(assert (=> b!1425764 m!1316453))

(declare-fun m!1316455 () Bool)

(assert (=> start!122964 m!1316455))

(declare-fun m!1316457 () Bool)

(assert (=> start!122964 m!1316457))

(assert (=> b!1425772 m!1316435))

(assert (=> b!1425772 m!1316435))

(declare-fun m!1316459 () Bool)

(assert (=> b!1425772 m!1316459))

(assert (=> b!1425772 m!1316459))

(assert (=> b!1425772 m!1316435))

(declare-fun m!1316461 () Bool)

(assert (=> b!1425772 m!1316461))

(check-sat (not b!1425771) (not b!1425772) (not start!122964) (not b!1425766) (not b!1425768) (not b!1425765) (not b!1425767) (not b!1425764) (not b!1425769))
(check-sat)

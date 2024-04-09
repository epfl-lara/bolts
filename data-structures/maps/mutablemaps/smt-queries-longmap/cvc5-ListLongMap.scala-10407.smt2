; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122644 () Bool)

(assert start!122644)

(declare-fun res!955512 () Bool)

(declare-fun e!803270 () Bool)

(assert (=> start!122644 (=> (not res!955512) (not e!803270))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122644 (= res!955512 (validMask!0 mask!2608))))

(assert (=> start!122644 e!803270))

(assert (=> start!122644 true))

(declare-datatypes ((array!96927 0))(
  ( (array!96928 (arr!46777 (Array (_ BitVec 32) (_ BitVec 64))) (size!47328 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96927)

(declare-fun array_inv!35722 (array!96927) Bool)

(assert (=> start!122644 (array_inv!35722 a!2831)))

(declare-fun b!1419969 () Bool)

(declare-fun res!955514 () Bool)

(assert (=> b!1419969 (=> (not res!955514) (not e!803270))))

(declare-datatypes ((List!33467 0))(
  ( (Nil!33464) (Cons!33463 (h!34765 (_ BitVec 64)) (t!48168 List!33467)) )
))
(declare-fun arrayNoDuplicates!0 (array!96927 (_ BitVec 32) List!33467) Bool)

(assert (=> b!1419969 (= res!955514 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33464))))

(declare-fun b!1419970 () Bool)

(declare-fun res!955517 () Bool)

(assert (=> b!1419970 (=> (not res!955517) (not e!803270))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419970 (= res!955517 (and (= (size!47328 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47328 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47328 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419971 () Bool)

(declare-fun res!955516 () Bool)

(assert (=> b!1419971 (=> (not res!955516) (not e!803270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419971 (= res!955516 (validKeyInArray!0 (select (arr!46777 a!2831) i!982)))))

(declare-fun b!1419972 () Bool)

(declare-fun res!955513 () Bool)

(assert (=> b!1419972 (=> (not res!955513) (not e!803270))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419972 (= res!955513 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47328 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47328 a!2831))))))

(declare-fun b!1419973 () Bool)

(assert (=> b!1419973 (= e!803270 false)))

(declare-datatypes ((SeekEntryResult!11084 0))(
  ( (MissingZero!11084 (index!46727 (_ BitVec 32))) (Found!11084 (index!46728 (_ BitVec 32))) (Intermediate!11084 (undefined!11896 Bool) (index!46729 (_ BitVec 32)) (x!128401 (_ BitVec 32))) (Undefined!11084) (MissingVacant!11084 (index!46730 (_ BitVec 32))) )
))
(declare-fun lt!625813 () SeekEntryResult!11084)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96927 (_ BitVec 32)) SeekEntryResult!11084)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419973 (= lt!625813 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46777 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46777 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96928 (store (arr!46777 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47328 a!2831)) mask!2608))))

(declare-fun b!1419974 () Bool)

(declare-fun res!955511 () Bool)

(assert (=> b!1419974 (=> (not res!955511) (not e!803270))))

(assert (=> b!1419974 (= res!955511 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46777 a!2831) j!81) mask!2608) (select (arr!46777 a!2831) j!81) a!2831 mask!2608) (Intermediate!11084 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419975 () Bool)

(declare-fun res!955518 () Bool)

(assert (=> b!1419975 (=> (not res!955518) (not e!803270))))

(assert (=> b!1419975 (= res!955518 (validKeyInArray!0 (select (arr!46777 a!2831) j!81)))))

(declare-fun b!1419976 () Bool)

(declare-fun res!955515 () Bool)

(assert (=> b!1419976 (=> (not res!955515) (not e!803270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96927 (_ BitVec 32)) Bool)

(assert (=> b!1419976 (= res!955515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122644 res!955512) b!1419970))

(assert (= (and b!1419970 res!955517) b!1419971))

(assert (= (and b!1419971 res!955516) b!1419975))

(assert (= (and b!1419975 res!955518) b!1419976))

(assert (= (and b!1419976 res!955515) b!1419969))

(assert (= (and b!1419969 res!955514) b!1419972))

(assert (= (and b!1419972 res!955513) b!1419974))

(assert (= (and b!1419974 res!955511) b!1419973))

(declare-fun m!1310513 () Bool)

(assert (=> b!1419976 m!1310513))

(declare-fun m!1310515 () Bool)

(assert (=> b!1419971 m!1310515))

(assert (=> b!1419971 m!1310515))

(declare-fun m!1310517 () Bool)

(assert (=> b!1419971 m!1310517))

(declare-fun m!1310519 () Bool)

(assert (=> b!1419969 m!1310519))

(declare-fun m!1310521 () Bool)

(assert (=> b!1419975 m!1310521))

(assert (=> b!1419975 m!1310521))

(declare-fun m!1310523 () Bool)

(assert (=> b!1419975 m!1310523))

(declare-fun m!1310525 () Bool)

(assert (=> start!122644 m!1310525))

(declare-fun m!1310527 () Bool)

(assert (=> start!122644 m!1310527))

(assert (=> b!1419974 m!1310521))

(assert (=> b!1419974 m!1310521))

(declare-fun m!1310529 () Bool)

(assert (=> b!1419974 m!1310529))

(assert (=> b!1419974 m!1310529))

(assert (=> b!1419974 m!1310521))

(declare-fun m!1310531 () Bool)

(assert (=> b!1419974 m!1310531))

(declare-fun m!1310533 () Bool)

(assert (=> b!1419973 m!1310533))

(declare-fun m!1310535 () Bool)

(assert (=> b!1419973 m!1310535))

(assert (=> b!1419973 m!1310535))

(declare-fun m!1310537 () Bool)

(assert (=> b!1419973 m!1310537))

(assert (=> b!1419973 m!1310537))

(assert (=> b!1419973 m!1310535))

(declare-fun m!1310539 () Bool)

(assert (=> b!1419973 m!1310539))

(push 1)

(assert (not b!1419974))

(assert (not b!1419973))

(assert (not start!122644))

(assert (not b!1419976))

(assert (not b!1419975))

(assert (not b!1419969))

(assert (not b!1419971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


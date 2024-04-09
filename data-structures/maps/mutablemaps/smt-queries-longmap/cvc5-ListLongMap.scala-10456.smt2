; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122938 () Bool)

(assert start!122938)

(declare-fun b!1425389 () Bool)

(declare-fun e!805349 () Bool)

(assert (=> b!1425389 (= e!805349 false)))

(declare-datatypes ((SeekEntryResult!11225 0))(
  ( (MissingZero!11225 (index!47291 (_ BitVec 32))) (Found!11225 (index!47292 (_ BitVec 32))) (Intermediate!11225 (undefined!12037 Bool) (index!47293 (_ BitVec 32)) (x!128934 (_ BitVec 32))) (Undefined!11225) (MissingVacant!11225 (index!47294 (_ BitVec 32))) )
))
(declare-fun lt!627757 () SeekEntryResult!11225)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97221 0))(
  ( (array!97222 (arr!46924 (Array (_ BitVec 32) (_ BitVec 64))) (size!47475 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97221)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97221 (_ BitVec 32)) SeekEntryResult!11225)

(assert (=> b!1425389 (= lt!627757 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46924 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425390 () Bool)

(declare-fun res!960939 () Bool)

(assert (=> b!1425390 (=> (not res!960939) (not e!805349))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425390 (= res!960939 (and (= (size!47475 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47475 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47475 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425391 () Bool)

(declare-fun res!960935 () Bool)

(assert (=> b!1425391 (=> (not res!960935) (not e!805349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425391 (= res!960935 (validKeyInArray!0 (select (arr!46924 a!2831) i!982)))))

(declare-fun b!1425392 () Bool)

(declare-fun res!960931 () Bool)

(assert (=> b!1425392 (=> (not res!960931) (not e!805349))))

(declare-datatypes ((List!33614 0))(
  ( (Nil!33611) (Cons!33610 (h!34912 (_ BitVec 64)) (t!48315 List!33614)) )
))
(declare-fun arrayNoDuplicates!0 (array!97221 (_ BitVec 32) List!33614) Bool)

(assert (=> b!1425392 (= res!960931 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33611))))

(declare-fun b!1425393 () Bool)

(declare-fun res!960934 () Bool)

(assert (=> b!1425393 (=> (not res!960934) (not e!805349))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425393 (= res!960934 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46924 a!2831) j!81) mask!2608) (select (arr!46924 a!2831) j!81) a!2831 mask!2608) (Intermediate!11225 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425394 () Bool)

(declare-fun res!960937 () Bool)

(assert (=> b!1425394 (=> (not res!960937) (not e!805349))))

(assert (=> b!1425394 (= res!960937 (validKeyInArray!0 (select (arr!46924 a!2831) j!81)))))

(declare-fun b!1425395 () Bool)

(declare-fun res!960936 () Bool)

(assert (=> b!1425395 (=> (not res!960936) (not e!805349))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1425395 (= res!960936 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46924 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46924 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97222 (store (arr!46924 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47475 a!2831)) mask!2608) (Intermediate!11225 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun res!960933 () Bool)

(assert (=> start!122938 (=> (not res!960933) (not e!805349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122938 (= res!960933 (validMask!0 mask!2608))))

(assert (=> start!122938 e!805349))

(assert (=> start!122938 true))

(declare-fun array_inv!35869 (array!97221) Bool)

(assert (=> start!122938 (array_inv!35869 a!2831)))

(declare-fun b!1425396 () Bool)

(declare-fun res!960938 () Bool)

(assert (=> b!1425396 (=> (not res!960938) (not e!805349))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97221 (_ BitVec 32)) Bool)

(assert (=> b!1425396 (= res!960938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425397 () Bool)

(declare-fun res!960932 () Bool)

(assert (=> b!1425397 (=> (not res!960932) (not e!805349))))

(assert (=> b!1425397 (= res!960932 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47475 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47475 a!2831))))))

(assert (= (and start!122938 res!960933) b!1425390))

(assert (= (and b!1425390 res!960939) b!1425391))

(assert (= (and b!1425391 res!960935) b!1425394))

(assert (= (and b!1425394 res!960937) b!1425396))

(assert (= (and b!1425396 res!960938) b!1425392))

(assert (= (and b!1425392 res!960931) b!1425397))

(assert (= (and b!1425397 res!960932) b!1425393))

(assert (= (and b!1425393 res!960934) b!1425395))

(assert (= (and b!1425395 res!960936) b!1425389))

(declare-fun m!1316027 () Bool)

(assert (=> b!1425391 m!1316027))

(assert (=> b!1425391 m!1316027))

(declare-fun m!1316029 () Bool)

(assert (=> b!1425391 m!1316029))

(declare-fun m!1316031 () Bool)

(assert (=> b!1425396 m!1316031))

(declare-fun m!1316033 () Bool)

(assert (=> b!1425395 m!1316033))

(declare-fun m!1316035 () Bool)

(assert (=> b!1425395 m!1316035))

(assert (=> b!1425395 m!1316035))

(declare-fun m!1316037 () Bool)

(assert (=> b!1425395 m!1316037))

(assert (=> b!1425395 m!1316037))

(assert (=> b!1425395 m!1316035))

(declare-fun m!1316039 () Bool)

(assert (=> b!1425395 m!1316039))

(declare-fun m!1316041 () Bool)

(assert (=> b!1425389 m!1316041))

(assert (=> b!1425389 m!1316041))

(declare-fun m!1316043 () Bool)

(assert (=> b!1425389 m!1316043))

(assert (=> b!1425394 m!1316041))

(assert (=> b!1425394 m!1316041))

(declare-fun m!1316045 () Bool)

(assert (=> b!1425394 m!1316045))

(assert (=> b!1425393 m!1316041))

(assert (=> b!1425393 m!1316041))

(declare-fun m!1316047 () Bool)

(assert (=> b!1425393 m!1316047))

(assert (=> b!1425393 m!1316047))

(assert (=> b!1425393 m!1316041))

(declare-fun m!1316049 () Bool)

(assert (=> b!1425393 m!1316049))

(declare-fun m!1316051 () Bool)

(assert (=> start!122938 m!1316051))

(declare-fun m!1316053 () Bool)

(assert (=> start!122938 m!1316053))

(declare-fun m!1316055 () Bool)

(assert (=> b!1425392 m!1316055))

(push 1)

(assert (not b!1425392))

(assert (not b!1425393))

(assert (not b!1425389))

(assert (not b!1425391))

(assert (not b!1425394))

(assert (not b!1425395))

(assert (not b!1425396))

(assert (not start!122938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


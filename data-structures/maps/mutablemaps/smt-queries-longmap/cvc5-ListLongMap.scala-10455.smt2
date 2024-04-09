; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122932 () Bool)

(assert start!122932)

(declare-fun b!1425308 () Bool)

(declare-fun res!960858 () Bool)

(declare-fun e!805331 () Bool)

(assert (=> b!1425308 (=> (not res!960858) (not e!805331))))

(declare-datatypes ((array!97215 0))(
  ( (array!97216 (arr!46921 (Array (_ BitVec 32) (_ BitVec 64))) (size!47472 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97215)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425308 (= res!960858 (validKeyInArray!0 (select (arr!46921 a!2831) j!81)))))

(declare-fun b!1425309 () Bool)

(assert (=> b!1425309 (= e!805331 false)))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11222 0))(
  ( (MissingZero!11222 (index!47279 (_ BitVec 32))) (Found!11222 (index!47280 (_ BitVec 32))) (Intermediate!11222 (undefined!12034 Bool) (index!47281 (_ BitVec 32)) (x!128923 (_ BitVec 32))) (Undefined!11222) (MissingVacant!11222 (index!47282 (_ BitVec 32))) )
))
(declare-fun lt!627748 () SeekEntryResult!11222)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97215 (_ BitVec 32)) SeekEntryResult!11222)

(assert (=> b!1425309 (= lt!627748 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46921 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425310 () Bool)

(declare-fun res!960855 () Bool)

(assert (=> b!1425310 (=> (not res!960855) (not e!805331))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425310 (= res!960855 (validKeyInArray!0 (select (arr!46921 a!2831) i!982)))))

(declare-fun b!1425311 () Bool)

(declare-fun res!960851 () Bool)

(assert (=> b!1425311 (=> (not res!960851) (not e!805331))))

(declare-datatypes ((List!33611 0))(
  ( (Nil!33608) (Cons!33607 (h!34909 (_ BitVec 64)) (t!48312 List!33611)) )
))
(declare-fun arrayNoDuplicates!0 (array!97215 (_ BitVec 32) List!33611) Bool)

(assert (=> b!1425311 (= res!960851 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33608))))

(declare-fun res!960853 () Bool)

(assert (=> start!122932 (=> (not res!960853) (not e!805331))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122932 (= res!960853 (validMask!0 mask!2608))))

(assert (=> start!122932 e!805331))

(assert (=> start!122932 true))

(declare-fun array_inv!35866 (array!97215) Bool)

(assert (=> start!122932 (array_inv!35866 a!2831)))

(declare-fun b!1425312 () Bool)

(declare-fun res!960856 () Bool)

(assert (=> b!1425312 (=> (not res!960856) (not e!805331))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425312 (= res!960856 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46921 a!2831) j!81) mask!2608) (select (arr!46921 a!2831) j!81) a!2831 mask!2608) (Intermediate!11222 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425313 () Bool)

(declare-fun res!960852 () Bool)

(assert (=> b!1425313 (=> (not res!960852) (not e!805331))))

(assert (=> b!1425313 (= res!960852 (and (= (size!47472 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47472 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47472 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425314 () Bool)

(declare-fun res!960854 () Bool)

(assert (=> b!1425314 (=> (not res!960854) (not e!805331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97215 (_ BitVec 32)) Bool)

(assert (=> b!1425314 (= res!960854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425315 () Bool)

(declare-fun res!960857 () Bool)

(assert (=> b!1425315 (=> (not res!960857) (not e!805331))))

(assert (=> b!1425315 (= res!960857 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47472 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47472 a!2831))))))

(declare-fun b!1425316 () Bool)

(declare-fun res!960850 () Bool)

(assert (=> b!1425316 (=> (not res!960850) (not e!805331))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1425316 (= res!960850 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46921 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46921 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97216 (store (arr!46921 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47472 a!2831)) mask!2608) (Intermediate!11222 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (= (and start!122932 res!960853) b!1425313))

(assert (= (and b!1425313 res!960852) b!1425310))

(assert (= (and b!1425310 res!960855) b!1425308))

(assert (= (and b!1425308 res!960858) b!1425314))

(assert (= (and b!1425314 res!960854) b!1425311))

(assert (= (and b!1425311 res!960851) b!1425315))

(assert (= (and b!1425315 res!960857) b!1425312))

(assert (= (and b!1425312 res!960856) b!1425316))

(assert (= (and b!1425316 res!960850) b!1425309))

(declare-fun m!1315937 () Bool)

(assert (=> start!122932 m!1315937))

(declare-fun m!1315939 () Bool)

(assert (=> start!122932 m!1315939))

(declare-fun m!1315941 () Bool)

(assert (=> b!1425310 m!1315941))

(assert (=> b!1425310 m!1315941))

(declare-fun m!1315943 () Bool)

(assert (=> b!1425310 m!1315943))

(declare-fun m!1315945 () Bool)

(assert (=> b!1425309 m!1315945))

(assert (=> b!1425309 m!1315945))

(declare-fun m!1315947 () Bool)

(assert (=> b!1425309 m!1315947))

(declare-fun m!1315949 () Bool)

(assert (=> b!1425311 m!1315949))

(assert (=> b!1425312 m!1315945))

(assert (=> b!1425312 m!1315945))

(declare-fun m!1315951 () Bool)

(assert (=> b!1425312 m!1315951))

(assert (=> b!1425312 m!1315951))

(assert (=> b!1425312 m!1315945))

(declare-fun m!1315953 () Bool)

(assert (=> b!1425312 m!1315953))

(assert (=> b!1425308 m!1315945))

(assert (=> b!1425308 m!1315945))

(declare-fun m!1315955 () Bool)

(assert (=> b!1425308 m!1315955))

(declare-fun m!1315957 () Bool)

(assert (=> b!1425316 m!1315957))

(declare-fun m!1315959 () Bool)

(assert (=> b!1425316 m!1315959))

(assert (=> b!1425316 m!1315959))

(declare-fun m!1315961 () Bool)

(assert (=> b!1425316 m!1315961))

(assert (=> b!1425316 m!1315961))

(assert (=> b!1425316 m!1315959))

(declare-fun m!1315963 () Bool)

(assert (=> b!1425316 m!1315963))

(declare-fun m!1315965 () Bool)

(assert (=> b!1425314 m!1315965))

(push 1)

(assert (not b!1425311))

(assert (not b!1425314))

(assert (not b!1425308))

(assert (not b!1425309))

(assert (not start!122932))

(assert (not b!1425312))

(assert (not b!1425316))

(assert (not b!1425310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122956 () Bool)

(assert start!122956)

(declare-fun b!1425643 () Bool)

(declare-fun res!961185 () Bool)

(declare-fun e!805425 () Bool)

(assert (=> b!1425643 (=> (not res!961185) (not e!805425))))

(declare-datatypes ((array!97239 0))(
  ( (array!97240 (arr!46933 (Array (_ BitVec 32) (_ BitVec 64))) (size!47484 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97239)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425643 (= res!961185 (validKeyInArray!0 (select (arr!46933 a!2831) j!81)))))

(declare-fun res!961193 () Bool)

(assert (=> start!122956 (=> (not res!961193) (not e!805425))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122956 (= res!961193 (validMask!0 mask!2608))))

(assert (=> start!122956 e!805425))

(assert (=> start!122956 true))

(declare-fun array_inv!35878 (array!97239) Bool)

(assert (=> start!122956 (array_inv!35878 a!2831)))

(declare-fun b!1425644 () Bool)

(declare-fun res!961187 () Bool)

(assert (=> b!1425644 (=> (not res!961187) (not e!805425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97239 (_ BitVec 32)) Bool)

(assert (=> b!1425644 (= res!961187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425645 () Bool)

(declare-fun res!961188 () Bool)

(assert (=> b!1425645 (=> (not res!961188) (not e!805425))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425645 (= res!961188 (and (= (size!47484 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47484 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47484 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425646 () Bool)

(declare-fun res!961189 () Bool)

(assert (=> b!1425646 (=> (not res!961189) (not e!805425))))

(declare-datatypes ((List!33623 0))(
  ( (Nil!33620) (Cons!33619 (h!34921 (_ BitVec 64)) (t!48324 List!33623)) )
))
(declare-fun arrayNoDuplicates!0 (array!97239 (_ BitVec 32) List!33623) Bool)

(assert (=> b!1425646 (= res!961189 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33620))))

(declare-fun b!1425647 () Bool)

(declare-fun e!805426 () Bool)

(declare-fun e!805427 () Bool)

(assert (=> b!1425647 (= e!805426 e!805427)))

(declare-fun res!961186 () Bool)

(assert (=> b!1425647 (=> (not res!961186) (not e!805427))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!627817 () array!97239)

(declare-fun lt!627819 () (_ BitVec 64))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-datatypes ((SeekEntryResult!11234 0))(
  ( (MissingZero!11234 (index!47327 (_ BitVec 32))) (Found!11234 (index!47328 (_ BitVec 32))) (Intermediate!11234 (undefined!12046 Bool) (index!47329 (_ BitVec 32)) (x!128967 (_ BitVec 32))) (Undefined!11234) (MissingVacant!11234 (index!47330 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97239 (_ BitVec 32)) SeekEntryResult!11234)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425647 (= res!961186 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627819 mask!2608) lt!627819 lt!627817 mask!2608) (Intermediate!11234 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1425647 (= lt!627819 (select (store (arr!46933 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425647 (= lt!627817 (array!97240 (store (arr!46933 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47484 a!2831)))))

(declare-fun b!1425648 () Bool)

(assert (=> b!1425648 (= e!805427 false)))

(declare-fun lt!627818 () SeekEntryResult!11234)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425648 (= lt!627818 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627819 lt!627817 mask!2608))))

(declare-fun b!1425649 () Bool)

(assert (=> b!1425649 (= e!805425 e!805426)))

(declare-fun res!961191 () Bool)

(assert (=> b!1425649 (=> (not res!961191) (not e!805426))))

(declare-fun lt!627820 () SeekEntryResult!11234)

(assert (=> b!1425649 (= res!961191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46933 a!2831) j!81) mask!2608) (select (arr!46933 a!2831) j!81) a!2831 mask!2608) lt!627820))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1425649 (= lt!627820 (Intermediate!11234 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425650 () Bool)

(declare-fun res!961190 () Bool)

(assert (=> b!1425650 (=> (not res!961190) (not e!805427))))

(assert (=> b!1425650 (= res!961190 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46933 a!2831) j!81) a!2831 mask!2608) lt!627820))))

(declare-fun b!1425651 () Bool)

(declare-fun res!961194 () Bool)

(assert (=> b!1425651 (=> (not res!961194) (not e!805425))))

(assert (=> b!1425651 (= res!961194 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47484 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47484 a!2831))))))

(declare-fun b!1425652 () Bool)

(declare-fun res!961192 () Bool)

(assert (=> b!1425652 (=> (not res!961192) (not e!805425))))

(assert (=> b!1425652 (= res!961192 (validKeyInArray!0 (select (arr!46933 a!2831) i!982)))))

(assert (= (and start!122956 res!961193) b!1425645))

(assert (= (and b!1425645 res!961188) b!1425652))

(assert (= (and b!1425652 res!961192) b!1425643))

(assert (= (and b!1425643 res!961185) b!1425644))

(assert (= (and b!1425644 res!961187) b!1425646))

(assert (= (and b!1425646 res!961189) b!1425651))

(assert (= (and b!1425651 res!961194) b!1425649))

(assert (= (and b!1425649 res!961191) b!1425647))

(assert (= (and b!1425647 res!961186) b!1425650))

(assert (= (and b!1425650 res!961190) b!1425648))

(declare-fun m!1316303 () Bool)

(assert (=> b!1425648 m!1316303))

(declare-fun m!1316305 () Bool)

(assert (=> b!1425644 m!1316305))

(declare-fun m!1316307 () Bool)

(assert (=> b!1425647 m!1316307))

(assert (=> b!1425647 m!1316307))

(declare-fun m!1316309 () Bool)

(assert (=> b!1425647 m!1316309))

(declare-fun m!1316311 () Bool)

(assert (=> b!1425647 m!1316311))

(declare-fun m!1316313 () Bool)

(assert (=> b!1425647 m!1316313))

(declare-fun m!1316315 () Bool)

(assert (=> b!1425643 m!1316315))

(assert (=> b!1425643 m!1316315))

(declare-fun m!1316317 () Bool)

(assert (=> b!1425643 m!1316317))

(assert (=> b!1425649 m!1316315))

(assert (=> b!1425649 m!1316315))

(declare-fun m!1316319 () Bool)

(assert (=> b!1425649 m!1316319))

(assert (=> b!1425649 m!1316319))

(assert (=> b!1425649 m!1316315))

(declare-fun m!1316321 () Bool)

(assert (=> b!1425649 m!1316321))

(declare-fun m!1316323 () Bool)

(assert (=> start!122956 m!1316323))

(declare-fun m!1316325 () Bool)

(assert (=> start!122956 m!1316325))

(assert (=> b!1425650 m!1316315))

(assert (=> b!1425650 m!1316315))

(declare-fun m!1316327 () Bool)

(assert (=> b!1425650 m!1316327))

(declare-fun m!1316329 () Bool)

(assert (=> b!1425646 m!1316329))

(declare-fun m!1316331 () Bool)

(assert (=> b!1425652 m!1316331))

(assert (=> b!1425652 m!1316331))

(declare-fun m!1316333 () Bool)

(assert (=> b!1425652 m!1316333))

(push 1)


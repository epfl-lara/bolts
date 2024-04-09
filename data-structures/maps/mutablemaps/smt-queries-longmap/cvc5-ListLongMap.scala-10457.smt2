; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122944 () Bool)

(assert start!122944)

(declare-fun b!1425470 () Bool)

(declare-fun e!805366 () Bool)

(assert (=> b!1425470 (= e!805366 false)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97227 0))(
  ( (array!97228 (arr!46927 (Array (_ BitVec 32) (_ BitVec 64))) (size!47478 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97227)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11228 0))(
  ( (MissingZero!11228 (index!47303 (_ BitVec 32))) (Found!11228 (index!47304 (_ BitVec 32))) (Intermediate!11228 (undefined!12040 Bool) (index!47305 (_ BitVec 32)) (x!128945 (_ BitVec 32))) (Undefined!11228) (MissingVacant!11228 (index!47306 (_ BitVec 32))) )
))
(declare-fun lt!627766 () SeekEntryResult!11228)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97227 (_ BitVec 32)) SeekEntryResult!11228)

(assert (=> b!1425470 (= lt!627766 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46927 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425471 () Bool)

(declare-fun res!961018 () Bool)

(assert (=> b!1425471 (=> (not res!961018) (not e!805366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97227 (_ BitVec 32)) Bool)

(assert (=> b!1425471 (= res!961018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425473 () Bool)

(declare-fun res!961020 () Bool)

(assert (=> b!1425473 (=> (not res!961020) (not e!805366))))

(declare-datatypes ((List!33617 0))(
  ( (Nil!33614) (Cons!33613 (h!34915 (_ BitVec 64)) (t!48318 List!33617)) )
))
(declare-fun arrayNoDuplicates!0 (array!97227 (_ BitVec 32) List!33617) Bool)

(assert (=> b!1425473 (= res!961020 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33614))))

(declare-fun b!1425474 () Bool)

(declare-fun res!961012 () Bool)

(assert (=> b!1425474 (=> (not res!961012) (not e!805366))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425474 (= res!961012 (validKeyInArray!0 (select (arr!46927 a!2831) i!982)))))

(declare-fun b!1425475 () Bool)

(declare-fun res!961014 () Bool)

(assert (=> b!1425475 (=> (not res!961014) (not e!805366))))

(assert (=> b!1425475 (= res!961014 (and (= (size!47478 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47478 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47478 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425476 () Bool)

(declare-fun res!961017 () Bool)

(assert (=> b!1425476 (=> (not res!961017) (not e!805366))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425476 (= res!961017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46927 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46927 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97228 (store (arr!46927 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47478 a!2831)) mask!2608) (Intermediate!11228 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1425477 () Bool)

(declare-fun res!961013 () Bool)

(assert (=> b!1425477 (=> (not res!961013) (not e!805366))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1425477 (= res!961013 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46927 a!2831) j!81) mask!2608) (select (arr!46927 a!2831) j!81) a!2831 mask!2608) (Intermediate!11228 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425478 () Bool)

(declare-fun res!961019 () Bool)

(assert (=> b!1425478 (=> (not res!961019) (not e!805366))))

(assert (=> b!1425478 (= res!961019 (validKeyInArray!0 (select (arr!46927 a!2831) j!81)))))

(declare-fun res!961015 () Bool)

(assert (=> start!122944 (=> (not res!961015) (not e!805366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122944 (= res!961015 (validMask!0 mask!2608))))

(assert (=> start!122944 e!805366))

(assert (=> start!122944 true))

(declare-fun array_inv!35872 (array!97227) Bool)

(assert (=> start!122944 (array_inv!35872 a!2831)))

(declare-fun b!1425472 () Bool)

(declare-fun res!961016 () Bool)

(assert (=> b!1425472 (=> (not res!961016) (not e!805366))))

(assert (=> b!1425472 (= res!961016 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47478 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47478 a!2831))))))

(assert (= (and start!122944 res!961015) b!1425475))

(assert (= (and b!1425475 res!961014) b!1425474))

(assert (= (and b!1425474 res!961012) b!1425478))

(assert (= (and b!1425478 res!961019) b!1425471))

(assert (= (and b!1425471 res!961018) b!1425473))

(assert (= (and b!1425473 res!961020) b!1425472))

(assert (= (and b!1425472 res!961016) b!1425477))

(assert (= (and b!1425477 res!961013) b!1425476))

(assert (= (and b!1425476 res!961017) b!1425470))

(declare-fun m!1316117 () Bool)

(assert (=> b!1425477 m!1316117))

(assert (=> b!1425477 m!1316117))

(declare-fun m!1316119 () Bool)

(assert (=> b!1425477 m!1316119))

(assert (=> b!1425477 m!1316119))

(assert (=> b!1425477 m!1316117))

(declare-fun m!1316121 () Bool)

(assert (=> b!1425477 m!1316121))

(assert (=> b!1425478 m!1316117))

(assert (=> b!1425478 m!1316117))

(declare-fun m!1316123 () Bool)

(assert (=> b!1425478 m!1316123))

(declare-fun m!1316125 () Bool)

(assert (=> b!1425471 m!1316125))

(declare-fun m!1316127 () Bool)

(assert (=> b!1425473 m!1316127))

(assert (=> b!1425470 m!1316117))

(assert (=> b!1425470 m!1316117))

(declare-fun m!1316129 () Bool)

(assert (=> b!1425470 m!1316129))

(declare-fun m!1316131 () Bool)

(assert (=> start!122944 m!1316131))

(declare-fun m!1316133 () Bool)

(assert (=> start!122944 m!1316133))

(declare-fun m!1316135 () Bool)

(assert (=> b!1425474 m!1316135))

(assert (=> b!1425474 m!1316135))

(declare-fun m!1316137 () Bool)

(assert (=> b!1425474 m!1316137))

(declare-fun m!1316139 () Bool)

(assert (=> b!1425476 m!1316139))

(declare-fun m!1316141 () Bool)

(assert (=> b!1425476 m!1316141))

(assert (=> b!1425476 m!1316141))

(declare-fun m!1316143 () Bool)

(assert (=> b!1425476 m!1316143))

(assert (=> b!1425476 m!1316143))

(assert (=> b!1425476 m!1316141))

(declare-fun m!1316145 () Bool)

(assert (=> b!1425476 m!1316145))

(push 1)

(assert (not b!1425473))

(assert (not b!1425471))

(assert (not b!1425477))

(assert (not b!1425476))

(assert (not b!1425470))

(assert (not b!1425478))

(assert (not start!122944))

(assert (not b!1425474))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


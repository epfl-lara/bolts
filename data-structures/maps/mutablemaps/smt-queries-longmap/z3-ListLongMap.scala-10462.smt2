; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122976 () Bool)

(assert start!122976)

(declare-fun b!1425957 () Bool)

(declare-fun res!961499 () Bool)

(declare-fun e!805547 () Bool)

(assert (=> b!1425957 (=> (not res!961499) (not e!805547))))

(declare-datatypes ((array!97259 0))(
  ( (array!97260 (arr!46943 (Array (_ BitVec 32) (_ BitVec 64))) (size!47494 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97259)

(declare-datatypes ((List!33633 0))(
  ( (Nil!33630) (Cons!33629 (h!34931 (_ BitVec 64)) (t!48334 List!33633)) )
))
(declare-fun arrayNoDuplicates!0 (array!97259 (_ BitVec 32) List!33633) Bool)

(assert (=> b!1425957 (= res!961499 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33630))))

(declare-fun b!1425958 () Bool)

(declare-fun e!805546 () Bool)

(declare-fun e!805544 () Bool)

(assert (=> b!1425958 (= e!805546 e!805544)))

(declare-fun res!961502 () Bool)

(assert (=> b!1425958 (=> (not res!961502) (not e!805544))))

(declare-fun lt!627937 () array!97259)

(declare-datatypes ((SeekEntryResult!11244 0))(
  ( (MissingZero!11244 (index!47367 (_ BitVec 32))) (Found!11244 (index!47368 (_ BitVec 32))) (Intermediate!11244 (undefined!12056 Bool) (index!47369 (_ BitVec 32)) (x!129001 (_ BitVec 32))) (Undefined!11244) (MissingVacant!11244 (index!47370 (_ BitVec 32))) )
))
(declare-fun lt!627940 () SeekEntryResult!11244)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!627938 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97259 (_ BitVec 32)) SeekEntryResult!11244)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425958 (= res!961502 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627938 mask!2608) lt!627938 lt!627937 mask!2608) lt!627940))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1425958 (= lt!627940 (Intermediate!11244 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425958 (= lt!627938 (select (store (arr!46943 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425958 (= lt!627937 (array!97260 (store (arr!46943 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47494 a!2831)))))

(declare-fun b!1425959 () Bool)

(declare-fun res!961507 () Bool)

(assert (=> b!1425959 (=> (not res!961507) (not e!805547))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425959 (= res!961507 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47494 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47494 a!2831))))))

(declare-fun res!961509 () Bool)

(assert (=> start!122976 (=> (not res!961509) (not e!805547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122976 (= res!961509 (validMask!0 mask!2608))))

(assert (=> start!122976 e!805547))

(assert (=> start!122976 true))

(declare-fun array_inv!35888 (array!97259) Bool)

(assert (=> start!122976 (array_inv!35888 a!2831)))

(declare-fun b!1425960 () Bool)

(declare-fun res!961504 () Bool)

(assert (=> b!1425960 (=> (not res!961504) (not e!805547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425960 (= res!961504 (validKeyInArray!0 (select (arr!46943 a!2831) i!982)))))

(declare-fun b!1425961 () Bool)

(declare-fun res!961500 () Bool)

(assert (=> b!1425961 (=> (not res!961500) (not e!805544))))

(assert (=> b!1425961 (= res!961500 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627938 lt!627937 mask!2608) lt!627940))))

(declare-fun b!1425962 () Bool)

(assert (=> b!1425962 (= e!805547 e!805546)))

(declare-fun res!961508 () Bool)

(assert (=> b!1425962 (=> (not res!961508) (not e!805546))))

(declare-fun lt!627939 () SeekEntryResult!11244)

(assert (=> b!1425962 (= res!961508 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46943 a!2831) j!81) mask!2608) (select (arr!46943 a!2831) j!81) a!2831 mask!2608) lt!627939))))

(assert (=> b!1425962 (= lt!627939 (Intermediate!11244 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425963 () Bool)

(declare-fun res!961506 () Bool)

(assert (=> b!1425963 (=> (not res!961506) (not e!805547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97259 (_ BitVec 32)) Bool)

(assert (=> b!1425963 (= res!961506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425964 () Bool)

(declare-fun res!961505 () Bool)

(assert (=> b!1425964 (=> (not res!961505) (not e!805547))))

(assert (=> b!1425964 (= res!961505 (and (= (size!47494 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47494 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47494 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425965 () Bool)

(declare-fun res!961501 () Bool)

(assert (=> b!1425965 (=> (not res!961501) (not e!805544))))

(assert (=> b!1425965 (= res!961501 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46943 a!2831) j!81) a!2831 mask!2608) lt!627939))))

(declare-fun b!1425966 () Bool)

(assert (=> b!1425966 (= e!805544 (and (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))) (bvsle #b00000000000000000000000000000000 (size!47494 a!2831)) (bvsgt j!81 (size!47494 a!2831))))))

(declare-fun b!1425967 () Bool)

(declare-fun res!961503 () Bool)

(assert (=> b!1425967 (=> (not res!961503) (not e!805547))))

(assert (=> b!1425967 (= res!961503 (validKeyInArray!0 (select (arr!46943 a!2831) j!81)))))

(assert (= (and start!122976 res!961509) b!1425964))

(assert (= (and b!1425964 res!961505) b!1425960))

(assert (= (and b!1425960 res!961504) b!1425967))

(assert (= (and b!1425967 res!961503) b!1425963))

(assert (= (and b!1425963 res!961506) b!1425957))

(assert (= (and b!1425957 res!961499) b!1425959))

(assert (= (and b!1425959 res!961507) b!1425962))

(assert (= (and b!1425962 res!961508) b!1425958))

(assert (= (and b!1425958 res!961502) b!1425965))

(assert (= (and b!1425965 res!961501) b!1425961))

(assert (= (and b!1425961 res!961500) b!1425966))

(declare-fun m!1316623 () Bool)

(assert (=> b!1425961 m!1316623))

(declare-fun m!1316625 () Bool)

(assert (=> b!1425963 m!1316625))

(declare-fun m!1316627 () Bool)

(assert (=> b!1425957 m!1316627))

(declare-fun m!1316629 () Bool)

(assert (=> b!1425962 m!1316629))

(assert (=> b!1425962 m!1316629))

(declare-fun m!1316631 () Bool)

(assert (=> b!1425962 m!1316631))

(assert (=> b!1425962 m!1316631))

(assert (=> b!1425962 m!1316629))

(declare-fun m!1316633 () Bool)

(assert (=> b!1425962 m!1316633))

(assert (=> b!1425965 m!1316629))

(assert (=> b!1425965 m!1316629))

(declare-fun m!1316635 () Bool)

(assert (=> b!1425965 m!1316635))

(declare-fun m!1316637 () Bool)

(assert (=> start!122976 m!1316637))

(declare-fun m!1316639 () Bool)

(assert (=> start!122976 m!1316639))

(assert (=> b!1425967 m!1316629))

(assert (=> b!1425967 m!1316629))

(declare-fun m!1316641 () Bool)

(assert (=> b!1425967 m!1316641))

(declare-fun m!1316643 () Bool)

(assert (=> b!1425958 m!1316643))

(assert (=> b!1425958 m!1316643))

(declare-fun m!1316645 () Bool)

(assert (=> b!1425958 m!1316645))

(declare-fun m!1316647 () Bool)

(assert (=> b!1425958 m!1316647))

(declare-fun m!1316649 () Bool)

(assert (=> b!1425958 m!1316649))

(declare-fun m!1316651 () Bool)

(assert (=> b!1425960 m!1316651))

(assert (=> b!1425960 m!1316651))

(declare-fun m!1316653 () Bool)

(assert (=> b!1425960 m!1316653))

(check-sat (not b!1425957) (not b!1425958) (not b!1425965) (not b!1425961) (not b!1425963) (not b!1425967) (not b!1425962) (not b!1425960) (not start!122976))
(check-sat)

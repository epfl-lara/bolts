; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122756 () Bool)

(assert start!122756)

(declare-fun b!1421767 () Bool)

(declare-fun res!957313 () Bool)

(declare-fun e!803872 () Bool)

(assert (=> b!1421767 (=> (not res!957313) (not e!803872))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97039 0))(
  ( (array!97040 (arr!46833 (Array (_ BitVec 32) (_ BitVec 64))) (size!47384 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97039)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1421767 (= res!957313 (and (= (size!47384 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47384 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47384 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421768 () Bool)

(declare-fun res!957312 () Bool)

(assert (=> b!1421768 (=> (not res!957312) (not e!803872))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1421768 (= res!957312 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47384 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47384 a!2831))))))

(declare-fun b!1421769 () Bool)

(declare-fun e!803876 () Bool)

(assert (=> b!1421769 (= e!803876 (not (or (= (select (arr!46833 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46833 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46833 a!2831) index!585) (select (arr!46833 a!2831) j!81)) (= (select (store (arr!46833 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!2608 #b00000000000000000000000000000000) (bvslt index!585 (bvadd #b00000000000000000000000000000001 mask!2608)))))))

(declare-fun e!803873 () Bool)

(assert (=> b!1421769 e!803873))

(declare-fun res!957315 () Bool)

(assert (=> b!1421769 (=> (not res!957315) (not e!803873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97039 (_ BitVec 32)) Bool)

(assert (=> b!1421769 (= res!957315 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48064 0))(
  ( (Unit!48065) )
))
(declare-fun lt!626367 () Unit!48064)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48064)

(assert (=> b!1421769 (= lt!626367 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421770 () Bool)

(declare-fun res!957320 () Bool)

(assert (=> b!1421770 (=> (not res!957320) (not e!803872))))

(assert (=> b!1421770 (= res!957320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421771 () Bool)

(declare-fun res!957316 () Bool)

(assert (=> b!1421771 (=> (not res!957316) (not e!803876))))

(declare-fun lt!626366 () array!97039)

(declare-fun lt!626368 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11140 0))(
  ( (MissingZero!11140 (index!46951 (_ BitVec 32))) (Found!11140 (index!46952 (_ BitVec 32))) (Intermediate!11140 (undefined!11952 Bool) (index!46953 (_ BitVec 32)) (x!128601 (_ BitVec 32))) (Undefined!11140) (MissingVacant!11140 (index!46954 (_ BitVec 32))) )
))
(declare-fun lt!626365 () SeekEntryResult!11140)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97039 (_ BitVec 32)) SeekEntryResult!11140)

(assert (=> b!1421771 (= res!957316 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626368 lt!626366 mask!2608) lt!626365))))

(declare-fun b!1421772 () Bool)

(declare-fun res!957319 () Bool)

(assert (=> b!1421772 (=> (not res!957319) (not e!803872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421772 (= res!957319 (validKeyInArray!0 (select (arr!46833 a!2831) i!982)))))

(declare-fun b!1421773 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97039 (_ BitVec 32)) SeekEntryResult!11140)

(assert (=> b!1421773 (= e!803873 (= (seekEntryOrOpen!0 (select (arr!46833 a!2831) j!81) a!2831 mask!2608) (Found!11140 j!81)))))

(declare-fun res!957318 () Bool)

(assert (=> start!122756 (=> (not res!957318) (not e!803872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122756 (= res!957318 (validMask!0 mask!2608))))

(assert (=> start!122756 e!803872))

(assert (=> start!122756 true))

(declare-fun array_inv!35778 (array!97039) Bool)

(assert (=> start!122756 (array_inv!35778 a!2831)))

(declare-fun b!1421774 () Bool)

(declare-fun res!957314 () Bool)

(assert (=> b!1421774 (=> (not res!957314) (not e!803872))))

(assert (=> b!1421774 (= res!957314 (validKeyInArray!0 (select (arr!46833 a!2831) j!81)))))

(declare-fun b!1421775 () Bool)

(declare-fun e!803874 () Bool)

(assert (=> b!1421775 (= e!803874 e!803876)))

(declare-fun res!957321 () Bool)

(assert (=> b!1421775 (=> (not res!957321) (not e!803876))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421775 (= res!957321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626368 mask!2608) lt!626368 lt!626366 mask!2608) lt!626365))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421775 (= lt!626365 (Intermediate!11140 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421775 (= lt!626368 (select (store (arr!46833 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421775 (= lt!626366 (array!97040 (store (arr!46833 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47384 a!2831)))))

(declare-fun b!1421776 () Bool)

(declare-fun res!957311 () Bool)

(assert (=> b!1421776 (=> (not res!957311) (not e!803872))))

(declare-datatypes ((List!33523 0))(
  ( (Nil!33520) (Cons!33519 (h!34821 (_ BitVec 64)) (t!48224 List!33523)) )
))
(declare-fun arrayNoDuplicates!0 (array!97039 (_ BitVec 32) List!33523) Bool)

(assert (=> b!1421776 (= res!957311 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33520))))

(declare-fun b!1421777 () Bool)

(declare-fun res!957317 () Bool)

(assert (=> b!1421777 (=> (not res!957317) (not e!803876))))

(declare-fun lt!626364 () SeekEntryResult!11140)

(assert (=> b!1421777 (= res!957317 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46833 a!2831) j!81) a!2831 mask!2608) lt!626364))))

(declare-fun b!1421778 () Bool)

(declare-fun res!957310 () Bool)

(assert (=> b!1421778 (=> (not res!957310) (not e!803876))))

(assert (=> b!1421778 (= res!957310 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421779 () Bool)

(assert (=> b!1421779 (= e!803872 e!803874)))

(declare-fun res!957309 () Bool)

(assert (=> b!1421779 (=> (not res!957309) (not e!803874))))

(assert (=> b!1421779 (= res!957309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46833 a!2831) j!81) mask!2608) (select (arr!46833 a!2831) j!81) a!2831 mask!2608) lt!626364))))

(assert (=> b!1421779 (= lt!626364 (Intermediate!11140 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!122756 res!957318) b!1421767))

(assert (= (and b!1421767 res!957313) b!1421772))

(assert (= (and b!1421772 res!957319) b!1421774))

(assert (= (and b!1421774 res!957314) b!1421770))

(assert (= (and b!1421770 res!957320) b!1421776))

(assert (= (and b!1421776 res!957311) b!1421768))

(assert (= (and b!1421768 res!957312) b!1421779))

(assert (= (and b!1421779 res!957309) b!1421775))

(assert (= (and b!1421775 res!957321) b!1421777))

(assert (= (and b!1421777 res!957317) b!1421771))

(assert (= (and b!1421771 res!957316) b!1421778))

(assert (= (and b!1421778 res!957310) b!1421769))

(assert (= (and b!1421769 res!957315) b!1421773))

(declare-fun m!1312379 () Bool)

(assert (=> b!1421776 m!1312379))

(declare-fun m!1312381 () Bool)

(assert (=> b!1421773 m!1312381))

(assert (=> b!1421773 m!1312381))

(declare-fun m!1312383 () Bool)

(assert (=> b!1421773 m!1312383))

(assert (=> b!1421774 m!1312381))

(assert (=> b!1421774 m!1312381))

(declare-fun m!1312385 () Bool)

(assert (=> b!1421774 m!1312385))

(declare-fun m!1312387 () Bool)

(assert (=> b!1421775 m!1312387))

(assert (=> b!1421775 m!1312387))

(declare-fun m!1312389 () Bool)

(assert (=> b!1421775 m!1312389))

(declare-fun m!1312391 () Bool)

(assert (=> b!1421775 m!1312391))

(declare-fun m!1312393 () Bool)

(assert (=> b!1421775 m!1312393))

(assert (=> b!1421779 m!1312381))

(assert (=> b!1421779 m!1312381))

(declare-fun m!1312395 () Bool)

(assert (=> b!1421779 m!1312395))

(assert (=> b!1421779 m!1312395))

(assert (=> b!1421779 m!1312381))

(declare-fun m!1312397 () Bool)

(assert (=> b!1421779 m!1312397))

(declare-fun m!1312399 () Bool)

(assert (=> b!1421770 m!1312399))

(declare-fun m!1312401 () Bool)

(assert (=> b!1421772 m!1312401))

(assert (=> b!1421772 m!1312401))

(declare-fun m!1312403 () Bool)

(assert (=> b!1421772 m!1312403))

(declare-fun m!1312405 () Bool)

(assert (=> b!1421771 m!1312405))

(declare-fun m!1312407 () Bool)

(assert (=> start!122756 m!1312407))

(declare-fun m!1312409 () Bool)

(assert (=> start!122756 m!1312409))

(assert (=> b!1421777 m!1312381))

(assert (=> b!1421777 m!1312381))

(declare-fun m!1312411 () Bool)

(assert (=> b!1421777 m!1312411))

(assert (=> b!1421769 m!1312391))

(declare-fun m!1312413 () Bool)

(assert (=> b!1421769 m!1312413))

(declare-fun m!1312415 () Bool)

(assert (=> b!1421769 m!1312415))

(declare-fun m!1312417 () Bool)

(assert (=> b!1421769 m!1312417))

(assert (=> b!1421769 m!1312381))

(declare-fun m!1312419 () Bool)

(assert (=> b!1421769 m!1312419))

(push 1)

(assert (not b!1421772))

(assert (not b!1421771))

(assert (not b!1421770))

(assert (not b!1421777))

(assert (not start!122756))

(assert (not b!1421769))

(assert (not b!1421773))

(assert (not b!1421775))

(assert (not b!1421776))

(assert (not b!1421779))

(assert (not b!1421774))

(check-sat)

(pop 1)

(push 1)

(check-sat)


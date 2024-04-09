; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122820 () Bool)

(assert start!122820)

(declare-fun b!1423273 () Bool)

(declare-fun res!958825 () Bool)

(declare-fun e!804530 () Bool)

(assert (=> b!1423273 (=> (not res!958825) (not e!804530))))

(declare-datatypes ((SeekEntryResult!11172 0))(
  ( (MissingZero!11172 (index!47079 (_ BitVec 32))) (Found!11172 (index!47080 (_ BitVec 32))) (Intermediate!11172 (undefined!11984 Bool) (index!47081 (_ BitVec 32)) (x!128721 (_ BitVec 32))) (Undefined!11172) (MissingVacant!11172 (index!47082 (_ BitVec 32))) )
))
(declare-fun lt!627019 () SeekEntryResult!11172)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!627021 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-datatypes ((array!97103 0))(
  ( (array!97104 (arr!46865 (Array (_ BitVec 32) (_ BitVec 64))) (size!47416 (_ BitVec 32))) )
))
(declare-fun lt!627017 () array!97103)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97103 (_ BitVec 32)) SeekEntryResult!11172)

(assert (=> b!1423273 (= res!958825 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627021 lt!627017 mask!2608) lt!627019))))

(declare-fun b!1423274 () Bool)

(declare-fun res!958816 () Bool)

(declare-fun e!804528 () Bool)

(assert (=> b!1423274 (=> (not res!958816) (not e!804528))))

(declare-fun a!2831 () array!97103)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97103 (_ BitVec 32)) Bool)

(assert (=> b!1423274 (= res!958816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423275 () Bool)

(declare-fun res!958821 () Bool)

(assert (=> b!1423275 (=> (not res!958821) (not e!804528))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423275 (= res!958821 (and (= (size!47416 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47416 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47416 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423276 () Bool)

(declare-fun res!958826 () Bool)

(assert (=> b!1423276 (=> (not res!958826) (not e!804528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423276 (= res!958826 (validKeyInArray!0 (select (arr!46865 a!2831) i!982)))))

(declare-fun b!1423277 () Bool)

(declare-fun e!804529 () Bool)

(assert (=> b!1423277 (= e!804529 true)))

(declare-fun lt!627016 () SeekEntryResult!11172)

(declare-fun lt!627020 () (_ BitVec 32))

(assert (=> b!1423277 (= lt!627016 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627020 lt!627021 lt!627017 mask!2608))))

(declare-fun b!1423278 () Bool)

(declare-fun res!958815 () Bool)

(assert (=> b!1423278 (=> (not res!958815) (not e!804530))))

(declare-fun lt!627022 () SeekEntryResult!11172)

(assert (=> b!1423278 (= res!958815 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46865 a!2831) j!81) a!2831 mask!2608) lt!627022))))

(declare-fun res!958830 () Bool)

(assert (=> start!122820 (=> (not res!958830) (not e!804528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122820 (= res!958830 (validMask!0 mask!2608))))

(assert (=> start!122820 e!804528))

(assert (=> start!122820 true))

(declare-fun array_inv!35810 (array!97103) Bool)

(assert (=> start!122820 (array_inv!35810 a!2831)))

(declare-fun b!1423279 () Bool)

(declare-fun res!958823 () Bool)

(assert (=> b!1423279 (=> res!958823 e!804529)))

(assert (=> b!1423279 (= res!958823 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627020 (select (arr!46865 a!2831) j!81) a!2831 mask!2608) lt!627022)))))

(declare-fun b!1423280 () Bool)

(declare-fun res!958822 () Bool)

(assert (=> b!1423280 (=> (not res!958822) (not e!804530))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1423280 (= res!958822 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun e!804527 () Bool)

(declare-fun b!1423281 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97103 (_ BitVec 32)) SeekEntryResult!11172)

(assert (=> b!1423281 (= e!804527 (= (seekEntryOrOpen!0 (select (arr!46865 a!2831) j!81) a!2831 mask!2608) (Found!11172 j!81)))))

(declare-fun b!1423282 () Bool)

(declare-fun e!804526 () Bool)

(assert (=> b!1423282 (= e!804526 e!804530)))

(declare-fun res!958819 () Bool)

(assert (=> b!1423282 (=> (not res!958819) (not e!804530))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423282 (= res!958819 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627021 mask!2608) lt!627021 lt!627017 mask!2608) lt!627019))))

(assert (=> b!1423282 (= lt!627019 (Intermediate!11172 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423282 (= lt!627021 (select (store (arr!46865 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423282 (= lt!627017 (array!97104 (store (arr!46865 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47416 a!2831)))))

(declare-fun b!1423283 () Bool)

(declare-fun e!804525 () Bool)

(assert (=> b!1423283 (= e!804530 (not e!804525))))

(declare-fun res!958829 () Bool)

(assert (=> b!1423283 (=> res!958829 e!804525)))

(assert (=> b!1423283 (= res!958829 (or (= (select (arr!46865 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46865 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46865 a!2831) index!585) (select (arr!46865 a!2831) j!81)) (= (select (store (arr!46865 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1423283 e!804527))

(declare-fun res!958824 () Bool)

(assert (=> b!1423283 (=> (not res!958824) (not e!804527))))

(assert (=> b!1423283 (= res!958824 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48128 0))(
  ( (Unit!48129) )
))
(declare-fun lt!627018 () Unit!48128)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48128)

(assert (=> b!1423283 (= lt!627018 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423284 () Bool)

(assert (=> b!1423284 (= e!804528 e!804526)))

(declare-fun res!958817 () Bool)

(assert (=> b!1423284 (=> (not res!958817) (not e!804526))))

(assert (=> b!1423284 (= res!958817 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46865 a!2831) j!81) mask!2608) (select (arr!46865 a!2831) j!81) a!2831 mask!2608) lt!627022))))

(assert (=> b!1423284 (= lt!627022 (Intermediate!11172 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423285 () Bool)

(declare-fun res!958820 () Bool)

(assert (=> b!1423285 (=> (not res!958820) (not e!804528))))

(assert (=> b!1423285 (= res!958820 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47416 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47416 a!2831))))))

(declare-fun b!1423286 () Bool)

(declare-fun res!958828 () Bool)

(assert (=> b!1423286 (=> (not res!958828) (not e!804528))))

(assert (=> b!1423286 (= res!958828 (validKeyInArray!0 (select (arr!46865 a!2831) j!81)))))

(declare-fun b!1423287 () Bool)

(assert (=> b!1423287 (= e!804525 e!804529)))

(declare-fun res!958818 () Bool)

(assert (=> b!1423287 (=> res!958818 e!804529)))

(assert (=> b!1423287 (= res!958818 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627020 #b00000000000000000000000000000000) (bvsge lt!627020 (size!47416 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423287 (= lt!627020 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423288 () Bool)

(declare-fun res!958827 () Bool)

(assert (=> b!1423288 (=> (not res!958827) (not e!804528))))

(declare-datatypes ((List!33555 0))(
  ( (Nil!33552) (Cons!33551 (h!34853 (_ BitVec 64)) (t!48256 List!33555)) )
))
(declare-fun arrayNoDuplicates!0 (array!97103 (_ BitVec 32) List!33555) Bool)

(assert (=> b!1423288 (= res!958827 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33552))))

(assert (= (and start!122820 res!958830) b!1423275))

(assert (= (and b!1423275 res!958821) b!1423276))

(assert (= (and b!1423276 res!958826) b!1423286))

(assert (= (and b!1423286 res!958828) b!1423274))

(assert (= (and b!1423274 res!958816) b!1423288))

(assert (= (and b!1423288 res!958827) b!1423285))

(assert (= (and b!1423285 res!958820) b!1423284))

(assert (= (and b!1423284 res!958817) b!1423282))

(assert (= (and b!1423282 res!958819) b!1423278))

(assert (= (and b!1423278 res!958815) b!1423273))

(assert (= (and b!1423273 res!958825) b!1423280))

(assert (= (and b!1423280 res!958822) b!1423283))

(assert (= (and b!1423283 res!958824) b!1423281))

(assert (= (and b!1423283 (not res!958829)) b!1423287))

(assert (= (and b!1423287 (not res!958818)) b!1423279))

(assert (= (and b!1423279 (not res!958823)) b!1423277))

(declare-fun m!1313879 () Bool)

(assert (=> b!1423283 m!1313879))

(declare-fun m!1313881 () Bool)

(assert (=> b!1423283 m!1313881))

(declare-fun m!1313883 () Bool)

(assert (=> b!1423283 m!1313883))

(declare-fun m!1313885 () Bool)

(assert (=> b!1423283 m!1313885))

(declare-fun m!1313887 () Bool)

(assert (=> b!1423283 m!1313887))

(declare-fun m!1313889 () Bool)

(assert (=> b!1423283 m!1313889))

(assert (=> b!1423278 m!1313887))

(assert (=> b!1423278 m!1313887))

(declare-fun m!1313891 () Bool)

(assert (=> b!1423278 m!1313891))

(declare-fun m!1313893 () Bool)

(assert (=> b!1423273 m!1313893))

(declare-fun m!1313895 () Bool)

(assert (=> b!1423282 m!1313895))

(assert (=> b!1423282 m!1313895))

(declare-fun m!1313897 () Bool)

(assert (=> b!1423282 m!1313897))

(assert (=> b!1423282 m!1313879))

(declare-fun m!1313899 () Bool)

(assert (=> b!1423282 m!1313899))

(declare-fun m!1313901 () Bool)

(assert (=> b!1423288 m!1313901))

(assert (=> b!1423281 m!1313887))

(assert (=> b!1423281 m!1313887))

(declare-fun m!1313903 () Bool)

(assert (=> b!1423281 m!1313903))

(declare-fun m!1313905 () Bool)

(assert (=> start!122820 m!1313905))

(declare-fun m!1313907 () Bool)

(assert (=> start!122820 m!1313907))

(declare-fun m!1313909 () Bool)

(assert (=> b!1423274 m!1313909))

(assert (=> b!1423284 m!1313887))

(assert (=> b!1423284 m!1313887))

(declare-fun m!1313911 () Bool)

(assert (=> b!1423284 m!1313911))

(assert (=> b!1423284 m!1313911))

(assert (=> b!1423284 m!1313887))

(declare-fun m!1313913 () Bool)

(assert (=> b!1423284 m!1313913))

(declare-fun m!1313915 () Bool)

(assert (=> b!1423287 m!1313915))

(assert (=> b!1423279 m!1313887))

(assert (=> b!1423279 m!1313887))

(declare-fun m!1313917 () Bool)

(assert (=> b!1423279 m!1313917))

(declare-fun m!1313919 () Bool)

(assert (=> b!1423277 m!1313919))

(assert (=> b!1423286 m!1313887))

(assert (=> b!1423286 m!1313887))

(declare-fun m!1313921 () Bool)

(assert (=> b!1423286 m!1313921))

(declare-fun m!1313923 () Bool)

(assert (=> b!1423276 m!1313923))

(assert (=> b!1423276 m!1313923))

(declare-fun m!1313925 () Bool)

(assert (=> b!1423276 m!1313925))

(check-sat (not b!1423277) (not b!1423286) (not b!1423279) (not b!1423276) (not b!1423281) (not b!1423284) (not start!122820) (not b!1423287) (not b!1423288) (not b!1423278) (not b!1423274) (not b!1423282) (not b!1423283) (not b!1423273))
(check-sat)

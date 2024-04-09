; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122794 () Bool)

(assert start!122794)

(declare-fun res!958198 () Bool)

(declare-fun e!804254 () Bool)

(assert (=> start!122794 (=> (not res!958198) (not e!804254))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122794 (= res!958198 (validMask!0 mask!2608))))

(assert (=> start!122794 e!804254))

(assert (=> start!122794 true))

(declare-datatypes ((array!97077 0))(
  ( (array!97078 (arr!46852 (Array (_ BitVec 32) (_ BitVec 64))) (size!47403 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97077)

(declare-fun array_inv!35797 (array!97077) Bool)

(assert (=> start!122794 (array_inv!35797 a!2831)))

(declare-fun b!1422649 () Bool)

(declare-fun res!958201 () Bool)

(declare-fun e!804256 () Bool)

(assert (=> b!1422649 (=> (not res!958201) (not e!804256))))

(declare-datatypes ((SeekEntryResult!11159 0))(
  ( (MissingZero!11159 (index!47027 (_ BitVec 32))) (Found!11159 (index!47028 (_ BitVec 32))) (Intermediate!11159 (undefined!11971 Bool) (index!47029 (_ BitVec 32)) (x!128676 (_ BitVec 32))) (Undefined!11159) (MissingVacant!11159 (index!47030 (_ BitVec 32))) )
))
(declare-fun lt!626749 () SeekEntryResult!11159)

(declare-fun lt!626744 () (_ BitVec 64))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!626745 () array!97077)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97077 (_ BitVec 32)) SeekEntryResult!11159)

(assert (=> b!1422649 (= res!958201 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626744 lt!626745 mask!2608) lt!626749))))

(declare-fun b!1422650 () Bool)

(declare-fun e!804255 () Bool)

(declare-fun e!804253 () Bool)

(assert (=> b!1422650 (= e!804255 e!804253)))

(declare-fun res!958191 () Bool)

(assert (=> b!1422650 (=> res!958191 e!804253)))

(declare-fun lt!626747 () (_ BitVec 32))

(assert (=> b!1422650 (= res!958191 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626747 #b00000000000000000000000000000000) (bvsge lt!626747 (size!47403 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422650 (= lt!626747 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422651 () Bool)

(declare-fun e!804251 () Bool)

(assert (=> b!1422651 (= e!804251 e!804256)))

(declare-fun res!958204 () Bool)

(assert (=> b!1422651 (=> (not res!958204) (not e!804256))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422651 (= res!958204 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626744 mask!2608) lt!626744 lt!626745 mask!2608) lt!626749))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422651 (= lt!626749 (Intermediate!11159 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422651 (= lt!626744 (select (store (arr!46852 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422651 (= lt!626745 (array!97078 (store (arr!46852 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47403 a!2831)))))

(declare-fun b!1422652 () Bool)

(assert (=> b!1422652 (= e!804253 true)))

(declare-fun lt!626748 () SeekEntryResult!11159)

(assert (=> b!1422652 (= lt!626748 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626747 lt!626744 lt!626745 mask!2608))))

(declare-fun e!804257 () Bool)

(declare-fun b!1422653 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97077 (_ BitVec 32)) SeekEntryResult!11159)

(assert (=> b!1422653 (= e!804257 (= (seekEntryOrOpen!0 (select (arr!46852 a!2831) j!81) a!2831 mask!2608) (Found!11159 j!81)))))

(declare-fun b!1422654 () Bool)

(declare-fun res!958195 () Bool)

(assert (=> b!1422654 (=> res!958195 e!804253)))

(declare-fun lt!626746 () SeekEntryResult!11159)

(assert (=> b!1422654 (= res!958195 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626747 (select (arr!46852 a!2831) j!81) a!2831 mask!2608) lt!626746)))))

(declare-fun b!1422655 () Bool)

(assert (=> b!1422655 (= e!804256 (not e!804255))))

(declare-fun res!958199 () Bool)

(assert (=> b!1422655 (=> res!958199 e!804255)))

(assert (=> b!1422655 (= res!958199 (or (= (select (arr!46852 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46852 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46852 a!2831) index!585) (select (arr!46852 a!2831) j!81)) (= (select (store (arr!46852 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422655 e!804257))

(declare-fun res!958197 () Bool)

(assert (=> b!1422655 (=> (not res!958197) (not e!804257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97077 (_ BitVec 32)) Bool)

(assert (=> b!1422655 (= res!958197 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48102 0))(
  ( (Unit!48103) )
))
(declare-fun lt!626743 () Unit!48102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48102)

(assert (=> b!1422655 (= lt!626743 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422656 () Bool)

(declare-fun res!958196 () Bool)

(assert (=> b!1422656 (=> (not res!958196) (not e!804254))))

(assert (=> b!1422656 (= res!958196 (and (= (size!47403 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47403 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47403 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422657 () Bool)

(assert (=> b!1422657 (= e!804254 e!804251)))

(declare-fun res!958205 () Bool)

(assert (=> b!1422657 (=> (not res!958205) (not e!804251))))

(assert (=> b!1422657 (= res!958205 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46852 a!2831) j!81) mask!2608) (select (arr!46852 a!2831) j!81) a!2831 mask!2608) lt!626746))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1422657 (= lt!626746 (Intermediate!11159 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422658 () Bool)

(declare-fun res!958200 () Bool)

(assert (=> b!1422658 (=> (not res!958200) (not e!804254))))

(declare-datatypes ((List!33542 0))(
  ( (Nil!33539) (Cons!33538 (h!34840 (_ BitVec 64)) (t!48243 List!33542)) )
))
(declare-fun arrayNoDuplicates!0 (array!97077 (_ BitVec 32) List!33542) Bool)

(assert (=> b!1422658 (= res!958200 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33539))))

(declare-fun b!1422659 () Bool)

(declare-fun res!958206 () Bool)

(assert (=> b!1422659 (=> (not res!958206) (not e!804254))))

(assert (=> b!1422659 (= res!958206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422660 () Bool)

(declare-fun res!958203 () Bool)

(assert (=> b!1422660 (=> (not res!958203) (not e!804256))))

(assert (=> b!1422660 (= res!958203 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46852 a!2831) j!81) a!2831 mask!2608) lt!626746))))

(declare-fun b!1422661 () Bool)

(declare-fun res!958194 () Bool)

(assert (=> b!1422661 (=> (not res!958194) (not e!804254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422661 (= res!958194 (validKeyInArray!0 (select (arr!46852 a!2831) j!81)))))

(declare-fun b!1422662 () Bool)

(declare-fun res!958192 () Bool)

(assert (=> b!1422662 (=> (not res!958192) (not e!804256))))

(assert (=> b!1422662 (= res!958192 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422663 () Bool)

(declare-fun res!958193 () Bool)

(assert (=> b!1422663 (=> (not res!958193) (not e!804254))))

(assert (=> b!1422663 (= res!958193 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47403 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47403 a!2831))))))

(declare-fun b!1422664 () Bool)

(declare-fun res!958202 () Bool)

(assert (=> b!1422664 (=> (not res!958202) (not e!804254))))

(assert (=> b!1422664 (= res!958202 (validKeyInArray!0 (select (arr!46852 a!2831) i!982)))))

(assert (= (and start!122794 res!958198) b!1422656))

(assert (= (and b!1422656 res!958196) b!1422664))

(assert (= (and b!1422664 res!958202) b!1422661))

(assert (= (and b!1422661 res!958194) b!1422659))

(assert (= (and b!1422659 res!958206) b!1422658))

(assert (= (and b!1422658 res!958200) b!1422663))

(assert (= (and b!1422663 res!958193) b!1422657))

(assert (= (and b!1422657 res!958205) b!1422651))

(assert (= (and b!1422651 res!958204) b!1422660))

(assert (= (and b!1422660 res!958203) b!1422649))

(assert (= (and b!1422649 res!958201) b!1422662))

(assert (= (and b!1422662 res!958192) b!1422655))

(assert (= (and b!1422655 res!958197) b!1422653))

(assert (= (and b!1422655 (not res!958199)) b!1422650))

(assert (= (and b!1422650 (not res!958191)) b!1422654))

(assert (= (and b!1422654 (not res!958195)) b!1422652))

(declare-fun m!1313255 () Bool)

(assert (=> b!1422659 m!1313255))

(declare-fun m!1313257 () Bool)

(assert (=> b!1422651 m!1313257))

(assert (=> b!1422651 m!1313257))

(declare-fun m!1313259 () Bool)

(assert (=> b!1422651 m!1313259))

(declare-fun m!1313261 () Bool)

(assert (=> b!1422651 m!1313261))

(declare-fun m!1313263 () Bool)

(assert (=> b!1422651 m!1313263))

(declare-fun m!1313265 () Bool)

(assert (=> b!1422660 m!1313265))

(assert (=> b!1422660 m!1313265))

(declare-fun m!1313267 () Bool)

(assert (=> b!1422660 m!1313267))

(assert (=> b!1422661 m!1313265))

(assert (=> b!1422661 m!1313265))

(declare-fun m!1313269 () Bool)

(assert (=> b!1422661 m!1313269))

(assert (=> b!1422653 m!1313265))

(assert (=> b!1422653 m!1313265))

(declare-fun m!1313271 () Bool)

(assert (=> b!1422653 m!1313271))

(declare-fun m!1313273 () Bool)

(assert (=> b!1422650 m!1313273))

(assert (=> b!1422654 m!1313265))

(assert (=> b!1422654 m!1313265))

(declare-fun m!1313275 () Bool)

(assert (=> b!1422654 m!1313275))

(assert (=> b!1422657 m!1313265))

(assert (=> b!1422657 m!1313265))

(declare-fun m!1313277 () Bool)

(assert (=> b!1422657 m!1313277))

(assert (=> b!1422657 m!1313277))

(assert (=> b!1422657 m!1313265))

(declare-fun m!1313279 () Bool)

(assert (=> b!1422657 m!1313279))

(declare-fun m!1313281 () Bool)

(assert (=> start!122794 m!1313281))

(declare-fun m!1313283 () Bool)

(assert (=> start!122794 m!1313283))

(declare-fun m!1313285 () Bool)

(assert (=> b!1422649 m!1313285))

(assert (=> b!1422655 m!1313261))

(declare-fun m!1313287 () Bool)

(assert (=> b!1422655 m!1313287))

(declare-fun m!1313289 () Bool)

(assert (=> b!1422655 m!1313289))

(declare-fun m!1313291 () Bool)

(assert (=> b!1422655 m!1313291))

(assert (=> b!1422655 m!1313265))

(declare-fun m!1313293 () Bool)

(assert (=> b!1422655 m!1313293))

(declare-fun m!1313295 () Bool)

(assert (=> b!1422652 m!1313295))

(declare-fun m!1313297 () Bool)

(assert (=> b!1422664 m!1313297))

(assert (=> b!1422664 m!1313297))

(declare-fun m!1313299 () Bool)

(assert (=> b!1422664 m!1313299))

(declare-fun m!1313301 () Bool)

(assert (=> b!1422658 m!1313301))

(push 1)


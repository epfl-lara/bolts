; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123842 () Bool)

(assert start!123842)

(declare-fun b!1434808 () Bool)

(declare-fun e!809814 () Bool)

(declare-fun e!809819 () Bool)

(assert (=> b!1434808 (= e!809814 (not e!809819))))

(declare-fun res!968161 () Bool)

(assert (=> b!1434808 (=> res!968161 e!809819)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97561 0))(
  ( (array!97562 (arr!47079 (Array (_ BitVec 32) (_ BitVec 64))) (size!47630 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97561)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434808 (= res!968161 (or (= (select (arr!47079 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47079 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47079 a!2831) index!585) (select (arr!47079 a!2831) j!81)) (= (select (store (arr!47079 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809813 () Bool)

(assert (=> b!1434808 e!809813))

(declare-fun res!968174 () Bool)

(assert (=> b!1434808 (=> (not res!968174) (not e!809813))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97561 (_ BitVec 32)) Bool)

(assert (=> b!1434808 (= res!968174 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48454 0))(
  ( (Unit!48455) )
))
(declare-fun lt!631595 () Unit!48454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48454)

(assert (=> b!1434808 (= lt!631595 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434809 () Bool)

(declare-fun res!968175 () Bool)

(assert (=> b!1434809 (=> (not res!968175) (not e!809814))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!631593 () (_ BitVec 64))

(declare-fun lt!631596 () array!97561)

(declare-datatypes ((SeekEntryResult!11380 0))(
  ( (MissingZero!11380 (index!47911 (_ BitVec 32))) (Found!11380 (index!47912 (_ BitVec 32))) (Intermediate!11380 (undefined!12192 Bool) (index!47913 (_ BitVec 32)) (x!129572 (_ BitVec 32))) (Undefined!11380) (MissingVacant!11380 (index!47914 (_ BitVec 32))) )
))
(declare-fun lt!631592 () SeekEntryResult!11380)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97561 (_ BitVec 32)) SeekEntryResult!11380)

(assert (=> b!1434809 (= res!968175 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631593 lt!631596 mask!2608) lt!631592))))

(declare-fun b!1434810 () Bool)

(declare-fun res!968165 () Bool)

(declare-fun e!809817 () Bool)

(assert (=> b!1434810 (=> res!968165 e!809817)))

(declare-fun lt!631594 () SeekEntryResult!11380)

(declare-fun lt!631597 () (_ BitVec 32))

(assert (=> b!1434810 (= res!968165 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631597 (select (arr!47079 a!2831) j!81) a!2831 mask!2608) lt!631594)))))

(declare-fun b!1434811 () Bool)

(declare-fun res!968172 () Bool)

(declare-fun e!809818 () Bool)

(assert (=> b!1434811 (=> (not res!968172) (not e!809818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434811 (= res!968172 (validKeyInArray!0 (select (arr!47079 a!2831) j!81)))))

(declare-fun b!1434812 () Bool)

(declare-fun res!968173 () Bool)

(assert (=> b!1434812 (=> (not res!968173) (not e!809818))))

(declare-datatypes ((List!33769 0))(
  ( (Nil!33766) (Cons!33765 (h!35097 (_ BitVec 64)) (t!48470 List!33769)) )
))
(declare-fun arrayNoDuplicates!0 (array!97561 (_ BitVec 32) List!33769) Bool)

(assert (=> b!1434812 (= res!968173 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33766))))

(declare-fun b!1434813 () Bool)

(declare-fun res!968162 () Bool)

(assert (=> b!1434813 (=> (not res!968162) (not e!809818))))

(assert (=> b!1434813 (= res!968162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1434814 () Bool)

(declare-fun e!809816 () Bool)

(assert (=> b!1434814 (= e!809816 e!809814)))

(declare-fun res!968170 () Bool)

(assert (=> b!1434814 (=> (not res!968170) (not e!809814))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434814 (= res!968170 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631593 mask!2608) lt!631593 lt!631596 mask!2608) lt!631592))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434814 (= lt!631592 (Intermediate!11380 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434814 (= lt!631593 (select (store (arr!47079 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434814 (= lt!631596 (array!97562 (store (arr!47079 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47630 a!2831)))))

(declare-fun b!1434815 () Bool)

(declare-fun res!968164 () Bool)

(assert (=> b!1434815 (=> (not res!968164) (not e!809814))))

(assert (=> b!1434815 (= res!968164 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47079 a!2831) j!81) a!2831 mask!2608) lt!631594))))

(declare-fun b!1434816 () Bool)

(assert (=> b!1434816 (= e!809819 e!809817)))

(declare-fun res!968168 () Bool)

(assert (=> b!1434816 (=> res!968168 e!809817)))

(assert (=> b!1434816 (= res!968168 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631597 #b00000000000000000000000000000000) (bvsge lt!631597 (size!47630 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434816 (= lt!631597 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1434817 () Bool)

(declare-fun res!968167 () Bool)

(assert (=> b!1434817 (=> (not res!968167) (not e!809818))))

(assert (=> b!1434817 (= res!968167 (and (= (size!47630 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47630 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47630 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1434818 () Bool)

(assert (=> b!1434818 (= e!809818 e!809816)))

(declare-fun res!968163 () Bool)

(assert (=> b!1434818 (=> (not res!968163) (not e!809816))))

(assert (=> b!1434818 (= res!968163 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47079 a!2831) j!81) mask!2608) (select (arr!47079 a!2831) j!81) a!2831 mask!2608) lt!631594))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1434818 (= lt!631594 (Intermediate!11380 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434819 () Bool)

(declare-fun res!968166 () Bool)

(assert (=> b!1434819 (=> (not res!968166) (not e!809818))))

(assert (=> b!1434819 (= res!968166 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47630 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47630 a!2831))))))

(declare-fun res!968160 () Bool)

(assert (=> start!123842 (=> (not res!968160) (not e!809818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123842 (= res!968160 (validMask!0 mask!2608))))

(assert (=> start!123842 e!809818))

(assert (=> start!123842 true))

(declare-fun array_inv!36024 (array!97561) Bool)

(assert (=> start!123842 (array_inv!36024 a!2831)))

(declare-fun b!1434820 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97561 (_ BitVec 32)) SeekEntryResult!11380)

(assert (=> b!1434820 (= e!809813 (= (seekEntryOrOpen!0 (select (arr!47079 a!2831) j!81) a!2831 mask!2608) (Found!11380 j!81)))))

(declare-fun b!1434821 () Bool)

(declare-fun res!968171 () Bool)

(assert (=> b!1434821 (=> (not res!968171) (not e!809814))))

(assert (=> b!1434821 (= res!968171 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1434822 () Bool)

(declare-fun res!968169 () Bool)

(assert (=> b!1434822 (=> (not res!968169) (not e!809818))))

(assert (=> b!1434822 (= res!968169 (validKeyInArray!0 (select (arr!47079 a!2831) i!982)))))

(declare-fun b!1434823 () Bool)

(assert (=> b!1434823 (= e!809817 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631597 lt!631593 lt!631596 mask!2608) lt!631592))))

(assert (= (and start!123842 res!968160) b!1434817))

(assert (= (and b!1434817 res!968167) b!1434822))

(assert (= (and b!1434822 res!968169) b!1434811))

(assert (= (and b!1434811 res!968172) b!1434813))

(assert (= (and b!1434813 res!968162) b!1434812))

(assert (= (and b!1434812 res!968173) b!1434819))

(assert (= (and b!1434819 res!968166) b!1434818))

(assert (= (and b!1434818 res!968163) b!1434814))

(assert (= (and b!1434814 res!968170) b!1434815))

(assert (= (and b!1434815 res!968164) b!1434809))

(assert (= (and b!1434809 res!968175) b!1434821))

(assert (= (and b!1434821 res!968171) b!1434808))

(assert (= (and b!1434808 res!968174) b!1434820))

(assert (= (and b!1434808 (not res!968161)) b!1434816))

(assert (= (and b!1434816 (not res!968168)) b!1434810))

(assert (= (and b!1434810 (not res!968165)) b!1434823))

(declare-fun m!1324361 () Bool)

(assert (=> b!1434808 m!1324361))

(declare-fun m!1324363 () Bool)

(assert (=> b!1434808 m!1324363))

(declare-fun m!1324365 () Bool)

(assert (=> b!1434808 m!1324365))

(declare-fun m!1324367 () Bool)

(assert (=> b!1434808 m!1324367))

(declare-fun m!1324369 () Bool)

(assert (=> b!1434808 m!1324369))

(declare-fun m!1324371 () Bool)

(assert (=> b!1434808 m!1324371))

(assert (=> b!1434820 m!1324369))

(assert (=> b!1434820 m!1324369))

(declare-fun m!1324373 () Bool)

(assert (=> b!1434820 m!1324373))

(assert (=> b!1434811 m!1324369))

(assert (=> b!1434811 m!1324369))

(declare-fun m!1324375 () Bool)

(assert (=> b!1434811 m!1324375))

(assert (=> b!1434815 m!1324369))

(assert (=> b!1434815 m!1324369))

(declare-fun m!1324377 () Bool)

(assert (=> b!1434815 m!1324377))

(declare-fun m!1324379 () Bool)

(assert (=> b!1434822 m!1324379))

(assert (=> b!1434822 m!1324379))

(declare-fun m!1324381 () Bool)

(assert (=> b!1434822 m!1324381))

(assert (=> b!1434810 m!1324369))

(assert (=> b!1434810 m!1324369))

(declare-fun m!1324383 () Bool)

(assert (=> b!1434810 m!1324383))

(declare-fun m!1324385 () Bool)

(assert (=> b!1434816 m!1324385))

(declare-fun m!1324387 () Bool)

(assert (=> b!1434812 m!1324387))

(declare-fun m!1324389 () Bool)

(assert (=> b!1434813 m!1324389))

(declare-fun m!1324391 () Bool)

(assert (=> start!123842 m!1324391))

(declare-fun m!1324393 () Bool)

(assert (=> start!123842 m!1324393))

(declare-fun m!1324395 () Bool)

(assert (=> b!1434814 m!1324395))

(assert (=> b!1434814 m!1324395))

(declare-fun m!1324397 () Bool)

(assert (=> b!1434814 m!1324397))

(assert (=> b!1434814 m!1324361))

(declare-fun m!1324399 () Bool)

(assert (=> b!1434814 m!1324399))

(declare-fun m!1324401 () Bool)

(assert (=> b!1434823 m!1324401))

(declare-fun m!1324403 () Bool)

(assert (=> b!1434809 m!1324403))

(assert (=> b!1434818 m!1324369))

(assert (=> b!1434818 m!1324369))

(declare-fun m!1324405 () Bool)

(assert (=> b!1434818 m!1324405))

(assert (=> b!1434818 m!1324405))

(assert (=> b!1434818 m!1324369))

(declare-fun m!1324407 () Bool)

(assert (=> b!1434818 m!1324407))

(push 1)

(assert (not b!1434809))

(assert (not b!1434812))

(assert (not b!1434808))

(assert (not b!1434815))

(assert (not b!1434820))

(assert (not b!1434818))

(assert (not b!1434813))

(assert (not b!1434816))

(assert (not b!1434823))

(assert (not start!123842))

(assert (not b!1434811))

(assert (not b!1434810))

(assert (not b!1434822))

(assert (not b!1434814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1434926 () Bool)

(declare-fun e!809885 () SeekEntryResult!11380)

(declare-fun e!809886 () SeekEntryResult!11380)

(assert (=> b!1434926 (= e!809885 e!809886)))

(declare-fun c!132859 () Bool)

(declare-fun lt!631639 () (_ BitVec 64))

(assert (=> b!1434926 (= c!132859 (or (= lt!631639 (select (arr!47079 a!2831) j!81)) (= (bvadd lt!631639 lt!631639) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434927 () Bool)

(assert (=> b!1434927 (= e!809885 (Intermediate!11380 true index!585 x!605))))

(declare-fun b!1434928 () Bool)

(declare-fun lt!631640 () SeekEntryResult!11380)

(assert (=> b!1434928 (and (bvsge (index!47913 lt!631640) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631640) (size!47630 a!2831)))))

(declare-fun res!968221 () Bool)

(assert (=> b!1434928 (= res!968221 (= (select (arr!47079 a!2831) (index!47913 lt!631640)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809887 () Bool)

(assert (=> b!1434928 (=> res!968221 e!809887)))

(declare-fun b!1434929 () Bool)

(declare-fun e!809889 () Bool)

(assert (=> b!1434929 (= e!809889 (bvsge (x!129572 lt!631640) #b01111111111111111111111111111110))))

(declare-fun b!1434930 () Bool)

(declare-fun e!809888 () Bool)

(assert (=> b!1434930 (= e!809889 e!809888)))

(declare-fun res!968220 () Bool)

(assert (=> b!1434930 (= res!968220 (and (is-Intermediate!11380 lt!631640) (not (undefined!12192 lt!631640)) (bvslt (x!129572 lt!631640) #b01111111111111111111111111111110) (bvsge (x!129572 lt!631640) #b00000000000000000000000000000000) (bvsge (x!129572 lt!631640) x!605)))))

(assert (=> b!1434930 (=> (not res!968220) (not e!809888))))

(declare-fun b!1434931 () Bool)

(assert (=> b!1434931 (and (bvsge (index!47913 lt!631640) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631640) (size!47630 a!2831)))))

(declare-fun res!968219 () Bool)

(assert (=> b!1434931 (= res!968219 (= (select (arr!47079 a!2831) (index!47913 lt!631640)) (select (arr!47079 a!2831) j!81)))))

(assert (=> b!1434931 (=> res!968219 e!809887)))

(assert (=> b!1434931 (= e!809888 e!809887)))

(declare-fun b!1434932 () Bool)

(assert (=> b!1434932 (= e!809886 (Intermediate!11380 false index!585 x!605))))

(declare-fun b!1434933 () Bool)

(assert (=> b!1434933 (= e!809886 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47079 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434934 () Bool)

(assert (=> b!1434934 (and (bvsge (index!47913 lt!631640) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631640) (size!47630 a!2831)))))

(assert (=> b!1434934 (= e!809887 (= (select (arr!47079 a!2831) (index!47913 lt!631640)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154235 () Bool)

(assert (=> d!154235 e!809889))

(declare-fun c!132858 () Bool)

(assert (=> d!154235 (= c!132858 (and (is-Intermediate!11380 lt!631640) (undefined!12192 lt!631640)))))

(assert (=> d!154235 (= lt!631640 e!809885)))

(declare-fun c!132860 () Bool)

(assert (=> d!154235 (= c!132860 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154235 (= lt!631639 (select (arr!47079 a!2831) index!585))))

(assert (=> d!154235 (validMask!0 mask!2608)))

(assert (=> d!154235 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47079 a!2831) j!81) a!2831 mask!2608) lt!631640)))

(assert (= (and d!154235 c!132860) b!1434927))

(assert (= (and d!154235 (not c!132860)) b!1434926))

(assert (= (and b!1434926 c!132859) b!1434932))

(assert (= (and b!1434926 (not c!132859)) b!1434933))

(assert (= (and d!154235 c!132858) b!1434929))

(assert (= (and d!154235 (not c!132858)) b!1434930))

(assert (= (and b!1434930 res!968220) b!1434931))

(assert (= (and b!1434931 (not res!968219)) b!1434928))

(assert (= (and b!1434928 (not res!968221)) b!1434934))

(declare-fun m!1324459 () Bool)

(assert (=> b!1434928 m!1324459))

(assert (=> d!154235 m!1324365))

(assert (=> d!154235 m!1324391))

(assert (=> b!1434931 m!1324459))

(assert (=> b!1434933 m!1324385))

(assert (=> b!1434933 m!1324385))

(assert (=> b!1434933 m!1324369))

(declare-fun m!1324461 () Bool)

(assert (=> b!1434933 m!1324461))

(assert (=> b!1434934 m!1324459))

(assert (=> b!1434815 d!154235))

(declare-fun d!154245 () Bool)

(assert (=> d!154245 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123842 d!154245))

(declare-fun d!154251 () Bool)

(assert (=> d!154251 (= (array_inv!36024 a!2831) (bvsge (size!47630 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123842 d!154251))

(declare-fun d!154255 () Bool)

(declare-fun lt!631668 () (_ BitVec 32))

(assert (=> d!154255 (and (bvsge lt!631668 #b00000000000000000000000000000000) (bvslt lt!631668 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!154255 (= lt!631668 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!154255 (validMask!0 mask!2608)))

(assert (=> d!154255 (= (nextIndex!0 index!585 x!605 mask!2608) lt!631668)))

(declare-fun bs!41766 () Bool)

(assert (= bs!41766 d!154255))

(declare-fun m!1324499 () Bool)

(assert (=> bs!41766 m!1324499))

(assert (=> bs!41766 m!1324391))

(assert (=> b!1434816 d!154255))

(declare-fun b!1434984 () Bool)

(declare-fun e!809916 () SeekEntryResult!11380)

(declare-fun e!809917 () SeekEntryResult!11380)

(assert (=> b!1434984 (= e!809916 e!809917)))

(declare-fun c!132884 () Bool)

(declare-fun lt!631669 () (_ BitVec 64))

(assert (=> b!1434984 (= c!132884 (or (= lt!631669 lt!631593) (= (bvadd lt!631669 lt!631669) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434985 () Bool)

(assert (=> b!1434985 (= e!809916 (Intermediate!11380 true (toIndex!0 lt!631593 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434986 () Bool)

(declare-fun lt!631670 () SeekEntryResult!11380)

(assert (=> b!1434986 (and (bvsge (index!47913 lt!631670) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631670) (size!47630 lt!631596)))))

(declare-fun res!968229 () Bool)

(assert (=> b!1434986 (= res!968229 (= (select (arr!47079 lt!631596) (index!47913 lt!631670)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809918 () Bool)

(assert (=> b!1434986 (=> res!968229 e!809918)))

(declare-fun b!1434987 () Bool)

(declare-fun e!809920 () Bool)

(assert (=> b!1434987 (= e!809920 (bvsge (x!129572 lt!631670) #b01111111111111111111111111111110))))

(declare-fun b!1434988 () Bool)

(declare-fun e!809919 () Bool)

(assert (=> b!1434988 (= e!809920 e!809919)))

(declare-fun res!968228 () Bool)

(assert (=> b!1434988 (= res!968228 (and (is-Intermediate!11380 lt!631670) (not (undefined!12192 lt!631670)) (bvslt (x!129572 lt!631670) #b01111111111111111111111111111110) (bvsge (x!129572 lt!631670) #b00000000000000000000000000000000) (bvsge (x!129572 lt!631670) #b00000000000000000000000000000000)))))

(assert (=> b!1434988 (=> (not res!968228) (not e!809919))))

(declare-fun b!1434989 () Bool)

(assert (=> b!1434989 (and (bvsge (index!47913 lt!631670) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631670) (size!47630 lt!631596)))))

(declare-fun res!968227 () Bool)

(assert (=> b!1434989 (= res!968227 (= (select (arr!47079 lt!631596) (index!47913 lt!631670)) lt!631593))))

(assert (=> b!1434989 (=> res!968227 e!809918)))

(assert (=> b!1434989 (= e!809919 e!809918)))

(declare-fun b!1434990 () Bool)

(assert (=> b!1434990 (= e!809917 (Intermediate!11380 false (toIndex!0 lt!631593 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434991 () Bool)

(assert (=> b!1434991 (= e!809917 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!631593 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!631593 lt!631596 mask!2608))))

(declare-fun b!1434992 () Bool)

(assert (=> b!1434992 (and (bvsge (index!47913 lt!631670) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631670) (size!47630 lt!631596)))))

(assert (=> b!1434992 (= e!809918 (= (select (arr!47079 lt!631596) (index!47913 lt!631670)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154261 () Bool)

(assert (=> d!154261 e!809920))

(declare-fun c!132883 () Bool)

(assert (=> d!154261 (= c!132883 (and (is-Intermediate!11380 lt!631670) (undefined!12192 lt!631670)))))

(assert (=> d!154261 (= lt!631670 e!809916)))

(declare-fun c!132885 () Bool)

(assert (=> d!154261 (= c!132885 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154261 (= lt!631669 (select (arr!47079 lt!631596) (toIndex!0 lt!631593 mask!2608)))))

(assert (=> d!154261 (validMask!0 mask!2608)))

(assert (=> d!154261 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631593 mask!2608) lt!631593 lt!631596 mask!2608) lt!631670)))

(assert (= (and d!154261 c!132885) b!1434985))

(assert (= (and d!154261 (not c!132885)) b!1434984))

(assert (= (and b!1434984 c!132884) b!1434990))

(assert (= (and b!1434984 (not c!132884)) b!1434991))

(assert (= (and d!154261 c!132883) b!1434987))

(assert (= (and d!154261 (not c!132883)) b!1434988))

(assert (= (and b!1434988 res!968228) b!1434989))

(assert (= (and b!1434989 (not res!968227)) b!1434986))

(assert (= (and b!1434986 (not res!968229)) b!1434992))

(declare-fun m!1324501 () Bool)

(assert (=> b!1434986 m!1324501))

(assert (=> d!154261 m!1324395))

(declare-fun m!1324503 () Bool)

(assert (=> d!154261 m!1324503))

(assert (=> d!154261 m!1324391))

(assert (=> b!1434989 m!1324501))

(assert (=> b!1434991 m!1324395))

(declare-fun m!1324505 () Bool)

(assert (=> b!1434991 m!1324505))

(assert (=> b!1434991 m!1324505))

(declare-fun m!1324507 () Bool)

(assert (=> b!1434991 m!1324507))

(assert (=> b!1434992 m!1324501))

(assert (=> b!1434814 d!154261))

(declare-fun d!154263 () Bool)

(declare-fun lt!631676 () (_ BitVec 32))

(declare-fun lt!631675 () (_ BitVec 32))

(assert (=> d!154263 (= lt!631676 (bvmul (bvxor lt!631675 (bvlshr lt!631675 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154263 (= lt!631675 ((_ extract 31 0) (bvand (bvxor lt!631593 (bvlshr lt!631593 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154263 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!968230 (let ((h!35099 ((_ extract 31 0) (bvand (bvxor lt!631593 (bvlshr lt!631593 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129577 (bvmul (bvxor h!35099 (bvlshr h!35099 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129577 (bvlshr x!129577 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!968230 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!968230 #b00000000000000000000000000000000))))))

(assert (=> d!154263 (= (toIndex!0 lt!631593 mask!2608) (bvand (bvxor lt!631676 (bvlshr lt!631676 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434814 d!154263))

(declare-fun b!1434993 () Bool)

(declare-fun e!809921 () SeekEntryResult!11380)

(declare-fun e!809922 () SeekEntryResult!11380)

(assert (=> b!1434993 (= e!809921 e!809922)))

(declare-fun c!132887 () Bool)

(declare-fun lt!631677 () (_ BitVec 64))

(assert (=> b!1434993 (= c!132887 (or (= lt!631677 lt!631593) (= (bvadd lt!631677 lt!631677) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434994 () Bool)

(assert (=> b!1434994 (= e!809921 (Intermediate!11380 true lt!631597 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1434995 () Bool)

(declare-fun lt!631678 () SeekEntryResult!11380)

(assert (=> b!1434995 (and (bvsge (index!47913 lt!631678) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631678) (size!47630 lt!631596)))))

(declare-fun res!968233 () Bool)

(assert (=> b!1434995 (= res!968233 (= (select (arr!47079 lt!631596) (index!47913 lt!631678)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809923 () Bool)

(assert (=> b!1434995 (=> res!968233 e!809923)))

(declare-fun b!1434996 () Bool)

(declare-fun e!809925 () Bool)

(assert (=> b!1434996 (= e!809925 (bvsge (x!129572 lt!631678) #b01111111111111111111111111111110))))

(declare-fun b!1434997 () Bool)

(declare-fun e!809924 () Bool)

(assert (=> b!1434997 (= e!809925 e!809924)))

(declare-fun res!968232 () Bool)

(assert (=> b!1434997 (= res!968232 (and (is-Intermediate!11380 lt!631678) (not (undefined!12192 lt!631678)) (bvslt (x!129572 lt!631678) #b01111111111111111111111111111110) (bvsge (x!129572 lt!631678) #b00000000000000000000000000000000) (bvsge (x!129572 lt!631678) (bvadd #b00000000000000000000000000000001 x!605))))))

(assert (=> b!1434997 (=> (not res!968232) (not e!809924))))

(declare-fun b!1434998 () Bool)

(assert (=> b!1434998 (and (bvsge (index!47913 lt!631678) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631678) (size!47630 lt!631596)))))

(declare-fun res!968231 () Bool)

(assert (=> b!1434998 (= res!968231 (= (select (arr!47079 lt!631596) (index!47913 lt!631678)) lt!631593))))

(assert (=> b!1434998 (=> res!968231 e!809923)))

(assert (=> b!1434998 (= e!809924 e!809923)))

(declare-fun b!1434999 () Bool)

(assert (=> b!1434999 (= e!809922 (Intermediate!11380 false lt!631597 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1435000 () Bool)

(assert (=> b!1435000 (= e!809922 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605 #b00000000000000000000000000000001) (nextIndex!0 lt!631597 (bvadd #b00000000000000000000000000000001 x!605) mask!2608) lt!631593 lt!631596 mask!2608))))

(declare-fun b!1435001 () Bool)

(assert (=> b!1435001 (and (bvsge (index!47913 lt!631678) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631678) (size!47630 lt!631596)))))

(assert (=> b!1435001 (= e!809923 (= (select (arr!47079 lt!631596) (index!47913 lt!631678)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154269 () Bool)

(assert (=> d!154269 e!809925))

(declare-fun c!132886 () Bool)

(assert (=> d!154269 (= c!132886 (and (is-Intermediate!11380 lt!631678) (undefined!12192 lt!631678)))))

(assert (=> d!154269 (= lt!631678 e!809921)))

(declare-fun c!132888 () Bool)

(assert (=> d!154269 (= c!132888 (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110))))

(assert (=> d!154269 (= lt!631677 (select (arr!47079 lt!631596) lt!631597))))

(assert (=> d!154269 (validMask!0 mask!2608)))

(assert (=> d!154269 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631597 lt!631593 lt!631596 mask!2608) lt!631678)))

(assert (= (and d!154269 c!132888) b!1434994))

(assert (= (and d!154269 (not c!132888)) b!1434993))

(assert (= (and b!1434993 c!132887) b!1434999))

(assert (= (and b!1434993 (not c!132887)) b!1435000))

(assert (= (and d!154269 c!132886) b!1434996))

(assert (= (and d!154269 (not c!132886)) b!1434997))

(assert (= (and b!1434997 res!968232) b!1434998))

(assert (= (and b!1434998 (not res!968231)) b!1434995))

(assert (= (and b!1434995 (not res!968233)) b!1435001))

(declare-fun m!1324509 () Bool)

(assert (=> b!1434995 m!1324509))

(declare-fun m!1324511 () Bool)

(assert (=> d!154269 m!1324511))

(assert (=> d!154269 m!1324391))

(assert (=> b!1434998 m!1324509))

(declare-fun m!1324513 () Bool)

(assert (=> b!1435000 m!1324513))

(assert (=> b!1435000 m!1324513))

(declare-fun m!1324515 () Bool)

(assert (=> b!1435000 m!1324515))

(assert (=> b!1435001 m!1324509))

(assert (=> b!1434823 d!154269))

(declare-fun b!1435028 () Bool)

(declare-fun e!809944 () Bool)

(declare-fun e!809942 () Bool)

(assert (=> b!1435028 (= e!809944 e!809942)))

(declare-fun lt!631694 () (_ BitVec 64))

(assert (=> b!1435028 (= lt!631694 (select (arr!47079 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!631692 () Unit!48454)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97561 (_ BitVec 64) (_ BitVec 32)) Unit!48454)

(assert (=> b!1435028 (= lt!631692 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631694 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1435028 (arrayContainsKey!0 a!2831 lt!631694 #b00000000000000000000000000000000)))

(declare-fun lt!631693 () Unit!48454)

(assert (=> b!1435028 (= lt!631693 lt!631692)))

(declare-fun res!968244 () Bool)

(assert (=> b!1435028 (= res!968244 (= (seekEntryOrOpen!0 (select (arr!47079 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11380 #b00000000000000000000000000000000)))))

(assert (=> b!1435028 (=> (not res!968244) (not e!809942))))

(declare-fun b!1435029 () Bool)

(declare-fun call!67552 () Bool)

(assert (=> b!1435029 (= e!809944 call!67552)))

(declare-fun bm!67549 () Bool)

(assert (=> bm!67549 (= call!67552 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1435030 () Bool)

(assert (=> b!1435030 (= e!809942 call!67552)))

(declare-fun b!1435031 () Bool)

(declare-fun e!809943 () Bool)

(assert (=> b!1435031 (= e!809943 e!809944)))

(declare-fun c!132897 () Bool)

(assert (=> b!1435031 (= c!132897 (validKeyInArray!0 (select (arr!47079 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!154271 () Bool)

(declare-fun res!968245 () Bool)

(assert (=> d!154271 (=> res!968245 e!809943)))

(assert (=> d!154271 (= res!968245 (bvsge #b00000000000000000000000000000000 (size!47630 a!2831)))))

(assert (=> d!154271 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!809943)))

(assert (= (and d!154271 (not res!968245)) b!1435031))

(assert (= (and b!1435031 c!132897) b!1435028))

(assert (= (and b!1435031 (not c!132897)) b!1435029))

(assert (= (and b!1435028 res!968244) b!1435030))

(assert (= (or b!1435030 b!1435029) bm!67549))

(declare-fun m!1324529 () Bool)

(assert (=> b!1435028 m!1324529))

(declare-fun m!1324531 () Bool)

(assert (=> b!1435028 m!1324531))

(declare-fun m!1324533 () Bool)

(assert (=> b!1435028 m!1324533))

(assert (=> b!1435028 m!1324529))

(declare-fun m!1324535 () Bool)

(assert (=> b!1435028 m!1324535))

(declare-fun m!1324537 () Bool)

(assert (=> bm!67549 m!1324537))

(assert (=> b!1435031 m!1324529))

(assert (=> b!1435031 m!1324529))

(declare-fun m!1324539 () Bool)

(assert (=> b!1435031 m!1324539))

(assert (=> b!1434813 d!154271))

(declare-fun d!154285 () Bool)

(assert (=> d!154285 (= (validKeyInArray!0 (select (arr!47079 a!2831) j!81)) (and (not (= (select (arr!47079 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47079 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434811 d!154285))

(declare-fun d!154287 () Bool)

(assert (=> d!154287 (= (validKeyInArray!0 (select (arr!47079 a!2831) i!982)) (and (not (= (select (arr!47079 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47079 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434822 d!154287))

(declare-fun b!1435069 () Bool)

(declare-fun e!809968 () Bool)

(declare-fun e!809971 () Bool)

(assert (=> b!1435069 (= e!809968 e!809971)))

(declare-fun res!968263 () Bool)

(assert (=> b!1435069 (=> (not res!968263) (not e!809971))))

(declare-fun e!809969 () Bool)

(assert (=> b!1435069 (= res!968263 (not e!809969))))

(declare-fun res!968262 () Bool)

(assert (=> b!1435069 (=> (not res!968262) (not e!809969))))

(assert (=> b!1435069 (= res!968262 (validKeyInArray!0 (select (arr!47079 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1435070 () Bool)

(declare-fun contains!9886 (List!33769 (_ BitVec 64)) Bool)

(assert (=> b!1435070 (= e!809969 (contains!9886 Nil!33766 (select (arr!47079 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!154289 () Bool)

(declare-fun res!968264 () Bool)

(assert (=> d!154289 (=> res!968264 e!809968)))

(assert (=> d!154289 (= res!968264 (bvsge #b00000000000000000000000000000000 (size!47630 a!2831)))))

(assert (=> d!154289 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33766) e!809968)))

(declare-fun b!1435071 () Bool)

(declare-fun e!809970 () Bool)

(assert (=> b!1435071 (= e!809971 e!809970)))

(declare-fun c!132909 () Bool)

(assert (=> b!1435071 (= c!132909 (validKeyInArray!0 (select (arr!47079 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1435072 () Bool)

(declare-fun call!67555 () Bool)

(assert (=> b!1435072 (= e!809970 call!67555)))

(declare-fun b!1435073 () Bool)

(assert (=> b!1435073 (= e!809970 call!67555)))

(declare-fun bm!67552 () Bool)

(assert (=> bm!67552 (= call!67555 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132909 (Cons!33765 (select (arr!47079 a!2831) #b00000000000000000000000000000000) Nil!33766) Nil!33766)))))

(assert (= (and d!154289 (not res!968264)) b!1435069))

(assert (= (and b!1435069 res!968262) b!1435070))

(assert (= (and b!1435069 res!968263) b!1435071))

(assert (= (and b!1435071 c!132909) b!1435073))

(assert (= (and b!1435071 (not c!132909)) b!1435072))

(assert (= (or b!1435073 b!1435072) bm!67552))

(assert (=> b!1435069 m!1324529))

(assert (=> b!1435069 m!1324529))

(assert (=> b!1435069 m!1324539))

(assert (=> b!1435070 m!1324529))

(assert (=> b!1435070 m!1324529))

(declare-fun m!1324549 () Bool)

(assert (=> b!1435070 m!1324549))

(assert (=> b!1435071 m!1324529))

(assert (=> b!1435071 m!1324529))

(assert (=> b!1435071 m!1324539))

(assert (=> bm!67552 m!1324529))

(declare-fun m!1324551 () Bool)

(assert (=> bm!67552 m!1324551))

(assert (=> b!1434812 d!154289))

(declare-fun b!1435074 () Bool)

(declare-fun e!809972 () SeekEntryResult!11380)

(declare-fun e!809973 () SeekEntryResult!11380)

(assert (=> b!1435074 (= e!809972 e!809973)))

(declare-fun c!132911 () Bool)

(declare-fun lt!631701 () (_ BitVec 64))

(assert (=> b!1435074 (= c!132911 (or (= lt!631701 (select (arr!47079 a!2831) j!81)) (= (bvadd lt!631701 lt!631701) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1435075 () Bool)

(assert (=> b!1435075 (= e!809972 (Intermediate!11380 true lt!631597 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1435076 () Bool)

(declare-fun lt!631702 () SeekEntryResult!11380)

(assert (=> b!1435076 (and (bvsge (index!47913 lt!631702) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631702) (size!47630 a!2831)))))

(declare-fun res!968267 () Bool)

(assert (=> b!1435076 (= res!968267 (= (select (arr!47079 a!2831) (index!47913 lt!631702)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809974 () Bool)

(assert (=> b!1435076 (=> res!968267 e!809974)))

(declare-fun b!1435077 () Bool)

(declare-fun e!809976 () Bool)

(assert (=> b!1435077 (= e!809976 (bvsge (x!129572 lt!631702) #b01111111111111111111111111111110))))

(declare-fun b!1435078 () Bool)

(declare-fun e!809975 () Bool)

(assert (=> b!1435078 (= e!809976 e!809975)))

(declare-fun res!968266 () Bool)

(assert (=> b!1435078 (= res!968266 (and (is-Intermediate!11380 lt!631702) (not (undefined!12192 lt!631702)) (bvslt (x!129572 lt!631702) #b01111111111111111111111111111110) (bvsge (x!129572 lt!631702) #b00000000000000000000000000000000) (bvsge (x!129572 lt!631702) (bvadd #b00000000000000000000000000000001 x!605))))))

(assert (=> b!1435078 (=> (not res!968266) (not e!809975))))

(declare-fun b!1435079 () Bool)

(assert (=> b!1435079 (and (bvsge (index!47913 lt!631702) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631702) (size!47630 a!2831)))))

(declare-fun res!968265 () Bool)

(assert (=> b!1435079 (= res!968265 (= (select (arr!47079 a!2831) (index!47913 lt!631702)) (select (arr!47079 a!2831) j!81)))))

(assert (=> b!1435079 (=> res!968265 e!809974)))

(assert (=> b!1435079 (= e!809975 e!809974)))

(declare-fun b!1435080 () Bool)

(assert (=> b!1435080 (= e!809973 (Intermediate!11380 false lt!631597 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1435081 () Bool)

(assert (=> b!1435081 (= e!809973 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605 #b00000000000000000000000000000001) (nextIndex!0 lt!631597 (bvadd #b00000000000000000000000000000001 x!605) mask!2608) (select (arr!47079 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1435082 () Bool)

(assert (=> b!1435082 (and (bvsge (index!47913 lt!631702) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631702) (size!47630 a!2831)))))

(assert (=> b!1435082 (= e!809974 (= (select (arr!47079 a!2831) (index!47913 lt!631702)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154293 () Bool)

(assert (=> d!154293 e!809976))

(declare-fun c!132910 () Bool)

(assert (=> d!154293 (= c!132910 (and (is-Intermediate!11380 lt!631702) (undefined!12192 lt!631702)))))

(assert (=> d!154293 (= lt!631702 e!809972)))

(declare-fun c!132912 () Bool)

(assert (=> d!154293 (= c!132912 (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110))))

(assert (=> d!154293 (= lt!631701 (select (arr!47079 a!2831) lt!631597))))

(assert (=> d!154293 (validMask!0 mask!2608)))

(assert (=> d!154293 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631597 (select (arr!47079 a!2831) j!81) a!2831 mask!2608) lt!631702)))

(assert (= (and d!154293 c!132912) b!1435075))

(assert (= (and d!154293 (not c!132912)) b!1435074))

(assert (= (and b!1435074 c!132911) b!1435080))

(assert (= (and b!1435074 (not c!132911)) b!1435081))

(assert (= (and d!154293 c!132910) b!1435077))

(assert (= (and d!154293 (not c!132910)) b!1435078))

(assert (= (and b!1435078 res!968266) b!1435079))

(assert (= (and b!1435079 (not res!968265)) b!1435076))

(assert (= (and b!1435076 (not res!968267)) b!1435082))

(declare-fun m!1324553 () Bool)

(assert (=> b!1435076 m!1324553))

(declare-fun m!1324555 () Bool)

(assert (=> d!154293 m!1324555))

(assert (=> d!154293 m!1324391))

(assert (=> b!1435079 m!1324553))

(assert (=> b!1435081 m!1324513))

(assert (=> b!1435081 m!1324513))

(assert (=> b!1435081 m!1324369))

(declare-fun m!1324557 () Bool)

(assert (=> b!1435081 m!1324557))

(assert (=> b!1435082 m!1324553))

(assert (=> b!1434810 d!154293))

(declare-fun b!1435083 () Bool)

(declare-fun e!809977 () SeekEntryResult!11380)

(declare-fun e!809978 () SeekEntryResult!11380)

(assert (=> b!1435083 (= e!809977 e!809978)))

(declare-fun c!132914 () Bool)

(declare-fun lt!631707 () (_ BitVec 64))

(assert (=> b!1435083 (= c!132914 (or (= lt!631707 lt!631593) (= (bvadd lt!631707 lt!631707) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1435084 () Bool)

(assert (=> b!1435084 (= e!809977 (Intermediate!11380 true index!585 x!605))))

(declare-fun b!1435085 () Bool)

(declare-fun lt!631708 () SeekEntryResult!11380)

(assert (=> b!1435085 (and (bvsge (index!47913 lt!631708) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631708) (size!47630 lt!631596)))))

(declare-fun res!968270 () Bool)

(assert (=> b!1435085 (= res!968270 (= (select (arr!47079 lt!631596) (index!47913 lt!631708)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809979 () Bool)

(assert (=> b!1435085 (=> res!968270 e!809979)))

(declare-fun b!1435086 () Bool)

(declare-fun e!809981 () Bool)

(assert (=> b!1435086 (= e!809981 (bvsge (x!129572 lt!631708) #b01111111111111111111111111111110))))

(declare-fun b!1435087 () Bool)

(declare-fun e!809980 () Bool)

(assert (=> b!1435087 (= e!809981 e!809980)))

(declare-fun res!968269 () Bool)

(assert (=> b!1435087 (= res!968269 (and (is-Intermediate!11380 lt!631708) (not (undefined!12192 lt!631708)) (bvslt (x!129572 lt!631708) #b01111111111111111111111111111110) (bvsge (x!129572 lt!631708) #b00000000000000000000000000000000) (bvsge (x!129572 lt!631708) x!605)))))

(assert (=> b!1435087 (=> (not res!968269) (not e!809980))))

(declare-fun b!1435088 () Bool)

(assert (=> b!1435088 (and (bvsge (index!47913 lt!631708) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631708) (size!47630 lt!631596)))))

(declare-fun res!968268 () Bool)

(assert (=> b!1435088 (= res!968268 (= (select (arr!47079 lt!631596) (index!47913 lt!631708)) lt!631593))))

(assert (=> b!1435088 (=> res!968268 e!809979)))

(assert (=> b!1435088 (= e!809980 e!809979)))

(declare-fun b!1435089 () Bool)

(assert (=> b!1435089 (= e!809978 (Intermediate!11380 false index!585 x!605))))

(declare-fun b!1435090 () Bool)

(assert (=> b!1435090 (= e!809978 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!631593 lt!631596 mask!2608))))

(declare-fun b!1435091 () Bool)

(assert (=> b!1435091 (and (bvsge (index!47913 lt!631708) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631708) (size!47630 lt!631596)))))

(assert (=> b!1435091 (= e!809979 (= (select (arr!47079 lt!631596) (index!47913 lt!631708)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154295 () Bool)

(assert (=> d!154295 e!809981))

(declare-fun c!132913 () Bool)

(assert (=> d!154295 (= c!132913 (and (is-Intermediate!11380 lt!631708) (undefined!12192 lt!631708)))))

(assert (=> d!154295 (= lt!631708 e!809977)))

(declare-fun c!132915 () Bool)

(assert (=> d!154295 (= c!132915 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154295 (= lt!631707 (select (arr!47079 lt!631596) index!585))))

(assert (=> d!154295 (validMask!0 mask!2608)))

(assert (=> d!154295 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631593 lt!631596 mask!2608) lt!631708)))

(assert (= (and d!154295 c!132915) b!1435084))

(assert (= (and d!154295 (not c!132915)) b!1435083))

(assert (= (and b!1435083 c!132914) b!1435089))

(assert (= (and b!1435083 (not c!132914)) b!1435090))

(assert (= (and d!154295 c!132913) b!1435086))

(assert (= (and d!154295 (not c!132913)) b!1435087))

(assert (= (and b!1435087 res!968269) b!1435088))

(assert (= (and b!1435088 (not res!968268)) b!1435085))

(assert (= (and b!1435085 (not res!968270)) b!1435091))

(declare-fun m!1324559 () Bool)

(assert (=> b!1435085 m!1324559))

(declare-fun m!1324561 () Bool)

(assert (=> d!154295 m!1324561))

(assert (=> d!154295 m!1324391))

(assert (=> b!1435088 m!1324559))

(assert (=> b!1435090 m!1324385))

(assert (=> b!1435090 m!1324385))

(declare-fun m!1324563 () Bool)

(assert (=> b!1435090 m!1324563))

(assert (=> b!1435091 m!1324559))

(assert (=> b!1434809 d!154295))

(declare-fun b!1435168 () Bool)

(declare-fun e!810029 () SeekEntryResult!11380)

(declare-fun e!810030 () SeekEntryResult!11380)

(assert (=> b!1435168 (= e!810029 e!810030)))

(declare-fun lt!631739 () (_ BitVec 64))

(declare-fun lt!631738 () SeekEntryResult!11380)

(assert (=> b!1435168 (= lt!631739 (select (arr!47079 a!2831) (index!47913 lt!631738)))))

(declare-fun c!132943 () Bool)

(assert (=> b!1435168 (= c!132943 (= lt!631739 (select (arr!47079 a!2831) j!81)))))

(declare-fun b!1435169 () Bool)

(declare-fun e!810028 () SeekEntryResult!11380)

(assert (=> b!1435169 (= e!810028 (MissingZero!11380 (index!47913 lt!631738)))))

(declare-fun b!1435170 () Bool)

(assert (=> b!1435170 (= e!810030 (Found!11380 (index!47913 lt!631738)))))

(declare-fun b!1435171 () Bool)

(declare-fun c!132942 () Bool)

(assert (=> b!1435171 (= c!132942 (= lt!631739 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1435171 (= e!810030 e!810028)))

(declare-fun b!1435172 () Bool)

(assert (=> b!1435172 (= e!810029 Undefined!11380)))

(declare-fun d!154299 () Bool)

(declare-fun lt!631740 () SeekEntryResult!11380)

(assert (=> d!154299 (and (or (is-Undefined!11380 lt!631740) (not (is-Found!11380 lt!631740)) (and (bvsge (index!47912 lt!631740) #b00000000000000000000000000000000) (bvslt (index!47912 lt!631740) (size!47630 a!2831)))) (or (is-Undefined!11380 lt!631740) (is-Found!11380 lt!631740) (not (is-MissingZero!11380 lt!631740)) (and (bvsge (index!47911 lt!631740) #b00000000000000000000000000000000) (bvslt (index!47911 lt!631740) (size!47630 a!2831)))) (or (is-Undefined!11380 lt!631740) (is-Found!11380 lt!631740) (is-MissingZero!11380 lt!631740) (not (is-MissingVacant!11380 lt!631740)) (and (bvsge (index!47914 lt!631740) #b00000000000000000000000000000000) (bvslt (index!47914 lt!631740) (size!47630 a!2831)))) (or (is-Undefined!11380 lt!631740) (ite (is-Found!11380 lt!631740) (= (select (arr!47079 a!2831) (index!47912 lt!631740)) (select (arr!47079 a!2831) j!81)) (ite (is-MissingZero!11380 lt!631740) (= (select (arr!47079 a!2831) (index!47911 lt!631740)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11380 lt!631740) (= (select (arr!47079 a!2831) (index!47914 lt!631740)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!154299 (= lt!631740 e!810029)))

(declare-fun c!132941 () Bool)

(assert (=> d!154299 (= c!132941 (and (is-Intermediate!11380 lt!631738) (undefined!12192 lt!631738)))))

(assert (=> d!154299 (= lt!631738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47079 a!2831) j!81) mask!2608) (select (arr!47079 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!154299 (validMask!0 mask!2608)))

(assert (=> d!154299 (= (seekEntryOrOpen!0 (select (arr!47079 a!2831) j!81) a!2831 mask!2608) lt!631740)))

(declare-fun b!1435173 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97561 (_ BitVec 32)) SeekEntryResult!11380)

(assert (=> b!1435173 (= e!810028 (seekKeyOrZeroReturnVacant!0 (x!129572 lt!631738) (index!47913 lt!631738) (index!47913 lt!631738) (select (arr!47079 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and d!154299 c!132941) b!1435172))

(assert (= (and d!154299 (not c!132941)) b!1435168))

(assert (= (and b!1435168 c!132943) b!1435170))

(assert (= (and b!1435168 (not c!132943)) b!1435171))

(assert (= (and b!1435171 c!132942) b!1435169))

(assert (= (and b!1435171 (not c!132942)) b!1435173))

(declare-fun m!1324611 () Bool)

(assert (=> b!1435168 m!1324611))

(assert (=> d!154299 m!1324405))

(assert (=> d!154299 m!1324369))

(assert (=> d!154299 m!1324407))

(declare-fun m!1324613 () Bool)

(assert (=> d!154299 m!1324613))

(assert (=> d!154299 m!1324369))

(assert (=> d!154299 m!1324405))

(declare-fun m!1324615 () Bool)

(assert (=> d!154299 m!1324615))

(declare-fun m!1324617 () Bool)

(assert (=> d!154299 m!1324617))

(assert (=> d!154299 m!1324391))

(assert (=> b!1435173 m!1324369))

(declare-fun m!1324619 () Bool)

(assert (=> b!1435173 m!1324619))

(assert (=> b!1434820 d!154299))

(declare-fun b!1435174 () Bool)

(declare-fun e!810031 () SeekEntryResult!11380)

(declare-fun e!810032 () SeekEntryResult!11380)

(assert (=> b!1435174 (= e!810031 e!810032)))

(declare-fun c!132945 () Bool)

(declare-fun lt!631741 () (_ BitVec 64))

(assert (=> b!1435174 (= c!132945 (or (= lt!631741 (select (arr!47079 a!2831) j!81)) (= (bvadd lt!631741 lt!631741) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1435175 () Bool)

(assert (=> b!1435175 (= e!810031 (Intermediate!11380 true (toIndex!0 (select (arr!47079 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1435176 () Bool)

(declare-fun lt!631742 () SeekEntryResult!11380)

(assert (=> b!1435176 (and (bvsge (index!47913 lt!631742) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631742) (size!47630 a!2831)))))

(declare-fun res!968299 () Bool)

(assert (=> b!1435176 (= res!968299 (= (select (arr!47079 a!2831) (index!47913 lt!631742)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!810033 () Bool)

(assert (=> b!1435176 (=> res!968299 e!810033)))

(declare-fun b!1435177 () Bool)

(declare-fun e!810035 () Bool)

(assert (=> b!1435177 (= e!810035 (bvsge (x!129572 lt!631742) #b01111111111111111111111111111110))))

(declare-fun b!1435178 () Bool)

(declare-fun e!810034 () Bool)

(assert (=> b!1435178 (= e!810035 e!810034)))

(declare-fun res!968298 () Bool)

(assert (=> b!1435178 (= res!968298 (and (is-Intermediate!11380 lt!631742) (not (undefined!12192 lt!631742)) (bvslt (x!129572 lt!631742) #b01111111111111111111111111111110) (bvsge (x!129572 lt!631742) #b00000000000000000000000000000000) (bvsge (x!129572 lt!631742) #b00000000000000000000000000000000)))))

(assert (=> b!1435178 (=> (not res!968298) (not e!810034))))

(declare-fun b!1435179 () Bool)

(assert (=> b!1435179 (and (bvsge (index!47913 lt!631742) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631742) (size!47630 a!2831)))))

(declare-fun res!968297 () Bool)

(assert (=> b!1435179 (= res!968297 (= (select (arr!47079 a!2831) (index!47913 lt!631742)) (select (arr!47079 a!2831) j!81)))))

(assert (=> b!1435179 (=> res!968297 e!810033)))

(assert (=> b!1435179 (= e!810034 e!810033)))

(declare-fun b!1435180 () Bool)

(assert (=> b!1435180 (= e!810032 (Intermediate!11380 false (toIndex!0 (select (arr!47079 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1435181 () Bool)

(assert (=> b!1435181 (= e!810032 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47079 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47079 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1435182 () Bool)

(assert (=> b!1435182 (and (bvsge (index!47913 lt!631742) #b00000000000000000000000000000000) (bvslt (index!47913 lt!631742) (size!47630 a!2831)))))

(assert (=> b!1435182 (= e!810033 (= (select (arr!47079 a!2831) (index!47913 lt!631742)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154323 () Bool)

(assert (=> d!154323 e!810035))

(declare-fun c!132944 () Bool)

(assert (=> d!154323 (= c!132944 (and (is-Intermediate!11380 lt!631742) (undefined!12192 lt!631742)))))

(assert (=> d!154323 (= lt!631742 e!810031)))

(declare-fun c!132946 () Bool)

(assert (=> d!154323 (= c!132946 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154323 (= lt!631741 (select (arr!47079 a!2831) (toIndex!0 (select (arr!47079 a!2831) j!81) mask!2608)))))

(assert (=> d!154323 (validMask!0 mask!2608)))

(assert (=> d!154323 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47079 a!2831) j!81) mask!2608) (select (arr!47079 a!2831) j!81) a!2831 mask!2608) lt!631742)))

(assert (= (and d!154323 c!132946) b!1435175))

(assert (= (and d!154323 (not c!132946)) b!1435174))

(assert (= (and b!1435174 c!132945) b!1435180))

(assert (= (and b!1435174 (not c!132945)) b!1435181))

(assert (= (and d!154323 c!132944) b!1435177))

(assert (= (and d!154323 (not c!132944)) b!1435178))

(assert (= (and b!1435178 res!968298) b!1435179))

(assert (= (and b!1435179 (not res!968297)) b!1435176))

(assert (= (and b!1435176 (not res!968299)) b!1435182))

(declare-fun m!1324621 () Bool)

(assert (=> b!1435176 m!1324621))

(assert (=> d!154323 m!1324405))

(declare-fun m!1324623 () Bool)

(assert (=> d!154323 m!1324623))

(assert (=> d!154323 m!1324391))

(assert (=> b!1435179 m!1324621))

(assert (=> b!1435181 m!1324405))

(declare-fun m!1324625 () Bool)

(assert (=> b!1435181 m!1324625))

(assert (=> b!1435181 m!1324625))

(assert (=> b!1435181 m!1324369))

(declare-fun m!1324627 () Bool)

(assert (=> b!1435181 m!1324627))

(assert (=> b!1435182 m!1324621))

(assert (=> b!1434818 d!154323))

(declare-fun d!154325 () Bool)

(declare-fun lt!631744 () (_ BitVec 32))

(declare-fun lt!631743 () (_ BitVec 32))

(assert (=> d!154325 (= lt!631744 (bvmul (bvxor lt!631743 (bvlshr lt!631743 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154325 (= lt!631743 ((_ extract 31 0) (bvand (bvxor (select (arr!47079 a!2831) j!81) (bvlshr (select (arr!47079 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154325 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!968230 (let ((h!35099 ((_ extract 31 0) (bvand (bvxor (select (arr!47079 a!2831) j!81) (bvlshr (select (arr!47079 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129577 (bvmul (bvxor h!35099 (bvlshr h!35099 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129577 (bvlshr x!129577 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!968230 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!968230 #b00000000000000000000000000000000))))))

(assert (=> d!154325 (= (toIndex!0 (select (arr!47079 a!2831) j!81) mask!2608) (bvand (bvxor lt!631744 (bvlshr lt!631744 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434818 d!154325))

(declare-fun b!1435183 () Bool)

(declare-fun e!810038 () Bool)

(declare-fun e!810036 () Bool)

(assert (=> b!1435183 (= e!810038 e!810036)))

(declare-fun lt!631747 () (_ BitVec 64))

(assert (=> b!1435183 (= lt!631747 (select (arr!47079 a!2831) j!81))))

(declare-fun lt!631745 () Unit!48454)

(assert (=> b!1435183 (= lt!631745 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631747 j!81))))

(assert (=> b!1435183 (arrayContainsKey!0 a!2831 lt!631747 #b00000000000000000000000000000000)))

(declare-fun lt!631746 () Unit!48454)

(assert (=> b!1435183 (= lt!631746 lt!631745)))

(declare-fun res!968300 () Bool)

(assert (=> b!1435183 (= res!968300 (= (seekEntryOrOpen!0 (select (arr!47079 a!2831) j!81) a!2831 mask!2608) (Found!11380 j!81)))))

(assert (=> b!1435183 (=> (not res!968300) (not e!810036))))

(declare-fun b!1435184 () Bool)

(declare-fun call!67560 () Bool)

(assert (=> b!1435184 (= e!810038 call!67560)))

(declare-fun bm!67557 () Bool)

(assert (=> bm!67557 (= call!67560 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1435185 () Bool)

(assert (=> b!1435185 (= e!810036 call!67560)))

(declare-fun b!1435186 () Bool)

(declare-fun e!810037 () Bool)

(assert (=> b!1435186 (= e!810037 e!810038)))

(declare-fun c!132947 () Bool)

(assert (=> b!1435186 (= c!132947 (validKeyInArray!0 (select (arr!47079 a!2831) j!81)))))

(declare-fun d!154327 () Bool)

(declare-fun res!968301 () Bool)

(assert (=> d!154327 (=> res!968301 e!810037)))

(assert (=> d!154327 (= res!968301 (bvsge j!81 (size!47630 a!2831)))))

(assert (=> d!154327 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!810037)))

(assert (= (and d!154327 (not res!968301)) b!1435186))

(assert (= (and b!1435186 c!132947) b!1435183))

(assert (= (and b!1435186 (not c!132947)) b!1435184))

(assert (= (and b!1435183 res!968300) b!1435185))

(assert (= (or b!1435185 b!1435184) bm!67557))

(assert (=> b!1435183 m!1324369))

(declare-fun m!1324629 () Bool)

(assert (=> b!1435183 m!1324629))

(declare-fun m!1324631 () Bool)

(assert (=> b!1435183 m!1324631))

(assert (=> b!1435183 m!1324369))

(assert (=> b!1435183 m!1324373))

(declare-fun m!1324633 () Bool)

(assert (=> bm!67557 m!1324633))

(assert (=> b!1435186 m!1324369))

(assert (=> b!1435186 m!1324369))

(assert (=> b!1435186 m!1324375))

(assert (=> b!1434808 d!154327))

(declare-fun d!154329 () Bool)

(assert (=> d!154329 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!631750 () Unit!48454)

(declare-fun choose!38 (array!97561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48454)

(assert (=> d!154329 (= lt!631750 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!154329 (validMask!0 mask!2608)))

(assert (=> d!154329 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!631750)))

(declare-fun bs!41770 () Bool)

(assert (= bs!41770 d!154329))

(assert (=> bs!41770 m!1324367))

(declare-fun m!1324635 () Bool)

(assert (=> bs!41770 m!1324635))

(assert (=> bs!41770 m!1324391))

(assert (=> b!1434808 d!154329))

(push 1)

(assert (not d!154269))

(assert (not b!1434991))

(assert (not b!1435186))

(assert (not d!154235))

(assert (not b!1435071))

(assert (not b!1434933))

(assert (not d!154329))

(assert (not b!1435031))

(assert (not b!1435090))

(assert (not bm!67552))

(assert (not b!1435183))

(assert (not d!154323))

(assert (not bm!67549))

(assert (not b!1435028))

(assert (not b!1435070))

(assert (not d!154255))

(assert (not bm!67557))

(assert (not d!154261))

(assert (not d!154295))

(assert (not b!1435173))

(assert (not d!154293))

(assert (not b!1435000))

(assert (not d!154299))

(assert (not b!1435081))

(assert (not b!1435181))

(assert (not b!1435069))

(check-sat)

(pop 1)

(push 1)

(check-sat)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123688 () Bool)

(assert start!123688)

(declare-fun b!1433424 () Bool)

(declare-fun res!967206 () Bool)

(declare-fun e!809100 () Bool)

(assert (=> b!1433424 (=> (not res!967206) (not e!809100))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1433424 (= res!967206 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1433425 () Bool)

(declare-fun res!967204 () Bool)

(assert (=> b!1433425 (=> (not res!967204) (not e!809100))))

(declare-datatypes ((SeekEntryResult!11363 0))(
  ( (MissingZero!11363 (index!47843 (_ BitVec 32))) (Found!11363 (index!47844 (_ BitVec 32))) (Intermediate!11363 (undefined!12175 Bool) (index!47845 (_ BitVec 32)) (x!129497 (_ BitVec 32))) (Undefined!11363) (MissingVacant!11363 (index!47846 (_ BitVec 32))) )
))
(declare-fun lt!631002 () SeekEntryResult!11363)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97521 0))(
  ( (array!97522 (arr!47062 (Array (_ BitVec 32) (_ BitVec 64))) (size!47613 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97521)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97521 (_ BitVec 32)) SeekEntryResult!11363)

(assert (=> b!1433425 (= res!967204 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47062 a!2831) j!81) a!2831 mask!2608) lt!631002))))

(declare-fun b!1433426 () Bool)

(declare-fun res!967196 () Bool)

(declare-fun e!809098 () Bool)

(assert (=> b!1433426 (=> (not res!967196) (not e!809098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97521 (_ BitVec 32)) Bool)

(assert (=> b!1433426 (= res!967196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1433427 () Bool)

(declare-fun res!967202 () Bool)

(assert (=> b!1433427 (=> (not res!967202) (not e!809098))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433427 (= res!967202 (validKeyInArray!0 (select (arr!47062 a!2831) i!982)))))

(declare-fun b!1433428 () Bool)

(declare-fun e!809097 () Bool)

(assert (=> b!1433428 (= e!809100 (not e!809097))))

(declare-fun res!967209 () Bool)

(assert (=> b!1433428 (=> res!967209 e!809097)))

(assert (=> b!1433428 (= res!967209 (or (= (select (arr!47062 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47062 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47062 a!2831) index!585) (select (arr!47062 a!2831) j!81)) (= (select (store (arr!47062 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809099 () Bool)

(assert (=> b!1433428 e!809099))

(declare-fun res!967205 () Bool)

(assert (=> b!1433428 (=> (not res!967205) (not e!809099))))

(assert (=> b!1433428 (= res!967205 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48420 0))(
  ( (Unit!48421) )
))
(declare-fun lt!630999 () Unit!48420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97521 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48420)

(assert (=> b!1433428 (= lt!630999 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1433429 () Bool)

(declare-fun res!967207 () Bool)

(assert (=> b!1433429 (=> (not res!967207) (not e!809100))))

(declare-fun lt!631003 () (_ BitVec 64))

(declare-fun lt!630998 () array!97521)

(declare-fun lt!631000 () SeekEntryResult!11363)

(assert (=> b!1433429 (= res!967207 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631003 lt!630998 mask!2608) lt!631000))))

(declare-fun res!967201 () Bool)

(assert (=> start!123688 (=> (not res!967201) (not e!809098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123688 (= res!967201 (validMask!0 mask!2608))))

(assert (=> start!123688 e!809098))

(assert (=> start!123688 true))

(declare-fun array_inv!36007 (array!97521) Bool)

(assert (=> start!123688 (array_inv!36007 a!2831)))

(declare-fun b!1433430 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97521 (_ BitVec 32)) SeekEntryResult!11363)

(assert (=> b!1433430 (= e!809099 (= (seekEntryOrOpen!0 (select (arr!47062 a!2831) j!81) a!2831 mask!2608) (Found!11363 j!81)))))

(declare-fun b!1433431 () Bool)

(declare-fun e!809101 () Bool)

(assert (=> b!1433431 (= e!809101 e!809100)))

(declare-fun res!967200 () Bool)

(assert (=> b!1433431 (=> (not res!967200) (not e!809100))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433431 (= res!967200 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631003 mask!2608) lt!631003 lt!630998 mask!2608) lt!631000))))

(assert (=> b!1433431 (= lt!631000 (Intermediate!11363 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1433431 (= lt!631003 (select (store (arr!47062 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433431 (= lt!630998 (array!97522 (store (arr!47062 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47613 a!2831)))))

(declare-fun b!1433432 () Bool)

(declare-fun res!967203 () Bool)

(assert (=> b!1433432 (=> (not res!967203) (not e!809098))))

(assert (=> b!1433432 (= res!967203 (and (= (size!47613 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47613 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47613 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1433433 () Bool)

(assert (=> b!1433433 (= e!809098 e!809101)))

(declare-fun res!967199 () Bool)

(assert (=> b!1433433 (=> (not res!967199) (not e!809101))))

(assert (=> b!1433433 (= res!967199 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47062 a!2831) j!81) mask!2608) (select (arr!47062 a!2831) j!81) a!2831 mask!2608) lt!631002))))

(assert (=> b!1433433 (= lt!631002 (Intermediate!11363 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433434 () Bool)

(declare-fun res!967197 () Bool)

(assert (=> b!1433434 (=> (not res!967197) (not e!809098))))

(assert (=> b!1433434 (= res!967197 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47613 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47613 a!2831))))))

(declare-fun b!1433435 () Bool)

(declare-fun res!967198 () Bool)

(assert (=> b!1433435 (=> (not res!967198) (not e!809098))))

(declare-datatypes ((List!33752 0))(
  ( (Nil!33749) (Cons!33748 (h!35074 (_ BitVec 64)) (t!48453 List!33752)) )
))
(declare-fun arrayNoDuplicates!0 (array!97521 (_ BitVec 32) List!33752) Bool)

(assert (=> b!1433435 (= res!967198 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33749))))

(declare-fun lt!631001 () (_ BitVec 32))

(declare-fun b!1433436 () Bool)

(assert (=> b!1433436 (= e!809097 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (and (bvsge lt!631001 #b00000000000000000000000000000000) (bvslt lt!631001 (size!47613 a!2831)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433436 (= lt!631001 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1433437 () Bool)

(declare-fun res!967208 () Bool)

(assert (=> b!1433437 (=> (not res!967208) (not e!809098))))

(assert (=> b!1433437 (= res!967208 (validKeyInArray!0 (select (arr!47062 a!2831) j!81)))))

(assert (= (and start!123688 res!967201) b!1433432))

(assert (= (and b!1433432 res!967203) b!1433427))

(assert (= (and b!1433427 res!967202) b!1433437))

(assert (= (and b!1433437 res!967208) b!1433426))

(assert (= (and b!1433426 res!967196) b!1433435))

(assert (= (and b!1433435 res!967198) b!1433434))

(assert (= (and b!1433434 res!967197) b!1433433))

(assert (= (and b!1433433 res!967199) b!1433431))

(assert (= (and b!1433431 res!967200) b!1433425))

(assert (= (and b!1433425 res!967204) b!1433429))

(assert (= (and b!1433429 res!967207) b!1433424))

(assert (= (and b!1433424 res!967206) b!1433428))

(assert (= (and b!1433428 res!967205) b!1433430))

(assert (= (and b!1433428 (not res!967209)) b!1433436))

(declare-fun m!1323203 () Bool)

(assert (=> b!1433430 m!1323203))

(assert (=> b!1433430 m!1323203))

(declare-fun m!1323205 () Bool)

(assert (=> b!1433430 m!1323205))

(declare-fun m!1323207 () Bool)

(assert (=> b!1433426 m!1323207))

(assert (=> b!1433437 m!1323203))

(assert (=> b!1433437 m!1323203))

(declare-fun m!1323209 () Bool)

(assert (=> b!1433437 m!1323209))

(declare-fun m!1323211 () Bool)

(assert (=> b!1433435 m!1323211))

(declare-fun m!1323213 () Bool)

(assert (=> b!1433427 m!1323213))

(assert (=> b!1433427 m!1323213))

(declare-fun m!1323215 () Bool)

(assert (=> b!1433427 m!1323215))

(declare-fun m!1323217 () Bool)

(assert (=> start!123688 m!1323217))

(declare-fun m!1323219 () Bool)

(assert (=> start!123688 m!1323219))

(declare-fun m!1323221 () Bool)

(assert (=> b!1433436 m!1323221))

(declare-fun m!1323223 () Bool)

(assert (=> b!1433428 m!1323223))

(declare-fun m!1323225 () Bool)

(assert (=> b!1433428 m!1323225))

(declare-fun m!1323227 () Bool)

(assert (=> b!1433428 m!1323227))

(declare-fun m!1323229 () Bool)

(assert (=> b!1433428 m!1323229))

(assert (=> b!1433428 m!1323203))

(declare-fun m!1323231 () Bool)

(assert (=> b!1433428 m!1323231))

(declare-fun m!1323233 () Bool)

(assert (=> b!1433431 m!1323233))

(assert (=> b!1433431 m!1323233))

(declare-fun m!1323235 () Bool)

(assert (=> b!1433431 m!1323235))

(assert (=> b!1433431 m!1323223))

(declare-fun m!1323237 () Bool)

(assert (=> b!1433431 m!1323237))

(declare-fun m!1323239 () Bool)

(assert (=> b!1433429 m!1323239))

(assert (=> b!1433433 m!1323203))

(assert (=> b!1433433 m!1323203))

(declare-fun m!1323241 () Bool)

(assert (=> b!1433433 m!1323241))

(assert (=> b!1433433 m!1323241))

(assert (=> b!1433433 m!1323203))

(declare-fun m!1323243 () Bool)

(assert (=> b!1433433 m!1323243))

(assert (=> b!1433425 m!1323203))

(assert (=> b!1433425 m!1323203))

(declare-fun m!1323245 () Bool)

(assert (=> b!1433425 m!1323245))

(push 1)

(assert (not b!1433425))

(assert (not b!1433431))

(assert (not b!1433436))

(assert (not b!1433435))

(assert (not b!1433426))

(assert (not b!1433433))

(assert (not b!1433427))

(assert (not b!1433428))

(assert (not b!1433429))

(assert (not start!123688))

(assert (not b!1433437))

(assert (not b!1433430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154031 () Bool)

(assert (=> d!154031 (= (validKeyInArray!0 (select (arr!47062 a!2831) i!982)) (and (not (= (select (arr!47062 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47062 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1433427 d!154031))

(declare-fun d!154033 () Bool)

(assert (=> d!154033 (= (validKeyInArray!0 (select (arr!47062 a!2831) j!81)) (and (not (= (select (arr!47062 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47062 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1433437 d!154033))

(declare-fun bm!67503 () Bool)

(declare-fun call!67506 () Bool)

(assert (=> bm!67503 (= call!67506 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433602 () Bool)

(declare-fun e!809192 () Bool)

(assert (=> b!1433602 (= e!809192 call!67506)))

(declare-fun b!1433603 () Bool)

(declare-fun e!809191 () Bool)

(assert (=> b!1433603 (= e!809191 e!809192)))

(declare-fun lt!631074 () (_ BitVec 64))

(assert (=> b!1433603 (= lt!631074 (select (arr!47062 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!631076 () Unit!48420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97521 (_ BitVec 64) (_ BitVec 32)) Unit!48420)

(assert (=> b!1433603 (= lt!631076 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631074 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1433603 (arrayContainsKey!0 a!2831 lt!631074 #b00000000000000000000000000000000)))

(declare-fun lt!631075 () Unit!48420)

(assert (=> b!1433603 (= lt!631075 lt!631076)))

(declare-fun res!967330 () Bool)

(assert (=> b!1433603 (= res!967330 (= (seekEntryOrOpen!0 (select (arr!47062 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11363 #b00000000000000000000000000000000)))))

(assert (=> b!1433603 (=> (not res!967330) (not e!809192))))

(declare-fun b!1433604 () Bool)

(assert (=> b!1433604 (= e!809191 call!67506)))

(declare-fun b!1433605 () Bool)

(declare-fun e!809193 () Bool)

(assert (=> b!1433605 (= e!809193 e!809191)))

(declare-fun c!132638 () Bool)

(assert (=> b!1433605 (= c!132638 (validKeyInArray!0 (select (arr!47062 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!154035 () Bool)

(declare-fun res!967329 () Bool)

(assert (=> d!154035 (=> res!967329 e!809193)))

(assert (=> d!154035 (= res!967329 (bvsge #b00000000000000000000000000000000 (size!47613 a!2831)))))

(assert (=> d!154035 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!809193)))

(assert (= (and d!154035 (not res!967329)) b!1433605))

(assert (= (and b!1433605 c!132638) b!1433603))

(assert (= (and b!1433605 (not c!132638)) b!1433604))

(assert (= (and b!1433603 res!967330) b!1433602))

(assert (= (or b!1433602 b!1433604) bm!67503))

(declare-fun m!1323375 () Bool)

(assert (=> bm!67503 m!1323375))

(declare-fun m!1323377 () Bool)

(assert (=> b!1433603 m!1323377))

(declare-fun m!1323379 () Bool)

(assert (=> b!1433603 m!1323379))

(declare-fun m!1323381 () Bool)

(assert (=> b!1433603 m!1323381))

(assert (=> b!1433603 m!1323377))

(declare-fun m!1323383 () Bool)

(assert (=> b!1433603 m!1323383))

(assert (=> b!1433605 m!1323377))

(assert (=> b!1433605 m!1323377))

(declare-fun m!1323385 () Bool)

(assert (=> b!1433605 m!1323385))

(assert (=> b!1433426 d!154035))

(declare-fun call!67507 () Bool)

(declare-fun bm!67504 () Bool)

(assert (=> bm!67504 (= call!67507 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433614 () Bool)

(declare-fun e!809199 () Bool)

(assert (=> b!1433614 (= e!809199 call!67507)))

(declare-fun b!1433615 () Bool)

(declare-fun e!809198 () Bool)

(assert (=> b!1433615 (= e!809198 e!809199)))

(declare-fun lt!631081 () (_ BitVec 64))

(assert (=> b!1433615 (= lt!631081 (select (arr!47062 a!2831) j!81))))

(declare-fun lt!631083 () Unit!48420)

(assert (=> b!1433615 (= lt!631083 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631081 j!81))))

(assert (=> b!1433615 (arrayContainsKey!0 a!2831 lt!631081 #b00000000000000000000000000000000)))

(declare-fun lt!631082 () Unit!48420)

(assert (=> b!1433615 (= lt!631082 lt!631083)))

(declare-fun res!967332 () Bool)

(assert (=> b!1433615 (= res!967332 (= (seekEntryOrOpen!0 (select (arr!47062 a!2831) j!81) a!2831 mask!2608) (Found!11363 j!81)))))

(assert (=> b!1433615 (=> (not res!967332) (not e!809199))))

(declare-fun b!1433616 () Bool)

(assert (=> b!1433616 (= e!809198 call!67507)))

(declare-fun b!1433617 () Bool)

(declare-fun e!809200 () Bool)

(assert (=> b!1433617 (= e!809200 e!809198)))

(declare-fun c!132643 () Bool)

(assert (=> b!1433617 (= c!132643 (validKeyInArray!0 (select (arr!47062 a!2831) j!81)))))

(declare-fun d!154045 () Bool)

(declare-fun res!967331 () Bool)

(assert (=> d!154045 (=> res!967331 e!809200)))

(assert (=> d!154045 (= res!967331 (bvsge j!81 (size!47613 a!2831)))))

(assert (=> d!154045 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!809200)))

(assert (= (and d!154045 (not res!967331)) b!1433617))

(assert (= (and b!1433617 c!132643) b!1433615))

(assert (= (and b!1433617 (not c!132643)) b!1433616))

(assert (= (and b!1433615 res!967332) b!1433614))

(assert (= (or b!1433614 b!1433616) bm!67504))

(declare-fun m!1323387 () Bool)

(assert (=> bm!67504 m!1323387))

(assert (=> b!1433615 m!1323203))

(declare-fun m!1323389 () Bool)

(assert (=> b!1433615 m!1323389))

(declare-fun m!1323391 () Bool)

(assert (=> b!1433615 m!1323391))

(assert (=> b!1433615 m!1323203))

(assert (=> b!1433615 m!1323205))

(assert (=> b!1433617 m!1323203))

(assert (=> b!1433617 m!1323203))

(assert (=> b!1433617 m!1323209))

(assert (=> b!1433428 d!154045))

(declare-fun d!154047 () Bool)

(assert (=> d!154047 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!631086 () Unit!48420)

(declare-fun choose!38 (array!97521 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48420)

(assert (=> d!154047 (= lt!631086 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!154047 (validMask!0 mask!2608)))

(assert (=> d!154047 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!631086)))

(declare-fun bs!41739 () Bool)

(assert (= bs!41739 d!154047))

(assert (=> bs!41739 m!1323229))

(declare-fun m!1323393 () Bool)

(assert (=> bs!41739 m!1323393))

(assert (=> bs!41739 m!1323217))

(assert (=> b!1433428 d!154047))

(declare-fun b!1433713 () Bool)

(declare-fun e!809261 () Bool)

(declare-fun e!809262 () Bool)

(assert (=> b!1433713 (= e!809261 e!809262)))

(declare-fun res!967370 () Bool)

(declare-fun lt!631122 () SeekEntryResult!11363)

(assert (=> b!1433713 (= res!967370 (and (is-Intermediate!11363 lt!631122) (not (undefined!12175 lt!631122)) (bvslt (x!129497 lt!631122) #b01111111111111111111111111111110) (bvsge (x!129497 lt!631122) #b00000000000000000000000000000000) (bvsge (x!129497 lt!631122) x!605)))))

(assert (=> b!1433713 (=> (not res!967370) (not e!809262))))

(declare-fun b!1433714 () Bool)

(assert (=> b!1433714 (= e!809261 (bvsge (x!129497 lt!631122) #b01111111111111111111111111111110))))

(declare-fun b!1433715 () Bool)

(assert (=> b!1433715 (and (bvsge (index!47845 lt!631122) #b00000000000000000000000000000000) (bvslt (index!47845 lt!631122) (size!47613 lt!630998)))))

(declare-fun res!967369 () Bool)

(assert (=> b!1433715 (= res!967369 (= (select (arr!47062 lt!630998) (index!47845 lt!631122)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809260 () Bool)

(assert (=> b!1433715 (=> res!967369 e!809260)))

(declare-fun b!1433716 () Bool)

(assert (=> b!1433716 (and (bvsge (index!47845 lt!631122) #b00000000000000000000000000000000) (bvslt (index!47845 lt!631122) (size!47613 lt!630998)))))

(declare-fun res!967371 () Bool)

(assert (=> b!1433716 (= res!967371 (= (select (arr!47062 lt!630998) (index!47845 lt!631122)) lt!631003))))

(assert (=> b!1433716 (=> res!967371 e!809260)))

(assert (=> b!1433716 (= e!809262 e!809260)))

(declare-fun b!1433717 () Bool)

(declare-fun e!809264 () SeekEntryResult!11363)

(assert (=> b!1433717 (= e!809264 (Intermediate!11363 true index!585 x!605))))

(declare-fun b!1433718 () Bool)

(declare-fun e!809263 () SeekEntryResult!11363)

(assert (=> b!1433718 (= e!809263 (Intermediate!11363 false index!585 x!605))))

(declare-fun b!1433719 () Bool)

(assert (=> b!1433719 (and (bvsge (index!47845 lt!631122) #b00000000000000000000000000000000) (bvslt (index!47845 lt!631122) (size!47613 lt!630998)))))

(assert (=> b!1433719 (= e!809260 (= (select (arr!47062 lt!630998) (index!47845 lt!631122)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154049 () Bool)

(assert (=> d!154049 e!809261))

(declare-fun c!132674 () Bool)

(assert (=> d!154049 (= c!132674 (and (is-Intermediate!11363 lt!631122) (undefined!12175 lt!631122)))))

(assert (=> d!154049 (= lt!631122 e!809264)))

(declare-fun c!132675 () Bool)

(assert (=> d!154049 (= c!132675 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!631123 () (_ BitVec 64))

(assert (=> d!154049 (= lt!631123 (select (arr!47062 lt!630998) index!585))))

(assert (=> d!154049 (validMask!0 mask!2608)))

(assert (=> d!154049 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631003 lt!630998 mask!2608) lt!631122)))

(declare-fun b!1433720 () Bool)

(assert (=> b!1433720 (= e!809263 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!631003 lt!630998 mask!2608))))

(declare-fun b!1433721 () Bool)

(assert (=> b!1433721 (= e!809264 e!809263)))

(declare-fun c!132676 () Bool)

(assert (=> b!1433721 (= c!132676 (or (= lt!631123 lt!631003) (= (bvadd lt!631123 lt!631123) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!154049 c!132675) b!1433717))

(assert (= (and d!154049 (not c!132675)) b!1433721))

(assert (= (and b!1433721 c!132676) b!1433718))

(assert (= (and b!1433721 (not c!132676)) b!1433720))

(assert (= (and d!154049 c!132674) b!1433714))

(assert (= (and d!154049 (not c!132674)) b!1433713))

(assert (= (and b!1433713 res!967370) b!1433716))

(assert (= (and b!1433716 (not res!967371)) b!1433715))

(assert (= (and b!1433715 (not res!967369)) b!1433719))

(assert (=> b!1433720 m!1323221))

(assert (=> b!1433720 m!1323221))

(declare-fun m!1323435 () Bool)

(assert (=> b!1433720 m!1323435))

(declare-fun m!1323437 () Bool)

(assert (=> b!1433716 m!1323437))

(assert (=> b!1433715 m!1323437))

(assert (=> b!1433719 m!1323437))

(declare-fun m!1323441 () Bool)

(assert (=> d!154049 m!1323441))

(assert (=> d!154049 m!1323217))

(assert (=> b!1433429 d!154049))

(declare-fun b!1433731 () Bool)

(declare-fun e!809271 () Bool)

(declare-fun e!809272 () Bool)

(assert (=> b!1433731 (= e!809271 e!809272)))

(declare-fun res!967376 () Bool)

(declare-fun lt!631129 () SeekEntryResult!11363)

(assert (=> b!1433731 (= res!967376 (and (is-Intermediate!11363 lt!631129) (not (undefined!12175 lt!631129)) (bvslt (x!129497 lt!631129) #b01111111111111111111111111111110) (bvsge (x!129497 lt!631129) #b00000000000000000000000000000000) (bvsge (x!129497 lt!631129) #b00000000000000000000000000000000)))))

(assert (=> b!1433731 (=> (not res!967376) (not e!809272))))

(declare-fun b!1433732 () Bool)

(assert (=> b!1433732 (= e!809271 (bvsge (x!129497 lt!631129) #b01111111111111111111111111111110))))

(declare-fun b!1433733 () Bool)

(assert (=> b!1433733 (and (bvsge (index!47845 lt!631129) #b00000000000000000000000000000000) (bvslt (index!47845 lt!631129) (size!47613 lt!630998)))))

(declare-fun res!967375 () Bool)

(assert (=> b!1433733 (= res!967375 (= (select (arr!47062 lt!630998) (index!47845 lt!631129)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809270 () Bool)

(assert (=> b!1433733 (=> res!967375 e!809270)))

(declare-fun b!1433734 () Bool)

(assert (=> b!1433734 (and (bvsge (index!47845 lt!631129) #b00000000000000000000000000000000) (bvslt (index!47845 lt!631129) (size!47613 lt!630998)))))

(declare-fun res!967377 () Bool)

(assert (=> b!1433734 (= res!967377 (= (select (arr!47062 lt!630998) (index!47845 lt!631129)) lt!631003))))

(assert (=> b!1433734 (=> res!967377 e!809270)))

(assert (=> b!1433734 (= e!809272 e!809270)))

(declare-fun b!1433735 () Bool)

(declare-fun e!809274 () SeekEntryResult!11363)

(assert (=> b!1433735 (= e!809274 (Intermediate!11363 true (toIndex!0 lt!631003 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433736 () Bool)

(declare-fun e!809273 () SeekEntryResult!11363)

(assert (=> b!1433736 (= e!809273 (Intermediate!11363 false (toIndex!0 lt!631003 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433737 () Bool)

(assert (=> b!1433737 (and (bvsge (index!47845 lt!631129) #b00000000000000000000000000000000) (bvslt (index!47845 lt!631129) (size!47613 lt!630998)))))

(assert (=> b!1433737 (= e!809270 (= (select (arr!47062 lt!630998) (index!47845 lt!631129)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154069 () Bool)

(assert (=> d!154069 e!809271))

(declare-fun c!132680 () Bool)

(assert (=> d!154069 (= c!132680 (and (is-Intermediate!11363 lt!631129) (undefined!12175 lt!631129)))))

(assert (=> d!154069 (= lt!631129 e!809274)))

(declare-fun c!132681 () Bool)

(assert (=> d!154069 (= c!132681 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!631130 () (_ BitVec 64))

(assert (=> d!154069 (= lt!631130 (select (arr!47062 lt!630998) (toIndex!0 lt!631003 mask!2608)))))

(assert (=> d!154069 (validMask!0 mask!2608)))

(assert (=> d!154069 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631003 mask!2608) lt!631003 lt!630998 mask!2608) lt!631129)))

(declare-fun b!1433738 () Bool)

(assert (=> b!1433738 (= e!809273 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!631003 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!631003 lt!630998 mask!2608))))

(declare-fun b!1433739 () Bool)

(assert (=> b!1433739 (= e!809274 e!809273)))

(declare-fun c!132682 () Bool)

(assert (=> b!1433739 (= c!132682 (or (= lt!631130 lt!631003) (= (bvadd lt!631130 lt!631130) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!154069 c!132681) b!1433735))

(assert (= (and d!154069 (not c!132681)) b!1433739))

(assert (= (and b!1433739 c!132682) b!1433736))

(assert (= (and b!1433739 (not c!132682)) b!1433738))

(assert (= (and d!154069 c!132680) b!1433732))

(assert (= (and d!154069 (not c!132680)) b!1433731))

(assert (= (and b!1433731 res!967376) b!1433734))

(assert (= (and b!1433734 (not res!967377)) b!1433733))

(assert (= (and b!1433733 (not res!967375)) b!1433737))

(assert (=> b!1433738 m!1323233))

(declare-fun m!1323443 () Bool)

(assert (=> b!1433738 m!1323443))

(assert (=> b!1433738 m!1323443))

(declare-fun m!1323445 () Bool)

(assert (=> b!1433738 m!1323445))

(declare-fun m!1323449 () Bool)

(assert (=> b!1433734 m!1323449))

(assert (=> b!1433733 m!1323449))

(assert (=> b!1433737 m!1323449))

(assert (=> d!154069 m!1323233))

(declare-fun m!1323453 () Bool)

(assert (=> d!154069 m!1323453))

(assert (=> d!154069 m!1323217))

(assert (=> b!1433431 d!154069))

(declare-fun d!154071 () Bool)

(declare-fun lt!631138 () (_ BitVec 32))

(declare-fun lt!631137 () (_ BitVec 32))

(assert (=> d!154071 (= lt!631138 (bvmul (bvxor lt!631137 (bvlshr lt!631137 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154071 (= lt!631137 ((_ extract 31 0) (bvand (bvxor lt!631003 (bvlshr lt!631003 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154071 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967378 (let ((h!35079 ((_ extract 31 0) (bvand (bvxor lt!631003 (bvlshr lt!631003 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129506 (bvmul (bvxor h!35079 (bvlshr h!35079 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129506 (bvlshr x!129506 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967378 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967378 #b00000000000000000000000000000000))))))

(assert (=> d!154071 (= (toIndex!0 lt!631003 mask!2608) (bvand (bvxor lt!631138 (bvlshr lt!631138 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1433431 d!154071))

(declare-fun b!1433774 () Bool)

(declare-fun e!809293 () SeekEntryResult!11363)

(declare-fun lt!631163 () SeekEntryResult!11363)

(assert (=> b!1433774 (= e!809293 (MissingZero!11363 (index!47845 lt!631163)))))

(declare-fun b!1433775 () Bool)

(declare-fun e!809294 () SeekEntryResult!11363)

(assert (=> b!1433775 (= e!809294 Undefined!11363)))

(declare-fun b!1433776 () Bool)

(declare-fun e!809295 () SeekEntryResult!11363)

(assert (=> b!1433776 (= e!809294 e!809295)))

(declare-fun lt!631164 () (_ BitVec 64))

(assert (=> b!1433776 (= lt!631164 (select (arr!47062 a!2831) (index!47845 lt!631163)))))

(declare-fun c!132699 () Bool)

(assert (=> b!1433776 (= c!132699 (= lt!631164 (select (arr!47062 a!2831) j!81)))))

(declare-fun d!154077 () Bool)

(declare-fun lt!631165 () SeekEntryResult!11363)

(assert (=> d!154077 (and (or (is-Undefined!11363 lt!631165) (not (is-Found!11363 lt!631165)) (and (bvsge (index!47844 lt!631165) #b00000000000000000000000000000000) (bvslt (index!47844 lt!631165) (size!47613 a!2831)))) (or (is-Undefined!11363 lt!631165) (is-Found!11363 lt!631165) (not (is-MissingZero!11363 lt!631165)) (and (bvsge (index!47843 lt!631165) #b00000000000000000000000000000000) (bvslt (index!47843 lt!631165) (size!47613 a!2831)))) (or (is-Undefined!11363 lt!631165) (is-Found!11363 lt!631165) (is-MissingZero!11363 lt!631165) (not (is-MissingVacant!11363 lt!631165)) (and (bvsge (index!47846 lt!631165) #b00000000000000000000000000000000) (bvslt (index!47846 lt!631165) (size!47613 a!2831)))) (or (is-Undefined!11363 lt!631165) (ite (is-Found!11363 lt!631165) (= (select (arr!47062 a!2831) (index!47844 lt!631165)) (select (arr!47062 a!2831) j!81)) (ite (is-MissingZero!11363 lt!631165) (= (select (arr!47062 a!2831) (index!47843 lt!631165)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11363 lt!631165) (= (select (arr!47062 a!2831) (index!47846 lt!631165)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!154077 (= lt!631165 e!809294)))

(declare-fun c!132701 () Bool)

(assert (=> d!154077 (= c!132701 (and (is-Intermediate!11363 lt!631163) (undefined!12175 lt!631163)))))

(assert (=> d!154077 (= lt!631163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47062 a!2831) j!81) mask!2608) (select (arr!47062 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!154077 (validMask!0 mask!2608)))

(assert (=> d!154077 (= (seekEntryOrOpen!0 (select (arr!47062 a!2831) j!81) a!2831 mask!2608) lt!631165)))

(declare-fun b!1433777 () Bool)

(assert (=> b!1433777 (= e!809295 (Found!11363 (index!47845 lt!631163)))))

(declare-fun b!1433778 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97521 (_ BitVec 32)) SeekEntryResult!11363)

(assert (=> b!1433778 (= e!809293 (seekKeyOrZeroReturnVacant!0 (x!129497 lt!631163) (index!47845 lt!631163) (index!47845 lt!631163) (select (arr!47062 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1433779 () Bool)

(declare-fun c!132700 () Bool)

(assert (=> b!1433779 (= c!132700 (= lt!631164 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433779 (= e!809295 e!809293)))

(assert (= (and d!154077 c!132701) b!1433775))

(assert (= (and d!154077 (not c!132701)) b!1433776))

(assert (= (and b!1433776 c!132699) b!1433777))

(assert (= (and b!1433776 (not c!132699)) b!1433779))

(assert (= (and b!1433779 c!132700) b!1433774))

(assert (= (and b!1433779 (not c!132700)) b!1433778))

(declare-fun m!1323481 () Bool)

(assert (=> b!1433776 m!1323481))

(assert (=> d!154077 m!1323217))

(declare-fun m!1323487 () Bool)

(assert (=> d!154077 m!1323487))

(declare-fun m!1323489 () Bool)

(assert (=> d!154077 m!1323489))

(assert (=> d!154077 m!1323241))

(assert (=> d!154077 m!1323203))

(assert (=> d!154077 m!1323243))

(declare-fun m!1323491 () Bool)

(assert (=> d!154077 m!1323491))

(assert (=> d!154077 m!1323203))

(assert (=> d!154077 m!1323241))

(assert (=> b!1433778 m!1323203))

(declare-fun m!1323493 () Bool)

(assert (=> b!1433778 m!1323493))

(assert (=> b!1433430 d!154077))

(declare-fun b!1433798 () Bool)

(declare-fun e!809307 () Bool)

(declare-fun e!809308 () Bool)

(assert (=> b!1433798 (= e!809307 e!809308)))

(declare-fun res!967388 () Bool)

(declare-fun lt!631170 () SeekEntryResult!11363)

(assert (=> b!1433798 (= res!967388 (and (is-Intermediate!11363 lt!631170) (not (undefined!12175 lt!631170)) (bvslt (x!129497 lt!631170) #b01111111111111111111111111111110) (bvsge (x!129497 lt!631170) #b00000000000000000000000000000000) (bvsge (x!129497 lt!631170) #b00000000000000000000000000000000)))))

(assert (=> b!1433798 (=> (not res!967388) (not e!809308))))

(declare-fun b!1433799 () Bool)

(assert (=> b!1433799 (= e!809307 (bvsge (x!129497 lt!631170) #b01111111111111111111111111111110))))

(declare-fun b!1433800 () Bool)

(assert (=> b!1433800 (and (bvsge (index!47845 lt!631170) #b00000000000000000000000000000000) (bvslt (index!47845 lt!631170) (size!47613 a!2831)))))

(declare-fun res!967387 () Bool)

(assert (=> b!1433800 (= res!967387 (= (select (arr!47062 a!2831) (index!47845 lt!631170)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809306 () Bool)

(assert (=> b!1433800 (=> res!967387 e!809306)))

(declare-fun b!1433801 () Bool)

(assert (=> b!1433801 (and (bvsge (index!47845 lt!631170) #b00000000000000000000000000000000) (bvslt (index!47845 lt!631170) (size!47613 a!2831)))))

(declare-fun res!967389 () Bool)

(assert (=> b!1433801 (= res!967389 (= (select (arr!47062 a!2831) (index!47845 lt!631170)) (select (arr!47062 a!2831) j!81)))))

(assert (=> b!1433801 (=> res!967389 e!809306)))

(assert (=> b!1433801 (= e!809308 e!809306)))

(declare-fun b!1433802 () Bool)

(declare-fun e!809310 () SeekEntryResult!11363)

(assert (=> b!1433802 (= e!809310 (Intermediate!11363 true (toIndex!0 (select (arr!47062 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433803 () Bool)

(declare-fun e!809309 () SeekEntryResult!11363)

(assert (=> b!1433803 (= e!809309 (Intermediate!11363 false (toIndex!0 (select (arr!47062 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433804 () Bool)

(assert (=> b!1433804 (and (bvsge (index!47845 lt!631170) #b00000000000000000000000000000000) (bvslt (index!47845 lt!631170) (size!47613 a!2831)))))

(assert (=> b!1433804 (= e!809306 (= (select (arr!47062 a!2831) (index!47845 lt!631170)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154095 () Bool)


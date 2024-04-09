; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122072 () Bool)

(assert start!122072)

(declare-fun b!1416369 () Bool)

(declare-fun res!952527 () Bool)

(declare-fun e!801649 () Bool)

(assert (=> b!1416369 (=> (not res!952527) (not e!801649))))

(declare-datatypes ((array!96676 0))(
  ( (array!96677 (arr!46665 (Array (_ BitVec 32) (_ BitVec 64))) (size!47216 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96676)

(declare-datatypes ((List!33364 0))(
  ( (Nil!33361) (Cons!33360 (h!34647 (_ BitVec 64)) (t!48065 List!33364)) )
))
(declare-fun arrayNoDuplicates!0 (array!96676 (_ BitVec 32) List!33364) Bool)

(assert (=> b!1416369 (= res!952527 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33361))))

(declare-fun res!952522 () Bool)

(assert (=> start!122072 (=> (not res!952522) (not e!801649))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122072 (= res!952522 (validMask!0 mask!2840))))

(assert (=> start!122072 e!801649))

(assert (=> start!122072 true))

(declare-fun array_inv!35610 (array!96676) Bool)

(assert (=> start!122072 (array_inv!35610 a!2901)))

(declare-fun b!1416370 () Bool)

(declare-fun res!952523 () Bool)

(assert (=> b!1416370 (=> (not res!952523) (not e!801649))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416370 (= res!952523 (and (= (size!47216 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47216 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47216 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416371 () Bool)

(declare-fun e!801647 () Bool)

(declare-datatypes ((SeekEntryResult!10998 0))(
  ( (MissingZero!10998 (index!46383 (_ BitVec 32))) (Found!10998 (index!46384 (_ BitVec 32))) (Intermediate!10998 (undefined!11810 Bool) (index!46385 (_ BitVec 32)) (x!127984 (_ BitVec 32))) (Undefined!10998) (MissingVacant!10998 (index!46386 (_ BitVec 32))) )
))
(declare-fun lt!624905 () SeekEntryResult!10998)

(declare-fun lt!624906 () SeekEntryResult!10998)

(assert (=> b!1416371 (= e!801647 (or (= lt!624905 lt!624906) (is-Intermediate!10998 lt!624906)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96676 (_ BitVec 32)) SeekEntryResult!10998)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416371 (= lt!624906 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901)) mask!2840))))

(declare-fun b!1416372 () Bool)

(assert (=> b!1416372 (= e!801649 (not e!801647))))

(declare-fun res!952525 () Bool)

(assert (=> b!1416372 (=> res!952525 e!801647)))

(assert (=> b!1416372 (= res!952525 (or (not (is-Intermediate!10998 lt!624905)) (undefined!11810 lt!624905)))))

(declare-fun e!801650 () Bool)

(assert (=> b!1416372 e!801650))

(declare-fun res!952526 () Bool)

(assert (=> b!1416372 (=> (not res!952526) (not e!801650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96676 (_ BitVec 32)) Bool)

(assert (=> b!1416372 (= res!952526 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47920 0))(
  ( (Unit!47921) )
))
(declare-fun lt!624907 () Unit!47920)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96676 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47920)

(assert (=> b!1416372 (= lt!624907 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416372 (= lt!624905 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46665 a!2901) j!112) mask!2840) (select (arr!46665 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416373 () Bool)

(declare-fun res!952520 () Bool)

(assert (=> b!1416373 (=> (not res!952520) (not e!801649))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416373 (= res!952520 (validKeyInArray!0 (select (arr!46665 a!2901) i!1037)))))

(declare-fun b!1416374 () Bool)

(declare-fun res!952524 () Bool)

(assert (=> b!1416374 (=> (not res!952524) (not e!801649))))

(assert (=> b!1416374 (= res!952524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416375 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96676 (_ BitVec 32)) SeekEntryResult!10998)

(assert (=> b!1416375 (= e!801650 (= (seekEntryOrOpen!0 (select (arr!46665 a!2901) j!112) a!2901 mask!2840) (Found!10998 j!112)))))

(declare-fun b!1416376 () Bool)

(declare-fun res!952521 () Bool)

(assert (=> b!1416376 (=> (not res!952521) (not e!801649))))

(assert (=> b!1416376 (= res!952521 (validKeyInArray!0 (select (arr!46665 a!2901) j!112)))))

(assert (= (and start!122072 res!952522) b!1416370))

(assert (= (and b!1416370 res!952523) b!1416373))

(assert (= (and b!1416373 res!952520) b!1416376))

(assert (= (and b!1416376 res!952521) b!1416374))

(assert (= (and b!1416374 res!952524) b!1416369))

(assert (= (and b!1416369 res!952527) b!1416372))

(assert (= (and b!1416372 res!952526) b!1416375))

(assert (= (and b!1416372 (not res!952525)) b!1416371))

(declare-fun m!1307161 () Bool)

(assert (=> b!1416371 m!1307161))

(declare-fun m!1307163 () Bool)

(assert (=> b!1416371 m!1307163))

(assert (=> b!1416371 m!1307163))

(declare-fun m!1307165 () Bool)

(assert (=> b!1416371 m!1307165))

(assert (=> b!1416371 m!1307165))

(assert (=> b!1416371 m!1307163))

(declare-fun m!1307167 () Bool)

(assert (=> b!1416371 m!1307167))

(declare-fun m!1307169 () Bool)

(assert (=> b!1416369 m!1307169))

(declare-fun m!1307171 () Bool)

(assert (=> b!1416374 m!1307171))

(declare-fun m!1307173 () Bool)

(assert (=> b!1416375 m!1307173))

(assert (=> b!1416375 m!1307173))

(declare-fun m!1307175 () Bool)

(assert (=> b!1416375 m!1307175))

(assert (=> b!1416372 m!1307173))

(declare-fun m!1307177 () Bool)

(assert (=> b!1416372 m!1307177))

(assert (=> b!1416372 m!1307173))

(declare-fun m!1307179 () Bool)

(assert (=> b!1416372 m!1307179))

(assert (=> b!1416372 m!1307177))

(assert (=> b!1416372 m!1307173))

(declare-fun m!1307181 () Bool)

(assert (=> b!1416372 m!1307181))

(declare-fun m!1307183 () Bool)

(assert (=> b!1416372 m!1307183))

(assert (=> b!1416376 m!1307173))

(assert (=> b!1416376 m!1307173))

(declare-fun m!1307185 () Bool)

(assert (=> b!1416376 m!1307185))

(declare-fun m!1307187 () Bool)

(assert (=> b!1416373 m!1307187))

(assert (=> b!1416373 m!1307187))

(declare-fun m!1307189 () Bool)

(assert (=> b!1416373 m!1307189))

(declare-fun m!1307191 () Bool)

(assert (=> start!122072 m!1307191))

(declare-fun m!1307193 () Bool)

(assert (=> start!122072 m!1307193))

(push 1)

(assert (not b!1416373))

(assert (not b!1416372))

(assert (not b!1416371))

(assert (not start!122072))

(assert (not b!1416369))

(assert (not b!1416375))

(assert (not b!1416374))

(assert (not b!1416376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152477 () Bool)

(assert (=> d!152477 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!122072 d!152477))

(declare-fun d!152481 () Bool)

(assert (=> d!152481 (= (array_inv!35610 a!2901) (bvsge (size!47216 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!122072 d!152481))

(declare-fun e!801712 () SeekEntryResult!10998)

(declare-fun b!1416473 () Bool)

(assert (=> b!1416473 (= e!801712 (Intermediate!10998 false (toIndex!0 (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416474 () Bool)

(declare-fun lt!624940 () SeekEntryResult!10998)

(assert (=> b!1416474 (and (bvsge (index!46385 lt!624940) #b00000000000000000000000000000000) (bvslt (index!46385 lt!624940) (size!47216 (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901)))))))

(declare-fun res!952558 () Bool)

(assert (=> b!1416474 (= res!952558 (= (select (arr!46665 (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901))) (index!46385 lt!624940)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!801714 () Bool)

(assert (=> b!1416474 (=> res!952558 e!801714)))

(declare-fun d!152483 () Bool)

(declare-fun e!801713 () Bool)

(assert (=> d!152483 e!801713))

(declare-fun c!131439 () Bool)

(assert (=> d!152483 (= c!131439 (and (is-Intermediate!10998 lt!624940) (undefined!11810 lt!624940)))))

(declare-fun e!801715 () SeekEntryResult!10998)

(assert (=> d!152483 (= lt!624940 e!801715)))

(declare-fun c!131441 () Bool)

(assert (=> d!152483 (= c!131441 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!624939 () (_ BitVec 64))

(assert (=> d!152483 (= lt!624939 (select (arr!46665 (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901))) (toIndex!0 (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!152483 (validMask!0 mask!2840)))

(assert (=> d!152483 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901)) mask!2840) lt!624940)))

(declare-fun b!1416475 () Bool)

(declare-fun e!801716 () Bool)

(assert (=> b!1416475 (= e!801713 e!801716)))

(declare-fun res!952560 () Bool)

(assert (=> b!1416475 (= res!952560 (and (is-Intermediate!10998 lt!624940) (not (undefined!11810 lt!624940)) (bvslt (x!127984 lt!624940) #b01111111111111111111111111111110) (bvsge (x!127984 lt!624940) #b00000000000000000000000000000000) (bvsge (x!127984 lt!624940) #b00000000000000000000000000000000)))))

(assert (=> b!1416475 (=> (not res!952560) (not e!801716))))

(declare-fun b!1416476 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416476 (= e!801712 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901)) mask!2840))))

(declare-fun b!1416477 () Bool)

(assert (=> b!1416477 (= e!801715 (Intermediate!10998 true (toIndex!0 (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416478 () Bool)

(assert (=> b!1416478 (= e!801713 (bvsge (x!127984 lt!624940) #b01111111111111111111111111111110))))

(declare-fun b!1416479 () Bool)

(assert (=> b!1416479 (= e!801715 e!801712)))

(declare-fun c!131440 () Bool)

(assert (=> b!1416479 (= c!131440 (or (= lt!624939 (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!624939 lt!624939) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1416480 () Bool)

(assert (=> b!1416480 (and (bvsge (index!46385 lt!624940) #b00000000000000000000000000000000) (bvslt (index!46385 lt!624940) (size!47216 (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901)))))))

(declare-fun res!952559 () Bool)

(assert (=> b!1416480 (= res!952559 (= (select (arr!46665 (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901))) (index!46385 lt!624940)) (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1416480 (=> res!952559 e!801714)))

(assert (=> b!1416480 (= e!801716 e!801714)))

(declare-fun b!1416481 () Bool)

(assert (=> b!1416481 (and (bvsge (index!46385 lt!624940) #b00000000000000000000000000000000) (bvslt (index!46385 lt!624940) (size!47216 (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901)))))))

(assert (=> b!1416481 (= e!801714 (= (select (arr!46665 (array!96677 (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47216 a!2901))) (index!46385 lt!624940)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!152483 c!131441) b!1416477))

(assert (= (and d!152483 (not c!131441)) b!1416479))

(assert (= (and b!1416479 c!131440) b!1416473))

(assert (= (and b!1416479 (not c!131440)) b!1416476))

(assert (= (and d!152483 c!131439) b!1416478))

(assert (= (and d!152483 (not c!131439)) b!1416475))

(assert (= (and b!1416475 res!952560) b!1416480))

(assert (= (and b!1416480 (not res!952559)) b!1416474))

(assert (= (and b!1416474 (not res!952558)) b!1416481))

(assert (=> b!1416476 m!1307165))

(declare-fun m!1307239 () Bool)

(assert (=> b!1416476 m!1307239))

(assert (=> b!1416476 m!1307239))

(assert (=> b!1416476 m!1307163))

(declare-fun m!1307241 () Bool)

(assert (=> b!1416476 m!1307241))

(declare-fun m!1307243 () Bool)

(assert (=> b!1416474 m!1307243))

(assert (=> d!152483 m!1307165))

(declare-fun m!1307245 () Bool)

(assert (=> d!152483 m!1307245))

(assert (=> d!152483 m!1307191))

(assert (=> b!1416480 m!1307243))

(assert (=> b!1416481 m!1307243))

(assert (=> b!1416371 d!152483))

(declare-fun d!152501 () Bool)

(declare-fun lt!624958 () (_ BitVec 32))

(declare-fun lt!624957 () (_ BitVec 32))

(assert (=> d!152501 (= lt!624958 (bvmul (bvxor lt!624957 (bvlshr lt!624957 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152501 (= lt!624957 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152501 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!952565 (let ((h!34648 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127986 (bvmul (bvxor h!34648 (bvlshr h!34648 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127986 (bvlshr x!127986 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!952565 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!952565 #b00000000000000000000000000000000))))))

(assert (=> d!152501 (= (toIndex!0 (select (store (arr!46665 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!624958 (bvlshr lt!624958 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1416371 d!152501))

(declare-fun d!152509 () Bool)

(assert (=> d!152509 (= (validKeyInArray!0 (select (arr!46665 a!2901) j!112)) (and (not (= (select (arr!46665 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46665 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1416376 d!152509))

(declare-fun b!1416506 () Bool)

(declare-fun e!801735 () Bool)

(declare-fun e!801736 () Bool)

(assert (=> b!1416506 (= e!801735 e!801736)))

(declare-fun c!131448 () Bool)

(assert (=> b!1416506 (= c!131448 (validKeyInArray!0 (select (arr!46665 a!2901) j!112)))))

(declare-fun d!152511 () Bool)

(declare-fun res!952574 () Bool)

(assert (=> d!152511 (=> res!952574 e!801735)))

(assert (=> d!152511 (= res!952574 (bvsge j!112 (size!47216 a!2901)))))

(assert (=> d!152511 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!801735)))

(declare-fun bm!67192 () Bool)

(declare-fun call!67195 () Bool)

(assert (=> bm!67192 (= call!67195 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1416507 () Bool)

(assert (=> b!1416507 (= e!801736 call!67195)))

(declare-fun b!1416508 () Bool)

(declare-fun e!801737 () Bool)

(assert (=> b!1416508 (= e!801736 e!801737)))

(declare-fun lt!624968 () (_ BitVec 64))

(assert (=> b!1416508 (= lt!624968 (select (arr!46665 a!2901) j!112))))

(declare-fun lt!624970 () Unit!47920)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96676 (_ BitVec 64) (_ BitVec 32)) Unit!47920)

(assert (=> b!1416508 (= lt!624970 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!624968 j!112))))

(declare-fun arrayContainsKey!0 (array!96676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1416508 (arrayContainsKey!0 a!2901 lt!624968 #b00000000000000000000000000000000)))

(declare-fun lt!624969 () Unit!47920)

(assert (=> b!1416508 (= lt!624969 lt!624970)))

(declare-fun res!952575 () Bool)

(assert (=> b!1416508 (= res!952575 (= (seekEntryOrOpen!0 (select (arr!46665 a!2901) j!112) a!2901 mask!2840) (Found!10998 j!112)))))

(assert (=> b!1416508 (=> (not res!952575) (not e!801737))))

(declare-fun b!1416509 () Bool)

(assert (=> b!1416509 (= e!801737 call!67195)))

(assert (= (and d!152511 (not res!952574)) b!1416506))

(assert (= (and b!1416506 c!131448) b!1416508))

(assert (= (and b!1416506 (not c!131448)) b!1416507))

(assert (= (and b!1416508 res!952575) b!1416509))

(assert (= (or b!1416509 b!1416507) bm!67192))

(assert (=> b!1416506 m!1307173))

(assert (=> b!1416506 m!1307173))

(assert (=> b!1416506 m!1307185))

(declare-fun m!1307263 () Bool)

(assert (=> bm!67192 m!1307263))

(assert (=> b!1416508 m!1307173))

(declare-fun m!1307265 () Bool)

(assert (=> b!1416508 m!1307265))

(declare-fun m!1307267 () Bool)

(assert (=> b!1416508 m!1307267))

(assert (=> b!1416508 m!1307173))

(assert (=> b!1416508 m!1307175))

(assert (=> b!1416372 d!152511))

(declare-fun d!152515 () Bool)

(assert (=> d!152515 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624977 () Unit!47920)

(declare-fun choose!38 (array!96676 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47920)

(assert (=> d!152515 (= lt!624977 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152515 (validMask!0 mask!2840)))

(assert (=> d!152515 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!624977)))

(declare-fun bs!41289 () Bool)

(assert (= bs!41289 d!152515))

(assert (=> bs!41289 m!1307183))

(declare-fun m!1307269 () Bool)

(assert (=> bs!41289 m!1307269))

(assert (=> bs!41289 m!1307191))

(assert (=> b!1416372 d!152515))

(declare-fun b!1416528 () Bool)

(declare-fun e!801748 () SeekEntryResult!10998)

(assert (=> b!1416528 (= e!801748 (Intermediate!10998 false (toIndex!0 (select (arr!46665 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416529 () Bool)

(declare-fun lt!624979 () SeekEntryResult!10998)

(assert (=> b!1416529 (and (bvsge (index!46385 lt!624979) #b00000000000000000000000000000000) (bvslt (index!46385 lt!624979) (size!47216 a!2901)))))

(declare-fun res!952582 () Bool)

(assert (=> b!1416529 (= res!952582 (= (select (arr!46665 a!2901) (index!46385 lt!624979)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!801750 () Bool)

(assert (=> b!1416529 (=> res!952582 e!801750)))

(declare-fun d!152517 () Bool)

(declare-fun e!801749 () Bool)

(assert (=> d!152517 e!801749))

(declare-fun c!131455 () Bool)

(assert (=> d!152517 (= c!131455 (and (is-Intermediate!10998 lt!624979) (undefined!11810 lt!624979)))))

(declare-fun e!801751 () SeekEntryResult!10998)

(assert (=> d!152517 (= lt!624979 e!801751)))

(declare-fun c!131457 () Bool)

(assert (=> d!152517 (= c!131457 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!624978 () (_ BitVec 64))

(assert (=> d!152517 (= lt!624978 (select (arr!46665 a!2901) (toIndex!0 (select (arr!46665 a!2901) j!112) mask!2840)))))

(assert (=> d!152517 (validMask!0 mask!2840)))

(assert (=> d!152517 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46665 a!2901) j!112) mask!2840) (select (arr!46665 a!2901) j!112) a!2901 mask!2840) lt!624979)))

(declare-fun b!1416530 () Bool)

(declare-fun e!801752 () Bool)

(assert (=> b!1416530 (= e!801749 e!801752)))

(declare-fun res!952584 () Bool)

(assert (=> b!1416530 (= res!952584 (and (is-Intermediate!10998 lt!624979) (not (undefined!11810 lt!624979)) (bvslt (x!127984 lt!624979) #b01111111111111111111111111111110) (bvsge (x!127984 lt!624979) #b00000000000000000000000000000000) (bvsge (x!127984 lt!624979) #b00000000000000000000000000000000)))))

(assert (=> b!1416530 (=> (not res!952584) (not e!801752))))

(declare-fun b!1416531 () Bool)

(assert (=> b!1416531 (= e!801748 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46665 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46665 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416532 () Bool)

(assert (=> b!1416532 (= e!801751 (Intermediate!10998 true (toIndex!0 (select (arr!46665 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416533 () Bool)

(assert (=> b!1416533 (= e!801749 (bvsge (x!127984 lt!624979) #b01111111111111111111111111111110))))

(declare-fun b!1416534 () Bool)

(assert (=> b!1416534 (= e!801751 e!801748)))

(declare-fun c!131456 () Bool)

(assert (=> b!1416534 (= c!131456 (or (= lt!624978 (select (arr!46665 a!2901) j!112)) (= (bvadd lt!624978 lt!624978) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1416535 () Bool)

(assert (=> b!1416535 (and (bvsge (index!46385 lt!624979) #b00000000000000000000000000000000) (bvslt (index!46385 lt!624979) (size!47216 a!2901)))))

(declare-fun res!952583 () Bool)

(assert (=> b!1416535 (= res!952583 (= (select (arr!46665 a!2901) (index!46385 lt!624979)) (select (arr!46665 a!2901) j!112)))))

(assert (=> b!1416535 (=> res!952583 e!801750)))

(assert (=> b!1416535 (= e!801752 e!801750)))

(declare-fun b!1416536 () Bool)

(assert (=> b!1416536 (and (bvsge (index!46385 lt!624979) #b00000000000000000000000000000000) (bvslt (index!46385 lt!624979) (size!47216 a!2901)))))

(assert (=> b!1416536 (= e!801750 (= (select (arr!46665 a!2901) (index!46385 lt!624979)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!152517 c!131457) b!1416532))

(assert (= (and d!152517 (not c!131457)) b!1416534))

(assert (= (and b!1416534 c!131456) b!1416528))

(assert (= (and b!1416534 (not c!131456)) b!1416531))

(assert (= (and d!152517 c!131455) b!1416533))

(assert (= (and d!152517 (not c!131455)) b!1416530))

(assert (= (and b!1416530 res!952584) b!1416535))

(assert (= (and b!1416535 (not res!952583)) b!1416529))

(assert (= (and b!1416529 (not res!952582)) b!1416536))

(assert (=> b!1416531 m!1307177))

(declare-fun m!1307271 () Bool)

(assert (=> b!1416531 m!1307271))

(assert (=> b!1416531 m!1307271))

(assert (=> b!1416531 m!1307173))

(declare-fun m!1307273 () Bool)

(assert (=> b!1416531 m!1307273))

(declare-fun m!1307275 () Bool)

(assert (=> b!1416529 m!1307275))

(assert (=> d!152517 m!1307177))

(declare-fun m!1307277 () Bool)

(assert (=> d!152517 m!1307277))

(assert (=> d!152517 m!1307191))

(assert (=> b!1416535 m!1307275))

(assert (=> b!1416536 m!1307275))

(assert (=> b!1416372 d!152517))

(declare-fun d!152519 () Bool)

(declare-fun lt!624983 () (_ BitVec 32))

(declare-fun lt!624982 () (_ BitVec 32))

(assert (=> d!152519 (= lt!624983 (bvmul (bvxor lt!624982 (bvlshr lt!624982 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152519 (= lt!624982 ((_ extract 31 0) (bvand (bvxor (select (arr!46665 a!2901) j!112) (bvlshr (select (arr!46665 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122430 () Bool)

(assert start!122430)

(declare-fun b!1418431 () Bool)

(declare-fun res!954180 () Bool)

(declare-fun e!802700 () Bool)

(assert (=> b!1418431 (=> (not res!954180) (not e!802700))))

(declare-datatypes ((array!96824 0))(
  ( (array!96825 (arr!46730 (Array (_ BitVec 32) (_ BitVec 64))) (size!47281 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96824)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418431 (= res!954180 (validKeyInArray!0 (select (arr!46730 a!2831) i!982)))))

(declare-fun b!1418432 () Bool)

(declare-fun res!954183 () Bool)

(assert (=> b!1418432 (=> (not res!954183) (not e!802700))))

(declare-datatypes ((List!33420 0))(
  ( (Nil!33417) (Cons!33416 (h!34709 (_ BitVec 64)) (t!48121 List!33420)) )
))
(declare-fun arrayNoDuplicates!0 (array!96824 (_ BitVec 32) List!33420) Bool)

(assert (=> b!1418432 (= res!954183 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33417))))

(declare-fun res!954185 () Bool)

(assert (=> start!122430 (=> (not res!954185) (not e!802700))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122430 (= res!954185 (validMask!0 mask!2608))))

(assert (=> start!122430 e!802700))

(assert (=> start!122430 true))

(declare-fun array_inv!35675 (array!96824) Bool)

(assert (=> start!122430 (array_inv!35675 a!2831)))

(declare-fun b!1418433 () Bool)

(declare-fun res!954181 () Bool)

(assert (=> b!1418433 (=> (not res!954181) (not e!802700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96824 (_ BitVec 32)) Bool)

(assert (=> b!1418433 (= res!954181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418434 () Bool)

(declare-fun res!954186 () Bool)

(assert (=> b!1418434 (=> (not res!954186) (not e!802700))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418434 (= res!954186 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47281 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47281 a!2831))))))

(declare-fun b!1418435 () Bool)

(declare-fun res!954184 () Bool)

(assert (=> b!1418435 (=> (not res!954184) (not e!802700))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1418435 (= res!954184 (validKeyInArray!0 (select (arr!46730 a!2831) j!81)))))

(declare-fun b!1418436 () Bool)

(declare-fun lt!625531 () (_ BitVec 32))

(assert (=> b!1418436 (= e!802700 (and (bvsge mask!2608 #b00000000000000000000000000000000) (or (bvslt lt!625531 #b00000000000000000000000000000000) (bvsge lt!625531 (bvadd #b00000000000000000000000000000001 mask!2608)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418436 (= lt!625531 (toIndex!0 (select (arr!46730 a!2831) j!81) mask!2608))))

(declare-fun b!1418437 () Bool)

(declare-fun res!954182 () Bool)

(assert (=> b!1418437 (=> (not res!954182) (not e!802700))))

(assert (=> b!1418437 (= res!954182 (and (= (size!47281 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47281 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47281 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122430 res!954185) b!1418437))

(assert (= (and b!1418437 res!954182) b!1418431))

(assert (= (and b!1418431 res!954180) b!1418435))

(assert (= (and b!1418435 res!954184) b!1418433))

(assert (= (and b!1418433 res!954181) b!1418432))

(assert (= (and b!1418432 res!954183) b!1418434))

(assert (= (and b!1418434 res!954186) b!1418436))

(declare-fun m!1309163 () Bool)

(assert (=> start!122430 m!1309163))

(declare-fun m!1309165 () Bool)

(assert (=> start!122430 m!1309165))

(declare-fun m!1309167 () Bool)

(assert (=> b!1418435 m!1309167))

(assert (=> b!1418435 m!1309167))

(declare-fun m!1309169 () Bool)

(assert (=> b!1418435 m!1309169))

(declare-fun m!1309171 () Bool)

(assert (=> b!1418432 m!1309171))

(assert (=> b!1418436 m!1309167))

(assert (=> b!1418436 m!1309167))

(declare-fun m!1309173 () Bool)

(assert (=> b!1418436 m!1309173))

(declare-fun m!1309175 () Bool)

(assert (=> b!1418433 m!1309175))

(declare-fun m!1309177 () Bool)

(assert (=> b!1418431 m!1309177))

(assert (=> b!1418431 m!1309177))

(declare-fun m!1309179 () Bool)

(assert (=> b!1418431 m!1309179))

(check-sat (not b!1418436) (not b!1418435) (not b!1418432) (not start!122430) (not b!1418433) (not b!1418431))
(check-sat)
(get-model)

(declare-fun bm!67266 () Bool)

(declare-fun call!67269 () Bool)

(assert (=> bm!67266 (= call!67269 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!152809 () Bool)

(declare-fun res!954212 () Bool)

(declare-fun e!802714 () Bool)

(assert (=> d!152809 (=> res!954212 e!802714)))

(assert (=> d!152809 (= res!954212 (bvsge #b00000000000000000000000000000000 (size!47281 a!2831)))))

(assert (=> d!152809 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802714)))

(declare-fun b!1418467 () Bool)

(declare-fun e!802715 () Bool)

(assert (=> b!1418467 (= e!802715 call!67269)))

(declare-fun b!1418468 () Bool)

(declare-fun e!802713 () Bool)

(assert (=> b!1418468 (= e!802713 call!67269)))

(declare-fun b!1418469 () Bool)

(assert (=> b!1418469 (= e!802713 e!802715)))

(declare-fun lt!625542 () (_ BitVec 64))

(assert (=> b!1418469 (= lt!625542 (select (arr!46730 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48008 0))(
  ( (Unit!48009) )
))
(declare-fun lt!625543 () Unit!48008)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96824 (_ BitVec 64) (_ BitVec 32)) Unit!48008)

(assert (=> b!1418469 (= lt!625543 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625542 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1418469 (arrayContainsKey!0 a!2831 lt!625542 #b00000000000000000000000000000000)))

(declare-fun lt!625541 () Unit!48008)

(assert (=> b!1418469 (= lt!625541 lt!625543)))

(declare-fun res!954213 () Bool)

(declare-datatypes ((SeekEntryResult!11042 0))(
  ( (MissingZero!11042 (index!46559 (_ BitVec 32))) (Found!11042 (index!46560 (_ BitVec 32))) (Intermediate!11042 (undefined!11854 Bool) (index!46561 (_ BitVec 32)) (x!128219 (_ BitVec 32))) (Undefined!11042) (MissingVacant!11042 (index!46562 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96824 (_ BitVec 32)) SeekEntryResult!11042)

(assert (=> b!1418469 (= res!954213 (= (seekEntryOrOpen!0 (select (arr!46730 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11042 #b00000000000000000000000000000000)))))

(assert (=> b!1418469 (=> (not res!954213) (not e!802715))))

(declare-fun b!1418470 () Bool)

(assert (=> b!1418470 (= e!802714 e!802713)))

(declare-fun c!131612 () Bool)

(assert (=> b!1418470 (= c!131612 (validKeyInArray!0 (select (arr!46730 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152809 (not res!954212)) b!1418470))

(assert (= (and b!1418470 c!131612) b!1418469))

(assert (= (and b!1418470 (not c!131612)) b!1418468))

(assert (= (and b!1418469 res!954213) b!1418467))

(assert (= (or b!1418467 b!1418468) bm!67266))

(declare-fun m!1309199 () Bool)

(assert (=> bm!67266 m!1309199))

(declare-fun m!1309201 () Bool)

(assert (=> b!1418469 m!1309201))

(declare-fun m!1309203 () Bool)

(assert (=> b!1418469 m!1309203))

(declare-fun m!1309205 () Bool)

(assert (=> b!1418469 m!1309205))

(assert (=> b!1418469 m!1309201))

(declare-fun m!1309207 () Bool)

(assert (=> b!1418469 m!1309207))

(assert (=> b!1418470 m!1309201))

(assert (=> b!1418470 m!1309201))

(declare-fun m!1309209 () Bool)

(assert (=> b!1418470 m!1309209))

(assert (=> b!1418433 d!152809))

(declare-fun b!1418496 () Bool)

(declare-fun e!802739 () Bool)

(declare-fun contains!9849 (List!33420 (_ BitVec 64)) Bool)

(assert (=> b!1418496 (= e!802739 (contains!9849 Nil!33417 (select (arr!46730 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1418497 () Bool)

(declare-fun e!802738 () Bool)

(declare-fun e!802736 () Bool)

(assert (=> b!1418497 (= e!802738 e!802736)))

(declare-fun c!131618 () Bool)

(assert (=> b!1418497 (= c!131618 (validKeyInArray!0 (select (arr!46730 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1418498 () Bool)

(declare-fun call!67275 () Bool)

(assert (=> b!1418498 (= e!802736 call!67275)))

(declare-fun d!152813 () Bool)

(declare-fun res!954231 () Bool)

(declare-fun e!802737 () Bool)

(assert (=> d!152813 (=> res!954231 e!802737)))

(assert (=> d!152813 (= res!954231 (bvsge #b00000000000000000000000000000000 (size!47281 a!2831)))))

(assert (=> d!152813 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33417) e!802737)))

(declare-fun b!1418499 () Bool)

(assert (=> b!1418499 (= e!802737 e!802738)))

(declare-fun res!954229 () Bool)

(assert (=> b!1418499 (=> (not res!954229) (not e!802738))))

(assert (=> b!1418499 (= res!954229 (not e!802739))))

(declare-fun res!954230 () Bool)

(assert (=> b!1418499 (=> (not res!954230) (not e!802739))))

(assert (=> b!1418499 (= res!954230 (validKeyInArray!0 (select (arr!46730 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67272 () Bool)

(assert (=> bm!67272 (= call!67275 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131618 (Cons!33416 (select (arr!46730 a!2831) #b00000000000000000000000000000000) Nil!33417) Nil!33417)))))

(declare-fun b!1418500 () Bool)

(assert (=> b!1418500 (= e!802736 call!67275)))

(assert (= (and d!152813 (not res!954231)) b!1418499))

(assert (= (and b!1418499 res!954230) b!1418496))

(assert (= (and b!1418499 res!954229) b!1418497))

(assert (= (and b!1418497 c!131618) b!1418500))

(assert (= (and b!1418497 (not c!131618)) b!1418498))

(assert (= (or b!1418500 b!1418498) bm!67272))

(assert (=> b!1418496 m!1309201))

(assert (=> b!1418496 m!1309201))

(declare-fun m!1309219 () Bool)

(assert (=> b!1418496 m!1309219))

(assert (=> b!1418497 m!1309201))

(assert (=> b!1418497 m!1309201))

(assert (=> b!1418497 m!1309209))

(assert (=> b!1418499 m!1309201))

(assert (=> b!1418499 m!1309201))

(assert (=> b!1418499 m!1309209))

(assert (=> bm!67272 m!1309201))

(declare-fun m!1309221 () Bool)

(assert (=> bm!67272 m!1309221))

(assert (=> b!1418432 d!152813))

(declare-fun d!152829 () Bool)

(assert (=> d!152829 (= (validKeyInArray!0 (select (arr!46730 a!2831) i!982)) (and (not (= (select (arr!46730 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46730 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418431 d!152829))

(declare-fun d!152831 () Bool)

(declare-fun lt!625561 () (_ BitVec 32))

(declare-fun lt!625560 () (_ BitVec 32))

(assert (=> d!152831 (= lt!625561 (bvmul (bvxor lt!625560 (bvlshr lt!625560 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152831 (= lt!625560 ((_ extract 31 0) (bvand (bvxor (select (arr!46730 a!2831) j!81) (bvlshr (select (arr!46730 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152831 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954233 (let ((h!34712 ((_ extract 31 0) (bvand (bvxor (select (arr!46730 a!2831) j!81) (bvlshr (select (arr!46730 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128217 (bvmul (bvxor h!34712 (bvlshr h!34712 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128217 (bvlshr x!128217 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954233 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954233 #b00000000000000000000000000000000))))))

(assert (=> d!152831 (= (toIndex!0 (select (arr!46730 a!2831) j!81) mask!2608) (bvand (bvxor lt!625561 (bvlshr lt!625561 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1418436 d!152831))

(declare-fun d!152835 () Bool)

(assert (=> d!152835 (= (validKeyInArray!0 (select (arr!46730 a!2831) j!81)) (and (not (= (select (arr!46730 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46730 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1418435 d!152835))

(declare-fun d!152837 () Bool)

(assert (=> d!152837 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122430 d!152837))

(declare-fun d!152843 () Bool)

(assert (=> d!152843 (= (array_inv!35675 a!2831) (bvsge (size!47281 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122430 d!152843))

(check-sat (not b!1418497) (not b!1418496) (not b!1418470) (not bm!67266) (not b!1418469) (not b!1418499) (not bm!67272))
(check-sat)

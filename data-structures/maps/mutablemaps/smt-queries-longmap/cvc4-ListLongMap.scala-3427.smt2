; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47630 () Bool)

(assert start!47630)

(declare-fun b!523675 () Bool)

(declare-datatypes ((Unit!16342 0))(
  ( (Unit!16343) )
))
(declare-fun e!305421 () Unit!16342)

(declare-fun Unit!16344 () Unit!16342)

(assert (=> b!523675 (= e!305421 Unit!16344)))

(declare-fun b!523676 () Bool)

(declare-fun res!320973 () Bool)

(declare-fun e!305419 () Bool)

(assert (=> b!523676 (=> (not res!320973) (not e!305419))))

(declare-datatypes ((array!33290 0))(
  ( (array!33291 (arr!15995 (Array (_ BitVec 32) (_ BitVec 64))) (size!16359 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33290)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!523676 (= res!320973 (validKeyInArray!0 (select (arr!15995 a!3235) j!176)))))

(declare-fun b!523677 () Bool)

(declare-fun res!320967 () Bool)

(assert (=> b!523677 (=> (not res!320967) (not e!305419))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!523677 (= res!320967 (and (= (size!16359 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16359 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16359 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!523678 () Bool)

(declare-fun res!320969 () Bool)

(assert (=> b!523678 (=> (not res!320969) (not e!305419))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!523678 (= res!320969 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!523679 () Bool)

(declare-fun Unit!16345 () Unit!16342)

(assert (=> b!523679 (= e!305421 Unit!16345)))

(declare-fun lt!240353 () Unit!16342)

(declare-fun lt!240358 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4469 0))(
  ( (MissingZero!4469 (index!20085 (_ BitVec 32))) (Found!4469 (index!20086 (_ BitVec 32))) (Intermediate!4469 (undefined!5281 Bool) (index!20087 (_ BitVec 32)) (x!49092 (_ BitVec 32))) (Undefined!4469) (MissingVacant!4469 (index!20088 (_ BitVec 32))) )
))
(declare-fun lt!240352 () SeekEntryResult!4469)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33290 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16342)

(assert (=> b!523679 (= lt!240353 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240358 #b00000000000000000000000000000000 (index!20087 lt!240352) (x!49092 lt!240352) mask!3524))))

(declare-fun res!320974 () Bool)

(declare-fun lt!240354 () (_ BitVec 64))

(declare-fun lt!240355 () array!33290)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33290 (_ BitVec 32)) SeekEntryResult!4469)

(assert (=> b!523679 (= res!320974 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240358 lt!240354 lt!240355 mask!3524) (Intermediate!4469 false (index!20087 lt!240352) (x!49092 lt!240352))))))

(declare-fun e!305418 () Bool)

(assert (=> b!523679 (=> (not res!320974) (not e!305418))))

(assert (=> b!523679 e!305418))

(declare-fun e!305416 () Bool)

(declare-fun b!523680 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33290 (_ BitVec 32)) SeekEntryResult!4469)

(assert (=> b!523680 (= e!305416 (= (seekEntryOrOpen!0 (select (arr!15995 a!3235) j!176) a!3235 mask!3524) (Found!4469 j!176)))))

(declare-fun b!523681 () Bool)

(assert (=> b!523681 (= e!305418 false)))

(declare-fun b!523682 () Bool)

(declare-fun res!320970 () Bool)

(declare-fun e!305417 () Bool)

(assert (=> b!523682 (=> (not res!320970) (not e!305417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33290 (_ BitVec 32)) Bool)

(assert (=> b!523682 (= res!320970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!523683 () Bool)

(declare-fun e!305420 () Bool)

(assert (=> b!523683 (= e!305420 (or (bvsgt #b00000000000000000000000000000000 (x!49092 lt!240352)) (bvsgt (x!49092 lt!240352) #b01111111111111111111111111111110) (bvslt lt!240358 #b00000000000000000000000000000000) (bvsge lt!240358 (size!16359 a!3235)) (and (bvsge (index!20087 lt!240352) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240352) (size!16359 a!3235)))))))

(assert (=> b!523683 (and (or (= (select (arr!15995 a!3235) (index!20087 lt!240352)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15995 a!3235) (index!20087 lt!240352)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15995 a!3235) (index!20087 lt!240352)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15995 a!3235) (index!20087 lt!240352)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240356 () Unit!16342)

(assert (=> b!523683 (= lt!240356 e!305421)))

(declare-fun c!61658 () Bool)

(assert (=> b!523683 (= c!61658 (= (select (arr!15995 a!3235) (index!20087 lt!240352)) (select (arr!15995 a!3235) j!176)))))

(assert (=> b!523683 (and (bvslt (x!49092 lt!240352) #b01111111111111111111111111111110) (or (= (select (arr!15995 a!3235) (index!20087 lt!240352)) (select (arr!15995 a!3235) j!176)) (= (select (arr!15995 a!3235) (index!20087 lt!240352)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15995 a!3235) (index!20087 lt!240352)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523684 () Bool)

(assert (=> b!523684 (= e!305417 (not e!305420))))

(declare-fun res!320971 () Bool)

(assert (=> b!523684 (=> res!320971 e!305420)))

(declare-fun lt!240351 () (_ BitVec 32))

(assert (=> b!523684 (= res!320971 (= lt!240352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240351 lt!240354 lt!240355 mask!3524)))))

(assert (=> b!523684 (= lt!240352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240358 (select (arr!15995 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523684 (= lt!240351 (toIndex!0 lt!240354 mask!3524))))

(assert (=> b!523684 (= lt!240354 (select (store (arr!15995 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!523684 (= lt!240358 (toIndex!0 (select (arr!15995 a!3235) j!176) mask!3524))))

(assert (=> b!523684 (= lt!240355 (array!33291 (store (arr!15995 a!3235) i!1204 k!2280) (size!16359 a!3235)))))

(assert (=> b!523684 e!305416))

(declare-fun res!320975 () Bool)

(assert (=> b!523684 (=> (not res!320975) (not e!305416))))

(assert (=> b!523684 (= res!320975 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240359 () Unit!16342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33290 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16342)

(assert (=> b!523684 (= lt!240359 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!523685 () Bool)

(declare-fun res!320978 () Bool)

(assert (=> b!523685 (=> (not res!320978) (not e!305419))))

(assert (=> b!523685 (= res!320978 (validKeyInArray!0 k!2280))))

(declare-fun res!320968 () Bool)

(assert (=> start!47630 (=> (not res!320968) (not e!305419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47630 (= res!320968 (validMask!0 mask!3524))))

(assert (=> start!47630 e!305419))

(assert (=> start!47630 true))

(declare-fun array_inv!11769 (array!33290) Bool)

(assert (=> start!47630 (array_inv!11769 a!3235)))

(declare-fun b!523686 () Bool)

(declare-fun res!320977 () Bool)

(assert (=> b!523686 (=> (not res!320977) (not e!305417))))

(declare-datatypes ((List!10206 0))(
  ( (Nil!10203) (Cons!10202 (h!11130 (_ BitVec 64)) (t!16442 List!10206)) )
))
(declare-fun arrayNoDuplicates!0 (array!33290 (_ BitVec 32) List!10206) Bool)

(assert (=> b!523686 (= res!320977 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10203))))

(declare-fun b!523687 () Bool)

(assert (=> b!523687 (= e!305419 e!305417)))

(declare-fun res!320972 () Bool)

(assert (=> b!523687 (=> (not res!320972) (not e!305417))))

(declare-fun lt!240357 () SeekEntryResult!4469)

(assert (=> b!523687 (= res!320972 (or (= lt!240357 (MissingZero!4469 i!1204)) (= lt!240357 (MissingVacant!4469 i!1204))))))

(assert (=> b!523687 (= lt!240357 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!523688 () Bool)

(declare-fun res!320976 () Bool)

(assert (=> b!523688 (=> res!320976 e!305420)))

(assert (=> b!523688 (= res!320976 (or (undefined!5281 lt!240352) (not (is-Intermediate!4469 lt!240352))))))

(assert (= (and start!47630 res!320968) b!523677))

(assert (= (and b!523677 res!320967) b!523676))

(assert (= (and b!523676 res!320973) b!523685))

(assert (= (and b!523685 res!320978) b!523678))

(assert (= (and b!523678 res!320969) b!523687))

(assert (= (and b!523687 res!320972) b!523682))

(assert (= (and b!523682 res!320970) b!523686))

(assert (= (and b!523686 res!320977) b!523684))

(assert (= (and b!523684 res!320975) b!523680))

(assert (= (and b!523684 (not res!320971)) b!523688))

(assert (= (and b!523688 (not res!320976)) b!523683))

(assert (= (and b!523683 c!61658) b!523679))

(assert (= (and b!523683 (not c!61658)) b!523675))

(assert (= (and b!523679 res!320974) b!523681))

(declare-fun m!504439 () Bool)

(assert (=> b!523678 m!504439))

(declare-fun m!504441 () Bool)

(assert (=> b!523679 m!504441))

(declare-fun m!504443 () Bool)

(assert (=> b!523679 m!504443))

(declare-fun m!504445 () Bool)

(assert (=> start!47630 m!504445))

(declare-fun m!504447 () Bool)

(assert (=> start!47630 m!504447))

(declare-fun m!504449 () Bool)

(assert (=> b!523682 m!504449))

(declare-fun m!504451 () Bool)

(assert (=> b!523680 m!504451))

(assert (=> b!523680 m!504451))

(declare-fun m!504453 () Bool)

(assert (=> b!523680 m!504453))

(declare-fun m!504455 () Bool)

(assert (=> b!523686 m!504455))

(declare-fun m!504457 () Bool)

(assert (=> b!523684 m!504457))

(declare-fun m!504459 () Bool)

(assert (=> b!523684 m!504459))

(declare-fun m!504461 () Bool)

(assert (=> b!523684 m!504461))

(declare-fun m!504463 () Bool)

(assert (=> b!523684 m!504463))

(assert (=> b!523684 m!504451))

(declare-fun m!504465 () Bool)

(assert (=> b!523684 m!504465))

(assert (=> b!523684 m!504451))

(declare-fun m!504467 () Bool)

(assert (=> b!523684 m!504467))

(assert (=> b!523684 m!504451))

(declare-fun m!504469 () Bool)

(assert (=> b!523684 m!504469))

(declare-fun m!504471 () Bool)

(assert (=> b!523684 m!504471))

(declare-fun m!504473 () Bool)

(assert (=> b!523687 m!504473))

(assert (=> b!523676 m!504451))

(assert (=> b!523676 m!504451))

(declare-fun m!504475 () Bool)

(assert (=> b!523676 m!504475))

(declare-fun m!504477 () Bool)

(assert (=> b!523683 m!504477))

(assert (=> b!523683 m!504451))

(declare-fun m!504479 () Bool)

(assert (=> b!523685 m!504479))

(push 1)

(assert (not b!523682))

(assert (not b!523684))

(assert (not b!523687))

(assert (not start!47630))

(assert (not b!523685))

(assert (not b!523676))

(assert (not b!523679))

(assert (not b!523686))

(assert (not b!523680))

(assert (not b!523678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80517 () Bool)

(assert (=> d!80517 (= (validKeyInArray!0 (select (arr!15995 a!3235) j!176)) (and (not (= (select (arr!15995 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15995 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523676 d!80517))

(declare-fun d!80521 () Bool)

(declare-fun res!321003 () Bool)

(declare-fun e!305464 () Bool)

(assert (=> d!80521 (=> res!321003 e!305464)))

(assert (=> d!80521 (= res!321003 (bvsge #b00000000000000000000000000000000 (size!16359 a!3235)))))

(assert (=> d!80521 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!305464)))

(declare-fun b!523745 () Bool)

(declare-fun e!305462 () Bool)

(declare-fun call!31853 () Bool)

(assert (=> b!523745 (= e!305462 call!31853)))

(declare-fun b!523746 () Bool)

(declare-fun e!305463 () Bool)

(assert (=> b!523746 (= e!305463 call!31853)))

(declare-fun b!523747 () Bool)

(assert (=> b!523747 (= e!305462 e!305463)))

(declare-fun lt!240387 () (_ BitVec 64))

(assert (=> b!523747 (= lt!240387 (select (arr!15995 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!240389 () Unit!16342)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33290 (_ BitVec 64) (_ BitVec 32)) Unit!16342)

(assert (=> b!523747 (= lt!240389 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240387 #b00000000000000000000000000000000))))

(assert (=> b!523747 (arrayContainsKey!0 a!3235 lt!240387 #b00000000000000000000000000000000)))

(declare-fun lt!240388 () Unit!16342)

(assert (=> b!523747 (= lt!240388 lt!240389)))

(declare-fun res!321002 () Bool)

(assert (=> b!523747 (= res!321002 (= (seekEntryOrOpen!0 (select (arr!15995 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4469 #b00000000000000000000000000000000)))))

(assert (=> b!523747 (=> (not res!321002) (not e!305463))))

(declare-fun b!523748 () Bool)

(assert (=> b!523748 (= e!305464 e!305462)))

(declare-fun c!61676 () Bool)

(assert (=> b!523748 (= c!61676 (validKeyInArray!0 (select (arr!15995 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31850 () Bool)

(assert (=> bm!31850 (= call!31853 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!80521 (not res!321003)) b!523748))

(assert (= (and b!523748 c!61676) b!523747))

(assert (= (and b!523748 (not c!61676)) b!523745))

(assert (= (and b!523747 res!321002) b!523746))

(assert (= (or b!523746 b!523745) bm!31850))

(declare-fun m!504521 () Bool)

(assert (=> b!523747 m!504521))

(declare-fun m!504523 () Bool)

(assert (=> b!523747 m!504523))

(declare-fun m!504525 () Bool)

(assert (=> b!523747 m!504525))

(assert (=> b!523747 m!504521))

(declare-fun m!504527 () Bool)

(assert (=> b!523747 m!504527))

(assert (=> b!523748 m!504521))

(assert (=> b!523748 m!504521))

(declare-fun m!504529 () Bool)

(assert (=> b!523748 m!504529))

(declare-fun m!504531 () Bool)

(assert (=> bm!31850 m!504531))

(assert (=> b!523682 d!80521))

(declare-fun b!523818 () Bool)

(declare-fun e!305507 () SeekEntryResult!4469)

(declare-fun e!305505 () SeekEntryResult!4469)

(assert (=> b!523818 (= e!305507 e!305505)))

(declare-fun lt!240422 () (_ BitVec 64))

(declare-fun lt!240421 () SeekEntryResult!4469)

(assert (=> b!523818 (= lt!240422 (select (arr!15995 a!3235) (index!20087 lt!240421)))))

(declare-fun c!61703 () Bool)

(assert (=> b!523818 (= c!61703 (= lt!240422 k!2280))))

(declare-fun b!523819 () Bool)

(declare-fun c!61702 () Bool)

(assert (=> b!523819 (= c!61702 (= lt!240422 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305506 () SeekEntryResult!4469)

(assert (=> b!523819 (= e!305505 e!305506)))

(declare-fun b!523820 () Bool)

(assert (=> b!523820 (= e!305505 (Found!4469 (index!20087 lt!240421)))))

(declare-fun b!523821 () Bool)

(assert (=> b!523821 (= e!305507 Undefined!4469)))

(declare-fun d!80527 () Bool)

(declare-fun lt!240423 () SeekEntryResult!4469)

(assert (=> d!80527 (and (or (is-Undefined!4469 lt!240423) (not (is-Found!4469 lt!240423)) (and (bvsge (index!20086 lt!240423) #b00000000000000000000000000000000) (bvslt (index!20086 lt!240423) (size!16359 a!3235)))) (or (is-Undefined!4469 lt!240423) (is-Found!4469 lt!240423) (not (is-MissingZero!4469 lt!240423)) (and (bvsge (index!20085 lt!240423) #b00000000000000000000000000000000) (bvslt (index!20085 lt!240423) (size!16359 a!3235)))) (or (is-Undefined!4469 lt!240423) (is-Found!4469 lt!240423) (is-MissingZero!4469 lt!240423) (not (is-MissingVacant!4469 lt!240423)) (and (bvsge (index!20088 lt!240423) #b00000000000000000000000000000000) (bvslt (index!20088 lt!240423) (size!16359 a!3235)))) (or (is-Undefined!4469 lt!240423) (ite (is-Found!4469 lt!240423) (= (select (arr!15995 a!3235) (index!20086 lt!240423)) k!2280) (ite (is-MissingZero!4469 lt!240423) (= (select (arr!15995 a!3235) (index!20085 lt!240423)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4469 lt!240423) (= (select (arr!15995 a!3235) (index!20088 lt!240423)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80527 (= lt!240423 e!305507)))

(declare-fun c!61701 () Bool)

(assert (=> d!80527 (= c!61701 (and (is-Intermediate!4469 lt!240421) (undefined!5281 lt!240421)))))

(assert (=> d!80527 (= lt!240421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80527 (validMask!0 mask!3524)))

(assert (=> d!80527 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!240423)))

(declare-fun b!523822 () Bool)

(assert (=> b!523822 (= e!305506 (MissingZero!4469 (index!20087 lt!240421)))))

(declare-fun b!523823 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33290 (_ BitVec 32)) SeekEntryResult!4469)

(assert (=> b!523823 (= e!305506 (seekKeyOrZeroReturnVacant!0 (x!49092 lt!240421) (index!20087 lt!240421) (index!20087 lt!240421) k!2280 a!3235 mask!3524))))

(assert (= (and d!80527 c!61701) b!523821))

(assert (= (and d!80527 (not c!61701)) b!523818))

(assert (= (and b!523818 c!61703) b!523820))

(assert (= (and b!523818 (not c!61703)) b!523819))

(assert (= (and b!523819 c!61702) b!523822))

(assert (= (and b!523819 (not c!61702)) b!523823))

(declare-fun m!504547 () Bool)

(assert (=> b!523818 m!504547))

(declare-fun m!504549 () Bool)

(assert (=> d!80527 m!504549))

(declare-fun m!504551 () Bool)

(assert (=> d!80527 m!504551))

(declare-fun m!504553 () Bool)

(assert (=> d!80527 m!504553))

(assert (=> d!80527 m!504445))

(assert (=> d!80527 m!504549))

(declare-fun m!504555 () Bool)

(assert (=> d!80527 m!504555))

(declare-fun m!504557 () Bool)

(assert (=> d!80527 m!504557))

(declare-fun m!504559 () Bool)

(assert (=> b!523823 m!504559))

(assert (=> b!523687 d!80527))

(declare-fun d!80533 () Bool)

(declare-fun res!321035 () Bool)

(declare-fun e!305521 () Bool)

(assert (=> d!80533 (=> res!321035 e!305521)))

(assert (=> d!80533 (= res!321035 (= (select (arr!15995 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80533 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!305521)))

(declare-fun b!523840 () Bool)

(declare-fun e!305522 () Bool)

(assert (=> b!523840 (= e!305521 e!305522)))

(declare-fun res!321036 () Bool)

(assert (=> b!523840 (=> (not res!321036) (not e!305522))))

(assert (=> b!523840 (= res!321036 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16359 a!3235)))))

(declare-fun b!523841 () Bool)

(assert (=> b!523841 (= e!305522 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80533 (not res!321035)) b!523840))

(assert (= (and b!523840 res!321036) b!523841))

(assert (=> d!80533 m!504521))

(declare-fun m!504573 () Bool)

(assert (=> b!523841 m!504573))

(assert (=> b!523678 d!80533))

(declare-fun d!80537 () Bool)

(declare-fun lt!240438 () (_ BitVec 32))

(declare-fun lt!240437 () (_ BitVec 32))

(assert (=> d!80537 (= lt!240438 (bvmul (bvxor lt!240437 (bvlshr lt!240437 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80537 (= lt!240437 ((_ extract 31 0) (bvand (bvxor lt!240354 (bvlshr lt!240354 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80537 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!321040 (let ((h!11132 ((_ extract 31 0) (bvand (bvxor lt!240354 (bvlshr lt!240354 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49097 (bvmul (bvxor h!11132 (bvlshr h!11132 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49097 (bvlshr x!49097 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!321040 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!321040 #b00000000000000000000000000000000))))))

(assert (=> d!80537 (= (toIndex!0 lt!240354 mask!3524) (bvand (bvxor lt!240438 (bvlshr lt!240438 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523684 d!80537))

(declare-fun d!80543 () Bool)

(declare-fun lt!240444 () (_ BitVec 32))

(declare-fun lt!240443 () (_ BitVec 32))

(assert (=> d!80543 (= lt!240444 (bvmul (bvxor lt!240443 (bvlshr lt!240443 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80543 (= lt!240443 ((_ extract 31 0) (bvand (bvxor (select (arr!15995 a!3235) j!176) (bvlshr (select (arr!15995 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80543 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!321040 (let ((h!11132 ((_ extract 31 0) (bvand (bvxor (select (arr!15995 a!3235) j!176) (bvlshr (select (arr!15995 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49097 (bvmul (bvxor h!11132 (bvlshr h!11132 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49097 (bvlshr x!49097 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!321040 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!321040 #b00000000000000000000000000000000))))))

(assert (=> d!80543 (= (toIndex!0 (select (arr!15995 a!3235) j!176) mask!3524) (bvand (bvxor lt!240444 (bvlshr lt!240444 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523684 d!80543))

(declare-fun b!523931 () Bool)

(declare-fun e!305579 () SeekEntryResult!4469)

(declare-fun e!305583 () SeekEntryResult!4469)

(assert (=> b!523931 (= e!305579 e!305583)))

(declare-fun c!61734 () Bool)

(declare-fun lt!240474 () (_ BitVec 64))

(assert (=> b!523931 (= c!61734 (or (= lt!240474 (select (arr!15995 a!3235) j!176)) (= (bvadd lt!240474 lt!240474) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523932 () Bool)

(declare-fun lt!240475 () SeekEntryResult!4469)

(assert (=> b!523932 (and (bvsge (index!20087 lt!240475) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240475) (size!16359 a!3235)))))

(declare-fun res!321078 () Bool)

(assert (=> b!523932 (= res!321078 (= (select (arr!15995 a!3235) (index!20087 lt!240475)) (select (arr!15995 a!3235) j!176)))))

(declare-fun e!305581 () Bool)

(assert (=> b!523932 (=> res!321078 e!305581)))

(declare-fun e!305582 () Bool)

(assert (=> b!523932 (= e!305582 e!305581)))

(declare-fun b!523933 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523933 (= e!305583 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240358 #b00000000000000000000000000000000 mask!3524) (select (arr!15995 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523934 () Bool)

(assert (=> b!523934 (and (bvsge (index!20087 lt!240475) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240475) (size!16359 a!3235)))))

(declare-fun res!321077 () Bool)

(assert (=> b!523934 (= res!321077 (= (select (arr!15995 a!3235) (index!20087 lt!240475)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523934 (=> res!321077 e!305581)))

(declare-fun b!523935 () Bool)

(assert (=> b!523935 (= e!305583 (Intermediate!4469 false lt!240358 #b00000000000000000000000000000000))))

(declare-fun d!80547 () Bool)

(declare-fun e!305580 () Bool)

(assert (=> d!80547 e!305580))

(declare-fun c!61735 () Bool)

(assert (=> d!80547 (= c!61735 (and (is-Intermediate!4469 lt!240475) (undefined!5281 lt!240475)))))

(assert (=> d!80547 (= lt!240475 e!305579)))

(declare-fun c!61733 () Bool)

(assert (=> d!80547 (= c!61733 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80547 (= lt!240474 (select (arr!15995 a!3235) lt!240358))))

(assert (=> d!80547 (validMask!0 mask!3524)))

(assert (=> d!80547 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240358 (select (arr!15995 a!3235) j!176) a!3235 mask!3524) lt!240475)))

(declare-fun b!523936 () Bool)

(assert (=> b!523936 (= e!305579 (Intermediate!4469 true lt!240358 #b00000000000000000000000000000000))))

(declare-fun b!523937 () Bool)

(assert (=> b!523937 (= e!305580 (bvsge (x!49092 lt!240475) #b01111111111111111111111111111110))))

(declare-fun b!523938 () Bool)

(assert (=> b!523938 (= e!305580 e!305582)))

(declare-fun res!321076 () Bool)

(assert (=> b!523938 (= res!321076 (and (is-Intermediate!4469 lt!240475) (not (undefined!5281 lt!240475)) (bvslt (x!49092 lt!240475) #b01111111111111111111111111111110) (bvsge (x!49092 lt!240475) #b00000000000000000000000000000000) (bvsge (x!49092 lt!240475) #b00000000000000000000000000000000)))))

(assert (=> b!523938 (=> (not res!321076) (not e!305582))))

(declare-fun b!523939 () Bool)

(assert (=> b!523939 (and (bvsge (index!20087 lt!240475) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240475) (size!16359 a!3235)))))

(assert (=> b!523939 (= e!305581 (= (select (arr!15995 a!3235) (index!20087 lt!240475)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80547 c!61733) b!523936))

(assert (= (and d!80547 (not c!61733)) b!523931))

(assert (= (and b!523931 c!61734) b!523935))

(assert (= (and b!523931 (not c!61734)) b!523933))

(assert (= (and d!80547 c!61735) b!523937))

(assert (= (and d!80547 (not c!61735)) b!523938))

(assert (= (and b!523938 res!321076) b!523932))

(assert (= (and b!523932 (not res!321078)) b!523934))

(assert (= (and b!523934 (not res!321077)) b!523939))

(declare-fun m!504637 () Bool)

(assert (=> d!80547 m!504637))

(assert (=> d!80547 m!504445))

(declare-fun m!504639 () Bool)

(assert (=> b!523934 m!504639))

(declare-fun m!504641 () Bool)

(assert (=> b!523933 m!504641))

(assert (=> b!523933 m!504641))

(assert (=> b!523933 m!504451))

(declare-fun m!504643 () Bool)

(assert (=> b!523933 m!504643))

(assert (=> b!523939 m!504639))

(assert (=> b!523932 m!504639))

(assert (=> b!523684 d!80547))

(declare-fun d!80573 () Bool)

(declare-fun res!321080 () Bool)

(declare-fun e!305586 () Bool)

(assert (=> d!80573 (=> res!321080 e!305586)))

(assert (=> d!80573 (= res!321080 (bvsge j!176 (size!16359 a!3235)))))

(assert (=> d!80573 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!305586)))

(declare-fun b!523940 () Bool)

(declare-fun e!305584 () Bool)

(declare-fun call!31865 () Bool)

(assert (=> b!523940 (= e!305584 call!31865)))

(declare-fun b!523941 () Bool)

(declare-fun e!305585 () Bool)

(assert (=> b!523941 (= e!305585 call!31865)))

(declare-fun b!523942 () Bool)

(assert (=> b!523942 (= e!305584 e!305585)))

(declare-fun lt!240476 () (_ BitVec 64))

(assert (=> b!523942 (= lt!240476 (select (arr!15995 a!3235) j!176))))

(declare-fun lt!240478 () Unit!16342)

(assert (=> b!523942 (= lt!240478 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240476 j!176))))

(assert (=> b!523942 (arrayContainsKey!0 a!3235 lt!240476 #b00000000000000000000000000000000)))

(declare-fun lt!240477 () Unit!16342)

(assert (=> b!523942 (= lt!240477 lt!240478)))

(declare-fun res!321079 () Bool)

(assert (=> b!523942 (= res!321079 (= (seekEntryOrOpen!0 (select (arr!15995 a!3235) j!176) a!3235 mask!3524) (Found!4469 j!176)))))

(assert (=> b!523942 (=> (not res!321079) (not e!305585))))

(declare-fun b!523943 () Bool)

(assert (=> b!523943 (= e!305586 e!305584)))

(declare-fun c!61736 () Bool)

(assert (=> b!523943 (= c!61736 (validKeyInArray!0 (select (arr!15995 a!3235) j!176)))))

(declare-fun bm!31862 () Bool)

(assert (=> bm!31862 (= call!31865 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!80573 (not res!321080)) b!523943))

(assert (= (and b!523943 c!61736) b!523942))

(assert (= (and b!523943 (not c!61736)) b!523940))

(assert (= (and b!523942 res!321079) b!523941))

(assert (= (or b!523941 b!523940) bm!31862))

(assert (=> b!523942 m!504451))

(declare-fun m!504645 () Bool)

(assert (=> b!523942 m!504645))

(declare-fun m!504647 () Bool)

(assert (=> b!523942 m!504647))

(assert (=> b!523942 m!504451))

(assert (=> b!523942 m!504453))

(assert (=> b!523943 m!504451))

(assert (=> b!523943 m!504451))

(assert (=> b!523943 m!504475))

(declare-fun m!504649 () Bool)

(assert (=> bm!31862 m!504649))

(assert (=> b!523684 d!80573))

(declare-fun b!523944 () Bool)

(declare-fun e!305587 () SeekEntryResult!4469)

(declare-fun e!305591 () SeekEntryResult!4469)

(assert (=> b!523944 (= e!305587 e!305591)))

(declare-fun c!61738 () Bool)

(declare-fun lt!240479 () (_ BitVec 64))

(assert (=> b!523944 (= c!61738 (or (= lt!240479 lt!240354) (= (bvadd lt!240479 lt!240479) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523945 () Bool)

(declare-fun lt!240480 () SeekEntryResult!4469)

(assert (=> b!523945 (and (bvsge (index!20087 lt!240480) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240480) (size!16359 lt!240355)))))

(declare-fun res!321083 () Bool)

(assert (=> b!523945 (= res!321083 (= (select (arr!15995 lt!240355) (index!20087 lt!240480)) lt!240354))))

(declare-fun e!305589 () Bool)

(assert (=> b!523945 (=> res!321083 e!305589)))

(declare-fun e!305590 () Bool)

(assert (=> b!523945 (= e!305590 e!305589)))

(declare-fun b!523946 () Bool)

(assert (=> b!523946 (= e!305591 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240351 #b00000000000000000000000000000000 mask!3524) lt!240354 lt!240355 mask!3524))))

(declare-fun b!523947 () Bool)

(assert (=> b!523947 (and (bvsge (index!20087 lt!240480) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240480) (size!16359 lt!240355)))))

(declare-fun res!321082 () Bool)

(assert (=> b!523947 (= res!321082 (= (select (arr!15995 lt!240355) (index!20087 lt!240480)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523947 (=> res!321082 e!305589)))

(declare-fun b!523948 () Bool)

(assert (=> b!523948 (= e!305591 (Intermediate!4469 false lt!240351 #b00000000000000000000000000000000))))

(declare-fun d!80575 () Bool)

(declare-fun e!305588 () Bool)

(assert (=> d!80575 e!305588))

(declare-fun c!61739 () Bool)

(assert (=> d!80575 (= c!61739 (and (is-Intermediate!4469 lt!240480) (undefined!5281 lt!240480)))))

(assert (=> d!80575 (= lt!240480 e!305587)))

(declare-fun c!61737 () Bool)

(assert (=> d!80575 (= c!61737 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80575 (= lt!240479 (select (arr!15995 lt!240355) lt!240351))))

(assert (=> d!80575 (validMask!0 mask!3524)))

(assert (=> d!80575 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240351 lt!240354 lt!240355 mask!3524) lt!240480)))

(declare-fun b!523949 () Bool)

(assert (=> b!523949 (= e!305587 (Intermediate!4469 true lt!240351 #b00000000000000000000000000000000))))

(declare-fun b!523950 () Bool)

(assert (=> b!523950 (= e!305588 (bvsge (x!49092 lt!240480) #b01111111111111111111111111111110))))

(declare-fun b!523951 () Bool)

(assert (=> b!523951 (= e!305588 e!305590)))

(declare-fun res!321081 () Bool)

(assert (=> b!523951 (= res!321081 (and (is-Intermediate!4469 lt!240480) (not (undefined!5281 lt!240480)) (bvslt (x!49092 lt!240480) #b01111111111111111111111111111110) (bvsge (x!49092 lt!240480) #b00000000000000000000000000000000) (bvsge (x!49092 lt!240480) #b00000000000000000000000000000000)))))

(assert (=> b!523951 (=> (not res!321081) (not e!305590))))

(declare-fun b!523952 () Bool)

(assert (=> b!523952 (and (bvsge (index!20087 lt!240480) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240480) (size!16359 lt!240355)))))

(assert (=> b!523952 (= e!305589 (= (select (arr!15995 lt!240355) (index!20087 lt!240480)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80575 c!61737) b!523949))

(assert (= (and d!80575 (not c!61737)) b!523944))

(assert (= (and b!523944 c!61738) b!523948))

(assert (= (and b!523944 (not c!61738)) b!523946))

(assert (= (and d!80575 c!61739) b!523950))

(assert (= (and d!80575 (not c!61739)) b!523951))

(assert (= (and b!523951 res!321081) b!523945))

(assert (= (and b!523945 (not res!321083)) b!523947))

(assert (= (and b!523947 (not res!321082)) b!523952))

(declare-fun m!504651 () Bool)

(assert (=> d!80575 m!504651))

(assert (=> d!80575 m!504445))

(declare-fun m!504653 () Bool)

(assert (=> b!523947 m!504653))

(declare-fun m!504655 () Bool)

(assert (=> b!523946 m!504655))

(assert (=> b!523946 m!504655))

(declare-fun m!504657 () Bool)

(assert (=> b!523946 m!504657))

(assert (=> b!523952 m!504653))

(assert (=> b!523945 m!504653))

(assert (=> b!523684 d!80575))

(declare-fun d!80577 () Bool)

(assert (=> d!80577 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!240483 () Unit!16342)

(declare-fun choose!38 (array!33290 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16342)

(assert (=> d!80577 (= lt!240483 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80577 (validMask!0 mask!3524)))

(assert (=> d!80577 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!240483)))

(declare-fun bs!16454 () Bool)

(assert (= bs!16454 d!80577))

(assert (=> bs!16454 m!504467))

(declare-fun m!504659 () Bool)

(assert (=> bs!16454 m!504659))

(assert (=> bs!16454 m!504445))

(assert (=> b!523684 d!80577))

(declare-fun d!80579 () Bool)

(declare-fun e!305606 () Bool)

(assert (=> d!80579 e!305606))

(declare-fun res!321086 () Bool)

(assert (=> d!80579 (=> (not res!321086) (not e!305606))))

(assert (=> d!80579 (= res!321086 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16359 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16359 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16359 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16359 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16359 a!3235))))))

(declare-fun lt!240498 () Unit!16342)

(declare-fun choose!47 (array!33290 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16342)

(assert (=> d!80579 (= lt!240498 (choose!47 a!3235 i!1204 k!2280 j!176 lt!240358 #b00000000000000000000000000000000 (index!20087 lt!240352) (x!49092 lt!240352) mask!3524))))

(assert (=> d!80579 (validMask!0 mask!3524)))

(assert (=> d!80579 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240358 #b00000000000000000000000000000000 (index!20087 lt!240352) (x!49092 lt!240352) mask!3524) lt!240498)))

(declare-fun b!523979 () Bool)

(assert (=> b!523979 (= e!305606 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240358 (select (store (arr!15995 a!3235) i!1204 k!2280) j!176) (array!33291 (store (arr!15995 a!3235) i!1204 k!2280) (size!16359 a!3235)) mask!3524) (Intermediate!4469 false (index!20087 lt!240352) (x!49092 lt!240352))))))

(assert (= (and d!80579 res!321086) b!523979))

(declare-fun m!504687 () Bool)

(assert (=> d!80579 m!504687))

(assert (=> d!80579 m!504445))

(assert (=> b!523979 m!504457))

(assert (=> b!523979 m!504461))

(assert (=> b!523979 m!504461))

(declare-fun m!504689 () Bool)

(assert (=> b!523979 m!504689))

(assert (=> b!523679 d!80579))

(declare-fun b!523980 () Bool)

(declare-fun e!305607 () SeekEntryResult!4469)

(declare-fun e!305611 () SeekEntryResult!4469)

(assert (=> b!523980 (= e!305607 e!305611)))

(declare-fun c!61753 () Bool)

(declare-fun lt!240499 () (_ BitVec 64))

(assert (=> b!523980 (= c!61753 (or (= lt!240499 lt!240354) (= (bvadd lt!240499 lt!240499) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523981 () Bool)

(declare-fun lt!240500 () SeekEntryResult!4469)

(assert (=> b!523981 (and (bvsge (index!20087 lt!240500) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240500) (size!16359 lt!240355)))))

(declare-fun res!321089 () Bool)

(assert (=> b!523981 (= res!321089 (= (select (arr!15995 lt!240355) (index!20087 lt!240500)) lt!240354))))

(declare-fun e!305609 () Bool)

(assert (=> b!523981 (=> res!321089 e!305609)))

(declare-fun e!305610 () Bool)

(assert (=> b!523981 (= e!305610 e!305609)))

(declare-fun b!523982 () Bool)

(assert (=> b!523982 (= e!305611 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240358 #b00000000000000000000000000000000 mask!3524) lt!240354 lt!240355 mask!3524))))

(declare-fun b!523983 () Bool)

(assert (=> b!523983 (and (bvsge (index!20087 lt!240500) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240500) (size!16359 lt!240355)))))

(declare-fun res!321088 () Bool)

(assert (=> b!523983 (= res!321088 (= (select (arr!15995 lt!240355) (index!20087 lt!240500)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523983 (=> res!321088 e!305609)))

(declare-fun b!523984 () Bool)

(assert (=> b!523984 (= e!305611 (Intermediate!4469 false lt!240358 #b00000000000000000000000000000000))))

(declare-fun d!80585 () Bool)

(declare-fun e!305608 () Bool)

(assert (=> d!80585 e!305608))

(declare-fun c!61754 () Bool)

(assert (=> d!80585 (= c!61754 (and (is-Intermediate!4469 lt!240500) (undefined!5281 lt!240500)))))

(assert (=> d!80585 (= lt!240500 e!305607)))

(declare-fun c!61752 () Bool)

(assert (=> d!80585 (= c!61752 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80585 (= lt!240499 (select (arr!15995 lt!240355) lt!240358))))

(assert (=> d!80585 (validMask!0 mask!3524)))

(assert (=> d!80585 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240358 lt!240354 lt!240355 mask!3524) lt!240500)))

(declare-fun b!523985 () Bool)

(assert (=> b!523985 (= e!305607 (Intermediate!4469 true lt!240358 #b00000000000000000000000000000000))))

(declare-fun b!523986 () Bool)

(assert (=> b!523986 (= e!305608 (bvsge (x!49092 lt!240500) #b01111111111111111111111111111110))))

(declare-fun b!523987 () Bool)

(assert (=> b!523987 (= e!305608 e!305610)))

(declare-fun res!321087 () Bool)

(assert (=> b!523987 (= res!321087 (and (is-Intermediate!4469 lt!240500) (not (undefined!5281 lt!240500)) (bvslt (x!49092 lt!240500) #b01111111111111111111111111111110) (bvsge (x!49092 lt!240500) #b00000000000000000000000000000000) (bvsge (x!49092 lt!240500) #b00000000000000000000000000000000)))))

(assert (=> b!523987 (=> (not res!321087) (not e!305610))))

(declare-fun b!523988 () Bool)

(assert (=> b!523988 (and (bvsge (index!20087 lt!240500) #b00000000000000000000000000000000) (bvslt (index!20087 lt!240500) (size!16359 lt!240355)))))

(assert (=> b!523988 (= e!305609 (= (select (arr!15995 lt!240355) (index!20087 lt!240500)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80585 c!61752) b!523985))

(assert (= (and d!80585 (not c!61752)) b!523980))

(assert (= (and b!523980 c!61753) b!523984))

(assert (= (and b!523980 (not c!61753)) b!523982))

(assert (= (and d!80585 c!61754) b!523986))

(assert (= (and d!80585 (not c!61754)) b!523987))

(assert (= (and b!523987 res!321087) b!523981))

(assert (= (and b!523981 (not res!321089)) b!523983))

(assert (= (and b!523983 (not res!321088)) b!523988))

(declare-fun m!504691 () Bool)

(assert (=> d!80585 m!504691))

(assert (=> d!80585 m!504445))

(declare-fun m!504693 () Bool)

(assert (=> b!523983 m!504693))

(assert (=> b!523982 m!504641))

(assert (=> b!523982 m!504641))

(declare-fun m!504695 () Bool)

(assert (=> b!523982 m!504695))

(assert (=> b!523988 m!504693))

(assert (=> b!523981 m!504693))

(assert (=> b!523679 d!80585))

(declare-fun b!523989 () Bool)

(declare-fun e!305614 () SeekEntryResult!4469)

(declare-fun e!305612 () SeekEntryResult!4469)

(assert (=> b!523989 (= e!305614 e!305612)))

(declare-fun lt!240502 () (_ BitVec 64))

(declare-fun lt!240501 () SeekEntryResult!4469)

(assert (=> b!523989 (= lt!240502 (select (arr!15995 a!3235) (index!20087 lt!240501)))))

(declare-fun c!61757 () Bool)

(assert (=> b!523989 (= c!61757 (= lt!240502 (select (arr!15995 a!3235) j!176)))))

(declare-fun b!523990 () Bool)

(declare-fun c!61756 () Bool)

(assert (=> b!523990 (= c!61756 (= lt!240502 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305613 () SeekEntryResult!4469)

(assert (=> b!523990 (= e!305612 e!305613)))

(declare-fun b!523991 () Bool)

(assert (=> b!523991 (= e!305612 (Found!4469 (index!20087 lt!240501)))))

(declare-fun b!523992 () Bool)

(assert (=> b!523992 (= e!305614 Undefined!4469)))

(declare-fun d!80587 () Bool)

(declare-fun lt!240503 () SeekEntryResult!4469)

(assert (=> d!80587 (and (or (is-Undefined!4469 lt!240503) (not (is-Found!4469 lt!240503)) (and (bvsge (index!20086 lt!240503) #b00000000000000000000000000000000) (bvslt (index!20086 lt!240503) (size!16359 a!3235)))) (or (is-Undefined!4469 lt!240503) (is-Found!4469 lt!240503) (not (is-MissingZero!4469 lt!240503)) (and (bvsge (index!20085 lt!240503) #b00000000000000000000000000000000) (bvslt (index!20085 lt!240503) (size!16359 a!3235)))) (or (is-Undefined!4469 lt!240503) (is-Found!4469 lt!240503) (is-MissingZero!4469 lt!240503) (not (is-MissingVacant!4469 lt!240503)) (and (bvsge (index!20088 lt!240503) #b00000000000000000000000000000000) (bvslt (index!20088 lt!240503) (size!16359 a!3235)))) (or (is-Undefined!4469 lt!240503) (ite (is-Found!4469 lt!240503) (= (select (arr!15995 a!3235) (index!20086 lt!240503)) (select (arr!15995 a!3235) j!176)) (ite (is-MissingZero!4469 lt!240503) (= (select (arr!15995 a!3235) (index!20085 lt!240503)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4469 lt!240503) (= (select (arr!15995 a!3235) (index!20088 lt!240503)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80587 (= lt!240503 e!305614)))

(declare-fun c!61755 () Bool)

(assert (=> d!80587 (= c!61755 (and (is-Intermediate!4469 lt!240501) (undefined!5281 lt!240501)))))

(assert (=> d!80587 (= lt!240501 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15995 a!3235) j!176) mask!3524) (select (arr!15995 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80587 (validMask!0 mask!3524)))

(assert (=> d!80587 (= (seekEntryOrOpen!0 (select (arr!15995 a!3235) j!176) a!3235 mask!3524) lt!240503)))

(declare-fun b!523993 () Bool)

(assert (=> b!523993 (= e!305613 (MissingZero!4469 (index!20087 lt!240501)))))

(declare-fun b!523994 () Bool)

(assert (=> b!523994 (= e!305613 (seekKeyOrZeroReturnVacant!0 (x!49092 lt!240501) (index!20087 lt!240501) (index!20087 lt!240501) (select (arr!15995 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!80587 c!61755) b!523992))

(assert (= (and d!80587 (not c!61755)) b!523989))

(assert (= (and b!523989 c!61757) b!523991))

(assert (= (and b!523989 (not c!61757)) b!523990))

(assert (= (and b!523990 c!61756) b!523993))

(assert (= (and b!523990 (not c!61756)) b!523994))

(declare-fun m!504697 () Bool)

(assert (=> b!523989 m!504697))

(assert (=> d!80587 m!504465))

(assert (=> d!80587 m!504451))

(declare-fun m!504699 () Bool)

(assert (=> d!80587 m!504699))

(declare-fun m!504701 () Bool)

(assert (=> d!80587 m!504701))

(assert (=> d!80587 m!504445))

(assert (=> d!80587 m!504451))

(assert (=> d!80587 m!504465))

(declare-fun m!504703 () Bool)

(assert (=> d!80587 m!504703))

(declare-fun m!504705 () Bool)

(assert (=> d!80587 m!504705))

(assert (=> b!523994 m!504451))

(declare-fun m!504707 () Bool)

(assert (=> b!523994 m!504707))

(assert (=> b!523680 d!80587))

(declare-fun d!80589 () Bool)

(assert (=> d!80589 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523685 d!80589))

(declare-fun b!524009 () Bool)

(declare-fun e!305629 () Bool)

(declare-fun e!305627 () Bool)

(assert (=> b!524009 (= e!305629 e!305627)))

(declare-fun c!61760 () Bool)

(assert (=> b!524009 (= c!61760 (validKeyInArray!0 (select (arr!15995 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31865 () Bool)

(declare-fun call!31868 () Bool)

(assert (=> bm!31865 (= call!31868 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61760 (Cons!10202 (select (arr!15995 a!3235) #b00000000000000000000000000000000) Nil!10203) Nil!10203)))))

(declare-fun d!80591 () Bool)

(declare-fun res!321101 () Bool)

(declare-fun e!305630 () Bool)

(assert (=> d!80591 (=> res!321101 e!305630)))

(assert (=> d!80591 (= res!321101 (bvsge #b00000000000000000000000000000000 (size!16359 a!3235)))))

(assert (=> d!80591 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10203) e!305630)))

(declare-fun b!524010 () Bool)

(assert (=> b!524010 (= e!305630 e!305629)))

(declare-fun res!321102 () Bool)

(assert (=> b!524010 (=> (not res!321102) (not e!305629))))

(declare-fun e!305628 () Bool)

(assert (=> b!524010 (= res!321102 (not e!305628))))

(declare-fun res!321100 () Bool)

(assert (=> b!524010 (=> (not res!321100) (not e!305628))))

(assert (=> b!524010 (= res!321100 (validKeyInArray!0 (select (arr!15995 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!524011 () Bool)

(assert (=> b!524011 (= e!305627 call!31868)))

(declare-fun b!524012 () Bool)

(assert (=> b!524012 (= e!305627 call!31868)))

(declare-fun b!524013 () Bool)

(declare-fun contains!2777 (List!10206 (_ BitVec 64)) Bool)

(assert (=> b!524013 (= e!305628 (contains!2777 Nil!10203 (select (arr!15995 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!80591 (not res!321101)) b!524010))

(assert (= (and b!524010 res!321100) b!524013))

(assert (= (and b!524010 res!321102) b!524009))

(assert (= (and b!524009 c!61760) b!524012))

(assert (= (and b!524009 (not c!61760)) b!524011))

(assert (= (or b!524012 b!524011) bm!31865))

(assert (=> b!524009 m!504521))

(assert (=> b!524009 m!504521))

(assert (=> b!524009 m!504529))

(assert (=> bm!31865 m!504521))

(declare-fun m!504709 () Bool)

(assert (=> bm!31865 m!504709))

(assert (=> b!524010 m!504521))

(assert (=> b!524010 m!504521))

(assert (=> b!524010 m!504529))

(assert (=> b!524013 m!504521))

(assert (=> b!524013 m!504521))

(declare-fun m!504711 () Bool)

(assert (=> b!524013 m!504711))

(assert (=> b!523686 d!80591))

(declare-fun d!80597 () Bool)

(assert (=> d!80597 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47630 d!80597))

(declare-fun d!80601 () Bool)

(assert (=> d!80601 (= (array_inv!11769 a!3235) (bvsge (size!16359 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47630 d!80601))

(push 1)

(assert (not bm!31850))

(assert (not d!80547))

(assert (not b!523994))

(assert (not d!80579))

(assert (not b!524010))

(assert (not b!523979))

(assert (not b!524013))

(assert (not bm!31862))

(assert (not b!524009))

(assert (not d!80577))

(assert (not d!80587))

(assert (not b!523823))

(assert (not d!80585))

(assert (not b!523942))

(assert (not b!523841))

(assert (not bm!31865))

(assert (not b!523747))

(assert (not d!80575))

(assert (not b!523982))

(assert (not b!523933))

(assert (not d!80527))

(assert (not b!523748))

(assert (not b!523943))

(assert (not b!523946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

